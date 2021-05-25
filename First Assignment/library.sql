Name: Md Sazid Ahmed Tonmoy
Id: 1911498642

-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2021 at 03:54 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BOOK_ID` int(11) NOT NULL,
  `TITLE` varchar(20) DEFAULT NULL,
  `PUB_YEAR` varchar(20) DEFAULT NULL,
  `PUBLISHER_NAME` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BOOK_ID`, `TITLE`, `PUB_YEAR`, `PUBLISHER_NAME`) VALUES
(1, 'DBMS', 'JAN-2017', 'MCGRAW-HILL'),
(2, 'ADBMS', 'JUN-2016', 'MCGRAW-HILL'),
(3, 'CN', 'SEP-2016', 'PEARSON'),
(4, 'CG', 'SEP-2015', 'GRUPO PLANETA'),
(5, 'OS', 'MAY-2016', 'PEARSON');

-- --------------------------------------------------------

--
-- Table structure for table `book_authors`
--

CREATE TABLE `book_authors` (
  `AUTHOR_NAME` varchar(20) NOT NULL,
  `BOOK_ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_authors`
--

INSERT INTO `book_authors` (`AUTHOR_NAME`, `BOOK_ID`) VALUES
('NAVATHE', 1),
('NAVATHE', 2),
('TANENBAUM', 3),
('EDWARD ANGEL', 4),
('GALVIN', 5);

-- --------------------------------------------------------

--
-- Table structure for table `book_copies`
--

CREATE TABLE `book_copies` (
  `NO_OF_COPIES` int(11) DEFAULT NULL,
  `BOOK_ID` bigint(20) NOT NULL,
  `BRANCH_ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_copies`
--

INSERT INTO `book_copies` (`NO_OF_COPIES`, `BOOK_ID`, `BRANCH_ID`) VALUES
(10, 1, 10),
(5, 1, 11),
(2, 2, 12),
(5, 2, 13),
(7, 3, 14),
(3, 4, 11),
(1, 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `book_lending`
--

CREATE TABLE `book_lending` (
  `DATE_OUT` date DEFAULT NULL,
  `DUE_DATE` date DEFAULT NULL,
  `BOOK_ID` bigint(20) NOT NULL,
  `BRANCH_ID` bigint(20) NOT NULL,
  `CARD_NO` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_lending`
--

INSERT INTO `book_lending` (`DATE_OUT`, `DUE_DATE`, `BOOK_ID`, `BRANCH_ID`, `CARD_NO`) VALUES
('2017-01-01', '2017-06-01', 1, 10, 101),
('2017-04-12', '2017-05-12', 1, 11, 104),
('2017-02-21', '2017-04-21', 2, 13, 101),
('2017-01-11', '2017-03-11', 3, 14, 101),
('2017-03-15', '2017-07-15', 4, 11, 101);

-- --------------------------------------------------------

--
-- Table structure for table `library_branch`
--

CREATE TABLE `library_branch` (
  `BRANCH_ID` int(11) NOT NULL,
  `BRANCH_NAME` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library_branch`
--

INSERT INTO `library_branch` (`BRANCH_ID`, `BRANCH_NAME`, `ADDRESS`) VALUES
(10, 'RR NAGAR', 'BANGALORE'),
(11, 'RNSIT', 'BANGALORE'),
(12, 'RAJAJI NAGAR', 'BANGALORE'),
(13, 'NITTE', 'MANGALORE'),
(14, 'MANIPAL', 'UDUPI');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `NAME` varchar(20) NOT NULL,
  `PHONE` bigint(20) DEFAULT NULL,
  `ADDRESS` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`NAME`, `PHONE`, `ADDRESS`) VALUES
('GRUPO PLANETA', 7756120238, 'BANGALORE'),
('HACHETTE LIVRE', 8970862340, 'CHENAI'),
('MCGRAW-HILL', 9989076587, 'BANGALORE'),
('PEARSON', 9889076565, 'NEWDELHI'),
('RANDOM HOUSE', 7455679345, 'HYDRABAD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BOOK_ID`);

--
-- Indexes for table `book_authors`
--
ALTER TABLE `book_authors`
  ADD PRIMARY KEY (`BOOK_ID`,`AUTHOR_NAME`);

--
-- Indexes for table `book_copies`
--
ALTER TABLE `book_copies`
  ADD PRIMARY KEY (`BOOK_ID`,`BRANCH_ID`);

--
-- Indexes for table `book_lending`
--
ALTER TABLE `book_lending`
  ADD PRIMARY KEY (`BOOK_ID`,`BRANCH_ID`,`CARD_NO`);

--
-- Indexes for table `library_branch`
--
ALTER TABLE `library_branch`
  ADD PRIMARY KEY (`BRANCH_ID`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`NAME`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
