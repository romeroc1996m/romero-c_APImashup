-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 01, 2024 at 03:42 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: studioghibli
--

-- --------------------------------------------------------

--
-- Table structure for table directors
--

CREATE TABLE directors (
  id int(11) NOT NULL,
  name varchar(255) NOT NULL,
  producer varchar(255) NOT NULL,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table directors
--

INSERT INTO directors (id, name, producer, created_at, updated_at) VALUES
(11, 'Hayao Miyazaki', 'Isao Takahata', '2024-03-28 23:56:35', '2024-03-28 23:56:35'),
(12, 'Isao Takahata', 'Toru Hara', '2024-03-28 23:58:31', '2024-03-28 23:58:31'),
(13, 'Hayao Miyazaki', 'Hayao Miyazaki', '2024-03-28 23:58:46', '2024-03-28 23:58:46'),
(14, 'Hayao Miyazaki', 'Toshio Suzuki', '2024-03-28 23:59:21', '2024-03-28 23:59:21');

-- --------------------------------------------------------

--
-- Table structure for table movies
--

CREATE TABLE movies (
  id int(11) NOT NULL,
  title varchar(255) NOT NULL,
  original_title varchar(250) NOT NULL,
  movie_banner varchar(125) NOT NULL,
  ghibli_movie_id varchar(250) NOT NULL,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table movies
--

INSERT INTO movies (id, title, original_title, movie_banner, ghibli_movie_id, created_at, updated_at) VALUES
(15, 'Grave of the Fireflies', '火垂るの墓', 'ghibli2.jpg', '12cfb892-aac0-4c5b-94af-521852e46d6a', '2024-03-28 23:50:30', '2024-03-28 23:50:30'),
(16, 'My Neighbor Totoro', 'となりのトトロ', 'ghibli3.jpg', '58611129-2dbc-4a81-a72f-77ddfc1b1b49', '2024-03-28 23:53:43', '2024-03-28 23:53:43'),
(17, 'Kiki\'s Delivery Service', '魔女の宅急便', 'ghibli4.jpg', 'ea660b10-85c4-4ae3-8a5f-41cea3648e3e', '2024-03-28 23:53:43', '2024-03-28 23:53:43'),
(18, 'Howl\'s Moving Castle', 'ハウルの動く城', 'ghibli5.jpg', 'cd3d059c-09f4-4ff3-8d63-bc765a5184fa', '2024-03-28 23:55:15', '2024-03-28 23:55:15'),
(19, 'Castle in the Sky', '天空の城ラピュタ', 'ghibli1.jpg', '2baf70d1-42bb-4437-b551-e5fed5a87abe', '2024-03-30 05:00:55', '2024-03-30 05:00:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table directors
--
ALTER TABLE directors
  ADD PRIMARY KEY (id);

--
-- Indexes for table movies
--
ALTER TABLE movies
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table directors
--
ALTER TABLE directors
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table movies
--
ALTER TABLE movies
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
