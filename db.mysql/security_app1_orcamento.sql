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
-- Table structure for table `app1_orcamento`
--

DROP TABLE IF EXISTS `app1_orcamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_orcamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int DEFAULT NULL,
  `produto_id` int DEFAULT NULL,
  `data` date DEFAULT NULL,
  `funcionario_id` int DEFAULT NULL,
  `categoria` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app1_orcamento_cliente_id_32b42837_fk_app1_cliente_id` (`cliente_id`),
  KEY `app1_orcamento_produto_id_b2478080_fk_app1_produto_id` (`produto_id`),
  KEY `app1_orcamento_funcionario_id_aa75b08f_fk_app1_funcionario_id` (`funcionario_id`),
  CONSTRAINT `app1_orcamento_cliente_id_32b42837_fk_app1_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `app1_cliente` (`id`),
  CONSTRAINT `app1_orcamento_funcionario_id_aa75b08f_fk_app1_funcionario_id` FOREIGN KEY (`funcionario_id`) REFERENCES `app1_funcionario` (`id`),
  CONSTRAINT `app1_orcamento_produto_id_b2478080_fk_app1_produto_id` FOREIGN KEY (`produto_id`) REFERENCES `app1_produto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_orcamento`
--

LOCK TABLES `app1_orcamento` WRITE;
/*!40000 ALTER TABLE `app1_orcamento` DISABLE KEYS */;
INSERT INTO `app1_orcamento` VALUES (4,4,3,'2020-12-22',14,'CA'),(5,4,4,'2020-12-03',13,'CA');
/*!40000 ALTER TABLE `app1_orcamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 14:25:33
