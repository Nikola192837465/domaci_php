-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 2, 2024 at 12:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itehphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `korisnik_id` int(11) NOT NULL,
  `imePrezime` varchar(80) NOT NULL,
  `username` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`korisnik_id`, `imePrezime`, `username`, `password`) VALUES
(1, 'Nikola', 'nikola', 'nikola'),
(2, 'Marko', 'marko', 'marko');

-- --------------------------------------------------------

--
-- Table structure for table `prodaja`
--

CREATE TABLE `prodaja` (
  `proizvod_id` int(11) NOT NULL,
  `naziv` varchar(80) NOT NULL,
  `godina_proizvodnje` varchar(80) NOT NULL,
  `vrsta` varchar(80) NOT NULL,
  `cena` int(80) NOT NULL,
  `korisnik_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prodaja`
--

INSERT INTO `prodaja` (`proizvod_id`, `naziv`, `godina_proizvodnje`, `vrsta`, `cena`, `korisnik_id`) VALUES
(1, 'Smoki', '2023', 'Grickalice', 80, 1),
(2, 'Domestos', '2022', 'Kucna hemija', 200, 1),
(3, 'Jogurt', '2023', 'Osnovne namernice', 250, 1),
(4, 'Pedigree Granule', '2022', 'Hrana za pse', 400, 1),
(5, 'Orbit zvake', '2023', 'Grickalice', 50, 1),
(6, 'Cips', '2023', 'Grickalica', 300, 2),
(7, 'Coca Cola', '2023', 'Sokovi', 100, 2),
(8, 'Stark Najlepse Zelje', '2022', 'Cokolada', 200, 2),
(9, 'Grand Kafa 200g', '2023', 'Kafa', 250, 2),
(10, 'Fanta', '2023', 'Sokovi', 120, 2),
(11, 'Pringles', '2023', 'Grickalice', 350, 1),
(12, 'Lays', '2023', 'Grickalice', 290, 1),
(13, 'Ajax', '2022', 'Kucna hemija', 150, 1),
(14, 'Nestle Cokolada', '2023', 'Cokolada', 220, 2),
(15, 'Plazma', '2023', 'Biskviti', 180, 1),
(16, 'Zewa Toalet papir', '2022', 'Kucna hemija', 450, 2),
(17, 'Milka', '2023', 'Cokolada', 180, 2),
(18, 'Red Bull', '2023', 'Energetski napitak', 220, 2),
(19, 'Pepsi', '2023', 'Sokovi', 110, 2),
(20, 'Bounty', '2023', 'Cokolada', 200, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`korisnik_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `korisnik_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
