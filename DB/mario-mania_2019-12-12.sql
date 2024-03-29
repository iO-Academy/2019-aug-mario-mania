# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.27)
# Database: mario-mania
# Generation Time: 2019-12-12 13:46:19 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table cohort
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cohort`;

CREATE TABLE `cohort` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(8) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `cohort` WRITE;
/*!40000 ALTER TABLE `cohort` DISABLE KEYS */;

INSERT INTO `cohort` (`id`, `name`)
VALUES
	(4,'2017-xxx'),
	(3,'2018-xxx'),
	(1,'2019-aug'),
	(2,'2019-feb');

/*!40000 ALTER TABLE `cohort` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table favRacer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `favRacer`;

CREATE TABLE `favRacer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `favRacer` WRITE;
/*!40000 ALTER TABLE `favRacer` DISABLE KEYS */;

INSERT INTO `favRacer` (`id`, `name`)
VALUES
	(10,'Baby Mario'),
	(11,'Baby Peach'),
	(12,'Bowser'),
	(7,'Donkey Kong'),
	(9,'Koopa Troo'),
	(2,'Luigi'),
	(1,'Mario'),
	(3,'Peach'),
	(5,'Toad'),
	(8,'Waluigi'),
	(6,'Wario'),
	(4,'Yoshi');

/*!40000 ALTER TABLE `favRacer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table race
# ------------------------------------------------------------

DROP TABLE IF EXISTS `race`;

CREATE TABLE `race` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `race` bigint(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `race` WRITE;
/*!40000 ALTER TABLE `race` DISABLE KEYS */;

INSERT INTO `race` (`id`, `race`)
VALUES
	(1,1576147500499),
	(2,1576147500520),
	(4,1576147500500),
	(5,1576150261114),
	(6,1576150286659),
	(7,1576150349412),
	(8,1576150457415),
	(9,1576150608392),
	(10,1576150632477),
	(11,1576150700504),
	(12,1576150717559),
	(13,1576150783403),
	(14,1576150853185),
	(15,1576150889935),
	(16,1576150978689);

/*!40000 ALTER TABLE `race` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table result
# ------------------------------------------------------------

DROP TABLE IF EXISTS `result`;

CREATE TABLE `result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trackid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `position` int(2) NOT NULL,
  `raceid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;

INSERT INTO `result` (`id`, `trackid`, `userid`, `position`, `raceid`)
VALUES
	(1,1,1,1,1),
	(2,1,2,5,1),
	(3,1,3,6,1),
	(4,1,4,12,1),
	(5,2,1,4,2),
	(6,2,2,1,2),
	(7,2,3,5,2),
	(8,2,4,2,2),
	(9,6,1,2,3),
	(10,6,2,5,3),
	(11,6,3,12,3),
	(12,6,4,1,3),
	(59,3,1,3,16),
	(60,3,2,12,16),
	(61,3,3,2,16),
	(62,3,4,1,16);

/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table track
# ------------------------------------------------------------

DROP TABLE IF EXISTS `track`;

CREATE TABLE `track` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `track` WRITE;
/*!40000 ALTER TABLE `track` DISABLE KEYS */;

INSERT INTO `track` (`id`, `name`)
VALUES
	(4,'Coconut Mall'),
	(2,'Grumble Volcano'),
	(8,'Koopa Cape'),
	(3,'Maple Treeway'),
	(6,'Mario Raceway'),
	(5,'Moo Moo Meadows'),
	(7,'Mushroom Gorge'),
	(1,'Rainbow Road');

/*!40000 ALTER TABLE `track` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `cohort` int(11) NOT NULL,
  `favRacer` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `name`, `cohort`, `favRacer`)
VALUES
	(1,'ItsameMario',1,1),
	(2,'MushroomHead',1,3),
	(3,'DanielGardiner007',1,5),
	(4,'justpeachy420',2,2);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
