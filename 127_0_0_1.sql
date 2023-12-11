-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Des 2023 pada 04.53
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cindy`
--
CREATE DATABASE IF NOT EXISTS `cindy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cindy`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cindy`
--

CREATE TABLE `cindy` (
  `id` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Database: `cindy1`
--
CREATE DATABASE IF NOT EXISTS `cindy1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cindy1`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cindy`
--

CREATE TABLE `cindy` (
  `id` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Database: `form`
--
CREATE DATABASE IF NOT EXISTS `form` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `form`;
--
-- Database: `grocery`
--
CREATE DATABASE IF NOT EXISTS `grocery` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `grocery`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(10) NOT NULL,
  `profile_id` varchar(10) NOT NULL,
  `cart_status` varchar(5) NOT NULL,
  `cart_count` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2021_12_16_053514_create_users_table', 1),
(3, '2023_02_09_124713_create_products_table', 1),
(4, '2023_02_09_125334_create_reviews_table', 1),
(5, '2023_02_09_125826_create_profiles_table', 1),
(6, '2023_02_09_125839_create_carts_table', 1),
(7, '2023_02_09_125901_create_news_letters_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `news_letters`
--

CREATE TABLE `news_letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` varchar(3000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` varchar(20) NOT NULL,
  `product_description` varchar(3000) NOT NULL,
  `product_price` varchar(20) NOT NULL,
  `product_quantity` varchar(20) NOT NULL,
  `product_sizes` varchar(20) NOT NULL,
  `product_color` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_name` varchar(30) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `address_2` varchar(50) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(10) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_email` varchar(20) NOT NULL,
  `review_head` varchar(50) NOT NULL,
  `review_description` varchar(3000) NOT NULL,
  `review_star` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `news_letters`
--
ALTER TABLE `news_letters`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
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
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `news_letters`
--
ALTER TABLE `news_letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `jeki`
--
CREATE DATABASE IF NOT EXISTS `jeki` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jeki`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftar`
--

CREATE TABLE `pendaftar` (
  `id` int(12) NOT NULL,
  `id_user` int(12) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_baru`
--

CREATE TABLE `siswa_baru` (
  `id` int(12) NOT NULL,
  `id_pendaftar` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(12) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` enum('1','2') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'jeki', 'jeki', NULL, '1'),
(2, 'jekii', 'jekii', NULL, '1'),
(3, 'z', 'z', NULL, '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `siswa_baru`
--
ALTER TABLE `siswa_baru`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pendaftar` (`id_pendaftar`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pendaftar`
--
ALTER TABLE `pendaftar`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `siswa_baru`
--
ALTER TABLE `siswa_baru`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD CONSTRAINT `pendaftar_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `siswa_baru`
--
ALTER TABLE `siswa_baru`
  ADD CONSTRAINT `siswa_baru_ibfk_1` FOREIGN KEY (`id_pendaftar`) REFERENCES `pendaftar` (`id`);
--
-- Database: `jualan`
--
CREATE DATABASE IF NOT EXISTS `jualan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jualan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jualan`
--

CREATE TABLE `jualan` (
  `id` int(10) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jualan`
--
ALTER TABLE `jualan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jualan`
--
ALTER TABLE `jualan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2023_09_26_010651_create_presiden_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `presiden`
--

CREATE TABLE `presiden` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `no_kk` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `presiden`
--

INSERT INTO `presiden` (`id`, `created_at`, `updated_at`, `nama`, `nik`, `no_kk`, `jenis_kelamin`, `alamat`) VALUES
(1, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Rama Marpaung', '0547 1972 268', '026 1613 4265', 'L', 'Dk. Dago No. 565, Pekalongan 34460, Papua'),
(2, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Olivia Lestari', '0635 9937 4695', '0379 9687 6588', 'L', 'Psr. R.E. Martadinata No. 437, Padangsidempuan 35470, Malut'),
(3, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Bakiono Najmudin', '(+62) 522 2451 134', '0291 5740 7854', 'L', 'Jln. Wahidin Sudirohusodo No. 546, Batu 19500, Banten'),
(4, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Mulya Mangunsong', '(+62) 399 8622 682', '(+62) 488 7643 903', 'L', 'Jr. Bakit  No. 557, Gorontalo 91399, Sulteng'),
(5, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Safina Padma Wijayanti S.Sos', '(+62) 536 5736 507', '0568 5498 387', 'L', 'Ds. Radio No. 283, Probolinggo 29555, Gorontalo'),
(6, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Intan Vivi Mulyani', '(+62) 278 6786 4398', '0542 6056 707', 'L', 'Ds. Dipatiukur No. 736, Singkawang 96382, Sulsel'),
(7, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Kanda Napitupulu', '0875 5271 3805', '0242 0989 227', 'L', 'Gg. Ir. H. Juanda No. 761, Sorong 36641, Gorontalo'),
(8, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Wadi Budiman', '0262 5256 0405', '022 1192 981', 'L', 'Jr. Flora No. 454, Medan 29105, Kaltara'),
(9, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Carla Maryati S.Pd', '0700 9418 574', '0579 8501 9874', 'L', 'Psr. Pasirkoja No. 616, Sabang 34388, Jateng'),
(10, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Rika Namaga S.Pt', '(+62) 414 0782 0302', '0264 0622 1842', 'L', 'Kpg. Juanda No. 675, Bima 82233, Babel'),
(11, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Tantri Olivia Nasyidah', '0780 8721 936', '0507 4766 0191', 'L', 'Psr. Laksamana No. 716, Tanjung Pinang 62864, Kaltim'),
(12, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Irma Novitasari', '(+62) 347 3701 582', '0576 9105 037', 'L', 'Jr. B.Agam Dlm No. 141, Bitung 79450, Kalsel'),
(13, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Ratna Astuti', '0656 0311 228', '0826 0657 942', 'L', 'Ds. Jend. A. Yani No. 586, Salatiga 33237, Kaltara'),
(14, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Jelita Iriana Prastuti', '0763 5200 262', '0390 5558 6843', 'L', 'Dk. Pattimura No. 680, Administrasi Jakarta Timur 50869, Kalbar'),
(15, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Ika Hartati', '(+62) 580 3181 908', '(+62) 784 4469 747', 'L', 'Dk. Kali No. 540, Batu 16843, Aceh'),
(16, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Gina Maryati', '0394 3675 2254', '0223 9328 1565', 'L', 'Ds. Sutoyo No. 906, Langsa 83041, Sumbar'),
(17, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Jinawi Manullang', '(+62) 580 2433 686', '(+62) 818 5684 2053', 'L', 'Jr. Abdullah No. 233, Surabaya 74575, Gorontalo'),
(18, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Nova Nasyidah S.Ked', '(+62) 983 4753 883', '(+62) 230 7355 8042', 'L', 'Jr. Imam Bonjol No. 995, Cilegon 92895, Jateng'),
(19, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Hardana Pratama S.I.Kom', '(+62) 992 4751 1030', '021 9978 7975', 'L', 'Dk. PHH. Mustofa No. 785, Manado 59748, Jabar'),
(20, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Ismail Firmansyah', '0573 1474 0964', '020 6216 2806', 'L', 'Kpg. M.T. Haryono No. 425, Palu 83242, Sulteng'),
(21, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Uchita Eli Suryatmi M.Kom.', '(+62) 28 0687 438', '(+62) 314 1019 2021', 'L', 'Ki. Bakau Griya Utama No. 495, Tebing Tinggi 97984, Riau'),
(22, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Salimah Hariyah S.H.', '0923 0926 637', '(+62) 229 6588 631', 'L', 'Gg. Yoga No. 210, Makassar 66705, Bali'),
(23, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Tari Maryati', '(+62) 519 5876 623', '(+62) 25 3116 330', 'L', 'Psr. Bakau No. 489, Dumai 82101, Papua'),
(24, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Galih Drajat Saptono', '(+62) 209 2951 0020', '(+62) 29 4201 387', 'L', 'Ds. Rajiman No. 59, Banjarbaru 85816, Bengkulu'),
(25, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Ellis Chelsea Agustina', '0964 6698 321', '(+62) 383 8434 020', 'L', 'Ki. Basuki No. 604, Yogyakarta 70948, Sumut'),
(26, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Natalia Rahayu', '(+62) 762 7459 158', '(+62) 566 5474 0936', 'L', 'Gg. Abdullah No. 276, Manado 49425, Aceh'),
(27, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Emas Wardaya Nababan', '(+62) 709 3664 390', '0987 9764 0891', 'L', 'Psr. Padang No. 298, Probolinggo 91912, Babel'),
(28, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Luwes Dodo Siregar', '(+62) 888 129 745', '(+62) 792 5966 2951', 'L', 'Gg. Bahagia  No. 723, Tasikmalaya 84076, Kalbar'),
(29, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Daliman Hidayat', '0203 1354 562', '0842 9942 123', 'L', 'Ds. Bak Mandi No. 124, Bau-Bau 29704, Sumut'),
(30, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Legawa Widodo', '(+62) 305 5495 3755', '(+62) 937 2102 6771', 'L', 'Gg. Krakatau No. 917, Jambi 32856, Pabar'),
(31, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Eva Ade Safitri M.Farm', '0413 6109 747', '0215 4005 178', 'L', 'Psr. Pacuan Kuda No. 126, Binjai 46357, Bengkulu'),
(32, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Gawati Farida', '(+62) 253 6240 4645', '(+62) 479 4968 127', 'L', 'Gg. Balikpapan No. 612, Subulussalam 88673, Bali'),
(33, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Edi Galang Hakim M.M.', '024 4718 235', '(+62) 882 956 835', 'L', 'Kpg. Rumah Sakit No. 205, Kupang 29474, Lampung'),
(34, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Kenes Maheswara', '0416 5167 102', '0938 5951 7257', 'L', 'Kpg. Kiaracondong No. 322, Magelang 75543, Riau'),
(35, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Restu Laksmiwati', '022 9219 9309', '(+62) 909 8467 6385', 'L', 'Dk. Kebangkitan Nasional No. 109, Bandung 38432, Bengkulu'),
(36, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Omar Mansur S.IP', '0291 9767 674', '(+62) 629 8680 222', 'L', 'Jr. Nakula No. 726, Jambi 70125, NTT'),
(37, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Zelda Agustina', '(+62) 871 8309 692', '(+62) 23 0043 435', 'L', 'Ki. Baja No. 453, Palu 82371, Jatim'),
(38, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Kardi Galih Mandala', '0698 3747 7933', '0980 2106 168', 'L', 'Ki. Gotong Royong No. 923, Samarinda 74295, Jatim'),
(39, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Bambang Narji Kurniawan', '025 9549 7800', '0424 2638 990', 'L', 'Dk. Jambu No. 907, Pangkal Pinang 35608, Bengkulu'),
(40, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Hartaka Gunawan', '0289 2449 538', '(+62) 261 0368 9590', 'L', 'Ki. Moch. Toha No. 791, Bandung 99019, Babel'),
(41, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Maya Utami', '0287 7921 946', '0708 0025 092', 'L', 'Gg. Flores No. 682, Singkawang 88934, Bengkulu'),
(42, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Upik Sitorus S.Pd', '0532 7985 123', '(+62) 460 3847 5001', 'L', 'Kpg. Salatiga No. 768, Madiun 37615, Kepri'),
(43, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Uchita Syahrini Rahayu', '0822 836 989', '029 0876 523', 'L', 'Ki. Bazuka Raya No. 251, Magelang 59697, Maluku'),
(44, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Argono Maryanto Thamrin S.H.', '0643 1326 354', '(+62) 657 6192 977', 'L', 'Psr. Yogyakarta No. 844, Lhokseumawe 91895, Sumut'),
(45, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Radika Simbolon S.Pt', '0614 9629 6840', '(+62) 953 0644 1184', 'L', 'Psr. Supomo No. 843, Subulussalam 96020, Sultra'),
(46, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Daniswara Simbolon', '0585 3425 7409', '0493 4503 717', 'L', 'Psr. Sam Ratulangi No. 139, Padangsidempuan 75479, Lampung'),
(47, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Nabila Handayani', '(+62) 378 5123 6839', '0973 0656 956', 'L', 'Psr. Dewi Sartika No. 855, Banda Aceh 18059, Sulteng'),
(48, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Caturangga Mahmud Iswahyudi', '0334 0988 480', '0789 7668 055', 'L', 'Dk. Ters. Buah Batu No. 820, Bandung 82789, Papua'),
(49, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Genta Zulaika S.Kom', '(+62) 327 8155 425', '(+62) 725 8879 367', 'L', 'Dk. Madrasah No. 565, Jayapura 13676, Sumut'),
(50, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Septi Oktaviani', '0268 9910 304', '(+62) 790 1228 912', 'L', 'Gg. Sutoyo No. 568, Cirebon 45778, Banten'),
(51, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Clara Utami', '0431 2497 612', '(+62) 806 1930 900', 'L', 'Dk. Barasak No. 587, Kendari 69159, Sumbar'),
(52, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Elvin Siregar S.Pd', '0721 9093 8036', '023 0654 012', 'L', 'Kpg. Teuku Umar No. 542, Metro 76944, Pabar'),
(53, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Karna Rajasa', '(+62) 897 3921 514', '0695 1243 1894', 'L', 'Kpg. Kyai Mojo No. 299, Tebing Tinggi 60577, NTB'),
(54, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Ghaliyati Zulaika S.IP', '(+62) 983 8315 655', '0847 008 562', 'L', 'Psr. Perintis Kemerdekaan No. 507, Payakumbuh 38625, NTB'),
(55, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Sari Utami', '(+62) 968 5259 287', '0673 5238 885', 'L', 'Jln. B.Agam Dlm No. 684, Bogor 77953, Malut'),
(56, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Shania Kusmawati', '0435 7478 3391', '0604 4493 413', 'L', 'Kpg. Bakin No. 136, Tangerang 18856, Kalbar'),
(57, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Elvin Maryadi', '(+62) 826 5929 2809', '0937 4592 584', 'L', 'Gg. Baung No. 499, Ternate 19792, Kepri'),
(58, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Lantar Wadi Suwarno', '(+62) 914 0693 289', '(+62) 833 1648 011', 'L', 'Ds. Sugiono No. 610, Sorong 22554, Aceh'),
(59, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Julia Farida', '(+62) 411 2161 8719', '0294 7103 8495', 'L', 'Gg. Katamso No. 822, Kediri 99285, Sulbar'),
(60, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Yuliana Hana Pudjiastuti', '(+62) 853 550 173', '0721 4657 969', 'L', 'Ds. Babadan No. 845, Tangerang Selatan 51583, Kaltim'),
(61, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Mujur Permadi M.TI.', '(+62) 449 6977 6142', '(+62) 637 7928 902', 'L', 'Psr. Asia Afrika No. 242, Ternate 56310, Kaltara'),
(62, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Tomi Saputra', '021 9085 789', '(+62) 719 0249 0449', 'L', 'Jln. Adisucipto No. 184, Serang 81654, Jambi'),
(63, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Rahman Situmorang', '(+62) 25 3193 157', '0707 2943 7128', 'L', 'Jln. Bank Dagang Negara No. 617, Dumai 33288, Gorontalo'),
(64, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Gangsa Marpaung', '0727 4457 6478', '(+62) 21 3458 1823', 'L', 'Dk. Yogyakarta No. 400, Gorontalo 12355, Jabar'),
(65, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Hasan Cager Natsir', '0813 2679 510', '0473 7323 5594', 'L', 'Kpg. Basoka Raya No. 212, Tegal 98583, Riau'),
(66, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Yuni Wulandari M.Kom.', '(+62) 267 1360 797', '0699 9095 332', 'L', 'Psr. Taman No. 757, Batu 36035, Kaltara'),
(67, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Banara Karta Dongoran', '0639 6178 462', '(+62) 719 5711 970', 'L', 'Jln. Kyai Mojo No. 700, Palopo 49082, Babel'),
(68, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Warji Sihotang', '0887 698 915', '(+62) 435 2372 0171', 'L', 'Jln. Basmol Raya No. 98, Probolinggo 24284, Babel'),
(69, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Darmaji Mulyono Pradipta S.Kom', '(+62) 573 4309 7900', '0898 729 439', 'L', 'Dk. Yap Tjwan Bing No. 379, Palopo 95708, Pabar'),
(70, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Prasetya Siregar S.Gz', '(+62) 461 4429 504', '(+62) 338 1423 3179', 'L', 'Dk. Ujung No. 432, Banda Aceh 41924, Sultra'),
(71, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Darman Maheswara', '(+62) 812 6909 197', '(+62) 251 5186 7708', 'L', 'Ki. Jend. Sudirman No. 724, Jambi 49648, Sumut'),
(72, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Laila Hafshah Widiastuti', '0893 499 808', '(+62) 336 2273 262', 'L', 'Kpg. Thamrin No. 361, Tanjung Pinang 87076, Jambi'),
(73, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Suci Sudiati', '0672 1825 0053', '028 2589 7700', 'L', 'Gg. Rumah Sakit No. 852, Madiun 61734, Kepri'),
(74, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Rina Hastuti S.E.I', '(+62) 221 0867 3765', '0846 968 124', 'L', 'Jr. Achmad Yani No. 322, Semarang 51814, Sulsel'),
(75, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Empluk Jaka Dongoran S.Pd', '0888 4705 2456', '0708 9548 0554', 'L', 'Gg. Wahid Hasyim No. 791, Semarang 78516, Aceh'),
(76, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Emong Setiawan', '(+62) 423 8553 9255', '025 2349 3333', 'L', 'Kpg. Kyai Gede No. 494, Batam 13014, Jatim'),
(77, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Candrakanta Hidayat M.TI.', '(+62) 865 8893 8155', '(+62) 727 1765 414', 'L', 'Ds. Gardujati No. 434, Pasuruan 87869, DIY'),
(78, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Dacin Adinata Saputra M.Kom.', '(+62) 749 2056 8244', '0898 3535 812', 'L', 'Jln. Hang No. 146, Malang 84046, Sulsel'),
(79, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Tania Farida', '0365 4039 621', '0853 409 959', 'L', 'Ki. Rajiman No. 987, Sungai Penuh 29660, Bali'),
(80, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Tari Kania Mayasari S.Sos', '(+62) 842 1564 4137', '(+62) 348 8209 3989', 'L', 'Dk. Flora No. 903, Semarang 80148, Jatim'),
(81, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Gandi Prasetya', '(+62) 705 1554 252', '0250 6899 210', 'L', 'Jr. Thamrin No. 511, Administrasi Jakarta Pusat 82133, Babel'),
(82, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Diah Rahayu', '0938 6207 3457', '(+62) 789 2897 4978', 'L', 'Jr. Wora Wari No. 319, Administrasi Jakarta Pusat 46546, Jateng'),
(83, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Galar Ajiono Hutapea S.IP', '(+62) 839 658 533', '(+62) 908 3098 598', 'L', 'Psr. Raden No. 429, Sorong 26601, Sulut'),
(84, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Radika Marpaung', '0674 6321 9136', '(+62) 268 2184 388', 'L', 'Ds. Bambon No. 451, Tangerang Selatan 70558, Kalteng'),
(85, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Vicky Zizi Usada', '(+62) 418 9766 622', '(+62) 671 9839 2895', 'L', 'Ds. Elang No. 731, Sabang 68794, Sumsel'),
(86, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Melinda Rahayu', '0426 5795 266', '(+62) 753 8680 931', 'L', 'Jln. Soekarno Hatta No. 994, Palopo 25619, Sulbar'),
(87, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Cengkir Sihombing', '0291 7487 319', '(+62) 902 5475 404', 'L', 'Jr. Laksamana No. 367, Mojokerto 28871, Sumbar'),
(88, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Gaman Maulana', '0407 9211 9133', '029 3025 816', 'L', 'Ds. Soekarno Hatta No. 359, Magelang 79766, Kalteng'),
(89, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Najwa Farida', '(+62) 859 182 517', '(+62) 946 7206 1443', 'L', 'Jln. Ekonomi No. 37, Gorontalo 26628, Kalteng'),
(90, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Cindy Ajeng Prastuti', '0714 1421 1998', '0501 5658 107', 'L', 'Jr. Perintis Kemerdekaan No. 67, Cirebon 72866, DIY'),
(91, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Cawuk Dongoran', '0619 3749 5342', '(+62) 730 1790 2096', 'L', 'Gg. Bah Jaya No. 323, Singkawang 64213, Bengkulu'),
(92, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Muhammad Najmudin M.Farm', '023 6558 429', '(+62) 707 1221 956', 'L', 'Kpg. Thamrin No. 134, Pangkal Pinang 38636, NTB'),
(93, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Teguh Wibisono', '0352 6102 328', '0937 6038 7738', 'L', 'Ki. Pahlawan No. 405, Magelang 59769, DKI'),
(94, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Banara Prasasta', '(+62) 363 3805 148', '0672 0989 7891', 'L', 'Dk. Aceh No. 84, Bandung 24835, Pabar'),
(95, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Digdaya Prayoga Suryono M.Kom.', '(+62) 287 0582 5965', '(+62) 378 9830 166', 'L', 'Ki. Raden No. 605, Tegal 79019, Kalbar'),
(96, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Fitria Yunita Melani', '0741 2037 982', '0341 8350 225', 'L', 'Ki. Gading No. 719, Bitung 60324, Kepri'),
(97, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Raharja Budiman M.Pd', '(+62) 272 6264 865', '0675 9807 006', 'L', 'Jr. Gremet No. 705, Tegal 92764, Sulsel'),
(98, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Umar Liman Budiyanto M.M.', '0907 1685 087', '027 8117 7057', 'L', 'Jln. Pattimura No. 112, Denpasar 84201, Lampung'),
(99, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Zalindra Suartini', '(+62) 941 1022 4528', '(+62) 990 3694 859', 'L', 'Psr. Taman No. 560, Singkawang 62133, Pabar'),
(100, '2023-10-15 19:13:11', '2023-10-15 19:13:11', 'Galang Ardianto', '0527 2591 7585', '0750 9702 780', 'L', 'Gg. Yohanes No. 238, Bontang 45335, Kalsel');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `presiden`
--
ALTER TABLE `presiden`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `presiden`
--
ALTER TABLE `presiden`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `laravel10`
--
CREATE DATABASE IF NOT EXISTS `laravel10` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel10`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `administrators`
--

CREATE TABLE `administrators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama_barang`, `deskripsi`, `harga`, `stok`, `gambar`, `created_at`, `updated_at`) VALUES
(2, 'Surya', 'aa', 1000.00, 20, 'https://asset-2.tstatic.net/medan/foto/bank/images/Contoh-gambar.jpg', '2023-12-08 07:14:45', '2023-12-08 07:14:45'),
(3, 'RoG Phone II', 'keren kang', 750.00, 700, 'https://cdn.antaranews.com/cache/1200x800/2020/07/22/akosa.png', '2023-12-08 21:43:09', '2023-12-08 21:43:09'),
(5, 'iPhone 15 Pro', 'gacor', 980.00, 2000, 'https://cdn.eraspace.com/media/catalog/product/a/p/apple_iphone_15_pro_natural_titanium_1_4.jpg', '2023-12-08 21:44:53', '2023-12-08 21:44:53'),
(7, 'Kaos Lois Voitton', 'keren', 30.00, 90000, 'https://down-id.img.susercontent.com/file/f66e469c42dda178c97c11218d7b45e3', '2023-12-08 22:06:34', '2023-12-08 22:06:34'),
(8, 'Huawei Band 8', 'Baru', 67.00, 1200, 'https://cworld.id/wp-content/uploads/2023/06/ezgif-2-9d19aaba45.jpg', '2023-12-08 22:11:02', '2023-12-08 22:11:02'),
(9, 'kamera', 'aaa', 900.00, 90, 'https://multimedia.instiperjogja.ac.id/assets/images/blog/1.jpg', '2023-12-10 19:24:37', '2023-12-10 19:24:37'),
(10, 'sempurna', '.', 25.00, 90, 'https://i.scdn.co/image/ab67616d0000b273408d2512a139b997eb41bd42', '2023-12-10 19:48:41', '2023-12-10 19:48:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(36, '2014_10_12_000000_create_users_table', 1),
(37, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(38, '2019_08_19_000000_create_failed_jobs_table', 1),
(39, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(40, '2023_09_26_010652_create_warga_table', 1),
(41, '2014_10_12_100000_create_password_resets_table', 2),
(42, '2023_11_21_005640_create_administrators_table', 2),
(43, '2023_12_08_044033_add_role_to_users_table', 3),
(44, '2023_12_08_080640_create_barangs_table', 4),
(45, '2023_12_08_135823_create_barang_table', 5),
(48, '2023_12_09_061345_create_carts_table', 6),
(51, '2023_12_09_105231_create_pesanan_table', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('zelion869@gmail.com', '$2y$10$y4RTBbDF8ZMWkAaVEkNzMOa0IjDfirs6kJX7BU17Y8RCYjQ93aKNO', '2023-11-06 18:39:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `barang_id`, `jumlah`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 1, '2023-12-09 08:51:13', '2023-12-09 08:51:13'),
(2, 3, 1, 1, '2023-12-09 09:25:47', '2023-12-09 09:25:47'),
(3, 8, 4, 1, '2023-12-09 09:47:20', '2023-12-09 09:47:20'),
(4, 7, 1, 2, '2023-12-09 09:52:36', '2023-12-09 09:52:36'),
(5, 8, 1, 1, '2023-12-10 19:22:52', '2023-12-10 19:22:52'),
(6, 5, 2, 1, '2023-12-10 19:46:42', '2023-12-10 19:46:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'ZELION', 'zelion869@gmail.com', NULL, '$2y$10$4BC6zICjLxvSDZQXksR4FOmYZ9TaZw8haE3VwvSwkKMH75VR8m3K6', 'HZoJLnYPbMqP4vFQyCAVPV3ZpvzSYVrgpfAo1i0IroNOioaeTwgMOUsPfrTV', '2023-11-05 20:24:11', '2023-11-05 20:24:11', 'user'),
(2, 'nicole', 'nicole@gmail.com', NULL, '$2y$10$e5apN4lyLM0S0Yzhm/5hjuo.lEFnRQ6qpPCyJDXduRAu7.1Iiw5gu', NULL, '2023-12-07 21:47:23', '2023-12-07 21:47:23', 'user'),
(3, 'ncl', 'ncl@gmail.com', NULL, '$2y$10$7ppPKo/x1VumwWplumT.Me/wHvu4B26NbQPSJU8yiZtAVVlRu/7vu', NULL, '2023-12-07 21:50:11', '2023-12-07 21:50:11', 'user'),
(4, 'aku', 'aku@mail.com', NULL, '$2y$10$CYhz1ihdTIHeIS0T2p1K4eJSgZ2OZTYpmOI6BhF7Xd6X0wqgO9wgO', NULL, '2023-12-07 21:54:38', '2023-12-07 21:54:38', 'admin'),
(5, 'nicole', 'nik@gmail.com', NULL, '$2y$10$QUufO2UQxP..p0iefbo1nOuAWttW6fiNzW11/AXXreSVNFUefwjve', NULL, '2023-12-09 09:00:55', '2023-12-09 09:00:55', 'admin'),
(6, 'Jaswadi Wasita', 'widya.hariyah@example.net', '2023-12-10 20:49:04', '$2y$10$v3gzWFnpAWhFoXVW97CDRuZWDaFWWhpULF/Jb2gRIQphU0crlV4au', 'hCxiOkK3xU', '2023-12-10 20:49:05', '2023-12-10 20:49:05', 'user'),
(7, 'Saka Sinaga', 'prasetya.karimah@example.net', '2023-12-10 20:49:04', '$2y$10$Uq/w3g/Sb0AuZuNhCmJLEe7sXEXQXWdkTzrFGUhMz2Y98SwRoFdFa', 'teL8BeFtgo', '2023-12-10 20:49:05', '2023-12-10 20:49:05', 'user'),
(8, 'Vera Kamila Laksmiwati S.Kom', 'daliono.kusmawati@example.net', '2023-12-10 20:49:04', '$2y$10$16DL0Cdt3JPSsffYuwL2P.XI1B8MPpGcfUSwG6gz7WBzhjPpel4pW', 'AJMETGY3aw', '2023-12-10 20:49:05', '2023-12-10 20:49:05', 'user'),
(9, 'Indah Wastuti', 'hutagalung.amalia@example.org', '2023-12-10 20:49:04', '$2y$10$nkaHV13N7/nqfQ2QQ5ICte0Hsie0/xEHghrDiiRQX/ns/c16G4c1O', 'cZ4lS5hNvH', '2023-12-10 20:49:05', '2023-12-10 20:49:05', 'user'),
(10, 'Najam Mansur', 'jailani.reza@example.com', '2023-12-10 20:49:04', '$2y$10$pExAwJjvKbs4kDhIf16U/.MuAWlMFccdi.38TVs4C6K6rQSutRBAC', 'Awo7poR7fQ', '2023-12-10 20:49:05', '2023-12-10 20:49:05', 'user'),
(11, 'Ganda Kusumo', 'hendra.haryanto@example.com', '2023-12-10 20:49:04', '$2y$10$o4hmcJJkPKZnb7TNkDUPBOOFW/aIz8MWlqvXCc5G2ZXaCCadw78Fu', 'P5rcLlQqTF', '2023-12-10 20:49:05', '2023-12-10 20:49:05', 'user'),
(12, 'Jaeman Siregar', 'dabukke.jagaraga@example.com', '2023-12-10 20:49:04', '$2y$10$lkTGnU2d39XO638IxLg3Cu7Ejd.oQhmo7C4Q0qjUUSaLRafyZi0m2', 'IwQX12wE44', '2023-12-10 20:49:05', '2023-12-10 20:49:05', 'user'),
(13, 'Kenzie Hardiansyah M.Farm', 'adikara.rahmawati@example.net', '2023-12-10 20:49:04', '$2y$10$fBxF5JbEiiRsK5Cix8c.P.KTtZXogJDnAELBl4B8ra9AF.oWpKvMO', 'xu0ApGurfW', '2023-12-10 20:49:05', '2023-12-10 20:49:05', 'user'),
(14, 'Elvina Wastuti', 'agnes24@example.org', '2023-12-10 20:49:05', '$2y$10$WfqVl2mL3rFS0qVxp9BaMuBW.pUaNlBH6r4DUcfTSAEKeW2nqL2Ka', 'Iess7rFS8C', '2023-12-10 20:49:05', '2023-12-10 20:49:05', 'user'),
(15, 'Luluh Sihotang', 'jelita.mandasari@example.org', '2023-12-10 20:49:05', '$2y$10$adUpbUKr4NMj0AdNpcDDSOLN2XVlBW2b8ZSqPVh4yNriWQqx9X5C.', 'eWu32urX32', '2023-12-10 20:49:05', '2023-12-10 20:49:05', 'user'),
(16, 'Wawan Nrima Saragih M.Kom.', 'adiarja53@example.org', '2023-12-10 20:49:05', '$2y$10$tRsD1MMU5XCbs80FjWfxO..QtFh1MtSBiy.ZmcG5mZZaLyaBKPFU.', 'gO5J6VynDs', '2023-12-10 20:49:05', '2023-12-10 20:49:05', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `warga`
--

CREATE TABLE `warga` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `no_kk` varchar(255) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `warga`
--

INSERT INTO `warga` (`id`, `nama`, `nik`, `no_kk`, `jenis_kelamin`, `alamat`, `created_at`, `updated_at`) VALUES
(10, 'Purwa Marpaung', '(+62) 285 2746 2768', '0400 4035 5803', 'L', 'Ki. Thamrin No. 12, Bau-Bau 89366, Lampung', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(11, 'Agus Saputra S.Pt', '(+62) 336 3553 121', '(+62) 436 9709 582', 'L', 'Ds. Padma No. 765, Batam 48087, Riau', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(12, 'Digdaya Atmaja Nashiruddin', '(+62) 673 3622 4578', '(+62) 698 2169 8349', 'L', 'Ki. Ters. Jakarta No. 195, Tasikmalaya 36450, Kalsel', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(13, 'Cornelia Lailasari', '(+62) 657 1569 676', '023 9285 5133', 'L', 'Dk. Ters. Pasir Koja No. 649, Padang 41976, Kalteng', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(14, 'Pangeran Siregar', '(+62) 674 7966 423', '0299 8038 575', 'L', 'Kpg. Baranang Siang No. 551, Medan 51218, Sultra', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(15, 'Lintang Uchita Lestari', '0748 1571 9556', '(+62) 26 0694 3343', 'L', 'Jr. Basudewo No. 913, Kupang 34424, Riau', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(16, 'Tina Oliva Hariyah', '0904 6113 8338', '(+62) 668 9214 866', 'L', 'Dk. Babah No. 829, Tidore Kepulauan 97799, Sumut', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(17, 'Makara Gunawan', '(+62) 422 3324 108', '0380 7877 572', 'L', 'Jln. Banda No. 743, Pekalongan 73293, NTT', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(18, 'Pia Hassanah', '0917 0334 834', '(+62) 786 6597 4191', 'L', 'Gg. Bazuka Raya No. 26, Pematangsiantar 89011, Sulut', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(19, 'Ophelia Gawati Namaga M.Ak', '(+62) 544 6487 5880', '0318 1618 007', 'L', 'Ds. Wahidin Sudirohusodo No. 213, Banjarmasin 58726, Sumbar', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(20, 'Gading Maheswara', '(+62) 368 4426 737', '(+62) 800 475 051', 'L', 'Gg. Baranang No. 905, Binjai 19065, NTB', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(21, 'Kurnia Mustofa', '(+62) 989 0417 345', '0244 4696 285', 'L', 'Kpg. Umalas No. 289, Parepare 30447, Banten', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(22, 'Cawuk Saputra', '0920 5125 652', '028 4159 7080', 'L', 'Dk. B.Agam 1 No. 230, Singkawang 31788, Jateng', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(23, 'Elvina Kuswandari', '0396 1366 161', '(+62) 962 7130 767', 'L', 'Ki. Thamrin No. 118, Palopo 87135, Kepri', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(24, 'Ganjaran Pranowo', '(+62) 28 9438 6713', '(+62) 864 223 594', 'L', 'Ds. Abang No. 306, Palu 20282, Kalsel', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(25, 'Azalea Suartini M.M.', '(+62) 25 7177 3177', '(+62) 302 2863 0490', 'L', 'Kpg. Gegerkalong Hilir No. 51, Jayapura 38464, Jambi', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(26, 'Heryanto Galang Mandala', '0752 8043 3390', '(+62) 591 2706 287', 'L', 'Jln. Baik No. 974, Cirebon 85546, Sumut', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(27, 'Kunthara Sihombing', '0896 7823 581', '(+62) 997 1780 7397', 'L', 'Ds. Baabur Royan No. 423, Subulussalam 61362, Kalsel', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(28, 'Puji Melani', '0421 5038 0544', '(+62) 408 4340 9757', 'L', 'Dk. Panjaitan No. 96, Jayapura 74006, Bali', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(29, 'Baktianto Haryanto', '(+62) 260 0661 456', '0979 0109 7146', 'L', 'Ki. Pasirkoja No. 5, Kendari 32301, Riau', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(30, 'Galar Saputra', '0878 583 903', '0734 6650 9771', 'L', 'Jr. Nakula No. 185, Manado 11117, Jatim', '2023-10-08 20:32:51', '2023-10-08 20:32:51'),
(31, 'Umi Wulandari M.Pd', '(+62) 666 6234 648', '0861 394 111', 'L', 'Ds. Wora Wari No. 50, Serang 94508, Pabar', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(32, 'Lukita Dongoran', '(+62) 229 2924 336', '0244 1414 8347', 'L', 'Dk. Surapati No. 55, Pontianak 50266, Sumut', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(33, 'Rahmat Kadir Tamba M.M.', '(+62) 816 876 288', '(+62) 419 7443 728', 'L', 'Kpg. Jambu No. 840, Salatiga 34672, Sulbar', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(34, 'Yuliana Aryani', '0925 9818 751', '0512 6902 4587', 'L', 'Kpg. Rajawali Barat No. 32, Yogyakarta 34915, Jambi', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(35, 'Puspa Alika Winarsih', '(+62) 949 3332 843', '0989 4645 1558', 'L', 'Jln. Sutan Syahrir No. 243, Cirebon 32905, Kepri', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(36, 'Mulya Dongoran', '0363 0954 1791', '0489 9286 528', 'L', 'Ki. Fajar No. 22, Bekasi 10883, Kaltim', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(37, 'Mutia Zulaika S.Sos', '0608 2723 0800', '(+62) 257 0591 932', 'L', 'Gg. Basudewo No. 944, Pasuruan 18903, Sulut', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(38, 'Purwanto Kenari Prabowo', '0882 0808 700', '0277 7329 4109', 'L', 'Gg. Umalas No. 998, Palembang 26916, Riau', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(39, 'Nova Rahayu', '(+62) 786 6357 982', '(+62) 964 9431 042', 'L', 'Ds. K.H. Maskur No. 715, Blitar 23082, Papua', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(40, 'Prayogo Manullang S.Farm', '(+62) 807 9224 2387', '(+62) 448 5395 5809', 'L', 'Kpg. Kebonjati No. 940, Salatiga 98301, Jambi', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(41, 'Lulut Tamba', '0289 5114 2858', '(+62) 29 4260 592', 'P', '112', '2023-10-08 20:33:29', '2023-10-29 19:39:31'),
(42, 'Kasiyah Hastuti S.Ked', '020 9889 466', '(+62) 361 3515 416', 'L', 'Dk. Daan No. 23, Mojokerto 53814, Maluku', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(43, 'Wawan Prasasta', '0885 397 815', '0269 1876 8519', 'L', 'Kpg. Padma No. 942, Parepare 55923, Sulut', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(44, 'Jaeman Oman Mandala', '(+62) 429 1311 448', '(+62) 304 9220 923', 'L', 'Psr. B.Agam 1 No. 522, Tangerang Selatan 33856, Sulut', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(45, 'Padma Hastuti', '0701 4030 3163', '0590 0633 931', 'L', 'Kpg. Bakaru No. 163, Administrasi Jakarta Utara 20360, Sulsel', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(46, 'Koko Dasa Hardiansyah', '0248 7587 195', '(+62) 204 5479 853', 'L', 'Jln. Reksoninten No. 437, Palembang 24044, DKI', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(47, 'Darmana Dimaz Utama', '(+62) 698 5647 3407', '(+62) 566 2839 9776', 'L', 'Ki. Kusmanto No. 14, Cirebon 49352, Kepri', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(48, 'Elvina Yuniar', '029 6156 6265', '(+62) 591 4994 359', 'L', 'Ds. Bah Jaya No. 806, Banjar 14887, Kalsel', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(49, 'Karya Prakasa', '0334 9977 738', '(+62) 515 6237 1872', 'L', 'Jr. Ketandan No. 42, Ternate 70660, Riau', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(50, 'Slamet Rajata', '0273 5759 929', '(+62) 722 7077 6994', 'L', 'Kpg. Sutarjo No. 947, Pangkal Pinang 15497, Kalteng', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(51, 'Putri Paulin Safitri S.Sos', '(+62) 209 7207 113', '(+62) 310 8611 8014', 'L', 'Psr. Soekarno Hatta No. 274, Batu 19068, Jatim', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(52, 'Chelsea Titin Handayani M.TI.', '0954 2641 6453', '(+62) 996 0926 792', 'L', 'Jr. Abdul No. 13, Surakarta 61940, Kalbar', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(53, 'Asman Simbolon', '0904 9228 347', '0886 1343 439', 'L', 'Psr. Baranang Siang Indah No. 250, Tegal 74683, Lampung', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(54, 'Hasta Ganda Kusumo', '0226 5641 458', '(+62) 222 1779 3819', 'L', 'Dk. Gajah No. 933, Probolinggo 49289, Sumut', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(55, 'Halim Halim', '(+62) 590 2390 8867', '(+62) 357 6730 2734', 'L', 'Dk. Hang No. 717, Tegal 21313, Papua', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(56, 'Saiful Kusumo', '0875 9256 988', '(+62) 720 2973 4898', 'L', 'Dk. Haji No. 580, Tual 87321, Aceh', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(57, 'Garang Gamblang Santoso S.Farm', '0632 0946 461', '0571 4203 4811', 'L', 'Jln. Asia Afrika No. 734, Salatiga 44778, NTB', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(58, 'Purwanto Sitompul', '(+62) 826 2790 050', '(+62) 886 0335 917', 'L', 'Ds. Katamso No. 552, Metro 10643, Sulbar', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(59, 'Bakti Prasasta S.T.', '0627 2557 9057', '(+62) 839 311 037', 'L', 'Ki. Kartini No. 332, Parepare 45770, DKI', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(60, 'Iriana Safitri', '(+62) 557 9735 6375', '(+62) 426 1786 6018', 'L', 'Ds. Merdeka No. 528, Subulussalam 24581, Riau', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(61, 'Ghani Mustofa', '(+62) 844 101 510', '(+62) 977 0950 1867', 'L', 'Dk. Acordion No. 659, Sungai Penuh 79311, Sulteng', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(62, 'Aisyah Yulianti', '(+62) 253 6766 4266', '0847 327 103', 'L', 'Ki. Sugiono No. 933, Probolinggo 69409, Kaltara', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(63, 'Ade Handayani S.Sos', '0291 5817 4621', '0889 123 865', 'L', 'Jr. Honggowongso No. 152, Pematangsiantar 17962, Riau', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(64, 'Qori Zamira Winarsih', '(+62) 312 7110 585', '0968 7906 988', 'L', 'Gg. Perintis Kemerdekaan No. 780, Palopo 62723, Aceh', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(65, 'Hesti Violet Utami', '0856 441 861', '0766 1634 212', 'L', 'Jr. Orang No. 100, Administrasi Jakarta Timur 16096, Pabar', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(66, 'Joko Anggriawan', '(+62) 447 7427 4605', '0215 5225 0310', 'L', 'Dk. R.E. Martadinata No. 941, Jambi 22738, Kepri', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(67, 'Sakti Prakasa', '0929 5290 5993', '(+62) 456 3213 3072', 'L', 'Jln. Ters. Jakarta No. 313, Bima 41850, Sulteng', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(68, 'Cici Utami', '(+62) 272 7996 100', '0333 3244 841', 'L', 'Ds. Moch. Ramdan No. 957, Mojokerto 84623, Bali', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(69, 'Purwanto Marbun', '0739 3396 9281', '0632 8934 8553', 'L', 'Jln. Wahidin No. 203, Solok 37482, Papua', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(70, 'Amalia Aryani', '(+62) 651 1375 902', '(+62) 247 9325 627', 'L', 'Kpg. Dewi Sartika No. 87, Serang 67005, Jambi', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(71, 'Suci Maya Yuniar', '0868 467 620', '0847 0902 535', 'L', 'Psr. Pasteur No. 474, Payakumbuh 65385, Riau', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(72, 'Gamanto Tasnim Mansur', '(+62) 993 1539 9229', '0975 9534 458', 'L', 'Ki. Agus Salim No. 754, Kupang 87763, Jateng', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(73, 'Hilda Nuraini', '(+62) 778 0959 1259', '0897 0950 131', 'L', 'Dk. Ters. Kiaracondong No. 709, Bau-Bau 30789, Kalbar', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(74, 'Luwes Situmorang', '(+62) 486 5303 0733', '(+62) 943 4912 9215', 'L', 'Ds. Sugiyopranoto No. 859, Banda Aceh 82407, Bali', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(75, 'Tri Habibi S.Pt', '(+62) 971 7738 488', '(+62) 21 9064 160', 'L', 'Jr. Bara Tambar No. 220, Pekalongan 27972, Jatim', '2023-10-08 20:33:29', '2023-10-29 19:49:38'),
(76, 'Danuja Cawuk Narpati', '0897 264 248', '0581 7992 5215', 'L', 'Psr. Taman No. 111, Tarakan 27510, Lampung', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(77, 'Mala Mardhiyah S.T.', '(+62) 902 3301 415', '(+62) 23 5178 706', 'L', 'Jr. Nakula No. 803, Bandung 15574, Jateng', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(78, 'Aurora Yuniar', '(+62) 968 8297 8888', '(+62) 955 8249 400', 'L', 'Jr. Ujung No. 178, Pagar Alam 92151, Sumut', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(79, 'Siti Astuti M.M.', '0445 7280 2547', '0927 2381 7667', 'L', 'Gg. Rajiman No. 697, Pematangsiantar 22761, Pabar', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(80, 'Rizki Wacana', '0356 9585 089', '0419 9879 136', 'L', 'Jr. Halim No. 940, Administrasi Jakarta Timur 89163, Babel', '2023-10-08 20:33:29', '2023-10-08 20:33:29'),
(82, 'zelion', '0007', '12121', 'L', 'medan', '2023-10-22 20:11:42', '2023-10-22 20:11:42');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_barang_id_foreign` (`barang_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pesanan_barang_id_foreign` (`barang_id`),
  ADD KEY `pesanan_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `warga`
--
ALTER TABLE `warga`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `administrators`
--
ALTER TABLE `administrators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `warga`
--
ALTER TABLE `warga`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pesanan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `laravel_shoponline`
--
CREATE DATABASE IF NOT EXISTS `laravel_shoponline` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel_shoponline`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Jersey Bola', 'jersey-bola', '2019-03-02 17:06:05', '2019-03-02 17:06:05'),
(2, 'Jersey Basket', 'jersey-basket', '2019-03-02 17:06:11', '2019-03-02 17:06:11'),
(3, 'Sepatu Futsal', 'sepatu-futsal', '2019-03-02 17:06:16', '2019-03-02 17:06:16'),
(4, 'Handphone', 'handphone', '2019-03-02 17:06:29', '2019-03-02 17:06:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `confirms`
--

CREATE TABLE `confirms` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_order` varchar(191) NOT NULL DEFAULT 'NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `confirms`
--

INSERT INTO `confirms` (`id`, `user_id`, `order_id`, `image`, `created_at`, `updated_at`, `status_order`) VALUES
(1, 2, 1, '637839362.5364df0f88aaac995457673cc5d6b47a.jpg', '2019-03-02 17:35:34', '2019-03-02 17:36:11', 'dibayar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_21_181025_create_products_table', 1),
(4, '2018_12_21_181226_create_categories_table', 1),
(5, '2018_12_21_181849_add_fiel_category_id_to_product_table', 1),
(6, '2018_12_21_182345_create_orders_table', 1),
(7, '2018_12_21_183130_create_order__product_controllers_table', 1),
(8, '2018_12_22_115009_add_field_role_to_users_table', 1),
(9, '2018_12_22_200035_add_field_subtotal_to_order_product_table', 1),
(10, '2018_12_23_114605_create_confirms_table', 1),
(11, '2018_12_23_174258_add_field_status_order_to_confirms_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `receiver` varchar(191) NOT NULL,
  `address` text NOT NULL,
  `total_price` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` enum('belum bayar','menunggu verifikasi','dibayar','ditolak') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `receiver`, `address`, `total_price`, `date`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Rahma Aulia', 'Jalan Pagarsih Gg.Holili No.140 Blok 87', 480000, '2019-03-03', 'dibayar', '2019-03-02 17:32:55', '2019-03-02 17:36:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `qty`, `created_at`, `updated_at`, `subtotal`) VALUES
(1, 1, 13, 1, '2019-03-02 17:32:55', '2019-03-02 17:32:55', 120000.00),
(2, 1, 11, 1, '2019-03-02 17:32:55', '2019-03-02 17:32:55', 120000.00),
(3, 1, 9, 1, '2019-03-02 17:32:55', '2019-03-02 17:32:55', 120000.00),
(4, 1, 8, 1, '2019-03-02 17:32:55', '2019-03-02 17:32:55', 120000.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(191) NOT NULL,
  `status` enum('publish','draft') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `image`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Jersey Ac Milan', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 120000, 100, '/upload/products/jersey-ac-milan.png', 'publish', '2019-03-02 17:15:28', '2019-03-02 17:25:40', 1),
(3, 'Barcelona Away', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 120000, 100, '/upload/products/barcelona-away.jpg', 'publish', '2019-03-02 17:16:30', '2019-03-02 17:16:30', 1),
(4, 'Barcelona Keeper', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 120000, 100, '/upload/products/barcelona-keeper.jpg', 'publish', '2019-03-02 17:17:54', '2019-03-02 17:17:54', 1),
(5, 'Jersey Barcelona', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 120000, 100, '/upload/products/jersey-barcelona.jpg', 'publish', '2019-03-02 17:18:12', '2019-03-02 17:18:12', 1),
(6, 'Jersey Chelsea', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 120000, 100, '/upload/products/jersey-chelsea.jpg', 'publish', '2019-03-02 17:18:39', '2019-03-02 17:18:39', 1),
(7, 'Jersey Chelsea', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 120000, 100, '/upload/products/jersey-chelsea.jpg', 'publish', '2019-03-02 17:19:27', '2019-03-02 17:28:33', 1),
(8, 'Jersey City', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 120000, 100, '/upload/products/jersey-city.jpg', 'publish', '2019-03-02 17:19:45', '2019-03-02 17:19:45', 1),
(9, 'Jersey Dortmund', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 120000, 100, '/upload/products/jersey-dortmund.jpg', 'publish', '2019-03-02 17:20:01', '2019-03-02 17:20:01', 1),
(10, 'Jersey Juventus', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 120000, 100, '/upload/products/jersey-juventus.jpg', 'publish', '2019-03-02 17:20:52', '2019-03-02 17:20:52', 1),
(11, 'Jersey Madrid', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 120000, 100, '/upload/products/jersey-madrid.jpg', 'publish', '2019-03-02 17:21:11', '2019-03-02 17:21:11', 1),
(12, 'Jersey Monaco', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 120000, 100, '/upload/products/jersey-monaco.jpg', 'publish', '2019-03-02 17:21:45', '2019-03-02 17:21:45', 1),
(13, 'Jersey MU', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 120000, 99, '/upload/products/jersey-mu.jpg', 'publish', '2019-03-02 17:22:15', '2019-03-02 17:36:11', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','customer') NOT NULL DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'sheptian', 'sheptian@gmail.com', NULL, '$2y$10$N6t/MS0i0M6oEk8gODvWjeIY7e6QGJfcQHeRjDM7AeRTp0Z842f9q', '5R9FSCEexEJc12EGQXJ30tdJHtuMhjJKoxI9bwUyk3TDLZFhd5fnwN5BMwRO', '2019-03-02 17:04:23', '2019-03-02 17:04:23', 'admin'),
(2, 'rahma', 'rahma@gmail.com', NULL, '$2y$10$HfDhlVWo8YpsfIK9FP/LQOIolYmU5IGZU/9DPiGqn/rIkyb4SXhja', 'HVvVXgoRYZb4JJ1A5Z6B7EMn6llFgO7zb4vkDZ8nMjbS4qTgJLATmykd2GcL', '2019-03-02 17:32:28', '2019-03-02 17:32:28', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `confirms`
--
ALTER TABLE `confirms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `confirms_user_id_foreign` (`user_id`),
  ADD KEY `confirms_order_id_foreign` (`order_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `confirms`
--
ALTER TABLE `confirms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `confirms`
--
ALTER TABLE `confirms`
  ADD CONSTRAINT `confirms_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `confirms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `pendaftaran`
--
CREATE DATABASE IF NOT EXISTS `pendaftaran` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pendaftaran`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftar`
--

CREATE TABLE `pendaftar` (
  `id` int(12) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nisn` int(12) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `acc_id` int(12) DEFAULT NULL,
  `tanggal_lahir` varchar(20) DEFAULT NULL,
  `jurusan` enum('rpl','tkj','tja','dkv') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_baru`
--

CREATE TABLE `siswa_baru` (
  `id` int(12) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nisn` int(12) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `user_acc` int(12) DEFAULT NULL,
  `jurusan` enum('rpl','tkj','tja','dkv') DEFAULT NULL,
  `tanggal_lahir` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa_baru`
--

INSERT INTO `siswa_baru` (`id`, `name`, `nisn`, `alamat`, `nama_ayah`, `nama_ibu`, `tempat_lahir`, `user_acc`, `jurusan`, `tanggal_lahir`) VALUES
(1, 'Rhaditya Prastito', 9999991, 'medan', 'dodo', 'puan', 'medan', 2, 'rpl', '2006-08-14'),
(2, 'farhan', 1212111, 'medan', 'yusuf', 'puan', 'medan', 3, 'tkj', '2005-10-16'),
(3, 'josua', 121212, 'medan', 'narto', 'puan', 'medan', 1, 'rpl', '2023-11-15'),
(4, 'asri', 1111, 'medan', 'aaa', 'siti', 'medan', 4, 'dkv', '2023-11-09'),
(5, 'daffa', 9999991, 'medan', 'tito', 'puan', 'medan', 6, 'dkv', '2023-11-25'),
(6, 'jonathan', 1111, 'medan', 'dodo', 'puan', 'medan', 7, 'tja', '2023-11-25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(12) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` enum('1','2') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `level`) VALUES
(1, 'zelion', 'zelion_sm_', 'admin', '2'),
(2, 'Rhaditya Prastito', 'Rhaditya__', 'jawa', '1'),
(3, 'farhan', 'farhan', 'farhan', '1'),
(4, 'asri', 'asri', 'asri', '1'),
(5, 'daffa', 'daffa', 'daffa', '1'),
(6, 'daffa', 'dd', 'dd', '1'),
(7, 'jojo', 'jojo', 'jojo', '1'),
(8, 'zzzz', 'zza', 'zza', '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `acc_id` (`acc_id`);

--
-- Indeks untuk tabel `siswa_baru`
--
ALTER TABLE `siswa_baru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pendaftar`
--
ALTER TABLE `pendaftar`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `siswa_baru`
--
ALTER TABLE `siswa_baru`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD CONSTRAINT `pendaftar_ibfk_1` FOREIGN KEY (`acc_id`) REFERENCES `user` (`id`);
--
-- Database: `penjualan`
--
CREATE DATABASE IF NOT EXISTS `penjualan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `penjualan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL,
  `satuan` varchar(30) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga`, `satuan`, `stok`) VALUES
(1, 'ganja', 1000000.00, 'ons', 196),
(2, 'sabu', 20000000.00, 'ons', 19994);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detiltransaksi`
--

CREATE TABLE `detiltransaksi` (
  `id_detil_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `jumlah_barang` int(11) DEFAULT NULL,
  `total_harga` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detiltransaksi`
--

INSERT INTO `detiltransaksi` (`id_detil_transaksi`, `id_transaksi`, `id_barang`, `jumlah_barang`, `total_harga`) VALUES
(1, 1, 1, 2, 2000000.00),
(2, 1, 2, 3, 60000000.00),
(4, 2, 1, 1, 1000000.00),
(5, 3, 1, 1, 1000000.00),
(6, 3, 2, 3, 60000000.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `tanggal_transaksi` datetime DEFAULT current_timestamp(),
  `nama_pembeli` varchar(255) DEFAULT NULL,
  `hp_pembeli` int(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `tanggal_transaksi`, `nama_pembeli`, `hp_pembeli`) VALUES
(1, '2023-07-18 10:06:39', 'arya', 12123),
(2, '2023-10-08 21:16:10', 'Darwin', 1212),
(3, '2023-10-08 21:18:36', 'jeki', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `detiltransaksi`
--
ALTER TABLE `detiltransaksi`
  ADD PRIMARY KEY (`id_detil_transaksi`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `detiltransaksi`
--
ALTER TABLE `detiltransaksi`
  MODIFY `id_detil_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detiltransaksi`
--
ALTER TABLE `detiltransaksi`
  ADD CONSTRAINT `detiltransaksi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`),
  ADD CONSTRAINT `detiltransaksi_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"laravel\",\"table\":\"presiden\"},{\"db\":\"jualan\",\"table\":\"jualan\"},{\"db\":\"skkni\",\"table\":\"barang\"},{\"db\":\"laravel\",\"table\":\"migrations\"},{\"db\":\"laravel\",\"table\":\"password_reset_tokens\"},{\"db\":\"laravel\",\"table\":\"failed_jobs\"},{\"db\":\"penjualan\",\"table\":\"barang\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-10-09 03:24:24', '{\"Console\\/Mode\":\"show\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `project1`
--
CREATE DATABASE IF NOT EXISTS `project1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project1`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(12) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `birthdate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
--
-- Database: `rpl1`
--
CREATE DATABASE IF NOT EXISTS `rpl1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rpl1`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar`
--

CREATE TABLE `daftar` (
  `id` int(12) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') DEFAULT NULL,
  `asal_sekolah` varchar(255) DEFAULT NULL,
  `jurusan` enum('rpl','tkj','tja','mm') DEFAULT NULL,
  `tinggi_badan` int(11) DEFAULT NULL,
  `berat_badan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `daftar`
--

INSERT INTO `daftar` (`id`, `nama`, `alamat`, `jenis_kelamin`, `asal_sekolah`, `jurusan`, `tinggi_badan`, `berat_badan`) VALUES
(3, 'zelion', 'medan', 'laki-laki', 'telkum', 'rpl', 100, 48),
(4, 'Masukan nama kamu', 'Masukan alamat kamu', '', 'Masukan Asal sekolah kamu', '', 0, 0),
(5, 'josua', 'medan', 'perempuan', 'Masukan Asal sekolah kamu', '', 100, 70),
(6, 'Masukan nama kamu', 'Masukan alamat kamu', '', 'Masukan Asal sekolah kamu', '', 0, 0),
(7, 'Masukan nama kamu', 'Masukan alamat kamu', '', 'Masukan Asal sekolah kamu', '', 0, 0),
(8, 'Masukan nama kamu', 'Masukan alamat kamu', '', 'Masukan Asal sekolah kamu', '', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftar`
--
ALTER TABLE `daftar`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `sistemdaftar`
--
CREATE DATABASE IF NOT EXISTS `sistemdaftar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sistemdaftar`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftar`
--

CREATE TABLE `pendaftar` (
  `id` int(12) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nisn` int(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `acc_id` int(12) DEFAULT NULL,
  `tanggal_lahir` varchar(20) DEFAULT NULL,
  `jurusan` enum('rpl','tja','tkj','dkv') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_baru`
--

CREATE TABLE `siswa_baru` (
  `id` int(12) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nisn` int(12) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` varchar(255) DEFAULT NULL,
  `jurusan` enum('rpl','tja','tkj','dkv') DEFAULT NULL,
  `user_acc` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa_baru`
--

INSERT INTO `siswa_baru` (`id`, `name`, `nisn`, `alamat`, `nama_ayah`, `nama_ibu`, `tempat_lahir`, `tanggal_lahir`, `jurusan`, `user_acc`) VALUES
(14, 'jeki', 11, 'mdn', 'tito', 'puan', 'medan', '2023-11-25', 'tkj', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(12) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` enum('1','2') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `level`) VALUES
(7, 'zelion', 'zelion_sm_', 'admin', '2'),
(8, 'Rhaditya Prastito', 'Rhaditya__', 'jawa', '1'),
(9, 'jeki', 'jeki', 'jeki', '1'),
(10, 'darwin', 'darwin', 'darwin', '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `acc_id` (`acc_id`);

--
-- Indeks untuk tabel `siswa_baru`
--
ALTER TABLE `siswa_baru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pendaftar`
--
ALTER TABLE `pendaftar`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `siswa_baru`
--
ALTER TABLE `siswa_baru`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD CONSTRAINT `pendaftar_ibfk_1` FOREIGN KEY (`acc_id`) REFERENCES `user` (`id`);
--
-- Database: `skkni`
--
CREATE DATABASE IF NOT EXISTS `skkni` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `skkni`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(6) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `harga_barang` varchar(20) DEFAULT NULL,
  `gambar_barang` longblob DEFAULT NULL,
  `tipe_gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama_barang`, `harga_barang`, `gambar_barang`, `tipe_gambar`) VALUES
(4, 'nasi', '130000', 0x53637265656e73686f7420323032332d30382d3234203038333632352e706e67, NULL),
(6, 'batu', '100000', 0x53637265656e73686f7420323032332d30382d3234203038333632352e706e67, NULL),
(9, 'padi', '12000', 0x53637265656e73686f7420323032332d30382d3234203038333632352e706e67, NULL),
(15, 'minyak', '101', 0x53637265656e73686f7420323032332d30382d3234203038333632352e706e67, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `toko`
--
CREATE DATABASE IF NOT EXISTS `toko` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `toko`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` decimal(10,2) NOT NULL,
  `stok` int(11) NOT NULL,
  `kode_barang` varchar(255) DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 2),
(6, '2023_11_20_024130_create_barang_table', 3),
(7, '2023_11_21_010005_create_administrators_table', 4),
(8, '2023_11_21_012617_add_column_to_users_table', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'ZELION', 'zelion869@gmail.com', NULL, '$2y$12$7FfMbehWhiy.InD4LX3pK.YRu2A3BZNWkxe2iMSOTFGdDXgajD.0W', NULL, '2023-11-19 19:34:06', '2023-11-19 19:34:06', NULL),
(2, 'niccc', 'zelion70@gmail.com', NULL, '$2y$12$JKosEIXSWDnXsheRwFdErugCz29FY0LJKoOsLY.IDZ9pP5LgNedP6', NULL, '2023-11-20 18:24:54', '2023-11-20 18:24:54', NULL),
(3, 'zz', 'zelions7@gmail.com', NULL, '$2y$12$fmSe90RW0DLQ3D9nlAFfbu14..pOQrhFs.fiva6ptKxamD7.eZ8PS', NULL, '2023-11-20 18:28:53', '2023-11-20 18:28:53', NULL),
(4, 'aa', 'aaa@mail.com', NULL, '$2y$12$ztQDPOmzZ0GHCcGUTK/QPOmk/Cv93b7u4xLWwVVy6xxsKbOG2XpfC', NULL, '2023-11-20 18:34:07', '2023-11-20 18:34:07', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
