-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2020 at 09:54 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `prisonpro`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE IF NOT EXISTS `admin_tbl` (
`Admin_Id` int(11) NOT NULL,
  `Admin_Name` varchar(20) NOT NULL,
  `Admin_Password` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`Admin_Id`, `Admin_Name`, `Admin_Password`) VALUES
(2, 'admin', 'rohit');

-- --------------------------------------------------------

--
-- Table structure for table `announce`
--

CREATE TABLE IF NOT EXISTS `announce` (
  `to` varchar(17) NOT NULL,
  `Id` varchar(13) NOT NULL,
  `subject` varchar(14) NOT NULL,
  `message` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announce`
--

INSERT INTO `announce` (`to`, `Id`, `subject`, `message`) VALUES
('adminstrator', '8882', 'complain', 'sms');

-- --------------------------------------------------------

--
-- Table structure for table `capacity`
--

CREATE TABLE IF NOT EXISTS `capacity` (
`id` int(23) NOT NULL,
  `number` int(34) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `capacity`
--

INSERT INTO `capacity` (`id`, `number`) VALUES
(1, 500),
(2, 750),
(3, 1000),
(4, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `court`
--

CREATE TABLE IF NOT EXISTS `court` (
  `National_id` int(12) NOT NULL,
  `File_number` varchar(14) NOT NULL,
  `Dateoftrial` date NOT NULL,
  `Sentence` varchar(14) NOT NULL,
  `Location` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newprison`
--

CREATE TABLE IF NOT EXISTS `newprison` (
`pno` int(25) NOT NULL,
  `pname` varchar(25) NOT NULL,
  `location` varchar(25) NOT NULL,
  `opendate` varchar(25) NOT NULL,
  `contact` bigint(11) NOT NULL,
  `capacity` int(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23842 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newprison`
--

INSERT INTO `newprison` (`pno`, `pname`, `location`, `opendate`, `contact`, `capacity`) VALUES
(7, 'Sudesh', 'Jaipur', '2020-02-12', 765546353, 500),
(23344, 'Rajesh', 'Delhi', '2018-02-12', 9356148255, 56),
(23840, 'Kamal', 'Sri Ganganagar', '2020-05-12', 8356905648, 15),
(23841, 'Satpal', 'Pali', '2019-02-12', 6359495695, 5);

-- --------------------------------------------------------

--
-- Table structure for table `officer`
--

CREATE TABLE IF NOT EXISTS `officer` (
  `National_id` int(11) NOT NULL,
  `Telephone` bigint(12) NOT NULL,
  `From_prison` varchar(12) NOT NULL,
  `To_prison` varchar(12) NOT NULL,
  `Dateoftransfer` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `officer`
--

INSERT INTO `officer` (`National_id`, `Telephone`, `From_prison`, `To_prison`, `Dateoftransfer`) VALUES
(26226, 9351163747, 'Aarohi', 'Aditya', '2015-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `officerdetails`
--

CREATE TABLE IF NOT EXISTS `officerdetails` (
  `id` int(12) NOT NULL,
  `fullname` varchar(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `dateofbirth` varchar(25) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `telephone` bigint(25) NOT NULL,
  `education` varchar(25) NOT NULL,
  `experience` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `officerdetails`
--

INSERT INTO `officerdetails` (`id`, `fullname`, `address`, `dateofbirth`, `gender`, `telephone`, `education`, `experience`) VALUES
(1542649, 'Abhinav', 'Swami Ram Charan Marg, Bhopal Ganj, Bhilwara, Rajasthan 311001', '1989-04-12', 'male', 7665026590, '12th pass', '3-4year'),
(2692977, 'Yamini', 'Rajgarh Road, Sector 15A, near Court Complex, Hisar, Haryana 125001', '1990-02-12', 'Female', 6352121420, 'B-Tech', '5-7yrs'),
(5648235, 'Harsh', 'Silvercity Road, Gokul Nagar, Off, Jalamb Rd, Khate Layout, Madhav Nagar, Khamgaon, Maharashtra 4443', '1992-02-12', 'Male', 9365595846, 'Certificate', '1-2years'),
(9562356, 'Aryan', '644, Residency Rd, Near Manidhari Hospital, Sardarpura, Jodhpur, Rajasthan 342003', '1989-04-12', 'male', 9351659845, 'Phd', '1-6 months');

-- --------------------------------------------------------

--
-- Table structure for table `policestation_tbl`
--

CREATE TABLE IF NOT EXISTS `policestation_tbl` (
`Station_Id` int(11) NOT NULL,
  `Station_Name` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=898 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policestation_tbl`
--

INSERT INTO `policestation_tbl` (`Station_Id`, `Station_Name`, `Address`, `City`, `Email`, `Mobile`, `UserName`, `Password`) VALUES
(12, 'Murlipura Station', 'Kedia Place Rd,Pravasi Nagar,Murlipura,jaipur', 'Jaipur', 'policpol@police.com', 1542443018, 'police', 'rohit');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(10) NOT NULL DEFAULT '0',
  `Full_Name` varchar(23) NOT NULL,
  `DOB` date NOT NULL,
  `datein` varchar(12) NOT NULL,
  `dateout` varchar(12) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `County` varchar(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Education` varchar(20) NOT NULL,
  `Marital` varchar(20) NOT NULL,
  `Offence` varchar(90) NOT NULL,
  `Sentence` varchar(13) NOT NULL,
  `File_num` varchar(12) NOT NULL,
  `prison` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `Full_Name`, `DOB`, `datein`, `dateout`, `Address`, `County`, `Gender`, `Education`, `Marital`, `Offence`, `Sentence`, `File_num`, `prison`) VALUES
(6567, 'Aditya', '1995-10-18', '01/24/2011', '10/12/2016', ' Brahmpuri Udaipur', 'india', 'male', '12th pas', 'yes', 'i m oan', 'xyz', '09078766', 'komal'),
(9786575, 'Aarohi', '1990-04-14', '01/24/2014', '10/12/2016', 'Jhotwara, Jaipur', 'india', 'female', '10th pass', 'no', 'kill people', '05', '88999777', 'Aarohi');

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE IF NOT EXISTS `transfer` (
  `National_id` int(16) NOT NULL,
  `File_num` varchar(16) NOT NULL,
  `From_prison` varchar(17) NOT NULL,
  `To_prison` varchar(18) NOT NULL,
  `Dateoftransfer` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`National_id`, `File_num`, `From_prison`, `To_prison`, `Dateoftransfer`) VALUES
(666544, '', 'LANGATA', 'SHIMOLATEWA', '2020-02-04'),
(966544, '', 'LANGATA', 'KODIAGA', '2020-04-05'),
(980977, 'NBI-89654', 'KODIAGA', 'KODIAGA', '2020-02-23');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE IF NOT EXISTS `user_tbl` (
`User_Id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `BirthDate` date NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Station_Name` varchar(20) NOT NULL,
  `VerificationProof` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`User_Id`, `Name`, `Address`, `City`, `Mobile`, `Email`, `Gender`, `BirthDate`, `UserName`, `Password`, `Station_Name`, `VerificationProof`) VALUES
(1, 'user', 'user', 'Sri Ganganagar', 2147483647, 'user@user.com', 'male', '2020-11-04', 'user', 'rohit', 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE IF NOT EXISTS `visitor` (
  `id` int(12) NOT NULL COMMENT 'national id',
  `fullname` varchar(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `dateofvisit` varchar(25) NOT NULL,
  `timein` varchar(24) NOT NULL,
  `timeout` varchar(23) NOT NULL,
  `relationship` varchar(25) NOT NULL,
  `telephone` int(13) NOT NULL,
  `prisoner` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`id`, `fullname`, `address`, `dateofvisit`, `timein`, `timeout`, `relationship`, `telephone`, `prisoner`) VALUES
(2692977, 'Kabir', 'D-block,Sri Ganganagar', '2020-02-12', '12:00am', '5:00pm', 'son', 2147483647, 'Ayaan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
 ADD PRIMARY KEY (`Admin_Id`);

--
-- Indexes for table `announce`
--
ALTER TABLE `announce`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `capacity`
--
ALTER TABLE `capacity`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `court`
--
ALTER TABLE `court`
 ADD PRIMARY KEY (`National_id`);

--
-- Indexes for table `newprison`
--
ALTER TABLE `newprison`
 ADD PRIMARY KEY (`pno`);

--
-- Indexes for table `officer`
--
ALTER TABLE `officer`
 ADD PRIMARY KEY (`National_id`);

--
-- Indexes for table `officerdetails`
--
ALTER TABLE `officerdetails`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policestation_tbl`
--
ALTER TABLE `policestation_tbl`
 ADD PRIMARY KEY (`Station_Id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
 ADD PRIMARY KEY (`National_id`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
 ADD PRIMARY KEY (`User_Id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
MODIFY `Admin_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `capacity`
--
ALTER TABLE `capacity`
MODIFY `id` int(23) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `newprison`
--
ALTER TABLE `newprison`
MODIFY `pno` int(25) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23842;
--
-- AUTO_INCREMENT for table `policestation_tbl`
--
ALTER TABLE `policestation_tbl`
MODIFY `Station_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=898;
--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
