# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     todolist
# Server version:               5.1.73-community
# Server OS:                    Win64
# HeidiSQL version:             5.0.0.3272
# Date/time:                    2019-10-07 18:55:06
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
# Dumping database structure for todolist
CREATE DATABASE IF NOT EXISTS `todolist` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `todolist`;


# Dumping structure for table todolist.addsublistinfo
CREATE TABLE IF NOT EXISTS `addsublistinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` text,
  `addlist` text,
  `addsublist` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

# Dumping data for table todolist.addsublistinfo: 0 rows
/*!40000 ALTER TABLE `addsublistinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `addsublistinfo` ENABLE KEYS */;


# Dumping structure for table todolist.listinfo
CREATE TABLE IF NOT EXISTS `listinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` text,
  `addlist` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

# Dumping data for table todolist.listinfo: 1 rows
/*!40000 ALTER TABLE `listinfo` DISABLE KEYS */;
INSERT INTO `listinfo` (`id`, `username`, `addlist`) VALUES (1, 'Javed', 'demo');
/*!40000 ALTER TABLE `listinfo` ENABLE KEYS */;


# Dumping structure for table todolist.register
CREATE TABLE IF NOT EXISTS `register` (
  `name` varchar(30) DEFAULT NULL,
  `addr` varchar(30) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `contactno` varchar(15) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `pwd` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table todolist.register: 2 rows
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` (`name`, `addr`, `gender`, `email`, `contactno`, `uname`, `pwd`) VALUES ('Javed', 'Pune', 'Male', 'javed.tamboli33@gmail.com', '9960696480', 'Javed', 'Javed'), ('Ganesh', 'Pune', 'Male', 'ganesh@gmail.com', '8380067850', 'ganesh', 'ganesh');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;


# Dumping structure for table todolist.sharelistinfo
CREATE TABLE IF NOT EXISTS `sharelistinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` text,
  `addlist` text,
  `shareusername` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

# Dumping data for table todolist.sharelistinfo: 0 rows
/*!40000 ALTER TABLE `sharelistinfo` DISABLE KEYS */;
INSERT INTO `sharelistinfo` (`id`, `username`, `addlist`, `shareusername`) VALUES (1, 'Javed', 'demo', 'ganesh');
/*!40000 ALTER TABLE `sharelistinfo` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
