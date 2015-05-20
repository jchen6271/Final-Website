-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2015 at 05:15 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dont_starve`
--

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE IF NOT EXISTS `characters` (
  `name` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `motto` varchar(255) NOT NULL,
  `perk` varchar(255) NOT NULL,
  `health` int(11) NOT NULL,
  `hunger` int(11) NOT NULL,
  `sanity` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crockpot_food`
--

CREATE TABLE IF NOT EXISTS `crockpot_food` (
  `name` varchar(255) NOT NULL,
  `healthValue` int(11) NOT NULL,
  `hungerValue` decimal(10,0) NOT NULL,
  `sanityValue` int(11) NOT NULL,
  `perishTime` int(11) NOT NULL,
  `cookTime` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `requirements` varchar(255) NOT NULL,
  `fillerRestrictions` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE IF NOT EXISTS `food_items` (
  `name` varchar(255) NOT NULL,
  `healthValue` decimal(11,1) NOT NULL,
  `hungerValue` decimal(11,3) NOT NULL,
  `sanityValue` decimal(11,1) NOT NULL,
  `perishTime` int(11) DEFAULT NULL,
  `foodValue` decimal(11,1) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_items`
--

INSERT INTO `food_items` (`name`, `healthValue`, `hungerValue`, `sanityValue`, `perishTime`, `foodValue`, `category`) VALUES
('Berries', '0.0', '9.375', '0.0', 6, '0.5', 'fruit'),
('Birchnut', '0.0', '0.000', '0.0', 20, NULL, 'etc'),
('Butter', '40.0', '25.000', '0.0', 40, '1.0', 'dairy'),
('Butterfly Wings', '8.0', '9.375', '0.0', 6, NULL, 'etc'),
('Cave Banana', '1.0', '12.500', '0.0', 10, '1.0', 'fruit'),
('Cooked Banana', '3.0', '12.500', '0.0', 6, '1.0', 'fruit'),
('Cooked Eel', '8.0', '13.000', '0.0', 10, '0.5', 'meat'),
('Cooked Egg', '0.0', '12.500', '0.0', 6, '0.0', 'egg'),
('Cooked Fish', '1.0', '12.500', '0.0', 6, '0.5', 'meat'),
('Cooked Frog Legs', '1.0', '12.500', '0.0', 10, '0.5', 'meat'),
('Cooked Meat', '3.0', '25.000', '0.0', 10, '1.0', 'meat'),
('Cooked Monster Meat', '-3.0', '18.750', '-10.0', 15, '1.0', 'meat'),
('Cooked Morsel', '1.0', '12.500', '0.0', 10, '0.5', 'meat'),
('Dragon Fruit', '3.0', '9.375', '0.0', 6, '1.0', 'fruit'),
('Drumstick', '0.0', '12.500', '-10.0', 6, '0.5', 'meat'),
('Durian', '-3.0', '25.000', '-5.0', 10, '1.0', 'fruit'),
('Eel', '3.0', '10.000', '0.0', 6, '0.5', 'meat'),
('Egg', '0.0', '9.375', '0.0', 10, '0.0', 'egg'),
('Electric Milk', '3.0', '12.500', '10.0', 6, '1.0', 'dairy'),
('Extra Smelly Durian', '0.0', '25.000', '-5.0', 6, '1.0', 'fruit'),
('Fish', '1.0', '12.500', '0.0', 3, '0.5', 'meat'),
('Fried Drumstick', '1.0', '12.500', '0.0', 10, '0.5', 'meat'),
('Fried Tallbird Egg', '0.0', '37.500', '0.0', 6, '4.0', 'egg'),
('Frog Legs', '0.0', '12.500', '-10.0', 6, '0.5', 'meat'),
('Grilled Watermelon', '1.0', '12.500', '7.5', 3, '1.0', 'fruit'),
('Honey', '3.0', '9.375', '0.0', 40, NULL, 'sweetener'),
('Honeycomb', '0.0', '0.000', '0.0', NULL, NULL, 'sweetener'),
('Ice', '0.5', '2.300', '0.0', 3, NULL, 'etc'),
('Jerky', '20.0', '25.000', '15.0', 20, '1.0', 'meat'),
('Meat', '1.0', '25.000', '-10.0', 6, '1.0', 'meat'),
('Monster Jerky', '-3.0', '18.750', '-5.0', 20, '1.0', 'meat'),
('Monster Meat', '-20.0', '18.750', '-15.0', 6, '1.0', 'meat'),
('Morsel', '0.0', '12.500', '-10.0', 6, '0.5', 'meat'),
('Pomegranate', '3.0', '9.375', '0.0', 6, '1.0', 'fruit'),
('Prepared Dragon Fruit', '20.0', '12.500', '0.0', 3, '1.0', 'fruit'),
('Roasted Berries', '1.0', '12.500', '0.0', 3, '0.5', 'fruit'),
('Roasted Birchnut', '1.0', '9.375', '0.0', 6, NULL, 'etc'),
('Sliced Pomegranate', '20.0', '12.500', '0.0', 3, '1.0', 'fruit'),
('Small Jerky', '8.0', '12.500', '10.0', 20, '0.5', 'meat'),
('Tallbird Egg', '3.0', '25.000', '0.0', 0, '4.0', 'egg'),
('Twig', '0.0', '0.000', '0.0', NULL, NULL, 'etc'),
('Watermelon', '3.0', '12.500', '5.0', 8, '1.0', 'fruit');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
