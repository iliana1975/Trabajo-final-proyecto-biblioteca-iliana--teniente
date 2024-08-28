CREATE DATABASE  IF NOT EXISTS `proyecto_biblioteca` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proyecto_biblioteca`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_biblioteca
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `id_autor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `nacionalidad` varchar(100) DEFAULT NULL,
  `cantidad_libros` int DEFAULT NULL,
  PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'Vivian','Gornick','1945-05-22','EEUU',NULL),(2,'Stephen','King','1947-03-12','EEUU',NULL),(3,'Harper','Lee','1926-11-28','EEUU',NULL),(4,'Mark','Twain','1949-01-22','EEUU',NULL),(5,'Edgard Allan','Poe','1936-02-18','EEUU',NULL),(6,'Gabriel Garcia','Márquez','1927-07-10','México',NULL),(7,'Jorge Luis','Borges','1899-07-15','Argentino',NULL),(8,'Mario','Vargas Llosa','1836-08-18','Perú',NULL),(9,'Leopoldo','Marechal','1900-03-11','Argentino',NULL),(10,'Isabel','Allende','1942-05-03','Chilena',NULL),(11,'Pablo','Neruda','1904-07-10','Chileno',NULL),(12,'Ernesto','Sábato','1911-09-10','Argentino',NULL);
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biblioteca`
--

DROP TABLE IF EXISTS `biblioteca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biblioteca` (
  `id_biblioteca` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `id_libro` int DEFAULT NULL,
  PRIMARY KEY (`id_biblioteca`),
  KEY `id_libro` (`id_libro`),
  CONSTRAINT `biblioteca_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biblioteca`
--

LOCK TABLES `biblioteca` WRITE;
/*!40000 ALTER TABLE `biblioteca` DISABLE KEYS */;
/*!40000 ALTER TABLE `biblioteca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(100) DEFAULT NULL,
  `id_libro` int DEFAULT NULL,
  PRIMARY KEY (`id_categoria`),
  KEY `id_libro` (`id_libro`),
  CONSTRAINT `categorias_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Drama',1),(2,'Romance',2),(3,'Poesia',3),(4,'Novela',4),(5,'Accion',5),(6,'Terror',6),(7,'Drama',7),(8,'Comedia',8),(9,'Terror',9),(10,'Comedia',10),(11,'Terror',11),(12,'Drama',12),(13,'Novela',13),(14,'Romance',14),(15,'Accion',15),(16,'Accion',16),(17,'Poesia',18),(18,'Comedia',19),(19,'Comedia',20),(20,'Terror',21),(21,'Terror',22),(22,'Romance',23),(23,'Poema',24),(24,'Drama',25),(25,'Terror',26);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente_lector` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `nro_cliente` int NOT NULL,
  PRIMARY KEY (`id_cliente_lector`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Fernando','Ferreyra','3512000320','Roberto Cayol 345','f_f@hotmail.com',1),(2,'Jeremias','Guzmán','351256456','Romulo Carbia 2658','J_J@hotmail.com',2),(3,'Josue','Teniente','3516985754','Tablada 79','J_T@hotmail.com',3),(4,'Lidia','Guzmán','351785965','Romulo Carbia 56','L_G@hotmail.com',4),(5,'Constantino','Mangiafave','3513695784','Flores 54','C_M@gmail.com',5),(6,'Catalina','Mangiafave','3515986256','Duarte Quiros 2115','Cata_M@gmail.com',6),(7,'Agustin','Ferreyra','3513456734','Roberto Cayol 300','A_f@hotmail.com',7);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_cliente_insert` AFTER INSERT ON `clientes` FOR EACH ROW BEGIN
    -- Acción a realizar cuando se inserta un cliente
    INSERT INTO registro_clientes (id_cliente, fecha_registro)
    VALUES (NEW.id_cliente_lector, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `editoriales`
--

DROP TABLE IF EXISTS `editoriales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editoriales` (
  `id_editorial` int NOT NULL AUTO_INCREMENT,
  `nombre_editorial` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) NOT NULL,
  `sucursal` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_editorial`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editoriales`
--

LOCK TABLES `editoriales` WRITE;
/*!40000 ALTER TABLE `editoriales` DISABLE KEYS */;
INSERT INTO `editoriales` VALUES (1,'Planeta','Av. Libertad 78-Buenos Aires','0114785968','Sucursal 1'),(2,'Ediciones','Pedro Zanni 45 - Rosario','0451476585','Sucursal 2'),(3,'Macmillian','Rondeau 55- Córdoba','3514758695','Sucursal 3'),(4,'Alfaguara','Nuñez 223 - Santa Fe','0523785475','Sucursal 4'),(5,'Salamandra','Av.Córdoba 876 - Buenos Aires','0113695456','Sucursal 5'),(6,'Anagrama','Av.Rafael Nuñez 235 - Córdoba','3515698452','Sucursal 6'),(7,'Catedra','Av.Rafael Nuñez 1568 - Córdoba','351764548','Sucursal 7');
/*!40000 ALTER TABLE `editoriales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nacionalidad` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Luis','Perez','1975-09-20','Español'),(2,'Candelaria','Nuñez','1993-07-12','Argentina');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `id_libro` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `id_autor` int DEFAULT NULL,
  `id_editorial` int DEFAULT NULL,
  `cantidad_libros` int DEFAULT NULL,
  PRIMARY KEY (`id_libro`),
  KEY `id_autor` (`id_autor`),
  KEY `id_editorial` (`id_editorial`),
  CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id_autor`),
  CONSTRAINT `libros_ibfk_2` FOREIGN KEY (`id_editorial`) REFERENCES `editoriales` (`id_editorial`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'Apegos feroces',1,1,5),(2,'Mirarse de frente',1,2,3),(3,'La mujer singular y la ciudad',1,3,4),(4,'El Instituto',2,4,6),(5,'El Pistolero',2,5,7),(6,'IT',2,6,10),(7,'Matar a un Ruiseñor',3,7,8),(8,'Ve y pone un centinela',3,1,5),(9,'To kill a Mockingbird',3,2,9),(10,'Las aventuras de Tom Sawyer',4,3,6),(11,'El Cuervo',5,4,4),(12,'El Escarabajo de Oro',5,5,3),(13,'Cien Años de Soledad',6,6,12),(14,'Amor en los tiempos de Cólera',6,7,7),(15,'Noticias de un Secuestro',6,1,8),(16,'La mirada quieta',9,3,7),(17,'La Ciudad y los Perros',9,4,8),(18,'La fiesta del Chivo',9,5,6),(19,'El Centauro',10,6,4),(20,'La Casa de los espíritus',11,7,9),(21,'Más allá del Invierno',11,1,5),(22,'Cien Sonetos de Amor',12,2,11),(23,'Canto General',12,3,6),(24,'El Tunel',10,4,7),(25,'Sobre Héroes y Tumbas',11,5,8),(26,'La Resistencia',12,6,5);
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_libros` AFTER INSERT ON `libros` FOR EACH ROW BEGIN
    UPDATE autores
    SET cantidad_libros = cantidad_libros + 1
    WHERE id_autor = NEW.id_autor;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `prestamos`
--

DROP TABLE IF EXISTS `prestamos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamos` (
  `id_prestamo` int NOT NULL AUTO_INCREMENT,
  `id_cliente_lector` int DEFAULT NULL,
  `id_empleado` int DEFAULT NULL,
  `id_libro` int DEFAULT NULL,
  `fecha_prestamo` date NOT NULL,
  `fecha_devolucion` date NOT NULL,
  PRIMARY KEY (`id_prestamo`),
  KEY `id_cliente_lector` (`id_cliente_lector`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_libro` (`id_libro`),
  CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`id_cliente_lector`) REFERENCES `clientes` (`id_cliente_lector`),
  CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`),
  CONSTRAINT `prestamos_ibfk_3` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamos`
--

LOCK TABLES `prestamos` WRITE;
/*!40000 ALTER TABLE `prestamos` DISABLE KEYS */;
INSERT INTO `prestamos` VALUES (1,6,1,12,'2024-07-22','2024-07-29'),(2,3,2,1,'2024-07-22','2024-07-26'),(3,4,2,3,'2024-07-22','2024-07-30'),(4,5,2,4,'2024-07-22','2024-07-25'),(5,6,1,2,'2024-07-22','2024-07-26'),(6,1,2,5,'2024-07-22','2024-07-31'),(7,2,1,6,'2024-07-22','2024-07-31'),(8,3,1,7,'2024-07-22','2024-07-26'),(9,4,1,8,'2024-07-22','2024-07-31'),(10,5,2,9,'2024-07-22','2024-08-01');
/*!40000 ALTER TABLE `prestamos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_libros`
--

DROP TABLE IF EXISTS `venta_libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta_libros` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(60) DEFAULT NULL,
  `precio_venta_libro` decimal(15,2) DEFAULT NULL,
  `costo_libro` decimal(15,2) DEFAULT NULL,
  `id_libro` int DEFAULT NULL,
  PRIMARY KEY (`id_venta`),
  UNIQUE KEY `id_libro` (`id_libro`),
  CONSTRAINT `venta_libros_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_libros`
--

LOCK TABLES `venta_libros` WRITE;
/*!40000 ALTER TABLE `venta_libros` DISABLE KEYS */;
INSERT INTO `venta_libros` VALUES (1,'Apegos feroces',800.00,500.00,1),(2,'Mirarse de frente',1100.00,700.00,2),(3,'La mujer singular y la ciudad',500.00,300.00,3),(4,'El Instituto',1800.00,1500.00,4),(5,'El Pistolero',2600.00,2300.00,5),(6,'IT',2800.00,2500.00,6),(7,'Matar a un Ruiseñor',1350.00,950.00,7),(8,'Ve y pone un centinela',1300.00,1050.00,8),(9,'To kill a Mockingbird',650.00,450.00,9),(10,'Las aventuras de Tom Sawyer',1300.00,1000.00,10),(11,'El Cuervo',1100.00,850.00,11),(12,'El Escarabajo de Oro',2900.00,2600.00,12),(13,'Cien Años de Soledad',1800.00,1500.00,13),(14,'Amor en los tiempos de Cólera',850.00,650.00,14),(15,'Noticias de un Secuestro',850.00,550.00,15),(16,'La mirada quieta',900.00,650.00,16),(17,'La Ciudad y los Perros',1600.00,1300.00,17),(18,'La fiesta del Chivo',900.00,650.00,18),(19,'El Centauro',1300.00,850.00,19),(20,'La Casa de los espíritus',1300.00,900.00,20),(21,'Más allá del Invierno',1850.00,1560.00,21),(22,'Cien Sonetos de Amor',1200.00,800.00,22),(23,'Canto General',1850.00,1550.00,23),(24,'El Tunel',1350.00,960.00,24),(25,'Sobre Héroes y Tumbas',650.00,450.00,25),(26,'La Resistencia',1600.00,1200.00,26);
/*!40000 ALTER TABLE `venta_libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_autores`
--

DROP TABLE IF EXISTS `vista_autores`;
/*!50001 DROP VIEW IF EXISTS `vista_autores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_autores` AS SELECT 
 1 AS `nombre`,
 1 AS `nacionalidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_clientes`
--

DROP TABLE IF EXISTS `vista_clientes`;
/*!50001 DROP VIEW IF EXISTS `vista_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_clientes` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `mail`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_editoriales`
--

DROP TABLE IF EXISTS `vista_editoriales`;
/*!50001 DROP VIEW IF EXISTS `vista_editoriales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_editoriales` AS SELECT 
 1 AS `nombre_editorial`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_empleados`
--

DROP TABLE IF EXISTS `vista_empleados`;
/*!50001 DROP VIEW IF EXISTS `vista_empleados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_empleados` AS SELECT 
 1 AS `nombre`,
 1 AS `nacionalidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_libros`
--

DROP TABLE IF EXISTS `vista_libros`;
/*!50001 DROP VIEW IF EXISTS `vista_libros`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_libros` AS SELECT 
 1 AS `id_libro`,
 1 AS `titulo`,
 1 AS `id_autor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_prestamos`
--

DROP TABLE IF EXISTS `vista_prestamos`;
/*!50001 DROP VIEW IF EXISTS `vista_prestamos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_prestamos` AS SELECT 
 1 AS `id_libro`,
 1 AS `fecha_prestamo`,
 1 AS `fecha_devolucion`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'proyecto_biblioteca'
--

--
-- Dumping routines for database 'proyecto_biblioteca'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_cantidad_libros_prestados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_cantidad_libros_prestados`(id_cliente INT) RETURNS int
    NO SQL
    DETERMINISTIC
BEGIN
    DECLARE total_libros_prestados INT;
    SELECT COUNT(*) INTO total_libros_prestados 
    FROM prestamos 
    WHERE id_cliente_lector = id_cliente;
    RETURN total_libros_prestados;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_ganancia_neta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_ganancia_neta`(venta_id INT) RETURNS decimal(15,2)
    NO SQL
    DETERMINISTIC
BEGIN
    DECLARE diferenciaPrecio DECIMAL(15,2);
    SELECT (precio_venta_libro - costo_libro) INTO diferenciaPrecio
    FROM venta_libros
    WHERE id_venta = venta_id;
    RETURN diferenciaPrecio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_autores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_autores`()
BEGIN
    SELECT * FROM proyecto_biblioteca.autores;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_clientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_clientes`()
BEGIN
    SELECT * FROM proyecto_biblioteca.clientes;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_editoriales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_editoriales`()
BEGIN
    SELECT * FROM proyecto_biblioteca.editoriales;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_libros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_libros`()
BEGIN
    SELECT * FROM proyecto_biblioteca.libros;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vista_autores`
--

/*!50001 DROP VIEW IF EXISTS `vista_autores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_autores` AS select `autores`.`nombre` AS `nombre`,`autores`.`nacionalidad` AS `nacionalidad` from `autores` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_clientes`
--

/*!50001 DROP VIEW IF EXISTS `vista_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_clientes` AS select `clientes`.`nombre` AS `nombre`,`clientes`.`apellido` AS `apellido`,`clientes`.`mail` AS `mail` from `clientes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_editoriales`
--

/*!50001 DROP VIEW IF EXISTS `vista_editoriales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_editoriales` AS select `editoriales`.`nombre_editorial` AS `nombre_editorial` from `editoriales` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_empleados`
--

/*!50001 DROP VIEW IF EXISTS `vista_empleados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_empleados` AS select `empleados`.`nombre` AS `nombre`,`empleados`.`nacionalidad` AS `nacionalidad` from `empleados` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_libros`
--

/*!50001 DROP VIEW IF EXISTS `vista_libros`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_libros` AS select `libros`.`id_libro` AS `id_libro`,`libros`.`titulo` AS `titulo`,`libros`.`id_autor` AS `id_autor` from `libros` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_prestamos`
--

/*!50001 DROP VIEW IF EXISTS `vista_prestamos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_prestamos` AS select `prestamos`.`id_libro` AS `id_libro`,`prestamos`.`fecha_prestamo` AS `fecha_prestamo`,`prestamos`.`fecha_devolucion` AS `fecha_devolucion` from `prestamos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-28 15:44:22
