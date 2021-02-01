-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2021 at 04:41 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eleglt`
--

-- --------------------------------------------------------

--
-- Table structure for table `election_types`
--

CREATE TABLE `election_types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `election_types`
--

INSERT INTO `election_types` (`id`, `name`) VALUES
(1, 'Magistrate Duty'),
(2, 'Election Duty'),
(3, 'Poll Duty');

-- --------------------------------------------------------

--
-- Table structure for table `fuels`
--

CREATE TABLE `fuels` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fuels`
--

INSERT INTO `fuels` (`id`, `name`) VALUES
(1, 'Petrol'),
(2, 'Diesel');

-- --------------------------------------------------------

--
-- Table structure for table `grouptbl`
--

CREATE TABLE `grouptbl` (
  `id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `groupno` varchar(10) DEFAULT NULL,
  `lac` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personnel`
--

CREATE TABLE `personnel` (
  `id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `groupno` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personnel`
--

INSERT INTO `personnel` (`id`, `name`, `phone`, `designation`, `sex`, `category`, `groupno`) VALUES
(1, 'UTPAL RAJKUMAR', '9435504432', 'SRCS (A)', 'M', 9, 0),
(2, 'Imtiaz Ahmed', '9957853373', 'Sr.Inspector', 'M', 11, 0),
(3, 'Binod Kumar Pegu', '9401187715', 'Sr.Inspector', 'M', 11, 0),
(4, 'Samsul Islam', '9957142118', 'Sr.Inspector', 'M', 11, 0),
(5, 'JOGESH CH. BHARALI', '8876779801', 'Sr.Inspector', 'M', 9, 0),
(6, 'NILOM SANJIB AMCHI', '9401724190', 'Sr.Inspector', 'M', 9, 0),
(7, 'Eliyas Hussain', '9954255598', 'Sr.Inspector', 'M', 11, 0),
(8, 'PUTUL SAIKIA', '9101987690', 'Sr.Inspector', 'M', 9, 0),
(9, 'Dhaniram Bora', '6000840881', 'Jr.Inspector', 'M', 11, 0),
(10, 'Kumal Bora', '9435458942', 'Jr.Inspector', 'M', 11, 0),
(11, 'Sanjib Saikia', '9435053942', 'Jr.Inspector', 'M', 11, 0),
(12, 'Makhan Dowarah', '9864530530', 'Jr.Inspector', 'M', 11, 0),
(13, 'Apurba Goswami', '9401291921', 'Jr.Inspector', 'M', 11, 0),
(14, 'Prince Sangma', '8011388069', 'Jr.Inspector', 'M', 11, 0),
(15, 'Kangkan Sarmah', '9864823194', 'Jr.Inspector', 'M', 11, 0),
(16, 'Rupkamal Nath', '9854421539', 'Jr.Inspector', 'M', 11, 0),
(17, 'Devajit Saikia', '7399729197', 'Jr.Inspector', 'M', 11, 0),
(18, 'Debojit Bori', '9435614146', 'Jr.Inspector', 'M', 11, 0),
(19, 'Utpal Das', '9954543259', 'Jr.Inspector', 'M', 11, 0),
(20, 'Alakesh Chakraborty', '9864245032', 'Jr.Inspector', 'M', 11, 0),
(21, 'Madhab Borpuzari', '8011348572', 'Jr. Asstt.', 'M', 3, 329),
(22, 'Tarani Kt. Das', '9435515712', 'Jr. Asstt.', 'M', 11, 0),
(23, 'Indreswar Saikia', '9531217259', 'Jr. Asstt.', 'M', 11, 0),
(24, 'Bablu Rahman', '8472920227', 'Jr. Asstt.', 'M', 11, 0),
(25, 'Muzamil Ali', '9085667855', 'P.S.P.', 'M', 11, 0),
(26, 'Abhijit Kakoti', '9508107213', 'P.S.P.', 'M', 11, 0),
(27, 'Amulya Sarma', '9401911299', 'P.S.P.', 'M', 11, 0),
(28, 'Paranjyoti Borah', '9854843500', 'P.S.P.', 'M', 11, 0),
(29, 'Phatik Ch. Tamuly', '9577317802', 'G-IV', 'M', 11, 0),
(30, 'Liladhar Neog', '9577983453', 'G-IV', 'M', 11, 0),
(31, 'Phatik Bora', '9707591279', 'G-IV', 'M', 11, 0),
(32, 'Abhijit Bora', '9854190701', 'G-IV', 'M', 11, 0),
(33, 'Dulal Ch. Bora', '9435571623', 'G-IV', 'M', 11, 0),
(34, 'Sibendra Sekhar Bora', '9435233858', 'G-IV', 'M', 11, 0),
(35, 'Soneswar Loying', '9435678235', 'G-IV', 'M', 11, 0),
(36, 'Akon Bora', '9401153508', 'G-IV', 'M', 11, 0),
(37, 'Abdul Lotif', '9508830573', 'G-IV', 'M', 11, 0),
(38, 'Trankeswar Bora', '9957148827', 'G-IV', 'M', 11, 0),
(39, 'Dilip Baruah', '8741940415', 'G-IV', 'M', 11, 0),
(40, 'Sayada Mosfica Begum', '8638716681', 'Sub-Registrar', 'F', 11, 0),
(41, 'Iva Bora', '9613918016', 'Sr.Inspector', 'F', 11, 0),
(42, 'Parbati Hasnu', '9435316337', 'Sr.Inspector', 'F', 11, 0),
(43, 'Malabika Saikia', '9531271782', 'Sr. Asstt.', 'F', 11, 0),
(44, 'Bhanu Gogoi', '9859301791', 'G-IV', 'F', 11, 0),
(45, 'Kabita Baruah', '9435443310', 'G-IV', 'F', 11, 0),
(46, 'Prasanna Mudai', '9101575893', 'DSCO', 'M', 11, 0),
(47, 'Longsing Rongchan', '7896916819', 'Sr. Asstt.', 'M', 2, 480),
(48, 'Nipon Rajkhowa', '9706703925', 'SCFW', 'M', 2, 174),
(49, 'Pradip Saikia', '9508608752', 'G-IV', 'M', 11, 0),
(50, 'Dipen Bora', '9954547390', 'G-IV', 'M', 11, 0),
(51, 'Tilumoni Tamuli', '9854190422', 'G-IV', 'F', 11, 0),
(52, 'Mofiz Ali', '9401936279', 'G-IV', 'M', 11, 0),
(53, 'SUKUMAR BHARALI', '8669056127', 'Jr.Engineer', 'M', 9, 0),
(54, 'HOREKRISHNA PATOWARI', '9435660357', 'SCD(Jr)', 'M', 11, 0),
(55, 'Dipankar Kondoli', '9435278185', 'SCD(Jr)', 'M', 11, 0),
(56, 'Amit Doley', '9864559854', 'SCD(Jr)', 'M', 11, 0),
(57, 'N.G. Upendra Singh', '9957285294', 'Exe.Engineer', 'M', 11, 0),
(58, 'Bijit Dutta', '94350', 'Asstt.Exe.Eng', 'M', 11, 0),
(59, 'Rajib Kr Das', '86381', 'Asstt.Exe.Eng', 'M', 11, 0),
(60, 'PRANJAL PROTIM SARMAH', '9435354855', 'AE', 'M', 9, 0),
(61, 'MONOJ KR. DUTTA', '9435090806', 'AE', 'M', 9, 0),
(62, 'Md. Shamsul Alam', '76620', 'Dy. A.O.', 'M', 11, 0),
(63, 'Bharat Ch. Goswami', '88761', 'Jr.Engineer', 'M', 11, 0),
(64, 'DINESH CH. DAS', '9957588045', 'Jr.Engineer', 'M', 9, 0),
(65, 'NOBIN CH. GOGOI', '7002286305', 'Jr.Engineer', 'M', 9, 0),
(66, 'Amiya Kr. Handique', '98541', 'Jr.Engineer', 'M', 11, 0),
(67, 'Shri Manash Protim', '94353', 'Jr.Engineer', 'M', 11, 0),
(68, 'Keshab Ch. Kalita', '0', 'Jr.Engineer', 'M', 11, 0),
(69, 'Polash Puzari', '86380', 'Head Asstt.', 'M', 11, 0),
(70, 'Bipul Baruah', '94357', 'Sr. Asstt.', 'M', 11, 0),
(71, 'Bipin Ch. Borah', '94354', 'Sr. Asstt.', 'M', 11, 0),
(72, 'Sanjib Baruah Sonow', '94350', 'Asstt. A/O', 'M', 11, 0),
(73, 'Dwijen Baruah', '98545', 'Jr. Asstt.', 'M', 3, 326),
(74, 'Md. Rofiquiddin Ahm', '94352', 'Jr. Asstt.', 'M', 3, 0),
(75, 'Padma Kt. Dutta', '94355', 'Jr. Asstt.', 'M', 3, 340),
(76, 'Bhaskar Chanda', '9706172278', 'Jr. Asstt.', 'M', 3, 157),
(77, 'Pankaj Mahanta', '7002703537', 'Jr. Asstt.', 'M', 6, 0),
(78, 'Niranjan Sarmah', '9101717458', 'Sec. Asstt.', 'M', 4, 168),
(79, 'Dadul Borah', '95775', 'Sec. Asstt.', 'M', 4, 353),
(80, 'Md. Nozibul Hussain', '7002833560', 'Sec. Asstt.', 'M', 4, 141),
(81, 'Robin Chetia', '88120', 'G-IV', 'M', 11, 0),
(82, 'Lakheswar Das', '98548', 'G-IV', 'M', 11, 0),
(83, 'Pallab Dutta', '0', 'G-IV', 'M', 6, 0),
(84, 'Bhaskar Buragohain', '9577591411', 'G-IV', 'M', 11, 0),
(85, 'Dinesh Deka', '0', 'G-IV', 'M', 11, 0),
(86, 'Basanta Thakuria', '0', 'G-IV', 'M', 11, 0),
(87, 'Ranju Borah Saikia', '97071', 'Jr. Asstt.', 'F', 11, 0),
(88, 'Mina Gogoi', '97072', 'Tracer', 'F', 11, 0),
(89, 'Indima Bora', '88761', 'Jr.Engineer(A', 'F', 11, 0),
(90, 'Binu Hazarika', '94355', 'Sub-Eng. Gr.', 'F', 11, 0),
(91, 'Anurupa Hazarika', '95770', 'Sub-Eng. Gr.', 'F', 11, 0),
(92, 'Basanti Basumotary', '98645', 'G-IV', 'F', 11, 0),
(93, 'Dipok Hazarika', '7636056913', 'Forester-I', 'M', 11, 0),
(94, 'Santanu Goswami', '8402913157', 'Forester-I', 'M', 11, 0),
(95, 'Poresh Das', '8720914821', 'Forester-I', 'M', 11, 0),
(96, 'Dhiren Duarah', '9101512267', 'Forester-I', 'M', 11, 0),
(97, 'Golap Kolita', '9508808245', 'Jr. Asstt.', 'M', 3, 380),
(98, 'Amulay Sonwal', '9613459651', 'Foewar Guard', 'M', 11, 0),
(99, 'Hem ram Saikia', '9954996729', 'Foewar Guard', 'M', 11, 0),
(100, 'Hira Baruah', '9954959032', 'Foewar Guard', 'M', 11, 0),
(101, 'Dhiresh Bhagoti', '9678214810', 'Foewar Guard', 'M', 11, 0),
(102, 'Thanaswar Nath', '9401906211', 'Foewar Guard', 'M', 11, 0),
(103, 'Bubul Das', '9954953026', 'Foewar Guard', 'M', 11, 0),
(104, 'Nakibur Rohman', '7399295882', 'Foewar Guard', 'M', 11, 0),
(105, 'Bijit Baruah', '9435350876', 'Exe.Engineer', 'M', 11, 0),
(106, 'Tapan Das', '7399086513', 'Asstt.Exe.Eng', 'M', 11, 0),
(107, 'PRASANTA BHUYAN', '8135812146', 'AE', 'M', 9, 0),
(108, 'Pratyasha Dowarah', '8133807792', 'Asstt.Enginee', 'F', 11, 0),
(109, 'Sarat Bora', '9435221047', 'A.O', 'M', 11, 0),
(110, 'Debabrat Das', '9707850267', 'A.A.O', 'M', 11, 0),
(111, 'Jogeswar Boro', '7896399074', 'Head Asstt.', 'M', 2, 326),
(112, 'Bhargobi Gogoi', '9531180689', 'Jr.Engineer', 'F', 11, 0),
(113, 'Pragya Bora', '9957701438', 'Jr.Engineer', 'F', 11, 0),
(114, 'Aivee Hazarika', '9101149506', 'Sub-Eng.', 'F', 11, 0),
(115, 'Tribeni Thengal', '9401436026', 'Tracer', 'F', 11, 0),
(116, 'Mondira Devi', '9435526314', 'Sr. Asstt.', 'F', 11, 0),
(117, 'Sidhartha Sankar Dut', '9706241640', 'Jr. Asstt.', 'M', 11, 0),
(118, 'Nitul Bora', '9508627922', 'Sec. Asstt.', 'M', 11, 0),
(119, 'Hiranya Pathari', '9435648016', 'Sec. Asstt.', 'M', 3, 305),
(120, 'Achyut Mudoi', '9854806421', 'Khalashi', 'M', 11, 0),
(121, 'Probodh Ch. Bora', '9531167250', 'Asstt.Exe.Eng', 'M', 11, 0),
(122, 'Asish Dowarah', '8486303177', 'Asstt.Enginee', 'M', 11, 0),
(123, 'SIBAM CHAKRABORTY', '7002798772', 'AE', 'M', 9, 0),
(124, 'Sanjiv Kr. Bora', '9085236633', 'Sub-Eng. Gr-', 'M', 11, 0),
(125, 'Dilip Das', '9101665323', 'Head Asstt.', 'M', 2, 410),
(126, 'Sadiqut Zaman', '6900359375', 'G-IV', 'M', 11, 0),
(127, 'Rupjyoti Sarmah', '9401234318', 'S.A.', 'M', 11, 0),
(128, 'Arun Hanse', '7086444221', 'S.A.', 'M', 11, 0),
(129, 'Bedanta Bhargav Das', '8136071190', 'S.A.', 'M', 4, 467),
(130, 'Biswajit Basumatary', '9577982467', 'S.A.', 'M', 4, 304),
(131, 'Chandan Saikia', '9854167932', 'S.A.', 'M', 4, 469),
(132, 'Mon Bahadur Bista', '8638496304', 'S.A.', 'M', 4, 352),
(133, 'Sushanta Saikia', '7399729195', 'S.A.', 'M', 11, 0),
(134, 'Arun Khanikar', '9401139341', 'P.P.O', 'M', 11, 0),
(135, 'Nakul Ch. Borgohain', '8404007673', 'P.P.O', 'M', 11, 0),
(136, 'Deba Kt. Saikia', '9401115880', 'P.P.O', 'M', 11, 0),
(137, 'Nabin Ch. Tamuli', '7637897324', 'M. Asstt.', 'M', 4, 439),
(138, 'Bhuban Das', '8011223464', 'G-IV', 'M', 11, 0),
(139, 'Jugal Bora', '9365595219', 'G-IV', 'M', 11, 0),
(140, 'Bharat Bora', '9101055871', 'G-IV', 'M', 11, 0),
(141, 'Md. Babul Rahman', '9577163574', 'G-IV', 'M', 11, 0),
(142, 'Md. Mokbul Husain', '9854558471', 'G-IV', 'M', 11, 0),
(143, 'Netra Bora', '9085557454', 'G-IV', 'M', 11, 0),
(144, 'Probin Bora', '9954033204', 'G-IV', 'M', 11, 0),
(145, 'Probin Kr. Neog', '7399106308', 'G-IV', 'M', 11, 0),
(146, 'Ranjit Kr. Das', '9854860687', 'G-IV', 'M', 11, 0),
(147, 'Ranjit Kr. Bora', '8876742135', 'G-IV', 'M', 11, 0),
(148, 'Ratneswar Saikia', '9365921276', 'Khalashi', 'M', 11, 0),
(149, 'Arun Mahanta', '9435493301', 'Khalashi', 'M', 11, 0),
(150, 'Ananta Hazarika', '9954953148', 'Khalashi', 'M', 11, 0),
(151, 'Biswajit Loing', '9954876871', 'Khalashi', 'M', 11, 0),
(152, 'Deben Baruah', '9435753832', 'Khalashi', 'M', 11, 0),
(153, 'Dillip Dutta', '9365945928', 'Khalashi', 'M', 11, 0),
(154, 'Dina Kt. Das', '9531340365', 'Khalashi', 'M', 11, 0),
(155, 'Lalit Hazarika', '9613094357', 'Khalashi', 'M', 11, 0),
(156, 'Md. Dadul Ali', '9854719446', 'Khalashi', 'M', 11, 0),
(157, 'Md. Hasibuddin Ahmed', '9613038744', 'Khalashi', 'M', 11, 0),
(158, 'Md. Muzibur Rahman', '6001005041', 'Khalashi', 'M', 11, 0),
(159, 'Poresh Hatibaruah', '9531338522', 'Khalashi', 'M', 11, 0),
(160, 'Prabin Bhuyan', '9508553418', 'Khalashi', 'M', 11, 0),
(161, 'Pradip Dutta', '9401868133', 'Khalashi', 'M', 11, 0),
(162, 'Tapan Gogoi', '9365332003', 'Khalashi', 'M', 11, 0),
(163, 'Ajit Kalita', '8752000779', 'G-IV', 'M', 11, 0),
(164, 'Bhupendra Nath Bori', '8011533508', 'G-IV', 'M', 11, 0),
(165, 'Binud Borpatra Gohai', '9854820305', 'G-IV', 'M', 11, 0),
(166, 'Bipul Nath', '8749852614', 'G-IV', 'M', 11, 0),
(167, 'Bubul Borgohain', '9954560453', 'G-IV', 'M', 11, 0),
(168, 'Dipankar Das', '9859341491', 'G-IV', 'M', 11, 0),
(169, 'Ghana Kt. Gogoi', '9864299672', 'G-IV', 'M', 11, 0),
(170, 'Gubi Baruah', '9613757014', 'G-IV', 'M', 11, 0),
(171, 'Jiten Bora', '9854353331', 'G-IV', 'M', 11, 0),
(172, 'Kamal Ch. Das', '9476546693', 'G-IV', 'M', 11, 0),
(173, 'Krishna Kt. Dutta', '9365143937', 'G-IV', 'M', 11, 0),
(174, 'Md. Nazimuddin Ahmed', '9854944216', 'G-IV', 'M', 11, 0),
(175, 'Mohendra Loing', '7896673967', 'G-IV', 'M', 11, 0),
(176, 'Muhiram Bori', '9957658401', 'G-IV', 'M', 11, 0),
(177, 'Nandeswar Saikia', '9859753317', 'G-IV', 'M', 11, 0),
(178, 'Prasanta Bailung', '8133948051', 'G-IV', 'M', 11, 0),
(179, 'Ratul Saikia', '8486803094', 'G-IV', 'M', 11, 0),
(180, 'Rubul Chakravorty', '9435094766', 'Exe.Engineer', 'M', 11, 0),
(181, 'Biraj Borah', '9435134651', 'Asstt.Exe.Eng', 'M', 11, 0),
(182, 'Anup Kr. Phukan', '9864060441', 'Asstt.Exe.Eng', 'M', 11, 0),
(183, 'Abhijit Baruah', '9954498801', 'Asstt.Enginee', 'M', 11, 0),
(184, 'Sahabuddin Saikia', '9435344736', 'A.O', 'M', 11, 0),
(185, 'Rajen Rai', '9435233264', 'Jr.Engineer', 'M', 11, 0),
(186, 'Prashanta Protim Pat', '9707927188', 'Jr.Engineer', 'M', 11, 0),
(187, 'Rupjyoti Bora', '9435154728', 'Jr.Engineer', 'M', 11, 0),
(188, 'Ranjit Kr. Sarma', '9435154995', 'A.A.O', 'M', 11, 0),
(189, 'Naren Dutta', '9954589614', 'Sub-Eng. Gr-', 'M', 11, 0),
(190, 'Ajit Saika', '9531047774', 'Sec. Asstt.', 'M', 11, 0),
(191, 'Ananta Das', '9435572140', 'Sec. Asstt.', 'M', 11, 0),
(192, 'Herembo Boro', '9859541396', 'Sec. Asstt.', 'M', 2, 0),
(193, 'PABITRA NATH RAJKHOWA', '9707433088', 'Sec. Asstt.', 'M', 2, 179),
(194, 'Samthun Bannu', '9401018834', 'Sec. Asstt.', 'M', 2, 307),
(195, 'Bipul Das', '6900994985', 'Sec. Asstt.', 'M', 2, 347),
(196, 'Horendra Nath Gogoi', '9401436770', 'Sec. Asstt.', 'M', 11, 0),
(197, 'Anil Dutta', '8638544677', 'Sec. Asstt.', 'M', 4, 425),
(198, 'Rajen Bora', '9435488130', 'Sec. Asstt.', 'M', 4, 159),
(199, 'Bonomali Bora', '9365227020', 'Sec. Asstt.', 'M', 4, 419),
(200, 'UTPAL SAIKIA', '9854434062', 'Sec. Asstt.', 'M', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `police_stations`
--

CREATE TABLE `police_stations` (
  `id` int(11) NOT NULL,
  `oc_name` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `polling_party_ts`
--

CREATE TABLE `polling_party_ts` (
  `id` int(11) NOT NULL,
  `groupno` int(11) DEFAULT NULL,
  `ps_no` int(11) DEFAULT NULL,
  `is_reserve` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `polling_station`
--

CREATE TABLE `polling_station` (
  `id` int(11) NOT NULL,
  `ps_no` varchar(5) DEFAULT NULL,
  `psname` varchar(300) DEFAULT NULL,
  `lac` int(11) DEFAULT NULL,
  `address` text,
  `pin` varchar(6) DEFAULT NULL,
  `gp` varchar(200) DEFAULT NULL,
  `police` varchar(200) DEFAULT NULL,
  `latt` varchar(30) DEFAULT NULL,
  `longg` varchar(30) DEFAULT NULL,
  `is_water` int(11) DEFAULT NULL,
  `is_toilet` int(11) DEFAULT NULL,
  `is_ramp` int(11) DEFAULT NULL,
  `is_electricity` int(11) DEFAULT NULL,
  `is_road` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `total_male_voter` int(11) DEFAULT NULL,
  `total_female_voter` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `polling_station`
--

INSERT INTO `polling_station` (`id`, `ps_no`, `psname`, `lac`, `address`, `pin`, `gp`, `police`, `latt`, `longg`, `is_water`, `is_toilet`, `is_ramp`, `is_electricity`, `is_road`, `status`, `total_male_voter`, `total_female_voter`) VALUES
(1, '1', 'Pulibor LP School(R/S)', 95, '1)Kachugaon        (part i) ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(2, '2', 'Pulibor LP School(L/S)', 95, '2)Kachugaon       (part ii) ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(3, '3', 'Pulibor Adarsha High School', 95, '1) Padumoni gaon, 2) Bogorijeng Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(4, '4', 'Chelengi Gaon LP School', 95, '1) Chelengi Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(5, '5', 'Kaboru Gaon LP School (R/S)', 95, 'Kaboru Gaon (Pt - I)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(6, '6', 'Kaboru Gaon LP School (L/S)', 95, 'Kaboru Gaon (Pt - II)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(7, '7', 'Dhekeripeta LP School (R/S)', 95, 'Bhoga Gaon (Pt-I)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(8, '8', 'Jonakinagar LP School', 95, 'Bhoga Gaon (Pt-II)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(9, '9', 'Bongaon Tarun Vocational ME Sc', 95, '1) Bongaon Part- I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(10, '10', 'Bongaon Tarun Vocational ME Sc', 95, '1) Bongaon Part- II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(11, '11', 'Dhekeripeta LP School (L/S)', 95, '1) Bongaon Part- III', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(12, '12', '2No Chinatoly LP School(R/S)', 95, '1)Chinatoli (part i)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(13, '13', '2No Chinatoly LP School(L/S)', 95, '2)Chinatoli (part ii)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(14, '14', 'Chandmari LP School (R/S)', 95, 'Golaghat Town Ward No-9 Part -I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(15, '15', 'Chandmari LP School (L/S)', 95, 'Golaghat Town Ward No-9 Part -II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(16, '16', 'Chandmari  High School (R/S)', 95, 'Golaghat Town Ward No-10 Part-I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(17, '17', 'Chandmari  High School  (R/S)-', 95, 'Golaghat Town Ward No-10 Part-II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(18, '18', 'Golaghat Town New Girls High S', 95, 'Golaghat Town Ward No 10 Part-II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(19, '19', 'Golaghat Town New Girls High S', 95, 'Golaghat Town Ward No 10 Part-III', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(20, '20', 'Tenpur LP School (R/S)', 95, 'Gulampatty (Golaghat Grant)  Part-I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(21, '21', 'Tenpur LP School (L/S)', 95, 'Gulampatty (Golaghat Grant)  Part-II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(22, '22', 'Golaghat Town Madrassa ME Scho', 95, 'Golaghat Town Ward No - 8 (Pt-I)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(23, '23', 'Golaghat Town Madrassa ME Scho', 95, 'Golaghat Town Ward No - 8 (Pt-II)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(24, '24', 'Dandadhar Girls\' High School (', 95, 'Golaghat Town Ward No - 7 P-I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(25, '25', 'Dandadhar Girls\' High School  ', 95, '1) Golaghat Town Ward No - 7 P-II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(26, '26', 'Town Natun LP School (R/S)', 95, 'Golaghat Town Ward No - 6 P-I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(27, '27', 'Town Natun LP School (A)', 95, 'Golaghat Town Ward No - 6 P- II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(28, '28', 'Town Natun LP School (L/S)', 95, 'Golaghat Town Ward No - 6 P-III', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(29, '29', 'Town Natun LP School (B)', 95, 'Golaghat Town Ward No - 6 P-IV', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(30, '30', 'Hindi Vidyalaya (R/S)', 95, 'Golaghat Town Ward No - 5 P-I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(31, '31', 'Hindi Vidyalaya (R/S-A)', 95, 'Golaghat Town Ward No - 5 P-II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(32, '32', 'Hindi Vidyalaya (L/S)', 95, 'Golaghat Town Ward No - 5 P-III', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(33, '33', 'Bengali LP School(R/S)', 95, 'Golaghat Town Ward No. 5  (Part - IV)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(34, '34', 'Bengali LP School(L/S)', 95, 'Golaghat Town Ward No. 5   (Part - V)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(35, '35', 'Hindi Vidyalaya (Middle)', 95, 'Srimanta Nagar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(36, '36', 'Town Model LP School (R/S) ', 95, 'Golaghat Town  Ward No - 11    Part-I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(37, '37', 'Town Model LP School (M) ', 95, 'Golaghat Town  Ward No - 11    Part-II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(38, '38', 'Town Model LP School (L/S)', 95, 'Golaghat Town Ward No-12-Part-I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(39, '39', 'Town Model LP School (L/S)-A', 95, 'Golaghat Town Ward No-12- Part-II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(40, '40', 'Hemprobha Girls\' College(R/S)', 95, 'Golaghat Town Ward No-13 Part- I ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(41, '41', 'Hemprobha Girls\' College(M)', 95, 'Golaghat Town Ward No-13  Part- III', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(42, '42', 'Hemprobha Girls\'  College (L/S', 95, 'Golaghat Town Ward No-13 P-II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(43, '43', 'Bengenakhowa Jr. Basic School ', 95, 'Amolapatty Part-I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(44, '44', 'Bengenakhowa Jr. Basic School ', 95, 'Amolapatty Part-II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(45, '45', '2 No Bengenakhowa LP School (R', 95, 'Bengenakhowa (Pt. - I)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(46, '46', '2 No Bengenakhowa LP School (L', 95, 'Bengenakhowa (Pt. - II)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(47, '47', 'Bengali High School (R/S)', 95, 'Golaghat Town  Ward No. 4 Part- I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(48, '48', 'Bengali High School (M)', 95, 'Golaghat Town  Ward No. 4 Part- III', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(49, '49', 'Bengali High School (L/S)', 95, 'Golaghat Town  Ward No. 4 P- II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(50, '50', 'Bengali High School (L/S)-A', 95, 'Golaghat Town  Ward No. 4 P- IV', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(51, '51', 'Misson LP School', 95, 'Golaghat Town Ward No. 3 P- I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(52, '52', 'Hindi High School (R/S)', 95, 'Golaghat Town Ward No. 3 P- II ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(53, '53', 'Hindi High School (L/S)', 95, 'Golaghat Town Ward No. 3 P- III', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(54, '54', 'Hindi High School (M)', 95, 'Golaghat Town Ward No. 3 P- IV', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(55, '55', 'Kumarpatty LP School (R/S)', 95, 'Golaghat Town Ward No. 2 P- I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(56, '56', 'Kumarpatty LP School (M)', 95, 'Golaghat Town Ward No. 2 P- III', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(57, '57', 'Kumarpatty LP School (L/S)', 95, 'Golaghat Town Ward No. 2 P- II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(58, '58', 'Mudoigaon Girls\' LP School (R/', 95, 'Golaghat Town Ward No. 1 P- I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(59, '59', 'Rupjyoti LP School(R/S)', 95, 'Golaghat Town Ward No. 1 Part- I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(60, '60', 'Mudoigaon Girls\' LP School (L/', 95, 'Golaghat Town Ward No. 1 P- II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(61, '61', 'Rupjyoti LP School(L/S)', 95, 'Golaghat Town Ward No. 1 Part- II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(62, '62', 'Hamdoi High School (R/S)', 95, 'Bengenakhowa Grant P- I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(63, '63', 'Hamdoi High School (L/S)', 95, 'Bengenakhowa Grant P- II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(64, '64', 'Golaghat Bagisa LP School', 95, 'Bengenakhowa Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(65, '65', 'Kathkotia LP School (R/S)', 95, 'Baghchung Noragaon, Part i', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(66, '66', 'Kathkotia LP School (M)', 95, 'Baghchung Noragaon, Part ii', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(67, '67', 'Kathkotia LP School (L/S)', 95, '1) Kathkotia  2) Bengenakhowa Grant P - III', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(68, '68', 'Torfat High School(R/S)', 95, 'Torfat Gaon,       Part i', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(69, '69', 'Torfat High School(L/S)', 95, 'Torfat Gaon,       Part ii', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(70, '70', 'Ahomgaon Natun LP School (R/S)', 95, 'Barphukankhat Part-I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(71, '71', 'Ahomgaon Natun LP School (L/S)', 95, 'Barphukankhat Part-II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(72, '72', '2 No. Kacharihat LP School (R/', 95, 'Kacharihat        (Part 1)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(73, '73', '2 No. Kacharihat LP School (L/', 95, 'Kacharihat        (Part 2)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(74, '74', 'Kamarbondha Girls\' High School', 95, 'Raidongiagaon (Pt. -I)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(75, '75', 'Kamarbondha Girls\' High School', 95, 'Raidongiagaon (Pt. -II)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(76, '76', 'Kamarbondha Higher Secondary S', 95, 'Gohaingaon (part i)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(77, '77', 'Kamarbondha Higher Secondary S', 95, 'Gohaingaon (part ii)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(78, '78', 'Rajanakhat LP School (R/S)', 95, 'Mautgaon (Pt. -I)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(79, '79', 'Rajanakhat LP School (L/S)', 95, 'Mautgaon (Pt. -II)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(80, '80', '2 No. Bokolai LP School', 95, 'Bokolai (Part i)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(81, '81', '1 No. Bokolai LP School', 95, 'Bokolai (Part ii)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(82, '82', 'Kopohuating Na-pamua LP School', 95, 'Kopohuating Bagan, Kopohuating Gaon ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(83, '83', 'Bosabokotial LP School (R/S)', 95, 'Bosa Gaon, Kharjangaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(84, '84', 'Bosabokotial LP School (L/S)', 95, 'Bokotial Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(85, '85', 'No. 2 Bosagaon Jr. Basic Schoo', 95, 'Kumargaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(86, '86', 'No. 2 Bosagaon Jr. Basic Schoo', 95, 'Kumargaon, Na-pamua Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(87, '87', 'Daborahoi LP School(R/S) ', 95, 'Da Barahi (Part i) ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(88, '88', 'Daborahoi LP School(L/S) ', 95, 'Da Barahi ( Part ii) ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(89, '89', '1 No. Ahomgaon LP School (R/S)', 95, 'Ahom Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(90, '90', '1 No. Ahomgaon LP School (L/S)', 95, ' Sarukachari Gaon, Borkachari Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(91, '91', 'Soraimuria LP School (R/S)', 95, 'Guwalgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(92, '92', 'Soraimuria LP School (L/S)', 95, 'Borahi Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(93, '93', 'Kasturiba  LP School', 95, 'Ath Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(94, '94', 'Athgaon ME School ', 95, 'Doloujan ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(95, '95', 'Athgaon LP School ', 95, 'Bambarahi', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(96, '96', '3 No. Furkating Nagar Parthami', 95, 'Tirual Part-I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(97, '97', '3 No. Furkating Nagar Parthami', 95, 'Tirualgaon Part-II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(98, '98', 'Tirual LP School (L/S)', 95, 'Tirualgaon Pt-II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(99, '99', 'Tirual LP School (R/S)', 95, 'TirualGaon  Part-III', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(100, '100', 'Chakardhora LP School ', 95, 'Chakardhora', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(101, '101', 'Ulutoli LP School(R/S)', 95, 'Rupkolia (Part i)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(102, '102', 'Ulutoli LP School(L/S)', 95, 'Rupkolia (Part ii)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(103, '103', 'Gazalasatra Jr. Basic School', 95, 'Da- Gaon, Borpatharua Gaon ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(104, '104', 'Sankerdev LP School', 95, 'Da- chamua Gaon, Gazalitup Gaon,  Hahchora Gaon, ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(105, '105', 'Furkating High School (R/S)', 95, 'Furkating Town', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(106, '106', 'Furkating High School (M)', 95, 'Furkating Town Part-II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(107, '107', 'Furkating High School (L/S)', 95, 'Furkating Rail Station', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(108, '108', 'Furkating Model LP School (R/S', 95, 'Fatuwal Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(109, '109', 'Furkating Model LP School (L/S', 95, 'Furkating Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(110, '110', 'Garigaon LP School', 95, 'Aaitonia Mirigaon, Garigaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(111, '111', 'Oating Bagan LP School', 95, 'Oating Bagan Grant', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(112, '112', 'Nisugola LP School', 95, 'Oating Rail Station, Balijan Bagan Grant,  1 No. Kacharigaon,  Kochuwonihola', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(113, '113', 'Kalujan LP School (R/S)', 95, 'Nogura Grant, Kalujan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(114, '114', 'Doloujan Bagan Club', 95, '1) Dolowjan Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(115, '115', 'Kalujan LP School (L/S)', 95, '1) Konworipathar , 2) Gowaltup , 3)  Chokialting', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(116, '116', 'Doyang Bagan LP School (R/S)', 95, '1) Doyang Bagan Pt-I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(117, '117', 'Doyang Bagan LP School (L/S)', 95, '1) Doyang Bagan Pt-II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(118, '118', 'Pualipothar LP School', 95, 'Pualipothargaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(119, '119', 'Balijan Boys\' LP School (R/S)', 95, 'Chaudang Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(120, '120', 'Balijan Boys\' LP School (L/S)', 95, 'Charipuria', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(121, '121', 'Baruagaon LP School', 95, '1) Baruagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(122, '122', 'Fesual Moktab LP School', 95, '1) Fesual Gaon Pt-I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(123, '123', 'Balijan High School ', 95, '1) Fesual Gaon Pt-II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(124, '124', 'Ghiladhari Sr. Basic School (R', 95, '1)Mahimalia Gaon  ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(125, '125', 'Ghiladhari Sr. Basic School (L', 95, '  1. Habichukia', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(126, '126', 'Ghiladhari LP School ', 95, '1) Bamungaon, 2) Puranimelia', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(127, '127', 'Socialist Satyagrahi Pathar LP', 95, 'Socialist Satyagrahi Pathar ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(128, '128', 'Morong Borchapori LP School', 95, 'Mokrong Borchapori', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(129, '129', 'Rupkolia LP School', 95, '1) Rupkolia', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(130, '130', 'Bebejia LP School', 95, '1) Bebejia 2)Gowaljan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(131, '131', 'Tritiya Bosha LP School', 95, '1)Bosagaon , 2) Mokronghabi Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(132, '132', 'Chokial LP School ', 95, 'Chokial', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(133, '133', 'Sarukachari LP School', 95, 'Saru Kachari Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(134, '134', 'Nauboicha LP School', 95, 'Nauboicha', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(135, '135', 'Barichowa LP School', 95, 'Barichowa', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(136, '136', 'Lonpuria LP School (R/S)', 95, '1)Borkachari 2) Lunpuria', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(137, '137', 'Lonpuria LP School (L/S)', 95, '1)2 No. Kachari, 2)1-2 No. Nagaon, 3)Khutakota ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(138, '138', 'Singfura LP School(R/S)', 95, 'Singfura (Part i)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(139, '139', 'Singfura LP School(L/S)', 95, 'Singfura (Part ii)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(140, '140', 'Adrarshagaon LP School (R/S)', 95, 'Socialist Satyagrahi Adarshagaon (Pt-1)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(141, '141', 'Adrarshagaon LP School (L/S)', 95, 'Socialist Satyagrahi Adarshagaon (Pt-2)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(142, '142', 'Ghiladharibagan LP School (R/S', 95, '1) Ghiladhari Bagan Pt-I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(143, '143', 'Ghiladharibagan LP School (L/S', 95, '1) Ghiladhari Bagan Pt-II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(144, '144', 'Jerpai LP School (R/S)', 95, 'Chokordhora ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(145, '145', 'Jerpai LP School (L/S)', 95, 'Jerpai , Naujan ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(146, '146', 'Mokrong Bagan LP School (R/S)', 95, 'Mokrong Bagan (pt-1)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(147, '147', 'Mokrong Bagan LP School (L/S)', 95, 'Mokrong Bagan (pt-2)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(148, '148', 'Doyang High School (R/S)', 95, '1)Gomariguri Forest (Krishnaswami Gaon),\n 2)Merapani Bhakatgaon, ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(149, '149', 'Doyang High School (L/S)', 95, '1)Chaudang Pathar (Arunudoy)\n2) Merapani Padmapur Gaon\n3)Merapani Gonokpukhuri  ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(150, '150', 'Usha Bagan LP School (R/S)', 95, '1) Usha Bagan (Pt-I)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(151, '151', 'Usha Bagan LP School (L/S)', 95, '1) Usha Bagan (Pt-II)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(152, '152', 'Usha Bagan Christian Basti LP ', 95, '1) Usha Bagan 11 NO BLOCK', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(153, '153', 'Jamuguribagan LP School (R/S)', 95, 'Jamuguri Bagan Pt-I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(154, '154', 'Jamuguribagan LP School (L/S)', 95, 'Jamuguri Bagan Pt-II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(155, '155', 'Jamuguribagan LP School (M)', 95, 'Jamuguri Bagan Pt-III', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(156, '156', 'Navajyoti ME School', 95, '1) Matikhola', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(157, '157', 'Hatigarh Matikhola LP School', 95, '1) 1 No. Borjan and 1 No. Sonitpur Santipur (New), 2) Madhupur ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(158, '158', 'Borjan Project LP School', 95, '1) Hatigarh Matikhola', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(159, '159', 'Borjan LP School (R/S)', 95, '1) Lakhibari , 2)  2 No. Borjan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(160, '160', 'Borjan LP School (L/S)', 95, '1) Lakhijuri,  2) Gobinpur', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(161, '161', 'Gobinpur LP School', 95, 'Gobinpur', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(162, '162', 'No. 2 Ratanpur LP School', 95, '1) Lakhibari (Ratanpur)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(163, '163', 'Lakhibari LP School ', 95, '1) 2 No. Jamuguri (Lakhipur) ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(164, '164', 'Puspaban LP School', 95, '1) Puspaban', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(165, '165', 'Narayanpur L P School', 95, '1) Natun Lakhijuri Narayanpur', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(166, '166', 'No. 1 Ratanpur LP School ', 95, '1) Ratanpur ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(167, '167', 'No.1 Sonapur LP School', 95, 'No.1 Sonapur ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(168, '168', 'Naharjan LP School (R/S)', 95, '1) Naharjan Grant Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(169, '169', 'Naharjan LP School (L/S)', 95, '1) 2 No. Jamuguri, 2) Bhugadabari Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(170, '170', 'Jamuguri ME School (R/S)', 95, '1) Sipahibari, 2) Kacharichuk, 3) Jamuguri Rail Station, 4) 1 No. Jamuguri Gaon ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(171, '171', 'Jamuguri ME School (L/S)', 95, 'Molhanitup', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(172, '172', 'Samukjan Natun LP School', 95, 'Samukjan Junakipathar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(173, '173', 'Amguri LP School', 95, '1) Amguri Forest Village, 2) Amguri 2 No. Milanpur', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(174, '174', '2No Soraimari LP School', 95, '1) 2 No. Soraimari\n2) Kachomari Forest', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(175, '175', 'Soraimari Rangdhali LP School', 95, '1) Na-mati Rangdhali', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(176, '176', 'Musorbhonga LP School (R/S)', 95, 'Kachomari Musorbhonga', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(177, '177', 'Musorbhonga LP School (L/S)', 95, 'Kachomari 3 No. Soraimari ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(178, '178', 'Kachomari ME School', 95, '1) Kachomari (Hatiekhowa Gaon),\n2) Kachomari Bongaon (Forest village) 3) Kachomari (Baliachapori)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(179, '179', 'Tonajan LP School (R/S)', 95, 'Kachomari Dubarani', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(180, '180', 'Tonajan LP School (L/S)', 95, 'Kachomari Tonajan Gaon  ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(181, '181', 'Bia Korowa LP School', 95, '1) Kachomari (Biyakarua), 2) Kachomari (Dharampur), 3) Kachomari (Kakojan) 4. Kachamari Satjaponi      ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(182, '182', 'Doyang LP School', 95, '1) Kachomari Garigaon, 2) Kachomari Uttar Negheri Pathar,   3) Kachomari Samoguri ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(183, '183', 'Soraimari Na-Mati LP School', 95, '1) Soraimari Na-matigaon, 2) Kachomarigaon ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(184, '184', 'Joypukhuri LP School', 95, '1) 1 No. Joypukhuri, 2) 1 No. Jogyapur, 3) 2 No. Jogyapur, 4) Teteliguri, 5) Bijoypur ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(185, '185', 'Gulukpur Panbari LP School', 95, '1) Panbari, 2) Ouguri, 3) Naharbari, 4) Gulukpur', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(186, '186', 'Ratanpur Simanta  ME School (R', 95, '1) Panbari Ratanpur, 2) Sisupani Jyotipathar, 3) Sisupani Pahartuli  4) Sisupani Jogesipathar,', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(187, '187', 'Ratanpur Simanta ME School (L/', 95, '1) Pub Panbari, 2) Jengoni Pathar,3) Dayalpur ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(188, '188', 'Telishal LP School', 95, '1)Bishnupur Sisupani, 2)Sisupani Telishal', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(189, '189', 'Kulaigaon LP School', 95, '1)Kalaigaon, 2)Sisupani Dineshpur ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(190, '190', 'Doyangpar LP School (Changkhat', 95, ' 1) Doyangpar Gaon, 2) Changkhati Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(191, '191', 'Bandik pathar LP School', 95, ' Benedik Pathar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(192, '192', 'Hidimbapur LP School', 95, '1) 1 No. Hidimbapur, 2) 2 No. Hidimbapur, 3) Doimuguri, 4) Sitalimari ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(193, '193', 'Ratanpur LP School (R/S)', 95, '1)Sisupani (Lakhipur), 2)Sisupani (Shantipur), 3)Sisupani (Devidpur) 4)Changkhati (Goneshpur) ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(194, '194', 'Ratanpur LP School (L/S)', 95, 'Changkhati (Ratanpur)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(195, '195', 'Milonpur LP School (R/S)', 95, 'Milanpur Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(196, '196', 'Narortoli Adarsha School', 95, 'Nahortoli', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(197, '197', 'Milonpur LP School ( L/S)', 95, 'Binoypur Gaon, Sonalipathar Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(198, '198', 'Milonpur LP School ( M)', 95, 'Chandanpur Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(199, '199', 'Doldoli LP School', 95, '1) Sorupani, 2) 1 No. Doldoli, 3) 2No. Doldoli, 4) Janatapur, 5) 3 No. doldoli  ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(200, '200', 'Kalyanpur LP School', 95, '1) Sisupani (Kalyanpur), 2) Sisupani (Shahidpur) ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(201, '201', 'Narayanpur LP School', 95, '1. 1No Narayanpur       2. Sisupani (Sialmari)i          3. 1 No Shantipur', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(202, '202', 'Kadamguri LP School', 95, '1. 2No Shantipur          2. 2 No. Kadamguri          3. 1 No kadamguri ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(203, '203', '2 No. Sonalipathar LP School', 95, ' Sisupani Sonalipathar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(204, '204', 'Noreshpur LP School .', 95, '1) Sukanbeel, 2) Padum Pathar ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(205, '205', 'Naghari Pathar L.P. School.', 95, '1)Kachomari ( Dakhin Negheri Pathar),             2)Sonapur Forest Village, ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(206, '206', 'Kamatapur LP School', 95, 'Sisupani Kamatapur', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(207, '207', 'Joypukhuri Bodo Medium  ME Sch', 95, 'No.2 Joypukhuri Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(208, '208', 'Nolonipather LP School', 95, '1) Gomariguri (Noloni-Pathar)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(209, '209', 'Bahfola LP School', 95, '1) Gomariguri (Kolbari)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(210, '210', 'Arunodoy LP school', 95, '1) Gomariguri (Enchroacher)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(211, '211', 'Teteliguri LP School(R/S)', 95, '1. Gomariguri (Pothalipuria )                 2. Gomariguri  Part i', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(212, '212', 'Teteliguri LP School(L/S)', 95, '1. Gomariguri (Pothalipuria )                2. Gomariguri Part ii', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(213, '213', '1No Gomariguri LP School (R/S)', 95, '1 No. Gomariguri (Forest Block)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(214, '214', '1No Gomariguri LP School (L/S)', 95, '2 No. Gomariguri (Forest Block)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(215, '215', 'Gomariguri Panchayat Office', 95, '1) Gomariguri (Teteliguri)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(216, '216', 'Nabajyoti LP School(R/S)', 95, 'Lachitpur,Jyotipur, Sonitpur,        ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(217, '217', 'Nabajyoti LP School(L/S)', 95, ' (1 No. Nabajyoti,        2 No. Nabajyoti)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(218, '218', 'Ahatguri L.P. School', 95, '3 No. Gomariguri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(219, '219', 'Tarun ME School', 95, '4 No. Gomariguri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(220, '220', '5No Gomari Kheroni LP School(R', 95, '5 No-Gomariguri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(221, '221', '5No Gomari Kheroni LP School(L', 95, '6 No-Gomariguri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(222, '222', 'Merapani ME School (R/S)', 95, 'Merapani Forest Block', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(223, '223', 'Merapani ME School (R/S-A)', 95, 'Merapani Narayanpur ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(224, '224', 'Merapani ME School (L/S)', 95, '1) Merapani Forest Village', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(225, '225', 'Merapani ME School(Middle)', 95, '1) Islampur, 2) Rampur ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(226, '226', 'Merapani LP School (R/S)', 95, '1) Merapani Panchawati, 2) Merapani Madhabpur, 3) 1 No. Negheribeel ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(227, '227', 'Merapani LP School (L/S)', 95, '1) Negheri Beel, 2) Negheribeel (Muslimgoan), 3) Merapani (Muslimgaon) ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(228, '228', 'Udoipur Jyotiprokash L.P. Scho', 95, '1)  Mikirbasti 4 No. Gomariguri, 2) Merapani New Enchroachment Area (Udoipur) ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(229, '229', 'Anantapur LP School (R/S)', 95, '1)Merapani Doyang Range, 2)Bheleuguri Doyang Range, ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(230, '230', 'Anantapur LP School (L/S)', 95, '1)Bheleuguri Joypur, 2)Bheleuguri Kheroni    ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(231, '231', 'Dighalpani LP School', 95, '1) Merapani Dighalpani', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(232, '232', 'Navagram LP School (R/S)', 95, 'Merapani Navagram Bijoypur Part-I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(233, '233', 'Navagram LP School (M)', 95, 'Merapani Navagram Bijoypur Part-II', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(234, '234', 'Navagram LP School (L/S)', 95, '1) Merapani Navagram', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(235, '235', 'Chaudangpather ME School ', 95, '1) Chaudang Pathar P-I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(236, '236', 'Chaudangpathar Naujan LP Schoo', 95, ' Chaudang Pathar Naujan Chuk (Part- I)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(237, '237', 'Chaudangpather Charaimari LP S', 95, 'Charai mari (Chowdang Pathar)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(238, '238', 'Chaudangpather LP School', 95, 'Chaudang Pathar  Tarani Chuk(Part 4)Section A', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(239, '239', 'No2.Chaudangpather LP School', 95, '1) Chaudang Pathar (P-IV Tarani Chuk)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(240, '240', 'Samaguri Sonalipthar Primary S', 95, 'Chaudang Pathar  Tarani Chuk(Part 4)Section B', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(241, '241', 'Vijoypur LP School', 95, '1) Natun Chaudang Pathar Pt-I', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(242, '242', 'Amgurichuk LP School', 95, 'Natun Chaudang Pathar (Pt-I Section B)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(243, '243', 'Chaudangpather Balipara LP Sch', 95, '1) Natun Chaudang Pathar Pt- II ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(244, '244', 'Chaudangpather Balipara LP Sch', 95, '1) Natun Chaudang Pathar Pt- III', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(245, '245', 'Cholongpather LP School (R/S)', 95, '1) Natun Chaudang Pathar ( Cholong Pathar) (pt-1)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(246, '246', 'Cholongpather ME School', 95, '1) Natun Chaudang Pathar ( Cholong Pathar) (pt-2)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(247, '247', 'Cholongpather LP School (L/S)', 95, '1) 1 No. Chaudang Pathar (Athgaon)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(248, '248', 'Sobhangaon LP School', 95, '1) Subhongaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(249, '249', 'Tarani Majgaon LP School ', 95, '1)  Tarani Forest (3 No. Tarani), 2) 4 No. Tarani (Majgaon Bishrampur)  \n', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(250, '250', 'Kalyanpur LP School (R/S)', 95, 'Tarani Enchrochment Area (Kalyanpur)(Part i)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(251, '251', 'Kalyanpur LP School (L/S)', 95, 'Tarani Enchrochment Area (Kalyanpur)         (Part ii)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(252, '252', 'Kulajan ME School (R/S)', 95, '1) Upper Tarani (Kulajan P-I)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(253, '253', 'Kulajan ME School (L/S)', 95, '1) Upper Tarani (Kulajan P-II)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(254, '254', '32 No. Kulajan LP School ', 95, '1) Upper Tarani (Kulajan P-III)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(255, '255', 'Tarani Habi LP School (R/S)', 95, '1) Tarani Habi Leelapur (pt-1)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(256, '256', 'Tarani Habi LP School (L/S)', 95, '1) Tarani Habi Leelapur (pt-2)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(257, '257', 'Tarani Forest LP School (R/S)', 95, '1) Tarani Forest       (Part i)   ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(258, '258', 'Tarani Forest LP School (L/S)', 95, '1) Tarani Forest     (Part ii)   ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(259, '259', 'Banuatangia LP School', 95, '1) Tarani Forest ( Banuatongia ), 2) Tarani Forest Betoni Patty, 3) 148 No. Banuatongia Tarangial Patty\n', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(260, '260', 'Arunachal Borkachari LP  Schoo', 95, 'Tarani Forest Borkachari, Tarani Forest Majpotigaon, Tarani Forest Naharchaporigaon  ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(261, '261', 'Arunachal Borkachari LP  Schoo', 95, 'Tarani Forest Tongiagaon, Tarani Forest Da- Kurukanigaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'DEO'),
(3, 'Nodal Officer'),
(4, 'Nodal Officer(Fuel)'),
(5, 'Creator');

-- --------------------------------------------------------

--
-- Table structure for table `sector_master`
--

CREATE TABLE `sector_master` (
  `id` int(11) NOT NULL,
  `sector_name` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sector_officers`
