use box;

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
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulos` (
  `idArticulo` varchar(20) NOT NULL,
  `detalle` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `idRubro` int NOT NULL,
  `estado` char(2) NOT NULL,
  `stock` int NOT NULL,
  `stockmin` int NOT NULL,
  `um` varchar(5) NOT NULL,
  `fecAlta` date NOT NULL,
  `idTipo` int NOT NULL,
  `idUsr` int NOT NULL,
  PRIMARY KEY (`idArticulo`),
  KEY `fk_articulos_um1_idx` (`um`),
  KEY `fk_rubro_articulo_idx` (`idRubro`),
  KEY `fk_idtipoarticulos_idx` (`idTipo`),
  KEY `fk_idUsr_idx` (`idUsr`),
  KEY `fk_idUsr_idx_articulos` (`idUsr`),
  CONSTRAINT `fk_articulos_um1` FOREIGN KEY (`um`) REFERENCES `um` (`idUM`),
  CONSTRAINT `fk_idUsr_articulos` FOREIGN KEY (`idUsr`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `fk_rubro_articulo` FOREIGN KEY (`idRubro`) REFERENCES `rubro_articulo` (`idRubro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES ('BC10038-25','Base Cerejeira 100x38x2,5',100.00,2,'A',29994,50,'CU','2016-03-10',4,1),('BICAZ1','Birome BIC AZUL GRUESO',25.00,5,'A',30000,5,'CU','2007-01-01',5,1),('BICNG1','Birome BIC NEGRO GRUESO',25.00,5,'A',30000,5,'CU','2007-01-01',5,1),('BICRO1','Birome BIC ROJO GRUESO',25.00,5,'A',30000,5,'CU','2007-01-01',5,1),('BOGLOGO','Logo Bogner',0.00,20,'A',30000,15,'CU','2018-08-02',4,1),('BP10038-25','Base Pino 100x38x2,5',250.00,2,'A',29984,5,'CU','2010-08-01',4,1),('BP11038-25','Base Pino 110x38x2,5',120.00,2,'A',30000,5,'CU','2010-08-02',4,1),('BP12038-25','Base Pino 120x38x2,5',220.00,2,'A',29999,5,'CU','2010-04-20',4,1),('CHAPF-P1000','Chapa Apoyo Sup. Fender P1000',380.00,21,'A',30000,5,'CU','2010-04-10',4,1),('CHAPFDER-HR','Chapa Apoyo Sup. Fender HR',280.00,21,'A',29988,20,'CU','2019-04-10',4,1),('CHAPMBHN','Chapa Apoyo Sup. MB Head - Negro',400.00,21,'A',29988,5,'CU','2010-04-10',4,1),('COLA_MADERA','Cola Madera ',90.00,3,'A',30000,4000,'CM3','2013-02-08',4,1),('CUAD-ESPIRAL-CUA-80','CUADERNO Espiralado 80h Cuadriculado',80.00,5,'A',30000,10,'CU','2018-08-08',5,1),('CUAD-ESPIRAL-RAY-80','CUADERNO Espiralado 80h Rayado',85.00,5,'A',30000,10,'CU','2018-08-08',5,1),('CUEFDER-BK','Cuerina Fender Negro',150.00,16,'A',29961,10,'M2','2010-11-03',4,1),('CUEMBC','Cuerina MB Caoba',320.00,16,'A',30000,10,'M2','2010-03-08',4,1),('CUEMBCREAM','Cuerina MB Cream',350.00,16,'A',29996,10,'M2','2010-10-02',4,1),('CUEMBN','Cuerina MB Negro',150.00,16,'A',29985,10,'M2','2010-11-03',4,1),('CUEVIB SLO','Cuerina Vibora Soldano Custom 1',600.00,16,'A',30000,20,'M2','2020-01-01',4,1),('ESQUIFDERA-BK','Esquinas Fender Acetato - Negro',60.00,2,'A',29964,20,'CU','2018-04-08',4,1),('ESQUIMBAHN','Esquinas MB Acetato Head - Negro',600.00,2,'A',29964,20,'CU','2018-04-08',4,1),('FC9520-25','Fondo Cerejerira 95x20x2,5',100.00,2,'A',29994,50,'CU','2016-03-10',4,1),('FDERLOGO1','Logo Fender 1',0.00,20,'A',29991,40,'CU','2018-02-08',4,1),('FDERLOGO2','Logo Fender 2',0.00,20,'A',29994,10,'CU','2018-02-08',4,1),('FDERLOGO3','Logo Fender 3',0.00,20,'A',29998,200,'CU','2018-02-08',4,1),('FP10535-25','Fondo Pino 105x30x2,5',100.00,2,'A',30000,5,'CU','2018-04-08',4,1),('FP11525-25','Fondo Pino 115x25x2,5',100.00,2,'A',29999,5,'CU','2018-08-08',4,1),('FP1557225','Frente Pino 1x12 W 155x72x2,5',200.00,2,'A',29999,5,'CU','2010-08-08',4,1),('FP9520-25','Fondo Pino 95x20x2,5',400.00,2,'A',29984,5,'CU','2012-08-08',4,1),('FREZ1506N','Frezado 1,5x0,6 - Negro',0.30,1,'A',29816,150,'CU','2012-08-08',4,1),('FREZ1506P','Frezado 1,5x0,6 - Plata',0.40,1,'A',29908,150,'CU','2012-08-08',4,1),('FREZ206P','Frezado 2x0,6 - Plata',0.35,1,'A',29954,100,'CU','2012-08-08',4,1),('FTEC9520-25','Frente Cerejerira 95x20x2,5',100.00,2,'A',29994,50,'CU','2016-03-10',4,1),('FTEP1210545-25','Frente Pino 1x12 105x45x2,5',100.00,1,'A',30000,5,'CU','2012-08-08',4,1),('FTEP1211550-25','Frente Pino 1x12 115x50x2,5',220.00,2,'A',29999,5,'CU','2018-06-08',4,1),('FTEP9520-25','Frente Pino 95x20x2,5',130.00,2,'A',29984,5,'CU','2010-07-08',4,1),('HP12A ','TONER 12A HP',3000.00,17,'A',30000,5,'CU','2018-08-08',5,1),('HP78A ','TONER 78A HP',3000.00,17,'A',30000,1,'CU','2021-10-08',5,1),('LACA-MR-BR','Laca Marina Brillante',205.00,14,'A',30000,4000,'CM3','2019-08-05',4,1),('LACA-MR-SM','Laca Marina Semi-Mate',134.00,14,'A',30000,4000,'CM3','2019-03-01',4,1),('LCD3840-25','Lateral Der Cerejeira Forma 38x40x2,5',100.00,2,'A',29994,50,'CU','2016-03-10',4,1),('LCI3840-25','Lateral Izq Cerejerira Forma 38x40x2,5',100.00,2,'A',29994,50,'CU','2016-03-10',4,1),('LPD3840-25','Lateral Der Pino Forma 38x40x2,5',370.00,2,'A',29984,5,'CU','2010-08-08',4,1),('LPD3855-25','Lateral Der Pino Forma 38x55x2,5',300.00,2,'A',29999,5,'CU','2010-09-08',4,1),('LPI3840-25','Lateral Izq Pino Forma 38x40x2,5',120.00,2,'A',29984,5,'CU','2012-08-08',4,1),('LPI3855-25','Lateral Izq Pino Forma 38x55x2,5',140.00,2,'A',29999,5,'CU','2012-08-08',4,1),('MANITFDER-BK','Manija Transp. Fender - Negro',140.00,8,'A',29983,20,'CU','2018-08-08',4,1),('MANITMBCN','Manija Transp. Heavy MB - Negro',450.00,8,'A',29999,15,'CU','2012-08-08',4,1),('MANITMBN','Manija Transp. MB - Negro',340.00,8,'A',29995,15,'CU','2018-08-08',4,1),('MARLOGO','Logo Marshall',0.00,20,'A',30000,50,'CU','2017-08-03',4,1),('MBLOGO1','Logo Boogie',0.00,20,'A',29995,20,'CU','2018-02-06',4,1),('MBLOGO2','Logo Boogie Cream',0.00,20,'A',29999,30,'CU','2013-02-08',4,1),('PARK205N','Parker 2x0,5 - Negro',400.00,1,'A',29904,100,'CU','2013-08-08',4,1),('PARK2505N','Parker 2,5x0,5 - Negro',350.00,1,'A',29908,120,'CU','2018-08-06',4,1),('PEGA-CTO','Pegamento de Contacto ',295.00,3,'A',30000,2000,'CM3','2020-08-12',4,1),('PEGA-CTO_TR','Pegamento de Contacto Tranparente',290.00,3,'A',30000,2000,'CM3','2020-10-03',4,1),('PLASTICOLA 200GRS','Plasticola 200 gramos blanca',145.00,5,'A',30000,10,'CU','2019-08-08',5,1),('REGAFDERSTD-BKN','Regaton Fender STD - Negro',22.00,9,'A',29932,50,'CU','2018-08-06',4,1),('REGAMBHN','Regaton MB Head - Negro',122.00,9,'A',29976,50,'CU','2018-08-06',4,1),('REGUNV35','Regaton UNIV 35mm- Negro',75.00,9,'A',30000,100,'CU','2018-08-06',4,1),('REGUNV40','Regaton UNIV 40mm- Negro',80.00,9,'A',30000,100,'CU','2018-08-06',4,1),('RESMA-A4-75GR','Resma A4 500 x 75grs',455.00,5,'A',30000,20,'CU','2020-08-08',5,1),('RESMA-CARTA-80GR','Resma CARTA 500 x 80grs',498.00,5,'A',30000,15,'CU','2020-08-08',5,1),('RIVLOGO','Logo Rivera',0.00,20,'A',30000,30,'CU','2020-10-03',4,1),('RUED 45-AZUL','Ruedas 45mm diam Azul',230.00,18,'A',30000,20,'CU','2017-08-10',4,1),('RUED 60-BK','Ruedas 60mm diam Negra',268.00,18,'A',30000,20,'CU','2017-08-10',4,1),('SLOLOGO','Logo Soldano',0.00,20,'A',30000,20,'CU','2019-03-14',4,1),('TARM1020','Tarugos Mad. 10x20',8.00,19,'A',29816,150,'CU','2014-02-05',4,1),('TARM1030','Tarugos Mad. 10x30',8.00,19,'A',30000,150,'CU','2014-08-04',4,1),('TC10028-25','Tapa Cerejeira 100x28x2,5',100.00,2,'A',29994,50,'CU','2016-03-10',4,1),('TELAFDER-BD','Tela Blues Deville Fender',125.80,13,'A',29946,40,'M2','2019-08-02',4,1),('TOPFONC20-25x25','Tope Fondo Cerejerira 20x2,5x2,5',100.00,2,'A',29988,50,'CU','2016-03-10',4,1),('TOPFONP20-25x25','Tope Fondo Pino 20x2,5x2,5',270.00,2,'A',29968,10,'CU','2014-08-08',4,1),('TOPFONP25-25x25','Tope Fondo Pino 25x2,5x2,5',290.00,2,'A',29998,10,'CU','2014-02-08',4,1),('TOPFONP30-25x25','Tope Fondo Pino 30x2,5x2,5',400.00,2,'A',30000,10,'CU','2014-10-08',4,1),('TOPFREC20-25x25','Tope Frente Cerejerira 20x2,5x2,5',100.00,2,'A',29988,50,'CU','2016-03-10',4,1),('TOPFREP20-25x25','Tope Frente Pino 20x2,5x2,5',300.00,2,'A',29968,10,'CU','2014-10-08',4,1),('TOPFREP38-25x25','Tope Frente Pino 38x2,5x2,5',210.00,2,'A',30000,10,'CU','2017-08-18',4,1),('TOPFREP50-25x25','Tope Frente Pino 50x2,5x2,5',125.00,2,'A',29998,15,'CU','2017-10-08',4,1),('TP10028-25','Tapa Pino 100x28x2,5',189.00,2,'A',29984,15,'CU','2017-04-08',4,1),('TP11028-25','Tapa Pino 110x28x2,5',167.00,2,'A',30000,15,'CU','2017-03-08',4,1),('TP12038-25','Tapa Pino 120x38x2,5',380.00,2,'A',29999,15,'CU','2017-03-08',4,1),('VINIL','Peg. Vinilico Contacto',124.00,12,'A',13430,1500,'CM3','2018-02-08',4,1),('VINIL-ESP','Peg. Vinilico Contacto Especial',450.00,12,'A',30000,5000,'CM3','2019-02-08',4,1),('VINIL-NG','Peg. Vinilico Contacto Negro',100.00,12,'A',30000,5000,'CM3','2019-01-08',4,1);
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulosproveedores`
--

DROP TABLE IF EXISTS `articulosproveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulosproveedores` (
  `idArtProv` int NOT NULL,
  `idProveedor` int NOT NULL,
  `idArticulo` varchar(20) NOT NULL,
  PRIMARY KEY (`idArtProv`),
  KEY `FK_idArticulo_idx` (`idArticulo`),
  KEY `FK_idProveedor_idx` (`idProveedor`),
  CONSTRAINT `FK_idArticuloArtProv` FOREIGN KEY (`idArticulo`) REFERENCES `articulos` (`idArticulo`),
  CONSTRAINT `FK_idProveedor` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulosproveedores`
--

