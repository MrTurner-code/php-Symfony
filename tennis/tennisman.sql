-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 13 Décembre 2018 à 15:42
-- Version du serveur: 5.5.59-0ubuntu0.14.04.1
-- Version de PHP: 5.5.9-1ubuntu4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bdd_algo`
--

-- --------------------------------------------------------

--
-- Structure de la table `tennisman`
--

CREATE TABLE IF NOT EXISTS `tennisman` (
  `id_tennisman` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(24) NOT NULL,
  `prenom` varchar(24) NOT NULL,
  `nationalite` varchar(24) DEFAULT NULL,
  `codepays` varchar(3) NOT NULL,
  `pointacquis` int(11) NOT NULL,
  `classement` int(11) NOT NULL,
  `nombretournoi` int(11) NOT NULL,
  PRIMARY KEY (`id_tennisman`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=201 ;

--
-- Contenu de la table `tennisman`
--

INSERT INTO `tennisman` (`id_tennisman`, `nom`, `prenom`, `nationalite`, `codepays`, `pointacquis`, `classement`, `nombretournoi`) VALUES
(1, 'Aguilar', 'Jorge', 'chili', 'CHI', 280, 33, 179),
(2, 'Almagro', 'Nicolas', 'espagne', 'ESP', 2195, 25, 16),
(3, 'Alund', 'Martin', 'argentine', 'ARG', 550, 28, 101),
(4, 'Alves', 'Thiago', 'bresil', 'BRA', 241, 23, 193),
(5, 'Anderson', 'Kevin', 'afrique-du-sud', 'RSA', 1510, 23, 23),
(6, 'Andreozzi', 'Guido', 'argentine', 'ARG', 362, 23, 146),
(7, 'Andujar', 'Pablo', 'espagne', 'ESP', 870, 32, 49),
(8, 'Arguello', 'Facundo', 'argentine', 'ARG', 319, 24, 164),
(9, 'Authom', 'Maxime', 'belgique', 'BEL', 274, 22, 183),
(10, 'Bachinger', 'Matthias', 'allemagne', 'GER', 420, 30, 131),
(11, 'Baghdatis', 'Marcos', 'chypre', 'CYP', 995, 24, 40),
(12, 'Bagnis', 'Facundo', 'argentine', 'ARG', 335, 24, 158),
(13, 'Baker', 'Brian', 'etats-unis', 'USA', 460, 18, 122),
(14, 'Bautista Agut', 'Roberto', 'espagne', 'ESP', 749, 24, 63),
(15, 'Beck', 'Karol', 'slovaquie', 'SVK', 289, 17, 176),
(16, 'Becker', 'Benjamin', 'allemagne', 'GER', 570, 32, 95),
(17, 'Bedene', 'Aljaz', 'slovenie', 'SLO', 575, 26, 92),
(18, 'Bellucci', 'Thomaz', 'bresil', 'BRA', 920, 27, 46),
(19, 'Bemelmans', 'Ruben', 'belgique', 'BEL', 378, 23, 141),
(20, 'Benneteau ', 'Julien', 'france', 'FRA', 1200, 27, 32),
(21, 'Berankis', 'Ricardas', 'lituanie', 'LTU', 711, 22, 69),
(22, 'Berdych', 'Tomas', 'republique-tcheque', 'CZE', 4515, 24, 6),
(23, 'Berlocq', 'Carlos', 'argentine', 'ARG', 690, 30, 72),
(24, 'Berrer', 'Michael', 'allemagne', 'GER', 342, 22, 154),
(25, 'Blake', 'James', 'etats-unis', 'USA', 571, 18, 93),
(26, 'Bogomolov Jr.', 'Alex', 'russie', 'RUS', 622, 30, 83),
(27, 'Bolelli', 'Simone', 'italie', 'ITA', 577, 21, 91),
(28, 'Brands', 'Daniel', 'allemagne', 'GER', 789, 23, 56),
(29, 'Brown', 'Dustin', 'allemagne', 'GER', 261, 20, 189),
(30, 'Brugues-Davi', 'Arnau', 'espagne', 'ESP', 242, 22, 192),
(31, 'Capdeville', 'Paul', 'chili', 'CHI', 338, 22, 155),
(32, 'Cervantes', 'Inigo', 'espagne', 'ESP', 231, 13, 199),
(33, 'Chardy ', 'J?r?my', 'france', 'FRA', 1416, 23, 27),
(34, 'Chen', 'Ti', 'chine', 'TPE', 225, 33, 205),
(35, 'Chiudinelli', 'Marco', 'suisse', 'SUI', 343, 21, 153),
(36, 'Cilic', 'Marin', 'croatie', 'CRO', 2470, 24, 12),
(37, 'Cipolla', 'Flavio', 'italie', 'ITA', 368, 26, 143),
(38, 'Copil', 'Marius', 'roumanie', 'ROU', 444, 24, 128),
(39, 'Darcis', 'Steve', 'belgique', 'BEL', 512, 23, 110),
(40, 'Dasnieres de Veigy ', 'Jonathan', 'france', 'FRA', 229, 19, 200),
(41, 'Davydenko', 'Nikolay', 'russie', 'RUS', 950, 27, 42),
(42, 'De Bakker', 'Thiemo', 'pays-bas', 'NED', 588, 27, 86),
(43, 'De Schepper ', 'Kenny', 'france', 'FRA', 623, 29, 82),
(44, 'De Voest', 'Rik', 'afrique-du-sud', 'RSA', 319, 24, 163),
(45, 'Del Potro', 'Juan-Martin', 'argentine', 'ARG', 3960, 23, 8),
(46, 'Desein', 'Niels', 'belgique', 'BEL', 233, 30, 198),
(47, 'Devvarman', 'Somdev', 'inde', 'IND', 379, 18, 140),
(48, 'Dimitrov', 'Grigor', 'bulgarie', 'BUL', 1330, 23, 31),
(49, 'Djokovic', 'Novak', 'serbie', 'SRB', 11830, 19, 1),
(50, 'Dodig', 'Ivan', 'croatie', 'CRO', 808, 27, 54),
(51, 'Dolgopolov', 'Alexandr', 'ukraine', 'UKR', 1500, 25, 24),
(52, 'Donskoy', 'Evgeny', 'russie', 'RUS', 684, 25, 73),
(53, 'Duckworth', 'James', 'australie', 'AUS', 308, 25, 169),
(54, 'Dutra Silva', 'Rogerio', 'bresil', 'BRA', 550, 28, 100),
(55, 'Ebden', 'Matthew', 'australie', 'AUS', 522, 26, 109),
(56, 'Elias', 'Gastao', 'portugal', 'POR', 461, 25, 121),
(57, 'Eysseric ', 'Jonathan', 'france', 'FRA', 227, 31, 202),
(58, 'Falla', 'Alejandro', 'colombie', 'COL', 676, 27, 75),
(59, 'Federer', 'Roger', 'suisse', 'SUI', 7740, 20, 3),
(60, 'Ferrer', 'David', 'espagne', 'ESP', 7220, 26, 4),
(61, 'Fish', 'Mardy', 'etats-unis', 'USA', 945, 17, 43),
(62, 'Fognini', 'Fabio', 'italie', 'ITA', 1345, 28, 30),
(63, 'Gabashvili', 'Teymuraz', 'russie', 'RUS', 404, 27, 134),
(64, 'Garcia-Lopez', 'Guillermo', 'espagne', 'ESP', 636, 27, 78),
(65, 'Gasquet ', 'Richard', 'france', 'FRA', 3135, 24, 9),
(66, 'Gicquel ', 'Marc', 'france', 'FRA', 415, 23, 132),
(67, 'Gimeno-Traver', 'Daniel', 'espagne', 'ESP', 807, 30, 55),
(68, 'Giraldo', 'Santiago', 'colombie', 'COL', 570, 26, 94),
(69, 'Goffin', 'David', 'belgique', 'BEL', 611, 29, 85),
(70, 'Gojowczyk', 'Peter', 'allemagne', 'GER', 301, 20, 171),
(71, 'Golubev', 'Andrey', 'kazakhstan', 'KAZ', 286, 21, 177),
(72, 'Granollers', 'Marcel', 'espagne', 'ESP', 975, 26, 41),
(73, 'Greul', 'Simon', 'allemagne', 'GER', 393, 22, 137),
(74, 'Guez ', 'David', 'france', 'FRA', 275, 27, 182),
(75, 'Gulbis', 'Ernests', 'lettonie', 'LAT', 1026, 21, 38),
(76, 'Haas', 'Tommy', 'allemagne', 'GER', 2425, 27, 13),
(77, 'Haase', 'Robin', 'pays-bas', 'NED', 787, 30, 57),
(78, 'Haider-Maurer', 'Andreas', 'autriche', 'AUT', 523, 27, 108),
(79, 'Hajek', 'Jan', 'republique-tcheque', 'CZE', 564, 28, 98),
(80, 'Hanescu', 'Victor', 'roumanie', 'ROU', 895, 25, 47),
(81, 'Harrison', 'Ryan', 'etats-unis', 'USA', 614, 26, 84),
(82, 'Hewitt', 'Lleyton', 'australie', 'AUS', 710, 19, 70),
(83, 'Huta Galung', 'Jesse', 'pays-bas', 'NED', 311, 22, 167),
(84, 'Ilhan', 'Marsel', 'turquie', 'TUR', 263, 27, 186),
(85, 'Isner', 'John', 'etats-unis', 'USA', 1735, 26, 21),
(86, 'Istomin', 'Denis', 'ouzbekistan', 'UZB', 935, 32, 45),
(87, 'Ito', 'Tatsuma', 'japon', 'JPN', 330, 26, 160),
(88, 'Janowicz', 'Jerzy', 'pologne', 'POL', 1549, 22, 22),
(89, 'Jaziri', 'Malek', 'tunisie', 'TUN', 298, 22, 172),
(90, 'Johnson', 'Steve', 'etats-unis', 'USA', 556, 25, 100),
(91, 'Kamke', 'Tobias', 'allemagne', 'GER', 721, 30, 68),
(92, 'Karlovic', 'Ivo', 'croatie', 'CRO', 365, 18, 145),
(93, 'Kavcic', 'Blaz', 'slovenie', 'SLO', 456, 31, 124),
(94, 'Klahn', 'Bradley', 'etats-unis', 'USA', 279, 23, 180),
(95, 'Klizan', 'Martin', 'slovaquie', 'SVK', 1090, 28, 35),
(96, 'Knittel', 'Bastian', 'allemagne', 'GER', 225, 25, 204),
(97, 'Kohlschreiber', 'Philipp', 'allemagne', 'GER', 1885, 26, 18),
(98, 'Korolev', 'Evgeny', 'russie', 'RUS', 296, 24, 173),
(99, 'Kravchuk', 'Konstantin', 'russie', 'RUS', 285, 27, 178),
(100, 'Kubot', 'Lukasz', 'pologne', 'POL', 469, 22, 119),
(101, 'Kudla', 'Denis', 'etats-unis', 'USA', 493, 23, 112),
(102, 'Kuznetsov', 'Alex', 'etats-unis', 'USA', 292, 23, 175),
(103, 'Kuznetsov', 'Andrey', 'russie', 'RUS', 649, 25, 77),
(104, 'Lacko', 'Lukas', 'slovaquie', 'SVK', 635, 26, 79),
(105, 'Lajovic', 'Dusan', 'serbie', 'SRB', 450, 25, 125),
(106, 'Levine', 'Jesse', 'canada', 'CAN', 528, 26, 107),
(107, 'Llodra ', 'Michael', 'france', 'FRA', 824, 19, 52),
(108, 'Lopez', 'Feliciano', 'espagne', 'ESP', 1015, 24, 39),
(109, 'Lorenzi', 'Paolo', 'italie', 'ITA', 701, 32, 71),
(110, 'Lu', 'Yen-Hsun', 'chine', 'TPE', 683, 28, 74),
(111, 'Malisse', 'Xavier', 'belgique', 'BEL', 770, 25, 60),
(112, 'Mannarino ', 'Adrian', 'france', 'FRA', 511, 28, 111),
(113, 'Marchenko', 'Illya', 'ukraine', 'UKR', 460, 19, 123),
(114, 'Martin', 'Andrej', 'slovaquie', 'SVK', 302, 28, 170),
(115, 'Mathieu ', 'Paul-Henri', 'france', 'FRA', 628, 28, 81),
(116, 'Matosevic', 'Marinko', 'australie', 'AUS', 738, 29, 66),
(117, 'Mayer', 'Florian', 'allemagne', 'GER', 1175, 28, 33),
(118, 'Mayer', 'Leonardo', 'argentine', 'ARG', 631, 22, 80),
(119, 'Meffert', 'Dominik', 'allemagne', 'GER', 237, 21, 196),
(120, 'Melzer', 'Jurgen', 'autriche', 'AUT', 1085, 30, 36),
(121, 'Menendez-Maceiras', 'Adrian', 'espagne', 'ESP', 234, 26, 197),
(122, 'Mertl', 'Jan', 'republique-tcheque', 'CZE', 263, 28, 188),
(123, 'Millman', 'John', 'australie', 'AUS', 373, 24, 142),
(124, 'Monaco', 'Juan', 'argentine', 'ARG', 1740, 25, 20),
(125, 'Monfils ', 'Gael', 'france', 'FRA', 755, 26, 62),
(126, 'Montanes', 'Albert', 'espagne', 'ESP', 862, 23, 50),
(127, 'Moriya', 'Hiroki', 'japon', 'JPN', 239, 25, 195),
(128, 'Muller', 'Gilles', 'luxembourg', 'LUX', 586, 26, 88),
(129, 'Munoz De La Nava', 'Daniel', 'espagne', 'ESP', 367, 23, 144),
(130, 'Murray', 'Andy', 'grande-bretagne', 'GBR', 8560, 18, 2),
(131, 'Nadal', 'Rafael', 'espagne', 'ESP', 6895, 19, 5),
(132, 'Nalbandian', 'David', 'argentine', 'ARG', 260, 13, 190),
(133, 'Naso', 'Gianluca', 'italie', 'ITA', 228, 20, 201),
(134, 'Nieminen', 'Jarkko', 'finlande', 'FIN', 1075, 30, 37),
(135, 'Nishikori', 'Kei', 'japon', 'JPN', 2495, 23, 11),
(136, 'Norman', 'Dick', 'belgique', 'BEL', 1, 17, 120),
(137, 'Odesnik', 'Wayne', 'etats-unis', 'USA', 535, 22, 104),
(138, 'Ouanna ', 'Josselin', 'france', 'FRA', 320, 25, 162),
(139, 'Paire ', 'Beno', 'france', 'FRA', 1450, 32, 25),
(140, 'Pashanski', 'Boris', 'serbie-et-montenegro', 'SME', 263, 27, 187),
(141, 'Pella', 'Guido', 'argentine', 'ARG', 674, 28, 76),
(142, 'Petzschner', 'Philipp', 'allemagne', 'GER', 550, 19, 98),
(143, 'Phau', 'Bjorn', 'allemagne', 'GER', 358, 23, 148),
(144, 'Pospisil', 'Vasek', 'canada', 'CAN', 558, 26, 99),
(145, 'Przysiezny', 'Michal', 'pologne', 'POL', 445, 25, 126),
(146, 'Querrey', 'Sam', 'etats-unis', 'USA', 1810, 26, 19),
(147, 'Ram', 'Rajeev', 'etats-unis', 'USA', 586, 29, 87),
(148, 'Ramos', 'Albert', 'espagne', 'ESP', 755, 30, 61),
(149, 'Raonic', 'Milos', 'canada', 'CAN', 2225, 24, 15),
(150, 'Reister', 'Julian', 'allemagne', 'GER', 381, 15, 139),
(151, 'Reynolds', 'Bobby', 'etats-unis', 'USA', 351, 18, 149),
(152, 'Robert ', 'Stephane', 'france', 'FRA', 314, 25, 165),
(153, 'Robredo', 'Tommy', 'espagne', 'ESP', 1355, 25, 29),
(154, 'Rochus', 'Olivier', 'belgique', 'BEL', 392, 27, 138),
(155, 'Roddick', 'Andy', 'etats-unis', 'USA', 970, 23, 40),
(156, 'Roger-Vasselin ', 'Edouard', 'france', 'FRA', 736, 28, 67),
(157, 'Rosol', 'Lukas', 'republique-tcheque', 'CZE', 1091, 31, 34),
(158, 'Rufin ', 'Guillaume', 'france', 'FRA', 583, 26, 89),
(159, 'Russell', 'Michael', 'etats-unis', 'USA', 565, 26, 97),
(160, 'Schwartzman', 'Diego-Sebastian', 'argentine', 'ARG', 414, 27, 133),
(161, 'Sela', 'Dudi', 'israel', 'ISR', 580, 28, 90),
(162, 'Seppi', 'Andreas', 'italie', 'ITA', 1440, 28, 26),
(163, 'Serra ', 'Florent', 'france', 'FRA', 349, 24, 150),
(164, 'Sijsling', 'Igor', 'pays-bas', 'NED', 772, 28, 59),
(165, 'Simon ', 'Gilles', 'france', 'FRA', 1985, 25, 17),
(166, 'Smyczek', 'Tim', 'etats-unis', 'USA', 471, 24, 118),
(167, 'Sock', 'Jack', 'etats-unis', 'USA', 540, 23, 102),
(168, 'Soeda', 'Go', 'japon', 'JPN', 435, 29, 129),
(169, 'Sousa', 'Joao', 'portugal', 'POR', 537, 27, 103),
(170, 'Souza', 'Joao', 'bresil', 'BRA', 486, 24, 117),
(171, 'Stakhovsky', 'Sergiy', 'ukraine', 'UKR', 488, 31, 116),
(172, 'Starace', 'Potito', 'italie', 'ITA', 225, 12, 203),
(173, 'Stebe', 'Cedrik-Marcel', 'allemagne', 'GER', 312, 19, 166),
(174, 'Stepanek', 'Radek', 'republique-tcheque', 'CZE', 885, 21, 48),
(175, 'Struff', 'Jan-Lennard', 'allemagne', 'GER', 489, 31, 115),
(176, 'Sugita', 'Yuichi', 'japon', 'JPN', 399, 24, 136),
(177, 'Svitolina', 'Elina', 'russie', 'RUS', 804, 28, 82),
(178, 'Tipsarevic', 'Janko', 'serbie', 'SRB', 2390, 28, 14),
(179, 'Tomic', 'Bernard', 'australie', 'AUS', 740, 26, 64),
(180, 'Troicki', 'Viktor', 'serbie', 'SRB', 935, 30, 44),
(181, 'Tsonga ', 'Jo-Wilfried', 'france', 'FRA', 4155, 25, 7),
(182, 'Tursunov', 'Dmitry', 'russie', 'RUS', 739, 21, 65),
(183, 'Ungur', 'Adrian', 'roumanie', 'ROU', 568, 25, 96),
(184, 'Veic', 'Antonio', 'croatie', 'CRO', 278, 25, 181),
(185, 'Verdasco', 'Fernando', 'espagne', 'ESP', 785, 23, 58),
(186, 'Vesely', 'Jiri', 'republique-tcheque', 'CZE', 530, 23, 106),
(187, 'Viola', 'Matteo', 'italie', 'ITA', 404, 30, 135),
(188, 'Volandri', 'Filippo', 'italie', 'ITA', 492, 27, 114),
(189, 'Wang', 'Jimmy', 'chine', 'TPE', 346, 24, 152),
(190, 'Wang', 'Qiang', 'chine', 'CHN', 390, 18, 161),
(191, 'Wawrinka', 'Stanislas', 'suisse', 'SUI', 2810, 23, 10),
(192, 'Williams', 'Rhyne', 'etats-unis', 'USA', 445, 21, 127),
(193, 'Wu', 'Di', 'chine', 'CHN', 271, 20, 185),
(194, 'Young', 'Donald', 'etats-unis', 'USA', 336, 24, 157),
(195, 'Youzhny', 'Mikhail', 'russie', 'RUS', 1415, 26, 28),
(196, 'Zeballos', 'Horacio', 'argentine', 'ARG', 859, 28, 51),
(197, 'Zemlja', 'Grega', 'slovenie', 'SLO', 816, 26, 53),
(198, 'Zhang', 'Ze', 'chine', 'CHN', 347, 18, 151),
(199, 'Zopp', 'Jurgen', 'estonie', 'EST', 273, 13, 184),
(200, 'Zverev', 'Mischa', 'allemagne', 'GER', 337, 23, 156);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
