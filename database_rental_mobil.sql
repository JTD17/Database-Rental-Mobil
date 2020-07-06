-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jul 2020 pada 08.06
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database rental mobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_Customer` int(100) NOT NULL,
  `Nama_Customer` varchar(100) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Jenis_Kelamin` enum('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_Customer`, `Nama_Customer`, `Alamat`, `Jenis_Kelamin`) VALUES
(1, 'Eka Krisdiana', 'Jl. LA Sucipto 15 Malang Kelurahan Belimbing', 'P'),
(2, 'Yolanda Rizki Rahmawati', 'Jl. Teluk Pelabuhan Ratu 378 Malang Kelurahan Arjosari', 'P'),
(3, 'Eko Prasetyo', 'Jl. Hamid Rusdi 91 Malang Kelurahan Bunulrejo', 'L'),
(4, 'Prima Lenggono', 'Jl. Raya Tasikmadu, Malang Kelurahan Tasikmadu', 'L'),
(5, 'Melan Nurfaida', 'Jl. Kebalen Wetan 5 Malang Kelurahan Kotalama', 'P'),
(6, 'Widi Dwi', 'Jl. Pattimura 51 Malang Kelurahan Klojen', 'L'),
(7, 'Ariani', 'Jl. KH Hasyim Asyari 21 Malang Kelurahan Kauman', 'P'),
(8, 'Sugiantoro', 'Jl. Mertojoyo 1 Malang Kelurahan Merjosari', 'L'),
(9, 'Lukman Arianto', 'Jl. Kali Anyar 1 Malang Kelurahan Wonokoyo', 'L'),
(10, 'mingga H', 'Jl. Raya Bawang 1 Malang Kelurahan Tunggulwulung', 'P');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_bayar`
--

CREATE TABLE `jenis_bayar` (
  `id_JB` int(100) NOT NULL,
  `Jenis_Bayar` enum('Cash','Debit') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_bayar`
--

INSERT INTO `jenis_bayar` (`id_JB`, `Jenis_Bayar`) VALUES
(1, 'Cash'),
(2, 'Debit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id_Karyawan` varchar(100) NOT NULL,
  `Nama_Karyawan` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id_Karyawan`, `Nama_Karyawan`, `Username`, `Password`) VALUES
('001', 'Aida Ulfia Rochmah', 'Aida', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
('002', 'Mingga Handayani', 'Mingga', '51eac6b471a284d3341d8c0c63d0f1a286262a18'),
('003', 'M.Farras Rafi Muflih', 'Rafi', 'fc1200c7a7aa52109d762a9f005b149abef01479');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id_Mobil` int(100) NOT NULL,
  `Nama_Mobil` varchar(100) NOT NULL,
  `Jenis` varchar(100) NOT NULL,
  `Jumlah_Kursi` int(100) NOT NULL,
  `No_Polisi` varchar(100) NOT NULL,
  `Harga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id_Mobil`, `Nama_Mobil`, `Jenis`, `Jumlah_Kursi`, `No_Polisi`, `Harga`) VALUES
(1, 'Toyota Corrola ', 'Otomatis', 4, 'N 1991 YA', 'Rp.750000'),
(2, 'Mazda Cx-30', 'Otomatis', 5, 'N 1992 YB', 'Rp.700000'),
(3, 'Kijang Innova', 'Otomatis', 7, 'N 1993 YC', 'Rp.550000'),
(4, 'Suzuki Jimny ', 'Manual', 4, 'N 1994 YD', 'Rp.500000'),
(5, 'cerry', 'manual', 4, 'N-2425-UY', '200.000'),
(6, 'Toyota Avanza ', 'Manual', 7, 'N 1996 YF', 'Rp.400000'),
(7, 'Toyota Agya ', 'Otomatis', 5, 'N 1997 YG', 'Rp.300000'),
(8, 'Toyota Ayla ', 'Manual', 5, 'N 1998 YH', 'Rp.300000'),
(9, 'Toyota Calya ', 'Otomatis', 7, 'N 1999 YI', 'Rp.275000'),
(10, 'Daihatsu Sigra ', 'Manual', 7, 'N 2000 YJ', 'Rp.250000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sewa`
--

CREATE TABLE `sewa` (
  `id_sewa` int(100) NOT NULL,
  `id_Customer` int(100) NOT NULL,
  `Tanggal_Sewa` date NOT NULL,
  `Tanggal_kembali` date NOT NULL,
  `id_Mobil` int(100) NOT NULL,
  `id_JB` int(100) NOT NULL,
  `Total_Bayar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sewa`
--

INSERT INTO `sewa` (`id_sewa`, `id_Customer`, `Tanggal_Sewa`, `Tanggal_kembali`, `id_Mobil`, `id_JB`, `Total_Bayar`) VALUES
(1, 1, '2020-07-01', '2020-07-02', 10, 1, 'Rp.250000'),
(2, 2, '2020-07-01', '2020-07-03', 2, 2, 'Rp.600000'),
(3, 3, '2020-07-02', '2020-07-04', 8, 2, 'Rp.600000'),
(4, 4, '2020-07-03', '2020-07-04', 8, 1, 'Rp.450000'),
(5, 5, '2020-07-03', '2020-07-06', 9, 2, 'Rp.825000'),
(6, 6, '2020-07-04', '2020-07-06', 10, 1, 'Rp.500000'),
(7, 7, '2020-07-04', '2020-07-05', 1, 2, 'Rp.750000'),
(8, 8, '2020-07-05', '2020-07-07', 5, 1, 'Rp.900000'),
(9, 9, '2020-07-05', '2020-07-06', 2, 1, 'Rp.700000'),
(10, 10, '2020-07-05', '2020-07-06', 7, 1, 'Rp.300000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_Customer`) USING BTREE;

--
-- Indeks untuk tabel `jenis_bayar`
--
ALTER TABLE `jenis_bayar`
  ADD PRIMARY KEY (`id_JB`) USING BTREE;

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_Karyawan`) USING BTREE;

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_Mobil`) USING BTREE;

--
-- Indeks untuk tabel `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`id_sewa`) USING BTREE,
  ADD KEY `ForeignKey_id_Customer` (`id_Customer`),
  ADD KEY `ForeignKey_id_Mobil` (`id_Mobil`),
  ADD KEY `ForeignKey_Jenis_Bayar` (`id_JB`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `sewa`
--
ALTER TABLE `sewa`
  ADD CONSTRAINT `ForeignKey_Jenis_Bayar` FOREIGN KEY (`id_JB`) REFERENCES `jenis_bayar` (`id_JB`),
  ADD CONSTRAINT `ForeignKey_id_Customer` FOREIGN KEY (`id_Customer`) REFERENCES `customer` (`id_Customer`),
  ADD CONSTRAINT `ForeignKey_id_Mobil` FOREIGN KEY (`id_Mobil`) REFERENCES `mobil` (`id_Mobil`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
