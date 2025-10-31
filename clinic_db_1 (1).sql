-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2025 at 08:25 AM
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
-- Database: `clinic_db_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `image`) VALUES
('TR53cu1F2Tx2z1GeJ4OU', 'Jherain Norelle Salcedo', 'jrainrainsalcedo@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'du2Gk2ApA2IjChz64Gqa.jpg'),
('S2DkRsDoet7PLia0wQzy', 'poypoyduey', '12345@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'gSuuPmvc9eyzMXFuwAm4.png'),
('002', 'potpot', 'pot@gmail.com', 'potpot123', ''),
('', 'bungol', 'bungol@gmail.com', '123456789', ''),
('gjzCOoZlIcbBI4Doehxc', 'Sebby', 'Sebby@gmail.com', 'bd5e5eb049f3907175f54f5a571ba6b9fdea36ab', 'TmaSu9mx9hHEslfppSQF.png');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` text NOT NULL,
  `gender` varchar(40) NOT NULL,
  `departments` varchar(100) NOT NULL,
  `doctor_id` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(40) NOT NULL,
  `booking_status` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `reg_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `specialisation` varchar(100) NOT NULL,
  `education` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `number` text NOT NULL,
  `profile_desc` text NOT NULL,
  `profile` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_reg` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `specialisation`, `education`, `experience`, `gender`, `email`, `password`, `number`, `profile_desc`, `profile`, `status`, `date_reg`) VALUES
('', 'polapol', '', '', '', '', 'duye@gmail.com', '600a1ccc5906595e0c90264a15f6f95870d0d2ee', '', '', '', '', '2025-10-28'),
('001', 'janpol', 'Dentist', 'graduated phinma', '4 yrs', 'male', 'janpol@gmail.com', '12345678', '096654144567', '', '', '', '2025-10-28'),
('001', 'janpol', 'Dentist', 'graduated phinma', '4 yrs', 'male', 'janpol@gmail.com', '12345678', '096654144567', '', '', '', '2025-10-28'),
('', 'Sebby', '', '', '', '', 'Sebby@gmail.com', '737a5c54a7d248ade9741a9cc6c6a2807bb832d1', '', '', '', '', '2025-10-28'),
('101', 'Sebro', 'Surgeon', 'PhinmaEd', '69 years', 'Undefined', 'seso@gmail.com', '12345678', '09222222222', '', '', 'Married', '2025-10-28'),
('', 'lason2', 'dentist', 'adaw', '123', 'Gay', '123@gsadw.com', '123', 'jadfklnkwjeas', '', '', '', '2025-10-29'),
('', 'lason2', 'dentist', 'adaw', '123', 'Gay', '123@gsadw.com', '123', 'jadfklnkwjeas', '', '', '', '2025-10-29');

-- --------------------------------------------------------

--
-- Table structure for table `doc_message`
--

CREATE TABLE `doc_message` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `doctor` varchar(100) NOT NULL,
  `patient` varchar(100) NOT NULL,
  `amount_paid` int(100) NOT NULL,
  `description` text NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `date_discharge` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `id` varchar(20) NOT NULL,
  `patient_id` varchar(20) NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `treatment` varchar(100) NOT NULL,
  `disease` varchar(100) NOT NULL,
  `amount` int(50) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `approval_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `subject`, `message`) VALUES
('tUwX2T8piyWNoI5hiwsJ', '', 'Jherain Salcedo', 'rainrainsalcedo@gmail.com', 'Flu', 'Hello doc, I have to inform you that I have a flu and cough. Can you check on me this saturday afternoon?');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contact` text NOT NULL,
  `age` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `marital_status` varchar(50) NOT NULL,
  `blood_group` varchar(50) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `date_reg` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `email`, `password`, `status`, `gender`, `contact`, `age`, `dob`, `marital_status`, `blood_group`, `profile`, `date_reg`) VALUES
