-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 07, 2018 at 08:24 PM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `option_id`, `user_id`) VALUES
(1, 22, 7),
(2, 26, 7),
(3, 29, 7),
(4, 31, 7),
(5, 32, 7),
(6, 22, 8),
(7, 26, 8),
(8, 27, 8),
(9, 29, 8),
(10, 33, 8),
(11, 21, 9),
(12, 25, 9),
(13, 26, 9),
(14, 29, 9),
(15, 33, 9),
(16, 21, 10),
(17, 25, 10),
(18, 26, 10),
(19, 27, 10),
(20, 29, 10),
(21, 35, 10),
(22, 23, 11),
(23, 26, 11),
(24, 29, 11),
(25, 32, 11),
(26, 22, 12),
(27, 25, 12),
(28, 27, 12),
(29, 29, 12),
(30, 33, 12),
(31, 24, 13),
(32, 26, 13),
(33, 31, 13),
(34, 21, 14),
(35, 26, 14),
(36, 28, 14),
(37, 22, 15),
(38, 26, 15),
(39, 27, 15),
(40, 28, 15);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int(10) unsigned NOT NULL,
  `option_text` varchar(255) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `options_questions_idx` (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_id`, `option_text`, `sort`, `is_active`) VALUES
(19, 1, 'male', 10, 1),
(20, 1, 'female', 20, 1),
(21, 2, 'Java', 10, 1),
(22, 2, 'PHP', 20, 1),
(23, 2, 'C#', 30, 1),
(24, 2, 'Python', 40, 1),
(25, 3, 'I love helping people', 10, 1),
(26, 3, 'Cool Perks', 20, 1),
(27, 3, 'Other', 30, 1),
(28, 4, 'This one!', 10, 1),
(29, 4, 'No, this one', 20, 1),
(30, 4, 'OK, this one', 30, 1),
(31, 4, 'Definitely not this one', 40, 1),
(32, 5, 'gone in 60 seconds', 10, 1),
(33, 5, 'ConAir', 20, 1),
(34, 5, 'National Treasure', 30, 1),
(35, 5, 'National Treasure 5', 40, 1),
(36, 5, 'I love them all equally', 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) DEFAULT NULL,
  `is_gender` tinyint(1) unsigned DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `type`, `sort`, `is_gender`, `is_active`, `is_required`) VALUES
(1, 'What is your gender?', 1, 10, 1, 1, 1),
(2, 'What is your favorite programming language?', 1, 20, 0, 1, 0),
(3, 'What is your favorite company and why is it BetterHelp?', 2, 30, 0, 1, 1),
(4, 'What is your favorite answer to this question?', 2, 40, 0, 1, 0),
(5, 'Favorite Nick Cage movie?', 1, 50, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gender` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `gender`, `created_at`) VALUES
(1, 'male', '2015-09-19 14:52:33'),
(2, 'female', '2015-09-19 15:14:07'),
(3, 'female', '2015-09-19 15:15:12'),
(4, 'female', '2015-09-19 15:16:06'),
(5, 'female', '2015-09-19 15:16:25'),
(6, 'female', '2015-09-19 15:17:53'),
(7, 'female', '2015-09-19 15:18:17'),
(8, 'male', '2015-09-19 15:19:02'),
(9, 'male', '2015-09-19 15:21:26'),
(10, 'male', '2015-09-19 15:22:38'),
(11, 'female', '2015-09-19 15:29:39'),
(12, 'female', '2015-09-19 15:51:18'),
(13, 'male', '2016-03-30 22:15:58'),
(14, 'female', '2016-03-30 22:28:58'),
(15, 'male', '2018-09-07 17:36:48');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_questions` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
