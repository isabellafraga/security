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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-11-17 00:45:22.267182','1','security',3,'',4,3),(2,'2020-11-17 00:45:22.402972','2','teste',3,'',4,3),(3,'2020-11-18 19:17:06.630400','3','carlamaia',3,'',7,4),(4,'2020-11-18 19:17:06.938595','2','carla',3,'',7,4),(5,'2020-11-18 19:17:07.102055','1','caramelo',3,'',7,4),(6,'2020-11-18 19:17:31.185733','12','09600178950',3,'',4,4),(7,'2020-11-18 19:17:31.303676','21','bel',3,'',4,4),(8,'2020-11-18 19:17:31.469737','6','caramelo',3,'',4,4),(9,'2020-11-18 19:17:31.569354','7','carla',3,'',4,4),(10,'2020-11-18 19:17:31.680547','9','carlamaia',3,'',4,4),(11,'2020-11-18 19:17:31.790810','19','fabin',3,'',4,4),(12,'2020-11-18 19:17:31.897889','17','maateussoa',3,'',4,4),(13,'2020-11-18 19:17:31.997935','13','mat',3,'',4,4),(14,'2020-11-18 19:17:32.114487','18','mateeusso',3,'',4,4),(15,'2020-11-18 19:17:32.320493','11','matsoares',3,'',4,4),(16,'2020-11-18 19:17:32.618318','22','mertinha',3,'',4,4),(17,'2020-11-18 19:17:32.769076','15','takemat',3,'',4,4),(18,'2020-11-18 19:38:18.679961','4','Fornecedor object (4)',2,'[]',9,4),(19,'2020-11-18 21:47:23.376461','23','lugasg',3,'',4,4),(20,'2020-11-18 21:56:29.657549','25','lugas',2,'[{\"changed\": {\"fields\": [\"Username\"]}}]',4,4),(21,'2020-11-18 21:56:46.244524','25','lucasg',2,'[{\"changed\": {\"fields\": [\"Username\"]}}]',4,4),(22,'2020-11-29 18:36:39.280807','6','Fornecedor object (6)',1,'[{\"added\": {}}]',9,4),(23,'2020-11-29 18:37:16.441823','6','Fornecedor object (6)',3,'',9,4),(24,'2020-11-30 13:59:18.040283','4','security',2,'[{\"changed\": {\"fields\": [\"First name\"]}}]',4,4),(25,'2020-12-01 00:32:49.831761','11','instalar camera',1,'[{\"added\": {}}]',15,4),(26,'2020-12-01 19:25:37.963705','1','Técnico',1,'[{\"added\": {}}]',3,4),(27,'2020-12-01 19:27:30.659728','1','Funcionário',2,'[{\"changed\": {\"fields\": [\"Name\", \"Permissions\"]}}]',3,4),(28,'2020-12-01 19:29:24.562810','26','andersona',2,'[{\"changed\": {\"fields\": [\"Groups\", \"User permissions\"]}}]',4,4),(29,'2020-12-01 20:02:36.039004','1','funcionario',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',3,4),(30,'2020-12-03 16:37:39.667930','7','\'llll\'\nIsabella Aparecida Fraga em Thu Dec  3 16:37:21 2020',1,'[{\"added\": {}}]',14,4),(31,'2020-12-03 18:17:06.579361','32','\'llll\'\nIsabella Aparecida Fraga em Thu Dec  3 18:09:08 2020',3,'',14,4),(32,'2020-12-03 18:17:06.678007','31','\'llll\'\nIsabella Aparecida Fraga em Thu Dec  3 17:58:13 2020',3,'',14,4),(33,'2020-12-03 18:17:06.743161','18','\'lkçç\'\nIsabella Aparecida Fraga em Thu Dec  3 16:52:29 2020',3,'',14,4),(34,'2020-12-03 18:17:06.855094','17','\'Precisa da central\'\nIsabella Aparecida Fraga em Thu Dec  3 16:52:18 2020',3,'',14,4),(35,'2020-12-03 18:17:39.972618','33','\'lkçç\'\nRogerio em Thu Dec  3 18:17:22 2020',3,'',14,4),(36,'2020-12-03 18:18:17.134359','12','instalar camera',3,'',15,4),(37,'2020-12-03 18:18:23.135978','16','Monitoramento',3,'',15,4),(38,'2020-12-03 18:18:26.896384','11','instalar camera',3,'',15,4),(39,'2020-12-03 18:18:30.946599','14','Monitoramento',3,'',15,4),(40,'2020-12-03 21:00:48.499726','3','Marco',1,'[{\"added\": {}}]',18,4),(41,'2020-12-03 21:00:59.087694','1','Marco',3,'',18,4),(42,'2020-12-03 21:01:02.597686','2','Marco',3,'',18,4),(43,'2020-12-03 21:01:21.295352','3','Marco',3,'',18,4),(44,'2020-12-04 03:25:13.803196','1','Venda de R$5.000,00',1,'[{\"added\": {}}]',19,4),(45,'2020-12-04 13:46:17.644446','2','Venda de R$5.000,00',2,'[{\"changed\": {\"fields\": [\"Data\"]}}]',19,4),(46,'2020-12-04 13:48:27.183871','1','Venda de R$5.000,00',2,'[{\"changed\": {\"fields\": [\"Data\"]}}]',19,4);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 14:25:25
