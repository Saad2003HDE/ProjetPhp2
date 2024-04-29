-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 29 avr. 2024 à 02:55
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `connect`
--

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `quantite` int NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `description`, `image_url`, `quantite`, `prix`) VALUES
(11, 'tenue Algérie', 'tenue Algérie pour homme', 'path/to/your/upload/directory/OIP (3).jpg', 100, '200.00'),
(10, 'tenue japon', 'tenue japon pour homme', 'path/to/your/upload/directory/658659f742777japon.jpeg', 100, '200.00'),
(15, 'tenue Maroc', 'tenue Maroc pour homme', 'path/to/your/upload/directory/OIP (1).jpg', 100, '250.00'),
(9, 'tenue real Madrid', 'tenue real Madrid pour homme', 'path/to/your/upload/directory/6586114df1aefmadrid.jpeg', 100, '200.00'),
(8, 'tenue Senégal', 'tenue Senégal pour homme', 'path/to/your/upload/directory/OIP (2).jpg', 100, '200.00'),
(12, 'tenue france', 'tenue france pour homme', 'path/to/your/upload/directory/658659c6d593ffrance.jpeg', 100, '200.00'),
(13, 'tenue portugal', 'tenue portugal pour homme', 'path/to/your/upload/directory/65865a15e4557portugal.jpeg', 100, '200.00'),
(16, 'Mohamed Saad Nassib', 'nn', 'path/to/your/upload/directory/658659c6d593ffrance.jpeg', 98, '79.00');

-- --------------------------------------------------------

--
-- Structure de la table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_number` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `item_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `item_price` float(10,2) DEFAULT NULL,
  `item_price_currency` varchar(10) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payer_id` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payer_name` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payer_email` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payer_country` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `merchant_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `merchant_email` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `order_id` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `paid_amount` float(10,2) NOT NULL,
  `paid_amount_currency` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  `payment_source` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payment_status` varchar(25) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `username`, `email`, `password`, `is_admin`) VALUES
(22, 'saad', 'saadnassib120@gmail.com', '$2y$10$qB4UODW4QH9U6XWwNpl/7upfLGfExWeCWZWpz.TYKMS2aykVBXozG', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
