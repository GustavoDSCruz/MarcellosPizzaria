-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Nov-2022 às 10:38
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
(3, 'Refrigerante Coca-Cola Zero Açúcar 1L', 'https://www.paodeacucar.com/img/uploads/1/156/22392156.jpg', 'Refrigerante de 1 L.', 12),
(4, 'Refrigerante Coca-Cola Zero Açúcar 2L', 'https://redemachado.com.br/arquivos/262910.jpg', 'Refrigerante de 2 L.', 15),
(5, 'Água 500ml', 'https://static.clubeextra.com.br/img/uploads/1/867/19725867.jpg', 'Água mineral 500 ML.', 4),
(6, 'Refrigerante Guaraná 1L', 'https://deskontao.agilecdn.com.br/3323_1.jpg', 'Refrigerante de 1 L.', 12),
(7, 'Refrigerante Guaraná 2L', 'https://cdn.b4c.inf.br/storage/acouguebg/original/refrigerante-antarctica-guarana-2-l16231722390.jpg', 'Refrigerante de 2 L.', 15),
(8, 'Refrigerante Guaraná Zero Açúcar 1L', 'https://img.sitemercado.com.br/produtos/d7447adaf2e2ac5aead9fa0fb12a4fc2650702459ff859be4513e14784e4fe70_full.jpg', 'Refrigerante de  1 L.', 12),
(9, 'Refrigerante Guaraná Zero Açúcar 2L', 'http://padariavianney.com.br/web/image/product.template/3230/image_1024?unique=7166dac', 'Refrigerante de 2 L.', 15),
(10, 'Refrigerante Pepsi 1L', 'https://carrefourbr.vtexassets.com/arquivos/ids/58555427/refrigerante-pepsi-garrafa-1l-1.jpg?v=637898769399730000', 'Refrigerante de 1 L.', 12),
(11, 'Refrigerante Pepsi 2L', 'https://a-static.mlcdn.com.br/1500x1500/refrigerante-pepsi-2-litros/barbaridadedistribuidora/b7b909cce02c11eb95734201ac18500e/09bd4a2bf8d90cc0a456634971a9c843.jpeg', 'Refrigerante de 2 L.', 15),
(12, 'Refrigerante Pepsi Zero Açúcar 2L', 'https://static.clubeextra.com.br/img/uploads/1/248/12906248.jpg', 'Refrigerante de 2 L.\r\n', 15),
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
  `cpf` text NOT NULL,
  `complemento` text NOT NULL,
  `saborPizza1` int(11) NOT NULL,
  `saborPizza2` int(11) NOT NULL,
  `preco` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`id`, `nome`, `telefone`, `endereco`, `cpf`, `complemento`, `saborPizza1`, `saborPizza2`, `preco`) VALUES
