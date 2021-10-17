-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Tempo de geração: 13-Out-2021 às 07:12
-- Versão do servidor: 5.7.32
-- versão do PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `api`
--
CREATE DATABASE IF NOT EXISTS `api` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `api`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id_aluno` int(11) NOT NULL,
  `nome` text NOT NULL,
  `matricula` text NOT NULL,
  `dt_nasc` date NOT NULL,
  `sexo` text NOT NULL,
  `contato` text NOT NULL,
  `email` text NOT NULL,
  `cpf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id_aluno`, `nome`, `matricula`, `dt_nasc`, `sexo`, `contato`, `email`, `cpf`) VALUES
(1, 'Johnatan Nunes', '00001', '1990-05-11', 'MASCULINO', '61995078747', 'johnatanbsb@hotmail.com', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `id_curso` int(11) NOT NULL,
  `nome_curso` text NOT NULL,
  `desc_curso` text NOT NULL,
  `carga_horaria` text NOT NULL,
  `quant_aluno` int(11) NOT NULL,
  `dt_inicio` date NOT NULL,
  `num_sala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `matricula` text NOT NULL,
  `dt_nasc` date NOT NULL,
  `sexo` text NOT NULL,
  `contato` text NOT NULL,
  `email` text NOT NULL,
  `disciplina` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `id_turma` int(11) NOT NULL,
  `id_professor` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `numero_sala` text NOT NULL,
  `dt_inicio` date NOT NULL,
  `dt_termino` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id_aluno`);

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id_curso`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`id_turma`);
--
-- Banco de dados: `cni`
--
CREATE DATABASE IF NOT EXISTS `cni` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cni`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `matricula` int(11) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dt_nasc` datetime NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `contato` varchar(255) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `matricula`, `cpf`, `email`, `dt_nasc`, `sexo`, `contato`, `ativo`, `createdAt`, `updatedAt`) VALUES
(1, 'Joao da silva', 2, '23110033021', 'joaodasilva@email.com', '2021-12-23 00:00:00', 'M', '9921213223', 1, '2021-10-11 13:54:28', '2021-10-11 13:54:28'),
(2, 'Maria', 3, '0222022221', 'maria@email.com', '1978-06-12 00:00:00', 'F', '6199929292', 1, '2021-10-11 22:48:58', '2021-10-11 22:48:58'),
(3, 'Johnatan', 2, '23193949495', 'johnatan@email.com', '1990-12-11 00:00:00', 'M', '9921213223', 1, '2021-10-13 03:35:59', '2021-10-13 03:35:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(300) NOT NULL,
  `carga_hr` varchar(11) NOT NULL,
  `qt_aluno` int(5) NOT NULL,
  `dt_ini` date NOT NULL,
  `num_sala` int(11) NOT NULL,
  `nome_professor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`id`, `nome`, `descricao`, `carga_hr`, `qt_aluno`, `dt_ini`, `num_sala`, `nome_professor`) VALUES
(1, 'Matematica Aplicada', 'Curso terá 40 horas no período de 19 ás 22 sem intervalos.', '40', 15, '2021-11-11', 11, 'Mario'),
(2, 'Topografia', 'O curso terá 40 horas e será no período verpertino.', '40', 10, '2021-10-22', 4, 'Priscilla');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `matricula` int(11) NOT NULL,
  `cpf` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dt_nasc` date NOT NULL,
  `sexo` varchar(11) NOT NULL,
  `contato` varchar(11) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `disciplina` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`id`, `nome`, `matricula`, `cpf`, `email`, `dt_nasc`, `sexo`, `contato`, `ativo`, `disciplina`) VALUES
(1, 'Mario da Silva', 1, 23232112, 'mario@email.com', '1968-06-12', 'M', '423435454', 1, 'Matematica'),
(2, 'Priscilla da Costa', 2, 234234434, 'priscila@email.com', '1989-10-02', 'F', '4234324342', 1, 'Goegrafia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `carga_hr` varchar(5) NOT NULL,
  `professor_id` int(5) NOT NULL,
  `aluno_id` int(5) NOT NULL,
  `curso_id` int(5) NOT NULL,
  `num_sala` varchar(10) NOT NULL,
  `dt_ini` date NOT NULL,
  `dt_fim` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`id`, `nome`, `carga_hr`, `professor_id`, `aluno_id`, `curso_id`, `num_sala`, `dt_ini`, `dt_fim`) VALUES
