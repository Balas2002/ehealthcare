-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2018 at 05:31 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_health_care`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(500) NOT NULL,
  `admin_pswd` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `admin_pswd`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `app_id` int(11) NOT NULL,
  `booking_date` varchar(500) NOT NULL,
  `booking_time` varchar(500) NOT NULL,
  `permission` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `pid` int(11) NOT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`app_id`, `booking_date`, `booking_time`, `permission`, `date`, `pid`, `sid`) VALUES
(34, '2018-09-11', '8:00 PM To 8:30 PM', 'Deleted', '2018-09-08', 1, 22),
(35, '2018-09-12', '8:00 PM To 8:30 PM', 'Deleted', '2018-09-08', 6, 22),
(36, '2018-09-13', '8:30 PM To 9:00 PM', 'Pending', '2018-09-08', 7, 22),
(37, '2018-09-14', '2:00 PM To 2:30 PM', 'Pending', '2018-09-08', 13, 22),
(38, '2018-09-15', '8:00 PM To 8:30 PM', 'Pending', '2018-09-08', 8, 22),
(39, '2018-09-16', '8:00 PM To 8:30 PM', 'Pending', '2018-09-08', 14, 22),
(40, '2018-09-18', '8:00 PM To 8:30 PM', 'Pending', '2018-09-08', 15, 22),
(41, '2018-09-17', '3:30 PM To 4:00 PM', 'Pending', '2018-09-08', 16, 22),
(42, '2018-09-19', '2:00 PM To 2:30 PM', 'Pending', '2018-09-08', 17, 22),
(43, '2018-09-21', '7:30 PM To 8:00 PM', 'Approved', '2018-09-08', 18, 22),
(44, '2018-09-23', '2:30 PM To 3:30 PM', 'Approved', '2018-09-08', 19, 22),
(45, '2018-09-30', '9:00  AM To 9:30 AM', 'Approved', '2018-09-08', 20, 22),
(47, '2018-09-20', '7:30 PM To 8:00 PM', 'Pending', '2018-09-08', 12, 34),
(48, '2018-09-10', '8:30 PM To 9:00 PM', 'Pending', '2018-09-08', 12, 24),
(49, '2018-09-12', '7:30 PM To 8:00 PM', 'Canceled', '2018-09-08', 12, 26),
(50, '2018-09-21', '8:00 PM To 8:30 PM', 'Approved', '2018-09-08', 12, 36),
(51, '2018-09-23', '8:00 PM To 8:30 PM', 'Approved', '2018-09-08', 12, 37),
(52, '2018-09-30', '8:30 PM To 9:00 PM', 'Deleted', '2018-09-08', 12, 25),
(53, '2018-09-10', '8:00 PM To 8:30 PM', 'Canceled', '2018-09-20', 12, 22),
(54, '2018-10-27', '8:00 PM To 8:30 PM', 'Canceled', '2018-09-20', 12, 22),
(55, '2018-10-27', '8:00 PM To 8:30 PM', 'Canceled', '2018-09-20', 12, 22),
(56, '2018-09-30', '8:30 PM To 9:00 PM', 'Pending', '2018-09-20', 1, 22),
(57, '2018-08-11', '8:30 PM To 9:00 PM', 'Canceled', '2018-09-20', 12, 22);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `c_id` int(11) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `gmail` varchar(500) NOT NULL,
  `text` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`c_id`, `name`, `gmail`, `text`, `date`) VALUES
(28, 'merina', 'merina@gmail.com', 'i want to read more articles', '2018-09-18 21:46:36'),
(29, 'anika', 'anika@gmail.com', 'i want to know more', '2018-09-18 21:47:11'),
(30, 'anika', 'anika@gmail.com', 'i want to know more', '2018-09-18 21:47:45'),
(31, 'akira', 'akira@gmail.com', 'soman', '2018-09-18 21:57:21'),
(32, '$c_name', '$c_gmail', '$c_text', '2018-09-20 20:13:07'),
(33, 's', 'akira@gmail.com', 'sonam kapoore', '2018-09-20 20:14:16'),
(34, 's', 'akira@gmail.com', 'sonam kapoore', '2018-09-20 20:14:44'),
(35, 'qqq', 'akira@gmail.com', 'hm', '2018-09-20 20:14:57'),
(36, 'qqq', 'akira@gmail.com', 'hm', '2018-09-20 20:15:40'),
(37, 'qqq', 'akira@gmail.com', 'hm', '2018-09-20 20:16:41'),
(38, 'qqq', 'akira@gmail.com', 'hm', '2018-09-20 20:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `consulting_schedule`
--

CREATE TABLE `consulting_schedule` (
  `consulting_id` int(11) NOT NULL,
  `Day_Time1` text NOT NULL,
  `Day_Time2` text NOT NULL,
  `Day_Time3` text NOT NULL,
  `Day_Time4` text NOT NULL,
  `Day_Time5` text NOT NULL,
  `Day_Time6` text NOT NULL,
  `Day_Time7` text NOT NULL,
  `d_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `consulting_schedule`
