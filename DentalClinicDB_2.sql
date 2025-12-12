-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 12, 2025 at 02:26 AM
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
  `dentistID` int(11) DEFAULT NULL,
  `patientID` int(11) DEFAULT NULL,
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
(1001, 101, 1, 102, '2025-12-04', '08:00:00', '09:00:00', 'Completed'),
(1002, 101, 2, 102, '2025-12-04', '09:00:00', '10:00:00', 'Completed'),
(1003, 101, 3, 102, '2025-12-04', '10:00:00', '11:00:00', 'Completed'),
(1004, 101, 4, 102, '2025-12-04', '11:00:00', '12:00:00', 'Completed'),
(1005, 101, 5, 102, '2025-12-04', '13:00:00', '14:00:00', 'Completed'),
(1006, 101, 6, 102, '2025-12-04', '14:00:00', '15:00:00', 'Completed'),
(1007, 101, 7, 102, '2025-12-04', '15:00:00', '16:00:00', 'Completed'),
(1008, 101, 8, 102, '2025-12-04', '16:00:00', '17:00:00', 'Completed'),
(1009, 101, 9, 102, '2025-12-04', '17:00:00', '18:00:00', 'Completed'),
(1010, 101, 10, 102, '2025-12-04', '18:00:00', '19:00:00', 'Completed'),
(1011, 101, 11, 102, '2025-12-05', '08:00:00', '09:00:00', 'Completed'),
(1012, 101, 12, 102, '2025-12-05', '09:00:00', '10:00:00', 'Completed'),
(1013, 101, 13, 102, '2025-12-05', '10:00:00', '11:00:00', 'Completed'),
(1014, 101, 14, 102, '2025-12-05', '11:00:00', '12:00:00', 'Completed'),
(1015, 101, 15, 102, '2025-12-05', '13:00:00', '14:00:00', 'Completed'),
(1016, 101, 16, 102, '2025-12-05', '14:00:00', '15:00:00', 'Completed'),
(1017, 101, 17, 102, '2025-12-05', '15:00:00', '16:00:00', 'Completed'),
(1018, 101, 18, 102, '2025-12-05', '16:00:00', '17:00:00', 'Completed'),
(1019, 101, 19, 102, '2025-12-05', '17:00:00', '18:00:00', 'Completed'),
(1020, 101, 20, 102, '2025-12-05', '18:00:00', '19:00:00', 'Completed'),
(1021, 101, 21, 102, '2025-12-06', '08:00:00', '09:00:00', 'Completed'),
(1022, 101, 22, 102, '2025-12-06', '09:00:00', '10:00:00', 'Completed'),
(1023, 101, 23, 102, '2025-12-06', '10:00:00', '11:00:00', 'Completed'),
(1024, 101, 24, 102, '2025-12-06', '11:00:00', '12:00:00', 'Completed'),
(1025, 101, 25, 102, '2025-12-06', '13:00:00', '14:00:00', 'Completed'),
(1026, 101, 26, 102, '2025-12-06', '14:00:00', '15:00:00', 'Completed'),
(1027, 101, 27, 102, '2025-12-06', '15:00:00', '16:00:00', 'Completed'),
(1028, 101, 28, 102, '2025-12-06', '16:00:00', '17:00:00', 'Completed'),
(1029, 101, 29, 102, '2025-12-06', '17:00:00', '18:00:00', 'Completed'),
(1030, 101, NULL, 102, '2025-12-06', '18:00:00', '19:00:00', 'Completed'),
(1031, 101, 1, 102, '2025-12-07', '08:00:00', '09:00:00', 'Completed'),
(1032, 101, 2, 102, '2025-12-07', '09:00:00', '10:00:00', 'Completed'),
(1033, 101, 3, 102, '2025-12-07', '10:00:00', '11:00:00', 'Completed'),
(1034, 101, 4, 102, '2025-12-07', '11:00:00', '12:00:00', 'Completed'),
(1035, 101, 5, 102, '2025-12-07', '13:00:00', '14:00:00', 'Completed'),
(1036, 101, 6, 102, '2025-12-07', '14:00:00', '15:00:00', 'Completed'),
(1037, 101, 7, 102, '2025-12-07', '15:00:00', '16:00:00', 'Completed'),
(1038, 101, 8, 102, '2025-12-07', '16:00:00', '17:00:00', 'Completed'),
(1039, 101, 9, 102, '2025-12-07', '17:00:00', '18:00:00', 'Completed'),
(1040, 101, 10, 102, '2025-12-07', '18:00:00', '19:00:00', 'Completed'),
(1041, 101, 11, 102, '2025-12-08', '08:00:00', '09:00:00', 'Completed'),
(1042, 101, 12, 102, '2025-12-08', '09:00:00', '10:00:00', 'Completed'),
(1043, 101, 13, 102, '2025-12-08', '10:00:00', '11:00:00', 'Completed'),
(1044, 101, 14, 102, '2025-12-08', '11:00:00', '12:00:00', 'Completed'),
(1045, 101, 15, 102, '2025-12-08', '13:00:00', '14:00:00', 'Completed'),
(1046, 101, 16, 102, '2025-12-08', '14:00:00', '15:00:00', 'Completed'),
(1047, 101, 17, 102, '2025-12-08', '15:00:00', '16:00:00', 'Completed'),
(1048, 101, 18, 102, '2025-12-08', '16:00:00', '17:00:00', 'Completed'),
(1049, 101, 19, 102, '2025-12-08', '17:00:00', '18:00:00', 'Completed'),
(1050, 101, 20, 102, '2025-12-08', '18:00:00', '19:00:00', 'Completed'),
(1051, 101, 21, 102, '2025-12-09', '08:00:00', '09:00:00', 'Completed'),
(1052, 101, 22, 102, '2025-12-09', '09:00:00', '10:00:00', 'Completed'),
(1053, 101, 23, 102, '2025-12-09', '10:00:00', '11:00:00', 'Completed'),
(1054, 101, 24, 102, '2025-12-09', '11:00:00', '12:00:00', 'Completed'),
(1055, 101, 25, 102, '2025-12-09', '13:00:00', '14:00:00', 'Completed'),
(1056, 101, 26, 102, '2025-12-09', '14:00:00', '15:00:00', 'Completed'),
(1057, 101, 27, 102, '2025-12-09', '15:00:00', '16:00:00', 'Completed'),
(1058, 101, 28, 102, '2025-12-09', '16:00:00', '17:00:00', 'Completed'),
(1059, 101, 29, 102, '2025-12-09', '17:00:00', '18:00:00', 'Completed'),
(1060, 101, NULL, 102, '2025-12-09', '18:00:00', '19:00:00', 'Completed'),
(1061, 101, 1, 102, '2025-12-10', '08:00:00', '09:00:00', 'Completed'),
(1062, 101, 2, 102, '2025-12-10', '09:00:00', '10:00:00', 'Completed'),
(1063, 101, 3, 102, '2025-12-10', '10:00:00', '11:00:00', 'Completed'),
(1064, 101, 4, 102, '2025-12-10', '11:00:00', '12:00:00', 'Completed'),
(1065, 101, 5, 102, '2025-12-10', '13:00:00', '14:00:00', 'Completed'),
(1066, 101, 6, 102, '2025-12-10', '14:00:00', '15:00:00', 'Completed'),
(1067, 101, 7, 102, '2025-12-10', '15:00:00', '16:00:00', 'Completed'),
(1068, 101, 8, 102, '2025-12-10', '16:00:00', '17:00:00', 'Completed'),
(1069, 101, 9, 102, '2025-12-10', '17:00:00', '18:00:00', 'Completed'),
(1070, 101, 10, 102, '2025-12-10', '18:00:00', '19:00:00', 'Completed'),
(1071, 101, 11, 102, '2025-12-11', '08:00:00', '09:00:00', 'Completed'),
(1072, 101, 12, 102, '2025-12-11', '09:00:00', '10:00:00', 'Completed'),
(1073, 101, 13, 102, '2025-12-11', '10:00:00', '11:00:00', 'Completed'),
(1074, 101, 14, 102, '2025-12-11', '09:30:00', '10:00:00', 'Completed'),
(1075, 101, 15, 102, '2025-12-11', '13:00:00', '14:00:00', 'Completed'),
(1076, 101, 16, 102, '2025-12-11', '14:00:00', '15:00:00', 'Completed'),
(1077, 101, 17, 102, '2025-12-11', '15:00:00', '16:00:00', 'Completed'),
(1078, 101, 18, 102, '2025-12-11', '16:00:00', '17:00:00', 'Completed'),
(1079, 101, 19, 102, '2025-12-11', '17:00:00', '18:00:00', 'Completed'),
(1080, 101, 20, 102, '2025-12-11', '18:00:00', '19:00:00', 'Completed'),
(1081, 101, 21, 102, '2025-12-12', '08:00:00', '09:00:00', 'Completed'),
(1082, 101, 22, 102, '2025-12-12', '09:00:00', '10:00:00', 'Completed'),
(1083, 101, 23, 102, '2025-12-12', '10:00:00', '11:00:00', 'Completed'),
(1084, 101, 24, 102, '2025-12-12', '11:00:00', '12:00:00', 'Completed'),
(1085, 101, 25, 102, '2025-12-12', '13:00:00', '14:00:00', 'Completed'),
(1086, 101, 26, 102, '2025-12-12', '14:00:00', '15:00:00', 'Completed'),
(1087, 101, 27, 102, '2025-12-12', '15:00:00', '16:00:00', 'Completed'),
(1088, 101, 28, 102, '2025-12-12', '16:00:00', '17:00:00', 'Completed'),
(1089, 101, 29, 102, '2025-12-12', '17:00:00', '18:00:00', 'Completed'),
(1090, 101, NULL, 102, '2025-12-12', '18:00:00', '19:00:00', 'Completed'),
(1091, 101, 1, 102, '2025-12-13', '08:00:00', '09:00:00', 'Completed'),
(1092, 101, 2, 102, '2025-12-13', '09:00:00', '10:00:00', 'Completed'),
(1093, 101, 3, 102, '2025-12-13', '10:00:00', '11:00:00', 'Completed'),
(1094, 101, 4, 102, '2025-12-13', '11:00:00', '12:00:00', 'Completed'),
(1095, 101, 5, 102, '2025-12-13', '13:00:00', '14:00:00', 'Completed'),
(1096, 101, 6, 102, '2025-12-13', '14:00:00', '15:00:00', 'Completed'),
(1097, 101, 7, 102, '2025-12-13', '15:00:00', '16:00:00', 'Completed'),
(1098, 101, 8, 102, '2025-12-13', '16:00:00', '17:00:00', 'Completed'),
(1099, 101, 9, 102, '2025-12-13', '17:00:00', '18:00:00', 'Completed'),
(1100, 101, 10, 102, '2025-12-13', '18:00:00', '19:00:00', 'Completed'),
(1101, 101, 11, 102, '2025-12-14', '08:00:00', '09:00:00', 'Completed'),
(1102, 101, 12, 102, '2025-12-14', '09:00:00', '10:00:00', 'Completed'),
(1103, 101, 13, 102, '2025-12-14', '10:00:00', '11:00:00', 'Completed'),
(1104, 101, 14, 102, '2025-12-14', '11:00:00', '12:00:00', 'No Show'),
(1105, 101, 15, 102, '2025-12-14', '13:00:00', '14:00:00', 'Completed'),
(1106, 101, 16, 102, '2025-12-15', '14:00:00', '15:00:00', 'Scheduled'),
(1107, 101, 17, 102, '2025-12-15', '15:00:00', '16:00:00', 'Scheduled'),
(1108, 101, 18, 102, '2025-12-16', '16:00:00', '17:00:00', 'Scheduled'),
(1109, 101, 19, 102, '2025-12-16', '17:00:00', '18:00:00', 'Cancelled'),
(1110, 101, 20, 102, '2025-12-17', '18:00:00', '19:00:00', 'Scheduled'),
(1111, 101, 21, 102, '2025-12-17', '08:00:00', '09:00:00', 'Scheduled'),
(1112, 101, 22, 102, '2025-12-18', '09:00:00', '10:00:00', 'Scheduled'),
(1113, 101, 23, 102, '2025-12-18', '10:00:00', '11:00:00', 'Scheduled'),
(1114, 101, 24, 102, '2025-12-19', '11:00:00', '12:00:00', 'Scheduled'),
(1115, 101, 25, 102, '2025-12-19', '13:00:00', '14:00:00', 'Scheduled');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_treatment`
--

CREATE TABLE `appointment_treatment` (
  `appointmentID` int(11) NOT NULL,
  `treatmentID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment_treatment`
--

INSERT INTO `appointment_treatment` (`appointmentID`, `treatmentID`, `quantity`) VALUES
(1001, 1, 1),
(1002, 2, 1),
(1003, 3, 1),
(1004, 4, 1),
(1005, 5, 1),
(1006, 1, 1),
(1007, 2, 1),
(1008, 3, 1),
(1009, 4, 1),
(1010, 5, 1),
(1011, 1, 1),
(1012, 2, 1),
(1013, 3, 1),
(1014, 4, 1),
(1015, 5, 1),
(1016, 1, 1),
(1017, 2, 1),
(1018, 3, 1),
(1019, 4, 1),
(1020, 5, 1),
(1021, 1, 1),
(1022, 2, 1),
(1023, 3, 1),
(1024, 4, 1),
(1025, 5, 1),
(1026, 1, 1),
(1027, 2, 1),
(1028, 3, 1),
(1029, 4, 1),
(1030, 5, 1),
(1031, 1, 1),
(1032, 2, 1),
(1033, 3, 1),
(1034, 4, 1),
(1035, 5, 1),
(1036, 1, 1),
(1037, 2, 1),
(1038, 3, 1),
(1039, 4, 1),
(1040, 5, 1),
(1041, 1, 1),
(1042, 2, 1),
(1043, 3, 1),
(1044, 4, 1),
(1045, 5, 1),
(1046, 1, 1),
(1047, 2, 1),
(1048, 3, 1),
(1049, 4, 1),
(1050, 5, 1),
(1051, 1, 1),
(1052, 2, 1),
(1053, 3, 1),
(1054, 4, 1),
(1055, 5, 1),
(1056, 1, 1),
(1057, 2, 1),
(1058, 3, 1),
(1059, 4, 1),
(1060, 5, 1),
(1061, 1, 1),
(1062, 2, 1),
(1063, 3, 1),
(1064, 4, 1),
(1065, 5, 1),
(1066, 1, 1),
(1067, 2, 1),
(1068, 3, 1),
(1069, 4, 1),
(1070, 5, 1),
(1071, 1, 1),
(1072, 2, 1),
(1073, 3, 1),
(1074, 4, 1),
(1075, 5, 1),
(1076, 1, 1),
(1077, 2, 1),
(1078, 3, 1),
(1079, 4, 1),
(1080, 5, 1),
(1081, 1, 1),
(1082, 2, 1),
(1083, 3, 1),
(1084, 4, 1),
(1085, 5, 1),
(1086, 1, 1),
(1087, 2, 1),
(1088, 3, 1),
(1089, 4, 1),
(1090, 5, 1),
(1091, 1, 1),
(1092, 2, 1),
(1093, 3, 1),
(1094, 4, 1),
(1095, 5, 1),
(1096, 1, 1),
(1097, 2, 1),
(1098, 3, 1),
(1099, 4, 1),
(1100, 5, 1),
(1101, 1, 1),
(1102, 2, 1),
(1103, 3, 1),
(1104, 4, 1),
(1105, 5, 1),
(1106, 1, 1),
(1107, 2, 1),
(1108, 3, 1),
(1109, 4, 1),
(1110, 5, 1),
(1111, 1, 1),
(1112, 2, 1),
(1113, 3, 1),
(1114, 4, 1),
(1115, 5, 1);

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
(102);

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
(101, 'Orthodontics', 'DENT-PH-12345');

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
(101, 1, 'Elena', 'Rose', 'Derek', '0917-111-2222', 'elena.d@clinic.com', '2023-01-15', 'Active'),
(102, 2, 'Mark', 'James', 'Santos', '0917-333-4444', 'mark.s@clinic.com', '2023-03-10', 'Active'),
(103, 3, 'Sarah', 'Jean', 'Connor', '0917-555-6666', 'sarah.c@clinic.com', '2023-02-01', 'Active'),
(104, 3, 'Bau', 'R', 'Edgar', '0942-242-1245', 'bau.e@mail.com', '2025-12-03', 'Active'),
(123, 4, 'Karlito', 'M', 'Campos', '0942-133-1234', 'mail@mail.com', '2025-12-05', 'Active');

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
(1, 'Dentist'),
(2, 'Assistant'),
(3, 'Receptionist'),
(4, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoiceID` int(11) NOT NULL,
  `appointmentID` int(11) NOT NULL,
  `receptionistID` int(11) NOT NULL,
  `amount_due` double NOT NULL,
  `status` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`invoiceID`, `appointmentID`, `receptionistID`, `amount_due`, `status`) VALUES
