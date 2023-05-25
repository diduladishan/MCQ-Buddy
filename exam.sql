-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2022 at 03:11 PM
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
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b13ed3a6e006', '5b13ed3a9436a'),
('5b13ed72489d8', '5b13ed7263d70'),
('62fbaddeb0807', '62fbaddec9f8e'),
('62fbaddf01877', '62fbaddf0abb5'),
('62fbaddf27eae', '62fbaddf30005'),
('62fbaddf509d5', '62fbaddf7147e'),
('62fbade0096b9', '62fbade016f32'),
('62fbb4338f683', '62fbb4339ec86'),
('62fbb433bbf7c', '62fbb433c8194'),
('62fbb433e4ac6', '62fbb434001af'),
('62fbb4341f587', '62fbb43424bf2'),
('62fbb4345c67e', '62fbb43461c66'),
('62fbd59c59148', '62fbd59c788fe'),
('62fbd59ca36f7', '62fbd59ca8f7a'),
('62fbd59cece76', '62fbd59cf2346'),
('62fbd59d17161', '62fbd59d1d81b'),
('62fbd59d41cb5', '62fbd59d4a47b'),
('62fbde80aa39c', '62fbde80b6c0d'),
('62fbde80e34f0', '62fbde80e9a45'),
('62fbde810e7ee', '62fbde8113ff6'),
('62fbde8132871', '62fbde81373ff'),
('62fbe03a64f0a', '62fbe03a77595'),
('62fbe03abb245', '62fbe03ac09b1'),
('62fbe03ae9ee3', '62fbe03b05b6b'),
('62fbe03b249a4', '62fbe03b2e679'),
('62fbe03baae09', '62fbe03bb09b1');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('admin@gmail.com', '62fbdef55f4d7', 10, 5, 5, 0, '2022-08-23 22:38:24'),
('admin@gmail.com', '62fbdd2eb1476', 6, 5, 4, 1, '2022-08-23 22:39:20'),
('admin@gmail.com', '62fbd1734d17e', 10, 5, 5, 0, '2022-08-23 22:39:53'),
('admin@gmail.com', '62fbaedf6db7f', 10, 5, 5, 0, '2022-08-23 22:40:34'),
('admin@gmail.com', '62fbac4eb19d7', 2, 5, 3, 2, '2022-08-23 22:41:19'),
('samitha@gmail.com', '62fbdef55f4d7', 10, 5, 5, 0, '2022-08-23 22:49:25'),
('samitha@gmail.com', '62fbdd2eb1476', 2, 5, 3, 2, '2022-08-23 22:50:42'),
('samitha@gmail.com', '62fbd1734d17e', 10, 5, 5, 0, '2022-08-23 22:51:02'),
('samitha@gmail.com', '62fbaedf6db7f', 6, 5, 4, 1, '2022-08-23 22:51:25'),
('samitha@gmail.com', '62fbac4eb19d7', 6, 5, 4, 1, '2022-08-23 22:52:08'),
('dishan5@gmail.com', '62fbaedf6db7f', 6, 5, 4, 1, '2022-09-09 07:53:53'),
('dishan5@gmail.com', '62fbd1734d17e', 6, 5, 4, 1, '2022-09-09 08:31:14'),
('dishan5@gmail.com', '62fbdd2eb1476', 10, 5, 5, 0, '2022-09-09 15:45:18'),
('hirushan16@gmail.com', '62fbac4eb19d7', -2, 5, 2, 3, '2022-09-10 06:09:10'),
('hirushan16@gmail.com', '62fbaedf6db7f', -10, 5, 0, 5, '2022-09-10 06:09:34'),
('ashenp@gmail.com', '62fbac4eb19d7', 10, 5, 5, 0, '2022-09-10 08:51:49'),
('ashenp@gmail.com', '62fbaedf6db7f', -6, 5, 1, 4, '2022-09-10 08:52:11'),
('ashenp@gmail.com', '62fbd1734d17e', -6, 5, 1, 4, '2022-09-10 08:53:03'),
('ashenp@gmail.com', '62fbdd2eb1476', 10, 5, 5, 0, '2022-09-10 08:53:36'),
('ashenp@gmail.com', '62fbdef55f4d7', 6, 5, 4, 1, '2022-09-10 08:55:37'),
('hirushan16@gmail.com', '62fbd1734d17e', 10, 5, 5, 0, '2022-09-10 08:56:46'),
('hirushan16@gmail.com', '62fbdd2eb1476', 10, 5, 5, 0, '2022-09-10 08:57:58'),
('hirushan16@gmail.com', '62fbdef55f4d7', 6, 5, 4, 1, '2022-09-10 08:59:34'),
('dishan5@gmail.com', '62fbdef55f4d7', 10, 5, 5, 0, '2022-09-10 09:04:18'),
('dishan56@gmail.com', '62fbac4eb19d7', 6, 5, 4, 1, '2022-09-11 07:53:17'),
('dishan5@gmail.com', '62fbac4eb19d7', 6, 5, 4, 1, '2022-09-14 11:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b13ed3a6e006', 'sdb', '5b13ed3a9436a'),
('5b13ed3a6e006', 'jsdb', '5b13ed3a94374'),
('5b13ed3a6e006', 'dsbv', '5b13ed3a94377'),
('5b13ed3a6e006', 'jbdv', '5b13ed3a94379'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d70'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7a'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7d'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d80'),
('62fbaddeb0807', 'The particles are uncharged.', '62fbaddec9f88'),
('62fbaddeb0807', 'They travel from anode to cathode along straight lines.', '62fbaddec9f8c'),
('62fbaddeb0807', 'Their charge to mass ratio e/m depends on the nature of gas and pressure inside the  cathode ray tube.', '62fbaddec9f8d'),
('62fbaddeb0807', 'Their direction of travel is affected by magnetic and electric fields.', '62fbaddec9f8e'),
('62fbaddf01877', 'There are 3 sub shells associated with it.', '62fbaddf0abaf'),
('62fbaddf01877', 'There are 9 orbitals.', '62fbaddf0abb4'),
('62fbaddf01877', 'There can be a maximum of 8 electrons with magnetic quantum number (mi), mi = 0', '62fbaddf0abb5'),
('62fbaddf01877', 'There can be a maximum of 18 electrons.', '62fbaddf0abb6'),
('62fbaddf27eae', 'H e > H > B > B e > Li > N a', '62fbaddf30001'),
('62fbaddf27eae', 'H e > H > B e > B > Li > N a', '62fbaddf30005'),
('62fbaddf27eae', 'H e > B e > H > Li > B > N a', '62fbaddf30006'),
('62fbaddf27eae', 'H > H e > B > B e > Li > N a', '62fbaddf30007'),
('62fbaddf509d5', 'Louis de Broglie and Max Planck ', '62fbaddf7147e'),
('62fbaddf509d5', 'Max Planck and Louis de Broglie', '62fbaddf71482'),
('62fbaddf509d5', 'Louis de Broglie and Albert Einstein', '62fbaddf71483'),
('62fbaddf509d5', 'Niels Bohr and Louis de Broglie', '62fbaddf71484'),
('62fbade0096b9', '3', '62fbade016f32'),
('62fbade0096b9', '4', '62fbade016f38'),
('62fbade0096b9', '5', '62fbade016f3a'),
('62fbade0096b9', '8', '62fbade016f3b'),
('62fbb4338f683', '(a) see-saw, square planar and square pyramidal.', '62fbb4339ec81'),
('62fbb4338f683', '(b) square planar, see-saw and square pyramidal.', '62fbb4339ec85'),
('62fbb4338f683', '(c) tetrahedral, see-saw and trigonal bipyramidal.', '62fbb4339ec86'),
('62fbb4338f683', ' (d) see-saw, tetrahedral and square pyramidal. ', '62fbb4339ec87'),
('62fbb433bbf7c', '(a) Evaporation of water from the solution increases M2+ and chloride ion concentrations  of the solution', '62fbb433c818f'),
('62fbb433bbf7c', '(b) Chloride ion concentration of the solution can be increased by adding NaCl(s)', '62fbb433c8194'),
('62fbb433bbf7c', '(c) The solution cannot be acidified by adding HCl.', '62fbb433c8196'),
('62fbb433bbf7c', '(d) Chloride ion concentration of the solution cannot be increased above 1.0 x 10-4 mol  dm-3', '62fbb433c8197'),
('62fbb433e4ac6', '(a) J. J. Thomson and Henry Becquerel', '62fbb434001af'),
('62fbb433e4ac6', '(b) Eugen Goldstein and Robert Millikan', '62fbb434001b4'),
('62fbb433e4ac6', '(c) Henry Becquerel and Eugen Goldstein', '62fbb434001b5'),
('62fbb433e4ac6', '(d) J. J. Thomson and Ernest Rutherford', '62fbb434001b6'),
('62fbb4341f587', '(a) 6 and 4', '62fbb43424beb'),
('62fbb4341f587', '(b) 8 and 12', '62fbb43424bf1'),
('62fbb4341f587', '(c) 8 and 5', '62fbb43424bf2'),
('62fbb4341f587', '(d) 8 and 6', '62fbb43424bf3'),
('62fbb4345c67e', '45', '62fbb43461c5f'),
('62fbb4345c67e', '67', '62fbb43461c66'),
('62fbb4345c67e', '100', '62fbb43461c67'),
('62fbb4345c67e', '43', '62fbb43461c69'),
('62fbd59c59148', '(a) 1.0 x 10^-4 and 3.9 ', '62fbd59c788f8'),
('62fbd59c59148', '(b) 1.0 x 10-4 and 7.8', '62fbd59c788fc'),
('62fbd59c59148', '(c) 2.0 x 10-4 and 1.3', '62fbd59c788fd'),
('62fbd59c59148', '(d) 2,0 x 10-4 and 3.9', '62fbd59c788fe'),
('62fbd59ca36f7', '(a) 3/5', '62fbd59ca8f73'),
('62fbd59ca36f7', '(b) 4/5', '62fbd59ca8f79'),
('62fbd59ca36f7', '(c) 1', '62fbd59ca8f7a'),
('62fbd59ca36f7', '(d) 5/3', '62fbd59ca8f7b'),
('62fbd59cece76', '(a) 15', '62fbd59cf233e'),
('62fbd59cece76', '(b) 20', '62fbd59cf2344'),
('62fbd59cece76', '(c) 25', '62fbd59cf2345'),
('62fbd59cece76', '(d) 28', '62fbd59cf2346'),
('62fbd59d17161', '(a) Ca3(PO4)2 and 80.7% ', '62fbd59d1d81b'),
('62fbd59d17161', '(b) SiO2 and 80.7%', '62fbd59d1d81f'),
('62fbd59d17161', '(c) SiO2 and 40.3%', '62fbd59d1d820'),
('62fbd59d17161', '(d) C and 252%', '62fbd59d1d821'),
('62fbd59d41cb5', '(a) 0.24 g', '62fbd59d4a475'),
('62fbd59d41cb5', '(b) 0.48 g', '62fbd59d4a47b'),
('62fbd59d41cb5', '(c) 0.72 g', '62fbd59d4a47d'),
('62fbd59d41cb5', '(d) 1.08 g', '62fbd59d4a47e'),
('62fbde80aa39c', 'P / 2', '62fbde80b6c0d'),
('62fbde80aa39c', 'P/3', '62fbde80b6c11'),
('62fbde80aa39c', '2p/4', '62fbde80b6c12'),
('62fbde80aa39c', '3P/2', '62fbde80b6c13'),
('62fbde80e34f0', 'Pressure remains unchanged.', '62fbde80e9a40'),
('62fbde80e34f0', 'Pressure increases and then becomes constant.', '62fbde80e9a45'),
('62fbde80e34f0', 'Pressure decreases and then becomes constant.', '62fbde80e9a47'),
('62fbde80e34f0', 'Pressure decreases and returns to the initial value again.', '62fbde80e9a48'),
('62fbde810e7ee', ' It is the temperature at which the intermolecular forces can be neglected.', '62fbde8113ff0'),
('62fbde810e7ee', ' It is the temperature corresponding to the lowest pressure at which the gas can be  liquified.', '62fbde8113ff4'),
('62fbde810e7ee', 'It is the temperature at which the gas is in equilibrium with its solid.', '62fbde8113ff6'),
('62fbde810e7ee', ' It is the temperature given by the van der Waals equation at any pressure.', '62fbde8113ff7'),
('62fbde8132871', '0.24 g', '62fbde81373f9'),
('62fbde8132871', '0.48 g', '62fbde81373fd'),
('62fbde8132871', ' 0.72 g ', '62fbde81373fe'),
('62fbde8132871', '1.08g', '62fbde81373ff'),
('62fbe03a64f0a', ' Na+(g) + OH- (aq) →NaoH(s)', '62fbe03a77591'),
('62fbe03a64f0a', 'NaCl(g) + H2O(/) →Na+ (aq) + OH - (aq) +HC1(aq)', '62fbe03a77595'),
('62fbe03a64f0a', 'Na+(g) + H2O(I) →Na+ (aq)', '62fbe03a77596'),
('62fbe03a64f0a', 'Na+(g) + H2O(I) →Na+ (aq) + OH - (aq) + H+ (aq)', '62fbe03a77597'),
('62fbe03abb245', 'The heat absorbed when 1 mol of CH3OH(g) is decomposed is less than 128 kJ.', '62fbe03ac09b1'),
('62fbe03abb245', 'Enthalpy of CO(g) + 2H2(g) is higher than the enthalpy of CH3OH(l).', '62fbe03ac09b7'),
('62fbe03abb245', '128 Id of heat is released when 1 mol of CO(g) is formed.', '62fbe03ac09b8'),
('62fbe03abb245', '128 Id of heat is absorbed during the decomposition of a mole of reactant.', '62fbe03ac09ba'),
('62fbe03ae9ee3', '-276', '62fbe03b05b65'),
('62fbe03ae9ee3', '-239', '62fbe03b05b69'),
('62fbe03ae9ee3', '-202', '62fbe03b05b6a'),
('62fbe03ae9ee3', '+84', '62fbe03b05b6b'),
('62fbe03b249a4', 'The heat absorbed when 1 mol of CH3OH(g) is decomposed is less than 128 kJ.', '62fbe03b2e671'),
('62fbe03b249a4', 'Enthalpy of CO(g) + 2H2(g) is higher than the enthalpy of CH3OH(l).', '62fbe03b2e677'),
('62fbe03b249a4', '128 Id of heat is released when 1 mol of CO(g) is formed.', '62fbe03b2e679'),
('62fbe03b249a4', '128 kJ of heat is absorbed when 32 g of products are formed.', '62fbe03b2e67a'),
('62fbe03baae09', '45', '62fbe03bb09ab'),
('62fbe03baae09', '67', '62fbe03bb09b0'),
('62fbe03baae09', '100', '62fbe03bb09b1'),
('62fbe03baae09', '109', '62fbe03bb09b2');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b13ed30cd71f', '5b13ed3a6e006', 'dbjb', 4, 1),
('5b13ed6bb8bcd', '5b13ed72489d8', 'dvsd', 4, 1),
('62fbac4eb19d7', '62fbaddeb0807', 'Select the correct statement with regard to particles associated with cathode rays observed in a cathode ray tube.', 4, 1),
('62fbac4eb19d7', '62fbaddf01877', 'Which of the following statements is incorrect with regard to an energy level of an atom with a principal quantum number (n), n = 3?', 4, 2),
('62fbac4eb19d7', '62fbaddf27eae', 'The decreasing order of the first ionization energy of the atoms H, He, Li, Be, B and Na is,', 4, 3),
('62fbac4eb19d7', '62fbaddf509d5', 'Consider the following statements, I and II.\r\nI. The energy absorbed or released by atoms is quantized.\r\nII. Small particles under appropriate conditions show wave properties.\r\nThe two scientists who proposed the theories as given by statements I and II respectively are,\r\n', 4, 4),
('62fbac4eb19d7', '62fbade0096b9', 'The maximum number of electron pairs of an atom that are associated with principal quantum number n = 3 is,\r\n', 4, 5),
('62fbaedf6db7f', '62fbb4338f683', 'The shapes of IF+4, IF-4 and IF5 are respectively,', 4, 1),
('62fbaedf6db7f', '62fbb433bbf7c', 'MCl2 is a solid which is sparingly soluble in water (Ksp = 1.0 x 10-8 mol3 dm -9). Which of the following is correct regarding a saturated aqueous solution of MC12?', 4, 2),
('62fbaedf6db7f', '62fbb433e4ac6', 'Consider the following discoveries made with regard to the atomic structure.\r\nI. Positive rays inside a cathode ray tube\r\nII. Radioactivity by certain types of nuclei\r\nThe two scientists who discovered the above stated I and II respectively, are,', 4, 3),
('62fbaedf6db7f', '62fbb4341f587', 'The number of electrons in the manganese atom (Mn, Z = 25) that have quantum numbers l = 0 and ml = -1 respectively are,', 4, 4),
('62fbaedf6db7f', '62fbb4345c67e', 'The enthalpy change of vaporization and the entropy change of vaporization of a liquid are, 45.00 Id morl and 90.0 J K-I morl\r\nrespectively. The boiling point of the liquid is', 4, 5),
('62fbd1734d17e', '62fbd59c59148', 'When a mass of 0.0119 g of KBr is dissolved in 500.0 cm3 of distilled water, the K+\r\ncomposition of the solution in mol dm -3 and ppm (mg kg-1) are respectively,\r\n(Relative atomic mass: K = 39, Br = 80; density of solution = 1.00 kg dm-3)', 4, 1),
('62fbd1734d17e', '62fbd59ca36f7', 'The number of moles of KMnO4 that are required to react completely with one mole of Fe(NO2)2 in acidic medium is,\r\n(Note: Neglect the loss of NO2- due to acidic conditions.)\r\n', 4, 2),
('62fbd1734d17e', '62fbd59cece76', 'A bottle labelled X contains H2O2 solution. When 25.0 cm3 of solution X was titrated with 1.0 mol dm3 KMnO4 in the presence of dilute H2SO4 the volume required to reach the end point was 25.0 cm3. The volume strength of solution X is,', 4, 3),
('62fbd1734d17e', '62fbd59d17161', 'When 620 g of Ca3(PO4)2, 180 g of Si02 and 96 g of C were reacted, 50 g of P4 were obtained. Under these conditions, the limiting reagent (reagent that is completely consumed) and percentage yield of P4 respectively \r\nare, (C = 12, 0 = 16, Si = 28,P= 31, Ca = 40)', 4, 4),
('62fbd1734d17e', '62fbd59d41cb5', 'In an experiment, Mg metal was made to react with excess N2 gas and the product obtained was reacted with H2O. The volume of the gas evolved at standard temperature (273 K) and pressure (1.0 atm) was 672 cm3. The mass of Mg used in the experiment is,\r\n', 4, 5),
('62fbdd2eb1476', '62fbde80aa39c', 'The elementary reaction A(g) —> B(g) + C(g) occurs in a closed rigid container at constant temperature. The initial pressure of the container when only A(g) is present was measured to be 2P0. The pressure of the container after two half lives of A(g) would be,', 4, 1),
('62fbdd2eb1476', '62fbde80e34f0', 'Which of the following statements is correct regarding the variation of pressure of the system with time?', 4, 2),
('62fbdd2eb1476', '62fbde810e7ee', 'Which of the following statements regarding the critical temperature of a real gas is \r\ncorrect?', 4, 3),
('62fbdd2eb1476', '62fbde8132871', 'In an experiment, Mg metal was made to react with excess N2 gas and the product obtained was reacted with H2O. The volume of the gas evolved at standard temperature (273 K) and pressure (1.0 atm) was 672 cm3. The mass of Mg used in the experiment is,', 4, 4),
('62fbdef55f4d7', '62fbe03a64f0a', 'The correct reaction relevant to the standard enthalpy of hydration of the sodium ion is,', 4, 1),
('62fbdef55f4d7', '62fbe03abb245', 'Decomposition of 1 mol of CH3OH(l) occurs at high temperatures as follows. \r\n\r\nCH3OH(l) → CO(g) + 2H2(g); Delta(H) = +128kJ\r\n\r\nWhich of the following is incorrect for the above reaction? (H =1, C = 12, 0 = 16)', 4, 2),
('62fbdef55f4d7', '62fbe03ae9ee3', 'Standard combustion enthalpies of H2(g), C(s) and CH3OH(l) at 298 K are -286 kJ moll, -393 kJ mol-1 and -726 kJ mol-1, respectively. Enthalpy of vaporization of CH3OH(l) is +37 kJ mol-1. Enthalpy of formation (kJ moll) of one mole of gaseous CH3OH at 298 K is,', 4, 3),
('62fbdef55f4d7', '62fbe03b249a4', 'Which of the following is incorrect for the above reaction? (H =1, C = 12, 0 = 16)\r\n', 4, 4),
('62fbdef55f4d7', '62fbe03baae09', 'The enthalpy change of vaporization and the entropy change of vaporization of a liquid are, 45.00 Id morl and 90.0 J K-I morlrespectively. The boiling point of the liquid is', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('62fbac4eb19d7', 'Atomic Structure', 2, 2, 5, '2022-08-16 14:40:14'),
('62fbaedf6db7f', 'Atomic Structure And Bonding', 2, 2, 5, '2022-08-16 14:51:11'),
('62fbd1734d17e', 'Chemical Calculation', 2, 2, 5, '2022-08-16 17:18:43'),
('62fbdd2eb1476', 'The Gaseous State Matter', 2, 2, 5, '2022-08-16 18:08:46'),
('62fbdef55f4d7', 'Energy Science', 2, 2, 5, '2022-08-16 18:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('samitha@gmail.com', 34, '2022-08-23 22:52:08'),
('dishan5@gmail.com', 44, '2022-09-14 11:14:04'),
('hirushan16@gmail.com', 14, '2022-09-10 08:59:34'),
('ashenp@gmail.com', 8, '2022-09-10 08:55:37'),
('dishan56@gmail.com', 6, '2022-09-11 07:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `college`, `email`, `password`) VALUES
('Ashen Perera', 'ICBT', 'ashenp@gmail.com', 'ashenp'),
('didulaa', 'didu', 'didulaa@gmail.com', 'didu'),
('nanayakkaraD', 'AAB', 'dishan56@gmail.com', 'dishan56'),
('nanayakkara dishan', 'SLIIT Academy', 'dishan5@gmail.com', 'dishan5'),
('Hirushan', 'IIT', 'hirushan16@gmail.com', 'hirushan16'),
('Samitha Herath', 'NIBM', 'samitha@gmail.com', 'samitha123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
