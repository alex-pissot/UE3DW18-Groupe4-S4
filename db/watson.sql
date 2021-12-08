-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 03 déc. 2021 à 14:48
-- Version du serveur : 8.0.26-0ubuntu0.20.04.2
-- Version de PHP : 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `watson`
--

-- --------------------------------------------------------

--
-- Structure de la table `tl_liens`
--

CREATE TABLE `tl_liens` (
  `lien_id` int NOT NULL,
  `lien_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lien_titre` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lien_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tl_liens`
--

INSERT INTO `tl_liens` (`lien_id`, `lien_url`, `lien_titre`, `lien_desc`, `user_id`) VALUES
(1, 'https://cvtic.unilim.fr/', 'Campus Virtuel TIC', 'Site internet du CvTIC.', 1),
(2, 'https://duckduckgo.com/', 'Duck Duck Go', 'Le moteur de recherche qui ne trace pas ses utilisateurs.', 1),
(3, 'https://framasoft.org/', 'Framasoft', 'Un réseau dédié à la promotion du « libre » en général et du logiciel libre en particulier.', 1),
(4, 'https://www.blogdumoderateur.com/', 'Le Blog du Modérateur', 'Le BDM est un média édité par le groupe HelloWork. Lancé en 2007, il s’adresse aux professionnels du web. Il propose une sélection quotidienne d’outils, de décryptages, d’actualités ou encore de chiffres et enquêtes pour leur permettre d’alimenter la veille et de répondre aux besoins induits par la digitalisation croissante des métiers et des entreprises. SEO, SEA, développement, design, social media ou encore marketing font partie des thèmes abordés régulièrement.', 1),
(5, 'https://www.lemondeinformatique.fr/', 'Le Monde Informatique', 'Site internet francophone consacré à l\'informatique professionnelle. Il regroupe l\'actualité informatique ainsi que des dossiers et évènement rattachés au domaine de l\'informatique.', 1),
(6, 'https://github.com', 'Github', 'Plateforme d\'hébergement de code dans le cloud. Permet aux équipes de développement / programmation de regrouper et de versionner leur code dans le but d\'optimiser le travail collaboratif.', 1),
(7, 'https://www.lipsum.com/', 'Lorem Ipsum', 'Site proposant de générer du texte latin. Peut être utile pour placer du contenu temporaire lors du développement d\'un site / application afin d\'obtenir un meilleur aperçu avant l\'intégration des contenus réels.', 1),
(8, 'https://www.unilim.fr/', 'Université de Limoges', 'Site de l\'université de Limoges.', 1),
(9, 'https://www.journaldunet.com/', 'Le Journal du Net', 'Site référençant des contenus encyclopédiques, des chroniques d\'experts, un réseau social de professionnels (JDN réseau) et des sujets d\'informatique d\'entreprise, de développement logiciel mais aussi de management et d\'e-business.', 1),
(10, 'https://discord.com/', 'Discord', 'Service de messagerie instantanée et de tchat vocal / visio. Discord propose aussi la création de groupes et de serveurs pour la discussion instantanée, le partage d\'éléments multimédia et la gestion de communautés.', 1),
(11, 'https://pixabay.com/fr/', 'Pixabay', 'Images gratuites libres de droit, pouvant être réutilisées.', 1),
(12, 'https://www.flaticon.com/fr/', 'Flaticon', 'Icônes libres de droits pouvant être réutilisés.', 1),
(13, 'https://stackoverflow.com/', 'Stack Overflow', 'Plateforme de partage de connaissances et de ressources concernant la programmation informatique.', 1),
(14, 'https://openclassrooms.com/', 'OpenClassrooms', 'Plateforme de cours de programmation informatique et d\'e-business proposés en libre accès ou dans le cadre de formations.', 1),
(15, 'https://www.root-me.org/', 'Root Me', 'Plateforme permettant au amateurs comme aux professionnels de s\'entraîner au hacking dans de multiples environnements par la réalisation de challenges. Un classement est également mis en place via un système de points.', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tl_tags`
--

CREATE TABLE `tl_tags` (
  `tag_id` int NOT NULL,
  `tag_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tl_tags`
--

INSERT INTO `tl_tags` (`tag_id`, `tag_name`) VALUES
(1, 'fac'),
(2, 'vieprivee'),
(3, 'opensource'),
(4, 'apprendre');

-- --------------------------------------------------------

--
-- Structure de la table `tl_tags_liens`
--

CREATE TABLE `tl_tags_liens` (
  `tag_id` int NOT NULL,
  `lien_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tl_tags_liens`
--

INSERT INTO `tl_tags_liens` (`tag_id`, `lien_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `tl_users`
--

CREATE TABLE `tl_users` (
  `usr_id` int NOT NULL,
  `usr_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `usr_password` varchar(88) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `usr_salt` varchar(23) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `usr_role` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ROLE_ADMIN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tl_users`
--

INSERT INTO `tl_users` (`usr_id`, `usr_name`, `usr_password`, `usr_salt`, `usr_role`) VALUES
(1, 'admin', 'LsJKppRTEPz4uKrkhScOE6HBSvHuaIcFbAX9FWC7h/f5HffX4TBcFt7p8M0hqvGzFXL+JV8TzEYePoimaosfMQ==', '>=28!7NLw!S37zLjs7Uu[nC', 'ROLE_ADMIN');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tl_liens`
--
ALTER TABLE `tl_liens`
  ADD PRIMARY KEY (`lien_id`);

--
-- Index pour la table `tl_tags`
--
ALTER TABLE `tl_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Index pour la table `tl_users`
--
ALTER TABLE `tl_users`
  ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tl_liens`
--
ALTER TABLE `tl_liens`
  MODIFY `lien_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `tl_tags`
--
ALTER TABLE `tl_tags`
  MODIFY `tag_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `tl_users`
--
ALTER TABLE `tl_users`
  MODIFY `usr_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
