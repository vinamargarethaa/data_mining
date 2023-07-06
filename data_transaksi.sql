-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jul 2023 pada 08.54
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_transaksi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakta_penjualan`
--

CREATE TABLE `fakta_penjualan` (
  `id` int(50) NOT NULL,
  `Tanggal` date DEFAULT NULL,
  `Barang` varchar(50) DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `fakta_penjualan`
--

INSERT INTO `fakta_penjualan` (`id`, `Tanggal`, `Barang`, `Jumlah`) VALUES
(1, '2023-07-01', 'Teh Celup', 2),
(2, '2023-07-01', 'Sirup', 3),
(3, '2023-07-01', 'Pet Food', 1),
(4, '2023-07-02', 'Teh Celup', 4),
(5, '2023-07-02', 'Sirup', 2),
(6, '2023-07-02', 'Pet Food', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(50) NOT NULL,
  `no_transaksi` int(11) DEFAULT NULL,
  `tanggal_transaksi` date DEFAULT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `no_transaksi`, `tanggal_transaksi`, `nama_barang`, `jumlah`) VALUES
(1, 1, '2023-07-01', 'Teh Celup', 1),
(2, 1, '2023-07-01', 'Sirup', 1),
(3, 1, '2023-07-01', 'Pet Food', 1),
(4, 2, '2023-07-02', 'Teh Celup', 1),
(5, 2, '2023-07-02', 'Gula', 1),
(6, 3, '2023-07-03', 'Sirup', 1),
(7, 3, '2023-07-03', 'Pet Food', 1),
(8, 4, '2023-07-04', 'Teh Celup', 1),
(9, 4, '2023-07-04', 'Sirup', 1),
(10, 5, '2023-07-05', 'Teh Celup', 1),
(11, 5, '2023-07-05', 'Sirup', 1),
(12, 5, '2023-07-05', 'Gula', 1),
(13, 6, '2023-07-06', 'Teh Celup', 1),
(14, 6, '2023-07-06', 'Pet Food', 1),
(15, 7, '2023-07-07', 'Teh Celup', 1),
(16, 7, '2023-07-07', 'Sirup', 1),
(17, 7, '2023-07-07', 'Pet Food', 1),
(18, 8, '2023-07-08', 'Teh Celup', 1),
(19, 9, '2023-07-09', 'Teh Celup', 1),
(20, 9, '2023-07-09', 'Gula', 1),
(21, 10, '2023-07-10', 'Sirup', 1),
(22, 10, '2023-07-10', 'Pet Food', 1),
(23, 10, '2023-07-10', 'Gula', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_apriori`
--

CREATE TABLE `transaksi_apriori` (
  `no_transaksi` int(11) NOT NULL,
  `barang_1` varchar(50) DEFAULT NULL,
  `barang_2` varchar(50) DEFAULT NULL,
  `barang_3` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi_apriori`
--

INSERT INTO `transaksi_apriori` (`no_transaksi`, `barang_1`, `barang_2`, `barang_3`) VALUES
(1, 'Teh Celup', 'Sirup', 'Pet Food'),
(2, 'Teh Celup', 'Gula', NULL),
(3, 'Sirup', 'Pet Food', NULL),
(4, 'Teh Celup', 'Sirup', NULL),
(5, 'Teh Celup', 'Sirup', 'Gula'),
(6, 'Teh Celup', 'Pet Food', NULL),
(7, 'Teh Celup', 'Sirup', 'Pet Food'),
(8, 'Teh Celup', NULL, NULL),
(9, 'Teh Celup', 'Gula', NULL),
(10, 'Sirup', 'Pet Food', 'Gula');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `fakta_penjualan`
--
ALTER TABLE `fakta_penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Tanggal` (`Tanggal`),
  ADD KEY `Barang` (`Barang`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tanggal_transaksi` (`tanggal_transaksi`),
  ADD KEY `nama_barang` (`nama_barang`);

--
-- Indeks untuk tabel `transaksi_apriori`
--
ALTER TABLE `transaksi_apriori`
  ADD PRIMARY KEY (`no_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `fakta_penjualan`
--
ALTER TABLE `fakta_penjualan`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `fakta_penjualan`
--
ALTER TABLE `fakta_penjualan`
  ADD CONSTRAINT `fakta_penjualan_ibfk_1` FOREIGN KEY (`Tanggal`) REFERENCES `transaksi` (`tanggal_transaksi`),
  ADD CONSTRAINT `fakta_penjualan_ibfk_2` FOREIGN KEY (`Barang`) REFERENCES `transaksi` (`nama_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
