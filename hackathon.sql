-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: hackathon.cjiw8s8d9hut.ap-south-1.rds.amazonaws.com:3306
-- Generation Time: Mar 13, 2018 at 09:21 AM
-- Server version: 5.6.39-log
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackathon`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`milind`@`%` PROCEDURE `REGISTER_REPRESENTATIVE` (IN `INDEX_NUM` VARCHAR(20))  MODIFIES SQL DATA
INSERT INTO School_Registration Values('xyz',INDEX_NUM,'aDDR','ahmedabad','abcqr',9999999999,9999999999,'gseb','URBAN')$$

CREATE DEFINER=`milind`@`%` PROCEDURE `REPRESENTATIVE` (IN `IND_NUM` VARCHAR(20))  NO SQL
INSERT INTO School_Representative VALUES(IND_NUM,'QQQQ','ABC@ABC','PSWD@123',9999999989)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Authority_Index`
--

CREATE TABLE `Authority_Index` (
  `Index_No` varchar(20) NOT NULL,
  `Authority_Name` varchar(100) NOT NULL,
  `Email ID` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Authority_Index`
--

INSERT INTO `Authority_Index` (`Index_No`, `Authority_Name`, `Email ID`, `Password`) VALUES
('KUT001', 'Rajni Ramolia', 'rajni@yahoo.com', '902fbdd2b1df0c4f70b4a5d23525e932'),
('RAJ001', 'Rajhans Raikundal', 'rajhans@yahoo.com', '4a429e0b8871ec788a3a171545d959e8'),
('SUR001', 'Kajal Patel', 'Kajal@yahoo.com', '99be496ab9ad1cd2b9910cecf142235a');

-- --------------------------------------------------------

--
-- Table structure for table `Credit_Mapping`
--

CREATE TABLE `Credit_Mapping` (
  `Tier` int(1) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Rank` int(11) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `Credit_Points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Credit_Mapping`
--

INSERT INTO `Credit_Mapping` (`Tier`, `Type`, `Rank`, `Category`, `Credit_Points`) VALUES
(1, 'Academic', 1, 'District', 15),
(1, 'Academic', 1, 'Interschool', 9),
(1, 'Academic', 1, 'National', 60),
(1, 'Academic', 1, 'State', 30),
(1, 'Academic', 2, 'District', 12),
(1, 'Academic', 2, 'Interschool', 7),
(1, 'Academic', 2, 'National', 50),
(1, 'Academic', 2, 'State', 25),
(1, 'Academic', 3, 'District', 10),
(1, 'Academic', 3, 'Interschool', 5),
(1, 'Academic', 3, 'National', 40),
(1, 'Academic', 3, 'State', 20),
(1, 'Cultural', 1, 'District', 15),
(1, 'Cultural', 1, 'Interschool', 9),
(1, 'Cultural', 1, 'National', 60),
(1, 'Cultural', 1, 'State', 30),
(1, 'Cultural', 2, 'District', 12),
(1, 'Cultural', 2, 'Interschool', 7),
(1, 'Cultural', 2, 'National', 50),
(1, 'Cultural', 2, 'State', 25),
(1, 'Cultural', 3, 'District', 10),
(1, 'Cultural', 3, 'Interschool', 5),
(1, 'Cultural', 3, 'National', 40),
(1, 'Cultural', 3, 'State', 20),
(1, 'Sports', 1, 'District', 13),
(1, 'Sports', 1, 'Interschool', 8),
(1, 'Sports', 1, 'National', 60),
(1, 'Sports', 1, 'State', 25),
(1, 'Sports', 2, 'District', 11),
(1, 'Sports', 2, 'Interschool', 6),
(1, 'Sports', 2, 'National', 50),
(1, 'Sports', 2, 'State', 22),
(1, 'Sports', 3, 'District', 9),
(1, 'Sports', 3, 'Interschool', 4),
(1, 'Sports', 3, 'National', 40),
(1, 'Sports', 3, 'State', 18),
(1, 'Sports', 4, 'National', 35),
(1, 'Sports', 4, 'State', 15),
(2, 'Academic', 1, 'District', 13),
(2, 'Academic', 1, 'Interschool', 8),
(2, 'Academic', 1, 'National', 60),
(2, 'Academic', 1, 'State', 27),
(2, 'Academic', 2, 'District', 11),
(2, 'Academic', 2, 'Interschool', 5),
(2, 'Academic', 2, 'National', 50),
(2, 'Academic', 2, 'State', 24),
(2, 'Academic', 3, 'District', 9),
(2, 'Academic', 3, 'Interschool', 3),
(2, 'Academic', 3, 'National', 40),
(2, 'Academic', 3, 'State', 20),
(2, 'Cultural', 1, 'District', 13),
(2, 'Cultural', 1, 'Interschool', 8),
(2, 'Cultural', 1, 'National', 60),
(2, 'Cultural', 1, 'State', 27),
(2, 'Cultural', 2, 'District', 11),
(2, 'Cultural', 2, 'Interschool', 5),
(2, 'Cultural', 2, 'National', 50),
(2, 'Cultural', 2, 'State', 24),
(2, 'Cultural', 3, 'District', 9),
(2, 'Cultural', 3, 'Interschool', 3),
(2, 'Cultural', 3, 'National', 40),
(2, 'Cultural', 3, 'State', 20),
(2, 'Sports', 1, 'District', 12),
(2, 'Sports', 1, 'Interschool', 6),
(2, 'Sports', 1, 'National', 60),
(2, 'Sports', 1, 'State', 25),
(2, 'Sports', 2, 'District', 9),
(2, 'Sports', 2, 'Interschool', 4),
(2, 'Sports', 2, 'National', 50),
(2, 'Sports', 2, 'State', 22),
(2, 'Sports', 3, 'District', 7),
(2, 'Sports', 3, 'Interschool', 2),
(2, 'Sports', 3, 'National', 40),
(2, 'Sports', 3, 'State', 18),
(2, 'Sports', 4, 'National', 30),
(2, 'Sports', 4, 'State', 15);

-- --------------------------------------------------------

--
-- Table structure for table `Extra_Cur`
--

CREATE TABLE `Extra_Cur` (
  `Index_No` varchar(20) NOT NULL,
  `Gr_No` varchar(20) NOT NULL,
  `Standard` int(11) NOT NULL,
  `Certi_Description` varchar(100) NOT NULL,
  `Rank` int(11) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Extra_Cur`
--

INSERT INTO `Extra_Cur` (`Index_No`, `Gr_No`, `Standard`, `Certi_Description`, `Rank`, `Category`, `Type`, `Link`) VALUES
('GJ01CU', '001', 5, 'Basketball', 2, 'District', 'Sports', ''),
('GJ01CU', '001', 5, 'music', 2, 'Interschool', 'Cultural', ''),
('GJ01CU', '002', 6, 'Cricket', 2, 'State', 'Sports', ''),
('GJ01CU', '002', 6, 'dance', 3, 'District', 'Cultural', ''),
('GJ01CU', '003', 7, 'rangoli', 1, 'National', 'Cultural', ''),
('GJ01CU', '003', 7, 'Tennis', 3, 'National', 'Sports', ''),
('GJ01CU', '011', 2, 'abx', 1, 'State', 'Sports', 'https://s3.ap-south-1.amazonaws.com/hackathoncertibucket/uploads/b495de0d1a3f2e2f71b0f70843a3250'),
('GJ01CU', '011', 2, 'asd', 2, 'State', 'Sports', 'https://s3.ap-south-1.amazonaws.com/hackathoncertibucket/uploads/3efc87cff80c1f5f565a9796f4c806c'),
('GJ01CU', '011', 2, 'blah', 1, 'State', 'Sports', 'https://s3.ap-south-1.amazonaws.com/hackathoncertibucket/uploads/0c9f6bd1ec961e9068c0262e468bc73'),
('GJ01CU', '011', 2, 'mii', 1, 'State', 'Cultural', 'https://s3.ap-south-1.amazonaws.com/hackathoncertibucket/uploads/e3752be0a749140b3d6180c0c051033'),
('GJ01UD', '001', 3, 'Story Telling', 1, 'Interschool', 'Academic', ''),
('GJ05SX', '001', 5, 'Baketball', 2, 'District', 'Sports', ''),
('GJ05SX', '004', 6, 'Cyber Olympiad', 4, 'State', 'Academic', ''),
('GJ05SX', '025', 5, 'NSTSE', 4, 'District', 'Academic', ''),
('GJ06BS', '001', 5, 'dance', 1, 'Interschool', 'Cultural', ''),
('GJ06BS', '001', 5, 'Tennis', 1, 'District', 'Sports', ''),
('GJ06BS', '001', 6, 'Math Olympiad', 1, 'State', 'Academic', ''),
('GJ06BS', '002', 6, 'Basketball', 1, 'State', 'Sports', ''),
('GJ06BS', '002', 6, 'music', 2, 'District', 'Cultural', ''),
('GJ06BS', '003', 5, 'Science Quizzer', 2, 'Interschool', 'Academic', ''),
('GJ06BS', '003', 7, 'choir', 3, 'State', 'Cultural', ''),
('GJ06BS', '003', 7, 'Tennis', 1, 'National', 'Sports', ''),
('GJ06BS', '004', 8, 'Basketball', 3, 'Interschool', 'Sports', ''),
('GJ07MC', '001', 2, 'Math olympiad', 1, 'State', 'Academic', ''),
('GJ07MC', '001', 5, 'Cricket', 3, 'District', 'Sports', ''),
('GJ07MC', '002', 6, 'Cricket', 3, 'State', 'Sports', ''),
('GJ07MC', '002', 6, 'Singing', 1, 'District', 'Academic', ''),
('GJ07MC', '003', 6, 'Science olympiad', 4, 'State', 'Academic', '');

-- --------------------------------------------------------

--
-- Table structure for table `School_Index`
--

CREATE TABLE `School_Index` (
  `Index_No` varchar(20) NOT NULL,
  `School_Name` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `School_Index`
--

INSERT INTO `School_Index` (`Index_No`, `School_Name`, `Password`) VALUES
('GJ00BQ', 'XYZ SCHOOL', 'PSWD@123'),
('GJ00BX', '', 'PSWD@123'),
('GJ01CU', 'C.U. SHAH', 'CU123'),
('GJ01UD', 'UDGAM SCHOOL', 'UDGAM123'),
('GJ05SX', 'ST. XAVIERS', 'XAVIERS123'),
('GJ06BS', 'BRIGHTDAY SCHOOL', 'BRIGHT123'),
('GJ07MC', 'MOTHERCARE SCHOOL', 'MOTHER123');

-- --------------------------------------------------------

--
-- Table structure for table `School_Registration`
--

CREATE TABLE `School_Registration` (
  `School_Name` varchar(100) NOT NULL,
  `Index_No` varchar(20) NOT NULL,
  `School_Address` varchar(50) NOT NULL,
  `District` varchar(20) NOT NULL,
  `Email_Id` varchar(20) NOT NULL,
  `Phone_No` bigint(20) NOT NULL,
  `School_Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `School_Registration`
--

INSERT INTO `School_Registration` (`School_Name`, `Index_No`, `School_Address`, `District`, `Email_Id`, `Phone_No`, `School_Type`) VALUES
('C.U. SHAH', 'GJ01CU', '1, Ashram Road, Incometax circle', 'AHMEDABAD', 'CU@GMAIL.COM', 266123456, 'URBAN'),
('UDGAM SCHOOL', 'GJ01UD', 'Opp. Sardar Patel Institute, Thaltej', 'AHMEDABAD', ' info@udgams.com', 26623478, 'URBAN'),
('ST. XAVIERS', 'GJ05SX', '2, Ashram Road, JADESHWAR CROSSROADS', 'SURAT', ' info@XAVIERS.com', 26623450, 'RURAL'),
('BRIGHTDAY SCHOOL', 'GJ06BS', ' Vasna-Bhaili Road, Vadodara', 'VADODARA', 'BS@GMAIL.COM', 12398564, 'URBAN'),
('MOTHERCARE SCHOOL', 'GJ07MC', 'Opp.Shivam Petroleum, Nadiad-Utd.Road', 'KHEDA', 'MS@GMAIL.COM', 21030100, 'RURAL');

-- --------------------------------------------------------

--
-- Table structure for table `School_Representative`
--

CREATE TABLE `School_Representative` (
  `Index_No` varchar(20) NOT NULL,
  `R_Name` varchar(50) NOT NULL,
  `R_Email` varchar(50) NOT NULL,
  `R_Password` varchar(50) NOT NULL,
  `Mobile_No` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `School_Representative`
--

INSERT INTO `School_Representative` (`Index_No`, `R_Name`, `R_Email`, `R_Password`, `Mobile_No`) VALUES
('GJ01CU', 'Himanshu', 'himanshu1324@gmail.com', '514b0024591fa5b6cfdc24199ba10ef3', 9328412425),
('GJ01UD', 'Kush', 'kush1003@gmail.com', '8bb33820028dc9ed18e76e9a0a62fabe', 7600566100),
('GJ05SX', 'Smit', 'smit1404@gmail.com', 'e69a59fc3b9cf146b0080afaebce07aa', 7622556610),
('GJ06BS', 'Reema', 'reema@gmail.com', '154b680259ea7f9f1a2edc24a7ba5397', 9875231254),
('GJ07MC', 'Ishant', 'ishant@hotmail.com', '2607accc6adefc977a990dc3368890fc', 9875210348);

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `Gr_No` varchar(20) NOT NULL,
  `Aadhar_No` bigint(20) NOT NULL,
  `Index_No` varchar(20) NOT NULL,
  `Student_Name` varchar(100) NOT NULL,
  `Father_Name` varchar(100) NOT NULL,
  `Mother_Name` varchar(100) NOT NULL,
  `Contact_No` bigint(20) NOT NULL,
  `Email_Id` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Standard` int(11) NOT NULL,
  `Percentage` double NOT NULL,
  `C_Percentage` double NOT NULL,
  `Ext_Academics` bigint(20) NOT NULL,
  `C_Ext_Academics` bigint(20) NOT NULL,
  `Ext_Sports` bigint(20) NOT NULL,
  `C_Ext_Sports` bigint(20) NOT NULL,
  `Ext_Cultural` bigint(20) NOT NULL,
  `C_Ext_Cultural` bigint(20) NOT NULL,
  `Combined_Credit` double NOT NULL,
  `Status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Student`
--

INSERT INTO `Student` (`Gr_No`, `Aadhar_No`, `Index_No`, `Student_Name`, `Father_Name`, `Mother_Name`, `Contact_No`, `Email_Id`, `DOB`, `Gender`, `Standard`, `Percentage`, `C_Percentage`, `Ext_Academics`, `C_Ext_Academics`, `Ext_Sports`, `C_Ext_Sports`, `Ext_Cultural`, `C_Ext_Cultural`, `Combined_Credit`, `Status`) VALUES
('001', 847210256682, 'GJ01CU', 'Amoli Vora', 'Kamal', 'Neelam', 9524358122, 'kamal432@gmail.com', '2017-09-13', 'Female', 5, 98.3, 98.3, 25, 0, 0, 0, 15, 0, 0, ''),
('001', 123456789011, 'GJ01UD', 'Keval Shah', 'Nilesh', 'Reshma', 9408246492, 'keval@gmail.com', '2017-04-01', 'Male', 5, 0, 96.2, 0, 0, 0, 0, 0, 0, 96.2, ''),
('001', 123698745201, 'GJ06BS', 'Reema Mehta', 'Krinal', 'Kinjal', 9875231254, 'reema@gmail.com', '2017-09-13', 'Female', 6, 0, 67, 0, 57, 0, 0, 0, 0, 124, ''),
('001', 945203147896, 'GJ07MC', 'Ishant Pande', 'Suresh', 'Sunidhi', 9875210348, 'ishant@hotmail.com', '2017-10-30', 'Male', 5, 75, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('002', 847210257682, 'GJ01CU', 'Helee Parekh', 'Hemant', 'Shweta', 9114358122, 'hemant1002@gmail.com', '2017-10-03', 'Female', 6, 0, 82.4, 0, 0, 0, 0, 0, 0, 82.4, ''),
('002', 123456789123, 'GJ01UD', 'Milind Parvatia', 'Shailesh ', 'Daksha', 7600123789, 'milind@gmail.com', '2017-09-01', 'Male', 6, 0, 78.56, 0, 0, 0, 0, 0, 0, 78.56, ''),
('002', 247612342012, 'GJ05SX', 'Hemal Arora', 'Dharm', 'Jayaba', 7948232542, 'hemal@yahoo.com', '2017-08-17', 'Male', 6, 0, 61.24, 0, 0, 0, 0, 0, 0, 61.24, ''),
('002', 123698745101, 'GJ06BS', 'Reem Mehta', 'Rinal', 'Kinjal', 9870231254, 'reem@gmail.com', '2017-09-03', 'Male', 6, 27, 0, 0, 0, 0, 0, 0, 0, 0, 'Fail'),
('002', 945204147896, 'GJ07MC', 'Ishan Pande', 'Suraish', 'Suneedhi', 9845210348, 'ishan@hotmail.com', '2017-11-30', 'Male', 7, 34.9, 0, 28, 0, 22, 0, 0, 0, 0, 'Fail'),
('003', 805812341112, 'GJ01CU', 'Kunal Shah', 'Rajesh', 'Sonal', 9408880344, 'kunal@gmail.com', '2017-08-25', 'Male', 7, 0, 67.98, 0, 0, 0, 0, 0, 0, 67.98, ''),
('003', 123456987321, 'GJ01UD', 'Harsh Shah ', 'Rajnikanth', 'Sunita', 9879871234, 'hrs@gmail.com', '2017-10-23', 'Male', 7, 0, 86.7, 0, 0, 3, 0, 0, 0, 86.7, ''),
('003', 245612342112, 'GJ05SX', 'Hemanshi Maliha', 'Ramesh', 'Jayati', 7948230514, 'hemanshi@yahoo.com', '2017-09-27', 'Female', 7, 21.24, 0, 0, 0, 0, 0, 0, 0, 0, 'Fail'),
('003', 123698745205, 'GJ06BS', 'Ria Mehta', 'Kripal', 'Kripa', 9815231254, 'ria@gmail.com', '2017-07-13', 'Female', 9, 0, 87, 0, 0, 0, 0, 0, 0, 87, ''),
('003', 945203147596, 'GJ07MC', 'Ishant Pandey', 'Suresh', 'Suneedhi', 9875210378, 'ishant1@hotmail.com', '2017-10-31', 'Male', 8, 45, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('004', 256341524154, 'GJ01CU', 'Kamlesh', 'Suresh', 'Suri', 542152561, 'kamlesh@yahoo.com', '2017-10-04', 'Male', 8, 0, 56, 0, 0, 0, 0, 0, 0, 56, ''),
('004', 456132789156, 'GJ01UD', 'Trushik', 'Kamal', 'Shrinal', 1234578960, 'trushik@gmail.com', '2018-03-01', 'Male', 8, 0, 92.2, 12, 0, 12, 0, 0, 0, 92.2, ''),
('004', 245612342212, 'GJ05SX', 'Hemant Trivedi', 'Haresh', 'Jinal', 7948232517, 'hemant@yahoo.com', '2017-05-27', 'Male', 4, 0, 91.24, 0, 8, 0, 0, 0, 0, 99.24, ''),
('004', 143698745201, 'GJ06BS', 'Seema Mehta', 'Vrunal', 'Bijal', 9875231254, 'seema@gmail.com', '2017-01-13', 'Female', 4, 77, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('004', 945203147396, 'GJ07MC', 'Ishan Pandey', 'Suraish', 'Sunidhi', 9875210348, 'ishan1@hotmail.com', '2017-01-30', 'Male', 4, 15, 0, 0, 0, 0, 0, 0, 0, 0, 'Fail'),
('005', 756412345781, 'GJ01CU', 'Kamla', 'Kamlesh', 'Harima', 215425361, 'kamla@gmail.com', '2018-03-07', 'Female', 4, 32, 0, 0, 0, 0, 0, 0, 0, 0, 'Fail'),
('005', 1201302402, 'GJ01UD', 'Ravi', 'Harish', 'Mona', 2010302430, 'ravi2@gmail.com', '2016-07-12', 'Male', 3, 0, 89, 0, 0, 0, 0, 0, 0, 89, ''),
('005', 965696569656, 'GJ05SX', 'Farhan', 'Ahmed', 'Zoya', 2301450210, 'farhan@gmail.com', '2016-07-12', 'Male', 3, 98, 0, 23, 0, 0, 0, 0, 0, 0, 'Pass'),
('005', 896320147852, 'GJ06BS', 'Rancho', 'Shyamdas', 'Sati', 9165432058, 'rancho@gmail.com', '2016-07-12', 'Male', 3, 78, 0, 66, 0, 32, 0, 0, 0, 0, 'Pass'),
('005', 541236541236, 'GJ07MC', 'Manilal Upadhyay', 'Harish', 'Harima', 8523657456, 'mani@google.com', '2017-10-23', 'Male', 3, 21.01, 0, 0, 0, 0, 0, 34, 0, 0, 'Fail'),
('006', 753951462853, 'GJ01CU', 'Ben', 'Ross', 'Rachel', 1289567423, 'ben@yahoo.com', '2018-03-29', 'Male', 2, 0, 69, 0, 0, 30, 0, 0, 0, 69, ''),
('006', 201050409310, 'GJ01UD', 'Ravish', 'Hari', 'Monica', 2048963012, 'ravish@yahoo.com', '2017-12-15', 'Male', 5, 21, 0, 0, 0, 0, 0, 0, 0, 0, 'Fail'),
('006', 745474547454, 'GJ05SX', 'Ahmed', 'Zaheer', 'Naseen', 3621021021, 'ahmed@yahoo.com', '2018-03-04', 'Male', 7, 45, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('006', 76465813285, 'GJ06BS', 'Hafeez', 'Salman', 'Salma', 9870258109, 'hafeez@yahoo.com', '2018-03-04', 'Male', 8, 88, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('007', 123741852963, 'GJ01CU', 'Monish', 'Keval', 'Sumta', 8524561263, 'moni@gmail.com', '2018-03-26', 'Male', 4, 0, 87, 22, 0, 0, 0, 0, 93, 273, ''),
('007', 743050604231, 'GJ01UD', 'Binoy', 'Rakesh', 'Sonal', 7301891302, 'bino@gmail.com', '2016-07-12', 'Male', 5, 0, 67, 0, 0, 0, 0, 0, 0, 67, ''),
('007', 90909090987, 'GJ05SX', 'Rohit', 'Suresh', 'Malvi', 8546082825, 'rohit@yahoo.com', '2016-07-12', 'Male', 7, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Fail'),
('007', 202303101404, 'GJ06BS', 'Kamla', 'Kamlesh', 'Komal', 6153204899, 'kamla@yahoo.com', '2016-07-12', 'Female', 8, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Fail'),
('008', 852129456347, 'GJ01CU', 'Harsha', 'Rajni', 'Kamla', 1470230561, 'harsha@yahoo.com', '2018-03-08', 'Female', 2, 29, 0, 0, 0, 0, 0, 0, 0, 0, 'Fail'),
('008', 301204789652, 'GJ01UD', 'Isha', 'Ishan', 'Ishita', 213652, 'ishi@gmail.com', '2018-03-04', 'Female', 6, 0, 54, 0, 0, 0, 0, 0, 0, 54, ''),
('008', 316497852032, 'GJ05SX', 'Shikhar', 'Harsh', 'Mansi', 364125789, 'shikhar@yahoo.com', '2018-03-04', 'Male', 6, 93, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('008', 907060301050, 'GJ06BS', 'Priya', 'Ganesh', 'Paro', 4525256312, 'priya@yahoo.com', '2018-03-04', 'Female', 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 'Fail'),
('009', 147123446759, 'GJ01CU', 'Josh', 'Kamp', 'Jenny', 7419517530, 'josh@gmail.com', '2018-03-27', 'Male', 7, 0, 5.7066666666667, 0, 0, 0, 0, 0, 0, 0, ''),
('009', 201343253233, 'GJ01UD', 'Kunj', 'Kunjan', 'Gunjan', 1000320456, 'kunj@gmail.com', '2016-07-12', 'Male', 4, 19, 0, 0, 0, 0, 0, 0, 0, 0, 'Fail'),
('009', 859674125896, 'GJ05SX', 'Mansi', 'Kuntal', 'Krinna', 2013040605, 'mansi@yahoo.com', '2016-07-12', 'Female', 6, 89, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('009', 937164825013, 'GJ06BS', 'Rekha', 'Amit', 'Sridevi', 9135482010, 'rekha@yahoo.com', '2016-07-12', 'Female', 7, 77, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('010', 174852456951, 'GJ01CU', 'Hardik', 'Bhuvan', 'Bhoomi', 8546791230, 'hardik@yahoo.com', '2018-03-08', 'Male', 2, 0, 45, 0, 0, 0, 0, 0, 0, 45, ''),
('010', 252525252525, 'GJ01UD', 'Krupal', 'Krunal', 'Krina', 88889999002, 'krupal@yahoo.com', '2018-03-04', 'Male', 6, 0, 97, 41, 0, 29, 0, 0, 0, 97, ''),
('010', 853102644587, 'GJ05SX', 'Jainam', 'Abdul', 'Chutki', 9832014569, 'jainam@yahoo.com', '2018-03-04', 'Male', 7, 19, 0, 0, 0, 0, 0, 0, 0, 0, 'Fail'),
('010', 123526478920, 'GJ06BS', 'Harmik', 'Hoster', 'Krina', 9408880312, 'harmik!gmail.com', '2018-03-20', 'Male', 7, 89, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('011', 746654020123, 'GJ01CU', 'Dhamo', 'Shailesh', 'Princy', 9513574682, 'dhamo@gmail.com', '2018-03-07', 'Male', 2, 0, 90, 289, 0, 668, 0, 164, 0, 90, ''),
('011', 120120345698, 'GJ01UD', 'Harshita', 'Harshit', 'Mona', 6363639801, 'harshita@gmail.com', '2016-07-12', 'Female', 4, 30, 0, 0, 0, 0, 0, 0, 0, 0, 'Fail'),
('011', 123526478940, 'GJ05SX', 'dharmit', 'doster', 'deprina', 8408880412, 'dharmitgmail.com', '2014-03-20', 'Male', 1, 82, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('011', 123526478921, 'GJ06BS', 'Karma', 'Kamlesh', 'Gilly', 9789125430, 'karma@gmail.com', '2018-03-18', 'Male', 8, 97, 0, 30, 0, 23, 0, 0, 0, 0, 'Pass'),
('012', 858585859647, 'GJ01UD', 'Ray', 'Kunal', 'Medhavi', 9865742102, 'ray@gmail.com', '2018-03-04', 'Female', 6, 0, 98.97, 40, 0, 8, 0, 25, 0, 98.97, ''),
('012', 123526478941, 'GJ05SX', 'dharmat', 'dhamlet', 'dilty', 9789125461, 'dhatma@gmail.com', '2018-07-18', 'Male', 1, 63, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('012', 123526478922, 'GJ06BS', 'Harmit', 'Hostes', 'Krinal', 9408880302, 'harmit@gmail.com', '2008-03-20', 'Male', 8, 79, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('013', 123526478950, 'GJ01UD', 'dharmi', 'dister', 'deprita', 8408780412, 'dharmigmail.com', '2014-03-20', 'Female', 1, 89.23, 0, 22, 0, 0, 0, 0, 0, 0, 'Pass'),
('013', 123526478942, 'GJ05SX', 'sharmit', 'rosan', 'roshni', 498881412, 'sharmitgmail.com', '2015-03-20', 'Male', 1, 29.2, 0, 0, 0, 0, 0, 0, 0, 0, 'Fail'),
('013', 123526478929, 'GJ06BS', 'Karmal', 'Kamal', 'Gilly', 9789125439, 'kara@gmail.com', '2018-03-18', 'Male', 7, 67, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('014', 123526478951, 'GJ01UD', 'dharmang', 'dhaman', 'dily', 9729125461, 'dharmang@gmail.com', '2018-09-18', 'Male', 1, 31.5, 0, 0, 0, 19, 0, 0, 0, 0, 'Fail'),
('014', 123526478943, 'GJ05SX', 'arman', 'aman', 'nilly', 9709225470, 'amarma@gmail.com', '2018-03-18', 'Male', 1, 70.6, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('014', 123526478925, 'GJ06BS', 'armik', 'oster', 'rina', 408880312, 'armik!gmail.com', '2015-03-20', 'Male', 7, 59, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('015', 123526478952, 'GJ01UD', 'sharmila', 'rosan', 'roshni', 498881432, 'sharmilagmail.com', '2015-03-20', 'Female', 1, 59.2, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('015', 123526478944, 'GJ05SX', 'marmik', 'moster', 'sakrina', 402480312, 'marmik!gmail.com', '2015-03-20', 'Male', 1, 49.2, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('015', 123526478926, 'GJ06BS', 'arma', 'amlesh', 'illy', 9789125470, 'arma@gmail.com', '2018-03-18', 'Male', 8, 71, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('016', 123526478953, 'GJ01UD', 'armani', 'aman', 'nilly', 9609225470, 'armani@gmail.com', '2018-03-18', 'Female', 1, 78.6, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('016', 123526478945, 'GJ05SX', 'jharmal', 'jhamlesh', 'jilly', 9789125070, 'jharmal@gmail.com', '2018-03-18', 'Male', 1, 81.5, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('016', 123526478930, 'GJ06BS', 'dharmik', 'loster', 'prina', 8408880312, 'dharmik!gmail.com', '2014-03-20', 'Male', 1, 89, 0, 25, 0, 0, 0, 0, 0, 0, 'Pass'),
('017', 123526478954, 'GJ01UD', 'Rekha', 'Laxman', 'Rakhi', 403480312, 'rekha@gmail.com', '2012-03-20', 'Female', 1, 49.2, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('017', 123526478931, 'GJ06BS', 'dharma', 'dhamlesh', 'dilly', 9789125471, 'dharma@gmail.com', '2018-07-18', 'Male', 1, 61, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('018', 123526478955, 'GJ01UD', 'kammal', 'gamlesh', 'killy', 9789125960, 'kammal@gmail.com', '2018-03-18', 'Male', 1, 93.5, 0, 29, 0, 0, 0, 0, 0, 0, 'Pass'),
('018', 123526478832, 'GJ06BS', 'sharmik', 'soster', 'sarina', 498880312, 'sharmik!gmail.com', '2015-03-20', 'Male', 1, 29, 0, 0, 0, 0, 0, 0, 0, 0, 'Fail'),
('019', 123526478933, 'GJ06BS', 'narma', 'namlesh', 'nilly', 9709125470, 'narma@gmail.com', '2018-03-18', 'Male', 1, 71, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('020', 123129947893, 'GJ06BS', 'parmik', 'poster', 'mrina', 412280312, 'parmik!gmail.com', '2015-04-20', 'Male', 1, 49, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('021', 123516478935, 'GJ06BS', 'jharma', 'jhamlesh', 'jilly', 9789125070, 'jharma@gmail.com', '2018-03-18', 'Male', 1, 81, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('025', 805812341212, 'GJ01CU', 'Komal Shah', 'Ramesh', 'Sonali', 9408880444, 'komal@gmail.com', '2017-07-25', 'Female', 7, 0, 34.24, 34, 0, 0, 0, 0, 0, 34.24, ''),
('026', 805812342212, 'GJ01CU', 'Roma Shah', 'Rakesh', 'Sona', 9408980444, 'roma@gmail.com', '2017-07-15', 'Female', 6, 28.24, 0, 681, 0, 0, 0, 0, 0, 0, 'Fail'),
('029', 530123658963, 'GJ07MC', 'Vithhal Sameja', 'Ismail', 'Ruya', 7412365027, 'vitthal@gmail.com', '2015-02-18', 'Male', 8, 45, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('030', 500123658963, 'GJ07MC', 'Vithhal juneja', 'Ismail', 'Roza', 7412368022, 'vitthal1@gmail.com', '2015-12-18', 'Male', 8, 85, 0, 0, 0, 34, 0, 0, 0, 0, 'Pass'),
('031', 590123658963, 'GJ07MC', 'Vithali juneja', 'Ismail', 'Roza', 7472368023, 'vithali@gmail.com', '2015-11-18', 'Female', 8, 75, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('032', 580123658963, 'GJ07MC', 'Vithhal juneja', 'Ismail', 'Roza', 7412368024, 'vitthal1@gmail.com', '2015-01-18', 'Male', 8, 85, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('033', 570123658963, 'GJ07MC', 'Vithhal juneja', 'Ismail', 'Roza', 7412368025, 'vitthal1@gmail.com', '2015-09-18', 'Male', 8, 85, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('034', 560123658963, 'GJ07MC', 'Vithhal juneja', 'Ismail', 'Roza', 7412368026, 'vitthal1@gmail.com', '2015-08-18', 'Male', 8, 15, 0, 0, 0, 0, 0, 0, 0, 0, 'Fail'),
('035', 550123658963, 'GJ07MC', 'Vithhal juneja', 'Ismail', 'Roza', 7412368028, 'vitthal1@gmail.com', '2015-07-18', 'Male', 8, 85, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('036', 540123658963, 'GJ07MC', 'Vithhal juneja', 'Ismail', 'Roza', 7412368088, 'vitthal1@gmail.com', '2015-04-18', 'Male', 8, 85, 0, 0, 0, 0, 0, 0, 0, 0, 'Pass'),
('037', 520123658963, 'GJ07MC', 'Vithhal juneja', 'Ismail', 'Roza', 7412368029, 'vitthal1@gmail.com', '2015-06-18', 'Male', 8, 85, 0, 19, 0, 0, 0, 0, 0, 0, 'Pass'),
('038', 510123658963, 'GJ07MC', 'Vithhal juneja', 'Ismail', 'Roza', 7412368020, 'vitthal1@gmail.com', '2015-05-18', 'Female', 8, 5, 0, 0, 0, 0, 0, 19, 0, 0, 'Fail'),
('080', 13678654, 'GJ01CU', 'Mehtaab Shah', 'Anant', 'Anjali', 98765643214, 'ajjsfjw@gmail.com', '0000-00-00', 'F', 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `Warehouse`
--

CREATE TABLE `Warehouse` (
  `Aadhar_No` int(12) NOT NULL,
  `Standard` int(2) NOT NULL,
  `Index_No` varchar(10) NOT NULL,
  `Percentage` float NOT NULL,
  `Ext_Academics` int(3) NOT NULL,
  `Ext_Cultural` int(3) NOT NULL,
  `Ext_Sports` int(3) NOT NULL,
  `Credit_Score` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Warehouse`
--

INSERT INTO `Warehouse` (`Aadhar_No`, `Standard`, `Index_No`, `Percentage`, `Ext_Academics`, `Ext_Cultural`, `Ext_Sports`, `Credit_Score`) VALUES
(2147483647, 7, 'GJ06BS', 67, 0, 0, 0, 67),
(2147483647, 8, 'GJ06BS', 78, 0, 0, 0, 78),
(2147483647, 9, 'GJ06BS', 88, 0, 0, 0, 88);

-- --------------------------------------------------------

--
-- Table structure for table `Zone_Mapping`
--

CREATE TABLE `Zone_Mapping` (
  `Id` int(11) NOT NULL,
  `Zone` varchar(50) NOT NULL,
  `District` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Zone_Mapping`
--

INSERT INTO `Zone_Mapping` (`Id`, `Zone`, `District`) VALUES
(1, 'North', 'Gandhinagar'),
(2, 'North', 'Patan'),
(3, 'North', 'Aravali'),
(4, 'North', 'Mehsana'),
(5, 'South', 'Surat'),
(6, 'South', 'Dang'),
(7, 'South', 'Valsad'),
(8, 'South', 'Dang'),
(9, 'West', 'Porbandar'),
(10, 'West', 'Rajkot'),
(11, 'West', 'Junagadh'),
(12, 'West', 'Bhavnagar'),
(13, 'Central', 'Dahod'),
(14, 'Central', 'Kheda'),
(15, 'Central', 'Ahmedabad'),
(16, 'Central', 'Vadodra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Authority_Index`
--
ALTER TABLE `Authority_Index`
  ADD PRIMARY KEY (`Index_No`);

--
-- Indexes for table `Credit_Mapping`
--
ALTER TABLE `Credit_Mapping`
  ADD PRIMARY KEY (`Tier`,`Type`,`Rank`,`Category`),
  ADD KEY `ind_cat` (`Category`),
  ADD KEY `Rank` (`Rank`),
  ADD KEY `Type` (`Type`);

--
-- Indexes for table `Extra_Cur`
--
ALTER TABLE `Extra_Cur`
  ADD PRIMARY KEY (`Index_No`,`Gr_No`,`Standard`,`Certi_Description`),
  ADD KEY `Ext_Academics_ibfk_3` (`Gr_No`),
  ADD KEY `Type` (`Type`),
  ADD KEY `Category` (`Category`);

--
-- Indexes for table `School_Index`
--
ALTER TABLE `School_Index`
  ADD PRIMARY KEY (`Index_No`);

--
-- Indexes for table `School_Registration`
--
ALTER TABLE `School_Registration`
  ADD PRIMARY KEY (`Index_No`);

--
-- Indexes for table `School_Representative`
--
ALTER TABLE `School_Representative`
  ADD PRIMARY KEY (`Index_No`);

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`Gr_No`,`Index_No`),
  ADD KEY `Student_ibfk_1` (`Index_No`);

--
-- Indexes for table `Warehouse`
--
ALTER TABLE `Warehouse`
  ADD PRIMARY KEY (`Aadhar_No`,`Standard`),
  ADD UNIQUE KEY `Standard` (`Standard`),
  ADD KEY `Aadhar_No` (`Aadhar_No`);

--
-- Indexes for table `Zone_Mapping`
--
ALTER TABLE `Zone_Mapping`
  ADD PRIMARY KEY (`Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Extra_Cur`
--
ALTER TABLE `Extra_Cur`
  ADD CONSTRAINT `Extra_Cur_ibfk_3` FOREIGN KEY (`Gr_No`) REFERENCES `Student` (`Gr_No`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Extra_Cur_ibfk_4` FOREIGN KEY (`Index_No`) REFERENCES `School_Registration` (`Index_No`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Extra_Cur_ibfk_5` FOREIGN KEY (`Category`) REFERENCES `Credit_Mapping` (`Category`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Extra_Cur_ibfk_6` FOREIGN KEY (`Type`) REFERENCES `Credit_Mapping` (`Type`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `School_Registration`
--
ALTER TABLE `School_Registration`
  ADD CONSTRAINT `School_Registration_ibfk_1` FOREIGN KEY (`Index_No`) REFERENCES `School_Index` (`Index_No`) ON UPDATE CASCADE;

--
-- Constraints for table `School_Representative`
--
ALTER TABLE `School_Representative`
  ADD CONSTRAINT `School_Representative_ibfk_1` FOREIGN KEY (`Index_No`) REFERENCES `School_Registration` (`Index_No`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Student`
--
ALTER TABLE `Student`
  ADD CONSTRAINT `Student_ibfk_1` FOREIGN KEY (`Index_No`) REFERENCES `School_Representative` (`Index_No`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
