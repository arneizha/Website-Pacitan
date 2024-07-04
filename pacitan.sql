-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 04, 2024 at 02:55 AM
-- Server version: 10.9.2-MariaDB-log
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pacitan`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id_about` int(11) NOT NULL,
  `image` varchar(50) COLLATE utf16_bin DEFAULT NULL,
  `text` text COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id_about`, `image`, `text`) VALUES
(12, '381-Pacitan.jpg', 'Pacitan adalah sebuah kabupaten di Jawa Timur yang terkenal sebagai \"Kota 1001 Goa\" karena banyaknya gua yang menakjubkan, seperti Gua Gong dan Gua Tabuhan. Terletak di selatan Pulau Jawa, Pacitan memiliki garis pantai yang indah dengan pantai-pantai eksotis seperti Pantai Klayar, Pantai Teleng Ria, dan Pantai Watu Karung, yang dikenal sebagai lokasi selancar kelas dunia. Budaya dan tradisi lokal tetap kuat di sini, dengan masyarakat yang sering mengadakan wayang kulit, gamelan, dan upacara adat.  Kuliner khas Pacitan seperti nasi tiwul dan hidangan laut segar menjadi daya tarik tersendiri. Pacitan juga memiliki situs religi dan bersejarah seperti Masjid Agung Baiturrahman. Ekonomi daerah ini didukung oleh sektor pertanian, perikanan, dan pariwisata. Wisatawan dapat mengakses Pacitan melalui jalur darat dari Surabaya, Malang, atau Yogyakarta. Dengan kekayaan alam, budaya, dan tradisinya yang unik, Pacitan menjadi destinasi menarik untuk dikunjungi.');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf16_bin NOT NULL,
  `password` varchar(50) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `kuliner`
--

CREATE TABLE `kuliner` (
  `id_kul` int(11) NOT NULL,
  `nama_kuliner` varchar(100) COLLATE utf16_bin NOT NULL,
  `deskripsi` text COLLATE utf16_bin NOT NULL,
  `alamat` text COLLATE utf16_bin NOT NULL,
  `gambar` varchar(50) COLLATE utf16_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `kuliner`
--

INSERT INTO `kuliner` (`id_kul`, `nama_kuliner`, `deskripsi`, `alamat`, `gambar`) VALUES
(3, 'Rumah Makan Sari Laut Bu Gandos', 'Menyajikan berbagai hidangan laut segar seperti udang, cumi, dan kerang. Tempat ini terkenal dengan sambal khasnya yang pedas dan nikmat, serta suasana tempat makan yang nyaman.', 'https://maps.app.goo.gl/qGCFFJsHfG4RfZGg7', '627-RM. Bu Gandos.jpg'),
(4, 'Rumah Makan Mekar Jaya', 'Restoran Mekar Jaya adalah salah satu tempat makan yang dikenal karena menyajikan berbagai hidangan tradisional Jawa dan hidangan laut segar. Terletak di lokasi yang mudah dijangkau, restoran ini menawarkan suasana yang nyaman dan ramah, cocok untuk makan bersama keluarga maupun teman. Menu andalannya mencakup nasi pecel, soto ayam, ikan bakar, dan berbagai olahan seafood yang lezat.', 'https://maps.app.goo.gl/6GD2UoGtN1SbrY218', '121-RM. Mekar Jaya.png'),
(5, 'Warung Khase Pacitan', 'Warung Khase adalah tempat makan populer di Pacitan yang menawarkan hidangan khas daerah dengan cita rasa autentik. Menyajikan berbagai menu tradisional Jawa, termasuk nasi tiwul, ikan bakar, dan aneka hidangan laut segar, Warung Khase menjadi favorit bagi warga lokal dan wisatawan. Suasananya yang sederhana dan ramah membuatnya cocok untuk menikmati makanan lezat sambil merasakan nuansa budaya Pacitan.', 'https://maps.app.goo.gl/jbQBju6FUs45k4Ua9', '852-Warung Khase.jpg'),
(6, 'Rumah Makan Kampoeng Pacitan', 'Rumah Makan Kampoeng Pacitan adalah destinasi kuliner terkenal di Pacitan, Jawa Timur, yang menawarkan pengalaman makan dengan nuansa pedesaan yang autentik. Terletak di lokasi yang strategis, rumah makan ini menghidangkan berbagai hidangan tradisional Jawa, seperti nasi pecel, soto ayam, dan ayam goreng, dengan cita rasa yang otentik dan menggunakan bahan-bahan lokal segar. Suasana rumah makan yang nyaman dan dekorasi yang menghadirkan nuansa kampoeng Jawa menambah kenikmatan saat menikmati hidangan', 'https://maps.app.goo.gl/47iY5sNpTPFS34AT6', '729-RM. Kampoeng Pacitan.jpg'),
(7, 'Lesehan Bukit Indah', 'Rumah Makan Lesehan Bukit Indah adalah tempat makan yang populer di Pacitan, Jawa Timur, yang menawarkan pengalaman kuliner lesehan di bawah pohon-pohon rindang. Terkenal dengan suasana alaminya yang tenang dan udara segarnya, rumah makan ini menyajikan hidangan khas Jawa seperti nasi pecel, sate ayam, dan aneka olahan laut segar. Dengan konsep lesehan tradisional, pengunjung dapat menikmati makanan sambil menikmati pemandangan alam yang indah, menjadikannya tempat yang ideal untuk santai dan menikmati kuliner khas Pacitan.', 'https://maps.app.goo.gl/8b618VY498trvFm19', '587-LBI.png');

-- --------------------------------------------------------

--
-- Table structure for table `penginapan`
--

CREATE TABLE `penginapan` (
  `id_peng` int(11) NOT NULL,
  `nama_penginapan` varchar(100) COLLATE utf16_bin NOT NULL,
  `deskripsi` text COLLATE utf16_bin NOT NULL,
  `alamat` text COLLATE utf16_bin NOT NULL,
  `gambar` varchar(50) COLLATE utf16_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `penginapan`
--

INSERT INTO `penginapan` (`id_peng`, `nama_penginapan`, `deskripsi`, `alamat`, `gambar`) VALUES
(2, 'The Horizontal Hotel Pacitan', 'The Horizontal Hotel Pacitan adalah hotel yang terletak di Pacitan, Jawa Timur, Indonesia. Hotel ini dikenal dengan konsep desain modern yang menyatu dengan nuansa alam, dengan pemandangan yang menghadap langsung ke pantai atau laut. Fasilitas yang ditawarkan biasanya mencakup kamar-kamar yang nyaman dan dilengkapi dengan berbagai fasilitas modern, restoran atau kafe yang menyajikan masakan lokal dan internasional, kolam renang, serta layanan spa dan kebugaran. ', 'https://www.traveloka.com/id-id/hotel/indonesia/the-horizontal-hotel-pacitan-9000003202722?contexts=%7B%22accessCode%22%3A%222023IDSEO2023%22%7D', '692-Hotel Horizontal.jpg'),
(3, 'Hotel Batu Hill Villa', 'Batu Hill Villa Pacitan adalah penginapan mewah yang terletak di dataran tinggi Pacitan, Jawa Timur, menawarkan villa-villa pribadi dengan desain modern dan pemandangan spektakuler ke sekitar, termasuk pemandangan laut yang memukau. Fasilitasnya meliputi kolam renang pribadi, restoran eksklusif, serta layanan spa untuk pengalaman menginap yang santai dan istimewa.', 'https://www.traveloka.com/id-id/hotel/indonesia/batu-hill-villa-3000020016604?contexts=%7B%22accessCode%22%3A%222023IDSEO2023%22%7D', '349-Hotel Batu Hill Villa.jpg'),
(4, 'Watukarung Ristu Homestay', 'Watukarung Ristu Homestay Pacitan adalah penginapan yang terletak dekat dengan pantai Watukarung di Pacitan, Jawa Timur, Indonesia. Homestay ini menawarkan akomodasi yang sederhana namun nyaman dengan suasana yang ramah dan hangat. Pengunjung dapat menikmati akses yang mudah ke pantai yang terkenal dengan ombaknya yang cocok untuk berselancar, serta menikmati keindahan alam sekitarnya. Fasilitas yang tersedia biasanya mencakup kamar-kamar dengan pemandangan ke pantai atau taman, serta area parkir dan tempat bersantai yang menyenangkan bagi tamu.', 'https://www.traveloka.com/id-id/hotel/indonesia/watukarung-ristu-homestay-3000020017527?contexts=%7B%22accessCode%22%3A%222023IDSEO2023%22%7D', '239-Watukarung Ristu Homestay.jpg'),
(5, 'Hotel Kampoeng Pacitan', 'Hotel Kampoeng Pacitan adalah penginapan yang terletak di Pacitan, Jawa Timur, Indonesia, yang menawarkan pengalaman menginap yang tradisional namun nyaman. Terinspirasi oleh desain arsitektur Jawa, hotel ini menampilkan bangunan dengan nuansa kampoeng atau desa yang menghadirkan suasana yang tenang dan alami. Fasilitas yang biasanya tersedia mencakup kamar-kamar yang dilengkapi dengan baik, restoran yang menyajikan masakan lokal, serta ruang terbuka dan taman yang luas untuk bersantai.', 'https://www.traveloka.com/id-id/hotel/indonesia/hotel-kampoeng-pacitan-3000020009732?contexts=%7B%22accessCode%22%3A%222023IDSEO2023%22%7D', '531-Hotel Kampung Pacitan.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wisata_alam`
--

