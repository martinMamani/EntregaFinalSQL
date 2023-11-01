CREATE DATABASE  IF NOT EXISTS `dbalmacen` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbalmacen`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: dbalmacen
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `almacen`
--

DROP TABLE IF EXISTS `almacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacen` (
  `idAlmacen` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `propietario` varchar(45) NOT NULL,
  `domicilio` varchar(100) NOT NULL,
  PRIMARY KEY (`idAlmacen`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen`
--

LOCK TABLES `almacen` WRITE;
/*!40000 ALTER TABLE `almacen` DISABLE KEYS */;
INSERT INTO `almacen` VALUES (1,'blanca','Blanca Ramos','Costa Rica 123'),(2,'blanca','Blanca Ramos','Costa Rica 123'),(3,'Kiosco Serg','Sergio Maidana','Colombia 345'),(4,'24hs','Alberto Perez','Avenida Varela 2548'),(5,'Borrachera','Damian Fermandez','Avenida los Andes');
/*!40000 ALTER TABLE `almacen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `idProducto` int NOT NULL,
  PRIMARY KEY (`idCategoria`),
  KEY `id_producto_idx` (`idProducto`),
  CONSTRAINT `id_producto` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'gaseosas','bebida',6),(2,'gaseosas','bebida',7),(3,'gaseosas','bebida',8),(4,'alimento','primera necesidad',1),(5,'alimento','primera necesidad',2),(6,'alimento','primera necesidad',3),(7,'alimento','primera necesidad',4),(8,'alimento','primera necesidad',5);
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `domicilio` varchar(45) NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Juan','Perez','35478988','peru 278'),(2,'Paula','Dominguez','40258988','alberdi 563'),(3,'Damian','Martinez','36478526','azcuenaga 125'),(4,'Mariano','Lopez','42157845','venezuela 547'),(5,'Rocio','Mendoza','41254623','colombia 369');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribuidor`
--

DROP TABLE IF EXISTS `distribuidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distribuidor` (
  `idDistribuidor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `domicilio` varchar(100) NOT NULL,
  PRIMARY KEY (`idDistribuidor`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribuidor`
--

LOCK TABLES `distribuidor` WRITE;
/*!40000 ALTER TABLE `distribuidor` DISABLE KEYS */;
INSERT INTO `distribuidor` VALUES (1,'Mayorista Macro','magallanes 1025'),(2,'Vital','cachaqui 2055'),(3,'Walmart','don bosco 2260');
/*!40000 ALTER TABLE `distribuidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `domicilio` varchar(100) NOT NULL,
  `salario` float NOT NULL,
  `puesto` varchar(45) NOT NULL,
  `idAlmacen` int NOT NULL,
  PRIMARY KEY (`idEmpleado`),
  KEY `idAlmacen_idx` (`idAlmacen`),
  CONSTRAINT `idAlmacen` FOREIGN KEY (`idAlmacen`) REFERENCES `almacen` (`idAlmacen`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Carlos','Perez','35478988','peru 278',130000,'repositor',1),(2,'Jose','Dominguez','40258988','alberdi 563',140000,'repositor',2),(3,'Antonio','Martinez','36478526','azcuenaga 125',130000,'repositor',3),(4,'Maria','Lopez','42157845','venezuela 547',160000,'cajero',1),(5,'Luz','Mendoza','41254623','colombia 369',155000,'cajero',2),(6,'Ariana','Calle','38745852','panama 979',145000,'repositor',2),(7,'Micaela','Sosa','39874125','ecuador 458',175000,'cajero',3),(8,'Franco','Gonzalez','37415369','chile 847',155000,'repositor',3);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `nomyapelldecliquecompraronproddeprimeranecesidad`
--

DROP TABLE IF EXISTS `nomyapelldecliquecompraronproddeprimeranecesidad`;
/*!50001 DROP VIEW IF EXISTS `nomyapelldecliquecompraronproddeprimeranecesidad`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nomyapelldecliquecompraronproddeprimeranecesidad` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ordendecompra`
--

DROP TABLE IF EXISTS `ordendecompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordendecompra` (
  `idOrdenDeCompra` int NOT NULL AUTO_INCREMENT,
  `idCliente` int NOT NULL,
  `idProducto` int NOT NULL,
  PRIMARY KEY (`idOrdenDeCompra`),
  KEY `idCliente_idx` (`idCliente`),
  KEY `idProducto_idx` (`idProducto`),
  CONSTRAINT `idCliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `idProducto` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordendecompra`
--

LOCK TABLES `ordendecompra` WRITE;
/*!40000 ALTER TABLE `ordendecompra` DISABLE KEYS */;
INSERT INTO `ordendecompra` VALUES (1,1,8),(2,1,5),(3,1,3),(4,5,1),(5,5,4),(6,5,5);
/*!40000 ALTER TABLE `ordendecompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idProducto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) CHARACTER SET utf8mb3 NOT NULL,
  `descripcion` varchar(100) CHARACTER SET utf8mb3 NOT NULL,
  `peso` varchar(45) CHARACTER SET utf8mb3 DEFAULT NULL,
  `marca` varchar(45) CHARACTER SET utf8mb3 NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Arroz.','arroz fino largo dos','1 kg','Gallo',800),(2,'Arroz','arroz integral','1 kg','Ala',5000),(3,'Azucar','azucar blanco','1 kg','Ledezma',700),(4,'Azucar','dietetico','1 kg','hileret',1200),(5,'Fideo','tallarines','500 gramos','Matarazzo',600),(6,'gaseosa','sabor cola sin azucar','2 litros','CocaCola',1000),(7,'gaseosa','sabor naranja sin envase retornable','1.5 litros','Fanta',900),(8,'gaseosa','sabor lima','2 litros','Sprite',900),(10,'Sal','sal gruesa','500 gramos','sal marina',600),(11,'','sal gruesa','500 gramos','sal marina',600);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `productoprecioupdate` BEFORE UPDATE ON `producto` FOR EACH ROW insert into productoauditprecio
set id = old.idProducto,
precioA = old.precio,
precioB = new.precio,
fechaDeCambio = now() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `productodescripcionupdate` BEFORE UPDATE ON `producto` FOR EACH ROW insert into productoauditdescripcion
set id = old.idProducto,
descripcionA = old.descripcion,
descripcionB = new.descripcion,
fechaDeCambio = now() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `productonombreupdate` BEFORE UPDATE ON `producto` FOR EACH ROW insert into productoauditnombre
set id = old.idProducto,
nombreA = old.nombre,
nombreB = new.nombre,
fechaDeCambio = now() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `productoauditdescripcion`
--

DROP TABLE IF EXISTS `productoauditdescripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productoauditdescripcion` (
  `id` int NOT NULL,
  `descripcionA` varchar(45) NOT NULL,
  `descripcionB` varchar(45) NOT NULL,
  `fechaDeCambio` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productoauditdescripcion`
--

LOCK TABLES `productoauditdescripcion` WRITE;
/*!40000 ALTER TABLE `productoauditdescripcion` DISABLE KEYS */;
INSERT INTO `productoauditdescripcion` VALUES (1,'arroz fino largo','arroz fino largo dos','2023-10-31'),(1,'arroz fino largo dos','arroz fino largo dos','2023-10-31'),(1,'arroz fino largo dos','arroz fino largo dos','2023-10-31');
/*!40000 ALTER TABLE `productoauditdescripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productoauditnombre`
--

DROP TABLE IF EXISTS `productoauditnombre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productoauditnombre` (
  `id` int NOT NULL,
  `nombreA` varchar(45) NOT NULL,
  `nombreB` varchar(45) NOT NULL,
  `fechaDeCambio` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productoauditnombre`
--

LOCK TABLES `productoauditnombre` WRITE;
/*!40000 ALTER TABLE `productoauditnombre` DISABLE KEYS */;
INSERT INTO `productoauditnombre` VALUES (1,'Arroz','Arroz','2023-10-31'),(1,'Arroz','Arroz.','2023-10-31'),(1,'Arroz.','Arroz.','2023-10-31');
/*!40000 ALTER TABLE `productoauditnombre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productoauditprecio`
--

DROP TABLE IF EXISTS `productoauditprecio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productoauditprecio` (
  `id` int NOT NULL,
  `precioA` float NOT NULL,
  `precioB` float NOT NULL,
  `fechaDeCambio` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productoauditprecio`
--

LOCK TABLES `productoauditprecio` WRITE;
/*!40000 ALTER TABLE `productoauditprecio` DISABLE KEYS */;
INSERT INTO `productoauditprecio` VALUES (1,850,850,'2023-10-31'),(1,850,850,'2023-10-31'),(1,850,800,'2023-10-31');
/*!40000 ALTER TABLE `productoauditprecio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productodedistribuirdor`
--

DROP TABLE IF EXISTS `productodedistribuirdor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productodedistribuirdor` (
  `idProductoDeDistribuirdor` int NOT NULL AUTO_INCREMENT,
  `idDistribuidor` int DEFAULT NULL,
  `idProducto` int DEFAULT NULL,
  PRIMARY KEY (`idProductoDeDistribuirdor`),
  KEY `idProductoD_idx` (`idProducto`),
  KEY `idDistribuidorD_idx` (`idDistribuidor`),
  CONSTRAINT `idDistribuidorD` FOREIGN KEY (`idDistribuidor`) REFERENCES `distribuidor` (`idDistribuidor`),
  CONSTRAINT `idProductoD` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productodedistribuirdor`
--

LOCK TABLES `productodedistribuirdor` WRITE;
/*!40000 ALTER TABLE `productodedistribuirdor` DISABLE KEYS */;
INSERT INTO `productodedistribuirdor` VALUES (1,1,1),(2,1,2),(3,2,3),(4,2,4),(5,2,5),(6,3,6),(7,3,7),(8,3,8);
/*!40000 ALTER TABLE `productodedistribuirdor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `productomascaro`
--

DROP TABLE IF EXISTS `productomascaro`;
/*!50001 DROP VIEW IF EXISTS `productomascaro`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productomascaro` AS SELECT 
 1 AS `idProducto`,
 1 AS `nombre`,
 1 AS `descripcion`,
 1 AS `peso`,
 1 AS `marca`,
 1 AS `precio`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `idProveedor` int NOT NULL AUTO_INCREMENT,
  `idAlmacen` int NOT NULL,
  `idDistribuidor` int NOT NULL,
  PRIMARY KEY (`idProveedor`),
  KEY `id_Almacen_idx` (`idAlmacen`),
  KEY `id_Distribuidor_idx` (`idDistribuidor`),
  CONSTRAINT `id_Almacen` FOREIGN KEY (`idAlmacen`) REFERENCES `almacen` (`idAlmacen`),
  CONSTRAINT `id_Distribuidor` FOREIGN KEY (`idDistribuidor`) REFERENCES `distribuidor` (`idDistribuidor`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,2),(5,3,3),(6,3,3),(7,4,1),(8,4,2);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dbalmacen'
--

--
-- Dumping routines for database 'dbalmacen'
--
/*!50003 DROP FUNCTION IF EXISTS `cantidadDeProductosDeTipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `cantidadDeProductosDeTipo`(nombre varchar(15)) RETURNS int
    READS SQL DATA
BEGIN
     DECLARE cantDeProductos int;
     
     
     select count(*) 
     into cantDeProductos
     from producto
     inner join categoria on producto.idProducto = categoria.idProducto
	 where categoria.nombre = nombre;
    
RETURN  cantDeProductos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `empleadosDeUnAlmacen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `empleadosDeUnAlmacen`(idAlmacen int) RETURNS int
    READS SQL DATA
BEGIN
     DECLARE cantDeEmpleados int;
	
 select count(*) 
 into cantDeEmpleados
 from almacen as a 
 inner join empleado as e on a.idAlmacen = e.idAlmacen
 where a.idAlmacen = idAlmacen;
     
     
RETURN  cantDeEmpleados;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `empleados_ordenados_por` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `empleados_ordenados_por`(in field1 char(30), in field2 char(4))
BEGIN
   if field1 <> ''  and field2 <> '' then
      set @orden = concat('ORDER BY ', field1);
      set @consulta = concat('select * from empleado ',@orden);
      if field2 = 'asc' then
       set @consulta =concat(@consulta, ' asc');
      else 
       set @consulta =concat(@consulta, ' desc');
      end if ;
   else 
     if field1 <> '' then
       set @orden = concat('ORDER BY ', field1);
	   set @consulta = concat('select * from empleado ',@orden);
       else 
          set @orden = '';
          set @consulta = concat('select * from empleado ',@orden);
		end if;
    end if;
    
prepare runSQL from @consulta;
execute runSQL;
deallocate prepare runSQL;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_producto`(in nomb char(45), in descrip char(100), in ps char(45), in marc char(45),in prec float)
BEGIN
   set @f1=nomb;
   set @f2=descrip;
   set @f3=ps;
   set @f4=marc;
   set @f5=prec;
   insert into producto (nombre,descripcion,peso,marca,precio)values(
   @f1,@f2,@f3,@f4,@f5
   );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `nomyapelldecliquecompraronproddeprimeranecesidad`
--

/*!50001 DROP VIEW IF EXISTS `nomyapelldecliquecompraronproddeprimeranecesidad`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nomyapelldecliquecompraronproddeprimeranecesidad` AS select distinct `cli`.`nombre` AS `nombre`,`cli`.`apellido` AS `apellido` from ((`cliente` `cli` join `ordendecompra` `odc` on((`cli`.`idCliente` = `odc`.`idCliente`))) join `categoria` `c` on((`odc`.`idProducto` = `c`.`idProducto`))) where (`c`.`tipo` = 'primera necesidad') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productomascaro`
--

/*!50001 DROP VIEW IF EXISTS `productomascaro`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productomascaro` AS select `producto`.`idProducto` AS `idProducto`,`producto`.`nombre` AS `nombre`,`producto`.`descripcion` AS `descripcion`,`producto`.`peso` AS `peso`,`producto`.`marca` AS `marca`,`producto`.`precio` AS `precio` from `producto` where (`producto`.`precio` = (select max(`producto`.`precio`) from `producto`)) */;
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

-- Dump completed on 2023-10-31 16:44:11
