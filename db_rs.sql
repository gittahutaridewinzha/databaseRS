-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2024 at 03:07 PM
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
-- Database: `db_rs`
--

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kabupaten` int(11) NOT NULL,
  `id_prov` int(11) NOT NULL,
  `nama_kab` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `id_prov`, `nama_kab`) VALUES
(1, 1, 'kabupaten aceh barat'),
(3, 2, 'padang'),
(6, 1, 'Kota Sabang'),
(7, 2, 'Bukittinggi');

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` int(11) NOT NULL,
  `id_rs` int(11) NOT NULL,
  `nama_kmr` varchar(225) NOT NULL,
  `jumlah_kmr` varchar(111) NOT NULL,
  `tersedia` varchar(111) NOT NULL,
  `lat_rs` varchar(225) NOT NULL,
  `long_rs` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`id_kamar`, `id_rs`, `nama_kmr`, `jumlah_kmr`, `tersedia`, `lat_rs`, `long_rs`) VALUES
(1, 1, 'IGD', '3', '2', '-0.9431785303379405 ', '100.36697012328722'),
(2, 1, 'ICU', '4', '4', '-0.9431785303379405 ', '100.36697012328722'),
(3, 4, 'IGD', '5', '5', '4.170314291902482 ', '96.13424720923027'),
(4, 4, 'ICU', '5', '5', '4.170314291902482 ', '96.13424720923027'),
(5, 3, 'IGD', '2', '2', '4.156169503293835 ', '96.1298900392032'),
(6, 3, 'ICU', '5', '5', '4.156169503293835 ', '96.1298900392032'),
(7, 2, 'IGD', '6', '4', '-0.9416212239188382 ', '100.39951891037688'),
(8, 2, 'ICU', '7', '7', '-0.9416212239188382 ', '100.39951891037688'),
(9, 8, 'IGD', '5', '2', '5.894601013179546 ', '95.32544889318119'),
(10, 8, 'ICU', '2', '2', '5.894601013179546 ', '95.32544889318119'),
(11, 7, 'IGD', '3', '3', '5.895205563950447', '95.31580795270192'),
(12, 7, 'ICU', '4', '3', '5.895205563950447', '95.31580795270192'),
(13, 6, 'IGD', '4', '2', '-0.31093689744278147', '100.37063505270233'),
(14, 6, 'ICU', '3', '1', '-0.31093689744278147', '100.37063505270233'),
(15, 5, 'IGD', '6', '3', '-0.29818666020084866', '100.36726616379916'),
(16, 5, 'ICU', '3', '1', '-0.29818666020084866', '100.36726616379916');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id_prov` int(11) NOT NULL,
  `nama_prov` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id_prov`, `nama_prov`) VALUES
(1, 'Aceh'),
(2, 'Sumatra Barat');

-- --------------------------------------------------------

--
-- Table structure for table `rumah_sakit`
--

