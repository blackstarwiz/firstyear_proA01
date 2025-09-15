use herhaling_view_procedure;
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
-- Table structure for table `klanten`
--

DROP TABLE IF EXISTS `klanten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `klanten` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Naam` varchar(50) DEFAULT NULL,
  `Gemeente` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klanten`
--

LOCK TABLES `klanten` WRITE;
/*!40000 ALTER TABLE `klanten` DISABLE KEYS */;
INSERT INTO `klanten` VALUES (1,'Yassin','Brussel'),(2,'Lina','Brussel'),(3,'Felix','Antwerpen'),(4,'Elena','Antwerpen'),(5,'Amir','Gent'),(6,'Aya','Leuven'),(7,'Oscar','Luik'),(8,'Amina','Mechelen'),(9,'Mohammed','Brugge'),(10,'Lotte','Hasselt'),(11,'Ayoub','Mons'),(12,'Sofia','Namur'),(13,'Ali','Charleroi'),(14,'Zara','Tournai'),(15,'Adam','Oostende'),(16,'Noor','Aalst'),(17,'Nour','Seraing'),(18,'Mila','Louvain-la-Neuve'),(19,'Jules','La Louvière'),(20,'Lina','Kortrijk'),(21,'Amin','Genk'),(22,'Nina','Roeselare'),(23,'Ayoub','Verviers'),(24,'Sara','Evergem'),(25,'Jef','Poperinge');
/*!40000 ALTER TABLE `klanten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producten`
--

DROP TABLE IF EXISTS `producten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producten` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ProductOmschrijving` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producten`
--

LOCK TABLES `producten` WRITE;
/*!40000 ALTER TABLE `producten` DISABLE KEYS */;
INSERT INTO `producten` VALUES (1,'Concertticket'),(2,'Gameconsole'),(3,'Festivalpas'),(4,'Smartphonehoesje'),(5,'Skateboard'),(6,'Boekenbon'),(7,'Koptelefoon'),(8,'Sneaker'),(9,'Camera'),(10,'Sportabonnement');
/*!40000 ALTER TABLE `producten` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `bestellingen`
--

DROP TABLE IF EXISTS `bestellingen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bestellingen` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Aantal` int DEFAULT NULL,
  `Producten_Id` int DEFAULT NULL,
  `Klanten_Id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Producten_Id` (`Producten_Id`),
  KEY `Klanten_Id` (`Klanten_Id`),
  CONSTRAINT `bestellingen_ibfk_1` FOREIGN KEY (`Producten_Id`) REFERENCES `producten` (`Id`),
  CONSTRAINT `bestellingen_ibfk_2` FOREIGN KEY (`Klanten_Id`) REFERENCES `klanten` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bestellingen`
--

LOCK TABLES `bestellingen` WRITE;
/*!40000 ALTER TABLE `bestellingen` DISABLE KEYS */;
INSERT INTO `bestellingen` VALUES (1,2,1,1),(2,1,2,2),(3,4,3,3),(4,3,4,1),(5,1,5,4),(6,2,6,5),(7,3,7,6),(8,4,8,7),(9,5,9,8),(10,6,10,9),(11,7,1,1),(12,8,2,1),(13,9,3,1),(14,10,4,1),(15,11,5,3),(16,12,6,4),(17,13,7,4),(18,14,8,5),(19,15,9,5),(20,16,10,5);
/*!40000 ALTER TABLE `bestellingen` ENABLE KEYS */;
UNLOCK TABLES;


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-09 17:11:21