CREATE TABLE `wisata_alam` (
  `id_wa` int(11) NOT NULL,
  `nama_wisata` varchar(100) COLLATE utf16_bin NOT NULL DEFAULT '',
  `deskripsi` text COLLATE utf16_bin NOT NULL,
  `alamat` text COLLATE utf16_bin NOT NULL,
  `gambar` varchar(50) COLLATE utf16_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `wisata_alam`
--

INSERT INTO `wisata_alam` (`id_wa`, `nama_wisata`, `deskripsi`, `alamat`, `gambar`) VALUES
(3, 'Pantai Klayar', 'Pantai Klayar terkenal dengan pemandangan pasir putihnya yang bersih dan formasi batuan karst yang unik. Salah satu daya tarik utamanya adalah seruling laut, formasi batuan yang memancarkan bunyi seruling ketika ombak menghantamnya.', 'https://maps.app.goo.gl/sGEtMJub4g7xCMS29', '682-Pantai Klayar.jpg'),
(6, 'Pantai Watu Karung', 'Pantai Watu Karung adalah surga bagi para peselancar dengan ombak besar yang menantang. Selain itu, pemandangan batu karang di sekitar pantai memberikan nuansa eksotis dan alami.', 'https://maps.app.goo.gl/UjSzrX8L6Ft1KNVh6', '844-Pantai Watu Karung.jpg'),
(7, 'Goa Gong', 'Goa Gong adalah salah satu gua terindah di Asia Tenggara dengan stalaktit dan stalagmit yang megah. Gua ini juga memiliki ruang-ruang besar dengan pencahayaan warna-warni yang menambah keindahannya.', 'https://maps.app.goo.gl/Z9Wm9g1jMD2bJPNd9', '599-Goa Gong.jpg'),
(8, 'Goa Tabuhan', 'Gua ini dinamakan Goa Tabuhan karena suara tetesan air di dalam gua yang menyerupai bunyi tabuhan gamelan. Selain keindahan gua, di sini juga sering diadakan pertunjukan musik tradisional.', 'https://maps.app.goo.gl/wjsMxohBJGWymXBRA', '127-Goa Tabuhan.jpg'),
(9, 'Sungai Maron', 'Sungai Maron sering disebut sebagai \"Amazon-nya Pacitan\" karena keindahan dan kehijauan alam sekitarnya. Pengunjung bisa menikmati pemandangan ini dengan menyusuri sungai menggunakan perahu.', 'https://maps.app.goo.gl/SPfU6n7d1riC9iJJ9', '871-Sungai Maron.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wisata_budaya`
--

CREATE TABLE `wisata_budaya` (
  `id_wb` int(11) NOT NULL,
  `nama_wisata` varchar(100) COLLATE utf16_bin NOT NULL,
  `deskripsi` text COLLATE utf16_bin NOT NULL,
  `gambar` varchar(50) COLLATE utf16_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `wisata_budaya`
--

INSERT INTO `wisata_budaya` (`id_wb`, `nama_wisata`, `deskripsi`, `gambar`) VALUES
(2, 'Festival Ronthek', 'Festival ronthek adalah pertunjukan musik tradisional khas Pacitan yang menggunakan alat musik dari bambu yang disebut ronthek. Festival ini sering diadakan untuk memperingati hari-hari besar atau acara-acara penting di Pacitan.', '663-Festival Ronthek.jpg'),
(3, 'Wayang Kulit', 'Wayang Kulit adalah seni pertunjukan tradisional yang menggunakan bayangan boneka kulit untuk menceritakan epos-epos klasik seperti Ramayana dan Mahabharata. Pacitan memiliki sejumlah dalang terkenal yang mempertahankan tradisi ini.', '596-Wayang Kulit.jpg'),
(4, 'Kethek Ogleng', 'Kethek Ogleng adalah tarian tradisional khas Pacitan, Jawa Timur, yang menggambarkan gerakan dan tingkah laku kera dengan gerakan tari dinamis dan musik tradisional yang menghentak. Dipentaskan oleh penari laki-laki dengan kostum dan topeng menyerupai kera, tarian ini sering tampil dalam acara adat, festival budaya, dan upacara penting di Pacitan.', '976-Kethek Ogleng.jpg'),
(5, 'Mantu Kucing', 'Mantu Kucing adalah tradisi unik dari Pacitan, Jawa Timur, yang melibatkan upacara pernikahan simbolis untuk sepasang kucing, dilakukan sebagai bentuk doa untuk keberkahan, khususnya saat musim tanam atau kemarau panjang. Dalam upacara ini, kucing-kucing diperlakukan seperti pengantin manusia dengan pakaian adat dan prosesi pernikahan lengkap, termasuk sesajen. Upacara ini dipimpin oleh seorang tokoh adat dan diiringi musik tradisional, dihadiri oleh masyarakat yang memberikan persembahan dan doa bersama.', '655-Mantu Kucing.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wisata_religi`
--

CREATE TABLE `wisata_religi` (
  `id_wr` int(11) NOT NULL,
  `nama_wisata` varchar(100) COLLATE utf16_bin NOT NULL,
  `deskripsi` text COLLATE utf16_bin NOT NULL,
  `alamat` text COLLATE utf16_bin NOT NULL,
  `gambar` varchar(50) COLLATE utf16_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `wisata_religi`
--

INSERT INTO `wisata_religi` (`id_wr`, `nama_wisata`, `deskripsi`, `alamat`, `gambar`) VALUES
(2, 'Makam Ki Ageng Petung', 'Ki Ageng Petung adalah tokoh penyebar agama Islam di Pacitan. Makamnya sering dikunjungi oleh peziarah yang datang untuk mendoakan arwah dan mencari berkah. Lokasinya yang tenang membuat tempat ini menjadi tempat yang cocok untuk refleksi dan doa.', 'https://maps.app.goo.gl/tMeZXtup6vX4nvt68', '552-Makam Ki Ageng Pentung.jpg'),
(3, 'Pondok Pesantren Tremas', 'Pondok Pesantren Tremas adalah salah satu pesantren tertua di Pacitan, yang didirikan oleh KH. Abdullah Faqih. Pesantren ini memiliki sejarah panjang dalam pendidikan Islam dan sering dikunjungi oleh para santri dari berbagai daerah untuk menimba ilmu agama.', 'https://maps.app.goo.gl/g3SgXZigdzaMpnA47', '597-Pondok Pesantren Tremas.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id_about`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `kuliner`
--
ALTER TABLE `kuliner`
  ADD PRIMARY KEY (`id_kul`);

--
-- Indexes for table `penginapan`
--
ALTER TABLE `penginapan`
  ADD PRIMARY KEY (`id_peng`);

--
-- Indexes for table `wisata_alam`
--
ALTER TABLE `wisata_alam`
  ADD PRIMARY KEY (`id_wa`);

--
-- Indexes for table `wisata_budaya`
--
ALTER TABLE `wisata_budaya`
  ADD PRIMARY KEY (`id_wb`);

--
-- Indexes for table `wisata_religi`
--
ALTER TABLE `wisata_religi`
  ADD PRIMARY KEY (`id_wr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id_about` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kuliner`
--
ALTER TABLE `kuliner`
  MODIFY `id_kul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `penginapan`
--
ALTER TABLE `penginapan`
  MODIFY `id_peng` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wisata_alam`
--
ALTER TABLE `wisata_alam`
  MODIFY `id_wa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wisata_budaya`
--
ALTER TABLE `wisata_budaya`
  MODIFY `id_wb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wisata_religi`
--
ALTER TABLE `wisata_religi`
  MODIFY `id_wr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
