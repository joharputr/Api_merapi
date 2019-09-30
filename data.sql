-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Sep 2019 pada 09.25
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
-- Database: `apilive`
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
  `type` enum('circle','polygone','polyline','marker') DEFAULT 'marker',
  `radius` varchar(1000) NOT NULL,
  `distance` varchar(1000) NOT NULL,
  `minimal_distance_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`id`, `number`, `latitude`, `longitude`, `expires`, `message`, `type`, `radius`, `distance`, `minimal_distance_name`) VALUES
(80, '792', '-7.5428228958469425', '110.44521600008011', '1569517885156', 'GGWP', 'circle', '800.0', '16662.335538998184', ''),
(81, '793', '-7.655215452722372', '110.41140742599966', '1569551050288', 'GGWP', 'circle', '1000.0', '3883.0773158815864', ''),
(82, '794', '-7.68664940342653', '110.41144262999296', '1569551068338', 'GGWP', 'circle', '600.0', '613.0355463156657', ''),
(83, '795', '-7.679665832443896', '110.38757633417845', '1569826172415', 'GGWP', 'circle', '600.0', '3328.0509819411277', ''),
(84, '796', '-7.304871744555436', '110.40091663599013', '1569826291547', 'Jauhbbgt', 'circle', '600.0', '42838.95873243746', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