--

CREATE TABLE `sector_officers` (
  `id` int(11) NOT NULL,
  `person_name` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `sector_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE `training` (
  `id` int(11) NOT NULL,
  `phaseno` int(11) DEFAULT NULL,
  `partno` int(11) DEFAULT NULL,
  `groupno` int(11) DEFAULT NULL,
  `trgdate` date DEFAULT NULL,
  `trgtime` int(11) DEFAULT NULL,
  `trgplace` varchar(100) DEFAULT NULL,
  `hallno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `password` varchar(120) NOT NULL,
  `user_type` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `designation`, `phone`, `password`, `user_type`, `status`) VALUES
(1, 'Rituraj Borgohain', 'District Manager', '7002274743', '0192023a7bbd73250516f069df18b500', 2, 1),
(2, 'Shri Bibhas Ch. Modi', 'Deputy Commissioner', '9706786200', '0192023a7bbd73250516f069df18b500', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `owner_name` varchar(50) DEFAULT NULL,
  `owner_phone` varchar(15) DEFAULT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_phone` varchar(15) DEFAULT NULL,
  `reg_no` varchar(20) DEFAULT NULL,
  `vehicle_type` int(11) DEFAULT NULL,
  `model` varchar(80) DEFAULT NULL,
  `seat` int(11) DEFAULT NULL,
  `used_type` int(11) DEFAULT NULL,
  `fuel_type` int(11) DEFAULT NULL,
  `used_from` varchar(20) DEFAULT NULL,
  `used_to` varchar(20) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `owner_name`, `owner_phone`, `driver_name`, `driver_phone`, `reg_no`, `vehicle_type`, `model`, `seat`, `used_type`, `fuel_type`, `used_from`, `used_to`, `status`) VALUES
(1, 'Rituraj Borgohain', '7002274743', 'Rituraj Borgohain', '7002274743', 'AS4z8425', 1, 'i20', 4, 2, 1, '2021-01-12', NULL, 1),
(2, 'Hemanta Saikia', '9706785200', 'Hemanta Saikia', '9706785200', 'AS05G1299', 2, 'Bolero', 6, 2, 2, '2021-01-19', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_assign`
--

CREATE TABLE `vehicle_assign` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(20) DEFAULT NULL,
  `person_name` varchar(300) DEFAULT NULL,
  `person_contact` varchar(20) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `used_on` date DEFAULT NULL,
  `fuel_request` int(11) DEFAULT NULL,
  `fuel_given` int(11) DEFAULT NULL,
  `fuel_type` int(11) DEFAULT NULL,
  `used_for` varchar(200) DEFAULT NULL,
  `remarks` text,
  `final_remarks` text,
  `created_on` date DEFAULT NULL,
  `cby` int(11) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approved_on` date DEFAULT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_assign`
--

INSERT INTO `vehicle_assign` (`id`, `reg_no`, `person_name`, `person_contact`, `vehicle_id`, `person_id`, `used_on`, `fuel_request`, `fuel_given`, `fuel_type`, `used_for`, `remarks`, `final_remarks`, `created_on`, `cby`, `approved_by`, `approved_on`, `status`) VALUES
(1, 'AS4z8425', 'D Sharma, DM, [7002274743]', NULL, NULL, NULL, '2021-01-19', 12, NULL, NULL, NULL, '1', NULL, '2021-01-20', 0, 1, '2021-01-20', 1),
(2, 'AS4z8425', 'D Sharma, DM, [7002274743]', NULL, NULL, NULL, '2021-01-12', 12, NULL, NULL, NULL, NULL, NULL, '2021-01-21', 1, NULL, NULL, 9),
(3, 'AS4z8425', 'D Sharma, DM, [7002274743]', NULL, NULL, NULL, '2020-01-12', 12, NULL, NULL, NULL, NULL, NULL, '2021-01-21', 1, NULL, NULL, 9),
(4, 'AS4z8425', 'D Sharma, DM, [7002274743]', NULL, NULL, NULL, '2020-01-21', 10, NULL, NULL, NULL, NULL, NULL, '2021-01-21', 1, NULL, NULL, 9),
(5, 'AS4z8425', 'D Sharma, DM, [7002274743]', NULL, NULL, NULL, '2021-01-22', 18, NULL, NULL, NULL, NULL, NULL, '2021-01-21', 1, NULL, NULL, 9),
(6, 'AS4z8425', 'D Sharma, DM, [7002274743]', NULL, NULL, NULL, '2021-01-22', 5, NULL, NULL, NULL, NULL, NULL, '2021-01-21', 1, NULL, NULL, 1),
(7, 'AS05G1299', 'D Sharma, DM, [7002274743]', NULL, NULL, NULL, '2021-01-25', 7, NULL, NULL, NULL, NULL, NULL, '2021-01-22', 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_trans`
--

CREATE TABLE `vehicle_trans` (
  `id` int(11) NOT NULL,
  `used_on` date DEFAULT NULL,
  `reg_no` varchar(20) DEFAULT NULL,
  `v_assigned_id` int(11) DEFAULT NULL,
  `loc_from` varchar(100) DEFAULT NULL,
  `loc_to` varchar(100) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `remarks` text,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_trans`
--

INSERT INTO `vehicle_trans` (`id`, `used_on`, `reg_no`, `v_assigned_id`, `loc_from`, `loc_to`, `distance`, `remarks`, `status`) VALUES
(1, '2021-01-19', 'AS4z8425', 1, 'Golaghat', 'Kachomari', 7, NULL, 1),
(2, '2021-01-19', 'AS4z8425', 1, 'Kachomari', 'Dergaon', 15, NULL, 1),
(3, '2021-01-19', 'AS4z8425', 1, 'Dergaon', 'Golaghat', 28, NULL, 1),
(4, '2021-01-12', 'AS4z8425', 2, 'Golaghat', 'Bokakhat', 50, NULL, 1),
(5, '2020-01-12', 'AS4z8425', 3, '123', '21312', 12, NULL, 1),
(6, '2020-01-21', 'AS4z8425', 4, 'Golaghat', 'Dergaon', 20, NULL, 1),
(7, '2020-01-21', 'AS4z8425', 4, 'Dergaon', 'Kuralghuri', 10, NULL, 1),
(8, '2020-01-21', 'AS4z8425', 4, 'Kuralguri', 'Golaghat', 5, NULL, 1),
(9, '2021-01-22', 'AS4z8425', 5, 'Golaghat', 'Khumtai', 50, NULL, 1),
(10, '2021-01-22', 'AS4z8425', 5, 'Khumtai', 'Golaghat', 50, NULL, 1),
(11, '2021-01-22', 'AS4z8425', 6, 'Golaghat', 'Furkating', 10, NULL, 1),
(12, '2021-01-22', 'AS4z8425', 6, 'Furkating', 'Golaghat', 10, NULL, 1),
(13, '2021-01-25', 'AS05G1299', 7, 'Golaghat ', 'Gomari', 10, NULL, 1),
(14, '2021-01-25', 'AS05G1299', 7, 'Gomari', 'Golaghat', 10, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_types`
--

CREATE TABLE `vehicle_types` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_types`
--

INSERT INTO `vehicle_types` (`id`, `name`) VALUES
(1, 'Car'),
(2, 'SUV'),
(3, 'Van'),
(4, 'Sedan'),
(5, 'Mini Bus'),
(6, 'Bus'),
(7, 'Mini Van'),
(8, 'Truck'),
(9, 'Cariar'),
(10, 'Tempo');

-- --------------------------------------------------------

--
-- Table structure for table `zonal_officers`
--

CREATE TABLE `zonal_officers` (
  `id` int(11) NOT NULL,
  `person_name` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `zone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zone_master`
--

CREATE TABLE `zone_master` (
  `id` int(11) NOT NULL,
  `zone_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zone_master`
--

INSERT INTO `zone_master` (`id`, `zone_name`) VALUES
(1, 'Golaghat'),
(2, 'Bokolai'),
(3, 'Athkhelia'),
(4, 'Chowdangpather'),
(5, 'Kachomari'),
(6, 'Gomari'),
(7, 'Khumtai'),
(8, 'Joraguri-A'),
(9, 'Missamora'),
(10, 'Dakhinhengera');

-- --------------------------------------------------------

--
-- Table structure for table `zone_sector`
--

CREATE TABLE `zone_sector` (
  `id` int(11) NOT NULL,
  `psid` int(11) NOT NULL,
  `zone` int(11) NOT NULL,
  `sector` int(11) NOT NULL,
  `lac` int(11) NOT NULL,
  `police` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `polling_party_ts`
--
ALTER TABLE `polling_party_ts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `polling_station`
--
ALTER TABLE `polling_station`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_assign`
--
ALTER TABLE `vehicle_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_trans`
--
ALTER TABLE `vehicle_trans`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `polling_party_ts`
--
ALTER TABLE `polling_party_ts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `polling_station`
--
ALTER TABLE `polling_station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `training`
--
ALTER TABLE `training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicle_assign`
--
ALTER TABLE `vehicle_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vehicle_trans`
--
ALTER TABLE `vehicle_trans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