('hfzvGnTUsrzBrG9Ps5rH', 'Jherain Salcedo', 'rainrainsalcedo@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'pending', 'female', '+639690451477', '', '2005-06-18', 'Married', 'A positive', 'zfiDwwzh3KKxzt555A7G.png', '2025-10-16'),
('0Ugw1YFUh7YG9HjAAFAU', 'Jherain Salcedo', 'jherainsalcedo@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'pending', 'female', '09665414458', '', '2025-10-16', 'Married', 'O positve', '3Ubl2YS7fpfrAbdcj94Z.png', '2025-10-16'),
('nopMwLDaS495XDyd3c30', 'Jherain Salcedo', 'jherainsalcedo@email.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'pending', 'female', '0965065948686', '', '2025-10-16', '', 'AB positive', '9vADLhjX5S8ZrYnzXJwP.png', '2025-10-16'),
('TINxcE4p6sroatXGkUgw', 'Sebastian', 'sebastian_akatok@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'pending', 'male', '0981818181', '', '2006-07-21', 'Married', 'AB positive', 'E3TzjeOq3TMpCVzGaHm2.jpg', '2025-10-17'),
('GyZPI2uY0ddczyd3Rite', 'rain', 'Jherainrainsalcedo@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'pending', 'female', '09690452477', '', '2025-10-02', 'Single', 'A positive', 'CsDfdWTYUIpiI6VnoKRJ.jpg', '2025-10-17'),
('123', 'Leo', 'Leo_maoten@gmail.com', 'maotenako123', 'Deceased', 'Gay', '1234567891011', '69', '', 'Soloparent', 'Typekita', '', '2025-10-28'),
('123', 'Leo', 'Leo_maoten@gmail.com', 'maotenako123', 'Deceased', 'Gay', '1234567891011', '69', '', 'Soloparent', 'Typekita', '', '2025-10-28'),
('', 'Leo', '', 'pogi12345', 'Deceased', 'Gay', '', '69', '', 'Soloparent', 'Typekita', '', '2025-10-28'),
('', 'Leo', '', 'pogi12345', 'Deceased', 'Gay', '', '69', '', 'Soloparent', 'Typekita', '', '2025-10-28'),
('', 'poypoy', 'poy@gamil.com', '12345678', 'Deceased', 'Gay', 'mvdsfklnq', '69', '', 'Soloparent', 'Typekita', '', '2025-10-29'),
('', 'poypoy', 'poy@gamil.com', '12345678', 'Deceased', 'Gay', 'mvdsfklnq', '69', '', 'Soloparent', 'Typekita', '', '2025-10-29'),
('g3Gvgq85vs3czdVIFpNn', 'lason', '12345@gmial.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'pending', 'male', '+639111111111111', '', '2025-10-06', 'Single', 'A positive', 'OSOqVX6HkHWN8Ml0d5J8.png', '2025-10-29'),
('7vDAQpLwSye1TDOmNkuZ', 'sassy', 'sassyanne@gmail.com', 'a1d10e9d917c9eaf8d6737d45ab93a2c2745e713', 'pending', 'female', '+639668214076', '', '2006-04-04', 'Single', 'B negative', 'peyeFAhUra7E0raGrTre.png', '2025-10-29'),
('UvkvcZNAmF4HxnXCuVrG', 'sassy', 'sassyanne@asdqwdas.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'pending', 'other', '+639668214076', '', '2006-04-04', 'Married', 'AB negative', '9fx6R5YHcBVPvzYhrofM.png', '2025-10-29'),
('', 'lason2', 'lason2@mai2.com', '123', 'Married', 'Gay', 'qweqw as', '62', '', 'Soloparent', 'Typekita', '', '2025-10-29'),
('', 'lason2', 'lason2@mai2.com', '123', 'Married', 'Gay', 'qweqw as', '62', '', 'Soloparent', 'Typekita', '', '2025-10-29');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` varchar(20) NOT NULL,
  `appointment_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `diagnosis` text NOT NULL,
  `medication` text NOT NULL,
  `instructions` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` varchar(20) NOT NULL,
  `patient_id` varchar(20) NOT NULL,
  `doctor_id` varchar(20) NOT NULL,
  `msg` text NOT NULL,
  `reply` text NOT NULL,
  `delivered_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(50) NOT NULL,
  `department` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `service_detail` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `price`, `department`, `image`, `service_detail`, `status`) VALUES
('u3AT6CgjIGg51bhFNaeE', 'x-ray', 100, 'x-ray', '345547757_2420496884782059_2778380731848073730_n.jpg', 'Hello doc, i would like to do an x-ray', 'active'),
('AW6Ozndt6la6FfggAx83', 'x-ray', 100, 'x-ray', '346098426_649536177186648_200538077716541766_n.jpg', 'I would like to get an appoinment this saturday afternoon for x-ray please', 'active'),
('r1qNPHgXrFWSsavzvcVr', 'physical theraphy', 2147483647, 'Theraphy', '346138066_6106667522758573_3968320306986401959_n.jpg', 'ClinicCare is a trusted healthcare provider offering quality medical services\r\nwith compassion and professionalism.\r\nOur experienced team delivers personalized care using modern technology to ensure your health and well-being', 'active'),
('DphacZDbpm0LZy9F6O1o', 'check-up', 2147483647, 'clinic', '355067527_1291655148106241_1886955535682024594_n.jpg', 'ClinicCare is a trusted healthcare provider offering quality medical services\r\nwith compassion and professionalism.\r\nOur experienced team delivers personalized care using modern technology to ensure your health and well-being.', 'deactive');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
