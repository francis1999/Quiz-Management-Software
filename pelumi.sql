-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2020 at 05:28 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pelumi`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `AdminID` int(255) NOT NULL,
  `AdminSurname` varchar(255) NOT NULL,
  `AdminOthernames` varchar(255) NOT NULL,
  `AdminUsername` varchar(255) NOT NULL,
  `Adminpassword` varchar(255) NOT NULL,
  `AdminPassport` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`AdminID`, `AdminSurname`, `AdminOthernames`, `AdminUsername`, `Adminpassword`, `AdminPassport`) VALUES
(1, 'Administrator', 'Administrator', 'pel', 'pel', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoriesID` int(255) NOT NULL,
  `CategoriesName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoriesID`, `CategoriesName`) VALUES
(1, 'Accessories'),
(2, 'Drugs'),
(3, 'Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `group_tbl`
--

CREATE TABLE `group_tbl` (
  `GroupID` int(255) NOT NULL,
  `GroupName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_tbl`
--

INSERT INTO `group_tbl` (`GroupID`, `GroupName`) VALUES
(1, 'l;ohgiuik'),
(2, 'Computer Science'),
(3, 'Computer Engineering'),
(4, 'Computer Engineering'),
(5, 'Electrical and Electronics Engineering'),
(6, 'Basic Programming Language'),
(7, 'Basic Programming Language');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(255) NOT NULL,
  `CategoryName` varchar(255) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `ProductManufacturer` varchar(255) NOT NULL,
  `ProductDescription` varchar(255) NOT NULL,
  `ProductPrice` varchar(255) NOT NULL,
  `Availability` varchar(255) NOT NULL,
  `Manufacturedate` varchar(255) NOT NULL,
  `Expirydate` varchar(255) NOT NULL,
  `ProductPicture` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `CategoryName`, `ProductName`, `ProductManufacturer`, `ProductDescription`, `ProductPrice`, `Availability`, `Manufacturedate`, `Expirydate`, `ProductPicture`, `Status`) VALUES
(11, 'Drinks', 'Lacasera', 'Lacasera', 'Soft Drinks', '100', '1200', '2020-03-28', '2020-03-26', 'server/adminpassport/d.png', 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `questiontbl`
--

CREATE TABLE `questiontbl` (
  `QuestionID` int(255) NOT NULL,
  `QuestionName` varchar(255) NOT NULL,
  `QuestionSubject` varchar(255) NOT NULL,
  `QuestionCategory` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `MarkAllocated` varchar(255) NOT NULL,
  `OptionOne` varchar(255) NOT NULL,
  `Optiontwo` varchar(255) NOT NULL,
  `OptionThree` varchar(255) NOT NULL,
  `CorrectAnswer` varchar(255) NOT NULL,
  `Level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questiontbl`
--

INSERT INTO `questiontbl` (`QuestionID`, `QuestionName`, `QuestionSubject`, `QuestionCategory`, `Status`, `MarkAllocated`, `OptionOne`, `Optiontwo`, `OptionThree`, `CorrectAnswer`, `Level`) VALUES
(1, 'What is a noun', 'Introduction To', 'Basic Programming Language', 'Active', '5', 'a', 'b', 'c', 'd', 'ND 1'),
(5, 'what is basic', 'Basic', 'Computer Engineering', 'Active', '5', 'a', 'b', 'c', 'd', 'HND 2'),
(6, 'what is basic', 'Basic', 'Computer Engineering', 'Active', '5', 'a', 'b', 'c', 'd', 'ND 2');

-- --------------------------------------------------------

--
-- Table structure for table `subjecttbl`
--

CREATE TABLE `subjecttbl` (
  `SubjectID` int(255) NOT NULL,
  `SubjectName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjecttbl`
--

INSERT INTO `subjecttbl` (`SubjectID`, `SubjectName`) VALUES
(1, 'Basic'),
(2, 'Introduction To '),
(3, 'Introduction To ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoriesID`);

--
-- Indexes for table `group_tbl`
--
ALTER TABLE `group_tbl`
  ADD PRIMARY KEY (`GroupID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `questiontbl`
--
ALTER TABLE `questiontbl`
  ADD PRIMARY KEY (`QuestionID`);

--
-- Indexes for table `subjecttbl`
--
ALTER TABLE `subjecttbl`
  ADD PRIMARY KEY (`SubjectID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `AdminID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoriesID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `group_tbl`
--
ALTER TABLE `group_tbl`
  MODIFY `GroupID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `questiontbl`
--
ALTER TABLE `questiontbl`
  MODIFY `QuestionID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `subjecttbl`
--
ALTER TABLE `subjecttbl`
  MODIFY `SubjectID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
