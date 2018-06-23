-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 20, 2018 at 04:53 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr10_patrick_jaritz_biglibrary`
--
CREATE DATABASE IF NOT EXISTS `cr10_patrick_jaritz_biglibrary` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cr10_patrick_jaritz_biglibrary`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(6) UNSIGNED NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `fk_isbn` int(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `first_name`, `last_name`, `fk_isbn`) VALUES
(1, 'Norah', 'Smaridge', 375848216),
(2, 'Kari', 'Samuels', 998488028),
(3, 'Mo', 'Willems', 1423109624),
(4, 'Okee Dokee', 'Brothers', 1454918301),
(5, 'Esther', 'Averill', 1590170472),
(7, 'Julia', 'Donaldson', NULL),
(8, 'Dev', 'Petty', NULL),
(9, 'Shel', 'Silverstein', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `isbn` int(23) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `short_desc` varchar(255) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `media_status` varchar(20) DEFAULT NULL,
  `fk_author_id` int(6) DEFAULT NULL,
  `fk_pub_id` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`isbn`, `title`, `image`, `type`, `short_desc`, `publish_date`, `media_status`, `fk_author_id`, `fk_pub_id`) VALUES
(60256678, 'Where the Sidewalk Ends: Poems and Drawings', 'https://images-na.ssl-images-amazon.com/images/I/51ZnpIZcanL._SX376_BO1,204,203,200_.jpg', 'Book', 'Shel Silversteins masterful collection of poems and drawings is at once outrageously funny and profound.', '2014-02-18', 'Available', 9, 29),
(142403877, 'The Gruffalo', 'https://images-na.ssl-images-amazon.com/images/I/51inFTeRHCL._SX400_BO1,204,203,200_.jpg', 'Book', 'A mouse is taking a stroll through the deep, dark wood when along comes a hungry fox, then an owl, and then a snake. The mouse is good enough to eat but smart enough to know this, so he invents . . . the gruffalo!', '2006-03-02', 'Available', 7, 24),
(142405802, 'The Snail and the Whale', 'https://images-na.ssl-images-amazon.com/images/I/61YDHV-%2B-VL._SY448_BO1,204,203,200_.jpg', 'Book', 'When a tiny snail meets a humpback whale, the two travel together to far-off lands. Its a dream come true for the snail, who has never left home before. But when the whale swims too close to shore, will the snail be able to save her new friend?', '2006-04-06', 'Available', 7, 22),
(142501122, 'Room on the Broom', 'https://images-na.ssl-images-amazon.com/images/I/61717NOl-IL._SY447_BO1,204,203,200_.jpg', 'DVD', 'The witch and her cat are happily flying through the sky on a broomstick when the wind picks up and blows away the witchs hat, then her bow, and then her wand!  Luckily, three helpful animals find the missing items, and all they want in return is a ride o', '2003-08-25', 'Available', 7, 21),
(316303118, 'Claymates', 'https://images-na.ssl-images-amazon.com/images/I/614F-CrLMUL._SX496_BO1,204,203,200_.jpg', 'Book', 'A visual masterpiece of photographic storytelling that is wildly creative, full of humor, and a potent reminder of how we are all capable of transforming ourselves into the person we want to be.', '2017-06-20', 'Reserved', 8, 21),
(375848216, 'The Big Tidy-Up', 'https://images-na.ssl-images-amazon.com/images/I/5172TjjgB-L._SX400_BO1,204,203,200_.jpg', 'Book', 'Jennifers mother has refused to touch Jennifers messy room until after Christmas Day. Free to let her room go, Jennifer turns a blind eye to the fustiness, the dustiness, and the spiders webby empire up in the corner! Finally, one day, she can stand he', '2008-05-13', 'Available', 1, 11),
(998488028, 'Lynnie and the Gentle Dragon', 'https://images-na.ssl-images-amazon.com/images/I/51QZ2i2dnsL._SX381_BO1,204,203,200_.jpg', 'Book', 'Lynnie and the Gentle Dragon is a magical tale of adventure and everlasting friendship.', '2017-00-00', 'Available', 2, 13),
(1423109624, 'I Will Surprise My Friend!', 'https://images-na.ssl-images-amazon.com/images/I/51kONt2mbeL._SX363_BO1,204,203,200_.jpg', 'Magazine', 'Gerald and Piggie want to play a game and surprise each other-but the biggest surprise is the one they least expect.', '2008-00-00', 'Reserved', 3, 17),
(1423119906, 'I Am Going!', 'https://images-na.ssl-images-amazon.com/images/I/41PrG3dJs2L._SX350_BO1,204,203,200_.jpg', 'Book', 'Willems Geisel Awardwinning duo continues to delight readers with their silly shenanigans. Packed full of humor and heart, the Elephant & Piggie Books are vetted by an early-learning specialist and early learners themselves, so theyll be right on target f', '2010-01-26', 'Reserved', 3, 20),
(1454918301, 'Thousand Star Hotel', 'https://images-na.ssl-images-amazon.com/images/I/610URwRm3sL._SY498_BO1,204,203,200_.jpg', 'DVD', 'The Grammy-winning Okee Dokee Brothers create a fanciful story - inspired by the folktale The Fisherman and His Wife - about the things we wish for and the things we really need.', '2017-03-07', 'Available', 4, 12),
(1590170472, 'Jenny and the Cat Club: A Collection of Favorite Stories about Jenny Linsky', 'https://images-na.ssl-images-amazon.com/images/I/51QNh6ERqjL._SX320_BO1,204,203,200_.jpg', 'Book', 'The gentle Jenny Linsky would like nothing more than to join the local Cat Club, whose members include Madame Butterfly, an elegant Persian, the high-stepping Macaroni, and stately, plump Mr. President. ', '2003-11-30', 'Available', 5, 15);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `pub_id` int(6) UNSIGNED NOT NULL,
  `pub_name` varchar(50) NOT NULL,
  `pub_size` varchar(50) NOT NULL,
  `pub_address` varchar(50) NOT NULL,
  `fk_isbn` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`pub_id`, `pub_name`, `pub_size`, `pub_address`, `fk_isbn`) VALUES
