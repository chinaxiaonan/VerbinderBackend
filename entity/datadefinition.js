const sequelizeInstance = require('../db/db');
const Sequlize = require('sequelize');

const Industry = sequelizeInstance.define('industry', {
    id: {
        type: Sequlize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
        type: Sequlize.STRING(200),
        allowNull: false
    },
    iconpath: {
        type: Sequlize.STRING(200)
    },
    imagepath: {
        type: Sequlize.STRING(200)
    },
    desctext: {
        type: Sequlize.TEXT
    },
    status: {
        type: Sequlize.INTEGER,
        defaultValue: 0
    },
    owner: {
        type: Sequlize.INTEGER,
        defaultValue: 0
    }
});

const Project = sequelizeInstance.define('project', {
    id: {
        type: Sequlize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
        type: Sequlize.STRING(100),
        allowNull: false
    },
    desctext:{
        type: Sequlize.TEXT,
        defaultValue: ''
    },
    requirement: {
        type: Sequlize.TEXT,
        defaultValue: ''
    },
    shortvalue:{
        type: Sequlize.STRING(100),
        defaultValue: ''
    },
    pvalue: {
        type: Sequlize.TEXT,
        defaultValue: ''
    },
    techdesc: {
        type: Sequlize.TEXT,
        defaultValue: ''
    },
    imgpath: {
        type: Sequlize.STRING(100),
        defaultValue:''
    },
    customer: {
        type: Sequlize.STRING(200)
    },
    owner: {
        type: Sequlize.INTEGER,
        defaultValue: 0
    },
    contact: {
        type: Sequlize.STRING(100)
    },
    status: {
        type: Sequlize.INTEGER,
        defaultValue: 0
    },
});

const Deliverable = sequelizeInstance.define('deliverable', {
    id: {
        type: Sequlize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
        type: Sequlize.STRING(100),
        allowNull: false
    },
    owner: {
        type: Sequlize.INTEGER,
        defaultValue: 0
    }
});

const Resource = sequelizeInstance.define('resource', {
    id: {
        type: Sequlize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
        type: Sequlize.STRING(100),
        allowNull: false
    },
    owner: {
        type: Sequlize.INTEGER,
        defaultValue: 0
    }
});

const Technology = sequelizeInstance.define('technology', {
    id: {
        type: Sequlize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
        type: Sequlize.STRING(200),
        allowNull: false
    },
    desctext: {
        type: Sequlize.TEXT
    },
    iconpath: {
        type: Sequlize.STRING(200),
        defaultValue:''
    },
    imagepath: {
        type: Sequlize.STRING(200),
        defaultValue:''
    },
    status: {
        type: Sequlize.INTEGER,
        defaultValue: 0
    },
    owner: {
        type: Sequlize.INTEGER,
        defaultValue: 0
    }
});


Deliverable.hasMany(Project);

Project.belongsToMany(Resource, {through: 'project_resource'});
Resource.belongsToMany(Project, {through: 'project_resource'});

Project.belongsToMany(Industry, {through:'project_industry'});
Industry.belongsToMany(Project, {through:'project_industry'});

Project.belongsToMany(Technology, {through: 'project_technology'});
Technology.belongsToMany(Project, {through: 'project_technology'});

const User = sequelizeInstance.define('user', {
    id: {
        type: Sequlize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    fullname: {
        type: Sequlize.STRING(100),
        allowNull: false
    },
    accountname: {
        type: Sequlize.STRING(100),
        allowNull: false
    },
    email: {
        type: Sequlize.STRING(200)
    },
    pwd: {
        type: Sequlize.STRING(200)
    },
    status: {
        type: Sequlize.INTEGER,
        defaultValue: 0
    }
});

const BookmarkFolder = sequelizeInstance.define('bookmarkfolder', {
    id: {
        type: Sequlize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
        type: Sequlize.STRING(200),
        allowNull: false
    },
    folderdesc: {
        type: Sequlize.TEXT
    },
    imgpath: {
        type: Sequlize.STRING(100),
        defaultValue:'defaultcase.png'
    }
});

User.hasMany(BookmarkFolder);
Project.belongsToMany(BookmarkFolder, {through:'project_bookmarkfolder'});
BookmarkFolder.belongsToMany(Project, {through:'project_bookmarkfolder'});

module.exports = {Industry, Project, Deliverable, Resource, Technology, User, BookmarkFolder, sequelizeInstance};