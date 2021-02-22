-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2021 at 02:04 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `asst_officers`
--

CREATE TABLE `asst_officers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `desig` varchar(100) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `sector_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asst_officers`
--

INSERT INTO `asst_officers` (`id`, `name`, `desig`, `phone`, `sector_id`) VALUES
(1, 'Sri Luku Duwarah\n', 'GP Secy Pulibor GP', '7635930233', 1),
(2, 'Md. Rofiqul Hussain', 'GP Secy. Golaghat GP ', '7002971969', 1),
(3, 'Sri Jayanta Bora ', 'GRS, Pulibor GP', '7002364442', 2),
(4, 'Tousif Islam Bora ', 'CPM, PMAYU, Golaghat', '9401509184', 2),
(5, 'Sri Jintu Rajkhowa', ' Actt. Asstt, Bengenakhowa GP ', '7002660106', 3),
(6, 'Imtiaz Dewan  ', 'CPM, NULM Golaghat', '8134858583', 3),
(7, 'Miss Papori Kalita', 'CPM, NULM, Golaghat', '9864903067', 4),
(8, 'Miss Jyoti Robidas', ' Comp. Operator, NULM,Golaghat', '9864517655', 4),
(9, 'Miss Heemika Agarwalla', 'Accountant, NULM, Golaghat ', '9706742501', 5),
(10, 'Miss Dulumoni Bora', 'Community Organizer, NULM, Golaghat', '7002745656', 5),
(11, 'Sri Mintu Nath', 'Actt. Asstt. Golaghat GP', '7002579646', 6),
(12, 'Miss Dimpi Bora ', ' AE, Bengenakhowa GP', '6000950173', 6),
(13, 'Sri Achurjya Gogoi', 'GPC. Golaghat GP', '6003229464', 7),
(14, 'Sri Pankaj Sharma ', 'Comp.Asstt, Kaliapani GP', '8638548657', 7),
(15, 'Mrs. Nazira Sultana', 'GP Secy, Athgaon GP', '6001183662', 8),
(16, 'Sri Rajib Sharma', 'GP Secy, Kamarbondha GP', '9365331270', 8),
(17, 'Sri Ujjal Dutta', 'GP Secy, Furkating GP ', '8638978090', 9),
(18, 'Sri Sunit Bora', 'GP Secy, Oating GP ', '9365200274', 9),
(19, 'Sri Biswajit Gogoi', 'GRS, Oating GP ', '9101124291', 10),
(20, 'Sri Chandan Saikia', ' GPC, Jamuguri GP ', '7002089534', 10),
(21, 'Sri Lekheneswar Bora', 'GP Secy, Balijan GP', '7002065089', 11),
(22, 'Sri Adesh Yadav', 'GPC, Ghiladhari GP', '7002474943', 11),
(23, 'Sri Arun Bora', 'GP Secy, Athkhelia GP ', '9365464279', 11),
(24, 'Sri Hiren Bora', 'Comp Asstt, Ghiladhari GP', '7002425475', 12),
(25, 'Sri Montu Sharma', 'GPC, Balijan GP', '8638896664', 12),
(26, 'Sri Sanjib Phukan', 'GP Secy. Matikhola GP', '8638357249', 13),
(27, 'Sri Bitupon Bora,  ', 'GPC, Athkhelia GP', '9401964691', 14),
(28, 'Sri Dipok Das, GRS', 'Mokrong GP', '9101589694', 14),
(29, 'Sri Simanta Gogoi', 'AE, Ratanpur GP', '7002949587 / 9577534769', 15),
(30, 'Md. Abdul Razak', 'GP Secy. Chowdangpather GP', '7002716393 / 9435065852', 16),
(31, 'Sri Hiren Kakoty', 'GP Secretary, Kachomari GP', '8876163885', 17),
(32, 'Sri Prafulla Saikia', 'GP Secretary, Simanta GP', '9101100664', 18),
(33, 'Sri Sanjib Das', 'AE, Sarupani GP', '9365225836', 19),
(34, 'Sri Jyoti Biswakarma', 'GRS, Adarsha Gomari GP', '9365043958', 20),
(35, 'Sri Mohan Das', 'AE, Arunachal GP', '7002643802', 21),
(36, 'Sri Noren Gogoi', 'GRS, Merapani GP', '7002194943', 22),
(37, 'Sri Momin Chutia', 'GP Secretary, Torani GP', '9957489749', 23),
(38, 'Sri Rupok Hazarika', 'GP Secy. Kachupathar GP', '7002918670', 24),
(39, 'Sri Gautom Bora', ' GP Secy. Khumtai GP', '9101253703', 25),
(40, 'Sri Biswajit Dutta', 'GP Secy Houtley GP ', '9101504480', 25),
(41, 'Sri Bikash Buragohain', 'AE. Habichowa GP', '8638510803', 25),
(42, 'Md. Mujibor Rahman', 'GP Secy. Habichowa GP', '6001382669', 26),
(43, 'Anowar Hussain', 'GPC, Kathalguri GP ', '8638895806', 26),
(44, 'Md. Azaharuddin Ahmed', ' AE, Madhya Brahmaputra GP', '9401662911', 27),
(45, 'Sri Sankab K. Bhuyan', 'GRS, Pachim Brahmaputra GP ', '7002780960', 28),
(46, 'Sri Biman Borah', 'GRS, Madhya Brahmaputra GP ', '7002783820', 29),
(47, 'Sri Deba Kr. Gogoi', 'GP Secy. Pachim Missamora GP, ', '7002468234', 30),
(48, 'Sri Sourav Karmakar', 'GPC, Madhya Missamora GP ', '8822231666', 30),
(49, 'Sri Dibyajyoti Bora', 'AE, Madhya Missamora GP ', '8822231666', 31),
(50, 'Sri Amulya Bora', 'GP Secy. Pub Missamora GP', '8638565281', 31),
(51, 'SriManash P. Baruah', 'GPC, Uttar Gurjogonia GP ', '9101087775', 31),
(52, 'Sri Sanjib Kr. Baruah', ' GRS, Pub Missamora GP ', '7002171711', 32),
(53, 'Sri Badan Saikia', 'GP Secretary, Uttar Gurjogonia GP ', '9365541512', 33),
(54, 'Sri Nityananda Dutta', 'GPC, Dakhin Gurjogonia GP', '7002010698', 34),
(55, 'Sri Amulya Saikia', 'GP Secy. Senchowa GP ', '9401283406', 35),
(56, 'Sri Rintu Hazarika', 'GPC, Betioni GP ', '8399002307', 36),
(57, 'Sri Nitul Handique', ' GRS, Dhekial GP', '8638591541', 36),
(58, 'Sri Vivek Sahu', 'GPC, Uttar Dakhinhengera GP', '8811990195', 37),
(59, 'Md. Naser Ahmed', 'GP Secy, Dakhin Dakhinhengera', '6001382669', 38),
(60, 'Sri Brojen Gogoi', 'AE, Uttar Kamarbondha GP', '6001538911', 38),
(61, 'Sri Bikramjyoti Sarmah', 'GPC, Dakhin Dakhinhengera ', '7002269302', 39),
(62, 'Sri Jayanta Bordoloi', ' GP Secy, Uttar Kamarbondha GP ', '9854541887', 39);

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
  `status` int(11) NOT NULL DEFAULT 1
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
  `groupno` int(11) NOT NULL DEFAULT 0
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
  `is_reserve` int(11) NOT NULL DEFAULT 0
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
  `address` text DEFAULT NULL,
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
(1, '1', 'Pulibor LP School(R/S)', 95, 'Kachugaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(2, '2', 'Pulibor LP School(L/S)', 95, 'Kachugaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(3, '3', 'Pulibor Adarsha High School', 95, 'Kachugaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(4, '4', 'Chelengi Gaon LP School', 95, 'Chelengigaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(5, '5', 'Kaboru Gaon LP School (R/S)', 95, 'Kaboru Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(6, '6', 'Kaboru Gaon LP School (L/S)', 95, 'Kaboru Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(7, '7', 'Dhekeripeta LP School (R/S)', 95, 'Bhoga Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(8, '8', 'Jonakinagar LP School', 95, 'Bhoga Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(9, '9', 'Bongaon Tarun Vocational ME School (R/S)', 95, 'Bongaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(10, '10', 'Bongaon Tarun Vocational ME School (L/S)', 95, 'Bongaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(11, '11', 'Dhekeripeta LP School (L/S)', 95, 'Bongaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(12, '12', '2No Chinatoly LP School(R/S)', 95, 'Chinatoli', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(13, '13', '2No Chinatoly LP School(L/S)', 95, 'Chinatoli', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(14, '14', 'Chandmari LP School (R/S)', 95, 'Golaghat Town W.No-9', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(15, '15', 'Chandmari LP School (L/S)', 95, 'Golaghat Town W.No-9', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(16, '16', 'Chandmari  High School (R/S)', 95, 'Golaghat Town W.No-10', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(17, '17', 'Chandmari  High School  (R/S)-A', 95, 'Golaghat Town W.No-10', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(18, '18', 'Golaghat Town New Girls High School (L/S)', 95, 'Golaghat Town W.No-10', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(19, '19', 'Golaghat Town New Girls High School (M)', 95, 'Golaghat Town W.No-10', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(20, '20', 'Tenpur LP School (R/S)', 95, 'Golampatty Golaghat Grant', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(21, '21', 'Tenpur LP School (L/S)', 95, 'Golampatty Golaghat Grant', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(22, '22', 'Golaghat Town Madrassa ME School (R/S)', 95, 'Golaghat Town W.No-8', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(23, '23', 'Golaghat Town Madrassa ME School (L/S)', 95, 'Golaghat Town W.No-8', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(24, '24', 'Dandadhar Girls\' High School (R/S)', 95, 'Golaghat Town W.No-7', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(25, '25', 'Dandadhar Girls\' High School  (L/S) ', 95, 'Golaghat Town W.No-7', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(26, '26', 'Town Natun LP School (R/S)', 95, 'Golaghat Town W.No-6', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(27, '27', 'Town Natun LP School (A)', 95, 'Golaghat Town W.No-6', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(28, '28', 'Town Natun LP School (L/S)', 95, 'Golaghat Town W.No-6', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(29, '29', 'Town Natun LP School (B)', 95, 'Golaghat Town W.No-6', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(30, '30', 'Hindi Vidyalaya (R/S)', 95, 'Golaghat Town W.No-5', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(31, '31', 'Hindi Vidyalaya (R/S-A)', 95, 'Golaghat Town W.No-5', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(32, '32', 'Hindi Vidyalaya (L/S)', 95, 'Golaghat Town W.No-5', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(33, '33', 'Bengali LP School(R/S)', 95, 'Golaghat Town W.No-5', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(34, '34', 'Bengali LP School(L/S)', 95, 'Golaghat Town W.No-5', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(35, '35', 'Hindi Vidyalaya (Middle)', 95, 'Golaghat Town W.No-5', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(36, '36', 'Town Model LP School (R/S) ', 95, 'Golaghat Town W.No-11', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(37, '37', 'Town Model LP School (M) ', 95, 'Golaghat town Ward No. 11', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(38, '38', 'Town Model LP School (L/S)', 95, 'Golaghat Town W.No-12', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(39, '39', 'Town Model LP School (L/S)-A', 95, 'Golaghat Town W.No-12', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(40, '40', 'Hemprobha Girls\' College(R/S)', 95, 'Golaghat Town W.No-13', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(41, '41', 'Hemprobha Girls\' College(M)', 95, 'Golaghat Town W.No-13', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(42, '42', 'Hemprobha Girls\'  College (L/S)', 95, 'Golaghat Town W.No-13', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(43, '43', 'Bengenakhowa Jr. Basic School (R/S)', 95, 'Bengenakhowa', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(44, '44', 'Bengenakhowa Jr. Basic School (L/S)', 95, 'Bengenakhowa', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(45, '45', '2 No Bengenakhowa LP School (R/S)', 95, 'Bengenakhowa', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(46, '46', '2 No Bengenakhowa LP School (L/S)', 95, 'Bengenakhowa', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(47, '47', 'Bengali High School (R/S)', 95, 'Golaghat Town W.No-4', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(48, '48', 'Bengali High School (M)', 95, 'Golaghat Town W.No-4', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(49, '49', 'Bengali High School (L/S)', 95, 'Golaghat Town W.No-4', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(50, '50', 'Bengali High School (L/S)-A', 95, 'Golaghat Town W.No-4', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(51, '51', 'Misson LP School', 95, 'Golaghat Town W.No-3', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(52, '52', 'Hindi High School (R/S)', 95, 'Golaghat Town W.No-3', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(53, '53', 'Hindi High School (L/S)', 95, 'Golaghat Town W.No-3', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(54, '54', 'Hindi High School (M)', 95, 'Golaghat Town W.No-3', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(55, '55', 'Kumarpatty LP School (R/S)', 95, 'Golaghat Town W.No-2', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(56, '56', 'Kumarpatty LP School (M)', 95, 'Golaghat Town W.No-2', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(57, '57', 'Kumarpatty LP School (L/S)', 95, 'Golaghat Town W.No-2', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(58, '58', 'Mudoigaon Girls\' LP School (R/S) ', 95, 'Golaghat Town W.No-1', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(59, '59', 'Rupjyoti LP School(R/S)', 95, 'Golaghat Town Ward No 1', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(60, '60', 'Mudoigaon Girls\' LP School (L/S)', 95, 'Golaghat Town W.No-1', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(61, '61', 'Rupjyoti LP School(L/S)', 95, 'Golaghat Town Ward No 1', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(62, '62', 'Hamdoi High School (R/S)', 95, 'Bengenakhowa', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(63, '63', 'Hamdoi High School (L/S)', 95, 'Bengenakhowa', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(64, '64', 'Golaghat Bagisa LP School', 95, 'Bengenakhowa', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(65, '65', 'Kathkotia LP School (R/S)', 95, 'Kathkotia', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(66, '66', 'Kathkotia LP School (M)', 95, 'Kathkotia', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(67, '67', 'Kathkotia LP School (L/S)', 95, 'Kathkotia', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(68, '68', 'Torfat High School(R/S)', 95, 'Torfat Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(69, '69', 'Torfat High School(L/S)', 95, 'Torfat Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(70, '70', 'Ahomgaon Natun LP School (R/S)', 95, 'Barphukankhat', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(71, '71', 'Ahomgaon Natun LP School (L/S)', 95, 'Barphukankhat', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(72, '72', '2 No. Kacharihat LP School (R/S)', 95, 'Kacharihat', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(73, '73', '2 No. Kacharihat LP School (L/S)', 95, 'Kacharihat', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(74, '74', 'Kamarbondha Girls\' High School (R/S)', 95, 'Raidongia Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(75, '75', 'Kamarbondha Girls\' High School (L/S)', 95, 'Raidongia Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(76, '76', 'Kamarbondha Higher Secondary School (R/S)', 95, 'Gohaingaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(77, '77', 'Kamarbondha Higher Secondary School (L/S)', 95, 'Gohaingaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(78, '78', 'Rajanakhat LP School (R/S)', 95, 'Mautgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(79, '79', 'Rajanakhat LP School (L/S)', 95, 'Mautgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(80, '80', '2 No. Bokolai LP School', 95, 'Bokolai Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(81, '81', '1 No. Bokolai LP School', 95, 'Bokolai Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(82, '82', 'Kopohuating Na-pamua LP School', 95, 'Bokolai Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(83, '83', 'Bosabokotial LP School (R/S)', 95, 'Bosagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(84, '84', 'Bosabokotial LP School (L/S)', 95, 'Bosagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(85, '85', 'No. 2 Bosagaon Jr. Basic School (R/S)', 95, 'Kumargaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(86, '86', 'No. 2 Bosagaon Jr. Basic School (L/S)', 95, 'Kumargaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(87, '87', 'Daborahoi LP School(R/S) ', 95, 'Da Barahi', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(88, '88', 'Daborahoi LP School(L/S) ', 95, 'Da Barahi', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(89, '89', '1 No. Ahomgaon LP School (R/S) ', 95, 'Ahom Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(90, '90', '1 No. Ahomgaon LP School (L/S)', 95, 'Ahom Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(91, '91', 'Soraimuria LP School (R/S)', 95, 'Guwalgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(92, '92', 'Soraimuria LP School (L/S)', 95, 'Guwalgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(93, '93', 'Kasturiba  LP School', 95, 'Ath Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(94, '94', 'Athgaon ME School ', 95, 'Ath Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(95, '95', 'Athgaon LP School ', 95, 'Ath Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(96, '96', '3 No. Furkating Nagar Parthamik Vidyalaya (R/S)', 95, 'Furkating (Tirualgaon)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(97, '97', '3 No. Furkating Nagar Parthamik Vidyalaya (L/S)', 95, 'Furkating (Tirualgaon)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(98, '98', 'Tirual LP School (L/S)', 95, 'Tiruwal gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(99, '99', 'Tirual LP School (R/S)', 95, 'Tiruwal gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(100, '100', 'Chakardhora LP School ', 95, 'Chakardhora Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(101, '101', 'Ulutoli LP School(R/S)', 95, 'Rupkolia', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(102, '102', 'Ulutoli LP School(L/S)', 95, 'Rupkolia', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(103, '103', 'Gazalasatra Jr. Basic School', 95, 'Barpatharuwa Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(104, '104', 'Sankerdev LP School', 95, 'Gojalitup Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(105, '105', 'Furkating High School (R/S)', 95, 'Furkating Town', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(106, '106', 'Furkating High School (M)', 95, 'Furkating Town', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(107, '107', 'Furkating High School (L/S)', 95, 'Furkating Town', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(108, '108', 'Furkating Model LP School (R/S)', 95, 'Fatuwal Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(109, '109', 'Furkating Model LP School (L/S)', 95, 'Fatuwal Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(110, '110', 'Garigaon LP School', 95, 'Garigaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(111, '111', 'Oating Bagan LP School', 95, 'Garigaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(112, '112', 'Nisugola LP School', 95, 'Kachuwanihula', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(113, '113', 'Kalujan LP School (R/S)', 95, 'Sokialting', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(114, '114', 'Doloujan Bagan Club', 95, 'Dalaujan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(115, '115', 'Kalujan LP School (L/S)', 95, 'Sokialting', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(116, '116', 'Doyang Bagan LP School (R/S)', 95, 'Doyang Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(117, '117', 'Doyang Bagan LP School (L/S)', 95, 'Doyang Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(118, '118', 'Pualipothar LP School', 95, 'Pualipothar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(119, '119', 'Balijan Boys\' LP School (R/S)', 95, 'Fesuwal Gaon (Balijan)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(120, '120', 'Balijan Boys\' LP School (L/S)', 95, 'Fesuwal Gaon (Balijan)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(121, '121', 'Baruagaon LP School', 95, 'Fesuwal Gaon ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(122, '122', 'Fesual Moktab LP School', 95, 'Fesuwal Gaon ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(123, '123', 'Balijan High School ', 95, 'Fesuwal Gaon ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(124, '124', 'Ghiladhari Sr. Basic School (R/S)', 95, 'Mahimalia Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(125, '125', 'Ghiladhari Sr. Basic School (L/S)', 95, '  Habichukiagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(126, '126', 'Ghiladhari LP School ', 95, 'Mahimalia Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(127, '127', 'Socialist Satyagrahi Pathar LP School', 95, 'Socialist Satyagrahi Pathar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(128, '128', 'Morong Borchapori LP School', 95, 'Mokrong Borchapori', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(129, '129', 'Rupkolia LP School', 95, 'Rup Kolia', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(130, '130', 'Bebejia LP School', 95, 'Bebejia', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(131, '131', 'Tritiya Bosha LP School', 95, 'Bosagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(132, '132', 'Chokial LP School ', 95, 'Chokial', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(133, '133', 'Sarukachari LP School', 95, 'Sarukachari', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(134, '134', 'Nauboicha LP School', 95, 'Nawboicha Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(135, '135', 'Barichowa LP School', 95, 'Barichowa Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(136, '136', 'Lonpuria LP School (R/S)', 95, 'Borkochari', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(137, '137', 'Lonpuria LP School (L/S)', 95, 'Borkochari', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(138, '138', 'Singfura LP School(R/S)', 95, 'Singphura', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(139, '139', 'Singfura LP School(L/S)', 95, 'Singphura', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(140, '140', 'Adrarshagaon LP School (R/S)', 95, 'Socialist Satyagrahi Adorsha Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(141, '141', 'Adrarshagaon LP School (L/S)', 95, 'Socialist Pathar Adarshagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(142, '142', 'Ghiladharibagan LP School (R/S)', 95, 'Ghiladhari Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(143, '143', 'Ghiladharibagan LP School (L/S)', 95, 'Ghiladhari ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(144, '144', 'Jerpai LP School (R/S)', 95, 'Jerpai', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(145, '145', 'Jerpai LP School (L/S)', 95, 'Jerpai', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(146, '146', 'Mokrong Bagan LP School (R/S)', 95, 'Mokrong Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(147, '147', 'Mokrong Bagan LP School (L/S)', 95, 'Mokrong Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(148, '148', 'Doyang High School (R/S)', 95, 'Gomariguri Natun Basti', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(149, '149', 'Doyang High School (L/S)', 95, 'Gomariguri Natun Basti', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(150, '150', 'Usha Bagan LP School (R/S)', 95, 'Usha Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(151, '151', 'Usha Bagan LP School (L/S)', 95, 'Usha Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(152, '152', 'Usha Bagan Christian Basti LP School', 95, 'Usha Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(153, '153', 'Jamuguribagan LP School (R/S)', 95, 'Jamuguri Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(154, '154', 'Jamuguribagan LP School (L/S)', 95, 'Jamuguri Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(155, '155', 'Jamuguribagan LP School (M)', 95, 'Jamuguri Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(156, '156', 'Navajyoti ME School', 95, 'Matikhula Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(157, '157', 'Hatigarh Matikhola LP School', 95, '1 No. Borjan Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(158, '158', 'Borjan Project LP School', 95, '1 No. Borjan Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(159, '159', 'Borjan LP School (R/S)', 95, '2 No. Borjan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(160, '160', 'Borjan LP School (L/S)', 95, '2 No. Borjan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(161, '161', 'Gobinpur LP School', 95, 'Gobinpur', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(162, '162', 'No. 2 Ratanpur LP School', 95, 'New Lakhibari Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(163, '163', 'Lakhibari LP School ', 95, 'New Lakhibari Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(164, '164', 'Puspaban LP School', 95, 'New Lakhibari Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(165, '165', 'Narayanpur L P School', 95, 'New Lakhijuri Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(166, '166', 'No. 1 Ratanpur LP School ', 95, 'New Lakhijuri Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(167, '167', 'No.1 Sonapur LP School', 95, 'Sonapur', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(168, '168', 'Naharjan LP School (R/S)', 95, 'Naharjan Grant Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(169, '169', 'Naharjan LP School (L/S)', 95, 'Naharjan Grant Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(170, '170', 'Jamuguri ME School (R/S)', 95, 'Molohanitup', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(171, '171', 'Jamuguri ME School (L/S)', 95, 'Molohanitup', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(172, '172', 'Samukjan Natun LP School', 95, ' Samukjan ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(173, '173', 'Amguri LP School', 95, 'Molohanitup', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(174, '174', '2No Soraimari LP School', 95, 'Kachamari', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(175, '175', 'Soraimari Rangdhali LP School', 95, 'Kachamari', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(176, '176', 'Musorbhonga LP School (R/S)', 95, 'Kachamari', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(177, '177', 'Musorbhonga LP School (L/S)', 95, 'Kachamari', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(178, '178', 'Kachomari ME School', 95, 'Kachamari', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(179, '179', 'Tonajan LP School (R/S)', 95, 'Kachamari', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(180, '180', 'Tonajan LP School (L/S)', 95, 'Kachamari', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(181, '181', 'Bia Korowa LP School', 95, 'Biakaruwa', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(182, '182', 'Doyang LP School', 95, 'Kachamari', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(183, '183', 'Soraimari Na-Mati LP School', 95, 'Saraimari', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(184, '184', 'Joypukhuri LP School', 95, '1 No-Joypur', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(185, '185', 'Gulukpur Panbari LP School', 95, 'Gulukpur, Panbari', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(186, '186', 'Ratanpur Simanta  ME School (R/S)', 95, 'Gulukpur, Panbari', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(187, '187', 'Ratanpur Simanta ME School (L/S)', 95, 'Gulukpur, Panbari', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(188, '188', 'Telishal LP School', 95, 'Telisal', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(189, '189', 'Kulaigaon LP School', 95, 'Telisal', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(190, '190', 'Doyangpar LP School (Changkhati)', 95, 'Doyangpar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(191, '191', 'Bandik pathar LP School', 95, 'Benedik Pathar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(192, '192', 'Hidimbapur LP School', 95, 'Hirimbapur', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(193, '193', 'Ratanpur LP School (R/S)', 95, 'Ratanpur Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(194, '194', 'Ratanpur LP School (L/S)', 95, 'Ratanpur Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(195, '195', 'Milonpur LP School (R/S)', 95, 'Milanpur Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(196, '196', 'Narortoli Adarsha School', 95, 'Nahortoli', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(197, '197', 'Milonpur LP School ( L/S)', 95, 'Milanpur', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(198, '198', 'Milonpur LP School ( M)', 95, 'Milanpur', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(199, '199', 'Doldoli LP School', 95, 'Doldoli', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(200, '200', 'Kalyanpur LP School', 95, 'Kalayanpur', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(201, '201', 'Narayanpur LP School', 95, 'Kalayanpur', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(202, '202', 'Kadamguri LP School', 95, 'Kadamguri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(203, '203', '2 No. Sonalipathar LP School', 95, 'Sonalipathar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(204, '204', 'Noreshpur LP School .', 95, 'Sunalipathar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(205, '205', 'Naghari Pathar L.P. School.', 95, 'Kamatapur', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(206, '206', 'Kamatapur LP School', 95, 'Kamatapur', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(207, '207', 'Joypukhuri Bodo Medium  ME School', 95, 'Joypukhuri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(208, '208', 'Nolonipather LP School', 95, 'Gomarigaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(209, '209', 'Bahfola LP School', 95, 'Gomarigaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(210, '210', 'Arunodoy LP school', 95, 'Gomarigaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(211, '211', 'Teteliguri LP School(R/S)', 95, 'Gomariguri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(212, '212', 'Teteliguri LP School(L/S)', 95, 'Gomariguri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(213, '213', '1No Gomariguri LP School (R/S)', 95, '1 No-Gomariguri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(214, '214', '1No Gomariguri LP School (L/S)', 95, '1 No-Gomariguri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(215, '215', 'Gomariguri Panchayat Office', 95, '1 No-Gomariguri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(216, '216', 'Nabajyoti LP School(R/S)', 95, '1 No-Gomariguri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(217, '217', 'Nabajyoti LP School(L/S)', 95, '1 No-Gomariguri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(218, '218', 'Ahatguri L.P. School', 95, '2 No-Gomariguri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(219, '219', 'Tarun ME School', 95, '2 No-Gomariguri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(220, '220', '5No Gomari Kheroni LP School(R/S)', 95, '5 No-Gomariguri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(221, '221', '5No Gomari Kheroni LP School(L/S)', 95, '6 No-Gomariguri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(222, '222', 'Merapani ME School (R/S)', 95, 'Merapani', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(223, '223', 'Merapani ME School (R/S-A)', 95, 'Merapani', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(224, '224', 'Merapani ME School (L/S)', 95, 'Merapani', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(225, '225', 'Merapani ME School(Middle)', 95, 'Merapani', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(226, '226', 'Merapani LP School (R/S)', 95, 'Merapani', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(227, '227', 'Merapani LP School (L/S)', 95, 'Merapani', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(228, '228', 'Udoipur Jyotiprokash L.P. School', 95, 'Merapani', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(229, '229', 'Anantapur LP School (R/S)', 95, 'Merapani', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(230, '230', 'Anantapur LP School (L/S)', 95, 'Merapani', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(231, '231', 'Dighalpani LP School', 95, 'Merapani', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(232, '232', 'Navagram LP School (R/S)', 95, 'Nabagram', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(233, '233', 'Navagram LP School (M)', 95, 'Nabagram', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(234, '234', 'Navagram LP School (L/S)', 95, 'Nabagram', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(235, '235', 'Chaudangpather ME School ', 95, 'Chaudung Pathar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(236, '236', 'Chaudangpathar Naujan LP School', 95, 'Chaudang Pathar  Tarani Chuk', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(237, '237', 'Chaudangpather Charaimari LP School', 95, 'Samaguri (Chowdang Pothar)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(238, '238', 'Chaudangpather LP School', 95, 'Chaudung Pathar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(239, '239', 'No2.Chaudangpather LP School', 95, 'Chaudung Pathar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(240, '240', 'Samaguri Sonalipthar Primary School', 95, 'Samaguri (Chowdang Pothar)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(241, '241', 'Vijoypur LP School', 95, 'Chaudung Pathar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(242, '242', 'Amgurichuk LP School', 95, 'Amgurichuk ( chawdang pathar)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(243, '243', 'Chaudangpather Balipara LP School (R/S)', 95, 'Natun Chaudung Pathar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(244, '244', 'Chaudangpather Balipara LP School (L/S)', 95, 'Natun Chaudung Pathar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(245, '245', 'Cholongpather LP School (R/S)', 95, 'New chowdang pathar (Salangpathar)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(246, '246', 'Cholongpather ME School', 95, 'New chowdang pathar (Salangpathar)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(247, '247', 'Cholongpather LP School (L/S)', 95, 'Cholongpathar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(248, '248', 'Sobhangaon LP School', 95, 'Chaudung Pathar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(249, '249', 'Tarani Majgaon LP School ', 95, 'Tarani Majgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(250, '250', 'Kalyanpur LP School (R/S)', 95, 'Tarani Majgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(251, '251', 'Kalyanpur LP School (L/S)', 95, 'Tarani Majgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(252, '252', 'Kulajan ME School (R/S)', 95, 'Upor Tarani (Kulaijan Pt-1)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(253, '253', 'Kulajan ME School (L/S)', 95, 'Upor Tarani (Kulaijan Pt-1)', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(254, '254', '32 No. Kulajan LP School ', 95, 'Upor Tarani', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(255, '255', 'Tarani Habi LP School (R/S)', 95, 'Tarani Habigaon Lilapur', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(256, '256', 'Tarani Habi LP School (L/S)', 95, 'Tarani Habigaon Lilapur', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(257, '257', 'Tarani Forest LP School (R/S)', 95, 'Tarani Forest', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(258, '258', 'Tarani Forest LP School (L/S)', 95, 'Tarani Forest', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(259, '259', 'Banuatangia LP School', 95, 'Tarani Banuwa', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(260, '260', 'Arunachal Borkachari LP  School (R/S)', 95, 'Tarani Forest', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(261, '261', 'Arunachal Borkachari LP  School (L/S)', 95, 'Tarani Forest', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(262, '1', 'Kamargaon Danoharchuk LP School', 96, 'Kamargaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(263, '2', 'Thengalgaon LP School ', 96, 'Thengalgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(264, '3', 'Thengalgaon ME School ', 96, 'Thengalgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(265, '4', 'Barua Kachupathar High School ', 96, 'Kachupathar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(266, '5', 'Baruagaon LP School ', 96, 'Baruagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(267, '6', 'Borahi Chonkola LP School ', 96, 'Chonkola', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(268, '7', 'Borahi Chonkola ME School', 96, 'Chonkola', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(269, '8', 'Madhya Bongaon LP School ', 96, 'Bongaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(270, '9', 'Bongaon Sr. Basic School', 96, 'Bongaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(271, '10', 'Madhya Garigaon LP School ', 96, 'Garigaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(272, '11', 'Chungihola LP School ', 96, 'Na-gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(273, '12', 'Leteku Chapori LP School', 96, 'Chungihola', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(274, '13', 'Gyandeep ME School ', 96, 'Khumtai-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(275, '14', 'Baruakhat LP School ', 96, 'Baruakhat Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(276, '15', 'Mohkhuti L.P.School', 96, 'Baruakhat', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(277, '16', 'Butolikhowa Bagan LP School ', 96, 'Butolikhowa-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(278, '17', 'Madhya Khumtai LP School ', 96, 'Khumtaigaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(279, '18', ' Khumtai Adarsha LP School ', 96, 'Bogoriani', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(280, '19', 'No-1 Butolikhowa LP School', 96, 'No. 1 Butolikhowa', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(281, '20', 'Hautoli Puranimati LP School', 96, 'No. 24 Hautoli-Grant', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(282, '21', 'Senduriting Bagan LP School (R/S)', 96, 'Senduriting-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(283, '22', 'Senduriting Bagan LP School (L/S)', 96, 'Senduriting', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(284, '23', 'Natunmatibagan LP School (R/S)', 96, 'Hautolihabi', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(285, '24', 'Houtoli Habichuk L.P.School\n', 96, 'Houtoli-Habichuk', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(286, '25', 'Natunmatibagan LP School  (L/S)', 96, 'Hautolihabi', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(287, '26', 'Potiapathar ME School (R/S)', 96, 'No. 1 Potiapathar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(288, '27', 'Potiapathar ME School (L/S)', 96, 'No. 1 Potiapathar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(289, '28', 'Moukhowa LP School', 96, 'Goriagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(290, '29', 'Melamora LP School', 96, 'Melamoragaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(291, '30', 'Melamora High School', 96, 'Melamoragaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(292, '31', 'Habichowa Borpather LP School', 96, 'Habichuwagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(293, '32', 'Habichowa Borpather  High School', 96, 'Habichuwagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(294, '33', 'Chinatoly Sr. Basic School', 96, 'Habichuwagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(295, '34', 'No.3 Hautoli LP School', 96, 'Hautoli', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(296, '35', 'Betioni Sr. Basic School (R/S)', 96, 'Buralikson', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(297, '36', 'Betioni Sr. Basic School (L/S)', 96, 'Buralikson', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(298, '37', 'Karunating LP School', 96, 'Karunating-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(299, '38', 'Borfollong Bagan LP School (R/S)', 96, 'Borpholong-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(300, '39', 'Borfollong Bagan LP School (L/S)', 96, 'Borpholong-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(301, '40', 'Doria Bagan LP School (R/S)', 96, 'Doria-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(302, '41', 'Doria Bagan LP School (L/S)', 96, 'Doria-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(303, '42', 'North Goronga Bagan LP School', 96, 'North Goronga-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(304, '43', 'Chinatoly High School', 96, 'Sensua No. 2', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(305, '44', 'Napamua LP School', 96, 'Napamuagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(306, '45', '1 No Bhulaguri  LP School', 96, 'No. 2 Sensua', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(307, '46', '3 No Bhulaguri  LP School', 96, 'No. 3 Bhulaguri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(308, '47', 'Adharsatra Henchowa Bapuji High School (R/S)', 96, 'No. 1 Sensua', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(309, '48', 'Adharsatra Henchowa Bapuji High School (L/S)', 96, 'No. 1 Sensua', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(310, '49', 'Norajogi ME School', 96, 'Jugibari', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(311, '50', 'Na-Bheta LP School', 96, 'No. 1 Sensua', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(312, '51', 'No 1 Senchowa LP School', 96, 'No 1 Senchowa', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(313, '52', 'Dhansiripar LP School (Right)', 96, 'Dhansiripar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(314, '53', 'Dhansiripar LP School (Left)', 96, 'Dhansiripar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(315, '54', 'Halmora Bagan LP School (R/S)', 96, 'Salmora-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(316, '55', 'Halmora Bagan LP School (L/S)', 96, 'Salmora-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(317, '56', 'Dulakhoria LP School(Right)', 96, 'Dolakhoria', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(318, '57', 'Dulakhoria LP School(Left)', 96, 'Dolakhoria', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(319, '58', 'Norakonwar LP School (R/S)', 96, 'Norakonwar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(320, '59', 'Norakonwar LP School (L/S)', 96, 'Norakonwar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(321, '60', 'Akagaon Balak LP School (R/S)', 96, 'Akagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(322, '61', 'Akagaon Balak LP School (L/S)', 96, 'Akagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(323, '62', 'Malua Habi LP School', 96, 'Moluahabi Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(324, '63', '1 No. Betioni LP School (R/S) ', 96, 'Kakotigaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(325, '64', '1 No. Betioni LP School (L/S)', 96, 'Kakotigaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(326, '65', 'Handiquegaon LP School ', 96, 'Handiquegaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(327, '66', 'Charingia Moidamoni LP School', 96, 'Charingiagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(328, '67', 'Gangadhar ME School ', 96, 'Dhekialgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(329, '68', 'Gourangasatra LP School ', 96, 'Dhekialgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(330, '69', 'Borguri Sr. Basic School ', 96, 'Haluagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(331, '70', 'Kathkotia LP School (R/S)', 96, 'Kathkotia', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(332, '71', 'Kathkotia LP School (L/S)', 96, 'Kathkotia', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(333, '72', 'Habial LP School (R/S)', 96, 'Habialgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(334, '73', 'Habial LP School (L/S)', 96, 'habialgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(335, '74', 'Khonikor MV School (L/S)', 96, 'Khanikar Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(336, '75', 'Khonikor MV School (R/S)', 96, 'Khanikor Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(337, '76', 'Misamora Adarsha LP School(R/S)', 96, 'Missamora-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(338, '77', 'Misamora Adarsha LP School(L/S)', 96, 'Missamora-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(339, '78', 'Missamora Bagan LP School', 96, 'Missamora-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(340, '79', 'Srimanta LP School ', 96, 'Habigaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(341, '80', 'Rangoliting Bagan LP School', 96, 'Rangoliting Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(342, '81', 'Koroioni High School (R/S)', 96, 'Koroioni-Bhakatgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(343, '82', 'Koroioni L.P.School', 96, 'Koroioni-Bhakatgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(344, '83', 'Koroioni High School (L/S)', 96, 'Koroioni-Bhakatgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(345, '84', 'Joraguri LP School', 96, '1 No. Joraguri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(346, '85', 'No. 1 Joraguri Temera L.P.School', 96, 'Upar Temera ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(347, '86', 'Somania LP School', 96, '2No Joraguri ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(348, '87', 'Gormorachapori LP School', 96, 'Gormora-Chapori', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(349, '88', 'Lengera chapori LP School', 96, 'Gormora-Chapori', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(350, '89', 'Dessoiporia Janajati LP School', 96, 'Dani-Chapori', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(351, '90', 'Dessoiporia Janajati ME School', 96, 'Dani-Chapori', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(352, '91', 'Nobhonga Bapuji High School', 96, 'Puranimati-Bhakat', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(353, '92', 'Puranimati Bhakatgaon LP School', 96, 'Puranimati-Bhakat', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(354, '93', 'Kacharipam LP School (R/S)', 96, 'Kacharipam', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(355, '94', 'Chokial LP School ', 96, 'Chakial Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(356, '95', 'Kacharipam LP School (L/S)', 96, 'Kacharipam', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(357, '96', 'Hanhsowagaon LP School', 96, '1) Hanhsowa koiborta', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(358, '97', 'Bogorioni L.P.School', 96, '1)  Bogorioni Pam ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(359, '98', '4 No. Gelabeel Abhyasan LP School (R/S)', 96, 'Dakhin-Dalijolia', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(360, '99', '4 No. Gelabeel Abhyasan LP School (Middle)', 96, 'Dakhin-Dalijolia', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(361, '100', '4 No. Gelabeel Abhyasan LP School (L/S)', 96, 'Dakhin-Dalijolia', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(362, '101', 'Mudoibarisowa LP School', 96, 'BARISUA ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(363, '102', 'Pachim Missamora Girls M.E.School', 96, 'BARISUA ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(364, '103', 'Muhiram Hazarika ME School', 96, 'Mudoigaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(365, '104', 'Muhiram Hazarika High School', 96, 'Mudoigaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(366, '105', ' No. Borpukhuripar LP School', 96, 'Pachim Missamora', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(367, '106', 'Doliabasti LP School', 96, 'Duliagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(368, '107', 'Mahnial L.P. School', 96, 'Duliagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(369, '108', 'Missamora LP School (R/S) ', 96, 'Teliasonarigaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(370, '109', 'Missmora LP School (L/S)', 96, 'Teliasonarigaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(371, '110', 'Molaikumar LP School (R/S)', 96, 'Molaikumargaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(372, '111', 'Molaikumar LP School (L/S)', 96, 'Molaikumargaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(373, '112', 'Doyangia Gowalgaon LP School', 96, 'Doyongia-Gowalgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(374, '113', 'Sankardev High School (R/S)', 96, 'Dadhora Ahomgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(375, '114', 'Sankerdev High School (L/S)', 96, 'Dadhora Ahomgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(376, '115', 'Panchayat Bhawan Uttar (R/S)', 96, 'Rojabahar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(377, '116', 'Panchayat Bhawan Uttar (L/S)', 96, 'Rojabahar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(378, '117', 'Bongalgaon LP School (R/S)', 96, 'Bongalgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(379, '118', 'Bongalgaon LP School (L/S)', 96, 'Bongalgaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(380, '119', 'Kuralguri High School (R/S)', 96, 'Bhaboligaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(381, '120', 'Kuralguri High School (L/S)', 96, 'Bhaboligaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(382, '121', 'Kobal LP School', 96, 'Kobalpam', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(383, '122', 'Ikorani LP School', 96, 'Ikorani', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(384, '123', 'Goriahuti  LP School', 96, 'Mamoronipam', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(385, '124', 'Khokondoguri LP School (R/S)', 96, 'No 1 Khokondoguri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(386, '125', 'Khokondoguri LP School (L/S)', 96, 'No 1 Khokondoguri', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(387, '126', 'Umakanta LP School (R/S)', 96, 'Dhodangoria', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(388, '127', 'Umakanta LP School (L/S)', 96, 'Dhodangoria', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(389, '128', 'Dhodang LP School (R/S)', 96, 'Dhodangoria', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(390, '129', 'Dhodang LP School (L/S)', 96, 'Dhodangoria', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(391, '130', 'Nahoroni ME School (R/S)', 96, 'Batiporia Lukumai', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(392, '131', 'Nahoroni ME School (L/S)', 96, 'Batiporia Lukumai', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(393, '132', '2No.Batiporia LP School (R/S) ', 96, 'Batiporia ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(394, '133', '2No.Batiporia LP School (L/S)', 96, 'Batiporia ', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(395, '134', 'Gurujugonia High School (R/S)', 96, 'Domjoria', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(396, '135', 'Gurujugonia High School (L/S)', 96, 'Domjoria', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(397, '136', 'Jugoniagaon LP School ', 96, 'Jugonia Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(398, '137', 'Gonakpukhuri High School', 96, 'Jugonia Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(399, '138', 'Jailmoni LP School (R/S)', 96, 'Jugonia Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(400, '139', 'Jailmoni LP School (L/S)', 96, 'Jugonia Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(401, '140', 'Batiporia Sr. Basic School (R/S)', 96, 'Batiporia Goriagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(402, '141', 'Batiporia Sr. Basic School (L/S)', 96, 'Batiporia Goriagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(403, '142', 'Kurighoria LP School ', 96, 'Batiporia Goria Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(404, '143', 'Alengmuria LP School (R/S)', 96, 'Alengmuriagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(405, '144', 'Alengmuria LP School (L/S)', 96, 'Alengmuriagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(406, '145', 'Rangdhali Jr. Basic School (R/S)', 96, 'Rangdhaligaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(407, '146', 'Rangdhali Jr. Basic School (L/S)', 96, 'Rangdhaligaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(408, '147', 'Molia Gaon LP School', 96, 'Moliagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(409, '148', 'Dhekial Girls High School', 96, 'Moliagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(410, '149', 'Hatiekhowabagan ME School ', 96, 'Hatiekhowa', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(411, '150', 'Borkathanibagan LP School ', 96, 'Borkathoni Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(412, '151', 'Chetiagaon LP School ', 96, 'Sensowa Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(413, '152', 'Rohdhola Sr. Basic School (R/S)', 96, 'Sensowa Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(414, '153', 'Rohdhola Sr. Basic School  (L/S)', 96, 'Sensowa Gaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(415, '154', 'Dakhin Hengera ME School (R/S)', 96, 'Borting Nowsolia', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(416, '155', 'Dakhin Hengera ME School (L/S)', 96, 'Borting Nowsolia', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(417, '156', 'Dakhin Hengera ME School (Middle)', 96, 'Borting Nowsolia', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(418, '157', 'Dakhin Hengera Bagan LP School (R/S)', 96, 'Dakhin-Hengera-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(419, '158', 'Dakhin Hengera Bagan LP School (L/S)', 96, 'Dakhin-Hengera-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(420, '159', 'Dakhin Hengera Bagan Club', 96, 'Dakhin-Hengera', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(421, '160', 'Chutojan LP School (R/S)', 96, 'No. 2 Katonipothar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(422, '161', 'Chutojan LP School (Middle)', 96, 'No. 2 Katonipothar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(423, '162', 'Chutojan Bagan Club', 96, 'No. 1 Katonipothar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(424, '163', 'Chutojan LP School (L/S)', 96, 'No. 2 Katonipothar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(425, '164', 'Athabari LP School', 96, 'Athabari', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(426, '165', 'Dogachola LP School ', 96, 'Athabari', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(427, '166', 'Kothiatoli LP School (R/S)', 96, 'Kathiatoli', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(428, '167', 'Kothiatoli LP School (L/S)', 96, 'Kathiatoli', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(429, '168', 'Bhulukiting Bagan LP School ', 96, 'Kathiatoli', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(430, '169', 'Natun Balijan Sr. Basic School (R/S)', 96, 'Khumtai', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(431, '170', 'Natun Balijan Sr. Basic School (L/S)', 96, 'Khumtai', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(432, '171', 'Borjan ME School (R/S)', 96, 'No.1 Borjan-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(433, '172', 'Borjan ME School (M)', 96, 'No.1 Borjan-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(434, '173', 'Borjan ME School (L/S)', 96, 'No.1 Borjan-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(435, '174', '2. NO. Dolakhoria LP School (R/S)', 96, 'Dolakhoria', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(436, '175', '2. NO. Dolakhoria LP School (L/S)', 96, 'Dolakhoria', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(437, '176', '1 No. Dolakhoria LP School (R)', 96, 'Nowholia Pathar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(438, '177', '1 No. Dolakhoria LP School (L)', 96, 'Nowholia Pathar', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(439, '178', 'Sialekhati Sr. Basic School', 96, 'Sialekhati', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(440, '179', 'Sialekhati Bapuji LP School', 96, 'Sialekhati', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(441, '180', 'Jamuguri LP School (R)', 96, 'Bamungaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(442, '181', 'Jamuguri LP School (L)', 96, 'Bamungaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(443, '182', 'Tailyapani LP School', 96, 'Bamungaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(444, '183', 'Gohaingaon LP School ', 96, 'Gohaingaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(445, '184', 'Chutiagaon LP School', 96, 'Chutiagaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(446, '185', 'Kanugaon LP School ', 96, 'Kanugaon', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(447, '186', 'Chowkitingbagan LP School (R/S)', 96, 'Chakiting-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(448, '187', 'Chowkiting Bagan LP School (L/S)', 96, 'Ckakiting-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0),
(449, '188', 'Bhataubari LP School ', 96, 'Chakiting-Bagan', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0);

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
  `sector_name` varchar(12) NOT NULL,
  `zone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sector_master`
--

INSERT INTO `sector_master` (`id`, `sector_name`, `zone_id`) VALUES
(1, 'Pulibor', 1),
(2, 'Golaghat-A', 1),
(3, 'Golaghat-B', 1),
(4, 'Golaghat-C', 1),
(5, 'Golaghat-D', 1),
(6, 'Kacharihat', 2),
(7, 'Bokolai', 2),
(8, 'Athgaon', 2),
(9, 'Furkating', 2),
(10, 'Dolowjan', 3),
(11, 'Balijan', 3),
(12, 'Goronga', 3),
(13, 'Borjan', 3),
(14, 'Athkhelia', 3),
(15, 'Chowdangpath', 4),
(16, 'Chowdangpath', 4),
(17, 'Kachomari-A', 5),
(18, 'Kachomari-B', 5),
(19, 'Sisupani', 5),
(20, 'Gomariguri-A', 6),
(21, 'Gomariguri-B', 6),
(22, 'Torani-A', 6),
(23, 'Torani-B', 6),
(24, 'Kamargaon', 7),
(25, 'Khumtai', 7),
(26, 'Melamora', 7),
(27, 'Gormora', 8),
(28, 'Joraguri', 8),
(29, 'Hahchora', 8),
(30, 'Missamora', 9),
(31, 'Kuralguri-A', 9),
(32, 'Kuralguri-B', 9),
(33, 'Naharani', 9),
(34, 'Batiporia', 9),
(35, 'Chinatoli', 10),
(36, 'Betioni', 10),
(37, 'Dakhinhenger', 10),
(38, 'Borjan', 10),
(39, 'Kamarbandha', 10);

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

--
-- Dumping data for table `sector_officers`
--

INSERT INTO `sector_officers` (`id`, `person_name`, `designation`, `phone`, `sector_id`) VALUES
(1, 'Rishma Hussain', 'JE, O/O the EE, Irrigation, Golaghat', '8723828022', 1),
(2, 'Nilangana Kalita', 'FDO, Fishery Development Office, Golaghat', '8723023133', 2),
(3, 'Lipika Gogoi', 'JE, o/o the EE, PWD, Golaghat', '8822384170', 3),
(4, 'Bhargabi Gogoi', 'JE, Executive Engineer Irrigation, Golaghat', '9531180689', 4),
(5, 'Namrata Gohain', 'FDO, Fishery Development Office, Golaghat', '8472858313', 5),
(6, 'Dipak Kr. Shyam', 'JE, O/O the BDO Podumoni East Development Block', '7002497560', 6),
(7, 'Bhaskar Jyoti Phukan', 'ADO, District Agriculture Office', '8133035420', 7),
(8, 'Sanjib Bora', 'JE, O/O the EE, Irrigation, Golaghat', '7002144832', 8),
(9, 'Saptarisha Chetia', 'ADO, O/O the DAO, Golaghat', '8638956146', 9),
(10, 'Anil Bora', 'JE, PWD', '9435151131', 10),
(11, 'Mintu Bora', 'JE, PWD', '7002582865', 11),
(12, 'Manjit Thakur', 'JE, o/o the EE, PWD, Golaghat', '8638432011', 12),
(13, 'Jibon Bora', 'JE, PWD', '7086457228', 13),
(14, 'Syed. S Abdulah', 'JE, PWD', '7002682709', 14),
(15, 'Dinesh Ch. Das', 'AE,PHE', '9957588045', 15),
(16, 'Chiranjeet Borah', 'JE,Water Resource', '9101046566', 16),
(17, 'Pabitra Sarma', 'AE,Irrigation', '7086364141', 17),
(18, 'Ram Pd. Saikia', 'JE,Gumariguri Block', '9101502383', 18),
(19, 'Monidip Chakarvarty', 'JE,Gumariguri Block', '7002288270', 19),
(20, 'Ranju Kumar Kalita', 'Sub Registerer, Audit', '9435362099', 20),
(21, 'Monoranjan Nath', 'Sr. Inspector, ARCS', '9101008662', 21),
(22, 'Nabajit Sarma', 'Sr. Inspector, ARCS', '8486334458', 22),
(23, 'Putul Saikia', 'Sr. Inspector, ARCS', '9101987690', 23),
(24, 'Jyotiban Das', 'JE,PHE', '82568164', 24),
(25, 'Narayan Bora', 'JE, Golaghat Regulator Market', '9435520215', 25),
(26, 'Sarat Mahanta', 'JE,Kothalguri Block', '9435056637', 26),
(27, 'Subhash Thapa', 'GP Secretary, Pachim Brahmaputra GP', '7002104201', 27),
(28, 'Jyotish Bordoloi', 'JE,AEE', '7086012772', 28),
(29, 'Barsha Rani Baruah', 'ADO, O/O the DAO, Golaghat', '9706203406', 29),
(30, 'Pranjal Pratim Sarma Bordoloi', 'AE,PHE', '9435354855', 30),
(31, 'Amiya Handique', 'JE,PHE', '8638104229', 31),
(32, 'Pragya Bora', 'JE,Irrigation', '9957701438', 32),
(33, 'Nabin Ch. Gogoi', 'JE,PHE', '7002286305', 33),
(34, 'Biju Hazarika', 'JE,PHE', '9085531449', 34),
(35, 'Uditya Saikia', 'ADO,O/O the DAO', '9957526605', 35),
(36, 'Anup Pegu', 'SR. ADO,O/O the DAO', '9401007774', 36),
(37, 'Amar Sharma', 'Inspector,O/O the DAO', '8876856981', 37),
(38, 'Nilim Saikia', 'Inspector,O/O the DAO', '8486589952', 38),
(39, 'Ranjan Barua', 'SR. ADO,O/O the DAO', '8134821284', 39);

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
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `designation`, `phone`, `password`, `user_type`, `status`) VALUES
(1, 'Rituraj Borgohain', 'District Manager', '7002274743', '21232f297a57a5a743894a0e4a801fc3', 2, 1),
(2, 'Shri Bibhas Ch. Modi', 'Deputy Commissioner', '9706786200', '21232f297a57a5a743894a0e4a801fc3', 2, 1);

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
  `status` int(11) NOT NULL DEFAULT 1
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
  `remarks` text DEFAULT NULL,
  `final_remarks` text DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `cby` int(11) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approved_on` date DEFAULT NULL,
  `status` int(11) DEFAULT 1
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
(7, 'AS05G1299', 'D Sharma, DM, [7002274743]', NULL, NULL, NULL, '2021-01-25', 7, NULL, NULL, NULL, NULL, NULL, '2021-01-22', 1, NULL, NULL, 1),
(8, 'AS05G1299', 'Binod Kumar Pegu, Sr.Inspector, [9401187715]', NULL, NULL, NULL, '2020-03-02', 7, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1);

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
  `remarks` text DEFAULT NULL,
  `status` int(11) DEFAULT 1
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
(14, '2021-01-25', 'AS05G1299', 7, 'Gomari', 'Golaghat', 10, NULL, 1),
(15, '2020-03-02', 'AS05G1299', 8, 'Golaghat', 'Gomari', 8, NULL, 1),
(16, '2020-03-02', 'AS05G1299', 8, 'Gomari', 'Merapani', 12, NULL, 1),
(17, '2020-03-02', 'AS05G1299', 8, 'Merapani', 'Golaghat', 20, NULL, 1);

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
  `person_name` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zonal_officers`
--

INSERT INTO `zonal_officers` (`id`, `person_name`, `designation`, `phone`, `zone_id`) VALUES
(1, 'Simanta Konwar', 'DFDO, Golaghat', '9954428150', 1),
(2, 'Krishna Ranjan Saikia', 'SDAO, O/O the DAO', '9954977364', 2),
(3, 'Arup Bhuyan', 'AEE, O/O the EE, PWD', '7086068787', 3),
(4, 'Bijit Baruah', 'EE, Irrigation Dept.', '9435350876', 4),
(5, 'BDO', 'Block Development Officer,Gomariguri Dev. Block', '', 5),
(6, 'Siddhartha Doley', 'ARCS, Golaghat', '8134821538', 6),
(7, 'Rajib Kr. Das', 'AEE, O/O the EE, PHE, Golaghat', '9435051008', 7),
(8, 'Kamal Saikia', 'AEE, Agricultural Engineering, Golaghat', '7086086062', 8),
(9, 'Upendra Singha', 'EE, PHE, Golaghat', '9957285294', 9),
(10, 'Mridul Sharma', 'SDAO, O/O the DAO, Golaghat', '8761817129', 10);

-- --------------------------------------------------------

--
-- Table structure for table `zone_master`
--

CREATE TABLE `zone_master` (
  `id` int(11) NOT NULL,
  `zone_name` varchar(30) NOT NULL,
  `lac` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zone_master`
