CREATE DATABASE  IF NOT EXISTS `survey` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `survey`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: survey
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(32) NOT NULL,
  `email` varchar(200) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'e10adc3949ba59abbe56e057f20f883e','robertor@lexmark.com','2018-05-23 14:58:04');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `example_options`
--

DROP TABLE IF EXISTS `example_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `example_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL DEFAULT '0',
  `option_text` varchar(200) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `example_options`
--

LOCK TABLES `example_options` WRITE;
/*!40000 ALTER TABLE `example_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `example_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `example_questions`
--

DROP TABLE IF EXISTS `example_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `example_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` varchar(200) NOT NULL,
  `question_type` int(2) DEFAULT '0',
  `required` tinyint(1) DEFAULT '0',
  `helper_text` varchar(200) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `example_questions`
--

LOCK TABLES `example_questions` WRITE;
/*!40000 ALTER TABLE `example_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `example_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `example_response_answers`
--

DROP TABLE IF EXISTS `example_response_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `example_response_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `response_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL DEFAULT '0',
  `text` varchar(1000) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `example_response_answers`
--

LOCK TABLES `example_response_answers` WRITE;
/*!40000 ALTER TABLE `example_response_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `example_response_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `example_responses`
--

DROP TABLE IF EXISTS `example_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `example_responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `example_responses`
--

LOCK TABLES `example_responses` WRITE;
/*!40000 ALTER TABLE `example_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `example_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s1_options`
--

DROP TABLE IF EXISTS `s1_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s1_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL DEFAULT '0',
  `option_text` varchar(200) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s1_options`
--

LOCK TABLES `s1_options` WRITE;
/*!40000 ALTER TABLE `s1_options` DISABLE KEYS */;
INSERT INTO `s1_options` VALUES (1,1,'1','2018-05-23 13:48:43'),(2,1,'2','2018-05-23 13:48:43'),(3,1,'3','2018-05-25 15:03:25'),(4,1,'4','2018-05-25 15:03:25'),(5,1,'5','2018-05-25 15:03:25'),(6,2,'1','2018-05-25 15:03:25'),(7,2,'2','2018-05-25 15:03:25'),(8,2,'3','2018-05-27 14:21:32'),(9,2,'4','2018-05-27 14:21:32'),(10,2,'5','2018-05-27 14:21:32'),(11,3,'1','2018-05-27 14:21:32'),(12,3,'2','2018-05-27 14:21:32'),(13,3,'3','2018-05-27 14:21:32'),(14,3,'4','2018-05-27 14:21:32'),(15,3,'5','2018-05-27 14:21:32'),(16,4,'1','2018-05-27 14:21:32'),(17,4,'2','2018-05-27 14:21:32'),(18,4,'3','2018-05-27 14:21:32'),(19,4,'4','2018-05-27 14:21:32'),(20,4,'5','2018-05-27 14:21:32'),(21,5,'1','2018-05-27 14:21:32'),(22,5,'2','2018-05-27 14:21:32'),(23,5,'3','2018-05-27 14:21:32'),(24,5,'4','2018-05-27 14:21:32'),(25,5,'5','2018-05-27 14:21:32');
/*!40000 ALTER TABLE `s1_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s1_questions`
--

DROP TABLE IF EXISTS `s1_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s1_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` varchar(200) NOT NULL,
  `question_type` int(2) DEFAULT '0',
  `required` tinyint(1) DEFAULT '0',
  `helper_text` varchar(200) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s1_questions`
--

LOCK TABLES `s1_questions` WRITE;
/*!40000 ALTER TABLE `s1_questions` DISABLE KEYS */;
INSERT INTO `s1_questions` VALUES (1,'How was the food?',0,0,'page1.jpg','2018-05-23 13:48:43'),(2,'How do you find the prices?',0,0,'page2.jpg','2018-05-23 13:48:43'),(3,'Was the place clean?',0,0,'page3.jpg','2018-05-23 13:48:43'),(4,'How do you rate the speed of our service?',0,0,'page4.jpg','2018-05-23 13:48:43'),(5,'Rate your overall experience?',0,0,'page5.jpg','2018-05-23 13:48:43');
/*!40000 ALTER TABLE `s1_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s1_response_answers`
--

DROP TABLE IF EXISTS `s1_response_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s1_response_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `response_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL DEFAULT '0',
  `text` varchar(1000) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s1_response_answers`
--

LOCK TABLES `s1_response_answers` WRITE;
/*!40000 ALTER TABLE `s1_response_answers` DISABLE KEYS */;
INSERT INTO `s1_response_answers` VALUES (63,13,1,5,'1','2018-05-28 14:55:39'),(64,13,2,6,'1','2018-05-28 14:55:39'),(65,13,3,13,'1','2018-05-28 14:55:39'),(66,13,4,19,'1','2018-05-28 14:55:39'),(67,13,5,22,'1','2018-05-28 14:55:39'),(68,14,1,1,'1','2018-05-28 14:57:08'),(69,14,2,7,'1','2018-05-28 14:57:08'),(70,14,3,13,'1','2018-05-28 14:57:08'),(71,14,4,19,'1','2018-05-28 14:57:08'),(72,14,5,25,'1','2018-05-28 14:57:08'),(73,15,1,5,'1','2018-05-28 15:05:10'),(74,15,2,9,'1','2018-05-28 15:05:10'),(75,15,3,13,'1','2018-05-28 15:05:10'),(76,15,4,17,'1','2018-05-28 15:05:10'),(77,15,5,21,'1','2018-05-28 15:05:10'),(78,16,1,1,'1','2018-05-28 15:09:37'),(79,16,2,7,'1','2018-05-28 15:09:37'),(80,16,3,13,'1','2018-05-28 15:09:37'),(81,16,4,19,'1','2018-05-28 15:09:37'),(82,16,5,25,'1','2018-05-28 15:09:37'),(83,17,1,1,'1','2018-05-28 15:12:23'),(84,17,2,7,'1','2018-05-28 15:12:23'),(85,17,3,13,'1','2018-05-28 15:12:23'),(86,17,4,19,'1','2018-05-28 15:12:23'),(87,17,5,25,'1','2018-05-28 15:12:23'),(88,18,1,1,'1','2018-05-28 15:15:48'),(89,18,2,7,'1','2018-05-28 15:15:48'),(90,18,3,13,'1','2018-05-28 15:15:48'),(91,18,4,19,'1','2018-05-28 15:15:48'),(92,18,5,25,'1','2018-05-28 15:15:48'),(93,19,1,1,'1','2018-05-28 15:18:37'),(94,19,2,7,'1','2018-05-28 15:18:37'),(95,19,3,13,'1','2018-05-28 15:18:37'),(96,19,4,19,'1','2018-05-28 15:18:37'),(97,19,5,25,'1','2018-05-28 15:18:37'),(98,20,1,1,'1','2018-05-28 15:19:28'),(99,20,2,7,'1','2018-05-28 15:19:28'),(100,20,3,13,'1','2018-05-28 15:19:28'),(101,20,4,19,'1','2018-05-28 15:19:28'),(102,20,5,25,'1','2018-05-28 15:19:28'),(103,21,1,2,'1','2018-05-28 15:34:17'),(104,21,2,6,'1','2018-05-28 15:34:17'),(105,21,3,13,'1','2018-05-28 15:34:17'),(106,21,4,20,'1','2018-05-28 15:34:17'),(107,21,5,24,'1','2018-05-28 15:34:17'),(108,22,1,1,'1','2018-05-28 15:34:44'),(109,22,2,7,'1','2018-05-28 15:34:44'),(110,22,3,13,'1','2018-05-28 15:34:44'),(111,22,4,19,'1','2018-05-28 15:34:44'),(112,22,5,25,'1','2018-05-28 15:34:44'),(113,23,1,1,'1','2018-05-28 15:35:47'),(114,23,2,10,'1','2018-05-28 15:35:47'),(115,23,3,13,'1','2018-05-28 15:35:47'),(116,23,4,20,'1','2018-05-28 15:35:47'),(117,23,5,23,'1','2018-05-28 15:35:47'),(118,24,1,4,'1','2018-05-29 02:19:08'),(119,24,2,10,'1','2018-05-29 02:19:08'),(120,24,3,11,'1','2018-05-29 02:19:08'),(121,24,4,20,'1','2018-05-29 02:19:08'),(122,24,5,25,'1','2018-05-29 02:19:08'),(123,25,1,5,'1','2018-05-29 10:19:18'),(124,25,2,9,'1','2018-05-29 10:19:18'),(125,25,3,15,'1','2018-05-29 10:19:18'),(126,25,4,18,'1','2018-05-29 10:19:18'),(127,25,5,25,'1','2018-05-29 10:19:18'),(128,26,1,3,'1','2018-05-29 10:52:14'),(129,26,2,7,'1','2018-05-29 10:52:14'),(130,26,3,11,'1','2018-05-29 10:52:14'),(131,26,4,19,'1','2018-05-29 10:52:14'),(132,26,5,22,'1','2018-05-29 10:52:14'),(133,27,1,5,'1','2018-05-29 10:58:00'),(134,27,2,10,'1','2018-05-29 10:58:00'),(135,27,3,15,'1','2018-05-29 10:58:00'),(136,27,4,20,'1','2018-05-29 10:58:00'),(137,27,5,25,'1','2018-05-29 10:58:00'),(138,28,1,1,'1','2018-05-29 10:58:25'),(139,28,2,6,'1','2018-05-29 10:58:25'),(140,28,3,11,'1','2018-05-29 10:58:25'),(141,28,4,16,'1','2018-05-29 10:58:25'),(142,28,5,21,'1','2018-05-29 10:58:25'),(143,29,1,5,'1','2018-05-29 10:59:17'),(144,29,2,10,'1','2018-05-29 10:59:17'),(145,29,3,15,'1','2018-05-29 10:59:17'),(146,29,4,20,'1','2018-05-29 10:59:17'),(147,29,5,25,'1','2018-05-29 10:59:17'),(148,30,1,2,'1','2018-05-29 10:59:52'),(149,30,2,7,'1','2018-05-29 10:59:52'),(150,30,3,12,'1','2018-05-29 10:59:52'),(151,30,4,17,'1','2018-05-29 10:59:52'),(152,30,5,22,'1','2018-05-29 10:59:52'),(153,31,1,5,'1','2018-05-29 13:37:07'),(154,31,2,9,'1','2018-05-29 13:37:07'),(155,31,3,15,'1','2018-05-29 13:37:07'),(156,31,4,19,'1','2018-05-29 13:37:07'),(157,31,5,25,'1','2018-05-29 13:37:07'),(158,32,1,1,'1','2018-05-29 14:14:03'),(159,32,2,6,'1','2018-05-29 14:14:03'),(160,32,3,11,'1','2018-05-29 14:14:03'),(161,32,4,16,'1','2018-05-29 14:14:03'),(162,32,5,21,'1','2018-05-29 14:14:03'),(163,33,1,5,'1','2018-05-29 15:36:58'),(164,33,2,10,'1','2018-05-29 15:36:58'),(165,33,3,15,'1','2018-05-29 15:36:58'),(166,33,4,20,'1','2018-05-29 15:36:58'),(167,33,5,25,'1','2018-05-29 15:36:58'),(168,34,1,3,NULL,'2018-05-30 05:36:27'),(169,34,2,6,NULL,'2018-05-30 05:36:27'),(170,34,3,13,NULL,'2018-05-30 05:36:27'),(171,34,4,19,NULL,'2018-05-30 05:36:27'),(172,34,5,25,NULL,'2018-05-30 05:36:27'),(173,35,1,1,NULL,'2018-05-30 05:56:21'),(174,35,2,7,NULL,'2018-05-30 05:56:21'),(175,35,3,14,NULL,'2018-05-30 05:56:21'),(176,35,4,20,NULL,'2018-05-30 05:56:21'),(177,35,5,23,NULL,'2018-05-30 05:56:21'),(178,36,1,5,NULL,'2018-05-30 06:10:55'),(179,36,2,10,NULL,'2018-05-30 06:10:55'),(180,36,3,11,NULL,'2018-05-30 06:10:55'),(181,36,4,18,NULL,'2018-05-30 06:10:55'),(182,36,5,23,NULL,'2018-05-30 06:10:55'),(183,37,1,3,NULL,'2018-05-30 07:13:38'),(184,37,2,8,NULL,'2018-05-30 07:13:38'),(185,37,3,15,NULL,'2018-05-30 07:13:38'),(186,37,4,18,NULL,'2018-05-30 07:13:38'),(187,37,5,23,NULL,'2018-05-30 07:13:38'),(188,38,1,5,NULL,'2018-05-30 07:15:56'),(189,38,2,10,NULL,'2018-05-30 07:15:56'),(190,38,3,14,NULL,'2018-05-30 07:15:56'),(191,38,4,20,NULL,'2018-05-30 07:15:56'),(192,38,5,24,NULL,'2018-05-30 07:15:56'),(193,39,1,2,NULL,'2018-05-30 07:16:15'),(194,39,2,6,NULL,'2018-05-30 07:16:15'),(195,39,3,11,NULL,'2018-05-30 07:16:15'),(196,39,4,16,NULL,'2018-05-30 07:16:15'),(197,39,5,21,NULL,'2018-05-30 07:16:15'),(198,40,1,2,NULL,'2018-05-30 07:18:05'),(199,40,2,8,NULL,'2018-05-30 07:18:05'),(200,40,3,14,NULL,'2018-05-30 07:18:05'),(201,40,4,19,NULL,'2018-05-30 07:18:05'),(202,40,5,24,NULL,'2018-05-30 07:18:05'),(203,41,1,3,NULL,'2018-05-30 10:09:57'),(204,41,2,9,NULL,'2018-05-30 10:09:57'),(205,41,3,14,NULL,'2018-05-30 10:09:57'),(206,41,4,18,NULL,'2018-05-30 10:09:57'),(207,41,5,25,NULL,'2018-05-30 10:09:57'),(208,42,1,1,NULL,'2018-05-30 10:50:20'),(209,42,2,10,NULL,'2018-05-30 10:50:20'),(210,42,3,14,NULL,'2018-05-30 10:50:20'),(211,42,4,19,NULL,'2018-05-30 10:50:20'),(212,42,5,24,NULL,'2018-05-30 10:50:20'),(213,43,1,5,NULL,'2018-05-31 14:49:36'),(214,43,2,9,NULL,'2018-05-31 14:49:36'),(215,43,3,12,NULL,'2018-05-31 14:49:36'),(216,43,4,18,NULL,'2018-05-31 14:49:36'),(217,43,5,25,NULL,'2018-05-31 14:49:36'),(218,44,1,2,NULL,'2018-06-01 04:12:01'),(219,45,3,15,NULL,'2018-06-01 04:13:20'),(220,45,4,20,NULL,'2018-06-01 04:13:20'),(221,45,5,23,NULL,'2018-06-01 04:13:20'),(222,46,1,1,NULL,'2018-06-01 04:23:02'),(223,49,1,1,NULL,'2018-06-01 04:31:24'),(224,54,1,5,NULL,'2018-06-01 04:49:10'),(225,59,2,8,NULL,'2018-06-01 06:27:34'),(226,59,3,13,NULL,'2018-06-01 06:27:34'),(227,59,4,18,NULL,'2018-06-01 06:27:34'),(228,61,1,3,NULL,'2018-06-01 06:49:10'),(229,61,2,7,NULL,'2018-06-01 06:49:10'),(230,61,3,15,NULL,'2018-06-01 06:49:10'),(231,61,4,16,NULL,'2018-06-01 06:49:10'),(232,61,5,24,NULL,'2018-06-01 06:49:10'),(233,62,1,5,NULL,'2018-06-01 07:21:01'),(234,62,2,8,NULL,'2018-06-01 07:21:01'),(235,62,3,14,NULL,'2018-06-01 07:21:01'),(236,62,4,20,NULL,'2018-06-01 07:21:01'),(237,62,5,25,NULL,'2018-06-01 07:21:01');
/*!40000 ALTER TABLE `s1_response_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s1_responses`
--

DROP TABLE IF EXISTS `s1_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s1_responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s1_responses`
--

LOCK TABLES `s1_responses` WRITE;
/*!40000 ALTER TABLE `s1_responses` DISABLE KEYS */;
INSERT INTO `s1_responses` VALUES (13,1,'2018-05-28 14:55:39'),(14,1,'2018-05-28 14:57:08'),(15,1,'2018-05-28 15:05:10'),(16,1,'2018-05-28 15:09:37'),(17,1,'2018-05-28 15:12:23'),(18,1,'2018-05-28 15:15:48'),(19,1,'2018-05-28 15:18:36'),(20,1,'2018-05-28 15:19:28'),(21,1,'2018-05-28 15:34:17'),(22,1,'2018-05-28 15:34:44'),(23,1,'2018-05-28 15:35:47'),(24,1,'2018-05-29 02:19:08'),(25,1,'2018-05-29 10:19:18'),(26,1,'2018-05-29 10:52:14'),(27,1,'2018-05-29 10:58:00'),(28,1,'2018-05-29 10:58:25'),(29,1,'2018-05-29 10:59:17'),(30,1,'2018-05-29 10:59:52'),(31,1,'2018-05-29 13:37:07'),(32,1,'2018-05-29 14:14:03'),(33,1,'2018-05-29 15:36:58'),(34,1,'2018-05-30 05:36:27'),(35,1,'2018-05-30 05:56:21'),(36,1,'2018-05-30 06:10:55'),(37,1,'2018-05-30 07:13:38'),(38,1,'2018-05-30 07:15:56'),(39,1,'2018-05-30 07:16:15'),(40,1,'2018-05-30 07:18:05'),(41,1,'2018-05-30 10:09:57'),(42,1,'2018-05-30 10:50:20'),(43,1,'2018-05-31 14:49:36'),(44,1,'2018-06-01 04:12:01'),(45,1,'2018-06-01 04:13:20'),(46,1,'2018-06-01 04:23:02'),(47,1,'2018-06-01 04:30:59'),(48,1,'2018-06-01 04:31:14'),(49,1,'2018-06-01 04:31:24'),(50,1,'2018-06-01 04:36:20'),(51,1,'2018-06-01 04:37:10'),(52,1,'2018-06-01 04:41:23'),(53,1,'2018-06-01 04:41:30'),(54,1,'2018-06-01 04:49:10'),(55,1,'2018-06-01 04:49:16'),(56,1,'2018-06-01 04:49:24'),(57,1,'2018-06-01 04:49:48'),(58,1,'2018-06-01 04:50:02'),(59,1,'2018-06-01 06:27:34'),(60,1,'2018-06-01 06:33:37'),(61,1,'2018-06-01 06:49:10'),(62,1,'2018-06-01 07:21:01');
/*!40000 ALTER TABLE `s1_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_list`
--

DROP TABLE IF EXISTS `survey_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(100) NOT NULL,
  `prefix` varchar(20) NOT NULL,
  `slug` varchar(20) NOT NULL,
  `enabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_list`
--

LOCK TABLES `survey_list` WRITE;
/*!40000 ALTER TABLE `survey_list` DISABLE KEYS */;
INSERT INTO `survey_list` VALUES (1,'Begin','Please provide all basic information','s1','survey_one',1);
/*!40000 ALTER TABLE `survey_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_users`
--

DROP TABLE IF EXISTS `survey_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_users`
--

LOCK TABLES `survey_users` WRITE;
/*!40000 ALTER TABLE `survey_users` DISABLE KEYS */;
INSERT INTO `survey_users` VALUES (1,'station1','2018-05-23 14:28:08'),(2,'station2','2018-05-23 14:56:23'),(3,'station3','2018-05-23 14:58:40');
/*!40000 ALTER TABLE `survey_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'survey'
--

--
-- Dumping routines for database 'survey'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-01 15:26:47