(1, 'primeira turma', '30', 1, 1, 1, '11', '2021-11-11', '2022-01-22'),
(2, 'segunda turma', '40', 2, 2, 2, '4', '2021-11-11', '2022-01-20');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alunos_cpf_email` (`cpf`,`email`);

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Banco de dados: `db_sistema_agendamento_HOMO`
--
CREATE DATABASE IF NOT EXISTS `db_sistema_agendamento_HOMO` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_sistema_agendamento_HOMO`;
--
-- Banco de dados: `db_trabalhe_conosco_HOMO`
--
CREATE DATABASE IF NOT EXISTS `db_trabalhe_conosco_HOMO` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_trabalhe_conosco_HOMO`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `anotacaoCandidato`
--

CREATE TABLE `anotacaoCandidato` (
  `idanotacao` int(11) NOT NULL,
  `idprocesso` int(11) NOT NULL,
  `idcandidato` int(11) NOT NULL,
  `idlogin` int(11) NOT NULL,
  `faseAnalise` varchar(100) DEFAULT NULL,
  `titulo` varchar(100) NOT NULL,
  `anotacao` varchar(1000) NOT NULL,
  `log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `anotacaoCandidato`
--

INSERT INTO `anotacaoCandidato` (`idanotacao`, `idprocesso`, `idcandidato`, `idlogin`, `faseAnalise`, `titulo`, `anotacao`, `log`) VALUES
(1, 2, 1, 2, '<i class=\"fad fa-book-reader\"></i> Avaliação curricular', 'Primeira anotação', '<p>Primeira anotação sobre o candidato.</p>', '2021-01-26 20:35:37');

-- --------------------------------------------------------

--
-- Estrutura da tabela `beneficio`
--

