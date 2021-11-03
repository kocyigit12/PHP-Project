-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2021 at 09:30 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(2, 'Pioneer'),
(3, 'Sony'),
(4, 'Philips\r\n'),
(5, 'Lenco');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_image` varchar(300) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `total_amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amount`) VALUES
(79, 11, '0.0.0.0', 2, 'Baby Shirt', 'babyshirt.JPG', 1, 500, 500),
(80, 2, '0.0.0.0', 2, 'iPhone 5s', 'iphonemobile.JPG', 1, 25000, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_price` int(100) NOT NULL,
  `p_qty` int(100) NOT NULL,
  `p_status` varchar(100) NOT NULL,
  `tr_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id`, `uid`, `pid`, `p_name`, `p_price`, `p_qty`, `p_status`, `tr_id`) VALUES
(36, 6, 5, 'Lenco LS-10', 25000, 1, 'CONFIRMED', '515723816'),
(37, 6, 3, 'Philips OTT2000B/12', 30000, 1, 'CONFIRMED', '515723816'),
(38, 6, 2, 'Sony PS-LX310BT', 1500, 1, 'CONFIRMED', '515723816'),
(39, 6, 1, 'Pioneer Plx-500-K ', 4500, 1, 'CONFIRMED', '515723816'),
(40, 6, 1, 'Pioneer Plx-500-K ', 22500, 5, 'CONFIRMED', '231037537'),
(41, 8, 6, 'Lenco TCD-2600', 15000, 1, 'CONFIRMED', '1793966505'),
(42, 8, 2, 'Sony PS-LX310BT', 1500, 1, 'CONFIRMED', '286314223'),
(43, 8, 3, 'Philips OTT2000B/12', 30000, 1, 'CONFIRMED', '286314223'),
(44, 8, 6, 'Lenco TCD-2600', 15000, 1, 'CONFIRMED', '286314223'),
(45, 9, 1, 'Pioneer Plx-500-K ', 4500, 1, 'CONFIRMED', '406161011'),
(46, 9, 2, 'Sony PS-LX310BT', 1500, 1, 'CONFIRMED', '1125715183'),
(47, 9, 3, 'Philips OTT2000B/12', 30000, 1, 'CONFIRMED', '1125715183'),
(48, 9, 1, 'Pioneer Plx-500-K ', 4500, 1, 'CONFIRMED', '1474644412'),
(49, 9, 2, 'Sony PS-LX310BT', 1500, 1, 'CONFIRMED', '825940736'),
(50, 9, 3, 'Philips OTT2000B/12', 60000, 2, 'CONFIRMED', '405052119'),
(51, 9, 2, 'Sony PS-LX310BT', 1500, 1, 'CONFIRMED', '405052119'),
(52, 9, 3, 'Philips OTT2000B/12', 150000, 5, 'CONFIRMED', '773519935');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_brand` varchar(100) NOT NULL,
  `product_title` varchar(50) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, '2', 'Pioneer Plx-500-K ', 4500, 'Pioneer Plx-500-K Profesyonel Dj Pikap', 'Pioneer.JPG', 'Profesyonel Dj Pikap'),
(2, '3', 'Sony PS-LX310BT', 1500, 'Stereo Pikap', 'Sony.JPG', 'Stereo Pikap'),
(3, '4', 'Philips OTT2000B/12', 30000, 'Philips OTT2000B/12 Bluetooth Pikap', 'philips.jpg', 'Bluetooth Pikap'),
(4, '5', 'Lenco TCD-2500', 10000, 'Lenco TCD-2500 Retro Pikap Lenco Tcd 2500\r\n\r\nGerçek müzik severlerin markasi.', 'Lenco1.JPG', 'Retro Pikap'),
(5, '5', 'Lenco LS-10', 25000, '\r\nLenco LS-10 WD Ahsap Pikap\r\n\r\n', 'Lenco2.JPG', 'Ahsap Pikap');

-- --------------------------------------------------------

--
-- Table structure for table `received_payment`
--

CREATE TABLE `received_payment` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `amt` int(100) NOT NULL,
  `tr_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(8, 'Satyam', 'Kumar', 'psli1msli2@gmail.com', '56939820a4b4a094511923349314ac79', '5346373719', 'at?fbey mah', 'mercanlar st no 16'),
(9, 'Abdul', 'Raj', 'yigitk016@gmail.com', '4297f44b13955235245b2497399d7a93', '5326373715', 'izmir/gaziemir/at?fbey mah./', '62. sokak / mercanlar sitesi no 16 kat 1 daire 2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `received_payment`
--
ALTER TABLE `received_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `received_payment`
--
ALTER TABLE `received_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
