-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Nov-2022 às 01:18
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `marcellos`
--
CREATE DATABASE IF NOT EXISTS `marcellos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `marcellos`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `email` text NOT NULL,
  `descricao` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`id`, `nome`, `email`, `descricao`) VALUES
(1, 'Gustavo Dias da Silva Cruz', 'aaaaaaaaaaaaa@gmail.com', 'Amei o trabalho de vocês!              ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `telefone` text NOT NULL,
  `cep` text NOT NULL,
  `complemento` text NOT NULL,
  `id_pizza` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`id`, `nome`, `telefone`, `cep`, `complemento`, `id_pizza`) VALUES
(1, 'Gustavo Dias da Silva Cruz', '1198112213121', '03733000', 'numero 250, casa', 18);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pizza`
--

CREATE TABLE `pizza` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `imagem` text NOT NULL,
  `descricao` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pizza`
--

INSERT INTO `pizza` (`id`, `nome`, `imagem`, `descricao`) VALUES
(1, 'Pizza de Calabresa', 'https://www.sabornamesa.com.br/media/k2/items/cache/513d7a0ab11e38f7bd117d760146fed3_L.jpg', 'Pizza de mussarela, calabresa, azeitonas e cebola.'),
(2, 'Pizza de Quatro Queijos', 'https://www.receiteria.com.br/wp-content/uploads/receitas-de-pizza-quatro-queijos-00.jpg', 'Pizza de mussarela, parmesão, gorgonzola e provolone.'),
(3, 'Pizza de Brócolis', 'https://revistasaboresdosul.com.br/wp-content/uploads/2017/07/PIZZA-DE-BROCOLIS-Livro-de-Receitas-Mesa-Brasil-Sesc-1.jpg', 'Pizza de mussarela ralada, brócolis, orégano e pimenta-do-reino. '),
(4, 'Pizza de Marguerita', 'https://assets.delirec.com/images%2F2re4OZn8tAVcJujtmBcNRFL69Kx1%2Frecipe%2Fd9085d9b-d86c-4586-b5ac-6f0955c90db9-Pizza-marguerita--gallery-0', 'Pizza de mussarela, tomate e manjericão.'),
(5, 'Pizza sabor Portuguesa ', 'https://www.clonepizza.com.br/wp-content/uploads/PORTUGUESA-1.jpg', 'Pizza de mussarela, presunto, palmito, ervilha, lombo canadense fatiado, provolone ralado e ovo.'),
(6, 'Pizza de Atum', 'http://www.saboresajinomoto.com.br/uploads/images/recipes/pizza-de-atum-e-mussarela.jpg', 'Pizza de parmesão ralado, atum e alho poró refogado.'),
(7, 'Pizza sabor A Moda do Chef', 'https://gestaoderestaurantes.com.br/blog/wp-content/uploads/2019/11/19-11-2019-A.jpg', 'Pizza de calabresa moída, palmito,azeitonas verdes picadas, mussarela, requeijão, manjericão e parmesão.'),
(8, 'Pizza sabor pepperoni', 'https://pizzariadesucesso.com/wp-content/uploads/2018/05/pepperoni-pizza.jpg', 'Pizza de queijo, oregano e pepperoni.'),
(9, 'Napolitana', 'https://www.receiteria.com.br/wp-content/uploads/receitas-de-pizza-napolitana.jpg', 'Pizza de queijo, tomate, orégano e parmesão ralado.'),
(10, 'Presunto', 'https://static.wixstatic.com/media/0eb618_ea75ae18e7c2456f9bf87587f59dfd4b~mv2.jpeg/v1/fill/w_1420,h_900,al_c,q_85/0eb618_ea75ae18e7c2456f9bf87587f59dfd4b~mv2.jpeg', 'Queijo, orégano e presunto.'),
(11, 'Pizza de queijo', 'https://caldobom.com.br/uploads/2017/07/pizza-mussarela.jpg', 'Pizza de queijo e orégano.'),
(12, 'Pizza de Frango', 'http://www.saboresajinomoto.com.br/uploads/images/recipes/pizza-de-frango-1.jpg', 'Pizza de frango desfiado, queijo, cebola, orégano e requeijão.'),
(13, 'Pizza de Ovo com Bacon', 'https://www.mundodomarketing.com.br/assets/img/lancamentos/imagem/4d2922063f2e742115122b3ed66ee14b.jpg', 'Queijo, bacon, cebola, cream cheese, orégano e ovo de codorna.'),
(14, 'Pizza Mexicana', 'https://cdn.accon.app/165461120410320838173016615924-1080p.jpg', 'Pizza de queijo gorgonzola, pepperoni ralado, cebola, lascas de pimenta dedo de moça e alho frito dourado.'),
(15, 'Pizza Vegetariana', 'https://blog.mariafilo.com.br/wp-content/uploads/2020/07/post_pizza_vegetariana_2.jpg', 'Pizza com brócolis, palmito, champignon, alho poró refogado e parmesão.'),
(16, 'Pizza de Palmito', 'https://www.lafamiglias.com.br/images/pizza/pizza-palmito.jpg', 'Pizza com lascas de Palmito, Muçarela e Azeitonas.'),
(17, 'Pizza sabor Milho com Catupiry ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStsYNURHLDV4sRWBCkhCRA2Z8weNN5zPTJ8g&usqp=CAU', 'Pizza com milho e catupiry.'),
(18, 'Pizza de Peperoni com Catupiry', 'https://forneriaoriginal.com/wp-content/uploads/2020/04/27_catuperoni1.jpg', 'Queijo, pepperoni, requeijão, orégano e parmesão ralado.'),
(19, 'Pizza sabor Carne Seca', 'https://pizzariadesucesso.com/wp-content/uploads/2018/05/23d1dd13d707d7c9da6c435798e4179a-1.jpeg', 'Pizza de queijo,  carne seca magra, dessalgada, cozida e desfiada e cebola roxa picada.'),
(20, 'Pizza sabor Escarola com Mussarela.', 'https://boaforma.abril.com.br/wp-content/uploads/sites/2/2016/10/pizza-escarola-queijo_0.jpg', 'Pizza de queijo mussarela, escarola e cebola picada.'),
(21, 'Morango com Chocolate', 'https://i0.wp.com/xtudoreceitas.com/wp-content/uploads/Pizza-de-Chocolate-com-Morango.jpg?fit=650%2C450&ssl=1&resize=1280%2C720', 'Pizza com chocolate ao leite derretido, lascas de chocolate preto e morangos.'),
(22, 'Brigadeiro ', 'https://www.receiteria.com.br/wp-content/uploads/pizza-de-brigadeiro-de-doce-de-leite-com-chocolate-730x791.jpg', 'Chocolate granulado, brigadeiro e doce de leite.\r\n'),
(23, 'Prestígio', 'https://blog.novasafra.com.br/wp-content/uploads/2018/04/pp-780x450.jpg\r\n', '\r\nBrigadeiro, chocolate, coco ralado e cereja.'),
(24, 'Chocolate com marshmalllow', 'https://s2.glbimg.com/0WQkB1BelZsunNMHgOTK4pWONJ0=/620x455/e.glbimg.com/og/ed/f/original/2022/07/13/receita-pizza-doce-marshmallow-calda-caramelo-ganache-chocolate-crocante-castanha-caju-giaco-pizzaria.jpeg.jpg', 'Chocolate derretido, marshmallow e ganache de morango.'),
(25, 'Doce de leite', 'https://receitasapetitosas.com/wp-content/uploads/2022/05/Pizza-de-Doce-de-Leite-vem-ver-amo-fazer-em-casa-faz-agora-1.png', 'Doce de leite e chocolate derretido.');

-
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `pizza`
--
ALTER TABLE `pizza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
