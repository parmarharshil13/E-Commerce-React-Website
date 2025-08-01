-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 09, 2024 at 01:01 PM
-- Server version: 5.7.36
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react-ecom-demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `email`, `image`, `categoryName`, `caption`, `price`, `quantity`, `created_at`) VALUES
(1, 'gokozuhi@mailinator.com', 'https://res.cloudinary.com/dhd9snyq6/image/upload/v1686432479/Shopping%20Cart/WomensWear7_gkzzgz.jpg', 'Ledies T-Shirt', 'Shop Women\'s Clothing', '300.00', 1, '2024-02-09 12:45:16');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `caption` text NOT NULL,
  `price` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `type`, `image`, `categoryName`, `caption`, `price`) VALUES
(1, 'mens', 'https://res.cloudinary.com/dhd9snyq6/image/upload/v1686419362/MensWear_ndhcji.jpg', 'Mens overSized T-Shirt', 'This is a Mens Tshirt', 100),
(2, 'mens', 'https://res.cloudinary.com/dhd9snyq6/image/upload/v1686419415/MensWear2_k1pfqi.jpg', 'Smart Watch', 'Noise Samrt Watch with the fitness Features', 200),
(3, 'mens', 'https://res.cloudinary.com/dhd9snyq6/image/upload/v1686419477/Shoes1_yuuydj.jpg', 'Nike Shoes', 'Nike Perrot Green Sport Shoes', 900),
(4, 'mens', 'https://res.cloudinary.com/dhd9snyq6/image/upload/v1686432657/MensWear8_xbhdxw.jpg', 'Nike Shoes', 'Nike Air Jordan Green', 100),
(5, 'mens', 'https://res.cloudinary.com/dhd9snyq6/image/upload/v1686432657/MensWear7_xkf6wt.jpg', 'Men\'s Track T-shirt', 'T shirt and track for mens', 500),
(6, 'mens', 'https://res.cloudinary.com/dhd9snyq6/image/upload/v1686432657/MensWear6_ssto0r.jpg', 'Men\'s Track T-shirt', 'T shirt and track for mens', 800),
(7, 'mens', 'https://res.cloudinary.com/dhd9snyq6/image/upload/v1686432658/MensWear5_gaienj.jpg', 'Shorts And Swatter', 'Shop Men\'s Clothing', 500),
(8, 'mens', 'https://res.cloudinary.com/dhd9snyq6/image/upload/v1686432658/MensWear4_kur2va.jpg', 'Mens Suit', 'Shop Men\'s Clothing', 300),
(9, 'Women', 'https://res.cloudinary.com/dhd9snyq6/image/upload/v1686419866/Shopping%20Cart/WomensWear_nilkmd.jpg', 'Women\'s T-shirt', 'Shop Women\'s Clothing', 300),
(10, 'Women', 'https://res.cloudinary.com/dhd9snyq6/image/upload/v1686419876/Shopping%20Cart/WomensWear2_sbdzva.jpg', 'Necklece', 'Women\'sNnacklace', 300),
(11, 'Women', 'https://res.cloudinary.com/dhd9snyq6/image/upload/v1686419876/Shopping%20Cart/WomensWear3_iwgbok.jpg', 'Women\'s Hair Oil', 'Women\'s Hair Oil', 300),
(12, 'Women', 'https://res.cloudinary.com/dhd9snyq6/image/upload/v1686419875/Shopping%20Cart/WomensWear4_torcuv.jpg', 'Shaker', 'Shaker', 300),
(13, 'Women', 'https://res.cloudinary.com/dhd9snyq6/image/upload/v1686432479/Shopping%20Cart/WomensWear6_x7bt5p.jpg', 'Set of Yellow clothes', 'Set of Yellow clothes', 300),
(14, 'Women', 'https://res.cloudinary.com/dhd9snyq6/image/upload/v1686432479/Shopping%20Cart/WomensWear.5jpg_zmylrs.jpg', 'Dress', 'Shop Women\'s Clothing', 300),
(15, 'Women', 'https://res.cloudinary.com/dhd9snyq6/image/upload/v1686432479/Shopping%20Cart/WomensWear7_gkzzgz.jpg', 'Ledies T-Shirt', 'Shop Women\'s Clothing', 300),
(16, 'gifts', 'https://res.cloudinary.com/dhd9snyq6/image/upload/v1686419875/Shopping%20Cart/WomensWear4_torcuv.jpg', 'Shaker with can', 'Shaker with can', 300),
(17, 'gifts', 'https://res.cloudinary.com/dhd9snyq6/image/upload/v1686419876/Shopping%20Cart/WomensWear3_iwgbok.jpg', 'Women\'s Hair Oil', 'Women\'s Hair Oil', 300),
(18, 'gifts', 'https://res.cloudinary.com/dhd9snyq6/image/upload/v1686432923/Shopping%20Cart/gift2_tecolc.jpg', 'Show Peace', 'Art of Indian Culture', 300),
(19, 'gifts', 'https://res.cloudinary.com/dhd9snyq6/image/upload/v1686432923/Shopping%20Cart/gift3_mmlq2u.jpg', 'Classic glass', 'Classic glass', 200);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `products` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `orderID` varchar(50) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `orderDate` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `products`, `email`, `username`, `orderID`, `subtotal`, `orderDate`, `created_at`) VALUES
(1, '', 'gokozuhi@mailinator.com', 'gubice', '#174961', '0.00', 'Feb 9, 2024 06:15 PM', '2024-02-09 12:45:50'),
(2, '', 'gokozuhi@mailinator.com', 'gubice', '#337219', '0.00', 'Feb 9, 2024 06:21 PM', '2024-02-09 12:51:17'),
(3, '', 'gokozuhi@mailinator.com', 'gubice', '#842581', '0.00', 'Feb 9, 2024 06:24 PM', '2024-02-09 12:54:26'),
(4, '[{\"image\":\"https://res.cloudinary.com/dhd9snyq6/image/upload/v1686432479/Shopping%20Cart/WomensWear7_gkzzgz.jpg\",\"categoryName\":\"Ledies T-Shirt\",\"caption\":\"Shop Women\'s Clothing\",\"price\":300,\"quantity\":1}]', 'gokozuhi@mailinator.com', 'gubice', '#277289', '300.00', 'Feb 9, 2024 06:29 PM', '2024-02-09 12:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_details`
--

DROP TABLE IF EXISTS `shipping_details`;
CREATE TABLE IF NOT EXISTS `shipping_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `state` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `zipCode` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_details`
--

INSERT INTO `shipping_details` (`id`, `address`, `city`, `email`, `fullName`, `state`, `username`, `zipCode`, `created_at`) VALUES
(1, 'Excellent WebWorld, Science City Road', 'athens', 'gokozuhi@mailinator.com', 'Manthan Parmar', 'Western Macedonia', 'gubice', '10431', '2024-02-09 12:45:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'gubice', 'gokozuhi@mailinator.com', 'Manthan@123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
