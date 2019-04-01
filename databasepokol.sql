# POKI-ONLINE

-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Apr 2019 pada 07.00
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poki-online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `driver`
--

CREATE TABLE `driver` (
  `id_poki` int(5) NOT NULL,
  `order_id_passanger` int(5) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `No.HP` varchar(12) NOT NULL,
  `plat_motor` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `driver`
--

INSERT INTO `driver` (`id_poki`, `order_id_passanger`, `Nama`, `No.HP`, `plat_motor`) VALUES
(10001, 0, 'Budiawan', '085600001111', 'F3344JKR'),
(10002, 0, 'Setiawan', '085700001111', 'F3345JKL'),
(20001, 0, 'Mahmuddin', '081200001111', 'B4322CXO'),
(20002, 0, 'Salmuddin', '081200001112', 'B3322VBA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `Order_id` int(5) NOT NULL,
  `id_passanger` int(5) NOT NULL,
  `id_driver` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `passanger`
--

CREATE TABLE `passanger` (
  `id_passanger` int(5) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `No_HP` varchar(12) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `passanger`
--

INSERT INTO `passanger` (`id_passanger`, `Nama`, `No_HP`, `email`) VALUES
(1, 'Titan Dayu', '081278890083', 'titandayup@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id_poki`),
  ADD KEY `order_id_passanger` (`order_id_passanger`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD KEY `DriverToPassangeer` (`Order_id`);

--
-- Indeks untuk tabel `passanger`
--
ALTER TABLE `passanger`
  ADD PRIMARY KEY (`id_passanger`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `driver`
--
ALTER TABLE `driver`
  MODIFY `id_poki` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20003;

--
-- AUTO_INCREMENT untuk tabel `passanger`
--
ALTER TABLE `passanger`
  MODIFY `id_passanger` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `DriverToPassangeer` FOREIGN KEY (`Order_id`) REFERENCES `driver` (`id_poki`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
