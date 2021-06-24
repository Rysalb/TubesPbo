-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jun 2021 pada 15.55
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datalogin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftarujian`
--

CREATE TABLE `daftarujian` (
  `ID` int(100) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `NIM` int(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `NilaiPerusahaan` varchar(100) NOT NULL,
  `Laporan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `daftarujian`
--

INSERT INTO `daftarujian` (`ID`, `Nama`, `NIM`, `Email`, `NilaiPerusahaan`, `Laporan`) VALUES
(1, 'kok iso', 20201301, 'gas@yahoo.com', 'Makalah AIK kelompok 10.pdf', 'PL2-C-Rysa Laksana-202010370311128.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datamahasiswa`
--

CREATE TABLE `datamahasiswa` (
  `idKel` int(100) NOT NULL,
  `anggotaKel` text NOT NULL,
  `alamatKel` text NOT NULL,
  `waktuAwal` date NOT NULL,
  `waktuAkhir` date NOT NULL,
  `namaFileCV` varchar(100) NOT NULL,
  `namaFilePorto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `datamahasiswa`
--

INSERT INTO `datamahasiswa` (`idKel`, `anggotaKel`, `alamatKel`, `waktuAwal`, `waktuAkhir`, `namaFileCV`, `namaFilePorto`) VALUES
(1, '\naku\nkamu\ndia', 'Malang', '2021-06-03', '2021-06-04', '0001-dikonversi_compressed 2.pdf', '09 November 2020_ILPEM_Dahan CB._Yudisium.pdf'),
(2, '\nbudi\nbeni\nburhan\nbennet', 'teyvat', '2021-06-12', '2021-06-16', 'Rysa Laksana_128_resume PKM 1.pdf', 'PL2-C-Rysa Laksana-202010370311128.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `type`) VALUES
(5, 'makan', 'minum', 'yaudah@gmail.com', 'Admin'),
(8, 'rysal', '12345', 'klee@yahoo.com', 'Mahasiswa'),
(6, 'pan', 'pan', 'pan@byon.com', 'Mahasiswa'),
(7, 'ir', 'ir', 'ir@byon.com', 'Dosen');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftarujian`
--
ALTER TABLE `daftarujian`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `datamahasiswa`
--
ALTER TABLE `datamahasiswa`
  ADD PRIMARY KEY (`idKel`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftarujian`
--
ALTER TABLE `daftarujian`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `datamahasiswa`
--
ALTER TABLE `datamahasiswa`
  MODIFY `idKel` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
