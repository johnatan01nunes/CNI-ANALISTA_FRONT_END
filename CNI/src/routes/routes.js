const express = require('express');
const router = express.Router();
const AlunoController = require('../controllers/alunoController');
const ProfessorController = require('../controllers/professorController');
const CursoController = require('../controllers/cursoController');
const TurnaController = require('../controllers/turmaController');

router.post('/aluno', AlunoController.Insert);
router.get('/aluno', AlunoController.SearchAll);
router.get('/aluno/:id', AlunoController.SearchOne);
router.put('/aluno/:id', AlunoController.Update);
router.delete('/aluno/:id', AlunoController.Delete);

router.post('/professor', ProfessorController.Insert);
router.get('/professor', ProfessorController.SearchAll);
router.get('/professor/:id', ProfessorController.SearchOne);
router.put('/professor/:id', ProfessorController.Update);
router.delete('/professor/:id', ProfessorController.Delete);

router.post('/curso', CursoController.Insert);
router.get('/curso', CursoController.SearchAll);
router.get('/curso/:id', CursoController.SearchOne);
router.put('/curso/:id', CursoController.Update);
router.delete('/curso/:id', CursoController.Delete);

router.post('/turma', TurnaController.Insert);
router.get('/turma', TurnaController.SearchAll);
router.get('/turma/:id', TurnaController.SearchOne);
router.put('/turma/:id', TurnaController.Update);
router.delete('/turma/:id', TurnaController.Delete);

module.exports = router;