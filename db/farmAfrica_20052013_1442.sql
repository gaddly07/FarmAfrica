-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: farmAfrica
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.13.04.1

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
-- Table structure for table `statusCategories`
--

DROP TABLE IF EXISTS `statusCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statusCategories` (
  `statusCategoryID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(30) NOT NULL,
  `status` int(11) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `createdBy` int(11) unsigned NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedBy` int(11) unsigned NOT NULL,
  PRIMARY KEY (`statusCategoryID`),
  UNIQUE KEY `categoryName` (`categoryName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statusCategories`
--

LOCK TABLES `statusCategories` WRITE;
/*!40000 ALTER TABLE `statusCategories` DISABLE KEYS */;
INSERT INTO `statusCategories` VALUES (1,'General',1,'2013-05-17 15:00:43',1,'2013-05-17 12:00:43',1),(2,'API',1,'2013-05-17 16:50:36',1,'2013-05-17 13:50:36',1);
/*!40000 ALTER TABLE `statusCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statusCodes`
--

DROP TABLE IF EXISTS `statusCodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statusCodes` (
  `statusID` int(11) unsigned NOT NULL,
  `statusDesc` varchar(150) NOT NULL,
  `description` text,
  `statusTypeID` int(11) unsigned NOT NULL,
  `statusCategoryID` int(11) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `createdBy` int(11) unsigned NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedBy` int(11) unsigned NOT NULL,
  PRIMARY KEY (`statusID`),
  UNIQUE KEY `statusDesc` (`statusDesc`),
  UNIQUE KEY `statusDesc_2` (`statusDesc`),
  KEY `statusTypeID` (`statusTypeID`),
  KEY `statusCategoryID` (`statusCategoryID`),
  CONSTRAINT `statusCodes_ibfk_1` FOREIGN KEY (`statusTypeID`) REFERENCES `statusTypes` (`statusTypeID`),
  CONSTRAINT `statusCodes_ibfk_2` FOREIGN KEY (`statusCategoryID`) REFERENCES `statusCategories` (`statusCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statusCodes`
--

LOCK TABLES `statusCodes` WRITE;
/*!40000 ALTER TABLE `statusCodes` DISABLE KEYS */;
INSERT INTO `statusCodes` VALUES (1,'Success',NULL,1,1,'2013-05-17 15:02:18',1,'2013-05-17 12:02:18',1),(2,'Failed',NULL,2,1,'2013-05-17 15:03:21',1,'2013-05-17 12:03:21',1),(200,'Requested model not found','Model in API request cannot be found',2,2,'2013-05-17 16:52:07',1,'2013-05-17 13:52:07',1),(201,'Model not provided','Model not provided in API request',2,2,'2013-05-17 16:54:27',1,'2013-05-17 13:54:27',1),(202,'Model attributes not provided',NULL,2,2,'2013-05-18 12:38:41',1,'2013-05-18 09:38:41',1),(203,'Model error occurred during create',NULL,2,2,'2013-05-18 13:07:20',1,'2013-05-18 10:07:20',1),(204,'Model created successfully',NULL,1,2,'2013-05-18 13:11:46',1,'2013-05-18 10:11:46',1),(205,'Requested record does not exist',NULL,2,2,'2013-05-18 14:51:58',1,'2013-05-18 11:51:58',1),(206,'Unable to parse model attributes',NULL,2,2,'2013-05-20 12:27:14',1,'2013-05-20 09:27:14',1),(207,'Model error occurred during update',NULL,2,2,'2013-05-20 14:28:57',1,'2013-05-20 11:28:57',1),(208,'Model updated successfully',NULL,1,2,'2013-05-20 14:34:03',1,'2013-05-20 11:34:03',1);
/*!40000 ALTER TABLE `statusCodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statusTypes`
--

DROP TABLE IF EXISTS `statusTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statusTypes` (
  `statusTypeID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `statusTypeName` varchar(30) NOT NULL,
  `status` int(11) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `createdBy` int(11) unsigned NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedBy` int(11) unsigned NOT NULL,
  PRIMARY KEY (`statusTypeID`),
  UNIQUE KEY `statusTypeName` (`statusTypeName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statusTypes`
--

LOCK TABLES `statusTypes` WRITE;
/*!40000 ALTER TABLE `statusTypes` DISABLE KEYS */;
INSERT INTO `statusTypes` VALUES (1,'SUCCESS',1,'2013-05-17 15:01:37',1,'2013-05-17 12:01:37',1),(2,'FAILED',1,'2013-05-17 15:03:02',1,'2013-05-17 12:03:02',1);
/*!40000 ALTER TABLE `statusTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `emailAddress` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(15) DEFAULT NULL,
  `status` int(11) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `createdBy` int(11) unsigned NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedBy` int(11) unsigned NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `userName` (`userName`),
  UNIQUE KEY `emailAddress` (`emailAddress`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (11,'muya','Fred','Muya','kingkonig@gmail.com','254720512128',1,'2013-05-18 13:22:39',2,'2013-05-18 10:22:38',2),(12,'admin','Super','Admin','admin@google.com','0732112223',1,'2013-05-18 13:56:05',2,'2013-05-20 11:40:59',2),(13,'alan','Alan','Gitau','alan.g@home.com','254720512122',1,'2013-05-18 15:03:00',2,'2013-05-18 12:03:00',2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-20 14:42:40
