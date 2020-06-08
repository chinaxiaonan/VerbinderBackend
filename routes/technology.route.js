const express = require('express');
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
            displayinmain: true
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

module.exports = router;