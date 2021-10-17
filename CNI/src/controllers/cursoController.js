const Curso = require('../models/curso');
const status = require('http-status');

exports.Insert = (req, res, next) => {
    const nome             = req.body.nome;
    const descricao        = req.body.descricao;
    const carga_hr         = req.body.carga_hr;
    const qt_aluno         = req.body.qt_aluno;
    const dt_ini           = req.body.dt_ini;
    const num_sala         = req.body.num_sala;
    const nome_professor   = req.body.nome_professor;

    Curso.create({
        nome:             nome,
        descricao:        descricao,
        carga_hr:         carga_hr,
        qt_aluno:         qt_aluno,
        dt_ini:           dt_ini,
        num_sala:         num_sala,
        nome_professor:   nome_professor,
    })
     .then( curso => {
        if(curso){
            res.status(status.OK).send(curso);
        }else{
             res.status(status.NOT_FOUND).send();
        }
    })
    .catch(error => next(error));
};

exports.SearchAll = (req, res, next) => {
    Curso.findAll()
        .then(curso => {
            if (curso) {
                res.status(status.OK).send(curso);
            }
        })
        .catch(error => next(error));
}

exports.SearchOne = (req, res, next) => {
    const id = req.params.id;

    Curso.findByPk(id)
        .then(curso => {
            if (curso) {
                res.status(status.OK).send(curso);
            } else {
                res.status(status.NOT_FOUND).send();
            }
        })
        .catch(error => next(error));
};

exports.Update = (req, res, next) => {
    const nome             = req.body.nome;
    const descricao        = req.body.descricao;
    const carga_hr         = req.body.carga_hr;
    const qt_aluno         = req.body.qt_aluno;
    const dt_ini           = req.body.dt_ini;
    const num_sala         = req.body.num_sala;
    const nome_professor   = req.body.nome_professor;

    Curso.findByPk(id)
        .then(curso => {
            if (curso) {
                curso.update({
                    nome:             nome,
                    descricao:        descricao,
                    carga_hr:         carga_hr,
                    qt_aluno:         qt_aluno,
                    dt_ini:           dt_ini,
                    num_sala:         num_sala,
                    nome_professor:   nome_professor
                },
                    
                    {
                        where: { id: id }
                    })
                    .then(() => {
                        
                        res.status(status.OK).send();
                    })
                    .catch(error => next(error));
            } else {
                
                res.status(status.NOT_FOUND).send();
            }
        })
        
        .catch(error => next(error));
};

exports.Delete = (req, res, next) => {
    const id = req.params.id;

    Curso.findByPk(id)
        .then(curso => {
            if (curso) {
                curso.destroy({
                    where: { id: id }
                })
                    .then(() => {
                        res.status(status.OK).send();
                    })
                    .catch(error => next(error));
            }
            else {
                res.status(status.NOT_FOUND).send();
            }
        })
        .catch(error => next(error));
};