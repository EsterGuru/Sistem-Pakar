-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2020 at 09:18 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spforwardcf3`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `user` varchar(16) NOT NULL,
  `pass` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`user`, `pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_diagnosa`
--

CREATE TABLE `tb_diagnosa` (
  `kode_diagnosa` varchar(16) NOT NULL,
  `nama_diagnosa` varchar(255) DEFAULT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_diagnosa`
--

INSERT INTO `tb_diagnosa` (`kode_diagnosa`, `nama_diagnosa`, `solusi`) VALUES
('P001', 'Stunting', '1) Penuhi nutrisi harian anak dengan memberikan makanan sehat bergizi seimbang. 2) Datang dan lakukan pemantauan pertumbuhan (timbang dan ukur) dan perkembangan, serta imunisasi balita ke posyandu setiap bulan. 3) Selalu jaga kebersihan lingkungan, agar si kecil terhindar dari risiko infeksi karena lingkungan yang kotor. 4) Aktif minum tablet tambah darah ; konsumsi TTD bagi remaja putri 1 tablet seminggu sekali, konsumsi TTD bagi ibu hamil 1 tablet setiap hari (minimal 90 tablet selama kehamilan). 5) Periksa kehamilan selam 6 kali, 2 kali oleh dokter menggunakan USG. 6) Pemberian ASI eksklusif sampai usia 6 bulan. 7) Pemberian ASI bersama MP-ASI sampai anak berusia 2 tahun. 8) Sehari 2 butir telur dan 1 gelas susu. 9) Perbanyak literasi tentang pentingnya gizi bagi pertumbuhan anak.\r\n', ''),
('P002', 'Gizi Kurang', '1) Memberikan buah dan sayur dalam setiap menu makanan. 2) Memberikan makanan yang mempunyai sumber karbohidrat seperti kentang, roti, nasi, dan sereal. 3) Memberikan makanan yang mempunyai sumber protein seperti daging, telur, ikan, dan kacang-kacangan. 4) Memberikan asupan vitamin dari susu dan produk turunannya. 5) Anak harus banyak melakukan aktivitas fisik seperti olahraga atau aktivitas di luar ruangan. 6) Imunisasi rutin atau vaksin sesuai jadwal.\r\n', ''),
('P003', 'Gizi Lebih',' 1) Frekuensi makan sebanyak 3 kali makanan utama 2 kali makanan selingan. 2) Susu diberikan 1-2 gelas/hari dalam bentuk susu rendah lemak. 3) Pada anak di atas 3 tahun, dianjurkan untuk memberikan makanan sumber serat. 4) Pemberian makanan sebaiknya bervariasi sesuai dengan pola makan anak.\r\n', ''),
-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `kode_gejala` varchar(16) NOT NULL,
  `nama_gejala` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`kode_gejala`, `nama_gejala`) VALUES
('G01', 'Pertumbuhan melambat			', ''),
('G02', 'Tinggi badan di bawah ukuran normal						', ''),
('G03', 'Berat badan balita cenderung turun', ''),
('G04', 'Mudah sakit', ''),
('G05', 'Balita tidak dapat menyusu dengan baik', ''),
('G06', 'Sesak napas', ''),
('G07', 'Tidak aktif bermain', ''),
('G08', 'Mudah terserang penyakit infeksi', ''),
('G09', 'Pertumbuhan gigi terlambat', ''),
('G10', 'Menurunnya kemampuan kognitif (belum mampu mengucapkan kata diusia 2 tahun.', ''),
('G11', 'Wajah tampak lebih muda dari anak seusianya', ''),
('G12', 'Nafsu makan rendah', ''),
('G13', 'Sering sakit dan memerlukan waktu yang lama untuk pulih', ''),
('G14', 'Keletihan akut', ''),
('G15', 'Kulit dan rambut kering', ''),
('G16', 'Memori belajar yang kurang baik', ''),
('G17', 'Kelebihan berat badan', ''),
('G18', 'Obesitas', ''),
('G19', 'Badan gemuk', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_hasil`
--

CREATE TABLE `tb_hasil` (
  `id` int(5) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `jk` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tgl` varchar(255) NOT NULL,
  `hasil_konsultasi` varchar(255) NOT NULL,
  `kepercayaan` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_hasil`
--

INSERT INTO `tb_hasil` (`id`, `nik`, `nama`, `no_hp`, `jk`, `alamat`, `tgl`, `hasil_konsultasi`, `kepercayaan`) VALUES
(349, '', 'dewita', '08212323', 'Laki - Laki', 'padang', '02:21 - 07 September 2020', '', ''),

-- --------------------------------------------------------

--
-- Table structure for table `tb_konsultasi`
--

CREATE TABLE `tb_user` (
  `nik` varchar(16) NOT NULL,  
  `nama_user` varchar(100) DEFAULT NULL,
  `no_hp` varchar(20) NOT NULL,
  `jk` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `tanggal` varchar(100) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tb_konsultasi` (
  `ID` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,  
  `kode_gejala` varchar(16) DEFAULT NULL,
  `jawaban` varchar(6) DEFAULT 'Tidak'
  FOREIGN KEY ('nik') REFERENCES 'tb_user'('nik')
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_konsultasi`
--
INSERT INTO `tb_konsultasi` (`ID`,`kode_gejala`, `jawaban`) VALUES
(1, 'G01', 'Ya'),
(2, 'G03', 'Tidak'),
(3, 'G04', 'Ya'),
(4, 'G05', 'Ya'),
(5, 'G06', 'Tidak'),
(6, 'G07', 'Ya'),
(7, 'G14', 'Ya'),
(8, 'G15', 'Tidak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_relasi`
--

CREATE TABLE `tb_relasi` (
  `ID` int(11) NOT NULL,
  `kode_diagnosa` varchar(16) DEFAULT NULL,
  `kode_gejala` varchar(16) DEFAULT NULL,
  `md` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_relasi`
--

INSERT INTO `tb_relasi` (`ID`, `kode_diagnosa`, `kode_gejala`, `mb`) VALUES
(90, 'P001', 'G01', 0.6),
(91, 'P001', 'G02', 1),
(92, 'P001', 'G03', 0.8),
(93, 'P001', 'G04', 0.6),
(94, 'P001', 'G05', 0.4),
(95, 'P001', 'G06', 0.2),
(96, 'P001', 'G07', 0.8),
(97, 'P001', 'G08', 0.6),
(98, 'P001', 'G09', 1),
(99, 'P001', 'G10', 1),
(100, 'P001', 'G11', 0.8),
(101, 'P002', 'G11', 0.8),
(102, 'P002', 'G12', 1),
(103, 'P002', 'G13', 0.8),
(104, 'P002', 'G14', 0.8),
(105, 'P002', 'G15', 0.6),
(106, 'P002', 'G16', 0.8),
(107, 'P003', 'G17', 1),
(108, 'P003', 'G18', 1),
(109, 'P003', 'G19', 0.8),
--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`user`);
--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `tb_diagnosa`
--
ALTER TABLE `tb_diagnosa`
  ADD PRIMARY KEY (`kode_diagnosa`);

--
-- Indexes for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indexes for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_konsultasi`
--
ALTER TABLE `tb_konsultasi`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_relasi`
--
ALTER TABLE `tb_relasi`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;
--
-- AUTO_INCREMENT for table `tb_konsultasi`
--
ALTER TABLE `tb_konsultasi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_relasi`
--
ALTER TABLE `tb_relasi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
