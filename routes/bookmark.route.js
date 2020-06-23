const express = require('express');
const {
    Op
} = require('sequelize');
const router = express.Router();
router.use(express.json());
const {
    BookmarkFolder, User, Project
} = require('../entity/datadefinition');

/**
 * check status first when process json response
 * status -2: user doesn't exist
 * status -1: query parameter uid is missing
 * status 1: valid response
 */
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
                        cid: p.id,
                        cimg: p.imgpath
                    });
                }
                retfolders.push({
                    fid: f.id,
                    fname: f.name,
                    fdesc: f.folderdesc,
                    fimg: f.imgpath,
                    cases: retcases
                });
            }
            retObj['folders'] = retfolders;
            console.log(retObj);
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

router.get("/folder/:fid", async function(req, res, next){
    if(req.params && req.params.fid){
        var folder = await BookmarkFolder.findByPk(req.params.fid);
        if(folder){
            var projs = await folder.getProjects();
            var projects = [];
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
            res.status(200).json({
                status: 1,
                name: folder.name,
                desctext: folder.folderdesc,
                imgpath: folder.imgpath,
                cases:projects
            });
        }
        else {
            res.status(200).json({
                status: -2
            });
        }
    }
    else {
        res.status(200).json({
            status: -1
        })
    }
});

router.post("/folder/create", (req, res)=>{
    if(req.body&&req.body.uid&&req.body.name){
        var folderObj = {
            name: req.body.name,
            folderdesc: req.body.desctext,
            userId: req.body.uid
        }
        if(req.body.fid){
            folderObj["id"]=req.body.fid;
        }
        BookmarkFolder.upsert(folderObj).then(created=>{
            res.status(200).json({
                status: 1,
                created:created
            });
        });
    }
    else {
        res.status(200).json({
            status: -1
        });
    }
});

router.post("/folder/delete", (req, res)=>{
    if(req.body&&req.body.fid){
        BookmarkFolder.destroy({
            where:{
                id: req.body.fid
            }
        }).then(num=>{
            res.status(200).json({
                status: 1,
                deleted:num
            });
        })
    }
    else {
        res.status(200).json({
            status: -1
        });
    }
});

router.post("/addbookmark", async (req, res)=>{
    var fid = (req.body.fid&&!isNaN(req.body.fid))?req.body.fid:-1;
    var pid = (req.body.pid&&!isNaN(req.body.pid))?req.body.pid:-1;
    if(fid!==-1 && pid!==-1){
        var folder = await BookmarkFolder.findByPk(fid);
        var project = await Project.findByPk(pid);
        folder.addProject(project);
        res.status(200).json({
            status: 1
        });
    }
    else {
        res.status(200).json({
            status: -1
        });
    }
});

router.post("/removebookmark", async (req, res)=>{
    var fid = (req.body.fid&&!isNaN(req.body.fid))?req.body.fid:-1;
    var pid = (req.body.pid&&!isNaN(req.body.pid))?req.body.pid:-1;
    if(fid!==-1 && pid!==-1){
        var folder = await BookmarkFolder.findByPk(fid);
        var project = await Project.findByPk(pid);
        folder.removeProject(project);
        res.status(200).json({
            status: 1
        });
    }
    else {
        res.status(200).json({
            status: -1
        });
    }
})



module.exports = router;