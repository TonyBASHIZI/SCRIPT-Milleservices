-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2019 at 10:21 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `milleservicedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `detail` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `designcat` varchar(35) NOT NULL,
  `prix` decimal(10,0) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `id` int(11) NOT NULL,
  `ref_p` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `photos` text NOT NULL,
  `salon` varchar(25) DEFAULT NULL,
  `chambre` varchar(25) DEFAULT NULL,
  `salle` varchar(25) DEFAULT NULL,
  `puscine` varchar(25) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`id`, `ref_p`, `adresse`, `photos`, `salon`, `chambre`, `salle`, `puscine`, `updated_at`, `created_at`) VALUES
(3, 'MS-OO-904', 'Av du lac num234 Ville', 'upload/o6IrOWEOlGLMuKh2xW3S6CFwEbDYo9mCUTFTDBeo.jpeg,upload/g93NMcOW8EZKJol21zXUKazppo57u18aYmqYmLfR.jpeg,upload/GMxxadutTyBm91ErDxouGBPwdYtImVC3Lx5ZoZ4Y.jpeg,upload/JDGWvROFXL8jKcathVSXu3l2KDhbo9dwaW4IxhOC.jpeg', '3', '4', '6', '2', '2019-05-28 06:05:16', '2019-05-28 06:05:16'),
(4, 'MS-OO-636', 'Av du Lac num 2349', 'upload/oaXPiqWlN07PFXdBNYWleO1f1Mtw6pD1BT4Fke6u.jpeg,upload/EZL7uBgq5tcRq2JKhZJfxyLFsI4kiBOc55sIszVk.gif,upload/PorVBWuBIgicsQq6dUZRvVWnNxh4J4yNOOs4szkT.jpeg', NULL, NULL, NULL, NULL, '2019-05-30 14:27:01', '2019-05-30 14:27:01'),
(5, 'MS-OO-365', 'AV.KILASI Num233', 'upload/Dseb6kdpYfo6cYwkKktQbgm7xle2I1VK5iibCVRb.jpeg,upload/sKskt3fl1m1j6KjKrQRjGgDHtTcS6h95nB0yfL6b.jpeg,upload/j3pvUhidyIHhMFBmsvFNcMwq4sx9O7OhkfLY5AwL.jpeg,upload/HzpB65HsxUjlOstrxA9MivXjrfsWQ86edTdh6f1r.jpeg,upload/MsMaS7E8j7Mad0bjdnhg5yq5QkyhuretcQ3xgAiL.jpeg,upload/MpEpvVrNQA9Wz83BUnn0tTEG48UYcdKdO2TAds11.jpeg', '4', '5', '2', '4', '2019-06-07 17:41:42', '2019-06-07 17:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `designation` varchar(55) NOT NULL,
  `localisation` varchar(255) NOT NULL,
  `ref_cat` varchar(25) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(255) NOT NULL,
  `prix` varchar(35) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`id`, `code`, `designation`, `localisation`, `ref_cat`, `updated_at`, `image`, `prix`, `created_at`) VALUES
(1, 'MS-OO-904', 'HOUSE', 'GOMA KESHERO', 'Vente', '2019-05-27 15:47:45', 'upload/coUn7eeIs7NYJYWG7x2jEZVdBJHmiCkVqLQwSpyG.jpeg', '5000', '2019-05-27 15:47:45'),
(2, 'MS-OO-636', 'FERRARI', 'GOMA VILLE', 'Vente', '2019-05-30 14:25:54', 'upload/qasz2ZyToYDtkA1VxoyC6oGL0uSA1yEpUqAfjRvw.jpeg', '570000.00', '2019-05-30 14:25:54'),
(3, 'MS-OO-461', 'KILA VILLE', 'KESHERO GOMA', 'Vente', '2019-06-03 22:14:57', 'upload/Uu84Zez5mvoKMzLfaa5jWuOC1nCBkDPVKJqEgVHX.jpeg', '5000.00', '2019-06-03 22:14:57'),
(4, 'MS-OO-260', 'MONTRE FLUX', 'HIMBI Av toto', 'Vente', '2019-06-03 22:17:03', 'upload/K1eGbPwK9HpCDZfCgQkJvfkOKZZKPlOYe5LAYuH5.jpeg', '60.00', '2019-06-03 22:17:03'),
(5, 'MS-OO-365', 'MAISON  A REVER', 'NDOSHO', 'Location', '2019-06-07 17:37:52', 'upload/s7Q68eUXCnP5AE48HvovsVd0I9CjLusZhILvIy8Q.jpeg', '150000.00', '2019-06-07 17:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `nom`, `service`, `image`, `updated_at`, `created_at`) VALUES
(2, 'TONY BASHIZI', 'DEV', 'IMG_8493.JPG', '2019-05-22 06:18:21', '2019-05-22 06:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remeber_token` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remeber_token`, `created_at`, `updated_at`) VALUES
(1, 'tony', 'tonnybash5@gmail.com', '$2y$10$EqiDFs0.8ZGAJo/TAHKbReIb8Uk3Hdjjr67nBoXgRK88Uo7uAI//2', 0, '2019-05-27 13:41:22', '2019-05-27 13:41:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `photo` (`photo`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designcat` (`designcat`);

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `adresse` (`adresse`);

--
-- Indexes for table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `image` (`image`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
