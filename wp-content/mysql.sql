-- MySQL dump 10.13  Distrib 5.7.32-35, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wp_buradadev
-- ------------------------------------------------------
-- Server version	5.7.32-35-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!50717 SELECT COUNT(*) INTO @rocksdb_has_p_s_session_variables FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'session_variables' */;
/*!50717 SET @rocksdb_get_is_supported = IF (@rocksdb_has_p_s_session_variables, 'SELECT COUNT(*) INTO @rocksdb_is_supported FROM performance_schema.session_variables WHERE VARIABLE_NAME=\'rocksdb_bulk_load\'', 'SELECT 0') */;
/*!50717 PREPARE s FROM @rocksdb_get_is_supported */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50717 SET @rocksdb_enable_bulk_load = IF (@rocksdb_is_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @rocksdb_dummy_bulk_load = 0') */;
/*!50717 PREPARE s FROM @rocksdb_enable_bulk_load */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wpengine.com/','','2021-03-14 14:23:35','2021-03-14 14:23:35','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_draft_submissions`
--

DROP TABLE IF EXISTS `wp_gf_draft_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_draft_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_draft_submissions`
--

LOCK TABLES `wp_gf_draft_submissions` WRITE;
/*!40000 ALTER TABLE `wp_gf_draft_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gf_draft_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_entry`
--

DROP TABLE IF EXISTS `wp_gf_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_entry` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `form_id_status` (`form_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_entry`
--

LOCK TABLES `wp_gf_entry` WRITE;
/*!40000 ALTER TABLE `wp_gf_entry` DISABLE KEYS */;
INSERT INTO `wp_gf_entry` VALUES (6,1,NULL,'2021-03-14 18:51:07','2021-03-14 18:51:07',0,0,'99.237.110.133','https://buradadev.wpengine.com/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36','USD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active'),(7,1,NULL,'2021-03-14 18:53:49','2021-03-14 18:53:49',0,0,'99.237.110.133','https://buradadev.wpengine.com/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36','USD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active'),(8,1,NULL,'2021-03-14 18:55:04','2021-03-14 18:55:04',0,0,'113.11.38.40','https://buradadev.wpengine.com/','Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36','USD',NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,'active'),(9,1,NULL,'2021-03-14 18:59:51','2021-03-14 18:59:51',0,0,'99.237.110.133','https://buradadev.wpengine.com/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36','USD',NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,'active'),(10,1,NULL,'2021-03-16 10:47:19','2021-03-16 10:47:19',0,0,'99.237.110.133','http://buradadev.wpengine.com/','Mozilla/5.0 (iPhone; CPU iPhone OS 14_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Mobile/15E148 Safari/604.1','USD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active'),(11,1,NULL,'2021-03-19 14:40:19','2021-03-19 14:40:19',0,1,'113.11.38.40','https://buradadev.wpengine.com/','Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','USD',NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,'active'),(12,1,NULL,'2021-03-19 18:14:10','2021-03-19 18:14:10',0,0,'99.237.110.133','https://buradadev.wpengine.com/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','USD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active'),(13,1,NULL,'2021-03-19 21:56:23','2021-03-19 21:56:23',0,0,'99.237.110.133','https://buradadev.wpengine.com/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','USD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active');
/*!40000 ALTER TABLE `wp_gf_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_entry_meta`
--

DROP TABLE IF EXISTS `wp_gf_entry_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_entry_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `entry_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  `item_index` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `entry_id` (`entry_id`),
  KEY `meta_value` (`meta_value`(191))
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_entry_meta`
--

LOCK TABLES `wp_gf_entry_meta` WRITE;
/*!40000 ALTER TABLE `wp_gf_entry_meta` DISABLE KEYS */;
INSERT INTO `wp_gf_entry_meta` VALUES (21,1,6,'1','Michael Muluneh',''),(22,1,6,'2','mmuluneh@kpd-i.com',''),(23,1,6,'3','(647) 804-1621',''),(24,1,6,'4','TEST inquiry',''),(25,1,7,'1','Michael Muluneh',''),(26,1,7,'2','mmuluneh@kpd-i.com',''),(27,1,7,'3','(647) 804-1621',''),(28,1,7,'4','TEST inquiry',''),(29,1,8,'1','Golam',''),(30,1,8,'2','hello.golam@gmail.com',''),(31,1,8,'3','(999) 999-9999',''),(32,1,8,'4','Test',''),(33,1,9,'1','Michael Muluneh',''),(34,1,9,'2','mmuluneh@kpd-i.com',''),(35,1,9,'3','(647) 804-1621',''),(36,1,9,'4','TEST inquiry',''),(37,1,10,'1','Michael Muluneh',''),(38,1,10,'2','Mmuluneh@kpd-i.com',''),(39,1,10,'3','(647) 804-1621',''),(40,1,10,'4','Test',''),(41,1,11,'1','Golam',''),(42,1,11,'2','hello.golam@gmail.com',''),(43,1,11,'5','KPDI',''),(44,1,11,'3','(999) 999-9999',''),(45,1,11,'4','Test',''),(46,1,12,'1','Michael Muluneh',''),(47,1,12,'2','mmuluneh@kpd-i.com',''),(48,1,12,'5','Test',''),(49,1,12,'3','(647) 804-1621',''),(50,1,12,'4','test',''),(51,1,13,'1','Michael',''),(52,1,13,'2','mmuluneh@kpd-i.com',''),(53,1,13,'5','Test',''),(54,1,13,'3','(566) 562-6262',''),(55,1,13,'4','Test','');
/*!40000 ALTER TABLE `wp_gf_entry_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_entry_notes`
--

DROP TABLE IF EXISTS `wp_gf_entry_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_entry_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sub_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `entry_user_key` (`entry_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_entry_notes`
--

LOCK TABLES `wp_gf_entry_notes` WRITE;
/*!40000 ALTER TABLE `wp_gf_entry_notes` DISABLE KEYS */;
INSERT INTO `wp_gf_entry_notes` VALUES (6,6,'Admin Notification (ID: 604e51fde3bd5)',0,'2021-03-14 18:51:08','WordPress successfully passed the notification email to the sending server.','notification','success'),(7,7,'Admin Notification (ID: 604e51fde3bd5)',0,'2021-03-14 18:53:50','WordPress successfully passed the notification email to the sending server.','notification','success'),(8,8,'Admin Notification (ID: 604e51fde3bd5)',0,'2021-03-14 18:55:05','WordPress successfully passed the notification email to the sending server.','notification','success'),(9,9,'Admin Notification (ID: 604e51fde3bd5)',0,'2021-03-14 18:59:52','WordPress successfully passed the notification email to the sending server.','notification','success'),(10,10,'Admin Notification (ID: 604e51fde3bd5)',0,'2021-03-16 10:47:20','WordPress successfully passed the notification email to the sending server.','notification','success'),(11,11,'Admin Notification (ID: 604e51fde3bd5)',0,'2021-03-19 14:40:20','WordPress successfully passed the notification email to the sending server.','notification','success'),(12,12,'Admin Notification (ID: 604e51fde3bd5)',0,'2021-03-19 18:14:11','WordPress successfully passed the notification email to the sending server.','notification','success'),(13,13,'Admin Notification (ID: 604e51fde3bd5)',0,'2021-03-19 21:56:24','WordPress successfully passed the notification email to the sending server.','notification','success');
/*!40000 ALTER TABLE `wp_gf_entry_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_form`
--

DROP TABLE IF EXISTS `wp_gf_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_form`
--

LOCK TABLES `wp_gf_form` WRITE;
/*!40000 ALTER TABLE `wp_gf_form` DISABLE KEYS */;
INSERT INTO `wp_gf_form` VALUES (1,'Contact','2021-03-14 18:12:13',NULL,1,0);
/*!40000 ALTER TABLE `wp_gf_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_form_meta`
--

DROP TABLE IF EXISTS `wp_gf_form_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_520_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_form_meta`
--

LOCK TABLES `wp_gf_form_meta` WRITE;
/*!40000 ALTER TABLE `wp_gf_form_meta` DISABLE KEYS */;
INSERT INTO `wp_gf_form_meta` VALUES (1,'{\"title\":\"Contact\",\"description\":\"\",\"labelPlacement\":\"top_label\",\"descriptionPlacement\":\"below\",\"button\":{\"type\":\"text\",\"text\":\"Submit\",\"imageUrl\":\"\"},\"fields\":[{\"type\":\"text\",\"id\":1,\"label\":\"Full Name\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"large\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputMaskIsCustom\":false,\"maxLength\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"form-floating\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"enablePasswordInput\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"fields\":\"\",\"displayOnly\":\"\"},{\"type\":\"email\",\"id\":2,\"label\":\"Email Address\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"large\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputMaskIsCustom\":false,\"maxLength\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"form-floating\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"emailConfirmEnabled\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"fields\":\"\",\"displayOnly\":\"\"},{\"type\":\"text\",\"id\":5,\"label\":\"Company Name\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"large\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputMaskIsCustom\":false,\"maxLength\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"form-floating\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"enablePasswordInput\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"fields\":\"\"},{\"type\":\"phone\",\"id\":3,\"label\":\"Phone Number\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"large\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"phoneFormat\":\"standard\",\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputMaskIsCustom\":false,\"maxLength\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"form-floating\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"fields\":\"\",\"displayOnly\":\"\"},{\"type\":\"text\",\"id\":4,\"label\":\"Inquiry\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"large\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputMaskIsCustom\":false,\"maxLength\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"form-floating\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"enablePasswordInput\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"fields\":\"\",\"displayOnly\":\"\"}],\"version\":\"2.4.23.1\",\"id\":1,\"nextFieldId\":6,\"useCurrentUserAsAuthor\":true,\"postContentTemplateEnabled\":false,\"postTitleTemplateEnabled\":false,\"postTitleTemplate\":\"\",\"postContentTemplate\":\"\",\"lastPageButton\":null,\"pagination\":null,\"firstPageCssClass\":null,\"subLabelPlacement\":\"below\",\"cssClass\":\"form-contact\",\"enableHoneypot\":false,\"enableAnimation\":false,\"save\":{\"enabled\":false,\"button\":{\"type\":\"link\",\"text\":\"Save and Continue Later\"}},\"limitEntries\":false,\"limitEntriesCount\":\"\",\"limitEntriesPeriod\":\"\",\"limitEntriesMessage\":\"\",\"scheduleForm\":false,\"scheduleStart\":\"\",\"scheduleStartHour\":\"\",\"scheduleStartMinute\":\"\",\"scheduleStartAmpm\":\"\",\"scheduleEnd\":\"\",\"scheduleEndHour\":\"\",\"scheduleEndMinute\":\"\",\"scheduleEndAmpm\":\"\",\"schedulePendingMessage\":\"\",\"scheduleMessage\":\"\",\"requireLogin\":false,\"requireLoginMessage\":\"\"}',NULL,'{\"604e51fde4b26\":{\"id\":\"604e51fde4b26\",\"name\":\"Default Confirmation\",\"isDefault\":true,\"type\":\"message\",\"message\":\"Thank you for contacting us! We will get in touch with you in 24 hours.\",\"url\":\"\",\"pageId\":0,\"queryString\":\"\",\"disableAutoformat\":false,\"conditionalLogic\":[]}}','{\"604e51fde3bd5\":{\"isActive\":true,\"name\":\"Admin Notification\",\"service\":\"wordpress\",\"event\":\"form_submission\",\"to\":\"golam@kpd-i.com, michaelmuluneh@kpd-i.com\",\"toType\":\"email\",\"cc\":\"\",\"bcc\":\"\",\"subject\":\"Contact Form Submission from Burada\",\"message\":\"{all_fields}\",\"from\":\"contact@burada.com\",\"fromName\":\"Burada\",\"replyTo\":\"{Email Address:2}\",\"routing\":null,\"conditionalLogic\":null,\"disableAutoformat\":true,\"enableAttachments\":false,\"id\":\"604e51fde3bd5\"}}');
/*!40000 ALTER TABLE `wp_gf_form_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_form_revisions`
--

DROP TABLE IF EXISTS `wp_gf_form_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_form_revisions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_created` (`date_created`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_form_revisions`
--

LOCK TABLES `wp_gf_form_revisions` WRITE;
/*!40000 ALTER TABLE `wp_gf_form_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gf_form_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_form_view`
--

DROP TABLE IF EXISTS `wp_gf_form_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `date_created` (`date_created`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_form_view`
--

LOCK TABLES `wp_gf_form_view` WRITE;
/*!40000 ALTER TABLE `wp_gf_form_view` DISABLE KEYS */;
INSERT INTO `wp_gf_form_view` VALUES (1,1,'2021-03-14 18:33:04','',18),(2,1,'2021-03-16 10:27:18','',12),(3,1,'2021-03-17 13:50:53','',2),(4,1,'2021-03-19 03:54:33','',19),(5,1,'2021-03-20 07:11:25','',23),(6,1,'2021-03-23 10:57:49','',1);
/*!40000 ALTER TABLE `wp_gf_form_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=434 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','https://buradadev.wpengine.com','yes'),(2,'home','https://buradadev.wpengine.com','yes'),(3,'blogname','Burada','yes'),(4,'blogdescription','','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','support@kpd-i.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','0','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/%postname%/','yes'),(29,'rewrite_rules','a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:2:{i:0;s:29:\"gravityforms/gravityforms.php\";i:1;s:81:\"duracelltomi-google-tag-manager/duracelltomi-google-tag-manager-for-wordpress.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','burada','yes'),(41,'stylesheet','burada','yes'),(42,'comment_registration','0','yes'),(43,'html_type','text/html','yes'),(44,'use_trackback','0','yes'),(45,'default_role','subscriber','yes'),(46,'db_version','49752','yes'),(47,'uploads_use_yearmonth_folders','1','yes'),(48,'upload_path','','yes'),(49,'blog_public','0','yes'),(50,'default_link_category','2','yes'),(51,'show_on_front','posts','yes'),(52,'tag_base','','yes'),(53,'show_avatars','1','yes'),(54,'avatar_rating','G','yes'),(55,'upload_url_path','','yes'),(56,'thumbnail_size_w','150','yes'),(57,'thumbnail_size_h','150','yes'),(58,'thumbnail_crop','1','yes'),(59,'medium_size_w','300','yes'),(60,'medium_size_h','300','yes'),(61,'avatar_default','mystery','yes'),(62,'large_size_w','1024','yes'),(63,'large_size_h','1024','yes'),(64,'image_default_link_type','none','yes'),(65,'image_default_size','','yes'),(66,'image_default_align','','yes'),(67,'close_comments_for_old_posts','0','yes'),(68,'close_comments_days_old','14','yes'),(69,'thread_comments','1','yes'),(70,'thread_comments_depth','5','yes'),(71,'page_comments','0','yes'),(72,'comments_per_page','50','yes'),(73,'default_comments_page','newest','yes'),(74,'comment_order','asc','yes'),(75,'sticky_posts','a:0:{}','yes'),(76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(79,'uninstall_plugins','a:0:{}','no'),(80,'timezone_string','','yes'),(81,'page_for_posts','0','yes'),(82,'page_on_front','0','yes'),(83,'default_post_format','0','yes'),(84,'link_manager_enabled','0','yes'),(85,'finished_splitting_shared_terms','1','yes'),(86,'site_icon','11','yes'),(87,'medium_large_size_w','768','yes'),(88,'medium_large_size_h','0','yes'),(89,'wp_page_for_privacy_policy','3','yes'),(90,'show_comments_cookies_opt_in','1','yes'),(91,'admin_email_lifespan','1631283814','yes'),(92,'disallowed_keys','','no'),(93,'comment_previously_approved','1','yes'),(94,'auto_plugin_theme_update_emails','a:0:{}','no'),(95,'auto_update_core_dev','enabled','yes'),(96,'auto_update_core_minor','enabled','yes'),(97,'auto_update_core_major','enabled','yes'),(98,'initial_db_version','49752','yes'),(99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(100,'fresh_site','0','yes'),(101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),(107,'cron','a:11:{i:1616498617;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1616505658;a:1:{s:49:\"WPEngineSecurityAuditor_Scans_fingerprint_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1616509417;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616509425;a:1:{s:39:\"WPEngineSecurityAuditor_Scans_scheduler\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1616510638;a:1:{s:46:\"WPEngineSecurityAuditor_Scans_fingerprint_core\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1616513411;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616523049;a:1:{s:17:\"gravityforms_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616523764;a:1:{s:48:\"WPEngineSecurityAuditor_Scans_fingerprint_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1616525126;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1617027817;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),(108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(114,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(115,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(116,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(118,'widget_wpe_powered_by_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(119,'recovery_keys','a:0:{}','yes'),(132,'wpe_notices','a:1:{s:4:\"read\";s:0:\"\";}','yes'),(133,'wpe_notices_ttl','1616176115','yes'),(141,'can_compress_scripts','0','no'),(148,'recently_activated','a:0:{}','yes'),(152,'finished_updating_comment_type','1','yes'),(157,'WPLANG','','yes'),(165,'theme_mods_twentytwentyone','a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1615745305;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes'),(166,'nav_menu_options','a:1:{s:8:\"auto_add\";a:0:{}}','yes'),(184,'current_theme','Burada','yes'),(185,'theme_mods_burada','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes'),(186,'theme_switched','','yes'),(187,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1616497068;s:7:\"checked\";a:1:{s:6:\"burada\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no'),(192,'gf_db_version','2.4.23.1','no'),(193,'rg_form_version','2.4.23.1','no'),(194,'gform_enable_background_updates','1','yes'),(195,'gform_pending_installation','','yes'),(196,'widget_gform_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(197,'gravityformsaddon_gravityformswebapi_version','1.0','yes'),(198,'gform_version_info','a:11:{s:12:\"is_valid_key\";b:1;s:6:\"reason\";s:0:\"\";s:7:\"version\";s:6:\"2.4.23\";s:3:\"url\";s:172:\"https://s3.amazonaws.com/gravityforms/releases/gravityforms_2.4.23.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=MC%2F4tBqbJ%2BSNuGwlM56Ah%2Fseci0%3D\";s:15:\"expiration_time\";i:1649776084;s:9:\"offerings\";a:58:{s:12:\"gravityforms\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:6:\"2.4.23\";s:14:\"version_latest\";s:8:\"2.4.23.2\";s:3:\"url\";s:172:\"https://s3.amazonaws.com/gravityforms/releases/gravityforms_2.4.23.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=MC%2F4tBqbJ%2BSNuGwlM56Ah%2Fseci0%3D\";s:10:\"url_latest\";s:172:\"https://s3.amazonaws.com/gravityforms/releases/gravityforms_2.4.23.2.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=jF0ejiIPsto0lDA87%2BdCD3S3%2Fgc%3D\";}s:21:\"gravityforms2checkout\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.0\";s:14:\"version_latest\";s:5:\"2.0.1\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/2checkout/gravityforms2checkout_2.0.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=o2fv3UKO3egaSMmS%2FExEhwYjUBU%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/2checkout/gravityforms2checkout_2.0.1.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=QUZ5kWfKBFJ91mkt2vSu9DCBpO8%3D\";}s:26:\"gravityformsactivecampaign\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.8\";s:14:\"version_latest\";s:3:\"1.8\";s:3:\"url\";s:192:\"https://s3.amazonaws.com/gravityforms/addons/activecampaign/gravityformsactivecampaign_1.8.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=jLx1sE45MrgV6FKDvtreXz80%2BNc%3D\";s:10:\"url_latest\";s:192:\"https://s3.amazonaws.com/gravityforms/addons/activecampaign/gravityformsactivecampaign_1.8.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=jLx1sE45MrgV6FKDvtreXz80%2BNc%3D\";}s:32:\"gravityformsadvancedpostcreation\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:10:\"1.0-beta-7\";s:14:\"version_latest\";s:12:\"1.0-beta-7.2\";s:3:\"url\";s:213:\"https://s3.amazonaws.com/gravityforms/addons/advancedpostcreation/gravityformsadvancedpostcreation_1.0-beta-7.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=Pk%2B%2Fq8QPWT2j0zoVQX8pAJPQgAs%3D\";s:10:\"url_latest\";s:211:\"https://s3.amazonaws.com/gravityforms/addons/advancedpostcreation/gravityformsadvancedpostcreation_1.0-beta-7.2.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=XKufMTl0LTxPQZIYoJXxp6l6FwA%3D\";}s:20:\"gravityformsagilecrm\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:3:\"1.4\";s:3:\"url\";s:186:\"https://s3.amazonaws.com/gravityforms/addons/agilecrm/gravityformsagilecrm_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=IV3HbEZ2p%2FEz9%2BB1%2F%2FqOwPVA8FE%3D\";s:10:\"url_latest\";s:186:\"https://s3.amazonaws.com/gravityforms/addons/agilecrm/gravityformsagilecrm_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=IV3HbEZ2p%2FEz9%2BB1%2F%2FqOwPVA8FE%3D\";}s:24:\"gravityformsauthorizenet\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:4:\"2.10\";s:14:\"version_latest\";s:6:\"2.10.1\";s:3:\"url\";s:189:\"https://s3.amazonaws.com/gravityforms/addons/authorizenet/gravityformsauthorizenet_2.10.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=Z66ETMxQDgEx%2BpbzS6hATz9cYVY%3D\";s:10:\"url_latest\";s:189:\"https://s3.amazonaws.com/gravityforms/addons/authorizenet/gravityformsauthorizenet_2.10.1.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=vFRpQ3n4lDmCTm5Jwj1hepwafIY%3D\";}s:18:\"gravityformsaweber\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:4:\"2.11\";s:14:\"version_latest\";s:4:\"2.11\";s:3:\"url\";s:177:\"https://s3.amazonaws.com/gravityforms/addons/aweber/gravityformsaweber_2.11.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=TmP85XQBXoc%2FBWviMuOpqKmGur4%3D\";s:10:\"url_latest\";s:177:\"https://s3.amazonaws.com/gravityforms/addons/aweber/gravityformsaweber_2.11.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=TmP85XQBXoc%2FBWviMuOpqKmGur4%3D\";}s:21:\"gravityformsbatchbook\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:184:\"https://s3.amazonaws.com/gravityforms/addons/batchbook/gravityformsbatchbook_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=O%2FmbVbB2a2ulWgvEuBXp%2BojdL80%3D\";s:10:\"url_latest\";s:184:\"https://s3.amazonaws.com/gravityforms/addons/batchbook/gravityformsbatchbook_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=O%2FmbVbB2a2ulWgvEuBXp%2BojdL80%3D\";}s:18:\"gravityformsbreeze\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/breeze/gravityformsbreeze_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=4CNPxrCIW%2F7s%2FDpKYRZWLf48x98%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/breeze/gravityformsbreeze_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=4CNPxrCIW%2F7s%2FDpKYRZWLf48x98%3D\";}s:27:\"gravityformscampaignmonitor\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.9\";s:14:\"version_latest\";s:3:\"3.9\";s:3:\"url\";s:192:\"https://s3.amazonaws.com/gravityforms/addons/campaignmonitor/gravityformscampaignmonitor_3.9.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=YSNLYNSYWsR8k4uCFYtr0UgQmHU%3D\";s:10:\"url_latest\";s:192:\"https://s3.amazonaws.com/gravityforms/addons/campaignmonitor/gravityformscampaignmonitor_3.9.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=YSNLYNSYWsR8k4uCFYtr0UgQmHU%3D\";}s:20:\"gravityformscampfire\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.1\";s:14:\"version_latest\";s:5:\"1.2.2\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/campfire/gravityformscampfire_1.1.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=SvHrTtFU3VOZA2VWXqCTdjQ5QQo%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/campfire/gravityformscampfire_1.2.2.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=Pkg5AHrBf73IsSR6s%2B8cciwylrM%3D\";}s:22:\"gravityformscapsulecrm\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:5:\"1.5.1\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/capsulecrm/gravityformscapsulecrm_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=mZtWKjVtt3G14qADpMm9rgRMguI%3D\";s:10:\"url_latest\";s:184:\"https://s3.amazonaws.com/gravityforms/addons/capsulecrm/gravityformscapsulecrm_1.5.1.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=YhfPCc490xwdb74FfibYx6Ccf0Y%3D\";}s:26:\"gravityformschainedselects\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:190:\"https://s3.amazonaws.com/gravityforms/addons/chainedselects/gravityformschainedselects_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=pZ20ZJZlq54i5J6v0nwjqkqpBeM%3D\";s:10:\"url_latest\";s:190:\"https://s3.amazonaws.com/gravityforms/addons/chainedselects/gravityformschainedselects_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=pZ20ZJZlq54i5J6v0nwjqkqpBeM%3D\";}s:23:\"gravityformscleverreach\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.7\";s:14:\"version_latest\";s:3:\"1.7\";s:3:\"url\";s:186:\"https://s3.amazonaws.com/gravityforms/addons/cleverreach/gravityformscleverreach_1.7.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=PSnds1SmTp6Qgf8TRykq5%2FDlh6s%3D\";s:10:\"url_latest\";s:186:\"https://s3.amazonaws.com/gravityforms/addons/cleverreach/gravityformscleverreach_1.7.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=PSnds1SmTp6Qgf8TRykq5%2FDlh6s%3D\";}s:15:\"gravityformscli\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:0:\"\";s:14:\"version_latest\";s:3:\"1.4\";s:3:\"url\";s:0:\"\";s:10:\"url_latest\";s:170:\"https://s3.amazonaws.com/gravityforms/addons/cli/gravityformscli_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=vY%2FqiNRktreVDlA4tARlzkilpek%3D\";}s:27:\"gravityformsconstantcontact\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:192:\"https://s3.amazonaws.com/gravityforms/addons/constantcontact/gravityformsconstantcontact_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=egC8iHWc37zum2k6teosI7DQRgQ%3D\";s:10:\"url_latest\";s:192:\"https://s3.amazonaws.com/gravityforms/addons/constantcontact/gravityformsconstantcontact_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=egC8iHWc37zum2k6teosI7DQRgQ%3D\";}s:19:\"gravityformscoupons\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:4:\"2.11\";s:14:\"version_latest\";s:6:\"2.11.1\";s:3:\"url\";s:177:\"https://s3.amazonaws.com/gravityforms/addons/coupons/gravityformscoupons_2.11.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=aEIHCMNh159EJxmNfBfafHbfmmE%3D\";s:10:\"url_latest\";s:179:\"https://s3.amazonaws.com/gravityforms/addons/coupons/gravityformscoupons_2.11.1.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=KHQy69n5URRkcI4cu2wd1smoz9U%3D\";}s:17:\"gravityformsdebug\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:0:\"\";s:14:\"version_latest\";s:10:\"1.0.beta12\";s:3:\"url\";s:0:\"\";s:10:\"url_latest\";s:179:\"https://s3.amazonaws.com/gravityforms/addons/debug/gravityformsdebug_1.0.beta12.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=YpPFcCq8iOuz0KgqdgSF1ZFG1fE%3D\";}s:19:\"gravityformsdropbox\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.8\";s:14:\"version_latest\";s:5:\"2.8.1\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/dropbox/gravityformsdropbox_2.8.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=A6FZdh77duShvrE9TwRjfRifYno%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/dropbox/gravityformsdropbox_2.8.1.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=OGuGmiqAIGAU97x06B9nAM9fh80%3D\";}s:24:\"gravityformsemailoctopus\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";s:3:\"url\";s:188:\"https://s3.amazonaws.com/gravityforms/addons/emailoctopus/gravityformsemailoctopus_1.2.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=jx5X8SKhwuT8g6wUBPloC%2FheCXo%3D\";s:10:\"url_latest\";s:188:\"https://s3.amazonaws.com/gravityforms/addons/emailoctopus/gravityformsemailoctopus_1.2.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=jx5X8SKhwuT8g6wUBPloC%2FheCXo%3D\";}s:16:\"gravityformsemma\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:5:\"1.4.1\";s:3:\"url\";s:170:\"https://s3.amazonaws.com/gravityforms/addons/emma/gravityformsemma_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=n1MFgGv0Dib8neIOJ1EfLbVlaYk%3D\";s:10:\"url_latest\";s:172:\"https://s3.amazonaws.com/gravityforms/addons/emma/gravityformsemma_1.4.1.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=89aJiR7oT4KOtIi5zDUCJdygMy8%3D\";}s:22:\"gravityformsfreshbooks\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.7\";s:14:\"version_latest\";s:5:\"2.7.1\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/freshbooks/gravityformsfreshbooks_2.7.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=sleBpClXCOB7eWoctD8nEc0JgCw%3D\";s:10:\"url_latest\";s:186:\"https://s3.amazonaws.com/gravityforms/addons/freshbooks/gravityformsfreshbooks_2.7.1.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=nA3DMw%2BvpKDmvChyX57iVAX7e0M%3D\";}s:23:\"gravityformsgetresponse\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:5:\"1.5.1\";s:3:\"url\";s:186:\"https://s3.amazonaws.com/gravityforms/addons/getresponse/gravityformsgetresponse_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=18d6ZtnYKPJQIh7sfxu%2F1Xtvj2w%3D\";s:10:\"url_latest\";s:188:\"https://s3.amazonaws.com/gravityforms/addons/getresponse/gravityformsgetresponse_1.5.1.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=31d6GHFIbcte%2BRhJfnuJL4DRy54%3D\";}s:21:\"gravityformsgutenberg\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:10:\"1.0-rc-1.4\";s:14:\"version_latest\";s:10:\"1.0-rc-1.5\";s:3:\"url\";s:189:\"https://s3.amazonaws.com/gravityforms/addons/gutenberg/gravityformsgutenberg_1.0-rc-1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=CNms0sy51NVE2Ol6ELmxRo%2BXCPo%3D\";s:10:\"url_latest\";s:189:\"https://s3.amazonaws.com/gravityforms/addons/gutenberg/gravityformsgutenberg_1.0-rc-1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=xwS%2FdvDqpqutOjdLWuBlmmk9bEo%3D\";}s:21:\"gravityformshelpscout\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:4:\"1.15\";s:14:\"version_latest\";s:6:\"1.15.1\";s:3:\"url\";s:181:\"https://s3.amazonaws.com/gravityforms/addons/helpscout/gravityformshelpscout_1.15.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=ZQykKaE2sSAy3J2hntCmeyl73YU%3D\";s:10:\"url_latest\";s:185:\"https://s3.amazonaws.com/gravityforms/addons/helpscout/gravityformshelpscout_1.15.1.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=zVsKLV79pumrguq%2FXBXnUhGr4qY%3D\";}s:20:\"gravityformshighrise\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/highrise/gravityformshighrise_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=tcJAfp7tkq9r5mnNr4FPTnUjlC8%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/highrise/gravityformshighrise_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=tcJAfp7tkq9r5mnNr4FPTnUjlC8%3D\";}s:19:\"gravityformshipchat\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";}s:19:\"gravityformshubspot\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:5:\"1.5.2\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/hubspot/gravityformshubspot_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=kKuUUjN3WBIXo6tm11wosZ1e6s8%3D\";s:10:\"url_latest\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/hubspot/gravityformshubspot_1.5.2.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=Uv%2FS8rz91h5hQxmQG0TKlGIDe6c%3D\";}s:20:\"gravityformsicontact\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/icontact/gravityformsicontact_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=aE1pT40Vji5lfwhDxV7WZ7TgEfc%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/icontact/gravityformsicontact_1.5.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=aE1pT40Vji5lfwhDxV7WZ7TgEfc%3D\";}s:19:\"gravityformslogging\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:5:\"1.3.1\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/logging/gravityformslogging_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=skiS4ZGIymJ4Jv5%2FRpVa3KJXvC4%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/logging/gravityformslogging_1.3.1.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=YaW5Wv7X0lYCdp4DK3NphebEVgw%3D\";}s:19:\"gravityformsmadmimi\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:3:\"1.4\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/madmimi/gravityformsmadmimi_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=E04MZdpSFKyXvq9%2FwjbBxIAFzJg%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/madmimi/gravityformsmadmimi_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=E04MZdpSFKyXvq9%2FwjbBxIAFzJg%3D\";}s:21:\"gravityformsmailchimp\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"4.8\";s:14:\"version_latest\";s:3:\"4.8\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/mailchimp/gravityformsmailchimp_4.8.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=YgHeGBIUBNEk0QWGjTyRGmje%2BpQ%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/mailchimp/gravityformsmailchimp_4.8.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=YgHeGBIUBNEk0QWGjTyRGmje%2BpQ%3D\";}s:19:\"gravityformsmailgun\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/mailgun/gravityformsmailgun_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=dxerrcGLWPpPpQU8ue6gBiALYiA%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/mailgun/gravityformsmailgun_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=dxerrcGLWPpPpQU8ue6gBiALYiA%3D\";}s:18:\"gravityformsmollie\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.1\";s:14:\"version_latest\";s:5:\"1.1.1\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/mollie/gravityformsmollie_1.1.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=pmu0tJBm%2FD96ccCaj3ctE8xzwcI%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/mollie/gravityformsmollie_1.1.1.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=Gp9jl6H3D9kZuxIn7Ax5UR1jnBA%3D\";}s:26:\"gravityformspartialentries\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.6\";s:14:\"version_latest\";s:3:\"1.6\";s:3:\"url\";s:192:\"https://s3.amazonaws.com/gravityforms/addons/partialentries/gravityformspartialentries_1.6.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=ijOQXOOFay2AvjPD3FG%2BqM0P9iE%3D\";s:10:\"url_latest\";s:192:\"https://s3.amazonaws.com/gravityforms/addons/partialentries/gravityformspartialentries_1.6.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=ijOQXOOFay2AvjPD3FG%2BqM0P9iE%3D\";}s:18:\"gravityformspaypal\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.4\";s:14:\"version_latest\";s:5:\"3.4.1\";s:3:\"url\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/paypal/gravityformspaypal_3.4.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=mBEE34bQo5vpfOh8irhpxEDvLGc%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/paypal/gravityformspaypal_3.4.1.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=G3rTgoz4c5TRrq%2BGEQzzYxcSaaQ%3D\";}s:33:\"gravityformspaypalexpresscheckout\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:0:\"\";s:14:\"version_latest\";N;}s:29:\"gravityformspaypalpaymentspro\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.6\";s:14:\"version_latest\";s:5:\"2.6.1\";s:3:\"url\";s:202:\"https://s3.amazonaws.com/gravityforms/addons/paypalpaymentspro/gravityformspaypalpaymentspro_2.6.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=ZjtXUA5Bfpf%2BNlIn%2FtPG7JqO%2Fc4%3D\";s:10:\"url_latest\";s:198:\"https://s3.amazonaws.com/gravityforms/addons/paypalpaymentspro/gravityformspaypalpaymentspro_2.6.1.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=dfuJHh4KlbEdm6r20GMysyn0acc%3D\";}s:21:\"gravityformspaypalpro\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:5:\"1.8.1\";s:14:\"version_latest\";s:5:\"1.8.4\";s:3:\"url\";s:184:\"https://s3.amazonaws.com/gravityforms/addons/paypalpro/gravityformspaypalpro_1.8.1.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=i60TGVgEA%2F0gRGeHROY5wkUJqoM%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/paypalpro/gravityformspaypalpro_1.8.4.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=iIpWyuznCV9OwxI1GB1Qv0Oh3oU%3D\";}s:20:\"gravityformspicatcha\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"2.0\";s:14:\"version_latest\";s:3:\"2.0\";}s:16:\"gravityformspipe\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:172:\"https://s3.amazonaws.com/gravityforms/addons/pipe/gravityformspipe_1.2.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=lrVJ9fm%2BRYeDNHC1rc8ILEOZbfs%3D\";s:10:\"url_latest\";s:170:\"https://s3.amazonaws.com/gravityforms/addons/pipe/gravityformspipe_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=EWFlE9aKCZFEcorjpesf8J8VbZM%3D\";}s:17:\"gravityformspolls\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.7\";s:14:\"version_latest\";s:5:\"3.7.1\";s:3:\"url\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/polls/gravityformspolls_3.7.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=iankt%2FxawdNWLSmBEpfd3henDEs%3D\";s:10:\"url_latest\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/polls/gravityformspolls_3.7.1.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=L9UzsaqiXp4gjyQw94U8myaNBxU%3D\";}s:20:\"gravityformspostmark\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/postmark/gravityformspostmark_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=yLMSxiaZ4b5CxEHf3Jlc7ba0Aqk%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/postmark/gravityformspostmark_1.3.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=yLMSxiaZ4b5CxEHf3Jlc7ba0Aqk%3D\";}s:16:\"gravityformsppcp\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:5:\"1.4.7\";s:3:\"url\";s:172:\"https://s3.amazonaws.com/gravityforms/addons/ppcp/gravityformsppcp_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=BzX7uWF3hqeuU%2FVqEzcB5hxXg4A%3D\";s:10:\"url_latest\";s:172:\"https://s3.amazonaws.com/gravityforms/addons/ppcp/gravityformsppcp_1.4.7.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=PFnKVpum7UO9AFWaVj3pJypKcIg%3D\";}s:16:\"gravityformsquiz\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.6\";s:14:\"version_latest\";s:5:\"3.6.2\";s:3:\"url\";s:172:\"https://s3.amazonaws.com/gravityforms/addons/quiz/gravityformsquiz_3.6.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=Lmo6m7QVlwp%2FDJC3Ohwtwms6vTM%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/quiz/gravityformsquiz_3.6.2.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=5YcswU%2FG35bwrzEYdsI%2BNZY9nhM%3D\";}s:19:\"gravityformsrestapi\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:10:\"2.0-beta-2\";s:14:\"version_latest\";s:10:\"2.0-beta-2\";s:3:\"url\";s:187:\"https://s3.amazonaws.com/gravityforms/addons/restapi/gravityformsrestapi_2.0-beta-2.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=%2BZOVbntaCp8IDuxUjH%2FwWgXOlW0%3D\";s:10:\"url_latest\";s:187:\"https://s3.amazonaws.com/gravityforms/addons/restapi/gravityformsrestapi_2.0-beta-2.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=%2BZOVbntaCp8IDuxUjH%2FwWgXOlW0%3D\";}s:20:\"gravityformssendgrid\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:5:\"1.4.1\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/sendgrid/gravityformssendgrid_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=Yn6ubnnFIEJW6Ix7OgQzJE0Mq6w%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/sendgrid/gravityformssendgrid_1.4.1.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=C%2BJ01IIaoEckew2Z5eZLG4M1QSo%3D\";}s:21:\"gravityformssignature\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"4.0\";s:14:\"version_latest\";s:5:\"4.0.2\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/signature/gravityformssignature_4.0.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=VwWhwyekWM1zjSvLsQxm%2BZTbGUY%3D\";s:10:\"url_latest\";s:184:\"https://s3.amazonaws.com/gravityforms/addons/signature/gravityformssignature_4.0.2.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=8qomo4JBvY5O%2FUxDrXV6R3hx0j8%3D\";}s:17:\"gravityformsslack\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:4:\"1.13\";s:14:\"version_latest\";s:6:\"1.13.3\";s:3:\"url\";s:179:\"https://s3.amazonaws.com/gravityforms/addons/slack/gravityformsslack_1.13.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=WfpP1p42O95dYs%2FQ3%2FzR%2F5yXIPU%3D\";s:10:\"url_latest\";s:177:\"https://s3.amazonaws.com/gravityforms/addons/slack/gravityformsslack_1.13.3.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=nfrYfwrk%2B40QT8X8p4ldGouJMqs%3D\";}s:18:\"gravityformssquare\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:5:\"1.4.1\";s:3:\"url\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/square/gravityformssquare_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=jCeBZawss7SKVd2AOOXYsaqxPDk%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/square/gravityformssquare_1.4.1.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=yltZkpFkxJ5jbDOwcvASeBAHDEk%3D\";}s:18:\"gravityformsstripe\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.9\";s:14:\"version_latest\";s:5:\"3.9.2\";s:3:\"url\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/stripe/gravityformsstripe_3.9.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=rjg4GpT9eoLSciM7dCKJWtB71m0%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/stripe/gravityformsstripe_3.9.2.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=s8WhUIAtx5AaFmRxNKevFSE5n5A%3D\";}s:18:\"gravityformssurvey\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.6\";s:14:\"version_latest\";s:5:\"3.6.3\";s:3:\"url\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/survey/gravityformssurvey_3.6.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=nW96EsyfBvMsvr3UdRDbbz86gJE%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/survey/gravityformssurvey_3.6.3.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=q3KcGwB8Eyf3RVymUsezJ2ksyDg%3D\";}s:18:\"gravityformstrello\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:3:\"1.4\";s:3:\"url\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/trello/gravityformstrello_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=VG2VamVnpgXdIfawzILMN3eviiI%3D\";s:10:\"url_latest\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/trello/gravityformstrello_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=VG2VamVnpgXdIfawzILMN3eviiI%3D\";}s:18:\"gravityformstwilio\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.8\";s:14:\"version_latest\";s:3:\"2.8\";s:3:\"url\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/twilio/gravityformstwilio_2.8.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=DYWN2nswLLGrSP2yi6shTXLcwmc%3D\";s:10:\"url_latest\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/twilio/gravityformstwilio_2.8.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=DYWN2nswLLGrSP2yi6shTXLcwmc%3D\";}s:28:\"gravityformsuserregistration\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"4.7\";s:14:\"version_latest\";s:5:\"4.7.2\";s:3:\"url\";s:194:\"https://s3.amazonaws.com/gravityforms/addons/userregistration/gravityformsuserregistration_4.7.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=akpHVj6HpeTDf64MtoOYJMhZMMs%3D\";s:10:\"url_latest\";s:196:\"https://s3.amazonaws.com/gravityforms/addons/userregistration/gravityformsuserregistration_4.7.2.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=2UUhDiNBMYFG0oWtsbsPYAQENlg%3D\";}s:20:\"gravityformswebhooks\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:5:\"1.4.1\";s:3:\"url\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/webhooks/gravityformswebhooks_1.4.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=Q4bBltgXFcjVm5t3PgcGFl7Pc%2F0%3D\";s:10:\"url_latest\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/webhooks/gravityformswebhooks_1.4.1.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=VdgsX3TZGnW0geiNlGC6x9S6GQk%3D\";}s:18:\"gravityformszapier\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"4.0\";s:14:\"version_latest\";s:3:\"4.0\";s:3:\"url\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/zapier/gravityformszapier_4.0.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=vzbHMhjpRBdoHp1lLgpIdjga1Ng%3D\";s:10:\"url_latest\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/zapier/gravityformszapier_4.0.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=vzbHMhjpRBdoHp1lLgpIdjga1Ng%3D\";}s:19:\"gravityformszohocrm\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:4:\"1.12\";s:14:\"version_latest\";s:6:\"1.12.3\";s:3:\"url\";s:177:\"https://s3.amazonaws.com/gravityforms/addons/zohocrm/gravityformszohocrm_1.12.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=TZsFLSPotMPEoXBpjyxw48XTWw4%3D\";s:10:\"url_latest\";s:181:\"https://s3.amazonaws.com/gravityforms/addons/zohocrm/gravityformszohocrm_1.12.3.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=oGQPJBugccqgE%2Fx06mZXwIJgZ5I%3D\";}}s:9:\"is_active\";s:1:\"1\";s:12:\"product_code\";s:7:\"GFELITE\";s:14:\"version_latest\";s:8:\"2.4.23.2\";s:10:\"url_latest\";s:172:\"https://s3.amazonaws.com/gravityforms/releases/gravityforms_2.4.23.2.zip?AWSAccessKeyId=AKIA5U3GBHC5SPIIKP7F&Expires=1616669868&Signature=jF0ejiIPsto0lDA87%2BdCD3S3%2Fgc%3D\";s:9:\"timestamp\";i:1616497068;}','no'),(205,'rg_gforms_key','35e50d0abb82a886c8ff4152a3c7bd0d','yes'),(206,'gf_site_key','b3fa6f82-957a-4ae4-ba53-173c1187a664','yes'),(207,'gf_site_secret','80cb7233-a34e-4215-aa97-2fc363f54a7f','yes'),(208,'gform_enable_noconflict','1','yes'),(209,'rg_gforms_enable_akismet','0','yes'),(210,'rg_gforms_currency','USD','yes'),(211,'gform_enable_toolbar_menu','1','yes'),(216,'rg_gforms_disable_css','1','yes'),(217,'rg_gforms_captcha_public_key','','yes'),(218,'rg_gforms_captcha_private_key','','yes'),(219,'rg_gforms_captcha_type','checkbox','yes'),(220,'rg_gforms_message','<!--GFM-->','yes'),(227,'category_children','a:0:{}','yes'),(242,'gform_email_count','13','yes'),(301,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.7-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1616497068;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}','no'),(303,'https_detection_errors','a:1:{s:17:\"bad_response_code\";a:1:{i:0;s:12:\"Unauthorized\";}}','yes'),(332,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1616497068;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:81:\"duracelltomi-google-tag-manager/duracelltomi-google-tag-manager-for-wordpress.php\";s:6:\"1.11.6\";s:29:\"gravityforms/gravityforms.php\";s:8:\"2.4.23.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:81:\"duracelltomi-google-tag-manager/duracelltomi-google-tag-manager-for-wordpress.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:45:\"w.org/plugins/duracelltomi-google-tag-manager\";s:4:\"slug\";s:31:\"duracelltomi-google-tag-manager\";s:6:\"plugin\";s:81:\"duracelltomi-google-tag-manager/duracelltomi-google-tag-manager-for-wordpress.php\";s:11:\"new_version\";s:6:\"1.11.6\";s:3:\"url\";s:62:\"https://wordpress.org/plugins/duracelltomi-google-tag-manager/\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/plugin/duracelltomi-google-tag-manager.1.11.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:84:\"https://ps.w.org/duracelltomi-google-tag-manager/assets/icon-256x256.png?rev=1708451\";s:2:\"1x\";s:84:\"https://ps.w.org/duracelltomi-google-tag-manager/assets/icon-128x128.png?rev=1708451\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/duracelltomi-google-tag-manager/assets/banner-1544x500.png?rev=1708451\";s:2:\"1x\";s:86:\"https://ps.w.org/duracelltomi-google-tag-manager/assets/banner-772x250.png?rev=1708451\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),(345,'wpe-health-check-site-status-result','{\"good\":15,\"recommended\":3,\"critical\":1}','yes'),(355,'gtm4wp-options','a:107:{s:8:\"gtm-code\";s:11:\"GTM-5S2L27W\";s:27:\"gtm-datalayer-variable-name\";s:0:\"\";s:18:\"gtm-code-placement\";i:2;s:16:\"gtm-env-gtm-auth\";s:0:\"\";s:19:\"gtm-env-gtm-preview\";s:0:\"\";s:24:\"gtm-browser-do-not-track\";b:0;s:18:\"gtm-load-gtm-early\";b:0;s:19:\"include-remarketing\";b:0;s:16:\"include-loggedin\";b:0;s:16:\"include-userrole\";b:0;s:14:\"include-userid\";b:0;s:17:\"include-useremail\";b:0;s:19:\"include-userregdate\";b:0;s:16:\"include-username\";b:0;s:18:\"include-visitor-ip\";b:0;s:16:\"include-posttype\";b:1;s:18:\"include-categories\";b:1;s:12:\"include-tags\";b:1;s:14:\"include-author\";b:1;s:16:\"include-authorid\";b:0;s:16:\"include-postdate\";b:0;s:17:\"include-posttitle\";b:0;s:17:\"include-postcount\";b:0;s:14:\"include-postid\";b:0;s:18:\"include-postformat\";b:0;s:17:\"include-postterms\";b:0;s:18:\"include-searchdata\";b:0;s:19:\"include-browserdata\";b:0;s:14:\"include-osdata\";b:0;s:18:\"include-devicedata\";b:0;s:15:\"include-miscgeo\";b:0;s:10:\"geo-apikey\";s:0:\"\";s:26:\"include-miscgeo-cloudflare\";b:0;s:15:\"include-weather\";b:0;s:20:\"weather-weatherunits\";i:0;s:29:\"weather-openweathermap-apikey\";s:0:\"\";s:14:\"include-siteid\";b:0;s:16:\"include-sitename\";b:0;s:14:\"event-outbound\";b:0;s:15:\"event-downloads\";b:0;s:25:\"event-download-extensions\";s:45:\"pdf,doc,docx,xls,xlsx,ppt,pptx,zip,rar,gz,tar\";s:18:\"event-email-clicks\";b:0;s:12:\"event-social\";b:0;s:15:\"event-form-move\";b:1;s:27:\"event-new-user-registration\";b:0;s:20:\"event-user-logged-in\";b:0;s:13:\"event-youtube\";b:0;s:11:\"event-vimeo\";b:0;s:16:\"event-soundcloud\";b:0;s:16:\"scroller-enabled\";b:0;s:19:\"scroller-debug-mode\";b:0;s:22:\"scroller-callback-time\";i:100;s:17:\"scroller-distance\";i:150;s:18:\"scroller-contentid\";s:7:\"content\";s:19:\"scroller-readertime\";i:60;s:16:\"blacklist-enable\";i:0;s:19:\"blacklist-adadvisor\";b:0;s:16:\"blacklist-adroll\";b:0;s:28:\"blacklist-adwords-conversion\";b:0;s:29:\"blacklist-adwords-remarketing\";b:0;s:14:\"blacklist-bizo\";b:0;s:19:\"blacklist-clicktale\";b:0;s:18:\"blacklist-comscore\";b:0;s:21:\"blacklist-custom-html\";b:0;s:24:\"blacklist-custom-img-tag\";b:0;s:29:\"blacklist-doubleclick-counter\";b:0;s:27:\"blacklist-doubleclick-sales\";b:0;s:26:\"blacklist-google-analytics\";b:0;s:15:\"blacklist-marin\";b:0;s:26:\"blacklist-mediaplex-iframe\";b:0;s:23:\"blacklist-mediaplex-roi\";b:0;s:23:\"blacklist-media6degrees\";b:0;s:25:\"blacklist-turn-conversion\";b:0;s:19:\"blacklist-turn-data\";b:0;s:29:\"blacklist-universal-analytics\";b:0;s:27:\"blacklist-macro-dom-element\";b:1;s:25:\"blacklist-macro-custom-js\";b:1;s:31:\"blacklist-macro-constant-string\";b:1;s:32:\"blacklist-macro-1st-party-cookie\";b:1;s:26:\"blacklist-macro-event-name\";b:1;s:35:\"blacklist-macro-javascript-variable\";b:1;s:34:\"blacklist-macro-datalayer-variable\";b:1;s:29:\"blacklist-macro-random-number\";b:1;s:24:\"blacklist-macro-referrer\";b:1;s:19:\"blacklist-macro-url\";b:1;s:34:\"blacklist-macro-autoevent-variable\";b:1;s:15:\"integrate-wpcf7\";b:0;s:45:\"integrate-woocommerce-track-classic-ecommerce\";b:0;s:46:\"integrate-woocommerce-track-enhanced-ecommerce\";b:0;s:44:\"integrate-woocommerce-product-per-impression\";i:0;s:40:\"integrate-woocommerce-cart-as-first-step\";b:0;s:47:\"integrate-woocommerce-cart-content-in-datalayer\";b:0;s:36:\"integrate-woocommerce-brand-taxonomy\";s:0:\"\";s:33:\"integrate-woocommerce-remarketing\";b:0;s:40:\"integrate-woocommerce-remarketing-usesku\";b:0;s:44:\"integrate-woocommerce-use-full-category-path\";b:0;s:49:\"integrate-woocommerce-remarketing-productidprefix\";s:0:\"\";s:35:\"integrate-woocommerce-customer-data\";b:0;s:32:\"integrate-woocommerce-order-data\";b:0;s:33:\"integrate-woocommerce-exclude-tax\";b:0;s:38:\"integrate-woocommerce-exclude-shipping\";b:0;s:51:\"integrate-woocommerce-do-not-use-order-tracked-flag\";b:0;s:32:\"integrate-google-optimize-idlist\";s:0:\"\";s:33:\"integrate-google-optimize-timeout\";i:4000;s:23:\"integrate-wp-e-commerce\";b:0;s:16:\"integrate-amp-id\";s:0:\"\";i:0;s:0:\"\";}','yes'),(376,'_site_transient_timeout_browser_17ef020e96043c32009cafed8e492587','1616730894','no'),(377,'_site_transient_browser_17ef020e96043c32009cafed8e492587','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"89.0.4389.90\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),(431,'_site_transient_timeout_php_check_7841c854be39099ac1d9b61bb411ecb0','1617101869','no'),(432,'_site_transient_php_check_7841c854be39099ac1d9b61bb411ecb0','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no'),(433,'_transient_health-check-site-status-result','{\"good\":15,\"recommended\":3,\"critical\":1}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(3,2,'_wp_trash_meta_status','publish'),(4,2,'_wp_trash_meta_time','1615735832'),(5,2,'_wp_desired_post_slug','sample-page'),(6,3,'_wp_trash_meta_status','draft'),(7,3,'_wp_trash_meta_time','1615735846'),(8,3,'_wp_desired_post_slug','privacy-policy'),(10,5,'_customize_changeset_uuid','03dfe5c8-5434-4aea-a27e-433864e9a1a1'),(12,6,'_customize_changeset_uuid','03dfe5c8-5434-4aea-a27e-433864e9a1a1'),(14,7,'_customize_changeset_uuid','03dfe5c8-5434-4aea-a27e-433864e9a1a1'),(16,8,'_customize_changeset_uuid','03dfe5c8-5434-4aea-a27e-433864e9a1a1'),(17,10,'_wp_attached_file','2021/03/favicon.png'),(18,10,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:19:\"2021/03/favicon.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"favicon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"favicon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(19,11,'_wp_attached_file','2021/03/cropped-favicon.png'),(20,11,'_wp_attachment_context','site-icon'),(21,11,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2021/03/cropped-favicon.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:25:\"cropped-favicon-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(54,16,'_menu_item_type','custom'),(55,16,'_menu_item_menu_item_parent','0'),(56,16,'_menu_item_object_id','16'),(57,16,'_menu_item_object','custom'),(58,16,'_menu_item_target',''),(59,16,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(60,16,'_menu_item_xfn',''),(61,16,'_menu_item_url','https://www.facebook.com/wordpress'),(62,17,'_menu_item_type','custom'),(63,17,'_menu_item_menu_item_parent','0'),(64,17,'_menu_item_object_id','17'),(65,17,'_menu_item_object','custom'),(66,17,'_menu_item_target',''),(67,17,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(68,17,'_menu_item_xfn',''),(69,17,'_menu_item_url','https://twitter.com/wordpress'),(70,18,'_menu_item_type','custom'),(71,18,'_menu_item_menu_item_parent','0'),(72,18,'_menu_item_object_id','18'),(73,18,'_menu_item_object','custom'),(74,18,'_menu_item_target',''),(75,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(76,18,'_menu_item_xfn',''),(77,18,'_menu_item_url','https://www.instagram.com/explore/tags/wordcamp/'),(78,19,'_menu_item_type','custom'),(79,19,'_menu_item_menu_item_parent','0'),(80,19,'_menu_item_object_id','19'),(81,19,'_menu_item_object','custom'),(82,19,'_menu_item_target',''),(83,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(84,19,'_menu_item_xfn',''),(85,19,'_menu_item_url','mailto:wordpress@example.com'),(86,9,'_wp_trash_meta_status','publish'),(87,9,'_wp_trash_meta_time','1615736023'),(88,6,'_wp_trash_meta_status','publish'),(89,6,'_wp_trash_meta_time','1615744639'),(90,6,'_wp_desired_post_slug','about'),(91,8,'_wp_trash_meta_status','publish'),(92,8,'_wp_trash_meta_time','1615744642'),(93,8,'_wp_desired_post_slug','blog'),(94,7,'_wp_trash_meta_status','publish'),(95,7,'_wp_trash_meta_time','1615744647'),(96,7,'_wp_desired_post_slug','contact'),(97,5,'_wp_trash_meta_status','publish'),(98,5,'_wp_trash_meta_time','1615744652'),(99,5,'_wp_desired_post_slug','create-your-website-with-blocks');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-03-14 14:23:35','2021-03-14 14:23:35','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-03-14 14:23:35','2021-03-14 14:23:35','',0,'http://buradadev.wpengine.com/?p=1',0,'post','',1),(2,1,'2021-03-14 14:23:35','2021-03-14 14:23:35','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://buradadev.wpengine.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2021-03-14 15:30:32','2021-03-14 15:30:32','',0,'http://buradadev.wpengine.com/?page_id=2',0,'page','',0),(3,1,'2021-03-14 14:23:35','2021-03-14 14:23:35','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://buradadev.wpengine.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2021-03-14 15:30:46','2021-03-14 15:30:46','',0,'http://buradadev.wpengine.com/?page_id=3',0,'page','',0),(5,1,'2021-03-14 15:33:43','2021-03-14 15:33:43','\r\n					<!-- wp:heading {\"align\":\"wide\",\"fontSize\":\"gigantic\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}}} -->\r\n					<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Create your website with blocks</h2>\r\n					<!-- /wp:heading -->\r\n\r\n					<!-- wp:spacer -->\r\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\r\n					<!-- /wp:spacer -->\r\n\r\n					<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\r\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\r\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\r\n					<figure class=\"wp-block-image alignfull size-large\"><img src=\"https://buradadev.wpengine.com/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"&#8220;Roses Trémières&#8221; by Berthe Morisot\"/></figure>\r\n					<!-- /wp:image -->\r\n\r\n					<!-- wp:spacer -->\r\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\r\n					<!-- /wp:spacer -->\r\n\r\n					<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\r\n					<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"https://buradadev.wpengine.com/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"&#8220;In the Bois de Boulogne&#8221; by Berthe Morisot\"/></figure>\r\n					<!-- /wp:image --></div>\r\n					<!-- /wp:column -->\r\n\r\n					<!-- wp:column {\"verticalAlignment\":\"center\"} -->\r\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\r\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\r\n					<!-- /wp:spacer -->\r\n\r\n					<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\r\n					<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"https://buradadev.wpengine.com/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"&#8220;Young Woman in Mauve&#8221; by Berthe Morisot\"/></figure>\r\n					<!-- /wp:image --></div>\r\n					<!-- /wp:column --></div>\r\n					<!-- /wp:columns -->\r\n\r\n					<!-- wp:spacer {\"height\":50} -->\r\n					<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\r\n					<!-- /wp:spacer -->\r\n\r\n					<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\r\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\r\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\r\n					<h3>Add block patterns</h3>\r\n					<!-- /wp:heading -->\r\n\r\n					<!-- wp:paragraph -->\r\n					<p>Block patterns are pre-designed groups of blocks. To add one, select the Add Block button [+] in the toolbar at the top of the editor. Switch to the Patterns tab underneath the search bar, and choose a pattern.</p>\r\n					<!-- /wp:paragraph --></div>\r\n					<!-- /wp:column -->\r\n\r\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\r\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\r\n					<h3>Frame your images</h3>\r\n					<!-- /wp:heading -->\r\n\r\n					<!-- wp:paragraph -->\r\n					<p>Twenty Twenty-One includes stylish borders for your content. With an Image block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Select the &quot;Frame&quot; block style to activate it.</p>\r\n					<!-- /wp:paragraph --></div>\r\n					<!-- /wp:column -->\r\n\r\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\r\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\r\n					<h3>Overlap columns</h3>\r\n					<!-- /wp:heading -->\r\n\r\n					<!-- wp:paragraph -->\r\n					<p>Twenty Twenty-One also includes an overlap style for column blocks. With a Columns block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Choose the &quot;Overlap&quot; block style to try it out.</p>\r\n					<!-- /wp:paragraph --></div>\r\n					<!-- /wp:column --></div>\r\n					<!-- /wp:columns -->\r\n\r\n					<!-- wp:spacer -->\r\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\r\n					<!-- /wp:spacer -->\r\n\r\n					<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\r\n					<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\r\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\r\n					<!-- /wp:spacer -->\r\n\r\n					<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\r\n					<p class=\"has-huge-font-size\">Need help?</p>\r\n					<!-- /wp:paragraph -->\r\n\r\n					<!-- wp:spacer {\"height\":75} -->\r\n					<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\r\n					<!-- /wp:spacer -->\r\n\r\n					<!-- wp:columns -->\r\n					<div class=\"wp-block-columns\"><!-- wp:column -->\r\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\r\n					<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Read the Theme Documentation</a></p>\r\n					<!-- /wp:paragraph --></div>\r\n					<!-- /wp:column -->\r\n\r\n					<!-- wp:column -->\r\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\r\n					<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Check out the Support Forums</a></p>\r\n					<!-- /wp:paragraph --></div>\r\n					<!-- /wp:column --></div>\r\n					<!-- /wp:columns -->\r\n\r\n					<!-- wp:spacer {\"height\":20} -->\r\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\r\n					<!-- /wp:spacer --></div></div>\r\n					<!-- /wp:cover -->','Create your website with blocks','','trash','closed','closed','','create-your-website-with-blocks__trashed','','','2021-03-14 17:57:32','2021-03-14 17:57:32','',0,'http://buradadev.wpengine.com/?page_id=5',0,'page','',0),(6,1,'2021-03-14 15:33:43','2021-03-14 15:33:43','<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->','About','','trash','closed','closed','','about__trashed','','','2021-03-14 17:57:19','2021-03-14 17:57:19','',0,'http://buradadev.wpengine.com/?page_id=6',0,'page','',0),(7,1,'2021-03-14 15:33:43','2021-03-14 15:33:43','<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->','Contact','','trash','closed','closed','','contact__trashed','','','2021-03-14 17:57:27','2021-03-14 17:57:27','',0,'http://buradadev.wpengine.com/?page_id=7',0,'page','',0),(8,1,'2021-03-14 15:33:43','2021-03-14 15:33:43','','Blog','','trash','closed','closed','','blog__trashed','','','2021-03-14 17:57:22','2021-03-14 17:57:22','',0,'http://buradadev.wpengine.com/?page_id=8',0,'page','',0),(9,1,'2021-03-14 15:33:43','2021-03-14 15:33:43','{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-14 15:33:07\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Primary menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-14 15:33:43\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://buradadev.wpengine.com/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-14 15:33:43\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"About\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-14 15:33:43\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-14 15:33:43\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-14 15:33:43\"\n    },\n    \"twentytwentyone::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-14 15:33:07\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Secondary menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-14 15:33:43\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-14 15:33:43\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-14 15:33:43\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-14 15:33:43\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-14 15:33:43\"\n    },\n    \"twentytwentyone::nav_menu_locations[footer]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-14 15:33:07\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-14 15:33:07\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 5,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-14 15:33:07\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-14 15:33:07\"\n    },\n    \"site_icon\": {\n        \"value\": 11,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-14 15:33:43\"\n    }\n}','','','trash','closed','closed','','03dfe5c8-5434-4aea-a27e-433864e9a1a1','','','2021-03-14 15:33:43','2021-03-14 15:33:43','',0,'http://buradadev.wpengine.com/?p=9',0,'customize_changeset','',0),(10,1,'2021-03-14 15:33:21','2021-03-14 15:33:21','','favicon','','inherit','open','closed','','favicon','','','2021-03-14 15:33:21','2021-03-14 15:33:21','',0,'http://buradadev.wpengine.com/wp-content/uploads/2021/03/favicon.png',0,'attachment','image/png',0),(11,1,'2021-03-14 15:33:39','2021-03-14 15:33:39','http://buradadev.wpengine.com/wp-content/uploads/2021/03/cropped-favicon.png','cropped-favicon.png','','inherit','open','closed','','cropped-favicon-png','','','2021-03-14 15:33:39','2021-03-14 15:33:39','',0,'http://buradadev.wpengine.com/wp-content/uploads/2021/03/cropped-favicon.png',0,'attachment','image/png',0),(16,1,'2021-03-14 15:33:43','2021-03-14 15:33:43','','Facebook','','publish','closed','closed','','facebook','','','2021-03-14 15:33:43','2021-03-14 15:33:43','',0,'http://buradadev.wpengine.com/facebook/',0,'nav_menu_item','',0),(17,1,'2021-03-14 15:33:43','2021-03-14 15:33:43','','Twitter','','publish','closed','closed','','twitter','','','2021-03-14 15:33:43','2021-03-14 15:33:43','',0,'http://buradadev.wpengine.com/twitter/',1,'nav_menu_item','',0),(18,1,'2021-03-14 15:33:43','2021-03-14 15:33:43','','Instagram','','publish','closed','closed','','instagram','','','2021-03-14 15:33:43','2021-03-14 15:33:43','',0,'http://buradadev.wpengine.com/instagram/',2,'nav_menu_item','',0),(19,1,'2021-03-14 15:33:43','2021-03-14 15:33:43','','Email','','publish','closed','closed','','email','','','2021-03-14 15:33:43','2021-03-14 15:33:43','',0,'http://buradadev.wpengine.com/email/',3,'nav_menu_item','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(16,3,0),(17,3,0),(18,3,0),(19,3,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1),(2,2,'nav_menu','',0,0),(3,3,'nav_menu','',0,4);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'Primary menu','primary-menu',0),(3,'Secondary menu','secondary-menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','buradaprd'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','1'),(17,1,'session_tokens','a:1:{s:64:\"b7ade5dddcde8782ea0ffba97f33a23e48dbc1b3ee9918426f4cfd7cb46784d4\";a:4:{s:10:\"expiration\";i:1616945410;s:2:\"ip\";s:12:\"113.11.38.40\";s:2:\"ua\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36\";s:5:\"login\";i:1615735810;}}'),(18,1,'WPE_LAST_LOGIN_TIME','1615744532'),(19,1,'WPE_LOGGED_REQUEST_IDS','a:0:{}'),(20,1,'wp_dashboard_quick_press_last_post_id','4'),(21,1,'community-events-location','a:1:{s:2:\"ip\";s:11:\"113.11.38.0\";}'),(22,1,'nav_menu_recently_edited','2'),(23,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(24,1,'metaboxhidden_nav-menus','a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),(25,1,'wp_user-settings','libraryContent=browse'),(26,1,'wp_user-settings-time','1615736045'),(27,1,'closedpostboxes_dashboard','a:0:{}'),(28,1,'metaboxhidden_dashboard','a:6:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:18:\"wpe_dify_news_feed\";i:4;s:21:\"dashboard_quick_press\";i:5;s:17:\"dashboard_primary\";}'),(30,2,'nickname','kpdi'),(31,2,'first_name',''),(32,2,'last_name',''),(33,2,'description',''),(34,2,'rich_editing','true'),(35,2,'syntax_highlighting','true'),(36,2,'comment_shortcuts','false'),(37,2,'admin_color','fresh'),(38,2,'use_ssl','0'),(39,2,'show_admin_bar_front','true'),(40,2,'locale',''),(41,2,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(42,2,'wp_user_level','10'),(43,2,'dismissed_wp_pointers',''),(44,2,'session_tokens','a:3:{s:64:\"c2ae2c87e8d1ca0094ab247c8600d3591c30b1eaa40d49566699e084fc6b711b\";a:4:{s:10:\"expiration\";i:1616954198;s:2:\"ip\";s:12:\"113.11.38.40\";s:2:\"ua\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36\";s:5:\"login\";i:1615744598;}s:64:\"425a6045de19bfdd69306911b8267fa947ab62ff35278317015269f1364f61ef\";a:4:{s:10:\"expiration\";i:1616954216;s:2:\"ip\";s:12:\"113.11.38.40\";s:2:\"ua\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36\";s:5:\"login\";i:1615744616;}s:64:\"6c604dd3224d6026d843973401dd0554bb9d982ec0b2194fcac6b58196561a59\";a:4:{s:10:\"expiration\";i:1616298893;s:2:\"ip\";s:12:\"113.11.38.40\";s:2:\"ua\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\";s:5:\"login\";i:1616126093;}}'),(45,2,'wp_dashboard_quick_press_last_post_id','20'),(46,2,'community-events-location','a:1:{s:2:\"ip\";s:11:\"113.11.38.0\";}'),(47,2,'nav_menu_recently_edited','2'),(48,2,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(49,2,'metaboxhidden_nav-menus','a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),(50,2,'gform_recent_forms','a:1:{i:0;s:1:\"1\";}'),(51,2,'closedpostboxes_dashboard','a:0:{}'),(52,2,'metaboxhidden_dashboard','a:7:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:18:\"wpe_dify_news_feed\";i:4;s:18:\"rg_forms_dashboard\";i:5;s:21:\"dashboard_quick_press\";i:6;s:17:\"dashboard_primary\";}'),(53,2,'show_welcome_panel','1');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'buradaprd','$P$Bxpcx2vF5kNPe.eCO9HEVy5RbvTUkG1','buradaprd','edwards@gologistics.net','http://buradadev.wpengine.com','2021-03-14 14:23:35','',0,'buradaprd'),(2,'kpdi','$P$BQRYrFDC.9DSgV4DtbuS8nBOfWZK9s/','kpdi','support@kpd-i.com','','2021-03-14 17:56:21','',0,'kpdi');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'wp_buradadev'
--

--
-- Dumping routines for database 'wp_buradadev'
--
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
