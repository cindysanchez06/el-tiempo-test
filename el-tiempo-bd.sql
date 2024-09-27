-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: el-tiempo
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Cindy Sanchez','First Autor','2024-09-27 01:49:16');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `sectionId` int(11) NOT NULL,
  `autorId` int(11) NOT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_section_id_idx` (`sectionId`),
  KEY `fk_author_id_idx` (`autorId`),
  CONSTRAINT `fk_author_id` FOREIGN KEY (`autorId`) REFERENCES `authors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_section_id` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Carros que llegarán en 2021','Si 2020 dejó con un sabor amargo a los comercializadores de vehículos en el país, con una baja en las ventas del 28,5%, estos esperan que 2021 sea el de la recuperación y para ello preparan lo mejor de sus líneas con productos que harán su debut en el mercado nacional y otros que cambiarán su apariencia y motorizaciones.','https://estaticos.elcolombiano.com/binrepository/780x585/0c10/780d565/none/11101/AHHH/11-volkswagen-taos-2022-1600-02_37072627_20210122201142.jpg',3,1,'2024-09-27 01:51:12'),(2,'Ford Mustang Mach 1','Ford, reconocida marca del segmento de carros deportivos en Colombia, anunció la llegada de la nueva generación del nuevo Ford Mustang Mach 1, un vehículo icónico que se roba la atención por su herencia, diseño y potencia; a la vez que resalta sus características mecánicas y tecnológicas vanguardistas.','https://loscoches.com/wp-content/uploads/2021/04/carros-deportivos-potencia.jpg',3,1,'2024-09-27 17:11:06'),(3,'Primera final del Hot Wheels ','Este fin de semana (21 y 22 de septiembre) se realizará la final de la primera edición del Hot Wheels Blister Tour 2024 Colombia, donde los vehículos seleccionados competirán por el prestigioso título de la próxima leyenda de la marca de carritos coleccionables Hot Wheels. Los ganadores locales tendrán la oportunidad de competir por un lugar en la final mundial.','https://img.freepik.com/foto-gratis/conduccion-automoviles-modernos-ciudad_23-2151674222.jpg',1,1,'2024-09-27 21:15:17');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,'Deportes','2024-09-27 01:17:17'),(2,'Política','2024-09-27 01:17:17'),(3,'Social','2024-09-27 01:17:17'),(4,'Internacional','2024-09-27 01:17:17'),(5,'Cultura','2024-09-27 01:17:17'),(6,'Salud','2024-09-27 01:17:17');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-27 16:59:19
