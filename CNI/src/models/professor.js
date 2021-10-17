const Sequelize = require('sequelize');
//const { toDefaultValue } = require('sequelize/types/lib/utils');
const sequelize = require('../database/database.js');

const Professor = sequelize.define("professor",{
    id:{
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
    },
    nome:{
        allowNull: false,
        type:Sequelize.STRING(100),
        validate:{
            len:[3,100]
        }
    },
    matricula:{
        allowNull: false,
        type: Sequelize.INTEGER,
        validate:{
            len:[1,99999]
        }
    },
    cpf:{
        allowNull: false,
        type: Sequelize.STRING,
        validate:{
            len:[1,11]
        }
    },
    email:{
        allowNull: false,
        type:Sequelize.STRING(100),
        validate:{
            len:[1,100]
        }
    },
    dt_nasc:{
        allowNull: false,
        type:Sequelize.DATE()
    },
    sexo:{
        allowNull: false,
        type:Sequelize.STRING(1),
        validate:{
            len:[1,1]
        }
    },
    contato:{
        allowNull: false,
        type: Sequelize.STRING,
        validate:{
            len:[1,12]
        }
    },
    ativo:{
        allowNull: false,
        type: Sequelize.BOOLEAN(),
        DefaultValue:true
    },
    disciplina:{
        allowNull: false,
        type: Sequelize.STRING
    }
},
{
    indexes: [
        {
            unique: true,
            fields: [ 'cpf', 'email']
        }
    ]
});

module.exports = Professor;