-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : sql212.epizy.com
-- Généré le :  mer. 10 mai 2023 à 09:21
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP :  7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `epiz_34176455_86finder`
--

-- --------------------------------------------------------

--
-- Structure de la table `boisson`
--

CREATE TABLE `boisson` (
  `id` int(11) NOT NULL,
  `nom` varchar(15) DEFAULT NULL,
  `degre` float DEFAULT NULL,
  `type` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `boisson`
--

INSERT INTO `boisson` (`id`, `nom`, `degre`, `type`) VALUES
(1, '8.6 Original', 8.6, 1);

-- --------------------------------------------------------

--
-- Structure de la table `magasin`
--

CREATE TABLE `magasin` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `ville` varchar(15) DEFAULT NULL,
  `rue` varchar(35) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `magasin`
--

INSERT INTO `magasin` (`id`, `nom`, `ville`, `rue`) VALUES
(1, 'Carrefour à coté du Castel', 'Dijon', '54 rue Charles Dumont');

-- --------------------------------------------------------

--
-- Structure de la table `prod`
--

CREATE TABLE `prod` (
  `id` int(11) NOT NULL,
  `nom` varchar(15) DEFAULT NULL,
  `qte` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `prod`
--

INSERT INTO `prod` (`id`, `nom`, `qte`) VALUES
(1, 'Canette', 0.5);

-- --------------------------------------------------------

--
-- Structure de la table `prodmagasin`
--

CREATE TABLE `prodmagasin` (
  `prod` int(11) DEFAULT NULL,
  `magasin` int(11) DEFAULT NULL,
  `prix` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `type_boisson`
--

CREATE TABLE `type_boisson` (
  `id` int(11) NOT NULL,
  `nom` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type_boisson`
--

INSERT INTO `type_boisson` (`id`, `nom`) VALUES
(1, 'Bière');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `boisson`
--
ALTER TABLE `boisson`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `magasin`
--
ALTER TABLE `magasin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prod`
--
ALTER TABLE `prod`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_boisson`
--
ALTER TABLE `type_boisson`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