--

INSERT INTO `zone_master` (`id`, `zone_name`, `lac`) VALUES
(1, 'Golaghat', 95),
(2, 'Bokolai', 95),
(3, 'Athkhelia', 95),
(4, 'Chowdangpather', 95),
(5, 'Kachomari', 95),
(6, 'Gomari', 95),
(7, 'Khumtai', 96),
(8, 'Joraguri-A', 96),
(9, 'Missamora', 96),
(10, 'Dakhinhengera', 96);

-- --------------------------------------------------------

--
-- Table structure for table `zone_sector`
--

CREATE TABLE `zone_sector` (
  `id` int(11) NOT NULL,
  `psid` int(11) NOT NULL,
  `asst_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zone_sector`
--

INSERT INTO `zone_sector` (`id`, `psid`, `asst_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 2),
(8, 8, 1),
(9, 11, 2),
(10, 14, 2),
(11, 15, 2),
(12, 16, 2),
(13, 17, 2),
(14, 18, 4),
(15, 19, 4),
(16, 20, 3),
(17, 21, 3),
(18, 22, 4),
(19, 23, 4),
(20, 24, 4),
(21, 25, 4),
(22, 26, 4),
(23, 27, 4),
(24, 28, 4),
(25, 29, 4),
(26, 30, 4),
(27, 31, 4),
(28, 32, 4),
(29, 33, 6),
(30, 34, 6),
(31, 35, 6),
(32, 36, 6),
(33, 37, 6),
(34, 38, 6),
(35, 39, 6),
(36, 43, 5),
(37, 44, 5),
(38, 45, 5),
(39, 46, 5),
(40, 40, 7),
(41, 40, 8),
(42, 41, 7),
(43, 41, 8),
(44, 42, 7),
(45, 42, 8),
(46, 47, 9),
(47, 47, 10),
(48, 48, 9),
(49, 48, 10),
(50, 49, 9),
(51, 49, 10),
(52, 50, 9),
(53, 50, 10),
(54, 51, 9),
(55, 51, 10),
(56, 52, 9),
(57, 52, 10),
(58, 53, 9),
(59, 53, 10),
(60, 54, 9),
(61, 54, 10),
(62, 55, 9),
(63, 55, 10),
(64, 56, 9),
(65, 56, 10),
(66, 57, 9),
(67, 57, 10),
(68, 58, 9),
(69, 58, 10),
(70, 59, 9),
(71, 59, 10),
(72, 60, 9),
(73, 60, 10),
(74, 61, 9),
(75, 61, 10),
(76, 9, 11),
(77, 10, 11),
(78, 12, 11),
(79, 13, 11),
(80, 62, 12),
(81, 63, 12),
(82, 64, 12),
(83, 65, 12),
(84, 66, 12),
(85, 67, 12),
(86, 68, 13),
(87, 69, 13),
(88, 70, 13),
(89, 71, 13),
(90, 72, 14),
(91, 73, 14),
(92, 74, 14),
(93, 75, 14),
(94, 76, 14),
(95, 77, 14),
(96, 78, 14),
(97, 79, 14),
(98, 80, 14),
(99, 81, 14),
(100, 82, 16),
(101, 83, 16),
(102, 84, 16),
(103, 85, 16),
(104, 86, 16),
(105, 87, 15),
(106, 88, 15),
(107, 89, 15),
(108, 90, 15),
(109, 91, 15),
(110, 92, 15),
(111, 93, 15),
(112, 94, 15),
(113, 95, 15),
(114, 96, 17),
(115, 97, 17),
(116, 98, 17),
(117, 99, 17),
(118, 100, 17),
(119, 101, 18),
(120, 102, 18),
(121, 103, 18),
(122, 104, 18),
(123, 105, 17),
(124, 106, 17),
(125, 107, 17),
(126, 108, 17),
(127, 109, 17),
(128, 110, 19),
(129, 111, 19),
(130, 112, 19),
(131, 113, 20),
(132, 114, 20),
(133, 115, 20),
(134, 116, 20),
(135, 117, 20),
(136, 168, 20),
(137, 169, 20),
(138, 170, 20),
(139, 171, 20),
(140, 118, 21),
(141, 119, 21),
(142, 120, 21),
(143, 121, 22),
(144, 122, 22),
(145, 123, 21),
(146, 124, 22),
(147, 125, 22),
(148, 126, 22),
(149, 130, 23),
(150, 131, 23),
(151, 132, 23),
(152, 129, 24),
(153, 142, 24),
(154, 143, 24),
(155, 144, 24),
(156, 145, 24),
(157, 150, 24),
(158, 151, 24),
(159, 153, 25),
(160, 154, 25),
(161, 155, 25),
(162, 152, 26),
(163, 156, 26),
(164, 157, 26),
(165, 158, 26),
(166, 159, 26),
(167, 160, 26),
(168, 127, 28),
(169, 128, 28),
(170, 133, 27),
(171, 134, 27),
(172, 135, 27),
(173, 136, 28),
(174, 137, 28),
(175, 138, 28),
(176, 139, 28),
(177, 146, 28),
(178, 147, 28),
(179, 161, 29),
(180, 162, 29),
(181, 163, 29),
(182, 164, 29),
(183, 165, 29),
(184, 166, 29),
(185, 167, 29),
(186, 172, 29),
(187, 173, 29),
(188, 174, 29),
(189, 175, 29),
(190, 189, 29),
(191, 201, 29),
(192, 202, 29),
(193, 236, 29),
(194, 237, 29),
(195, 235, 30),
(196, 238, 30),
(197, 239, 30),
(198, 240, 30),
(199, 241, 30),
(200, 242, 30),
(201, 243, 30),
(202, 244, 30),
(203, 245, 30),
(204, 246, 30),
(205, 247, 30),
(206, 176, 31),
(207, 177, 31),
(208, 178, 31),
(209, 179, 31),
(210, 180, 31),
(211, 181, 31),
(212, 182, 31),
(213, 184, 31),
(214, 192, 31),
(215, 183, 32),
(216, 185, 32),
(217, 188, 32),
(218, 205, 32),
(219, 206, 32),
(220, 207, 32),
(221, 186, 33),
(222, 187, 33),
(223, 190, 33),
(224, 191, 33),
(225, 193, 33),
(226, 194, 33),
(227, 195, 33),
(228, 196, 33),
(229, 197, 33),
(230, 198, 33),
(231, 199, 33),
(232, 200, 33),
(233, 203, 33),
(234, 204, 33),
(235, 231, 33),
(236, 148, 34),
(237, 149, 34),
(238, 208, 34),
(239, 210, 34),
(240, 211, 34),
(241, 212, 34),
(242, 213, 34),
(243, 214, 34),
(244, 215, 34),
(245, 216, 34),
(246, 217, 34),
(247, 110, 35),
(248, 141, 35),
(249, 209, 35),
(250, 219, 35),
(251, 220, 35),
(252, 221, 35),
(253, 229, 35),
(254, 230, 35),
(255, 218, 35),
(256, 222, 36),
(257, 223, 36),
(258, 224, 36),
(259, 225, 36),
(260, 226, 36),
(261, 227, 36),
(262, 228, 36),
(263, 232, 36),
(264, 233, 36),
(265, 234, 36),
(266, 248, 36),
(267, 249, 37),
(268, 250, 37),
(269, 251, 37),
(270, 252, 37),
(271, 253, 37),
(272, 254, 37),
(273, 255, 37),
(274, 256, 37),
(275, 257, 37),
(276, 258, 37),
(277, 259, 37),
(278, 260, 37),
(279, 261, 37),
(280, 1, 38),
(281, 2, 38),
(282, 3, 38),
(283, 4, 38),
(284, 5, 38),
(285, 6, 38),
(286, 7, 38),
(287, 8, 38),
(288, 9, 38),
(289, 10, 38),
(290, 11, 38),
(291, 12, 39),
(292, 13, 39),
(293, 14, 39),
(294, 15, 39),
(295, 18, 39),
(296, 19, 39),
(297, 16, 40),
(298, 20, 40),
(299, 21, 40),
(300, 22, 40),
(301, 23, 41),
(302, 24, 41),
(303, 25, 41),
(304, 46, 41),
(305, 29, 42),
(306, 30, 42),
(307, 31, 42),
(308, 32, 42),
(309, 33, 42),
(310, 34, 42),
(311, 38, 42),
(312, 39, 42),
(313, 26, 43),
(314, 27, 43),
(315, 28, 43),
(316, 35, 43),
(317, 36, 43),
(318, 37, 43),
(319, 40, 43),
(320, 41, 43),
(321, 87, 44),
(322, 88, 44),
(323, 81, 45),
(324, 82, 45),
(325, 83, 45),
(326, 84, 45),
(327, 85, 45),
(328, 86, 45),
(329, 91, 45),
(330, 92, 45),
(331, 121, 45),
(332, 122, 45),
(333, 123, 45),
(334, 124, 45),
(335, 125, 45),
(336, 89, 46),
(337, 90, 46),
(338, 93, 46),
(339, 94, 46),
(340, 95, 46),
(341, 96, 46),
(342, 97, 46),
(343, 98, 46),
(344, 99, 46),
(345, 100, 46),
(346, 76, 47),
(347, 77, 47),
(348, 78, 47),
(349, 79, 47),
(350, 80, 47),
(351, 101, 47),
(352, 102, 47),
(353, 103, 47),
(354, 104, 47),
(355, 105, 47),
(356, 74, 48),
(357, 75, 48),
(358, 106, 48),
(359, 107, 48),
(360, 108, 48),
(361, 109, 48),
(362, 110, 49),
(363, 111, 49),
(364, 112, 50),
(365, 113, 50),
(366, 114, 50),
(367, 115, 50),
(368, 116, 50),
(369, 117, 50),
(370, 118, 50),
(371, 126, 51),
(372, 127, 51),
(373, 128, 51),
(374, 129, 51),
(375, 138, 51),
(376, 139, 51),
(377, 119, 52),
(378, 120, 52),
(379, 130, 53),
(380, 131, 53),
(381, 132, 53),
(382, 133, 53),
(383, 134, 53),
(384, 135, 53),
(385, 136, 53),
(386, 137, 53),
(387, 140, 54),
(388, 141, 54),
(389, 142, 54),
(390, 143, 54),
(391, 144, 54),
(392, 145, 54),
(393, 146, 54),
(394, 147, 54),
(395, 148, 54),
(396, 149, 54),
(397, 150, 54),
(398, 42, 55),
(399, 43, 55),
(400, 44, 55),
(401, 45, 55),
(402, 47, 55),
(403, 48, 55),
(404, 49, 55),
(405, 50, 55),
(406, 51, 55),
(407, 52, 55),
(408, 53, 55),
(409, 54, 55),
(410, 55, 55),
(411, 56, 55),
(412, 57, 55),
(413, 58, 56),
(414, 59, 56),
(415, 60, 56),
(416, 61, 56),
(417, 62, 56),
(418, 63, 56),
(419, 64, 56),
(420, 65, 56),
(421, 66, 56),
(422, 67, 57),
(423, 68, 57),
(424, 69, 57),
(425, 70, 57),
(426, 71, 57),
(427, 72, 57),
(428, 73, 57),
(429, 151, 58),
(430, 152, 58),
(431, 153, 58),
(432, 154, 58),
(433, 155, 58),
(434, 156, 58),
(435, 157, 58),
(436, 158, 58),
(437, 159, 58),
(438, 160, 58),
(439, 161, 58),
(440, 162, 58),
(441, 163, 58),
(442, 164, 59),
(443, 165, 59),
(444, 166, 59),
(445, 167, 59),
(446, 168, 59),
(447, 174, 59),
(448, 175, 59),
(449, 171, 60),
(450, 172, 60),
(451, 173, 60),
(452, 169, 61),
(453, 170, 61),
(454, 178, 61),
(455, 179, 61),
(456, 180, 61),
(457, 181, 61),
(458, 182, 61),
(459, 176, 62),
(460, 177, 62),
(461, 183, 62),
(462, 184, 62),
(463, 185, 62),
(464, 186, 62),
(465, 187, 62),
(466, 188, 62),
(467, 17, 39);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=521;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vehicle_trans`
--
ALTER TABLE `vehicle_trans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
