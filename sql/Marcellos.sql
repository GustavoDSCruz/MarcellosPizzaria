-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Nov-2022 às 01:10
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

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
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bebidas`
--

CREATE TABLE `bebidas` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `imagem` text NOT NULL,
  `descricao` text NOT NULL,
  `preco` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `bebidas`
--

INSERT INTO `bebidas` (`id`, `nome`, `imagem`, `descricao`, `preco`) VALUES
(1, 'Refrigerante Coca-Cola 1L', 'https://www.clubeextra.com.br/img/uploads/1/844/19796844.jpg', 'Refrigerante de 1 L.', 12),
(2, 'Refrigerante Coca-Cola 2L', 'https://cf.shopee.com.br/file/b2e2b86c42abc1708e0e29445e51f11d', 'Refrigerante de 2 L.', 15),
(3, 'Refrigerante Coca-Cola Zero Açúcar 1L', 'https://www.paodeacucar.com/img/uploads/1/156/22392156.jpg', 'Refrigerante de 1 L.',  12),
(4, 'Refrigerante Coca-Cola Zero Açúcar 2L', 'https://redemachado.com.br/arquivos/262910.jpg', 'Refrigerante de 2 L.', 15),
(5, 'Água 500ml', 'https://static.clubeextra.com.br/img/uploads/1/867/19725867.jpg', 'Água mineral 500 ML.', 4),
(6, 'Refrigerante Guaraná 1L', 'https://deskontao.agilecdn.com.br/3323_1.jpg', 'Refrigerante de 1 L.', 12),
(7, 'Refrigerante Guaraná 2L', 'https://cdn.b4c.inf.br/storage/acouguebg/original/refrigerante-antarctica-guarana-2-l16231722390.jpg', 'Refrigerante de 2 L.',  15),
(8, 'Refrigerante Guaraná Zero Açúcar 1L', 'https://img.sitemercado.com.br/produtos/d7447adaf2e2ac5aead9fa0fb12a4fc2650702459ff859be4513e14784e4fe70_full.jpg', 'Refrigerante de  1 L.',  12),
(9, 'Refrigerante Guaraná Zero Açúcar 2L', 'http://padariavianney.com.br/web/image/product.template/3230/image_1024?unique=7166dac', 'Refrigerante de 2 L.', 15),
(10, 'Refrigerante Pepsi 1L', 'https://carrefourbr.vtexassets.com/arquivos/ids/58555427/refrigerante-pepsi-garrafa-1l-1.jpg?v=637898769399730000', 'Refrigerante de 1 L.',  12),
(11, 'Refrigerante Pepsi 2L', 'https://a-static.mlcdn.com.br/1500x1500/refrigerante-pepsi-2-litros/barbaridadedistribuidora/b7b909cce02c11eb95734201ac18500e/09bd4a2bf8d90cc0a456634971a9c843.jpeg', 'Refrigerante de 2 L.',  15),
(12, 'Refrigerante Pepsi Zero Açúcar 2L', 'https://static.clubeextra.com.br/img/uploads/1/248/12906248.jpg', 'Refrigerante de 2 L.\r\n',  15),
(13, 'Refrigerante Pepsi Twist 2L', 'https://static.paodeacucar.com/img/uploads/1/511/19058511.jpg', 'Refrigerante de 2 L.', 15);

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
  `endereco` text NOT NULL,
  `complemento` text NOT NULL,
  `id_pizza` int(11) NOT NULL,
  `preco` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pizza`
--

