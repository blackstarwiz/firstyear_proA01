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
-- Table structure for table `Games`
--

DROP TABLE IF EXISTS `Games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Games` (
  `Titel` varchar(100) NOT NULL,
  `Id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Games`
--

LOCK TABLES `Games` WRITE;
/*!40000 ALTER TABLE `Games` DISABLE KEYS */;
INSERT INTO `Games` VALUES ('Anthem',1),('Sekiro: Shadows Die Twice',2),('Devil May Cry 5',3),('Mega Man 11',4),('Oregon Trail',5);
/*!40000 ALTER TABLE `Games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Leden`
--

DROP TABLE IF EXISTS `Leden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Leden` (
  `Voornaam` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Id` int NOT NULL AUTO_INCREMENT,
  `Taken_Id` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Leden_Taken` (`Taken_Id`),
  CONSTRAINT `fk_Leden_Taken` FOREIGN KEY (`Taken_Id`) REFERENCES `Taken` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Leden`
--

LOCK TABLES `Leden` WRITE;
/*!40000 ALTER TABLE `Leden` DISABLE KEYS */;
INSERT INTO `Leden` VALUES ('Yannick',1,2),('Bavo',2,1),('Max',3,3);
/*!40000 ALTER TABLE `Leden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Platformen`
--

DROP TABLE IF EXISTS `Platformen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Platformen` (
  `Naam` varchar(20) NOT NULL,
  `Id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Platformen`
--

LOCK TABLES `Platformen` WRITE;
/*!40000 ALTER TABLE `Platformen` DISABLE KEYS */;
INSERT INTO `Platformen` VALUES ('PS4',1),('Xbox One',2),('Windows',3),('Nintendo Switch',4),('Master System',5);
/*!40000 ALTER TABLE `Platformen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Releases`
--

DROP TABLE IF EXISTS `Releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Releases` (
  `Games_Id` int NOT NULL,
  `Platformen_Id` int NOT NULL,
  KEY `fk_Releases_Games` (`Games_Id`),
  KEY `fk_Releases_Platformen` (`Platformen_Id`),
  CONSTRAINT `fk_Releases_Games` FOREIGN KEY (`Games_Id`) REFERENCES `Games` (`Id`),
  CONSTRAINT `fk_Releases_Platformen` FOREIGN KEY (`Platformen_Id`) REFERENCES `Platformen` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Releases`
--

LOCK TABLES `Releases` WRITE;
/*!40000 ALTER TABLE `Releases` DISABLE KEYS */;
INSERT INTO `Releases` VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,1),(3,2),(4,1),(4,2),(4,3),(4,4);
/*!40000 ALTER TABLE `Releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Taken`
--

DROP TABLE IF EXISTS `Taken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Taken` (
  `Omschrijving` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Taken`
--

LOCK TABLES `Taken` WRITE;
/*!40000 ALTER TABLE `Taken` DISABLE KEYS */;
INSERT INTO `Taken` VALUES ('bestek voorzien',1),('frisdrank meebrengen',2),('aardappelsla maken',3);
/*!40000 ALTER TABLE `Taken` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-17 12:26:37