LOCK TABLES `articulosproveedores` WRITE;
/*!40000 ALTER TABLE `articulosproveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `articulosproveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit` (
  `idEvent` int NOT NULL AUTO_INCREMENT,
  `idMov` int NOT NULL,
  `DetMov` varchar(80) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `idUsr` int NOT NULL,
  `Tabla` varchar(45) NOT NULL,
  PRIMARY KEY (`idEvent`),
  KEY `idMov_idx` (`idMov`),
  CONSTRAINT `idMov` FOREIGN KEY (`idMov`) REFERENCES `audmov` (`idMov`)
) ENGINE=InnoDB AUTO_INCREMENT=1343 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit`
--

LOCK TABLES `audit` WRITE;
/*!40000 ALTER TABLE `audit` DISABLE KEYS */;
INSERT INTO `audit` VALUES (1,1,'Crear producto RIV_VENUS 5x15H','2022-09-03','10:12:42',1,'productos'),(2,1,'Crear OF Nro 2','2022-09-10','12:42:11',1,'ordfabcab'),(3,1,'Crear OF Nro 3','2022-10-14','22:10:29',1,'ordfabcab'),(4,3,'Modificar producto BOGECS-100','2022-10-15','13:11:46',1,'productos'),(5,3,'Modificar producto CT1X12WIDE23','2022-10-15','13:11:46',1,'productos'),(6,3,'Modificar producto FHOTRODDX3','2022-10-15','13:11:46',1,'productos'),(7,3,'Modificar producto MJCM900','2022-10-15','13:11:46',1,'productos'),(8,3,'Modificar producto MVCAB1+','2022-10-15','13:11:46',1,'productos'),(9,3,'Modificar producto MVCBO1','2022-10-15','13:11:46',1,'productos'),(10,3,'Modificar producto MVS8080','2022-10-15','13:11:46',1,'productos'),(11,3,'Modificar producto PERF1000','2022-10-15','13:11:46',1,'productos'),(12,3,'Modificar producto RIV_VENUS 5x12H','2022-10-15','13:11:46',1,'productos'),(13,3,'Modificar producto RIV_VENUS 5x15H','2022-10-15','13:11:46',1,'productos'),(14,3,'Modificar producto SLO-100 SO','2022-10-15','13:11:46',1,'productos'),(15,3,'Modificar producto BOGECS-100','2022-10-15','13:15:29',1,'productos'),(16,3,'Modificar producto CT1X12WIDE23','2022-10-15','13:15:29',1,'productos'),(17,3,'Modificar producto FHOTRODDX3','2022-10-15','13:15:29',1,'productos'),(18,3,'Modificar producto MJCM900','2022-10-15','13:15:29',1,'productos'),(19,3,'Modificar producto PERF1000','2022-10-15','13:15:29',1,'productos'),(20,3,'Modificar producto MVCAB1+','2022-10-15','13:15:29',1,'productos'),(21,3,'Modificar producto MVCBO1','2022-10-15','13:15:29',1,'productos'),(22,3,'Modificar producto MVS8080','2022-10-15','13:15:29',1,'productos'),(23,1,'Crear OF Nro 4','2022-10-21','19:26:04',1,'ordfabcab'),(24,1,'Crear OF Nro 5','2022-10-21','19:26:04',1,'ordfabcab'),(25,1,'Crear OF Nro 6','2022-10-21','20:31:11',1,'ordfabcab'),(26,1,'Crear OF Nro 7','2022-10-21','20:34:57',1,'ordfabcab'),(27,1,'Crear OF Nro 8','2022-10-21','20:35:33',1,'ordfabcab'),(28,1,'Crear OF Nro 9','2022-10-21','20:47:06',1,'ordfabcab'),(29,1,'Crear OF Nro 10','2022-10-21','20:48:44',1,'ordfabcab'),(30,1,'Crear OF Nro 11','2022-10-21','20:50:57',1,'ordfabcab'),(31,1,'Crear OF Nro 12','2022-10-21','20:52:48',1,'ordfabcab'),(32,1,'Crear OF Nro 13','2022-10-21','20:53:43',1,'ordfabcab'),(33,1,'Crear OF Nro 14','2022-10-21','21:31:26',1,'ordfabcab'),(34,1,'Crear OF Nro 15','2022-10-21','21:38:57',1,'ordfabcab'),(35,1,'Crear OF Nro 16','2022-10-21','21:44:03',1,'ordfabcab'),(36,1,'Crear OF Nro 17','2022-10-22','08:52:59',1,'ordfabcab'),(37,3,'Modificar artículo MBLOGO1','2022-10-22','09:01:30',1,'articulos'),(38,3,'Modificar artículo FREZ1506N','2022-10-22','09:01:30',1,'articulos'),(39,3,'Modificar artículo VINIL','2022-10-22','09:01:30',1,'articulos'),(40,3,'Modificar artículo CUEMBN','2022-10-22','09:01:30',1,'articulos'),(41,3,'Modificar artículo FREZ1506P','2022-10-22','09:01:30',1,'articulos'),(42,3,'Modificar artículo CHAPMBHN','2022-10-22','09:01:30',1,'articulos'),(43,3,'Modificar artículo FREZ206P','2022-10-22','09:01:30',1,'articulos'),(44,3,'Modificar artículo PARK2505N','2022-10-22','09:01:30',1,'articulos'),(45,3,'Modificar artículo PARK205N','2022-10-22','09:01:30',1,'articulos'),(46,3,'Modificar artículo TARM1020','2022-10-22','09:01:30',1,'articulos'),(47,3,'Modificar artículo MANITMBN','2022-10-22','09:01:30',1,'articulos'),(48,3,'Modificar artículo ESQUIMBAHN','2022-10-22','09:01:30',1,'articulos'),(49,3,'Modificar artículo REGAMBHN','2022-10-22','09:01:30',1,'articulos'),(50,3,'Modificar artículo TOPFONP20-25x25','2022-10-22','09:01:30',1,'articulos'),(51,3,'Modificar artículo TOPFREP20-25x25','2022-10-22','09:01:30',1,'articulos'),(52,3,'Modificar artículo FTEP9520-25','2022-10-22','09:01:30',1,'articulos'),(53,3,'Modificar artículo FP9520-25','2022-10-22','09:01:30',1,'articulos'),(54,3,'Modificar artículo LPI3840-25','2022-10-22','09:01:30',1,'articulos'),(55,3,'Modificar artículo LPD3840-25','2022-10-22','09:01:30',1,'articulos'),(56,3,'Modificar artículo BP10038-25','2022-10-22','09:01:30',1,'articulos'),(57,3,'Modificar artículo TP10028-25','2022-10-22','09:01:30',1,'articulos'),(59,3,'Modificar artículo MBLOGO1','2022-10-22','09:19:26',1,'articulos'),(60,3,'Modificar artículo FREZ1506N','2022-10-22','09:19:26',1,'articulos'),(61,3,'Modificar artículo VINIL','2022-10-22','09:19:26',1,'articulos'),(62,3,'Modificar artículo CUEMBN','2022-10-22','09:19:26',1,'articulos'),(63,3,'Modificar artículo FREZ1506P','2022-10-22','09:19:26',1,'articulos'),(64,3,'Modificar artículo CHAPMBHN','2022-10-22','09:19:26',1,'articulos'),(65,3,'Modificar artículo FREZ206P','2022-10-22','09:19:26',1,'articulos'),(66,3,'Modificar artículo PARK2505N','2022-10-22','09:19:26',1,'articulos'),(67,3,'Modificar artículo PARK205N','2022-10-22','09:19:26',1,'articulos'),(68,3,'Modificar artículo TARM1020','2022-10-22','09:19:26',1,'articulos'),(69,3,'Modificar artículo MANITMBN','2022-10-22','09:19:26',1,'articulos'),(70,3,'Modificar artículo ESQUIMBAHN','2022-10-22','09:19:26',1,'articulos'),(71,3,'Modificar artículo REGAMBHN','2022-10-22','09:19:26',1,'articulos'),(72,3,'Modificar artículo TOPFONP20-25x25','2022-10-22','09:19:26',1,'articulos'),(73,3,'Modificar artículo TOPFREP20-25x25','2022-10-22','09:19:26',1,'articulos'),(74,3,'Modificar artículo FTEP9520-25','2022-10-22','09:19:26',1,'articulos'),(75,3,'Modificar artículo FP9520-25','2022-10-22','09:19:26',1,'articulos'),(76,3,'Modificar artículo LPI3840-25','2022-10-22','09:19:26',1,'articulos'),(77,3,'Modificar artículo LPD3840-25','2022-10-22','09:19:26',1,'articulos'),(78,3,'Modificar artículo BP10038-25','2022-10-22','09:19:26',1,'articulos'),(79,3,'Modificar artículo TP10028-25','2022-10-22','09:19:26',1,'articulos'),(80,3,'Modificar artículo MBLOGO1','2022-10-22','09:25:45',1,'articulos'),(81,1,'Crear OF Nro 18','2022-10-22','12:26:57',1,'ordfabcab'),(82,1,'Crear OF Nro 19','2022-10-22','12:28:12',1,'ordfabcab'),(83,1,'Crear OF Nro 20','2022-10-22','12:34:21',1,'ordfabcab'),(84,1,'Crear OF Nro 21','2022-10-22','12:36:06',1,'ordfabcab'),(85,3,'Modificar artículo BC10038-25','2022-10-22','12:42:16',1,'articulos'),(86,3,'Modificar artículo BICAZ1','2022-10-22','12:42:16',1,'articulos'),(87,3,'Modificar artículo BICNG1','2022-10-22','12:42:16',1,'articulos'),(88,3,'Modificar artículo BICRO1','2022-10-22','12:42:16',1,'articulos'),(89,3,'Modificar artículo BOGLOGO','2022-10-22','12:42:16',1,'articulos'),(90,3,'Modificar artículo BP10038-25','2022-10-22','12:42:16',1,'articulos'),(91,3,'Modificar artículo BP11038-25','2022-10-22','12:42:16',1,'articulos'),(92,3,'Modificar artículo BP12038-25','2022-10-22','12:42:16',1,'articulos'),(93,3,'Modificar artículo CHAPF-P1000','2022-10-22','12:42:16',1,'articulos'),(94,3,'Modificar artículo CHAPFDER-HR','2022-10-22','12:42:16',1,'articulos'),(95,3,'Modificar artículo CHAPMBHN','2022-10-22','12:42:16',1,'articulos'),(96,3,'Modificar artículo COLA_MADERA','2022-10-22','12:42:16',1,'articulos'),(97,3,'Modificar artículo CUAD-ESPIRAL-CUA-80','2022-10-22','12:42:16',1,'articulos'),(98,3,'Modificar artículo CUAD-ESPIRAL-RAY-80','2022-10-22','12:42:16',1,'articulos'),(99,3,'Modificar artículo CUEFDER-BK','2022-10-22','12:42:16',1,'articulos'),(100,3,'Modificar artículo CUEMBC','2022-10-22','12:42:16',1,'articulos'),(101,3,'Modificar artículo CUEMBCREAM','2022-10-22','12:42:16',1,'articulos'),(102,3,'Modificar artículo CUEMBN','2022-10-22','12:42:16',1,'articulos'),(103,3,'Modificar artículo CUEVIB SLO','2022-10-22','12:42:16',1,'articulos'),(104,3,'Modificar artículo ESQUIFDERA-BK','2022-10-22','12:42:16',1,'articulos'),(105,3,'Modificar artículo ESQUIMBAHN','2022-10-22','12:42:16',1,'articulos'),(106,3,'Modificar artículo FC9520-25','2022-10-22','12:42:16',1,'articulos'),(107,3,'Modificar artículo FDERLOGO1','2022-10-22','12:42:16',1,'articulos'),(108,3,'Modificar artículo FDERLOGO2','2022-10-22','12:42:16',1,'articulos'),(109,3,'Modificar artículo FDERLOGO3','2022-10-22','12:42:16',1,'articulos'),(110,3,'Modificar artículo FP10535-25','2022-10-22','12:42:16',1,'articulos'),(111,3,'Modificar artículo FP11525-25','2022-10-22','12:42:16',1,'articulos'),(112,3,'Modificar artículo FP1557225','2022-10-22','12:42:16',1,'articulos'),(113,3,'Modificar artículo FP9520-25','2022-10-22','12:42:16',1,'articulos'),(114,3,'Modificar artículo FREZ1506N','2022-10-22','12:42:16',1,'articulos'),(115,3,'Modificar artículo FREZ1506P','2022-10-22','12:42:16',1,'articulos'),(116,3,'Modificar artículo FREZ206P','2022-10-22','12:42:16',1,'articulos'),(117,3,'Modificar artículo FTEC9520-25','2022-10-22','12:42:16',1,'articulos'),(118,3,'Modificar artículo FTEP1210545-25','2022-10-22','12:42:16',1,'articulos'),(119,3,'Modificar artículo FTEP1211550-25','2022-10-22','12:42:16',1,'articulos'),(120,3,'Modificar artículo FTEP9520-25','2022-10-22','12:42:16',1,'articulos'),(121,3,'Modificar artículo HP12A ','2022-10-22','12:42:16',1,'articulos'),(122,3,'Modificar artículo HP78A ','2022-10-22','12:42:16',1,'articulos'),(123,3,'Modificar artículo LACA-MR-BR','2022-10-22','12:42:16',1,'articulos'),(124,3,'Modificar artículo LACA-MR-SM','2022-10-22','12:42:16',1,'articulos'),(125,3,'Modificar artículo LCD3840-25','2022-10-22','12:42:16',1,'articulos'),(126,3,'Modificar artículo LCI3840-25','2022-10-22','12:42:16',1,'articulos'),(127,3,'Modificar artículo LPD3840-25','2022-10-22','12:42:16',1,'articulos'),(128,3,'Modificar artículo LPD3855-25','2022-10-22','12:42:16',1,'articulos'),(129,3,'Modificar artículo LPI3840-25','2022-10-22','12:42:16',1,'articulos'),(130,3,'Modificar artículo LPI3855-25','2022-10-22','12:42:16',1,'articulos'),(131,3,'Modificar artículo MANITFDER-BK','2022-10-22','12:42:16',1,'articulos'),(132,3,'Modificar artículo MANITMBCN','2022-10-22','12:42:16',1,'articulos'),(133,3,'Modificar artículo MANITMBN','2022-10-22','12:42:16',1,'articulos'),(134,3,'Modificar artículo MARLOGO','2022-10-22','12:42:16',1,'articulos'),(135,3,'Modificar artículo MBLOGO1','2022-10-22','12:42:16',1,'articulos'),(136,3,'Modificar artículo MBLOGO2','2022-10-22','12:42:16',1,'articulos'),(137,3,'Modificar artículo PARK205N','2022-10-22','12:42:16',1,'articulos'),(138,3,'Modificar artículo PARK2505N','2022-10-22','12:42:16',1,'articulos'),(139,3,'Modificar artículo PEGA-CTO','2022-10-22','12:42:16',1,'articulos'),(140,3,'Modificar artículo PEGA-CTO_TR','2022-10-22','12:42:16',1,'articulos'),(141,3,'Modificar artículo PLASTICOLA 200GRS','2022-10-22','12:42:16',1,'articulos'),(142,3,'Modificar artículo REGAFDERSTD-BKN','2022-10-22','12:42:16',1,'articulos'),(143,3,'Modificar artículo REGAMBHN','2022-10-22','12:42:16',1,'articulos'),(144,3,'Modificar artículo REGUNV35','2022-10-22','12:42:16',1,'articulos'),(145,3,'Modificar artículo REGUNV40','2022-10-22','12:42:16',1,'articulos'),(146,3,'Modificar artículo RESMA-A4-75GR','2022-10-22','12:42:16',1,'articulos'),(147,3,'Modificar artículo RESMA-CARTA-80GR','2022-10-22','12:42:16',1,'articulos'),(148,3,'Modificar artículo RIVLOGO','2022-10-22','12:42:16',1,'articulos'),(149,3,'Modificar artículo RUED 45-AZUL','2022-10-22','12:42:16',1,'articulos'),(150,3,'Modificar artículo RUED 60-BK','2022-10-22','12:42:16',1,'articulos'),(151,3,'Modificar artículo SLOLOGO','2022-10-22','12:42:16',1,'articulos'),(152,3,'Modificar artículo TARM1020','2022-10-22','12:42:16',1,'articulos'),(153,3,'Modificar artículo TARM1030','2022-10-22','12:42:16',1,'articulos'),(154,3,'Modificar artículo TC10028-25','2022-10-22','12:42:16',1,'articulos'),(155,3,'Modificar artículo TELAFDER-BD','2022-10-22','12:42:16',1,'articulos'),(156,3,'Modificar artículo TOPFONC20-25x25','2022-10-22','12:42:16',1,'articulos'),(157,3,'Modificar artículo TOPFONP20-25x25','2022-10-22','12:42:16',1,'articulos'),(158,3,'Modificar artículo TOPFONP25-25x25','2022-10-22','12:42:16',1,'articulos'),(159,3,'Modificar artículo TOPFONP30-25x25','2022-10-22','12:42:16',1,'articulos'),(160,3,'Modificar artículo TOPFREC20-25x25','2022-10-22','12:42:16',1,'articulos'),(161,3,'Modificar artículo TOPFREP20-25x25','2022-10-22','12:42:16',1,'articulos'),(162,3,'Modificar artículo TOPFREP38-25x25','2022-10-22','12:42:16',1,'articulos'),(163,3,'Modificar artículo TOPFREP50-25x25','2022-10-22','12:42:16',1,'articulos'),(164,3,'Modificar artículo TP10028-25','2022-10-22','12:42:16',1,'articulos'),(165,3,'Modificar artículo TP11028-25','2022-10-22','12:42:16',1,'articulos'),(166,3,'Modificar artículo TP12038-25','2022-10-22','12:42:16',1,'articulos'),(167,3,'Modificar artículo VINIL','2022-10-22','12:42:16',1,'articulos'),(168,3,'Modificar artículo VINIL-ESP','2022-10-22','12:42:16',1,'articulos'),(169,3,'Modificar artículo VINIL-NG','2022-10-22','12:42:16',1,'articulos'),(170,1,'Crear OF Nro 22','2022-10-22','12:42:52',1,'ordfabcab'),(171,1,'Crear OF Nro 23','2022-10-22','12:45:30',1,'ordfabcab'),(172,1,'Crear OF Nro 24','2022-10-22','12:49:00',1,'ordfabcab'),(173,1,'Crear OF Nro 25','2022-10-22','12:54:50',1,'ordfabcab'),(174,1,'Crear OF Nro 26','2022-10-22','12:56:24',1,'ordfabcab'),(175,1,'Crear OF Nro 27','2022-10-22','12:57:14',1,'ordfabcab'),(176,1,'Crear OF Nro 28','2022-10-22','12:59:05',1,'ordfabcab'),(177,1,'Crear OF Nro 29','2022-10-22','13:00:44',1,'ordfabcab'),(178,1,'Crear OF Nro 30','2022-10-22','13:01:19',1,'ordfabcab'),(179,1,'Crear OF Nro 31','2022-10-22','13:01:43',1,'ordfabcab'),(181,1,'Crear OF Nro 32','2022-10-22','13:03:00',1,'ordfabcab'),(184,1,'Crear OF Nro 33','2022-10-22','13:05:28',1,'ordfabcab'),(185,1,'Crear OF Nro 34','2022-10-22','13:05:59',1,'ordfabcab'),(187,1,'Crear OF Nro 35','2022-10-22','13:08:20',1,'ordfabcab'),(190,1,'Crear OF Nro 36','2022-10-22','13:09:18',1,'ordfabcab'),(192,1,'Crear OF Nro 37','2022-10-22','13:10:35',1,'ordfabcab'),(194,1,'Crear OF Nro 38','2022-10-22','13:13:44',1,'ordfabcab'),(196,1,'Crear OF Nro 39','2022-10-22','13:14:10',1,'ordfabcab'),(199,1,'Crear OF Nro 40','2022-10-22','13:19:43',1,'ordfabcab'),(201,1,'Crear OF Nro 41','2022-11-05','09:35:22',2,'ordfabcab'),(202,1,'Crear OF Nro 42','2022-11-05','09:35:56',2,'ordfabcab'),(203,1,'Crear OF Nro 43','2022-11-05','09:39:04',2,'ordfabcab'),(204,1,'Crear OF Nro 44','2022-11-05','09:46:00',1,'ordfabcab'),(205,1,'Crear OF Nro 45','2022-11-05','09:48:17',1,'ordfabcab'),(206,1,'Crear OF Nro 46','2022-11-05','09:55:04',2,'ordfabcab'),(207,1,'Crear OF Nro 47','2022-11-05','09:57:08',1,'ordfabcab'),(208,1,'Crear OF Nro 48','2022-11-05','09:58:43',2,'ordfabcab'),(209,1,'Crear OF Nro 49','2022-11-05','10:03:00',2,'ordfabcab'),(210,1,'Crear OF Nro 50','2022-11-05','10:03:42',1,'ordfabcab'),(211,1,'Crear OF Nro 51','2022-11-05','10:05:11',1,'ordfabcab'),(212,1,'Crear OF Nro 52','2022-11-05','10:06:22',2,'ordfabcab'),(213,1,'Crear OF Nro 53','2022-11-05','10:07:44',2,'ordfabcab'),(215,1,'Crear OF Nro 54','2022-11-05','10:08:48',1,'ordfabcab'),(237,1,'Crear OF Nro 55','2022-11-05','10:11:00',1,'ordfabcab'),(238,3,'Modificar artículo MBLOGO1','2022-11-05','10:11:04',1,'articulos'),(239,3,'Modificar artículo FREZ1506N','2022-11-05','10:11:04',1,'articulos'),(240,3,'Modificar artículo VINIL','2022-11-05','10:11:04',1,'articulos'),(241,3,'Modificar artículo CUEMBN','2022-11-05','10:11:04',1,'articulos'),(242,3,'Modificar artículo FREZ1506P','2022-11-05','10:11:04',1,'articulos'),(243,3,'Modificar artículo CHAPMBHN','2022-11-05','10:11:04',1,'articulos'),(244,3,'Modificar artículo FREZ206P','2022-11-05','10:11:04',1,'articulos'),(245,3,'Modificar artículo PARK2505N','2022-11-05','10:11:04',1,'articulos'),(246,3,'Modificar artículo PARK205N','2022-11-05','10:11:04',1,'articulos'),(247,3,'Modificar artículo TARM1020','2022-11-05','10:11:04',1,'articulos'),(248,3,'Modificar artículo MANITMBN','2022-11-05','10:11:04',1,'articulos'),(249,3,'Modificar artículo ESQUIMBAHN','2022-11-05','10:11:04',1,'articulos'),(250,3,'Modificar artículo REGAMBHN','2022-11-05','10:11:04',1,'articulos'),(251,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','10:11:04',1,'articulos'),(252,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','10:11:04',1,'articulos'),(253,3,'Modificar artículo FTEP9520-25','2022-11-05','10:11:04',1,'articulos'),(254,3,'Modificar artículo FP9520-25','2022-11-05','10:11:04',1,'articulos'),(255,3,'Modificar artículo LPI3840-25','2022-11-05','10:11:04',1,'articulos'),(256,3,'Modificar artículo LPD3840-25','2022-11-05','10:11:04',1,'articulos'),(257,3,'Modificar artículo BP10038-25','2022-11-05','10:11:04',1,'articulos'),(258,3,'Modificar artículo TP10028-25','2022-11-05','10:11:04',1,'articulos'),(259,1,'Crear OF Nro 56','2022-11-05','10:12:05',2,'ordfabcab'),(260,1,'Crear OF Nro 57','2022-11-05','10:13:36',1,'ordfabcab'),(261,3,'Modificar artículo BC10038-25','2022-11-05','10:16:26',1,'articulos'),(262,3,'Modificar artículo BICAZ1','2022-11-05','10:16:26',1,'articulos'),(263,3,'Modificar artículo BICNG1','2022-11-05','10:16:26',1,'articulos'),(264,3,'Modificar artículo BICRO1','2022-11-05','10:16:26',1,'articulos'),(265,3,'Modificar artículo BOGLOGO','2022-11-05','10:16:26',1,'articulos'),(266,3,'Modificar artículo BP10038-25','2022-11-05','10:16:26',1,'articulos'),(267,3,'Modificar artículo BP11038-25','2022-11-05','10:16:26',1,'articulos'),(268,3,'Modificar artículo BP12038-25','2022-11-05','10:16:26',1,'articulos'),(269,3,'Modificar artículo CHAPF-P1000','2022-11-05','10:16:26',1,'articulos'),(270,3,'Modificar artículo CHAPFDER-HR','2022-11-05','10:16:26',1,'articulos'),(271,3,'Modificar artículo CHAPMBHN','2022-11-05','10:16:26',1,'articulos'),(272,3,'Modificar artículo COLA_MADERA','2022-11-05','10:16:26',1,'articulos'),(273,3,'Modificar artículo CUAD-ESPIRAL-CUA-80','2022-11-05','10:16:26',1,'articulos'),(274,3,'Modificar artículo CUAD-ESPIRAL-RAY-80','2022-11-05','10:16:26',1,'articulos'),(275,3,'Modificar artículo CUEFDER-BK','2022-11-05','10:16:26',1,'articulos'),(276,3,'Modificar artículo CUEMBC','2022-11-05','10:16:26',1,'articulos'),(277,3,'Modificar artículo CUEMBCREAM','2022-11-05','10:16:26',1,'articulos'),(278,3,'Modificar artículo CUEMBN','2022-11-05','10:16:26',1,'articulos'),(279,3,'Modificar artículo CUEVIB SLO','2022-11-05','10:16:26',1,'articulos'),(280,3,'Modificar artículo ESQUIFDERA-BK','2022-11-05','10:16:26',1,'articulos'),(281,3,'Modificar artículo ESQUIMBAHN','2022-11-05','10:16:26',1,'articulos'),(282,3,'Modificar artículo FC9520-25','2022-11-05','10:16:26',1,'articulos'),(283,3,'Modificar artículo FDERLOGO1','2022-11-05','10:16:26',1,'articulos'),(284,3,'Modificar artículo FDERLOGO2','2022-11-05','10:16:26',1,'articulos'),(285,3,'Modificar artículo FDERLOGO3','2022-11-05','10:16:26',1,'articulos'),(286,3,'Modificar artículo FP10535-25','2022-11-05','10:16:26',1,'articulos'),(287,3,'Modificar artículo FP11525-25','2022-11-05','10:16:26',1,'articulos'),(288,3,'Modificar artículo FP1557225','2022-11-05','10:16:26',1,'articulos'),(289,3,'Modificar artículo FP9520-25','2022-11-05','10:16:26',1,'articulos'),(290,3,'Modificar artículo FREZ1506N','2022-11-05','10:16:26',1,'articulos'),(291,3,'Modificar artículo FREZ1506P','2022-11-05','10:16:26',1,'articulos'),(292,3,'Modificar artículo FREZ206P','2022-11-05','10:16:26',1,'articulos'),(293,3,'Modificar artículo FTEC9520-25','2022-11-05','10:16:26',1,'articulos'),(294,3,'Modificar artículo FTEP1210545-25','2022-11-05','10:16:26',1,'articulos'),(295,3,'Modificar artículo FTEP1211550-25','2022-11-05','10:16:26',1,'articulos'),(296,3,'Modificar artículo FTEP9520-25','2022-11-05','10:16:26',1,'articulos'),(297,3,'Modificar artículo HP12A ','2022-11-05','10:16:26',1,'articulos'),(298,3,'Modificar artículo HP78A ','2022-11-05','10:16:26',1,'articulos'),(299,3,'Modificar artículo LACA-MR-BR','2022-11-05','10:16:26',1,'articulos'),(300,3,'Modificar artículo LACA-MR-SM','2022-11-05','10:16:26',1,'articulos'),(301,3,'Modificar artículo LCD3840-25','2022-11-05','10:16:26',1,'articulos'),(302,3,'Modificar artículo LCI3840-25','2022-11-05','10:16:26',1,'articulos'),(303,3,'Modificar artículo LPD3840-25','2022-11-05','10:16:26',1,'articulos'),(304,3,'Modificar artículo LPD3855-25','2022-11-05','10:16:26',1,'articulos'),(305,3,'Modificar artículo LPI3840-25','2022-11-05','10:16:26',1,'articulos'),(306,3,'Modificar artículo LPI3855-25','2022-11-05','10:16:26',1,'articulos'),(307,3,'Modificar artículo MANITFDER-BK','2022-11-05','10:16:26',1,'articulos'),(308,3,'Modificar artículo MANITMBCN','2022-11-05','10:16:26',1,'articulos'),(309,3,'Modificar artículo MANITMBN','2022-11-05','10:16:26',1,'articulos'),(310,3,'Modificar artículo MARLOGO','2022-11-05','10:16:26',1,'articulos'),(311,3,'Modificar artículo MBLOGO1','2022-11-05','10:16:26',1,'articulos'),(312,3,'Modificar artículo MBLOGO2','2022-11-05','10:16:26',1,'articulos'),(313,3,'Modificar artículo PARK205N','2022-11-05','10:16:26',1,'articulos'),(314,3,'Modificar artículo PARK2505N','2022-11-05','10:16:26',1,'articulos'),(315,3,'Modificar artículo PEGA-CTO','2022-11-05','10:16:26',1,'articulos'),(316,3,'Modificar artículo PEGA-CTO_TR','2022-11-05','10:16:26',1,'articulos'),(317,3,'Modificar artículo PLASTICOLA 200GRS','2022-11-05','10:16:26',1,'articulos'),(318,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','10:16:26',1,'articulos'),(319,3,'Modificar artículo REGAMBHN','2022-11-05','10:16:26',1,'articulos'),(320,3,'Modificar artículo REGUNV35','2022-11-05','10:16:26',1,'articulos'),(321,3,'Modificar artículo REGUNV40','2022-11-05','10:16:26',1,'articulos'),(322,3,'Modificar artículo RESMA-A4-75GR','2022-11-05','10:16:26',1,'articulos'),(323,3,'Modificar artículo RESMA-CARTA-80GR','2022-11-05','10:16:26',1,'articulos'),(324,3,'Modificar artículo RIVLOGO','2022-11-05','10:16:26',1,'articulos'),(325,3,'Modificar artículo RUED 45-AZUL','2022-11-05','10:16:26',1,'articulos'),(326,3,'Modificar artículo RUED 60-BK','2022-11-05','10:16:26',1,'articulos'),(327,3,'Modificar artículo SLOLOGO','2022-11-05','10:16:26',1,'articulos'),(328,3,'Modificar artículo TARM1020','2022-11-05','10:16:26',1,'articulos'),(329,3,'Modificar artículo TARM1030','2022-11-05','10:16:26',1,'articulos'),(330,3,'Modificar artículo TC10028-25','2022-11-05','10:16:26',1,'articulos'),(331,3,'Modificar artículo TELAFDER-BD','2022-11-05','10:16:26',1,'articulos'),(332,3,'Modificar artículo TOPFONC20-25x25','2022-11-05','10:16:26',1,'articulos'),(333,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','10:16:26',1,'articulos'),(334,3,'Modificar artículo TOPFONP25-25x25','2022-11-05','10:16:26',1,'articulos'),(335,3,'Modificar artículo TOPFONP30-25x25','2022-11-05','10:16:26',1,'articulos'),(336,3,'Modificar artículo TOPFREC20-25x25','2022-11-05','10:16:26',1,'articulos'),(337,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','10:16:26',1,'articulos'),(338,3,'Modificar artículo TOPFREP38-25x25','2022-11-05','10:16:26',1,'articulos'),(339,3,'Modificar artículo TOPFREP50-25x25','2022-11-05','10:16:26',1,'articulos'),(340,3,'Modificar artículo TP10028-25','2022-11-05','10:16:26',1,'articulos'),(341,3,'Modificar artículo TP11028-25','2022-11-05','10:16:26',1,'articulos'),(342,3,'Modificar artículo TP12038-25','2022-11-05','10:16:26',1,'articulos'),(343,3,'Modificar artículo VINIL','2022-11-05','10:16:26',1,'articulos'),(344,3,'Modificar artículo VINIL-ESP','2022-11-05','10:16:26',1,'articulos'),(345,3,'Modificar artículo VINIL-NG','2022-11-05','10:16:26',1,'articulos'),(346,1,'Crear OF Nro 58','2022-11-05','10:16:41',1,'ordfabcab'),(347,3,'Modificar artículo MBLOGO1','2022-11-05','10:16:59',1,'articulos'),(348,3,'Modificar artículo FREZ1506N','2022-11-05','10:16:59',1,'articulos'),(349,3,'Modificar artículo VINIL','2022-11-05','10:16:59',1,'articulos'),(350,3,'Modificar artículo CUEMBN','2022-11-05','10:16:59',1,'articulos'),(351,3,'Modificar artículo FREZ1506P','2022-11-05','10:16:59',1,'articulos'),(352,3,'Modificar artículo CHAPMBHN','2022-11-05','10:16:59',1,'articulos'),(353,3,'Modificar artículo FREZ206P','2022-11-05','10:16:59',1,'articulos'),(354,3,'Modificar artículo PARK2505N','2022-11-05','10:16:59',1,'articulos'),(355,3,'Modificar artículo PARK205N','2022-11-05','10:16:59',1,'articulos'),(356,3,'Modificar artículo TARM1020','2022-11-05','10:16:59',1,'articulos'),(357,3,'Modificar artículo MANITMBN','2022-11-05','10:16:59',1,'articulos'),(358,3,'Modificar artículo ESQUIMBAHN','2022-11-05','10:16:59',1,'articulos'),(359,3,'Modificar artículo REGAMBHN','2022-11-05','10:16:59',1,'articulos'),(360,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','10:16:59',1,'articulos'),(361,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','10:16:59',1,'articulos'),(362,3,'Modificar artículo FTEP9520-25','2022-11-05','10:16:59',1,'articulos'),(363,3,'Modificar artículo FP9520-25','2022-11-05','10:16:59',1,'articulos'),(364,3,'Modificar artículo LPI3840-25','2022-11-05','10:16:59',1,'articulos'),(365,3,'Modificar artículo LPD3840-25','2022-11-05','10:16:59',1,'articulos'),(366,3,'Modificar artículo BP10038-25','2022-11-05','10:16:59',1,'articulos'),(367,3,'Modificar artículo TP10028-25','2022-11-05','10:16:59',1,'articulos'),(368,3,'Modificar artículo FDERLOGO1','2022-11-05','10:17:16',1,'articulos'),(369,3,'Modificar artículo FREZ1506N','2022-11-05','10:17:16',1,'articulos'),(370,3,'Modificar artículo VINIL','2022-11-05','10:17:16',1,'articulos'),(371,3,'Modificar artículo TELAFDER-BD','2022-11-05','10:17:16',1,'articulos'),(372,3,'Modificar artículo FREZ1506P','2022-11-05','10:17:16',1,'articulos'),(373,3,'Modificar artículo FREZ206P','2022-11-05','10:17:16',1,'articulos'),(374,3,'Modificar artículo PARK2505N','2022-11-05','10:17:16',1,'articulos'),(375,3,'Modificar artículo PARK205N','2022-11-05','10:17:16',1,'articulos'),(376,3,'Modificar artículo TARM1020','2022-11-05','10:17:16',1,'articulos'),(377,3,'Modificar artículo MANITFDER-BK','2022-11-05','10:17:16',1,'articulos'),(378,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','10:17:16',1,'articulos'),(379,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','10:17:16',1,'articulos'),(380,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','10:17:16',1,'articulos'),(381,3,'Modificar artículo FTEP9520-25','2022-11-05','10:17:16',1,'articulos'),(382,3,'Modificar artículo FP9520-25','2022-11-05','10:17:16',1,'articulos'),(383,3,'Modificar artículo LPI3840-25','2022-11-05','10:17:16',1,'articulos'),(384,3,'Modificar artículo LPD3840-25','2022-11-05','10:17:16',1,'articulos'),(385,3,'Modificar artículo BP10038-25','2022-11-05','10:17:16',1,'articulos'),(386,3,'Modificar artículo TP10028-25','2022-11-05','10:17:16',1,'articulos'),(387,1,'Crear OF Nro 59','2022-11-05','10:19:48',2,'ordfabcab'),(388,3,'Modificar artículo FDERLOGO2','2022-11-05','10:19:57',1,'articulos'),(389,3,'Modificar artículo FREZ1506N','2022-11-05','10:19:57',1,'articulos'),(390,3,'Modificar artículo VINIL','2022-11-05','10:19:57',1,'articulos'),(391,3,'Modificar artículo CUEFDER-BK','2022-11-05','10:19:57',1,'articulos'),(392,3,'Modificar artículo FREZ1506P','2022-11-05','10:19:57',1,'articulos'),(393,3,'Modificar artículo CHAPFDER-HR','2022-11-05','10:19:57',1,'articulos'),(394,3,'Modificar artículo FREZ206P','2022-11-05','10:19:57',1,'articulos'),(395,3,'Modificar artículo PARK2505N','2022-11-05','10:19:57',1,'articulos'),(396,3,'Modificar artículo PARK205N','2022-11-05','10:19:57',1,'articulos'),(397,3,'Modificar artículo TARM1020','2022-11-05','10:19:57',1,'articulos'),(398,3,'Modificar artículo MANITFDER-BK','2022-11-05','10:19:57',1,'articulos'),(399,3,'Modificar artículo ESQUIFDERA-BK','2022-11-05','10:19:57',1,'articulos'),(400,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','10:19:57',1,'articulos'),(401,3,'Modificar artículo TOPFONC20-25x25','2022-11-05','10:19:57',1,'articulos'),(402,3,'Modificar artículo TOPFREC20-25x25','2022-11-05','10:19:57',1,'articulos'),(403,3,'Modificar artículo FTEC9520-25','2022-11-05','10:19:57',1,'articulos'),(404,3,'Modificar artículo FC9520-25','2022-11-05','10:19:57',1,'articulos'),(405,3,'Modificar artículo LCI3840-25','2022-11-05','10:19:57',1,'articulos'),(406,3,'Modificar artículo LCD3840-25','2022-11-05','10:19:57',1,'articulos'),(407,3,'Modificar artículo BC10038-25','2022-11-05','10:19:57',1,'articulos'),(408,3,'Modificar artículo TC10028-25','2022-11-05','10:19:57',1,'articulos'),(409,1,'Crear OF Nro 60','2022-11-05','10:22:20',2,'ordfabcab'),(410,3,'Modificar artículo MBLOGO2','2022-11-05','10:22:25',1,'articulos'),(411,3,'Modificar artículo FP1557225','2022-11-05','10:22:25',1,'articulos'),(412,3,'Modificar artículo FREZ1506N','2022-11-05','10:22:25',1,'articulos'),(413,3,'Modificar artículo VINIL','2022-11-05','10:22:25',1,'articulos'),(414,3,'Modificar artículo CUEMBCREAM','2022-11-05','10:22:25',1,'articulos'),(415,3,'Modificar artículo FREZ1506P','2022-11-05','10:22:25',1,'articulos'),(416,3,'Modificar artículo CHAPMBHN','2022-11-05','10:22:25',1,'articulos'),(417,3,'Modificar artículo FREZ206P','2022-11-05','10:22:25',1,'articulos'),(418,3,'Modificar artículo PARK2505N','2022-11-05','10:22:25',1,'articulos'),(419,3,'Modificar artículo PARK205N','2022-11-05','10:22:25',1,'articulos'),(420,3,'Modificar artículo TARM1020','2022-11-05','10:22:25',1,'articulos'),(421,3,'Modificar artículo MANITMBCN','2022-11-05','10:22:25',1,'articulos'),(422,3,'Modificar artículo ESQUIMBAHN','2022-11-05','10:22:25',1,'articulos'),(423,3,'Modificar artículo REGAMBHN','2022-11-05','10:22:25',1,'articulos'),(424,3,'Modificar artículo FTEP1211550-25','2022-11-05','10:22:25',1,'articulos'),(425,3,'Modificar artículo TOPFREP50-25x25','2022-11-05','10:22:25',1,'articulos'),(426,3,'Modificar artículo TOPFONP25-25x25','2022-11-05','10:22:25',1,'articulos'),(427,3,'Modificar artículo FP11525-25','2022-11-05','10:22:25',1,'articulos'),(428,3,'Modificar artículo LPI3855-25','2022-11-05','10:22:25',1,'articulos'),(429,3,'Modificar artículo LPD3855-25','2022-11-05','10:22:25',1,'articulos'),(430,3,'Modificar artículo BP12038-25','2022-11-05','10:22:25',1,'articulos'),(431,3,'Modificar artículo TP12038-25','2022-11-05','10:22:25',1,'articulos'),(432,1,'Crear OF Nro 61','2022-11-05','10:23:53',2,'ordfabcab'),(433,3,'Modificar artículo MBLOGO1','2022-11-05','10:23:55',1,'articulos'),(434,3,'Modificar artículo FREZ1506N','2022-11-05','10:23:55',1,'articulos'),(435,3,'Modificar artículo VINIL','2022-11-05','10:23:55',1,'articulos'),(436,3,'Modificar artículo CUEMBN','2022-11-05','10:23:55',1,'articulos'),(437,3,'Modificar artículo FREZ1506P','2022-11-05','10:23:55',1,'articulos'),(438,3,'Modificar artículo CHAPMBHN','2022-11-05','10:23:55',1,'articulos'),(439,3,'Modificar artículo FREZ206P','2022-11-05','10:23:55',1,'articulos'),(440,3,'Modificar artículo PARK2505N','2022-11-05','10:23:55',1,'articulos'),(441,3,'Modificar artículo PARK205N','2022-11-05','10:23:55',1,'articulos'),(442,3,'Modificar artículo TARM1020','2022-11-05','10:23:55',1,'articulos'),(443,3,'Modificar artículo MANITMBN','2022-11-05','10:23:55',1,'articulos'),(444,3,'Modificar artículo ESQUIMBAHN','2022-11-05','10:23:55',1,'articulos'),(445,3,'Modificar artículo REGAMBHN','2022-11-05','10:23:55',1,'articulos'),(446,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','10:23:55',1,'articulos'),(447,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','10:23:55',1,'articulos'),(448,3,'Modificar artículo FTEP9520-25','2022-11-05','10:23:55',1,'articulos'),(449,3,'Modificar artículo FP9520-25','2022-11-05','10:23:55',1,'articulos'),(450,3,'Modificar artículo LPI3840-25','2022-11-05','10:23:55',1,'articulos'),(451,3,'Modificar artículo LPD3840-25','2022-11-05','10:23:55',1,'articulos'),(452,3,'Modificar artículo BP10038-25','2022-11-05','10:23:55',1,'articulos'),(453,3,'Modificar artículo TP10028-25','2022-11-05','10:23:55',1,'articulos'),(454,1,'Crear OF Nro 62','2022-11-05','10:25:38',2,'ordfabcab'),(455,3,'Modificar artículo MBLOGO1','2022-11-05','10:25:41',1,'articulos'),(456,3,'Modificar artículo FREZ1506N','2022-11-05','10:25:41',1,'articulos'),(457,3,'Modificar artículo VINIL','2022-11-05','10:25:41',1,'articulos'),(458,3,'Modificar artículo CUEMBN','2022-11-05','10:25:41',1,'articulos'),(459,3,'Modificar artículo FREZ1506P','2022-11-05','10:25:41',1,'articulos'),(460,3,'Modificar artículo CHAPMBHN','2022-11-05','10:25:41',1,'articulos'),(461,3,'Modificar artículo FREZ206P','2022-11-05','10:25:41',1,'articulos'),(462,3,'Modificar artículo PARK2505N','2022-11-05','10:25:41',1,'articulos'),(463,3,'Modificar artículo PARK205N','2022-11-05','10:25:41',1,'articulos'),(464,3,'Modificar artículo TARM1020','2022-11-05','10:25:41',1,'articulos'),(465,3,'Modificar artículo MANITMBN','2022-11-05','10:25:41',1,'articulos'),(466,3,'Modificar artículo ESQUIMBAHN','2022-11-05','10:25:41',1,'articulos'),(467,3,'Modificar artículo REGAMBHN','2022-11-05','10:25:41',1,'articulos'),(468,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','10:25:41',1,'articulos'),(469,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','10:25:41',1,'articulos'),(470,3,'Modificar artículo FTEP9520-25','2022-11-05','10:25:41',1,'articulos'),(471,3,'Modificar artículo FP9520-25','2022-11-05','10:25:41',1,'articulos'),(472,3,'Modificar artículo LPI3840-25','2022-11-05','10:25:41',1,'articulos'),(473,3,'Modificar artículo LPD3840-25','2022-11-05','10:25:41',1,'articulos'),(474,3,'Modificar artículo BP10038-25','2022-11-05','10:25:41',1,'articulos'),(475,3,'Modificar artículo TP10028-25','2022-11-05','10:25:41',1,'articulos'),(476,1,'Crear OF Nro 63','2022-11-05','10:27:46',1,'ordfabcab'),(477,3,'Modificar artículo MBLOGO1','2022-11-05','10:27:48',1,'articulos'),(478,3,'Modificar artículo FREZ1506N','2022-11-05','10:27:48',1,'articulos'),(479,3,'Modificar artículo VINIL','2022-11-05','10:27:48',1,'articulos'),(480,3,'Modificar artículo CUEMBN','2022-11-05','10:27:48',1,'articulos'),(481,3,'Modificar artículo FREZ1506P','2022-11-05','10:27:48',1,'articulos'),(482,3,'Modificar artículo CHAPMBHN','2022-11-05','10:27:48',1,'articulos'),(483,3,'Modificar artículo FREZ206P','2022-11-05','10:27:48',1,'articulos'),(484,3,'Modificar artículo PARK2505N','2022-11-05','10:27:48',1,'articulos'),(485,3,'Modificar artículo PARK205N','2022-11-05','10:27:48',1,'articulos'),(486,3,'Modificar artículo TARM1020','2022-11-05','10:27:48',1,'articulos'),(487,3,'Modificar artículo MANITMBN','2022-11-05','10:27:48',1,'articulos'),(488,3,'Modificar artículo ESQUIMBAHN','2022-11-05','10:27:48',1,'articulos'),(489,3,'Modificar artículo REGAMBHN','2022-11-05','10:27:48',1,'articulos'),(490,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','10:27:48',1,'articulos'),(491,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','10:27:48',1,'articulos'),(492,3,'Modificar artículo FTEP9520-25','2022-11-05','10:27:48',1,'articulos'),(493,3,'Modificar artículo FP9520-25','2022-11-05','10:27:48',1,'articulos'),(494,3,'Modificar artículo LPI3840-25','2022-11-05','10:27:48',1,'articulos'),(495,3,'Modificar artículo LPD3840-25','2022-11-05','10:27:48',1,'articulos'),(496,3,'Modificar artículo BP10038-25','2022-11-05','10:27:48',1,'articulos'),(497,3,'Modificar artículo TP10028-25','2022-11-05','10:27:48',1,'articulos'),(498,1,'Crear OF Nro 64','2022-11-05','10:28:49',1,'ordfabcab'),(499,3,'Modificar artículo MBLOGO1','2022-11-05','10:28:52',1,'articulos'),(500,3,'Modificar artículo FREZ1506N','2022-11-05','10:28:52',1,'articulos'),(501,3,'Modificar artículo VINIL','2022-11-05','10:28:52',1,'articulos'),(502,3,'Modificar artículo CUEMBN','2022-11-05','10:28:52',1,'articulos'),(503,3,'Modificar artículo FREZ1506P','2022-11-05','10:28:52',1,'articulos'),(504,3,'Modificar artículo CHAPMBHN','2022-11-05','10:28:52',1,'articulos'),(505,3,'Modificar artículo FREZ206P','2022-11-05','10:28:52',1,'articulos'),(506,3,'Modificar artículo PARK2505N','2022-11-05','10:28:52',1,'articulos'),(507,3,'Modificar artículo PARK205N','2022-11-05','10:28:52',1,'articulos'),(508,3,'Modificar artículo TARM1020','2022-11-05','10:28:52',1,'articulos'),(509,3,'Modificar artículo MANITMBN','2022-11-05','10:28:52',1,'articulos'),(510,3,'Modificar artículo ESQUIMBAHN','2022-11-05','10:28:52',1,'articulos'),(511,3,'Modificar artículo REGAMBHN','2022-11-05','10:28:52',1,'articulos'),(512,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','10:28:52',1,'articulos'),(513,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','10:28:52',1,'articulos'),(514,3,'Modificar artículo FTEP9520-25','2022-11-05','10:28:52',1,'articulos'),(515,3,'Modificar artículo FP9520-25','2022-11-05','10:28:52',1,'articulos'),(516,3,'Modificar artículo LPI3840-25','2022-11-05','10:28:52',1,'articulos'),(517,3,'Modificar artículo LPD3840-25','2022-11-05','10:28:52',1,'articulos'),(518,3,'Modificar artículo BP10038-25','2022-11-05','10:28:52',1,'articulos'),(519,3,'Modificar artículo TP10028-25','2022-11-05','10:28:52',1,'articulos'),(520,1,'Crear OF Nro 65','2022-11-05','10:29:08',2,'ordfabcab'),(521,3,'Modificar artículo MBLOGO2','2022-11-05','10:29:12',1,'articulos'),(522,3,'Modificar artículo FP1557225','2022-11-05','10:29:12',1,'articulos'),(523,3,'Modificar artículo FREZ1506N','2022-11-05','10:29:12',1,'articulos'),(524,3,'Modificar artículo VINIL','2022-11-05','10:29:12',1,'articulos'),(525,3,'Modificar artículo CUEMBCREAM','2022-11-05','10:29:12',1,'articulos'),(526,3,'Modificar artículo FREZ1506P','2022-11-05','10:29:12',1,'articulos'),(527,3,'Modificar artículo CHAPMBHN','2022-11-05','10:29:12',1,'articulos'),(528,3,'Modificar artículo FREZ206P','2022-11-05','10:29:12',1,'articulos'),(529,3,'Modificar artículo PARK2505N','2022-11-05','10:29:12',1,'articulos'),(530,3,'Modificar artículo PARK205N','2022-11-05','10:29:12',1,'articulos'),(531,3,'Modificar artículo TARM1020','2022-11-05','10:29:12',1,'articulos'),(532,3,'Modificar artículo MANITMBCN','2022-11-05','10:29:12',1,'articulos'),(533,3,'Modificar artículo ESQUIMBAHN','2022-11-05','10:29:12',1,'articulos'),(534,3,'Modificar artículo REGAMBHN','2022-11-05','10:29:12',1,'articulos'),(535,3,'Modificar artículo FTEP1211550-25','2022-11-05','10:29:12',1,'articulos'),(536,3,'Modificar artículo TOPFREP50-25x25','2022-11-05','10:29:12',1,'articulos'),(537,3,'Modificar artículo TOPFONP25-25x25','2022-11-05','10:29:12',1,'articulos'),(538,3,'Modificar artículo FP11525-25','2022-11-05','10:29:12',1,'articulos'),(539,3,'Modificar artículo LPI3855-25','2022-11-05','10:29:12',1,'articulos'),(540,3,'Modificar artículo LPD3855-25','2022-11-05','10:29:12',1,'articulos'),(541,3,'Modificar artículo BP12038-25','2022-11-05','10:29:12',1,'articulos'),(542,3,'Modificar artículo TP12038-25','2022-11-05','10:29:12',1,'articulos'),(543,1,'Crear OF Nro 66','2022-11-05','10:32:16',2,'ordfabcab'),(544,3,'Modificar artículo FDERLOGO2','2022-11-05','10:32:21',1,'articulos'),(545,3,'Modificar artículo FREZ1506N','2022-11-05','10:32:21',1,'articulos'),(546,3,'Modificar artículo VINIL','2022-11-05','10:32:21',1,'articulos'),(547,3,'Modificar artículo CUEFDER-BK','2022-11-05','10:32:21',1,'articulos'),(548,3,'Modificar artículo FREZ1506P','2022-11-05','10:32:21',1,'articulos'),(549,3,'Modificar artículo CHAPFDER-HR','2022-11-05','10:32:21',1,'articulos'),(550,3,'Modificar artículo FREZ206P','2022-11-05','10:32:21',1,'articulos'),(551,3,'Modificar artículo PARK2505N','2022-11-05','10:32:21',1,'articulos'),(552,3,'Modificar artículo PARK205N','2022-11-05','10:32:21',1,'articulos'),(553,3,'Modificar artículo TARM1020','2022-11-05','10:32:21',1,'articulos'),(554,3,'Modificar artículo MANITFDER-BK','2022-11-05','10:32:21',1,'articulos'),(555,3,'Modificar artículo ESQUIFDERA-BK','2022-11-05','10:32:21',1,'articulos'),(556,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','10:32:21',1,'articulos'),(557,3,'Modificar artículo TOPFONC20-25x25','2022-11-05','10:32:21',1,'articulos'),(558,3,'Modificar artículo TOPFREC20-25x25','2022-11-05','10:32:21',1,'articulos'),(559,3,'Modificar artículo FTEC9520-25','2022-11-05','10:32:21',1,'articulos'),(560,3,'Modificar artículo FC9520-25','2022-11-05','10:32:21',1,'articulos'),(561,3,'Modificar artículo LCI3840-25','2022-11-05','10:32:21',1,'articulos'),(562,3,'Modificar artículo LCD3840-25','2022-11-05','10:32:21',1,'articulos'),(563,3,'Modificar artículo BC10038-25','2022-11-05','10:32:21',1,'articulos'),(564,3,'Modificar artículo TC10028-25','2022-11-05','10:32:21',1,'articulos'),(565,1,'Crear OF Nro 67','2022-11-05','10:33:43',1,'ordfabcab'),(566,3,'Modificar artículo MBLOGO2','2022-11-05','10:33:46',1,'articulos'),(567,3,'Modificar artículo FP1557225','2022-11-05','10:33:46',1,'articulos'),(568,3,'Modificar artículo FREZ1506N','2022-11-05','10:33:46',1,'articulos'),(569,3,'Modificar artículo VINIL','2022-11-05','10:33:46',1,'articulos'),(570,3,'Modificar artículo CUEMBCREAM','2022-11-05','10:33:46',1,'articulos'),(571,3,'Modificar artículo FREZ1506P','2022-11-05','10:33:46',1,'articulos'),(572,3,'Modificar artículo CHAPMBHN','2022-11-05','10:33:46',1,'articulos'),(573,3,'Modificar artículo FREZ206P','2022-11-05','10:33:46',1,'articulos'),(574,3,'Modificar artículo PARK2505N','2022-11-05','10:33:46',1,'articulos'),(575,3,'Modificar artículo PARK205N','2022-11-05','10:33:46',1,'articulos'),(576,3,'Modificar artículo TARM1020','2022-11-05','10:33:46',1,'articulos'),(577,3,'Modificar artículo MANITMBCN','2022-11-05','10:33:46',1,'articulos'),(578,3,'Modificar artículo ESQUIMBAHN','2022-11-05','10:33:46',1,'articulos'),(579,3,'Modificar artículo REGAMBHN','2022-11-05','10:33:46',1,'articulos'),(580,3,'Modificar artículo FTEP1211550-25','2022-11-05','10:33:46',1,'articulos'),(581,3,'Modificar artículo TOPFREP50-25x25','2022-11-05','10:33:46',1,'articulos'),(582,3,'Modificar artículo TOPFONP25-25x25','2022-11-05','10:33:46',1,'articulos'),(583,3,'Modificar artículo FP11525-25','2022-11-05','10:33:46',1,'articulos'),(584,3,'Modificar artículo LPI3855-25','2022-11-05','10:33:46',1,'articulos'),(585,3,'Modificar artículo LPD3855-25','2022-11-05','10:33:46',1,'articulos'),(586,3,'Modificar artículo BP12038-25','2022-11-05','10:33:46',1,'articulos'),(587,3,'Modificar artículo TP12038-25','2022-11-05','10:33:46',1,'articulos'),(588,1,'Crear OF Nro 68','2022-11-05','10:34:16',2,'ordfabcab'),(589,3,'Modificar artículo MBLOGO1','2022-11-05','10:34:26',1,'articulos'),(590,3,'Modificar artículo FREZ1506N','2022-11-05','10:34:26',1,'articulos'),(591,3,'Modificar artículo VINIL','2022-11-05','10:34:26',1,'articulos'),(592,3,'Modificar artículo CUEMBN','2022-11-05','10:34:26',1,'articulos'),(593,3,'Modificar artículo FREZ1506P','2022-11-05','10:34:26',1,'articulos'),(594,3,'Modificar artículo CHAPMBHN','2022-11-05','10:34:26',1,'articulos'),(595,3,'Modificar artículo FREZ206P','2022-11-05','10:34:26',1,'articulos'),(596,3,'Modificar artículo PARK2505N','2022-11-05','10:34:26',1,'articulos'),(597,3,'Modificar artículo PARK205N','2022-11-05','10:34:26',1,'articulos'),(598,3,'Modificar artículo TARM1020','2022-11-05','10:34:26',1,'articulos'),(599,3,'Modificar artículo MANITMBN','2022-11-05','10:34:26',1,'articulos'),(600,3,'Modificar artículo ESQUIMBAHN','2022-11-05','10:34:26',1,'articulos'),(601,3,'Modificar artículo REGAMBHN','2022-11-05','10:34:26',1,'articulos'),(602,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','10:34:26',1,'articulos'),(603,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','10:34:26',1,'articulos'),(604,3,'Modificar artículo FTEP9520-25','2022-11-05','10:34:26',1,'articulos'),(605,3,'Modificar artículo FP9520-25','2022-11-05','10:34:26',1,'articulos'),(606,3,'Modificar artículo LPI3840-25','2022-11-05','10:34:26',1,'articulos'),(607,3,'Modificar artículo LPD3840-25','2022-11-05','10:34:26',1,'articulos'),(608,3,'Modificar artículo BP10038-25','2022-11-05','10:34:26',1,'articulos'),(609,3,'Modificar artículo TP10028-25','2022-11-05','10:34:26',1,'articulos'),(610,1,'Crear OF Nro 69','2022-11-05','10:35:12',1,'ordfabcab'),(611,3,'Modificar artículo FDERLOGO2','2022-11-05','10:35:15',1,'articulos'),(612,3,'Modificar artículo FREZ1506N','2022-11-05','10:35:15',1,'articulos'),(613,3,'Modificar artículo VINIL','2022-11-05','10:35:15',1,'articulos'),(614,3,'Modificar artículo CUEFDER-BK','2022-11-05','10:35:15',1,'articulos'),(615,3,'Modificar artículo FREZ1506P','2022-11-05','10:35:15',1,'articulos'),(616,3,'Modificar artículo CHAPFDER-HR','2022-11-05','10:35:15',1,'articulos'),(617,3,'Modificar artículo FREZ206P','2022-11-05','10:35:15',1,'articulos'),(618,3,'Modificar artículo PARK2505N','2022-11-05','10:35:15',1,'articulos'),(619,3,'Modificar artículo PARK205N','2022-11-05','10:35:15',1,'articulos'),(620,3,'Modificar artículo TARM1020','2022-11-05','10:35:15',1,'articulos'),(621,3,'Modificar artículo MANITFDER-BK','2022-11-05','10:35:15',1,'articulos'),(622,3,'Modificar artículo ESQUIFDERA-BK','2022-11-05','10:35:15',1,'articulos'),(623,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','10:35:15',1,'articulos'),(624,3,'Modificar artículo TOPFONC20-25x25','2022-11-05','10:35:15',1,'articulos'),(625,3,'Modificar artículo TOPFREC20-25x25','2022-11-05','10:35:15',1,'articulos'),(626,3,'Modificar artículo FTEC9520-25','2022-11-05','10:35:15',1,'articulos'),(627,3,'Modificar artículo FC9520-25','2022-11-05','10:35:15',1,'articulos'),(628,3,'Modificar artículo LCI3840-25','2022-11-05','10:35:15',1,'articulos'),(629,3,'Modificar artículo LCD3840-25','2022-11-05','10:35:15',1,'articulos'),(630,3,'Modificar artículo BC10038-25','2022-11-05','10:35:15',1,'articulos'),(631,3,'Modificar artículo TC10028-25','2022-11-05','10:35:15',1,'articulos'),(632,1,'Crear OF Nro 70','2022-11-05','10:36:48',2,'ordfabcab'),(633,3,'Modificar artículo FDERLOGO2','2022-11-05','10:36:52',1,'articulos'),(634,3,'Modificar artículo FREZ1506N','2022-11-05','10:36:52',1,'articulos'),(635,3,'Modificar artículo VINIL','2022-11-05','10:36:52',1,'articulos'),(636,3,'Modificar artículo CUEFDER-BK','2022-11-05','10:36:52',1,'articulos'),(637,3,'Modificar artículo FREZ1506P','2022-11-05','10:36:52',1,'articulos'),(638,3,'Modificar artículo CHAPFDER-HR','2022-11-05','10:36:52',1,'articulos'),(639,3,'Modificar artículo FREZ206P','2022-11-05','10:36:52',1,'articulos'),(640,3,'Modificar artículo PARK2505N','2022-11-05','10:36:52',1,'articulos'),(641,3,'Modificar artículo PARK205N','2022-11-05','10:36:52',1,'articulos'),(642,3,'Modificar artículo TARM1020','2022-11-05','10:36:52',1,'articulos'),(643,3,'Modificar artículo MANITFDER-BK','2022-11-05','10:36:52',1,'articulos'),(644,3,'Modificar artículo ESQUIFDERA-BK','2022-11-05','10:36:52',1,'articulos'),(645,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','10:36:52',1,'articulos'),(646,3,'Modificar artículo TOPFONC20-25x25','2022-11-05','10:36:52',1,'articulos'),(647,3,'Modificar artículo TOPFREC20-25x25','2022-11-05','10:36:52',1,'articulos'),(648,3,'Modificar artículo FTEC9520-25','2022-11-05','10:36:52',1,'articulos'),(649,3,'Modificar artículo FC9520-25','2022-11-05','10:36:52',1,'articulos'),(650,3,'Modificar artículo LCI3840-25','2022-11-05','10:36:52',1,'articulos'),(651,3,'Modificar artículo LCD3840-25','2022-11-05','10:36:52',1,'articulos'),(652,3,'Modificar artículo BC10038-25','2022-11-05','10:36:52',1,'articulos'),(653,3,'Modificar artículo TC10028-25','2022-11-05','10:36:52',1,'articulos'),(654,1,'Crear OF Nro 71','2022-11-05','10:38:31',1,'ordfabcab'),(655,3,'Modificar artículo MBLOGO1','2022-11-05','10:38:43',1,'articulos'),(656,3,'Modificar artículo FREZ1506N','2022-11-05','10:38:43',1,'articulos'),(657,3,'Modificar artículo VINIL','2022-11-05','10:38:43',1,'articulos'),(658,3,'Modificar artículo CUEMBN','2022-11-05','10:38:43',1,'articulos'),(659,3,'Modificar artículo FREZ1506P','2022-11-05','10:38:43',1,'articulos'),(660,3,'Modificar artículo CHAPMBHN','2022-11-05','10:38:43',1,'articulos'),(661,3,'Modificar artículo FREZ206P','2022-11-05','10:38:43',1,'articulos'),(662,3,'Modificar artículo PARK2505N','2022-11-05','10:38:43',1,'articulos'),(663,3,'Modificar artículo PARK205N','2022-11-05','10:38:43',1,'articulos'),(664,3,'Modificar artículo TARM1020','2022-11-05','10:38:43',1,'articulos'),(665,3,'Modificar artículo MANITMBN','2022-11-05','10:38:43',1,'articulos'),(666,3,'Modificar artículo ESQUIMBAHN','2022-11-05','10:38:43',1,'articulos'),(667,3,'Modificar artículo REGAMBHN','2022-11-05','10:38:43',1,'articulos'),(668,3,'Modificar artículo TOPFREP38-25x25','2022-11-05','10:38:43',1,'articulos'),(669,3,'Modificar artículo FTEP1210545-25','2022-11-05','10:38:43',1,'articulos'),(670,3,'Modificar artículo TOPFONP30-25x25','2022-11-05','10:38:43',1,'articulos'),(671,3,'Modificar artículo FP10535-25','2022-11-05','10:38:43',1,'articulos'),(672,3,'Modificar artículo LPI3855-25','2022-11-05','10:38:43',1,'articulos'),(673,3,'Modificar artículo LPD3855-25','2022-11-05','10:38:43',1,'articulos'),(674,3,'Modificar artículo BP11038-25','2022-11-05','10:38:43',1,'articulos'),(675,3,'Modificar artículo TP11028-25','2022-11-05','10:38:43',1,'articulos'),(676,1,'Crear OF Nro 72','2022-11-05','10:57:07',1,'ordfabcab'),(677,3,'Modificar artículo FDERLOGO2','2022-11-05','10:57:10',1,'articulos'),(678,3,'Modificar artículo FREZ1506N','2022-11-05','10:57:10',1,'articulos'),(679,3,'Modificar artículo VINIL','2022-11-05','10:57:10',1,'articulos'),(680,3,'Modificar artículo CUEFDER-BK','2022-11-05','10:57:10',1,'articulos'),(681,3,'Modificar artículo FREZ1506P','2022-11-05','10:57:10',1,'articulos'),(682,3,'Modificar artículo CHAPFDER-HR','2022-11-05','10:57:10',1,'articulos'),(683,3,'Modificar artículo FREZ206P','2022-11-05','10:57:10',1,'articulos'),(684,3,'Modificar artículo PARK2505N','2022-11-05','10:57:10',1,'articulos'),(685,3,'Modificar artículo PARK205N','2022-11-05','10:57:10',1,'articulos'),(686,3,'Modificar artículo TARM1020','2022-11-05','10:57:10',1,'articulos'),(687,3,'Modificar artículo MANITFDER-BK','2022-11-05','10:57:10',1,'articulos'),(688,3,'Modificar artículo ESQUIFDERA-BK','2022-11-05','10:57:10',1,'articulos'),(689,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','10:57:10',1,'articulos'),(690,3,'Modificar artículo TOPFONC20-25x25','2022-11-05','10:57:10',1,'articulos'),(691,3,'Modificar artículo TOPFREC20-25x25','2022-11-05','10:57:10',1,'articulos'),(692,3,'Modificar artículo FTEC9520-25','2022-11-05','10:57:10',1,'articulos'),(693,3,'Modificar artículo FC9520-25','2022-11-05','10:57:10',1,'articulos'),(694,3,'Modificar artículo LCI3840-25','2022-11-05','10:57:10',1,'articulos'),(695,3,'Modificar artículo LCD3840-25','2022-11-05','10:57:10',1,'articulos'),(696,3,'Modificar artículo BC10038-25','2022-11-05','10:57:10',1,'articulos'),(697,3,'Modificar artículo TC10028-25','2022-11-05','10:57:10',1,'articulos'),(698,1,'Crear OF Nro 73','2022-11-05','11:00:47',2,'ordfabcab'),(699,3,'Modificar artículo FDERLOGO1','2022-11-05','11:01:04',1,'articulos'),(700,3,'Modificar artículo FREZ1506N','2022-11-05','11:01:04',1,'articulos'),(701,3,'Modificar artículo VINIL','2022-11-05','11:01:04',1,'articulos'),(702,3,'Modificar artículo TELAFDER-BD','2022-11-05','11:01:04',1,'articulos'),(703,3,'Modificar artículo FREZ1506P','2022-11-05','11:01:04',1,'articulos'),(704,3,'Modificar artículo FREZ206P','2022-11-05','11:01:04',1,'articulos'),(705,3,'Modificar artículo PARK2505N','2022-11-05','11:01:04',1,'articulos'),(706,3,'Modificar artículo PARK205N','2022-11-05','11:01:04',1,'articulos'),(707,3,'Modificar artículo TARM1020','2022-11-05','11:01:04',1,'articulos'),(708,3,'Modificar artículo MANITFDER-BK','2022-11-05','11:01:04',1,'articulos'),(709,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','11:01:04',1,'articulos'),(710,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','11:01:04',1,'articulos'),(711,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','11:01:04',1,'articulos'),(712,3,'Modificar artículo FTEP9520-25','2022-11-05','11:01:04',1,'articulos'),(713,3,'Modificar artículo FP9520-25','2022-11-05','11:01:04',1,'articulos'),(714,3,'Modificar artículo LPI3840-25','2022-11-05','11:01:04',1,'articulos'),(715,3,'Modificar artículo LPD3840-25','2022-11-05','11:01:04',1,'articulos'),(716,3,'Modificar artículo BP10038-25','2022-11-05','11:01:04',1,'articulos'),(717,3,'Modificar artículo TP10028-25','2022-11-05','11:01:04',1,'articulos'),(718,1,'Crear OF Nro 74','2022-11-05','11:01:18',1,'ordfabcab'),(719,3,'Modificar artículo MBLOGO1','2022-11-05','11:01:54',1,'articulos'),(720,3,'Modificar artículo FREZ1506N','2022-11-05','11:01:54',1,'articulos'),(721,3,'Modificar artículo VINIL','2022-11-05','11:01:54',1,'articulos'),(722,3,'Modificar artículo CUEMBN','2022-11-05','11:01:54',1,'articulos'),(723,3,'Modificar artículo FREZ1506P','2022-11-05','11:01:54',1,'articulos'),(724,3,'Modificar artículo CHAPMBHN','2022-11-05','11:01:54',1,'articulos'),(725,3,'Modificar artículo FREZ206P','2022-11-05','11:01:54',1,'articulos'),(726,3,'Modificar artículo PARK2505N','2022-11-05','11:01:54',1,'articulos'),(727,3,'Modificar artículo PARK205N','2022-11-05','11:01:54',1,'articulos'),(728,3,'Modificar artículo TARM1020','2022-11-05','11:01:54',1,'articulos'),(729,3,'Modificar artículo MANITMBN','2022-11-05','11:01:54',1,'articulos'),(730,3,'Modificar artículo ESQUIMBAHN','2022-11-05','11:01:54',1,'articulos'),(731,3,'Modificar artículo REGAMBHN','2022-11-05','11:01:54',1,'articulos'),(732,3,'Modificar artículo TOPFREP38-25x25','2022-11-05','11:01:54',1,'articulos'),(733,3,'Modificar artículo FTEP1210545-25','2022-11-05','11:01:54',1,'articulos'),(734,3,'Modificar artículo TOPFONP30-25x25','2022-11-05','11:01:54',1,'articulos'),(735,3,'Modificar artículo FP10535-25','2022-11-05','11:01:54',1,'articulos'),(736,3,'Modificar artículo LPI3855-25','2022-11-05','11:01:54',1,'articulos'),(737,3,'Modificar artículo LPD3855-25','2022-11-05','11:01:54',1,'articulos'),(738,3,'Modificar artículo BP11038-25','2022-11-05','11:01:54',1,'articulos'),(739,3,'Modificar artículo TP11028-25','2022-11-05','11:01:54',1,'articulos'),(740,3,'Modificar artículo FDERLOGO3','2022-11-05','11:02:29',1,'articulos'),(741,3,'Modificar artículo FREZ1506N','2022-11-05','11:02:29',1,'articulos'),(742,3,'Modificar artículo VINIL','2022-11-05','11:02:29',1,'articulos'),(743,3,'Modificar artículo CUEFDER-BK','2022-11-05','11:02:29',1,'articulos'),(744,3,'Modificar artículo FREZ1506P','2022-11-05','11:02:29',1,'articulos'),(745,3,'Modificar artículo FREZ206P','2022-11-05','11:02:29',1,'articulos'),(746,3,'Modificar artículo PARK2505N','2022-11-05','11:02:29',1,'articulos'),(747,3,'Modificar artículo PARK205N','2022-11-05','11:02:29',1,'articulos'),(748,3,'Modificar artículo TARM1020','2022-11-05','11:02:29',1,'articulos'),(749,3,'Modificar artículo MANITFDER-BK','2022-11-05','11:02:29',1,'articulos'),(750,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','11:02:29',1,'articulos'),(751,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','11:02:29',1,'articulos'),(752,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','11:02:29',1,'articulos'),(753,3,'Modificar artículo FTEP9520-25','2022-11-05','11:02:29',1,'articulos'),(754,3,'Modificar artículo FP9520-25','2022-11-05','11:02:29',1,'articulos'),(755,3,'Modificar artículo LPI3840-25','2022-11-05','11:02:29',1,'articulos'),(756,3,'Modificar artículo LPD3840-25','2022-11-05','11:02:29',1,'articulos'),(757,3,'Modificar artículo BP10038-25','2022-11-05','11:02:29',1,'articulos'),(758,3,'Modificar artículo TP10028-25','2022-11-05','11:02:29',1,'articulos'),(759,3,'Modificar artículo FDERLOGO1','2022-11-05','11:02:33',1,'articulos'),(760,3,'Modificar artículo FREZ1506N','2022-11-05','11:02:33',1,'articulos'),(761,3,'Modificar artículo VINIL','2022-11-05','11:02:33',1,'articulos'),(762,3,'Modificar artículo TELAFDER-BD','2022-11-05','11:02:33',1,'articulos'),(763,3,'Modificar artículo FREZ1506P','2022-11-05','11:02:33',1,'articulos'),(764,3,'Modificar artículo FREZ206P','2022-11-05','11:02:33',1,'articulos'),(765,3,'Modificar artículo PARK2505N','2022-11-05','11:02:33',1,'articulos'),(766,3,'Modificar artículo PARK205N','2022-11-05','11:02:33',1,'articulos'),(767,3,'Modificar artículo TARM1020','2022-11-05','11:02:33',1,'articulos'),(768,3,'Modificar artículo MANITFDER-BK','2022-11-05','11:02:33',1,'articulos'),(769,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','11:02:33',1,'articulos'),(770,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','11:02:33',1,'articulos'),(771,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','11:02:33',1,'articulos'),(772,3,'Modificar artículo FTEP9520-25','2022-11-05','11:02:33',1,'articulos'),(773,3,'Modificar artículo FP9520-25','2022-11-05','11:02:33',1,'articulos'),(774,3,'Modificar artículo LPI3840-25','2022-11-05','11:02:33',1,'articulos'),(775,3,'Modificar artículo LPD3840-25','2022-11-05','11:02:33',1,'articulos'),(776,3,'Modificar artículo BP10038-25','2022-11-05','11:02:33',1,'articulos'),(777,3,'Modificar artículo TP10028-25','2022-11-05','11:02:33',1,'articulos'),(778,3,'Modificar artículo FDERLOGO2','2022-11-05','11:02:36',1,'articulos'),(779,3,'Modificar artículo FREZ1506N','2022-11-05','11:02:36',1,'articulos'),(780,3,'Modificar artículo VINIL','2022-11-05','11:02:36',1,'articulos'),(781,3,'Modificar artículo CUEFDER-BK','2022-11-05','11:02:36',1,'articulos'),(782,3,'Modificar artículo FREZ1506P','2022-11-05','11:02:36',1,'articulos'),(783,3,'Modificar artículo CHAPFDER-HR','2022-11-05','11:02:36',1,'articulos'),(784,3,'Modificar artículo FREZ206P','2022-11-05','11:02:36',1,'articulos'),(785,3,'Modificar artículo PARK2505N','2022-11-05','11:02:36',1,'articulos'),(786,3,'Modificar artículo PARK205N','2022-11-05','11:02:36',1,'articulos'),(787,3,'Modificar artículo TARM1020','2022-11-05','11:02:36',1,'articulos'),(788,3,'Modificar artículo MANITFDER-BK','2022-11-05','11:02:36',1,'articulos'),(789,3,'Modificar artículo ESQUIFDERA-BK','2022-11-05','11:02:36',1,'articulos'),(790,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','11:02:36',1,'articulos'),(791,3,'Modificar artículo TOPFONC20-25x25','2022-11-05','11:02:36',1,'articulos'),(792,3,'Modificar artículo TOPFREC20-25x25','2022-11-05','11:02:36',1,'articulos'),(793,3,'Modificar artículo FTEC9520-25','2022-11-05','11:02:36',1,'articulos'),(794,3,'Modificar artículo FC9520-25','2022-11-05','11:02:36',1,'articulos'),(795,3,'Modificar artículo LCI3840-25','2022-11-05','11:02:36',1,'articulos'),(796,3,'Modificar artículo LCD3840-25','2022-11-05','11:02:36',1,'articulos'),(797,3,'Modificar artículo BC10038-25','2022-11-05','11:02:36',1,'articulos'),(798,3,'Modificar artículo TC10028-25','2022-11-05','11:02:36',1,'articulos'),(799,1,'Crear OF Nro 75','2022-11-05','11:05:21',1,'ordfabcab'),(800,3,'Modificar artículo FDERLOGO2','2022-11-05','11:05:25',1,'articulos'),(801,3,'Modificar artículo FREZ1506N','2022-11-05','11:05:25',1,'articulos'),(802,3,'Modificar artículo VINIL','2022-11-05','11:05:25',1,'articulos'),(803,3,'Modificar artículo CUEFDER-BK','2022-11-05','11:05:25',1,'articulos'),(804,3,'Modificar artículo FREZ1506P','2022-11-05','11:05:25',1,'articulos'),(805,3,'Modificar artículo CHAPFDER-HR','2022-11-05','11:05:25',1,'articulos'),(806,3,'Modificar artículo FREZ206P','2022-11-05','11:05:25',1,'articulos'),(807,3,'Modificar artículo PARK2505N','2022-11-05','11:05:25',1,'articulos'),(808,3,'Modificar artículo PARK205N','2022-11-05','11:05:25',1,'articulos'),(809,3,'Modificar artículo TARM1020','2022-11-05','11:05:25',1,'articulos'),(810,3,'Modificar artículo MANITFDER-BK','2022-11-05','11:05:25',1,'articulos'),(811,3,'Modificar artículo ESQUIFDERA-BK','2022-11-05','11:05:25',1,'articulos'),(812,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','11:05:25',1,'articulos'),(813,3,'Modificar artículo TOPFONC20-25x25','2022-11-05','11:05:25',1,'articulos'),(814,3,'Modificar artículo TOPFREC20-25x25','2022-11-05','11:05:25',1,'articulos'),(815,3,'Modificar artículo FTEC9520-25','2022-11-05','11:05:25',1,'articulos'),(816,3,'Modificar artículo FC9520-25','2022-11-05','11:05:25',1,'articulos'),(817,3,'Modificar artículo LCI3840-25','2022-11-05','11:05:25',1,'articulos'),(818,3,'Modificar artículo LCD3840-25','2022-11-05','11:05:25',1,'articulos'),(819,3,'Modificar artículo BC10038-25','2022-11-05','11:05:25',1,'articulos'),(820,3,'Modificar artículo TC10028-25','2022-11-05','11:05:25',1,'articulos'),(821,1,'Crear OF Nro 76','2022-11-05','11:07:57',1,'ordfabcab'),(822,3,'Modificar artículo MBLOGO1','2022-11-05','11:08:00',1,'articulos'),(823,3,'Modificar artículo FREZ1506N','2022-11-05','11:08:00',1,'articulos'),(824,3,'Modificar artículo VINIL','2022-11-05','11:08:00',1,'articulos'),(825,3,'Modificar artículo CUEMBN','2022-11-05','11:08:00',1,'articulos'),(826,3,'Modificar artículo FREZ1506P','2022-11-05','11:08:00',1,'articulos'),(827,3,'Modificar artículo CHAPMBHN','2022-11-05','11:08:00',1,'articulos'),(828,3,'Modificar artículo FREZ206P','2022-11-05','11:08:00',1,'articulos'),(829,3,'Modificar artículo PARK2505N','2022-11-05','11:08:00',1,'articulos'),(830,3,'Modificar artículo PARK205N','2022-11-05','11:08:00',1,'articulos'),(831,3,'Modificar artículo TARM1020','2022-11-05','11:08:00',1,'articulos'),(832,3,'Modificar artículo MANITMBN','2022-11-05','11:08:00',1,'articulos'),(833,3,'Modificar artículo ESQUIMBAHN','2022-11-05','11:08:00',1,'articulos'),(834,3,'Modificar artículo REGAMBHN','2022-11-05','11:08:00',1,'articulos'),(835,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','11:08:00',1,'articulos'),(836,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','11:08:00',1,'articulos'),(837,3,'Modificar artículo FTEP9520-25','2022-11-05','11:08:00',1,'articulos'),(838,3,'Modificar artículo FP9520-25','2022-11-05','11:08:00',1,'articulos'),(839,3,'Modificar artículo LPI3840-25','2022-11-05','11:08:00',1,'articulos'),(840,3,'Modificar artículo LPD3840-25','2022-11-05','11:08:00',1,'articulos'),(841,3,'Modificar artículo BP10038-25','2022-11-05','11:08:00',1,'articulos'),(842,3,'Modificar artículo TP10028-25','2022-11-05','11:08:00',1,'articulos'),(843,1,'Crear OF Nro 77','2022-11-05','11:18:40',1,'ordfabcab'),(844,3,'Modificar artículo MBLOGO1','2022-11-05','11:18:42',1,'articulos'),(845,3,'Modificar artículo FREZ1506N','2022-11-05','11:18:42',1,'articulos'),(846,3,'Modificar artículo VINIL','2022-11-05','11:18:42',1,'articulos'),(847,3,'Modificar artículo CUEMBN','2022-11-05','11:18:42',1,'articulos'),(848,3,'Modificar artículo FREZ1506P','2022-11-05','11:18:42',1,'articulos'),(849,3,'Modificar artículo CHAPMBHN','2022-11-05','11:18:42',1,'articulos'),(850,3,'Modificar artículo FREZ206P','2022-11-05','11:18:42',1,'articulos'),(851,3,'Modificar artículo PARK2505N','2022-11-05','11:18:42',1,'articulos'),(852,3,'Modificar artículo PARK205N','2022-11-05','11:18:42',1,'articulos'),(853,3,'Modificar artículo TARM1020','2022-11-05','11:18:42',1,'articulos'),(854,3,'Modificar artículo MANITMBN','2022-11-05','11:18:42',1,'articulos'),(855,3,'Modificar artículo ESQUIMBAHN','2022-11-05','11:18:42',1,'articulos'),(856,3,'Modificar artículo REGAMBHN','2022-11-05','11:18:42',1,'articulos'),(857,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','11:18:42',1,'articulos'),(858,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','11:18:42',1,'articulos'),(859,3,'Modificar artículo FTEP9520-25','2022-11-05','11:18:42',1,'articulos'),(860,3,'Modificar artículo FP9520-25','2022-11-05','11:18:42',1,'articulos'),(861,3,'Modificar artículo LPI3840-25','2022-11-05','11:18:42',1,'articulos'),(862,3,'Modificar artículo LPD3840-25','2022-11-05','11:18:42',1,'articulos'),(863,3,'Modificar artículo BP10038-25','2022-11-05','11:18:42',1,'articulos'),(864,3,'Modificar artículo TP10028-25','2022-11-05','11:18:42',1,'articulos'),(865,1,'Crear OF Nro 78','2022-11-05','11:21:05',1,'ordfabcab'),(866,1,'Crear OF Nro 79','2022-11-05','11:24:13',1,'ordfabcab'),(867,3,'Modificar artículo BC10038-25','2022-11-05','11:25:27',1,'articulos'),(868,3,'Modificar artículo BICAZ1','2022-11-05','11:25:27',1,'articulos'),(869,3,'Modificar artículo BICNG1','2022-11-05','11:25:27',1,'articulos'),(870,3,'Modificar artículo BICRO1','2022-11-05','11:25:27',1,'articulos'),(871,3,'Modificar artículo BOGLOGO','2022-11-05','11:25:27',1,'articulos'),(872,3,'Modificar artículo BP10038-25','2022-11-05','11:25:27',1,'articulos'),(873,3,'Modificar artículo BP11038-25','2022-11-05','11:25:27',1,'articulos'),(874,3,'Modificar artículo BP12038-25','2022-11-05','11:25:27',1,'articulos'),(875,3,'Modificar artículo CHAPF-P1000','2022-11-05','11:25:27',1,'articulos'),(876,3,'Modificar artículo CHAPFDER-HR','2022-11-05','11:25:27',1,'articulos'),(877,3,'Modificar artículo CHAPMBHN','2022-11-05','11:25:27',1,'articulos'),(878,3,'Modificar artículo COLA_MADERA','2022-11-05','11:25:27',1,'articulos'),(879,3,'Modificar artículo CUAD-ESPIRAL-CUA-80','2022-11-05','11:25:27',1,'articulos'),(880,3,'Modificar artículo CUAD-ESPIRAL-RAY-80','2022-11-05','11:25:27',1,'articulos'),(881,3,'Modificar artículo CUEFDER-BK','2022-11-05','11:25:27',1,'articulos'),(882,3,'Modificar artículo CUEMBC','2022-11-05','11:25:27',1,'articulos'),(883,3,'Modificar artículo CUEMBCREAM','2022-11-05','11:25:27',1,'articulos'),(884,3,'Modificar artículo CUEMBN','2022-11-05','11:25:27',1,'articulos'),(885,3,'Modificar artículo CUEVIB SLO','2022-11-05','11:25:27',1,'articulos'),(886,3,'Modificar artículo ESQUIFDERA-BK','2022-11-05','11:25:27',1,'articulos'),(887,3,'Modificar artículo ESQUIMBAHN','2022-11-05','11:25:27',1,'articulos'),(888,3,'Modificar artículo FC9520-25','2022-11-05','11:25:27',1,'articulos'),(889,3,'Modificar artículo FDERLOGO1','2022-11-05','11:25:27',1,'articulos'),(890,3,'Modificar artículo FDERLOGO2','2022-11-05','11:25:27',1,'articulos'),(891,3,'Modificar artículo FDERLOGO3','2022-11-05','11:25:27',1,'articulos'),(892,3,'Modificar artículo FP10535-25','2022-11-05','11:25:27',1,'articulos'),(893,3,'Modificar artículo FP11525-25','2022-11-05','11:25:27',1,'articulos'),(894,3,'Modificar artículo FP1557225','2022-11-05','11:25:27',1,'articulos'),(895,3,'Modificar artículo FP9520-25','2022-11-05','11:25:27',1,'articulos'),(896,3,'Modificar artículo FREZ1506N','2022-11-05','11:25:27',1,'articulos'),(897,3,'Modificar artículo FREZ1506P','2022-11-05','11:25:27',1,'articulos'),(898,3,'Modificar artículo FREZ206P','2022-11-05','11:25:27',1,'articulos'),(899,3,'Modificar artículo FTEC9520-25','2022-11-05','11:25:27',1,'articulos'),(900,3,'Modificar artículo FTEP1210545-25','2022-11-05','11:25:27',1,'articulos'),(901,3,'Modificar artículo FTEP1211550-25','2022-11-05','11:25:27',1,'articulos'),(902,3,'Modificar artículo FTEP9520-25','2022-11-05','11:25:27',1,'articulos'),(903,3,'Modificar artículo HP12A ','2022-11-05','11:25:27',1,'articulos'),(904,3,'Modificar artículo HP78A ','2022-11-05','11:25:27',1,'articulos'),(905,3,'Modificar artículo LACA-MR-BR','2022-11-05','11:25:27',1,'articulos'),(906,3,'Modificar artículo LACA-MR-SM','2022-11-05','11:25:27',1,'articulos'),(907,3,'Modificar artículo LCD3840-25','2022-11-05','11:25:27',1,'articulos'),(908,3,'Modificar artículo LCI3840-25','2022-11-05','11:25:27',1,'articulos'),(909,3,'Modificar artículo LPD3840-25','2022-11-05','11:25:27',1,'articulos'),(910,3,'Modificar artículo LPD3855-25','2022-11-05','11:25:27',1,'articulos'),(911,3,'Modificar artículo LPI3840-25','2022-11-05','11:25:27',1,'articulos'),(912,3,'Modificar artículo LPI3855-25','2022-11-05','11:25:27',1,'articulos'),(913,3,'Modificar artículo MANITFDER-BK','2022-11-05','11:25:27',1,'articulos'),(914,3,'Modificar artículo MANITMBCN','2022-11-05','11:25:27',1,'articulos'),(915,3,'Modificar artículo MANITMBN','2022-11-05','11:25:27',1,'articulos'),(916,3,'Modificar artículo MARLOGO','2022-11-05','11:25:27',1,'articulos'),(917,3,'Modificar artículo MBLOGO1','2022-11-05','11:25:27',1,'articulos'),(918,3,'Modificar artículo MBLOGO2','2022-11-05','11:25:27',1,'articulos'),(919,3,'Modificar artículo PARK205N','2022-11-05','11:25:27',1,'articulos'),(920,3,'Modificar artículo PARK2505N','2022-11-05','11:25:27',1,'articulos'),(921,3,'Modificar artículo PEGA-CTO','2022-11-05','11:25:27',1,'articulos'),(922,3,'Modificar artículo PEGA-CTO_TR','2022-11-05','11:25:27',1,'articulos'),(923,3,'Modificar artículo PLASTICOLA 200GRS','2022-11-05','11:25:27',1,'articulos'),(924,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','11:25:27',1,'articulos'),(925,3,'Modificar artículo REGAMBHN','2022-11-05','11:25:27',1,'articulos'),(926,3,'Modificar artículo REGUNV35','2022-11-05','11:25:27',1,'articulos'),(927,3,'Modificar artículo REGUNV40','2022-11-05','11:25:27',1,'articulos'),(928,3,'Modificar artículo RESMA-A4-75GR','2022-11-05','11:25:27',1,'articulos'),(929,3,'Modificar artículo RESMA-CARTA-80GR','2022-11-05','11:25:27',1,'articulos'),(930,3,'Modificar artículo RIVLOGO','2022-11-05','11:25:27',1,'articulos'),(931,3,'Modificar artículo RUED 45-AZUL','2022-11-05','11:25:27',1,'articulos'),(932,3,'Modificar artículo RUED 60-BK','2022-11-05','11:25:27',1,'articulos'),(933,3,'Modificar artículo SLOLOGO','2022-11-05','11:25:27',1,'articulos'),(934,3,'Modificar artículo TARM1020','2022-11-05','11:25:27',1,'articulos'),(935,3,'Modificar artículo TARM1030','2022-11-05','11:25:27',1,'articulos'),(936,3,'Modificar artículo TC10028-25','2022-11-05','11:25:27',1,'articulos'),(937,3,'Modificar artículo TELAFDER-BD','2022-11-05','11:25:27',1,'articulos'),(938,3,'Modificar artículo TOPFONC20-25x25','2022-11-05','11:25:27',1,'articulos'),(939,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','11:25:27',1,'articulos'),(940,3,'Modificar artículo TOPFONP25-25x25','2022-11-05','11:25:27',1,'articulos'),(941,3,'Modificar artículo TOPFONP30-25x25','2022-11-05','11:25:27',1,'articulos'),(942,3,'Modificar artículo TOPFREC20-25x25','2022-11-05','11:25:27',1,'articulos'),(943,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','11:25:27',1,'articulos'),(944,3,'Modificar artículo TOPFREP38-25x25','2022-11-05','11:25:27',1,'articulos'),(945,3,'Modificar artículo TOPFREP50-25x25','2022-11-05','11:25:27',1,'articulos'),(946,3,'Modificar artículo TP10028-25','2022-11-05','11:25:27',1,'articulos'),(947,3,'Modificar artículo TP11028-25','2022-11-05','11:25:27',1,'articulos'),(948,3,'Modificar artículo TP12038-25','2022-11-05','11:25:27',1,'articulos'),(949,3,'Modificar artículo VINIL','2022-11-05','11:25:27',1,'articulos'),(950,3,'Modificar artículo VINIL-ESP','2022-11-05','11:25:27',1,'articulos'),(951,3,'Modificar artículo VINIL-NG','2022-11-05','11:25:27',1,'articulos'),(952,3,'Modificar artículo MBLOGO1','2022-11-05','11:25:34',1,'articulos'),(953,3,'Modificar artículo FREZ1506N','2022-11-05','11:25:34',1,'articulos'),(954,3,'Modificar artículo VINIL','2022-11-05','11:25:34',1,'articulos'),(955,3,'Modificar artículo CUEMBN','2022-11-05','11:25:34',1,'articulos'),(956,3,'Modificar artículo FREZ1506P','2022-11-05','11:25:34',1,'articulos'),(957,3,'Modificar artículo CHAPMBHN','2022-11-05','11:25:34',1,'articulos'),(958,3,'Modificar artículo FREZ206P','2022-11-05','11:25:34',1,'articulos'),(959,3,'Modificar artículo PARK2505N','2022-11-05','11:25:34',1,'articulos'),(960,3,'Modificar artículo PARK205N','2022-11-05','11:25:34',1,'articulos'),(961,3,'Modificar artículo TARM1020','2022-11-05','11:25:34',1,'articulos'),(962,3,'Modificar artículo MANITMBN','2022-11-05','11:25:34',1,'articulos'),(963,3,'Modificar artículo ESQUIMBAHN','2022-11-05','11:25:34',1,'articulos'),(964,3,'Modificar artículo REGAMBHN','2022-11-05','11:25:34',1,'articulos'),(965,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','11:25:34',1,'articulos'),(966,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','11:25:34',1,'articulos'),(967,3,'Modificar artículo FTEP9520-25','2022-11-05','11:25:34',1,'articulos'),(968,3,'Modificar artículo FP9520-25','2022-11-05','11:25:34',1,'articulos'),(969,3,'Modificar artículo LPI3840-25','2022-11-05','11:25:34',1,'articulos'),(970,3,'Modificar artículo LPD3840-25','2022-11-05','11:25:34',1,'articulos'),(971,3,'Modificar artículo BP10038-25','2022-11-05','11:25:34',1,'articulos'),(972,3,'Modificar artículo TP10028-25','2022-11-05','11:25:34',1,'articulos'),(973,1,'Crear OF Nro 80','2022-11-05','11:27:22',1,'ordfabcab'),(974,3,'Modificar artículo FDERLOGO1','2022-11-05','11:27:27',1,'articulos'),(975,3,'Modificar artículo FREZ1506N','2022-11-05','11:27:27',1,'articulos'),(976,3,'Modificar artículo VINIL','2022-11-05','11:27:27',1,'articulos'),(977,3,'Modificar artículo TELAFDER-BD','2022-11-05','11:27:27',1,'articulos'),(978,3,'Modificar artículo FREZ1506P','2022-11-05','11:27:27',1,'articulos'),(979,3,'Modificar artículo FREZ206P','2022-11-05','11:27:27',1,'articulos'),(980,3,'Modificar artículo PARK2505N','2022-11-05','11:27:27',1,'articulos'),(981,3,'Modificar artículo PARK205N','2022-11-05','11:27:27',1,'articulos'),(982,3,'Modificar artículo TARM1020','2022-11-05','11:27:27',1,'articulos'),(983,3,'Modificar artículo MANITFDER-BK','2022-11-05','11:27:27',1,'articulos'),(984,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','11:27:27',1,'articulos'),(985,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','11:27:27',1,'articulos'),(986,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','11:27:27',1,'articulos'),(987,3,'Modificar artículo FTEP9520-25','2022-11-05','11:27:27',1,'articulos'),(988,3,'Modificar artículo FP9520-25','2022-11-05','11:27:27',1,'articulos'),(989,3,'Modificar artículo LPI3840-25','2022-11-05','11:27:27',1,'articulos'),(990,3,'Modificar artículo LPD3840-25','2022-11-05','11:27:27',1,'articulos'),(991,3,'Modificar artículo BP10038-25','2022-11-05','11:27:27',1,'articulos'),(992,3,'Modificar artículo TP10028-25','2022-11-05','11:27:27',1,'articulos'),(993,1,'Crear OF Nro 81','2022-11-05','11:29:52',1,'ordfabcab'),(994,3,'Modificar artículo FDERLOGO1','2022-11-05','11:29:55',1,'articulos'),(995,3,'Modificar artículo FREZ1506N','2022-11-05','11:29:55',1,'articulos'),(996,3,'Modificar artículo VINIL','2022-11-05','11:29:55',1,'articulos'),(997,3,'Modificar artículo TELAFDER-BD','2022-11-05','11:29:55',1,'articulos'),(998,3,'Modificar artículo FREZ1506P','2022-11-05','11:29:55',1,'articulos'),(999,3,'Modificar artículo FREZ206P','2022-11-05','11:29:55',1,'articulos'),(1000,3,'Modificar artículo PARK2505N','2022-11-05','11:29:55',1,'articulos'),(1001,3,'Modificar artículo PARK205N','2022-11-05','11:29:55',1,'articulos'),(1002,3,'Modificar artículo TARM1020','2022-11-05','11:29:55',1,'articulos'),(1003,3,'Modificar artículo MANITFDER-BK','2022-11-05','11:29:55',1,'articulos'),(1004,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','11:29:55',1,'articulos'),(1005,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','11:29:55',1,'articulos'),(1006,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','11:29:55',1,'articulos'),(1007,3,'Modificar artículo FTEP9520-25','2022-11-05','11:29:55',1,'articulos'),(1008,3,'Modificar artículo FP9520-25','2022-11-05','11:29:55',1,'articulos'),(1009,3,'Modificar artículo LPI3840-25','2022-11-05','11:29:55',1,'articulos'),(1010,3,'Modificar artículo LPD3840-25','2022-11-05','11:29:55',1,'articulos'),(1011,3,'Modificar artículo BP10038-25','2022-11-05','11:29:55',1,'articulos'),(1012,3,'Modificar artículo TP10028-25','2022-11-05','11:29:55',1,'articulos'),(1013,1,'Crear OF Nro 82','2022-11-05','11:30:53',1,'ordfabcab'),(1014,3,'Modificar artículo MBLOGO2','2022-11-05','11:30:55',1,'articulos'),(1015,3,'Modificar artículo FP1557225','2022-11-05','11:30:55',1,'articulos'),(1016,3,'Modificar artículo FREZ1506N','2022-11-05','11:30:55',1,'articulos'),(1017,3,'Modificar artículo VINIL','2022-11-05','11:30:55',1,'articulos'),(1018,3,'Modificar artículo CUEMBCREAM','2022-11-05','11:30:55',1,'articulos'),(1019,3,'Modificar artículo FREZ1506P','2022-11-05','11:30:55',1,'articulos'),(1020,3,'Modificar artículo CHAPMBHN','2022-11-05','11:30:55',1,'articulos'),(1021,3,'Modificar artículo FREZ206P','2022-11-05','11:30:55',1,'articulos'),(1022,3,'Modificar artículo PARK2505N','2022-11-05','11:30:55',1,'articulos'),(1023,3,'Modificar artículo PARK205N','2022-11-05','11:30:55',1,'articulos'),(1024,3,'Modificar artículo TARM1020','2022-11-05','11:30:55',1,'articulos'),(1025,3,'Modificar artículo MANITMBCN','2022-11-05','11:30:55',1,'articulos'),(1026,3,'Modificar artículo ESQUIMBAHN','2022-11-05','11:30:55',1,'articulos'),(1027,3,'Modificar artículo REGAMBHN','2022-11-05','11:30:55',1,'articulos'),(1028,3,'Modificar artículo FTEP1211550-25','2022-11-05','11:30:55',1,'articulos'),(1029,3,'Modificar artículo TOPFREP50-25x25','2022-11-05','11:30:55',1,'articulos'),(1030,3,'Modificar artículo TOPFONP25-25x25','2022-11-05','11:30:55',1,'articulos'),(1031,3,'Modificar artículo FP11525-25','2022-11-05','11:30:55',1,'articulos'),(1032,3,'Modificar artículo LPI3855-25','2022-11-05','11:30:55',1,'articulos'),(1033,3,'Modificar artículo LPD3855-25','2022-11-05','11:30:55',1,'articulos'),(1034,3,'Modificar artículo BP12038-25','2022-11-05','11:30:55',1,'articulos'),(1035,3,'Modificar artículo TP12038-25','2022-11-05','11:30:55',1,'articulos'),(1036,1,'Crear OF Nro 83','2022-11-05','11:35:53',1,'ordfabcab'),(1037,3,'Modificar artículo FDERLOGO2','2022-11-05','11:35:55',1,'articulos'),(1038,3,'Modificar artículo FREZ1506N','2022-11-05','11:35:55',1,'articulos'),(1039,3,'Modificar artículo VINIL','2022-11-05','11:35:55',1,'articulos'),(1040,3,'Modificar artículo CUEFDER-BK','2022-11-05','11:35:55',1,'articulos'),(1041,3,'Modificar artículo FREZ1506P','2022-11-05','11:35:55',1,'articulos'),(1042,3,'Modificar artículo CHAPFDER-HR','2022-11-05','11:35:55',1,'articulos'),(1043,3,'Modificar artículo FREZ206P','2022-11-05','11:35:55',1,'articulos'),(1044,3,'Modificar artículo PARK2505N','2022-11-05','11:35:55',1,'articulos'),(1045,3,'Modificar artículo PARK205N','2022-11-05','11:35:55',1,'articulos'),(1046,3,'Modificar artículo TARM1020','2022-11-05','11:35:55',1,'articulos'),(1047,3,'Modificar artículo MANITFDER-BK','2022-11-05','11:35:55',1,'articulos'),(1048,3,'Modificar artículo ESQUIFDERA-BK','2022-11-05','11:35:55',1,'articulos'),(1049,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','11:35:55',1,'articulos'),(1050,3,'Modificar artículo TOPFONC20-25x25','2022-11-05','11:35:55',1,'articulos'),(1051,3,'Modificar artículo TOPFREC20-25x25','2022-11-05','11:35:55',1,'articulos'),(1052,3,'Modificar artículo FTEC9520-25','2022-11-05','11:35:55',1,'articulos'),(1053,3,'Modificar artículo FC9520-25','2022-11-05','11:35:55',1,'articulos'),(1054,3,'Modificar artículo LCI3840-25','2022-11-05','11:35:55',1,'articulos'),(1055,3,'Modificar artículo LCD3840-25','2022-11-05','11:35:55',1,'articulos'),(1056,3,'Modificar artículo BC10038-25','2022-11-05','11:35:55',1,'articulos'),(1057,3,'Modificar artículo TC10028-25','2022-11-05','11:35:55',1,'articulos'),(1058,1,'Crear OF Nro 84','2022-11-05','11:38:44',1,'ordfabcab'),(1059,3,'Modificar artículo FDERLOGO1','2022-11-05','11:38:47',1,'articulos'),(1060,3,'Modificar artículo FREZ1506N','2022-11-05','11:38:47',1,'articulos'),(1061,3,'Modificar artículo VINIL','2022-11-05','11:38:47',1,'articulos'),(1062,3,'Modificar artículo TELAFDER-BD','2022-11-05','11:38:47',1,'articulos'),(1063,3,'Modificar artículo FREZ1506P','2022-11-05','11:38:47',1,'articulos'),(1064,3,'Modificar artículo FREZ206P','2022-11-05','11:38:47',1,'articulos'),(1065,3,'Modificar artículo PARK2505N','2022-11-05','11:38:47',1,'articulos'),(1066,3,'Modificar artículo PARK205N','2022-11-05','11:38:47',1,'articulos'),(1067,3,'Modificar artículo TARM1020','2022-11-05','11:38:47',1,'articulos'),(1068,3,'Modificar artículo MANITFDER-BK','2022-11-05','11:38:47',1,'articulos'),(1069,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','11:38:47',1,'articulos'),(1070,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','11:38:47',1,'articulos'),(1071,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','11:38:47',1,'articulos'),(1072,3,'Modificar artículo FTEP9520-25','2022-11-05','11:38:47',1,'articulos'),(1073,3,'Modificar artículo FP9520-25','2022-11-05','11:38:47',1,'articulos'),(1074,3,'Modificar artículo LPI3840-25','2022-11-05','11:38:47',1,'articulos'),(1075,3,'Modificar artículo LPD3840-25','2022-11-05','11:38:47',1,'articulos'),(1076,3,'Modificar artículo BP10038-25','2022-11-05','11:38:47',1,'articulos'),(1077,3,'Modificar artículo TP10028-25','2022-11-05','11:38:47',1,'articulos'),(1078,1,'Crear OF Nro 85','2022-11-05','11:39:24',2,'ordfabcab'),(1079,3,'Modificar artículo FDERLOGO2','2022-11-05','11:39:29',1,'articulos'),(1080,3,'Modificar artículo FREZ1506N','2022-11-05','11:39:29',1,'articulos'),(1081,3,'Modificar artículo VINIL','2022-11-05','11:39:29',1,'articulos'),(1082,3,'Modificar artículo CUEFDER-BK','2022-11-05','11:39:29',1,'articulos'),(1083,3,'Modificar artículo FREZ1506P','2022-11-05','11:39:29',1,'articulos'),(1084,3,'Modificar artículo CHAPFDER-HR','2022-11-05','11:39:29',1,'articulos'),(1085,3,'Modificar artículo FREZ206P','2022-11-05','11:39:29',1,'articulos'),(1086,3,'Modificar artículo PARK2505N','2022-11-05','11:39:29',1,'articulos'),(1087,3,'Modificar artículo PARK205N','2022-11-05','11:39:29',1,'articulos'),(1088,3,'Modificar artículo TARM1020','2022-11-05','11:39:29',1,'articulos'),(1089,3,'Modificar artículo MANITFDER-BK','2022-11-05','11:39:29',1,'articulos'),(1090,3,'Modificar artículo ESQUIFDERA-BK','2022-11-05','11:39:29',1,'articulos'),(1091,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','11:39:29',1,'articulos'),(1092,3,'Modificar artículo TOPFONC20-25x25','2022-11-05','11:39:29',1,'articulos'),(1093,3,'Modificar artículo TOPFREC20-25x25','2022-11-05','11:39:29',1,'articulos'),(1094,3,'Modificar artículo FTEC9520-25','2022-11-05','11:39:29',1,'articulos'),(1095,3,'Modificar artículo FC9520-25','2022-11-05','11:39:29',1,'articulos'),(1096,3,'Modificar artículo LCI3840-25','2022-11-05','11:39:29',1,'articulos'),(1097,3,'Modificar artículo LCD3840-25','2022-11-05','11:39:29',1,'articulos'),(1098,3,'Modificar artículo BC10038-25','2022-11-05','11:39:29',1,'articulos'),(1099,3,'Modificar artículo TC10028-25','2022-11-05','11:39:29',1,'articulos'),(1100,3,'Modificar artículo FDERLOGO1','2022-11-05','11:39:44',1,'articulos'),(1101,3,'Modificar artículo FREZ1506N','2022-11-05','11:39:44',1,'articulos'),(1102,3,'Modificar artículo VINIL','2022-11-05','11:39:44',1,'articulos'),(1103,3,'Modificar artículo TELAFDER-BD','2022-11-05','11:39:44',1,'articulos'),(1104,3,'Modificar artículo FREZ1506P','2022-11-05','11:39:44',1,'articulos'),(1105,3,'Modificar artículo FREZ206P','2022-11-05','11:39:44',1,'articulos'),(1106,3,'Modificar artículo PARK2505N','2022-11-05','11:39:44',1,'articulos'),(1107,3,'Modificar artículo PARK205N','2022-11-05','11:39:44',1,'articulos'),(1108,3,'Modificar artículo TARM1020','2022-11-05','11:39:44',1,'articulos'),(1109,3,'Modificar artículo MANITFDER-BK','2022-11-05','11:39:44',1,'articulos'),(1110,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','11:39:44',1,'articulos'),(1111,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','11:39:44',1,'articulos'),(1112,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','11:39:44',1,'articulos'),(1113,3,'Modificar artículo FTEP9520-25','2022-11-05','11:39:44',1,'articulos'),(1114,3,'Modificar artículo FP9520-25','2022-11-05','11:39:44',1,'articulos'),(1115,3,'Modificar artículo LPI3840-25','2022-11-05','11:39:44',1,'articulos'),(1116,3,'Modificar artículo LPD3840-25','2022-11-05','11:39:44',1,'articulos'),(1117,3,'Modificar artículo BP10038-25','2022-11-05','11:39:44',1,'articulos'),(1118,3,'Modificar artículo TP10028-25','2022-11-05','11:39:44',1,'articulos'),(1119,3,'Modificar artículo FDERLOGO1','2022-11-05','11:39:45',1,'articulos'),(1120,3,'Modificar artículo FREZ1506N','2022-11-05','11:39:45',1,'articulos'),(1121,3,'Modificar artículo VINIL','2022-11-05','11:39:45',1,'articulos'),(1122,3,'Modificar artículo TELAFDER-BD','2022-11-05','11:39:45',1,'articulos'),(1123,3,'Modificar artículo FREZ1506P','2022-11-05','11:39:45',1,'articulos'),(1124,3,'Modificar artículo FREZ206P','2022-11-05','11:39:45',1,'articulos'),(1125,3,'Modificar artículo PARK2505N','2022-11-05','11:39:45',1,'articulos'),(1126,3,'Modificar artículo PARK205N','2022-11-05','11:39:45',1,'articulos'),(1127,3,'Modificar artículo TARM1020','2022-11-05','11:39:45',1,'articulos'),(1128,3,'Modificar artículo MANITFDER-BK','2022-11-05','11:39:45',1,'articulos'),(1129,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','11:39:45',1,'articulos'),(1130,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','11:39:45',1,'articulos'),(1131,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','11:39:45',1,'articulos'),(1132,3,'Modificar artículo FTEP9520-25','2022-11-05','11:39:45',1,'articulos'),(1133,3,'Modificar artículo FP9520-25','2022-11-05','11:39:45',1,'articulos'),(1134,3,'Modificar artículo LPI3840-25','2022-11-05','11:39:45',1,'articulos'),(1135,3,'Modificar artículo LPD3840-25','2022-11-05','11:39:45',1,'articulos'),(1136,3,'Modificar artículo BP10038-25','2022-11-05','11:39:45',1,'articulos'),(1137,3,'Modificar artículo TP10028-25','2022-11-05','11:39:45',1,'articulos'),(1138,3,'Modificar artículo MBLOGO1','2022-11-05','11:41:32',1,'articulos'),(1139,3,'Modificar artículo FREZ1506N','2022-11-05','11:41:32',1,'articulos'),(1140,3,'Modificar artículo VINIL','2022-11-05','11:41:32',1,'articulos'),(1141,3,'Modificar artículo CUEMBN','2022-11-05','11:41:32',1,'articulos'),(1142,3,'Modificar artículo FREZ1506P','2022-11-05','11:41:32',1,'articulos'),(1143,3,'Modificar artículo CHAPMBHN','2022-11-05','11:41:32',1,'articulos'),(1144,3,'Modificar artículo FREZ206P','2022-11-05','11:41:32',1,'articulos'),(1145,3,'Modificar artículo PARK2505N','2022-11-05','11:41:32',1,'articulos'),(1146,3,'Modificar artículo PARK205N','2022-11-05','11:41:32',1,'articulos'),(1147,3,'Modificar artículo TARM1020','2022-11-05','11:41:32',1,'articulos'),(1148,3,'Modificar artículo MANITMBN','2022-11-05','11:41:32',1,'articulos'),(1149,3,'Modificar artículo ESQUIMBAHN','2022-11-05','11:41:32',1,'articulos'),(1150,3,'Modificar artículo REGAMBHN','2022-11-05','11:41:32',1,'articulos'),(1151,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','11:41:32',1,'articulos'),(1152,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','11:41:32',1,'articulos'),(1153,3,'Modificar artículo FTEP9520-25','2022-11-05','11:41:32',1,'articulos'),(1154,3,'Modificar artículo FP9520-25','2022-11-05','11:41:32',1,'articulos'),(1155,3,'Modificar artículo LPI3840-25','2022-11-05','11:41:32',1,'articulos'),(1156,3,'Modificar artículo LPD3840-25','2022-11-05','11:41:32',1,'articulos'),(1157,3,'Modificar artículo BP10038-25','2022-11-05','11:41:32',1,'articulos'),(1158,3,'Modificar artículo TP10028-25','2022-11-05','11:41:32',1,'articulos'),(1159,3,'Modificar artículo MBLOGO1','2022-11-05','11:41:36',1,'articulos'),(1160,3,'Modificar artículo FREZ1506N','2022-11-05','11:41:36',1,'articulos'),(1161,3,'Modificar artículo VINIL','2022-11-05','11:41:36',1,'articulos'),(1162,3,'Modificar artículo CUEMBN','2022-11-05','11:41:36',1,'articulos'),(1163,3,'Modificar artículo FREZ1506P','2022-11-05','11:41:36',1,'articulos'),(1164,3,'Modificar artículo CHAPMBHN','2022-11-05','11:41:36',1,'articulos'),(1165,3,'Modificar artículo FREZ206P','2022-11-05','11:41:36',1,'articulos'),(1166,3,'Modificar artículo PARK2505N','2022-11-05','11:41:36',1,'articulos'),(1167,3,'Modificar artículo PARK205N','2022-11-05','11:41:36',1,'articulos'),(1168,3,'Modificar artículo TARM1020','2022-11-05','11:41:36',1,'articulos'),(1169,3,'Modificar artículo MANITMBN','2022-11-05','11:41:36',1,'articulos'),(1170,3,'Modificar artículo ESQUIMBAHN','2022-11-05','11:41:36',1,'articulos'),(1171,3,'Modificar artículo REGAMBHN','2022-11-05','11:41:36',1,'articulos'),(1172,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','11:41:36',1,'articulos'),(1173,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','11:41:36',1,'articulos'),(1174,3,'Modificar artículo FTEP9520-25','2022-11-05','11:41:36',1,'articulos'),(1175,3,'Modificar artículo FP9520-25','2022-11-05','11:41:36',1,'articulos'),(1176,3,'Modificar artículo LPI3840-25','2022-11-05','11:41:36',1,'articulos'),(1177,3,'Modificar artículo LPD3840-25','2022-11-05','11:41:36',1,'articulos'),(1178,3,'Modificar artículo BP10038-25','2022-11-05','11:41:36',1,'articulos'),(1179,3,'Modificar artículo TP10028-25','2022-11-05','11:41:36',1,'articulos'),(1180,1,'Crear OF Nro 86','2022-11-05','11:43:33',1,'ordfabcab'),(1181,3,'Modificar artículo FDERLOGO3','2022-11-05','11:43:38',1,'articulos'),(1182,3,'Modificar artículo FREZ1506N','2022-11-05','11:43:38',1,'articulos'),(1183,3,'Modificar artículo VINIL','2022-11-05','11:43:38',1,'articulos'),(1184,3,'Modificar artículo CUEFDER-BK','2022-11-05','11:43:38',1,'articulos'),(1185,3,'Modificar artículo FREZ1506P','2022-11-05','11:43:38',1,'articulos'),(1186,3,'Modificar artículo FREZ206P','2022-11-05','11:43:38',1,'articulos'),(1187,3,'Modificar artículo PARK2505N','2022-11-05','11:43:38',1,'articulos'),(1188,3,'Modificar artículo PARK205N','2022-11-05','11:43:38',1,'articulos'),(1189,3,'Modificar artículo TARM1020','2022-11-05','11:43:38',1,'articulos'),(1190,3,'Modificar artículo MANITFDER-BK','2022-11-05','11:43:38',1,'articulos'),(1191,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','11:43:38',1,'articulos'),(1192,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','11:43:38',1,'articulos'),(1193,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','11:43:38',1,'articulos'),(1194,3,'Modificar artículo FTEP9520-25','2022-11-05','11:43:38',1,'articulos'),(1195,3,'Modificar artículo FP9520-25','2022-11-05','11:43:38',1,'articulos'),(1196,3,'Modificar artículo LPI3840-25','2022-11-05','11:43:38',1,'articulos'),(1197,3,'Modificar artículo LPD3840-25','2022-11-05','11:43:38',1,'articulos'),(1198,3,'Modificar artículo BP10038-25','2022-11-05','11:43:38',1,'articulos'),(1199,3,'Modificar artículo TP10028-25','2022-11-05','11:43:38',1,'articulos'),(1200,3,'Modificar artículo FDERLOGO3','2022-11-05','11:48:45',1,'articulos'),(1201,3,'Modificar artículo FREZ1506N','2022-11-05','11:48:45',1,'articulos'),(1202,3,'Modificar artículo VINIL','2022-11-05','11:48:45',1,'articulos'),(1203,3,'Modificar artículo CUEFDER-BK','2022-11-05','11:48:45',1,'articulos'),(1204,3,'Modificar artículo FREZ1506P','2022-11-05','11:48:45',1,'articulos'),(1205,3,'Modificar artículo FREZ206P','2022-11-05','11:48:45',1,'articulos'),(1206,3,'Modificar artículo PARK2505N','2022-11-05','11:48:45',1,'articulos'),(1207,3,'Modificar artículo PARK205N','2022-11-05','11:48:45',1,'articulos'),(1208,3,'Modificar artículo TARM1020','2022-11-05','11:48:45',1,'articulos'),(1209,3,'Modificar artículo MANITFDER-BK','2022-11-05','11:48:45',1,'articulos'),(1210,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','11:48:45',1,'articulos'),(1211,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','11:48:45',1,'articulos'),(1212,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','11:48:45',1,'articulos'),(1213,3,'Modificar artículo FTEP9520-25','2022-11-05','11:48:45',1,'articulos'),(1214,3,'Modificar artículo FP9520-25','2022-11-05','11:48:45',1,'articulos'),(1215,3,'Modificar artículo LPI3840-25','2022-11-05','11:48:45',1,'articulos'),(1216,3,'Modificar artículo LPD3840-25','2022-11-05','11:48:45',1,'articulos'),(1217,3,'Modificar artículo BP10038-25','2022-11-05','11:48:45',1,'articulos'),(1218,3,'Modificar artículo TP10028-25','2022-11-05','11:48:45',1,'articulos'),(1219,3,'Modificar artículo MBLOGO1','2022-11-05','11:49:36',1,'articulos'),(1220,3,'Modificar artículo FREZ1506N','2022-11-05','11:49:36',1,'articulos'),(1221,3,'Modificar artículo VINIL','2022-11-05','11:49:36',1,'articulos'),(1222,3,'Modificar artículo CUEMBN','2022-11-05','11:49:36',1,'articulos'),(1223,3,'Modificar artículo FREZ1506P','2022-11-05','11:49:36',1,'articulos'),(1224,3,'Modificar artículo CHAPMBHN','2022-11-05','11:49:36',1,'articulos'),(1225,3,'Modificar artículo FREZ206P','2022-11-05','11:49:36',1,'articulos'),(1226,3,'Modificar artículo PARK2505N','2022-11-05','11:49:36',1,'articulos'),(1227,3,'Modificar artículo PARK205N','2022-11-05','11:49:36',1,'articulos'),(1228,3,'Modificar artículo TARM1020','2022-11-05','11:49:36',1,'articulos'),(1229,3,'Modificar artículo MANITMBN','2022-11-05','11:49:36',1,'articulos'),(1230,3,'Modificar artículo ESQUIMBAHN','2022-11-05','11:49:36',1,'articulos'),(1231,3,'Modificar artículo REGAMBHN','2022-11-05','11:49:36',1,'articulos'),(1232,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','11:49:36',1,'articulos'),(1233,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','11:49:36',1,'articulos'),(1234,3,'Modificar artículo FTEP9520-25','2022-11-05','11:49:36',1,'articulos'),(1235,3,'Modificar artículo FP9520-25','2022-11-05','11:49:36',1,'articulos'),(1236,3,'Modificar artículo LPI3840-25','2022-11-05','11:49:36',1,'articulos'),(1237,3,'Modificar artículo LPD3840-25','2022-11-05','11:49:36',1,'articulos'),(1238,3,'Modificar artículo BP10038-25','2022-11-05','11:49:36',1,'articulos'),(1239,3,'Modificar artículo TP10028-25','2022-11-05','11:49:36',1,'articulos'),(1240,3,'Modificar artículo MBLOGO1','2022-11-05','11:49:42',1,'articulos'),(1241,3,'Modificar artículo FREZ1506N','2022-11-05','11:49:42',1,'articulos'),(1242,3,'Modificar artículo VINIL','2022-11-05','11:49:42',1,'articulos'),(1243,3,'Modificar artículo CUEMBN','2022-11-05','11:49:42',1,'articulos'),(1244,3,'Modificar artículo FREZ1506P','2022-11-05','11:49:42',1,'articulos'),(1245,3,'Modificar artículo CHAPMBHN','2022-11-05','11:49:42',1,'articulos'),(1246,3,'Modificar artículo FREZ206P','2022-11-05','11:49:42',1,'articulos'),(1247,3,'Modificar artículo PARK2505N','2022-11-05','11:49:42',1,'articulos'),(1248,3,'Modificar artículo PARK205N','2022-11-05','11:49:42',1,'articulos'),(1249,3,'Modificar artículo TARM1020','2022-11-05','11:49:42',1,'articulos'),(1250,3,'Modificar artículo MANITMBN','2022-11-05','11:49:42',1,'articulos'),(1251,3,'Modificar artículo ESQUIMBAHN','2022-11-05','11:49:42',1,'articulos'),(1252,3,'Modificar artículo REGAMBHN','2022-11-05','11:49:42',1,'articulos'),(1253,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','11:49:42',1,'articulos'),(1254,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','11:49:42',1,'articulos'),(1255,3,'Modificar artículo FTEP9520-25','2022-11-05','11:49:42',1,'articulos'),(1256,3,'Modificar artículo FP9520-25','2022-11-05','11:49:42',1,'articulos'),(1257,3,'Modificar artículo LPI3840-25','2022-11-05','11:49:42',1,'articulos'),(1258,3,'Modificar artículo LPD3840-25','2022-11-05','11:49:42',1,'articulos'),(1259,3,'Modificar artículo BP10038-25','2022-11-05','11:49:42',1,'articulos'),(1260,3,'Modificar artículo TP10028-25','2022-11-05','11:49:42',1,'articulos'),(1261,1,'Crear OF Nro 87','2022-11-05','11:51:36',1,'ordfabcab'),(1262,3,'Modificar artículo FDERLOGO1','2022-11-05','11:51:47',1,'articulos'),(1263,3,'Modificar artículo FREZ1506N','2022-11-05','11:51:47',1,'articulos'),(1264,3,'Modificar artículo VINIL','2022-11-05','11:51:47',1,'articulos'),(1265,3,'Modificar artículo TELAFDER-BD','2022-11-05','11:51:47',1,'articulos'),(1266,3,'Modificar artículo FREZ1506P','2022-11-05','11:51:47',1,'articulos'),(1267,3,'Modificar artículo FREZ206P','2022-11-05','11:51:47',1,'articulos'),(1268,3,'Modificar artículo PARK2505N','2022-11-05','11:51:47',1,'articulos'),(1269,3,'Modificar artículo PARK205N','2022-11-05','11:51:47',1,'articulos'),(1270,3,'Modificar artículo TARM1020','2022-11-05','11:51:47',1,'articulos'),(1271,3,'Modificar artículo MANITFDER-BK','2022-11-05','11:51:47',1,'articulos'),(1272,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','11:51:47',1,'articulos'),(1273,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','11:51:47',1,'articulos'),(1274,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','11:51:47',1,'articulos'),(1275,3,'Modificar artículo FTEP9520-25','2022-11-05','11:51:47',1,'articulos'),(1276,3,'Modificar artículo FP9520-25','2022-11-05','11:51:47',1,'articulos'),(1277,3,'Modificar artículo LPI3840-25','2022-11-05','11:51:47',1,'articulos'),(1278,3,'Modificar artículo LPD3840-25','2022-11-05','11:51:47',1,'articulos'),(1279,3,'Modificar artículo BP10038-25','2022-11-05','11:51:47',1,'articulos'),(1280,3,'Modificar artículo TP10028-25','2022-11-05','11:51:47',1,'articulos'),(1281,3,'Modificar artículo FDERLOGO1','2022-11-05','11:51:50',1,'articulos'),(1282,3,'Modificar artículo FREZ1506N','2022-11-05','11:51:50',1,'articulos'),(1283,3,'Modificar artículo VINIL','2022-11-05','11:51:50',1,'articulos'),(1284,3,'Modificar artículo TELAFDER-BD','2022-11-05','11:51:50',1,'articulos'),(1285,3,'Modificar artículo FREZ1506P','2022-11-05','11:51:50',1,'articulos'),(1286,3,'Modificar artículo FREZ206P','2022-11-05','11:51:50',1,'articulos'),(1287,3,'Modificar artículo PARK2505N','2022-11-05','11:51:50',1,'articulos'),(1288,3,'Modificar artículo PARK205N','2022-11-05','11:51:50',1,'articulos'),(1289,3,'Modificar artículo TARM1020','2022-11-05','11:51:50',1,'articulos'),(1290,3,'Modificar artículo MANITFDER-BK','2022-11-05','11:51:50',1,'articulos'),(1291,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','11:51:50',1,'articulos'),(1292,3,'Modificar artículo TOPFONP20-25x25','2022-11-05','11:51:50',1,'articulos'),(1293,3,'Modificar artículo TOPFREP20-25x25','2022-11-05','11:51:50',1,'articulos'),(1294,3,'Modificar artículo FTEP9520-25','2022-11-05','11:51:50',1,'articulos'),(1295,3,'Modificar artículo FP9520-25','2022-11-05','11:51:50',1,'articulos'),(1296,3,'Modificar artículo LPI3840-25','2022-11-05','11:51:50',1,'articulos'),(1297,3,'Modificar artículo LPD3840-25','2022-11-05','11:51:50',1,'articulos'),(1298,3,'Modificar artículo BP10038-25','2022-11-05','11:51:50',1,'articulos'),(1299,3,'Modificar artículo TP10028-25','2022-11-05','11:51:50',1,'articulos'),(1300,1,'Crear OF Nro 88','2022-11-05','11:52:19',1,'ordfabcab'),(1301,3,'Modificar artículo FDERLOGO2','2022-11-05','11:52:22',1,'articulos'),(1302,3,'Modificar artículo FREZ1506N','2022-11-05','11:52:22',1,'articulos'),(1303,3,'Modificar artículo VINIL','2022-11-05','11:52:22',1,'articulos'),(1304,3,'Modificar artículo CUEFDER-BK','2022-11-05','11:52:22',1,'articulos'),(1305,3,'Modificar artículo FREZ1506P','2022-11-05','11:52:22',1,'articulos'),(1306,3,'Modificar artículo CHAPFDER-HR','2022-11-05','11:52:22',1,'articulos'),(1307,3,'Modificar artículo FREZ206P','2022-11-05','11:52:22',1,'articulos'),(1308,3,'Modificar artículo PARK2505N','2022-11-05','11:52:22',1,'articulos'),(1309,3,'Modificar artículo PARK205N','2022-11-05','11:52:22',1,'articulos'),(1310,3,'Modificar artículo TARM1020','2022-11-05','11:52:22',1,'articulos'),(1311,3,'Modificar artículo MANITFDER-BK','2022-11-05','11:52:22',1,'articulos'),(1312,3,'Modificar artículo ESQUIFDERA-BK','2022-11-05','11:52:22',1,'articulos'),(1313,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','11:52:22',1,'articulos'),(1314,3,'Modificar artículo TOPFONC20-25x25','2022-11-05','11:52:22',1,'articulos'),(1315,3,'Modificar artículo TOPFREC20-25x25','2022-11-05','11:52:22',1,'articulos'),(1316,3,'Modificar artículo FTEC9520-25','2022-11-05','11:52:22',1,'articulos'),(1317,3,'Modificar artículo FC9520-25','2022-11-05','11:52:22',1,'articulos'),(1318,3,'Modificar artículo LCI3840-25','2022-11-05','11:52:22',1,'articulos'),(1319,3,'Modificar artículo LCD3840-25','2022-11-05','11:52:22',1,'articulos'),(1320,3,'Modificar artículo BC10038-25','2022-11-05','11:52:22',1,'articulos'),(1321,3,'Modificar artículo TC10028-25','2022-11-05','11:52:22',1,'articulos'),(1322,3,'Modificar artículo FDERLOGO2','2022-11-05','11:52:25',1,'articulos'),(1323,3,'Modificar artículo FREZ1506N','2022-11-05','11:52:25',1,'articulos'),(1324,3,'Modificar artículo VINIL','2022-11-05','11:52:25',1,'articulos'),(1325,3,'Modificar artículo CUEFDER-BK','2022-11-05','11:52:25',1,'articulos'),(1326,3,'Modificar artículo FREZ1506P','2022-11-05','11:52:25',1,'articulos'),(1327,3,'Modificar artículo CHAPFDER-HR','2022-11-05','11:52:25',1,'articulos'),(1328,3,'Modificar artículo FREZ206P','2022-11-05','11:52:25',1,'articulos'),(1329,3,'Modificar artículo PARK2505N','2022-11-05','11:52:25',1,'articulos'),(1330,3,'Modificar artículo PARK205N','2022-11-05','11:52:25',1,'articulos'),(1331,3,'Modificar artículo TARM1020','2022-11-05','11:52:25',1,'articulos'),(1332,3,'Modificar artículo MANITFDER-BK','2022-11-05','11:52:25',1,'articulos'),(1333,3,'Modificar artículo ESQUIFDERA-BK','2022-11-05','11:52:25',1,'articulos'),(1334,3,'Modificar artículo REGAFDERSTD-BKN','2022-11-05','11:52:25',1,'articulos'),(1335,3,'Modificar artículo TOPFONC20-25x25','2022-11-05','11:52:25',1,'articulos'),(1336,3,'Modificar artículo TOPFREC20-25x25','2022-11-05','11:52:25',1,'articulos'),(1337,3,'Modificar artículo FTEC9520-25','2022-11-05','11:52:25',1,'articulos'),(1338,3,'Modificar artículo FC9520-25','2022-11-05','11:52:25',1,'articulos'),(1339,3,'Modificar artículo LCI3840-25','2022-11-05','11:52:25',1,'articulos'),(1340,3,'Modificar artículo LCD3840-25','2022-11-05','11:52:25',1,'articulos'),(1341,3,'Modificar artículo BC10038-25','2022-11-05','11:52:25',1,'articulos'),(1342,3,'Modificar artículo TC10028-25','2022-11-05','11:52:25',1,'articulos');
/*!40000 ALTER TABLE `audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audmov`
--

DROP TABLE IF EXISTS `audmov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audmov` (
  `idMov` int NOT NULL,
  `Movimiento` varchar(15) NOT NULL,
  PRIMARY KEY (`idMov`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audmov`
--

LOCK TABLES `audmov` WRITE;
/*!40000 ALTER TABLE `audmov` DISABLE KEYS */;
INSERT INTO `audmov` VALUES (1,'ALTA'),(2,'BAJA'),(3,'MODIFICACIÓN');
/*!40000 ALTER TABLE `audmov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL,
  `Nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `marca` varchar(45) NOT NULL,
  `fecAlta` date NOT NULL,
  `calle` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `nro` int NOT NULL,
  `codPostal` char(15) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `localidad` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idProv` int NOT NULL,
  `telefono1` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `telefono2` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `telefono3` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `correo` varchar(35) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ultTrx` date DEFAULT NULL,
  `idUsr` int DEFAULT NULL,
  `estado` char(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `fk_clientes_provincias1_idx` (`idProv`),
  KEY `fk_clientes_usuario1_idx` (`idUsr`),
  CONSTRAINT `fk_clientes_provincias1` FOREIGN KEY (`idProv`) REFERENCES `provincias` (`idProv`),
  CONSTRAINT `fk_clientes_usuario1` FOREIGN KEY (`idUsr`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Fender LLC','Fender','2015-01-01','Fleming ',1234,'1234','Florida',1,'1111-2222','1111-2223','1111-2224','fenderllc@fender.com',NULL,1,'A'),(2,'Marshall Inc','Marshall','2014-10-02','Corrientes',2233,'1400','CABA',1,'2222-1111','2222-1112','2222-1113','Marshall@marshall.com',NULL,1,'A'),(3,'Mesa LLC','Mesa Boogie','2014-08-01','Larrea',2211,'1405','CABA',1,'3333-2211','3333-2222','','mesa@mesa.com',NULL,1,'A'),(4,'Soldano','Soldano','2019-10-10','Mitre',4550,'2020','San Isidro',1,'1111-2254','1111-8989','','soldano@soldano.com',NULL,1,'A'),(5,'Bogner Amp Inc','Bogner','2018-10-09','Cordoba',6080,'1300','CABA',1,'2223-5454','','','bogneramp@bogneramp.com',NULL,1,'A'),(6,'Rivera Music LLC','Rivera','2017-01-10','Pasteur',1200,'1344','CABA',1,'2233-4455','2233-5544','','riverainfo@rivera.com',NULL,1,'A');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `IDEmpleado` int NOT NULL,
  `nomEmp` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sexEmp` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fecNac` date NOT NULL,
  `fecIncorporacion` date DEFAULT NULL,
  `salEmp` decimal(10,0) NOT NULL,
  `cargoEmp` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `codSector` varchar(10) NOT NULL,
  `estado` char(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'A',
  `jefeID` int DEFAULT NULL,
  PRIMARY KEY (`IDEmpleado`),
  KEY `FK_Sector` (`codSector`),
  KEY `idEmpleado` (`IDEmpleado`),
  CONSTRAINT `FK_codSector` FOREIGN KEY (`codSector`) REFERENCES `sectores` (`codSector`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Julian Rodriguez','M','1980-02-17','2007-03-27',30000,'Vendedor','VEN','A',2),(2,'Esteban Quito','M','1990-02-28','2008-07-21',90000,'Jefe de ventas','VEN','A',NULL),(3,'Carlos Rodriguez','M','1990-02-28','2008-07-21',85000,'Acopiador','PLAN','A',4),(4,'Joaquín Hernandez','M','1990-02-25','2007-03-27',150000,'Jefe de planta','PLAN','A',NULL),(5,'Martin Gutierrez','M','1970-04-21','2007-07-22',30000,'Vendedor','VEN','A',2),(6,'Sebastian Bussetto','M','1983-06-21','2008-07-22',30000,'Vendedor','VEN','A',2);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturacab`
--

DROP TABLE IF EXISTS `facturacab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturacab` (
  `idfacturacab` int NOT NULL,
  `fecha` date NOT NULL,
  `idCliente` int NOT NULL,
  `idVendedor` int NOT NULL,
  `fechaEntrega` date NOT NULL,
  `idRemito` int NOT NULL,
  `observaciones` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `descuento` decimal(8,2) NOT NULL,
  `neto` decimal(8,2) NOT NULL,
  `iva` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `idUsr` int NOT NULL,
  PRIMARY KEY (`idfacturacab`),
  KEY `FK_idCliente_idx` (`idCliente`),
  KEY `FK_idVendedor_idx` (`idVendedor`),
  KEY `FK_idRemito_idx` (`idRemito`),
  KEY `FK_idUsr_FacCab_idx` (`idUsr`),
  CONSTRAINT `FK_idClienteFacCab` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `FK_idRemitoFacCab` FOREIGN KEY (`idRemito`) REFERENCES `remitocab` (`idremitocab`),
  CONSTRAINT `FK_idUsr_FacCab` FOREIGN KEY (`idUsr`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `FK_idVendedorFacCab` FOREIGN KEY (`idVendedor`) REFERENCES `empleado` (`IDEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturacab`
--

LOCK TABLES `facturacab` WRITE;
/*!40000 ALTER TABLE `facturacab` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturacab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturadet`
--

DROP TABLE IF EXISTS `facturadet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturadet` (
  `idfacturadet` int NOT NULL,
  `idfacturacab` int default null,
  `item` int NOT NULL,
  `idProd` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cantidad` int NOT NULL,
  `descripcion` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `importe` decimal(10,0) NOT NULL,
  PRIMARY KEY (`idfacturadet`),
  KEY `FK_idfacturacab_idx` (`idfacturacab`),
  KEY `FK_idProd_idx` (`idProd`),
  CONSTRAINT `FK_idfacturacab` FOREIGN KEY (`idfacturacab`) REFERENCES `facturacab` (`idfacturacab`),
  CONSTRAINT `FK_idProdFacDet` FOREIGN KEY (`idProd`) REFERENCES `productos` (`idProd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturadet`
--

LOCK TABLES `facturadet` WRITE;
/*!40000 ALTER TABLE `facturadet` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturadet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificaciones`
--

DROP TABLE IF EXISTS `notificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificaciones` (
  `idNotif` int NOT NULL AUTO_INCREMENT,
  `idOrdFab` int NOT NULL,
  `idProd` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `codProceso` varchar(10) NOT NULL,
  `item` int NOT NULL,
  `operario` int NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`idNotif`),
  KEY `FK_idProd_idx` (`idProd`) /*!80000 INVISIBLE */,
  KEY `FK_idProcesoNot_idx` (`codProceso`),
  KEY `FK_idOperario_idx` (`operario`),
  KEY `Fk_idOrdFabCabNot_idx` (`idOrdFab`),
  CONSTRAINT `FK_idOperario` FOREIGN KEY (`operario`) REFERENCES `empleado` (`IDEmpleado`),
  CONSTRAINT `Fk_idOrdFabCabNot` FOREIGN KEY (`idOrdFab`) REFERENCES `ordfabcab` (`idordFabcab`),
  CONSTRAINT `FK_idProcesoNot` FOREIGN KEY (`codProceso`) REFERENCES `procesos` (`idCt`),
  CONSTRAINT `FK_idProdNot` FOREIGN KEY (`idProd`) REFERENCES `productos` (`idProd`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificaciones`
--

LOCK TABLES `notificaciones` WRITE;
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
INSERT INTO `notificaciones` VALUES (1,1,'MVCBO1','2022-03-15','09:30:00','AC1',1,3,2),(2,1,'MVCBO1','2022-03-15','13:30:00','EN1',1,2,2),(3,1,'MVCAB1+','2022-03-22','09:30:00','AC1',2,3,5),(4,1,'MVCBO1','2022-08-26','21:33:04','AC1',1,1,1),(5,1,'MVCBO1','2022-08-27','08:43:48','EN1',1,1,7),(6,1,'MVCBO1','2022-08-27','09:02:37','AC1',1,1,7);
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordcomcab`
--

DROP TABLE IF EXISTS `ordcomcab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordcomcab` (
  `idordComcab` int NOT NULL,
  `idProveedor` int NOT NULL,
  `formaPago` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idOrdpedido` int NOT NULL,
  `solicitante` int NOT NULL,
  `idUsuario` int NOT NULL,
  `observaciones` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `estado` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `total` decimal(10,0) NOT NULL,
  PRIMARY KEY (`idordComcab`),
  KEY `FK_idProveedor` (`idProveedor`) /*!80000 INVISIBLE */,
  KEY `FK_idOrdpedido` (`idOrdpedido`) /*!80000 INVISIBLE */,
  KEY `FK_idSolicitante` (`solicitante`) /*!80000 INVISIBLE */,
  KEY `Fk_idCreador` (`idUsuario`) /*!80000 INVISIBLE */,
  CONSTRAINT `FK_idCreadorComCab` FOREIGN KEY (`idUsuario`) REFERENCES `empleado` (`IDEmpleado`),
  CONSTRAINT `FK_idOrdpedidoComCab` FOREIGN KEY (`idOrdpedido`) REFERENCES `ordpedidocab` (`idordPedidocab`),
  CONSTRAINT `FK_idProveedorComCab` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idProveedor`),
  CONSTRAINT `FK_idSolicitanteComCab` FOREIGN KEY (`solicitante`) REFERENCES `empleado` (`IDEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordcomcab`
--

LOCK TABLES `ordcomcab` WRITE;
/*!40000 ALTER TABLE `ordcomcab` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordcomcab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordcomdet`
--

DROP TABLE IF EXISTS `ordcomdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordcomdet` (
  `idordComdet` int NOT NULL,
  `idordComcab` int default null,
  `item` int NOT NULL,
  `idArticulo` varchar(20) NOT NULL,
  `cantidad` int NOT NULL,
  `descripcion` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `iva` decimal(10,0) default null,
  `punitario` decimal(10,0) default null,
  `importe` decimal(10,0) NOT NULL,
  PRIMARY KEY (`idordComdet`),
  KEY `FK_idComcab_idx` (`idordComcab`),
  KEY `FK_idArticulo_idx` (`idArticulo`),
  CONSTRAINT `FK_idArticulo` FOREIGN KEY (`idArticulo`) REFERENCES `articulos` (`idArticulo`),
  CONSTRAINT `FK_idComcab` FOREIGN KEY (`idordComcab`) REFERENCES `ordcomcab` (`idordComcab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordcomdet`
--

LOCK TABLES `ordcomdet` WRITE;
/*!40000 ALTER TABLE `ordcomdet` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordcomdet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordfabcab`
--

DROP TABLE IF EXISTS `ordfabcab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordfabcab` (
  `idordFabcab` int NOT NULL,
  `fecha` date NOT NULL,
  `fechaEntrega` date NOT NULL,
  `idVendedor` int NOT NULL,
  `idCliente` int NOT NULL,
  `formaEntrega` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tipoPago` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `observaciones` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `idUsr` int NOT NULL,
  PRIMARY KEY (`idordFabcab`),
  KEY `FK_idVendedor_idx` (`idVendedor`),
  KEY `FK_idCliente_idx` (`idCliente`),
  KEY `FK_idUsr_OF_idx` (`idUsr`),
  CONSTRAINT `FK_idCliente_OF` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `FK_idUsr_OF` FOREIGN KEY (`idUsr`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `FK_idVendedor_OF` FOREIGN KEY (`idVendedor`) REFERENCES `empleado` (`IDEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordfabcab`
--

LOCK TABLES `ordfabcab` WRITE;
/*!40000 ALTER TABLE `ordfabcab` DISABLE KEYS */;
INSERT INTO `ordfabcab` VALUES (1,'2022-03-12','2022-04-15',1,3,'Retira el cliente','CtaCte',NULL,1),(2,'2022-09-10','2022-09-10',1,3,'No se','CtaCte',NULL,1),(3,'2022-10-14','2022-10-14',1,2,'Envío','CtaCte','',1),(4,'2022-10-21','2022-10-22',1,3,'Retira el cliente','CtaCte','',1),(5,'2022-10-21','2022-10-22',1,3,'Retira el cliente','CtaCte','',1),(6,'2022-10-21','2022-10-22',1,3,'Retira el cliente','CtaCte','',1),(7,'2022-10-21','2022-10-22',1,3,'Retira el cliente','CtaCte','',1),(8,'2022-10-21','2022-10-22',1,3,'Retira el cliente','CtaCte','',1),(9,'2022-10-21','2022-10-22',1,3,'Retira el cliente','CtaCte','',1),(10,'2022-10-21','2022-10-22',1,3,'Retira el cliente','CtaCte','',1),(11,'2022-10-21','2022-10-22',1,3,'Retira el cliente','CtaCte','',1),(12,'2022-10-21','2022-10-22',1,3,'Retira el cliente','CtaCte','',1),(13,'2022-10-21','2022-10-22',1,3,'Envío','CtaCte','',1),(14,'2022-10-21','2022-10-22',1,3,'Envío','CtaCte','',1),(15,'2022-10-21','2022-10-22',1,3,'Retira el cliente','CtaCte','',1),(16,'2022-10-21','2022-10-22',1,3,'Retira el cliente','CtaCte','',1),(17,'2022-10-22','2022-10-23',1,3,'Retira el cliente','CtaCte','',1),(18,'2022-10-22','2022-10-23',1,3,'Retira el cliente','CtaCte','',1),(19,'2022-10-22','2022-10-23',1,3,'Retira el cliente','CtaCte','',1),(20,'2022-10-22','2022-10-23',1,3,'Retira el cliente','CtaCte','',1),(21,'2022-10-22','2022-10-23',1,3,'Retira el cliente','CtaCte','',1),(22,'2022-10-22','2022-10-23',1,1,'Retira el cliente','CtaCte','',1),(23,'2022-10-22','2022-10-23',1,1,'Envío','CtaCte','',1),(24,'2022-10-22','2022-10-23',1,3,'Retira el cliente','CtaCte','',1),(25,'2022-10-22','2022-10-23',1,3,'Retira el cliente','CtaCte','',1),(26,'2022-10-22','2022-10-23',1,3,'Envío','CtaCte','',1),(27,'2022-10-22','2022-10-23',1,3,'Retira el cliente','CtaCte','',1),(28,'2022-10-22','2022-10-23',1,3,'Retira el cliente','CtaCte','',1),(29,'2022-10-22','2022-10-23',1,3,'Retira el cliente','CtaCte','',1),(30,'2022-10-22','2022-10-23',1,3,'Retira el cliente','CtaCte','',1),(31,'2022-10-22','2022-10-23',1,2,'Retira el cliente','CtaCte','',1),(32,'2022-10-22','2022-10-23',1,3,'Retira el cliente','CtaCte','',1),(33,'2022-10-22','2022-10-23',1,3,'Retira el cliente','CtaCte','',1),(34,'2022-10-22','2022-10-23',1,4,'Envío','CtaCte','',1),(35,'2022-10-22','2022-10-23',1,3,'Retira el cliente','CtaCte','',1),(36,'2022-10-22','2022-10-23',1,3,'Retira el cliente','CtaCte','',1),(37,'2022-10-22','2022-10-23',1,3,'Retira el cliente','CtaCte','',1),(38,'2022-10-22','2022-10-23',1,1,'Retira el cliente','CtaCte','',1),(39,'2022-10-22','2022-10-23',1,1,'Retira el cliente','CtaCte','',1),(40,'2022-10-22','2022-10-23',1,3,'Retira el cliente','CtaCte','',1),(41,'2022-11-05','2022-11-06',5,5,'Envío','CtaCte','',2),(42,'2022-11-05','2022-11-22',6,2,'Retira el cliente','CtaCte','',2),(43,'2022-11-05','2022-11-16',1,3,'Envío','CtaCte','',2),(44,'2022-11-05','2022-11-10',5,2,'Envío','CtaCte','',1),(45,'2022-11-05','2022-11-15',5,1,'Envío','CtaCte','',1),(46,'2022-11-05','2022-11-23',5,2,'Retira el cliente','CtaCte','',2),(47,'2022-11-05','2022-11-16',5,3,'Retira el cliente','CtaCte','',1),(48,'2022-11-05','2022-11-11',1,4,'Envío','CtaCte','',2),(49,'2022-11-05','2022-11-06',6,3,'Retira el cliente','CtaCte','',2),(50,'2022-11-05','2022-11-06',5,3,'Retira el cliente','CtaCte','',1),(51,'2022-11-05','2022-11-06',1,3,'Retira el cliente','CtaCte','',1),(52,'2022-11-05','2022-11-08',6,3,'Retira el cliente','CtaCte','',2),(53,'2022-11-05','2022-11-06',5,3,'Envío','CtaCte','',2),(54,'2022-11-05','2022-11-06',5,3,'Retira el cliente','CtaCte','',1),(55,'2022-11-05','2022-11-22',5,3,'Retira el cliente','CtaCte','',1),(56,'2022-11-05','2022-11-29',1,3,'Retira el cliente','CtaCte','',2),(57,'2022-11-05','2022-11-06',5,2,'Retira el cliente','CtaCte','',1),(58,'2022-11-05','2022-11-06',5,2,'Envío','CtaCte','',1),(59,'2022-11-05','2022-11-06',5,2,'Retira el cliente','CtaCte','',2),(60,'2022-11-05','2022-11-06',5,3,'Retira el cliente','CtaCte','',2),(61,'2022-11-05','2022-11-22',1,3,'Retira el cliente','CtaCte','',2),(62,'2022-11-05','2022-11-06',5,3,'Retira el cliente','CtaCte','',2),(63,'2022-11-05','2022-11-16',5,3,'Retira el cliente','CtaCte','',1),(64,'2022-11-05','2022-11-07',5,3,'Retira el cliente','CtaCte','',1),(65,'2022-11-05','2022-11-08',5,3,'Retira el cliente','CtaCte','',2),(66,'2022-11-05','2022-11-11',5,1,'Retira el cliente','CtaCte','',2),(67,'2022-11-05','2022-11-14',1,3,'Retira el cliente','CtaCte','',1),(68,'2022-11-05','2022-11-22',1,2,'Retira el cliente','CtaCte','',2),(69,'2022-11-05','2022-11-10',1,1,'Envío','CtaCte','',1),(70,'2022-11-05','2022-11-15',1,1,'Retira el cliente','CtaCte','',2),(71,'2022-11-05','2022-11-17',5,3,'Retira el cliente','CtaCte','',1),(72,'2022-11-05','2022-11-17',1,1,'Retira el cliente','CtaCte','',1),(73,'2022-11-05','2022-11-22',1,3,'Envío','CtaCte','',2),(74,'2022-11-05','2022-11-06',5,2,'Retira el cliente','CtaCte','',1),(75,'2022-11-05','2022-11-09',1,1,'Retira el cliente','CtaCte','',1),(76,'2022-11-05','2022-11-09',1,3,'Retira el cliente','CtaCte','',1),(77,'2022-11-05','2022-11-08',1,3,'Retira el cliente','CtaCte','',1),(78,'2022-11-05','2022-11-21',1,3,'Envío','CtaCte','',1),(79,'2022-11-05','2022-11-09',5,3,'Retira el cliente','CtaCte','',1),(80,'2022-11-05','2022-11-24',5,1,'Retira el cliente','CtaCte','',1),(81,'2022-11-05','2022-11-20',1,1,'Retira el cliente','CtaCte','',1),(82,'2022-11-05','2022-11-07',1,3,'Retira el cliente','CtaCte','',1),(83,'2022-11-05','2022-11-07',6,1,'Envío','CtaCte','',1),(84,'2022-11-05','2022-11-15',5,1,'Retira el cliente','CtaCte','',1),(85,'2022-11-05','2022-11-28',1,1,'Envío','CtaCte','',2),(86,'2022-11-05','2022-11-09',1,1,'Envío','CtaCte','',1),(87,'2022-11-05','2022-11-09',5,2,'Envío','CtaCte','',1),(88,'2022-11-05','2022-11-10',1,1,'Retira el cliente','CtaCte','',1);
/*!40000 ALTER TABLE `ordfabcab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordfabdet`
--

DROP TABLE IF EXISTS `ordfabdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordfabdet` (
  `idordfabdet` int NOT NULL AUTO_INCREMENT,
  `idordfabcab` int NOT NULL,
  `item` int NOT NULL,
  `idProd` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cantidad` int NOT NULL,
  `descripcion` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `estado` varchar(5) NOT NULL,
  PRIMARY KEY (`idordfabdet`),
  KEY `FK_idProd` (`idProd`) /*!80000 INVISIBLE */,
  KEY `FK_idordfabcab_idx` (`idordfabcab`),
  CONSTRAINT `FK_idordfabcab2` FOREIGN KEY (`idordfabcab`) REFERENCES `ordfabcab` (`idordFabcab`),
  CONSTRAINT `FK_idProdVenDet2` FOREIGN KEY (`idProd`) REFERENCES `productos` (`idProd`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordfabdet`
--

LOCK TABLES `ordfabdet` WRITE;
/*!40000 ALTER TABLE `ordfabdet` DISABLE KEYS */;
INSERT INTO `ordfabdet` VALUES (1,1,1,'MVCBO1',10,'MARK V - Combo1x12','OFP'),(2,1,2,'MVCAB1+',15,'MARK V - Cabezal','OFP'),(3,1,3,'CT1X12WIDE23',5,'California Tweed1x12 CALIFORNIA TWEED 23','OFP'),(4,7,1,'CT1X12WIDE23',2,'California Tweed1X12 CALIFORNIA TWEED 23','OFP'),(5,8,1,'CT1X12WIDE23',2,'California Tweed1X12 CALIFORNIA TWEED 23','OFP'),(6,9,1,'MVCAB1+',3,'MARK V+ - Head','OFP'),(7,10,1,'CT1X12WIDE23',2,'California Tweed1X12 CALIFORNIA TWEED 23','OFP'),(8,11,1,'MVCAB1+',3,'MARK V+ - Head','OFP'),(9,12,1,'CT1X12WIDE23',2,'California Tweed1X12 CALIFORNIA TWEED 23','OFP'),(10,13,1,'MVCAB1+',3,'MARK V+ - Head','OFP'),(11,14,1,'MVCBO1',1,'MARK V - Combo 1x12','OFP'),(12,14,2,'MVCAB1+',1,'MARK V+ - Head','OFP'),(13,15,1,'MVCBO1',1,'MARK V - Combo 1x12','OFP'),(14,16,1,'MVCAB1+',3,'MARK V+ - Head','OFP');
/*!40000 ALTER TABLE `ordfabdet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordpedidocab`
--

DROP TABLE IF EXISTS `ordpedidocab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordpedidocab` (
  `idordPedidocab` int NOT NULL,
  `fecha` date NOT NULL,
  `fechaEntrega` date NOT NULL,
  `solicitante` int NOT NULL,
  `nomSector` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `observaciones` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `idUsr` varchar(45) NOT NULL,
  PRIMARY KEY (`idordPedidocab`),
  KEY `FK_idSolicitante` (`solicitante`),
  CONSTRAINT `FK_idSolicitante` FOREIGN KEY (`solicitante`) REFERENCES `empleado` (`IDEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordpedidocab`
--

LOCK TABLES `ordpedidocab` WRITE;
/*!40000 ALTER TABLE `ordpedidocab` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordpedidocab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordpedidodet`
--

DROP TABLE IF EXISTS `ordpedidodet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordpedidodet` (
  `idordPedidodet` int NOT NULL,
  `idordPedidocab` int NOT NULL,
  `item` int NOT NULL,
  `idArticulo` varchar(20) NOT NULL,
  `cantidad` int NOT NULL,
  `descripcion` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idordPedidodet`),
  KEY `FK_idArticulo` (`idArticulo`) /*!80000 INVISIBLE */,
  KEY `FK_idordPedidocab` (`idordPedidocab`),
  CONSTRAINT `FK_idArticuloPedDet` FOREIGN KEY (`idArticulo`) REFERENCES `articulos` (`idArticulo`),
  CONSTRAINT `FK_idordPedidocabPedDet` FOREIGN KEY (`idordPedidocab`) REFERENCES `ordpedidocab` (`idordPedidocab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordpedidodet`
--

LOCK TABLES `ordpedidodet` WRITE;
/*!40000 ALTER TABLE `ordpedidodet` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordpedidodet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordventacab`
--

DROP TABLE IF EXISTS `ordventacab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordventacab` (
  `idordVentacab` int NOT NULL,
  `fecha` date NOT NULL,
  `fechaEntrega` date NOT NULL,
  `idVendedor` int NOT NULL,
  `idCliente` int NOT NULL,
  `idUsr` int NOT NULL,
  `formaEntrega` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tipoPago` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `observaciones` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `descuento` decimal(8,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  PRIMARY KEY (`idordVentacab`),
  KEY `FK_idVendedor_idx` (`idVendedor`),
  KEY `FK_idCliente_idx` (`idCliente`),
  KEY `FK_idUsrVenCab_idx` (`idUsr`),
  CONSTRAINT `FK_idClienteVenCab` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `FK_idUsrVenCab` FOREIGN KEY (`idUsr`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `FK_idVendedorVenCab` FOREIGN KEY (`idVendedor`) REFERENCES `empleado` (`IDEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordventacab`
--

LOCK TABLES `ordventacab` WRITE;
/*!40000 ALTER TABLE `ordventacab` DISABLE KEYS */;
INSERT INTO `ordventacab` VALUES (1,'2022-03-12','2022-04-15',1,3,1,'Retira el cliente','CtaCte','El ciente acordó la entrega parcial de los items.',55.50,5.55,49.95),(2,'2022-10-21','2022-10-22',1,3,1,'Retira el cliente','CtaCte','',408044.00,40.00,244826.40),(3,'2022-10-21','2022-10-22',1,3,1,'Retira el cliente','CtaCte','',4004.00,40.00,2402.40),(4,'2022-10-21','2022-10-22',1,3,1,'Retira el cliente','CtaCte','',6006.00,40.00,3603.60),(5,'2022-10-21','2022-10-22',1,3,1,'Retira el cliente','CtaCte','',606060.00,40.00,363636.00),(6,'2022-10-21','2022-10-22',1,3,1,'Retira el cliente','CtaCte','',4004.00,0.00,4004.00),(7,'2022-10-21','2022-10-22',1,3,1,'Retira el cliente','CtaCte','',606060.00,0.00,606060.00),(8,'2022-10-21','2022-10-22',1,3,1,'Retira el cliente','CtaCte','',4004.00,0.00,4004.00),(9,'2022-10-21','2022-10-22',1,3,1,'Envío','CtaCte','',606060.00,0.00,606060.00),(10,'2022-10-21','2022-10-22',1,3,1,'Envío','CtaCte','',404040.00,0.00,404040.00),(11,'2022-10-21','2022-10-22',1,3,1,'Retira el cliente','CtaCte','',202020.00,0.00,202020.00),(12,'2022-10-21','2022-10-22',1,3,1,'Retira el cliente','CtaCte','',303030.00,0.00,303030.00),(13,'2022-10-22','2022-10-23',1,3,1,'Retira el cliente','CtaCte','',101010.00,0.00,101010.00),(14,'2022-10-22','2022-10-23',1,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(15,'2022-10-22','2022-10-23',1,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(16,'2022-10-22','2022-10-23',1,1,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(17,'2022-10-22','2022-10-23',1,1,1,'Envío','CtaCte','',0.00,0.00,0.00),(18,'2022-10-22','2022-10-23',1,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(19,'2022-10-22','2022-10-23',1,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(20,'2022-10-22','2022-10-23',1,3,1,'Envío','CtaCte','',0.00,0.00,0.00),(21,'2022-10-22','2022-10-23',1,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(22,'2022-10-22','2022-10-23',1,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(23,'2022-10-22','2022-10-23',1,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(24,'2022-10-22','2022-10-23',1,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(25,'2022-10-22','2022-10-23',1,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(26,'2022-10-22','2022-10-23',1,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(27,'2022-10-22','2022-10-23',1,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(28,'2022-10-22','2022-10-23',1,3,1,'Envío','CtaCte','',0.00,0.00,0.00),(29,'2022-10-22','2022-10-23',1,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(30,'2022-10-22','2022-10-23',1,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(31,'2022-10-22','2022-10-23',1,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(32,'2022-10-22','2022-10-23',1,1,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(33,'2022-10-22','2022-10-23',1,1,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(34,'2022-10-22','2022-10-23',1,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(35,'2022-11-05','2022-11-06',5,5,2,'Envío','CtaCte','',0.00,0.00,0.00),(36,'2022-11-05','2022-11-22',6,2,2,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(37,'2022-11-05','2022-11-16',1,3,2,'Envío','CtaCte','',0.00,0.00,0.00),(38,'2022-11-05','2022-11-10',5,3,1,'Envío','CtaCte','',0.00,0.00,0.00),(39,'2022-11-05','2022-11-15',5,1,1,'Envío','CtaCte','',0.00,0.00,0.00),(40,'2022-11-05','2022-11-23',5,3,2,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(41,'2022-11-05','2022-11-16',5,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(42,'2022-11-05','2022-11-11',1,3,2,'Envío','CtaCte','',0.00,0.00,0.00),(43,'2022-11-05','2022-11-06',6,3,2,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(44,'2022-11-05','2022-11-06',5,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(45,'2022-11-05','2022-11-06',1,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(46,'2022-11-05','2022-11-08',6,3,2,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(47,'2022-11-05','2022-11-06',5,3,2,'Envío','CtaCte','',0.00,0.00,0.00),(48,'2022-11-05','2022-11-06',5,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(49,'2022-11-05','2022-11-22',5,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(50,'2022-11-05','2022-11-29',5,6,2,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(51,'2022-11-05','2022-11-06',5,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(52,'2022-11-05','2022-11-14',1,1,1,'Envío','CtaCte','',0.00,0.00,0.00),(53,'2022-11-05','2022-11-06',5,1,2,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(54,'2022-11-05','2022-11-06',5,3,2,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(55,'2022-11-05','2022-11-22',1,3,2,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(56,'2022-11-05','2022-11-06',5,3,2,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(57,'2022-11-05','2022-11-16',5,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(58,'2022-11-05','2022-11-07',5,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(59,'2022-11-05','2022-11-08',5,3,2,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(60,'2022-11-05','2022-11-11',5,1,2,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(61,'2022-11-05','2022-11-14',1,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(62,'2022-11-05','2022-11-09',5,3,2,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(63,'2022-11-05','2022-11-10',1,1,1,'Envío','CtaCte','',0.00,0.00,0.00),(64,'2022-11-05','2022-11-15',1,1,2,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(65,'2022-11-05','2022-11-17',5,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(66,'2022-11-05','2022-11-17',1,1,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(67,'2022-11-05','2022-11-06',1,1,2,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(68,'2022-11-05','2022-11-12',5,1,2,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(69,'2022-11-05','2022-11-09',1,1,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(70,'2022-11-05','2022-11-09',1,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(71,'2022-11-05','2022-11-08',1,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(72,'2022-11-05','2022-11-21',1,1,1,'Envío','CtaCte','',0.00,0.00,0.00),(73,'2022-11-05','2022-11-09',5,3,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(74,'2022-11-05','2022-11-24',5,1,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(75,'2022-11-05','2022-11-20',1,1,1,'Retira el cliente','CtaCte','',0.00,0.00,0.00),(76,'2022-11-05','2022-11-07',1,3,1,'Retira el cliente','CtaCte','',1001.00,1001.00,-9019.01),(77,'2022-11-05','2022-11-07',6,1,1,'Envío','CtaCte','',1001.00,1001.00,-9019.01),(78,'2022-11-05','2022-11-15',5,1,1,'Retira el cliente','CtaCte','',139194.17,139194.17,-193610975.45),(79,'2022-11-05','2022-11-08',5,3,2,'Retira el cliente','CtaCte','',101010.00,101010.00,-101929191.00),(80,'2022-11-05','2022-11-09',1,3,2,'Envío','CtaCte','',101010.00,101010.00,-101929191.00),(81,'2022-11-05','2022-11-09',5,1,1,'Envío','CtaCte','',278388.34,278388.34,-774722290.14),(82,'2022-11-05','2022-11-10',1,1,1,'Retira el cliente','CtaCte','',1001.00,1001.00,-9019.01);
/*!40000 ALTER TABLE `ordventacab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordventadet`
--

DROP TABLE IF EXISTS `ordventadet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordventadet` (
  `idordVentadet` int NOT NULL DEFAULT '0',
  `idordVentacab` int NOT NULL,
  `item` int unsigned NOT NULL,
  `idProd` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cantidad` int NOT NULL,
  `descripcion` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `punitario` decimal(8,2) NOT NULL,
  `importe` decimal(8,2) NOT NULL,
  PRIMARY KEY (`idordVentadet`),
  KEY `FK_idProd` (`idProd`) /*!80000 INVISIBLE */,
  KEY `FK_idVentascab_idx` (`idordVentacab`),
  CONSTRAINT `FK_idProdVenDet` FOREIGN KEY (`idProd`) REFERENCES `productos` (`idProd`),
  CONSTRAINT `FK_idVentascab` FOREIGN KEY (`idordVentacab`) REFERENCES `ordventacab` (`idordVentacab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordventadet`
--

LOCK TABLES `ordventadet` WRITE;
/*!40000 ALTER TABLE `ordventadet` DISABLE KEYS */;
INSERT INTO `ordventadet` VALUES (1,1,1,'MVCBO1',10,'MARK V - Combo1x12',1900.00,19000.00),(2,1,2,'MVCAB1+',15,'MARK V - Cabezal',1750.00,26250.00),(3,1,3,'CT1X12WIDE23',5,'California Tweed1x12 CALIFORNIA TWEED 23',2050.00,10250.00),(4,3,1,'CT1X12WIDE23',2,'California Tweed1X12 CALIFORNIA TWEED 23',1001.00,2002.00),(5,4,1,'CT1X12WIDE23',2,'California Tweed1X12 CALIFORNIA TWEED 23',1001.00,2002.00),(6,5,1,'MVCAB1+',3,'MARK V+ - Head',101010.00,303030.00),(7,6,1,'CT1X12WIDE23',2,'California Tweed1X12 CALIFORNIA TWEED 23',1001.00,2002.00),(8,7,1,'MVCAB1+',3,'MARK V+ - Head',101010.00,303030.00),(9,8,1,'CT1X12WIDE23',2,'California Tweed1X12 CALIFORNIA TWEED 23',1001.00,2002.00),(10,9,1,'MVCAB1+',3,'MARK V+ - Head',101010.00,303030.00),(11,10,1,'MVCBO1',13,'MARK V - Combo 1x12',101010.00,101010.00),(12,10,2,'MVCAB1+',15,'MARK V+ - Head',101010.00,101010.00),(13,11,1,'MVCBO1',1,'MARK V - Combo 1x12',101010.00,101010.00),(14,12,1,'MVCAB1+',3,'MARK V+ - Head',101010.00,303030.00),(15,12,3,'MVCAB1+',15,'',101010.00,101010.00),(16,12,3,'MVCAB1+',5,'',101010.00,101010.00),(17,49,2,'MVCAB1+',5,'MARK V+ - Head',101010.00,101010.00),(18,52,2,'MVCAB1+',2,'MARK V+ - Head',101010.00,202020.00),(19,52,2,'BLUED4X10',3,'Blues Deville 4x10 Reissue',139194.17,417582.51),(20,53,2,'FHOTRODDX3',2,'Hot Rod Deluxe III',1001.00,2002.00),(21,54,2,'CT1X12WIDE23',1,'California Tweed1X12 CALIFORNIA TWEED 23',1001.00,1001.00),(22,55,2,'MVCAB1+',1,'MARK V+ - Head',101010.00,101010.00),(23,56,2,'MVCAB1+',1,'MARK V+ - Head',101010.00,101010.00),(24,57,2,'MVCAB1+',1,'MARK V+ - Head',101010.00,101010.00),(25,58,2,'MVCAB1+',1,'MARK V+ - Head',101010.00,101010.00),(26,59,2,'CT1X12WIDE23',1,'California Tweed1X12 CALIFORNIA TWEED 23',1001.00,1001.00),(27,60,2,'FHOTRODDX3',1,'Hot Rod Deluxe III',1001.00,1001.00),(28,61,2,'CT1X12WIDE23',1,'California Tweed1X12 CALIFORNIA TWEED 23',1001.00,1001.00),(29,62,2,'MVCAB1+',1,'MARK V+ - Head',101010.00,101010.00),(30,63,2,'FHOTRODDX3',1,'Hot Rod Deluxe III',1001.00,1001.00),(31,64,2,'FHOTRODDX3',1,'Hot Rod Deluxe III',1001.00,1001.00),(32,65,2,'MVCBO1',1,'MARK V - Combo 1x12',101010.00,101010.00),(33,66,2,'FHOTRODDX3',1,'Hot Rod Deluxe III',1001.00,1001.00),(34,67,2,'BLUED4X10',1,'Blues Deville 4x10 Reissue',139194.17,139194.17),(35,68,2,'MVCBO1',1,'MARK V - Combo 1x12',101010.00,101010.00),(36,68,2,'PERF1000',1,'Performer 1000 - Black',1010.00,1010.00),(37,68,3,'BLUED4X10',1,'Blues Deville 4x10 Reissue',139194.17,139194.17),(38,68,4,'FHOTRODDX3',1,'Hot Rod Deluxe III',1001.00,1001.00),(39,69,2,'FHOTRODDX3',1,'Hot Rod Deluxe III',1001.00,1001.00),(40,70,2,'MVCAB1+',1,'MARK V+ - Head',101010.00,101010.00),(41,71,2,'MVCAB1+',1,'MARK V+ - Head',101010.00,101010.00),(42,73,2,'MVCAB1+',1,'MARK V+ - Head',101010.00,101010.00),(43,74,2,'BLUED4X10',1,'Blues Deville 4x10 Reissue',139194.17,139194.17),(44,75,2,'BLUED4X10',1,'Blues Deville 4x10 Reissue',139194.17,139194.17),(45,76,2,'CT1X12WIDE23',1,'California Tweed1X12 CALIFORNIA TWEED 23',1001.00,1001.00),(46,77,2,'FHOTRODDX3',1,'Hot Rod Deluxe III',1001.00,1001.00),(47,78,2,'BLUED4X10',1,'Blues Deville 4x10 Reissue',139194.17,139194.17),(48,79,2,'FHOTRODDX3',3,'Hot Rod Deluxe III',1001.00,3003.00),(49,79,2,'BLUED4X10',1,'Blues Deville 4x10 Reissue',139194.17,139194.17),(50,79,1,'BLUED4X10',1,'Blues Deville 4x10 Reissue',139194.17,0.00),(51,79,2,'MVCAB1+',1,'MARK V+ - Head',101010.00,101010.00),(52,79,1,'MVCAB1+',1,'MARK V+ - Head',101010.00,0.00),(53,80,2,'PERF1000',1,'Performer 1000 - Black',1010.00,1010.00),(54,80,1,'PERF1000',1,'Performer 1000 - Black',1010.00,23230.00),(55,80,2,'MVCAB1+',1,'MARK V+ - Head',101010.00,101010.00),(56,80,1,'MVCAB1+',1,'MARK V+ - Head',101010.00,0.00),(57,81,2,'BLUED4X10',2,'Blues Deville 4x10 Reissue',139194.17,278388.34),(58,81,1,'BLUED4X10',2,'Blues Deville 4x10 Reissue',139194.17,0.00),(59,82,2,'FHOTRODDX3',1,'Hot Rod Deluxe III',1001.00,1001.00),(60,82,1,'FHOTRODDX3',1,'Hot Rod Deluxe III',1001.00,0.00);
/*!40000 ALTER TABLE `ordventadet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procesos`
--

DROP TABLE IF EXISTS `procesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procesos` (
  `idCt` varchar(10) NOT NULL,
  `proceso` varchar(45) NOT NULL,
  `timeProc` time NOT NULL,
  PRIMARY KEY (`idCt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procesos`
--

LOCK TABLES `procesos` WRITE;
/*!40000 ALTER TABLE `procesos` DISABLE KEYS */;
INSERT INTO `procesos` VALUES ('AC1','ACOPIO 1','35:00:00'),('AC2','ACOPIO 2','28:00:00'),('CC','CONTROL CALIDAD','15:00:00'),('EN1','ENSAMBLADO 1','60:00:00'),('EN2','ENSAMBLADO 2','40:00:00'),('LUS','LUSTRADO','04:00:00'),('PIN','PINTURA','06:00:00'),('TAP','TAPICERIA','01:30:00');
/*!40000 ALTER TABLE `procesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProd` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idTipo` int NOT NULL,
  `descripcion` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idCliente` int NOT NULL,
  `unitario` decimal(8,2) DEFAULT NULL,
  `costo` decimal(8,2) DEFAULT NULL,
  `margen` decimal(8,2) NOT NULL,
  `fechaAlta` date NOT NULL,
  `estado` char(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idUsr` int NOT NULL,
  PRIMARY KEY (`idProd`),
  KEY `FK_idCliente` (`idCliente`),
  KEY `FK_idTipo_idx` (`idTipo`),
  KEY `FK_idUsr_idx` (`idUsr`),
  CONSTRAINT `FK_idCliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `FK_idTipo` FOREIGN KEY (`idTipo`) REFERENCES `tipo` (`idTipo`),
  CONSTRAINT `FK_idUsr` FOREIGN KEY (`idUsr`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('BLUED4X10',1,'Blues Deville 4x10 Reissue',1,139194.17,100865.34,38.00,'2008-10-10','A',1),('BOGECS-100',2,'Bogner Ecstasy 100-watt Tube Head',5,100.00,76.92,30.00,'2011-10-10','A',1),('CT1X12WIDE23',3,'California Tweed1X12 CALIFORNIA TWEED 23',3,1001.00,741.00,35.00,'2008-10-10','A',1),('FHOTRODDX3',1,'Hot Rod Deluxe III',1,1001.00,730.00,37.00,'2018-08-12','A',1),('MJCM900',2,'JCM900 4100',2,101010.00,71.63,41.00,'2008-10-10','A',1),('MVCAB1+',2,'MARK V+ - Head',3,101010.00,74.82,35.00,'2012-03-04','A',1),('MVCBO1',1,'MARK V - Combo 1x12',3,101010.00,77.07,30.00,'2012-03-04','A',1),('MVS8080',1,'Marshall Valvestate 8080',2,100101.00,73603.67,36.00,'2008-10-01','A',1),('PERF1000',1,'Performer 1000 - Black',1,1010.00,721.42,40.00,'2008-10-01','A',1),('RIV_VENUS 5x12H',2,'Rivera Venus 5 1x12\" 35-watt Tube Combo Amp\"',6,10101.00,NULL,44.00,'2008-10-01','A',1),('RIV_VENUS 5x15H',1,'Rivera Venus 5 1x15\" 35-watt Tube Combo Amp\"',4,101.00,NULL,40.00,'2022-09-03','A',1),('SLO-100 SO',2,'Soldano SLO-100 Super Lead Overdrive',4,110.00,NULL,37.00,'2008-10-01','A',1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idProveedor` int NOT NULL,
  `nomProveedor` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `piso` int DEFAULT NULL,
  `dpto` varchar(3) DEFAULT NULL,
  `nro` int NOT NULL,
  `localidad` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idProv` int NOT NULL,
  `codPostal` char(15) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `telefono1` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `telefono2` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `telefono3` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `contacto` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idRubro` int NOT NULL,
  `estado` char(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idProveedor`),
  KEY `fk_proveedores_provincias1_idx` (`idProv`),
  KEY `fk_rubro_proveedores_idx` (`idRubro`),
  CONSTRAINT `fk_proveedores_provincias1` FOREIGN KEY (`idProv`) REFERENCES `provincias` (`idProv`),
  CONSTRAINT `fk_rubro_proveedores` FOREIGN KEY (`idRubro`) REFERENCES `rubro_articulo` (`idRubro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincias` (
  `idProv` int NOT NULL,
  `nombres` varchar(60) NOT NULL,
  PRIMARY KEY (`idProv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` VALUES (1,'Buenos Aires'),(2,'Ciudad Autónoma de Buenos Aires'),(3,'Catamarca'),(4,'Chaco'),(5,'Chubut'),(6,'Córdoba'),(7,'Corrientes'),(8,'Entre Ríos'),(9,'Formosa'),(10,'Jujuy'),(11,'La Pampa'),(12,'La Rioja'),(13,'Mendoza'),(14,'Misiones'),(15,'Neuquén'),(16,'Río Negro'),(17,'Salta'),(18,'San Juan'),(19,'San Luis'),(20,'Santa Cruz'),(21,'Santa Fe'),(22,'Santiago del Estero'),(23,'Tierra del Fuego, Antártida  e  Islas del Atlántico Sur'),(24,'Tucumán');
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recetamateriales`
--

DROP TABLE IF EXISTS `recetamateriales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recetamateriales` (
  `idRecMaterial` int NOT NULL AUTO_INCREMENT,
  `idProd` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cantidad` decimal(8,2) NOT NULL,
  `um` varchar(5) NOT NULL,
  `seq` int NOT NULL,
  `idArt` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idRecMaterial`),
  KEY `FK_idArt_idx` (`idArt`),
  KEY `FK_idProd5_idx` (`idProd`),
  KEY `FK_um_idx` (`um`),
  CONSTRAINT `FK_idArticulo5` FOREIGN KEY (`idArt`) REFERENCES `articulos` (`idArticulo`),
  CONSTRAINT `FK_idProd5` FOREIGN KEY (`idProd`) REFERENCES `productos` (`idProd`),
  CONSTRAINT `FK_um` FOREIGN KEY (`um`) REFERENCES `um` (`idUM`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recetamateriales`
--

LOCK TABLES `recetamateriales` WRITE;
/*!40000 ALTER TABLE `recetamateriales` DISABLE KEYS */;
INSERT INTO `recetamateriales` VALUES (1,'MVCAB1+',1.00,'CU',1,'TP10028-25'),(2,'MVCAB1+',1.00,'CU',1,'BP10038-25'),(3,'MVCAB1+',1.00,'CU',1,'LPD3840-25'),(4,'MVCAB1+',1.00,'CU',1,'LPI3840-25'),(5,'MVCAB1+',1.00,'CU',2,'FP9520-25'),(6,'MVCAB1+',1.00,'CU',2,'FTEP9520-25'),(7,'MVCAB1+',2.00,'CU',2,'TOPFREP20-25x25'),(8,'MVCAB1+',2.00,'CU',2,'TOPFONP20-25x25'),(9,'MVCAB1+',4.00,'CU',1,'REGAMBHN'),(10,'MVCAB1+',6.00,'CU',1,'ESQUIMBAHN'),(11,'MVCAB1+',1.00,'CU',2,'MANITMBN'),(12,'MVCAB1+',8.00,'CU',2,'TARM1020'),(13,'MVCAB1+',4.00,'CU',2,'PARK205N'),(14,'MVCAB1+',4.00,'CU',2,'PARK2505N'),(15,'MVCAB1+',2.00,'CU',2,'FREZ206P'),(16,'MVCAB1+',2.00,'CU',1,'CHAPMBHN'),(17,'MVCAB1+',4.00,'CU',1,'FREZ1506P'),(18,'MVCAB1+',2.80,'M2',1,'CUEMBN'),(19,'MVCAB1+',550.00,'CM3',1,'VINIL'),(20,'MVCAB1+',8.00,'CU',1,'FREZ1506N'),(21,'MVCAB1+',1.00,'CU',1,'MBLOGO1'),(22,'MVCBO1',1.00,'CU',1,'TP11028-25'),(23,'MVCBO1',1.00,'CU',1,'BP11038-25'),(24,'MVCBO1',1.00,'CU',1,'LPD3855-25'),(25,'MVCBO1',1.00,'CU',1,'LPI3855-25'),(26,'MVCBO1',1.00,'CU',2,'FP10535-25'),(27,'MVCBO1',2.00,'CU',2,'TOPFONP30-25x25'),(28,'MVCBO1',1.00,'CU',2,'FTEP1210545-25'),(29,'MVCBO1',2.00,'CU',2,'TOPFREP38-25x25'),(30,'MVCBO1',4.00,'CU',1,'REGAMBHN'),(31,'MVCBO1',5.00,'CU',1,'ESQUIMBAHN'),(32,'MVCBO1',1.00,'CU',2,'MANITMBN'),(33,'MVCBO1',8.00,'CU',2,'TARM1020'),(34,'MVCBO1',4.00,'CU',2,'PARK205N'),(35,'MVCBO1',4.00,'CU',2,'PARK2505N'),(36,'MVCBO1',2.00,'CU',2,'FREZ206P'),(37,'MVCBO1',2.00,'CU',1,'CHAPMBHN'),(38,'MVCBO1',4.00,'CU',1,'FREZ1506P'),(39,'MVCBO1',4.70,'M2',1,'CUEMBN'),(40,'MVCBO1',880.00,'CM3',1,'VINIL'),(41,'MVCBO1',8.00,'CU',1,'FREZ1506N'),(42,'MVCBO1',1.00,'CU',1,'MBLOGO1'),(43,'CT1X12WIDE23',1.00,'CU',1,'TP12038-25'),(44,'CT1X12WIDE23',1.00,'CU',1,'BP12038-25'),(45,'CT1X12WIDE23',1.00,'CU',1,'LPD3855-25'),(46,'CT1X12WIDE23',1.00,'CU',1,'LPI3855-25'),(47,'CT1X12WIDE23',1.00,'CU',2,'FP11525-25'),(48,'CT1X12WIDE23',2.00,'CU',2,'TOPFONP25-25x25'),(49,'CT1X12WIDE23',2.00,'CU',2,'TOPFREP50-25x25'),(50,'CT1X12WIDE23',1.00,'CU',2,'FTEP1211550-25'),(51,'CT1X12WIDE23',4.00,'CU',1,'REGAMBHN'),(52,'CT1X12WIDE23',6.00,'CU',1,'ESQUIMBAHN'),(53,'CT1X12WIDE23',1.00,'CU',2,'MANITMBCN'),(54,'CT1X12WIDE23',8.00,'CU',2,'TARM1020'),(55,'CT1X12WIDE23',8.00,'CU',2,'PARK205N'),(56,'CT1X12WIDE23',4.00,'CU',2,'PARK2505N'),(57,'CT1X12WIDE23',2.00,'CU',2,'FREZ206P'),(58,'CT1X12WIDE23',2.00,'CU',2,'CHAPMBHN'),(59,'CT1X12WIDE23',4.00,'CU',1,'FREZ1506P'),(60,'CT1X12WIDE23',3.60,'M2',1,'CUEMBCREAM'),(61,'CT1X12WIDE23',780.00,'CM3',1,'VINIL'),(62,'CT1X12WIDE23',8.00,'CU',1,'FREZ1506N'),(63,'CT1X12WIDE23',1.00,'CU',1,'FP1557225'),(64,'CT1X12WIDE23',1.00,'CU',1,'MBLOGO2'),(65,'BLUED4X10',1.00,'CU',1,'TP10028-25'),(66,'BLUED4X10',1.00,'CU',1,'BP10038-25'),(67,'BLUED4X10',1.00,'CU',1,'LPD3840-25'),(68,'BLUED4X10',1.00,'CU',1,'LPI3840-25'),(69,'BLUED4X10',1.00,'CU',2,'FP9520-25'),(70,'BLUED4X10',1.00,'CU',2,'FTEP9520-25'),(71,'BLUED4X10',2.00,'CU',2,'TOPFREP20-25x25'),(72,'BLUED4X10',2.00,'CU',2,'TOPFONP20-25x25'),(73,'BLUED4X10',4.00,'CU',1,'REGAFDERSTD-BKN'),(74,'BLUED4X10',1.00,'CU',2,'MANITFDER-BK'),(75,'BLUED4X10',8.00,'CU',2,'TARM1020'),(76,'BLUED4X10',4.00,'CU',2,'PARK205N'),(77,'BLUED4X10',4.00,'CU',2,'PARK2505N'),(78,'BLUED4X10',2.00,'CU',2,'FREZ206P'),(79,'BLUED4X10',4.00,'CU',1,'FREZ1506P'),(80,'BLUED4X10',5.80,'M2',1,'TELAFDER-BD'),(81,'BLUED4X10',760.00,'CM3',1,'VINIL'),(82,'BLUED4X10',8.00,'CU',1,'FREZ1506N'),(83,'BLUED4X10',1.00,'CU',1,'FDERLOGO1'),(105,'FHOTRODDX3',1.00,'CU',1,'TC10028-25'),(106,'FHOTRODDX3',1.00,'CU',1,'BC10038-25'),(107,'FHOTRODDX3',1.00,'CU',1,'LCD3840-25'),(108,'FHOTRODDX3',1.00,'CU',1,'LCI3840-25'),(109,'FHOTRODDX3',1.00,'CU',1,'FC9520-25'),(110,'FHOTRODDX3',1.00,'CU',1,'FTEC9520-25'),(111,'FHOTRODDX3',2.00,'CU',1,'TOPFREC20-25x25'),(112,'FHOTRODDX3',2.00,'CU',1,'TOPFONC20-25x25'),(113,'FHOTRODDX3',4.00,'CU',2,'REGAFDERSTD-BKN'),(114,'FHOTRODDX3',6.00,'CU',2,'ESQUIFDERA-BK'),(115,'FHOTRODDX3',1.00,'CU',2,'MANITFDER-BK'),(116,'FHOTRODDX3',8.00,'CU',2,'TARM1020'),(117,'FHOTRODDX3',4.00,'CU',2,'PARK205N'),(118,'FHOTRODDX3',4.00,'CU',2,'PARK2505N'),(119,'FHOTRODDX3',2.00,'CU',2,'FREZ206P'),(120,'FHOTRODDX3',2.00,'CU',2,'CHAPFDER-HR'),(121,'FHOTRODDX3',4.00,'CU',1,'FREZ1506P'),(122,'FHOTRODDX3',4.80,'M2',2,'CUEFDER-BK'),(123,'FHOTRODDX3',760.00,'CM3',2,'VINIL'),(124,'FHOTRODDX3',8.00,'CU',1,'FREZ1506N'),(125,'FHOTRODDX3',1.00,'CU',2,'FDERLOGO2'),(126,'PERF1000',1.00,'CU',1,'TP10028-25'),(127,'PERF1000',1.00,'CU',1,'BP10038-25'),(128,'PERF1000',1.00,'CU',1,'LPD3840-25'),(129,'PERF1000',1.00,'CU',1,'LPI3840-25'),(130,'PERF1000',1.00,'CU',1,'FP9520-25'),(131,'PERF1000',1.00,'CU',1,'FTEP9520-25'),(132,'PERF1000',2.00,'CU',1,'TOPFREP20-25x25'),(133,'PERF1000',2.00,'CU',1,'TOPFONP20-25x25'),(134,'PERF1000',4.00,'CU',2,'REGAFDERSTD-BKN'),(135,'PERF1000',1.00,'CU',2,'MANITFDER-BK'),(136,'PERF1000',8.00,'CU',1,'TARM1020'),(137,'PERF1000',4.00,'CU',2,'PARK205N'),(138,'PERF1000',4.00,'CU',2,'PARK2505N'),(139,'PERF1000',2.00,'CU',2,'FREZ206P'),(140,'PERF1000',4.00,'CU',2,'FREZ1506P'),(141,'PERF1000',5.10,'M2',2,'CUEFDER-BK'),(142,'PERF1000',820.00,'CM3',2,'VINIL'),(143,'PERF1000',8.00,'CU',2,'FREZ1506N'),(144,'PERF1000',1.00,'CU',2,'FDERLOGO3');
/*!40000 ALTER TABLE `recetamateriales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recetaprocesos`
--

DROP TABLE IF EXISTS `recetaprocesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recetaprocesos` (
  `idReceta` int NOT NULL AUTO_INCREMENT,
  `idProd` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idCt` varchar(10) NOT NULL,
  `seq` int NOT NULL,
  `duracion` time NOT NULL,
  PRIMARY KEY (`idReceta`),
  KEY `FK_Sector_idx` (`idCt`),
  CONSTRAINT `FK_Sector` FOREIGN KEY (`idCt`) REFERENCES `procesos` (`idCt`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recetaprocesos`
--

LOCK TABLES `recetaprocesos` WRITE;
/*!40000 ALTER TABLE `recetaprocesos` DISABLE KEYS */;
INSERT INTO `recetaprocesos` VALUES (1,'BLUED4X10','AC1',1,'35:00:00'),(2,'BLUED4X10','EN1',2,'45:00:00'),(3,'BLUED4X10','AC2',3,'28:00:00'),(4,'BLUED4X10','EN2',5,'25:00:00'),(5,'BLUED4X10','CC',6,'15:00:00'),(6,'MVCAB1+','AC1',1,'35:00:00'),(7,'MVCAB1+','EN1',2,'40:00:00'),(8,'MVCAB1+','AC2',3,'15:00:00'),(9,'MVCAB1+','EN2',5,'25:00:00'),(10,'MVCBO1','AC1',1,'35:00:00'),(11,'MVCBO1','EN1',2,'45:00:00'),(12,'MVCBO1','AC2',3,'28:00:00'),(13,'MVCBO1','EN2',5,'25:00:00'),(14,'MVCBO1','CC',6,'15:00:00'),(15,'FHOTRODDX3','AC1',1,'20:00:00'),(16,'FHOTRODDX3','EN1',2,'35:00:00'),(17,'FHOTRODDX3','TAP',4,'68:00:00'),(18,'FHOTRODDX3','AC2',3,'30:00:00'),(19,'FHOTRODDX3','EN2',5,'25:00:00'),(20,'BLUED4X10','TAP',4,'15:00:00'),(21,'MVCBO1','TAP',4,'78:00:00'),(22,'MVCAB1+','TAP',4,'68:00:00'),(23,'CT1X12WIDE23','AC1',1,'15:00:00'),(24,'CT1X12WIDE23','EN1',2,'35:00:00'),(25,'CT1X12WIDE23','AC2',3,'15:00:00'),(26,'CT1X12WIDE23','TAP',4,'56:00:00'),(27,'CT1X12WIDE23','EN2',5,'14:00:00'),(28,'CT1X12WIDE23','CC',6,'15:00:00');
/*!40000 ALTER TABLE `recetaprocesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recibocab`
--

DROP TABLE IF EXISTS `recibocab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recibocab` (
  `idRecibo` int NOT NULL,
  `idCliente` int NOT NULL,
  `fecha` date NOT NULL,
  `usuario` int NOT NULL,
  `total` decimal(10,0) NOT NULL,
  PRIMARY KEY (`idRecibo`),
  KEY `FK_idCliente_idx` (`idCliente`),
  KEY `FK_usuario_idx` (`usuario`),
  CONSTRAINT `FK_idClienteRecCab` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `FK_usuarioRecCab` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recibocab`
--

LOCK TABLES `recibocab` WRITE;
/*!40000 ALTER TABLE `recibocab` DISABLE KEYS */;
/*!40000 ALTER TABLE `recibocab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recibodet`
--

DROP TABLE IF EXISTS `recibodet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recibodet` (
  `idrecibodet` int NOT NULL,
  `idrecibocab` int NOT NULL,
  `item` int NOT NULL,
  `documento` int NOT NULL,
  `importe` decimal(10,0) NOT NULL,
  PRIMARY KEY (`idrecibodet`),
  KEY `FK_idrecibocab_idx` (`idrecibocab`),
  KEY `FK_documento_idx` (`documento`),
  CONSTRAINT `FK_documento` FOREIGN KEY (`documento`) REFERENCES `facturacab` (`idfacturacab`),
  CONSTRAINT `FK_idrecibocab` FOREIGN KEY (`idrecibocab`) REFERENCES `recibocab` (`idRecibo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recibodet`
--

LOCK TABLES `recibodet` WRITE;
/*!40000 ALTER TABLE `recibodet` DISABLE KEYS */;
/*!40000 ALTER TABLE `recibodet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reciboval`
--

DROP TABLE IF EXISTS `reciboval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reciboval` (
  `idreciboval` int NOT NULL,
  `idrecibocab` int NOT NULL,
  `formaPago` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `detalle` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `importe` decimal(10,0) NOT NULL,
  PRIMARY KEY (`idreciboval`),
  KEY `FK_idrecibocab_idx` (`idrecibocab`),
  CONSTRAINT `FK_idrecibocabRecVal` FOREIGN KEY (`idrecibocab`) REFERENCES `recibocab` (`idRecibo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reciboval`
--

LOCK TABLES `reciboval` WRITE;
/*!40000 ALTER TABLE `reciboval` DISABLE KEYS */;
/*!40000 ALTER TABLE `reciboval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remitocab`
--

DROP TABLE IF EXISTS `remitocab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remitocab` (
  `idremitocab` int NOT NULL,
  `idOF` int NOT NULL,
  `fecha` date NOT NULL,
  `idCliente` int NOT NULL,
  `fechaEntrega` date NOT NULL,
  `formaEntrega` varchar(12) NOT NULL,
  `idVendedor` int NOT NULL,
  `bultos` int NOT NULL,
  `peso` decimal(8,2) NOT NULL,
  `idUsr` int NOT NULL,
  PRIMARY KEY (`idremitocab`),
  KEY `FK_idCliente_idx` (`idCliente`),
  KEY `FK_idVendedor_idx` (`idVendedor`),
  KEY `FK_idUsr_RemCab_idx` (`idUsr`),
  KEY `FK_idOF_RemCab_idx` (`idOF`),
  CONSTRAINT `FK_idClienteRemCab` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `FK_idOF_RemCab` FOREIGN KEY (`idOF`) REFERENCES `ordfabcab` (`idordFabcab`),
  CONSTRAINT `FK_idUsr_RemCab` FOREIGN KEY (`idUsr`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `FK_idVendedorRemCab` FOREIGN KEY (`idVendedor`) REFERENCES `empleado` (`IDEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remitocab`
--

LOCK TABLES `remitocab` WRITE;
/*!40000 ALTER TABLE `remitocab` DISABLE KEYS */;
/*!40000 ALTER TABLE `remitocab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remitodet`
--

DROP TABLE IF EXISTS `remitodet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remitodet` (
  `idremitodet` int NOT NULL,
  `idremitocab` int NOT NULL,
  `item` int NOT NULL,
  `idProd` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cantidad` int NOT NULL,
  `descripcion` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `idVenta` int NOT NULL,
  `peso` decimal(10,0) NOT NULL,
  PRIMARY KEY (`idremitodet`),
  KEY `FK_idProd_idx` (`idProd`),
  KEY `FK_idVenta_idx` (`idVenta`),
  CONSTRAINT `FK_idProd` FOREIGN KEY (`idProd`) REFERENCES `productos` (`idProd`),
  CONSTRAINT `FK_idVenta` FOREIGN KEY (`idVenta`) REFERENCES `ordventacab` (`idordVentacab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remitodet`
--

LOCK TABLES `remitodet` WRITE;
/*!40000 ALTER TABLE `remitodet` DISABLE KEYS */;
/*!40000 ALTER TABLE `remitodet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservaarticulos`
--

DROP TABLE IF EXISTS `reservaarticulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservaarticulos` (
  `idReserva` int NOT NULL AUTO_INCREMENT,
  `idOrdVentacab` int NOT NULL,
  `item` int NOT NULL,
  `idArticulo` varchar(20) NOT NULL,
  `cantidad` int NOT NULL,
  `estado` char(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idReserva`),
  KEY `FK_idOrdVentacab_idx` (`idOrdVentacab`),
  KEY `FK_idArticulo_idx` (`idArticulo`),
  CONSTRAINT `FK_idArticuloResArt` FOREIGN KEY (`idArticulo`) REFERENCES `articulos` (`idArticulo`),
  CONSTRAINT `FK_idOrdVentacab` FOREIGN KEY (`idOrdVentacab`) REFERENCES `ordventacab` (`idordVentacab`)
) ENGINE=InnoDB AUTO_INCREMENT=945 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservaarticulos`
--

LOCK TABLES `reservaarticulos` WRITE;
/*!40000 ALTER TABLE `reservaarticulos` DISABLE KEYS */;
INSERT INTO `reservaarticulos` VALUES (43,49,2,'MBLOGO1',1,'A'),(44,49,2,'FREZ1506N',8,'A'),(45,49,2,'VINIL',550,'A'),(46,49,2,'CUEMBN',3,'A'),(47,49,2,'FREZ1506P',4,'A'),(48,49,2,'CHAPMBHN',2,'A'),(49,49,2,'FREZ206P',2,'A'),(50,49,2,'PARK2505N',4,'A'),(51,49,2,'PARK205N',4,'A'),(52,49,2,'TARM1020',8,'A'),(53,49,2,'MANITMBN',1,'A'),(54,49,2,'ESQUIMBAHN',6,'A'),(55,49,2,'REGAMBHN',4,'A'),(56,49,2,'TOPFONP20-25x25',2,'A'),(57,49,2,'TOPFREP20-25x25',2,'A'),(58,49,2,'FTEP9520-25',1,'A'),(59,49,2,'FP9520-25',1,'A'),(60,49,2,'LPI3840-25',1,'A'),(61,49,2,'LPD3840-25',1,'A'),(62,49,2,'BP10038-25',1,'A'),(63,49,2,'TP10028-25',1,'A'),(64,52,2,'MBLOGO1',2,'A'),(65,52,2,'FREZ1506N',16,'A'),(66,52,2,'VINIL',1100,'A'),(67,52,2,'CUEMBN',6,'A'),(68,52,2,'FREZ1506P',8,'A'),(69,52,2,'CHAPMBHN',4,'A'),(70,52,2,'FREZ206P',4,'A'),(71,52,2,'PARK2505N',8,'A'),(72,52,2,'PARK205N',8,'A'),(73,52,2,'TARM1020',16,'A'),(74,52,2,'MANITMBN',2,'A'),(75,52,2,'ESQUIMBAHN',12,'A'),(76,52,2,'REGAMBHN',8,'A'),(77,52,2,'TOPFONP20-25x25',4,'A'),(78,52,2,'TOPFREP20-25x25',4,'A'),(79,52,2,'FTEP9520-25',2,'A'),(80,52,2,'FP9520-25',2,'A'),(81,52,2,'LPI3840-25',2,'A'),(82,52,2,'LPD3840-25',2,'A'),(83,52,2,'BP10038-25',2,'A'),(84,52,2,'TP10028-25',2,'A'),(85,52,2,'FDERLOGO1',3,'A'),(86,52,2,'FREZ1506N',24,'A'),(87,52,2,'VINIL',2280,'A'),(88,52,2,'TELAFDER-BD',17,'A'),(89,52,2,'FREZ1506P',12,'A'),(90,52,2,'FREZ206P',6,'A'),(91,52,2,'PARK2505N',12,'A'),(92,52,2,'PARK205N',12,'A'),(93,52,2,'TARM1020',24,'A'),(94,52,2,'MANITFDER-BK',3,'A'),(95,52,2,'REGAFDERSTD-BKN',12,'A'),(96,52,2,'TOPFONP20-25x25',6,'A'),(97,52,2,'TOPFREP20-25x25',6,'A'),(98,52,2,'FTEP9520-25',3,'A'),(99,52,2,'FP9520-25',3,'A'),(100,52,2,'LPI3840-25',3,'A'),(101,52,2,'LPD3840-25',3,'A'),(102,52,2,'BP10038-25',3,'A'),(103,52,2,'TP10028-25',3,'A'),(104,53,2,'FDERLOGO2',2,'A'),(105,53,2,'FREZ1506N',16,'A'),(106,53,2,'VINIL',1520,'A'),(107,53,2,'CUEFDER-BK',10,'A'),(108,53,2,'FREZ1506P',8,'A'),(109,53,2,'CHAPFDER-HR',4,'A'),(110,53,2,'FREZ206P',4,'A'),(111,53,2,'PARK2505N',8,'A'),(112,53,2,'PARK205N',8,'A'),(113,53,2,'TARM1020',16,'A'),(114,53,2,'MANITFDER-BK',2,'A'),(115,53,2,'ESQUIFDERA-BK',12,'A'),(116,53,2,'REGAFDERSTD-BKN',8,'A'),(117,53,2,'TOPFONC20-25x25',4,'A'),(118,53,2,'TOPFREC20-25x25',4,'A'),(119,53,2,'FTEC9520-25',2,'A'),(120,53,2,'FC9520-25',2,'A'),(121,53,2,'LCI3840-25',2,'A'),(122,53,2,'LCD3840-25',2,'A'),(123,53,2,'BC10038-25',2,'A'),(124,53,2,'TC10028-25',2,'A'),(125,54,2,'MBLOGO2',1,'A'),(126,54,2,'FP1557225',1,'A'),(127,54,2,'FREZ1506N',8,'A'),(128,54,2,'VINIL',780,'A'),(129,54,2,'CUEMBCREAM',4,'A'),(130,54,2,'FREZ1506P',4,'A'),(131,54,2,'CHAPMBHN',2,'A'),(132,54,2,'FREZ206P',2,'A'),(133,54,2,'PARK2505N',4,'A'),(134,54,2,'PARK205N',8,'A'),(135,54,2,'TARM1020',8,'A'),(136,54,2,'MANITMBCN',1,'A'),(137,54,2,'ESQUIMBAHN',6,'A'),(138,54,2,'REGAMBHN',4,'A'),(139,54,2,'FTEP1211550-25',1,'A'),(140,54,2,'TOPFREP50-25x25',2,'A'),(141,54,2,'TOPFONP25-25x25',2,'A'),(142,54,2,'FP11525-25',1,'A'),(143,54,2,'LPI3855-25',1,'A'),(144,54,2,'LPD3855-25',1,'A'),(145,54,2,'BP12038-25',1,'A'),(146,54,2,'TP12038-25',1,'A'),(147,55,2,'MBLOGO1',1,'A'),(148,55,2,'FREZ1506N',8,'A'),(149,55,2,'VINIL',550,'A'),(150,55,2,'CUEMBN',3,'A'),(151,55,2,'FREZ1506P',4,'A'),(152,55,2,'CHAPMBHN',2,'A'),(153,55,2,'FREZ206P',2,'A'),(154,55,2,'PARK2505N',4,'A'),(155,55,2,'PARK205N',4,'A'),(156,55,2,'TARM1020',8,'A'),(157,55,2,'MANITMBN',1,'A'),(158,55,2,'ESQUIMBAHN',6,'A'),(159,55,2,'REGAMBHN',4,'A'),(160,55,2,'TOPFONP20-25x25',2,'A'),(161,55,2,'TOPFREP20-25x25',2,'A'),(162,55,2,'FTEP9520-25',1,'A'),(163,55,2,'FP9520-25',1,'A'),(164,55,2,'LPI3840-25',1,'A'),(165,55,2,'LPD3840-25',1,'A'),(166,55,2,'BP10038-25',1,'A'),(167,55,2,'TP10028-25',1,'A'),(168,56,2,'MBLOGO1',1,'A'),(169,56,2,'FREZ1506N',8,'A'),(170,56,2,'VINIL',550,'A'),(171,56,2,'CUEMBN',3,'A'),(172,56,2,'FREZ1506P',4,'A'),(173,56,2,'CHAPMBHN',2,'A'),(174,56,2,'FREZ206P',2,'A'),(175,56,2,'PARK2505N',4,'A'),(176,56,2,'PARK205N',4,'A'),(177,56,2,'TARM1020',8,'A'),(178,56,2,'MANITMBN',1,'A'),(179,56,2,'ESQUIMBAHN',6,'A'),(180,56,2,'REGAMBHN',4,'A'),(181,56,2,'TOPFONP20-25x25',2,'A'),(182,56,2,'TOPFREP20-25x25',2,'A'),(183,56,2,'FTEP9520-25',1,'A'),(184,56,2,'FP9520-25',1,'A'),(185,56,2,'LPI3840-25',1,'A'),(186,56,2,'LPD3840-25',1,'A'),(187,56,2,'BP10038-25',1,'A'),(188,56,2,'TP10028-25',1,'A'),(189,57,2,'MBLOGO1',1,'A'),(190,57,2,'FREZ1506N',8,'A'),(191,57,2,'VINIL',550,'A'),(192,57,2,'CUEMBN',3,'A'),(193,57,2,'FREZ1506P',4,'A'),(194,57,2,'CHAPMBHN',2,'A'),(195,57,2,'FREZ206P',2,'A'),(196,57,2,'PARK2505N',4,'A'),(197,57,2,'PARK205N',4,'A'),(198,57,2,'TARM1020',8,'A'),(199,57,2,'MANITMBN',1,'A'),(200,57,2,'ESQUIMBAHN',6,'A'),(201,57,2,'REGAMBHN',4,'A'),(202,57,2,'TOPFONP20-25x25',2,'A'),(203,57,2,'TOPFREP20-25x25',2,'A'),(204,57,2,'FTEP9520-25',1,'A'),(205,57,2,'FP9520-25',1,'A'),(206,57,2,'LPI3840-25',1,'A'),(207,57,2,'LPD3840-25',1,'A'),(208,57,2,'BP10038-25',1,'A'),(209,57,2,'TP10028-25',1,'A'),(210,58,2,'MBLOGO1',1,'A'),(211,58,2,'FREZ1506N',8,'A'),(212,58,2,'VINIL',550,'A'),(213,58,2,'CUEMBN',3,'A'),(214,58,2,'FREZ1506P',4,'A'),(215,58,2,'CHAPMBHN',2,'A'),(216,58,2,'FREZ206P',2,'A'),(217,58,2,'PARK2505N',4,'A'),(218,58,2,'PARK205N',4,'A'),(219,58,2,'TARM1020',8,'A'),(220,58,2,'MANITMBN',1,'A'),(221,58,2,'ESQUIMBAHN',6,'A'),(222,58,2,'REGAMBHN',4,'A'),(223,58,2,'TOPFONP20-25x25',2,'A'),(224,58,2,'TOPFREP20-25x25',2,'A'),(225,58,2,'FTEP9520-25',1,'A'),(226,58,2,'FP9520-25',1,'A'),(227,58,2,'LPI3840-25',1,'A'),(228,58,2,'LPD3840-25',1,'A'),(229,58,2,'BP10038-25',1,'A'),(230,58,2,'TP10028-25',1,'A'),(231,59,2,'MBLOGO2',1,'A'),(232,59,2,'FP1557225',1,'A'),(233,59,2,'FREZ1506N',8,'A'),(234,59,2,'VINIL',780,'A'),(235,59,2,'CUEMBCREAM',4,'A'),(236,59,2,'FREZ1506P',4,'A'),(237,59,2,'CHAPMBHN',2,'A'),(238,59,2,'FREZ206P',2,'A'),(239,59,2,'PARK2505N',4,'A'),(240,59,2,'PARK205N',8,'A'),(241,59,2,'TARM1020',8,'A'),(242,59,2,'MANITMBCN',1,'A'),(243,59,2,'ESQUIMBAHN',6,'A'),(244,59,2,'REGAMBHN',4,'A'),(245,59,2,'FTEP1211550-25',1,'A'),(246,59,2,'TOPFREP50-25x25',2,'A'),(247,59,2,'TOPFONP25-25x25',2,'A'),(248,59,2,'FP11525-25',1,'A'),(249,59,2,'LPI3855-25',1,'A'),(250,59,2,'LPD3855-25',1,'A'),(251,59,2,'BP12038-25',1,'A'),(252,59,2,'TP12038-25',1,'A'),(253,60,2,'FDERLOGO2',1,'A'),(254,60,2,'FREZ1506N',8,'A'),(255,60,2,'VINIL',760,'A'),(256,60,2,'CUEFDER-BK',5,'A'),(257,60,2,'FREZ1506P',4,'A'),(258,60,2,'CHAPFDER-HR',2,'A'),(259,60,2,'FREZ206P',2,'A'),(260,60,2,'PARK2505N',4,'A'),(261,60,2,'PARK205N',4,'A'),(262,60,2,'TARM1020',8,'A'),(263,60,2,'MANITFDER-BK',1,'A'),(264,60,2,'ESQUIFDERA-BK',6,'A'),(265,60,2,'REGAFDERSTD-BKN',4,'A'),(266,60,2,'TOPFONC20-25x25',2,'A'),(267,60,2,'TOPFREC20-25x25',2,'A'),(268,60,2,'FTEC9520-25',1,'A'),(269,60,2,'FC9520-25',1,'A'),(270,60,2,'LCI3840-25',1,'A'),(271,60,2,'LCD3840-25',1,'A'),(272,60,2,'BC10038-25',1,'A'),(273,60,2,'TC10028-25',1,'A'),(274,61,2,'MBLOGO2',1,'A'),(275,61,2,'FP1557225',1,'A'),(276,61,2,'FREZ1506N',8,'A'),(277,61,2,'VINIL',780,'A'),(278,61,2,'CUEMBCREAM',4,'A'),(279,61,2,'FREZ1506P',4,'A'),(280,61,2,'CHAPMBHN',2,'A'),(281,61,2,'FREZ206P',2,'A'),(282,61,2,'PARK2505N',4,'A'),(283,61,2,'PARK205N',8,'A'),(284,61,2,'TARM1020',8,'A'),(285,61,2,'MANITMBCN',1,'A'),(286,61,2,'ESQUIMBAHN',6,'A'),(287,61,2,'REGAMBHN',4,'A'),(288,61,2,'FTEP1211550-25',1,'A'),(289,61,2,'TOPFREP50-25x25',2,'A'),(290,61,2,'TOPFONP25-25x25',2,'A'),(291,61,2,'FP11525-25',1,'A'),(292,61,2,'LPI3855-25',1,'A'),(293,61,2,'LPD3855-25',1,'A'),(294,61,2,'BP12038-25',1,'A'),(295,61,2,'TP12038-25',1,'A'),(296,62,2,'MBLOGO1',1,'A'),(297,62,2,'FREZ1506N',8,'A'),(298,62,2,'VINIL',550,'A'),(299,62,2,'CUEMBN',3,'A'),(300,62,2,'FREZ1506P',4,'A'),(301,62,2,'CHAPMBHN',2,'A'),(302,62,2,'FREZ206P',2,'A'),(303,62,2,'PARK2505N',4,'A'),(304,62,2,'PARK205N',4,'A'),(305,62,2,'TARM1020',8,'A'),(306,62,2,'MANITMBN',1,'A'),(307,62,2,'ESQUIMBAHN',6,'A'),(308,62,2,'REGAMBHN',4,'A'),(309,62,2,'TOPFONP20-25x25',2,'A'),(310,62,2,'TOPFREP20-25x25',2,'A'),(311,62,2,'FTEP9520-25',1,'A'),(312,62,2,'FP9520-25',1,'A'),(313,62,2,'LPI3840-25',1,'A'),(314,62,2,'LPD3840-25',1,'A'),(315,62,2,'BP10038-25',1,'A'),(316,62,2,'TP10028-25',1,'A'),(317,63,2,'FDERLOGO2',1,'A'),(318,63,2,'FREZ1506N',8,'A'),(319,63,2,'VINIL',760,'A'),(320,63,2,'CUEFDER-BK',5,'A'),(321,63,2,'FREZ1506P',4,'A'),(322,63,2,'CHAPFDER-HR',2,'A'),(323,63,2,'FREZ206P',2,'A'),(324,63,2,'PARK2505N',4,'A'),(325,63,2,'PARK205N',4,'A'),(326,63,2,'TARM1020',8,'A'),(327,63,2,'MANITFDER-BK',1,'A'),(328,63,2,'ESQUIFDERA-BK',6,'A'),(329,63,2,'REGAFDERSTD-BKN',4,'A'),(330,63,2,'TOPFONC20-25x25',2,'A'),(331,63,2,'TOPFREC20-25x25',2,'A'),(332,63,2,'FTEC9520-25',1,'A'),(333,63,2,'FC9520-25',1,'A'),(334,63,2,'LCI3840-25',1,'A'),(335,63,2,'LCD3840-25',1,'A'),(336,63,2,'BC10038-25',1,'A'),(337,63,2,'TC10028-25',1,'A'),(338,64,2,'FDERLOGO2',1,'A'),(339,64,2,'FREZ1506N',8,'A'),(340,64,2,'VINIL',760,'A'),(341,64,2,'CUEFDER-BK',5,'A'),(342,64,2,'FREZ1506P',4,'A'),(343,64,2,'CHAPFDER-HR',2,'A'),(344,64,2,'FREZ206P',2,'A'),(345,64,2,'PARK2505N',4,'A'),(346,64,2,'PARK205N',4,'A'),(347,64,2,'TARM1020',8,'A'),(348,64,2,'MANITFDER-BK',1,'A'),(349,64,2,'ESQUIFDERA-BK',6,'A'),(350,64,2,'REGAFDERSTD-BKN',4,'A'),(351,64,2,'TOPFONC20-25x25',2,'A'),(352,64,2,'TOPFREC20-25x25',2,'A'),(353,64,2,'FTEC9520-25',1,'A'),(354,64,2,'FC9520-25',1,'A'),(355,64,2,'LCI3840-25',1,'A'),(356,64,2,'LCD3840-25',1,'A'),(357,64,2,'BC10038-25',1,'A'),(358,64,2,'TC10028-25',1,'A'),(359,65,2,'MBLOGO1',1,'A'),(360,65,2,'FREZ1506N',8,'A'),(361,65,2,'VINIL',880,'A'),(362,65,2,'CUEMBN',5,'A'),(363,65,2,'FREZ1506P',4,'A'),(364,65,2,'CHAPMBHN',2,'A'),(365,65,2,'FREZ206P',2,'A'),(366,65,2,'PARK2505N',4,'A'),(367,65,2,'PARK205N',4,'A'),(368,65,2,'TARM1020',8,'A'),(369,65,2,'MANITMBN',1,'A'),(370,65,2,'ESQUIMBAHN',5,'A'),(371,65,2,'REGAMBHN',4,'A'),(372,65,2,'TOPFREP38-25x25',2,'A'),(373,65,2,'FTEP1210545-25',1,'A'),(374,65,2,'TOPFONP30-25x25',2,'A'),(375,65,2,'FP10535-25',1,'A'),(376,65,2,'LPI3855-25',1,'A'),(377,65,2,'LPD3855-25',1,'A'),(378,65,2,'BP11038-25',1,'A'),(379,65,2,'TP11028-25',1,'A'),(380,66,2,'FDERLOGO2',1,'A'),(381,66,2,'FREZ1506N',8,'A'),(382,66,2,'VINIL',760,'A'),(383,66,2,'CUEFDER-BK',5,'A'),(384,66,2,'FREZ1506P',4,'A'),(385,66,2,'CHAPFDER-HR',2,'A'),(386,66,2,'FREZ206P',2,'A'),(387,66,2,'PARK2505N',4,'A'),(388,66,2,'PARK205N',4,'A'),(389,66,2,'TARM1020',8,'A'),(390,66,2,'MANITFDER-BK',1,'A'),(391,66,2,'ESQUIFDERA-BK',6,'A'),(392,66,2,'REGAFDERSTD-BKN',4,'A'),(393,66,2,'TOPFONC20-25x25',2,'A'),(394,66,2,'TOPFREC20-25x25',2,'A'),(395,66,2,'FTEC9520-25',1,'A'),(396,66,2,'FC9520-25',1,'A'),(397,66,2,'LCI3840-25',1,'A'),(398,66,2,'LCD3840-25',1,'A'),(399,66,2,'BC10038-25',1,'A'),(400,66,2,'TC10028-25',1,'A'),(401,67,2,'FDERLOGO1',1,'A'),(402,67,2,'FREZ1506N',8,'A'),(403,67,2,'VINIL',760,'A'),(404,67,2,'TELAFDER-BD',6,'A'),(405,67,2,'FREZ1506P',4,'A'),(406,67,2,'FREZ206P',2,'A'),(407,67,2,'PARK2505N',4,'A'),(408,67,2,'PARK205N',4,'A'),(409,67,2,'TARM1020',8,'A'),(410,67,2,'MANITFDER-BK',1,'A'),(411,67,2,'REGAFDERSTD-BKN',4,'A'),(412,67,2,'TOPFONP20-25x25',2,'A'),(413,67,2,'TOPFREP20-25x25',2,'A'),(414,67,2,'FTEP9520-25',1,'A'),(415,67,2,'FP9520-25',1,'A'),(416,67,2,'LPI3840-25',1,'A'),(417,67,2,'LPD3840-25',1,'A'),(418,67,2,'BP10038-25',1,'A'),(419,67,2,'TP10028-25',1,'A'),(420,68,2,'MBLOGO1',1,'A'),(421,68,2,'FREZ1506N',8,'A'),(422,68,2,'VINIL',880,'A'),(423,68,2,'CUEMBN',5,'A'),(424,68,2,'FREZ1506P',4,'A'),(425,68,2,'CHAPMBHN',2,'A'),(426,68,2,'FREZ206P',2,'A'),(427,68,2,'PARK2505N',4,'A'),(428,68,2,'PARK205N',4,'A'),(429,68,2,'TARM1020',8,'A'),(430,68,2,'MANITMBN',1,'A'),(431,68,2,'ESQUIMBAHN',5,'A'),(432,68,2,'REGAMBHN',4,'A'),(433,68,2,'TOPFREP38-25x25',2,'A'),(434,68,2,'FTEP1210545-25',1,'A'),(435,68,2,'TOPFONP30-25x25',2,'A'),(436,68,2,'FP10535-25',1,'A'),(437,68,2,'LPI3855-25',1,'A'),(438,68,2,'LPD3855-25',1,'A'),(439,68,2,'BP11038-25',1,'A'),(440,68,2,'TP11028-25',1,'A'),(441,68,2,'FDERLOGO3',1,'A'),(442,68,2,'FREZ1506N',8,'A'),(443,68,2,'VINIL',820,'A'),(444,68,2,'CUEFDER-BK',5,'A'),(445,68,2,'FREZ1506P',4,'A'),(446,68,2,'FREZ206P',2,'A'),(447,68,2,'PARK2505N',4,'A'),(448,68,2,'PARK205N',4,'A'),(449,68,2,'TARM1020',8,'A'),(450,68,2,'MANITFDER-BK',1,'A'),(451,68,2,'REGAFDERSTD-BKN',4,'A'),(452,68,2,'TOPFONP20-25x25',2,'A'),(453,68,2,'TOPFREP20-25x25',2,'A'),(454,68,2,'FTEP9520-25',1,'A'),(455,68,2,'FP9520-25',1,'A'),(456,68,2,'LPI3840-25',1,'A'),(457,68,2,'LPD3840-25',1,'A'),(458,68,2,'BP10038-25',1,'A'),(459,68,2,'TP10028-25',1,'A'),(460,68,3,'FDERLOGO1',1,'A'),(461,68,3,'FREZ1506N',8,'A'),(462,68,3,'VINIL',760,'A'),(463,68,3,'TELAFDER-BD',6,'A'),(464,68,3,'FREZ1506P',4,'A'),(465,68,3,'FREZ206P',2,'A'),(466,68,3,'PARK2505N',4,'A'),(467,68,3,'PARK205N',4,'A'),(468,68,3,'TARM1020',8,'A'),(469,68,3,'MANITFDER-BK',1,'A'),(470,68,3,'REGAFDERSTD-BKN',4,'A'),(471,68,3,'TOPFONP20-25x25',2,'A'),(472,68,3,'TOPFREP20-25x25',2,'A'),(473,68,3,'FTEP9520-25',1,'A'),(474,68,3,'FP9520-25',1,'A'),(475,68,3,'LPI3840-25',1,'A'),(476,68,3,'LPD3840-25',1,'A'),(477,68,3,'BP10038-25',1,'A'),(478,68,3,'TP10028-25',1,'A'),(479,68,4,'FDERLOGO2',1,'A'),(480,68,4,'FREZ1506N',8,'A'),(481,68,4,'VINIL',760,'A'),(482,68,4,'CUEFDER-BK',5,'A'),(483,68,4,'FREZ1506P',4,'A'),(484,68,4,'CHAPFDER-HR',2,'A'),(485,68,4,'FREZ206P',2,'A'),(486,68,4,'PARK2505N',4,'A'),(487,68,4,'PARK205N',4,'A'),(488,68,4,'TARM1020',8,'A'),(489,68,4,'MANITFDER-BK',1,'A'),(490,68,4,'ESQUIFDERA-BK',6,'A'),(491,68,4,'REGAFDERSTD-BKN',4,'A'),(492,68,4,'TOPFONC20-25x25',2,'A'),(493,68,4,'TOPFREC20-25x25',2,'A'),(494,68,4,'FTEC9520-25',1,'A'),(495,68,4,'FC9520-25',1,'A'),(496,68,4,'LCI3840-25',1,'A'),(497,68,4,'LCD3840-25',1,'A'),(498,68,4,'BC10038-25',1,'A'),(499,68,4,'TC10028-25',1,'A'),(500,69,2,'FDERLOGO2',1,'A'),(501,69,2,'FREZ1506N',8,'A'),(502,69,2,'VINIL',760,'A'),(503,69,2,'CUEFDER-BK',5,'A'),(504,69,2,'FREZ1506P',4,'A'),(505,69,2,'CHAPFDER-HR',2,'A'),(506,69,2,'FREZ206P',2,'A'),(507,69,2,'PARK2505N',4,'A'),(508,69,2,'PARK205N',4,'A'),(509,69,2,'TARM1020',8,'A'),(510,69,2,'MANITFDER-BK',1,'A'),(511,69,2,'ESQUIFDERA-BK',6,'A'),(512,69,2,'REGAFDERSTD-BKN',4,'A'),(513,69,2,'TOPFONC20-25x25',2,'A'),(514,69,2,'TOPFREC20-25x25',2,'A'),(515,69,2,'FTEC9520-25',1,'A'),(516,69,2,'FC9520-25',1,'A'),(517,69,2,'LCI3840-25',1,'A'),(518,69,2,'LCD3840-25',1,'A'),(519,69,2,'BC10038-25',1,'A'),(520,69,2,'TC10028-25',1,'A'),(521,70,2,'MBLOGO1',1,'A'),(522,70,2,'FREZ1506N',8,'A'),(523,70,2,'VINIL',550,'A'),(524,70,2,'CUEMBN',3,'A'),(525,70,2,'FREZ1506P',4,'A'),(526,70,2,'CHAPMBHN',2,'A'),(527,70,2,'FREZ206P',2,'A'),(528,70,2,'PARK2505N',4,'A'),(529,70,2,'PARK205N',4,'A'),(530,70,2,'TARM1020',8,'A'),(531,70,2,'MANITMBN',1,'A'),(532,70,2,'ESQUIMBAHN',6,'A'),(533,70,2,'REGAMBHN',4,'A'),(534,70,2,'TOPFONP20-25x25',2,'A'),(535,70,2,'TOPFREP20-25x25',2,'A'),(536,70,2,'FTEP9520-25',1,'A'),(537,70,2,'FP9520-25',1,'A'),(538,70,2,'LPI3840-25',1,'A'),(539,70,2,'LPD3840-25',1,'A'),(540,70,2,'BP10038-25',1,'A'),(541,70,2,'TP10028-25',1,'A'),(542,71,2,'MBLOGO1',1,'A'),(543,71,2,'FREZ1506N',8,'A'),(544,71,2,'VINIL',550,'A'),(545,71,2,'CUEMBN',3,'A'),(546,71,2,'FREZ1506P',4,'A'),(547,71,2,'CHAPMBHN',2,'A'),(548,71,2,'FREZ206P',2,'A'),(549,71,2,'PARK2505N',4,'A'),(550,71,2,'PARK205N',4,'A'),(551,71,2,'TARM1020',8,'A'),(552,71,2,'MANITMBN',1,'A'),(553,71,2,'ESQUIMBAHN',6,'A'),(554,71,2,'REGAMBHN',4,'A'),(555,71,2,'TOPFONP20-25x25',2,'A'),(556,71,2,'TOPFREP20-25x25',2,'A'),(557,71,2,'FTEP9520-25',1,'A'),(558,71,2,'FP9520-25',1,'A'),(559,71,2,'LPI3840-25',1,'A'),(560,71,2,'LPD3840-25',1,'A'),(561,71,2,'BP10038-25',1,'A'),(562,71,2,'TP10028-25',1,'A'),(563,73,2,'MBLOGO1',1,'A'),(564,73,2,'FREZ1506N',8,'A'),(565,73,2,'VINIL',550,'A'),(566,73,2,'CUEMBN',3,'A'),(567,73,2,'FREZ1506P',4,'A'),(568,73,2,'CHAPMBHN',2,'A'),(569,73,2,'FREZ206P',2,'A'),(570,73,2,'PARK2505N',4,'A'),(571,73,2,'PARK205N',4,'A'),(572,73,2,'TARM1020',8,'A'),(573,73,2,'MANITMBN',1,'A'),(574,73,2,'ESQUIMBAHN',6,'A'),(575,73,2,'REGAMBHN',4,'A'),(576,73,2,'TOPFONP20-25x25',2,'A'),(577,73,2,'TOPFREP20-25x25',2,'A'),(578,73,2,'FTEP9520-25',1,'A'),(579,73,2,'FP9520-25',1,'A'),(580,73,2,'LPI3840-25',1,'A'),(581,73,2,'LPD3840-25',1,'A'),(582,73,2,'BP10038-25',1,'A'),(583,73,2,'TP10028-25',1,'A'),(584,74,2,'FDERLOGO1',1,'A'),(585,74,2,'FREZ1506N',8,'A'),(586,74,2,'VINIL',760,'A'),(587,74,2,'TELAFDER-BD',6,'A'),(588,74,2,'FREZ1506P',4,'A'),(589,74,2,'FREZ206P',2,'A'),(590,74,2,'PARK2505N',4,'A'),(591,74,2,'PARK205N',4,'A'),(592,74,2,'TARM1020',8,'A'),(593,74,2,'MANITFDER-BK',1,'A'),(594,74,2,'REGAFDERSTD-BKN',4,'A'),(595,74,2,'TOPFONP20-25x25',2,'A'),(596,74,2,'TOPFREP20-25x25',2,'A'),(597,74,2,'FTEP9520-25',1,'A'),(598,74,2,'FP9520-25',1,'A'),(599,74,2,'LPI3840-25',1,'A'),(600,74,2,'LPD3840-25',1,'A'),(601,74,2,'BP10038-25',1,'A'),(602,74,2,'TP10028-25',1,'A'),(603,75,2,'FDERLOGO1',1,'A'),(604,75,2,'FREZ1506N',8,'A'),(605,75,2,'VINIL',760,'A'),(606,75,2,'TELAFDER-BD',6,'A'),(607,75,2,'FREZ1506P',4,'A'),(608,75,2,'FREZ206P',2,'A'),(609,75,2,'PARK2505N',4,'A'),(610,75,2,'PARK205N',4,'A'),(611,75,2,'TARM1020',8,'A'),(612,75,2,'MANITFDER-BK',1,'A'),(613,75,2,'REGAFDERSTD-BKN',4,'A'),(614,75,2,'TOPFONP20-25x25',2,'A'),(615,75,2,'TOPFREP20-25x25',2,'A'),(616,75,2,'FTEP9520-25',1,'A'),(617,75,2,'FP9520-25',1,'A'),(618,75,2,'LPI3840-25',1,'A'),(619,75,2,'LPD3840-25',1,'A'),(620,75,2,'BP10038-25',1,'A'),(621,75,2,'TP10028-25',1,'A'),(622,76,2,'MBLOGO2',1,'A'),(623,76,2,'FP1557225',1,'A'),(624,76,2,'FREZ1506N',8,'A'),(625,76,2,'VINIL',780,'A'),(626,76,2,'CUEMBCREAM',4,'A'),(627,76,2,'FREZ1506P',4,'A'),(628,76,2,'CHAPMBHN',2,'A'),(629,76,2,'FREZ206P',2,'A'),(630,76,2,'PARK2505N',4,'A'),(631,76,2,'PARK205N',8,'A'),(632,76,2,'TARM1020',8,'A'),(633,76,2,'MANITMBCN',1,'A'),(634,76,2,'ESQUIMBAHN',6,'A'),(635,76,2,'REGAMBHN',4,'A'),(636,76,2,'FTEP1211550-25',1,'A'),(637,76,2,'TOPFREP50-25x25',2,'A'),(638,76,2,'TOPFONP25-25x25',2,'A'),(639,76,2,'FP11525-25',1,'A'),(640,76,2,'LPI3855-25',1,'A'),(641,76,2,'LPD3855-25',1,'A'),(642,76,2,'BP12038-25',1,'A'),(643,76,2,'TP12038-25',1,'A'),(644,77,2,'FDERLOGO2',1,'A'),(645,77,2,'FREZ1506N',8,'A'),(646,77,2,'VINIL',760,'A'),(647,77,2,'CUEFDER-BK',5,'A'),(648,77,2,'FREZ1506P',4,'A'),(649,77,2,'CHAPFDER-HR',2,'A'),(650,77,2,'FREZ206P',2,'A'),(651,77,2,'PARK2505N',4,'A'),(652,77,2,'PARK205N',4,'A'),(653,77,2,'TARM1020',8,'A'),(654,77,2,'MANITFDER-BK',1,'A'),(655,77,2,'ESQUIFDERA-BK',6,'A'),(656,77,2,'REGAFDERSTD-BKN',4,'A'),(657,77,2,'TOPFONC20-25x25',2,'A'),(658,77,2,'TOPFREC20-25x25',2,'A'),(659,77,2,'FTEC9520-25',1,'A'),(660,77,2,'FC9520-25',1,'A'),(661,77,2,'LCI3840-25',1,'A'),(662,77,2,'LCD3840-25',1,'A'),(663,77,2,'BC10038-25',1,'A'),(664,77,2,'TC10028-25',1,'A'),(665,78,2,'FDERLOGO1',1,'A'),(666,78,2,'FREZ1506N',8,'A'),(667,78,2,'VINIL',760,'A'),(668,78,2,'TELAFDER-BD',6,'A'),(669,78,2,'FREZ1506P',4,'A'),(670,78,2,'FREZ206P',2,'A'),(671,78,2,'PARK2505N',4,'A'),(672,78,2,'PARK205N',4,'A'),(673,78,2,'TARM1020',8,'A'),(674,78,2,'MANITFDER-BK',1,'A'),(675,78,2,'REGAFDERSTD-BKN',4,'A'),(676,78,2,'TOPFONP20-25x25',2,'A'),(677,78,2,'TOPFREP20-25x25',2,'A'),(678,78,2,'FTEP9520-25',1,'A'),(679,78,2,'FP9520-25',1,'A'),(680,78,2,'LPI3840-25',1,'A'),(681,78,2,'LPD3840-25',1,'A'),(682,78,2,'BP10038-25',1,'A'),(683,78,2,'TP10028-25',1,'A'),(684,79,2,'FDERLOGO2',3,'A'),(685,79,2,'FREZ1506N',24,'A'),(686,79,2,'VINIL',2280,'A'),(687,79,2,'CUEFDER-BK',14,'A'),(688,79,2,'FREZ1506P',12,'A'),(689,79,2,'CHAPFDER-HR',6,'A'),(690,79,2,'FREZ206P',6,'A'),(691,79,2,'PARK2505N',12,'A'),(692,79,2,'PARK205N',12,'A'),(693,79,2,'TARM1020',24,'A'),(694,79,2,'MANITFDER-BK',3,'A'),(695,79,2,'ESQUIFDERA-BK',18,'A'),(696,79,2,'REGAFDERSTD-BKN',12,'A'),(697,79,2,'TOPFONC20-25x25',6,'A'),(698,79,2,'TOPFREC20-25x25',6,'A'),(699,79,2,'FTEC9520-25',3,'A'),(700,79,2,'FC9520-25',3,'A'),(701,79,2,'LCI3840-25',3,'A'),(702,79,2,'LCD3840-25',3,'A'),(703,79,2,'BC10038-25',3,'A'),(704,79,2,'TC10028-25',3,'A'),(705,79,2,'FDERLOGO1',1,'A'),(706,79,2,'FREZ1506N',8,'A'),(707,79,2,'VINIL',760,'A'),(708,79,2,'TELAFDER-BD',6,'A'),(709,79,2,'FREZ1506P',4,'A'),(710,79,2,'FREZ206P',2,'A'),(711,79,2,'PARK2505N',4,'A'),(712,79,2,'PARK205N',4,'A'),(713,79,2,'TARM1020',8,'A'),(714,79,2,'MANITFDER-BK',1,'A'),(715,79,2,'REGAFDERSTD-BKN',4,'A'),(716,79,2,'TOPFONP20-25x25',2,'A'),(717,79,2,'TOPFREP20-25x25',2,'A'),(718,79,2,'FTEP9520-25',1,'A'),(719,79,2,'FP9520-25',1,'A'),(720,79,2,'LPI3840-25',1,'A'),(721,79,2,'LPD3840-25',1,'A'),(722,79,2,'BP10038-25',1,'A'),(723,79,2,'TP10028-25',1,'A'),(724,79,1,'FDERLOGO1',1,'A'),(725,79,1,'FREZ1506N',8,'A'),(726,79,1,'VINIL',760,'A'),(727,79,1,'TELAFDER-BD',6,'A'),(728,79,1,'FREZ1506P',4,'A'),(729,79,1,'FREZ206P',2,'A'),(730,79,1,'PARK2505N',4,'A'),(731,79,1,'PARK205N',4,'A'),(732,79,1,'TARM1020',8,'A'),(733,79,1,'MANITFDER-BK',1,'A'),(734,79,1,'REGAFDERSTD-BKN',4,'A'),(735,79,1,'TOPFONP20-25x25',2,'A'),(736,79,1,'TOPFREP20-25x25',2,'A'),(737,79,1,'FTEP9520-25',1,'A'),(738,79,1,'FP9520-25',1,'A'),(739,79,1,'LPI3840-25',1,'A'),(740,79,1,'LPD3840-25',1,'A'),(741,79,1,'BP10038-25',1,'A'),(742,79,1,'TP10028-25',1,'A'),(743,79,2,'MBLOGO1',1,'A'),(744,79,2,'FREZ1506N',8,'A'),(745,79,2,'VINIL',550,'A'),(746,79,2,'CUEMBN',3,'A'),(747,79,2,'FREZ1506P',4,'A'),(748,79,2,'CHAPMBHN',2,'A'),(749,79,2,'FREZ206P',2,'A'),(750,79,2,'PARK2505N',4,'A'),(751,79,2,'PARK205N',4,'A'),(752,79,2,'TARM1020',8,'A'),(753,79,2,'MANITMBN',1,'A'),(754,79,2,'ESQUIMBAHN',6,'A'),(755,79,2,'REGAMBHN',4,'A'),(756,79,2,'TOPFONP20-25x25',2,'A'),(757,79,2,'TOPFREP20-25x25',2,'A'),(758,79,2,'FTEP9520-25',1,'A'),(759,79,2,'FP9520-25',1,'A'),(760,79,2,'LPI3840-25',1,'A'),(761,79,2,'LPD3840-25',1,'A'),(762,79,2,'BP10038-25',1,'A'),(763,79,2,'TP10028-25',1,'A'),(764,79,1,'MBLOGO1',1,'A'),(765,79,1,'FREZ1506N',8,'A'),(766,79,1,'VINIL',550,'A'),(767,79,1,'CUEMBN',3,'A'),(768,79,1,'FREZ1506P',4,'A'),(769,79,1,'CHAPMBHN',2,'A'),(770,79,1,'FREZ206P',2,'A'),(771,79,1,'PARK2505N',4,'A'),(772,79,1,'PARK205N',4,'A'),(773,79,1,'TARM1020',8,'A'),(774,79,1,'MANITMBN',1,'A'),(775,79,1,'ESQUIMBAHN',6,'A'),(776,79,1,'REGAMBHN',4,'A'),(777,79,1,'TOPFONP20-25x25',2,'A'),(778,79,1,'TOPFREP20-25x25',2,'A'),(779,79,1,'FTEP9520-25',1,'A'),(780,79,1,'FP9520-25',1,'A'),(781,79,1,'LPI3840-25',1,'A'),(782,79,1,'LPD3840-25',1,'A'),(783,79,1,'BP10038-25',1,'A'),(784,79,1,'TP10028-25',1,'A'),(785,80,2,'FDERLOGO3',1,'A'),(786,80,2,'FREZ1506N',8,'A'),(787,80,2,'VINIL',820,'A'),(788,80,2,'CUEFDER-BK',5,'A'),(789,80,2,'FREZ1506P',4,'A'),(790,80,2,'FREZ206P',2,'A'),(791,80,2,'PARK2505N',4,'A'),(792,80,2,'PARK205N',4,'A'),(793,80,2,'TARM1020',8,'A'),(794,80,2,'MANITFDER-BK',1,'A'),(795,80,2,'REGAFDERSTD-BKN',4,'A'),(796,80,2,'TOPFONP20-25x25',2,'A'),(797,80,2,'TOPFREP20-25x25',2,'A'),(798,80,2,'FTEP9520-25',1,'A'),(799,80,2,'FP9520-25',1,'A'),(800,80,2,'LPI3840-25',1,'A'),(801,80,2,'LPD3840-25',1,'A'),(802,80,2,'BP10038-25',1,'A'),(803,80,2,'TP10028-25',1,'A'),(804,80,1,'FDERLOGO3',1,'A'),(805,80,1,'FREZ1506N',8,'A'),(806,80,1,'VINIL',820,'A'),(807,80,1,'CUEFDER-BK',5,'A'),(808,80,1,'FREZ1506P',4,'A'),(809,80,1,'FREZ206P',2,'A'),(810,80,1,'PARK2505N',4,'A'),(811,80,1,'PARK205N',4,'A'),(812,80,1,'TARM1020',8,'A'),(813,80,1,'MANITFDER-BK',1,'A'),(814,80,1,'REGAFDERSTD-BKN',4,'A'),(815,80,1,'TOPFONP20-25x25',2,'A'),(816,80,1,'TOPFREP20-25x25',2,'A'),(817,80,1,'FTEP9520-25',1,'A'),(818,80,1,'FP9520-25',1,'A'),(819,80,1,'LPI3840-25',1,'A'),(820,80,1,'LPD3840-25',1,'A'),(821,80,1,'BP10038-25',1,'A'),(822,80,1,'TP10028-25',1,'A'),(823,80,2,'MBLOGO1',1,'A'),(824,80,2,'FREZ1506N',8,'A'),(825,80,2,'VINIL',550,'A'),(826,80,2,'CUEMBN',3,'A'),(827,80,2,'FREZ1506P',4,'A'),(828,80,2,'CHAPMBHN',2,'A'),(829,80,2,'FREZ206P',2,'A'),(830,80,2,'PARK2505N',4,'A'),(831,80,2,'PARK205N',4,'A'),(832,80,2,'TARM1020',8,'A'),(833,80,2,'MANITMBN',1,'A'),(834,80,2,'ESQUIMBAHN',6,'A'),(835,80,2,'REGAMBHN',4,'A'),(836,80,2,'TOPFONP20-25x25',2,'A'),(837,80,2,'TOPFREP20-25x25',2,'A'),(838,80,2,'FTEP9520-25',1,'A'),(839,80,2,'FP9520-25',1,'A'),(840,80,2,'LPI3840-25',1,'A'),(841,80,2,'LPD3840-25',1,'A'),(842,80,2,'BP10038-25',1,'A'),(843,80,2,'TP10028-25',1,'A'),(844,80,1,'MBLOGO1',1,'A'),(845,80,1,'FREZ1506N',8,'A'),(846,80,1,'VINIL',550,'A'),(847,80,1,'CUEMBN',3,'A'),(848,80,1,'FREZ1506P',4,'A'),(849,80,1,'CHAPMBHN',2,'A'),(850,80,1,'FREZ206P',2,'A'),(851,80,1,'PARK2505N',4,'A'),(852,80,1,'PARK205N',4,'A'),(853,80,1,'TARM1020',8,'A'),(854,80,1,'MANITMBN',1,'A'),(855,80,1,'ESQUIMBAHN',6,'A'),(856,80,1,'REGAMBHN',4,'A'),(857,80,1,'TOPFONP20-25x25',2,'A'),(858,80,1,'TOPFREP20-25x25',2,'A'),(859,80,1,'FTEP9520-25',1,'A'),(860,80,1,'FP9520-25',1,'A'),(861,80,1,'LPI3840-25',1,'A'),(862,80,1,'LPD3840-25',1,'A'),(863,80,1,'BP10038-25',1,'A'),(864,80,1,'TP10028-25',1,'A'),(865,81,2,'FDERLOGO1',2,'A'),(866,81,2,'FREZ1506N',16,'A'),(867,81,2,'VINIL',1520,'A'),(868,81,2,'TELAFDER-BD',12,'A'),(869,81,2,'FREZ1506P',8,'A'),(870,81,2,'FREZ206P',4,'A'),(871,81,2,'PARK2505N',8,'A'),(872,81,2,'PARK205N',8,'A'),(873,81,2,'TARM1020',16,'A'),(874,81,2,'MANITFDER-BK',2,'A'),(875,81,2,'REGAFDERSTD-BKN',8,'A'),(876,81,2,'TOPFONP20-25x25',4,'A'),(877,81,2,'TOPFREP20-25x25',4,'A'),(878,81,2,'FTEP9520-25',2,'A'),(879,81,2,'FP9520-25',2,'A'),(880,81,2,'LPI3840-25',2,'A'),(881,81,2,'LPD3840-25',2,'A'),(882,81,2,'BP10038-25',2,'A'),(883,81,2,'TP10028-25',2,'A'),(884,81,1,'FDERLOGO1',2,'A'),(885,81,1,'FREZ1506N',16,'A'),(886,81,1,'VINIL',1520,'A'),(887,81,1,'TELAFDER-BD',12,'A'),(888,81,1,'FREZ1506P',8,'A'),(889,81,1,'FREZ206P',4,'A'),(890,81,1,'PARK2505N',8,'A'),(891,81,1,'PARK205N',8,'A'),(892,81,1,'TARM1020',16,'A'),(893,81,1,'MANITFDER-BK',2,'A'),(894,81,1,'REGAFDERSTD-BKN',8,'A'),(895,81,1,'TOPFONP20-25x25',4,'A'),(896,81,1,'TOPFREP20-25x25',4,'A'),(897,81,1,'FTEP9520-25',2,'A'),(898,81,1,'FP9520-25',2,'A'),(899,81,1,'LPI3840-25',2,'A'),(900,81,1,'LPD3840-25',2,'A'),(901,81,1,'BP10038-25',2,'A'),(902,81,1,'TP10028-25',2,'A'),(903,82,2,'FDERLOGO2',1,'A'),(904,82,2,'FREZ1506N',8,'A'),(905,82,2,'VINIL',760,'A'),(906,82,2,'CUEFDER-BK',5,'A'),(907,82,2,'FREZ1506P',4,'A'),(908,82,2,'CHAPFDER-HR',2,'A'),(909,82,2,'FREZ206P',2,'A'),(910,82,2,'PARK2505N',4,'A'),(911,82,2,'PARK205N',4,'A'),(912,82,2,'TARM1020',8,'A'),(913,82,2,'MANITFDER-BK',1,'A'),(914,82,2,'ESQUIFDERA-BK',6,'A'),(915,82,2,'REGAFDERSTD-BKN',4,'A'),(916,82,2,'TOPFONC20-25x25',2,'A'),(917,82,2,'TOPFREC20-25x25',2,'A'),(918,82,2,'FTEC9520-25',1,'A'),(919,82,2,'FC9520-25',1,'A'),(920,82,2,'LCI3840-25',1,'A'),(921,82,2,'LCD3840-25',1,'A'),(922,82,2,'BC10038-25',1,'A'),(923,82,2,'TC10028-25',1,'A'),(924,82,1,'FDERLOGO2',1,'A'),(925,82,1,'FREZ1506N',8,'A'),(926,82,1,'VINIL',760,'A'),(927,82,1,'CUEFDER-BK',5,'A'),(928,82,1,'FREZ1506P',4,'A'),(929,82,1,'CHAPFDER-HR',2,'A'),(930,82,1,'FREZ206P',2,'A'),(931,82,1,'PARK2505N',4,'A'),(932,82,1,'PARK205N',4,'A'),(933,82,1,'TARM1020',8,'A'),(934,82,1,'MANITFDER-BK',1,'A'),(935,82,1,'ESQUIFDERA-BK',6,'A'),(936,82,1,'REGAFDERSTD-BKN',4,'A'),(937,82,1,'TOPFONC20-25x25',2,'A'),(938,82,1,'TOPFREC20-25x25',2,'A'),(939,82,1,'FTEC9520-25',1,'A'),(940,82,1,'FC9520-25',1,'A'),(941,82,1,'LCI3840-25',1,'A'),(942,82,1,'LCD3840-25',1,'A'),(943,82,1,'BC10038-25',1,'A'),(944,82,1,'TC10028-25',1,'A');
/*!40000 ALTER TABLE `reservaarticulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubro_articulo`
--

DROP TABLE IF EXISTS `rubro_articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rubro_articulo` (
  `idRubro` int NOT NULL,
  `rubroDet` varchar(45) NOT NULL,
  PRIMARY KEY (`idRubro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubro_articulo`
--

LOCK TABLES `rubro_articulo` WRITE;
/*!40000 ALTER TABLE `rubro_articulo` DISABLE KEYS */;
INSERT INTO `rubro_articulo` VALUES (1,'TORNILLOS'),(2,'MADERAS'),(3,'PEGAMENTOS'),(4,'HERRAMIENTAS'),(5,'LIBRERIA'),(6,'MAQUINAS ELECT.'),(7,'CLAVOS'),(8,'MANIJAS'),(9,'REGATONES'),(10,'ESQUINEROS'),(11,'CUERINA'),(12,'VINILICOS'),(13,'TELAS'),(14,'LACAS'),(15,'PINTURAS'),(16,'CUEROS'),(17,'TONERS'),(18,'RUEDAS'),(19,'TARUGOS'),(20,'LOGOS'),(21,'CHAPA APOYO');
/*!40000 ALTER TABLE `rubro_articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectores`
--

DROP TABLE IF EXISTS `sectores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sectores` (
  `codSector` varchar(4) NOT NULL,
  `nomSector` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `jefeID` int DEFAULT NULL,
  `cantidadEmp` int NOT NULL,
  PRIMARY KEY (`codSector`),
  KEY `FK_JefeID_idx` (`jefeID`),
  CONSTRAINT `FK_JefeID` FOREIGN KEY (`jefeID`) REFERENCES `empleado` (`IDEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectores`
--

LOCK TABLES `sectores` WRITE;
/*!40000 ALTER TABLE `sectores` DISABLE KEYS */;
INSERT INTO `sectores` VALUES ('PLAN','Planta',2,20),('VEN','Ventas',2,20);
/*!40000 ALTER TABLE `sectores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo` (
  `idTipo` int NOT NULL,
  `nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES (1,'COMBO'),(2,'CABEZAL'),(3,'CAJA'),(4,'COMPONENTE'),(5,'INSUMO');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `um`
--

DROP TABLE IF EXISTS `um`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `um` (
  `idUM` varchar(5) NOT NULL,
  `detalle` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `um`
--

LOCK TABLES `um` WRITE;
/*!40000 ALTER TABLE `um` DISABLE KEYS */;
INSERT INTO `um` VALUES ('CM3','Centímetros cúbicos'),('CU','Cada uno'),('M2','Metros cuadrados');
/*!40000 ALTER TABLE `um` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int NOT NULL,
  `usuario` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `estado` char(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `telefono` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idEmpleado` int NOT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `fk_usuario_empleados1_idx` (`idEmpleado`),
  CONSTRAINT `fk_usuario_empleados1` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`IDEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Damian Bussetto','A','5555-5555',1),(2,'Juan Franko','A','3433-2121',1);
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

-- Dump completed on 2023-02-17 14:13:19
