-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 07:22 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(1, 'Administrador', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(3, 'Pollos Fritos', 'Food_Category_983.jpg', 'Yes', 'Yes'),
(4, 'Pizzas', 'Food_Category_69.jpg', 'Yes', 'Yes'),
(5, 'Burgões', 'Food_Category_767.jpg', 'Yes', 'Yes'),
(6, 'Tacos', 'Food_Category_95.jpg', 'No', 'Yes'),
(7, 'Sobremesas', 'Food_Category_646.jpg', 'No', 'Yes'),
(8, 'Bebidas', 'Food_Category_86.jpg', 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES 
(1, 'Pollos Fritos | Médio', 'Porção média de frangos fritos', '9.00', 'Food-Name-8949.jpg', '3', 'No', 'Yes'), 
(2, 'Pollos Fritos | Grande', 'Porção de frangos fritos + combo', '21.00', 'Food-Name-6576.webp', '3', 'Yes', 'Yes'), 
(3, 'Pollos Fritos | Balde', 'Balde de frangos fritos', '25.00', 'Food-Name-7263.webp', '3', 'Yes', 'Yes'), 
(4, 'Burgão', 'Burgão com bacon e queijo', '16.00', 'Food-Name-6340.jpg', '5', 'Yes', 'Yes'), 
(5, 'Pizza Muçarela', 'Pizza de Muçarela', '25.00', 'Food-Name-133.jpg', '4', 'Yes', 'Yes'), 
(6, 'Pizza Calabresa', 'Pizza de calabresa e cebola', '25.00', 'Food-Name-1453.jpg', '4', 'Yes', 'Yes'), 
(7, 'Pizza Toscana', 'Pizza de muçarela e calabresa', '25.00', 'Food-Name-7694.jpg', '4', 'Yes', 'Yes'), 
(8, 'Taco Pollo™', 'Taco de frango', '10.00', 'Food-Name-2220.jpg', '6', 'No', 'Yes'), 
(9, 'Taco de Carne', 'Taco de carne', '10.00', 'Food-Name-8300.jpg', '6', 'No', 'Yes'), 
(10, 'Bolo de Chocolate', 'Fatia de bolo com recheio de chocolate', '12.00', 'Food-Name-4766.jpg', '7', 'No', 'Yes'), 
(11, 'Tigela de Açaí', 'Porção de tigela de Açaí', '7.00', 'Food-Name-5159.jpg', '7', 'No', 'Yes'), 
(12, 'Fanta Laranja | 330ml', 'Lata de Fanta laranja de 330ml', '7.00', 'Food-Name-9880.jpg', '8', 'No', 'Yes'), 
(13, 'Coca-Cola | 330ml', 'Lata de Coca-Cola de 330ml', '7.00', 'Food-Name-6762.jpg', '8', 'No', 'Yes');


-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 'Burgão', '16.00', 3, '48.00', '2020-11-30 03:49:48', 'Entregue', 'Gustavo Luz', '+55 (11) 1234-5678', 'guluz@example.com', 'Rua Rua 153'),
(2, 'Pizza Muçarela', '25.00', 2, '50.00', '2020-11-30 03:52:43', 'A caminho de entrega', 'Gustavo Emiliano', '+55 (11) 4321-5678', 'gustavoem@example.com', 'Rua Avenida 177');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
