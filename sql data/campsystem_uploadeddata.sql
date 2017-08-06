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
-- Table structure for table `uploadeddata`
--

DROP TABLE IF EXISTS `uploadeddata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uploadeddata` (
  `ID` int(9) NOT NULL AUTO_INCREMENT,
  `FileName` varchar(500) DEFAULT NULL,
  `FileNameOnDisk` varchar(500) DEFAULT NULL,
  `DateUpload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UploadedBy` int(2) NOT NULL,
  `Category` varchar(100) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploadeddata`
--

LOCK TABLES `uploadeddata` WRITE;
/*!40000 ALTER TABLE `uploadeddata` DISABLE KEYS */;
INSERT INTO `uploadeddata` VALUES (1,'abc','abc','2016-12-28 11:18:57',1,'mandays'),(2,'tempexceltest.xlsx','1482924877347','2016-12-28 11:34:37',9,'mandays'),(3,'tempexceltest.xlsx','1482925268149.xlsx','2016-12-28 11:41:08',9,'mandays'),(4,'campsystemtemplate.xlsx','1482925300724.xlsx','2016-12-28 11:41:40',9,'mandays'),(5,'campsystemtemplate.xlsx','1482993870748.xlsx','2016-12-29 06:44:30',9,'mandays'),(6,'campsystemtemplate.xlsx','1482996636061.xlsx','2016-12-29 07:30:36',9,'mandays'),(7,'campsystemtemplate.xlsx','1482997655529.xlsx','2016-12-29 07:47:35',9,'mandays'),(8,'campsystemtemplate.xlsx','1483004478859.xlsx','2016-12-29 09:41:18',9,'mandays'),(9,'campsystemtemplate.xlsx','1483004902235.xlsx','2016-12-29 09:48:22',9,'mandays'),(10,'campsystemtemplate.xlsx','1483005061254.xlsx','2016-12-29 09:51:01',9,'mandays'),(11,'campsystemtemplate.xlsx','1483005154856.xlsx','2016-12-29 09:52:34',9,'mandays'),(12,'campsystemtemplate.xlsx','1483005808749.xlsx','2016-12-29 10:03:28',9,'mandays'),(13,'campsystemtemplate.xlsx','1483006222075.xlsx','2016-12-29 10:10:22',9,'mandays'),(14,'campsystemtemplate.xlsx','1483007195192.xlsx','2016-12-29 10:26:35',9,'mandays'),(15,'campsystemtemplate.xlsx','1483008007756.xlsx','2016-12-29 10:40:07',9,'mandays'),(16,'campsystemtemplate.xlsx','1483517224447.xlsx','2017-01-04 08:07:04',9,'mandays'),(17,'campsystemtemplate.xlsx','1483517486330.xlsx','2017-01-04 08:11:26',9,'mandays'),(18,'campsystemtemplate.xlsx','1483524131970.xlsx','2017-01-04 10:02:11',9,'mandays'),(19,'campsystemtemplate.xlsx','1483524225933.xlsx','2017-01-04 10:03:45',9,'mandays'),(20,'campsystemtemplate.xlsx','1483524438625.xlsx','2017-01-04 10:07:18',9,'mandays'),(21,'campsystemtemplate.xlsx','1483524567240.xlsx','2017-01-04 10:09:27',9,'mandays'),(22,'campsystemtemplate.xlsx','1483524838736.xlsx','2017-01-04 10:13:58',9,'mandays'),(23,'campsystemtemplate.xlsx','1483524924080.xlsx','2017-01-04 10:15:24',9,'mandays'),(24,'campsystemtemplate.xlsx','1483527305234.xlsx','2017-01-04 10:55:05',9,'mandays'),(25,'campsystemtemplate.xlsx','1483527944706.xlsx','2017-01-04 11:05:44',9,'mandays'),(26,'campsystemtemplate.xlsx','1483528018430.xlsx','2017-01-04 11:06:58',9,'mandays'),(27,'campsystemtemplate.xlsx','1483862423772.xlsx','2017-01-08 08:00:23',9,'mandays'),(28,'campsystemtemplate.xlsx','1483874975544.xlsx','2017-01-08 11:29:35',9,'mandays'),(29,'campsystemtemplate.xlsx','1483875109868.xlsx','2017-01-08 11:31:49',9,'mandays'),(30,'campsystemtemplate.xlsx','1483940741135.xlsx','2017-01-09 05:45:41',9,'mandays'),(31,'campsystemtemplate.xlsx','1484572269916.xlsx','2017-01-16 13:11:09',9,'mandays');
/*!40000 ALTER TABLE `uploadeddata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-10 15:23:04