--

INSERT INTO `consulting_schedule` (`consulting_id`, `Day_Time1`, `Day_Time2`, `Day_Time3`, `Day_Time4`, `Day_Time5`, `Day_Time6`, `Day_Time7`, `d_id`) VALUES
(33, 'Saturday 6:30 PM To 12:00 PMSaturday 12:30 AM To 5:30 AM', 'Sunday 6:30 PM To 12:00 PMSunday 12:30 AM To 5:30 AM', 'Monday 6:30 PM To 12:00 PMMonday 12:30 AM To 5:30 AM', 'Tuesday 6:30 PM To 12:00 PMTuesday 12:30 AM To 5:30 AM', 'Wednesday 6:30 PM To 12:00 PMWednesday 12:30 AM To 5:30 AM', 'Thursday 6:30 PM To 12:00 PMThursday 12:30 AM To 5:30 AM', 'Friday 6:30 PM To 12:00 PMFriday 12:30 AM To 5:30 AM', 1234017),
(34, 'Saturday 6:30 PM To 12:00 PMSaturday 12:30 AM To 5:30 AM', 'Sunday 6:30 PM To 12:00 PMSunday 12:30 AM To 5:30 AM', 'Monday 6:30 PM To 12:00 PMMonday 12:30 AM To 5:30 AM', 'Tuesday 6:30 PM To 12:00 PMTuesday 12:30 AM To 5:30 AM', 'Wednesday 6:30 PM To 12:00 PMWednesday 12:30 AM To 5:30 AM', 'Thursday 6:30 PM To 12:00 PMThursday 12:30 AM To 5:30 AM', 'Friday 6:30 PM To 12:00 PMFriday 12:30 AM To 5:30 AM', 1234018),
(35, 'Saturday 6:30 PM To 12:00 PMSaturday 12:30 AM To 5:30 AM', 'Sunday 6:30 PM To 12:00 PMSunday 12:30 AM To 5:30 AM', 'Monday 6:30 PM To 12:00 PMMonday 12:30 AM To 5:30 AM', 'Tuesday 6:30 PM To 12:00 PMTuesday 12:30 AM To 5:30 AM', 'Wednesday 6:30 PM To 12:00 PMWednesday 12:30 AM To 5:30 AM', 'Thursday 6:30 PM To 12:00 PMThursday 12:30 AM To 5:30 AM', 'Friday 6:30 PM To 12:00 PMFriday 12:30 AM To 5:30 AM', 1234019);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `f_name` varchar(500) NOT NULL,
  `l_name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `specialist` varchar(500) NOT NULL,
  `qualification` varchar(500) NOT NULL,
  `DOB` date NOT NULL,
  `gender` varchar(500) NOT NULL,
  `bmdc_reg_num` int(11) NOT NULL,
  `address` text NOT NULL,
  `pswd` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `permission` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `f_name`, `l_name`, `email`, `contact`, `specialist`, `qualification`, `DOB`, `gender`, `bmdc_reg_num`, `address`, `pswd`, `date`, `permission`) VALUES
(1, 'Dr. M. A.', 'Mannan', 'mannan@gmail.com', '880 2 9660015-19', 'medicine', 'MBBS, MRCP ( UK ) , ECFMG ( USA ) ,', '1968-10-10', 'male', 56867, 'Central Hospital Limited\r\nHouse # 2, Road # 5, Green Road, Dhanmondi, Dhaka – 1205', '123456789', '0000-00-00', ''),
(1234017, 'Dr. Mohammad', 'Enamul Haque', 'enamul@gmail.com', '01711911821', 'medicine', 'MBBS, DTCD, FCPS Associate Professor & Head of Department', '1965-08-26', 'male', 56766, 'The Medical Centre Location: House # 84, Road # 7/A, ShaMasjid Road Dhanmondi, Dhaka', '123456789', '2018-09-08', 'Approved'),
(1234018, 'Dr. Sohel Mahmud', 'Arafat', 'Arafat@gmail.com', '01717351631', 'medicine', 'MBBS, FCPS Associate Professor', '1966-06-23', 'male', 56767, 'Ibn Sina Diagnostic & Imaging Center Location: House # 48, Road # 9/A, Satmasjid Road', '123456789', '2018-09-08', 'Approved'),
(1234019, 'Dr. Muhammad Jahir', 'Uddin', 'Uddin@gmail.com', '01717351631', 'medicine', 'MBBS, FCPS ( Medicine ), MD ( Internal Medicine ), MACP ( USA ) Associate Professor', '1968-09-28', 'male', 56768, 'Ibn Sina Diagnostic & Imaging Center House # 48, Road # 9/A, Dhanmondi, SAtmasjid Road', '123456789', '2018-09-08', 'Approved'),
(1234020, 'Dr. Md. Abul Kalam ', 'Azad', 'Azad@gmail.com', '01729350383', 'medicine', 'MBBS, FCPS Associate Professor', '1969-09-29', 'male', 56769, 'Padma Diagnostic Center Ltd 245/2, New Circular Road, Malibagh, Dhaka, Bangladesh', '123456789', '2018-09-08', 'Approved'),
(1234021, 'Dr. Mohammad Hyder', 'Ali', 'Ali@gmail.com', '01715024100', 'medicine', 'MBBS, FCPS Associate Professor', '1970-09-01', 'male', 56770, 'City Hospital Ltd. 1/8, Block-E, Lalmatia, Satmosjid Road, Mohammadpur, Dhaka â€“ 1207, Bangladesh', '123456789', '2018-09-08', 'Approved'),
(1234022, 'Dr. Amit', 'Kapoor', 'Kapoor@gmail.com', '01728401661', 'Orthopedic', 'MBBS, MS (Ortho.), DNB (Ortho.),Consultant', '1970-09-02', 'male', 56771, 'Apolo Hospital,Location: Plot # 81, Block # E, Bashundhara R/A, Dhaka - 1229, Bangladesh', '123456789', '2018-09-08', 'Approved'),
(1234023, 'Dr. Abu Jafar', 'Chowdhury', 'Chowdhury@gmail.com', '01711701234', 'Orthopedic', 'MBBS, MS ( Ortho ),Assistant Professor', '1972-09-03', 'male', 56772, 'Chamber: Labaid Specialized Hospital Location: House # 6, Road # 4, Dhanmondi, Dhaka - 1205', '123456789', '2018-09-08', 'Approved'),
(1234024, 'Professor Dr. Kh. Abdul', 'Awal', 'Awal@gmail.com', '01711701234', 'Orthopedic', 'Qualification : MBBS, MS, FICS Designation: Professor & Director', '1973-09-08', 'male', 56772, 'Chamber: Green Life Medical College & Hospital Location: 32 Green Road ( Biruttom K. M Shafiullah Sarak ) , Dhanmondi,', '123456789', '2018-09-08', 'Approved'),
(1234026, 'Dr. Shyamal', 'Debnath', 'Debnath@gmail.com', '01711701234', 'Orthopedic', 'MBBS,.MS(Ortho) Designation : Associate Professor', '1977-09-15', 'male', 56778, 'Chamber: Green Life Hospital Limited Location: 25 A, Green Road, Dhanmondi Dhaka-1205', '123456789', '2018-09-08', 'Pending'),
(1234027, 'Dr. Maliha', 'Rashid', 'Rashid@gmail.com', '01711701234', 'gynecologist', 'MBBS, FCPS (Gynae & Obs) Professor of Obstetrics & Gynaecology and Academic Coordinator', '1980-09-02', 'female', 56773, 'Central Hospital Ltd. Chamber: Dhanmondi, Dhaka, Bangladesh', '123456789', '2018-09-08', 'Approved'),
(1234028, 'Dr. Nasima', 'Shaheen', 'Shaheen@gmail.com', '01711701234', 'gynecologist', 'MBBS, DGO, MCPS, FCPS Consultant', '1981-09-28', 'female', 56775, 'Square Hospital Limited Address: 18/F West, Bir Uttam Qazi, Nuruzzaman Road, Panthapath, Dhaka 1205, Bangladesh', '123456789', '2018-09-08', 'Approved'),
(1234029, 'Dr. Nasrin', 'Zulfiqar', 'Zulfiqar@gmail.com', '01711701234', 'gynecologist', 'MBBS, DGO, FCPS, Fellow Reproductive Medicine & Assisted Reproductive Techniques (KKIV, Singapore) Coordinator & Senior Consultant', '1982-09-24', 'female', 567780, 'Apollo Hospital, Dhaka Plot # 81, Block # E, Basudhara R/A, Dhaka â€“ 1229', '123456789', '2018-09-08', 'Approved'),
(1234030, 'Dr. Gulshan', 'Ara', 'Ara@gmail.com', '01711701234', 'gynecologist', 'MBBS,MCPS,  FCPS (BCPS), MS(Gynae&Obs.), Trained in Advanced Laparoscopic Surgery(India) Coordinator & Senior Consultant', '1983-09-10', 'female', 56781, 'Apollo Hospitals Dhaka Plot # 81, Block # E, Basudhara R/A, Dhaka â€“ 1229', '123456789', '2018-09-08', 'Pending'),
(1234031, 'Dr. Amreen Sadika', 'Sayeed', 'Sayeed@gmail.com', '01711701234', 'gynecologist', 'MBBS, DGO ( DU ) Consultant', '1983-09-23', 'female', 56782, 'Ibrahim General Hospital & DCEC â€“ Dhanmondi Location: House # 42, Road # 10/A, Dhanmondi R/A, Dhaka â€“ 1209, Bangladesh', '123456789', '2018-09-08', 'Pending'),
(1234032, 'Dr. Md. Abdullah', 'Khan', 'Khan@gmail.com', '01711701234', 'dentist', 'Qualification : BDS, PGT ( Japan ) Designation : Consultant', '1981-09-01', 'male', 56783, 'Chamber: Metropolitan Dental Location: Sel Green Center, 30, Green Road, Dhaka - 1205, Bangladesh', '123456789', '2018-09-08', 'Approved'),
(1234033, 'Dr. M. A.', 'Sikder', 'Sikder@gmail.com', '01711701234', 'dentist', 'Qualification : BDS, Ph.D ( Japan ) Designation : Consultant', '1983-09-28', 'male', 56785, 'Chamber: Smile Specialised Dental & Research Center Location: 12 Gaznabi Road, College Gate, Mohammadpur, Dhaka - 1207, Bangladesh', '123456789', '2018-09-08', 'Approved'),
(1234034, 'Dr. Mohammed Shafi', 'Ullah', 'Ullah@gmail.com', '01711701234', 'dentist', 'Qualification : MBBS, MS, BDS, MCPS, MDRA(USA) Designation : Associate Professor & Head of Department', '1983-09-21', 'male', 56786, 'Chamber: Islami Bank Central Hospital Location: 30, Anjuman Mafidul Islam Road, Kakrail , Dhaka-1000', '123456789', '2018-09-08', 'Approved'),
(1234035, ' Dr. Nurul', 'Amin', 'DrNurulAmin@gmail.com', '01711701234', 'dentist', 'Qualification : BDS, PhD ( Japan ) Designation : Associate Professor & Head, Department of Oral & Maxillofacial Surgery', '1983-09-29', 'male', 56787, 'Chamber: Smile Specialised Dental & Research Center Location: 75, Satmasjid Road, Dhanmondi R/A, Dhaka - 1209', '123456789', '2018-09-08', 'Pending'),
(1234036, 'Dr. Salahuddin ', 'Swapon', 'Swapon@gmail.com', '01711701234', 'dentist', 'Qualification : B.D.S, FCPS Designation : Assistant Professor & Head of Department ( CIDCH )', '1981-09-28', 'male', 56789, 'Chamber: Sudeen Dental Care Location: 20, Green Road, Rangs Taz tower, Dhanmondi, Dhaka - 1205', '123456789', '2018-09-08', 'Pending'),
(1234037, 'Dr. Golam Haider', 'Rasul', 'Rasul@gmail.com', '01711701234', 'cardiologist', 'FCPS, FRCS (Glasgow) Consultant', '1983-09-28', 'male', 56790, 'United Hospital Limited Plot #15,Road #71,Gulshan, Dhaka-1212, Bangladesh', '123456789', '2018-09-08', 'Approved'),
(1234038, 'Dr. Sajal Krishna', 'Banerjee', 'Banerjee@gmail.com', '01711701234', 'dentist', 'MBBS, MD (Cardiology), FACC, FESC Professor of Cardiology', '1983-09-28', 'male', 56791, 'Holding no-11, Popular Tower, Popular Diagnostic Center Limited, Shantinagar-Dhaka', '123456789', '2018-09-08', 'Approved'),
(1234039, 'Dr. Lutfor ', 'Rahman', 'Rahman@gmail.com', '01711701234', 'cardiologist', 'MBBS, MS (CTS) Chief Cardiac Surgeon, Labiad Cardiac Hospital', '1991-09-28', 'male', 56792, 'Labiad Cardiac Hospital House#1, Road # 4, Dhanmondi, Dhaka-1205', '123456789', '2018-09-08', 'Approved'),
(1234040, 'Dr. Fazlur', 'Rahman', 'DrFazlurRahman@gmail.com', '01711701234', 'cardiologist', 'MBBS, MCPS ( Medicine ), Dcard, MD ( Card ) Cardiology /Heart Specialist', '1983-09-22', 'male', 56793, 'hamber: Anwer Khan Modern Hospital Ltd. House # 17, Road # 8, Dhanmondi, Dhaka â€“ 1205, Bangladesh', '123456789', '2018-09-08', 'Approved'),
(1234041, 'Dr. Md. Abdul Kader', 'Mollah', 'Mollah@gmail.com', '01711701234', 'cardiologist', 'MBBS, FCPS ( Medicine ) , MD ( Cardiology ) Professor', '1983-09-28', 'male', 56795, 'Labaid Specialized Hospital House # 6, Road # 4, Dhanmondi, Dhaka â€“ 1205', '123456789', '2018-09-08', 'Approved'),
(1234042, 'Dr. Md. Abu', 'Siddique', 'Abu@gmail.com', '01711701234', 'cardiologist', 'MBBS, FPGCS ( Medicine ) , PhD ( Cardiology ) Cardiology /Heart Specialist Professor', '1983-09-28', 'male', 56796, 'Chamber: Popular Diagnostic Centre House # 16, Road # 2, Dhanmondi R/A, Dhaka â€“ 1205', '123456789', '2018-09-08', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `doc_message`
--

CREATE TABLE `doc_message` (
  `m_d_id` int(11) NOT NULL,
  `d_text` text NOT NULL,
  `u_text` text NOT NULL,
  `pid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `text` text NOT NULL,
  `d_text` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `pid`, `sid`, `text`, `d_text`, `date`) VALUES
