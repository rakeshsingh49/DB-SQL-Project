-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 19, 2021 at 07:40 PM
-- Server version: 5.7.32
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CVS_Project`
--

-- --------------------------------------------------------

--
-- Table structure for table `Appointment`
--

CREATE TABLE `Appointment` (
  `AppointmentID` int(3) NOT NULL,
  `Purpose` varchar(100) NOT NULL,
  `Time` time DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `CustomerID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Appointment`
--

INSERT INTO `Appointment` (`AppointmentID`, `Purpose`, `Time`, `Date`, `CustomerID`) VALUES
(600, 'Drive Thru Testing`', '10:34:03', '2021-03-09', 23),
(601, 'Minute Clinic ', '14:31:08', '2021-03-09', 4),
(602, 'Drive Thru Testing`', '10:38:03', '2021-03-11', 20),
(603, 'Minute Clinic ', '14:52:53', '2021-03-12', 10),
(604, 'Drive Thru COV19 Vaccine', '10:18:42', '2021-03-12', 8),
(605, 'Drive Thru COV19 Vaccine', '13:38:39', '2021-03-05', 13),
(606, 'Drive Thru Testing`', '10:38:12', '2021-03-13', 5),
(607, 'Drive Thru COV19 Vaccine', '14:52:39', '2021-03-09', 1),
(608, 'Drive Thru COV19 Vaccine', '10:42:18', '2021-03-16', 9),
(609, 'Drive Thru COV19 Vaccine', '10:52:34', '2021-03-18', 11),
(610, 'Drive Thru COV19 Vaccine', '11:38:42', '2021-03-19', 14),
(611, 'Drive Thru COV19 Vaccine', '10:52:34', '2021-03-18', 3),
(612, 'Drive Thru COV19 Vaccine', '11:52:08', '2021-03-22', 22);

-- --------------------------------------------------------

--
-- Table structure for table `CardPayment`
--

