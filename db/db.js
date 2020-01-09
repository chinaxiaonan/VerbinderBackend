const Sequelize = require('sequelize');
const sequelizeInstance = new Sequelize('verbinder', 'postgres', null, {
    dialect: 'postgres',
    host: 'localhost',
    define: {
        timestamps:false
    }
}, {
    // ...
    pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
    }
});

sequelizeInstance
    .authenticate()
    .then(() => {
        console.log('Connection has been established successfully.');
    })
    .catch(err => {
        console.error('Unable to connect to the database:', err);
    });

module.exports = sequelizeInstance;