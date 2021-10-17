const Turma = require('../models/turma');
const status = require('http-status');

exports.Insert = (req, res, next) => {
    const nome          = req.body.nome;
    const carga_hr      = req.body.carga_hr;
    const professor_id  = req.body.professor_id;
    const aluno_id      = req.body.aluno_id;
    const curso_id      = req.body.curso_id;
    const num_sala      = req.body.num_sala;
    const dt_ini        = req.body.dt_ini;
    const dt_fim        = req.body.dt_fim;

    Turma.create({
        nome:           nome,
        carga_hr:       carga_hr,
        professor_id:   professor_id,
        aluno_id:       aluno_id,
        curso_id:       curso_id,
        num_sala:       num_sala,
        dt_ini:         dt_ini,
        dt_fim:         dt_fim,

    })
     .then( turma => {
        if(turma){
            res.status(status.OK).send(turma);
        }else{
             res.status(status.NOT_FOUND).send();
        }
    })
    .catch(error => next(error));
};

exports.SearchAll = (req, res, next) => {
    Turma.findAll()
        .then(turma => {
            if (turma) {
                res.status(status.OK).send(turma);
            }
        })
        .catch(error => next(error));
}

exports.SearchOne = (req, res, next) => {
    const id = req.params.id;

    Turma.findByPk(id)
        .then(turma => {
            if (turma) {
                res.status(status.OK).send(turma);
            } else {
                res.status(status.NOT_FOUND).send();
            }
        })
        .catch(error => next(error));
};

exports.Update = (req, res, next) => {
    const nome          = req.body.nome;
    const carga_hr      = req.body.carga_hr;
    const professor_id  = req.body.professor_id;
    const aluno_id      = req.body.aluno_id;
    const curso_id      = req.body.curso_id;
    const num_sala      = req.body.num_sala;
    const dt_ini        = req.body.dt_ini;
    const dt_fim        = req.body.dt_fim;

    Turma.findByPk(id)
        .then(turma => {
            if (turma) {
                turma.update({
                    nome:           nome,
                    carga_hr:       carga_hr,
                    professor_id:   professor_id,
                    aluno_id:       aluno_id,
                    curso_id:       curso_id,
                    num_sala:       num_sala,
                    dt_ini:         dt_ini,
                    dt_fim:         dt_fim
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

    Turma.findByPk(id)
        .then(turma => {
            if (turma) {
                turma.destroy({
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