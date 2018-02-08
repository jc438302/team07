-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2018 at 07:30 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kohinoor_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `_token` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `quantity`, `_token`, `created_at`) VALUES
(1, 2, 3, 1, 'DKGKKHLY5YxzjT5OfJ1XFPEvrByJefXka939Isvt', '2018-02-04 23:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `delete` enum('0','1') NOT NULL,
  `_token` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `delete`, `_token`) VALUES
(1, 'earrings', '0', 'HRgBBRv0I3U0QTIoE1ciblXKwGKSw9mVZUUWYWdY'),
(2, 'necklaces', '0', 'uHuDC94yKiJHkKt83QcI7r6xCIy5XHqrXKyDKwPJ'),
(3, 'rings', '0', 'uHuDC94yKiJHkKt83QcI7r6xCdIy5XHqrXKyDKwPJ'),
(4, 'bracelets', '0', 'uHuDC9f4yKiJHkKt83QcI7r6xCdIy5XHqrXKyDKwPJ');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` longtext,
  `specification` longtext,
  `returns` longtext,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `_token` varchar(255) NOT NULL,
  `delete` enum('0','1') NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `category_id`, `short_description`, `description`, `specification`, `returns`, `created_at`, `_token`, `delete`, `active`) VALUES
(2, 'Traditional pink earring', 200, '/product/1517644106.jpg', 1, 'this is vey beautifull pink earring', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', NULL, NULL, '2018-02-03 13:18:26', 'snwkGRclGdw5EcaRKEZaTH0IXkqKAp4xFsraqqCU', '0', '1'),
(3, 'Traditional blue jhumka', 100, '/product/1517644236.jpg', 1, 'This is very beautifull traditional jhumke', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', NULL, NULL, '2018-02-03 13:20:36', 'snwkGRclGdw5EcaRKEZaTH0IXkqKAp4xFsraqqCU', '0', '1'),
(4, 'Diamond ring', 5000, '/product/1517644601.png', 2, 'beautiful diamond ring', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', NULL, NULL, '2018-02-03 13:26:41', 'snwkGRclGdw5EcaRKEZaTH0IXkqKAp4xFsraqqCU', '0', '1'),
(5, 'Multi-color beautiful  bracelete', 100, '/product/1517644684.JPG', 4, 'Beautiful multi-color bracelete', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', NULL, NULL, '2018-02-03 13:28:04', 'snwkGRclGdw5EcaRKEZaTH0IXkqKAp4xFsraqqCU', '0', '1'),
(6, 'Hoop Earrings', 1004, '/product/1517679963.jpg', 1, 'Very beautifull hoop earrings', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', NULL, NULL, '2018-02-03 23:16:03', 'bOvXFDy7mBmZabfhI6UFMno5AP7HsGxnw04okwwg', '0', '1'),
(7, 'Barble Earring', 300, '/product/1517680045.jpg', 1, 'Barble Earring', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', NULL, NULL, '2018-02-03 23:17:25', 'bOvXFDy7mBmZabfhI6UFMno5AP7HsGxnw04okwwg', '0', '1'),
(8, 'Huggy Earring', 600, '/product/1517680109.jpg', 1, 'Huggy earring very beautifull', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', NULL, NULL, '2018-02-03 23:18:29', 'bOvXFDy7mBmZabfhI6UFMno5AP7HsGxnw04okwwg', '0', '1'),
(9, 'Danglers To Dazzle', 400, '/product/1517680200.jpg', 1, 'These earrings look gorgeous and they even show through an open hairdo. They go well with suits and anarkalis and you don’t even need to add a necklace if you don’t want to, because these are grand enough!', 'These earrings look gorgeous and they even show through an open hairdo. They go well with suits and anarkalis and you don’t even need to add a necklace if you don’t want to, because these are grand enough!', NULL, NULL, '2018-02-03 23:20:00', 'bOvXFDy7mBmZabfhI6UFMno5AP7HsGxnw04okwwg', '0', '1'),
(10, 'Statement Chandelier Earrings', 500, '/product/1517680379.jpg', 1, 'They’re perfect for adding oodles of glamour to your ensemble. We recommend you keep these for the events where you need to make a statement or want to dress up a simple outfit.', 'They’re perfect for adding oodles of glamour to your ensemble. We recommend you keep these for the events where you need to make a statement or want to dress up a simple outfit.', NULL, NULL, '2018-02-03 23:22:59', 'bOvXFDy7mBmZabfhI6UFMno5AP7HsGxnw04okwwg', '0', '1'),
(11, 'Ear Cuffs', 500, '/product/1517680200.jpg', 1, 'They’re perfect for adding oodles of glamour to your ensemble. We recommend you keep these for the events where you need to make a statement or want to dress up a simple outfit.', 'They’re perfect for adding oodles of glamour to your ensemble. We recommend you keep these for the events where you need to make a statement or want to dress up a simple outfit.', NULL, NULL, '2018-02-03 23:20:00', 'bOvXFDy7mBmZabfhI6UFMno5AP7HsGxnsw04okwwg', '0', '1'),
(12, 'Mismatched Earrings', 500, '/product/1517680200.jpg', 1, 'They’re perfect for adding oodles of glamour to your ensemble. We recommend you keep these for the events where you need to make a statement or want to dress up a simple outfit.', 'They’re perfect for adding oodles of glamour to your ensemble. We recommend you keep these for the events where you need to make a statement or want to dress up a simple outfit.', NULL, NULL, '2018-02-03 23:20:00', 'bOvXFDy7mBmZabfhI6UFMno5AP7HsGxnsw04okwwg', '0', '1'),
(14, 'Jhumka Earrings', 700, '/product/1517680627.jpg', 1, 'Floats on your ear/earlobe without any visible trace of connection ...', 'Floats on your ear/earlobe without any visible trace of connection ...', NULL, NULL, '2018-02-03 23:27:07', 'bOvXFDy7mBmZabfhI6UFMno5AP7HsGxnw04okwwg', '0', '1'),
(15, 'tesd', 2000, '/product/1517759633.jpg', 1, 'testing description', 'test test', NULL, NULL, '2018-02-04 21:23:53', 'HRgBBRv0I3U0QTIoE1ciblXKwGKSw9mVZUUWYWdY', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$OIagySNUIL6FhaEdgS4Z8uHFyxGsOcqZWwPrbu6kjlDXPK0v9QYqe', 'admin', '3HflMIcs7hVaS4eLuNURGfKyntFUXxZxrT2oboSxCCFcvH7cvJiBNQ9iNtcF', '2018-02-02 13:09:55', '2018-02-02 13:09:55'),
(2, 'admin', 'admin@admin.com', '$2y$10$i6QzIZUelrWnAmOSIz2aVeX05Yz14xdYk298JzD9qhjpYXCl64qwC', 'admin', 'NT7hfTtOumhFzb7u6G9vofgPrlPRAFR9AmzAryd6GnXV78xxeG2G7Xxe9Op7', '2018-02-02 13:11:40', '2018-02-02 13:11:40'),
(3, 'test', 'test@gmail.com', '$2y$10$Mh2Xt4o.vEKFdwXQ/Ub5b.Oxsf7Sp51l3gAsO3Y7R21Tz492MXy7e', 'customer', NULL, '2018-02-04 12:01:17', '2018-02-04 12:01:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
