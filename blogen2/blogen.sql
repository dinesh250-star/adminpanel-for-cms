-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2021 at 10:12 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogen`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_panel`
--

CREATE TABLE `admin_panel` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_panel`
--

INSERT INTO `admin_panel` (`id`, `name`, `email`, `password`) VALUES
(15, 'Dinesh Lakshmanan', 'dineshlakshman2001@gmail.com', 'd'),
(16, 'ankit', 'ankit@gmail.com', 'd'),
(17, 'mayank', 'mayank@gmail.com', 'd'),
(18, 'bhavin', 'bhavin@gmail.com', 'd'),
(19, 'bhargav', 'bhargav@gmail.com', 'd'),
(20, 'nitheesh', 'nitheesh@gmail.com', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `body` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `category`, `image`, `body`, `date`) VALUES
(16, 'PHP', 'WEB DEVELOPMENT', 'fg.jpg', '<p>PHP IS BACKEND LANGUAGE</p>\r\n', '2021-03-21'),
(17, 'JAVA', 'SOFTWARE DEVELOPMENT', 'dinesh (1).JPG', '<p>JAVA IS SOFTWARE</p>\r\n', '2021-03-21'),
(18, 'PYTHON', 'MACHINE LEARNING', 'ff.jpg', '<p>ASDFASDF</p>\r\n', '2021-03-21'),
(19, 'C#', 'GAME DEVELOPMENT', 'bnb.jpg', '<p>ASDFDSAF</p>\r\n', '2021-03-21'),
(20, 'C++', 'COMPETITIVE PROGRAMMING', 'dinesh (1).JPG', '<p>ASDFSADF</p>\r\n', '2021-03-21'),
(21, 'REACT', 'FRONTEND', 'fg.jpg', '<p>ASDFSADF</p>\r\n', '2021-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `title`, `date`) VALUES
(21, 'WEB DEVELOPMENT', '2021-03-21'),
(22, 'SOFTWARE DEVELOPMENT', '2021-03-21'),
(23, 'MACHINE LEARNING', '2021-03-21'),
(24, 'GAME DEVELOPMENT', '2021-03-21'),
(25, 'COMPETITIVE PROGRAMMING', '2021-03-21'),
(26, 'FRONTEND', '2021-03-21'),
(27, 'ANDROID DEVELOPMENT', '2021-03-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_panel`
--
ALTER TABLE `admin_panel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_panel`
--
ALTER TABLE `admin_panel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
