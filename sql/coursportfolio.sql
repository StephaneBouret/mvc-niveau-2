-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 27 mars 2026 à 18:14
-- Version du serveur : 8.4.7
-- Version de PHP : 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `coursportfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `creation`
--

DROP TABLE IF EXISTS `creation`;
CREATE TABLE IF NOT EXISTS `creation` (
  `id_creation` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `creation`
--

INSERT INTO `creation` (`id_creation`, `title`, `description`, `created_at`, `picture`) VALUES
(1, 'Test1', 'Test test test', '2026-03-04 15:03:23', 'test1-0001.webp'),
(2, 'Test2', 'Test test test test', '2026-03-04 15:20:42', 'test2-0001.webp'),
(3, 'Test3', 'Test test test test', '2026-03-05 14:11:20', 'test3-0001.webp'),
(4, 'Test4', 'Test test test test', '2026-03-05 14:12:05', 'test4-0001.webp'),
(5, 'Test5', 'Test test test test test', '2026-03-05 14:12:36', 'test5-0001.webp'),
(6, 'Test6', 'Test test test test', '2026-03-05 14:13:01', 'test6-0001.webp'),
(7, 'Test7', 'Test test test test test', '2026-03-05 14:13:28', 'test7-0001.webp'),
(8, 'Test8', 'Test test test', '2026-03-13 17:49:32', 'test8-0001.webp'),
(9, 'Séjour De Luxe', 'Test test test', '2026-03-16 15:06:53', 's-ejour-de-luxe-0002.webp'),
(10, 'Amérique Du Nord', 'Test test test', '2026-03-16 17:57:08', 'test10-0001.webp'),
(11, 'Afrique', 'Test test test', '2026-03-16 17:57:34', 'test11-0001.webp'),
(12, 'Amérique Du Sud', 'Test test test', '2026-03-16 17:58:24', 'test12-0001.webp'),
(13, 'Australie', 'Test test test', '2026-03-16 17:58:46', 'test13-0001.webp'),
(14, 'Cavalcades', 'Test test test', '2026-03-16 17:59:51', 'cavalcades-0001.webp'),
(15, 'Croatie', 'Test test test', '2026-03-16 18:00:21', 'croatie-0001.webp'),
(16, 'Italie', 'Test test test', '2026-03-16 18:00:51', 'italie-0001.webp'),
(17, 'Japon', 'Test test test', '2026-03-16 18:02:22', 'japon-0001.webp'),
(18, 'Océanie', 'Test test test', '2026-03-16 18:02:48', 'oc-eanie-0001.webp'),
(19, 'Paris', 'Test test test', '2026-03-16 18:03:20', 'paris-0001.webp'),
(20, 'Allemagne', 'Test test test', '2026-03-16 18:03:52', 'allemagne-0001.webp'),
(21, 'Grece', 'Test test test', '2026-03-16 18:04:16', 'grece-0001.webp'),
(22, 'Tanzanie', 'Test test test', '2026-03-16 18:04:51', 'tanzanie-0001.webp'),
(23, 'Namibie', 'Test test test', '2026-03-16 18:05:23', 'namibie-0001.webp'),
(24, 'République Dominicaine', 'Test test test', '2026-03-16 18:06:16', 'r-epublique-dominicaine-0001.webp'),
(25, 'Saint Martin', 'Test test test', '2026-03-16 18:06:52', 'saint-martin-0001.webp'),
(26, 'Seychelles', 'Test test test', '2026-03-16 18:07:13', 'seychelles-0001.webp'),
(27, 'Martinique', 'Test test test test', '2026-03-17 18:28:06', 'martinique-0001.webp');

-- --------------------------------------------------------

--
-- Structure de la table `login_attempt`
--

DROP TABLE IF EXISTS `login_attempt`;
CREATE TABLE IF NOT EXISTS `login_attempt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempted_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_login_attempt_email` (`email`),
  KEY `idx_login_attempt_ip` (`ip_address`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ROLE_USER',
  `created_at` datetime NOT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `remember_token_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token_expires_at` datetime DEFAULT NULL,
  `reset_selector` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_token_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `password_hash`, `firstname`, `lastname`, `address`, `postal_code`, `city`, `phone`, `role`, `created_at`, `last_login_at`, `remember_token_hash`, `remember_token_expires_at`, `reset_selector`, `reset_token_hash`, `reset_expires_at`) VALUES
(1, 'admin@site.fr', '$2y$10$Obr2gmRZofCpS/b.N1qsTuMGqiqgRk3C0bJgr5Ynis1K8AZ9g8XK2', 'Admin', 'Site', NULL, NULL, NULL, NULL, 'ROLE_ADMIN', '2026-03-09 09:27:17', '2026-03-26 19:14:28', NULL, NULL, NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
