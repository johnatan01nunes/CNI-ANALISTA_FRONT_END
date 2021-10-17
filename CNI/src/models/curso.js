const Sequelize = require('sequelize');
//const { toDefaultValue } = require('sequelize/types/lib/utils');
const sequelize = require('../database/database.js');

const Curso = sequelize.define("curso",{
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
    descricao:{
        allowNull: false,
        type: Sequelize.STRING(300),
        validate:{
            len:[1,300]
        }
    },
    carga_hr:{
        allowNull: false,
        type: Sequelize.STRING(100),
        validate:{
            len:[1,100]
        }
    },
    qt_aluno:{
        allowNull: false,
        type:Sequelize.STRING(100),
        validate:{
            len:[1,100]
        }
    },
    dt_ini:{
        allowNull: false,
        type:Sequelize.DATE()
    },
    num_sala:{
        allowNull: false,
        type:Sequelize.STRING(100),
        validate:{
            len:[1,100]
        }
    },
    nome_professor:{
        allowNull: false,
        type: Sequelize.STRING(100),
        validate:{
            len:[1,100]
        }
    }
});

module.exports = Curso;