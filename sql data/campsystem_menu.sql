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
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `roles` varchar(50) DEFAULT NULL,
  `MenuName` varchar(200) DEFAULT NULL,
  `MenuType` varchar(200) DEFAULT NULL,
  `MenuIcon` varchar(500) DEFAULT NULL,
  `MenuUrl` varchar(500) DEFAULT NULL,
  `MenuTitle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'1,2','Dashboard','Home','icon-home','dashboard.jsp','Dashboard'),(2,'1,2','Register new Complain','Complain System',NULL,'registercomplain.jsp','Operations'),(3,'1,2','Review Complains','Complain System',NULL,'complainreviewadmin.jsp','Operations'),(4,'1,2','Complete List','Mandays System',NULL,'mandaysdata.jsp','Operations'),(5,'1,2','Food Order','Food Mandays',NULL,'FoodOrder.jsp','Operations'),(6,'1,2','New Login Account','Settings',NULL,'signupadmin.jsp','Administration'),(7,'1,2','User Accounts','Settings',NULL,'users.jsp','Adminstration'),(8,'1,2','Monthly Report','Food Mandays',NULL,'foodreports.jsp','Operations'),(9,'1,2','New Company','Company Registration',NULL,'registercompany.jsp','Operations'),(10,'1,2','Pricing Update','Company Registration',NULL,'pricingupdate.jsp','Operations'),(11,'1,2','Company Details','Mandays System',NULL,'companydetails.jsp','Operations'),(12,'1,2','Guest Check In','Mandays System',NULL,'CheckIn.jsp','Operations'),(13,'1,2','Guest Check Out','Mandays System',NULL,'checkout.jsp','Operations'),(14,'1,2','Guest Companies','Mandays System',NULL,'guestcompanies.jsp','Operations'),(15,'1,2','Monthly Mandays Reports','Mandays System',NULL,'monthlymandays.jsp','Operations'),(16,'1,2','Archieved Items','Complain System',NULL,'archivedItems.jsp','Operations'),(17,'1,2,3,4,5,6,7,8,9,10,11','My Profile','Header',NULL,'myprofile.jsp','Header'),(18,'1,2,3,4,5,6,7,8,9,10,11','Lock Screen','Header',NULL,'lockscreen.jsp','Header'),(19,'1,2','Profile','Header',NULL,'profile.jsp','Header'),(20,'1,2','Account Settings','Header',NULL,'profilesettings.jsp','Header'),(23,'4','Complains Review','Complain System',NULL,'complainreview.jsp','Operations'),(24,'1,2','Coimpany Rates','Company Registration',NULL,'CompanyRates.jsp','Operations');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
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
