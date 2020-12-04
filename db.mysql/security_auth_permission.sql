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
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add funcionario',7,'add_funcionario'),(26,'Can change funcionario',7,'change_funcionario'),(27,'Can delete funcionario',7,'delete_funcionario'),(28,'Can view funcionario',7,'view_funcionario'),(29,'Can add cliente',8,'add_cliente'),(30,'Can change cliente',8,'change_cliente'),(31,'Can delete cliente',8,'delete_cliente'),(32,'Can view cliente',8,'view_cliente'),(33,'Can add fornecedor',9,'add_fornecedor'),(34,'Can change fornecedor',9,'change_fornecedor'),(35,'Can delete fornecedor',9,'delete_fornecedor'),(36,'Can view fornecedor',9,'view_fornecedor'),(37,'Can add my model',10,'add_mymodel'),(38,'Can change my model',10,'change_mymodel'),(39,'Can delete my model',10,'delete_mymodel'),(40,'Can view my model',10,'view_mymodel'),(41,'Can add produto',11,'add_produto'),(42,'Can change produto',11,'change_produto'),(43,'Can delete produto',11,'delete_produto'),(44,'Can view produto',11,'view_produto'),(45,'Can add Token',12,'add_token'),(46,'Can change Token',12,'change_token'),(47,'Can delete Token',12,'delete_token'),(48,'Can view Token',12,'view_token'),(49,'Can add token',13,'add_tokenproxy'),(50,'Can change token',13,'change_tokenproxy'),(51,'Can delete token',13,'delete_tokenproxy'),(52,'Can view token',13,'view_tokenproxy'),(53,'Can add comment',14,'add_comment'),(54,'Can change comment',14,'change_comment'),(55,'Can delete comment',14,'delete_comment'),(56,'Can view comment',14,'view_comment'),(57,'Can add event',15,'add_event'),(58,'Can change event',15,'change_event'),(59,'Can delete event',15,'delete_event'),(60,'Can view event',15,'view_event'),(61,'Can add Empresa',16,'add_empresa'),(62,'Can change Empresa',16,'change_empresa'),(63,'Can delete Empresa',16,'delete_empresa'),(64,'Can view Empresa',16,'view_empresa'),(65,'Can add Compra',17,'add_compra'),(66,'Can change Compra',17,'change_compra'),(67,'Can delete Compra',17,'delete_compra'),(68,'Can view Compra',17,'view_compra'),(69,'Can add orcamento',18,'add_orcamento'),(70,'Can change orcamento',18,'change_orcamento'),(71,'Can delete orcamento',18,'delete_orcamento'),(72,'Can view orcamento',18,'view_orcamento'),(73,'Can add meta',19,'add_meta'),(74,'Can change meta',19,'change_meta'),(75,'Can delete meta',19,'delete_meta'),(76,'Can view meta',19,'view_meta'),(77,'Can add metas',20,'add_metas'),(78,'Can change metas',20,'change_metas'),(79,'Can delete metas',20,'delete_metas'),(80,'Can view metas',20,'view_metas');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 14:25:26
