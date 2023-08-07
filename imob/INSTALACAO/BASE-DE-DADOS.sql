-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 02-Out-2020 às 18:46
-- Versão do servidor: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imob20`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int(11) NOT NULL,
  `categoria_title` varchar(200) DEFAULT NULL,
  `categoria_url` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `categoria_title`, `categoria_url`) VALUES
(12, 'São Paulo', 'sao-paulo'),
(13, 'Barueri', 'barueri'),
(14, 'Osasco', 'osasco');

-- --------------------------------------------------------

--
-- Estrutura da tabela `chatoperator`
--

CREATE TABLE `chatoperator` (
  `operatorid` int(11) NOT NULL,
  `vclogin` varchar(64) NOT NULL,
  `vcpassword` varchar(64) NOT NULL,
  `vclocalename` varchar(64) NOT NULL,
  `vccommonname` varchar(64) NOT NULL,
  `vcemail` varchar(64) DEFAULT NULL,
  `dtmlastvisited` datetime DEFAULT '0000-00-00 00:00:00',
  `istatus` int(11) DEFAULT '0',
  `vcavatar` varchar(255) DEFAULT NULL,
  `vcjabbername` varchar(255) DEFAULT NULL,
  `iperm` int(11) DEFAULT '65535',
  `dtmrestore` datetime DEFAULT '0000-00-00 00:00:00',
  `vcrestoretoken` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `chatoperator`
--

INSERT INTO `chatoperator` (`operatorid`, `vclogin`, `vcpassword`, `vclocalename`, `vccommonname`, `vcemail`, `dtmlastvisited`, `istatus`, `vcavatar`, `vcjabbername`, `iperm`, `dtmrestore`, `vcrestoretoken`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'Admin', 'info@magnistrade.com', '2015-03-16 18:37:02', 0, '', '', 65535, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cliente_id` int(11) NOT NULL,
  `cliente_nome` varchar(200) DEFAULT NULL,
  `cliente_creci` varchar(20) DEFAULT NULL,
  `cliente_telefone3` varchar(20) DEFAULT NULL,
  `cliente_rua` varchar(300) DEFAULT NULL,
  `cliente_uf` varchar(2) DEFAULT NULL,
  `cliente_num` varchar(20) DEFAULT NULL,
  `cliente_complemento` varchar(2000) DEFAULT NULL,
  `cliente_cidade` varchar(200) DEFAULT NULL,
  `cliente_bairro` varchar(200) DEFAULT NULL,
  `cliente_cep` varchar(20) DEFAULT NULL,
  `cliente_telefone1` varchar(20) DEFAULT NULL,
  `cliente_telefone2` varchar(20) DEFAULT NULL,
  `cliente_lat` varchar(40) NOT NULL,
  `cliente_lon` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cliente_id`, `cliente_nome`, `cliente_creci`, `cliente_telefone3`, `cliente_rua`, `cliente_uf`, `cliente_num`, `cliente_complemento`, `cliente_cidade`, `cliente_bairro`, `cliente_cep`, `cliente_telefone1`, `cliente_telefone2`, `cliente_lat`, `cliente_lon`) VALUES
(1, 'Imobiliaria', '11.111', '11987654321', 'Av. Paulista', 'SP', '300', '3 Andar', 'São Paulo', 'Cerqueira Cesar', '05438-300', '(11) 4004-0000', '(11) 4004-0000', '-23.5445118', '-46.6847155');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `config_site_title` varchar(500) DEFAULT NULL,
  `config_site_description` text,
  `config_site_keywords` text,
  `config_site_about` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `config`
--

INSERT INTO `config` (`config_id`, `config_site_title`, `config_site_description`, `config_site_keywords`, `config_site_about`) VALUES
(1, 'Imobiliária Modelo', 'Encontre seu imóvel aqui.', 'imóveis, imobiliária, apartamentos, casas, sobrados, terrenos, fazendas', '<p style="text-align: justify;"></p>\r\n<br>\r\n<p>Nosso principal objetivo é a satisfação do cliente, atendendo com perfeição às suas necessidades.Possuímos uma equipe treinada e atualizada, proporcionando o mais alto nível de eficiência técnica.</p>\r\n\r\n<p>O principal diferencial da imobiliária está em sua visão empresarial, adquirida no mundo corporativo que foi transferida e implementada à empresa, para que além do “know how” técnico possa ser garantida uma gestão profissional, dinâmica, moderna e com foco no desejo do cliente.</p>\r\n\r\n<p>Utilizamos as mais modernas ferramentas disponíveis no mercado para controle de banco de dados de imóveis, proprietários, vendedores, compradores, fiadores, bem como geração de relatórios financeiros, gerenciais, análises de risco, dentre outros.</p>\r\n\r\n<p>Com uma postura inovadora acredita numa parceria sólida, com uma visão de médio e longo prazo, formando a base para um relacionamento cujos benefícios sejam mútuos. Para isso vem por meio desta oferecer um serviço de assessoria imobiliária embasada numa inovadora assessoria periódica que visa um atendimento pleno e completo de suas necessidades.<b><br>\r\n\r\n</b></p>\r\n\r\n<p><b><br>\r\n\r\n</b></p>\r\n\r\n<span style=" text-align: start;"></span>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dono`
--

