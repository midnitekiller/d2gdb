-- MySQL dump 10.13  Distrib 5.5.61, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: direct2guests_beta
-- ------------------------------------------------------
-- Server version	5.5.61-0ubuntu0.14.04.1

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
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amenities` (
  `amenities_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `amenities_name` varchar(60) NOT NULL,
  `amenities_type` varchar(60) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `image` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`amenities_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  CONSTRAINT `amenities_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appupdate`
--

DROP TABLE IF EXISTS `appupdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appupdate` (
  `appupdate_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `versionname` varchar(60) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`appupdate_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  CONSTRAINT `appupdate_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appupdate`
--

LOCK TABLES `appupdate` WRITE;
/*!40000 ALTER TABLE `appupdate` DISABLE KEYS */;
INSERT INTO `appupdate` VALUES (10,1,'1.0.10','2017-12-12 14:26:28','2017-12-15 08:57:58');
/*!40000 ALTER TABLE `appupdate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment` (
  `assignment_ID` int(10) NOT NULL AUTO_INCREMENT,
  `staff_ID` int(10) NOT NULL,
  `about_hotel` varchar(60) DEFAULT NULL,
  `room_dining` varchar(60) DEFAULT NULL,
  `frontdesk` varchar(60) DEFAULT NULL,
  `services` varchar(60) DEFAULT NULL,
  `offers` varchar(60) DEFAULT NULL,
  `staff` varchar(60) DEFAULT NULL,
  `housekeeping` varchar(60) DEFAULT NULL,
  `feedbacks` varchar(60) DEFAULT NULL,
  `channels` varchar(60) DEFAULT NULL,
  `pos` varchar(60) DEFAULT NULL,
  `order_history` varchar(60) DEFAULT NULL,
  `reports` varchar(60) DEFAULT NULL,
  `others` varchar(60) DEFAULT NULL,
  `rooms` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`assignment_ID`),
  UNIQUE KEY `staff_ID` (`staff_ID`),
  CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`staff_ID`) REFERENCES `staff` (`staff_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
