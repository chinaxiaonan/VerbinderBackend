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

router.get('/:id', function(req, res, next){
    const obj = {
        where: {
            id: req.params.id
        }
    };
    Industry.findAll(obj).then(industries=>{
        res.status(200).json({result:industries});
    });
    
});

module.exports = router;