CREATE TABLE `CardPayment` (
  `PaymentID` int(3) NOT NULL,
  `CardType` varchar(100) NOT NULL,
  `CardHolderName` varchar(100) NOT NULL,
  `ExpireDate` date NOT NULL,
  `CustomerID` int(3) NOT NULL,
  `OrderID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CardPayment`
--

INSERT INTO `CardPayment` (`PaymentID`, `CardType`, `CardHolderName`, `ExpireDate`, `CustomerID`, `OrderID`) VALUES
(500, 'Debit Card', 'Chandler Bing', '2022-08-09', 20, 124),
(501, 'VISA Card', 'Charles Jones', '2023-05-07', 8, 125),
(502, 'Debit Card', 'Charles Bennett', '2022-07-09', 10, 126),
(503, 'Cedit Card', 'David Martinez', '2022-04-04', 4, 127),
(504, 'VISA Card', 'Diana Bates', '2023-03-07', 12, 128),
(505, ' Debit Card', 'Elizabeth Goodwin', '2027-04-02', 13, 129),
(506, 'Debit Card', 'Emma Mitchell', '2022-05-09', 24, 130),
(507, 'VISA Card', 'James Smith', '2025-03-02', 1, 131),
(508, 'Credit Card', 'Jenny Wilson', '2021-08-09', 5, 132),
(509, 'Credit Card', 'Jessica Davis', '2021-09-08', 6, 133),
(510, 'Credit Card', 'Joey Tribbiani', '2023-03-07', 18, 134),
(511, 'VISA Card', 'Jonh Williams', '2025-05-09', 3, 135),
(512, 'Debit Card', 'Joseph Rogers', '2021-09-10', 9, 136);

-- --------------------------------------------------------

--
-- Table structure for table `CVSCustomer`
--

CREATE TABLE `CVSCustomer` (
  `CustomerID` int(3) NOT NULL,
  `CustomerFirstName` varchar(100) NOT NULL,
  `CustomerLastName` varchar(100) NOT NULL,
  `EmailID` varchar(100) NOT NULL,
  `Age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CVSCustomer`
--

INSERT INTO `CVSCustomer` (`CustomerID`, `CustomerFirstName`, `CustomerLastName`, `EmailID`, `Age`) VALUES
(1, 'James', 'Smith', 'jsmith@hotmail.com', 45),
(2, 'Mary', 'Miller', 'marym9@gmail.com', 34),
(3, 'John', 'Williams', 'jowilliams@outlook.com', 28),
(4, 'David', 'Martinez', 'martinezd@hotmail.com', 26),
(5, 'Jenny', 'Wilson', 'jenwilson@yahoo.com', 42),
(6, 'Jessica', 'Davis', 'jessicad@gmail.com', 51),
(7, 'Richard', 'Clark', 'clarkrichard@hotmail.com', 48),
(8, 'Charles', 'Jones', 'cjones@yahoo.com', 33),
(9, 'Joseph', 'Rogers', 'rogersj@gmail.com', 27),
(10, 'Charles', 'Bennett', 'cb@zoho.com', 60),
(11, 'Sara', 'Andersen', 'sandersen82@gmail.com', 41),
(12, 'Diana', 'Bates', 'diana123@hotmail.com', 18),
(13, 'Elizabeth', 'Goodwin', 'saragoodwin@sohu.com', 29),
(14, 'Susan', 'Bryant', 'susanbry8@gmail.com', 26),
(15, 'Robert', 'Terry', 'rterry@gmail.com', 19),
(16, 'Rachel', 'Green', 'rachgreen@gmail.com', 22),
(17, 'Sarah', 'Bass', 'sarahbass203@gmail.com', 24),
(18, 'Joey', 'Tribbiani', 'joeyt@outlook.com', 61),
(19, 'Romain', 'Jones', 'romainjones@gmail.com', 42),
(20, 'Chandler', 'Bing', 'chanbing@yahoomail.com', 30),
(21, 'Monica', 'Brown', 'monicab@gmail.com', 47),
(22, 'Ross', 'Geller', 'rgeller67@hotmail.com', 55),
(23, 'Barbara', 'Johnson', 'barbara86j@gmail.com', 27),
(24, 'Emma', 'Mitchell', 'emmamitch@gmail.com', 42),
(25, 'Noah', 'Adams', 'barbara86j@yahoo.com', 23);

-- --------------------------------------------------------

--
-- Table structure for table `Dosses`
--

CREATE TABLE `Dosses` (
  `DoseID` int(3) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `CustomerID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Dosses`
--

INSERT INTO `Dosses` (`DoseID`, `Description`, `CustomerID`) VALUES
(700, 'COVID VACCINE DOSE 1', 8),
(701, 'COVID VACCINE DOSE 2', 13),
(702, 'COVID VACCINE DOSE 1', 5),
(703, 'COVID VACCINE DOSE 1', 1),
(704, 'COVID VACCINE DOSE 2', 9),
(705, 'COVID VACCINE DOSE 1', 11),
(706, 'COVID VACCINE DOSE 2', 14),
(707, 'COVID VACCINE DOSE 1', 3),
(708, 'COVID VACCINE DOSE 2', 22);

-- --------------------------------------------------------

--
-- Table structure for table `DriveThruCovidVaccineOrder`
--

CREATE TABLE `DriveThruCovidVaccineOrder` (
  `DTCVOrderID` int(3) NOT NULL,
  `DriveThruCovidVaccineTime` time DEFAULT NULL,
  `DriveThruCovidVaccineDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DriveThruCovidVaccineOrder`
--

INSERT INTO `DriveThruCovidVaccineOrder` (`DTCVOrderID`, `DriveThruCovidVaccineTime`, `DriveThruCovidVaccineDate`) VALUES
(330, '14:38:39', '2021-03-03'),
(331, '13:38:39', '2021-03-05'),
(332, '14:52:39', '2021-03-09'),
(333, '10:18:42', '2021-03-12'),
(334, '10:42:18', '2021-03-16'),
(335, '10:52:34', '2021-03-18'),
(336, '11:38:42', '2021-03-19'),
(337, '11:09:41', '2021-03-22'),
(338, '11:52:08', '2021-03-24'),
(339, '12:07:42', '2021-03-26'),
(340, '12:10:56', '2021-03-29'),
(341, '12:35:08', '2021-03-30'),
(342, '13:13:08', '2021-03-31'),
(343, '13:18:58', '2021-04-01'),
(344, '13:47:53', '2021-04-02'),
(345, '14:07:17', '2021-04-04'),
(346, '14:25:22', '2021-04-06'),
(347, '14:38:17', '2021-04-07'),
(348, '15:52:47', '2021-04-08'),
(349, '16:20:36', '2021-04-09');

-- --------------------------------------------------------

--
-- Table structure for table `DriveThruTestingOrder`
--

CREATE TABLE `DriveThruTestingOrder` (
  `DTTOrderID` int(3) NOT NULL,
  `DriveThruTestingTime` time DEFAULT NULL,
  `DriveThruTestingDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DriveThruTestingOrder`
--

INSERT INTO `DriveThruTestingOrder` (`DTTOrderID`, `DriveThruTestingTime`, `DriveThruTestingDate`) VALUES
(111, '11:35:03', '2021-03-09'),
(112, '12:40:03', '2021-03-09'),
(113, '10:34:03', '2021-03-11'),
(114, '10:38:03', '2021-03-12'),
(115, '10:38:08', '2021-03-13'),
(116, '10:38:12', '2021-03-14'),
(117, '13:33:03', '2021-03-15'),
(118, '14:28:03', '2021-03-16'),
(119, '14:08:52', '2021-03-17'),
(120, '14:13:52', '2021-03-18'),
(121, '14:16:52', '2021-03-19'),
(122, '14:58:52', '2021-03-22'),
(123, '10:08:52', '2021-03-23'),
(124, '11:08:52', '2021-03-24'),
(125, '12:08:52', '2021-03-25'),
(126, '11:32:52', '2021-03-26'),
(127, '13:18:52', '2021-03-27'),
(128, '13:36:28', '2021-03-28'),
(129, '12:16:25', '2021-04-05'),
(130, '12:20:37', '2021-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `HealthTeamMember`
--

CREATE TABLE `HealthTeamMember` (
  `HealthTeamMemberID` int(3) NOT NULL,
  `HealthTeamMemberFirstName` varchar(100) NOT NULL,
  `HealthTeamMemberLastName` varchar(100) NOT NULL,
  `Age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `HealthTeamMember`
--

INSERT INTO `HealthTeamMember` (`HealthTeamMemberID`, `HealthTeamMemberFirstName`, `HealthTeamMemberLastName`, `Age`) VALUES
(1, 'Anthony', 'Allen', 45),
(2, 'Daniel', 'Young', 34),
(3, 'Carter', 'Lewis', 28),
(4, 'Elijah', 'Sanchez', 26),
(5, 'Michael', 'Scott', 42),
(6, 'Ethan', 'Wright', 51),
(7, 'Emily', 'Clark', 48),
(8, 'Ryan', 'Jones', 33),
(9, 'Nicole', 'Taylor', 27),
(10, 'Madison', 'Moore', 60),
(11, 'Gavin', 'Harris', 41),
(12, 'Chloe', 'White', 18),
(13, 'Alexis', 'Robinson', 29),
(14, 'Gunther', 'Gonzalez', 26),
(15, 'Ava', 'Roberts', 19);

-- --------------------------------------------------------

--
-- Table structure for table `MinuteClinicOrder`
--

CREATE TABLE `MinuteClinicOrder` (
  `MCOrderID` int(3) NOT NULL,
  `PickupTime` time DEFAULT NULL,
  `PickupDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MinuteClinicOrder`
--

INSERT INTO `MinuteClinicOrder` (`MCOrderID`, `PickupTime`, `PickupDate`) VALUES
(202, '13:31:08', '2021-03-09'),
(203, '14:31:08', '2021-03-11'),
(204, '14:45:08', '2021-03-12'),
(205, '14:52:53', '2021-03-17'),
(206, '14:46:40', '2021-03-18'),
(207, '14:58:02', '2021-03-22'),
(208, '10:30:02', '2021-03-23'),
(209, '10:02:32', '2021-03-25'),
(210, '10:46:37', '2021-03-28'),
(211, '10:55:22', NULL),
(212, '12:13:22', '2021-03-30'),
(213, '12:17:22', '2021-04-01'),
(214, '12:36:52', '2021-04-02'),
(215, '12:37:42', '2021-04-03'),
(216, '13:46:42', '2021-04-04'),
(217, '13:02:01', '2021-04-05'),
(218, '13:06:08', '2021-04-06'),
(219, '13:28:57', '2021-04-07'),
(220, '15:48:57', '2021-04-08'),
(221, '15:52:42', '2021-04-09');

-- --------------------------------------------------------

--
-- Table structure for table `OnlineOrder`
--

CREATE TABLE `OnlineOrder` (
  `OrderID` int(3) NOT NULL,
  `StoreLocation` varchar(100) NOT NULL,
  `Date` date DEFAULT NULL,
  `CustomerID` int(3) NOT NULL,
  `HealthTeamMemberID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `OnlineOrder`
--

INSERT INTO `OnlineOrder` (`OrderID`, `StoreLocation`, `Date`, `CustomerID`, `HealthTeamMemberID`) VALUES
(123, '4238 Wilson Blvd, Arlington, VA', '2021-03-01', 23, 1),
(124, '256 N Glebe Rd, Arlington, VA', '2021-04-04', 20, 2),
(125, '256 N Glebe Rd, Arlington, VA', '2021-03-08', 8, 3),
(126, '4709 Lee Hwy, Arlington, VA', '2021-04-02', 10, 4),
(127, '10090 Fairfax Blvd, Fairfax, VA', '2021-03-08', 4, 5),
(128, '6514 Georgia Ave NW, Washington, DC', '2021-03-15', 12, 6),
(129, '400 Massachusetts Ave NW, Washington, DC', '2021-03-20', 13, 7),
(130, '9202 N Florida Ave, Tampa, FL', '2021-03-18', 24, 8),
(131, '3005 FL-540, Winter Haven, FL', '2021-03-22', 1, 9),
(132, '8928 Burke Lake Rd, Springfield, VA', '2021-03-29', 5, 10),
(133, '640 Hurst St, Center, TX', '2021-04-04', 6, 11),
(134, '8117 Leesburg Pike Vienna, VA', '2021-04-07', 18, 12),
(135, '337 East Maple Street Vienna, VA', '2021-03-24', 3, 13),
(136, '64 Cedar Lane, Se, Cedar Park & Shop Vienna, VA', '2021-04-08', 9, 14),
(137, '670 Welsh Rd, Huntingdon Valley, PA', '2021-03-28', 24, 15);

-- --------------------------------------------------------

--
-- Table structure for table `OrderDetails`
--

CREATE TABLE `OrderDetails` (
  `OrderID` int(3) NOT NULL,
  `ProductID` int(3) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Discount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `OrderDetails`
--

INSERT INTO `OrderDetails` (`OrderID`, `ProductID`, `Quantity`, `Discount`) VALUES
(123, 300, 5, 'DISCOUNT INCLUDED'),
(124, 301, 3, 'DISCOUNT NOT INCLUDED'),
(125, 302, 2, 'DISCOUNT INCLUDED'),
(126, 303, 2, 'DISCOUNT NOT INCLUDED'),
(127, 304, 6, 'DISCOUNT INCLUDED'),
(128, 305, 12, 'DISCOUNT NOT INCLUDED'),
(129, 306, 44, 'DISCOUNT INCLUDED'),
(130, 307, 4, 'DISCOUNT NOT INCLUDED'),
(131, 308, 9, 'DISCOUNT INCLUDED'),
(132, 309, 4, 'DISCOUNT NOT INCLUDED'),
(133, 300, 3, 'DISCOUNT INCLUDED');

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `ProductID` int(3) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`ProductID`, `Name`, `Price`) VALUES
(300, 'CVS Health Mucus Relief Extended-Release Bi-Layer', '19.99'),
(301, 'CVS Health Nighttime Cough Relief Liquid Cherry', '9.49'),
(302, 'Robitussin Adult Maximum Strength Nighttime Cough DM Medicine’', '6.99'),
(303, 'CVS Health Maximum Strength Nighttime Severe Cough Relief', '11.79'),
(304, 'appleciderviniger', '13.99'),
(305, 'AlkaSeltzer Plus Severe cold & flu day medicine', '14.79'),
(306, 'CVS Health Resistance Band', '49.99'),
(307, 'Vicks DayQuil', '2.99'),
(308, 'CVS Health Pulse Oximeter', '9.94'),
(309, 'D Natural no Cow Bar', '9.99'),
(310, 'Ensure Original', '10.49'),
(311, 'CVS Health Friction Guard Blister Spray', '7.49'),
(312, 'Organic Nutritional Shakes', '4.79'),
(313, 'Nutrogena Makeup Remover', '11.29'),
(314, 'Maybelline Baby Lips', '17.99'),
(315, 'CVS Health Sinus Congestion Caplets’', '12.49');

-- --------------------------------------------------------

--
-- Table structure for table `RXDeliveryOrder`
--

CREATE TABLE `RXDeliveryOrder` (
  `RXOrderID` int(3) NOT NULL,
  `Time` time DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `DeliveryStreet` varchar(100) DEFAULT NULL,
  `DeliveryCity` varchar(100) DEFAULT NULL,
  `DeliveryState` varchar(100) DEFAULT NULL,
  `DeliveryZipCode` varchar(100) DEFAULT NULL,
  `DeliveryCountry` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `RXDeliveryOrder`
--

INSERT INTO `RXDeliveryOrder` (`RXOrderID`, `Time`, `Date`, `DeliveryStreet`, `DeliveryCity`, `DeliveryState`, `DeliveryZipCode`, `DeliveryCountry`) VALUES
(331, '14:46:19', '2021-03-08', '12011 Burke Chase', 'Fairfax', 'VA', '22032', 'USA'),
(332, '14:46:19', '2021-03-10', '20323 Ave St', 'Arlington', 'VA', '22205', 'USA'),
(333, '11:46:19', '2021-03-15', '3324 Marine Dr', 'Arlington', 'VA', '22206', 'USA'),
(334, '15:46:19', '2021-04-07', '1209 Empire Ave', 'Washington', 'DC', '22208', 'USA'),
(335, '11:58:17', '2021-03-22', '1209 Empire Ave', 'Washington', 'DC', '20008', 'USA'),
(336, '14:56:19', '2021-03-10', '1352 Corp Blvd', 'Washington', 'DC', '20009', 'USA'),
(337, '13:26:15', '2021-03-15', '7253 Bule Apt.', 'Washington', 'DC', '20012', 'USA'),
(338, '13:54:15', '2021-03-23', '2373 Panama Dr', 'Philadelphia', 'PA', '15014', 'USA'),
(339, '15:26:15', '2021-03-29', '4423 Lake Ct.', 'Pittsburgh', 'PA', '15015', 'USA'),
(340, '15:38:52', '2021-03-16', '3758 Mary St', 'Pittsburgh', 'PA', '15019', 'USA'),
(341, '15:48:52', '2021-03-30', '5675 Lane Ave', 'Austin', 'TX', '75006', 'USA'),
(342, '16:35:18', '2021-03-26', '5872 Jane Ct', 'Houston', 'TX', '75011', 'USA'),
(343, '14:32:22', '2021-03-21', '3547 Pond St', 'Austin', 'TX', '75015', 'USA'),
(344, '16:32:18', '2021-03-30', '54782 Chase Ct', 'Panama City', 'FL', '32004', 'USA'),
(345, '15:32:15', '2021-04-04', '9457 Jeff St', 'Tampa', 'FL', '32006', 'USA'),
(346, '11:32:25', '2021-04-05', '5829 Venue Dr', 'Haven', 'FL', '32007', 'USA'),
(347, '12:22:17', '2021-03-19', '4574 Jane Ave', 'Tampa', 'FL', '32008', 'USA'),
(348, '13:32:17', '2021-04-07', '5792 State St.', 'Philadelphia', 'PA', '15017', 'USA'),
(349, '12:45:15', '2021-04-08', '9857 Jack St.', 'Pittsburgh', 'PA', '15018', 'USA'),
(350, '12:45:15', '2021-04-08', '9857 Jack St.', 'Pittsburgh', 'PA', '15018', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `SideEffects`
--

CREATE TABLE `SideEffects` (
  `SideEffectsID` int(3) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Instructions` varchar(100) NOT NULL,
  `CustomerID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SideEffects`
--

INSERT INTO `SideEffects` (`SideEffectsID`, `Description`, `Instructions`, `CustomerID`) VALUES
(900, 'Nausea', 'wait for 30 mins before leaving.', 8),
(901, 'Headache', 'wait for 30 mins before leaving.', 13),
(902, 'Nausea', 'wait for 30 mins before leaving.', 9),
(903, 'Headache', 'wait for 30 mins before leaving.', 11),
(904, 'Swelling', 'wait for 30 mins before leaving.', 14),
(905, 'Headache', 'wait for 30 mins before leaving.', 22),
(906, 'Swelling', 'wait for 30 mins before leaving.', 3),
(907, 'Nausea', 'wait for 30 mins before leaving.', 5),
(908, 'Swelling', 'wait for 30 mins before leaving.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `StorePickupOrder`
--

CREATE TABLE `StorePickupOrder` (
  `SPOrderID` int(3) NOT NULL,
  `PickupTime` time DEFAULT NULL,
  `PickupDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `StorePickupOrder`
--

INSERT INTO `StorePickupOrder` (`SPOrderID`, `PickupTime`, `PickupDate`) VALUES
(120, '15:23:47', '2021-03-29'),
(121, '16:23:47', '2021-03-24'),
(123, '15:22:47', '2021-03-22'),
(124, '11:33:47', '2021-03-18'),
(125, '10:43:52', '2021-03-16'),
(126, '10:33:48', '2021-03-13'),
(127, '10:31:52', '2021-03-12'),
(128, '11:11:25', '2021-03-11'),
(129, '11:11:25', '2021-03-10'),
(130, '11:19:25', '2021-03-09'),
(131, '12:01:38', '2021-03-08'),
(132, '12:31:33', '2021-04-01'),
(133, '12:36:52', '2021-04-02'),
(134, '12:48:33', '2021-04-03'),
(135, '12:52:08', '2021-04-04'),
(136, '12:56:33', '2021-04-05'),
(137, '14:56:33', '2021-04-06'),
(138, '15:35:31', '2021-04-07'),
(139, '16:38:42', '2021-04-08'),
(140, '16:55:43', '2021-04-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Appointment`
--
ALTER TABLE `Appointment`
  ADD PRIMARY KEY (`AppointmentID`),
  ADD KEY `Appointment_fk7` (`CustomerID`);

--
-- Indexes for table `CardPayment`
--
ALTER TABLE `CardPayment`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `CardPayment_fk3` (`CustomerID`),
  ADD KEY `CardPayment_fk4` (`OrderID`);

--
-- Indexes for table `CVSCustomer`
--
ALTER TABLE `CVSCustomer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `Dosses`
--
ALTER TABLE `Dosses`
  ADD PRIMARY KEY (`DoseID`),
  ADD KEY `Dosses_fk9` (`CustomerID`);

--
-- Indexes for table `DriveThruCovidVaccineOrder`
--
ALTER TABLE `DriveThruCovidVaccineOrder`
  ADD PRIMARY KEY (`DTCVOrderID`);

--
-- Indexes for table `DriveThruTestingOrder`
--
ALTER TABLE `DriveThruTestingOrder`
  ADD PRIMARY KEY (`DTTOrderID`);

--
-- Indexes for table `HealthTeamMember`
--
ALTER TABLE `HealthTeamMember`
  ADD PRIMARY KEY (`HealthTeamMemberID`);

--
-- Indexes for table `MinuteClinicOrder`
--
ALTER TABLE `MinuteClinicOrder`
  ADD PRIMARY KEY (`MCOrderID`);

--
-- Indexes for table `OnlineOrder`
--
ALTER TABLE `OnlineOrder`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `OnlineOrder_fk1` (`CustomerID`),
  ADD KEY `OnlineOrder_fk2` (`HealthTeamMemberID`);

--
-- Indexes for table `OrderDetails`
--
ALTER TABLE `OrderDetails`
  ADD PRIMARY KEY (`OrderID`,`ProductID`),
  ADD KEY `OrderDetails_fk6` (`ProductID`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `RXDeliveryOrder`
--
ALTER TABLE `RXDeliveryOrder`
  ADD PRIMARY KEY (`RXOrderID`);

--
-- Indexes for table `SideEffects`
--
ALTER TABLE `SideEffects`
  ADD PRIMARY KEY (`SideEffectsID`),
  ADD KEY `SideEffects_fk8` (`CustomerID`);

--
-- Indexes for table `StorePickupOrder`
--
ALTER TABLE `StorePickupOrder`
  ADD PRIMARY KEY (`SPOrderID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Appointment`
--
ALTER TABLE `Appointment`
  ADD CONSTRAINT `Appointment_fk7` FOREIGN KEY (`CustomerID`) REFERENCES `CVSCustomer` (`CustomerID`);

--
-- Constraints for table `CardPayment`
--
ALTER TABLE `CardPayment`
  ADD CONSTRAINT `CardPayment_fk3` FOREIGN KEY (`CustomerID`) REFERENCES `CVSCustomer` (`CustomerID`),
  ADD CONSTRAINT `CardPayment_fk4` FOREIGN KEY (`OrderID`) REFERENCES `OnlineOrder` (`OrderID`);

--
-- Constraints for table `Dosses`
--
ALTER TABLE `Dosses`
  ADD CONSTRAINT `Dosses_fk9` FOREIGN KEY (`CustomerID`) REFERENCES `CVSCustomer` (`CustomerID`);

--
-- Constraints for table `OnlineOrder`
--
ALTER TABLE `OnlineOrder`
  ADD CONSTRAINT `OnlineOrder_fk1` FOREIGN KEY (`CustomerID`) REFERENCES `CVSCustomer` (`CustomerID`),
  ADD CONSTRAINT `OnlineOrder_fk2` FOREIGN KEY (`HealthTeamMemberID`) REFERENCES `HealthTeamMember` (`HealthTeamMemberID`);

--
-- Constraints for table `OrderDetails`
--
ALTER TABLE `OrderDetails`
  ADD CONSTRAINT `OrderDetails_fk5` FOREIGN KEY (`OrderID`) REFERENCES `OnlineOrder` (`OrderID`),
  ADD CONSTRAINT `OrderDetails_fk6` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`);

--
-- Constraints for table `SideEffects`
--
ALTER TABLE `SideEffects`
  ADD CONSTRAINT `SideEffects_fk8` FOREIGN KEY (`CustomerID`) REFERENCES `CVSCustomer` (`CustomerID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
