-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 11/03/2021 às 16:41
-- Versão do servidor: 10.4.10-MariaDB
-- Versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_alunos`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `cod_alunos` int(11) NOT NULL,
  `img_alunos` varchar(150) NOT NULL,
  `nome_alunos` varchar(150) NOT NULL,
  `cep_alunos` varchar(10) NOT NULL,
  `estado_alunos` varchar(150) NOT NULL,
  `cidade_alunos` varchar(150) NOT NULL,
  `bairro_alunos` varchar(150) NOT NULL,
  `rua_alunos` varchar(150) NOT NULL,
  `numero_alunos` varchar(150) NOT NULL,
  `complemento_alunos` varchar(150) DEFAULT NULL,
  `curso_alunos` int(11) NOT NULL,
  `turma_alunos` varchar(150) NOT NULL,
  `data_alunos` date NOT NULL,
  `situacao_alunos` int(11) NOT NULL,
  `dtRegistro_alunos` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`cod_alunos`, `img_alunos`, `nome_alunos`, `cep_alunos`, `estado_alunos`, `cidade_alunos`, `bairro_alunos`, `rua_alunos`, `numero_alunos`, `complemento_alunos`, `curso_alunos`, `turma_alunos`, `data_alunos`, `situacao_alunos`, `dtRegistro_alunos`) VALUES
(24, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 06:10:51'),
(25, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(26, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(27, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(28, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(29, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(30, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(31, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(32, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(33, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(34, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(35, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(36, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(37, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(38, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(39, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(40, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(41, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(42, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(43, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(44, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(45, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(46, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(47, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(48, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(49, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(50, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(51, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(52, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(53, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(54, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(55, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(56, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(57, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(58, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(59, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(60, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(61, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(62, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(63, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(64, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(65, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(66, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(67, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(68, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(69, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(70, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(71, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(72, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(73, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(74, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(75, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(76, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(77, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(78, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(79, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(80, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(81, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(82, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(83, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(84, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(85, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(86, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(87, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(88, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(89, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(90, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(91, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(92, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(93, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(94, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(95, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(96, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(97, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(98, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(99, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(100, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(101, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(102, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(103, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(104, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(105, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(106, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(107, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(108, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(109, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(110, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(111, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(112, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(113, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(114, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(115, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(116, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(117, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(118, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(119, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(120, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(121, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(122, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(123, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(124, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(125, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(126, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(127, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(128, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(129, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(130, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(131, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(132, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(133, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(134, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(135, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(136, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(137, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(138, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(139, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(140, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(141, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(142, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(143, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(144, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(145, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(146, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(147, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(148, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(149, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(150, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(151, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(152, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(153, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(154, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(155, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(156, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(157, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(158, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(159, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(160, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(161, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(162, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(163, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(164, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(165, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(166, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(167, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(168, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(169, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(170, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(171, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(172, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(173, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(174, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(175, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(176, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(177, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(178, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(179, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(180, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(181, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(182, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(183, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(184, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(185, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(186, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(187, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(188, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(189, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(190, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(191, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(192, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(193, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(194, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(195, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(196, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(197, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(198, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(199, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(200, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(201, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(202, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(203, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(204, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(205, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(206, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(207, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(208, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(209, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(210, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(211, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(212, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(213, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(214, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(215, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(216, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(217, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(218, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(219, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(220, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(221, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(222, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(223, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(224, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(225, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(226, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(227, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(228, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(229, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(230, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(231, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(232, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(233, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(234, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(235, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(236, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(237, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(238, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(239, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(240, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(241, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(242, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(243, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(244, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(245, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(246, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(247, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(248, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(249, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(250, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(251, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(252, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(253, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(254, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(255, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(256, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(257, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(258, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(259, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(260, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(261, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(262, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51');
INSERT INTO `alunos` (`cod_alunos`, `img_alunos`, `nome_alunos`, `cep_alunos`, `estado_alunos`, `cidade_alunos`, `bairro_alunos`, `rua_alunos`, `numero_alunos`, `complemento_alunos`, `curso_alunos`, `turma_alunos`, `data_alunos`, `situacao_alunos`, `dtRegistro_alunos`) VALUES
(263, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(264, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(265, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(266, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(267, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(268, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(269, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(270, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(271, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(272, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(273, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(274, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(275, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(276, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(277, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(278, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(279, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(280, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(281, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(282, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(283, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(284, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(285, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(286, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(287, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(288, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(289, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(290, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(291, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(292, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(293, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(294, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(295, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(296, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(297, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(298, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(299, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(300, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(301, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(302, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(303, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(304, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(305, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(306, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(307, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(308, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(309, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(310, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(311, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(312, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(313, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(314, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(315, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(316, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(317, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(318, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(319, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(320, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(321, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(322, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(323, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(324, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(325, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(326, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(327, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(328, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(329, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(330, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(331, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(332, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(333, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(334, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(335, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(336, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(337, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(338, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(339, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(340, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(341, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(342, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(343, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(344, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(345, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(346, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(347, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(348, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(349, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(350, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(351, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(352, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(353, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(354, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(355, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(356, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(357, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(358, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(359, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(360, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(361, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(362, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(363, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(364, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(365, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(366, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(367, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(368, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(369, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(370, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(371, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(372, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(373, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(374, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(375, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(376, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(377, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(378, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(379, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(380, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(381, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(382, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(383, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(384, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(385, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(386, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(387, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(388, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(389, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(390, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(391, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(392, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(393, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(394, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(395, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(396, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(397, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(398, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(399, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(400, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(401, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(402, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(403, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(404, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(405, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(406, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(407, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(408, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(409, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(410, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(411, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(412, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(413, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(414, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(415, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(416, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(417, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(418, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(419, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(420, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(421, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(422, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(423, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(424, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(425, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(426, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(427, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(428, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(429, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(430, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(431, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(432, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(433, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(434, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(435, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(436, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(437, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(438, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(439, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(440, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(441, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51'),
(442, '55096af6ec94acc9afb0eb81f74cb729.png', 'gabriel teste dois', '32015200', 'MG', 'Santa Helena', 'Contagem', 'Rua Dom Geraldo Fernandes Bijos', '854', '', 1, '12', '2002-06-12', 1, '2021-03-11 09:10:51');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `cod_cursos` int(11) NOT NULL,
  `nome_cursos` varchar(100) NOT NULL,
  `dtRegistro_cursos` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `cod_usuarios` int(11) NOT NULL,
  `nome_usuarios` varchar(150) NOT NULL,
  `email_usuarios` varchar(150) NOT NULL,
  `senha_usuarios` varchar(150) NOT NULL,
  `tipo_usuarios` varchar(10) NOT NULL,
  `dtRegistro_usuarios` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`cod_usuarios`, `nome_usuarios`, `email_usuarios`, `senha_usuarios`, `tipo_usuarios`, `dtRegistro_usuarios`) VALUES
(1, 'Admin', 'root@teste.com', 'ea8f22013607b9cd30c594e3fb42b4f8', '2', '2021-03-10 14:41:34');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`cod_alunos`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`cod_cursos`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`cod_usuarios`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `cod_alunos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `cod_cursos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `cod_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
