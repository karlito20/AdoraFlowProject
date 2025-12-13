-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2025 at 10:42 AM
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
-- Database: `DentalClinicDB`
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
(1, 1, 1, 2, '2025-11-15', '09:00:00', '09:30:00', 'Completed'),
(2, 1, 2, 2, '2025-11-15', '10:00:00', '10:45:00', 'Completed'),
(3, 1, 3, 2, '2025-11-18', '11:00:00', '11:30:00', 'Completed'),
(4, 1, 4, NULL, '2025-11-18', '13:00:00', '13:30:00', 'Completed'),
(5, 1, 5, 2, '2025-11-19', '14:00:00', '14:45:00', 'Completed'),
(6, 1, 6, 2, '2025-11-20', '09:00:00', '10:00:00', 'Completed'),
(7, 1, 7, NULL, '2025-11-20', '10:30:00', '11:00:00', 'Completed'),
(8, 1, 8, 2, '2025-11-21', '13:00:00', '14:00:00', 'Completed'),
(9, 1, 9, 2, '2025-11-22', '09:00:00', '09:30:00', 'Completed'),
(10, 1, 10, 2, '2025-11-22', '10:00:00', '11:00:00', 'Completed'),
(11, 1, 11, 2, '2025-11-25', '09:00:00', '09:45:00', 'Completed'),
(12, 1, 12, NULL, '2025-11-25', '10:30:00', '11:00:00', 'Completed'),
(13, 1, 13, 2, '2025-11-26', '13:00:00', '13:30:00', 'Completed'),
(14, 1, 14, 2, '2025-11-26', '14:00:00', '15:00:00', 'Completed'),
(15, 1, 15, 2, '2025-11-27', '15:30:00', '16:00:00', 'Completed'),
(16, 1, 16, 2, '2025-11-28', '08:30:00', '09:00:00', 'Completed'),
(17, 1, 17, NULL, '2025-11-28', '09:30:00', '10:00:00', 'Completed'),
(18, 1, 18, 2, '2025-11-29', '10:30:00', '11:15:00', 'Completed'),
(19, 1, 19, 2, '2025-11-29', '11:30:00', '12:00:00', 'Completed'),
(20, 1, 20, 2, '2025-12-01', '13:00:00', '13:45:00', 'Completed'),
(21, 1, 21, 2, '2025-12-01', '14:00:00', '14:30:00', 'Completed'),
(22, 1, 22, NULL, '2025-12-02', '15:00:00', '15:45:00', 'Completed'),
(23, 1, 23, 2, '2025-12-02', '16:00:00', '16:30:00', 'Completed'),
(24, 1, 24, 2, '2025-12-03', '10:00:00', '10:30:00', 'Completed'),
(25, 1, 25, NULL, '2025-12-03', '11:00:00', '11:30:00', 'Completed'),
(26, 1, 26, 2, '2025-12-04', '09:00:00', '09:45:00', 'Completed'),
(27, 1, 27, 2, '2025-12-04', '10:30:00', '11:15:00', 'Completed'),
(28, 1, 28, NULL, '2025-12-05', '13:00:00', '14:00:00', 'Completed'),
(29, 1, 29, 2, '2025-12-05', '09:00:00', '09:30:00', 'Completed'),
(30, 1, 30, 2, '2025-12-08', '10:00:00', '10:45:00', 'Completed'),
(31, 1, 31, 2, '2025-12-08', '09:00:00', '09:45:00', 'Completed'),
(32, 1, 32, NULL, '2025-12-09', '10:30:00', '11:00:00', 'Completed'),
(33, 1, 33, 2, '2025-12-09', '13:00:00', '13:30:00', 'Completed'),
(34, 1, 34, 2, '2025-12-10', '09:00:00', '09:30:00', 'Completed'),
(35, 1, 35, 2, '2025-12-10', '10:00:00', '10:45:00', 'Completed'),
(36, 1, 36, NULL, '2025-12-11', '11:30:00', '12:00:00', 'Completed'),
(37, 1, 37, 2, '2025-12-11', '09:00:00', '09:45:00', 'Completed'),
(38, 1, 38, 2, '2025-12-12', '10:30:00', '11:15:00', 'Completed'),
(39, 1, 39, NULL, '2025-12-12', '13:00:00', '13:30:00', 'Completed'),
(40, 1, 40, 2, '2025-12-12', '14:00:00', '14:45:00', 'Completed'),
(41, 1, 41, 2, '2025-12-13', '09:00:00', '09:30:00', 'In Progress'),
(42, 1, 42, NULL, '2025-12-13', '09:45:00', '10:45:00', 'Scheduled'),
(43, 1, 43, 2, '2025-12-13', '11:25:00', '12:15:00', 'Scheduled'),
(44, 1, 44, 2, '2025-12-13', '13:00:00', '13:45:00', 'Scheduled'),
(45, 1, 45, NULL, '2025-12-15', '09:00:00', '09:45:00', 'Scheduled'),
(46, 1, 46, 2, '2025-12-15', '10:30:00', '11:15:00', 'Scheduled'),
(47, 1, 47, 2, '2025-12-15', '13:00:00', '13:45:00', 'Scheduled'),
(48, 1, 48, NULL, '2025-12-16', '09:00:00', '09:30:00', 'Scheduled'),
(49, 1, 49, 2, '2025-12-16', '10:00:00', '10:45:00', 'Scheduled'),
(50, 1, 50, 2, '2025-12-16', '11:30:00', '12:15:00', 'Scheduled'),
(51, 1, 1, NULL, '2025-12-17', '09:00:00', '09:45:00', 'Scheduled'),
(52, 1, 2, 2, '2025-12-17', '10:30:00', '11:15:00', 'Scheduled'),
(53, 1, 3, 2, '2025-12-17', '13:00:00', '13:45:00', 'Scheduled'),
(54, 1, 4, NULL, '2025-12-18', '09:00:00', '09:30:00', 'Scheduled'),
(55, 1, 5, 2, '2025-12-18', '10:00:00', '10:45:00', 'Scheduled'),
(56, 1, 6, 2, '2025-12-18', '11:30:00', '12:15:00', 'Scheduled'),
(57, 1, 7, NULL, '2025-12-19', '09:00:00', '09:45:00', 'Scheduled'),
(58, 1, 8, 2, '2025-12-19', '10:30:00', '11:15:00', 'Scheduled'),
(59, 1, 9, 2, '2025-12-19', '13:00:00', '13:45:00', 'Scheduled'),
(60, 1, 10, NULL, '2025-12-22', '09:00:00', '09:30:00', 'Scheduled'),
(61, 1, 11, 2, '2025-12-22', '10:00:00', '10:45:00', 'Scheduled'),
(62, 1, 12, 2, '2025-12-22', '11:30:00', '12:15:00', 'Scheduled'),
(63, 1, 13, NULL, '2025-12-23', '09:00:00', '09:45:00', 'Scheduled'),
(64, 1, 14, 2, '2025-12-23', '10:30:00', '11:15:00', 'Scheduled'),
(65, 1, 15, 2, '2025-12-23', '13:00:00', '13:45:00', 'Scheduled'),
(66, 1, 16, NULL, '2025-12-26', '09:00:00', '09:30:00', 'Scheduled'),
(67, 1, 17, 2, '2025-12-26', '10:00:00', '10:45:00', 'Scheduled'),
(68, 1, 18, 2, '2025-12-26', '11:30:00', '12:15:00', 'Scheduled'),
(69, 1, 19, NULL, '2025-12-29', '09:00:00', '09:45:00', 'Scheduled'),
(70, 1, 20, 2, '2025-12-29', '10:30:00', '11:15:00', 'Scheduled'),
(71, 1, 21, 2, '2025-12-29', '13:00:00', '13:45:00', 'Scheduled'),
(72, 1, 22, NULL, '2025-12-30', '09:00:00', '09:30:00', 'Scheduled'),
(73, 1, 23, 2, '2025-12-30', '10:00:00', '10:45:00', 'Scheduled'),
(74, 1, 24, 2, '2025-12-30', '11:30:00', '12:15:00', 'Scheduled'),
(75, 1, 25, NULL, '2026-01-02', '09:00:00', '09:45:00', 'Scheduled'),
(76, 1, 26, 2, '2026-01-02', '10:30:00', '11:15:00', 'Scheduled'),
(77, 1, 27, 2, '2026-01-02', '13:00:00', '13:45:00', 'Scheduled'),
(78, 1, 28, NULL, '2026-01-05', '09:00:00', '09:30:00', 'Scheduled'),
(79, 1, 29, 2, '2026-01-05', '10:00:00', '10:45:00', 'Scheduled'),
(80, 1, 30, 2, '2026-01-05', '11:30:00', '12:15:00', 'Scheduled');

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
(2);

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
(1, 'General Dentistry', 'DEN-2020-54872');

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
(1, 1, 'Michael', 'James', 'Chen', '555-0101', 'michael.chen@dentalclinic.com', '2020-03-15', 'Active'),
(2, 2, 'Sarah', 'Marie', 'Rodriguez', '555-0102', 'sarah.rodriguez@dentalclinic.com', '2021-06-10', 'Active'),
(3, 3, 'David', 'William', 'Kim', '555-0103', 'david.kim@dentalclinic.com', '2019-11-22', 'Active'),
(104, 3, 'Bau', 'R', 'Edgar', '555-6834', 'bau.e@mail.com', '2025-12-03', 'Active'),
(123, 4, 'Karlito', 'M', 'Campos', '555-6834', 'k.campos20@gmail.com', '2025-12-05', 'Active');

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
(2, 'Dental Assistant'),
(3, 'Receptionist'),
(4, 'Admin');

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
(1, 1, 1, '2025-11-15', 205, 'Paid'),
(2, 2, 2, '2025-11-15', 265, 'Paid'),
(3, 3, 3, '2025-11-18', 120, 'Paid'),
(4, 4, 4, '2025-11-18', 75, 'Paid'),
(5, 5, 5, '2025-11-19', 1035, 'Paid'),
(6, 6, 6, '2025-11-20', 295, 'Paid'),
(7, 7, 7, '2025-11-20', 120, 'Paid'),
(8, 8, 8, '2025-11-21', 1185, 'Paid'),
(9, 9, 9, '2025-11-22', 120, 'Paid'),
(10, 10, 10, '2025-11-22', 360, 'Paid'),
(11, 11, 11, '2025-11-25', 350, 'Paid'),
(12, 12, 12, '2025-11-25', 160, 'Paid'),
(13, 13, 13, '2025-11-26', 120, 'Paid'),
(14, 14, 14, '2025-11-26', 950, 'Paid'),
(15, 15, 15, '2025-11-27', 295, 'Paid'),
(16, 16, 16, '2025-11-28', 120, 'Paid'),
(17, 17, 17, '2025-11-28', 180, 'Paid'),
(18, 18, 18, '2025-11-29', 160, 'Paid'),
(19, 19, 19, '2025-11-29', 120, 'Paid'),
(20, 20, 20, '2025-12-01', 950, 'Paid'),
(21, 21, 21, '2025-12-01', 220, 'Paid'),
(22, 22, 22, '2025-12-02', 1100, 'Paid'),
(23, 23, 23, '2025-12-02', 120, 'Paid'),
(24, 24, 24, '2025-12-03', 120, 'Paid'),
(25, 25, 25, '2025-12-03', 75, 'Paid'),
(26, 26, 26, '2025-12-04', 180, 'Partial'),
(27, 27, 27, '2025-12-04', 950, 'Partial'),
(28, 28, 28, '2025-12-05', 220, 'Partial'),
(29, 29, 29, '2025-12-05', 120, 'Partial'),
(30, 30, 30, '2025-12-08', 1100, 'Pending'),
(31, 31, 31, '2025-12-08', 350, 'Pending'),
(32, 32, 32, '2025-12-09', 75, 'Pending'),
(33, 33, 33, '2025-12-09', 120, 'Pending'),
(34, 34, 34, '2025-12-10', 180, 'Pending'),
(35, 35, 35, '2025-12-10', 950, 'Pending'),
(36, 36, 36, '2025-12-11', 220, 'Pending'),
(37, 37, 37, '2025-12-11', 120, 'Pending'),
(38, 38, 38, '2025-12-12', 1100, 'Pending'),
(39, 39, 39, '2025-12-12', 120, 'Pending'),
(40, 40, 40, '2025-12-12', 180, 'Pending');

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
(1, 'Jennifer', 'Anne', 'Smith', '1985-04-12', 'Female', 'O+', '555-0201', 'jennifer.smith@email.com', '123 Maple St, Springfield', '2025-10-15'),
(2, 'Robert', 'James', 'Johnson', '1990-07-23', 'Male', 'A+', '555-0202', 'robert.johnson@email.com', '456 Oak Ave, Springfield', '2025-10-16'),
(3, 'Maria', 'Isabel', 'Garcia', '1978-11-05', 'Female', 'B+', '555-0203', 'maria.garcia@email.com', '789 Pine Rd, Springfield', '2025-10-17'),
(4, 'David', 'Thomas', 'Williams', '1995-02-18', 'Male', 'AB+', '555-0204', 'david.williams@email.com', '101 Elm St, Springfield', '2025-10-18'),
(5, 'Lisa', 'Marie', 'Brown', '1982-09-30', 'Female', 'O-', '555-0205', 'lisa.brown@email.com', '202 Birch Ln, Springfield', '2025-10-19'),
(6, 'James', 'Edward', 'Davis', '1975-12-15', 'Male', 'A-', '555-0206', 'james.davis@email.com', '303 Cedar Blvd, Springfield', '2025-10-20'),
(7, 'Patricia', 'Lynn', 'Miller', '1992-03-22', 'Female', 'B+', '555-0207', 'patricia.miller@email.com', '404 Spruce Dr, Springfield', '2025-10-21'),
(8, 'John', 'Michael', 'Wilson', '1988-06-08', 'Male', 'O+', '555-0208', 'john.wilson@email.com', '505 Walnut Ct, Springfield', '2025-10-22'),
(9, 'Linda', 'Susan', 'Moore', '1979-01-14', 'Female', 'A+', '555-0209', 'linda.moore@email.com', '606 Cherry St, Springfield', '2025-10-23'),
(10, 'William', 'Robert', 'Taylor', '1991-08-09', 'Male', 'B-', '555-0210', 'william.taylor@email.com', '707 Aspen Way, Springfield', '2025-10-24'),
(11, 'Elizabeth', 'Grace', 'Anderson', '1987-05-17', 'Female', 'AB+', '555-0211', 'elizabeth.anderson@email.com', '808 Redwood Rd, Springfield', '2025-10-25'),
(12, 'Richard', 'Charles', 'Thomas', '1993-10-31', 'Male', 'O+', '555-0212', 'richard.thomas@email.com', '909 Magnolia Ave, Springfield', '2025-10-26'),
(13, 'Jessica', 'Ann', 'Jackson', '1984-12-25', 'Female', 'A-', '555-0213', 'jessica.jackson@email.com', '110 Palm St, Springfield', '2025-10-27'),
(14, 'Charles', 'Henry', 'White', '1976-02-28', 'Male', 'B+', '555-0214', 'charles.white@email.com', '111 Sycamore Ln, Springfield', '2025-10-28'),
(15, 'Karen', 'Diane', 'Harris', '1990-07-04', 'Female', 'O-', '555-0215', 'karen.harris@email.com', '112 Willow Way, Springfield', '2025-10-29'),
(16, 'Christopher', 'Paul', 'Martin', '1981-09-11', 'Male', 'AB-', '555-0216', 'christopher.martin@email.com', '113 Oakwood Dr, Springfield', '2025-10-30'),
(17, 'Nancy', 'Carol', 'Thompson', '1994-04-19', 'Female', 'A+', '555-0217', 'nancy.thompson@email.com', '114 Pinecrest Rd, Springfield', '2025-10-31'),
(18, 'Daniel', 'Joseph', 'Garcia', '1989-11-07', 'Male', 'B+', '555-0218', 'daniel.garcia@email.com', '115 Maplewood Ave, Springfield', '2025-11-01'),
(19, 'Betty', 'Louise', 'Martinez', '1977-03-26', 'Female', 'O+', '555-0219', 'betty.martinez@email.com', '116 Birchwood St, Springfield', '2025-11-02'),
(20, 'Matthew', 'Andrew', 'Robinson', '1995-06-13', 'Male', 'A-', '555-0220', 'matthew.robinson@email.com', '117 Cedarhurst Ln, Springfield', '2025-11-03'),
(21, 'Susan', 'Margaret', 'Clark', '1986-08-24', 'Female', 'B+', '555-0221', 'susan.clark@email.com', '118 Elmwood Dr, Springfield', '2025-11-04'),
(22, 'Anthony', 'Mark', 'Rodriguez', '1983-01-09', 'Male', 'AB+', '555-0222', 'anthony.rodriguez@email.com', '119 Sprucewood Ct, Springfield', '2025-11-05'),
(23, 'Sarah', 'Elizabeth', 'Lewis', '1992-05-30', 'Female', 'O+', '555-0223', 'sarah.lewis@email.com', '120 Walnutwood Way, Springfield', '2025-11-06'),
(24, 'Donald', 'Patrick', 'Lee', '1974-10-12', 'Male', 'A+', '555-0224', 'donald.lee@email.com', '121 Cherrywood Rd, Springfield', '2025-11-07'),
(25, 'Dorothy', 'Jean', 'Walker', '1988-02-17', 'Female', 'B-', '555-0225', 'dorothy.walker@email.com', '122 Aspenwood Ave, Springfield', '2025-11-08'),
(26, 'Mark', 'Steven', 'Hall', '1991-12-03', 'Male', 'O-', '555-0226', 'mark.hall@email.com', '123 Redwoodwood St, Springfield', '2025-11-09'),
(27, 'Sandra', 'Ruth', 'Allen', '1979-06-28', 'Female', 'AB+', '555-0227', 'sandra.allen@email.com', '124 Palmwood Ln, Springfield', '2025-11-10'),
(28, 'Paul', 'Christopher', 'Young', '1985-03-15', 'Male', 'A-', '555-0228', 'paul.young@email.com', '125 Magnoliawood Dr, Springfield', '2025-11-11'),
(29, 'Carol', 'Ann', 'King', '1993-09-22', 'Female', 'B+', '555-0229', 'carol.king@email.com', '126 Willowwood Ct, Springfield', '2025-11-12'),
(30, 'Steven', 'John', 'Wright', '1978-07-19', 'Male', 'O+', '555-0230', 'steven.wright@email.com', '127 Sycamorewood Way, Springfield', '2025-11-13'),
(31, 'Donna', 'Marie', 'Scott', '1987-04-11', 'Female', 'A+', '555-0231', 'donna.scott@email.com', '128 Oakwoodwood Rd, Springfield', '2025-11-14'),
(32, 'Kenneth', 'George', 'Green', '1990-08-05', 'Male', 'B-', '555-0232', 'kenneth.green@email.com', '129 Pinewoodwood Ave, Springfield', '2025-11-15'),
(33, 'Michelle', 'Lynn', 'Baker', '1982-11-27', 'Female', 'AB-', '555-0233', 'michelle.baker@email.com', '130 Maplecrest St, Springfield', '2025-11-16'),
(34, 'Edward', 'Francis', 'Adams', '1976-05-14', 'Male', 'O+', '555-0234', 'edward.adams@email.com', '131 Birchcrest Ln, Springfield', '2025-11-17'),
(35, 'Emily', 'Rose', 'Nelson', '1994-01-08', 'Female', 'A-', '555-0235', 'emily.nelson@email.com', '132 Cedarcrest Dr, Springfield', '2025-11-18'),
(36, 'Brian', 'Joseph', 'Hill', '1989-10-23', 'Male', 'B+', '555-0236', 'brian.hill@email.com', '133 Elmcrest Ct, Springfield', '2025-11-19'),
(37, 'Amanda', 'Kay', 'Ramirez', '1977-12-16', 'Female', 'O-', '555-0237', 'amanda.ramirez@email.com', '134 Sprucecrest Way, Springfield', '2025-11-20'),
(38, 'Ronald', 'David', 'Campbell', '1983-02-04', 'Male', 'AB+', '555-0238', 'ronald.campbell@email.com', '135 Walnutcrest Rd, Springfield', '2025-11-21'),
(39, 'Melissa', 'Sue', 'Mitchell', '1991-06-29', 'Female', 'A+', '555-0239', 'melissa.mitchell@email.com', '136 Cherrycrest Ave, Springfield', '2025-11-22'),
(40, 'Kevin', 'Raymond', 'Roberts', '1979-09-07', 'Male', 'B-', '555-0240', 'kevin.roberts@email.com', '137 Aspencrest St, Springfield', '2025-11-23'),
(41, 'Deborah', 'Jane', 'Carter', '1986-03-18', 'Female', 'O+', '555-0241', 'deborah.carter@email.com', '138 Redwoodcrest Ln, Springfield', '2025-11-24'),
(42, 'Jason', 'Thomas', 'Phillips', '1993-07-02', 'Male', 'A-', '555-0242', 'jason.phillips@email.com', '139 Palmcrest Dr, Springfield', '2025-11-25'),
(43, 'Laura', 'Beth', 'Evans', '1975-10-25', 'Female', 'B+', '555-0243', 'laura.evans@email.com', '140 Magnoliacrest Ct, Springfield', '2025-11-26'),
(44, 'Gary', 'William', 'Turner', '1988-05-31', 'Male', 'AB-', '555-0244', 'gary.turner@email.com', '141 Willowcrest Way, Springfield', '2025-11-27'),
(45, 'Sharon', 'Anne', 'Parker', '1980-01-26', 'Female', 'O-', '555-0245', 'sharon.parker@email.com', '142 Sycamorecrest Rd, Springfield', '2025-11-28'),
(46, 'Eric', 'Michael', 'Collins', '1992-04-13', 'Male', 'A+', '555-0246', 'eric.collins@email.com', '143 Oakcrest Ave, Springfield', '2025-11-29'),
(47, 'Cynthia', 'Diane', 'Edwards', '1978-08-20', 'Female', 'B-', '555-0247', 'cynthia.edwards@email.com', '144 Pinehurst St, Springfield', '2025-11-30'),
(48, 'Joshua', 'Andrew', 'Stewart', '1985-11-09', 'Male', 'O+', '555-0248', 'joshua.stewart@email.com', '145 Maplehurst Ln, Springfield', '2025-12-01'),
(49, 'Kathleen', 'Mary', 'Flores', '1990-12-22', 'Female', 'AB+', '555-0249', 'kathleen.flores@email.com', '146 Birchhurst Dr, Springfield', '2025-12-05'),
(50, 'Timothy', 'John', 'Morris', '1983-06-06', 'Male', 'A-', '555-0250', 'timothy.morris@email.com', '147 Cedarhurst Ct, Springfield', '2025-12-10');

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
(1, 1, '2025-11-15', '10:15:00', 205, 'Credit Card'),
(2, 2, '2025-11-15', '11:30:00', 265, 'Cash'),
(3, 3, '2025-11-18', '12:45:00', 120, 'Credit Card'),
(4, 4, '2025-11-18', '14:20:00', 75, 'Debit Card'),
(5, 5, '2025-11-19', '15:10:00', 500, 'Credit Card'),
(6, 5, '2025-11-26', '09:30:00', 535, 'Cash'),
(7, 6, '2025-11-20', '11:45:00', 295, 'Insurance'),
(8, 7, '2025-11-20', '13:20:00', 120, 'Credit Card'),
(9, 8, '2025-11-21', '15:30:00', 600, 'Credit Card'),
(10, 8, '2025-11-28', '10:00:00', 585, 'Cash'),
(11, 9, '2025-11-22', '10:45:00', 120, 'Debit Card'),
(12, 10, '2025-11-22', '12:30:00', 360, 'Credit Card'),
(13, 11, '2025-11-25', '11:15:00', 350, 'Credit Card'),
(14, 12, '2025-11-25', '13:45:00', 160, 'Cash'),
(15, 13, '2025-11-26', '15:20:00', 120, 'Debit Card'),
(16, 14, '2025-11-26', '16:10:00', 950, 'Insurance'),
(17, 15, '2025-11-27', '16:45:00', 295, 'Credit Card'),
(18, 16, '2025-11-28', '10:30:00', 120, 'Credit Card'),
(19, 17, '2025-11-28', '11:45:00', 180, 'Cash'),
(20, 18, '2025-11-29', '13:15:00', 160, 'Debit Card'),
(21, 19, '2025-11-29', '14:30:00', 120, 'Credit Card'),
(22, 20, '2025-12-01', '15:45:00', 950, 'Insurance'),
(23, 21, '2025-12-01', '16:30:00', 220, 'Credit Card'),
(24, 22, '2025-12-02', '09:30:00', 1100, 'Cash'),
(25, 23, '2025-12-02', '10:45:00', 120, 'Debit Card'),
(26, 24, '2025-12-03', '12:00:00', 120, 'Credit Card'),
(27, 25, '2025-12-03', '13:30:00', 75, 'Cash'),
(28, 26, '2025-12-04', '10:30:00', 100, 'Credit Card'),
(29, 27, '2025-12-04', '12:15:00', 400, 'Insurance'),
(30, 28, '2025-12-05', '14:00:00', 100, 'Debit Card'),
(31, 29, '2025-12-05', '15:30:00', 60, 'Credit Card'),
(32, 5, '2025-12-01', '11:00:00', 0, 'Credit Card'),
(33, 8, '2025-12-02', '11:00:00', 0, 'Cash'),
(34, 14, '2025-12-03', '11:00:00', 0, 'Insurance'),
(35, 22, '2025-12-04', '11:00:00', 0, 'Credit Card'),
(36, 1, '2025-12-05', '11:00:00', 0, 'Credit Card'),
(37, 2, '2025-12-06', '11:00:00', 0, 'Cash'),
(38, 3, '2025-12-07', '11:00:00', 0, 'Debit Card'),
(39, 4, '2025-12-08', '11:00:00', 0, 'Credit Card'),
(40, 6, '2025-12-09', '11:00:00', 0, 'Insurance'),
(41, 7, '2025-12-10', '11:00:00', 0, 'Credit Card'),
(42, 9, '2025-12-11', '11:00:00', 0, 'Debit Card'),
(43, 10, '2025-12-12', '11:00:00', 0, 'Credit Card'),
(44, 11, '2025-12-13', '09:00:00', 0, 'Credit Card'),
(45, 12, '2025-12-13', '10:00:00', 0, 'Cash'),
(46, 13, '2025-12-13', '11:00:00', 0, 'Debit Card'),
(47, 15, '2025-12-13', '12:00:00', 0, 'Credit Card'),
(48, 16, '2025-12-13', '13:00:00', 0, 'Insurance'),
(49, 17, '2025-12-13', '14:00:00', 0, 'Credit Card'),
(50, 18, '2025-12-13', '15:00:00', 0, 'Cash'),
(51, 19, '2025-12-14', '09:00:00', 0, 'Debit Card'),
(52, 20, '2025-12-14', '10:00:00', 0, 'Credit Card'),
(53, 21, '2025-12-14', '11:00:00', 0, 'Insurance'),
(54, 23, '2025-12-14', '12:00:00', 0, 'Credit Card'),
(55, 24, '2025-12-14', '13:00:00', 0, 'Cash'),
(56, 25, '2025-12-14', '14:00:00', 0, 'Debit Card'),
(57, 26, '2025-12-15', '09:00:00', 0, 'Credit Card'),
(58, 27, '2025-12-15', '10:00:00', 0, 'Insurance'),
(59, 28, '2025-12-15', '11:00:00', 0, 'Credit Card'),
(60, 29, '2025-12-15', '12:00:00', 0, 'Cash'),
(61, 1, '2025-12-16', '09:00:00', 0, 'Credit Card'),
(62, 2, '2025-12-16', '10:00:00', 0, 'Cash'),
(63, 3, '2025-12-16', '11:00:00', 0, 'Debit Card'),
(64, 4, '2025-12-16', '12:00:00', 0, 'Credit Card'),
(65, 5, '2025-12-17', '09:00:00', 0, 'Insurance'),
(66, 6, '2025-12-17', '10:00:00', 0, 'Credit Card'),
(67, 7, '2025-12-17', '11:00:00', 0, 'Cash'),
(68, 8, '2025-12-17', '12:00:00', 0, 'Debit Card'),
(69, 9, '2025-12-18', '09:00:00', 0, 'Credit Card'),
(70, 10, '2025-12-18', '10:00:00', 0, 'Insurance'),
(71, 11, '2025-12-18', '11:00:00', 0, 'Credit Card'),
(72, 12, '2025-12-18', '12:00:00', 0, 'Cash'),
(73, 13, '2025-12-19', '09:00:00', 0, 'Debit Card'),
(74, 14, '2025-12-19', '10:00:00', 0, 'Credit Card'),
(75, 15, '2025-12-19', '11:00:00', 0, 'Insurance'),
(76, 16, '2025-12-19', '12:00:00', 0, 'Credit Card'),
(77, 17, '2025-12-20', '09:00:00', 0, 'Cash'),
(78, 18, '2025-12-20', '10:00:00', 0, 'Debit Card'),
(79, 19, '2025-12-20', '11:00:00', 0, 'Credit Card'),
(80, 20, '2025-12-20', '12:00:00', 0, 'Insurance'),
(81, 21, '2025-12-21', '09:00:00', 0, 'Credit Card'),
(82, 22, '2025-12-21', '10:00:00', 0, 'Cash'),
(83, 23, '2025-12-21', '11:00:00', 0, 'Debit Card'),
(84, 24, '2025-12-21', '12:00:00', 0, 'Credit Card'),
(85, 25, '2025-12-22', '09:00:00', 0, 'Insurance'),
(86, 26, '2025-12-22', '10:00:00', 0, 'Credit Card'),
(87, 27, '2025-12-22', '11:00:00', 0, 'Cash'),
(88, 28, '2025-12-22', '12:00:00', 0, 'Debit Card'),
(89, 29, '2025-12-23', '09:00:00', 0, 'Credit Card'),
(90, 30, '2025-12-23', '10:00:00', 0, 'Insurance'),
(91, 31, '2025-12-23', '11:00:00', 0, 'Credit Card'),
(92, 32, '2025-12-23', '12:00:00', 0, 'Cash'),
(93, 33, '2025-12-24', '09:00:00', 0, 'Debit Card'),
(94, 34, '2025-12-24', '10:00:00', 0, 'Credit Card'),
(95, 35, '2025-12-24', '11:00:00', 0, 'Insurance'),
(96, 36, '2025-12-24', '12:00:00', 0, 'Credit Card'),
(97, 37, '2025-12-26', '09:00:00', 0, 'Cash'),
(98, 38, '2025-12-26', '10:00:00', 0, 'Debit Card'),
(99, 39, '2025-12-26', '11:00:00', 0, 'Credit Card'),
(100, 40, '2025-12-26', '12:00:00', 0, 'Insurance');

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
(3);

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
(1, 'Teeth Cleaning', 'Professional dental cleaning and polishing', 120),
(2, 'Dental Filling', 'Tooth-colored composite filling', 180),
(3, 'Root Canal', 'Endodontic treatment for infected tooth', 950),
(4, 'Tooth Extraction', 'Simple tooth removal', 220),
(5, 'Dental Crown', 'Porcelain crown placement', 1100),
(6, 'Dental X-Ray', 'Full mouth radiographic imaging', 85),
(7, 'Consultation', 'Initial examination and diagnosis', 75),
(8, 'Teeth Whitening', 'Professional whitening treatment', 350);

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
(1, 1, 1, 1, '2025-11-15', 'Regular cleaning, no cavities found'),
(2, 2, 1, 2, '2025-11-15', 'Filling on tooth #19, minor decay'),
(3, 3, 1, 3, '2025-11-18', 'Teeth cleaning and fluoride treatment'),
(4, 4, 1, 4, '2025-11-18', 'Consultation for wisdom teeth'),
(5, 5, 1, 5, '2025-11-19', 'Root canal on tooth #14'),
(6, 6, 1, 6, '2025-11-20', 'Extraction of tooth #32'),
(7, 7, 1, 7, '2025-11-20', 'Dental cleaning and examination'),
(8, 8, 1, 8, '2025-11-21', 'Crown placement on tooth #30'),
(9, 9, 1, 9, '2025-11-22', 'Regular checkup and cleaning'),
(10, 10, 1, 10, '2025-11-22', 'Two fillings needed - teeth #3 and #14'),
(11, 11, 1, 11, '2025-11-25', 'Whitening treatment session 1 of 2'),
(12, 12, 1, 12, '2025-11-25', 'Consultation and X-rays'),
(13, 13, 1, 13, '2025-11-26', 'Deep cleaning quadrant 1'),
(14, 14, 1, 14, '2025-11-26', 'Root canal on tooth #7'),
(15, 15, 1, 15, '2025-11-27', 'Extraction of tooth #1'),
(16, 16, 1, 16, '2025-11-28', 'Regular cleaning and checkup'),
(17, 17, 1, 17, '2025-11-28', 'Filling on tooth #12'),
(18, 18, 1, 18, '2025-11-29', 'Dental X-rays and examination'),
(19, 19, 1, 19, '2025-11-29', 'Teeth cleaning'),
(20, 20, 1, 20, '2025-12-01', 'Root canal follow-up'),
(21, 21, 1, 21, '2025-12-01', 'Extraction of tooth #17'),
(22, 22, 1, 22, '2025-12-02', 'Crown preparation'),
(23, 23, 1, 23, '2025-12-02', 'Regular checkup'),
(24, 24, 1, 24, '2025-12-03', 'Teeth cleaning and polishing'),
(25, 25, 1, 25, '2025-12-03', 'Consultation for braces'),
(26, 26, 1, 26, '2025-12-04', 'Filling on tooth #5'),
(27, 27, 1, 27, '2025-12-04', 'Root canal on tooth #19'),
(28, 28, 1, 28, '2025-12-05', 'Extraction of tooth #32'),
(29, 29, 1, 29, '2025-12-05', 'Regular cleaning'),
(30, 30, 1, 30, '2025-12-08', 'Crown cementation'),
(31, 31, 1, 31, '2025-12-08', 'Whitening treatment session 2 of 2'),
(32, 32, 1, 32, '2025-12-09', 'Consultation for implant'),
(33, 33, 1, 33, '2025-12-09', 'Deep cleaning quadrant 2'),
(34, 34, 1, 34, '2025-12-10', 'Filling on tooth #14'),
(35, 35, 1, 35, '2025-12-10', 'Root canal on tooth #30'),
(36, 36, 1, 36, '2025-12-11', 'Extraction of tooth #16'),
(37, 37, 1, 37, '2025-12-11', 'Regular checkup'),
(38, 38, 1, 38, '2025-12-12', 'Crown placement on tooth #3'),
(39, 39, 1, 39, '2025-12-12', 'Teeth cleaning'),
(40, 40, 1, 40, '2025-12-12', 'Filling on tooth #29');

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
(1, 1, 1, 120),
(2, 1, 6, 85),
(3, 2, 2, 180),
(4, 2, 6, 85),
(5, 3, 1, 120),
(6, 4, 7, 75),
(7, 5, 3, 950),
(8, 5, 6, 85),
(9, 6, 4, 220),
(10, 6, 7, 75),
(11, 7, 1, 120),
(12, 8, 5, 1100),
(13, 8, 6, 85),
(14, 9, 1, 120),
(15, 10, 2, 180),
(16, 10, 2, 180),
(17, 11, 8, 350),
(18, 12, 7, 75),
(19, 12, 6, 85),
(20, 13, 1, 120),
(21, 14, 3, 950),
(22, 15, 4, 220),
(23, 15, 7, 75),
(24, 16, 1, 120),
(25, 17, 2, 180),
(26, 18, 6, 85),
(27, 18, 7, 75),
(28, 19, 1, 120),
(29, 20, 3, 950),
(30, 21, 4, 220),
(31, 22, 5, 1100),
(32, 23, 1, 120),
(33, 24, 1, 120),
(34, 25, 7, 75),
(35, 26, 2, 180),
(36, 27, 3, 950),
(37, 28, 4, 220),
(38, 29, 1, 120),
(39, 30, 5, 1100),
(40, 31, 8, 350),
(41, 32, 7, 75),
(42, 33, 1, 120),
(43, 34, 2, 180),
(44, 35, 3, 950),
(45, 36, 4, 220),
(46, 37, 1, 120),
(47, 38, 5, 1100),
(48, 39, 1, 120),
(49, 40, 2, 180);

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
(1, 'securepass123'),
(2, 'assistantpass456'),
(3, 'receptionpass789'),
(123, '123');

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
  MODIFY `appointmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoiceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `treatments`
--
ALTER TABLE `treatments`
  MODIFY `treatmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `treatment_service`
--
ALTER TABLE `treatment_service`
  MODIFY `treatmentserviceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

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