(1, 12, 22, 'hello', 'gcngc', '2018-09-18 22:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `s_id` int(11) NOT NULL,
  `Day_Time1` varchar(500) NOT NULL,
  `Day_Time2` varchar(500) NOT NULL,
  `Day_Time3` varchar(500) NOT NULL,
  `Day_Time4` varchar(500) NOT NULL,
  `Day_Time5` varchar(5000) NOT NULL,
  `Day_Time6` varchar(5000) NOT NULL,
  `Day_Time7` varchar(5000) NOT NULL,
  `d_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`s_id`, `Day_Time1`, `Day_Time2`, `Day_Time3`, `Day_Time4`, `Day_Time5`, `Day_Time6`, `Day_Time7`, `d_id`) VALUES
(22, 'Saturday 6:00 AM To 12:00 AM', '', '', '', '', '', '', 1234017),
(23, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234018),
(24, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234019),
(25, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234022),
(26, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234023),
(27, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234024),
(28, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234027),
(29, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234028),
(30, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234029),
(31, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234032),
(32, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234033),
(33, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234034),
(34, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234037),
(35, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234038),
(36, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234039),
(37, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1234040);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_sender_name` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `parent_comment_id`, `comment`, `comment_sender_name`, `date`) VALUES
(5, 0, 'very nice', 'monika@gmail.com', '2018-09-07 18:08:06'),
(6, 0, 'good one', 'anika@gmail.com', '2018-09-07 18:08:40'),
(7, 0, 'nice', 'rabby@gmail.com', '2018-09-07 18:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `f_name` varchar(500) NOT NULL,
  `l_name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `address` text NOT NULL,
  `DOB` date NOT NULL,
  `gender` varchar(500) NOT NULL,
  `maritialstatus` varchar(500) NOT NULL,
  `pswd` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `f_name`, `l_name`, `email`, `contact`, `address`, `DOB`, `gender`, `maritialstatus`, `pswd`, `date`) VALUES
(1, 'anika', 'tabassum', 'anika@gmail.com', '01867785022', 'dhanmondi', '1995-12-08', 'female', 'single', '0123456789', '0000-00-00'),
(6, 'nusrat', 'ivy', 'ivy@gmail.com', '01867785022', 'mirpur', '1995-08-18', 'female', 'single', '123456789', '2018-08-03'),
(7, 'onika', 'hossain', 'onika@gmail.com', '01867785022', 'null', '1995-08-26', 'female', 'single', '123456789', '2018-08-03'),
(8, 'rabby', 'shaon', 'rabby@gmail.com', '1', 'null', '1995-08-25', 'male', 'single', '123456789', '2018-08-06'),
(12, 'monika', 'monika', 'merina@gmail.com', '01711701234', 'moghbazar', '1996-04-04', 'female', '', '123456789', '0000-00-00'),
(13, 'Sharmin', 'Prysly', 'sharmin@gmail.com', '01711701212', '', '1996-04-04', 'female', '', '123456789', '0000-00-00'),
(14, 'Niamul', 'kabir', 'niamul@gmail.com', '01711701212', '', '1995-09-13', 'male', '', '123456789', '0000-00-00'),
(15, 'Sudipto', 'Majumdar', 'sudipto@gmail.com', '01711701212', '', '1995-08-28', 'male', '', '123456789', '0000-00-00'),
(16, 'Sohanur', 'Rahman', 'sohan@gmail.com', '01711701212', '', '1995-09-01', 'male', '', '123456789', '0000-00-00'),
(17, 'Nishat', 'tasnim', 'nishat@gmail.com', '01711701212', '', '1996-09-14', 'female', '', '123456789', '0000-00-00'),
(18, 'Jinia', 'Islam', 'jinia@gmail.com', '01711701212', '', '1996-09-07', 'female', '', '123456789', '0000-00-00'),
(19, 'Rupa', 'Ahmed', 'rupa@gmail.com', '01711701212', '', '1996-07-06', 'female', '', '123456789', '0000-00-00'),
(20, 'juena', 'akhter', 'juena@gmail.com', '01711701212', '', '1996-06-07', 'female', '', '123456789', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`app_id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `consulting_schedule`
--
ALTER TABLE `consulting_schedule`
  ADD PRIMARY KEY (`consulting_id`),
  ADD KEY `d_id` (`d_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc_message`
--
ALTER TABLE `doc_message`
  ADD PRIMARY KEY (`m_d_id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `d_id` (`d_id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `consulting_schedule`
--
ALTER TABLE `consulting_schedule`
  MODIFY `consulting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1234044;
--
-- AUTO_INCREMENT for table `doc_message`
--
ALTER TABLE `doc_message`
  MODIFY `m_d_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `schedule` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `consulting_schedule`
--
ALTER TABLE `consulting_schedule`
  ADD CONSTRAINT `consulting_schedule_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doc_message`
--
ALTER TABLE `doc_message`
  ADD CONSTRAINT `doc_message_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `schedule` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doc_message_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `schedule` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
