const express = require('express');
const {
    Op
} = require('sequelize');
const router = express.Router();
const {
    Industry
} = require('../entity/datadefinition');

router.get('/list', function(req, res, next){
    Industry.findAll().then(industries=>{
        res.status(200).json({result:industries});
    });
    
});

router.get('/list/main', function(req, res, next){
    const obj = {
        where: {
            status: {
                [Op.gte]:99
            }
        }
    };
    Industry.findAll(obj).then(industries=>{
        res.status(200).json({result:industries});
    });
    
});

router.get('/:id', async function(req, res, next){
    var industry = await Industry.findByPk(req.params.id);
    if(industry){
        var projects = [];
        var projs = await industry.getProjects();
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
                techfields:techfields,
                indfields: indfields
            });
        }

        var respObj = {
            status: 1,
            id: industry.id,
            name: industry.name,
            desctext: industry.desctext,
            imagepath: industry.imagepath,
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