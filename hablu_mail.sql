-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 12:11 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hablu_mail`
--

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `reciver_id` int(10) NOT NULL,
  `sender_mail` varchar(50) NOT NULL,
  `reciver_mail` varchar(50) NOT NULL,
  `mail_subject` varchar(200) NOT NULL,
  `mail_content` longtext NOT NULL,
  `mail_date` varchar(20) NOT NULL,
  `mail_time` varchar(20) NOT NULL,
  `mail_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`id`, `sender_id`, `reciver_id`, `sender_mail`, `reciver_mail`, `mail_subject`, `mail_content`, `mail_date`, `mail_time`, `mail_status`) VALUES
(4, 1, 1, 'tarik@hablumail.com', 'tarik@hablumail.com', 'just test mail', 'qqqq', '05-05-2020', '04:43:06', 'inbox'),
(5, 1, 1, 'tarik@hablumail.com', 'tarik@hablumail.com', 'it is my second message', 'hello mr/', '05-05-2020', '04:55:35', 'inbox'),
(6, 1, 2, 'tarik@hablumail.com', 'hablu@hublumail.com', 'need to online metting very early', 'hello........', '05-05-2020', '04:57:19', 'inbox');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `memberID` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `gender` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `profile_pic_url` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `resetToken` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `resetComplete` varchar(3) COLLATE utf8mb4_bin DEFAULT 'No'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`memberID`, `first_name`, `last_name`, `username`, `password`, `email`, `address`, `gender`, `profile_pic_url`, `active`, `resetToken`, `resetComplete`) VALUES
(1, 'Tarik', 'Billa', 'tarik', '$2y$10$1JlX1HHfmmuy6y6mVgurCu6LlD1mD8xZo663HWPLRAVneKgwA0JZK', 'tarik@hablumail.com', 'Jessore', 'Male', 'tarik.png', 'Yes', NULL, 'No'),
(2, 'Mr.', 'Hablu', 'hablu', '$2y$10$S9rSqQbLXfoNiW1PXeNoY.cZQqcph53jhErQcebhceankGgtgyE2m', 'hablu@hublumail.com', '', '', 'hablu.png', 'Yes', NULL, 'No');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`memberID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `memberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
