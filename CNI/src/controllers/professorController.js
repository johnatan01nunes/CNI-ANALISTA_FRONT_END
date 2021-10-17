const Professor = require('../models/professor');
const status = require('http-status');

exports.Insert = (req, res, next) => {
    const nome      = req.body.nome;
    const matricula = req.body.matricula;
    const cpf       = req.body.cpf;
    const email     = req.body.email;
    const dt_nasc   = req.body.dt_nasc;
    const sexo      = req.body.sexo;
    const contato   = req.body.contato;
    const ativo     = req.body.ativo;
    const disciplina= req.body.disciplina;

    Professor.create({
        nome:      nome,
        matricula: matricula,
        cpf:       cpf,
        email:     email,
        dt_nasc:   dt_nasc,
        sexo:      sexo,
        contato:   contato,
        ativo:     ativo,
        disciplina:disciplina,
    })
     .then( professor => {
        if(professor){
            res.status(status.OK).send(professor);
        }else{
             res.status(status.NOT_FOUND).send();
        }
    })
    .catch(error => next(error));
};

exports.SearchAll = (req, res, next) => {
    Professor.findAll()
        .then(professor => {
            if (professor) {
                res.status(status.OK).send(professor);
            }
        })
        .catch(error => next(error));
}

exports.SearchOne = (req, res, next) => {
    const id = req.params.id;

    Professor.findByPk(id)
        .then(professor => {
            if (professor) {
                res.status(status.OK).send(professor);
            } else {
                res.status(status.NOT_FOUND).send();
            }
        })
        .catch(error => next(error));
};

exports.Update = (req, res, next) => {
    const id = req.params.id;
    const nome      = req.body.nome;
    const matricula = req.body.matricula;
    const cpf       = req.body.cpf;
    const email     = req.body.email;
    const dt_nasc   = req.body.dt_nasc;
    const sexo      = req.body.sexo;
    const contato   = req.body.contato;
    const ativo     = req.body.ativo;
    const disciplina     = req.body.disciplina;

    Professor.findByPk(id)
        .then(professor => {
            if (professor) {
                professor.update({
                    nome:      nome,
                    matricula: matricula,
                    cpf:       cpf,
                    email:     email,
                    dt_nasc:   dt_nasc,
                    sexo:      sexo,
                    contato:   contato,
                    ativo:     ativo,
                    disciplina:disciplina
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

    Professor.findByPk(id)
        .then(professor => {
            if (professor) {
                professor.destroy({
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