CREATE TABLE `rumah_sakit` (
  `id_rs` int(11) NOT NULL,
  `id_kabupaten` int(11) NOT NULL,
  `nama_rs` varchar(111) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` text NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rumah_sakit`
--

INSERT INTO `rumah_sakit` (`id_rs`, `id_kabupaten`, `nama_rs`, `deskripsi`, `gambar`, `alamat`, `no_telp`) VALUES
(1, 3, 'RSUP Dr. M. Djamil Padang', 'Dibangun sejak tahun 1953, Rumah Sakit Umum Pusat (RSUP) Dr. M. Djamil telah menjadi rumah sakit tipe A milik pemerintah yang ada di Padang. Rumah sakit ini setidaknya memiliki empat layanan unggulan, yaitu seputar jantung, obstetri neonatal, transplantasi ginjal, hingga instalasi bank jaringan dan biomaterial untuk pengembangan teknologi medis.', 'jamil.jpeg', 'Jl. Perintis Kemerdekaan, Sawahan Tim., Kec. Padang Tim., Kota Padang, Sumatera Barat 25129', '07518956666'),
(2, 3, 'Semen Padang Hospital', 'Dengan visi menjadi rumah sakit umum pilihan utama yang menghadirkan layanan prima di Sumatera tahun 2030, Semen Padang Hospital saat ini sudah memiliki lebih dari 10 poliklinik. Beberapa fasilitas dari poliklinik di Semen Padang yaitu rehabilitasi medik, jiwa, saraf, jantung, hingga gizi. ', 'sph.jpeg', 'Jl. By Pass No.KM. 7, Pisang, Kec. Pauh, Kota Padang, Sumatera Barat 25161', '0751777888'),
(3, 1, 'RSUD Cut Nyak Dhien', 'Visi dan Misi RSUD Cut Nyak Dhien ditetapkan untuk mendukung\r\nvisi provinsi aceh yaitu “terwujudnya Aceh yang damai dan sejahtera\r\nmelalui pemerintahan yang bersih, adil dan melayani”, visi kabupaten\r\nAceh Barat yaitu: “terwujudnya Aceh Barat yang islami dengan\r\npembangunan infrastruktur dan ekonomi kerakyatan yang transparan,\r\nkredibel, akuntabel dan terintegritas” dan visi Dinas Kesehatan\r\nKabupaten Aceh Barat yaitu : “pelayanan kesehatan prima menuju\r\nmasyarakat kabupaten Aceh Barat yang mandiri dan sejahtera”', 'cuknyakdien.jpeg', 'Jl. Gajah Mada No.23, Drien Rampak, Kec. Johan Pahlawan, Kabupaten Aceh Barat, Aceh 23611', '06557115400'),
(4, 1, 'RS Harapan Sehat', 'Rumah Sakit Umum Faskes Tingkat Lanjutan BPJS Kesehatan di Kab Aceh Barat Daya', 'harapansehat.jpg', '54CM+3P2, Jl. Sisingamangaraja, Gampa, Kec. Johan Pahlawan, Kabupaten Aceh Barat, Aceh 23611', '085260859947'),
(5, 7, 'RSUD Dr. Achmad Mochtar', 'Rumah Sakit Umum Daerah Dr. Achmad Mochtar Bukittinggi didirikan pada tahun 1908 yang sekarang dikelola oleh Pemerintah Daerah Sumatera Barat. RSUD Dr. Achmad Mochtar Bukittinggi memiliki Visi mewujudkan rumah sakit rujukan terdepan, berdaya saing, dan bermartabat. Dengan Misi memberikan pelayanan kesehatan rujukan dan paripurna bagi seluruh masyarakat, meningkatkan kemandirian dalam pengelolaan pelayanan kesehatan dan administrasi manajemen.', 'rsBukit.jpeg', 'Jl. Yos Sudarso No.4b, Kayu Kubu, Kec. Guguk Panjang, Kota Bukittinggi, Sumatera Barat 26136', '0752276099'),
(6, 7, 'RS Ibnu Sina Bukittinggi', 'Rumah Sakit Islam Ibnu Sina Bukittinggi diresmikan pada tanggal 30 Oktober 1969 dibawah naungan Yayasan Rumah Sakit Islam. RSI Ibnu Sina Bukittinggi memiliki Visi menjadi Rumah Sakit Islam tipe B di tahun 2020. Dengan Misi memberikan pelayanan yang prima, melengkapi sumber daya, meningkatkan profesionalisme, menerapkan nilai islami dalam memberikan pelayanan kesehatan.', 'rsBukit2.jpeg', 'Jl. Prof. Hazairin, Bukit Cangang Kayu Ramang, Kec. Guguk Panjang, Kota Bukittinggi, Sumatera Barat 26181   ', '075221185'),
(7, 6, 'Rumah Sakit Umum Daerah Sabang', 'Merupakan rumah sakit umum daerah (RSUD) di Kota Sabang. Rumah sakit ini melayani pasien baik dari Kota Sabang maupun dari luar daerah karena merupakan jenis rumah sakit umum. RSUD Sabang menerima pasien-pasien untuk disembuhkan dengan dukungan dokter ahli dan perawat berkualitas.', 'rsAceh.jpg', 'V8W8+4CV, Jl. Teuku Umar No.26, Kuta Ateueh, Sukakarya, Kota Sabang, Aceh', '-'),
(8, 6, 'Rumah Sakit Angkatan Laut Sabang ', 'Rumah Sakit Angkatan Laut Jenderal Lilipory - Sabang, or sometimes known as RSAL Jend. Lilipory Sabang, is a military hospital that is located on Sukakarya, Sabang, within the Province of Nanggroe Aceh Darussalam.', 'rsAceh2.jpg', 'V8VG+P6C, Jl. Teuku Cik Ditiro Sabang, Kuta Ateueh, Sukakarya, Kota Sabang, Aceh 23511', '0789334734');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`),
  ADD KEY `id_prov` (`id_prov`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`),
  ADD KEY `id_rs` (`id_rs`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_prov`);

--
-- Indexes for table `rumah_sakit`
--
ALTER TABLE `rumah_sakit`
  ADD PRIMARY KEY (`id_rs`),
  ADD KEY `id_kabupaten` (`id_kabupaten`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id_kabupaten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id_prov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rumah_sakit`
--
ALTER TABLE `rumah_sakit`
  MODIFY `id_rs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD CONSTRAINT `kabupaten_ibfk_1` FOREIGN KEY (`id_prov`) REFERENCES `provinsi` (`id_prov`);

--
-- Constraints for table `kamar`
--
ALTER TABLE `kamar`
  ADD CONSTRAINT `kamar_ibfk_1` FOREIGN KEY (`id_rs`) REFERENCES `rumah_sakit` (`id_rs`);

--
-- Constraints for table `rumah_sakit`
--
ALTER TABLE `rumah_sakit`
  ADD CONSTRAINT `rumah_sakit_ibfk_1` FOREIGN KEY (`id_kabupaten`) REFERENCES `kabupaten` (`id_kabupaten`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
