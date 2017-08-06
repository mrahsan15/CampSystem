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
-- Table structure for table `campstaff`
--

DROP TABLE IF EXISTS `campstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campstaff` (
  `ID` int(9) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `JobTitle` varchar(200) NOT NULL,
  `Role` varchar(500) NOT NULL,
  `Nationality` varchar(25) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `ProfilePicture` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campstaff`
--

LOCK TABLES `campstaff` WRITE;
/*!40000 ALTER TABLE `campstaff` DISABLE KEYS */;
INSERT INTO `campstaff` VALUES (1,'Noor','Islam','Maintenance Incharge','0,4','Pakistan',NULL,'uploadedcontent/usersdata/1488292003167.jpg'),(2,'Surrendaran','Sambandam','Maintenance Incharge','0,4','India',NULL,NULL),(3,'Muhammad','Younas','CampBoss','0,2','Pakistan',NULL,'uploadedcontent/usersdata/1493274857821.jpg'),(4,'Amir','Khan','AC Technician','0,4','India',NULL,NULL),(9,'Ahsan','Mahmood','Admin','0,1','Pakistan',NULL,'uploadedcontent/usersdata/1495866734959.jpg'),(10,'Naseer','AbuTahir','Store Keeper','0,10','India',NULL,'uploadedcontent/usersdata/1488891773692.jpg'),(11,'Muhammad','Aslam','Accountant','0,5','Pakistan',NULL,NULL),(12,'Basheer','Naseer','Random','0,1',NULL,NULL,NULL),(13,'213','213','1321','0,1',NULL,NULL,NULL),(14,'Thanga','Balli','Qustutuniya','0,1',NULL,NULL,NULL),(15,'Nana','Patekar','Qustutuniya','0,1',NULL,NULL,NULL),(16,'Nana','Patekar','Qustutuniya','0,1',NULL,NULL,NULL),(17,'Nana','Patekar','Qustutuniya','0,1',NULL,NULL,NULL);
/*!40000 ALTER TABLE `campstaff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-10 15:23:07
