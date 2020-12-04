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
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1lzf3qnkxx18lypwpmot1wxghuruonv8','.eJxVjDsOwjAQBe_iGllOvP5R0nMGa9dr4wCKpTipEHeHSCmgfTPzXiLitta49bzEicVZgDj9boTpkecd8B3nW5OpzesykdwVedAur43z83K4fwcVe_3WlkYHrqDXZiDlR9AlaUzFBIaCjgmU8bYYYB9KsEQ0WA4JQBGNWhvx_gDjAjfd:1kk5vm:kIvacoy4810sQRWig_0uZF80ocwX8076kCGRsjC_2iQ','2020-12-15 13:42:58.775073'),('4huf6qu432z8efsmjlebvu65xq1rt6ms','.eJxVjDsOwjAQBe_iGllOvP5R0nMGa9dr4wCKpTipEHeHSCmgfTPzXiLitta49bzEicVZgDj9boTpkecd8B3nW5OpzesykdwVedAur43z83K4fwcVe_3WlkYHrqDXZiDlR9AlaUzFBIaCjgmU8bYYYB9KsEQ0WA4JQBGNWhvx_gDjAjfd:1kkGpP:E20MlrwwxU5kJdxpFpBiSn48e9PgNZf6qam1-cpXeeI','2020-12-16 01:21:07.544211'),('84uy0hioh9ue8dk4poc0wl9s51rxpmhi','.eJxVjDsOwjAQBe_iGllOvP5R0nMGa9dr4wCKpTipEHeHSCmgfTPzXiLitta49bzEicVZgDj9boTpkecd8B3nW5OpzesykdwVedAur43z83K4fwcVe_3WlkYHrqDXZiDlR9AlaUzFBIaCjgmU8bYYYB9KsEQ0WA4JQBGNWhvx_gDjAjfd:1kjm70:vSQ2vU0h0cs4hfmcl5xWNN5i8FVdIoCMPiT7MqVos_k','2020-12-14 16:33:14.504104'),('aqdcwa1a5wdaff7eu8crcxz8lwet6y31','.eJxVjDsOwjAQBe_iGllOvP5R0nMGa9dr4wCKpTipEHeHSCmgfTPzXiLitta49bzEicVZgDj9boTpkecd8B3nW5OpzesykdwVedAur43z83K4fwcVe_3WlkYHrqDXZiDlR9AlaUzFBIaCjgmU8bYYYB9KsEQ0WA4JQBGNWhvx_gDjAjfd:1kfRxO:gIpOG_T1J99xS5Y6qAXyxMtO6siSmJgavpYpnhjPLrc','2020-12-02 18:13:26.846193'),('c3jhlkqfawfgwj3i3vc1xplf5zic4zaf','.eJxVjDsOwjAQBe_iGllOvP5R0nMGa9dr4wCKpTipEHeHSCmgfTPzXiLitta49bzEicVZgDj9boTpkecd8B3nW5OpzesykdwVedAur43z83K4fwcVe_3WlkYHrqDXZiDlR9AlaUzFBIaCjgmU8bYYYB9KsEQ0WA4JQBGNWhvx_gDjAjfd:1kfvhF:0973TqT_b-QlQ0-fZXEEGB5v5m4i8Z2-tC9HYezGBRs','2020-12-04 01:58:45.585820'),('h4i7730pa09fvfzrbtrdxfbb8gv6dm7d','.eJxVjDsOwjAQBe_iGlm7a8cfSnrOYPkHDiBbipMKcXdiKQW0M_Pemzm_rcVtPS9uTuzMaGKnXxh8fOY6THr4em88trouc-Aj4Yft_NpSfl2O9u-g-F72tRYEEwhMSiWp0YInAIPR3iSJAQm1RaFk2MuMmGwEJMyCDMRgJPt8AbduNgk:1klEVW:sZA0fkGt-Ep7QGtoZ4Z98q-5Kg0psOtFhJGej1QVYsw','2020-12-18 17:04:34.993198'),('i1vr146llh727wif5wwwuf3iwafeo3v1','.eJxVjDsOwjAQBe_iGllOvP5R0nMGa9dr4wCKpTipEHeHSCmgfTPzXiLitta49bzEicVZgDj9boTpkecd8B3nW5OpzesykdwVedAur43z83K4fwcVe_3WlkYHrqDXZiDlR9AlaUzFBIaCjgmU8bYYYB9KsEQ0WA4JQBGNWhvx_gDjAjfd:1kjjjy:_6g9JJO37ieJrLvgKDMQ3f3UctWieaI9A649dVRruEc','2020-12-14 14:01:18.390284'),('jrrd78kct7ieom1zigoayaosvs7ifb4k','.eJxVjDsOwjAQBe_iGllOvP5R0nMGa9dr4wCKpTipEHeHSCmgfTPzXiLitta49bzEicVZgDj9boTpkecd8B3nW5OpzesykdwVedAur43z83K4fwcVe_3WlkYHrqDXZiDlR9AlaUzFBIaCjgmU8bYYYB9KsEQ0WA4JQBGNWhvx_gDjAjfd:1kfR89:gt4uFgZD4yjMe4QY4_JTwdmkMfVRajoERPgRWj-j1ug','2020-12-02 17:20:29.856720'),('ms2t1ppu10dlqurnj29ufy5hus08jui0','.eJxVjDsOwjAQBe_iGllOvP5R0nMGa9dr4wCKpTipEHeHSCmgfTPzXiLitta49bzEicVZgDj9boTpkecd8B3nW5OpzesykdwVedAur43z83K4fwcVe_3WlkYHrqDXZiDlR9AlaUzFBIaCjgmU8bYYYB9KsEQ0WA4JQBGNWhvx_gDjAjfd:1kjSkm:vPxv-V9ksoGRHvPxAVaxkd8WnOA1HXPhH-Jx7NUcFhw','2020-12-13 19:53:00.072455'),('rst1ksj7ggogh8zf5ctw90jln1agem3r','.eJxVjDsOwjAQBe_iGllOvP5R0nMGa9dr4wCKpTipEHeHSCmgfTPzXiLitta49bzEicVZgDj9boTpkecd8B3nW5OpzesykdwVedAur43z83K4fwcVe_3WlkYHrqDXZiDlR9AlaUzFBIaCjgmU8bYYYB9KsEQ0WA4JQBGNWhvx_gDjAjfd:1kjSRV:02z0xtET2UMHwDkL5-e5r-85j32GZGcKqmbjaVChqcQ','2020-12-13 19:33:05.201439'),('xnhjia54p36mc4ixteonko9srmxfkp98','.eJxVjDsOwjAQBe_iGllOvP5R0nMGa9dr4wCKpTipEHeHSCmgfTPzXiLitta49bzEicVZgDj9boTpkecd8B3nW5OpzesykdwVedAur43z83K4fwcVe_3WlkYHrqDXZiDlR9AlaUzFBIaCjgmU8bYYYB9KsEQ0WA4JQBGNWhvx_gDjAjfd:1kfSqr:2BkiEPijuLMhjWw7DbozUzrIz8eMxqbDrNOmoHtfFI0','2020-12-02 19:10:45.825007'),('yewrf1hxu7rspjha97i7x6vgbtj732h7','.eJxVjDsOwjAQBe_iGllOvP5R0nMGa9dr4wCKpTipEHeHSCmgfTPzXiLitta49bzEicVZgDj9boTpkecd8B3nW5OpzesykdwVedAur43z83K4fwcVe_3WlkYHrqDXZiDlR9AlaUzFBIaCjgmU8bYYYB9KsEQ0WA4JQBGNWhvx_gDjAjfd:1kfSv7:Yx0E5v8OdwQQS7edJOwDcJMvxaJr9K2lvjvO1HJMRp4','2020-12-02 19:15:09.250382');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 14:25:32
