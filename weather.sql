-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2019 at 11:25 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weather`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(6,3) NOT NULL,
  `longitude` decimal(6,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `state`, `name`, `latitude`, `longitude`) VALUES
(1, 'Australian Capital Territory', 'Canberra', '-35.310', '149.140'),
(2, 'New South Wales', 'Sydney', '-33.790', '151.270'),
(3, 'New South Wales', 'Bathurst', '-33.910', '149.330'),
(4, 'New South Wales', 'Newcastle', '-32.940', '151.770'),
(5, 'New South Wales', 'Wollongong', '-34.440', '150.890'),
(6, 'New South Wales', 'Wagga Wagga', '-35.160', '147.510'),
(7, 'New South Wales', 'Coffs Harbour', '-30.340', '153.070'),
(8, 'New South Wales', 'Tamworth', '-30.960', '150.830'),
(9, 'New South Wales', 'Port Macquarie', '-31.400', '152.850'),
(10, 'New South Wales', 'Orange', '-33.120', '149.030'),
(11, 'New South Wales', 'Dubbo', '-32.200', '148.900'),
(12, 'New South Wales', 'Lismore', '-28.610', '153.040'),
(13, 'Victoria', 'Melbourne', '-37.810', '144.970'),
(14, 'Victoria', 'Geelong', '-38.180', '145.110'),
(15, 'Victoria', 'Ballarat', '-37.560', '143.820'),
(16, 'Victoria', 'Bendigo', '-36.760', '144.280'),
(17, 'Victoria', 'Mildura', '-34.180', '142.160'),
(18, 'Victoria', 'Shepparton', '-36.360', '145.400'),
(19, 'Victoria', 'Warrnambool', '-38.360', '142.440'),
(20, 'Queensland', 'Brisbane', '-27.470', '153.030'),
(21, 'Queensland', 'Townsville', '-19.250', '146.800'),
(22, 'Queensland', 'Cairns', '-16.880', '145.750'),
(23, 'Queensland', 'Toowoomba', '-27.620', '151.770'),
(24, 'Queensland', 'Mackay', '-21.160', '149.100'),
(25, 'Queensland', 'Rockhampton', '-23.390', '150.500'),
(26, 'Queensland', 'Bundaberg', '-24.840', '152.020'),
(27, 'Queensland', 'Hervey Bay', '-25.350', '152.890'),
(28, 'Queensland', 'Gladstone', '-31.060', '152.770'),
(29, 'Western Australia', 'Perth', '-31.920', '115.910'),
(30, 'Western Australia', 'Mandurah', '-32.550', '115.750'),
(31, 'Western Australia', 'Bunbury', '-36.240', '139.970'),
(32, 'Western Australia', 'Geraldton', '-28.790', '114.600'),
(33, 'Southern Australia', 'Adelaide', '-34.930', '138.600'),
(34, 'Northern Territory', 'Darwin', '-12.800', '130.960'),
(35, 'Tasmania', 'Launceston', '-41.460', '147.080');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
