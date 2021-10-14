-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Okt 2021 pada 14.38
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktikum`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(225) NOT NULL,
  `Tgl_Lahir` date DEFAULT NULL,
  `Jml_transaksi` int(11) DEFAULT NULL,
  `Total_transaksi` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `username`, `password`, `Tgl_Lahir`, `Jml_transaksi`, `Total_transaksi`) VALUES
(2, 'Budi', '97AD4erD', '1994-01-01', 0, 0),
(3, 'Chralie', '548794654', '1965-12-06', 24, 312150),
(4, 'Daniel', 'FLKH947HF', '1980-04-24', 3, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/* hasil kodingan di terminal shell 
create database praktikum;
show databases;
use praktikum;
create table transaksi (id int NOT NULL AUTO_INCREMENT, username varchar(255) NOT NULL, password varchar(225) NOT NULL, Tgl_Lahir date, Jml_transaksi int(11), Total_transaksi int(20), primary key(id));
show tables;
INSERT into transaksi (id, username, password, Tgl_Lahir, Jml_transaksi, Total_transaksi) values ("1","Aris","6487AD5EF","1987-09-09","6","10000");
INSERT into transaksi (id, username, password, Tgl_Lahir, Jml_transaksi, Total_transaksi) values ("2","Budi","97AD4erD","1994-01-01","0","0");
INSERT into transaksi (id, username, password, Tgl_Lahir, Jml_transaksi, Total_transaksi) values ("3","Chralie","548794654","1965-12-06","24","312150");
INSERT into transaksi (id, username, password, Tgl_Lahir, Jml_transaksi, Total_transaksi) values ("4","Daniel","FLKH947HF","1980-04-24","3","0");
select * from transaksi;
UPDATE transaksi SET username = 'Admin' where id =1;
select * from transaksi;
DELETE FROM transaksi WHERE id =1;
SELECT * FROM transaksi WHERE Total_transaksi =0;
SELECT * FROM transaksi WHERE Jml_transaksi <10 AND Total_transaksi>10000;
SELECT SUM(Total_transaksi) AS Total FROM transaksi;
SELECT * FROM transaksi ORDER BY Jml_transaksi DESC;*/'
