-- MySQL dump 10.13  Distrib 5.6.19, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: Finder
-- ------------------------------------------------------
-- Server version	5.6.27-log

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
-- Table structure for table `Locations`
--

DROP TABLE IF EXISTS `Locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Locations` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` int(11) NOT NULL,
  `longitude` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `userID` (`userID`),
  CONSTRAINT `Locations_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `Users` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Locations`
--

LOCK TABLES `Locations` WRITE;
/*!40000 ALTER TABLE `Locations` DISABLE KEYS */;
INSERT INTO `Locations` VALUES (3,56,365,1),(4,13,653,3),(5,568,764,1),(6,747,743,2),(7,7356,375,3),(8,357,2246,1),(9,252,5221,3),(10,452,5245,2),(11,452,5245,2),(12,43620,3452,14),(14,-323,3422,15),(15,-323,-989869,15),(16,-323,0,15),(17,43620,0,15);
/*!40000 ALTER TABLE `Locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `authToken` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `userName` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'user1','pass1','saly','brown',''),(2,'user2','pass2','Charley','brown',''),(3,'user3','pass3','Mychle','Jordan','9k8oldl3io4eonk1vteaiivjdtz4cd'),(6,'user4','pass4','Aron','Casem',''),(7,'user5','pass5','Albert','Sanchez',''),(9,'user6','pass6','Messi','sanchez',''),(10,'user7','pass7','Peter','Pan',''),(12,'user8','pass7','Peter','Pan',''),(13,'user9','pass9','Spider','Man',''),(14,'user10','pass10','Deniel','Thomas',''),(15,'user11','pass11','Chuck','Noris','f2v0ipxrt8o869p9cmutcjnhpk8vre'),(16,'2553','4314','15','mehulih6haw6bofbdbtpy8zb0aky24','6n7th5axb5rrkmo099i5v0tm8f8g2t'),(18,'user12','pass12','saly','Brown','bo261k4dsc4kn3tjn31z4c7wib4j61');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-21 17:07:34