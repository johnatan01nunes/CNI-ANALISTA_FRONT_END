const Aluno = require('../models/aluno');
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

    Aluno.create({
        nome:      nome,
        matricula: matricula,
        cpf:       cpf,
        email:     email,
        dt_nasc:   dt_nasc,
        sexo:      sexo,
        contato:   contato,
        ativo:     ativo,
    })
     .then( aluno => {
        if(aluno){
            res.status(status.OK).send(aluno);
        }else{
             res.status(status.NOT_FOUND).send();
        }
    })
    .catch(error => next(error));
};

exports.SearchAll = (req, res, next) => {
    Aluno.findAll()
        .then(aluno => {
            if (aluno) {
                res.status(status.OK).send(aluno);
            }
        })
        .catch(error => next(error));
}

exports.SearchOne = (req, res, next) => {
    const id = req.params.id;

    Aluno.findByPk(id)
        .then(aluno => {
            if (aluno) {
                res.status(status.OK).send(aluno);
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

    Aluno.findByPk(id)
        .then(aluno => {
            if (aluno) {
                aluno.update({
                    nome:      nome,
                    matricula: matricula,
                    cpf:       cpf,
                    email:     email,
                    dt_nasc:   dt_nasc,
                    sexo:      sexo,
                    contato:   contato,
                    ativo:     ativo
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

    Aluno.findByPk(id)
        .then(aluno => {
            if (aluno) {
                aluno.destroy({
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