INSERT INTO `assignment` VALUES (14,19,'about_hotel','room_dining','frontdesk','services','offers','staff','housekeeping','feedbacks','channels','pos','order_history','reports','others','rooms','2018-08-29 07:12:39','2018-08-29 07:51:56');
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `restaurant_ID` int(10) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  KEY `restaurant_ID` (`restaurant_ID`),
  CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `categories_ibfk_2` FOREIGN KEY (`restaurant_ID`) REFERENCES `restaurants` (`restaurant_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (26,1,44,'bfast','2017-11-30 15:07:20','2017-11-30 07:07:20'),(27,1,46,'Lunch','2017-11-30 15:30:06','2017-11-30 07:30:06'),(28,1,47,'Dinner','2017-11-30 16:05:36','2017-11-30 08:05:36'),(29,1,48,'Late','2017-11-30 16:33:32','2017-11-30 08:33:32'),(30,1,49,'Beverage','2017-11-30 17:14:25','2017-11-30 09:14:25');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channels`
--

DROP TABLE IF EXISTS `channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channels` (
  `channel_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `channel_type` varchar(100) NOT NULL,
  `channel_name` varchar(100) DEFAULT NULL,
  `channel_url` varchar(500) DEFAULT NULL,
  `channel_logo` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`channel_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  CONSTRAINT `channels_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channels`
--

LOCK TABLES `channels` WRITE;
/*!40000 ALTER TABLE `channels` DISABLE KEYS */;
INSERT INTO `channels` VALUES (71,1,'HLS','ABS-CBN','http://178.128.26.46:80/AXN/mono.m3u8','abscbn.png','2017-12-21 13:07:18','2018-09-26 10:10:49'),(83,13,'RTMP','ABS-CBN','rtmp://192.168.1.215:1935/ABS-CBN','abscbn.png','2018-02-08 15:25:27','2018-02-08 07:25:27'),(84,1,'HLS','GMA ','http://178.128.26.46:80/HBOHD/mono.m3u8','GMA_Logo.png','2018-03-26 12:58:36','2018-09-26 10:11:04'),(85,1,'HLS','Animal Planet','http://178.128.26.46:80/STARWORL/mono.m3u8','Animal Planet.png','2018-03-26 13:01:20','2018-09-26 10:11:34'),(86,1,'RTMP','Asian Food','rtmp://178.128.26.46:1935/static/STARWORL','asian food channel.jpg','2018-03-26 13:02:57','2018-09-26 10:12:00'),(87,1,'RTMP','Channel V','rtmp://178.128.26.46:1935/static/HBOHD','channel v.jpg','2018-03-26 13:04:01','2018-09-26 10:12:15'),(88,1,'RTMP','Fox Sports','rtmp://178.128.26.46:1935/static/AXN','fox sports.jpg','2018-03-26 13:07:42','2018-09-26 10:12:28'),(89,1,'RTMP','Nickelodeon','rtmp://178.128.26.46:1935/static/HBOHD','Nickelodeon.png','2018-03-26 13:09:05','2018-09-26 10:12:51'),(90,1,'RTMP','TV 5','rtmp://178.128.26.46:1935/static/AXN','tv5-new-logo.png','2018-03-26 13:13:06','2018-09-26 10:13:02'),(91,1,'RTMP','Disney Channel','rtmp://178.128.26.46:1935/static/STARWORL','disney-channel-logo.png','2018-03-26 16:28:38','2018-09-26 10:13:23'),(92,1,'HLS','Channel 1','http://192.168.1.44:8080/Queenslands/RKPrime.mp4/video.m3u8','cignal logo.png','2018-04-30 17:27:15','2018-09-13 18:03:25');
/*!40000 ALTER TABLE `channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chats` (
  `chats_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) DEFAULT NULL,
  `guest_ID` int(10) DEFAULT NULL,
  `by_admin_id` int(10) DEFAULT NULL,
  `by_staff_id` int(10) DEFAULT NULL,
  `msg` varchar(1000) DEFAULT NULL,
  `msg_from` varchar(50) NOT NULL,
  `msg_to` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`chats_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  KEY `guest_ID` (`guest_ID`),
  KEY `by_admin_id` (`by_admin_id`),
  KEY `by_staff_id` (`by_staff_id`),
  CONSTRAINT `chats_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chats_ibfk_2` FOREIGN KEY (`guest_ID`) REFERENCES `guests` (`guest_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chats_ibfk_3` FOREIGN KEY (`by_admin_id`) REFERENCES `users` (`user_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
INSERT INTO `chats` VALUES (206,1,NULL,NULL,NULL,'hey','superadmin','admin','seen','2017-12-08 10:46:49','2017-12-08 03:06:04'),(207,1,NULL,NULL,NULL,'hey','superadmin','admin','seen','2017-12-08 11:06:31','2017-12-08 03:06:36'),(215,1,NULL,NULL,NULL,'yow','superadmin','admin','seen','2017-12-08 12:45:04','2017-12-08 04:47:09'),(218,1,NULL,NULL,NULL,'sadad','admin','superadmin','seen','2017-12-08 12:55:27','2017-12-08 04:55:29'),(219,1,NULL,NULL,NULL,'fsdsdf','superadmin','admin','seen','2017-12-08 12:55:39','2017-12-08 04:55:41'),(220,1,NULL,NULL,NULL,'df dsfds ','superadmin','admin','seen','2017-12-08 12:57:40','2017-12-08 04:57:43'),(221,1,NULL,NULL,NULL,'asdasd','superadmin','admin','seen','2017-12-08 12:58:01','2017-12-08 04:58:03'),(222,1,NULL,NULL,NULL,'asdad','superadmin','admin','seen','2017-12-08 12:58:32','2017-12-08 04:58:35'),(223,1,NULL,NULL,NULL,'zxzc552','superadmin','admin','seen','2017-12-08 12:58:44','2017-12-08 04:58:45'),(224,1,NULL,NULL,NULL,'6564','superadmin','admin','seen','2017-12-08 12:58:55','2017-12-08 04:59:15'),(225,1,NULL,NULL,NULL,'lkjkl','superadmin','admin','seen','2017-12-08 12:59:06','2017-12-08 04:59:15');
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device` (
  `tabs_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `room_no` varchar(50) DEFAULT NULL,
  `mac_address` varchar(200) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tabs_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  CONSTRAINT `device_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `device_ibfk_2` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES (159,1,'1','3c0d0facfd581350','active','2018-09-03 17:52:02','2018-09-11 02:50:33'),(160,1,'1','8700d0789bca8b0d','active','2018-09-04 05:35:53','2018-09-11 02:50:33'),(161,1,'1','aca04b50dfa2ec40','active','2018-09-04 12:16:24','2018-09-11 02:50:33'),(162,1,'1','a2e9502da1f0024d','active','2018-09-06 14:09:14','2018-09-11 02:50:33'),(163,1,'1','4417a63a290a5eff','active','2018-09-06 14:49:01','2018-09-11 02:50:33'),(164,1,'4','4faef6500f9bcf09','active','2018-09-06 17:01:35','2018-09-11 02:53:50'),(165,1,'4','124accec2805428d','inactive','2018-09-08 18:51:26','2018-09-11 02:52:15'),(166,1,'4','eb30a3da8f213037','inactive','2018-09-09 00:52:13','2018-09-11 02:52:15'),(167,1,'4','ae119fb4d8a40ea5','inactive','2018-09-11 05:15:47','2018-09-11 02:52:15'),(168,1,'4','f694e69a906565e1','inactive','2018-09-11 08:08:44','2018-09-11 02:52:15'),(169,1,'4','712390bad3364867','inactive','2018-09-11 17:19:43','2018-09-11 09:19:43'),(170,1,'4','535da22c0fddd3bb','inactive','2018-09-13 11:31:24','2018-09-13 03:31:24'),(171,1,'4','2606b19f8dfeb12c','inactive','2018-09-20 16:08:55','2018-09-20 08:08:55'),(172,1,'4','7737bdcb4d0ddb34','inactive','2018-09-20 21:29:13','2018-09-20 13:29:13'),(173,1,'1','2a03776ff8d50ed1','inactive','2018-09-24 13:30:32','2018-09-24 05:30:32'),(174,1,'4','f9c722ff2b201cdb','inactive','2018-09-26 15:29:08','2018-09-26 07:29:08');
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dishstyles`
--

DROP TABLE IF EXISTS `dishstyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dishstyles` (
  `dishstyle_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `restaurant_ID` int(10) NOT NULL,
  `category_ID` int(10) DEFAULT NULL,
  `dishstyle_name` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dishstyle_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  KEY `restaurant_ID` (`restaurant_ID`),
  KEY `category_ID` (`category_ID`),
  CONSTRAINT `dishstyles_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dishstyles_ibfk_2` FOREIGN KEY (`restaurant_ID`) REFERENCES `restaurants` (`restaurant_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dishstyles_ibfk_3` FOREIGN KEY (`category_ID`) REFERENCES `categories` (`category_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dishstyles`
--

LOCK TABLES `dishstyles` WRITE;
/*!40000 ALTER TABLE `dishstyles` DISABLE KEYS */;
INSERT INTO `dishstyles` VALUES (18,1,44,26,'American Breakfast','2017-11-30 15:08:57','2017-11-30 07:08:57'),(19,1,46,27,'American Lunch','2017-11-30 15:30:33','2017-11-30 07:30:33'),(20,1,47,28,'Canadian Dish','2017-11-30 16:05:53','2017-11-30 08:05:53'),(21,1,48,29,'Canadian Late Night','2017-11-30 16:33:54','2017-11-30 08:33:54'),(22,1,49,30,'Canada Beverage','2017-11-30 17:14:38','2017-11-30 09:14:38');
/*!40000 ALTER TABLE `dishstyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq` (
  `faq_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `question` varchar(250) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`faq_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  CONSTRAINT `faq_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (27,1,'KWHAIAKJIIEA','JDKJKDFEIAJJIEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA','active','2017-11-06 19:09:49','2017-11-13 06:03:37');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedbacks` (
  `feedback_ID` int(10) NOT NULL AUTO_INCREMENT,
  `notif_seen` varchar(50) NOT NULL DEFAULT 'false',
  `hotel_ID` int(10) NOT NULL,
  `guest_ID` int(10) NOT NULL,
  `feedback_overall` varchar(30) DEFAULT NULL,
  `feedback_location` varchar(30) DEFAULT NULL,
  `feedback_room` varchar(30) DEFAULT NULL,
  `feedback_service` varchar(30) DEFAULT NULL,
  `feedback_value` varchar(30) DEFAULT NULL,
  `feedback_cleanliness` varchar(30) DEFAULT NULL,
  `feedback_restaurant` varchar(30) DEFAULT NULL,
  `feedback_message` varchar(600) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`feedback_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  KEY `guest_ID` (`guest_ID`),
  CONSTRAINT `feedbacks_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `feedbacks_ibfk_2` FOREIGN KEY (`guest_ID`) REFERENCES `guests` (`guest_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guests` (
  `guest_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `title` varchar(10) DEFAULT NULL,
  `firstname` varchar(60) DEFAULT NULL,
  `middlename` varchar(60) DEFAULT NULL,
  `lastname` varchar(60) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `room_no` varchar(50) NOT NULL,
  `inclusion_Breakfast` varchar(20) DEFAULT NULL,
  `inclusion_Lunch` varchar(20) DEFAULT NULL,
  `inclusion_Dinner` varchar(20) DEFAULT NULL,
  `inclusion_Spa` varchar(20) DEFAULT NULL,
  `inclusion_Transportation` varchar(20) DEFAULT NULL,
  `inclusion_Sightseeing` varchar(20) DEFAULT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postal` int(10) DEFAULT NULL,
  `deleted` int(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`guest_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  CONSTRAINT `guests` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` VALUES (122,1,'Mr','Sean','','Lazenby','sean@direct2guests.com','9498842273','1','Breakfast','Lunch','Dinner','Spa','Transportation','Sightseeing','2018-08-27 17:53:00','2020-09-17 17:53:00','1890 Redwood Drive','1890 Redwood Drive','Surrey','Canada',0,1,'active','2018-09-03 17:53:55','2018-09-11 02:50:33'),(124,1,'Mr','Lief Jill','M','Cute','liefjill@direct2guests.com','9498842273','4','Breakfast','Lunch','Dinner','Spa','Transportation','Sightseeing','2018-09-05 10:53:00','2019-09-12 10:53:00','1890 Redwood Drive','1890 Redwood Drive','Surrey','Canada',0,1,'active','2018-09-11 10:53:50','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guestshistory`
--

DROP TABLE IF EXISTS `guestshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestshistory` (
  `guest_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `title` varchar(10) DEFAULT NULL,
  `firstname` varchar(60) DEFAULT NULL,
  `middlename` varchar(60) DEFAULT NULL,
  `lastname` varchar(60) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `room_no` int(10) NOT NULL,
  `inclusion_Breakfast` varchar(20) DEFAULT NULL,
  `inclusion_Lunch` varchar(20) DEFAULT NULL,
  `inclusion_Dinner` varchar(20) DEFAULT NULL,
  `inclusion_Spa` varchar(20) DEFAULT NULL,
  `inclusion_Transportation` varchar(20) DEFAULT NULL,
  `inclusion_Sightseeing` varchar(20) DEFAULT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`guest_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  CONSTRAINT `guestshistory_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestshistory`
--

LOCK TABLES `guestshistory` WRITE;
/*!40000 ALTER TABLE `guestshistory` DISABLE KEYS */;
INSERT INTO `guestshistory` VALUES (8,1,'Ms','Lief Jill','s','s','liefjill@direct2guests.com','9498842273',2,'','Lunch','Dinner','Spa','','Sightseeing','2018-08-21 05:40:00','2019-08-21 05:40:00','1890 Redwood Drive','2018-08-31 05:40:57','0000-00-00 00:00:00'),(9,1,'Mr','Sean','','Lazenby','sean@direct2guests.com','9498842273',1,'','Lunch','Dinner','Spa','Transportation','Sightseeing','2018-08-27 17:50:00','2020-10-08 17:50:00','1890 Redwood Drive','2018-09-03 17:50:24','0000-00-00 00:00:00'),(10,1,'Mr','Sean','','Lazenby','sean@direct2guests.com','9498842273',1,'Breakfast','Lunch','Dinner','Spa','Transportation','Sightseeing','2018-08-27 17:53:00','2020-09-17 17:53:00','1890 Redwood Drive','2018-09-03 17:53:55','0000-00-00 00:00:00'),(11,1,'Mr','Lief Jill','','Cute','liefjill@direct2guests.com','9498842273',4,'Breakfast','Lunch','Dinner','Spa','Transportation','Sightseeing','2018-08-30 17:02:00','2019-09-05 17:02:00','1890 Redwood Drive','2018-09-06 17:02:11','0000-00-00 00:00:00'),(12,1,'Mr','Lief Jill','M','Cute','liefjill@direct2guests.com','9498842273',4,'Breakfast','Lunch','Dinner','Spa','Transportation','Sightseeing','2018-09-05 10:53:00','2019-09-12 10:53:00','1890 Redwood Drive','2018-09-11 10:53:50','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `guestshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_access`
--

DROP TABLE IF EXISTS `hotel_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_access` (
  `access_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `access_name` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `admin_status` varchar(100) NOT NULL,
  PRIMARY KEY (`access_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  CONSTRAINT `hotel_access_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_access`
--

LOCK TABLES `hotel_access` WRITE;
/*!40000 ALTER TABLE `hotel_access` DISABLE KEYS */;
INSERT INTO `hotel_access` VALUES (1,1,'chat_acc','active','active'),(2,1,'food_acc','active','active'),(3,1,'ads_acc','active','active'),(4,1,'housekeeping_acc','active','active'),(5,1,'services_acc','active','active'),(6,1,'offers_acc','active','active'),(7,1,'feedback_acc','active','active'),(8,1,'info_acc','active','active'),(9,1,'watchtv_acc','active','active'),(10,1,'forex_acc','active','inactive'),(11,1,'flight_acc','active','active'),(123,12,'chat_acc','active','active'),(124,12,'food_acc','active','active'),(125,12,'ads_acc','active','active'),(126,12,'housekeeping_acc','active','active'),(127,12,'services_acc','active','active'),(128,12,'offers_acc','active','active'),(129,12,'feedback_acc','active','active'),(130,12,'info_acc','active','active'),(131,12,'watchtv_acc','active','active'),(132,12,'forex_acc','active','active'),(133,12,'flight_acc','active','active'),(134,13,'chat_acc','active','active'),(135,13,'food_acc','active','active'),(136,13,'ads_acc','active','active'),(137,13,'housekeeping_acc','active','active'),(138,13,'services_acc','inactive','off'),(139,13,'offers_acc','active','active'),(140,13,'feedback_acc','active','active'),(141,13,'info_acc','active','active'),(142,13,'watchtv_acc','active','active'),(143,13,'forex_acc','inactive','off'),(144,13,'flight_acc','inactive','off'),(145,14,'chat_acc','active','active'),(146,14,'food_acc','active','active'),(147,14,'ads_acc','active','active'),(148,14,'housekeeping_acc','active','active'),(149,14,'services_acc','active','active'),(150,14,'offers_acc','active','active'),(151,14,'feedback_acc','active','active'),(152,14,'info_acc','active','active'),(153,14,'watchtv_acc','active','active'),(154,14,'forex_acc','active','active'),(155,14,'flight_acc','active','active');
/*!40000 ALTER TABLE `hotel_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotels` (
  `hotel_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_status` varchar(50) NOT NULL,
  `main_email` varchar(150) NOT NULL,
  `hotel_image` varchar(100) DEFAULT NULL,
  `hotel_name` varchar(100) DEFAULT NULL,
  `hotel_phone` bigint(255) DEFAULT NULL,
  `hotel_currency` varchar(50) DEFAULT NULL,
  `hotel_max_room` int(25) DEFAULT NULL,
  `hotel_address` varchar(300) DEFAULT NULL,
  `hotel_street` varchar(300) DEFAULT NULL,
  `hotel_city` varchar(100) DEFAULT NULL,
  `hotel_state` varchar(100) DEFAULT NULL,
  `hotel_country` varchar(100) DEFAULT NULL,
  `hotel_postal` int(10) DEFAULT NULL,
  `background_image` varchar(100) DEFAULT NULL,
  `weather_ID` varchar(20) DEFAULT NULL,
  `flight_code` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`hotel_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (1,'active','matt@direct2guests.com','MONTEBELLO-VILLA-HOTEL-LOGO-2017.png','Matt\'s Hotel',922156,'PHP',23,'Balamban, Cebu, Philippines','Balamban','Cebu','cebu','Philippines',60411,'cebu-city-lights-crown-regency-skywalk.jpg',NULL,NULL,'2017-09-27 20:30:23','2018-08-30 08:24:17'),(12,'inactive','joejohnferrolino@gmail.com','@csuites.png','csuites',0,'PHP',20,', , ','','','','',0,'','','','2017-11-30 12:57:42','2018-08-26 14:10:49'),(13,'inactive','bagarabon@direct2guests.com','bagarabon-logo-4.png','Mount Bagarabon Resort & Hotel',639178510978,'PHP',100,'Mabua, Surigao City, Philippines','Mabua','Surigao City','','Philippines',8400,'',NULL,NULL,'2018-01-29 16:06:08','2018-08-26 14:10:44'),(14,'inactive','marife@direct2guests.com','montebello-villa-hotel.jpg','Montebello Hotel',0,'PHP',150,', , ','','','','',0,'','','','2018-04-30 12:05:37','2018-07-12 20:44:36');
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `housekeepings`
--

DROP TABLE IF EXISTS `housekeepings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `housekeepings` (
  `housekeeping_ID` int(10) NOT NULL AUTO_INCREMENT,
  `notif_seen` varchar(50) NOT NULL DEFAULT 'false',
  `hotel_ID` int(10) NOT NULL,
  `guest_ID` int(10) NOT NULL,
  `room_no` int(10) DEFAULT NULL,
  `hk_date` datetime DEFAULT NULL,
  `hk_status` varchar(60) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`housekeeping_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  KEY `guest_ID` (`guest_ID`),
  CONSTRAINT `housekeepings_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `housekeepings_ibfk_2` FOREIGN KEY (`guest_ID`) REFERENCES `guests` (`guest_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `housekeepings`
--

LOCK TABLES `housekeepings` WRITE;
/*!40000 ALTER TABLE `housekeepings` DISABLE KEYS */;
INSERT INTO `housekeepings` VALUES (1,'true',1,122,1,'2018-09-06 14:15:31','Requested Housekeeping','2018-09-06 14:15:31','2018-09-06 07:19:07');
/*!40000 ALTER TABLE `housekeepings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_all`
--

DROP TABLE IF EXISTS `notification_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_all` (
  `notification_all_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `notification_type` int(10) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`notification_all_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  CONSTRAINT `notification_all_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_all`
--

LOCK TABLES `notification_all` WRITE;
/*!40000 ALTER TABLE `notification_all` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_chat`
--

DROP TABLE IF EXISTS `notification_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_chat` (
  `notification_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `guest_ID` int(10) NOT NULL,
  `msg` varchar(500) DEFAULT NULL,
  `seen` varchar(500) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`notification_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  KEY `guest_ID` (`guest_ID`),
  CONSTRAINT `notification_chat_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `notification_chat_ibfk_2` FOREIGN KEY (`guest_ID`) REFERENCES `guests` (`guest_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_chat`
--

LOCK TABLES `notification_chat` WRITE;
/*!40000 ALTER TABLE `notification_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offers` (
  `offer_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `offer_name` varchar(60) DEFAULT NULL,
  `description` varchar(1000) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`offer_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  CONSTRAINT `offers_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` VALUES (30,1,'Restaurant','Hotel Restaurants','cafe.jpg','2018-03-27 11:17:22','0000-00-00 00:00:00'),(31,1,'Recreation','Yoga','Wellness-Center-360x300.jpg','2018-04-30 15:01:43','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers_detail`
--

DROP TABLE IF EXISTS `offers_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offers_detail` (
  `offerdetail_ID` int(10) NOT NULL AUTO_INCREMENT,
  `offer_ID` int(10) NOT NULL,
  `hotel_ID` int(10) NOT NULL,
  `offerdetail_name` varchar(100) DEFAULT NULL,
  `offer_description` varchar(600) DEFAULT NULL,
  `selling_price` decimal(16,2) DEFAULT NULL,
  `original_price` decimal(16,2) DEFAULT NULL,
  `duration` int(10) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`offerdetail_ID`),
  KEY `offer_ID` (`offer_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  CONSTRAINT `offers_detail_ibfk_1` FOREIGN KEY (`offer_ID`) REFERENCES `offers` (`offer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `offers_detail_ibfk_2` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers_detail`
--

LOCK TABLES `offers_detail` WRITE;
/*!40000 ALTER TABLE `offers_detail` DISABLE KEYS */;
INSERT INTO `offers_detail` VALUES (80,31,1,'Yoga by the Garden','Complementary for in-house guest',500.00,1000.00,0,'YOGA-BY-THE-GARDEN-2018-1024x679.jpg','2018-04-30 15:03:28','2018-04-30 07:04:38'),(81,30,1,'Montebello Spanish Buffet','Experience spanish buffet',699.00,999.00,0,'MONTEBELLO-SPANISH-NIGHT-2018-1024x679.jpg','2018-04-30 15:07:16','0000-00-00 00:00:00'),(82,30,1,'Sugba Sugba Night','Friday night sugba-sugba',400.00,600.00,0,'SUGBA-SUGBA-NIGHT-2018-1024x679.jpg','2018-04-30 15:09:03','0000-00-00 00:00:00'),(83,30,1,'Buy 1 Take 1','Every day a happy hour',150.00,300.00,0,'EVERYDAY-HAPPY-HOUR-2018-1024x679.jpg','2018-04-30 15:11:34','0000-00-00 00:00:00'),(84,31,1,'Pool Use','A day in Paradise. Pool use + food and beverages',500.00,800.00,0,'DAY-USE-PACKAGE-1024x679.jpg','2018-04-30 15:13:35','0000-00-00 00:00:00'),(85,31,1,'Live Acoustic','Live acoustic entertainment',300.00,500.00,0,'LIVE-ACOUSTIC-2018-1024x679.jpg','2018-04-30 15:16:51','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `offers_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pins`
--

DROP TABLE IF EXISTS `pins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pins` (
  `pin_ID` int(10) NOT NULL AUTO_INCREMENT,
  `pin_status` varchar(50) NOT NULL,
  `pin_type` varchar(50) NOT NULL,
  `pin_code` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pin_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pins`
--

LOCK TABLES `pins` WRITE;
/*!40000 ALTER TABLE `pins` DISABLE KEYS */;
INSERT INTO `pins` VALUES (2,'off','superadmin','qwe123123rty','ranz@direct2guests.com','2017-09-21 10:05:00','2017-10-04 04:03:07'),(3,'on','admin','123456','jhona@direct2guests.com','2017-09-21 10:53:00','2017-12-04 05:45:47'),(4,'off','admin','ee11OiV','matt@direct2guests.com','2017-09-27 20:30:23','2017-11-27 04:57:10'),(6,'off','advertiser','uPJ2fE3','jhona@direct2guests.com','2017-10-04 16:00:10','2017-10-04 08:01:56'),(7,'on','advertiser','SyPvI0U','lloyd@direct2guests.com','2017-10-05 17:11:47','2017-10-05 09:11:47'),(22,'off','admin','XzJWIrF','aloha@direct2guests.com','2017-11-02 10:48:51','2017-11-20 09:52:56'),(24,'off','admin','HL6aH8n','umardoblas@gmail.com','2017-11-13 17:11:45','2017-11-13 09:29:48'),(25,'off','admin','9eQAfzO','joejohnferrolino@gmail.com','2017-11-30 12:57:42','2017-11-30 04:59:30'),(26,'on','advertiser','6DS4lnv','jhona@gmail.com','2017-11-30 15:30:06','2017-11-30 07:30:06'),(27,'off','admin','0LqCEy3','ranz@direct2guests.com','2018-01-29 16:06:08','2018-01-29 08:08:36'),(28,'off','admin','a2VHYfI','marife@direct2guests.com','2018-04-30 12:05:37','2018-04-30 08:04:41'),(40,'off','advertiser','ApKhHlZ','liefjillcolegado@gmail.com','2018-09-09 00:40:23','2018-09-08 16:45:45');
/*!40000 ALTER TABLE `pins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places` (
  `adtype_ID` int(10) NOT NULL AUTO_INCREMENT,
  `adtype_name` varchar(150) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`adtype_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES (1,'Activities','activities_small.jpg','2017-10-02 15:01:00','2017-10-02 07:01:58'),(2,'Nightlife','pubs_small.jpg','2017-10-02 15:02:00','2017-10-02 07:03:36'),(3,'Restaurants','restaurants_small.jpg','2017-10-02 15:04:00','2017-10-02 07:04:12');
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places_detail`
--

DROP TABLE IF EXISTS `places_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places_detail` (
  `ads_ID` int(10) NOT NULL AUTO_INCREMENT,
  `adtype_ID` int(10) NOT NULL,
  `hotel_ID` int(10) NOT NULL,
  `company_ID` int(10) NOT NULL,
  `ad_title` varchar(100) DEFAULT NULL,
  `ad_description` varchar(600) DEFAULT NULL,
  `ad_address` varchar(250) DEFAULT NULL,
  `ad_contact` int(20) DEFAULT NULL,
  `ad_time_start` date DEFAULT NULL,
  `ad_time_end` date DEFAULT NULL,
  `image_count` int(10) DEFAULT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `image3` varchar(100) DEFAULT NULL,
  `image4` varchar(100) DEFAULT NULL,
  `image5` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ads_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  KEY `adtype_ID` (`adtype_ID`),
  KEY `company_ID` (`company_ID`),
  CONSTRAINT `places_detail_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `places_detail_ibfk_2` FOREIGN KEY (`company_ID`) REFERENCES `places_nearby_companies` (`company_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `places_detail_ibfk_3` FOREIGN KEY (`adtype_ID`) REFERENCES `places` (`adtype_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places_detail`
--

LOCK TABLES `places_detail` WRITE;
/*!40000 ALTER TABLE `places_detail` DISABLE KEYS */;
INSERT INTO `places_detail` VALUES (25,1,1,6,'Sea to Sky','A two-lane scenic highway passes both the Pacific Ocean and rugged mountain peaks.','Highway 99, British Columbia, Canada',2147483647,'2017-11-30','2019-10-25',5,'ae-vancouver-private.jpg','sea-to-sky-gondola.jpg','Sea-to-Sky-Paul-Bride.jpg','squamish-sea-to-sky-summit.jpg','squamish-suspension-bridge-sea-to-sky.jpg','2017-11-30 15:30:06','2018-09-06 06:59:29'),(26,1,1,6,'Tofino','The stunning beauty and ecological diversity of Tofino.','Clayoquot Sound UNESCO Biosphere Reserve',2147483647,'2017-11-30','2019-10-25',5,'1-0761-Tofino-Middle-Beach.jpg','thingstodo3.jpg','Tofino-Accommodations-2.jpg','tofinomudflatstofinophotography.jpg','wick_banner.jpg','2017-11-30 15:37:22','2018-09-06 06:59:42'),(27,1,1,6,'Ivvavik National Park','Accessible only by charter plane, Ivvavik National Park is located in the extreme northwest corner of Yukon, above the Arctic Circle on the Beaufort Sea.','  Parks Canada National Office 30 Victoria Street Gatineau, Quebec Canada',2147483647,'2017-11-30','2018-03-01',5,'DSC02314 - Copy.JPG','IMG_4052.jpg','Imniarvik-1.jpg','INP_River3.jpg','Red-Hills-PADDLINGslide.jpg','2017-11-30 15:47:50','2017-11-30 07:47:50'),(28,3,1,6,'529 Wellington','The beautifully restored historic mansion offers intimate dining in 8 elegantly appointed rooms, as well as a beautiful 2-tiered riverside terrace for alfresco dining','529 Wellington Cres. Winnipeg, MB R3M 0A5',2044878325,'2017-11-30','2019-09-19',5,'25037303.jpg','25041506.jpg','25050096.jpg','25050099.jpg','25050108.jpg','2017-11-30 16:40:49','2018-09-06 06:59:53'),(29,3,1,6,'Aberfoyle Mill','Innovative continental cuisine in the rustic atmosphere of an old mill.','80 Brock Road S Guelph, ON N1H 6H9',2147483647,'2017-11-30','2018-01-05',5,'25038409.jpg','25038410.jpg','25142414.jpg','thumb_600 (1).jpg','thumb_600.jpg','2017-11-30 16:43:04','2017-11-30 08:43:04'),(30,3,1,6,'Blue Water Cafe','Committed to sourcing sustainable seafood â€” and crafting innovative and memorable West Coast dishes.','1095 Hamilton Street Vancouver, BC V6B 5T4',2147483647,'2017-11-30','2017-12-30',5,'105542.jpg','25120366.jpg','blue.jpg','blue-water-cafe.jpg','IMG_6070-800x600.jpg','2017-11-30 16:47:37','2017-11-30 08:47:37'),(31,3,1,6,'The Butchart Gardens - The Dining Room','Enjoy the stunning floral display gardens, plus the restaurant\'s historic surroundings and contemporary, fresh local foods.','800 Benvenuto Ave Brentwood Bay, BC V8M 1J8',2147483647,'2017-11-30','2018-01-05',5,'25006384.jpg','25034116.jpg','25101625.jpg','25129338.jpg','25149622.jpg','2017-11-30 16:50:03','2017-11-30 08:50:03'),(32,2,1,6,'Score On Davie','Just your friendly neighborhood Bar .','1262 Davie St, Vancouver, British Columbia V6E 1N3, Canada',2147483647,'2017-11-30','2019-09-26',5,'2Q3A0034.jpg','2Q3A0799.jpg','2Q3A0908.jpg','2Q3A0916.jpg','checkmate.jpg','2017-11-30 16:58:46','2018-09-06 07:00:03'),(33,2,1,6,'Storm Crow Tavern','Board and card games galore and sci-fi TV around the clock!','1305 Commercial Drive Vancouver, BC',2147483647,'2017-11-30','2018-02-02',5,'boardgame-1200x800.jpg','dice-shot-manifesto.jpg','StormCrowTavern-01-1-1200x1798.jpg','StormCrowTavern-15-1200x801.jpg','StormCrowTavern-16-1200x801.jpg','2017-11-30 17:03:17','2017-11-30 09:03:17'),(34,2,1,6,'Malone\'s Bar & Grill','Expect great food and the very best craft beer.','608 Pender St W, Vancouver, British Columbia V6B 1V8, Canada',2147483647,'2017-11-30','2018-01-06',5,'46b2eb4b79da3803cf04211a79ee8ab9.jpg','malone-s-bar-grill.jpg','malones-brunch_-77.jpg','Maple-Grove-Bar-and-Grill-54.jpg','restaurant_bar_malones_bar__grill_mal1_702342331.jpg','2017-11-30 17:11:09','2017-11-30 09:11:09'),(35,2,1,6,'The Comedy Mix','A great place to enjoy your night!','1015 Burrard St | Century Plaza Hotel, Vancouver',2147483647,'2017-11-30','2018-09-01',5,'3FB_bwood5.jpg','comedy_mix.jpg','maxresdefault.jpg','photo1jpg.jpg','theComedyMIX-sent-by-the-author.jpg','2017-11-30 17:16:05','2018-08-25 09:12:40'),(38,3,1,7,'7Chefs','Lepgel Cute walay nay lain.. Lepgel Cute walay nay lain.. Lepgel Cute walay nay lain.. Lepgel Cute walay nay lain.. Lepgel Cute walay nay lain.. Lepgel Cute walay nay lain.. Lepgel Cute walay nay lain.. ','Nasipit Talamban Cebu City',2147483647,'2018-09-09','2019-10-16',1,'SS5-Food-order.png','','','','','2018-09-09 00:09:29','2018-09-08 16:09:30'),(48,3,1,7,'AAA','qweqwe','1890 Redwood Drive',11,'2018-09-06','2018-09-29',4,'SS1.png','SS2.png','SS3-channel-list.png','SS5-Food-order.png','','2018-09-09 00:49:13','2018-09-13 03:45:46');
/*!40000 ALTER TABLE `places_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places_nearby_companies`
--

DROP TABLE IF EXISTS `places_nearby_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places_nearby_companies` (
  `company_ID` int(10) NOT NULL AUTO_INCREMENT,
  `company_email` varchar(200) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `company_contact` bigint(255) NOT NULL,
  `company_address` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`company_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places_nearby_companies`
--

LOCK TABLES `places_nearby_companies` WRITE;
/*!40000 ALTER TABLE `places_nearby_companies` DISABLE KEYS */;
INSERT INTO `places_nearby_companies` VALUES (1,'jhona@direct2guests.com','Laag-laag Corp.',925,'Cebu City, Philippines','2017-10-04 16:00:10','2017-12-04 05:48:22'),(2,'lloyd@direct2guests.com','Kaon-kaon Corp.',316,'asd','2017-10-05 17:11:47','2017-10-05 09:11:47'),(6,'jhona@gmail.com','D2G',0,'','2017-11-30 15:30:06','2017-11-30 07:30:06'),(7,'liefjill@direct2guests.com','7Chefs',9498842273,'1890 Redwood Drive','2018-09-09 00:09:09','2018-09-08 16:09:09');
/*!40000 ALTER TABLE `places_nearby_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ql_room_history`
--

DROP TABLE IF EXISTS `ql_room_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ql_room_history` (
  `rh_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) DEFAULT NULL,
  `rh_tprice` int(11) DEFAULT NULL,
  `rh_subtotal` int(11) DEFAULT '0',
  `rh_status` varchar(45) DEFAULT NULL,
  `rh_indate` datetime DEFAULT NULL,
  `rh_outdate` datetime DEFAULT NULL,
  PRIMARY KEY (`rh_id`),
  KEY `room_id` (`room_id`),
  CONSTRAINT `room_id` FOREIGN KEY (`room_id`) REFERENCES `ql_rooms` (`room_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ql_room_history`
--

LOCK TABLES `ql_room_history` WRITE;
/*!40000 ALTER TABLE `ql_room_history` DISABLE KEYS */;
INSERT INTO `ql_room_history` VALUES (24,13,100,400,'old','2018-09-03 22:11:38','2018-09-03 22:11:46'),(29,13,100,300,'old','2018-09-03 22:38:37','2018-09-03 22:38:39'),(39,13,100,300,'old','2018-09-04 01:34:57','2018-09-04 01:35:11'),(40,13,100,100,'old','2018-09-04 01:39:28','2018-09-04 01:39:38'),(41,13,100,100,'old','2018-09-04 01:40:25','2018-09-04 01:40:34'),(43,13,100,200,'old','2018-09-04 01:40:43','2018-09-04 01:40:49'),(44,13,100,100,'old','2018-09-04 01:53:46','2018-09-04 01:59:42'),(45,13,100,100,'old','2018-09-04 02:00:01','2018-09-04 02:00:26'),(46,13,100,100,'old','2018-09-04 02:17:41','2018-09-04 02:26:55'),(48,13,100,200,'old','2018-09-04 02:30:09','2018-09-04 02:30:16'),(49,13,100,100,'old','2018-09-04 02:33:50','2018-09-04 02:33:58'),(51,13,100,200,'old','2018-09-04 02:38:03','2018-09-04 02:38:11'),(52,13,100,100,'old','2018-09-04 02:38:16','2018-09-04 02:38:42'),(53,13,100,100,'old','2018-09-04 02:39:16','2018-09-04 02:39:52'),(54,13,100,100,'old','2018-09-04 02:43:06','2018-09-04 02:43:17'),(55,13,100,100,'old','2018-09-04 02:43:27','2018-09-04 02:43:51'),(56,13,100,100,'old','2018-09-04 02:58:10','2018-09-04 03:01:12'),(57,13,100,100,'old','2018-09-04 03:01:30','2018-09-04 03:11:18'),(58,13,100,100,'old','2018-09-04 03:11:22','2018-09-04 03:21:10'),(59,13,100,100,'old','2018-09-04 03:24:21','2018-09-04 03:24:29'),(60,13,100,100,'old','2018-09-04 03:28:18','2018-09-04 03:28:28'),(61,13,100,100,'old','2018-09-04 03:57:24','2018-09-04 03:57:59'),(63,13,100,200,'old','2018-09-04 04:01:34','2018-09-04 04:01:39'),(64,13,100,100,'old','2018-09-04 04:03:02','2018-09-04 04:03:21'),(65,13,100,100,'old','2018-09-04 04:46:26','2018-09-04 04:53:01'),(66,13,100,100,'old','2018-09-04 04:53:06','2018-09-04 04:58:50'),(67,13,100,100,'old','2018-09-04 04:59:45','2018-09-04 05:03:38'),(68,13,100,100,'old','2018-09-04 05:04:20','2018-09-04 05:07:00'),(69,13,100,100,'old','2018-09-04 05:07:04','2018-09-04 05:09:26'),(70,13,100,100,'old','2018-09-04 05:10:17','2018-09-04 05:17:47'),(71,13,100,100,'old','2018-09-04 05:18:19','2018-09-04 05:36:58'),(72,13,100,100,'old','2018-09-04 05:37:02','2018-09-04 05:38:37'),(74,13,100,200,'old','2018-09-04 05:41:31','2018-09-04 05:43:00'),(76,13,100,200,'old','2018-09-04 09:14:26','2018-09-04 11:08:29'),(77,13,100,100,'old','2018-09-04 11:57:59','2018-09-04 11:58:19'),(82,13,100,100,'old','2018-09-04 12:18:11','2018-09-04 12:18:17'),(83,13,100,100,'old','2018-09-04 12:19:15','2018-09-04 12:19:52'),(84,13,100,100,'old','2018-09-04 12:21:40','2018-09-04 14:54:25'),(85,13,100,100,'old','2018-09-04 14:54:57','2018-09-04 14:55:37'),(87,13,100,200,'old','2018-09-04 14:55:58','2018-09-04 14:56:02'),(91,13,100,200,'old','2018-09-04 17:26:01','2018-09-04 17:26:06'),(95,13,100,200,'old','2018-09-05 13:11:57','2018-09-05 13:13:09'),(111,16,400,400,'old','2018-09-06 17:02:52','2018-09-06 17:03:57'),(112,16,400,800,'old','2018-09-06 17:03:48','2018-09-06 17:03:57'),(113,16,400,1200,'old','2018-09-06 17:03:52','2018-09-06 17:03:57'),(114,16,400,400,'old','2018-09-06 17:15:23','2018-09-06 17:15:30'),(115,16,400,400,'old','2018-09-06 17:19:02','2018-09-06 17:19:07'),(116,16,400,400,'old','2018-09-06 17:19:30','2018-09-06 17:19:35'),(117,16,400,400,'old','2018-09-06 17:21:32','2018-09-06 17:21:38'),(118,16,400,400,'old','2018-09-06 17:24:00','2018-09-06 17:24:04'),(119,16,400,400,'old','2018-09-06 17:53:55','2018-09-06 17:54:00'),(120,13,100,100,'old','2018-09-06 18:03:04','2018-09-06 18:03:08'),(121,13,100,100,'old','2018-09-06 18:07:26','2018-09-06 18:08:00'),(122,16,400,400,'old','2018-09-06 18:18:09','2018-09-06 18:18:44'),(123,16,400,400,'old','2018-09-06 18:50:31','2018-09-06 18:50:36'),(124,13,100,100,'old','2018-09-06 18:53:29','2018-09-06 19:01:10'),(125,16,400,400,'old','2018-09-06 18:58:22','2018-09-06 18:58:27'),(126,16,400,400,'old','2018-09-06 19:00:42','2018-09-06 19:03:04'),(127,13,100,100,'old','2018-09-06 19:01:47','2018-09-06 19:02:47'),(128,13,100,100,'old','2018-09-06 19:11:28','2018-09-06 19:11:34'),(129,16,400,400,'old','2018-09-06 19:16:59','2018-09-06 19:17:50'),(130,16,400,400,'old','2018-09-06 19:24:22','2018-09-06 20:21:34'),(131,16,400,400,'old','2018-09-06 20:21:48','2018-09-06 20:27:20'),(132,16,400,400,'old','2018-09-06 20:28:01','2018-09-06 20:28:47'),(133,16,400,400,'old','2018-09-06 20:30:00','2018-09-06 20:59:13'),(134,13,100,100,'old','2018-09-06 20:38:14','2018-09-06 20:38:43'),(135,13,100,100,'old','2018-09-06 20:38:56','2018-09-06 22:09:03'),(136,16,400,400,'old','2018-09-06 20:59:19','2018-09-06 21:19:23'),(137,16,400,400,'old','2018-09-06 21:19:34','2018-09-06 21:26:05'),(138,16,400,400,'old','2018-09-06 21:27:52','2018-09-06 22:07:42'),(139,16,400,400,'old','2018-09-06 22:07:47','2018-09-06 22:07:55'),(140,13,100,100,'old','2018-09-06 22:09:08','2018-09-06 22:09:22'),(141,13,100,100,'old','2018-09-06 22:09:30','2018-09-06 23:00:55'),(142,16,400,400,'old','2018-09-06 22:14:09','2018-09-06 22:16:47'),(143,16,400,400,'old','2018-09-06 22:27:49','2018-09-07 01:29:27'),(144,13,100,100,'old','2018-09-06 23:32:19','2018-09-06 23:41:40'),(145,16,400,400,'old','2018-09-07 04:38:13','2018-09-07 04:38:22'),(146,13,100,100,'old','2018-09-07 09:39:51','2018-09-07 10:06:12'),(147,16,400,400,'old','2018-09-08 18:51:52','2018-09-09 00:56:20'),(148,16,400,800,'old','2018-09-09 00:53:03','2018-09-09 00:56:20'),(149,16,400,400,'old','2018-09-09 00:56:24','2018-09-09 00:57:04'),(150,13,100,100,'old','2018-09-10 10:58:23','2018-09-10 11:29:36'),(151,13,100,100,'old','2018-09-10 11:30:56','2018-09-24 14:10:42'),(152,13,100,200,'old','2018-09-10 11:32:30','2018-09-24 14:10:42'),(153,16,400,400,'old','2018-09-10 18:49:19','2018-09-11 04:02:06'),(154,16,400,400,'old','2018-09-11 04:33:46','2018-09-11 04:59:47'),(155,16,400,400,'old','2018-09-20 16:09:17','2018-09-20 16:12:17'),(156,16,400,400,'new','2018-09-20 16:21:21','0000-00-00 00:00:00'),(157,16,400,800,'new','2018-09-20 21:25:26','0000-00-00 00:00:00'),(158,16,400,1200,'new','2018-09-20 21:29:35','0000-00-00 00:00:00'),(159,13,100,300,'old','2018-09-24 13:31:18','2018-09-24 14:10:42'),(160,13,100,100,'old','2018-09-24 14:15:47','2018-09-24 14:15:56'),(161,13,100,100,'old','2018-09-24 14:16:09','2018-09-24 14:16:35'),(162,13,100,100,'old','2018-09-24 14:33:34','2018-09-24 14:34:14'),(163,13,100,100,'old','2018-09-24 14:35:01','2018-09-24 14:35:35'),(164,13,100,100,'old','2018-09-24 14:36:27','2018-09-24 14:36:40'),(165,13,100,100,'old','2018-09-24 14:39:27','2018-09-26 14:25:08'),(166,13,100,100,'old','2018-09-26 14:25:14','2018-09-26 15:37:42');
/*!40000 ALTER TABLE `ql_room_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ql_rooms`
--

DROP TABLE IF EXISTS `ql_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ql_rooms` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_no` int(11) DEFAULT NULL,
  `room_type` varchar(45) DEFAULT NULL,
  `room_status` varchar(45) DEFAULT NULL,
  `room_price` int(11) DEFAULT NULL,
  `hotel_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ql_rooms`
--

LOCK TABLES `ql_rooms` WRITE;
/*!40000 ALTER TABLE `ql_rooms` DISABLE KEYS */;
INSERT INTO `ql_rooms` VALUES (13,1,'Taxi Room','inactive',100,1),(14,2,'Regular Room','inactive',200,1),(15,3,'VIP Room','inactive',300,1),(16,4,'Zen Room','active',400,1);
/*!40000 ALTER TABLE `ql_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_cart`
--

DROP TABLE IF EXISTS `restaurant_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant_cart` (
  `restocart_ID` int(10) NOT NULL AUTO_INCREMENT,
  `restomenu_ID` int(10) NOT NULL,
  `restaurant_ID` int(10) DEFAULT NULL,
  `hotel_ID` int(10) NOT NULL,
  `guest_ID` int(10) NOT NULL,
  `menu_name` varchar(600) DEFAULT NULL,
  `menu_shortDesc` varchar(100) DEFAULT NULL,
  `menu_price` decimal(16,2) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `subtotal` decimal(16,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`restocart_ID`),
  KEY `restomenu_ID` (`restomenu_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  KEY `guest_ID` (`guest_ID`),
  KEY `restaurant_ID` (`restaurant_ID`),
  CONSTRAINT `restaurant_cart_ibfk_1` FOREIGN KEY (`restomenu_ID`) REFERENCES `restaurant_menus` (`restomenu_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `restaurant_cart_ibfk_2` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `restaurant_cart_ibfk_3` FOREIGN KEY (`guest_ID`) REFERENCES `guests` (`guest_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `restaurant_cart_ibfk_4` FOREIGN KEY (`restaurant_ID`) REFERENCES `restaurants` (`restaurant_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_cart`
--

LOCK TABLES `restaurant_cart` WRITE;
/*!40000 ALTER TABLE `restaurant_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `restaurant_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_cart_history`
--

DROP TABLE IF EXISTS `restaurant_cart_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant_cart_history` (
  `restocart_ID` int(10) NOT NULL AUTO_INCREMENT,
  `restomenu_ID` int(10) NOT NULL,
  `restaurant_ID` int(10) DEFAULT NULL,
  `hotel_ID` int(10) NOT NULL,
  `guest_ID` int(10) NOT NULL,
  `menu_name` varchar(600) DEFAULT NULL,
  `menu_shortDesc` varchar(100) DEFAULT NULL,
  `menu_price` decimal(16,2) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `subtotal` decimal(16,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`restocart_ID`),
  KEY `restomenu_ID` (`restomenu_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  KEY `guest_ID` (`guest_ID`),
  KEY `restaurant_ID` (`restaurant_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_cart_history`
--

LOCK TABLES `restaurant_cart_history` WRITE;
/*!40000 ALTER TABLE `restaurant_cart_history` DISABLE KEYS */;
INSERT INTO `restaurant_cart_history` VALUES (20,8,17,1,2,'asdasd','asd a',450.00,1,450.00,'2017-11-09 15:52:36','2017-11-08 23:52:36');
/*!40000 ALTER TABLE `restaurant_cart_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_menus`
--

DROP TABLE IF EXISTS `restaurant_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant_menus` (
  `restomenu_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) DEFAULT NULL,
  `dishstyle_ID` int(10) NOT NULL,
  `category_ID` int(10) NOT NULL,
  `restaurant_ID` int(10) NOT NULL,
  `menu_image` varchar(150) DEFAULT NULL,
  `menu_name` varchar(600) DEFAULT NULL,
  `menu_price` decimal(16,2) DEFAULT NULL,
  `menu_basicPrice` decimal(16,2) DEFAULT NULL,
  `menu_desc` varchar(600) DEFAULT NULL,
  `menu_shortDesc` varchar(100) DEFAULT NULL,
  `pos_ref_ID` int(10) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`restomenu_ID`),
  KEY `dishstyle_ID` (`dishstyle_ID`),
  KEY `category_ID` (`category_ID`),
  KEY `restaurant_ID` (`restaurant_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  CONSTRAINT `restaurant_menus_ibfk_1` FOREIGN KEY (`dishstyle_ID`) REFERENCES `dishstyles` (`dishstyle_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `restaurant_menus_ibfk_2` FOREIGN KEY (`category_ID`) REFERENCES `categories` (`category_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `restaurant_menus_ibfk_3` FOREIGN KEY (`restaurant_ID`) REFERENCES `restaurants` (`restaurant_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `restaurant_menus_ibfk_4` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_menus`
--

LOCK TABLES `restaurant_menus` WRITE;
/*!40000 ALTER TABLE `restaurant_menus` DISABLE KEYS */;
INSERT INTO `restaurant_menus` VALUES (34,1,18,26,44,'buttermillk.jpg','Buttermilk Pancakes',300.00,300.00,'You just can\'t beat a basic buttermilk pancake recipe for a down-home hearty breakfast. ','Pair it with sausage and fresh fruit for a mouthwatering morning meal. ',0,'2017-11-30 15:12:15','2017-11-30 07:12:15'),(35,1,18,26,44,'raisin.jpg','Raisin Nut Oatmeal Recipe',350.00,350.00,'Thereâ€™s no better feeling than waking up to a hot ready-to-eat breakfast. ','The oats, fruit and spices in this homey meal cook together while you sleep! ',0,'2017-11-30 15:13:55','2017-11-30 07:13:55'),(36,1,18,26,44,'blueberry.jpg','Blueberry French Toast',380.00,380.00,'Arrange half the bread cubes in the dish, and top with cream cheese cubes. Sprinkle 1 cup blueberries over the cream cheese, and top with remaining bread cubes. In a large bowl, mix the eggs, milk, vanilla extract, and syrup. Pour over the bread cubes.','With the cream cheese and berry combination, this blueberry french toast casserole reminds me of des',0,'2017-11-30 15:16:51','2017-11-30 07:16:51'),(37,1,18,26,44,'waffles.jpg','True Belgian Waffles',300.00,300.00,'These are sweeter than traditional Brussels Belgian waffles - a sweeter waffle that can be served for breakfast or dessert.','Try True Belgian Waffles! ',0,'2017-11-30 15:19:28','2017-11-30 07:19:28'),(38,1,18,26,44,'sausage.jpg','Biscuits and Sausage Gravy ',370.00,370.00,'It\'s a classic, hearty breakfast that takes you on a trip to the South every time it\'s served.','This is an old Southern recipe that I\'ve adapted. ',0,'2017-11-30 15:22:42','2017-11-30 07:22:42'),(39,1,18,26,44,'french.jpg','Angel Food Cake French Toast',400.00,400.00,'Angel food cake is made into light and sweet French toast in this breakfast recipe.','I think Iâ€™ve finally figured out why I love breakfast so much. ',0,'2017-11-30 15:29:33','2017-11-30 07:29:33'),(40,1,19,27,46,'sugarpi.jpg','Sugar Pie',400.00,400.00,'This sweet maple treat comes from QuÃ©bec but is enjoyed by Canadians from coast to coast.','Enjoy sugar pie in your lunch.',0,'2017-11-30 15:36:16','2017-11-30 07:36:16'),(41,1,19,27,46,'beef.jpg','Beef Wellington',700.00,700.00,'Beef Wellington is a preparation of filet steak coated with pÃ¢tÃ© and duxelles, which is then wrapped in puff pastry and baked.','Beef Wellington is always a good idea for lunch.',0,'2017-11-30 15:40:32','2017-11-30 07:40:32'),(42,1,19,27,46,'lasagna.jpg','Vegetarian Harvest Lasagna',500.00,500.00,'This lasagna is piled high with sweet potatoes and slow-roasted tomatoes, and layered with creamy bÃ©chamel sauceâ€”but the secret\'s in the fried sage leaves.','This vegetable lasagna showcases a plethora of fresh veggies from zucchini, to mushrooms and to red.',0,'2017-11-30 15:43:34','2017-11-30 07:43:34'),(43,1,19,27,46,'salmon.jpg','Salmon with Winter Slaw',550.00,550.00,'Remember that the fish will keep cooking after you take it out of the oven, so donâ€™t be afraid to remove it just before it\'s cooked through.','Have salmon grilled, smoked or baked any time.',0,'2017-11-30 15:48:58','2017-11-30 07:48:58'),(44,1,19,27,46,'bolognese.jpg','Skinny Turkey Bolognese',520.00,520.00,'Bolognese sauce is a ground beef ragÃº made with pancetta, onions, carrots, celery, tomatoes, wine, and cream. ','My easy version has been lightened up.',0,'2017-11-30 15:52:58','2017-11-30 07:52:58'),(45,1,19,27,46,'pizza.jpg','Pizza',800.00,800.00,'Family, friends and good times have always gone together, and nothing brings people together quite the same way as sharing a great tasting pizza.','Offers pizza at affordable prices.',0,'2017-11-30 16:03:34','2017-11-30 08:03:34'),(46,1,20,28,47,'ca.jpg','Canadian Pizza',890.00,890.00,'Canadian Pizza a thin-crust pizza with an array of creative pizzas toppings. Flavours include Cronenberg Crash (cilantro pesto, tandoori tofu, mango, peanuts and red pepper) and the Wayne Gretzky (feta, mozzarella and cheddar cheeses, Italian salami, speck and chorizo, hot peppers, chili flakes and caramelized onions). ','Maple syrup is proudly displayed as one of the additional, complimentary toppings.',0,'2017-11-30 16:11:48','2017-11-30 08:11:48'),(47,1,20,28,47,'burger.jpg','Burger',700.00,700.00,'Canada is teeming with tasty burger joints from coast-to-coast, and it\'s next to impossible to choose just one. ','A Classic Canadian Burger, with a slight twist. Serve with your favourite accompaniments, on grilled',0,'2017-11-30 16:15:34','2017-11-30 08:15:34'),(48,1,20,28,47,'grilledporksteak.jpg','Grilled Pork Steak with Jacket Potato',900.00,900.00,'Succulent pork steak, grilled and serves with jacket potato, two steamed vegetables and gravy. ','No bones and no fuss - just tasty and beautiful.',0,'2017-11-30 16:18:55','2017-11-30 08:18:55'),(49,1,20,28,47,'lamb.jpg','Balsamic Lamb Chops',950.00,950.00,'This gorgeous presentation of lamb makes for the perfect centrepiece at your next dinner party, making your guests feel like royalty.\r\n','From slow-cooked, fall-off-the-bone leg of lamb to a rich and decadent lamb ragu, these impressive m',0,'2017-11-30 16:24:40','2017-11-30 08:24:40'),(50,1,20,28,47,'poutine.jpg','Poutine',450.00,450.00,'Here, the traditional Canadian poutine gets a spicy twist â€” and itâ€™s totally addictive! ','Fries, cheese curds and gravy are the hallmark ingredients of this Quebec classic.',0,'2017-11-30 16:29:53','2017-11-30 08:29:53'),(51,1,20,28,47,'frachos.jpg','Skillet Frachos',580.00,580.00,'These fun Skillet Frachos are Nacho Fries aka â€œFrachosâ€ which are crispy French Fries topped with all your Nacho favorites.','French fries and tons of cheese are requirements for skillet frachos.',0,'2017-11-30 16:32:38','2017-11-30 08:32:38'),(52,1,21,29,48,'poutinebacon.png','Fries Poutine Bacon',450.00,450.00,'A melty medley of poutine sauce and cheese curds sit atop fries with sea salt with a generous helping of Applewood-Smoked bacon.','Topped with an easy bacon gravy and cheese curds.',0,'2017-11-30 16:40:52','2017-11-30 08:40:52'),(53,1,21,29,48,'smokemeat.jpg','Smoked Meat',650.00,650.00,'The best late night foods in Montreal are unsurprisingly some of the best dishes the city has to offer in general. ','Hot foodie spots are out there.',0,'2017-11-30 16:43:05','2017-11-30 08:43:05'),(54,1,21,29,48,'hotchicken.jpg','Hot Chicken',620.00,620.00,'Hot chicken is indisputably Nashville\'s iconic food: simple in concept, its aggressive flavor isn\'t one you\'ll soon forget. ','Try it now.',0,'2017-11-30 16:47:06','2017-11-30 08:47:06'),(55,1,21,29,48,'sashimi.jpeg','Sashimi',420.00,420.00,'A New Yearâ€™s resolution to eat more healthfully doesnâ€™t mean you have to become a hermit â€” here are the best bets for a good meal thatâ€™s also good for you.','From the crisp, lemony fattoush.',0,'2017-11-30 16:52:18','2017-11-30 08:52:18'),(56,1,21,29,48,'pasta.jpg','Pasta Primavera',530.00,530.00,'Enjoy the broccoli and carrots in this mouthwatering Pasta Primavera Alfredo.','Make a creamy Pasta Primavera with cream cheese for savory flavor. ',0,'2017-11-30 17:00:17','2017-11-30 09:00:17'),(57,1,21,29,48,'bowties.jpg','Pasta',630.00,630.00,'Pasta is a staple food of traditional Italian cuisine.','Pasta doesn\'t get much quicker or easier than this.',0,'2017-11-30 17:04:49','2017-11-30 09:04:49'),(58,1,22,30,49,'wine.jpg','Canada Wine',3500.00,3500.00,'Getting started drinking wine has never been easier or more fun.','Enjoy drinking wine.',0,'2017-11-30 17:18:36','2017-11-30 09:18:36'),(59,1,22,30,49,'beer.jpg','Beer',960.00,960.00,'Canadian beer brands will contain both the favorites of the Canuck masses and the smaller labels most appreciated. In most of Canada the most popular types are macro pale lagers like Molson Canadian and Labatt Blue. ','In Quebec and the Maritimes, lager-like ales such as Molson Export and Alexander Keith\'s are also po',0,'2017-11-30 17:23:01','2017-11-30 09:23:01'),(60,1,22,30,49,'cocktails.jpg','Cocktails',1000.00,1000.00,'Canned cocktails are as easy to chill as a forty of rosÃ©, and can be shaken without any bar tools, and offer the complexity of a mixed drink.','The product is designed to appeal to the consumer that likes sweeter drinks.',0,'2017-11-30 17:26:11','2017-11-30 09:26:11'),(61,1,22,30,49,'mocktail.jpg','Orange Mocktail',1000.00,1000.00,'Orange Mocktail is a refreshing mocktail made with the combination of fresh orange juice and mint. Beverages quench your thirst in colourful spring or in hot summer or warm you up in cold winter.',' Right from classic mocktails to fresh juices to hot brews, there is a drink for every mood and seas',0,'2017-11-30 17:28:03','2017-11-30 09:28:03'),(62,1,22,30,49,'soda.jpg','Soda',600.00,600.00,'Soda is a drink that typically contains carbonated water a sweetener, and a natural or artificial flavoring. ','Some people even admit to drinking more soda than water each day.',0,'2017-11-30 17:34:22','2017-11-30 09:34:22'),(63,1,22,30,49,'fruitjuice.jpg','Fruit Juices',700.00,700.00,'One-hundred per cent fruit juice is a great source of essential nutrients and phytonutrients.','A Health Canada review will determine whether juice should be considered a fruit serving in the Cana',0,'2017-11-30 17:37:03','2017-11-30 09:37:03');
/*!40000 ALTER TABLE `restaurant_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_order`
--

DROP TABLE IF EXISTS `restaurant_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant_order` (
  `restoorder_ID` int(10) NOT NULL AUTO_INCREMENT,
  `notif_seen` varchar(50) NOT NULL DEFAULT 'false',
  `hotel_ID` int(10) NOT NULL,
  `guest_ID` int(10) NOT NULL,
  `grand_total` decimal(16,2) DEFAULT NULL,
  `confirm_status` varchar(10) NOT NULL,
  `service_status` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`restoorder_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  KEY `guest_ID` (`guest_ID`),
  CONSTRAINT `restaurant_order_ibfk_2` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `restaurant_order_ibfk_3` FOREIGN KEY (`guest_ID`) REFERENCES `guests` (`guest_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_order`
--

LOCK TABLES `restaurant_order` WRITE;
/*!40000 ALTER TABLE `restaurant_order` DISABLE KEYS */;
INSERT INTO `restaurant_order` VALUES (1,'true',1,122,300.00,'active','done','2018-09-04 12:21:58','2018-09-04 04:22:25');
/*!40000 ALTER TABLE `restaurant_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_order_detail`
--

DROP TABLE IF EXISTS `restaurant_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant_order_detail` (
  `order_detail_ID` int(10) NOT NULL AUTO_INCREMENT,
  `restoorder_ID` int(10) DEFAULT NULL,
  `restomenu_ID` int(10) DEFAULT NULL,
  `menu_name` varchar(150) DEFAULT NULL,
  `menu_shortDesc` varchar(200) DEFAULT NULL,
  `menu_price` decimal(16,2) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `subtotal` decimal(16,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_detail_ID`),
  KEY `restoorder_ID` (`restoorder_ID`),
  KEY `restomenu_ID` (`restomenu_ID`),
  KEY `restoorder_ID_2` (`restoorder_ID`),
  KEY `restomenu_ID_2` (`restomenu_ID`),
  CONSTRAINT `restaurant_order_detail_ibfk_1` FOREIGN KEY (`restoorder_ID`) REFERENCES `restaurant_order` (`restoorder_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `restaurant_order_detail_ibfk_2` FOREIGN KEY (`restomenu_ID`) REFERENCES `restaurant_menus` (`restomenu_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_order_detail`
--

LOCK TABLES `restaurant_order_detail` WRITE;
/*!40000 ALTER TABLE `restaurant_order_detail` DISABLE KEYS */;
INSERT INTO `restaurant_order_detail` VALUES (1,1,34,'Buttermilk Pancakes','Pair it with sausage and fresh fruit for a mouthwatering morning meal. ',300.00,1,300.00,'2018-09-04 12:21:58','2018-09-04 04:21:58');
/*!40000 ALTER TABLE `restaurant_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_order_history`
--

DROP TABLE IF EXISTS `restaurant_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant_order_history` (
  `restoorder_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `guest_ID` int(10) NOT NULL,
  `grand_total` decimal(16,2) DEFAULT NULL,
  `confirm_status` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`restoorder_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  KEY `guest_ID` (`guest_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_order_history`
--

LOCK TABLES `restaurant_order_history` WRITE;
/*!40000 ALTER TABLE `restaurant_order_history` DISABLE KEYS */;
INSERT INTO `restaurant_order_history` VALUES (19,1,2,720.00,'active','2017-10-24 14:50:38','2017-10-26 10:38:34'),(20,1,2,830.00,'inactive','2017-10-24 14:55:45','2017-11-13 05:13:47'),(21,1,2,420.00,'inactive','2017-10-24 16:02:06','2017-11-13 05:13:48'),(22,1,2,510.00,'inactive','2017-11-13 13:41:36','2017-11-13 05:41:36');
/*!40000 ALTER TABLE `restaurant_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurants` (
  `restaurant_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `restaurant_name` varchar(100) DEFAULT NULL,
  `time_open` time DEFAULT NULL,
  `time_close` time DEFAULT NULL,
  `description` varchar(600) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`restaurant_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES (44,1,'La Terraza','00:01:00','23:59:00','lorem ipsum','la_terraza.jpg','2017-11-30 14:32:30','2018-04-30 06:51:30'),(46,1,'Cafe Bougainvillea','00:01:00','23:59:00','lorem ipsum','Cafe-Bouganvilla-5-380x300.jpg','2017-11-30 14:41:10','2018-04-30 06:53:34'),(47,1,'The Pool Bar','00:01:00','23:59:00','lorem ipsum','PoolSide-380x300.jpg','2017-11-30 14:47:26','2018-04-30 06:55:45'),(48,1,'Late Night','00:01:00','23:59:00','lorem ipsum','latenight.jpg','2017-11-30 14:51:17','2018-01-23 05:02:22'),(49,1,'Beverages','00:01:00','23:59:00','lorem ipsum','beverage.jpg','2017-11-30 14:55:45','2018-01-23 05:02:30');
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_questions`
--

DROP TABLE IF EXISTS `security_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_questions` (
  `qID` int(10) NOT NULL AUTO_INCREMENT,
  `questions` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`qID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_questions`
--

LOCK TABLES `security_questions` WRITE;
/*!40000 ALTER TABLE `security_questions` DISABLE KEYS */;
INSERT INTO `security_questions` VALUES (1,'What was your childhood nickname?','2017-09-22 15:33:00','2017-09-22 07:33:29'),(2,'What was your favorite food as a child?','2017-09-22 15:34:00','2017-09-22 08:02:51'),(3,'What was the make and model of your first car?','2017-09-22 15:35:00','2017-09-22 08:03:23'),(4,'What is your favorite team?','2017-09-22 15:35:00','2017-09-22 07:35:39'),(5,'What was the make and model of your first car?','2017-09-22 15:36:00','2017-09-22 07:36:12'),(6,'What was the name of the hospital where you were born?','2017-09-22 15:36:00','2017-09-22 07:36:32'),(7,'Who is your childhood sports hero?','2017-09-22 15:36:00','2017-09-22 07:36:49'),(8,'What was the name of the company where you had your first job?','2017-09-22 15:37:00','2017-09-22 07:37:14');
/*!40000 ALTER TABLE `security_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `service_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `serviceName` varchar(100) DEFAULT NULL,
  `description` varchar(1000) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`service_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  CONSTRAINT `services_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (28,1,'SPA','is a location where mineral-rich spring water (and sometimes seawater) is used to give medicinal baths','spa.jpg','2017-11-30 16:00:41','0000-00-00 00:00:00'),(29,1,'CAR RENTALS','Car Rental is committed to delivering unparalleled safety and world-class quality of wide range of service at affordable rates.','l-exterior-1.jpg','2017-11-30 16:04:07','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_cart`
--

DROP TABLE IF EXISTS `services_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services_cart` (
  `serviceOrderDetail_ID` int(10) NOT NULL AUTO_INCREMENT,
  `serviceProd_ID` int(10) NOT NULL,
  `service_ID` int(10) NOT NULL,
  `hotel_ID` int(10) NOT NULL,
  `guest_ID` int(10) NOT NULL,
  `serviceProdName` varchar(100) DEFAULT NULL,
  `serviceProdDesc` varchar(600) DEFAULT NULL,
  `serviceProdPrice` decimal(16,2) DEFAULT NULL,
  `serviceProdDuration` varchar(150) DEFAULT NULL,
  `quantity` int(50) NOT NULL,
  `subtotal` decimal(16,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`serviceOrderDetail_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  KEY `serviceProd_ID` (`serviceProd_ID`),
  KEY `guest_ID` (`guest_ID`),
  KEY `service_ID` (`service_ID`),
  CONSTRAINT `services_cart_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `services_cart_ibfk_2` FOREIGN KEY (`serviceProd_ID`) REFERENCES `services_product` (`serviceProd_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `services_cart_ibfk_3` FOREIGN KEY (`guest_ID`) REFERENCES `guests` (`guest_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `services_cart_ibfk_4` FOREIGN KEY (`service_ID`) REFERENCES `services` (`service_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_cart`
--

LOCK TABLES `services_cart` WRITE;
/*!40000 ALTER TABLE `services_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `services_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_cart_history`
--

DROP TABLE IF EXISTS `services_cart_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services_cart_history` (
  `serviceOrderDetail_ID` int(10) NOT NULL AUTO_INCREMENT,
  `serviceProd_ID` int(10) NOT NULL,
  `service_ID` int(10) NOT NULL,
  `hotel_ID` int(10) NOT NULL,
  `guest_ID` int(10) NOT NULL,
  `serviceProdName` varchar(100) DEFAULT NULL,
  `serviceProdDesc` varchar(600) DEFAULT NULL,
  `serviceProdPrice` decimal(16,2) DEFAULT NULL,
  `serviceProdDuration` varchar(150) DEFAULT NULL,
  `quantity` int(50) NOT NULL,
  `subtotal` decimal(16,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`serviceOrderDetail_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  KEY `serviceProd_ID` (`serviceProd_ID`),
  KEY `guest_ID` (`guest_ID`),
  KEY `service_ID` (`service_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_cart_history`
--

LOCK TABLES `services_cart_history` WRITE;
/*!40000 ALTER TABLE `services_cart_history` DISABLE KEYS */;
INSERT INTO `services_cart_history` VALUES (14,22,20,1,2,'Sea Salt Body Scrub','Removes dead skin cells to bring out younger looking skin for the natural glow',120.00,'1 hour',1,120.00,'2017-11-13 13:49:47','2017-11-13 05:49:47');
/*!40000 ALTER TABLE `services_cart_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_order`
--

DROP TABLE IF EXISTS `services_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services_order` (
  `serviceOrder_ID` int(10) NOT NULL AUTO_INCREMENT,
  `notif_seen` varchar(50) NOT NULL DEFAULT 'false',
  `hotel_ID` int(10) NOT NULL,
  `guest_ID` int(10) NOT NULL,
  `grand_total` decimal(16,2) DEFAULT NULL,
  `confirm_status` varchar(10) NOT NULL,
  `service_status` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`serviceOrder_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  KEY `guest_ID` (`guest_ID`),
  CONSTRAINT `services_order_ibfk_2` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `services_order_ibfk_3` FOREIGN KEY (`guest_ID`) REFERENCES `guests` (`guest_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_order`
--

LOCK TABLES `services_order` WRITE;
/*!40000 ALTER TABLE `services_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `services_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_order_detail`
--

DROP TABLE IF EXISTS `services_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services_order_detail` (
  `service_detail_ID` int(10) NOT NULL AUTO_INCREMENT,
  `serviceOrder_ID` int(10) NOT NULL,
  `serviceProd_ID` int(10) NOT NULL,
  `service_name` varchar(60) DEFAULT NULL,
  `serviceProdDesc` varchar(600) DEFAULT NULL,
  `serviceProdPrice` decimal(16,2) DEFAULT NULL,
  `serviceProdDuration` varchar(150) DEFAULT NULL,
  `quantity` int(25) NOT NULL,
  `subtotal` decimal(16,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`service_detail_ID`),
  KEY `serviceProd_ID` (`serviceProd_ID`),
  KEY `serviceOrder_ID` (`serviceOrder_ID`),
  CONSTRAINT `services_order_detail_ibfk_1` FOREIGN KEY (`serviceProd_ID`) REFERENCES `services_product` (`serviceProd_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `services_order_detail_ibfk_2` FOREIGN KEY (`serviceOrder_ID`) REFERENCES `services_order` (`serviceOrder_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_order_detail`
--

LOCK TABLES `services_order_detail` WRITE;
/*!40000 ALTER TABLE `services_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `services_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_order_history`
--

DROP TABLE IF EXISTS `services_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services_order_history` (
  `serviceOrder_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `guest_ID` int(10) NOT NULL,
  `grand_total` decimal(16,2) DEFAULT NULL,
  `confirm_status` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`serviceOrder_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  KEY `guest_ID` (`guest_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_order_history`
--

LOCK TABLES `services_order_history` WRITE;
/*!40000 ALTER TABLE `services_order_history` DISABLE KEYS */;
INSERT INTO `services_order_history` VALUES (8,1,2,180.00,'active','2017-10-25 05:18:08','2017-11-22 10:24:19'),(9,1,2,420.00,'active','2017-10-25 02:25:06','2017-11-22 10:24:38'),(10,1,2,240.00,'inactive','2017-11-22 03:15:14','2017-11-22 10:24:53');
/*!40000 ALTER TABLE `services_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_product`
--

DROP TABLE IF EXISTS `services_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services_product` (
  `serviceProd_ID` int(10) NOT NULL AUTO_INCREMENT,
  `service_ID` int(10) NOT NULL,
  `hotel_ID` int(10) NOT NULL,
  `serviceProdName` varchar(100) DEFAULT NULL,
  `serviceProdDesc` varchar(600) DEFAULT NULL,
  `serviceProdPrice` decimal(16,2) DEFAULT NULL,
  `duration` varchar(60) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`serviceProd_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  KEY `service_ID` (`service_ID`),
  CONSTRAINT `services_product_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `services_product_ibfk_2` FOREIGN KEY (`service_ID`) REFERENCES `services` (`service_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_product`
--

LOCK TABLES `services_product` WRITE;
/*!40000 ALTER TABLE `services_product` DISABLE KEYS */;
INSERT INTO `services_product` VALUES (42,28,1,'Relax and Rejuvinate','Hot stone massage therapy melts away tension, eases muscle stiffness and increases circulation and metabolism. ',4500.00,'90mins','stone.jpg','2017-11-30 17:46:38','2017-11-30 09:46:38'),(43,28,1,'Detoxify','This is a white clay body mask being applied to soften, tone and detoxify the skin.',2300.00,'30mins','detoxify.jpg','2017-11-30 17:48:53','2017-11-30 09:48:53'),(44,28,1,'Anti-Aging','Those who are looking to age gracefully.',6000.00,'90mins','antiaging.jpg','2017-11-30 17:50:36','2017-11-30 09:50:36'),(45,29,1,'Toyota Land Cruiser','Drive confidently and securely with Toyota Land Cruiser. Land Cruiser is magnificent, luxurious & powerful. ',8000.00,'1','land.jpg','2017-11-30 17:53:19','2017-11-30 09:53:19'),(46,29,1,'Nissan Altima','The Nissan Altima. Ride Less, Drive more. ',2000.00,'1','altima.jpg','2017-11-30 17:56:58','2017-11-30 09:56:58'),(47,29,1,'Honda Civic','The Honda Civic is a line of small cars manufactured by Honda. Originally a subcompact, the Civic has gone through several generational changes.',3000.00,'1','honda.jpg','2017-11-30 17:58:52','2017-11-30 09:58:52');
/*!40000 ALTER TABLE `services_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `staff_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) DEFAULT NULL,
  `title` varchar(10) DEFAULT NULL,
  `firstname` varchar(60) DEFAULT NULL,
  `middlename` varchar(60) DEFAULT NULL,
  `lastname` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `phone` int(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(150) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`staff_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (19,1,'Mrs','Lief Jill','asdf','asdf','1890 Redwood Drive',2147483647,'lj@a.com','hey','$2y$10$8y6KhGVX512ytIMuC.v0TOHmwPGIJruBgPvjPGchfph2yNv2Ua.Eu','active','2018-08-29 07:12:32','2018-08-29 07:51:56');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticker`
--

DROP TABLE IF EXISTS `ticker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticker` (
  `ticker_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `ticker_description` varchar(1000) NOT NULL,
  `ticker_start` time NOT NULL,
  `duration` varchar(150) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ticker_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  CONSTRAINT `ticker_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticker`
--

LOCK TABLES `ticker` WRITE;
/*!40000 ALTER TABLE `ticker` DISABLE KEYS */;
INSERT INTO `ticker` VALUES (17,1,'Sale! Sale! Sale! Up to 50% off when you eat at our restaurant every 7pm! What are you waiting for.','16:59:00','20000','active','2017-12-06 16:47:40','2017-12-07 08:58:03'),(18,1,'Free Spa when you transfer to our VIP room now... For more info call the frontdesk.','16:59:00','8000','active','2017-12-06 16:47:40','2017-12-07 08:58:07');
/*!40000 ALTER TABLE `ticker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `undevice`
--

DROP TABLE IF EXISTS `undevice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `undevice` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `device_ID` varchar(255) NOT NULL,
  `model_name` varchar(255) NOT NULL,
  `room_number` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `hotel_ID` (`hotel_ID`),
  CONSTRAINT `undevice_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `undevice`
--

LOCK TABLES `undevice` WRITE;
/*!40000 ALTER TABLE `undevice` DISABLE KEYS */;
INSERT INTO `undevice` VALUES (39,1,'b6585953700f15b5','Amlogic MBOX','111','2017-11-30 11:28:19','2017-11-30 03:28:19'),(41,1,'b6585953700f15b5','Amlogic MBOX','123','2017-11-30 11:30:24','2017-11-30 03:30:24'),(42,1,'b6585953700f15b5','Amlogic MBOX','212','2017-11-30 11:38:32','2017-11-30 03:38:32'),(50,1,'f93e6acee8f28b8','Amlogic MBOX','1','2017-11-30 13:42:29','2017-11-30 05:42:29'),(82,1,'1234567890','newbox','8','2017-12-21 13:59:08','2017-12-21 05:59:08'),(83,1,'8e47fb8ec71a7e8d','Amlogic MBOX','10','2017-12-21 14:08:41','2017-12-21 06:08:41'),(84,1,'528cab7121fef2c6','AZW MINI M8S PRO','777','2017-12-29 12:54:00','2017-12-29 04:54:00'),(85,1,'704b179fed2a1108','Amlogic MBOX','778','2017-12-29 13:45:26','2017-12-29 05:45:26'),(86,1,'65c9c8f5c03835cf','AZW W95','779','2017-12-29 14:31:21','2017-12-29 06:31:21'),(89,13,'2b05077d01edec66','Unknown sdk_google_atv_x86','15','2018-02-08 14:54:47','2018-02-08 06:54:47'),(90,13,'39eea28a34e2127d','Amlogic MBOX','1','2018-02-08 15:21:01','2018-02-08 07:21:01'),(91,1,'94b2af6db3512ae1','Amlogic MBOX','8','2018-03-09 11:33:20','2018-03-09 03:33:20'),(92,1,'8060ddceda1a8496','Amlogic MBOX','10','2018-04-30 11:41:26','2018-04-30 03:41:26'),(93,14,'8060ddceda1a8496','Amlogic MBOX','1','2018-04-30 12:11:57','2018-04-30 04:11:57'),(94,1,'8060ddceda1a8496','Amlogic MBOX','9','2018-04-30 12:45:16','2018-04-30 04:45:16'),(95,1,'e6d8c38fd127ee35','Amlogic MBOX','10','2018-04-30 14:21:57','2018-04-30 06:21:57'),(96,1,'d5aca0024dcbfc41','Amlogic MBOX','11','2018-04-30 14:37:41','2018-04-30 06:37:41'),(97,1,'4a70f06e613f45a','Amlogic MBOX','12','2018-04-30 14:44:48','2018-04-30 06:44:48'),(98,14,'4a70f06e613f45a','Amlogic MBOX','1','2018-04-30 16:18:56','2018-04-30 08:18:56'),(99,1,'39eea28a34e2127d','Amlogic MBOX','12','2018-05-04 16:08:29','2018-05-04 08:08:29'),(100,14,'2f986423535e672c','Unknown Android SDK built for x86','1','2018-05-07 14:39:47','2018-05-07 06:39:47'),(101,14,'5d13b269f2de34dd','Samsung SM-J710F','1','2018-05-07 15:01:12','2018-05-07 07:01:12'),(102,1,'5d13b269f2de34dd','Samsung SM-J710F','13','2018-05-07 17:40:22','2018-05-07 09:40:22'),(103,1,'5d13b269f2de34dd','Samsung SM-J710F','13','2018-05-07 17:47:56','2018-05-07 09:47:56'),(104,1,'32f59ee2e57bbac6','Google Android SDK built for x86','13','2018-05-07 17:57:17','2018-05-07 09:57:17'),(105,1,'5d13b269f2de34dd','Samsung SM-J710F','13','2018-05-07 18:33:13','2018-05-07 10:33:13'),(106,14,'5d13b269f2de34dd','Samsung SM-J710F','1','2018-05-07 19:32:01','2018-05-07 11:32:01'),(107,14,'1fd54482780cefed','Amlogic MBOX','13','2018-05-07 22:31:18','2018-05-07 14:31:18'),(108,14,'1fd54482780cefed','Amlogic MBOX','1','2018-05-07 22:52:10','2018-05-07 14:52:10'),(109,1,'2f18700993f8f58c','Unknown sdk_google_atv_x86','3','2018-07-17 05:45:08','2018-07-17 05:45:08'),(110,1,'6088e935b6bcb71a','Unknown sdk_google_atv_x86','1','2018-07-26 10:58:11','2018-07-26 10:58:11'),(111,1,'4eecdc7de455e9b8','Unknown sdk_google_atv_x86','1','2018-08-24 12:31:23','2018-08-24 12:31:23'),(112,1,'4417a63a290a5eff','VS M8S PRO L','1','2018-08-24 16:17:47','2018-08-24 16:17:47'),(113,1,'9f4c12c774c27677','Unknown sdk_google_atv_x86','1','2018-08-24 21:31:16','2018-08-24 21:31:16'),(114,1,'916493c871cb83c0','Unknown sdk_google_atv_x86','1','2018-08-24 22:24:43','2018-08-24 22:24:43'),(115,1,'b574a19f41d2052b','Unknown sdk_google_atv_x86','1','2018-08-25 04:30:44','2018-08-25 04:30:44'),(116,1,'302b4b974ed6858a','Unknown sdk_google_atv_x86','1','2018-08-26 10:27:33','2018-08-26 10:27:33'),(117,1,'b5f68b34f90537db','Unknown sdk_google_atv_x86','1','2018-08-26 15:24:39','2018-08-26 15:24:39'),(118,1,'ccd5dad0258e9978','Unknown sdk_google_atv_x86','1','2018-08-28 17:21:47','2018-08-28 17:21:47'),(119,1,'ccd5dad0258e9978','Unknown sdk_google_atv_x86','1','2018-08-31 05:10:03','2018-08-30 21:10:03'),(120,1,'ccd5dad0258e9978','Unknown sdk_google_atv_x86','2','2018-08-31 05:14:59','2018-08-30 21:14:59'),(121,1,'ccd5dad0258e9978','Unknown sdk_google_atv_x86','1','2018-08-31 05:20:40','2018-08-30 21:20:40'),(122,1,'ccd5dad0258e9978','Unknown sdk_google_atv_x86','1','2018-08-31 05:22:59','2018-08-30 21:23:00'),(123,1,'ccd5dad0258e9978','Unknown sdk_google_atv_x86','1','2018-08-31 05:25:03','2018-08-30 21:25:03'),(124,1,'7bc2e93e5140b48','Unknown sdk_google_atv_x86','1','2018-08-31 05:37:16','2018-08-30 21:37:16'),(125,1,'7bc2e93e5140b48','Unknown sdk_google_atv_x86','1','2018-09-03 17:49:56','2018-09-03 09:49:56'),(126,1,'3c0d0facfd581350','Unknown sdk_google_atv_x86','1','2018-09-03 17:52:02','2018-09-03 09:52:02'),(127,1,'8700d0789bca8b0d','Unknown sdk_google_atv_x86','1','2018-09-04 05:35:53','2018-09-03 21:35:53'),(128,1,'aca04b50dfa2ec40','Unknown sdk_google_atv_x86','1','2018-09-04 12:16:24','2018-09-04 04:16:24'),(129,1,'a2e9502da1f0024d','Unknown sdk_google_atv_x86','1','2018-09-06 14:09:14','2018-09-06 06:09:14'),(130,1,'4417a63a290a5eff','VS M8S PRO L','1','2018-09-06 14:49:01','2018-09-06 06:49:01'),(131,1,'4faef6500f9bcf09','Unknown sdk_google_atv_x86','4','2018-09-06 17:01:35','2018-09-06 09:01:35'),(132,1,'124accec2805428d','Unknown sdk_google_atv_x86','4','2018-09-08 18:51:26','2018-09-08 10:51:26'),(133,1,'eb30a3da8f213037','Unknown sdk_google_atv_x86','4','2018-09-09 00:52:13','2018-09-08 16:52:13'),(134,1,'ae119fb4d8a40ea5','Unknown sdk_google_atv_x86','4','2018-09-11 05:15:47','2018-09-10 21:15:47'),(135,1,'f694e69a906565e1','Unknown sdk_google_atv_x86','4','2018-09-11 08:08:44','2018-09-11 00:08:44'),(136,1,'712390bad3364867','Amlogic MBOX','4','2018-09-11 17:19:43','2018-09-11 09:19:43'),(137,1,'535da22c0fddd3bb','Unknown sdk_google_atv_x86','4','2018-09-13 11:31:24','2018-09-13 03:31:24'),(138,1,'2606b19f8dfeb12c','Unknown sdk_google_atv_x86','4','2018-09-20 16:08:55','2018-09-20 08:08:55'),(139,1,'7737bdcb4d0ddb34','Unknown sdk_google_atv_x86','4','2018-09-20 21:29:13','2018-09-20 13:29:13'),(140,1,'2a03776ff8d50ed1','Unknown sdk_google_atv_x86','1','2018-09-24 13:30:32','2018-09-24 05:30:32'),(141,1,'f9c722ff2b201cdb','Amlogic MBOX','4','2018-09-26 15:29:08','2018-09-26 07:29:08');
/*!40000 ALTER TABLE `undevice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) DEFAULT NULL,
  `advertiser_company_ID` int(10) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `firstname` varchar(60) DEFAULT NULL,
  `middlename` varchar(60) DEFAULT NULL,
  `lastname` varchar(60) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` bigint(255) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(150) DEFAULT NULL,
  `Secret_Question` varchar(100) NOT NULL,
  `Secret_Answer` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  KEY `advertiser_company_ID` (`advertiser_company_ID`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`advertiser_company_ID`) REFERENCES `places_nearby_companies` (`company_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,NULL,'superadmin','Sean','','Lazenby','sean@direct2guests.com',936677273,'Vancouver Canada','$2y$10$AngxPrmzSVNtE/K0bJ/1VeDnJ94wnoYOgC8Ioqle2lPzPz30p2IQy','d2gsean','','','2017-09-19 15:40:59','2017-12-15 06:54:26'),(3,1,NULL,'admin','Matt ','','Sullivan','matt@direct2guests.com',936,'Balamban, Cebu','$2y$10$AngxPrmzSVNtE/K0bJ/1VeDnJ94wnoYOgC8Ioqle2lPzPz30p2IQy','d2gmatt','1','matt','2017-09-27 20:31:54','2017-12-29 05:07:13'),(6,NULL,1,'advertiser','Lorem','Lorem','Ipsum','jhona@direct2guests.com',9229789845,'Korea','$2y$10$AngxPrmzSVNtE/K0bJ/1VeDnJ94wnoYOgC8Ioqle2lPzPz30p2IQy','d2gKorea','1','cool','2017-10-04 16:01:56','2017-12-04 03:27:16'),(10,12,NULL,'admin','Matt','','Sullivan','joejohnferrolino@gmail.com',8700,'Canada','$2y$10$KQWuqNU4CSVvO/AvYHe4dOnFkmy/Wp/G0jQrZNDYP1XKE/bMFRVSm','matt','4','boston','2017-11-30 12:59:30','2017-11-30 04:59:30'),(11,13,NULL,'admin','Mount','','Bagarabon','bagarabon@direct2guests.com',9178510978,'Mabua, Surigao City, Philippines','$2y$10$5pPfG5pgQTUC2VH.1ARh4eKqcF1AJ2bdPKEcAF2kzdxPB6naPlGfa','d2gBagarabon','8','d2g','2018-01-29 16:08:36','2018-01-29 08:11:40'),(12,14,NULL,'admin','Marife','','O','marife@direct2guests.com',0,'','$2y$10$vHJgDxZ5XB2TaIbwcm3nMeVpaAJzmbSvHl6OW7R7nAYhOVe.XgP06','d2gmarife','','','2018-04-30 16:04:41','2018-04-30 08:04:41'),(13,NULL,NULL,'advertiser','Lief Jill','','Lazenby','liefjillcolegado@gmail.com',9498842273,'1890 Redwood Drive','$2y$10$1D7aprTu6OlBzLUK0ej6seVuQxRcKFpTyLodwP0t9Wv4DnJUniBzy','liefjill','1','jill','2018-09-09 00:45:45','2018-09-08 16:45:45');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vodMovies`
--

DROP TABLE IF EXISTS `vodMovies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vodMovies` (
  `vod_id` int(11) NOT NULL AUTO_INCREMENT,
  `groups` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `sources` varchar(200) DEFAULT NULL,
  `card` varchar(200) DEFAULT NULL,
  `background` varchar(200) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `studio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`vod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vodMovies`
--

LOCK TABLES `vodMovies` WRITE;
/*!40000 ALTER TABLE `vodMovies` DISABLE KEYS */;
INSERT INTO `vodMovies` VALUES (1,'googlevideos','Teen','movies','','http://192.168.1.8/vodfiles/atk/atk.mp4','http://192.168.1.8/vodfiles/atk/icon.jpg','http://192.168.1.8/vodfiles/atk/bg.jpg','ATK Teen',''),(2,'googlevideos','Mature','movies','','http://192.168.1.8/vodfiles/bigtits/bigtits.mp4','http://192.168.1.8/vodfiles/bigtits/icon.jpg','http://192.168.1.8/vodfiles/bigtits/bg.jpg','Bigtits','D2G Studio'),(3,'googlevideos','Black','movies','','http://192.168.1.8/vodfiles/blacked/Blacked.mp4','http://192.168.1.8/vodfiles/blacked/icon.jpg','http://192.168.1.8/vodfiles/blacked/bg.jpg','Black Panther','D2G Studio'),(4,'googlevideos','Black','movies','','http://192.168.1.8/vodfiles/blackedraw/blackedraw.mp4','http://192.168.1.8/vodfiles/blackedraw/icon.jpg','http://192.168.1.8/vodfiles/blackedraw/bg.jpg','Black Draw','D2G Studio'),(5,'googlevideos','Teen','movies','','http://192.168.1.8/vodfiles/club/clubseventeen.mp4','http://192.168.1.8/vodfiles/club/icon.jpg','http://192.168.1.8/vodfiles/club/bg.jpg','Club Teen','D2G Studio'),(7,'googlevideos','Black','movies','','http://192.168.1.8/vodfiles/danejones/danejones.mp4','http://192.168.1.8/vodfiles/danejones/icon.jpg','http://192.168.1.8/vodfiles/danejones/bg.jpg','Dane Jones','D2G Studio'),(8,'googlevideos','College','movies','','http://192.168.1.8/vodfiles/daniel1/danielle1.mp4','http://192.168.1.8/vodfiles/daniel1/icon.jpg','http://192.168.1.8/vodfiles/daniel1/bg.jpg','Daniel 1','D2G Studio'),(9,'googlevideos','College','movies','','http://192.168.1.8/vodfiles/daniel2/danielle2.mp4','http://192.168.1.8/vodfiles/daniel2/icon.jpg','http://192.168.1.8/vodfiles/daniel2/bg.jpg','Daniel 2','D2G Studio'),(10,'googlevideos','Asian','movies','','http://192.168.1.8/vodfiles/daniel3/danielle3.mp4','http://192.168.1.8/vodfiles/daniel3/icon.jpg','http://192.168.1.8/vodfiles/daniel3/bg.jpg','Daniel 3','D2G Studio'),(11,'googlevideos','Asian','movies','','http://192.168.1.8/vodfiles/daniel4/danielle4.mp4','http://192.168.1.8/vodfiles/daniel4/icon.jpg','http://192.168.1.8/vodfiles/daniel4/bg.jpg','Daniel 4','D2G Studio'),(12,'googlevideos','Masturbation','movies','','http://192.168.1.8/vodfiles/daniel5/danielle5.mp4','http://192.168.1.8/vodfiles/daniel5/icon.jpg','http://192.168.1.8/vodfiles/daniel5/bg.jpg','Daniel 5','D2G Studio'),(13,'googlevideos','Scandal','movies','','http://192.168.1.8/vodfiles/daniel6/danielle6.mp4','http://192.168.1.8/vodfiles/daniel6/icon.jpg','http://192.168.1.8/vodfiles/daniel6/bg.jpg','Daniel 6','D2G Studio'),(14,'googlevideos','Scandal','movies','','http://192.168.1.8/vodfiles/daniel7/danielle7.mp4','http://192.168.1.8/vodfiles/daniel7/icon.jpg','http://192.168.1.8/vodfiles/daniel7/bg.jpg','Daniel 7','D2G Studio'),(15,'googlevideos','Anal','movies','','http://192.168.1.8/vodfiles/daniel8/danielle8.mp4','http://192.168.1.8/vodfiles/daniel8/icon.jpg','http://192.168.1.8/vodfiles/daniel8/bg.jpg','Daniel 8','D2G Studio'),(16,'googlevideos','Anal','movies','','http://192.168.1.8/vodfiles/daniel9/danielle9.mp4','http://192.168.1.8/vodfiles/daniel9/icon.jpg','http://192.168.1.8/vodfiles/daniel9/bg.jpg','Daniel 9','D2G Studio'),(17,'googlevideos','Masturbation','movies','','http://192.168.1.8/vodfiles/daniel10/danielle10.mp4','http://192.168.1.8/vodfiles/daniel10/icon.jpg','http://192.168.1.8/vodfiles/daniel10/bg.jpg','Daniel 10','D2G Studio'),(18,'googlevideos','Masturbation','movies','','http://192.168.1.8/vodfiles/daniel11/danielle11.mp4','http://192.168.1.8/vodfiles/daniel11/icon.jpg','http://192.168.1.8/vodfiles/daniel11/icon.jpg','Daniel 11','D2G Studio'),(19,'googlevideos','Masturbation','movies','','http://192.168.1.8/vodfiles/daniel12/danielle12.mp4','http://192.168.1.8/vodfiles/daniel12/icon.jpg','http://192.168.1.8/vodfiles/daniel12/icon.jpg','Daniel 12','D2G Studio'),(20,'googlevideos','Masturbation','movies','','http://192.168.1.8/vodfiles/daniel13/danielle13.mp4','http://192.168.1.8/vodfiles/daniel13/icon.jpg','http://192.168.1.8/vodfiles/daniel13/icon.jpg','Daniel 13','D2G Studio'),(21,'googlevideos','Masturbation','movies','','http://192.168.1.8/vodfiles/daniel14/danielle14.mp4','http://192.168.1.8/vodfiles/daniel14/icon.jpg','http://192.168.1.8/vodfiles/daniel14/icon.jpg','Daniel 14','D2G Studio'),(22,'googlevideos','Masturbation','movies','','http://192.168.1.8/vodfiles/daniel15/danielle15.mp4','http://192.168.1.8/vodfiles/daniel15/icon.jpg','http://192.168.1.8/vodfiles/daniel15/icon.jpg','Daniel 15','D2G Studio'),(23,'googlevideos','Masturbation','movies','','http://192.168.1.8/vodfiles/daniel16/danielle16.mp4','http://192.168.1.8/vodfiles/daniel16/icon.jpg','http://192.168.1.8/vodfiles/daniel16/icon.jpg','Daniel 16','D2G Studio'),(24,'googlevideos','Masturbation','movies','','http://192.168.1.8/vodfiles/daniel17/danielle17.mp4','http://192.168.1.8/vodfiles/daniel17/icon.jpg','http://192.168.1.8/vodfiles/daniel17/icon.jpg','Daniel 17','D2G Studio'),(25,'googlevideos','Masturbation','movies','','http://192.168.1.8/vodfiles/daniel18/danielle18.mp4','http://192.168.1.8/vodfiles/daniel18/icon.jpg','http://192.168.1.8/vodfiles/daniel18/icon.jpg','Daniel 18','D2G Studio'),(26,'googlevideos','Mature','movies','','http://192.168.1.8/vodfiles/digital/digital.mp4','http://192.168.1.8/vodfiles/digital/icon.jpg','http://192.168.1.8/vodfiles/digital/bg.jpg','Digital Mature','D2G Studio'),(27,'googlevideos','Mature','movies','','http://192.168.1.8/vodfiles/girlsout/girlsout.mp4','http://192.168.1.8/vodfiles/girlsout/icon.jpg','http://192.168.1.8/vodfiles/girlsout/bg.jpg','Girls Out','D2G Studio'),(28,'googlevideos','Big Ass','movies','','http://192.168.1.8/vodfiles/infernal/infernal.mp4','http://192.168.1.8/vodfiles/infernal/icon.jpg','http://192.168.1.8/vodfiles/infernal/infernalBG.jpg','Infernal','D2G Studio'),(29,'googlevideos','Big Ass','movies','','http://192.168.1.8/vodfiles/moms/moms.mp4','http://192.168.1.8/vodfiles/moms/icon.jpg','http://192.168.1.8/vodfiles/moms/bg.jpg','Moms','D2G Studio'),(30,'googlevideos','Amateur','movies','','http://192.168.1.8/vodfiles/nigres/nigres.mp4','http://192.168.1.8/vodfiles/nigres/icon.jpg','http://192.168.1.8/vodfiles/nigres/bg.jpg','Nigres','D2G Studio'),(31,'googlevideos','Teen','movies','','http://192.168.1.8/vodfiles/nigres/nigres.mp4','http://192.168.1.8/vodfiles/nubiles1/icon.jpg','http://192.168.1.8/vodfiles/nubiles1/bg.jpg','nubiles 1','D2G Studio'),(32,'googlevideos','Teen','movies','','http://192.168.1.8/vodfiles/nubiles2/nubiles2.mp4','http://192.168.1.8/vodfiles/nubiles2/icon.jpg','http://192.168.1.8/vodfiles/nubiles2/bg.jpg','Nubiles 2','D2G Studio'),(33,'googlevideos','Teen','movies','','http://192.168.1.8/vodfiles/nubiles3/nubiles3.mp4','http://192.168.1.8/vodfiles/nubiles3/icon.jpg','http://192.168.1.8/vodfiles/nubiles3/bg.jpg','Nubiles 3','D2G Studio'),(34,'googlevideos','Amateur','movies','','http://192.168.1.8/vodfiles/public/public.mp4','http://192.168.1.8/vodfiles/public/icon.jpg','http://192.168.1.8/vodfiles/public/bg.jpg','Public','D2G Studio'),(35,'googlevideos','Teen','movies','','http://192.168.1.8/vodfiles/pure18/pure18.mp4','http://192.168.1.8/vodfiles/pure18/icon.jpg','http://192.168.1.8/vodfiles/pure18/bg.jpg','Pure 18','D2G Studio'),(36,'googlevideos','Big Ass','movies','','http://192.168.1.8/vodfiles/sis/sisloveme.mp4','http://192.168.1.8/vodfiles/sis/icon.jpg','http://192.168.1.8/vodfiles/sis/bg.jpg','Sis Love Me','D2G Studio'),(37,'googlevideos','Black','movies','','http://192.168.1.8/vodfiles/wankit/wankit.mp4','http://192.168.1.8/vodfiles/wankit/wankiticon.jpg','http://192.168.1.8/vodfiles/wankit/WankItBG.jpg','Wankit','D2G Studio'),(38,'googlevideos','Mature','movies','','http://192.168.1.8/vodfiles/xangels/xangels.mp4','http://192.168.1.8/vodfiles/xangels/icon.jpg','http://192.168.1.8/vodfiles/xangels/bg.jpg','Xangels','D2G Studio'),(39,'googlevideos','Teen','movies','','http://192.168.1.8/vodfiles/young/young.mp4','http://192.168.1.8/vodfiles/young/icon.jpg','http://192.168.1.8/vodfiles/young/bg.jpg','Young','D2G Studio'),(40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `vodMovies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weather`
--

DROP TABLE IF EXISTS `weather`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weather` (
  `weather_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `temp` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`weather_ID`),
  KEY `hotel_ID` (`hotel_ID`),
  CONSTRAINT `weather_ibfk_1` FOREIGN KEY (`hotel_ID`) REFERENCES `hotels` (`hotel_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather`
--

LOCK TABLES `weather` WRITE;
/*!40000 ALTER TABLE `weather` DISABLE KEYS */;
/*!40000 ALTER TABLE `weather` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `write_up`
--

DROP TABLE IF EXISTS `write_up`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `write_up` (
  `writeUp_ID` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_ID` int(10) NOT NULL,
  `hotel_name` varchar(60) DEFAULT NULL,
  `hotel_description` varchar(1000) DEFAULT NULL,
  `area_description` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`writeUp_ID`),
  UNIQUE KEY `hotel_ID` (`hotel_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `write_up`
--

LOCK TABLES `write_up` WRITE;
/*!40000 ALTER TABLE `write_up` DISABLE KEYS */;
INSERT INTO `write_up` VALUES (1,1,'Matt\'s Hotel','erqere3qeee','everything is worth it.','2017-10-09 10:57:32','2017-11-27 05:31:48'),(2,6,'Aloha Boracay Hotel','please update your hotel description.','please update your area description.','2017-10-09 11:23:14','2017-11-27 05:56:13'),(3,9,'Aloha Boracay Hotel','please update your hotel description.','please update your area description.','2017-10-09 11:26:48','2017-11-27 05:56:36');
/*!40000 ALTER TABLE `write_up` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-26 23:24:58