(5001, 1001, 103, 50, 'Paid'),
(5002, 1002, 103, 80, 'Paid'),
(5003, 1003, 103, 150, 'Paid'),
(5004, 1004, 103, 600, 'Paid'),
(5005, 1005, 103, 350, 'Paid'),
(5006, 1006, 103, 50, 'Paid'),
(5007, 1007, 103, 80, 'Paid'),
(5008, 1008, 103, 150, 'Paid'),
(5009, 1009, 103, 600, 'Paid'),
(5010, 1010, 103, 350, 'Paid'),
(5011, 1011, 103, 50, 'Paid'),
(5012, 1012, 103, 80, 'Paid'),
(5013, 1013, 103, 150, 'Paid'),
(5014, 1014, 103, 600, 'Paid'),
(5015, 1015, 103, 350, 'Paid'),
(5016, 1016, 103, 50, 'Paid'),
(5017, 1017, 103, 80, 'Paid'),
(5018, 1018, 103, 150, 'Paid'),
(5019, 1019, 103, 600, 'Paid'),
(5020, 1020, 103, 350, 'Paid'),
(5021, 1021, 103, 50, 'Paid'),
(5022, 1022, 103, 80, 'Paid'),
(5023, 1023, 103, 150, 'Paid'),
(5024, 1024, 103, 600, 'Paid'),
(5025, 1025, 103, 350, 'Paid'),
(5026, 1026, 103, 50, 'Paid'),
(5027, 1027, 103, 80, 'Paid'),
(5028, 1028, 103, 150, 'Paid'),
(5029, 1029, 103, 600, 'Paid'),
(5030, 1030, 103, 350, 'Paid'),
(5031, 1031, 103, 50, 'Paid'),
(5032, 1032, 103, 80, 'Paid'),
(5033, 1033, 103, 150, 'Paid'),
(5034, 1034, 103, 600, 'Paid'),
(5035, 1035, 103, 350, 'Paid'),
(5036, 1036, 103, 50, 'Paid'),
(5037, 1037, 103, 80, 'Paid'),
(5038, 1038, 103, 150, 'Paid'),
(5039, 1039, 103, 600, 'Paid'),
(5040, 1040, 103, 350, 'Paid'),
(5041, 1041, 103, 50, 'Paid'),
(5042, 1042, 103, 80, 'Paid'),
(5043, 1043, 103, 150, 'Paid'),
(5044, 1044, 103, 600, 'Paid'),
(5045, 1045, 103, 350, 'Paid'),
(5046, 1046, 103, 50, 'Paid'),
(5047, 1047, 103, 80, 'Paid'),
(5048, 1048, 103, 150, 'Paid'),
(5049, 1049, 103, 600, 'Paid'),
(5050, 1050, 103, 350, 'Paid'),
(5051, 1051, 103, 50, 'Paid'),
(5052, 1052, 103, 80, 'Paid'),
(5053, 1053, 103, 150, 'Paid'),
(5054, 1054, 103, 600, 'Paid'),
(5055, 1055, 103, 350, 'Paid'),
(5056, 1056, 103, 50, 'Paid'),
(5057, 1057, 103, 80, 'Paid'),
(5058, 1058, 103, 150, 'Paid'),
(5059, 1059, 103, 600, 'Paid'),
(5060, 1060, 103, 350, 'Paid'),
(5061, 1061, 103, 50, 'Paid'),
(5062, 1062, 103, 80, 'Paid'),
(5063, 1063, 103, 150, 'Paid'),
(5064, 1064, 103, 600, 'Paid'),
(5065, 1065, 103, 350, 'Paid'),
(5066, 1066, 103, 50, 'Paid'),
(5067, 1067, 103, 80, 'Paid'),
(5068, 1068, 103, 150, 'Paid'),
(5069, 1069, 103, 600, 'Paid'),
(5070, 1070, 103, 350, 'Paid'),
(5071, 1071, 103, 50, 'Paid'),
(5072, 1072, 103, 80, 'Paid'),
(5073, 1073, 103, 150, 'Paid'),
(5074, 1074, 103, 600, 'Paid'),
(5075, 1075, 103, 350, 'Paid'),
(5076, 1076, 103, 50, 'Paid'),
(5077, 1077, 103, 80, 'Paid'),
(5078, 1078, 103, 150, 'Paid'),
(5079, 1079, 103, 600, 'Paid'),
(5080, 1080, 103, 350, 'Paid'),
(5081, 1081, 103, 50, 'Paid'),
(5082, 1082, 103, 80, 'Paid'),
(5083, 1083, 103, 150, 'Paid'),
(5084, 1084, 103, 600, 'Paid'),
(5085, 1085, 103, 350, 'Paid'),
(5086, 1086, 103, 50, 'Paid'),
(5087, 1087, 103, 80, 'Paid'),
(5088, 1088, 103, 150, 'Paid'),
(5089, 1089, 103, 600, 'Paid'),
(5090, 1090, 103, 350, 'Paid'),
(5091, 1091, 103, 50, 'Paid'),
(5092, 1092, 103, 80, 'Paid'),
(5093, 1093, 103, 150, 'Paid'),
(5094, 1094, 103, 600, 'Paid'),
(5095, 1095, 103, 350, 'Paid'),
(5096, 1096, 103, 50, 'Paid'),
(5097, 1097, 103, 80, 'Paid'),
(5098, 1098, 103, 150, 'Paid'),
(5099, 1099, 103, 600, 'Paid'),
(5100, 1100, 103, 350, 'Paid'),
(5101, 1101, 103, 50, 'Paid'),
(5102, 1102, 103, 80, 'Paid'),
(5103, 1103, 103, 150, 'Paid'),
(5105, 1105, 103, 350, 'Paid');

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
(1, 'John', 'C', 'Doe', '1990-05-15', 'Male', 'O+', '0917-101-1111', 'john.doe@mail.com', '123 Acacia Ave, Davao City', '2024-01-01'),
(2, 'Jane', 'B', 'Smith', '1985-08-20', 'Female', 'A+', '0917-101-2222', 'jane.smith@mail.com', '456 Narra St, Davao City', '2024-01-05'),
(3, 'Michael', 'D', 'Johnson', '1978-12-10', 'Male', 'B+', '0917-101-3333', 'mike.j@mail.com', '789 Molave St, Davao City', '2024-02-10'),
(4, 'Emily', 'F', 'Davis', '1995-03-25', 'Female', 'O-', '0917-101-4444', 'emily.d@mail.com', '321 Mahogany Ln, Davao City', '2024-03-15'),
(5, 'Chris', 'G', 'Brown', '2000-07-30', 'Male', 'AB+', '0917-101-5555', 'chris.b@mail.com', '654 Yakal St, Davao City', '2024-04-20'),
(6, 'Jessica', 'G', 'Garcia', '1992-11-05', 'Female', 'A-', '0917-101-6666', 'jess.garcia@mail.com', '987 Pine St, Davao City', '2024-05-25'),
(7, 'David', 'R', 'Martinez', '1988-09-15', 'Male', 'O+', '0917-101-7777', 'david.m@mail.com', '159 Oak Ave, Davao City', '2024-06-30'),
(8, 'Sarah', 'Y', 'Rodriguez', '1998-01-10', 'Female', 'B-', '0917-101-8888', 'sarah.r@mail.com', '753 Elm St, Davao City', '2024-07-05'),
(9, 'James', 'G', 'Wilson', '1983-04-22', 'Male', 'A+', '0917-101-9999', 'james.w@mail.com', '852 Cedar Rd, Davao City', '2024-08-10'),
(10, 'Linda', 'Q', 'Anderson', '1975-06-18', 'Female', 'O+', '0917-102-1010', 'linda.a@mail.com', '951 Birch Ln, Davao City', '2024-09-15'),
(11, 'Robert', 'N', 'Taylor', '1991-02-14', 'Male', 'AB-', '0917-102-1111', 'rob.taylor@mail.com', '357 Spruce St, Davao City', '2024-10-20'),
(12, 'Mary', 'M', 'Thomas', '1989-10-30', 'Female', 'B+', '0917-102-1212', 'mary.t@mail.com', '258 Palm Ave, Davao City', '2024-11-25'),
(13, 'William', 'R', 'Hernandez', '1994-05-05', 'Male', 'O+', '0917-102-1313', 'will.h@mail.com', '147 Maple Dr, Davao City', '2024-12-01'),
(14, 'Patricia', 'H', 'Moore', '1980-08-12', 'Female', 'A+', '0917-102-1414', 'pat.moore@mail.com', '369 Willow St, Davao City', '2024-12-05'),
(15, 'Joseph', 'I', 'Martin', '1996-12-25', 'Male', 'O-', '0917-102-1515', 'joe.martin@mail.com', '741 Cherry Ln, Davao City', '2025-01-10'),
(16, 'Jennifer', 'I', 'Jackson', '1993-03-08', 'Female', 'B+', '0917-102-1616', 'jen.j@mail.com', '852 Mango Ave, Davao City', '2025-01-15'),
(17, 'Charles', 'K', 'Thompson', '1987-07-01', 'Male', 'A-', '0917-102-1717', 'charles.t@mail.com', '963 Santol St, Davao City', '2025-02-20'),
(18, 'Susan', 'P', 'White', '1999-09-19', 'Female', 'O+', '0917-102-1818', 'susan.w@mail.com', '159 Durian St, Davao City', '2025-02-25'),
(19, 'Thomas', 'Y', 'Lopez', '1982-11-11', 'Male', 'AB+', '0917-102-1919', 'tom.lopez@mail.com', '753 Lansones St, Davao City', '2025-03-30'),
(20, 'Karen', 'R', 'Lee', '1997-04-14', 'Female', 'A+', '0917-102-2020', 'karen.lee@mail.com', '357 Rambutan Rd, Davao City', '2025-04-05'),
(21, 'Daniel', 'G', 'Gonzalez', '1990-06-21', 'Male', 'O+', '0917-103-2121', 'dan.g@mail.com', '258 Papaya Ln, Davao City', '2025-05-10'),
(22, 'Lisa', 'Q', 'Harris', '1986-01-30', 'Female', 'B-', '0917-103-2222', 'lisa.harris@mail.com', '147 Guava St, Davao City', '2025-05-15'),
(23, 'Matthew', 'W', 'Clark', '1995-08-08', 'Male', 'A+', '0917-103-2323', 'matt.clark@mail.com', '369 Chico Dr, Davao City', '2025-06-20'),
(24, 'Betty', 'F', 'Lewis', '1979-10-10', 'Female', 'O-', '0917-103-2424', 'betty.lewis@mail.com', '741 Jackfruit St, Davao City', '2025-06-25'),
(25, 'Anthony', 'C', 'Robinson', '1984-02-02', 'Male', 'AB-', '0917-103-2525', 'tony.r@mail.com', '852 Pomelo Ave, Davao City', '2025-07-30'),
(26, 'Margaret', 'G', 'Walker', '1992-05-17', 'Female', 'B+', '0917-103-2626', 'maggie.w@mail.com', '963 Coconut Ln, Davao City', '2025-08-05'),
(27, 'Mark', 'F', 'Perez', '1981-12-29', 'Male', 'O+', '0917-103-2727', 'mark.perez@mail.com', '159 Banana St, Davao City', '2025-08-10'),
(28, 'Sandra', 'F', 'Hall', '1998-07-23', 'Female', 'A-', '0917-103-2828', 'sandra.hall@mail.com', '753 Starfruit Rd, Davao City', '2025-09-15'),
(29, 'Donald', 'R', 'Young', '1976-09-09', 'Male', 'O+', '0917-103-2929', 'don.young@mail.com', '357 Guyabano St, Davao City', '2025-09-20');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `paymentID` int(11) NOT NULL,
  `invoiceID` int(11) NOT NULL,
  `amount_paid` double NOT NULL,
  `payment_date` date NOT NULL,
  `payment_time` time NOT NULL,
  `payment_method` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`paymentID`, `invoiceID`, `amount_paid`, `payment_date`, `payment_time`, `payment_method`) VALUES
