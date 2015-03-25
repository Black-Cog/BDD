-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 25 Mars 2015 à 18:50
-- Version du serveur :  5.6.21
-- Version de PHP :  5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `bc_forge`
--

-- --------------------------------------------------------

--
-- Structure de la table `assets`
--

CREATE TABLE IF NOT EXISTS `assets` (
`asset_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bundles`
--

CREATE TABLE IF NOT EXISTS `bundles` (
  `bundle_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bundlestemplates`
--

CREATE TABLE IF NOT EXISTS `bundlestemplates` (
`bundlestemplate_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `bundle_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `entities`
--

CREATE TABLE IF NOT EXISTS `entities` (
`entity_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `shows`
--

CREATE TABLE IF NOT EXISTS `shows` (
`show_id` int(11) NOT NULL,
  `showName` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `shows`
--

INSERT INTO `shows` (`show_id`, `showName`) VALUES
(1, 'Sw4 A New Hope');

-- --------------------------------------------------------

--
-- Structure de la table `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
`tasks_id` smallint(6) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `creator` smallint(6) DEFAULT NULL,
  `asker` smallint(6) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `percent_done` smallint(6) DEFAULT '0',
  `times_pend` smallint(6) DEFAULT NULL,
  `time_estimation` time DEFAULT NULL,
  `priority` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tasks`
--

INSERT INTO `tasks` (`tasks_id`, `type`, `name`, `creator`, `asker`, `status`, `date_created`, `percent_done`, `times_pend`, `time_estimation`, `priority`) VALUES
(1, 1, 'Retoplogie robot', 34, 34, 1, '2015-03-12 11:30:28', 0, NULL, NULL, 1),
(2, 1, 'Mate ciel P05', 33, 34, 1, '2015-03-12 11:30:28', 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tasks_require`
--

CREATE TABLE IF NOT EXISTS `tasks_require` (
  `tasks_require_id` int(11) NOT NULL DEFAULT '0',
  `tasks_id` smallint(6) DEFAULT NULL,
  `tasks_dependency_id` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tasks_users`
--

CREATE TABLE IF NOT EXISTS `tasks_users` (
  `tasks_users_id` int(11) NOT NULL DEFAULT '0',
  `tasks_id` smallint(6) DEFAULT NULL,
  `users_id` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tasks_watchers`
--

CREATE TABLE IF NOT EXISTS `tasks_watchers` (
  `tasks_watchers_id` int(11) NOT NULL DEFAULT '0',
  `tasks_id` smallint(6) DEFAULT NULL,
  `users_id` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `templates`
--

CREATE TABLE IF NOT EXISTS `templates` (
  `bundle_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`users_id` smallint(6) unsigned NOT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `firstname` varchar(32) DEFAULT NULL,
  `password` varchar(41) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_logged` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `folder` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`users_id`, `user_name`, `name`, `firstname`, `password`, `email`, `date_created`, `last_logged`, `folder`) VALUES
(1, 'Luke Skywalker', 'Hamill', 'Mark', '*C244F1CFA05D41A86DD8916D95A9D16F339002E9', NULL, '2015-03-19 08:13:52', '0000-00-00 00:00:00', 'LukeSkywalker'),
(2, 'Han Solo', 'Ford', 'Harrison', '*912C09BCE3BCC6128CF45B3BEA3783CCFF4D92FA', NULL, '2015-03-19 08:13:52', '0000-00-00 00:00:00', 'HanSolo'),
(3, 'Leia', 'Fisher', 'Carrie', '*5D7A67ABE629BF31A4C89E5080C788B2F1F004B9', NULL, '2015-03-19 08:13:52', '0000-00-00 00:00:00', 'Leia'),
(4, 'Dark Vador', 'One', 'Guy', '*46FBEB16F28A0EEC72505DE95A5365BAA8C67709', NULL, '2015-03-19 08:13:52', '2015-03-19 08:14:50', 'DarkVador'),
(5, 'Kenobi', 'Guinness', 'Alec', '*652F5C6351D0ED09328FE3DE88902CDFB6948F7E', NULL, '2015-03-19 08:13:52', '0000-00-00 00:00:00', 'Kenobi'),
(6, 'C-3PO', 'Daniels', 'Anthony', '*058F613A9C9D5583A485202C8D18097D9E7AE5E7', NULL, '2015-03-19 08:13:52', '0000-00-00 00:00:00', 'C-3PO'),
(7, 'C-3PO_B', 'Daniels', 'Anthony', '*058F613A9C9D5583A485202C8D18097D9E7AE5E7', NULL, '2015-03-19 08:16:54', '0000-00-00 00:00:00', 'C-3PO_B'),
(8, 'Clipo', 'Hamill', 'Mark', '*C244F1CFA05D41A86DD8916D95A9D16F339002E9', NULL, '2015-03-20 08:51:37', '0000-00-00 00:00:00', 'Clipo'),
(9, 'Clipo2', 'Hamill', 'Mark', '*C244F1CFA05D41A86DD8916D95A9D16F339002E9', NULL, '2015-03-20 08:54:38', '0000-00-00 00:00:00', 'Clipo2'),
(10, 'Clipo3', 'Hamill', 'Mark', '*C244F1CFA05D41A86DD8916D95A9D16F339002E9', NULL, '2015-03-20 08:57:16', '2015-03-20 08:57:47', 'Clipo3');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `assets`
--
ALTER TABLE `assets`
 ADD PRIMARY KEY (`asset_id`), ADD UNIQUE KEY `asset_id` (`asset_id`);

--
-- Index pour la table `bundlestemplates`
--
ALTER TABLE `bundlestemplates`
 ADD PRIMARY KEY (`bundlestemplate_id`), ADD UNIQUE KEY `asset_id` (`bundlestemplate_id`);

--
-- Index pour la table `entities`
--
ALTER TABLE `entities`
 ADD PRIMARY KEY (`entity_id`), ADD UNIQUE KEY `asset_id` (`entity_id`);

--
-- Index pour la table `shows`
--
ALTER TABLE `shows`
 ADD PRIMARY KEY (`show_id`), ADD UNIQUE KEY `show_id` (`show_id`);

--
-- Index pour la table `tasks`
--
ALTER TABLE `tasks`
 ADD PRIMARY KEY (`tasks_id`);

--
-- Index pour la table `tasks_require`
--
ALTER TABLE `tasks_require`
 ADD PRIMARY KEY (`tasks_require_id`);

--
-- Index pour la table `tasks_users`
--
ALTER TABLE `tasks_users`
 ADD PRIMARY KEY (`tasks_users_id`);

--
-- Index pour la table `tasks_watchers`
--
ALTER TABLE `tasks_watchers`
 ADD PRIMARY KEY (`tasks_watchers_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
 ADD UNIQUE KEY `ID_2` (`users_id`), ADD KEY `ID` (`users_id`), ADD KEY `ID_3` (`users_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `assets`
--
ALTER TABLE `assets`
MODIFY `asset_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `bundlestemplates`
--
ALTER TABLE `bundlestemplates`
MODIFY `bundlestemplate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `entities`
--
ALTER TABLE `entities`
MODIFY `entity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `shows`
--
ALTER TABLE `shows`
MODIFY `show_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `tasks`
--
ALTER TABLE `tasks`
MODIFY `tasks_id` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
MODIFY `users_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