CREATE TABLE `beneficio` (
  `idbeneficio` int(11) NOT NULL,
  `desc_beneficio` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `beneficio`
--

INSERT INTO `beneficio` (`idbeneficio`, `desc_beneficio`) VALUES
(2, 'Ticket Alimentação e/ou Refeição'),
(3, 'Plano de Saúde Médico e Odontológico'),
(4, 'Previdência Privada'),
(5, 'Seguro de Vida em grupo'),
(6, 'Auxílio Creche'),
(7, 'Trabalho Home Office');

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidato`
--

CREATE TABLE `candidato` (
  `idcandidato` int(11) NOT NULL,
  `idprocessoSeletivo` int(11) NOT NULL,
  `idescolaridade` int(11) DEFAULT NULL,
  `nome` varchar(155) DEFAULT NULL,
  `dt_nascimento` date DEFAULT NULL,
  `sexo` enum('Masculino','Feminino') DEFAULT NULL,
  `cpf` char(14) DEFAULT NULL,
  `rg` varchar(55) DEFAULT NULL,
  `email` varchar(155) DEFAULT NULL,
  `cep` char(10) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `bairro` varchar(155) DEFAULT NULL,
  `cidade` varchar(155) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `telFixo` varchar(15) DEFAULT NULL,
  `exEmpregado` enum('S','N') DEFAULT 'N' COMMENT 'S - SIM / N - NÃO',
  `nepotismo` enum('S','N') DEFAULT 'N' COMMENT 'S - SIM / N - NÃO',
  `nomeNepotismo` varchar(155) DEFAULT NULL,
  `parentescoNepotismo` varchar(100) DEFAULT NULL,
  `pis` char(12) DEFAULT NULL,
  `pcd` enum('S','N') DEFAULT 'N' COMMENT 'S - SIM / N - NÃO',
  `cid` varchar(20) DEFAULT NULL,
  `primeiroEmprego` enum('S','N') DEFAULT 'N' COMMENT 'S - SIM / N - NÃO',
  `observacoes` varchar(500) DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `resultadoAnalise` enum('Não avaliado','Classificado','Desclassificado','Aprovado') NOT NULL DEFAULT 'Não avaliado',
  `pretensaoSalarial` varchar(10) DEFAULT NULL,
  `comprovantePCD` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `candidato`
--

INSERT INTO `candidato` (`idcandidato`, `idprocessoSeletivo`, `idescolaridade`, `nome`, `dt_nascimento`, `sexo`, `cpf`, `rg`, `email`, `cep`, `endereco`, `complemento`, `bairro`, `cidade`, `uf`, `celular`, `telFixo`, `exEmpregado`, `nepotismo`, `nomeNepotismo`, `parentescoNepotismo`, `pis`, `pcd`, `cid`, `primeiroEmprego`, `observacoes`, `dataCadastro`, `resultadoAnalise`, `pretensaoSalarial`, `comprovantePCD`) VALUES
(1, 2, 6, 'Fulano de Tal', '2000-01-10', 'Masculino', '926.152.160-66', '123456', 'evilson.santos@assefaz.org.br', '72.145-501', 'EQNM 34/36 Bloco A', '', 'Taguatinga Norte (Taguatinga)', 'Brasília', 'DF', '(61) 99999-8888', '(61) 3333-4444', 'N', 'N', NULL, NULL, '', 'N', NULL, 'N', '', '2021-01-26', 'Aprovado', NULL, NULL),
(3, 1, 11, 'JohnatanNunes de Oliveira', '1990-05-11', 'Masculino', '018.485.601-92', '2839054', 'johnatan.oliveira@assefaz.org.br', '72.315-551', 'QS 517 Conjunto A', 'Comércio', 'Samambaia Sul (Samambaia)', 'Brasília', 'DF', '(61) 99507-8747', '', 'N', 'N', NULL, NULL, '019292929922', 'N', NULL, 'N', '', '2021-02-05', 'Não avaliado', '4000', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidatoExperiencia`
--

CREATE TABLE `candidatoExperiencia` (
  `idcandidatoExperiencia` int(11) NOT NULL,
  `idcandidato` int(11) NOT NULL,
  `nomeEmpresa` varchar(80) NOT NULL,
  `funcaoCargo` varchar(80) NOT NULL,
  `atividadesDesempenhadas` varchar(1500) NOT NULL,
  `dataInicioTrabalho` date NOT NULL,
  `dataFimTrabalho` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidatoFormacao`
--

CREATE TABLE `candidatoFormacao` (
  `idcandidatoFormacao` int(11) NOT NULL,
  `idcandidato` int(11) NOT NULL,
  `tipoCurso` char(2) NOT NULL,
  `nomeCurso` varchar(80) NOT NULL,
  `cargaCurso` varchar(5) NOT NULL,
  `instituicaoCurso` varchar(80) NOT NULL,
  `dataInicioCurso` date NOT NULL,
  `dataFimCurso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `candidatoFormacao`
--

INSERT INTO `candidatoFormacao` (`idcandidatoFormacao`, `idcandidato`, `tipoCurso`, `nomeCurso`, `cargaCurso`, `instituicaoCurso`, `dataInicioCurso`, `dataFimCurso`) VALUES
(1, 1, '5', '', '', '', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidatoPergunta`
--

CREATE TABLE `candidatoPergunta` (
  `idcandidato` int(11) NOT NULL,
  `pergunta` varchar(250) NOT NULL,
  `resposta` enum('S','N') NOT NULL DEFAULT 'N' COMMENT 'S - SIM / N - NÃO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `candidatoPergunta`
--

INSERT INTO `candidatoPergunta` (`idcandidato`, `pergunta`, `resposta`) VALUES
(1, 'É proprietário(a) ou possui sociedade em empresas prestadoras de serviço à ASSEFAZ <i class=\"fad fa-question-circle\"></i>', 'N'),
(1, 'Foi avaliado(a) em teste prático ou entrevistado(a) em processo seletivo para a Assefaz nos últimos 12 meses <i class=\"fad fa-question-circle\"></i>', 'N'),
(1, 'Esta vaga exige <strong>Domínio em cálculos CNHPM</strong>. Possui <i class=\'fad fa-question-circle\'></i>', 'N'),
(2, 'Trabalha ou possui sociedade em empresas prestadoras de serviço à ASSEFAZ <i class=\"fad fa-question-circle\"></i>', 'N'),
(2, 'Possui outras atividades profissionais paralelas(consultoria/empresa) que teria que conciliar com a vaga <i class=\"fad fa-question-circle\"></i>', 'N'),
(2, 'Esta vaga exige <strong>Domínio em cálculos CNHPM</strong>. Possui <i class=\'fad fa-question-circle\'></i>', 'N'),
(3, 'Trabalha ou possui sociedade em empresas prestadoras de serviço à ASSEFAZ <i class=\"fad fa-question-circle\"></i>', 'N'),
(3, 'Possui outras atividades profissionais paralelas(consultoria/empresa) que teria que conciliar com a vaga <i class=\"fad fa-question-circle\"></i>', 'N'),
(3, 'Esta vaga exige <strong>Domínio em cálculos CNHPM</strong>. Possui <i class=\'fad fa-question-circle\'></i>', 'N');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargo`
--

CREATE TABLE `cargo` (
  `idcargo` int(11) NOT NULL,
  `desc_cargo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cargo`
--

INSERT INTO `cargo` (`idcargo`, `desc_cargo`) VALUES
(1, 'ADVOGADO JR'),
(2, 'ADVOGADO PL'),
(3, 'ANAL ADM JR'),
(4, 'ANAL ADM PL'),
(5, 'ANAL ADM SR'),
(6, 'ANAL FINANCEIRO JR'),
(7, 'ANAL FINANCEIRO PL'),
(8, 'ANAL FINANCEIRO SR'),
(9, 'ANAL INFORMATICA JR'),
(10, 'ANAL INFORMATICA PL'),
(11, 'ANAL INFORMATICA SR'),
(12, 'ANAL PROG SOCIAIS JR'),
(13, 'ANAL PROG SOCIAIS PL'),
(14, 'ANAL PROG SOCIAIS SR'),
(15, 'ANAL SAUDE JR'),
(16, 'ANAL SAUDE PL'),
(17, 'ANAL SAUDE SR'),
(18, 'ANALISTA ADM SR'),
(19, 'ANALISTA ESPECIAL'),
(20, 'ASSES COMUNIC MARKET'),
(21, 'ASSIST ADMINISTRATIV'),
(22, 'ASSIST FINANCEIRO'),
(23, 'ASSIST INFORMATICA'),
(24, 'ASSIST OPERACIONAL'),
(25, 'ASSIST PROG SOCIAIS'),
(26, 'ASSIST SAUDE'),
(27, 'ASSIST SAUDE JR TELE'),
(28, 'ASSIST SAUDE PL TELE'),
(29, 'ASSIST SOCIAL JR'),
(30, 'ASSISTENTE ADM'),
(31, 'AUDITOR INTERNO JR'),
(32, 'AUTONOMO'),
(33, 'AUXILIAR ADM'),
(34, 'AUXILIAR OPERACIONAL'),
(35, 'COOR AUDITORIA INTER'),
(36, 'COOR DESENVOL INFORM'),
(37, 'COOR ES DE P S - UMP'),
(38, 'COOR EST ADM FINC'),
(39, 'COOR EST SAUDE'),
(40, 'COOR EST SAUDE - UGP'),
(41, 'COOR EST SAUDE - UMP'),
(42, 'COOR JURIDICO'),
(43, 'COOR NAC ADM LOGIST'),
(44, 'COOR NAC ASSIST SAUD'),
(45, 'COOR NAC GESTAO PESS'),
(46, 'COOR NAC PROM SAUDE'),
(47, 'COORD ADMINISTRATIVO'),
(48, 'COORD NAC ACOES SOC'),
(49, 'COORD NAC REGULACAO'),
(50, 'DENTISTA AUDITOR 4H'),
(51, 'ENFER AUDITOR JR'),
(52, 'ENFER AUDITOR PL'),
(53, 'ENFER AUDITOR PL 8H'),
(54, 'ENFER AUDITOR SR'),
(55, 'ESTAGIARIO'),
(56, 'GER ESTADUAL UGP'),
(57, 'GER ESTADUAL UMP'),
(58, 'GER ESTADUAL UPE'),
(59, 'GER EXEC INFORMATICA'),
(60, 'GER NAC ADM FINANCAS'),
(61, 'GER NAC SAUDE'),
(62, 'GER.CONTROLADORIA'),
(63, 'MEDICO AUDITOR 4H'),
(64, 'MEDICO AUTONOMO'),
(65, 'MEN APREND AUX ADM'),
(66, 'OUVIDOR'),
(67, 'PROF EDUCACAO INFANT'),
(68, 'SECRETARIA  UNID CEN'),
(69, 'SECRETARIA EXECUTIVA'),
(70, 'SUP ES  ADM PL - UGP'),
(71, 'SUP ES ADM JR - UGP'),
(72, 'SUP ES ATEN JR - UGP'),
(73, 'SUP ES FAT JR - UGP'),
(74, 'SUP ES FIN JR - UGP'),
(75, 'SUP EST ADM JR - UPE'),
(76, 'SUP EST ATE JR - UPE'),
(77, 'SUP EST ATENDIMENTO'),
(78, 'SUP EST CREDENCIAMEN'),
(79, 'SUP EST FINANCAS'),
(80, 'SUP EST PRO SOC JR'),
(81, 'SUP EST PRO SOC PL'),
(82, 'SUP ESTAD DE ADM'),
(83, 'SUP NAC ADM PR DC JR'),
(84, 'SUP NAC CAD PL'),
(85, 'SUP NAC DE ATENDIMEN'),
(86, 'SUP NAC FATURAM JR'),
(87, 'SUP NAC GES RE TR JR'),
(88, 'SUPERINT EXECUTIVO'),
(89, 'SUPERVISOR DE ATENDI');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comunicacaoCandidato`
--

CREATE TABLE `comunicacaoCandidato` (
  `idcomunicado` int(11) NOT NULL,
  `idprocesso` int(11) NOT NULL,
  `idcandidato` int(11) NOT NULL,
  `idlogin` int(11) NOT NULL,
  `assunto` varchar(100) NOT NULL,
  `texto` varchar(1000) NOT NULL,
  `destinatario` varchar(100) NOT NULL,
  `remetente` varchar(100) NOT NULL,
  `faseComunicacao` varchar(100) NOT NULL,
  `log` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `comunicacaoCandidato`
--

INSERT INTO `comunicacaoCandidato` (`idcomunicado`, `idprocesso`, `idcandidato`, `idlogin`, `assunto`, `texto`, `destinatario`, `remetente`, `faseComunicacao`, `log`) VALUES
(1, 2, 1, 2, 'COMUNICADO ASSEFAZ: Processo seletivo Nº. 2 - Avaliação técnica', '<img align=\'center\' src=\'https://www.assefaz.org.br/img/logo_declaracao.png\'><br/><br/>Prezado(a) candidato(a), <strong>Fulano de Tal</strong><br/><br/><p>Candidato aprovado na 2ª etapa do processo seletivo. Avaliação técnica.</p><br/><br/><p style=\'font-size:10px;\'><strong>Importante</strong>: esta é uma mensagem automática e não deve ser respondida.', 'evilson.santos@assefaz.org.br', 'naoresponda@assefaz.org.br', '<i class=\"fad fa-people-arrows\"></i> Avaliação técnica', '2021-01-26 20:42:09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `escolaridade`
--

CREATE TABLE `escolaridade` (
  `idescolaridade` int(11) NOT NULL,
  `desc_escolaridade` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `escolaridade`
--

INSERT INTO `escolaridade` (`idescolaridade`, `desc_escolaridade`) VALUES
(1, 'Primeiro grau incompleto'),
(2, 'Primeiro grau completo'),
(3, 'Segundo grau incompleto'),
(4, 'Segundo grau completo'),
(5, 'Superior  incompleto'),
(6, 'Superior completo'),
(7, 'Pós Graduação incompleto'),
(8, 'Pós Graduação completo'),
(9, 'Mestrado incompleto'),
(10, 'Mestrado completo'),
(11, 'Especializaçaõ/Residência'),
(12, 'Doutorado'),
(13, 'Analfabeto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `localidade`
--

CREATE TABLE `localidade` (
  `idlocalidade` int(10) NOT NULL,
  `desc_localidade` varchar(255) NOT NULL,
  `uf_localidade` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `localidade`
--

INSERT INTO `localidade` (`idlocalidade`, `desc_localidade`, `uf_localidade`) VALUES
(1, 'Superintendência', 'DF'),
(2, 'P.A. 506 Sul', 'DF'),
(3, 'Gerência de São Paulo', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id` int(10) NOT NULL,
  `nome` varchar(255) CHARACTER SET latin1 NOT NULL,
  `matricula` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(11) CHARACTER SET latin1 NOT NULL,
  `dt_nasc` date NOT NULL,
  `email` varchar(150) CHARACTER SET latin1 NOT NULL,
  `senha` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ip` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomeMaquina` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dt_cadastro` datetime NOT NULL,
  `img` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT 'application/AdminLTE-3.0.4/dist/img/users/default.png',
  `status` enum('ativo','inativo') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id`, `nome`, `matricula`, `cpf`, `dt_nasc`, `email`, `senha`, `ip`, `nomeMaquina`, `dt_cadastro`, `img`, `status`) VALUES
(1, 'Lucas Alves', '011374', '04224618141', '1993-03-28', 'lucas.costa@assefaz.org.br', '1f32aa4c9a1d2ea010adcf2348166a04', '10.62.12.58', 'est001006670.assefaz-sen.org.br', '2020-07-13 16:42:43', 'application/AdminLTE-3.0.4/dist/img/users/011374.jpeg', 'ativo'),
(2, 'Evilson Montenegro Dos Santos', '011496', '94457220191', '1981-11-21', 'evilson.gti@gmail.com', 'f82f8d048ce82bd41d65f9ec14a53608', '10.62.12.176', 'est001006663.assefaz-sen.org.br', '2020-11-09 18:28:37', 'application/AdminLTE-3.0.4/dist/img/users/default.png', 'ativo'),
(3, 'Charles Araujo', '010807', '77080408172', '1975-09-17', 'charles.araujo@assefaz.org.br', '1f32aa4c9a1d2ea010adcf2348166a04', NULL, NULL, '2021-08-17 10:39:00', 'application/AdminLTE-3.0.4/dist/img/users/default.png', 'ativo'),
(4, 'johnatan nunes', '011299', '01848560192', '1990-05-11', 'johnatan.oliviera@assefaz.org.br', '1f32aa4c9a1d2ea010adcf2348166a04', NULL, NULL, '2021-08-17 10:29:00', 'application/AdminLTE-3.0.4/dist/img/users/default.png', 'ativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `processoSeletivo`
--

CREATE TABLE `processoSeletivo` (
  `idprocessoSeletivo` int(11) NOT NULL,
  `idtipoVaga` int(11) DEFAULT NULL,
  `idlocalidade` int(11) DEFAULT NULL,
  `idescolaridade` int(11) DEFAULT NULL,
  `idcargo` int(11) DEFAULT NULL,
  `idsetor` int(11) DEFAULT NULL,
  `idtipoProcesso` int(11) DEFAULT NULL,
  `atividade` varchar(500) DEFAULT NULL,
  `observacao` varchar(500) DEFAULT NULL,
  `qtdVagas` int(5) DEFAULT '0',
  `cadastroReserva` enum('0','1') DEFAULT NULL COMMENT '0=Não / 1=Sim',
  `vagaPCD` enum('0','1') DEFAULT NULL COMMENT '0=Não / 1=Sim',
  `remuneracao` varchar(9) DEFAULT NULL,
  `salarioCombinado` enum('0','1') DEFAULT NULL COMMENT '0=Não / 1=Sim',
  `cargaHoraria` int(2) DEFAULT NULL,
  `dataInicio` date DEFAULT NULL,
  `dataFim` date DEFAULT NULL,
  `status` enum('Ativo','Cancelado','Em andamento','Finalizado','Excluído','Stand-by') DEFAULT 'Stand-by',
  `idloginCad` int(11) DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `idloginMod` int(11) DEFAULT NULL,
  `dataModificacao` date DEFAULT NULL,
  `D_E_L_E_T_` enum('*','') NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `processoSeletivo`
--

INSERT INTO `processoSeletivo` (`idprocessoSeletivo`, `idtipoVaga`, `idlocalidade`, `idescolaridade`, `idcargo`, `idsetor`, `idtipoProcesso`, `atividade`, `observacao`, `qtdVagas`, `cadastroReserva`, `vagaPCD`, `remuneracao`, `salarioCombinado`, `cargaHoraria`, `dataInicio`, `dataFim`, `status`, `idloginCad`, `dataCadastro`, `idloginMod`, `dataModificacao`, `D_E_L_E_T_`) VALUES
(1, 1, 3, 6, 30, 3, 2, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard du', '<p><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their d', 1, '0', '0', '3.000,00', '0', 8, '2021-02-01', '2021-02-28', 'Em andamento', 2, '2021-01-26', 1, '2021-01-28', ''),
(2, 1, 3, 6, 30, 3, 2, '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard du', '<p><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their d', 1, '0', '0', '3.000,00', '0', 8, '2021-01-26', '2021-01-28', 'Finalizado', 2, '2021-01-26', 2, '2021-01-26', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `processoSeletivo_beneficio`
--

CREATE TABLE `processoSeletivo_beneficio` (
  `idprocessoSeletivo` int(11) NOT NULL,
  `idbeneficio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `processoSeletivo_beneficio`
--

INSERT INTO `processoSeletivo_beneficio` (`idprocessoSeletivo`, `idbeneficio`) VALUES
(1, 3),
(1, 4),
(1, 6),
(2, 3),
(2, 4),
(2, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `processoSeletivo_requisito`
--

CREATE TABLE `processoSeletivo_requisito` (
  `idprocessoSeletivo` int(11) NOT NULL,
  `idrequisito` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `processoSeletivo_requisito`
--

INSERT INTO `processoSeletivo_requisito` (`idprocessoSeletivo`, `idrequisito`) VALUES
(1, 1),
(2, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `recovery`
--

CREATE TABLE `recovery` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `hash_recovery` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_recovery` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `recovery`
--

INSERT INTO `recovery` (`id`, `id_usuario`, `hash_recovery`, `status_recovery`) VALUES
(2, 2, 'e73410b3d765bb176102dbf7892c45d00a77d98a50a5fc27a20f3950be63b8db', '0'),
(3, 1, '0e8e75ab644db62f3da1852e0aedaf005a08c176f46f11f179f1fd9a20926af0', '0'),
(4, 4, '5ddaed55eb40076991a2da524553893f95f69a5418e3cf1374cad24d3c67cd1a', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `requisito`
--

CREATE TABLE `requisito` (
  `idrequisito` int(11) NOT NULL,
  `tipo_requisito` enum('0','1') DEFAULT NULL COMMENT '0=opcional;1=obrigatorio',
  `desc_requisito` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `requisito`
--

INSERT INTO `requisito` (`idrequisito`, `tipo_requisito`, `desc_requisito`) VALUES
(1, '0', 'Domínio em cálculos CNHPM'),
(2, '1', 'Domínio em Inglês');

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor`
--

CREATE TABLE `setor` (
  `idsetor` int(11) NOT NULL,
  `desc_setor` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `setor`
--

INSERT INTO `setor` (`idsetor`, `desc_setor`) VALUES
(1, 'T.I. - Desenvolvimento'),
(2, 'Cadastro Nacional'),
(3, 'Gerência de São Paulo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoCurso`
--

CREATE TABLE `tipoCurso` (
  `idtipoCurso` int(11) NOT NULL,
  `categoria` enum('1','0') DEFAULT NULL COMMENT '0=Formação Acadêmica / 1=Formação Complemetar',
  `desc_tipoCurso` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipoCurso`
--

INSERT INTO `tipoCurso` (`idtipoCurso`, `categoria`, `desc_tipoCurso`) VALUES
(1, '1', 'Curso Extracurricular'),
(2, '0', 'Ensino Fundamental'),
(3, '0', 'Ensino Médio'),
(4, '0', 'Ensino Técnico'),
(5, '0', 'Ensino Superior'),
(6, '0', 'Pós-Graduação'),
(7, '0', 'Mestrado'),
(8, '0', 'Doutorado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoProcesso`
--

CREATE TABLE `tipoProcesso` (
  `idtipoProcesso` int(11) NOT NULL,
  `desc_tipoProcesso` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipoProcesso`
--

INSERT INTO `tipoProcesso` (`idtipoProcesso`, `desc_tipoProcesso`) VALUES
(1, 'Interna'),
(2, 'Externa'),
(3, 'Mista');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoVaga`
--

CREATE TABLE `tipoVaga` (
  `idtipoVaga` int(11) NOT NULL,
  `desc_tipoVaga` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipoVaga`
--

INSERT INTO `tipoVaga` (`idtipoVaga`, `desc_tipoVaga`) VALUES
(1, 'Efetivo'),
(2, 'Temporario');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `anotacaoCandidato`
--
ALTER TABLE `anotacaoCandidato`
  ADD PRIMARY KEY (`idanotacao`),
  ADD KEY `fk_login_comunicado` (`idlogin`),
  ADD KEY `fk_processo_comunicado` (`idprocesso`),
  ADD KEY `fk_candidato_comunicado` (`idcandidato`);

--
-- Índices para tabela `beneficio`
--
ALTER TABLE `beneficio`
  ADD PRIMARY KEY (`idbeneficio`);

--
-- Índices para tabela `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`idcandidato`),
  ADD KEY `fk_processoSeletivoCandidato` (`idprocessoSeletivo`),
  ADD KEY `fk_escolaridade` (`idescolaridade`);

--
-- Índices para tabela `candidatoExperiencia`
--
ALTER TABLE `candidatoExperiencia`
  ADD PRIMARY KEY (`idcandidatoExperiencia`),
  ADD KEY `fk_candidatoExperiencia_candidato` (`idcandidato`);

--
-- Índices para tabela `candidatoFormacao`
--
ALTER TABLE `candidatoFormacao`
  ADD PRIMARY KEY (`idcandidatoFormacao`),
  ADD KEY `fk_candidatoFormacao_candidato` (`idcandidato`);

--
-- Índices para tabela `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`idcargo`);

--
-- Índices para tabela `comunicacaoCandidato`
--
ALTER TABLE `comunicacaoCandidato`
  ADD PRIMARY KEY (`idcomunicado`),
  ADD KEY `fk_login_comunicado` (`idlogin`),
  ADD KEY `fk_processo_comunicado` (`idprocesso`),
  ADD KEY `fk_candidato_comunicado` (`idcandidato`);

--
-- Índices para tabela `escolaridade`
--
ALTER TABLE `escolaridade`
  ADD PRIMARY KEY (`idescolaridade`);

--
-- Índices para tabela `localidade`
--
ALTER TABLE `localidade`
  ADD PRIMARY KEY (`idlocalidade`);

--
-- Índices para tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `processoSeletivo`
--
ALTER TABLE `processoSeletivo`
  ADD PRIMARY KEY (`idprocessoSeletivo`),
  ADD KEY `fk_processoSeletivo_tipoVaga1_idx` (`idtipoVaga`),
  ADD KEY `fk_processoSeletivo_localidade1_idx` (`idlocalidade`),
  ADD KEY `fk_processoSeletivo_escolaridade1_idx` (`idescolaridade`),
  ADD KEY `fk_processoSeletivo_cargo1_idx` (`idcargo`),
  ADD KEY `fk_processoSeletivo_setor1_idx` (`idsetor`),
  ADD KEY `fk_processoSeletivo_tipoProcesso_idx` (`idtipoProcesso`),
  ADD KEY `fk_processoSeletivo_loginCad_idx` (`idloginCad`),
  ADD KEY `fk_processoSeletivo_loginMod_idx` (`idloginMod`);

--
-- Índices para tabela `processoSeletivo_beneficio`
--
ALTER TABLE `processoSeletivo_beneficio`
  ADD PRIMARY KEY (`idbeneficio`,`idprocessoSeletivo`),
  ADD KEY `fk_beneficio_processoSeletivo_processoSeletivo1_idx` (`idprocessoSeletivo`),
  ADD KEY `fk_beneficio_processoSeletivo_beneficio_idx` (`idbeneficio`);

--
-- Índices para tabela `processoSeletivo_requisito`
--
ALTER TABLE `processoSeletivo_requisito`
  ADD PRIMARY KEY (`idprocessoSeletivo`,`idrequisito`),
  ADD KEY `fk_processoSeletivo_requisito_requisito1_idx` (`idrequisito`),
  ADD KEY `fk_processoSeletivo_requisito_processoSeletivo1_idx` (`idprocessoSeletivo`);

--
-- Índices para tabela `recovery`
--
ALTER TABLE `recovery`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `requisito`
--
ALTER TABLE `requisito`
  ADD PRIMARY KEY (`idrequisito`);

--
-- Índices para tabela `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`idsetor`);

--
-- Índices para tabela `tipoCurso`
--
ALTER TABLE `tipoCurso`
  ADD PRIMARY KEY (`idtipoCurso`);

--
-- Índices para tabela `tipoProcesso`
--
ALTER TABLE `tipoProcesso`
  ADD PRIMARY KEY (`idtipoProcesso`);

--
-- Índices para tabela `tipoVaga`
--
ALTER TABLE `tipoVaga`
  ADD PRIMARY KEY (`idtipoVaga`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `anotacaoCandidato`
--
ALTER TABLE `anotacaoCandidato`
  MODIFY `idanotacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `beneficio`
--
ALTER TABLE `beneficio`
  MODIFY `idbeneficio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `candidato`
--
ALTER TABLE `candidato`
  MODIFY `idcandidato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `candidatoExperiencia`
--
ALTER TABLE `candidatoExperiencia`
  MODIFY `idcandidatoExperiencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `candidatoFormacao`
--
ALTER TABLE `candidatoFormacao`
  MODIFY `idcandidatoFormacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cargo`
--
ALTER TABLE `cargo`
  MODIFY `idcargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de tabela `comunicacaoCandidato`
--
ALTER TABLE `comunicacaoCandidato`
  MODIFY `idcomunicado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `escolaridade`
--
ALTER TABLE `escolaridade`
  MODIFY `idescolaridade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `localidade`
--
ALTER TABLE `localidade`
  MODIFY `idlocalidade` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `processoSeletivo`
--
ALTER TABLE `processoSeletivo`
  MODIFY `idprocessoSeletivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `recovery`
--
ALTER TABLE `recovery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `requisito`
--
ALTER TABLE `requisito`
  MODIFY `idrequisito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `setor`
--
ALTER TABLE `setor`
  MODIFY `idsetor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tipoCurso`
--
ALTER TABLE `tipoCurso`
  MODIFY `idtipoCurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tipoProcesso`
--
ALTER TABLE `tipoProcesso`
  MODIFY `idtipoProcesso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tipoVaga`
--
ALTER TABLE `tipoVaga`
  MODIFY `idtipoVaga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `candidato`
--
ALTER TABLE `candidato`
  ADD CONSTRAINT `fk_escolaridade` FOREIGN KEY (`idescolaridade`) REFERENCES `escolaridade` (`idescolaridade`),
  ADD CONSTRAINT `fk_processoSeletivoCandidato` FOREIGN KEY (`idprocessoSeletivo`) REFERENCES `processoSeletivo` (`idprocessoSeletivo`);

--
-- Limitadores para a tabela `candidatoExperiencia`
--
ALTER TABLE `candidatoExperiencia`
  ADD CONSTRAINT `fk_candidatoExperiencia_candidato` FOREIGN KEY (`idcandidato`) REFERENCES `candidato` (`idcandidato`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `candidatoFormacao`
--
ALTER TABLE `candidatoFormacao`
  ADD CONSTRAINT `fk_candidatoFormacao_candidato` FOREIGN KEY (`idcandidato`) REFERENCES `candidato` (`idcandidato`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `comunicacaoCandidato`
--
ALTER TABLE `comunicacaoCandidato`
  ADD CONSTRAINT `fk_candidato_comunicado` FOREIGN KEY (`idcandidato`) REFERENCES `candidato` (`idcandidato`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_login_comunicado` FOREIGN KEY (`idlogin`) REFERENCES `login` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_processo_comunicado` FOREIGN KEY (`idprocesso`) REFERENCES `processoSeletivo` (`idprocessoSeletivo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `processoSeletivo_beneficio`
--
ALTER TABLE `processoSeletivo_beneficio`
  ADD CONSTRAINT `fk_beneficio_processoSeletivo_beneficio` FOREIGN KEY (`idbeneficio`) REFERENCES `beneficio` (`idbeneficio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_beneficio_processoSeletivo_processoSeletivo1` FOREIGN KEY (`idprocessoSeletivo`) REFERENCES `processoSeletivo` (`idprocessoSeletivo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `processoSeletivo_requisito`
--
ALTER TABLE `processoSeletivo_requisito`
  ADD CONSTRAINT `fk_processoSeletivo_requisito_processoSeletivo1` FOREIGN KEY (`idprocessoSeletivo`) REFERENCES `processoSeletivo` (`idprocessoSeletivo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_processoSeletivo_requisito_requisito1` FOREIGN KEY (`idrequisito`) REFERENCES `requisito` (`idrequisito`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