(5101, 5001, 50, '2025-12-04', '09:00:00', 'Cash'),
(5102, 5006, 50, '2025-12-04', '15:00:00', 'Card'),
(5103, 5011, 50, '2025-12-05', '09:00:00', 'Cash'),
(5104, 5016, 50, '2025-12-05', '15:00:00', 'Card'),
(5105, 5021, 50, '2025-12-06', '09:00:00', 'Cash'),
(5106, 5026, 50, '2025-12-06', '15:00:00', 'Card'),
(5107, 5031, 50, '2025-12-07', '09:00:00', 'Cash'),
(5108, 5036, 50, '2025-12-07', '15:00:00', 'Card'),
(5109, 5041, 50, '2025-12-08', '09:00:00', 'Cash'),
(5110, 5046, 50, '2025-12-08', '15:00:00', 'Card'),
(5111, 5051, 50, '2025-12-09', '09:00:00', 'Cash'),
(5112, 5056, 50, '2025-12-09', '15:00:00', 'Card'),
(5113, 5061, 50, '2025-12-10', '09:00:00', 'Cash'),
(5114, 5066, 50, '2025-12-10', '15:00:00', 'Card'),
(5115, 5071, 50, '2025-12-11', '09:00:00', 'Cash'),
(5116, 5076, 50, '2025-12-11', '15:00:00', 'Card'),
(5117, 5081, 50, '2025-12-12', '09:00:00', 'Cash'),
(5118, 5086, 50, '2025-12-12', '15:00:00', 'Card'),
(5119, 5091, 50, '2025-12-13', '09:00:00', 'Cash'),
(5120, 5096, 50, '2025-12-13', '15:00:00', 'Card'),
(5121, 5101, 50, '2025-12-14', '09:00:00', 'Cash'),
(5122, 5002, 80, '2025-12-04', '10:00:00', 'Card'),
(5123, 5007, 80, '2025-12-04', '16:00:00', 'Cash'),
(5124, 5012, 80, '2025-12-05', '10:00:00', 'Card'),
(5125, 5017, 80, '2025-12-05', '16:00:00', 'Cash'),
(5126, 5022, 80, '2025-12-06', '10:00:00', 'Card'),
(5127, 5027, 80, '2025-12-06', '16:00:00', 'Cash'),
(5128, 5032, 80, '2025-12-07', '10:00:00', 'Card'),
(5129, 5037, 80, '2025-12-07', '16:00:00', 'Cash'),
(5130, 5042, 80, '2025-12-08', '10:00:00', 'Card'),
(5131, 5047, 80, '2025-12-08', '16:00:00', 'Cash'),
(5132, 5052, 80, '2025-12-09', '10:00:00', 'Card'),
(5133, 5057, 80, '2025-12-09', '16:00:00', 'Cash'),
(5134, 5062, 80, '2025-12-10', '10:00:00', 'Card'),
(5135, 5067, 80, '2025-12-10', '16:00:00', 'Cash'),
(5136, 5072, 80, '2025-12-11', '10:00:00', 'Card'),
(5137, 5077, 80, '2025-12-11', '16:00:00', 'Cash'),
(5138, 5082, 80, '2025-12-12', '10:00:00', 'Card'),
(5139, 5087, 80, '2025-12-12', '16:00:00', 'Cash'),
(5140, 5092, 80, '2025-12-13', '10:00:00', 'Card'),
(5141, 5097, 80, '2025-12-13', '16:00:00', 'Cash'),
(5142, 5102, 80, '2025-12-14', '10:00:00', 'Card'),
(5143, 5003, 150, '2025-12-04', '11:00:00', 'Cash'),
(5144, 5008, 150, '2025-12-04', '17:00:00', 'Card'),
(5145, 5013, 150, '2025-12-05', '11:00:00', 'Cash'),
(5146, 5018, 150, '2025-12-05', '17:00:00', 'Card'),
(5147, 5023, 150, '2025-12-06', '11:00:00', 'Cash'),
(5148, 5028, 150, '2025-12-06', '17:00:00', 'Card'),
(5149, 5033, 150, '2025-12-07', '11:00:00', 'Cash'),
(5150, 5038, 150, '2025-12-07', '17:00:00', 'Card'),
(5151, 5043, 150, '2025-12-08', '11:00:00', 'Cash'),
(5152, 5048, 150, '2025-12-08', '17:00:00', 'Card'),
(5153, 5053, 150, '2025-12-09', '11:00:00', 'Cash'),
(5154, 5058, 150, '2025-12-09', '17:00:00', 'Card'),
(5155, 5063, 150, '2025-12-10', '11:00:00', 'Cash'),
(5156, 5068, 150, '2025-12-10', '17:00:00', 'Card'),
(5157, 5073, 150, '2025-12-11', '11:00:00', 'Cash'),
(5158, 5078, 150, '2025-12-11', '17:00:00', 'Card'),
(5159, 5083, 150, '2025-12-12', '11:00:00', 'Cash'),
(5160, 5088, 150, '2025-12-12', '17:00:00', 'Card'),
(5161, 5093, 150, '2025-12-13', '11:00:00', 'Cash'),
(5162, 5098, 150, '2025-12-13', '17:00:00', 'Card'),
(5163, 5103, 150, '2025-12-14', '11:00:00', 'Cash'),
(5164, 5004, 600, '2025-12-04', '12:00:00', 'Card'),
(5165, 5009, 600, '2025-12-04', '18:00:00', 'Insurance'),
(5166, 5014, 600, '2025-12-05', '12:00:00', 'Card'),
(5167, 5019, 600, '2025-12-05', '18:00:00', 'Insurance'),
(5168, 5024, 600, '2025-12-06', '12:00:00', 'Card'),
(5169, 5029, 600, '2025-12-06', '18:00:00', 'Insurance'),
(5170, 5034, 600, '2025-12-07', '12:00:00', 'Card'),
(5171, 5039, 600, '2025-12-07', '18:00:00', 'Insurance'),
(5172, 5044, 600, '2025-12-08', '12:00:00', 'Card'),
(5173, 5049, 600, '2025-12-08', '18:00:00', 'Insurance'),
(5174, 5054, 600, '2025-12-09', '12:00:00', 'Card'),
(5175, 5059, 600, '2025-12-09', '18:00:00', 'Insurance'),
(5176, 5064, 600, '2025-12-10', '12:00:00', 'Card'),
(5177, 5069, 600, '2025-12-10', '18:00:00', 'Insurance'),
(5178, 5074, 600, '2025-12-11', '12:00:00', 'Card'),
(5179, 5079, 600, '2025-12-11', '18:00:00', 'Insurance'),
(5180, 5084, 600, '2025-12-12', '12:00:00', 'Card'),
(5181, 5089, 600, '2025-12-12', '18:00:00', 'Insurance'),
(5182, 5094, 600, '2025-12-13', '12:00:00', 'Card'),
(5183, 5099, 600, '2025-12-13', '18:00:00', 'Insurance'),
(5184, 5005, 350, '2025-12-04', '13:00:00', 'Cash'),
(5185, 5010, 350, '2025-12-04', '18:30:00', 'Card'),
(5186, 5015, 350, '2025-12-05', '13:00:00', 'Cash'),
(5187, 5020, 350, '2025-12-05', '18:30:00', 'Card'),
(5188, 5025, 350, '2025-12-06', '13:00:00', 'Cash'),
(5189, 5030, 350, '2025-12-06', '18:30:00', 'Card'),
(5190, 5035, 350, '2025-12-07', '13:00:00', 'Cash'),
(5191, 5040, 350, '2025-12-07', '18:30:00', 'Card'),
(5192, 5045, 350, '2025-12-08', '13:00:00', 'Cash'),
(5193, 5050, 350, '2025-12-08', '18:30:00', 'Card'),
(5194, 5055, 350, '2025-12-09', '13:00:00', 'Cash'),
(5195, 5060, 350, '2025-12-09', '18:30:00', 'Card'),
(5196, 5065, 350, '2025-12-10', '13:00:00', 'Cash'),
(5197, 5070, 350, '2025-12-10', '18:30:00', 'Card'),
(5198, 5075, 350, '2025-12-11', '13:00:00', 'Cash'),
(5199, 5080, 350, '2025-12-11', '18:30:00', 'Card'),
(5200, 5085, 350, '2025-12-12', '13:00:00', 'Cash'),
(5201, 5090, 350, '2025-12-12', '18:30:00', 'Card'),
(5202, 5095, 350, '2025-12-13', '13:00:00', 'Cash'),
(5203, 5100, 350, '2025-12-13', '18:30:00', 'Card'),
(5204, 5105, 350, '2025-12-14', '13:00:00', 'Card');

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
(103);

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--

