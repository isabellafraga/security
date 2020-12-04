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
-- Table structure for table `app1_funcionario`
--

DROP TABLE IF EXISTS `app1_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_funcionario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CTPS` varchar(11) DEFAULT NULL,
  `salario` decimal(8,2) DEFAULT NULL,
  `admissao` date DEFAULT NULL,
  `CPF` varchar(14) DEFAULT NULL,
  `cargo` varchar(1) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `categoria` varchar(6) DEFAULT NULL,
  `comissao` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `app1_funcionario_usuario_id_ba125f67_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_funcionario`
--

LOCK TABLES `app1_funcionario` WRITE;
/*!40000 ALTER TABLE `app1_funcionario` DISABLE KEYS */;
INSERT INTO `app1_funcionario` VALUES (13,'00000000',NULL,'2020-11-18','00000000000','G','Rua Belém 844','43000000000',25,'1995-11-06',NULL,NULL),(14,'000000000',NULL,'2020-11-18','00000000000','T','Rua Belém 844','43000000000',26,'1990-07-23',NULL,NULL),(15,'0000000000',NULL,'2020-11-18','0000000000','V','Rua Belém 844','43000000000',27,'1994-03-21',NULL,NULL);
/*!40000 ALTER TABLE `app1_funcionario` ENABLE KEYS */;
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
