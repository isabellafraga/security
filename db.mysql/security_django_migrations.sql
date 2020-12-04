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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-11-16 21:08:18.023016'),(2,'auth','0001_initial','2020-11-16 21:08:25.859666'),(3,'admin','0001_initial','2020-11-16 21:09:09.255150'),(4,'admin','0002_logentry_remove_auto_add','2020-11-16 21:09:22.531971'),(5,'admin','0003_logentry_add_action_flag_choices','2020-11-16 21:09:22.903302'),(6,'app1','0001_initial','2020-11-16 21:09:26.448033'),(7,'app1','0002_funcionario','2020-11-16 21:09:39.251749'),(8,'app1','0003_auto_20201108_2305','2020-11-16 21:10:13.315340'),(9,'app1','0004_auto_20201108_2314','2020-11-16 21:10:29.458226'),(10,'app1','0005_auto_20201108_2335','2020-11-16 21:10:36.797021'),(11,'app1','0006_auto_20201109_2156','2020-11-16 21:10:47.756746'),(12,'app1','0007_auto_20201109_2227','2020-11-16 21:10:59.766981'),(13,'app1','0008_auto_20201113_1938','2020-11-16 21:11:04.508175'),(14,'app1','0009_auto_20201115_2306','2020-11-16 21:11:06.096442'),(15,'contenttypes','0002_remove_content_type_name','2020-11-16 21:11:15.387937'),(16,'auth','0002_alter_permission_name_max_length','2020-11-16 21:11:19.857915'),(17,'auth','0003_alter_user_email_max_length','2020-11-16 21:11:20.626357'),(18,'auth','0004_alter_user_username_opts','2020-11-16 21:11:20.748861'),(19,'auth','0005_alter_user_last_login_null','2020-11-16 21:11:23.752129'),(20,'auth','0006_require_contenttypes_0002','2020-11-16 21:11:24.049982'),(21,'auth','0007_alter_validators_add_error_messages','2020-11-16 21:11:24.345656'),(22,'auth','0008_alter_user_username_max_length','2020-11-16 21:11:28.677879'),(23,'auth','0009_alter_user_last_name_max_length','2020-11-16 21:11:35.190870'),(24,'auth','0010_alter_group_name_max_length','2020-11-16 21:11:36.657005'),(25,'auth','0011_update_proxy_permissions','2020-11-16 21:11:36.867055'),(26,'auth','0012_alter_user_first_name_max_length','2020-11-16 21:11:41.944300'),(27,'sessions','0001_initial','2020-11-16 21:11:43.177464'),(28,'app1','0010_produto','2020-11-28 22:31:57.457486'),(29,'app1','0011_auto_20201128_1936','2020-11-28 22:36:30.393225'),(30,'app1','0012_produto_categoria','2020-11-28 23:06:18.480468'),(31,'app1','0013_auto_20201129_0019','2020-11-29 03:19:22.567135'),(32,'app1','0013_auto_20201129_0125','2020-11-29 04:26:09.235913'),(33,'app1','0014_auto_20201129_1716','2020-11-29 20:16:55.517047'),(34,'authtoken','0001_initial','2020-11-30 02:52:37.885389'),(35,'authtoken','0002_auto_20160226_1747','2020-11-30 02:52:44.977226'),(36,'authtoken','0003_tokenproxy','2020-11-30 02:52:45.180332'),(37,'app1','0015_comment_event','2020-11-30 03:32:23.487424'),(38,'app1','0016_auto_20201130_1825','2020-11-30 21:25:21.854888'),(39,'app1','0017_auto_20201130_2027','2020-11-30 23:27:35.242540'),(40,'app1','0018_auto_20201201_1040','2020-12-01 13:41:26.832396'),(41,'app1','0019_auto_20201201_1156','2020-12-01 14:59:19.352597'),(42,'app1','0020_produto_cliente','2020-12-01 15:11:18.451064'),(43,'app1','0021_remove_produto_cliente','2020-12-01 15:22:31.047637'),(44,'app1','0022_auto_20201202_1900','2020-12-02 22:01:04.103634'),(45,'app1','0023_auto_20201202_2157','2020-12-03 00:57:38.910605'),(46,'app1','0024_auto_20201203_1321','2020-12-03 16:22:09.931252'),(47,'app1','0025_auto_20201203_1344','2020-12-03 16:44:35.610384'),(48,'app1','0026_auto_20201203_1358','2020-12-03 16:58:22.021454'),(49,'app1','0027_auto_20201203_1714','2020-12-03 20:14:57.921368'),(50,'app1','0028_auto_20201203_1744','2020-12-03 20:44:31.881155'),(51,'app1','0029_auto_20201203_1753','2020-12-03 20:53:59.458475'),(52,'app1','0030_auto_20201203_1758','2020-12-03 20:58:57.014236'),(53,'app1','0031_meta','2020-12-04 02:29:19.696417'),(54,'app1','0032_auto_20201204_0006','2020-12-04 03:06:27.365319'),(55,'app1','0033_auto_20201204_0019','2020-12-04 03:19:37.105628'),(56,'app1','0034_auto_20201204_1013','2020-12-04 13:35:41.951987'),(57,'app1','0035_auto_20201204_1037','2020-12-04 13:37:49.320758'),(58,'app1','0036_auto_20201204_1041','2020-12-04 13:41:52.932551'),(59,'app1','0037_auto_20201204_1046','2020-12-04 13:46:09.226048'),(60,'app1','0031_metas','2020-12-04 14:30:14.948496'),(61,'app1','0032_auto_20201204_1230','2020-12-04 15:30:45.904585'),(62,'app1','0033_auto_20201204_1233','2020-12-04 15:33:35.990534');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 14:25:29