CREATE TABLE `dono` (
  `dono_id` int(11) NOT NULL,
  `dono_nome` varchar(200) DEFAULT NULL,
  `dono_creci` varchar(20) DEFAULT NULL,
  `dono_telefone3` varchar(20) DEFAULT NULL,
  `dono_rua` varchar(300) DEFAULT NULL,
  `dono_uf` varchar(2) DEFAULT NULL,
  `dono_num` varchar(20) DEFAULT NULL,
  `dono_complemento` varchar(2000) DEFAULT NULL,
  `dono_cidade` varchar(200) DEFAULT NULL,
  `dono_bairro` varchar(200) DEFAULT NULL,
  `dono_cep` varchar(20) DEFAULT NULL,
  `dono_telefone1` varchar(20) DEFAULT NULL,
  `dono_telefone2` varchar(20) DEFAULT NULL,
  `dono_email` varchar(200) DEFAULT NULL,
  `dono_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dono`
--

INSERT INTO `dono` (`dono_id`, `dono_nome`, `dono_creci`, `dono_telefone3`, `dono_rua`, `dono_uf`, `dono_num`, `dono_complemento`, `dono_cidade`, `dono_bairro`, `dono_cep`, `dono_telefone1`, `dono_telefone2`, `dono_email`, `dono_user`) VALUES
(1, 'Imobiliária Modelo', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0),
(4, 'Alberto Pereira', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(12) 99222-3311', '', 'albertopereira@albertopereira.com', 1),
(5, 'Lucas', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12 997274876', '', 'teste@teste.com', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `foto`
--

CREATE TABLE `foto` (
  `foto_id` int(11) NOT NULL,
  `foto_title` varchar(200) DEFAULT NULL,
  `foto_url` varchar(200) DEFAULT NULL,
  `foto_pos` int(11) DEFAULT '0',
  `foto_item` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `foto`
--

INSERT INTO `foto` (`foto_id`, `foto_title`, `foto_url`, `foto_pos`, `foto_item`) VALUES
(240, NULL, 'e5d2dcc146d99a3e6bb171ed6605b1dd.jpg', 1, 12),
(241, NULL, '96f770591cb6df90b2ec03540e8548ed.jpg', 2, 12),
(242, NULL, 'ff5e45cfefff967d57f8713ade9947c9.jpg', 3, 12),
(243, NULL, '15189498c920460ea08f3c43d999f9d8.jpg', 1, 13),
(244, NULL, 'eaec9c5a25ed1bb5b6369c32d291786d.jpg', 2, 13),
(245, NULL, '16e1ccb8cbacf107553dffc627fb4b7e.jpg', 3, 13),
(246, NULL, '957352453560c9a11e8951d016fe5df8.jpg', 4, 13),
(247, NULL, '9a77e7011f800fcfa5fa8d716c7fd69c.jpg', 1, 14),
(259, NULL, '2e87e19b0d0f211a47cadcf1f7f05bfc.jpg', 0, 20),
(260, NULL, '78361a82180c0ec60358c888a1f1ef10.jpg', 0, 19),
(261, NULL, 'ab81603d664a5d7ade74a5a882770a72.jpg', 0, 18),
(262, NULL, '1bfcd0c704f0f12c56da78aafa4d8c3f.jpg', 0, 17),
(263, NULL, '727aa5864a9b8e176c52bd10d5590caf.jpg', 0, 16),
(264, NULL, '07d8ac2ccefa05297db24ab7c38415ea.jpg', 0, 15),
(265, NULL, 'ffc1bc5452fb4d5744a9890b720c45d3.jpg', 0, 14),
(266, NULL, '28ff1d74c904c5110ef99c8a6a088802.jpg', 0, 13),
(267, NULL, '35eb4fe1c07b4b18bbeed28adf8cf9c2.jpg', 0, 12),
(268, NULL, 'a5ab00f4ea55d3f1827992735eb07700.jpg', 0, 11),
(269, NULL, 'b43fd129798461fc57a83924079b6315.jpg', 0, 10),
(270, NULL, '77e8f57fcd1f318acacf16d1de7a8143.jpg', 0, 21),
(271, NULL, '0972ff543100bdb2c02e9c65dbb74c4d.jpg', 0, 22),
(272, NULL, '8062da2a3fa82171e4646c7e61f114d4.jpg', 0, 22);

-- --------------------------------------------------------

--
-- Estrutura da tabela `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_ref` varchar(200) DEFAULT NULL,
  `item_desc` text,
  `item_sub` int(11) DEFAULT NULL,
  `item_preco` double DEFAULT NULL,
  `item_url` varchar(300) DEFAULT NULL,
  `item_show` int(11) DEFAULT '0' COMMENT '1 = sim',
  `item_vendido` varchar(100) DEFAULT '0' COMMENT '1 = vendido\r\n2 = alugado',
  `item_views` int(11) DEFAULT '0',
  `item_categoria` int(11) DEFAULT NULL,
  `item_area` int(11) DEFAULT '0',
  `item_dorm` int(11) DEFAULT '0',
  `item_wc` int(11) DEFAULT '1',
  `item_suite` int(11) DEFAULT '0',
  `item_vaga` int(11) DEFAULT '0',
  `item_finalidade` int(11) DEFAULT '1' COMMENT '1 = venda\r\n2 = locacao\r\n3 = ambos',
  `item_tipo` int(11) DEFAULT '1' COMMENT '1 = casas',
  `item_destaque` int(11) DEFAULT '0' COMMENT '1 = sim',
  `item_destaque_pos` int(11) DEFAULT '0',
  `item_slide` int(11) DEFAULT '0' COMMENT '1 = sim',
  `item_preco_locacao` double DEFAULT NULL,
  `item_busca` varchar(500) DEFAULT NULL,
  `item_preco_condominio` double DEFAULT '0',
  `item_preco_iptu` double DEFAULT '0',
  `item_endereco` varchar(300) DEFAULT NULL,
  `item_mapa` int(11) DEFAULT NULL COMMENT '2 sim',
  `item_dono` int(11) DEFAULT '0',
  `item_user` int(11) DEFAULT '1',
  `item_pos` int(11) NOT NULL DEFAULT '0',
  `item_preco_temp` double(10,2) NOT NULL,
  `item_lat` varchar(40) NOT NULL,
  `item_lon` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `item`
--

INSERT INTO `item` (`item_id`, `item_ref`, `item_desc`, `item_sub`, `item_preco`, `item_url`, `item_show`, `item_vendido`, `item_views`, `item_categoria`, `item_area`, `item_dorm`, `item_wc`, `item_suite`, `item_vaga`, `item_finalidade`, `item_tipo`, `item_destaque`, `item_destaque_pos`, `item_slide`, `item_preco_locacao`, `item_busca`, `item_preco_condominio`, `item_preco_iptu`, `item_endereco`, `item_mapa`, `item_dono`, `item_user`, `item_pos`, `item_preco_temp`, `item_lat`, `item_lon`) VALUES
(10, 'CS4411', '', 52, 600000, NULL, 1, '11', 12, 12, 600, 4, 4, 2, 5, 1, 16, 1, 0, 1, 0, 'Casa Condomínio São Paulo Vila Madalena', 700, 5000, 'Rua Heitor Penteado, 800', 2, 1, 1, 0, 0.00, '-23.5476509', '-46.686529'),
(11, 'CS4412', '', 55, 0, NULL, 1, '8', 7, 12, 800, 5, 3, 3, 4, 2, 9, 1, 0, 1, 19000, 'Casa São Paulo Higienópolis', 0, 6000, 'Rua Bela Cintra, 1223', 1, 0, 1, 8, 0.00, '-23.5573512', '-46.6628306'),
(12, 'AP0001', '', 54, 0, NULL, 1, '10', 20, 12, 900, 2, 1, 1, 1, 2, 8, 1, 0, 1, 25000, 'Apartamento São Paulo Jardins', 3500, 18000, 'Rua Estados Unidos, 900', 2, 1, 1, 3, 0.00, '-23.5704451', '-46.6643089'),
(13, 'AP8000', '', 53, 1400000, NULL, 1, '4', 26, 12, 450, 4, 3, 2, 2, 1, 8, 1, 0, 1, 0, 'Apartamento São Paulo Sumaré', 670, 11000, 'Rua Heitor Penteado, 1000', 2, 1, 1, 1, 0.00, '-23.5475399', '-46.6881589'),
(14, 'AP0010', '', 52, 0, NULL, 1, '6', 13, 12, 180, 3, 2, 1, 1, 2, 8, 1, 0, 1, 4900, 'Apartamento São Paulo Vila Madalena', 800, 7000, 'Rua Purpurina, 100', 2, 1, 1, 4, 0.00, '-23.5528739', '-46.6894764'),
(15, 'AP0011', '', 54, 2000000, NULL, 1, '0', 4, 12, 370, 4, 4, 3, 4, 3, 8, 1, 0, 0, 25000, 'Apartamento São Paulo Jardins', 3700, 33000, 'Alameda Santos, 400', 1, 1, 1, 2, 0.00, '-23.569917', '-46.6483382'),
(16, 'A3FFG', '', 55, 7000000, NULL, 1, '1', 10, 12, 900, 6, 8, 6, 12, 1, 9, 1, 0, 1, 0, 'Casa São Paulo Higienópolis', 0, 50000, 'Rua Teodoro Sampaio', 2, 1, 1, 7, 0.00, '-23.5652163', '-46.690234'),
(17, 'CS4412', '', 52, 1600000, NULL, 1, '0', 12, 12, 400, 3, 4, 3, 4, 1, 9, 1, 0, 0, 0, 'Casa São Paulo Vila Madalena', 0, 5000, 'Rua Harmonia, 400', 1, 1, 1, 6, 0.00, '-23.5546086', '-46.6884413'),
(18, 'CS4415', '', 53, 2000000, NULL, 1, '8', 2, 12, 9999, 4, 5, 3, 6, 1, 9, 1, 0, 0, 0, 'Casa São Paulo Sumaré', 0, 0, 'Rua Heitor Penteado, 200', 1, 4, 1, 5, 0.00, '-23.5495226', '-46.6801676'),
(19, 'APA0019', '<p>teste</p>', 54, 1233.33, NULL, 1, '8', 1, 12, 123, 1, 1, 1, 1, 1, 8, 1, 0, 1, 0, 'Apartamento São Paulo Jardins', 0, 0, 'Rua Augusta, 1020', 1, 5, 2, 0, 0.00, '', ''),
(20, 'APA0020', '<p>teste</p>', 54, 1232132.23, NULL, 1, '0', 5, 12, 123, 1, 1, 1, 1, 1, 8, 1, 0, 0, 12312321323.12, 'Apartamento São Paulo Jardins', 12331231232.13, 1231231231.23, 'Rua Augusta, 1020', 1, 1, 2, 0, 0.00, '', ''),
(21, 'CAS0021', '', 54, 12323233.33, NULL, 1, '0', 0, 12, 23123, 1, 1, 1, 1, 1, 9, 1, 0, 0, 0, 'Casa São Paulo Jardins', 0, 0, 'Rua Oscar Freire', 2, 1, 2, 0, 0.00, '', ''),
(22, 'CAS0022', '<p>teste</p>', 53, 1223.23, NULL, 1, '0', 0, 12, 1233, 1, 1, 1, 1, 1, 9, 1, 0, 0, 0, 'Casa São Paulo Sumaré', 0, 0, 'Rua Heitor Penteado, 1000', 1, 1, 2, 0, 0.00, '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `smtp`
--

CREATE TABLE `smtp` (
  `smtp_id` int(11) NOT NULL,
  `smtp_host` varchar(200) DEFAULT NULL,
  `smtp_username` varchar(100) DEFAULT NULL,
  `smtp_password` varchar(100) DEFAULT NULL,
  `smtp_fromname` varchar(200) DEFAULT NULL,
  `smtp_bcc` varchar(100) DEFAULT NULL,
  `smtp_replyto` varchar(100) DEFAULT NULL,
  `smtp_port` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `smtp`
--

INSERT INTO `smtp` (`smtp_id`, `smtp_host`, `smtp_username`, `smtp_password`, `smtp_fromname`, `smtp_bcc`, `smtp_replyto`, `smtp_port`) VALUES
(1, 'mail.seusite.com', 'email@seusite.com', 'senha', 'Imobiliária Modelo', 'dono@seusite.com', '', 587);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sub`
--

CREATE TABLE `sub` (
  `sub_id` int(11) NOT NULL,
  `sub_title` varchar(200) DEFAULT NULL,
  `sub_url` varchar(200) DEFAULT NULL,
  `sub_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sub`
--

INSERT INTO `sub` (`sub_id`, `sub_title`, `sub_url`, `sub_categoria`) VALUES
(52, 'Vila Madalena', 'vila-madalena', 12),
(53, 'Sumaré', 'sumare', 12),
(54, 'Jardins', 'jardins', 12),
(55, 'Higienópolis', 'higienopolis', 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo`
--

CREATE TABLE `tipo` (
  `tipo_id` int(11) NOT NULL,
  `tipo_title` varchar(100) DEFAULT NULL,
  `tipo_url` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipo`
--

INSERT INTO `tipo` (`tipo_id`, `tipo_title`, `tipo_url`) VALUES
(1, 'Galpão', 'galpao'),
(2, 'Terreno', 'terreno'),
(3, 'Sobrado', 'sobrado'),
(4, 'Sala Comercial', 'sala-comercial'),
(5, 'Chácara', 'chacara'),
(6, 'Sítio', 'sitio'),
(7, 'Fazenda', 'fazenda'),
(8, 'Apartamento', 'apartamento'),
(9, 'Casa', 'casa'),
(10, 'Comercial', 'comercial'),
(11, 'Lote', 'lote'),
(13, 'Área', 'area'),
(14, 'Lançamento', 'lancamento'),
(15, 'Casa e Comercio', 'casa-salao-comercial'),
(16, 'Casa Condomínio', 'casa-em-condominio'),
(17, 'Flat', 'flat'),
(18, 'Loja', 'loja'),
(19, 'Indústria', 'industria'),
(20, 'Hotel', 'hotel'),
(21, 'Prédio', 'predio'),
(22, 'Ilha', 'ilha'),
(23, 'Prontos para Morar', 'prontos-para-morar'),
(24, 'Breves Lançamentos', 'breves-lancamentos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_login` varchar(20) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_name` varchar(200) DEFAULT NULL,
  `user_level` int(11) DEFAULT '2' COMMENT '2 = corretor',
  `user_fone1` varchar(20) DEFAULT NULL,
  `user_fone2` varchar(20) DEFAULT NULL,
  `user_creci` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`user_id`, `user_login`, `user_password`, `user_email`, `user_name`, `user_level`, `user_fone1`, `user_fone2`, `user_creci`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'info@magnistrade.com', 'Admin', 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indexes for table `chatoperator`
--
ALTER TABLE `chatoperator`
  ADD PRIMARY KEY (`operatorid`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Indexes for table `dono`
--
ALTER TABLE `dono`
  ADD PRIMARY KEY (`dono_id`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`foto_id`),
  ADD KEY `fk_foto_item` (`foto_item`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `fk_item_sub` (`item_sub`),
  ADD KEY `fk_item_tipo` (`item_tipo`);

--
-- Indexes for table `smtp`
--
ALTER TABLE `smtp`
  ADD PRIMARY KEY (`smtp_id`);

--
-- Indexes for table `sub`
--
ALTER TABLE `sub`
  ADD PRIMARY KEY (`sub_id`),
  ADD KEY `fk_sub_categoria` (`sub_categoria`);

--
-- Indexes for table `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`tipo_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `categoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `chatoperator`
--
ALTER TABLE `chatoperator`
  MODIFY `operatorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cliente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dono`
--
ALTER TABLE `dono`
  MODIFY `dono_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `foto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `smtp`
--
ALTER TABLE `smtp`
  MODIFY `smtp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sub`
--
ALTER TABLE `sub`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `tipo`
--
ALTER TABLE `tipo`
  MODIFY `tipo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `fk_foto_item` FOREIGN KEY (`foto_item`) REFERENCES `item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `fk_item_sub` FOREIGN KEY (`item_sub`) REFERENCES `sub` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_item_tipo` FOREIGN KEY (`item_tipo`) REFERENCES `tipo` (`tipo_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `sub`
--
ALTER TABLE `sub`
  ADD CONSTRAINT `fk_sub_categoria` FOREIGN KEY (`sub_categoria`) REFERENCES `categoria` (`categoria_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
