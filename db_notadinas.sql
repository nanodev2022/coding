-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2022 at 08:45 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_notadinas`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `memos`
--

CREATE TABLE `memos` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kepada` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sifat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urgensi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perihal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tembusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lampiran` int(11) DEFAULT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `nomor_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int(11) NOT NULL,
  `upload_data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reff` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_11_08_082716_create_memos_table', 1),
(5, '2022_11_10_173038_create_role_aksess_table', 1),
(6, '2022_11_15_171253_create_strukturs_table', 1),
(7, '2022_11_15_180708_create_nodins_table', 1),
(8, '2022_11_23_142811_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nodins`
--

CREATE TABLE `nodins` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kepada` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pemeriksa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sifat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urgensi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perihal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tembusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lampiran` int(11) DEFAULT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `nomor_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor` int(11) NOT NULL,
  `upload_data` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reff` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles_aksess`
--

CREATE TABLE `roles_aksess` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `struktur_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strukturs`
--

CREATE TABLE `strukturs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_organisasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `kategori` int(11) NOT NULL,
  `patern_memo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patern_nota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patern_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `strukturs`
--

INSERT INTO `strukturs` (`id`, `nama_organisasi`, `jabatan`, `parent_id`, `kategori`, `patern_memo`, `patern_nota`, `patern_surat`, `created_at`, `updated_at`) VALUES
(1, 'Pesonna Optima Jasa', 'Direktur Utama', NULL, 1, '{no}/MM-DIR/POJ/{month}/{year}', '{no}/ND-DIR/POJ/{month}/{year}', '{no}/POJ/DIR/{month}/{year}', NULL, NULL),
(2, 'Pesonna Optima Jasa', 'Direktur', 1, 1, '{no}/MM-DIR/POJ/{month}/{year}', '{no}/ND-DIR/POJ/{month}/{year}', '{no}/POJ/DIR/{month}/{year}', NULL, NULL),
(3, 'Divisi Keuangan dan TI', 'General Manager', 2, 1, '{no}/MM-KEU/POJ/{month}/{year}', '{no}/ND-KEU/POJ/{month}/{year}', '{no}/POJ/KEU/{month}/{year}', NULL, NULL),
(4, 'Divisi Bisnis Rental dan Usaha Lain', 'General Manager', 2, 1, '{no}/MM-RENTAL/POJ/{month}/{year}', '{no}/ND-RENTAL/POJ/{month}/{year}', '{no}/POJ/RENTAL/{month}/{year}', NULL, NULL),
(5, 'Divisi Bisnis Outsourcing dan Jasa Pengamanan', 'General Manager', 2, 1, '{no}/MM-OJP/POJ/{month}/{year}', '{no}/ND-OJP/POJ/{month}/{year}', '{no}/POJ/OJP/{month}/{year}', NULL, NULL),
(6, 'Divisi SDM dan Logistik', 'General Manager', 2, 1, '{no}/MM-SDMLOG/POJ/{month}/{year}', '{no}/ND-/SDMLOG/{month}/{year}', '{no}/POJ/SDMLOG/{month}/{year}', NULL, NULL),
(7, 'SPI Satuan Pengawas Intern', 'Kepala', 1, 1, '{no}/MM-SPI/POJ/{month}/{year}', '{no}/ND-SPI/POJ/{month}/{year}', '{no}/POJ/SPI/{month}/{year}', NULL, NULL),
(8, 'Departemen Bisnis Rental dan Usaha Lain', 'Manager', 4, 1, '{no}/MM-RENTAL/POJ/{month}/{year}', '{no}/ND-RENTAL/POJ/{month}/{year}', '{no}/POJ/RENTAL/{month}/{year}', NULL, NULL),
(9, 'Departemen Pemasaran dan Pengembangan', 'Manager', 4, 1, '{no}/MM-PM/POJ/{month}/{year}', '{no}/ND-PM/POJ/{month}/{year}', '{no}/POJ/PM/{month}/{year}', NULL, NULL),
(10, 'Depertemen Pengembangan Bisnis Outsourcing dan Jasa Pengamanan', 'Manager', 5, 1, '{no}/MM-PBOJP/POJ/{month}/{year}', '{no}/ND-PBOJP/POJ/{month}/{year}', '{no}/POJ/PBOJP/{month}/{year}', NULL, NULL),
(11, 'Departemen Operasional Bisnis Ourtsourcing dan Jasa Pengamanan', 'Manager', 5, 1, '{no}/MM-OJP/POJ/{month}/{year}', '{no}/ND-OJP/POJ/{month}/{year}', '{no}/POJ/OJP/{month}/{year}', NULL, NULL),
(12, 'Departemen Keuangan', 'Manager', 3, 1, '{no}/MM-KEU/POJ/{month}/{year}', '{no}/ND-KEU/POJ/{month}/{year}', '{no}/POJ/KEU/{month}/{year}', NULL, NULL),
(13, 'Depertemen Pengembangan Aplikasi TI', 'Manager', 3, 1, '{no}/MM-TI/POJ/{month}/{year}', '{no}/ND-TI/POJ/{month}/{year}', '{no}/POJ/TI/{month}/{year}', NULL, NULL),
(14, 'Depertemen Operasional dan Infrastruktur TI', 'Manager', 3, 1, '{no}/MM-TI/POJ/{month}/{year}', '{no}/ND-TI/POJ/{month}/{year}', '{no}/POJ/TI/{month}/{year}', NULL, NULL),
(15, 'Depertemen SDM', 'Manager', 6, 1, '{no}/MM-SDM/POJ/{month}/{year}', '{no}/ND-SDM/POJ/{month}/{year}', '{no}/POJ/SDM/{month}/{year}', NULL, NULL),
(16, 'Departemen Logistik', 'Manager', 6, 1, '{no}/MM-LOG/POJ/{month}/{year}', '{no}/ND-LOG/POJ/{month}/{year}', '{no}/POJ/LOG/{month}/{year}', NULL, NULL),
(17, 'Satuan Pengawas Intern', 'Senior Auditor', 7, 1, '{no}/MM-SPI/POJ/{month}/{year}', '{no}/ND-SPI/POJ/{month}/{year}', '{no}/POJ/SPI/{month}/{year}', NULL, NULL),
(18, 'Departemen Bisnis Rental dan Usaha Lain', 'Assistant Manager', 8, 2, '{no}/MM-RENTAL/POJ/{month}/{year}', '{no}/ND-RENTAL/POJ/{month}/{year}', '{no}/POJ/RENTAL/{month}/{year}', NULL, NULL),
(19, 'Departemen Operasional Bisnis Rental dan Usaha Lain', 'Assistant Manager', 8, 2, '{no}/MM-RENTAL/POJ/{month}/{year}', '{no}/ND-RENTAL/POJ/{month}/{year}', '{no}/POJ/RENTAL/{month}/{year}', NULL, NULL),
(20, 'Departemen Pemasaran', 'Assistant Manager', 9, 2, '{no}/MM-PM/POJ/{month}/{year}', '{no}/ND-PM/POJ/{month}/{year}', '{no}/POJ/PM/{month}/{year}', NULL, NULL),
(21, 'Depertemen Produk Digital', 'Assistant Manager', 9, 2, '{no}/MM-PD/POJ/{month}/{year}', '{no}/ND-PD/POJ/{month}/{year}', '{no}/POJ/PD/{month}/{year}', NULL, NULL),
(22, 'Depertemen Pengembangan Bisnis Outsourcing dan Jasa Pengamanan', 'Assistant Manager', 10, 2, '{no}/MM-PBOJP/POJ/{month}/{year}', '{no}/ND-PBOJP/POJ/{month}/{year}', '{no}/POJ/PBOJP/{month}/{year}', NULL, NULL),
(23, 'Departemen Operasional Bisnis Ourtsourcing dan Jasa Pengamanan', 'Assistant Manager', 11, 2, '{no}/MM-OJP/POJ/{month}/{year}', '{no}/ND-OJP/POJ/{month}/{year}', '{no}/POJ/OJP/{month}/{year}', NULL, NULL),
(24, 'Departemen Keuangan', 'Assistant Manager', 12, 2, '{no}/MM-KEU/POJ/{month}/{year}', '{no}/ND-KEU/POJ/{month}/{year}', '{no}/POJ/KEU/{month}/{year}', NULL, NULL),
(25, 'Depertemen Pengembangan Aplikasi TI', 'Assistant Manager', 13, 2, '{no}/MM-TI/POJ/{month}/{year}', '{no}/ND-TI/POJ/{month}/{year}', '{no}/POJ/TI/{month}/{year}', NULL, NULL),
(26, 'Depertemen Operasional dan Infrastruktur TI', 'Assistant Manager', 14, 2, '{no}/MM-TI/POJ/{month}/{year}', '{no}/ND-TI/POJ/{month}/{year}', '{no}/POJ/TI/{month}/{year}', NULL, NULL),
(27, 'Depertemen SDM', 'Assistant Manager', 15, 2, '{no}/MM-SDM/POJ/{month}/{year}', '{no}/ND-SDM/POJ/{month}/{year}', '{no}/POJ/SDM/{month}/{year}', NULL, NULL),
(28, 'Depertemen Logistik', 'Assistant Manager', 16, 2, '{no}/MM-LOG/POJ/{month}/{year}', '{no}/ND-LOG/POJ/{month}/{year}', '{no}/POJ/LOG/{month}/{year}', NULL, NULL),
(29, 'Satuan Pengawas Intern', 'Auditor', 17, 2, '{no}/MM-SPI/POJ/{month}/{year}', '{no}/ND-SPI/POJ/{month}/{year}', '{no}/POJ/SPI/{month}/{year}', NULL, NULL),
(30, 'Departemen Bisnis Rental dan Usaha Lain', 'Staff', 18, 2, '{no}/MM-RENTAL-USLA/POJ/{month}/{year}', '{no}/ND-RENTAL-USLA/POJ/{month}/{year}', '{no}/POJ/RENTAL-USLA/{month}/{year}', NULL, NULL),
(31, 'Departemen Operasional Bisnis Rental dan Usaha Lain', 'Staff', 19, 2, '{no}/MM-RENTAL-USLA/POJ/{month}/{year}', '{no}/ND-RENTAL-USLA/POJ/{month}/{year}', '{no}/POJ/RENTAL-USLA/{month}/{year}', NULL, NULL),
(32, 'Departemen Pemasaran', 'Staff', 20, 2, '{no}/MM-PM/POJ/{month}/{year}', '{no}/ND-PM/POJ/{month}/{year}', '{no}/POJ/PM/{month}/{year}', NULL, NULL),
(33, 'Depertemen Produk Digital', 'Staff', 21, 2, '{no}/MM-PD/POJ/{month}/{year}', '{no}/ND-PD/POJ/{month}/{year}', '{no}/POJ/PD/{month}/{year}', NULL, NULL),
(34, 'Depertemen Pengembangan Bisnis Outsourcing dan Jasa Pengamanan', 'Staff', 22, 2, '{no}/MM-OJP/POJ/{month}/{year}', '{no}/ND-OJP/POJ/{month}/{year}', '{no}/POJ/OJP/{month}/{year}', NULL, NULL),
(35, 'Departemen Operasional Bisnis Ourtsourcing dan Jasa Pengamanan', 'Staff', 23, 2, '{no}/MM-OJP/POJ/{month}/{year}', '{no}/ND-OJP/POJ/{month}/{year}', '{no}/POJ/OJP/{month}/{year}', NULL, NULL),
(36, 'Departemen Keuangan', 'Staff', 24, 2, '{no}/MM-KEU/POJ/{month}/{year}', '{no}/ND-KEU/POJ/{month}/{year}', '{no}/POJ/KEU/{month}/{year}', NULL, NULL),
(37, 'Depertemen Pengembangan Aplikasi TI', 'Staff', 25, 2, '{no}/MM-TI/POJ/{month}/{year}', '{no}/ND-TI/POJ/{month}/{year}', '{no}/POJ/TI/{month}/{year}', NULL, NULL),
(38, 'Depertemen Operasional dan Infrastruktur TI', 'Staff', 26, 2, '{no}/MM-TI/POJ/{month}/{year}', '{no}/ND-TI/POJ/{month}/{year}', '{no}/POJ/TI/{month}/{year}', NULL, NULL),
(39, 'Depertemen SDM', 'Staff', 27, 2, '{no}/MM-SDM/POJ/{month}/{year}', '{no}/ND-SDM/POJ/{month}/{year}', '{no}/POJ/SDM/{month}/{year}', NULL, NULL),
(40, 'Depertemen Logistik', 'Staff', 28, 2, '{no}/MM-LOG/POJ/{month}/{year}', '{no}/ND-LOG/POJ/{month}/{year}', '{no}/POJ/LOG/{month}/{year}', NULL, NULL),
(41, 'Satuan Pengawas Intern', 'Staff', 29, 2, '{no}/MM-SPI/POJ/{month}/{year}', '{no}/ND-SPI/POJ/{month}/{year}', '{no}/POJ/SPI/{month}/{year}', NULL, NULL),
(42, 'Perwakilan Medan', 'Regional Manager', 2, 2, '{no}/MM-MEDAN/POJ/{month}/{year}', '{no}/ND-MEDAN/POJ/{month}/{year}', '{no}/POJ/MEDAN/{month}/{year}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `struktur_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `struktur_id`, `email_verified_at`, `password`, `upload_data`, `remember_token`, `created_at`, `updated_at`) VALUES
('01ca4d86-fde0-4582-bd98-bc5f4572ba4c', 'Edo Widodo', 'edo.widodo@optimajasa.co.id', NULL, NULL, '$2y$10$3NZA7txDgr12KAgUnQ4by.OmWO4CLi3mdSB1UZDQFxs0QLd9KiaXW', 'storage/uploads/Edo Widodo.jpg', NULL, '2022-11-25 00:07:26', '2022-11-25 00:07:26'),
('04bb261a-bd31-463b-8eb4-52dda5a5ea08', 'Rizki Yulistyawan', 'rizki@optimajasa.co.id', NULL, NULL, '$2y$10$/pxhCmmDXkclx2t/s8IIOerv.56zBOiiZc3kUxAzXyc9FjuBqWeHy', 'storage/uploads/Rizky Yulistiawan.jpg', NULL, '2022-11-25 00:29:56', '2022-11-25 00:29:56'),
('05ce1f70-3e42-45f7-90ea-dac68296ee1c', 'Lucia Retna Widarti', 'lucia.retna@optimajasa.co.id', NULL, NULL, '$2y$10$K95xOrZtiptUIZDh22NGKe3n47ttlGoLnYB9uT/n/RLmBTvmMPnL2', 'storage/uploads/Lucia.jpg', NULL, '2022-11-25 00:15:00', '2022-11-25 00:15:00'),
('0787510f-3dac-4d40-a52c-973b0b7ac095', 'Aci Yuliani', 'aci.yuliani@optimajasa.co.id', NULL, NULL, '$2y$10$/wPKG1b2ree5FzMymDYVweT7iOPoK6Q2qkauV7IVysPbZY7nerdW6', 'storage/uploads/Aci Yuliani.jpg', NULL, '2022-11-24 23:26:43', '2022-11-24 23:26:43'),
('194bc473-8eb2-4abf-ba7d-c9bdcf744b01', 'Agus Satriawan Nugraha', 'akbar.satriawan@optimajasa.co.id', NULL, NULL, '$2y$10$jCebbXlKouIe12D3JEg5Ie26.cmZR3N6nIyLA.XNABHnEMx8AKUT6', 'storage/uploads/Akbar S Nugraha.jpg', NULL, '2022-11-24 23:36:48', '2022-11-24 23:36:48'),
('195e76d1-ff8f-4003-b0fd-3b15f0590c90', 'Mochammad Nurhadi', 'nurhadi@optimajasa.co.id', NULL, NULL, '$2y$10$MAD/sjyNHaKrPUqmZEcqau.xNtHy5UcMSx.3FJHoZFs.SAJfFJmaq', 'storage/uploads/Nurhadi.jpg', NULL, '2022-11-25 00:18:10', '2022-11-25 00:18:10'),
('1b3ca892-2339-473f-ac57-1264369e79b4', 'Eka Prasetya Husen', 'eka.prasetya@optimajasa.co.id', NULL, NULL, '$2y$10$A7TyC3ebtUey.yEbfGYqC.KaoqEJ.PM7sROfmYt2weC.UuPMItBKi', 'storage/uploads/Eka Prasetya Husen.jpg', NULL, '2022-11-25 00:08:03', '2022-11-25 00:08:03'),
('1bd23499-02ae-49aa-bd4a-399672f9570e', 'Agus Priyabodo', 'aguspriyabodo@optimajasa.co.id', NULL, NULL, '$2y$10$3egONLiH2Hooccdd2PhhZe1cJ0/6M6sDRBhcKFRqUzeYDNb5DLPF.', 'storage/uploads/Agus Priyabodo.jpg', NULL, '2022-11-24 23:28:11', '2022-11-24 23:28:11'),
('24e62c46-4d94-45e7-a5a1-aa901c830be8', 'I Wayan Sukerata', 'iwayansukerata@optimajasa.co.id', NULL, NULL, '$2y$10$wLCmNAmJLZ6uy5ncgdAP..WCjEmEKDzSNc7xtMcgUSlGFMQyt6pdi', 'storage/uploads/I Wayan.jpg', NULL, '2022-11-25 00:11:36', '2022-11-25 00:11:36'),
('26f7d13d-63f9-439e-8e26-124213425c6d', 'Damar Wicaksono', 'damar@optimajasa.co.id', NULL, NULL, '$2y$10$sYnIRvybsNLGaTIyl85/UO5Xt.Z/SW9edmSWXmb7dqtjduj11faES', 'storage/uploads/Damar Wicaksono.jpg', NULL, '2022-11-24 23:56:31', '2022-11-24 23:56:31'),
('2dd8b82a-cfa3-4943-a9cc-f7fb88622650', 'Andri Surya Atmaja', 'andrisurya@optimajasa.co.id', NULL, NULL, '$2y$10$KtQrFtEFtoJxrk46fpwdiOTq/VN7ZwHKZS7frVI1/swj4LCf8S72G', 'storage/uploads/Andri Surya Atmaja.jpg', NULL, '2022-11-24 23:44:22', '2022-11-24 23:44:22'),
('31ab900a-f033-47d4-a783-f27206c70274', 'Sofi arinda', 'sofi@optimajasa.co.id', NULL, NULL, '$2y$10$tcPxl3JjO3j8IfwXG7gG8.9ZxJ3uy7Ok8fS5BrfBVw7hqtVqYDL9q', 'storage/uploads/Sofi.jpg', NULL, '2022-11-25 00:34:34', '2022-11-25 00:34:34'),
('36515d96-d648-43c0-abc7-de2daf66badb', 'Yunan Rizki', 'yunan@optimajasa.co.id', NULL, NULL, '$2y$10$zXErmcimMdqQpTzLn90k1eKqQ6fFSluDtFj3ysMzZg0K8TEAsSFQ.', 'storage/uploads/Yunan Rizki.jpg', NULL, '2022-11-25 00:42:18', '2022-11-25 00:42:18'),
('40957de2-08d7-4db9-803a-8c68b8461e0f', 'Siti Murti', 'murti@optimajasa.co.id', NULL, NULL, '$2y$10$ZyoyAM7CjnZIfNXy9ovFGu7jsQiUtRfdDhrYiJAb.W/67m99QsF8W', 'storage/uploads/Siti Murti.jpg', NULL, '2022-11-25 00:33:55', '2022-11-25 00:33:55'),
('466622c5-5295-49d6-a60c-a40809ad3844', 'Resha Rosita Ashari', 'resha@optimajasa.co.id', NULL, NULL, '$2y$10$4tnt1V/wldwFTJ7MmOoiLemvZo2uGeBva.sRBg5ZyGVDkmiZyX8ly', 'storage/uploads/Resha.jpg', NULL, '2022-11-25 00:26:14', '2022-11-25 00:26:14'),
('47f4c514-2788-4927-9f03-2666e6ecd58c', 'Widia Yuli Sevtiani', 'yuli@optimajasa.co.id', NULL, NULL, '$2y$10$5GbfMsv/fHp3uDrBMFFcMeYSGuLatCoJ3dAp5S/auwjPo0s/TiRCu', 'storage/uploads/Widia.jpg', NULL, '2022-11-25 00:39:41', '2022-11-25 00:39:41'),
('4cf9fe46-92fc-430b-96aa-58bdfc098e56', 'Syaiful Azhari', 'syaifulazhari@optimajasa.co.id', NULL, NULL, '$2y$10$pcGeAWl3/oEw6SoInLHIdO7CU2PIIQI3Trys/rKm5Rkgcl6lrEXxC', 'storage/uploads/Syaiful.jpg', NULL, '2022-11-25 00:37:12', '2022-11-25 00:37:12'),
('58002675-3cdf-47bb-9394-9f257f906b36', 'Doddy Kurnia Putra', 'doddy@optimajasa.co.id', NULL, NULL, '$2y$10$EIJn0PQdUUXnYMvFdCYt8ugKx0bUK2cwRHHeyrH5DPBwTxakYNvXC', 'storage/uploads/Dody.jpg', NULL, '2022-11-25 00:04:03', '2022-11-25 00:04:03'),
('58f24cf0-35da-4d5e-93e4-95b7d4f0c2fc', 'Dalia Trihandayani', 'dalia@optimajasa.co.id', NULL, NULL, '$2y$10$9q4GC5uU9OZGQjygpwncaers4qM3Ds7qay5fcO2AesdFb4UgkGbAW', 'storage/uploads/Dahlia.jpg', NULL, '2022-11-24 23:54:54', '2022-11-24 23:54:54'),
('5a0d5f42-8a60-4201-9569-6bfcb2886be5', 'Shadiya Freya Rosaline', 'shadiyafreya@optimajasa.co.id', NULL, NULL, '$2y$10$/caU0n.FpgqzaUyAtNLFKeDpCD.DYhZyatRzoNH0SDgKEmzQxK8AK', 'storage/uploads/Freya.jpg', NULL, '2022-11-25 00:32:20', '2022-11-25 00:32:20'),
('5fb872e9-122b-4bcc-88a7-ca56bb964ff0', 'Nadia Pramesti', 'nadia.pramesti@optimajasa.co.id', NULL, NULL, '$2y$10$gr.3DcAfjzR9.TeVKSGvyeMfw8F56Hk8dh6y8tZ5gAEmqZPYphnHW', 'storage/uploads/Nadia Pramesti.jpg', NULL, '2022-11-25 00:21:08', '2022-11-25 00:21:08'),
('6217bdf9-337c-4d09-bb2d-83c6e12ac3c9', 'Miyarna', 'miyarna@optimajasa.co.id', NULL, NULL, '$2y$10$4xZJzhJ4oQbi3ya3JuAC4uhWtduenimH7lFZHnRfHPPytcdqDfwYe', 'storage/uploads/Miyarna.jpg', NULL, '2022-11-25 00:17:20', '2022-11-25 00:17:20'),
('639b0b8e-bdc8-4cf3-bafe-631139b12b94', 'Juniarto Parlindungan', 'juniarto@optimajasa.co.id', NULL, NULL, '$2y$10$/ufaD6/asbLKVFw1hGxY.eaYhotWedL9yZ6kKABzmEm31orw4tz6e', 'storage/uploads/Juniarto.jpg', NULL, '2022-11-25 00:14:21', '2022-11-25 00:14:21'),
('6827634c-962a-45f9-8ba0-d1845e465fc2', 'A Sigit Agung Wibow', 'sigitwibowo@optimajasa.co.id', NULL, NULL, '$2y$10$WMgWSKqxhENyJTeVRDTS9ORR3PiVzWnFUKpxPceySK1R95GGdfnlK', 'storage/uploads/Sigit.jpg', NULL, '2022-11-24 23:24:22', '2022-11-24 23:24:22'),
('6900e70b-c1e2-4bd9-8def-5991fe944a60', 'Uus Yuswandhika', 'uusyuswandhika@optimajasa.co.id', NULL, NULL, '$2y$10$GuTGEgwQldZH/7Ef9/hOde3XAa4KWD.mKFVelsUxYdKy5j05BNKfW', 'storage/uploads/Uus.jpg', NULL, '2022-11-25 00:38:56', '2022-11-25 00:38:56'),
('6ba9b154-00b5-4d0a-956b-a8b889646037', 'yul Afian', 'yulafian@optimajasa.co.id', NULL, NULL, '$2y$10$GNfCF9lrkt/C8o5w.TQZQeaBbxZXrmLHRVX26/fc8aUYV4tPbo17i', 'storage/uploads/Yul Afian.jpg', NULL, '2022-11-25 00:41:18', '2022-11-25 00:41:18'),
('70d42e5a-4e31-49f9-b900-2a55359b68cc', 'Rando Winanto', 'rando.winanto@optimajasa.co.id', NULL, NULL, '$2y$10$O8qnyPLUjpknY3lTugZ/net0lX3hU35dtukZOqP1JbzjX/9ab/cUG', 'storage/uploads/Rando.jpg', NULL, '2022-11-25 00:25:46', '2022-11-25 00:25:46'),
('72f81f9b-3dd2-49de-8d9a-ed2117b81fd9', 'Suratno', 'nano@optimajasa.co.id', '37', NULL, '$2y$10$yZqSV6HbF7lIqFug8bbAXudYxdBQNFN3tNY4smGqhQtasF/8KUheO', NULL, NULL, NULL, NULL),
('75de2bae-983d-4a1c-bbbb-6550068dd977', 'Anis Putri Kusuma', 'anis@optimajasa.co.id', NULL, NULL, '$2y$10$TV.f6x7ji1lWos44OdzMT.4N.ze484gwk.ikpJrG1P3iche0lSnSa', 'storage/uploads/Anis Putri Kusuma.jpg', NULL, '2022-11-24 23:47:41', '2022-11-24 23:47:41'),
('78a3b2a4-ec0c-4d60-b5a2-2c9b9a12f4ef', 'Ferri Fahd', 'ferifahd@optimajasa.co.id', NULL, NULL, '$2y$10$A2.K/FjXHITaiWk1Cf.Dmu84smNtLFHnFKfIAPnUkgn/H9LDcHCtK', 'storage/uploads/Ferri Fahd.jpg', NULL, '2022-11-25 00:09:49', '2022-11-25 00:09:49'),
('790341b4-49dd-44cf-8da8-340ae785e190', 'Dodik Sugeng Hariadi', 'dodik@optimajasa.co.id', NULL, NULL, '$2y$10$KLll1Wii6HE.Zx2SAwF4ieyTlSlvarxb7UnOh5a/vqcdHpjiiJLP2', 'storage/uploads/Dodik.jpg', NULL, '2022-11-25 00:05:55', '2022-11-25 00:05:55'),
('80c6ff3a-c994-4bf2-966d-f0522e611622', 'Andy Wiyaja', 'andy.wijaya@optimajasa.co.id', NULL, NULL, '$2y$10$cJ.0NcBe6oFP/dewffLf9.qxQaVl.YJOMK/slzO/8OttNDycIo2Ze', 'storage/uploads/Andy Wijaya.jpg', NULL, '2022-11-24 23:45:51', '2022-11-24 23:45:51'),
('8343d633-fb3e-4ea1-a047-116df79192c2', 'Agus Wawan Kurniawan', 'wawan.kurniawani@optimajasa.co.id', NULL, NULL, '$2y$10$KVKoUyyS4UgfzMuOOOzTAuWd2CB3M7cRjjs0YPuiGvMA15NT94M.W', 'storage/uploads/Agus Wawan Kurniawan.jpg', NULL, '2022-11-24 23:35:43', '2022-11-24 23:35:43'),
('86d129d4-6a4c-4a83-85f2-5f95d997428c', 'Suprapto', 'suprapto@optimajasa.co.id', NULL, NULL, '$2y$10$Nmy6J4XkIZBOxCO4qcazZ.w/27zJhFaEdh0SCB7l1Alika8SPvzPm', 'storage/uploads/Suprapto.jpg', NULL, '2022-11-25 00:35:21', '2022-11-25 00:35:21'),
('880b61a0-dbcc-4020-bb39-3e293227d486', 'Ari Wiguna', 'ari.wiguna@optimajasa.co.id', NULL, NULL, '$2y$10$x6.R/IMs6XsSVoEgJt.QHegHHeCIPCOBjOsT1GcAqFKkYhLPW6Rj2', 'storage/uploads/Ari Wiguna.jpg', NULL, '2022-11-24 23:50:54', '2022-11-24 23:50:54'),
('8d71e384-00f1-43df-a855-d3d591c4ed7a', 'Mike Ariga Elsayrafl', 'mike@optimajasa.co.id', NULL, NULL, '$2y$10$LBElp5ASD3QKDxxgEJ/UOuIrN1H35Nu7GJetBBM4HrF1LYwSWeV3O', 'storage/uploads/Mike.jpg', NULL, '2022-11-25 00:16:22', '2022-11-25 00:16:22'),
('8da76598-8386-4223-8890-9b2813c93f99', 'Syamsul Jauhari', 'syamsul@optimajasa.co.id', NULL, NULL, '$2y$10$7izVy9jrToy3swO7VeL9iuC8cHZlToBwV9hhpnitUNFeEgYy0Xsrq', 'storage/uploads/Syamsul Jauhari.jpg', NULL, '2022-11-25 00:38:10', '2022-11-25 00:38:10'),
('90de800d-393a-44fe-9de4-5b9b8c45fe4f', 'Novian Indra Jaya Pane', 'novianjaya@optimajasa.co.id', NULL, NULL, '$2y$10$1PdAjVD4eOT/REhONdiyYOsuqY2qSsDQRf..wRoxlJUvSiilwEeVa', 'storage/uploads/Novian Indra Jaya.jpg', NULL, '2022-11-25 00:23:06', '2022-11-25 00:23:06'),
('9557636f-1e6a-4135-9b5d-a95cfa5c18fe', 'Surya Mahardika Aprilianto', 'surya@optimajasa.co.id', NULL, NULL, '$2y$10$Jk/KduMklfyWHQpgffl59eyms0QHXXYKUoThEyQIDo8DayRP8AjPG', 'storage/uploads/Surya Mahardika.jpg', NULL, '2022-11-25 00:36:30', '2022-11-25 00:36:30'),
('97230b68-26ca-4800-a135-02b51fd44220', 'Rohmat Romadon', 'rohmat.romadon@optimajasa.co.id', NULL, NULL, '$2y$10$MGCG6XDGlItMKVmo2CiRGu5f8C.ytNWLaAklPJZ/3kj/AeRyDFQhG', 'storage/uploads/Rohmat Romadon.jpg', NULL, '2022-11-25 00:30:45', '2022-11-25 00:30:45'),
('979f18b3-e94c-4a54-8839-58bf51b68310', 'Eviyani Maretha Purba', 'maretha@optimajasa.co.id', NULL, NULL, '$2y$10$xnlZCGia7mtWI8i3hIpMbupk5sTP1Vc4EV3Itg1RW2vXhEai09Wia', 'storage/uploads/Eviyani Maretha Purba.jpg', NULL, '2022-11-25 00:08:47', '2022-11-25 00:08:47'),
('9a33a19f-0f13-4af8-abf3-28843bef9765', 'Dewi Damayanti', 'dewi@optimajasa.co.id', NULL, NULL, '$2y$10$gVMmCo/UWB2L0ELn.0vUC.Ns.t58qpQXQjksM2onu1hzOr9pLKRGK', 'storage/uploads/Dewi.jpg', NULL, '2022-11-25 00:02:22', '2022-11-25 00:02:22'),
('9d575892-f475-4859-8676-642bc1fd2d75', 'Andri Prayogo', 'andriprayogo@optimajasa.co.id', NULL, NULL, '$2y$10$9/Cl.5qRQ57Oqc9g7BEmh.mbm9fJia6UMabLT5Ujyndx58dKnfIGO', 'storage/uploads/Andri Prayogo.jpg', NULL, '2022-11-24 23:42:43', '2022-11-24 23:42:43'),
('a26c296b-0664-41e0-a799-d3ab2a8dca2a', 'Zulfikar Rizki', 'zulfikar@optimajasa.co.id', NULL, NULL, '$2y$10$nrR/dqFBysUecRQPMjc4YepHc7IrwBzyfA1RpLH2llvlXmtotFUPy', 'storage/uploads/Zulfikar.jpg', NULL, '2022-11-25 00:44:05', '2022-11-25 00:44:05'),
('a2a19608-4dfe-49ba-a26e-93786cb050f0', 'Mohammad Ruli Kusumaputra', 'mohammad.ruli@optimajasa.co.id', NULL, NULL, '$2y$10$wsxUsUVzRIcIBPgKqR0MUeKs66ittiCUks9dr1Xcme.jlcmdvNoZS', 'storage/uploads/Ruli.jpg', NULL, '2022-11-25 00:19:18', '2022-11-25 00:19:18'),
('aa3c91c0-ec84-423a-9697-ee3d9b7cbc5e', 'Fuad Riyadi', 'fuad.riyadi@optimajasa.co.id', NULL, NULL, '$2y$10$fzM8T8z7kRSA36Xg.z6pUuBpEV0Dp68bPW5pSKjAAdrhLNC1JBKAO', 'storage/uploads/Fuad Riyadi.jpg', NULL, '2022-11-25 00:10:35', '2022-11-25 00:10:35'),
('aa988c5a-29d8-408f-a536-079972f3e642', 'Jojor Lima Nursari', 'jojor@optimajasa.co.id', NULL, NULL, '$2y$10$xouKyBA8r5G3ra9lLvdBgeHSiaHPaRSp7d1LNOpTu0iNAZx/t7hga', 'storage/uploads/Jojo.jpg', NULL, '2022-11-25 00:13:13', '2022-11-25 00:13:13'),
('af7e966b-43e9-44cf-ba65-d9fadfec4c88', 'Dandi Prastomo', 'dandiprasmoni@optimajasa.co.id', NULL, NULL, '$2y$10$RLjmFhvY0hAbFmnuKk/q/OyOMLPsIHJe4LBD5tB4M04aDVXNge77u', 'storage/uploads/Dandi Prastomo.jpg', NULL, '2022-11-25 00:00:09', '2022-11-25 00:00:09'),
('b2e08c7e-aabc-4500-88ec-c278a6db6fea', 'Nadia Fadila', 'nadia@optimajasa.co.id', NULL, NULL, '$2y$10$a0YlUzrMpo/Ib87ZG9JIzuQO/PdBSCZdCVaFwNodS9/yKC7NyXHXe', 'storage/uploads/Nadia Fadila.jpg', NULL, '2022-11-25 00:20:01', '2022-11-25 00:20:01'),
('b7d3e5ae-94c1-4b5f-b0ee-1f96e89c546b', 'Hana Ragil Ayu Asmara', 'hannaragilayu@optimajasa.co.id', NULL, NULL, '$2y$10$Xzd5ZKdMHs6m3OopHueAAuok098QusLhj61PH1iUJqir36a4BeglS', 'storage/uploads/Hana Ragil Ayu.jpg', NULL, '2022-11-25 00:11:07', '2022-11-25 00:11:07'),
('b90815d5-91cb-4fec-9c24-21670599314d', 'Dinanti Hayyina Putri', 'dinan@optimajasa.co.id', NULL, NULL, '$2y$10$I/zf6Wqx9ONl7.J/qEn0Kue6g3QZVmxYQgOf7MVDAH5H3RAls2Oyq', 'storage/uploads/Dinanti.jpg', NULL, '2022-11-25 00:03:19', '2022-11-25 00:03:19'),
('b97dc077-93a1-4865-957a-1ebb51119396', 'Yusuf Frengki', 'frengkysihotang@optimajasa.co.id', NULL, NULL, '$2y$10$eVLBIHPBJCPR4EAdYLrPhO3CBtt5fckF2f/QgD1Fe8VW4uxbp4Cla', 'storage/uploads/Yusuf Frengki.jpg', NULL, '2022-11-25 00:43:19', '2022-11-25 00:43:19'),
('baf04c86-ae61-47dc-8994-6bfbc7d539c4', 'Dony Ardiansyah', 'dony@optimajasa.co.id', NULL, NULL, '$2y$10$2dwNUKVOJSYIl1Do.vJqoeyLwyer80AmW.Kaf.t7m6XGTL1JCzt3i', 'storage/uploads/Dony.jpg', NULL, '2022-11-25 00:06:44', '2022-11-25 00:06:44'),
('bd45d752-759a-4c38-bf76-ce4a98f97662', 'Yudha Gunawan', 'yuda@optimajasa.co.id', NULL, NULL, '$2y$10$7axZIBgmwcVm/TRHbG5ko.QpA3879CpmXYRCQPqADm4fqaOgs7Cvu', 'storage/uploads/Yuda Gunawan.jpg', NULL, '2022-11-25 00:40:29', '2022-11-25 00:40:29'),
('c0e52cc2-2f9c-44bc-a6b4-227dfa13b756', 'Ricki Mardianto', 'ricki.mardianto@optimajasa.co.id', NULL, NULL, '$2y$10$lvadzhiIue2zQ3dF1rsHMOZp/PSAysUi9.bAvZMcgKHb0Be2vlDie', 'storage/uploads/RICKI MARDIANTO.jpg', NULL, '2022-11-25 00:27:12', '2022-11-25 00:27:12'),
('c565bd55-3eb5-48c7-8f75-90f35d7a4e8c', 'Sariffudin', 'sariffudin@optimajasa.co.id', NULL, NULL, '$2y$10$u2QX1..RcgDVs4nE5XeTJu/VVDVEevvpnh04xbZ5bbV/LVFqCyS0.', 'storage/uploads/Syariffudin.jpg', NULL, '2022-11-25 00:31:22', '2022-11-25 00:31:22'),
('cc628daa-fe66-4905-8dbb-388ca8c386f9', 'Norita Valentini', 'norita@optimajasa.co.id', NULL, NULL, '$2y$10$6VZOwJGTzRcfBdcdYuaLTugs5oDD.AwWPa3MYNWSKnCSCQdfzzDFy', 'storage/uploads/Norita.jpg', NULL, '2022-11-25 00:22:04', '2022-11-25 00:22:04'),
('d1eb61e2-ba8b-47ce-a775-ffba827934b3', 'M Bachtiar Ardhiyanto', 'tiar@optimajasa.co.id', NULL, NULL, '$2y$10$eWK93hXdbnQGDWZ4lT7Xru.abWzxHlrZkVuFE1Cok7UTWdpTNYv4W', 'storage/uploads/Bacthiar.jpg', NULL, '2022-11-25 00:15:49', '2022-11-25 00:15:49'),
('e34b7eb4-69f0-4252-9ac9-949cbea737e1', 'Antonius Eka Wibowo', 'anton.eka@optimajasa.co.id', NULL, NULL, '$2y$10$D84XveBeTFVzTD1lUFlWcOxWrl/Z9E.arUUFb7rtQd7T6YwFSKIbK', 'storage/uploads/Anton.jpeg', NULL, '2022-11-24 23:48:58', '2022-11-24 23:48:58'),
('e4b254d9-ac77-4a80-b5df-be193cf90ab3', 'Desy Sarah Tarigan', 'desy@optimajasa.co.id', NULL, NULL, '$2y$10$DOiSiy7K3Zcpk6R/3Onq3etoJTv2.0eVgp308rG9M58yf7uzeeFGi', 'storage/uploads/Desy Sarah Tarigan.jpg', NULL, '2022-11-25 00:01:09', '2022-11-25 00:01:09'),
('eafc9ac2-bba1-4e58-9042-b987d81b7da5', 'Rama Fikli', 'rama.fikli@optimajasa.co.id', NULL, NULL, '$2y$10$xUGWN7GxPX4DPhAMtbhrveorjKY/nNfIfrzNWnCCs945FWtOLR4/e', 'storage/uploads/Rama.jpg', NULL, '2022-11-25 00:24:05', '2022-11-25 00:24:05'),
('ebfdc27e-cbd6-4674-a745-bff59f628f01', 'Budi Windyaguna', 'budhi@optimajasa.co.id', NULL, NULL, '$2y$10$K8pk9cvgec2oN0klmZJ8bew4CS675qlUH6/jE2xSnBX99RXv1QgtC', 'storage/uploads/Budhi.jpg', NULL, '2022-11-24 23:53:02', '2022-11-24 23:53:02'),
('f3aeaab8-e931-48a4-8e8b-7da131301635', 'Rizki Dian Saputro', 'rizkidian@optimajasa.co.id', NULL, NULL, '$2y$10$HLtRm/W4djlfeqrAjNU/yuZr1pQ.sXYWec1a1OLwloNiaa0OA4kYK', 'storage/uploads/Rizki Dian.jpg', NULL, '2022-11-25 00:28:38', '2022-11-25 00:28:38'),
('fa086e8b-22e1-48a5-b1db-dbbc2996b9d8', 'Ida Bagus Ardita Keniten', 'idabagusardita@optimajasa.co.id', NULL, NULL, '$2y$10$noINkGoOI4BeeIqnM/INEeJ0zFtnMSxT0wYMBlk20dci93DYrbSYe', 'storage/uploads/Ida Bagus.jpg', NULL, '2022-11-25 00:12:30', '2022-11-25 00:12:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `memos`
--
ALTER TABLE `memos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nodins`
--
ALTER TABLE `nodins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles_aksess`
--
ALTER TABLE `roles_aksess`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strukturs`
--
ALTER TABLE `strukturs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strukturs`
--
ALTER TABLE `strukturs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
