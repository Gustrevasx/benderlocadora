-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06/06/2023 às 02:47
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_locadora`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluguel`
--

CREATE TABLE `aluguel` (
  `id` int(11) NOT NULL,
  `data_retirada` date DEFAULT NULL,
  `local_retirada` varchar(255) DEFAULT NULL,
  `codigo_veiculo` int(11) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `aluguel`
--

INSERT INTO `aluguel` (`id`, `data_retirada`, `local_retirada`, `codigo_veiculo`, `descricao`, `marca`, `modelo`, `ano`) VALUES
(1, '2023-07-20', 'Local A', 202325, ' ARGO', 'FIAT', 'HACTCH', 2023);

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `codigo_login` int(11) NOT NULL,
  `nome_completo_login` varchar(100) DEFAULT NULL,
  `nome_login` varchar(50) DEFAULT NULL,
  `senha_login` varchar(32) DEFAULT NULL,
  `tipo_login` int(11) DEFAULT NULL,
  `email_login` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `login`
--

INSERT INTO `login` (`codigo_login`, `nome_completo_login`, `nome_login`, `senha_login`, `tipo_login`, `email_login`) VALUES
(1, 'Administrador', 'admin', '202cb962ac59075b964b07152d234b70', 0, 'gustavobreno44@gmail.com'),
(2, 'Cliente', 'cliente', '202cb962ac59075b964b07152d234b70', 1, NULL),
(0, NULL, 'Gustavo', '123456', NULL, NULL),
(0, 'breno gustavo', 'breno', '123456', 2, 'gustavobreno44@outlook.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `codigo_veiculo` int(11) NOT NULL,
  `modelo_veiculo` varchar(200) NOT NULL,
  `ano_veiculo` varchar(200) NOT NULL,
  `categoria_veiculo` varchar(200) DEFAULT NULL,
  `cor_veiculo` text NOT NULL,
  `descricao_veiculo` varchar(255) DEFAULT NULL,
  `marca_veiculo` varchar(200) DEFAULT NULL,
  `imagem_veiculo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`codigo_veiculo`, `modelo_veiculo`, `ano_veiculo`, `categoria_veiculo`, `cor_veiculo`, `descricao_veiculo`, `marca_veiculo`, `imagem_veiculo`) VALUES
(202330, 'AMAROK 4X4', '2023', NULL, '', 'AMAROK', 'VOLKSWAGEM', '6478c8b3f0cba.jpeg'),
(202331, 'ONIXPLUS ', '2023', NULL, '', 'ONIX', 'CHEVROLET', '6478ced2c0df7.jpeg');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`codigo_veiculo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluguel`
--
ALTER TABLE `aluguel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `codigo_veiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202332;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
