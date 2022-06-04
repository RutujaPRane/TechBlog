-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 04, 2022 at 05:40 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `name`, `description`) VALUES
(1, 'Java', 'Java is a programming language and a platform. Java is a high level, robust, object-oriented and secure programming language. '),
(2, 'Python', 'Python is a general purpose, dynamic, high-level, and interpreted programming language. It supports Object Oriented programming approach to develop applications'),
(3, 'C Language', 'C is a general-purpose programming language, developed in 1972, and still quite popular. C is very powerful; it has been used to develop operating systems, databases, applications, etc'),
(4, 'JavaScript', 'JavaScript is the world\'s most popular programming language. JavaScript is the programming language of the Web. JavaScript is easy to learn');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `pid` int(11) NOT NULL,
  `pTitle` varchar(100) NOT NULL,
  `pContent` longtext DEFAULT NULL,
  `pCode` longtext DEFAULT NULL,
  `pPic` varchar(111) NOT NULL,
  `pDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `catId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`pid`, `pTitle`, `pContent`, `pCode`, `pPic`, `pDate`, `catId`, `userId`) VALUES
(4, 'java programming', 'Java is a powerful general-purpose programming language. It is used to develop desktop and mobile applications, big data processing, embedded systems, and so on. According to Oracle, the company that owns Java, Java runs on 3 billion devices worldwide, which makes Java one of the most popular programming languages.', '', 'javablog.png', '2022-06-04 03:35:54', 1, 1),
(5, 'python Programming', 'Python is a powerful general-purpose programming language. It is used in web development, data science, creating software prototypes, and so on. Fortunately for beginners, Python has simple easy-to-use syntax. This makes Python an excellent language to learn to program for beginners.\r\n\r\n', '', 'pythonblog.png', '2022-06-04 03:37:34', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `about` longtext DEFAULT NULL,
  `rdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `profile` varchar(222) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `gender`, `about`, `rdate`, `profile`) VALUES
(1, 'Rutuja Rane', 'rutuja@gmail.com', 'rutuja', 'female', 'Hi,  I spend most of my working days writing code for web applications\r\n                                                ', '2022-06-04 03:34:31', 'profile.jpg'),
(2, 'Vihaan Rane', 'vihaan@gmail.com', 'vihaan', 'male', 'Hi I\'m a Programmer\r\n                                                ', '2022-06-04 03:36:41', 'profile1.png'),
(3, 'Athiya Shetty', 'athiya@gmail.com', 'athiya', 'female', 'Hi, I\'m a Software Developer', '2022-06-04 03:34:04', 'default.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `catId` (`catId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `categories` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
