-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2022 at 01:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostelmsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@mail.com', '123', '2022-08-08 20:31:45', '2022-09-15');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'BTH123', 'B.Tech', 'Bachelor  Of Technology', '2022-09-23 00:45:13'),
(2, 'BCOM18', 'B.Com', 'Bachelor Of Commerce ', '2022-09-23 00:45:13'),
(3, 'BSC296', 'BSC', 'Bachelor  of Science', '2022-09-23 00:45:13'),
(4, 'BCOA55', 'BCA', 'Bachelor Of Computer Application', '2022-09-23 00:45:13'),
(5, 'MCA001', 'MCA', 'Master of Computer Application', '2022-09-23 00:47:13'),
(6, 'MBA777', 'MBA', 'Master In Business Administration', '2022-09-23 00:54:13'),
(7, 'BE069', 'BE', 'Bachelor of Engineering', '2022-09-23 00:59:13'),
(8, 'BIT353', 'BIT', 'Bachelors In Information Technology', '2022-09-07 06:59:05'),
(9, 'MIT005', 'MIT', 'Master of Information Technology', '2022-09-03 13:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(1, 100, 5, 1990, 1, '2022-08-04', 8, 'Bachelor Of Computer Application', '101', 'rajvi', 'kishorbhai', 'togadiya', 'Female', 8745985475, 'rajvi@gmail.com', 5467894561, 'kishorbhai', 'father', 8745985475, 'kalawad road', 'Rajkot', 360002, 'kalawad road', 'Rajkot', 360002, '2022-09-15 12:42:05', ''),
(2, 201, 4, 1650, 0, '2022-06-08', 10, 'Bachelor Of Commerce ', '102', 'dhvani', 'rajubhai', 'undaviya', 'female', 1234564878, 'dh@gmail.com', 1234564878, 'rajubhai', 'father', 5478541412, 'Morbi road', 'Ahemdabad', 360007, 'Morbi road', 'Ahemdabad', 360007, '2022-09-15 12:47:42', ''),
(3, 200, 2, 910, 1, '2022-03-16', 7, 'Bachelor  Of Technology', '104', 'prasham', 'kishorbhai', 'monpara', 'Male', 7789945886, 'prasham@gmail.com', 7789945886, 'kavitaben', 'mother', 7789945886, 'amin marg', 'kutch', 360004, 'amin marg', 'kutch', 360004, '2022-09-17 09:24:02', ''),
(4, 112, 3, 1300, 0, '2022-07-06', 10, 'Bachelor  of Science', '103', 'shalini', 'rajendrabhai', 'mandaliya', 'female', 6547895412, 'shalini@gmail.com', 6547895412, 'rajendrabhai', 'father', 6547895412, 'Divanpara chowk', 'amreli', 350001, 'Divanpara chowk', 'amreli', 350001, '2022-09-17 09:33:55', ''),
(6, 132, 5, 1990, 0, '2022-06-21', 8, 'Bachelor of Engineering', '105', 'het', 'dilipbhai', 'sorthiya', 'male', 9887452356, 'het@gmail.com', 9887452356, 'dilipbhai', 'father', 9887452356, 'near aarya park', 'Rajkot', 360007, 'near aarya park', 'Rajkot', 360007, '2022-09-17 09:55:05', ''),
(7, 11, 4, 1650, 1, '2022-06-01', 11, 'Bachelor Of Commerce ', '106', 'aangi', 'rajubhai', 'shah', 'Female', 9985475514, 'as09@gmail.com', 9985475514, 'romitaben', 'mother', 9985475514, 'mavdi road near katariya chokdi', 'Rajkot', 360005, 'mavdi road near katariya chokdi', 'Rajkot', 360005, '2022-09-17 10:01:56', ''),
(8, 269, 2, 910, 0, '2022-08-06', 12, 'Bachelors In Information Technology', '107', 'aayushi', 'nileshbhai', 'gandhi', 'Female', 8854723655, 'aayu@gmail.com', 8854723655, 'nileshbhai', 'father', 8854723655, 'palace road', 'bhavnagar', 340002, 'palace road', 'bhavnagar', 340002, '2022-09-17 10:46:47', ''),
(9, 310, 1, 750, 1, '2022-06-06', 12, 'Bachelor  Of Technology', '108', 'raj', 'hiteshbhai', 'khut', 'Male', 6657854128, 'raj88@gmail.com', 6657854128, 'hiteshbhai', 'father', 6657854128, 'near jivaraj park', 'Rajkot', 360004, 'near jivaraj park', 'Rajkot', 360004, '2022-09-18 09:53:32', ''),
(10, 330, 1, 750, 0, '2022-07-11', 10, 'Master of Information Technology', '109', 'Shrey', 'ravibhai', 'sheth', 'Male', 8577965444, 'shrey@gmail.com', 8577965444, 'ravibhai', 'father', 8577965444, 'kothariya road', 'Ahemdabad', 350007, 'kothariya road', 'Ahemdabad', 350007, '2022-09-19 10:40:08', ''),
(11, 269, 2, 910, 0, '2022-08-05', 12, 'Bachelor  of Science', '110', 'dhyani', 'jentibhai', 'ranpara', 'female', 9855741258, 'dh99@gmail.com', 9855741258, 'jentibhai', 'father', 9855741258, 'kotecha chok', 'gandhinagar', 360005, 'kotecha chok', 'gandhinagar', 360005, '2022-09-19 11:38:24', ''),
(12, 11, 4, 1650, 0, '2022-09-06', 9, 'Bachelors In Information Technology', '111', 'Vanshika', 'dilipbhai', 'pandya', 'Female', 8854712587, 'vp@gmail.com', 8854712587, 'dilipbhai', 'father', 8854712587, '80ft. road', 'Rajkot', 360007, '80ft. road', 'Rajkot', 360007, '2022-09-24 10:51:05', ''),
(13, 201, 4, 1650, 0, '2022-11-01', 12, 'Bachelors In Information Technology', '112', 'dhyana', 'pareshbhai', 'desai', 'female', 6685479957, 'dhyana12@gmail.com', 6685479957, 'pareshbhai', 'father', 9985745124, 'kenal road', 'Rajkot', 360002, 'kenal road', 'Rajkot', 360002, '2022-11-11 12:03:29', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(1, 5, 100, 1990, '2022-06-20 04:24:06'),
(2, 4, 201, 1650, '2022-06-20 04:24:06'),
(3, 2, 200, 910, '2022-06-20 04:33:06'),
(4, 3, 112, 1300, '2022-06-20 04:33:30'),
(5, 5, 132, 1990, '2022-06-20 04:28:52'),
(6, 4, 11, 1650, '2022-06-07 05:01:02'),
(7, 2, 269, 910, '2022-07-03 14:39:22'),
(8, 1, 310, 750, '2022-07-03 14:41:36'),
(9, 1, 330, 750, '2022-08-03 14:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(1, 2, 'dh@gmail.com', 0x3a3a31, '', '', '2022-09-15 12:49:27'),
(2, 1, 'rajvi@gmail.com', 0x3a3a31, '', '', '2022-09-15 12:51:37'),
(3, 4, 'prasham@gmail.com', 0x3a3a31, '', '', '2022-09-17 09:17:56'),
(4, 6, 'as09@gmail.com', 0x3a3a31, '', '', '2022-09-17 09:58:31'),
(5, 7, 'aayu@gmail.com', 0x3a3a31, '', '', '2022-09-17 10:44:39'),
(6, 1, 'rajvi@gmail.com', 0x3a3a31, '', '', '2022-09-17 11:13:46'),
(7, 8, 'raj88@gmail.com', 0x3a3a31, '', '', '2022-09-18 09:49:26'),
(8, 5, 'het@gmail.com', 0x3a3a31, '', '', '2022-09-18 13:28:48'),
(9, 9, 'shrey@gmail.com', 0x3a3a31, '', '', '2022-09-19 10:37:29'),
(10, 10, 'dh99@gmail.com', 0x3a3a31, '', '', '2022-09-19 10:42:37'),
(11, 11, 'vp@gmail.com', 0x3a3a31, '', '', '2022-09-24 10:47:41'),
(12, 2, 'dh@gmail.com', 0x3a3a31, '', '', '2022-10-03 06:36:40'),
(13, 1, 'rajvi@gmail.com', 0x3a3a31, '', '', '2022-10-06 04:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(1, '101', 'rajvi', 'kishorbhai', 'togadiya', 'Female', 8745985475, 'rajvi@gmail.com', '444', '2022-09-15 12:41:24', '', ''),
(2, '102', 'dhvani', 'rajubhai', 'undaviya', 'Female', 1234564878, 'dh@gmail.com', '789', '2022-09-15 12:43:46', '', ''),
(3, '103', 'shalini', 'rajendrabhai', 'mandaliya', 'Female', 6547895412, 'shalini@gmail.com', '852', '2022-09-15 12:51:00', '', ''),
(4, '104', 'prasham', 'kishorbhai', 'monpara', 'Male', 7789945886, 'prasham@gmail.com', '963', '2022-09-17 09:17:22', '', ''),
(5, '105', 'het', 'dilipbhai', 'sorthiya', 'Male', 9887452356, 'het@gmail.com', '159', '2022-09-17 09:50:37', '', ''),
(6, '106', 'aangi', 'rajubhai', 'shah', 'Female', 9985475514, 'as09@gmail.com', '357', '2022-09-17 09:57:41', '', ''),
(7, '107', 'aayushi', 'nileshbhai', 'gandhi', 'Female', 8854723655, 'aayu@gmail.com', '624', '2022-09-17 10:44:08', '', ''),
(8, '108', 'raj', 'hiteshbhai', 'khut', 'Male', 6657854128, 'raj88@gmail.com', '279', '2022-09-18 09:49:12', '', ''),
(9, '109', 'Shrey', 'ravibhai', 'sheth', 'Male', 8577965444, 'shrey@gmail.com', '516', '2022-09-19 10:37:10', '', ''),
(10, '110', 'dhyani', 'jentibhai', 'ranpara', 'Female', 9855741258, 'dh99@gmail.com', '543', '2022-09-19 10:42:15', '', ''),
(11, '111', 'Vanshika', 'dilipbhai', 'pandya', 'Female', 8854712587, 'vp@gmail.com', '486', '2022-09-24 10:47:14', '', ''),
(12, '112', 'dhyana', 'pareshbhai', 'desai', 'Female', 6685479957, 'dhyana12@gmail.com', '857', '2022-11-11 12:11:08', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
