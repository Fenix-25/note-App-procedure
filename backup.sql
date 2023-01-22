-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for notes
CREATE DATABASE IF NOT EXISTS `notes` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `notes`;

-- Dumping structure for table notes.notes
CREATE TABLE IF NOT EXISTS `notes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- Dumping data for table notes.notes: ~5 rows (approximately)
DELETE FROM `notes`;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` (`id`, `title`, `body`, `user_id`) VALUES
	(26, 'asdasdas', 'asdadasd', 7),
	(36, '234234', '234234', 6),
	(37, '2321', '23123', 24),
	(57, '213', '12312312', 5),
	(58, '1111', '11111', 5);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;

-- Dumping structure for table notes.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- Dumping data for table notes.users: ~4 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `password`, `email`) VALUES
	(5, 'Serhii', '$2y$10$cOV8lpv1cK568lEkDxlR2uuzZ4wMKDFM7yi8Q/CEF5pArXUT36Qie', 'bisi@gmail.com'),
	(6, 'Ð¢ÐµÑ‚ÑÐ½Ð°', '$2y$10$AYh6TQBzi5E4fcHJVfQMSOwnSZBBwf/fjz/p1Bg433zGEWkohZfma', 'se@gmail.com'),
	(7, 'test', '$2y$10$6VvtXvJZAmAFpzdjwGArzOluL6FB/rolz3VCSI5uJDbwYM4HdXaGy', 'tester3@test.com'),
	(24, 'Sergii', '$2y$10$sHOKx.P2/1a7pu.jW3Ld2udmc7CqIBEN/K1P3pK6uvRzlZ9iUWFdC', 'tester4@test.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
