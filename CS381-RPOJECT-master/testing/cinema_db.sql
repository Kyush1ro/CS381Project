-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.36 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for cinema_db
DROP DATABASE IF EXISTS `cinema_db`;
CREATE DATABASE IF NOT EXISTS `cinema_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cinema_db`;

-- Dumping structure for table cinema_db.available_booking_date_tbl
DROP TABLE IF EXISTS `available_booking_date_tbl`;
CREATE TABLE IF NOT EXISTS `available_booking_date_tbl` (
  `movie_id` int NOT NULL,
  `date_id` int NOT NULL AUTO_INCREMENT,
  `date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `no_of_seats` int DEFAULT NULL COMMENT 'number of seats available',
  PRIMARY KEY (`date_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table cinema_db.available_booking_date_tbl: ~0 rows (approximately)
INSERT INTO `available_booking_date_tbl` (`movie_id`, `date_id`, `date`, `no_of_seats`) VALUES
	(64, 1, 'Sun, Apr 27.', 25),
	(64, 2, 'Mon, Apr 28.', 30),
	(65, 3, 'Thu, Apr 20.', 20),
	(65, 4, 'Fri, Apr 21.', 20),
	(66, 5, 'Thu, Mar 20.', 30),
	(66, 6, 'Fri, Mar 21.', 25),
	(67, 7, 'Sat, Feb 15.', 35),
	(67, 8, 'Sun, Feb 16.', 15),
	(69, 9, 'Thu, Sept 20.', 10),
	(69, 10, 'Sun, Sept 16.', 20),
	(70, 11, 'Thu, Jul 20.', 10),
	(70, 12, 'Sun, Jul 25.', 23),
	(71, 13, 'Thu, Oct 20.', 25),
	(71, 14, 'Wed, Oct 28.', 32),
	(72, 15, 'Thu, Jul 20.', 17),
	(72, 16, 'Wed, Jul 28.', 20),
	(73, 17, 'Thu, Dec 10.', 22),
	(73, 18, 'Wed, Dec18.', 33),
	(78, 19, 'Sun, Nov 25.', 12),
	(78, 20, 'Thu, Nov 29.', 15),
	(79, 21, 'Fri, Jun 5.', 17),
	(79, 22, 'Wed, Jun 10.', 22),
	(90, 23, 'Wed, Jun 10.', 19),
	(90, 24, 'Wed, Jun 17.', 23),
	(91, 25, 'Wed, Jan 10.', 12),
	(91, 26, 'Wed, Jan 17.', 23),
	(92, 27, 'Sun, Aug 15.', 34),
	(92, 28, 'Sat, Aug 21.', 43),
	(130, 29, 'Thu, Oct 20.', 21),
	(130, 30, 'Thu, Oct 27', 12),
	(93, 31, 'Sun, Apr 17.', 20),
	(93, 32, 'Wed, Apr 20.', 30);

-- Dumping structure for table cinema_db.available_booking_time_tbl
DROP TABLE IF EXISTS `available_booking_time_tbl`;
CREATE TABLE IF NOT EXISTS `available_booking_time_tbl` (
  `time_id` int NOT NULL AUTO_INCREMENT,
  `date_id` int NOT NULL,
  `time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `seats` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`time_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table cinema_db.available_booking_time_tbl: ~0 rows (approximately)
INSERT INTO `available_booking_time_tbl` (`time_id`, `date_id`, `time`, `seats`) VALUES
	(5, 3, '8:30', NULL),
	(6, 3, '2:00', NULL),
	(7, 4, '7:45', NULL),
	(8, 4, '14:30', NULL),
	(9, 5, '8:30', NULL),
	(10, 5, '20:30', NULL),
	(11, 6, '10:30', NULL),
	(12, 6, '23:00', NULL),
	(13, 7, '18:00', NULL),
	(14, 7, '23:00', NULL),
	(15, 8, '14:00', NULL),
	(16, 8, '1:30', NULL),
	(17, 9, '20:00', NULL),
	(18, 9, '1:30', NULL),
	(19, 10, '18:00', NULL),
	(20, 10, '00:30', NULL),
	(21, 11, '8:30', NULL),
	(22, 11, '23:00', NULL),
	(23, 12, '12:00', NULL),
	(24, 12, '00:30', NULL),
	(25, 13, '14:45', NULL),
	(26, 13, '2:30', NULL),
	(27, 14, '2:30', NULL),
	(28, 14, '2:30', NULL),
	(29, 15, '18:00', NULL),
	(30, 15, '1:30', NULL),
	(31, 16, '16:30', NULL),
	(32, 16, '23:15', NULL),
	(33, 17, '8:30', NULL),
	(34, 17, '00:30', NULL),
	(35, 18, '10:30', NULL),
	(36, 18, '19:45', NULL),
	(37, 19, '9:30', NULL),
	(38, 19, '18:30', NULL),
	(39, 20, '11:30', NULL),
	(40, 20, '23:00', NULL),
	(41, 21, '16:00', NULL),
	(42, 21, '2:30', NULL),
	(43, 22, '8:30', NULL),
	(44, 22, '23:00', NULL),
	(45, 23, '8:30', NULL),
	(46, 23, '18:30', NULL),
	(47, 24, '16:00', NULL),
	(48, 24, '2:30', NULL),
	(49, 25, '10:30', NULL),
	(50, 25, '19:30', NULL),
	(51, 26, '9:30', NULL),
	(52, 26, '1:30', NULL),
	(53, 27, '11:30', NULL),
	(54, 27, '2:30', NULL),
	(55, 28, '9:30', NULL),
	(56, 28, '00:30', NULL),
	(57, 29, '10:30', NULL),
	(58, 29, '23:00', NULL),
	(59, 30, '16:00', NULL),
	(60, 30, '1:30', NULL),
	(61, 31, '8:30', NULL),
	(62, 31, '2:30', NULL),
	(63, 32, '16:00', NULL),
	(64, 32, '1:30', NULL);

-- Dumping structure for table cinema_db.booking_tbl
DROP TABLE IF EXISTS `booking_tbl`;
CREATE TABLE IF NOT EXISTS `booking_tbl` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `movie_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `time_id` int DEFAULT NULL,
  `seat_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table cinema_db.booking_tbl: ~2 rows (approximately)
INSERT INTO `booking_tbl` (`booking_id`, `movie_id`, `user_id`, `time_id`, `seat_num`) VALUES
	(1, 64, 8, 1, 'A1'),
	(2, 64, 9, 1, 'A2');

-- Dumping structure for table cinema_db.movie_tbl
DROP TABLE IF EXISTS `movie_tbl`;
CREATE TABLE IF NOT EXISTS `movie_tbl` (
  `Movie_id` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `Rating` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `Year` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `Month` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `Certificate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `Runtime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `Directors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `Stars` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `Genre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `Image_path` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `Description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'No Description',
  `Language` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Arabic; English',
  `Format` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '2d; 3d; imax',
  `URL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'https://www.youtube.com/',
  `Price` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Movie_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table cinema_db.movie_tbl: ~26 rows (approximately)
INSERT INTO `movie_tbl` (`Movie_id`, `Title`, `Rating`, `Year`, `Month`, `Certificate`, `Runtime`, `Directors`, `Stars`, `Genre`, `Image_path`, `Description`, `Language`, `Format`, `URL`, `Price`) VALUES
	(65, 'Guillermo del Toro\'s Pinocchio', '7.6', '2022', 'December', 'PG-13', '117', 'Guillermo del Toro; Mark Gustafson', 'Ewan McGregor; David Bradley; Gregory Mann; Burn Gorman', 'Animation; Drama', 'pinocchio.jpg', 'A dark, stop-motion animated reimagining of the classic tale set in fascist Italy, blending fantasy with political commentary and exploring themes of mortality and free will.', 'English', '2d; imax', 'https://www.youtube.com/', 15),
	(66, 'Bullet Train', '7.3', '2022', 'August', 'R', '127', 'David Leitch', 'Brad Pitt; Joey King; Aaron Taylor Johnson; Brian Tyree Henry', 'Action; Comedy; Thriller', 'bullet_train.jpg', 'Fast-paced action comedy about several assassins on a Japanese bullet train discovering their missions are interconnected, led by Brad Pitt in a role blending humor and combat.', 'Arabic', '2d; 3d', 'https://www.youtube.com/', 15),
	(67, 'The Banshees of Inisherin', '7.8', '2022', 'November', 'R', '114', 'Martin McDonagh', 'Colin Farrell; Brendan Gleeson; Kerry Condon; Pat Shortt', 'Comedy; Drama', 'thebanshees.jpg', 'Set on a remote Irish island in the 1920s, this dark comedy-drama explores a friendship abruptly ended, leading to shocking consequences and reflecting on isolation and purpose.', 'Arabic; English', '3d; imax', 'https://www.youtube.com/', 23),
	(69, 'Emancipation', '6.1', '2022', 'December', 'R', '132', 'Antoine Fuqua', 'Will Smith; Ben Foster; Charmaine Bingwa; Gilbert Owuor', 'Action; Thriller', 'emancipation.jpg', 'Historical thriller based on the true story of "Whipped Peter," an enslaved man who escapes through Louisiana swamps toward freedom while being hunted by slave catchers.', 'English', '3d', 'https://www.youtube.com/', 15),
	(70, 'Amsterdam', '6.1', '2022', 'October', 'R', '134', 'David O Russell', 'Christian Bale; Margot Robbie; John David Washington; Alessandro Nivola', 'Comedy; Drama; History', '0', '1930s period mystery featuring three friends who witness a murder and become suspects themselves, uncovering a bizarre American political conspiracy.', 'Arabic', '2d; ', 'https://www.youtube.com/', 12),
	(71, 'Violent Night', '6.9', '2022', 'December', 'R', '112', 'Tommy Wirkola', 'David Harbour; John Leguizamo; Beverly D Angelo; Alex Hassell', 'Action; Comedy; Crime', '0', 'Christmas action-comedy featuring a battle-hardened Santa Claus who uses his combat skills to save a wealthy family taken hostage by mercenaries on Christmas Eve', 'English', '2d; imax', 'https://www.youtube.com/', 28),
	(72, 'The Whale', '7.8', '2022', 'December', 'R', '117', 'Darren Aronofsky', 'Brendan Fraser; Sadie Sink; Ty Simpkins; Hong Chau', 'Drama', '0', 'Psychological drama about a reclusive, severely obese English teacher attempting to reconnect with his estranged teenage daughter while dealing with his own mortality.', 'Arabic; English', '3d; imax', '46', 46),
	(73, 'The Fabelmans', '7.6', '2022', 'November', 'PG-13', '151', 'Steven Spielberg', 'Michelle Williams; Gabriel LaBelle; Paul Dano; Judd Hirsch', 'Drama', '0', 'Semi-autobiographical coming-of-age drama from Steven Spielberg about a young aspiring filmmaker discovering a shattering family secret and the power of movies.', 'Arabic; English', '2d; 3d;', 'https://www.youtube.com/', 34),
	(78, 'Black Adam', '6.5', '2022', 'October', 'PG-13', '125', 'Jaume Collet Serra', 'Dwayne Johnson; Aldis Hodge; Pierce Brosnan; Noah Centineo', 'Action; Adventure; Fantasy', '0', 'Superhero action film centered on Dwayne Johnson as the titular antihero with godlike powers who emerges after 5,000 years of imprisonment to challenge modern justice.', 'Arabic; English', '2d; 3d; imax', 'https://www.youtube.com/', 33),
	(79, 'Spirited', '6.6', '2022', 'November', 'PG-13', '127', 'Sean Anders', 'Will Ferrell; Ryan Reynolds; Octavia Spencer; Patrick Page', 'Comedy; Family; Musical', '0', 'Musical comedy reimagining of "A Christmas Carol" where the Ghost of Christmas Present questions his own existence after encountering an "unredeemable" soul he hopes to transform.', 'Arabic; English', '2d; 3d; imax', 'https://www.youtube.com/', 23),
	(90, 'Pinocchio', '5.1', '2022', 'September', 'PG-13', '105', 'Robert Zemeckis', 'Joseph Gordon Levitt; Tom Hanks; Benjamin Evan Ainsworth; Angus Wright', 'Adventure; Comedy; Drama', '0', 'A puppet is brought to life by a fairy, who assigns him to lead a virtuous life in order to become a real boy.', 'Arabic; English', '2d; 3d; imax', 'https://www.youtube.com/', 55),
	(91, 'Top Gun: Maverick', '8.4', '2022', 'May', 'PG-13', '130', 'Joseph Kosinski', 'Tom Cruise; Jennifer Connelly; Miles Teller; Val Kilmer', 'Action; Drama', '0', 'The story involves Maverick confronting his past while training a group of younger Top Gun graduates, including the son of his deceased best friend, for a dangerous mission.', 'Arabic; English', '2d; 3d; imax', 'https://www.youtube.com/', 43),
	(101, 'The Pale Blue Eye', '7.6', '2022', 'January', 'R', '128', 'Scott Cooper', 'Christian Bale; Harry Melling; Fred Hechinger; Gillian Anderson', 'Crime; Horror; Mystery', '0', 'A world-weary detective is hired to investigate the murder of a West Point cadet. Stymied by the cadets\' code of silence, he enlists one of their own to help unravel the case - a young man t... ', 'Arabic; English', '2d; 3d; imax', 'https://www.youtube.com/', 22),
	(102, 'Puss in Boots: The Last Wish', '7.7', '2022', 'December', 'PG-13', '100', 'Joel Crawford; Januel Mercado', 'Antonio Banderas; Salma Hayek; Harvey Guill n; Florence Pugh', 'Animation; Adventure; Comedy', '0', 'When Puss in Boots discovers that his passion for adventure has taken its toll and he has burned through eight of his nine lives, he launches an epic journey to restore them by finding the m... ', 'Arabic; English', '2d; 3d; imax', 'https://www.youtube.com/', 13),
	(103, 'All Quiet on the Western Front', '7.8', '2022', 'October', 'R', '148', 'Edward Berger', 'Felix Kammerer; Albrecht Schuch; Aaron Hilmer; Moritz Klaus', 'Action; Drama', '0', 'No Description', 'Arabic; English', '2d; 3d; imax', 'https://www.youtube.com/', 44),
	(104, 'Tár', '7.8', '2022', 'October', 'R', '158', 'Todd Field', 'Cate Blanchett; No mie Merlant; Nina Hoss; Sophie Kauer', 'Biography; Drama', '0', 'No Description', 'Arabic; English', '2d; 3d; imax', 'https://www.youtube.com/', 27),
	(106, 'Scrooge: A Christmas Carol', '6.1', '2022', 'December', 'PG-13', '96', 'Stephen Donnelly', 'Luke Evans; Olivia Colman; Jessie Buckley; Johnny Flynn', 'Animation; Adventure; Comedy', '0', 'No Description', 'Arabic; English', '2d; 3d; imax', 'https://www.youtube.com/', 32),
	(108, 'Christmas Bloody Christmas', '5.2', '2022', 'December', 'R', '86', 'Joe Begos', 'Riley Dandy; Sam Delich; Jonah Ray; Dora Madison', 'Horror', '0', 'No Description', 'Arabic; English', '2d; 3d; imax', 'https://www.youtube.com/', 14),
	(109, 'Kantara', '8.5', '2022', 'September', 'PG-13', '148', 'Rishab Shetty', 'Rishab Shetty; Kishore Kumar G ; Achyuth Kumar; Sapthami Gowda', 'Action; Adventure; Drama', '0', 'No Description', 'Arabic; English', '2d; 3d; imax', 'https://www.youtube.com/', 45),
	(110, 'Nope', '6.9', '2022', 'July', 'R', '130', 'Jordan Peele', 'Daniel Kaluuya; Keke Palmer; Steven Yeun; Brandon Perea', 'Horror; Mystery; Sci-Fi', '0', 'No Description', 'Arabic; English', '2d; 3d; imax', 'https://www.youtube.com/', 26),
	(130, 'Mufasa: The Lion King', ' 5.0', '2024', 'December', 'PG', '118', 'Barry Jenkins', 'Aaron Pierre, Kelvin Harrison Jr., Beyoncé Knowles-Carter, Donald Glover, Seth Rogen, Billy Eichner, Blue Ivy Carter', 'Animation, Adventure, Drama, Family, Musical', 'images/mufasa_the_lion_king_2024.jpg', 'An origin story exploring Mufasa\'s rise from orphaned cub to king of the Pride Lands, narrated by Rafiki to Kiara, with commentary from Timon and Pumbaa.', 'Arabic; English', '2d; 3d; imax', 'https://www.youtube.com/', 25),
	(134, 'The Dark Knight', '9.0', '2023', 'December', 'PG-13', '152', 'Christopher Nolan', 'Christian Bale, Heath Ledger, Aaron Eckhart, Michael Caine', 'Action, Crime, Drama', 'images/the_dark_knight.jpg', 'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham, forcing Batman to come out of retirement to stop him.', 'English', '2D, IMAX', 'https://www.imdb.com/title/tt0468569/', 22),
	(135, 'Inception', '8.8', '2021', 'July', 'PG-13', '148', 'Christopher Nolan', 'Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page, Tom Hardy', 'Action, Adventure, Sci-Fi', 'images/inception.jpg', 'A thief who enters the dreams of others to steal secrets from their subconscious is given the task of planting an idea into the mind of a CEO.', 'English', '2D, IMAX', 'https://www.imdb.com/title/tt1375666/', 25),
	(137, 'The Shawshank Redemption', '9.3', '2020', 'September', 'R', '142', 'Frank Darabont', 'Tim Robbins, Morgan Freeman, Bob Gunton, William Sadler', 'Drama', 'images/the_shawshank_redemption.jpg', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'English', '2D, Blu-ray', 'https://www.imdb.com/title/tt0111161/', 20),
	(138, 'Interstellar', '8.7', '2023', 'November', 'PG-13', '169', 'Christopher Nolan', 'Matthew McConaughey, Anne Hathaway, Jessica Chastain, Michael Caine', 'Adventure, Drama, Sci-Fi', 'images/interstellar.jpg', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.', 'English', '2D, IMAX', 'https://www.imdb.com/title/tt0816692/', 21),
	(140, 'Forrest Gump', '8.8', '2023', 'October', 'PG-13', '142', 'Robert Zemeckis', 'Tom Hanks, Robin Wright, Gary Sinise, Mykelti Williamson', 'Drama, Romance', 'images/forrest_gump.jpg', 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an extraordinary talent for running.', 'English', '2D, Blu-ray', 'https://www.imdb.com/title/tt0109830/', 18);

-- Dumping structure for table cinema_db.user_tbl
DROP TABLE IF EXISTS `user_tbl`;
CREATE TABLE IF NOT EXISTS `user_tbl` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'user',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table cinema_db.user_tbl: ~4 rows (approximately)
INSERT INTO `user_tbl` (`user_id`, `username`, `email`, `password`, `user_type`) VALUES
	(8, 'ammar813', 'amar-4367@hotmail.com', '12345@Aa', 'user'),
	(9, 'ammar813', 'amar-4367@hotmail.com', '12345@Aa', 'user'),
	(10, 'ammar', 'amar@a.com', '123', 'Admin'),
	(11, 'john', 'j@example.com', '123', 'user');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
