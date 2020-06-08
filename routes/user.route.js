const express = require('express');
const {
    User
} = require('../entity/datadefinition');
const router = express.Router();
router.use(express.json());

router.get('/list', function(req, res, next){
    res.status(200).json({
        message: 'OKKKKKKKK'
    });
});

router.post('/create', (req,res)=>{
    if(req.body&&req.body.username&&req.body.userpwd){
        User.findOne({
            where: {
                accountname: req.body.username
            }
        }).then(user=>{
            if(user && user.id){
             /**    User.update({
                    pwd: req.body.userpwd,
                    status: 1
                }, {
                    where: {
                        accountname: req.body.username
                    }
                }).then(result=>{
                    if(result && result.length>=1){
                        res.status(200).json({
                            uid: result[0]
                        });
                    }
                    else {
                        res.status(200).json({
                            uid: -1
                        });
                    }
                })*/
                res.status(200).json({
                    uid: -2   // user exists
                });
            }
            else {
                User.create({
                    fullname: req.body.username,
                    accountname: req.body.username,
                    pwd: req.body.userpwd,
                    status: 1
                }).then(user=>{
                    if(user&&user.id){
                        res.status(200).json({
                            uid: user.id
                        });
                    }
                    else {
                        res.status(200).json({
                            uid: -1  // create user error
                        });
                    }
                    
                });
            }
        });
        
    }
    else {
        res.status(400).json({
            message: "User name or password missing."
        });
    }
    
});

router.post('/login', (req, res)=>{
    const obj = {
        where: {
            accountname: req.body.username
        }
    };
    User.findAll(obj).then(users=>{
        if(users.length>=1 && users[0].pwd===req.body.userpwd){
            res.status(200).json({
                uid: users[0].id
            });
        }
        else {
            res.status(200).json({
                uid: -1
            });
        }
    });
});

module.exports = router;