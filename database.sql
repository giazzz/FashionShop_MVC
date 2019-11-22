-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2019 at 06:11 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `babyshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalogs`
--

CREATE TABLE `catalogs` (
  `Id` int(11) NOT NULL,
  `Name` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `catalogs`
--

INSERT INTO `catalogs` (`Id`, `Name`) VALUES
(2, 'Girls clothing'),
(3, 'Boys Clothing'),
(4, 'Bag'),
(5, 'Shoes'),
(6, 'Hat');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `Id` int(11) NOT NULL,
  `ColorName` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`Id`, `ColorName`) VALUES
(1, 'Red'),
(2, 'Blue'),
(3, 'White'),
(4, 'Gray'),
(5, 'Black');

-- --------------------------------------------------------

--
-- Table structure for table `productcolors`
--

CREATE TABLE `productcolors` (
  `ProductId` int(11) NOT NULL,
  `ColorId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productcolors`
--

INSERT INTO `productcolors` (`ProductId`, `ColorId`) VALUES
(1, 2),
(1, 4),
(2, 5),
(3, 4),
(3, 5),
(4, 2),
(5, 2),
(6, 4),
(7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `Name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `Price` float NOT NULL,
  `Image` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `Quantity` int(11) NOT NULL,
  `AgeMin` int(11) NOT NULL,
  `AgeMax` int(11) NOT NULL,
  `Gender` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `CatalogID` int(11) NOT NULL,
  `CreateAt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Id`, `Name`, `Price`, `Image`, `Description`, `Quantity`, `AgeMin`, `AgeMax`, `Gender`, `CatalogID`, `CreateAt`) VALUES
(1, 'Blue Denim Top', 39.99, 'https://res.cloudinary.com/dev20/image/upload/v1573923835/BabyShop/image%20BabyShop/baby-prod5-1_znlzhv.jpg', 'We’re very pleased to introduce you our training gear store that was created to treat your sport passions! That’s too important to keep a good shape in this busy life. Sport can be a good way to relax your mind, to unwind your mental health with a top-notch training process.', 10, 4, 8, 'Girl', 2, 1574061225987),
(2, 'Kitty Baby Sneakers', 59.99, 'https://res.cloudinary.com/dev20/image/upload/v1574060857/BabyShop/image%20BabyShop/baby-prod7-1_wtvnhz.jpg', 'We’re very pleased to introduce you our training gear store that was created to treat your sport passions! That’s too important to keep a good shape in this busy life. Sport can be a good way to relax your mind, to unwind your mental health with a top-notch training process.', 15, 1, 4, 'Girl', 5, 1574061025987),
(3, 'Super Star Knit Hat', 12.99, 'https://res.cloudinary.com/dev20/image/upload/v1574060858/BabyShop/image%20BabyShop/baby-prod17-2_nhqvel.jpg', 'We’re very pleased to introduce you our training gear store that was created to treat your sport passions! That’s too important to keep a good shape in this busy life. Sport can be a good way to relax your mind, to unwind your mental health with a top-notch training process.', 20, 4, 8, 'Boy', 6, 1574061090874),
(4, 'T-shirt The Best', 19.99, 'https://res.cloudinary.com/dev20/image/upload/v1574060859/BabyShop/image%20BabyShop/baby-prod3-1_c9unij.jpg', 'We’re very pleased to introduce you our training gear store that was created to treat your sport passions! That’s too important to keep a good shape in this busy life. Sport can be a good way to relax your mind, to unwind your mental health with a top-notch training process.', 8, 8, 12, 'Boy', 3, 1574061148145),
(5, 'Light Denim Dress', 27.99, 'https://res.cloudinary.com/dev20/image/upload/v1574060858/BabyShop/image%20BabyShop/baby-prod2-1_n5ac7c.jpg', 'We’re very pleased to introduce you our training gear store that was created to treat your sport passions! That’s too important to keep a good shape in this busy life. Sport can be a good way to relax your mind, to unwind your mental health with a top-notch training process.', 18, 4, 8, 'Girl', 2, 1574061211417),
(6, 'Teddy Bear Hat', 29.99, 'https://res.cloudinary.com/dev20/image/upload/v1574060858/BabyShop/image%20BabyShop/baby-prod15-1_vp7iy8.jpg', 'We’re very pleased to introduce you our training gear store that was created to treat your sport passions! That’s too important to keep a good shape in this busy life. Sport can be a good way to relax your mind, to unwind your mental health with a top-notch training process.', 20, 1, 4, 'Girl', 6, 1574061295595),
(7, 'Funny Bunny Jumpsuit', 49.99, 'https://res.cloudinary.com/dev20/image/upload/v1574060858/BabyShop/image%20BabyShop/baby-prod19-1_zo8xtd.jpg', 'We’re very pleased to introduce you our training gear store that was created to treat your sport passions! That’s too important to keep a good shape in this busy life. Sport can be a good way to relax your mind, to unwind your mental health with a top-notch training process.', 8, 0, 1, 'Girl', 2, 1574061405364),
(8, 'Denim Jumpsuit', 29.9, 'https://res.cloudinary.com/dev20/image/upload/v1574440847/BabyShop/image%20BabyShop/baby-prod22-1_xo6b6s.jpg', 'We’re very pleased to introduce you our training gear store that was created to treat your sport passions! That’s too important to keep a good shape in this busy life. Sport can be a good way to relax your mind, to unwind your mental health with a top-notch training process.', 8, 4, 8, 'Girl', 2, 1574440992401),
(9, 'Not Afraid Cotton T-shirt', 14.99, 'https://res.cloudinary.com/dev20/image/upload/v1574440847/BabyShop/image%20BabyShop/baby-prod1-1_hhtfxl.jpg', 'We’re very pleased to introduce you our training gear store that was created to treat your sport passions! That’s too important to keep a good shape in this busy life. Sport can be a good way to relax your mind, to unwind your mental health with a top-notch training process.', 18, 4, 8, 'Boy', 3, 1574441038136),
(10, 'Surfin’ Wild T-shirt', 24.99, 'https://res.cloudinary.com/dev20/image/upload/v1574440847/BabyShop/image%20BabyShop/baby-prod6-1_naokjz.jpg', 'We’re very pleased to introduce you our training gear store that was created to treat your sport passions! That’s too important to keep a good shape in this busy life. Sport can be a good way to relax your mind, to unwind your mental health with a top-notch training process.', 20, 4, 8, 'Girl', 2, 1574441110288),
(11, 'Love Cat T-shirt', 59.99, 'https://res.cloudinary.com/dev20/image/upload/v1574440846/BabyShop/image%20BabyShop/baby-prod4-1_udkle2.jpg', 'We’re very pleased to introduce you our training gear store that was created to treat your sport passions! That’s too important to keep a good shape in this busy life. Sport can be a good way to relax your mind, to unwind your mental health with a top-notch training process.', 18, 8, 12, 'Girl', 2, 1574441149860),
(12, 'Moccis', 25, 'https://res.cloudinary.com/dev20/image/upload/v1574442153/BabyShop/image%20BabyShop/moccis-ivory-warm-heart-3_lwdeam.jpg', 'We’re very pleased to introduce you our training gear store that was created to treat your sport passions! That’s too important to keep a good shape in this busy life. Sport can be a good way to relax your mind, to unwind your mental health with a top-notch training process.', 24, 1, 4, 'Girl', 5, 1574442220954),
(13, 'Ugg Australia', 125, 'https://res.cloudinary.com/dev20/image/upload/v1574442147/BabyShop/image%20BabyShop/ugg-australia-brown-1_jgllry.jpg', 'We’re very pleased to introduce you our training gear store that was created to treat your sport passions! That’s too important to keep a good shape in this busy life. Sport can be a good way to relax your mind, to unwind your mental health with a top-notch training process.', 22, 4, 8, 'Girl', 5, 1574442265970),
(14, 'Tutto Piccolo', 31, 'https://res.cloudinary.com/dev20/image/upload/v1574442142/BabyShop/image%20BabyShop/tutto-piccolo-red-cotton-pom-1_ur0q0c.jpg', 'We’re very pleased to introduce you our training gear store that was created to treat your sport passions! That’s too important to keep a good shape in this busy life. Sport can be a good way to relax your mind, to unwind your mental health with a top-notch training process.', 8, 8, 12, 'Girl', 6, 1574442307383),
(15, 'Burberry', 150, 'https://res.cloudinary.com/dev20/image/upload/v1574442136/BabyShop/image%20BabyShop/burberry-beige-1_hjazbw.jpg', 'We’re very pleased to introduce you our training gear store that was created to treat your sport passions! That’s too important to keep a good shape in this busy life. Sport can be a good way to relax your mind, to unwind your mental health with a top-notch training process.', 28, 4, 8, 'Boy', 5, 1574442340086);

-- --------------------------------------------------------

--
-- Table structure for table `productsizes`
--

CREATE TABLE `productsizes` (
  `ProductId` int(11) NOT NULL,
  `SizeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productsizes`
--

INSERT INTO `productsizes` (`ProductId`, `SizeId`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6),
(2, 7),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(7, 1),
(7, 2),
(7, 3),
(7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `Id` int(11) NOT NULL,
  `NameSize` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`Id`, `NameSize`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'L'),
(4, 'XL'),
(5, '28'),
(6, '29'),
(7, '30');

-- --------------------------------------------------------

--
-- Table structure for table `thumbnails`
--

CREATE TABLE `thumbnails` (
  `Id` int(11) NOT NULL,
  `Link1` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `Link2` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `Link3` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thumbnails`
--

INSERT INTO `thumbnails` (`Id`, `Link1`, `Link2`, `Link3`) VALUES
(1, 'https://res.cloudinary.com/dev20/image/upload/v1573923835/BabyShop/image%20BabyShop/baby-prod5-1_znlzhv.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1573923835/BabyShop/image%20BabyShop/baby-prod5-2_x6a9zj.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1573923835/BabyShop/image%20BabyShop/baby-prod5-3_idlisq.jpg'),
(2, 'https://res.cloudinary.com/dev20/image/upload/v1574060857/BabyShop/image%20BabyShop/baby-prod7-1_wtvnhz.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574060857/BabyShop/image%20BabyShop/baby-prod7-2_gvphhl.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574060857/BabyShop/image%20BabyShop/baby-prod7-3_mlxrdq.jpg'),
(3, 'https://res.cloudinary.com/dev20/image/upload/v1574060858/BabyShop/image%20BabyShop/baby-prod17-2_nhqvel.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574060858/BabyShop/image%20BabyShop/baby-prod17-5_ccphga.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574060858/BabyShop/image%20BabyShop/baby-prod17-3_xduihr.jpg'),
(4, 'https://res.cloudinary.com/dev20/image/upload/v1574060859/BabyShop/image%20BabyShop/baby-prod3-1_c9unij.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574060859/BabyShop/image%20BabyShop/baby-prod3-2_cdsvpd.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574060859/BabyShop/image%20BabyShop/baby-prod3-3_btlw0t.jpg'),
(5, 'https://res.cloudinary.com/dev20/image/upload/v1574060858/BabyShop/image%20BabyShop/baby-prod2-1_n5ac7c.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574060858/BabyShop/image%20BabyShop/baby-prod2-2_fkcht3.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574060859/BabyShop/image%20BabyShop/baby-prod2-3_svjvwe.jpg'),
(6, 'https://res.cloudinary.com/dev20/image/upload/v1574060858/BabyShop/image%20BabyShop/baby-prod15-1_vp7iy8.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574060858/BabyShop/image%20BabyShop/baby-prod15-2_ocaijf.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574060857/BabyShop/image%20BabyShop/baby-prod15-3_uflamk.jpg'),
(7, 'https://res.cloudinary.com/dev20/image/upload/v1574060858/BabyShop/image%20BabyShop/baby-prod19-1_zo8xtd.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574060859/BabyShop/image%20BabyShop/baby-prod19-2_mhy4yr.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574060859/BabyShop/image%20BabyShop/baby-prod19-3_ar48kr.jpg'),
(8, 'https://res.cloudinary.com/dev20/image/upload/v1574440847/BabyShop/image%20BabyShop/baby-prod22-1_xo6b6s.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574440847/BabyShop/image%20BabyShop/baby-prod22-2_rcmtbl.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574440848/BabyShop/image%20BabyShop/baby-prod22-3_yoku94.jpg'),
(9, 'https://res.cloudinary.com/dev20/image/upload/v1574440847/BabyShop/image%20BabyShop/baby-prod1-1_hhtfxl.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574440846/BabyShop/image%20BabyShop/baby-prod1-2_a44mqn.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574440846/BabyShop/image%20BabyShop/baby-prod1-3_ruucbf.jpg'),
(10, 'https://res.cloudinary.com/dev20/image/upload/v1574440847/BabyShop/image%20BabyShop/baby-prod6-1_naokjz.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574440847/BabyShop/image%20BabyShop/baby-prod6-2_oznyjo.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574440847/BabyShop/image%20BabyShop/baby-prod6-3_mgji62.jpg'),
(11, 'https://res.cloudinary.com/dev20/image/upload/v1574440846/BabyShop/image%20BabyShop/baby-prod4-1_udkle2.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574440846/BabyShop/image%20BabyShop/baby-prod4-2_sk4w9v.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574440846/BabyShop/image%20BabyShop/baby-prod4-3_fsar7g.jpg'),
(12, 'https://res.cloudinary.com/dev20/image/upload/v1574442153/BabyShop/image%20BabyShop/moccis-ivory-warm-heart-1_uxt6ss.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574442153/BabyShop/image%20BabyShop/moccis-ivory-warm-heart-3_lwdeam.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574442153/BabyShop/image%20BabyShop/moccis-ivory-warm-heart-2_yf3glz.jpg'),
(13, 'https://res.cloudinary.com/dev20/image/upload/v1574442147/BabyShop/image%20BabyShop/ugg-australia-brown-1_jgllry.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574442147/BabyShop/image%20BabyShop/ugg-australia-brown-2_yfhclg.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574442148/BabyShop/image%20BabyShop/ugg-australia-brown-3_rapg36.jpg'),
(14, 'https://res.cloudinary.com/dev20/image/upload/v1574442142/BabyShop/image%20BabyShop/tutto-piccolo-red-cotton-pom-1_ur0q0c.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574442143/BabyShop/image%20BabyShop/tutto-piccolo-red-cotton-pom-2_jufk4c.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574442142/BabyShop/image%20BabyShop/tutto-piccolo-red-cotton-pom-3_hpb4uw.jpg'),
(15, 'https://res.cloudinary.com/dev20/image/upload/v1574442136/BabyShop/image%20BabyShop/burberry-beige-1_hjazbw.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574442135/BabyShop/image%20BabyShop/burberry-beige-2_bd4dil.jpg', 'https://res.cloudinary.com/dev20/image/upload/v1574442136/BabyShop/image%20BabyShop/burberry-beige-3_mtaxi4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `__migrationhistory`
--

CREATE TABLE `__migrationhistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8 NOT NULL,
  `ContextKey` varchar(300) CHARACTER SET utf8 NOT NULL,
  `Model` longblob NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `__migrationhistory`
--

INSERT INTO `__migrationhistory` (`MigrationId`, `ContextKey`, `Model`, `ProductVersion`) VALUES
('201911161718239_AddAll', 'BabyShop.Migrations.Configuration', 0x1f8b0800000000000400ed5acd6ee33610be17e83b083a16592b8eb1401bd8bbc8da4961749da471b2e82da025da2196a254910a6c147db21efa487d858efe284a9464598e9d605b04086c92f3cd703833a2bef13f7ffd3dfcb876a9f18c034e3c3632fbbd53d3c0ccf61cc256233314cb773f9a1f3f7cffddf0d271d7c6976cdd205a07928c8fcc2721fc73cbe2f6137611efb9c40e3cee2d45cff65c0b399e75767afa93d5ef5b18204cc0328ce15dc8047171fc05be8e3d66635f8488ce3c07539e8ec3cc3c4635ae918bb98f6c3c323fa1c566fee4f9bd64a9695c5082c08c39a64bd3408c79020930f2fc81e3b9083cb69afb3080e8fdc6c7b06e8928c7a9f1e7f9f2b6fb383d8bf661e58219941d72e1b93b02f607a963acb27827f79ad271e0ba4b70b1d844bb8edd3732c74820eaad4ca3aceb7c4c83689de6dc5e2a726264132732062054a2bf13631c52110678c4702802444f8cdb704189fd0bdedc7b5f311bb19052d530300de60a0330741b783e0ec4e60e2f5373a78e69584539ab2c28c51499642753260667a6710dcad1826279eecaaee7c20bf0cf98e10009ecdc222170c0220c1c7b4ed35ed215fdcfb441a041c298c60cad3f63b6124f23133e9ac6155963271b492d786004f20b844410624dc9357a26abd8be923af8ea84b6308d3b4ce379fe44fc24ec7be9dca33ce1abc073ef3c9a8b65538ff728586140b9f7aae7e75e18d825b386561e4b8d11266d6c1f61a9c8ff1176b408d3e28ad887d73275d1eaf05a2698db01f193fa79605dbf86283dc4e6706846b958e11961fb63445bda070382d4c1c1c19d965699e964476b6baba2ac78fb55c5acead555c5ac6ab635ebfe2974170c115a69989c7d940533374d9bd44ab6be62afa2add8dabe6c4ba16fa8703787ee67c2bef60f9e209196b3a36819bc91bbcb8ec950ced4fa7469930c179c7b36894d2a9a2a8b46718797cc31b65490c4a74afd01cf421a101f021f2c18993f687eab4795a99fa3ca6a5644ed9be5b4b961134cb1c0c6859dbc8f8c11b791a31f1bf8c6298e40a6e120baa3200aaf661c729730a1a7256136f1116db6bd24d6329f23b3a482f2cc04fbd1e38a89e6b368a3597920e906483d257f6d73cfd052e2aa39dcf4e8af0b8d8654c88343a9e5c5f038edf5fa0d71d7f0d0d91acf3a6ea7f0a935e1080154ebdbeeba5f3c7692020632022470902a9f6d268b680cafabdeba1e384e9fe03c2dd9e5008830e75814b3819b465e2ecb65478ba12244eac02a08193f5b20e469548128115e8251fca69993df01955535d7c4f2516eaff97203eaf6b590d85ee5159cfc24cac5bab8cd162ea878c0ea4ed852875a56226503ea2136b8a2bef0b4706a8333b207becc979c52b4124e31e31ead1af2713843be0f1723858c4c478c79c2448edfcd7767e9dc04c3b279055927ad959a8417c08b7369165483a55724e0620271b240d1d56cecb8da32b53ad4e45ca6a95400f413cbf23013883e274235a46145f14c65af604f6e547d637e448f7a5d326682114541c5a57eecd1d065f5b5b85e3ae15754f9644447185a25d3b57aaf3948bb63151ddeea3864e0ef731c3509dde2386a255ffb38ea10522e4b854887da63a44c55611bc9507b8c020fa5221526dae3e55c930a968fb647caf82615271bdb0d257a452ca34463ed5132ce4945c9c6daa328377815a8e162ff6ae9ac3c13f749e8fc0ab47b4a37c81e26a953da4405488776c338d331ce76c518e81883a387877633292f91dae50da5741319a6b782edbd52ed9a902c310d70ce3371922bc2fc77da8be67bf1c73125b0e17cc50c31b2c45c24849df9bef7bed4717d3bdd4f8b7387b66b811e9d7324914fb7b68376a424d5fe10f5d82a790bcc4174926ee74ede7fd5515bfa645d410a6db0ae20155daeae50e52656ecfdbd5a585d11f20656178462fbaaab37b4ee546c8ac6aa4c41d77a64fe114b9d1bd3df1ea5e08971138021e7c6a9f1e7964d74e8cfbc4e32b6d8ffd4d961e35b5a2b5d0fafd039d90764f03225b57b6b4172554766fd3582aa5b37a313fb5bcf191caa5bf08db5077638b2568d803dda0afb748f8ecaf6bf7d7a5fe7f95a11f84dfc7df20a30329d8507679c54b55ab6b986dd6f22f7abf06b09dc5aeabf99f9afd2514f381fa13350f27b81cc6cd109a862bbdf22f3bf83b97555a5928b3808afafbf25437a2abf3b86bac0c92a87887e85ccb05d484cb966ca965e561b4a16654b4a57891916c88110b8080459225bc0b48d398f7f6af105d110965cba0bec4cd94d28fc50c096b1bba005362faa334dfae3e645d1e6e14dfc62c05f620b6026812de01bf62924d491765f55dc666b20a20296bec8456729a217bad546225d7bac2550ea3e5977efb1eb5300e3376c8e9e7117db1e38fe8c57c8de645c473dc8f68328ba7d382168152097a718b93c7c851876dcf5877f01f1b853997e2f0000, '6.2.0-61023'),
('201911180649340_creat', 'BabyShop.Migrations.Configuration', 0x1f8b0800000000000400ed5a5f6fdb36107f1fb0ef20e87148ad3859872db05ba4763218ab932e4e8abd05b4442b44294a13a9c0c6b04fb6877da47d859dfe519428c9b25cbb413704086c92f7bbe3f1ee27eacefffcf5f7e8eddaa3c6330e39f1d9d81c0e4e4d0333db770873c7662456af7e34dfbef9f69bd195e3ad8d8ff9baf3781d48323e369f84082e2c8bdb4fd8437ce0113bf4b9bf1203dbf72ce4f8d6d9e9e94fd6706861803001cb3046771113c4c3c917f83af1998d0311213af71d4c79360e338b04d5b8411ee601b2f1d87c87969bc5931f0cd2a5a671490902331698ae4c0331e60b24c0c88b078e1722f499bb086000d1fb4d8061dd0a518e33e32f8ae55df7717a16efc32a0473283be2c2f776041c9e678eb1aae2bddc6b4ac781ebaec0c56213ef3a71dfd89c2081a8ef9a4655d7c58486f13acdb9834ce4c4c8274e640c40a8c47f27c624a2220af198e14884889e181fa22525f62f7873ef7fc26ccc224a55c3c034982b0dc0d087d00f702836777895993b734cc32acb59554129a6c8a43b9931717e661a37a01c2d2996e7aeec7a21fc10ff8c190e91c0ce0724040e598c8113cf69da2bbae2ffb93608344818d398a3f57bcc5cf13436e1a3695c933576f291cc82074620bf40488411d694dca067e226f655d4c15727b28569dc619accf32712a4613fc8e61ee5095f87be77e7d3422c9f7abc47a18b01e5deaf9f5ff8516857cc1a59452cb54698b4b17b846522ff47d8d1224c8b2b621f5ecbcc43eee1b54c31b74312a4fc79605dbf46283bc4f6706847b974f19cb0fd31e22ded830141eae0f0e04ecb586636ddcfda498821a12e8582f2c3f7db511ab955f2e67edc9a736713b7e6dcdbd5acfba7c85b324468ad6172f651d26e619a36a911bfbe622fea576ced4efe52e82ba2fff6c87d4fd8a7e1c1d32cd67276142de72fe406b463325433b5395dba24c325e7be4d1293caa64ad228eff08a39c61606497daaf00f7816d2800410f860c1d8fc4ef35b33aa4cfd0255b25919756856d3e6964d31c5021b9776fa563341dc468e7e6ce01ba73c029986c3f8a68328bce071c85dc2849e9684d92440b4ddf68a58c77c8ecd920aaa33531cc40f3d26dacfa28b66e5b1a61b20f554fcb5cd3d234b89abf670d3a3bf29345a52a1080e85cbcbe1713a180c5be2aee5a1b3359e75dc5ee1d368c21102a8d1b7fd757ff6d849090c640448e030533edf4c97f1185ed7bdbb3d709c3dc17946d9d5008831175894b3819b46419755dad162a80c9139b00e42c6cf1608791a75204a84576014bf69e61477406555c335b17a94db395f6e40ddbe1612db595ec1294ea24ad6e56d767041cd035677c2161eeac844ca06d4436c714533f174706a8b33f207becc97a23069a595c9bc8269359430477314047031524a9ad988b148eb9993578bdd6b7d5e8a61d9bca6e427ad959a841fc2eb7765165483a5d724e4620a71b244f1d56ce278da32951d1a722ed7542100fdc4f23ccc05e2cfa95043e9b1863c33d96bd89317b36f5265d1a35e974ceac988a2b0e6523ff169e4b1662e6e964eab34aa7c3aa2238cac8ae91adf6b0ed2ee586587773a0e19f8fb1c47434277388e46c92f7d1c4d0859454c85c886ba6364f5aed236d2a1ee18a56a968a549ae88e5754ac54b062b43b525eb55271f2b1dd50e257c42a4a3cd61d25af5ca928f9587714e506af02b55cec5bb06475aa0425475f0c31284fd77da8a1b84ced4e0e2db287a187ac00a3026443bb619ce91867bb629ceb18e7470f0fed8e535d22b5cbbb4ee54e33caee17db7bb7da85235d621ae09c67e2a4978dc5ef7410cf0f928f134a60c3c58a39626485b9484b7fe6ebc1eb4a07f8e574632dce1ddaad257bf4ea25897dbab53db5637153ed57519fb9e9fb6401a297fb76ee2cfe571db5a56fd717a4d496eb0b52d375eb0b556daa25dedfaba5d617a168a8f54128b7d3fa7a43eb9625a668f59919e85a8fcd3f12a90b63f6dba3143c316e4330e4c23835fedcbbcbb624ee765ff468187d999ceee0c699b397ff4abd9ebe31506ae5ec0372fe7998b97faf4316cf8edc86d02a66fdda2bbdcad1cd458c43b52fbeb27ec50e47d6a933b1479f639f76d651db0f2fbfdfa0171e3b7514da1a0ae99bc4d874963e9c71ca6a8de5ef8676435bb7a10ebfb1a2dcd88b686f45d4e968ae801fa15551f17ba9badaa13551577e7f89ad881dcc6d6295da92c6411a0dfacb36a4a7f2736ae0054edc0222fe7135c3762931e59a195bf93937542cca9754ae12732c90032170190ab242b680691b739efcf6e323a2112cb9f296d899b1db480491802d636f494be5c59867daf427dd94b2cda3dbe4fd827f8e2d809904b6806fd9bb885047da7d5d739b6d8088092c7b1f8ccf52c4ef85ee4622ddf8ac2350e63ec9bbf7d80b2880f15bb640cfb88f6d0f1cbfc72eb23779c9a41964fb4194dd3e9a12e486c8e31946210f5f21861d6ffde65f564ad9bc55300000, '6.2.0-61023'),
('201911180918541_fix', 'BabyShop.Migrations.Configuration', 0x1f8b0800000000000400ed5a5f6fdb36107f1fb0ef20e87148ad3859872db05ba4763218ab932e4e8abd05b4442b44294a13a9c0c6b04fb6877da47d859dfe519428c9b25cbb413704086c92f7bbe3f1ee27eacefffcf5f7e8eddaa3c6330e39f1d9d81c0e4e4d0333db770873c7662456af7e34dfbef9f69bd195e3ad8d8ff9baf3781d48323e369f84082e2c8bdb4fd8437ce0113bf4b9bf1203dbf72ce4f8d6d9e9e94fd6706861803001cb3046771113c4c3c917f83af1998d0311213af71d4c79360e338b04d5b8411ee601b2f1d87c87969bc5931f0cd2a5a671490902331698ae4c0331e60b24c0c88b078e1722f499bb086000d1fb4d8061dd0a518e33e32f8ae55df7717a16efc32a0473283be2c2f776041c9e678eb1aae2bddc6b4ac781ebaec0c56213ef3a71dfd89c2081a8ef9a4655d7c58486f13acdb9834ce4c4c8274e640c40a8c47f27c624a2220af198e14884889e181fa22525f62f7873ef7fc26ccc224a55c3c034982b0dc0d087d00f702836777895993b734cc32acb59554129a6c8a43b9931717e661a37a01c2d2996e7aeec7a21fc10ff8c190e91c0ce0724040e598c8113cf69da2bbae2ffb93608344818d398a3f57bcc5cf13436e1a3695c933576f291cc82074620bf40488411d694dca067e226f655d4c15727b28569dc619accf32712a4613fc8e61ee5095f87be77e7d3422c9f7abc47a18b01e5deaf9f5ff8516857cc1a59452cb54698b4b17b846522ff47d8d1224c8b2b6263654f3f7c5fb3a776889987dcc31b3ac5dc0e499092e38175fd1aa1ec84dacfba1de5d2c573c2f6c788b7b40f0644a083c3833b2da390d9743f6b2721866cb9143bc66423714a52dc8f3873626c22ce9c58bb9a75ff14794b8608ad354cce3e4a4e2d4cd3263556d757ecc5eb8aaddd995d0a7d45dcde1eb9ef09fb343c789ac55ace8ea2e5fc855c6f764c866aa636a74b9764b8e4dcb7496252d954491ae51d5e31c7d8c220a94f15fe01cf421a9000021f2c189bdf697e6b4695a95fa04a362ba30ecd6adadcb229a65860e3d24e5f592688dbc8d18f0d7ce3944720d370185f631085b7370eb94b98d0d392309b0488b6db5e11eb98cfb159524175668a83f8a1c744fb5974d1ac3cd67403a49e8abfb6b967642971d51e6e7af43785464b2a14c1a17079393c4e0783614bdcb53c74b6c6b38edb2b7c1a4d38420035fab6bfeecf1e3b2981818c00091c66cae79be9321ec3ebba17b3078eb32738cf28bb1a0031e6028b723670d328e8b24a3b5a0c95213207d641c8f8d902214fa30e4489f00a8ce237cd9ce20ea8ac6ab826568f723be7cb0da8dbd742623bcb2b38c54954c9babccd0e2ea879c0ea4ed8c2431d9948d9807a882dae68269e0e4e6d7146fec097f952541dadb4ec989727ad86fae4688e82002e464abd321b311669b172f26ab17b21cf4b312c9bd7d4f3a4b55293f04378fdaecc826ab0f49a845c4c214e9628be9a4d1c4f5ba6b24343cee59a2a04a09f589e87b940fc39156aa82bd69067267b0d7bf262f64d4a287ad4eb9249b1185114d65cea273e8d3cd6ccc5cdd2690946954f4774849155315de37bcd41da1dabecf04ec721037f9fe36848e80ec7d128f9a58fa309212b77a910d950778cacde55da463ad41da354cd52914a13ddf18a8a950a568c7647caab562a4e3eb61b4afc8a584589c7baa3e4952b15251feb8ea2dce055a0968b7d0b96ac4e95a0e4e88b2106e5e9ba0f351497a9ddc9a145f630f490156054806c68378c331de36c578c731de3fce8e1a1dd71aa4ba47679d7a9dc6946d9fd627b6356bb70a44b4c039cf34c9cf4b2b1f89d0ee2f941f27142096cb85831478cac301769e9cf7c3d785d69efbe9c56abc5b943bbf55b8f5ebd24b14fb7f69e762c6eaacd28ea33377d9f2c40f472dfce6dc3ffaaa3b634e596c44d0cdda72bd7d7909aa65b5fa86a4fadcf9eca1db5be08453fad0f42b99bd6d71b5ab32c31452bcfcc40d77a6cfe91485d18b3df1ea5e089711b822117c6a9f1e7de4db64e31d6a35ff46552ba831b67ce5efe2bb57afac640a993b30fc8f9e721e6fead0e593b3b7217422b98f5ebaef4aa4637d7300ed5bdf8cada153b1c59a7c6c41e6d8e7dba5947ed3ebcfc76835e77ecd45068eb27a42f1263d359fa70c629ab3556bf1bba0d6dcd863afcc68272632ba2bd1351a7a3b9007e844e45c5efa5e26a87ce445df5fd2576227630b789556a2b1a07e933e8efda909eca4fa5811738710b88f887d30cdba5c4946b666ce5e7dc50b1285f52b94accb1400e84c06528c80ad902a66dcc79f2d38f8f8846b0e4ca5b6267c66e23114402b68cbd252d5517639e69d39f3453ca368f6e93f70bfe39b6006612d802be65ef22421d69f775cd6db6012226b0ec75303e4b11bf16ba1b8974e3b38e4099fb24efde632fa000c66fd9023de33eb63d70fc1ebbc8dee415936690ed075176fb684a901b228f6718853c7c851876bcf59b7f017b37a5b831300000, '6.2.0-61023'),
('201911180920206_fix1', 'BabyShop.Migrations.Configuration', 0x1f8b0800000000000400ed5a5f6fdb36107f1fb0ef20e87148ad3859872db05ba4763218ab932e4e8abd05b4443b44294a13a9c0c6b04fb6877da47d859dfe519428c9b254bb413704086c92f7bbe3f1ee27eacefffcf5f7e8edc6a5c6330e38f1d8d81c0e4e4d0333db73085b8fcd50ac5efd68be7df3ed37a32bc7dd181fb375e7d13a90647c6c3e09e15f5816b79fb08bf8c02576e0716f2506b6e75ac8f1acb3d3d39face1d0c200610296618cee4226888be32ff075e2311bfb224474ee3998f2741c661631aa71835ccc7d64e3b1f90e2db78b27cf1f244b4de3921204662c305d990662cc13488091170f1c2f44e0b1f5c2870144efb73e86752b44394e8dbfc897b7ddc7e959b40f2b17cca0ec900bcfdd1370789e3ac62a8b7772af291d07aebb02178b6db4ebd87d63738204a2deda34caba2e263488d669ce1da422274636712263004225fa3b312621156180c70c872240f4c4f8102e29b17fc1db7bef1366631652aa1a06a6c15c6100863e049e8f03b1bdc3abd4dc99631a5651ce2a0b4a314526d9c98c89f333d3b801e56849b13c7765d70be105f867cc708004763e202170c0220c1c7b4ed35ed215fdcfb441a041c298c61c6dde63b6164f63133e9ac635d960271b492d786004f20b844410624dc90d7a26ebd8be923af8ea84b6308d3b4ce379fe44fc24ec07e9dca33ce1ebc073ef3c9a8b65538ff728586340b9f7aae7175e18d825b346561e4b8d11266d6c1f61a9c8ff1176b408d3e28ad8b916d04171c5a69a31662e5a1fded229e67640fc841d0facebd710a547d47cd8cd28976b3c27ac3f46b4a53e1810820e0e0eeeb4944366d37ed64e020ce9722914941fbedf8d52cb9c9215fb3167c68c75cc99316b5bb3ee9f4277c910a19586c9d94749aab969daa446ebfa8a5ec4aed8da9edaa5d05744eecd91fb9eb04fc383a759a4e5ec285ace5fc8fd66cf6428676a7dbab449864bce3d9bc426154d95a451dce115738c1d0c92f854e11ff02ca401f121f0c182b1f99de6b77a5499fa39aa64b322ead02ca7cd2d9b628a05362eede49d6582b88d1cfdd8c0374e7104320d07d13d0651787de390bb84093d2d09b3898f68b3ed25b196f91c9925159467a6d88f1e7a4c349f451bcdca634d3740ea29f96b977b46961257cde1a6477f5d6834a4421e1c0a9717c3e374301836c45dc34367673cebb89dc2a7d684230450ad6fbbebfeecb1931018c80890c041aa7cbe9d2ea331bca97a337be0387d82f394b2cb0110612eb0286603378d9c2ecbb4a3c5501122756015848c9f1d10f234aa4094082fc1287ed3ccc9ef80caaa9a6b62f9287773bedc80ba7d2d2476b3bc82939f4499ac8bdb6ce1828a07acee841d3cd49289940da887d8e08a7ae269e1d40667640f7c992f79d9d14aea8e597dd2aa29508ee6c8f7e162a4142cd3116391542b27af16fb57f2dc04c3b27945414f5a2b35092f80d7efd22ca8064baf49c0c514e26489a2abd9c471b5652a3bd4e45ca6a94400fa8965799809449f13a19ac2620579a6b2d7b0273762dfb886a247bd2e19578b114541c5a57ee2d1d065f55c5c2f9dd46054f9644447185925d335bed71ca4ddb18a0e6f751c32f0fb1c474d42b7388e5ac92f7d1c750869bd4b854887da63a4f5aec23692a1f618856a968a5498688f9757ac54b07cb43d5256b55271b2b1fd50a257c4324a34d61e25ab5ca928d9587b14e506af02355cec1bb06475aa0025475f0c31284fd73ed4905fa6f6278706d9c3d0435a805101d2a1fd30ce748cb37d31ce758cf3a3878776c7292f91dae55da774a719a5f78bdd9d59edc2912c310d70ce337192cbc6e2773a88e607f1c70925b0e17cc51c31b2c25c24a53ff3f5e075a9bffb727aad16e70e6dd7703d7af592443eddd97cdab3b8a976a3a8c7d6c9fb640ea297fbf6ee1bfe571db5a32bb7a21e12fd9a725deda8e8b975852ab7d462dff76aa87545c8db695d108acdb4aeded07a65b1295a756606ba3663f38f58eac298fdf628054f8cdb000cb9304e8d3f7bf7d89664bddb171dda455f26a35bb871e6f4f25fa1d3d335060a8d9c3e20e79f8797bb773a64e9ecc84d08ad5ed6adb9d2a9185d5fc23854f3e22beb56ec7164adfa123dba1c7d9a59476d3ebcfc6e835e766cd54f686a2724ef1163d3597a70c609abd516bf6b9a0d4dbd862afcda7a726d27a2b91151a5a3befe7d844645c9ef85da6a8bc64455f1fd253622f630b78e552a0b1a076933e8afda909eca4fa581173859e710d10fa719b60b8929d7ccd8cacbb8a16451b6a474959863811c0881cb409015b2054cdb98f3f8971f1f110d61c995bbc4ce8cdd86c20f056c19bb4b5a282e463cd3a43feea5146d1eddc6ef17fc736c01cc24b0057ccbde85843ad2eeeb8adb6c0d444460e9db607496227a2b5c6f25d28dc75a02a5ee93bc7b8f5d9f0218bf650bf48cbbd8f6c0f17bbc46f6362b98d483ec3e88a2db475382d60172798a91cbc3578861c7ddbcf9170248904431300000, '6.2.0-61023'),
('201911190828380_sizePro', 'BabyShop.Migrations.Configuration', 0x1f8b0800000000000400ed5b5f6fdb36107f1fb0ef20e87148ad245e872db05ba47632186b922e4e8abd05b4442b44294a13a920deb04fb6877da47d8551ff288a1465598ad3ac1b0a1436c9fbddf1ee783cde397ffff9d7e4ed6380ad0718531492a97d343ab42d48dcd043c49fda095bbffade7efbe6ebaf26675ef0687d2cd78dd3759c92d0a97dcf5874e238d4bd8701a0a300b97148c3351bb961e0002f748e0f0f7f708e8e1cc8216c8e655993eb843014c0ec0bff3a0b890b2396007c117a10d3629ccf2c3354eb12049046c08553fb1d586d96f76134ca97dad62946808bb184786d5b80909001c6853cb9a570c9e290f8cb880f007cb389205fb70698c242f8936a79d77d1c1ea7fb702ac212ca4d280b831d018fc685621c95bc977a6da138aeba33ae62b649779da96f6acf000338f46d4be57532c371ba4e53eea82039b0ca8903e103dc55d27f07d62cc12c89e194c084c5001f581f921546ee4f7073137e82644a128c65c1b8687cae36c0873ec4610463b6b986eb42dc85675b4e9dce510905994493ef6441d8f8d8b62e3973b0c250d85ddaf5928531fc1112180306bd0f803118931403669ad3b82bbcd2ff4b6edcd1f881b1ad0bf0f81e129fdd4f6dfed1b6ced123f4ca9142825b82f8f9e2442c4ea0c6e4123c203f934f61c7bf7a89cb6ceb1ae26c9edea32877fb513177272c7c1e87c175882bb272eaee06c43ee4283761f3fc324c6257116be254bed4ea6142c6ee1e5690fcef61cfe6619a5f21b7e2c27960d8b0a9768c4500fcfd4b3a87d48d519447c73df3fa39018589da8ddd8e72eac30b448663a45b1a82c15dd083f1de9556c490c57c98b4b318f2e372ca2494efbedd8e628c9c222a0e8b9c65643445ce32b27615ebe63e09560420dc289898bd1341b5124d9bd4c2babe6250609764ed1eda05d11714dcdb3df73d229f8ef67ecc522ec7cfc265fc42f29b1d0f837a52cdc7a5d76158a2dfe02ee7205dff051d81a7cd6f72653ea997990c794a69e8a24cf2bacf89e85f97f68c78d696ab20175bba48b8f0dc9828e2e6e3124ced6f341d9851450caf50c5b554473db255e35f9139c49041ebd4cd1f9f33405de0e9e78febc6ab8f707f81716a3080f93b9c720f4484e9ce85888b2280db6557c83a7a652a9660a0cecc6194662f84b5dba20b67293fd105107c147d6d53cfc491fcaaddddf43066728d96985639877429d7dde370343a6af1bb96ec61ab3febb8bddcc728c233389051b7fd793fb9efe4018cd3304e01e382f9c566be4ac7e063d313fb96c2e20aa24554541d20c55c42563f0dd4b6aa70a9861dcd87ea1085029b2084ff6c8110d66802913c7c0b4c7a8d3421e4d78b422c295ddb4bf5129056191e0baa1f6cbf3084d8b2ee347fda7e4548389519d5485fdf66071534a459ba12b604b18e614cda80ec012daa3047ad0e4a6d5146992d88c356159f9dbcfa5c56a91d43997a7201a288272e52d9ba18b19679cd7af66ab97b3d37c8311c9736947585b482134fc5800f9559ce9a4b7a8e62cae6dc4f56204d9d665ea02d93438be1a4959c94e8a15bac3c822541fa39273294971b226f417bcef714a4a13bcb3475afd729b39e01c0206ec86b67214e02620ee466eabc1227d3e7233ac2c45144d72e0b4d415a82565778277308c71f620ec381ee600e23e5e7368709a1a87aca10c550778ca2ea59db463ed41da356d394916a13ddf1aabaa50c568d76472a6b97324e39b61b4afa845351d2b1ee2865fd524629c7baa348e9bf0cd4f22a68c11235ca1a94187d318141ba5d8784862a13db3d38b4d0ee273c14653819a018da0de358c738de1563ac638c5f907be479f310cfc832ecdd9da2996c7fd745fe1050af8ca6e7c1deada1659cea12c15d649e4a863929b2bdedbf96d0d2bf7c896d71153d202f4ffd96bfe2513a3fca3ece30e21bae565c0082d690b2bc1669bf1ebd567e73f1727effe050eae16e3f8278f6722a4a75bab560ba63c341ee10e390f87969a002e95e1c35f6f2ffab8ad2316a9df2350e011bd628ef2b47431fbc2f94dae6ce743fa8c9dd17a16a71f741a837b8fb6a43eb5f67a26885b605e7f538b57fcfa84eacc52f7782f0c0ba8ab92027d6a1f5c7e0bef70af9db75d1a385fb794e7407352ebc41faab755ffbfa40adb93a0464bca7b8ac274effeaa02cf7ff8669aa7f7b4f947c9fb9f3a6d579fb75147b7560cca5b77d75ecbeb016dd0e26ebd48c1bd0da1bd2c17dd68edbcb6fb1e9e572c3335afd6d99b98796bfb8a6b6b70ab98df3a8666cda183a6c6d0db6267c631fc4d87e6befbe35f130f76d1abb73c6e65c1376d1ce7bf6be9d62ce5aaba1439faea917f512fb723b886b0a568df5bdbd74ddf45a073ff5d2df8ff07043915f41a47f4d42a05b3bef62cd82acc332e42812954b9424e50232e07117388d195a0397f16917529afd50e923c0095f7216aca0b72057098b12c6b70c8315aed5dad3f0d5c63f6b2dd6659e5c650f3cfa145be06222be057845de25087b42eef386e78401228d8b45e697da92a519a0bf11489721e90854a84f84f31b18449883d12bb2040fb08f6cb714be873e703765c5ca0cb2dd1075b54fe608f83108688151d1f3afdc87bde0f1cd3fe10881da46350000, '6.2.0-61023'),
('201911190829277_sizeProduct', 'BabyShop.Migrations.Configuration', 0x1f8b0800000000000400ed5cdd6ee43414be47e21da25ca232e90f8ba09a0195e916556cb7cb4e77c5ddca9378a6d63ace9038550be2c9b8e09178059c3fc78eedc449da745850a551c73fdf393ee7d83eb6bff6ef3fff9a7f7f1f62e70ec6098ac8c23d9a1dba0e247e1420b25db829dd7cf98dfbfd779f7f367f1984f7cefbaadd49d68ef524c9c2bda57477ea79897f0b4390cc42e4c751126de8cc8f420f0491777c78f8ad7774e44106e1322cc799bf4d094521ccbfb0afcb88f870475380afa200e2a42c6735ab1cd5790d4298ec800f17ee0f60fdb0ba8d76b3a2a9eb9c6104981a2b8837ae03088928a04cc9d377095cd13822dbd58e15007cf3b083acdd06e00496ca9fd6cd6dc771789c8dc3ab3b56507e9ad028ec097874521ac66b761f645e971b8e99ee2533317dc8469d9b6fe12e010538daba4e53d6e912c7593bc5b8b3b2cb8153551cf01860a192fd1c38cb14d334860b02531a037ce0bc49d718f93fc1879be823240b92622c2ac654637552012b7a13473b18d387b77053aa7b19b88e27f7f39a1d7937a14f31924b424f8e5de735130ed61872bf0ba35ed128863f4202634061f006500a639261c0dc728af486acecb392c6028d4d18d7b902f7af20d9d2db85cb7e759d0b740f83aaa4d4e01d416c7eb14e344ea122e435b843db5cbf8638f635487dea3a6f21ceeb935bb42bc27e56d67de01ebe88a3f06d84eb6e55d5871b106f2143b989f4f5ab288dfd865a73af8ea5d608e33ada4758d9e5ff089b2cc294b8427e2d85c9c05033a8768ccb106c9f5ed37398f831da15abe313cbfa3905a58bda9ddd8e72b68557888cc7c886340683856000e327375ab9865c9e8fd3761943365dcea880f2f557dd28c69593af8ae356ce6a6534ad9cd5cada73415fa1df60d2a65bd6e0035f5915fdc46ad3ea2eb5d1adf06d7adedca6e19a0084b54af25a9d8a4aa5a2a0dae23136a06cbc0336a1acdbb36c44a57c753fd2b6ced41cb2750952c64ccf4a7c2f8c31694d9f096098a4da4962ab62114d1dfa158df4ca151f2d9ae51f3ab5ac03bf6fc43f5ba8ff1b72aec2985367f6761b41679cb56d0152200e8a336133b00f36dee9138ab8f6287a85c8c7a327cfb73229c7934839d993836ecf6ca3b9e69af3119bc9709624918f7295645579f6288ff025099c8e54b2b0a930c79965d934403b16f84c8385fb856237332a9ff9352a4f6b65d423b7396daec939c49042e7cc2f2eaf9620f141a0ba8dd926904bd84c8371b6b802bc64ce62731711aa4e4b447cb403b85df74637cbf99ca9c505346bcee12e3bfd10daee0b1bc9c2f9465580cb69d8abcb3c734f882bab7093f2a18ee0d027474ad815bb4aefd0d39f3d3a837a6fc24fa7ff7421a8f38d8df4b6d3c2d46198078e4d94c839f0a306a09cf6d4d03accfd0a3d51f389e34ef4878d68fda173a28853b77d535cb4e40075600849ac1c1d87b3d9514bd0b55c6758ac794ddc41d163546182f031da76b8ec478f9d2273637d28eb01e352f8d5c3f93a2b83f7bab78977092c8f2e4999ab360320c35c412aa701ecac56e789cd7c4b892119a234a00e82c78f1d44796a34c1146b60079409c3aa338f0a1d8230d31a3082ff9431d5b7b1422bc3856d33a4ba936e3e00d10d4a6876a7d9024e1d11cd3d431ea6bd09e43b2fa319cca9a07532a89aa30c876e9368d33f0bf38e344b1196ed3651f312bbcc64ac35a45c4400d3a20cb083e600ac1aa263bbb4dc3005edc539de6208f3fe382e28aa03395fd679dddc2b082265c1dc333049e65760b743642b304bca126755d04a965faefa532ec202c3f3130df3826bcb25d128065bd8a865a299a617284ee8395b46d620bb3a5906a1d24cdcc40c4b7225a9b14fa91eab96e9aa43f67bd1c9c000d1ecf165df0b36a6304b12f28b577551547b3a19ad0760106b2edd96114e43624e19ccbd8bc772b17f51a222ccbd86ea4a5aa218483909c806b772070ffc31ee304c680b77187b3eb73b4c0825314184288bec314a6282348ca2c81e43a21d884852853d5e4d2d10c1ea527ba48a5e20e25465fd50b22bdc264a56668f52510c4494aacc1e45b86113815a2ede5ab0388d4082e2a5fbb6301429c2232c0ebadcc77e81d0f7364f527e17254f54e3159519abba6210814cd70ecfe6acf15e1ae89e7e7e19bf781759767301d71d099fd11b42623ac625f531b5bf5f5afa3e8d73cab74511a02cea8771ac621cf7c53851314e260f0fe578d06cc2a5f36342e338302f53f36ef6b992ab174d5c8719e70e05459ebefa15cfb2fa59feeb122336e0bac515206803135abc6abb2f662f1a1cf6fde1937b491260cdd146432a97dd35c1c33cca6cda49f6e8f96e2f326e7144b6c58d610da2be64f7e646ff570da56248cce30d8e001d473c1eaa8786573c14aa491bce6d3f8a343c14a1a60c0f419009c343ada1f081735594fbf74b26eb7ee1fe9ef73a752e7ff9c03b1e38d73153e4d43974fe18cd235ea36db72d06514d07cce9b6475cdbd7b701944f5b0ff08ea33c2053456d6517bd7a08eec792fc74166091a7f8c8bb9521ab9dcc5c1661323236258aded0154e62e08d0139791c3f0ea7a8f127b789d963ca33ca3056dca0c774f3ddf653512f3e559ad9e4ac2fedebdb7062d11826cfc4cc9d4f8b22a6b8edc9495bfb1039d67e9c386cfe2524af5e8b8e059d6b04396cdf178eb69bcd3d2369a9cfe0862be0e69f759a5958c5e5dcc20dd611f371914c19b93a0682551b454b876fe437b410b8baf85b2d72f4c4121dc3cb48f0d2a1dbc10a73a58dfaa51360a6944c400d6b848e4457b060fae8f82c7b4efdb251d9bc391a5e09f78ed6a568ab7fae9a7c988fceda1aea5565c2369eb09e8493a53eaeb0bd43f807406cd34ad0b686c8fe1d1081beb46bf036976413551b5743a3aa49e3787d052908d8e43e8b29da009fb26a1f2649fe676cef014e599397e11a0697e43aa5bb94b221c3708d252646b609b6c9cf8967b2cef3ebfc4639798c213035111b02bc263fa408075cef0bcd5d980122db5dcbeba7cc9734bb86da3e70a4d711b1042acdc793821b18ee30034baec90adcc121babd4be02bb805fe43f5446606e976846cf6f93902db1884498951f7675f590c07e1fd77ff00dc593d8e074b0000, '6.2.0-61023'),
('201911190845393_color', 'BabyShop.Migrations.Configuration', 0x1f8b0800000000000400ed5cdd6ee43414be47e21da25ca232e90f8ba09a0195e916556cb7cb4e77c5ddca9378a6d63ace9038550be2c9b8e09178059c3fc78eedc449da745850a551c73fdf393ee7d83eb6bff6ef3fff9a7f7f1f62e70ec6098ac8c23d9a1dba0e247e1420b25db829dd7cf98dfbfd779f7f367f1984f7cefbaadd49d68ef524c9c2bda57477ea79897f0b4390cc42e4c751126de8cc8f420f0491777c78f8ad7774e44106e1322cc799bf4d094521ccbfb0afcb88f870475380afa200e2a42c6735ab1cd5790d4298ec800f17ee0f60fdb0ba8d76b3a2a9eb9c6104981a2b8837ae03088928a04cc9d377095cd13822dbd58e15007cf3b083acdd06e00496ca9fd6cd6dc771789c8dc3ab3b56507e9ad028ec097874521ac66b761f645e971b8e99ee2533317dc8469d9b6fe12e010538daba4e53d6e912c7593bc5b8b3b2cb8153551cf01860a192fd1c38cb14d334860b02531a037ce0bc49d718f93fc1879be823240b92622c2ac654637552012b7a13473b18d387b77053aa7b19b88e27f7f39a1d7937a14f31924b424f8e5de735130ed61872bf0ba35ed128863f4202634061f006500a639261c0dc728af486acecb392c6028d4d18d7b902f7af20d9d2db85cb7e759d0b740f83aaa4d4e01d416c7eb14e344ea122e435b843db5cbf8638f635487dea3a6f21ceeb935bb42bc27e56d67de01ebe88a3f06d84eb6e55d5871b106f2143b989f4f5ab288dfd865a73af8ea5d608e33ada4758d9e5ff089b2cc294b8427e2d85c9c05033a8768ccb106c9f5ed37398f831da15abe313cbfa3905a58bda9ddd8e72b68557888cc7c886340683856000e327375ab9865c9e8fd3761943365dcea880f2f557dd28c69593af8ae356ce6a6534ad9cd5cada73415fa1df60d2a65bd6e0035f5915fdc46ad3ea2eb5d1adf06d7adedca6e19a0084b54af25a9d8a4aa5a2a0dae23136a06cbc0336a1acdbb36c44a57c753fd2b6ced41cb2750952c64ccf4a7c2f8c31694d9f096098a4da4962ab62114d1dfa158df4ca151f2d9ae51f3ab5ac03bf6fc43f5ba8ff1b72aec2985367f6761b41679cb56d0152200e8a336133b00f36dee9138ab8f6287a85c8c7a327cfb73229c7934839d993836ecf6ca3b9e69af3119bc9709624918f7295645579f6288ff025099c8e54b2b0a930c79965d934403b16f84c8385fb856237332a9ff9352a4f6b65d423b7396daec939c49042e7cc2f2eaf9620f141a0ba8dd926904bd84c8371b6b802bc64ce62731711aa4e4b447cb403b85df74637cbf99ca9c505346bcee12e3bfd10daee0b1bc9c2f9465580cb69d8abcb3c734f882bab7093f2a18ee0d027474ad815bb4aefd0d39f3d3a837a6fc24fa7ff7421a8f38d8df4b6d3c2d46198078e4d94c839f0a306a09cf6d4d03accfd0a3d51f389e34ef4878d68fda173a28853b77d535cb4e40075600849ac1c1d87b3d9514bd0b55c6758ac794ddc41d163546182f031da76b8ec478f9d2273637d28eb01e352f8d5c3f93a2b83f7bab78977092c8f2e4999ab360320c35c412aa701ecac56e789cd7c4b892119a234a00e82c78f1d44796a34c1146b60079409c3aa338f0a1d8230d31a3082ff9431d5b7b1422bc3856d33a4ba936e3e00d10d4a6876a7d9024e1d11cd3d431ea6bd09e43b2fa319cca9a07532a89aa30c876e9368d33f0bf38e344b1196ed3651f312bbcc64ac35a45c4400d3a20cb083e600ac1aa263bbb4dc3005edc539de6208f3fe382e28aa03395fd679dddc2b082265c1dc333049e65760b743642b304bca126755d04a965faefa532ec202c3f3130df3826bcb25d128065bd8a865a299a617284ee8395b46d620bb3a5906a1d24cdcc40c4b7225a9b14fa91eab96e9aa43f67bd1c9c000d1ecf165df0b36a6304b12f28b577551547b3a19ad0760106b2edd96114e43624e19ccbd8bc772b17f51a222ccbd86ea4a5aa218483909c806b772070ffc31ee304c680b77187b3eb73b4c0825314184288bec314a6282348ca2c81e43a21d884852853d5e4d2d10c1ea527ba48a5e20e25465fd50b22bdc264a56668f52510c4494aacc1e45b86113815a2ede5ab0388d4082e2a5fbb6301429c2232c0ebadcc77e81d0f7364f527e17254f54e3159519abba6210814cd70ecfe6acf15e1ae89e7e7e19bf781759767301d71d099fd11b42623ac625f531b5bf5f5afa3e8d73cab74511a02cea8771ac621cf7c53851314e260f0fe578d06cc2a5f36342e338302f53f36ef6b992ab174d5c8719e70e05459ebefa15cfb2fa59feeb122336e0bac515206803135abc6abb2f662f1a1cf6fde1937b491260cdd146432a97dd35c1c33cca6cda49f6e8f96e2f326e7144b6c58d610da2be64f7e646ff570da56248cce30d8e001d473c1eaa8786573c14aa491bce6d3f8a343c14a1a60c0f419009c343ada1f081735594fbf74b26eb7ee1fe9ef73a752e7ff9c03b1e38d73153e4d43974fe18cd235ea36db72d06514d07cce9b6475cdbd7b701944f5b0ff08ea33c2053456d6517bd7a08eec792fc74166091a7f8c8bb9521ab9dcc5c1661323236258aded0154e62e08d0139791c3f0ea7a8f127b789d963ca33ca3056dca0c774f3ddf653512f3e559ad9e4ac2fedebdb7062d11826cfc4cc9d4f8b22a6b8edc9495bfb1039d67e9c386cfe2524af5e8b8e059d6b04396cdf178eb69bcd3d2369a9cfe0862be0e69f759a5958c5e5dcc20dd611f371914c19b93a0682551b454b876fe437b410b8baf85b2d72f4c4121dc3cb48f0d2a1dbc10a73a58dfaa51360a6944c400d6b848e4457b060fae8f82c7b4efdb251d9bc391a5e09f78ed6a568ab7fae9a7c988fceda1aea5565c2369eb09e8493a53eaeb0bd43f807406cd34ad0b686c8fe1d1081beb46bf036976413551b5743a3aa49e3787d052908d8e43e8b29da009fb26a1f2649fe676cef014e599397e11a0697e43aa5bb94b221c3708d252646b609b6c9cf8967b2cef3ebfc4639798c213035111b02bc263fa408075cef0bcd5d980122db5dcbeba7cc9734bb86da3e70a4d711b1042acdc793821b18ee30034baec90adcc121babd4be02bb805fe43f5446606e976846cf6f93902db1884498951f7675f590c07e1fd77ff00dc593d8e074b0000, '6.2.0-61023'),
('201911190849315_color', 'BabyShop.Migrations.Configuration', 0x1f8b0800000000000400ed5cdd6ee43414be47e21da25ca232e90f8ba09a0195e916556cb7cb4e77c5ddca9378a6d63ace9038550be2c9b8e09178059c3fc78eedc449da745850a551c73fdf393ee7d83eb6bff6ef3fff9a7f7f1f62e70ec6098ac8c23d9a1dba0e247e1420b25db829dd7cf98dfbfd779f7f367f1984f7cefbaadd49d68ef524c9c2bda57477ea79897f0b4390cc42e4c751126de8cc8f420f0491777c78f8ad7774e44106e1322cc799bf4d094521ccbfb0afcb88f870475380afa200e2a42c6735ab1cd5790d4298ec800f17ee0f60fdb0ba8d76b3a2a9eb9c6104981a2b8837ae03088928a04cc9d377095cd13822dbd58e15007cf3b083acdd06e00496ca9fd6cd6dc771789c8dc3ab3b56507e9ad028ec097874521ac66b761f645e971b8e99ee2533317dc8469d9b6fe12e010538daba4e53d6e912c7593bc5b8b3b2cb8153551cf01860a192fd1c38cb14d334860b02531a037ce0bc49d718f93fc1879be823240b92622c2ac654637552012b7a13473b18d387b77053aa7b19b88e27f7f39a1d7937a14f31924b424f8e5de735130ed61872bf0ba35ed128863f4202634061f006500a639261c0dc728af486acecb392c6028d4d18d7b902f7af20d9d2db85cb7e759d0b740f83aaa4d4e01d416c7eb14e344ea122e435b843db5cbf8638f635487dea3a6f21ceeb935bb42bc27e56d67de01ebe88a3f06d84eb6e55d5871b106f2143b989f4f5ab288dfd865a73af8ea5d608e33ada4758d9e5ff089b2cc294b8427e2d85c9c05033a8768ccb106c9f5ed37398f831da15abe313cbfa3905a58bda9ddd8e72b68557888cc7c886340683856000e327375ab9865c9e8fd3761943365dcea880f2f557dd28c69593af8ae356ce6a6534ad9cd5cada73415fa1df60d2a65bd6e0035f5915fdc46ad3ea2eb5d1adf06d7adedca6e19a0084b54af25a9d8a4aa5a2a0dae23136a06cbc0336a1acdbb36c44a57c753fd2b6ced41cb2750952c64ccf4a7c2f8c31694d9f096098a4da4962ab62114d1dfa158df4ca151f2d9ae51f3ab5ac03bf6fc43f5ba8ff1b72aec2985367f6761b41679cb56d0152200e8a336133b00f36dee9138ab8f6287a85c8c7a327cfb73229c7934839d993836ecf6ca3b9e69af3119bc9709624918f7295645579f6288ff025099c8e54b2b0a930c79965d934403b16f84c8385fb856237332a9ff9352a4f6b65d423b7396daec939c49042e7cc2f2eaf9620f141a0ba8dd926904bd84c8371b6b802bc64ce62731711aa4e4b447cb403b85df74637cbf99ca9c505346bcee12e3bfd10daee0b1bc9c2f9465580cb69d8abcb3c734f882bab7093f2a18ee0d027474ad815bb4aefd0d39f3d3a837a6fc24fa7ff7421a8f38d8df4b6d3c2d46198078e4d94c839f0a306a09cf6d4d03accfd0a3d51f389e34ef4878d68fda173a28853b77d535cb4e40075600849ac1c1d87b3d9514bd0b55c6758ac794ddc41d163546182f031da76b8ec478f9d2273637d28eb01e352f8d5c3f93a2b83f7bab78977092c8f2e4999ab360320c35c412aa701ecac56e789cd7c4b892119a234a00e82c78f1d44796a34c1146b60079409c3aa338f0a1d8230d31a3082ff9431d5b7b1422bc3856d33a4ba936e3e00d10d4a6876a7d9024e1d11cd3d431ea6bd09e43b2fa319cca9a07532a89aa30c876e9368d33f0bf38e344b1196ed3651f312bbcc64ac35a45c4400d3a20cb083e600ac1aa263bbb4dc3005edc539de6208f3fe382e28aa03395fd679dddc2b082265c1dc333049e65760b743642b304bca126755d04a965faefa532ec202c3f3130df3826bcb25d128065bd8a865a299a617284ee8395b46d620bb3a5906a1d24cdcc40c4b7225a9b14fa91eab96e9aa43f67bd1c9c000d1ecf165df0b36a6304b12f28b577551547b3a19ad0760106b2edd96114e43624e19ccbd8bc772b17f51a222ccbd86ea4a5aa218483909c806b772070ffc31ee304c680b77187b3eb73b4c0825314184288bec314a6282348ca2c81e43a21d884852853d5e4d2d10c1ea527ba48a5e20e25465fd50b22bdc264a56668f52510c4494aacc1e45b86113815a2ede5ab0388d4082e2a5fbb6301429c2232c0ebadcc77e81d0f7364f527e17254f54e3159519abba6210814cd70ecfe6acf15e1ae89e7e7e19bf781759767301d71d099fd11b42623ac625f531b5bf5f5afa3e8d73cab74511a02cea8771ac621cf7c53851314e260f0fe578d06cc2a5f36342e338302f53f36ef6b992ab174d5c8719e70e05459ebefa15cfb2fa59feeb122336e0bac515206803135abc6abb2f662f1a1cf6fde1937b491260cdd146432a97dd35c1c33cca6cda49f6e8f96e2f326e7144b6c58d610da2be64f7e646ff570da56248cce30d8e001d473c1eaa8786573c14aa491bce6d3f8a343c14a1a60c0f419009c343ada1f081735594fbf74b26eb7ee1fe9ef73a752e7ff9c03b1e38d73153e4d43974fe18cd235ea36db72d06514d07cce9b6475cdbd7b701944f5b0ff08ea33c2053456d6517bd7a08eec792fc74166091a7f8c8bb9521ab9dcc5c1661323236258aded0154e62e08d0139791c3f0ea7a8f127b789d963ca33ca3056dca0c774f3ddf653512f3e559ad9e4ac2fedebdb7062d11826cfc4cc9d4f8b22a6b8edc9495bfb1039d67e9c386cfe2524af5e8b8e059d6b04396cdf178eb69bcd3d2369a9cfe0862be0e69f759a5958c5e5dcc20dd611f371914c19b93a0682551b454b876fe437b410b8baf85b2d72f4c4121dc3cb48f0d2a1dbc10a73a58dfaa51360a6944c400d6b848e4457b060fae8f82c7b4efdb251d9bc391a5e09f78ed6a568ab7fae9a7c988fceda1aea5565c2369eb09e8493a53eaeb0bd43f807406cd34ad0b686c8fe1d1081beb46bf036976413551b5743a3aa49e3787d052908d8e43e8b29da009fb26a1f2649fe676cef014e599397e11a0697e43aa5bb94b221c3708d252646b609b6c9cf8967b2cef3ebfc4639798c213035111b02bc263fa408075cef0bcd5d980122db5dcbeba7cc9734bb86da3e70a4d711b1042acdc793821b18ee30034baec90adcc121babd4be02bb805fe43f5446606e976846cf6f93902db1884498951f7675f590c07e1fd77ff00dc593d8e074b0000, '6.2.0-61023'),
('201911190852271_ProductColor', 'BabyShop.Migrations.Configuration', 0x1f8b0800000000000400ed5ddd6edcb815be2fb0ef20e872e19df14fb7e81a33bbf08ee3c2d8387633cea2770147a2c7c24ad454a202bb459fac177da4bec252a24491e28f28694623a745002396c88f87e77c3ce221cf49fefbefff2c7e7a8942e70b4cd220464bf76c76ea3a1079b11fa0edd2cdf0d3777f767ffaf19b3f2cdef9d18bf36bd5ee226f477aa274e93e63bcbb9ccf53ef1946209d458197c469fc84675e1ccd811fcfcf4f4f7f989f9dcd2181700996e32c3e660807112c7e21bfae62e4c11dce407817fb304ccbe7e4cdba40753e8008a63be0c1a5fb33d8bcae9fe3dd8c36759dab3000448c350c9f5c07201463808990979f52b8c6498cb6eb1d7900c2c7d71d24ed9e4098c252f8cbbab9ed3c4ecff379cceb8e159497a5388e3a029e5d948a9937bbf752afcb144754f78ea818bfe6b32ed4b77457008330deba4e73accb5598e4ed24e5ceca2e274ef5e28471805025ff73e2acb21067095c2298e1048427ce43b60903ef17f8fa18ff06d1126561c80b464423ef8407e4d14312ef60825f3fc2a752dc5bdf75e662bf79b323ebc6f5a133b945f8e2dc753e90c1c12684cceedcacd7384ee05f208209c0d07f0018c304e518b0d09c347a63acfc67351a211a5930ae73075ede43b4c5cf4b97fcd5756e8217e8574f4a093ea180ac2fd20927199406f900be04db42bec670e4573ff3b0eb7c8461f13e7d0e7694f6b3f2dd6766e19b248e3ec661ddad7af5f911245b48501e63f5fb759c255e43acc5bce69291614c467b86955dfecfb0d11826f12af0ea51c81821544cca8c711b81ede125bd86a997043bea1d0f3cd65f33509ac86c6c33cad516de056838463ea5211884823e4c0eaeb4d287dc5e0f93769540b25cae3087f2a73fb6a3683d27f38ac33c67e519759eb3f2ac1d1dfa2a0ee324350957b4f8cc7cab24a1f05ee7e0c5462a2f6f21eb3af807348a9a373048cabfd6092ab4e92ae7e373166d100842a590ecad4a44e9a524a0dc621f1fcbc2303dbe9845bfa37c364b01e4afa7b27521679f2f2d37cc206f528ddf0944ef4ca8b9da566bd94cb356e94f8d43e19bf4f429fbf32646199b0ba5d732e8ccffe3117feafbc54233c7094b6cbf6236ebc2f8051397ce10c79b7f687af8ddbcdb1b70bbb99847f4bad5f0fb71ba166eadcbce43e3d494bb135b11299b5ae4a38dd4c2d11f06c98a1f835c6d57c61f8dea5377b4f94faaccb1fdacdd0ebc9567a6bdb740c45e3ce376e1f664639dbe22c69959f43e40bf9d1d3c28cf47391f65948b899c86760cf39a3e571f08da2c86ab348dbda0104914951d3188337c877ca7e5bc81ea945be344b36419043b427c22c1d2fd56d29b1e95adfc1a959d7d88a8676e73d9dca36b18420c9d2b8fde70ac40ea015f361bd18d2f3e212b0d26b97305e18a188bacdd0061795906c80b762034cbdee866b99e73b1d800cd37d770971f91216cb685cdc8dc21982c001ba7a1af36f52ce61caface8c66fb75bb8a18c4925d2953bf7cecc53eeec39f2a96027433d85f0e3b14f61172b02aa0f5c8e41bfca5f595144f2c77ba6a074acd7ea572746c3c604c62662c33e36c39b42d611c928c4862d5c51078a1255e80ebb3313d507e06f87882af9c7e3a1ca366f8d8605716c58229e07ec958062085843ab30a7453d5ef29179c7dbc36668f501dc488c9343201d2f0cf1504d0c2ea017d9713a9b9d194867b853b3f0794ddc5eecd18a30027db4baed3ff6deb943a358d207931e302907bf7bbddee4cfe08b2a99e7530acb639cb48cdb9b04c831d7108b2151ea3a75ccdc8c3d250e8910a50255108c3f7610d54d850ea7dc64b6806951ecba8ba7793a51a83f6e81d2615875660c552170abbe01c371499a539d4ac1b5d2645b34e9dd7e18c226c053425a26edc71f1c4ecdcee6f74b9ca6bd0a84ab2ead16b411ba6d8c2eeba26265bb42545139af1325d0508db095daa213e537cb3e701cae97e6d7ca8275fd7523de5c6955a30f62acc318791aa5f368d78b327039bc5aa81333eb44de51dbeda9876a43d84573604a941e7a501c63cb8a68d9e8596ef538e9f92f824111fa9ddd305254c7ea6c43c2de2de6b416a07cb0986b8a06167760b70bd0962b22289f386b5a41b0fa6edd3dbb3ea218732f5524d93369d948384ec01636dee67ed587374192e26bf2d1d980fc0264e54752337efba5f9805723357658b2c5aa8f7ad521ff3beda449f657ec4ecbbe37644e51bebd2dae4fe54fa8dcd3c92b38400812c5d51971b55984f49b5d7d6f9ae2c2f7a74f6484c5bc21bab4a1961424c5b0a2c2adccc1883fc41c9a056d610e6dcf639b438750e6a0f310e5237b8c32075d98067d648f216498f348c20b7bbc3a8b9c07ab9fda235599e43c4ef5ac1b4a7e11db44c99fd9a354d9e43c4af5cc1e85bb27e3810cd767062c96312e40b1a753730ce57e740fde41193ed8bb084d77fd3a6507a9e25ad59eaf1a6c565d530926d3dd5d1dcd627b30555f1b7534ce3027cee58e4a0699e6d795eeb3f7b086540184fd1252f71e63055527cc3c90eed4f968c61a6ea59ee6e96697e13b201aaa367741aa53b8235a838bee8698a43e19ec6e1743dfc318a74cb3e301ca47dd30ce658cf3ae181732c6c5e8f49062ec6613363a8bb51b31f5a28c6fdbabf5a5809736711da29c2f814f83ddf5dfc359fe7e56fc75150664c2758b3b80822798629ae0e97e3ffbbe51f33f9dfafb799afaa1e27c4051842f9a6b841cd520d7696bde73c71456ba33a0038431dad20ba31a444eeaec5c4bfebfaa281943a8d47e0a638087156af795435187dd17aa59665de87e5091755f84bac4ba0f825860dd571b52fd74218a74fd7a4bc67a59baff2c7a5d3ab77ffbcc3a9e38f70911e4d23975fe35b8ee7a136cdb75d1afdcb5c7a23625f1c8adf757756a6b03d671980dc46a556b02d06e1d86ee589ff9757861a940f230df2c458ed7942bfcc665b85819683b36ed75087ef735d604e95d079c0761b726721b4d5d163419c84da122abef575c28b81a0272b11f3bf6af4862993c23170b49f7edfd8aa07ae50bea2f416d38edf4c82efddaaa8acabca7516b7cd4793c036a48fa714773d07f28e6d88ff7f66a82462f8b980685baf884b14964da9e4eb49ae7f82c12fe9980cef51b6f84439a2b9a6953c858892399ede0b53153608eb51d47a6cd1ba9a5e9e4742caa6606d4e04cdd71986e106d071ba91646ced96c1a4e59ed622a76a197604bd7dfc4c4c634a0d39621686a474c95302afc075d32aea94ea6b54cc63092a686405949a32fa451aaca0e59f097e61a1bc334d4e9dcaa2a1c6d118e0add0e965bf4a6f21cd500fa44ee11ca771a6b404812b6c8af5765914fb33c47602f97b5655b6aa2ad56997ced8d8d8d8e39ed8394d5f49d34ef1ea4e4b1c995cc48d2aab398469fe6de2b62fa5a5572cb8dcca683d4bbc8393764abc3fd3f1a648f9506db1a22ff5f3510f4844d0e6b738b9ee26a9fd590a86ad23891be8318f8c4855f253878021e26af3d98a6c53ff4f52b0833d2e45db481fe2dbacff02ec364ca30da8442967bbe67338d5f14f588322fee8b4483741f53206206640af01efd9c05a1cfe4be515c1f6920f2cd60796393db12e73737db5786f421469640a5fad81ef61146bb9080a5f7680dbec03eb27d4ae17bb805deeb439939a507693784a8f6c57500b60988d212a3ee4f7e251cf6a3971f7f0763a442324e660000, '6.2.0-61023');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `productcolors`
--
ALTER TABLE `productcolors`
  ADD PRIMARY KEY (`ProductId`,`ColorId`),
  ADD KEY `IX_ProductId` (`ProductId`) USING HASH,
  ADD KEY `IX_ColorId` (`ColorId`) USING HASH;

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_CatalogID` (`CatalogID`) USING HASH;

--
-- Indexes for table `productsizes`
--
ALTER TABLE `productsizes`
  ADD PRIMARY KEY (`ProductId`,`SizeId`),
  ADD KEY `IX_ProductId` (`ProductId`) USING HASH,
  ADD KEY `IX_SizeId` (`SizeId`) USING HASH;

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `thumbnails`
--
ALTER TABLE `thumbnails`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Id` (`Id`) USING HASH;

--
-- Indexes for table `__migrationhistory`
--
ALTER TABLE `__migrationhistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `productcolors`
--
ALTER TABLE `productcolors`
  ADD CONSTRAINT `FK_ProductColors_Colors_ColorId` FOREIGN KEY (`ColorId`) REFERENCES `colors` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ProductColors_Products_ProductId` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_Products_Catalogs_CatalogID` FOREIGN KEY (`CatalogID`) REFERENCES `catalogs` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `productsizes`
--
ALTER TABLE `productsizes`
  ADD CONSTRAINT `FK_ProductSizes_Products_ProductId` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ProductSizes_Sizes_SizeId` FOREIGN KEY (`SizeId`) REFERENCES `sizes` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `thumbnails`
--
ALTER TABLE `thumbnails`
  ADD CONSTRAINT `FK_Thumbnails_Products_Id` FOREIGN KEY (`Id`) REFERENCES `products` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
