-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2023 at 04:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookorama_kelas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `email`, `password`) VALUES
(1, 'michelle@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `isbn` varchar(13) NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` float(4,2) DEFAULT NULL,
  `jml_halaman` int(11) DEFAULT 0,
  `tgl_terbit` date DEFAULT NULL,
  `penerbit` varchar(100) DEFAULT NULL,
  `img_url` varchar(100) NOT NULL DEFAULT 'assets/notFound.png',
  `categoryid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`isbn`, `author`, `title`, `price`, `jml_halaman`, `tgl_terbit`, `penerbit`, `img_url`, `categoryid`) VALUES
('0-672-31745-7', 'Harper Lee', 'To Kill a Mockingbird', 12.99, 0, NULL, NULL, 'assets/notFound.png', 4),
('0-672-31745-1', 'Thomas Down', 'Installing Debian GNU/Linux', 24.12, 0, NULL, NULL, 'assets/notFound.png', 1),
('0-672-21322-9', 'oasndoiasjdoisandjasndoias', 'asdassdas', 34.95, 0, NULL, NULL, 'assets/notFound.png', 1),
('0-672-34122-9', 'dsada', 'asjkdasd', 12.00, 0, NULL, NULL, 'assets/notFound.png', 3),
('1-400-03271-6', 'George Orwell', '1984', 10.49, 328, '1949-06-08', 'Secker & Warburg', 'assets/notFound.png', 2),
('0-061-12008-4', 'Jane Austen', 'Pride and Prejudice', 12.99, 320, '1813-01-28', 'T. Egerton', 'assets/pride.jpg', 1),
('1-451-67331-9', 'J.D. Salinger', 'The Cather in the Rye', 13.99, 270, '1951-07-16', 'Little, Brown and Company', 'assets/notFound.png', 3),
('0-545-58295-7', 'Suzanne Collins', 'The Hunger Games', 11.99, 310, '2008-09-14', 'Scholastic', 'assets/notFound.png', 3),
('0-743-27356-5', 'Herman Melville', 'Moby-Dick', 16.99, 290, '1851-10-18', 'Harper & Brothers', 'assets/notFound.png', 2),
('0-451-52634-2', 'J.R.R. Tolkien', 'The Lord of the Rings', 16.99, 420, '1954-07-29', 'George Allen & Unwin', 'assets/notFound.png', 3),
('0-672-31697-8', 'Michael Morgan', 'Java 2 for Professional Developers', 34.50, 0, NULL, NULL, 'assets/notFound.png', 3),
('1-298-19822-2', 'Rhadiyyah', 'Masa Remaja', 82.90, 0, NULL, NULL, 'assets/notFound.png', 1),
('0-672-31697-3', 'sadas', 'landing', 80.21, 0, NULL, NULL, 'assets/notFound.png', 4),
('0-061-21312-6', 'Uwuwuwuuw', 'adadasdas', 12.00, 0, NULL, NULL, 'assets/notFound.png', 2),
('0-672-31237-9', 'asddasd', 'head of economics and finance division', 21.54, 0, NULL, NULL, 'assets/notFound.png', 4);

-- --------------------------------------------------------

--
-- Table structure for table `book_reviews`
--

CREATE TABLE `book_reviews` (
  `isbn` char(13) NOT NULL,
  `review` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `book_reviews`
--

INSERT INTO `book_reviews` (`isbn`, `review`) VALUES
('0-672-31697-8', 'Morgan\'s book is clearly written and goes well beyond \r\n                     most of the basic Java books out there.'),
('0-061-12008-4', 'Ini adalah review buku dengan ISBN 0-672-31745-1. Buku ini sangat menginspirasi dan memiliki karakter-karakter yang mendalam. Review ini akan mencakup berbagai aspek dari buku ini, termasuk plot yang kuat, konflik yang memikat, dan pesan moral yang disampaikan oleh penulis. Buku ini memiliki 350 halaman, diterbitkan pada 15 Mei 2008 oleh Penerbit XYZ.'),
('1-984-85556-1', 'Buku \"The Great Gatsby\" karya F. Scott Fitzgerald adalah salah satu karya klasik dalam sastra Amerika. Dengan gaya penulisan yang indah dan karakter yang kompleks, buku ini mengeksplorasi tema sosial dan moral dalam era Roaring Twenties. Pembaca akan terkesan dengan narasi yang kaya dan alur cerita yang penuh intrik.'),
('0-672-31509-2', 'Buku \"Teach Yourself GIMP in 24 Hours\" adalah panduan yang sangat berguna bagi mereka yang ingin menguasai perangkat lunak pengeditan gambar GIMP. Buku ini menyajikan tutorial-tutorial praktis dengan langkah-langkah yang jelas dan mudah diikuti. Dengan bantuan buku ini, maka akan mendapat meningkatkan kemampuan editing gambar dengan cepat.'),
('0-672-31769-9', 'Jika tertarik dalam administrasi sistem Linux, buku \"Caldera OpenLinux System Administration Unleashed\" adalah sumber daya yang berharga. Buku ini mencakup berbagai aspek administrasi sistem Linux dengan detail yang komprehensif. Akan belajar tentang konfigurasi, manajemen pengguna, keamanan, dan banyak lagi.'),
('0-672-31745-1', 'Buku \"Installing Debian GNU/Linux\" oleh Thomas Down adalah panduan yang sangat berguna bagi mereka yang ingin menguasai sistem operasi Linux Debian. Buku ini memberikan instruksi langkah demi langkah tentang cara menginstal dan mengkonfigurasi Debian Linux. Penulis menjelaskan dengan jelas proses instalasi dan konfigurasi, membuatnya mudah diikuti bahkan oleh pemula. Buku ini sangat dianjurkan untuk siapa saja yang ingin memahami Debian Linux.'),
('0-672-31281-1', 'Novel \"Jakarta dan Debu Adalah Kawan\" oleh Clarita Michelle adalah sebuah karya sastra Indonesia yang menarik. Cerita ini membawa pembaca dalam petualangan yang penuh intrik di kota Jakarta. Karakter-karakternya kuat dan berkembang dengan baik sepanjang cerita. Dengan latar belakang yang menarik dan dialog yang hidup, novel ini menangkap nuansa Jakarta dengan baik. Saya sangat menikmati membaca buku ini dan merekomendasikannya kepada mereka yang menyukai cerita lokal yang kuat.'),
('1-400-03271-6', 'Buku \"1984\" karya George Orwell menggambarkan dunia dystopian yang mencekam. Pembaca diajak merenungkan tentang kebebasan, privasi, dan kekuatan pemerintah. Bahasa yang tajam dan cerita yang kuat menjadikan \"1984\" salah satu novel terpenting dalam sastra abad ke-20. Saya sangat merekomendasikan buku ini kepada semua orang yang ingin merenungkan dunia yang mungkin kita alami.'),
('0-743-27356-5', 'Herman Melville, seorang penulis klasik Amerika, menampilkan karyanya yang puncak dalam \"Moby-Dick.\" Novel ini menceritakan perburuan seekor paus raksasa oleh kapten kapal, Ahab, yang penuh dengan obsesi. Melalui kisah petualangan ini, Melville menyelidiki tema-tema seperti obsesi, takdir, dan kekuatan alam. Cerita ini penuh dengan simbolisme dan bahasa yang indah. \"Moby-Dick\" merupakan sebuah karya sastra yang mendalam dan menarik, sangat dianjurkan untuk para pecinta sastra.');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryid`, `name`) VALUES
(1, 'Education'),
(2, 'Fiction'),
(3, 'Motivation'),
(4, 'Romance');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`) VALUES
(1, 'Michelle Arthur', '357 North Road A', 'Box Hill'),
(2, 'Anne', 'Boulevard &#039; Street', 'Airport West'),
(137, 'Yohanes', 'jl durian', 'Airport West'),
(138, '', 'sfafassadas', 'Airport West'),
(139, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` float(6,2) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`) VALUES
(1, 3, 69.98, '2000-04-02'),
(2, 1, 49.99, '2000-04-15'),
(3, 2, 74.98, '2000-04-19'),
(4, 3, 24.99, '2000-05-01'),
(5, 0, 24.00, '2023-09-24'),
(6, 0, 11.99, '2023-09-24'),
(7, 0, 33.98, '2023-09-24'),
(8, 0, 60.93, '2023-09-24'),
(9, 0, 149.21, '2023-09-24'),
(10, 0, 23.98, '2023-09-24'),
(11, 0, 11.99, '2023-09-24'),
(12, 0, 25.98, '2023-09-24');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `isbn` char(13) NOT NULL,
  `quantity` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `isbn`, `quantity`) VALUES
(1, '0-672-31697-8', 2),
(2, '0-672-31769-9', 1),
(5, '0-061-12008-4', 1),
(3, '0-672-31509-2', 1),
(4, '0-672-31745-1', 3),
(6, '0-451-52634-2', 1),
(7, '0-672-31697-3', 2),
(8, '0-061-12008-4', 6),
(9, '0-451-52634-2', 2),
(10, '0-061-12008-4', 2),
(11, '0-061-21312-6', 2),
(12, '0-545-58295-7', 1),
(13, '0-451-52634-2', 2),
(14, '0-672-21322-9', 1),
(15, '0-672-31745-7', 2),
(0, '0-672-31697-3', 1),
(0, '0-672-31697-8', 2),
(0, '0-545-58295-7', 2),
(0, '0-545-58295-7', 1),
(0, '0-061-12008-4', 2);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `isbn` varchar(13) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `rating` int(5) NOT NULL,
  `ID_review` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`isbn`, `name`, `desc`, `rating`, `ID_review`) VALUES
('0-061-12008-4', 'Hana Shabrina', 'Bagus banget bukunyaaa', 5, 1),
('0-061-12008-4', 'Rhad Rhad', 'Gila sii ga nyangka akhirnya kayak gitu', 4, 2),
('0-061-12008-4', 'Nidaaa', 'Mantap betul saya suka', 5, 3),
('0-672-31745-3', 'waduh', 'aku seneng bangettt', 5, 5),
('0-061-12008-4', 'Ucup', 'bagus banget', 5, 6),
('1-400-03271-6', 'Ucup', 'kiw kiww', 4, 7),
('0-672-31697-8', 'Aditya Yusuf', 'Buku ini sangat bagus dan informatif!', 5, 8),
('0-672-31697-8', 'Kristian David', 'Saya suka buku ini, sangat membantu', 4, 9),
('1-984-85556-1', 'Hana Shabrina', 'Buku ini luar biasa!', 5, 10),
('1-984-85556-1', 'Nida Naafilatul', 'Ceritanya menarik', 3, 11),
('0-672-31509-2', 'Rhadiyyah Ariana', 'Sangat informatif', 4, 12),
('0-672-31509-2', 'Abigail Farren', 'Saya tidak suka buku ini', 2, 13),
('0-672-31769-9', 'Prazka Aldiyuda', 'Buku ini membantu saya belajar tentang Linux', 4, 14),
('0-672-31769-9', 'Alif Istiqlal', 'Tidak terlalu bagus', 3, 15),
('0-672-31281-1', 'Satria Rafif', 'Ceritanya sangat menarik', 5, 16),
('0-672-31281-1', 'Ririn Indah', 'Tidak terlalu suka dengan buku ini', 2, 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`isbn`),
  ADD KEY `categoryid` (`categoryid`);

--
-- Indexes for table `book_reviews`
--
ALTER TABLE `book_reviews`
  ADD PRIMARY KEY (`isbn`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD KEY `FKEY` (`orderid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`ID_review`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `ID_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
