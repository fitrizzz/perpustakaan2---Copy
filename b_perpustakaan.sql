-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2025 at 02:49 PM
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
-- Database: `b_perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `buku_id` int(255) NOT NULL,
  `nama_buku` varchar(300) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `harga` double(255,2) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`buku_id`, `nama_buku`, `keterangan`, `harga`, `kategori`, `gambar`, `status`) VALUES
(365214879, 'biawak database', '    Lorem ipsum dolor sit, amet consectetur adipisicing elit. Fugiat minima recusandae, doloribus voluptate voluptatem corporis. Commodi amet ratione minus nemo perferendis id consequatur atque cupiditate ab, sequi in libero et veniam non reprehenderit ut quasi? Odio neque mollitia iure enim earum! Quis reprehenderit magnam, obcaecati mollitia vero eveniet libero quaerat, et possimus culpa accusamus dicta non nemo harum voluptatem dolor suscipit id voluptates similique amet repellat nulla iusto!', 50.30, 'multimedia', '365214879.png', 'tersedia'),
(456987231, 'coding guna alat music', '    Lorem ipsum dolor sit, amet consectetur adipisicing elit. Fugiat minima recusandae, doloribus voluptate voluptatem corporis. Commodi amet ratione minus nemo perferendis id consequatur atque cupiditate ab, sequi in libero et veniam non reprehenderit ut quasi? Odio neque mollitia iure enim earum! Quis reprehenderit magnam, obcaecati mollitia vero eveniet libero quaerat, et possimus culpa accusamus dicta non nemo harum voluptatem dolor suscipit id voluptates similique amet repellat nulla iusto!', 321.20, 'database', '456987231.png', 'tidak_tersedia'),
(563987214, 'lubang hitam', '            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae dolorem beatae molestias veritatis quo, accusamus veniam explicabo voluptate, reiciendis aspernatur impedit fugiat consectetur possimus, ut voluptatibus eos perferendis et sapiente!\r\n\r\n            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae dolorem beatae molestias veritatis quo, accusamus veniam explicabo voluptate, reiciendis aspernatur impedit fugiat consectetur possimus, ut voluptatibus eo', 32.20, 'matematic', '563987214.png', 'tidak_tersedia'),
(564879321, 'bola', '            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae dolorem beatae molestias veritatis quo, accusamus veniam explicabo voluptate, reiciendis aspernatur impedit fugiat consectetur possimus, ut voluptatibus eos perferendis et sapiente!\r\n', 653.20, 'multimedia', '564879321.png', 'tersedia'),
(789654123, 'the rose code', 'programer wanita ynag mahir dalam bidang it yang tidak diketahui bidang apa yang dia mahir. inin adalah kisah perjalanan sernag programer from vilage  ', 320.20, 'programing', '789654123.png', 'tersedia'),
(850364197, 'ikan database', 'seekr ikan yang menjadi penganalisa stastitik di dasar laut pasifik dan antartika', 0.30, 'database', '850364197.png', 'tersedia'),
(852364197, 'kuantum', '            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestiae dolorem beatae molestias veritatis quo, accusamus veniam explicabo voluptate, reiciendis aspernatur impedit fugiat consectetur possimus, ut voluptatibus eos perferendis et sapiente!\r\n', 5236.20, 'AI', '852364197.png', 'tersedia'),
(965873241, 'otak meletop', '    Lorem ipsum dolor sit, amet consectetur adipisicing elit. Fugiat minima recusandae, doloribus voluptate voluptatem corporis. Commodi amet ratione minus nemo perferendis id consequatur atque cupiditate ab, sequi in libero et veniam non reprehenderit ut quasi? Odio neque mollitia iure enim earum! Quis reprehenderit magnam, obcaecati mollitia vero eveniet libero quaerat, et possimus culpa accusamus dicta non nemo harum voluptatem dolor suscipit id voluptates similique amet repellat nulla iusto!', 0.01, 'AI', '965873241.png', 'tersedia'),
(986412537, 'robot catur', '    Lorem ipsum dolor sit, amet consectetur adipisicing elit. Fugiat minima recusandae, doloribus voluptate voluptatem corporis. Commodi amet ratione minus nemo perferendis id consequatur atque cupiditate ab, sequi in libero et veniam non reprehenderit ut quasi? Odio neque mollitia iure enim earum! Quis reprehenderit magnam, obcaecati mollitia vero eveniet libero quaerat, et possimus culpa accusamus dicta non nemo harum voluptatem dolor suscipit id voluptates similique amet repellat nulla iusto!', 65.30, 'AI', '986412537.png', 'tersedia'),
(986574321, 'bunga coding', ' lorem\r\n', 65.20, 'matematic', '986574321.png', 'tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `pengguna_id` int(255) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama_pengguna` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`pengguna_id`, `password`, `nama_pengguna`, `email`) VALUES
(2387224, 'ttt', 'ttt', 'dopymonster@gmail.com'),
(4520236, 'aaaaa', 'aaaaa', 'dopymonster@gmail.com'),
(5738373, '123Qweasd', 'xxxxx', 'dopymonster@gmail.com'),
(5923694, 'dopy', 'dopy', 'dopymonster@gmail.com'),
(7884141, 'arif', 'arif', 'ariffitrimohdjamil@gmail.com'),
(8296709, 'fff', 'ffff', 'dopymonster@gmail.com'),
(8304719, '123Qweasd', 'wwwww', 'dopymonster@gmail.com'),
(8677458, 'Asdfghjkl1', 'qqqqq', 'ariffitrimohdjamil@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `pinjam_id` int(11) NOT NULL,
  `tarikh_pinjam` date DEFAULT NULL,
  `tarikh_pulang` date DEFAULT NULL,
  `pengguna_id` int(255) NOT NULL,
  `satff_id` int(255) DEFAULT NULL,
  `buku_id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`pinjam_id`, `tarikh_pinjam`, `tarikh_pulang`, `pengguna_id`, `satff_id`, `buku_id`, `status`) VALUES
(48, '2025-03-25', '2025-03-30', 7884141, NULL, 365214879, 'dipulangka'),
(49, '2025-03-25', '2025-03-28', 7884141, NULL, 564879321, 'dipulangka'),
(50, NULL, NULL, 5923694, NULL, 564879321, 'noti_buang'),
(55, '2025-03-26', '2025-03-29', 7884141, NULL, 456987231, 'dipulangka'),
(56, '2025-03-26', '2025-03-29', 7884141, NULL, 365214879, 'dipulangka'),
(57, '2025-03-28', '2025-03-29', 7884141, NULL, 563987214, 'dipulangka'),
(61, '2025-04-10', '2025-04-11', 7884141, NULL, 365214879, 'dipulangka'),
(63, '2025-07-21', '2025-07-24', 4520236, NULL, 456987231, 'lulus'),
(64, '2025-07-22', '2025-07-27', 4520236, NULL, 563987214, 'dipulangka'),
(65, '2025-07-24', '2025-07-31', 5738373, NULL, 563987214, 'lulus'),
(66, NULL, NULL, 8304719, NULL, 456987231, 'noti_me'),
(67, NULL, NULL, 8304719, NULL, 563987214, 'noti_me');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `staff_nama` varchar(100) NOT NULL,
  `staff_email` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `password`, `staff_nama`, `staff_email`, `role`) VALUES
(0, '123', 'admin', 'www', 'admin'),
(750, 'ddd', 'ddd', 'fitri@gmail.com', 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`buku_id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`pinjam_id`),
  ADD KEY `buku_id` (`buku_id`),
  ADD KEY `pengguna_id` (`pengguna_id`),
  ADD KEY `satff_id` (`satff_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `pinjam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD CONSTRAINT `pinjam_ibfk_3` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`buku_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pinjam_ibfk_4` FOREIGN KEY (`satff_id`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pinjam_ibfk_5` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
