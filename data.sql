-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: ihotel
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dinnertable`
--

DROP TABLE IF EXISTS `dinnertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dinnertable` (
  `id` int(11) NOT NULL,
  `tableName` varchar(255) NOT NULL,
  `tableStatus` tinyint(4) NOT NULL,
  `orderDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dinnertable`
--

LOCK TABLES `dinnertable` WRITE;
/*!40000 ALTER TABLE `dinnertable` DISABLE KEYS */;
INSERT INTO `dinnertable` VALUES (1,'1号',0,NULL),(2,'2号',0,NULL),(3,'3号',0,NULL),(4,'4号',0,NULL),(5,'5号',0,NULL),(7,'7号',0,NULL),(8,'8号',0,NULL),(9,'9号',0,NULL),(10,'10号',0,NULL),(11,'11号',0,NULL),(12,'12号',0,NULL),(13,'13号',0,NULL),(14,'14号',0,NULL),(15,'15号',0,NULL),(16,'16号',0,NULL),(17,'17号',0,NULL),(18,'18号',0,NULL),(19,'19号',0,NULL),(20,'20号',0,NULL),(21,'21号',0,NULL),(22,'22号',0,NULL);
/*!40000 ALTER TABLE `dinnertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `food` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foodName` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `mprice` double NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `foodType_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `foodType_id` (`foodType_id`),
  CONSTRAINT `food_ibfk_1` FOREIGN KEY (`foodType_id`) REFERENCES `foodtype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1,'蒜头炒肉',5,4.5,'蒜头炒肉','F:\\Tomcat\\apache-tomcat-8.5.38\\webapps\\IHotel\\00e6d1775dd0bd26307d827b868dejpeg.jpg',2),(2,'韭黄炒蛋',5,4.5,'韭黄炒蛋','F:\\Tomcat\\apache-tomcat-8.5.38\\webapps\\IHotel\\5acd8387d9c6f2c67e315e570e158jpeg.webp',2),(3,'麻婆豆腐',5,4.5,'麻婆豆腐','F:\\Tomcat\\apache-tomcat-8.5.38\\webapps\\IHotel\\ed7f10e17d82746359419f49a5cd0jpeg.webp',2),(4,'番茄炒蛋',4,3.5,'番茄炒蛋',NULL,2),(5,'鱼香肉丝',5,4.5,'鱼香肉丝',NULL,2),(6,'青椒肉丝',5,4.5,'青椒肉丝',NULL,2),(7,'藕片',4,3.5,'凉拌藕片','F:\\Tomcat\\apache-tomcat-8.5.38\\webapps\\IHotel\\46b2188043b902ec1e62b1d4ac140jpeg.webp',1),(8,'白虾',36,23,'真的白瞎','/home/gxf/project/hotel/IHotel/target/IHotel/nologin.png',2),(9,'炒土豆丝',4,3.5,'炒土豆丝','F:\\Tomcat\\apache-tomcat-8.5.38\\webapps\\IHotel\\00e6d1775dd0bd26307d827b868dejpeg.png',1),(10,'黄焖鸡',6,5.5,'黄焖鸡','F:\\Tomcat\\apache-tomcat-8.5.38\\webapps\\IHotel\\2cef9089407bc16092399ec91966fjpeg.webp',4),(11,'炒猪肝',5,4.5,'炒猪肝','F:\\Tomcat\\apache-tomcat-8.5.38\\webapps\\IHotel\\7c14caa022e487b145db5f4db939ejpeg.webp',4),(12,'小炒肉',5,4.5,'小炒肉','F:\\Tomcat\\apache-tomcat-8.5.38\\webapps\\IHotel\\890750eeabe0b75cb4ba9c35ac3a7jpeg.webp',4);
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foodtype`
--

DROP TABLE IF EXISTS `foodtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `foodtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foodtype`
--

LOCK TABLES `foodtype` WRITE;
/*!40000 ALTER TABLE `foodtype` DISABLE KEYS */;
INSERT INTO `foodtype` VALUES (1,'选素菜'),(2,'推荐菜'),(4,'选荤菜');
/*!40000 ALTER TABLE `foodtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foodCount` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orderid` (`orderid`),
  KEY `food_id` (`food_id`),
  CONSTRAINT `orderDetail_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orderDetail_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` VALUES (12,2,7,4),(13,1,8,7),(14,1,9,4),(15,1,9,6),(16,1,10,7),(17,1,10,4),(18,1,10,7),(19,1,10,4),(20,1,12,7),(21,1,13,5),(22,1,14,4),(23,2,15,3),(24,1,15,2),(25,2,16,5),(26,1,17,4),(27,1,18,1),(28,1,19,9),(29,2,20,1),(30,1,20,9),(31,1,21,2),(32,1,22,2),(33,1,22,7);
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `totalPrice` double NOT NULL,
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0',
  `orderDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `table_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `table_id` (`table_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`table_id`) REFERENCES `dinnertable` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (7,11.2,1,'2019-05-24 12:25:36',7),(8,0.02,1,'2019-05-24 16:25:37',1),(9,14.5,1,'2019-05-24 16:30:32',2),(10,5.619999999999999,1,'2019-05-25 15:28:55',1),(11,5.619999999999999,1,'2019-05-25 15:28:57',1),(12,0.02,1,'2019-05-25 15:48:26',7),(13,5.6,1,'2019-05-25 15:51:07',12),(14,5.6,1,'2019-05-25 15:51:26',10),(15,17,1,'2019-05-25 15:53:16',2),(16,11.2,1,'2019-05-25 18:12:26',1),(17,5.6,1,'2019-05-26 19:26:11',14),(18,5.7,1,'2019-05-26 21:24:38',1),(19,4,1,'2019-05-27 10:32:00',2),(20,14,1,'2019-05-27 11:11:17',4),(21,5,1,'2019-05-27 11:13:33',1),(22,9,1,'2019-05-29 15:03:39',1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `role` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('8d10055b7c404a72b985957082411a88','aa@aa.aa','JL','123456',0,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-17 14:29:56
