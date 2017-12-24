-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2017 at 04:07 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Username` varchar(20) NOT NULL,
  `Name_of_person` varchar(30) NOT NULL,
  `pasword` varchar(30) NOT NULL,
  `Sec_ques` tinytext NOT NULL,
  `Answer` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Username`, `Name_of_person`, `pasword`, `Sec_ques`, `Answer`) VALUES
('Shipra ', 'ShipraRai', 'Sipra123', 'What is your childhood name?', 'Shipu'),
('Pankaj_kumar', 'Pankaj', 'pkd@1234', 'what is your Mother tounge?', 'hindi'),
('shailli_12', 'Shailendar', 'Shailli', 'what is your Mother tounge?', 'hindi');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `Book_Id` int(11) NOT NULL,
  `Name_Of_Book` varchar(30) NOT NULL,
  `Edition` int(20) NOT NULL,
  `Publisher` varchar(30) NOT NULL,
  `Price` int(30) NOT NULL,
  `Pages` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Book_Id`, `Name_Of_Book`, `Edition`, `Publisher`, `Price`, `Pages`) VALUES
(404, 'Physics', 7, 'M L khanna', 400, 700),
(951, 'c++', 10, 'Balaguruswamy', 700, 800),
(379, 'java', 7, 'Balaguruswamy', 300, 400),
(551, 'maths', 8, 'jjlk', 789, 567),
(611, 'Biology', 7, 'NCERT', 400, 567);

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `Book_Id` int(11) NOT NULL,
  `Name_Of_Book` char(20) NOT NULL,
  `Edition` int(20) NOT NULL,
  `Publisher` char(30) NOT NULL,
  `Price` int(20) NOT NULL,
  `Pages` int(20) NOT NULL,
  `Student_Id` varchar(30) NOT NULL,
  `Date_of_Issue` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`Book_Id`, `Name_Of_Book`, `Edition`, `Publisher`, `Price`, `Pages`, `Student_Id`, `Date_of_Issue`) VALUES
(404, 'Physics', 7, 'M L khanna', 400, 700, 'Pankaj_kumar', 'Dec 22, 2017'),
(551, 'maths', 8, 'jjlk', 789, 567, 'Shipra', 'Dec 23, 2017'),
(611, 'Biology', 7, 'NCERT', 400, 567, 'shailli_12', 'Dec 21, 2017'),
(123, 'physics', 8, 'shipra', 900, 200, 'Pankaj_kumar', 'Dec,22,2017');

-- --------------------------------------------------------

--
-- Table structure for table `return_book`
--

CREATE TABLE `return_book` (
  `Book_Id` int(30) NOT NULL,
  `Name_Of_Book` varchar(30) NOT NULL,
  `Edition` int(10) NOT NULL,
  `Publisher` char(30) NOT NULL,
  `price` int(20) NOT NULL,
  `pages` int(20) NOT NULL,
  `Student_Id` varchar(30) NOT NULL,
  `Date_Of_Return` varchar(30) NOT NULL DEFAULT '"Not Returned"'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_book`
--

INSERT INTO `return_book` (`Book_Id`, `Name_Of_Book`, `Edition`, `Publisher`, `price`, `pages`, `Student_Id`, `Date_Of_Return`) VALUES
(404, 'Physics', 7, 'M L khanna', 400, 700, 'Pankaj_kumar', 'Dec 23, 2017'),
(611, 'Biology', 7, 'NCERT', 400, 567, 'shailli_12', 'Dec 24, 2017');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`Book_Id`);

--
-- Indexes for table `issue_book`
--
ALTER TABLE `issue_book`
  ADD PRIMARY KEY (`Book_Id`),
  ADD KEY `Student_Id` (`Student_Id`);

--
-- Indexes for table `return_book`
--
ALTER TABLE `return_book`
  ADD PRIMARY KEY (`Book_Id`),
  ADD KEY `Student_Id` (`Student_Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
