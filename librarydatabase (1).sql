-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2020 at 06:20 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookborrowed`
--

CREATE TABLE `bookborrowed` (
  `id` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `accountId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `bookTitle` varchar(255) NOT NULL,
  `bookAuthor` varchar(255) NOT NULL,
  `numOfBorr` varchar(255) NOT NULL,
  `TotalBook` varchar(255) NOT NULL,
  `bookAvailable` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `bookTitle`, `bookAuthor`, `numOfBorr`, `TotalBook`, `bookAvailable`) VALUES
(40, 'Goodnight Moon', 'Margaret Brown', '0', '100', '100'),
(41, 'The Very Hungry Caterpillar', 'Eric Carle', '0', '100', '100'),
(42, 'Where the Wild Things Are ', 'Maurice Sendak', '0', '100', '100'),
(43, 'The Cat in the Hat', 'Dr. Seuss', '0', '100', '100'),
(44, 'Charlotte’s Web', 'E. B. White ', '0', '100', '100'),
(45, 'Harold and the Purple Crayon', 'Crockett Johnson', '0', '100', '100'),
(46, 'Charlie and the Chocolate Factory', 'Roald Dahl', '0', '100', '100'),
(47, 'Little Women', 'Louis May Alcott', '0', '100', '100'),
(48, 'Harry Potter and the Philosopher’s Stone', 'J. K. Rowling ', '0', '100', '100'),
(49, 'The Chronicles of Narnia', 'C.S.Lewis', '0', '100', '100');

-- --------------------------------------------------------

--
-- Table structure for table `borrowers`
--

CREATE TABLE `borrowers` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrowers`
--

INSERT INTO `borrowers` (`id`, `firstname`, `lastname`, `address`, `username`, `password`) VALUES
(7, 'john dave', 'pacinio', 'Talisay, Santa Fe, Cebu', 'johnstiger', 'john'),
(8, 'Alyssa Rod', 'Alojacin', 'Pooc', 'alyssumelishat@gmail.com', 'alyssa'),
(9, 'kyla jean', 'dumaguit', '', 'kyladumaguit', 'kyla'),
(10, 'John Dave', 'Pacinio', 'Talisay', 'john@gmail.com', 'john'),
(11, 'john dave', 'pacinio', '', 'killerme', '123'),
(12, 'john dave', 'pacinio', 'Talisay', 'johnstiger@gmail.com', 'johnstiger'),
(13, 'ez', 'ez', 'hh', 'ez', 'ez'),
(14, 'asdfghj', 'sdfghjk', '', 'aa', 'aa'),
(15, 'shenna', 'caneda', 'Leyte', 'shena@gmai.com', 'sheena');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookborrowed`
--
ALTER TABLE `bookborrowed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accountId` (`accountId`),
  ADD KEY `bookId` (`bookId`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrowers`
--
ALTER TABLE `borrowers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookborrowed`
--
ALTER TABLE `bookborrowed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `borrowers`
--
ALTER TABLE `borrowers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookborrowed`
--
ALTER TABLE `bookborrowed`
  ADD CONSTRAINT `accountId` FOREIGN KEY (`accountId`) REFERENCES `borrowers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookId` FOREIGN KEY (`bookId`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
