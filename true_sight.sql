-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Bulan Mei 2022 pada 14.44
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `true_sight`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `api_session`
--

CREATE TABLE `api_session` (
  `id` int(11) NOT NULL,
  `api_key` varchar(512) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expired` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `api_session`
--

INSERT INTO `api_session` (`id`, `api_key`, `user_id`, `expired`) VALUES
(5, 'KT3OGIR7RVGV62FAW3PX46KNY7IM6Q6TCERHW7EQ3UODUDF0TJWTKZN8RMY8ZQFZ', 10, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `claims`
--

CREATE TABLE `claims` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` longtext NOT NULL,
  `fake` tinyint(1) NOT NULL,
  `auhor_id` int(11) NOT NULL,
  `date_created` bigint(20) NOT NULL,
  `attachment` mediumtext NOT NULL,
  `url` varchar(512) DEFAULT NULL,
  `upvote` int(11) NOT NULL,
  `downvote` int(11) NOT NULL,
  `num_click` int(11) NOT NULL,
  `verified_by` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `claims`
--

INSERT INTO `claims` (`id`, `title`, `description`, `fake`, `auhor_id`, `date_created`, `attachment`, `url`, `upvote`, `downvote`, `num_click`, `verified_by`, `comment_id`) VALUES
(1, 'Pemberian Hadiah Senilai Rp100 Juta dari TikTok Kepada Pengguna', 'Namun melansir dari gadgetren.com, pihak TikTok menegaskan bahwa pesan singkat yang mengatasnamakan TikTok terkait pemberian hadiah uang senilai Rp100 juta kepada pengguna bukanlah pesan resmi yang dikirimkan oleh pihak TikTok, karena TikTok tidak pernah menggunakan nomor pribadi atau layanan email untuk memberikan serta menawarkan hadiah kepada pengguna.\r\n\r\nAtas dasar tersebut, pihak TikTok menegaskan bahwa TikTok hanya memiliki satu email dan satu situs web resmi, yaitu tiktok.com. Sehingga masyarakat atau pengguna TikTok diimbau untuk segera melaporkan kepada pihak TikTok melalui feedback@tiktok.com apabila menerima pesan singkat dalam hal pemberian hadiah senilai jutaan rupiah yang mengatasnamakan TikTok.\r\n\r\nSelain itu, melansir dari turnbackhoax.id, beberapa waktu lalu juga sempat beredar informasi yang sama, yaitu terkait pemberian hadiah senilai jutaan rupiah kepada pengguna TikTok yang diinformasikan melalui pesan singkat. Namun nominal hadiah yang dijanjikan dalam pesan singkat tersebut berbeda.\r\n\r\nBerdasarkan pada seluruh referensi, informasi terkait pemberian hadiah senilai Rp100 juta dari TikTok kepada pengguna ialah informasi salah dan masuk ke dalam kategori konten palsu.', 1, 10, 2826781, '', NULL, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `claim_id` int(11) NOT NULL,
  `date_post` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `apioauth` varchar(512) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `date_created` bigint(20) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `votes` text DEFAULT NULL,
  `bookmarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `apioauth`, `password`, `date_created`, `verified`, `votes`, `bookmarks`) VALUES
(1, 'rolandvincent', 'roland_vincentnet@gmail.com', NULL, '$2a$10$4mGRgtqBgXVJdq4VMJ67SeZBOfp05B6ARpz9.1aKNeym3DkQIF0k2', 2826781, 0, NULL, NULL),
(2, 'anonymous', 'anonymous@gmail.com', NULL, '', 0, 0, NULL, NULL),
(10, 'raymond.varel', 'raymond.varel@gmail.com', NULL, '$2b$12$1fO0OdFeUj66lSxBF9YmCehTVh5f8UBvD2MIqnKcIC/imUeIJ5EJm', 1653636144, 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `api_session`
--
ALTER TABLE `api_session`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `claims`
--
ALTER TABLE `claims`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `api_session`
--
ALTER TABLE `api_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `claims`
--
ALTER TABLE `claims`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
