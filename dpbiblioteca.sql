-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/10/2024 às 19:48
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dp_biblioteca`
--
CREATE DATABASE IF NOT EXISTS `dp_biblioteca` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dp_biblioteca`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `emprestimos`
--

CREATE TABLE `emprestimos` (
  `CodEmprestimo` int(11) NOT NULL,
  `Data_Emprestimo` varchar(255) DEFAULT NULL,
  `Data_Devolucao` varchar(255) DEFAULT NULL,
  `CodLivro` int(11) DEFAULT NULL,
  `CodLeitor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `emprestimos`
--

INSERT INTO `emprestimos` (`CodEmprestimo`, `Data_Emprestimo`, `Data_Devolucao`, `CodLivro`, `CodLeitor`) VALUES
(1, '2024-09-01', '2024-09-15', 1, 3),
(2, '2024-09-05', '2024-09-20', 5, 2),
(3, '2024-09-10', '2024-09-25', 3, 1),
(4, '2024-09-12', '2024-09-26', 4, 5),
(5, '2024-09-15', '2024-09-30', 2, 4),
(6, '2024-09-20', '2024-10-05', 1, 2),
(7, '2024-09-22', '2024-10-07', 2, 3),
(8, '2024-09-25', '2024-10-10', 3, 4),
(9, '2024-09-28', '2024-10-12', 4, 1),
(10, '2024-09-30', '2024-10-15', 5, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `leitores`
--

CREATE TABLE `leitores` (
  `CodLeitor` int(11) NOT NULL,
  `Nome` varchar(300) DEFAULT NULL,
  `DtNasc` date DEFAULT NULL,
  `Celular` varchar(300) DEFAULT NULL,
  `Email` varchar(300) DEFAULT NULL,
  `RA` int(11) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `NumEnd` varchar(255) NOT NULL,
  `Bairro` varchar(255) NOT NULL,
  `CidadeUF` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `leitores`
--

INSERT INTO `leitores` (`CodLeitor`, `Nome`, `DtNasc`, `Celular`, `Email`, `RA`, `Endereco`, `NumEnd`, `Bairro`, `CidadeUF`) VALUES
(1, 'João Silva Sauro', '2001-04-01', '(11)98788-2311', 'joao@hotmail.com', 631113101, 'Rua Boa Esperança', '201', 'Janga', 'Paulista/PE'),
(2, 'Maria Silva Nascimento', '2011-07-21', '(11)98788-2311', 'maria@hotmail.com', 631113102, 'Rua da Vovó', '101', 'MAranguape I', 'Paulista/PE'),
(3, 'Mateus Novaes Abreu', '2012-06-11', '(11)98788-2311', 'mateus@hotmail.com', 631113105, 'Rua da Praia', '41', 'Bosque 2', 'Olinda/PE'),
(4, 'Joana Maria de Souza', '2008-05-31', '(11)98788-2311', 'joana@hotmail.com', 631113155, 'Rua da Casa', '121', 'Bosque 1', 'Olinda/PE'),
(5, 'Maria  das Graças Menezes', '2007-11-12', '(11)98788-2311', 'maria@hotmail.com', 631113121, 'Avenida dos Lirios', '78', 'Boa Viagem', 'Recife/PE');

-- --------------------------------------------------------

--
-- Estrutura para tabela `livros`
--

CREATE TABLE `livros` (
  `Codlivros` int(11) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Autor` varchar(250) DEFAULT NULL,
  `Editora` varchar(250) DEFAULT NULL,
  `Sinopse` varchar(550) DEFAULT NULL,
  `Ano` int(11) DEFAULT NULL,
  `Gênero` varchar(250) DEFAULT NULL,
  `Pagina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `livros`
--

INSERT INTO `livros` (`Codlivros`, `Titulo`, `Autor`, `Editora`, `Sinopse`, `Ano`, `Gênero`, `Pagina`) VALUES
(1, 'O Menino do Pijama Listrado', 'John Boyne', 'Companhia das Letras', 'Bruno, um garoto de oito anos, faz amizade com Shmuel, um menino prisioneiro em um campo de concentração, revelando a inocência em meio ao horror da guerra.', 2006, 'Drama', 192),
(2, 'Hábitos atómicos', 'James Clear', 'Alta life', 'James Clear ensina como pequenas mudanças diárias podem levar a grandes resultados, oferecendo estratégias para formar bons hábitos e eliminar os ruins', 2019, 'autoajuda', 320),
(3, 'Mais esperto que o diabo', 'Napoleon Hill', 'Citadel', 'Napoleon Hill dialoga com o Diabo sobre como medos e dúvidas impedem o sucesso, incentivando a autoconfiança e a superação.', 1938, 'autoajuda', 208),
(4, 'Os homens são de marte, as mulheres são de vênus', 'John Gray', 'Bicicleta amarela', 'John Gray explora as diferenças entre homens e mulheres, propondo que entender essas distinções melhora a comunicação e os relacionamentos.', 2015, 'Família e criação', 304),
(5, 'O labirinto do fauno', 'Guillermo del Toro', 'Intrínseca', ' Ofélia, uma menina na Espanha pós-Guerra Civil, encontra um labirinto mágico e um fauno que a desafia a provar que é uma princesa reencarnada, enquanto enfrenta a brutalidade do seu novo lar.', 2015, 'Fantasia', 310);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD PRIMARY KEY (`CodEmprestimo`),
  ADD KEY `CodLivro` (`CodLivro`),
  ADD KEY `CodLeitor` (`CodLeitor`);

--
-- Índices de tabela `leitores`
--
ALTER TABLE `leitores`
  ADD PRIMARY KEY (`CodLeitor`);

--
-- Índices de tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`Codlivros`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  MODIFY `CodEmprestimo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD CONSTRAINT `emprestimos_ibfk_1` FOREIGN KEY (`CodLivro`) REFERENCES `livros` (`Codlivros`),
  ADD CONSTRAINT `emprestimos_ibfk_2` FOREIGN KEY (`CodLeitor`) REFERENCES `leitores` (`CodLeitor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
