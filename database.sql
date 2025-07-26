--
-- Database: `db_perpustakaan_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `content`) VALUES
(1, 'Selamat datang di website perpustakaan SMA IT Insan Mulia Boarding School. Website ini dikembangkan sebagai bagian dari proyek individu untuk memenuhi kebutuhan informasi dan administrasi perpustakaan sekolah.\n\nTujuan utama dari website ini adalah untuk menyediakan platform yang mudah diakses bagi siswa dan staf dalam mencari informasi tentang resensi buku, melihat daftar peminjaman, serta mengenal duta literasi sekolah. Selain itu, website ini juga dilengkapi dengan fitur administrasi untuk mempermudah pengelolaan data perpustakaan.\n\nSebagai pengembang, saya berkomitmen untuk terus meningkatkan fungsionalitas dan kenyamanan penggunaan website ini. Masukan dan saran sangat kami harapkan untuk pengembangan lebih lanjut.\n\nTerima kasih telah mengunjungi website kami. Semoga bermanfaat!\n\nPengembang: [Nama Pembuat Website]');

-- --------------------------------------------------------

--
-- Table structure for table `ambassadors`
--

CREATE TABLE `ambassadors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `achievement` text NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ambassadors`
--

INSERT INTO `ambassadors` (`id`, `name`, `details`, `achievement`, `img_url`) VALUES
(1, 'Dina Anggraini', 'Kelas: XII IPA 1 (2024)', 'Juara 1 Lomba Resensi Buku Nasional', 'https://via.placeholder.com/100x100?text=Duta+1'),
(2, 'Fahmi Ramadhan', 'Alumni: Angkatan 2022', 'Pesan: \"Membaca adalah kekuatan tersembunyi.\"', 'https://via.placeholder.com/100x100?text=Duta+2');

-- --------------------------------------------------------

--
-- Table structure for table `borrowing`
--

CREATE TABLE `borrowing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siswa` varchar(255) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrowing`
--

INSERT INTO `borrowing` (`id`, `siswa`, `kelas`, `judul_buku`, `tanggal_pinjam`, `tanggal_kembali`) VALUES
(1, 'Rina Kartika', 'X IPA 1', 'Filosofi Teras', '2024-05-10', NULL),
(2, 'Doni Pratama', 'XI IPS 1', 'Pulang', '2024-05-12', '2024-05-19');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siswa` varchar(255) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `identitas` int(11) NOT NULL,
  `isi` int(11) NOT NULL,
  `bahasa` int(11) NOT NULL,
  `kesimpulan` int(11) NOT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `siswa`, `kelas`, `judul_buku`, `identitas`, `isi`, `bahasa`, `kesimpulan`, `img_path`) VALUES
(1, 'Budi Santoso', 'XII IPA 1', 'Laskar Pelangi', 5, 18, 14, 9, 'uploads/default1.jpg'),
(2, 'Citra Dewi', 'XI IPS 2', 'Ayat-Ayat Cinta', 4, 19, 15, 10, 'uploads/default2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'Admin', '$2y$10$fW.1q2mJ8.L6b2Y6q9k0a.e8jA/P4aB6G3eQ2H8iK0o1c5lG7m6mS'); -- Password is 'AdminResensiKu'

--
-- AUTO_INCREMENT for dumped tables
--

ALTER TABLE `about` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `ambassadors` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `borrowing` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `reviews` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `users` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
