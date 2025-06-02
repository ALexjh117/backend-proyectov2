-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: activsenav4
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `actividad`
--

DROP TABLE IF EXISTS `actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividad` (
  `IdActividad` int NOT NULL AUTO_INCREMENT,
  `NombreActi` varchar(150) NOT NULL,
  `FechaInicio` date NOT NULL,
  `FechaFin` date NOT NULL,
  `HoraFin` time NOT NULL,
  `HoraInicio` time NOT NULL,
  `TipoLudica` varchar(50) NOT NULL,
  `Descripcion` text,
  `IdEvento` int DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdActividad`),
  KEY `Fk_IdEventoActivi` (`IdEvento`),
  CONSTRAINT `Fk_IdEventoActivi` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`IdEvento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
INSERT INTO `actividad` VALUES (1,'Actividad 1','2023-09-01','2023-09-01','12:00:00','10:00:00','Workshop','Actividad detallada 1',1,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,'Actividad 2','2023-09-02','2023-09-02','12:00:00','10:00:00','Seminario','Actividad detallada 2',2,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,'Actividad 3','2023-09-03','2023-09-03','12:00:00','10:00:00','Taller','Actividad detallada 3',3,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,'Actividad 4','2023-09-04','2023-09-04','12:00:00','10:00:00','Workshop','Actividad detallada 4',4,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,'Actividad 5','2023-09-05','2023-09-05','12:00:00','10:00:00','Seminario','Actividad detallada 5',5,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,'Actividad 6','2023-09-06','2023-09-06','12:00:00','10:00:00','Taller','Actividad detallada 6',6,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,'Actividad 7','2023-09-07','2023-09-07','12:00:00','10:00:00','Workshop','Actividad detallada 7',7,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,'Actividad 8','2023-09-08','2023-09-08','12:00:00','10:00:00','Seminario','Actividad detallada 8',8,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,'Actividad 9','2023-09-09','2023-09-09','12:00:00','10:00:00','Taller','Actividad detallada 9',9,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,'Actividad 10','2023-09-10','2023-09-10','12:00:00','10:00:00','Workshop','Actividad detallada 10',10,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,'Actividad 11','2023-09-11','2023-09-11','12:00:00','10:00:00','Seminario','Actividad detallada 11',11,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,'Actividad 12','2023-09-12','2023-09-12','12:00:00','10:00:00','Taller','Actividad detallada 12',12,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,'Actividad 13','2023-09-13','2023-09-13','12:00:00','10:00:00','Workshop','Actividad detallada 13',13,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,'Actividad 14','2023-09-14','2023-09-14','12:00:00','10:00:00','Seminario','Actividad detallada 14',14,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,'Actividad 15','2023-09-15','2023-09-15','12:00:00','10:00:00','Taller','Actividad detallada 15',15,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,'Actividad 16','2023-09-16','2023-09-16','12:00:00','10:00:00','Workshop','Actividad detallada 16',16,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,'Actividad 17','2023-09-17','2023-09-17','12:00:00','10:00:00','Seminario','Actividad detallada 17',17,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,'Actividad 18','2023-09-18','2023-09-18','12:00:00','10:00:00','Taller','Actividad detallada 18',18,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,'Actividad 19','2023-09-19','2023-09-19','12:00:00','10:00:00','Workshop','Actividad detallada 19',19,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,'Actividad 20','2023-09-20','2023-09-20','12:00:00','10:00:00','Seminario','Actividad detallada 20',20,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(21,'Actividad 22','2023-09-01','2023-09-01','12:00:00','10:00:00','Workshop','Actividad detallada 1',1,'2025-05-29 13:11:47','2025-05-29 13:11:47'),(22,'Actividad 2re','2023-09-01','2023-09-01','12:00:00','10:00:00','Workshop','Actividad detallada 1',2,'2025-05-29 21:26:41','2025-05-29 21:26:41');
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alquilerelementos`
--

DROP TABLE IF EXISTS `alquilerelementos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alquilerelementos` (
  `IdAlquiler` int NOT NULL AUTO_INCREMENT,
  `NombreElemento` varchar(50) NOT NULL,
  `FechaSolicitud` datetime NOT NULL,
  `FechaDevolucion` datetime NOT NULL,
  `RegistradoPor` varchar(50) NOT NULL,
  `Observaciones` text,
  `IdUsuario` int DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdAlquiler`),
  KEY `Fk_IdUsuaAlqEl` (`IdUsuario`),
  CONSTRAINT `Fk_IdUsuaAlqEl` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alquilerelementos`
--

LOCK TABLES `alquilerelementos` WRITE;
/*!40000 ALTER TABLE `alquilerelementos` DISABLE KEYS */;
INSERT INTO `alquilerelementos` VALUES (1,'Elemento 1','2023-07-01 09:00:00','2023-07-01 17:00:00','Usuario 1','Observación 1',1,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,'Elemento 2','2023-07-02 09:00:00','2023-07-02 17:00:00','Usuario 2','Observación 2',2,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,'Elemento 3','2023-07-03 09:00:00','2023-07-03 17:00:00','Usuario 3','Observación 3',3,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,'Elemento 4','2023-07-04 09:00:00','2023-07-04 17:00:00','Usuario 4','Observación 4',4,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,'Elemento 5','2023-07-05 09:00:00','2023-07-05 17:00:00','Usuario 5','Observación 5',5,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,'Elemento 6','2023-07-06 09:00:00','2023-07-06 17:00:00','Usuario 6','Observación 6',6,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,'Elemento 7','2023-07-07 09:00:00','2023-07-07 17:00:00','Usuario 7','Observación 7',7,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,'Elemento 8','2023-07-08 09:00:00','2023-07-08 17:00:00','Usuario 8','Observación 8',8,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,'Elemento 9','2023-07-09 09:00:00','2023-07-09 17:00:00','Usuario 9','Observación 9',9,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,'Elemento 10','2023-07-10 09:00:00','2023-07-10 17:00:00','Usuario 10','Observación 10',10,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,'Elemento 11','2023-07-11 09:00:00','2023-07-11 17:00:00','Usuario 11','Observación 11',11,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,'Elemento 12','2023-07-12 09:00:00','2023-07-12 17:00:00','Usuario 12','Observación 12',12,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,'Elemento 13','2023-07-13 09:00:00','2023-07-13 17:00:00','Usuario 13','Observación 13',13,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,'Elemento 14','2023-07-14 09:00:00','2023-07-14 17:00:00','Usuario 14','Observación 14',14,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,'Elemento 15','2023-07-15 09:00:00','2023-07-15 17:00:00','Usuario 15','Observación 15',15,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,'Elemento 16','2023-07-16 09:00:00','2023-07-16 17:00:00','Usuario 16','Observación 16',16,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,'Elemento 17','2023-07-17 09:00:00','2023-07-17 17:00:00','Usuario 17','Observación 17',17,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,'Elemento 18','2023-07-18 09:00:00','2023-07-18 17:00:00','Usuario 18','Observación 18',18,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,'Elemento 19','2023-07-19 09:00:00','2023-07-19 17:00:00','Usuario 19','Observación 19',19,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,'Elemento 20','2023-07-20 09:00:00','2023-07-20 17:00:00','Usuario 20','Observación 20',20,'2025-05-29 12:53:52','2025-05-29 12:53:52');
/*!40000 ALTER TABLE `alquilerelementos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencia` (
  `AsiId` int NOT NULL AUTO_INCREMENT,
  `AsiFecha` datetime NOT NULL,
  `AsiHorasAsistidas` int DEFAULT NULL,
  `QREntrada` varchar(100) NOT NULL,
  `QRSalida` varchar(100) NOT NULL,
  `IdUsuario` int DEFAULT NULL,
  `IdActividad` int DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AsiId`),
  KEY `Fk_IdUSuarioAsis` (`IdUsuario`),
  KEY `Fk_ActividadesAsis` (`IdActividad`),
  CONSTRAINT `Fk_ActividadesAsis` FOREIGN KEY (`IdActividad`) REFERENCES `actividad` (`IdActividad`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Fk_IdUSuarioAsis` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
INSERT INTO `asistencia` VALUES (1,'2023-09-02 10:00:00',2,'QR_ENTRADA1','QR_SALIDA1',1,1,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,'2023-09-03 10:00:00',2,'QR_ENTRADA2','QR_SALIDA2',2,2,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,'2023-09-04 10:00:00',2,'QR_ENTRADA3','QR_SALIDA3',3,3,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,'2023-09-05 10:00:00',2,'QR_ENTRADA4','QR_SALIDA4',4,4,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,'2023-09-06 10:00:00',2,'QR_ENTRADA5','QR_SALIDA5',5,5,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,'2023-09-07 10:00:00',2,'QR_ENTRADA6','QR_SALIDA6',6,6,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,'2023-09-08 10:00:00',2,'QR_ENTRADA7','QR_SALIDA7',7,7,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,'2023-09-09 10:00:00',2,'QR_ENTRADA8','QR_SALIDA8',8,8,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,'2023-09-10 10:00:00',2,'QR_ENTRADA9','QR_SALIDA9',9,9,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,'2023-09-11 10:00:00',2,'QR_ENTRADA10','QR_SALIDA10',10,10,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,'2023-09-12 10:00:00',2,'QR_ENTRADA11','QR_SALIDA11',11,11,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,'2023-09-13 10:00:00',2,'QR_ENTRADA12','QR_SALIDA12',12,12,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,'2023-09-14 10:00:00',2,'QR_ENTRADA13','QR_SALIDA13',13,13,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,'2023-09-15 10:00:00',2,'QR_ENTRADA14','QR_SALIDA14',14,14,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,'2023-09-16 10:00:00',2,'QR_ENTRADA15','QR_SALIDA15',15,15,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,'2023-09-17 10:00:00',2,'QR_ENTRADA16','QR_SALIDA16',16,16,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,'2023-09-18 10:00:00',2,'QR_ENTRADA17','QR_SALIDA17',17,17,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,'2023-09-19 10:00:00',2,'QR_ENTRADA18','QR_SALIDA18',18,18,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,'2023-09-20 10:00:00',2,'QR_ENTRADA19','QR_SALIDA19',19,19,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,'2023-09-21 10:00:00',2,'QR_ENTRADA20','QR_SALIDA20',20,20,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(21,'2023-09-21 10:00:00',2,'QR_ENTRADA21','QR_SALIDA21',10,20,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(22,'2023-09-02 10:00:00',2,'QR_ENTRADA2321','QR_SALIDA1',1,1,'2025-05-29 21:30:13','2025-05-29 21:30:13');
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `constancia`
--

DROP TABLE IF EXISTS `constancia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `constancia` (
  `ConstanciaId` int NOT NULL AUTO_INCREMENT,
  `ConstanciaHorasCert` int DEFAULT NULL,
  `ConstanciaEstado` enum('Aprobado','Pendiente') DEFAULT NULL,
  `ConstanciaFecha` datetime DEFAULT NULL,
  `IdUsuario` int DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ConstanciaId`),
  KEY `Fk_IdentificacionU` (`IdUsuario`),
  CONSTRAINT `Fk_IdentificacionU` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constancia`
--

LOCK TABLES `constancia` WRITE;
/*!40000 ALTER TABLE `constancia` DISABLE KEYS */;
INSERT INTO `constancia` VALUES (1,2,'Aprobado','2023-09-03 15:00:00',1,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,3,'Pendiente','2023-09-04 15:00:00',2,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,2,'Aprobado','2023-09-05 15:00:00',3,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,3,'Pendiente','2023-09-06 15:00:00',4,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,2,'Aprobado','2023-09-07 15:00:00',5,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,3,'Pendiente','2023-09-08 15:00:00',6,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,2,'Aprobado','2023-09-09 15:00:00',7,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,3,'Pendiente','2023-09-10 15:00:00',8,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,2,'Aprobado','2023-09-11 15:00:00',9,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,3,'Pendiente','2023-09-12 15:00:00',10,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,2,'Aprobado','2023-09-13 15:00:00',11,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,3,'Pendiente','2023-09-14 15:00:00',12,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,2,'Aprobado','2023-09-15 15:00:00',13,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,3,'Pendiente','2023-09-16 15:00:00',14,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,2,'Aprobado','2023-09-17 15:00:00',15,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,3,'Pendiente','2023-09-18 15:00:00',16,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,2,'Aprobado','2023-09-19 15:00:00',17,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,3,'Pendiente','2023-09-20 15:00:00',18,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,2,'Aprobado','2023-09-21 15:00:00',19,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,3,'Pendiente','2023-09-22 15:00:00',20,'2025-05-29 12:53:52','2025-05-29 12:53:52');
/*!40000 ALTER TABLE `constancia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultaia`
--

DROP TABLE IF EXISTS `consultaia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultaia` (
  `IdConsultaIA` int NOT NULL AUTO_INCREMENT,
  `Pregunta` text NOT NULL,
  `Respuesta` text NOT NULL,
  `Fecha` date NOT NULL,
  `Descripcion` text,
  `IdUsuario` int DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdConsultaIA`),
  KEY `Fk_IdUsuaConsul` (`IdUsuario`),
  CONSTRAINT `Fk_IdUsuaConsul` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultaia`
--

LOCK TABLES `consultaia` WRITE;
/*!40000 ALTER TABLE `consultaia` DISABLE KEYS */;
INSERT INTO `consultaia` VALUES (1,'Pregunta IA 1','Respuesta IA 1','2023-09-04','Descripcion consulta IA 1',1,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,'Pregunta IA 2','Respuesta IA 2','2023-09-05','Descripcion consulta IA 2',2,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,'Pregunta IA 3','Respuesta IA 3','2023-09-06','Descripcion consulta IA 3',3,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,'Pregunta IA 4','Respuesta IA 4','2023-09-07','Descripcion consulta IA 4',4,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,'Pregunta IA 5','Respuesta IA 5','2023-09-08','Descripcion consulta IA 5',5,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,'Pregunta IA 6','Respuesta IA 6','2023-09-09','Descripcion consulta IA 6',6,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,'Pregunta IA 7','Respuesta IA 7','2023-09-10','Descripcion consulta IA 7',7,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,'Pregunta IA 8','Respuesta IA 8','2023-09-11','Descripcion consulta IA 8',8,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,'Pregunta IA 9','Respuesta IA 9','2023-09-12','Descripcion consulta IA 9',9,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,'Pregunta IA 10','Respuesta IA 10','2023-09-13','Descripcion consulta IA 10',10,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,'Pregunta IA 11','Respuesta IA 11','2023-09-14','Descripcion consulta IA 11',11,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,'Pregunta IA 12','Respuesta IA 12','2023-09-15','Descripcion consulta IA 12',12,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,'Pregunta IA 13','Respuesta IA 13','2023-09-16','Descripcion consulta IA 13',13,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,'Pregunta IA 14','Respuesta IA 14','2023-09-17','Descripcion consulta IA 14',14,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,'Pregunta IA 15','Respuesta IA 15','2023-09-18','Descripcion consulta IA 15',15,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,'Pregunta IA 16','Respuesta IA 16','2023-09-19','Descripcion consulta IA 16',16,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,'Pregunta IA 17','Respuesta IA 17','2023-09-20','Descripcion consulta IA 17',17,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,'Pregunta IA 18','Respuesta IA 18','2023-09-21','Descripcion consulta IA 18',18,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,'Pregunta IA 19','Respuesta IA 19','2023-09-22','Descripcion consulta IA 19',19,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,'Pregunta IA 20','Respuesta IA 20','2023-09-23','Descripcion consulta IA 20',20,'2025-05-29 12:53:52','2025-05-29 12:53:52');
/*!40000 ALTER TABLE `consultaia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento` (
  `IdEvento` int NOT NULL AUTO_INCREMENT,
  `NombreEvento` varchar(255) NOT NULL,
  `FechaInicio` date NOT NULL,
  `FechaFin` date NOT NULL,
  `HoraFin` time NOT NULL,
  `HoraInicio` time NOT NULL,
  `UbicacionEvento` varchar(255) NOT NULL,
  `IdPlanificarE` int DEFAULT NULL,
  `DescripcionEvento` text,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdEvento`),
  KEY `Fk_PlanificacionEv` (`IdPlanificarE`),
  CONSTRAINT `Fk_PlanificacionEv` FOREIGN KEY (`IdPlanificarE`) REFERENCES `planificacionevento` (`IdPlanificarE`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (1,'Evento 1','2023-09-01','2023-09-01','17:00:00','09:00:00','Ubicacion 1',1,'Descripcion del Evento 1','2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,'Evento 2','2023-09-02','2023-09-02','17:00:00','09:00:00','Ubicacion 2',2,'Descripcion del Evento 2','2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,'Evento 3','2023-09-03','2023-09-03','17:00:00','09:00:00','Ubicacion 3',3,'Descripcion del Evento 3','2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,'Evento 4','2023-09-04','2023-09-04','17:00:00','09:00:00','Ubicacion 4',4,'Descripcion del Evento 4','2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,'Evento 5','2023-09-05','2023-09-05','17:00:00','09:00:00','Ubicacion 5',5,'Descripcion del Evento 5','2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,'Evento 6','2023-09-06','2023-09-06','17:00:00','09:00:00','Ubicacion 6',6,'Descripcion del Evento 6','2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,'Evento 7','2023-09-07','2023-09-07','17:00:00','09:00:00','Ubicacion 7',7,'Descripcion del Evento 7','2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,'Evento 8','2023-09-08','2023-09-08','17:00:00','09:00:00','Ubicacion 8',8,'Descripcion del Evento 8','2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,'Evento 9','2023-09-09','2023-09-09','17:00:00','09:00:00','Ubicacion 9',9,'Descripcion del Evento 9','2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,'Evento 10','2023-09-10','2023-09-10','17:00:00','09:00:00','Ubicacion 10',10,'Descripcion del Evento 10','2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,'Evento 11','2023-09-11','2023-09-11','17:00:00','09:00:00','Ubicacion 11',11,'Descripcion del Evento 11','2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,'Evento 12','2023-09-12','2023-09-12','17:00:00','09:00:00','Ubicacion 12',12,'Descripcion del Evento 12','2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,'Evento 13','2023-09-13','2023-09-13','17:00:00','09:00:00','Ubicacion 13',13,'Descripcion del Evento 13','2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,'Evento 14','2023-09-14','2023-09-14','17:00:00','09:00:00','Ubicacion 14',14,'Descripcion del Evento 14','2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,'Evento 15','2023-09-15','2023-09-15','17:00:00','09:00:00','Ubicacion 15',15,'Descripcion del Evento 15','2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,'Evento 16','2023-09-16','2023-09-16','17:00:00','09:00:00','Ubicacion 16',16,'Descripcion del Evento 16','2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,'Evento 17','2023-09-17','2023-09-17','17:00:00','09:00:00','Ubicacion 17',17,'Descripcion del Evento 17','2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,'Evento 18','2023-09-18','2023-09-18','17:00:00','09:00:00','Ubicacion 18',18,'Descripcion del Evento 18','2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,'Evento 19','2023-09-19','2023-09-19','17:00:00','09:00:00','Ubicacion 19',19,'Descripcion del Evento 19','2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,'Evento 20','2023-09-20','2023-09-20','17:00:00','09:00:00','Ubicacion 20',20,'Descripcion del Evento 20','2025-05-29 12:53:52','2025-05-29 12:53:52');
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `IdFeedback` int NOT NULL AUTO_INCREMENT,
  `ComentarioFeedback` text NOT NULL,
  `FechaEnvio` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdFeedback`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Feedback comentario 1','2023-09-06 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,'Feedback comentario 2','2023-09-07 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,'Feedback comentario 3','2023-09-08 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,'Feedback comentario 4','2023-09-09 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,'Feedback comentario 5','2023-09-10 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,'Feedback comentario 6','2023-09-11 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,'Feedback comentario 7','2023-09-12 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,'Feedback comentario 8','2023-09-13 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,'Feedback comentario 9','2023-09-14 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,'Feedback comentario 10','2023-09-15 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,'Feedback comentario 11','2023-09-16 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,'Feedback comentario 12','2023-09-17 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,'Feedback comentario 13','2023-09-18 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,'Feedback comentario 14','2023-09-19 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,'Feedback comentario 15','2023-09-20 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,'Feedback comentario 16','2023-09-21 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,'Feedback comentario 17','2023-09-22 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,'Feedback comentario 18','2023-09-23 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,'Feedback comentario 19','2023-09-24 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,'Feedback comentario 20','2023-09-25 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestionevento`
--

DROP TABLE IF EXISTS `gestionevento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestionevento` (
  `IdGestionE` int NOT NULL AUTO_INCREMENT,
  `Aprobar` enum('Aprobado','Pendiente') DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdGestionE`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestionevento`
--

LOCK TABLES `gestionevento` WRITE;
/*!40000 ALTER TABLE `gestionevento` DISABLE KEYS */;
INSERT INTO `gestionevento` VALUES (1,'Aprobado','2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,'Pendiente','2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,'Aprobado','2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,'Pendiente','2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,'Aprobado','2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,'Pendiente','2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,'Aprobado','2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,'Pendiente','2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,'Aprobado','2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,'Pendiente','2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,'Aprobado','2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,'Pendiente','2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,'Aprobado','2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,'Pendiente','2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,'Aprobado','2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,'Pendiente','2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,'Aprobado','2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,'Pendiente','2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,'Aprobado','2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,'Pendiente','2025-05-29 12:53:52','2025-05-29 12:53:52');
/*!40000 ALTER TABLE `gestionevento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historialsolicitud`
--

DROP TABLE IF EXISTS `historialsolicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historialsolicitud` (
  `IdHistorial` int NOT NULL AUTO_INCREMENT,
  `IdSolicitud` int NOT NULL,
  `EstadoNuevo` enum('Pendiente','En Proceso','Atendido','Finalizado') NOT NULL,
  `Comentario` text,
  `RolUsuario` int NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdHistorial`),
  KEY `FK_Solicitud_Historial` (`IdSolicitud`),
  KEY `FK_Usuario_Historial` (`RolUsuario`),
  CONSTRAINT `FK_Solicitud_Historial` FOREIGN KEY (`IdSolicitud`) REFERENCES `solicitudapoyo` (`IdSolicitud`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Usuario_Historial` FOREIGN KEY (`RolUsuario`) REFERENCES `rolusuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historialsolicitud`
--

LOCK TABLES `historialsolicitud` WRITE;
/*!40000 ALTER TABLE `historialsolicitud` DISABLE KEYS */;
INSERT INTO `historialsolicitud` VALUES (2,1,'En Proceso','Se asignó psicólogo clínico',1,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(3,2,'Atendido','Seguimiento emocional realizado por tutor',2,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(4,3,'Finalizado','Apoyo económico aprobado por bienestar',3,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(5,4,'Finalizado','Sesión de orientación completada',4,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(6,5,'En Proceso','Se programó cita con psicólogo',5,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(7,6,'Atendido','Se realizaron dos sesiones de apoyo',6,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(8,7,'En Proceso','Ayuda económica en trámite',7,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(9,8,'Finalizado','Tutor acompañó al estudiante',8,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(10,9,'Finalizado','Caso cerrado tras evaluación psicológica',9,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(11,10,'En Proceso','Sesión inicial realizada',10,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(12,11,'Pendiente','Solicitud registrada, falta revisión',11,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(13,12,'Finalizado','Recibió ayuda por parte de bienestar',12,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(14,13,'Atendido','Se brindó orientación personal',13,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(15,14,'En Proceso','Psicólogo contactó al aprendiz',14,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(16,15,'Finalizado','El caso fue tratado y cerrado',15,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(17,16,'Pendiente','En espera de revisión del caso',16,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(18,17,'Atendido','Acompañamiento psicológico realizado',17,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(19,18,'Finalizado','Asesoría completada con éxito',18,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(20,19,'Atendido','El aprendiz mostró mejoría',19,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(21,20,'En Proceso','Se asignó especialista en oratoria',20,'2025-05-29 12:53:53','2025-05-29 12:53:53');
/*!40000 ALTER TABLE `historialsolicitud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificaciones`
--

DROP TABLE IF EXISTS `notificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificaciones` (
  `IdNotificacion` int NOT NULL AUTO_INCREMENT,
  `Mensaje` text NOT NULL,
  `TiposNotificacion` enum('Evento','Actividad','Anuncio') DEFAULT NULL,
  `FechaDeEnvio` date NOT NULL,
  `IdEvento` int DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdNotificacion`),
  KEY `Fk_IdEventoNoti` (`IdEvento`),
  CONSTRAINT `Fk_IdEventoNoti` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`IdEvento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificaciones`
--

LOCK TABLES `notificaciones` WRITE;
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
INSERT INTO `notificaciones` VALUES (1,'Notificación 1','Evento','2023-09-05',1,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,'Notificación 2','Actividad','2023-09-06',2,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,'Notificación 3','Anuncio','2023-09-07',3,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,'Notificación 4','Evento','2023-09-08',4,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,'Notificación 5','Actividad','2023-09-09',5,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,'Notificación 6','Anuncio','2023-09-10',6,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,'Notificación 7','Evento','2023-09-11',7,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,'Notificación 8','Actividad','2023-09-12',8,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,'Notificación 9','Anuncio','2023-09-13',9,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,'Notificación 10','Evento','2023-09-14',10,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,'Notificación 11','Actividad','2023-09-15',11,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,'Notificación 12','Anuncio','2023-09-16',12,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,'Notificación 13','Evento','2023-09-17',13,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,'Notificación 14','Actividad','2023-09-18',14,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,'Notificación 15','Anuncio','2023-09-19',15,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,'Notificación 16','Evento','2023-09-20',16,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,'Notificación 17','Actividad','2023-09-21',17,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,'Notificación 18','Anuncio','2023-09-22',18,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,'Notificación 19','Evento','2023-09-23',19,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,'Notificación 20','Actividad','2023-09-24',20,'2025-05-29 12:53:52','2025-05-29 12:53:52');
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planificacionevento`
--

DROP TABLE IF EXISTS `planificacionevento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planificacionevento` (
  `IdPlanificarE` int NOT NULL AUTO_INCREMENT,
  `NombreEvento` varchar(150) NOT NULL,
  `FechaEvento` datetime NOT NULL,
  `LugarDeEvento` varchar(50) NOT NULL,
  `Recursos` text,
  `IdGestionE` int NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdPlanificarE`),
  KEY `Fk_IdGestionE` (`IdGestionE`),
  CONSTRAINT `Fk_IdGestionE` FOREIGN KEY (`IdGestionE`) REFERENCES `gestionevento` (`IdGestionE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planificacionevento`
--

LOCK TABLES `planificacionevento` WRITE;
/*!40000 ALTER TABLE `planificacionevento` DISABLE KEYS */;
INSERT INTO `planificacionevento` VALUES (1,'Plan Evento 1','2023-08-01 09:00:00','Lugar 1','Recursos 1',1,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,'Plan Evento 2','2023-08-02 09:00:00','Lugar 2','Recursos 2',2,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,'Plan Evento 3','2023-08-03 09:00:00','Lugar 3','Recursos 3',3,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,'Plan Evento 4','2023-08-04 09:00:00','Lugar 4','Recursos 4',4,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,'Plan Evento 5','2023-08-05 09:00:00','Lugar 5','Recursos 5',5,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,'Plan Evento 6','2023-08-06 09:00:00','Lugar 6','Recursos 6',6,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,'Plan Evento 7','2023-08-07 09:00:00','Lugar 7','Recursos 7',7,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,'Plan Evento 8','2023-08-08 09:00:00','Lugar 8','Recursos 8',8,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,'Plan Evento 9','2023-08-09 09:00:00','Lugar 9','Recursos 9',9,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,'Plan Evento 10','2023-08-10 09:00:00','Lugar 10','Recursos 10',10,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,'Plan Evento 11','2023-08-11 09:00:00','Lugar 11','Recursos 11',11,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,'Plan Evento 12','2023-08-12 09:00:00','Lugar 12','Recursos 12',12,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,'Plan Evento 13','2023-08-13 09:00:00','Lugar 13','Recursos 13',13,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,'Plan Evento 14','2023-08-14 09:00:00','Lugar 14','Recursos 14',14,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,'Plan Evento 15','2023-08-15 09:00:00','Lugar 15','Recursos 15',15,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,'Plan Evento 16','2023-08-16 09:00:00','Lugar 16','Recursos 16',16,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,'Plan Evento 17','2023-08-17 09:00:00','Lugar 17','Recursos 17',17,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,'Plan Evento 18','2023-08-18 09:00:00','Lugar 18','Recursos 18',18,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,'Plan Evento 19','2023-08-19 09:00:00','Lugar 19','Recursos 19',19,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,'Plan Evento 20','2023-08-20 09:00:00','Lugar 20','Recursos 20',20,'2025-05-29 12:53:52','2025-05-29 12:53:52');
/*!40000 ALTER TABLE `planificacionevento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relusuarioevento`
--

DROP TABLE IF EXISTS `relusuarioevento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relusuarioevento` (
  `IdUsuario` int NOT NULL,
  `IdEvento` int NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `Fk_IdUsuaEven` (`IdUsuario`),
  KEY `Fk_IdEvenUsua` (`IdEvento`),
  CONSTRAINT `Fk_IdEvenUsua` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`IdEvento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Fk_IdUsuaEven` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relusuarioevento`
--

LOCK TABLES `relusuarioevento` WRITE;
/*!40000 ALTER TABLE `relusuarioevento` DISABLE KEYS */;
INSERT INTO `relusuarioevento` VALUES (1,1,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(2,2,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(3,3,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(4,4,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(5,5,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(6,6,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(7,7,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(8,8,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(9,9,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(10,10,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(11,11,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(12,12,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(13,13,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(14,14,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(15,15,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(16,16,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(17,17,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(18,18,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(19,19,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(20,20,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(1,4,'2025-06-02 14:55:25','2025-06-02 14:55:25');
/*!40000 ALTER TABLE `relusuarioevento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relusuariofeedback`
--

DROP TABLE IF EXISTS `relusuariofeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relusuariofeedback` (
  `IdUsuario` int NOT NULL,
  `IdFeedback` int NOT NULL,
  `FechaRelUsuaFeed` date DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `Fk_IdUsuaFeed` (`IdUsuario`),
  KEY `Fk_IdFeedbackUsua` (`IdFeedback`),
  CONSTRAINT `Fk_IdFeedbackUsua` FOREIGN KEY (`IdFeedback`) REFERENCES `feedback` (`IdFeedback`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Fk_IdUsuaFeed` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relusuariofeedback`
--

LOCK TABLES `relusuariofeedback` WRITE;
/*!40000 ALTER TABLE `relusuariofeedback` DISABLE KEYS */;
INSERT INTO `relusuariofeedback` VALUES (1,1,'2023-09-07','2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,2,'2023-09-08','2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,3,'2023-09-09','2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,4,'2023-09-10','2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,5,'2023-09-11','2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,6,'2023-09-12','2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,7,'2023-09-13','2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,8,'2023-09-14','2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,9,'2023-09-15','2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,10,'2023-09-16','2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,11,'2023-09-17','2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,12,'2023-09-18','2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,13,'2023-09-19','2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,14,'2023-09-20','2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,15,'2023-09-21','2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,16,'2023-09-22','2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,17,'2023-09-23','2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,18,'2023-09-24','2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,19,'2023-09-25','2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,20,'2023-09-26','2025-05-29 12:53:52','2025-05-29 12:53:52');
/*!40000 ALTER TABLE `relusuariofeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolusuario`
--

DROP TABLE IF EXISTS `rolusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rolusuario` (
  `IdRol` int NOT NULL AUTO_INCREMENT,
  `NombreRol` enum('Administrador','Aprendiz','Instructor') NOT NULL,
  `IdUsuario` int NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdRol`),
  KEY `FK_IdUsuarioRol` (`IdUsuario`),
  CONSTRAINT `FK_IdUsuarioRol` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolusuario`
--

LOCK TABLES `rolusuario` WRITE;
/*!40000 ALTER TABLE `rolusuario` DISABLE KEYS */;
INSERT INTO `rolusuario` VALUES (1,'Administrador',1,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,'Aprendiz',2,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,'Instructor',3,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,'Administrador',4,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,'Aprendiz',5,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,'Instructor',6,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,'Administrador',7,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,'Aprendiz',8,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,'Instructor',9,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,'Administrador',10,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,'Aprendiz',11,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,'Instructor',12,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,'Administrador',13,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,'Aprendiz',14,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,'Instructor',15,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,'Administrador',16,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,'Aprendiz',17,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,'Instructor',18,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,'Administrador',19,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,'Aprendiz',20,'2025-05-29 12:53:52','2025-05-29 12:53:52');
/*!40000 ALTER TABLE `rolusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudapoyo`
--

DROP TABLE IF EXISTS `solicitudapoyo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudapoyo` (
  `IdSolicitud` int NOT NULL AUTO_INCREMENT,
  `TipoAyuda` enum('Psicologica','Emocional','Economica','Otra') NOT NULL,
  `Descripcion` text NOT NULL,
  `ContactoEmergencia` varchar(100) DEFAULT NULL,
  `Estado` enum('Pendiente','En Proceso','Atendido','Finalizado') DEFAULT 'Pendiente',
  `IdUsuario` int NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdSolicitud`),
  KEY `FK_Usuario_Solicitud` (`IdUsuario`),
  CONSTRAINT `FK_Usuario_Solicitud` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudapoyo`
--

LOCK TABLES `solicitudapoyo` WRITE;
/*!40000 ALTER TABLE `solicitudapoyo` DISABLE KEYS */;
INSERT INTO `solicitudapoyo` VALUES (1,'Psicologica','He sentido mucha ansiedad antes de los exámenes','3101234561','Pendiente',1,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(2,'Emocional','Problemas familiares están afectando mi rendimiento','3101234562','En Proceso',2,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(3,'Economica','No tengo recursos para transporte diario','3101234563','Atendido',3,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(4,'Otra','Quiero orientación vocacional','3101234564','Finalizado',4,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(5,'Psicologica','Dificultad para dormir por estrés académico','3101234565','Pendiente',5,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(6,'Emocional','Me siento aislado de mis compañeros','3101234566','Pendiente',6,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(7,'Economica','Solicito apoyo con materiales educativos','3101234567','En Proceso',7,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(8,'Otra','Necesito hablar sobre problemas personales','3101234568','Atendido',8,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(9,'Psicologica','Ansiedad en exposiciones orales','3101234569','Finalizado',9,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(10,'Emocional','Problemas de autoestima','3101234570','Pendiente',10,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(11,'Psicologica','Me cuesta concentrarme en clase','3101234571','Pendiente',11,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(12,'Economica','Solicito ayuda para cubrir alimentación','3101234572','Atendido',12,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(13,'Otra','Deseo mejorar mis habilidades sociales','3101234573','En Proceso',13,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(14,'Psicologica','Ataques de pánico ocasionales','3101234574','Pendiente',14,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(15,'Emocional','Quiero hablar con alguien de confianza','3101234575','Finalizado',15,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(16,'Economica','No puedo pagar fotocopias de estudio','3101234576','Pendiente',16,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(17,'Psicologica','Necesito acompañamiento psicológico','3101234577','En Proceso',17,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(18,'Otra','Asesoría para manejo de tiempo','3101234578','Atendido',18,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(19,'Emocional','Me siento frustrado con mi progreso','3101234579','Finalizado',19,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(20,'Psicologica','Miedo escénico en presentaciones','3101234580','Pendiente',20,'2025-05-29 12:53:53','2025-05-29 12:53:53');
/*!40000 ALTER TABLE `solicitudapoyo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `IdUsuario` int NOT NULL AUTO_INCREMENT,
  `IdentificacionUsuario` varchar(50) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Correo` varchar(255) NOT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Contrasena` varchar(255) NOT NULL,
  `FechaRegistro` date NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdUsuario`),
  UNIQUE KEY `IdentificacionUsuario` (`IdentificacionUsuario`),
  UNIQUE KEY `Correo` (`Correo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'ID001','Juan','Perez','juan.perez@example.com','555-0001','pass1','2023-01-01','2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,'ID002','Maria','Lopez','maria.lopez@example.com','555-0002','pass2','2023-01-02','2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,'ID003','Carlos','Gomez','carlos.gomez@example.com','555-0003','pass3','2023-01-03','2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,'ID004','Ana','Martinez','ana.martinez@example.com','555-0004','pass4','2023-01-04','2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,'ID005','Luis','Rodriguez','luis.rodriguez@example.com','555-0005','pass5','2023-01-05','2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,'ID006','Sofia','Ramirez','sofia.ramirez@example.com','555-0006','pass6','2023-01-06','2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,'ID007','Miguel','Torres','miguel.torres@example.com','555-0007','pass7','2023-01-07','2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,'ID008','Laura','Fernandez','laura.fernandez@example.com','555-0008','pass8','2023-01-08','2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,'ID009','Diego','Sanchez','diego.sanchez@example.com','555-0009','pass9','2023-01-09','2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,'ID010','Elena','Diaz','elena.diaz@example.com','555-0010','pass10','2023-01-10','2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,'ID011','Jorge','Ramirez','jorge.ramirez@example.com','555-0011','pass11','2023-01-11','2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,'ID012','Paula','Morales','paula.morales@example.com','555-0012','pass12','2023-01-12','2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,'ID013','Andres','Rojas','andres.rojas@example.com','555-0013','pass13','2023-01-13','2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,'ID014','Carla','Vargas','carla.vargas@example.com','555-0014','pass14','2023-01-14','2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,'ID015','Ricardo','Castro','ricardo.castro@example.com','555-0015','pass15','2023-01-15','2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,'ID016','Marta','Suarez','marta.suarez@example.com','555-0016','pass16','2023-01-16','2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,'ID017','Esteban','Pardo','esteban.pardo@example.com','555-0017','pass17','2023-01-17','2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,'ID018','Natalia','Ortiz','natalia.ortiz@example.com','555-0018','pass18','2023-01-18','2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,'ID019','Hugo','Fuentes','hugo.fuentes@example.com','555-0019','pass19','2023-01-19','2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,'ID020','Veronica','Mendoza','veronica.mendoza@example.com','555-0020','pass20','2023-01-20','2025-05-29 12:53:52','2025-05-29 12:53:52');
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

-- Dump completed on 2025-06-02 15:59:15
