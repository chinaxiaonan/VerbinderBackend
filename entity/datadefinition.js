const sequelizeInstance = require('../db/db');
const Sequlize = require('sequelize');

const Industry = sequelizeInstance.define('industry', {
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
    requirement: {
        type: Sequlize.TEXT,
        defaultValue: ''
    },
    owner: {
        type: Sequlize.INTEGER,
        defaultValue: 0
    },
    contact: {
        type: Sequlize.STRING(100)
    }
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
        type: Sequlize.STRING(100),
        allowNull: false
    },
    owner: {
        type: Sequlize.INTEGER,
        defaultValue: 0
    }
});

Industry.hasMany(Project);
Deliverable.hasMany(Project);

Project.belongsToMany(Resource, {through: 'project_resource'});
Resource.belongsToMany(Project, {through: 'project_resource'});

Project.belongsToMany(Technology, {through: 'project_technology'});
Technology.belongsToMany(Project, {through: 'project_technology'});

module.exports = {Industry, Project, Deliverable, Resource, Technology, sequelizeInstance};