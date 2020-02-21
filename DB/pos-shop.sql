-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2019 at 05:05 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos-shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `Category` text COLLATE utf8_unicode_ci NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `Category`, `Date`) VALUES
(1, 'Frozen Foods', '2019-09-03 01:29:08'),
(2, 'Dairy', '2019-09-03 01:45:43'),
(3, 'JAM & JELLY', '2019-09-03 02:02:39'),
(4, 'SPICES & HERBS', '2019-09-03 02:07:27'),
(5, 'Biscuit & Bakery', '2019-09-03 01:21:33'),
(6, 'DRINKS & BEVERAGES', '2019-09-03 02:23:45'),
(7, 'Baby Items', '2019-09-06 16:58:03'),
(8, 'Noodles and Pasta', '2019-11-12 16:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `idDocument` int(11) NOT NULL,
  `phone` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `purchases` int(11) NOT NULL,
  `lastPurchase` datetime NOT NULL,
  `registerDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `idDocument`, `phone`, `address`, `purchases`, `lastPurchase`, `registerDate`) VALUES
(1, 'Mr Karim', 123, '(015)5567-9999', 'Agrabad, chittagong', 164, '2019-11-12 22:48:11', '2019-11-15 09:56:15'),
(2, 'Mrs Jemmy', 124, '(013)5789-9045', 'Khulshi, Chittagong', 101, '2019-11-15 04:08:59', '2019-11-15 10:08:59'),
(3, 'Abrar Ahamed', 125, '(018)5455-6677', 'Chawkbazar, Chittagong', 80, '2019-11-15 04:10:30', '2019-11-15 10:10:30'),
(4, 'Mr Anwar', 126, '(019)5455-6565', 'Baizid, Chittagong', 279, '2019-11-15 04:12:27', '2019-11-15 10:12:27'),
(5, 'Saad Mahmud', 127, '(012)4522-5556', 'CDA Avenue, Muradpur', 70, '2019-10-06 04:20:14', '2019-10-06 10:20:14'),
(7, 'Tasnia Montaha', 128, '(015)7176-2536', 'Shulakbahar, Punchlaish, Ctg', 55, '2019-09-25 07:57:28', '2019-09-25 01:57:28'),
(8, 'Akash Mahmud', 129, '(015)5154-5124', 'Chawkazar, Chittagong', 3, '2019-11-18 10:28:24', '2019-11-18 04:28:24'),
(9, 'Mr Shuvo', 130, '(015)4128-4152', 'Agrabad, Chittagong', 2, '2019-11-18 10:30:48', '2019-11-18 04:30:48'),
(10, 'Mr Abid', 131, '(015)2145-2152', 'Shulakbahar, Punchlaish', 3, '2019-11-18 12:38:27', '2019-11-18 06:38:27');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `idCategory` int(11) NOT NULL,
  `code` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `buyingPrice` float NOT NULL,
  `sellingPrice` float NOT NULL,
  `sales` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `idCategory`, `code`, `description`, `image`, `stock`, `buyingPrice`, `sellingPrice`, `sales`, `date`) VALUES
(1, 1, '101', 'Jhatpot Wonton', 'views/img/products/101/466.png', 20, 50, 70, 6, '2019-11-09 16:09:26'),
(2, 1, '102', 'Jhatpot Onion Paratha', 'views/img/products/102/964.png', 13, 100, 140, 2, '2019-09-03 01:39:52'),
(3, 1, '103', 'Jhatpot Sausages', 'views/img/products/103/799.png', 13, 300, 420, 7, '2019-11-09 16:09:26'),
(4, 1, '104', 'Jhatpot Spring Roll', 'views/img/products/104/479.png', 21, 400, 560, 9, '2019-11-09 16:09:26'),
(5, 1, '105', 'Jhatpot Samosa', 'views/img/products/105/126.png', 88, 40, 56, 82, '2019-10-03 01:25:29'),
(6, 1, '106', 'Jhatpot Chicken Strip', 'views/img/products/106/420.jpg', 20, 110, 154, 0, '2019-09-03 01:43:07'),
(7, 1, '107', 'Jhatpot Smile Nuggets', 'views/img/products/107/542.jpg', 19, 540, 756, 1, '2019-09-19 03:19:08'),
(18, 2, '108', 'PRAN Matha', 'views/img/products/201/645.jpg', 20, 56, 78.4, 0, '2019-11-14 16:31:43'),
(19, 2, '109', 'PRAN Labang', 'views/img/products/202/749.png', 20, 40, 56, 0, '2019-11-14 16:31:49'),
(20, 2, '110', 'PRAN Cheers Milky Mango Mix', 'views/img/products/203/273.png', 19, 50, 70, 1, '2019-11-14 16:31:53'),
(21, 2, '111', 'PRAN Tak Doi', 'views/img/products/204/513.jpg', 18, 96, 134.4, 2, '2019-11-14 16:32:08'),
(22, 2, '112', 'Sweet Curd', 'views/img/products/205/651.jpg', 20, 80, 112, 0, '2019-11-14 16:32:14'),
(23, 2, '113', 'PRAN Doi Low Fat', 'views/img/products/206/772.jpg', 19, 60, 84, 1, '2019-11-14 16:32:22'),
(24, 2, '114', 'PRAN Yogurt', 'views/img/products/207/977.png', 20, 70, 98, 0, '2019-11-14 16:32:27'),
(25, 3, '115', 'The Chef Hot Tomato Sauce', 'views/img/products/301/573.jpg', 20, 40, 56, 0, '2019-11-14 16:32:34'),
(26, 3, '116', 'PRAN Strawberry Jam', 'views/img/products/302/214.png', 15, 160, 224, 5, '2019-11-14 16:32:44'),
(27, 3, '117', 'PRAN Pineapple Jam', 'views/img/products/303/275.png', 15, 900, 1260, 5, '2019-11-14 16:32:56'),
(28, 3, '118', 'PRAN Orange Jelly', 'views/img/products/304/973.png', 20, 100, 140, 0, '2019-11-14 16:33:01'),
(29, 3, '119', 'PRAN Mixed Fruit Jam', 'views/img/products/305/904.png', 15, 162, 226, 5, '2019-11-14 16:33:04'),
(30, 3, '120', 'PRAN Mango Jam', 'views/img/products/306/920.png', 15, 270, 378, 5, '2019-11-14 16:33:13'),
(31, 3, '121', 'Canton Orange Marmalade', 'views/img/products/307/789.png', 13, 750, 1050, 7, '2019-11-14 16:33:21'),
(32, 3, '122', 'Apple Jelly', 'views/img/products/308/978.png', 15, 168, 235, 5, '2019-11-14 16:33:36'),
(36, 4, '123', 'PRAN Turmeric Powder', 'views/img/products/401/758.jpg', 20, 350, 490, 0, '2019-11-14 16:33:41'),
(37, 4, '124', 'PRAN Tehari Masala', 'views/img/products/402/286.jpg', 20, 35, 49, 0, '2019-11-14 16:33:46'),
(38, 4, '125', 'PRAN Shaader Masala', 'views/img/products/403/936.jpg', 20, 36, 50.4, 0, '2019-11-14 16:33:49'),
(39, 4, '126', 'PRAN Pickle Meat Masala', 'views/img/products/404/193.jpg', 20, 36, 50.4, 0, '2019-11-14 16:34:07'),
(40, 4, '127', 'PRAN Meat Masala', 'views/img/products/405/992.jpg', 20, 37, 51.8, 0, '2019-11-14 16:34:11'),
(41, 4, '128', 'PRAN Kacchi Biryani Masala', 'views/img/products/406/781.jpg', 16, 50, 70, 4, '2019-11-14 16:34:16'),
(42, 4, '129', 'PRAN Ginger Paste', 'views/img/products/407/371.jpg', 20, 38, 53.2, 0, '2019-11-14 16:34:23'),
(43, 4, '130', 'PRAN Garlic Paste', 'views/img/products/408/463.jpg', 20, 50, 70, 0, '2019-11-14 16:34:28'),
(51, 5, '131', 'GoodLife Mozzerella Cheese', 'views/img/products/508/355.jpg', 20, 100, 140, 0, '2019-11-14 16:34:36'),
(52, 5, '132', 'PRAN Dhaka Cheese', 'views/img/products/509/318.jpg', 20, 30, 42, 0, '2019-11-14 16:34:42'),
(54, 5, '133', 'All Time Plain Cake', 'views/img/products/511/458.png', 20, 60, 84, 0, '2019-11-14 16:34:46'),
(55, 5, '134', 'Bisk Club Lexus Biscuit', 'views/img/products/512/917.jpg', 20, 40, 56, 0, '2019-11-14 16:34:51'),
(56, 5, '135', 'PRAN All Time Butter Toast Biscuit', 'views/img/products/513/192.png', 20, 50, 70, 0, '2019-11-14 16:34:57'),
(57, 5, '136', 'All Time Delight Cookie', 'views/img/products/514/805.png', 20, 80, 112, 0, '2019-11-14 16:35:01'),
(58, 5, '137', 'Bisk Club Glucose Biscuit', 'views/img/products/515/760.png', 14, 50, 70, 6, '2019-11-14 16:35:05'),
(59, 5, '138', 'Mama Creamy Crunch', 'views/img/products/516/353.png', 20, 40, 56, 0, '2019-11-14 16:35:11'),
(60, 5, '139', 'Bisk Club Masala Rusk', 'views/img/products/517/235.png', 20, 30, 42, 0, '2019-11-14 16:35:15'),
(63, 2, '140', 'Super Milk', 'views/img/products/208/156.jpg', 34, 60, 84, 19, '2019-11-14 16:35:20'),
(64, 2, '141', 'PRAN Milkman Fulll Cream Instant Milk Powder', 'views/img/products/209/962.png', 39, 350, 490, 1, '2019-11-14 16:35:25'),
(65, 2, '142', 'PRAN Milk Full Cream', 'views/img/products/210/231.jpg', 39, 450, 630, 21, '2019-11-14 16:35:31'),
(66, 2, '143', 'PRAN Premium Ghee', 'views/img/products/211/990.png', 38, 650, 910, 12, '2019-11-14 16:35:44'),
(67, 2, '144', 'Pasteurized Milk', 'views/img/products/212/227.jpg', 35, 250, 350, 0, '2019-11-14 16:35:50'),
(68, 2, '145', 'PRAN Milkman Slim Milk', 'views/img/products/213/527.jpg', 38, 320, 448, 12, '2019-11-14 16:35:55'),
(69, 2, '146', 'PRAN UHT Milk Liquid', 'views/img/products/214/516.jpg', 30, 50, 70, 0, '2019-11-14 16:36:01'),
(70, 2, '147', 'GoodLife Mozzerella Cheese', 'views/img/products/215/229.jpg', 38, 120, 168, 12, '2019-11-14 16:36:06'),
(71, 2, '148', 'PRAN Dhaka Cheese', 'views/img/products/216/795.jpg', 39, 60, 84, 1, '2019-11-14 16:36:09'),
(72, 2, '149', 'PRAN Premium Butter', 'views/img/products/217/351.png', 39, 400, 560, 41, '2019-11-14 16:36:13'),
(73, 4, '150', 'PRAN Fuchka Mix', 'views/img/products/409/345.png', 38, 60, 84, 12, '2019-11-14 16:36:18'),
(74, 4, '151', 'PRAN Fish Masala', 'views/img/products/410/806.jpg', 37, 55, 77, 3, '2019-11-14 16:36:21'),
(75, 4, '152', 'PRAN Borhani Masala', 'views/img/products/411/836.png', 30, 45, 63, 0, '2019-11-14 16:36:26'),
(76, 6, '153', 'PRAN Mango Fruit Drink', 'views/img/products/601/677.png', 17, 60, 84, 13, '2019-11-14 16:36:33'),
(77, 6, '154', 'PRAN Junior Fruit Drink', 'views/img/products/602/669.png', 18, 55, 77, 5, '2019-11-14 16:36:39'),
(78, 6, '155', 'PRAN Junior Mixed Fruit Drink', 'views/img/products/603/973.png', 36, 15, 21, 16, '2019-11-14 16:36:44'),
(79, 6, '156', 'PRAN Joy Mango Drink', 'views/img/products/604/193.png', 21, 30, 42, 9, '2019-11-14 16:36:48'),
(80, 6, '157', 'FruitFun Mango Fruit Drink', 'views/img/products/605/699.jpg', 1, 23, 32.2, 24, '2019-11-14 16:36:52'),
(81, 6, '158', 'PRAN Mango Fruit Drink', 'views/img/products/606/937.png', 8, 35, 49, 32, '2019-11-14 16:36:56'),
(82, 6, '159', 'Frutix', 'views/img/products/607/547.png', 9, 25, 35, 64, '2019-11-15 10:08:58'),
(83, 6, '160', 'Drinko', 'views/img/products/608/737.jpg', 8, 30, 42, 69, '2019-11-15 10:08:58'),
(84, 6, '161', 'PRAN Litchi', 'views/img/products/609/988.png', 84, 40, 50, 51, '2019-11-15 10:12:27'),
(85, 6, '162', 'PRAN Drinking Water', 'views/img/products/610/715.png', 2, 45, 63, 32, '2019-11-15 10:12:27'),
(86, 7, '163', 'Kids Car', 'views/img/products/default/anonymous.png', 55, 450, 630, 71, '2019-11-18 06:38:27'),
(87, 7, '164', 'Tennis Ball', 'views/img/products/default/anonymous.png', 44, 250, 300, 38, '2019-11-18 06:38:27'),
(90, 8, '165', 'Mr Nooldes', 'views/img/products/705/517.jpg', 16, 125, 175, 9, '2019-11-18 06:38:27');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `idCustomer` int(11) NOT NULL,
  `idSeller` int(11) NOT NULL,
  `products` text COLLATE utf8_unicode_ci NOT NULL,
  `tax` int(11) NOT NULL,
  `netPrice` float NOT NULL,
  `totalPrice` float NOT NULL,
  `paymentMethod` text COLLATE utf8_unicode_ci NOT NULL,
  `saledate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `code`, `idCustomer`, `idSeller`, `products`, `tax`, `netPrice`, `totalPrice`, `paymentMethod`, `saledate`) VALUES
