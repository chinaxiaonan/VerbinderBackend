const express = require('express');
const {
    Op
} = require('sequelize');
const router = express.Router();
const {
    BookmarkFolder, User
} = require('../entity/datadefinition');

router.get('/all', async function(req, res, next){
    console.log(req.query);
    var retObj={};
    if(req.query&&req.query.uid){
        var retfolders = [];
        var user = await User.findByPk(req.query.uid);
        if(user){
            retObj['status'] = 1;
            retObj['uid'] = req.query.uid;
            var folders = await user.getBookmarkfolders();
            for(let f of folders){
                var retcases = [];
                var projects = await f.getProjects();
                for(let p of projects){
                    retcases.push({
                        caseid: p.id,
                        casename: p.name,
                        casereq: p.requirement,
                        casecontact: p.contact
                    });
                }
                retfolders.push({
                    foldername: f.name,
                    folderdesc: f.folderdesc,
                    cases: retcases
                });
            }
            console.log(retfolders);
            retObj['folders'] = retfolders;
        }
        else {
            retObj['status'] = -2; // user does not exist
        }
    }
    else {
        retObj['status'] = -1; // query parameter invalid (missing uid)
    }
    res.status(200).json(retObj);
    
});
module.exports = router;