(11, 'Adobe', 'Medium', '261-7303 Phasellus St.', NULL),
(12, 'Altavista', 'Big', 'P.O. Box 219, 9052 Vel, Road', NULL),
(14, 'Macromedia', 'Small', '282-4368 Sit Rd.', NULL),
(15, 'Cakewalk', 'Small', 'Ap #825-8606 Erat. Road', NULL),
(16, 'Chami', 'Medium', 'Ap #963-3970 Eros Street', NULL),
(17, 'Google', 'Big', 'P.O. Box 212, 3725 Velit Road', NULL),
(18, 'Lycos', 'Big', 'Ap #700-5123 Rhoncus. St.', NULL),
(22, 'Sibelius', 'Small', '843-4451 Phasellus Rd.', NULL),
(23, 'Yahoo', 'Medium', '7579 Nascetur Av.', NULL),
(24, 'Finale', 'Medium', 'Ap #173-4607 Fringilla Road', NULL),
(28, 'Lavasoft', 'Big', 'Ap #415-9951 At Avenue', NULL),
(29, 'Borland', 'Small', 'P.O. Box 668, 5555 Lacus. St.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(6) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `fk_isbn` int(13) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `user_email`, `user_pass`, `fk_isbn`, `reg_date`) VALUES
(1, 'Horstl', 'Borstl', 'horstl@mail.com', '123456', NULL, '2018-06-20 09:48:51'),
(14, 'Kelly', 'Glenn', 'ipsum.dolor@Aliquam.co.uk', '34231343-4', NULL, '2018-06-20 09:46:58'),
(15, 'Nissim', 'Roach', 'Aenean.eget.magna@amet.net', '32235830-K', NULL, '2018-06-20 09:46:58'),
(16, 'Keegan', 'Kline', 'diam.Sed.diam@Curabitur.org', '6429841-0', NULL, '2018-06-20 09:46:58'),
(17, 'Cyrus', 'Boyer', 'Nam@necligulaconsectetuer.co.uk', '43091677-7', NULL, '2018-06-20 09:46:58'),
(18, 'Salvador', 'Burnett', 'natoque@egestasligulaNullam.com', '16446773-2', NULL, '2018-06-20 09:46:58'),
(19, 'Ashton', 'Kirk', 'Integer@Cras.ca', '29550751-9', NULL, '2018-06-20 09:46:58'),
(20, 'Byron', 'Maldonado', 'Cras.vulputate.velit@pharetraNam.edu', '7813798-3', NULL, '2018-06-20 09:46:58'),
(21, 'Adam', 'Pacheco', 'fermentum.vel@convallis.co.uk', '8161489-K', NULL, '2018-06-20 09:46:58'),
(22, 'Rahim', 'Mckay', 'lorem.luctus.ut@aptent.ca', '6062133-0', NULL, '2018-06-20 09:46:58'),
(23, 'Lucian', 'Shaw', 'pede.nonummy.ut@Praesenteunulla.org', '21414935-4', NULL, '2018-06-20 09:46:58'),
(24, 'Jerry', 'Petty', 'est.mauris@ametconsectetueradipiscing.org', '43650597-3', NULL, '2018-06-20 09:47:47'),
(25, 'Vance', 'Allen', 'lorem@vitae.edu', '18984483-2', NULL, '2018-06-20 09:47:47'),
(26, 'Chaney', 'Little', 'odio.auctor@suscipit.ca', '27771065-K', NULL, '2018-06-20 09:47:47'),
(27, 'Octavius', 'Good', 'lobortis@vulputate.co.uk', '33439094-2', NULL, '2018-06-20 09:47:47'),
(28, 'Lyle', 'Mckay', 'tellus.Suspendisse@egetvenenatisa.org', '32879295-8', NULL, '2018-06-20 09:47:47'),
(29, 'Dorian', 'Clayton', 'egestas.rhoncus.Proin@mi.net', '45003589-0', NULL, '2018-06-20 09:47:47'),
(30, 'Nicholas', 'Morris', 'vitae.risus@est.com', '37907536-3', NULL, '2018-06-20 09:47:47'),
(31, 'Tobias', 'Mccoy', 'semper@dictummagnaUt.net', '42954801-2', NULL, '2018-06-20 09:47:47'),
(32, 'Hashim', 'Leblanc', 'nisi@nisimagna.edu', '19450219-2', NULL, '2018-06-20 09:47:47'),
(33, 'Amal', 'Compton', 'sapien.cursus@nostraper.org', '47751893-1', NULL, '2018-06-20 09:47:47'),
(35, 'first', 'last', 'email', 'pass', NULL, '2018-06-20 12:08:24'),
(36, 'Bertl', 'Hertl', 'bertl@mail.com', '123456', NULL, '2018-06-20 12:08:35'),
(37, 'first_name', 'last_name', 'user_email', 'password', NULL, '2018-06-20 12:10:24'),
(38, 'Hansl', 'Schwansl', 'mail@mail.com', '123456', NULL, '2018-06-20 12:11:45'),
(39, 'Babsi', 'Strabsi', 'babsi@mail.com', '123456', NULL, '2018-06-20 12:13:25'),
(40, 'Hannes', 'Banannes', 'hannes@mail.com', '123456', NULL, '2018-06-20 14:37:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`),
  ADD KEY `fk_isbn` (`fk_isbn`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`isbn`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`pub_id`),
  ADD KEY `fk_isbn` (`fk_isbn`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_ibfk_1` (`fk_isbn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `isbn` int(23) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `pub_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `author_ibfk_1` FOREIGN KEY (`fk_isbn`) REFERENCES `media` (`isbn`);

--
-- Constraints for table `publisher`
--
ALTER TABLE `publisher`
  ADD CONSTRAINT `publisher_ibfk_1` FOREIGN KEY (`fk_isbn`) REFERENCES `media` (`isbn`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`fk_isbn`) REFERENCES `media` (`isbn`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
