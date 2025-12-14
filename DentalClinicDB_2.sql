-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2025 at 09:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DentalClinicDB_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointmentID` int(11) NOT NULL,
  `dentistID` int(11) NOT NULL,
  `patientID` int(11) NOT NULL,
  `assistantID` int(11) DEFAULT NULL,
  `appointment_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointmentID`, `dentistID`, `patientID`, `assistantID`, `appointment_date`, `start_time`, `end_time`, `status`) VALUES
(500001, 200001, 400001, 200002, '2025-10-21', '09:00:00', '09:45:00', 'Completed'),
(500002, 200001, 400002, NULL, '2025-10-21', '10:00:00', '10:30:00', 'Completed'),
(500003, 200001, 400003, 200002, '2025-10-21', '11:00:00', '11:45:00', 'Completed'),
(500004, 200001, 400004, 200002, '2025-10-22', '09:00:00', '09:30:00', 'Completed'),
(500005, 200001, 400005, NULL, '2025-10-22', '10:30:00', '11:15:00', 'Completed'),
(500006, 200001, 400006, 200002, '2025-10-23', '09:00:00', '09:45:00', 'Completed'),
(500007, 200001, 400007, 200002, '2025-10-23', '10:30:00', '11:00:00', 'Completed'),
(500008, 200001, 400008, NULL, '2025-10-23', '13:00:00', '13:45:00', 'Completed'),
(500009, 200001, 400009, 200002, '2025-10-24', '09:00:00', '09:30:00', 'Completed'),
(500010, 200001, 400010, 200002, '2025-10-24', '10:00:00', '10:45:00', 'Completed'),
(500011, 200001, 400011, NULL, '2025-10-24', '13:00:00', '13:30:00', 'Completed'),
(500012, 200001, 400012, 200002, '2025-10-25', '09:00:00', '09:45:00', 'Completed'),
(500013, 200001, 400013, 200002, '2025-10-25', '10:30:00', '11:15:00', 'Completed'),
(500014, 200001, 400014, NULL, '2025-10-27', '09:00:00', '09:30:00', 'Completed'),
(500015, 200001, 400015, 200002, '2025-10-27', '10:00:00', '10:45:00', 'Completed'),
(500016, 200001, 400016, 200002, '2025-10-28', '09:00:00', '09:45:00', 'Completed'),
(500017, 200001, 400017, NULL, '2025-10-28', '10:30:00', '11:00:00', 'Completed'),
(500018, 200001, 400018, 200002, '2025-10-29', '09:00:00', '09:30:00', 'Completed'),
(500019, 200001, 400019, 200002, '2025-10-29', '10:00:00', '10:45:00', 'Completed'),
(500020, 200001, 400020, NULL, '2025-10-29', '13:00:00', '13:45:00', 'Completed'),
(500021, 200001, 400021, 200002, '2025-10-30', '09:00:00', '09:30:00', 'Completed'),
(500022, 200001, 400022, 200002, '2025-10-30', '10:30:00', '11:15:00', 'Completed'),
(500023, 200001, 400023, NULL, '2025-10-31', '09:00:00', '09:45:00', 'No Show'),
(500024, 200001, 400024, 200002, '2025-10-31', '10:30:00', '11:00:00', 'Completed'),
(500025, 200001, 400025, 200002, '2025-10-31', '13:00:00', '13:45:00', 'Completed'),
(500026, 200001, 400026, NULL, '2025-11-03', '09:00:00', '09:30:00', 'Completed'),
(500027, 200001, 400027, 200002, '2025-11-03', '10:00:00', '10:45:00', 'Completed'),
(500028, 200001, 400028, 200002, '2025-11-04', '09:00:00', '09:45:00', 'Completed'),
(500029, 200001, 400029, NULL, '2025-11-04', '10:30:00', '11:15:00', 'Completed'),
(500030, 200001, 400030, 200002, '2025-11-05', '09:00:00', '09:30:00', 'Completed'),
(500031, 200001, 400031, 200002, '2025-11-05', '10:00:00', '10:45:00', 'Completed'),
(500032, 200001, 400032, NULL, '2025-11-05', '13:00:00', '13:45:00', 'Completed'),
(500033, 200001, 400033, 200002, '2025-11-06', '09:00:00', '09:30:00', 'Completed'),
(500034, 200001, 400034, 200002, '2025-11-06', '10:30:00', '11:15:00', 'Completed'),
(500035, 200001, 400035, NULL, '2025-11-07', '09:00:00', '09:45:00', 'Completed'),
(500036, 200001, 400036, 200002, '2025-11-07', '10:30:00', '11:00:00', 'No Show'),
(500037, 200001, 400037, 200002, '2025-11-10', '09:00:00', '09:30:00', 'Completed'),
(500038, 200001, 400038, NULL, '2025-11-10', '10:00:00', '10:45:00', 'Completed'),
(500039, 200001, 400039, 200002, '2025-11-11', '09:00:00', '09:45:00', 'Completed'),
(500040, 200001, 400040, 200002, '2025-11-11', '10:30:00', '11:15:00', 'Completed'),
(500041, 200001, 400041, NULL, '2025-11-12', '09:00:00', '09:30:00', 'Completed'),
(500042, 200001, 400042, 200002, '2025-11-12', '10:00:00', '10:45:00', 'Completed'),
(500043, 200001, 400043, 200002, '2025-11-13', '09:00:00', '09:45:00', 'Completed'),
(500044, 200001, 400044, NULL, '2025-11-13', '10:30:00', '11:00:00', 'Completed'),
(500045, 200001, 400045, 200002, '2025-11-14', '09:00:00', '09:30:00', 'Completed'),
(500046, 200001, 400046, 200002, '2025-11-14', '10:00:00', '10:45:00', 'Completed'),
(500047, 200001, 400047, NULL, '2025-11-17', '09:00:00', '09:45:00', 'No Show'),
(500048, 200001, 400048, 200002, '2025-11-17', '10:30:00', '11:15:00', 'Completed'),
(500049, 200001, 400049, 200002, '2025-11-18', '09:00:00', '09:30:00', 'Completed'),
(500050, 200001, 400050, NULL, '2025-11-18', '10:00:00', '10:45:00', 'Completed'),
(500051, 200001, 400001, 200002, '2025-11-19', '09:00:00', '09:45:00', 'Completed'),
(500052, 200001, 400002, 200002, '2025-11-19', '10:30:00', '11:00:00', 'Completed'),
(500053, 200001, 400003, NULL, '2025-11-19', '13:00:00', '13:45:00', 'Completed'),
(500054, 200001, 400004, 200002, '2025-11-20', '09:00:00', '09:30:00', 'Completed'),
(500055, 200001, 400005, 200002, '2025-11-20', '10:00:00', '10:45:00', 'Completed'),
(500056, 200001, 400006, NULL, '2025-11-21', '09:00:00', '09:45:00', 'Completed'),
(500057, 200001, 400007, 200002, '2025-11-21', '10:30:00', '11:15:00', 'Completed'),
(500058, 200001, 400008, 200002, '2025-11-24', '09:00:00', '09:30:00', 'Completed'),
(500059, 200001, 400009, NULL, '2025-11-24', '10:00:00', '10:45:00', 'Completed'),
(500060, 200001, 400010, 200002, '2025-11-25', '09:00:00', '09:45:00', 'Completed'),
(500061, 200001, 400011, 200002, '2025-11-25', '10:30:00', '11:00:00', 'Completed'),
(500062, 200001, 400012, NULL, '2025-11-25', '13:00:00', '13:45:00', 'Completed'),
(500063, 200001, 400013, 200002, '2025-11-26', '09:00:00', '09:30:00', 'Completed'),
(500064, 200001, 400014, 200002, '2025-11-26', '10:00:00', '10:45:00', 'Completed'),
(500065, 200001, 400015, NULL, '2025-11-27', '09:00:00', '09:45:00', 'Completed'),
(500066, 200001, 400016, 200002, '2025-11-27', '10:30:00', '11:15:00', 'Completed'),
(500067, 200001, 400017, 200002, '2025-11-28', '09:00:00', '09:30:00', 'Completed'),
(500068, 200001, 400018, NULL, '2025-11-28', '10:00:00', '10:45:00', 'No Show'),
(500069, 200001, 400019, 200002, '2025-12-01', '09:00:00', '09:45:00', 'Completed'),
(500070, 200001, 400020, 200002, '2025-12-01', '10:30:00', '11:00:00', 'Completed'),
(500071, 200001, 400021, NULL, '2025-12-02', '09:00:00', '09:30:00', 'Completed'),
(500072, 200001, 400022, 200002, '2025-12-02', '10:00:00', '10:45:00', 'Completed'),
(500073, 200001, 400023, 200002, '2025-12-03', '09:00:00', '09:45:00', 'Completed'),
(500074, 200001, 400024, NULL, '2025-12-03', '10:30:00', '11:15:00', 'Completed'),
(500075, 200001, 400025, 200002, '2025-12-04', '09:00:00', '09:30:00', 'Completed'),
(500076, 200001, 400026, 200002, '2025-12-04', '10:00:00', '10:45:00', 'Completed'),
(500077, 200001, 400027, NULL, '2025-12-05', '09:00:00', '09:45:00', 'Completed'),
(500078, 200001, 400028, 200002, '2025-12-05', '10:30:00', '11:00:00', 'Completed'),
(500079, 200001, 400029, 200002, '2025-12-08', '09:00:00', '09:30:00', 'Completed'),
(500080, 200001, 400030, NULL, '2025-12-08', '10:00:00', '10:45:00', 'Completed'),
(500081, 200001, 400031, 200002, '2025-12-09', '09:00:00', '09:45:00', 'Completed'),
(500082, 200001, 400032, 200002, '2025-12-09', '10:30:00', '11:15:00', 'Completed'),
(500083, 200001, 400033, NULL, '2025-12-09', '13:00:00', '13:45:00', 'Completed'),
(500084, 200001, 400034, 200002, '2025-12-10', '09:00:00', '09:30:00', 'Completed'),
(500085, 200001, 400035, 200002, '2025-12-10', '10:00:00', '10:45:00', 'Completed'),
(500086, 200001, 400036, NULL, '2025-12-11', '09:00:00', '09:45:00', 'Completed'),
(500087, 200001, 400037, 200002, '2025-12-11', '10:30:00', '11:00:00', 'Completed'),
(500088, 200001, 400038, 200002, '2025-12-12', '09:00:00', '09:30:00', 'Completed'),
(500089, 200001, 400039, NULL, '2025-12-12', '10:00:00', '10:45:00', 'Completed'),
(500090, 200001, 400040, 200002, '2025-12-12', '13:00:00', '13:45:00', 'Completed'),
(500091, 200001, 400041, 200002, '2025-12-14', '09:00:00', '09:45:00', 'Scheduled'),
(500092, 200001, 400042, NULL, '2025-12-14', '10:30:00', '11:15:00', 'Scheduled'),
(500093, 200001, 400043, 200002, '2025-12-14', '13:00:00', '13:45:00', 'Scheduled'),
(500094, 200001, 400044, 200002, '2025-12-15', '09:00:00', '09:30:00', 'Scheduled'),
(500095, 200001, 400045, NULL, '2025-12-15', '10:00:00', '10:45:00', 'Scheduled'),
(500096, 200001, 400046, 200002, '2025-12-16', '09:00:00', '09:45:00', 'Scheduled'),
(500097, 200001, 400047, 200002, '2025-12-16', '10:30:00', '11:00:00', 'Scheduled'),
(500098, 200001, 400048, NULL, '2025-12-17', '09:00:00', '09:30:00', 'Scheduled'),
(500099, 200001, 400049, 200002, '2025-12-17', '10:00:00', '10:45:00', 'Scheduled'),
(500100, 200001, 400050, 200002, '2025-12-18', '09:00:00', '09:45:00', 'Scheduled'),
(500101, 200001, 400051, NULL, '2025-12-18', '10:30:00', '11:15:00', 'Scheduled'),
(500102, 200001, 400052, 200002, '2025-12-19', '09:00:00', '09:30:00', 'Scheduled'),
(500103, 200001, 400053, 200002, '2025-12-19', '10:00:00', '10:45:00', 'Scheduled'),
(500104, 200001, 400054, NULL, '2025-12-22', '09:00:00', '09:45:00', 'Scheduled'),
(500105, 200001, 400055, 200002, '2025-12-22', '10:30:00', '11:00:00', 'Scheduled'),
(500106, 200001, 400056, 200002, '2025-12-23', '09:00:00', '09:30:00', 'Scheduled'),
(500107, 200001, 400057, NULL, '2025-12-23', '10:00:00', '10:45:00', 'Scheduled'),
(500108, 200001, 400058, 200002, '2025-12-24', '09:00:00', '09:45:00', 'Scheduled'),
(500109, 200001, 400059, 200002, '2025-12-24', '10:30:00', '11:15:00', 'Scheduled'),
(500110, 200001, 400060, NULL, '2025-12-26', '09:00:00', '09:30:00', 'Scheduled'),
(500111, 200001, 400001, 200002, '2025-12-26', '10:00:00', '10:45:00', 'Scheduled'),
(500112, 200001, 400002, 200002, '2025-12-29', '09:00:00', '09:45:00', 'Scheduled'),
(500113, 200001, 400003, NULL, '2025-12-29', '10:30:00', '11:00:00', 'Scheduled'),
(500114, 200001, 400004, 200002, '2025-12-30', '09:00:00', '09:30:00', 'Scheduled'),
(500115, 200001, 400005, 200002, '2025-12-30', '10:00:00', '10:45:00', 'Scheduled'),
(500116, 200001, 400006, NULL, '2025-12-31', '09:00:00', '09:45:00', 'Scheduled'),
(500117, 200001, 400007, 200002, '2025-12-31', '10:30:00', '11:15:00', 'Scheduled'),
(500118, 200001, 400008, 200002, '2025-12-31', '13:00:00', '13:45:00', 'Scheduled'),
(500119, 200001, 400009, NULL, '2026-01-02', '09:00:00', '09:30:00', 'Scheduled'),
(500120, 200001, 400010, 200002, '2026-01-02', '10:00:00', '10:45:00', 'Scheduled'),
(500121, 200001, 400011, 200002, '2026-01-05', '09:00:00', '09:45:00', 'Scheduled'),
(500122, 200001, 400012, NULL, '2026-01-05', '10:30:00', '11:00:00', 'Scheduled'),
(500123, 200001, 400013, 200002, '2026-01-07', '09:00:00', '09:30:00', 'Scheduled'),
(500124, 200001, 400014, 200002, '2026-01-07', '10:00:00', '10:45:00', 'Scheduled'),
(500125, 200001, 400015, NULL, '2026-01-08', '09:00:00', '09:45:00', 'Scheduled'),
(500126, 200001, 400016, 200002, '2026-01-08', '10:30:00', '11:15:00', 'Scheduled'),
(500127, 200001, 400017, 200002, '2026-01-09', '09:00:00', '09:30:00', 'Scheduled'),
(500128, 200001, 400018, NULL, '2026-01-09', '10:00:00', '10:45:00', 'Scheduled'),
(500129, 200001, 400019, 200002, '2026-01-12', '09:00:00', '09:45:00', 'Scheduled'),
(500130, 200001, 400020, 200002, '2026-01-12', '10:30:00', '11:00:00', 'Scheduled');

-- --------------------------------------------------------

--
-- Table structure for table `assistants`
--

CREATE TABLE `assistants` (
  `assistantID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assistants`
--

INSERT INTO `assistants` (`assistantID`) VALUES
(200002);

-- --------------------------------------------------------

--
-- Table structure for table `dentists`
--

CREATE TABLE `dentists` (
  `dentistID` int(11) NOT NULL,
  `specialization` varchar(32) NOT NULL,
  `license_number` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dentists`
