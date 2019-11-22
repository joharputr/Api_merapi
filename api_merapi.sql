-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Nov 2019 pada 13.15
-- Versi server: 10.3.15-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_merapi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `id` int(11) UNSIGNED NOT NULL,
  `number` varchar(50) NOT NULL,
  `latitude` varchar(500) NOT NULL,
  `longitude` varchar(500) NOT NULL,
  `expires` varchar(500) NOT NULL,
  `message` varchar(500) NOT NULL,
  `type` enum('circle','point','polyline','marker') DEFAULT 'marker',
  `radius` varchar(1000) NOT NULL,
  `address` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`id`, `number`, `latitude`, `longitude`, `expires`, `message`, `type`, `radius`, `address`) VALUES
(177, '135', '-7.704218467211336', '110.41379123926163', '1574225513272', 'data lokasi', 'point', '10', 'Jl. Kaliurang No.14, Candi Karang, Sardonoharjo, Kec. Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581, Indonesia'),
(180, '138', '-7.690362431434061', '110.41546426713467', '1574334610032', 'Mama', 'point', '100', 'Gg. Merak No.208, Tj. Manding, Umbulmartani, Kec. Ngemplak, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55584, Indonesia'),
(186, '919', '-7.689882979174301', '110.41601110249758', '1574401412075', 'Sede', 'circle', '100.0', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_enter`
--

CREATE TABLE `data_enter` (
  `id` int(100) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `waktu` varchar(500) NOT NULL,
  `area` varchar(500) NOT NULL,
  `nama_zona_terdekat` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_enter`
--

INSERT INTO `data_enter` (`id`, `phone`, `waktu`, `area`, `nama_zona_terdekat`) VALUES
(585, 'Admin', '21/11/2019 18:05:50', 'Dedi', 'Mama'),
(586, 'Admin', '21/11/2019 18:18:28', 'Dedi', 'Mama'),
(587, 'Admin', '21/11/2019 18:19:05', 'Dedi', 'Mama'),
(588, 'Admin', '21/11/2019 18:19:14', 'Dedi', 'Mama'),
(589, 'Admin', '21/11/2019 18:20:40', 'Dedi', 'Mama'),
(590, 'Admin', '21/11/2019 18:20:42', 'Dedi', 'Mama'),
(591, 'Admin', '21/11/2019 18:23:25', 'Dedi', 'Mama'),
(592, 'Admin', '21/11/2019 18:27:52', 'Dedi', 'Mama'),
(593, '+6281393149100', '21/11/2019 18:29:00', 'Dedi', 'Mama'),
(594, '+6281393149100', '21/11/2019 18:29:10', 'Dedi', 'Mama'),
(595, '+6281393149100', '21/11/2019 18:38:15', 'Dedi', 'Mama'),
(596, 'Admin', '21/11/2019 18:38:37', 'Dedi', 'Mama'),
(597, 'Admin', '21/11/2019 18:45:54', 'Dedi', 'Mama'),
(598, 'Admin', '21/11/2019 18:47:01', 'Dedi', 'Mama'),
(599, 'Admin', '21/11/2019 18:57:51', 'Dedi', 'Mama'),
(600, 'Admin', '21/11/2019 19:02:12', 'Dedi', 'Mama'),
(601, '+6281393149100', '21/11/2019 19:06:06', 'Dedi', 'Mama'),
(602, 'Admin', '21/11/2019 19:06:24', 'Dedi', 'Mama'),
(603, 'Admin', '21/11/2019 19:08:34', 'Dedi', 'Mama'),
(604, 'Admin', '21/11/2019 19:09:48', 'Dedi', 'Mama'),
(605, 'Admin', '21/11/2019 20:23:17', 'Dedi', 'Mama'),
(606, 'Admin', '21/11/2019 20:29:47', 'Dedi', 'Mama'),
(607, 'Admin', '21/11/2019 20:47:21', 'Dedi', 'Mama'),
(608, 'Admin', '21/11/2019 20:50:22', 'Dedi', 'Mama'),
(609, 'Admin', '21/11/2019 20:50:55', 'Dedi', 'Mama'),
(610, 'Admin', '21/11/2019 20:54:05', 'Dedi', 'Mama'),
(611, '+6281393149100', '21/11/2019 20:54:25', 'Dedi', 'Mama'),
(612, '+6281393149100', '21/11/2019 20:54:43', 'Dedi', 'Mama'),
(613, '+6281393149100', '21/11/2019 20:54:49', 'Dedi', 'Mama'),
(614, '+6281393149100', '21/11/2019 20:55:45', 'Dedi', 'Mama'),
(615, '+6281393149100', '21/11/2019 20:56:20', 'Dedi', 'Mama'),
(616, '+6281393149100', '21/11/2019 20:58:00', 'Dedi', 'Mama'),
(617, 'Admin', '21/11/2019 20:58:19', 'Dedi', 'Mama'),
(618, 'Admin', '21/11/2019 20:58:46', 'Dedi', 'Mama'),
(619, 'Admin', '21/11/2019 20:59:03', 'Dedi', 'Mama'),
(620, 'Admin', '21/11/2019 21:02:32', 'Dedi', 'Mama'),
(621, 'Admin', '21/11/2019 21:15:19', 'Dedi', 'Mama'),
(622, 'Admin', '21/11/2019 21:34:29', 'Dedi', 'Mama'),
(623, 'Admin', '21/11/2019 21:40:03', 'Dedi', 'Mama'),
(624, 'Admin', '21/11/2019 21:41:15', 'Dedi', 'Mama'),
(625, 'Admin', '21/11/2019 21:42:37', 'Dedi', 'Mama'),
(626, 'Admin', '21/11/2019 21:44:29', 'Dedi', 'Mama'),
(627, 'Admin', '21/11/2019 21:48:31', 'Deding', 'Mama'),
(628, 'Admin', '21/11/2019 21:49:37', 'Deding', 'Mama'),
(629, 'Admin', '21/11/2019 21:58:21', 'Deding', 'Mama'),
(630, 'Admin', '21/11/2019 22:01:56', 'Deding', 'Mama'),
(631, 'Admin', '21/11/2019 22:12:26', 'Deding', 'Mama'),
(632, 'Admin', '21/11/2019 22:17:38', 'Deding', 'Mama'),
(633, 'Admin', '21/11/2019 22:18:24', 'Deding', 'Mama'),
(634, 'Admin', '21/11/2019 22:18:52', 'Deding', 'Mama'),
(635, 'Admin', '21/11/2019 22:20:25', 'Deding', 'Mama'),
(636, 'Admin', '21/11/2019 22:40:48', 'Deding', 'Mama'),
(637, 'Admin', '21/11/2019 22:40:57', 'Deding', 'Mama'),
(638, 'Admin', '21/11/2019 23:05:15', 'Deding', 'Mama'),
(639, 'Admin', '21/11/2019 23:47:43', 'Deding', 'Mama'),
(640, 'Admin', '22/11/2019 10:13:12', 'Deding', 'Mama'),
(641, 'Admin', '22/11/2019 10:13:12', 'Deding', 'Mama'),
(642, 'Admin', '22/11/2019 10:13:13', 'Deding', 'Mama'),
(643, 'Admin', '22/11/2019 10:13:13', 'Deding', 'Mama'),
(644, 'Admin', '22/11/2019 10:13:13', 'Deding', 'Mama'),
(645, 'Admin', '22/11/2019 10:13:13', 'Deding', 'Mama'),
(646, 'Admin', '22/11/2019 10:13:13', 'Deding', 'Mama'),
(647, 'Admin', '22/11/2019 10:13:13', 'Deding', 'Mama'),
(648, 'Admin', '22/11/2019 10:13:14', 'Deding', 'Mama'),
(649, 'Admin', '22/11/2019 10:13:14', 'Deding', 'Mama'),
(650, 'Admin', '22/11/2019 10:13:14', 'Deding', 'Mama'),
(651, 'Admin', '22/11/2019 10:13:14', 'Deding', 'Mama'),
(652, 'Admin', '22/11/2019 10:13:29', 'Deding', 'Mama'),
(653, 'Admin', '22/11/2019 10:29:00', 'Deding', 'Mama'),
(654, 'Admin', '22/11/2019 10:29:52', 'Deding', 'Mama'),
(655, 'Admin', '22/11/2019 10:39:45', 'Deding', 'Mama'),
(656, 'Admin', '22/11/2019 10:40:06', 'Deding', 'Mama'),
(657, 'Admin', '22/11/2019 10:40:22', 'Deding', 'Mama'),
(658, 'Admin', '22/11/2019 10:40:33', 'Deding', 'Mama'),
(659, 'Admin', '22/11/2019 10:55:19', 'Deding', 'Mama'),
(660, 'Admin', '22/11/2019 10:59:19', 'Deding', 'Mama'),
(661, 'Admin', '22/11/2019 11:15:23', 'Deding', 'Mama'),
(662, 'Admin', '22/11/2019 11:24:24', 'Deding', 'Mama'),
(663, 'Admin', '22/11/2019 11:30:38', 'Deding', 'Mama'),
(664, 'Admin', '22/11/2019 11:31:52', 'Deding', 'Mama'),
(665, 'Admin', '22/11/2019 11:41:03', 'Deding', 'Mama'),
(666, 'Admin', '22/11/2019 11:41:42', 'Deding', 'Mama'),
(667, 'Admin', '22/11/2019 11:42:05', 'Deding', 'Mama'),
(668, 'Admin', '22/11/2019 12:25:50', 'Deding', 'Mama'),
(669, 'Admin', '22/11/2019 12:26:07', 'Deding', 'Mama'),
(670, 'Admin', '22/11/2019 12:32:08', 'Sede', 'Mama'),
(671, 'Admin', '22/11/2019 12:33:35', 'Sede', 'Mama'),
(672, 'Admin', '22/11/2019 12:35:06', 'Sede', 'Mama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_exit`
--

CREATE TABLE `data_exit` (
  `id` int(11) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `waktu` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_exit`
--

INSERT INTO `data_exit` (`id`, `phone`, `area`, `waktu`) VALUES
(52, '+6281393149100', 'Uii', '18/11/2019 23:35:50'),
(53, 'Admin', 'Uii', '18/11/2019 23:36:08'),
(54, '+6281393149100', 'Uii', '19/11/2019 12:01:02'),
(55, '+6281393149100', 'Uii', '19/11/2019 12:03:26'),
(56, '+6281393149100', 'Uii', '19/11/2019 12:03:43'),
(57, '+6281393149100', 'Uii', '19/11/2019 12:03:52'),
(58, '+6281393149100', 'Uii', '19/11/2019 12:05:13'),
(59, '+6281393149100', 'Uii', '19/11/2019 12:09:41'),
(60, '+6281393149100', 'Uii', '19/11/2019 12:10:25'),
(61, '+6281393149100', 'Uii', '19/11/2019 12:10:49'),
(62, 'Admin', 'Uii', '19/11/2019 12:13:07'),
(63, 'Admin', 'Uii', '19/11/2019 12:13:16'),
(64, 'Admin', 'Uii', '19/11/2019 12:18:24'),
(65, 'Admin', 'Uii', '19/11/2019 12:19:59'),
(66, 'Admin', 'Uii', '19/11/2019 12:22:31'),
(67, 'Admin', 'Uii', '19/11/2019 12:22:38'),
(68, 'Admin', 'Uii', '19/11/2019 12:24:49'),
(69, 'Admin', 'Uii', '19/11/2019 12:25:40'),
(70, 'Admin', 'Uii', '19/11/2019 12:26:47'),
(71, 'Admin', 'Uii', '19/11/2019 12:27:48'),
(72, 'Admin', 'Uii', '19/11/2019 12:31:18'),
(73, 'Admin', 'Uii', '19/11/2019 12:31:40'),
(74, 'Admin', 'Uii', '19/11/2019 12:33:49'),
(75, 'Admin', 'Uii', '19/11/2019 12:33:50'),
(76, 'Admin', 'Uii', '19/11/2019 12:34:03'),
(77, 'Admin', 'Uii', '19/11/2019 12:34:59'),
(78, 'Admin', 'Uii', '19/11/2019 12:35:27'),
(79, 'Admin', 'Uii', '19/11/2019 12:35:57'),
(80, 'Admin', 'Uii', '19/11/2019 12:41:21'),
(81, 'Admin', 'Uii', '19/11/2019 13:03:51'),
(82, 'Admin', 'Uii', '19/11/2019 13:04:26'),
(83, 'Admin', 'Uii', '19/11/2019 13:04:50'),
(84, 'Admin', 'Uii', '19/11/2019 13:05:11'),
(85, 'Admin', 'Uii', '19/11/2019 13:05:35'),
(86, 'Admin', 'Uii', '19/11/2019 13:06:32'),
(87, 'Admin', 'Uii', '19/11/2019 13:06:57'),
(88, 'Admin', 'Uii', '19/11/2019 13:07:02'),
(89, 'Admin', 'Uii', '19/11/2019 13:07:09'),
(90, 'Admin', 'Uii', '19/11/2019 13:08:05'),
(91, 'Admin', 'Uii', '19/11/2019 13:11:30'),
(92, 'Admin', 'Uii', '19/11/2019 13:11:36'),
(93, 'Admin', 'Uii', '19/11/2019 13:12:03'),
(94, 'Admin', 'Uii', '19/11/2019 13:12:10'),
(95, '+6281393149100', 'Uii', '19/11/2019 13:13:50'),
(96, '+6281393149100', 'Uii', '19/11/2019 13:16:32'),
(97, '+6281393149100', 'Uii', '19/11/2019 13:16:57'),
(98, '+6281393149100', 'Uii', '19/11/2019 13:20:42'),
(99, '+6281393149100', 'Uii', '19/11/2019 13:25:04'),
(100, 'Admin', 'Uii', '19/11/2019 13:27:58'),
(101, 'Admin', 'Gedung fiai', '19/11/2019 13:28:28'),
(102, 'Admin', 'Uii', '19/11/2019 13:29:06'),
(103, 'Admin', 'Gedung fiai', '19/11/2019 13:29:09'),
(104, 'Admin', 'Uii', '19/11/2019 13:30:11'),
(105, 'Admin', 'Uii', '19/11/2019 13:31:04'),
(106, 'Admin', 'Uii', '19/11/2019 13:37:45'),
(107, 'Admin', 'Fti', '19/11/2019 13:40:24'),
(108, 'Admin', 'Fti', '19/11/2019 13:40:52'),
(109, 'Admin', 'Uii', '19/11/2019 13:41:31'),
(110, 'Admin', 'Uii', '19/11/2019 13:42:51'),
(111, 'Admin', 'Uii', '19/11/2019 13:43:37'),
(112, 'Admin', 'Uii', '19/11/2019 13:46:22'),
(113, 'Admin', 'Uii', '19/11/2019 13:47:13'),
(114, 'Admin', 'Uii', '19/11/2019 13:48:03'),
(115, 'Admin', 'Fti', '19/11/2019 13:48:09'),
(116, 'Admin', 'Fti', '19/11/2019 13:49:07'),
(117, 'Admin', 'Fti', '19/11/2019 13:49:35'),
(118, 'Admin', 'Uii', '19/11/2019 13:49:49'),
(119, 'Admin', 'Fti', '19/11/2019 13:49:51'),
(120, 'Admin', 'Fti', '19/11/2019 13:49:55'),
(121, 'Admin', 'Fti', '19/11/2019 13:52:57'),
(122, 'Admin', 'Uii', '19/11/2019 13:54:06'),
(123, 'Admin', 'Fti', '19/11/2019 13:54:08'),
(124, 'Admin', 'Uii', '19/11/2019 13:54:53'),
(125, 'Admin', 'Fti', '19/11/2019 13:54:55'),
(126, 'Admin', 'Fti', '19/11/2019 13:56:54'),
(127, 'Admin', 'Xx', '21/11/2019 11:20:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_user_aman`
--

CREATE TABLE `data_user_aman` (
  `id` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `nama_zona` varchar(255) NOT NULL,
  `waktu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_user_aman`
--

INSERT INTO `data_user_aman` (`id`, `phone`, `nama_zona`, `waktu`) VALUES
(1, 'Admin', 'Mama', '21/11/2019 18:20:39'),
(2, 'Admin', 'Mama', '21/11/2019 18:20:41'),
(3, 'Admin', 'Mama', '21/11/2019 18:23:24'),
(4, 'Admin', 'Mama', '21/11/2019 18:27:51'),
(5, '+6281393149100', 'Mama', '21/11/2019 18:28:59'),
(6, '+6281393149100', 'Mama', '21/11/2019 18:29:09'),
(7, '+6281393149100', 'Mama', '21/11/2019 18:38:14'),
(8, 'Admin', 'Mama', '21/11/2019 18:38:36'),
(9, 'Admin', 'Mama', '21/11/2019 18:45:53'),
(10, 'Admin', 'Mama', '21/11/2019 18:47:00'),
(11, 'Admin', 'Mama', '21/11/2019 18:57:50'),
(12, 'Admin', 'Mama', '21/11/2019 19:02:11'),
(13, '+6281393149100', 'Mama', '21/11/2019 19:06:05'),
(14, 'Admin', 'Mama', '21/11/2019 19:06:23'),
(15, 'Admin', 'Mama', '21/11/2019 19:08:33'),
(16, 'Admin', 'Mama', '21/11/2019 19:09:47'),
(17, 'Admin', 'Mama', '21/11/2019 20:23:16'),
(18, 'Admin', 'Mama', '21/11/2019 20:29:46'),
(19, 'Admin', 'Mama', '21/11/2019 20:47:20'),
(20, 'Admin', 'Mama', '21/11/2019 20:50:21'),
(21, 'Admin', 'Mama', '21/11/2019 20:50:54'),
(22, 'Admin', 'Mama', '21/11/2019 20:54:04'),
(23, '+6281393149100', 'Mama', '21/11/2019 20:54:24'),
(24, '+6281393149100', 'Mama', '21/11/2019 20:54:42'),
(25, '+6281393149100', 'Mama', '21/11/2019 20:54:48'),
(26, '+6281393149100', 'Mama', '21/11/2019 20:55:44'),
(27, '+6281393149100', 'Mama', '21/11/2019 20:56:19'),
(28, '+6281393149100', 'Mama', '21/11/2019 20:58:00'),
(29, 'Admin', 'Mama', '21/11/2019 20:58:18'),
(30, 'Admin', 'Mama', '21/11/2019 20:58:45'),
(31, 'Admin', 'Mama', '21/11/2019 20:59:02'),
(32, 'Admin', 'Mama', '21/11/2019 21:02:31'),
(33, 'Admin', 'Mama', '21/11/2019 21:15:18'),
(34, 'Admin', 'Mama', '21/11/2019 21:34:28'),
(35, 'Admin', 'Mama', '21/11/2019 21:40:02'),
(36, 'Admin', 'Mama', '21/11/2019 21:41:14'),
(37, 'Admin', 'Mama', '21/11/2019 21:42:36'),
(38, 'Admin', 'Mama', '21/11/2019 21:44:28'),
(39, 'Admin', 'Mama', '21/11/2019 21:48:30'),
(40, 'Admin', 'Mama', '21/11/2019 21:49:36'),
(41, 'Admin', 'Mama', '21/11/2019 21:58:20'),
(42, 'Admin', 'Mama', '21/11/2019 22:01:55'),
(43, 'Admin', 'Mama', '21/11/2019 22:12:25'),
(44, 'Admin', 'Mama', '21/11/2019 22:17:37'),
(45, 'Admin', 'Mama', '21/11/2019 22:18:23'),
(46, 'Admin', 'Mama', '21/11/2019 22:18:51'),
(47, 'Admin', 'Mama', '21/11/2019 22:20:24'),
(48, 'Admin', 'Mama', '21/11/2019 22:40:46'),
(49, 'Admin', 'Mama', '21/11/2019 22:40:47'),
(50, 'Admin', 'Mama', '21/11/2019 22:40:56'),
(51, 'Admin', 'Mama', '21/11/2019 23:05:14'),
(52, 'Admin', 'Mama', '21/11/2019 23:47:42'),
(53, 'Admin', 'Mama', '22/11/2019 10:13:12'),
(54, 'Admin', 'Mama', '22/11/2019 10:13:12'),
(55, 'Admin', 'Mama', '22/11/2019 10:13:12'),
(56, 'Admin', 'Mama', '22/11/2019 10:13:12'),
(57, 'Admin', 'Mama', '22/11/2019 10:13:12'),
(58, 'Admin', 'Mama', '22/11/2019 10:13:13'),
(59, 'Admin', 'Mama', '22/11/2019 10:13:13'),
(60, 'Admin', 'Mama', '22/11/2019 10:13:13'),
(61, 'Admin', 'Mama', '22/11/2019 10:13:13'),
(62, 'Admin', 'Mama', '22/11/2019 10:13:13'),
(63, 'Admin', 'Mama', '22/11/2019 10:13:13'),
(64, 'Admin', 'Mama', '22/11/2019 10:13:14'),
(65, 'Admin', 'Mama', '22/11/2019 10:13:14'),
(66, 'Admin', 'Mama', '22/11/2019 10:13:14'),
(67, 'Admin', 'Mama', '22/11/2019 10:13:28'),
(68, 'Admin', 'Mama', '22/11/2019 10:28:59'),
(69, 'Admin', 'Mama', '22/11/2019 10:29:51'),
(70, 'Admin', 'Mama', '22/11/2019 10:39:44'),
(71, 'Admin', 'Mama', '22/11/2019 10:40:05'),
(72, 'Admin', 'Mama', '22/11/2019 10:40:21'),
(73, 'Admin', 'Mama', '22/11/2019 10:40:32'),
(74, 'Admin', 'Mama', '22/11/2019 10:55:18'),
(75, 'Admin', 'Mama', '22/11/2019 10:59:18'),
(76, 'Admin', 'Mama', '22/11/2019 11:15:22'),
(77, 'Admin', 'Mama', '22/11/2019 11:24:23'),
(78, 'Admin', 'Mama', '22/11/2019 11:30:37'),
(79, 'Admin', 'Mama', '22/11/2019 11:31:51'),
(80, 'Admin', 'Mama', '22/11/2019 11:41:02'),
(81, 'Admin', 'Mama', '22/11/2019 11:41:41'),
(82, 'Admin', 'Mama', '22/11/2019 11:42:05'),
(83, 'Admin', 'Mama', '22/11/2019 12:26:06'),
(84, 'Admin', 'Mama', '22/11/2019 12:32:07'),
(85, 'Admin', 'Mama', '22/11/2019 12:33:34'),
(86, 'Admin', 'Mama', '22/11/2019 12:35:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `hp` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_login` enum('1','0') DEFAULT '0',
  `tipe` enum('admin','user') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `hp`, `password`, `is_login`, `tipe`) VALUES
(1, 'admin', '123', 'admin', '1', 'admin'),
(2, 'fafa', '1', '111', '0', 'user'),
(14, 'baba', '123', 'yoyo', '0', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_enter`
--
ALTER TABLE `data_enter`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_exit`
--
ALTER TABLE `data_exit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_user_aman`
--
ALTER TABLE `data_user_aman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT untuk tabel `data_enter`
--
ALTER TABLE `data_enter`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=673;

--
-- AUTO_INCREMENT untuk tabel `data_exit`
--
ALTER TABLE `data_exit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT untuk tabel `data_user_aman`
--
ALTER TABLE `data_user_aman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
