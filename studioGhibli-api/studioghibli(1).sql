-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 29, 2024 at 08:30 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studioghibli`
--

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
CREATE TABLE IF NOT EXISTS `directors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `producer` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`id`, `name`, `producer`, `created_at`, `updated_at`) VALUES
(11, 'Hayao Miyazaki', 'Isao Takahata', '2024-03-28 23:56:35', '2024-03-28 23:56:35'),
(12, 'Isao Takahata', 'Toru Hara', '2024-03-28 23:58:31', '2024-03-28 23:58:31'),
(13, 'Hayao Miyazaki', 'Hayao Miyazaki', '2024-03-28 23:58:46', '2024-03-28 23:58:46'),
(14, 'Hayao Miyazaki', 'Toshio Suzuki', '2024-03-28 23:59:21', '2024-03-28 23:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `original_title` varchar(250) NOT NULL,
  `director_id` int NOT NULL,
  `description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `release_date` varchar(250) NOT NULL,
  `movie_banner` varchar(125) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ghibli-movie-id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `original_title`, `director_id`, `description`, `release_date`, `movie_banner`, `ghibli-movie-id`, `created_at`, `updated_at`) VALUES
(13, 'Castle in the Sky', '天空の城ラピュタ', 0, 'The orphan Sheeta inherited a mysterious crystal that links her to the mythical sky-kingdom of Laputa. With the help of resourceful Pazu and a rollicking band of sky pirates, she makes her way to the ruins of the once-great civilization. Sheeta and Pazu must outwit the evil Muska, who plans to use Laputa\'s science to make himself ruler of the world', '1986-02-08', 'ghibli1.jpg\r\n', '2baf70d1-42bb-4437-b551-e5fed5a87abe', '2024-03-28 23:48:01', '2024-03-28 23:48:01'),
(15, 'Grave of the Fireflies', '火垂るの墓', 0, 'In the latter part of World War II, a boy and his sister, orphaned when their mother is killed in the firebombing of Tokyo, are left to survive on their own in what remains of civilian life in Japan. The plot follows this boy and his sister as they do their best to survive in the Japanese countryside, battling hunger, prejudice, and pride in their own quiet, personal battle', '1988-08-16', 'ghibli2.jpg', '12cfb892-aac0-4c5b-94af-521852e46d6a', '2024-03-28 23:50:30', '2024-03-28 23:50:30'),
(16, 'My Neighbor Totoro', 'となりのトトロ', 0, 'Two sisters move to the country with their father in order to be closer to their hospitalized mother, and discover the surrounding trees are inhabited by Totoros, magical spirits of the forest. When the youngest runs away from home, the older sister seeks help from the spirits to find her.', '1988-08-16', 'ghibli3.jpg', '58611129-2dbc-4a81-a72f-77ddfc1b1b49', '2024-03-28 23:53:43', '2024-03-28 23:53:43'),
(17, 'Kiki\'s Delivery Service', '魔女の宅急便', 0, 'A young witch, on her mandatory year of independent life, finds fitting into a new community difficult while she supports herself by running an air courier service.', '1989-07-29', 'ghibli4.jpg', 'ea660b10-85c4-4ae3-8a5f-41cea3648e3e', '2024-03-28 23:53:43', '2024-03-28 23:53:43'),
(18, 'Howl\'s Moving Castle', 'ハウルの動く城', 0, 'When Sophie, a shy young woman, is cursed with an old body by a spiteful witch, her only chance of breaking the spell lies with a self-indulgent yet insecure young wizard and his companions in his legged, walking home.', '2004-11-20', 'ghibli5.jpg', 'cd3d059c-09f4-4ff3-8d63-bc765a5184fa', '2024-03-28 23:55:15', '2024-03-28 23:55:15');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
