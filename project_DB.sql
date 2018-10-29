-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2018 at 07:42 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
  `id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exercise`
--

CREATE TABLE `exercise` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL,
  `age` int(2) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `firstname`, `lastname`, `nickname`, `gender`, `age`, `phone`, `email`) VALUES
(1, 0, '123', '1234', '', 'female', 23, 0, ''),
(2, 0, '123', '1234', '', 'female', 23, 0, ''),
(3, 0, '123', '1234', '', 'female', 23, 0, ''),
(4, 0, '123', '1234', '', 'female', 23, 0, ''),
(5, 0, '987654', '76671234', '', 'male', 75, 0, ''),
(6, 0, '987654', '76671234', '', 'male', 75, 0, ''),
(7, 0, '987654', '76671234', '', 'male', 75, 0, ''),
(8, 0, '987654', '76671234', '', 'male', 75, 0, ''),
(9, 0, '987654', '76671234', '', 'male', 75, 0, ''),
(10, 0, '987654', '76671234', '', 'male', 75, 0, ''),
(11, 0, '987654', '76671234', '', 'male', 75, 0, ''),
(12, 0, 'dasdasd', 'asdasd', '', 'male', 1234, 0, ''),
(13, 0, 'dasdasd', 'asdasd', '', 'male', 1234, 0, ''),
(14, 0, 'dasdasd', 'asdasd', '', 'male', 1234, 0, ''),
(15, 0, 'dasdasd', 'asdasd', '', 'male', 1234, 0, ''),
(16, 0, 'asdasd', 'asdasd', '', 'male', 123, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(2, 'asdasd', 'asdsad', '2018-10-29', '2018-10-29'),
(3, 'asdasd', 'asdsad', '2018-10-29', '2018-10-29'),
(4, 'asdasd', 'asdsad', '2018-10-29', '2018-10-29'),
(5, 'asdasd', 'asdsad', '2018-10-29', '2018-10-29'),
(6, 'fyjhuhui', 'ihuhiulosdrf', '2018-10-29', '2018-10-29'),
(7, 'fyjhuhui', 'ihuhiulosdrf', '2018-10-29', '2018-10-29'),
(8, 'fyjhuhui', 'ihuhiulosdrf', '2018-10-29', '2018-10-29'),
(9, 'fyjhuhui', 'ihuhiulosdrf', '2018-10-29', '2018-10-29'),
(10, 'fyjhuhui', 'ihuhiulosdrf', '2018-10-29', '2018-10-29'),
(11, 'fyjhuhui', 'ihuhiulosdrf', '2018-10-29', '2018-10-29'),
(12, 'fyjhuhui', 'ihuhiulosdrf', '2018-10-29', '2018-10-29'),
(13, 'asdas', 'dasdas', '2018-10-29', '2018-10-29'),
(14, 'asdas', 'dasdas', '2018-10-29', '2018-10-29'),
(15, 'asdas', 'dasdas', '2018-10-29', '2018-10-29'),
(16, 'asdas', 'dasdas', '2018-10-29', '2018-10-29'),
(17, 'asd', 'asdasd', '2018-10-29', '2018-10-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercise`
--
ALTER TABLE `exercise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
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
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exercise`
--
ALTER TABLE `exercise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
