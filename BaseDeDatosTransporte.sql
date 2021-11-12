-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: transporte
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
-- Table structure for table `conductor`
--

DROP TABLE IF EXISTS `conductor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conductor` (
  `id_conductor` int NOT NULL AUTO_INCREMENT,
  `tipo_documento` varchar(45) DEFAULT NULL,
  `numero_documento` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `departamento` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_conductor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conductor`
--

LOCK TABLES `conductor` WRITE;
/*!40000 ALTER TABLE `conductor` DISABLE KEYS */;
INSERT INTO `conductor` VALUES (1,'CC','10236521','CALLE 123','MEDELLIN','CANADA','2158963'),(2,'CC','123658965','CARRERA 33','BOGOTA','PARIAS','365214785'),(3,'CC','12589512','AV 45','CUNDINAMARCA','COLOMBIA','321456'),(4,'CC','15485157','CALLE 44','TOLIMA','COLOMBIA','321456985');
/*!40000 ALTER TABLE `conductor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id_empresa` int NOT NULL AUTO_INCREMENT,
  `id_representante_legal` int DEFAULT NULL,
  `tipo_documento` varchar(45) DEFAULT NULL,
  `numero_documento` varchar(45) DEFAULT NULL,
  `nombre_completo` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `departamento` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`),
  KEY `empresa_representante_idx` (`id_representante_legal`),
  CONSTRAINT `Empresa_Representante` FOREIGN KEY (`id_representante_legal`) REFERENCES `representante_legal` (`id_representante_legal`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,1,'CC','555','Empresa de desarrollo','Carrera 44','IBAGUE','TOLIMA','COLOMBIA','3214569874'),(2,1,'NIT','563256-8','Empresa 2','av 123','Cali','Choco',NULL,'258963');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `representante_legal`
--

DROP TABLE IF EXISTS `representante_legal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `representante_legal` (
  `id_representante_legal` int NOT NULL AUTO_INCREMENT,
  `tipo_documento` varchar(45) DEFAULT NULL,
  `numero_documento` varchar(45) DEFAULT NULL,
  `nombre_completo` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `departamento` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_representante_legal`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `representante_legal`
--

LOCK TABLES `representante_legal` WRITE;
/*!40000 ALTER TABLE `representante_legal` DISABLE KEYS */;
INSERT INTO `representante_legal` VALUES (1,'CC','123456','Andres Mendez','CALLE FALSA 123','BOGOTA','Cundinamarca','Colombia','3214659865'),(2,'CC','3214','Paola Caisedo','Carrera 58','CARTAGENA','VALLE','Colombia','3112563256');
/*!40000 ALTER TABLE `representante_legal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo` (
  `id_vehiculo` int NOT NULL AUTO_INCREMENT,
  `id_empresa` int DEFAULT NULL,
  `placa` varchar(45) DEFAULT NULL,
  `motor` varchar(45) DEFAULT NULL,
  `chasis` varchar(45) DEFAULT NULL,
  `modelo` varchar(10) DEFAULT NULL,
  `fecha_matricula` varchar(45) DEFAULT NULL,
  `pasajeros_sentados` int DEFAULT NULL,
  `pasajeros_pie` int DEFAULT NULL,
  `peso_seco` int DEFAULT NULL,
  `peso_bruto` int DEFAULT NULL,
  `cantidad_puertas` int DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `linea` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_vehiculo`),
  KEY `Vehiculo_Empresa_idx` (`id_empresa`),
  CONSTRAINT `Vehiculo_Empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
INSERT INTO `vehiculo` VALUES (1,1,'MQB99E','123','1564564FDFGD','2021','2021',2,0,100,80,0,'kia','full'),(2,1,'DEF652','343453','FD4FD8R4','2020','2021',5,0,20,254,2,'chevrolet','sedan'),(3,2,'ERD256','3212243435','FGV4GF8G4F8','1998','2000',12,20,80,500,2,'nisan','versa'),(4,2,'DER33A','3324234','FCDR87G5T8','2010','2010',2,0,145,563,0,'kawasaki','Z'),(5,2,'DEF365','22334','FDF1R584','2015','2016',8,10,200,254,4,'mazda','3');
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo_conductor`
--

DROP TABLE IF EXISTS `vehiculo_conductor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo_conductor` (
  `id_vehiculo_conductor` int NOT NULL AUTO_INCREMENT,
  `id_vehiculo` int DEFAULT NULL,
  `id_conductor` int DEFAULT NULL,
  PRIMARY KEY (`id_vehiculo_conductor`),
  KEY `Relacion_Vehiculo_idx` (`id_vehiculo`),
  KEY `Relacion_Conductor_idx` (`id_conductor`),
  CONSTRAINT `Relacion_Conductor` FOREIGN KEY (`id_conductor`) REFERENCES `conductor` (`id_conductor`),
  CONSTRAINT `Relacion_Vehiculo` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculo` (`id_vehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo_conductor`
--

LOCK TABLES `vehiculo_conductor` WRITE;
/*!40000 ALTER TABLE `vehiculo_conductor` DISABLE KEYS */;
INSERT INTO `vehiculo_conductor` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,4,4),(6,5,2),(7,5,1),(8,5,4),(9,2,2),(10,2,3),(11,3,4),(12,3,1),(13,2,4);
/*!40000 ALTER TABLE `vehiculo_conductor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-12 14:29:08
