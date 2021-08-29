-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 29 août 2021 à 11:23
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `apiteachr`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210827130301', '2021-08-27 13:04:10', 66),
('DoctrineMigrations\\Version20210827180620', '2021-08-27 18:06:54', 235);

-- --------------------------------------------------------

--
-- Structure de la table `statistics`
--

DROP TABLE IF EXISTS `statistics`;
CREATE TABLE IF NOT EXISTS `statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `compteur` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `statistics`
--

INSERT INTO `statistics` (`id`, `type`, `compteur`) VALUES
(1, 'ADD', 14);

-- --------------------------------------------------------

--
-- Structure de la table `teachr`
--

DROP TABLE IF EXISTS `teachr`;
CREATE TABLE IF NOT EXISTS `teachr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `teachr`
--

INSERT INTO `teachr` (`id`, `prenom`, `created_at`) VALUES
(1, 'Michel', '2021-08-27 15:09:00'),
(13, 'Dylan', '2021-08-27 17:54:33'),
(14, 'Seb', '2021-08-27 17:54:45'),
(15, 'Mehdi', '2021-08-27 21:25:14'),
(16, 'Mehdi', '2021-08-27 21:28:29'),
(17, 'Mehdi', '2021-08-27 21:29:22'),
(18, 'Mehdi', '2021-08-27 21:29:55'),
(19, 'Mehdi', '2021-08-27 21:31:39'),
(20, 'Mehdi', '2021-08-27 21:33:32'),
(21, 'Mehdi', '2021-08-27 21:35:47'),
(22, 'Julien', '2021-08-27 21:38:17'),
(24, 'omzoemaega', '2021-08-27 21:40:28'),
(25, 'retest', '2021-08-27 23:02:14'),
(26, 'Salut', '2021-08-29 13:21:06');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
