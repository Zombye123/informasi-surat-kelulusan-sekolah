-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Feb 2025 pada 02.54
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelulusan-laravel`
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_23_074325_create_students_table', 1),
(6, '2022_04_23_165731_create_webs_table', 1),
(7, '2022_04_24_132000_add_username_to_users', 1),
(8, '2022_04_24_150207_create_settings_table', 1),
(9, '2022_04_27_070016_create_schools_table', 1),
(10, '2022_04_30_065432_add_nama_ortu_to_students', 1);

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
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kop_logo_dinas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_nama_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_telepon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_pos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_nama_disdik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop_th_pelajaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_surat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_surat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pembuka_surat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penutup_surat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan_penandatangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_penandatangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nip_penandatangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `tanda_tangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `schools`
--

INSERT INTO `schools` (`id`, `kop_logo_dinas`, `kop_nama_sekolah`, `kop_alamat`, `kop_telepon`, `kop_pos`, `kop_website`, `kop_email`, `kop_nama_disdik`, `kop_th_pelajaran`, `nama_surat`, `no_surat`, `pembuka_surat`, `penutup_surat`, `jabatan_penandatangan`, `nama_penandatangan`, `nip_penandatangan`, `tempat`, `tanggal`, `tanda_tangan`, `created_at`, `updated_at`) VALUES
(1, 'provinsi.png', 'SMAN 1 KEREN', 'jl.kemana aja jadi sendiri juga gas namanya juga hidup', '085677667788', '16330', 'sman1keren.com', 'sman1keren@gmail.com', 'sman1keren@gmail.com', 'sman1keren@gmail.com', 'Surat Keterangan kelulusan', 'IV16/08/001', 'yang tertanda dibawah ini', 'Terimakasih', 'KEPALA SEKOLAH', 'ikhlas bahrudin', '1989988222822', 'Cianjur', '2025-02-17', 'ttd.png', '2025-02-17 07:14:46', '2025-02-17 07:14:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `status`, `date`, `time`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-02-17', '14:14:00', '2025-02-17 07:14:45', '2025-02-17 07:14:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nisn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ortu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_tgl_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_exam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `nisn`, `name`, `nama_ortu`, `tempat_tgl_lahir`, `no_exam`, `class`, `status`, `message`, `created_at`, `updated_at`) VALUES
(6, '12345568', 'BAHIT', 'iim', 'CIANJUR', '112234', '12 IPS 5', 2, 'ANDA DINYATAKAN TIDAK LULUS DARI SMA NEGERI 1 PARUNG', '2025-02-17 08:44:30', '2025-02-17 08:44:30'),
(7, '12345568', 'OBET', 'iim', 'CIANJUR', '112235', '12 IPS 5', 1, 'ANDA DINYATAKAN  LULUS DARI SMA NEGERI 1 PARUNG', '2025-02-17 08:44:30', '2025-02-17 08:44:30'),
(8, '12345568', 'TONO', 'iim', 'CIANJUR', '112236', '12 IPS 5', 1, 'ANDA DINYATAKAN  LULUS DARI SMA NEGERI 1 PARUNG', '2025-02-17 08:44:30', '2025-02-17 08:44:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `password_view`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin web', 'admin', 'admin@gmail.com', NULL, '$2y$10$V4T9wS81l6cyoNZTsELP/uW/4LNrShK/oAWZLXXE.odN9C7.WujQq', '12345678', NULL, '2025-02-17 07:14:46', '2025-02-17 07:14:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `webs`
--

CREATE TABLE `webs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `webs`
--

INSERT INTO `webs` (`id`, `title`, `logo`, `web_name`, `slide_1`, `slide_2`, `slide_3`, `footer`, `about`, `created_at`, `updated_at`) VALUES
(1, 'INFO KELULUSAN', 'web kelulusan SMA_logosekolah.jpeg', 'web kelulusan SMA', NULL, NULL, NULL, 'web kelulusan', 'WEBSITE INI DIBANGUN UNTUK PERSYARATAN KELULUSAN KERJA PRAKTEK', '2025-02-17 07:14:45', '2025-02-17 07:27:16');

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
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_password_view_unique` (`password_view`);

--
-- Indeks untuk tabel `webs`
--
ALTER TABLE `webs`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `webs`
--
ALTER TABLE `webs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