--

INSERT INTO `dentists` (`dentistID`, `specialization`, `license_number`) VALUES
(200001, 'General Dentistry', 'DEN-2020-54872');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeID` int(11) NOT NULL,
  `roleID` int(11) NOT NULL,
  `emp_first_name` varchar(32) NOT NULL,
  `emp_middle_name` varchar(32) DEFAULT NULL,
  `emp_last_name` varchar(32) NOT NULL,
  `emp_phone` varchar(32) DEFAULT NULL,
  `emp_email` varchar(32) DEFAULT NULL,
  `date_hired` date NOT NULL,
  `status` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeID`, `roleID`, `emp_first_name`, `emp_middle_name`, `emp_last_name`, `emp_phone`, `emp_email`, `date_hired`, `status`) VALUES
(123, 100004, 'Karlito', 'M', 'Campos', '555-6834', 'k.campos20@gmail.com', '2025-12-05', 'Active'),
(200001, 100001, 'Michael', 'James', 'Chen', '555-0101', 'michael.chen@dentalclinic.com', '2020-03-15', 'Active'),
(200002, 100002, 'Sarah', 'Marie', 'Rodriguez', '555-0102', 'sarah.rodriguez@dentalclinic.com', '2021-06-10', 'Active'),
(200003, 100003, 'David', 'William', 'Kim', '555-0103', 'david.kim@dentalclinic.com', '2019-11-22', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `employee_roles`
--

CREATE TABLE `employee_roles` (
  `roleID` int(11) NOT NULL,
  `role_name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_roles`
--

INSERT INTO `employee_roles` (`roleID`, `role_name`) VALUES
(100001, 'Dentist'),
(100002, 'Dental Assistant'),
(100003, 'Receptionist'),
(100004, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoiceID` int(11) NOT NULL,
  `patientID` int(11) NOT NULL,
  `treatmentID` int(11) NOT NULL,
  `invoice_date` date NOT NULL,
  `total_amount` double DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`invoiceID`, `patientID`, `treatmentID`, `invoice_date`, `total_amount`, `status`) VALUES
(800001, 400001, 600001, '2025-10-21', 120, 'Paid'),
(800002, 400002, 600002, '2025-10-21', 75, 'Paid'),
(800003, 400003, 600003, '2025-10-21', 180, 'Paid'),
(800004, 400004, 600004, '2025-10-22', 120, 'Paid'),
(800005, 400005, 600005, '2025-10-22', 950, 'Paid'),
(800006, 400006, 600006, '2025-10-23', 220, 'Paid'),
(800007, 400007, 600007, '2025-10-23', 350, 'Paid'),
(800008, 400008, 600008, '2025-10-23', 1100, 'Paid'),
(800009, 400009, 600009, '2025-10-24', 120, 'Paid'),
(800010, 400010, 600010, '2025-10-24', 180, 'Paid'),
(800011, 400011, 600011, '2025-10-24', 150, 'Paid'),
(800012, 400012, 600012, '2025-10-25', 85, 'Paid'),
(800013, 400013, 600013, '2025-10-25', 950, 'Paid'),
(800014, 400014, 600014, '2025-10-27', 120, 'Paid'),
(800015, 400015, 600015, '2025-10-27', 220, 'Paid'),
(800016, 400016, 600016, '2025-10-28', 120, 'Paid'),
(800017, 400017, 600017, '2025-10-28', 75, 'Paid'),
(800018, 400018, 600018, '2025-10-29', 180, 'Paid'),
(800019, 400019, 600019, '2025-10-29', 1100, 'Paid'),
(800020, 400020, 600020, '2025-10-29', 950, 'Paid'),
(800021, 400021, 600021, '2025-10-30', 120, 'Paid'),
(800022, 400022, 600022, '2025-10-30', 150, 'Paid'),
(800023, 400023, 600023, '2025-10-31', 50, 'Paid'),
(800024, 400024, 600024, '2025-10-31', 120, 'Paid'),
(800025, 400025, 600025, '2025-10-31', 180, 'Paid'),
(800026, 400026, 600026, '2025-11-03', 75, 'Paid'),
(800027, 400027, 600027, '2025-11-03', 950, 'Paid'),
(800028, 400028, 600028, '2025-11-04', 220, 'Paid'),
(800029, 400029, 600029, '2025-11-04', 120, 'Paid'),
(800030, 400030, 600030, '2025-11-05', 1100, 'Paid'),
(800031, 400031, 600031, '2025-11-05', 350, 'Paid'),
(800032, 400032, 600032, '2025-11-05', 150, 'Paid'),
(800033, 400033, 600033, '2025-11-06', 120, 'Paid'),
(800034, 400034, 600034, '2025-11-06', 180, 'Paid'),
(800035, 400035, 600035, '2025-11-07', 950, 'Paid'),
(800036, 400036, 600036, '2025-11-07', 50, 'Pending'),
(800037, 400037, 600037, '2025-11-10', 120, 'Paid'),
(800038, 400038, 600038, '2025-11-10', 220, 'Paid'),
(800039, 400039, 600039, '2025-11-11', 1100, 'Paid'),
(800040, 400040, 600040, '2025-11-11', 75, 'Paid'),
(800041, 400041, 600041, '2025-11-12', 120, 'Paid'),
(800042, 400042, 600042, '2025-11-12', 180, 'Paid'),
(800043, 400043, 600043, '2025-11-13', 950, 'Paid'),
(800044, 400044, 600044, '2025-11-13', 150, 'Paid'),
(800045, 400045, 600045, '2025-11-14', 120, 'Paid'),
(800046, 400046, 600046, '2025-11-14', 220, 'Paid'),
(800047, 400047, 600047, '2025-11-17', 50, 'Pending'),
(800048, 400048, 600048, '2025-11-17', 120, 'Paid'),
(800049, 400049, 600049, '2025-11-18', 85, 'Paid'),
(800050, 400050, 600050, '2025-11-18', 180, 'Paid'),
(800051, 400001, 600051, '2025-11-19', 120, 'Paid'),
(800052, 400002, 600052, '2025-11-19', 1100, 'Paid'),
(800053, 400003, 600053, '2025-11-19', 950, 'Paid'),
(800054, 400004, 600054, '2025-11-20', 120, 'Paid'),
(800055, 400005, 600055, '2025-11-20', 220, 'Paid'),
(800056, 400006, 600056, '2025-11-21', 150, 'Paid'),
(800057, 400007, 600057, '2025-11-21', 350, 'Paid'),
(800058, 400008, 600058, '2025-11-24', 120, 'Paid'),
(800059, 400009, 600059, '2025-11-24', 180, 'Paid'),
(800060, 400010, 600060, '2025-11-25', 950, 'Paid'),
(800061, 400011, 600061, '2025-11-25', 1100, 'Paid'),
(800062, 400012, 600062, '2025-11-25', 75, 'Paid'),
(800063, 400013, 600063, '2025-11-26', 120, 'Paid'),
(800064, 400014, 600064, '2025-11-26', 220, 'Paid'),
(800065, 400015, 600065, '2025-11-27', 150, 'Paid'),
(800066, 400016, 600066, '2025-11-27', 120, 'Paid'),
(800067, 400017, 600067, '2025-11-28', 180, 'Paid'),
(800068, 400018, 600068, '2025-11-28', 50, 'Pending'),
(800069, 400019, 600069, '2025-12-01', 120, 'Paid'),
(800070, 400020, 600070, '2025-12-01', 950, 'Paid'),
(800071, 400021, 600071, '2025-12-02', 1100, 'Paid'),
(800072, 400022, 600072, '2025-12-02', 120, 'Paid'),
(800073, 400023, 600073, '2025-12-03', 220, 'Paid'),
(800074, 400024, 600074, '2025-12-03', 150, 'Paid'),
(800075, 400025, 600075, '2025-12-04', 350, 'Paid'),
(800076, 400026, 600076, '2025-12-04', 120, 'Paid'),
(800077, 400027, 600077, '2025-12-05', 180, 'Paid'),
(800078, 400028, 600078, '2025-12-05', 75, 'Paid'),
(800079, 400029, 600079, '2025-12-08', 120, 'Paid'),
(800080, 400030, 600080, '2025-12-08', 950, 'Paid'),
(800081, 400031, 600081, '2025-12-09', 220, 'Paid'),
(800082, 400032, 600082, '2025-12-09', 1100, 'Paid'),
(800083, 400033, 600083, '2025-12-09', 150, 'Paid'),
(800084, 400034, 600084, '2025-12-10', 120, 'Paid'),
(800085, 400035, 600085, '2025-12-10', 180, 'Paid'),
(800086, 400036, 600086, '2025-12-11', 350, 'Paid'),
(800087, 400037, 600087, '2025-12-11', 75, 'Paid'),
(800088, 400038, 600088, '2025-12-12', 120, 'Pending'),
(800089, 400039, 600089, '2025-12-12', 950, 'Pending'),
(800090, 400040, 600090, '2025-12-12', 220, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patientID` int(11) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `middle_name` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) NOT NULL,
  `birthdate` date NOT NULL,
  `sex` varchar(32) NOT NULL,
  `blood_type` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `date_registered` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patientID`, `first_name`, `middle_name`, `last_name`, `birthdate`, `sex`, `blood_type`, `phone`, `email`, `address`, `date_registered`) VALUES
(400001, 'Jennifer', 'Anne', 'Smith', '1985-04-12', 'Female', 'O+', '555-0201', 'jennifer.smith@email.com', '123 Maple St, Springfield', '2025-10-15'),
(400002, 'Robert', 'James', 'Johnson', '1990-07-23', 'Male', 'A+', '555-0202', 'robert.johnson@email.com', '456 Oak Ave, Springfield', '2025-10-16'),
(400003, 'Maria', 'Isabel', 'Garcia', '1978-11-05', 'Female', 'B+', '555-0203', 'maria.garcia@email.com', '789 Pine Rd, Springfield', '2025-10-17'),
(400004, 'David', 'Thomas', 'Williams', '1995-02-18', 'Male', 'AB+', '555-0204', 'david.williams@email.com', '101 Elm St, Springfield', '2025-10-18'),
(400005, 'Lisa', 'Marie', 'Brown', '1982-09-30', 'Female', 'O-', '555-0205', 'lisa.brown@email.com', '202 Birch Ln, Springfield', '2025-10-19'),
(400006, 'James', 'Edward', 'Davis', '1975-12-15', 'Male', 'A-', '555-0206', 'james.davis@email.com', '303 Cedar Blvd, Springfield', '2025-10-20'),
(400007, 'Patricia', 'Lynn', 'Miller', '1992-03-22', 'Female', 'B+', '555-0207', 'patricia.miller@email.com', '404 Spruce Dr, Springfield', '2025-10-21'),
(400008, 'John', 'Michael', 'Wilson', '1988-06-08', 'Male', 'O+', '555-0208', 'john.wilson@email.com', '505 Walnut Ct, Springfield', '2025-10-22'),
(400009, 'Linda', 'Susan', 'Moore', '1979-01-14', 'Female', 'A+', '555-0209', 'linda.moore@email.com', '606 Cherry St, Springfield', '2025-10-23'),
(400010, 'William', 'Robert', 'Taylor', '1991-08-09', 'Male', 'B-', '555-0210', 'william.taylor@email.com', '707 Aspen Way, Springfield', '2025-10-24'),
(400011, 'Elizabeth', 'Grace', 'Anderson', '1987-05-17', 'Female', 'AB+', '555-0211', 'elizabeth.anderson@email.com', '808 Redwood Rd, Springfield', '2025-10-25'),
(400012, 'Richard', 'Charles', 'Thomas', '1993-10-31', 'Male', 'O+', '555-0212', 'richard.thomas@email.com', '909 Magnolia Ave, Springfield', '2025-10-26'),
(400013, 'Jessica', 'Ann', 'Jackson', '1984-12-25', 'Female', 'A-', '555-0213', 'jessica.jackson@email.com', '110 Palm St, Springfield', '2025-10-27'),
(400014, 'Charles', 'Henry', 'White', '1976-02-28', 'Male', 'B+', '555-0214', 'charles.white@email.com', '111 Sycamore Ln, Springfield', '2025-10-28'),
(400015, 'Karen', 'Diane', 'Harris', '1990-07-04', 'Female', 'O-', '555-0215', 'karen.harris@email.com', '112 Willow Way, Springfield', '2025-10-29'),
(400016, 'Christopher', 'Paul', 'Martin', '1981-09-11', 'Male', 'AB-', '555-0216', 'christopher.martin@email.com', '113 Oakwood Dr, Springfield', '2025-10-30'),
(400017, 'Nancy', 'Carol', 'Thompson', '1994-04-19', 'Female', 'A+', '555-0217', 'nancy.thompson@email.com', '114 Pinecrest Rd, Springfield', '2025-10-31'),
(400018, 'Daniel', 'Joseph', 'Garcia', '1989-11-07', 'Male', 'B+', '555-0218', 'daniel.garcia@email.com', '115 Maplewood Ave, Springfield', '2025-11-01'),
(400019, 'Betty', 'Louise', 'Martinez', '1977-03-26', 'Female', 'O+', '555-0219', 'betty.martinez@email.com', '116 Birchwood St, Springfield', '2025-11-02'),
(400020, 'Matthew', 'Andrew', 'Robinson', '1995-06-13', 'Male', 'A-', '555-0220', 'matthew.robinson@email.com', '117 Cedarhurst Ln, Springfield', '2025-11-03'),
(400021, 'Susan', 'Margaret', 'Clark', '1986-08-24', 'Female', 'B+', '555-0221', 'susan.clark@email.com', '118 Elmwood Dr, Springfield', '2025-11-04'),
(400022, 'Anthony', 'Mark', 'Rodriguez', '1983-01-09', 'Male', 'AB+', '555-0222', 'anthony.rodriguez@email.com', '119 Sprucewood Ct, Springfield', '2025-11-05'),
(400023, 'Sarah', 'Elizabeth', 'Lewis', '1992-05-30', 'Female', 'O+', '555-0223', 'sarah.lewis@email.com', '120 Walnutwood Way, Springfield', '2025-11-06'),
(400024, 'Donald', 'Patrick', 'Lee', '1974-10-12', 'Male', 'A+', '555-0224', 'donald.lee@email.com', '121 Cherrywood Rd, Springfield', '2025-11-07'),
(400025, 'Dorothy', 'Jean', 'Walker', '1988-02-17', 'Female', 'B-', '555-0225', 'dorothy.walker@email.com', '122 Aspenwood Ave, Springfield', '2025-11-08'),
(400026, 'Mark', 'Steven', 'Hall', '1991-12-03', 'Male', 'O-', '555-0226', 'mark.hall@email.com', '123 Redwoodwood St, Springfield', '2025-11-09'),
(400027, 'Sandra', 'Ruth', 'Allen', '1979-06-28', 'Female', 'AB+', '555-0227', 'sandra.allen@email.com', '124 Palmwood Ln, Springfield', '2025-11-10'),
(400028, 'Paul', 'Christopher', 'Young', '1985-03-15', 'Male', 'A-', '555-0228', 'paul.young@email.com', '125 Magnoliawood Dr, Springfield', '2025-11-11'),
(400029, 'Carol', 'Ann', 'King', '1993-09-22', 'Female', 'B+', '555-0229', 'carol.king@email.com', '126 Willowwood Ct, Springfield', '2025-11-12'),
(400030, 'Steven', 'John', 'Wright', '1978-07-19', 'Male', 'O+', '555-0230', 'steven.wright@email.com', '127 Sycamorewood Way, Springfield', '2025-11-13'),
(400031, 'Donna', 'Marie', 'Scott', '1987-04-11', 'Female', 'A+', '555-0231', 'donna.scott@email.com', '128 Oakwoodwood Rd, Springfield', '2025-11-14'),
(400032, 'Kenneth', 'George', 'Green', '1990-08-05', 'Male', 'B-', '555-0232', 'kenneth.green@email.com', '129 Pinewoodwood Ave, Springfield', '2025-11-15'),
(400033, 'Michelle', 'Lynn', 'Baker', '1982-11-27', 'Female', 'AB-', '555-0233', 'michelle.baker@email.com', '130 Maplecrest St, Springfield', '2025-11-16'),
(400034, 'Edward', 'Francis', 'Adams', '1976-05-14', 'Male', 'O+', '555-0234', 'edward.adams@email.com', '131 Birchcrest Ln, Springfield', '2025-11-17'),
(400035, 'Emily', 'Rose', 'Nelson', '1994-01-08', 'Female', 'A-', '555-0235', 'emily.nelson@email.com', '132 Cedarcrest Dr, Springfield', '2025-11-18'),
(400036, 'Brian', 'Joseph', 'Hill', '1989-10-23', 'Male', 'B+', '555-0236', 'brian.hill@email.com', '133 Elmcrest Ct, Springfield', '2025-11-19'),
(400037, 'Amanda', 'Kay', 'Ramirez', '1977-12-16', 'Female', 'O-', '555-0237', 'amanda.ramirez@email.com', '134 Sprucecrest Way, Springfield', '2025-11-20'),
(400038, 'Ronald', 'David', 'Campbell', '1983-02-04', 'Male', 'AB+', '555-0238', 'ronald.campbell@email.com', '135 Walnutcrest Rd, Springfield', '2025-11-21'),
(400039, 'Melissa', 'Sue', 'Mitchell', '1991-06-29', 'Female', 'A+', '555-0239', 'melissa.mitchell@email.com', '136 Cherrycrest Ave, Springfield', '2025-11-22'),
(400040, 'Kevin', 'Raymond', 'Roberts', '1979-09-07', 'Male', 'B-', '555-0240', 'kevin.roberts@email.com', '137 Aspencrest St, Springfield', '2025-11-23'),
(400041, 'Deborah', 'Jane', 'Carter', '1986-03-18', 'Female', 'O+', '555-0241', 'deborah.carter@email.com', '138 Redwoodcrest Ln, Springfield', '2025-11-24'),
(400042, 'Jason', 'Thomas', 'Phillips', '1993-07-02', 'Male', 'A-', '555-0242', 'jason.phillips@email.com', '139 Palmcrest Dr, Springfield', '2025-11-25'),
(400043, 'Laura', 'Beth', 'Evans', '1975-10-25', 'Female', 'B+', '555-0243', 'laura.evans@email.com', '140 Magnoliacrest Ct, Springfield', '2025-11-26'),
(400044, 'Gary', 'William', 'Turner', '1988-05-31', 'Male', 'AB-', '555-0244', 'gary.turner@email.com', '141 Willowcrest Way, Springfield', '2025-11-27'),
(400045, 'Sharon', 'Anne', 'Parker', '1980-01-26', 'Female', 'O-', '555-0245', 'sharon.parker@email.com', '142 Sycamorecrest Rd, Springfield', '2025-11-28'),
(400046, 'Eric', 'Michael', 'Collins', '1992-04-13', 'Male', 'A+', '555-0246', 'eric.collins@email.com', '143 Oakcrest Ave, Springfield', '2025-11-29'),
(400047, 'Cynthia', 'Diane', 'Edwards', '1978-08-20', 'Female', 'B-', '555-0247', 'cynthia.edwards@email.com', '144 Pinehurst St, Springfield', '2025-11-30'),
(400048, 'Joshua', 'Andrew', 'Stewart', '1985-11-09', 'Male', 'O+', '555-0248', 'joshua.stewart@email.com', '145 Maplehurst Ln, Springfield', '2025-12-01'),
(400049, 'Kathleen', 'Mary', 'Flores', '1990-12-22', 'Female', 'AB+', '555-0249', 'kathleen.flores@email.com', '146 Birchhurst Dr, Springfield', '2025-12-05'),
(400050, 'Timothy', 'John', 'Morris', '1983-06-06', 'Male', 'A-', '555-0250', 'timothy.morris@email.com', '147 Cedarhurst Ct, Springfield', '2025-12-10'),
(400051, 'Barbara', 'Sue', 'Collins', '1975-03-18', 'Female', 'O+', '555-0251', 'barbara.collins@email.com', '148 Elmhurst St, Springfield', '2025-12-11'),
(400052, 'Thomas', 'Edward', 'Parker', '1988-09-22', 'Male', 'A+', '555-0252', 'thomas.parker@email.com', '149 Oakhurst Ln, Springfield', '2025-12-12'),
(400053, 'Margaret', 'Rose', 'Evans', '1991-11-30', 'Female', 'B+', '555-0253', 'margaret.evans@email.com', '150 Pinecrest Ave, Springfield', '2025-12-13'),
(400054, 'Joseph', 'Michael', 'Stewart', '1979-04-25', 'Male', 'AB-', '555-0254', 'joseph.stewart@email.com', '151 Maplewood Dr, Springfield', '2025-10-19'),
(400055, 'Helen', 'Grace', 'Morris', '1986-07-12', 'Female', 'O-', '555-0255', 'helen.morris@email.com', '152 Birchwood Rd, Springfield', '2025-10-20'),
(400056, 'Frank', 'William', 'Rivera', '1993-02-28', 'Male', 'A-', '555-0256', 'frank.rivera@email.com', '153 Cedarwood Ct, Springfield', '2025-10-21'),
(400057, 'Donna', 'Jean', 'Peterson', '1974-08-14', 'Female', 'B+', '555-0257', 'donna.peterson@email.com', '154 Elmwood Way, Springfield', '2025-10-22'),
(400058, 'Raymond', 'James', 'Reed', '1989-12-03', 'Male', 'AB+', '555-0258', 'raymond.reed@email.com', '155 Sprucewood St, Springfield', '2025-10-23'),
(400059, 'Carolyn', 'Ann', 'Cook', '1982-05-19', 'Female', 'O+', '555-0259', 'carolyn.cook@email.com', '156 Walnutwood Ln, Springfield', '2025-10-24'),
(400060, 'Patrick', 'John', 'Morgan', '1995-10-07', 'Male', 'A+', '555-0260', 'patrick.morgan@email.com', '157 Cherrywood Dr, Springfield', '2025-10-25');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `paymentID` int(11) NOT NULL,
  `invoiceID` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_time` time NOT NULL,
  `amount_paid` double NOT NULL,
  `payment_method` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`paymentID`, `invoiceID`, `payment_date`, `payment_time`, `amount_paid`, `payment_method`) VALUES
(900001, 800001, '2025-10-21', '10:15:00', 120, 'Credit Card'),
(900002, 800002, '2025-10-21', '11:30:00', 75, 'Cash'),
(900003, 800003, '2025-10-21', '14:45:00', 180, 'Debit Card'),
(900004, 800004, '2025-10-22', '10:30:00', 120, 'Credit Card'),
(900005, 800005, '2025-10-22', '15:20:00', 950, 'Insurance'),
(900006, 800006, '2025-10-23', '11:45:00', 220, 'Credit Card'),
(900007, 800007, '2025-10-23', '14:15:00', 350, 'Cash'),
(900008, 800008, '2025-10-23', '16:30:00', 1100, 'Credit Card'),
(900009, 800009, '2025-10-24', '10:45:00', 120, 'Debit Card'),
(900010, 800010, '2025-10-24', '12:30:00', 180, 'Credit Card'),
(900011, 800011, '2025-10-24', '14:20:00', 150, 'Cash'),
(900012, 800012, '2025-10-25', '11:15:00', 85, 'Credit Card'),
(900013, 800013, '2025-10-25', '15:45:00', 950, 'Insurance'),
(900014, 800014, '2025-10-27', '10:30:00', 120, 'Debit Card'),
(900015, 800015, '2025-10-27', '12:15:00', 220, 'Credit Card'),
(900016, 800016, '2025-10-28', '11:00:00', 120, 'Cash'),
(900017, 800017, '2025-10-28', '13:30:00', 75, 'Credit Card'),
(900018, 800018, '2025-10-29', '10:45:00', 180, 'Debit Card'),
(900019, 800019, '2025-10-29', '14:20:00', 1100, 'Credit Card'),
(900020, 800020, '2025-10-29', '16:10:00', 950, 'Insurance'),
(900021, 800021, '2025-10-30', '11:30:00', 120, 'Credit Card'),
(900022, 800022, '2025-10-30', '13:45:00', 150, 'Cash'),
(900023, 800024, '2025-10-31', '11:15:00', 120, 'Debit Card'),
(900024, 800025, '2025-10-31', '14:30:00', 180, 'Credit Card'),
(900025, 800026, '2025-11-03', '10:45:00', 75, 'Cash'),
(900026, 800027, '2025-11-03', '13:20:00', 950, 'Insurance'),
(900027, 800028, '2025-11-04', '11:30:00', 220, 'Credit Card'),
(900028, 800029, '2025-11-04', '14:15:00', 120, 'Debit Card'),
(900029, 800030, '2025-11-05', '10:30:00', 1100, 'Credit Card'),
(900030, 800031, '2025-11-05', '13:45:00', 350, 'Cash'),
(900031, 800032, '2025-11-05', '15:30:00', 150, 'Credit Card'),
(900032, 800033, '2025-11-06', '11:15:00', 120, 'Debit Card'),
(900033, 800034, '2025-11-06', '13:30:00', 180, 'Credit Card'),
(900034, 800035, '2025-11-07', '10:45:00', 950, 'Insurance'),
(900035, 800037, '2025-11-10', '11:30:00', 120, 'Credit Card'),
(900036, 800038, '2025-11-10', '14:15:00', 220, 'Cash'),
(900037, 800039, '2025-11-11', '10:30:00', 1100, 'Credit Card'),
(900038, 800040, '2025-11-11', '13:45:00', 75, 'Debit Card'),
(900039, 800041, '2025-11-12', '11:15:00', 120, 'Credit Card'),
(900040, 800042, '2025-11-12', '13:30:00', 180, 'Cash'),
(900041, 800043, '2025-11-13', '10:45:00', 950, 'Insurance'),
(900042, 800044, '2025-11-13', '14:20:00', 150, 'Credit Card'),
(900043, 800045, '2025-11-14', '11:30:00', 120, 'Debit Card'),
(900044, 800046, '2025-11-14', '13:45:00', 220, 'Credit Card'),
(900045, 800048, '2025-11-17', '10:30:00', 120, 'Cash'),
(900046, 800049, '2025-11-18', '11:15:00', 85, 'Credit Card'),
(900047, 800050, '2025-11-18', '13:30:00', 180, 'Debit Card'),
(900048, 800051, '2025-11-19', '10:45:00', 120, 'Credit Card'),
(900049, 800052, '2025-11-19', '14:20:00', 1100, 'Insurance'),
(900050, 800053, '2025-11-19', '16:10:00', 950, 'Credit Card'),
(900051, 800054, '2025-11-20', '11:30:00', 120, 'Cash'),
(900052, 800055, '2025-11-20', '13:45:00', 220, 'Credit Card'),
(900053, 800056, '2025-11-21', '10:30:00', 150, 'Debit Card'),
(900054, 800057, '2025-11-21', '14:15:00', 350, 'Credit Card'),
(900055, 800058, '2025-11-24', '11:15:00', 120, 'Cash'),
(900056, 800059, '2025-11-24', '13:30:00', 180, 'Credit Card'),
(900057, 800060, '2025-11-25', '10:45:00', 950, 'Insurance'),
(900058, 800061, '2025-11-25', '14:20:00', 1100, 'Credit Card'),
(900059, 800062, '2025-11-25', '16:10:00', 75, 'Debit Card'),
(900060, 800063, '2025-11-26', '11:30:00', 120, 'Credit Card'),
(900061, 800064, '2025-11-26', '13:45:00', 220, 'Cash'),
(900062, 800065, '2025-11-27', '10:30:00', 150, 'Credit Card'),
(900063, 800066, '2025-11-27', '14:15:00', 120, 'Debit Card'),
(900064, 800067, '2025-11-28', '11:15:00', 180, 'Credit Card'),
(900065, 800069, '2025-12-01', '10:45:00', 120, 'Cash'),
(900066, 800070, '2025-12-01', '13:20:00', 950, 'Insurance'),
(900067, 800071, '2025-12-02', '11:30:00', 1100, 'Credit Card'),
(900068, 800072, '2025-12-02', '14:15:00', 120, 'Debit Card'),
(900069, 800073, '2025-12-03', '10:30:00', 220, 'Credit Card'),
(900070, 800074, '2025-12-03', '13:45:00', 150, 'Cash'),
(900071, 800075, '2025-12-04', '11:15:00', 350, 'Credit Card'),
(900072, 800076, '2025-12-04', '14:30:00', 120, 'Debit Card'),
(900073, 800077, '2025-12-05', '10:45:00', 180, 'Credit Card'),
(900074, 800078, '2025-12-05', '13:20:00', 75, 'Cash'),
(900075, 800079, '2025-12-08', '11:30:00', 120, 'Credit Card'),
(900076, 800080, '2025-12-08', '14:15:00', 950, 'Insurance'),
(900077, 800081, '2025-12-09', '10:30:00', 220, 'Credit Card'),
(900078, 800082, '2025-12-09', '13:45:00', 1100, 'Debit Card'),
(900079, 800083, '2025-12-09', '15:30:00', 150, 'Credit Card'),
(900080, 800084, '2025-12-10', '11:15:00', 120, 'Cash'),
(900081, 800085, '2025-12-10', '13:30:00', 180, 'Credit Card'),
(900082, 800086, '2025-12-11', '10:45:00', 350, 'Debit Card'),
(900083, 800087, '2025-12-11', '14:20:00', 75, 'Credit Card'),
(900084, 800001, '2025-12-13', '09:00:00', 0, 'Credit Card'),
(900085, 800002, '2025-12-13', '10:00:00', 0, 'Cash'),
(900086, 800003, '2025-12-13', '11:00:00', 0, 'Debit Card'),
(900087, 800004, '2025-12-14', '09:00:00', 0, 'Credit Card'),
(900088, 800005, '2025-12-14', '10:00:00', 0, 'Insurance'),
(900089, 800006, '2025-12-14', '11:00:00', 0, 'Credit Card'),
(900090, 800007, '2025-12-15', '09:00:00', 0, 'Cash'),
(900091, 800008, '2025-12-15', '10:00:00', 0, 'Credit Card'),
(900092, 800009, '2025-12-15', '11:00:00', 0, 'Debit Card'),
(900093, 800010, '2025-12-16', '09:00:00', 0, 'Credit Card'),
(900094, 800011, '2025-12-16', '10:00:00', 0, 'Cash'),
(900095, 800012, '2025-12-16', '11:00:00', 0, 'Credit Card'),
(900096, 800013, '2025-12-17', '09:00:00', 0, 'Insurance'),
(900097, 800014, '2025-12-17', '10:00:00', 0, 'Debit Card'),
(900098, 800015, '2025-12-17', '11:00:00', 0, 'Credit Card'),
(900099, 800016, '2025-12-18', '09:00:00', 0, 'Cash'),
(900100, 800017, '2025-12-18', '10:00:00', 0, 'Credit Card'),
(900101, 800018, '2025-12-18', '11:00:00', 0, 'Debit Card'),
(900102, 800019, '2025-12-19', '09:00:00', 0, 'Credit Card'),
(900103, 800020, '2025-12-19', '10:00:00', 0, 'Insurance'),
(900104, 800021, '2025-12-19', '11:00:00', 0, 'Credit Card'),
(900105, 800022, '2025-12-20', '09:00:00', 0, 'Cash'),
(900106, 800024, '2025-12-20', '10:00:00', 0, 'Debit Card'),
(900107, 800025, '2025-12-20', '11:00:00', 0, 'Credit Card'),
(900108, 800023, '2025-12-14', '14:04:00', 50, 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `receptionists`
--

CREATE TABLE `receptionists` (
  `receptionistID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receptionists`
--

INSERT INTO `receptionists` (`receptionistID`) VALUES
(200003);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `serviceID` int(11) NOT NULL,
  `service_name` varchar(32) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `default_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`serviceID`, `service_name`, `description`, `default_price`) VALUES
(300001, 'Teeth Cleaning', 'Professional dental cleaning and polishing', 120),
(300002, 'Dental Filling', 'Tooth-colored composite filling', 180),
(300003, 'Root Canal', 'Endodontic treatment for infected tooth', 950),
(300004, 'Tooth Extraction', 'Simple tooth removal', 220),
(300005, 'Dental Crown', 'Porcelain crown placement', 1100),
(300006, 'Dental X-Ray', 'Full mouth radiographic imaging', 85),
(300007, 'Consultation', 'Initial examination and diagnosis', 75),
(300008, 'Teeth Whitening', 'Professional whitening treatment', 350),
(300009, 'Emergency Visit', 'Urgent dental care', 150);

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--

CREATE TABLE `treatments` (
  `treatmentID` int(11) NOT NULL,
  `patientID` int(11) NOT NULL,
  `dentistID` int(11) NOT NULL,
  `appointmentID` int(11) DEFAULT NULL,
  `treatment_date` date NOT NULL,
  `notes` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatments`
--

INSERT INTO `treatments` (`treatmentID`, `patientID`, `dentistID`, `appointmentID`, `treatment_date`, `notes`) VALUES
(600001, 400001, 200001, 500001, '2025-10-21', 'Teeth cleaning and examination'),
(600002, 400002, 200001, 500002, '2025-10-21', 'Consultation for tooth pain'),
(600003, 400003, 200001, 500003, '2025-10-21', 'Dental filling on tooth #3'),
(600004, 400004, 200001, 500004, '2025-10-22', 'Regular checkup'),
(600005, 400005, 200001, 500005, '2025-10-22', 'Root canal treatment'),
(600006, 400006, 200001, 500006, '2025-10-23', 'Tooth extraction #32'),
(600007, 400007, 200001, 500007, '2025-10-23', 'Teeth whitening session'),
(600008, 400008, 200001, 500008, '2025-10-23', 'Dental crown placement'),
(600009, 400009, 200001, 500009, '2025-10-24', 'Routine cleaning'),
(600010, 400010, 200001, 500010, '2025-10-24', 'Filling on tooth #14'),
(600011, 400011, 200001, 500011, '2025-10-24', 'Emergency toothache visit'),
(600012, 400012, 200001, 500012, '2025-10-25', 'Dental X-rays and cleaning'),
(600013, 400013, 200001, 500013, '2025-10-25', 'Root canal treatment'),
(600014, 400014, 200001, 500014, '2025-10-27', 'Regular checkup'),
(600015, 400015, 200001, 500015, '2025-10-27', 'Tooth extraction #1'),
(600016, 400016, 200001, 500016, '2025-10-28', 'Teeth cleaning'),
(600017, 400017, 200001, 500017, '2025-10-28', 'Consultation for braces'),
(600018, 400018, 200001, 500018, '2025-10-29', 'Filling on tooth #19'),
(600019, 400019, 200001, 500019, '2025-10-29', 'Dental crown preparation'),
(600020, 400020, 200001, 500020, '2025-10-29', 'Root canal retreatment'),
(600021, 400021, 200001, 500021, '2025-10-30', 'Regular cleaning'),
(600022, 400022, 200001, 500022, '2025-10-30', 'Emergency extraction'),
(600023, 400023, 200001, 500023, '2025-10-31', 'Missed appointment - no show'),
(600024, 400024, 200001, 500024, '2025-10-31', 'Teeth cleaning'),
(600025, 400025, 200001, 500025, '2025-10-31', 'Filling on tooth #5'),
(600026, 400026, 200001, 500026, '2025-11-03', 'Consultation and X-rays'),
(600027, 400027, 200001, 500027, '2025-11-03', 'Root canal treatment'),
(600028, 400028, 200001, 500028, '2025-11-04', 'Tooth extraction #17'),
(600029, 400029, 200001, 500029, '2025-11-04', 'Regular checkup'),
(600030, 400030, 200001, 500030, '2025-11-05', 'Dental crown cementation'),
(600031, 400031, 200001, 500031, '2025-11-05', 'Teeth whitening'),
(600032, 400032, 200001, 500032, '2025-11-05', 'Emergency visit for broken tooth'),
(600033, 400033, 200001, 500033, '2025-11-06', 'Cleaning and polishing'),
(600034, 400034, 200001, 500034, '2025-11-06', 'Filling on tooth #30'),
(600035, 400035, 200001, 500035, '2025-11-07', 'Root canal on tooth #7'),
(600036, 400036, 200001, 500036, '2025-11-07', 'Missed appointment - no show'),
(600037, 400037, 200001, 500037, '2025-11-10', 'Regular cleaning'),
(600038, 400038, 200001, 500038, '2025-11-10', 'Tooth extraction #16'),
(600039, 400039, 200001, 500039, '2025-11-11', 'Dental crown placement'),
(600040, 400040, 200001, 500040, '2025-11-11', 'Consultation for dentures'),
(600041, 400041, 200001, 500041, '2025-11-12', 'Teeth cleaning'),
(600042, 400042, 200001, 500042, '2025-11-12', 'Filling on tooth #12'),
(600043, 400043, 200001, 500043, '2025-11-13', 'Root canal treatment'),
(600044, 400044, 200001, 500044, '2025-11-13', 'Emergency visit'),
(600045, 400045, 200001, 500045, '2025-11-14', 'Regular checkup'),
(600046, 400046, 200001, 500046, '2025-11-14', 'Tooth extraction #28'),
(600047, 400047, 200001, 500047, '2025-11-17', 'Missed appointment - no show'),
(600048, 400048, 200001, 500048, '2025-11-17', 'Teeth cleaning'),
(600049, 400049, 200001, 500049, '2025-11-18', 'Dental X-rays'),
(600050, 400050, 200001, 500050, '2025-11-18', 'Filling on tooth #8'),
(600051, 400001, 200001, 500051, '2025-11-19', 'Follow-up cleaning'),
(600052, 400002, 200001, 500052, '2025-11-19', 'Crown preparation'),
(600053, 400003, 200001, 500053, '2025-11-19', 'Root canal on tooth #14'),
(600054, 400004, 200001, 500054, '2025-11-20', 'Regular cleaning'),
(600055, 400005, 200001, 500055, '2025-11-20', 'Tooth extraction #31'),
(600056, 400006, 200001, 500056, '2025-11-21', 'Emergency treatment'),
(600057, 400007, 200001, 500057, '2025-11-21', 'Teeth whitening follow-up'),
(600058, 400008, 200001, 500058, '2025-11-24', 'Regular checkup'),
(600059, 400009, 200001, 500059, '2025-11-24', 'Filling on tooth #19'),
(600060, 400010, 200001, 500060, '2025-11-25', 'Root canal treatment'),
(600061, 400011, 200001, 500061, '2025-11-25', 'Dental crown placement'),
(600062, 400012, 200001, 500062, '2025-11-25', 'Consultation for implant'),
(600063, 400013, 200001, 500063, '2025-11-26', 'Teeth cleaning'),
(600064, 400014, 200001, 500064, '2025-11-26', 'Tooth extraction #15'),
(600065, 400015, 200001, 500065, '2025-11-27', 'Emergency visit'),
(600066, 400016, 200001, 500066, '2025-11-27', 'Regular checkup'),
(600067, 400017, 200001, 500067, '2025-11-28', 'Filling on tooth #3'),
(600068, 400018, 200001, 500068, '2025-11-28', 'Missed appointment - no show'),
(600069, 400019, 200001, 500069, '2025-12-01', 'Teeth cleaning'),
(600070, 400020, 200001, 500070, '2025-12-01', 'Root canal retreatment'),
(600071, 400021, 200001, 500071, '2025-12-02', 'Dental crown cementation'),
(600072, 400022, 200001, 500072, '2025-12-02', 'Regular cleaning'),
(600073, 400023, 200001, 500073, '2025-12-03', 'Tooth extraction #32'),
(600074, 400024, 200001, 500074, '2025-12-03', 'Emergency treatment'),
(600075, 400025, 200001, 500075, '2025-12-04', 'Teeth whitening'),
(600076, 400026, 200001, 500076, '2025-12-04', 'Regular checkup'),
(600077, 400027, 200001, 500077, '2025-12-05', 'Filling on tooth #7'),
(600078, 400028, 200001, 500078, '2025-12-05', 'Consultation'),
(600079, 400029, 200001, 500079, '2025-12-08', 'Teeth cleaning'),
(600080, 400030, 200001, 500080, '2025-12-08', 'Root canal treatment'),
(600081, 400031, 200001, 500081, '2025-12-09', 'Tooth extraction #1'),
(600082, 400032, 200001, 500082, '2025-12-09', 'Dental crown placement'),
(600083, 400033, 200001, 500083, '2025-12-09', 'Emergency visit'),
(600084, 400034, 200001, 500084, '2025-12-10', 'Regular cleaning'),
(600085, 400035, 200001, 500085, '2025-12-10', 'Filling on tooth #14'),
(600086, 400036, 200001, 500086, '2025-12-11', 'Teeth whitening'),
(600087, 400037, 200001, 500087, '2025-12-11', 'Consultation for bridge'),
(600088, 400038, 200001, 500088, '2025-12-12', 'Regular checkup'),
(600089, 400039, 200001, 500089, '2025-12-12', 'Root canal treatment'),
(600090, 400040, 200001, 500090, '2025-12-12', 'Tooth extraction #17');

-- --------------------------------------------------------

--
-- Table structure for table `treatment_service`
--

CREATE TABLE `treatment_service` (
  `treatmentserviceID` int(11) NOT NULL,
  `treatmentID` int(11) NOT NULL,
  `serviceID` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment_service`
--

INSERT INTO `treatment_service` (`treatmentserviceID`, `treatmentID`, `serviceID`, `price`) VALUES
(700001, 600001, 300001, 120),
(700002, 600002, 300007, 75),
(700003, 600003, 300002, 180),
(700004, 600004, 300001, 120),
(700005, 600005, 300003, 950),
(700006, 600006, 300004, 220),
(700007, 600007, 300008, 350),
(700008, 600008, 300005, 1100),
(700009, 600009, 300001, 120),
(700010, 600010, 300002, 180),
(700011, 600011, 300009, 150),
(700012, 600012, 300006, 85),
(700013, 600013, 300003, 950),
(700014, 600014, 300001, 120),
(700015, 600015, 300004, 220),
(700016, 600016, 300001, 120),
(700017, 600017, 300007, 75),
(700018, 600018, 300002, 180),
(700019, 600019, 300005, 1100),
(700020, 600020, 300003, 950),
(700021, 600021, 300001, 120),
(700022, 600022, 300009, 150),
(700023, 600023, 300009, 50),
(700024, 600024, 300001, 120),
(700025, 600025, 300002, 180),
(700026, 600026, 300007, 75),
(700027, 600027, 300003, 950),
(700028, 600028, 300004, 220),
(700029, 600029, 300001, 120),
(700030, 600030, 300005, 1100),
(700031, 600031, 300008, 350),
(700032, 600032, 300009, 150),
(700033, 600033, 300001, 120),
(700034, 600034, 300002, 180),
(700035, 600035, 300003, 950),
(700036, 600036, 300009, 50),
(700037, 600037, 300001, 120),
(700038, 600038, 300004, 220),
(700039, 600039, 300005, 1100),
(700040, 600040, 300007, 75),
(700041, 600041, 300001, 120),
(700042, 600042, 300002, 180),
(700043, 600043, 300003, 950),
(700044, 600044, 300009, 150),
(700045, 600045, 300001, 120),
(700046, 600046, 300004, 220),
(700047, 600047, 300009, 50),
(700048, 600048, 300001, 120),
(700049, 600049, 300006, 85),
(700050, 600050, 300002, 180),
(700051, 600051, 300001, 120),
(700052, 600052, 300005, 1100),
(700053, 600053, 300003, 950),
(700054, 600054, 300001, 120),
(700055, 600055, 300004, 220),
(700056, 600056, 300009, 150),
(700057, 600057, 300008, 350),
(700058, 600058, 300001, 120),
(700059, 600059, 300002, 180),
(700060, 600060, 300003, 950),
(700061, 600061, 300005, 1100),
(700062, 600062, 300007, 75),
(700063, 600063, 300001, 120),
(700064, 600064, 300004, 220),
(700065, 600065, 300009, 150),
(700066, 600066, 300001, 120),
(700067, 600067, 300002, 180),
(700068, 600068, 300009, 50),
(700069, 600069, 300001, 120),
(700070, 600070, 300003, 950),
(700071, 600071, 300005, 1100),
(700072, 600072, 300001, 120),
(700073, 600073, 300004, 220),
(700074, 600074, 300009, 150),
(700075, 600075, 300008, 350),
(700076, 600076, 300001, 120),
(700077, 600077, 300002, 180),
(700078, 600078, 300007, 75),
(700079, 600079, 300001, 120),
(700080, 600080, 300003, 950),
(700081, 600081, 300004, 220),
(700082, 600082, 300005, 1100),
(700083, 600083, 300009, 150),
(700084, 600084, 300001, 120),
(700085, 600085, 300002, 180),
(700086, 600086, 300008, 350),
(700087, 600087, 300007, 75),
(700088, 600088, 300001, 120),
(700089, 600089, 300003, 950),
(700090, 600090, 300004, 220);

-- --------------------------------------------------------

--
-- Table structure for table `user_credentials`
--

CREATE TABLE `user_credentials` (
  `employeeID` int(11) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_credentials`
--

INSERT INTO `user_credentials` (`employeeID`, `password`) VALUES
(123, '123'),
(200001, 'securepass123'),
(200002, 'assistantpass456'),
(200003, 'receptionpass789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointmentID`),
  ADD KEY `appointments_FK1` (`patientID`),
  ADD KEY `appointments_FK2` (`dentistID`),
  ADD KEY `appointments_FK3` (`assistantID`);

--
-- Indexes for table `assistants`
--
ALTER TABLE `assistants`
  ADD PRIMARY KEY (`assistantID`);

--
-- Indexes for table `dentists`
--
ALTER TABLE `dentists`
  ADD PRIMARY KEY (`dentistID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeID`),
  ADD KEY `employees_FK` (`roleID`);

--
-- Indexes for table `employee_roles`
--
ALTER TABLE `employee_roles`
  ADD PRIMARY KEY (`roleID`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoiceID`),
  ADD KEY `invoices_FK1` (`patientID`),
  ADD KEY `invoices_FK2` (`treatmentID`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patientID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `payments_FK1` (`invoiceID`);

--
-- Indexes for table `receptionists`
--
ALTER TABLE `receptionists`
  ADD PRIMARY KEY (`receptionistID`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`serviceID`);

--
-- Indexes for table `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`treatmentID`),
  ADD KEY `treatments_FK1` (`patientID`),
  ADD KEY `treatments_FK2` (`dentistID`),
  ADD KEY `treatments_FK3` (`appointmentID`);

--
-- Indexes for table `treatment_service`
--
ALTER TABLE `treatment_service`
  ADD PRIMARY KEY (`treatmentserviceID`),
  ADD KEY `treatmentservice_FK1` (`treatmentID`),
  ADD KEY `treatmentservice_FK2` (`serviceID`);

--
-- Indexes for table `user_credentials`
--
ALTER TABLE `user_credentials`
  ADD PRIMARY KEY (`employeeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500131;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200004;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoiceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=800091;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=400061;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=900109;

--
-- AUTO_INCREMENT for table `treatments`
--
ALTER TABLE `treatments`
  MODIFY `treatmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=600091;

--
-- AUTO_INCREMENT for table `treatment_service`
--
ALTER TABLE `treatment_service`
  MODIFY `treatmentserviceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700091;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_FK1` FOREIGN KEY (`patientID`) REFERENCES `patients` (`patientID`),
  ADD CONSTRAINT `appointments_FK2` FOREIGN KEY (`dentistID`) REFERENCES `dentists` (`dentistID`),
  ADD CONSTRAINT `appointments_FK3` FOREIGN KEY (`assistantID`) REFERENCES `assistants` (`assistantID`);

--
-- Constraints for table `assistants`
--
ALTER TABLE `assistants`
  ADD CONSTRAINT `assistants_FK` FOREIGN KEY (`assistantID`) REFERENCES `employees` (`employeeID`);

--
-- Constraints for table `dentists`
--
ALTER TABLE `dentists`
  ADD CONSTRAINT `dentists_FK` FOREIGN KEY (`dentistID`) REFERENCES `employees` (`employeeID`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_FK` FOREIGN KEY (`roleID`) REFERENCES `employee_roles` (`roleID`);

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_FK1` FOREIGN KEY (`patientID`) REFERENCES `patients` (`patientID`),
  ADD CONSTRAINT `invoices_FK2` FOREIGN KEY (`treatmentID`) REFERENCES `treatments` (`treatmentID`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_FK1` FOREIGN KEY (`invoiceID`) REFERENCES `invoices` (`invoiceID`);

--
-- Constraints for table `receptionists`
--
ALTER TABLE `receptionists`
  ADD CONSTRAINT `receptionist_FK` FOREIGN KEY (`receptionistID`) REFERENCES `employees` (`employeeID`);

--
-- Constraints for table `treatments`
--
ALTER TABLE `treatments`
  ADD CONSTRAINT `treatments_FK1` FOREIGN KEY (`patientID`) REFERENCES `patients` (`patientID`),
  ADD CONSTRAINT `treatments_FK2` FOREIGN KEY (`dentistID`) REFERENCES `dentists` (`dentistID`),
  ADD CONSTRAINT `treatments_FK3` FOREIGN KEY (`appointmentID`) REFERENCES `appointments` (`appointmentID`);

--
-- Constraints for table `treatment_service`
--
ALTER TABLE `treatment_service`
  ADD CONSTRAINT `treatmentservice_FK1` FOREIGN KEY (`treatmentID`) REFERENCES `treatments` (`treatmentID`),
  ADD CONSTRAINT `treatmentservice_FK2` FOREIGN KEY (`serviceID`) REFERENCES `services` (`serviceID`);

--
-- Constraints for table `user_credentials`
--
ALTER TABLE `user_credentials`
  ADD CONSTRAINT `user_credentials_FK` FOREIGN KEY (`employeeID`) REFERENCES `employees` (`employeeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
