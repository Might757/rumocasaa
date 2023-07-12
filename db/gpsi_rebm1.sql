-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18-Jun-2019 às 10:59
-- Versão do servidor: 10.1.39-MariaDB
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gpsi_rebm1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `id` int(11) NOT NULL,
  `dataAtendimento` datetime NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `idInstituicao` int(11) NOT NULL,
  `idUtente` int(11) NOT NULL,
  `idTecnico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividades`
--

CREATE TABLE `atividades` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `desc_curta` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `desc_longa` text COLLATE latin1_general_ci,
  `img` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `id_evento` int(11) NOT NULL,
  `link` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `ficheiro` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `texto_link` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `atividades`
--

INSERT INTO `atividades` (`id`, `titulo`, `desc_curta`, `desc_longa`, `img`, `id_evento`, `link`, `ficheiro`, `texto_link`) VALUES
(1, 'IGNITE Youth', NULL, 'O IGNITE Youth Barreiro Moita decorrerá no próximo dia 23 de Novembro entre as 15h00 e as 18h00, no AMAC- Auditório Municipal Augusto Cabrita- Barreiro, integrado no âmbito do V Fórum de Desenvolvimento Local.</p><p>\nSob o mote “Uma Cidade Feliz: Criatividade, Inovação, Desenvolvimento e Competitividade”, O IGNITE Youth permitirá dar voz a talentos desconhecidos de jovens (15 – 30 anos) alunos ou não das escolas dos concelhos, chamados a partilharem ideias e projetos que podem fazer a diferença na criação de uma cidade competitiva, justa, feliz num Barreiro e Moita de futuro.</p><p>O desafio é o de partilhar ideias, inspirar o público, criar redes de contacto e descobrir talentos desconhecidos.</p><p>\nAs candidaturas estão abertas a todos os/as oradores/as que queiram incendiar o IGNITE Youth com as suas ideias, experiências e histórias!', 'images/eventos/1_1.jpg', 1, 'http://igniteportugal.blogspot.pt/p/become-speaker.html', NULL, 'Candidate-se aqui!'),
(2, 'Mostra de Ideias e Projetos', NULL, 'No âmbito do V Fórum de Desenvolvimento Local, \"Uma Cidade Feliz - Criatividade, Inovação, Desenvolvimento e Competitividade\", promovido pela Rede para Empregabilidade Barreiro-Moita, convidamos empresas, organizações e pessoas a apresentar ideias e projetos capazes de fortalecer o território e desenvolver as suas cadeias de valor.</p><p>\nCom esta Mostra, pretende-se fazer emergir ideias e iniciativas que dêem visibilidade às empresas e a soluções inovadoras que promovam o aproveitamento económico dos investimentos estruturantes no território.</p><p>\nPodem apresentar-se ideias de âmbito nacional e internacional desde que apresentem valor e impacto local nos concelhos do Barreiro e Moita, sendo soluções que possam gerar valor económico e empregabilidade, manifestando originalidade e sentido de inovação, impacto sócio territorial e reflitam responsabilidade social.</p><p>\nAs Ideias e Projetos que participam na Mostra podem apresentar-se através posters, maquetes, vídeos, experimentações, apresentações em painel.</p>\nA apresentação pública das ideias e propostas realizar-se-á no dia 24 de Novembro no Auditório Municipal Augusto Cabrita (Barreiro).</p><p>\nPara apresentação da sua ideia ou projeto é obrigatório candidatar-se.\nNota: Poderá consultar as Normas de participação da Mostra de Ideias e Projetos nesta página. Dúvidas ou pedidos de informação mais específica poderão ser remetidos para o endereço de email: empregabilidadebm@gmail.com.', 'images/eventos/1_2.jpg', 1, 'https://docs.google.com/forms/d/1Gha4b1USRk3EXKw08XH6m7nWOagRmY-QJ6Wn37vtGto/edit', 'ficheiros/eventos/1_2.pdf', 'Candidate-se aqui!'),
(3, 'Seminário - Inscrição', NULL, 'Garanta a sua inscrição no seminário do V Fórum de Desenvolvimento Local Barreiro Moita, no dia 24 de novembro, sob o tema \"Uma Cidade Feliz - Criatividade, Inovação, Desenvolvimento e Competitividade\".</p><p>\nAs inscrições estão sujeitas ao limite máximo de lotação do auditório, segundo ordem de inscrição.</p>', 'images/eventos/1_3.jpg', 1, 'https://docs.google.com/forms/d/1IeuFcBFFMDuL_4h2DDGXaQMCQQYaijF7SYTOWJPbEUc/edit', 'ficheiros/eventos/1_3.pdf', 'Inscreva-se aqui!'),
(4, 'Programa Final', NULL, NULL, 'images/eventos/1_4.jpg', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolsas`
--

CREATE TABLE `bolsas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `dataBolsa` date NOT NULL,
  `empresa` varchar(30) NOT NULL,
  `pais` varchar(20) NOT NULL,
  `distrito` varchar(30) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `requisitos` varchar(150) NOT NULL,
  `ofereceSe` varchar(200) NOT NULL,
  `idTipoBolsa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `bolsas`
--

INSERT INTO `bolsas` (`id`, `titulo`, `dataBolsa`, `empresa`, `pais`, `distrito`, `descricao`, `requisitos`, `ofereceSe`, `idTipoBolsa`) VALUES
(1, 'bolsa12334', '2014-01-07', 'bolsas', 'portugal', 'setubal', 'bolsas aodaosdasoidasdasdasdasdasdasd', '10', '500', 2),
(2, 'asd', '2014-01-01', 'asd', 'asd', 'asdadsa', 'asdasdsadasdasd', '12', '243', 1),
(4, 'asdasdasdaasdasdasda', '2014-02-12', 'asdasdasdaasdasdasda', 'asdasdasda', 'asdasdasda', 'asdas dasda asdasd asdaa sdasdas daasdas dasda asdasd asdaa sdasda sdaasdasd asdaa sdasdasd aasdas dasdaasd asdasdaasd asdasdaasdas dasda asdas dasd  a a sdas dasda asda sdasd aasda sdasdaas dasda sdaasdas dasdaasd asdas daas dasda sdaasda sdasd aasdasda sdaasdas dasda as das das daasda sdasd aasda sdas daas das d asda', '10', '500', 2),
(5, 'rff', '2014-02-21', 'ffff', 'ff', '', 'cccc', 'ffff', 'ffff', 2),
(6, 'coiso', '2014-02-20', 'coiso', 'coiso', '', 'coiso coiso coisocoiso coi socoi socois ocois ocoi soco isocois ocoi    s ocois ocoiso coiso cois oco isoc ois oco iso coiso  co iso coi soc oi soc iso coiso c oiso co isoc oiso coi s ocois ocoisoc oisoco isoc ois oco is oco is oco iso coisoc  ois cois oc o isoc oiso coiso co is ocoiso  coi soc ois oco iso coi soco isoc ois ocoi soc ois o coi so cois ocoi soco is ocoi soco iso coi soc oi so cois ocoi soco isoc oiso', 'coiso', 'coiso', 2),
(7, 'Titulo 1', '2014-02-27', 'Empresa', 'País', '', 'Descrição é bacana porque:asd fa     sd ha sgda s jd has bjhdk sahdksajdksjdk sjad kasjd ksjadkj asdksaj dka sjd ks aj das asdf asdh a sgd asjd hasjh dksa hdksajdk sjdksjad ka sjd ksja dk jas dks aj dka sjdk sa jdas  asd fasdhas asd fa     sd ha sgda s jd has bjhdk sahdksajdksjdk sjad kasjd ksjadkj asdksaj dka sjd ks aj das asdf asdh a sgd asjd hasjh dksa hdksajdk sjdksjad ka sjd ksja dk jas dks aj dka sjdk sa jdas  asd fasdhas', 'Requisitos', 'Oferece', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoriascartaconducao`
--

CREATE TABLE `categoriascartaconducao` (
  `id` int(11) NOT NULL,
  `categoria` varchar(100) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `categoriascartaconducao`
--

INSERT INTO `categoriascartaconducao` (`id`, `categoria`) VALUES
(1, 'A1'),
(2, 'A'),
(3, 'B1'),
(4, 'B'),
(5, 'C1'),
(6, 'C'),
(7, 'D1'),
(8, 'D'),
(9, 'B+E'),
(10, 'C1+E'),
(11, 'C+E'),
(12, 'D1+E'),
(13, 'D+E');

-- --------------------------------------------------------

--
-- Estrutura da tabela `concelhos`
--

CREATE TABLE `concelhos` (
  `id` int(11) NOT NULL,
  `concelho` varchar(8) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `concelhos`
--

INSERT INTO `concelhos` (`id`, `concelho`) VALUES
(1, 'Barreiro'),
(2, 'Moita'),
(3, 'Outro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `desempregadodesde`
--

CREATE TABLE `desempregadodesde` (
  `id` int(1) NOT NULL,
  `tempo` varchar(9) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `desempregadodesde`
--

INSERT INTO `desempregadodesde` (`id`, `tempo`) VALUES
(1, '-12 meses'),
(2, '+12 meses');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disponibilidadescandidato`
--

CREATE TABLE `disponibilidadescandidato` (
  `id` int(11) NOT NULL,
  `disponibilidade` varchar(27) COLLATE latin1_general_ci DEFAULT NULL,
  `nomeSimples` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `disponibilidadescandidato`
--

INSERT INTO `disponibilidadescandidato` (`id`, `disponibilidade`, `nomeSimples`) VALUES
(1, 'Trabalhar ao Sábado', 'trabalharSabado'),
(2, 'Trabalhar ao Domingo', 'trabalharDomingo'),
(3, 'Trabalho Noturno', 'trabalhoNoturno'),
(4, 'Trabalho Diurno', 'trabalhoDiurno'),
(5, 'Horas Extraordinárias', 'horasExtra'),
(6, 'Turnos', 'turnos'),
(7, 'Part-Time', 'partTime'),
(8, 'Carta de Condução', 'cartaCondDisponibilidade');

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

CREATE TABLE `documentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `documento` varchar(100) NOT NULL,
  `idPasta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `documentos`
--

INSERT INTO `documentos` (`id`, `nome`, `documento`, `idPasta`) VALUES
(22, 'Rede para a empregabilidade - 1º semestre 2013', 'Rede para a empregabilidade - 1º semestre 2013.pdf', 3),
(23, 'Cartaz Rede Empregabilidade ', 'CARTAZ REDE EMPREGABILIDADE .pdf', 3),
(24, 'Apresentação Plano de ação 2014', 'Apresentação Plano de ação 2014 reformulado.pdf', 8),
(28, 'Proposta plano ação - Acordo - IEFP - RUMO - Julho 2012', 'Proposta plano ação - Acordo - IEFP - RUMO - Julho 2012.pdf', 4),
(30, 'Regulamento da Rede', 'Regulamento_rede.pdf', 5),
(31, 'Plano de atividades', 'Plano de atividades 2013 aprovado.xlsx', 7),
(32, 'Plano de atividades', 'Plano de atividades  2014 - proposta 20 jan 2014.xlsx', 8),
(33, 'Manual Cidadania', 'MANUAL_cidadania.pdf', 10),
(34, 'Manual Percursos', 'MANUAL_percursos.pdf', 10),
(35, 'Manual Redes', 'MANUAL_redes.pdf', 10),
(36, 'Manual TEA', 'MANUAL_TEA.pdf', 10),
(37, 'Manual Tutoria', 'MANUAL_tutoria.pdf', 10),
(38, 'Dossier Formativo Marketing Pessoal', '02-Dossier_Formativo_Marketing_Pessoal.pdf', 11),
(39, 'Toolkit Gestão de RH', '03-Toolkit_Gestao_de_RH.pdf', 11),
(40, 'Estudo Custo Benefício', '05-Estudo_Custo_Beneficio.pdf', 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `eixosdeatuacao`
--

CREATE TABLE `eixosdeatuacao` (
  `Texto` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `eixosdeatuacao`
--

INSERT INTO `eixosdeatuacao` (`Texto`) VALUES
('<p style=\"text-align: justify;\">A Rede para a Empregabilidade tem a sua g&ecirc;nese em 2008, no &acirc;mbito da Iniciativa Bairros Cr&iacute;ticos, que decorreu na freguesia do Vale da Amoreira at&eacute; 2012, procurando superar os obst&aacute;culos ao n&iacute;vel da empregabilidade existentes nesta freguesia ligados &agrave; Forma&ccedil;&atilde;o Profissional, ao Sistema Educativo e de Ensino e ao mercado de trabalho e emprego.</p>\r\n<p style=\"text-align: justify;\">A partir de 2010, a rede alarga progressivamente os seus territ&oacute;rios de a&ccedil;&atilde;o &agrave;s restantes freguesias da moita e tamb&eacute;m ao concelho do Barreiro.</p>\r\n<p style=\"text-align: justify;\">O modelo de governa&ccedil;&atilde;o da rede assenta numa gest&atilde;o coletivamente partilhada e inclusiva. Atrav&eacute;s de din&acirc;micas participativas &eacute; poss&iacute;vel garantir a complementaridade entre parceiros/as e evitar a sobreposi&ccedil;&atilde;o de actividades. Esta l&oacute;gica de economia de escala tem feitos multiplicadores claros, proporcionando um aumento do n&uacute;mero de pessoas envolvidas e da qualidade dos servi&ccedil;os prestados.</p>\r\n<p style=\"text-align: justify;\">O funcionamento da rede tem por base uma estrutura t&eacute;cnica/secretariado suportado ao abrigo de um acordo de colabora&ccedil;&atilde;o entre o IEFP e a Rumo - Cooperativa de Solidariedade Social.</p>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas`
--

CREATE TABLE `empresas` (
  `id` int(5) NOT NULL,
  `nome` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `responsavel` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `cae` int(5) DEFAULT NULL,
  `morada` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `idConcelho` int(1) DEFAULT NULL,
  `idFreguesia` int(2) DEFAULT NULL,
  `codPostal` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `telemovel` int(9) DEFAULT NULL,
  `telefone` int(9) DEFAULT NULL,
  `email` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `site` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `nrTrabalhadores` int(9) DEFAULT NULL,
  `naturezaJuridica` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `administracao` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `setorAtividade` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `nipc` int(9) NOT NULL,
  `idMeio` int(11) DEFAULT NULL,
  `estado` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `empresas`
--

INSERT INTO `empresas` (`id`, `nome`, `responsavel`, `cae`, `morada`, `idConcelho`, `idFreguesia`, `codPostal`, `telemovel`, `telefone`, `email`, `site`, `facebook`, `nrTrabalhadores`, `naturezaJuridica`, `administracao`, `setorAtividade`, `nipc`, `idMeio`, `estado`) VALUES
(1, 'Empresa Exemplo', 'Responsavel Empresa', 51213, 'Avenida Exemplo', 1, 1, '9999-999', 919999999, 212222222, 'exemplo@empresa.com', 'site-empresa.com', 'facebook.com/empresa', 256, 'Sociedade Anónima', 'Admin Exemplo', 'Construção Civil', 123456789, 1, 1),
(2, 'Nenhuma', 'responsavel', 52417, 'Av Empresa', 2, 5, '2988-999', 917777777, 824376170, 'empresa@gmail.com', 'www.site.', 'facebook.com', 2147483647, 'SA', 'Administração', 'Construção Civil', 542147587, 1, 1),
(6, 'Empresa', '', -1, 'Av Empresa', -1, -1, '2988-999', 917777777, -1, 'empresa@gmail.com', '', '', -1, 'SA', '', '', 111444477, 3, 1),
(8, 'gssgdgdsgds', '', -1, '', -1, -1, '', 124121241, -1, '', '', '', -1, 'ASSFAFAS', '', '', 323225235, NULL, 1),
(9, 'Exemplo', '', -1, '', -1, -1, '', 212121212, -1, '', '', '', -1, 'Anonimo', '', '', 123456788, NULL, 1),
(10, 'RUMO, crl', 'Augusto Sousa ', -1, 'Benfica Lisboa', 1, 2, '1500', 917657284, 917657284, '', '', '', -1, 'Cooperativa', '', 'Setor Social', 124578457, 1, 1),
(11, 'Continente', 'SONAE', 47111, '', 3, 11, '', 911234567, -1, '', '', '', -1, 'Sociedade Anónima', '', 'Comércio', 501591109, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas_servicos`
--

CREATE TABLE `empresas_servicos` (
  `idEmpresa` int(11) NOT NULL,
  `idServico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `encaminhamento`
--

CREATE TABLE `encaminhamento` (
  `id` int(11) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `texto` longtext COLLATE latin1_general_ci NOT NULL,
  `idTecnico` int(11) NOT NULL,
  `idUtente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `encaminhamento`
--

INSERT INTO `encaminhamento` (`id`, `data`, `texto`, `idTecnico`, `idUtente`) VALUES
(1, '2014-10-19 22:00:00', 'ui uiu iu ', 8, 7),
(2, '2014-10-24 22:00:00', 'bla ui', 2, 7),
(3, '2014-10-27 00:00:00', 'foi enviada para oferta no restaurante o carlitos', 2, 7),
(4, '2014-10-28 00:00:00', 'TESTE 2', 11, 10),
(5, '2014-10-28 00:00:00', 'teste ', 2, 10),
(6, '2014-10-28 00:00:00', 'histórico', 2, 10),
(7, '2014-10-31 00:00:00', 'bla bla bla blue', 8, 9),
(8, '2014-10-31 00:00:00', 'hgfh gddg', 8, 9),
(9, '2014-11-03 00:00:00', 'bla bla bla ble', 8, 17),
(10, '2014-11-03 00:00:00', 'çkasdfnf çkasdn fçsdanf kçasdjnçkasdfnf çkasdn fçsdanf kçasdjnçkasdfnf çkasdn fçsdanf kçasdjnçkasdfnf çkasdn fçsdanf kçasdjnçkasdfnf çkasdn fçsdanf kçasdjnçkasdfnf çkasdn fçsdanf kçasdjnçkasdfnf çkasdn fçsdanf kçasdjnçkasdfnf çkasdn fçsdanf kçasdjnçkasdfnf çkasdn fçsdanf kçasdjnçkasdfnf çkasdn fçsdanf kçasdjnçkasdfnf çkasdn fçsdanf kçasdjnçkasdfnf çkasdn fçsdanf kçasdjnçkasdfnf çkasdn fçsdanf kçasdjnçkasdfnf çkasdn fçsdanf kçasdjnçkasdfnf çkasdn fçsdanf kçasdjnçkasdfnf çkasdn fçsdanf kçasdjnçkas', 8, 17),
(11, '2014-11-04 00:00:00', 'gfdgsdf', 8, 6),
(12, '2014-11-07 00:00:00', 'jhgj fhg', 8, 23),
(13, '2014-11-07 00:00:00', 'jhgj fhg', 8, 23),
(14, '2014-11-07 00:00:00', 'aaaaa', 1, 23),
(15, '2014-11-07 00:00:00', 'aaaaa', 1, 23),
(16, '2014-11-07 00:00:00', 'inscrição CE', 2, 24),
(17, '2014-11-07 00:00:00', 'jfghjg', 8, 22),
(20, '2014-11-12 00:00:00', 'Introduzido pelo Protocolo do RSI da Associação NÓS a 12/11/2014', 18, 29),
(21, '2014-12-16 00:00:00', 'Inserido pela Associação NÓS-Protocolo RSI', 18, 31),
(22, '2014-12-16 00:00:00', 'blabla', 11, 12),
(23, '2014-12-16 00:00:00', 'bla bla ', 19, 18),
(24, '2014-12-16 00:00:00', 'bom trabalho!', 18, 18),
(25, '2014-12-16 00:00:00', 'bla bla ', 19, 18),
(26, '2014-05-21 22:00:00', '2014-05-22 - Experiência soldador; ajudante de pedreiro e serralheiro. Curso  de soldadura C.F. Seixal equivalente ao 9.º ano (soldador).\r\n2014-06-02 - Apoio na procura activa de emprego. Não foi aceite no curso de soldadura. ', 22, 72),
(29, '2014-05-25 22:00:00', '2014-05-26 - Início da elaboração do C.V. 2014-06-09 - Conclusão C.V.', 22, 73),
(30, '2014-05-20 22:00:00', '2014-05-21 - Exp profissional: Auxiliar de idosos CRIBB (2 anos); cozinheira Alto Seixal (15 anos); limpezas em escola, junta e modelo (2 anos) e cuidou de crianças, empregada interna (4 anos). ', 22, 73),
(31, '2014-06-02 22:00:00', '2014-06-03 - Experiência profissional: lar  idosos particular em Évora (7 meses); Centro de saúde Faro, ajudante de enfermagem; Feira Nova Telheiras, limpeza; Estufas no Algarve.', 22, 77),
(32, '2014-06-15 22:00:00', '2014-06-16 - Limpezas (último ano de 2013); Feira Nova no Lavradio limpezas (11 anos); Carcavelos limpezas (4 anos) e Pingo Doce.', 22, 110),
(33, '2014-06-10 22:00:00', '2014-06-11 - Auxiliar de Educação em várias Escolas. Interesses profissionais: Trabalho com crianças e limpezas.', 22, 111),
(34, '2014-06-16 22:00:00', '2014-06-17 - Trabalhou como cabeleireira; em restauração; ajudante de cozinha e empregada de andares.\r\nInteresses profissionais: Infantário e cozinha.', 22, 112),
(36, '2014-06-16 22:00:00', '2014-06-17 - Último trabalho, pintura de automóveis. Fez voluntariado numa Igreja como motorista. Interesse profissional: Ajudante de Armazém.', 22, 113),
(37, '2014-07-22 22:00:00', 'Integrou Raríssimas como Assistente Social. ', 22, 114),
(38, '2014-12-03 00:00:00', '2014-12-03 - Diagnóstico: Procura do 1.º emprego. Frequência em estágio na área da mecânica, na Auto D. Sebastião \"Reparações de Automóveis, Lda.\". Está a tirar a carta de condução. Frequenta o Agrupamento Escolas Alfredo da Silva no Barreiro. Percebemos alguma dificuldade na construção das frases.\r\n2014-12-14 - Apoio na construção do curriculum vitae. Contacto com as escolas que frequentou para saber quais os nomes dos curso que tirou, uma vez que, o utente não se lembra.  Na sequência destes c', 22, 463),
(39, '2014-12-30 00:00:00', '2014-12-30 -  Experiência profissional, com mais de 24 anos, em carpintaria de cofragem.\r\nActualização do curriculum vitae. Pesquisa e resposta a ofertas de trabalho, a nível nacional e internacional.\r\nMarcação de novo atendimento para continuação de pesquisa e resposta a ofertas de trabalho na categoria de carpinteiro de cofragem.', 22, 813),
(40, '2014-12-22 00:00:00', '2014-12-22 - Apoio na construção do curriculum vitae.', 22, 814),
(41, '2014-12-09 00:00:00', '2014-12-09 - Diagnóstico: Procura de emprego. Marcação de atendimento para elaboração do C.V. ', 22, 470),
(42, '2014-12-09 00:00:00', '2014-12-09 - Diagnóstico: Procura do 1.º emprego. Preferência em trabalhar com crianças e/ou animais. ', 22, 469),
(43, '2014-12-02 00:00:00', '2014-12-02 - Diagnóstico: Procura de emprego e empreendedorismo. \r\nApoio na construção de cartões para venda de bolos. \r\nSugestão de novas ideias para a comercialização dos bolos e disponibilização para ajuda neste campo. \r\nEntrega de listagem de empresas de trabalho temporário.\r\nInscrição/registo no site do IEFP Netemprego.\r\nApoio na construção do C.V. \r\n\r\n2014-12-15 - E-mail para Santa Casa da Misericórdia de Alhos Vedros com divulgação do cartão para venda de bolos.\r\n\r\n2014-12-18 - E-mail par', 22, 468),
(44, '2015-01-06 00:00:00', '2015-01-06 - Apoio na construção do C.V.\r\n2015-01-08 - Conclusão da elaboração do C.V., pesquisa e resposta a ofertas de trabalho, registo no IEFP, marcação de entrevista para amanhã, no restaurante \"O Brazada\"', 22, 815),
(45, '2015-01-06 00:00:00', '2015-01-06 - Apoio na construção do C.V.\r\n2015-01-08 - Conclusão da elaboração do C.V., pesquisa e resposta a ofertas de trabalho, registo no IEFP, marcação de entrevista para amanhã, no restaurante \"O Brazada\"', 22, 815),
(46, '2015-01-12 00:00:00', 'Inserido pelo Protocolo do RSI da Associação NÓS em Dezembro de 2014', 18, 82),
(47, '2014-10-15 22:00:00', '1º Atendimento', 20, 105),
(48, '2014-10-27 00:00:00', 'Apoio na elaboração de CV’s e cartas de apresentação', 20, 105),
(49, '2014-11-12 00:00:00', 'Consultas e apoio á candidatura de ofertas de emprego', 20, 105),
(50, '2014-11-12 00:00:00', 'Encaminhamento para Oferta de emprego', 20, 105),
(51, '2015-01-15 00:00:00', 'Colocação em Emprego - Escola Básica da Quinta da Lomba - Refeitório', 20, 105),
(52, '2015-04-23 22:00:00', 'Encaminhado para Formação\r\n- CECOA (Lisboa): Curso 6962 Língua Inglesa - Atendimento e Acolhimento (Gratuito)\r\nInscrição em www.cecoa.pt', 24, 840),
(53, '2015-04-22 22:00:00', 'Criação de CV / Experiência Profissional: Operadora de Peixe Verde (Mar Alto, 2 Anos); Ajudante de Cozinha (RUMO, 1 Ano); Repositora em Loja (Mega China, 1 Ano); Cantoneira de Higiene e Limpeza (Juntas de Freguesia, 3 Anos); Empregada de Balcão (Café Monreal, 1 Ano).', 24, 821),
(55, '2015-06-01 22:00:00', 'INTEGRADO NO MERCADO DE TRABALHO', 24, 1013),
(56, '2015-06-16 22:00:00', '- Procura activa de emprego/TPE (não foi encontrada nenhuma oferta de emprego adequada ao perfil da candidata)\r\n- Encaminhada para EFA para acesso ao 6º ano de escolaridade (Centro de Formação de Setúbal)', 24, 1100),
(57, '2015-06-24 22:00:00', 'gdfgfdg', 2, 988),
(59, '2015-06-24 22:00:00', 'hgfhgfd', 2, 988),
(60, '2015-06-24 22:00:00', 'gfdgfd', 2, 988),
(61, '2015-06-29 22:00:00', 'Encaminhada para Centro de Emprego do Barreiro para Candidatura a Oferta de Emprego Nº 588574774 (Trabalhador de Limpeza em Escritórios, Hotéis e Outros Estabelecimentos M/F)', 24, 1106),
(62, '2015-06-25 22:00:00', 'Atendimento de procura activa de emprego/TPE (não foram encontradas ofertas adequadas ao perfil do candidato)', 24, 840),
(63, '2015-06-23 22:00:00', 'ENCAMINHADO PARA OFERTA DO IEFP (LISBOA) Nº 588572787 (TÉCNICO WEB)', 24, 1097),
(64, '2015-06-21 22:00:00', 'Atendimento de procura activa de emprego/TPE (enviado CV para oferta de emprego adequada ao perfil de competências - electromecânico para empilhadores eléctricos e plataformas - oferta não solicita requisitos habilitacionais)', 24, 840),
(65, '2015-06-17 22:00:00', 'ENCAMINHADO PARA OFERTA DO IEFP (LISBOA) Nº 588549567 (ESPECIALISTA DE REDES INFORMÁTICAS)', 24, 1097),
(66, '2015-06-16 22:00:00', '- ENCAMINHADA PARA SAS DA SEGURANÇA SOCIAL DO BARREIRO (FORNECIDOS TODOS OS CONTACTOS)\r\n- INFORMADA DO FUNCIONAMENTO DA LINHA NACIONAL DE EMERGÊNCIA SOCIAL (144)\r\n- ACONSELHADA A MARCAR CONSULTA NO MÉDICO DE FAMÍLIA (PEDIR ENCAMINHAMENTO PARA PSICOLOGIA)\r\n- PROCURA ACTIVA DE EMPREGO/TPE\r\n- ENCAMINHADA PARA FORMAÇÃO DO IEFP PARA AUMENTO DE HABILITAÇÕES (OPERADOR/A DE JARDINAGEM)', 24, 1107),
(67, '2015-06-15 22:00:00', 'CRIAÇÃO DE CV', 24, 1099),
(68, '2015-06-14 22:00:00', 'ENCAMINHADO PARA CANDIDATAR-SE A OFERTAS DE EMPREGO NA SUA ÁREA PROFISSIONAL DA EMPRESA RUMOS', 24, 1097),
(69, '2015-06-04 22:00:00', 'ENCAMINHADA PARA CECOA (LISBOA) - FORMAÇÃO GRATUITA DE LÍNGUA ALEMÃ A COMEÇAR EM 06/07/2015', 24, 848),
(70, '2015-06-02 22:00:00', 'ENCAMINHADO PARA OFERTA DE EMPREGO DO IEFP Nº 588566666 (MOTORISTA DE VEÍCULOS PESADOS DE MERCADORIAS)', 24, 1096),
(71, '2015-06-01 22:00:00', 'Encaminhada para formação modular (Vida Ativa) a ser desenvolvida pelo Centro de Formação do Seixal nos territórios Barreiro-Moita (Inglês)', 24, 354),
(72, '2015-06-01 22:00:00', 'ENCAMINHADO PARA FORMAÇÃO MODULAR (VIDA ATIVA) A SER DESENVOLVIDA PELO CENTRO DE FORMAÇÃO DO SEIXAL NOS TERRITÓRIOS BARREIRO-MOITA (LOGÍSTICA, EMPREENDEDORISMO OU ESPANHOL)', 24, 28),
(73, '2015-05-27 22:00:00', 'ENCAMINHADA PARA OFERTA DE EMPREGO DO IEFP Nº 588564153 (TÉCNICO DE SECRETARIADO)', 24, 849),
(74, '2015-05-25 22:00:00', 'CRIAÇÃO DE CV', 24, 1002),
(75, '2015-05-24 22:00:00', '- ENCAMINHADO PARA CET\r\n- INFORMADO SOBRE MEDIDA ESTÁGIO EMPREGO\r\n- INFORMADO SOBRE MEDIDA DE APOIO AO EMPREENDEDORISMO E CRIAÇÃO DO PRÓPRIO EMPREGO\r\n- INFORMADO SOBRE PROGRAMA NACIONAL DE MICROCRÉDITO\r\n- ENCAMINHADO PARA CLDS+ BARREIRO', 24, 1095),
(76, '2015-05-20 22:00:00', 'ENCAMINHADO PARA CQEP (ESCOLA SECUNDÁRIA DA BAIXA DA BANHEIRA) PARA SOLICITAR RVCC\r\n\r\n(PLANO DE FORMAÇÃO A LONGO PRAZO: APÓS CONCLUSÃO DO PROCESSO RVCC PODERÁ ACEDER A UMA DAS SEGUINTES FORMAÇÕES DO SEU INTERESSE: SOLDADOR, CANALIZADOR, TÉCNICO DE INFORMÁTICA, ELECTRÓNICA OU ELECTRICISTA)', 24, 840),
(77, '2015-05-18 22:00:00', 'ENCAMINHADO PARA OFERTA DE EMPREGO DO IEFP (MOITA) Nº 588559192', 24, 1013),
(78, '2015-05-10 22:00:00', 'ENCAMINHADO PARA PEI/PIR \r\n\r\n', 24, 1002),
(79, '2015-05-06 22:00:00', '- Procura activa de emprego/TPE\r\n- Enviada candidatura espontânea para McDonalds (Barreiro)', 24, 865),
(80, '2015-05-06 22:00:00', '- ENCAMINHADA PARA CQEP (RVCC)\r\n- ENCAMINHADA PARA OFERTA DE EMPREGO (CASA AMARELA, JARDIM DE INFÂNCIA, LISBOA)', 24, 853),
(81, '2015-05-03 22:00:00', 'ENCAMINHADA PARA OFERTA DE EMPREGO DO CENTRO SOCIAL DE STO. ANTÓNIO (EMPREGADA DE ESCRITÓRIO)', 24, 849),
(82, '2015-05-03 22:00:00', 'ENCAMINHADA PARA OFERTA DE EMPREGO DO CENTRO SOCIAL DE SANTO ANTÓNIO (AJUDANTE FAMILIAR)', 24, 117),
(83, '2015-04-23 22:00:00', 'ENCAMINHADO PARA CURSO GRATUITO CECOA (LISBOA) - LÍNGUA INGLESA: ATENDIMENTO E ACOLHIMENTO', 24, 840),
(84, '2015-04-26 22:00:00', 'ENCAMINHADO PARA OFERTA DE EMPREGO DO IEFP Nº 588549632', 24, 850),
(85, '2015-04-26 22:00:00', 'ENCAMINHADO PARA PEI/PIR', 24, 841),
(86, '2015-04-27 22:00:00', 'ENCAMINHADA PARA CQEP', 24, 842),
(87, '2015-04-28 22:00:00', 'CV ENCAMINHADO PARA CINEMA CITY SETÚBAL (GERENTE PRINCIPAL)', 24, 846),
(88, '2015-04-28 22:00:00', 'ENCAMINHADA PARA CANDIDATAR-SE A OFERTA DE EMPREGO DA CASA AMARELA, JARDIM DE INFÂNCIA, LISBOA', 24, 842),
(89, '2015-04-28 22:00:00', 'ENCAMINHADO PARA INSCRIÇÃO EM FORMAÇÃO UACS (WWW.UACS.PT)', 24, 847),
(90, '2015-04-29 22:00:00', 'ENCAMINHADA PARA OFERTA DE EMPREGO DO IEFP Nº 588550822', 24, 865),
(91, '2015-04-29 22:00:00', '- PROCURA ACTIVA DE EMPREGO (NÃO FOI ENCONTRADA NENHUMA OFERTA ADEQUADA AO PERFIL DA CANDIDATA)\r\n- ENCAMINHADA PARA CQEP', 24, 849),
(92, '2015-07-02 22:00:00', 'CRIAÇÃO DE CV', 24, 1110),
(93, '2015-07-05 22:00:00', 'CANDIDATURA A OFERTA DE EMPREGO DA KELLY SERVICES - OPERADOR DE PONTES ROLANTES (OFERTA QUE VAI AO ENCONTRO DO PERFIL DO CANDIDATO)', 24, 840),
(94, '2015-07-07 22:00:00', '-ACOMPANHAMENTO DE SITUAÇÃO DE PROCURA DE EMPREGO (FOLLOW-UP) \r\n-RESPONDEU EM 10-07-2015: TEM SEGUIDO A MINHA INDICAÇÃO DE PROCURAR EMPREGO ACEDENDO REGULARMENTE AO SITE DO IEFP E GUARDANDO O NÚMERO DA OFERTA QUE CORRESPONDE AO SEU PERFIL, INDO POSTERIORMENTE COM A MESMA AO CENTRO DE EMPREGO PARA SE INSCREVER COMO CANDIDATO (JÁ FOI A TRÊS ENTREVISTAS SEGUINDO ESTA METODOLOGIA E AGUARDA RESPOSTA)', 24, 1097),
(95, '2015-07-09 22:00:00', '- ENCAMINHADO PARA INSCRIÇÃO EM FORMAÇÕES DO CITEFORMA\r\n- CONSULTA DAS OFERTAS DE EMPREGO DO DIA, NÃO HAVENDO NENHUMA QUE VÁ AO ENCONTRO DO PERFIL DO CANDIDATO\r\n- FOI EXPLICADO COMO DEVE PROCEDER À PROCURA DE EMPREGO NO SITE DO IEFP E COMO DEVE CANDIDATAR-SE ÀS OFERTAS JUNTO DO CENTRO DE EMPREGO\r\n- FOI MARCADO NOVO ATENDIMENTO PARA CANDIDATURA À HABITAÇÃO SOCIAL NO PORTAL DO IHRU', 24, 1111),
(96, '2015-07-09 22:00:00', 'ACTUALIZAÇÃO/CRIAÇÃO DE NOVO CV', 24, 840),
(97, '2015-07-12 22:00:00', '- CONSULTA DAS OFERTAS DE EMPREGO DO IEFP, DA KELLY SERVICES, DA ADECCO (CANDIDATURA A OFERTA DE TÉCNICO DE ELEVADORES) E DO SITE NET-EMPREGOS.COM', 24, 840),
(98, '2015-07-12 22:00:00', 'ENCAMINHADO PARA CANDIDATURA A OFERTA DE EMPREGO NA SUA ÁREA DE ESPECIALIZAÇÃO PROFISSIONAL: TÉCNICO PARA LABORATÓRIO F. QUÍMICA (BARREIRO)', 24, 847),
(99, '2015-07-14 22:00:00', '- INFORMOU QUE CONSEGUIU, EM CONJUNTO COM A SUA ESPOSA, EFECTUAR CANDIDATURA À HABITAÇÃO SOCIAL DO IHRU (NOVA PLATAFORMA ELECTRÓNICA), ATRAVÉS DO LINK QUE ENVIEI PARA O SEU E-MAIL.', 24, 1111),
(100, '2015-07-14 22:00:00', 'ENCAMINHADO PARA OFERTA DE EMPREGO DO IEFP Nº 588581087 (DISTRIBUIDOR DE MERCADORIAS E SIMILARES) ', 24, 1113),
(101, '2015-07-15 22:00:00', 'ENCAMINHADA PARA APRESENTAR CANDIDATURA ESPONTÂNEA NA SECA DO BACALHAU DO GAIO-ROSÁRIO (MOITA), QUE ESTÁ A RECRUTAR COLABORADORES. E TAMBÉM PARA APRESENTAR CANDIDATURA ESPONTÂNEA NA SECA DO BACALHAU (MAR ALTO) DE PALHAIS PARA O CASO DE VIR A RECRUTAR.', 24, 1099),
(102, '2015-07-20 22:00:00', 'CANDIDATURA A OFERTA DE EMPREGO DA KELLY SERVICES - TÉCNICO DE INSTALAÇÃO DE PAINEIS DIGITAIS PARA EVENTOS DESPORTIVOS', 24, 840),
(103, '2015-07-07 22:00:00', 'Encaminhada e integrada em part-time na área da limpeza (casas particulares), conforme seu pedido mais recente (a presente oferta não está ligada ao trabalho efectuado com o Centro de Emprego do Barreiro)', 24, 354),
(104, '2015-07-29 22:00:00', 'FOI EXPLICITADO O FUNCIONAMENTO DA MEDIDA ESTAGIO EMPREGO DO IEFP', 24, 1118),
(105, '2015-07-29 22:00:00', 'ENCAMINHADO PARA OFERTA DE EMPREGO DO IEFP Nº 588585406 (MOTORISTA DE PESADOS DE MERCADORIAS)', 24, 1096),
(106, '2015-07-30 22:00:00', 'Encaminhado para duas ofertas de emprego da Adecco: Empregado de Armazém (Carnaxide) e Ajudante de Construção Civil (Lisboa)', 24, 840),
(107, '2015-08-06 22:00:00', 'Encaminhado para oferta de emprego da Kelly Services: Operador de Armazém (Cacém)', 24, 840),
(108, '2015-08-16 22:00:00', 'Contacto Telefónico Para Apresentação de Oferta de Emprego - A utente informou que encontrou emprego pelos próprios meios recentemente', 24, 1119),
(109, '2015-08-18 22:00:00', '- Encaminhado para Centro de Emprego do Barreiro para efectuar inscrição para emprego\r\n- Foi explicitado como deve fazer a procura de emprego pelo IEFP\r\n- Foi facultado documento com sites de procura de emprego \r\n- Foram enviados para o e-mail do utente, a pedido do mesmo, dois modelos de CV', 24, 1120),
(111, '2015-08-25 22:00:00', 'ENCAMINHADA PARA OFERTA DE EMPREGO DO CENTRO DE EMPREGO DO BARREIRO Nº 588592932 (OUTROS PREPARADORES DE CARNE, PEIXE E SIMILARES) MOITA', 24, 1116),
(112, '2015-08-30 22:00:00', 'COLOCADA EM OFERTA DE EMPREGO Nº 588592932 (OUTROS PREPARADORES DE CARNE, PEIXE E SIMILARES) RIBERALVES, MOITA', 24, 1116),
(113, '2015-08-03 22:00:00', 'Encaminhada para EFA (acesso ao 12º ano de escolaridade)', 24, 1119),
(114, '2015-08-04 22:00:00', 'ENCAMINHADO PARA CANDIDATAR-SE A OFERTA DE EMPREGO DO IEFP (LISBOA) TÉCNICO DE APOIO AOS UTILIZADORES DAS TIC (OFERTA DE EMPREGO Nº 588586689)', 24, 1097),
(115, '2015-08-23 22:00:00', 'ENCAMINHADO PARA CANDIDATAR-SE A OFERTA DE EMPREGO Nº 588592417 (PROGRAMADOR DE SOFTWARE) DO IEFP (SETÚBAL)', 24, 1097),
(116, '2015-08-06 22:00:00', 'Reestruturação e actualização do CV', 24, 1119),
(117, '2015-08-24 22:00:00', 'ENCAMINHADA PARA OFERTA DE EMPREGO DO CENTRO DE EMPREGO DO BARREIRO Nº 588592932 (OUTROS PREPARADORES DE CARNE, PEIXE E SIMILARES) MOITA ', 24, 1117),
(118, '2015-08-27 22:00:00', 'UTENTE FOI A ENTREVISTA À RIBERALVES (OFERTA DE EMPREGO Nº 588592932) NA MOITA, NÃO TENDO FICADO INTEGRADA EM EMPREGO (em 02-09-2015 a empresa telefonou à utente para informar que não tinha sido seleccionada, mas que o seu CV poderia vir a ser considerado em futuros processos de recrutamento)', 24, 1117),
(119, '2015-08-26 22:00:00', 'ENCAMINHADO PARA INSCREVER-SE EM PROGRAMA \"THE JOB OF MY LIFE\" (PROGRAMA DO GOVERNO ALEMÃO PARA JOVENS EUROPEUS COM IDADES COMPREENDIDAS ENTRE OS 18 E OS 27 ANOS E COM ESCOLARIDADE ENTRE O 12º ANO E A LICENCIATURA)', 24, 812),
(120, '2014-12-10 00:00:00', 'Encaminhada para oferta de emprego do Centro de Emprego Nº 588505513 (Ajudante de Cozinha)', 24, 119),
(121, '2015-05-05 22:00:00', 'Encaminhada para responder a oferta de emprego na área da estética/cosmetologia (oferta encontrada no portal netempregos)', 24, 1121),
(122, '2015-08-11 22:00:00', 'Criação de página do Facebook para divulgação dos serviços de estética/cosmetologia/massagem ao domicílio (https://www.facebook.com/MargaridaBravoEsteves)', 24, 1121),
(123, '2015-09-10 22:00:00', 'Atendimento na área da empregabilidade - Actualização de contacto telefónico: 920521550 - Experiência Profissional: Trabalhadora da Limpeza (15 Anos) / Ajudante Familiar (1 Ano) / Ajudante de Cozinha (6 Meses)', 24, 133),
(128, '2015-09-15 22:00:00', 'gsdfgsdf g', 2, 988),
(129, '2015-09-15 22:00:00', 'teste', 2, 988),
(130, '2015-09-16 22:00:00', '- CRIAÇÃO DE CV\r\n- ENCAMINHAMENTO PARA CECOA: FORMAÇÕES MODULARES EM LÍNGUA ALEMÃ (ATENDIMENTO E ACOLHIMENTO) E LÍNGUA ESPANHOLA (CONVERSAÇÃO)', 24, 1123),
(131, '2015-09-27 22:00:00', 'CRIAÇÃO DE CV', 24, 1122),
(132, '2015-09-27 22:00:00', 'INFORMADA ACERCA DE CONCURSO PÚBLICO (MINISTÉRIO DA EDUCAÇÃO) NA ESCOLA SECUNDÁRIA DE STO. ANDRÉ (BARREIRO) - ASSISTENTE OPERACIONAL', 24, 1122),
(133, '2015-09-29 22:00:00', 'ENCAMINHADO PARA FORMAÇÃO DO IEFP DE TÉCNICO DE INFORMÁTICO DA ÁREA DE SISTEMAS', 24, 1124),
(134, '2015-10-01 22:00:00', 'CRIAÇÃO DE CV', 24, 1125),
(135, '2015-10-01 22:00:00', 'ENCAMINHADO PARA OFERTA DE EMPREGO DO IEFP Nº 588606260 (MOTORISTA DE PESADOS DE MERCADORIAS)', 24, 1096),
(136, '2015-10-01 22:00:00', 'ENCAMINHADA PARA OFERTA DE EMPREGO DO IEFP Nº 588605827 (AJUDANTE DE COZINHA - BARREIRO) ', 24, 1122),
(137, '2015-09-02 22:00:00', 'Encaminhada para oferta de emprego do IEFP nº 588595530 (Esteticista - Lisboa)', 24, 1121),
(138, '2015-09-01 22:00:00', 'ENCAMINHADO PARA OFERTA DE EMPREGO DO IEFP Nº 588595084 (TRABALHADOR NÃO QUALIFICADO DA CONSTRUÇÃO DE EDIFÍCIOS - SETÚBAL) ', 24, 1118),
(139, '2015-09-01 22:00:00', 'Encaminhado para oferta de emprego do IEFP nº 588594662 (Regulador e Operador de Máquinas-Ferramentas Convencionais Para Trabalhar Metais - Seixal)', 24, 840),
(140, '2015-09-15 22:00:00', 'ENCAMINHADO PARA FORMAÇÃO DE LONGA DURAÇÃO (EFA PARA ACESSO AO 9º ANO: SOLDADOR) CENTRO DE FORMAÇÃO DO SEIXAL (A INICIAR EM 12/10/2015)', 24, 144),
(141, '2015-10-04 22:00:00', 'CANDIDATURA (ENVIO DE E-MAIL À ENTIDADE) A OFERTA DE EMPREGO Nº 588575194 (SEIXAL) IEFP', 24, 1096),
(142, '2015-10-04 22:00:00', 'ENCAMINHADO PARA CENTRO DE EMPREGO DO BARREIRO PARA CANDIDATURA A OFERTA DE EMPREGO Nº 588606566 (PINTOR DE CONSTRUÇÕES) LISBOA', 24, 1123),
(143, '2015-09-30 22:00:00', 'ENCAMINHADA PARA ASSOCIAÇÃO CABOVERDEANA DO VALE DA AMOREIRA (FOI AGENDADO ATENDIMENTO COM A LUÍSA) - FORAM FORNECIDOS OS CONTACTOS DO CLAII DO VALE DA AMOREIRA - FOI EXPLICITADO QUE APÓS A CONCLUSÃO DA REGULARIZAÇÃO DA DOCUMENTAÇÃO JUNTO DO SEF (JÁ EM CURSO) DEVERÁ INSCREVER-SE NO CENTRO DE EMPREGO DO BARREIRO - FOI ACONSELHADA A PEDIR CERTIFICADO DE HABILITAÇÕES ESCOLARES (SÃO TOMÉ), ATRAVÉS DE FAMILIAR, PARA POSTERIORMENTE SOLICITAR EQUIVALÊNCIA EM PORTUGAL ', 24, 1126),
(144, '2015-10-18 22:00:00', 'INFORMA QUE FOI DESPEDIDA E PRETENDE MARCAR ATENDIMENTO PARA REVISÃO DA SUA SITUAÇÃO (É MARCADO ATENDIMENTO PARA O DIA SEGUINTE, MAS A UTENTE NÃO COMPARECE AO MESMO)', 24, 1116),
(145, '2015-10-14 22:00:00', 'RETOMA APRESENTAÇÕES QUINZENAIS/DESEMPREGADO', 24, 1013),
(146, '2015-10-21 22:00:00', 'Integrada em mercado de trabalho.', 11, 509),
(147, '2015-09-30 22:00:00', 'ENCAMINHADO PARA FORMAÇÃO DE GESTÃO DE EVENTOS (CECOA) 50H E PARA CQEP PARA SOLICITAR INTEGRAÇÃO EM RVCC (ACESSO AO 12º ANO)', 24, 833),
(148, '2015-10-28 00:00:00', 'Candidatura a ofertas de emprego (Adecco e Talenter) de operador de pontes rolantes', 24, 840),
(149, '2015-11-05 00:00:00', 'Atendimento no contexto de procura activa de emprego - Experiência profissional: Camareira (12 meses), empregada de copa (12 meses), ajudante de cozinha (3 anos), ajudante familiar (24 meses), trabalhadora da limpeza (5 anos), empregada de balcão (6 meses) - Encaminhada para oferta nº 588618095 do IEFP (Ajudante de Cozinha)', 24, 784),
(150, '2015-11-05 00:00:00', 'Encaminhado para EFA (acesso ao 4º ano de escolaridade) de Pedreiro (Centro de Formação do Seixal) IEFP', 24, 840),
(151, '2015-11-10 00:00:00', 'Revisão do CV - TPE', 24, 1127),
(152, '2015-11-23 00:00:00', 'Aconselhada a efectuar inscrição no Centro de Emprego assim  que conseguir regularizar a sua situação em Portugal no que se refere a documentação (Título de Residência) - Aconselhada a pedir Certificado de Habilitações Angolano para poder solicitar equivalência ao nível habilitacional em Portugal', 24, 1129),
(153, '2015-12-15 00:00:00', 'Criação da carta de apresentação', 24, 1132),
(154, '2015-12-15 00:00:00', 'Discussão dos actuais CVs para posterior reestruturação dos mesmos', 24, 1132),
(155, '2015-12-16 00:00:00', 'Encaminhamento para formação modular/Vida Ativa do CENJOR na área da fotografia (através do Centro de Emprego do Barreiro)', 24, 1132),
(156, '2015-12-02 00:00:00', 'Sessão individual TPE / Comportamentos a adoptar em entrevista de emprego', 24, 1131),
(157, '2015-12-16 00:00:00', 'Encaminhada para candidatar-se a oferta de emprego do IEFP nº 588631024 (Vendedora em Loja / Lisboa)', 24, 1132),
(158, '2015-12-17 00:00:00', 'Encaminhada para candidatar-se ao programa The Job of My Life ', 24, 1132),
(159, '2015-12-21 00:00:00', 'Compareceu à sessão de esclarecimento em Lisboa e entrevista do programa The Job of My Life (perspectivas de integração em Janeiro de 2016)', 24, 1132),
(160, '2015-12-21 00:00:00', 'Encaminhada para CLAII Barreiro (regularização de documentação) - Aconselhada a tratar do NISS junto da Segurança Social do Barreiro - Aconselhada a inscrever-se no Centro de Emprego do Barreiro após resolução da documentação junto do SEF - Foi marcado novo atendimento para criação de CV', 24, 1133),
(161, '2016-01-12 00:00:00', 'MARCAÇÃO DE NOVO ATENDIMENTO (18-01-2016) PARA REAVALIAÇÃO DA SITUAÇÃO / ACTUALIZAÇÃO DO CV ', 24, 1116),
(162, '2016-01-13 00:00:00', 'Informou que amanhá migrará para a Alemanha (Berlim), onde conseguiu emprego através de pessoas conhecidos que estão a residir lá', 24, 1132),
(163, '2016-01-14 00:00:00', 'Encontra-se novamente desempregada e inscrita no Centro de Emprego', 24, 1119),
(164, '2015-11-27 00:00:00', 'Iniciou a Formação de Alvenarias e Revestimentos no Centro de Formação do Seixal (acesso ao 4º ano de escolaridade)', 24, 840),
(165, '2015-11-16 00:00:00', 'Contacto Telefónico - Recebi a informação por parte do utente de que encontrou colocação em Estágio Emprego (IEFP)', 24, 1097);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE `estados` (
  `id` int(11) NOT NULL,
  `tipoEstado` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estadoscivis`
--

CREATE TABLE `estadoscivis` (
  `id` int(11) NOT NULL,
  `estadoCivil` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `estadoscivis`
--

INSERT INTO `estadoscivis` (`id`, `estadoCivil`) VALUES
(1, 'Solteiro'),
(2, 'Casado'),
(3, 'Viúvo'),
(4, 'Divorciado'),
(5, 'Comunhão');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estadosutentes`
--

CREATE TABLE `estadosutentes` (
  `id` int(1) NOT NULL,
  `estado` varchar(7) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `estadosutentes`
--

INSERT INTO `estadosutentes` (`id`, `estado`) VALUES
(1, 'ativo'),
(2, 'inativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estatisticasdestaque`
--

CREATE TABLE `estatisticasdestaque` (
  `id` int(3) NOT NULL,
  `dataCriacao` date NOT NULL,
  `atendimentos` int(9) NOT NULL,
  `pessoas` int(9) NOT NULL,
  `iniciativas` int(9) NOT NULL,
  `organizacoes` int(9) NOT NULL,
  `dataInformacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `estatisticasdestaque`
--

INSERT INTO `estatisticasdestaque` (`id`, `dataCriacao`, `atendimentos`, `pessoas`, `iniciativas`, `organizacoes`, `dataInformacao`) VALUES
(19, '2016-07-04', 18341, 4899, 1315, 41, '2015-12-31'),
(21, '2019-05-02', 22100, 20004, 12015, 4302, '2019-05-01'),
(22, '2019-05-02', 9984, 8042, 2931, 3941, '2019-04-24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `data` date NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(50) NOT NULL,
  `data_fim` date DEFAULT NULL,
  `ficheiro` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `eventos`
--

INSERT INTO `eventos` (`id`, `nome`, `data`, `descricao`, `imagem`, `data_fim`, `ficheiro`) VALUES
(1, 'V FÓRUM DE DESENVOLVIMENTO LOCAL Barreiro Moita', '2016-11-23', 'O Fórum de Desenvolvimento Local do Barreiro | Moita (FDL) é um ponto de encontro e debate entre cidadãos e atores locais, públicos e privados.</p><p>Visa, no essencial, incentivar o desenvolvimento socioeconómico destes territórios, sustentado pelas suas competências e potencialidades endógenas, numa perspetiva de alinhamento estratégico para o desenvolvimento de comunidades sustentáveis.</p><p>Nesta V edição, o Fórum é subordinado ao tema Uma Cidade Feliz - Criatividade, Inovação, Desenvolvimento e Competitividade. Neste âmbito, pretende apresentar IDEIAS E PROJETOS que VALORIZEM e promovam o desenvolvimento sustentável do território, contribuindo para o aumento do bem-estar das comunidades.</p><p>O V Fórum de Desenvolvimento Local é mais um passo na integração supraconcelhia das estratégias e projetos de desenvolvimento local. Pretende dinamizar o surgimento de novas iniciativas que fomentem o diálogo, a intercooperação, a competitividade e a empregabilidade destes concelhos, juntando à mesma mesa, empresários (as), administradores (as) públicos, entidades formadoras, autarquias, associações, que operam nesta região, entre outros, para construir e concretizar uma VISÃO PARTILHADA para o desenvolvimento socio-territorial.', 'images/eventos/1.jpg', '2016-10-24', 'ficheiros/eventos/1.pdf');

-- --------------------------------------------------------

--
-- Estrutura da tabela `freguesias`
--

CREATE TABLE `freguesias` (
  `id` int(11) NOT NULL,
  `freguesia` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idConcelho` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `freguesias`
--

INSERT INTO `freguesias` (`id`, `freguesia`, `idConcelho`) VALUES
(1, 'Alto do Seixalinho, Santo André e Verderena', 1),
(2, 'Barreiro e Lavradio', 1),
(3, 'Palhais e Coina', 1),
(4, 'Santo António da Charneca', 1),
(5, 'Alhos Vedros', 2),
(6, 'Baixa da Banheira', 2),
(7, 'Gaio-Rosário', 2),
(8, 'Moita', 2),
(9, 'Sarilhos Pequenos', 2),
(10, 'Vale da Amoreira', 2),
(11, 'Outras', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `frontoffice`
--

CREATE TABLE `frontoffice` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `frontoffice`
--

INSERT INTO `frontoffice` (`id`, `nome`) VALUES
(1, 'RSI Rumo'),
(2, 'RSI Criva'),
(3, 'RSI Nós'),
(4, 'GIP Vale da Amoreira'),
(6, 'GIP CRIBB'),
(7, 'CLDS + Barreiro'),
(9, 'Secretariado REBM'),
(10, 'RSI CATICA'),
(11, 'PIR'),
(12, 'Escolhas BXB'),
(13, 'Escolhas VA'),
(14, 'Escolhas Trilhos'),
(15, 'Vitacaminho'),
(17, 'ACVA'),
(18, 'GIP Santo António'),
(22, 'CLDS Moita');

-- --------------------------------------------------------

--
-- Estrutura da tabela `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `genero` varchar(9) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `generos`
--

INSERT INTO `generos` (`id`, `genero`) VALUES
(1, 'Feminino'),
(2, 'Masculino');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gruposetarios`
--

CREATE TABLE `gruposetarios` (
  `id` int(11) NOT NULL,
  `GrupoEtario` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `gruposetarios`
--

INSERT INTO `gruposetarios` (`id`, `GrupoEtario`) VALUES
(1, '<15'),
(2, '15-19'),
(3, '20-24'),
(4, '25-34'),
(5, '35-44'),
(6, '45-54'),
(7, '55-64'),
(8, '>64');

-- --------------------------------------------------------

--
-- Estrutura da tabela `habilitacoes`
--

CREATE TABLE `habilitacoes` (
  `id` int(11) NOT NULL,
  `habilitacao` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `habilitacoes`
--

INSERT INTO `habilitacoes` (`id`, `habilitacao`) VALUES
(1, '<4º ano'),
(2, '1º ciclo'),
(3, '2º ciclo'),
(4, '3º ciclo'),
(5, 'Ensino Secundário'),
(6, 'Ensino Superior');

-- --------------------------------------------------------

--
-- Estrutura da tabela `inscricoesforum`
--

CREATE TABLE `inscricoesforum` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `instituicao` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `idOficina` int(11) NOT NULL,
  `telefone` int(11) NOT NULL,
  `hora` int(1) DEFAULT NULL,
  `almoco` int(1) DEFAULT NULL,
  `horaExtenso` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `oficina` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `almocoExtenso` varchar(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `inscricoesforum`
--

INSERT INTO `inscricoesforum` (`id`, `nome`, `email`, `instituicao`, `idOficina`, `telefone`, `hora`, `almoco`, `horaExtenso`, `oficina`, `almocoExtenso`) VALUES
(9, 'Ana Adega ', 'anavalentimadega@gmail.com', 'RUMO', 1, 917657284, NULL, NULL, NULL, 'Atividade portuária e a plataforma multimodal', NULL),
(10, 'Joana Pinheiro', 'joana.pinheiro@rumo.org.pt', 'Rumo', 2, 963708600, NULL, NULL, NULL, 'Aproveitamento do rio / Turismo', NULL),
(11, 'Frederico Rosa', 'frederico.costa.rosa@gmail.com', 'Plataforma 2830', 1, 929199382, NULL, NULL, NULL, 'Atividade portuária e a plataforma multimodal', NULL),
(12, 'Mário Carmo', 'msimontemplar@gmail.com', 'Freelancer', 2, 2147483647, NULL, NULL, NULL, 'Aproveitamento do rio / Turismo', NULL),
(13, 'Cláudia Prates', 'claudia.prates@epmontijo.edu.pt', 'AFPDM/Escola Profissional Montijo', 3, 966384670, NULL, NULL, NULL, 'Pequenos negócios ligados ao rio', NULL),
(14, 'Nuno Libório', 'nliborio@mail.cm-moita.pt', 'Câmara Municipal da Moita', 1, 913386110, NULL, NULL, NULL, 'Atividade portuária e a plataforma multimodal', NULL),
(15, 'José Manuel Santos', 'jss.consultor@gmail.com', 'AFPDM/Escola Profissional Montijo', 2, 910488022, NULL, NULL, NULL, 'Aproveitamento do rio / Turismo', NULL),
(22, 'Maria Helena Ramires Soares', 'helena.soares@rumo.org.pt', 'Rumo', 2, 916193332, 2, 1, 'Tarde', 'Aproveitamento do rio / Turismo', 'Sim'),
(23, 'Hugo Feliciano', 'hfeliciano.cercimb@gmail.com', 'CERCIMB', -1, 938117837, 1, 2, 'manha', NULL, 'Não'),
(24, 'Eloisa Cruz', 'eloisa.cruz@rumo.org.pt', 'Rumo', 2, 962383742, 2, 1, 'Tarde', 'Aproveitamento do rio / Turismo', 'Sim'),
(25, 'António Löbbert', 'antonio.loebbert@bowline.pt', 'Bowline Actividades Náuticas', 2, 964006518, 2, 1, 'Tarde', 'Aproveitamento do rio / Turismo', 'Sim'),
(27, 'Rita Sa', 'rita.sa@rumo.org.pt', 'Rumo', 2, 963661601, 2, 1, 'Tarde', 'Aproveitamento do rio / Turismo', 'Sim'),
(28, 'Susana Santos', 'moisantos@gmail.com', 'Rumo', 2, 934187678, 2, 1, 'Tarde', 'Aproveitamento do rio / Turismo', 'Sim'),
(29, 'Catarina Ramalho', 'monsaraz2000@yahoo.com', 'Catarina Ramalho limpezas', 3, 936385630, 2, 1, 'Tarde', 'Pequenos negócios ligados ao rio', 'Sim'),
(30, 'Andreza Rosa Dias Néné Ribeiro', 'andrezarib@gmail.com', 'Agrupamento de Escolas de Santo António', 2, 910019951, 2, 1, 'Tarde', 'Aproveitamento do rio / Turismo', 'Sim'),
(31, 'Carlos José Valente Pepe', 'carlos.pepe@cm-seixal.pt', 'Câmara Municipal do Seixal', 3, 212276700, 2, 1, 'Tarde', 'Pequenos negócios ligados ao rio', 'Sim'),
(32, 'Catarina Rodrigues Faias', 'catarina.faias@cm-seixal.pt', 'Camara Municipal do Seixal', 3, 210976220, 2, 1, 'Tarde', 'Pequenos negócios ligados ao rio', 'Sim'),
(33, 'Catarina Ramalho', 'monsaraz2000@yahoo.com', 'Catarina Ramalho', -1, 936385630, 1, 1, 'manha', NULL, 'Sim'),
(34, 'Estela Correia', 'ecoobras@hotmail.com', 'Ecoobras', -1, 965081577, 1, 1, 'manha', NULL, 'Sim'),
(35, 'Lídia Monteiro', 'lidia.monteiro@rumo.org.pt', 'RUMO RSI', 3, 961503930, 2, 1, 'Tarde', 'Pequenos negócios ligados ao rio', 'Sim'),
(36, 'Inês Preto', 'ines.preto@rumo.org.pt', 'RUMO RSI', 3, 961141014, 2, 1, 'Tarde', 'Pequenos negócios ligados ao rio', 'Sim'),
(37, 'Jacinta Cabrita', 'jacinta.cabrita@rumo.org.pt', 'Rumo', 3, 961142312, 2, 1, 'Tarde', 'Pequenos negócios ligados ao rio', 'Sim'),
(38, 'Fátima Moleirinho', 'fatima.moleirinho@gmail.com', 'Rumo', 2, 932886168, 2, 1, 'Tarde', 'Aproveitamento do rio / Turismo', 'Sim'),
(39, 'Pedro Salvado Ferreira', 'pedro.ferreira@estbarreiro.ips.pt', 'ESTBarreiro/IPS', 1, 917421435, 2, 1, 'Tarde', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(40, 'Débora Vidal de Oliveira', 'oliveira.deb@hotmail.com', 'GIP-RUMO', 3, 966639874, 2, 1, 'Tarde', 'Pequenos negócios ligados ao rio', 'Sim'),
(41, 'Lopo Lencastre de Almeida', 'lopo.almeida@humaneasy.com', 'nenhuma', 3, 933177386, 2, 1, 'Tarde', 'Pequenos negócios ligados ao rio', 'Sim'),
(42, 'Paula Sofia Encarnação', 'pencarnacao@nos.org.pt', 'Associação NÓS', 3, 962788574, 2, 1, 'Tarde', 'Pequenos negócios ligados ao rio', 'Sim'),
(43, 'Rosario Fernandes', 'rosario.fernandes@mrmf.pt', 'MRMF', 3, 937104002, 2, 1, 'Tarde', 'Pequenos negócios ligados ao rio', 'Sim'),
(44, 'Cátia Máximo', 'catia.maximo@rumo.org.pt', 'Rumo', -1, 961142715, 1, 2, 'manha', NULL, 'Não'),
(45, 'Mariana Correia Garcia', 'mgarcia@nos.org.pt', 'Associação Nós', 1, 212073702, 2, 1, 'Tarde', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(46, 'Tania Encarnação', 'tencarnacao@nos.org.pt', 'Associação Nós', 1, 212073702, 2, 1, 'Tarde', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(47, 'Hélia Ramos', 'helia.ramos@rumo.org.pt', 'Rumo', 3, 961568983, 2, 1, 'Tarde', 'Pequenos negócios ligados ao rio', 'Sim'),
(48, 'Patrícia Ramos', 'patricia.ramos@rumo.org.pt', 'Rumo', 3, 926737871, 2, 1, 'Tarde', 'Pequenos negócios ligados ao rio', 'Sim'),
(49, 'ana claudia santos marçal salvado', 'ana.salvado@rumo.org.pt', 'Rumo', 3, 938702987, 2, 1, 'Tarde', 'Pequenos negócios ligados ao rio', 'Sim'),
(50, 'Carla Sofia Canelas Parreira', 'carla.parreira@rumo.org.pt', 'Rumo', 3, 961143049, 2, 1, 'Tarde', 'Pequenos negócios ligados ao rio', 'Sim'),
(52, 'Mónica Alexandra Apolinário Mogo Fernandes', 'monicafernandes0@hotmail.com', 'Futuro Eximio, Lda', 3, 962764262, 2, 1, 'Tarde', 'Pequenos negócios ligados ao rio', 'Sim'),
(53, 'Carla Graça', 'carlagraca@quercus.pt', 'Quercus - ANCN (Núcleo Regional de Setúbal)', -1, 931603256, 1, 1, 'manha', NULL, 'Sim'),
(54, 'Ana Costa Borges Horta', 'anacostahorta@gmail.com', 'Agrupamento de Escolas D. João I', 3, 935569866, 2, 1, 'Tarde', 'Pequenos negócios ligados ao rio', 'Sim'),
(55, 'Ana Marta Ribeiro Roque', 'marta.ribeiroque@gmail.com', 'CITAD', 1, 969803735, 2, 1, 'Tarde', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(56, 'Fátima Silva', 'moscosos@sapo.pt ', 'CITAD', 1, 919731962, 2, 1, 'Tarde', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(57, 'Marco Gil Reis Infante Lopes', 'mlopes@nos.org.pt', 'Associação NÓS - Equipa do Protocolo do Rendimento Social de Inserção', 2, 963649962, 2, 1, 'Tarde', 'Aproveitamento do rio / Turismo', 'Sim'),
(58, 'Álvaro Carlos Rosa Marques', 'sirb@sapo.pt', 'Sirb Os Penicheiros', 1, 212071381, 2, 1, 'Tarde', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(65, 'Anabela Trindade Soares', 'anabela.soares@cm-seixal.pt', 'CM Seixal', 1, 919949619, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(66, 'Cláudio Anaia', 'claudioanaia@hotmail.com', 'CMB', 2, 969196039, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(67, 'Marta Gomes', 'rsi.criva@gmail.com', 'CRIVA ( Centro de Reformados e Idosos do Vale da Amoreira', 3, 936992954, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(68, 'Celisa Carvalho', 'rsi.criva@gmail.com', 'CRIVA ( Centro de Reformados e Idosos do Vale da Amoreira', 3, 936992954, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(69, 'Rita Ferreira', 'rsi.criva@gmail.com', 'CRIVA ( Centro de Reformados e Idosos do Vale da Amoreira', 3, 936992954, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(70, 'António Pereira', 'rsi.criva@gmail.com', 'CRIVA ( Centro de Reformados e Idosos do Vale da Amoreira', 3, 936992954, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(71, 'Isabel Silvestre', 'rsi.criva@gmail.com', 'CRIVA ( Centro de Reformados e Idosos do Vale da Amoreira', 2, 936992954, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(72, 'Miriam Costa', 'rsi.criva@gmail.com', 'CRIVA ( Centro de Reformados e Idosos do Vale da Amoreira', 2, 936992954, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(73, 'Esmeralda Mª Nogueira Soares Cruz', 'esmeralda.cruz@rumo.org.pt', 'Rumo, Cooperativa de Solidariedade Social, CRL', 3, 932886166, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(74, 'Laura Maria Pinheiro', 'laura.pinheiro@rumo.org.pt', 'Rumo, Cooperativa de Solid. Social, CRL', 3, 961143135, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(75, 'Carlos Rosado', 'udipssdesetubal@gmail.com', 'UDIPSS de Setúbal', -1, 963067313, 1, 2, 'manha', NULL, 'Não'),
(76, 'Filipe Miranda Ferreira', 'jazevedo@aml.pt', 'Área Metropolitana de Lisboa', 2, 218428570, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(77, 'Mónica Alexandre', 'escolhasva.e5g@gmail.com', 'Projeto Escolhas VA-E5G', 2, 934671690, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(78, 'Ana Sofia Matos', 'escolhasva.e5g@gmail.com', 'Projeto Escolhas VA-E5G', 2, 963875273, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(79, 'Luís Costa', 'jazevedo@aml.pt', 'Área Metropolitana de Lisboa', 2, 218428570, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(80, 'Ana Rita Pereira ', 'ana.pereira_15@hotmail.com', 'EscolhasVaE5g', 2, 926703888, 2, 1, 'Tarde', 'Aproveitamento do rio / Turismo', 'Sim'),
(81, 'Maria João gaspar', 'maria.joao.gaspar@rumo.org.pt', 'Rumo', -1, 917301245, 1, 2, 'manha', NULL, 'Não'),
(82, 'Maria João gaspar', 'maria.joao.gaspar@rumo.org.pt', 'Rumo', -1, 917301245, 1, 2, 'manha', NULL, 'Não'),
(83, 'Carlos Franqueira', 'gipvale@gmail.com', 'Criva', 2, 963139149, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(84, 'Ana Teresa Fernandes', 'div.educacao@mail.cm-moita.pt', 'Câmara Municipal da Moita', 2, 210817010, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(85, 'Marta Vieira', 'div.educacao@mail.cm-moita.pt', 'Câmara Municipal da Moita', 2, 210817013, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(86, 'Pedro Jorge Marcelino Ferreira ', 'pedro.ferreira@mail.cm-moita.pt ', 'Câmara Municipal da Moita', 2, 917199135, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(88, 'Maria Clara Silva', 'clsilva@mun-montijo.pt', 'Câmara Municipal de Montijo', 3, 918299620, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(89, 'Ana Jardim', 'div.assuntos.sociais@mail.cm-moita.pt', 'Cãmara Municipal da Moita', 2, 912552464, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(90, 'Lígia Carvalho', 'div.assuntos.sociais@mail.cm-moita.pt', 'Cãmara Municipal da Moita', 3, 917199348, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(91, 'Luisa Auxiliadora Lopes Brito', 'luzy_barbosa@hotmail.com', 'ACVA', 2, 966667071, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(92, 'Cipriano Monteiro', 'ciprianotavares2014@gmail.com', 'ACVA', 3, 962801797, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(93, 'Eloisa Cruz', 'eloisa.cruz@rumo.org.pt', 'Rumo', 3, 962383742, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(94, 'José Manuel  Lopes Fernandes', 'amznbb@gmail.com', 'Associação de Moradores da Zona Norte Baixa da Banheira', 1, 914247841, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(95, 'Diamantino Patarata Cabrita', 'amznbb@gmail.com', 'Associação de Moradores da Zona Norte Baixa da Banheira', 2, 915576791, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(96, 'Lígia  Santos Vasques', 'lvasques@mail.cm-moita.pt', 'Municipio Moita', 3, 917199451, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(97, 'Kyrah Wanessa Ié', 'k.wanessa.ie@gmail.com', 'EscolhasVa-E5g', 2, 966590546, 2, 1, 'Tarde', 'Aproveitamento do rio / Turismo', 'Sim'),
(98, 'Carla Marina Tomé Fernandes', 'carlamarinatf@gmail.com', 'particular', 2, 966383210, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(99, 'Maria José Bronze', 'gae@cm-barreiro.pt', ' Gab.Apoio Empresário |C. M. Barreiro', 3, 911055793, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(100, 'Eunice Teixeira', '', '', 2, 962467971, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(101, 'Nuno Miguel Fialho Cavaco', 'nuno.cavaco@ufbbva.pt', 'Junta de Freguesia da Baixa da Banheira e Vale da Amoreira', 2, 964650120, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(102, 'Lucília Ferro dos Santos', 'luciliaferrosantos@cooperativaseies.org', 'SEIES', 3, 913128030, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(103, 'João Lopes', 'joao.lopes@cm-barreiro.pt', 'CMBarreiro', 1, 911055857, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(104, 'Tania Isabel Lopes Encarnação', 'tencarnacao@nos.org.pt', 'Associação NÓS', 1, 963922436, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(105, 'Jéssica Ribeiro', 'jessica.isabelaa@hotmail.com', 'Escolhas', 2, 926371357, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(106, 'Armando Gomes', 'armando.gomes@cm-barreiro.pt', 'CMB (DISE)', 1, 911057190, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(107, 'Isabel Soares', 'isabel.soares@cm-barreiro.pt', 'CMB (DISE)', 2, 911055976, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(108, 'Lina Nogueira', 'lina.nogueira@cm-barreiro.pt', 'CMB (DISE)', 1, 212068199, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(109, 'Vitor Martelo', 'vitor.martelo@mail.cm-moita.pt', 'Município da Moita', -1, 966200007, 1, 2, 'manha', NULL, 'Não'),
(110, 'Sérgio Valentim', 'forum.cultural.jmf@mail.cm-moita.pt', 'CMMoita', -1, 210888900, 1, 1, 'manha', NULL, 'Sim'),
(111, 'Maria Clara Mourato', 'forum.cultural.jmf@mail.cm-moita.pt', 'CMMoita', -1, 210888900, 1, 1, 'manha', NULL, 'Sim'),
(112, 'Helena Silva', 'forum.cultural.jmf@mail.cm-moita.pt', 'CMMoita', -1, 210888900, 1, 1, 'manha', NULL, 'Sim'),
(113, 'Élia Madeira', 'forum.cultural.jmf@mail.cm-moita.pt', 'CMMoita', -1, 210888900, 1, 1, 'manha', NULL, 'Sim'),
(114, 'Maria João Simões', 'forum.cultural.jmf@mail.cm-moita.pt', 'CMMoita', -1, 210888900, 1, 1, 'manha', NULL, 'Sim'),
(115, 'Hugo Andrade', 'forum.cultural.jmf@mail.cm-moita.pt', 'CMMoita', -1, 210888900, 1, 1, 'manha', NULL, 'Sim'),
(116, 'Cláudio Santos', 'forum.cultural.jmf@mail.cm-moita.pt', 'CMMoita', -1, 210888900, 1, 1, 'manha', NULL, 'Sim'),
(117, 'Ludmila Fernandes', 'forum.cultural.jmf@mail.cm-moita.pt', 'CMMoita', -1, 210888900, 1, 1, 'manha', NULL, 'Sim'),
(118, 'Anabela Barão', 'forum.cultural.jmf@mail.cm-moita.pt', 'CMMoita', -1, 210888900, 1, 1, 'manha', NULL, 'Sim'),
(119, 'Rui Pedro Rocha', 'apea.secretariado@gmail.com', 'Rumo', 1, 917053426, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(120, 'Carina Patrícia Cardoso Neves', 'bxbprojovem.e5g@rumo.org.pt', 'Rumo, Cooperativa de Solidariedade Social', 2, 963707222, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(121, 'Fábio Sebastião', 'bxbprojovem.e5g@rumo.org.pt', 'Rumo, Cooperativa de Solidariedade Social', 2, 918397211, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(122, 'Stefan Secriru', 'bxbprojovem.e5g@rumo.org.pt', 'Rumo, Cooperativa de Solidariedade Social', 2, 962669789, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(123, 'VASCO CALEIRA', 'vascocaleira@cooperativaseies.org', 'SEIES', 2, 265547450, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(124, 'Lidia Maria Carreto Lages', 'llages@nos.org.pt', 'Associação  NÓS', 3, 965331905, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(125, 'Giorgia Consoli', 'giorgia.consoli@kcidade.com', 'Fundação Aga Khan', 3, 961944068, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(126, 'Lúcia Paço', 'vpaco@nos.org.pt', 'Associação Nós', -1, 964462463, 1, 2, 'manha', NULL, 'Não'),
(127, 'Rosario Fernandes', 'rosario.fernandes@mrmf.pt', 'MRMF', 3, 937104002, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(128, 'maria celeste barata baptista', 'celestebarata@iol.pt', 'particular', 3, 914658747, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(129, 'Fernando Angelino', 'fernando.angelino@esce.ips.pt', 'ESCE-IPS', -1, 939893066, 1, 1, 'manha', NULL, 'Sim'),
(130, 'Brian Costa da Silva', 'bsilva.973@estbarreiro.ips.pt', 'Escola Superior de Tecnologia do Barreiro', 1, 916451853, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(131, 'Bruno Pimenta', 'pimentabruno@hotmail.com', 'Câmara Municipal do Barreiro', 2, 911055791, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(132, 'liliana caninhas', 'liliana.caninhas@escolaprofissionalmoita.com', 'Escola Técnica e Profissional da Moita', 3, 916559064, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(133, 'PORFIRIO SALEIRO', 'PORFIRIO.SALEIRO@PT.BOSCH.COM', 'BOSCH SERVICE SOLUTIONS', 1, 932135802, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(134, 'Ana Firme', 'Ana.firme@escolaprofissionalmoita.com', 'Escola Técnica e Profissional da Moita', 3, 936835979, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(135, 'José Manuel Miragaia', 'jose.miragaia@century21.pt', 'Century 21 Via - Barreiro', -1, 917274129, 1, 1, 'manha', NULL, 'Sim'),
(136, 'Maria Judite Silva', 'crivapresidente@gmail.com', 'CRIVA', -1, 212039198, 1, 1, 'manha', NULL, 'Sim'),
(137, 'maria de fátima guerreiro amador', 'frijovem@frijovem.com', 'frijovem - equipamentos hoteleiros, lda', -1, 720000000, 1, 1, 'manha', NULL, 'Sim'),
(138, 'Maria João Freitas', 'mjoao.freitas@rarissimas.pt', 'Rar', 1, 961325626, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(139, 'Maria dos Prazeres da Cruz Gonçalves', 'm.prazeres.goncalves@seg-social.pt', 'CDSS Setúbal', 2, 300514119, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(140, 'Maria de Fátima do Carmo Ramos Costa', 'm.ramos .costa@seg-social.pt', 'CDSS setúbal', 1, 300514114, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(142, 'Ana Peixoto', 'sec.turismo@mail.cm-moita.pt', 'Município da Moita', 2, 210816910, 2, 2, 'Tarde', 'Aproveitamento do rio / Turismo', 'Não'),
(143, 'Joaquim Inácio Raminhos', 'cfbarreiromoita@gmail.com', 'Centro de Formação de Escolas do Barreiro e Moita', 2, 962773310, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(144, 'Maria Pilar Presumido', 'pilargpresumido@gmail.com', 'Vit a Caminho - ADPS', 2, 936603918, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(145, 'Marta Gomes', 'martasbgomes@gmail.com', 'I GIVE', 2, 919212898, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(146, 'Sonia Garroa Canteiro', 'soniagarroa@gmail.com', 'I GIVE', 2, 919490516, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(147, 'Paulo Guerreiro (staff)', 'zepaulo2@hotmail.com', 'Câmara Municipal da Moita', -1, 964361883, 1, 1, 'manha', NULL, 'Sim'),
(148, 'Manuel João Croca', 'mjcroca@gmail.com', 'CACAV - CÍRCULO DE ANIMAÇÃO CULTURAL DE ALHOS VEDROS', 3, 936532322, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(149, 'Júlio de Jesus', 'jj@juliodejesusconsultores.com', 'Júlio de Jesus Consultores, Lda.', 1, 917765390, 2, 1, 'Tarde', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(150, 'José Lourenço', 'josemblourenco@gmail.com', 'ESBB', 3, 966317493, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(151, 'Pedro Silva', 'pedro.silva@progrupo.com', 'progrupo', 2, 916290750, 2, 1, 'Tarde', 'Aproveitamento do rio / Turismo', 'Sim'),
(152, 'Carla Marina Santos', 'carlamarinasantos@hotmail.com', 'Cooperativa Cultural Popular Barreirense', 2, 968117171, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(153, 'Jorge Balau', 'balaustreme@gmail.com', 'Escola de kitesurf e Sup boarderclubportugal.com', 2, 934184065, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(154, 'Maria Manuela Rodrigues Martins', 'mmartins@nos.org.pt', 'Associação Nós', 3, 911129887, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(155, 'Filipa Horta', 'filipa.apaccf@gmail.com', 'Associação de Professores e Amigos das Crianças do Casal das Figueiras', -1, 965097970, 1, 2, 'manha', NULL, 'Não'),
(157, 'Carla Oliveira', 'div.educacao@mail.cm-moita.pt', 'Câmara Municipal da Moita', -1, 210817000, 1, 1, 'manha', NULL, 'Sim'),
(158, 'Emília Rosa Figueira Luís ', 'amznbb@gmail.com', 'Associação de Moradores da Zona Norte  Baixa da Banheira', 2, 933135274, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(159, 'Teresa Sousa', 'sousateresacristina@hotmail.com', 'Nehuma', 1, 919833578, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(160, 'Mariana Alves', 'direcao@aeaugustocabrita.edu.pt', 'Agrupamento de Escolas Augusto Cabrita', -1, 212059220, 1, 2, 'manha', NULL, 'Não'),
(161, 'Carla Vilhena', 'carla.filippaa@gmail.com', 'CITAD', -1, 963734264, 1, 2, 'manha', NULL, 'Não'),
(162, 'Carolina Correia', 'carolinadgcorreia@gmail.com', 'CITAD ', 2, 925035865, 2, 2, 'Tarde', 'Aproveitamento do rio / Turismo', 'Não'),
(163, 'Maria Clara Rafael Miranda de Almeida Palma Ramos', 'claraprofmoita@gmail.com', 'CQEP - AEMoita', -1, 914277779, 1, 2, 'manha', NULL, 'Não'),
(164, 'Filipa Alexandra Mamede das Neves', 'ccomunitario.ssebastiao@gmail.com', 'Centro Social Paroquial de São Sebastião de Setúbal ', -1, 913207164, 1, 2, 'manha', NULL, 'Não'),
(165, 'Paulo Albasini', 'pauloalbasini@gmail.com', 'RUMO', -1, 932886003, 1, 1, 'manha', NULL, 'Sim'),
(166, 'Elisabete Ribeiro', 'elisabete.figueiredo@rumo.org.pt', 'RUMO', -1, 932886170, 1, 1, 'manha', NULL, 'Sim'),
(167, 'Ana Moreira', 'ana.moreira@rumo.org.pt', 'RUMO', -1, 961323398, 1, 1, 'manha', NULL, 'Sim'),
(168, 'Vera Paisana', 'vera.paisana@rumo.org.pt', 'RUMO', -1, 961569156, 1, 1, 'manha', NULL, 'Sim'),
(169, 'Lurdes Marques', 'centroderecursos@rumo.org.pt', 'RUMO', -1, 932886159, 1, 1, 'manha', NULL, 'Sim'),
(170, 'Ana Nogueira', 'tasse.e5g@fsantarafaelamaria.org', 'Fundação Santa Rafaela Maria', -1, 919425073, 1, 2, 'manha', NULL, 'Não'),
(171, 'Bruno Rodrigo Peres da Silva', 'brunosilvas@iol.pt', 'Tenho Colaborado o Grupo Estejo da U. Lusíada', 2, 960306513, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(172, 'Manuel Ferreira Fernandes', 'direcao@cssantoantonio.org', 'Centro Social de Santo António', 1, 966537002, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(173, 'Elisabete José Faria Falcão', 'elisabetejffalcao@gmail.com', 'Nenhuma', -1, 917624750, 1, 2, 'manha', NULL, 'Não'),
(174, 'Paula Cristina Filipe', 'pf-arisca@sapo,pt', 'particular', 2, 962690417, 2, 2, 'Tarde', 'Aproveitamento do rio / Turismo', 'Não'),
(175, 'Ana Fernandes', 'afernandes@mail.cm-moita.pt', 'CMMoita', 2, 917199467, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(176, 'Rosária Nunes', 'rosaria.nunes@rumo.org.pt', 'RUMO', -1, 934441090, 1, 1, 'manha', NULL, 'Sim'),
(177, 'Natália Henriques', 'natalia', 'Adrepes', 3, 212337930, 2, 2, 'Tarde', 'Pequenos negócios ligados ao rio', 'Não'),
(178, 'Dora Carvalho', 'dora.carvalho@rumo.org.pt', 'Rumo', 3, 968463245, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(179, 'Anabela Goncalves', 'belag71@live.com.pt', 'individual', 1, 936529046, 3, 2, 'dia', 'Atividade portuária e a plataforma multimodal', 'Não'),
(180, 'Sara Zorro', 'saragzorro@gmail.com', 'Individual', 1, 917377777, 3, 2, 'dia', 'Atividade portuária e a plataforma multimodal', 'Não'),
(181, 'Florbela Monteiro da Silba Baeta Duarte', 'florbela.duarte@iefp.pt', 'Centro de Emprego do Sul Tejo', 3, 912422215, 3, 2, 'dia', 'Pequenos negócios ligados ao rio', 'Não'),
(182, 'Rute Isabel Loureiro Pires', 'rute.pires@rumo.org.pt', 'Rumo', 3, 932886158, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(183, 'Luis Parro', 'luis.parro@incensya.com', 'inCensya - human impact solutions lda', 2, 917538477, 2, 2, 'Tarde', 'Aproveitamento do rio / Turismo', 'Não'),
(184, 'Hermínia Fernandes', 'sfherminia@gmail.com', 'Profissional Liberal', -1, 967197269, 2, 2, 'Tarde', NULL, 'Não'),
(185, 'Maria Santa Isabel', 'forum.cultural.jmf@mail.cm-moita.pt', 'CMMOita', -1, 210888900, 1, 1, 'manha', NULL, 'Sim'),
(186, 'Nuno Adriano Galvão Lopes', 'forum.cultural.jmf@mail.cm-moita.pt', 'CMMoita', -1, 210888900, 1, 1, 'manha', NULL, 'Sim'),
(187, 'José Pedro Lima da Silva', 'zp.fm.02@gmail.com', 'CM. ALMADA', 1, 926775035, 2, 2, 'Tarde', 'Atividade portuária e a plataforma multimodal', 'Não'),
(188, 'Angelo Batista', 'angelo.batista@idset.pt', 'IDSET ', 2, 929062194, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(189, 'Paulo Lourenço', 'ctaborpresidente@gmail.com', 'Centro Jovem Tabor', 2, 963949838, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(190, 'Carla Diegues', 'carla.diegues@apaccf.pt', 'APACCF', -1, 927618578, 1, 2, 'manha', NULL, 'Não'),
(191, 'Nuno Batista da Silva', 'nuno.silva@cm-barreiro.pt', 'Câmara Municipal do Barreiro', 1, 935059490, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(192, 'Cláudia Alexandra Pereira Monteiro', 'claudiaemprego84@gmail.com', 'CATICA RSI', 1, 934150149, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(193, 'Luísa Vaz Pinto', 'formar@rumo.org.pt', 'Rumo', -1, 212064920, 1, 2, 'manha', NULL, 'Não'),
(194, 'Rita Azevedo', 'razevedo@mail.cm-moita.pt', 'Câmara Municipal da Moita', 2, 210817013, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(195, 'Claudina Maria de Jesus Dias', 'cdias@mail.cm-moita.pt', 'Câmara Municipal da Moita', 2, 210817015, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(196, 'Ana Patas', 'ana.pratas@mail.cm-moita.pt', 'Câmara Municipal da Moita', 2, 210817015, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(197, 'Domingos José F. Ferreira Martins', 'secretariado_geral@scmva.org.pt', 'Santa Casa Misericórdia de Alhos Vedros', 3, 966005018, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(198, 'Luciano Joaquim Fernandes Carreira', 'secretariado_geral@scmva.org.pt', 'Santa Casa Misericórdia de Alhos Vedros', 3, 930457634, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(199, 'Alberto Jorge M. Marques', 'secretariado_geral@scmva.org.pt', 'Santa Casa Misericórdia de Alhos Vedros', 3, 963031258, 2, 1, 'Tarde', 'Pequenos negócios ligados ao rio', 'Sim'),
(200, 'Custodia Paiva', 'custodia.paiva@rumo.org.pt', 'RUMO', -1, 969222677, 1, 1, 'manha', NULL, 'Sim'),
(201, 'Patricia Valadas', 'patricia.valadas@rumo.org.pt', 'RUMO', -1, 967253983, 1, 1, 'manha', NULL, 'Sim'),
(202, 'Fábio Varanda', 'fabiovarandaepbjc@gmail.com', 'EPBJC', 2, 965209316, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(203, 'Luís Dias', 'luis.dias.epbjc@gmail.com ', 'EPBJC', 2, 965790457, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(204, 'Álvaro Jaime Gomes Cidrais', 'alvaro.cidrais@gmail.com', 'Rumo - REBM', 3, 914735414, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(205, 'Luis Rodrigues', 'luisrodrigues33@gmail.com', 'darkglobe lda', -1, 967774606, 1, 1, 'manha', NULL, 'Sim'),
(206, 'Luis Charneira', 'luischarneira@hotmail.com', '', 1, 919501263, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(207, 'Sandro  dos Santos', 'wanessaie.ki@gmail.com', 'nehuma', -1, 968605146, 2, 2, 'Tarde', NULL, 'Não'),
(208, 'Jorge Manuel Batista Mendes', 'batistasjorge@gmail.com', 'BATISTAS, sa', 1, 964035364, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(209, 'Vicente Figueira', 'junta.charneca@gmail.com', 'Junta de Freguesia da Charneca', -1, 914070806, 1, 1, 'manha', NULL, 'Sim'),
(210, 'Paula Rosado', 'paula.rosado@mail.cm-moita.pt', 'Camara Municipal da Moita', 2, 914028364, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(211, 'David Dourado', 'daviddourado.dourados@gmail.com', 'Dourados', 3, 965063138, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(212, 'Ana Paula Cruz', 'paula.rosado@mail.cm-moita.pt', 'Câmara Municipal da Moita', 2, 914070806, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(213, 'Lara Almeida Teixeira', 'laraxalmeida@gmail.com', 'Canoa Desvairada', 2, 966322414, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(214, 'José Júlio Presumido', 'paula.rosado@mail.cm-moita.pt', 'Camara Municipal da Moita', 3, 914070806, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(215, 'Vivina Maria Semedo Nunes', 'vivina.nunes@mail.cm-moita.pt', 'Câmara Municipal da Moita', 3, -7199037, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(216, 'Daniel Vaz Figueiredo', 'vereador.daniel.figueiredo@mail.cm-moita.pt', 'Câmara Municipal da Moita', 2, -9903040, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(217, 'João Miguel da Silva Romba', 'vereador.joao.romba@mail.cm-moita.pt', 'Câmara Municipal da Moita', 1, -2585812, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(218, 'Lina Figueira', 'lina.figueira2006@gmail.com', 'Daring Project Associação - IDSET', 2, 912245771, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(219, 'Ana Carina Larsen', 'ana.carina@kcidade.com', 'Rede Empregabilidade Sintra', 3, 968630046, 2, 2, 'Tarde', 'Pequenos negócios ligados ao rio', 'Não'),
(220, 'Mariana Monte (STAFF)', 'comunicacao@rumo.org.pt ', 'Rumo', -1, 917374424, 1, 2, 'manha', NULL, 'Não'),
(221, 'João Miguel', 'geral@jf-moita.pt', 'Junta Freguesia Moita', -1, 933135111, 1, 2, 'manha', NULL, 'Não'),
(222, 'Ricardo Paz (STAFF)', 'div.assuntos.sociais@mail.cm-moita.pt', 'Câmara Municipal da Moita', -1, 918423821, 1, 1, 'manha', NULL, 'Sim'),
(223, 'Alexandre Penim', 'alexandrepenim@gmail.com', 'Slick Design', 2, 963062477, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(224, 'Luís Gomes (STAFF)', 'lpgmgomes@gmail.com', 'Go Produções', -1, 965817832, 1, 1, 'manha', NULL, 'Sim'),
(225, 'Augusto Sousa', 'augustojsousa@gmail.com ', 'Rumo', -1, 938125113, 1, 1, 'manha', NULL, 'Sim'),
(226, 'Sérgio Barroso', 'sergio.barroso@cedru.com ', 'CEDRU', 1, 0, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(227, 'Jorge Humberto', 's/r', 'ERTRL', 2, 0, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(228, 'João Figueiredo', 's/r', 'S.Energia', 3, 0, 3, 1, 'dia', 'Pequenos negócios ligados ao rio', 'Sim'),
(229, 'Rui Garcia', 's/r', 'Câmara Municipal da Moita', -1, 0, 1, 1, 'manha', NULL, 'Sim'),
(230, 'Carlos Humberto', 's/r', 'Câmara Municipal do Barreiro', -1, 0, 1, 1, 'manha', NULL, 'Sim'),
(231, 'Pedro Dominguinhos', 's/r', 'Instituto Politécnico de Setúbal', -1, 0, 1, 1, 'manha', NULL, 'Sim'),
(232, 'Susana Marta Marques', 's/r', 'IEFP', -1, 0, 1, 1, 'manha', NULL, 'Sim'),
(233, 'Paulo Gamito', 's/r', 'Baía do Tejo', -1, 0, 1, 1, 'manha', NULL, 'Sim'),
(234, 'Clementina Henriques', 's/r', 'Confederação Portuguesa das Pequenas e Médias Empresas', -1, 0, 1, 1, 'manha', NULL, 'Sim'),
(235, 'Artur Alves', 's/r', 'APL', 1, 0, 2, 2, 'Tarde', 'Atividade portuária e a plataforma multimodal', 'Não'),
(236, 'João Figueira de Sousa', 's/r', 'Faculdade de Ciências Sociais e Humanas - UNL', 1, 0, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(237, 'Sérgio Saraiva', 's/r', 'Baía do Tejo', 1, 0, 2, 1, 'Tarde', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(238, 'Fátima Pinto', 's/r', 'APL', 1, 0, 2, 1, 'Tarde', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(239, 'Alexandre Pires', 's/r', 'Restaurante Fondue', 2, 0, 2, 1, 'Tarde', 'Aproveitamento do rio / Turismo', 'Sim'),
(240, 'Nuno Carreira', 's/r', 'Restaurante Quinta da Feira', 2, 0, 2, 1, 'Tarde', 'Aproveitamento do rio / Turismo', 'Sim'),
(241, 'Pedro Moura', 's/r', 'Residencial Santo André', 2, 0, 2, 1, 'Tarde', 'Aproveitamento do rio / Turismo', 'Sim'),
(242, 'Rui Pedro Dâmaso', 's/r', 'OUT.RA', 2, 0, 2, 2, 'Tarde', 'Aproveitamento do rio / Turismo', 'Não'),
(243, 'Ricardo Conduto', 's/r', 'TEJOCONVIDA', 2, 0, 2, 2, 'Tarde', 'Aproveitamento do rio / Turismo', 'Não'),
(244, 'Jorge Miranda', 's/r', 'IPMA', 3, 0, 2, 2, 'Tarde', 'Pequenos negócios ligados ao rio', 'Não'),
(245, 'Frederico Pereira', 's/r', 'Federação do Sindicato do Setor da Pesca', 3, 0, 2, 1, 'Tarde', 'Pequenos negócios ligados ao rio', 'Sim'),
(246, 'João Navalho', 's/r', 'NECTON', 3, 0, 2, 1, 'Tarde', 'Pequenos negócios ligados ao rio', 'Sim'),
(247, 'Samuel Pacheco', 's/r', 'Protagus', 3, 0, 2, 2, 'Tarde', 'Pequenos negócios ligados ao rio', 'Não'),
(248, 'Carvalho Rodrigues', 's/r', 'Universidade', 3, 0, 2, 1, 'Tarde', 'Pequenos negócios ligados ao rio', 'Sim'),
(249, 'Beatriz Brunheta', 'vfernandes@mail.cm-moita.pt', 'Municipio da Moita', 1, 926168454, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(250, 'Ana Porfírio', 'geral@ufbarreirolavradio.pt', 'UNião de Freguesias do Barreiro Lavradio', 1, 915724493, 3, 1, 'dia', 'Atividade portuária e a plataforma multimodal', 'Sim'),
(251, 'Elisabete dos Santos Jacinto', 's/r', 's/r', -1, 962840652, 1, 2, 'manha', NULL, 'Não'),
(252, 'Teresa Filomena Baptista', 'redesocial@hotmail.com', 'CM Alcochete', 2, 212348646, 3, 1, 'dia', 'Aproveitamento do rio / Turismo', 'Sim'),
(253, 'Carla Andrea Ferreira Diegues', 'andrea.diegues73@gmail.com', 'APACCF', -1, 927618578, 1, 1, 'manha', NULL, 'Sim'),
(254, 'Nelson Carriço', 'nelson.carrico@estbarreiro.ips.pt', 'ESTBarreiro', 1, 967147106, 2, 2, 'Tarde', 'Atividade portuária e a plataforma multimodal', 'Não'),
(256, 'alvaro esperiencia', 's@', 'df', 3, 111111, 3, 2, 'dia', 'Pequenos negócios ligados ao rio', 'Não'),
(257, 'Isabel Maria Amaral Costa', 'isabel.costa@estbarreiro.ips.pt', 'Escola Superior de Tecnologia do Barreiro/ Instituto Plotécnico de Setúbal', -1, 212064660, 1, 2, 'manha', NULL, 'Não'),
(258, 'Carlos Rebocho', 'carlos.rebocho@gmail.com', 'Pessoal', 2, 929276465, 3, 2, NULL, NULL, NULL),
(259, 'Geicibel Melisa dos Reis Correia', 'geicibelmelisa2@hotmail.com', 'Projeto Escolhas @5 VA', 1, 966326678, 2, 2, NULL, NULL, NULL),
(260, 'Ana Joaquim Jossim', 'anajossim@gmail.com', 'Projeto Escolhas @5 VA', 1, 968520990, 2, 2, NULL, NULL, NULL),
(261, 'joana teste 21h06', 'xxxx', 'xxx', -1, 123456789, 1, 2, NULL, NULL, NULL),
(262, 'Luisa Maria dos Santos Oliveira Valente', 'limavalente@gmail.com', 'próprio', 3, 966468438, 2, 2, NULL, NULL, NULL),
(263, 'Alexandre Penim', 'alexandrepenim@gmail.com', 'Slick design', 1, 963062477, 3, 2, NULL, NULL, NULL),
(264, 'Lurdes Alexandra Correia Carmelino', 'juprado@outlook.pt', 'Rumo', -1, 934260737, 1, 2, NULL, NULL, NULL),
(265, 'adriano diouf nunes correia', 'adrianodiouf@gmail.com', 'escolhas va', 1, 964259585, 3, 2, NULL, NULL, NULL),
(266, 'Rui  Magalhaes', 'ruipark@hotmail.com', 'R.A.E.L.', 2, 967206415, 2, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `inscritocentrodeemprego`
--

CREATE TABLE `inscritocentrodeemprego` (
  `id` int(11) NOT NULL,
  `situacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `inscritocentrodeemprego`
--

INSERT INTO `inscritocentrodeemprego` (`id`, `situacao`) VALUES
(1, 'sim'),
(2, 'nao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `instituicoes`
--

CREATE TABLE `instituicoes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `morada` varchar(100) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `Telefone` int(9) DEFAULT NULL,
  `Telemovel` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `instituicoes`
--

INSERT INTO `instituicoes` (`id`, `nome`, `morada`, `email`, `Telefone`, `Telemovel`) VALUES
(2, 'RSI RUMO', 'a', 'a', 12, 12),
(3, 'RSI Criva', 's', 's', 12, 1),
(4, 'RSI NÓS', 's', 's', 12, 12),
(5, 'GIP Vale da Amoreira', 'a', 'a', NULL, 1),
(6, 'GIP Santo António', 'a', 'a', 1, 1),
(7, 'GIP CRIBB', 'a', 'a', 12, 12),
(8, 'CLDS + Barreiro', 'a', 'a', 1, 1),
(9, 'CLDS Moita', 'a', 'a', 1, 1),
(10, 'Secretariado REBM', 'a', 'a', 1, 1),
(11, 'Outro', 'a', 'a1', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `interessesprofissionais`
--

CREATE TABLE `interessesprofissionais` (
  `id` int(2) NOT NULL,
  `interesseProfissional` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `interessesprofissionais`
--

INSERT INTO `interessesprofissionais` (`id`, `interesseProfissional`) VALUES
(1, 'Agricultura/Florestas/Pescas'),
(2, 'Arquitetura/Design'),
(3, 'Artes/Entretenimento/Media'),
(4, 'Banca/Seguros/Serviços Financeiros'),
(5, 'Beleza/Moda/Bem-Estar'),
(6, 'Call Center/Help Desk'),
(8, 'Comercial/Vendas'),
(9, 'Comunicação Social/Media'),
(10, 'Conservação/Manutenção/Técnica'),
(11, 'Construção Civil'),
(12, 'Contabilidade/Finanças'),
(13, 'Desporto'),
(14, 'Direito/Justiça'),
(15, 'Educação/Formação'),
(16, 'Engenharia(Ambiente)'),
(17, 'Engenharia(Civil)'),
(18, 'Engenharia(Eletrotécnica)'),
(19, 'Engenharia(Mecânica)'),
(20, 'Engenharia(Quimica/Biologia)'),
(21, 'Farmácia/Biotecnologia'),
(22, 'Gestão de Empresas/Economia'),
(23, 'Gestão RH'),
(24, 'Hotelaria/Turismo'),
(25, 'Imobiliário'),
(26, 'Indústria/Produção'),
(27, 'Informática(Análise de Sistemas)'),
(28, 'Informática(Formação)'),
(29, 'Informática(Gestão de Redes)'),
(30, 'Informática(Internet)'),
(31, 'Informática(Multimédia)'),
(32, 'Informática(Programação)'),
(33, 'Informática(Técnico de Hardware)'),
(34, 'Informática(Comercial/Gestor de Conta)'),
(35, 'Limpezas/Domésticas'),
(36, 'Lojas/Comércio/Balcão'),
(37, 'Publicidade'),
(38, 'Relações Públicas'),
(39, 'Restauração/Bares'),
(40, 'Saúde/Medicina/Enfermagem'),
(41, 'Secretariado/Administração'),
(42, 'Serviços Sociais'),
(43, 'Serviços Técnicos'),
(44, 'Telecomunicações'),
(45, 'Transportes/Logística');

-- --------------------------------------------------------

--
-- Estrutura da tabela `linguas`
--

CREATE TABLE `linguas` (
  `id` int(11) NOT NULL,
  `lingua` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `linguas`
--

INSERT INTO `linguas` (`id`, `lingua`) VALUES
(1, 'Português'),
(2, 'Espanhol'),
(3, 'Inglês'),
(4, 'Francês'),
(5, 'Alemão'),
(6, 'Russo'),
(7, 'Àrabe'),
(8, 'Mandarim'),
(9, 'Hindi'),
(10, 'Japonês'),
(11, 'Romeno'),
(12, 'Ucraniano'),
(13, 'Polonês'),
(14, 'Italiano'),
(15, 'Turco'),
(16, 'Panjabi'),
(17, 'Bengali');

-- --------------------------------------------------------

--
-- Estrutura da tabela `meios`
--

CREATE TABLE `meios` (
  `id` int(1) NOT NULL,
  `meio` varchar(6) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `meios`
--

INSERT INTO `meios` (`id`, `meio`) VALUES
(1, 'Urbano'),
(2, 'Rural'),
(3, 'Misto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `membros`
--

CREATE TABLE `membros` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `logotipo` varchar(50) NOT NULL,
  `link` varchar(500) NOT NULL,
  `ativo` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `membros`
--

INSERT INTO `membros` (`id`, `nome`, `logotipo`, `link`, `ativo`) VALUES
(1, 'RUMO', '1.png', 'http://rumo.org.pt/wp/', b'1'),
(2, 'Escola Profissional Bento de Jesus Caraça - Barreiro', '2.png', 'https://epbjc.pt/barreiro/', b'1'),
(3, 'Centro de Reformados e Idosos da Baixa da Banheira', '3.png', '', b'1'),
(4, 'Associação Solidariedade Cabo-Verdiana dos Amigos da Margem Sul do Tejo', '4.png', '', b'1'),
(5, 'Agrupamento de Escolas de Casquilhos', '5.png', 'http://www.aecasquilhos.pt/', b'1'),
(6, 'CERCI Barreiro e Moita', '6.jpg', 'https://www.cercimb.pt/', b'1'),
(7, 'Agrupamento de Escolas de Santo André', '7.png', 'http://www.aesa.edu.pt/edu/', b'1'),
(8, 'IDSet', '8.png', 'http://www.idset.pt/', b'1'),
(9, 'Segurança Social', '9.png', '', b'1'),
(10, 'Câmara Municipal da Moita', '10.png', 'https://www.cm-moita.pt/', b'1'),
(11, 'AERLIS', '11.png', 'https://www.aerlis.pt/', b'1'),
(12, 'Junta de Freguesia Santo Antonio da Charneca', '12.png', 'http://jfsac.pt/', b'1'),
(13, 'Escola D.João I', '13.jpg', 'http://aedjoao1.ccems.pt/', b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `assunto` varchar(100) NOT NULL,
  `mensagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mensagens`
--

INSERT INTO `mensagens` (`id`, `nome`, `email`, `assunto`, `mensagem`) VALUES
(2, 'ursula', 'ursulaarseniadis@gmail.com', 'cadastrar', '<p>Bom dia, gostaria de me cadastrar neste site, estou desempregada e gostaria de uma oportunidade</p>\r\n<p>&nbsp;</p>\r\n<p>obrigada&nbsp;</p>'),
(3, 'Catarina Ramalho', 'monsaraz2000@yahoo.com', 'Inscrição para o forum', '<p>Boa tarde</p>\r\n<p>&nbsp;</p>\r\n<p>Venho por este meio inscrever-me para o forum que se vai realizar.</p>\r\n<p>Meu contacto &eacute; 93 638 56 30</p>\r\n<p>&nbsp;</p>\r\n<p>Atenciosamente</p>\r\n<p>Catarina Ramalho</p>'),
(4, 'Sérgio Daniel Fernandes Franco', 'sergiofranco1982@gmail.com', 'Possibilidade de me inscrever no site e envaiar CV.', '<p>Boa tarde.</p>\r\n<p>&nbsp;</p>\r\n<p>Venho por este saber como me posso inscrever no vosso site e enviar o meu CV, isto porque n&atilde;o percebo onde &eacute;!<br />Apenas vejo o login mas n&atilde;o como me inscrever!<br /><br />Agrade&ccedil;o desde j&aacute; toda a disponibilidade.<br /><br />Com os melhores cumprimentos.<br /><br />S&eacute;rgio Franco</p>'),
(7, 'Ana Inglês', 'ana.ingles@cm-seixal.pt', 'Confirmação de inscrição.', '<p>Exmos. Senhores</p>\r\n<p>Agrade&ccedil;o a V/ melhor aten&ccedil;&atilde;o para a possibilidade de confirma&ccedil;&atilde;o da inscri&ccedil;&atilde;o para o IV Forum de Desenvolvimento Local, em nome de Anabela Trindade Soares, dado que efetuei a mesma e n&atilde;o tenho a certeza de ter procedido corretamente.</p>\r\n<p>Fico aguardando uma resposta.</p>\r\n<p>Com os melhores cumprimentos</p>\r\n<p>Ana Ingl&ecirc;s</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>'),
(8, 'Cesar', 'cafs2103@gmail.com', 'Santos', '<p>Boa tarde. &nbsp;Venho por este meio solicitar a minha inscri&ccedil;&atilde;o no f&oacute;rum no Barreiro. &nbsp;Sou professor e estou interessado em projectos de desenvolvimento local.&nbsp;</p>'),
(9, 'Centro Social de Sº António', 'direcao@cssantoantonio.org', 'Inscrição para IV Forum Desenvolv. Local', '<p>Caros Amigos</p>\r\n<p>Bom dia</p>\r\n<p>Tent&aacute;mos inscrever os participantes deste CSSA no Forum em assunto, mas n&atilde;o foi poss&iacute;vel por n&atilde;o estarmos ainda registados no Portal e n&atilde;o termos Conta.</p>\r\n<p>Se for poss&iacute;vel aceitar inscri&ccedil;&otilde;es por esta via, solicito que inscrevam 2 elementos cujos nomes ser&atilde;o oportunamente informados</p>\r\n<p>Obrigado</p>\r\n<p>As nossas cordiais Sauda&ccedil;&otilde;es Solid&aacute;rias</p>\r\n<p>Manuel Fernandes</p>\r\n<p>Secret&aacute;rio da Direc&ccedil;&atilde;o</p>'),
(10, 'Paula Rosado', 'paula.rosado@mail.cm-moita.pt', 'Inscrições', '<p>Bom dia!</p>\r\n<p>&nbsp;</p>\r\n<p>Estou com dificuldade na incri&ccedil;&atilde;o de 3 elementos da CMM, &eacute; poss&iacute;vel serem voc&ecirc;s a fazer a mesma?</p>\r\n<p>&nbsp;</p>\r\n<p>Paula Rosado</p>\r\n<p>Ana Paula Cruz</p>\r\n<p>Jos&eacute; J&uacute;lio Presumido</p>\r\n<p>&nbsp;</p>\r\n<p>Obrigada,</p>\r\n<p>Paula Rosado</p>'),
(11, 'Elisabete dos Santos Jacinto', '', 'Inscriçao +ara fórum Amanha', '<p>Boa Tarde,</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Ex.mos Senhores,</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Venho por este meio pedir inscricao para o Forum amanha&nbsp; as 9h30 na Baixa da Banheira, para o periodo da manha, uma vez que nao consigo fazer inscricao pelo vosso enderesso . pbrigado,</p>\r\n<p>O meu conacto: 962840652</p>\r\n<p>&nbsp;</p>\r\n<p>Elisabete Jacinto</p>'),
(12, 'Carla Rodrigues', 'carlaarodrigues@hotmail.com', 'Inscrição', '<p>Bom dia.</p>\r\n<p>Encontro-me desempregada e gostava de me inscrever; mas encontro apenas o pedido de e-mail e password...</p>\r\n<p>Como n&atilde;o fiz nenhum log in tal n&atilde;o me &eacute; permitido.</p>\r\n<p>&nbsp;</p>\r\n<p>Obrigada pela aten&ccedil;&atilde;o</p>\r\n<p>Carla Rodrigues</p>'),
(13, '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `missao`
--

CREATE TABLE `missao` (
  `texto` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `missao`
--

INSERT INTO `missao` (`texto`) VALUES
('<p class=\"MsoNormal\" style=\"text-align: justify;\">A REBM tem como miss&atilde;o ser uma parceria competente e empenhada na promo&ccedil;&atilde;o integrada da empregabilidade. Pretende criar din&acirc;micas que contribuam para o desenvolvimento e dinamismo socio econ&oacute;mico local e para o incremento das respostas &agrave; popula&ccedil;&atilde;o desempregada.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">A Rede &eacute; composta por cerca de 36 entidades locais e sectoriais, das quais se salienta a Associa&ccedil;&atilde;o empresarial da Regi&atilde;o de Lisboa &ndash; AERLIS, o, Escolas Profissionais, Agrupamentos e Escolas e Diversas ONG&acute;s, Ensino Superior.</p>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `multimedia`
--

CREATE TABLE `multimedia` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `imagem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `multimedia`
--

INSERT INTO `multimedia` (`id`, `nome`, `imagem`) VALUES
(1, 'a', '111.jpg'),
(2, 'a', '112.jpg'),
(3, 'a', '113.jpg'),
(4, 'a', '114.jpg'),
(5, 'a', '115.jpg'),
(6, 'a', '116.jpg'),
(7, 'a', '117.jpg'),
(8, 'a', '118.jpg'),
(9, 'a', '119.jpg'),
(10, 'a', '120.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `texto` varchar(5000) NOT NULL,
  `textoApresentacao` varchar(500) NOT NULL,
  `dataNoticia` date NOT NULL,
  `autor` varchar(100) NOT NULL,
  `imagemNoticia` varchar(100) DEFAULT NULL,
  `linkVideo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `texto`, `textoApresentacao`, `dataNoticia`, `autor`, `imagemNoticia`, `linkVideo`) VALUES
(41, 'REBM na Mostra Empresarial e Institucional do Barreiro', '<p><strong><span style=\"font-weight: normal;\">A REBM ir&aacute; estar presente na MEI atrav&eacute;s do Stand da Cooperativa RUMO. A Mostra Empresarial e Instituicional iniciou-se a dia 9&nbsp; de agosto e ir&aacute; prolongar-se&nbsp; at&eacute; ao dia 18 de agosto. </span></strong></p>\n<p><strong><span style=\"font-weight: normal;\">No stand da RUMO estar&atilde;o representados os projetos Construindo Autonomias (CLDS+ Barreiro), Uma Cidade para Todos/as (CLDS Cidade Sol), Trilhos E5G (promovido pela Vitacaminho), Rede para a Empregab</span></strong><span style=\"font-weight: normal;\">ilidade Barreiro-Moita (REBM) e os/as v&aacute;rios/as empreendedores/as&nbsp;</span> <span style=\"font-weight: normal;\">e empres&aacute;rios/as acompanhados pelos diferentes Front Offices da REBM.</span></p>\n<p style=\"text-align: justify;\"><span style=\"font-weight: normal;\">&nbsp;</span></p>\n<p>&nbsp;</p>', '<p><span style=\"font-weight: normal;\">A REBM ir&aacute; estar presente na MEI atrav&eacute;s do Stand da Cooperativa RUMO. A Mostra Empresarial e Instituicional iniciou-se a dia 9&nbsp; de agosto e ir&aacute; prolongar-se&nbsp; at&eacute; ao dia 18 de agosto. </span></p>', '2014-03-26', 'Rede Empregabilidade Barreiro Moita', '41.jpg', NULL),
(42, 'I Encontro Internacional de Economia Solidária', '<p><span style=\"font-size: 10pt; font-family: Arial,sans-serif; color: #333333;\"><span style=\"font-size: 10pt; font-family: Arial,sans-serif; color: #333333;\">O I Encontro internacional tem como objectivo fortalecer a economia solid&aacute;ria em Portugal no &acirc;mbito das iniciativas locais, entidades e universidades, por meio da dissemina&ccedil;&atilde;o e da partilha de m&eacute;todos e aprendizagens em incuba&ccedil;&atilde;o, destinado a incubadoras e grupos interessados em processos de desenvolvimento local e territorial a partir da &oacute;ptica da Economia Solid&aacute;ria.</span>&nbsp;</span><span style=\"font-size: 8.5pt; font-family: Arial,sans-serif; color: #333333;\"> <br /></span></p>\r\n<h2 style=\"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: Times New Roman,serif; text-align: justify;\"><span style=\"font-size: 8.5pt; font-family: Helvetica,sans-serif; color: #333333;\">&nbsp;</span></h2>\r\n<p>&nbsp;</p>', '<p><span style=\"font-size: 10pt; font-family: Arial,sans-serif; color: #333333;\">O I Encontro internacional tem como objectivo fortalecer a economia solid&aacute;ria em Portugal.&nbsp; </span></p>', '2014-03-26', 'Rede Empregabilidade Barreiro Moita', '42.jpg', NULL),
(43, 'Quem se Importa', '<p style=\"text-align: justify;\">A todos os parceiros e amigos da REBM, temos o prazer de convidar, para&nbsp;assistir ao Filme &ldquo;Quem se Importa&rdquo;, a ter lugar no dia 18 de Setembro no Audit&oacute;rio Lar S. Jos&eacute; Oper&aacute;rio.</p>\r\n<p style=\"text-align: justify;\">Quem se importa&rdquo; &eacute; mais que um filme, &eacute; um MOVIMENTO! Um movimento que inspira as pessoas a serem Empreendedoras, um filme que nos ensina QUE TUDO &Eacute; POSS&Iacute;VEL. O document&aacute;rio &eacute; realizado por Mara Mour&atilde;o, narrado por Rodrigo Santoro e mostra o trabalho de 18 empreendedores sociais cujas ideias vision&aacute;rias j&aacute; transformaram milh&otilde;es de vidas. S&atilde;o pessoas reais &ndash; algumas delas s&atilde;o grandes nomes internacionais como Muhammed Yunus (Nobel da Paz 2006) ou Bill Drayton da Ashoka &ndash; capazes n&atilde;o s&oacute; de mudar a sociedade em redor, mas tamb&eacute;m de causar o impacto social para que essas ideias possam transformar-se em pol&iacute;ticas p&uacute;blicas pelo mundo fora.</p>\r\n<p style=\"text-align: justify;\">Recomendado pela UNESCO, o filme ganhou recentemente o pr&eacute;mio de melhor document&aacute;rio no DocMiami International Film Festival. Foi ainda selecionado oficialmente para outros festivais, nomeadamente, 6&ordf; Mostra de Cinema e Direitos Humanos na Am&eacute;rica do Sul, La Femme Filme Festival em Los Angeles, Heartland Film Festival em Indianapolis, Washington DC International Fim Festival e Transitions Film Festival Australia.</p>', '<p>Filme &ldquo;Quem se Importa&rdquo;, a ter lugar no dia 18 de Setembro no Audit&oacute;rio Lar S. Jos&eacute; Oper&aacute;rio.</p>', '2014-03-27', 'Rede Empregabilidade Barreiro Moita', '43.jpg', NULL),
(44, 'Sessões de Esclarecimento Projeto ATEC/ Fundação Volkwagen', '<p style=\"text-align: justify;\">A ATEC , em parceria com a Rede para a Empregabilidade Barreiro Moita, ir&aacute; realizar &nbsp;Sess&otilde;es de Esclarecimento com ao objetivo de apresentar e clarificar o seu Projeto formativo com a Funda&ccedil;&atilde;o Volkwagen, &nbsp;junto de jovens potencialmente interessados residentes nos concelhos do Barreiro e Moita .</p>\r\n<p style=\"text-align: justify;\">&nbsp;Estas sess&otilde;es &nbsp;s&atilde;o destinadas&nbsp; a todos os &nbsp;jovens j&aacute; identificados pelas vossas organiza&ccedil;&otilde;es e &nbsp;cujos processos j&aacute; foram remetidos &nbsp;&agrave; ATEC, &nbsp;quer outros que possam enquadrar-se no perfil pretendido.</p>\r\n<p style=\"text-align: justify;\">&nbsp;Realizar-se-&atilde;o duas sess&otilde;es, uma em cada concelho</p>\r\n<p style=\"text-align: justify;\">-&nbsp;Sess&atilde;o&nbsp;&nbsp; Barreiro- Dia 12 Setembro- 9.30 Horas- Espa&ccedil;o J - Mercado Municipal 1&ordm; Maio, 1&ordm; andar- Avenida Alfredo da Silva- 2830-302 Barreiro</p>\r\n<p style=\"text-align: justify;\">-&nbsp;Sess&atilde;o Moita- Dia 12 de Setembro- 11.30 Horas- Espa&ccedil;o BXB - Praceta Portugal n&ordm; 7- Baixa da Banheira - 2835-038 Baixa da Banheira</p>', '<p>A ATEC , em parceria com a Rede para a Empregabilidade Barreiro Moita, ir&aacute; realizar &nbsp;Sess&otilde;es de Esclarecimento com ao objetivo de apresentar e clarificar o seu Projeto formativo com a Funda&ccedil;&atilde;o Volkwagen.<font size=\"3\"><span style=\"font-family: Calibri,sans-serif; background: none repeat scroll 0% 0% white;\"><br /></span></font></p>', '2014-03-26', 'Rede Empregabilidade Barreiro Moita', '44.jpg', NULL),
(45, 'Formação na metodologia SPIRAL', '<p>O Secretariado da Rede para a Empregabilidade Barreiro-Moita, o CLDS Barreiro e o CLDS+Barreiro estiveram presentes nos tr&ecirc;s dias de forma&ccedil;&atilde;o sobre a metodologia SPIRAL- Societal Progress Indicators for the Responsability of All, promovida pelo Conselho da Europa. A forma&ccedil;&atilde;o decorreu na Biblioteca Municipal de Odemira e foi ministrada por Samuel Thirion, do Conselho da Europa. A SPIRAL &eacute; uma metodologia participativa de diagn&oacute;stico, monitoriza&ccedil;&atilde;o e avalia&ccedil;&atilde;o de projetos.</p>', '<p>O Secretariado da Rede para a Empregabilidade Barreiro-Moita, o CLDS Barreiro e o CLDS+Barreiro estiveram presentes nos tr&ecirc;s dias de forma&ccedil;&atilde;o sobre a metodologia SPIRAL</p>', '2014-03-26', 'Rede Empregabilidade Barreiro Moita', '45.jpg', NULL),
(46, 'Visionamento do filme \"Quem se importa?\"', '<p>Decorreu no passado dia 18 de setembro o visionamento do premiado document&aacute;rio brasileiro \"Quem se importa?\", no Lar de S. Jos&eacute; Oper&aacute;rio na Baixa da Banheira. Ap&oacute;s este inspirador document&aacute;rio, realizou-se um debate/ reflex&atilde;o, animado pelo Carlos Ramos (fundador do Barreiro Rocks, da F&aacute;brica de M&uacute;sica e da Associa&ccedil;&atilde;o Hey Pachuco!), Paulo Canas (CLDS Moita/ SCMAV) e Ana Adega (Secretariado da RE BM). Agradecemos, em nome de toda a Rede para a Empregabilidade, a presen&ccedil;a de todos/as.</p>', '<p>Decorreu no passado dia 18 de setembro o visionamento do premiado document&aacute;rio brasileiro \"Quem se importa?\", no Lar de S. Jos&eacute; Oper&aacute;rio na Baixa da Banheira.</p>', '2014-03-26', 'Rede Empregabilidade Barreiro Moita', '46.jpg', NULL),
(47, 'Sessão de Esclarecimento- Programa Juventude em ação', '<p style=\"margin-bottom: 12.0pt;\"><span style=\"font-family: arial,sans-serif;\">O Projeto BXB Projovem (escolhas 5&ordm; gera&ccedil;&atilde;o)&nbsp; vai realizar uma Sess&atilde;o de esclarecimento acerca do Programa Juventude em a&ccedil;&atilde;o, programa europeu de apoio &agrave; mobilidade Juvenil, que ir&aacute; contar com a presen&ccedil;a da Funda&ccedil;&atilde;o Juventude. </span></p>\r\n<p style=\"margin-bottom: 12.0pt;\"><span style=\"font-family: arial,sans-serif;\">Ser&aacute; uma boa oportunidade para conhecer as potencialidades deste programa. </span></p>\r\n<p style=\"margin-bottom: 12.0pt;\"><span style=\"font-family: arial,sans-serif;\">A sess&atilde;o &eacute; dirigida a jovens, mas tamb&eacute;m poder&atilde;o participar tecnicos/as de organiza&ccedil;&otilde;es dos territ&oacute;rios que desenvolvam interven&ccedil;&atilde;o com estes publicos. </span></p>', '<p><span style=\"font-family: arial,sans-serif;\">O Projeto BXB Projovem (escolhas 5&ordm; gera&ccedil;&atilde;o)&nbsp; vai realizar uma Sess&atilde;o de esclarecimento acerca do Programa Juventude em a&ccedil;&atilde;o, programa europeu de apoio &agrave; mobilidade Juvenil, que ir&aacute; contar com a presen&ccedil;a da Funda&ccedil;&atilde;o Juventude. </span></p>', '2014-03-26', 'Rede Empregabilidade Barreiro Moita', '47.jpg', NULL),
(48, 'Formação de técnicos/as em Emprego Apoiado', '<p style=\"text-align: justify;\">A Cooperativa RUMO em parceria com a APEA- Associa&ccedil;&atilde;o Portuguesa de Emprego Apoiado, no seguimento dos v&aacute;rios feedbacks dos/as parceiros/as da REBM, vai desenvolver uma forma&ccedil;&atilde;o em Inova&ccedil;&atilde;o para a Empregabilidade, destinada a t&eacute;cnicos/as da REBM.</p>\r\n<p style=\"text-align: justify;\">Esta forma&ccedil;&atilde;o surge com a finalidade de facilitar a implementa&ccedil;&atilde;o de uma interven&ccedil;&atilde;o baseada no modelo de emprego apoiado, dotando os/as profissionais de expertise neste dom&iacute;nio, contribuindo para efic&aacute;cia das pr&aacute;ticas e interven&ccedil;&otilde;es junto das pessoas em situa&ccedil;&atilde;o de desvantagem.A referida &nbsp;forma&ccedil;&atilde;o ter&aacute; lugar nos &nbsp;dias 14 e 28 de Novembro e 19 de Dezembro, das 9.30h &agrave;s 17.30 horas, nas instala&ccedil;&otilde;es do Museu Industrial, no Parque Empresarial Baia do Tejo (antiga Quimiparque)</p>', '<p style=\"text-align: justify; padding-left: 30px;\">A Cooperativa RUMO em parceria com a APEA- Associa&ccedil;&atilde;o Portuguesa de Emprego Apoiado, no seguimento dos v&aacute;rios feedbacks dos/as parceiros/as da REBM, vai desenvolver uma forma&ccedil;&atilde;o em Inova&ccedil;&atilde;o para a Empregabilidade, destinada a t&eacute;cnicos/as da REBM.</p>', '2014-03-26', 'Rede Empregabilidade Barreiro Moita', '48.jpg', NULL),
(50, 'Sessão de Esclarecimento sobre o “Fundo Revitalizar”', '<p>A Rede para a Empregabilidade Barreiro-Moita e a Ba&iacute;a do Tejo em parceria com a Capital Criativo- Sociedade de Capital de Risco, organizou uma sess&atilde;o de esclarecimento sobre o Fundo &ldquo;Revitalizar Sul - Investimento e Expans&atilde;o de PME nas regi&otilde;es de Lisboa, Alentejo e Algarve&rdquo;.</p>\n<p>A sess&atilde;o realizou-se no passado dia 11 de Mar&ccedil;o, pelas 18h no Museu Industrial, contando com a presen&ccedil;a de mais de 20 empresas da regi&atilde;o.</p>\n<p>Este Fundo disponibiliza &agrave;s PME capitais que podem chegar a 4,5 milh&otilde;es de euros por empresa, num montante total de financiamento de 60 milh&otilde;es de euros.</p>\n<p>Mais informa&ccedil;&otilde;es em&nbsp;<a href=\"http://www.capitalcriativo.com/pt/client/skins/geral.php?page=7&amp;cat=4\" target=\"_blank\">http://www.capitalcriativo.com/pt/client/skins/geral.php?page=7&amp;cat=4</a></p>\n<p>&nbsp;</p>', '<p>A Rede para a Empregabilidade Barreiro-Moita e a Ba&iacute;a do Tejo em parceria com a Capital Criativo- Sociedade de Capital de Risco, organizou uma sess&atilde;o de esclarecimento sobre o Fundo &ldquo;Revitalizar Sul\"</p>', '2014-04-11', 'Teste', '50.jpg', NULL),
(51, 'IGNITE Barreiro 2014', '<p>Pelo segundo ano&nbsp;consecutivo&nbsp;o Barreiro receber&aacute;&nbsp;um evento do Ignite Portugal!</p>\n<p>Este ano&nbsp;o&nbsp;tema&nbsp;&eacute;:&nbsp;&acute;O sul do Tejo &eacute; geoestrat&eacute;gico&acute;.</p>\n<p>Marca na tua agenda:&nbsp;15 de maio, a partir das 19:00, na Escola Superior de Tecnologia do Barreiro.</p>', '<p>Pelo segundo ano&nbsp;consecutivo&nbsp;o Barreiro receber&aacute;&nbsp;um evento do Ignite Portugal! Este ano&nbsp;o&nbsp;tema&nbsp;&eacute;: &acute;O sul do Tejo &eacute; geoestrat&eacute;gico&acute;. Marca na tua agenda:&nbsp;15 de maio, a partir das 19:00, na Escola Superior de Tecnologia do Barreiro.</p>', '2014-04-27', 'Ignite Barreiro', '51.png', NULL),
(52, 'III Fórum de Desenvolvimento Local Barreiro-Moita', '<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; color: #222222; text-align: justify;\">A&nbsp;<strong>Rede para a Empregabilidade Barreiro-Moita (REBM)</strong>&nbsp;est&aacute; a organizar, pelo terceiro ano consecutivo, o&nbsp;<strong>F&oacute;rum de Desenvolvimento Local Barreiro-Moita.<u></u><u></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; color: #222222; text-align: justify;\">O III F&oacute;rum de Desenvolvimento Local est&aacute; a ser organizado pela REBM em estreita colabora&ccedil;&atilde;o com as autarquias do&nbsp;<strong>Barreiro e Moita</strong>&nbsp;e visa fomentar o surgimento de novas iniciativas que incrementem a&nbsp;<strong>competitividade, empregabilidade e desenvolvimento</strong>&nbsp;dos respetivos concelhos.<u></u><u></u></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; color: #222222; text-align: justify;\">Este F&oacute;rum ser&aacute; um oportuno momento para a reflex&atilde;o em torno do desenvolvimento local, juntando no mesmo painel empres&aacute;rios/as), empreendedores, autarcas, administradores/as de institutos p&uacute;blicos, entidades formadoras que operam nesta regi&atilde;o e outros atores para um importante e decisivo debate. Os eixos estrat&eacute;gicos para o desenvolvimento local sobre os quais se vai aprofundar a reflex&atilde;o e debate, com o apoio de especialistas de refer&ecirc;ncia, s&atilde;o:<u></u><u></u></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; color: #222222; text-align: justify;\"><strong>- Artes, Cultura e Patrim&oacute;nio;<u></u><u></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; color: #222222; text-align: justify;\"><strong>- Turismo, Rio e Ambiente;<u></u><u></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; color: #222222; text-align: justify;\"><strong>- Tecnologia e Desenvolvimento Local;<u></u><u></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; color: #222222; text-align: justify;\"><strong>- Competitividade, Din&acirc;mica Empresarial e Internacionaliza&ccedil;&atilde;o.<u></u><u></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; color: #222222; text-align: justify;\">O F&oacute;rum de Desenvolvimento Local ter&aacute; o formato de uma&nbsp;<strong>Sess&atilde;o Plen&aacute;ria</strong>&nbsp;seguido de quatro&nbsp;<strong>Oficinas de Trabalho</strong>, correspondentes aos eixos estrat&eacute;gicos identificados, tendo in&iacute;cio &agrave;s 9h30 e t&eacute;rmino previsto para as 18h<span style=\"color: #1f497d;\">&nbsp;e</span>&nbsp;ter&aacute; lugar no pr&oacute;ximo dia&nbsp;<strong>31 de Maio</strong>, nas&nbsp;<strong>Oficinas EMEF</strong>- Empresa de Manuten&ccedil;&atilde;o do Equipamento Ferrovi&aacute;rio- Av. da Rep&uacute;blica s/n&nbsp;<strong>2830-305 Barreiro.</strong>O programa do F&oacute;rum est&aacute; em fase de finaliza&ccedil;&atilde;o e ser&aacute; enviado em breve.</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; color: #222222;\"><span style=\"color: #1f497d;\">Inscri&ccedil;&otilde;es em:&nbsp;<a style=\"color: #1155cc;\" href=\"mailto:forum.desenvolvimento1@gmail.com\" target=\"_blank\">forum.desenvolvimento1@gmail.<wbr />com</a><u></u><u></u></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; color: #222222;\"><span style=\"color: #1f497d;\">Contatos telef&oacute;nicos: 96836 26 12| 96792 06 81 | 21 206 49 20</span></p>', '<p>O III Forum de desenvolvimento Local reuniu cerca de 160 pessoa nas Oficinas da EMEF, em torno de um debate estrat&eacute;gico &nbsp;organizado em 4 &aacute;reas de trabalho tem&aacute;ticas.&nbsp;</p>', '2014-04-29', 'Miguel Lopes', '52.jpg', NULL),
(53, 'REBM em reflexão estratégica', '<p>No passado dia 26 de Junho &agrave;s 14 Horas realizou-se&nbsp; nas instala&ccedil;&otilde;es da<strong> &nbsp; Escola Superior de Tecnologia do Barreiro o</strong>&nbsp;ultimo Plen&aacute;rio da REBM antes do periodo de f&eacute;rias<strong>.&nbsp;</strong>A reuni&atilde;o visou a constru&ccedil;&atilde;o e prepara&ccedil;&atilde;o&nbsp; coletiva do plano estrat&eacute;gico da REBM, &nbsp;tarefa que&nbsp; contou com o m&aacute;ximo de&nbsp; empenho e de&nbsp; participa&ccedil;&atilde;o&nbsp; de todos(as).</p>', '<p>No passado dia 26 de Junho realizou-se&nbsp; nas instala&ccedil;&otilde;es da<strong>&nbsp;Escola Superior de Tecnologia do Barreiro o</strong>&nbsp;ultimo Plen&aacute;rio da REBM antes do periodo de f&eacute;rias<strong>.&nbsp;</strong>A reuni&atilde;o visou a constru&ccedil;&atilde;o e prepara&ccedil;&atilde;o coletiva do plano estrat&eacute;gico da REBM.</p>', '2014-07-03', 'Ana Adega', '53.jpg', NULL),
(54, 'REBM presente na Mostra Empresarial e Institucional do Barreiro', '<p class=\"MsoNormal\">No stand da REBM estiveram&nbsp; representados as v&aacute;rios/as empreendedores/as e empres&aacute;rios/as acompanhados pela REBM.&nbsp; Tivemos muito gosto que o stand pudesse ter servido como mostra de projetos e iniciativas dos/as parceiros/as da REBM!&nbsp;</p>', '<p>No stand da REBM estiveram&nbsp; representados as v&aacute;rios/as empreendedores/as e empres&aacute;rios/as acompanhados pela REBM.&nbsp; Tivemos muito gosto que o stand pudesse ter servido como mostra de projetos e iniciativas dos/as parceiros/as da REBM!</p>', '2014-08-25', 'Ana Adega ', '54.jpg', NULL),
(55, 'Sessão de apresentação condições de acesso aos mercados do Barreiro', '<p>A partir do dia 3 de Dezembro, est&aacute; aberta a segunda fase do concurso da C&acirc;mara Municipal do Barreiro para o aluguer de bancas e lojas nos mercados do Barreiro. Est&atilde;o dispon&iacute;veis espa&ccedil;os por menos de 20 euros por m&ecirc;s.</p>\n<p>Atrav&eacute;s de candidatura (para processo de ajuste direto), qualquer indiv&iacute;duo ou empresa, que esteja nas condi&ccedil;&otilde;es legais definidas em regulamento, poder&aacute; alugar um espa&ccedil;o nos seguintes mercados: &laquo;1&ordm; de Maio&raquo;, &laquo;Abastecedor&raquo;, &laquo;Coina&raquo;, &laquo;Lavradio&raquo; e &laquo;Santo Andr&eacute;&raquo;. Esta &eacute; uma oportunidade para abrir um ponto de venda para pequenos neg&oacute;cios.</p>\n<p>A 1&ordf; sess&atilde;o de apresenta&ccedil;&atilde;o e esclarecimento do concurso decorreu no passado dia 3 de Dezembro, pelas 16.30h, no mercado &laquo;1&ordm; de Maio&raquo;. Esta sess&atilde;o Foi dinamizada pela C&acirc;mara Municipal do Barreiro e pela Rumo, no &acirc;mbito das actividades da Rede Para a Empregabilidade do Barreiro e Moita.</p>', '<p>A 1&ordf; sess&atilde;o de apresenta&ccedil;&atilde;o e esclarecimento do concurso decorreu no passado dia 3 de Dezembro, pelas 16.30h, no mercado &laquo;1&ordm; de Maio&raquo;. Esta sess&atilde;o Foi dinamizada pela C&acirc;mara Municipal do Barreiro e pela Rumo, no &acirc;mbito das actividades da REBM.</p>', '2014-12-18', 'Ana Adega ', '55.jpg', NULL),
(56, 'REBM apoia desenvolvimento da DLBC Barreiro', '<p>A REBM apoiou um conjunto de encontros com o objetivo de definir a Estrat&eacute;gia de Desenvolvimento Local para o DLBC da Cidade do Barreiro. &nbsp;O envolvimento de parceiros neste processo de constru&ccedil;&atilde;o conjunta permitir&aacute; definir as principais linhas de orienta&ccedil;&atilde;o para o desenvolvimento de grande parte do territ&oacute;rio do Barreiro, integrando os interesses das v&aacute;rias organiza&ccedil;&otilde;es, numa plataforma de negocia&ccedil;&atilde;o integrativa que poder&aacute; melhorar a qualidade da resposta e a sustentabilidade das organiza&ccedil;&otilde;es e do territ&oacute;rio.&nbsp;</p>', '<p>A REBM apoiou um conjunto de encontros com o objetivo de definir a Estrat&eacute;gia de Desenvolvimento Local para o DLBC da Cidade do Barreiro.&nbsp;</p>', '2014-12-21', 'Ana Adega ', '56.jpg', NULL),
(57, 'Ciclo de Empreendedorismo a decorrer no Vale da Amoreira', '<p>Ciclo de Empreendedorismo a decorrer no Vale da Amoreira. Inscreva-se num front office da REBM!</p>', '<p>Ciclo de Empreendedorismo a decorrer no Vale da Amoreira. Inscreva-se num front office da REBM!</p>', '2015-01-27', 'Ana Adega ', '57.jpg', NULL),
(60, 'II Encontro Oferta e Desenvolvimento Local aconteceu a 11 de Março 2015', '<p>O 1&ordm; Encontro de Oferta Formativa, decorrido em 2014,&nbsp;mobilizou um n&uacute;mero &nbsp;de operadores-chave da regi&atilde;o para trabalhar neste sentido. A edi&ccedil;&atilde;o de 2015 representou um passo significativo na integra&ccedil;&atilde;o e refor&ccedil;o da colabora&ccedil;&atilde;o entre estas entidades. Este processo vem refor&ccedil;ar a import&acirc;ncia da oferta formativa e das escolas como pilares fundamentais da cria&ccedil;&atilde;o de novas respostas de desenvolvimento territorial integrado.</p>', 'Este processo permitiu reforçar a importância da oferta formativa e das escolas como pilares fundamentais da criação de novas respostas de desenvolvimento territorial integrado.', '2015-03-17', 'Ana Adega', '60.jpg', NULL),
(61, 'REBM e Heading Recursos Humanos desenvolvem projeto conjunto', '<p>Sess&otilde;es de esclarecimento decorrer&atilde;o nos dias 26 e 27 de Mar&ccedil;o &agrave;s 14.30 na RUMO- Parque Empresarial Baia do Tejo, Rua 19 n&ordm; 13</p>', 'Inscreva-se  num front offices da REBM!', '2015-03-17', 'Ana Adega', '59.jpg', NULL),
(64, 'APEA é Anfitriã da 12º Conferência Internacional de Emprego Apoiado ', '<p>O Emprego Apoiado &eacute; um movimento internacional que procura promover o emprego e a inclus&atilde;o social de pessoas em situa&ccedil;&atilde;o de desvantagem, incrementando a articula&ccedil;&atilde;o com o setor empresarial.</p>\r\n<p>A 12&ordf; Confer&ecirc;ncia Europeia de Emprego Apoiado trar&aacute; a Portugal especialistas de diversos pa&iacute;ses europeus, dos EUA, do Canad&aacute;, Argentina e do Brasil, entre outros.</p>\r\n<p>S&atilde;o esperados participantes de 35 pa&iacute;ses e, tal como em anteriores Confer&ecirc;ncias da EUSE (Roterd&atilde;o, Dublin, Oslo, Barcelona, Roma, Copenhaga, Praga, entre outras cidades europeias), ser&atilde;o apresentados resultados da investiga&ccedil;&atilde;o e das melhores pr&aacute;ticas de inser&ccedil;&atilde;o profissional, empreendedorismo e desenvolvimento local.</p>', 'A Associação Portuguesa de Emprego Apoiado e a European Union of Supported Employment estão a organizar a 12ª Conferência Europeia de Emprego Apoiado', '2015-05-25', 'Ana Adega ', '64.jpg', NULL),
(65, 'Preparação do FORÚM de DESENVOLVIMENTO LOCAL', '<p>No dia 10.7.2015 na Escola Conde de Ferreira decorreu mais uma reuni&atilde;o de Prepara&ccedil;&atilde;o do F&Oacute;RUM DE DESENVOLVIMENTO LOCAL do Barreiro e Moita. O Forum ir&aacute; decorrer a 12 de Novembro.&nbsp;</p>\n<p>&nbsp;Mais uma iniciativa da Rede para a Empregabilidade do Barreiro e Moita !</p>', ' No dia 10.7.2015 na Escola Conde de Ferreira decorreu mais uma reunião de Preparação do FÓRUM DE DESENVOLVIMENTO LOCAL do Barreiro e Moita. O Forum irá decorrer a 12 de Novembro. \r\n\r\nMais uma iniciativa da Rede para a Empregabilidade do Barreiro e Moita !', '2015-07-31', 'Ana Adega ', '65.jpg', NULL),
(68, 'IV FORUM DESENVOLVIMENTO LOCAL', 'A Rede para a Empregabilidade do Barreiro-Moita com o apoio da Câmara Municipal do Barreiro e da Câmara Municipal da Moita irá organizar o IV Fórum de Desenvolvimento Local a ter lugar no próximo dia 12 de Novembro no Auditório José Manuel Figueiredo (Baixa da Banheira).\r\n<p>O F&oacute;rum de Desenvolvimento Local visa incentivar o desenvolvimento socioecon&oacute;mico dos territ&oacute;rios do Barreiro e Moita, sustentado pelas suas compet&ecirc;ncias e potencialidades end&oacute;genas.</p>\r\n<p>Nesta IV edi&ccedil;&atilde;o, pretende-se abordar as potencialidades do Rio /Estu&aacute;rio como motor de desenvolvimento econ&oacute;mico local, &nbsp;encetando um debate em torno do rio enquanto patrim&oacute;nio da regi&atilde;o gerador de atividade econ&oacute;mica e da forma&ccedil;&atilde;o de novos neg&oacute;cios.</p>\r\n<p>O Rio, um Mar de oportunidades!</p>\r\n<p>Caso tenha alguma dificuldade em efetuar a sua inscri&ccedil;&atilde;o contate-nos atrav&eacute;s do 967920681 ou empregabilidadebm@gmail.com</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'A Rede para a Empregabilidade do Barreiro-Moita com o apoio da Câmara Municipal do Barreiro e da Câmara Municipal da Moita irá organizar o IV Fórum de Desenvolvimento Local a ter lugar no próximo...', '2015-10-07', 'REBM', '68.png', NULL),
(69, 'Encontro dos Gabinetes de Primeira Linha da REBM', 'No passado dia 26 de Novembro na Escola Tecnica Profissional da Moita, &nbsp;os Gabinetes de Primeira linha da REBM &nbsp;estiveram reunidos, &nbsp;refletindo em torno das &aacute;reas de interven&ccedil;&atilde;o futura e trabalhando algumas din&acirc;micas de fortalecimento da sua coes&atilde;o.\r\n<p>O trabalho em equipa &nbsp;e a lideran&ccedil;a foram os temas aprofundados neste encontro.</p>\r\n<p>A sess&atilde;o de trabalhos culminou &nbsp;com um amig&aacute;vel e caloroso lanche partilhado!</p>', '<p>No passado dia 26 de Novembro de 2015, os Gabinetes de Primeira linha da REBM estiveram reunidos, refletindo em torno das &aacute;reas de interven&ccedil;&atilde;o futura e trabalhando algumas din&acirc;micas de fortalecimento da coes&atilde;o da din&acirc;mica de rede.</p>', '2015-12-01', 'Ana Adega', '69.jpg', NULL),
(71, 'Parceria REBM/CINEL forma eletricistas e informáticos', 'Uma parceria da REBM, envolvendo estabelecimentos de ensino do Barreiro e da Moita com o CINEL (Centro de Formação Profissional da Indústria Electrónica, Energia, Telecomunicações e Tecnologias da Informação) resulta na concretização de 2 cursos de vida ativa (com 300 horas) nas áreas da eletricidade e informática respetivamente.\r\nDurante os meses de verão estarão a funcionar duas turmas, uma na Escola Secundária Baixa da Banheira (Operador de eletricista, com 24 participantes) e outra na Escola Superior de Tecnologia do Barreiro (informática, com 22 participantes). A realização destas ações ao nível local assenta num acompanhamento de proximidade (proporcionado pelos técnicos de referência dos vários front-offices) e de ligação estreita com a equipa formativa do CINEL.\r\nA dinâmica de divulgação e dinamização do curso permitiu identificar cerca de 81 candidatos elegíveis e motivados para estas duas ações. Este é mais um exemplo que revela o potencial de trabalho em rede na criação de soluções formativas adequadas às necessidades do mercado de trabalho.', 'Uma parceria da REBM, envolvendo estabelecimentos de ensino do Barreiro e da Moita com o CINEL (Centro de Formação Profissional da Indústria Electrónica, Energia, Telecomunicações e Tecnologias ...', '2016-08-30', 'Ana Adega', '71.jpg', ''),
(72, 'Técnicos das redes «brincam» no Alvito', '<p>25 técnicas/os das diversas redes de empregabilidade da região de Lisboa realizaram um bootcamp  no passado dia 29.6.2016 no Parque do Alvito, em Lisboa, para partilhar experiências e desenvolver competências de promoção da empregabilidade e do emprego apoiado. O evento foi coorganizado pelo secretariado da REBM, a APEA (Associação Portuguesa de Emprego Apoiado) e pelos promotores do projeto BIPZIP (Power-UP) que está a servir de base para testar estas abordagens nas freguesias de Carnide e São Domingos de Benfica.\r\nA atividade revelou-se um momento de aprendizagem mútua e colaborativa de caráter presencial com as diversas comunidades de aprendizagem /redes de empregabilidade, aprofundando os diversos avanços metodológicos, com base na partilha de soluções e a apresentação dos impactos e casos de sucesso. Estiveram presentes representantes das redes de Lisboa, Sintra, Barreiro|Moita, Oeiras e da futura rede de Loures.</p>', '<p>25 técnicas/os das diversas redes de empregabilidade da região de Lisboa realizaram um bootcamp  no passado dia 29.6.2016 no Parque do Alvito, em Lisboa, para partilhar experiências...</p>', '2016-08-29', 'Ana Adega', '72.jpg', NULL),
(73, 'REBM forma técnicos para o empreendedorismo inclusivo', '<p>Nos dias 17 e 23 de Junho, no Centro de Experimentação Artística do Vale da Amoreira, realizaram-se duas sessões de capacitação de técnicos dos gabinetes de 1ª linha da REBM sobre empresarialidade e empreendedorismo. Esta capacitação serviu também para aprofundar relacionamentos e cumplicidades de trabalho cooperativo, para identificar as necessidades e as condições de apoio aos empreendedores e potenciais empreendedores e para afinar o processo de estruturação da rede de serviços de apoio a criar no âmbito da RADL (Rede de Apoio ao Desenvolvimento Local).</p><p>Este é mais um passo no sentido de concretização de uma rede de apoio/suporte à economia de base local, envolvendo associações empresariais como a AERLIS, a IDSet, a ACISBM e a CPPME, numa estratégia de aproximação às empresas, de modo a identificar as suas necessidades de desenvolvimento e qualificação.</p>', '<p>Nos dias 17 e 23 de Junho, no Centro de Experimentação Artística do Vale da Amoreira, realizaram-se duas sessões de capacitação de técnicos dos gabinetes de 1ª linha da REBM...</p>', '2016-08-26', 'Ana Adega', '73.jpg', NULL),
(98, 'Exemplo 01 - Lorem Ipsum', 'O Lorem Ipsum é um texto modelo da indústria tipográfica e de impressão. \r\nO Lorem Ipsum tem vindo a ser o texto padrão usado por estas indústrias desde o ano de 1500, quando uma misturou os caracteres de um texto para criar um espécime de livro.\r\nEste texto não só sobreviveu 5 séculos, mas também o salto para a tipografia electrónica, mantendo-se essencialmente inalterada.\r\nFoi popularizada nos anos 60 com a disponibilização das folhas de Letraset, que continham passagens com Lorem Ipsum, e mais recentemente com os programas de publicação como o Aldus PageMaker que incluem versões do Lorem Ipsum.', 'O Lorem Ipsum é um texto modelo da indústria tipográfica e de impressão. \r\nO Lorem Ipsum tem vindo a ser o texto padrão usado por estas indústrias desde o ano de 1500, quando uma misturou os car...', '2019-06-13', 'Gonçalo Fernandes', 'fcaee224a33bd85fef51debf9bf52312.jpg', 'https://www.youtube.com/embed/Bey4XXJAqS8'),
(99, 'Exemplo 02 - Lorem Ipsum - De onde vem', 'Ao contrário da crença popular, o Lorem Ipsum não é simplesmente texto aleatório. Tem raízes numa peça de literatura clássica em Latim, de 45 AC, tornando-o com mais de 2000 anos. Richard McClintock, um professor de Latim no Colégio Hampden-Sydney, na Virgínia, procurou uma das palavras em Latim mais obscuras (consectetur) numa passagem Lorem Ipsum, e atravessando as cidades do mundo na literatura clássica, descobriu a sua origem. Lorem Ipsum vem das secções 1.10.32 e 1.10.33 do \"de Finibus Bonorum et Malorum\" (Os Extremos do Bem e do Mal), por Cícero, escrito a 45AC. Este livro é um tratado na teoria da ética, muito popular durante a Renascença. A primeira linha de Lorem Ipsum, \"Lorem ipsum dolor sit amet...\" aparece de uma linha na secção 1.10.32.\r\nO pedaço mais habitual do Lorem Ipsum usado desde os anos 1500 é reproduzido abaixo para os interessados. As secções 1.10.32 e 1.10.33 do \"de Finibus Bonorum et Malorum\" do Cícero também estão reproduzidos na sua forma original, acompanhados pela sua tradução em Inglês, versões da tradução de 1914 por H. Rackham.', 'Ao contrário da crença popular, o Lorem Ipsum não é simplesmente texto aleatório. Tem raízes numa peça de literatura clássica em Latim, de 45 AC, tornando-o com mais de 2000 anos. Richard McCl...', '2019-06-13', 'Gonçalo Fernandes', '09b4bfaae30e699facb57ab2d1422e53.jpg', ''),
(101, 'Teste77', 'Testes TestesTestesTestes aoagl TestesTestes\r\nFAFofl Testes', 'Testes TestesTestesTestes aoagl TestesTestes\r\nFAFofl Testes...', '2019-06-17', 'Gonçalo Fernandes', '1560776567-218297.jpg', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ofertasformativas`
--

CREATE TABLE `ofertasformativas` (
  `dataCriacao` date NOT NULL,
  `disponiveis` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `outras` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `ofertasformativas`
--

INSERT INTO `ofertasformativas` (`dataCriacao`, `disponiveis`, `outras`) VALUES
('2016-06-24', 'www.link.com', 'www.outro-link.com'),
('2016-07-28', 'www.anqep.gov.pt/', 'https://www.iefp.pt/');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pastas`
--

CREATE TABLE `pastas` (
  `id` int(11) NOT NULL,
  `pasta` varchar(50) NOT NULL,
  `pastaReal` varchar(50) NOT NULL,
  `pastaMae` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pastas`
--

INSERT INTO `pastas` (`id`, `pasta`, `pastaReal`, `pastaMae`) VALUES
(3, 'MateriaisDivulgacao', 'Materiais de Divulgação', NULL),
(4, 'PlanosAcao', 'Planos de Ação', NULL),
(5, 'Regulamento', 'Regulamento', NULL),
(7, 'PlanoAcao2013', 'Plano de ação 2013', 4),
(8, 'PlanoAcao2014', 'Plano de ação 2014', 4),
(9, 'PublicacoesEmpregoApoiado', 'Publicações Emprego Apoiado', NULL),
(10, 'ProjetoEmpregoApoiado', 'Projeto Emprego Apoiado', 9),
(11, 'ProjetoNautilus', 'Projeto Nautilus', 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidoacessoutentes`
--

CREATE TABLE `pedidoacessoutentes` (
  `id` int(6) NOT NULL,
  `resposta` int(1) NOT NULL,
  `idUtente` int(1) NOT NULL,
  `idTecnico` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `postosdetrabalho`
--

CREATE TABLE `postosdetrabalho` (
  `id` int(5) NOT NULL,
  `idEmpresa` int(11) NOT NULL,
  `trabalharAoSabado` int(1) DEFAULT NULL,
  `trabalharAoDomingo` int(1) DEFAULT NULL,
  `trabalhoNoturno` int(1) DEFAULT NULL,
  `partTime` int(1) DEFAULT NULL,
  `horasExtraordinarias` int(1) DEFAULT NULL,
  `turnos` int(1) DEFAULT NULL,
  `cartaConducao` int(1) DEFAULT NULL,
  `vencimentoBase` float DEFAULT NULL,
  `subsidioAlimentacao` int(1) DEFAULT NULL,
  `subsidioProdutividade` int(1) DEFAULT NULL,
  `subsidioTurnos` int(1) DEFAULT NULL,
  `compensacaoTransporte` int(1) DEFAULT NULL,
  `compensacaoMonetaria` int(1) DEFAULT NULL,
  `compensacaoOutra` int(1) DEFAULT NULL,
  `compensacaoOutraTexto` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `funcao` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `local` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `tipoTrabalho` int(1) DEFAULT NULL,
  `tipoContrato` int(1) DEFAULT NULL,
  `habilitacoesAcademicas` int(1) DEFAULT NULL,
  `habilitacoesProfissionais` int(1) DEFAULT NULL,
  `nivelTIC` int(1) DEFAULT NULL,
  `experienciaProfissional` int(1) DEFAULT NULL,
  `autonomia` int(1) DEFAULT NULL,
  `lideranca` int(1) DEFAULT NULL,
  `acessibilidade` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `exposicaoRiscos` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `exigenciasFuncionais` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `exigenciasCognitivas` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `exigenciasSocioRelacionais` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `contactoPublico` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `apresentacaoTrabalhador` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `trabalhoDiurno` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `postosdetrabalho`
--

INSERT INTO `postosdetrabalho` (`id`, `idEmpresa`, `trabalharAoSabado`, `trabalharAoDomingo`, `trabalhoNoturno`, `partTime`, `horasExtraordinarias`, `turnos`, `cartaConducao`, `vencimentoBase`, `subsidioAlimentacao`, `subsidioProdutividade`, `subsidioTurnos`, `compensacaoTransporte`, `compensacaoMonetaria`, `compensacaoOutra`, `compensacaoOutraTexto`, `funcao`, `local`, `tipoTrabalho`, `tipoContrato`, `habilitacoesAcademicas`, `habilitacoesProfissionais`, `nivelTIC`, `experienciaProfissional`, `autonomia`, `lideranca`, `acessibilidade`, `exposicaoRiscos`, `exigenciasFuncionais`, `exigenciasCognitivas`, `exigenciasSocioRelacionais`, `contactoPublico`, `apresentacaoTrabalhador`, `trabalhoDiurno`) VALUES
(2, 6, 1, 0, 0, 0, 5, 0, 8, 2100, 1, 0, 0, 0, 1, 0, '', 'Arquiteto', 'Lisboa', 2, 1, 5, 4, 2, 3, 4, 5, '', '', '', '', '', 'sim', '', 4),
(3, 6, 0, 0, 0, 0, 5, 6, 8, 800, 1, 0, 1, 0, 0, 0, 'BES Compensação', 'Banqueiro', 'Barreiro', 4, 1, 4, 3, 3, 2, 3, 3, '', '', 'sim', 'sim', '', 'sim', 'formal', 4),
(4, 6, 1, 2, 3, 0, 5, 6, 0, 560, 1, 0, 0, 0, 0, 0, 'Delphi Compensação', 'produção de linha', 'seixal', 26, 2, 2, 2, 2, 2, 3, 3, 'necessário estar de pé', '', '', '', '', '', '', 4),
(5, 8, 0, 0, 0, 0, 5, 0, 0, 750, 1, 0, 0, 1, 1, 0, '', 'Educadora de Infância', 'Qta do Conde', 15, 2, 4, 3, 1, 3, 3, 3, 'poder lidar com crianças', 'responsabilização por cada criança', '', '', '', '', 'apresentável', 4),
(6, 2, 1, 2, 3, 7, 5, 6, 8, 523, 1, 1, 1, 1, 1, 0, 'grgwegw', 'fewgewweg', 'gwwgegew', 5, 2, 4, 4, 3, 3, 3, 5, 'weggew', 'gegew', 'gewgwe', 'gewgew', 'gewgwe', 'gwegew', 'gewwgweg', 4),
(7, 2, 1, 2, 3, 7, 0, 0, 8, 1000, 1, 1, 0, 0, 1, 0, '', 'ewvewv', 'vewvwewe', 12, 5, 2, 1, 1, 1, 5, 5, 'ewfew', 'wqqwfwfq', 'wfqqwf', 'qfwwfq', 'fwqqwf', 'fqwqwf', 'fqwqwf', 4),
(8, 10, 0, 0, 0, 0, 0, 0, 8, 1000, 1, 1, 0, 0, 0, 0, '', 'Ass. Social', 'Barreiro', 42, 1, 5, 4, 4, 3, 4, 5, '', '', '', '', '', '', '', 4),
(9, 6, 1, 0, 0, 0, 5, 6, 0, 1200, 1, 0, 1, 0, 0, 0, '', 'Informatico', 'Lisboa', 31, 1, 4, 3, 5, 3, 4, 5, '', '', '', '', '', '', '', 4),
(10, 6, 1, 2, 3, 0, 5, 6, 0, 900, 1, 0, 1, 1, 0, 0, '', 'Telefonista', 'Lisboa', 6, 5, 3, 3, 3, 2, 4, 3, '', '', '', '', '', 'Sim', 'Formal', 4),
(11, 11, 1, 2, 0, 0, 0, 6, 0, 560, 1, 0, 0, 0, 0, 0, '', 'Operador de Caixa', 'Barreiro', 36, 1, 3, 2, 1, 2, 3, 3, '', '', '', '', '', 'Sim', 'Com o uniforme da empresa', 4),
(12, 11, 1, 2, 3, 0, 5, 6, 0, 505, 1, 0, 1, 0, 0, 0, '', 'Limpezas', 'Lisboa', 35, 1, 2, 2, 1, 1, 1, 1, '', '', '', '', '', '', '', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `principaisatividades`
--

CREATE TABLE `principaisatividades` (
  `Texto` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `principaisatividades`
--

INSERT INTO `principaisatividades` (`Texto`) VALUES
('<ul>\r\n<li>Plano integrado de forma&ccedil;&atilde;o- Constru&ccedil;&atilde;o e divulga&ccedil;&atilde;o de um plano de forma&ccedil;&atilde;o com base na concerta&ccedil;&atilde;o da oferta formativa existente promovida interna ou externamente pelas organiza&ccedil;&otilde;es da REBM</li>\r\n<li>A&ccedil;&otilde;es de orienta&ccedil;&atilde;o e explora&ccedil;&atilde;o profissional - A&ccedil;&otilde;es que fomentem o conhecimento e apoiem a tomada de decis&atilde;o relativamente a determinadas &aacute;reas profissionais, perfis, profiss&otilde;es e sa&iacute;das profissionais, numa perspetiva de aproxima&ccedil;&atilde;o ao mercado aberto e tendo em linha de conta o <em>empowerment</em> individual</li>\r\n<li>A&ccedil;&otilde;es de desenvolvimento de <em>soft skills</em>- A&ccedil;&otilde;es que permitem o desenvolvimento e consolida&ccedil;&atilde;o, nos grupos-alvo de <em>soft skills</em> essenciais para a inser&ccedil;&atilde;o no mercado de trabalho</li>\r\n<li>Promo&ccedil;&atilde;o de a&ccedil;&otilde;es de qualifica&ccedil;&atilde;o (dupla certifica&ccedil;&atilde;o e outras)- Promo&ccedil;&atilde;o de a&ccedil;&otilde;es de forma&ccedil;&otilde;es de dupla certifica&ccedil;&atilde;o, em estreita articula&ccedil;&atilde;o com as necessidades do mercado de trabalho.</li>\r\n<li>Articula&ccedil;&atilde;o com empresas/organiza&ccedil;&otilde;es / Gabinetes de emprego / Centros de emprego - Foruns Locais/ RSOPT / ETT (Empresas de trabalho tempor&aacute;rio)</li>\r\n<li>Identifica&ccedil;&atilde;o e sinaliza&ccedil;&atilde;o regular de oportunidades de emprego e de setores-chave de emprego e forma&ccedil;&atilde;o profissional, atrav&eacute;s, nomeadamente, da articula&ccedil;&atilde;o permanente com empresas e com associa&ccedil;&otilde;es empresariais.</li>\r\n<li>Encontros semestrais com empres&aacute;ri@s e empreended@res</li>\r\n<li>A&ccedil;&otilde;es de apoio &agrave; coloca&ccedil;&atilde;o em mercado de trabalho- A&ccedil;&otilde;es que propiciem a adequa&ccedil;&atilde;o entre os candidat@s e o posto de trabalho/ fun&ccedil;&atilde;o a desempenhar, tendo em conta o movimento do emprego apoiado.</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `principaisatividadesedl`
--

CREATE TABLE `principaisatividadesedl` (
  `Texto` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `principaisatividadesedl`
--

INSERT INTO `principaisatividadesedl` (`Texto`) VALUES
('<ul>\r\n<li>A&ccedil;&otilde;es de promo&ccedil;&atilde;o de compet&ecirc;ncias empreendedoras- A&ccedil;&otilde;es que propiciam o desenvolvimento de compet&ecirc;ncias empreendedoras que possam contribuir positivamente, para os grupos-alvo, A&ccedil;&otilde;es de qualifica&ccedil;&atilde;o para o empreendedorismo-Forma&ccedil;&otilde;es de curta e m&eacute;dia dura&ccedil;&atilde;o (sess&otilde;es individuais e coletivas), visando a informa&ccedil;&atilde;o, encaminhamento, aconselhamento e a articula&ccedil;&atilde;o com entidades formadoras na &aacute;rea do empreendedorismo ou associa&ccedil;&otilde;es empresariais</li>\r\n<li>Atendimento, Orienta&ccedil;&atilde;o e acompanhamento de empreendedores</li>\r\n<li>Concursos de ideias- A&ccedil;&otilde;es que permitam que os empreendedores pensem o seu neg&oacute;cio/ ideia a partir da constitui&ccedil;&atilde;o de um painel de jurados, sess&otilde;es comunit&aacute;rias de informa&ccedil;&atilde;o e produ&ccedil;&atilde;o de um regulamento de concurso, numa perspetiva de empowerment permanente</li>\r\n<li>Acompanhamento de neg&oacute;cios em prepara&ccedil;&atilde;o- Apoio t&eacute;cnico &agrave; constru&ccedil;&atilde;o de projetos de neg&oacute;cio vi&aacute;veis, consultoria, encaminhamento para respostas ou linhas de financiamento e visitas de estudo, apoio &agrave; elabora&ccedil;&atilde;o de candidaturas e articula&ccedil;&atilde;o com os parceiros da Rede</li>\r\n<li>Participa&ccedil;&atilde;o em feiras e outros eventos - Experimenta&ccedil;&atilde;o em contexto real do neg&oacute;cio em desenvolvimento, testando-se o produto/ servi&ccedil;o e desenvolvendo-se compet&ecirc;ncias empreendedoras, sociais e pessoais num contexto de com&eacute;rcio local</li>\r\n<li>Apoio &agrave; consolida&ccedil;&atilde;o empresarial / Apoio na promo&ccedil;&atilde;o de empresas existentes; Angaria&ccedil;&atilde;o de protocolos com financiadores e agentes de desenvolvimento local</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `principaisatividadesrfo`
--

CREATE TABLE `principaisatividadesrfo` (
  `Texto` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `principaisatividadesrfo`
--

INSERT INTO `principaisatividadesrfo` (`Texto`) VALUES
('<ul>\r\n<li>Rede estruturas de a&ccedil;&atilde;o que facilita o acesso de interessados(as) aos programas e a&ccedil;&otilde;es dispon&iacute;veis;</li>\r\n<li>Estes Gabinetes permitem a promo&ccedil;&atilde;o, desenvolvimento e refor&ccedil;o de compet&ecirc;ncias, otimizando recursos, interven&ccedil;&otilde;es e potencialidades existentes nas comunidades, na perspetiva do <em>empowerment</em> e e visando a otimiza&ccedil;&atilde;o da compatibiliza&ccedil;&atilde;o entre necessidades das pessoas e organiza&ccedil;&otilde;es com as respostas dispon&iacute;veis.</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `servico` varchar(15) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`id`, `servico`) VALUES
(1, 'Produção'),
(2, 'Distribuição'),
(3, 'Lojas'),
(4, 'Armazéns'),
(5, 'Escritórios'),
(6, 'Transportes'),
(7, 'Segurança'),
(8, 'Refeitório'),
(9, 'Balneário'),
(10, 'Secretaria'),
(11, 'Outros');

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacaodeemprego`
--

CREATE TABLE `situacaodeemprego` (
  `id` int(11) NOT NULL,
  `situacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `situacaodeemprego`
--

INSERT INTO `situacaodeemprego` (`id`, `situacao`) VALUES
(1, 'Empregado'),
(2, 'Desempregado'),
(3, 'Estudante'),
(4, 'Outra Situação');

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacaonopaisregularizada`
--

CREATE TABLE `situacaonopaisregularizada` (
  `id` int(11) NOT NULL,
  `situacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `situacaonopaisregularizada`
--

INSERT INTO `situacaonopaisregularizada` (`id`, `situacao`) VALUES
(1, 'sim'),
(2, 'nao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tecnicos`
--

CREATE TABLE `tecnicos` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(100) NOT NULL,
  `idTiposDePermissoes` int(11) NOT NULL,
  `idFrontOffice` int(11) NOT NULL,
  `ativo` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tecnicos`
--

INSERT INTO `tecnicos` (`id`, `nome`, `email`, `password`, `idTiposDePermissoes`, `idFrontOffice`, `ativo`) VALUES
(2, 'Ana Adega', 'ana.adega@rumo.org.pt', 'd3ce959f8a33654b7e733d353d1f6cf5', 1, 9, b'1'),
(11, 'Susana Santos', 'clds3gbarreiro@gmail.com', 'd3ce959f8a33654b7e733d353d1f6cf5', 1, 7, b'1'),
(13, 'RSI CATICA', 'caticarsi@gmail.com', 'd3ce959f8a33654b7e733d353d1f6cf5', 2, 10, b'1'),
(14, 'RSI Criva', 'rsi.criva@gmail.com', 'd3ce959f8a33654b7e733d353d1f6cf5', 2, 2, b'1'),
(15, 'GIP VA', 'gipvale@gmail.com', 'd3ce959f8a33654b7e733d353d1f6cf5', 2, 4, b'1'),
(16, 'GIP CRIBB', 'gip@cribb.pt', 'd3ce959f8a33654b7e733d353d1f6cf5', 2, 6, b'1'),
(17, 'Escolhas BXB', 'bxbprojovem.e5g@rumo.org.pt', 'd3ce959f8a33654b7e733d353d1f6cf5', 2, 12, b'1'),
(18, 'RSI Nós', 'nos.rsi@gmail.com', 'eac44ab4500e03ec0dc39178a72ba284', 2, 3, b'1'),
(19, 'RSI Rumo', 'rsi@rumo.org.pt', 'd3ce959f8a33654b7e733d353d1f6cf5', 2, 1, b'1'),
(20, 'Laura Pinheiro', 'pei@rumo.org.pt', '083d44d294cf39fceac98b0b2a95949d', 2, 11, b'1'),
(21, 'Escolhas VA', 'escolhasva.e5g@gmail.com', 'd3ce959f8a33654b7e733d353d1f6cf5', 2, 15, b'1'),
(22, 'CLDS Moita', 'cldsmoita@gmail.com', 'd3ce959f8a33654b7e733d353d1f6cf5', 2, 22, b'1'),
(23, 'ACVA', 'acva.valeamoreira@gmail.com', 'd3ce959f8a33654b7e733d353d1f6cf5', 2, 17, b'1'),
(24, 'GIP Sto António', 'gip@rumo.org.pt', 'd3ce959f8a33654b7e733d353d1f6cf5', 2, 18, b'1'),
(27, 'Gestor Front Office', 'gestorfrontoffice@rumo.pt', 'd3ce959f8a33654b7e733d353d1f6cf5', 2, 9, b'1'),
(29, 'Gonçalo Fernandes', 'goncalopereirafernandes@gmail.com', '9b317c2492140a0bf10c3a759c387906', 1, 9, b'1'),
(30, 'Teste Sair', 'removergg@gmail.com', 'e48e13207341b6bffb7fb1622282247b', 2, 7, b'0'),
(31, 'ID7', 'geral@idset.pt', '1b96351e59b08214da5cfc2b697e9bcd', 2, 9, b'1'),
(32, 'AECasquilhos', 'direcao@aecasquilhos.pt', 'd3ce959f8a33654b7e733d353d1f6cf5', 2, 9, b'1'),
(33, 'Ana Soares', 'soares.ana.cercim@gmail.com', 'd3ce959f8a33654b7e733d353d1f6cf5', 2, 9, b'1'),
(34, 'Ana Cotta', 'anacotta.cercimb@gmail.com', 'd3ce959f8a33654b7e733d353d1f6cf5', 2, 9, b'1'),
(35, 'Hugo Feliciano', 'hfeliciano.cercimb@gmail.com', 'd3ce959f8a33654b7e733d353d1f6cf5', 2, 9, b'1'),
(36, 'D.João I', 'direcaodjoao1@gmail.com', 'd3ce959f8a33654b7e733d353d1f6cf5', 2, 9, b'1'),
(37, 'Utilizador Teste', 'utilizador@gmail.com', 'd3ce959f8a33654b7e733d353d1f6cf5', 4, 9, b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tempodesemprego`
--

CREATE TABLE `tempodesemprego` (
  `id` int(11) NOT NULL,
  `TempoDesemprego` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tempodesemprego`
--

INSERT INTO `tempodesemprego` (`id`, `TempoDesemprego`) VALUES
(1, 'Menos de 1 ano'),
(2, 'Mais de 1 ano');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tiposdebolsas`
--

CREATE TABLE `tiposdebolsas` (
  `id` int(11) NOT NULL,
  `tipoBolsa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tiposdebolsas`
--

INSERT INTO `tiposdebolsas` (`id`, `tipoBolsa`) VALUES
(1, 'Bolsa de Formação'),
(2, 'Bolsa de Emprego');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tiposdepermissoes`
--

CREATE TABLE `tiposdepermissoes` (
  `id` int(11) NOT NULL,
  `tipoDePermissao` varchar(50) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tiposdepermissoes`
--

INSERT INTO `tiposdepermissoes` (`id`, `tipoDePermissao`) VALUES
(1, 'Administrador'),
(2, 'Técnico de Front Office'),
(4, 'Utilizador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tiposdocumentosidentificacao`
--

CREATE TABLE `tiposdocumentosidentificacao` (
  `id` int(1) NOT NULL,
  `tipo` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `tiposdocumentosidentificacao`
--

INSERT INTO `tiposdocumentosidentificacao` (`id`, `tipo`) VALUES
(1, 'Autorização de Residência'),
(2, 'Passaporte'),
(3, 'Cartão do Cidadão'),
(4, 'Bilhete de Identidade'),
(5, 'Outro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `utentes`
--

CREATE TABLE `utentes` (
  `id` int(5) NOT NULL,
  `nome` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dataNascimento` date DEFAULT NULL,
  `dataInscricao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idConcelho` int(2) DEFAULT NULL,
  `idFreguesia` int(2) DEFAULT NULL,
  `idHabilitacoes` int(2) DEFAULT NULL,
  `NIF` int(9) DEFAULT NULL,
  `idEstadoCivil` int(1) DEFAULT NULL,
  `trabalhadorPrecario` int(1) DEFAULT NULL,
  `PrestadorDeServicos` int(1) DEFAULT NULL,
  `TrabalhadorContaOutrem` int(1) DEFAULT NULL,
  `ultimaProfissaoExercida` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `semSubsidio` int(1) NOT NULL,
  `subsidioDesemprego` int(1) DEFAULT NULL,
  `EspecificacaoEmprego` int(2) DEFAULT NULL,
  `tempoDesempregado` int(1) DEFAULT NULL,
  `ultimaProfissaoExercidaDesempregado` int(11) NOT NULL,
  `beneficiarioRSI` int(1) DEFAULT NULL,
  `outrosSubsidios` int(1) DEFAULT NULL,
  `QuaisOutrosSubsidios` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `Estudante` int(1) DEFAULT NULL,
  `estabelecimentoEnsino` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `idGrupoEtario` int(2) DEFAULT NULL,
  `idSituacaoRegularizada` int(1) DEFAULT NULL,
  `idGenero` int(1) DEFAULT NULL,
  `MedidasAtivasEmprego` int(1) DEFAULT NULL,
  `QualMedidasAtivasEmprego` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Voluntariado` int(1) DEFAULT NULL,
  `FormacaoProfissional` int(1) DEFAULT NULL,
  `QualFormacaoProfissional` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Biscates` int(1) DEFAULT NULL,
  `Telemovel` int(20) DEFAULT NULL,
  `Telefone` int(20) DEFAULT NULL,
  `OutroTelefone` int(20) DEFAULT NULL,
  `Email` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Naturalidade` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Nacionalidade` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `InscritoCentroEmprego` int(1) DEFAULT NULL,
  `NumeroInscricaoCentroEmprego` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Observacoes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `idFrontOfficeSinalizador` int(2) NOT NULL,
  `idTecnico` int(3) NOT NULL,
  `cartaDeConducao` int(1) DEFAULT NULL,
  `cartaDeConducaoCategoriaID` int(2) DEFAULT NULL,
  `interesseProfissional1` int(2) DEFAULT NULL,
  `interesseProfissional2` int(2) DEFAULT NULL,
  `interesseProfissional3` int(2) DEFAULT NULL,
  `empregado` int(1) DEFAULT NULL,
  `outraSituacao` int(1) DEFAULT NULL,
  `estado` int(1) NOT NULL DEFAULT '1',
  `morada` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CV` varchar(51) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pedidoInicialEmprego` int(1) NOT NULL,
  `pedidoInicialFormacao` int(1) DEFAULT NULL,
  `pedidoInicialFormacaoQual` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pedidoInicialOutra` int(1) DEFAULT NULL,
  `pedidoInicialOutraQual` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `NISS` int(11) DEFAULT NULL,
  `numeroIdentificacao` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `tipoDocumentoIdentificacao` int(1) DEFAULT NULL,
  `codPostal` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `nrCartaConducao` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `validadeDocumentoIdentificacao` date NOT NULL,
  `emissaoCartaConducao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `utentes`
--

INSERT INTO `utentes` (`id`, `nome`, `dataNascimento`, `dataInscricao`, `idConcelho`, `idFreguesia`, `idHabilitacoes`, `NIF`, `idEstadoCivil`, `trabalhadorPrecario`, `PrestadorDeServicos`, `TrabalhadorContaOutrem`, `ultimaProfissaoExercida`, `semSubsidio`, `subsidioDesemprego`, `EspecificacaoEmprego`, `tempoDesempregado`, `ultimaProfissaoExercidaDesempregado`, `beneficiarioRSI`, `outrosSubsidios`, `QuaisOutrosSubsidios`, `Estudante`, `estabelecimentoEnsino`, `idGrupoEtario`, `idSituacaoRegularizada`, `idGenero`, `MedidasAtivasEmprego`, `QualMedidasAtivasEmprego`, `Voluntariado`, `FormacaoProfissional`, `QualFormacaoProfissional`, `Biscates`, `Telemovel`, `Telefone`, `OutroTelefone`, `Email`, `Naturalidade`, `Nacionalidade`, `InscritoCentroEmprego`, `NumeroInscricaoCentroEmprego`, `Observacoes`, `idFrontOfficeSinalizador`, `idTecnico`, `cartaDeConducao`, `cartaDeConducaoCategoriaID`, `interesseProfissional1`, `interesseProfissional2`, `interesseProfissional3`, `empregado`, `outraSituacao`, `estado`, `morada`, `CV`, `pedidoInicialEmprego`, `pedidoInicialFormacao`, `pedidoInicialFormacaoQual`, `pedidoInicialOutra`, `pedidoInicialOutraQual`, `NISS`, `numeroIdentificacao`, `tipoDocumentoIdentificacao`, `codPostal`, `nrCartaConducao`, `validadeDocumentoIdentificacao`, `emissaoCartaConducao`) VALUES
(10, 'Joana Pinheiro', '1985-01-24', '2014-10-28 00:00:00', 1, 1, 6, 245074511, 1, -1, -1, 1, '', -1, -1, 22, -1, -1, -1, -1, '', -1, '', 4, 1, 1, -1, '', -1, -1, '', -1, 963708600, -1, -1, 'joana.pinheiro@rumo.org.pt', '', '', -1, '', 'TESTE', 9, 8, 1, -1, 42, -1, -1, 1, -1, 2, '', '', -1, -1, '', -1, '', -1, NULL, NULL, '', '', '0000-00-00', '0000-00-00'),
(11, 'Carla Luísa Lopes Tavares', '1977-08-20', '2014-10-29 00:00:00', 2, 10, 2, 243057059, 4, -1, -1, -1, '', -1, -1, 0, 1, -1, -1, -1, '', -1, '', 5, 1, 1, -1, '', -1, -1, '', -1, 962561949, -1, -1, '', 'Cabo Verde', 'Caboverdeana', 1, '', 'Apoio a Idosos', 7, 20, -1, -1, 42, 39, -1, 0, -1, 1, '', NULL, 1, -1, '', -1, '', -1, '5W26770V6', 1, '', '', '0000-00-00', '0000-00-00'),
(12, 'Cátia Alexandra ', '1986-08-05', '2014-10-29 00:00:00', 2, 10, 4, 243762194, 1, -1, -1, -1, 'Empregada de Balcão/Ajudante de Cozinha', -1, -1, 0, 2, 39, -1, -1, '', -1, '', 4, 2, 1, -1, '', -1, -1, '', -1, 966378238, -1, -1, '', 'Portugal', 'Caboverdeana', 1, '', '', 11, 20, -1, -1, 39, 36, -1, 0, -1, 1, 'Rua Bordalo Pinheiro Lote 1 5º Esq', NULL, 1, -1, '', -1, '', -1, '01N138N75', 1, '', '', '0000-00-00', '0000-00-00'),
(13, 'Celestina Bajana Nacui', '1982-08-21', '2014-10-29 00:00:00', 1, 4, 4, 278584896, 2, -1, -1, -1, 'Salão de Cabeleireira', -1, -1, 0, 1, -1, -1, -1, '', -1, '', 4, 1, 1, -1, '', -1, -1, '', -1, 963989536, -1, -1, '', 'Guiné Bissau', 'Guineense', 1, '', '', 11, 20, -1, -1, 15, -1, -1, 0, -1, 1, 'Rua 9, Lote 47 1º A Cidade Sol', NULL, 1, 1, '', -1, '', -1, 'X5X081814', 1, '', '', '0000-00-00', '0000-00-00'),
(23, 'Fabio Varanda', '1985-06-29', '2014-11-05 00:00:00', 1, 1, 6, 233155598, 5, -1, -1, 1, 'dfs', -1, -1, 14, -1, 3, -1, -1, '', 1, 'epbjc', 4, 1, 1, -1, '', 1, 1, 'dsffds', 1, 965209316, -1, -1, 'ola@ola.pt', 'lisboa', 'tuga', 1, '123', 'teste ...', 3, 2, 1, 9, 1, 2, 3, 1, 1, 2, 'Rua Afonso Costa Lote 1161 A 2975 Quinta do Conde', '23.pdf', 1, 1, 'informática', -1, '', -1, NULL, NULL, '', '', '0000-00-00', '0000-00-00'),
(28, 'Nuno Miguel Brito Silva', '1994-08-18', '2014-02-17 00:00:00', 1, 1, 4, 250762676, 1, -1, -1, -1, 'PROCURA 1º EMPREGO', -1, -1, 0, 1, -1, -1, -1, '', -1, '', 3, 1, 2, -1, '', -1, -1, '', -1, 967921019, -1, -1, 'nuno1994silva@gmail.com', 'Amadora', 'PORTUGUESA', 1, '5876969', 'Encaminhado para as seguintes formações em 07/10/2014:\r\n- Atendimento - Técnicas de Comunicação (25 Horas)\r\n- Atendimento - Assistência a Clientes (25 Horas)\r\n- Gestão de Stress e Gestão de Conflitos (25 Horas)\r\n\r\nEncaminhado para oferta de emprego através da REBM (Empregado de Mesa) em 20/10/2014', 18, 24, -1, -1, 33, 24, 44, 0, -1, 1, 'RUA CAPITÃES DE ABRIL 33, 3º DTO.', '28.pdf', 1, 1, '', -1, '', -1, '30338249', 3, '', '', '0000-00-00', '0000-00-00'),
(29, 'Hugo Manuel Mosca Caeiro', '1977-05-22', '2014-11-12 00:00:00', 1, 2, 4, 219113416, 1, -1, -1, -1, '', -1, -1, 0, 2, 26, 1, -1, '', -1, '', 5, 1, 2, -1, '', -1, -1, '', -1, 913646214, -1, -1, 'hugocaeiro17@hotmail.com', '', 'Português', 1, '1719732', '', 3, 18, -1, -1, 26, 10, 43, 0, -1, 1, 'Rua Conselheiro Joaquim António D`Aguiar Nº4 1º Andar 2830-333 Barreiro, Portugal', '', 1, 1, '', -1, '', -1, '11304193', 3, '', '', '0000-00-00', '0000-00-00'),
(30, 'Andreia Isabel Azevedo Godinho', '2014-11-12', '2014-11-12 00:00:00', 1, 1, 4, 242462405, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 911840355, 0, 0, '', '', '', 1, '', '', 10, 13, 0, -1, 5, -1, -1, 0, 0, 1, 'Rua da Esperança Vivenda Manuel Batuca Nº10 2830-216 Quinta das Gaiteiras Stº André', '30.pdf', 1, -1, '', -1, '', -1, '13622215', 3, '', '', '0000-00-00', '0000-00-00'),
(31, 'Emanuel dos Santos Dias Conde', '1988-12-28', '2014-11-12 00:00:00', 1, 2, 3, 242980368, 1, -1, -1, -1, '', -1, -1, 0, 2, 35, 1, -1, '', -1, '', 4, 2, 2, -1, '', -1, -1, '', -1, 965496152, -1, -1, 'imanconde@hotmail.com', '', 'Português', 1, '', '', 3, 18, -1, -1, 26, -1, -1, 0, -1, 1, 'Rua Heliodoro Salgado nº48, 6ºDtº 2830-346 Barreiro', '31.pdf', 1, 1, '', -1, '', -1, '13540475', 3, '', '', '0000-00-00', '0000-00-00'),
(32, 'António Joaquim Pereira Botas', '1984-01-11', '2014-11-12 00:00:00', 1, 1, 5, 240882989, 1, -1, -1, -1, '', -1, -1, 0, 2, 44, 1, -1, '', -1, '', 4, 2, 2, -1, '', -1, -1, '', -1, 938530302, -1, -1, 'sirbotas@hotmail.com', '', 'Português', 1, '', '', 3, 18, -1, -1, -1, -1, -1, 0, -1, 1, '', '32.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(34, 'João Paulo Duarte Nunes de Carvalho', '2014-11-12', '2014-11-12 00:00:00', 1, 1, 1, 176343806, 4, 0, 0, 0, 'Carpintaria / Servente / Jardinagem', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 11, 37, -1, 0, 0, 1, 'Rua 20 de Abril, Pátio 76 Nº 6', '34.pdf', -1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(35, 'António Manuel de Oliveira Figueiredo Ruivo', '0000-00-00', '2014-11-12 00:00:00', 1, 1, 2, 159664837, 2, 0, 0, 0, 'Electricista', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 966329395, 0, 0, '', '', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 24, 11, -1, 0, 0, 1, 'Rua Francisco Casal, Nº 2, 1º Esquerdo', '35.pdf', -1, 1, 'Informática', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(36, 'Elsa Maria dos Santos Sobral', '1976-08-11', '2014-11-12 00:00:00', 1, 4, 4, 211366935, 3, -1, -1, -1, '', -1, -1, 0, 2, -1, 1, -1, '', -1, '', 5, 1, 1, -1, '', -1, -1, '', -1, -1, -1, -1, '', '', 'Portuguesa', 1, '', '', 10, 13, -1, -1, 36, -1, -1, 0, -1, 1, 'Rua Maria Domingues Vivenda Albertino Valente - Fonte do Feto, 2835 - 564 SAnto António da Charneca', '36.pdf', 1, -1, '', -1, '', -1, '11388221', 4, '', '', '0000-00-00', '0000-00-00'),
(37, 'Luisa Fernandes P. Teixeira Dias', '1965-12-04', '2014-11-12 00:00:00', 1, 4, 2, 177407646, 2, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 968296161, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 35, -1, -1, 0, 0, 1, 'Rua 11, Lote 53 - 3ºFrente - 2835 - 514 Santo António da Charneca', '37.pdf', 1, -1, '', -1, '', -1, '8162919', 4, '', '', '0000-00-00', '0000-00-00'),
(38, 'Cesar Augusto Dias Teixeira', '1961-05-26', '2014-11-12 00:00:00', 1, 4, 3, 145849341, 2, 0, 0, 0, 'Ladrilhador', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 963992609, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua 11, Lote 53 - 3ºFrente - 2835 - 514 Santo António da Charneca', '38.pdf', 1, -1, '', -1, '', -1, '8338470', 4, '', '', '0000-00-00', '0000-00-00'),
(39, 'José Diogo Silva Fernandes', '1993-12-12', '2014-11-12 00:00:00', 1, 4, 3, 271913126, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 0, 1, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 936089022, 0, 0, '', ' Barreiro', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 45, 8, -1, 0, 0, 1, 'Qta. da Mina, nº 21, lote 33, 2º dto 2835-492 Sto. António da Charneca', '39.pdf', 1, -1, '', -1, '', -1, '15190541', 4, '', '', '0000-00-00', '0000-00-00'),
(40, 'Joel Campos Beja', '1959-05-27', '2014-11-12 00:00:00', 1, 4, 3, 146036069, 1, 0, 0, 0, '', 0, 0, 0, 2, 41, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 960356289, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 41, 39, -1, 0, 0, 1, 'Rua Estreita nº 14 - 2835-519 Santo António da Charneca', '40.pdf', 1, -1, '', -1, '', -1, '6012743', 3, '', '', '0000-00-00', '0000-00-00'),
(41, 'António dos Santos da Cruz', '1964-10-05', '2014-11-13 00:00:00', 1, 4, 1, 153993804, -1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 927136247, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 1, -1, 11, -1, -1, 0, 0, 1, 'Rua 9 Lote 48 1º A 2835-514 Stº António da Charneca', '41.pdf', 1, -1, '', -1, '', -1, '8032580', 3, '', '', '0000-00-00', '0000-00-00'),
(42, 'António Batista Guerreiro', '1958-09-16', '2014-11-13 00:00:00', 1, 4, 1, 123311179, -1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 969648035, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua da Piscina Vivenda Guerreiro 2835-557 Stº António da Charneca', '42.pdf', 1, -1, '', -1, '', -1, '5210338', 3, '', '', '0000-00-00', '0000-00-00'),
(43, 'Simaura Alexandra dos Santos da Costa', '1987-12-06', '2014-11-13 00:00:00', 1, 4, 3, 255610351, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 937544759, 926904882, 0, 'simaura_costa@hotmail.com', '', 'Portuguesa', 1, '3477871', '', 10, 13, 0, -1, 35, 36, 39, 0, 0, 1, 'Estrada Municipal 510 Quinta do Gerardo 2835-804 Stº António da Charneca', '43.pdf', 1, 1, '', -1, '', -1, '13591888', 3, '', '', '0000-00-00', '0000-00-00'),
(44, 'Tânia Isabel Marques Pereira', '1988-11-21', '2014-11-13 00:00:00', 1, 1, 3, 259237337, 1, 0, 0, 0, '', 0, 0, 0, 1, 35, 0, 1, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 932225163, 0, 0, '', '', 'Portuguesa', 1, 'ID4575843', '', 10, 13, 0, -1, 35, 36, -1, 0, 0, 1, 'Rua Dr Luis de sánº16 ,2ºesq 2830-511 2830-511 ', '44.pdf', 1, -1, '', -1, '', -1, '15339951', 3, '', '', '0000-00-00', '0000-00-00'),
(45, 'Elvira Maria Rodrigues Nogueira Ferreira', '2014-11-13', '2014-11-13 00:00:00', 1, 1, 3, 137944039, 2, 0, 0, 0, '', 1, 0, 0, 2, 39, 0, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 934634504, 0, 0, '', 'São João da Pedreira', 'Portuguesa', 1, '6038107', '', 10, 13, 1, 3, 39, -1, -1, 0, 0, 1, '', '45.pdf', 1, -1, '', -1, '', -1, '5208767', 3, '', '', '0000-00-00', '0000-00-00'),
(46, 'Sara Fitas Rodrigues', '1981-09-19', '2014-11-13 00:00:00', 1, 1, 5, 203085760, 1, 0, 0, 0, '', 0, 0, 0, 2, 41, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 965333250, 210888549, 0, '', '', 'Portuguesa', 1, 'ID2746722', '', 10, 13, 1, 4, 41, 23, -1, 0, 0, 1, 'Rua de Goa nº57 !º Dtº 2830-179', '46.pdf', 1, -1, '', -1, '', -1, '11996275', 3, '', '', '0000-00-00', '0000-00-00'),
(47, 'Silvia Alexandra da Silva Antunes', '1989-02-02', '2014-11-17 00:00:00', 2, 6, 5, 251516350, 1, 0, 0, 0, '', 1, 0, 0, 1, 7, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 932944757, 0, 0, '', 'Portuguesa', 'Portuguesa', 0, '', '', 17, 23, 1, 4, 15, 5, -1, 0, 0, 1, 'R.Jaime Cortesão nº 27-1º Dtº', '47.pdf', -1, -1, '', -1, '', -1, '13617474', 3, '', '', '0000-00-00', '0000-00-00'),
(48, 'Cecilia do Carmo Vinagre', '1976-02-21', '2014-11-17 00:00:00', 2, 10, 5, 214900142, 1, 0, 0, 0, '', 0, 0, 0, -1, 35, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 936700346, 0, 0, '', 'Angola', 'Portuguesa', 0, '', '', 17, 23, 0, -1, 24, 24, -1, -1, 0, 1, 'Pçtª das Camélias Bloco 50 - 1º F 2835-210 ', '48.pdf', 1, -1, '', -1, '', -1, '10792485', 3, '', '', '0000-00-00', '0000-00-00'),
(49, 'Carla Maria Umbelino Lopes', '1977-08-30', '2014-11-17 00:00:00', 2, 10, 2, 213430134, 2, -1, -1, -1, '', -1, -1, 0, -1, -1, -1, -1, '', -1, '', 5, 2, 1, -1, '', -1, -1, '', -1, 965844031, -1, -1, '', 'Portuguesa', 'Portuguesa', -1, '', '', 17, 23, -1, -1, -1, -1, -1, -1, -1, 1, 'Av.José Almada Negreiros Lt 52-3º Esqº', '49.pdf', 1, -1, '', -1, '', -1, '12222257', 3, '', '', '0000-00-00', '0000-00-00'),
(50, 'Paula Cristina Krithinas e Silva Mochila', '1975-09-04', '2014-11-17 00:00:00', 2, 6, -1, 208436189, 2, 0, 0, 0, '', 1, 0, 0, 1, 41, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 96531796, 0, 963237598, '', 'Angola', 'Portuguesa', 1, '', '', 17, 23, 0, -1, 41, 15, -1, 0, 0, 1, 'R. Ville Plasir nº 39 2835-166 Bx.Banheira', '50.pdf', 1, -1, '', -1, '', -1, '10506696', 3, '', '', '0000-00-00', '0000-00-00'),
(51, 'Miguel Semedo', '1965-05-07', '2014-11-17 00:00:00', 2, 10, 1, 211769215, 2, 0, 0, 0, '', 1, 0, 0, 1, 11, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 920162315, 0, 0, '', 'Cabo Verde', 'Portuguesa', 0, '', '', 17, 23, 0, -1, 11, -1, -1, 0, 0, 1, 'R.Carlos Augusto Santos Lt 40-2º E', '51.pdf', 1, -1, '', -1, '', -1, '30782539', 3, '', '', '0000-00-00', '0000-00-00'),
(52, 'Maria de Lurdes Torres Lopes Brito', '1971-07-16', '2014-11-17 00:00:00', 2, 10, 2, 217280633, 2, 0, 0, 0, '', 1, 0, 0, 1, 35, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 962925768, 0, 0, '', 'Portuguesa', 'Portuguesa', 0, '', '', 17, 23, 0, -1, 35, -1, -1, 0, 0, 1, 'Av. Jose Almada Negreiros Lt 56-r/c-Dtº', '52.pdf', 1, -1, '', -1, '', -1, '10609847', 3, '', '', '0000-00-00', '0000-00-00'),
(53, 'Tiago André Batista Correia', '2014-11-18', '2014-11-18 00:00:00', 1, 1, -1, 220599882, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 914513875, 0, 0, 'tiagozona5@gmail.com', 'Barreiro', 'Portuguesa', 1, '1452220', 'Situação de primeiro emprego', 10, 13, 0, -1, -1, -1, -1, -1, 0, 1, 'Rua De Goa nº52, 3º esquerdo 2830-179', '53.pdf', 1, -1, '', -1, '', -1, '1452220', 3, '', '', '0000-00-00', '0000-00-00'),
(54, 'Adriano Filipe Rato Costa João', '1980-01-29', '2014-11-18 00:00:00', 1, 1, 3, 203996882, 1, -1, -1, -1, '', -1, -1, 0, 2, -1, 1, -1, '', -1, '', 4, 1, 2, -1, '', -1, -1, '', -1, 916092300, -1, -1, 'acontadacarmem@gmail.com', 'Barreiro', 'Portuguesa', 1, '1885310', 'Esteve em CEI+ na junta de freguesia do vale da amoreira', 10, 13, -1, -1, 11, -1, -1, 0, -1, 1, 'Rua D.João de Castro nº 29. 1º esqd 2830-000', '54.pdf', 1, -1, '', -1, '', -1, '1157759', 3, '', '', '0000-00-00', '0000-00-00'),
(55, 'Carlos Manuel Da Silva Miranda', '2014-11-18', '2014-11-18 00:00:00', 1, 1, 3, 137926138, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 963022887, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 1, 10, -1, -1, -1, 0, 0, 1, 'Rua D.João de Castro nº83 r/c diret 2830-186', '55.pdf', 1, -1, '', -1, '', -1, '6274466', 3, '', '', '0000-00-00', '0000-00-00'),
(56, 'Francisco José Azevedo Maurício', '0000-00-00', '2014-11-18 00:00:00', 1, -1, -1, 190928000, 1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 962816843, 0, 0, '', 'Ba', '', 0, '', '', 10, 13, 0, -1, 11, -1, -1, 0, 0, 1, '', '56.pdf', -1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(57, 'Rita De Cássia Silva Santos', '2014-11-18', '2014-11-18 00:00:00', 1, 1, 3, 256252769, 2, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 933884013, 0, 0, '', 'Brasileira', 'Brasileira', 1, '', '', 10, 13, 0, -1, 8, -1, -1, 0, 0, 1, 'Rua De Panguim letra A 2830-184', '57.pdf', 1, -1, '', -1, '', -1, '44156', 3, '', '', '0000-00-00', '0000-00-00'),
(58, 'Francisco Mário Nascimento Marques', '2014-11-18', '2014-11-18 00:00:00', 1, 1, 3, 176998853, 2, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 933884013, 0, 0, 'rita.francisco2010@gmail.com', '', 'Portuguesa', 1, '4335928', '', 10, 13, 0, -1, 11, 10, 26, 0, 0, 1, 'Rua De Panguim letra A 2830-184', '58.pdf', 1, -1, '', -1, '', -1, '7038564', 3, '', '', '0000-00-00', '0000-00-00'),
(59, 'Catarina Landim Vieira', '1952-04-29', '2014-11-18 00:00:00', 2, 10, 1, 236301055, 3, 0, 0, 0, '', 1, 0, 0, 1, 35, 0, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 967765787, 0, 0, '', 'Cabo Verde', 'Portuguesa', 1, '', '', 17, 23, 0, -1, 35, -1, -1, 0, 0, 1, 'R.Bordalo Pinheiro Lote 29-5º Dtº', '59.pdf', 1, -1, '', -1, '', -1, '30298811', 3, '', '', '0000-00-00', '0000-00-00'),
(60, 'Maria Isabel Próspero Catarino', '2014-11-18', '2014-11-18 00:00:00', 1, 1, 3, 136687474, 2, 0, 0, 0, '', 0, 0, 0, 2, 8, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 913589037, 216052080, 0, 'mariaisabelprosperoc@gmail.com', 'Angola', 'Portuguesa', 1, '', 'Foi proprietária de duas lojas na área da r', 10, 13, 1, 2, 8, -1, -1, 0, 0, 1, 'Rua Capitão Tenente Oliveira e Carmo nº 20,4ºfrent 2830-163', '60.pdf', 1, -1, '', -1, '', -1, '8013187', 3, '', '', '0000-00-00', '0000-00-00'),
(61, 'Márcio Manuel Garcia', '2014-11-18', '2014-11-18 00:00:00', 1, 1, 3, 219588473, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 968976371, 0, 0, 'marcio_garcia6@hotmail.com', '', 'Portuguesa', 0, '', 'Tem experiência como serralheiro civil-oficial de 1ª em caixilharia', 10, 13, 1, 4, 11, -1, -1, 0, 0, 1, 'Rua Francisco DÁlmeida nº65 , 2º esqd 2830-000', '61.pdf', 1, -1, '', -1, '', -1, '12229390', 3, '', '', '0000-00-00', '0000-00-00'),
(62, 'Ana Paula Soares Vicente', '2014-11-18', '2014-11-18 00:00:00', 1, 1, 1, 188430296, 1, -1, -1, -1, '', -1, -1, 0, 2, 35, 1, -1, '', -1, '', 6, 1, 1, -1, '', -1, -1, '', -1, 965569725, -1, -1, '', '', 'Portuguesa', 1, '', '', 10, 13, -1, -1, 35, -1, -1, 0, -1, 1, 'Rua D. João de Castro nº 74, 3º dirt 2830-186', '62.pdf', 1, -1, '', -1, '', -1, '9618010', 4, '', '', '0000-00-00', '0000-00-00'),
(63, 'Carla Sofia Pessoa Miranda', '2014-11-18', '2014-11-18 00:00:00', 1, 1, 5, 216473594, 1, 0, 0, 0, '', 0, 0, 0, 2, 12, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 936613172, 0, 0, 'pacachucha_cvpm@hotmail.com', '', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 36, 35, -1, 0, 0, 1, 'Rua De Cabinda nº5 , 2º dirt 2830-169', '63.pdf', -1, -1, '', -1, '', -1, '10665393', 3, '', '', '0000-00-00', '0000-00-00'),
(64, 'Rute Sofia Batista Brálio', '2014-11-18', '2014-11-18 00:00:00', 1, 1, 4, 186586833, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 967949471, 0, 0, 'ruteso@sapo.pt', '', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 43, 35, -1, 0, 0, 1, 'Rua Da Paz  nº9 R/C dirt 2830-000', '64.pdf', 1, -1, '', -1, '', -1, '10040929', 3, '', '', '0000-00-00', '0000-00-00'),
(65, 'Vitor Manuel Malacão Lopes', '2014-11-18', '2014-11-18 00:00:00', 1, 1, 4, 139410627, 2, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 966802677, 212164829, 0, 'vmmlcaixote@gmail.com', 'bARREIRO', 'Portuguesa', 1, '', 'experiência COMO AJUDANTE DE ELETRICISTA, OPERÁRIO FABRIL NA ÁREA DA TRANSFORMAÇÃO DA CORTIÇA,', 10, 13, 1, 3, 26, -1, -1, 0, 0, 1, 'Rua Cidade Da Praia nº7 , 1ºdirt 2830-000', '65.pdf', -1, -1, '', -1, '', -1, '6264368', 3, '', '', '0000-00-00', '0000-00-00'),
(66, 'José Joaquim Beringel Ramos', '2014-11-18', '2014-11-18 00:00:00', 1, 1, 4, 203465407, 1, 0, 0, 0, '', 0, 0, 0, 1, 26, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 917935485, 0, 0, 'jj.r@hotmail.com', '', 'Portuguesa', 1, '', '', 10, 13, 1, 3, 26, -1, -1, 0, 0, 1, 'Travessa Do Parquenº7, 3º esqd 2830-214', '66.pdf', 1, -1, '', -1, '', -1, '10655072', 3, '', '', '0000-00-00', '0000-00-00'),
(67, 'Adalzija Esperança Rassul Tayob', '2013-11-07', '2014-11-20 00:00:00', 2, 10, 5, 243624743, 1, -1, -1, -1, '', -1, 1, 0, 2, 39, -1, -1, '', -1, '', 6, 2, 1, -1, '', -1, -1, '', -1, 964925431, -1, -1, '', 'Moçambique', 'Moçambique', -1, '', '', 11, 20, -1, -1, 12, 8, 39, 0, -1, 1, 'Rua Mário Sacramento Lt 130 3º Drt', '67.pdf', 1, -1, '', -1, '', -1, 'P37812N02', 1, '', '', '0000-00-00', '0000-00-00'),
(68, 'Américo Adão Correia', '1982-03-24', '2014-11-21 00:00:00', 2, 10, 5, 238538668, -1, -1, -1, -1, '', -1, -1, 0, 2, 11, 1, -1, '', -1, '', 4, 1, 2, -1, '', -1, -1, '', -1, 925859649, -1, -1, 'americocorreia111@hotmail.com', 'Angola', 'Angola', 1, '', '', 11, 20, -1, -1, -1, -1, -1, 0, -1, 1, 'Rua Bordalo Pinheiro Lt 14 1º Esq', '68.pdf', 1, -1, '', -1, '', -1, '4X69V3347', 1, '', '', '0000-00-00', '0000-00-00'),
(69, 'Asana Mendes', '1992-01-16', '2014-11-21 00:00:00', 2, 10, 1, 268937923, 5, -1, -1, -1, '', -1, -1, 0, 2, 11, 1, -1, '', -1, '', 3, 1, 2, -1, '', -1, -1, '', -1, 920058500, -1, -1, '', 'Guiné Bissau', 'Guiné Bissau', 1, '', '', 11, 20, -1, -1, 11, -1, -1, 0, -1, 1, 'Rua Bordalo Pinheiro Lt21 4º Esq', '69.pdf', 1, -1, '', -1, '', -1, '0W91X5047', 1, '', '', '0000-00-00', '0000-00-00'),
(70, 'Cipriano Monteiro Tavares', '1956-09-16', '2014-11-21 00:00:00', 2, 10, 5, 193093111, 1, -1, -1, -1, '', -1, -1, 0, 1, 45, -1, -1, '', -1, '', 7, 2, 2, -1, '', -1, -1, '', -1, 920378384, -1, -1, '', 'Guiné Bissau', 'Guiné Bissau', 1, '', '', 11, 20, 1, -1, 15, -1, -1, 0, -1, 1, 'Pctª Teixeira de Pascoais Lt 17 2º Esq', '70.pdf', 1, -1, '', -1, '', -1, '5148B77B5', 1, '', '', '0000-00-00', '0000-00-00'),
(71, 'Feliciano da Conceição Pimentel Lopes', '1964-07-09', '2014-11-21 00:00:00', 1, 2, 4, 258953284, -1, 0, 0, 0, '', 0, 0, 0, 2, 10, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 963655867, 0, 0, '', 'Cabo Verde', 'Português', 1, '', 'Curso Técnico de Eletricidade', 3, 18, 1, 4, 10, 43, -1, 0, 0, 1, 'Trav. do Loureiro nº23, 1º andar 2830-392 Barreiro (Portugal)', '71.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(72, 'Filipe Pereira Fortes', '1981-01-17', '2014-11-24 00:00:00', 2, 5, 4, 219027706, 1, 0, 0, 0, 'Soldador/Serralheiro', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 917024527, 0, 0, 'filipe-19811@hotmail.com', '', 'Portuguesas', 0, '', '2014-05-22 - Experiência soldador; ajudante de pedreiro e serralheiro. Curso  de soldadura C.F. Seixal equivalente ao 9.º ano (soldador).\r\n2014-06-02 - Apoio na procura activa de emprego. Não foi aceite no curso de soldadura.', 22, 22, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Santo Condestável, n.º5 Arroteias - Alhos Vedros', '', 1, 1, 'Soldadura', -1, '', -1, '11948362', 3, '', '', '0000-00-00', '0000-00-00'),
(73, 'Maria Eugénia Rosa', '1958-10-19', '2014-05-20 22:00:00', 2, 10, 1, 231954301, -1, -1, -1, -1, 'Ajudante de Acção Directa de 2.ª', -1, -1, 0, 1, -1, -1, -1, '', -1, '', 7, 1, 1, -1, '', -1, -1, '', -1, 966948215, -1, -1, 'carmen.lobo1940@hotmail.com', 'Cidade da Praia ', 'Cabo Verdiana', -1, '', '', 22, 22, -1, -1, -1, -1, -1, 0, -1, 1, 'Rua Praceta das Camélias n.º 45 - 4.º Esq.º, 2835-210 Vale da Amoreira', '73.pdf', 1, -1, '', -1, '', -1, '15698324', 3, '', '', '0000-00-00', '0000-00-00'),
(74, 'Maria Catarina Mendes Moreira', '1985-01-03', '2014-11-24 00:00:00', 2, 10, 5, 242260004, 1, 0, 0, 0, '', 1, 0, 0, 1, 39, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 963750260, 0, 0, 'catarina.m.m@sapo.pt', 'Portuguesa', 'Portuguesa', 0, '', '', 17, 23, 0, -1, 39, 35, -1, 0, 0, 1, 'Rua das Acácias nº 38-2º Dtº', '74.pdf', -1, -1, '', -1, '', -1, '12994307', 3, '', '', '0000-00-00', '0000-00-00'),
(75, 'Sara Raquel Mafra Baptista', '1984-03-16', '2014-11-24 00:00:00', 1, 4, 4, 232462410, 1, 0, 0, 0, '', 1, 0, 0, 1, 39, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 963631322, 0, 0, 'sarabaptista84@gmail.com', 'Portuguesa', 'Portuguesa', 1, '', '', 17, 23, 0, -1, 15, 5, 41, 0, 0, 1, 'Cidade Sol Rua 10 Lote 62 - 1º A', '75.pdf', 1, -1, '', -1, '', -1, '13654225', 3, '', '', '0000-00-00', '0000-00-00'),
(76, 'Marta Patricia Mafra Baptista', '0000-00-00', '2014-11-24 00:00:00', 2, 10, 3, 265194946, 2, 0, 0, 0, '', 1, 0, 0, 1, 35, 0, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 962035722, 0, 0, 'martabaptistateixeira@hotmail.com', 'Portuguesa', 'Portuguesa', 1, '', '', 17, 23, 0, -1, 5, 15, 35, 0, 0, 1, 'Pçtª Maria Luisa Soares Lt 89-2º Dtº', '76.pdf', 1, -1, '', -1, '', -1, '14701195', 3, '', '', '0000-00-00', '0000-00-00'),
(77, 'Cristina Maria Dias Riscado', '0000-00-00', '2014-06-02 22:00:00', 2, 5, 2, 214139441, 2, 0, 0, 0, 'Lar particular em Évora', 1, 0, 0, 2, 42, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, 'cristina.riscado@live.com.pt', 'Alcains', 'Portuguesa', 0, '', '2014-06-03 - Experiência profissional: lar  idosos particular em Évora (7 meses); Centro de saúde Faro, ajudante de enfermagem; Feira Nova Telheiras, limpeza; Estufas no Algarve.', 22, 22, 0, -1, 42, 40, 35, 0, 0, 2, 'Avenida Humberto Delgado, n.º 31 3-º Esq.º - Alhos Vedros', '', 1, -1, '', -1, '', -1, '1229741', 3, '', '', '0000-00-00', '0000-00-00'),
(78, 'António Alves de Matos', '2014-11-25', '2014-11-25 00:00:00', 1, 1, 2, 125813066, 1, -1, -1, -1, 'Limpeza e Higiene Urbana', -1, -1, 0, 2, 10, 1, -1, '', -1, '', 6, 1, 2, -1, '', -1, -1, '', -1, 961562318, -1, -1, '', '', 'Portuguesa', 1, '', '', 3, 18, -1, -1, 10, 43, 11, 0, -1, 1, 'Rua Miguel Bombarda, Nº 270 5º Esd 2830-289 Verderena', '78.pdf', 1, -1, '', -1, '', -1, '07303611', 3, '', '', '0000-00-00', '0000-00-00'),
(80, 'Francisco Manuel Filipe', '1963-11-19', '2014-11-25 00:00:00', 1, 4, 5, 202475212, 2, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 912735860, 0, 0, '', 'Framuc', 'Angolano', 0, '', 'Especialidade \"Electricista\"', 10, 13, 1, -1, 11, -1, -1, 0, 0, 1, 'Estrada Municipal Quinta do Tiago nº4 2835-490', '80.pdf', 1, -1, '', -1, '', -1, '30129306', 3, '', '', '0000-00-00', '0000-00-00'),
(81, 'Hélder Alexandre da Costa Lopes ', '1972-06-23', '2014-11-25 00:00:00', 1, 1, 4, 202730034, 1, 0, 0, 0, 'Vigilante ', 0, 0, 0, -1, 43, 0, 0, '', 0, '', -1, 1, 2, 0, '', 0, 0, '', 0, 933597350, 0, 0, '', '', 'Portuguesa ', 1, '', 'Serviços técnicos- neste caso o senhor quer trabalhar como vigilante ', 3, 18, 0, -1, 43, 26, 45, -1, 0, 1, 'Rua Maria Judite Carvalho nº 1 3º Dto', '81.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(82, 'Humberto Fernando Barata Olimpio ', '1956-03-31', '2014-11-25 00:00:00', 1, 2, 2, 176143475, 4, 0, 0, 0, 'Pintor de Campos de futebol ', 0, 0, 0, -1, 11, 0, 0, '', 0, '', -1, 1, 2, 0, '', 0, 0, '', 0, 964370283, 0, 0, '', '', 'Portuguesa ', 1, '', '', 3, 18, 1, 1, 10, 11, 45, -1, 0, 1, 'Travessa da Parreirinha nº 5 1º', '82.pdf', -1, -1, '', -1, '', -1, '', 4, '', '', '0000-00-00', '0000-00-00'),
(83, 'Madona Jorge', '2014-11-25', '2014-11-25 00:00:00', 1, 2, 3, 246978724, 1, 0, 0, 0, 'Empregada Doméstica ', 0, 0, 0, 1, 42, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 962886942, 0, 0, '', '', '', 1, '', '', 3, 18, 0, -1, 35, 24, 39, 0, 0, 1, 'Rua Mouzinho de Albuquerque nº 34 r/c ', '83.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(84, 'Cecília Baiano Pedronho Do Espírito Santo   ', '1973-07-22', '2014-11-25 00:00:00', 1, 1, 3, 215038266, 1, 0, 0, 0, 'Ajudante de Acção Directa ', 0, 0, 0, 2, 42, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 968061586, 0, 0, '', '', 'Portuguesa ', 1, '', '', 3, 18, 0, -1, 42, 39, 35, 0, 0, 1, 'Rua Júlio Dinis nº 76 2º Esq ', '84.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(85, 'Fátima Cristina dos Santos Horta ', '1980-10-24', '2014-11-25 00:00:00', 1, 1, 3, 225881063, 1, 0, 0, 0, 'Empregada de Balcão em café ', 0, 0, 0, 1, 36, 1, 0, '', 0, '', -1, 1, 1, 0, '', 0, 0, '', 0, 965080977, 0, 0, '', '', 'Portuguesa ', 1, '', '', 3, 18, 0, -1, 36, 35, 39, 0, 0, 1, 'Rua D. João IV nº 15 3º Esq', '85.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(86, 'Ana Isabel Rosado de Paiva Simões', '1991-03-22', '2014-11-25 00:00:00', 1, 2, 4, 231882351, -1, 0, 0, 0, 'Vendas porta a porta ', 0, 0, 0, 2, 8, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 927121511, 0, 0, '', '', 'Portuguesa ', 1, '', 'Disponível a partir de Fevereiro 2015, pois foi mãe à pouco tempo', 3, 18, 0, -1, 5, 36, 41, 0, 0, 1, 'Rua Direita nº 10 2º Dto', '86.pdf', 1, 1, '', -1, '', -1, '13369029', 3, '', '', '0000-00-00', '0000-00-00'),
(87, 'Dário Quaresma Vaz Alves de Carvalho ', '1968-02-13', '2014-11-25 00:00:00', 1, 1, 4, 236716190, -1, 0, 0, 0, 'Pintor', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 938356240, 0, 0, '', '', '', 1, '', '', 3, 18, 0, -1, 11, 43, 45, 0, 0, 1, 'Rua conselheiro Joaquim António de Aguiar nº 150 1º esq', '87.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(88, 'Fábio Gualter Martins Vieira ', '2014-11-25', '2014-11-25 00:00:00', 1, 2, 3, 224087100, -1, 0, 0, 0, 'Venda Ambulante ', 0, 0, 0, 2, 8, 1, 0, '', 0, '', -1, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', '', 1, '', '', 3, 18, 1, 4, 8, -1, -1, 0, 0, 1, 'Rua conselheiro Joaquim António de Aguiar nº 156 R/c', '88.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(89, 'Natércia Ricardo Garcia Fonseca ', '1991-11-24', '2014-11-25 00:00:00', 1, 2, 3, 269574565, 1, 0, 0, 0, 'Venda Ambulante ', 0, 0, 0, 2, 8, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', '', 1, '', '', 3, 18, 0, -1, 8, -1, -1, 0, 0, 1, 'Rua conselheiro Joaquim António de Aguiar nº 156 R/c', '89.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(90, 'Carla Alexandra Simões Miranda', '1992-09-03', '2014-11-25 00:00:00', 1, 4, 4, 224150367, 1, 0, 0, 0, '', 0, 0, 0, 2, 6, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 927806972, 0, 0, 'babyone_15@hotmail.com', 'Barreiro', 'Portuguesa', 1, '4658115', '', 10, 13, 0, -1, 32, 36, -1, 0, 0, 1, 'Rua 13 Quinta da Mina Lote 11 2º Dtº 2835-501 Cidade Sol', '90.pdf', 1, 1, '', -1, '', -1, '14462616', 3, '', '', '0000-00-00', '0000-00-00'),
(91, 'José Maria de Jesus Batista ', '1957-12-23', '2014-11-25 00:00:00', 1, 1, 2, 150678614, -1, 0, 0, 0, 'Pedreiro ', 0, 0, 0, 2, 11, 1, 0, '', 0, '', -1, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', '', 1, '', '', 3, 18, 1, 4, 11, 45, -1, 0, 0, 1, 'Rua Cândido de Oliveira nº 71', '91.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(92, 'Luís Manuel Alvito de Sousa ', '1975-05-11', '2014-11-25 00:00:00', 1, 1, -1, 210576650, -1, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 965196403, 0, 0, '', '', '', 1, '', '', 3, 18, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua D. Afonso Henriques nº 21 2º esq ', '92.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(93, 'Orlanda Cabeças Prudêncio ', '1992-03-29', '2014-11-25 00:00:00', 1, 1, 1, 261182617, -1, 0, 0, 0, 'Empregada de limpeza ', 0, 0, 0, 1, 35, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 960129643, 0, 0, '', '', '', 1, '', '', 3, 18, 0, -1, 35, -1, -1, 0, 0, 1, 'Calçada da Misericórdia nº 3 ', '93.pdf', -1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(94, 'Cátia Sofia Vitorino Fernandes ', '1986-03-03', '2014-11-25 00:00:00', 1, 2, 2, 257661832, -1, 0, 0, 0, 'Venda Ambulante ', 0, 0, 0, 2, 8, 1, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 939132332, 0, 0, '', '', '', 1, '', '', 3, 18, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua conselheiro Joaquim António de Aguiar nº 181 r/c esq', '94.pdf', -1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(95, 'Rafael dos Reis Mendes ', '1986-01-13', '2014-11-25 00:00:00', 1, 2, 2, 257661484, -1, 0, 0, 0, 'Venda Ambulante ', 0, 0, 0, 2, 8, 1, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 939132332, 0, 0, '', '', '', 1, '', '', 3, 18, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua conselheiro Joaquim António de Aguiar nº 181 r/c esq', '95.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(96, 'Joaquim Carlos de Freitas Gouveia', '2014-11-25', '2014-11-25 00:00:00', 1, 1, 3, 222143207, 1, 0, 0, 0, 'Montador de Andaimes e Servente', 0, 0, 0, 2, 10, 1, 0, '', 0, '', 5, -1, 2, 0, '', 0, 0, '', 0, 918986992, 0, 0, '', '', 'Portuguesa', 1, '', '', 3, 18, 1, 4, 10, 11, 45, 0, 0, 1, 'Rua Professor Joaquim Vicente França, Nº 49 1º Drt 2830-298 Verderena', '96.pdf', 1, 1, 'Curso de Informática', -1, '', -1, '11822969', 3, '', '', '0000-00-00', '0000-00-00'),
(97, 'Patricia Cristina Ramos Silva', '2014-11-25', '2014-11-25 00:00:00', 2, 10, 5, 222217120, 1, 0, 0, 0, '', 1, 0, 0, 1, 8, 0, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 938456169, 0, 0, 'patriciasilvaa2014@hotmail.com', 'Portuguesa', 'Portuguesa', 0, '', '', 17, 23, 0, -1, 6, 15, -1, 0, 0, 1, 'R.Afonso Lopes Vieira Lt 37-2º Esqº Vale Amoreira', '97.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(98, 'João luís Fialho', '1989-10-19', '2014-11-25 00:00:00', 1, 4, 1, 224150383, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 934683680, 0, 0, '', 'Alto Seixalinho Barreiro', 'Portuguesa', 1, '3868910', '', 10, 13, 0, -1, 26, 11, -1, 0, 0, 1, 'Rua 13 Quinta da Mina Lote 9 2º Dto. 2835-492 Cidade Sol', '98.pdf', -1, 1, '', -1, '', -1, '14262797', 3, '', '', '0000-00-00', '0000-00-00'),
(99, 'Maria Fernanda Dias dos Santos ', '1973-10-23', '2014-11-26 00:00:00', 1, 1, 2, 203187105, -1, 0, 0, 0, 'Cantoneira ', 0, 0, 0, -1, 10, 0, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 964106026, 0, 0, '', '', '', 1, '', '', 3, 18, 0, -1, 10, 35, -1, -1, 0, 1, 'Av. D. Afonso Henriques Nº 76 B R/c Esq', '99.pdf', -1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(100, 'Clarindo Mendes Vaz', '1981-04-17', '2014-11-26 00:00:00', 2, 10, 2, 240218027, 1, -1, -1, -1, '', -1, -1, 0, 2, 11, 1, -1, '', -1, '', 4, 1, 2, -1, '', -1, -1, '', -1, 961420445, -1, -1, '', 'Cabo Verde', 'Cabo Verde', 1, '', 'Pedreiro', 11, 20, -1, -1, 11, -1, -1, 0, -1, 1, 'Pta Pablo Neruda Lt 36 6Drt', '100.pdf', 1, -1, '', -1, '', -1, '8W763251X', 1, '', '', '0000-00-00', '0000-00-00'),
(101, 'Deusa Marisa Silva Mendes', '1987-09-13', '2014-11-26 00:00:00', 2, 10, 4, 248362550, 1, -1, -1, -1, '', -1, -1, 0, -1, 42, -1, -1, '', -1, '', 4, 1, 1, -1, '', -1, -1, '', -1, 924196131, -1, -1, '', 'Cabo Verde', 'Cabo Verde', 1, '', '', 11, 20, -1, -1, 42, -1, -1, -1, 1, 1, 'Pctª Mª Helena Vieira da Silva Lt 30 1º Drt', '101.pdf', 1, -1, '', -1, '', -1, '614S1600Q', 1, '', '', '0000-00-00', '0000-00-00'),
(102, 'Edna Livramento Marques', '1979-02-23', '2014-11-26 00:00:00', 2, 10, -1, 231971796, 2, -1, -1, -1, '', -1, -1, 0, 2, 35, 1, -1, '', -1, '', 5, 1, 1, -1, '', -1, -1, '', -1, 963721787, -1, -1, '', 'Cabo Verde', 'Cabo Verde', 1, '', '', 11, 20, -1, -1, 42, -1, -1, 0, -1, 1, 'Rua João VIllaret Nº1 1º Drt', '102.pdf', 1, -1, '', -1, '', -1, '2S21422T0', 1, '', '', '0000-00-00', '0000-00-00'),
(103, 'Elizabeth da Purificação Nunes Dragão', '1982-02-03', '2014-11-26 00:00:00', 2, 10, 4, 224188577, 1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 967820046, 0, 0, 'eli.dragao@hotmail.com', 'Angola', 'Angola', 1, '', '', 11, 20, 0, -1, 39, -1, -1, 0, 0, 1, 'Rua dos Açores Lt 16 2º Esq', '103.pdf', 1, -1, '', -1, '', -1, 'Q8T660902', 1, '', '', '0000-00-00', '0000-00-00'),
(104, 'Fatumata Binta Kote', '1981-07-16', '2014-11-26 00:00:00', 2, 10, 3, 259035084, -1, 0, 0, 0, '', 0, 0, 0, 1, 39, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 964752028, 0, 0, '', 'Guiné Bissau', 'Guiné Bissau', 1, '', '', 11, 20, 0, -1, 39, -1, -1, 0, 0, 1, 'Rua José Conceição Nunes, Lt 76 2º Drt', '104.pdf', 1, -1, '', -1, '', -1, '6776R9555', 1, '', '', '0000-00-00', '0000-00-00'),
(105, 'Fátima Gabriel dos Santos Diogo', '1976-02-28', '2014-11-26 00:00:00', 2, 10, 2, 233816925, 1, 0, 0, 1, '', 0, 0, -1, -1, 39, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 963280447, 0, 0, '', 'Angola', 'Angola', 1, '', '', 11, 20, 0, -1, 39, -1, -1, 1, 0, 1, 'R. João Villarett Lt 17 2º Esq', '105.pdf', 1, -1, '', -1, '', -1, 'V899210X0', 1, '', '', '0000-00-00', '0000-00-00'),
(106, 'Florença Mendes ', '1991-01-02', '2014-11-26 00:00:00', 1, 1, 4, 246642807, 1, 0, 0, 0, '', 0, 0, 0, 1, 35, 1, 0, '', 0, '', 3, -1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', '', 0, '', '', 3, 18, 0, -1, 36, 35, -1, 0, 0, 1, 'Rua Jacinto Nicola nº 5 2º Esq', '106.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(107, 'Claudio Jorge Sampaio da Silva ', '1978-08-05', '2014-11-26 00:00:00', 1, 1, 4, 217983456, 1, 0, 0, 0, '', 0, 0, 0, 1, 8, 1, 0, '', 0, '', -1, -1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', '', 1, '', '', 3, 18, 0, -1, 8, 36, 11, 0, 0, 1, 'Rua Poeta Sebastião, nº 8 3º Dto', '107.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(108, 'Andreia Miriam Jesus Oliveira ', '1988-08-11', '2014-11-26 00:00:00', 1, 2, 4, 263575977, -1, 0, 0, 0, 'Empregada de balcão - Pastelaria ', 0, 0, 0, 1, 36, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 917372302, 0, 0, '', '', '', 1, '', 'A senhora encontra-se grávida, só esta disponível a partir de junho de 2015', 3, 18, 0, -1, 36, 35, -1, 0, 0, 1, 'Travessa do Prior Nº 6 R/c', '108.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(109, 'Rosa de Jesus Silva Branco', '1969-05-18', '2014-11-27 00:00:00', 1, 1, 3, 195922263, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 913217508, 0, 0, '', 'Lisboa', 'Portuguesa', 1, '915097', 'Serviços Sociais ligados ao (Apoio a Infância e Idoso)', 3, 18, 0, -1, 36, 42, 10, 0, 0, 1, 'Praceta D. Sancho I, Nº 4 3º Drt', '109.pdf', 1, 1, 'Hotelaria', -1, '', -1, '09584982', 3, '', '', '0000-00-00', '0000-00-00'),
(110, 'Ana Mendes', '1970-05-10', '2014-04-03 22:00:00', 2, 10, 1, 227296141, 1, 0, 0, 0, '', 0, 0, 0, -1, 35, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 967486616, 920117474, 0, '', 'Guiné', 'Portuguesa', 0, '', '2014-06-16 - Limpezas (último ano de 2013); Feira Nova no Lavradio limpezas (11 anos); Carcavelos limpezas (4 anos) e Pingo Doce.', 22, 22, 0, -1, -1, -1, -1, -1, 0, 1, 'Rua António Rato. Lote 10, 3.º Esq.º, Vale da Amoreira', '', 1, -1, '', -1, '', -1, '30494780', 3, '', '', '0000-00-00', '0000-00-00'),
(111, 'Maria Fátima Santos Carapuça Valério', '2014-11-27', '2014-06-10 22:00:00', 2, 5, 4, 188893091, 2, -1, -1, -1, 'Auxiliar de Educação', -1, -1, 0, 2, 42, -1, -1, '', -1, '', 6, 1, 1, -1, '', -1, -1, '', -1, 912977751, -1, -1, '', 'Alhos Vedros', 'Portuguesa', -1, '', '', 22, 22, 1, -1, 42, 35, -1, 0, -1, 1, 'Rua Dr. Francisco de Almeida, n.º 11, R/Ch. Esq.º, Alhos Vedros', '111.pdf', 1, -1, '', -1, '', -1, '9699826', 3, '', '', '0000-00-00', '0000-00-00'),
(112, 'Delfina Vilma Carlos', '1987-09-13', '2014-06-16 22:00:00', 2, 10, 4, 245793364, 2, -1, -1, -1, 'Cabeleireira', -1, -1, 0, -1, -1, -1, -1, '', -1, '', 4, 1, 1, -1, '', -1, -1, '', -1, 962371299, 216012279, -1, 'delfinacarlos@hotmail.com', 'Luanda', 'Portuguesa', -1, '', '2014-06-17 - Trabalhou como cabeleireira; em restauração; ajudante de cozinha e empregada de andares.\r\nInteresses profissionais: Infantário e cozinha.', 22, 22, 1, -1, 42, 39, -1, -1, -1, 1, 'Av.ª José Almada Negreiro, Lote 27, 3.º Esq.º, Vale da Amoreira', '112.pdf', 1, -1, '', -1, '', -1, '31403961', 3, '', '', '0000-00-00', '0000-00-00'),
(113, 'Domingos Massuquini P. Timóteo', '1988-06-24', '2014-06-16 22:00:00', 2, 10, 5, 261396455, 2, -1, -1, -1, 'Pintura de Automóveis', -1, -1, 0, 2, -1, -1, -1, '', -1, '', 4, 1, 2, -1, '', -1, -1, '', -1, 961866942, 216012279, -1, 'millerbengs6@hotmail.com', 'Luanda', 'Angolana', 1, '', '', 9, 2, -1, -1, 45, -1, -1, 0, -1, 1, 'Av.ª José Almada Negreiro, Lote 27, 3.º Esq.º, 2835-006 Vale da Amoreira', '113.pdf', 1, -1, '', -1, '', -1, '031728', 3, '', '', '0000-00-00', '0000-00-00'),
(114, 'Rita Guerreiro', '1984-02-21', '2014-07-22 22:00:00', 2, 6, 6, 212386026, 1, 0, 0, 1, '', 0, 0, -1, -1, -1, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 965389789, 0, 0, 'rita.guerreiro7@gmail.com', 'Vila Real de Santo António', 'Portuguesa', 0, '', 'Integrou Raríssimas como Assistente Social. ', 22, 22, 1, -1, -1, -1, -1, 1, 0, 2, 'Rua Professor Rui Luis Gomes, N.º 50, R7Ch. Dt.º, Baixa da Banheira', '114.pdf', -1, -1, '', -1, '', -1, '12518770', 3, '', '', '0000-00-00', '0000-00-00'),
(115, 'Eliene Duarte Soares Barcelos', '1966-09-07', '2014-07-21 22:00:00', 2, 8, 5, 243883811, 4, 0, 0, 0, '', 1, 0, 0, 2, 6, 0, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 961475780, 0, 0, 'myfacelee@gmail.com', 'Minas Gerais', 'Portuguesa', 0, '', '2014-07-23 - Call Center na Teleperformance (2 anos), em Portugal; Call Center (3 anos), no Brasil e fez alguns biscates em limpezas, na Vorwek e na Avon.', 22, 22, 1, -1, -1, -1, -1, 0, 0, 1, 'Rua do Brasil, N.º 22 - 3.º Dt.º, Moita', '115.pdf', 1, -1, '', -1, '', -1, '15679759', 3, '', '', '0000-00-00', '0000-00-00'),
(116, 'Ana Vanessa Nascimento da Conceição', '1990-10-12', '2014-07-14 22:00:00', 2, 8, 6, 245699805, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 965467180, 0, 0, 'vanessaconceicao@gmail.com', 'São Sebastião da Pedreira', 'Portuguesa', 0, '', '', 22, 22, 1, -1, -1, -1, -1, -1, 0, 1, 'Rua Dr. Egas Moniz, N.º 27 - 3.º Dt.º, Moita', '116.pdf', 1, -1, '', -1, '', -1, '13761360', 3, '', '', '0000-00-00', '0000-00-00'),
(117, 'Ilidia Dias Sambú', '1972-07-28', '2014-02-11 00:00:00', 1, 4, 3, 250290111, 2, -1, -1, -1, 'Auxiliar Idoso', -1, -1, 0, 2, 42, 1, -1, '', -1, '', 5, 1, 1, -1, '', -1, -1, '', -1, 962090891, -1, -1, '', 'Guiné', 'PORTUGUESA', 1, '', 'Experiência Profissional ao nível do trabalho com idosos, mas não tem formação profissional na área.', 18, 13, 1, 4, 42, -1, -1, 0, -1, 1, 'Rua 9, Lote 51, 6º C - 2835 514 Sto. António da Charneca', '117.pdf', 1, 1, 'Ajudante familiar', -1, '', -1, '30219536', 3, '', '', '0000-00-00', '0000-00-00'),
(118, 'Mamadú Sambú', '1967-08-09', '2014-02-17 00:00:00', 1, 4, 3, 232485224, -1, -1, -1, -1, '', -1, -1, 0, 1, 11, 1, -1, '', -1, '', 6, 1, 2, -1, '', -1, -1, '', -1, 962090891, -1, -1, '', '', 'PORTUGUESA', 1, '', 'Manobrador de Máquinas em Túneis\r\nMotorista de Camiões', 18, 24, 1, -1, 11, 10, 45, 0, -1, 1, 'Rua 9, Lote 51, 6º C - 2835 Sto. António da Charneca', '118.pdf', 1, -1, '', -1, '', -1, '15915284', 3, '', '', '0000-00-00', '0000-00-00'),
(119, 'Preciosa Maria Dias Lopes Andrade', '0000-00-00', '2014-08-21 22:00:00', 1, 1, 4, 190040564, -1, -1, -1, -1, 'Ajudante de Cozinha', -1, 1, 0, 2, 39, -1, -1, '', -1, '', 6, 1, 1, -1, '', -1, -1, '', -1, 969074900, -1, -1, '', '', 'PORTUGUESA', 1, '1784585', '', 18, 24, -1, -1, 35, 39, -1, 0, -1, 2, 'Barreiro', '119.pdf', 1, -1, '', -1, '', -1, '08239129', 3, '', '', '0000-00-00', '0000-00-00'),
(120, 'Fátima Luís Manuel Francisco', '1961-10-05', '2014-11-28 00:00:00', 2, 6, 1, 228322693, 1, -1, -1, -1, '', -1, -1, 0, 2, 35, 1, -1, '', -1, '', 6, 2, 1, -1, '', -1, -1, '', -1, 925031103, -1, -1, '', 'Angola', 'Angola', 1, '', '', 11, 20, -1, -1, 35, -1, -1, 0, -1, 1, 'Rua do Alentejo Nº 72 1º Esq', '120.pdf', 1, 1, '', -1, '', -1, '038P5M459', 1, '', '', '0000-00-00', '0000-00-00'),
(121, 'Filomena Canos Frosse', '1987-03-21', '2014-11-28 00:00:00', 2, 6, 3, 280785151, 2, -1, -1, -1, '', -1, -1, 0, 2, 8, -1, -1, '', -1, '', 4, 2, 1, -1, '', -1, -1, '', -1, 965446871, -1, -1, '', 'Guiné Bissau', 'Guiné Bissau', -1, '', '', 11, 20, -1, -1, 8, -1, -1, 0, -1, 1, 'Rua d Estremdura nº 43 R/C Frente', '121.pdf', 1, -1, '', -1, '', -1, '2873918', 1, '', '', '0000-00-00', '0000-00-00'),
(122, 'Gilberto José Ferreira Micongo', '1981-02-26', '2014-11-28 00:00:00', 2, 6, 3, 233117644, 1, -1, -1, -1, '', -1, -1, 0, 2, 11, -1, -1, '', -1, '', 4, 1, 2, -1, '', -1, -1, '', -1, 963669213, -1, -1, 'giljfmicongo@hotmail.com', 'Angola', 'Angola', -1, '', '', 11, 20, -1, -1, 39, -1, -1, 0, -1, 1, 'Praceta 1º de Dezembro Nº 8 3º Fte', '122.pdf', 1, 1, '', -1, '', -1, '553W49X65', 1, '', '', '0000-00-00', '0000-00-00'),
(123, 'Habiba Mamede Hossene Issufo Campos', '1972-07-10', '2014-11-28 00:00:00', 2, 10, 3, 233433446, 2, 0, 0, 0, '', 1, 0, 0, 2, 35, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 966798599, 0, 0, '', 'Moçambique', 'Moçambique', 1, '', '', 11, 20, 0, -1, 39, 36, 35, 0, 0, 1, 'Rua Bordalo Pinheiro Lt20 4º Esq', '123.pdf', 1, -1, '', -1, '', -1, '001966', 1, '', '', '0000-00-00', '0000-00-00'),
(124, 'Helder Stefan Afonso dos Santos Costa', '1994-03-20', '2014-11-28 00:00:00', 2, 10, 3, 236654926, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 963387063, 0, 0, '', 'Angola', 'Angola', 1, '', '', 11, 20, 0, -1, 3, -1, -1, 0, 0, 1, 'Pctª Maria Luisa Soares Nº79 1ºEsq', '124.pdf', 1, 1, '', -1, '', -1, 'T651T1890', 1, '', '', '0000-00-00', '0000-00-00'),
(125, 'Henrique Júnior Cabral', '1983-11-07', '2014-11-28 00:00:00', 2, 6, 2, 266288782, 1, 0, 0, 0, '', 1, 0, 0, 2, 11, 0, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 924196506, 0, 0, '', 'Guiné Bissau', 'Guiné Bissau', 1, '', '', 11, 20, 0, -1, 11, 26, 24, 0, 0, 1, 'Rua Francisco Miguel nº 13 2º A', '125.pdf', 1, -1, '', -1, '', -1, '40SR88789', 1, '', '', '0000-00-00', '0000-00-00'),
(126, 'Hilário Có', '1970-05-03', '2014-11-28 00:00:00', 2, 6, 2, 205503810, 5, 0, 0, 0, '', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 969114914, 0, 0, '', 'Guiné Bissau', 'Guiné Bissau', 1, '', '', 11, 20, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Soeiro Pereira Gomes Nº 32 1º Esq', '126.pdf', 1, -1, '', -1, '', -1, '6455N5M22', 1, '', '', '0000-00-00', '0000-00-00'),
(127, 'Hugo José Mendonça Correia', '1995-07-18', '2014-11-28 00:00:00', 2, 10, 5, 284361453, 1, 0, 0, 0, '', 1, 0, 0, 1, 39, 0, 0, '', 0, '', -1, 1, 2, 0, '', 0, 0, '', 0, 963040134, 0, 0, 'intensed-fofo@live.com.pt', 'Portugal', 'Cabo Verde', 0, '', '', 11, 20, 0, -1, 39, -1, -1, 0, 0, 1, 'Pctª João Villaret Nº8 RC Drt', '127.pdf', 1, -1, '', -1, '', -1, 'J390714', 2, '', '', '0000-00-00', '0000-00-00'),
(128, 'Ismaldo Ailton Matos Lopes', '1989-08-12', '2014-11-28 00:00:00', 2, 10, 5, 264203909, -1, -1, -1, -1, '', -1, -1, 0, 1, 6, -1, -1, '', -1, '', 4, 2, 2, -1, '', -1, -1, '', -1, 961056081, -1, -1, '', 'Guiné Bissau', 'Guiné Bissau', -1, '', '', 11, 20, -1, -1, 28, -1, -1, 0, -1, 1, 'Pctª José Escada Lote 13 R/C Esq', '128.pdf', 1, 1, '', -1, '', -1, 'CAO100681', 1, '', '', '0000-00-00', '0000-00-00'),
(129, 'Maísa Lopes Correia', '0000-00-00', '2014-11-28 00:00:00', 1, 1, -1, 247198617, 1, 0, 0, 0, '', 1, 0, 0, 1, 35, 0, 0, '', 0, '', -1, -1, 1, 0, '', 0, 0, '', 0, 968134121, 0, 0, '', 'Guiné Bissau', 'Guiné Bissau', 1, '', '', 11, 20, 0, -1, -1, -1, -1, 0, 0, 1, 'R. Dr. Manuel Pacheco Nobre nº 107 4º Esq.', '129.pdf', -1, 1, 'Empreendedorismo', -1, '', -1, '042SR5334', 1, '', '', '0000-00-00', '0000-00-00'),
(130, 'Mama Nhalim Baldé', '1965-04-18', '2014-11-28 00:00:00', 2, 6, 4, 239704371, 5, -1, -1, -1, '', -1, -1, 0, 2, 36, 1, -1, '', -1, '', 6, 1, 1, -1, '', -1, -1, '', -1, 969455586, -1, -1, '', 'Guiné Bissau', 'Guiné Bissau', 1, '', '', 11, 20, -1, -1, 36, 45, -1, 0, -1, 1, 'Rua Algarve Nº10 RC Esq', '130.pdf', 1, -1, '', -1, '', -1, 'R32S18141', 1, '', '', '0000-00-00', '0000-00-00'),
(131, 'Manuel Cunte', '1965-10-15', '2014-11-28 00:00:00', 2, 10, 5, 257585648, 1, 0, 0, 0, '', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 966757353, 0, 0, '', 'Guiné Bissau', 'Guiné Bissau', 1, '', '', 11, 20, 0, -1, 11, -1, -1, 0, 0, 1, 'Pctª Mª Helena Vieira da Silva Lt 35 2º Drt', '131.pdf', 1, -1, '', -1, '', -1, '81VW90600', 1, '', '', '0000-00-00', '0000-00-00'),
(132, 'Manuel Jesus dos Santos Conceição', '1966-02-21', '2014-11-28 00:00:00', 2, 10, 2, 251996434, 2, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 969503287, 0, 0, '', 'Cabo Verde', 'Cabo Verde', 1, '', '', 11, 20, 0, -1, 11, -1, -1, 0, 0, 1, 'Pctª Mª Helena Vieira da Silva Lt 32 6º Esq', '132.pdf', 1, -1, '', -1, '', -1, '158V6W927', 1, '', '', '0000-00-00', '0000-00-00'),
(133, 'Maria Domingas Sebastião Ambriz', '1976-05-09', '2014-11-28 00:00:00', 1, 4, 3, 235475254, 4, 0, 1, 0, '', 0, 0, -1, -1, 35, 0, 0, '', 0, '', 5, 2, 1, 0, '', 0, 0, '', 0, 967727976, 0, 0, 'mariaambriz@outlook.pt', 'Angola', 'Angola', 1, '', '', 11, 20, 0, -1, 35, 39, -1, 1, 0, 1, 'Rua 2 Lt 4, 5º Frt', '133.pdf', 1, -1, '', -1, '', -1, '2T056R199', 1, '', '', '0000-00-00', '0000-00-00'),
(134, 'Maria Isabel Varela Monteiro', '1955-12-11', '2014-11-28 00:00:00', 2, 10, 3, 230961754, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 963421286, 0, 0, '', 'Guiné Bissau', 'Cabo Verde', 1, '', '', 11, 20, 0, -1, 35, 45, -1, 0, 0, 1, 'R. Pres. Manuel Teixeira Gomes Lt 10 3º Drt', '134.pdf', 1, -1, '', -1, '', -1, '09X7V0835', 1, '', '', '0000-00-00', '0000-00-00'),
(135, 'Maria Marcos Mendes Sanó', '1979-02-12', '2014-11-28 00:00:00', 2, 10, 1, 263981819, 4, -1, -1, -1, '', -1, -1, 0, 1, 35, 1, -1, '', -1, '', 5, 1, 1, -1, '', -1, -1, '', -1, 963725586, -1, -1, '', 'Guiné Bissau', 'Guiné Bissau', 1, '', '', 11, 20, -1, -1, 35, -1, -1, 0, -1, 1, 'Pctª Maria Luisa Soares Nº90 2º Drt', '135.pdf', 1, -1, '', -1, '', -1, '2V28122X0', 1, '', '', '0000-00-00', '0000-00-00'),
(136, 'Maria Sábado Djedje', '1977-09-26', '2014-11-28 00:00:00', 2, 6, 3, 261248057, 1, -1, -1, -1, '', -1, -1, 0, 1, 35, -1, -1, '', -1, '', 5, 2, 1, -1, '', -1, -1, '', -1, 965673527, -1, -1, '', 'Guiné Bissau', 'Guiné Bissau', -1, '', '', 11, 20, -1, -1, 35, 39, -1, 0, -1, 1, 'Rua União Chinquilho nº 1 3º Dto', '136.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(137, 'Marie Jacqueline Muanga Lufutu', '1947-11-30', '2014-11-28 00:00:00', 2, 10, 6, 217226752, 1, 0, 0, 0, '', 1, 0, 0, 2, 35, 0, 0, '', 0, '', 8, -1, 1, 0, '', 0, 0, '', 0, 917901879, 0, 0, '', 'Congo', 'Congo', 1, '', '', 11, 20, 0, -1, -1, -1, -1, 0, 0, 1, 'Pcta Maria Helena Vieira da Silv 29 3º Esq.', '137.pdf', 1, 1, 'Empreendedorismo', -1, '', -1, '39S8642T4', 1, '', '', '0000-00-00', '0000-00-00'),
(138, 'Mohamed Lamine Coté', '1993-11-05', '2014-11-28 00:00:00', 2, 10, 5, 280469942, 1, -1, -1, -1, '', -1, -1, 0, -1, 11, -1, -1, '', -1, '', 4, 2, 2, -1, '', -1, -1, '', -1, 966692441, -1, -1, '', 'Guiné Bissau', 'Guiné Bissau', -1, '', '', 11, 20, -1, -1, 11, 6, -1, -1, 1, 1, 'Rua José Conceição Nunes, Lt 76 2º Drt', '138.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00');
INSERT INTO `utentes` (`id`, `nome`, `dataNascimento`, `dataInscricao`, `idConcelho`, `idFreguesia`, `idHabilitacoes`, `NIF`, `idEstadoCivil`, `trabalhadorPrecario`, `PrestadorDeServicos`, `TrabalhadorContaOutrem`, `ultimaProfissaoExercida`, `semSubsidio`, `subsidioDesemprego`, `EspecificacaoEmprego`, `tempoDesempregado`, `ultimaProfissaoExercidaDesempregado`, `beneficiarioRSI`, `outrosSubsidios`, `QuaisOutrosSubsidios`, `Estudante`, `estabelecimentoEnsino`, `idGrupoEtario`, `idSituacaoRegularizada`, `idGenero`, `MedidasAtivasEmprego`, `QualMedidasAtivasEmprego`, `Voluntariado`, `FormacaoProfissional`, `QualFormacaoProfissional`, `Biscates`, `Telemovel`, `Telefone`, `OutroTelefone`, `Email`, `Naturalidade`, `Nacionalidade`, `InscritoCentroEmprego`, `NumeroInscricaoCentroEmprego`, `Observacoes`, `idFrontOfficeSinalizador`, `idTecnico`, `cartaDeConducao`, `cartaDeConducaoCategoriaID`, `interesseProfissional1`, `interesseProfissional2`, `interesseProfissional3`, `empregado`, `outraSituacao`, `estado`, `morada`, `CV`, `pedidoInicialEmprego`, `pedidoInicialFormacao`, `pedidoInicialFormacaoQual`, `pedidoInicialOutra`, `pedidoInicialOutraQual`, `NISS`, `numeroIdentificacao`, `tipoDocumentoIdentificacao`, `codPostal`, `nrCartaConducao`, `validadeDocumentoIdentificacao`, `emissaoCartaConducao`) VALUES
(139, 'Rudi Miura Aissa da Mata Bento', '1993-05-29', '2014-11-28 00:00:00', 2, 10, 5, 271941600, 1, 0, 0, 0, '', 1, 0, 0, 2, 41, 0, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 969597632, 0, 0, 'rmb-da-mata@hotmail.com', 'Espanha', 'Guiné Bissau', 1, '', '', 11, 20, 0, -1, 41, -1, -1, 0, 0, 1, 'R. Carlos Augusto dos Santos Nº 33 2ºEsq', '139.pdf', 1, -1, '', -1, '', -1, '095360', 1, '', '', '0000-00-00', '0000-00-00'),
(140, 'Sandra Maria dos Santos Mendes', '1973-12-09', '2014-11-28 00:00:00', 2, 6, 3, 210141034, 1, -1, -1, -1, '', -1, -1, 0, 2, 39, 1, -1, '', -1, '', 5, 1, 1, -1, '', -1, -1, '', -1, 925842976, -1, -1, '', 'Cabo Verde', 'Cabo Verde', 1, '', '', 11, 20, -1, -1, 42, 39, -1, 0, -1, 1, 'Rua Poeta Bocage Nº 48 1º Frt', '140.pdf', 1, 1, '', -1, '', -1, '6M3N57528', 1, '', '', '0000-00-00', '0000-00-00'),
(141, 'Sónia Gomes', '1990-01-12', '2014-11-28 00:00:00', 2, 10, 4, 272004464, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 963692672, 0, 0, '', 'Guiné Bissau', 'Guiné Bissau', 1, '', '', 11, 20, 0, -1, -1, -1, -1, 0, 0, 1, 'R. Carlos Augusto dos Santos Nº 37 3ºEsq', '141.pdf', -1, 1, 'Auxiliar de Ação Médica', -1, '', -1, '489S25S93', 1, '', '', '0000-00-00', '0000-00-00'),
(142, 'Suncar José da Costa', '1989-02-15', '2014-11-28 00:00:00', 2, 6, 2, 276212789, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 920180831, 0, 0, '', 'Guiné Bissau', 'Guiné Bissau', 1, '', '', 11, 20, 0, -1, -1, -1, -1, 0, 0, 1, 'Pcta José Relvas nº 65 R/C Dto', '142.pdf', -1, 1, 'Cabeleireira', -1, '', -1, '2T2R04638', 1, '', '', '0000-00-00', '0000-00-00'),
(144, 'Fábio Emanuel da Silva Belchior', '1988-02-26', '2014-02-06 00:00:00', 1, 4, 3, 224617796, 1, -1, -1, -1, 'Servente / Ajudante de Pedreiro', -1, -1, 0, 2, 11, -1, -1, '', -1, '', 4, 1, 2, -1, '', -1, -1, '', -1, 912733008, -1, -1, '', 'Portuguesa', 'PORTUGUESA', 1, '', '1ª Escolha - Soldador\r\n2ª Escolha - Servente\r\n3ª Escolha - Logística (Armazém)', 18, 24, -1, -1, 10, 11, 45, 0, -1, 1, 'Quinta da Mina, Lote 7, R/C Esq. ', '144.pdf', 1, 1, 'Soldadura (Para equivalência ao 9º Ano)', -1, '', -1, '14004172', 3, '', '', '0000-00-00', '0000-00-00'),
(145, 'Cátia Nogueira Viegas', '2014-12-01', '2014-12-01 00:00:00', 1, 1, 4, 249084414, 1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 916661524, 0, 0, '', '', 'Portuguesa', 0, '', 'Tem formação na área de estética', 10, 13, 0, -1, 39, 8, -1, 0, 0, 1, '', '145.pdf', 1, -1, '', -1, '', -1, '13424266', 3, '', '', '0000-00-00', '0000-00-00'),
(146, 'Paula Alexandra dos Santos Costa Afonso', '1975-09-24', '2014-12-01 00:00:00', 1, 4, 4, 208707425, 3, 0, 0, 0, '', 0, 0, 0, 1, 35, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 912170970, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 15, 35, -1, 0, 0, 1, 'Rua 13 da Quinta da Mina lote 19 - 2º Direito - 2835 - 501 Cidade Sol', '146.pdf', 1, -1, '', -1, '', -1, '12060791', 3, '', '', '0000-00-00', '0000-00-00'),
(147, 'Claúdia Alves Catarino', '2014-12-01', '2014-12-01 00:00:00', 1, 1, 5, 202076717, 1, 0, 0, 0, '', 0, 0, 0, 2, 41, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 965282611, 0, 0, 'catarinowise@gmail.com', '', 'Portuguesa', 0, '', '', 10, 13, 1, 4, 23, 41, -1, 0, 0, 1, 'Praceta dos Corticeiros nº5,3º esqd 2830-213', '147.pdf', -1, -1, '', -1, '', -1, '11254897', 3, '', '', '0000-00-00', '0000-00-00'),
(148, 'Otávio Manuel Chainho', '2014-12-01', '2014-12-01 00:00:00', 1, 1, 3, 203018176, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 0, 212158762, 0, '', '', 'Portuguesa', 0, '', 'A última profissão exercida foi em CEI + - tem formação de técnico de frio ( 200 horas ).', 10, 13, 0, -1, 10, -1, -1, 0, 0, 1, 'Rua Afonso Albuquerque nº12, 2B 2830-176', '148.pdf', -1, -1, '', -1, '', -1, '10854528', 3, '', '', '0000-00-00', '0000-00-00'),
(149, 'Flavia Carina Silva Serrano', '1990-02-22', '2014-12-01 00:00:00', 1, 4, 4, 256596239, 1, -1, -1, -1, 'Auxiliar de Geriatria', -1, -1, 0, 2, -1, 1, -1, '', -1, '', 3, 1, 1, -1, '', -1, -1, '', -1, -1, 218205534, -1, '', 'Arrentela - Seixal', 'Portuguesa', 1, '3717719', '', 10, 13, -1, -1, 35, 15, -1, 0, -1, 1, 'Rua Vasco da Gama nº 64 Traseiras - 2835 - 723 Santo António da Charneca', '149.pdf', 1, -1, '', -1, '', -1, '13721635', 3, '', '', '0000-00-00', '0000-00-00'),
(150, 'Paulo Jorge Agostinho Da Costa', '2014-12-01', '2014-12-01 00:00:00', 1, 1, 4, 148271103, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 932876314, '', '', 'Portuguesa', 1, '', 'A última profissão exercida foi em CEI+ na junta de freguesia de Santo André ; ', 10, 13, 0, -1, 11, -1, -1, 0, 0, 1, 'Av Fuzileiros Navais nº1J sucave drt 2830-000', '150.pdf', 1, -1, '', -1, '', -1, '7897568', 3, '', '', '0000-00-00', '0000-00-00'),
(151, 'Carlos Miguel De Sousa Lelo', '2014-12-01', '2014-12-01 00:00:00', 1, 1, 4, 184234700, 4, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 915166819, 0, 0, '', '', 'Portuguesa', 1, '', 'Pedreiro', 10, 13, 0, -1, 11, -1, -1, 0, 0, 1, 'Av Escola Fuzileiros Navais nº1 U R/C dirt 2830-000', '151.pdf', 1, -1, '', -1, '', -1, '5540128', 3, '', '', '0000-00-00', '0000-00-00'),
(152, 'Sandra Maria Noivo Andrade', '1971-02-26', '2014-12-01 00:00:00', 1, 4, 1, 106521165, 1, 0, 0, 0, 'Cantoneira', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 5, 1, 1, 1, 'Integrada em CEI+', 0, 0, '', 0, 919995076, 0, 0, '', '', 'Portuguesa', 1, '2335138', 'Integrada em CEI+ desde o dia 7 de Abril de 2014 na Junta de Freguesia do Lavradio', 10, 13, 0, -1, 36, 39, -1, -1, 1, 1, 'Rua da Estremadura nº 51 3º DTo. 2835-746 Vila Chã', '152.pdf', 1, -1, '', -1, '', -1, '11180360', 3, '', '', '0000-00-00', '0000-00-00'),
(153, 'João Paulo Cardoso Peres', '1984-07-25', '2014-12-01 00:00:00', 1, 4, 4, 234955244, 1, 0, 0, 0, 'Operador de linha - Desossagem de perus', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 0, 218205534, 0, '', 'S. Sebastião da Pedreira - Lisboa', 'Portuguesa', 1, '2625140', 'Nos interesses profissionais do Sr. João Paulo a 3ª escolha, mais especifica é conservação, manutenção e a técnica da electricidade.', 10, 13, 0, -1, 32, 29, 10, 0, 0, 1, 'Rua Vasco da Gama nº 64 R/C - Traseiras - 2835 -725 - Santo António da Charneca', '153.pdf', 1, -1, '', -1, '', -1, '12483486', 3, '', '', '0000-00-00', '0000-00-00'),
(154, 'Carina Raquel Montes Lima', '1990-03-05', '2014-12-01 00:00:00', 1, 4, 1, 258855894, 1, 0, 0, 0, 'Nunca trabalhou', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 934683680, 0, 0, '', 'Vale de Santarém - Santarém', 'Portuguesa', 1, '3869020', '', 10, 13, 0, -1, 35, -1, -1, 0, 0, 1, 'Rua 13 Quinta da Mina Lote 9 2º Dto. 2835-492 Cidade Sol', '154.pdf', -1, 1, '', -1, '', -1, '14591521', 3, '', '', '0000-00-00', '0000-00-00'),
(155, 'Arminda De Oliveira Saraiva Ramiro', '1958-05-26', '2014-12-01 00:00:00', 1, 1, 2, 151494746, 1, -1, -1, -1, '', -1, -1, 0, 2, 35, 1, -1, '', -1, '', 7, 1, 1, -1, '', -1, -1, '', -1, 915166819, -1, -1, '', '', 'Portuguesa', 1, '', 'Ajudante de cozinha', 10, 13, -1, -1, 35, -1, -1, 0, -1, 1, 'Av Escola Fuzileiros Navais nº1 U R/C dirt 2830-000', '155.pdf', 1, -1, '', -1, '', -1, '8237535', 3, '', '', '0000-00-00', '0000-00-00'),
(156, 'Arnaldo Manuel Correia Figueira', '1950-07-13', '2014-12-01 00:00:00', 1, 4, 5, 151482861, 4, 0, 0, 0, 'Responsavel de Serviço Grafica', 0, 0, 0, 2, 8, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 938481319, 0, 0, 'arnaldo.figueira7@gmail.com', 'S.Jorge de Arroios - Lisboa', 'Portuguesa', 1, '3113361', '', 10, 13, 0, -1, 8, 37, 24, 0, 0, 1, 'Rua 9, Lote 46 - R/C B - 2835 - 514 Cidade Sol', '156.pdf', 1, -1, '', -1, '', -1, '1082517', 3, '', '', '0000-00-00', '0000-00-00'),
(157, 'Verónica Sofia Teles Soares', '2014-12-01', '2014-12-01 00:00:00', 1, 1, 4, 218417977, 2, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 916659672, 0, 0, '', '', 'Portuguesa', 1, '', 'última profissão na cafetaria na Perssona , vários anos de experiência em linha de montagem na Autoeuropa', 10, 13, 0, -1, 26, -1, -1, 0, 0, 1, 'Praceta Do Lobito nº11 R/C esqd 2830-157', '157.pdf', 1, -1, '', -1, '', -1, '11493470', 3, '', '', '0000-00-00', '0000-00-00'),
(158, 'Clarisse Maria Perfeito Dias', '1971-06-14', '2014-12-01 00:00:00', 1, 4, 2, 193810786, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 917042536, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '4363193', 'A D. Clarisse tem como 3ª opção a Saúde, ou seja, auxiliar de geriatria.', 10, 13, 1, 4, 36, 35, 40, 0, 0, 1, 'Rua Gago Coutinho n.º 53 - 2835 - 720 Santo António da Charneca', '158.pdf', -1, -1, '', -1, '', -1, '9918862', 3, '', '', '0000-00-00', '0000-00-00'),
(159, 'José Maria Caria De Barros Soares', '2014-12-01', '2014-12-01 00:00:00', 1, 1, 5, 123363640, 2, 0, 0, 0, '', 0, 0, 0, 2, 41, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 916659672, 0, 0, '', '', 'Portuguesa', 1, '', 'A última atividade profissional foi como administrativo no ISPA (14 anos ).', 10, 13, 1, 4, 26, -1, -1, 0, 0, 1, 'Praceta Do Lobito nº11 R/C esqd 2830-157', '159.pdf', 1, -1, '', -1, '', -1, '6557996', 3, '', '', '0000-00-00', '0000-00-00'),
(160, 'Renato Gracias Amorim Palmelão', '1963-05-29', '2014-12-01 00:00:00', 1, 1, 4, 166719161, -1, 0, 0, 0, 'Motorista', 0, 0, 0, 1, 45, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 916485179, 0, 0, '', '', '', 1, '', '', 10, 13, 1, 9, 45, -1, -1, 0, 0, 1, 'Rua !º de Maio nº81 2830-481', '160.pdf', 1, -1, '', -1, '', -1, '9089273', 3, '', '', '0000-00-00', '0000-00-00'),
(161, 'José Paulo Conceição Silva', '2014-12-01', '2014-12-01 00:00:00', 1, 1, 4, 209656603, 1, 0, 0, 0, '', 0, 0, 0, 2, 45, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 917133611, 0, 0, 'jpsilva74@hotmail.com', 'Barreiro', 'Portuguesa', 1, '', 'Vasta experiência de condução de pesados com reboque ,semi-reboque e articulados', 10, 13, 1, 10, 45, -1, -1, 0, 0, 1, 'Rua Francisco Almeida nº10 B', '161.pdf', 1, -1, '', -1, '', -1, '10581070', 3, '', '', '0000-00-00', '0000-00-00'),
(162, 'Maria Albertina da Conceição Pereira', '1956-02-04', '2014-12-01 00:00:00', 1, 1, 4, 109931670, 4, 0, 0, 0, '', 0, 0, 0, 2, 41, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 917038299, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 41, -1, -1, 0, 0, 1, 'Rua de Cabinda nº16, 3ºesq 2830-169', '162.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(163, 'Sergio Paulo Estevens Vieira', '1971-03-31', '2014-12-01 00:00:00', 1, 1, 3, 189362316, 1, 0, 0, 0, 'Empregado de Mesa', 0, 0, 0, 2, 24, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 914782818, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 24, 11, -1, 0, 0, 1, 'Rua Capitão Tenente de Oliveira e Carmo nº51,3ºDtº 2830', '163.pdf', 1, -1, '', -1, '', -1, '10598100', 3, '', '', '0000-00-00', '0000-00-00'),
(164, 'António Piedade Anastácio', '1957-01-06', '2014-12-01 00:00:00', 1, 1, 4, 138049769, 1, 0, 0, 0, '', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 933445282, 0, 0, '', '', 'Portuguesa', 1, '', 'Padaria/Pastelaria', 10, 13, 0, -1, 26, -1, -1, 0, 0, 1, 'Rua de Gôa nº60 Anexo C 2830', '164.pdf', 1, -1, '', -1, '', -1, '4833067', 3, '', '', '0000-00-00', '0000-00-00'),
(165, 'Tânoa Isabel Antunes Fernandes', '2014-12-01', '2014-12-01 00:00:00', 1, 1, 4, 224430394, 1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 910410612, 0, 0, 'taniaricardo2009@hotmail.com', '', 'Portuguesa', 1, '1704399', '', 10, 13, 1, 4, 36, 35, -1, 0, 0, 1, 'Rua Resistência ao Fascismo nº1 R/C esqd 2830-000', '165.pdf', 1, -1, '', -1, '', -1, '12332324', 3, '', '', '0000-00-00', '0000-00-00'),
(167, 'Elvira da Silva Almeida', '1965-06-24', '2014-12-01 00:00:00', 1, 1, 1, 192025236, -1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 918657789, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 35, -1, -1, 0, 0, 1, 'Rua Cidade da Praia nº22 ,Rch Esq 2830-164', '167.pdf', 1, -1, '', -1, '', -1, '9734183', 3, '', '', '0000-00-00', '0000-00-00'),
(168, 'Luis Henrique Pereira Pedroto', '1962-02-05', '2014-12-01 00:00:00', 1, 1, 3, 140876618, 1, 0, 0, 0, 'soldador montador', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 934774217, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 26, -1, -1, 0, 0, 1, 'Rua Lopo Soares de Albergaria nº20 R/C 2830-000', '168.pdf', 1, -1, '', -1, '', -1, '5653960', 3, '', '', '0000-00-00', '0000-00-00'),
(169, 'Vitor Manuel Rosario da Silva', '1957-01-15', '2014-12-01 00:00:00', 1, 1, 2, 136599214, 2, 0, 0, 0, '', 0, 0, 0, 2, 43, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 938750655, 0, 0, '', '', 'Portuguesa', 1, '', 'Canalizador/Cantoneiro', 10, 13, 0, -1, 43, -1, -1, 0, 0, 1, 'Rua de Gôa nº48 1º Dtº 2830-170', '169.pdf', 1, -1, '', -1, '', -1, '4727115', 3, '', '', '0000-00-00', '0000-00-00'),
(170, 'José Julio Moreira', '1960-02-18', '2014-12-01 00:00:00', 1, 4, 2, 154706639, 1, 0, 0, 0, 'Cantoneiro', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 6, 1, 2, 1, 'CEI+ (Junta de Freguesia)', 0, 0, '', 0, 962538341, 0, 0, '', 'Santa Catarina - CPV', 'Cabo Verde', 1, '2644305', 'Uma das escolhas do sr. José é a função de cantoneiro, sendo esta ultima a profissão que tem exercido, nas juntas de freguesia, nos ultimos anos.', 10, 13, 0, -1, 11, 1, 37, -1, 1, 1, 'rua 9, Lote 57 - 1º Esquerdo - 2835 - 514 Cidade Sol', '170.pdf', 1, -1, '', -1, '', -1, '5105G855H', 1, '', '', '0000-00-00', '0000-00-00'),
(171, 'Ana Paula Neves Senra', '1971-01-18', '2014-12-01 00:00:00', 1, 3, 4, 202281353, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 93314951, 0, 0, '', '', 'Portuguesa', 1, '', 'última profissão foi como auxiliar de educação na escola primária de coina', 10, 13, 0, -1, 36, 35, -1, 0, 0, 1, 'Rua do Mercado nº 29 A 2830-415', '171.pdf', 1, -1, '', -1, '', -1, '10778624', 4, '', '', '0000-00-00', '0000-00-00'),
(172, 'Helena Maria Morais Maduro', '1961-12-24', '2014-12-01 00:00:00', 1, 1, 4, 115011587, -1, 0, 0, 0, '', 0, 0, 0, 2, 24, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 916140602, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 24, -1, -1, 0, 0, 1, 'Rua Florbela espanca Porta 6 1º 2830', '172.pdf', 1, -1, '', -1, '', -1, '8271601', 3, '', '', '0000-00-00', '0000-00-00'),
(173, 'Nuno Vicente Gaspar Ramos', '1975-10-07', '2014-12-01 00:00:00', 1, 4, 2, 167938088, 4, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 962494215, 0, 0, '', 'Santarém', 'Portuguesa', 1, '', '', 10, 13, 1, -1, 11, 1, 45, 0, 0, 1, 'Rua Maria Domingues - Vivenda Albertino Valente - Fonte Feto', '173.pdf', -1, -1, '', -1, '', -1, '11146633', 3, '', '', '0000-00-00', '0000-00-00'),
(174, 'José António Correia Carvalho', '1967-06-13', '2014-12-01 00:00:00', 1, 1, 1, 184284554, 2, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 914513875, 0, 0, '', 'S. Sebastião da Pedreira', 'Portuguesa', 1, '38325', 'tem formação em armazenagem ( gestão de armazéns ) e jardinagem', 10, 13, 0, -1, 11, 10, -1, 0, 0, 1, '', '174.pdf', 1, -1, '', -1, '', -1, '10266690', 4, '', '', '0000-00-00', '0000-00-00'),
(175, 'Maria Luisa da Silva dos Santos', '1960-08-02', '2014-12-01 00:00:00', 1, 4, 2, 105831476, 4, 0, 0, 0, 'Cantoneira', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 914210445, 0, 0, '', '', 'Portuguesa', 1, '1825659', '', 10, 13, 0, -1, 35, 24, -1, 0, 0, 1, 'Rua Partilha do Concelho n.º 4 - 2835 - 544 Fonte Feto', '175.pdf', 1, -1, '', -1, '', -1, '07249745', 3, '', '', '0000-00-00', '0000-00-00'),
(176, 'Armando António Pereira de Jesus', '1960-07-29', '2014-12-01 00:00:00', 1, 4, 2, 159402280, 4, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', 'Santiago do Cacém - Setúbal', 'Portuguesa', 1, '4431814', '', 10, 13, 0, -1, 11, 11, 1, 0, 0, 1, 'Rua Partilha do Concelho n.º 4 - 2835 - 541 Fonte Feto', '176.pdf', 1, -1, '', -1, '', -1, '06824239', 3, '', '', '0000-00-00', '0000-00-00'),
(177, 'Dora Maria Dos Santos Almeida', '1960-08-10', '2014-12-01 00:00:00', 1, -1, 2, 181410532, -1, 0, 0, 0, '', 0, 1, 0, 2, 35, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 914513875, 0, 0, '', '', 'Portuguesa', 1, '1876914', 'Tem  Também experiência como empregada de refeitório e ajudante de cozinha', 10, 13, 0, -1, 35, -1, -1, 0, 0, 1, 'Rua De Goa nº52 , 3º esqd 2830-000', '177.pdf', 1, -1, '', -1, '', -1, '06266473', 3, '', '', '0000-00-00', '0000-00-00'),
(178, 'Daniela Filipa Varanda Batista Paulino', '1992-01-18', '2014-08-27 22:00:00', 2, 8, 5, 208720197, 2, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 938603935, 0, 0, 'daniela-fbatista@gmail.com', 'Moita', 'Portuguesa', 0, '', '2014-08-08 - Elaboração e apoio no curriculum vitae.', 22, 22, 0, -1, -1, -1, -1, -1, 0, 1, 'Rua Liege, N.º 74, 2.º Dt.º, 2860 - 476 Moita', '178.pdf', 1, -1, '', -1, '', -1, '14177605', 3, '', '', '0000-00-00', '0000-00-00'),
(179, 'Glória Dos Anjos Da Cunha Lobo', '1952-10-02', '2014-12-01 00:00:00', 1, 1, 4, 177407832, -1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 969203994, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 35, -1, -1, 0, 0, 1, 'Rua D.João de Castro nº39,3º esqd 2830-000', '179.pdf', 1, -1, '', -1, '', -1, '6340767', 3, '', '', '0000-00-00', '0000-00-00'),
(180, 'Lénea Teresa Da Silva Lourenço', '1968-12-02', '2014-12-01 00:00:00', 1, 1, 6, 196724406, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 965604956, 0, 0, 'leneateresa@gmail.com', '', 'Portuguesa', 1, '', 'técnica superior de higiene e segurança no trabalho', 10, 13, 1, 4, -1, -1, -1, 0, 0, 1, 'R.D.João de Castro nº65, 2º esqd 2830-000', '180.pdf', 1, -1, '', -1, '', -1, '8039146', 3, '', '', '0000-00-00', '0000-00-00'),
(181, 'Mário Sérgio Marques Mendes', '1957-11-14', '2014-12-01 00:00:00', 1, 1, 2, 155280716, 2, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 968535700, 0, 0, '', '', 'Portuguesa', 1, '', 'última experiência profissional foi como vigilante ', 10, 13, 0, -1, 13, -1, -1, 0, 0, 1, 'Rua Da Paz nº 10 , 2º esqd 2830-165', '181.pdf', 1, -1, '', -1, '', -1, '4203478', 3, '', '', '0000-00-00', '0000-00-00'),
(182, 'Hugo Filipe Ruivo Figueiredo', '1991-12-16', '2014-12-01 00:00:00', 1, 1, 4, 260290440, 1, 0, 0, 0, 'Arquivação de Documentos / Elaboração de Base de Dados', 0, 0, 0, 2, 41, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 919977452, 0, 0, 'hugo_figueiredo16@outlook.pt', 'Barreiro', 'Portuguesa', 1, '', '', 3, 18, 1, 4, 32, 36, 41, 0, 0, 1, 'Rua Francisco Casal, Nº 2, 1º Esquerdo', '182.pdf', 1, 1, 'Informática / Economia', -1, '', -1, '13901404', 3, '', '', '0000-00-00', '0000-00-00'),
(183, 'José Eduardo De Sousa Francisco', '1971-08-28', '2014-12-01 00:00:00', 1, 1, 1, 191119326, 1, 0, 0, 0, 'Pedreiro', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 939713033, 212153125, 0, '', '', 'Portuguesa', 1, '', 'Também tem experiência como forneiro e tendeiro ( Panificação sul do tejo )', 10, 13, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Resisitência ao Fascismo nº 15 , 1º esqd 2830-122', '183.pdf', 1, -1, '', -1, '', -1, '10616727', 3, '', '', '0000-00-00', '0000-00-00'),
(184, 'Maria De Fátima Pereira Cunha', '1955-03-30', '2014-12-01 00:00:00', 1, 1, 1, 130184942, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 936318364, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 35, 26, -1, 0, 0, 1, 'Rua De Gôa nº 59 , 1º esqd 2830-179', '184.pdf', 1, -1, '', -1, '', -1, '5632780', 3, '', '', '0000-00-00', '0000-00-00'),
(185, 'Manuel Augusto Guerreiro Martins', '1960-04-11', '2014-12-01 00:00:00', 1, 1, 5, 119188201, 1, 0, 0, 0, 'fresador mecânico', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 966174573, 0, 0, '', '', 'Portuguesa', 1, '2400638', '', 10, 13, 1, -1, 26, -1, -1, 0, 0, 1, 'Rua Damão nº3 , 1º dri 2830-171', '185.pdf', 1, -1, '', -1, '', -1, '6084436', 3, '', '', '0000-00-00', '0000-00-00'),
(186, 'Rute Andreia Dos Santos Festas', '1984-04-05', '2014-12-01 00:00:00', 1, 1, 4, 217213812, -1, 0, 0, 0, '', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 917935485, 0, 0, '', '', 'Portuguesa', 1, '2445554', '', 10, 13, 0, -1, 35, -1, -1, 0, 0, 1, 'Travessa do Parque nº7,3º esqd 2830-214', '186.pdf', 1, -1, '', -1, '', -1, '51411984', 3, '', '', '0000-00-00', '0000-00-00'),
(187, 'Cristina Isabel Dos Santos Belchior', '1969-01-12', '2014-12-01 00:00:00', 1, 1, 2, 196521440, -1, 0, 0, 0, 'CEI+ em escolas', 0, 0, 0, 2, 15, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 916516807, 0, 0, '', '', 'Portuguesa', 1, '', 'experiência em balcão de cafetaria', 10, 13, 0, -1, 39, -1, -1, 0, 0, 1, '', '187.pdf', 1, -1, '', -1, '', -1, '10460101', 3, '', '', '0000-00-00', '0000-00-00'),
(188, 'Odete Maria Marques Mendes', '1970-05-03', '2014-12-01 00:00:00', 1, 1, 5, 192826077, 2, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 96835700, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 15, -1, -1, 0, 0, 1, 'Rua Da Paz nº 10 , 2º esqd 2830-165', '188.pdf', 1, -1, '', -1, '', -1, '9876619', 3, '', '', '0000-00-00', '0000-00-00'),
(189, 'Carlos de Sousa Dias Conde', '1956-12-15', '2014-12-01 00:00:00', 1, 2, 2, 176998675, 4, 0, 0, 0, 'Servente / Pintor ', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, -1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', 'Lisboa - Socorro', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 11, 10, -1, 0, 0, 1, 'Rua do Clube Naval - Bico do Mexolhoeiro  Nº 1 2830 Barreiro', '189.pdf', 1, 1, '', -1, '', -1, '06437089', 3, '', '', '0000-00-00', '0000-00-00'),
(191, 'Bruno Alexandre Pereira Matos', '1995-01-02', '2014-12-01 00:00:00', 1, 1, 4, 261471210, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 2, 1, 2, 0, '', 0, 0, '', 0, 933582622, 0, 0, 'matos_180@hotmail.com', 'Barreiro', 'Portuguesa', 1, '', '', 10, 13, 0, -1, -1, -1, -1, 0, 1, 1, 'Rua Resistência ao Fascismo bloco C , prta 6,1º esqd 2830-000', '191.pdf', 1, -1, '', -1, '', -1, '15460393', 3, '', '', '0000-00-00', '0000-00-00'),
(192, 'Vera Lúcia Pereira Matos', '1992-05-20', '2014-12-01 00:00:00', 1, 1, 4, 261471023, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 933582622, 0, 0, 'vev_popii@hotmail.com', 'Barreiro', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua Resistência ao Fascismo bloco C , prta 6,1º esqd 2830-000', '192.pdf', 1, -1, '', -1, '', -1, '14051814', 3, '', '', '0000-00-00', '0000-00-00'),
(193, 'Maria Cândida Marques Torres', '1958-09-19', '2014-12-02 00:00:00', 1, 1, 2, 158169948, 1, 0, 0, 0, '', 0, 0, 0, 1, 36, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 914372141, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 35, 36, 26, 0, 0, 1, 'Rua Professor Joaquim Vicente França, Nº 99 R/C ', '193.pdf', 1, -1, '', -1, '', -1, '03006351', 3, '', '', '0000-00-00', '0000-00-00'),
(194, 'Lúcio António Gomes', '1962-11-05', '2014-12-02 00:00:00', 1, 4, 2, 193756617, 2, 0, 0, 0, 'Operário na área de Calafates', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 914843576, 0, 0, '', 'Cabo Verde', 'Portuguesa', 1, '', 'O Sr. Lúcio tem como objectivo profissional principal a inserção como operário na área dos calafates, no entanto a sua experiência é bastante vasta, tendo já exercendo cargos como montador de pladur e Limpezas Industriais, nos quais também se encontra interessado.', 10, 13, 1, 4, 11, 43, -1, 0, 0, 1, 'Rua 9 lote 57 7ºC ', '194.pdf', 1, -1, '', -1, '', -1, '13645587', 3, '', '', '0000-00-00', '0000-00-00'),
(195, 'Fernando Xavier Esteves Tavares', '1960-07-24', '2014-12-02 00:00:00', 2, 6, 2, NULL, 1, 0, 0, 0, '', 1, 0, 0, 1, 11, 0, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 934057441, 0, 0, '', '', 'Português', 1, '', 'Interesses e experiência profissional: Pedreiro; Ladrilhador; Manobrador de Empilhadoras', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Bordalo Pinheiro nº 23, CV 1º dto - Bairro Vale da Amoreira Novo - 2835-235 Vale da Amoreira', '195.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(196, 'Paula Margarida Boto Rodrigues', '1966-04-17', '2014-12-02 00:00:00', 2, 6, 4, NULL, -1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 919732231, 212025434, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 35, 36, -1, 0, 0, 1, 'Rua de Diu, nº 29, 2º dto - 2835-090 Baixa da Banheira', '196.pdf', -1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(197, 'Darcy Rosário dos Santos Gomes', '1968-11-20', '2014-12-02 00:00:00', 1, 4, 2, 213943247, 2, -1, -1, -1, 'Doméstica Interna', -1, -1, 0, 2, 35, 1, -1, '', -1, '', 6, 1, 1, -1, '', -1, -1, '', -1, 911929124, -1, -1, '', 'Cabo Verde', 'Portuguesa', 1, '1714543', 'Em relação à 2ª escolha a utente dentro dos serviços sociais tem interesse em ajudante de lar.', 10, 13, -1, -1, 35, 42, -1, 0, -1, 1, 'Rua 9, lote 57, 7º  C dto, 2835-514 ', '197.pdf', 1, -1, '', -1, '', -1, '14247805', 3, '', '', '0000-00-00', '0000-00-00'),
(198, 'Felizardo Carlos Costa Caixinha', '1967-11-14', '2014-12-02 00:00:00', 2, 6, 2, NULL, 4, 0, 0, 0, 'Servente', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 962685609, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua de Moçambique, nº 76 - 1º Esq  2835-079   Baixa da Banheira', '198.pdf', -1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(199, 'Nataliya Neroda', '1962-05-13', '2014-12-02 00:00:00', 2, 6, 5, NULL, -1, 0, 0, 0, 'Empregada Doméstica; Limpezas em lares e restaurantes', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 960007575, 0, 0, '', 'Russia', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 35, 24, -1, 0, 0, 1, 'Estrada Nacional nº 84 - Porta 3 - 2835-087 Baixa da Banheira', '199.pdf', -1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(200, 'Carlos Manuel Brites Parruca', '1965-04-24', '2014-12-02 00:00:00', 2, 6, 2, NULL, -1, 0, 0, 0, 'Jardinagem; Maquinista; Recolha de lixo; Servente; Vacaria; Empilhadoras', 0, 0, 0, -1, 11, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, 26, -1, -1, 0, 1, 'Rua de Cabo Verde nº 21 - 2º esq - 2835-088 Baixa da Banheira', '200.pdf', -1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(201, 'Carlos Fernando Veríssimo Lança', '1965-02-15', '2014-12-02 00:00:00', 2, 6, 1, NULL, -1, 0, 0, 0, 'Armador de Ferro', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 916339643, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua dos Açores, nº 69, 3º Esq.  - 2835-112 Baixa da Banheira', '201.pdf', -1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(202, 'Carla Alexandra Eleutério da Silva ', '1975-02-18', '2014-12-02 00:00:00', 2, 6, 2, NULL, -1, 0, 0, 0, 'Empregada de Loja', 1, 0, 0, 2, 8, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 918048183, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, -1, -1, -1, -1, 0, 0, 1, 'Rua 1º de Maio nº 96 – 3º Esq. 2835-016 Baixa da Banheira', '202.pdf', -1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(203, 'Álvaro António Coelho', '1954-02-15', '2014-12-02 00:00:00', 2, 6, 4, NULL, -1, 0, 0, 0, 'Industria do Artesanato (peles)', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 7, -1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, -1, 26, -1, -1, 0, 0, 1, 'Rua Damão nº 24A - Porta 1 - 2835-089 Baixa da Banheira', '203.pdf', -1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(204, 'Luis Filipe Fernandes Costa', '1960-10-30', '2014-12-02 00:00:00', 1, 2, 3, 105740608, -1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 939046517, 0, 0, '', '', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 35, 10, 43, 0, 0, 1, 'Rua Aguiar, Nº184 1º Andar 2830-333 Barreiro', '204.pdf', 1, 1, '', -1, '', -1, '6196004', 4, '', '', '0000-00-00', '0000-00-00'),
(205, 'José Manuel Batista dos Anjos', '1960-04-22', '2014-12-02 00:00:00', 2, -1, 3, NULL, -1, 0, 0, 0, 'Montador de andaimes; Ajudante de tubista; Montador de estores', 0, 0, 0, -1, 11, 0, 0, '', 0, '', 5, -1, 2, 0, '', 0, 0, '', 0, 936189363, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, 10, -1, -1, 0, 1, 'Rua Eduardo Mondelane nº 16 - 2º esq - 2835-116 Baixa da Banheira', '205.pdf', -1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(206, 'João Manuel Costa Martinho', '1958-04-04', '2014-12-02 00:00:00', 1, 4, 2, 123741017, 4, 0, 0, 0, 'Servente de Pedreiro', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 912262140, 0, 0, '', 'Trás-os-Montes', 'Portuguesa', 1, '', 'No que respeita à Indústria/Produção o utente tem interesse em ser operário fabril', 10, 13, 1, 4, 11, 26, -1, 0, 0, 1, 'Rua 10, lote 61, 3ºA 2835-504 ', '206.pdf', 1, -1, '', -1, '', -1, '7175804', 4, '', '', '0000-00-00', '0000-00-00'),
(207, 'Ana Paula Figueiredo André Assunção', '1983-02-16', '2014-12-02 00:00:00', 2, 6, 4, NULL, 1, 0, 0, 0, 'Logista', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 965861635, 0, 0, '', '', 'Portuguesa', 1, '', 'Logista; Empregada de balcão; Empregada de restaurante; Limpezas', 1, 19, 0, -1, 36, 35, 39, 0, 0, 1, 'Rua António Aleixo, nº 2, 3º Dto - 2835 Baixa da Banheira', '207.pdf', -1, -1, '', -1, '', -1, '', 4, '', '', '0000-00-00', '0000-00-00'),
(208, 'Guilherme Faustino Camalandua', '1959-07-27', '2014-12-02 00:00:00', 2, 6, 4, NULL, 1, 0, 0, 0, 'Pintura', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 967912944, 0, 0, '', '', 'Portuguesa', 1, '', 'Pintor; Pedreiro', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Presidente Manuel Teixeira Gomes nº 9 2º dto - 2835-256 Vale da Amoreira', '208.pdf', -1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(209, 'Frederico Gomes', '1990-12-26', '2014-12-02 00:00:00', 1, 1, 5, 257742131, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 961813891, 0, 0, 'fgomes90@hotmail.com', 'Guiné Bissau', 'Guineense', 1, '', '', 3, 18, 0, -1, 8, 36, 10, 0, 0, 1, 'Rua Jacinto Nicola, Nº7 1º Esq', '209.pdf', -1, -1, '', -1, '', -1, '2780WV901', 1, '', '', '0000-00-00', '0000-00-00'),
(210, 'José Inácio Palmeiro Cordeiro', '1958-02-20', '2014-12-02 00:00:00', 2, 6, 2, NULL, 1, 0, 0, 0, 'Mecânico', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 967225343, 0, 0, '', '', 'Portugues', 1, '', 'Jardinagem; Mecânico Industrial', 1, 19, 0, -1, 26, -1, -1, 0, 0, 1, 'Rua São Tomé e Princípe, nº 8 - 2835-150 Baixa da Banheira', '210.pdf', -1, -1, '', -1, '', -1, '', 4, '', '', '0000-00-00', '0000-00-00'),
(211, 'José Manuel Henriques Ferreira', '1969-03-17', '2014-12-02 00:00:00', 2, 6, 4, NULL, 1, 0, 0, 0, 'Estucador', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 919161756, 0, 0, '', '', 'Portuguesa', 1, '', 'Estucador', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua São Tomé e Príncipe, nº 24, r/c - 2835-150 Baixa da Banheira', '211.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(212, 'Paula Edmunda Martins Pestana Duarte', '1971-11-17', '2014-12-02 00:00:00', 2, 6, 4, NULL, 1, 0, 0, 0, 'Doméstica', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 963593743, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 35, -1, -1, 0, 0, 1, 'Rua Engenheiro Júlio Martins, nº7, 1º Esq. - 2835 - 118 Baixa da Banheira', '212.pdf', 1, -1, '', -1, '', -1, '', 4, '', '', '0000-00-00', '0000-00-00'),
(213, 'Alda Maria Rosa dos Santos Vicente', '2014-12-02', '2014-12-02 00:00:00', 2, -1, 4, NULL, -1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 968645104, 0, 0, '', '', 'Portuguesa', 1, '', '2ª escolha Educação/Formação (auxiliar de ação educativa)', 1, 19, 1, 4, 39, 15, -1, 0, 0, 1, '', '213.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(214, 'Maria Augusta Lopes Ramos', '1992-02-27', '2014-12-02 00:00:00', 2, 6, 2, NULL, 2, 0, 0, 0, 'Vendedora Ambulante', 0, 0, 0, 2, 8, 1, 0, '', 0, '', -1, 1, 1, 0, '', 0, 0, '', 0, 936547188, 0, 0, '', '', '', 1, '', '', 1, 19, 0, -1, 8, -1, -1, 0, 0, 1, 'Rua da Juventude nº5 , 2º esq - 2835-082 Baixa da Banheira', '214.pdf', -1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(215, 'Ana Cristina Lopes da Silva', '2014-12-02', '2014-12-02 00:00:00', 2, -1, 4, NULL, -1, 0, 0, 0, '', 0, 0, 0, 2, 42, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 914387319, 0, 0, '', '', 'Portuguesa', 0, '', 'Curso técnico: auxiliar de saúde', 1, 19, 0, -1, 40, 39, -1, 0, 0, 1, '', '215.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(216, 'Micael André Fonseca Barão', '1994-07-15', '2014-12-02 00:00:00', 1, 4, 3, 268125929, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 933499215, 0, 0, '', 'SEtúbal ( S. Sebastião)', 'Portuguesa', 1, '', 'O utente pretende encontrar o primeiro emprego. Tem como preferência principal a área da mecânica e como segunda opção operador de armazém. Saliento que realizei com o utente o modelo de curriculum vitae simples, pois achei o mais adaptado à experiência profissional do mesmo.', 10, 13, 0, -1, 43, 45, -1, 0, 0, 1, 'Quinta da Mina, nº 11, 1º dto 2835-492 Sto. António da Charneca', '216.pdf', 1, 1, 'Área da Mecânica', -1, '', -1, '15463856', 3, '', '', '0000-00-00', '0000-00-00'),
(217, 'Ana Cristina Martins Reis Vale', '2014-12-02', '2014-12-02 00:00:00', 2, -1, 1, NULL, -1, 0, 0, 0, '', 0, 0, 0, 2, 1, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 917243421, 0, 0, '', '', 'Portuguesa', 1, '', 'experiência em jardinagem e serviços gerais de limpeza', 1, 19, 0, -1, 1, 35, -1, 0, 0, 1, '', '217.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(218, 'Ana Elisabete Caetano Afonso', '2014-12-02', '2014-12-02 00:00:00', 2, 6, 5, NULL, 1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 968753419, 968753419, 0, '', '', 'Portuguesa', 1, '', '3ª escolha: Auxiliar de ação educativa', 1, 19, 0, -1, 39, 35, 15, 0, 0, 1, '', '218.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(219, 'Ana Paula Coração Ramos', '2014-12-02', '2014-12-02 00:00:00', 2, 6, 3, NULL, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 936570135, 936570135, 0, '', '', 'Portuguesa', 1, '', '1ª escolha Restauração/Bares (empregada de balcão) / 2.ª escolha Saúde ( aux de geriatria)', 1, 19, 0, -1, 39, 40, -1, 0, 0, 1, '', '219.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(220, 'Caetano Simões Cabeça', '1984-08-29', '2014-12-02 00:00:00', 1, 4, 2, 232124159, 1, 0, 0, 0, '', 0, 0, 0, 2, 1, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 935844430, 0, 0, '', 'Vidigueira', 'Portuguesa', 1, '2581807', 'O utente pretende como primeira opção ser operador de armazém e como segunda opção área das vendas, na qual tem experiência.', 10, 13, 1, 4, 45, 36, -1, 0, 0, 1, 'Qta. da Mina, lote 9, 4º dto, 2835-492 Sto. António da Charneca', '220.pdf', 1, -1, '', -1, '', -1, '13721082', 3, '', '', '0000-00-00', '0000-00-00'),
(221, 'Ana Raquel Graça Viegas', '2014-12-02', '2014-12-02 00:00:00', 2, 6, 3, NULL, 2, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 965146720, 0, 962879461, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, 39, 35, 0, 0, 1, '', '221.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(222, 'Sandro Manuel Galhofa Guerreiro', '2014-12-02', '2014-12-02 00:00:00', 2, 6, 3, NULL, 2, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 965146720, 0, 962879461, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, '', '222.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(223, 'Ana Raquel da Silva Fernandes', '2014-12-02', '2014-12-02 00:00:00', 2, 6, 2, NULL, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 910554073, 0, 0, '', '', '', 1, '', '', 1, 19, 1, -1, 35, -1, -1, 0, 0, 1, '', '223.pdf', -1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(224, 'Elsa da Assunção Glandim', '1970-04-28', '2014-12-03 00:00:00', 2, 10, 3, 196737877, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', '', 1, '', '', 2, 14, 0, -1, 35, 39, -1, 0, 0, 1, 'Praceta Antão Gonçalves lt 2 r/c direito', '224.pdf', 1, -1, '', -1, '', -1, '10542177', 3, '', '', '0000-00-00', '0000-00-00'),
(225, 'Vânia Alexandra Lourenço dos Santos', '1984-06-21', '2014-12-03 00:00:00', 1, 4, 3, 224312340, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '', 'A utente acima referida nunca trabalhou  e tem como preferência profissional a área da estética, bem como, preferência ao nível de formação.\r\nO curriculum vitae elaborado é o mais simples, porque adapata-se mais facilmente às características profissionais da utente.', 10, 13, 0, -1, 5, -1, -1, 0, 0, 1, 'Qta. da Mina, lote 3, 5º esq.', '225.pdf', 1, 1, 'Estética', -1, '', -1, '12979114', 4, '', '', '0000-00-00', '0000-00-00'),
(226, 'Paulo Alexandre Magalhães Lopes Rosário', '1968-06-14', '2014-12-03 00:00:00', 1, 1, 5, 181092050, 1, 0, 0, 0, 'Administrativo em escola pública  (CEI)', 0, 0, 0, 2, 41, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 934499224, 309901371, 0, 'pauloalex68@netcabo.pt', 'Portuguesa', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 41, 35, 36, 0, 0, 1, 'Praceta Vicente A. Molina nº 4,  8º  2830-251', '226.pdf', 1, 1, 'Modular', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(227, 'Manuel Jacinto de Almeida Veiga ', '1962-03-30', '2014-12-03 00:00:00', 1, 1, 4, 200010409, -1, 0, 0, 0, 'Fábrica Aplicação de Tintas', 0, 0, 0, -1, 26, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 936095574, 0, 0, 'mjavsym@gmail.com', 'Lisboa - São Sebastião da Pedreira', 'Port', 1, '', '', 3, 18, 1, 4, 26, 10, 43, -1, 0, 1, 'Avenida D Afonso Henriques, Nº 8 R/C DRT', '227.pdf', 1, -1, '', -1, '', -1, '06043988', 3, '', '', '0000-00-00', '0000-00-00'),
(228, 'Aida Maria Feijó Afonso ', '2014-12-03', '2014-12-03 00:00:00', 2, 10, 5, 163933677, 1, 0, 0, 0, '', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 910782131, 0, 0, '', 'Alhos Vedros', 'Portuguesa', 1, '1832119', 'Família monoparental feminina com uma filha menor a cargo. A requerente encontra-se em situação de DLD. Esteve durante algum tempo emigrada no estrangeiro (Inglaterra). Fez formação pelo IEFP como Técnica de Informática-Sistemas nível IV com términus em 04.2014 e, em 2013, de curta duração 50h no CECOA em Língua Italiana - Informações acerca da vida quotidiana, compras e serviços e locais de interesse turístico ', 2, 14, 1, 4, 41, 27, 26, 0, 0, 1, 'Rua das Acácias,15-2ºEsq. - 2835-239 Vale da Amoreira', '228.pdf', 1, -1, '', -1, '', -1, '10872489', 4, '', '', '0000-00-00', '0000-00-00'),
(229, 'Albertina Araujo Lima', '1960-07-24', '2014-12-03 00:00:00', 2, 10, 2, 200110730, 1, 0, 0, 0, '', 0, 0, 0, 1, 35, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 963394890, 0, 0, '', 'Cabo Verde', 'Caboverdiana', 0, '', 'Vasta experiência no trabalho como doméstica em casa de particulares. É cidadã estrangeira (Cabo Verde) a residir em Portugal há vários anos', 2, 14, 0, -1, 35, -1, -1, 0, 0, 1, 'Rua das Tulipas,13-1ºEsq - 2835-242', '229.pdf', 1, -1, '', -1, '', -1, '', 1, '', '', '0000-00-00', '0000-00-00'),
(230, 'Alexandrina Flor Cabeça', '1968-01-16', '2014-12-03 00:00:00', 2, 10, 2, 220007063, 1, 0, 0, 0, 'Vendas Ambulantes', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', 'Portugal', 'Portuguesa', 1, '', 'Sem hábitos de trabalho regular. No PPE do IEFP proposta para formação em competências Básicas e/ou Mercado Social de Emprego.', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta Dos Goivos,7-3º Esq - 2835-212', '230.pdf', 1, 1, ' Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '10445283', 3, '', '', '0000-00-00', '0000-00-00'),
(231, 'Vidal Dias Vargas', '1974-03-20', '2014-12-03 00:00:00', 2, 10, 1, 211984752, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', 'Setúbal', 'Portuguesa', 1, '3674689', 'Sem hábitos de trabalho remunerado e/ou regular. No PPE do IEFP proposta para formação em competências Básicas e/ou Mercado Social de Emprego.  ', 2, 14, 1, 4, -1, -1, -1, 0, 0, 1, 'Praceta Dos Goivos,7-3º Esq - 2835-212', '231.pdf', 1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '10445283', 3, '', '', '0000-00-00', '0000-00-00'),
(232, 'Alvaro Miguel Martins Lopes', '1984-11-20', '2014-12-03 00:00:00', 2, 10, 3, 237076446, 1, 1, 0, 0, '', 0, 0, 1, -1, 11, 0, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 966251049, 0, 0, '', 'Barreiro ', 'Portuguesa', 1, '', 'Desenvolve actividade como mariscador. ', 2, 14, 0, -1, 11, 1, -1, 1, 0, 1, 'Rua das Tulipas,13-2º Dto - 2835-242', '232.pdf', 1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '13281596', 4, '', '', '0000-00-00', '0000-00-00'),
(233, 'Luís Filipe Marreiros Carvalho', '1967-07-01', '2014-12-03 00:00:00', 1, 1, 3, 198467176, -1, 0, 0, 0, 'Revestimentos', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '3104025', '', 3, 18, 0, -1, 11, 10, 26, 0, 0, 1, 'Rua Cândido Oliveira, nº. 67 B/C', '233.pdf', 1, 1, '', -1, '', -1, '08185676', 3, '', '', '0000-00-00', '0000-00-00'),
(234, 'Andreia Cristina Brito Marta', '2014-12-01', '2014-12-03 00:00:00', 2, 10, 2, 255906650, 1, 0, 0, 0, '', 0, 0, 0, 2, 1, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 966251049, 0, 912853640, '', 'Barreiro', '', 1, '', '', 2, 14, 0, -1, 1, -1, -1, 0, 0, 1, 'Rua das Tulipas,13-2º Dto - 2835-242', '234.pdf', 1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '13823106', 4, '', '', '0000-00-00', '0000-00-00'),
(235, 'Isabel Maria Peres Soares Rodrigues Ferreira', '1965-06-05', '2014-12-04 00:00:00', 1, 1, 3, 164926976, 3, 0, 0, 0, 'Apoio a idosos', 0, 0, 0, 1, 40, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 961506759, 0, 0, 'sarabruna3@gmail.com', 'Barreiro', 'Portuguesa', 1, '1714908', 'A candidata refere como sua primeira escolha  a função de auxiliar de apoio à família (Apoio à infância ou à terceira Idade) ', 3, 18, 0, -1, 40, 24, 35, 0, 0, 1, 'Rua Poeta Sebastião da Gama, nº 6 - 3º Esq', '235.pdf', 1, 1, 'Geriatria', -1, '', -1, '7373293', 4, '', '', '0000-00-00', '0000-00-00'),
(236, 'Nalita Domingos Passe da Silva Coca', '2014-12-04', '2014-12-04 00:00:00', 2, 10, 4, 264780388, 2, 0, 0, 0, '', 1, 0, 0, 1, 35, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 920151583, 0, 0, 'ivandrajuliana@gmail.com', 'Guiné Bissau', 'Guineense', 1, '', '', 17, 23, 0, -1, 42, 24, -1, 0, 0, 1, 'Av. José Almada Negreiros Lote 18-6º Esqº', '236.pdf', 1, -1, '', -1, '', -1, '2S4T80210', 1, '', '', '0000-00-00', '0000-00-00'),
(237, 'Ruth Alexandra Gomes Rodrigues', '1993-01-05', '2014-12-04 00:00:00', 1, 1, 4, 271697849, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 926610684, 0, 0, '', '', 'Portuguesa', 1, '', 'situação de primeiro emprego', 10, 13, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua de Goa nº 62, 1º andar 2830-179', '237.pdf', 1, -1, '', -1, '', -1, '14427322', 3, '', '', '0000-00-00', '0000-00-00'),
(238, 'Olavo Manuel Guerreiro Ferreira', '1973-06-20', '2014-12-04 00:00:00', 1, 1, 1, 198513003, 2, 0, 0, 0, '', 0, 0, 0, 2, 45, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 934345188, 0, 0, 'olavo_f@hotmail.com', '', 'Portuguesa', 1, '', '', 10, 13, 1, 10, 45, -1, -1, 0, 0, 1, 'Av Escola Fuzileiros Navais , casa da guarda 2830-283', '238.pdf', 1, -1, '', -1, '', -1, '120249541', 3, '', '', '0000-00-00', '0000-00-00'),
(239, 'Joaquim José Gonçalves Matos', '1971-12-01', '2014-12-04 00:00:00', 1, 1, 2, 205033202, 3, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 931801005, 0, 0, '', '', 'Portuguesa', 1, '', 'Última profissão exercida foi em CEI+ na junta de freguesia de santo André', 10, 13, 0, -1, -1, -1, -1, 0, 0, 1, 'R. Resisitência ao Fascismo bloco c,porta 6 , 1º esqd 2830-000', '239.pdf', 1, -1, '', -1, '', -1, '11205086', 3, '', '', '0000-00-00', '0000-00-00'),
(240, 'Dino Miguel Freitas Rocha', '1990-11-14', '2014-12-04 00:00:00', 1, 1, 3, 262923238, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 96452010, 0, 0, 'dinuscorpion@gmail.com', 'barreiro', 'Portuguesa', 1, '', 'Vários anos de experiência como padeiro ', 10, 13, 0, -1, -1, -1, -1, 0, 0, 1, 'Av Escola Fuzileiros Navais nº1 F cv esqd 2830-000', '240.pdf', 1, -1, '', -1, '', -1, '14002901', 3, '', '', '0000-00-00', '0000-00-00'),
(242, 'Mario José da Cruz Lopes Sabino', '1972-05-29', '2014-12-05 00:00:00', 2, 10, 3, 224217445, 5, 0, 0, 0, '', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 915062446, 0, 0, '', 'Moita', 'Portuguesa', 1, '2565951', 'Experiência de trabalho como carpinteiro de confragem de 1.ª ', 2, 14, 1, 4, 11, 26, -1, 0, 0, 1, 'Largo dos Cravos,51-2º Dto - 2835-208', '242.pdf', 1, -1, '', 1, 'RVCC 3.º ciclo', -1, '10190723', 4, '', '', '0000-00-00', '0000-00-00'),
(243, 'Maria Antonieta da Cruz Alegria', '1952-04-15', '2014-12-05 00:00:00', 1, 2, 6, 160542227, 4, 0, 0, 0, 'Formação de contabilidade, gestão de recursos humanos, francês ', 0, 0, 0, 2, 15, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 968353253, 0, 0, 'marialegria73@gmail.com', 'Moita', 'Portugal', 1, '', 'Licenciada em Gestão de Recursos Humanos e Organização Estratégica \r\nMestranda em Sociologia com especialização em Políticas Públicas e Diferenças Sociais \r\nFormadora Credenciada (N.º430 Economia, Gestão e Contabilidade), pelo IEFP\r\nCurso de Gestão de Formação (Pós-Graduação)', 3, 18, 1, 4, 42, 23, 15, 0, 0, 1, 'Rua Miguel Pais 242 R C Dto - 2830-356 Barreiro', '243.pdf', 1, 1, 'Informática, contabilidade, gestão de recursos humanos', -1, '', -1, '02204718', 3, '', '', '0000-00-00', '0000-00-00'),
(245, 'Armando Ufala', '1966-05-06', '2014-12-05 00:00:00', 2, 10, 1, 243694377, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 920169154, 0, 0, '', 'Guiné Bissau', 'Portuguesa', 1, '', 'Experiência de trabalho como pedreiro da c. civil. ', 2, 14, 0, -1, 11, -1, -1, 0, 0, 1, 'Praceta João Villaret,5-6º Dto - 2835-218', '245.pdf', 1, -1, '', -1, '', -1, '31215846', 3, '', '', '0000-00-00', '0000-00-00'),
(247, 'Antonino Pereira Araujo', '1956-01-06', '2014-12-05 00:00:00', 2, 10, 2, 145484360, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 969132453, 0, 0, '', 'Cabo Verde ', 'Portuguesa', 1, '', 'Experiência de trabalho como carpinteiro de cofragem.', 2, 14, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua das Tulipas,48 - 2835-242', '247.pdf', 1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '10482812', 4, '', '', '0000-00-00', '0000-00-00'),
(249, 'António João Fernandes', '1965-07-13', '2014-12-05 00:00:00', 2, 10, 2, 168402491, 5, 0, 0, 0, '', 0, 0, 0, 2, 1, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 937023206, 0, 0, '', 'Ferreira do Alentejo', 'Portuguesa', 1, '2646621', 'Em 2011 desenvolveu um POC no município da Moita.  Experiência de trabalho nas vendas ambulantes.', 2, 14, 1, -1, 1, -1, -1, 0, 0, 1, 'Rua dos Sobreiros,38 - 2835-248', '249.pdf', 1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '9807570', 4, '', '', '0000-00-00', '0000-00-00'),
(250, 'Lamine Danfa', '1981-06-08', '2014-12-05 00:00:00', 1, 4, 1, 269245138, 1, -1, -1, -1, 'MARTELEIRO/SERVENTE', -1, 1, 0, 1, 11, -1, -1, '', -1, '', 4, 1, 2, -1, '', -1, -1, '', -1, 960031304, -1, -1, '', '', 'GUINÉ-BISSAU', 1, '5915720', '- Marteleiro (3 Anos de Experiência)\r\n- Servente (18 Meses de Experiência)', 18, 24, -1, -1, 11, -1, -1, 0, -1, 1, 'VILA CHÃ', '250.pdf', 1, -1, '', -1, '', -1, '0303Q2Q99', 1, '', '', '0000-00-00', '0000-00-00'),
(252, 'Tamara Vanessa Pinto Marques', '1996-06-24', '2014-12-05 00:00:00', 2, 10, 2, 233295720, 5, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 2, 1, 1, 0, '', 0, 0, '', 0, 937023206, 0, 0, '', 'Rio Maior', 'Portuguesa', 1, '', '1.º Emprego', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua dos Sobreiros,38 - 2835-248', '252.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '31250861', 4, '', '', '0000-00-00', '0000-00-00');
INSERT INTO `utentes` (`id`, `nome`, `dataNascimento`, `dataInscricao`, `idConcelho`, `idFreguesia`, `idHabilitacoes`, `NIF`, `idEstadoCivil`, `trabalhadorPrecario`, `PrestadorDeServicos`, `TrabalhadorContaOutrem`, `ultimaProfissaoExercida`, `semSubsidio`, `subsidioDesemprego`, `EspecificacaoEmprego`, `tempoDesempregado`, `ultimaProfissaoExercidaDesempregado`, `beneficiarioRSI`, `outrosSubsidios`, `QuaisOutrosSubsidios`, `Estudante`, `estabelecimentoEnsino`, `idGrupoEtario`, `idSituacaoRegularizada`, `idGenero`, `MedidasAtivasEmprego`, `QualMedidasAtivasEmprego`, `Voluntariado`, `FormacaoProfissional`, `QualFormacaoProfissional`, `Biscates`, `Telemovel`, `Telefone`, `OutroTelefone`, `Email`, `Naturalidade`, `Nacionalidade`, `InscritoCentroEmprego`, `NumeroInscricaoCentroEmprego`, `Observacoes`, `idFrontOfficeSinalizador`, `idTecnico`, `cartaDeConducao`, `cartaDeConducaoCategoriaID`, `interesseProfissional1`, `interesseProfissional2`, `interesseProfissional3`, `empregado`, `outraSituacao`, `estado`, `morada`, `CV`, `pedidoInicialEmprego`, `pedidoInicialFormacao`, `pedidoInicialFormacaoQual`, `pedidoInicialOutra`, `pedidoInicialOutraQual`, `NISS`, `numeroIdentificacao`, `tipoDocumentoIdentificacao`, `codPostal`, `nrCartaConducao`, `validadeDocumentoIdentificacao`, `emissaoCartaConducao`) VALUES
(254, 'António Pedro Fonseca Gonçalves', '1966-07-07', '2014-12-05 00:00:00', 2, 10, 2, 232372918, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 969805414, 0, 0, '', 'Cabo-Verd', 'Caboverdiana', 1, '2785041', 'Com experiência profissional na área da c. civil, principalmente como pedreiro', 2, 14, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua dos Malmequeres,10 - R/c Dto - 2835-279', '254.pdf', 1, -1, '', -1, '', -1, '505920H1GR', 1, '', '', '0000-00-00', '0000-00-00'),
(255, 'Antonio Serrana Lito', '1989-11-28', '2014-12-05 00:00:00', 2, 10, 2, 262113775, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 936888037, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '', '1.º Emprego', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua das Tulipas,11-R/c Dto - 2835-242', '255.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '14512222', 4, '', '', '0000-00-00', '0000-00-00'),
(257, 'Augusta Conceição Negrita Nunes', '1971-03-15', '2014-12-05 00:00:00', 2, 10, 2, 212445650, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 933304412, 0, 0, '', 'Moita', 'Portuguesa', 1, '', 'DLD. Experiência de trabalho nas vendas ambulantes. ', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Carlos Augustos Santos,42-2ºEsq - 2835-236', '257.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '11794005', 4, '', '', '0000-00-00', '0000-00-00'),
(258, 'José Justino Nunes Fernandes ', '0000-00-00', '2014-12-05 00:00:00', 2, 10, 2, 265288185, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 933304412, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '', '1.º Emprego. ', 2, 14, 1, 4, -1, -1, -1, 0, 0, 1, 'Rua Carlos Augustos Santos,42-2ºEsq - 2835-236', '258.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '15855682', 4, '', '', '0000-00-00', '0000-00-00'),
(259, 'Geisa Monte Serrano', '1996-11-03', '2014-12-05 00:00:00', 2, 10, 2, 266059040, 5, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 2, -1, 1, 0, '', 0, 0, '', 0, 933304412, 0, 0, '', 'Lisboa', 'Portuguesa', 1, '', '1.º Emprego', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Carlos Augustos Santos,42-2ºEsq - 2835-236', '259.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '15935190', 3, '', '', '0000-00-00', '0000-00-00'),
(260, 'Augusto Fernando Alvito Moisão', '1964-11-29', '2014-12-05 00:00:00', 2, 10, 3, 137966814, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', 'Alhos Vedros', 'Portuguesa', 1, '', 'Ex. recluso. Inscrito em curso EFA B3 na ESBxBanheira', 2, 14, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua das Tulipas,1 - R/c Dto - 2835-242', '260.pdf', 1, -1, '', -1, '', -1, '8109768', 4, '', '', '0000-00-00', '0000-00-00'),
(261, 'Wanderson Kell Oliveira', '1975-12-27', '2014-08-27 22:00:00', 2, 6, 5, 252262247, -1, -1, -1, -1, 'Vendedor Matutano', -1, 1, 0, 1, 8, -1, -1, '', -1, '', 5, 1, 2, -1, '', -1, -1, '', -1, 969815806, -1, -1, 'wandersonkoliveira@gmail.com', 'Brasil', 'Brasileira', -1, '', '2014-08-28 - Experiência profissional, 5 anos + 4 meses vendedor da Matutano. Distribuição Coca-Cola(Ajudante de Motorista). Há 1 mês que não trabalha, recebe subsídio de desemprego.\r\nContacto via e-mail com o Centro Emprego Sul Tejo (Isabel Jorge), explicando o pretendido da parte do Wanderson, que pretende lançar o seu próprio negócio criando o seu posto de trabalho através do adiantamento de prestações do subsídio de desemprego. Já se dirigiu ao Centro de Emprego para agendamento de reunião.', 22, 8, 1, -1, -1, -1, -1, 0, -1, 1, 'Praceta José Relvas, Lote 61, 2835 - 050 Baixa da Banheira', '261.pdf', 1, -1, '', 1, 'Criação do próprio emprego', -1, '18013798', 3, '', '', '0000-00-00', '0000-00-00'),
(262, 'Maria do Céu Martinho da Silva Sardinha', '1957-06-08', '2014-04-08 22:00:00', 1, 3, 4, 172954053, -1, -1, -1, -1, 'Trabalhadora da Limpeza em Casas Particulares', -1, -1, 0, 2, 35, -1, -1, '', -1, '', 7, 1, 1, -1, '', -1, -1, '', -1, 931760082, -1, -1, '', '', '', 1, '', '- Ajudante de Cozinha\r\n- Trabalhadora da Limpeza\r\n- Auxiliar de Cuidados a Idosos\r\n- Ama', 18, 24, -1, -1, 39, 35, -1, 0, -1, 1, 'Coina', '262.pdf', 1, -1, '', -1, '', -1, '06738281', 3, '', '', '0000-00-00', '0000-00-00'),
(263, 'Adazilza dos Santos da Trindade Neto', '1979-01-20', '2014-04-13 22:00:00', 1, 1, 4, 257060570, -1, -1, -1, -1, 'Angariação de Fundos Para Causa Social', -1, -1, 0, 2, 6, -1, -1, '', -1, '', 5, 1, 1, -1, '', -1, -1, '', -1, 965368409, -1, -1, '', '', '', 1, '', 'Empregada de Mesa e Balcão (Experiência de 4 Anos)\r\nAjudante de Cozinha (Experiência de 6 Meses)\r\nAssistente Administrativa (Experiência de 6 Meses)\r\nCall-Center (Experiência de 6 Meses) a', 18, 24, -1, -1, 39, 41, 6, 0, -1, 1, 'ALTO DO SEIXALINHO', '263.pdf', 1, -1, '', -1, '', -1, 'P2M290999', 1, '', '', '0000-00-00', '0000-00-00'),
(264, 'Matilde Ludovina Sousa ', '0000-00-00', '2014-12-09 00:00:00', 1, 4, 1, 196702682, 5, -1, -1, -1, '', -1, 1, 0, 2, 35, -1, -1, '', -1, '', 7, 1, 1, -1, '', -1, -1, '', -1, 962976486, -1, -1, '', '', 'Caboverdiana', 1, '', '- Trabalhadora da Limpeza\r\n- Ajudante de Cozinha / Cozinheira de 2ª\r\n- Jardineira\r\n', 18, 24, -1, -1, 35, 39, 1, 0, -1, 1, 'CIDADE SOL', '264.pdf', 1, -1, '', -1, '', -1, '', 1, '', '', '0000-00-00', '0000-00-00'),
(265, 'Carina Alexandra Teixeira Rey', '1982-12-14', '2014-12-09 00:00:00', 2, 10, 3, 249080680, 5, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 912943013, 0, 0, '', '', 'Portuguesa', 1, '', 'Frequentou curso de cozinha. Não concluiu a acção formativa por problemas de saúde.', 2, 14, 0, -1, 35, 42, -1, 0, 0, 1, 'Rua José Conceição Nunes Lt 46-2º Esq-2835-255', '265.pdf', 1, 1, 'Cozinha', -1, '', -1, '14713078', 3, '', '', '0000-00-00', '0000-00-00'),
(266, 'Leopoldo Francisco Glandim Garcia', '1980-09-08', '2014-12-09 00:00:00', 2, 10, 2, 221261249, 5, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 912943013, 0, 0, '', 'Alhos Vedros', 'Portuguesa', 1, '', 'Experiência de trabalho como manobrador de máquinas e carpinteiro de toscos.  ', 2, 14, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua José Conceição Nunes Lt 46-2º Esq-2835-255', '266.pdf', 1, -1, '', -1, '', -1, '12744772', 4, '', '', '0000-00-00', '0000-00-00'),
(267, 'Duarte Nuno do Rio Morais Fernandes', '1977-03-11', '2014-12-09 00:00:00', 1, 1, 5, 213068710, 1, 0, 0, 0, 'Ajudante de arqueologia', 0, 0, 0, 2, 10, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 963617705, 0, 0, 'duarte.fernandes6@gmail.com', 'Lisboa', 'Portuguêsa', 1, '', '', 3, 18, 1, 4, 45, 8, 6, 0, 0, 1, 'Praça Augusto Vicente Bolina nº2, 5B 2830-251 Barreiro', '267.pdf', 1, 1, '', -1, '', -1, '11040174', 3, '', '', '0000-00-00', '0000-00-00'),
(268, 'Carlos Freitas Dias dos Santos  ', '1975-09-23', '2014-12-09 00:00:00', 2, 10, 1, 211313157, 3, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 934779031, 0, 0, '', '', 'Portuguesa', 1, '', 'Experiência de trabalho na área da c. civil como pedreiro, ladrilhador e servente.', 2, 14, 0, -1, 11, -1, -1, 0, 0, 1, 'Largo dos Cravos,51-1º Frt - 2835-208', '268.pdf', 1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '11839849', 4, '', '', '0000-00-00', '0000-00-00'),
(269, 'Claúdia Sofia Torres Vicente', '1982-12-08', '2014-12-09 00:00:00', 2, 10, 2, 224837400, 1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 935173542, 0, 0, '', '', 'Portuguesa', 1, '', 'Experiência de trabalho como aj de cozinha.', 2, 14, 0, -1, 42, -1, -1, 0, 0, 1, '', '269.pdf', 1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '12178166', 4, '', '', '0000-00-00', '0000-00-00'),
(270, 'David Andrade Santos', '1990-07-27', '2014-12-09 00:00:00', 2, 10, 3, 265148154, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', 'Moita', 'Portuguesa', 1, '', 'Trabalhou nas vendas ambulantes.  ', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua das Túlipas,9-1º Esq - 2835-242', '270.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '13653283', 4, '', '', '0000-00-00', '0000-00-00'),
(271, 'Vanessa Soraia dos Santos ', '1994-08-19', '2014-12-09 00:00:00', 2, 10, 3, 265855292, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', 'Moita', 'Portuguesa', 1, '', 'Experiência na vendas ambulantes com familiares ', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua das Túlipas, 9-1º Esq - 2835-242', '271.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '13653283', 4, '', '', '0000-00-00', '0000-00-00'),
(272, 'Cátia Andreia Mendes Serrano Rodrigues', '1983-11-15', '2014-12-09 00:00:00', 1, 4, 1, 238534073, 2, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 936019991, 0, 0, '', 'Alto Seixalinho Barreiro', 'Portuguesa', 1, '2693615', 'CIT', 10, 13, 0, -1, 35, -1, -1, 0, 0, 1, 'Rua 3 lote 13  2º Dto. 2835-508 Cidade Sol', '272.pdf', -1, 1, '', -1, '', -1, '13730372', 3, '', '', '0000-00-00', '0000-00-00'),
(273, 'Domingos Fernandes de Sousa Afonso', '0000-00-00', '2014-12-09 00:00:00', 2, 10, 2, 200144480, 2, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 2147483647, 0, 0, '', 'Guiné-Bissau', 'Portuguesa', 1, '', 'Com experiência de trabalho na área da c. civil como pedreiro. ', 2, 14, 1, 4, 11, -1, -1, 0, 0, 1, 'Rua João Villaret, 34-3ºDto - 2835-254', '273.pdf', 1, -1, '', -1, '', -1, '30847062', 4, '', '', '0000-00-00', '0000-00-00'),
(274, 'Andreia Filipa Gonçalves da Silva', '1992-05-16', '2014-12-09 00:00:00', 1, 4, 4, 232012369, 1, 0, 0, 0, '', 0, 0, 0, -1, 8, 0, 0, '', 0, '', 3, 1, 1, 1, '', 0, 0, '', 0, 917071452, 0, 0, '', '', 'Portuguesa', 0, '', 'Formação Tecnica em Logistica', 10, 13, 0, -1, 8, -1, -1, -1, 1, 1, 'Rua 13 Quinta da Mina Lote 5 1º Dto. 2835-492 Cidade Sol', '274.pdf', -1, 1, '', -1, '', -1, '13722692', 3, '', '', '0000-00-00', '0000-00-00'),
(275, 'Olivia Sacramento Fernandes Eusébio Afonso', '1965-10-19', '2014-12-09 00:00:00', 2, 10, 3, 192984934, 2, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 966648062, 212032115, 0, '', 'São Tomé e Principe', 'Portuguesa', 1, '', 'Sem experiência profissional ', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua João Villaret, 34-3ºDto - 2835-254', '275.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '10706182', 4, '', '', '0000-00-00', '0000-00-00'),
(276, 'Marisa Alexandra Sousa Gonçalves', '1989-02-09', '2014-12-09 00:00:00', 1, 4, 3, 232320390, 1, 0, 0, 1, '', 0, 0, -1, -1, 39, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 915378700, 0, 0, '', '', 'Portuguesa', 1, '', 'Integrada em Trabalho em  Part-Time na Telepizza', 10, 13, 1, -1, 39, 8, -1, 1, 0, 1, 'Rua de Camões Nº 29 Quinta do Visconde 2835-675', '276.pdf', 1, -1, '', -1, '', -1, '13775517', 3, '', '', '0000-00-00', '0000-00-00'),
(277, 'Maria da Conceição Barata Alípio', '1963-09-15', '2013-07-25 22:00:00', 1, 2, 1, 185988768, 2, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 916597483, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Camilo Castelo Branco nº11 r/c', '277.pdf', 1, -1, '', -1, '', -1, '10546383', 3, '', '', '0000-00-00', '0000-00-00'),
(278, 'Ana Maria Lopes Tomás', '1960-08-30', '2014-12-09 00:00:00', 1, 4, 1, 135108462, 4, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 961820595, 0, 0, '', '', 'Portuguesa', 0, '', 'Auxiliar de Cozinha', 10, 13, 1, -1, 39, 8, -1, 0, 0, 1, 'Rua 3 Lote 16 6º A 2835-508 Cidade Sol', '278.pdf', 1, -1, '', -1, '', -1, '7140025', 3, '', '', '0000-00-00', '0000-00-00'),
(279, 'Raquel Sofia Scatola Ferreira', '1995-09-09', '2013-07-30 22:00:00', 1, 1, 4, 251150770, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 2, -1, 1, 0, '', 0, 0, '', 0, 919390715, 0, 0, '', '', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua D. João de Castro nº41 r/c esq', '279.pdf', 1, -1, '', -1, '', -1, '14966971', 3, '', '', '0000-00-00', '0000-00-00'),
(280, 'Vira Ambros', '1976-09-26', '2014-12-09 00:00:00', 1, 4, -1, 237579170, 1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 963765170, 218273915, 0, '', '', 'Ucrânia', 1, '4188215', '', 10, 13, 0, -1, 8, 39, 35, 0, 0, 1, 'Rua Gago Coutinho Nº 7 R/C 2835-720', '280.pdf', -1, 1, '', -1, '', -1, 'AR0776P144M', 1, '', '', '0000-00-00', '0000-00-00'),
(281, 'Gerson Eusébio Fernandes Afonso', '1992-10-15', '2014-12-09 00:00:00', 2, 10, 4, 266911706, 1, 0, 0, 0, '', 0, 0, 0, 1, 26, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 966648062, 212032115, 0, '', 'São Tomé e Principe', 'Portuguesa', 1, '', 'Trabalhou na empresa Continental Pneus. ', 2, 14, 0, -1, 26, -1, -1, 0, 0, 1, 'Rua João Villaret, 34-3ºDto - 2835-254', '281.pdf', -1, -1, '', -1, '', -1, '13542425', 4, '', '', '0000-00-00', '0000-00-00'),
(282, 'Ana Maria João Luís Ladria', '1973-09-02', '2014-12-09 00:00:00', 1, 4, 5, 238036774, 1, 0, 0, 0, '', 0, 0, 0, 2, 41, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 930662848, 0, 0, '', 'Moçambique', 'Moçambique', 1, '', '', 10, 13, 1, -1, 41, 36, -1, 0, 0, 1, 'Rua 3 Lote 23 6ª A  2835-508 Cidade Sol', '282.pdf', 1, -1, '', -1, '', -1, 'AR096807W2', 1, '', '', '0000-00-00', '0000-00-00'),
(283, 'Edmundo João Ramos Estevão', '1960-09-25', '2014-12-09 00:00:00', 2, 10, 1, 145624668, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 918035807, 0, 0, '', '', 'Portuguesa', 1, '', 'Experiência de Trabalho na área da c. civil como pedreiro.', 2, 14, 0, -1, 11, -1, -1, 0, 0, 1, 'Largo dos Cravos,48-2º Dto - 2835-208', '283.pdf', 1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '7953904', 4, '', '', '0000-00-00', '0000-00-00'),
(284, 'Vanessa Filipa Leite Moura', '1993-02-19', '2014-12-09 00:00:00', 1, 4, 4, 272172634, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 1, '', 3, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', 'Frequenta Curso de Tecnicas de Restaurante e Bar', 10, 13, 0, -1, -1, -1, -1, -1, 0, 1, 'Quinta do Gerardo 2835-707', '284.pdf', -1, 1, '', -1, '', -1, '14966243', 3, '', '', '0000-00-00', '0000-00-00'),
(285, 'Vanessa Marília Rim Montes Cabeça', '1979-11-20', '2014-12-09 00:00:00', 1, 4, 1, 214600491, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 934754455, 0, 0, '', '', 'Portuguesa', 1, '', 'Integrada em Curso de Competências Básicas', 10, 13, 1, -1, -1, -1, -1, 0, 0, 1, 'Rua 13 Quinta da Mina Lote 9 1º Dto. 2835-505 Cidade Sol', '285.pdf', -1, -1, '', -1, '', -1, '11644782', 3, '', '', '0000-00-00', '0000-00-00'),
(286, 'Elsa Santos Andrade', '1988-08-10', '2014-12-09 00:00:00', 2, 10, 2, 250787490, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', 'Sem experiência profissional', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua das Tulipas,3-1º Dto - 2835-242', '286.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '13384557', 4, '', '', '0000-00-00', '0000-00-00'),
(287, 'Belmira Gomes', '1993-12-23', '2014-10-02 22:00:00', 1, 4, 4, 276823699, 1, -1, -1, -1, 'PROCURA 1º EMPREGO', -1, -1, 0, 1, -1, -1, -1, '', 1, 'ESCOLA BÁSICO 2,3 COM SECUNDÁRIO DE STO. ANTÓNIO', 3, 1, 1, -1, '', -1, -1, '', -1, 926343223, -1, -1, '', '', '', -1, '', '- Curso de Cabeleireira (9º Ano)\r\n- Actualmente, frequenta o Curso de Comércio (12º Ano)\r\n- Pretende Part-time (a partir das 18H00) para conciliar com a escola', 18, 24, -1, -1, 5, 39, 35, 0, -1, 1, 'CIDADE SOL', '287.pdf', 1, -1, '', -1, '', -1, '084826', 1, '', '', '0000-00-00', '0000-00-00'),
(288, 'Elsa Maria Alberto ', '0000-00-00', '2014-12-09 00:00:00', 2, 10, 4, 231015100, 1, 0, 0, 0, '', 0, 0, 0, 2, 42, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 961845768, 0, 0, '', 'Angola', 'Portuguesa', 1, '', 'Trabalhou como ajudante de cozinheira na ST.ª Casa Misericórdia de Alhos Vedros', 2, 14, 0, -1, 42, 39, -1, 0, 0, 1, 'Av. Almada Negreiros,44-R/c Esq - 2835-204', '288.pdf', 1, -1, '', -1, '', -1, '15925213', 4, '', '', '0000-00-00', '0000-00-00'),
(289, 'Lucélia Guaitolini', '1977-07-02', '2014-08-27 22:00:00', 2, 6, 4, 252261909, -1, 0, 0, 0, 'Limpezas em hotel', 0, 1, 0, 1, 35, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 967978391, 0, 0, 'lucelia7@sapo.pt', 'Vila Velha', 'Portuguesa', 0, '', '2014-08-28 -  Exp. profissional em limpezas num hotel, fabrico de bolos, loja de combustível, vendas/comércio.\r\nIdeia de negócio: distribuição de pastilhas, rebuçados, batatas e snacks.', 22, 22, 1, -1, -1, -1, -1, 0, 0, 1, 'Praceta José Relvas, Lote 61 ', '289.pdf', 1, -1, '', -1, '', -1, '18013773', 3, '', '', '0000-00-00', '0000-00-00'),
(290, 'Fernanda Conceição Cardoso Ferreira', '1969-04-26', '2014-12-09 00:00:00', 2, 10, 3, 182246698, 1, 0, 0, 0, '', 0, 0, 0, 2, 42, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 968531771, 0, 0, '', 'Angola', 'Portuguesa', 1, '', '', 2, 14, 0, -1, 44, -1, -1, 0, 0, 1, 'Praceta João de Santarem Bl 1- 1º Dto - 2835', '290.pdf', 1, -1, '', -1, '', -1, '5673880', 4, '', '', '0000-00-00', '0000-00-00'),
(291, 'Fernando Serrana Alves', '1975-02-13', '2014-12-09 00:00:00', 2, 10, -1, 253681294, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 934376915, 0, 0, '', 'V. F. Xira', 'Portuguesa', 1, '', 'Experiência de Trabalho nas vendas ambulantes', 2, 14, 1, 4, -1, -1, -1, 0, 0, 1, 'Praceta das Camélias,50-2º Esq - 2835-210', '291.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '12213693', 4, '', '', '0000-00-00', '0000-00-00'),
(292, 'Raquel de Oliveira Leal', '1991-09-16', '2014-08-19 22:00:00', 1, 2, 6, 221683143, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 918451309, 210806086, 0, 'tf.raquel.leal@gmail.com', 'Barreiro', 'Portuguesa', 0, '', '2014-08-20 - Procura terapia da fala.', 22, 22, 1, 4, 42, -1, -1, 0, 0, 1, 'Rua Almirante Reis, N.º25, 2.º Esq.º', '292.pdf', 1, -1, '', -1, '', -1, '14018234', 3, '', '', '0000-00-00', '0000-00-00'),
(293, 'Maria Teresa T. Milheiro', '1960-07-17', '2014-08-31 22:00:00', 2, 8, 4, 190796960, 2, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 962886211, 218019702, 0, 'teresa.t@live.com.pt', 'Baixa da Banheira', 'Portuguesa', 0, '', '2014-09-01 - Apoio na construção do C.V.\r\n2014-09-02 - Conclusão do C.V. e encaminhamento para processo de recrutamento Raríssimas - Auxiliar de Acção Directa.', 22, 22, 1, -1, -1, -1, -1, -1, 0, 1, 'Praça Karl Marx, N.º 14, 1.º Dt.º', '293.pdf', 1, -1, '', -1, '', -1, '07147801', 3, '', '', '0000-00-00', '0000-00-00'),
(294, 'Rute Milheiro Pádua ', '1979-03-02', '2014-08-31 22:00:00', 2, 6, 6, 233420630, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 963272244, 218019702, 0, 'rutuxa@live.com.pt', 'Baixa da Banheira', 'Portuguesa', 0, '', '2014-09-01 - Apoio na construção do C.V. e carta de apresentação.', 22, 22, 1, -1, -1, -1, -1, -1, 0, 1, '', '294.pdf', 1, -1, '', -1, '', -1, '11626352', 3, '', '', '0000-00-00', '0000-00-00'),
(295, 'Tiago Filipe Bessa Godinho Barroso', '1995-11-11', '2014-10-06 22:00:00', 2, 2, 4, 253938503, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 2, 1, 2, 0, '', 0, 0, '', 0, 913990245, 0, 0, '', 'Barreiro', 'Portuguesa', 0, '', '2014-10-07 - À procura do 1.º emprego. Apoio na construção do C.V. ', 22, 22, 0, -1, -1, -1, -1, -1, 0, 1, 'Rua de Goa, N.º 21, R/Ch. frente', '295.pdf', 1, -1, '', -1, '', -1, '14763545', 3, '', '', '0000-00-00', '0000-00-00'),
(296, 'Tânia Alexandra Vasques Pereira', '1983-08-14', '2014-10-28 00:00:00', 2, 8, 5, 234102799, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', 'Moita', 'Portuguesa', 0, '', '2014-10-28 - Apoio na construção do C.V.', 22, 22, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Dr. Egas Moniz, N.º13, 3.º Esq.º, 2860-459', '296.pdf', 1, -1, '', -1, '', -1, '12409055', 3, '', '', '0000-00-00', '0000-00-00'),
(297, 'Florbela Maria Santos Caeiro Brandão', '1968-11-02', '2014-10-02 22:00:00', 2, 8, 3, 187829071, 2, -1, -1, -1, '', -1, -1, 0, 1, -1, -1, -1, '', -1, '', 6, 2, 1, -1, '', -1, -1, '', -1, 967598271, -1, -1, '', 'São Bento do Mato', 'Portuguesa', -1, '', '', 22, 22, -1, -1, -1, -1, -1, 0, -1, 1, 'Alto do Pontão, CCI - 6805, 2860-315', '297.pdf', 1, -1, '', -1, '', -1, '9627149', 3, '', '', '0000-00-00', '0000-00-00'),
(298, 'Dayse Patrícia Correia da Silva Vieira', '1977-04-18', '2014-11-18 00:00:00', 2, 8, 5, 221262415, 2, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 5, 1, 1, 0, '', 1, 0, '', 0, 932158436, 0, 0, 'dayse-vieira', 'Moita', 'Portuguesa', 1, '', '2014-11-18 - A utente revela incapacidade e aufere de uma pensão de invalidez. Encaminhamento para lojas sociais na Moita, \"Famílias com Esperança\" (Padre Sílvio) e \"Cais Terapia\". Contacto com a Segurança Social para esclarecimento de dúvida colocada pela utente, uma vez que, não entendeu o que lhe foi transmitido. Dúvida (caso comece a trabalhar pode suspender a pensão de invalidez e depois retomá-la, no entanto, demorará sempre por volta de 3 meses a ser reactivada), esclarecida e transmitido à utente.\r\n\r\n2014-11-26 - Encaminhamento para a RUMO com ponto de situação e com referência ao atendimento feito pelo Dr. Augusto (RUMO), à utente no dia 29 de Outubro, segundo informação da mesma.\r\n\r\n2014-12-02 - Começou a fazer voluntariado no espaço \"Famílias com Esperança\" e dia 6 de Dezembro do corrente, vai iniciar outro voluntariado no \"Ninho\". Nesta data foi dado conhecimento do novo ponto de situação à RUMO.\r\n ', 22, 22, 1, -1, -1, -1, -1, -1, 1, 1, 'Rua Professor Bento de Jesus Caraça, N.º 12, 2.º Dt.º, 2860-483', '298.pdf', -1, -1, '', 1, 'Voluntariado', -1, '11390547', 3, '', '', '0000-00-00', '0000-00-00'),
(299, 'Cristiana Sofia Nunes Pereira dos Santos', '1995-03-01', '2014-12-09 00:00:00', 2, 10, 4, 265523133, 1, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 2, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', '1.º Emprego', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta dos Crisântemos Nº3,Bl24-1 Esq - 2835-211', '299.pdf', -1, 1, 'Fotografia', -1, '', -1, '15500356', 4, '', '', '0000-00-00', '0000-00-00'),
(300, 'Iolanda Fialho dos Santos ', '1984-04-24', '2014-12-09 00:00:00', 2, 10, 1, 239296095, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', '', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua das Acácias,15-C/v Drt - 2835-239', '300.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '13319790', 4, '', '', '0000-00-00', '0000-00-00'),
(302, 'Isabel Correia', '1972-08-27', '2014-12-09 00:00:00', 2, 10, 1, 203733398, 1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 965758227, 0, 0, '', 'Angola', 'Portuguesa', 1, '', '', 2, 14, 0, -1, 35, -1, -1, 0, 0, 1, 'Praceta dos Lirios,2-2º Esq - 2835-213', '302.pdf', 1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '11597847', 4, '', '', '0000-00-00', '0000-00-00'),
(303, 'Debora Micaela Correia', '1995-06-21', '2014-12-09 00:00:00', 2, 10, 3, 267487282, 1, 0, 0, 0, '', 0, 0, 0, 1, 35, 1, 0, '', 0, '', 2, 1, 1, 0, '', 0, 0, '', 0, 965758227, 0, 0, '', '', 'Portuguesa', 1, '', 'Frequentou o Centro de Formação e Reabilitação Profissional da CERCIM e o Curso de Hotelaria. Portadora de deficiência e/ou incapacidade.', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta dos Lirios,2-2º Esq - 2835-213', '303.pdf', 1, -1, '', -1, '', -1, '14535359', 4, '', '', '0000-00-00', '0000-00-00'),
(304, 'Joana Batista Neto', '1959-05-10', '2014-12-09 00:00:00', 2, 10, 4, 208384642, 1, 0, 0, 0, '', 0, 0, 0, 2, 40, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 964675939, 0, 0, '', 'São Tomé e Principe', 'Portuguesa', 1, '', 'Trabalhou na área dos cuidados de saúde como auxiliar de ação médica. Exerceu enfermagem no pais de origem (São Tomé e Príncipe).', 2, 14, 0, -1, 40, -1, -1, 0, 0, 1, 'Rua das Margaridas nº4 - 2º Esq - 2835-240 ', '304.pdf', 1, -1, '', -1, '', -1, '14079814', 4, '', '', '0000-00-00', '0000-00-00'),
(305, 'Maria Celeste Filipe César Cunha', '1973-12-23', '2014-12-09 00:00:00', 1, 4, 4, 217764746, 1, 0, 0, 0, 'Realizou um CEI+(Contrato de Emprego e Inserção +) na área de Jardinagem', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 920470350, 0, 0, '', 'Lisboa - S. Sebastião da Pedreira', 'Portuguesa', 1, '1836855', 'A utente procura emprego numa Junta de Freguesia, na categoria de cantoneira/jardineira, pois tem experiência nestas áreas.', 10, 13, 0, -1, 35, -1, -1, 0, 0, 1, 'Qta. da Mina, nº 7, 3º esq, 2835-492  Sto. António da Charneca', '305.pdf', 1, -1, '', -1, '', -1, '11107795', 3, '', '', '0000-00-00', '0000-00-00'),
(306, 'Arménio de Jesus Gonçalves Jorge', '1971-11-30', '2014-12-09 00:00:00', 1, 4, 2, 201105195, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 962068997, 0, 0, '', 'Vale de Cavalos - Chamusca', 'Portuguesa', 1, '2334615', 'O utente acima referido teve experiência profissional, ao nível da realização de serviços , na área da mecânica e a sua área preferencial ao nível de inserção profissional é esta mesma.', 10, 13, 0, -1, 43, -1, -1, 0, 0, 1, 'Qta. da mina, lote 34, nº 23, 1º esq. 2835 Sto. António da Charneca', '306.pdf', 1, 1, 'Área da Mecânica', -1, '', -1, '11554213', 3, '', '', '0000-00-00', '0000-00-00'),
(307, 'Engrácia Adão António', '1968-02-16', '2014-12-10 00:00:00', 1, 1, 4, 229343171, 4, 0, 1, 0, '', 0, 0, 35, -1, 35, 0, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 964121379, 0, 0, '', '', 'Angolana ', 1, '', 'Empregada de limpeza, presentemente apenas realiza 3 horas diárias de trabalho, auferindo um rendimento muito baixo, e por isso mesmo ainda beneficia do Rendimento Social de Inserção ', 3, 18, 0, -1, 35, -1, -1, 1, 0, 1, 'Rua Cândido de Oliveira 67 3.º Dt.º  ', '307.pdf', 1, 1, 'Cozinheira', 1, 'Pastelaria ', -1, '31285828', 3, '', '', '0000-00-00', '0000-00-00'),
(308, 'Inocêncio dos Santos Andradas', '1979-03-04', '2014-12-10 00:00:00', 2, 10, 2, 222785691, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', '', 2, 14, 1, 4, -1, -1, -1, 0, 0, 1, 'Rua das Acácias,15-C/v Drt - 2835-239', '308.pdf', -1, 1, 'Formação para a Inclusão', -1, '', -1, '12084714', 4, '', '', '0000-00-00', '0000-00-00'),
(309, 'Amélia Pimentel Tavares Alfredo', '1974-07-14', '2014-12-10 00:00:00', 2, 10, 4, 210036931, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 960079637, 0, 0, '', 'Moçambique', 'Portuguesa', 1, '', '', 2, 14, 0, -1, 36, -1, -1, 0, 0, 1, 'Largo dos Cravos, 51-2º Dto - 2835-208', '309.pdf', 1, -1, '', -1, '', -1, '10741365', 4, '', '', '0000-00-00', '0000-00-00'),
(310, 'Ana Sofia Correia dos Santos', '1979-05-17', '2014-12-10 00:00:00', 2, 10, 2, 228764556, 4, 0, 0, 0, '', 0, 0, 0, 1, 42, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 938727752, 0, 0, '', 'Alhos Vedros', 'Portuguesa', 1, '', 'Experiência de trabalho como ajudante de acção directa no apoio a pessoas idosas.', 2, 14, 0, -1, 42, 35, -1, 0, 0, 1, 'Rua dos Amores Perfeitos,39-R/c Dto-2835-245', '310.pdf', 1, -1, '', -1, '', -1, '', 4, '', '', '0000-00-00', '0000-00-00'),
(311, 'Natanael Cabeça Fernandes', '1995-06-16', '2014-12-10 00:00:00', 2, 10, 3, 224357735, 5, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 2, 1, 2, 0, '', 0, 0, '', 0, 937023206, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '', '1.º Emprego', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua dos Sobreiros, 38 - 2835-248', '311.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '15463407', 3, '', '', '0000-00-00', '0000-00-00'),
(312, 'António Luiz Armando Berenguel', '1952-03-02', '2014-12-10 00:00:00', 2, 10, 1, 179015290, 1, 0, 0, 0, '', 0, 0, 0, 2, 10, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 913743909, 0, 0, '', 'Angola', 'Portuguesa', 1, '', 'DLD. Experiência de trabalho na decapagem, estofador de móveis e servente da c. civil.', 2, 14, 1, 4, 10, 11, -1, 0, 0, 1, 'Prt. Pablo Neruda,35-1º Dto - 2835-222', '312.pdf', 1, -1, '', -1, '', -1, '10001822', 4, '', '', '0000-00-00', '0000-00-00'),
(313, 'Adelia Sofia Garcia Lito', '1994-07-26', '2014-12-10 00:00:00', 2, 10, 2, 268468222, 5, -1, -1, -1, '', -1, -1, 0, 2, -1, 1, -1, '', -1, '', 3, 1, 1, -1, '', -1, -1, '', -1, 936888037, -1, -1, '', 'Vale da Amoreira', 'Portuguesa', 1, '', 'Sem hábitos e experiências de trabalho. 1.º Emprego. ', 2, 14, -1, -1, -1, -1, -1, 0, -1, 1, 'Rua das Tulipas,11-R/c Dto - 2835-242', '313.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '15572485', 4, '', '', '0000-00-00', '0000-00-00'),
(314, 'Ana António Kissengo', '1987-04-14', '2014-12-10 00:00:00', 1, 1, 4, 256032483, 1, 0, 0, 0, '', 0, 0, 0, 1, 35, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 961692734, 0, 0, '', '', 'Angolana ', 1, '', '', 3, 18, 0, -1, 6, 35, -1, 0, 0, 1, 'Rua Cândido de Oliveira 67 3.º Dt.º  ', '314.pdf', 1, -1, '', -1, '', -1, 'W992314V0', 1, '', '', '0000-00-00', '0000-00-00'),
(315, 'João Carlos Oliveira Matos', '1965-12-05', '2014-12-10 00:00:00', 2, 10, 1, 190084561, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 963902455, 0, 0, '', 'Vale da Amoreira', 'Portuguesa', 1, '', 'Experiência de trabalho na área da c. civil como servente. Por acidente de trabalho incapaz para trabalhos com maior exigência física', 2, 14, 0, -1, 11, -1, -1, 0, 0, 1, 'Largo dos Cravos,58-2º Esq. - 2835-208', '315.pdf', 1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '10337240', 4, '', '', '0000-00-00', '0000-00-00'),
(316, 'Jorge Augusto Galamba Nogueira ', '1982-02-12', '2014-12-10 00:00:00', 1, 1, 1, 222695692, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 962057388, 0, 0, '', '', 'Portuguesa ', 1, '', '', 3, 18, 0, -1, -1, -1, -1, 0, 0, 1, '', '316.pdf', -1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(317, 'João da Silva Abreu', '1964-03-21', '2014-12-10 00:00:00', 2, 10, 1, 183457536, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 935442218, 0, 0, '', 'Vale da Amoreira', 'Portuguesa', 1, '', 'Experiência de trabalho nas vendas ambulantes', 2, 14, 1, 4, -1, -1, -1, 0, 0, 1, 'Av. José Almada Negreiros,18-2º Esq - 2835-204', '317.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '10365388', 4, '', '', '0000-00-00', '0000-00-00'),
(318, 'Rogerio Paulo Sobreiro Ferreira', '1975-06-07', '2014-12-10 00:00:00', 1, 1, 3, 202661237, 4, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 910407103, 0, 0, '', 'Lisboa - S. Sebastião da Pedreira', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 11, 24, -1, 0, 0, 1, 'Rua de Dili nº9, R7ch DTº 2830', '318.pdf', 1, -1, '', -1, '', -1, '10593120', 3, '', '', '0000-00-00', '0000-00-00'),
(319, 'João Manuel Teles Sá ', '1968-04-02', '2014-12-10 00:00:00', 2, 10, 1, 205162126, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '', 'Experiência de trabalho nas vendas ambulantes', 2, 14, 1, -1, -1, -1, -1, 0, 0, 1, 'Praceta das Camélias,67-1º Esq. - 2835-210', '319.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '9777222', 4, '', '', '0000-00-00', '0000-00-00'),
(320, 'Maria do Carmo Rim Quaresma ', '1967-09-15', '2014-12-10 00:00:00', 2, 10, 2, 208022210, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', 'Experiência de trabalho nas vendas ambulantes ', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta das Camélias,67-1º Esq. - 2835-210', '320.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '12000142', 4, '', '', '0000-00-00', '0000-00-00'),
(321, 'Sara Isabel Martins Violante Sousa', '1976-11-16', '2014-12-10 00:00:00', 1, 1, 3, 214489329, 2, 0, 0, 0, '', 1, 0, 0, 2, 5, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 910226281, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 5, 35, -1, 0, 0, 1, 'Rua Resistencia ao Fascismo B.25 de Abril nº1,R/CH Dtº 2830-122', '321.pdf', 1, -1, '', -1, '', -1, '11132083', 3, '', '', '0000-00-00', '0000-00-00'),
(322, 'Josué Manuel Quaresma Sá', '1995-08-24', '2014-12-10 00:00:00', 2, 10, 3, 271854065, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 2, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', '1.º Emprego', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta das Camélias,67-1º Esq. - 2835-210', '322.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '30510714', 4, '', '', '0000-00-00', '0000-00-00'),
(323, 'Iryna Pasishuyk Hutik', '1972-12-03', '2014-12-10 00:00:00', 1, 1, 5, 235843733, 2, 0, 0, 0, '', 1, 0, 0, 1, 7, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 925783169, 0, 0, '', 'Ucrania', 'Ucraniana', 1, '', '', 10, 13, 1, -1, 5, 5, -1, 0, 0, 1, 'Rua da Nau São Rafael nº4,CV Qta Nova da Telha 2830-489', '323.pdf', 1, -1, '', -1, '', -1, '30835036', 3, '', '', '0000-00-00', '0000-00-00'),
(324, 'José Carlos Calado Martins ', '1960-12-31', '2014-12-10 00:00:00', 1, 1, 4, 204208548, 1, 0, 0, 0, 'Motorista pesados/gruísta/manobrador', 1, 0, 0, 1, 45, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 918127061, 0, 0, '', '', 'Portuguesa ', 1, '', '', 3, 18, 1, 4, 45, 11, -1, 0, 0, 1, 'Travessa da Praia 7 1.º Dt.º ', '324.pdf', 1, -1, '', -1, '', -1, '6187210', 3, '', '', '0000-00-00', '0000-00-00'),
(325, 'João Paulo Garcia Pilar', '1986-12-14', '2014-12-10 00:00:00', 2, 10, 3, 250925788, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 932170913, 0, 0, '', '', 'Portuguesa', 1, '', '', 2, 14, 1, -1, -1, -1, -1, 0, 0, 1, 'Rua das Tulipas,1-2º Esq. - 2835-242', '325.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', 1, 'Curso EFA B3', -1, '14232553', 4, '', '', '0000-00-00', '0000-00-00'),
(326, 'Nadia das Mercês Noronha Mendes', '1980-08-19', '2014-12-10 00:00:00', 1, 1, 4, 222695536, 4, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguessa', 1, '', '', 10, 13, 1, -1, 36, -1, -1, 0, 0, 1, 'Rua 2,porta 2 Bairro Oliveira Qta das Gateiras 2830-136', '326.pdf', 1, -1, '', -1, '', -1, '11688802', 3, '', '', '0000-00-00', '0000-00-00'),
(327, 'Juvenal António Cardoso Freire Tavares ', '1975-05-23', '2014-12-10 00:00:00', 1, 2, 4, 261121278, 1, 0, 0, 0, 'Reparador de Carroçaria', 0, 0, 0, 2, 19, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 924095420, 0, 0, '', '', 'Cabo Verde  ', 1, '', '', 3, 18, 1, 4, 19, 11, 35, 0, 0, 1, 'Travessa do Loureiro n.º 23 1.º Dt.º ', '327.pdf', 1, -1, '', -1, '', -1, '12692291', 3, '', '', '0000-00-00', '0000-00-00'),
(328, 'Vânia Silva Pereira', '1989-12-11', '2014-12-10 00:00:00', 2, 10, 2, 251292827, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 932170913, 0, 0, '', 'Portimão', 'Portuguesa', 1, '', '', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua das Acácias,16-C/v Dta - 2835-239', '328.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '6514209', 4, '', '', '0000-00-00', '0000-00-00'),
(330, 'João Manuel Andrade', '1954-10-15', '2014-12-10 00:00:00', 1, 1, 2, 160089883, 5, 0, 0, 0, '', 0, 0, 0, -1, 11, 0, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 960388357, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 1, -1, 11, -1, -1, -1, 0, 1, 'Rua Capitão tenente Oliveira e Carmo nº37R/CH Dtº nº37 2830', '330.pdf', 1, -1, '', -1, '', -1, '5145294', 3, '', '', '0000-00-00', '0000-00-00'),
(331, 'Sekou Câmara ', '1979-01-01', '2014-12-10 00:00:00', 1, 1, -1, 256057966, 1, 0, 0, 0, 'Montagem de camas articuladas', 0, 0, 0, 2, 10, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 920083193, 0, 0, '', '', 'Libéria ', 1, '', '', 3, 18, 1, -1, 10, 24, -1, 0, 0, 1, 'Avenida da Liberdade 1 5B ', '331.pdf', 1, -1, '', -1, '', -1, '4525K27J0', 1, '', '', '0000-00-00', '0000-00-00'),
(332, 'Nélia Gomes dos Santos Da Purificação', '1964-04-04', '2014-12-10 00:00:00', 1, 1, 4, 133914313, 3, 0, 0, 0, '', 0, 0, 0, 2, 10, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 912361679, 211324864, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 1, -1, 26, 10, -1, 0, 0, 1, 'Av Fuzileiros Navais 1j S/cv Dtª 2830', '332.pdf', 1, -1, '', -1, '', -1, '4723065', 3, '', '', '0000-00-00', '0000-00-00'),
(333, 'José Antonio Pereira Raposo', '1970-11-04', '2014-12-10 00:00:00', 2, 10, 2, 195236378, 5, 0, 0, 0, '', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 912782879, 0, 0, '', 'Grândola', '', 1, '2113690', 'Experiência profissional na área da c. civil como pedreiro, ladrilhador e carpinteiro. Último trabalho foi numa fábrica na secção de embalamentos. Fez formação profissional na área da climatização e frio. ', 2, 14, 1, 4, 11, 26, -1, 0, 0, 1, 'Rua das Acácias,16-C/v Dta - 2835-239', '333.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(334, 'Maria Fernanda Jorge Lopes', '1964-04-10', '2014-12-10 00:00:00', 2, 10, 4, 164919015, 5, 0, 0, 0, '', 0, 0, 0, 2, 42, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 912782879, 0, 0, '', 'Mafra', 'Portuguesa', 1, '1838201', 'Experiência de trabalho como ajudante de lar, apoio domiciliário e em fábrica (embalamento). Trabalhou na Holanda por ETT. Fez formação profissional em Serviços de Apoio à Comunidade e Auxiliar de Acção Educativa', 2, 14, 0, -1, 42, 26, -1, 0, 0, 1, 'Rua das Acácias,16-C/v Dta - 2835-239', '334.pdf', 1, -1, '', -1, '', -1, '6514209', 4, '', '', '0000-00-00', '0000-00-00'),
(335, 'José Joaquim Campeão Varela Dos Reis', '1957-04-21', '2014-12-10 00:00:00', 2, 10, 2, 137982348, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', 'Experiência de Trabalho como servente da c. civil. Trabalhou como cantoneiro para a junta de freguesia do Lavradio através da medida do IEFP CEI+.', 2, 14, 0, -1, 35, 11, 26, 0, 0, 1, 'Praceta Das Camélias Bl 67-2º Dto - 2835-210', '335.pdf', 1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '6224584', 4, '', '', '0000-00-00', '0000-00-00'),
(336, 'Laurinda Gomes', '1965-04-07', '2014-12-10 00:00:00', 2, 10, 1, 272975788, 1, 0, 0, 0, '', 0, 0, 0, 1, 35, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 926317793, 0, 0, '', 'Cabo-Verde', 'Caboverdiana ', 1, '', 'Experiência de trabalho como empregada doméstica em casa de particulares.', 2, 14, 0, -1, 35, -1, -1, 0, 0, 1, 'Prt. Ferreira de Castro,45 - R/c Esq - 2835-215', '336.pdf', 1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '40SS91850', 1, '', '', '0000-00-00', '0000-00-00'),
(337, 'Ana Maria António Alves', '1955-06-22', '2013-09-11 22:00:00', 2, 10, 6, 138010986, 1, 0, 0, 0, 'Enfermeira', 1, 0, 0, 2, 42, 0, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 915031524, 0, 0, 'ana.alves.hortasbiologicas@gmail.com', 'S. Pedro', 'Portuguesa', 0, '', '2013-08-06 - E-mail do GIP do Vale da Amoreira a encaminhar a utente para o CLDS Moita, para esclarecimentos sobre ideia de um projeto.\r\n\r\n2013-09-12 - Diagnóstico de necessidades e acompanhamento de projeto de empreendedorismo (Horta terapêutica para doentes mentais e indivíduos presos institucionalizados. Na Moita. Objectivo do projeto é o de reinserção social da população referida, através do cultivo e venda de ananás, pêra, etc.. Trabalhar com produtos biológicos).\r\n\r\n2013-10-24 - E-mail da RUMO a informar que a utente integra a turma de PEI - Projeto de Promoção de Empreendedorismo Imigrante, e começa amanhã, dia 25 de Outubro de 2013.\r\n\r\n2014-03-27 -  Filho de 26 anos estuda no Politécnico da Guarda. Ver fundamentos economia em vez de macroeconomia. \r\nO pedido inicial da utente não corresponde à necessidade. Foi encaminhada para o Centro de Saúde do Vale da Amoreira para apoio psicológico. Do Centro de Saúde, aconselharam acompanhamento psiquiátrico no Barreiro, no entanto a utente não quer ir a esta última consulta...\r\n\r\n2014-11-12 - Marcação de atendimento, na sequência de contacto feito pela utente. \r\n\r\n2014-11-20 - Não foi possível fazer o atendimento porque não se conseguiu estabelecer ligação. A utente estava completamente descompensada. Posteriormente foram feitos novos contactos, para finalizar estes atendimentos.\r\n\r\n2014-12-10 - Até à data não se conseguiu contacto.\r\n', 22, 22, 1, -1, -1, -1, -1, 0, 0, 1, 'Praceta Teixeira Pascoas, Lote 15, 1.º Dt.º, 2835, Vale da Amoreira ', '337.pdf', -1, -1, '', 1, '', -1, '08202946', 3, '', '', '0000-00-00', '0000-00-00'),
(338, 'Leila Susana Marino Simões', '1988-06-27', '2014-12-10 00:00:00', 2, 10, 5, 251727769, 1, 0, 0, 0, '', 0, 0, 0, 1, 24, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 927469363, 0, 0, '', '', 'Portuguesa', 1, '', 'Experiência de trabalho no ramo hoteleiro como copeira e recepcionista. A frequentar estágio em unidade hoteleira de Lisboa e a aguardar integração pelo IEFP na medida de emprego Estágio Emprego/Inserção', 2, 14, 0, -1, 24, 36, -1, 0, 0, 1, 'Rua Teixeira Pascoais,11-R/C Esq - 2835-278', '338.pdf', 1, -1, '', -1, '', -1, '13556203', 4, '', '', '0000-00-00', '0000-00-00'),
(339, 'Paulo José Silva da Cunha', '1968-12-25', '2013-09-25 22:00:00', 2, 8, 4, 177493003, 4, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 963038940, 0, 0, 'paulomafaldacoelho@hotmail.com', '', 'Portuguesa', 0, '', '2014-11-03 - Está a trabalhar desde 2014-10-28.', 22, 22, 0, -1, -1, -1, -1, -1, 0, 2, 'Rua Soeiro Pereira Gomes, Bl M, N.º 52 3, 2860 - Fonte da Prata', '339.pdf', -1, -1, '', -1, '', -1, '9513316', 3, '', '', '0000-00-00', '0000-00-00'),
(340, 'Márcio Marques Nunes ', '1979-02-23', '2014-12-10 00:00:00', 1, 2, 4, 223310115, 5, 0, 0, 0, 'Servente ', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 965107347, 0, 0, '', '', 'Portuguesa ', 1, '', '', 3, 18, 1, -1, 11, 35, -1, 0, 0, 1, 'Travessa do Coimbra 3 R/C ', '340.pdf', 1, -1, '', -1, '', -1, '11842129', 3, '', '', '0000-00-00', '0000-00-00'),
(341, 'Lúcio Roque José Mário dos Remédios', '1963-12-13', '2014-12-10 00:00:00', 2, 10, 1, 256732183, 2, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 914939086, 0, 0, '', 'Goa (India)', 'Portuguesa', 1, '', 'Experiência como ajudante de cozinha', 2, 14, 0, -1, 39, -1, -1, 0, 0, 1, 'Rua José Conceição Nunes,75-2º Esq - 2835-255', '341.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '15607675', 4, '', '', '0000-00-00', '0000-00-00'),
(342, 'Vânia Sofia Marques de Almeida ', '1978-05-18', '2014-12-10 00:00:00', 1, 2, -1, 213977109, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 960337383, 0, 0, '', '', 'Portuguesa ', 1, '', '', 3, 18, 0, -1, -1, -1, -1, 0, 0, 1, 'Travessa do Coimbra 3 R/C ', '342.pdf', 1, -1, '', -1, '', -1, '11398423', 3, '', '', '0000-00-00', '0000-00-00'),
(343, 'Perpetua de Fátima Piedade Machado', '1962-04-12', '2014-12-10 00:00:00', 2, 10, -1, 266723683, 2, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 914939086, 0, 0, '', 'India', 'Portuguesa', 1, '4426773', 'Fez formação como cozinheira na Rumo, Crl e em Português para estrangeiros.', 2, 14, 0, -1, 39, -1, -1, 0, 0, 1, 'Rua José Conceição Nunes,75-2º Esq - 2835-255', '343.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '30000600', 4, '', '', '0000-00-00', '0000-00-00'),
(344, 'Ismael Ricardo Martins Pereira', '1975-11-04', '2014-09-17 22:00:00', 2, 5, 3, 164055304, -1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 5, -1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '1940096', '2014-09-18 - De Out. 93 a Junho 95, tirou fotocópias + encadernações na CERCIMB (Assoc. de estudantes);\r\nde 96 até Maio 97, gráfico (domínio gráfico); de 98 a 2001, C.M.Montijo pela RUMO. \r\nEsteve na APPACDM em Elvas.\r\nDesde Fev. de 2010 que está nas Arroteias.\r\nDia 18 de Set. do corrente, o IEFP passou uma declaração ao utente em como o mesmo está inscrito, na situação de desempregado à procura de novo emprego.\r\n\r\n2014-11-10 - Contacto e encaminhamento para a RUMO (já foi utente da RUMO), com o ponto de situação do atendimento, com registo da experiência profissional tal como fazer fotocópias e encadernações e nessa mesma data levou um par de sapatos. Aparentemente o utente tem deficiência, apesar de afirmar que não sabe se a tem e qual é o grau. ', 22, 22, 0, -1, -1, -1, -1, -1, 0, 1, 'Rua José Dias Coelho, Bairro José N.º 2, Arroteias, 2860-176 Alhos Vedros', '344.pdf', 1, -1, '', 1, '', -1, '11512718', 3, '', '', '0000-00-00', '0000-00-00'),
(345, 'Marize Vaz Tavares', '1979-12-12', '2014-06-08 22:00:00', 2, 8, 2, 215292189, 1, 0, 0, 0, 'Cozinheira', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 960411543, 216040664, 0, '', '', 'Cabo Verdiana', 0, '', '2014-06-09 - Diagnóstico: Empreendedorismo. Experiência prévia como cozinheira, prof.ª de dança, associativismo (grupos informais no Vale da Amoreira). Pretende abrir um café/restaurante.\r\n\r\n2014-11-05 - Contacto com Microcrédito para esclarecimento de algumas dúvidas pela parte da utente. Vai preencher o formulário  e depois remarcamos atendimento também com o técnico do Microcrédito, para verificação e aconselhamento do mesmo.', 22, 22, 0, -1, -1, -1, -1, 0, 0, 1, 'Moita', '345.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(346, 'Luisa Maria da Silva Pereira dos Santos', '1967-08-23', '2014-12-10 00:00:00', 1, 1, 3, 187449350, 4, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 919159280, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua do lobito nº1  R/CH Dto 2830-157', '346.pdf', 1, -1, '', -1, '', -1, '8261930', 3, '', '', '0000-00-00', '0000-00-00'),
(347, 'José Manuel Roseta Gomes Dias', '1961-04-25', '2014-11-19 00:00:00', 2, 5, 4, 139859284, 2, 0, 0, 0, 'Auxiliar de Acção Médica', 1, 0, 0, 2, 42, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 918163933, 218217623, 0, 'jose-dias189@hotmail.com', 'Alhos Vedros', 'Portuguesa', 0, '', '2014-11-19 - Pesquisa e resposta a ofertas de trabalho. Registo em alguns sites de emprego. Enviar listagem de empresas de trabalho temporário. Enviar diariamente, por e-mail,  as ofertas de trabalho diárias.', 22, 22, 1, -1, -1, -1, -1, 0, 0, 1, 'Rua Luís de Camões, Bloco X, N.º 3, 1.º andar, 2860-267 Alhos Vedros', '347.pdf', 1, -1, '', -1, '', -1, '7349302', 3, '', '', '0000-00-00', '0000-00-00'),
(348, 'Anabela dos Santos Luz', '1965-05-10', '2014-12-10 00:00:00', 1, 1, 2, 119452472, -1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 932880689, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 35, -1, -1, 0, 0, 1, 'Rua Damão n~3,1ºesq 2830-171', '348.pdf', 1, -1, '', -1, '', -1, '8691998', 3, '', '', '0000-00-00', '0000-00-00'),
(349, 'Carlos Fernando Araujo Silva', '1964-08-28', '2014-12-10 00:00:00', 1, 1, 2, 179464590, 4, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 934042466, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 1, 4, -1, -1, -1, 0, 0, 1, 'rua de Pajim letra A 2830-184', '349.pdf', -1, -1, '', -1, '', -1, '8293260', 3, '', '', '0000-00-00', '0000-00-00'),
(350, 'Maria Isabel Rebelo Alves P. Dias', '1961-07-26', '2014-11-19 00:00:00', 2, 5, 4, 188877770, 2, 0, 0, 1, 'Prestação de cuidados a idosos', 0, 0, 42, -1, 42, 0, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 919680426, 218217623, 0, 'isabel-dias-chippy@hotmail.com', 'Alhos Vedros', 'Portuguesa', 0, '', '2014-11-19 - Pesquisa de ofertas de trabalho. Registo em alguns sites de trabalho.  Enviar diariamente ofertas de trabalho diárias. Enviar listagem de empresas de trabalho temporário.\r\nNesta data ligou a informar que amanhã dia 20, vai começar a trabalhar num lar.', 22, 22, 0, -1, -1, -1, -1, 1, 0, 2, 'Rua Luís de Camões, Bloco X, N.º 3, 1.º andar, 2860-267 Alhos Vedros', '350.pdf', 1, -1, '', -1, '', -1, '6210541', 3, '', '', '0000-00-00', '0000-00-00');
INSERT INTO `utentes` (`id`, `nome`, `dataNascimento`, `dataInscricao`, `idConcelho`, `idFreguesia`, `idHabilitacoes`, `NIF`, `idEstadoCivil`, `trabalhadorPrecario`, `PrestadorDeServicos`, `TrabalhadorContaOutrem`, `ultimaProfissaoExercida`, `semSubsidio`, `subsidioDesemprego`, `EspecificacaoEmprego`, `tempoDesempregado`, `ultimaProfissaoExercidaDesempregado`, `beneficiarioRSI`, `outrosSubsidios`, `QuaisOutrosSubsidios`, `Estudante`, `estabelecimentoEnsino`, `idGrupoEtario`, `idSituacaoRegularizada`, `idGenero`, `MedidasAtivasEmprego`, `QualMedidasAtivasEmprego`, `Voluntariado`, `FormacaoProfissional`, `QualFormacaoProfissional`, `Biscates`, `Telemovel`, `Telefone`, `OutroTelefone`, `Email`, `Naturalidade`, `Nacionalidade`, `InscritoCentroEmprego`, `NumeroInscricaoCentroEmprego`, `Observacoes`, `idFrontOfficeSinalizador`, `idTecnico`, `cartaDeConducao`, `cartaDeConducaoCategoriaID`, `interesseProfissional1`, `interesseProfissional2`, `interesseProfissional3`, `empregado`, `outraSituacao`, `estado`, `morada`, `CV`, `pedidoInicialEmprego`, `pedidoInicialFormacao`, `pedidoInicialFormacaoQual`, `pedidoInicialOutra`, `pedidoInicialOutraQual`, `NISS`, `numeroIdentificacao`, `tipoDocumentoIdentificacao`, `codPostal`, `nrCartaConducao`, `validadeDocumentoIdentificacao`, `emissaoCartaConducao`) VALUES
(351, 'Paulo Sérgio dos Santos Guardado Pereira', '1993-09-11', '2014-11-19 00:00:00', 2, 8, 4, 263679071, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 934013362, 0, 0, 'pspwdp@hotmail.com', 'S. Francisco Xavier', 'Portuguesa', 0, '', '2014-11-19 -  Jovem empreendedor. Presidente associação dos jovens da Fonte da Prata e também faz parte da comissão de moradores da Fonte da Prata.\r\nInteresse numa sessão sobre empreendedorismo para a associação dos jovens da Fonte da Prata. Fazer encaminhamentos para atendimentos individuais na procura activa de emprego, no espaço CLDS Moita. \r\n\r\n2014-12-02 - Informação ao Paulo da previsão para as duas sessões de empreendedorismo para Março de 2015. \r\n ', 22, 22, 0, -1, -1, -1, -1, -1, 0, 1, 'Rua Soeiro Pereira Gomes, Bloco M Cave N.º 4, 2860-275, Fonte da Prata', '351.pdf', -1, -1, '', 1, '', -1, '19218121', 3, '', '', '0000-00-00', '0000-00-00'),
(352, 'Joaninha da Silva Casaco', '1969-11-07', '2014-11-17 00:00:00', 2, 10, 2, 209427850, 1, 0, 0, 0, '', 0, 0, 0, -1, 35, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 967225737, 0, 0, 'sidnay29@hotmail.com', '', 'Guineense', 0, '', '2014-11-17 - Pesquisa de ofertas de trabalho. Enviar por e-mail as ofertas de trabalho diárias. Entrega de listagem de empresas de trabalho temporário.\r\n\r\n2014-11-19 - Construção do curriculum vitae. Resposta a ofertas de trabalho.\r\n', 22, 22, 0, -1, -1, -1, -1, -1, 0, 1, 'Rua do Sobreiro N.º 44, Vale da Amoreira, 2800-135 Vale da Amoreira', '352.pdf', 1, -1, '', -1, '', -1, '15739966', 3, '', '', '0000-00-00', '0000-00-00'),
(353, 'Donzília Paisana S. da Cruz', '1967-02-10', '2014-10-08 22:00:00', 2, 5, 5, 191795577, -1, 0, 0, 0, 'Atendimento ao público', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 963993410, 0, 0, 'dunac10fev@hotmail.com', '', 'Portuguesa', 0, '', '2014-11-14 - Construção do C.V.\r\nEntrega de listagem de empresas de trabalho temporário. Encaminhamento diário de ofertas de trabalho temporário. Pesquisa de ofertas de trabalho. ', 22, 22, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua João de Almeida, N.º 9, 3.º Esq.º, 2860-013 Alhos Vedros', '353.pdf', 1, -1, '', -1, '', -1, '7856450', 3, '', '', '0000-00-00', '0000-00-00'),
(354, 'Eunice Catarina Guerreiro Bernardino', '1974-05-14', '2014-04-28 22:00:00', 1, 4, 4, 201669862, -1, -1, -1, -1, 'Assistente Administrativa', -1, -1, 0, 2, 41, -1, -1, '', -1, '', 5, 1, 1, -1, '', -1, -1, '', -1, 962827456, -1, -1, '', '', '', 1, '', '', 18, 24, -1, -1, 41, 35, 39, 0, -1, 2, 'SANTO ANTÓNIO DA CHARNECA', '354.pdf', 1, -1, '', -1, '', -1, '10302772', 3, '', '', '0000-00-00', '0000-00-00'),
(356, 'Mafalda Sofia Fernandes Lopes', '1984-11-29', '2014-08-05 22:00:00', 2, 5, 4, 237500868, 2, 0, 0, 0, 'Empregada de balcão', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 924306047, 0, 0, 'mafaldalopes29@hotmail.com', 'Lisboa', 'Portuguesa', 1, '', '2014-11-18 - Exp. prof.: unhas de gel (3 anos), massagista; maquilhagem de noivas (3 anos), decoradora de eventos (+/- 1 ano), gerente hotelaria, empregada de balcão e supervisora de limpezas.  \r\nCriação de novo e-mail. Registo no site do IEFP. Pesquisas e resposta a ofertas de trabalho. Encaminhamento de ofertas de trabalho, via e-mail.  Envio de e-mail com site do IEFP. Envio de listagem de empresas de trabalho temporário.\r\n\r\n2014-11-25 - Apoio na construção do C.V. ', 22, 22, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Soeiro Pereira Gomes Bloco M, N.º 52, 3, 2860-275 Fonte da Prata', '356.pdf', 1, -1, '', -1, '', -1, '13207212', 3, '', '', '0000-00-00', '0000-00-00'),
(357, 'Vera Cristina Dias Da Silva', '1974-06-01', '2014-12-11 00:00:00', 1, 1, 4, 208484540, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 5, 1, 1, 1, 'CEI + na Junta de freguesia de santo andré', 0, 0, '', 0, 925681768, 0, 0, '', '', 'Portuguesa', 1, '', 'Tem formação de 50 h em geriatria', 10, 13, 0, -1, 35, -1, -1, -1, 1, 1, 'Rua Rodrigues Da Conceição bloc 1 , LT 1, 1º dirt 2830-000 Barreiro', '357.pdf', 1, -1, '', -1, '', -1, '10908982', 3, '', '', '0000-00-00', '0000-00-00'),
(358, 'Mónica Isabel Santos Pita Barrancos', '1976-11-08', '2014-12-11 00:00:00', 1, 1, 6, 202010830, -1, 0, 0, 0, 'Técnica de Farmácia', 0, 0, 0, 1, 40, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 912520710, 0, 0, '', '', 'Portuguesa', 0, '', '', 3, 18, 0, -1, 40, 41, 16, 0, 0, 1, '', '358.pdf', 1, -1, '', -1, '', -1, '11040611', 3, '', '', '0000-00-00', '0000-00-00'),
(359, 'Umblina Maria Moreira Gonçalves', '1962-01-25', '2014-12-11 00:00:00', 1, 1, 2, 146550773, 4, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 6, 1, 1, 0, '', 0, 1, 'Auxiliar de educação ', 0, 96685967, 210807133, 0, '', '', 'Portuguesa', 1, '', 'Encontra-se em estágio no CAI - Bairro das Palmeiras para completar a formação que fez em auxiliar de ação educativa . ', 10, 13, 0, -1, 15, -1, -1, -1, 1, 1, 'Rua José Dias Coelho blc 1, nº4 , 3º esqd 2830-000 Barreiro', '359.pdf', 1, -1, '', -1, '', -1, '7039173', 3, '', '', '0000-00-00', '0000-00-00'),
(360, 'Carlos Alberto Mendes Nunes', '1962-09-05', '2014-12-11 00:00:00', 1, 1, 4, 165595299, 1, 0, 0, 0, '', 0, 0, 0, 2, 10, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 963509769, 963509769, 0, '', '', 'Portuguesa', 0, '', '', 10, 13, 0, -1, 10, -1, -1, 0, 0, 1, 'Praceta dos Corticeiros nº 2 2830-000 barreiro', '360.pdf', 1, -1, '', -1, '', -1, '6288738', 3, '', '', '0000-00-00', '0000-00-00'),
(361, 'Luís Carlos Guerreiro Madeira', '0000-00-00', '2014-12-11 00:00:00', 1, 1, 3, 205969437, 2, 0, 0, 0, 'Calceteiro', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 934986808, 0, 0, '', 'barreiro', 'Portuguesa', 1, '', 'experiência na construção civil ,como ladrilhador, servente e calceteiro.', 10, 13, 1, 4, 11, -1, -1, 0, 0, 1, 'Bairro Oliveira nº 5 Qtª das Gateiras', '361.pdf', 1, -1, '', -1, '', -1, '10541585', 3, '', '', '0000-00-00', '0000-00-00'),
(362, 'Daniela Alexandra Cardoso Amaro', '2014-12-11', '2014-12-11 00:00:00', 2, 10, 4, 253606152, 1, 0, 0, 0, '', 1, 0, 0, 1, 8, 0, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 969035531, 0, 0, '', '', 'Portuguesa', 1, '', '', 2, 14, 0, -1, 24, -1, -1, 0, 0, 1, 'Av.ª Almada Negreiros, lt. 17, r/c esqº', '362.pdf', 1, -1, '', -1, '', -1, '14710224', 3, '', '', '0000-00-00', '0000-00-00'),
(363, 'Paula Cristina Gonçalves Ferreira', '1961-08-26', '2014-12-11 00:00:00', 1, 2, 2, 187104263, 4, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 927715528, 0, 0, '', '', 'Portuguesa', 1, '', 'ajudante de cozinha', 10, 13, 1, 4, 39, -1, -1, 0, 0, 1, 'Rua Torre De Manique  nº3 , 2º dirt  2830-517 Barreiro', '363.pdf', 1, -1, '', -1, '', -1, '9956658', 3, '', '', '0000-00-00', '0000-00-00'),
(364, 'Mário Igor Vaz Pinho De Oliveira', '1984-03-20', '2014-12-11 00:00:00', 1, 3, 2, 225091240, 1, 0, 0, 0, '', 0, 0, 0, 2, 24, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 926410855, 0, 0, '', '', 'Portuguesa', 1, '', 'copa hotelaria ', 10, 13, 0, -1, 24, -1, -1, 0, 0, 1, 'Rua 1º de Maio  vivenda Inácio 2830-430 Coina', '364.pdf', 1, -1, '', -1, '', -1, '13301979', 3, '', '', '0000-00-00', '0000-00-00'),
(365, 'Eliana Jesus Martins Moreira Pinheiro', '1982-07-28', '2014-12-11 00:00:00', 1, 3, 5, 235138835, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 967933138, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 1, 4, 41, 36, -1, 0, 0, 1, 'Rua FazendeirosSN Qtª Prazeres 2830-480 Coina', '365.pdf', 1, -1, '', -1, '', -1, '11763932', 3, '', '', '0000-00-00', '0000-00-00'),
(366, 'Maria Teresa Martins Moreira Pinheiro', '1948-07-07', '2014-12-11 00:00:00', 1, 3, -1, 138137250, 2, 0, 0, 0, '', 0, 0, 0, 2, 4, 1, 0, '', 0, '', 8, 1, 1, 0, '', 0, 0, '', 0, 919247962, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 1, 4, 4, 8, -1, 0, 0, 1, 'Rua FazendeirosSN Qtª Prazeres 2830-480 Coina', '366.pdf', 1, -1, '', -1, '', -1, '604853', 3, '', '', '0000-00-00', '0000-00-00'),
(367, 'José António Fernandes', '1972-08-03', '2014-12-11 00:00:00', 1, 3, 2, 210051841, 2, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 964759491, 0, 0, '', '', 'Portuguesa', 1, '', 'pedreiro', 10, 13, 0, -1, 11, -1, -1, 0, 0, 1, '', '367.pdf', 1, -1, '', -1, '', -1, '10973630', 3, '', '', '0000-00-00', '0000-00-00'),
(368, 'Dunda Caetano Có', '2014-12-11', '2014-12-11 00:00:00', 2, 10, 1, 222267534, 1, 0, 0, 0, '', 1, 0, 0, 1, 35, 0, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 926171515, 0, 0, '', 'Guiné-Bissau', 'Guineense', 1, '1494601', 'A Sra. já teve vários trabalhos na área das Limpezas', 2, 14, 0, -1, 35, -1, -1, 0, 0, 1, 'Avª Almada Negreiros, lt 44, 2º dtº', '368.pdf', 1, -1, '', -1, '', -1, '8337VX866', 1, '', '', '0000-00-00', '0000-00-00'),
(369, 'David Manuel da Silva Ramires', '0000-00-00', '2014-12-11 00:00:00', 1, 1, 5, 186101538, 1, 0, 0, 0, 'Especialista de linha/reparador ', 0, 0, 0, 1, 19, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 919172376, 0, 0, '', '', 'Portuguesa', 1, '1846740', 'Formação em Maquinação e CNC ; Técnico de Eletrónica Industrial ; Curso Técnico especialista de redes de internet e informática \r\n', 3, 18, 1, 4, 19, -1, -1, 0, 0, 1, '', '369.pdf', 1, -1, '', -1, '', -1, '9887593', 3, '', '', '0000-00-00', '0000-00-00'),
(370, 'Virginia Maria Amaral Coelho', '0000-00-00', '2014-12-11 00:00:00', 1, -1, 1, 216044065, -1, 0, 0, 0, 'Cantoneira', 0, 0, 0, 1, 35, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 917697349, 0, 0, '', '', 'Portuguesa', 0, '', '', 3, 18, 0, -1, 35, 24, -1, 0, 0, 1, '', '370.pdf', 1, -1, '', -1, '', -1, '12188793', 3, '', '', '0000-00-00', '0000-00-00'),
(371, 'Pedro António de Figueiredo Cabral', '0000-00-00', '2014-12-11 00:00:00', 1, 2, 3, 222970731, 5, 0, 0, 0, 'Pedreiro/Ladrilhador', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 968479099, 0, 0, '', '', 'Portuguesa', 1, '1386933', '', 3, 18, 0, -1, 11, -1, -1, 0, 0, 1, '', '371.pdf', 1, -1, '', -1, '', -1, '12195861', 3, '', '', '0000-00-00', '0000-00-00'),
(372, 'Elisabete Maria França Silva Gavino Lopes', '2014-12-11', '2014-12-11 00:00:00', 2, 10, 5, 230517285, 2, 0, 0, 0, '', 1, 0, 0, 2, 8, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 964841029, 0, 0, '', 'Portuguesa', 'Portuguesa', 1, '1792064', 'Informa-se que a Sra. possui certificado de Formação Profissional em Auxiliares de Ação Educativa (nível 3), Formação Modelar em Tecnologia dos materiais  (50 horas), Certificação profissional em Técnico de Vitrinismo (nível 4)', 2, 14, 1, 4, 24, -1, -1, 0, 0, 1, 'Av.ª Diogo Cão, n.º 8, 3º A', '372.pdf', 1, -1, '', -1, '', -1, '12315770', 3, '', '', '0000-00-00', '0000-00-00'),
(373, 'Olga Maria dos Santos Costa Gonçalves', '1973-04-28', '2014-12-11 00:00:00', 1, 4, 2, 228053382, 2, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 933383046, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 36, 24, 1, 0, 0, 1, 'Azinhaga da Partilha dos 2 Concelhos - Quinta da Pedra - 2835 - 541 Santo António da Charneca', '373.pdf', 1, -1, '', -1, '', -1, '12159968', 3, '', '', '0000-00-00', '0000-00-00'),
(374, 'Adão Jorge Costa Gonçalves', '1972-11-19', '2014-12-11 00:00:00', 1, 4, 2, 190646284, 2, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 936943325, 0, 0, '', 'Vila Pouca de Aguiar', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 11, 10, 11, 0, 0, 1, 'Azinhaga da Partilha dos 2 Concelhos - Quinta da Pedra - 2835 - 541 Santo António da Charneca', '374.pdf', 1, -1, '', -1, '', -1, '10923839', 3, '', '', '0000-00-00', '0000-00-00'),
(375, 'Elisabete Vera Fonseca Canoa', '1980-08-07', '2014-12-11 00:00:00', 1, 4, 1, 222145846, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', 'A utente pretende inserção em CEI+nas escolas.', 10, 13, 0, -1, 35, -1, -1, 0, 0, 1, 'Rua 13 Quinta da Mina Nº 17 3º Dto. 2835-492', '375.pdf', 1, 1, 'Competências básicas', -1, '', -1, '13104693', 3, '', '', '0000-00-00', '0000-00-00'),
(376, 'joão Francisco Domingues Carapeta', '1971-08-11', '2014-12-11 00:00:00', 1, 4, 2, 198047711, 1, 0, 0, 0, '', 0, 0, 0, -1, 11, 0, 0, '', 0, '', 5, 1, 2, 1, 'Integrado em CEI+', 0, 0, '', 0, 926384568, 0, 0, '', '', 'Portuguesa', 1, '', 'Está integrado em CEI+ e tem experiência na área da Construção Civil, pois tem experiência na mesma.\r\nPretende melhorar a sua qualificação escolar.', 10, 13, 0, -1, 11, -1, -1, -1, 1, 1, 'Rua Albertino Urbano 2835-616', '376.pdf', 1, 1, 'Logística', -1, '', -1, '11401755', 3, '', '', '0000-00-00', '0000-00-00'),
(377, 'Alcides Sabino Garcia Lopes', '1955-02-06', '2014-12-11 00:00:00', 1, 4, 2, 118621497, 2, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 964681378, 0, 0, '', '', 'Portuguesa', 1, '3708551', 'O sr. Alcides sempre exerceu a profissão de gruista.', 10, 13, 1, -1, 11, 10, 1, 0, 0, 1, 'Rua 1 de Maio - Vivenda Guerreiro - 2835 - 402 Penalva', '377.pdf', 1, -1, '', -1, '', -1, '6726537', 3, '', '', '0000-00-00', '0000-00-00'),
(378, 'Maria do Carmo Gramacho Correia Brás Rebocho', '1967-08-09', '2014-12-11 00:00:00', 1, 4, 4, 186223676, 1, 0, 0, 0, '', 0, 0, 0, 2, 45, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 963548966, 0, 0, '', 'Vendas Novas', 'Portuguesa', 1, '1783133', '', 10, 13, 1, -1, 45, 41, 12, 0, 0, 1, 'Rua 3 Lote 32 - 8 B - 2835 - 508 Cidade Sol', '378.pdf', 1, -1, '', -1, '', -1, '7657128', 3, '', '', '0000-00-00', '0000-00-00'),
(379, 'Rogério Osvaldo Marques Lopes', '1973-04-01', '2014-12-11 00:00:00', 1, 4, 4, 186155751, 1, 0, 0, 0, 'Manobrador de Pontes rolantes', 0, 0, 0, 2, 43, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 963810770, 0, 0, '', '', 'Portuguesa', 1, '', 'O utente tem experiência como Manobrador de Pontes Rolantes e na área da Logística e pretende ser inserido nesta área.', 10, 13, 0, -1, 43, 45, -1, 0, 0, 1, 'Rua Gago Coutinho, nº 51, 2835-720 ', '379.pdf', 1, -1, '', -1, '', -1, '10096678', 3, '', '', '0000-00-00', '0000-00-00'),
(380, 'José Rosa da Silva Coutinho', '1963-06-12', '2014-12-11 00:00:00', 1, 4, 4, 104082402, 4, 0, 0, 0, 'Marceneiro', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 913537631, 0, 0, 'jorosilco@live.com.pt', 'Camarate - Loures', 'Portuguesa', 1, '3879775', '', 10, 13, 1, 4, 8, 35, 26, 0, 0, 1, 'Rua Vasco da Gama - Quinta do Mudo nº2 - 2835 - 622 Penalva', '380.pdf', 1, -1, '', -1, '', -1, '6585121', 3, '', '', '0000-00-00', '0000-00-00'),
(381, 'José da Silva Ferreira', '1962-07-05', '2014-12-11 00:00:00', 1, 4, 4, 178811599, 1, 0, 0, 0, 'Segurança', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 963467222, 0, 0, '', 'Angola', 'Portuguesa', 1, '1855394', '', 10, 13, 1, -1, 45, 26, 11, 0, 0, 1, 'Rua 6 Centro Comercial n.º 2, lote 34 - 6ºA - 2835 Cidade Sol', '381.pdf', -1, -1, '', -1, '', -1, '10093967', 3, '', '', '0000-00-00', '0000-00-00'),
(382, 'Dália Duarte Rodrigues', '1982-12-07', '2014-12-11 00:00:00', 1, 4, 2, 224553089, 1, 0, 0, 0, 'Confecção de bolos em residência própria', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 937323063, 0, 0, '', '', 'Portuguesa', 1, '', 'Em relação às escolhas profissionais, a utente tem como preferência ser inserida numa Junta num CEI+ ou na área da culinária na Confecção de bolos.', 10, 13, 0, -1, 35, 26, -1, 0, 0, 1, 'Rua 10, lote 59, r/c C 2835-504', '382.pdf', 1, 1, 'Área da Culinária/Auxiliar de Educação', -1, '', -1, '12237018', 3, '', '', '0000-00-00', '0000-00-00'),
(383, 'Luis Filipe Andrade Odorico', '1987-12-08', '2014-12-11 00:00:00', 1, 4, 2, 246534451, 1, 0, 0, 0, '', 0, 0, 0, 2, 1, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 936400116, 0, 0, '', '', 'Portuguesa', 1, '3638741', '', 10, 13, 1, -1, 1, 45, 19, 0, 0, 1, 'Rua 13 da Quinta da Mina n.º 11 - 4º Esquerdo - 2835-492 Santo António da Charneca', '383.pdf', 1, -1, '', -1, '', -1, '14587610', 3, '', '', '0000-00-00', '0000-00-00'),
(384, 'Sandra Filipa dos Santos Vitorino', '1992-05-01', '2014-12-11 00:00:00', 1, 4, 3, 272660671, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '4716878', 'A D. Sandra não tem experiência profissional.', 10, 13, 0, -1, 26, 15, 35, 0, 0, 1, 'Rua 13 da Quinta da Mina lote 13 - 3º - 2835-507 Cidade Sol', '384.pdf', 1, -1, '', -1, '', -1, '14923899', 3, '', '', '0000-00-00', '0000-00-00'),
(385, 'Pedro Miguel Cabeças Azul', '1992-12-07', '2014-12-11 00:00:00', 1, 4, 1, 223949515, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '4716750', 'O sr. Pedro não tem experiência profissional.', 10, 13, 1, 4, 45, 19, 10, 0, 0, 1, 'Rua 13 da Quinta da Mina lote 13 - 3º - 2835-507 Cidade Sol', '385.pdf', 1, -1, '', -1, '', -1, '30523837', 3, '', '', '0000-00-00', '0000-00-00'),
(386, 'Anastácia de Assunção Terra', '1967-06-12', '2014-12-11 00:00:00', 1, 4, 3, 199721386, 2, 0, 0, 0, 'Funcionária Lavandaria', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 965513867, 0, 0, '', 'São Tomé', 'São tomé', 1, '', 'A Dª Anastácia tem experiência na área de lavandaria e esta é a sua prioridade de inserção profissional, seguidamente da área de ajudante de cozinha.', 10, 13, 0, -1, 36, 39, -1, 0, 0, 1, 'Rua 8, lote 42, r/c C 2835 508', '386.pdf', 1, -1, '', -1, '', -1, '329V6352W', 1, '', '', '0000-00-00', '0000-00-00'),
(387, 'Lurdes Maria Costa Castro Manuel', '1972-01-05', '2014-12-11 00:00:00', 1, 4, 5, 233695141, 2, 0, 0, 1, 'Auxiliar de Limpeza', 0, 0, 35, -1, 35, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 962340024, 0, 0, '', 'Angola', 'Portuguesa', 1, '', 'A Dª Lurdes Castro Manuel está inserida como empregada de limpeza numa Instituição, a realizar um part-time das 18h às 22h00, de 2ª f a 6ªf.\r\nNo entanto tem o curso de auxilar de educação e pretende  inserir-se nesta área ou arranjar um trabalho na área das limpezas que complemente o seu horário.', 10, 13, 1, 4, 15, 35, -1, 1, 0, 1, 'Rua 9, lote 69, 1ºA 2835-514', '387.pdf', 1, -1, '', -1, '', -1, '30374466', 3, '', '', '0000-00-00', '0000-00-00'),
(388, 'João Manuel Encarnação Azul', '1995-10-22', '2014-12-12 00:00:00', 1, 4, 2, 224159127, 1, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 2, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '2606759', '', 10, 13, 0, -1, 13, 45, 8, 0, 0, 1, 'Rua 13 da Quinta da Mina Lote 17 - 2º Esquerdo - Cidade Sol', '388.pdf', 1, -1, '', -1, '', -1, '15186393', 3, '', '', '0000-00-00', '0000-00-00'),
(389, 'Francisco Eduardo Rosário Oliveira Colimão', '1966-10-07', '2014-12-12 00:00:00', 1, 4, 1, 175195005, 1, 0, 0, 0, 'Cantoneiro', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 962654835, 0, 0, '', 'India (Antigo Estado da India)', 'Portuguesa', 1, '103872', 'O sr. Francisco sempre trabalhou na manutenção de estores, sendo esta a primeira escolha do mesmo.', 10, 13, 0, -1, 10, 11, 1, 0, 0, 1, 'Rua 6 Centro Comercial 1 lote 5 - 2835-511 Cidade Sol', '389.pdf', 1, -1, '', -1, '', -1, '8663545', 3, '', '', '0000-00-00', '0000-00-00'),
(390, 'Paulo Jorge Nunes Nascimento', '1970-11-10', '2014-12-12 00:00:00', 1, 4, 3, 187993637, 4, 0, 0, 0, 'Distribuidor de Mercadorias', 0, 0, 0, 2, 45, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 926355657, 0, 0, '', 'Moçambique', 'Portuguesa', 1, '', 'O Sr. Paulo em relação à sua escolha profissional, em primeiro lugar, pretende ser inserido como Distribuidor de Mercadorias e em 2º lugar pretende trabalho no que se refere a lavagem e preparação de automóveis. Neste momento encontra-se inserido numa formação de curta duração de Técnicas de Higiene e Segurança no Trabalho.', 10, 13, 1, 4, 45, -1, -1, 0, 0, 1, 'Largo Soeiro Pereira Gomes nº 10 2835- 705', '390.pdf', 1, 1, 'Área da Logística', -1, '', -1, '9586130', 3, '', '', '0000-00-00', '0000-00-00'),
(391, 'José Luis Pereira de Jesus', '1977-04-10', '2014-12-12 00:00:00', 1, 4, 4, 214807339, 1, 0, 0, 0, 'Destruição de resíduos', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 965014306, 0, 0, '', 'Ponte Sor - Portalegre', 'Portuguesa', 1, '', '', 10, 13, 1, -1, 45, 11, 1, 0, 0, 1, 'Rua 13 da Quinta da Mina lote 3 - 3º Direito 2835-502 Cidade Sol', '391.pdf', 1, -1, '', -1, '', -1, '12541709', 3, '', '', '0000-00-00', '0000-00-00'),
(392, 'Andreia Sofia da Silva Gouveia', '1982-07-27', '2014-12-12 00:00:00', 1, 4, 3, 225941015, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', 'Curso de Informática\r\nConhecimentos em Espanhol e Francês', 10, 13, 0, -1, 36, 35, 37, 0, 0, 1, 'Rua das Beiras nº 44 - 2º Esquerdo 2835-752 Vila Chã', '392.pdf', 1, -1, '', -1, '', -1, '12098241', 3, '', '', '0000-00-00', '0000-00-00'),
(393, 'Carlos Gonçalo Pereira Ferreira', '2014-12-12', '2014-12-12 00:00:00', 2, 10, 5, 251411478, 1, 0, 0, 0, 'Curso Tecnológico de Desporto', 0, 0, 0, 1, 13, 1, 0, '', 0, '', 2, 1, 2, 0, '', 0, 0, '', 0, 2147483647, 0, 0, 'Karloxferreira_17@hotmail.com', '', '', 1, '', '', 1, 19, 1, 4, 13, -1, -1, 0, 0, 1, 'Rua 8 de Março nº13 r/c dto Fontainhas', '393.pdf', 1, -1, '', -1, '', -1, '14493370', 3, '', '', '0000-00-00', '0000-00-00'),
(394, 'Agostinho da Silva', '1962-08-15', '2014-12-12 10:29:33', 2, 10, 2, NULL, -1, 0, 0, 0, 'Fiel de Armazém, Op. Const. Civil, Empilhador,', 0, 0, 0, 2, 26, 1, 0, '', 0, '', -1, 1, 2, 0, '', 0, 0, '', 0, 920233679, 0, 0, '', '', '', 1, '', 'Atletismo', 1, 19, 0, -1, 26, 11, 13, 0, 0, 1, 'Avenida 1º de Maio, Lote 32, 1º Esq. - 2835-201 ', '394.pdf', -1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(395, 'Ana Raquel Santos Páscoa', '0000-00-00', '2014-12-12 10:39:44', 2, 6, 2, NULL, -1, 0, 0, 0, 'Empregada de Balcão', 0, 0, 0, 2, 39, 1, 0, '', 0, '', -1, -1, 1, 0, '', 0, 0, '', 0, 920233679, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 39, -1, -1, 0, 0, 1, 'Avenida Capitães de Abril, nº 28, 2º Esq. - 2835-022 Baixa da Banheira', '395.pdf', -1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(396, 'Paulo Sousa Violante', '1978-06-26', '2014-12-12 00:00:00', 1, 1, 3, 216706840, 2, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', 'Sto André Barreiro', 'Portuguessa', 1, '', '', 10, 13, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Resistencia ao Fascismo B.25 de Abril nº1,R/CH Dtº 2830-122', '396.pdf', 1, -1, '', -1, '', -1, '11502240', 3, '', '', '0000-00-00', '0000-00-00'),
(397, 'António José Fernandes Cabeça Caramelo', '2014-12-12', '2014-12-12 00:00:00', 2, 6, 3, NULL, 2, 0, 0, 0, 'Feirante', 0, 0, 0, 1, 8, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 936547188, 0, 0, '', '', '', 1, '', 'Feirante em feiras', 1, 19, 1, 4, 8, -1, -1, 0, 0, 1, 'Rua da Juventude nº5, 2º esq', '397.pdf', -1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(398, 'Miguel Ângelo Petinga Oliveira ', '1993-02-07', '2014-12-12 00:00:00', 1, 1, 4, 264524195, 5, 0, 0, 0, 'Jardineiro', 1, 0, 0, 2, 1, 0, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 915980570, 0, 0, '', '', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 1, 26, 36, 0, 0, 1, '', '398.pdf', 1, -1, '', -1, '', -1, '14870868', 3, '', '', '0000-00-00', '0000-00-00'),
(399, 'Maria João Madrugo D. das Neves', '1969-08-22', '2014-12-12 00:00:00', 1, 4, 2, 188088172, 4, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 931733186, 0, 0, '', '', 'Portuguesa', 1, '', 'Finalizou um Curso de Lavandaria (IEFP)', 10, 13, 0, -1, 36, 35, 26, 0, 0, 1, 'Rua 13 da Quinta da Mina lote 21 - 2.º Esquerdo 2835 Cidade Sol', '399.pdf', 1, -1, '', -1, '', -1, '9667946', 3, '', '', '0000-00-00', '0000-00-00'),
(400, 'Angelina Borges Dias', '0000-00-00', '2014-12-12 10:49:47', 2, 6, 2, NULL, -1, 0, 0, 0, 'Ajudante de Cozinha', 0, 0, 0, 2, 39, 1, 0, '', 0, '', -1, -1, 1, 0, '', 0, 0, '', 0, 961143864, 0, 0, '', '', '', 1, '', '', 1, 19, 0, -1, 35, 39, -1, 0, 0, 1, 'Rua Presidente Bernardino machado, Bloco E1, 3º Esq. - 2835-146 Baixa da Banheira', '400.pdf', -1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(401, 'Lucinda Maria Oliveira Nunes', '1963-02-28', '2014-12-12 00:00:00', 1, 3, 4, 168402467, 4, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 964919200, 0, 0, '', '', '', 1, '', 'Ajudante Familiar', 10, 13, 1, -1, -1, -1, -1, 0, 0, 1, 'Rua Bartolomeu Dias nº27 R/CH 2830-414', '401.pdf', 1, -1, '', -1, '', -1, '7251573', 3, '', '', '0000-00-00', '0000-00-00'),
(402, 'Carlos Manuel Brites Coelho', '2014-12-12', '2014-12-12 00:00:00', 2, 6, 3, NULL, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 963959856, 0, 0, '', '', '', 1, '', 'Carpintaria; Curso Empregado de Mesa; Curso de limpezas Industriais; Pintor; Ajudante de Electricista; Serralheiro ', 1, 19, 0, -1, 24, 26, 11, -1, 0, 1, 'Praceta Fernão Lopes nº 3 - 1º esq', '402.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(403, 'Eugénia Maria Neves David Ramos', '1967-06-06', '2014-12-12 00:00:00', 1, 4, 5, 195582110, 2, 0, 0, 0, 'Empregada de escritório', 0, 0, 0, 2, 41, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 913554763, 0, 0, '', 'Cabo Verde', 'Portuguesa', 1, '', '', 10, 13, 1, -1, 41, 5, 15, 0, 0, 1, 'Rua do Alentejo n.º 33 - 5º Direito 2835-756 Cidade Sol', '403.pdf', 1, -1, '', -1, '', -1, '10967115', 3, '', '', '0000-00-00', '0000-00-00'),
(404, 'António Francisco Martins Colaço', '0000-00-00', '2014-12-12 10:53:43', 2, 6, 4, NULL, -1, 0, 0, 0, 'Segurança', 0, 0, 0, 2, -1, 1, 0, '', 0, '', -1, -1, 2, 0, '', 0, 0, '', 0, 961510285, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, -1, -1, -1, 0, 0, 1, 'Estrada Nacional 11, nº 205 A, 3º Dto. - 2835-175 Baixa da Banheira    ', '404.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(405, 'Duarte Manuel Severino Moreira', '1961-02-20', '2014-12-12 00:00:00', 1, 4, 1, 117423050, 4, 0, 0, 0, 'Manipulador de Pescado', 0, 0, 0, 2, 1, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 964770390, 0, 0, '', 'Alcantara - Lisboa', 'Portuguesa', 1, '1883412', '', 10, 13, 0, -1, 26, 11, 1, 0, 0, 1, 'Rua 9, Lote 51 - R/C A - 2835 - 514 Cidade Sol', '405.pdf', 1, -1, '', -1, '', -1, '6567441', 3, '', '', '0000-00-00', '0000-00-00'),
(406, 'António Manuel Coelho Silvano', '0000-00-00', '2014-12-12 10:58:51', 2, 6, 5, NULL, -1, 0, 0, 0, 'Tecnico de eletricidade, distribuidor  e op. De linha', 0, 0, 0, 2, 43, 1, 0, '', 0, '', -1, -1, 2, 0, '', 0, 0, '', 0, 934857136, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, -1, 43, 26, -1, 0, 0, 1, 'Rua de Moçambique nº 65, 2º Dto. - 2835-096 Baixa da Banheira', '406.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(407, 'Arlindo Afonso Cabeça Caramelo', '0000-00-00', '2014-12-12 11:06:21', 2, 6, 2, NULL, -1, 0, 0, 0, 'Venda Ambulante', 0, 0, 0, 2, 8, 1, 0, '', 0, '', -1, -1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 8, -1, -1, 0, 0, 1, 'Rua São Tomé e Principe nº 85 Casa 1 - 2835 Baixa da Banheira', '407.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(408, 'Paula Margarida Boto Rodrigues', '2014-12-12', '2014-12-12 00:00:00', 2, 6, 4, NULL, 4, 0, 0, 0, 'Vigilante escolar', 0, 0, 0, 1, 35, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 919732231, 966196212, 212025434, '', '', '', 1, '', '', 1, 19, 0, -1, 35, -1, -1, 0, 0, 1, 'Rua de Diu nº 29, 2º dto', '408.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(409, 'Miriam Vitureira  Mendes', '0000-00-00', '2014-12-12 11:09:02', 2, 6, -1, NULL, -1, 0, 0, 0, 'Domêstica e venda Ambulante', 0, 0, 0, 2, 8, 1, 0, '', 0, '', -1, -1, -1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', '', 1, '', '', 1, 19, 0, -1, 8, -1, -1, 0, 0, 1, 'Rua São Tomé e Principe nº 85 Casa 1 - 2835 Baixa da Banheira', '409.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(410, 'Carina Raquel Simões Neves', '2014-12-12', '2014-12-12 00:00:00', 2, 6, 4, NULL, 2, 0, 0, 0, '', 0, 0, 0, 1, 26, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 967097362, 0, 0, '', '', '', 1, '', 'Operária Fabril', 1, 19, 0, -1, 26, -1, -1, 0, 0, 1, 'Rua dos Açores nº 61 2º dto', '410.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(411, 'Paula Alexandra Móia Gomes Batista', '1969-01-20', '2014-12-12 00:00:00', 1, 4, 2, 215019946, 2, 0, 0, 0, 'Jardineira/Cantoneira ( CEI+)', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 938735834, 0, 0, '', 'Vila real de Sto. António', 'Portuguesa', 1, '', 'A Dª Paula Móia tem experiência ao nível de limpezas. Possui hábitos de trabalho e já teve integrada em CEI+( Contrato de Emprego e Inserção+) , na categoria de Cantoneira/Jardineira.', 10, 13, 0, -1, 35, -1, -1, 0, 0, 1, 'Qta. da Mina, lote 23, 2º dto, 2835-492 ', '411.pdf', 1, -1, '', -1, '', -1, '10220209', 3, '', '', '0000-00-00', '0000-00-00'),
(412, 'Humberto Ricardo Rodrigues Miranda Morais', '2014-12-12', '2014-12-12 00:00:00', 2, 6, 3, NULL, 2, 0, 0, 0, '', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 967097362, 0, 0, '', '', '', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua dos Açores nº 61 2º dto', '412.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(413, 'Avila Fernandes Montrond Andrade', '0000-00-00', '2014-12-12 11:12:42', 2, 6, 5, NULL, -1, 0, 0, 0, 'Manicura/Pedicura e empregada de lavandaria', 0, 0, 0, 2, 5, 1, 0, '', 0, '', -1, -1, 1, 0, '', 0, 0, '', 0, 963893391, 963781276, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 5, -1, -1, 0, 0, 1, 'Rua 18 de Janeiro, 2A, 2º DRT - 2835 Baixa da Banheira', '413.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(414, 'David Alexandre da Cruz Garcia', '2014-12-12', '2014-12-12 00:00:00', 2, 6, 3, NULL, 1, 0, 0, 0, 'Motorista Distribuição', 0, 0, 0, 1, 26, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 939946203, 0, 0, '', '', '', 1, '', '', 1, 19, 1, 4, 26, -1, -1, 0, 0, 1, 'Rua de Moçambique nº 20 - Q3', '414.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(415, 'Cátia Cristina Seabra Africano', '0000-00-00', '2014-12-12 11:21:54', 2, 6, 2, NULL, -1, 0, 0, 0, 'Nunca trabalhou', 0, 0, 0, 2, -1, 1, 0, '', 0, '', -1, -1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, -1, -1, -1, -1, 0, 0, 1, 'Rua da Liberdade nº 55 A, 2º Dto. - 2835-083 Baixa da Banheira', '415.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(416, 'Carmem Isabel Martins Andrade', '1984-07-09', '2014-12-12 00:00:00', 1, 4, 5, 233591702, 2, 0, 0, 0, 'Empregada de Mesa', 1, 0, 0, 2, 39, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 966413429, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '', 'A Dª Carmem completou o 12º ano através de um curso Profissional no IEFP de Setúbal de Técnica de Vendas.', 10, 13, 0, -1, 39, 36, -1, 0, 0, 1, 'Rua da Machada Vivenda Nabo 2835-556 Fonte do Feto', '416.pdf', 1, 1, 'Cabeleireiro', -1, '', -1, '12765168', 3, '', '', '0000-00-00', '0000-00-00'),
(417, 'Marco Aurélio de Sá Vargas', '0000-00-00', '2014-12-12 11:26:47', 2, 6, -1, NULL, -1, 0, 0, 0, 'Venda Ambulante', 0, 0, 0, 2, 8, 1, 0, '', 0, '', -1, -1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, -1, 8, -1, -1, 0, 0, 1, 'Rua da Liberdade nº 55 A, 2º Dto. - 2835-083 Baixa da Banheira', '417.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(418, 'Carla Cristina Ferreira Monteiro', '2014-12-12', '2014-12-12 00:00:00', 2, 6, 3, NULL, 2, 0, 0, 0, 'Ajudante de Cozinha', 0, 0, 0, 1, 39, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 968831680, 0, 0, '', '', '', 1, '', '', 1, 19, 0, -1, 39, 35, -1, 0, 0, 1, 'Rua São Tomé e Príncipe, nº 85, 2º dto', '418.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(419, 'Elisabete dos Santos Jacinto', '0000-00-00', '2014-12-12 11:31:11', 2, 6, 4, NULL, -1, 0, 0, 0, 'Socorrista, Emp. de Hotelaria, Ajudante de Lar, recepção e emp.  escritório', 0, 0, 0, 2, 40, 1, 0, '', 0, '', -1, -1, 1, 0, '', 0, 0, '', 0, 962508629, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 40, 38, -1, 0, 0, 1, 'Rua de Angola. nº 93, R/c - 2835-087 Baixa da Banheira', '419.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(420, 'Paulo Fernando Veríssimo Vieira', '2014-12-12', '2014-12-12 00:00:00', 2, 6, 3, NULL, 2, 0, 0, 0, 'Cargas e Descargas', 0, 0, 0, 1, 45, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 968831680, 0, 0, '', '', '', 1, '', 'Limpezas de Jardins; Construção Cívil; tranportador de cargas e descargas; Pedreiro ', 1, 19, 0, -1, 11, 10, 45, 0, 0, 1, 'Rua São Tomé e Príncipe, nº 85, 2º dto', '420.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(421, 'Felipa Elisabeth Brazão de Barros', '1981-11-03', '2014-12-12 00:00:00', 1, 4, 5, 230513999, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 966497673, 0, 0, '', 'Cabo Verde', 'Portuguesa', 1, '3009711', '', 10, 13, 0, -1, 36, 35, 8, 0, 0, 1, 'Rua 8 lote 39 - 1C - 2835-513 Cidade Sol', '421.pdf', 1, -1, '', -1, '', -1, '15177591', 3, '', '', '0000-00-00', '0000-00-00'),
(422, 'Fátima Maria de Oliveira Gomes da Cruz', '2014-12-12', '2014-12-12 00:00:00', 2, 6, 3, NULL, 1, 0, 0, 0, '', 0, 0, 0, -1, 35, 0, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 963657098, 0, 0, '', '', '', 1, '', 'Auxiliar de Ação Medica', 1, 19, 0, -1, 35, 40, -1, -1, 0, 1, 'Rua de Goa nº 8 , 2º dto', '422.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(423, 'Helga Caires Meca Alegria', '0000-00-00', '2014-12-12 11:39:30', 2, 6, 3, NULL, -1, 0, 0, 0, 'Auxiliar de Cozinha', 0, 0, 0, 2, 39, 1, 0, '', 0, '', -1, -1, 1, 0, '', 0, 0, '', 0, 924209239, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Eduardo Mondelane - nº5 - R/C - 2835-116 Baixa da Banheira', '423.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(424, 'Beatriz de Jesus Fernandes Lourenço', '1963-09-22', '2014-12-12 00:00:00', 1, 4, 1, 183493346, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 964583305, 0, 0, '', 'Fazendas de Almeirim', 'Portuguesa', 1, '', 'A Dª Beatriz Lourenço nunca teve um trabalho sólido. Somente realizou alguns biscates na apanha de fruta/ azeitona/ legumes e o seu principal interesse profissional vai de encontro a esta área.', 10, 13, 0, -1, 1, -1, -1, 0, 0, 1, 'Qta. da Mina, nº 3, 5º esq. 2835-504', '424.pdf', 1, -1, '', -1, '', -1, '10454059', 3, '', '', '0000-00-00', '0000-00-00'),
(425, 'Bubacar Seidi', '1988-12-12', '2014-12-11 00:00:00', 1, 4, 4, 262257297, -1, -1, -1, -1, 'PEDREIRO', -1, -1, 0, 1, 11, -1, -1, '', -1, '', 4, 1, 2, -1, '', -1, -1, '', -1, 960166480, -1, -1, '', '', '', -1, '', '- PEDREIRO (EXPERIÊNCIA DE 5 ANOS)\r\n- SERVENTE (EXPERIÊNCIA DE 7 ANOS)\r\n- AJUDANTE DE ELECTRICISTA (EXPERIÊNCIA DE 2 ANOS)', 18, 24, -1, -1, 11, -1, -1, 0, -1, 1, 'CIDADE SOL', '425.pdf', 1, 1, 'ELECTRICISTA', -1, '', -1, '3X4X45821', 1, '', '', '0000-00-00', '0000-00-00'),
(426, 'Sara Simone Silva Lima', '1993-09-21', '2014-12-12 00:00:00', 1, 4, 3, 253857970, 1, -1, -1, -1, '1ºEmprego', -1, -1, 0, 2, -1, 1, -1, '', -1, '', 3, 1, 1, -1, '', -1, -1, '', -1, 960025980, -1, -1, '', 'Cabo Verde', 'Portuguesa', 1, '4723626', 'A D. Sara está interessada e inscrita nos CEI +. ', 10, 13, -1, -1, 35, 36, 24, 0, -1, 1, 'Quinta da Marmelada n.º 17 - R/C - 2835 - 514 ', '426.pdf', 1, -1, '', -1, '', -1, '15995910', 3, '', '', '0000-00-00', '0000-00-00'),
(427, 'Nelson Monteiro Pires dos Santos', '1970-02-28', '2014-12-12 00:00:00', 1, 4, 3, 199879567, 1, 0, 0, 0, 'Pedreiro', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 961855644, 0, 0, '', 'S.Tomé', 'Portuguesa', 1, '1822059', '', 10, 13, 0, -1, 11, 1, 10, 0, 0, 1, 'Rua 6 Lote 33 - 4C - 2835-511 Cidade Sol', '427.pdf', 1, -1, '', -1, '', -1, '11522406', 3, '', '', '0000-00-00', '0000-00-00'),
(428, 'Fernanda de Jesus Fernandes lourenço', '1961-10-09', '2014-12-12 00:00:00', 1, 4, 1, 182905268, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', 'Fazendas de Almeirim', 'Portuguesa', 1, '', 'A Dª Fernanda Lourenço não tem experiência profissional. Foi sensibilizada para aumentar a sua escolaridade. Neste momento encontra-se a frequentar ação de formação de competências básicas.', 10, 13, 0, -1, -1, -1, -1, 0, 0, 1, 'Qta. da Mina , lote 1, 1º dto 2835-502', '428.pdf', 1, -1, '', -1, '', -1, '9730785', 4, '', '', '0000-00-00', '0000-00-00'),
(429, 'Jorge Manuel Correia Henriques', '1957-06-13', '2014-12-12 00:00:00', 2, 6, 4, NULL, 1, 0, 0, 0, 'Montagens de Via (CP)', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 968681040, 0, 0, '', '', '', 1, '', 'Montagem de Via (CP); Preparador de areias; Operador de rede das águas e de ETAR;\r\n', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua de Diu nº 45 r/c esq', '429.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(430, 'João Manuel de Jesus Geraldes', '0000-00-00', '2014-12-12 00:00:00', 2, 6, 2, NULL, 1, 0, 0, 0, '', 0, 0, 0, -1, 11, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 967014139, 0, 0, '', '', '', 1, '', '', 1, 19, 1, 4, 11, -1, -1, -1, 0, 1, 'Rua dos Açores nº9', '430.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(431, 'Paulo Jorge de Almeida e Cruz', '1966-04-20', '2014-11-04 00:00:00', 2, 8, 1, 179914405, -1, 0, 0, 0, 'Canalizador de 1.ª', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 911943004, 210820983, 0, '', 'Angola', 'Angolano', 0, '', '2014-11-07 - Exp. prof.: Canalizador de 1.ª, chefe de equipa.\r\nInteresse em formação nas área de serralharia e de soldadura.\r\nApoio na construção do C.V.', 22, 22, 1, -1, -1, -1, -1, -1, 0, 1, 'Rua da Paz, Lote 2, 1.º Esq.º 2860 - 447 Moita', '431.pdf', 1, 1, 'Soldador e Serralheiro', -1, '', -1, '07717914', 3, '', '', '0000-00-00', '0000-00-00'),
(432, 'Ismael Rafael Marques', '1993-11-05', '2014-12-12 00:00:00', 1, 4, 3, 266917577, 1, 0, 0, 0, '', 0, 0, 0, 2, 8, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 915184396, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 36, 8, 24, 0, 0, 1, 'Rua Henrique Andrade Evans n.º6 - 2835-722 Santo António da Charneca', '432.pdf', 1, -1, '', -1, '', -1, '15230900', 3, '', '', '0000-00-00', '0000-00-00'),
(433, 'Claudia Sofia Pereira da Silva', '0000-00-00', '2014-12-12 00:00:00', 2, 6, 1, NULL, 1, 0, 0, 0, 'Empregada de Balcão', 0, 0, 0, 1, 39, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 9395, 935609964, 0, '', '', '', 1, '', '', 1, 19, 0, -1, 39, -1, -1, 0, 0, 1, 'Rua São Tomé e Príncipe, nº 85, 1º dto', '433.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(434, 'Marília Batista Fernandes', '0000-00-00', '2014-12-12 00:00:00', 2, 10, 1, NULL, 1, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 934655576, 0, 0, '', '', '', 1, '', 'Nunca trabalhou', 1, 19, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Bordalo Pinheiro lote 32 r/c dto', '434.pdf', -1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(435, 'Ninte Cadi Tuiam', '1968-08-03', '2014-11-05 00:00:00', 2, 10, 1, 243368887, 3, 0, 0, 0, '', 0, 1, 0, 2, 35, 0, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 963728233, 0, 0, '', 'Guiné', 'Guineense', 0, '', '2014-11-05 - Exp. profissional na área da limpeza e procura emprego nesta área.\r\n\r\n2014-11-12 - Apoio na construção do C.V. e procura de ofertas de trabalho na área da limpeza.\r\n\r\n2014-11-13 - Entrega de listagem de empresas de trabalho temporário, procura e resposta de ofertas de trabalho na área da limpeza.', 22, 22, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Maria Helena Vera Silva, 2835 Vale da Amoreira', '435.pdf', 1, -1, '', -1, '', -1, '4LK846764', 1, '', '', '0000-00-00', '0000-00-00'),
(436, 'Luis Fernando Gonçalves', '1955-05-02', '2014-12-12 00:00:00', 1, 4, 2, 185517986, 1, 0, 0, 0, 'Ladrilhador', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 938640839, 0, 920169040, '', '', 'Portuguesa', 1, '3797758', '', 10, 13, 1, -1, 11, 45, 1, 0, 0, 1, 'Rua 8 lote 41 - 6A - 2835 - 513 Cidade Sol', '436.pdf', -1, -1, '', -1, '', -1, '6208368', 3, '', '', '0000-00-00', '0000-00-00'),
(437, 'Carlos Alberto do Carmos Correia', '0000-00-00', '2014-12-12 00:00:00', 2, 6, 2, NULL, 1, 0, 0, 0, '', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 962920383, 0, 0, '', '', '', 1, '', '', 1, 19, 1, 4, 11, -1, -1, 0, 0, 1, 'Rua José Dias Coelho nº 10 r/c dto', '437.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(438, 'Cátia Sofia de Oliveira Ferreira Baganha', '0000-00-00', '2014-12-12 00:00:00', 2, 6, 2, NULL, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', '', 1, '', 'Nunca Trabalhou', 1, 19, 0, -1, -1, -1, -1, -1, 0, 1, 'Rua dos Açores nº53 , 2º dto', '438.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(439, 'Hermenegilda Inês Swayla Fernandes da Silva', '1972-04-19', '2014-12-12 12:22:07', 2, 10, 3, NULL, -1, 0, 0, 0, 'Ajudante de refeitório, empregada domêstica', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 960336484, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 39, 35, -1, 0, 0, 1, 'Rua Garcia de Orta nº 4, R/c Dto. - 2835-251 Vale da Amoreira', '439.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(440, 'Cláudia Sofia dos Santos Costa', '1986-07-07', '2014-12-12 00:00:00', 1, 4, 2, 236953249, 1, 0, 0, 0, 'Operária fabril - Frutas, Chá, Patos e Flores', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 966736988, 0, 0, '', '', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 26, 36, 5, 0, 0, 1, 'Quinta do Gerardo - 2835 - 707 Santo António da Charneca', '440.pdf', 1, -1, '', -1, '', -1, '13591879', 3, '', '', '0000-00-00', '0000-00-00'),
(441, 'Maria Helena Ribeiro Rodrigues ', '1957-02-22', '2014-12-12 00:00:00', 1, 1, 4, 123220416, 4, 0, 0, 0, 'Secretária de Condominios', 0, 0, 0, 2, 41, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 914544080, 0, 0, '', '', 'Portuguesa ', 1, '', '', 3, 18, 1, 4, 41, 40, -1, 0, 0, 1, '', '441.pdf', 1, -1, '', -1, '', -1, '4919911', 3, '', '', '0000-00-00', '0000-00-00'),
(442, 'João Carlos Fernandes Rodrigues', '0000-00-00', '2014-12-12 00:00:00', 2, 10, 2, NULL, 2, 0, 0, 0, 'Servente', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 924388098, 0, 0, '', '', '', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Bordalo Pinheiro lote 4, 5º esq', '442.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(443, 'Jacob Adelino Kahombo', '1977-04-09', '2014-12-12 00:00:00', 1, 4, 4, 231914512, -1, 0, 0, 0, 'Ajudante de Pedreiro/Isolamento Térmico', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 963769658, 0, 0, '', '', 'Portuguesa', 1, '', 'O Sr. Jacob tirou o curso de Serralheiro Civil e pretende como primeira escolha esta área. Em segunda opção pretende a área de construção civil.', 10, 13, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua 9, lote 70, 4ºC 2835-514', '443.pdf', 1, -1, '', -1, '', -1, '31256588', 3, '', '', '0000-00-00', '0000-00-00'),
(444, 'Isabel Maria Barbosa Santos', '1979-01-13', '2014-12-12 12:29:17', 2, 10, 4, NULL, -1, 0, 0, 0, 'Op. Loja/Secretária/Manicura/Unhas de Gel', 0, 0, 0, 2, 8, 1, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 964234916, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, -1, 5, 8, -1, 0, 0, 1, 'Praceta Maria Luisa Soares, Lote 89, R/c Esq. - 2835-221 Vale da Amoreira', '444.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(445, 'Sandra Filipa Martins de Almeida Pinto', '0000-00-00', '2014-12-12 00:00:00', 2, 6, 3, NULL, 2, 0, 0, 0, '', 0, 0, 0, 1, 35, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 937414069, 0, 0, '', '', '', 1, '', 'Seca do Bacalhau; Limpezas; Auxiliar de lar (tomou conta de idosos)', 1, 19, 0, -1, 35, 26, -1, 0, 0, 1, 'Rua Bento Gonçalves nº13 2º dto', '445.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(446, 'Licinio Manuel Antunes Vaz da Silva', '0000-00-00', '2014-12-12 00:00:00', 2, 6, 3, NULL, 2, 0, 0, 0, 'Pedreiro', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 937414069, 0, 0, '', '', '', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Bento Gonçalves nº13 2º dto', '446.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(447, 'Ercília Maria Silva Salvador', '1972-01-15', '2014-12-12 00:00:00', 1, 2, 5, 197162134, 4, 0, 0, 0, 'Técnica de contabilidade ', 0, 0, 0, 1, 12, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 938637120, 0, 0, 'esalvadoralfaiate@gmail.com', '', 'Portuguesa ', 1, '', '', 3, 18, 1, 4, 12, 41, -1, 0, 0, 1, '', '447.pdf', 1, -1, '', -1, '', -1, '97994097', 3, '', '', '0000-00-00', '0000-00-00'),
(448, 'Francisco José Gamurça Serrano', '1975-06-25', '2014-12-12 00:00:00', 1, 4, 4, 211440302, 1, 0, 0, 0, 'Administrativo', 0, 0, 0, 2, 41, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 965609886, 212166624, 0, '', 'Barreiro', 'Portuguesa', 1, '1778227', '', 10, 13, 1, 4, 41, 8, 37, 0, 0, 1, 'Rua Manuel Carapeto n.º 34 - 2º Direito - 2835-765 Vila Chã', '448.pdf', 1, -1, '', -1, '', -1, '10725871', 3, '', '', '0000-00-00', '0000-00-00'),
(449, 'João Manuel Santana', '1953-01-28', '2014-12-12 12:39:18', 2, 10, -1, NULL, -1, 0, 0, 0, 'Refinaria, emp. fabril, Minas de Carvão', 0, 0, 0, 2, 11, 1, 0, '', 0, '', -1, -1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', '', 1, '', '', 1, 19, 0, -1, 11, 26, -1, 0, 0, 1, 'Rua Bordalo Pinheiro Banda A, Lote 22, 2º Dto - 2835-235 Vale da Amoreira', '449.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(450, 'José Augusto Rodrigues Fernandes', '0000-00-00', '2014-12-12 00:00:00', 2, 6, 5, NULL, 1, 0, 0, 0, 'Contabilista', 0, 0, 0, 1, 12, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 917495512, 0, 0, '', '', '', 1, '', '', 1, 19, 0, -1, 12, -1, -1, 0, 0, 1, 'Rua da Guiné nº39, 2º dto', '450.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(451, 'Depolina Mendes Ufala', '1959-03-02', '2014-04-03 22:00:00', 2, 10, 1, 251801489, 2, 0, 0, 0, '', 1, 0, 0, 2, 35, 0, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 926431552, 0, 0, '', 'Guiné', 'Guineense', 0, '', '2014-11-05 - Exp. profissional na área da limpeza. Procura de emprego nessa área. \r\n\r\n2014-11-12 - Apoio na construção do C.V. e procura de ofertas de trabalho na área da limpeza.\r\n\r\n2014-11-13 - Entrega de listagem de empresas de trabalho temporário, procura e resposta a ofertas de trabalho na área da limpeza.\r\n ', 22, 22, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua António Boto, Lote 9, 1.º Esq.º, 2835 Vale da Amoreira', '451.pdf', 1, -1, '', -1, '', -1, '30219532', 3, '', '', '0000-00-00', '0000-00-00'),
(452, 'Maria José Trindade Potes ', '0000-00-00', '2014-12-12 00:00:00', 1, 2, 2, 216343305, 3, 0, 0, 0, 'Cantoneira', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 915511250, 0, 0, '', '', 'Portuguesa ', 1, '', '', 3, 18, 0, -1, 35, -1, -1, 0, 0, 1, '', '452.pdf', 1, -1, '', -1, '', -1, '10744134', 3, '', '', '0000-00-00', '0000-00-00'),
(453, 'Hilário José Conceição Segundo', '0000-00-00', '2014-12-12 00:00:00', 2, 6, 2, NULL, 1, 0, 0, 0, 'Ladrilhador', 0, 0, 0, 1, 11, 1, 0, '', 0, '', -1, 1, 2, 0, '', 0, 0, '', 0, 2147483647, 0, 0, '', '', '', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua de Moçambique nº 36, 2º esq', '453.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(454, 'José  António Teles Agostinho', '1984-05-04', '2014-12-12 12:43:33', 2, 6, 2, NULL, -1, 0, 0, 0, 'Comerciante, trabalhador  por conta própria', 0, 0, 0, 2, 8, 1, 0, '', 0, '', -1, -1, 2, 0, '', 0, 0, '', 0, 937783741, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 8, -1, -1, 0, 0, 1, 'Rua António Aleixo nº 22 R/c Dto., 2835-061 Baixa da Banheira', '454.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(455, 'Domingas Sebastião Justo', '0000-00-00', '2014-12-12 00:00:00', 2, 6, 2, NULL, 1, 0, 0, 0, '', 0, 0, 0, 1, 35, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 965492607, 0, 0, '', '', '', 1, '', '', 1, 19, 0, -1, 35, -1, -1, 0, 0, 1, 'Praceta Fernão Lopes nº3,  1º esq', '455.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00');
INSERT INTO `utentes` (`id`, `nome`, `dataNascimento`, `dataInscricao`, `idConcelho`, `idFreguesia`, `idHabilitacoes`, `NIF`, `idEstadoCivil`, `trabalhadorPrecario`, `PrestadorDeServicos`, `TrabalhadorContaOutrem`, `ultimaProfissaoExercida`, `semSubsidio`, `subsidioDesemprego`, `EspecificacaoEmprego`, `tempoDesempregado`, `ultimaProfissaoExercidaDesempregado`, `beneficiarioRSI`, `outrosSubsidios`, `QuaisOutrosSubsidios`, `Estudante`, `estabelecimentoEnsino`, `idGrupoEtario`, `idSituacaoRegularizada`, `idGenero`, `MedidasAtivasEmprego`, `QualMedidasAtivasEmprego`, `Voluntariado`, `FormacaoProfissional`, `QualFormacaoProfissional`, `Biscates`, `Telemovel`, `Telefone`, `OutroTelefone`, `Email`, `Naturalidade`, `Nacionalidade`, `InscritoCentroEmprego`, `NumeroInscricaoCentroEmprego`, `Observacoes`, `idFrontOfficeSinalizador`, `idTecnico`, `cartaDeConducao`, `cartaDeConducaoCategoriaID`, `interesseProfissional1`, `interesseProfissional2`, `interesseProfissional3`, `empregado`, `outraSituacao`, `estado`, `morada`, `CV`, `pedidoInicialEmprego`, `pedidoInicialFormacao`, `pedidoInicialFormacaoQual`, `pedidoInicialOutra`, `pedidoInicialOutraQual`, `NISS`, `numeroIdentificacao`, `tipoDocumentoIdentificacao`, `codPostal`, `nrCartaConducao`, `validadeDocumentoIdentificacao`, `emissaoCartaConducao`) VALUES
(456, 'Liliana da Conceição Jesus Lourenço', '1982-09-16', '2014-12-12 00:00:00', 1, 4, 2, 224294717, 1, 0, 0, 0, 'Auxiliar de Limpeza numa Fábrica', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 934312880, 0, 0, '', 'Coruche', 'Portuguesa', 1, '', 'A Dª Liliana tem experiência ao nível de limpezas em contexto de fábrica, mas o seu principal interesse profissional  é atendimento ao público numa loja. Ao nível de formação profissional a Dª Liliana demonstra bastante gosto na área da contabilidade, embora já tenha sido informada, de que para isso teria de aumentar a sua escolaridade.', 10, 13, 1, 4, 36, -1, -1, 0, 0, 1, 'Rua 13 da Quinta da Mina, nº5, r/c esq. 2835-501', '456.pdf', 1, 1, 'Contabilidade', -1, '', -1, '13181051', 3, '', '', '0000-00-00', '0000-00-00'),
(457, 'Vera Lúcia da Silva Matos ', '1980-03-07', '2014-12-12 00:00:00', 1, 1, 5, 213877945, 4, 0, 0, 0, 'ajudante de cozinha', 0, 0, 0, 2, 24, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 926147308, 0, 0, '', '', 'Portuguesa ', 1, '', '', 3, 18, 1, 4, 41, 36, 24, 0, 0, 1, '', '457.pdf', 1, -1, '', -1, '', -1, '11830539', 3, '', '', '0000-00-00', '0000-00-00'),
(458, 'Mariana Isabel Agostinho Rim', '1980-12-10', '2014-12-12 12:49:10', 2, 6, 5, NULL, -1, 0, 0, 0, 'Venda Ambulante, Dona de casa', 0, 0, 0, 2, 8, 1, 0, '', 0, '', -1, -1, 1, 0, '', 0, 0, '', 0, 936909432, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 8, -1, -1, 0, 0, 1, 'Rua António Aleixo nº 22 R/c Dto., 2835-061 Baixa da Banheira', '458.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(459, 'Nuno Miguel da Silva Simões', '0000-00-00', '2014-12-12 00:00:00', 2, 6, 5, NULL, 1, 0, 0, 0, 'Electricista', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 1, 'Fabricação e Montagem de Estruturas Metálicas (Serralharia Civil( (UFCD)', 0, 914896330, 0, 0, '', '', '', 1, '', 'Electricista; Segurança; Pedreiro; Talhante', 1, 19, 0, -1, 11, 26, 39, 0, 1, 1, 'Rua Parque Estrela Vermelha nº 2, 1º esq', '459.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(460, 'Manuel Jorge Cabral Freire', '0000-00-00', '2014-12-12 00:00:00', 2, 6, 2, NULL, 1, 0, 0, 0, '', 0, 0, 0, -1, 11, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 925473858, 0, 0, '', '', '', 1, '', 'Motorista, Construção Cívil', 1, 19, 1, 4, 11, -1, -1, -1, 0, 1, 'Rua de Diu nº8, 2º esq', '460.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(461, 'José Olívio Tavares', '1959-03-16', '2014-12-12 12:53:19', 2, 6, -1, NULL, -1, 0, 0, 0, 'Op. Const. Civil - Servente, pintura', 0, 0, 0, 2, 11, 1, 0, '', 0, '', -1, -1, 1, 0, '', 0, 0, '', 0, 960324077, 0, 0, '', '', 'Caboverdeana', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua José Dias Coelho, Lote 18, 3º Esq. - 2835-132 Baixa da Banheira', '461.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(462, 'Cidália Pinto Teixeira', '1961-08-17', '2014-12-12 00:00:00', 1, 4, 4, 119636042, -1, 0, 0, 1, 'Camareira em Hóteis', 0, 0, 42, -1, 24, 0, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 939518876, 0, 0, '', '', 'Portuguesa', 1, '', 'A Dª Cidália Pinto Teixeira neste momento encontra-se integrada profissionalmente.', 10, 13, 0, -1, 24, -1, -1, 1, 0, 1, 'Rua Henrique Andrade Evans, nº1, 1º dto 2835-722', '462.pdf', 1, -1, '', -1, '', -1, '5923642', 3, '', '', '0000-00-00', '0000-00-00'),
(463, 'Gerson Gomes da Paz', '1996-02-09', '2014-10-22 22:00:00', 2, 10, 4, 282868402, 1, -1, -1, -1, '', -1, -1, 0, 2, -1, -1, -1, '', 1, 'Agrupamento Escolas Alfredo da Silva, Barreiro', 2, 1, 2, -1, '', -1, -1, '', -1, 920294407, -1, -1, 'gerson.paz2@gmail.com', 'Angola', 'Angolana', 1, '', '', 22, 22, -1, -1, -1, -1, -1, 0, -1, 1, 'Rua Mário Sacramento, 63 3 D, 2835-263 Vale da Amoreira', '463.pdf', 1, -1, '', -1, '', -1, '17VOW2849', 1, '', '', '0000-00-00', '0000-00-00'),
(464, 'Milena Emília Honório Santos Barros', '0000-00-00', '2014-12-12 00:00:00', 2, 6, -1, NULL, 1, 0, 0, 0, 'Responsável de Loja', 0, 0, 0, 1, 8, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 2147483647, 212800282, 0, '', '', '', 1, '', '', 1, 19, 0, -1, 8, -1, -1, 0, 0, 1, 'Rua Dom António Ferreira Gomes nº 5, 3º esq', '464.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(465, 'Mário Manuel Santos Lourenço', '1991-04-29', '2014-12-12 00:00:00', 1, 4, 2, 224294750, 1, 0, 0, 0, '', 0, 0, 0, 2, 1, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 932464528, 0, 0, '', 'Coruche', 'Portuguesa', 1, '4442763', '', 10, 13, 1, -1, 1, 45, 11, 0, 0, 1, 'Rua da Estremadura lote 63 - 2º Esquerdo - 2835 - 756 Vila Chã', '465.pdf', 1, -1, '', -1, '', -1, '14219542', 3, '', '', '0000-00-00', '0000-00-00'),
(467, 'António Carlos Almeida Cardeno', '1978-01-01', '2014-12-12 12:57:49', 2, 6, 3, NULL, -1, 0, 0, 0, 'Repositor armazém de livros', 0, 0, 0, 2, 26, 1, 0, '', 0, '', -1, -1, 2, 0, '', 0, 0, '', 0, 913566053, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, -1, -1, -1, -1, 0, 0, 1, 'Rua de Diu, nº 43, 3º esq. - 2835-090 Baixa da Banheira', '467.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(468, 'Anabela de Jesus Valados Jordão', '1966-12-02', '2014-12-02 00:00:00', 1, 6, 4, 183682246, 4, 0, 0, 0, 'Ajudante de cozinha', 0, 1, 0, 2, -1, 0, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 937545334, 0, 0, 'anabelajordao@live.com.pt', 'Barreiro', 'Portuguesa', 1, '', '2014-12-02 - Diagnóstico: Procura de emprego e empreendedorismo. \r\nApoio na construção de cartões para venda de bolos. \r\nSugestão de novas ideias para a comercialização dos bolos e disponibilização para ajuda neste campo. \r\nEntrega de listagem de empresas de trabalho temporário.\r\nInscrição/registo no site do IEFP Netemprego.\r\nApoio na construção do C.V. \r\n', 22, 22, 1, -1, -1, -1, -1, 0, 0, 1, 'Praceta General Norton de Matos, N.º 4, 1.º Esq.º, 2835 - 161 Barreiro', '468.pdf', 1, -1, '', -1, '', -1, '07840091', 3, '', '', '0000-00-00', '0000-00-00'),
(469, 'Silvia Alexandra Gonçalves Claudino', '1991-11-12', '2014-10-31 00:00:00', 2, 8, 3, 265521394, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 965656294, 0, 0, '', 'Corroios', 'Portuguesa', 1, '', '2014-12-09 - Diagnóstico: Procura do 1.º emprego. Preferência em trabalhar com crianças e/ou animais. ', 22, 22, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Alves Redol, Bloco AA-4 Cave, 2860-269 Fonte da Prata', '', 1, -1, '', -1, '', -1, '14628649', 3, '', '', '0000-00-00', '0000-00-00'),
(470, 'Maria Margarida Claudino', '0000-00-00', '2014-10-31 00:00:00', 2, 5, 1, 198405510, 2, 0, 0, 0, '', 0, 1, 0, 2, -1, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 926700091, 0, 0, '', 'Aveiro', 'Portuguesa', 1, '', '2014-12-09 - Diagnóstico: Procura de emprego. Marcação de atendimento para elaboração do C.V. ', 22, 22, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Alves Redol, N.º 4 Cave, 2860-269 Fonte da Prata, Alhos Vedros ', '', 1, -1, '', -1, '', -1, '11057470', 3, '', '', '0000-00-00', '0000-00-00'),
(471, 'Bernard  Mário Remédios ', '0000-00-00', '2014-12-12 00:00:00', 2, 10, 4, 266495818, 1, 0, 0, 0, '', 0, 0, 0, 1, 39, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 914939086, 0, 0, '', '', 'Portuguesa', 0, '', 'Experiência de trabalho em cafetaria/bar', 2, 14, 0, -1, 39, 24, -1, 0, 0, 1, 'Rua José Conceição Nunes,75-2º Esq - 2835-255', '471.pdf', 1, -1, '', -1, '', -1, '15784459', 4, '', '', '0000-00-00', '0000-00-00'),
(472, 'Ludgera Flores Vieira', '1987-07-06', '2014-12-12 00:00:00', 2, 10, 2, 243222521, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 934057236, 0, 0, '', '', 'Portuguesa', 1, '', 'Experiência de trabalho nas vendas ambulantes', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua das Túlipas,9-1º Dto - 2835-242', '472.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '14312398', 4, '', '', '0000-00-00', '0000-00-00'),
(473, 'Mamadu Bari Djaló', '1958-10-10', '2014-12-12 00:00:00', 2, 10, 2, 201656981, 5, 0, 0, 0, '', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 969249974, 0, 0, '', 'Guiné-Bissau', 'Portuguesa', 1, '', 'Experiência de trabalho na área da c. civil como pedreiro. A frequentar curso EFA B2', 2, 14, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua António Nobre,1-R/c Esq - 2835-231', '473.pdf', 1, -1, '', -1, '', -1, '15569315', 4, '', '', '0000-00-00', '0000-00-00'),
(474, 'Bailo Embaló', '1959-07-03', '2014-12-12 00:00:00', 2, -1, -1, 207837511, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 969600676, 0, 0, '', 'guiné-bissau', 'portuguesa', 1, '', '', 2, 14, 0, -1, 11, -1, -1, 0, 0, 1, 'PCT MARIA HELENA VIEIRA DA SILVA, Nº 35, 1º DTO, 2835-220 VALE AMOREIRA', '474.pdf', -1, 1, 'Apoio à criação de negócios; TIC', -1, '', -1, '15973903', 3, '', '', '0000-00-00', '0000-00-00'),
(475, 'Maria da Glória Santana Silva', '1956-06-18', '2014-12-12 00:00:00', 2, 10, 4, 202325059, 1, 0, 0, 0, '', 0, 0, 0, 1, 42, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 1, ' Curso de Eletrónica e Automação na PROFOC', 0, 918067763, 0, 0, '', 'Lisboa', 'Portuguesa', 1, '1814664', ' Experiência de Trabalho como ajudante de lar', 2, 14, 0, -1, 42, -1, -1, 0, 1, 1, 'Praceta das Camélias,67-R/c.º Esq. - 2835-210', '475.pdf', 1, -1, '', -1, '', -1, '5396739', 4, '', '', '0000-00-00', '0000-00-00'),
(476, 'Maria de Lurdes Peixoto Pereira', '1956-12-16', '2014-12-12 00:00:00', 2, 10, 2, 196773601, 1, 0, 0, 0, '', 0, 0, 0, 2, 42, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 918133430, 0, 0, '', '', 'Portuguesa', 1, '', 'Experiência de trabalho como ajudante de lar. ', 2, 14, 0, -1, 42, -1, -1, 0, 0, 1, 'Rua das Acácias,13-C/v Esq - 2835-239', '476.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '10052192', 4, '', '', '0000-00-00', '0000-00-00'),
(477, 'Maria Filomena Gaspar dos Santos', '1960-05-08', '2014-12-12 00:00:00', 2, -1, 4, 123439914, -1, 0, 0, 0, 'Ajudante cozinha', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 966695981, 0, 0, '', '', 'portuguesa', 1, '', 'gostaria de fazer curso formação em agricultura biológica, cozinha, empreendedorismo', 2, 14, 0, -1, 39, -1, -1, 0, 0, 1, 'Prt.Mª Helena Vieira Silva,35-3º Esq - 2835-220', '477.pdf', -1, 1, '', -1, '', -1, '7719792', 3, '', '', '0000-00-00', '0000-00-00'),
(478, 'Manuel Lucas Garcia', '1952-01-26', '2014-12-12 00:00:00', 2, 10, 1, 156500183, 5, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 912979353, 0, 0, '', '', 'Portuguesa', 1, '', 'Experiência de trabalho como servente (c. civil) e cantoneiro ', 2, 14, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua das Oliveiras,59 - 2835-214', '478.pdf', 1, 1, '', -1, '', -1, '9692376', 4, '', '', '0000-00-00', '0000-00-00'),
(479, 'Fátima da Conceição Ratinho Maneta', '1986-12-08', '2014-12-12 00:00:00', 2, -1, 4, 229338070, -1, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 962815821, 0, 0, '', '', 'portuguesa', 1, '', 'tem experiência como empregada de matadouro, ajudante de cozinha, empregada de balcão', 2, 14, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua António Botto,10-R/c Dto - 2835-230', '479.pdf', 1, -1, '', -1, '', -1, '13276530', 3, '', '', '0000-00-00', '0000-00-00'),
(480, 'Maria Leonor Vieira', '1958-10-12', '2014-12-12 00:00:00', 2, 10, 4, 207068950, 5, 0, 0, 0, '', 0, 0, 0, 1, 35, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 963378005, 0, 0, '', '', 'Portuguesa', 1, '', 'Experiência profissional como doméstica em casa de particulares e na área da higiene e limpeza.', 2, 14, 0, -1, 35, -1, -1, 0, 0, 1, 'Rua Pedro Alvares Cabral Nº 5 - 2835-269', '480.pdf', 1, -1, '', -1, '', -1, '11996370', 4, '', '', '0000-00-00', '0000-00-00'),
(481, 'Austelino Carlos Alberto Tavares ', '1959-05-28', '2014-12-12 00:00:00', 2, 10, 4, 109348346, 1, 0, 0, 0, '', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 963378005, 0, 0, '', '', 'Portuguesa', 1, '', 'Experiência de trabalho como ladrilhador, pedreiro e motorista.   ', 2, 14, 1, -1, 11, -1, -1, 0, 0, 1, 'Rua Pedro Alvares Cabral Nº 5 - 2835-269', '481.pdf', 1, -1, '', -1, '', -1, 'KK8333313', 1, '', '', '0000-00-00', '0000-00-00'),
(482, 'Maria Nidia Andrade Santos', '1977-04-10', '2014-12-12 00:00:00', 2, 10, 1, 239347862, 1, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portugusa', 1, '', 'Experiência de trabalho nas vendas ambulantes em Espanha.', 2, 14, 1, -1, -1, -1, -1, 0, 0, 1, 'Rua das Tulipas,9-1º Esq - 2835-242', '482.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '11874392', 4, '', '', '0000-00-00', '0000-00-00'),
(483, 'Maria Rosa Bento Quintinhas', '0000-00-00', '2014-12-12 00:00:00', 2, 10, 2, 271840188, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 938627547, 0, 0, '', '', 'Portuguesa', 1, '', '', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua das Túlipas, 40 - 2835-242', '483.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '', 4, '', '', '0000-00-00', '0000-00-00'),
(484, 'Jorge Manuel Silva António', '1986-12-18', '2014-12-12 00:00:00', 2, 10, 2, 246852143, 5, 0, 0, 0, '', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 938627547, 0, 0, '', '', 'Portuguesa', 1, '', '', 2, 14, 1, -1, 26, -1, -1, 0, 0, 1, 'Rua das Túlipas, 40 - 2835-242', '484.pdf', 1, -1, '', -1, '', -1, '12931252', 4, '', '', '0000-00-00', '0000-00-00'),
(485, 'Maria São José Fernandes Freitas', '1968-05-13', '2014-12-12 00:00:00', 2, 10, 2, 194836762, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 934617461, 0, 0, '', '', 'Portuguesa', 1, '', 'Experiência de trabalho nas vendas ambulantes ', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Largo dos Cravos, 59-2ºEsq - 2835-208', '485.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '8095055', 4, '', '', '0000-00-00', '0000-00-00'),
(486, 'Rua José Conceição Nunes Lt 26-1ºEsq - 2835-255', '1955-09-26', '2014-12-12 00:00:00', 2, 10, -1, 128544244, 1, 0, 0, 0, '', 0, 0, 0, 2, 12, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 932001704, 0, 0, '', '', 'Portuguesa', 1, '', 'Experiência de trabalho na área da contabilidade', 2, 14, 0, -1, 12, 41, -1, 0, 0, 1, 'Rua José Conceição Nunes Lt 26-1ºEsq - 2835-255', '486.pdf', 1, -1, '', -1, '', -1, '4710563', 4, '', '', '0000-00-00', '0000-00-00'),
(487, 'Mário André Dias Moreira', '1981-08-03', '2014-12-12 00:00:00', 2, 10, -1, 231113382, 1, 0, 0, 0, '', 0, 0, 0, 2, 10, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 964864988, 0, 0, '', '', 'Portuguesa', 1, '', 'Experiência de trabalhos na área da mecânica auto.', 2, 14, 1, -1, 10, 26, -1, 0, 0, 1, 'Largo das Dálias, 61 1º Dto. - 2835-198', '487.pdf', 1, -1, '', -1, '', -1, '12767552', 4, '', '', '0000-00-00', '0000-00-00'),
(488, 'Mário Jorge Binerde Camacho', '1961-01-21', '2014-12-12 00:00:00', 2, 10, 2, 222963620, 1, 0, 0, 0, '', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 968404898, 0, 0, '', '', 'Portuguesa', 1, '', 'Experiência de trabalho na limpezas industriais.', 2, 14, 0, -1, 26, 35, -1, 0, 0, 1, 'Rua das Violetas Bl 10  1º Esq. - 2835-243', '488.pdf', 1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '8640038', 4, '', '', '0000-00-00', '0000-00-00'),
(489, 'Mario Rafael de Almeida Aguiar', '1976-09-27', '2014-12-12 00:00:00', 2, 10, 1, 212414968, 1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 910487691, 0, 0, '', '', 'Portuguesa', 1, '', 'Experiência de trabalho na área da restauração como empregado de mesa/balcão', 2, 14, 0, -1, 35, -1, -1, 0, 0, 1, 'Praceta Dos Goivos,Bl 12 - 3º Esq - 2835-212', '489.pdf', 1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '11255250', 4, '', '', '0000-00-00', '0000-00-00'),
(490, 'Marlene da Silva', '1984-05-25', '2014-12-12 00:00:00', 2, 10, 2, 246530367, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', '', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Carlos Augusto Santos Lt 39-3º Dto - 2835-236', '490.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '14500860', 4, '', '', '0000-00-00', '0000-00-00'),
(491, 'Rafael Fernandes Miranda', '1986-10-24', '2014-12-12 00:00:00', 2, 10, 3, 246530430, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', '', 2, 14, 1, -1, -1, -1, -1, 0, 0, 1, 'Rua Carlos Augusto Santos Lt 39-3º Dto - 2835-236', '491.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '14259901', 4, '', '', '0000-00-00', '0000-00-00'),
(492, 'Nelson Filipe Garcia Pilar', '1991-06-01', '2014-12-12 00:00:00', 2, 10, 3, 262777770, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', '', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua José Conceição Nunes Lt 76-1º Dto - 2835-255', '492.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '14232551', 4, '', '', '0000-00-00', '0000-00-00'),
(493, 'Carina Silva Santos ', '1994-01-30', '2014-12-12 00:00:00', 2, 10, 2, 266501265, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', '', 1, '', '', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua José Conceição Nunes Lt 76-1º Dto - 2835-255', '493.pdf', -1, 1, 'Públicos Desfavorecidos e/ou Desenvolvimento de Competências Básicas', -1, '', -1, '', 4, '', '', '0000-00-00', '0000-00-00'),
(494, 'Fátima Susana Portela da Silva', '1985-03-02', '2014-12-12 00:00:00', 1, 4, 4, 234072814, 1, 0, 0, 0, 'Operadora de caixa balcão', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 924009387, 0, 0, '', 'Lisboa - S. Sebastião da Pedreira', 'Portuguesa', 1, '2423038', 'A utente Dª Fátima Portela da Silva tem experiência na área de operadora de caixa e balcão, mas neste momento pretende inserção na área administrativa/secretariado.', 10, 13, 0, -1, 41, -1, -1, 0, 0, 1, 'Rua 8, lote 40, 2º B 2835-513', '494.pdf', 1, 1, 'Línguas', -1, '', -1, '12773289', 3, '', '', '0000-00-00', '0000-00-00'),
(495, 'Frederic François Gomes Roland', '1987-06-08', '2014-12-13 00:00:00', 1, 4, 4, 264002067, 2, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 1, '', 4, 1, 2, 0, '', 0, 0, '', 0, 966342700, 0, 0, '', 'Ilha de Santiago', 'Cabo Verde', 0, '', '', 10, 13, 0, -1, 39, -1, -1, -1, 0, 1, 'Rua do Alentejo Nº 37 R/C Dto. 2835-756', '495.pdf', 1, 1, '', -1, '', -1, '031856', 1, '', '', '0000-00-00', '0000-00-00'),
(496, 'Adozinda Isabel Curro Mendes', '1976-02-10', '2014-12-13 00:00:00', 1, 4, 1, 214968626, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 933391868, 0, 0, '', 'Massarelos - Porto', 'Portuguesa', 1, '4124861', 'Integração em Curso de Competências Básicas', 10, 13, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua 13 Quinta da Mina Lote 17 3º Esq 2835-492', '496.pdf', -1, 1, '', -1, '', -1, '12333335', 3, '', '', '0000-00-00', '0000-00-00'),
(497, 'Dionisio Molina dos Santos', '1975-07-15', '2014-12-13 00:00:00', 1, 4, 2, 214968618, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 933391868, 0, 0, '', 'Cova da Piedade Almada', 'Portuguesa', 1, '4124860', '', 10, 13, 1, -1, -1, -1, -1, 0, 0, 1, 'Rua 13 Quinta da Mina Lote 17 3º Esq 2835-492', '497.pdf', 1, 1, '', -1, '', -1, '12147862', 3, '', '', '0000-00-00', '0000-00-00'),
(498, 'José Inocêncio Candeias Flores', '1978-05-28', '2014-12-13 00:00:00', 1, 4, 2, 223850349, 1, 0, 0, 0, '', 0, 0, 0, -1, 8, 0, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 935707107, 0, 0, '', 'Santiago Maior Beja', 'Portuguesa', 1, '2336059', 'Inserido em Curso de Competências Básicas', 10, 13, 1, -1, 8, -1, -1, -1, 0, 1, 'Rua 13 Quinta da Mina Lote 11 3º Dto 2835-492', '498.pdf', -1, 1, '', -1, '', -1, '12176692', 3, '', '', '0000-00-00', '0000-00-00'),
(499, 'Clementina Maria Alves dos Reis', '1962-02-22', '2014-12-13 00:00:00', 1, 4, 2, 180809563, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 963083337, 0, 0, '', 'Montargil Ponte de Sor', 'Portuguesa', 1, '2334939', '', 10, 13, 0, -1, 1, 35, -1, 0, 0, 1, 'Rua 13 Quinta da Mina Lote 3 2ºEsq. 2835-502', '499.pdf', -1, -1, '', -1, '', -1, '9899679', 3, '', '', '0000-00-00', '0000-00-00'),
(500, 'Fernando José Martins de Oliveira', '1967-11-28', '2013-08-06 22:00:00', 1, 2, 3, 180267890, 4, 0, 0, 0, '', 0, 0, 0, 1, -1, 0, 1, 'Pensão de Invalidez', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 926200585, 0, 0, '', 'Atalaia', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Padre Abel Varzim bloco C nº3 - 1º drtº', '500.pdf', 1, -1, '', -1, '', -1, '08177326-9ZY2', 3, '', '', '0000-00-00', '0000-00-00'),
(501, 'Maria de Fátima Barbosa Lopes', '1966-11-25', '2013-08-07 22:00:00', 1, 2, 1, 179947400, 5, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 961483120, 0, 0, '', 'Lisboa', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Marquês de Pombal nº120', '501.pdf', 1, -1, '', -1, '', -1, '9860658', 4, '', '', '0000-00-00', '0000-00-00'),
(502, 'Vanessa Sofia Gomes Cordeiro', '1993-08-21', '2013-08-07 22:00:00', 1, 2, 3, 270631704, 5, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 3, -1, 1, 0, '', 0, 0, '', 0, 916082117, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, 15, -1, -1, -1, 0, 1, 'Rua Dr. Manuel de Arriaga nº20', '502.pdf', -1, 1, 'Hotelaria EFA', -1, '', -1, '14701864', 4, '', '', '0000-00-00', '0000-00-00'),
(503, 'Sandro Miguel Gomes Cordeiro', '1981-02-08', '2013-08-07 22:00:00', 1, 2, 3, 264589459, 1, 0, 0, 0, '', 0, 1, 0, 1, -1, 0, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 911979214, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Dr. Manuel de Arriaga nº 2', '503.pdf', 1, 1, '', -1, '', -1, '14053288', 4, '', '', '0000-00-00', '0000-00-00'),
(504, 'Ana Patrícia Silas Heleno', '1990-07-17', '2013-08-07 22:00:00', 1, 2, 5, 265847176, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 916261861, 0, 0, '', 'Lisboa', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Dr. Manuel de Arriaga nº 20', '504.pdf', 1, -1, '', -1, '', -1, '13835435', 4, '', '', '0000-00-00', '0000-00-00'),
(505, 'Ana Maria Domingos Saraiva', '1960-06-07', '2014-12-13 00:00:00', 1, 2, 1, 178726508, 4, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 918591259, 0, 0, 'anasaraivas@hotmail.com', 'Almada', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Miguel Bombarda nº225 - 1º drtº', '505.pdf', 1, -1, '', -1, '', -1, '06822384 - 6ZZ8', 3, '', '', '0000-00-00', '0000-00-00'),
(506, 'Hélio David Martins da Costa', '1988-07-20', '2013-08-07 22:00:00', 1, 2, 5, 220105138, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 1, '', 4, -1, 2, 0, '', 0, 0, '', 0, 912744600, 0, 0, 'heliocosta@me.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 1, 4, -1, -1, -1, -1, 0, 1, 'Bairro Alfredo da Silva bloco A nº r/c dtº.', '506.pdf', 1, -1, '', -1, '', -1, '13381368', 4, '', '', '0000-00-00', '0000-00-00'),
(507, 'Susana Cristina de Campos Pinto', '1973-02-17', '2013-08-20 22:00:00', 1, 2, 5, 188340491, 1, -1, -1, -1, '', -1, -1, 0, 2, -1, -1, -1, '', -1, '', 5, 2, 1, -1, '', -1, -1, '', -1, 919277194, 210861686, -1, 'scpinto.formacao@gmail.com', 'Lisboa', 'Portugal', -1, '', '', 7, 11, 1, 4, -1, -1, -1, 0, -1, 1, 'Bairro Quinta da Fonte nº25', '507.pdf', -1, -1, '', -1, '', -1, '10162188', 3, '', '', '0000-00-00', '0000-00-00'),
(508, 'Júlia de Azevedo Sampaio Coelho', '1978-08-27', '2013-08-20 22:00:00', 1, 1, 4, 229839894, 2, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 965215695, 0, 0, 'juliascoelho@hotmail.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua de Santo António, 46-2º esq.', '508.pdf', 1, -1, '', -1, '', -1, '11557395', 3, '', '', '0000-00-00', '0000-00-00'),
(509, 'Adelina Maria Ramalho Estoura Cardoso', '1954-11-06', '2013-08-21 22:00:00', 1, 2, 4, 139358282, 2, -1, -1, -1, '', -1, -1, 0, 2, -1, -1, -1, '', -1, '', 7, 2, 1, -1, '', -1, -1, '', -1, 936732673, 212075596, -1, 'adelinacardoso59@hotmail.com', 'Mora', 'Portugal', -1, '', '', 7, 11, 1, 4, -1, -1, -1, 0, -1, 1, 'Rua Heliodoro Salgado nº52-5º Frt.', '509.pdf', 1, -1, '', -1, '', -1, '05590831', 3, '', '', '0000-00-00', '0000-00-00'),
(510, 'Anilton Marques Vieira', '1986-03-29', '2013-08-28 22:00:00', 1, 2, 3, 269176875, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 927021570, 0, 0, 'anilton.vieira@hotmail.com', 'Santa Cruz', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Diogo Cão nº34 - 2º esq.', '510.pdf', 1, -1, '', -1, '', -1, '15869778', 3, '', '', '0000-00-00', '0000-00-00'),
(511, 'Maria dos Anjos Pereira Vieira', '1954-01-01', '2013-09-02 22:00:00', 1, 2, 3, 243199260, 2, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 7, -1, 1, 0, '', 0, 0, '', 0, 962048053, 0, 0, '', 'Cabo Verde', 'Portugal', 0, '', '', 7, 11, 0, -1, 15, -1, -1, 0, 0, 1, 'Praceta D. Miguel I nº5 - 1º esq.', '511.pdf', -1, 1, '', -1, '', -1, '12817931', 3, '', '', '0000-00-00', '0000-00-00'),
(512, 'Mónica Teresa Fernandes Tavares', '1975-12-09', '2013-09-04 22:00:00', 1, 4, 4, 212013505, 2, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 913543396, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, -1, 1, 1, 'Rua da Estremadura nº49 - 3º drtº', '512.pdf', -1, -1, '', -1, '', -1, '10491157', 3, '', '', '0000-00-00', '0000-00-00'),
(513, 'Paula Maria Correia Rodrigues Café', '2014-12-14', '2014-12-14 00:00:00', 1, 2, 4, 200535885, 2, 0, 0, 0, '', 1, 0, 0, 1, 39, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 934044398, 0, 0, 'paulaboss37@hotmail.com', 'Angola', 'Portuguesa', 1, '', '', 17, 23, 0, -1, 39, -1, -1, 0, 0, 1, 'R.Dr.Egas Moniz nº 43 r/c E - 2835-433', '513.pdf', 1, -1, '', -1, '', -1, '10589740', 3, '', '', '0000-00-00', '0000-00-00'),
(514, 'Claudia Sofia Ramos Rodrigues', '2014-12-14', '2014-12-14 00:00:00', 2, 10, -1, 222695579, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 2, 1, 1, 0, '', 0, 0, '', 0, 918145427, 0, 0, 'clau_sofia_15@hotmail.com', 'Portuguesa', 'Portuguesa', 0, '', '', 17, 23, 0, -1, 42, 42, -1, 0, 0, 1, 'Pçtª dos Goios Bloco 8-1º Dtº - 2835-212 Vale Amoreira', '514.pdf', 1, -1, '', -1, '', -1, '15189279', 3, '', '', '0000-00-00', '0000-00-00'),
(515, 'Claudio Miguel Nobre Anastácio', '1980-04-06', '2014-12-14 00:00:00', 1, 2, 4, 226211037, 1, 0, 0, 0, '', 0, 0, 0, -1, 39, 0, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 936633403, 0, 0, '', '', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 5, 39, -1, -1, 0, 1, 'Rua Heliodoro Salgado Pátio Cabral n.º 8 ', '515.pdf', 1, 1, 'Massagem', -1, '', -1, '12199290', 3, '', '', '0000-00-00', '0000-00-00'),
(516, 'Carina Alexandra Mendes Silva', '1981-07-12', '2014-12-14 00:00:00', 1, 1, 4, 217703186, 1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 933198490, 969157420, 0, '', 'Barreiro', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 39, 36, 35, 0, 0, 1, 'Rua Francisco Casal n.º 6 R C Esq. Verderena - 2830-283 Barreiro', '516.pdf', 1, 1, '', -1, '', -1, '12100202', 4, '', '', '0000-00-00', '0000-00-00'),
(518, 'Leandro Emanuel Garcia de Almeida', '1984-10-14', '2014-12-14 00:00:00', 1, 2, 3, 211285897, 1, 0, 0, 0, 'Lavandaria Industrial', 0, 0, 0, -1, 35, 0, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 960419533, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 5, 35, -1, -1, 0, 1, 'R 31 DE JANEIRO PÁTIO 73 PORTA 12 BAIRRO DAS PALMEIRAS - 2830-132 BARREIRO', '518.pdf', 1, 1, 'Cabeleireiro', -1, '', -1, '12533041', 3, '', '', '0000-00-00', '0000-00-00'),
(519, 'Maria Teresa Dos Santos Marta Neves Da Silva  ', '1955-03-16', '2014-12-14 00:00:00', 1, 2, 4, 161917682, 4, 0, 0, 0, 'Apoio Domiciliário', 0, 0, 0, 1, 42, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 934917664, 0, 0, '', '', 'Portuguesa', 1, '', '', 3, 18, 1, 4, 5, 42, 36, 0, 0, 1, 'Rua General Norton De Matos 25 Rc Esq - 2830-345 Barreiro', '519.pdf', 1, 1, 'Inglês', -1, '', -1, '6269351', 3, '', '', '0000-00-00', '0000-00-00'),
(521, 'Sandra Monteiro Cabeças ', '1988-06-21', '2014-12-14 00:00:00', 1, 2, 3, 242085229, 1, 0, 0, 0, 'Ajudante de Cozinha', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 0, '', 'Formação de Cozinheira Nível 2', 3, 18, 0, -1, 39, 35, 36, 0, 0, 1, 'Av. Alfredo Da Silva N 2 R C - 2830-302 Barreiro ', '521.pdf', 1, 1, 'Cozinha', -1, '', -1, '14255792', 3, '', '', '0000-00-00', '0000-00-00'),
(522, 'Tiago Francisco Freitas Belmonte', '1988-05-22', '2014-12-14 00:00:00', 1, 2, 4, 232242925, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 967715878, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '', '', 3, 18, 1, 4, 26, -1, -1, 0, 0, 1, 'Rua Conselheiro Joaquim António D Aguiar N 155 1 - 2830-333 Barreiro', '522.pdf', 1, 1, 'Cabeleireiro', -1, '', -1, '13385338', 3, '', '', '0000-00-00', '0000-00-00'),
(523, 'Ana Paula Pinheiro do Rosário', '1968-01-18', '2013-09-04 22:00:00', 1, 2, 4, 192300920, 4, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 920256299, 0, 0, 'anapaula_rosario@hotmail.com', 'Moçambique', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Av. Da Liberdade nº1 - 9º A', '523.pdf', 1, -1, '', -1, '', -1, '08194192-7ZZ0', 3, '', '', '0000-00-00', '0000-00-00'),
(524, 'Ana Luísa Rosário e Silva', '1994-06-18', '2014-12-15 00:00:00', 1, 3, 3, 270938117, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 2, -1, 1, 0, '', 0, 0, '', 0, 910732903, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Av. da Liberdade nº1 - 9º A', '524.pdf', 1, -1, '', -1, '', -1, '14693632-9ZZ7', 3, '', '', '0000-00-00', '0000-00-00'),
(525, 'Cláudia Sofia dos Santos Marques', '1979-07-18', '2013-09-05 22:00:00', 1, 2, 4, 220007543, 4, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 912006548, 0, 0, 'claudia.marques.18@hotmail.com', 'Lisboa', 'Portugal', 0, '', '', 7, 11, 0, -1, 42, -1, -1, 0, 0, 1, 'Praceta D.Duarte de Almeida nº12 - 3º drtº', '525.pdf', 1, -1, '', -1, '', -1, '11537078', 3, '', '', '0000-00-00', '0000-00-00'),
(526, 'Maria da Conceição Fernandes', '1960-09-16', '2013-09-09 22:00:00', 1, 2, 5, 168867125, 1, 0, 0, 0, '', 0, 1, 0, 2, -1, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 910715217, 0, 0, '', 'Moncorvo', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua António José de Almeida nº57 - A', '526.pdf', -1, -1, '', -1, '', -1, '07810781', 3, '', '', '0000-00-00', '0000-00-00'),
(527, 'António Joaquim Ferro Canôa', '1953-11-01', '2013-09-12 22:00:00', 1, 2, 5, 259742260, 1, -1, -1, -1, '', -1, -1, 0, 2, -1, -1, -1, '', -1, '', 7, 1, 2, -1, '', -1, -1, '', -1, 968307400, -1, -1, 'ferrocanoa@hotmail.com', 'Arraiolos', 'Portugal', -1, '', '', 7, 11, -1, -1, -1, -1, -1, 0, -1, 1, 'Rua de Timor nº9 r/c dtº', '527.pdf', 1, 1, '', -1, '', -1, '04591958', 3, '', '', '0000-00-00', '0000-00-00'),
(528, 'António Rodrigues Marques Rocha', '1991-10-09', '2013-09-10 22:00:00', 1, 1, 4, 248591070, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 3, -1, 2, 0, '', 0, 0, '', 0, 915148124, 0, 0, 'antonio.rocha.wrs@gmail.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 1, 4, -1, -1, -1, 0, 0, 1, 'Rua de Gôa nº68 - 2º', '528.pdf', 1, -1, '', -1, '', -1, '13976273', 3, '', '', '0000-00-00', '0000-00-00'),
(529, 'Maria de Fátima Oliveira Rodrigues Carvalho', '1985-02-14', '2013-09-12 22:00:00', 1, 2, 4, 220745340, 2, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, 'fatoxa.nonocas@hotmail.com', 'Castro de Aire', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua João Dias Correia Pimenta', '529.pdf', 1, -1, '', -1, '', -1, '13011342', 3, '', '', '0000-00-00', '0000-00-00'),
(530, 'Lúcia Catarina Espírito Santo Nascimento', '1974-10-14', '2013-09-19 22:00:00', 1, 1, 3, 206035900, 1, -1, -1, -1, '', -1, -1, 0, 1, -1, -1, -1, '', -1, '', 5, 1, 1, -1, '', -1, -1, '', -1, 964636353, -1, -1, '', 'Lisboa', 'Portugal', -1, '', '', 7, 11, -1, -1, -1, -1, -1, 0, -1, 1, 'Bairro Alves Redol nº55 - 1º Alto do Seixalinho', '530.pdf', 1, -1, '', -1, '', -1, '11346782-6ZY1', 3, '', '', '0000-00-00', '0000-00-00'),
(531, 'Silvia Marina Piedade Rocha Amador', '1978-08-03', '2013-09-22 22:00:00', 1, 2, 5, 223372552, 2, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 964160483, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, 15, -1, -1, 0, 0, 1, 'Av. Mestre Manuel dos Santos Cabanas nº1 - 8º drtº', '531.pdf', -1, 1, '', -1, '', -1, '11512709', 4, '', '', '0000-00-00', '0000-00-00'),
(532, 'Joana Filipa de Oliveira Andrade', '1992-08-02', '2013-09-24 22:00:00', 1, 1, 5, 225545250, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 3, -1, 1, 0, '', 0, 0, '', 0, 967326723, 0, 0, 'joana.andrade.tae@gmail.com', 'Cascais', 'Portugal', 0, '', '1º Emprego', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, '', '532.pdf', 1, -1, '', -1, '', -1, '14044247', 3, '', '', '0000-00-00', '0000-00-00'),
(533, 'Andreia Sofia Fernandes Gonçalves', '1984-09-25', '2014-12-15 00:00:00', 1, 1, 5, 231320345, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 916929275, 0, 0, '', 'Lisboa', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta Frei Luís de Sousa nº77 r/c drtº', '533.pdf', -1, -1, '', -1, '', -1, '12761494', 3, '', '', '0000-00-00', '0000-00-00'),
(534, 'Alice Marina Alves Serra', '1971-03-30', '2013-09-26 22:00:00', 1, 1, 2, 195047095, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 0, 1, 'Pensão de Invalidez', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 961085970, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua 20 de Abril nº48 - 1º drtº', '534.pdf', 1, 1, '', -1, '', -1, '10545931', 3, '', '', '0000-00-00', '0000-00-00'),
(535, 'António Clemente da Silva Regalheiro', '1964-11-12', '2013-10-01 22:00:00', 1, 1, 1, 186843682, 4, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 969088436, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Bairro Alves Redol nº55 - 1º Alto do Seixalinho', '535.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(536, 'Flávio Leandro André Pacheco', '1993-10-24', '2013-10-02 22:00:00', 1, 2, 1, 249180740, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 2, 1, 2, 0, '', 0, 0, '', 0, 915051445, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua D. António Ferreira Gomes lote 4 - 3º frt.', '536.pdf', 1, 1, '', -1, '', -1, '14970359', 3, '', '', '0000-00-00', '0000-00-00'),
(537, 'Madalena Lopes Lima', '1959-08-22', '2013-10-08 22:00:00', 1, 2, 1, 237114704, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 968789010, 0, 0, '', 'São Tomé', 'Cabo Verde', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua General Norton de Matos nº8 - 2º drtº', '537.pdf', 1, -1, '', -1, '', -1, '7j6k03677', 1, '', '', '0000-00-00', '0000-00-00'),
(538, 'Gilberto Lima Delgado', '1990-11-15', '2013-10-14 22:00:00', 1, 2, 4, 267201931, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 3, -1, 2, 0, '', 0, 0, '', 0, 965723237, 0, 0, 'borrydelgado@hotmail.com', 'Nossa Srª da Luz', 'Cabo Verde', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua General Norton de Matos nº8 - 2º drt.', '538.pdf', 1, -1, '', -1, '', -1, '825N8569N', 1, '', '', '0000-00-00', '0000-00-00'),
(539, 'Cátia Sofia Romeira Domingos', '1991-01-17', '2014-12-15 00:00:00', 1, 2, 3, 264161688, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 3, -1, 1, 0, '', 0, 0, '', 0, 965057167, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, 15, -1, -1, 0, 0, 1, 'Rua José Augusto Pimenta nº4 - 2º C', '539.pdf', -1, 1, '', -1, '', -1, '14210316-0ZY4', 3, '', '', '0000-00-00', '0000-00-00'),
(540, 'Eunildo Pereira Moreno', '1991-05-16', '2013-10-15 22:00:00', 1, 1, 4, 264670388, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 964712714, 0, 0, 'nildo_moreno@live.com.pt', 'Praia', 'Cabo Verde', 0, '', '', 7, 11, 1, 4, 15, -1, -1, 0, 0, 1, 'Rua Largo 3 de Maio nº 6 - 2º dto', '540.pdf', -1, 1, 'ATEC', -1, '', -1, '056780', 1, '', '', '0000-00-00', '0000-00-00'),
(541, 'Edilson Cardoso Cabral', '1994-12-28', '2013-10-16 22:00:00', 1, 1, 3, 272441953, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 2, -1, 2, 0, '', 0, 0, '', 0, 963625344, 0, 0, '', 'Praia', 'Cabo Verde', 0, '', '', 7, 11, 0, -1, -1, -1, -1, -1, 0, 1, 'Largo 3 de Maio nº 6 2º Drt', '541.pdf', -1, 1, '', -1, '', -1, '1J31963J0', 1, '', '', '0000-00-00', '0000-00-00'),
(542, 'Binete João Pedro Mendes', '1993-12-02', '2013-10-21 22:00:00', 1, 2, 4, 274726297, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 2, 1, 1, 0, '', 0, 0, '', 0, 920061464, 218279041, 0, 'mendesbinete@hotmail.com', 'Guiné Bissau', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, -1, 0, 1, 'Rua Palmira Bastos nº16 3Drt', '542.pdf', -1, 1, 'EFA 12º Ano', -1, '', -1, '30927033', 3, '', '', '0000-00-00', '0000-00-00'),
(543, 'Nuno Filipe Ferreira Fagundes', '1984-03-05', '2013-10-24 22:00:00', -1, -1, 5, 224672150, 2, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 910105345, 0, 0, '', 'São José - Ponta Delgada', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, '', '543.pdf', -1, 1, '', -1, '', -1, '12874914 8ZY8', 3, '', '', '0000-00-00', '0000-00-00'),
(544, 'Sandra Margarida da Silva Soares', '1974-05-06', '2013-10-24 22:00:00', 1, 1, 4, 208772421, 4, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 963628464, 0, 0, '', 'Angra do Heroismo', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Almeida Garret nº31- 3º drt', '544.pdf', 1, -1, '', -1, '', -1, '11093495 - 4ZZO', 3, '', '', '0000-00-00', '0000-00-00'),
(545, 'Susana Rodrigues Silvestre', '1971-12-14', '2013-11-04 00:00:00', 2, 6, 5, 209540087, 4, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 925701235, 911998476, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta Joaquim Gomes Malhada lote 137 - 2º drt.', '545.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(546, 'Viviana Vieira Fernandes', '1984-09-04', '2013-11-11 00:00:00', 1, 1, 1, 232029857, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 0, 212043706, 0, '', 'Sintra', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Bairro Alves Redol nº52', '546.pdf', 1, -1, '', -1, '', -1, '13713808', 3, '', '', '0000-00-00', '0000-00-00'),
(547, 'Maria Teixeira Pereira', '1969-08-11', '2013-11-05 00:00:00', 1, 2, 3, 229462073, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 969707622, 0, 0, '', 'Praia', 'Cabo Verde', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Bairro Alves Redol nº5 r/c', '547.pdf', 1, -1, '', -1, '', -1, '12362490-8ZZ4', 3, '', '', '0000-00-00', '0000-00-00'),
(548, 'Carla Sofia Engrossa de Jesus', '1989-08-30', '2013-11-05 00:00:00', 1, 1, 4, 260517119, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 3, -1, 1, 0, '', 0, 0, '', 0, 933507264, 0, 0, 'sofias17@hotmail.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Bairro Alves Redol nº21 r/c', '548.pdf', 1, -1, '', -1, '', -1, '13955376-2ZY6', 3, '', '', '0000-00-00', '0000-00-00'),
(549, 'Maria da Graça Reis Moreno ', '1992-02-26', '2014-12-15 00:00:00', 1, 1, 4, 266849237, 1, 0, 0, 0, '', 0, 0, 0, -1, 35, 0, 0, '', 1, 'Centro de Formação profissional de Setúbal', 3, 1, 1, 0, '', 0, 0, '', 0, 964260832, 0, 0, '', 'Cabo Verde', 'Caboverdiana', 1, '4435390', 'Encontra-se a frequentar formação profissional de restauração e mesa/bar', 3, 18, 0, -1, 39, 35, 36, -1, 0, 1, 'Rua Miguel Bombarda N 264 5 Dto - 2830-289 Barreiro', '549.pdf', 1, -1, '', -1, '', -1, 'P000926056', 1, '', '', '0000-00-00', '0000-00-00'),
(550, 'Mário Rui da Silva Dias', '1983-11-11', '2013-11-05 00:00:00', 1, 1, 4, 230741398, 1, 0, 0, 0, 'Repositor', 1, 0, 0, 1, 36, 0, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 933507264, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 1, -1, 36, -1, -1, 0, 0, 1, 'Bairro Alves Redol nº21 R/C', '550.pdf', 1, -1, '', -1, '', -1, '12430215 7zz5', 3, '', '', '0000-00-00', '0000-00-00'),
(551, 'Sandiley Oliveira Pereira da Costa Tebús', '1994-10-15', '2014-12-15 00:00:00', 1, 2, 3, 276451112, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 2, -1, 1, 0, '', 0, 0, '', 0, 968919167, 0, 0, '', 'Santo António - Principe', 'São Tomé', 0, '', '', 7, 11, 0, -1, 15, -1, -1, -1, 0, 1, 'Palácio Coimbra', '551.pdf', -1, 1, 'EFA 12º Ano', -1, '', -1, '543T00S32', 1, '', '', '0000-00-00', '0000-00-00'),
(552, 'Maria do Rosário Moura', '1960-02-15', '2014-12-15 00:00:00', 1, 1, 6, 12321932, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 962495634, 0, 0, 'mariamoura11@live.com.pt', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 1, -1, -1, -1, -1, 0, 0, 1, 'Rua Miguel Bombarda nº207 - 2º drtº', '552.pdf', 1, -1, '', -1, '', -1, '5389435', 3, '', '', '0000-00-00', '0000-00-00'),
(553, 'Luís Filipe Fernandes Costa', '1960-10-30', '2013-11-12 00:00:00', 1, 2, 3, 10574008, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 939046517, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Aguiar nº184 - 1º', '553.pdf', 1, -1, '', -1, '', -1, 'Luís Filipe Fernandes Costa', 3, '', '', '0000-00-00', '0000-00-00'),
(554, 'Andreia Patrícia Garcias Rocha', '1978-02-02', '2013-11-15 00:00:00', 1, 1, 4, 225087111, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 962608083, 212155803, 0, '', 'Barreiro', 'Portugal', 0, '', '1º Emprego', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta Gomes Teixeira nº28-2º drtº', '554.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(555, 'Sofia Carla Santos Rodrigues', '1973-03-10', '2013-11-20 00:00:00', 1, 1, 1, 214328074, 1, 0, 0, 0, 'Cantoneira', 0, 0, 0, 2, 10, 1, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 927128493, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, 15, -1, -1, 0, 0, 1, 'Rua João de Deus nº54', '555.pdf', 1, 1, 'EFA 1º Ciclo', -1, '', -1, '11890783-2ZY6', 3, '', '', '0000-00-00', '0000-00-00'),
(556, 'Susana Leonor Dias de Oliveira', '1978-08-24', '2013-11-19 00:00:00', 1, 1, 6, 218526032, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 916976742, 0, 0, 'susanaeoliveira@gmail.com', 'Paris', 'Portugal', 0, '', '', 7, 11, 1, 4, 8, -1, -1, 0, 0, 1, 'Susana Leonor Dias de Oliveira', '556.pdf', 1, -1, '', -1, '', -1, '11245172', 3, '', '', '0000-00-00', '0000-00-00'),
(557, 'Carlos Miguel dos Santos Lopes', '1977-03-18', '2014-12-15 00:00:00', 1, 2, 2, 213679400, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, -1, 2, 0, '', 0, 0, '', 0, 911092415, 0, 0, 'carecalopes1@gmail.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, '', '557.pdf', 1, -1, '', -1, '', -1, '12149290', 3, '', '', '0000-00-00', '0000-00-00'),
(558, 'José António Pialgata Lucas', '1955-09-21', '2013-11-26 00:00:00', 1, 2, 3, 123141028, 4, 0, 0, 1, '', 0, 0, 1, -1, -1, 0, 0, '', 0, '', 7, -1, 2, 0, '', 0, 0, '', 0, 968040263, 0, 0, '', 'Montijo', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 1, 0, 1, 'Travessa nova nº2', '558.pdf', 1, -1, '', -1, '', -1, '04867233', 3, '', '', '0000-00-00', '0000-00-00'),
(559, 'Lucília Marques Silva', '1952-10-13', '2013-11-22 00:00:00', 1, 1, 2, 161968945, 4, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 7, -1, 1, 0, '', 0, 0, '', 0, 916007686, 210848288, 0, '', 'Leiria', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua do Convento nº6 - 2º esq', '559.pdf', -1, 1, 'Informática', -1, '', -1, '06895518', 3, '', '', '0000-00-00', '0000-00-00'),
(560, 'Isa Mara Soares Galhóz', '1994-10-25', '2014-12-15 00:00:00', 1, 1, 3, 221659587, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 0, 210823700, 0, 'isamsgalhoz@hotmail.com', '', 'Portuguesa', 1, '', '', 14, 12, 0, -1, 39, 36, 24, 0, 0, 1, '', '560.pdf', 1, 1, 'Equivalência ao 9º ano', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(561, 'Thelma Augusto Gonçalves Pinhel Balaque', '1970-10-01', '2013-11-27 00:00:00', 1, 1, 4, 262567601, 2, 0, 0, 0, 'Auxiliar', 1, 0, 0, 2, 15, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 968450748, 0, 0, '', 'Guiné Bissau', 'Guiné Bissau', 0, '', '', 7, 11, 0, -1, 15, -1, -1, 0, 0, 1, 'Praceta Ribeiro Sanches nº10 - r/c esq', '561.pdf', -1, 1, 'Informática', -1, '', -1, '72Q9786Q8', 1, '', '', '0000-00-00', '0000-00-00'),
(562, 'Amigo Joãozinho Balaque', '1965-01-20', '2013-11-27 00:00:00', 1, 1, 3, 232969477, 2, 0, 0, 0, 'Armador de Ferro', 1, 0, 0, 2, 11, 0, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 962801451, 0, 0, '', 'Guiné Bissau', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta Ribeiro Sanchez nº10 r/c esq', '562.pdf', -1, 1, 'Informática', -1, '', -1, '31221893', 3, '', '', '0000-00-00', '0000-00-00'),
(563, 'Jéssica Patrícia Rey Rocha', '1994-04-11', '2013-11-22 00:00:00', 1, 1, 3, 249937573, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 2, -1, 1, 0, '', 0, 0, '', 0, 961171938, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, -1, 0, 1, 'Rua Ferrer Trindade lote 5 - 4º drtº', '563.pdf', -1, 1, '', -1, '', -1, '14536207', 3, '', '', '0000-00-00', '0000-00-00'),
(564, 'José Jacinto Rosa Guerreiro', '1972-12-26', '2013-11-27 00:00:00', 1, 2, 5, 206331860, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 966465540, 0, 0, 'ze1972@sapo.pt', 'Lisboa', 'Portugal', 0, '', '', 7, 11, 0, -1, 45, -1, -1, 0, 0, 1, 'Rua Dr. Manuel de Arriaga nº56', '564.pdf', 1, -1, '', -1, '', -1, '10581611', 3, '', '', '0000-00-00', '0000-00-00'),
(565, 'Cecília Raquel Capela Figueiredo Costa', '1978-08-02', '2013-11-27 00:00:00', 1, 2, 6, 217738133, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 961399301, 0, 0, 'ceciliacosta39@outlook.com', 'Lisboa', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Av. Bocage bloco A nº4 - 7º drtº', '565.pdf', 1, -1, '', -1, '', -1, '11243231', 3, '', '', '0000-00-00', '0000-00-00'),
(566, 'Sandro Miguel Monteiro Fortes ', '1996-08-22', '2014-12-15 00:00:00', 1, 1, 3, 231810792, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 2, 1, 2, 0, '', 0, 0, '', 0, 925096701, 0, 0, 'sandro_m_m@outlook.com', '', 'Portuguesa', 0, '', '', 14, 12, 0, -1, 24, 39, -1, 0, 0, 1, '', '566.pdf', 1, 1, 'Equivalência ao 9º ano', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(567, 'Hector Evan Silva', '1990-08-01', '2013-12-03 00:00:00', 1, 2, 4, 271883227, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 3, -1, 2, 0, '', 0, 0, '', 0, 969582952, 0, 0, 'hectorstail@hotmail.com', 'São Vicente', 'Cabo Verde', 0, '', '', 7, 11, 0, -1, 39, -1, -1, 0, 0, 1, 'Rua General Norton de Matos nº8 - 2º esq.', '567.pdf', 1, -1, '', -1, '', -1, '47055Q650', 1, '', '', '0000-00-00', '0000-00-00'),
(568, 'Jéssica Sofia Lourenço Mortal', '1992-08-23', '2013-12-04 00:00:00', 1, 2, 3, 215597559, 1, 0, 0, 0, '', 1, 0, 0, 2, 35, 0, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 969583969, 0, 0, 'diabolic_a@hotmail.com', 'Pinhal Novo', 'Portugal', 0, '', '', 7, 11, 0, -1, 35, -1, -1, 0, 0, 1, 'Rua Dr. Egas Moniz nº2 - r/c esq', '568.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(569, 'Francisco José Fernandes de Brito', '1958-07-23', '2013-12-05 00:00:00', 2, 6, 3, 146682670, 2, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 937937676, 0, 0, '937937676', 'Baixa da Banheira', 'Portugal', 0, '', '', 7, 11, 1, 4, -1, -1, -1, 0, 0, 1, 'Rua 1º de Maio nº73 - 3º esq.', '569.pdf', 1, -1, '', -1, '', -1, '06536414', 3, '', '', '0000-00-00', '0000-00-00'),
(570, 'Eugénia Maria Jesus Cabaço', '1968-02-06', '2013-12-05 00:00:00', 1, 1, 4, 180136224, 4, 0, 0, 0, 'Pingo Doce', 1, 0, 0, 2, 36, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 927647015, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua Gonçalves Zarco nº13 r/c', '570.pdf', 1, -1, '', -1, '', -1, '10022629', 3, '', '', '0000-00-00', '0000-00-00');
INSERT INTO `utentes` (`id`, `nome`, `dataNascimento`, `dataInscricao`, `idConcelho`, `idFreguesia`, `idHabilitacoes`, `NIF`, `idEstadoCivil`, `trabalhadorPrecario`, `PrestadorDeServicos`, `TrabalhadorContaOutrem`, `ultimaProfissaoExercida`, `semSubsidio`, `subsidioDesemprego`, `EspecificacaoEmprego`, `tempoDesempregado`, `ultimaProfissaoExercidaDesempregado`, `beneficiarioRSI`, `outrosSubsidios`, `QuaisOutrosSubsidios`, `Estudante`, `estabelecimentoEnsino`, `idGrupoEtario`, `idSituacaoRegularizada`, `idGenero`, `MedidasAtivasEmprego`, `QualMedidasAtivasEmprego`, `Voluntariado`, `FormacaoProfissional`, `QualFormacaoProfissional`, `Biscates`, `Telemovel`, `Telefone`, `OutroTelefone`, `Email`, `Naturalidade`, `Nacionalidade`, `InscritoCentroEmprego`, `NumeroInscricaoCentroEmprego`, `Observacoes`, `idFrontOfficeSinalizador`, `idTecnico`, `cartaDeConducao`, `cartaDeConducaoCategoriaID`, `interesseProfissional1`, `interesseProfissional2`, `interesseProfissional3`, `empregado`, `outraSituacao`, `estado`, `morada`, `CV`, `pedidoInicialEmprego`, `pedidoInicialFormacao`, `pedidoInicialFormacaoQual`, `pedidoInicialOutra`, `pedidoInicialOutraQual`, `NISS`, `numeroIdentificacao`, `tipoDocumentoIdentificacao`, `codPostal`, `nrCartaConducao`, `validadeDocumentoIdentificacao`, `emissaoCartaConducao`) VALUES
(571, 'Maria Sabado Gonçalves da Veiga', '0000-00-00', '2013-10-09 22:00:00', 1, 2, 1, 263069532, 2, -1, -1, -1, '', -1, -1, 0, 1, -1, -1, -1, '', -1, '', 7, 2, 1, -1, '', -1, -1, '', -1, 966957647, -1, -1, '', 'Santa Cruz', 'Cabo Verde', -1, '', '', 7, 11, -1, -1, -1, -1, -1, 0, -1, 1, 'Rua Fialho de Almeida nº11 r/c', '571.pdf', -1, -1, '', -1, '', -1, 'IQ410R056', 1, '', '', '0000-00-00', '0000-00-00'),
(572, 'Márcia Sofia dos Santos Morais', '1986-11-23', '2013-11-28 00:00:00', 1, 2, 3, 228020026, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 912652192, 0, 0, '', 'Lisboa', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua João Dias Correia Pimenta nº4 r/c esq.', '572.pdf', 1, -1, '', -1, '', -1, '13030011', 3, '', '', '0000-00-00', '0000-00-00'),
(573, 'Fernando Hélio Saúl Arez da Silva', '1961-09-09', '2013-12-10 00:00:00', 3, -1, 5, 126937850, 2, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 936208221, 0, 0, 'fhelio.silva@gmail.com', 'Angola', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Maria Lamas nº18 - Brejoeira', '573.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(574, 'Jorge Humberto Santareno Fernandes', '1961-01-31', '2013-12-11 00:00:00', 1, 2, 1, 109068823, 4, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 961681350, 0, 0, '', 'Lisboa', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Chabby Pinheiro nº11 - 1º', '574.pdf', 1, -1, '', -1, '', -1, '07478142', 3, '', '', '0000-00-00', '0000-00-00'),
(575, 'Micaela Caires Meca Alegria', '1974-01-13', '2013-12-13 00:00:00', 1, 2, 3, 209357126, 5, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 933928783, 0, 0, 'micaela_alegria@hotmail.com', 'Lisboa', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua João Azevedo do Carmo nº3 - 5º frt', '575.pdf', 1, -1, '', -1, '', -1, '10652359', 3, '', '', '0000-00-00', '0000-00-00'),
(576, 'Natália Ivanchenko', '1981-09-07', '2014-12-15 00:00:00', 1, 2, 6, 272054224, 2, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 924120540, 0, 0, '', 'Ucrania', 'Ucrania', 0, '', 'Empreendedor', 7, 11, 1, 4, -1, -1, -1, 0, 0, 1, 'Rua Vasco Santana nº16 - 1º', '576.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(577, 'Carla Maria de Barros Ferreiro Tinoco', '1972-07-07', '2013-12-20 00:00:00', 1, 1, 4, 205864180, 2, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 913007297, 0, 0, 'carla.tinoco@sapo.pt', 'Angola', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Bartolomeu Dias nº56-1º dtº', '577.pdf', 1, -1, '', -1, '', -1, '10009071', 3, '', '', '0000-00-00', '0000-00-00'),
(578, 'Tania Filipe Almeida Pires', '1993-10-18', '2013-12-19 00:00:00', 1, 2, 5, 268141142, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 3, -1, 1, 0, '', 0, 0, '', 0, 918334341, 0, 0, 'tanocax_pires@hotmail.com', 'Barreiro', 'Portugal', 0, '', '1º Emprego', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Aguiar nº136 - r/c', '578.pdf', 1, -1, '', -1, '', -1, '14523761', 3, '', '', '0000-00-00', '0000-00-00'),
(579, 'Célia Martins Guia Fraga', '1972-10-03', '2014-04-08 22:00:00', 1, 2, 3, 204115930, 2, 0, 0, 0, 'Expedição de Pão', 1, 0, 0, 2, 26, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 934416131, 0, 0, 'celiafguia@gmail.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, '', '579.pdf', -1, 1, '', -1, '', -1, '11081845', 3, '', '', '0000-00-00', '0000-00-00'),
(580, 'Rui Miguel Martins de Sousa', '1975-06-08', '2014-12-15 00:00:00', 1, 1, 4, 200235974, 1, 0, 0, 0, 'Serralheiro', 1, 0, 0, 1, 10, 0, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 910435704, 0, 0, 'ruimiguelsousa37@hotmail.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 1, 4, 10, -1, -1, 0, 0, 1, 'Rua 5 de Outubro nº19 - 3º F', '580.pdf', 1, -1, '', -1, '', -1, '11542628', 3, '', '', '0000-00-00', '0000-00-00'),
(581, 'Patrícia Sofia Cortes  Jarreta', '1992-08-03', '2013-12-07 00:00:00', 2, 6, 6, 211727814, 1, -1, -1, -1, '', -1, -1, 0, -1, -1, -1, -1, '', -1, '', 3, 1, 1, -1, '', -1, -1, '', -1, 936821493, -1, -1, '', 'Évora', 'Portugal', -1, '', '1º Emprego', 7, 11, 1, 4, -1, -1, -1, -1, -1, 1, 'Rua Francisco Miguel, lote 5 nº 10 - 2º drt.', '581.pdf', 1, -1, '', -1, '', -1, '14000463', 3, '', '', '0000-00-00', '0000-00-00'),
(582, 'Soraia Inês Leonor Correia', '1991-11-13', '2013-12-07 00:00:00', 1, 2, 6, 229800778, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 934655764, 210839992, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 1, 4, -1, -1, -1, 0, 0, 1, 'Rua Almirante José Mendes Cabeçadas, nº60 - 1º esq.', '582.pdf', 1, -1, '', -1, '', -1, '13982025', 3, '', '', '0000-00-00', '0000-00-00'),
(583, 'Nuno Gonçalo Lourenço Verdugo', '1975-07-17', '2014-01-21 00:00:00', 1, 1, 3, 20481386, 1, -1, -1, -1, 'AC e Refrigeração', -1, -1, 0, 2, 10, -1, -1, '', -1, '', 5, 2, 2, -1, '', -1, -1, '', -1, 913187489, -1, -1, 'nuno_verduco@hotmail.com', 'Oeiras', 'Portugal', -1, '', 'Empreendedor', 7, 11, 1, 4, 10, -1, -1, 0, -1, 1, 'Rua Nuno Tristão nº40 r/c esq', '583.pdf', 1, -1, '', -1, '', -1, '10801215', 3, '', '', '0000-00-00', '0000-00-00'),
(584, 'Audair José da Veiga Martins', '1980-07-18', '2013-12-31 00:00:00', 1, 3, 3, NULL, 1, 0, 0, 0, 'Auxiliar de Limpeza', 1, 0, 0, 2, 35, 0, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 963625406, 0, 0, 'audairveiga1985@gmail.com', 'Praia', 'Cabo Verde', 0, '', '', 7, 11, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua Manuel Rodrigues Urbano - Casa Tonisa', '584.pdf', 1, 1, 'Informática', -1, '', -1, '18N66969P', 1, '', '', '0000-00-00', '0000-00-00'),
(585, 'Rosalina Maria Lourenço Tavares', '1965-02-18', '2014-01-03 00:00:00', 1, 1, 3, 151492077, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 961888449, 0, 0, 'rosalina.tavares@sapo.pt', 'Grandola', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Fialho de Almeida nº1 r/c dtº', '585.pdf', 1, -1, '', -1, '', -1, '7364502', 3, '', '', '0000-00-00', '0000-00-00'),
(586, 'Luisa Paula Pinto da Silva', '1987-10-05', '2014-01-06 00:00:00', 1, 1, 1, 248877291, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 933961020, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '1º Emprego', 7, 11, 0, -1, -1, -1, -1, -1, 0, 1, 'Quinta da Amoreira grupo 2 porta 25', '586.pdf', 1, -1, '', -1, '', -1, '14732263', 3, '', '', '0000-00-00', '0000-00-00'),
(587, 'Sónia Alexandra Machado Beatriz', '1978-04-03', '2014-12-15 00:00:00', 1, 2, 5, 220306694, 1, 0, 0, 0, 'Auxiliar de Ação Educativa', 1, 0, 0, 1, 42, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 967171353, 0, 0, 'sonia1978@hotmail.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 1, 4, 42, -1, -1, 0, 0, 1, 'Av. Do Bocage nº17 - 10 drtº', '587.pdf', 1, -1, '', -1, '', -1, '11609025', 3, '', '', '0000-00-00', '0000-00-00'),
(588, 'Ana Rita Pereira Ramos', '1978-12-22', '2014-01-09 00:00:00', 1, 1, 6, 165813490, 2, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 962022857, 0, 0, 'anaramos@sapo.pt', 'Lisboa', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta Raul Jorge nº4 - 3º frt', '588.pdf', 1, 1, 'Informática', -1, '', -1, '11448835', 3, '', '', '0000-00-00', '0000-00-00'),
(589, 'Maria dos Santos Candeias Fialho Pegas', '1954-11-19', '2014-01-10 00:00:00', 1, 1, 3, 145574164, 3, 0, 0, 0, 'Ajudante de Cozinha', 1, 0, 0, 2, 39, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 964021346, 0, 0, '', 'Moura', 'Portugal', 0, '', '', 7, 11, 0, -1, 39, -1, -1, 0, 0, 1, 'Rua 1º de Dezembro nº45 - 1º dtº', '589.pdf', 1, -1, '', -1, '', -1, '06910632', 3, '', '', '0000-00-00', '0000-00-00'),
(590, 'Ana Carolina de Oliveira Vasconcelos Homem', '1962-04-07', '2014-01-14 00:00:00', 1, 1, 5, 170834190, 4, 0, 0, 0, '', 1, 0, 0, 2, 36, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 964672440, 0, 0, '', 'Lisboa', 'Portugal', 0, '', '', 7, 11, 0, -1, 36, -1, -1, 0, 0, 1, 'Praceta Gomes Teixeira nº15 - 2º esq', '590.pdf', 1, -1, '', -1, '', -1, '06083746', 3, '', '', '0000-00-00', '0000-00-00'),
(591, 'Rúben Miguel Ramos Neves', '1990-08-17', '2014-01-15 00:00:00', 1, 2, 3, 258518669, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 3, -1, 2, 0, '', 0, 0, '', 0, 962076147, 0, 0, '', 'Beja', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Av. Republica nº26 - 2º drtº', '591.pdf', 1, -1, '', -1, '', -1, '13970376', 3, '', '', '0000-00-00', '0000-00-00'),
(592, 'Joana Margarida Viegas Apolónia', '1991-09-08', '2014-01-15 00:00:00', 1, 2, 3, 258896485, 1, 0, 0, 0, '', 1, 0, 0, 2, 36, 0, 0, '', 0, '', 3, -1, 1, 0, '', 0, 0, '', 0, 927334262, 0, 0, 'juana-neves@live.com.pt', 'Castro Verde', 'Portugal', 0, '', '', 7, 11, 0, -1, 36, -1, -1, 0, 0, 1, 'Av. República nº26 - 2º drtº', '592.pdf', 1, -1, '', -1, '', -1, '141170801', 3, '', '', '0000-00-00', '0000-00-00'),
(593, 'Claudete Patrícia da Silva Pinto Salvador', '1979-06-30', '2014-01-15 00:00:00', 1, 1, 6, 241535140, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 961624948, 0, 0, '', 'Luanda', 'Angola', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua 20 de Abril nº16 - 3º drtº', '593.pdf', 1, -1, '', -1, '', -1, '7t761637K', 1, '', '', '0000-00-00', '0000-00-00'),
(594, 'Mário Jorge Capela Pais', '1983-05-22', '2014-01-16 00:00:00', 1, 2, 5, 233029575, 1, 0, 0, 0, '', 1, 0, 0, 2, 26, 0, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 910206627, 0, 0, 'mariocpaix@gmail.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, 26, -1, -1, 0, 0, 1, 'Rua D.Nuno Alvares Pereira 41 - 3º esq', '594.pdf', 1, -1, '', -1, '', -1, '12739438', 3, '', '', '0000-00-00', '0000-00-00'),
(595, 'Ricardo Jorge Filipe Pereira', '1977-10-23', '2014-01-17 00:00:00', 1, 1, 1, 198467508, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 5, -1, 2, 0, '', 0, 0, '', 0, 963937508, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Quinta da Amoreira Grupo 3 porta 3', '595.pdf', 1, 1, '', -1, '', -1, '11429769', 3, '', '', '0000-00-00', '0000-00-00'),
(596, 'Paulo António Ramos Cardoso', '1989-03-13', '2014-12-15 00:00:00', 1, 1, -1, 224126865, 5, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 3, -1, 2, 0, '', 0, 0, '', 0, 934235162, 0, 0, '', '', '', 0, '', '1º Emprego', 7, 11, 0, -1, -1, -1, -1, -1, 0, 1, 'Bairro Alves Redol nº26 - 1º drtº ', '596.pdf', 1, -1, '', -1, '', -1, '13788561', 3, '', '', '0000-00-00', '0000-00-00'),
(597, 'Leandro Gonçalo Faria Moura', '1996-07-23', '2014-01-24 00:00:00', 2, 6, 3, 252664744, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 2, 1, 2, 0, '', 0, 0, '', 0, 914963055, 0, 0, 'leandro.faria.moura@gmail.com', 'Barreiro', 'Portugal', 0, '', '1º Emprego', 7, 11, 0, -1, -1, -1, -1, -1, 0, 1, 'Praceta Joaquim Gomes Malhado lote 138 r/c esq.', '597.pdf', 1, 1, '', -1, '', -1, '30364216-5ZZ7', 3, '', '', '0000-00-00', '0000-00-00'),
(598, 'Eduarda Lemos da Costa', '1987-03-23', '2014-01-28 00:00:00', 1, 1, 4, 243635524, 1, 0, 0, 0, 'Caixeira', 1, 0, 0, 2, 36, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 912100553, 0, 0, 'eduarda_costa_@hotmail.com', 'Baixa da Banheira', 'Portugal', 0, '', '', 7, 11, 1, 4, 36, -1, -1, 0, 0, 1, 'Praceta Avelar Brotero nº26 - 3º esq', '598.pdf', 1, -1, '', -1, '', -1, '13212350', 3, '', '', '0000-00-00', '0000-00-00'),
(599, 'Laurinda Balbina Martins', '1962-08-09', '2014-01-13 00:00:00', 2, 10, 4, 142956163, 4, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 965359880, 0, 0, 'laurindamariamartins@gmail.com', 'Moita', 'Portugal', 0, '', '', 7, 11, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua 5 de Outubro nº21-1º esq', '599.pdf', 1, -1, '', -1, '', -1, '06932429', 3, '', '', '0000-00-00', '0000-00-00'),
(600, 'Neusa Maria Lopes Domingos', '1977-07-19', '2014-12-15 00:00:00', 1, 1, 3, 264800400, 4, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 969351441, 0, 0, 'neusalopes77@hotmail.com', '', 'Cabo Verde', 0, '', '', 7, 11, 0, -1, 36, 35, -1, 0, 0, 1, 'Rua Armindo de Almeida nº 27 - 1º dto', '600.pdf', 1, -1, '', -1, '', -1, '454M446N7', 1, '', '', '0000-00-00', '0000-00-00'),
(601, 'Ana Cristina Barbosa Franco Figueiredo', '1969-11-19', '2014-12-15 00:00:00', 1, 2, 4, 194715485, 2, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 964563070, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '372269', '', 3, 18, 1, 4, 36, -1, -1, 0, 0, 1, 'Rua Marquês de Pombal, nº 28, 1º 2830-336', '601.pdf', -1, -1, '', -1, '', -1, '8820336 ', 4, '', '', '0000-00-00', '0000-00-00'),
(602, 'Ana Rosa Castanheira Fernandes', '0000-00-00', '2014-12-15 00:00:00', 1, 1, 4, 150679548, 1, 0, 0, 0, '', 0, 0, 0, -1, 42, 0, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 911966472, 0, 0, '', '', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 42, 6, 36, -1, 0, 1, 'Praceta das Flores CC 2 ', '602.pdf', 1, -1, '', -1, '', -1, '8632980', 3, '', '', '0000-00-00', '0000-00-00'),
(603, 'Cheila Sofia Fernandes Barbosa', '1988-05-24', '2014-12-15 00:00:00', 1, 1, 4, 247720747, 1, 0, 0, 0, '', 0, 0, 0, -1, 6, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '3245726', '', 3, 18, 0, -1, 6, 36, 35, -1, 0, 1, 'Praceta das Flores CC 2 ', '603.pdf', 1, -1, '', -1, '', -1, '13455862', 3, '', '', '0000-00-00', '0000-00-00'),
(604, 'Carla Sofia Gomes Queiroz Oliveira', '1983-09-23', '2014-12-15 00:00:00', 1, 2, 4, 229548865, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 924333172, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '1884335', '', 3, 18, 0, -1, 36, 35, 42, 0, 0, 1, 'Rui Miguel Pais nº 115 D 3ºEsq 2830-356', '604.pdf', -1, -1, '', -1, '', -1, '12676490', 3, '', '', '0000-00-00', '0000-00-00'),
(605, 'Débora Sofia Rodrigues Ferreira', '1994-01-09', '2014-12-15 00:00:00', 1, 1, 4, 230321623, 1, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 961506759, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 36, 42, -1, 0, 0, 1, 'Rua Poeta Sebastião da Gama, nº6, 3Esq        ', '605.pdf', 1, -1, '', -1, '', -1, '14691072', 3, '', '', '0000-00-00', '0000-00-00'),
(606, 'Maria de Lurdes Guimarães do Nascimento', '1959-04-04', '2014-12-15 00:00:00', 1, 1, 4, 136951660, 4, 0, 0, 0, '', 1, 0, 0, 2, 41, 0, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 962383344, 0, 0, '', '', 'Portuguesa', 1, '', '', 3, 18, 1, -1, 41, 12, -1, 0, 0, 1, 'Pct D. Miguel I, nº5, r/c esq', '606.pdf', 1, -1, '', -1, '', -1, '5429325 ', 3, '', '', '0000-00-00', '0000-00-00'),
(607, 'Luis Ricardo Peres Santos Cunha', '1978-01-16', '2014-12-15 00:00:00', 1, 2, 1, 226127621, 5, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 917113665, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '1795627', '', 3, 18, 0, -1, 11, 10, 35, 0, 0, 1, 'R. António Aguiar 234 R/C 2830-333', '607.pdf', -1, -1, '', -1, '', -1, '12720327', 3, '', '', '0000-00-00', '0000-00-00'),
(608, 'Ana Sofia Reis da Silva', '1994-02-11', '2014-12-15 00:00:00', 1, 2, 5, 271881704, 1, 0, 0, 0, '', 0, 0, 0, 1, 5, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 917113665, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 5, 36, 39, 0, 0, 1, 'R. António Aguiar 234 R/C 2830-333', '608.pdf', -1, -1, '', -1, '', -1, '14959274', 3, '', '', '0000-00-00', '0000-00-00'),
(609, 'Vera Lúcia Bravo Trindade', '1980-02-23', '2014-12-15 00:00:00', 1, 2, 4, 203787471, 5, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 910770123, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '1787133', '', 3, 18, 0, -1, 35, 42, 36, 0, 0, 1, 'Rua Cons. Joaquim António de Aguiar, nº 107, r/c dto', '609.pdf', -1, -1, '', -1, '', -1, '11783286', 3, '', '', '0000-00-00', '0000-00-00'),
(610, 'Liliana Pontes Borda d´Agua Sarmento', '1981-10-01', '2014-01-30 00:00:00', 1, 1, 4, 225972492, 2, 0, 0, 0, '', 1, 0, 0, 2, 36, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 917498786, 0, 0, 'liliana.sarmento1981@gmail.com', 'Nazaré', 'Portugal', 0, '', '', 7, 11, 1, 4, 36, -1, -1, 0, 0, 1, 'Rua de Goa nº62 - 1º', '610.pdf', 1, 1, '', -1, '', -1, '12680475 - 3Zy1', 3, '', '', '0000-00-00', '0000-00-00'),
(611, 'Carlos Filipe Fernandes Martins', '1980-01-07', '2014-12-15 00:00:00', 1, 2, 2, 218167741, 5, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 910770123, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '3049551', '', 3, 18, 1, 4, 11, 35, -1, 0, 0, 1, 'Rua Cons. Joaquim António de Aguiar, nº 107, r/c dto', '611.pdf', -1, -1, '', -1, '', -1, '11761006', 3, '', '', '0000-00-00', '0000-00-00'),
(612, 'Vilar José Vieira António ', '1956-10-18', '2014-12-15 00:00:00', 1, 2, 2, 150679718, 5, 0, 0, 0, '', 0, 0, 0, 2, 8, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 937030411, 0, 0, '', '', 'Portuguesa', 1, '2335207', '', 3, 18, 1, 4, 45, 8, -1, 0, 0, 1, 'R. Marquês de Pombal nº 83 2830-336', '612.pdf', -1, -1, '', -1, '', -1, '6136531', 3, '', '', '0000-00-00', '0000-00-00'),
(613, 'Tatiana Marisa da Costa Castanho', '1989-08-11', '2014-01-30 00:00:00', 1, 2, 3, 258486481, 1, 0, 0, 0, '', 1, 0, 0, 2, 36, 0, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 917274329, 0, 0, 'tatiana_castanho23@hotmail.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua D.Luís Furtado de Albuquerque nº1-A - 1º esq', '613.pdf', 1, -1, '', -1, '', -1, '13666523 3Zy1', 3, '', '', '0000-00-00', '0000-00-00'),
(614, 'Carla Sofia Carvalho Silvestre', '1981-03-13', '2014-01-30 00:00:00', 1, 2, 4, 217785864, 5, 0, 0, 0, '', 1, 0, 0, 2, 39, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 912031958, 0, 0, 'carla-carvalho81@hotmail.com', 'Marvila', 'Portugal', 0, '', '', 7, 11, 1, -1, 39, -1, -1, 0, 0, 1, 'Rua França Borges nº19 - 1º esq.', '614.pdf', 1, -1, '', -1, '', -1, '11920416 -  9ZZ9', 3, '', '', '0000-00-00', '0000-00-00'),
(615, 'Luis Domingos Soares', '1972-12-22', '2014-12-15 00:00:00', 1, 1, 5, 234613092, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 927805191, 0, 0, '', 'Angola', 'Angolano', 1, '', '', 3, 18, 0, -1, 11, 33, -1, 0, 0, 1, 'Rua Almirante José Mendes Cabeçadas, Lote 20, R/C Dto 2830-272', '615.pdf', -1, -1, '', -1, '', -1, '2798N39P2 ', 1, '', '', '0000-00-00', '0000-00-00'),
(616, 'Anabela Mendonça Correia', '1964-12-06', '2014-12-15 00:00:00', 1, 2, 4, 17874542, 4, 0, 0, 0, 'Empregada de Balcão', 1, 0, 0, 2, 39, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 926643420, 0, 0, 'mixterioxa_woman@hotmail.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, 39, 26, -1, 0, 0, 1, 'Rua Rodrigues da Conceição, bloco G nº7 - 2º drt', '616.pdf', 1, -1, '', -1, '', -1, '07702882', 3, '', '', '0000-00-00', '0000-00-00'),
(617, 'Margarida Mendes Gomes', '1989-05-05', '2014-02-05 00:00:00', 1, 1, 1, 235483311, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 3, -1, 1, 0, '', 0, 0, '', 0, 969420863, 0, 0, '', 'Praia', 'Cabo Verde', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Dr. Manual Pacheco Nobre nº18 - 2º esq', '617.pdf', -1, 1, '', -1, '', -1, '30815 Z18 - 4ZZ4', 3, '', '', '0000-00-00', '0000-00-00'),
(618, 'Bruno Fernando Vieira Pereira', '1985-04-05', '2014-02-05 00:00:00', 1, 1, 4, 238036219, 5, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 962006272, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 1, 4, -1, -1, -1, 0, 0, 1, 'Praceta Quinta da Maceda nº6 - 5º esq', '618.pdf', 1, -1, '', -1, '', -1, '12808200-3 ZZ8', 3, '', '', '0000-00-00', '0000-00-00'),
(619, 'Dulce Maria César Mota', '1987-04-24', '2014-02-10 00:00:00', 1, 2, 3, 224437275, 1, 0, 0, 0, 'Lavandaria Industrial', 1, 0, 0, 2, 26, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 920234782, 0, 0, 'dulcemcmota@netmail.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, 26, -1, -1, 0, 0, 1, 'Rua Camilo Castelo Branco nº32 r/c', '619.pdf', 1, -1, '', -1, '', -1, '13209692', 4, '', '', '0000-00-00', '0000-00-00'),
(620, 'Maria de Lurdes Plácido Martins Silva', '1970-02-17', '2014-12-15 00:00:00', 1, 1, 1, 198062613, 2, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 968663879, 0, 0, '', 'Lisboa', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta Quinta da Maceda nº6 -5º esq', '620.pdf', 1, -1, '', -1, '', -1, '10384201', 3, '', '', '0000-00-00', '0000-00-00'),
(621, 'Soraia Patrícia da Costa Antão', '1996-04-14', '2014-02-11 00:00:00', 1, 2, 3, 279914296, 1, 0, 0, 0, 'Zon', 1, 0, 0, 1, 8, 0, 0, '', 0, '', 2, -1, 1, 0, '', 0, 0, '', 0, 969725322, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, 8, 39, 15, 0, 0, 1, 'Rua D. Luís Furtado de Albuquerque nº1 A - 1º esq.', '621.pdf', 1, 1, '', -1, '', -1, '15216582', 3, '', '', '0000-00-00', '0000-00-00'),
(622, 'Vlademiro António dos Santos', '1969-09-10', '2014-02-12 00:00:00', 1, 1, 3, 252220471, 1, 0, 0, 0, 'Ajudante de Pedreiro e Ajudante de Estucador', 1, 0, 0, 2, 11, 0, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 964772184, 0, 0, '', 'Santo Antão', 'Cabo Verde', 0, '', '', 7, 11, 0, -1, 11, 1, -1, 0, 0, 1, 'Av. Movimento das Forças Armadas nº19 - 2º esq.', '622.pdf', 1, 1, '', -1, '', -1, 'R9640t207', 1, '', '', '0000-00-00', '0000-00-00'),
(623, 'Ana Filipa dos Anjos Caetano', '1983-07-16', '2014-02-19 00:00:00', 1, 4, 4, 237358395, 2, 0, 0, 0, 'Loja, Supermercado, Café', 1, 0, 0, 1, 36, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 911067562, 0, 0, 'ripanjos@hotmail.com', 'Sintra', 'Portugal', 0, '', '', 7, 11, 0, -1, 39, 42, 36, 0, 0, 1, '', '623.pdf', 1, -1, '', -1, '', -1, '12274268-0ZZ8', 3, '', '', '0000-00-00', '0000-00-00'),
(624, 'Wilson de Sousa Damião', '1988-10-01', '2014-02-25 00:00:00', 1, 2, 5, 231968590, 1, 0, 0, 1, '', 0, 0, 35, -1, -1, 0, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 963810759, 0, 0, 'wilsonsdamiao@gmail.com', 'Luanda', 'Angola', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 1, 0, 1, 'Praceta Ribeiro Sanchez nº11 - 10 C', '624.pdf', 1, -1, '', -1, '', -1, 'NO822469', 2, '', '', '0000-00-00', '0000-00-00'),
(625, 'Sandra Isabel de Jesus Pereira', '1986-11-12', '2014-02-25 00:00:00', 1, 1, 4, 245499946, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 961682524, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua 28 de Setembro nº48 r/c ', '625.pdf', 1, -1, '', -1, '', -1, 'CC13202765-82Y1', 3, '', '', '0000-00-00', '0000-00-00'),
(626, 'Joaquim António Pereira', '1956-07-11', '2014-02-28 00:00:00', 2, 10, 6, 200782720, 2, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 7, -1, 2, 0, '', 0, 0, '', 0, 965748084, 210862231, 0, '', 'Guiné Bissau', 'Portugal', 0, '', '', 7, 11, 1, 4, -1, -1, -1, 0, 0, 1, 'Av. José Almada Negreiros lote 24 - 1º dtº', '626.pdf', 1, -1, '', -1, '', -1, '15600895', 3, '', '', '0000-00-00', '0000-00-00'),
(627, 'Carlos Adelino Santos Pereira', '1963-04-11', '2014-12-15 00:00:00', 1, 2, 1, 153106921, 1, 0, 0, 0, 'Pedreiro', 0, 0, 0, -1, 11, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 914499784, 0, 0, '', 'Barreiro', 'Português', 1, '', '', 3, 18, 0, -1, 11, 10, 11, -1, 0, 1, 'Rua dos Combatentes da Grande Guerra, Pátio Coelho, n.º 11', '627.pdf', 1, 1, 'construção civil', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(628, 'Manuel Alfredo Almeida Araújo Miranda', '1963-07-11', '2014-02-28 00:00:00', 1, 2, 5, 202195082, 4, 0, 0, 0, 'Agência de Documentação', 0, 0, 0, -1, 41, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 968018443, 0, 0, 'mamiras@gmail.com', 'Guiné Bissau', 'Portugal', 0, '', '', 7, 11, 1, 4, 12, -1, -1, -1, 0, 1, 'Rua SIRB \"Os Penicheiros\" nº16-1º esq.', '628.pdf', 1, -1, '', 1, 'Estágio/Emprego', -1, '30159854', 3, '', '', '0000-00-00', '0000-00-00'),
(629, 'Carlos Alberto Leitão Gomes', '1974-01-25', '2014-12-15 00:00:00', 1, 2, 2, 201072076, 1, 0, 0, 0, 'Ajudante de eletricista', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 916219038, 0, 0, '', '', 'Português', 1, '', '', 3, 18, 0, -1, 11, 10, 10, 0, 0, 1, 'R 9 DE ABRIL 1 BAIRRO DAS PALMEIRAS - 2830-133 BARREIRO', '629.pdf', 1, 1, 'construção civil', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(630, 'Fábio Alexandre Vicente da Cunha', '1993-03-26', '2014-03-05 00:00:00', 1, 1, 3, 224627910, 5, 0, 0, 0, '', 1, 0, 0, 2, 39, 0, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 932328132, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, 39, -1, -1, 0, 0, 1, 'Rua de Goa nº60 - bloco D', '630.pdf', 1, -1, '', -1, '', -1, '14900284', 3, '', '', '0000-00-00', '0000-00-00'),
(631, 'Rute Marina Diogo Pereira', '1988-08-24', '2014-03-05 00:00:00', 1, 1, 4, 250357062, 5, 0, 0, 0, '', 1, 0, 0, 1, 36, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 932328132, 0, 0, '', 'Lisboa', 'Portugal', 0, '', '', 7, 11, 0, -1, 36, 39, 15, 0, 0, 1, 'Rua de Goa nº60 - bloco D', '631.pdf', 1, 1, 'Auxiliar de Ação Educativa', -1, '', -1, '13455973', 3, '', '', '0000-00-00', '0000-00-00'),
(632, 'Paula Cristina Rodrigues dos Santos', '1967-05-23', '2014-03-10 00:00:00', 1, 2, 6, 185772234, 2, 0, 0, 0, 'Gestora de Projetos', 1, 0, 0, 2, 43, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 963976550, 0, 0, 'paulacrsantos1967@gmail.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, 43, -1, -1, 0, 0, 1, 'Av. Mestre Manuel dos Santos Cabanas nº - 3º frt.', '632.pdf', 1, -1, '', -1, '', -1, '08035763', 3, '', '', '0000-00-00', '0000-00-00'),
(633, 'David Coelho Pereira Serra', '1969-02-15', '2014-12-15 00:00:00', 1, 2, -1, 225555603, 1, 0, 0, 0, '', 0, 0, 0, -1, 11, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Português', 1, '', '', 3, 18, 0, -1, 11, 11, 11, -1, 0, 1, 'R CONS JOAQUIM ANTÓNIO AGUIAR 312 B 1 - 2830-333 BARREIRO', '633.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(634, 'Maria Jacinta Gomes Malato', '1975-09-03', '2014-03-11 00:00:00', 1, 2, 3, 201885360, 1, 0, 0, 0, '', 1, 0, 0, 1, 36, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 918983530, 0, 0, 'tininha75@live.com.pt', 'Alhos Vedros', 'Portugal', 0, '', '', 7, 11, 0, -1, 39, 42, -1, 0, 0, 1, 'Rua Grão Vasco nº30 - 3º esq.', '634.pdf', 1, -1, '', -1, '', -1, '11332558', 3, '', '', '0000-00-00', '0000-00-00'),
(635, 'Ana Maria Piedade Santos', '1970-05-17', '2014-03-11 00:00:00', 1, 1, 5, 212309099, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 926706640, 0, 0, '', 'Lisboa', 'Portugal', 0, '', '', 7, 11, 1, 4, -1, -1, -1, 0, 0, 1, 'Rua D. Luís de Ataíde nº11-1º esq', '635.pdf', 1, -1, '', -1, '', -1, '10139061-3ZZ0', 3, '', '', '0000-00-00', '0000-00-00'),
(636, 'Pedro Eduardo Colaço de Almeida', '1960-06-24', '2014-03-13 00:00:00', 1, 2, 4, 136217885, 4, 0, 0, 0, 'Carpintaria e Marcenaria', 1, 0, 0, 2, 11, 0, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 913687468, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Miguel Pais nº31-3º C', '636.pdf', 1, -1, '', -1, '', -1, '05512421', 3, '', '', '0000-00-00', '0000-00-00'),
(637, 'Domingos Eusébio Semedo Vieira ', '1962-12-16', '2014-12-15 00:00:00', 1, 2, 2, 186581580, 1, 0, 0, 0, 'Vigilante / Segurança', 0, 0, 0, 1, 14, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 925263383, 0, 0, '', 'Cabo Verde', 'Português', 1, '', '', 3, 18, 0, -1, 10, 10, 10, 0, 0, 1, 'Rua 1º de Maio, 85', '637.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(638, 'Catarina Ferreira Gonçalves', '1972-07-25', '2014-03-12 00:00:00', 1, 2, 4, 216260116, 5, 0, 0, 0, '', 1, 0, 0, 2, 26, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 926326286, 0, 0, 'amauryrobertomichelle@hotmail.com', 'Angola', 'Portugal', 0, '', '', 7, 11, 0, -1, 26, 35, 39, 0, 0, 1, 'Rua Sociedade de Instrução e Recreio Barreirense \"Os Penicheiros\", nº16 - 1º esq', '638.pdf', 1, -1, '', -1, '', -1, '12492607', 3, '', '', '0000-00-00', '0000-00-00'),
(639, 'Emérico Nicolau Dores Fátima do Rosário', '1957-09-13', '2014-12-15 00:00:00', 1, 1, 1, 116481404, 1, 0, 0, 0, 'Administrativo', 0, 0, 0, -1, 41, 0, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Português', 1, '', '', 3, 18, 0, -1, 41, 41, 41, -1, 0, 1, 'R Francisco Casal N 37 6 B Verderena - 2830-283 Barreiro', '639.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(640, 'Vladir Gomes da Cruz', '1986-06-14', '2014-03-13 00:00:00', 1, 1, 5, 249752131, 1, 0, 0, 0, 'Montagem de Cozinhas (Marmore)', 1, 0, 0, 2, 11, 0, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 968950191, 0, 0, 'vladirgomes@hotmail.com', 'São Vicente', 'Cabo Verde', 0, '', '', 7, 11, 0, -1, 11, -1, -1, 0, 0, 1, 'Quinta da Amoreira Grupo 7 nº2', '640.pdf', 1, -1, '', -1, '', -1, 'J261098', 2, '', '', '0000-00-00', '0000-00-00'),
(641, 'Nuira Suraia da Costa Gomes', '1987-03-03', '2014-03-20 00:00:00', 2, 10, 4, 248795485, 2, 0, 0, 0, '', 1, 0, 0, 2, 35, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 966078291, 0, 0, 'nuira.gomes@gmail.com', 'Guiné Bissau', 'Portugal', 0, '', '', 7, 11, 1, 4, 39, 26, -1, 0, 0, 1, 'Av. Diogo Cão lote 1 - 2º A', '641.pdf', 1, -1, '', -1, '', -1, '30734319', 2, '', '', '0000-00-00', '0000-00-00'),
(642, 'Francisco Monteiro ', '1961-02-02', '2014-12-15 00:00:00', 1, 2, 1, 123298121, 1, 0, 0, 0, 'Pedreiro', 0, 0, 0, -1, 11, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 964115923, 0, 0, '', '', '', 1, '', '', 3, 18, 0, -1, 11, 11, 11, -1, 0, 1, 'Rua 1.º de Maio N 55 A Porta 8 Bairro das Palmeiras - 2830-131 Barreiro', '642.pdf', -1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(643, 'Florentino João Correia', '1987-06-15', '2014-03-20 00:00:00', 1, 4, 5, 260423114, 1, 0, 0, 0, 'Armazém', 1, 0, 0, 2, 45, 0, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 920164045, 0, 0, 'florentinojoaocorreia@gmail.com', 'Guiné Bissau', 'Guiné Bissau', 0, '', '', 7, 11, 0, -1, 45, -1, -1, 0, 0, 1, 'Rua 10 lote 60 - 5º C', '643.pdf', 1, -1, '', -1, '', -1, '553446V3W', 1, '', '', '0000-00-00', '0000-00-00'),
(644, 'Diminga Gomes', '1992-10-24', '2014-03-20 00:00:00', 2, 10, 4, 264199804, 1, -1, -1, -1, 'Ajudante de Cozinha', -1, -1, 0, 2, 39, -1, -1, '', -1, '', 3, 2, 1, -1, '', -1, -1, '', -1, 966697740, -1, -1, 'dimingagomes@gmail.com', 'Senegal', 'Senegal', -1, '', '', 7, 11, -1, -1, 39, -1, -1, 0, -1, 1, 'Praceta Ferreira de Castro lote 51 - 1º esq.', '644.pdf', 1, -1, '', -1, '', -1, '8PO59385M', 1, '', '', '0000-00-00', '0000-00-00'),
(645, 'Hélder Manuel Pereira Ceita', '1968-09-08', '2014-12-15 00:00:00', 1, 1, 3, 184876982, 1, 0, 0, 0, 'Churrasqueiro', 0, 0, 0, -1, 39, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 964383022, 0, 0, '', '', 'Português', 1, '', '', 3, 18, 0, -1, 39, 39, 10, -1, 0, 1, 'Av do Bocage , 71, 1.º Dto 2830-246 Barreiro', '645.pdf', -1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(646, 'Rute Sanhá', '1982-05-07', '2014-03-20 00:00:00', 2, 10, 4, 257019901, 1, 0, 0, 0, 'Ajudante de Cozinha', 1, 0, 0, 2, 39, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 927136822, 0, 0, 'ruthsanha@hotmail.com', 'Guiné Bissau', 'Guiné Bissau', 0, '', '', 7, 11, 0, -1, 39, 35, -1, 0, 0, 1, 'Rua Teixeira Pascoais lote 10 r/c drtº', '646.pdf', 1, -1, '', -1, '', -1, '31066097 - 1ZZ0', 3, '', '', '0000-00-00', '0000-00-00'),
(647, 'Ilídio Varela Almeida', '1960-10-04', '2014-12-15 00:00:00', 1, 2, 2, 164963405, 1, 0, 0, 0, '', 0, 0, 0, -1, 10, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 962084585, 0, 0, '', '', 'Português', 1, '', '', 3, 18, 0, -1, 10, 10, 10, -1, 0, 1, 'Rua 1.º de Maio n.º 55A Porta 4 Bairro das Palmeiras', '647.pdf', -1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(648, 'Paulo Jorge Gonçalves Barbas', '1972-08-28', '2014-03-19 00:00:00', 1, 1, 5, 185988652, 4, 1, 0, 0, '', 0, 0, 8, -1, 8, 0, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 964148038, 0, 0, 'p1972b@gmail.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, 28, 45, 3, 1, 0, 1, 'Praceta da Quinta Grande nº5 - 2º esq.', '648.pdf', 1, -1, '', -1, '', -1, '09812042', 3, '', '', '0000-00-00', '0000-00-00'),
(649, 'José Lima Fortes', '1962-08-24', '2014-12-15 00:00:00', 1, 1, 2, 169724638, 1, 0, 0, 0, '', 0, 0, 0, -1, 10, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 967575375, 0, 0, '', '', 'Português', 1, '', '', 3, 18, 0, -1, 10, 10, 10, -1, 0, 1, 'R Sampaio Melo 8 Rc Esq - 2830-281 Barreiro', '649.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(650, 'Bressit Mendes', '1982-09-23', '2014-03-20 00:00:00', 1, 4, 1, 264582764, 2, 0, 0, 0, 'Ajudante de Cozinha', 1, 0, 0, 2, 39, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 920231097, 0, 0, '', 'Guiné Bissau', 'Portugal', 0, '', '', 7, 11, 0, -1, 39, -1, -1, 0, 0, 1, 'Rua 12 lote 68 r/c A', '650.pdf', 1, -1, '', -1, '', -1, '31316882', 3, '', '', '0000-00-00', '0000-00-00'),
(651, 'Emanuel Delgado Monteiro', '1968-12-23', '2014-12-15 00:00:00', 1, 1, 4, 221300929, 2, 0, 0, 0, 'Pedreiro', 0, 0, 0, 1, 11, 0, 1, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 925200858, 0, 0, '', 'Cabo Verde', 'Português', 1, '', '', 3, 18, 1, 4, 11, 10, 10, 0, 0, 1, 'R Jacinto Nicola 19 3 Dto Verderena - 2830-284 Barreiro', '651.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(652, 'Norberto Jorge Fernandes Saiote', '1981-11-21', '2014-06-02 22:00:00', 2, 6, 4, 219165416, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 966643185, 0, 0, 'norbertosaiote32@gmail.com', 'Lisboa', 'Portugal', 0, '', '', 7, 11, 1, 4, -1, -1, -1, 0, 0, 1, 'Rua Luzia dos Santos nº2 - 1º esq', '652.pdf', 1, -1, '', -1, '', -1, '12307143', 3, '', '', '0000-00-00', '0000-00-00'),
(653, 'Marcos David Gonçalves Cardoso dos Reis', '1963-01-03', '2014-03-19 00:00:00', 1, 2, 3, 153995106, 5, 0, 0, 0, 'Operador de Empilhador', 1, 0, 0, 2, 45, 0, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 964296068, 0, 0, 'davidmarcosdosreis@gmail.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, 45, 15, -1, 0, 0, 1, 'Marcos David Gonçalves Cardoso dos Reis', '653.pdf', 1, 1, 'Soldadura', -1, '', -1, '07759500', 3, '', '', '0000-00-00', '0000-00-00'),
(654, 'Maricler Marcelo Blez', '1988-06-20', '2014-03-25 00:00:00', 2, 10, 5, 261180614, 1, 0, 0, 0, '', 1, 0, 0, 2, 26, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 962460545, 0, 0, 'mari_blez@hotmail.com', 'Guiné Bissau', 'Guiné Bissau', 0, '', '', 7, 11, 0, -1, 42, 26, 5, 0, 0, 1, 'Rua José da Conceição Nunes lote 74 r/c drtº', '654.pdf', 1, -1, '', -1, '', -1, '033023', 1, '', '', '0000-00-00', '0000-00-00'),
(655, 'Carla Susana da Silva Caramona', '1973-07-28', '2014-03-25 00:00:00', 1, 1, 4, 206329679, 4, 0, 0, 0, 'Lavandaria Industrial', 1, 0, 0, 2, 35, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 919392321, 0, 0, 'carlacaramona@hotmail.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, 39, 5, 35, 0, 0, 1, 'Rua Julio Dinis nº56-2º esq', '655.pdf', 1, -1, '', -1, '', -1, '108158847', 3, '', '', '0000-00-00', '0000-00-00'),
(656, 'Nídia Carina da Cruz Garcia Alves', '1981-09-09', '2014-03-25 00:00:00', 1, 2, 5, 226837998, 2, 0, 0, 0, 'Apoio Domiciliário', 1, 0, 0, 2, 42, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 918501482, 0, 0, 'carinalves25@hotmail.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Poeta Afonso Lopes Vieira nº6 - 2º drtº', '656.pdf', 1, -1, '', 1, 'Auto Emprego', -1, '12192744', 3, '', '', '0000-00-00', '0000-00-00'),
(657, 'Cristina Luisa Palma Mendes', '1975-08-05', '2014-03-25 00:00:00', 1, 2, 4, 202729818, 4, 0, 0, 0, 'Lavandaria Industrial', 1, 0, 0, 1, 26, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 912448981, 0, 0, 'cristinaluisamendes@hotmail.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, 39, 26, -1, 0, 0, 1, 'Rua Piloto Nascimento Costa nº15 - 3º drtº', '657.pdf', 1, -1, '', -1, '', -1, '10783477', 3, '', '', '0000-00-00', '0000-00-00'),
(658, 'Tânia Marina Martins Afonso', '1976-09-22', '2014-12-15 00:00:00', 1, 1, 6, 216699851, 1, 0, 0, 0, '', 0, 0, 0, 1, 15, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 936441196, 0, 0, 'tania.afonso@gmail.com', '', 'Portuguesa', 1, '', '', 3, 18, 1, 4, 15, 42, 23, 0, 0, 1, 'Av. D. Afonso Henriques, nº23, 2º esq 2830-247', '658.pdf', 1, -1, '', -1, '', -1, '10800080', 3, '', '', '0000-00-00', '0000-00-00'),
(659, 'Bruno Silva Montes ', '1993-09-21', '2014-12-15 00:00:00', 1, 2, 2, 226238660, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 35, -1, -1, 0, 0, 1, 'Travessa Padre Abilio Mendes, nº21', '659.pdf', 1, 1, '', -1, '', -1, '14051318', 3, '', '', '0000-00-00', '0000-00-00'),
(660, 'Fernando Lopes Bastos', '1956-08-26', '2014-12-15 00:00:00', 1, 1, 1, 153099984, 1, 0, 0, 0, 'Carpinteiro', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, -1, 2, 0, '', 0, 0, '', 0, 0, 935382923, 0, '', 'Barreiro', 'Portuguesa', 1, '4113654', '', 3, 18, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Armindo de Almeida nº 29 - 1ª Esquerdo', '660.pdf', 1, -1, '', -1, '', -1, '72005522', 3, '', '', '0000-00-00', '0000-00-00'),
(661, 'Estela Cardoso da Luz', '1978-11-01', '2014-12-15 00:00:00', 1, 2, 1, 235205176, 5, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 0, '', '', 3, 18, 0, -1, -1, -1, -1, -1, 0, 1, 'Rua 1º de Maio Nº 105 R/C D Bairro das Palmeiras', '661.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(662, 'Maria Isabel Tavares Moreira Vaz', '1969-12-01', '2014-12-15 00:00:00', 1, 2, 4, 234034629, 2, 0, 0, 0, 'Auxiliar em Lar  ', 0, 0, 0, 2, 40, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 962381730, 0, 0, '', '', 'Cabo verde ', 1, '', '', 3, 18, 1, 4, 24, 40, 35, 0, 0, 1, 'Rua Miguel Pais Nº121 A 3 Dto', '662.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(663, 'José Domingos Nunes Vaz', '1979-09-22', '2014-12-15 00:00:00', 1, 2, 4, 226738752, 2, 0, 0, 0, 'Manobrador de maquinaria pesada, e terraplanagem', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 969222228, 0, 0, '', '', 'Cabo verde ', 0, '', '', 3, 18, 1, 13, 11, -1, -1, 0, 0, 1, 'Rua Miguel Pais Nº121 A 3 Dto', '663.pdf', 1, -1, '', -1, '', -1, '', 1, '', '', '0000-00-00', '0000-00-00'),
(664, 'Cristina Alexandra Cordeiro da Luz', '1964-05-08', '2014-12-15 00:00:00', 1, 2, 5, 188393412, 1, 0, 0, 0, 'Assistente Administrativa', 1, 0, 0, 2, 41, 0, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 936233499, 0, 0, '', '', 'Portuguesa ', 1, '', '', 3, 18, 0, -1, 41, -1, -1, 0, 0, 1, ' Rua José Elias Garcia 26 R/C', '664.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(665, 'Lúcio José Ramos Fialho', '1993-12-23', '2014-12-15 00:00:00', 1, 2, 3, 224033018, 1, 0, 0, 0, 'Vendedor Ambulante', 0, 0, 0, 2, 8, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '', '', 3, 18, 1, 4, 8, 10, 19, 0, 0, 1, 'Travessa Padre Abílio Mendes, Nº 19 R/C', '665.pdf', 1, -1, '', -1, '', -1, '15463247', 3, '', '', '0000-00-00', '0000-00-00'),
(667, 'Pedro Miguel Plácido Peccavin Mota', '1973-11-05', '2014-03-20 00:00:00', 1, 2, 4, 196047550, 4, 0, 0, 0, 'Instalação de Paineis Solares', 1, 0, 0, 1, 43, 0, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 914831780, 0, 0, 'pedromota@hotmail.com', 'Amadora', 'Portugal', 0, '', '', 7, 11, 1, 4, 43, 11, 39, 0, 0, 1, 'Rua Piloto Nascimento Costa nº15-3º drtº', '667.pdf', 1, -1, '', -1, '', -1, '10441116', 3, '', '', '0000-00-00', '0000-00-00'),
(668, 'Valentina Pedro Bampoque', '1985-06-16', '2014-03-27 00:00:00', 2, 6, 1, 283331950, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 961072520, 0, 0, 'valentinabampoque@gmail.com', 'Guiné Bissau', 'Guiné Bissau', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua 1º de Maio nº35 - 3º frt', '668.pdf', 1, -1, '', -1, '', -1, '17X1X4142', 1, '', '', '0000-00-00', '0000-00-00'),
(669, 'Ana Catarina Serrador Nunes', '1978-04-01', '2014-03-20 00:00:00', 1, 1, 4, 219598258, 1, 0, 1, 0, '', 0, 0, 35, -1, 35, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 969402085, 0, 0, '', 'Lisboa', 'Portugal', 0, '', '', 7, 11, 0, -1, 35, -1, -1, 1, 0, 1, 'Rua Dr. Manuel Pacheco Nobre', '669.pdf', 1, -1, '', -1, '', -1, '11284245', 3, '', '', '0000-00-00', '0000-00-00'),
(670, 'Marisa Alexandra Gomes da Silva', '1984-04-04', '2014-03-31 22:00:00', 1, 4, 5, 229519407, 1, 0, 0, 0, 'Barclays', 1, 0, 0, 1, 8, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 963481965, 0, 0, 'marisas@sapo.pt', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 1, 4, 36, 35, -1, 0, 0, 1, 'Rua Manuel Carrapeto nº14-3º esq', '670.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(671, 'Adirlene Lopes da Silva', '1970-07-30', '2014-03-31 22:00:00', 1, 1, 5, 247107638, 4, 0, 0, 0, 'Bomba de Gasolina', 1, 0, 0, 2, 35, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 961485581, 0, 0, 'adirlenelopes@hotmail.com', 'Brasil', 'Brasil', 0, '', '', 7, 11, 1, 4, 39, 35, 8, 0, 0, 1, 'Rua Diogo Cão nº4-A - 3º drt', '671.pdf', 1, -1, '', -1, '', -1, '570Q12925', 1, '', '', '0000-00-00', '0000-00-00'),
(672, 'Malcolm Miguel Soares da Gama', '1989-05-13', '2014-03-31 22:00:00', 1, 1, 4, 281024130, 1, 0, 0, 0, 'Vendedor Ambulante', 1, 0, 0, 2, 8, 0, 0, '', 0, '', 3, -1, 2, 0, '', 0, 0, '', 0, 961138013, 216071179, 0, 'malcolmmiguel30@gmail.com', 'Barreiro', 'Guiné Bissau', 0, '', '', 7, 11, 0, -1, 8, 15, -1, 0, 0, 1, 'Av. D. Afonso Henriques nº75 - 2º esq', '672.pdf', 1, 1, 'Informática', -1, '', -1, 'AAIN16309', 2, '', '', '0000-00-00', '0000-00-00'),
(673, 'Feliciano José Rodrigues', '1993-08-03', '2014-03-31 22:00:00', 1, 1, 4, 279660367, 1, 0, 0, 0, 'Ajudante de Pintor', 0, 0, 0, -1, 11, 0, 0, '', 0, '', 3, -1, 2, 0, '', 0, 1, 'Curso de Contabilidade', 0, 920164014, 0, 0, '', 'Guiné Bissau', 'Guiné Bissau', 0, '', '', 7, 11, 0, -1, -1, -1, -1, -1, 1, 1, 'Rua da Recosta nº1 -1º esq', '673.pdf', 1, -1, '', -1, '', -1, 'XW0808588', 1, '', '', '0000-00-00', '0000-00-00'),
(674, 'Marina Sofia da Costa Cotovio', '1975-03-11', '2014-04-06 22:00:00', 2, 6, 4, 211743607, 4, 1, 0, 0, '', 0, 0, 5, -1, -1, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 967812846, 0, 0, '', 'Baixa da Banheira', 'Portugal', 0, '', '', 7, 11, 1, 4, 40, -1, -1, 1, 0, 1, 'Rua Clube União Banheirense \"O Chinquilho\" nº11 - 2º drtº', '674.pdf', 1, 1, 'Para-Farmácia', -1, '', -1, '967812846', 3, '', '', '0000-00-00', '0000-00-00'),
(675, 'Anildo Pereira Carvalho', '1988-12-12', '2014-04-07 22:00:00', 2, 6, 4, 256842450, 1, 0, 0, 0, '', 1, 0, 0, 1, 11, 0, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 969320466, 0, 0, 'anildo-19@hotmail.com', 'Moita', 'Cabo Verde', 0, '', '', 7, 11, 0, -1, 39, 11, -1, 0, 0, 1, 'Rua Florbela Espanca nº28 r/c esq', '675.pdf', 1, -1, '', -1, '', -1, '044315', 2, '', '', '0000-00-00', '0000-00-00'),
(676, 'Tcehodja Abião Mendes Cantecali', '1994-02-03', '2014-04-07 22:00:00', 1, 1, 5, 244775893, 1, 0, 0, 0, 'Estágio de Manicure e Depilação', 0, 0, 0, -1, 5, 0, 0, '', 0, '', 3, -1, 1, 0, '', 0, 0, '', 0, 965765547, 211817360, 0, 'toiaguineense_90@hotmail.com', '', '', 0, '', '', 7, 11, 0, -1, 5, 35, -1, -1, 0, 1, 'Av. Santa Maria nº18 - 7º drtº', '676.pdf', 1, -1, '', -1, '', -1, '31162Q0RS', 1, '', '', '0000-00-00', '0000-00-00'),
(677, 'Angela Cristina Gonçalves Tadeu', '1987-03-27', '2014-04-07 22:00:00', 1, 2, 4, 224865935, 1, 0, 0, 0, '', 1, 0, 0, 1, 26, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 913600695, 0, 0, 'myangel_17_1_@hotmail.com', '', '', 0, '', '', 7, 11, 1, -1, 42, 36, -1, 0, 0, 1, 'Rua Palmira Bastos nº18-2º Esq', '677.pdf', 1, -1, '', -1, '', -1, '13203268-6ZZ3', 3, '', '', '0000-00-00', '0000-00-00'),
(678, 'Claudio Renato dos Santos Quitério', '1982-12-07', '2014-04-07 22:00:00', 1, 2, 5, 232244324, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 960214262, 212458004, 0, 'egorenato@hotmail.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 1, 4, -1, -1, -1, 0, 0, 1, 'Av.Bocage bloco A nº2 - 2º frt', '678.pdf', 1, -1, '', -1, '', -1, '12442342', 3, '', '', '0000-00-00', '0000-00-00'),
(679, 'Sónia Maria Bolinhas Gonçalves', '1980-07-25', '2014-04-01 22:00:00', 1, 3, 3, 222575590, 1, 0, 0, 0, 'Ajudante de Cozinha', 1, 0, 0, 1, 39, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 911837284, 210855626, 0, '', 'Alcochete', 'Portugal', 0, '', '', 7, 11, 0, -1, 42, 35, -1, 0, 0, 1, 'Rua Voz do Operário lote 204-B - Quinta do Torrão', '679.pdf', 1, -1, '', -1, '', -1, '12241296', 3, '', '', '0000-00-00', '0000-00-00'),
(680, 'Rafaela Merina Ramos', '1969-05-26', '2014-04-10 22:00:00', 1, 4, 1, 190079398, 1, 0, 0, 0, 'Vendedor Ambulante', 0, 0, 0, -1, 8, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 933147099, 0, 0, '', 'Beja', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, -1, 0, 1, 'Rua 13 lote 9-1ºesq. - Quinta da Mina', '680.pdf', 1, -1, '', 1, 'Auto Emprego', -1, '10757589', 3, '', '', '0000-00-00', '0000-00-00'),
(681, 'Tânia Alexandra Guerreiro Bonifácio', '1990-12-31', '2014-04-13 22:00:00', 1, 1, 4, 262878291, 1, 0, 0, 0, 'Auxiliar de Armazém na AutoEuropa', 1, 0, 0, 2, 45, 0, 0, '', 0, '', 3, -1, 1, 0, '', 0, 0, '', 0, 912635602, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 1, 4, 45, -1, -1, 0, 0, 1, 'Rua S. João Batista de Ajudá nº35 - 1º esq', '681.pdf', 1, -1, '', -1, '', -1, '13787612 2ZZ7', 3, '', '', '0000-00-00', '0000-00-00'),
(682, 'Byl Wallace Sarmento', '1976-08-17', '2014-04-13 22:00:00', 1, 2, 3, 223120820, 2, 0, 0, 0, '', 1, 0, 0, 1, 26, 0, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 920960632, 0, 0, 'bwsarmento@hotmail.com', 'Brasil', 'Brasil', 0, '', '', 7, 11, 0, -1, 26, 11, -1, 0, 0, 1, 'Rua Dona Francisca de Azambuja nº34-3º esq', '682.pdf', 1, -1, '', -1, '', -1, '040213', 1, '', '', '0000-00-00', '0000-00-00'),
(683, 'Fátima Jaló', '1967-03-01', '2014-04-13 22:00:00', 1, 2, 3, 279861150, 1, 0, 0, 0, 'Ajudante de Cozinha', 1, 0, 0, 2, 39, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 966154984, 0, 0, 'fatimadjalo67@gmail.com', 'Guiné Bissau', 'Guiné Bissau', 0, '', '', 7, 11, 0, -1, 39, 35, -1, 0, 0, 1, 'Rua Vasco da Gama nº49-C - 2º', '683.pdf', 1, -1, '', -1, '', -1, '1946V8X70', 1, '', '', '0000-00-00', '0000-00-00'),
(684, 'Edson Jair Tavares Mendes', '1991-07-14', '2014-04-06 22:00:00', 1, 2, 3, 269649727, 1, 0, 0, 0, '', 1, 0, 0, 2, 26, 0, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 963062183, 0, 0, '', 'Cabo Verde', 'Cabo Verde', 0, '', '', 7, 11, 0, -1, 10, 43, 26, 0, 0, 1, 'Rua Candido Manuel Pereira nº2 D - 1º drt', '684.pdf', 1, -1, '', -1, '', -1, 'R49R74698', 1, '', '', '0000-00-00', '0000-00-00'),
(685, 'José Luís Mendes', '1967-11-01', '2014-04-06 22:00:00', 1, 2, 3, 255791267, 4, 0, 0, 0, 'Pedreiro', 1, 0, 0, 2, 11, 0, 0, '', 0, '', 5, -1, 2, 0, '', 0, 0, '', 0, 967555469, 0, 0, '', 'Cabo Verde', 'Cabo Verde', 0, '', '', 7, 11, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Cadido Manuel Pereira nº2 D - 1º drtº', '685.pdf', 1, -1, '', -1, '', -1, '81T129568', 1, '', '', '0000-00-00', '0000-00-00'),
(686, 'Carlos Ivan Tchamile Coelho', '1980-07-24', '2014-04-13 22:00:00', 3, -1, 4, 257603506, 1, 0, 0, 0, 'Ajudante de Cozinha', 1, 0, 0, 2, 39, 0, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 965263294, 0, 0, 'iosvan@hotmail.com', 'Luanda', 'Angola', 0, '', '', 7, 11, 0, -1, 39, 41, -1, 0, 0, 1, 'Rua Adelaide Cabete nº2 - 3º A', '686.pdf', 1, -1, '', -1, '', -1, '2Q0T68367', 1, '', '', '0000-00-00', '0000-00-00'),
(687, 'Miguel Ângelo Fonseca da Cruz', '1995-03-31', '2014-12-15 00:00:00', 1, 1, 4, 270594280, 1, -1, -1, -1, '', -1, -1, 0, 2, 11, -1, -1, '', -1, '', 2, 1, 2, -1, '', -1, -1, '', -1, -1, -1, -1, 'miguelfonsecacruz@gmail.com', 'Barreiro', 'Portuguesa', 1, '', '', 14, 12, -1, -1, 39, 33, 42, 0, -1, 1, '', '687.pdf', 1, 1, 'Equivalência ao 12º ano', -1, '', -1, '304173118 zz1', 3, '', '', '0000-00-00', '0000-00-00'),
(688, 'Carlos Manuel Rodrigues Tavares', '1958-02-20', '2014-12-15 00:00:00', 1, 1, 2, 160041961, 1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 962104124, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '1872179', '', 3, 18, 0, -1, 35, 11, 39, 0, 0, 1, 'Rua Miguel Pais, nº 64 r/c esq. 2830-356', '688.pdf', 1, -1, '', -1, '', -1, '6045103', 3, '', '', '0000-00-00', '0000-00-00'),
(689, 'José Luis da Silva Fernandes', '1960-10-02', '2014-12-15 00:00:00', 1, 1, 2, 156261561, 4, 0, 0, 0, '', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 911500542, 0, 0, '', '', 'Portuguesa', 1, '2891872', '', 3, 18, 0, -1, 11, 26, 35, 0, 0, 1, 'Rua Almirante José Mendes Cabeçadas, nº56, 2ºDto 2830-272', '689.pdf', 1, -1, '', -1, '', -1, '6103324', 3, '', '', '0000-00-00', '0000-00-00');
INSERT INTO `utentes` (`id`, `nome`, `dataNascimento`, `dataInscricao`, `idConcelho`, `idFreguesia`, `idHabilitacoes`, `NIF`, `idEstadoCivil`, `trabalhadorPrecario`, `PrestadorDeServicos`, `TrabalhadorContaOutrem`, `ultimaProfissaoExercida`, `semSubsidio`, `subsidioDesemprego`, `EspecificacaoEmprego`, `tempoDesempregado`, `ultimaProfissaoExercidaDesempregado`, `beneficiarioRSI`, `outrosSubsidios`, `QuaisOutrosSubsidios`, `Estudante`, `estabelecimentoEnsino`, `idGrupoEtario`, `idSituacaoRegularizada`, `idGenero`, `MedidasAtivasEmprego`, `QualMedidasAtivasEmprego`, `Voluntariado`, `FormacaoProfissional`, `QualFormacaoProfissional`, `Biscates`, `Telemovel`, `Telefone`, `OutroTelefone`, `Email`, `Naturalidade`, `Nacionalidade`, `InscritoCentroEmprego`, `NumeroInscricaoCentroEmprego`, `Observacoes`, `idFrontOfficeSinalizador`, `idTecnico`, `cartaDeConducao`, `cartaDeConducaoCategoriaID`, `interesseProfissional1`, `interesseProfissional2`, `interesseProfissional3`, `empregado`, `outraSituacao`, `estado`, `morada`, `CV`, `pedidoInicialEmprego`, `pedidoInicialFormacao`, `pedidoInicialFormacaoQual`, `pedidoInicialOutra`, `pedidoInicialOutraQual`, `NISS`, `numeroIdentificacao`, `tipoDocumentoIdentificacao`, `codPostal`, `nrCartaConducao`, `validadeDocumentoIdentificacao`, `emissaoCartaConducao`) VALUES
(690, 'Maria Luisa Messias Gonçalves', '1972-01-05', '2014-12-15 00:00:00', 1, 1, 3, 222183918, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 916042225, 0, 0, '', '', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 36, 42, 5, 0, 0, 1, 'Rua da Recosta, nº 11, 3º Esq', '690.pdf', -1, -1, '', -1, '', -1, '12260624', 3, '', '', '0000-00-00', '0000-00-00'),
(691, 'Paulina Benvinda Lelo', '1969-03-10', '2014-12-15 00:00:00', 1, 1, 3, 211309290, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 914946464, 0, 0, '', 'Angola', 'Angolana', 1, '1707132', '', 3, 18, 0, -1, 35, 36, -1, 0, 0, 1, 'Rua Armindo de Almeida nº 16, 10ºC 2830-275', '691.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(692, 'Pascoal Mendes', '1953-06-03', '2014-12-15 00:00:00', 1, 1, 2, 176915524, 2, 0, 0, 0, 'Pintor', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 965662991, 0, 0, '', 'Guiné ', 'Guineense', 1, '', '', 3, 18, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Jacinto Nicola, Nº 5 2º Esquerdo 2830-284 Verderena', '692.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(693, 'Carmino dos Santos Duarte', '1963-06-08', '2014-12-15 00:00:00', 1, 1, 2, 118112740, 4, 0, 0, 0, 'Servente', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', 'Covilhã', 'Portuguesa', 1, '', 'Está Disponivel para (CEI+)', 3, 18, 0, -1, 11, 10, 26, 0, 0, 1, 'Rua Alves da Cunha, Nº 53 2830 Verderema', '693.pdf', 1, 1, 'Aumento de Escolariedade', -1, '', -1, '08090135', 3, '', '', '0000-00-00', '0000-00-00'),
(695, 'José Manuel Domingos Guerreiro', '1957-06-19', '2014-12-15 00:00:00', 1, 1, 4, 183560019, 2, 0, 0, 0, 'Serralheiro de 2ª', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, 'josguerreiro5@gmail.com', 'Portuguesa', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 11, 10, -1, 0, 0, 1, 'Av. Afonso Henriques nº 69 r/c Dtº - 2830 / 247- Barreiro', '695.pdf', 1, -1, '', -1, '', -1, '5198405', 4, '', '', '0000-00-00', '0000-00-00'),
(696, 'Miguel Angelo Victor Gaio Carvalho', '1993-11-06', '2014-12-15 00:00:00', 1, 1, 3, 234118865, 1, 0, 0, 0, 'Técnico de ar condicionado e ar ventilado', 0, 0, 0, 2, 10, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', 'Amora - Seixal', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 10, 24, 36, 0, 0, 1, 'Avenida D. Afonso Henriques, Nº 69 R/C Drt, 2830 Verderena', '696.pdf', 1, 1, 'Aumento de Escolariedade (9ºAno)', -1, '', -1, '14522520', 4, '', '', '0000-00-00', '0000-00-00'),
(697, 'Ndombele Singa', '1966-03-07', '2014-12-15 00:00:00', 1, 1, 2, 207078297, -1, 0, 0, 0, 'Limpezas EULEN', 0, 0, 0, 1, 35, 1, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 963137267, 0, 0, '', 'Quibocolo', 'Angola', 0, '', '', 3, 18, 0, -1, 11, 35, -1, 0, 0, 1, 'Rua Francisco Casal. Nº35 10 C 2830-283 Verderena', '697.pdf', 1, -1, '', -1, '', -1, '9115L31J3', 1, '', '', '0000-00-00', '0000-00-00'),
(698, 'Ricardo José Granadeiro Santana', '1970-07-27', '2014-12-15 00:00:00', 1, 1, 2, 198062494, 4, -1, -1, -1, 'Motorista', -1, -1, 0, 2, 45, 1, -1, '', -1, '', 5, 2, 2, -1, '', -1, -1, '', -1, 936406879, -1, -1, ' riki_angel_1970@hotmail.com', '', 'Portuguesa', 1, '', '', 3, 18, 1, 4, 45, 10, 35, 0, -1, 1, 'Rua Dr. Sampaio e Mello, Nº 2 1º Drt, 2830-281 Verderena', '698.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(699, 'Ana Paula Pereira Encarnação', '1988-09-01', '2014-12-15 00:00:00', 1, 1, 4, 247378461, 1, 0, 0, 0, 'Empregada de Balcão', 1, 0, 0, 1, 36, 0, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 919474387, 0, 0, 'angelberry_sweetlime@hotmail.com', '', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 43, 36, 41, 0, 0, 1, 'Rua Dr. Sampaio e Melo, Nº2 1º Drt, 2830- 281 Barreiro (Verderena)', '699.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(700, 'Olimpia Maria Serrabulho Ruivo Figueiredo', '1956-01-30', '2014-12-15 00:00:00', 1, 1, 3, 164925732, 2, 0, 0, 0, 'Limpezas na CP', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 967644731, 0, 0, '', '', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 35, 36, -1, 0, 0, 1, 'Rua Francisco Casal, Nº 2, 1º Esquerdo, 2830-283 Verderena', '700.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(701, 'Luis Manuel Garcia David', '1989-01-18', '2014-12-15 00:00:00', 1, 1, 4, 232961352, 1, 0, 0, 0, 'Serralheiro', 0, 0, 0, -1, 11, 0, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 964303893, 964303893, 0, 'luismgdavid@hotmail.com', '', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 35, 11, 24, -1, 0, 1, 'Rua Jacinto Nicola Nº5 R/C Esquerdo, 2830-284 Verderena', '701.pdf', 1, -1, '', -1, '', -1, '13808990', 3, '', '', '0000-00-00', '0000-00-00'),
(702, 'Bruna Daniela Henriques ', '1993-02-06', '2014-12-16 00:00:00', 1, 1, 5, 223954748, 1, 0, 0, 0, '', 0, 0, 0, 1, 6, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 917117462, 0, 0, 'brunaprudencio207@gmail.com', 'Barreiro', 'Portuguesa', 1, '', '. Técnica de Contabilidade: Qualificação Profissional Nacional Nível 4 (Formação Modelar);\r\n. Qualificação Profissional Nacional de Nível 4 (12º Ano): Técnico de Design Gráfico\r\n', 3, 18, 0, -1, 12, -1, -1, 0, 0, 1, 'R Armindo Almeida Lt U 1 Dto - 2830-275 Barreiro', '702.pdf', 1, -1, '', -1, '', -1, '15698648', 3, '', '', '0000-00-00', '0000-00-00'),
(703, 'Carmén Raquel Da Assunção Ferreira', '1979-08-01', '2014-12-16 00:00:00', 1, 2, 3, 219890315, 1, 0, 0, 0, 'Auxiliar de Ação Educativa', 0, 0, 0, 1, 42, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 965475018, 0, 0, 'carmenferreira1979@gmail.com', '', 'Portuguesa', 1, '', 'Inserido por Associação NÓS-Protocolo RSI', 3, 18, 1, 4, 42, 39, 35, 0, 0, 1, 'R 20 DE ABRIL PÁTIO JOAQUIM JORGE N 76 PORTA 18 VERDERENA - 2830-269 BARREIRO', '703.pdf', 1, 1, '', -1, '', -1, '11681447', 3, '', '', '0000-00-00', '0000-00-00'),
(704, 'Vitor Manuel Arvelos Gonçalves', '1986-10-08', '2014-12-16 00:00:00', 1, 2, 4, 244776067, 5, 0, 0, 0, '', 0, 0, 0, 1, 35, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 914364737, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '', 'Inserido pela Associação NÓS-Protocolo RSI', 3, 18, 0, -1, 35, 8, 11, 0, 0, 1, 'Av. Bento Gonçalves n.º 3 Barreiro', '704.pdf', 1, 1, 'Informática', -1, '', -1, '13202891', 3, '', '', '0000-00-00', '0000-00-00'),
(705, 'Vitor Hugo Alves Apolinário', '1951-12-27', '2014-12-16 00:00:00', 1, 1, 2, 137830386, 4, 0, 0, 0, 'Limpezas em estabelecimento comercial', 0, 0, 0, 1, 35, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 911060564, 0, 0, 'vitorhugoalvesapolinario@gmail.com ', 'Barreiro', 'Portuguesa', 1, '4414380', 'Inserido pela Associação NÓS-Protocolo do RSI\r\nExperiência como vigilante com cartão MAI válido até 2015. ', 3, 18, 0, -1, 36, 39, 35, 0, 0, 1, 'R. DR. SAMPAIO E MELO 3    3.º DTO VERDERENA - 2830-281 BARREIRO', '705.pdf', 1, 1, '', -1, '', -1, '4751899', 3, '', '', '0000-00-00', '0000-00-00'),
(706, 'Filipa Miguel Maravilha', '1989-01-02', '2014-12-16 00:00:00', 1, 2, 4, 254232752, 5, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 919116353, 0, 0, '', '', 'Portuguesa', 1, '', 'Inserida por Associação NÓS-Protocolo RSI', 3, 18, 0, -1, 39, 42, 35, 0, 0, 1, 'Av. Bento Gonçalves n.º 3 Barreiro', '706.pdf', 1, 1, 'Auxiliar de Ação Educativa', -1, '', -1, '13822115', 3, '', '', '0000-00-00', '0000-00-00'),
(707, 'Maria de Fátima Sousa', '1962-01-03', '2014-04-21 22:00:00', 1, 2, 1, 237792346, 1, 0, 0, 0, 'Cantoneira', 1, 0, 0, 1, 35, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 965590854, 0, 0, '', 'Barreiro', 'Cabo Verde', 0, '', '', 7, 11, 0, -1, 39, 42, -1, 0, 0, 1, 'Rua 1º de Maio nº 106', '707.pdf', 1, -1, '', -1, '', -1, 'R70R21658', 1, '', '', '0000-00-00', '0000-00-00'),
(708, 'Valemtim Varela', '1955-02-14', '2014-12-16 00:00:00', 1, 2, 1, 136884580, 1, 0, 0, 0, 'Pedreiro', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 964134968, 0, 0, '', 'Cabo Verde', 'Portuguesa', 1, '1792033', 'Inserido por Associação NÓS-Protocolo RSI', 3, 18, 0, -1, 11, 35, -1, 0, 0, 1, 'Rua 31 De Janeiro , Pátio 25, Porta 7A Bairro das Palmeiras - 2830-132 Barreiro', '708.pdf', 1, 1, 'Competências Básicas', -1, '', -1, '11215566', 3, '', '', '0000-00-00', '0000-00-00'),
(709, 'Cristina Alexandra Fonseca Carrasco ', '1977-05-14', '2014-12-16 00:00:00', 1, 2, 2, 221032878, 5, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', 'Inserido por Associação NÓS-Protocolo RSI', 3, 18, 0, -1, 35, -1, -1, 0, 0, 1, 'R 1 DE MAIO 125 R C BAIRRO DAS PALMEIRAS - 2830-131 BARREIRO', '709.pdf', 1, 1, '', -1, '', -1, '11846294', 3, '', '', '0000-00-00', '0000-00-00'),
(710, 'Maria Teresa Almeida Andrade Dordio', '1971-11-23', '2014-05-05 22:00:00', 2, 6, 5, 201320770, 2, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 961673085, 0, 0, 'eumaria_em@hotmail.com', 'Lisboa', 'Portugal', 0, '', '', 7, 11, 0, -1, 36, 42, -1, 0, 0, 1, 'Estrada Nacional 11 nº1 - 1º drtº', '710.pdf', 1, -1, '', -1, '', -1, '09885267 - 1ZY7', 3, '', '', '0000-00-00', '0000-00-00'),
(711, 'Maria de Fátima Machado Sousa Antunes', '1974-09-14', '2014-05-05 22:00:00', 1, 2, 3, 203873246, 4, 0, 0, 0, 'Bomba de Gasolina', 1, 0, 0, 1, 36, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 913195065, 0, 0, '', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 1, 4, 15, -1, -1, 0, 0, 1, 'Largo do Palácio de Coimbra nº8 A', '711.pdf', 1, 1, 'Massagista ou Fisioterapia', -1, '', -1, '10597347', 3, '', '', '0000-00-00', '0000-00-00'),
(712, 'Maria Amélia da Ressurreição Pereira', '1960-01-16', '2014-05-05 22:00:00', 2, 6, 4, 127048456, 4, 0, 0, 0, '', 1, 0, 0, 1, 41, 0, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 965202503, 0, 0, 'ameliapereira60@gmail.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 1, 4, 42, 41, -1, 0, 0, 1, 'Rua Bento de Jesus Caraça nº1 - 1º esq', '712.pdf', 1, -1, '', -1, '', -1, '5525866', 4, '', '', '0000-00-00', '0000-00-00'),
(713, 'Silvia Maria Batista Paulino', '1969-08-29', '2014-05-05 22:00:00', 1, 1, 4, 180672690, 4, 1, 0, 0, '', 0, 0, 35, -1, 35, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 916966028, 0, 0, '', 'Moita', 'Portugal', 0, '', '', 7, 11, 0, -1, 42, 35, -1, 1, 0, 1, 'Rua São Pedro de Alcantara nº4 - r/c esq', '713.pdf', 1, -1, '', -1, '', -1, '09599660', 3, '', '', '0000-00-00', '0000-00-00'),
(714, 'Maria do Rosário Henriques Piçarra', '1962-10-31', '2014-05-05 22:00:00', 1, 1, 5, 108946487, 4, 0, 0, 0, '', 1, 0, 0, 2, 36, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 927827621, 0, 0, 'rosariopicarra@hotmail.com', 'Beja', 'Portugal', 0, '', '', 7, 11, 0, -1, 3, -1, -1, 0, 0, 1, 'Rua Bartolomeu Dias nº47 - 2º drt', '714.pdf', 1, -1, '', -1, '', -1, '06258502', 3, '', '', '0000-00-00', '0000-00-00'),
(715, 'Jamila Aboo Esmail Gani', '1959-04-20', '2014-05-05 22:00:00', 1, 1, 4, 179464434, 2, 0, 0, 0, '', 1, 0, 0, 2, 36, 0, 0, '', 0, '', 7, -1, 1, 0, '', 0, 0, '', 0, 934637783, 0, 0, '', 'Moçambique', 'Portugal', 0, '', '', 7, 11, 0, -1, 15, -1, -1, 0, 0, 1, 'Praça Vicente Augusto Bolina lote 2 - 2ºB', '715.pdf', -1, 1, '', -1, '', -1, '12366942-1ZZ4', 3, '', '', '0000-00-00', '0000-00-00'),
(716, 'Beatriz Noruega Formoso Mendes Debi', '1967-10-26', '2014-05-06 22:00:00', 1, 1, 1, 227129059, 2, 0, 0, 0, 'Pingo Doce', 1, 0, 0, 2, 35, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 926594688, 0, 0, '', 'Guiné Bissau', 'Guiné Bissau', 0, '', '', 7, 11, 0, -1, 35, -1, -1, 0, 0, 1, 'Rua D. João IV nº22 r/c esq', '716.pdf', 1, -1, '', -1, '', -1, '15622066', 3, '', '', '0000-00-00', '0000-00-00'),
(717, 'Maria Madalena Santos Ferreira', '1966-06-27', '2014-04-23 22:00:00', 1, 2, 1, 179887890, 4, 0, 0, 0, '', 1, 0, 0, 1, 39, 0, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 960197255, 0, 0, '', 'Funchal', 'Portugal', 0, '', '', 7, 11, 0, -1, 39, -1, -1, 0, 0, 1, 'Rua D.José Carcomo Lobo nº47 - 2º esq', '717.pdf', 1, -1, '', -1, '', -1, '09680366-GZZ1', 3, '', '', '0000-00-00', '0000-00-00'),
(718, 'Nina Sebastião Augusto Martins', '1962-12-25', '2014-05-08 22:00:00', 1, 1, 3, 228516420, 1, 0, 0, 0, 'Ajudante de Cozinha', 1, 0, 0, 1, 39, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 926523274, 0, 0, '', 'Guiné Bissau', 'Guiné Bissau', 0, '', '', 7, 11, 0, -1, 39, 35, 42, 0, 0, 1, 'Av. Do Bocage nº49-3º esq', '718.pdf', -1, -1, '', -1, '', -1, '9M619M784', 1, '', '', '0000-00-00', '0000-00-00'),
(719, 'Vanda Maria de Sousa Noivo Pinto de Jesus Folgado', '1968-03-19', '2014-05-26 22:00:00', 1, 2, 4, 186587040, 2, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 963525304, 0, 0, '', 'Lisboa', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua da Unidade nº13 - 2º esq', '719.pdf', -1, -1, '', -1, '', -1, '08577812', 3, '', '', '0000-00-00', '0000-00-00'),
(720, 'Carlos Gregório Martins da Palma', '1964-05-25', '2014-05-12 22:00:00', 1, 2, 1, 128747439, 2, 0, 0, 0, '', 0, 1, 0, 2, 11, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 918401489, 0, 0, '', 'Tavira', 'Portuguesa', 0, '', '', 7, 11, 0, -1, 1, -1, -1, 0, 0, 1, 'Rua Alvaro Velho nº6 - r/c drtº', '720.pdf', 1, -1, '', -1, '', -1, '08411334', 3, '', '', '0000-00-00', '0000-00-00'),
(721, 'Marcos André Pereira da Palma', '1990-08-30', '2014-05-12 22:00:00', 1, 2, 4, 210595604, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 3, -1, 2, 0, '', 0, 0, '', 0, 0, 214064460, 0, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, -1, 0, 1, 'Rua Alvaro Velho nº6 r/c drt.', '721.pdf', -1, 1, 'Informática', -1, '', -1, '13049385', 3, '', '', '0000-00-00', '0000-00-00'),
(722, 'Jéssica Helena Cruz Monteiro', '1991-08-20', '2014-05-12 22:00:00', 1, 1, 4, 270182083, 1, 0, 0, 0, '', 1, 0, 0, 1, 39, 0, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 967423264, 216001298, 964469174, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, 39, 35, 36, 0, 0, 1, 'Rua Almirante José Mendes Cabeçadas nº59', '722.pdf', 1, -1, '', -1, '', -1, '31115240', 3, '', '', '0000-00-00', '0000-00-00'),
(723, 'João José Teixeira Nascimento e Sousa', '1969-09-26', '2014-05-12 22:00:00', 1, 2, 3, 189830875, 4, 0, 0, 0, '', 1, 0, 0, 2, 11, 0, 0, '', 0, '', 5, -1, 2, 0, '', 0, 0, '', 0, 919359443, 0, 0, 'jjsousa979@gmail.com', 'Funchal', 'Portuguesa', 0, '', '', 7, 11, 0, -1, 8, -1, -1, 0, 0, 1, 'Rua D.José Carcomo Lobo nº47 - 2º esq.', '723.pdf', -1, -1, '', -1, '', -1, '09231399-0ZZ5', 3, '', '', '0000-00-00', '0000-00-00'),
(724, 'Juliana Alves dos Santos', '1983-07-20', '2014-05-19 22:00:00', 1, 2, 3, 235545686, 1, 0, 0, 0, 'Ajudante de Cozinha', 1, 0, 0, 2, 39, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 926748197, 0, 0, '', 'angola', 'angola', 0, '', '', 7, 11, 0, -1, 39, -1, -1, 0, 0, 1, 'Rua Heliodoro Salgado nº52 - 2º esq.', '724.pdf', 1, -1, '', -1, '', -1, 'N0564401', 1, '', '', '0000-00-00', '0000-00-00'),
(725, 'Luís Pedro Teixeira Carlos', '1982-05-22', '2014-05-19 22:00:00', 1, 2, 4, 230094864, 1, 0, 0, 0, '', 1, 0, 0, 1, 11, 0, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 924405778, 0, 0, 'luzi.neth@hotmail.com', 'angola', 'angola', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta Avelar Brotero nº24 - 3º esq.', '725.pdf', 1, -1, '', -1, '', -1, 'N0769878', 1, '', '', '0000-00-00', '0000-00-00'),
(726, 'Fábio Alexandre Paulino Matias', '1990-08-04', '2014-05-19 22:00:00', 1, 2, 3, 259563900, 1, 0, 0, 0, 'Lavandaria', 0, 0, 0, -1, 35, 0, 0, '', 0, '', 3, -1, 2, 0, '', 0, 0, '', 0, 924323717, 0, 0, 'mateuszeuszeus@live.com', 'Barreiro', 'Portugal', 0, '', '', 7, 11, 0, -1, 19, -1, -1, -1, 0, 1, 'Rua Dr. Egas Moniz nº2 C - r/c esq.', '726.pdf', 1, 1, '', -1, '', -1, '13900276', 3, '', '', '0000-00-00', '0000-00-00'),
(727, 'Maria José Cunha da Silva', '1962-09-18', '2014-05-19 22:00:00', 1, 2, 1, 178900881, 4, 0, 0, 0, 'Copeira', 0, 1, 0, 2, 39, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 936297040, 0, 0, '', 'Lisboa', 'Portugal', 0, '', '', 7, 11, 0, -1, 39, 35, -1, 0, 0, 1, 'Rua Miguel Pais nº115 D - 1º esq.', '727.pdf', 1, -1, '', -1, '', -1, '6232111', 3, '', '', '0000-00-00', '0000-00-00'),
(728, 'Pedro Olavo Pires Gomes', '1971-09-24', '2014-05-13 22:00:00', 1, 2, 4, 276499271, 2, 0, 0, 0, 'Pintor de carros', 1, 0, 0, 1, 10, 0, 0, '', 0, '', 5, -1, 2, 0, '', 0, 0, '', 0, 920057373, 0, 0, 'fredom1998@hotmail.com', 'Cabo Verde', 'Cabo Verdiana', 0, '', '', 7, 11, 1, -1, 26, 10, -1, 0, 0, 1, 'Rua Miguel Bombarda nº 84-A', '728.pdf', 1, -1, '', -1, '', -1, 'T362024Q8', 1, '', '', '0000-00-00', '0000-00-00'),
(729, 'José Carlos Lucas Godinho', '1963-07-28', '2014-05-19 22:00:00', 1, 2, 4, 124184570, 2, 0, 0, 0, 'Electricidade', 1, 0, 0, 1, 10, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 915106731, 0, 0, 'josegodinho7@gmail.com / josegodinho63@hotmail.com', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, 10, -1, -1, 0, 0, 1, 'Rua Voz do Operário nº7 r/c', '729.pdf', 1, -1, '', -1, '', -1, '06282760', 3, '', '', '0000-00-00', '0000-00-00'),
(730, 'Julia Maria Borges de Oliveira Gomes António', '1963-05-02', '2014-05-26 22:00:00', 1, 1, 1, 261609440, 3, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 920027696, 0, 0, '', 'angola', 'angola', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua 9 de Abril nº23 r/c ', '730.pdf', 1, -1, '', -1, '', -1, '261609440', 1, '', '', '0000-00-00', '0000-00-00'),
(731, 'Micaela Sofia Almeida Ferreira', '1994-09-27', '2014-05-27 22:00:00', 1, 1, 3, 269917470, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 3, -1, 1, 0, '', 0, 0, '', 0, 916580845, 0, 0, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Armindo de Almeida nº12 - 1º drt', '731.pdf', 1, 1, '', -1, '', -1, '15178471', 3, '', '', '0000-00-00', '0000-00-00'),
(732, 'Eduardo Carlos Fonseca Correia de Oliveira', '1965-08-25', '2014-05-28 22:00:00', 1, 6, 3, 184375525, 2, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 910698822, 0, 0, '', 'Lisboa', 'Portugal', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua do Trabalhador nº110 porta 5', '732.pdf', 1, -1, '', -1, '', -1, '07374500', 3, '', '', '0000-00-00', '0000-00-00'),
(733, 'Rute Isabel Malveiro Martins', '1990-02-12', '2014-06-02 22:00:00', 1, 2, 3, 225362465, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 3, -1, 1, 0, '', 0, 0, '', 0, 927313172, 0, 0, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Miguel Pais nº212-2º drt.', '733.pdf', 1, -1, '', -1, '', -1, '14159285', 3, '', '', '0000-00-00', '0000-00-00'),
(734, 'Anabela dos Santos Lúcio Coelho de Almeida', '1976-08-13', '2014-06-02 22:00:00', 1, 2, 5, 212018590, 2, 0, 0, 0, '', 0, 1, 0, 2, -1, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 961021808, 0, 0, 'coelhoanabela320@hotmail.com', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta Ribeiro Sanches, 2 - 4º dt', '734.pdf', 1, -1, '', -1, '', -1, '10728624', 3, '', '', '0000-00-00', '0000-00-00'),
(735, 'Leonel José Sequeira Gomes', '1958-08-22', '2014-06-12 22:00:00', 1, 2, 4, NULL, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 7, -1, 2, 0, '', 0, 0, '', 0, 917663274, 0, 0, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Av. Bento Gonçalves nº54-1º', '735.pdf', 1, -1, '', -1, '', -1, '5402890', 3, '', '', '0000-00-00', '0000-00-00'),
(736, 'Wilher Lopes', '1986-08-03', '2014-06-01 22:00:00', 2, 10, 3, 266353800, 5, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 960391609, 0, 0, '', 'S. Tomé e Principe', 'São Tomense', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua 3 lote 30 r/c C', '736.pdf', 1, -1, '', -1, '', -1, '9074Q32Q5', 1, '', '', '0000-00-00', '0000-00-00'),
(737, 'André Amorim da Luz', '1991-02-25', '2014-06-01 22:00:00', 1, 2, 3, 243804954, 5, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 3, -1, 2, 0, '', 0, 0, '', 0, 918777811, 0, 0, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, 42, -1, -1, 0, 0, 1, 'Rua Bento da Silva Fernandes nº5 - 1º esq.', '737.pdf', -1, -1, '', -1, '', -1, '14079309', 3, '', '', '0000-00-00', '0000-00-00'),
(738, 'Luís Manuel Flores Prudêncio', '1981-03-13', '2014-05-27 22:00:00', 1, 2, 1, 232320586, 5, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 937137663, 0, 0, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, 42, -1, -1, 0, 0, 1, 'Av. Joaquim José Fernandes bloco B2 - r/c drt.', '738.pdf', 1, -1, '', -1, '', -1, '13013350', 3, '', '', '0000-00-00', '0000-00-00'),
(739, 'Irene da Conceição Cabeças Mendes', '1974-08-08', '2014-05-27 22:00:00', 1, 2, 1, 221769722, 5, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 937137663, 0, 0, '', 'Lisboa', 'Portuguesa', 0, '', '', 7, 11, 0, -1, 42, -1, -1, 0, 0, 1, 'Av. Joaquim José Fernandes bloco B2 r/c drt.', '739.pdf', 1, -1, '', -1, '', -1, '12113341', 3, '', '', '0000-00-00', '0000-00-00'),
(740, 'Luís Manuel Sousa Matias', '1967-03-22', '2014-06-08 22:00:00', 1, 1, 1, 152740600, 4, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 960385560, 0, 0, 'luismatias67@sapo.pt', 'Moçambique', 'Moçambique', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta Gomes Teixeira nº22-2º esq', '740.pdf', 1, -1, '', -1, '', -1, '8497078', 3, '', '', '0000-00-00', '0000-00-00'),
(741, 'Vera Lucia Batista Prates Rocha', '1980-02-13', '2014-06-08 22:00:00', 1, 1, 4, 225573644, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 964041327, 0, 0, 'verarocha@hotmail.com', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Av. Do Bocage nº28-3º drt', '741.pdf', 1, -1, '', -1, '', -1, '11992755', 3, '', '', '0000-00-00', '0000-00-00'),
(742, 'Carlos Manuel Pinto Gonçalves', '1970-03-13', '2014-06-15 22:00:00', 1, 2, 1, 193209616, 5, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 5, -1, 2, 0, '', 0, 0, '', 0, 916428236, 0, 0, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Aguiar nº126', '742.pdf', -1, -1, '', -1, '', -1, '10354356', 3, '', '', '0000-00-00', '0000-00-00'),
(743, 'Joaquim Jesus Santos Ferreira', '1970-01-28', '2014-06-23 22:00:00', 1, 2, 1, 192252780, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 963568534, 0, 0, '', 'Alcobaça', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua 1º de Maio nº105', '743.pdf', 1, -1, '', -1, '', -1, '10416718', 3, '', '', '0000-00-00', '0000-00-00'),
(744, 'Benilza Nascimento Araújo', '1971-11-13', '2014-06-19 22:00:00', 1, 2, 5, 264966740, 2, 0, 0, 0, 'Bibliotecária', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 932569041, 0, 0, 'be29br@gmail.com', 'Brasil', 'Brasileira', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua José Saramago nº5 - 1º C ', '744.pdf', -1, 1, 'Técnico Administrativo', -1, '', -1, '042745', 3, '', '', '0000-00-00', '0000-00-00'),
(745, 'Engrácia da Costa Lourenço Francisco', '1974-08-19', '2014-06-16 22:00:00', 1, 2, 3, 237788420, 4, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 961605956, 0, 0, 'engraciacosta_@hotmail.com', 'angola', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta Avelar Brotero nº3 - 2º drtº', '745.pdf', 1, -1, '', -1, '', -1, '15921964', 3, '', '', '0000-00-00', '0000-00-00'),
(746, 'Angela Cristina Delgado Eufrázio de Almeida', '1983-09-09', '2014-12-17 00:00:00', 1, 2, 4, 231281722, 2, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 964840289, 0, 0, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua da Juventude nº4', '746.pdf', 1, -1, '', -1, '', -1, '12637705', 3, '', '', '0000-00-00', '0000-00-00'),
(747, 'Jorge Miguel Marcos Rodrigues', '1980-12-15', '2014-06-18 22:00:00', 1, 2, 5, 223810282, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 966419877, 0, 0, '', 'Lisboa', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua de Luanda nº26-1º esq.', '747.pdf', 1, -1, '', -1, '', -1, '11759773', 3, '', '', '0000-00-00', '0000-00-00'),
(748, 'Maria de Fátima Reis Ramos', '0000-00-00', '2014-06-29 22:00:00', 2, 10, 3, 224159100, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 938819672, 0, 0, 'fatima.reis.ramos@gmail.com', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Quinta da Mina lote 7 - 5º esq.', '748.pdf', 1, -1, '', -1, '', -1, '12912217', 3, '', '', '0000-00-00', '0000-00-00'),
(749, 'Virgílio José Goulão Arromba', '1965-08-30', '2014-06-29 22:00:00', 1, 2, -1, 190655461, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 965256759, 0, 0, '', 'Évora', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Palácio de Coimbra nº9 - r/c', '749.pdf', 1, 1, '', -1, '', -1, '09279715', 3, '', '', '0000-00-00', '0000-00-00'),
(750, 'Pedro Miguel dos Santos Jordão', '1995-09-01', '2014-07-07 22:00:00', 1, 1, 4, 271422955, 1, 0, 0, 0, 'Ajudante pedreiro', 1, 0, 0, 1, 11, 0, 0, '', 0, '', 2, -1, 2, 0, '', 0, 0, '', 0, 0, 212020479, 0, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, 39, 8, -1, 0, 0, 1, 'Rua 28 de Setembro nº72 - 2º esq', '750.pdf', 1, -1, '', -1, '', -1, '13842921', 3, '', '', '0000-00-00', '0000-00-00'),
(751, 'João Francisco Marques Nogueira', '1991-11-28', '2014-07-07 22:00:00', 1, 2, 5, 210644516, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 3, -1, 2, 0, '', 0, 0, '', 0, 913753590, 0, 0, 'jfnogueirahk@hotmail.com', 'Lisboa', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua do Convento nº6 - 2º esq.', '751.pdf', 1, -1, '', -1, '', -1, '13957597', 3, '', '', '0000-00-00', '0000-00-00'),
(752, 'Fernanda dos Anjos Rola', '1958-02-04', '2014-07-07 22:00:00', 1, 2, 1, 191119083, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 7, -1, 1, 0, '', 0, 0, '', 0, 968328215, 0, 0, '', 'Moura', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Travessa de Coimbra nº7', '752.pdf', 1, -1, '', -1, '', -1, '07208379', 3, '', '', '0000-00-00', '0000-00-00'),
(753, 'Josefina Pereira Tecanhe', '1980-05-07', '2014-07-14 22:00:00', 1, 2, 4, 247769657, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 920200105, 0, 0, 'josefinapereira_@hotmail.com', 'Guiné Bissau', 'Guiné Bissau', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua de Goa nº2-C r/c esq.', '753.pdf', -1, 1, 'Francês', -1, '', -1, '31251538', 3, '', '', '0000-00-00', '0000-00-00'),
(754, 'Walnyce de Sousa Martins Silva', '1975-09-10', '2014-07-08 22:00:00', 1, 1, 5, 228577144, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 964064888, 0, 0, 'walnycesms@hotmail.com', 'Guiné Bissau', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua S. João Batista de Ajudá nº47 B - 1º drt', '754.pdf', 1, -1, '', -1, '', -1, '15992442', 3, '', '', '0000-00-00', '0000-00-00'),
(755, 'Maria Elisabete Ribeiro Martins', '1976-02-09', '2014-07-14 22:00:00', 1, 2, 3, 209632895, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 914068096, 0, 0, 'baby@live.com.pt', 'Almada', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Pedro Alvares Cabral nº29-2º drtº', '755.pdf', 1, -1, '', -1, '', -1, '11081757', 3, '', '', '0000-00-00', '0000-00-00'),
(756, 'Carlos Lima Favorito', '1972-03-04', '2014-07-14 22:00:00', 1, 6, 3, 233369317, 1, 0, 0, 0, '', 1, 0, 0, 2, 11, 0, 0, '', 0, '', 5, -1, 2, 0, '', 0, 0, '', 0, 963287652, 218226957, 0, '', 'Brasil', 'Brasileira', 0, '', '', 7, 11, 0, -1, 11, 35, 1, 0, 0, 1, 'Rua Catarina Eufémia nº1 - C', '756.pdf', 1, -1, '', -1, '', -1, 'R51029581', 1, '', '', '0000-00-00', '0000-00-00'),
(757, 'Florêncio Soares Lima', '1967-12-07', '2014-07-21 22:00:00', 1, 2, 4, 233384235, 2, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 965654626, 0, 920010966, '', 'S. Tomé e Principe', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Maria Lalande nº75 r/c drtº', '757.pdf', 1, -1, '', -1, '', -1, '30313078', 3, '', '', '0000-00-00', '0000-00-00'),
(758, 'Angela Maria das Neves Pinto de Jesus', '1980-12-10', '2014-06-11 22:00:00', 1, 2, 1, 225222760, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 916206971, 0, 0, '', '', '', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Nuno Tristão nº36 - 1º drtº', '758.pdf', 1, -1, '', -1, '', -1, '13054089', 3, '', '', '0000-00-00', '0000-00-00'),
(759, 'Rui José de Oliveira Rodrigues', '1963-06-12', '2014-06-11 22:00:00', 1, 2, 1, 114084700, 4, 0, 0, 0, '', 1, 0, 0, 2, 11, 0, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 914744204, 0, 0, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Nuno Tristão Nº 36 1ºDrt', '759.pdf', 1, -1, '', -1, '', -1, '06991594 6zz7', 3, '', '', '0000-00-00', '0000-00-00'),
(760, 'Valdir Moreira Barbosa da Fonseca', '1961-07-19', '2014-07-26 22:00:00', 1, 6, 3, 219859841, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 924124737, 0, 0, '', 'Praia', 'Cabo Verdiana', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Natália Correia lote 12 r/c drt.', '760.pdf', 1, -1, '', -1, '', -1, '30437769', 3, '', '', '0000-00-00', '0000-00-00'),
(761, 'Gilson Nede Ramos Tavares', '1994-02-23', '2014-07-28 22:00:00', 1, 2, 5, 277003610, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 3, -1, 2, 0, '', 0, 0, '', 0, 968255402, 0, 0, 'gilsontavares10@outlook.com', 'Cabo Verde', 'Cabo Verdiana', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua D. João IV nº24 - 1º esq.', '761.pdf', 1, -1, '', -1, '', -1, '8W1X21757', 1, '', '', '0000-00-00', '0000-00-00'),
(762, 'Francisco Manuel Ribas Pompeu', '1983-07-11', '2014-07-28 22:00:00', 1, 2, 3, 234225424, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 933737115, 0, 0, '933737115', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 1, -1, -1, -1, -1, 0, 0, 1, 'Rua Voz do Operário nº12 r/c esq.', '762.pdf', 1, -1, '', -1, '', -1, '123151422', 3, '', '', '0000-00-00', '0000-00-00'),
(763, 'Catarina Rosa Pires', '1991-05-01', '2014-07-31 22:00:00', 1, 2, 4, 259477621, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 3, -1, 1, 0, '', 0, 0, '', 0, 918967296, 0, 0, '', 'Évora', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Silva Cristino nº11 r/c esq.', '763.pdf', 1, -1, '', -1, '', -1, '14353983', 3, '', '', '0000-00-00', '0000-00-00'),
(764, 'Adelino Pires da Luz', '1968-04-14', '2014-07-31 22:00:00', 1, 2, 4, 204165309, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 963321710, 0, 0, '', 'Cabo Verde', 'Portuguesa', 0, '', '', 7, 11, 1, -1, -1, -1, -1, 0, 0, 1, 'Praceta Filinto Elísio nº21 - 2º esq.', '764.pdf', 1, -1, '', -1, '', -1, '14088315', 3, '', '', '0000-00-00', '0000-00-00'),
(765, 'Dionísio Gregório Santos', '1958-05-25', '2014-07-31 22:00:00', 1, 2, 1, 217306748, 5, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 7, -1, 2, 0, '', 0, 0, '', 0, 925680632, 0, 0, '', 'Cabo Verde', 'Portuguesa', 0, '', '', 7, 11, 1, -1, -1, -1, -1, 0, 0, 1, 'Rua Almeida Garrett nº3 - 3º esq.', '765.pdf', 1, -1, '', -1, '', -1, '30039561', 3, '', '', '0000-00-00', '0000-00-00'),
(766, 'Sílvia Maria Dias dos Santos', '1972-02-01', '2014-08-10 22:00:00', 1, 2, 1, 194515796, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 910797915, 0, 0, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta dos Lusíadas nº5 - 2º drtº', '766.pdf', 1, -1, '', -1, '', -1, '11212531', 3, '', '', '0000-00-00', '0000-00-00'),
(767, 'Maria dos Anjos Dias Cordeiro Santos', '1953-07-03', '2014-08-10 22:00:00', 1, 2, 1, 152740279, 3, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 7, -1, 1, 0, '', 0, 0, '', 0, 912629461, 0, 0, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Almeida Garrett nº11 - 3º drtº', '767.pdf', 1, -1, '', -1, '', -1, '4994191', 4, '', '', '0000-00-00', '0000-00-00'),
(768, 'Elizete Gonçalves Correia', '1987-02-03', '2014-08-10 22:00:00', 1, 2, 5, 277119499, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 966811712, 0, 0, '', 'Cabo Verde', 'Cabo Verdiana', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua de Bissau nº10 - 3º esq', '768.pdf', -1, -1, '', -1, '', -1, '422S30Q36', 1, '', '', '0000-00-00', '0000-00-00'),
(769, 'Iozana Raquel Andrade Furtado', '1993-05-19', '2014-08-10 22:00:00', 1, 10, 3, 271433787, 5, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 3, -1, 1, 0, '', 0, 0, '', 0, 926007275, 0, 0, '', 'ilha de santiago', 'Cabo Verdiana', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua 2 lote 1 - 2º frt.', '769.pdf', 1, -1, '', -1, '', -1, '7355QIT00', 1, '', '', '0000-00-00', '0000-00-00'),
(770, 'Ana Catarina dos Santos Pereira Alfaiate', '1995-10-31', '2014-08-18 22:00:00', 1, 2, 4, 250454602, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 2, -1, 1, 0, '', 0, 0, '', 0, 924250764, 0, 0, 'ana_alfaiate17@hotmail.com', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua 20 de Abril nº52 - 1º esq.', '770.pdf', 1, -1, '', -1, '', -1, '14896868', 3, '', '', '0000-00-00', '0000-00-00'),
(771, 'Joana Filipa Dias dos Santos', '1997-04-03', '2014-08-18 22:00:00', 1, 2, 3, 229114933, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 2, -1, 1, 0, '', 0, 0, '', 0, 960282517, 0, 910452515, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Almeida Garrett nº11 - 3º B', '771.pdf', 1, -1, '', -1, '', -1, '229114933', 3, '', '', '0000-00-00', '0000-00-00'),
(772, 'Marília Cristina Ambriz', '1997-04-25', '2014-08-18 22:00:00', 1, 4, 4, 272369845, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 2, -1, 1, 0, '', 0, 0, '', 0, 967729976, 0, 0, '', 'Santo antonio da charneca', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua da Estremadura lote 57', '772.pdf', 1, -1, '', -1, '', -1, '19407957Q', 1, '', '', '0000-00-00', '0000-00-00'),
(773, 'António Loureiro Marques', '1958-06-02', '2014-02-22 00:00:00', 1, 2, 4, 112269923, 4, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 7, -1, 2, 0, '', 0, 0, '', 0, 969465149, 216035607, 929060859, 'marujo_tony@hotmail.com', 'coimbra', 'Portuguesa', 0, '', '', 7, 11, 1, -1, -1, -1, -1, 0, 0, 1, 'Rua D. Manuel de Melo nº10 - 2º drt.', '773.pdf', 1, -1, '', -1, '', -1, '04243791', 3, '', '', '0000-00-00', '0000-00-00'),
(774, 'Maria Inês Sampaio da Silva', '1987-09-18', '2014-08-25 22:00:00', 1, 2, 5, 218286670, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 967646458, 212048850, 0, 'inessilva16@gmail.com', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Diogo Cão nº 60 - r/c esq.', '774.pdf', 1, -1, '', -1, '', -1, '13363339', 3, '', '', '0000-00-00', '0000-00-00'),
(775, 'Mário Alcides Castro Gonçalves da Veiga', '1980-03-12', '2014-08-27 22:00:00', 1, 2, 4, 242564941, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 961469518, 0, 0, '', 'Lisboa', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua José Augusto Pimenta nº17 - 2º esq.', '775.pdf', 1, -1, '', -1, '', -1, '14256268', 3, '', '', '0000-00-00', '0000-00-00'),
(776, 'Leinira Mariza Furtado Sanches', '1994-12-01', '2014-08-26 22:00:00', 1, 1, 5, 263420914, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 2, -1, 1, 0, '', 0, 0, '', 0, 968946874, 0, 0, 'leinirinha.sanches@hotmail.com', 'Cabo Verde', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua D. João IV nº24 - 1º esq', '776.pdf', 1, -1, '', -1, '', -1, '30578691', 3, '', '', '0000-00-00', '0000-00-00'),
(777, 'Andreia Maria Andrade Lopes', '1979-11-16', '2014-08-26 22:00:00', 1, 2, 4, 224307444, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 926973997, 0, 0, '', 'Lisboa', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Bairro Alfredo da Silva Bloco A nº5 - 2º drt.', '777.pdf', 1, -1, '', -1, '', -1, '11787816', 3, '', '', '0000-00-00', '0000-00-00'),
(778, 'Cátia Alexandra Bento Rodrigues', '1984-11-16', '2014-09-01 22:00:00', 1, 2, 4, 246694165, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 914137617, 218213959, 0, 'alexandrarodri@hotmail.com', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta dos lusíadas nº9 - r/c esq.', '778.pdf', 1, -1, '', -1, '', -1, '12555821', 3, '', '', '0000-00-00', '0000-00-00'),
(779, 'Biocsan Sambu', '1980-01-31', '2014-09-02 22:00:00', 1, 1, 4, 277553474, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 968263338, 0, 0, '', 'Guiné Bissau', 'Guiné Bissau', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta D. Sancho I nº7 - 3º esq.', '779.pdf', 1, -1, '', -1, '', -1, '811Q47R95', 1, '', '', '0000-00-00', '0000-00-00'),
(780, 'Catarina Cunha dos Santos', '1987-04-20', '2014-09-15 22:00:00', 1, 1, 5, 248809920, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 961971186, 0, 0, 'catarinasantos81@yaoo.com.br', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta Ribeiro Sanches nº18 - 1º esq. ', '780.pdf', 1, 1, '', -1, '', -1, '13202880', 3, '', '', '0000-00-00', '0000-00-00'),
(781, 'Delfim Cadi Dieluidi', '1978-07-24', '2014-09-15 22:00:00', 1, 6, 5, 239679687, 5, -1, -1, -1, '', -1, -1, 0, 2, -1, -1, -1, '', -1, '', 5, 2, 2, -1, '', -1, -1, '', -1, 963821619, -1, -1, 'dieluidi_4@hotmail.com', 'Uíge', 'angola', -1, '', '', 7, 11, -1, -1, 17, -1, -1, 0, -1, 1, 'Rua João Angelo nº7 - 1º drt.', '781.pdf', 1, -1, '', -1, '', -1, 'R680681Q9', 1, '', '', '0000-00-00', '0000-00-00'),
(782, 'Aduzinda Cardoso Barradas', '2014-12-17', '2014-12-17 00:00:00', 2, 6, 5, NULL, 1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 966533405, 0, 0, '', '', '', 1, '', '', 1, 19, 0, -1, 39, 24, -1, 0, 0, 1, '', '782.pdf', 1, -1, '', -1, '', -1, '15536166 0 ZZ0', 3, '', '', '0000-00-00', '0000-00-00'),
(783, 'João Filipe Airoso Viana', '1980-09-19', '2014-09-15 22:00:00', 1, 2, 4, 229372864, 2, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 914338399, 0, 0, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 1, -1, -1, -1, -1, 0, 0, 1, 'Rua Dr. Manuel Pacheco Nobre nº79 - 3º esq.', '783.pdf', 1, 1, '', -1, '', -1, '11716636', 3, '', '', '0000-00-00', '0000-00-00'),
(784, 'Maria da Conceição Spencer Moreira Fernandes', '1974-12-07', '2014-09-15 22:00:00', 2, 4, 4, 208920650, 4, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 924091474, 0, 0, '', 'Praia', 'Cabo Verdiana', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua das Beiras, 48 - 3º esq.', '784.pdf', 1, -1, '', -1, '', -1, '49V4V5929', 1, '', '', '0000-00-00', '0000-00-00'),
(785, 'Paulo Alexandre Ferreira do Vale', '1975-06-25', '2014-09-17 22:00:00', 1, 6, 1, 208851291, 2, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 5, -1, 2, 0, '', 0, 0, '', 0, 916801321, 0, 0, '', 'Lisboa', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Francisco Miguel nº94-3º drt.', '785.pdf', 1, -1, '', -1, '', -1, '11307704', 3, '', '', '0000-00-00', '0000-00-00'),
(786, 'Luís Miguel Fernandes Pires', '1992-02-05', '2014-09-22 22:00:00', 1, 1, 5, 249335883, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 3, -1, 2, 0, '', 0, 0, '', 0, 962913139, 0, 0, 'luispireslol@gmail.com', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 1, -1, -1, -1, -1, 0, 0, 1, 'Rua Cidade da Praia nº5 - 2º drt.', '786.pdf', 1, -1, '', -1, '', -1, '14315162', 3, '', '', '0000-00-00', '0000-00-00'),
(787, 'Ana Isabel Rodrigues da Costa', '1983-05-05', '2014-09-23 22:00:00', 1, 2, 4, 236226606, 5, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 933011449, 0, 0, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Capitão Tenente Oliveira C. Carmo nº18 r/c drt', '787.pdf', 1, -1, '', -1, '', -1, '12549573', 3, '', '', '0000-00-00', '0000-00-00'),
(788, 'Marco Paulo de Jesus Ferreira Pais', '1973-06-22', '2014-09-23 22:00:00', 1, 2, 1, 204958180, 5, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, -1, 2, 0, '', 0, 0, '', 0, 913602870, 0, 0, '', 'viseu', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Brito Camacho nº5 - 3º drt.', '788.pdf', 1, -1, '', -1, '', -1, '11366069', 3, '', '', '0000-00-00', '0000-00-00'),
(789, 'Daniela Filipa Pinto Martins', '1994-09-07', '2014-10-06 22:00:00', 1, 2, 4, 251158373, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 3, -1, 1, 0, '', 0, 0, '', 0, 915465068, 0, 0, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta Gomes Teixeira nº3-1º drt', '789.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(790, 'Sónia Marina Pinto Martins', '1984-05-09', '2014-10-06 22:00:00', 1, 2, 5, 243023502, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 916036821, 0, 0, 'sonia.martins@live.com.pt', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta Gomes Teixeira nº3 - 1º drt.', '790.pdf', 1, -1, '', -1, '', -1, '12582503', 3, '', '', '0000-00-00', '0000-00-00'),
(791, 'Sara Santos', '1980-10-09', '2014-10-06 22:00:00', 1, 2, 1, 220505365, 4, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 939322846, 0, 0, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Pacheco Nobre nº 116 - 1º esq.', '791.pdf', 1, -1, '', -1, '', -1, '12243423', 3, '', '', '0000-00-00', '0000-00-00'),
(792, 'Ana Paula Ramos', '1990-06-23', '2014-10-12 22:00:00', 1, 6, 5, 263132510, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 3, -1, 1, 0, '', 0, 0, '', 0, 963143341, 0, 0, 'ana7ramos@gmail.com', 'vale da amoreira', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua das Beiras nº4 - 1º frt.', '792.pdf', 1, -1, '', -1, '', -1, '13824617', 3, '', '', '0000-00-00', '0000-00-00'),
(793, 'António Manuel Portela da Silva', '1958-10-05', '2014-10-20 22:00:00', 1, 6, 4, 128058374, 2, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 7, -1, 2, 0, '', 0, 0, '', 0, 914465908, 0, 0, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua da Amizade nº67 - 1º A', '793.pdf', 1, -1, '', -1, '', -1, '5535227', 3, '', '', '0000-00-00', '0000-00-00'),
(794, 'Anabela da Conceição Duarte da Venda Correia', '1964-02-15', '2014-10-02 22:00:00', 1, 2, 1, 153100648, 2, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 6, -1, 1, 0, '', 1, 0, '', 0, 915279393, 0, 0, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 1, 1, 'Rua José Elias Garcia nº36 - 4º drt.', '794.pdf', -1, -1, '', -1, '', -1, '07651202', 3, '', '', '0000-00-00', '0000-00-00'),
(795, 'Isabel Sarmento Guinote', '1974-03-02', '2014-10-21 22:00:00', 1, 1, 5, 206793212, 4, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 912220608, 0, 0, '', '', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Julio Dinis, portão 33 porta 2 ', '795.pdf', 1, -1, '', -1, '', -1, '10619220', 3, '', '', '0000-00-00', '0000-00-00'),
(796, 'Sandra Cristina Gaspar Casinha', '1986-11-23', '2014-10-21 22:00:00', 1, 2, 3, 264543459, 1, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 918157090, 0, 0, '', '', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta D. Sancho I nº4 - 1º esq.', '796.pdf', 1, -1, '', -1, '', -1, '13224623', 3, '', '', '0000-00-00', '0000-00-00'),
(797, 'Maria Fernanda Dias Fernandes Furtado', '1975-06-06', '2014-10-23 22:00:00', 1, 2, 1, 221595406, 3, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 963848693, 0, 0, '', 'Cabo Verde', 'Cabo Verdiana', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua 9 de Abril, pátio 22 porta 9', '797.pdf', 1, -1, '', -1, '', -1, '1007V49V6', 1, '', '', '0000-00-00', '0000-00-00'),
(798, 'Antónia Fortunata dos Santos', '2014-12-17', '2014-12-17 00:00:00', 2, 6, -1, 211881678, 1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 966858385, 0, 0, '', '', '', 1, '', '', 1, 19, 0, -1, 39, 35, -1, 0, 0, 1, '', '798.pdf', 1, 1, 'EFA - NÍVEL BÁSICO', -1, '', -1, '', 1, '', '', '0000-00-00', '0000-00-00'),
(799, 'José Carlos Pires Ferreira', '1978-08-08', '2014-10-28 00:00:00', 1, 2, 4, 211959014, 4, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 5, -1, 2, 0, '', 0, 0, '', 0, 915749287, 0, 0, 'jcf.degremont.pt@gmail.com', 'Lisboa', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Alves da Cunha nº25 - r/c drt.', '799.pdf', 1, -1, '', -1, '', -1, '11215852', 3, '', '', '0000-00-00', '0000-00-00'),
(800, 'Maria Helena Gonçalves Vieira', '1996-08-02', '2014-10-31 00:00:00', 1, 2, 4, 281904928, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 2, -1, 1, 0, '', 0, 0, '', 0, 961058605, 0, 0, '', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Brito Camacho nº1 r/c', '800.pdf', 1, -1, '', -1, '', -1, '15481970', 3, '', '', '0000-00-00', '0000-00-00'),
(801, 'Maria Teresa Mateus Santos', '1958-08-18', '2014-11-18 00:00:00', 1, 1, 1, 161963196, 4, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 7, -1, 1, 0, '', 0, 0, '', 0, 913934997, 0, 0, '', 'Lisboa', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Mouzinho de Albuquerque, nº39 - r/c drt. ', '801.pdf', 1, -1, '', -1, '', -1, '06075725 6ZZ1', 3, '', '', '0000-00-00', '0000-00-00'),
(802, 'Tiago Miguel Guerreiro Bonifácio', '1996-01-01', '2014-11-18 00:00:00', 2, 10, 3, 272524964, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 2, -1, 2, 0, '', 0, 0, '', 0, 964191242, 0, 0, 'bonituga96@gmail.com', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua 3 lote 30 - 2º C', '802.pdf', 1, -1, '', -1, '', -1, '14042064', 3, '', '', '0000-00-00', '0000-00-00'),
(803, 'Corália Maria da Silva Rafael', '1957-09-24', '2014-11-18 00:00:00', 1, 1, 3, 136787487, 3, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 7, -1, 1, 0, '', 0, 0, '', 0, 968731756, 0, 0, 'coraliarafael@gmail.com', 'Lisboa', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Fialho de Almeida nº9 - 3º esq.', '803.pdf', 1, -1, '', -1, '', -1, '06011716', 3, '', '', '0000-00-00', '0000-00-00'),
(804, 'Jéssica Alexandra Pereira dos Santos Marques', '1994-07-21', '2014-11-19 00:00:00', 1, 2, -1, 224110918, -1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 3, -1, 1, 0, '', 0, 0, '', 0, 967075877, 218029493, 0, 'jessika_brr@hotmail.com', 'Barreiro', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua João Dias Correia Pimenta nº15 - 2º esq.', '804.pdf', 1, -1, '', -1, '', -1, '15014800', 3, '', '', '0000-00-00', '0000-00-00'),
(805, 'Ana Cristina Contente da Silva Santos', '1967-02-02', '2014-11-25 00:00:00', 1, 1, 4, 181700336, 4, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 969757556, 0, 0, 'docebrisa_3@gmail.com', 'Lisboa', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Fialho de Almeida nº9 - 3º esq.', '805.pdf', 1, -1, '', -1, '', -1, '8050037', 4, '', '', '0000-00-00', '0000-00-00'),
(806, 'Maria João Cabrita Ferreira Silvestre', '1967-06-27', '2014-11-25 00:00:00', 1, 2, 3, 192564188, 4, 0, 0, 0, '', 1, 0, 0, 2, -1, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 927065936, 0, 0, '', 'Lisboa', 'Portuguesa', 0, '', '', 7, 11, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Almirante J.M. Cabeçadas,48 - 2º', '806.pdf', 1, -1, '', -1, '', -1, '07717927', 3, '', '', '0000-00-00', '0000-00-00'),
(807, 'António Leonardo Alves', '2014-12-17', '2014-12-17 00:00:00', 2, 6, 4, 272018236, 5, 0, 0, 0, '', 0, 0, 0, 2, 43, 1, 0, '', 0, '', 2, 1, 2, 0, '', 0, 0, '', 0, 932571778, 0, 0, '', '', 'portuguesa', 1, '', '', 1, 19, 1, 4, 8, 43, -1, 0, 0, 1, '', '807.pdf', -1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(808, 'Abigail do Nascimento Cabeça', '1997-06-25', '2014-12-17 00:00:00', 2, 6, 3, 271829494, 5, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 2, 1, 1, -1, '', 0, 0, '', 0, 932571778, -1, -1, '', '', 'portuguesa', 0, '', 'buhh\"', 1, 19, -1, -1, 8, 35, -1, -1, 1, 1, '', '', 1, 0, '', 0, '', -1, '123132132132', 3, '', '', '0000-00-00', '0000-00-00'),
(809, 'António Mendes dos Reis', '1991-01-05', '2014-12-17 00:00:00', 2, 6, 3, 247300497, 5, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 1, 0, 0, 0, '', '', 'portuguesa', 1, '', '', 1, 19, 1, 4, 8, -1, -1, -1, 1, 1, '', '809.pdf', -1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00');
INSERT INTO `utentes` (`id`, `nome`, `dataNascimento`, `dataInscricao`, `idConcelho`, `idFreguesia`, `idHabilitacoes`, `NIF`, `idEstadoCivil`, `trabalhadorPrecario`, `PrestadorDeServicos`, `TrabalhadorContaOutrem`, `ultimaProfissaoExercida`, `semSubsidio`, `subsidioDesemprego`, `EspecificacaoEmprego`, `tempoDesempregado`, `ultimaProfissaoExercidaDesempregado`, `beneficiarioRSI`, `outrosSubsidios`, `QuaisOutrosSubsidios`, `Estudante`, `estabelecimentoEnsino`, `idGrupoEtario`, `idSituacaoRegularizada`, `idGenero`, `MedidasAtivasEmprego`, `QualMedidasAtivasEmprego`, `Voluntariado`, `FormacaoProfissional`, `QualFormacaoProfissional`, `Biscates`, `Telemovel`, `Telefone`, `OutroTelefone`, `Email`, `Naturalidade`, `Nacionalidade`, `InscritoCentroEmprego`, `NumeroInscricaoCentroEmprego`, `Observacoes`, `idFrontOfficeSinalizador`, `idTecnico`, `cartaDeConducao`, `cartaDeConducaoCategoriaID`, `interesseProfissional1`, `interesseProfissional2`, `interesseProfissional3`, `empregado`, `outraSituacao`, `estado`, `morada`, `CV`, `pedidoInicialEmprego`, `pedidoInicialFormacao`, `pedidoInicialFormacaoQual`, `pedidoInicialOutra`, `pedidoInicialOutraQual`, `NISS`, `numeroIdentificacao`, `tipoDocumentoIdentificacao`, `codPostal`, `nrCartaConducao`, `validadeDocumentoIdentificacao`, `emissaoCartaConducao`) VALUES
(810, 'Adelino Pereira dos Santos', '1969-03-07', '2014-12-18 00:00:00', 1, 2, 4, 195385926, 2, 0, 0, 0, 'Maquinista Prático de 1.ª Classe - Marítimo', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 934967970, 0, 0, 'lino.sailorman@hotmail.com', 'Angola Cabinda', 'Angolana', 1, '', '', 22, 22, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Capitão Tenente Oliveira e Carmo, N.º 37, 1.º Esq.º, 2830-163 Barreiro', '', 1, -1, '', -1, '', -1, '08537495', 3, '', '', '0000-00-00', '0000-00-00'),
(811, 'Isabella Leonilde de Oliveira Vazão', '1985-10-02', '2014-12-19 00:00:00', 1, 1, -1, 244660883, 1, 0, 0, 0, 'Engomadeira', 1, 0, 0, 1, 35, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 925269093, 0, 0, '', 'Namíbia', 'Portuguesa', 1, '', 'Tem o 11º ano concluído na Namíbia, mas não dispõe de qualquer comprovativo.', 14, 12, 0, -1, 35, 39, 36, 0, 0, 1, '', '811.pdf', 1, 1, 'Equivalência ao 12º ano', -1, '', -1, '14126581 7ZY5', 3, '', '', '0000-00-00', '0000-00-00'),
(812, 'Danilson Dário de Castro Manuel', '1992-04-15', '2014-12-23 00:00:00', 1, 4, 5, 263633152, 1, -1, -1, -1, '', -1, -1, 0, 1, 33, -1, -1, '', -1, '', 3, 1, 2, -1, '', -1, -1, '', -1, 962340024, -1, -1, 'danilsonmanuel92@gmail.com', 'Angolana', 'Portuguesa', 1, '', '', 18, 24, 0, -1, 33, 36, 39, 0, -1, 1, 'Cidade Sol', '812.pdf', 1, 1, 'Electricidade/Culinária/Contabilidade/Programação/Recursos Humanos', 1, 'Estágio', -1, '31394920', 3, '', '', '0000-00-00', '0000-00-00'),
(813, 'António Vasco Fernandes Soares da Gama', '0000-00-00', '2014-12-18 00:00:00', 2, 6, 4, 190015829, 1, 0, 0, 0, 'Carpinteiro de Cofragem', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 968628759, 0, 0, 'gama.antonio61@hotmail.com', 'Guiné Bissau', 'Guineense', 1, '', 'Interesses profissionais - 1ª, 2ª e 3ª escolhas: Carpinteiro de Cofragem.', 22, 22, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Michel Giacometti Lote 20 R/Ch. Esq.º, 2835-138 Baixa da Banheira', '', 1, -1, '', -1, '', -1, 'R6L571599L', 1, '', '', '0000-00-00', '0000-00-00'),
(814, 'Yuri Flávio de Carvalho Simões', '1994-05-29', '2014-12-22 00:00:00', 2, 6, 5, 284230669, 1, 0, 0, 0, 'Assistente de Vendas', 1, 0, 0, 1, 8, 0, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 969114395, 212043534, 0, 'yuridaclak@hotmail.com', 'Angola', 'Portuguesa', 0, '', 'Interesses profissionais: Área comercial e secretariado.', 22, 22, 0, -1, -1, -1, -1, 0, 0, 1, 'Praceta dos Ferroviários, N.º 1, 2.º Esq.º, 2842-045 Baixa da Banheira', '814.pdf', 1, -1, '', -1, '', -1, '31510171', 3, '', '', '0000-00-00', '0000-00-00'),
(815, 'Paulo Alexandre Rodrigues Trindade Potes', '1992-07-13', '2015-01-05 00:00:00', 2, 5, 4, 267677146, 1, 0, 0, 0, '', 1, 0, 0, 1, 8, 0, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 963125461, 0, 0, 'paulotrindade.113@gmail.com', 'Barreiro', 'Portuguesa', 0, '', 'Neste momento, o utente tem interesse em qualquer trabalho. Precisa urgentemente de conseguir um trabalho.', 22, 22, 0, -1, -1, -1, -1, 0, 0, 1, 'Avenida Bela Rosa, N.º 18, 1.º Dt.º, 2860-130 Alhos Vedros', '815.pdf', 1, -1, '', -1, '', -1, '15269600', 3, '', '', '0000-00-00', '0000-00-00'),
(816, 'Cláudio Miguel Letras da Silva Ferreira', '1987-01-21', '2015-01-27 00:00:00', 1, 1, 6, 231690258, 1, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 938072847, 0, 0, 'claudiomlsf@gmail.com', '', 'Portuguesa', 1, '', 'Mestrado em Genética e Biologia Molecular na Faculdade Ciências da Universidade Lisboa', 3, 18, 0, -1, 21, 40, -1, 0, 0, 1, 'Av. Dom Afonso Henriques, nº66, 3ºesq', '816.pdf', 1, -1, '', -1, '', -1, '13201034', 3, '', '', '0000-00-00', '0000-00-00'),
(817, 'Joaquina Ramos Pinto', '1996-06-13', '2015-01-27 00:00:00', 1, 2, 3, 254651178, 5, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 2, 1, 1, 0, '', 0, 0, '', 0, 912610556, 0, 0, '', '', 'Portuguesa', 1, '', '', 3, 18, 0, -1, -1, -1, -1, 0, 0, 1, 'R. Conselheiro Joaquim António de Aguiar, nº 144, 2ºEsq', '817.pdf', 1, 1, '', -1, '', -1, '14902471', 3, '', '', '0000-00-00', '0000-00-00'),
(818, 'Susana Isabel Militão Silva', '1981-10-13', '2015-01-27 00:00:00', 1, 2, 4, 231462905, 5, 0, 0, 0, 'Empregada de balcão', 0, 0, 0, 1, 39, 0, 1, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 926048864, 0, 0, 'susanaimsilva@sapo.pt', 'Barreiro', 'Portuguesa', 1, '', '', 3, 18, 0, -1, 36, 40, 39, 0, 0, 1, 'Av. Henrique Galvão 55 5º Esquerdo 2803 - 308 Barreiro', '818.pdf', 1, 1, 'Estética, manicure/ pedicure', 1, 'cabeleireiro', -1, '11900687', 3, '', '', '0000-00-00', '0000-00-00'),
(819, 'Carla Marina Tomé Fernandes', '1972-02-18', '2015-02-16 00:00:00', 2, 6, 6, 208435247, 4, 0, 0, 0, 'Banca e seguros', 0, 1, 0, 2, 4, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 966383210, 0, 0, 'carlamarinatf@gmail.com', 'São Sebastião Pedreira', 'Portuguesa', 1, '4274748', '', 22, 22, 1, 4, 4, 41, -1, 0, 0, 1, 'Praceta José Relvas, Lote 64, 3.º Esq.º', '819.pdf', 1, -1, '', -1, '', -1, '098796194ZZ7', 3, '', '', '0000-00-00', '0000-00-00'),
(820, 'Lisgessner Denise Pereira Pires Bandeira', '1977-12-20', '2015-02-18 00:00:00', 1, 4, 4, 229612644, 2, 0, 0, 0, '', 0, 0, 0, 1, 35, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 963186514, 0, 0, 'denisebandeira33@hotmail.com', 'São Tomé', 'Portuguesa', 1, '', 'Curso de Cozinha e Pastelaria', 10, 13, 1, 2, 39, 35, -1, 0, 0, 1, 'Rua 9 Lote 49 3ºC 2835-514 Cidade Sol', '820.pdf', 1, -1, '', -1, '', -1, '229612644', 3, '', '', '0000-00-00', '0000-00-00'),
(821, 'Vanessa Cristina Batista Marques', '1988-06-08', '2015-02-26 00:00:00', 1, 4, 3, 230124178, 1, -1, -1, -1, '', -1, -1, 0, 1, 26, 1, -1, '', -1, '', 4, 1, 1, -1, '', -1, -1, '', -1, 938179998, -1, -1, 'biaalexandrapereira@gmail.com', 'Alto seixalinho - Barreiro', 'Portuguesaaaaa', 1, '', '', 10, 13, -1, -1, 35, 39, -1, 0, -1, 1, 'Rua 13 Quinta da Mina Lote 21 1º Esq. 2835-495 Cidade Sol', '821.pdf', 1, -1, '', -1, '', -1, '13354455', 3, '', '', '0000-00-00', '0000-00-00'),
(822, 'Adão Lobo Da Costa', '1962-01-19', '2015-04-07 22:00:00', 1, 1, 1, 197943039, 1, -1, -1, -1, '', -1, -1, 0, 1, 11, 1, -1, '', -1, '', 5, 1, 2, -1, '', -1, -1, '', -1, 913690096, -1, -1, '', 'lisboa', 'Portuguesa', 1, '', 'pintor da construção civil', 10, 13, 1, 4, 11, -1, -1, 0, -1, 1, 'Rua  Rodrigues Da Conceição blc F4 , ~ºdirt 2830-125', '822.pdf', 1, -1, '', -1, '', -1, '07001193', 3, '', '', '0000-00-00', '0000-00-00'),
(823, 'Ana Emilia Moreno Tavares', '1984-05-31', '2015-04-07 22:00:00', 1, 1, 5, 231555997, 1, -1, -1, -1, '', -1, -1, 0, 2, 41, 1, -1, '', -1, '', 4, 1, 1, -1, '', -1, -1, '', -1, 963286940, -1, -1, 'nokas_tavares@hotmail.com', '', 'Portuguesa', 1, '', '', 10, 13, -1, -1, 41, 35, -1, 0, -1, 1, 'Rua De Mombaça nº21, 1º frt 2830-182', '823.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(824, 'Liliana Sofia Pereira Rosário', '1993-08-07', '2015-04-07 22:00:00', 1, 1, 4, 242668631, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 961633467, 0, 0, 'lylysaleiro@live.com', 'S.Sebastião da Pedreira', 'Portuguesa', 0, '', 'experiência como ajudante de cozinha, ajudante familiar e camareira num hotel em lisboa', 10, 13, 0, -1, 24, 35, -1, 0, 0, 1, 'Rua Resisitência ao Fascismo nº1, 1º drt ', '824.pdf', 1, -1, '', -1, '', -1, '1435127', 3, '', '', '0000-00-00', '0000-00-00'),
(825, 'José  Manuel Raposo Nabais', '1955-06-24', '2015-04-07 22:00:00', 1, 1, 1, 140301054, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 910232330, 0, 0, '', '', 'Portuguesa', 1, '48104', 'Cei+ , pintor construção civil', 10, 13, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua De Goa nº14, 2º 2830-179', '825.pdf', 1, -1, '', -1, '', -1, '5591702', 3, '', '', '0000-00-00', '0000-00-00'),
(826, 'Nuno Miguel Batista da Encarnação', '2015-04-13', '2015-04-12 22:00:00', 2, 10, 4, 221037616, 5, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 0, '', 'Beneficiário com problemas psiquiátricos em acompanhamento.', 2, 14, 0, -1, 11, 39, -1, 0, 0, 1, 'Rua dos Sobreiros, 45 ', '826.pdf', 1, -1, '', -1, '', -1, '11268854', 3, '', '', '0000-00-00', '0000-00-00'),
(827, 'Sali Sano', '2015-04-13', '2015-04-12 22:00:00', 2, 10, 4, NULL, 1, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 1, 'Formação Profissional, nível 4 em Turismo ', 4, 1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', 'Guiné Bissau', 'Portuguesa', 1, '', 'A Sali vai terminar a formação em Maio de 2015. Encontra-se com disponibilidade imediata para trabalho', 2, 14, 0, -1, 24, 42, -1, 0, 0, 1, 'Rua João Villaret n.º 1 - 3º Esquerdo | 2835-254 Vale da Amoreira', '827.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(828, 'Mateus Garcia Martins', '2015-04-13', '2015-04-12 22:00:00', 2, 10, 2, 222564911, 5, 0, 0, 0, '', 0, 0, 0, 2, 1, 1, 0, '', 0, '', 4, -1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', '', 2, 14, 1, -1, -1, -1, -1, 0, 0, 1, '', '828.pdf', -1, 1, 'Formação para a Inclusão / situação de desvantagem', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(829, 'Vitoriana Duarte Martins', '2015-04-13', '2015-04-12 22:00:00', -1, 10, 2, 224307517, 5, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 4, -1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', '', 1, '', '', 2, 14, 0, -1, -1, -1, -1, 0, 0, 1, 'R.Tulipas,1 2º Dto | 2835-242 Vale da Amoreira', '829.pdf', -1, 1, 'Formação para a inclusão', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(830, 'Andreia Cristina Fernandes Cabeça', '2015-04-13', '2015-04-12 22:00:00', 2, -1, -1, 253791812, -1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 0, '', '1º Emprego', 2, 14, 1, 4, -1, -1, -1, 0, 0, 1, 'Rua dos Sobreiros,68 | 2835-248 Vale da Amoreira', '830.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(831, 'Fernanda Maria Gimenez Montes', '2015-04-13', '2015-04-12 22:00:00', 2, 10, 3, 219639531, 2, 0, 0, 0, '', 0, 0, 0, 2, 42, 1, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', '', 2, 14, 1, 4, -1, -1, -1, 0, 0, 1, 'Rua dos Sobreiros, 64  | 2835-248 Vale da Amoreira', '831.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(832, 'Katisa Rocha Martins Cajada', '1986-02-08', '2015-04-19 22:00:00', 1, 4, 4, 251407357, 2, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 920229343, 0, 0, 'katisa.martins@gmail.com', 'Cabo Verde', 'Cabo Verde', 1, '3805104', '', 10, 13, 0, -1, 5, 24, 39, 0, 0, 1, 'Rua 5 lote 25 R/C A 2835-510', '832.pdf', 1, 1, '', -1, '', -1, '31117214', 3, '', '', '0000-00-00', '0000-00-00'),
(833, 'Rui Marcio Patacão Cajada', '1983-03-10', '2015-04-19 22:00:00', 1, 4, 4, 228809398, 2, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 920229343, 0, 0, 'katisa.martins@gmail.com', 'Viseu', 'Portuguesa', 1, '', '', 10, 13, 1, -1, 11, 44, -1, 0, 0, 1, 'Rua 5 lote 25 R/C A 2835-510', '833.pdf', 1, -1, '', -1, '', -1, '12310588', 3, '', '', '0000-00-00', '0000-00-00'),
(834, 'Ana Cristina Pedro Costa Oliveira', '2015-04-22', '2015-04-21 22:00:00', 2, 10, 3, 201377675, 2, 0, 0, 0, '', 0, 0, 0, 1, 39, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 964081546, 964081546, 0, 'ana.o.costimeca@hotmail.com', 'Portuguesa', 'Portuguesa', 1, '914033-03131962', 'A Sra. refere que já realizou ações de formação na área da fotografia; ambiente,  higiene  e segurança no trabalho.\r\nJá trabalhou como ajudante de cozinha e copeira. ', 2, 14, 0, -1, 15, 24, -1, 0, 0, 1, 'Av.ª Diogo Cão, n.º 16 - 2 C', '834.pdf', 1, -1, '', -1, '', -1, '11641824', 3, '', '', '0000-00-00', '0000-00-00'),
(835, 'Braima Camará', '2015-04-22', '2015-04-21 22:00:00', 2, 10, 5, 236453939, 2, 0, 0, 0, '', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 964853448, 0, 0, 'ronaldobraimacamara@hotmail.com', 'Guienense', 'Português', 1, '927661-4025677', 'O r. refere que possui formação como Técnico de Informático, tem um bom domínio da Língua Inglesa. \r\nAtenção não consegui inserir a data de nascimento do mesmo: 06-06-1980', 2, 14, 0, -1, 11, -1, -1, 0, 0, 1, 'Av.ª Diogo Cão, lote 16, 2 C', '835.pdf', 1, 1, '', -1, '', -1, '15629875', 3, '', '', '0000-00-00', '0000-00-00'),
(836, 'Bruna Isabel M. S. D. Fernandes ', '2015-04-22', '2015-04-21 22:00:00', 2, 10, 4, 269397515, 1, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 966254188, 925913463, 0, 'brunafernandes@gmail.com ', 'Barreiro', 'Portuguesa', 1, '5355350', '', 2, 14, 0, -1, 5, 15, 24, 0, 0, 1, 'Av.ª Diogo Cão, lote 7, r/c dt.º ', '836.pdf', 1, 1, 'Cabeleireira, estética, apoio à Infância', -1, '', -1, '15560524', 3, '', '', '0000-00-00', '0000-00-00'),
(837, 'Patrícia Isabel M. S. D. Fernandes', '2015-04-22', '2015-04-21 22:00:00', 2, 10, 4, 268868000, 1, 0, 0, 0, '', 0, 0, 0, 1, 15, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 925913463, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '5355531', '', 2, 14, 0, -1, 15, 5, -1, 0, 0, 1, 'Av.ª Diogo Cão, n.º 7, r/c dtº', '837.pdf', 1, 1, 'Apoio à Infância', -1, '', -1, '15560529', 3, '', '', '0000-00-00', '0000-00-00'),
(838, 'Cintia Raquel Silva Conceiçao', '2015-04-22', '2015-04-21 22:00:00', 2, 10, 5, 246123605, 1, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 961814496, 0, 0, 'thaiscintia03@gmail.com', 'Barreiro', 'Portuguesa', 1, '', 'Possui certificado do Curso de Técnicas Comerciais de nível V', 2, 14, 0, -1, 24, -1, -1, 0, 0, 1, 'Pct.ª Pero Escobar, lote 1 - 1.º B', '838.pdf', 1, 1, 'turismo/markting', -1, '', -1, '14103668', 3, '', '', '0000-00-00', '0000-00-00'),
(839, 'Maria de Jesus Garcia Vales', '2015-04-22', '2015-04-21 22:00:00', 2, 10, 2, 222309431, 1, 0, 0, 0, '', 0, 0, 0, 1, 39, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 963233228, 211952420, 0, '', 'Barreiro', 'Portuguesa', 1, '1765302', 'A Sra. refere que já trabalhou como empregada de balcão, ajudante de cozinha e copa, lavandaria e numa loja de artes gráficas. ', 2, 14, 0, -1, 39, -1, -1, 0, 0, 1, 'Av.ª Almada Negreiros, n.º 23, r/c esq.º', '839.pdf', 1, -1, '', -1, '', -1, '12313417', 3, '', '', '0000-00-00', '0000-00-00'),
(840, 'Edmundo João Rua Cardoso', '1970-05-22', '2015-04-23 22:00:00', 1, 4, 1, 188407952, 4, -1, -1, -1, 'Embalador ', -1, -1, 0, 2, 26, -1, -1, '', -1, '', 5, 1, 2, -1, '', -1, -1, '', -1, 937836808, 937836808, 937836808, 'seilaedmundo70@hotmail.com', '', 'Portuguesa', 1, '', '1ª - Operador de Pontos Rolantes\r\n2ª - Pintor especializado em alumínios (lacagem)\r\n3ª - Electromecânico (Montagem e manutenção de elevadores)', 18, 24, 0, -1, 26, 26, 18, 0, -1, 1, 'Rua 3, Lote 22, 3ºB', '840.pdf', 1, 1, 'Inglês', 1, 'Formação de Empilhadores ', -1, '10714501', 3, '', '', '0000-00-00', '0000-00-00'),
(841, 'Luís Manuel André Lemos', '1975-10-20', '2015-04-26 22:00:00', 1, 4, 5, 235276839, 1, -1, -1, -1, 'Montador de Condutas/Ar Condicionado', -1, -1, 0, 1, 10, -1, -1, '', -1, '', 5, 2, 2, -1, '', -1, -1, '', -1, 963498047, -1, -1, 'luislemos00@hotmail.com', '', 'Angolana', -1, '', '- Montador de Condutas/Ar condicionado (1ª escolha)\r\n- Fiel de armazém (2ª escolha)\r\n- Sem experiência (3ª escolha)', 18, 24, -1, -1, 10, 36, 26, 0, -1, 1, 'Rua 3, Lote 13, 1º A - Cidade Sol', '841.pdf', 1, -1, '', -1, '', -1, '', 2, '', '', '0000-00-00', '0000-00-00'),
(842, 'Silvana Isabel Palminha Bernardo ', '1992-05-02', '2015-04-27 22:00:00', 1, 1, 3, 225862360, 1, -1, -1, -1, '', -1, -1, 0, 1, 6, -1, -1, '', -1, '', 3, 1, 1, -1, '', -1, -1, '', -1, -1, 917356926, -1, 'silvanaisabel22@hotmail.com', 'BARREIRO', 'PORTUGUESA', -1, '', '1ª - ATENDIMENTO AO CLIENTE / INBOUND / OUTBOUND / VENDAS / APOIO À SUPERVISÃO / FORMAÇÃO DE NOVOS COLABORADORES\r\n2ª - EMPREGADA DE BALCÃO\r\n3ª - ATENDIMENTO EM LOJA (FÓRUM DO BARREIRO)', 18, 24, -1, -1, 6, 5, 7, 0, -1, 1, '', '842.pdf', 1, 1, '', -1, '', -1, '14499362', 3, '', '', '0000-00-00', '0000-00-00'),
(843, 'Érica Lenisse Martins Soares', '1989-08-27', '2015-04-27 22:00:00', 1, 4, 4, 250707063, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 962717325, 0, 0, '', 'Vale de Amoreira', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 36, 39, -1, 0, 0, 1, 'Rua 5, lote 27, 3ºC 2835-510 Sto. António Charneca', '843.pdf', 1, -1, '', -1, '', -1, '15763833', 3, '', '', '0000-00-00', '0000-00-00'),
(844, 'Sònia Maria Fernandes Pereira', '1978-04-23', '2015-04-27 22:00:00', 1, 4, 3, 216620554, 1, 0, 0, 0, 'Empregada de limpezas e camareira', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 913913269, 0, 0, '', '', 'Portuguesa', 1, '2334802', 'Em anexo segue o curriculum vitae que realizei em conjunto com a beneficiária.', 10, 13, 0, -1, 39, 35, -1, 0, 0, 1, 'Qta. da Mina, nº 15, 3ºesq 2835 - 501 Sto. António da Charneca', '844.pdf', 1, 1, 'Formação na área de cozinha', -1, '', -1, '11830297', 3, '', '', '0000-00-00', '0000-00-00'),
(845, 'teste', '2015-05-12', '2015-04-16 22:00:00', 2, 6, 6, 2147483647, 2, 1, -1, -1, 'hnfghnfghfnm', -1, -1, 1, -1, 18, -1, -1, '', 1, 'epbjc', 2, 2, 2, 1, 'bf', 1, 1, 'gf', 1, 231324, 24231, -1, 'manel@.com', 'LOGO2', '505050', -1, '', '4eta5tr4', 17, 2, 1, 1, 12, 13, 5, 1, 1, 2, 'rua do ze cabra', '845.pdf', 1, 1, '5', 1, '3', -1, '23425000000', 2, '', '', '0000-00-00', '0000-00-00'),
(846, 'Ana Inês Castilho Madaleno', '1993-01-17', '2015-04-28 22:00:00', 1, 3, 6, 266454666, 1, -1, -1, -1, 'PROCURA 1º EMPREGO', -1, -1, 0, 1, -1, -1, -1, '', -1, '', 3, 1, 1, -1, '', -1, -1, '', -1, 919278631, -1, -1, 'anainescm@gmail.com', '', 'PORTUGUESA', 1, '', 'Procura 1º Emprego', 18, 24, 1, -1, 3, 37, 36, 0, -1, 1, 'URBANIZAÇÃO QUINTA DE SÃO JOÃO, RUA MAR DA PALHA 11, 2830-502', '846.pdf', 1, 1, 'DESIGN/ANIMAÇÃO/ARTE MULTIMÉDIA', -1, '', -1, '14390072', 3, '', '', '0000-00-00', '0000-00-00'),
(847, 'Mário Jorge Delgado Almeida', '1983-07-06', '2015-04-28 22:00:00', 1, 4, 5, 234629967, 1, 0, 0, 0, 'Especialista em Controlo e Análise de Produção Química', 0, 1, 0, 1, 26, 0, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 967925195, 0, 0, 'mario.mda230@live.com.pt', '', 'PORTUGUESA', 1, '6080496', '1ª - Controlo e análise de produção química (em fábrica e laboratório)\r\n2ª - Motorista de Ligeiros / Funções de Distribuição\r\n', 18, 24, 1, -1, 26, 45, -1, 0, 0, 1, 'RUA PRINCIPAL QUINTA BENEVIDE ALMEIDA, S/Nº - FONTE DO FETO (2835-541)', '847.pdf', 1, 1, 'QUÍMICA ', -1, '', -1, '12300503', 3, '', '', '0000-00-00', '0000-00-00'),
(848, 'Gildeci Jesus dos Santos Dieb', '1970-10-17', '2015-04-28 22:00:00', 1, 4, 5, 236180744, -1, -1, -1, -1, 'Escritório de Advogados', -1, 1, 0, 2, 41, -1, -1, '', -1, '', 6, 1, 1, -1, '', -1, -1, '', -1, 910827976, -1, -1, '', 'Brasil', 'Brasileira', 1, '', '', 18, 24, -1, -1, 41, -1, -1, 0, -1, 1, 'Rua dos Pinheiros, Casa nº 10 (Vila Chã)', '848.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(849, 'Ana Vanessa Matos Rodrigues', '0000-00-00', '2015-04-29 22:00:00', 1, 4, 3, 214141705, -1, -1, -1, -1, 'TÉCNICA FUNERÁRIA', -1, 1, 0, 1, 43, -1, -1, '', -1, '', 5, 1, 1, -1, '', -1, -1, '', -1, 965694027, -1, -1, '', '', 'PORTUGUESA', 1, '1870506', 'Experiência Profissional:\r\n- Administrativa (1 Ano)\r\n- Promotora/Vendas (6 Meses)\r\n- Operadora de Caixa (1 Ano)\r\n- Assistente de Loja (6 Meses)\r\n- Sócia-gerente de Imobiliária (13 Anos)\r\n- Sócia-gerente de Pastelaria (1 Ano)\r\n- Técnica Funerária (3 Anos)', 18, 24, 0, -1, 43, 8, 25, 0, -1, 1, 'RUA MANUEL CARRAPETO 1, 2º FRT. - VILA CHÃ', '849.pdf', 1, -1, '', -1, '', -1, '10816245', 3, '', '', '0000-00-00', '0000-00-00'),
(850, 'Rui Nélson Gomes Santos', '1974-01-19', '2015-05-04 22:00:00', 1, 4, 3, 197970389, -1, 0, 0, 0, 'Lavagem de Automóveis', 0, 1, 0, 2, -1, 0, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 964217496, 0, 0, '', '', 'Portuguesa', 1, '1794982', 'Experiência Profissional:\r\n- Lavagem de Automóveis\r\n- Condução de Ligeiros em Contexto de Stand Automóvel', 18, 24, 0, -1, 43, -1, -1, 0, 0, 1, 'Cidade Sol', '850.pdf', 1, -1, '', -1, '', -1, '10378973', 3, '', '', '0000-00-00', '0000-00-00'),
(851, 'Ana Paula Figueiredo André Assunção', '0000-00-00', '2015-05-06 22:00:00', 2, 6, -1, 223306150, 1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 937169091, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 39, -1, -1, 0, 0, 1, 'Rua António Aleixo, Nº 2, 3º Dto.', '851.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(852, 'Ana Rute Pinto Mendonça', '0000-00-00', '2015-05-06 22:00:00', 2, 6, 4, 205644562, 1, 0, 0, 0, '', 0, 0, 0, 2, 37, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 924180545, 0, 0, '', '', 'Portuguesa', 1, '', 'Distribuição de publicidade', 1, 19, 1, 4, 37, -1, -1, 0, 0, 1, 'Rua Joaquim Gomes Oliveira Afoito, Lote 51, Nº 9, 2º Dto.', '852.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(853, 'Ana Raquel Maçarico Velho', '1986-09-18', '2015-05-06 22:00:00', 1, 2, 4, 248215973, 1, 0, 0, 0, 'Comercial/Vendas', 0, 1, 0, 1, 6, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 961135870, 0, 0, '', '', 'Portuguesa', 1, '3948949', '1ª Escolha - Auxiliar de Acção Educativa (bebés e crianças)\r\n2ª Escolha - Empregada de Balcão\r\n3ª Escolha - Call-center', 18, 24, 1, -1, 15, 39, 6, 0, 0, 1, 'Rua SIRB os Penicheiros 2, R/C Esq. - Fidalguinhos', '853.pdf', 1, -1, '', -1, '', -1, '13092003', 3, '', '', '0000-00-00', '0000-00-00'),
(854, 'Andreia Filipa Bispo Lisboa', '0000-00-00', '2015-05-06 22:00:00', 2, 6, 4, 251637328, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 965406086, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, 6, -1, 0, 0, 1, 'Praceta do Ribatejo, nº 3, 1º Esq.', '854.pdf', -1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(855, 'António Manuel Saldanha Abreu', '0000-00-00', '2015-05-06 22:00:00', 2, 6, 4, 145826430, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 969569554, 0, 0, '', '', 'Portuguesa', 1, '', 'Pedreiro, ladrilhador, canalizador, carpinteiro.', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Cabo verde, Nº 9, 1º Dto.', '855.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(856, 'Beatriz Manuela Gomes dos Santos', '0000-00-00', '2015-05-06 22:00:00', 2, -1, -1, 239386698, -1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 969115571, 0, 0, '', '', '', 0, '', 'Cozinheira, Lar de idosos', 1, 19, 0, -1, 39, -1, -1, 0, 0, 1, '', '856.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(857, 'Carina Patrícia da Luz Amorim', '0000-00-00', '2015-05-06 22:00:00', 2, 6, 4, 232404070, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 919432483, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua Damão, Nº 28, 1º Esq.', '857.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(858, 'Carina Raquel Simões Neves', '0000-00-00', '2015-05-06 22:00:00', 2, 6, 4, 231355645, 1, 0, 0, 0, '', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 967097362, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 26, -1, -1, 0, 0, 1, 'Rua de Moçambique, Nº 66,1º Esq.', '858.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(859, 'Humberto Ricardo Rodrigues Miranda Morais', '0000-00-00', '2015-05-06 22:00:00', 2, 6, 3, 226576779, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 967097362, 967097362, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua de Moçambique, Nº 66, 1º Esq.', '859.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(860, 'Carla Alexandra Eleutério da Silva', '0000-00-00', '2015-05-06 22:00:00', 2, 6, 2, 215582349, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 918048183, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua 1º de Maio, Nº 96, 3º Esq.', '860.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(861, 'Carlos Alberto do Carmo Correia', '0000-00-00', '2015-05-06 22:00:00', 2, 6, 2, 193956241, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 962920383, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, 4, 11, -1, -1, 0, 0, 1, 'Rua José Dias Coelho, Nº 10, R/ch Dto.', '861.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(862, 'Carlos Fernando Veríssimo Lança', '0000-00-00', '2015-05-06 22:00:00', 2, 6, 1, 228604435, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 916339643, 0, 0, '', '', 'Portuguesa', 1, '', 'Armador de ferro', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua dos Açores, Nº 69, 3º Esq.', '862.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(863, 'Celso Cardoso Rodrigues', '0000-00-00', '2015-05-06 22:00:00', 2, 10, 3, 122737261, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 932715569, 932715569, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, 11, -1, 0, 0, 1, 'Avenida Alfredo Diniz Alex, Lote 70, 1º Dto. - Fontainhas', '863.pdf', -1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(864, 'Diana Rute Anastácio Correia', '0000-00-00', '2015-05-06 22:00:00', 2, 6, 2, 245283888, 1, 0, 0, 0, '', 1, 0, 0, 1, 36, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 969901098, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, -1, -1, 0, 0, 1, 'Estrada Nacional 11, Nº 50, 3º', '864.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(865, 'Sara Raquel Valério Marchão Noivo', '1994-04-29', '2015-05-06 22:00:00', 1, 4, 4, 272979619, -1, 0, 0, 0, 'Empregada de Balcão e Copa', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 932196244, 0, 0, 'saraeandre25@hotmail.com', '', 'Portuguesa', 1, '', '', 18, 24, 0, -1, 39, 24, -1, 0, 0, 1, 'Rua 8, Lote 42, 1º Frente - Cidade Sol', '865.pdf', 1, -1, '', -1, '', -1, '15402783', 3, '', '', '0000-00-00', '0000-00-00'),
(866, 'João Carlos Fernandes Rodrigues', '0000-00-00', '2015-05-07 22:00:00', 2, 10, 2, 154992976, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 924388098, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Bordalo Pinheiro, Lote 4, 5º Esq.', '866.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(867, 'Fátima Maria de Oliveira Gomes da Cruz', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 3, 211279161, 1, 0, 0, 0, '', 0, 0, 0, 2, 40, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 963657098, 0, 0, '', '', 'Portuguesa', 1, '', 'Auxiliar de Ação Médica', 1, 19, 0, -1, 40, 35, -1, 0, 0, 1, 'Rua de Goa, Nº 8, 2º Dto.', '867.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(868, 'Felizardo Carlos Costa Caixinha', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 1, 192342894, 1, 0, 0, 0, '', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 962685609, 0, 0, '', '', 'Portuguesa', 1, '', 'Servente Construção Civil; Jardinagem.', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua de Moçambique, Nº 76, 1º Esq.', '868.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(869, 'Estanislau Lopes', '0000-00-00', '2015-05-07 22:00:00', 2, 10, 1, 206400640, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 964666097, 0, 0, '', 'Guiné Bissau', 'Portuguesa', 1, '', 'Eletricista', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Bordalo Pinheiro, Nº 39, 6º Dto.', '869.pdf', -1, 1, '', -1, '', -1, '15681125', 4, '', '', '0000-00-00', '0000-00-00'),
(870, 'Fernanda Maria da Silva Henriques', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 4, 205032745, 1, 0, 0, 0, '', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 916754256, 0, 0, '', '', 'Portuguesa', 1, '', 'Linha de montagem na Auto Europa; Estufadora de 1ª; Empregada de balcão;', 1, 19, 1, 4, 26, 36, -1, 0, 0, 1, 'Rua Amilcar Cabral, nº 6 r/c dto - 2835-060 ', '870.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(871, 'Cesaltina Jusilinelcia Almada Lopes Santos', '0000-00-00', '2015-05-07 22:00:00', 2, 10, 4, 221376399, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 968895262, 0, 0, '', 'Guiné Bissau', 'Guiné Bissau', 1, '', 'Lar de idosos; Cantina em escola', 1, 19, 0, -1, 42, 36, 35, 0, 0, 1, 'Rua Francisco Miguel, Nº 102, 2º Esq.', '871.pdf', 1, -1, '', -1, '', -1, '7770R166R', 1, '', '', '0000-00-00', '0000-00-00'),
(872, 'Filipa Cristina Pereira Monteiro', '0000-00-00', '2015-05-07 22:00:00', 2, 10, 4, 265917409, 5, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 939376910, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua Bordalo Pinheiro nº 21 6º dto - 2835-235', '872.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(873, 'Jose Manuel Salvado Lopes', '1983-11-13', '2015-05-07 22:00:00', 1, 3, 2, 230211941, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 963504174, 0, 0, '', 'Paio Pires Seixal', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 11, 26, -1, 0, 0, 1, 'Rua 1º de Maio nº58 Quinta da Areia 2830-481', '873.pdf', 1, -1, '', -1, '', -1, '12409129', 3, '', '', '0000-00-00', '0000-00-00'),
(874, 'Mónica Alexandra Medeiros Iria', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 4, 232217602, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 915081704, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, 4, 36, 5, 7, 0, 0, 1, 'Rua Francisco Miguel, Nº 52, 4º Dto.', '874.pdf', 1, -1, '', -1, '', -1, '12160638', 3, '', '', '0000-00-00', '0000-00-00'),
(875, 'Georgete Jacira Veríssimo do Rosário', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 5, 233464549, 1, 1, 0, 0, '', 0, 0, -1, -1, 36, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 967514561, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, -1, -1, 1, 0, 1, 'Rua de Diu nº 3 - 2º esq - 2835', '875.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(876, 'João Manuel Lopes', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 1, 170444309, 2, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua de Diu nº 3 - 2º esq - 2835', '876.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(877, 'Maria Luisa Monteiro Veríssimo Lopes', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 2, 219800316, 5, 0, 0, 0, '', 0, 0, 0, -1, 35, 0, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 964806878, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 35, -1, -1, -1, 0, 1, 'Rua de Diu nº 3 - 2º esq - 2835', '877.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(878, 'Helena Fátima Rafael Ferreira Gonçalves', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 5, 233116621, 4, 0, 0, 0, '', 0, 0, 0, 2, 24, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 964293978, 0, 0, '', '', 'Portuguesa', 1, '', 'Empregada Doméstica; Limpezas; Cozinheira; ', 1, 19, 0, -1, 24, 35, -1, 0, 0, 1, 'Praceta 1º de Dezembro nº8, 3º ft - 2835-055 ', '878.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(879, 'Ricardo Rafael Monteiro de Araújo', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 2, 229297897, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 914693496, 0, 0, '', 'Lisboa', 'Portuguesa', 1, '13549308', 'Carpinteiro; Pintor; Ajudante de cozinha.', 1, 19, 0, -1, 11, 24, -1, 0, 0, 1, 'Praceta dos Metalúrgicos, nº 2, 1º Esq.', '879.pdf', -1, -1, '', -1, '', -1, '13549308', 4, '', '', '0000-00-00', '0000-00-00'),
(880, 'Ilda Maria Hermenegildo Oliveira', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 3, 113776775, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 960005207, 0, 0, '', '', 'Portuguesa', 1, '', 'Limpezas em casas Particulares;', 1, 19, 0, -1, 35, -1, -1, 0, 0, 1, 'Rua de Goa nº 15, 2º dto - 2835-091', '880.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(881, 'João Adega da Conceição Pinto', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 2, 260787107, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 934625546, 0, 0, '', '', 'Portuguesa', 1, '', 'Vendas em Feiras de Produtos de couro;', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua de Angola nº 42, 1º dto - 2835-087', '881.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(882, 'Jorge Manuel Madeira Vasques', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 4, 170258297, 1, 0, 0, 0, '', 0, 1, 0, 2, 28, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 964877566, 0, 0, '', '', 'Portuguesa', 1, '', 'Curso de Informática; Curso de Inglês', 1, 19, 0, -1, 32, -1, -1, 0, 0, 1, 'Rua de Diu nº 41, 1º esq 2835-090', '882.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(883, 'Aléxia Tavares da Silva', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 4, 272899453, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 926366371, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 5, 15, -1, 0, 0, 1, 'Rua do Ribatejo, Nº 25, 2º Dto.', '883.pdf', -1, 1, 'Estética - Cabeleireiro', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(884, 'Ana Cláudia Vicente Baptista', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 5, 232142700, 1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 969616845, 0, 0, '', '', 'Portuguesa ', 1, '', '', 1, 19, 1, 4, 5, 24, 42, 0, 0, 1, 'Rua das Beiras, nº 29, R/ch', '884.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(885, 'Ana Maria Duarte Tomé', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 5, 142396044, 4, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 932623157, 0, 0, '', '', 'Portuguesa', 1, '', 'Curso de Técnica Ação Educativa', 1, 19, 0, -1, 15, 36, -1, 0, 0, 1, 'Avenida Alfredo Diniz Alex, Lote 67, R/ch Esq.', '885.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(886, 'Ana Sofia Almeida Santinho', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 4, 251120876, 1, 0, 0, 0, '', 0, 0, 0, 1, 36, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 963139710, 0, 0, '', '', 'Portuguesa', 1, '', 'Curso de Auxiliar de Ação Educativa', 1, 19, 0, -1, 15, 36, -1, 0, 0, 1, 'Rua do Algarve, Nº 16 A, 1º Andar', '886.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(887, 'Anabela Gonçalves Meireles dos Santos', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 4, 204969921, 2, 0, 0, 0, '', 0, 0, 0, -1, 41, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 927171510, 0, 0, '', '', 'Portuguesa', 1, '', 'Rececionista', 1, 19, 0, -1, 41, 2, -1, -1, 0, 1, 'Rua 27 de Outubro, nº 2, 2º Esq.', '887.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(888, 'António Júlio da Costa Evangelista', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 3, 111266360, 4, 0, 0, 0, '', 0, 0, 0, 2, 41, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 936129029, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, 4, 41, 3, 39, 0, 0, 1, 'Rua das Beiras, nº 13, R/ch Dto.', '888.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(889, 'José Inácio Palmeiro Cordeiro', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 2, 158032179, 1, 0, 0, 0, '', 0, 0, 0, -1, 26, 0, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 967225343, 0, 0, '', '', 'Portuguesa', 1, '', 'Mecânica Industrial;', 1, 19, 0, -1, 26, -1, -1, -1, 0, 1, 'Rua de Diu nº 4 - 1º esq', '889.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(890, 'António Martinho Esteves Coelho', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 4, 186583877, 1, 0, 0, 0, '', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 961943356, 0, 0, '', 'Viana do Castelo', 'Portuguesa', 1, '1725098', 'Eletricista; Serralheiro; Montador.', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Cesário Verde, Nº 26, R/ch', '890.pdf', 1, -1, '', -1, '', -1, '10696997', 3, '', '', '0000-00-00', '0000-00-00'),
(891, 'Liliana Isabel Silva Batista Anjos', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 2, 236379526, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 913550932, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, 35, -1, 0, 0, 1, 'Rua dos Açores nº67 - 1º esq', '891.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(892, 'Manuel Jorge Cabral Freire', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 2, 240857585, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 925473858, 0, 0, '', '', 'Portuguesa', 1, '', 'Construção Cívil; Motorista;', 1, 19, 1, 4, 11, -1, -1, 0, 0, 1, 'Rua de Diu nº8, 2º esq', '892.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(893, 'Arcádio José Ricardo Teixeira', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 4, 167900919, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 963131870, 963131870, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, 24, -1, 0, 0, 1, 'Praceta Carlos Riacho, Lote 88, 3º Esq.', '893.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(894, 'Maria Augusta Lopes Ramos', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 2, 229316441, 2, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 936547188, 0, 0, '', '', 'Portuguesa', 1, '', 'Vendedora em Feiras;', 1, 19, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua da Juventude nº5 - 2º esq - 2835-082', '894.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(895, 'António José Fernandes Cabeça Caramelo', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 3, 225440920, 2, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 936547188, 0, 0, '', '', 'Portuguesa', 1, '', 'Vendedor em Feiras;', 1, 19, 1, 4, -1, -1, -1, 0, 0, 1, 'Rua da Juventude nº5 - 2º esq - 2835-082', '895.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(896, 'Celina Paixão Delgado Duarte', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 3, 229471706, 1, 0, 0, 0, '', 0, 0, 0, 1, 35, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 968697301, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 24, 24, -1, 0, 0, 1, 'Rua de Trás os Montes, Nº 104, 1º Esq.', '896.pdf', 1, -1, '', -1, '', -1, '30908800', 3, '', '', '0000-00-00', '0000-00-00'),
(897, 'Maria Cláudia Rodrigues de Oliveira', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 4, 212063332, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 936690845, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, -1, -1, 0, 0, 1, 'Estrada Nacional nº 173 - r/c esq', '897.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(898, 'Christine Luyambuladio Mavis', '0000-00-00', '2015-05-07 22:00:00', 2, 10, 3, 242893694, 2, 0, 0, 0, '', 0, 0, 0, 2, 5, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 964457290, 0, 0, '', 'Congo', 'Congo', 1, '', 'Certificado de Cabeleireiro e Estética.', 1, 19, 0, -1, 5, -1, -1, 0, 0, 1, 'Rua Afonso Lopes Vieira, Lote 37, 5º Esq.', '898.pdf', 1, -1, '', -1, '', -1, '439145J9J', 1, '', '', '0000-00-00', '0000-00-00'),
(899, 'Maria de Fátima Prates Ferreira Tavares', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 4, 242336914, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 926102951, 0, 0, '', '', 'Portuguesa', 1, '', 'Contínua em Escolas;', 1, 19, 0, -1, 35, 15, -1, 0, 0, 1, 'Rua de Diu nº 11 - r/c dto - 2835-090', '899.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(900, 'Maria de Lurdes Almeida da Silva', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 2, 131257129, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 967295023, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 35, -1, -1, 0, 0, 1, 'Rua de Angola nº 93 - 2835', '900.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(901, 'Maria João Bernardes Rosa Pereira', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 4, 1648888, 4, 0, 0, 0, '', 0, 0, 0, 2, 5, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 916541111, 0, 0, '', '', 'Portuguesa', 1, '', 'Recepcionista; Telefonista; Operadora de dados; Vendedora de loja; Empregada de Balcão;Ajudante de Pastelaria; Contabilidade; Apoio Domiciliário; Curso Manicura e pedi cure; ', 1, 19, 1, 4, 5, 8, 12, 0, 0, 1, 'Rua 8 de Março nº13, 3º dto - 2835-266', '901.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(902, 'Maria João Cortes Andrade', '0000-00-00', '2015-05-07 22:00:00', 2, 10, 4, 226842118, 5, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 960110789, 0, 0, '', '', 'Portuguesa', 1, '', 'Vendedora Ambulante', 1, 19, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Garcia da Orta, nº 6, 1º Esq. - 2835', '902.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(903, 'Ana Paula Páscoa Fernandes', '1966-08-21', '2015-05-07 22:00:00', 2, 6, 5, 186533470, 1, 0, 0, 0, 'Vigilante', 0, 0, 0, -1, 15, 0, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 934897528, 0, 0, '', '', 'Portuguesa', 1, '', 'Experiencia anterior em ;  Empregada de Escritório, Empregada de Balcão, vendas, limpezas, Auxiliar de Geriatria e Vigilante em escolas.', 1, 19, 0, -1, 36, 8, -1, -1, 0, 1, 'Rua de Angola, nº 48, 3º Dto.', '903.pdf', 1, -1, '', -1, '', -1, '7781705', 4, '', '', '0000-00-00', '0000-00-00'),
(904, 'Cláudia Marisa Catarino Vicente', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 4, 223954373, 1, 0, 0, 0, '', 0, 0, 0, 1, 42, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 934299360, 0, 0, '', 'Lamego', 'Portuguesa', 1, '1775266', 'Lar de idosos; Ajudante de cozinha; Limpezas', 1, 19, 0, -1, 42, 24, 35, 0, 0, 1, 'Rua 26 de Janeiro, Nº 6, R/ch', '904.pdf', 1, -1, '', -1, '', -1, '11890095', 3, '', '', '0000-00-00', '0000-00-00'),
(905, 'Carlos Manuel Vargas Gimenes', '0000-00-00', '2015-05-07 22:00:00', 2, 10, 4, 209918527, 5, 0, 0, 0, '', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 939610825, 0, 0, '', '', 'Portuguesa', 1, '', 'Ajudante de Tipografia; Servente; Vendedor de Feiras', 1, 19, 0, -1, 26, -1, -1, 0, 0, 1, 'Rua Garcia da Orta, nº 6, 1º Esq. - 2835', '905.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(906, 'Avila Fernandes Montrond Andrade', '0000-00-00', '2015-05-07 22:00:00', 2, 8, 4, 237005387, 1, 0, 0, 0, 'Manicura/Pedicura', 0, 0, 0, 2, 7, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 963893391, 0, 0, '', 'Cabo Verde', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 5, 5, -1, 0, 0, 1, 'Rua 18 de Janeiro, 2A, 2º DRT ', '906.pdf', 1, -1, '', -1, '', -1, '6749581', 4, '', '', '0000-00-00', '0000-00-00'),
(907, 'Vitor Manuel Nunes Duarte', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 2, 194837025, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 934299360, 0, 0, '', 'Soure', 'Portuguesa', 1, '', 'Pedreiro', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua 26 de Janeiro, Nº 6, R/ch', '907.pdf', 1, 1, '', -1, '', -1, '10957153', 3, '', '', '0000-00-00', '0000-00-00'),
(908, 'Anabela Ventura Picado Correia', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 4, 196476461, 2, 0, 0, 0, 'Auxiliar de Ação Educativa', 0, 0, 0, 2, 16, 1, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 918570933, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 15, 39, 36, 0, 0, 1, 'Rua José Dias Coelho nº 1, 1º Esq.', '908.pdf', 1, -1, '', -1, '', -1, '9012691', 4, '', '', '0000-00-00', '0000-00-00'),
(909, 'Cláudia Sofia Pereira da Silva', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 2, 227052340, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 935609964, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, 35, -1, 0, 0, 1, 'Rua Luís de Camões, Nº 116', '909.pdf', 1, 1, '', -1, '', -1, '13365794', 3, '', '', '0000-00-00', '0000-00-00'),
(910, 'Cristina Paula Salgueiro André', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 3, 201148536, 4, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 916885906, 0, 0, '', '', 'Portuguesa', 1, '', 'Não tem experiência profissional. Tem curso de cozinha.', 1, 19, 0, -1, 39, 35, -1, 0, 0, 1, 'Avenida da Liberdade, Nº 45, 1º Dto.', '910.pdf', 1, -1, '', -1, '', -1, '10749021', 3, '', '', '0000-00-00', '0000-00-00'),
(911, 'Maria do Rosário Heitor Morais Afonso', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 5, 178487972, 1, 0, 0, 0, '', 0, 0, 0, 2, 41, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 913997930, 0, 0, '', '', 'Portuguesa', 1, '', 'Empregada de balcão; Administrativa; Empregada de restaurante; Operadora de dados;', 1, 19, 0, -1, 41, 36, -1, 0, 0, 1, 'Rua São Tomé e Principe nº 46, 2º dto - 2835-150', '911.pdf', -1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(912, 'Milena Emília Honório Santos Barros', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 4, 218864698, 4, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 965669091, 0, 0, '', '', 'Portuguesa', 1, '', 'Responsável de Loja;', 1, 19, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua Dom António Ferreira Gomes nº 5, 3º esq', '912.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(913, 'António Manuel Coelho Silvano', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 5, 204105641, 1, -1, -1, -1, 'Tecnico eletrônica,', -1, -1, 0, 2, 43, 1, -1, '', -1, '', 5, 2, 2, -1, '', -1, -1, '', -1, -1, -1, -1, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, 4, 43, 45, -1, 0, -1, 1, 'Rua de Moçambique nº 65, 2º Dto', '913.pdf', 1, -1, '', -1, '', -1, '9834375', 4, '', '', '0000-00-00', '0000-00-00'),
(914, 'Cristiano Manuel André Eusébio', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 5, 250468697, 1, 0, 0, 0, '', 0, 0, 0, 1, 6, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 916885906, 0, 0, '', '', 'Portuguesa', 1, '14144963', '', 1, 19, 0, -1, 30, -1, -1, 0, 0, 1, 'Avenida da Liberdade, Nº 45, 1º Dto.', '914.pdf', 1, -1, '', -1, '', -1, '14144963', 3, '', '', '0000-00-00', '0000-00-00'),
(915, 'Nuno Miguel da Silva Simões', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 5, 205033130, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 914896330, 0, 0, '', '', 'Portuguesa', 1, '', 'Electricista; Cafés; Talhos; Segurança; Pedreiro;', 1, 19, 0, -1, 11, 36, -1, 0, 0, 1, 'Rua Parque Estrela Vermelha nº 2, 1º esq', '915.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(916, 'Angelina Borges Dias', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 2, 228342112, 1, 0, 0, 0, 'Limpezas', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 961143864, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 35, 39, -1, 0, 0, 1, 'Rua Presidente Bernardino machado, Bloco E1, 3º Esq', '916.pdf', -1, -1, '', -1, '', -1, '13340011', 3, '', '', '0000-00-00', '0000-00-00'),
(917, 'Deolinda Beatriz Pereira Barroso', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 4, 209755474, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 934517461, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, 35, -1, 0, 0, 1, 'Rua 25 de Abril, Nº 19 G, R(ch Esq.', '917.pdf', 1, -1, '', -1, '', -1, '10968211', 3, '', '', '0000-00-00', '0000-00-00'),
(918, 'Andreia Vanessa Rosa Caneiras', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 4, 271977833, 1, 0, 0, 0, '', 0, 0, 0, 2, 6, 1, 0, '', 0, '', 3, -1, 1, 0, '', 0, 0, '', 0, 913090971, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua dos Açores - nº59 R/C Esq ', '918.pdf', 1, -1, '', -1, '', -1, '13666552', 3, '', '', '0000-00-00', '0000-00-00'),
(919, 'Pedro Miguel dos Santos Silva Madeira', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 6, 211743358, 1, 0, 0, 0, '', 0, 0, 0, 2, 12, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', 'Bacharelato em contabilidade e Administração; Licenciatura em Economia;', 1, 19, 1, 4, 12, 22, -1, 0, 0, 1, 'Rua de Diu nº33, 2º esq - 2835-090', '919.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(920, 'Sara Pereira da Rosa', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 5, 199819432, 4, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 967173473, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 35, -1, -1, 0, 0, 1, 'Praceta José Regio nº1 - 1º esq - 2835-049', '920.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(921, 'Dora Túlia Santos Gomes', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 1, 240497384, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 969686842, 0, 0, '', '', 'Portuguesa', 1, '', 'Lar de idosos', 1, 19, 0, -1, 42, 35, -1, 0, 0, 1, 'Rua do Alentejo, nº 35, Porta 1', '921.pdf', 1, 1, '', -1, '', -1, '13767218', 3, '', '', '0000-00-00', '0000-00-00');
INSERT INTO `utentes` (`id`, `nome`, `dataNascimento`, `dataInscricao`, `idConcelho`, `idFreguesia`, `idHabilitacoes`, `NIF`, `idEstadoCivil`, `trabalhadorPrecario`, `PrestadorDeServicos`, `TrabalhadorContaOutrem`, `ultimaProfissaoExercida`, `semSubsidio`, `subsidioDesemprego`, `EspecificacaoEmprego`, `tempoDesempregado`, `ultimaProfissaoExercidaDesempregado`, `beneficiarioRSI`, `outrosSubsidios`, `QuaisOutrosSubsidios`, `Estudante`, `estabelecimentoEnsino`, `idGrupoEtario`, `idSituacaoRegularizada`, `idGenero`, `MedidasAtivasEmprego`, `QualMedidasAtivasEmprego`, `Voluntariado`, `FormacaoProfissional`, `QualFormacaoProfissional`, `Biscates`, `Telemovel`, `Telefone`, `OutroTelefone`, `Email`, `Naturalidade`, `Nacionalidade`, `InscritoCentroEmprego`, `NumeroInscricaoCentroEmprego`, `Observacoes`, `idFrontOfficeSinalizador`, `idTecnico`, `cartaDeConducao`, `cartaDeConducaoCategoriaID`, `interesseProfissional1`, `interesseProfissional2`, `interesseProfissional3`, `empregado`, `outraSituacao`, `estado`, `morada`, `CV`, `pedidoInicialEmprego`, `pedidoInicialFormacao`, `pedidoInicialFormacaoQual`, `pedidoInicialOutra`, `pedidoInicialOutraQual`, `NISS`, `numeroIdentificacao`, `tipoDocumentoIdentificacao`, `codPostal`, `nrCartaConducao`, `validadeDocumentoIdentificacao`, `emissaoCartaConducao`) VALUES
(922, 'Humberto Ricardo Rodrigues Miranda Morais', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 2, 176000232, 2, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 967097362, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, 26, -1, 0, 0, 1, 'Rua dos Açores nº 61 2º dto - 2835-112', '922.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(923, 'Rogério Carlos Varela de Almeida', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 2, 175360464, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 969686842, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua do Alentejo, Nº 35, Porta 1', '923.pdf', 1, 1, '', -1, '', -1, '9114934', 3, '', '', '0000-00-00', '0000-00-00'),
(924, 'António Francisco Martins Colaço', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 4, 176833005, 1, 0, 0, 0, 'Segurança', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, -1, 2, 0, '', 0, 0, '', 0, 961510285, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, -1, -1, -1, 0, 0, 1, 'Estrada Nacional 11, nº 205 A, 3º Dto. - 2835-175 ', '924.pdf', 1, -1, '', -1, '', -1, '1803779', 3, '', '', '0000-00-00', '0000-00-00'),
(925, 'Sofia da Conceição Martins Mourinho Neves', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 5, 234706333, 1, 0, 0, 0, '', 0, 0, 0, 1, 15, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 936884948, 0, 0, '', '', 'Portuguesa', 1, '', 'Auxiliar Educativa', 1, 19, 0, -1, 15, -1, -1, 0, 0, 1, 'Rua Bento de Jesus Caraça nº 5, 2º esq', '925.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(926, 'António Gaspar Caeiro', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 2, 160536170, 2, 0, 0, 0, 'Padeiro', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 6, -1, 2, 0, '', 0, 0, '', 0, 966103819, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 39, -1, -1, 0, 0, 1, 'Rua Angola -nº94 - 1 - 2835-087', '926.pdf', 1, -1, '', -1, '', -1, '6121085', 4, '', '', '0000-00-00', '0000-00-00'),
(927, 'Edna Gonçalves Cascalheira', '0000-00-00', '2015-05-07 22:00:00', 2, -1, 4, 248665057, -1, 0, 0, 0, '', 0, 0, 0, 2, 6, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 913654576, 0, 0, '', '', 'Portuguesa', 0, '', '', 1, 19, 0, -1, 36, 35, 26, 0, 0, 1, 'Praceta dos Ferroviários, nº 7, R/ch Esq.', '927.pdf', 1, -1, '', -1, '', -1, '13791154', 3, '', '', '0000-00-00', '0000-00-00'),
(928, 'Bruno Adriano Cordeiro Salvadorinho', '0000-00-00', '2015-05-07 22:00:00', 2, 6, -1, 221203940, -1, 0, 0, 0, 'Serralheiro', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, -1, 2, 0, '', 0, 0, '', 0, 965390174, 0, 0, '', '', 'Portuguesa', 1, '', 'Autocad. Serralheiro, soldador, medidor orçamentista, tropa, restauração\r\n', 1, 19, 1, 4, 11, 39, -1, 0, 0, 1, 'Rua de Angola, nº 27, R/C - 2835-087', '928.pdf', 1, -1, '', -1, '', -1, '10509909', 3, '', '', '0000-00-00', '0000-00-00'),
(929, 'Élson Manuel Alves Brito', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 2, 250717948, 5, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 916596694, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Eduardo Mondelane Pátio 47, Porta 15 - 2835', '929.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(930, 'Zélia Maria Pais Paulo Amador', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 2, 127091521, 3, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 933465147, 0, 0, '', '', 'Portuguesa', 1, '', 'Ajudante de Cozinha; Limpezas', 1, 19, 0, -1, 35, -1, -1, 0, 0, 1, 'Estrada Nacional nº11 1 nº 47', '930.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(931, 'Hugo Miguel Paulo Amador', '0000-00-00', '2015-05-07 22:00:00', 2, 6, 2, 254971520, 5, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 933465147, 0, 0, '', '', 'Portuguesa', 1, '', 'Pedreiro', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Estrada Nacional nº11 1 nº 47', '931.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(932, 'Daniel Azevedo Salvador', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 2, 137895143, 2, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 912601509, 0, 0, '', '', 'Portuguesa', 1, '4898490', 'Estucador', 1, 19, 0, -1, 11, 35, -1, 0, 0, 1, 'Rua Palmira Bastos, Nº 5, 3º Dto.', '932.pdf', 1, -1, '', -1, '', -1, '06088171', 3, '', '', '0000-00-00', '0000-00-00'),
(933, 'Daniela Alexandra Martins Salvador', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 3, 248943600, 1, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 912603836, 0, 0, '', '', 'Portuguesa', 1, '', '1º Emprego', 1, 19, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Palmira Bastos, Nº 5, 3º Dto.', '933.pdf', 1, 1, '', -1, '', -1, '14767360', 3, '', '', '0000-00-00', '0000-00-00'),
(934, 'Myroslav Kysylytsya', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 3, 241326806, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 920329105, 0, 0, '', '', 'Ucrania', 1, '', 'Pedreiro', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Poeta Bocage, Nº 25, 2º Esq.', '934.pdf', 1, 1, 'Português para Estrangeiros', -1, '', -1, '0935XV726', 1, '', '', '0000-00-00', '0000-00-00'),
(935, 'Nelson Filipe Damázio Casadinho', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 3, 241376637, 1, 0, 0, 0, '', 0, 0, 0, 1, 36, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 918866939, 0, 0, '', '', 'Portuguesa', 1, '', 'Lavandaria', 1, 19, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua 26 de Janeiro, Nº 3, R/ch', '935.pdf', 1, 1, '', -1, '', -1, '14253020', 3, '', '', '0000-00-00', '0000-00-00'),
(936, 'Nunes José Gomes Ferreira', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 5, 208570482, 2, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 934131472, 0, 0, '', '', 'Portuguesa', 1, '', 'Manobrador de Grua\r\nCurso Profissional de Sistema Solar', 1, 19, 1, 4, -1, -1, -1, 0, 0, 1, 'Rua do Algarve, Nº 54, 1ª Esq.', '936.pdf', 1, -1, '', -1, '', -1, '31477198', 3, '', '', '0000-00-00', '0000-00-00'),
(937, 'Cândida da Cruz Almeida Lopes da Fonseca ', '0000-00-00', '2015-05-10 22:00:00', 2, 10, 6, 192371304, 1, 0, 0, 0, '', 0, 0, 0, 2, 8, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 961467106, 0, 0, '', '', 'Portuguesa', 1, '', 'Bacharelato em Contabilidade e Administração;\r\nGestora TOC;\r\nLimpezas;\r\nOperadora de Caixa e armazém;', 1, 19, 0, -1, 8, 35, -1, 0, 0, 1, 'Rua Bordalo Pinheiro, Lote 19, R/c  Esq. - 2835-235', '937.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(938, 'Débora Alexandra Vicente Costa', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 4, 243768788, 1, 0, 0, 0, '', 0, 0, 0, 2, 8, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 910389027, 0, 0, '', '', 'Portuguesa', 1, '', 'Repositor;\r\nOperadora de Caixa', 1, 19, 0, -1, 8, 36, -1, 0, 0, 1, 'Rua Samora Machel nº 35, 2º Dto.  - 2835-158', '938.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(939, 'Irina Nicolaevna Gomes', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 6, 213579812, 2, 0, 0, 0, '', 0, 0, 0, 1, 36, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 934131472, 0, 0, '', 'Letónia', 'Rússia', 1, '', 'Licenciatura em Ciências Humanas', 1, 19, 0, -1, 36, 26, 35, 0, 0, 1, 'Rua do Algarve, Nº 54, 1º Esq.', '939.pdf', 1, -1, '', -1, '', -1, 'W2737685X', 1, '', '', '0000-00-00', '0000-00-00'),
(940, 'Carlos Manuel Pires Duarte ', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 2, 193576813, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 936175182, 0, 0, '', '', 'Portuguesa', 1, '', 'Operador Construção Civil;\r\nAjudante de armazém;\r\nAjudante de Motorista;\r\nBombeiro Naval;\r\nServente de Estucador;', 1, 19, 1, 4, 11, 26, -1, 0, 0, 1, 'Praceta das Garagens, nº 5 - 2835', '940.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(941, 'Nuno Miguel Soares Anastácio', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 5, 218686277, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 938960648, 0, 0, '', 'Lisboa', 'Portuguesa', 1, '', 'Operador de Empilhadoras; Empregado de mesa; Pintor.\r\nCurso Profissional Instalação de sistemas solares.', 1, 19, 0, -1, 11, 39, -1, 0, 0, 1, 'Rua 26 de Janeiro, Nº 9, Pátio 3', '941.pdf', 1, -1, '', -1, '', -1, '11035589', 3, '', '', '0000-00-00', '0000-00-00'),
(942, 'Clara Mira Rosa', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 4, 194837041, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 913090971, 0, 0, '', '', 'Portuguesa', 1, '', 'Barmaid;\r\nEmpregada de Balcão;\r\nEmpregada Fabril;', 1, 19, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua dos Açores - nº59 R/C Esq - 2835-112', '942.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(943, 'Elsa Cristina Rendeiro Simões', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 5, 192877550, 1, 0, 0, 0, '', 0, 0, 0, 2, 8, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 968165712, 0, 0, '', '', 'Portuguesa', 1, '', 'Recepcionista;\r\nAdministrativa;\r\nPromotora de Vendas;', 1, 19, 0, -1, 8, 36, -1, 0, 0, 1, 'Rua de Angola. nº 93, R/c - 2835-087', '943.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(944, 'Paulo Fernando de Almeida Martins', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 5, 179235095, 1, 0, 0, 0, '', 0, 0, 0, 2, 34, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 933453140, 0, 0, '', '', 'Portuguesa', 1, '', 'Curso Profissional Técnico de Redes Nível 5.\r\nCurso Profissional Técnico de Transportes.', 1, 19, 1, 4, 29, 3, 45, 0, 0, 1, '', '944.pdf', 1, -1, '', -1, '', -1, '08556901', 3, '', '', '0000-00-00', '0000-00-00'),
(945, 'Paulo Ricardo Maia Rim', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 2, 245403329, 1, 0, 0, 0, '', 0, 0, 0, 2, 8, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 939890393, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, 4, 8, -1, -1, 0, 0, 1, 'Rua Francisco Miguel, Lote 7, R/CH Esq.', '945.pdf', 1, 1, '', -1, '', -1, '14537234', 3, '', '', '0000-00-00', '0000-00-00'),
(946, 'Pedro Miguel Vargas Vitoreira', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 4, 229273890, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 936945895, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, 4, 8, 11, -1, 0, 0, 1, 'Rua da Amizade, Nº 67, 3ª A', '946.pdf', 1, 1, '', -1, '', -1, '13562680', 3, '', '', '0000-00-00', '0000-00-00'),
(947, 'Denise Andreia dos Reis Vitoreira', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 2, 264785355, 1, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 2, 2, 1, 0, '', 0, 0, '', 0, 936945895, 0, 0, '', '', 'Portuguesa', 1, '', '1º Emprego.', 1, 19, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua da Amizade, Nº 67, 3º A', '947.pdf', 1, 1, '', -1, '', -1, '15142309', 3, '', '', '0000-00-00', '0000-00-00'),
(948, 'Filomena Branca', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 4, 213250212, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 927655129, 0, 0, '', '', 'Portuguesa', 1, '', 'Auxiliar de Lar;\r\nAjudante de Cozinha;', 1, 19, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Gil Vicente , nº 31, R/c Dto. - 2835', '948.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(949, 'Hermenegilda Inês Swayla Fernandes da Silva', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 3, 235704229, 1, -1, -1, -1, '', -1, -1, 0, 2, 35, 1, -1, '', -1, '', 5, 1, 1, -1, '', -1, -1, '', -1, 960336484, -1, -1, '', '', 'Portuguesa', 1, '', 'Ajudante de Refeitório;\r\nEmpregada Doméstica;', 1, 19, -1, -1, 24, 35, -1, 0, -1, 1, 'Rua Garcia de Orta nº 4, R/c Dto. - 2835-251', '949.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(951, 'Raghubir Singh', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 4, 235662844, 1, -1, -1, -1, '', -1, -1, 0, 2, 11, 1, -1, '', -1, '', 6, 1, 2, -1, '', -1, -1, '', -1, 920202248, -1, -1, '', '', 'India', 1, '3901597', 'Ajudante de Pedreiro', 1, 19, -1, -1, 11, -1, -1, 0, -1, 1, 'Praceta Carlos Riacho, Lote 88, 3º Esq.', '951.pdf', 1, 1, '', -1, '', -1, '939555V9W              ', 1, '', '', '0000-00-00', '0000-00-00'),
(952, 'José Carlos Santana Correia', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 3, 153994967, 2, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 918570933, 0, 0, '', '', 'Portuguesa', 1, '', 'Curso Higiene e Segurança no Trabalho;\r\nCurso Operador de Armazém;\r\nPedreiro;\r\nLadrilhador;', 1, 19, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua José Dias Coelho nº 1, 1º Esq. - 2835-132', '952.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(953, 'Rúben Daniel Nascimento Justo', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 3, 269782281, 1, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 2, 1, 2, 0, '', 0, 0, '', 0, 935625732, 0, 0, '', '', 'Portuguesa', 1, '', 'Ajudante de Mecânico de Gruas.', 1, 19, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua 25 de Abril, Nº 29, R/CH Esq.', '953.pdf', 1, 1, '', -1, '', -1, '14777963', 3, '', '', '0000-00-00', '0000-00-00'),
(954, 'Susana Filipa Figueiredo Barros', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 4, 246735120, 1, 0, 0, 0, '', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 913930094, 0, 0, '', '', 'Portuguesa', 1, '3328955', '', 1, 19, 0, -1, 26, 36, 5, 0, 0, 1, 'Rua Bordalo Pinheiro, Lote 20, 1º Esq.', '954.pdf', 1, -1, '', -1, '', -1, '13894876', 3, '', '', '0000-00-00', '0000-00-00'),
(955, 'Lénia Maria Lagoa Parreira', '0000-00-00', '2015-05-10 22:00:00', 2, 10, 5, 217273904, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 967913261, 0, 0, '', '', 'Portuguesa', 1, '', 'Auxiliar de Laboratório;\r\nEmpregada de Balcão;', 1, 19, 0, -1, 36, -1, -1, 0, 0, 1, 'Avenida Alfredo Dinis, Lote 76, 3º Dto. - 2835-202', '955.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(956, 'Manuel Francisco Guerra Garcia', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 4, 197280919, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 960279264, 0, 0, '', '', 'Portuguesa', 1, '', 'Electricista;\r\nSegurança;', 1, 19, 1, 4, 10, -1, -1, 0, 0, 1, 'Rua de Moçambique nº 57, 1º Esq. - 2835-096', '956.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(957, 'Elisângela Tavares Rodrigues', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 5, 223930539, 1, 0, 0, 0, '', 0, 0, 0, 2, 15, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 969431480, 0, 0, '', '', 'Portuguesa', 1, '1750350', 'Curso de Formação de Técnica Ação Educativa', 1, 19, 1, 4, 15, -1, -1, 0, 0, 1, 'Avenida da Liberdade, Nº 149, 3º Dto.', '957.pdf', 1, -1, '', -1, '', -1, '15569193', 3, '', '', '0000-00-00', '0000-00-00'),
(958, 'Manuela Aldina Figueiredo André Assunção', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 4, 224944053, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 969112989, 0, 0, '', '', 'Portuguesa', 1, '', 'Empregada de Balcão;\r\nEmpregada de Limpezas; \r\nDistribuição de Publicidade;', 1, 19, 0, -1, 35, 36, -1, 0, 0, 1, 'Rua Presidente Bernardino Machado, nº 7, R/c  Esq. - 2835-146', '958.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(959, 'Márcio Miguel Rodrigues Páscoa', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 2, 208484159, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 912136515, 0, 0, '', '', 'Portuguesa', 1, '', 'Operador de Construção Civil;', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua António Sérgio nº 16 Anexo A - 2835-062', '959.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(960, 'Maria Cristina Antunes Freitas', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 2, 193367904, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 961096848, 914619535, 0, '', '', 'Portuguesa', 1, '', 'Servente de Limpezas;', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua São Tomé e Príncipe, nº 85 casa 5, 2835-150', '960.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(961, 'Fernando Manuel Matias Santos', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 1, 176909818, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 967338054, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '', 'Servente de Pedreiro', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua dos Lusíadas, Nº 16, 1º Dto.', '961.pdf', 1, 1, '', -1, '', -1, '10025189', 3, '', '', '0000-00-00', '0000-00-00'),
(962, 'Franclin António Parreira Nogueira', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 1, 223352691, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 965637316, 0, 0, '', '', 'Portuguesa', 1, '5389181', 'Canalizador; Pedreiro; Pintor; Ladrilhador.', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Luís de Camões, Nº 146, 1º Dto.', '962.pdf', 1, 1, '', -1, '', -1, '11893732', 3, '', '', '0000-00-00', '0000-00-00'),
(963, 'Nuno Miguel Lopes Gomes', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 4, 198807287, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 939503153, 0, 0, '', '', 'Portuguesa', 1, '', 'Desmontador de carros;\r\nTropa;\r\nAjudante de pintor;\r\nAjudante de Serralheiro;\r\nVigilante;\r\nOperador de linha;\r\nRepositor de Loja;', 1, 19, 0, -1, 10, 11, 36, 0, 0, 1, 'Rua da Juventude , nº 5, 1º Esq. - 2835-081', '963.pdf', -1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(964, 'Paula Alexandra Matos da Ascenção', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 4, 224307320, 1, -1, -1, -1, '', -1, -1, 0, 2, 10, 1, -1, '', -1, '', 5, 1, 1, -1, '', -1, -1, '', -1, 912534205, -1, -1, '', '', 'Portuguesa', 1, '', 'Operadora Fabril;', 1, 19, -1, -1, 10, -1, -1, 0, -1, 1, 'Rua Dom António Ferreira Gomes, nº 9 , 1º Dto. - 2835-111', '964.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(965, 'Gabriel António dos Santos Valente', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 2, 116235608, 1, 0, 0, 0, '', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 968883313, 0, 0, '', '', 'Portuguesa', 1, '', 'Serralheiro mecânico.', 1, 19, 1, 4, 11, -1, -1, 0, 0, 1, 'Rua Sebastião da Gama, Nº 41, 2º Dto.', '965.pdf', 1, -1, '', -1, '', -1, '06136552', 3, '', '', '0000-00-00', '0000-00-00'),
(966, 'Paulo Jorge Campos Monte', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 3, 145079651, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 0, 212044766, 0, '', '', 'Portuguesa', 1, '', 'Electricista;\r\nCanalizador;', 1, 19, 0, -1, 10, 11, -1, 0, 0, 1, 'Rua de Moçambique, Pátio 27, Porta 2 - 2835-096', '966.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(967, 'Helder Filipe Amarelinho Carvalho', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 4, 106481320, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 925043634, 0, 0, '', '', 'Portuguesa', 1, '1773920', '', 1, 19, 1, 4, 36, 26, 24, 0, 0, 1, 'Rua do Ribatejo, Nº 5, R/ch', '967.pdf', 1, 1, '', -1, '', -1, '05197217', 3, '', '', '0000-00-00', '0000-00-00'),
(968, 'Pedro Alexandre Mateus Graça', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 4, 201998319, 1, 0, 0, 0, '', 0, 0, 0, 2, 10, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 924300254, 0, 0, '', '', 'Portuguesa', 1, '', 'Operador fabril;\r\nComercial;\r\nFiel Armazém;\r\nOperador Construção Civil;', 1, 19, 0, -1, 10, 11, -1, 0, 0, 1, 'Praceta José Régio, nº 1, 3º Dto. - 2835-049', '968.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(969, 'Idil Fátima Andrade Oliveira', '0000-00-00', '2015-05-10 22:00:00', 2, 10, 2, 215016742, 1, 0, 0, 0, '', 0, 0, 0, 2, 24, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 963244499, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 24, 35, -1, 0, 0, 1, 'Rua Bordalo Pinheiro, , Lote 15, 5º Esq.', '969.pdf', 1, 1, '', -1, '', -1, '31324499', 3, '', '', '0000-00-00', '0000-00-00'),
(970, 'Rita Maria Almeida da Rocha Torradinhas', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 3, 243605897, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 919892266, 0, 0, '', '', 'Portuguesa', 1, '', 'Empregada de Limpezas;', 1, 19, 0, -1, 35, -1, -1, 0, 0, 1, 'Rua de Moçambique nº 45, 1º Dto. - 2835-097 ', '970.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(971, 'Isa Mara Caramelo Gouveia', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 1, 265113342, 1, 0, 0, 0, '', 0, 0, 0, 2, 8, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 935847554, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 15, -1, -1, 0, 0, 1, 'Rua Luís de Camões, Nº 44, 2º Esq.', '971.pdf', 1, 1, 'Técnica de Ação Educativa', -1, '', -1, '15623578', 3, '', '', '0000-00-00', '0000-00-00'),
(972, 'Rogério Sustelo de Sousa', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 3, 189882646, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 913676855, 0, 0, '', '', 'Portuguesa', 1, '', 'Serralheiro;\r\nAlumínios;', 1, 19, 0, -1, -1, -1, -1, 0, 0, 1, 'Estrada Nacional 11, nº 50, 3º-C - 2835', '972.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(973, 'Sara Cristina Nobre da Silva ', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 4, 212874675, 4, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 926551385, 0, 0, '', '', 'Portuguesa', 1, '', 'Emp. limpeza, auxiliar refeitório, emp de loja', 1, 19, 0, -1, 36, 35, -1, 0, 0, 1, 'Rua José Dias Coelho nº 9, 3º Dto. - 2835-132', '973.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(974, 'Isabel Emília Paulo', '0000-00-00', '2015-05-10 22:00:00', 2, -1, 5, 234966203, 1, 0, 0, 0, '', 0, 0, 0, 2, 24, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 969233609, 0, 0, '', 'Angola', 'Portuguesa', 1, '2344075', 'Ajudante de cozinha; Limpezas.\r\nCurso Profissional de Pastelaria e Padaria; Curso Profissional de Cozinha, Pastelaria e Padaria.', 1, 19, 0, -1, 24, 35, -1, 0, 0, 1, 'Rua da Liberdade, Nº 92, 2º Esq.', '974.pdf', 1, -1, '', -1, '', -1, '31377282', 3, '', '', '0000-00-00', '0000-00-00'),
(975, 'Sergina Daniela Ferreira Rasgado', '0000-00-00', '2015-05-10 22:00:00', 2, 10, 6, 237219557, 1, 0, 0, 0, '', 0, 0, 0, 2, 6, 1, 0, '', 0, '', -1, 1, 1, 0, '', 0, 0, '', 0, 923042225, 0, 0, '', '', '', 1, '', 'Licenciatura em Serviço Social; \r\nEstagio Curricular; \r\nCall Center', 1, 19, 0, -1, 42, 6, -1, 0, 0, 1, 'Rua Afonso Lopes Vieira, nº 35, 1º Esq. - 2835-227', '975.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(976, 'Joaquim Rodrigues', '0000-00-00', '2015-05-10 22:00:00', 2, 10, 3, 119129450, 1, 0, 0, 0, '', 0, 0, 0, 2, 10, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 965393961, 0, 0, '', '', 'Portuguesa', 1, '2544995', 'Vigilante', 1, 19, 0, -1, 10, -1, -1, 0, 0, 1, 'Rua Presidente Manuel Teixeira Gomes, Lote 10 A, R/ch Esq.', '976.pdf', 1, 1, '', -1, '', -1, '07791682', 3, '', '', '0000-00-00', '0000-00-00'),
(977, 'Sónia Socorro Sêmedo Pires', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 4, 231696604, 1, 0, 0, 0, '', 0, 0, 0, 2, 5, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 967116901, 0, 0, '', '', 'Portuguesa', 1, '', 'Curso Manicura e Pedicure;', 1, 19, 0, -1, 5, -1, -1, 0, 0, 1, 'Rua José Dias Coelho nº 20, 1º Dto. - 2835-132', '977.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(978, 'José João dos Santos Duarte', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 2, 117580350, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 939323762, 0, 0, '', '', 'Portuguesa', 1, '4486287', 'Carpinteiro; Pedreiro.', 1, 19, 1, 4, 11, -1, -1, 0, 0, 1, 'Avenida 1º de Maio, Nº 38, R/ch', '978.pdf', 1, 1, '', -1, '', -1, '04850405', 3, '', '', '0000-00-00', '0000-00-00'),
(979, 'Soraya Mendonça Santos Rosa', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 2, 226137732, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 969011366, 0, 0, '', '', 'Portuguesa', 1, '', 'Ajudante de Cozinha;\r\nOperadora de Balcão;', 1, 19, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua Dr. Rodrigues Lapa nº11, 3º Esq. - 2835', '979.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(980, 'Libânia Paula de Sousa Esteves', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 3, 232566807, 1, 0, 0, 0, '', 0, 0, 0, 1, 42, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 916056408, 0, 0, '', '', 'Portuguesa', 1, '1782031', 'Geriatria; Auxiliar de Ação Médica; Cabeleireira; Empregada de Balcão.', 1, 19, 0, -1, 42, 5, 36, 0, 0, 1, 'Rua 25 de Abril, Nº 19 G, 2º Dto.', '980.pdf', 1, 1, '', -1, '', -1, '12426146', 3, '', '', '0000-00-00', '0000-00-00'),
(981, 'Susana Sofia Rentim da Silva', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 4, 222726571, 1, 0, 0, 0, '', 0, 0, 0, 2, 8, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 912073222, 0, 0, '', '', 'Portuguesa', 1, '', 'Administrativa;\r\nOperadora Fabril;\r\nEmpregada Balcão;\r\nRecepcionista;\r\nOperadora de Caixa;', 1, 19, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua de Moçambique, nº 49, 2º Dto. - 2835-096', '981.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(982, 'Telma Cristina Semião Conde Vinagre ', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 4, 237467615, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 935629939, 0, 0, '', '', 'Portuguesa', 1, '', 'Operadora de Loja;', 1, 19, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua de Diu, nº 23, 3º Esq. - 2835-090 ', '982.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(983, 'Vânia Georgina Moreira Pombo', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 4, 247825344, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 914539331, 0, 0, '', '', 'Portuguesa', 1, '', 'Empregada de Balcão', 1, 19, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua Bento de Jesus Caraça, nº 14, 3º Esq. - 2835-069', '983.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(984, 'Vitor Manuel Santos Ruivo Silva', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 3, 136922660, 1, 0, 0, 0, '', 0, 0, 0, 2, 10, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 966078586, 0, 0, '', '', 'Portuguesa', 1, '', 'Estufas;\r\nSiderurgia;\r\nCablagens;\r\nArmador de ferro;', 1, 19, 0, -1, 10, 11, -1, 0, 0, 1, 'Rua de Angola nº 79, 2º Esq. - 2835-090', '984.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(985, 'Verissimo Alves Dalmada Junior', '0000-00-00', '2015-05-10 22:00:00', 2, 6, 4, 255975465, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 968864353, 0, 0, '', '', 'Portuguesa', 1, '', 'Prof. Francês na Guiné; construção civil', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Capitão Henrique Galvão, nº 5, R/c Esq. - 2835-074', '985.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(986, 'Lucas André Presumido Revelo', '0000-00-00', '2015-05-12 22:00:00', 2, 6, 4, 243644426, 1, 0, 0, 0, '', 0, 0, 0, 1, 6, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 919289870, 0, 0, '', '', 'Portuguesa', 1, '', 'Call Center; Auto Europa; Talho.', 1, 19, 1, 4, 6, 26, 36, 0, 0, 1, 'Avenida da Liberdade, Nº 26, R/ch Esq.', '986.pdf', 1, 1, '', -1, '', -1, '13761402', 3, '', '', '0000-00-00', '0000-00-00'),
(987, 'Lucília de Jesus Ramos Calado', '0000-00-00', '2015-05-12 22:00:00', 2, 6, 5, 114402817, 1, 0, 0, 0, '', 0, 0, 0, 2, 24, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 968675198, 0, 0, '', '', 'Portuguesa', 1, '', 'Ajudante de Cozinha; Curso Arte Floral; Curso de Costura; Curso de Turismo Rural.', 1, 19, 0, -1, 24, 35, -1, 0, 0, 1, 'Rua 26 de Janeiro, Pátio 28', '987.pdf', 1, -1, '', -1, '', -1, '05219552', 3, '', '', '0000-00-00', '0000-00-00'),
(988, 'teste 10ªGPSI (não apagar)', '1910-02-03', '2015-08-13 23:00:00', 1, 1, 6, 123456789, 3, -1, -1, -1, 'nandor', -1, -1, 0, 2, 40, 1, -1, '', 1, 'minha escola', 1, -1, 1, 1, 'minhas', 1, 1, 'formação profissional', 1, 999999969, 966966669, 111111112, 'fernando@nando.nan', 'Inferno', 'Infernal', 0, '', 'buh ', 17, 2, -1, -1, 42, 40, 14, 0, 1, 1, 'R. Doutor Fernando Ramos, nº 666, 69 esq', '', 1, 1, 'café', 1, 'buh', -1, '35345345', 5, '', '', '0000-00-00', '0000-00-00'),
(989, 'Nuno Miguel Calado Pina', '0000-00-00', '2015-05-12 22:00:00', 2, 6, 5, 226952894, 1, 0, 0, 0, '', 0, 0, 0, 2, 32, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 968675198, 0, 0, '', '', 'Portuguesa', 1, '2735826', 'Curso Profissional Manutenção Informática', 1, 19, 0, -1, 32, -1, -1, 0, 0, 1, 'Rua 26 de Janeiro, Pátio 28', '989.pdf', 1, -1, '', -1, '', -1, '12080141', 3, '', '', '0000-00-00', '0000-00-00'),
(990, 'Luís Manuel Domingues Ramalho', '0000-00-00', '2015-05-12 22:00:00', 2, 6, 2, 184598516, 2, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 913689710, 0, 0, '', '', 'Portuguesa', 1, '', 'Pintor', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Guerra Junqueiro, nº 7, 2º Esq.', '990.pdf', 1, 1, '', -1, '', -1, '08027174', 3, '', '', '0000-00-00', '0000-00-00'),
(991, 'Luísa Manuela Godinho da Cruz', '0000-00-00', '2015-05-12 22:00:00', 2, 10, 4, 221549528, 1, 0, 0, 0, '', 0, 0, 0, 2, 24, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 968896299, 0, 0, '', '', 'Portuguesa', 1, '', 'Cozinheira; Operadora de caixa e balcão.', 1, 19, 0, -1, 24, 36, -1, 0, 0, 1, 'Rua Afonso Lopes Vieira, Lote 37, 6º Esq.', '991.pdf', 1, 1, '', -1, '', -1, '12489349', 3, '', '', '0000-00-00', '0000-00-00'),
(992, 'Lurdes Alexandra Correia Carmelino', '0000-00-00', '2015-05-12 22:00:00', 2, 6, 5, 208586741, 1, 0, 0, 0, '', 0, 0, 0, 1, 15, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 934260737, 0, 0, '', '', 'Portuguesa', 1, '1760002', 'Vigilante de crianças; Logística; Restauração de móveis; Ajudante de canalizador; Curso de Publicidade e Marketing.', 1, 19, 0, -1, 15, 36, 37, 0, 0, 1, 'Rua Francisco Miguel, Lote 110, 2º D', '992.pdf', 1, -1, '', -1, '', -1, '10810851', 3, '', '', '0000-00-00', '0000-00-00'),
(993, 'Maria da Nazaré Grade Serrano', '0000-00-00', '2015-05-12 22:00:00', 2, 6, 3, 190271574, 4, 0, 0, 0, '', 0, 0, 0, -1, 36, 0, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 967130887, 0, 0, '', '', 'Portuguesa', 1, '3181889', 'Curso de Ajudante de Lar', 1, 19, 0, -1, 36, 35, 42, -1, 0, 1, 'Rua do Ribatejo, Nº 59, 1º Dto.', '993.pdf', 1, 1, '', -1, '', -1, '06777408', 3, '', '', '0000-00-00', '0000-00-00'),
(994, 'Maria Fernanda Martins', '0000-00-00', '2015-05-12 22:00:00', 2, 10, 5, 200486110, 1, 0, 0, 0, '', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 967675090, 0, 0, '', '', 'Portuguesa', 1, '', 'Curso Técnica Ação Educativa; Operária fabril.', 1, 19, 0, -1, 42, 26, -1, 0, 0, 1, 'Avenida Alfredo Dinis Alex, Lote 72, R/ch Dto.', '994.pdf', 1, -1, '', -1, '', -1, '15924769', 3, '', '', '0000-00-00', '0000-00-00'),
(995, 'Maria de Fátima Martins', '0000-00-00', '2015-05-12 22:00:00', 2, 10, 4, 280798946, 1, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 2, 1, 1, 0, '', 0, 0, '', 0, 967675090, 0, 0, '', '', 'Guiné Bissau', 1, '', '1º Emprego', 1, 19, 0, -1, -1, -1, -1, 0, 0, 1, 'Avenida Alfredo Dinis Alex, Lote 72, R/ch Dto.', '995.pdf', 1, 1, '', -1, '', -1, 'W430v2357', 1, '', '', '0000-00-00', '0000-00-00'),
(996, 'Maria Madalena Batista Marrocate', '0000-00-00', '2015-05-12 22:00:00', 2, 6, 3, 177306487, 1, 0, 0, 0, '', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 915494350, 0, 0, '', '', 'Portuguesa', 1, '', 'Operadora fabril; Costureira; Limpezas. ', 1, 19, 0, -1, 26, 35, -1, 0, 0, 1, 'Rua Nossa Senhora da Conceição, Nº 8, 1º Dto.', '996.pdf', 1, 1, '', -1, '', -1, '06247820', 3, '', '', '0000-00-00', '0000-00-00'),
(997, 'Vera Mónica Moreira Apolinário', '0000-00-00', '2015-05-12 22:00:00', 2, 6, 4, 228758769, 1, 0, 0, 0, '', 0, 0, 0, 1, 36, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 925426496, 0, 0, '', '', 'Portuguesa', 1, '', 'Curso de Cabeleireira', 1, 19, 1, 4, 5, 36, -1, 0, 0, 1, 'Rua de Trás os Montes, Nº 71, ', '997.pdf', 1, 1, '', -1, '', -1, '12010458', 3, '', '', '0000-00-00', '0000-00-00'),
(998, 'Érica Nadine Dias Marcial', '0000-00-00', '2015-05-12 22:00:00', 2, 6, 4, 251476197, 1, 0, 0, 0, '', 0, 0, 0, 2, 24, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 918647368, 0, 0, '', '', 'Portuguesa', 1, '3318761', 'Ajudante de Cozinha; Empregada de Balcão; Ajudante de Lar; Auxiliar de Ação Educativa; Curso Profissional Técnico de Logística; Exército.  ', 1, 19, 0, -1, 36, 42, -1, 0, 0, 1, 'Rua da Liberdade, nº 15, R/Ch', '998.pdf', 1, 1, '', -1, '', -1, '13210066', 3, '', '', '0000-00-00', '0000-00-00'),
(999, 'Eduardo Rui Esmael Baião', '0000-00-00', '2015-05-12 22:00:00', 2, 6, 4, 219702969, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 918647368, 0, 0, '', '', 'Portuguesa', 1, '1687807', 'Eletricista; Estucador; Pintor.', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua da Liberdade, Nº 15, R/ch', '999.pdf', -1, 1, '', -1, '', -1, '31231813', 3, '', '', '0000-00-00', '0000-00-00'),
(1000, 'Inocência Rosalina da Silva', '0000-00-00', '2015-05-12 22:00:00', 2, 6, 6, 231913273, 1, 0, 0, 0, '', 0, 0, 0, 1, 35, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 963561861, 0, 0, '', 'Angola', 'Portuguesa', 1, '4176140', 'Licenciatura em Ciências de Educação.', 1, 19, 0, -1, 15, -1, -1, 0, 0, 1, 'Rua Abel Salazar, Nº 5, 2º Esq.', '1000.pdf', 1, -1, '', -1, '', -1, '30297457', 3, '', '', '0000-00-00', '0000-00-00'),
(1001, 'Ermela Carmelina da Silva Jonas', '0000-00-00', '2015-05-12 22:00:00', 2, 6, 5, 260970387, 1, 0, 0, 0, '', 1, 0, 0, 1, -1, 0, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 926459208, 0, 0, '', '', 'Portuguesa', 1, '5202025', '1º Emprego.', 1, 19, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Abel Salazar, nº 5, 2º Esq.', '1001.pdf', 1, -1, '', -1, '', -1, '30763432', 3, '', '', '0000-00-00', '0000-00-00'),
(1002, 'Natalino de Jesus Varela Tavares', '1988-02-27', '2015-05-12 22:00:00', 1, 4, 2, 282344373, 5, -1, -1, -1, 'Barbeiro', -1, -1, 0, 2, 5, -1, -1, '', -1, '', 4, 2, 2, -1, '', -1, -1, '', -1, 964535690, -1, -1, 'natalino27.cv@hotmail.com', '', 'Caboverdiana', -1, '', '1ª Escolha - Barbeiro\r\n2ª Escolha - Pedreiro\r\n3ª Escolha - Servente / Pintor-Estucador', 18, 24, -1, -1, 5, 11, 11, 0, -1, 1, 'Rua 2, Lote 23, R/C Esq. (Cidade Sol)', '1002.pdf', 1, 1, 'Escolar', -1, '', -1, '', 2, '', '', '0000-00-00', '0000-00-00'),
(1003, 'Irina Adelina Fonseca da Cruz', '0000-00-00', '2015-05-12 22:00:00', 2, 10, 5, 243812382, 1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 961656775, 0, 0, '', '', 'Portuguesa', 1, '4868213', 'Ajudante de cozinha; Empregada de bar.', 1, 19, 0, -1, 24, 36, -1, 0, 0, 1, 'Rua Bordalo Pinheiro, Lote 28, 2º Esq.', '1003.pdf', 1, -1, '', -1, '', -1, '30818547', 3, '', '', '0000-00-00', '0000-00-00'),
(1004, 'Ugo António Semedo Borges', '0000-00-00', '2015-05-12 22:00:00', 2, 6, 5, 260468070, 1, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 926792064, 0, 0, '', '', 'Portuguesa', 1, '', '1º Emprego', 1, 19, 1, 4, -1, -1, -1, 0, 0, 1, 'Rua Francisco Miguel, Bloco 3, Lote 14, R/ch Esq.', '1004.pdf', 1, -1, '', -1, '', -1, '31209186', 3, '', '', '0000-00-00', '0000-00-00'),
(1005, 'Maria de Jesus Parreira da Palma Machado Marques', '0000-00-00', '2015-05-12 22:00:00', 2, 6, 4, 156945444, 1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 913045565, 0, 0, '', '', 'Portuguesa', 1, '', 'Ajudante de Cozinha', 1, 19, 1, 4, 24, 1, 35, 0, 0, 1, 'Rua Augusto Gil, Nº 2 D', '1005.pdf', 1, 1, '', -1, '', -1, '05520982', 3, '', '', '0000-00-00', '0000-00-00'),
(1006, 'Rui Miguel Anastácio Correia', '0000-00-00', '2015-05-12 22:00:00', 2, 6, 2, 211010375, 1, 0, 0, 0, '', 0, 0, 0, 2, 10, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 967995604, 0, 0, '', '', 'Portuguesa', 1, '1761903', 'Mecânico; Eletricista', 1, 19, 1, 4, 10, 11, -1, 0, 0, 1, 'Rua da Amizade, Nº 7, 2º Esq.', '1006.pdf', 1, 1, '', -1, '', -1, '11624533', 3, '', '', '0000-00-00', '0000-00-00'),
(1007, 'Patrícia Alexandra Vaz Figueiredo', '0000-00-00', '2015-05-12 22:00:00', 2, 6, 5, 198662033, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 969329933, 0, 0, '', 'Angola', 'Portuguesa', 1, '', '', 1, 19, 1, 4, 36, 12, 41, 0, 0, 1, 'Avenida da Liberdade, Nº 18, R/ch Esq.', '1007.pdf', 1, -1, '', -1, '', -1, '10316140', 3, '', '', '0000-00-00', '0000-00-00'),
(1008, 'Joana Maria Ramos Castano Nobre dos Santos Loureiro', '1975-11-22', '2015-05-18 22:00:00', 1, 3, 5, 202186792, -1, 0, 0, 0, 'Guia Turistica', 0, 0, 0, 2, 24, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 964714712, 0, 0, '', 'São Sebastião da Pedreira - Lisboa', 'Portuguesa', 1, '2987964', '', 10, 13, 0, -1, 6, 15, 41, 0, 0, 1, 'Rua da Independência Nacional Lote 197 - 2830 - 449 Quinta do Torrão', '1008.pdf', 1, -1, '', -1, '', -1, '10500029', 3, '', '', '0000-00-00', '0000-00-00'),
(1009, 'Tatiana Vanessa Costa Afonso', '1995-05-16', '2015-05-18 22:00:00', 1, 4, 5, 263786374, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 3, 1, 1, 0, '', 0, 1, 'Tecnica Serviços Juridicos', 0, 911980725, 0, 0, 'tatianavanessa_ca@hotmail.com', 'Alto Seixalinho - Barreiro', 'Portuguesa', 1, '', '', 10, 13, 0, -1, 15, 24, 5, -1, 1, 1, 'Rua 13 da Quinta da MIna lote 19 - 2º Direito - 2835-501 Cidade Sol', '1009.pdf', 1, -1, '', -1, '', -1, '15186461', 3, '', '', '0000-00-00', '0000-00-00'),
(1010, 'Vanessa Alexandra Reis Ramos', '1985-11-20', '2015-05-18 22:00:00', 1, 4, 2, 224157418, 2, 0, 0, 0, 'Sem Experiência Profissional', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 936669364, 0, 0, '', 'Oeiras - Lisboa', 'Portuguesa', 1, '2079677', '', 10, 13, 0, -1, 36, 39, 15, 0, 0, 1, 'Rua 13 da Quinta da Mina Lote 9 - 3º Esquerdo - 2835 - 502 Cidade Sol', '1010.pdf', 1, -1, '', -1, '', -1, '13270264', 3, '', '', '0000-00-00', '0000-00-00'),
(1011, 'Pedro Manuel Ramos Azul Fialho', '1985-07-11', '2015-05-18 22:00:00', 1, 4, 3, 229263909, 2, 0, 0, 0, 'Sem experiência Profissional', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 936669364, 0, 0, '', 'Barreiro', 'Portuguesa', 1, '2693022', 'A 1º Escolha do Utente é a area da mecânica automovel.', 10, 13, 1, 3, 10, 45, -1, 0, 0, 1, 'Rua 13 da Quinta da Mina Lote 9 - 3º Esquerdo - 2835 - 502 Cidade Sol', '1011.pdf', 1, -1, '', -1, '', -1, '13299351', 3, '', '', '0000-00-00', '0000-00-00'),
(1012, 'Isabel Carina Da Silva Patinha de Jesus', '1989-05-12', '2015-05-18 22:00:00', 1, 4, 4, 224430262, 2, -1, -1, -1, 'Empregada de Balcão - Vestuário', -1, -1, 0, 2, 36, 1, -1, '', -1, '', 4, 1, 1, -1, '', -1, -1, '', -1, 967610256, -1, -1, '', 'Alto Seixalinho - Barreiro', 'Portuguesa', 1, '3939305', 'A 3ª Escolha da Utente é Cantoneira.', 10, 13, -1, -1, 36, 15, 35, 0, -1, 1, 'Rua 13 da Quinta da Mina lote 3 - 3º Direito', '1012.pdf', 1, -1, '', -1, '', -1, '13835512', 3, '', '', '0000-00-00', '0000-00-00'),
(1013, 'José António Denioquila da Silva', '1961-11-09', '2015-05-18 22:00:00', 1, 4, 2, 211151360, 5, -1, -1, -1, 'Serralheiro Civil', -1, 1, 0, 2, 10, -1, -1, '', -1, '', 6, 1, 2, -1, '', -1, -1, '', -1, 968469787, -1, -1, '', '', 'Angolana/Portuguesa', 1, '2585751', '1ª - serralheiro civil\r\n2ª - pintura\r\n3ª - ajudante de cozinha / limpeza\r\n\r\n(Fala inglês, castelhano e francês)', 18, 24, -1, -1, 10, 11, 24, 0, -1, 1, 'Rua 3, Lote 21, 3º A', '1013.pdf', 1, -1, '', -1, '', -1, '14083301', 4, '', '', '0000-00-00', '0000-00-00'),
(1014, 'Augusto António Vaz', '0000-00-00', '2015-05-20 22:00:00', 2, 8, 4, 240458761, 3, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 920435479, 0, 0, '', 'Guiné Bissau', 'Portuguesa', 1, '', 'Ajudante de Pedreiro', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Bordalo Pinheiro, Lote 3, 1º Dto.', '1014.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1015, 'Alcidio Cardoso Almeida', '0000-00-00', '2015-05-20 22:00:00', 2, -1, 1, 236457934, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 926713207, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Augusto Gil, Nº 85, 3º Dto.', '1015.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1016, 'Aldina Engracia Carvalho', '0000-00-00', '2015-05-20 22:00:00', 2, 6, 4, 214502040, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 969064714, 0, 0, '', 'Angola', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 35, -1, -1, 0, 0, 1, 'Rua Francisco Miguel, Nº 36, 2º Esq.', '1016.pdf', 1, -1, '', -1, '', -1, '', 4, '', '', '0000-00-00', '0000-00-00'),
(1017, 'Américo Adão Correia', '0000-00-00', '2015-05-20 22:00:00', 2, 8, 1, 239538668, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 925859649, 0, 0, '', 'Angola', 'Angolano', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Bordalo Pinheiro, Lote 14, 1º Esq', '1017.pdf', 1, -1, '', -1, '', -1, '', 1, '', '', '0000-00-00', '0000-00-00'),
(1018, 'Ana Eduarda de Matos Rodrigues da Silva', '0000-00-00', '2015-05-20 22:00:00', 2, 6, 4, 240116992, 4, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 914249712, 0, 0, '', '', 'Portuguesa', 1, '', 'Auxiliar Ação Educativa', 1, 19, 1, 4, 36, 15, -1, 0, 0, 1, 'Rua João José Operáriio, nº 39, 2º Dto.', '1018.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1019, 'Ana Isabel dos Santos Covas', '0000-00-00', '2015-05-20 22:00:00', 2, 6, 5, 264611810, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 961651267, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, -1, 36, -1, -1, 0, 0, 1, 'Rua Abel Salazar, Nº 3, 1º Esq.', '1019.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1020, 'Ana Paula Rocha Pascoal de Matos Rodrigues', '0000-00-00', '2015-05-20 22:00:00', 2, 6, 3, 124742092, 4, 0, 0, 0, '', 0, 0, 0, -1, 42, 0, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 966100649, 0, 0, '', '', 'Portuguesa', 1, '', 'Auxiliar de lar', 1, 19, 1, 4, 42, 24, -1, -1, 0, 1, 'Rua Joaquim Pessoa, nº 29, 1º Dto.', '1020.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1021, 'Andreia Carla Ferreira Dimas', '0000-00-00', '2015-05-20 22:00:00', 2, 6, 4, 219926980, 1, 0, 0, 0, '', 0, 0, 0, 2, 41, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 919868478, 0, 0, '', '', 'Portuguesa', 1, '', 'Curso informática', 1, 19, 1, 4, 41, 36, -1, 0, 0, 1, 'Rua Gil Vicente, nº 27, 3º Esq.', '1021.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1022, 'António José Pereira de Abreu Santos', '0000-00-00', '2015-05-20 22:00:00', 2, 6, 4, 200144553, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 919868478, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, 4, 11, -1, -1, 0, 0, 1, 'Rua Gil Vicente, ~º 27, 3º Esq.', '1022.pdf', -1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1023, 'Andreia Filipa Freitas Graça', '0000-00-00', '2015-05-20 22:00:00', 2, 10, 4, 251358224, 1, 0, 0, 0, '', 0, 0, 0, 1, 36, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 961868928, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua Bordalo Pinheiro , nº 1, 3º Dto.', '1023.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1024, 'Andreia Filipa Gomes Caixinha', '0000-00-00', '2015-05-20 22:00:00', 2, 6, 3, 237849208, 1, 0, 0, 0, '', 0, 0, 0, 1, 39, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 926003417, 0, 0, '', '', 'Portuguesa', 1, '', 'Infantário', 1, 19, 0, -1, 39, 42, -1, 0, 0, 1, 'Rua das Beiras, nº 9, 1º Frente', '1024.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1025, 'António José Coroadinho Alves', '0000-00-00', '2015-05-20 22:00:00', 2, 6, 1, 186266987, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 915429810, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua António Sérgio, nº 11, R/ch Esq.', '1025.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1026, 'António Manuel Mataloto Galhofo', '0000-00-00', '2015-05-20 22:00:00', 2, 6, 4, 170906752, 2, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 966489234, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, 4, 11, -1, -1, 0, 0, 1, 'Rua Augusto Gil, Nº 19 C', '1026.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1027, 'António Simão', '0000-00-00', '2015-05-20 22:00:00', 2, 6, 3, 209302488, 2, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 968618579, 0, 0, '', 'Angola', 'Angola', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Poeta Bocage, Nº 77, R/ch', '1027.pdf', 1, -1, '', -1, '', -1, '', 1, '', '', '0000-00-00', '0000-00-00'),
(1028, 'Tânia Cristina Brites de Carvalho', '0000-00-00', '2015-05-20 22:00:00', 2, 6, 5, 225417766, 1, 0, 0, 0, '', 0, 0, 0, 2, 41, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 933138238, 0, 0, '', '', 'Portuguesa', 1, '', 'Escriturária de contabilidade', 1, 19, 0, -1, 41, -1, -1, 0, 0, 1, 'Rua Alexandre Herculano, Nº 47, 2º Esq.', '1028.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1029, 'Capitolina da Conceição Costa de Almeida', '0000-00-00', '2015-05-20 22:00:00', 2, 6, 2, 186533632, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 913875942, 0, 0, '', '', 'Portuguesa', 1, '', 'Ajudante de cozinha', 1, 19, 0, -1, 35, 24, -1, 0, 0, 1, 'Rua do Minho, nº 1,  1C', '1029.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1030, 'Carla Marinela Garrido Gomes da Silva', '0000-00-00', '2015-05-20 22:00:00', 2, -1, 4, 209333669, -1, 0, 0, 0, '', 0, 0, 0, 2, 42, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 963944546, 0, 0, '', '', 'Portuguesa', 0, '', 'Ajudante de lar', 1, 19, 0, -1, 42, 39, 26, 0, 0, 1, 'Rua Palmira Bastos, nº 14, 1º Esq', '1030.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(1031, 'Paulo Sérgio Ataíde Marques da Silva', '0000-00-00', '2015-05-20 22:00:00', 2, 6, 3, 207209456, 2, 0, 0, 0, '', 0, 0, 0, -1, 11, 0, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 926092846, 0, 0, '', '', 'Portuguesa', 1, '', 'Eletricista e ar condicionado', 1, 19, 1, 4, 11, -1, -1, -1, 0, 1, 'Rua Palmira Bastos, nº 14, 1º Esq.', '1031.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1032, 'Carla Sofia Maltez Lopes', '0000-00-00', '2015-05-20 22:00:00', 2, 6, 4, 218368356, 4, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 919386855, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, 4, 41, 36, -1, 0, 0, 1, 'Rua dos Lusíadas, nº 16, r/ch Dto.', '1032.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1033, 'Carlos Guilherme Reis do Amaral', '0000-00-00', '2015-05-20 22:00:00', 2, 6, 3, 153106646, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 937947693, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Sacadura Cabral, nº 3, 1º Dto.', '1033.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1034, 'Carlos Manuel de Assunção Andrade', '0000-00-00', '2015-05-20 22:00:00', 2, 6, 3, 158322398, 4, 0, 0, 0, '', 0, 0, 0, 2, 9, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 918673858, 0, 0, '', '', 'Portuguesa', 1, '', 'Ajudante de cabeleireiro', 1, 19, 0, -1, 11, 5, -1, 0, 0, 1, 'Rua 26 de Janeiro, nº 28', '1034.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1035, 'Carlos Manuel da Silva Fernandes', '0000-00-00', '2015-05-20 22:00:00', 2, 6, 3, 189804513, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 912111380, 0, 0, '', '', 'Portuguesa', 1, '', 'Curso de jardinagem', 1, 19, 1, 4, 45, 11, -1, 0, 0, 1, 'Rua Ville Plaisir, nº 25', '1035.pdf', 1, 1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(1036, 'Célia de Jesus Prata Dias', '0000-00-00', '2015-05-20 22:00:00', 2, -1, 5, 188281975, 4, 0, 0, 0, '', 0, 0, 0, 2, 41, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 965195794, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, 4, 41, 6, -1, 0, 0, 1, 'Rua António Sérgio, nº 8, 2º', '1036.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1037, 'Concepcion Gimenez Gomes', '0000-00-00', '2015-05-20 22:00:00', 2, 6, 4, 271732482, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 910680941, 0, 0, '', '', 'Espanhola', 1, '', 'Curso de Jardinagem', 1, 19, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua do Alentejo, Nº 35, Pátio 2', '1037.pdf', 1, -1, '', -1, '', -1, '', 1, '', '', '0000-00-00', '0000-00-00');
INSERT INTO `utentes` (`id`, `nome`, `dataNascimento`, `dataInscricao`, `idConcelho`, `idFreguesia`, `idHabilitacoes`, `NIF`, `idEstadoCivil`, `trabalhadorPrecario`, `PrestadorDeServicos`, `TrabalhadorContaOutrem`, `ultimaProfissaoExercida`, `semSubsidio`, `subsidioDesemprego`, `EspecificacaoEmprego`, `tempoDesempregado`, `ultimaProfissaoExercidaDesempregado`, `beneficiarioRSI`, `outrosSubsidios`, `QuaisOutrosSubsidios`, `Estudante`, `estabelecimentoEnsino`, `idGrupoEtario`, `idSituacaoRegularizada`, `idGenero`, `MedidasAtivasEmprego`, `QualMedidasAtivasEmprego`, `Voluntariado`, `FormacaoProfissional`, `QualFormacaoProfissional`, `Biscates`, `Telemovel`, `Telefone`, `OutroTelefone`, `Email`, `Naturalidade`, `Nacionalidade`, `InscritoCentroEmprego`, `NumeroInscricaoCentroEmprego`, `Observacoes`, `idFrontOfficeSinalizador`, `idTecnico`, `cartaDeConducao`, `cartaDeConducaoCategoriaID`, `interesseProfissional1`, `interesseProfissional2`, `interesseProfissional3`, `empregado`, `outraSituacao`, `estado`, `morada`, `CV`, `pedidoInicialEmprego`, `pedidoInicialFormacao`, `pedidoInicialFormacaoQual`, `pedidoInicialOutra`, `pedidoInicialOutraQual`, `NISS`, `numeroIdentificacao`, `tipoDocumentoIdentificacao`, `codPostal`, `nrCartaConducao`, `validadeDocumentoIdentificacao`, `emissaoCartaConducao`) VALUES
(1038, 'Vitor Hugo Gonçalves Richard', '0000-00-00', '2015-05-20 22:00:00', 2, 6, 3, 255644566, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 910680941, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua do Alentejo, nº 35, Pátio 2', '1038.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1039, 'Dália Maria Reis Martins Miranda Jones', '0000-00-00', '2015-05-20 22:00:00', 2, -1, 4, 136241972, 4, 0, 0, 0, '', 0, 0, 0, 2, 41, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 936947500, 0, 0, '', '', 'Portuguesa', 1, '', 'Firma de transportes terrestes; Carpintaria', 1, 19, 1, 4, 45, -1, -1, 0, 0, 1, 'Rua Poeta Bocage, Nº 2, 3º andar', '1039.pdf', 1, -1, '', -1, '', -1, '', 4, '', '', '0000-00-00', '0000-00-00'),
(1040, 'Diana Elisabete Tavares Rodrigues Ramos', '0000-00-00', '2015-05-20 22:00:00', 2, -1, 3, 250317435, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 968626088, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua do Alentejo, nº 62, 1º esq.', '1040.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1041, 'Luís Carlos Botelho Vicente da Conceição', '0000-00-00', '2015-05-20 22:00:00', 2, 6, 4, 184149223, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 964674944, 0, 0, '', 'Lisboa', 'Portuguesa', 1, '', 'Serralheiro; Empilhadores (sem carta).', 1, 19, 0, -1, 11, 26, -1, 0, 0, 1, 'Rua Clube União Banheirense \"O Chinquilho\", nº 8, 2º Dto.', '1041.pdf', 1, -1, '', -1, '', -1, '08195403', 3, '', '', '0000-00-00', '0000-00-00'),
(1042, 'Edgar José Marques das Dores', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 3, 212350447, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 965263943, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Augusto Gil, Nº 71, 2º Dto.', '1042.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1043, 'Elsa Susana Tavares Fontainhas', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 3, 221076310, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 965263943, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua Augusto Gil, nº 71, 2º Dto.', '1043.pdf', 1, 1, '', -1, '', -1, '', 1, '', '', '0000-00-00', '0000-00-00'),
(1044, 'Edmilson Daniel Martins Araújo de Sousa Pontes', '0000-00-00', '2015-05-21 22:00:00', 2, 10, 4, 234141034, 1, 0, 0, 0, '', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 4, 2, 2, 0, '', 0, 0, '', 0, 967920025, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, -1, 26, -1, -1, 0, 0, 1, 'Praceta Joaquim Gomes Malhado, nº 135, 2º Dto.', '1044.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1045, 'Hadizato Aida Mendes Mané', '0000-00-00', '2015-05-21 22:00:00', 2, -1, 5, 264105699, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 967920025, 0, 0, '', 'Guiné-Bissau', 'Guineense', 1, '', 'Gostaria de fazer curso de pastelaria', 1, 19, 0, -1, 24, -1, -1, 0, 0, 1, 'Praceta Joaquim Gomes Malhado, Nº 135, 2º Dto.', '1045.pdf', 1, -1, '', -1, '', -1, '', 1, '', '', '0000-00-00', '0000-00-00'),
(1046, 'Eduardo José Domingos de Sousa', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 4, 136169929, 4, 0, 0, 0, '', 0, 0, 0, 2, 44, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 914861482, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, -1, 44, -1, -1, 0, 0, 1, 'Rua do Minho, nº 10, 2º Dto.', '1046.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1047, 'Edgar Gilmar Teixeira', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 4, 252182995, 1, 0, 0, 0, '', 0, 0, 0, 2, 10, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 962836709, 0, 0, '', '', 'Portuguesa', 1, '', 'Vigilante', 1, 19, 1, -1, 10, 44, 6, 0, 0, 1, 'Rua Soeiro Pereira Gomes, nº 25, 2º Dto.', '1047.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1048, 'Fernando Jorge Franco Ornelas', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 3, 176913033, 1, 0, 0, 0, '', 0, 0, 0, 1, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 937598880, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, 4, 11, -1, -1, 0, 0, 1, 'Rua Luís de Camões, Nº 116, Porta 5', '1048.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1049, 'Flora Namutumbo Guia Faustino', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 6, 240846770, 2, 0, 0, 0, '', 0, 0, 0, -1, 11, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 966658008, 0, 0, '', 'Angola', 'Portuguesa', 1, '', 'Carpintaria', 1, 19, 1, -1, 22, 23, -1, -1, 0, 1, 'Praceta César de Oliveira, Nº 100, R/ch Dto.', '1049.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1050, 'Gisela Maria Bandorim Senhorinho', '0000-00-00', '2015-05-21 22:00:00', 2, -1, 5, 198121032, 4, 0, 0, 0, '', 0, 0, 0, 2, 12, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 968613720, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 12, -1, -1, 0, 0, 1, 'Praceta César Oliveira, Lote 103. 3º Esq.', '1050.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1051, 'Inácio César Macoza', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 2, 240375246, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 967382278, 0, 0, '', 'Moçambique', 'Moçambique', 1, '', 'Carpintaria', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua da Estremadura, Lote 10, 1º Dto.', '1051.pdf', 1, 1, '', -1, '', -1, '', 1, '', '', '0000-00-00', '0000-00-00'),
(1052, 'Iria Rosa Dias Cardoso', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 2, 213855194, 1, 0, 0, 0, '', 0, 0, 0, 2, 42, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 918421756, 0, 0, '', '', 'Portuguesa', 1, '', 'Ajudante de lar; Ajudante de cozinha; jardinagem.', 1, 19, 1, -1, 42, 35, 24, 0, 0, 1, 'Rua Sebastião da Gama, nº 74, 1º Esq.', '1052.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1053, 'Isilda Fialho dos Santos', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 2, 178426221, 1, 0, 0, 0, '', 0, 0, 0, 2, 35, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 910172030, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 24, 35, -1, 0, 0, 1, 'Rua Poeta Bocage, nº 71, porta 1', '1053.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1054, 'Jéssica Carina Alves', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 3, 238378241, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 962042481, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, 4, 36, -1, -1, 0, 0, 1, 'Rua Poeta Bocage, Lote 69, 1º Esq.', '1054.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1055, 'João António Basílio dos Reis', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 4, 195157800, 2, -1, -1, -1, '', -1, -1, 0, 2, 36, 1, -1, '', -1, '', 6, 1, 2, -1, '', -1, -1, '', -1, 964175551, -1, -1, '', '', 'Portuguesa', 1, '', 'Curso de informática', 1, 19, 1, 4, 36, -1, -1, 0, -1, 1, 'Rua Cidade de Pinhel, Nº 8, R/ch Esq.', '1055.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1056, 'José António Rosa Alexandrino', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 3, 145114317, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 919724287, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, 4, 11, 35, -1, 0, 0, 1, 'Rua do Alentejo, Nº 72, 1º Dto.', '1056.pdf', 1, -1, '', -1, '', -1, '-1', -1, '', '', '0000-00-00', '0000-00-00'),
(1057, 'José Fernando Gonçalves Moreira', '0000-00-00', '2015-05-21 22:00:00', 2, -1, 3, 209980982, 1, 0, 0, 0, '', 0, 0, 0, 2, 26, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 933430416, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, 4, 26, -1, -1, 0, 0, 1, 'José Fernando Gonçalves Moreira', '1057.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1058, 'José Manuel da Costa', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 3, 177100370, 1, 0, 0, 0, '', 0, 0, 0, 2, 8, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 939870055, 0, 0, '', '', 'Portuguesa', 1, '', 'Vendedor de farturas e pipocas nas feiras.', 1, 19, 0, -1, 8, -1, -1, 0, 0, 1, 'Rua do Ribatejo, nº 15, r/ch Esq.', '1058.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1059, 'José Manuel Garcia Ferreira', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 3, 182875814, 4, 0, 0, 0, '', 0, 0, 0, 2, 45, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 939065677, 0, 0, '', 'Mora', 'Portuguesa', 1, '', 'Motorista; Montador de isolamentos técnicos e câmaras frigoríficas', 1, 19, 1, 4, 45, -1, -1, 0, 0, 1, 'Rua Francisco de Assis, Nº 8, 1º Dto.', '1059.pdf', 1, 1, '', -1, '', -1, '', 4, '', '', '0000-00-00', '0000-00-00'),
(1060, 'Júlia Cesteiro dos Reis', '0000-00-00', '2015-05-21 22:00:00', 2, 10, 1, 264671031, 1, 0, 0, 0, '', 0, 0, 0, 1, 8, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 932957549, 0, 0, '', '', 'Portuguesa', 1, '', 'Venda Ambulante', 1, 19, 0, -1, 8, -1, -1, 0, 0, 1, 'Rua Garcia de Orta, Nº 6, 1º Frente', '1060.pdf', -1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1061, 'Nélio António Andrade Rosa', '0000-00-00', '2015-05-21 22:00:00', 2, 10, 1, 266963277, 1, 0, 0, 0, '', 0, 0, 0, 1, 8, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 932957549, 0, 0, '', '', 'Portuguesa', 1, '', 'Venda Ambulante', 1, 19, 1, -1, 8, -1, -1, 0, 0, 1, 'Rua Garcia de Orta, Nº 6, 1º Frente', '1061.pdf', -1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1062, 'Júlia Solange Pinhal de Sousa Faria', '0000-00-00', '2015-05-21 22:00:00', 2, 10, 4, 226725510, 1, 0, 0, 0, '', 1, 0, 0, 2, 25, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 926710900, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, 4, 41, 25, 39, 0, 0, 1, 'Rua Pedro Soares, Lote 87, 2º Esq.', '1062.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1063, 'Lúcia da Conceição Fortes dos Santos', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 4, 210943904, 1, 0, 0, 0, '', 0, 0, 0, 2, 24, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 968634067, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 39, 36, -1, 0, 0, 1, 'Praceta José Relvas, Nº 66, R/ch Dto.', '1063.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1064, 'Maria Berguilha Flores', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 2, 224301616, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 962893400, 0, 0, '', '', 'Portuguesa', 1, '', '1º Emprego', 1, 19, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua Michel Giacometti, Nº 20, R/Ch Dto.', '1064.pdf', -1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1065, 'Duarte Flores Berguilha', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 2, 242557155, 1, 0, 0, 0, '', 0, 0, 0, 1, 8, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 962893400, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 8, -1, -1, 0, 0, 1, 'Rua Michel Giacometti, Nº 20, R/ch Dto.', '1065.pdf', -1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1066, 'Maria Cristina Santos Ribeiro Silva Lopes', '0000-00-00', '2015-05-21 22:00:00', 2, 10, 4, 254826601, 2, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 968457128, 0, 0, '', '', 'Portuguesa', 1, '', 'Auxiliar Ação Educativa; Apoio domiciliário de idosos; Refeitório.', 1, 19, 0, -1, 36, 42, 39, 0, 0, 1, 'Rua Bordalo Pinheiro, Nº 20, 3º Esq.', '1066.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1067, 'Maria Dulce Elias Sárdico', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 3, 194647650, 1, 0, 0, 0, '', 0, 0, 0, 2, 25, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 912567510, 0, 0, '', '', 'Portuguesa', 1, '', 'Apoio domiciliário a idosos; ', 1, 19, 0, -1, 42, 35, -1, 0, 0, 1, 'Rua da Liberdade, Nº 55, 1º Esq.', '1067.pdf', -1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1068, 'Maria Eugénia Lopes Ferreira', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 3, 203223152, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 911977616, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua do Trabalhador, Nº 23, 1º', '1068.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1069, 'Maria Filomena Correia', '0000-00-00', '2015-05-21 22:00:00', 2, 10, 1, 142954977, 1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 967351076, 0, 0, '', '', 'Portuguesa', 1, '', 'Ajudante de cozinha', 1, 19, 0, -1, 39, 36, -1, 0, 0, 1, 'Rua Bordalo Pinheiro, Lote 40, R/ch Esq.', '1069.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1070, 'Maria Fernanda Branca Subtil Piedade', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 3, 173928463, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 967808208, 0, 0, '', '', 'Portuguesa', 1, '', 'Lar de idosos', 1, 19, 0, -1, 36, 39, 42, 0, 0, 1, 'Rua Padre António Vieira, Nº 5, 1º Esq.', '1070.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1071, 'Maria Isabel Marinho Senra', '0000-00-00', '2015-05-21 22:00:00', 2, -1, 4, 204044472, 4, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 936920476, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua dos Lusiadas, Nº 16, 2º Esq.', '1071.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1072, 'Maria José de Oliveira Marques Guerreiro', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 3, 188665439, 1, 0, 0, 0, '', 0, 0, 0, 2, 42, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 961919803, 0, 0, '', '', 'Portuguesa', 1, '', 'Auxiliar Ação Educativa', 1, 19, 0, -1, 42, 36, 35, 0, 0, 1, 'Av. da Liberdade, Nº 26, R/ch Dto.', '1072.pdf', -1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1073, 'Maria Manuela Bernardo Sarrabuça', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 4, 185892381, 4, 0, 0, 0, '', 0, 0, 0, 2, 41, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 966439550, 0, 0, '', '', 'Portuguesa', 1, '', 'Rececionista; Securitas', 1, 19, 0, -1, 41, 10, -1, 0, 0, 1, 'Rua Gago Coutinho, Nº 34, R/CH Dto.', '1073.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1074, 'Maria Rosinda Soares Pascoeiro', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 4, 139410376, 1, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 934044465, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, 4, 36, -1, -1, 0, 0, 1, 'Rua Jaime Cortesão, Nº 9, 3º Dto.', '1074.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1075, 'Mariana do Carmo Serrano Lito', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 2, 268468028, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 933256677, 0, 0, '', '', 'Portuguesa', 1, '', '1º Emprego', 1, 19, 0, -1, -1, -1, -1, -1, 0, 1, 'Rua 26 de Janeiro, Pátio 31, Nº 16, R/ch', '1075.pdf', -1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1076, 'Mauro Miguel Martins Monteiro Araújo', '0000-00-00', '2015-05-21 22:00:00', 2, -1, 3, 213877511, 5, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 925831939, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Av. da Liberdade, Lote 23, 1º Frente', '1076.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1077, 'Miriam Alexandra Correia Rocha', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 4, 212863720, 1, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 3, 1, 1, 0, '', 0, 0, '', 0, 961187567, 0, 0, '', '', 'Portuguesa', 1, '', '1º Emprego - Curso Hotelaria e Barman', 1, 19, 0, -1, 24, -1, -1, 0, 0, 1, 'Rua António Sérgio, Nº 5, 1º Dto.', '1077.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1078, 'Neusa Alexandra Lampreia Mesquita', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 3, 220005141, 1, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 917934408, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 5, 39, 35, 0, 0, 1, 'Rua do Douro, Nº 12, 1º Dto.', '1078.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1079, 'Luís Miguel do Rosário Beja', '0000-00-00', '2015-05-21 22:00:00', 2, 10, 4, 256042039, 1, 0, 0, 0, '', 0, 0, 0, 2, 24, 1, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 960480380, 0, 0, '', '', 'Portuguesa', 1, '', 'Cozinheiro', 1, 19, 0, -1, 24, 36, -1, 0, 0, 1, 'Rua das Violetas, Nº 2, Bloco 11, 1º Esq.', '1079.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1080, 'Sandro Emanuel do Rosário Beja', '0000-00-00', '2015-05-21 22:00:00', 2, 10, 3, 224480057, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 960480380, 0, 0, '', '', 'Portuguesa', 1, '', '1º Emprego', 1, 19, 0, -1, 27, -1, -1, -1, 0, 1, 'Rua das Violetas, Nº 2, Bloco 11, 1º Esq.', '1080.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1081, 'Rui Manuel dos Santos Veloso', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 2, 146958616, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 936924642, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua do Algarve, nº 75, R/ch', '1081.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1082, 'Rute Isabel Ventura Ricardo', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 4, 222602732, 5, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 913475665, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, -1, -1, 0, 0, 1, 'Rua 1º de Maio, Nº 86, R/ch Dto.', '1082.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1083, 'Sérgio Miguel Epifânio Lopes', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 4, 200591843, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 913475681, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, 4, 11, -1, -1, 0, 0, 1, 'Rua 1º de Maio, nº 86, R/ch Dto.', '1083.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1084, 'Soraia Alexandra Conceição Reis', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 4, 228317460, 1, 0, 0, 0, '', 0, 0, 0, 2, -1, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 934239592, 0, 0, '', '', 'Portuguesa', 1, '', 'Nunca trabalhou', 1, 19, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua do Minho, Nº 15', '1084.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1085, 'Sorais Alexandra Torres Manilha', '0000-00-00', '2015-05-21 22:00:00', 2, 10, 4, 260899895, 1, 0, 0, 0, '', 0, 0, 0, 1, 36, 1, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 932291230, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, -1, -1, 0, 0, 1, 'Av. José Almada Negreiros, Lote 17, 6º Dto.', '1085.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1086, 'Paulo Jorge Domingues da Silva', '0000-00-00', '2015-05-21 22:00:00', 2, 10, 3, 213349418, 1, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 937563472, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Av. José Almada Negreiros, Lote 17, 6º Dto.', '1086.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1087, 'Tecla Goreia', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 5, 237127458, 2, 0, 0, 0, '', 0, 0, 0, 1, 35, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 967987790, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 35, -1, -1, 0, 0, 1, 'Rua Natália Correia, Nº 6, 3º Dto.', '1087.pdf', 1, -1, '', -1, '', -1, '', 1, '', '', '0000-00-00', '0000-00-00'),
(1088, 'Vitor Manuel Simões Sousa Boucinha', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 4, 130343676, 5, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 963356606, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua do Trabalhador, Nº 16, R/ch Dto.', '1088.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1089, 'Maria Manuela Victória da Silva', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 4, 164721118, 1, 0, 0, 0, '', 0, 0, 0, 2, 42, 1, 0, '', 0, '', 7, 1, 1, 0, '', 0, 0, '', 0, 963356606, 0, 0, '', '', 'Portuguesa', 1, '', 'Curso Aux. Ação Educativa', 1, 19, 0, -1, 42, -1, -1, 0, 0, 1, 'Rua do Trabalhador, Nº 16, R/ch Dto.', '1089.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1090, 'Daniel Gonçalo da Silva Boucinha', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 4, 242709265, 1, 0, 0, 0, '', 0, 0, 0, -1, 11, 0, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 963356606, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 11, -1, -1, -1, 0, 1, 'Rua do Trabalhador, Nº 16, R/ch Dto.', '1090.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1091, 'Rafael Alexandre da Silva Boucinha', '0000-00-00', '2015-05-21 22:00:00', 2, 6, 3, 266917275, 1, 0, 0, 0, '', 0, 0, 0, 1, -1, 1, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 963356606, 0, 0, '', '', 'Portuguesa', 1, '', '1º Emprego', 1, 19, 0, -1, -1, -1, -1, 0, 0, 1, 'Rua do Trabalhador, Nº 16, R/ch Dto.', '1091.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1092, 'Carlos José Nabais Mestre', '0000-00-00', '2015-05-24 22:00:00', 2, 6, 3, 111003954, 5, 0, 0, 0, '', 0, 0, 0, 2, 10, 1, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 912235925, 0, 0, '', '', 'Portuguesa', 1, '', 'Vigilante', 1, 19, 1, 4, 10, -1, -1, 0, 0, 1, 'Rua do Trabalhador, Nº 80, 2º Esq.', '1092.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1093, 'Umbelina Isabel Penado Fernandes', '0000-00-00', '2015-05-24 22:00:00', 2, 6, 3, 212874756, 5, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 931463425, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 0, -1, 36, 24, -1, 0, 0, 1, 'Rua da Amizade, Nº 67,R/ch A', '1093.pdf', -1, 1, '', -1, '', -1, '', 4, '', '', '0000-00-00', '0000-00-00'),
(1094, 'António Fernando de Oliveira Bastos Pesca', '0000-00-00', '2015-05-24 22:00:00', 2, 6, 2, 177310065, 5, 0, 0, 0, '', 0, 0, 0, 2, 36, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 931463425, 0, 0, '', '', 'Portuguesa', 1, '', '', 1, 19, 1, 4, 36, -1, -1, 0, 0, 1, 'Rua da Amizade, Nº 67,R/ch A', '1094.pdf', -1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1095, 'Miguel Filipe Sousa Bombas', '1992-10-11', '2015-05-24 22:00:00', 1, 1, 5, 271528001, 1, 0, 0, 0, 'DESIGN GRÁFICO', 1, 0, 0, 1, 2, 0, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 915704889, 0, 0, 'mikelbomb@hotmail.com', '', 'Portuguesa', 1, '', 'JOVEM PROCURA 1º EMPREGO\r\nTEM FORMAÇÃO EM INDESIGN CS3 (PROGRAMA DE PAGINAÇÃO E EDIÇÃO)\r\nFAZ ALGUNS TRABALHOS ESPORÁDICOS NA SUA ÁREA (LOGOTIPOS E CARTÕES DE VISITA)', 18, 24, 1, 4, 2, 3, 37, 0, 0, 1, 'Sto. André (Quinta da Lomba)', '1095.pdf', 1, 1, 'ÁREAS DO DESIGN', -1, '', -1, '14002022', 3, '', '', '0000-00-00', '0000-00-00'),
(1096, 'Ilisario Carvalho da Silveira', '1956-10-27', '2015-05-26 22:00:00', 1, 1, 5, 230596150, -1, 0, 0, 0, 'Motorista de Pesados', 1, 0, 0, 1, 45, 0, 0, '', 0, '', 7, 1, 2, 0, '', 0, 0, '', 0, 967973191, 0, 0, '', '', '', 1, '', 'Experiência Profissional:\r\n- Motorista de Pesados (10 anos de experiência)\r\n- Mecânico de Pesados (20 anos de experiência)', 18, 24, 1, -1, 45, -1, -1, 0, 0, 1, 'Quinta da Lomba', '1096.pdf', 1, -1, '', -1, '', -1, '15745395', 3, '', '', '0000-00-00', '0000-00-00'),
(1097, 'Badjinca Domingos Baticam', '0000-00-00', '2015-06-11 22:00:00', 1, -1, 6, 245374248, 2, -1, -1, -1, 'Engenheiro Informático', -1, -1, 0, 1, 29, -1, -1, '', -1, '', 4, 1, 2, -1, '', -1, -1, '', -1, 963227076, -1, -1, '', '', 'GUINÉ-BISSAU', 1, '', 'ENGENHARIA INFORMÁTICA (EXPERIÊNCIA DE 2 ANOS)\r\n\r\nDISPONÍVEL PARA TRABALHAR EM QUALQUER ZONA DO PAÍS (DESDE QUE O RENDIMENTO MENSAL AUFERIDO COMPENSE ESSA DESLOCALIZAÇÃO)\r\n\r\nAPRESENTA EXPERIÊNCIA NA ÁREA DO ASSOCIATIVISMO (PRESIDENTE DE ASSOCIAÇÕES JUVENIS NA GUINÉ-BISSAU E PRESIDENTE DURANTE 2 ANOS DO NÚCLEO DE ESTUDANTES DA CPLP NA FACULDADE)\r\n\r\nTEM INTERESSE NA ÁREA DA BANCA, DOS SEGUROS E NA ÁREA SOCIAL', 18, 24, 1, -1, 29, 28, 31, 0, -1, 2, 'R. Nuno Tristão 32, R/c Dto., 2830-095 Barreiro', '1097.pdf', 1, -1, '', -1, '', -1, '30511837', 3, '', '', '0000-00-00', '0000-00-00'),
(1098, 'António Augusto Oliveira Santos', '0000-00-00', '2015-06-14 22:00:00', 1, 4, 2, 160151970, -1, 0, 0, 0, 'Pintor Automóvel / Bate-Chapas ', 0, 1, 0, 2, 43, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 963736445, 0, 0, '', '', 'Portuguesa', 1, '5563889', '', 18, 24, 1, -1, 43, -1, -1, 0, 0, 1, '', '1098.pdf', 1, -1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1099, 'Vânia de Jesus dos Santos Monteiro', '1986-04-16', '2015-06-15 22:00:00', 1, 4, 4, 231016980, -1, 0, 0, 0, 'Operária Fabril (Seca do Bacalhau)', 1, 0, 0, 2, 26, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 933450276, 0, 0, 'danielanairsofia@gmail.com', '', 'Portuguesa', 1, '', 'Experiência Profissional:\r\n- Operária Fabril (3 Meses)\r\n- Ajudante de Cozinha (1 Ano)\r\n- Jardineira (1 Ano)\r\n- Camareira (3 Meses)\r\n- Empregada de Lavandaria (3 Meses)\r\n- Empregada de Balcão/Cafetaria (6 Meses)\r\n- Empregada de Limpeza (6 Meses)', 18, 24, 0, -1, 24, 39, 35, 0, 0, 1, 'Rua 7, Lote 38, 5º A, Cidade Sol (2835-512)', '1099.pdf', 1, -1, '', -1, '', -1, '13229010', 3, '', '', '0000-00-00', '0000-00-00'),
(1100, 'Vera Sofia Marques Aguiar', '1980-05-01', '2015-06-16 22:00:00', 1, 1, 2, 227368371, -1, 0, 0, 0, 'Trabalhadora da Limpeza em Casas Particulares', 1, 0, 0, 2, 35, 0, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 964640172, 0, 0, '', '', 'Portuguesa', 1, '', 'EXPERIÊNCIA PROFISSIONAL:\r\n- Trabalhadora da limpeza (2 Anos)\r\n- Auxiliar de Acção Educativa Escolar (1 Ano)', 18, 24, 0, -1, 35, 15, -1, 0, 0, 1, 'Alto do Seixalinho', '1100.pdf', 1, 1, 'Aumento de Habilitações', -1, '', -1, '13330517', 3, '', '', '0000-00-00', '0000-00-00'),
(1101, 'Sidreca Nzumba Vita', '1986-05-25', '2015-06-18 22:00:00', 1, 1, 4, 278034039, -1, 0, 0, 0, 'Costureira', 1, 0, 0, 2, 7, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 923286862, 0, 0, '', '', 'Angolana', 1, '', '1ª Escolha - Costureira (2 anos de experiência em Angola)\r\n2ª Escolha - Trabalhadora da Limpeza (S/ experiência comprovada)', 18, 24, 0, -1, 5, 5, -1, 0, 0, 1, 'Rua José Augusto Pimenta 15, 2º Dto.', '1101.pdf', 1, 1, 'CABELEIREIRA / COZINHEIRA', -1, '', -1, '094534', 1, '', '', '0000-00-00', '0000-00-00'),
(1102, 'Heládio Filipe Costa Casimiro', '1976-09-01', '2015-06-21 22:00:00', 2, 6, 3, 209684528, 2, -1, -1, -1, 'Instalador TV, Net, Telefone', -1, -1, 0, 2, 43, 1, -1, '', -1, '', 5, 2, 2, -1, '', -1, -1, '', -1, 964408164, -1, -1, '', '', 'Portuguesa', 1, '', 'Metalomecânica, serralharia civil, soldadura, manutenção e limpeza, instalador de Tv, Net e Telefone\r\n, cantoneiro', 1, 19, 1, 4, 11, 26, -1, 0, -1, 1, 'Rua Aquilino Ribeiro, nº 21 - 2º Dtº', '1102.pdf', 1, 1, '', -1, '', -1, '11179541', 3, '', '', '0000-00-00', '0000-00-00'),
(1103, 'João Manuel Carvalho Silva Dono', '0000-00-00', '2015-06-23 22:00:00', 2, 6, 2, NULL, 1, 0, 0, 0, '', 0, 0, 0, 2, 11, 1, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 963842583, 0, 0, '', 'Cabo Verde', 'Cabo Verde', 1, '', 'Marinheiro; Pintor; Construção Cívil;', 1, 19, 0, -1, 11, -1, -1, 0, 0, 1, 'Rua Moçambique nº 36, 1º esq - 2835-097', '1103.pdf', 1, 1, '', -1, '', -1, '7xw097868', 1, '', '', '0000-00-00', '0000-00-00'),
(1104, 'Eugénia Paula Faria Sousa', '0000-00-00', '2015-06-23 22:00:00', 2, 10, 3, NULL, 2, 0, 0, 0, '', 0, 0, 0, 2, 39, 1, 0, '', 0, '', 6, -1, 1, 0, '', 0, 0, '', 0, 924388098, 0, 0, '', '', 'Portuguesa', 1, '', 'Pastelarias; Emp. balcão; Segurança Privado', 1, 19, 0, -1, 39, -1, -1, 0, 0, 1, 'Rua Bordalo Pinheiro nº 38, 5º dto - 2835-235 Vale da Amoreira', '1104.pdf', 1, 1, '', -1, '', -1, '', 3, '', '', '0000-00-00', '0000-00-00'),
(1105, 'América Garcia da Silva', '0000-00-00', '2015-06-23 22:00:00', 2, 10, 1, 222838523, 2, 0, 0, 0, '', 0, 0, 0, 2, 8, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 932949120, 0, 0, '', '', 'Portuguesa', 1, '', 'Feirante; Sabe escrever mas ler é muito pouco;', 1, 19, 0, -1, 8, -1, -1, 0, 0, 1, 'Rua Bordalo Pinheiro lote 41, 2º esq - 2835-235 Vale da Amoreira', '1105.pdf', -1, 1, '', -1, '', -1, '11431345', 3, '', '', '0000-00-00', '0000-00-00'),
(1106, 'Célia Cristina Alexandre Monteiro Gomes', '0000-00-00', '2015-06-29 22:00:00', 1, 4, 5, 202153380, -1, 0, 0, 0, 'Trabalhadora da Limpeza', 0, 1, 0, 1, 35, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 939402931, 0, 0, '', '', 'Portuguesa', 1, '', '11 anos de experiência como trabalhadora da limpeza', 18, 24, 1, -1, 35, -1, -1, 0, 0, 1, 'Vila Chã', '1106.pdf', 1, 1, 'COSTURA', -1, '', -1, '12243743', 3, '', '', '0000-00-00', '0000-00-00'),
(1107, 'Paula Cristina Cortes Fonseca ', '1982-07-07', '2015-06-16 22:00:00', 1, 4, 3, 233351779, -1, 0, 0, 0, 'Trabalhadora da Limpeza', 1, 0, 0, 2, 35, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 961730671, 0, 0, '', '', 'Portuguesa', 1, '', '2 anos de experiência em trabalhos de limpeza ', 18, 24, -1, -1, 35, -1, -1, 0, 0, 1, 'Cidade Sol', '1107.pdf', 1, 1, 'Aumento de Habilitações / Auxiliar de Acção Educativa', -1, '', -1, '12773322', 3, '', '', '0000-00-00', '0000-00-00'),
(1108, 'Ricardo Jorge Grave Ribeiro', '0000-00-00', '2015-07-01 22:00:00', 2, 10, 6, 20971223, 1, 0, 0, 0, '', 0, 0, 0, 2, 6, 1, 0, '', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 960071149, 0, 0, '', '', 'Portuguesa', 1, '', 'Licenciatura em Gestão de Recursos Humanos;\r\nMestrado em Ciências do Desporto;\r\n', 1, 19, 1, 4, 23, 13, 6, 0, 0, 1, 'Rua Bordalo Pinheiro lote 6 4º dto - 2835-235 Vale da Amoreira', '1108.pdf', 1, -1, '', -1, '', -1, '10552448', 3, '', '', '0000-00-00', '0000-00-00'),
(1109, 'Evandro Duarte Dias', '0000-00-00', '2015-07-02 22:00:00', 2, 6, 4, NULL, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 1, 'Agrupamento de Escolas da Moita - Sede-Escola Secundária da Moita', 2, 1, 2, 0, '', 0, 0, '', 0, 0, 0, 0, '', '', 'Portuguesa', 1, '', 'Curso de Instalação e Operação de Sistemas Informáticos - CEF Tipo 2', 1, 19, 0, -1, 29, -1, -1, -1, 0, 1, '', '1109.pdf', 1, -1, '', -1, '', -1, '15737453', 4, '', '', '0000-00-00', '0000-00-00'),
(1110, 'Jorge Teles Choupana Melro Marques', '1989-11-07', '2015-07-02 22:00:00', 1, -1, 4, 226380637, 1, -1, -1, -1, 'Ajudante de Cozinha (Estágio)', -1, -1, 0, -1, 39, -1, -1, '', -1, '', -1, 1, 2, -1, '', -1, 1, 'CERCIMB/ESTÁGIO PADARIA-PASTELARIA ANDRÉ (CIDADE SOL)', -1, 933708209, -1, -1, 'jorgemarques08@hotmail.com', '', 'Portuguesa', 1, '', '', 18, 24, -1, -1, 3, 5, 39, -1, 1, 1, 'Rua Aquiles de Almeida 1A, R/C Esq.', '1110.pdf', 1, 1, 'Cabeleireiro Unissexo / Jornalismo / Rádio / Televisão (Ensino Especial)', -1, '', -1, '15231984', 3, '', '', '0000-00-00', '0000-00-00'),
(1111, 'Carlos José Carvalho Nunes', '1952-11-01', '2015-07-09 22:00:00', 1, 4, 5, 171023927, 2, -1, -1, -1, 'Segurança/Vigilante', -1, -1, 0, 1, 43, -1, -1, '', -1, '', 7, 1, 2, -1, '', -1, -1, '', -1, 926547218, -1, -1, 'carlosnunes1952@hotmail.com', '', 'Portuguesa', 1, '', 'EXPERIÊNCIA PROFISSIONAL:\r\n- Gerente de Empresas (República Democrática do Congo)\r\n- Gerente de Hotel (República Democrática do Congo)\r\n- Representante Comercial (República Democrática do Congo)\r\n- Administrativo (República Democrática do Congo)\r\n- Segurança/Vigilante (Portugal)', 18, 24, 1, -1, 22, 24, 41, 0, -1, 1, 'R. das Beiras 40, R/C Esq. (Vila Chã)', '1111.pdf', 1, 1, '', -1, '', -1, '02332709', 3, '', '', '0000-00-00', '0000-00-00'),
(1112, 'Mary Coli', '1978-11-18', '2015-07-13 22:00:00', 1, 1, 2, 238296130, -1, 0, 0, 0, 'Trabalhadora da Limpeza', 1, 0, 0, 2, 35, 0, 0, '', 0, '', 5, -1, 1, 0, '', 0, 0, '', 0, 920087548, 0, 0, '', '', 'Guineense', 1, '3935766', 'Experiência Profissional:\r\n- Trabalhadora da Limpeza (4 Anos)\r\n- Ama (5 Anos) Crianças de 12 a 36 Meses', 18, 24, 0, -1, 35, 42, -1, 0, 0, 1, 'Rua de Dili 17, 1º Esq.', '1112.pdf', 1, 1, 'Aumentar habilitações', -1, '', -1, '055956', 1, '', '', '0000-00-00', '0000-00-00'),
(1113, 'Jorge Manuel Cardoso Gonçalves', '1960-08-07', '2015-07-14 22:00:00', 1, 1, 4, 162486316, -1, 0, 0, 0, 'Venda de Utensílios para Hotelaria e Lar', 1, 0, 0, 2, 8, 0, 0, '', 0, '', 6, 1, 2, 0, '', 0, 0, '', 0, 926447456, 0, 0, '', '', 'Portuguesa', 1, '4897714', 'Experiência Profissional:\r\n- Comercial (+20 Anos)\r\n- Operador de Manutenção Hoteleira (s/experiência) Formação Profissional e 120 Horas de Estágio\r\n- Empregado de Balcão (8 Anos)', 18, 24, 1, 4, 8, 24, 39, 0, 0, 1, 'Rua D. Francisca de Azambuja 21, 2º Dto.', '1113.pdf', 1, -1, '', -1, '', -1, '6126215', 3, '', '', '0000-00-00', '0000-00-00'),
(1114, 'Jorge Xadreque Matos', '1952-01-16', '2015-07-15 22:00:00', 1, -1, 6, 168976021, -1, -1, -1, -1, 'Ajudante Familiar (Apoio Domiciliário)', -1, -1, 0, 1, 40, 1, -1, '', -1, '', 7, 1, 2, -1, '', -1, -1, '', -1, 964248765, -1, -1, '', '', 'Moçambicano', 1, '4540678', 'PERCURSO PROFISSIONAL:\r\n- Paraquedista em Portugal e Moçambique (43 Meses)\r\n- Enfermeiro do Exército em Moçambique (42 Meses)\r\n- Ajudante Familiar no CRIVA (6 Meses) Apoio Domiciliário / Apoio no Centro de Dia / Distribuição de Alimentos\r\n- Ajudante Familiar/Apoio Domiciliário na Santa Casa da Misericórdia do Barreiro (6 Meses) ', 18, 24, 1, -1, 40, 42, -1, 0, -1, 1, 'BARREIRO', '1114.pdf', 1, -1, '', -1, '', -1, '7N69615N0', 1, '', '', '0000-00-00', '0000-00-00'),
(1115, 'Brígida Pereira Dias Sirgado', '0000-00-00', '2015-07-16 22:00:00', 2, 6, 5, 204713790, 4, 0, 0, 0, '', 0, 0, 0, 2, 15, 1, 0, '', 0, '', 5, 1, 1, 0, '', 0, 0, '', 0, 2147483647, 0, 0, '', '', 'Portuguesa', 1, '', 'Militar Força Aérea (secretariado);\r\nBalcão (Ourivesaria);\r\nAuxiliar em Escolas;', 1, 19, 0, -1, 41, 8, 15, 0, 0, 1, 'Estrada Nacional 11, 1, nº 114, 3º esq - 2835-172', '1115.pdf', 1, -1, '', -1, '', -1, '09834631', 3, '', '', '0000-00-00', '0000-00-00'),
(1116, 'Susana de Oliveira Faria', '1974-09-20', '2015-07-28 22:00:00', 1, 4, 3, 164207244, 5, -1, -1, -1, 'Empregada de Balcão e Mesa', -1, -1, 0, 2, 39, -1, -1, '', -1, '', 5, 1, 1, -1, '', -1, -1, '', -1, 935709661, -1, -1, '', '', 'Portuguesa', 1, '', 'Experiência Profissional:\r\n- Limpeza\r\n- Empregada de Balcão e Mesa\r\n- Operadora de Linha de Montagem\r\n- Trabalhadora Agrícola\r\n- Ajudante de Cozinha\r\n- Auxiliar em Centro Comunitário (Idosos, Crianças e Limpeza)\r\n- Empregada de Posto de Abastecimento Galp\r\n- Cantoneira de Limpeza', 18, 24, 0, -1, 43, 42, 39, 0, -1, 1, 'Cidade Sol', '1116.pdf', 1, -1, '', -1, '', -1, '10501182', 3, '', '', '0000-00-00', '0000-00-00'),
(1117, 'Graça Maria da Silva e Sousa', '1960-04-08', '2015-07-28 22:00:00', 1, 4, 2, 162586191, -1, -1, -1, -1, 'Administrativa/Recepcionista', -1, -1, 0, 2, 41, -1, -1, '', -1, '', 6, 1, 1, -1, '', -1, -1, '', -1, 960361355, -1, -1, '', '', '', 1, '', 'Experiência Profissional:\r\n- Administrativa/recepcionista\r\n- Estafeta da redacção do Diário de Notícias\r\n- Promotora da Danone\r\n- Auxiliar de Acção Médica\r\n- Trabalhadora da Limpeza Especializada (Barcos/Iates)', 18, 24, 1, 4, 41, 40, 35, 0, -1, 1, 'Rua 3, Lote 23, 1º B (Cidade Sol)', '1117.pdf', 1, -1, '', -1, '', -1, '7444147', 3, '', '', '0000-00-00', '0000-00-00'),
(1118, 'Miguel Dantas Morato', '0000-00-00', '2015-07-30 22:00:00', 2, 5, 5, 273319256, -1, 0, 0, 0, 'Electricista Estagiário', 1, 0, 0, 2, 11, 0, 0, '', 0, '', 3, 1, 2, 0, '', 0, 0, '', 0, 964574805, 0, 0, '', '', '', 1, '', '1ª Escolha - Electricista (11 Meses de Experiência como Estagiário)\r\n2ª Escolha - Ajudante de Pedreiro (7 Meses de Experiência)', 18, 24, 1, 4, 11, 11, -1, 0, 0, 1, 'Alhos Vedros', '1118.pdf', 1, 1, 'Mecânica/Mecatrónica ', -1, '', -1, 'Q9011887S', 1, '', '', '0000-00-00', '0000-00-00'),
(1119, 'Sónia Patrícia Rodrigues Catulo', '1985-07-18', '2015-08-06 22:00:00', 1, 4, 4, 224493019, -1, -1, -1, -1, 'Operária Fabril', -1, -1, 0, 2, 26, -1, -1, '', -1, '', 4, 1, 1, -1, '', -1, -1, '', -1, 926423180, -1, -1, 'scatulo18@hotmail.com', '', 'Portuguesa', 1, '2721753', 'Experiência Profissional:\r\n- Operária Fabril (9 Meses): Triagem/separação de material\r\n- Operária Fabril (4 Meses): Dancake\r\n- Empregada de Mesa e Balcão (4 Meses): Café', 18, 24, -1, -1, 26, 39, 35, 0, -1, 1, 'Rua 1, Lote 10, 1º B (Cidade Sol)', '1119.pdf', 1, 1, 'Aumento de Habilitações', -1, '', -1, '13092648', 3, '', '', '0000-00-00', '0000-00-00'),
(1120, 'Fernando Manuel da Conceição Lobo', '1964-03-06', '2015-08-18 22:00:00', 1, 4, 4, 133559246, 2, -1, -1, -1, 'Soldador', -1, -1, 0, 1, 10, -1, -1, '', -1, '', 6, 1, 2, -1, '', -1, -1, '', -1, 920048893, -1, -1, 'lobo64@live.fr', '', 'Portuguesa', -1, '', '1ª - Soldador (Cerca de 20 anos de experiência entre Portugal, Holanda e França)\r\n2ª - Operador de empilhadores (18 meses de experiência em Inglaterra)\r\n3ª - Operador de lavandaria industrial (1 mês e meio de experiência em Inglaterra)\r\n\r\nDisponibilidade imediata e total para outras áreas de emprego', 18, 24, -1, -1, 10, 45, 26, 0, -1, 1, 'Rua 3, Lote 30, 2º C (Cidade Sol)', '1120.pdf', 1, -1, '', -1, '', -1, '06624457', 3, '', '', '0000-00-00', '0000-00-00'),
(1121, 'Margarida Carla Bravo Esteves', '1967-06-26', '2015-09-01 22:00:00', 1, -1, 5, 214166945, -1, 0, 0, 0, 'Esteticista Cosmetologista', 1, 0, 0, 1, 5, 0, 0, '', 0, '', 6, 1, 1, 0, '', 0, 0, '', 0, 964555674, 0, 0, 'margaridaesteves.4@gmail.com', '', '', 1, '', '', 18, 24, -1, -1, 5, -1, -1, 0, 0, 1, 'Praceta D. Sancho 14, 1º Dto.', '1121.pdf', 1, -1, '', -1, '', -1, '12497036', 3, '', '', '0000-00-00', '0000-00-00'),
(1122, 'Maria dos Anjos Santana Machado', '1956-09-23', '2015-09-15 22:00:00', 1, 1, 2, 119058014, -1, -1, -1, -1, 'Gerente de Papelaria (Negócio Próprio)', -1, -1, 0, 2, 22, 1, -1, '', -1, '', 7, 1, 1, -1, '', -1, -1, '', -1, 916818729, -1, -1, '', '', 'Portuguesa', 1, '', 'Experiência Profissional:\r\n\r\n- Gerente de Papelaria/Negócio Próprio (12 Meses)\r\n- Gerente de Pastelaria/Negócio Próprio (24 Meses)', 18, 24, -1, -1, 39, 24, 41, 0, -1, 1, 'Quinta da Lomba', '1122.pdf', 1, -1, '', -1, '', -1, '06302042', 3, '', '', '0000-00-00', '0000-00-00'),
(1123, 'Mamadú Sani', '1969-09-12', '2015-09-17 22:00:00', 1, -1, 5, 269101403, -1, -1, -1, -1, 'Pintor', -1, -1, 0, 1, 11, -1, -1, '', -1, '', 6, 1, 2, -1, '', -1, -1, '', -1, 920411107, -1, -1, '', '', 'Guiné-Bissau', 1, '', '1ª Escolha - Vigilante/Segurança (Formação e Cartão MAI)\r\n\r\n2ª Escolha - Oficial de Justiça (experiência de mais de 10 anos no Supremo Tribunal de Justiça de Bissau, Guiné-Bissau)\r\n\r\n3ª Escolha - Pintor (experiência de 4 anos em Portugal)', 18, 24, 1, 4, 43, 41, 11, 0, -1, 1, 'Barreiro', '1123.pdf', 1, 1, 'Línguas', -1, '', -1, '3Z5B97087', 1, '', '', '0000-00-00', '0000-00-00'),
(1124, 'Sérgio Manuel Neves Costa', '1977-03-17', '2015-09-29 22:00:00', 1, 1, 4, 218137990, 2, 0, 0, 0, 'Mecânica/Hidráulica de Armamento Naval ', 0, 0, 0, 1, 26, 0, 1, 'Mobilidade Especial (Funcionário do Estado)', 0, '', 5, 1, 2, 0, '', 0, 0, '', 0, 917824525, 0, 0, 'smnc@live.com.pt', '', 'Portuguesa', 1, '', '', 18, 24, 0, -1, 26, 33, 27, 0, 0, 1, 'Verderena', '1124.pdf', 1, 1, 'Informática', -1, '', -1, '11065592', 3, '', '', '0000-00-00', '0000-00-00'),
(1125, 'Manuel Cabeças Azul', '1990-02-07', '2015-10-01 22:00:00', 1, 4, 3, 223949523, -1, 0, 0, 0, 'Operador de Cargas e Descargas', 1, 0, 0, 2, 45, 0, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 936480480, 0, 0, '', '', 'Portuguesa', 1, '', 'Cargas/Descargas (33 Meses de Experiência Profissional) Portugal e Brasil', 18, 24, 1, 4, 45, -1, -1, 0, 0, 1, 'Cidade Sol', '1125.pdf', 1, -1, '', -1, '', -1, '15905739', 3, '', '', '0000-00-00', '0000-00-00'),
(1126, 'Indira dos Ramos Lopes Cristo', '1985-07-04', '2015-09-30 22:00:00', 1, 4, 4, 284238929, -1, 0, 0, 0, 'Empregada de Limpeza e Ama (Bebé de 2 Meses)', 1, 0, 0, 2, 35, 0, 0, '', 0, '', 4, 2, 1, 0, '', 0, 0, '', 0, 925734827, 0, 0, '', '', '', 0, '', 'Experiência Profissional:\r\n- Empregada de Limpeza e Ama (Bebé de 2 Meses) Portugal (6 Meses)\r\n- Empregada de Limpeza (Portugal) 6 Meses\r\n- Gerente de Supermercado (São Tomé) 3 Anos\r\n- Secretária Administrativa e Recepcionista em Empresa de Construção Civil (São Tomé) 1 Ano\r\n- Assistente de Loja de Móveis de Decoração (São Tomé) 2 Anos', 18, 24, 0, -1, 35, 41, 36, 0, 0, 1, 'Cidade Sol', '1126.pdf', 1, -1, '', -1, '', -1, '', 5, '', '', '0000-00-00', '0000-00-00'),
(1127, 'Álvaro Jorge Pires Dias', '1982-02-05', '2015-11-10 00:00:00', 1, 4, 5, 207797692, -1, -1, -1, -1, 'Técnico de Montagem e Reparação de Estores', -1, -1, 0, 2, 10, -1, -1, '', -1, '', 4, 1, 2, -1, '', -1, -1, '', -1, 967548274, -1, -1, '', '', 'Portuguesa', 1, '', 'Experiência Profissional:\r\n- Montagem e reparação de estores (24 meses)\r\n- Operador Fabril (Linha de montagem da AutoEuropa) 18 meses\r\n\r\nFormação:\r\n- Mecatrónica Automóvel (IEFP)\r\n- Electricidade Naval (Solisform/Lisnave)', 18, 24, 1, 4, 10, 26, 3, 0, -1, 1, 'Rua 5, Lote 29, 3º B (Cidade Sol)', '1127.pdf', 1, 1, 'Mecatrónica, Electromecânica, etc.', -1, '', -1, '12559711', 3, '', '', '0000-00-00', '0000-00-00'),
(1128, 'Ana Lúcia Pereira Correia', '1981-02-25', '2015-11-11 00:00:00', 1, 4, 6, 215661753, -1, 0, 0, 0, 'Administrativa/Recepcionista', 1, 0, 0, 1, 41, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 910901995, 0, 0, '', '', '', 1, '', 'Experiência Profissional:\r\n- Administrativa/Recepcionista (6 meses / contrato de substituição)\r\n- Empregada de mesa/Catering em eventos (18 meses)\r\n- Operária fabril / Linha de montagem da AutoEuropa (3 anos)\r\n- Assistente de Loja/Perfumaria (4 anos)\r\n\r\nLICENCIATURA EM EDUCAÇÃO \r\nPOSSUI LICENÇA PARA TRANSPORTE DE CRIANÇAS ', 18, 24, 1, 4, 41, 39, 26, 0, 0, 1, 'Cidade Sol', '1128.pdf', 1, -1, '', -1, '', -1, '11910077', 3, '', '', '0000-00-00', '0000-00-00'),
(1129, 'Margareth Fernandes de Carvalho', '1972-04-02', '2015-11-23 00:00:00', 1, 4, 5, 284358789, -1, 0, 0, 0, 'Encarregada de Limpeza', 1, 0, 0, 2, 35, 0, 0, '', 0, '', 5, 2, 1, 0, '', 0, 0, '', 0, 926854085, 0, 0, '', '', 'Angolana', 0, '', 'Áreas de Experiência Profissional:\r\n- Encarregada de Limpeza\r\n- Ajudante de Cozinha\r\n- Assistente de Loja\r\n- Recepcionista', 18, 24, -1, -1, 35, 39, 36, 0, 0, 1, 'Rua 3, Lote 18, R/c C Esq. (Cidade Sol)', '1129.pdf', 1, -1, '', -1, '', -1, '0753559', 2, '', '', '0000-00-00', '0000-00-00'),
(1130, 'Telma Vanessa Lino Ramos', '1985-03-05', '2015-11-25 00:00:00', 1, 1, 5, 240906128, 1, 0, 0, 0, 'Secretariado', 1, 0, 0, 1, 41, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 961902703, 0, 0, 'telma-ramos@iol.pt', '', 'Portuguesa', 1, '2666341', '- RECEPCIONISTA (ESTÁGIO DE 3 MESES) \r\n- ADMINISTRATIVA E SECRETARIADO (4 ANOS)\r\n- AUXILIAR DE SAÚDE (S/EXPERIÊNCIA S/FORMAÇÃO)\r\n- ASSISTENTE DE CONSULTÓRIO (C/ FORMAÇÃO)', 18, 24, 0, -1, 41, 40, 42, 0, 0, 1, 'Rua 28 de Setembro, 2B, R/c Esq.', '1130.pdf', 1, -1, '', -1, '', -1, '12848307', 3, '', '', '0000-00-00', '0000-00-00'),
(1131, 'Ana Lúcia Godinho Lopes', '0000-00-00', '2015-12-02 00:00:00', 1, 1, 4, 242993150, 1, 0, 0, 0, 'Ama/Babysitter ', 0, 1, 0, 2, 42, 0, 0, '', 0, '', 4, 1, 1, 0, '', 0, 0, '', 0, 963076442, 0, 0, '', '', 'Portuguesa', 1, '', 'Experiência Profissional:\r\n- Ama/Babysitter (Crianças de 3 meses a 10 anos) 10 Anos de Experiência Profissional\r\n- Assistente de Loja/Florista (12 Meses)\r\n- Assistente de Loja/Sapataria (3 Meses)\r\n- Promotora e Entrevistadora de Estudos de Mercado (12 Meses)', 18, 24, -1, -1, 42, 36, 8, 0, 0, 1, 'Verderena', '1131.pdf', 1, -1, '', -1, '', -1, '12967554', 3, '', '', '0000-00-00', '0000-00-00'),
(1132, 'Rebeca Pinheiro Alves Cabrita', '1993-08-05', '2015-12-16 00:00:00', 1, 1, 5, 234960809, 1, -1, -1, -1, 'Fotografia Artística', -1, -1, 0, 1, 3, 1, -1, '', -1, '', 3, 1, 1, -1, '', -1, -1, '', -1, 934518243, -1, -1, 'rebeca.cabrita@gmail.com', '', 'Portuguesa', 1, '', 'Áreas de Experiência Profissional:\r\n- Fotografia (Exposições na Quinzena da Juventude/Espaço J de 2014 e no Open Day da Associação Cultural ADAO)\r\n- Colaboração com a Associação OUT.RA \r\n- Assistente de Loja (Vestuário)\r\n- Ajudante de Cozinha\r\n', 18, 24, 1, 4, 3, 24, 36, 0, -1, 2, 'Praceta D. Sanches I, Nº 8, 2º Esq. (Verderena)', '1132.pdf', 1, 1, 'Fotografia', -1, '', -1, '14299410', 3, '', '', '0000-00-00', '0000-00-00'),
(1133, 'Elizabeth Cabuco', '1993-03-31', '2015-12-21 00:00:00', 1, 4, 5, 285152319, -1, -1, -1, -1, 'Atendimento em Restaurante (Mesa, Balcão e Ajudante de Cozinha)', -1, -1, 0, 1, 39, -1, -1, '', -1, '', 3, 2, 1, -1, '', -1, -1, '', -1, 968056661, -1, -1, '', '', 'Angolana', 0, '', 'Experiência Profissional: 2 Meses em Restaurante (Empregada de mesa e balcão, ajudante de cozinha)\r\nFormação: Ciências económicas e jurídicas (12º ano) / Curso de Fundamentos de Banca (IFB Lisboa)', 18, 24, -1, -1, 22, 12, 39, 0, -1, 1, 'Cidade Sol', '1133.pdf', 1, -1, '', -1, '', -1, 'N1082748', 2, '', '', '0000-00-00', '0000-00-00'),
(1134, 'Bruno Miguel Saldanha', '1981-04-01', '2016-01-05 00:00:00', 1, 4, 4, 226906124, -1, 0, 0, 0, 'Pintor', 1, 0, 0, 1, 11, 0, 0, '', 0, '', 4, 1, 2, 0, '', 0, 0, '', 0, 964300201, 0, 0, '', '', '', 1, '', 'Experiência Profissional:\r\n\r\n- Pintor de Construção Civil (17 Anos)\r\n- Barramentos em Pladur (8 Anos)\r\n- Pedreiro (9 Anos)\r\n- Logística (Cargas/descargas em armazém) 4 Anos', 18, 24, -1, -1, 11, 45, -1, 0, 0, 1, 'Cidade Sol', '1134.pdf', 1, -1, '', -1, '', -1, '12468230', 3, '', '', '0000-00-00', '0000-00-00'),
(1188, 'cv', '2016-06-06', '2016-06-24 14:02:58', -1, -1, -1, 532253253, -1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', -1, -1, -1, -1, '', 0, 0, '', 0, -1, -1, -1, '', '', '', -1, '', '', 9, 2, -1, -1, NULL, -1, -1, -1, 0, 1, '', 'uploads/images/c44e503833b64e9f27197a484f4257c0.pdf', 0, 0, '', 0, '', -1, '523523532', 3, '', '', '2016-06-06', '0000-00-00'),
(1189, 'joao', '2016-06-06', '2016-06-24 14:06:42', -1, -1, -1, 333333222, -1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', -1, -1, -1, -1, '', 0, 0, '', 0, -1, -1, -1, '', '', '', -1, '', '', 9, 2, -1, -1, NULL, -1, -1, -1, 0, 1, '', 'uploads/images/82c2559140b95ccda9c6ca4a8b981f1e.pdf', 0, 0, '', 0, '', -1, '333333333', 3, '', '', '2016-06-13', '0000-00-00'),
(1190, 'NISS', '2016-06-13', '2016-06-27 16:20:23', -1, -1, -1, 999999999, -1, 0, 0, 1, '', 0, 0, 5, -1, -1, 0, 0, '', 0, '', -1, -1, -1, -1, '', 0, 0, '', 0, -1, -1, -1, '', '', '', -1, '', 'teste', 9, 2, -1, -1, 5, -1, -1, 1, 0, 1, '', NULL, 0, 0, '', 0, '', -1, '43435', 2, '', '', '2016-06-06', '0000-00-00'),
(1191, 'Empresa', '2016-06-13', '2016-06-27 17:10:19', -1, -1, -1, 999999994, -1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', -1, -1, -1, -1, '', 0, 0, '', 0, -1, -1, -1, '', '', '', -1, '', '', 9, 2, -1, -1, NULL, -1, -1, -1, 0, 1, 'Av Empresa', NULL, 0, 0, '', 0, '', -1, '363434634346364', 1, '2988-999', '', '2016-06-06', '0000-00-00'),
(1192, 'ewwg', '2016-06-13', '2016-06-27 17:22:02', -1, -1, -1, 321654977, -1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', -1, -1, -1, -1, '', 0, 0, '', 0, -1, -1, -1, '', '', '', -1, '', '', 9, 2, -1, -1, NULL, -1, -1, -1, 0, 1, '', NULL, 0, 0, '', 0, '', -1, '2352323', 2, '', '', '2016-05-30', '0000-00-00'),
(1193, 'desempregado', '2016-06-26', '2016-06-27 18:21:58', -1, -1, -1, 436346344, -1, 0, 0, 0, '', 0, 0, 0, 2, -1, 0, 1, 'wewetwetwe', 0, '', -1, -1, -1, -1, '', 0, 0, '', 0, -1, -1, -1, '', '', '', -1, '', '', 9, 2, -1, -1, NULL, -1, -1, -1, 0, 1, '', NULL, 0, 0, '', 0, '', -1, '5543434346', 2, '', '', '2016-06-06', '0000-00-00'),
(1194, 'desempregado', '2016-06-16', '2016-06-27 18:28:26', -1, -1, -1, 235235235, -1, 0, 0, 0, '', 0, 0, 0, 2, -1, 0, 1, 'ewgwgeweg', 0, '', -1, -1, -1, -1, '', 0, 0, '', 0, -1, -1, -1, '', '', '', -1, '', '', 9, 2, -1, -1, 4, 5, 6, 0, 0, 1, '', NULL, 0, 0, '', 0, '', -1, '23235235235', 1, '', '', '2016-05-31', '0000-00-00'),
(1195, 'Exemplo', '1994-06-03', '2016-06-29 08:52:52', 1, 2, -1, 123456788, 1, 0, 0, 0, '', 0, 1, 0, 1, -1, 0, 0, '', 0, '', 3, 1, 2, -1, '', 0, 0, '', 0, 919191919, -1, -1, 'exemplo@exemplo.pt', 'Portugues', 'Portuguesa', 0, '', '', 17, 26, -1, -1, NULL, -1, -1, 0, 0, 1, 'Rua do exemplo', NULL, 1, 0, '', 0, '', -1, '12345678', 4, '1223-56', '', '2017-04-04', '0000-00-00'),
(1196, 'Exemplooo', '1993-05-02', '2016-06-29 09:54:50', -1, -1, -1, 123456987, -1, 0, 0, 0, '', 0, 0, 0, 1, -1, 0, 0, '', 0, '', -1, -1, -1, -1, '', 0, 0, '', 0, -1, -1, -1, '', '', '', -1, '', '', 17, 26, -1, -1, NULL, -1, -1, -1, 0, 1, '', 'uploads/images/9adeb82fffb5444e81fa0ce8ad8afe7a.pdf', 0, 0, '', 0, '', -1, '123443321', 3, '', '', '2017-05-06', '0000-00-00'),
(1197, 'Exemploo', '1993-05-05', '2016-06-29 10:00:27', -1, -1, -1, 123456978, -1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', -1, -1, -1, -1, '', 0, 0, '', 0, -1, -1, -1, '', '', '', -1, '', '', 17, 26, -1, -1, NULL, -1, -1, -1, 0, 1, '', NULL, 0, 0, '', 0, '', -1, '1234567890', 3, '', '', '2019-07-06', '0000-00-00');
INSERT INTO `utentes` (`id`, `nome`, `dataNascimento`, `dataInscricao`, `idConcelho`, `idFreguesia`, `idHabilitacoes`, `NIF`, `idEstadoCivil`, `trabalhadorPrecario`, `PrestadorDeServicos`, `TrabalhadorContaOutrem`, `ultimaProfissaoExercida`, `semSubsidio`, `subsidioDesemprego`, `EspecificacaoEmprego`, `tempoDesempregado`, `ultimaProfissaoExercidaDesempregado`, `beneficiarioRSI`, `outrosSubsidios`, `QuaisOutrosSubsidios`, `Estudante`, `estabelecimentoEnsino`, `idGrupoEtario`, `idSituacaoRegularizada`, `idGenero`, `MedidasAtivasEmprego`, `QualMedidasAtivasEmprego`, `Voluntariado`, `FormacaoProfissional`, `QualFormacaoProfissional`, `Biscates`, `Telemovel`, `Telefone`, `OutroTelefone`, `Email`, `Naturalidade`, `Nacionalidade`, `InscritoCentroEmprego`, `NumeroInscricaoCentroEmprego`, `Observacoes`, `idFrontOfficeSinalizador`, `idTecnico`, `cartaDeConducao`, `cartaDeConducaoCategoriaID`, `interesseProfissional1`, `interesseProfissional2`, `interesseProfissional3`, `empregado`, `outraSituacao`, `estado`, `morada`, `CV`, `pedidoInicialEmprego`, `pedidoInicialFormacao`, `pedidoInicialFormacaoQual`, `pedidoInicialOutra`, `pedidoInicialOutraQual`, `NISS`, `numeroIdentificacao`, `tipoDocumentoIdentificacao`, `codPostal`, `nrCartaConducao`, `validadeDocumentoIdentificacao`, `emissaoCartaConducao`) VALUES
(1198, 'João Noronha', '1996-11-24', '2016-07-01 17:30:06', 3, 11, 5, 264836200, 1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', 2, 1, 2, -1, '', 0, 0, '', 0, 918373138, -1, -1, 'jmddsdn@gmail.com', 'Portugal', 'Portuguesa', -1, '', '', 9, 2, -1, -1, 31, 32, 33, -1, 0, 1, 'Av Delgado', NULL, 0, 0, '', 0, '', -1, '123456789', 3, '2975', '', '2019-08-14', '0000-00-00'),
(1199, '2323 nha', '2016-07-12', '2016-07-01 17:57:11', -1, -1, -1, 232323234, -1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', -1, -1, -1, -1, '', 0, 0, '', 0, -1, -1, -1, '', '', '', -1, '', '', 9, 2, -1, -1, NULL, -1, -1, -1, 0, 1, 'Av Delgado', NULL, 0, 0, '', 0, '', -1, '23r232323', 2, '2975', '', '2016-07-11', '0000-00-00'),
(1200, '44334', '2016-07-04', '2016-07-01 18:00:25', -1, -1, -1, 443435544, -1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', -1, -1, -1, -1, '', 0, 0, '', 0, -1, -1, -1, '', '', '', -1, '', '', 9, 2, -1, -1, NULL, -1, -1, -1, 0, 1, '', NULL, 0, 0, '', 0, '', -1, '343434', 2, '', '', '2016-07-04', '0000-00-00'),
(1201, '2323235', '2016-07-04', '2016-07-01 18:02:42', -1, -1, 2, 234433333, -1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', -1, -1, -1, -1, '', 0, 0, '', 0, -1, -1, -1, '', '', '', -1, '', '', 9, 2, -1, -1, NULL, -1, -1, -1, 0, 1, '', NULL, 0, 0, '', 0, '', -1, '235235235', 2, '', '', '2016-07-04', '0000-00-00'),
(1202, 'João Noronha', '2016-07-11', '2016-07-01 18:04:07', -1, -1, -1, 234234234, -1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', -1, -1, -1, -1, '', 0, 0, '', 0, -1, -1, -1, '', '', '', -1, '', '', 9, 2, -1, -1, NULL, -1, -1, -1, 0, 1, 'Av Delgado', NULL, 0, 0, '', 0, '', -1, '234234234', 2, '2975', '', '2016-07-04', '0000-00-00'),
(1203, 'João Noronha', '2016-07-04', '2016-07-01 18:05:34', -1, -1, 2, 322342342, -1, 0, 0, 0, '', 0, 0, 0, -1, -1, 0, 0, '', 0, '', -1, -1, -1, -1, '', 0, 0, '', 0, -1, -1, -1, '', '', '', -1, '', '', 9, 2, -1, -1, NULL, -1, -1, -1, 0, 1, 'Av Delgado', NULL, 0, 0, '', 0, '', -1, '352235235', 2, '2975', '', '2016-07-04', '0000-00-00'),
(1204, 'sadaslç', '2016-12-06', '2016-12-28 11:28:55', -1, -1, -1, 327272889, -1, 0, 1, 0, '', 0, 0, 35, -1, -1, 0, 0, '', 0, '', 4, -1, -1, -1, '', 0, 0, '', 0, -1, -1, -1, '', '', '', -1, '', '', 9, 2, -1, -1, NULL, -1, -1, -1, 0, 1, '', NULL, 0, 0, '', 0, '', -1, '8qw8q', 3, '', '', '0080-09-01', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `utentescontinuacao`
--

CREATE TABLE `utentescontinuacao` (
  `idUtente` int(11) NOT NULL,
  `habilitacoesAcademicas` int(1) NOT NULL,
  `habilitacoesProfissionais` int(1) NOT NULL,
  `nivelTIC` int(1) NOT NULL,
  `experienciaProfissional` int(1) NOT NULL,
  `autonomia` int(1) NOT NULL,
  `lideranca` int(1) NOT NULL,
  `acessibilidade` text COLLATE latin1_general_ci,
  `exposicaoRiscos` text COLLATE latin1_general_ci,
  `exigenciasFuncionais` text COLLATE latin1_general_ci,
  `exigenciasCognitivas` text COLLATE latin1_general_ci,
  `exigenciasSocioRelacionais` text COLLATE latin1_general_ci,
  `contactoPublico` text COLLATE latin1_general_ci,
  `apresentacaoTrabalhador` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `utentescontinuacao`
--

INSERT INTO `utentescontinuacao` (`idUtente`, `habilitacoesAcademicas`, `habilitacoesProfissionais`, `nivelTIC`, `experienciaProfissional`, `autonomia`, `lideranca`, `acessibilidade`, `exposicaoRiscos`, `exigenciasFuncionais`, `exigenciasCognitivas`, `exigenciasSocioRelacionais`, `contactoPublico`, `apresentacaoTrabalhador`) VALUES
(1188, 1, 1, 1, 1, 1, 1, '', '', '', '', '', '', ''),
(1189, 1, 1, 1, 1, 1, 1, '', '', '', '', '', '', ''),
(1190, 4, 2, 2, 3, 4, 2, 'Dificuldades em deslocar-se', '', '', '', '', '', ''),
(1191, 1, 5, 3, 2, 4, 2, '', '', '', '', '', '', ''),
(1192, 1, 1, 1, 1, 1, 1, '', '', '', '', '', '', ''),
(1193, 1, 1, 1, 1, 1, 1, '', '', '', '', '', '', ''),
(1194, 4, 3, 2, 2, 5, 3, 'pula pula', '', '', '', '', '', ''),
(1195, 2, 3, 3, 4, 3, 2, '', '', '', '', '', '', ''),
(1196, 2, 3, 3, 4, 3, 2, '', '', '', '', '', '', ''),
(1197, 2, 3, 3, 4, 3, 2, '', '', '', '', '', '', ''),
(1198, 4, 3, 5, 3, 5, 4, '', '', '', '', '', '', ''),
(1199, 1, 1, 1, 1, 1, 1, '', '', '', '', '', '', ''),
(1200, 4, 1, 4, 3, 3, 5, '', '', '', '', '', '', ''),
(1201, 1, 3, 3, 4, 3, 2, '', '', '', '', '', '', ''),
(1202, 1, 1, 1, 1, 1, 1, '', '', '', '', '', '', ''),
(1203, 4, 3, 3, 4, 3, 2, '', '', '', '', '', '', ''),
(1204, 1, 1, 1, 1, 1, 1, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `utentes_disponibilidade`
--

CREATE TABLE `utentes_disponibilidade` (
  `idUtente` int(5) NOT NULL,
  `idDisponibilidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `utentes_disponibilidade`
--

INSERT INTO `utentes_disponibilidade` (`idUtente`, `idDisponibilidade`) VALUES
(1188, 1),
(1188, 2),
(1188, 3),
(1188, 4),
(1188, 5),
(1188, 6),
(1188, 7),
(1188, 8),
(1189, 1),
(1189, 2),
(1189, 3),
(1189, 4),
(1189, 5),
(1189, 6),
(1189, 7),
(1189, 8),
(1190, 1),
(1190, 2),
(1190, 3),
(1190, 4),
(1190, 7),
(1190, 8),
(1191, 2),
(1191, 3),
(1191, 4),
(1191, 8),
(1194, 3),
(1194, 4),
(1194, 5),
(1194, 6),
(1195, 3),
(1195, 6),
(1198, 1),
(1198, 2),
(1198, 3),
(1198, 4),
(1198, 5),
(1198, 6),
(1199, 1),
(1199, 2),
(1199, 3),
(1199, 4),
(1199, 5),
(1199, 6),
(1200, 1),
(1200, 2),
(1200, 3),
(1200, 4),
(1200, 6),
(1201, 1),
(1201, 2),
(1201, 3),
(1201, 4),
(1201, 5),
(1201, 6),
(1202, 1),
(1202, 2),
(1202, 3),
(1202, 4),
(1202, 5),
(1202, 6),
(1203, 1),
(1203, 2),
(1203, 3),
(1203, 4),
(1203, 5),
(1203, 6),
(1203, 7),
(1203, 7),
(1203, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `utentes_linguas`
--

CREATE TABLE `utentes_linguas` (
  `idUtente` int(11) NOT NULL,
  `idLingua` int(11) NOT NULL,
  `valor` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `utentes_old`
--

CREATE TABLE `utentes_old` (
  `id` int(11) NOT NULL,
  `dataInscricao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idConcelho` int(11) NOT NULL,
  `idFreguesia` int(11) NOT NULL,
  `idEstadoCivil` int(11) DEFAULT NULL,
  `idHabilitacoes` int(11) NOT NULL,
  `idGrupoEtario` int(11) NOT NULL,
  `idGenero` int(11) NOT NULL,
  `idSituacaoRegularizada` int(11) NOT NULL,
  `idInscritoCE` int(11) NOT NULL DEFAULT '1',
  `idSituacaoDeEmprego` int(11) NOT NULL,
  `idTempoDesemprego` int(11) NOT NULL DEFAULT '1',
  `nome` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `NIF` int(9) DEFAULT NULL,
  `ultimaProfissaoExercida` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trabalhadorPrecario` bit(1) DEFAULT NULL,
  `PrestadorDeServicos` bit(1) DEFAULT NULL,
  `TrabalhadorContaOutrem` bit(1) DEFAULT NULL,
  `EspecificacaoEmprego` int(2) DEFAULT NULL,
  `subsidioDesemprego` bit(1) DEFAULT NULL,
  `beneficiarioRSI` bit(1) DEFAULT NULL,
  `outrosSubsidios` bit(1) DEFAULT NULL,
  `QuaisOutrosSubsidios` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Estudante` bit(1) DEFAULT NULL,
  `estabelecimentoEnsino` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EstagioProfissional` bit(1) DEFAULT NULL,
  `Voluntariado` bit(1) DEFAULT NULL,
  `FormacaoSubsidiada` bit(1) DEFAULT NULL,
  `Biscates` bit(1) DEFAULT NULL,
  `Telemovel` int(20) DEFAULT NULL,
  `Telefone` int(20) DEFAULT NULL,
  `OutroTelefone` int(20) DEFAULT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Naturalidade` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Nacionalidade` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `InscritoCentroEmprego` bit(1) DEFAULT NULL,
  `NumeroInscricaoCentroEmprego` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Observacoes` text COLLATE utf8_unicode_ci,
  `idFrontOfficeSinalizador` int(11) DEFAULT '1',
  `idTecnico` int(11) NOT NULL DEFAULT '1',
  `tempoDesempregado` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cartaDeConducao` bit(1) NOT NULL,
  `cartaDeConducaoCategoriaID` int(2) NOT NULL,
  `interesseProfissional1` int(2) NOT NULL,
  `interesseProfissional2` int(2) NOT NULL,
  `interesseProfissional3` int(2) NOT NULL,
  `empregado` int(1) NOT NULL,
  `outraSituacao` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `utentes_postostrabalho`
--

CREATE TABLE `utentes_postostrabalho` (
  `idUtente` int(11) NOT NULL,
  `idPostoTrabalho` int(11) NOT NULL,
  `dataInicio` date NOT NULL,
  `dataFim` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vantagensbeneficios`
--

CREATE TABLE `vantagensbeneficios` (
  `Texto` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `vantagensbeneficios`
--

INSERT INTO `vantagensbeneficios` (`Texto`) VALUES
('<ul>\r\n<li>Informa&ccedil;&atilde;o sobre actividades entre membros, como ac&ccedil;&otilde;es de networking, discuss&atilde;o, interven&ccedil;&otilde;es integradas;</li>\r\n<li>Participa&ccedil;&atilde;o em actividades da REBM exclusivas para membros;</li>\r\n<li>Partilha de recursos tais como instala&ccedil;&otilde;es, recursos humanos, entre outros;</li>\r\n<li>Forma&ccedil;&atilde;o a t&eacute;cnicos e pessoal;</li>\r\n<li>Procura e acesso a solu&ccedil;&otilde;es comuns, implementa&ccedil;&atilde;o e refer&ecirc;ncia de boas pr&aacute;ticas organizacionais.</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(200) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `videos`
--

INSERT INTO `videos` (`id`, `nome`, `link`) VALUES
(2, 'IGNITE Barreiro - Empreender na Margem SUL', '//www.youtube.com/embed/zeflEmIOI84'),
(5, 'EQUAL Projectos - Emprego apoiado', '//www.youtube.com/embed/bHJoCdxKc14'),
(9, 'DLBC Redes que nos Unem', 'https://www.youtube.com/embed/9EeXScXN3gA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idInstituicao` (`idInstituicao`),
  ADD KEY `idUtente` (`idUtente`),
  ADD KEY `idTecnico` (`idTecnico`);

--
-- Indexes for table `atividades`
--
ALTER TABLE `atividades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_evento` (`id_evento`);

--
-- Indexes for table `bolsas`
--
ALTER TABLE `bolsas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoriascartaconducao`
--
ALTER TABLE `categoriascartaconducao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `concelhos`
--
ALTER TABLE `concelhos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desempregadodesde`
--
ALTER TABLE `desempregadodesde`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disponibilidadescandidato`
--
ALTER TABLE `disponibilidadescandidato`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idMeio` (`idMeio`);

--
-- Indexes for table `empresas_servicos`
--
ALTER TABLE `empresas_servicos`
  ADD KEY `idEmpresa` (`idEmpresa`),
  ADD KEY `idServico` (`idServico`);

--
-- Indexes for table `encaminhamento`
--
ALTER TABLE `encaminhamento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estadoscivis`
--
ALTER TABLE `estadoscivis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estadosutentes`
--
ALTER TABLE `estadosutentes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estatisticasdestaque`
--
ALTER TABLE `estatisticasdestaque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `freguesias`
--
ALTER TABLE `freguesias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontoffice`
--
ALTER TABLE `frontoffice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gruposetarios`
--
ALTER TABLE `gruposetarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `habilitacoes`
--
ALTER TABLE `habilitacoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inscricoesforum`
--
ALTER TABLE `inscricoesforum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inscritocentrodeemprego`
--
ALTER TABLE `inscritocentrodeemprego`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instituicoes`
--
ALTER TABLE `instituicoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interessesprofissionais`
--
ALTER TABLE `interessesprofissionais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linguas`
--
ALTER TABLE `linguas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meios`
--
ALTER TABLE `meios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membros`
--
ALTER TABLE `membros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pastas`
--
ALTER TABLE `pastas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedidoacessoutentes`
--
ALTER TABLE `pedidoacessoutentes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUtente` (`idUtente`),
  ADD KEY `idTecnico` (`idTecnico`);

--
-- Indexes for table `postosdetrabalho`
--
ALTER TABLE `postosdetrabalho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idEmpresa` (`idEmpresa`);

--
-- Indexes for table `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `situacaodeemprego`
--
ALTER TABLE `situacaodeemprego`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `situacaonopaisregularizada`
--
ALTER TABLE `situacaonopaisregularizada`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tecnicos`
--
ALTER TABLE `tecnicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTiposDePermissoes` (`idTiposDePermissoes`);

--
-- Indexes for table `tempodesemprego`
--
ALTER TABLE `tempodesemprego`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiposdebolsas`
--
ALTER TABLE `tiposdebolsas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiposdepermissoes`
--
ALTER TABLE `tiposdepermissoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiposdocumentosidentificacao`
--
ALTER TABLE `tiposdocumentosidentificacao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utentes`
--
ALTER TABLE `utentes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utentescontinuacao`
--
ALTER TABLE `utentescontinuacao`
  ADD KEY `idUtente` (`idUtente`);

--
-- Indexes for table `utentes_disponibilidade`
--
ALTER TABLE `utentes_disponibilidade`
  ADD KEY `idUtente` (`idUtente`),
  ADD KEY `idDisponibilidade` (`idDisponibilidade`);

--
-- Indexes for table `utentes_linguas`
--
ALTER TABLE `utentes_linguas`
  ADD KEY `idUtente` (`idUtente`),
  ADD KEY `idLingua` (`idLingua`);

--
-- Indexes for table `utentes_old`
--
ALTER TABLE `utentes_old`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idConcelho` (`idConcelho`),
  ADD KEY `idFreguesia` (`idFreguesia`),
  ADD KEY `idEstadoCivil` (`idEstadoCivil`),
  ADD KEY `idHabilitacoes` (`idHabilitacoes`),
  ADD KEY `idGrupoEtario` (`idGrupoEtario`),
  ADD KEY `idGenero` (`idGenero`),
  ADD KEY `idSituacaoRegularizada` (`idSituacaoRegularizada`),
  ADD KEY `idInscritoCE` (`idInscritoCE`),
  ADD KEY `idSituacaoDeEmprego` (`idSituacaoDeEmprego`),
  ADD KEY `idTempoDesemprego` (`idTempoDesemprego`),
  ADD KEY `idFrontOfficeSinalizador` (`idFrontOfficeSinalizador`),
  ADD KEY `idTecnico` (`idTecnico`);

--
-- Indexes for table `utentes_postostrabalho`
--
ALTER TABLE `utentes_postostrabalho`
  ADD KEY `idUtente` (`idUtente`),
  ADD KEY `idPostoTrabalho` (`idPostoTrabalho`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `atividades`
--
ALTER TABLE `atividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bolsas`
--
ALTER TABLE `bolsas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categoriascartaconducao`
--
ALTER TABLE `categoriascartaconducao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `concelhos`
--
ALTER TABLE `concelhos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `desempregadodesde`
--
ALTER TABLE `desempregadodesde`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `disponibilidadescandidato`
--
ALTER TABLE `disponibilidadescandidato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `encaminhamento`
--
ALTER TABLE `encaminhamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estadoscivis`
--
ALTER TABLE `estadoscivis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `estadosutentes`
--
ALTER TABLE `estadosutentes`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `estatisticasdestaque`
--
ALTER TABLE `estatisticasdestaque`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `freguesias`
--
ALTER TABLE `freguesias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `frontoffice`
--
ALTER TABLE `frontoffice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gruposetarios`
--
ALTER TABLE `gruposetarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `habilitacoes`
--
ALTER TABLE `habilitacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inscricoesforum`
--
ALTER TABLE `inscricoesforum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `inscritocentrodeemprego`
--
ALTER TABLE `inscritocentrodeemprego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `instituicoes`
--
ALTER TABLE `instituicoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `interessesprofissionais`
--
ALTER TABLE `interessesprofissionais`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `linguas`
--
ALTER TABLE `linguas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `membros`
--
ALTER TABLE `membros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `multimedia`
--
ALTER TABLE `multimedia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `pastas`
--
ALTER TABLE `pastas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pedidoacessoutentes`
--
ALTER TABLE `pedidoacessoutentes`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postosdetrabalho`
--
ALTER TABLE `postosdetrabalho`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `situacaodeemprego`
--
ALTER TABLE `situacaodeemprego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `situacaonopaisregularizada`
--
ALTER TABLE `situacaonopaisregularizada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tecnicos`
--
ALTER TABLE `tecnicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tempodesemprego`
--
ALTER TABLE `tempodesemprego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tiposdebolsas`
--
ALTER TABLE `tiposdebolsas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tiposdepermissoes`
--
ALTER TABLE `tiposdepermissoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tiposdocumentosidentificacao`
--
ALTER TABLE `tiposdocumentosidentificacao`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `utentes`
--
ALTER TABLE `utentes`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1205;

--
-- AUTO_INCREMENT for table `utentes_old`
--
ALTER TABLE `utentes_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD CONSTRAINT `atendimento_ibfk_1` FOREIGN KEY (`idInstituicao`) REFERENCES `instituicoes` (`id`),
  ADD CONSTRAINT `atendimento_ibfk_2` FOREIGN KEY (`idUtente`) REFERENCES `utentes_old` (`id`),
  ADD CONSTRAINT `atendimento_ibfk_3` FOREIGN KEY (`idTecnico`) REFERENCES `tecnicos` (`id`);

--
-- Limitadores para a tabela `atividades`
--
ALTER TABLE `atividades`
  ADD CONSTRAINT `fk_evento` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id`);

--
-- Limitadores para a tabela `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `empresas_ibfk_1` FOREIGN KEY (`idMeio`) REFERENCES `meios` (`id`);

--
-- Limitadores para a tabela `empresas_servicos`
--
ALTER TABLE `empresas_servicos`
  ADD CONSTRAINT `empresas_servicos_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `empresas_servicos_ibfk_2` FOREIGN KEY (`idServico`) REFERENCES `servicos` (`id`);

--
-- Limitadores para a tabela `pedidoacessoutentes`
--
ALTER TABLE `pedidoacessoutentes`
  ADD CONSTRAINT `pedidoAcessoUtentes_ibfk_1` FOREIGN KEY (`idUtente`) REFERENCES `utentes` (`id`),
  ADD CONSTRAINT `pedidoAcessoUtentes_ibfk_2` FOREIGN KEY (`idTecnico`) REFERENCES `tecnicos` (`id`);

--
-- Limitadores para a tabela `postosdetrabalho`
--
ALTER TABLE `postosdetrabalho`
  ADD CONSTRAINT `postosDeTrabalho_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresas` (`id`);

--
-- Limitadores para a tabela `tecnicos`
--
ALTER TABLE `tecnicos`
  ADD CONSTRAINT `tecnicos_ibfk_1` FOREIGN KEY (`idTiposDePermissoes`) REFERENCES `tiposdepermissoes` (`id`);

--
-- Limitadores para a tabela `utentescontinuacao`
--
ALTER TABLE `utentescontinuacao`
  ADD CONSTRAINT `utentesContinuacao_ibfk_1` FOREIGN KEY (`idUtente`) REFERENCES `utentes` (`id`);

--
-- Limitadores para a tabela `utentes_disponibilidade`
--
ALTER TABLE `utentes_disponibilidade`
  ADD CONSTRAINT `utentes_disponibilidade_ibfk_1` FOREIGN KEY (`idUtente`) REFERENCES `utentes` (`id`),
  ADD CONSTRAINT `utentes_disponibilidade_ibfk_2` FOREIGN KEY (`idDisponibilidade`) REFERENCES `disponibilidadescandidato` (`id`);

--
-- Limitadores para a tabela `utentes_linguas`
--
ALTER TABLE `utentes_linguas`
  ADD CONSTRAINT `utentes_linguas_ibfk_1` FOREIGN KEY (`idUtente`) REFERENCES `utentes` (`id`),
  ADD CONSTRAINT `utentes_linguas_ibfk_2` FOREIGN KEY (`idLingua`) REFERENCES `linguas` (`id`);

--
-- Limitadores para a tabela `utentes_old`
--
ALTER TABLE `utentes_old`
  ADD CONSTRAINT `utentes_old_ibfk_1` FOREIGN KEY (`idConcelho`) REFERENCES `concelhos` (`id`),
  ADD CONSTRAINT `utentes_old_ibfk_10` FOREIGN KEY (`idTempoDesemprego`) REFERENCES `tempodesemprego` (`id`),
  ADD CONSTRAINT `utentes_old_ibfk_11` FOREIGN KEY (`idFrontOfficeSinalizador`) REFERENCES `instituicoes` (`id`),
  ADD CONSTRAINT `utentes_old_ibfk_12` FOREIGN KEY (`idTecnico`) REFERENCES `tecnicos` (`id`),
  ADD CONSTRAINT `utentes_old_ibfk_2` FOREIGN KEY (`idFreguesia`) REFERENCES `freguesias` (`id`),
  ADD CONSTRAINT `utentes_old_ibfk_3` FOREIGN KEY (`idEstadoCivil`) REFERENCES `estadoscivis` (`id`),
  ADD CONSTRAINT `utentes_old_ibfk_4` FOREIGN KEY (`idHabilitacoes`) REFERENCES `habilitacoes` (`id`),
  ADD CONSTRAINT `utentes_old_ibfk_5` FOREIGN KEY (`idGrupoEtario`) REFERENCES `gruposetarios` (`id`),
  ADD CONSTRAINT `utentes_old_ibfk_6` FOREIGN KEY (`idGenero`) REFERENCES `generos` (`id`),
  ADD CONSTRAINT `utentes_old_ibfk_7` FOREIGN KEY (`idSituacaoRegularizada`) REFERENCES `situacaonopaisregularizada` (`id`),
  ADD CONSTRAINT `utentes_old_ibfk_8` FOREIGN KEY (`idInscritoCE`) REFERENCES `inscritocentrodeemprego` (`id`),
  ADD CONSTRAINT `utentes_old_ibfk_9` FOREIGN KEY (`idSituacaoDeEmprego`) REFERENCES `situacaodeemprego` (`id`);

--
-- Limitadores para a tabela `utentes_postostrabalho`
--
ALTER TABLE `utentes_postostrabalho`
  ADD CONSTRAINT `utentes_postosTrabalho_ibfk_1` FOREIGN KEY (`idUtente`) REFERENCES `utentes` (`id`),
  ADD CONSTRAINT `utentes_postosTrabalho_ibfk_2` FOREIGN KEY (`idPostoTrabalho`) REFERENCES `postosdetrabalho` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
