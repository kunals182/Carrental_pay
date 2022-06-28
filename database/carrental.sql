-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2022 at 03:26 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'admin123', '2022-03-21 14:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `card` varchar(255) NOT NULL,
  `expmonth` varchar(255) NOT NULL,
  `expyear` varchar(255) NOT NULL,
  `cvv` int(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `name`, `card`, `expmonth`, `expyear`, `cvv`, `amount`) VALUES
(1, 'test', '134134134431', '11', '2022', 111, '80'),
(2, 'testtt', '12412423435454', 'december', '2034', 123, '1234'),
(3, 'testtt', '123214323555465', 'december', '2025', 123, '345'),
(4, 'aysha', '1010101010101010', 'may', '2022', 222, '500'),
(5, 'test', '123456789012', 'september', '2025', 123, '1500');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `members` int(255) NOT NULL,
  `days` int(255) NOT NULL,
  `totalamt` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `message`, `Status`, `PostingDate`, `name`, `address`, `members`, `days`, `totalamt`) VALUES
(18, 'customer@gmail.com', 6, '2022-03-23', 'holiday trip', 0, '2022-03-21 13:26:55', 'mohamed', 'damam', 5, 5, '500'),
(19, 'customer@gmail.com', 6, '2022-03-22', 'holidays', 0, '2022-03-21 13:41:15', 'mohamed', 'damam', 5, 15, '1500'),
(20, 'customer@gmail.com', 6, '2022-03-24', 'holiday trip', 0, '2022-03-21 13:59:52', 'mohamed', 'damam', 5, 15, '1500');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(4, 'NISSAN', '2022-03-18 16:25:13', '2022-03-19 17:02:06'),
(8, 'TATA', '2022-01-19 16:48:33', NULL),
(9, 'BMW', '2022-01-19 16:48:39', NULL),
(11, 'AUDI', '2022-01-19 16:49:23', NULL),
(12, 'MARUTHI', '2022-01-21 16:45:19', '2022-03-21 11:20:07'),
(13, 'BOLERO', '2022-02-22 16:43:06', '2022-03-21 11:20:30'),
(14, 'VOLKSWAGEN', '2022-02-22 18:13:01', '2022-03-21 11:21:04'),
(15, 'TOYOTA', '2022-03-21 11:01:45', NULL),
(16, 'HYUNDAI', '2022-03-21 11:10:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Test Demo test demo																									', 'test@test.com', '8585233222');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(4, 'anisha', 'anisha@gmail.com', '890890900', 'booked a car may i know when will be delivered:?', '2022-02-22 16:41:00', 1),
(5, 'anisha', 'anisha@gmail.com', '9089090890', 'need to trip to gova?', '2022-02-22 18:10:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '										<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong></font><span style=\"font-size: 1em; color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Renting a car in Oman and taking a self-drive tour gives you several advantages over other methods of transportation. First, public transportation in Oman is extremely limited, and even the biggest cities have limited routes between them. Oman also has several areas, like the Sharqiya Sands and the Hajjar Mountains, that are almost completely inaccessible via public transportation.</span><br><span style=\"color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-size: 1em; color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Because the roads connecting Oman’s major cities are in great condition, renting an economy car or a compact car will be sufficient for your trip, if you’re sticking to more developed or urban areas. However, if you’ll be exploring the more natural side of Oman, a four-wheel drive vehicle is essential. The mountain passes and sandy regions of Oman can be tricky to navigate, so be sure to reserve a GPS along with your vehicle, if you didn’t bring one.</span></p><p align=\"justify\"><span style=\"font-size: 1em; color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Renting a car in Oman and taking a self-drive tour gives you several advantages over other methods of transportation. First, public transportation in Oman is extremely limited, and even the biggest cities have limited routes between them. Oman also has several areas, like the Sharqiya Sands and the Hajjar Mountains, that are almost completely inaccessible via public transportation.</span><br><span style=\"color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-size: 1em; color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Because the roads connecting Oman’s major cities are in great condition, renting an economy car or a compact car will be sufficient for your trip, if you’re sticking to more developed or urban areas. However, if you’ll be exploring the more natural side of Oman, a four-wheel drive vehicle is essential. The mountain passes and sandy regions of Oman can be tricky to navigate, so be sure to reserve a GPS along with your vehicle, if you didn’t bring one.</span><span style=\"font-size: 1em; color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span></p>\r\n										'),
(2, 'Privacy Policy', 'privacy', '<span style=\"font-size: 1em; text-align: justify; color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Renting a car in Oman and taking a self-drive tour gives you several advantages over other methods of transportation. First, public transportation in Oman is extremely limited, and even the biggest cities have limited routes between them. Oman also has several areas, like the Sharqiya Sands and the Hajjar Mountains, that are almost completely inaccessible via public transportation.</span><br style=\"text-align: justify;\"><span style=\"text-align: justify; color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"font-size: 1em; text-align: justify; color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Because the roads connecting Oman’s major cities are in great condition, renting an economy car or a compact car will be sufficient for your trip, if you’re sticking to more developed or urban areas. However, if you’ll be exploring the more natural side of Oman, a four-wheel drive vehicle is essential. The mountain passes and sandy regions of Oman can be tricky to navigate, so be sure to reserve a GPS along with your vehicle, if you didn’t bring one.</span>										\r\n										'),
(3, 'About Us ', 'aboutus', '<div style=\"text-align: justify;\"><span style=\"color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 1em;\">Renting a car in Oman and taking a self-drive tour gives you several advantages over other methods of transportation. First, public transportation in Oman is extremely limited, and even the biggest cities have limited routes between them. Oman also has several areas, like the Sharqiya Sands and the Hajjar Mountains, that are almost completely inaccessible via public transportation.</span><br><span style=\"color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 1em;\">Because the roads connecting Oman’s major cities are in great condition, renting an economy car or a compact car will be sufficient for your trip, if you’re sticking to more developed or urban areas. However, if you’ll be exploring the more natural side of Oman, a four-wheel drive vehicle is essential. The mountain passes and sandy regions of Oman can be tricky to navigate, so be sure to reserve a GPS along with your vehicle, if you didn’t bring one.</span><br><span style=\"color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 1em;\">If you’re traveling to Oman with a child under the age of four, be advised that they are required by law to be secured in a car seat when traveling even short distances in a vehicle. Larger rental car companies like Sixt and Avis offer car seats as an add-on to your rental reservation, so you can pick it up with your vehicle.</span><br><span style=\"color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><span style=\"color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 1em;\">If you’re renting a car in Oman and plan to cross the border into the UAE, you’ll first need to check with your agency to make sure that they offer the additional insurance required. If they do, simply notify them a few weeks in advance, so that they can prepare the proper paperwork. As always, make sure to have your passport, car rental papers, and additional insurance papers with you as you travel to the border.</span><br></div><div><span style=\"color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span><div><span style=\"color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></span></div></div>'),
(11, 'FAQs', 'faqs', '																				<ul class=\"c5Aix-faq-list c5Aix-mod-variant-default\" style=\"color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li class=\"c5Aix-item c5Aix-theme-default c5Aix-mod-variant-default\" style=\"border-top: 1px solid rgb(229, 235, 240); width: 714px;\"><button class=\"c5Aix-question\" aria-expanded=\"true\" aria-controls=\"faq-1065dd3645b67\" style=\"font-size: 16px; line-height: normal; padding: 12px 0px; border-width: 0px; border-style: initial; border-color: initial; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: inherit; text-overflow: inherit; text-decoration: inherit; display: flex; justify-content: space-between; width: 714px; align-items: center;\"><h4 class=\"c5Aix-question-text\" style=\"font-family: HelveticaNeue-Bold, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 600; font-size: 16px; line-height: 24px; margin: 0px; text-align: left;\">What is the most popular rental car in Oman?</h4><div class=\"c5Aix-chevron c5Aix-mod-expanded\" style=\"margin-left: 16px; flex-shrink: 0; transition: transform 250ms ease 0s; cursor: pointer; align-self: flex-start; display: flex; transform: rotate3d(1, 0, 0, 180deg);\"><span cleanup=\"\" class=\"svg c5Aix-chevron-icon\" style=\"width: 24px; height: 24px; transform: translate3d(0px, 0px, 0px); vertical-align: middle; -webkit-font-smoothing: antialiased;\"><svg class=\"svg-image\" role=\"img\" style=\"width:inherit;height:inherit;line-height:inherit;color:inherit;\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 200 200\"><path d=\"M100 132.5c-3.873 0 .136 2.376-64.801-51.738l9.603-11.523L100 115.237l55.199-45.999l9.603 11.523C99.806 134.924 103.855 132.5 100 132.5z\"></path></svg></span></div></button><p id=\"faq-1065dd3645b67\" class=\"c5Aix-answer c5Aix-mod-expanded\" aria-hidden=\"false\" style=\"text-align: justify; overflow: hidden; margin-bottom: 12px; transition: max-height 250ms ease 0s, opacity 250ms ease 0s, margin-bottom 250ms ease 0s; opacity: 1; visibility: visible;\">Compact (Ford Focus or similar) is the most frequently booked rental car type in Oman.</p></li></ul><div><ul class=\"c5Aix-faq-list c5Aix-mod-variant-default\" style=\"color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li class=\"c5Aix-item c5Aix-theme-default c5Aix-mod-variant-default\" style=\"border-top: 1px solid rgb(229, 235, 240); width: 714px;\"><button class=\"c5Aix-question\" aria-expanded=\"true\" aria-controls=\"faq-844f1617215f4\" style=\"font-size: 16px; line-height: normal; padding: 12px 0px; border-width: 0px; border-style: initial; border-color: initial; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: inherit; text-overflow: inherit; text-decoration: inherit; display: flex; justify-content: space-between; width: 714px; align-items: center;\"><h4 class=\"c5Aix-question-text\" style=\"font-family: HelveticaNeue-Bold, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 600; font-size: 16px; line-height: 24px; margin: 0px; text-align: left;\">What is the cheapest car rental company in Oman?</h4><div class=\"c5Aix-chevron c5Aix-mod-expanded\" style=\"margin-left: 16px; flex-shrink: 0; transition: transform 250ms ease 0s; cursor: pointer; align-self: flex-start; display: flex; transform: rotate3d(1, 0, 0, 180deg);\"><span cleanup=\"\" class=\"svg c5Aix-chevron-icon\" style=\"width: 24px; height: 24px; transform: translate3d(0px, 0px, 0px); vertical-align: middle; -webkit-font-smoothing: antialiased;\"><svg class=\"svg-image\" role=\"img\" style=\"width:inherit;height:inherit;line-height:inherit;color:inherit;\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 200 200\"><path d=\"M100 132.5c-3.873 0 .136 2.376-64.801-51.738l9.603-11.523L100 115.237l55.199-45.999l9.603 11.523C99.806 134.924 103.855 132.5 100 132.5z\"></path></svg></span></div></button><p id=\"faq-844f1617215f4\" class=\"c5Aix-answer c5Aix-mod-expanded\" aria-hidden=\"false\" style=\"text-align: justify; overflow: hidden; margin-bottom: 12px; transition: max-height 250ms ease 0s, opacity 250ms ease 0s, margin-bottom 250ms ease 0s; opacity: 1; visibility: visible;\">In the past 72 hours, the cheapest rental cars were found at Dollar ($22/day), Europcar ($31/day) and National ($32/day).</p></li></ul><div><ul class=\"c5Aix-faq-list c5Aix-mod-variant-default\" style=\"color: rgb(33, 42, 48); font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li class=\"c5Aix-item c5Aix-theme-default c5Aix-mod-variant-default\" style=\"border-top: 1px solid rgb(229, 235, 240); width: 714px;\"><button class=\"c5Aix-question\" aria-expanded=\"true\" aria-controls=\"faq-97fbd207a2a62\" style=\"font-size: 16px; line-height: normal; padding: 12px 0px; border-width: 0px; border-style: initial; border-color: initial; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: inherit; text-overflow: inherit; text-decoration: inherit; display: flex; justify-content: space-between; width: 714px; align-items: center;\"><h4 class=\"c5Aix-question-text\" style=\"font-family: HelveticaNeue-Bold, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 600; font-size: 16px; line-height: 24px; margin: 0px; text-align: left;\">How can I find car rentals near me in Oman?</h4><div class=\"c5Aix-chevron c5Aix-mod-expanded\" style=\"margin-left: 16px; flex-shrink: 0; transition: transform 250ms ease 0s; cursor: pointer; align-self: flex-start; display: flex; transform: rotate3d(1, 0, 0, 180deg);\"><span cleanup=\"\" class=\"svg c5Aix-chevron-icon\" style=\"width: 24px; height: 24px; transform: translate3d(0px, 0px, 0px); vertical-align: middle; -webkit-font-smoothing: antialiased;\"><svg class=\"svg-image\" role=\"img\" style=\"width:inherit;height:inherit;line-height:inherit;color:inherit;\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 200 200\"><path d=\"M100 132.5c-3.873 0 .136 2.376-64.801-51.738l9.603-11.523L100 115.237l55.199-45.999l9.603 11.523C99.806 134.924 103.855 132.5 100 132.5z\"></path></svg></span></div></button><p id=\"faq-97fbd207a2a62\" class=\"c5Aix-answer c5Aix-mod-expanded\" aria-hidden=\"false\" style=\"text-align: justify; overflow: hidden; margin-bottom: 12px; transition: max-height 250ms ease 0s, opacity 250ms ease 0s, margin-bottom 250ms ease 0s; opacity: 1; visibility: visible;\">Take a look at our extensive&nbsp;<a href=\"https://www.kayak.com/Oman-Car-Rentals.185.crc.html#rentalLocationMap\" style=\"color: rgb(11, 123, 153);\">car rental location map</a>&nbsp;to find the best rental cars near you.</p></li></ul></div></div>\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(11, 'customer', 'customer@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '99887766', NULL, NULL, NULL, NULL, '2022-03-16 07:42:30', NULL),
(12, 'abdull', 'abdulaa@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '9090909090', NULL, NULL, NULL, NULL, '2022-03-21 06:51:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `mileage` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`, `mileage`) VALUES
(6, 'PUNCH', 8, 'BEST MODEL', 100, 'Petrol', 2021, 5, 'rear-3-4-left-1769305311_930x620.webp', 'rear-3-4-right-414047136_930x620.webp', 'orvm-1768676995_930x620.webp', 'bumper-1868402047_930x620.webp', 'full-dashboard-center-1135488431_930x620.webp', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '2022-01-19 16:53:01', '2022-03-21 11:38:40', 20),
(9, 'DATSAN GO', 4, 'SUPER MODEL', 80, 'Diesel', 2018, 5, 'th (23).jpg', 'th (24).jpg', 'th (25).jpg', 'th (26).jpg', 'th (27).jpg', 1, 1, NULL, 1, NULL, 1, NULL, 1, 1, 1, NULL, NULL, '2022-01-19 17:00:22', '2022-03-21 06:58:28', 19),
(10, 'M4', 9, 'NEW MODEL', 120, 'Diesel', 2020, 5, 'th (13).jpg', 'th (14).jpg', 'th (15).jpg', 'th (16).jpg', 'th (17).jpg', 1, NULL, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, '2022-01-19 17:04:38', '2022-03-21 11:38:50', 18),
(11, 'R8', 11, 'NEW MODEL', 200, 'Diesel', 2020, 5, 'th (22).jpg', 'th (18).jpg', 'th (21).jpg', 'th (20).jpg', 'th (19).jpg', 1, NULL, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, '2022-01-19 17:05:53', '2022-03-21 11:39:00', 15),
(12, 'SWIFT', 12, 'SUZUKI SWIFT', 140, 'Diesel', 2020, 6, 'th (28).jpg', 'th (29).jpg', 'th (30).jpg', 'th (31).jpg', 'th (32).jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, '2022-01-21 17:00:38', '2022-03-21 06:58:42', 20),
(13, 'CAMRY', 15, 'Sedan Type', 100, 'Petrol', 2022, 5, 'mobile_listing_main_2018_Toyota_Camry__1_.jpg', '_I6I1458.png', 'Camry 1140X900 09.png', 'exterior-3.jpg', 'Camry 1140X900 01.png', 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-03-21 11:08:14', '2022-03-21 11:39:48', 0),
(14, 'ELANTRA', 16, 'Sedan', 100, 'Petrol', 2022, 5, 'elantra-ad-design-front-accordion-main-original.jpg', 'elantra-ad-fl-design-rear-accordion-main-original.jpg', 'elantra-ad-fl-design-side-accordion-power-sunroof-original.jpg', 'elantra-ad-fl-design-interior-accordion-main-original.jpg', 'elantra-ad-fl-design-front-accordion-radiator-grille-original.jpg', 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2022-03-21 11:17:25', '2022-03-21 11:39:40', 0),
(15, 'HILUX', 15, 'PICKUP', 120, 'Petrol', 2022, 5, 'b55221cf-14b0-4c8a-a469-7f3babfb4c2d.jpg', '50274ec0-2bf8-4292-ae99-324622eca491.jpg', '790a419e-02bf-4f14-b91a-fd581a5b4e9f.jpg', '813e9d47-4149-43bf-9b67-0dac7b5e2398.jpg', '952f7af3-bbd2-49a9-a485-1bc61575de5b.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-03-21 11:24:25', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
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
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
