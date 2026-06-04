-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/06/2026 às 23:53
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
-- Banco de dados: `produtos`
--
CREATE DATABASE IF NOT EXISTS `produtos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `produtos`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `categoria`) VALUES
(1, 'Enlatados'),
(2, 'Laticínios'),
(3, 'Açougue'),
(4, 'Limpeza'),
(5, 'Tecnologia'),
(6, 'Papelaria'),
(7, 'Jardinagem'),
(8, 'Escolar');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` int(11) NOT NULL,
  `produto` varchar(200) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `qtde` int(11) NOT NULL,
  `datacad` date NOT NULL,
  `ativo` bit(1) NOT NULL,
  `idcat` int(11) DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `Marca` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`idproduto`, `produto`, `preco`, `qtde`, `datacad`, `ativo`, `idcat`, `observacao`, `Marca`) VALUES
(1, 'Acém Peça', 39.99, 50, '2026-05-13', b'1', 3, 'Sem gordura', 'Friboi'),
(2, 'Milho', 2.37, 10, '2026-10-01', b'0', 1, '', 'Quero'),
(3, 'Mussarela', 30.50, 55, '2025-05-01', b'1', 2, '', 'Seara'),
(4, 'Detergente Ipê', 2.50, 100, '2026-05-06', b'1', 4, '', 'YPE'),
(5, 'Sabão em pó', 9.90, 100, '2026-05-27', b'1', 4, 'Lavagem rápida', 'Omo'),
(7, 'Cloro', 11.99, 100, '2026-05-27', b'1', 4, '', 'omo'),
(8, 'Desenfetante', 13.99, 100, '2026-05-27', b'1', 4, '', 'veja'),
(9, 'Lapiseira', 19.99, 100, '2026-05-27', b'1', 6, '', 'pentel'),
(10, 'Caneta', 1.99, 100, '2026-05-27', b'1', 6, '', 'Bic'),
(11, 'Tesoura', 3.99, 100, '2026-05-27', b'1', 6, '', 'ABC'),
(12, 'Estilete', 9.99, 100, '2026-05-27', b'1', 6, '', 'ABC'),
(13, 'Caneta gel', 12.99, 100, '2026-05-27', b'1', 6, '', 'Xin'),
(14, 'Borracha', 1.99, 100, '2026-05-27', b'1', 6, '', 'Kaz'),
(15, 'Estojo', 89.99, 100, '2026-05-27', b'1', 6, '', 'Win'),
(16, 'Mochila', 199.90, 100, '2026-05-27', b'1', 6, '', 'Ion'),
(17, 'PC ', 4.00, 100, '2026-05-27', b'1', 5, '', 'LG');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idproduto`),
  ADD KEY `idcat` (`idcat`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`idcat`) REFERENCES `categoria` (`idcategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
