CREATE DATABASE  IF NOT EXISTS `campsystem` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `campsystem`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: campsystem
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `complainbook`
--

DROP TABLE IF EXISTS `complainbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complainbook` (
  `ID` int(9) NOT NULL AUTO_INCREMENT,
  `Description` varchar(500) NOT NULL,
  `Area` varchar(100) NOT NULL,
  `DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `SubmittedBy` int(1) NOT NULL,
  `ForwardedTo` int(5) NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `checkedat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `solved` tinyint(1) NOT NULL DEFAULT '0',
  `solvedat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `solvedby` int(5) DEFAULT NULL,
  `Archived` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complainbook`
--

LOCK TABLES `complainbook` WRITE;
/*!40000 ALTER TABLE `complainbook` DISABLE KEYS */;
INSERT INTO `complainbook` VALUES (1,'Tube Light ','H01-154','2016-08-04 06:34:36',3,1,1,'2016-08-25 13:11:09',1,'2016-08-21 12:48:52',1,1),(2,'Water pipe Leakage','A-01','2016-08-04 07:08:17',3,2,1,'2016-08-25 12:18:19',1,'2016-08-26 12:28:24',6,1),(3,'Door Lock Broken','A-05','2016-08-04 07:09:28',3,1,1,'2016-08-25 13:09:36',1,'2016-08-21 12:49:10',6,1),(6,'Boiler pipe is broken.                                                     \r\n                                                ','Kitchen Area','2016-08-24 06:28:01',9,2,1,'2016-08-25 13:09:46',1,'2016-08-26 12:28:40',NULL,1),(7,'Boiler pipe is broken.                                                     \r\n                                                ','Kitchen Area','2016-08-24 06:28:23',9,2,1,'2016-08-26 11:25:04',1,'2016-08-26 11:29:49',4,1),(8,'Bathroom water tap leakage                                                    \r\n                                                ','D-02','2016-08-24 06:30:23',9,1,1,'2016-08-26 11:23:50',1,'2016-08-26 11:24:31',7,1),(10,'Tublights are not Working.                                                    \r\n                                                ','Senior Mess','2016-08-24 11:54:42',9,2,1,'2016-08-26 12:00:15',1,'2016-08-26 12:28:47',NULL,0),(11,'                                                    \r\n                                                Water Pipe Leakage ','Labor Mess','2016-08-25 12:18:05',9,1,1,'2016-08-25 12:19:02',1,'2016-08-26 12:31:06',NULL,1),(12,'                          Leakage                          \r\n                                                ','Ahsan ka Room','2016-08-25 17:12:34',9,1,1,'2016-08-26 11:35:25',1,'2016-08-26 12:28:15',NULL,1),(13,'Drainage overload                                                    \r\n                                                ','Camp Office','2016-08-26 12:39:43',9,1,1,'2016-08-26 12:39:54',1,'2016-08-26 12:45:34',NULL,1),(14,'Yes no YEs                                                    \r\n                                                ','Testing 123','2016-08-26 12:51:53',9,1,1,'2016-08-26 12:52:00',1,'2016-08-26 12:52:06',6,0),(15,'sadfasdfasdf                                                    \r\n                                                ','Testing 123','2016-08-26 12:57:07',9,1,1,'2016-08-26 12:57:16',1,'2016-08-26 13:01:46',NULL,1),(16,'                                                    \r\n                            sdfasdfasd f                    ','D-02','2016-08-26 13:01:44',9,2,1,'2016-08-26 13:01:50',1,'2016-08-26 13:08:07',NULL,1),(17,'                                 a                   \r\n                                sdfasdfasd                ','sadfasdf','2016-08-26 13:08:01',9,1,1,'2016-08-26 13:08:10',1,'2016-08-26 13:09:42',6,0),(18,'32132sa1d3f21as3d2f1a32d1f3a2sd1f3a2ds1f32as1df3a5sd1f3 5s1df35as1d f3a51 3as5d1f3 as5d1f3a5sd1f3 5as1d3f 5sa1df3 5sa1d3f 5asd1f 3\r\n                                                    \r\n                                                ','Testing 123','2016-08-26 13:09:38',9,1,1,'2016-08-26 13:09:44',1,'2016-08-26 13:09:48',5,0),(19,'                                                    \r\n            corridoor light not working                                   ','a-block','2016-08-26 13:11:13',3,1,1,'2016-08-26 13:11:21',1,'2016-08-26 13:11:51',6,1),(20,'                          asdfasdfasdfas                          \r\n                                                ','asdfasdfasdf','2016-08-26 13:40:46',9,2,1,'2016-08-27 08:15:39',1,'2016-09-27 07:37:25',5,1),(21,'Wakeel Leakage                                                    \r\n                                                ','A-01','2016-08-27 08:13:47',9,1,1,'2016-08-27 08:14:16',1,'2016-08-27 08:14:51',8,1),(22,'A/c Cooling Problem                                                    \r\n                                                ','D-04','2016-08-29 07:35:23',9,1,1,'2016-08-29 07:37:09',1,'2016-08-29 07:37:32',4,1),(23,'Device needs to restart.                                                    \r\n                                                ','Main Office Wifi Device','2016-09-18 11:32:44',9,1,1,'2016-09-18 11:33:09',1,'2016-09-18 11:33:23',5,0),(24,'Ac Not working                                                    \r\n                                                ','H01-138','2016-09-27 07:35:32',9,1,1,'2016-09-27 07:36:10',1,'2016-09-27 07:36:54',7,1),(25,'Nothing                                                    \r\n                                                ','A-01','2016-09-27 07:46:20',9,1,1,'2016-09-27 07:46:33',1,'2016-09-27 07:47:23',1,1),(26,'                                                    \r\n                                                Tube Lights Fused in the Bathroom','J-02','2016-11-19 06:39:18',9,1,1,'2016-11-19 06:40:34',1,'2016-11-19 06:41:38',5,1),(27,'                                                    \r\n                                                Bed Broken','H01-154','2016-11-19 06:40:21',9,1,1,'2016-11-19 06:42:57',1,'2016-11-19 06:43:17',8,1),(28,'                                                    \r\n              dsasdfsdf                                  ','a-block','2016-12-21 10:48:18',9,2,1,'2016-12-21 18:45:18',1,'2016-12-21 18:45:35',6,1),(29,'Flush Leakage Problem                                                    \r\n                                                ','I-03','2016-12-21 18:44:31',9,1,1,'2017-01-02 10:30:38',1,'2017-01-02 10:31:06',7,1),(30,'Lights Issues                                                    \r\n                                                ','Kitchen','2016-12-24 08:17:39',9,1,1,'2016-12-24 08:18:17',1,'2016-12-24 08:18:38',6,1),(31,'Tube lights are fused                                                    \r\n                                                ','Kitchen','2017-01-01 06:14:56',9,1,1,'2017-01-01 06:15:44',1,'2017-01-01 06:16:13',6,1),(32,'dfwefwef                                                    \r\n                                                ','I-10','2017-01-02 10:30:22',9,1,1,'2017-01-09 05:35:56',1,'2017-01-09 05:36:22',5,1),(33,'Testing Complain                                                    \r\n                                                ','Testing','2017-02-07 13:14:25',9,1,1,'2017-02-28 14:25:48',0,NULL,NULL,0),(34,'Testing Complain                                                    \r\n                                                ','Testing','2017-02-07 13:15:31',9,1,0,NULL,0,NULL,NULL,0),(35,'Door Closer','Kitchen Area','2017-02-09 23:02:38',9,2,0,NULL,0,NULL,NULL,0),(36,'asdfasdf asdf asdf asdf asdf asdf saf                                                    \r\n                                                ','Main Gate','2017-02-28 14:12:16',3,1,1,'2017-02-28 14:25:58',0,NULL,NULL,0),(37,'asfdasdfas dfa','Main Gate','2017-03-26 10:02:33',9,1,0,NULL,0,NULL,NULL,0);
/*!40000 ALTER TABLE `complainbook` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-10 15:23:06