(9, 10001, 2, 2, '[{\"id\":\"1\",\"description\":\"Industrial vacuum cleaner\",\"quantity\":\"1\",\"stock\":\"9\",\"price\":\"2100\",\"totalPrice\":\"2100\"},{\"id\":\"2\",\"description\":\"Floating Plate for Palletizer\",\"quantity\":\"1\",\"stock\":\"14\",\"price\":\"6300\",\"totalPrice\":\"6300\"},{\"id\":\"3\",\"description\":\"Air Compressor for painting\",\"quantity\":\"2\",\"stock\":\"18\",\"price\":\"4200\",\"totalPrice\":\"8400\"}]', 3192, 16800, 19992, 'CC-321321321', '2018-11-02 16:54:08'),
(11, 10002, 1, 1, '[{\"id\":\"4\",\"description\":\"Brick Cutter without Disk\",\"quantity\":\"5\",\"stock\":\"20\",\"price\":\"5600\",\"totalPrice\":\"28000\"},{\"id\":\"5\",\"description\":\"Floor Cutter without Disk\",\"quantity\":\"10\",\"stock\":\"20\",\"price\":\"2156\",\"totalPrice\":\"21560\"}]', 9416, 49560, 58976, 'DC-1234512345', '2018-12-04 00:53:28'),
(12, 10003, 3, 1, '[{\"id\":\"5\",\"description\":\"Floor Cutter without Disk\",\"quantity\":\"5\",\"stock\":\"15\",\"price\":\"2156\",\"totalPrice\":\"10780\"}]', 2048, 10780, 12828, 'cash', '2018-12-11 13:44:50'),
(13, 10004, 1, 2, '[{\"id\":\"9\",\"description\":\"Electric Water Washer\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"3640\",\"totalPrice\":\"3640\"}]', 692, 3640, 4332, 'cash', '2019-01-02 01:41:00'),
(14, 10005, 4, 2, '[{\"id\":\"1\",\"description\":\"Jhatpot Wonton\",\"quantity\":\"1\",\"stock\":\"24\",\"price\":\"70\",\"totalPrice\":\"70\"},{\"id\":\"2\",\"description\":\"Jhatpot Onion Paratha\",\"quantity\":\"1\",\"stock\":\"13\",\"price\":\"140\",\"totalPrice\":\"140\"},{\"id\":\"3\",\"description\":\"Jhatpot Sausages\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"420\",\"totalPrice\":\"420\"}]', 63, 630, 693, 'CC-12245', '2019-01-15 01:39:52'),
(15, 10006, 4, 1, '[{\"id\":\"85\",\"description\":\"PRAN Drinking Water\",\"quantity\":\"14\",\"stock\":\"16\",\"price\":\"63\",\"totalPrice\":\"882\"},{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"10\",\"stock\":\"20\",\"price\":\"56\",\"totalPrice\":\"560\"},{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"17\",\"stock\":\"6\",\"price\":\"42\",\"totalPrice\":\"714\"},{\"id\":\"82\",\"description\":\"Frutix\",\"quantity\":\"18\",\"stock\":\"5\",\"price\":\"35\",\"totalPrice\":\"630\"}]', 279, 2786, 3065, 'CC-2415', '2019-01-29 14:27:56'),
(16, 10007, 4, 2, '[{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"5\",\"stock\":\"55\",\"price\":\"42\",\"totalPrice\":\"210\"},{\"id\":\"82\",\"description\":\"Frutix\",\"quantity\":\"17\",\"stock\":\"38\",\"price\":\"35\",\"totalPrice\":\"595\"},{\"id\":\"81\",\"description\":\"PRAN Mango Fruit Drink\",\"quantity\":\"16\",\"stock\":\"24\",\"price\":\"49\",\"totalPrice\":\"784\"},{\"id\":\"80\",\"description\":\"FruitFun Mango Fruit Drink\",\"quantity\":\"18\",\"stock\":\"7\",\"price\":\"32.2\",\"totalPrice\":\"579.6\"}]', 217, 2168.6, 2385.6, 'DC-2541', '2019-02-05 14:47:52'),
(17, 10008, 4, 1, '[{\"id\":\"77\",\"description\":\"PRAN Junior Fruit Drink\",\"quantity\":\"5\",\"stock\":\"18\",\"price\":\"77\",\"totalPrice\":\"385\"},{\"id\":\"78\",\"description\":\"PRAN Junior Mixed Fruit Drink\",\"quantity\":\"7\",\"stock\":\"45\",\"price\":\"21\",\"totalPrice\":\"147\"},{\"id\":\"79\",\"description\":\"PRAN Joy Mango Drink\",\"quantity\":\"8\",\"stock\":\"22\",\"price\":\"42\",\"totalPrice\":\"336\"},{\"id\":\"76\",\"description\":\"PRAN Mango Fruit Drink\",\"quantity\":\"6\",\"stock\":\"24\",\"price\":\"84\",\"totalPrice\":\"504\"}]', 69, 1372, 1441, 'cash', '2019-02-19 18:27:52'),
(18, 10009, 1, 1, '[{\"id\":\"5\",\"description\":\"Jhatpot Samosa\",\"quantity\":\"5\",\"stock\":\"150\",\"price\":\"56\",\"totalPrice\":\"280\"},{\"id\":\"72\",\"description\":\"PRAN Premium Butter\",\"quantity\":\"5\",\"stock\":\"75\",\"price\":\"560\",\"totalPrice\":\"2800\"},{\"id\":\"65\",\"description\":\"PRAN Milk Full Cream\",\"quantity\":\"4\",\"stock\":\"56\",\"price\":\"630\",\"totalPrice\":\"2520\"},{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"5\",\"stock\":\"50\",\"price\":\"42\",\"totalPrice\":\"210\"},{\"id\":\"63\",\"description\":\"Super Milk\",\"quantity\":\"3\",\"stock\":\"50\",\"price\":\"84\",\"totalPrice\":\"252\"}]', 303, 6062, 6365, 'CC-253641', '2019-03-10 01:53:35'),
(19, 10010, 1, 1, '[{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"2\",\"stock\":\"48\",\"price\":\"42\",\"totalPrice\":\"84\"},{\"id\":\"82\",\"description\":\"Frutix\",\"quantity\":\"3\",\"stock\":\"35\",\"price\":\"35\",\"totalPrice\":\"105\"},{\"id\":\"78\",\"description\":\"PRAN Junior Mixed Fruit Drink\",\"quantity\":\"3\",\"stock\":\"42\",\"price\":\"21\",\"totalPrice\":\"63\"},{\"id\":\"76\",\"description\":\"PRAN Mango Fruit Drink\",\"quantity\":\"6\",\"stock\":\"18\",\"price\":\"84\",\"totalPrice\":\"504\"}]', 76, 756, 832, 'DC-35354', '2019-03-25 02:04:21'),
(20, 10011, 3, 1, '[{\"id\":\"32\",\"description\":\"Apple Jelly\",\"quantity\":\"5\",\"stock\":\"15\",\"price\":\"235\",\"totalPrice\":\"1175\"},{\"id\":\"58\",\"description\":\"Bisk Club Glucose Biscuit\",\"quantity\":\"6\",\"stock\":\"14\",\"price\":\"70\",\"totalPrice\":\"420\"},{\"id\":\"31\",\"description\":\"Canton Orange Marmalade\",\"quantity\":\"2\",\"stock\":\"18\",\"price\":\"1050\",\"totalPrice\":\"2100\"}]', 370, 3695, 4065, 'CC-51242', '2019-04-10 02:09:55'),
(21, 10012, 4, 2, '[{\"id\":\"5\",\"description\":\"Jhatpot Samosa\",\"quantity\":\"12\",\"stock\":\"138\",\"price\":\"56\",\"totalPrice\":\"672\"},{\"id\":\"72\",\"description\":\"PRAN Premium Butter\",\"quantity\":\"3\",\"stock\":\"72\",\"price\":\"560\",\"totalPrice\":\"1680\"},{\"id\":\"65\",\"description\":\"PRAN Milk Full Cream\",\"quantity\":\"8\",\"stock\":\"48\",\"price\":\"630\",\"totalPrice\":\"5040\"},{\"id\":\"73\",\"description\":\"PRAN Fuchka Mix\",\"quantity\":\"9\",\"stock\":\"41\",\"price\":\"84\",\"totalPrice\":\"756\"},{\"id\":\"70\",\"description\":\"GoodLife Mozzerella Cheese\",\"quantity\":\"2\",\"stock\":\"48\",\"price\":\"168\",\"totalPrice\":\"336\"}]', 848, 8484, 9332, 'cash', '2019-04-25 02:14:14'),
(22, 10013, 1, 2, '[{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"10\",\"stock\":\"38\",\"price\":\"42\",\"totalPrice\":\"420\"},{\"id\":\"82\",\"description\":\"Frutix\",\"quantity\":\"5\",\"stock\":\"30\",\"price\":\"35\",\"totalPrice\":\"175\"},{\"id\":\"81\",\"description\":\"PRAN Mango Fruit Drink\",\"quantity\":\"10\",\"stock\":\"14\",\"price\":\"49\",\"totalPrice\":\"490\"}]', 109, 1085, 1194, 'CC-02102', '2019-05-10 02:17:57'),
(23, 10014, 2, 2, '[{\"id\":\"5\",\"description\":\"Jhatpot Samosa\",\"quantity\":\"5\",\"stock\":\"133\",\"price\":\"56\",\"totalPrice\":\"280\"},{\"id\":\"72\",\"description\":\"PRAN Premium Butter\",\"quantity\":\"8\",\"stock\":\"64\",\"price\":\"560\",\"totalPrice\":\"4480\"},{\"id\":\"68\",\"description\":\"PRAN Milkman Slim Milk\",\"quantity\":\"9\",\"stock\":\"41\",\"price\":\"448\",\"totalPrice\":\"4032\"},{\"id\":\"66\",\"description\":\"PRAN Premium Ghee\",\"quantity\":\"4\",\"stock\":\"46\",\"price\":\"910\",\"totalPrice\":\"3640\"}]', 1243, 12432, 13675, 'CC-34545', '2019-05-25 02:21:11'),
(24, 10015, 3, 2, '[{\"id\":\"5\",\"description\":\"Jhatpot Samosa\",\"quantity\":\"4\",\"stock\":\"129\",\"price\":\"56\",\"totalPrice\":\"224\"},{\"id\":\"72\",\"description\":\"PRAN Premium Butter\",\"quantity\":\"5\",\"stock\":\"59\",\"price\":\"560\",\"totalPrice\":\"2800\"}]', 454, 3024, 3478, 'cash', '2019-06-10 03:53:42'),
(25, 10016, 1, 1, '[{\"id\":\"5\",\"description\":\"Jhatpot Samosa\",\"quantity\":\"5\",\"stock\":\"124\",\"price\":\"56\",\"totalPrice\":\"280\"},{\"id\":\"72\",\"description\":\"PRAN Premium Butter\",\"quantity\":\"2\",\"stock\":\"57\",\"price\":\"560\",\"totalPrice\":\"1120\"},{\"id\":\"63\",\"description\":\"Super Milk\",\"quantity\":\"7\",\"stock\":\"43\",\"price\":\"84\",\"totalPrice\":\"588\"},{\"id\":\"70\",\"description\":\"GoodLife Mozzerella Cheese\",\"quantity\":\"6\",\"stock\":\"42\",\"price\":\"168\",\"totalPrice\":\"1008\"}]', 449, 2996, 3445, 'cash', '2019-06-25 09:49:05'),
(26, 10017, 1, 1, '[{\"id\":\"5\",\"description\":\"Jhatpot Samosa\",\"quantity\":\"5\",\"stock\":\"119\",\"price\":\"56\",\"totalPrice\":\"280\"}]', 42, 280, 322, 'CC-123435', '2019-07-10 10:36:24'),
(27, 10018, 2, 2, '[{\"id\":\"5\",\"description\":\"Jhatpot Samosa\",\"quantity\":\"2\",\"stock\":\"117\",\"price\":\"56\",\"totalPrice\":\"112\"},{\"id\":\"72\",\"description\":\"PRAN Premium Butter\",\"quantity\":\"7\",\"stock\":\"50\",\"price\":\"560\",\"totalPrice\":\"3920\"},{\"id\":\"65\",\"description\":\"PRAN Milk Full Cream\",\"quantity\":\"8\",\"stock\":\"40\",\"price\":\"630\",\"totalPrice\":\"5040\"},{\"id\":\"66\",\"description\":\"PRAN Premium Ghee\",\"quantity\":\"7\",\"stock\":\"39\",\"price\":\"910\",\"totalPrice\":\"6370\"}]', 2316, 15442, 17758, 'DC-564535', '2019-07-25 11:03:13'),
(28, 10019, 1, 2, '[{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"56\",\"totalPrice\":\"56\"},{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"1\",\"stock\":\"37\",\"price\":\"42\",\"totalPrice\":\"42\"},{\"id\":\"79\",\"description\":\"PRAN Joy Mango Drink\",\"quantity\":\"1\",\"stock\":\"21\",\"price\":\"42\",\"totalPrice\":\"42\"}]', 21, 140, 161, 'DC-124243', '2019-08-05 11:07:57'),
(29, 10020, 2, 2, '[{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"56\",\"totalPrice\":\"56\"}]', 8, 56, 64, 'cash', '2019-08-10 11:09:39'),
(30, 10021, 1, 2, '[{\"id\":\"76\",\"description\":\"PRAN Mango Fruit Drink\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"84\",\"totalPrice\":\"84\"},{\"id\":\"78\",\"description\":\"PRAN Junior Mixed Fruit Drink\",\"quantity\":\"1\",\"stock\":\"41\",\"price\":\"21\",\"totalPrice\":\"21\"}]', 16, 105, 121, 'CC-234564', '2019-08-15 11:10:28'),
(31, 10022, 1, 2, '[{\"id\":\"5\",\"description\":\"Jhatpot Samosa\",\"quantity\":\"1\",\"stock\":\"116\",\"price\":\"56\",\"totalPrice\":\"56\"},{\"id\":\"72\",\"description\":\"PRAN Premium Butter\",\"quantity\":\"1\",\"stock\":\"49\",\"price\":\"560\",\"totalPrice\":\"560\"},{\"id\":\"63\",\"description\":\"Super Milk\",\"quantity\":\"1\",\"stock\":\"42\",\"price\":\"84\",\"totalPrice\":\"84\"}]', 105, 700, 805, 'CC-5536535', '2019-08-20 11:17:32'),
(32, 10023, 2, 2, '[{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"56\",\"totalPrice\":\"56\"},{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"1\",\"stock\":\"36\",\"price\":\"42\",\"totalPrice\":\"42\"},{\"id\":\"82\",\"description\":\"Frutix\",\"quantity\":\"1\",\"stock\":\"29\",\"price\":\"35\",\"totalPrice\":\"35\"}]', 20, 133, 153, 'CC-475757', '2019-08-25 11:18:37'),
(33, 10024, 2, 2, '[{\"id\":\"5\",\"description\":\"Jhatpot Samosa\",\"quantity\":\"1\",\"stock\":\"115\",\"price\":\"56\",\"totalPrice\":\"56\"},{\"id\":\"72\",\"description\":\"PRAN Premium Butter\",\"quantity\":\"1\",\"stock\":\"48\",\"price\":\"560\",\"totalPrice\":\"560\"},{\"id\":\"70\",\"description\":\"GoodLife Mozzerella Cheese\",\"quantity\":\"1\",\"stock\":\"41\",\"price\":\"168\",\"totalPrice\":\"168\"}]', 118, 784, 902, 'CC-274653', '2019-08-30 11:22:56'),
(34, 10025, 2, 2, '[{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"1\",\"stock\":\"35\",\"price\":\"42\",\"totalPrice\":\"42\"}]', 6, 42, 48, 'cash', '2019-09-06 11:27:42'),
(35, 10026, 1, 2, '[{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"1\",\"stock\":\"16\",\"price\":\"56\",\"totalPrice\":\"56\"},{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"1\",\"stock\":\"34\",\"price\":\"42\",\"totalPrice\":\"42\"}]', 15, 98, 113, 'CC-535535', '2019-09-06 12:35:14'),
(36, 10027, 2, 2, '[{\"id\":\"5\",\"description\":\"Jhatpot Samosa\",\"quantity\":\"1\",\"stock\":\"114\",\"price\":\"56\",\"totalPrice\":\"56\"},{\"id\":\"72\",\"description\":\"PRAN Premium Butter\",\"quantity\":\"1\",\"stock\":\"47\",\"price\":\"560\",\"totalPrice\":\"560\"}]', 92, 616, 708, 'CC-532453', '2019-09-06 12:37:15'),
(37, 10028, 1, 2, '[{\"id\":\"85\",\"description\":\"PRAN Drinking Water\",\"quantity\":\"2\",\"stock\":\"12\",\"price\":\"63\",\"totalPrice\":\"126\"},{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"3\",\"stock\":\"13\",\"price\":\"56\",\"totalPrice\":\"168\"},{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"4\",\"stock\":\"30\",\"price\":\"42\",\"totalPrice\":\"168\"},{\"id\":\"82\",\"description\":\"Frutix\",\"quantity\":\"5\",\"stock\":\"24\",\"price\":\"35\",\"totalPrice\":\"175\"}]', 96, 637, 733, 'CC-124335', '2019-09-06 13:50:48'),
(38, 10029, 1, 2, '[{\"id\":\"5\",\"description\":\"Jhatpot Samosa\",\"quantity\":\"2\",\"stock\":\"112\",\"price\":\"56\",\"totalPrice\":\"112\"},{\"id\":\"72\",\"description\":\"PRAN Premium Butter\",\"quantity\":\"2\",\"stock\":\"45\",\"price\":\"560\",\"totalPrice\":\"1120\"},{\"id\":\"63\",\"description\":\"Super Milk\",\"quantity\":\"8\",\"stock\":\"34\",\"price\":\"84\",\"totalPrice\":\"672\"}]', 286, 1904, 2190, 'CC-134568', '2019-09-06 13:55:07'),
(39, 10030, 4, 1, '[{\"id\":\"72\",\"description\":\"PRAN Premium Butter\",\"quantity\":\"1\",\"stock\":\"44\",\"price\":\"560\",\"totalPrice\":\"560\"},{\"id\":\"5\",\"description\":\"Jhatpot Samosa\",\"quantity\":\"2\",\"stock\":\"110\",\"price\":\"56\",\"totalPrice\":\"112\"},{\"id\":\"78\",\"description\":\"PRAN Junior Mixed Fruit Drink\",\"quantity\":\"2\",\"stock\":\"39\",\"price\":\"21\",\"totalPrice\":\"42\"},{\"id\":\"73\",\"description\":\"PRAN Fuchka Mix\",\"quantity\":\"2\",\"stock\":\"39\",\"price\":\"84\",\"totalPrice\":\"168\"}]', 132, 882, 1014, 'CC-4354535', '2019-09-06 14:09:41'),
(40, 10031, 4, 1, '[{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"2\",\"stock\":\"28\",\"price\":\"42\",\"totalPrice\":\"84\"},{\"id\":\"82\",\"description\":\"Frutix\",\"quantity\":\"2\",\"stock\":\"22\",\"price\":\"35\",\"totalPrice\":\"70\"},{\"id\":\"78\",\"description\":\"PRAN Junior Mixed Fruit Drink\",\"quantity\":\"2\",\"stock\":\"37\",\"price\":\"21\",\"totalPrice\":\"42\"}]', 29, 196, 225, 'CC-153858', '2019-09-06 14:20:46'),
(41, 10032, 4, 1, '[{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"1\",\"stock\":\"27\",\"price\":\"42\",\"totalPrice\":\"42\"},{\"id\":\"82\",\"description\":\"Frutix\",\"quantity\":\"1\",\"stock\":\"21\",\"price\":\"35\",\"totalPrice\":\"35\"}]', 12, 77, 89, 'CC-45535', '2019-09-06 14:22:46'),
(42, 10033, 4, 1, '[{\"id\":\"5\",\"description\":\"Jhatpot Samosa\",\"quantity\":\"1\",\"stock\":\"109\",\"price\":\"56\",\"totalPrice\":\"56\"},{\"id\":\"72\",\"description\":\"PRAN Premium Butter\",\"quantity\":\"1\",\"stock\":\"43\",\"price\":\"560\",\"totalPrice\":\"560\"},{\"id\":\"70\",\"description\":\"GoodLife Mozzerella Cheese\",\"quantity\":\"1\",\"stock\":\"40\",\"price\":\"168\",\"totalPrice\":\"168\"},{\"id\":\"68\",\"description\":\"PRAN Milkman Slim Milk\",\"quantity\":\"1\",\"stock\":\"40\",\"price\":\"448\",\"totalPrice\":\"448\"},{\"id\":\"74\",\"description\":\"PRAN Fish Masala\",\"quantity\":\"1\",\"stock\":\"39\",\"price\":\"77\",\"totalPrice\":\"77\"},{\"id\":\"71\",\"description\":\"PRAN Dhaka Cheese\",\"quantity\":\"1\",\"stock\":\"39\",\"price\":\"84\",\"totalPrice\":\"84\"},{\"id\":\"64\",\"description\":\"PRAN Milkman Fulll Cream Instant Milk Powder\",\"quantity\":\"1\",\"stock\":\"39\",\"price\":\"490\",\"totalPrice\":\"490\"},{\"id\":\"73\",\"description\":\"PRAN Fuchka Mix\",\"quantity\":\"1\",\"stock\":\"38\",\"price\":\"84\",\"totalPrice\":\"84\"},{\"id\":\"65\",\"description\":\"PRAN Milk Full Cream\",\"quantity\":\"1\",\"stock\":\"39\",\"price\":\"630\",\"totalPrice\":\"630\"},{\"id\":\"66\",\"description\":\"PRAN Premium Ghee\",\"quantity\":\"1\",\"stock\":\"38\",\"price\":\"910\",\"totalPrice\":\"910\"},{\"id\":\"78\",\"description\":\"PRAN Junior Mixed Fruit Drink\",\"quantity\":\"1\",\"stock\":\"36\",\"price\":\"21\",\"totalPrice\":\"21\"}]', 529, 3528, 4057, 'cash', '2019-09-07 14:08:29'),
(43, 10034, 4, 1, '[{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"5\",\"stock\":\"15\",\"price\":\"630\",\"totalPrice\":\"3150\"},{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"1\",\"stock\":\"26\",\"price\":\"42\",\"totalPrice\":\"42\"},{\"id\":\"82\",\"description\":\"Frutix\",\"quantity\":\"1\",\"stock\":\"20\",\"price\":\"35\",\"totalPrice\":\"35\"}]', 161, 3227, 3388, 'DC-423752', '2019-09-07 14:57:56'),
(44, 10035, 2, 1, '[{\"id\":\"82\",\"description\":\"Frutix\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"35\",\"totalPrice\":\"35\"},{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"5\",\"stock\":\"21\",\"price\":\"42\",\"totalPrice\":\"210\"}]', 12, 245, 257, 'CC-542452', '2019-09-07 15:00:37'),
(45, 10036, 4, 1, '[{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"1\",\"stock\":\"20\",\"price\":\"42\",\"totalPrice\":\"42\"}]', 2, 42, 44, 'CC-452887', '2019-09-07 15:30:14'),
(46, 10037, 2, 1, '[{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"1\",\"stock\":\"12\",\"price\":\"56\",\"totalPrice\":\"56\"}]', 0, 56, 59, 'cash', '2019-09-07 17:57:17'),
(47, 10038, 1, 1, '[{\"id\":\"82\",\"description\":\"Frutix\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"35\",\"totalPrice\":\"35\"}]', 0, 35, 37, 'cash', '2019-09-08 02:54:58'),
(48, 10039, 2, 1, '[{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"1\",\"stock\":\"10\",\"price\":\"56\",\"totalPrice\":\"56\"}]', 3, 56, 59, 'CC-757575', '2019-09-08 03:11:41'),
(56, 10040, 2, 1, '[{\"id\":\"87\",\"description\":\"Ball\",\"quantity\":\"1\",\"stock\":\"7\",\"price\":\"300\",\"totalPrice\":\"300\"}]', 15, 300, 315, 'cash', '2019-09-09 16:51:50'),
(57, 10041, 2, 1, '[{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"2\",\"stock\":\"9\",\"price\":\"630\",\"totalPrice\":\"1260\"}]', 63, 1260, 1323, 'cash', '2019-09-09 17:14:58'),
(58, 10042, 2, 1, '[{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"1\",\"stock\":\"8\",\"price\":\"630\",\"totalPrice\":\"630\"},{\"id\":\"87\",\"description\":\"Ball\",\"quantity\":\"2\",\"stock\":\"5\",\"price\":\"300\",\"totalPrice\":\"600\"}]', 62, 1230, 1292, 'cash', '2019-09-10 00:27:45'),
(60, 10043, 1, 1, '[{\"id\":\"87\",\"description\":\"Ball\",\"quantity\":\"1\",\"stock\":\"4\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"1\",\"stock\":\"7\",\"price\":\"630\",\"totalPrice\":\"630\"}]', 47, 930, 977, 'cash', '2019-09-17 01:32:53'),
(61, 10044, 2, 1, '[{\"id\":\"87\",\"description\":\"Ball\",\"quantity\":\"1\",\"stock\":\"3\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"1\",\"stock\":\"6\",\"price\":\"630\",\"totalPrice\":\"630\"}]', 47, 930, 977, 'cash', '2019-09-17 03:37:05'),
(62, 10045, 1, 1, '[{\"id\":\"87\",\"description\":\"Ball\",\"quantity\":\"1\",\"stock\":\"2\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"1\",\"stock\":\"5\",\"price\":\"630\",\"totalPrice\":\"630\"}]', 47, 930, 977, 'cash', '2019-09-17 10:22:41'),
(63, 10046, 5, 1, '[{\"id\":\"88\",\"description\":\"Teddy Bear\",\"quantity\":\"1\",\"stock\":\"14\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"87\",\"description\":\"Ball\",\"quantity\":\"1\",\"stock\":\"1\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"1\",\"stock\":\"4\",\"price\":\"630\",\"totalPrice\":\"630\"}]', 62, 1230, 1292, 'cash', '2019-09-17 14:56:44'),
(64, 10047, 5, 2, '[{\"id\":\"88\",\"description\":\"Teddy Bear\",\"quantity\":\"1\",\"stock\":\"13\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"87\",\"description\":\"Ball\",\"quantity\":\"1\",\"stock\":\"0\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"1\",\"stock\":\"3\",\"price\":\"630\",\"totalPrice\":\"630\"}]', 62, 1230, 1292, 'cash', '2019-09-18 01:35:25'),
(65, 10048, 5, 2, '[{\"id\":\"88\",\"description\":\"Teddy Bear\",\"quantity\":\"1\",\"stock\":\"12\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"1\",\"stock\":\"2\",\"price\":\"630\",\"totalPrice\":\"630\"}]', 47, 930, 977, 'cash', '2019-09-18 01:52:13'),
(66, 10049, 5, 2, '[{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"1\",\"stock\":\"1\",\"price\":\"630\",\"totalPrice\":\"630\"},{\"id\":\"88\",\"description\":\"Teddy Bear\",\"quantity\":\"1\",\"stock\":\"11\",\"price\":\"300\",\"totalPrice\":\"300\"}]', 47, 930, 977, 'cash', '2019-09-18 02:08:19'),
(67, 10050, 5, 2, '[{\"id\":\"88\",\"description\":\"Teddy Bear\",\"quantity\":\"1\",\"stock\":\"10\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"1\",\"stock\":\"0\",\"price\":\"630\",\"totalPrice\":\"630\"}]', 47, 930, 977, 'cash', '2019-09-18 02:36:27'),
(68, 10051, 5, 1, '[{\"id\":\"88\",\"description\":\"Teddy Bear\",\"quantity\":\"6\",\"stock\":\"4\",\"price\":\"300\",\"totalPrice\":\"1800\"}]', 90, 1800, 1890, 'cash', '2019-09-18 02:40:18'),
(69, 10052, 2, 1, '[{\"id\":\"88\",\"description\":\"Teddy Bear\",\"quantity\":\"1\",\"stock\":\"3\",\"price\":\"300\",\"totalPrice\":\"300\"}]', 15, 300, 315, 'cash', '2019-09-18 07:44:38'),
(70, 10053, 5, 1, '[{\"id\":\"88\",\"description\":\"Teddy Bear\",\"quantity\":\"1\",\"stock\":\"2\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"85\",\"description\":\"PRAN Drinking Water\",\"quantity\":\"1\",\"stock\":\"11\",\"price\":\"63\",\"totalPrice\":\"63\"},{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"1\",\"stock\":\"9\",\"price\":\"56\",\"totalPrice\":\"56\"},{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"42\",\"totalPrice\":\"42\"}]', 23, 461, 484, 'cash', '2019-09-18 07:52:33'),
(71, 10054, 5, 1, '[{\"id\":\"87\",\"description\":\"Tennis Ball\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"88\",\"description\":\"Teddy Bear\",\"quantity\":\"1\",\"stock\":\"25\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"1\",\"stock\":\"39\",\"price\":\"630\",\"totalPrice\":\"630\"}]', 62, 1230, 1292, 'cash', '2019-09-19 02:35:19'),
(72, 10055, 7, 1, '[{\"id\":\"88\",\"description\":\"Teddy Bear\",\"quantity\":\"1\",\"stock\":\"24\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"87\",\"description\":\"Tennis Ball\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"42\",\"totalPrice\":\"42\"},{\"id\":\"80\",\"description\":\"FruitFun Mango Fruit Drink\",\"quantity\":\"1\",\"stock\":\"6\",\"price\":\"32.2\",\"totalPrice\":\"32.2\"},{\"id\":\"82\",\"description\":\"Frutix\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"35\",\"totalPrice\":\"35\"},{\"id\":\"23\",\"description\":\"PRAN Doi Low Fat\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"84\",\"totalPrice\":\"84\"},{\"id\":\"20\",\"description\":\"PRAN Cheers Milky Mango Mix\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"70\",\"totalPrice\":\"70\"},{\"id\":\"7\",\"description\":\"Jhatpot Smile Nuggets\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"756\",\"totalPrice\":\"756\"}]', 81, 1619.2, 1700.2, 'cash', '2019-09-19 03:19:09'),
(73, 10056, 7, 1, '[{\"id\":\"88\",\"description\":\"Teddy Bear\",\"quantity\":\"5\",\"stock\":\"19\",\"price\":\"300\",\"totalPrice\":\"1500\"},{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"3\",\"stock\":\"106\",\"price\":\"50\",\"totalPrice\":\"150\"},{\"id\":\"21\",\"description\":\"PRAN Tak Doi\",\"quantity\":\"2\",\"stock\":\"18\",\"price\":\"134.4\",\"totalPrice\":\"268.8\"},{\"id\":\"41\",\"description\":\"PRAN Kacchi Biryani Masala\",\"quantity\":\"4\",\"stock\":\"16\",\"price\":\"70\",\"totalPrice\":\"280\"}]', 110, 2198.8, 2308.8, 'cash', '2019-09-19 05:59:27'),
(74, 10057, 7, 1, '[{\"id\":\"88\",\"description\":\"Teddy Bear\",\"quantity\":\"8\",\"stock\":\"11\",\"price\":\"300\",\"totalPrice\":\"2400\"},{\"id\":\"87\",\"description\":\"Tennis Ball\",\"quantity\":\"3\",\"stock\":\"15\",\"price\":\"300\",\"totalPrice\":\"900\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"8\",\"stock\":\"31\",\"price\":\"630\",\"totalPrice\":\"5040\"}]', 417, 8340, 8757, 'cash', '2019-09-21 08:04:38'),
(75, 10058, 7, 1, '[{\"id\":\"88\",\"description\":\"Teddy Bear\",\"quantity\":\"1\",\"stock\":\"10\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"87\",\"description\":\"Tennis Ball\",\"quantity\":\"1\",\"stock\":\"14\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"1\",\"stock\":\"30\",\"price\":\"630\",\"totalPrice\":\"630\"}]', 62, 1230, 1292, 'cash', '2019-09-21 08:49:21'),
(76, 10059, 7, 1, '[{\"id\":\"5\",\"description\":\"Jhatpot Samosa\",\"quantity\":\"2\",\"stock\":\"107\",\"price\":\"56\",\"totalPrice\":\"112\"},{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"3\",\"stock\":\"103\",\"price\":\"50\",\"totalPrice\":\"150\"},{\"id\":\"72\",\"description\":\"PRAN Premium Butter\",\"quantity\":\"4\",\"stock\":\"39\",\"price\":\"560\",\"totalPrice\":\"2240\"},{\"id\":\"70\",\"description\":\"GoodLife Mozzerella Cheese\",\"quantity\":\"2\",\"stock\":\"38\",\"price\":\"168\",\"totalPrice\":\"336\"}]', 142, 2838, 2980, 'cash', '2019-09-25 01:57:28'),
(77, 10060, 5, 2, '[{\"id\":\"5\",\"description\":\"Jhatpot Samosa\",\"quantity\":\"2\",\"stock\":\"105\",\"price\":\"56\",\"totalPrice\":\"112\"},{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"2\",\"stock\":\"101\",\"price\":\"50\",\"totalPrice\":\"100\"},{\"id\":\"68\",\"description\":\"PRAN Milkman Slim Milk\",\"quantity\":\"2\",\"stock\":\"38\",\"price\":\"448\",\"totalPrice\":\"896\"},{\"id\":\"74\",\"description\":\"PRAN Fish Masala\",\"quantity\":\"2\",\"stock\":\"37\",\"price\":\"77\",\"totalPrice\":\"154\"}]', 63, 1262, 1325, 'cash', '2019-09-25 02:01:26'),
(78, 10061, 1, 1, '[{\"id\":\"88\",\"description\":\"Teddy Bear\",\"quantity\":\"1\",\"stock\":\"9\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"87\",\"description\":\"Tennis Ball\",\"quantity\":\"1\",\"stock\":\"13\",\"price\":\"300\",\"totalPrice\":\"300\"}]', 30, 600, 630, 'cash', '2019-09-29 08:51:31'),
(79, 10062, 5, 1, '[{\"id\":\"88\",\"description\":\"Teddy Bear\",\"quantity\":\"1\",\"stock\":\"7\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"87\",\"description\":\"Tennis Ball\",\"quantity\":\"1\",\"stock\":\"11\",\"price\":\"300\",\"totalPrice\":\"300\"}]', 30, 600, 630, 'cash', '2019-09-29 13:54:34'),
(80, 10063, 1, 1, '[{\"id\":\"88\",\"description\":\"Teddy Bear\",\"quantity\":\"1\",\"stock\":\"6\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"87\",\"description\":\"Tennis Ball\",\"quantity\":\"1\",\"stock\":\"10\",\"price\":\"300\",\"totalPrice\":\"300\"}]', 30, 600, 630, 'cash', '2019-09-30 14:40:10'),
(81, 10064, 5, 1, '[{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"2\",\"stock\":\"99\",\"price\":\"50\",\"totalPrice\":\"100\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"13\",\"stock\":\"16\",\"price\":\"630\",\"totalPrice\":\"8190\"},{\"id\":\"5\",\"description\":\"Jhatpot Samosa\",\"quantity\":\"17\",\"stock\":\"88\",\"price\":\"56\",\"totalPrice\":\"952\"}]', 462, 9242, 9704, 'cash', '2019-10-03 01:25:29'),
(82, 10065, 2, 1, '[{\"id\":\"87\",\"description\":\"Tennis Ball\",\"quantity\":\"1\",\"stock\":\"9\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"1\",\"stock\":\"15\",\"price\":\"630\",\"totalPrice\":\"630\"},{\"id\":\"85\",\"description\":\"PRAN Drinking Water\",\"quantity\":\"1\",\"stock\":\"12\",\"price\":\"63\",\"totalPrice\":\"63\"}]', 50, 993, 1043, 'cash', '2019-10-05 13:57:27'),
(83, 10066, 5, 1, '[{\"id\":\"85\",\"description\":\"PRAN Drinking Water\",\"quantity\":\"1\",\"stock\":\"11\",\"price\":\"63\",\"totalPrice\":\"63\"},{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"1\",\"stock\":\"98\",\"price\":\"50\",\"totalPrice\":\"50\"},{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"42\",\"totalPrice\":\"42\"}]', 8, 155, 163, 'cash', '2019-10-06 10:20:14'),
(84, 10067, 2, 1, '[{\"id\":\"85\",\"description\":\"PRAN Drinking Water\",\"quantity\":\"1\",\"stock\":\"10\",\"price\":\"63\",\"totalPrice\":\"63\"},{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"1\",\"stock\":\"97\",\"price\":\"50\",\"totalPrice\":\"50\"},{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"1\",\"stock\":\"16\",\"price\":\"42\",\"totalPrice\":\"42\"}]', 8, 155, 163, 'CC-12888482', '2019-10-12 05:27:11'),
(85, 10068, 4, 1, '[{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"1\",\"stock\":\"14\",\"price\":\"630\",\"totalPrice\":\"630\"},{\"id\":\"85\",\"description\":\"PRAN Drinking Water\",\"quantity\":\"1\",\"stock\":\"9\",\"price\":\"63\",\"totalPrice\":\"63\"},{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"1\",\"stock\":\"96\",\"price\":\"50\",\"totalPrice\":\"50\"}]', 37, 743, 780, 'cash', '2019-10-16 09:10:52'),
(86, 10069, 4, 1, '[{\"id\":\"88\",\"description\":\"Teddy Bear\",\"quantity\":\"2\",\"stock\":\"4\",\"price\":\"300\",\"totalPrice\":\"600\"},{\"id\":\"87\",\"description\":\"Tennis Ball\",\"quantity\":\"2\",\"stock\":\"7\",\"price\":\"300\",\"totalPrice\":\"600\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"2\",\"stock\":\"12\",\"price\":\"630\",\"totalPrice\":\"1260\"},{\"id\":\"85\",\"description\":\"PRAN Drinking Water\",\"quantity\":\"2\",\"stock\":\"7\",\"price\":\"63\",\"totalPrice\":\"126\"},{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"2\",\"stock\":\"94\",\"price\":\"50\",\"totalPrice\":\"100\"},{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"2\",\"stock\":\"14\",\"price\":\"42\",\"totalPrice\":\"84\"},{\"id\":\"82\",\"description\":\"Frutix\",\"quantity\":\"2\",\"stock\":\"15\",\"price\":\"35\",\"totalPrice\":\"70\"},{\"id\":\"81\",\"description\":\"PRAN Mango Fruit Drink\",\"quantity\":\"2\",\"stock\":\"12\",\"price\":\"49\",\"totalPrice\":\"98\"},{\"id\":\"80\",\"description\":\"FruitFun Mango Fruit Drink\",\"quantity\":\"2\",\"stock\":\"4\",\"price\":\"32.2\",\"totalPrice\":\"64.4\"}]', 150, 3002.4, 3152.4, 'cash', '2019-10-19 15:19:28'),
(87, 10070, 3, 1, '[{\"id\":\"87\",\"description\":\"Tennis Ball\",\"quantity\":\"1\",\"stock\":\"6\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"1\",\"stock\":\"11\",\"price\":\"630\",\"totalPrice\":\"630\"},{\"id\":\"85\",\"description\":\"PRAN Drinking Water\",\"quantity\":\"1\",\"stock\":\"6\",\"price\":\"63\",\"totalPrice\":\"63\"}]', 50, 993, 1043, 'cash', '2019-10-24 02:23:58'),
(88, 10071, 4, 1, '[{\"id\":\"88\",\"description\":\"Teddy Bear\",\"quantity\":\"3\",\"stock\":\"1\",\"price\":\"300\",\"totalPrice\":\"900\"},{\"id\":\"87\",\"description\":\"Tennis Ball\",\"quantity\":\"3\",\"stock\":\"3\",\"price\":\"300\",\"totalPrice\":\"900\"},{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"3\",\"stock\":\"91\",\"price\":\"50\",\"totalPrice\":\"150\"},{\"id\":\"80\",\"description\":\"FruitFun Mango Fruit Drink\",\"quantity\":\"3\",\"stock\":\"1\",\"price\":\"32.2\",\"totalPrice\":\"96.6\"},{\"id\":\"81\",\"description\":\"PRAN Mango Fruit Drink\",\"quantity\":\"4\",\"stock\":\"8\",\"price\":\"49\",\"totalPrice\":\"196\"},{\"id\":\"82\",\"description\":\"Frutix\",\"quantity\":\"5\",\"stock\":\"10\",\"price\":\"35\",\"totalPrice\":\"175\"},{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"5\",\"stock\":\"9\",\"price\":\"42\",\"totalPrice\":\"210\"}]', 131, 2627.6, 2758.6, 'cash', '2019-11-09 16:05:36'),
(89, 10072, 3, 1, '[{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"5\",\"stock\":\"6\",\"price\":\"630\",\"totalPrice\":\"3150\"},{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"5\",\"stock\":\"86\",\"price\":\"50\",\"totalPrice\":\"250\"},{\"id\":\"27\",\"description\":\"PRAN Pineapple Jam\",\"quantity\":\"5\",\"stock\":\"15\",\"price\":\"1260\",\"totalPrice\":\"6300\"},{\"id\":\"29\",\"description\":\"PRAN Mixed Fruit Jam\",\"quantity\":\"5\",\"stock\":\"15\",\"price\":\"226\",\"totalPrice\":\"1130\"},{\"id\":\"30\",\"description\":\"PRAN Mango Jam\",\"quantity\":\"5\",\"stock\":\"15\",\"price\":\"378\",\"totalPrice\":\"1890\"},{\"id\":\"31\",\"description\":\"Canton Orange Marmalade\",\"quantity\":\"5\",\"stock\":\"13\",\"price\":\"1050\",\"totalPrice\":\"5250\"},{\"id\":\"26\",\"description\":\"PRAN Strawberry Jam\",\"quantity\":\"5\",\"stock\":\"15\",\"price\":\"224\",\"totalPrice\":\"1120\"},{\"id\":\"1\",\"description\":\"Jhatpot Wonton\",\"quantity\":\"4\",\"stock\":\"20\",\"price\":\"70\",\"totalPrice\":\"280\"},{\"id\":\"3\",\"description\":\"Jhatpot Sausages\",\"quantity\":\"4\",\"stock\":\"13\",\"price\":\"420\",\"totalPrice\":\"1680\"},{\"id\":\"4\",\"description\":\"Jhatpot Spring Roll\",\"quantity\":\"4\",\"stock\":\"21\",\"price\":\"560\",\"totalPrice\":\"2240\"}]', 1165, 23290, 24455, 'cash', '2019-11-09 16:09:27'),
(90, 10073, 1, 2, '[{\"id\":\"88\",\"description\":\"Teddy Bear\",\"quantity\":\"1\",\"stock\":\"0\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"87\",\"description\":\"Tennis Ball\",\"quantity\":\"2\",\"stock\":\"1\",\"price\":\"300\",\"totalPrice\":\"600\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"2\",\"stock\":\"4\",\"price\":\"630\",\"totalPrice\":\"1260\"}]', 108, 2160, 2268, 'cash', '2019-11-10 05:48:55'),
(91, 10074, 1, 2, '[{\"id\":\"90\",\"description\":\"Mr Nooldes\",\"quantity\":\"3\",\"stock\":\"22\",\"price\":\"150\",\"totalPrice\":\"450\"},{\"id\":\"89\",\"description\":\"Pineapple Jelly\",\"quantity\":\"3\",\"stock\":\"32\",\"price\":\"385\",\"totalPrice\":\"1155\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"3\",\"stock\":\"0\",\"price\":\"630\",\"totalPrice\":\"1890\"},{\"id\":\"85\",\"description\":\"PRAN Drinking Water\",\"quantity\":\"3\",\"stock\":\"3\",\"price\":\"63\",\"totalPrice\":\"189\"}]', 184, 3684, 3868, 'cash', '2019-11-12 16:48:11'),
(93, 10075, 2, 1, '[{\"id\":\"90\",\"description\":\"Mr Nooldes\",\"quantity\":\"1\",\"stock\":\"21\",\"price\":\"175\",\"totalPrice\":\"175\"},{\"id\":\"87\",\"description\":\"Tennis Ball\",\"quantity\":\"1\",\"stock\":\"49\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"1\",\"stock\":\"59\",\"price\":\"630\",\"totalPrice\":\"630\"},{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"1\",\"stock\":\"85\",\"price\":\"50\",\"totalPrice\":\"50\"},{\"id\":\"83\",\"description\":\"Drinko\",\"quantity\":\"1\",\"stock\":\"8\",\"price\":\"42\",\"totalPrice\":\"42\"},{\"id\":\"82\",\"description\":\"Frutix\",\"quantity\":\"1\",\"stock\":\"9\",\"price\":\"35\",\"totalPrice\":\"35\"}]', 62, 1232, 1294, 'cash', '2019-11-15 10:08:59'),
(94, 10076, 3, 1, '[{\"id\":\"90\",\"description\":\"Mr Nooldes\",\"quantity\":\"1\",\"stock\":\"20\",\"price\":\"175\",\"totalPrice\":\"175\"},{\"id\":\"87\",\"description\":\"Tennis Ball\",\"quantity\":\"1\",\"stock\":\"48\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"1\",\"stock\":\"58\",\"price\":\"630\",\"totalPrice\":\"630\"}]', 55, 1105, 1160, 'cash', '2019-11-15 10:10:30'),
(95, 10077, 4, 1, '[{\"id\":\"90\",\"description\":\"Mr Nooldes\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"175\",\"totalPrice\":\"175\"},{\"id\":\"87\",\"description\":\"Tennis Ball\",\"quantity\":\"1\",\"stock\":\"47\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"1\",\"stock\":\"57\",\"price\":\"630\",\"totalPrice\":\"630\"},{\"id\":\"85\",\"description\":\"PRAN Drinking Water\",\"quantity\":\"1\",\"stock\":\"2\",\"price\":\"63\",\"totalPrice\":\"63\"},{\"id\":\"84\",\"description\":\"PRAN Litchi\",\"quantity\":\"1\",\"stock\":\"84\",\"price\":\"50\",\"totalPrice\":\"50\"}]', 61, 1218, 1279, 'cash', '2019-11-15 10:12:27'),
(96, 10078, 8, 1, '[{\"id\":\"90\",\"description\":\"Mr Nooldes\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"175\",\"totalPrice\":\"175\"},{\"id\":\"87\",\"description\":\"Tennis Ball\",\"quantity\":\"1\",\"stock\":\"46\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"1\",\"stock\":\"56\",\"price\":\"630\",\"totalPrice\":\"630\"}]', 55, 1105, 1160, 'cash', '2019-11-18 04:28:24'),
(97, 10079, 9, 1, '[{\"id\":\"90\",\"description\":\"Mr Nooldes\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"175\",\"totalPrice\":\"175\"},{\"id\":\"87\",\"description\":\"Tennis Ball\",\"quantity\":\"1\",\"stock\":\"45\",\"price\":\"300\",\"totalPrice\":\"300\"}]', 24, 475, 499, 'cash', '2019-11-18 04:30:48'),
(98, 10080, 10, 1, '[{\"id\":\"90\",\"description\":\"Mr Nooldes\",\"quantity\":\"1\",\"stock\":\"16\",\"price\":\"175\",\"totalPrice\":\"175\"},{\"id\":\"87\",\"description\":\"Tennis Ball\",\"quantity\":\"1\",\"stock\":\"44\",\"price\":\"300\",\"totalPrice\":\"300\"},{\"id\":\"86\",\"description\":\"Kids Car\",\"quantity\":\"1\",\"stock\":\"55\",\"price\":\"630\",\"totalPrice\":\"630\"}]', 55, 1105, 1160, 'cash', '2019-11-18 06:38:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `user` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `profile` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL,
  `lastLogin` datetime NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vatReg` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user`, `password`, `profile`, `photo`, `status`, `lastLogin`, `date`, `vatReg`, `address`, `phone`, `email`) VALUES
