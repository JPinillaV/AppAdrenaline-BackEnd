-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: adrenaline
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `idcomentario` int NOT NULL AUTO_INCREMENT,
  `text` varchar(245) NOT NULL,
  `date` datetime NOT NULL,
  `idPost` int NOT NULL,
  `usuario_id` int NOT NULL,
  PRIMARY KEY (`idcomentario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (1,'that\'s awesome!!!!!','0200-05-01 00:00:00',1,1);
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `idlike` int NOT NULL AUTO_INCREMENT,
  `idPost` int NOT NULL,
  `date` datetime NOT NULL,
  `usuario_id` int NOT NULL,
  PRIMARY KEY (`idlike`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,1,'2021-05-03 00:00:00',1),(2,2,'2020-05-08 00:00:00',2),(3,3,'2020-09-15 00:00:00',3),(4,4,'2019-02-01 00:00:00',4),(5,5,'2019-06-02 00:00:00',5),(7,7,'2019-06-06 00:00:00',7);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `idTypePost` int NOT NULL,
  `photoPost` varchar(255) DEFAULT NULL,
  `idPostShared` int DEFAULT NULL,
  `usuario_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (2,'2021-06-02 00:00:00',2,'https://images.unsplash.com/photo-1511765224389-37f0e77cf0eb?w=500&h=500&fit=crop',NULL,2),(3,'2021-07-03 00:00:00',2,'https://images.unsplash.com/photo-1497445462247-4330a224fdb1?w=500&h=500&fit=crop',NULL,3),(4,'2020-02-03 00:00:00',1,'http://localhost:3000/images/adbca53df1f6ecb71278b85c373c3960.mp4',NULL,4),(5,'2020-03-05 00:00:00',2,'https://images.unsplash.com/photo-1502630859934-b3b41d18206c?w=500&h=500&fit=crop',NULL,5),(6,'2020-03-08 00:00:00',1,'https://images.unsplash.com/photo-1498471731312-b6d2b8280c61?w=500&h=500&fit=crop',NULL,6),(7,'2019-02-07 00:00:00',2,'https://images.unsplash.com/photo-1515023115689-589c33041d3c?w=500&h=500&fit=crop',NULL,7),(8,'2021-06-05 00:00:00',1,'http://localhost:3000/images/b0ee82f78d5a0714190c0068de60d187.mp4',NULL,1),(9,'2015-06-07 00:00:00',2,'https://images.unsplash.com/photo-1515814472071-4d632dbc5d4a?w=500&h=500&fit=crop',NULL,12),(10,'2021-06-02 00:00:00',2,'http://localhost:3000/images/ddedfa67ca604873015e7546664b553d.mp4',NULL,12),(11,'2021-06-02 00:00:00',1,'http://localhost:3000/images/b4d18068565052d03769dbe4b06df1b2.mp4',NULL,12),(12,'2021-06-02 00:00:00',1,'https://images.unsplash.com/photo-1447752875215-b2761acb3c5d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',NULL,12),(13,'2021-06-02 00:00:00',1,'https://images.unsplash.com/photo-1540206395-68808572332f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(14,'2021-06-02 00:00:00',1,'https://images.unsplash.com/photo-1587502537104-aac10f5fb6f7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MTV8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(15,'2021-06-02 00:00:00',1,'https://images.unsplash.com/photo-1439853949127-fa647821eba0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',NULL,12),(16,'2021-06-02 00:00:00',1,'https://images.unsplash.com/photo-1431794062232-2a99a5431c6c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(17,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1639396902469-4b110cf95301?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=684&q=80',NULL,12),(18,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1639564166502-e6b287fbb0ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8Qm4tRGpyY0Jyd298fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60',NULL,12),(19,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1639138815118-554d3db1b975?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8Qm4tRGpyY0Jyd298fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60',NULL,12),(20,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1639510478219-459967c2be92?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDR8Qm4tRGpyY0Jyd298fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60',NULL,12),(21,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1620429920334-cff7b76e6d27?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDh8Qm4tRGpyY0Jyd298fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60',NULL,12),(22,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1638129551454-fe22baadbe62?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEwfEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(23,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1630882868142-e2b7b080222b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE0fEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(24,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1630884377459-c95a10505ecf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE1fEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(25,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1630884376580-bce383ac04c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE2fEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(26,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1626348806819-81d3ddc772e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI0fEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(27,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1631486104932-489871dc8032?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDIwfEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(28,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1631492430897-d1d96f4e41a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDMxfEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(29,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1631492431374-338fe65fc03f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDMyfEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(30,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1602842900683-0040b9be5dfe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDM5fEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(31,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1615630799462-2d8e05fe4509?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ2fEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(32,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1612294556689-240062766103?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ1fEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(33,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1599828020722-a4fa110ec599?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ3fEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(34,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1634276702927-6b64a4eea9f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDUxfEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(35,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1627559321515-9c68b4796505?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDU1fEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(36,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1638128505462-a93a18732faa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDYxfEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(37,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1638120663507-1b950972c2bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDU5fEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(38,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1558417390-702b6a73b852?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDY2fEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(39,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1545974452-caa213f76132?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDY5fEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(40,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1637637496436-c014eca75fed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDY1fEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(41,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1637637499510-3bf96a1fd0e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDcxfEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(42,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1637660916042-d1074e613b14?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDY4fEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(43,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1637419558762-7c5d5e346016?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDc0fEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(44,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1633035791725-aa130655dddb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDc2fEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(45,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1633157611159-9ad1c5af03b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDExMnxCbi1EanJjQnJ3b3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(46,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1596079306903-9164c205f400?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDExOHxCbi1EanJjQnJ3b3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(47,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1520966400978-3503e1297c69?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEyN3xCbi1EanJjQnJ3b3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(48,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1628791442883-3751c507a719?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEyNnxCbi1EanJjQnJ3b3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(49,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1631645789778-b4cf1e791801?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEzM3xCbi1EanJjQnJ3b3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(50,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1631645785115-a1ce4aac6e12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEzNnxCbi1EanJjQnJ3b3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(51,'2021-06-03 00:00:00',1,'https://images.unsplash.com/photo-1630432531421-d5bef05c116f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE1N3xCbi1EanJjQnJ3b3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60',NULL,12),(52,'2021-06-05 00:00:00',1,'https://images.unsplash.com/photo-1639669047277-32640a26bdf6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',NULL,12),(53,'2021-06-05 00:00:00',1,'https://images.unsplash.com/photo-1639669047277-32640a26bdf6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',NULL,12);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_post`
--

DROP TABLE IF EXISTS `tipo_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `typePost_idtypePost` int NOT NULL,
  `post_id` int NOT NULL,
  PRIMARY KEY (`id`,`typePost_idtypePost`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_post`
--

LOCK TABLES `tipo_post` WRITE;
/*!40000 ALTER TABLE `tipo_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typepost`
--

DROP TABLE IF EXISTS `typepost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typepost` (
  `idtypePost` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `tipo` enum('video','foto') NOT NULL,
  PRIMARY KEY (`idtypePost`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typepost`
--

LOCK TABLES `typepost` WRITE;
/*!40000 ALTER TABLE `typepost` DISABLE KEYS */;
/*!40000 ALTER TABLE `typepost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(45) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `textProfile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Jorge','Jorgito','1345','jj@gmail.com','https://cdn.domestika.org/c_limit,dpr_auto,f_auto,q_auto,w_820/v1552473155/content-items/002/854/613/IMG_2802-original.jpg?1552473155','esto funciona'),(2,'Juan','Juanito','$2a$10$iWr1gmlQtARNpaw85R/3FuOVZIVjlxQZohunLhh5lxmKNCtyc7LIK','juanito@gmail.com','https://images.unsplash.com/photo-1497445462247-4330a224fdb1?w=500&h=500&fit=crop',NULL),(3,'Monica','Monic','12345','monica@gmail.com','https://images.unsplash.com/photo-1620481395041-c8a0f84e2dbb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',NULL),(4,'Carlos','Carlitos','$2a$10$lW55HZHqLBQvpxjt0eEImOTGpiuA7fTeHByyoZf6PeAXucxlgebbe','pinilla@gmail.com','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNuecGawhByXdhXAWSfQxLA7Cc19bIQ8xuGw&usqp=CAU',NULL),(5,'Fátima','Fati','$2a$10$ENc/4jBWOZMAK/9ElmiWHOUKLnM61T3rA7WWhaolGYoSF5iGu8.5S','fatima@gmail.com','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9QwbDOcIx3RcCTZl2MVO6hvDKC1jsF7MuPg&usqp=CAU',NULL),(6,'Ivan','Ivan12','$2a$10$oGuVfbDyalMdXhq/wU9Uuu8fgiD7k6tHqBixsu3RE5.s8zGXLngz2','ivan@gmail.com','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrp5lGOqDy5K6ts-kvWV05oWlQpUlUiSkUEw&usqp=CAU',NULL),(7,'Yoda','Laser','$2a$10$v.vaYjp7hY450/XFTnMMk.dWn/9H1oORIWCsvoZD2cnhzGCushc0u','yoda@gmail.com','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOKOgGH8OGTlvgEWZWesXEvgfQXJhqcl8Y8Q&usqp=CAU',NULL),(8,'natalia','nat','$2a$10$qrpXsk8j3ZwuR7VMJ.oHoOLncocgsb1B4NExTh3PXI47Ed2LMoqk2','nat@gmail.com','http://localhost:3000/images/37cd3d60ade00a76da4ff42eca916112.png',NULL),(9,'juananantonio','juanito','$2a$10$iejWrx4kbGRbw.SgWb0kpOBuOM/Naj4Za/p7CncX6qBxT98s7M5s6','juanito@gmail.com','http://localhost:3000/images/e1dd48adb0587a3f0209ff770b05f685.png',NULL),(10,'Pedro','pedrito','$2a$10$M7Rx1W7cSZcs/oDSLJYm7evqCzHIyPEYTD4NQt4gbnM2eTlO91NuS','pedro@gmail.com','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVpyaB1WUPWtTqFP1To4ehJE9KXhCDGvW2iA&usqp=CAU',NULL),(11,'Jonny','English','$2a$10$DodGTXXbTxTHi4GYwxq4jOos3u6y3U3aAwACeTt/806BPyd.UTbXq','jonny@gmail.com','https://images.unsplash.com/photo-1639562954961-0aa228b27c62?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMjN8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',NULL),(12,'Jorge Pinilla','Jorge','$2a$10$yRExO2gUTwRyVUK8tOVKvuPQ/WLZOIhl3W2NLLUqbdLeXm0KeyX8.','jorgepinilla@gmail.com','https://images.unsplash.com/photo-1639586181233-48e8e23d07eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',NULL),(13,'Conchita','concha','$2a$10$OB6m/ybEVwgopt/6Of0iV.bg2kmMeMnOyXphBprieEyRwq1gvh2Zm','concha@gmail.com',NULL,NULL),(14,'Javier','Javi','$2a$10$JkLpSP5GZTA1FyaizuCT0ukel6IU18YBfpYUMG9ew7lRqQijwaVze','javi@gmail.com',NULL,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-20 13:24:08
