-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: programming-emu.com    Database: ApDB
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `MinderNummers`
--

DROP TABLE IF EXISTS `MinderNummers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MinderNummers` (
  `Titel` varchar(100) NOT NULL,
  `Artiest` varchar(100) NOT NULL,
  `Album` varchar(100) NOT NULL,
  `Duurtijd` smallint unsigned NOT NULL,
  `Genre` enum('Klassiek','Pop','Jazz','Metal','Rap','Electro','Folk','Wereldmuziek','Blues','Rock') NOT NULL,
  `ReleaseJaar` year NOT NULL,
  `Royalties` tinyint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MinderNummers`
--

LOCK TABLES `MinderNummers` WRITE;
/*!40000 ALTER TABLE `MinderNummers` DISABLE KEYS */;
INSERT INTO `MinderNummers` VALUES ('The Rain Song','Led Zeppelin','Houses Of The Holy',459,'Rock',1999,55),('The Ocean','Led Zeppelin','Houses Of The Holy',271,'Rock',1975,32),('Please Mr. Postman','BackBeat','BackBeat Soundtrack',137,'Blues',1958,NULL),('Wiser Time','The Black Crowes','Live [Disc 1]',459,'Blues',1967,NULL),('The Wanton Song','Led Zeppelin','Physical Graffiti [Disc 2]',249,'Rock',1962,30),('I Can\'t Stand It','Eric Clapton','The Cream Of Clapton',249,'Blues',1994,NULL),('Trampled Under Foot','Led Zeppelin','Physical Graffiti [Disc 1]',336,'Rock',1998,41),('What is and Should Never Be','Led Zeppelin','BBC Sessions [Disc 1] [Live]',260,'Rock',1983,31),('Stone Crazy','Buddy Guy','The Best Of Buddy Guy - The Millenium Collection',433,'Blues',1987,NULL),('Sting Me','The Black Crowes','Live [Disc 1]',268,'Blues',1973,NULL),('Walter\'s Walk','Led Zeppelin','Coda',270,'Rock',2001,32),('Tea For One','Led Zeppelin','Presence',566,'Rock',2015,68),('Girl From A Pawnshop','The Black Crowes','Live [Disc 1]',404,'Blues',1988,NULL),('Hang \'Em High','Van Halen','Diver Down',210,'Rock',1970,13),('Dancing In The Street','Van Halen','Diver Down',225,'Rock',2004,13),('Little Guitars (Intro)','Van Halen','Diver Down',42,'Rock',1988,2);
/*!40000 ALTER TABLE `MinderNummers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-06 17:38:49
