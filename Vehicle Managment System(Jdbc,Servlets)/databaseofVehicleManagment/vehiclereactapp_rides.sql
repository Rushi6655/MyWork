CREATE DATABASE  IF NOT EXISTS `vehiclereactapp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vehiclereactapp`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: vehiclereactapp
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
-- Table structure for table `rides`
--

DROP TABLE IF EXISTS `rides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rides` (
  `rno` int NOT NULL,
  `cost` double NOT NULL,
  `dmail` varchar(255) DEFAULT NULL,
  `fromlocation` varchar(255) DEFAULT NULL,
  `tolocation` varchar(255) DEFAULT NULL,
  `travelkm` int NOT NULL,
  `umail` varchar(255) DEFAULT NULL,
  `vid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rides`
--

LOCK TABLES `rides` WRITE;
/*!40000 ALTER TABLE `rides` DISABLE KEYS */;
INSERT INTO `rides` VALUES (2,0,'driver2@mail.com','varvand','pune',50,'vivek@mail.com','101'),(3,0,'driver3@mail.com','pune','varvand',50,'vivek@mail.com','101'),(4,0,'driver@mail.com','varvand','pune',50,'vivek@mail.com','101'),(5,0,'driver@mail.com','pune','varvand',50,'vivek@mail.com','101'),(6,0,'driver@mail.com','pune','varvand',60,'vivek@mail.com','101'),(7,0,'driver@mail.com','varvand','pune',12,'vivek@mail.com','101'),(8,0,'driver2@mail.com','pune','varvand',50,'rohit@mail.com','101'),(9,0,'driver@mail.com','varvand','varvand',10,'rohit@mail.com','101'),(10,0,'','','',0,'',NULL),(11,0,'','','',0,'',NULL),(12,0,'','','',0,'',NULL),(13,0,'rushishelke2000@gmail.com','varvand','pune',10,'rushishelke2000@gmail.com','101'),(14,0,'','','',0,'',NULL),(15,0,'','','',0,'',NULL),(16,0,'','','',0,'',NULL),(17,0,'rushishelke2000@gmail.com','pune','varvand',10,'rushishelke2000@gmail.com','101'),(18,0,'rushishelke2000@gmail.com','varvand','pune',10,'rushishelke2000@gmail.com','101'),(19,0,'','','',0,'',NULL),(20,1050,'driver@mail.com','pune','varvand',50,'rohit@mail.com','101'),(21,1010,'driver2mail.com','pune','varvand',10,'rohit@mail.com','101'),(22,100,'driver2mail.com','pune','varvand',10,'rohit@mail.com','101');
/*!40000 ALTER TABLE `rides` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-14 19:11:36
