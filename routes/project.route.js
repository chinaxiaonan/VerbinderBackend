const express = require('express');
const {
    Op
} = require('sequelize');
const router = express.Router();
const {
    Project, User
} = require('../entity/datadefinition');

router.get("/list/main", async(req,res)=>{
    const obj = {
        where: {
            status: {
                [Op.gte]:99
            }
        }
    };
    var projs = await Project.findAll(obj);
    var retProjs = [];
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
        retProjs.push({
            id: p.id,
            name: p.name,
            desctext: p.desctext,
            requirement: p.requirement,
            shortvalue: p.shortvalue,
            techfields:techfields,
            indfields:indfields
        });
    }
    res.status(200).json({
        status: 1,
        result: retProjs
    });
});

router.get("/load", async (req, res)=>{
    var cid = (req.query.cid&&!isNaN(req.query.cid))?req.query.cid:-1;
    var uid = (req.query.uid&&!isNaN(req.query.uid))?req.query.uid:-1;
    if(cid!==-1){
        var project = await Project.findByPk(cid);
        if(project){
            var techs = await project.getTechnologies();
            var techfields = [];
            for(var t of techs){
                techfields.push({
                    id: t.id,
                    name: t.name
                });
            }

            var inds = await project.getIndustries();
            var indfields = [];
            for(var ind of inds){
                indfields.push({
                    id: ind.id,
                    name: ind.name
                });
            }

            var bookmarked = false;
            if(uid!==-1){
                var user = await User.findByPk(uid);
                var folders = await user.getBookmarkfolders();
                for(var f of folders){
                    var ps = await f.getProjects();
                    for(var p of ps){
                        if(p.id == cid){
                            bookmarked = true;
                            break;
                        }
                    }
                }
            }
            var retObj = {
                status: 1,
                id: project.id,
                name: project.name,
                desctext: project.desctext,
                requirement: project.requirement,
                custval: project.pvalue,
                techdesc: project.techdesc,
                imgpath: project.imgpath,
                customer: project.customer,
                contact: project.contact,
                techfields: techfields,
                indfields: indfields,
                bookmarked: bookmarked
            }
            res.status(200).json({
                status: 1,
                case: retObj
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
        });
    }
});

router.get("/search", async (req, res)=>{
    var uid = (req.query.u&&!isNaN(req.query.u))?req.query.u:-1;
    var pageIndex = (req.query.p&&!isNaN(req.query.p))? req.query.p : 0;
    var limit = (req.query.l&&!isNaN(req.query.l))? req.query.l : 5;
    const MAXWORD = 4;

    // retrieve bookmarked projects if uid exist
    var bookmarkedProjs = [];
    if(uid != -1){
        var user = await User.findByPk(uid);
        if(user){
            var folders = await user.getBookmarkfolders();
            for(var f of folders){
                var infoldersPs = await f.getProjects();
                for(var p of infoldersPs){
                    bookmarkedProjs.push(p.id);
                }
            }
        }
    }

    // process search query if query is valid
    if(req.query.q && req.query.q.charAt(0)==='['){
        var query;
        try{
            query = JSON.parse(req.query.q);
        }catch(e){
            query = [];
        }
        var projs = await Project.findAll();
        var projsRates = [];
        // loop projects
        for(var p of projs){
            var tmpQT = [];
            // break the requirements into sentence array
            var rs = splitRequirements(p.requirement);
            // loop target requirements sentence array, each requirement sentence is T
            for(var T of rs){
                // loop input query array, each input query sentence is Q
                for(var Q of query){
                    // calc sum of 2-ngram,3-ngram,....,MAXWORD-ngram, stored as one (Q,T)
                    var tmpRates = 0.0;
                    for(var cc=2; cc<=MAXWORD; cc++){
                        tmpRates+=getNgramMatchRate(Q, T, cc, false);
                    }
                    tmpQT.push(tmpRates);
                }
            }

            // get average of all (Q,T) pairs
            var tmpQTAve = 0.0;
            for(var i=0; i<tmpQT.length; i++){
                tmpQTAve+=tmpQT[i];
            }
            tmpQTAve = tmpQTAve / tmpQT.length;

            // get max of (Q,T) pairs
            var tmpQTMax = Math.max.apply(Math, tmpQT);
            // use (AVE(Q,T)+MAX(Q,T))/2 as final score
            var finalRate = (tmpQTAve+tmpQTMax)/2;
            if(finalRate === 0){
                continue;
            }

            // retrieve technology field and industry field
            var techs = await p.getTechnologies();
            var techfields = [];
            for(var tech of techs){
                techfields.push({
                    id: tech.id,
                    name: tech.name  
                })
            }

            var inds = await p.getIndustries();
            var indfields = [];
            for(var ind of inds){
                indfields.push({
                    id: ind.id,
                    name: ind.name
                });
            }
            projsRates.push({
                cid:p.id,
                cname:p.name,
                customer:p.customer, 
                pval:p.pvalue,
                imgpath: p.imgpath,
                techfields:techfields,
                indfields:indfields,
                rate:finalRate,
                bookmarked: bookmarkedProjs.indexOf(p.id)!=-1
            });
        }
        
        console.log(projsRates);
        // sort all projects rates before return
        projsRates.sort(function(a,b){
            return b.rate - a.rate;
        });

        res.status(200).json({
            status: 1,
            result: projsRates
        });
    }
    else {
        res.status(200).json({
            status: -1
        });
    }
});

function splitRequirements(str){
    var rets = str.replace(/<ul>/g,"").replace(/<\/ul>/g,"").replace(/<\/li>/g,"").replace(/^<li>/,"").split(/<li>/);
    return rets;
}


function getNgramMatchRate(source, target, n_val, withSpace){
    var rate = 0.0;
    var source_ngrams = getNGrams(source, n_val, withSpace);
    var target_ngrams = getNGrams(target, n_val, withSpace);
    var count = 0;
    for(var i=0; i<source_ngrams.length;i++){
        var current = source_ngrams[i];
        for(var j=0; j<target_ngrams.length; j++){
            if(current === target_ngrams[j]){
                count++;
                break;
            }
        }
    }
    if(source_ngrams.length>0){
        rate = count / source_ngrams.length;
    }
    return rate;
}

function getNGrams(source, n_val, withSpace){
    var ngrams = [];
    var tokens = [];
    if(withSpace){
        tokens = source.split(" ");
    }
    else {
        tokens = source.split("");
    }
    for(var i=0; i<=tokens.length-n_val;i++){
        var current = "";
        var skip = false;
        for(var j=0;j<n_val;j++){
            if(isBoundary(tokens[i+j])){
                skip = true;
                break;
            }
            current += tokens[i+j];
        }
        if(!skip){
            ngrams.push(current);
        }
    }
    return ngrams;
}

function isBoundary(str){
    return str===","||str==="，"||str==="。"||str==="；"||str===" "||str==="\n";
}

module.exports = router;