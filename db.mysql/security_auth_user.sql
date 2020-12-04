-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: security
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (3,'argon2$argon2i$v=19$m=512,t=2,p=2$M1k2cmJweVMzMXlu$/7WGVb2H07iirgL0zLofeQ','2020-11-17 00:43:02.417197',1,'isabellafraga','','','isabella@fraga.com',1,1,'2020-11-17 00:42:32.825693'),(4,'argon2$argon2i$v=19$m=512,t=2,p=2$djBxY2lvYkdPU0dp$QM0tZrgg74/mI2iz0mgjgg','2020-12-04 12:54:26.547876',1,'security','Security','','security@gmail.com',1,1,'2020-11-17 00:46:25.000000'),(25,'argon2$argon2i$v=19$m=512,t=2,p=2$TFZRV2NHQXU5NVc2$wpPt5Fy/KuZNBa35KkdWFg','2020-12-04 17:04:34.802924',0,'lucasg','Lucas','Galhardi','lucasgalhardi@senai.com.br',0,1,'2020-11-18 21:49:23.000000'),(26,'argon2$argon2i$v=19$m=512,t=2,p=2$NlQ4WXV0aFl4b0JC$h19xekuuSUMMLrNVJB4/OQ',NULL,0,'andersona','Anderson','Avila','andersonavila@senai.com.br',0,1,'2020-11-18 21:51:32.000000'),(27,'argon2$argon2i$v=19$m=512,t=2,p=2$Rk5BeTdjckZiZU13$XvYJ91nRyq7DyPqSRKBbGQ',NULL,0,'fabiom','Fabio','Matsunaga','fabiomatsunaga@senai.com.br',0,1,'2020-11-18 21:53:21.963963');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 14:25:34
