-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2021 pada 14.01
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utm_connect`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `matrix_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`matrix_card`, `admin_year`, `created_at`, `updated_at`, `deleted_at`) VALUES
('m3matric', '2020', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `aspiration`
--

CREATE TABLE `aspiration` (
  `matrix_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted_on` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aspiration_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aspiration_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `division`
--

CREATE TABLE `division` (
  `division_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `event_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_category` enum('Sport','Academic','Arts or Music','Strategic Studies','Human Dev') COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_venue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted_on` date NOT NULL,
  `open_for` enum('Participants','Committee') COLLATE utf8mb4_unicode_ci NOT NULL,
  `closed_on` date NOT NULL,
  `event_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_date` date NOT NULL,
  `event_pic1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_pic2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_pic3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`event_id`, `event_title`, `event_category`, `event_venue`, `posted_on`, `open_for`, `closed_on`, `event_details`, `event_url`, `event_date`, `event_pic1`, `event_pic2`, `event_pic3`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'e1title', 'Sport', 'e1venue', '2021-03-03', 'Participants', '2021-04-04', 'e1details', 'https://form.typeform.com/to/bOOqUGlh?typeform-medium=embed-snippet', '2021-05-05', 'e1pic1.PNG', 'e1pic2.PNG', 'e1pic3.PNG', NULL, NULL, NULL),
(2, 'e2title', 'Academic', 'e2venue', '2021-10-10', 'Committee', '2021-11-11', 'e2details', 'https://form.typeform.com/to/sWBiD0dR?typeform-medium=embed-snippet', '2021-12-12', 'e2pic1.PNG', NULL, 'e2pic3.PNG', NULL, NULL, NULL),
(3, 'e3title', 'Human Dev', 'e3venue', '2022-04-04', 'Committee', '2022-05-05', 'e3details', 'https://form.typeform.com/to/KFeb422q?typeform-medium=embed-snippet', '2022-06-06', 'e3pic1.PNG', 'e3pic2.PNG', NULL, NULL, NULL, NULL),
(4, 'e4title', 'Arts or Music', 'e4venue', '2021-06-14', 'Committee', '2021-06-30', 'e4details123', 'https://form.typeform.com/to/bOOqUGlh?typeform-medium=embed-snippet', '2021-07-01', 'e4pic1.PNG', 'e4pic2.PNG', 'e4pic3.PNG', '2021-06-13 20:04:13', '2021-06-14 03:15:10', NULL);

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
-- Struktur dari tabel `feedback`
--

CREATE TABLE `feedback` (
  `matrix_card_feedback` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_on` date NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `feedback` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate_event` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `feedback`
--

INSERT INTO `feedback` (`matrix_card_feedback`, `comment_on`, `event_id`, `feedback`, `rate_event`, `created_at`, `updated_at`, `deleted_at`) VALUES
('m1matric', '2021-05-06', 1, 'feedback1', 5, NULL, NULL, NULL),
('m2matric', '2021-06-05', 1, 'asasas', 5, '2021-06-04 20:57:24', '2021-06-04 20:57:24', NULL),
('m3matric', '2021-05-08', 1, 'feedback2', 4, NULL, NULL, NULL),
('m4matric', '2021-05-07', 1, 'feedback3', 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `grant_access`
--

CREATE TABLE `grant_access` (
  `grant_id` bigint(20) UNSIGNED NOT NULL,
  `grant_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `grant_access`
--

INSERT INTO `grant_access` (`grant_id`, `grant_desc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'member', NULL, NULL, NULL),
(2, 'management', NULL, NULL, NULL),
(3, 'admin', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `management`
--

CREATE TABLE `management` (
  `management_matrix_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `management_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `management_role_id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `management`
--

INSERT INTO `management` (`management_matrix_card`, `management_year`, `management_role_id`, `division_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
('m2matric', '2020', 1, 'div1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `matrix_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` year(4) NOT NULL,
  `program_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_grant` bigint(20) UNSIGNED NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`matrix_card`, `email`, `password`, `name`, `batch`, `program_code`, `degree`, `address`, `access_grant`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
('m1matric', 'm1email@gmail.com', '$2y$10$WyBk86Ys48gqm/VSJZ92t.D7O2l4NtgwFKuajzfGAcbIEiv85CxJq', 'm1name', 2020, 'm1program_code', 'm1degree', 'm1address', 1, NULL, NULL, NULL, '2021-06-12 06:21:06', NULL),
('m2matric', 'm2email@gmail.com', '$2y$10$xn8dpxBHnbgP5aL1jLT7z.8grbEC.z1VQEOzIMk6u.aES7gMar/qO', 'm2name', 2020, 'm2program_code', 'm2degree', 'm2address', 2, NULL, NULL, NULL, NULL, NULL),
('m3matric', 'm3email@gmail.com', '$2y$10$K5u/jsjcelUoT6TUKeXMN..Q/jLa79mE3rs6fQ05mozOtLMRgcik.', 'm3name', 2020, 'm3program_code', 'm3degree', 'm3address', 3, NULL, NULL, NULL, NULL, NULL),
('m4matric', 'm4email@gmail.com', '$2y$10$0yuji2agnf3xkjzFykSjDuelnvtEleqVGDDKFLm.HpPIXhEiCErCS', 'm4name', 2020, 'm4program_code', 'm4degree', 'm4address', 1, NULL, NULL, NULL, '2021-06-12 06:11:20', NULL);

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
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2021_05_22_000000_create_program_table', 1),
(3, '2021_05_22_013000_create_grant_access_table', 1),
(4, '2021_05_22_013001_create_member_table', 1),
(5, '2021_05_22_013024_create_password_resets_table', 1),
(6, '2021_05_22_013025_create_admin_table', 1),
(7, '2021_05_22_013026_create_division_table', 1),
(8, '2021_05_22_013040_create_aspiration_table', 1),
(9, '2021_05_22_013116_create_event_table', 1),
(10, '2021_05_22_013138_create_feedback_table', 1),
(11, '2021_05_22_013139_create_role_table', 1),
(12, '2021_05_22_013140_create_management_table', 1),
(13, '2021_05_22_013503_create_news_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `news_category` enum('Sport','Academic','Arts or Music','Strategic Studies','Human Dev') COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted_on` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_pic1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_pic2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_pic3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `program`
--

CREATE TABLE `program` (
  `program_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `role_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`role_id`, `role_desc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'leader', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`matrix_card`);

--
-- Indeks untuk tabel `aspiration`
--
ALTER TABLE `aspiration`
  ADD PRIMARY KEY (`matrix_no`),
  ADD UNIQUE KEY `aspiration_division_name_unique` (`division_name`);

--
-- Indeks untuk tabel `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`division_name`);

--
-- Indeks untuk tabel `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`matrix_card_feedback`),
  ADD KEY `feedback_event_id_index` (`event_id`);

--
-- Indeks untuk tabel `grant_access`
--
ALTER TABLE `grant_access`
  ADD PRIMARY KEY (`grant_id`);

--
-- Indeks untuk tabel `management`
--
ALTER TABLE `management`
  ADD PRIMARY KEY (`management_matrix_card`),
  ADD KEY `management_management_role_id_index` (`management_role_id`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`matrix_card`),
  ADD UNIQUE KEY `member_email_unique` (`email`),
  ADD KEY `member_program_code_access_grant_index` (`program_code`,`access_grant`),
  ADD KEY `member_access_grant_foreign` (`access_grant`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD UNIQUE KEY `news_slug_unique` (`slug`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`program_code`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `event`
--
ALTER TABLE `event`
  MODIFY `event_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `grant_access`
--
ALTER TABLE `grant_access`
  MODIFY `grant_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `news_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `aspiration`
--
ALTER TABLE `aspiration`
  ADD CONSTRAINT `aspiration_division_name_foreign` FOREIGN KEY (`division_name`) REFERENCES `division` (`division_name`) ON UPDATE CASCADE,
  ADD CONSTRAINT `aspiration_matrix_no_foreign` FOREIGN KEY (`matrix_no`) REFERENCES `member` (`matrix_card`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback_matrix_card_feedback_foreign` FOREIGN KEY (`matrix_card_feedback`) REFERENCES `member` (`matrix_card`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `management`
--
ALTER TABLE `management`
  ADD CONSTRAINT `management_management_matrix_card_foreign` FOREIGN KEY (`management_matrix_card`) REFERENCES `member` (`matrix_card`) ON UPDATE CASCADE,
  ADD CONSTRAINT `management_management_role_id_foreign` FOREIGN KEY (`management_role_id`) REFERENCES `role` (`role_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
