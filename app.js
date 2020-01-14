const express = require('express');
const {
    Project,
    Resource,
    Industry,
    Deliverable,
    Technology,
    sequelizeInstance
} = require('./entity/datadefinition');
const {
    Op
} = require('sequelize');
const app = express();

sequelizeInstance.sync(/* {
    force: true
} */).then(()=>console.log("===============!!!!!"));
app.listen(4500, () => console.log('server started on port 4500!'))

app.get('/api/resources', (req, res) => {
    const obj = req.query.q || '' ? {
        where: {
            name: {
                [Op.iLike]: '%' + req.query.q.trim() + '%'
            }
        }
    } : {};
    Resource.findAll(obj).then(resources => {
        res.set({
            'Access-Control-Allow-Origin': 'http://localhost:4200'
        }).send({
            result: resources
        });
    });
});

app.get('/api/technologies', (req, res) => {
    const obj = req.query.q || '' ? {
        where: {
            name: {
                [Op.iLike]: '%' + req.query.q.trim() + '%'
            }
        }
    } : {};
    Technology.findAll(obj).then(technologies => {

        res.set({
            'Access-Control-Allow-Origin': 'http://localhost:4200'
        }).send({
            result: technologies
        });
    });
});

/**
 * {name:'',requirement:'',industry:'',deliverable:'',resources:[],technologies:[]}
 */
app.get('/api/getkgstruct', async (req, res) => {
        query = req.query.q || '';
        queryObj = JSON.parse(query);

        [industry, created] = await Industry.findOrCreate({
            where: {
                name: queryObj.industry,
                owner: 1
            }
        });

        [deliverable, created] = await Deliverable.findOrCreate({
                where: {
                    name: queryObj.deliverable,
                    owner: 1
                }
        });
        project = await Project.create({
                    name: queryObj.name,
                    requirement: queryObj.requirement,
                    owner: 1,
                    contact: 'BU',
                    industryId: industry.id,
                    deliverableId: deliverable.id
        });

        createdResources = [];
        for(let r of queryObj.resources){
            [resource, created] = await Resource.findOrCreate({
                where: {
                    name: r,
                    owner: 1
                }
            });
            createdResources.push(resource);
        }
        project.setResources(createdResources);

        createdTechs = [];
        for(let t of queryObj.technologies){
            [technology, created] = await Technology.findOrCreate({
                where: {
                    name: t,
                    owner: 1
                }
            });
            createdTechs.push(technology);
        }
        project.setTechnologies(createdTechs);

        matchedProjects = await findMatch(project, industry, deliverable, createdResources, createdTechs);
        console.log("matched Projects:"+matchedProjects);
        datas = await buildDataByProjects(matchedProjects);
        res.set({
            'Access-Control-Allow-Origin': 'http://localhost:4200'
        }).send({
            result: datas
        });
    }

);


async function findMatch(project, industry, deliverable, resources, technologies){
    projects = [];
    projects.push(project);
    // find by similar requirements
    foundProjects = await Project.findAll({
        where: {
            [Op.or]:{
                requirement: {
                    [Op.iLike]:'%'+project.requirement+'%'
                },
                industryId:industry.id,
                deliverableId:deliverable.id
            },
            owner: 0
        }
    });

    foundProjects.forEach(fp=>projects.push(fp));
    // find by same resources
    for(let r of resources){
        foundResources = await Resource.findAll({
            name: r.name,
            owner: 0
        });
        for(let fr of foundResources){
            ps = await fr.getProjects();
            ps.forEach(pp=>{
                if(pp.owner==0) projects.push(pp);
            });
        }
    }
    // find by same technologies
    for(let t of technologies){
        foundTechs = await Technology.findAll({
            name: t.name,
        });
        for(let ft of foundTechs){
            ps = await ft.getProjects();
            ps.forEach(pp=>{
                if(pp.owner==0) projects.push(pp);
            });
            
        }
    }
    return projects;
}

/**
 * 
 * type: 0/project node; 1/requirement node; 2/contact node; 3/industry node; 4/deliverable node; 
 *      5/resource node; 6/technology node;
 */
async function buildDataByProjects(projects){
    datas = [];
    tmps = {};
    for(let p of projects){
        console.log(p.name);
        
        if(!tmps[project.name+project.requirement+'Requires']){
            tmps[project.name+project.requirement+'Requires'] = 1;
            tmp = {source: {name:project.name,type:0}, target:{name:project.requirement,type:1}, rela: 'Requires'};
            datas.push(tmp);
        }
        
        if(!tmps[project.name+project.contact+'Contacts']){
            tmps[project.name+project.contact+'Contacts'] = 1;
            tmp = {source: {name:project.name,type:0}, target: {name:project.contact,type:2}, rela: 'Contacts'};
            datas.push(tmp);
        }

        industry = await Industry.findByPk(p.industryId);
        if(!tmps[p.name+industry.name+'Belongs']){
            tmps[p.name+industry.name+'Belongs'] = 1;
            tmp = {source: {name:p.name,type:0}, target: {name:industry.name,type:3}, rela:'Belongs'};
            datas.push(tmp);
        }

        deliverable = await Deliverable.findByPk(p.deliverableId);
        if(!tmps[p.name+deliverable.name+'Expects']){
            tmps[p.name+deliverable.name+'Expects'] = 1;
            tmp = {source: {name:p.name,type:0}, target: {name:deliverable.name,type:4}, rela:'Expects'};
            datas.push(tmp);
        }

        resources = await p.getResources();
        for(let r of resources){
            if(!tmps[p.name+r.name+'Has']){
                tmps[p.name+r.name+'Has'] = 1;
                tmp = {source: {name:p.name,type:0}, target: {name:r.name,type:5}, rela: 'Has'};
                datas.push(tmp);
            }
        }
        technologies = await p.getTechnologies();
        for(let t of technologies){
            if(!tmps[p.name+t.name+'Uses']){
                tmps[p.name+t.name+'Uses'] = 1;
                tmp = {source: {name:p.name,type:0}, target: {name:t.name,type:6}, rela: 'Uses'};
                datas.push(tmp);
            }
        }
    }
    return datas;
}