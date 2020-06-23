const express = require('express');
const {
    Op
} = require('sequelize');
const router = express.Router();
const {
    Technology
} = require('../entity/datadefinition');

router.get('/list', function(req, res, next){
    Technology.findAll().then(technologies=>{
        res.status(200).json({result:technologies});
    });
    
});
router.get('/list/main', function(req, res, next){
    const obj = {
        where: {
            status:{
                [Op.gte]:99
            }
        }
    };
    Technology.findAll(obj).then(technologies=>{
        res.status(200).json({result:technologies});
    });
    
});
router.get('/', (req, res) => {
    const obj = req.query.q || '' ? {
        where: {
            name: {
                [Op.iLike]: '%' + req.query.q.trim() + '%'
            }
        }
    } : {};
    Technology.findAll(obj).then(technologies => {
        res.status(200).json({result:technologies});
    });
});

router.get('/:id', async function(req, res, next){
    var technology = await Technology.findByPk(req.params.id);
    if(technology){
        var projects = [];
        var projs = await technology.getProjects();
        for(let p of projs){
            var techs = await p.getTechnologies();
            var techfields = [];
            for(let t of techs){
                techfields.push({
                    id: t.id,
                    name: t.name
                });
            }
    
            var inds = await p.getIndustries();
            var indfields = [];
            for(let ind of inds){
                indfields.push({
                    id: ind.id,
                    name: ind.name
                });
            }
            projects.push({
                id: p.id,
                name: p.name,
                pvalue: p.pvalue,
                customer:p.customer,
                imgpath:p.imgpath,
                indfields:indfields,
                techfields:techfields
            });
        }

        var respObj = {
            status: 1,
            id: technology.id,
            name: technology.name,
            desctext: technology.desctext,
            imagepath: technology.imagepath,
            cases: projects
        }
        res.status(200).json(respObj);
    }
    else {
        res.status(200).json({
            status: -1
        })
    }
    
});

module.exports = router;