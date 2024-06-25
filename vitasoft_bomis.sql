-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 25, 2024 at 07:20 AM
-- Server version: 10.5.24-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vitasoft_bomis`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `sno` int(11) NOT NULL,
  `enrollmentNo` varchar(20) NOT NULL,
  `childname` varchar(250) NOT NULL,
  `study` varchar(15) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `prioritySports1` varchar(50) NOT NULL,
  `prioritySports2` varchar(50) NOT NULL,
  `prioritySports3` varchar(50) NOT NULL,
  `createDate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`sno`, `enrollmentNo`, `childname`, `study`, `grade`, `prioritySports1`, `prioritySports2`, `prioritySports3`, `createDate`) VALUES
(28, '22B0MK0044', 'Medhanvish Malyala', '7th', 'Topaz', 'Archery', 'Football', 'Volleyball', '2024-06-24 18:24:51'),
(27, '24BOMK0049', 'Vishruth Chandra', '4th', 'Emerald', 'Cricket', 'Football', 'Skating', '2024-06-24 18:21:21'),
(26, '22BOMK0188', 'Varshika Kundoju', '4th', 'Emerald', 'Skating', 'Chess', 'Archery', '2024-06-24 18:00:08'),
(29, '23BOMK0073', 'Kiaana agarwal', '7th', 'Allen', 'Skating', 'Basketball', 'Athletics', '2024-06-24 18:27:24'),
(30, '22BOMK0150', 'Srivatsav Badri', '8th', 'Topaz', 'Basketball', 'Cricket', 'Chess', '2024-06-24 18:27:49'),
(31, '22BOMK0043', 'Medhaspurthy Malyala', '5th', 'Emerald', 'Skating', 'Archery', 'Athletics', '2024-06-24 18:27:55'),
(32, '24BOMK0185', 'SRI TANVI KAMPELLY', '6th', 'Topaz', 'Skating', 'Basketball', 'Archery', '2024-06-24 18:29:06'),
(33, 'P_22BOMK0285', 'D.S.Harshita', '7th', 'Allen', 'Skating', 'Basketball', 'Chess', '2024-06-24 18:33:48'),
(34, '22BOMK0343', 'Kovidh', '7th', 'Allen', 'Cricket', 'Football', 'Volleyball', '2024-06-24 18:42:45'),
(35, '22BOMK0121', 'ADHITHRI GUJJA', '8th', 'Topaz', 'Cricket', 'Basketball', 'Chess', '2024-06-24 18:43:14'),
(36, '22BOMK0258', 'Lucky Swami', '5th', 'Ruby', 'Cricket', 'Basketball', 'Archery', '2024-06-24 18:43:19'),
(37, '24BOMK0091', 'Prashasti', '7th', 'Topaz', 'Basketball', 'Athletics', 'Volleyball', '2024-06-24 18:43:23'),
(38, '24BOMK0093', 'Snikith koushal Kailasakoti', '4th', 'Topaz', 'Cricket', 'Athletics', 'Basketball', '2024-06-24 18:43:48'),
(39, '22BOMK0066', 'CH. Sriyan Reddy', '4th', 'Topaz', 'Football', 'Athletics', 'Chess', '2024-06-24 18:44:03'),
(40, '21BOMK0039', 'Sujal kumar Manikyam', '7th', 'Allen', 'Cricket', 'Football', 'Basketball', '2024-06-24 18:44:28'),
(41, '24BOMK0177', 'MERUGU Kanishk', '6th', 'Emerald', 'Football', 'Chess', 'Archery', '2024-06-24 18:46:04'),
(42, '23BOMK0133', 'Vengala arnav', '4th', 'Topaz', 'Cricket', 'Football', 'Chess', '2024-06-24 18:47:35'),
(43, '24BOMK0092', 'Harshith Kumar sanki', '5th', 'Emerald', 'Cricket', 'Football', 'Athletics', '2024-06-24 18:48:09'),
(44, '22BOMK0182', 'AVYAN ADEPU', '4th', 'Emerald', 'Cricket', 'Football', 'Basketball', '2024-06-24 18:49:03'),
(45, '24BOMK0134', 'Mokshith Reddy Gnananeethi', '5th', 'Topaz', 'Cricket', 'Volleyball', 'Chess', '2024-06-24 18:49:05'),
(46, '23BOMK0052', 'NADIPELLY DEEKSHA', '8th', 'Allen', 'Chess', 'Judo', 'Volleyball', '2024-06-24 18:49:36'),
(47, '23BOMK0005', 'PALLA Shaimetha', '7th', 'Topaz', 'Basketball', 'Athletics', 'Volleyball', '2024-06-24 18:49:44'),
(48, '23BOMK0111', 'Aaradhya', '4th', 'Topaz', 'Skating', 'Basketball', 'Chess', '2024-06-24 18:50:07'),
(49, '22BOMK0087', 'Madishetti Ishana', '5th', 'Topaz', 'Basketball', 'Chess', 'Judo', '2024-06-24 18:50:35'),
(50, '23BOMK0051', 'NADIPELLY DEEKSHA', '6th', 'Topaz', 'Cricket', 'Skating', 'Chess', '2024-06-24 18:50:46'),
(51, '23BOMK0066', 'Ashvath Devanand', '7th', 'Allen', 'Football', 'Volleyball', 'Athletics', '2024-06-24 18:51:16'),
(52, '23BOMK0046', 'AARADHYA PACHLODIA', '5th', 'Emerald', 'Basketball', 'Cricket', 'Athletics', '2024-06-24 18:51:20'),
(53, '24BOMK0013', 'Antareep', '8th', 'Topaz', 'Basketball', 'Athletics', 'Football', '2024-06-24 18:52:22'),
(54, '22BOMK0089', 'KUNDURU ANIKETH REDDY', '4th', 'Emerald', 'Football', 'Archery', 'Chess', '2024-06-24 18:52:27'),
(55, '24BOMK0106', 'Nashrah Anjum', '8th', 'Topaz', 'Basketball', 'Skating', 'Cricket', '2024-06-24 18:53:14'),
(56, '23BOMK2732', 'K Sathvik', '8th', 'Topaz', 'Cricket', 'Chess', 'Basketball', '2024-06-24 18:53:25'),
(57, '23BOMK0293', 'Tejas Thodupunuri', '7th', 'Allen', 'Football', 'Basketball', 'Cricket', '2024-06-24 18:53:54'),
(58, '21BOMK0041', 'Srihaas patnana', '7th', 'Allen', 'Skating', 'Athletics', 'Football', '2024-06-24 18:54:16'),
(59, '22BOMK0084', 'ADHIP SAI GUNTHA', '5th', 'Topaz', 'Cricket', 'Football', 'Skating', '2024-06-24 18:54:54'),
(60, '22BOMK0193', 'SRIYAN ADEPU', '5th', 'Emerald', 'Cricket', 'Basketball', 'Athletics', '2024-06-24 18:54:56'),
(61, '21BOMK0018', 'Srihansi patnana', '5th', 'Emerald', 'Skating', 'Athletics', 'Basketball', '2024-06-24 18:55:22'),
(62, '22bomk0350', 'Rapolu Jae Krrish', '5th', 'Topaz', 'Volleyball', 'Skating', 'Basketball', '2024-06-24 18:55:35'),
(63, '22BOMK0055', 'Rishwith sai jilla', '8th', 'Allen', 'Archery', 'Skating', 'Basketball', '2024-06-24 18:55:46'),
(64, '22BOMK0075', 'Palla Vashiaht', '6th', 'Allen', 'Basketball', 'Cricket', 'Football', '2024-06-24 18:55:57'),
(65, '23BOMK2733', 'K Bhavya', '6th', 'Topaz', 'Skating', 'Chess', 'Judo', '2024-06-24 18:56:34'),
(66, '22BOMK0130', 'D Vedanshi', '7th', 'Topaz', 'Basketball', 'Athletics', 'Chess', '2024-06-24 18:56:50'),
(67, '22BOMK0092', 'Ashwadh Rudra Malyala', '5th', 'Ruby', 'Basketball', 'Skating', 'Chess', '2024-06-24 18:57:01'),
(68, '20BOMK0164', 'AKSHAINIEE AITHA', '5th', 'Topaz', 'Basketball', 'Skating', 'Volleyball', '2024-06-24 18:57:09'),
(69, '22BOMK01/26', 'Aadya gilla', '5th', 'Ruby', 'Chess', 'Volleyball', 'Skating', '2024-06-24 18:57:28'),
(70, '24BOMK0109', 'Advik Bachu', '5th', 'Ruby', 'Chess', 'Football', 'Archery', '2024-06-24 18:57:47'),
(71, '22BOMK0152', 'ADHITRI GUNTHA', '7th', 'Allen', 'Cricket', 'Basketball', 'Archery', '2024-06-24 18:57:56'),
(72, '21BOMK0003', 'Naina maddi', '4th', 'Emerald', 'Basketball', 'Chess', 'Volleyball', '2024-06-24 18:58:27'),
(73, '22BOMK0202', 'N.Ruthwika', '6th', 'Topaz', 'Archery', 'Chess', 'Skating', '2024-06-24 18:58:28'),
(74, '24BOMK0107', 'Muhammad Anas', '5th', 'Ruby', 'Judo', 'Football', 'Skating', '2024-06-24 18:58:35'),
(75, '21BOMK0008', 'Ch.Vishruth', '4th', 'Ruby', 'Cricket', 'Basketball', 'Football', '2024-06-24 18:58:36'),
(76, '23BOMK0130', 'Karthik', '6th', 'Allen', 'Cricket', 'Skating', 'Chess', '2024-06-24 18:58:43'),
(77, '22BOMK0280', 'Kanishk goud.B', '4th', 'Emerald', 'Volleyball', 'Basketball', 'Chess', '2024-06-24 18:58:59'),
(78, '24BOMK0120', 'Pulivarthi venkata harshith', '5th', 'Emerald', 'Football', 'Basketball', 'Chess', '2024-06-24 18:59:02'),
(79, '24BOMK0153', 'Mohammed Arhaan Aarib', '5th', 'Ruby', 'Cricket', 'Skating', 'Football', '2024-06-24 18:59:15'),
(80, '24BOMK0138', 'Uday reja', '8th', 'Topaz', 'Football', 'Cricket', 'Skating', '2024-06-24 18:59:23'),
(81, '22BOMK0004', 'Saharsh sai kalyanam', '6th', 'Allen', 'Cricket', 'Skating', 'Basketball', '2024-06-24 18:59:24'),
(82, '22BOMIK0006', 'T Aniksha Reddy', '7th', 'Allen', 'Cricket', 'Volleyball', 'Chess', '2024-06-24 18:59:59'),
(83, '23BOMK0119', 'ADITHI PONNAM', '4th', 'Ruby', 'Basketball', 'Skating', 'Archery', '2024-06-24 19:01:40'),
(84, '22BOMK0122', 'Sri aadhya', '5th', 'Ruby', 'Basketball', 'Chess', 'Skating', '2024-06-24 19:01:46'),
(85, '21BOMKOO44', 'SYED FOUZAAN UDDIN', '8th', 'Allen', 'Football', 'Basketball', 'Cricket', '2024-06-24 19:02:01'),
(86, '22BOMK0126', 'Aadya gilla', '5th', 'Ruby', 'Chess', 'Basketball', 'Volleyball', '2024-06-24 19:02:02'),
(87, '24BOMK0004', 'MOHAMMED AHNAF KHAN', '5th', 'Ruby', 'Cricket', 'Basketball', 'Volleyball', '2024-06-24 19:02:24'),
(88, '21BOMK0044', 'SYED FOUZAAN UDDIN', '8th', 'Allen', 'Football', 'Basketball', 'Cricket', '2024-06-24 19:03:35'),
(89, '20BOMK0138', 'P.Shivanwitha', '5th', 'Emerald', 'Archery', 'Volleyball', 'Skating', '2024-06-24 19:04:09'),
(90, '20BOMK0169', 'Nainika reddy', '6th', 'Allen', 'Basketball', 'Chess', 'Archery', '2024-06-24 19:05:05'),
(91, '23BOMK0050', 'R Ram Charan', '6th', 'Topaz', 'Chess', 'Football', 'Archery', '2024-06-24 19:05:17'),
(92, '23BOMK0138', 'P.shivanwitha', '5th', 'Emerald', 'Archery', 'Volleyball', 'Skating', '2024-06-24 19:05:53'),
(93, '22BOMK0284', 'K prajeeth reddy', '7th', 'Allen', 'Football', 'Cricket', 'Basketball', '2024-06-24 19:06:01'),
(94, '22BOMK0226', 'Srithik Kandula', '8th', 'Allen', 'Football', 'Basketball', 'Judo', '2024-06-24 19:06:57'),
(95, '22BOMK0183', 'MEDHANSH CHAPIDI', '4th', 'Ruby', 'Cricket', 'Chess', 'Archery', '2024-06-24 19:07:01'),
(96, '22BOMK0326', 'Rakshan yamudani', '5th', 'Topaz', 'Cricket', 'Football', 'Chess', '2024-06-24 19:07:07'),
(97, '23BMOK0028', 'Parinith Sriman banavath', '4th', 'Emerald', 'Cricket', 'Basketball', 'Football', '2024-06-24 19:07:09'),
(98, '22BOMK0127', 'Yashwik Akula', '8th', 'Allen', 'Football', 'Basketball', 'Cricket', '2024-06-24 19:07:25'),
(99, '23BOMK0094', 'BUKKA SHREYAS', '7th', 'Allen', 'Cricket', 'Archery', 'Basketball', '2024-06-24 19:07:29'),
(100, '21BOMK0013', 'Sarayu Tangeda', '5th', 'Ruby', 'Athletics', 'Basketball', 'Chess', '2024-06-24 19:08:25'),
(101, '23BOMK0143', 'Srihith Banda', '7th', 'Allen', 'Football', 'Cricket', 'Basketball', '2024-06-24 19:09:36'),
(102, '21BOMK0007', 'Siri valli', '4th', 'Ruby', 'Basketball', 'Cricket', 'Chess', '2024-06-24 19:10:07'),
(103, '22BOMK0082', 'Mayank Ramasai', '5th', 'Topaz', 'Skating', 'Basketball', 'Volleyball', '2024-06-24 19:10:18'),
(104, '22BOMK0083', 'Advit Sresht Jakkani', '5th', 'Emerald', 'Basketball', 'Athletics', 'Cricket', '2024-06-24 19:11:00'),
(105, '24BOMK0160', 'Veeru', '5th', 'Emerald', 'Archery', 'Volleyball', 'Skating', '2024-06-24 19:11:12'),
(106, '22BOMK0223', 'Saanvi', '6th', 'Emerald', 'Basketball', 'Skating', 'Archery', '2024-06-24 19:12:24'),
(107, '25BOMK0107', 'Muhammad Anas', '5th', 'Ruby', 'Judo', 'Football', 'Skating', '2024-06-24 19:12:50'),
(108, '22BOMK0049', 'THANISH REDDY RAVULA', '6th', 'Allen', 'Cricket', 'Volleyball', 'Football', '2024-06-24 19:14:24'),
(109, '23BOMK0080', 'Moogala Vihaan', '6th', 'Emerald', 'Basketball', 'Chess', 'Football', '2024-06-24 19:14:50'),
(110, '22BOMK0300', 'Vahin chethi', '4th', 'Ruby', 'Cricket', 'Cricket', 'Football', '2024-06-24 19:15:15'),
(111, '22BOMK0201', 'Prathik Kandula', '6th', 'Allen', 'Football', 'Judo', 'Basketball', '2024-06-24 19:16:49'),
(112, '22BOMKO179', 'Aryan Muddaraveni', '4th', 'Topaz', 'Archery', 'Skating', 'Chess', '2024-06-24 19:17:28'),
(113, '23BOMK0059', 'Puli Guna praman', '7th', 'Topaz', 'Football', 'Basketball', 'Skating', '2024-06-24 19:17:45'),
(114, 'p_22BOMK0184', 'Samanvii Sunkari', '4th', 'Ruby', 'Basketball', 'Skating', 'Chess', '2024-06-24 19:17:49'),
(115, '23BOMK0075', 'ATHARV KONDAPAKA', '4th', 'Emerald', 'Archery', 'Basketball', 'Athletics', '2024-06-24 19:18:05'),
(116, '22BOMK0147', 'B. Sai Akshith', '8th', 'Allen', 'Cricket', 'Basketball', 'Archery', '2024-06-24 19:18:42'),
(117, '23BOMK0013', 'Pudari srivathsav', '8th', 'Allen', 'Cricket', 'Football', 'Volleyball', '2024-06-24 19:19:13'),
(118, '24BOMK0098', 'VANSHIKAA REDDY YARAVA', '6th', 'Emerald', 'Basketball', 'Volleyball', 'Skating', '2024-06-24 19:19:59'),
(119, '22BOMK0179', 'Aryan Muddaraveni', '4th', 'Topaz', 'Archery', 'Skating', 'Chess', '2024-06-24 19:19:59'),
(120, '23BOMK0137', 'P.Shivasathwik', '7th', 'Allen', 'Basketball', 'Archery', 'Skating', '2024-06-24 19:21:32'),
(121, '24BOMK0145', 'Dasari Sathwik', '7th', 'Topaz', 'Cricket', 'Archery', 'Basketball', '2024-06-24 19:21:41'),
(122, '20BOMK0000', 'Ch.Supreeth rao', '8th', 'Allen', 'Cricket', 'Athletics', 'Skating', '2024-06-24 19:23:04'),
(123, '24BOMK0036', 'Sharvan koutilya yellanki', '8th', 'Allen', 'Basketball', 'Football', 'Skating', '2024-06-24 19:23:15'),
(124, '22BOMK0053', 'SAHARSH SAPA', '4th', 'Emerald', 'Chess', 'Basketball', 'TableTennis', '2024-06-24 19:24:00'),
(125, '22BOMK004', 'Jilla Rishwith sai', '8th', 'Allen', 'Archery', 'TableTennis', 'Skating', '2024-06-24 19:24:32'),
(126, '23BOMK0243', 'Nidhi Reddy Kasturi', '8th', 'Topaz', 'LawnTennis', 'Basketball', 'Skating', '2024-06-24 19:25:21'),
(127, '23BOMK0113', 'Sri Karthikeya Reddy Kamreddy', '5th', 'Emerald', 'LawnTennis', 'Cricket', 'Football', '2024-06-24 19:25:24'),
(128, '23BOMK0007', 'Himanshu v', '5th', 'Topaz', 'Cricket', 'LawnTennis', 'Athletics', '2024-06-24 19:26:12'),
(129, '22BOMK0227', 'Shraddha', '8th', 'Allen', 'Basketball', 'MartialArt', 'Archery', '2024-06-24 19:26:39'),
(130, '23BOMK0095', 'Siddarth', '6th', 'Topaz', 'Football', 'Basketball', 'Cricket', '2024-06-24 19:27:59'),
(131, '24BOMK0164', 'Ponnam Aryan', '6th', 'Emerald', 'Cricket', 'Volleyball', 'Football', '2024-06-24 19:30:05'),
(132, '24BOMK0054', 'Charasvi jakku', '5th', 'Topaz', 'Basketball', 'MartialArt', 'TableTennis', '2024-06-24 19:30:10'),
(133, '22BOMK0018', 'Vedamshi Regalla', '8th', 'Topaz', 'Basketball', 'Archery', 'Athletics', '2024-06-24 19:30:57'),
(134, '22BOMK0031', 'Aaradhya Nagasamudram', '6th', 'Emerald', 'Basketball', 'Volleyball', 'Archery', '2024-06-24 19:32:12'),
(135, 'p_ 22BOMK0131', 'K.Vihaan prajwal', '7th', 'Topaz', 'Cricket', 'Volleyball', 'TableTennis', '2024-06-24 19:33:19'),
(136, '22BOMK0166', 'Vishruth Rao Gandra', '8th', 'Topaz', 'Cricket', 'TableTennis', 'LawnTennis', '2024-06-24 19:33:44'),
(137, '22BOMK0058', 'Hridhya Ponna', '4th', 'Ruby', 'Basketball', 'Archery', 'MartialArt', '2024-06-24 19:33:45'),
(138, '22BOMK0199', 'Gaddam srihan', '5th', 'Emerald', 'Cricket', 'Volleyball', 'TableTennis', '2024-06-24 19:34:54'),
(139, '22BOMK0149', 'Thanooja Paida', '8th', 'Allen', 'Basketball', 'Archery', 'Athletics', '2024-06-24 19:36:09'),
(140, '22BOMK0007', 'Aadhya Medishetti', '4th', 'Ruby', 'LawnTennis', 'Basketball', 'TableTennis', '2024-06-24 19:43:07'),
(141, '22BOMK0153', 'Abyan Talib', '7th', 'Topaz', 'LawnTennis', 'Basketball', 'Archery', '2024-06-24 19:43:32'),
(142, '24BOMK0039', 'Saanvi Gampa', '5th', 'Topaz', 'Archery', 'Basketball', 'Volleyball', '2024-06-24 19:45:25'),
(143, '24BOMK0167', 'Maira Nibras', '6th', 'Emerald', 'Basketball', 'Volleyball', 'TableTennis', '2024-06-24 19:49:04'),
(144, '23BOMK0099', 'Virat Gourishetty', '7th', 'Allen', 'Cricket', 'Basketball', 'LawnTennis', '2024-06-24 19:49:37'),
(145, '23BOMKO100', 'Sahaja', '5th', 'Topaz', 'Athletics', 'Basketball', 'LawnTennis', '2024-06-24 19:50:09'),
(146, '22BOMK0331', 'T. Srinika Rao', '5th', 'Emerald', 'Volleyball', 'Basketball', 'Athletics', '2024-06-24 19:50:40'),
(147, '24BOMK0187', 'SABIHA', '5th', 'Topaz', 'TableTennis', 'LawnTennis', 'Athletics', '2024-06-24 19:51:21'),
(148, '23BOMK0056', 'Ashwath Charan thipparthi', '8th', 'Allen', 'Cricket', 'Basketball', 'LawnTennis', '2024-06-24 19:51:29'),
(149, '22BOMK0085', 'B.Sai atharva', '5th', 'Topaz', 'Cricket', 'Basketball', 'LawnTennis', '2024-06-24 19:51:58'),
(150, '23BOMKO101', 'Sahasra', '7th', 'Allen', 'LawnTennis', 'TableTennis', 'LawnTennis', '2024-06-24 19:52:36'),
(151, '20BOMK0056', 'Ashwath Charan thipparthi', '8th', 'Allen', 'Cricket', 'Football', 'LawnTennis', '2024-06-24 19:53:02'),
(152, '23BOMK0023', 'Sai Ganesh Kanamalla', '5th', 'Ruby', 'Cricket', 'Athletics', 'Football', '2024-06-24 19:54:05'),
(153, '20BOMKOOOO', 'ANUNYA', '4th', 'Ruby', 'Athletics', 'Volleyball', 'TableTennis', '2024-06-24 19:54:52'),
(154, '21BOMK0014', 'Urvi Vyshnavi', '5th', 'Ruby', 'LawnTennis', 'TableTennis', 'MartialArt', '2024-06-24 19:55:28'),
(155, '24BOMK0056', 'Ashwath Charan thipparthi', '8th', 'Allen', 'LawnTennis', 'Volleyball', 'MartialArt', '2024-06-24 19:56:17'),
(156, '24BOMK0055', 'Arjun vihas thipparthi', '6th', 'Emerald', 'TableTennis', 'LawnTennis', 'Volleyball', '2024-06-24 19:58:14'),
(157, '20BOMK0101', 'Sahasra', '7th', 'Allen', 'LawnTennis', 'TableTennis', 'MartialArt', '2024-06-24 20:00:34'),
(158, '23BOMK0074', 'Rhythm garg', '7th', 'Allen', 'LawnTennis', 'Volleyball', 'Athletics', '2024-06-24 20:00:45'),
(159, '23BOMK0036', 'Muppidi Shresta', '8th', 'Topaz', 'LawnTennis', 'Athletics', 'Volleyball', '2024-06-24 20:01:51'),
(160, '21BOMK0019', 'Aadhya macherla', '5th', 'Ruby', 'TableTennis', 'LawnTennis', 'MartialArt', '2024-06-24 20:04:49'),
(161, '23BOMK0202', 'Ahamed Farhan', '4th', 'Ruby', 'LawnTennis', 'Volleyball', 'TableTennis', '2024-06-24 20:05:30'),
(162, '24BpMk0022', 'Nitya Kanamalla', '6th', 'Allen', 'LawnTennis', 'Athletics', 'MartialArt', '2024-06-24 20:09:54'),
(163, 'Ex:20BOMK0000', 'Shanvika.n', '4th', 'Topaz', 'Athletics', 'TableTennis', 'LawnTennis', '2024-06-24 20:12:03'),
(164, '23BOMK0209', 'Sunkari Harshini', '4th', 'Emerald', 'Athletics', 'Judo', 'LawnTennis', '2024-06-24 20:13:53'),
(165, '24BOMK0100', 'Riddhi Ramella', '5th', 'Topaz', 'Athletics', 'LawnTennis', 'MartialArt', '2024-06-24 20:15:19'),
(166, '24BOMK0172', 'Shrenika', '8th', 'Topaz', 'LawnTennis', 'TableTennis', 'MartialArt', '2024-06-24 20:16:21'),
(167, '23BOMK0216', 'Shraddha Anand Waikar', '7th', 'Topaz', 'Athletics', 'Judo', 'MartialArt', '2024-06-24 20:17:20'),
(168, '22BOMK0123', 'Sandhi Aditri Reddy', '5th', 'Ruby', 'Athletics', 'LawnTennis', 'MartialArt', '2024-06-24 20:19:15'),
(169, '20BOMK0010', 'Chaithrika devaraneni', '4th', 'Topaz', 'MartialArt', 'TableTennis', 'Judo', '2024-06-24 20:39:36'),
(170, '24BOMK0101', 'Srishank Komuravelli', '6th', 'Emerald', 'TableTennis', 'MartialArt', 'Judo', '2024-06-24 20:51:19'),
(171, '21BOMK0043', 'Adarsh Dodiya', '7th', 'Topaz', 'MartialArt', 'TableTennis', 'Judo', '2024-06-24 20:52:49'),
(172, '21BOMK0031', 'Saanvi kommu', '6th', 'Allen', 'TableTennis', 'MartialArt', 'Judo', '2024-06-24 20:53:48'),
(173, '24BOMK0072', 'SNEHITH CHAKILAM', '6th', 'Allen', 'TableTennis', 'MartialArt', 'Judo', '2024-06-24 20:54:52'),
(174, '22BOMKO163', 'Sharnitha ADUMULlA', '4th', 'Emerald', 'TableTennis', 'MartialArt', 'Judo', '2024-06-24 20:56:07'),
(175, '22BOMK0244', 'Goli Ruthwika', '4th', 'Ruby', 'MartialArt', 'TableTennis', 'Judo', '2024-06-24 20:59:21'),
(176, '24BOMK0025', 'Muhammad Nabeel', '7th', 'Topaz', 'MartialArt', 'Judo', 'TableTennis', '2024-06-24 21:08:54'),
(177, '24BOMK0024', 'Muhammad Arhaan', '5th', 'Ruby', 'MartialArt', 'Judo', 'TableTennis', '2024-06-24 21:09:55'),
(178, '24BOMK0034', 'RASHWIKA BOINPELLY', '7th', 'Topaz', 'TableTennis', 'MartialArt', 'Judo', '2024-06-24 21:26:39'),
(179, '2B0MK0050', 'Gurram Hansika reddy', '7th', 'Topaz', 'TableTennis', 'MartialArt', 'Judo', '2024-06-24 21:31:06'),
(180, '23BOMK0151', 'Kotagiri.Akshara', '7th', 'Topaz', 'TableTennis', 'MartialArt', 'Judo', '2024-06-24 21:32:56'),
(181, '22B0MK0050', 'Gurram Hansika reddy', '7th', 'Topaz', 'TableTennis', 'MartialArt', 'Judo', '2024-06-24 21:33:40'),
(182, '3BOMK0151', 'Kotagiri.Akshara', '7th', 'Topaz', 'TableTennis', 'MartialArt', 'Judo', '2024-06-24 21:34:09'),
(183, '22BOMK0197', 'B Sai Sanjana', '5th', 'Ruby', 'MartialArt', 'Judo', 'Judo', '2024-06-24 21:35:12'),
(184, '23BOMK0069', 'Harshavardhan Kanathala', '7th', 'Topaz', 'Judo', 'Judo', 'MartialArt', '2024-06-24 21:35:53'),
(187, '23BOMK0000', 'Siddarth', '6th', 'Topaz', 'Skating', 'Football', 'Chess', '2024-06-25 11:39:51'),
(191, '24BOMK0123', 'Supreeth Thotapally', '7th', 'Allen', 'Volleyball', 'Chess', 'MartialArt', '2024-06-25 11:58:15'),
(193, '24BOMK0052', 'Sudheera Reddy', '7th', 'Topaz', 'Volleyball', 'LawnTennis', 'TableTennis', '2024-06-25 12:26:32'),
(192, '23BOMK0270', 'Rithvik reddy L', '7th', 'Topaz', 'Football', 'Volleyball', 'Chess', '2024-06-25 12:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`id`, `name`, `count`) VALUES
(1, 'Archery', 11),
(2, 'Athletics', 8),
(3, 'Chess', 6),
(4, 'LawnTennis', 13),
(5, 'Skating', 11),
(6, 'Basketball', 30),
(7, 'Cricket', 41),
(8, 'Football', 17),
(9, 'Volleyball', 5),
(10, 'MartialArt', 6),
(11, 'TableTennis', 12),
(12, 'Judo', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `enrollmentNo` (`enrollmentNo`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