CREATE TABLE `pizza` (
  `id` int(11) NOT NULL,
  `codsabor1` int(4) NOT NULL,
  `codsabor2` int(4) NOT NULL,
  `preco` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `saborpizza`
--

CREATE TABLE `saborpizza` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `imagem` text NOT NULL,
  `descricao` text NOT NULL,
  `preco` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `saborpizza`
--

INSERT INTO `saborpizza` (`id`, `nome`, `imagem`, `descricao`, `preco`) VALUES
(1, 'Pizza de Calabresa', 'https://www.sabornamesa.com.br/media/k2/items/cache/513d7a0ab11e38f7bd117d760146fed3_L.jpg', 'Pizza de mussarela, calabresa, azeitonas e cebola.', 28),
(2, 'Pizza de Quatro Queijos', 'https://www.receiteria.com.br/wp-content/uploads/receitas-de-pizza-quatro-queijos-00.jpg', 'Pizza de mussarela, parmesão, gorgonzola e provolone.', 28),
(3, 'Pizza de Brócolis', 'https://revistasaboresdosul.com.br/wp-content/uploads/2017/07/PIZZA-DE-BROCOLIS-Livro-de-Receitas-Mesa-Brasil-Sesc-1.jpg', 'Pizza de mussarela ralada, brócolis, orégano e pimenta-do-reino. ', 25),
(4, 'Pizza de Marguerita', 'https://assets.delirec.com/images%2F2re4OZn8tAVcJujtmBcNRFL69Kx1%2Frecipe%2Fd9085d9b-d86c-4586-b5ac-6f0955c90db9-Pizza-marguerita--gallery-0', 'Pizza de mussarela, tomate e manjericão.', 25),
(5, 'Pizza sabor Portuguesa ', 'https://www.clonepizza.com.br/wp-content/uploads/PORTUGUESA-1.jpg', 'Pizza de mussarela, presunto, palmito, ervilha, lombo canadense fatiado, provolone ralado e ovo.', 28),
(6, 'Pizza de Atum', 'http://www.saboresajinomoto.com.br/uploads/images/recipes/pizza-de-atum-e-mussarela.jpg', 'Pizza de parmesão ralado, atum e alho poró refogado.', ' 27,00'),
(7, 'Pizza sabor A Moda do Chef', 'https://gestaoderestaurantes.com.br/blog/wp-content/uploads/2019/11/19-11-2019-A.jpg', 'Pizza de calabresa moída, palmito,azeitonas verdes picadas, mussarela, requeijão, manjericão e parmesão.', 28),
(8, 'Pizza sabor pepperoni', 'https://pizzariadesucesso.com/wp-content/uploads/2018/05/pepperoni-pizza.jpg', 'Pizza de queijo, oregano e pepperoni.', ' 28,00'),
(9, 'Napolitana', 'https://www.receiteria.com.br/wp-content/uploads/receitas-de-pizza-napolitana.jpg', 'Pizza de queijo, tomate, orégano e parmesão ralado.', ' 25,00'),
(10, 'Presunto', 'https://static.wixstatic.com/media/0eb618_ea75ae18e7c2456f9bf87587f59dfd4b~mv2.jpeg/v1/fill/w_1420,h_900,al_c,q_85/0eb618_ea75ae18e7c2456f9bf87587f59dfd4b~mv2.jpeg', 'Queijo, orégano e presunto.', 25),
(11, 'Pizza de mussarela', 'https://caldobom.com.br/uploads/2017/07/pizza-mussarela.jpg', 'Pizza de queijo mussarela e orégano.', ' 23,00'),
(12, 'Pizza de Frango', 'http://www.saboresajinomoto.com.br/uploads/images/recipes/pizza-de-frango-1.jpg', 'Pizza de frango desfiado, queijo, cebola, orégano e requeijão.', ' 25,00'),
(13, 'Pizza de Ovo com Bacon', 'https://www.mundodomarketing.com.br/assets/img/lancamentos/imagem/4d2922063f2e742115122b3ed66ee14b.jpg', 'Queijo, bacon, cebola, cream cheese, orégano e ovo de codorna.', 30),
(14, 'Pizza Mexicana', 'https://cdn.accon.app/165461120410320838173016615924-1080p.jpg', 'Pizza de queijo gorgonzola, pepperoni ralado, cebola, lascas de pimenta dedo de moça e alho frito dourado.', 27),
(15, 'Pizza Vegetariana', 'https://blog.mariafilo.com.br/wp-content/uploads/2020/07/post_pizza_vegetariana_2.jpg', 'Pizza com brócolis, palmito, champignon, alho poró refogado e parmesão.', 26),
(16, 'Pizza de Palmito', 'https://www.lafamiglias.com.br/images/pizza/pizza-palmito.jpg', 'Pizza com lascas de Palmito, Muçarela e Azeitonas.', ' 26,00'),
(17, 'Pizza sabor Milho com Catupiry ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStsYNURHLDV4sRWBCkhCRA2Z8weNN5zPTJ8g&usqp=CAU', 'Pizza com queijo, milho e catupiry.', 26),
(18, 'Pizza de Peperoni com Catupiry', 'https://forneriaoriginal.com/wp-content/uploads/2020/04/27_catuperoni1.jpg', 'Queijo, pepperoni, requeijão, orégano e parmesão ralado.', 28),
(19, 'Pizza sabor Carne Seca', 'https://pizzariadesucesso.com/wp-content/uploads/2018/05/23d1dd13d707d7c9da6c435798e4179a-1.jpeg', 'Pizza de queijo,  carne seca magra, dessalgada, cozida e desfiada e cebola roxa picada.', 28),
(20, 'Pizza sabor Escarola com Mussarela.', 'https://boaforma.abril.com.br/wp-content/uploads/sites/2/2016/10/pizza-escarola-queijo_0.jpg', 'Pizza de queijo mussarela, escarola e cebola picada.', 27),
(21, 'Morango com Chocolate', 'https://i0.wp.com/xtudoreceitas.com/wp-content/uploads/Pizza-de-Chocolate-com-Morango.jpg?fit=650%2C450&ssl=1&resize=1280%2C720', 'Pizza com chocolate ao leite derretido, lascas de chocolate preto e morangos.', 33),
(22, 'Brigadeiro ', 'https://www.receiteria.com.br/wp-content/uploads/pizza-de-brigadeiro-de-doce-de-leite-com-chocolate-730x791.jpg', 'Chocolate granulado, brigadeiro e doce de leite.', 30),
(23, 'Prestígio', 'https://blog.novasafra.com.br/wp-content/uploads/2018/04/pp-780x450.jpg', 'Brigadeiro, chocolate, coco ralado e cereja.\r\n', ' 33,00'),
(24, 'Chocolate com marshmalllow', 'https://s2.glbimg.com/0WQkB1BelZsunNMHgOTK4pWONJ0=/620x455/e.glbimg.com/og/ed/f/original/2022/07/13/receita-pizza-doce-marshmallow-calda-caramelo-ganache-chocolate-crocante-castanha-caju-giaco-pizzaria.jpeg.jpg', 'Chocolate derretido, marshmallow e ganache de morango.', 33),
(25, 'Doce de leite', 'https://receitasapetitosas.com/wp-content/uploads/2022/05/Pizza-de-Doce-de-Leite-vem-ver-amo-fazer-em-casa-faz-agora-1.png', 'Doce de leite e chocolate derretido.', 30);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bebidas`
--
ALTER TABLE `bebidas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contato`
--
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
-- Índices para tabela `saborpizza`
--
ALTER TABLE `saborpizza`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bebidas`
--
ALTER TABLE `bebidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `pizza`
--
ALTER TABLE `pizza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `saborpizza`
--
ALTER TABLE `saborpizza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
