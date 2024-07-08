-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: 0.0.0.0    Database: lafonoteca
-- ------------------------------------------------------
-- Server version	8.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Discos`
--

DROP TABLE IF EXISTS `Discos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Discos` (
  `idDisco` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `artista` varchar(255) DEFAULT NULL,
  `anioLanzamiento` int DEFAULT NULL,
  `GeneroIdGenero` int DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idDisco`),
  KEY `GeneroIdGenero` (`GeneroIdGenero`),
  CONSTRAINT `Discos_ibfk_1` FOREIGN KEY (`GeneroIdGenero`) REFERENCES `Generos` (`idGenero`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Discos`
--

/*!40000 ALTER TABLE `Discos` DISABLE KEYS */;
INSERT INTO `Discos` (`idDisco`, `nombre`, `precio`, `artista`, `anioLanzamiento`, `GeneroIdGenero`, `imagen`) VALUES (1,'Highway to Hell',4000,'AC/DC',1979,2,'1718835370740-Acdc.jfif'),(2,'El Refugio',3000,'EL BORDO',2017,2,'1718835381838-elBordo.jfif'),(3,'Appetite for Destruction',4000,'GUNS AND ROSES',1987,2,'1718835394293-Guns.jfif'),(4,'Jonas L.A.',3000,'JONAS BROTHERS',2010,1,'1718835414814-jonas.jfif'),(5,'Dynasty',3000,'KISS',1979,2,'1718835429807-kiss.jpg'),(6,'Endgame',3000,'MEGADETH',2009,3,'1718835441493-megadeth2.jpg'),(7,'Rise the lightning',4000,'METALLICA',1984,3,'1718835459397-Metallica.jfif'),(8,'Nevermind',3000,'NIRVANA',1991,2,'1718835471565-nirvana.jpg'),(9,'Pappos Blues Volumen 8',4000,'PAPPO',1995,2,'1718835484877-Pappo.jpg'),(10,'Dark side of the moon',5000,'PINK FLOYD',1973,2,'1718835501797-Pinkfloyd.jfif'),(11,'Tercer arco',4000,'LOS PIOJOS',1996,2,'1718835515149-piojos.jpg'),(12,'Queen II',5000,'QUEEN',1974,2,'1718835527094-Queen.jfif'),(13,'Road o run',3000,'RAMONES',1978,2,'1718835544725-ramones.jpg'),(14,'Rata Blanca',3000,'RATA BLANCA',1988,2,'1718835556695-ratablanca.jpg'),(15,'Despedazado por mil partes',4000,'LA RENGA',1996,2,'1718835586405-renga.jpg'),(16,'Signos',4000,'SODA STEREO',1986,2,'1718835602693-soda.jfif'),(17,'Waiting for the sun',3000,'THE DOORS',1968,2,'TheDoors.jpg'),(18,'Reload',3000,'TOM JONES',1999,1,'tom_jones2.jpg'),(19,'Waterloo',3000,'ABBA',1974,1,'waterlo.jfif');
/*!40000 ALTER TABLE `Discos` ENABLE KEYS */;

--
-- Table structure for table `Generos`
--

DROP TABLE IF EXISTS `Generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Generos` (
  `idGenero` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Generos`
--

/*!40000 ALTER TABLE `Generos` DISABLE KEYS */;
INSERT INTO `Generos` (`idGenero`, `tipo`) VALUES (1,'Pop'),(2,'Rock'),(3,'Metal');
/*!40000 ALTER TABLE `Generos` ENABLE KEYS */;

--
-- Table structure for table `Membresia`
--

DROP TABLE IF EXISTS `Membresia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Membresia` (
  `idmembresia` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmembresia`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Membresia`
--

/*!40000 ALTER TABLE `Membresia` DISABLE KEYS */;
INSERT INTO `Membresia` (`idmembresia`, `tipo`) VALUES (1,'GOLD'),(2,'BLACK'),(3,'PLATINUM'),(4,'DIAMIOND');
/*!40000 ALTER TABLE `Membresia` ENABLE KEYS */;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuarios` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `isStaff` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` (`idUsuario`, `nombre`, `apellido`, `email`, `contrasena`, `isStaff`) VALUES (1,'Ariel','Denaro','ariel@hotmail.com','$2b$10$Y51uwB7FtN2yYP9T3eFLLuVzuPJxggoV90HmUL1fwfo5VNWmO3J7a',1),(2,'Pedro','Hernandez','peter@hotmail.com','$2b$10$gXnMk78x9a62SbqUzc8eN.qgnlAmxA5ECtO8e1lZ1XrWO1ZxQ.fiG',0),(3,'Marco','Nozi','marco@hotmail.com','$2b$10$UWzXW0pQV3rKPngBmYw96eNu24ieqslkUsQkQpL8izRl.NVvwecLC',0),(7,'Rafa','Martinez','rafa@hotmail.com','$2b$10$U0ySVTPhLc2U/XrWrhJIQuwEX5zbMhN900I8iWhZlngj/4W5L556W',0),(9,'Peter','Alfondo','alfonso@hotmail.com','$2b$10$5PoynC.i1fxfwA4sk0M/u.0AaQ8cDD6BT/D4Od7GlLoejNKtx6m2C',0),(10,'Joe','Biden','joe@hotmail.com','$2b$10$ZiBR1KsYlSJl3Ja02itoKuyVsQ/Iyem1NXKUY0vnayAabFHO7t/cW',0),(11,'Cami','Kaze','cami@hotmail.com','$2b$10$vZ44ATC6FazAtg9icCHYI.HCAjXFsa1.he.tSXL2WEvCqh/4sfyI6',0),(12,'tronco','villa','tronco@hotmail.com','$2b$10$4zexX5XR9H0nRrpWIpg6pOHdweFqiRh8LOzC5DwoMLTUaCadw3VUy',0),(13,'Pepe','Mugicaº','pepe@gmail.com','$2b$10$yecxYnKg6DS9uvjxOqzUSevqzuG1ODRohdeLd6ngYD52yhIqjTtV2',0);
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` (`name`) VALUES ('20240615185711-create-disco.js'),('20240615190846-create-genero.js'),('20240615192618-create-usuario.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-01 20:23:48