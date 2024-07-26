-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2023 at 12:49 PM
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
-- Database: `mcqexamination`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminUser` varchar(100) NOT NULL,
  `adminPass` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES
(1, 'admin', 'D00F5D5217896FB7FD601412CB890830');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ans`
--

CREATE TABLE `tbl_ans` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `rightAns` int(11) NOT NULL DEFAULT 0,
  `ans` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ans`
--

INSERT INTO `tbl_ans` (`id`, `quesNo`, `rightAns`, `ans`) VALUES
(127, 1, 0, '! (Exclamation)'),
(128, 1, 1, '$ (Dollar)'),
(129, 1, 0, '& (Ampersand)'),
(130, 1, 0, '# (Hash)'),
(131, 2, 0, '.xml'),
(132, 2, 0, '.html'),
(133, 2, 0, '.js'),
(134, 2, 1, '.php'),
(135, 3, 0, 'echo'),
(136, 3, 0, 'print'),
(137, 3, 0, 'write'),
(138, 3, 1, 'Both 1 and 2'),
(139, 4, 0, '+ (plus)'),
(140, 4, 0, '* (Asterisk)'),
(141, 4, 1, '. (dot)'),
(142, 4, 0, 'append()'),
(143, 5, 0, 'Create myFunction()'),
(144, 5, 0, 'New_function myFunction()'),
(145, 5, 1, 'function myFunction()'),
(146, 5, 0, 'None of the above'),
(147, 6, 0, 'php_info()'),
(148, 6, 1, 'phpinfo()'),
(149, 6, 0, 'info()'),
(150, 6, 0, 'None of the above'),
(151, 7, 0, 'Adobe Dreamweaver'),
(152, 7, 0, 'Atom'),
(153, 7, 0, 'Visual Studio Code'),
(154, 7, 1, 'All of the above'),
(155, 8, 0, '. (dot)'),
(156, 8, 1, '; (semicolon)'),
(157, 8, 0, '! (exclamation)'),
(158, 8, 0, '/ (slash)'),
(159, 9, 0, '\"CodeAstro\";'),
(160, 9, 0, 'write(\"CodeAstro\");'),
(161, 9, 1, 'echo \"CodeAstro\";'),
(162, 9, 0, 'printf(\"CodeAstro\");'),
(163, 10, 1, 'Standard PHP Library'),
(164, 10, 0, 'Simple PHP Library'),
(165, 10, 0, 'Simple PHP List'),
(166, 10, 0, 'Simple Programming Language'),
(167, 11, 0, 'Indexed Array'),
(168, 11, 0, 'Associative Array'),
(169, 11, 0, 'Multidimensional Array'),
(170, 11, 1, 'All Of Above'),
(171, 12, 1, 'Hypertext Preprocessor'),
(172, 12, 0, 'Pretext Hypertext Preprocessor'),
(173, 12, 0, 'Personal Home Processor'),
(174, 12, 0, 'None');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ques`
--

CREATE TABLE `tbl_ques` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `ques` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ques`
--

INSERT INTO `tbl_ques` (`id`, `quesNo`, `ques`) VALUES
(101, 1, 'Variable name in PHP starts with'),
(102, 2, 'Which of the following is the default file extension of PHP?'),
(103, 3, 'Which of the following is used to display the output in PHP?'),
(104, 4, 'Which of the following is used for concatenation in PHP?'),
(105, 5, 'Which of the following is the correct way to create a function in PHP?'),
(106, 6, 'Which of the following function displays the information about PHP and its configuration?'),
(107, 7, 'Which of the following is/are the code editors in PHP?'),
(108, 8, 'Which of the following is used to end a statement in PHP?'),
(109, 9, 'Which of the following is the correct way to print \"CodeAstro\" in PHP?'),
(110, 10, 'What does SPL stands for in PHP?'),
(111, 11, 'What are the different types of Array in PHP?'),
(112, 12, 'PHP stands for?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `userName` varchar(32) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(32) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userId`, `name`, `userName`, `password`, `email`, `status`) VALUES
(33, 'rajvi', 'rajvi', '202cb962ac59075b964b07152d234b70', 'rajvi@gmail.com', 0),
(34, 'abc', 'ads', '250cf8b51c773f3f8dc8b4be867a9a02', 'abc@gmail.com', 0),
(35, 'dhvani shah', 'dhvani', '68053af2923e00204c3ca7c6a3150cf7', 'dh@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
