-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2022 at 11:57 AM
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
-- Database: `phpdasar`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `pendakian`
--

CREATE TABLE `pendakian` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nohp` int(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ktp` varchar(100) NOT NULL,
  `naik` varchar(15) NOT NULL,
  `turun` varchar(15) NOT NULL,
  `berangkatnaik` date NOT NULL,
  `berangkatturun` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pendakian`
--

INSERT INTO `pendakian` (`id`, `nama`, `nohp`, `email`, `ktp`, `naik`, `turun`, `berangkatnaik`, `berangkatturun`) VALUES
(1, 'adislankinggg', 1241435, 'aladismuhammad@gmail.com', '6303a5b87af42.jpg', 'cibodas', 'cibodas', '2022-07-13', '2022-07-15'),
(3, 'cibu', 896772642, 'cibu@gmail.com', 'cibu.jpg', 'cibodas', 'cibbodas', '2021-09-02', '2021-09-04'),
(4, 'cibabay', 812483532, 'cibabay@gmail.com', 'cibabay.jpg', 'cibodas', 'cibodas', '2021-09-10', '2021-09-17'),
(6, 'adbisan', 151515, 'qwr@gmail.com', '', 'cibodas', 'cibodas', '0000-00-00', '0000-00-00'),
(7, 'muhammad al adis', 12155325, 'amwodm@gmail.com', '61783a2547065.jpg', 'cibodas', 'cibodas', '2021-10-24', '2021-10-26'),
(8, 'brader roman', 14141, 'bra@gmail.com', '618cdd86afa60.jpg', 'cibodas', 'cibodas', '2021-10-27', '2021-10-29'),
(9, 'Muhammad Rio', 2147483647, 'kwkk@gmail.com', '617848e550439.jpg', 'cibodas', 'cibodas', '2021-10-28', '2021-10-29'),
(10, 'Muhammad Al Adis', 2147483647, 'aladismuhammad@gmail.com', '618cdcebb7023.jpg', 'cibodas', 'cibodas', '2021-11-11', '2021-11-13'),
(11, 'isian aja', 2127481794, 'isianaja@gmail.com', '618cddadaece8.jpg', ' ciputi', '\r\n    cibodas', '2021-11-11', '2021-11-13'),
(12, 'amarihi', 812154817, 'amarihi@gmail.com', '618cde347b8f2.jpg', 'cibodas', 'cibodas', '2021-11-12', '2021-11-14'),
(13, 'aladis', 812121434, 'aladis@gmail.com', '618cdf6c23da4.jpg', 'cibodas', 'cibodas', '2021-11-11', '2021-11-13'),
(14, 'BANG ADIS', 2147483647, 'niko.asd@gmail.com', '61a9f723bcc51.jpg', 'cibodas', 'cibodas', '2000-02-20', '2000-03-20'),
(15, 'abidisnanani ', 9281642, 'abidisn@gmail.com', '61c15a2d6e01f.jpg', 'cibodas', 'cibodas', '2021-12-21', '2021-12-23'),
(16, 'dados', 2147483647, 'dados@gmail.com', '61d5b87fb2b18.jpg', 'cibodas', 'cibodas', '2022-01-05', '2022-01-07'),
(17, 'maul', 23532, 'maul@gmail.com', '61ebd877e54a5.jpg', ' cibodas', '\r\n    cibodas', '2022-01-22', '2022-01-24'),
(18, 'maniak', 121531, 'maniak@gmail.com', '61f63e2431cf9.jpg', ' cibodas', '\r\n    cibodas', '2022-01-30', '2022-02-02'),
(19, 'aji', 123431, 'aji@gmail.com', '61fa0a317c7cf.jpg', ' ciputi', '\r\n    cibodas', '2022-02-02', '2022-02-04'),
(20, 'arif', 12413, 'arif@gmail.com', '61fbb48083ed0.jpg', ' cibodas', '\r\n    cibodas', '2022-02-04', '2022-02-05'),
(21, 'aiwdjqwijd', 1241, 'awda@gmail.com', '6215db52142a3.jpg', ' cibodas', '\r\n    cibodas', '2022-02-23', '2022-02-25'),
(22, 'adbisw', 124547777, 'abis@gmail.com', '6215dc95871bc.jpg', ' cibodas', '\r\n    cibodas', '2022-02-24', '2022-02-26'),
(23, 'asep', 1233123, 'asep@gmail.com', '6215dd1f0287b.jpg', ' cibodas', '\r\n    cibodas', '2022-02-23', '2022-02-25'),
(24, 'aadis', 124132, 'adis@gmail.com', '623ac09bbaed1.jpg', ' cibodas', '\r\n    cibodas', '2022-03-23', '2022-03-24'),
(25, 'siadqwd', 123543, 'siadqwd@gmail.com', '623ac481a84ae.jpg', ' cibodas', '\r\n    cibodas', '2022-03-23', '2022-03-23'),
(26, 'arifin', 124151, 'arifin@gmail.com', '624fdd78a4a53.jpg', ' cibodas', '\r\n    cibodas', '2022-04-08', '2022-04-08'),
(27, 'alis', 124141, 'alis@gmail.com', '628c7092be831.jpg', ' cibodas', '\r\n    cibodas', '2022-05-24', '2022-05-25'),
(28, 'adis', 1241, 'aladis@gmail.com', '62a9cb231a01b.jpg', ' cibodas', '\r\n    cibodas', '2022-06-15', '2022-06-16'),
(29, 'adiswe', 23424, 'awdsiaw@gmail.com', '6305d2168bfd6.jpeg', ' cibodas', '\r\n    cibodas', '2022-08-24', '2022-08-24'),
(30, 'abidinkpi', 151, 'kpibidin@gmail.com', '6305d3514ec74.jpeg', ' cibodas', '\r\n    cibodas', '2022-08-24', '2022-08-24'),
(31, 'adissssss', 1243232553, 'adis@gmail.com', '6315763ae90de.jpg', ' cibodas', '\r\n    cibodas', '2022-09-05', '2022-09-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pendakian`
--
ALTER TABLE `pendakian`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pendakian`
--
ALTER TABLE `pendakian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