(1, 'Omar Sharif Ansary', 'omar', '$2a$07$asxx54ahjppf45sd87a5auIpT2eWchptsIjldrFfLJ93RH6wYxLFS', 'Administrator', 'views/img/users/omar/839.jpg', 1, '2019-11-19 09:33:53', '2019-11-19 03:33:53', 'sm123321', 'CDA Avenue, Chattogram', '01521212121', 'sales@super-market.com'),
(2, 'Aminur Rahaman', 'amin', '$2a$07$asxx54ahjppf45sd87a5auHRSPpGTP70E8G8kIKG27og2dzI/yiPa', 'Seller', 'views/img/users/amin/514.jpg', 1, '2019-11-12 10:46:48', '2019-11-12 16:46:48', 'sm123321', 'CDA Avenue, Chattogram', '01521212121', 'sales@super-market.com'),
(3, 'Mr Juan', 'juan', '$2a$07$asxx54ahjppf45sd87a5auwRi.z6UsW7kVIpm0CUEuCpmsvT2sG6O', 'Special', 'views/img/users/juan/215.jpg', 1, '2019-11-12 10:45:17', '2019-11-12 16:45:17', 'sm123321', 'CDA Avenue, Chattogram', '01521212121', 'sales@super-market.com'),
(4, 'Mr Akhil ', 'akhil', '$2a$07$asxx54ahjppf45sd87a5aunpwA4S6DJz9RRKT.Cw9oLhIHMq4EeTW', 'seller', 'views/img/users/akhil/100.jpg', 0, '2019-11-12 09:01:10', '2019-11-14 16:04:25', '', '', '', ''),
(5, 'mr abir', 'abir', '$2a$07$asxx54ahjppf45sd87a5au4OQQgjwJy36W9Q1dq4J9CPjMY/Mi1wu', 'seller', 'views/img/users/abir/628.png', 0, '0000-00-00 00:00:00', '2019-11-14 16:04:26', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
