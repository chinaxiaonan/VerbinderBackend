const express = require('express');
const {
    Project,
    Resource,
    sequelizeInstance
} = require('./entity/datadefinition');
const {Op} = require('sequelize');
const app = express();

sequelizeInstance.sync();
app.listen(4500, () => console.log('server started on port 4500!'))

app.get('/api/resources', (req, res) => {
    const obj = req.query.q||''?{where: {name:{[Op.iLike]:'%'+req.query.q.trim()+'%'}}}:{};
    Resource.findAll(obj).then(resources => {
        res.set({
            'Access-Control-Allow-Origin': 'http://localhost:4200'
        }).send({result:resources});
    });
});