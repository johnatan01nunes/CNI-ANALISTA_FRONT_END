const Sequelize = require('sequelize');
//const { toDefaultValue } = require('sequelize/types/lib/utils');
const sequelize = require('../database/database.js');

const Turma = sequelize.define("turma",{
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
    carga_hr:{
        allowNull: false,
        type: Sequelize.STRING(300),
        validate:{
            len:[1,300]
        }
    },
    professor_id:{
        allowNull: false,
        type: Sequelize.INTEGER(5),
    },
    aluno_id:{
        allowNull: false,
        type:Sequelize.INTEGER(5),
    },
    curso_id:{
        allowNull: false,
        type:Sequelize.INTEGER(5)
    },
    num_sala:{
        allowNull: false,
        type:Sequelize.STRING(100),
        validate:{
            len:[1,100]
        }
    },
    dt_ini:{
        allowNull: false,
        type: Sequelize.DATE()
    },
    dt_fim:{
        allowNull: false,
        type: Sequelize.DATE()
    }
});

module.exports = Turma;