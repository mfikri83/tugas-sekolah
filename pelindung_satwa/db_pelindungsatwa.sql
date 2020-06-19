-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2020 at 08:56 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pelindungsatwa`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `animal_id` int(11) NOT NULL,
  `animal_name` varchar(101) NOT NULL,
  `animal_latin` varchar(101) NOT NULL,
  `animal_icon` varchar(51) NOT NULL,
  `animal_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`animal_id`, `animal_name`, `animal_latin`, `animal_icon`, `animal_desc`) VALUES
(1, 'Unta', 'Camelus', 'unta.jpg', 'Unta atau Onta adalah dua spesies hewan berkuku genap dari genus Camelus yang hidup ditemukan di wilayah kering dan gurun di Asia dan Afrika Utara. Rata-rata umur harapan hidup unta adalah antara 30 sampai 50 tahun.'),
(2, 'Kucing Anggora Turki', 'Felis catus', 'kucinganggora.jpg', 'Anggora turki adalah salah satu ras kucing domestik alami tertua. Ras ini berasal dari Ankara, Turki. Kucing ini sangat populer dan terkenal di Indonesia. Secara sederhana, ras kucing ini juga dikenal sebagai anggora atau kucing ankara.'),
(3, 'Gajah Asia', 'Elephas maximus', 'gajah.jpg', 'Gajah asia, kadang dikenal dengan nama salah satu subspesiesnya, gajah india, adalah satu dari tiga spesies gajah yang masih hidup, dan merupakan satu-satunya spesies gajah dari genus Elephas yang masih hidup. Hewan ini adalah hewan darat terbesat di Asia. ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`animal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animal`
--
ALTER TABLE `animal`
  MODIFY `animal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