CREATE TABLE `treatments` (
  `treatmentID` int(11) NOT NULL,
  `treatment_name` varchar(32) NOT NULL,
  `description` varchar(128) DEFAULT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatments`
--

INSERT INTO `treatments` (`treatmentID`, `treatment_name`, `description`, `price`) VALUES
(1, 'General Checkup', 'Routine dental examination', 50),
(2, 'Teeth Cleaning', 'Prophylaxis cleaning', 80),
(3, 'Cavity Filling', 'Composite resin filling', 150),
(4, 'Root Canal', 'Endodontic therapy', 600),
(5, 'Teeth Whitening', 'Laser teeth whitening session', 350);

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
(101, 'pass123'),
(102, 'pass123'),
(103, 'pass123'),
(123, '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointmentID`),
  ADD KEY `appointments_FK2` (`dentistID`),
  ADD KEY `appointments_FK3` (`assistantID`),
  ADD KEY `appointments_FK1` (`patientID`);

--
-- Indexes for table `appointment_treatment`
--
ALTER TABLE `appointment_treatment`
  ADD PRIMARY KEY (`appointmentID`,`treatmentID`),
  ADD KEY `appointment_treatment_FK2` (`treatmentID`);

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
  ADD UNIQUE KEY `invoices_FK1` (`appointmentID`),
  ADD KEY `invoices_FK2` (`receptionistID`);

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
-- Indexes for table `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`treatmentID`);

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
  MODIFY `appointmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1116;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoiceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5106;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5205;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_FK1` FOREIGN KEY (`patientID`) REFERENCES `patients` (`patientID`) ON DELETE SET NULL,
  ADD CONSTRAINT `appointments_FK2` FOREIGN KEY (`dentistID`) REFERENCES `dentists` (`dentistID`),
  ADD CONSTRAINT `appointments_FK3` FOREIGN KEY (`assistantID`) REFERENCES `assistants` (`assistantID`);

--
-- Constraints for table `appointment_treatment`
--
ALTER TABLE `appointment_treatment`
  ADD CONSTRAINT `appointment_treatment_FK1` FOREIGN KEY (`appointmentID`) REFERENCES `appointments` (`appointmentID`),
  ADD CONSTRAINT `appointment_treatment_FK2` FOREIGN KEY (`treatmentID`) REFERENCES `treatments` (`treatmentID`);

--
-- Constraints for table `assistants`
--
ALTER TABLE `assistants`
  ADD CONSTRAINT `assistants_FK` FOREIGN KEY (`assistantID`) REFERENCES `employees` (`employeeID`);

--
-- Constraints for table `dentists`
--
ALTER TABLE `dentists`
  ADD CONSTRAINT `doctors_FK` FOREIGN KEY (`dentistID`) REFERENCES `employees` (`employeeID`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_FK` FOREIGN KEY (`roleID`) REFERENCES `employee_roles` (`roleID`);

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_FK1` FOREIGN KEY (`appointmentID`) REFERENCES `appointments` (`appointmentID`),
  ADD CONSTRAINT `invoices_FK2` FOREIGN KEY (`receptionistID`) REFERENCES `receptionists` (`receptionistID`);

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
-- Constraints for table `user_credentials`
--
ALTER TABLE `user_credentials`
  ADD CONSTRAINT `user_credentials_FK` FOREIGN KEY (`employeeID`) REFERENCES `employees` (`employeeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
