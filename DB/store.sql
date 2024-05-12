-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 08 mars 2024 à 16:50
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `store`
--
create database store
-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `des` text COLLATE utf8_bin NOT NULL,
  `price` float NOT NULL,
  `qt` int(11) NOT NULL,
  `images` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `des`, `price`, `qt`, `images`) VALUES
(1, 'Clavier', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sunt, laudantium tempore officia libero ut temporibus ea sequi repellendus odio voluptatem, ad praesentium sint, esse quam iusto ipsa repudiandae a?\r\n', 25.5, 1000, 'w3.png'),
(2, 'fgsf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sunt, laudantium tempore officia libero ut temporibus ea sequi repellendus odio voluptatem, ad praesentium sint, esse quam iusto ipsa repudiandae a?\r\n', 25.5, 1000, 'w4.png'),
(3, 'yyyyy', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sunt, laudantium tempore officia libero ut temporibus ea sequi repellendus odio voluptatem, ad praesentium sint, esse quam iusto ipsa repudiandae a?\r\n', 22, 1000, 'w2.png'),
(4, 'Clavier', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sunt, laudantium tempore officia libero ut temporibus ea sequi repellendus odio voluptatem, ad praesentium sint, esse quam iusto ipsa repudiandae a?\r\n', 25.5, 1000, 'w5.png'),
(6, 'Clavier', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sunt, laudantium tempore officia libero ut temporibus ea sequi repellendus odio voluptatem, ad praesentium sint, esse quam iusto ipsa repudiandae a?\r\n', 25.5, 1000, ''),
(8, 'yyyyy', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sunt, laudantium tempore officia libero ut temporibus ea sequi repellendus odio voluptatem, ad praesentium sint, esse quam iusto ipsa repudiandae a?\r\n', 22, 1000, ''),
(9, 'Clavier', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sunt, laudantium tempore officia libero ut temporibus ea sequi repellendus odio voluptatem, ad praesentium sint, esse quam iusto ipsa repudiandae a?\r\n', 25.5, 1000, ''),
(10, 'Clavier', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sunt, laudantium tempore officia libero ut temporibus ea sequi repellendus odio voluptatem, ad praesentium sint, esse quam iusto ipsa repudiandae a?\r\n', 25.5, 1000, ''),
(11, 'Clavier', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sunt, laudantium tempore officia libero ut temporibus ea sequi repellendus odio voluptatem, ad praesentium sint, esse quam iusto ipsa repudiandae a?\r\n', 25.5, 1000, ''),
(12, 'fgsf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sunt, laudantium tempore officia libero ut temporibus ea sequi repellendus odio voluptatem, ad praesentium sint, esse quam iusto ipsa repudiandae a?\r\n', 25.5, 1000, ''),
(13, 'yyyyy', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sunt, laudantium tempore officia libero ut temporibus ea sequi repellendus odio voluptatem, ad praesentium sint, esse quam iusto ipsa repudiandae a?\r\n', 22, 1000, ''),
(14, 'Clavier', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sunt, laudantium tempore officia libero ut temporibus ea sequi repellendus odio voluptatem, ad praesentium sint, esse quam iusto ipsa repudiandae a?\r\n', 25.5, 1000, ''),
(15, 'Clavier', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sunt, laudantium tempore officia libero ut temporibus ea sequi repellendus odio voluptatem, ad praesentium sint, esse quam iusto ipsa repudiandae a?\r\n', 25.5, 1000, ''),
(16, 'Clavier', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sunt, laudantium tempore officia libero ut temporibus ea sequi repellendus odio voluptatem, ad praesentium sint, esse quam iusto ipsa repudiandae a?\r\n', 25.5, 1000, ''),
(17, 'fgsf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sunt, laudantium tempore officia libero ut temporibus ea sequi repellendus odio voluptatem, ad praesentium sint, esse quam iusto ipsa repudiandae a?\r\n', 25.5, 1000, ''),
(18, 'yyyyy', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sunt, laudantium tempore officia libero ut temporibus ea sequi repellendus odio voluptatem, ad praesentium sint, esse quam iusto ipsa repudiandae a?\r\n', 22, 1000, ''),
(19, 'Clavier', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sunt, laudantium tempore officia libero ut temporibus ea sequi repellendus odio voluptatem, ad praesentium sint, esse quam iusto ipsa repudiandae a?\r\n', 25.5, 1000, ''),
(20, 'Clavier', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sunt, laudantium tempore officia libero ut temporibus ea sequi repellendus odio voluptatem, ad praesentium sint, esse quam iusto ipsa repudiandae a?\r\n', 25.5, 1000, '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
