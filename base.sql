

-- estrutura do banco de dados para teste_
CREATE DATABASE IF NOT EXISTS `teste_`;
USE `teste_`;

-- estrutura para tabela teste_.ator
CREATE TABLE IF NOT EXISTS `ator` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_filme` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- dados para a tabela teste_.ator;
INSERT INTO `ator` (`id`, `id_filme`, `nome`) VALUES
	(1, 1, 'Marlon Brando'),
	(3, 1, 'Al Pacino'),
	(4, 1, 'James Caan'),
	(5, 3, 'Tom Hanks'),
	(6, 3, 'Michael Clarke Duncan'),
	(7, 3, 'David Morse'),
	(8, 4, 'Tom Hanks'),
	(9, 4, 'Gary Sinise'),
	(10, 4, 'Robin Wright'),
	(11, 5, 'Robert Downey Jr.'),
	(12, 5, 'Chris Hemsworth'),
	(13, 5, 'Mark Ruffalo'),
	(14, 6, 'Isaac Bardavid'),
	(15, 6, 'Christian Bale'),
	(16, 6, 'Heath Ledger'),
	(17, 7, 'Tom Hanks'),
	(18, 7, 'Mark Rylance'),
	(19, 7, 'Scott Shepherd (II)');
;

--  estrutura para tabela teste_.avaliacao
CREATE TABLE IF NOT EXISTS `avaliacao` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_filme` int(11) DEFAULT NULL,
  `nota` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--  dados para a tabela teste_.avaliacao

INSERT INTO `avaliacao` (`id`, `id_filme`, `nota`) VALUES
	(1, 1, 4),
	(2, 3, 3),
	(3, 4, 4),
	(4, 5, 3),
	(5, 6, 5),
	(6, 7, 4);
;

--  estrutura para tabela teste_.diretor
CREATE TABLE IF NOT EXISTS `diretor` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_filme` int(11) DEFAULT NULL,
  `nome` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--  dados para a tabela teste_.diretor

INSERT INTO `diretor` (`id`, `id_filme`, `nome`) VALUES
	(1, 1, 'Francis Ford Coppola'),
	(2, 3, 'Frank Darabont'),
	(3, 4, 'Robert Zemeckis'),
	(4, 5, 'Joe Russo, Anthony Russo'),
	(5, 6, 'Christopher Nolan'),
	(6, 7, 'Steven Spielberg');
;

-- estrutura para tabela teste_.filme
CREATE TABLE IF NOT EXISTS `filme` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nome` text DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- dados para a tabela teste_.filme

INSERT INTO `filme` (`id`, `nome`, `ano`) VALUES
	(1, 'O Poderoso Chefão', 1972),
	(3, 'À Espera de um Milagre', 2000),
	(4, 'Forrest Gump - O Contador de Histórias', 1994),
	(5, 'Vingadores: Guerra Infinita', 2018),
	(6, 'Batman - O Cavaleiro Das Trevas', 2008),
	(7, 'Ponte dos Espiões', 2015);
;