(5, 'Gustavo Dias da Silva Cruz', '11981874352', 'dasdadasd', 'dsadada', 'adadad', 25, 25, 15),
(6, 'Gustavo Dias da Silva Cruz', '11981874352', 'dasdadasd', 'dsadada', 'adadad', 25, 25, 15),
(7, 'Gustavo Dias da Silva Cruz', '11981874352', 'dasdadasd', 'dsadada', 'adadad', 25, 25, 15);

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
(6, 'Pizza de Atum', 'http://www.saboresajinomoto.com.br/uploads/images/recipes/pizza-de-atum-e-mussarela.jpg', 'Pizza de parmesão ralado, atum e alho poró refogado.', 27),
(7, 'Pizza sabor A Moda do Chef', 'https://gestaoderestaurantes.com.br/blog/wp-content/uploads/2019/11/19-11-2019-A.jpg', 'Pizza de calabresa moída, palmito,azeitonas verdes picadas, mussarela, requeijão, manjericão e parmesão.', 28),
(8, 'Pizza sabor pepperoni', 'https://pizzariadesucesso.com/wp-content/uploads/2018/05/pepperoni-pizza.jpg', 'Pizza de queijo, oregano e pepperoni.', 28),
(9, 'Napolitana', 'https://www.receiteria.com.br/wp-content/uploads/receitas-de-pizza-napolitana.jpg', 'Pizza de queijo, tomate, orégano e parmesão ralado.', 25),
(10, 'Presunto', 'https://static.wixstatic.com/media/0eb618_ea75ae18e7c2456f9bf87587f59dfd4b~mv2.jpeg/v1/fill/w_1420,h_900,al_c,q_85/0eb618_ea75ae18e7c2456f9bf87587f59dfd4b~mv2.jpeg', 'Queijo, orégano e presunto.', 25),
(11, 'Pizza de mussarela', 'https://caldobom.com.br/uploads/2017/07/pizza-mussarela.jpg', 'Pizza de queijo mussarela e orégano.', 23),
(12, 'Pizza de Frango', 'http://www.saboresajinomoto.com.br/uploads/images/recipes/pizza-de-frango-1.jpg', 'Pizza de frango desfiado, queijo, cebola, orégano e requeijão.', 25),
(13, 'Pizza de Ovo com Bacon', 'https://www.mundodomarketing.com.br/assets/img/lancamentos/imagem/4d2922063f2e742115122b3ed66ee14b.jpg', 'Queijo, bacon, cebola, cream cheese, orégano e ovo de codorna.', 30),
(14, 'Pizza Mexicana', 'https://cdn.accon.app/165461120410320838173016615924-1080p.jpg', 'Pizza de queijo gorgonzola, pepperoni ralado, cebola, lascas de pimenta dedo de moça e alho frito dourado.', 27),
(15, 'Pizza Vegetariana', 'https://blog.mariafilo.com.br/wp-content/uploads/2020/07/post_pizza_vegetariana_2.jpg', 'Pizza com brócolis, palmito, champignon, alho poró refogado e parmesão.', 26),
(16, 'Pizza de Palmito', 'https://www.lafamiglias.com.br/images/pizza/pizza-palmito.jpg', 'Pizza com lascas de Palmito, Muçarela e Azeitonas.', 26),
(17, 'Pizza sabor Milho com Catupiry ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStsYNURHLDV4sRWBCkhCRA2Z8weNN5zPTJ8g&usqp=CAU', 'Pizza com queijo, milho e catupiry.', 26),
(18, 'Pizza de Peperoni com Catupiry', 'https://forneriaoriginal.com/wp-content/uploads/2020/04/27_catuperoni1.jpg', 'Queijo, pepperoni, requeijão, orégano e parmesão ralado.', 28),
(19, 'Pizza sabor Carne Seca', 'https://pizzariadesucesso.com/wp-content/uploads/2018/05/23d1dd13d707d7c9da6c435798e4179a-1.jpeg', 'Pizza de queijo,  carne seca magra, dessalgada, cozida e desfiada e cebola roxa picada.', 28),
(20, 'Pizza sabor Escarola com Mussarela.', 'https://boaforma.abril.com.br/wp-content/uploads/sites/2/2016/10/pizza-escarola-queijo_0.jpg', 'Pizza de queijo mussarela, escarola e cebola picada.', 27),
(21, 'Morango com Chocolate', 'https://i0.wp.com/xtudoreceitas.com/wp-content/uploads/Pizza-de-Chocolate-com-Morango.jpg?fit=650%2C450&ssl=1&resize=1280%2C720', 'Pizza com chocolate ao leite derretido, lascas de chocolate preto e morangos.', 33),
(22, 'Brigadeiro ', 'https://www.receiteria.com.br/wp-content/uploads/pizza-de-brigadeiro-de-doce-de-leite-com-chocolate-730x791.jpg', 'Chocolate granulado, brigadeiro e doce de leite.', 30),
(23, 'Prestígio', 'https://blog.novasafra.com.br/wp-content/uploads/2018/04/pp-780x450.jpg', 'Brigadeiro, chocolate, coco ralado e cereja.\r\n', 33),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Extraindo dados da tabela `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('rh', 2, 'bd_rh');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"marcellos\",\"table\":\"pedido\"},{\"db\":\"marcellos\",\"table\":\"contato\"},{\"db\":\"marcellos\",\"table\":\"pizza\"},{\"db\":\"escola\",\"table\":\"cursos\"},{\"db\":\"(marcellos)\",\"table\":\"pizza\"},{\"db\":\"marcellos\",\"table\":\"usuario\"},{\"db\":\"marcellos\",\"table\":\"cargo\"},{\"db\":\"marcellos\",\"table\":\"fornece\"},{\"db\":\"escola\",\"table\":\"alunos\"},{\"db\":\"escola\",\"table\":\"disciplinas\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- Extraindo dados da tabela `pma__relation`
--

INSERT INTO `pma__relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('marcellos', 'pedido', 'id_pizza', 'marcellos', 'pizza', 'id'),
('rh', 'dependentes', 'matricula', 'rh', 'funcionarios', 'Matricula'),
('rh', 'lotacao', 'cod_depto', 'rh', 'departamento', 'cod_depto'),
('rh', 'lotacao', 'matricula', 'rh', 'funcionarios', 'Matricula'),
('rh', 'ocupacao', 'cod_cargo', 'rh', 'cargos', 'Cod_Cargo'),
('rh', 'ocupacao', 'matricula', 'rh', 'funcionarios', 'Matricula');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Extraindo dados da tabela `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('rh', 'cargos', 2, 724, 269),
('rh', 'departamento', 2, 707, 101),
('rh', 'dependentes', 2, 435, 511),
('rh', 'funcionarios', 2, 46, 106),
('rh', 'lotacao', 2, 439, 94),
('rh', 'ocupacao', 2, 436, 267);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-11-21 00:05:12', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices para tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices para tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices para tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices para tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices para tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices para tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices para tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices para tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices para tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices para tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices para tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
