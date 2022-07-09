-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2022 at 05:06 PM
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
-- Database: `swadaya_farm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `ido` int(11) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `order_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `idp` int(11) NOT NULL,
  `name_produk` varchar(50) NOT NULL,
  `kategori_produk` varchar(50) NOT NULL,
  `type_produk` varchar(50) NOT NULL,
  `img_produk` varchar(100) NOT NULL,
  `desc_produk` text NOT NULL,
  `harga_produk` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`idp`, `name_produk`, `kategori_produk`, `type_produk`, `img_produk`, `desc_produk`, `harga_produk`) VALUES
(1, 'Kambing Kacang', 'Kambing', 'Hewan Potong', 'https://cdn-cas.orami.co.id/parenting/images/Jenis_Kambing_pexels.com_ArtHouse_Studio.width-800.jpg', 'Kambing kacang banyak dijumpai karena masyarakat akan mencari kambing ini menjelang hari raya Idul Adha.\r\n\r\nHarganya yang sangat terjangkau jika dibandingkan dengan harga jenis kambing lainnya menjadi salah satu alasan mengapa kambing kacang banyak dicari.', 2500000),
(2, 'Kambing Etawa', 'Kambing', 'Hewan Potong', 'https://cdn-cas.orami.co.id/parenting/images/Kambing_Etawa_www.etawajaya.com.width-800.jpg', 'Kambing etawa dikenal sebagai kambing yang menghasilkan susu enak dan banyak. Per harinya, kambing etawa bisa menghasilkan\r\n\r\nJenis kambing ini memiliki ciri khas kakinya yang pendek. Meski demikian, tubuhnya cukup besar. Tinggi kambing etawa berkisar antara 127 cm untuk kambing jantan dan untuk kambing betina etawa memiliki tinggi 92 cm.', 3000000),
(3, 'Kambing Jawarandu', 'Kambing', 'Hewan Potong', 'https://i0.wp.com/starfarm.co.id/wp-content/uploads/2020/07/kambing-jawa-randu-star-farm.jpg?fit=688', 'Kambing jawarandu menjadi salah satu jenis kambing yang juga sama-sama memiliki kemampuan untuk menghasilkan susu dalam jumlah banyak.\r\n\r\nTampilannya mirip dengan kambing kacang karena memang kambing jawarandu merupakan hasil persilangan dari kambing kacang dengan kambing etawa. Ukurannya sedang karena hanya memiliki bobot seberat 40 kg.', 3500000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(8) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(16) NOT NULL,
  `email` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama`, `alamat`, `jenis_kelamin`, `email`, `status`) VALUES
(1, 'maulana', 'aff4b352312d5569903d88e0e68d3fbb', 'Maulana Hady', 'Kp. Utan no.41', 'Pria', 'maulanasains@gmail.com', 'admin'),
(4, 'arba', '8c4ae4c1ce019395be117c557de1d07e', 'Arba Nur Orbita', 'kebayoran lama', 'perempuan', 'arbanur@gmail.com', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`idp`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `idp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
