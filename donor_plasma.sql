-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2023 at 05:32 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donor_plasma`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_alat`
--

CREATE TABLE `tb_alat` (
  `id_alat` int(5) UNSIGNED ZEROFILL NOT NULL,
  `nama_alat` text DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `id_faskes` int(3) UNSIGNED ZEROFILL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_alat`
--

INSERT INTO `tb_alat` (`id_alat`, `nama_alat`, `stok`, `id_faskes`) VALUES
(00001, 'tabung gas', 100, 007);

-- --------------------------------------------------------

--
-- Table structure for table `tb_donor`
--

CREATE TABLE `tb_donor` (
  `id_donor` int(5) UNSIGNED ZEROFILL NOT NULL,
  `id_pendonor` int(4) UNSIGNED ZEROFILL NOT NULL,
  `username` varchar(50) NOT NULL,
  `jumlah_kantong` int(11) NOT NULL,
  `tgl_donor` date NOT NULL,
  `terpakai` int(11) NOT NULL,
  `id_faskes` int(3) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_donor`
--

INSERT INTO `tb_donor` (`id_donor`, `id_pendonor`, `username`, `jumlah_kantong`, `tgl_donor`, `terpakai`, `id_faskes`) VALUES
(00004, 0001, 'admin', 2, '2021-08-10', 0, 000),
(00005, 0001, 'admin', 5, '2021-08-13', 0, 000),
(00006, 0003, 'admin', 2, '2021-08-04', 0, 000),
(00007, 0003, 'admin', 1, '2021-08-06', 0, 000),
(00008, 0004, 'admin', 2, '2021-08-01', 0, 000),
(00009, 0001, 'admin', 1, '2021-08-15', 0, 001),
(00011, 0001, 'admin', 2, '2021-09-03', 0, 002);

-- --------------------------------------------------------

--
-- Table structure for table `tb_faskes`
--

CREATE TABLE `tb_faskes` (
  `id_faskes` int(3) UNSIGNED ZEROFILL NOT NULL,
  `nama_faskes` varchar(200) DEFAULT NULL,
  `no_telp_faskes` varchar(20) DEFAULT NULL,
  `id_kab` int(2) UNSIGNED ZEROFILL DEFAULT NULL,
  `alamat_faskes` text DEFAULT NULL,
  `jenis_faskes` enum('PMI','RS') DEFAULT NULL,
  `status_faskes` enum('Swasta','Pemerintah') DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `kelas` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_faskes`
--

INSERT INTO `tb_faskes` (`id_faskes`, `nama_faskes`, `no_telp_faskes`, `id_kab`, `alamat_faskes`, `jenis_faskes`, `status_faskes`, `long`, `lat`, `kelas`) VALUES
(001, 'UTD PMI Provinsi Lampung', '(0721) 703020', 01, 'Jl. Sam Ratulangi No. 105 Penengahan, Bandar Lampung', 'PMI', 'Pemerintah', NULL, NULL, NULL),
(002, 'UTD PMI Kabupaten Lampung Utara', '(0724) 22095', 08, 'Jl. Sudirman No.2 Kotabumi, Lampung Utara', 'PMI', 'Pemerintah', NULL, NULL, NULL),
(003, 'UTD PMI Kota Metro', '(0725) 47943', 02, 'Jl. A. Yani No. 13, Metro', 'PMI', 'Pemerintah', NULL, NULL, NULL),
(004, 'UTD PMI Kabupaten Lampung Selatan	', '(0727) 322257', 05, 'Jl. Lettu Rohani No. 14 B, Kalianda', 'PMI', 'Pemerintah', NULL, NULL, NULL),
(005, 'UTD PMI Kabupaten Lampung Tengah', '(0725) 529828', 07, 'Jl. Lintas Sumatera Panggungan Gunung Sugih, Komp. RSUD Demang Sepulau Raya Lampung Tengah', 'PMI', 'Pemerintah', NULL, NULL, NULL),
(007, 'RS Umum Daerah Dr H Abdul Moeloek', '0721 - 703312', 01, 'Jl. Dr. Rivai 6,Penengahan B.Lampung', 'RS', 'Pemerintah', '105.25862583184', '-5.4030767832856', 'A'),
(008, 'RS Tk. IV 02.07.04', '82177052096', 01, 'Jl. Dr. A.Rivai No.7, Bandar Lampung', 'RS', 'Pemerintah', '105.259', '-5.4025', 'C'),
(009, 'RS Umum Daerah Dr. A. Dadi Tjokrodipo', '0721-471723', 01, 'Jl. Basuki Rachmad No.73 Teluk Betung Utara, Bandar Lampung', 'RS', 'Pemerintah', '105.25300216586', '-5.4202970589159', 'C'),
(010, 'RS Jiwa Bandar Lampung', '0721-271170', 01, 'Jl. Raya Gd.Tataan KM 13 Bandar Lampung', 'RS', 'Pemerintah', '105.1938078804', '-5.3752971057178', 'B'),
(011, 'RS Umum Imanuel Way Halim', '0721-704900', 01, 'Jl. Sukarno Hatta Way Halim,Bandar Lampung', 'RS', 'Swasta', '105.237', '-5.3633', 'B'),
(012, 'RS Umum Bumi Waras', '0721 2545', 01, 'Jl. W. Monginsidi No.235,Bandar Lampung', 'RS', 'Swasta', '105.255', '-5.4359', 'C'),
(013, 'RS Umum Advent Bandar Lampung', '721703459', 01, 'Jl. Teuku Umar 48,Bandar Lampung', 'RS', 'Swasta', '105.26214527959', '-5.3920409982612', 'C'),
(014, 'RS Umum Urip Sumoharjo', '771321', 01, 'Jl. Urip Sumoharjo No.200,Bandar Lampung', 'RS', 'Swasta', '105.277', '-5.3912', 'B'),
(015, 'RS Umum Graha Husada', '0721-240000', 01, 'Jl. Gajah Mada No.88,Bandar Lampung', 'RS', 'Swasta', '105.267', '-5.4146', 'C'),
(016, 'RS Umum Pertamina-Bintang Amin Lampung', '(0721) 273601', 01, 'Jl. Pramuka No.27,Bandar Lampung', 'RS', 'Swasta', '105.2196350595', '-5.3789092951653', 'C'),
(017, 'RS Bhayangkara Polda Lampung', '706402', 01, 'Jl. Pramuka No.88 Rajabasa Bandar Lampung', 'RS', 'Pemerintah', '105.224', '-5.374', 'C'),
(018, 'RS Hermina Lampung', '(0721)-242525', 01, 'Jl. Tulang Bawang No. 21 Kel. Enggal Kec. Enggal', 'RS', 'Swasta', '105.2608852', '-5.4176583', 'C'),
(019, 'RS Budi Medika', '(0721)6016888', 01, 'Jl. Yos Sudarso No. 85', 'RS', 'Swasta', '105.281654', '-5.442589', 'C'),
(020, 'RS Umum Mardi Waluyo', '0725-42512', 02, 'Jl. Jenderal Sudirman 156,Kota Metro, Lampung', 'RS', 'Swasta', '105.29648781211', '-5.1181220709225', 'C'),
(021, 'RS Umum Daerah Ahmad Yani Metro', '0725-48423', 02, 'Jl.Jend. A.Yani No.13 Kota Metro', 'RS', 'Swasta', '105.306', '-5.1139', 'B'),
(022, 'RS Umum Islam Metro', '0725-41883', 02, 'Jl. Jend.AH Nasution No.250,Metro', 'RS', 'Swasta', '105.323', '-5.1114', 'D'),
(023, 'RS Umum Muhammadiyah Metro', '0725 49490', 02, 'Jl. Soekarno Hatta No.42 Mulyojati 16B, Metro Barat', 'RS', 'Swasta', '105.297', '-5.1157', 'C'),
(024, 'RS Ibu dan Anak Anugerah Medical Center Metro', '0725-43209', 02, 'Jl. Kunang 15 Kauman, Metro', 'RS', 'Swasta', '105.31081466675', '-5.1185670262335', 'C'),
(025, 'RS Umum Daerah Alimuddin Umar', '08117959666', 03, 'Jl. Teuku Umar No. 3, Lampung Barat', 'RS', 'Pemerintah', '104035', '-5.3566', 'C'),
(026, 'RS Umum Daerah Dr. H. Bob Bazar, SKM', '0727-322160', 05, 'Jl. Lettu Rohani 14 B,Kalianda', 'RS', 'Pemerintah', '105.5964602', '-5.7275578', 'C'),
(027, 'RS Natar Medika', '0721 - 92521', 05, 'Jl. Raya Natar No.4 Muara Putih, Lampung Selatan', 'RS', 'Swasta', '105.196', '-5.3121', 'C'),
(028, 'RS Umum Daerah Bandar Negara Husada', '7215617667', 05, 'Kompleks Pemprov Lampung Kota Baru Jati Agung Kabupaten Lampung Selatan 35365', 'RS', 'Pemerintah', '105.40499250437', '-5.2979495641448', 'C'),
(029, 'RS Airan Raya', '7215617799', 05, 'Airan Raya No. 99 Way Huwi Jati Agung', 'RS', 'Swasta', '105.29789118966', '-5.3509896444965', 'C'),
(030, 'RS Umum Mitra Mulia Husada', '0725-528803', 07, 'Jl. Proklamator Raya No.162-164,Lampung Tengah', 'RS', 'Swasta', '105.216', '-4.9489', 'D'),
(031, 'RS Umum Yukum Medical Centre', '(0725) 25333', 07, 'Jl. Negara No.99 Km.67 Yukum Jaya Lampung Tengah', 'RS', 'Swasta', '105.21081856537', '-4.9057366495941', 'C'),
(032, 'RS Umum Islam Asy-Syifaa Bandar Jaya', '0725-25264', 07, 'Jl. Lintas Sumatera KM 65 Yukum Jaya Terbanggi Besar Bandar Jaya', 'RS', 'Swasta', '105.213', '-4.9243', 'C'),
(033, 'RS Umum Daerah Demang Sepulau Raya', '725529828', 07, 'Jl. Raya Lintas Sumatera Kampung Terbanggi Agung Kec.Gunung Sugih Kab.Lampung Tengah', 'RS', 'Pemerintah', '105.2089752', '-5.0128227', 'C'),
(034, 'RS Umum Harapan Bunda', '072526766', 07, 'Jl. Raya Lintas Sumatera, Seputih Jaya No.31, Kec. Gunung Sugih, Kab. Lampung Tengah', 'RS', 'Swasta', '105.21612672978', '-4.9583737397586', 'C'),
(035, 'RS Umum Kartini', '0729 370028', 07, 'Jl. KARTINI NO. 104 KALIREJO', 'RS', 'Swasta', '104.96501433897', '-5.2242850517686', 'D'),
(036, 'RS Ibu Anak Puri Adhya Paramita', '(0725) 529399', 07, 'Jl. SULTAN AGUNG NO. 5 BANDAR JAYA - TERBANGGI BESAR', 'RS', 'Swasta', '105.21195', '-4.937975', 'C'),
(037, 'RS Umum Az - Zahra', '0729 - 370089', 07, 'Jl. Kartini No. 109 Kalirejo , Kec. Kalirejo,', 'RS', 'Swasta', '104.963929', '-5.224942', 'C'),
(038, 'RS Ibu Anak Puti Bungsu', '0725-25065', 07, 'Jalan S. Parman No 02 Bandar Jaya Timur', 'RS', 'Swasta', '108.4919086', '-2.4185588', 'C'),
(039, 'RS Umum Daerah Sukadana', '(0725) 625022/6', 06, 'Jl. Letnan Adnan Sanjaya,Lintas Timur,Sukadana,Lamp.Timur', 'RS', 'Pemerintah', '105.5498187', '-5.0635733', 'C'),
(040, 'RS Umum Aka Medika Sribhawono', '0725 - 6620077', 06, 'Jl. Ir. Sutami Km.1 Sribhawono, Lampung Timur', 'RS', 'Swasta', '105.571', '-5.298', 'C'),
(041, 'RS Umum Daerah May Jen HM Ryacudu', '0724 22095', 08, 'Jl. Jend.Sudirman No.2 Kotabumi', 'RS', 'Pemerintah', '104.892', '-4.8355', 'C'),
(042, 'RS Umum Handayani', '0724-328399', 08, 'Jl. Soekarno - Hatta No.94,Kotabumi lampung Utara', 'RS', 'Swasta', '104.875', '-4.8402', 'C'),
(043, 'RS Medika Insani', '+6285279410025', 08, 'Jl. Sumber Jaya No. 667 Desa Tanjung Baru Kecamatan Bukit Kemuning Kabupaten Lampung Utara', 'RS', 'Swasta', '104.54650788513', '-4.8959395210959', 'D'),
(044, 'RS Umum Daerah Ragab Begawe Caram', '85267606261', 13, 'Jl. ZA. Pagar Alam Brabasan Kec. Tanjung Raya', 'RS', 'Pemerintah', '105.37728457656', '-4.0607328918842', 'C'),
(045, 'RS Umum Daerah Pesawaran', '07215621977', 11, 'Jln. Raya Kedondong, Sukamarga, Desa Gedong Tataan Kec. Gedong Tataan, kab. Pesawaran', 'RS', 'Pemerintah', '105.08065371719', '-5.3937378344791', 'C'),
(046, 'RS Umum Gladish Medical Center', '0721-5620168', 11, 'Jln.Ahmad Yani No.36 Taman Sari Kec.Gedong Tataan', 'RS', 'Swasta', '105.15142111984', '-5.3660725566388', 'D'),
(047, 'RS Umum Daerah KH. Muhammad Thohir KRUI', '082372298787', 15, 'Atar Sedangkek Pekon Way Suluh Kec. Krui Selatan Kab. Pesisir Barat', 'RS', 'Pemerintah', '103.97268681732', '-5.2151360070391', 'D'),
(048, 'RS Umum Mitra Husada', '0729-23792', 12, 'Jl. Jend.A.Yani No.14 Pringsewu,Kab.Pringsewu', 'RS', 'Swasta', '108.4919086', '-2.4185588', 'C'),
(049, 'RS Umum Daerah Pringsewu', '0729 - 23582', 12, 'Jl. Lintas Barat Pekon Fajar Agung Barat Kec. Pringsewu', 'RS', 'Pemerintah', '104.965', '-5.3542', 'C'),
(050, 'RS Umum Surya Asih', '0729 - 21162', 12, 'Jl. A. Yani No.51, Pringsewu', 'RS', 'Swasta', '105.31879867372', '-4.5250577300758', 'D'),
(051, 'RS Ibu dan Anak Harapan Bunda', '0729 23186', 12, 'Jl. KH. Dewantara No. 1269 Primgsewu - Lampung', 'RS', 'Swasta', '108.4919086', '-2.4185588', 'C'),
(052, 'RS Umum Wisma Rini Pringsewu', '0729-21096', 12, 'Jl. Wisma Rini No.1 Pringsewu', 'RS', 'Swasta', '104.97178939718', '-5.3551636975057', 'D'),
(053, 'RS Panti Secanti', '0729-347553', 04, 'Jl. Raya Gisting,Tanggamus', 'RS', 'Swasta', '104.703', '-5.4596', 'D'),
(054, 'RS Umum Daerah Batin Mangunang', '(0722)7220083', 04, 'Jl. Soekarno Hatta Komplek Islamic Centre Kotaagung,Kab.Tanggamus', 'RS', 'Pemerintah', '104.643', '-5.4886', 'C'),
(055, 'RS Umum Daerah Menggala Tulang Bawang', '(0726)21131', 10, 'Menggala,Kab.Tulang Bawang', 'RS', 'Pemerintah', '105.221', '-4.6102', 'B'),
(056, 'RS Umum Mutiara Bunda', '(0726) 750248', 10, 'Jl. Lintas Timur No. 1147 Unit II Kec. Bandar Agung', 'RS', 'Swasta', '108.4919086', '-2.4185588', 'D'),
(057, 'RS Umum Daerah Tulang Bawang Barat', '7257575438', 14, 'JL. DIPONEGORO PANARAGAN JAYA KEC. TULANG BAWANG TENGAH', 'RS', 'Pemerintah', '105.22896914687', '-4.7450056219186', 'D'),
(058, 'RS Umum Daerah Zainal Abidin Pagar Alam', '085218540697', 09, 'Jl. Raya Lintas Sumatera, Blambangan Umpu', 'RS', 'Pemerintah', '105.253', '-5.3794', 'C'),
(059, 'RS Umum Haji Kamino', '081272095786', 09, 'Jl. Sriwijaya No. 56 Kp. Setia Negara Kec. Baradatu Kab. Way Kanan', 'RS', 'Swasta', '104.54792941623', '-4.7295898447424', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kabupatens`
--

CREATE TABLE `tb_kabupatens` (
  `id_kab` int(2) UNSIGNED ZEROFILL NOT NULL,
  `nama_kab` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_kabupatens`
--

INSERT INTO `tb_kabupatens` (`id_kab`, `nama_kab`) VALUES
(01, 'Kota Bandar Lampung'),
(02, 'Kota Metro'),
(03, 'Kabupaten Lampung Barat'),
(04, 'Kabupaten Tanggamus'),
(05, 'Kabupaten Lampung Selatan'),
(06, 'Kabupaten Lampung Timur'),
(07, 'Kabupaten Lampung Tengah'),
(08, 'Kabupaten Lampung Utara'),
(09, 'Kabupaten Way Kanan'),
(10, 'Kabupaten Tulang Bawang'),
(11, 'Kabupaten Pesawaran'),
(12, 'Kabupaten Pringsewu'),
(13, 'Kabupaten Mesuji'),
(14, 'Kabupaten Tulang Bawang Barat'),
(15, 'Kabupaten Pesisir Barat');

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat`
--

CREATE TABLE `tb_obat` (
  `id_obat` int(5) UNSIGNED ZEROFILL NOT NULL,
  `nama_obat` text DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `id_faskes` int(3) UNSIGNED ZEROFILL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_obat`
--

INSERT INTO `tb_obat` (`id_obat`, `nama_obat`, `stok`, `id_faskes`) VALUES
(00002, 'paracetamol', 100, 007);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id_pasien` int(3) UNSIGNED ZEROFILL NOT NULL,
  `nik_pasien` varchar(30) DEFAULT NULL,
  `nama_pasien` varchar(50) DEFAULT NULL,
  `no_hp_pasien` varchar(20) DEFAULT NULL,
  `usia_pasien` varchar(3) DEFAULT NULL,
  `gol_darah_pasien` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') DEFAULT NULL,
  `id_faskes` int(3) UNSIGNED ZEROFILL DEFAULT NULL,
  `tgl_dapat_donor` date DEFAULT NULL,
  `id_pendonor` int(4) UNSIGNED ZEROFILL DEFAULT NULL,
  `jumlah_dapat_kantong` int(11) DEFAULT NULL,
  `alamat_pasien` text DEFAULT NULL,
  `id_kab` int(2) UNSIGNED ZEROFILL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id_pasien`, `nik_pasien`, `nama_pasien`, `no_hp_pasien`, `usia_pasien`, `gol_darah_pasien`, `id_faskes`, `tgl_dapat_donor`, `id_pendonor`, `jumlah_dapat_kantong`, `alamat_pasien`, `id_kab`) VALUES
(002, '211212', 'xxxx', '3232323', '12', 'A+', 001, '2021-08-13', 0001, 3, 'sasas', 01);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pendonor`
--

CREATE TABLE `tb_pendonor` (
  `id_pendonor` int(4) UNSIGNED ZEROFILL NOT NULL,
  `nik` varchar(25) DEFAULT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `id_kab` int(2) UNSIGNED ZEROFILL DEFAULT NULL,
  `alamat` text NOT NULL,
  `gol_darah` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') NOT NULL,
  `tgl_terpapar` date NOT NULL,
  `tgl_sembuh` date NOT NULL,
  `status` enum('Verifikasi','Belum') DEFAULT 'Belum',
  `eligible` enum('Ya','Tidak') DEFAULT 'Ya',
  `usia` varchar(3) DEFAULT NULL,
  `waktu_periksa_pmi` datetime DEFAULT NULL,
  `skema_daftar` enum('Mandiri','PMI','RS') DEFAULT NULL,
  `id_faskes` int(3) UNSIGNED ZEROFILL NOT NULL,
  `verifikator` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_pendonor`
--

INSERT INTO `tb_pendonor` (`id_pendonor`, `nik`, `nama_lengkap`, `email`, `no_hp`, `id_kab`, `alamat`, `gol_darah`, `tgl_terpapar`, `tgl_sembuh`, `status`, `eligible`, `usia`, `waktu_periksa_pmi`, `skema_daftar`, `id_faskes`, `verifikator`) VALUES
(0001, '1212', 'M. Ridho', 'ridhomagribi@gmail.com', '21212', 05, 'natar\r\n', 'A+', '2021-07-23', '2021-07-08', 'Verifikasi', 'Ya', '27', '2021-08-15 07:00:00', 'Mandiri', 001, 'pmilampung'),
(0003, '12121', 'sastro', 'ridhomagribi@gmail.com', '21212', 01, 'ccccc', 'B+', '2021-07-23', '2021-07-08', 'Verifikasi', 'Ya', '23', '0000-00-00 00:00:00', 'Mandiri', 003, 'admin'),
(0004, '121213', 'sas', 'ridhomagribi@gmail.com', '21212', 01, 'ccccc', 'B+', '2021-08-02', '2021-07-08', 'Verifikasi', 'Ya', '33', NULL, 'Mandiri', 001, NULL),
(0009, '1801040312930000', 'bejo man2', 'riddkdkd@mai.com', '21212', 01, 'saas', 'B+', '2021-08-17', '2021-09-10', 'Belum', 'Ya', '27', '2021-08-15 05:50:00', 'Mandiri', 001, NULL),
(0010, '123123123', 'syahrul', 'apa@ja.com', '090909', 01, 'zxxzxzx', 'B+', '2021-08-01', '2021-08-28', 'Verifikasi', 'Ya', '21', '2021-08-15 12:00:00', 'PMI', 001, 'admin'),
(0011, '1871102907970333', 'Gandi Laksana Putra', 'gandi.putra@staff.itera.ac.id', '081367146826', 01, 'Rajabasa', 'B+', '2021-02-01', '2021-02-25', 'Belum', 'Ya', '24', '2021-08-04 12:00:00', 'Mandiri', 001, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(3) UNSIGNED ZEROFILL NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` enum('admin','PMI','RS') NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nama_user` varchar(100) DEFAULT NULL,
  `id_faskes` int(3) UNSIGNED ZEROFILL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `level`, `email`, `nama_user`, `id_faskes`) VALUES
(002, 'admin', '$2y$10$jKDfbnT3JVDVXHLdi6oZ0uHPE6L99lBwc4szB0267gE7OK3YcZClS', 'admin', 'aaa@itera.ac.id', 'Itera', 000),
(004, 'pmilampung', '$2y$10$i8gnrdvWmpKRNhZFlIeinOHKQ98CBKZalodLDy0cYJgnMthDInTQS', 'PMI', 'xxx@gmail.com', 'PMI Lampung', 001),
(005, 'abdulmuluk', '$2y$10$Ks1yrMOi9I2aqV0Q.eptLOgS2/JU0lBT9BJWxkWFC2lM2aa4q3JZW', 'RS', 'apa@ja.com', 'RS bdul muluk', 007);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_alat`
--
ALTER TABLE `tb_alat`
  ADD PRIMARY KEY (`id_alat`) USING BTREE,
  ADD KEY `id_faskes` (`id_faskes`) USING BTREE;

--
-- Indexes for table `tb_donor`
--
ALTER TABLE `tb_donor`
  ADD PRIMARY KEY (`id_donor`) USING BTREE,
  ADD KEY `id_pendonor` (`id_pendonor`) USING BTREE,
  ADD KEY `username` (`username`) USING BTREE;

--
-- Indexes for table `tb_faskes`
--
ALTER TABLE `tb_faskes`
  ADD PRIMARY KEY (`id_faskes`) USING BTREE,
  ADD KEY `id_kab` (`id_kab`) USING BTREE;

--
-- Indexes for table `tb_kabupatens`
--
ALTER TABLE `tb_kabupatens`
  ADD PRIMARY KEY (`id_kab`) USING BTREE,
  ADD KEY `id_kab` (`id_kab`) USING BTREE;

--
-- Indexes for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`id_obat`) USING BTREE,
  ADD KEY `id_faskes` (`id_faskes`) USING BTREE;

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_pasien`) USING BTREE,
  ADD KEY `id_pendonor` (`id_pendonor`) USING BTREE;

--
-- Indexes for table `tb_pendonor`
--
ALTER TABLE `tb_pendonor`
  ADD PRIMARY KEY (`id_pendonor`) USING BTREE,
  ADD KEY `id_kab` (`id_kab`) USING BTREE;

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_alat`
--
ALTER TABLE `tb_alat`
  MODIFY `id_alat` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_donor`
--
ALTER TABLE `tb_donor`
  MODIFY `id_donor` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_faskes`
--
ALTER TABLE `tb_faskes`
  MODIFY `id_faskes` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tb_kabupatens`
--
ALTER TABLE `tb_kabupatens`
  MODIFY `id_kab` int(2) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_obat`
--
ALTER TABLE `tb_obat`
  MODIFY `id_obat` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  MODIFY `id_pasien` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_pendonor`
--
ALTER TABLE `tb_pendonor`
  MODIFY `id_pendonor` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_alat`
--
ALTER TABLE `tb_alat`
  ADD CONSTRAINT `tb_alat_ibfk_1` FOREIGN KEY (`id_faskes`) REFERENCES `tb_faskes` (`id_faskes`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_donor`
--
ALTER TABLE `tb_donor`
  ADD CONSTRAINT `tb_donor_ibfk_3` FOREIGN KEY (`id_pendonor`) REFERENCES `tb_pendonor` (`id_pendonor`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_faskes`
--
ALTER TABLE `tb_faskes`
  ADD CONSTRAINT `tb_faskes_ibfk_1` FOREIGN KEY (`id_kab`) REFERENCES `tb_kabupatens` (`id_kab`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD CONSTRAINT `tb_obat_ibfk_1` FOREIGN KEY (`id_faskes`) REFERENCES `tb_faskes` (`id_faskes`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD CONSTRAINT `tb_pasien_ibfk_1` FOREIGN KEY (`id_pendonor`) REFERENCES `tb_pendonor` (`id_pendonor`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_pendonor`
--
ALTER TABLE `tb_pendonor`
  ADD CONSTRAINT `tb_pendonor_ibfk_1` FOREIGN KEY (`id_kab`) REFERENCES `tb_kabupatens` (`id_kab`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
