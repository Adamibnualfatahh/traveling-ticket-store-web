-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jun 2021 pada 14.47
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nomads`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/gallery/PZSQ0RPZ3QAbQNAy4V7xmzImN9TYKixISziNkrWC.jpg', NULL, '2021-01-04 19:50:43', '2021-01-05 17:52:32'),
(3, 2, 'assets/gallery/lEvno9iEJryxKXuEvX7LVlMxp2KPTayQ5Lbfww0U.jpg', NULL, '2021-01-05 17:52:17', '2021-01-05 17:52:17'),
(4, 9, 'assets/gallery/NJ1fG6FehLVYEs2FYCnp0bciduI081QFCzJ7YyDU.jpg', NULL, '2021-01-05 17:52:51', '2021-01-05 17:52:51'),
(5, 10, 'assets/gallery/3nzgxQ9rQPvHOsjtfJJaIu1tqX5URPavt9ABth3F.jpg', NULL, '2021-01-05 17:53:06', '2021-01-05 17:53:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_31_141229_create_travel_packages_table', 1),
(5, '2020_12_31_145632_create_gallaries_table', 2),
(6, '2020_12_31_150433_create_transactions_table', 3),
(7, '2020_12_31_152823_create_transactions_details_table', 4),
(8, '2021_01_01_122745_add_roles_field_to_users_table', 5),
(9, '2021_01_01_133705_add_username_field_to_users_table', 6),
(10, '2021_01_05_004719_create_galleries_table', 7),
(11, '2020_12_31_152823_create_transaction_details_table', 8),
(12, '2021_01_05_142602_create_transactions_table', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) DEFAULT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `user_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 190, 290, 'SUCCESS', NULL, '2021-01-05 14:29:19', '2021-01-05 08:22:40'),
(2, 0, 1, 0, 400, 'IN_CART', NULL, '2021-01-05 22:13:21', '2021-01-05 22:13:21'),
(3, 0, 1, 0, 400, 'IN_CART', NULL, '2021-01-05 22:21:11', '2021-01-05 22:21:11'),
(4, 0, 1, 0, 400, 'IN_CART', NULL, '2021-01-05 22:21:23', '2021-01-05 22:21:23'),
(5, 0, 1, 0, 400, 'IN_CART', NULL, '2021-01-05 22:22:11', '2021-01-05 22:22:11'),
(6, 0, 1, 0, 400, 'IN_CART', NULL, '2021-01-05 22:22:36', '2021-01-05 22:22:36'),
(7, 2, NULL, 0, 10000, 'IN_CART', NULL, '2021-01-06 06:31:26', '2021-01-06 06:31:26'),
(8, 2, NULL, 0, 10000, 'PENDING', NULL, '2021-01-06 06:32:05', '2021-01-06 06:32:50'),
(9, 2, NULL, 0, 10000, 'IN_CART', NULL, '2021-01-06 06:33:02', '2021-01-06 06:33:02'),
(10, 9, NULL, 0, 90, 'IN_CART', NULL, '2021-01-06 06:33:23', '2021-01-06 06:33:23'),
(11, 1, NULL, 0, 400, 'IN_CART', NULL, '2021-01-06 06:35:15', '2021-01-06 06:35:15'),
(12, 1, NULL, 0, 400, 'IN_CART', NULL, '2021-01-06 06:38:40', '2021-01-06 06:38:40'),
(13, 10, NULL, NULL, 2021, 'IN_CART', NULL, '2021-01-06 06:55:00', '2021-01-06 06:55:00'),
(14, 1, NULL, NULL, 400, 'PENDING', NULL, '2021-01-06 06:57:25', '2021-01-06 06:58:08'),
(15, 1, NULL, NULL, 400, 'IN_CART', NULL, '2021-01-06 06:59:01', '2021-01-06 06:59:01'),
(16, 10, NULL, NULL, 2021, 'IN_CART', NULL, '2021-01-06 06:59:50', '2021-01-06 06:59:50'),
(17, 1, NULL, NULL, 400, 'IN_CART', NULL, '2021-01-06 07:07:11', '2021-01-06 07:07:11'),
(18, 1, NULL, NULL, 400, 'IN_CART', NULL, '2021-01-06 07:09:36', '2021-01-06 07:09:36'),
(19, 2, NULL, NULL, 10000, 'IN_CART', NULL, '2021-01-06 18:03:24', '2021-01-06 18:03:24'),
(20, 1, NULL, NULL, 400, 'PENDING', NULL, '2021-01-06 18:40:06', '2021-01-06 18:40:52'),
(21, 9, NULL, NULL, 90, 'IN_CART', NULL, '2021-01-06 18:41:08', '2021-01-06 18:41:08'),
(22, 1, NULL, NULL, 400, 'IN_CART', NULL, '2021-01-22 17:59:49', '2021-01-22 17:59:49'),
(23, 1, NULL, NULL, 400, 'IN_CART', NULL, '2021-01-24 19:19:27', '2021-01-24 19:19:27'),
(24, 2, NULL, NULL, 10000, 'IN_CART', NULL, '2021-02-27 06:04:06', '2021-02-27 06:04:06'),
(25, 1, NULL, NULL, 400, 'IN_CART', NULL, '2021-04-29 06:54:48', '2021-04-29 06:54:48'),
(26, 1, NULL, NULL, 400, 'PENDING', NULL, '2021-04-29 06:56:54', '2021-04-29 06:57:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions_details`
--

CREATE TABLE `transactions_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactios_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Adam Ibnu', 'ID', 1, '2021-01-05', NULL, '2021-01-05 11:55:53', '2021-01-05 11:55:53'),
(5, 5, 'adam ibnu', 'ID', 0, '2027-01-06', NULL, '2021-01-05 22:22:11', '2021-01-05 22:22:11'),
(6, 6, 'adam ibnu', 'ID', 0, '2027-01-06', NULL, '2021-01-05 22:22:36', '2021-01-05 22:22:36'),
(7, 0, 'adam ibnu', 'ID', 0, '2026-01-06', NULL, '2021-01-06 06:32:05', '2021-01-06 06:32:05'),
(8, 0, 'adam ibnu', 'ID', 0, '2026-01-06', NULL, '2021-01-06 06:33:02', '2021-01-06 06:33:02'),
(9, 0, 'adam ibnu', 'ID', 0, '2026-01-06', NULL, '2021-01-06 06:33:23', '2021-01-06 06:33:23'),
(10, 0, 'adam ibnu', 'ID', 0, '2026-01-06', NULL, '2021-01-06 06:35:15', '2021-01-06 06:35:15'),
(11, 0, 'adam ibnu', 'ID', 0, '2026-01-06', NULL, '2021-01-06 06:38:40', '2021-01-06 06:38:40'),
(12, 0, 'adam ibnu', 'ID', 0, '2026-01-06', NULL, '2021-01-06 06:55:00', '2021-01-06 06:55:00'),
(13, 0, 'adam ibnu', 'ID', 0, '2026-01-06', NULL, '2021-01-06 06:57:25', '2021-01-06 06:57:25'),
(14, 0, 'adam ibnu', 'ID', 0, '2026-01-06', NULL, '2021-01-06 06:59:01', '2021-01-06 06:59:01'),
(15, 0, 'adam ibnu', 'ID', 0, '2026-01-06', NULL, '2021-01-06 06:59:50', '2021-01-06 06:59:50'),
(16, 0, 'alfatah11', 'ID', 0, '2026-01-06', NULL, '2021-01-06 07:09:36', '2021-01-06 07:09:36'),
(17, 0, 'alfatah11', 'ID', 0, '2026-01-07', NULL, '2021-01-06 18:03:24', '2021-01-06 18:03:24'),
(18, 0, 'alfatah11', 'ID', 0, '2026-01-07', NULL, '2021-01-06 18:40:06', '2021-01-06 18:40:06'),
(19, 0, 'alfatah11', 'ID', 0, '2026-01-07', NULL, '2021-01-06 18:41:08', '2021-01-06 18:41:08'),
(20, NULL, 'adam ibnu', 'ID', 0, '2026-04-29', NULL, '2021-04-29 06:56:54', '2021-04-29 06:56:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languange` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `languange`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'NUSA PENIDA', 'nusa-penida', 'BALI', 'Jalan jalan kepantai', 'TARIAN ADAT', 'indonesia and English', 'Traditional', '2021-02-06', '3D', 'open trip', 400, NULL, '2021-01-04 06:11:11', '2021-01-04 06:11:11'),
(2, 'PANTAI', 'pantai', 'BANYUMANIK', 'PIKNIK GERATIS RT/RW', 'PERANG', 'JOWO', 'JANGKRIK BAKAR', '2021-01-06', '325D', 'open trip', 10000, NULL, '2021-01-05 17:48:26', '2021-01-05 17:48:26'),
(9, 'TANGKUPAN KAPAL', 'tangkupan-kapal', 'BANDENG', 'KAPAL NJEMPALIK', 'LOPAT NYEBUR KAWAH GUNUNG', 'BATAVIAN LANGUAGE', 'SEBLACK', '2021-01-06', '1D', 'open trip', 90, NULL, '2021-01-05 17:50:21', '2021-01-05 17:50:21'),
(10, 'ALAM GHAIB', 'alam-ghaib', 'ALAM KUBUR', 'Piknik bersama dedemit sekitar', 'Tarian ocong golek', 'isyarat', 'Bunga melati', '2021-01-06', '2D', 'open trip', 2021, NULL, '2021-01-05 17:51:29', '2021-01-05 17:51:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
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
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

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
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transactions_details`
--
ALTER TABLE `transactions_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
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
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `transactions_details`
--
ALTER TABLE `transactions_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
