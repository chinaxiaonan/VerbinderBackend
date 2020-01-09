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
        allowNull: false
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
    }
});

Industry.hasMany(Project);
Project.belongsToMany(Deliverable, {through: 'project_deliverable'});
Deliverable.belongsToMany(Project, {through: 'project_deliverable'});

Project.belongsToMany(Resource, {through: 'project_resource'});
Resource.belongsToMany(Project, {through: 'project_resource'});

Project.belongsToMany(Technology, {through: 'project_technology'});
Technology.belongsToMany(Project, {through: 'project_technology'});

module.exports = {Industry, Project, Deliverable, Resource, Technology, sequelizeInstance};