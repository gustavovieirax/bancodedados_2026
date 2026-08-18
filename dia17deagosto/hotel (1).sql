-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/08/2026 às 01:23
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hotel`
--
CREATE DATABASE IF NOT EXISTS `hotel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hotel`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `codcliente` int(11) NOT NULL,
  `cliente` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cpf` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`codcliente`, `cliente`, `email`, `cpf`) VALUES
(1, 'João Vinicius', 'alterandodados@gmail.com', '234.999.999-90'),
(2, 'Igor', 'Igor2@gmail.com', '918.998.999-09'),
(3, 'Higor', 'Igor099@gmail.com', '227.998.999-09'),
(4, 'José Higor', 'Igo1r2@gmail.com', '878.998.999-09'),
(5, 'Viscendino', 'viscende@gmail.com', '233.998.999-09'),
(6, 'Gustavo', 'Gustavo1208@gmail.com', '192.192.192-09'),
(7, 'João', 'Joao1@gmail.com', '198.988.999-01'),
(8, 'Pedro', 'Pedro2@gmail.com', '192.902.999-09'),
(9, 'Pietro', 'Pietro2@gmail.com', '191.902.999-92'),
(10, 'Vieira', 'Vieira@outlook.com', '198.888.767-09');

-- --------------------------------------------------------

--
-- Estrutura para tabela `hospedagem`
--

CREATE TABLE `hospedagem` (
  `idhospedagem` int(11) NOT NULL,
  `dataentrada` date NOT NULL,
  `datasaida` date DEFAULT NULL,
  `horaentrada` time NOT NULL,
  `horasaida` time DEFAULT NULL,
  `totalhospedagem` decimal(7,2) DEFAULT NULL,
  `codcli` int(11) DEFAULT NULL,
  `codquarto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `hospedagem`
--

INSERT INTO `hospedagem` (`idhospedagem`, `dataentrada`, `datasaida`, `horaentrada`, `horasaida`, `totalhospedagem`, `codcli`, `codquarto`) VALUES
(1, '2026-07-16', NULL, '19:09:10', NULL, NULL, 6, 16),
(2, '2026-05-06', NULL, '17:10:12', NULL, NULL, 7, 17),
(3, '2026-06-08', NULL, '17:09:00', NULL, NULL, 8, 21),
(4, '2026-07-14', NULL, '19:08:00', NULL, NULL, 9, 22),
(5, '2026-05-11', NULL, '17:04:00', NULL, NULL, 10, 28);

-- --------------------------------------------------------

--
-- Estrutura para tabela `quarto`
--

CREATE TABLE `quarto` (
  `codquarto` int(11) NOT NULL,
  `quarto` varchar(255) NOT NULL,
  `andar` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `quarto`
--

INSERT INTO `quarto` (`codquarto`, `quarto`, `andar`, `tipo`) VALUES
(15, '11', '1º Andar', 'Solteiro, 1 cama'),
(16, '12', '1º Andar', 'Casal, premium'),
(17, '13', '1º Andar', 'Casal presidencial'),
(18, '14', '1º Andar', 'Quarto premium plus'),
(20, '22', '2º Andar', 'Casal básico'),
(21, '23', '2º Andar', 'Casal com pets'),
(22, '24', '2º Andar', 'Casal Deficiência motora'),
(23, '25', '2º Andar', 'Casal com Guia '),
(24, '31', '3º Andar', 'Solteiro Premium'),
(25, '32', '3º Andar', 'Solteiro pro'),
(26, '33', '3º Andar', 'Solteiro com Pets'),
(27, '34', '3º Andar', 'Solteiro Com Deficiência Visual-Motora'),
(28, '35', '3º Andar', 'Solteiro Com Serviço Hospitalar');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico`
--

CREATE TABLE `servico` (
  `codservico` int(11) NOT NULL,
  `servico` varchar(255) NOT NULL,
  `qtde` int(11) NOT NULL,
  `valor` decimal(7,2) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servico`
--

INSERT INTO `servico` (`codservico`, `servico`, `qtde`, `valor`, `tipo`) VALUES
(1, 'Coca Cola Lata', 0, 5.00, 'Bebidas'),
(3, 'Inglês Curso', 10, 999.90, 'Estudo'),
(4, 'Buffet Café', 0, 28.50, 'Café da Manhã'),
(5, 'Buffet Almoço', 0, 70.00, 'Almoço'),
(6, 'Buffet Jantar', 0, 75.00, 'Jantar'),
(7, 'Corte de Cabelo', 0, 70.00, 'Cuidados Pessoais'),
(8, 'Inglês Apostila', 10, 99.90, 'Estudo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicoshospedagem`
--

CREATE TABLE `servicoshospedagem` (
  `idhospedagem` int(11) DEFAULT NULL,
  `idservico` int(11) DEFAULT NULL,
  `dataservico` date DEFAULT NULL,
  `horaservico` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servicoshospedagem`
--

INSERT INTO `servicoshospedagem` (`idhospedagem`, `idservico`, `dataservico`, `horaservico`) VALUES
(2, 5, '2026-07-09', '19:55:10'),
(3, 4, '2026-01-20', '12:11:02'),
(4, 7, '2026-01-20', '12:55:30'),
(5, 1, '2026-08-03', '14:55:10');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codcliente`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices de tabela `hospedagem`
--
ALTER TABLE `hospedagem`
  ADD PRIMARY KEY (`idhospedagem`),
  ADD KEY `codcli` (`codcli`),
  ADD KEY `codquarto` (`codquarto`);

--
-- Índices de tabela `quarto`
--
ALTER TABLE `quarto`
  ADD PRIMARY KEY (`codquarto`);
ALTER TABLE `quarto` ADD FULLTEXT KEY `andar` (`andar`);
ALTER TABLE `quarto` ADD FULLTEXT KEY `tipo` (`tipo`);

--
-- Índices de tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`codservico`);

--
-- Índices de tabela `servicoshospedagem`
--
ALTER TABLE `servicoshospedagem`
  ADD KEY `idhospedagem` (`idhospedagem`),
  ADD KEY `idservico` (`idservico`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `hospedagem`
--
ALTER TABLE `hospedagem`
  MODIFY `idhospedagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `quarto`
--
ALTER TABLE `quarto`
  MODIFY `codquarto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `codservico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `hospedagem`
--
ALTER TABLE `hospedagem`
  ADD CONSTRAINT `hospedagem_ibfk_1` FOREIGN KEY (`codcli`) REFERENCES `cliente` (`codcliente`),
  ADD CONSTRAINT `hospedagem_ibfk_2` FOREIGN KEY (`codquarto`) REFERENCES `quarto` (`codquarto`);

--
-- Restrições para tabelas `servicoshospedagem`
--
ALTER TABLE `servicoshospedagem`
  ADD CONSTRAINT `servicoshospedagem_ibfk_1` FOREIGN KEY (`idhospedagem`) REFERENCES `hospedagem` (`idhospedagem`),
  ADD CONSTRAINT `servicoshospedagem_ibfk_2` FOREIGN KEY (`idservico`) REFERENCES `servico` (`codservico`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
