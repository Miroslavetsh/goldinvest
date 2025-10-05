-- MariaDB dump 10.19  Distrib 10.6.16-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: gold_obigrivachi
-- ------------------------------------------------------
-- Server version	10.6.16-MariaDB

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

--
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_address`
--

LOCK TABLES `oc_address` WRITE;
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api`
--

DROP TABLE IF EXISTS `oc_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api`
--

LOCK TABLES `oc_api` WRITE;
/*!40000 ALTER TABLE `oc_api` DISABLE KEYS */;
INSERT INTO `oc_api` VALUES (1,'Default','sfD7FYC6YTjvvK2RnnEMmcflUVbDJWUPP7FCjANFaaQYJEhkpiusLLPx80yhsgdfLigrvI2cbVIS2OYcEfHagULur9SKiyOdVMRcpcC3CgDvgoJwcztYg9FBfJP6UWlctdXPY68U6CwajbArEB9b4uPBis8zLL0RueDh5uv6DRsQ9xDtSYDNBhJ8VMUCC1559XJFG9ImgfYJROzamMAkGOppqXOLKgxqPBo55X5HWIhYpiHa5wUuHNNOof0rfvNW',1,'2023-10-26 18:16:17','2023-10-26 18:16:17');
/*!40000 ALTER TABLE `oc_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api_ip`
--

DROP TABLE IF EXISTS `oc_api_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api_ip`
--

LOCK TABLES `oc_api_ip` WRITE;
/*!40000 ALTER TABLE `oc_api_ip` DISABLE KEYS */;
INSERT INTO `oc_api_ip` VALUES (1,1,'46.211.231.248'),(2,1,'46.211.26.210'),(3,1,'46.211.236.51'),(4,1,'46.211.233.78'),(5,1,'194.104.22.136'),(6,1,'46.200.75.51'),(7,1,'195.234.77.29'),(8,1,'194.183.174.132'),(9,1,'46.211.166.104'),(10,1,'46.211.242.74'),(11,1,'46.211.249.21'),(12,1,'46.211.174.156');
/*!40000 ALTER TABLE `oc_api_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api_session`
--

DROP TABLE IF EXISTS `oc_api_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api_session`
--

LOCK TABLES `oc_api_session` WRITE;
/*!40000 ALTER TABLE `oc_api_session` DISABLE KEYS */;
INSERT INTO `oc_api_session` VALUES (60,1,'a3d115ce52cc93e11c1fa926cb','194.104.22.136','2023-11-09 22:10:49','2023-11-09 20:10:56'),(61,1,'0ad48eca3842a875eb76df5f1f','194.104.22.136','2023-11-09 22:10:56','2023-11-09 22:10:56'),(62,1,'dddf43d6f22bd0a1a987d8a14c','194.104.22.136','2023-11-09 22:11:03','2023-11-09 22:11:03'),(64,1,'65e252346f738394c7aa8eb8d1','194.104.22.136','2023-11-11 07:17:59','2023-11-11 07:17:59'),(63,1,'eaeed1fffc2cf48ca96873fc16','194.104.22.136','2023-11-10 09:37:46','2023-11-10 09:37:46'),(59,1,'94471b13077958d2fbb8005abb','194.104.22.136','2023-11-09 22:10:31','2023-11-09 20:10:49');
/*!40000 ALTER TABLE `oc_api_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_article`
--

DROP TABLE IF EXISTS `oc_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `date_available` date NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `article_review` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `noindex` tinyint(1) NOT NULL DEFAULT 1,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT 0,
  `gstatus` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_article`
--

LOCK TABLES `oc_article` WRITE;
/*!40000 ALTER TABLE `oc_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_article_description`
--

DROP TABLE IF EXISTS `oc_article_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_description` (
  `article_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL,
  `tag` text NOT NULL,
  PRIMARY KEY (`article_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_article_description`
--

LOCK TABLES `oc_article_description` WRITE;
/*!40000 ALTER TABLE `oc_article_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_article_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_article_image`
--

DROP TABLE IF EXISTS `oc_article_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_image` (
  `article_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`article_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3981 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_article_image`
--

LOCK TABLES `oc_article_image` WRITE;
/*!40000 ALTER TABLE `oc_article_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_article_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_article_related`
--

DROP TABLE IF EXISTS `oc_article_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_related` (
  `article_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_article_related`
--

LOCK TABLES `oc_article_related` WRITE;
/*!40000 ALTER TABLE `oc_article_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_article_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_article_related_mn`
--

DROP TABLE IF EXISTS `oc_article_related_mn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_related_mn` (
  `article_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_article_related_mn`
--

LOCK TABLES `oc_article_related_mn` WRITE;
/*!40000 ALTER TABLE `oc_article_related_mn` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_article_related_mn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_article_related_product`
--

DROP TABLE IF EXISTS `oc_article_related_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_related_product` (
  `article_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_article_related_product`
--

LOCK TABLES `oc_article_related_product` WRITE;
/*!40000 ALTER TABLE `oc_article_related_product` DISABLE KEYS */;
INSERT INTO `oc_article_related_product` VALUES (30,123),(31,123),(43,123),(45,123);
/*!40000 ALTER TABLE `oc_article_related_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_article_related_wb`
--

DROP TABLE IF EXISTS `oc_article_related_wb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_related_wb` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_article_related_wb`
--

LOCK TABLES `oc_article_related_wb` WRITE;
/*!40000 ALTER TABLE `oc_article_related_wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_article_related_wb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_article_to_blog_category`
--

DROP TABLE IF EXISTS `oc_article_to_blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_to_blog_category` (
  `article_id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `main_blog_category` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`article_id`,`blog_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_article_to_blog_category`
--

LOCK TABLES `oc_article_to_blog_category` WRITE;
/*!40000 ALTER TABLE `oc_article_to_blog_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_article_to_blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_article_to_download`
--

DROP TABLE IF EXISTS `oc_article_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_to_download` (
  `article_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_article_to_download`
--

LOCK TABLES `oc_article_to_download` WRITE;
/*!40000 ALTER TABLE `oc_article_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_article_to_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_article_to_layout`
--

DROP TABLE IF EXISTS `oc_article_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_to_layout` (
  `article_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_article_to_layout`
--

LOCK TABLES `oc_article_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_article_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_article_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_article_to_store`
--

DROP TABLE IF EXISTS `oc_article_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_to_store` (
  `article_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`article_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_article_to_store`
--

LOCK TABLES `oc_article_to_store` WRITE;
/*!40000 ALTER TABLE `oc_article_to_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_article_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute`
--

LOCK TABLES `oc_attribute` WRITE;
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
INSERT INTO `oc_attribute` VALUES (1,6,7),(2,6,8),(4,7,1),(5,7,2),(6,7,3),(7,7,4),(8,7,5),(11,3,6);
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_description`
--

LOCK TABLES `oc_attribute_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_description` VALUES (1,1,'Description'),(2,1,'No. of Cores'),(4,1,'Потужність'),(6,1,'Розмір'),(7,1,'Вага'),(8,1,'Потужність'),(11,1,'test 8'),(5,1,'Площа обігріву');
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group`
--

LOCK TABLES `oc_attribute_group` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
INSERT INTO `oc_attribute_group` VALUES (3,2),(4,1),(5,3),(6,4),(7,1);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group_description`
--

LOCK TABLES `oc_attribute_group_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_group_description` VALUES (3,1,'Memory'),(4,1,'Technical'),(5,1,'Motherboard'),(6,1,'Processor'),(7,1,'Основні параметри обігрівача');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner`
--

LOCK TABLES `oc_banner` WRITE;
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` VALUES (6,'HP Products',1),(7,'Home Page Slideshow',1),(8,'Manufacturers',1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image`
--

LOCK TABLES `oc_banner_image` WRITE;
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` VALUES (145,7,1,'karusel6','','catalog/demo/banners/karusel6.jpg',5),(103,6,1,'HP Banner','index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0),(113,8,1,'Disney','','catalog/demo/manufacturer/disney.png',0),(112,8,1,'Dell','','catalog/demo/manufacturer/dell.png',0),(111,8,1,'Harley Davidson','','catalog/demo/manufacturer/harley.png',0),(110,8,1,'Canon','','catalog/demo/manufacturer/canon.png',0),(109,8,1,'Burger King','','catalog/demo/manufacturer/burgerking.png',0),(108,8,1,'Coca Cola','','catalog/demo/manufacturer/cocacola.png',0),(107,8,1,'Sony','','catalog/demo/manufacturer/sony.png',0),(106,8,1,'RedBull','','catalog/demo/manufacturer/redbull.png',0),(105,8,1,'NFL','','catalog/demo/manufacturer/nfl.png',0),(114,8,1,'Starbucks','','catalog/demo/manufacturer/starbucks.png',0),(115,8,1,'Nintendo','','catalog/demo/manufacturer/nintendo.png',0),(142,7,1,'karusel1','','catalog/demo/banners/karusel1.jpg',1),(143,7,1,'karusel2','','catalog/demo/banners/karusel2.jpg',2),(144,7,1,'karusel3','','catalog/demo/banners/karusel3.jpg',3);
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_blog_category`
--

DROP TABLE IF EXISTS `oc_blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_blog_category` (
  `blog_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `noindex` tinyint(1) NOT NULL DEFAULT 1,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`blog_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_blog_category`
--

LOCK TABLES `oc_blog_category` WRITE;
/*!40000 ALTER TABLE `oc_blog_category` DISABLE KEYS */;
INSERT INTO `oc_blog_category` VALUES (69,'',0,1,0,0,0,1,'2014-04-08 03:56:26','2023-10-30 15:45:22'),(70,'',0,1,0,0,0,1,'2014-04-08 03:58:55','2023-10-30 15:44:13'),(71,'',69,1,1,0,0,1,'2015-06-18 09:13:57','2023-10-30 15:45:07');
/*!40000 ALTER TABLE `oc_blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_blog_category_description`
--

DROP TABLE IF EXISTS `oc_blog_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_blog_category_description` (
  `blog_category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL,
  PRIMARY KEY (`blog_category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_blog_category_description`
--

LOCK TABLES `oc_blog_category_description` WRITE;
/*!40000 ALTER TABLE `oc_blog_category_description` DISABLE KEYS */;
INSERT INTO `oc_blog_category_description` VALUES (70,1,'Огляди','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','',''),(69,1,'Новини','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','',''),(71,1,'Анонси','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','','');
/*!40000 ALTER TABLE `oc_blog_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_blog_category_path`
--

DROP TABLE IF EXISTS `oc_blog_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_blog_category_path` (
  `blog_category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`blog_category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_blog_category_path`
--

LOCK TABLES `oc_blog_category_path` WRITE;
/*!40000 ALTER TABLE `oc_blog_category_path` DISABLE KEYS */;
INSERT INTO `oc_blog_category_path` VALUES (69,69,0),(71,71,1),(71,69,0),(70,70,0);
/*!40000 ALTER TABLE `oc_blog_category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_blog_category_to_layout`
--

DROP TABLE IF EXISTS `oc_blog_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_blog_category_to_layout` (
  `blog_category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_blog_category_to_layout`
--

LOCK TABLES `oc_blog_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_blog_category_to_layout` DISABLE KEYS */;
INSERT INTO `oc_blog_category_to_layout` VALUES (69,0,0),(71,0,0),(70,0,0);
/*!40000 ALTER TABLE `oc_blog_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_blog_category_to_store`
--

DROP TABLE IF EXISTS `oc_blog_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_blog_category_to_store` (
  `blog_category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_blog_category_to_store`
--

LOCK TABLES `oc_blog_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_blog_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_blog_category_to_store` VALUES (69,0),(70,0),(71,0);
/*!40000 ALTER TABLE `oc_blog_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cart`
--

DROP TABLE IF EXISTS `oc_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cart`
--

LOCK TABLES `oc_cart` WRITE;
/*!40000 ALTER TABLE `oc_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `noindex` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category`
--

LOCK TABLES `oc_category` WRITE;
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` VALUES (78,'',75,0,1,3,1,'2023-11-02 15:07:51','2023-11-02 15:08:23',1),(77,'',75,0,1,2,1,'2023-11-02 15:06:35','2023-11-02 15:06:35',1),(74,'',63,0,1,1,1,'2023-11-01 12:41:37','2023-11-01 12:58:42',1),(24,'',0,1,1,3,0,'2009-01-20 02:36:26','2023-11-02 15:29:14',1),(17,'',0,1,1,4,0,'2009-01-03 21:08:57','2023-11-02 15:29:14',0),(80,'',75,0,1,5,1,'2023-11-02 15:10:08','2023-11-02 15:11:02',1),(76,'',75,0,1,1,1,'2023-11-02 15:04:18','2023-11-02 15:04:18',1),(79,'',75,0,1,4,1,'2023-11-02 15:09:15','2023-11-02 15:09:15',1),(33,'',0,1,1,7,1,'2009-02-03 14:17:55','2023-11-01 13:04:35',1),(34,'',0,1,4,2,0,'2009-02-03 14:18:11','2023-11-02 15:29:14',1),(81,'',75,0,1,6,1,'2023-11-02 15:10:34','2023-11-02 15:11:09',1),(69,'',63,0,1,6,1,'2023-11-01 12:40:15','2023-11-01 13:00:01',1),(68,'',63,0,1,7,1,'2023-11-01 12:39:45','2023-11-01 13:00:15',1),(67,'',63,0,1,8,1,'2023-11-01 12:39:24','2023-11-01 13:00:28',1),(73,'',63,0,1,2,1,'2023-11-01 12:41:23','2023-11-01 12:58:58',1),(82,'',75,0,1,8,1,'2023-11-02 15:11:58','2023-11-02 15:20:29',1),(72,'',63,0,1,3,1,'2023-11-01 12:41:10','2023-11-01 12:59:15',1),(71,'',63,0,1,4,1,'2023-11-01 12:40:52','2023-11-01 12:59:32',1),(63,'catalog/10040901.png',0,1,1,1,1,'2023-11-01 12:28:49','2023-11-01 13:06:51',1),(66,'',63,0,1,9,1,'2023-11-01 12:38:41','2023-11-01 13:00:42',1),(70,'',63,0,1,5,1,'2023-11-01 12:40:33','2023-11-01 12:59:44',1),(57,'',0,1,1,5,0,'2011-04-26 08:53:16','2023-11-02 15:29:14',1),(64,'',63,0,1,11,1,'2023-11-01 12:30:16','2023-11-01 13:01:15',1),(65,'',63,0,1,10,1,'2023-11-01 12:37:58','2023-11-01 13:01:01',1),(75,'catalog/5442095.png',0,1,1,0,1,'2023-11-02 15:01:55','2023-11-02 15:01:55',1),(60,'',0,1,1,6,0,'2023-10-29 13:07:19','2023-11-02 15:29:14',1),(61,'',0,0,1,8,1,'2023-10-29 15:50:46','2023-11-01 13:04:45',1),(83,'',75,0,1,9,1,'2023-11-02 15:12:23','2023-11-02 15:20:41',1),(84,'',75,0,1,7,1,'2023-11-02 15:19:16','2023-11-02 15:20:11',1),(85,'',0,1,1,0,1,'2023-11-09 21:47:48','2023-11-09 22:06:30',1),(86,'catalog/лого.jpg',85,0,1,1,1,'2023-11-09 21:49:13','2023-11-09 21:54:21',1),(87,'catalog/Optilux-logo-600x315w.png',85,0,1,2,1,'2023-11-09 21:56:15','2023-11-09 21:58:01',1),(88,'catalog/лого_UDEN.jpg',85,0,1,3,1,'2023-11-09 22:03:46','2023-11-09 22:03:46',1);
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_description`
--

LOCK TABLES `oc_category_description` WRITE;
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` VALUES (17,1,'Обігрів до 15м2','&lt;p style=&quot;margin-bottom: 1.43rem; padding: 0px; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Енергоефективні металокерамічні обігрівачі&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;використовують для обігріву найрізноманітніших приміщень: квартир, приватних будинків, об’єктів комерційної нерухомості та соціальної сфери.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1.43rem; padding: 0px; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Їх можна встановлювати в санвузлах, балконах, лоджіях для локального обігріву робочого місця або окремих ділянок приміщення. Ви отримуєте&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;екологічний та економний обігрівач&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;з мінімальним споживанням електрики. В якості основного обігріву&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: 14px;&quot;&gt;представлені обігрівачи&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;підійдуть для площі до 15м2.&lt;/span&gt;&lt;/strong&gt;&lt;/font&gt;&lt;/p&gt;','','','',''),(34,1,'Обігрів до 5м2','&lt;h2 class=&quot;title&quot; style=&quot;margin-right: 0px; margin-bottom: 30px; margin-left: 0px; line-height: 40px; text-align: center; padding: 0px 30px;&quot;&gt;&lt;blockquote style=&quot;padding: 20px 30px; text-align: start;&quot;&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Енергоефективні металокерамічні обігрівачі&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt; використовують для обігріву найрізноманітніших приміщень: квартир, приватних будинків, об’єктів комерційної нерухомості та соціальної сфери.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Їх можна встановлювати в санвузлах, балконах, лоджіях для локального обігріву робочого місця або окремих ділянок приміщення. Ви отримуєте&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;екологічний та економний обігрівач&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;з мінімальним споживанням електрики. В якості основного обігріву&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: 14px;&quot;&gt;представлені обігрівачи&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt; підійдуть для площі до 5м2.&lt;/span&gt;&lt;/strong&gt;&lt;/font&gt;&lt;/p&gt;&lt;/blockquote&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0cm;margin-bottom:.0001pt&quot;&gt;&lt;span style=&quot;color: rgb(34, 34, 34); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;&lt;font face=&quot;Arial, sans-serif&quot;&gt;&lt;span style=&quot;text-align: start;&quot;&gt;&lt;/span&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;/h2&gt;\r\n','','','',''),(60,1,'Обігрів 24м2 - 35м2','&lt;p style=&quot;margin-bottom: 1.43rem; padding: 0px; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Енергоефективні металокерамічні обігрівачі&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;використовують для обігріву найрізноманітніших приміщень: квартир, приватних будинків, об’єктів комерційної нерухомості та соціальної сфери.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1.43rem; padding: 0px; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Їх можна встановлювати в санвузлах, балконах, лоджіях для локального обігріву робочого місця або окремих ділянок приміщення. Ви отримуєте&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;екологічний та економний обігрівач&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;з мінімальним споживанням електрики. В якості основного обігріву&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: 14px;&quot;&gt;представлені обігрівачи&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;підійдуть для площі від 24м2 до 35м2.&lt;/span&gt;&lt;/strong&gt;&lt;/font&gt;&lt;/p&gt;','','','',''),(57,1,'Обігрів до 20м2','&lt;p style=&quot;margin-bottom: 1.43rem; padding: 0px; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Енергоефективні металокерамічні обігрівачі&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;використовують для обігріву найрізноманітніших приміщень: квартир, приватних будинків, об’єктів комерційної нерухомості та соціальної сфери.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1.43rem; padding: 0px; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Їх можна встановлювати в санвузлах, балконах, лоджіях для локального обігріву робочого місця або окремих ділянок приміщення. Ви отримуєте&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;екологічний та економний обігрівач&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;з мінімальним споживанням електрики. В якості основного обігріву&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: 14px;&quot;&gt;представлені обігрівачи&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;підійдуть для площі до 20м2.&lt;/span&gt;&lt;/strong&gt;&lt;/font&gt;&lt;/p&gt;','','','',''),(33,1,'Рушникосушарки','&lt;p&gt;&lt;span style=&quot;color: rgb(43, 42, 41); font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Це стильний та ефективний спосіб забезпечити комфортну температуру у ванній кімнаті. Завдяки своїм компактним розмірам та міцній конструкції, цей обігрівач можна використовувати у ванних кімнатах та санвузлах.&lt;/font&gt;&lt;br&gt;&lt;/span&gt;&lt;br style=&quot;box-sizing: content-box; color: rgb(43, 42, 41); font-size: 14px;&quot;&gt;&lt;span style=&quot;font-family: Arial; color: rgb(43, 42, 41); font-size: 14px;&quot;&gt;Керамічна технологія&amp;nbsp;нагріву забезпечує швидкий та рівномірний розподіл тепла у приміщенні, що дозволяє економити електроенергію.&lt;/span&gt;&lt;br style=&quot;box-sizing: content-box; color: rgb(43, 42, 41); font-size: 14px;&quot;&gt;&lt;span style=&quot;font-family: Arial; color: rgb(43, 42, 41); font-size: 14px;&quot;&gt;Має стильний дизайн, який доповнить інтер\'єр будь-якого приміщення.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','','','',''),(61,1,'Аксесуари','','','','',''),(24,1,'Обігрів до 10м2','&lt;p style=&quot;margin-bottom: 1.43rem; padding: 0px; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Енергоефективні металокерамічні обігрівачі&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;використовують для обігріву найрізноманітніших приміщень: квартир, приватних будинків, об’єктів комерційної нерухомості та соціальної сфери.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1.43rem; padding: 0px; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Їх можна встановлювати в санвузлах, балконах, лоджіях для локального обігріву робочого місця або окремих ділянок приміщення. Ви отримуєте&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;екологічний та економний обігрівач&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;з мінімальним споживанням електрики. В якості основного обігріву&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: 14px;&quot;&gt;представлені обігрівачи&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;підійдуть для площі до 10м2.&lt;/span&gt;&lt;/strong&gt;&lt;/font&gt;&lt;/p&gt;','','','',''),(63,1,'Потужність','&lt;p style=&quot;margin-bottom: 1.43rem; padding: 0px; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Енергоефективні металокерамічні обігрівачі&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;використовують для обігріву найрізноманітніших приміщень: квартир, приватних будинків, об’єктів комерційної нерухомості та соціальної сфери.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1.43rem; padding: 0px; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Їх можна встановлювати в санвузлах, балконах, лоджіях для локального обігріву робочого місця або окремих ділянок приміщення. Ви отримуєте&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: 700; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;екологічний та економний обігрівач&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;з мінімальним споживанням електрики.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1.43rem; padding: 0px; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;В якості основного обігріву&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: 14px;&quot;&gt;представлені обігрівачи&lt;/span&gt;&lt;span style=&quot;font-weight: 700; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;с потужістю від 200Вт до 1500Вт.&lt;/span&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;','','','',''),(64,1,'200Вт','','','','',''),(65,1,'250Вт','','','','',''),(66,1,'300Вт','','','','',''),(67,1,'430Вт','','','','',''),(68,1,'500Вт','','','','',''),(69,1,'700Вт','','','','',''),(70,1,'900Вт','','','','',''),(71,1,'1000Вт','','','','',''),(72,1,'1100Вт','','','','',''),(74,1,'1500Вт','','','','',''),(73,1,'1400Вт','','','','',''),(75,1,'Площа обігріву','','','','',''),(76,1,'до 35м2','','','','',''),(77,1,'27м2 - 32м2','','','','',''),(78,1,'24м2 - 28м2 ','','','','',''),(79,1,'до 20м2','','','','',''),(80,1,'до 18м2','','','','',''),(81,1,'до 15м2','','','','',''),(82,1,'до 10м2','','','','',''),(83,1,'до 5м2','','','','',''),(84,1,'до 12м2','','','','',''),(85,1,'Каталог обігрівачів','&lt;p style=&quot;margin-bottom: 1.43rem; padding: 0px; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Енергоефективні металокерамічні Кропивницькі обігрівачі для найрізноманітніших приміщень: квартир, приватних будинків, об’єктів комерційної нерухомості та соціальної сфери.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1.43rem; padding: 0px; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Їх можна встановлювати в санвузлах, балконах, лоджіях для локального обігріву робочого місця або окремих ділянок приміщення. Ви отримуєте&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: 700; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;екологічні та економічні обігрівачі&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;з мінімальним споживанням електрики.&amp;nbsp;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1.43rem; padding: 0px; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;В основу їхньої роботи закладено принцип прямого нагріву – теплові промені насамперед прогрівають тверді конструкції і тільки потім повітря, зберігаючи його живим і природним. Відчуття комфорту настає за нижчої температури чим при використанні обігрівачів іншого типу.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;','','','',''),(86,1,'Виробник &quot;HEATS&quot;','&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976310929&quot; style=&quot;box-sizing: content-box; color: rgb(43, 42, 41); margin: 12px 0px 0px; padding: 0px; border: 0px; font-size: 18px; line-height: 1.3;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;МАКСИМУМ БЕЗПЕКИ ТА ЗАХИСТУ&lt;/span&gt;&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976310929&quot; style=&quot;box-sizing: content-box; color: rgb(43, 42, 41); margin: 12px 0px 0px; padding: 0px; border: 0px; font-size: 18px; line-height: 1.3;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівачі HEATS надійно захищені від перегріву та перепадів напруги, що гарантує їх безпеку для дітей. Вони на 100% пожежо-безпечні і можуть залишатися без нагляду. Додатково, завдяки надійному захисту нагрівального елемента, їх можна використовувати у ванній кімнаті, сауні або бані.&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976310929&quot; style=&quot;box-sizing: content-box; color: rgb(43, 42, 41); margin: 12px 0px 0px; padding: 0px; border: 0px; font-size: 18px; line-height: 1.3;&quot;&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976330452&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; font-family: &amp;quot;Roboto Condensed&amp;quot;; line-height: 1.3;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;МОБІЛЬНІСТЬ ТА ЗРУЧНІСТЬ&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976330452&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; font-family: &amp;quot;Roboto Condensed&amp;quot;; line-height: 1.3;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Отримайте максимальну мобільність та зручність з обігрівачами HEATS. Ви можете розмістити їх там, де це для вас зручно, будь то на стіні або підлозі. Ці обігрівачі підходять для будь-яких типів приміщень і не потребують проектування, узгодження, а також монтажу труб і котлів.&lt;/span&gt;&lt;/div&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976330452&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; font-family: &amp;quot;Roboto Condensed&amp;quot;; line-height: 1.3;&quot;&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976315081&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; line-height: 1.3;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;ЄКОНОМІЯ ТА ЕФЕКТИВНІСТЬ&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976315081&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; line-height: 1.3;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівачі HEATS забезпечують ефективне енергоспоживання, яке у рази менше, ніж у порівнянних пристроях. Вони дозволяють вам економити до 40% на опаленні, завдяки високому коефіцієнту корисної дії (99%) і низькому споживанню всього 50-80 Ватт на 1 м².&lt;/span&gt;&lt;/div&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976315081&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; line-height: 1.3;&quot;&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976334035&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; line-height: 1.3;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;КОМФОРТ ТА ЕКОЛОГІЧНІСТЬ&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976334035&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; line-height: 1.3;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;М\'яке інфрачервоне тепло і природна конвекція забезпечують рівномірний прогрів всього приміщення, забезпечуючи повний комфорт і свободу самостійно вирішувати, коли починати і закінчувати опалювальний сезон. Обігрівачі Heats не виділяють запаху горіння і не спалюють кисень.&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;','','','',''),(87,1,'Виробник &quot;OPTILUX&quot;','&lt;p style=&quot;margin-bottom: 10px; color: rgb(102, 102, 102);&quot;&gt;&lt;span style=&quot;font-weight: 700; font-size: 14px; font-family: Arial;&quot;&gt;OPTILUX&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px; font-family: Arial;&quot;&gt;-&amp;nbsp;&lt;/span&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;стильні електричні панелі із натурального природного матеріалу.&amp;nbsp;&lt;/span&gt;&lt;/font&gt;&lt;span style=&quot;font-size: 14px; font-family: Arial;&quot;&gt;Сучасна альтернатива традиційним та дорогим системам опалення.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&lt;font color=&quot;#666666&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Використовуючи інноваційні запатентовані технології ми створили професійні обігрівачі нового покоління.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;div class=&quot;t493__heading t-heading t-heading_sm &quot; field=&quot;title2&quot; style=&quot;box-sizing: content-box; color: rgb(102, 102, 102); margin: 0px; padding: 0px 0px 15px; border: 0px; line-height: 1.17;&quot;&gt;&lt;div class=&quot;t493__heading t-heading t-heading_sm &quot; field=&quot;title&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px 0px 15px; border: 0px; line-height: 1.17;&quot;&gt;&lt;font color=&quot;#ff2c01&quot; face=&quot;Roboto, Arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;КОНВЕКЦІЯ&lt;/span&gt;&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/div&gt;&lt;div class=&quot;t493__descr t-descr t-descr_xs &quot; field=&quot;descr&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; line-height: 1.55;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Циркуляція повітря відбувається природним чином, що робить цей процес абсолютно безшумним. Нижні шари повітря, прогріваючись, піднімаються вгору, витісняючи холодні шари вниз для прогрівання&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;t493__heading t-heading t-heading_sm &quot; field=&quot;title2&quot; style=&quot;box-sizing: content-box; color: rgb(102, 102, 102); margin: 0px; padding: 0px 0px 15px; border: 0px; line-height: 1.17;&quot;&gt;&lt;font color=&quot;#ff2c01&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;ТЕПЛОВІДДАЧА&lt;/span&gt;&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/div&gt;&lt;div class=&quot;t493__descr t-descr t-descr_xs &quot; field=&quot;descr2&quot; style=&quot;box-sizing: content-box; color: rgb(102, 102, 102); margin: 0px; padding: 0px; border: 0px; line-height: 1.55;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Кераміка є кращим теплоакумулюючим матеріалом, тому тепло, що випромінюється, розчиняється в повітрі. Це дозволяє досягти однакової температури навіть у найвіддаленішому кутку приміщення&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/div&gt;&lt;div class=&quot;t493__descr t-descr t-descr_xs &quot; field=&quot;descr2&quot; style=&quot;box-sizing: content-box; color: rgb(102, 102, 102); font-size: medium; margin: 0px; padding: 0px; border: 0px; line-height: 1.55;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/div&gt;&lt;div class=&quot;t493__descr t-descr t-descr_xs &quot; field=&quot;descr2&quot; style=&quot;box-sizing: content-box; color: rgb(102, 102, 102); margin: 0px; padding: 0px; border: 0px; line-height: 1.55;&quot;&gt;&lt;div class=&quot;t493__heading t-heading t-heading_sm &quot; field=&quot;title3&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px 0px 15px; border: 0px; line-height: 1.17;&quot;&gt;&lt;font color=&quot;#ff2c01&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;ІНФРАЧЕРВОНЕ ВИПРОМІНЮВАННЯ&lt;/span&gt;&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/div&gt;&lt;div class=&quot;t493__descr t-descr t-descr_xs &quot; field=&quot;descr3&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; line-height: 1.55;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Промені інфрачервоного випромінювання практично не розсіюються у повітрі, а досягають предметів та людей, нагріваючись, передають тепло в приміщення. У цьому не пересушують повітря.&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;&lt;/div&gt;','','','',''),(88,1,'Виробник &quot;UDEN-S&quot;','&lt;h2 style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; line-height: var(--h2-line-height); color: rgb(34, 34, 34); margin: 20px 0px 0.7rem; font-size: calc(var(--h2-size-proportion) * 1rem); padding: 0px; text-align: center;&quot;&gt;&lt;span style=&quot;font-weight: 700; padding: 0px; margin: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Металокерамічні панелі UDEN&lt;/span&gt;&lt;/font&gt;&lt;/span&gt;&lt;/h2&gt;&lt;p style=&quot;margin-bottom: 1.43rem; padding: 0px; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Енергоефективні металокерамічні обігрівачі UDEN використовують для обігріву найрізноманітніших приміщень: квартир, приватних будинків, об’єктів комерційної нерухомості та соціальної сфери.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1.43rem; padding: 0px; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівачі UDEN можна встановлювати в санвузлах, балконах, лоджіях для локального обігріву робочого місця або окремих ділянок приміщення. Ви отримуєте&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: 700; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;екологічні та економічні обігрівачі&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;з мінімальним споживанням електрики.&amp;nbsp;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1.43rem; padding: 0px; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;В основу їхньої роботи закладено принцип прямого нагріву – теплові промені насамперед прогрівають тверді конструкції і тільки потім повітря, зберігаючи його живим і природним. Відчуття комфорту настає за нижчої температури чим при використанні обігрівачів іншого типу.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;h3 style=&quot;font-family: Roboto; line-height: var(--h3-line-height); color: rgb(34, 34, 34); margin: 20px 0px 0.7rem; font-size: calc(var(--h3-size-proportion) * 1rem); padding: 0px; text-align: center;&quot;&gt;&lt;span style=&quot;font-weight: 700; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Переваги панелі&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-weight: 700; font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: calc(var(--h2-size-proportion) * 1rem); padding: 0px; margin: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;UDEN&lt;/span&gt;&lt;/font&gt;&lt;/span&gt;&lt;/h3&gt;&lt;ul style=&quot;margin-right: 0px; margin-bottom: 1.43em; margin-left: 0px; padding: 0px 0px 0px 20px; color: rgb(85, 85, 85); font-size: 16px;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-weight: 700; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Маленьке споживання електроенергії.&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Розрахункова потужність в 1,5-2 рази менша, ніж у конвекторів, масляних радіаторів або електрокотлів, відповідно, і витрата електроенергії знижується на 35-40%. Уся система в середньому працює 5-7 годин на добу.&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-weight: 700; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Наявність енергоощадного теплонакопичувача.&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: 700; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівачі починають віддавати тепло через 5 хвилин після увімкнення, через 20 хвилин виходять на робочу температуру,&lt;/span&gt;&lt;span style=&quot;font-weight: 700; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;а завдяки керамічному теплонакопичувачу охолоджуються впродовж 1,5 годин,&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;продовжуючи випромінювати тепло з нульовою витратою електроенергії!&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-weight: 700; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Устаткування екологічне&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(не висушує повітря і не створює циркуляції пилу),&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: 700; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;безпечне&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(український сертифікат і РЄ) і&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: 700; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;надійне&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(5 років обмінної гарантії, термін безперервної експлуатації – 25 років).&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-weight: 700; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Легкий і швидкий монтаж&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;без шкоди для ремонту і пошкоджень інтер’єру.&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;','','','','');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_filter`
--

LOCK TABLES `oc_category_filter` WRITE;
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_path`
--

LOCK TABLES `oc_category_path` WRITE;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` VALUES (88,88,1),(88,85,0),(87,87,1),(87,85,0),(86,85,0),(85,85,0),(84,84,1),(84,75,0),(83,83,1),(24,24,0),(17,17,0),(33,33,0),(34,34,0),(72,72,1),(72,63,0),(73,73,1),(73,63,0),(71,71,1),(71,63,0),(70,70,1),(70,63,0),(69,69,1),(69,63,0),(68,68,1),(68,63,0),(83,75,0),(82,82,1),(82,75,0),(81,81,1),(81,75,0),(80,80,1),(80,75,0),(79,79,1),(79,75,0),(78,78,1),(78,75,0),(77,77,1),(77,75,0),(76,76,1),(65,65,1),(65,63,0),(64,64,1),(64,63,0),(63,63,0),(67,67,1),(67,63,0),(66,66,1),(66,63,0),(76,75,0),(75,75,0),(74,74,1),(74,63,0),(57,57,0),(86,86,1),(60,60,0),(61,61,0);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_layout`
--

LOCK TABLES `oc_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
INSERT INTO `oc_category_to_layout` VALUES (63,0,0),(64,0,0),(65,0,0),(57,0,0),(66,0,0),(68,0,0),(67,0,0),(17,0,0),(24,0,0),(34,0,0),(33,0,0),(60,0,0),(61,0,0),(69,0,0),(70,0,0),(71,0,0),(72,0,0),(73,0,0),(74,0,0),(75,0,0),(76,0,0),(77,0,0),(78,0,0),(79,0,0),(80,0,0),(81,0,0),(82,0,0),(83,0,0),(84,0,0),(85,0,0),(86,0,0),(87,0,0),(88,0,0);
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_store`
--

LOCK TABLES `oc_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` VALUES (17,0),(24,0),(33,0),(34,0),(57,0),(60,0),(61,0),(63,0),(64,0),(65,0),(66,0),(67,0),(68,0),(69,0),(70,0),(71,0),(72,0),(73,0),(74,0),(75,0),(76,0),(77,0),(78,0),(79,0),(80,0),(81,0),(82,0),(83,0),(84,0),(85,0),(86,0),(87,0),(88,0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_country`
--

LOCK TABLES `oc_country` WRITE;
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` VALUES (220,'Україна','UA','UKR','',0,1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon`
--

LOCK TABLES `oc_coupon` WRITE;
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` VALUES (4,'-10% Discount','2222','P',10.0000,0,0,0.0000,'2014-01-01','2020-01-01',10,'10',0,'2009-01-27 13:55:03'),(5,'Free Shipping','3333','P',0.0000,0,1,100.0000,'2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53'),(6,'-10.00 Discount','1111','F',10.0000,0,0,10.0000,'2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_category`
--

LOCK TABLES `oc_coupon_category` WRITE;
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_history`
--

LOCK TABLES `oc_coupon_history` WRITE;
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_product`
--

LOCK TABLES `oc_coupon_product` WRITE;
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_currency`
--

LOCK TABLES `oc_currency` WRITE;
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` VALUES (1,'Гривня','UAH','',' грн.','2',1.00000000,1,'2023-11-10 15:55:03');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field`
--

LOCK TABLES `oc_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_customer_group`
--

LOCK TABLES `oc_custom_field_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_description`
--

LOCK TABLES `oc_custom_field_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value`
--

LOCK TABLES `oc_custom_field_value` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value_description`
--

LOCK TABLES `oc_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text DEFAULT NULL,
  `wishlist` text DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer`
--

LOCK TABLES `oc_customer` WRITE;
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_activity`
--

DROP TABLE IF EXISTS `oc_customer_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_activity`
--

LOCK TABLES `oc_customer_activity` WRITE;
/*!40000 ALTER TABLE `oc_customer_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_affiliate`
--

DROP TABLE IF EXISTS `oc_customer_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT 0.00,
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_affiliate`
--

LOCK TABLES `oc_customer_affiliate` WRITE;
/*!40000 ALTER TABLE `oc_customer_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_approval`
--

DROP TABLE IF EXISTS `oc_customer_approval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_approval_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_approval`
--

LOCK TABLES `oc_customer_approval` WRITE;
/*!40000 ALTER TABLE `oc_customer_approval` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_approval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group`
--

LOCK TABLES `oc_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` VALUES (1,0,1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group_description`
--

LOCK TABLES `oc_customer_group_description` WRITE;
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` VALUES (1,1,'Default','Стандартна група покупців. Бонусні бали не нараховуються, знижки не передбачені.'),(1,2,'Default','Default customer group. Bonus points are not awarded, discounts are not provided.');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_history`
--

LOCK TABLES `oc_customer_history` WRITE;
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ip`
--

LOCK TABLES `oc_customer_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_login`
--

DROP TABLE IF EXISTS `oc_customer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_login`
--

LOCK TABLES `oc_customer_login` WRITE;
/*!40000 ALTER TABLE `oc_customer_login` DISABLE KEYS */;
INSERT INTO `oc_customer_login` VALUES (2,'admin. obigrivachi.goldinvest.com.ua','172.104.253.46',1,'2023-11-01 12:05:17','2023-11-01 12:05:17'),(4,'admin. obigrivachi.goldinvest.com.ua','46.211.242.74',3,'2023-11-08 09:36:25','2023-11-08 09:36:42');
/*!40000 ALTER TABLE `oc_customer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_online`
--

LOCK TABLES `oc_customer_online` WRITE;
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_reward`
--

LOCK TABLES `oc_customer_reward` WRITE;
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_search`
--

DROP TABLE IF EXISTS `oc_customer_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_search`
--

LOCK TABLES `oc_customer_search` WRITE;
/*!40000 ALTER TABLE `oc_customer_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_transaction`
--

LOCK TABLES `oc_customer_transaction` WRITE;
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_wishlist`
--

DROP TABLE IF EXISTS `oc_customer_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_wishlist`
--

LOCK TABLES `oc_customer_wishlist` WRITE;
/*!40000 ALTER TABLE `oc_customer_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download`
--

LOCK TABLES `oc_download` WRITE;
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download_description`
--

LOCK TABLES `oc_download_description` WRITE;
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_event`
--

DROP TABLE IF EXISTS `oc_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_event`
--

LOCK TABLES `oc_event` WRITE;
/*!40000 ALTER TABLE `oc_event` DISABLE KEYS */;
INSERT INTO `oc_event` VALUES (1,'activity_customer_add','catalog/model/account/customer/addCustomer/after','event/activity/addCustomer',1,0),(2,'activity_customer_edit','catalog/model/account/customer/editCustomer/after','event/activity/editCustomer',1,0),(3,'activity_customer_password','catalog/model/account/customer/editPassword/after','event/activity/editPassword',1,0),(4,'activity_customer_forgotten','catalog/model/account/customer/editCode/after','event/activity/forgotten',1,0),(5,'activity_transaction','catalog/model/account/customer/addTransaction/after','event/activity/addTransaction',1,0),(6,'activity_customer_login','catalog/model/account/customer/deleteLoginAttempts/after','event/activity/login',1,0),(7,'activity_address_add','catalog/model/account/address/addAddress/after','event/activity/addAddress',1,0),(8,'activity_address_edit','catalog/model/account/address/editAddress/after','event/activity/editAddress',1,0),(9,'activity_address_delete','catalog/model/account/address/deleteAddress/after','event/activity/deleteAddress',1,0),(10,'activity_affiliate_add','catalog/model/account/customer/addAffiliate/after','event/activity/addAffiliate',1,0),(11,'activity_affiliate_edit','catalog/model/account/customer/editAffiliate/after','event/activity/editAffiliate',1,0),(12,'activity_order_add','catalog/model/checkout/order/addOrderHistory/before','event/activity/addOrderHistory',1,0),(13,'activity_return_add','catalog/model/account/return/addReturn/after','event/activity/addReturn',1,0),(14,'mail_transaction','catalog/model/account/customer/addTransaction/after','mail/transaction',1,0),(15,'mail_forgotten','catalog/model/account/customer/editCode/after','mail/forgotten',1,0),(16,'mail_customer_add','catalog/model/account/customer/addCustomer/after','mail/register',1,0),(17,'mail_customer_alert','catalog/model/account/customer/addCustomer/after','mail/register/alert',1,0),(18,'mail_affiliate_add','catalog/model/account/customer/addAffiliate/after','mail/affiliate',1,0),(19,'mail_affiliate_alert','catalog/model/account/customer/addAffiliate/after','mail/affiliate/alert',1,0),(20,'mail_voucher','catalog/model/checkout/order/addOrderHistory/after','extension/total/voucher/send',1,0),(21,'mail_order_add','catalog/model/checkout/order/addOrderHistory/before','mail/order',1,0),(22,'mail_order_alert','catalog/model/checkout/order/addOrderHistory/before','mail/order/alert',1,0),(23,'statistics_review_add','catalog/model/catalog/review/addReview/after','event/statistics/addReview',1,0),(24,'statistics_return_add','catalog/model/account/return/addReturn/after','event/statistics/addReturn',1,0),(25,'statistics_order_history','catalog/model/checkout/order/addOrderHistory/after','event/statistics/addOrderHistory',1,0),(26,'admin_mail_affiliate_approve','admin/model/customer/customer_approval/approveAffiliate/after','mail/affiliate/approve',1,0),(27,'admin_mail_affiliate_deny','admin/model/customer/customer_approval/denyAffiliate/after','mail/affiliate/deny',1,0),(28,'admin_mail_customer_approve','admin/model/customer/customer_approval/approveCustomer/after','mail/customer/approve',1,0),(29,'admin_mail_customer_deny','admin/model/customer/customer_approval/denyCustomer/after','mail/customer/deny',1,0),(30,'admin_mail_reward','admin/model/customer/customer/addReward/after','mail/reward',1,0),(31,'admin_mail_transaction','admin/model/customer/customer/addTransaction/after','mail/transaction',1,0),(32,'admin_mail_return','admin/model/sale/return/addReturnHistory/after','mail/return',1,0),(33,'admin_mail_forgotten','admin/model/user/user/editCode/after','mail/forgotten',1,0),(34,'advertise_google','admin/model/catalog/product/deleteProduct/after','extension/advertise/google/deleteProduct',1,0),(35,'advertise_google','admin/model/catalog/product/copyProduct/after','extension/advertise/google/copyProduct',1,0),(36,'advertise_google','admin/view/common/column_left/before','extension/advertise/google/admin_link',1,0),(37,'advertise_google','admin/model/catalog/product/addProduct/after','extension/advertise/google/addProduct',1,0),(38,'advertise_google','catalog/controller/checkout/success/before','extension/advertise/google/before_checkout_success',1,0),(39,'advertise_google','catalog/view/common/header/after','extension/advertise/google/google_global_site_tag',1,0),(40,'advertise_google','catalog/view/common/success/after','extension/advertise/google/google_dynamic_remarketing_purchase',1,0),(41,'advertise_google','catalog/view/product/product/after','extension/advertise/google/google_dynamic_remarketing_product',1,0),(42,'advertise_google','catalog/view/product/search/after','extension/advertise/google/google_dynamic_remarketing_searchresults',1,0),(43,'advertise_google','catalog/view/product/category/after','extension/advertise/google/google_dynamic_remarketing_category',1,0),(44,'advertise_google','catalog/view/common/home/after','extension/advertise/google/google_dynamic_remarketing_home',1,0),(45,'advertise_google','catalog/view/checkout/cart/after','extension/advertise/google/google_dynamic_remarketing_cart',1,0);
/*!40000 ALTER TABLE `oc_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension`
--

LOCK TABLES `oc_extension` WRITE;
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` VALUES (1,'payment','cod'),(2,'total','shipping'),(3,'total','sub_total'),(4,'total','tax'),(5,'total','total'),(6,'module','banner'),(7,'module','carousel'),(8,'total','credit'),(9,'shipping','flat'),(10,'total','handling'),(11,'total','low_order_fee'),(13,'module','category'),(14,'module','account'),(15,'total','reward'),(16,'total','voucher'),(17,'payment','free_checkout'),(18,'module','featured'),(19,'module','slideshow'),(20,'theme','default'),(21,'dashboard','activity'),(22,'dashboard','sale'),(23,'dashboard','recent'),(24,'dashboard','order'),(25,'dashboard','online'),(26,'dashboard','map'),(27,'dashboard','customer'),(28,'dashboard','chart'),(29,'report','sale_coupon'),(31,'report','customer_search'),(32,'report','customer_transaction'),(33,'report','product_purchased'),(34,'report','product_viewed'),(35,'report','sale_return'),(36,'report','sale_order'),(37,'report','sale_shipping'),(38,'report','sale_tax'),(39,'report','customer_activity'),(40,'report','customer_order'),(41,'report','customer_reward'),(42,'advertise','google'),(43,'module','blog_latest'),(44,'module','blog_featured'),(45,'module','blog_category'),(46,'module','featured_article'),(47,'module','featured_product'),(49,'currency','ecb'),(50,'currency','nbu'),(51,'dashboard','domovoy'),(53,'analytics','google'),(54,'module','bestseller'),(55,'module','store'),(58,'shipping','free'),(57,'module','onepcheckout');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension_install`
--

DROP TABLE IF EXISTS `oc_extension_install`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension_install`
--

LOCK TABLES `oc_extension_install` WRITE;
/*!40000 ALTER TABLE `oc_extension_install` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_extension_install` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension_path`
--

DROP TABLE IF EXISTS `oc_extension_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension_path`
--

LOCK TABLES `oc_extension_path` WRITE;
/*!40000 ALTER TABLE `oc_extension_path` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_extension_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter`
--

LOCK TABLES `oc_filter` WRITE;
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_description`
--

LOCK TABLES `oc_filter_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group`
--

LOCK TABLES `oc_filter_group` WRITE;
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group_description`
--

LOCK TABLES `oc_filter_group_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_geo_zone`
--

LOCK TABLES `oc_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` VALUES (3,'UK VAT Zone','UK VAT','2009-01-06 23:26:25','2010-02-26 22:33:24'),(4,'UK Shipping','UK Shipping Zones','2009-06-23 01:14:53','2010-12-15 15:18:13');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_googleshopping_category`
--

DROP TABLE IF EXISTS `oc_googleshopping_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_googleshopping_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`google_product_category`,`store_id`),
  KEY `category_id_store_id` (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_googleshopping_category`
--

LOCK TABLES `oc_googleshopping_category` WRITE;
/*!40000 ALTER TABLE `oc_googleshopping_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_googleshopping_product`
--

DROP TABLE IF EXISTS `oc_googleshopping_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_googleshopping_product` (
  `product_advertise_google_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `conversions` int(11) NOT NULL DEFAULT 0,
  `cost` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `conversion_value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_advertise_google_id`),
  UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_googleshopping_product`
--

LOCK TABLES `oc_googleshopping_product` WRITE;
/*!40000 ALTER TABLE `oc_googleshopping_product` DISABLE KEYS */;
INSERT INTO `oc_googleshopping_product` VALUES (1,50,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(2,51,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(3,52,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(4,53,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(5,54,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(6,55,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(7,56,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(8,57,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(9,58,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(10,59,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(11,60,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(12,61,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(13,62,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(14,63,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(15,64,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(16,65,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(17,66,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(18,67,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(19,68,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(20,69,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(21,70,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(22,71,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(23,72,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(24,73,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(25,74,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(26,75,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(27,76,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(28,77,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(29,78,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(30,79,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(31,80,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(32,81,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(33,82,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `oc_googleshopping_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_googleshopping_product_status`
--

DROP TABLE IF EXISTS `oc_googleshopping_product_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_googleshopping_product_status` (
  `product_id` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_googleshopping_product_status`
--

LOCK TABLES `oc_googleshopping_product_status` WRITE;
/*!40000 ALTER TABLE `oc_googleshopping_product_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_product_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_googleshopping_product_target`
--

DROP TABLE IF EXISTS `oc_googleshopping_product_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_googleshopping_product_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `advertise_google_target_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`advertise_google_target_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_googleshopping_product_target`
--

LOCK TABLES `oc_googleshopping_product_target` WRITE;
/*!40000 ALTER TABLE `oc_googleshopping_product_target` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_product_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_googleshopping_target`
--

DROP TABLE IF EXISTS `oc_googleshopping_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_googleshopping_target` (
  `advertise_google_target_id` int(11) unsigned NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  `date_added` date DEFAULT NULL,
  `roas` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`advertise_google_target_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_googleshopping_target`
--

LOCK TABLES `oc_googleshopping_target` WRITE;
/*!40000 ALTER TABLE `oc_googleshopping_target` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT 0,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `noindex` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information`
--

LOCK TABLES `oc_information` WRITE;
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` VALUES (3,1,3,1,1),(4,1,1,1,0),(5,1,4,1,1),(6,1,2,1,1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_description`
--

LOCK TABLES `oc_information_description` WRITE;
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` VALUES (4,1,'Про магазин','&lt;p style=&quot;margin-bottom: 1.43rem; padding: 0px; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Продаж та доставка енергоефективних металокерамічних обігрівачів&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp; для обігріву найрізноманітніших приміщень: квартир, приватних будинків, об’єктів комерційної нерухомості та соціальної сфери.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1.43rem; padding: 0px; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Для встановлювання в санвузлах, балконах, лоджіях для локального обігріву робочого місця або окремих ділянок приміщення. &lt;b&gt;Е&lt;/b&gt;&lt;/span&gt;&lt;span style=&quot;font-weight: 700; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;кологічні та економічні обігрівачі&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;з мінімальним споживанням електрики.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1.43rem; padding: 0px; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt; В якості основного обігріву&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: 14px;&quot;&gt;представлені обігрівачи&lt;/span&gt;&lt;span style=&quot;font-weight: 700; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;підійдуть для площі від 5м2 до 35м2.&lt;/span&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;\r\n','Про магазин','','',''),(3,1,'Умови повернення товару','&lt;h3 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); font-size: calc(var(--h3-size-proportion) * 1rem); color: rgb(34, 34, 34);&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Умови повернення товару:&lt;/span&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/h3&gt;&lt;ul style=&quot;padding: 0px 0px 0px 20px; margin-right: 0px; margin-bottom: 1.43em; margin-left: 0px; color: rgb(85, 85, 85); font-size: 16px;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;font face=&quot;Arial&quot; style=&quot;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Повернення товару можливе протягом 14 днів&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;з моменту оформлення замовлення в тому випадку, збереглося заводське пакування та товарний вигляд;&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;font face=&quot;Arial&quot; style=&quot;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Якщо дефекти товару були виявлені після доставки&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;, протягом 14-ти днів з моменту покупки його можна повернути або обміняти. Для цього вам необхідно звернутися в інтернет-магазин за телефоном: +38 (067) 444-05-95, узгодити з менеджером день і час повернення товару, а потім приїхати в домовлений час;&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;font face=&quot;Arial&quot; style=&quot;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обов’язкова умова для повернення або заміни товару&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;– відсутність на ньому ушкоджень, наявність оригінального паковання, супровідних документів і товарного чека. Усі дії з повернення товару відбуваються відповідно до “Закону про захист прав споживачів”.&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;em style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Щоб не виникало подібних ситуацій, переконливо просимо Вас під час підбору обігрівачів враховувати специфіку приміщення, чи то квартира, магазин, чи то офіс. А також вказувати реальні дані, площу приміщення, висоту стель, наявність панорамних вікон, верхній поверх та інші параметри, які можуть бути аргументом на користь вибору більш потужної моделі;&lt;/span&gt;&lt;/font&gt;&lt;/em&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;em style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;При отриманні посилки у відділенні Нової Пошти обов’язково візуально огляньте упаковку на предмет пошкоджень, а в разі якщо такі пошкодження є, відкрийте коробку і візуально огляньте обігрівач. Ми дуже ретельно пакуємо свою продукцію, тож відсоток пошкоджень під час пересилання зведений до мінімуму.&lt;/span&gt;&lt;/font&gt;&lt;/em&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;em style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Якщо все ж пошкодження виявлено, то зв’яжіться з нашим менеджером за телефоном&amp;nbsp;&lt;/span&gt;&lt;/font&gt;&lt;span style=&quot;font-family: Arial; font-size: 14px; font-style: normal;&quot;&gt;+38 (067) 444-05-95&amp;nbsp;&lt;/span&gt;&lt;font face=&quot;Arial&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;відразу з відділення транспортної компанії.&lt;/span&gt;&lt;/font&gt;&lt;/em&gt;&lt;/p&gt;\r\n','Умови повернення товару','','',''),(6,1,'Інформація про доставку','&lt;h3 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); font-size: calc(var(--h3-size-proportion) * 1rem); color: rgb(34, 34, 34);&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Доступні способи доставки:&lt;/span&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/h3&gt;&lt;ol style=&quot;padding: 0px 0px 0px 20px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(85, 85, 85); font-size: 16px;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Доставка на найближче до вас відділення Нової Пошти;&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Адресна доставка кур’єром Нової Пошти за вашою домашньою адресою&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;em style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(можливо тільки при безготівковому розрахунку)&lt;/span&gt;&lt;/em&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;;&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Самовивіз у Києві або Кропивницькому;&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Доставка по Києву.&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;/ol&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;h3 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); font-size: calc(var(--h3-size-proportion) * 1rem); color: rgb(34, 34, 34);&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Доступні способи оплати:&lt;/span&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/h3&gt;&lt;ol style=&quot;padding: 0px 0px 0px 20px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(85, 85, 85); font-size: 16px;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Оплата при отриманні посилки у відділенні Нової Пошти;&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;Оплата за перерахуванням на розрахунковий рахунок без ПДВ;&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;Оплата за перерахуванням на розрахунковий рахунок з ПДВ;&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Оплата на банківську карту українського банку (онлайн);&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Оплата готівкою кур’єру під час отримання посилки.&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;/ol&gt;\r\n','Інформація про доставку','','',''),(5,1,'Умови оформлення замовлення','&lt;p style=&quot;text-align: left; padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Робити замовлення в нашому інтернет-магазині швидко, просто і безпечно! &lt;/span&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: left; padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Ніяких даних своїх кредитних або дебетових карток, а так само персональних даних&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;вказувати &lt;/span&gt;&lt;b&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;НЕ ПОТРІБНО!&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: left; padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Після додавання необхідних товарів у кошик і оформлення замовлення, наш менеджер зателефонує вам у робочий час і уточнить усі деталі замовлення.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: left; padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px; font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;І тільки після усного підтвердження ми відправимо ваше замовлення.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n','Умови оформлення замовлення','','','');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_layout`
--

LOCK TABLES `oc_information_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
INSERT INTO `oc_information_to_layout` VALUES (3,0,0),(5,0,0),(6,0,0),(4,0,0);
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_store`
--

LOCK TABLES `oc_information_to_store` WRITE;
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` VALUES (3,0),(4,0),(5,0),(6,0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_language`
--

LOCK TABLES `oc_language` WRITE;
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` VALUES (1,'Українська','uk-ua','uk_UA.UTF-8,uk_UA,uk-ua,uk,ukrainian','uk-ua.png','uk-ua',1,1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout`
--

LOCK TABLES `oc_layout` WRITE;
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` VALUES (1,'Головна'),(2,'Товар'),(3,'Категорія'),(4,'За замовчуванням'),(5,'Список виробників'),(6,'Обліковий запис'),(7,'Оформлення замовлення'),(8,'Контакти'),(9,'Карта сайту'),(10,'Партнерська програма'),(11,'Інформація (статті)'),(12,'Порівняння товарів'),(13,'Пошук'),(14,'Блог'),(15,'Категорії Блогу'),(16,'Статті Блогу'),(17,'Сторінка виробника');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_module`
--

LOCK TABLES `oc_layout_module` WRITE;
/*!40000 ALTER TABLE `oc_layout_module` DISABLE KEYS */;
INSERT INTO `oc_layout_module` VALUES (2,4,'0','content_top',0),(3,4,'0','content_top',1),(20,5,'0','column_left',2),(69,10,'account','column_right',1),(68,6,'account','column_right',1),(83,3,'banner.30','column_left',1),(82,3,'category','column_left',0),(74,14,'blog_category','column_left',0),(75,14,'blog_featured.33','column_left',1),(76,14,'blog_latest.32','content_bottom',0),(77,15,'blog_category','column_left',0),(78,15,'blog_latest.32','column_left',1),(79,15,'blog_featured.33','content_bottom',0),(80,16,'blog_category','column_left',0),(81,16,'blog_featured.33','column_left',1),(84,3,'featured_article.34','column_left',2),(85,3,'featured_product.35','column_left',3),(130,17,'featured_product.35','column_left',1),(129,17,'featured_article.34','column_left',0),(88,2,'featured_article.34','content_bottom',0),(170,1,'carousel.29','content_top',2),(169,1,'featured.28','content_top',1),(168,1,'slideshow.27','content_top',0);
/*!40000 ALTER TABLE `oc_layout_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_route`
--

LOCK TABLES `oc_layout_route` WRITE;
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` VALUES (38,6,0,'account/%'),(17,10,0,'affiliate/%'),(44,3,0,'product/category'),(88,1,0,'common/home'),(20,2,0,'product/product'),(24,11,0,'information/information'),(93,7,0,'checkout%'),(31,8,0,'information/contact'),(32,9,0,'information/sitemap'),(34,4,0,''),(45,5,0,'product/manufacturer'),(52,12,0,'product/compare'),(53,13,0,'product/search'),(57,14,0,'blog/latest'),(58,15,0,'blog/category'),(56,16,0,'blog/article'),(76,17,0,'product/manufacturer/info');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class`
--

LOCK TABLES `oc_length_class` WRITE;
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` VALUES (1,1.00000000),(2,10.00000000),(3,0.39370000);
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class_description`
--

LOCK TABLES `oc_length_class_description` WRITE;
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` VALUES (1,1,'Сантиметр','см'),(2,1,'Міліметр','мм'),(3,1,'Дюйм','in');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_location`
--

DROP TABLE IF EXISTS `oc_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_location`
--

LOCK TABLES `oc_location` WRITE;
/*!40000 ALTER TABLE `oc_location` DISABLE KEYS */;
INSERT INTO `oc_location` VALUES (1,'КРОПІВНИЦЬКИ_ОБІГРІВАЧІ!','м.Кропівницкий','+380674440595','','','','9:00 - 21:00','');
/*!40000 ALTER TABLE `oc_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  `noindex` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer`
--

LOCK TABLES `oc_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
INSERT INTO `oc_manufacturer` VALUES (11,'OPTILUX','catalog/images.png',1,1),(12,'HEATS','catalog/лого.jpg',2,1),(13,'UDEN-S','catalog/лого_UDEN.jpg',3,1);
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer_description`
--

DROP TABLE IF EXISTS `oc_manufacturer_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer_description` (
  `manufacturer_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `description3` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer_description`
--

LOCK TABLES `oc_manufacturer_description` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_description` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_description` VALUES (12,1,'&lt;div class=&quot;t050__title t-title t-title_xxl&quot; field=&quot;title&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; font-family: &amp;quot;Roboto Condensed&amp;quot;; color: rgb(43, 42, 41); font-size: 42px; line-height: 1.3; text-transform: uppercase;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;div class=&quot;t050__descr t-descr t-descr_xxl&quot; field=&quot;descr&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 30px 0px 9px; border: 0px; color: rgb(43, 42, 41); font-size: 22px; line-height: 1.3;&quot;&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976310929&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; font-size: 18px; line-height: 1.3;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;МАКСИМУМ БЕЗПЕКИ ТА ЗАХИСТУ&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976310929&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; font-size: 18px; line-height: 1.3;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівачі HEATS надійно захищені від перегріву та перепадів напруги, що гарантує їх безпеку для дітей. Вони на 100% пожежо-безпечні і можуть залишатися без нагляду. Додатково, завдяки надійному захисту нагрівального елемента, їх можна використовувати у ванній кімнаті, сауні або бані.&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976310929&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; font-size: 18px; line-height: 1.3;&quot;&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976330452&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; font-family: &amp;quot;Roboto Condensed&amp;quot;; line-height: 1.3;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;МОБІЛЬНІСТЬ ТА ЗРУЧНІСТЬ&lt;/b&gt;&lt;/span&gt;&lt;/div&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976330452&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; font-family: &amp;quot;Roboto Condensed&amp;quot;; line-height: 1.3;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Отримайте максимальну мобільність та зручність з обігрівачами HEATS. Ви можете розмістити їх там, де це для вас зручно, будь то на стіні або підлозі. Ці обігрівачі підходять для будь-яких типів приміщень і не потребують проектування, узгодження, а також монтажу труб і котлів.&lt;/span&gt;&lt;/div&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976330452&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; font-family: &amp;quot;Roboto Condensed&amp;quot;; line-height: 1.3;&quot;&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976315081&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; line-height: 1.3;&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;ЄКОНОМІЯ ТА ЕФЕКТИВНІСТЬ&lt;/span&gt;&lt;/b&gt;&lt;/div&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976315081&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; line-height: 1.3;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівачі HEATS забезпечують ефективне енергоспоживання, яке у рази менше, ніж у порівнянних пристроях. Вони дозволяють вам економити до 40% на опаленні, завдяки високому коефіцієнту корисної дії (99%) і низькому споживанню всього 50-80 Ватт на 1 м².&lt;/span&gt;&lt;/div&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976315081&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; line-height: 1.3;&quot;&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976334035&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; line-height: 1.3;&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;КОМФОРТ ТА ЕКОЛОГІЧНІСТЬ&lt;/span&gt;&lt;/b&gt;&lt;/div&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976334035&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; line-height: 1.3;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;М\'яке інфрачервоне тепло і природна конвекція забезпечують рівномірний прогрів всього приміщення, забезпечуючи повний комфорт і свободу самостійно вирішувати, коли починати і закінчувати опалювальний сезон. Обігрівачі Heats не виділяють запаху горіння і не спалюють кисень.&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976315081&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; line-height: 1.3;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;t-card__descr t-descr t-descr_xs&quot; field=&quot;li_descr__1476976310929&quot; style=&quot;box-sizing: content-box; margin: 12px 0px 0px; padding: 0px; border: 0px; font-size: 18px; line-height: 1.3;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;&lt;/div&gt;','','','','',''),(13,1,'&lt;h2 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); font-size: calc(var(--h2-size-proportion) * 1rem); color: rgb(34, 34, 34); text-align: center;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Металокерамічні панелі UDEN&lt;/span&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Енергоефективні металокерамічні обігрівачі UDEN використовують для обігріву найрізноманітніших приміщень: квартир, приватних будинків, об’єктів комерційної нерухомості та соціальної сфери.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівачі UDEN можна встановлювати в санвузлах, балконах, лоджіях для локального обігріву робочого місця або окремих ділянок приміщення. Ви отримуєте&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;екологічні та економічні обігрівачі&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;з мінімальним споживанням електрики.&amp;nbsp;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;В основу їхньої роботи закладено принцип прямого нагріву – теплові промені насамперед прогрівають тверді конструкції і тільки потім повітря, зберігаючи його живим і природним. Відчуття комфорту настає за нижчої температури чим при використанні обігрівачів іншого типу.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;h3 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); font-size: calc(var(--h3-size-proportion) * 1rem); color: rgb(34, 34, 34); font-family: Roboto; text-align: center;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Переваги панелі&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;strong style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: calc(var(--h2-size-proportion) * 1rem); padding: 0px; margin: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;UDEN&lt;/span&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/h3&gt;&lt;ul style=&quot;padding: 0px 0px 0px 20px; margin-right: 0px; margin-bottom: 1.43em; margin-left: 0px; color: rgb(85, 85, 85); font-size: 16px;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Маленьке споживання електроенергії.&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Розрахункова потужність в 1,5-2 рази менша, ніж у конвекторів, масляних радіаторів або електрокотлів, відповідно, і витрата електроенергії знижується на 35-40%. Уся система в середньому працює 5-7 годин на добу.&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Наявність енергоощадного теплонакопичувача.&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівачі починають віддавати тепло через 5 хвилин після увімкнення, через 20 хвилин виходять на робочу температуру,&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;а завдяки керамічному теплонакопичувачу охолоджуються впродовж 1,5 годин,&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;продовжуючи випромінювати тепло з нульовою витратою електроенергії!&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Устаткування екологічне&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(не висушує повітря і не створює циркуляції пилу),&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;безпечне&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(український сертифікат і РЄ) і&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;надійне&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(5 років обмінної гарантії, термін безперервної експлуатації – 25 років).&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Легкий і швидкий монтаж&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;без шкоди для ремонту і пошкоджень інтер’єру.&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;','','','','',''),(11,1,'&lt;p&gt;&lt;/p&gt;&lt;div class=&quot;t493__item t493__item_padding-top t-item&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 50px 0px 0px; border: 0px; font-size: medium;&quot;&gt;&lt;div class=&quot;t-cell t-valign_top&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; display: table-cell; vertical-align: top; height: 137.578px;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;t493__textwrapper t-cell t-valign_top&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px 0px 0px 30px; border: 0px; display: table-cell; vertical-align: top; height: 137.578px;&quot;&gt;&lt;div class=&quot;t493__heading t-heading t-heading_sm &quot; field=&quot;title2&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px 0px 15px; border: 0px; line-height: 1.17;&quot;&gt;&lt;p style=&quot;font-size: 13px;&quot;&gt;&lt;b style=&quot;font-size: 14px; font-family: Arial;&quot;&gt;OPTILUX&amp;nbsp;&lt;/b&gt;&lt;span style=&quot;font-size: 14px; font-family: Arial;&quot;&gt;-&amp;nbsp;&lt;/span&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;стильні електричні панелі із натурального природного матеріалу.&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 13px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Сучасна альтернатива традиційним та дорогим системам опалення.&lt;/span&gt;&lt;br&gt;&lt;br style=&quot;box-sizing: content-box; font-size: 18px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Используя инновационные запатентованные технологии, мы создали профессиональные обогреватели нового поколения.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;div class=&quot;t493__heading t-heading t-heading_sm &quot; field=&quot;title2&quot; style=&quot;box-sizing: content-box; font-size: 13px; margin: 0px; padding: 0px 0px 15px; border: 0px; line-height: 1.17;&quot;&gt;&lt;div class=&quot;t493__heading t-heading t-heading_sm &quot; field=&quot;title&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px 0px 15px; border: 0px; line-height: 1.17;&quot;&gt;&lt;font color=&quot;#ff2c01&quot; face=&quot;Roboto, Arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;КОНВЕКЦІЯ&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/div&gt;&lt;div class=&quot;t493__descr t-descr t-descr_xs &quot; field=&quot;descr&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; line-height: 1.55;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Циркуляція повітря відбувається природним чином, що робить цей процес абсолютно безшумним. Нижні шари повітря, прогріваючись, піднімаються вгору, витісняючи холодні шари вниз для прогрівання&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;t493__heading t-heading t-heading_sm &quot; field=&quot;title2&quot; style=&quot;box-sizing: content-box; font-size: 13px; margin: 0px; padding: 0px 0px 15px; border: 0px; line-height: 1.17;&quot;&gt;&lt;font color=&quot;#ff2c01&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;ТЕПЛОВІДДАЧА&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/div&gt;&lt;div class=&quot;t493__descr t-descr t-descr_xs &quot; field=&quot;descr2&quot; style=&quot;box-sizing: content-box; font-size: 13px; margin: 0px; padding: 0px; border: 0px; line-height: 1.55;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Кераміка є кращим теплоакумулюючим матеріалом, тому тепло, що випромінюється, розчиняється в повітрі. Це дозволяє досягти однакової температури навіть у найвіддаленішому кутку приміщення&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/div&gt;&lt;div class=&quot;t493__descr t-descr t-descr_xs &quot; field=&quot;descr2&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; line-height: 1.55;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/div&gt;&lt;div class=&quot;t493__descr t-descr t-descr_xs &quot; field=&quot;descr2&quot; style=&quot;box-sizing: content-box; font-size: 13px; margin: 0px; padding: 0px; border: 0px; line-height: 1.55;&quot;&gt;&lt;div class=&quot;t493__heading t-heading t-heading_sm &quot; field=&quot;title3&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px 0px 15px; border: 0px; line-height: 1.17;&quot;&gt;&lt;font color=&quot;#ff2c01&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;ІНФРАЧЕРВОНЕ ВИПРОМІНЮВАННЯ&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/div&gt;&lt;div class=&quot;t493__descr t-descr t-descr_xs &quot; field=&quot;descr3&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; line-height: 1.55;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Промені інфрачервоного випромінювання практично не розсіюються у повітрі, а досягають предметів та людей, нагріваючись, передають тепло в приміщення. У цьому не пересушують повітря.&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;','','','','','');
/*!40000 ALTER TABLE `oc_manufacturer_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer_to_layout`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer_to_layout` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer_to_layout`
--

LOCK TABLES `oc_manufacturer_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_to_layout` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_to_layout` VALUES (11,0,0),(12,0,0),(13,0,0);
/*!40000 ALTER TABLE `oc_manufacturer_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

LOCK TABLES `oc_manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_to_store` VALUES (11,0),(12,0),(13,0);
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_marketing`
--

DROP TABLE IF EXISTS `oc_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_marketing`
--

LOCK TABLES `oc_marketing` WRITE;
/*!40000 ALTER TABLE `oc_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_modification`
--

LOCK TABLES `oc_modification` WRITE;
/*!40000 ALTER TABLE `oc_modification` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_modification_backup`
--

DROP TABLE IF EXISTS `oc_modification_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_modification_backup` (
  `backup_id` int(11) NOT NULL AUTO_INCREMENT,
  `modification_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `xml` mediumtext NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`backup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_modification_backup`
--

LOCK TABLES `oc_modification_backup` WRITE;
/*!40000 ALTER TABLE `oc_modification_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_modification_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_module`
--

LOCK TABLES `oc_module` WRITE;
/*!40000 ALTER TABLE `oc_module` DISABLE KEYS */;
INSERT INTO `oc_module` VALUES (30,'Category','banner','{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"0\"}'),(29,'Home Page','carousel','{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),(28,'Home Page','featured','{\"name\":\"Home Page\",\"product_name\":\"\",\"product\":[\"52\",\"58\",\"62\",\"55\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),(27,'Home Page','slideshow','{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),(31,'Banner 1','banner','{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),(32,'Останні статті','blog_latest','{\"name\":\"\\u041f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438\",\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),(33,'Рекомендуемые статьи','blog_featured','{\"name\":\"\\u0420\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u043c\\u044b\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438\",\"article_name\":\"\",\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"0\"}'),(34,'Рекомендовані статті у товарі, категорії та виробнику','featured_article','{\"name\":\"\\u0420\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u043c\\u044b\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438 \\u0432 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0435, \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438 \\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\",\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),(35,'Рекомендовані товари в категорії та виробники','featured_product','{\"name\":\"\\u0420\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u043c\\u044b\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b \\u0432 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438 \\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\",\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),(36,'Хіти продажів','bestseller','{\"name\":\"\\u0425\\u0456\\u0442\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0456\\u0432\",\"limit\":\"5\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),(38,'Хіти продажів','bestseller','{\"name\":\"\\u0425\\u0456\\u0442\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0456\\u0432\",\"limit\":\"5\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');
/*!40000 ALTER TABLE `oc_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_opc`
--

DROP TABLE IF EXISTS `oc_opc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_opc` (
  `key` text NOT NULL,
  `license_key` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_opc`
--

LOCK TABLES `oc_opc` WRITE;
/*!40000 ALTER TABLE `oc_opc` DISABLE KEYS */;
INSERT INTO `oc_opc` VALUES ('local_key','11D00-16720-61156-2A507-FE5D0');
/*!40000 ALTER TABLE `oc_opc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_opc_abandoned_order`
--

DROP TABLE IF EXISTS `oc_opc_abandoned_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_opc_abandoned_order` (
  `abandoned_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `email` varchar(765) DEFAULT NULL,
  `email_sent_date` datetime DEFAULT NULL,
  `telephone` varchar(765) DEFAULT NULL,
  `id_sms` varchar(765) DEFAULT NULL,
  `firstname` varchar(96) DEFAULT NULL,
  `lastname` varchar(96) DEFAULT NULL,
  `products` text DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `viewed` int(1) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`abandoned_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_opc_abandoned_order`
--

LOCK TABLES `oc_opc_abandoned_order` WRITE;
/*!40000 ALTER TABLE `oc_opc_abandoned_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_opc_abandoned_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_opc_custom_field`
--

DROP TABLE IF EXISTS `oc_opc_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_opc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(15) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `action_field` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_opc_custom_field`
--

LOCK TABLES `oc_opc_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_opc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_opc_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_opc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_opc_custom_field_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_opc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_opc_custom_field_customer_group`
--

LOCK TABLES `oc_opc_custom_field_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_opc_custom_field_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_opc_custom_field_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_opc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_opc_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_opc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `text_error` text NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_opc_custom_field_description`
--

LOCK TABLES `oc_opc_custom_field_description` WRITE;
/*!40000 ALTER TABLE `oc_opc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_opc_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_opc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_opc_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_opc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_opc_custom_field_value`
--

LOCK TABLES `oc_opc_custom_field_value` WRITE;
/*!40000 ALTER TABLE `oc_opc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_opc_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_opc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_opc_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_opc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_opc_custom_field_value_description`
--

LOCK TABLES `oc_opc_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `oc_opc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_opc_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option`
--

LOCK TABLES `oc_option` WRITE;
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
INSERT INTO `oc_option` VALUES (1,'radio',1),(2,'checkbox',1),(4,'text',3),(5,'select',2),(6,'textarea',3),(7,'file',6),(8,'date',7),(9,'time',8),(10,'datetime',9),(11,'select',10),(12,'date',11),(13,'checkbox',1);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_description`
--

LOCK TABLES `oc_option_description` WRITE;
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
INSERT INTO `oc_option_description` VALUES (1,1,'Перемикач'),(2,1,'прапорець'),(4,1,'Текст'),(6,1,'Примітка покупця'),(8,1,'Дата'),(7,1,'Файл'),(5,1,'Колір'),(9,1,'Час'),(10,1,'Дата та час'),(12,1,'Дата доставки'),(11,1,'Розмір'),(13,1,'Ніжкі');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value`
--

LOCK TABLES `oc_option_value` WRITE;
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
INSERT INTO `oc_option_value` VALUES (43,1,'',3),(32,1,'',1),(45,2,'',4),(44,2,'',3),(42,5,'',4),(41,5,'',3),(40,5,'',2),(39,5,'',1),(31,1,'',2),(24,2,'',2),(23,2,'',1),(46,11,'',1),(47,11,'',2),(48,11,'',3),(49,13,'catalog/1.jpg',1);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value_description`
--

LOCK TABLES `oc_option_value_description` WRITE;
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
INSERT INTO `oc_option_value_description` VALUES (43,1,1,'Великий'),(32,1,1,'Маленький'),(45,1,2,'Прапорець 4'),(44,1,2,'Прапорець 3'),(31,1,1,'Середній'),(42,1,5,'Мармур'),(41,1,5,'Бежевий'),(40,1,5,'Білий'),(39,1,5,'Сірий'),(24,1,2,'Прапорець 2'),(23,1,2,'Прапорець 1'),(48,1,11,'Великий'),(47,1,11,'Середній'),(46,1,11,'Маленький'),(49,1,13,'так');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT 0,
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT 1.00000000,
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order`
--

LOCK TABLES `oc_order` WRITE;
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_history`
--

LOCK TABLES `oc_order_history` WRITE;
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_option`
--

LOCK TABLES `oc_order_option` WRITE;
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_product`
--

LOCK TABLES `oc_order_product` WRITE;
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring`
--

LOCK TABLES `oc_order_recurring` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring_transaction`
--

LOCK TABLES `oc_order_recurring_transaction` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_shipment`
--

DROP TABLE IF EXISTS `oc_order_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_shipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_shipment`
--

LOCK TABLES `oc_order_shipment` WRITE;
/*!40000 ALTER TABLE `oc_order_shipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_status`
--

LOCK TABLES `oc_order_status` WRITE;
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` VALUES (2,1,'В обробці'),(3,1,'Доставлено'),(7,1,'Скасовано'),(5,1,'Завершено'),(8,1,'Повернення'),(9,1,'Скасування та анулювання'),(10,1,'Помилкове'),(11,1,'Відшкодоване'),(12,1,'Змінене'),(13,1,'Повне повернення'),(1,1,'Очікування'),(15,1,'Оброблене'),(14,1,'Не актуальне'),(16,1,'Анульоване');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_total`
--

LOCK TABLES `oc_order_total` WRITE;
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_voucher`
--

LOCK TABLES `oc_order_voucher` WRITE;
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `points` int(8) NOT NULL DEFAULT 0,
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `weight_class_id` int(11) NOT NULL DEFAULT 0,
  `length` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `width` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `height` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `length_class_id` int(11) NOT NULL DEFAULT 0,
  `subtract` tinyint(1) NOT NULL DEFAULT 1,
  `minimum` int(11) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `noindex` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product`
--

LOCK TABLES `oc_product` WRITE;
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` VALUES (64,'Heats-200','Heats-200','','','','','','м.Кропівницький',900,7,'catalog/Сушарка_Heats/11.jpg',12,1,3392.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,3,'2023-10-30 12:19:21','2023-11-10 11:46:32',0),(61,'Heats-700','Heats-700','','','','','','м.Кропівницький',900,7,'catalog/HEATS.jpg',12,1,4278.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,4,'2023-10-30 10:34:45','2023-11-10 11:03:49',0),(62,'UDEN-700','UDEN-700','','','','','','м.Кропівницький',900,7,'catalog/UDEN.jpg',13,1,5322.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,5,1,29,'2023-10-30 10:39:21','2023-11-10 12:01:02',0),(63,'РК330НВ ','РК330НВ ','','','','','','м.Кропівницький',900,7,'catalog/Сушарки_Optilux/optisush11.jpg',11,1,3335.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,7,'2023-10-30 10:53:37','2023-11-10 11:53:32',0),(57,'РК430НВ ','РК430НВ ','','','','','','м.Кропівницький',900,7,'catalog/u11.jpg',11,1,3967.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,15,'2023-10-30 09:54:04','2023-11-10 11:25:22',0),(58,'Heats-500','Heats-500','','','','','','м.Кропівницький',900,7,'catalog/HEATS.jpg',12,1,4232.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,58,'2023-10-30 10:10:32','2023-11-10 11:17:50',0),(59,'UDEN-500','UDEN-500','','','','','','м.Кропівницький',900,7,'catalog/UDEN.jpg',13,1,4521.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,3,'2023-10-30 10:18:42','2023-11-10 11:18:59',0),(60,'К700НВ',' К700НВ','','','','','','м.Кропівницький',900,7,'catalog/u11.jpg',11,1,4502.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,5,'2023-10-30 10:28:32','2023-11-10 15:57:21',0),(42,'UDEN-250','UDEN-250','','','','','','м.Кропівницький',900,7,'catalog/u250-1.jpg',13,1,2945.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,55,'2009-02-03 21:07:37','2023-11-10 11:32:45',0),(51,'РК1400НВ ','К1400НВ ','','','','','','м.Кропівницький',900,7,'catalog/u11.jpg',11,1,5249.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,2,1,9,'2023-10-29 17:48:27','2023-11-09 21:59:42',0),(52,'РК300НВ ','РК300НВ ','','','','','','м.Кропівницький',900,7,'catalog/u11.jpg',11,1,2304.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,90,'2023-10-29 18:06:24','2023-11-10 11:29:28',0),(53,'Heats-200','Heats-200','','','','','','м.Кропівницький',900,7,'catalog/HEATS.jpg',12,1,2921.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,16,'2023-10-29 18:39:21','2023-11-10 11:36:36',0),(54,'РК1100НВ ','','','','','','','м.Кропівницький',900,7,'catalog/u11.jpg',11,1,5336.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,1,1,24,'2023-10-30 09:13:32','2023-11-09 21:59:59',0),(55,'Heats-1000','','','','','','','м.Кропівницький',900,7,'catalog/HEATS.jpg',12,1,5968.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,83,'2023-10-30 09:31:03','2023-11-10 10:42:21',0),(56,'UDEN-1000','','','','','','','м.Кропівницький',900,7,'catalog/UDEN.jpg',13,1,7070.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,4,1,6,'2023-10-30 09:39:22','2023-11-10 10:56:10',0),(50,'РК1500НВ ','','','','','','','м.Кропівницький',900,7,'catalog/u11.jpg',11,1,7739.0000,0,0,'2023-10-25',30.00000000,1,1200.00000000,85.00000000,600.00000000,2,0,1,1,1,8,'2023-10-29 16:15:55','2023-11-09 21:58:53',0),(82,'К330НВ ','К330НВ ','','','','','','м.Кропівницький',900,7,'catalog/Сушарки_Optilux/optisush11.jpg',11,1,2800.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,0,'2023-11-10 11:49:12','2023-11-10 11:52:29',0),(65,'UDEN-900','UDEN-900','','','','','','м.Кропівницький',900,7,'catalog/UDEN.jpg',13,1,7576.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,3,'2023-11-01 12:48:21','2023-11-10 10:53:07',0),(66,'К1500НВ ','К1500НВ','','','','','','м.Кропівницький',900,7,'catalog/u11.jpg',11,1,7204.0000,0,0,'2023-10-25',30.00000000,1,1200.00000000,85.00000000,600.00000000,2,0,1,2,1,0,'2023-11-09 21:19:12','2023-11-09 21:59:17',0),(67,'РК1400НВ ','','','','','','','м.Кропівницький',900,7,'catalog/u11.jpg',11,1,5784.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,1,1,0,'2023-11-09 21:25:09','2023-11-09 21:59:31',0),(68,'К1100НВ ','К1100НВ ','','','','','','м.Кропівницький',900,7,'catalog/u11.jpg',11,1,4801.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,2,1,0,'2023-11-09 21:34:28','2023-11-09 22:00:12',0),(69,'Heats-1000','Heats-1000','','','','','','м.Кропівницький',900,7,'catalog/HEATS.jpg',12,1,4761.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,0,'2023-11-10 10:40:15','2023-11-10 10:58:15',0),(70,'UDEN-1000','UDEN-1000','','','','','','м.Кропівницький',900,7,'catalog/UDEN.jpg',13,1,8036.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,3,'2023-11-10 10:44:45','2023-11-10 10:47:39',0),(71,'UDEN-900','UDEN-900','','','','','','м.Кропівницький',900,7,'catalog/UDEN.jpg',13,1,6611.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,4,1,0,'2023-11-10 10:53:16','2023-11-10 10:55:33',0),(72,'Heats-700','','','','','','','м.Кропівницький',900,7,'catalog/HEATS.jpg',12,1,5083.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,1,'2023-11-10 10:59:19','2023-11-10 11:00:52',0),(73,'РК700НВ','РК700НВ','','','','','','м.Кропівницький',900,7,'catalog/u11.jpg',11,1,4979.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,3,'2023-11-10 11:07:29','2023-11-10 15:57:05',0),(74,'UDEN-700','UDEN-700','','','','','','м.Кропівницький',900,7,'catalog/UDEN.jpg',13,1,6287.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,0,'2023-11-10 11:12:30','2023-11-10 11:13:46',0),(75,'Heats-500','Heats-500','','','','','','м.Кропівницький',900,7,'catalog/HEATS.jpg',12,1,3312.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,0,'2023-11-10 11:15:15','2023-11-10 11:17:20',0),(76,'UDEN-500','','','','','','','м.Кропівницький',900,7,'catalog/UDEN.jpg',13,1,5486.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,1,'2023-11-10 11:18:23','2023-11-10 11:20:28',0),(77,'К430НВ ','К430НВ ','','','','','','м.Кропівницький',900,7,'catalog/u11.jpg',11,1,3432.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,1,'2023-11-10 11:21:48','2023-11-10 11:24:34',0),(78,'К300НВ ','К300НВ ','','','','','','м.Кропівницький',900,7,'catalog/u11.jpg',11,1,1673.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,4,1,0,'2023-11-10 11:26:07','2023-11-10 11:28:49',0),(79,'UDEN-250','UDEN-250','','','','','','м.Кропівницький',900,7,'catalog/u250-1.jpg',13,1,3910.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,0,'2023-11-10 11:30:04','2023-11-10 11:32:23',0),(80,'Heats-200','Heats-200','','','','','','м.Кропівницький',900,7,'catalog/HEATS.jpg',12,1,2139.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,2,1,21,'2023-11-10 11:33:10','2023-11-10 11:47:58',0),(81,'Heats-200 ','Heats-200 ','','','','','','м.Кропівницький',900,7,'catalog/Сушарка_Heats/11.jpg',12,1,2587.0000,0,0,'2023-10-25',0.00000000,1,0.00000000,0.00000000,0.00000000,2,0,1,3,1,0,'2023-11-10 11:41:42','2023-11-10 11:45:14',0);
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_attribute`
--

LOCK TABLES `oc_product_attribute` WRITE;
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
INSERT INTO `oc_product_attribute` VALUES (50,5,1,'до 35м2'),(50,6,1,'1200х600х85'),(42,8,1,'250 Вт'),(42,7,1,'5 кг.'),(42,6,1,'163х975х14'),(42,5,1,'до 5м2'),(50,8,1,'1500 Вт.'),(52,5,1,'до 5м2'),(50,7,1,'30 кг.'),(51,8,1,'1400 Вт'),(51,7,1,'21 кг.'),(51,6,1,'600х600х85'),(51,5,1,'27м2 - 35м2'),(52,6,1,'300х600х50'),(52,7,1,'8 кг.'),(52,8,1,'300 Вт'),(53,8,1,'200 Вт'),(53,7,1,'5кг.'),(53,6,1,'600х300х15'),(53,5,1,'до 5м2'),(54,7,1,'18 кг.'),(54,6,1,'600х600х70'),(54,5,1,'до 28м2'),(55,8,1,'1000 Вт'),(55,7,1,'24 кг.'),(55,6,1,'1200х600х15'),(56,5,1,'до 20м2'),(56,6,1,'594х1200х14'),(56,7,1,'20 кг.'),(57,6,1,'600х600х50'),(57,7,1,'15 кг.'),(57,8,1,'430 Вт'),(58,7,1,'12 кг.'),(58,6,1,'600х600х15'),(58,5,1,'до 10м2'),(55,5,1,'до 20м2'),(58,8,1,'500 Вт'),(59,7,1,'11 кг.'),(59,6,1,'475х800х14'),(59,5,1,'до 10м2'),(60,7,1,'15 кг.'),(60,6,1,'600х600х50'),(60,5,1,'до 18м2'),(61,6,1,'900х600х15'),(61,7,1,'17 кг.'),(61,8,1,'700 Вт'),(62,6,1,'475х978х14'),(62,7,1,'13 кг.'),(62,8,1,'700 Вт'),(56,8,1,'1000 Вт'),(63,7,1,'6 кг.'),(63,6,1,'600х300х20'),(63,5,1,'до 5м2'),(64,8,1,'200 Вт'),(64,7,1,'5кг.'),(64,6,1,'300х600х15'),(57,5,1,'до 12м2'),(62,5,1,'до 15м2'),(65,8,1,'900Вт'),(65,7,1,'16 кг.'),(65,6,1,'475х1200х14 (35)'),(65,5,1,'до 18м2'),(54,8,1,'1100 Вт'),(61,5,1,'до 15м2'),(60,8,1,'700 Вт'),(59,8,1,'500 Вт'),(63,8,1,'330 Вт'),(66,8,1,'1500 Вт.'),(66,7,1,'30 кг.'),(66,6,1,'1200х600х85'),(66,5,1,'до 35м2'),(67,8,1,'1400 Вт'),(67,7,1,'21 кг.'),(67,6,1,'600х600х85'),(68,6,1,'600х600х70'),(68,7,1,'18 кг.'),(68,8,1,'1100 Вт'),(67,5,1,'27м2 - 35м2'),(68,5,1,'до 28м2'),(64,5,1,'до 5м2'),(69,5,1,'до 20м2'),(69,6,1,'1200х600х15'),(69,7,1,'24 кг.'),(69,8,1,'1000 Вт'),(70,6,1,'594х1200х14'),(70,7,1,'20 кг.'),(70,5,1,'до 20м2'),(70,8,1,'1000 Вт'),(71,8,1,'900Вт'),(71,6,1,'475х1200х14 (35)'),(71,7,1,'16 кг.'),(71,5,1,'до 18м2'),(72,6,1,'900х600х15'),(72,7,1,'17 кг.'),(72,8,1,'700 Вт'),(72,5,1,'до 15м2'),(73,6,1,'600х600х50'),(73,7,1,'15 кг.'),(73,8,1,'700 Вт'),(73,5,1,'до 18м2'),(74,7,1,'13 кг.'),(74,6,1,'475х978х14'),(74,5,1,'до 15м2'),(74,8,1,'700 Вт'),(75,7,1,'12 кг.'),(75,6,1,'600х600х15'),(75,5,1,'до 10м2'),(75,8,1,'500 Вт'),(76,7,1,'11 кг.'),(76,6,1,'475х800х14'),(76,5,1,'до 10м2'),(76,8,1,'500 Вт'),(77,7,1,'15 кг.'),(77,6,1,'600х600х50'),(77,5,1,'до 12м2'),(77,8,1,'430 Вт'),(78,7,1,'8 кг.'),(78,6,1,'300х600х50'),(78,5,1,'до 5м2'),(78,8,1,'300 Вт'),(79,6,1,'163х975х14'),(79,7,1,'5 кг.'),(79,8,1,'250 Вт'),(79,5,1,'до 5м2'),(80,8,1,'200 Вт'),(80,6,1,'600х300х15'),(80,7,1,'5кг.'),(81,6,1,'300х600х15'),(81,7,1,'5кг.'),(81,5,1,'до 5м2'),(81,8,1,'200 Вт'),(80,5,1,'до 5м2'),(82,6,1,'600х300х20'),(82,7,1,'6 кг.'),(82,8,1,'330 Вт'),(82,5,1,'до 5м2');
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_description`
--

LOCK TABLES `oc_product_description` WRITE;
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` VALUES (51,1,'Optilux К1400НВ (без терморегулятора)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;Обігрів 27-32м2. ДОСТАВКА - &lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;БЕЗКОШТОВНО!&lt;/font&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;b&gt;Моделі: К1400НВ&lt;/b&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Електро-керамічний обігрівач поєднує в собі два принципи обігріву: конвективний (коли прогрівається повітря завдяки своїй природній циркуляції) та інфрачервоними променями (ІЧ – теплові промені нагрівають предмети, що знаходяться в приміщенні. Завдяки чому вони також стають джерелами тіпла.) &lt;br&gt;Останні у свою чергу подібні з теплом від глиняної печі та дуже благотворно впливають на весь організм людини. Останнім часом популярність, інфрачервоні сауни також використовують інфрачервоні промені для оздоровлення організму і навіть лікування деяких захворювань.&lt;/font&gt;&lt;span style=&quot;color: rgb(41, 41, 41); font-family: Arial;&quot;&gt;Зазначений тип обігрівача комплектується дротом з вилкою.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;br&gt;&lt;b&gt;Перевагою інфрачервоних обігрівачів є:&lt;/b&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Елегантний вигляд обігрівачів підійде до будь-яких інтер\'єрів.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Обладнання виготовлене виключно із чистих природних матеріалів.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Термін експлуатації 25 – 30 років&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Не вимагає вентиляції, немає загрози промерзання системи, якщо вона відключена.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Швидкий та легкий монтаж без пошкоджень ремонту.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Повна відсутність рідкого теплоносія, трубопровід, розширювальних баків та інших незручностей.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;На відміну від конвекційних систем не висушує повітря, не виділяє продукти горіння та водяної пари, не створює протягів та циркуляції пилу, усуває вогкість та плісняву.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Устаткування сертифіковане в Україні.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;b&gt;Характеристика:&lt;/b&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Потужність ― 1400 Вт;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Напруга та частота струму ― 220 В/50 Гц;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Габаритні розміри, мм (ШхДхТ) - 600х600х85;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Площа обігріву – 27-32 кв.м.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Робоча температура поверхні панелі - 80 градусів;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Колір плитки ― Кремовий; Сірий&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Провід з вилкою&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Маса, кг - 21;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Спосіб встановлення - настінний.&lt;/font&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(57,1,'Optilux РК430НВ (з терморегулятором)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;Обігрів до 12м2. ДОСТАВКА - &lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;БЕЗКОШТОВНО!&lt;/font&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;Моделі: РК430НВ&lt;/b&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Електро-керамічний обігрівач поєднує в собі два принципи обігріву: конвективний (коли прогрівається повітря завдяки своїй природній циркуляції) та інфрачервоними променями (ІЧ – теплові промені нагрівають предмети, що знаходяться в приміщенні. Завдяки чому вони також стають джерелами тіла.) Останні у свою чергу подібні з теплом від глиняної печі та дуже благотворно впливають на весь організм людини. Опалювальна панель РК 430 НВ має вбудований терморегулятор, який відповідає не лише за температуру повітря в приміщенні, але й за температуру обігрівача. Він призначений для створення автономної системи опалення. Користувач задає собі необхідну температуру в приміщенні. У стандартну комплектацію входить провід із вилкою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Перевагою інфрачервоних обігрівачів&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Елегантний вигляд обігрівачів підійде до будь-яких інтер\'єрів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Просте керування системою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Регулює індивідуальну температуру в кожній кімнаті з використанням терморегулятора.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обладнання виготовлене виключно із чистих природних матеріалів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Термін експлуатації 25 – 30 років&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Не вимагає вентиляції, немає загрози промерзання системи, якщо вона відключена.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Швидкий та легкий монтаж без пошкоджень ремонту.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Повна відсутність рідкого теплоносія, трубопровід, розширювальних баків та інших незручностей.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;На відміну від конвекційних систем не висушує повітря, не виділяє продукти горіння та водяної пари, не створює протягів та циркуляції пилу, усуває вогкість та плісняву.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Устаткування сертифіковане в Україні.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Характеристика:&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Потужність - 430 Вт;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Напруга та частота струму ― 220 В/50 Гц;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Габаритні розміри, мм (ШхДхТ) - 600х600х50;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Площа обігріву – 10-12 кв.м.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Робоча температура поверхні панелі - 80 градусів;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Колір плитки Сірий; Кремовий&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Провід з вилкою&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Терморегулятор&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Маса, кг - 15;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Спосіб встановлення - настінний;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(52,1,'Optilux РК300НВ (з терморегулятором)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;Обігрів до 5м2. ДОСТАВКА - &lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;БЕЗКОШТОВНО!&lt;/font&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;Моделі: РК300НВ&lt;/b&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Електро-керамічний обігрівач поєднує в собі два принципи обігріву: конвективний (коли прогрівається повітря завдяки своїй природній циркуляції) та інфрачервоними променями (ІЧ – теплові промені нагрівають предмети, що знаходяться в приміщенні. Завдяки чому вони також стають джерелами тіла.) Останні у свою чергу подібні з теплом від глиняної печі та дуже благотворно впливають на весь організм людини. Опалювальна панель РК 300 НВ має вбудований терморегулятор, який відповідає не лише за температуру повітря в приміщенні, але й за температуру обігрівача. Він призначений для створення автономної системи опалення. Користувач задає собі необхідну температуру в приміщенні. У стандартну комплектацію входить провід із вилкою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Перевагою інфрачервоних обігрівачів&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Елегантний вигляд обігрівачів підійде до будь-яких інтер\'єрів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Просте керування системою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Регулює індивідуальну температуру в кожній кімнаті з використанням терморегулятора.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обладнання виготовлене виключно із чистих природних матеріалів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Термін експлуатації 25 – 30 років&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Не вимагає вентиляції, немає загрози промерзання системи, якщо вона відключена.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Швидкий та легкий монтаж без пошкоджень ремонту.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Повна відсутність рідкого теплоносія, трубопровід, розширювальних баків та інших незручностей.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;На відміну від конвекційних систем не висушує повітря, не виділяє продукти горіння та водяної пари, не створює протягів та циркуляції пилу, усуває вогкість та плісняву.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Устаткування сертифіковане в Україні.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Характеристики моделей:&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Потужність - 300 Вт;&lt;/p&gt;&lt;p&gt;Напруга та частота струму ― 220 В/50 Гц;&lt;/p&gt;&lt;p&gt;Габаритні розміри, мм (ШхДхТ) - 600х300х50;&lt;/p&gt;&lt;p&gt;Площа обігріву – 5-8 кв.м.&lt;/p&gt;&lt;p&gt;Робоча температура поверхні панелі - 80 градусів;&lt;/p&gt;&lt;p&gt;Колір плитки-білий&lt;/p&gt;&lt;p&gt;Провід з вилкою&lt;/p&gt;&lt;p&gt;Терморегулятор&lt;/p&gt;&lt;p&gt;Маса, кг - 8;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;Спосіб встановлення - настінний&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(53,1,'Heats-200 (з терморегулятором)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрів до 5м2. ДОСТАВКА - &lt;/span&gt;&lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;БЕЗКОШТОВНО!&lt;/span&gt;&lt;/font&gt;&lt;/b&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(43, 42, 41); font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot; style=&quot;&quot;&gt;&lt;b&gt;Керамічний обігрівач Heats 200 Loft&lt;/b&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;js-store-prod-all-text&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; color: rgb(43, 42, 41); font-family: &amp;quot;Roboto Condensed&amp;quot;; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Керамічний обігрівач Heats 200 Loft - це стильний і ефективний спосіб забезпечити комфортну температуру у ванній кімнаті. Завдяки компактним розмірам та міцній конструкції, цей обігрівач ідеально підходить для використання в ванних кімнатах та санвузлах.&lt;/span&gt;&lt;br style=&quot;box-sizing: content-box;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Керамічна технологія нагріву забезпечує швидкий і рівномірний розподіл тепла в приміщенні, що дозволяє економити електроенергію.&lt;/span&gt;&lt;br style=&quot;box-sizing: content-box;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Heats 200 має стильний дизайн, який ідеально вписується в інтер\'єр будь-якого приміщення.&lt;/span&gt;&lt;br style=&quot;box-sizing: content-box;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Він легко монтується на стіні або на підлозі. Обігрівач також оснащений захистом від перегріву, що забезпечує безпечну і тривалу роботу.&lt;/span&gt;&lt;/div&gt;&lt;div class=&quot;js-store-prod-all-charcs&quot; style=&quot;box-sizing: content-box; margin: 20px 0px 0px; padding: 0px; border: 0px; color: rgb(43, 42, 41); font-family: &amp;quot;Roboto Condensed&amp;quot;; font-size: 14px;&quot;&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Потужність: 200 Вт&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Об\'єм обігріву: 10 м3&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Напруга живлення: 220 В&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Робоча t° поверхні: 75-85 °C&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Колір: Loft&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Розміри: 600Х300Х15 мм&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Вага: 5 кг&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Площа обігріву при основному: 3-5 м²&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Площа обігріву при додатковому: 6 м²&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(69,1,'Heats-1000 (без терморегулятора)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;Обігрів до 20м2. ДОСТАВКА - &lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;БЕЗКОШТОВНО!&lt;/font&gt;&lt;/b&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;Обігрівач Heats 1000 Loft -&lt;/b&gt; це стильний та ефективний спосіб забезпечити комфортну температуру у приміщенні. Завдяки своїм компактним розмірам та міцній конструкції, цей обігрівач можна використовувати як в домашніх умовах, так і в офісі або на робочому місці.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Керамічна технологія нагріву забезпечує швидкий та рівномірний розподіл тепла у приміщенні, що дозволяє економію електроенергії.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Heats 1000 має стильний дизайн, який доповнить інтер\'єр будь-якого приміщення.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Його можна легко встановити на підлозі або на стіні. Обігрівач також оснащений захистом від перегріву, що забезпечує безпечну та тривалу роботу.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;font face=&quot;Arial&quot;&gt;Характеристики:&lt;/font&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Потужність: 1000 Вт&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Об\'єм обігріву: 52 м3&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Напруга живлення: 220 В&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Робоча t° поверхні: 75-85 °C&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Колір: Loft&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Розміри: 1200Х600Х15 мм&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Вага: 24 кг&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Площа обігріву при основному: 16-20 м²&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Площа обігріву при додатковому: 35 м²&lt;/font&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(42,1,'UDEN-250 (без терморегулятора)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрів до 5м2. ДОСТАВКА - &lt;/span&gt;&lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;БЕЗКОШТОВНО!&lt;/span&gt;&lt;/font&gt;&lt;/b&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;strong style=&quot;color: rgb(34, 34, 34); font-family: Roboto; font-size: calc(var(--h2-size-proportion) * 1rem); text-align: center; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Металокерамічна панель UDEN 250&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85); font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Енергоефективні металокерамічні обігрівачі UDEN-S використовують для обігріву найрізноманітніших приміщень: квартир, приватних будинків, об’єктів комерційної нерухомості та соціальної сфери. В основу їхньої роботи покладено принцип прямого нагріву – теплові промені насамперед прогрівають тверді конструкції й тільки потім повітря, зберігаючи його живим і природним. Відчуття комфорту настає за нижчої температури.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;strong style=&quot;color: rgb(34, 34, 34); font-family: Roboto; font-size: calc(var(--h2-size-proportion) * 1rem); text-align: center; padding: 0px; margin: 0px;&quot;&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85); font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівач UDEN-250&amp;nbsp; можна встановлювати в санвузлах, балконах, лоджіях для локального обігріву робочого місця або окремих ділянок приміщення. Ви отримуєте&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;екологічний та економний обігрівач&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;з мінімальним споживанням електрики. В якості основного обігріву&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;він підійде для площі 5 м.кв.&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85); font-family: Roboto;&quot;&gt;&lt;strong style=&quot;color: rgb(34, 34, 34); font-size: calc(var(--h3-size-proportion) * 1rem); text-align: center; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Переваги UDEN-250 універсал/&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85); font-family: Roboto;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;/strong&gt;&lt;/p&gt;&lt;ul style=&quot;padding: 0px 0px 0px 20px; margin-right: 0px; margin-bottom: 1.43em; margin-left: 0px; color: rgb(85, 85, 85); font-family: Roboto; font-size: 16px;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Маленьке споживання електроенергії.&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Розрахункова потужність &amp;nbsp;в 1,5-2 рази менша, ніж у конвекторів, масляних радіаторів або електрокотлів, відповідно, і витрата електроенергії знижується на 35-40%. Уся система в середньому працює 5-7 годин на добу.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Наявність енергоощадного теплонакопичувача.&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;Обігрівачі починають віддавати тепло через 5 хвилин після увімкнення, через 20 хвилин виходять на робочу температуру, а завдяки керамічному теплонакопичувачу охолоджуються впродовж 1,5 годин, продовжуючи випромінювати тепло з нульовою витратою електроенергії!&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Устаткування екологічне&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(не висушує повітря і не створює циркуляції пилу),&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;безпечне&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;(український сертифікат і РЄ) і&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;надійне&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(5 років обмінної гарантії, термін безперервної експлуатації – 25 років).&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Легкий і швидкий монтаж&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;без шкоди для ремонту і пошкоджень інтер’єру.&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(55,1,'Heats-1000 (з терморегулятором)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;Обігрів до 20м2. ДОСТАВКА - &lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;БЕЗКОШТОВНО!&lt;/font&gt;&lt;/b&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;Обігрівач Heats 1000 Loft -&lt;/b&gt; це стильний та ефективний спосіб забезпечити комфортну температуру у приміщенні. Завдяки своїм компактним розмірам та міцній конструкції, цей обігрівач можна використовувати як в домашніх умовах, так і в офісі або на робочому місці.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Керамічна технологія нагріву забезпечує швидкий та рівномірний розподіл тепла у приміщенні, що дозволяє економію електроенергії.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Heats 1000 має стильний дизайн, який доповнить інтер\'єр будь-якого приміщення.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Його можна легко встановити на підлозі або на стіні. Обігрівач також оснащений захистом від перегріву, що забезпечує безпечну та тривалу роботу.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;font face=&quot;Arial&quot;&gt;Характеристики:&lt;/font&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Потужність: 1000 Вт&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Об\'єм обігріву: 52 м3&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Напруга живлення: 220 В&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Робоча t° поверхні: 75-85 °C&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Колір: Loft&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Розміри: 1200Х600Х15 мм&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Вага: 24 кг&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Площа обігріву при основному: 16-20 м²&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Площа обігріву при додатковому: 35 м²&lt;/font&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(56,1,'UDEN-1000 (без терморегулятора)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрів до 20м2. ДОСТАВКА - &lt;/span&gt;&lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;БЕЗКОШТОВНО!&lt;/span&gt;&lt;/font&gt;&lt;/b&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;strong style=&quot;font-size: calc(var(--h2-size-proportion) * 1rem); text-align: center; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Металокерамічна панель UDEN-1000 стандарт&lt;/span&gt;&lt;/strong&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Металокерамічний обігрівач UDEN-1000 “стандарт”, який стане ідеальним джерелом тепла для квартири, будинку, а також будь-яких інших приміщень площею&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;до 20 м.кв.&lt;/span&gt;&lt;/strong&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;UDEN-1000 “стандарт” зможе ефективно опалювати приміщення, такі як, наприклад, спальня, вітальня, офіс, салон, кав’ярня, а також інші приміщення, де потрібне постійне джерело тепла. Його можна використовувати в якості основного обігріву, а також додаткового до вже існуючого.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівач є унікальним у своєму роді. При мінімальному споживанні електроенергії він може охопити велику площу приміщення, порівняно з аналогами.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівач має зручні кріплення, що дають змогу з легкістю розмістити його на стіні, і він не займатиме простір у кімнаті. А якщо місця для розміщення на стіні немає, тоді ви можете встановити обігрівач на спеціальних&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;a href=&quot;https://uden-s.org/uk/shop/nozhki-podstavki/nozhka-stoyka-dlya-uden-1000-500k/&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot; style=&quot;padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; transition: all 0.2s ease-out 0s;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;ніжках-стійках .&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;h3 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); font-size: calc(var(--h3-size-proportion) * 1rem); text-align: center;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Переваги, які ви отримуєте з обігрівачем UDEN-1000 “стандарт”:&lt;/font&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h3&gt;&lt;ul style=&quot;padding: 0px 0px 0px 20px; margin-right: 0px; margin-bottom: 1.43em; margin-left: 0px; font-size: 16px;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot; style=&quot;&quot;&gt;один обігрівач, який зможе прогріти повітря у великому приміщенні до 20 м.кв.;&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;економія на електроенергії;&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;дизайн панелі, який вигідно виглядає в будь-якому інтер’єрі;&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;обмінна гарантія 5 років;&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;безпечне інфрачервоне тепло, яке не спалює кисень.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Інфрачервоний обігрівач UDEN-1000 “стандарт” має всередині керамічний теплонакопичувач, який дає змогу насолоджуватися теплом ще впродовж 1,5 години після вимкнення обігрівача від електромережі. Таким чином панель буде випромінювати тепло не споживаючи електроенергію.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;/strong&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;UDEN 1000 виготовлений з екологічно чистих матеріалів і є безпечним для здоров’я.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong style=&quot;color: rgb(34, 34, 34); font-family: Roboto; font-size: calc(var(--h2-size-proportion) * 1rem); text-align: center; padding: 0px; margin: 0px;&quot;&gt;&lt;/strong&gt;&lt;span style=&quot;font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(58,1,'Heats-500 (з терморегулятором)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;Обігрів до 10м2. ДОСТАВКА - &lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;БЕЗКОШТОВНО!&lt;/font&gt;&lt;/font&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;js-store-prod-all-text&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; color: rgb(43, 42, 41); font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;Обігрівач Heats 500 Loft &lt;/b&gt;- це стильний та ефективний спосіб забезпечити комфортну температуру у приміщенні. Завдяки своїм компактним розмірам та міцної конструкції, цей обігрівач можна використовувати як в домашніх умовах, так і в офісі або на робочому місці.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Керамічна технологія нагріву забезпечує швидкий та рівномірний розподіл тепла у приміщенні, що дозволяє економити електроенергію.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Heats 500 має стильний дизайн, який відмінно доповнить інтер\'єр будь-якого приміщення.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Його легко встановити на підлозі або на стіні. Обігрівач також оснащений захистом від перегріву, що забезпечує безпечну та тривалу роботу.&lt;/font&gt;&lt;/div&gt;&lt;div class=&quot;js-store-prod-all-charcs&quot; style=&quot;box-sizing: content-box; margin: 20px 0px 0px; padding: 0px; border: 0px; color: rgb(43, 42, 41); font-size: 14px;&quot;&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Потужність: 500 Вт&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Об\'єм обігріву: 26 м3&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Напруга живлення: 220 В&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Робоча t° поверхні: 75-85 °C&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Колір: Loft&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Розміри: 600Х600Х15 мм&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Вага: 12 кг&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Площа обігріву при основному: 8-10 м²&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Площа обігріву при додатковому: 20 м²&lt;/font&gt;&lt;/p&gt;&lt;/div&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(59,1,'UDEN-500 (без терморегулятора)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрів до 10м2. ДОСТАВКА - &lt;/span&gt;&lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;БЕЗКОШТОВНО!&lt;/span&gt;&lt;/font&gt;&lt;/b&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/b&gt;&lt;/font&gt;&lt;/span&gt;&lt;strong style=&quot;color: rgb(34, 34, 34); font-family: Roboto; font-size: calc(var(--h2-size-proportion) * 1rem); text-align: center; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Металокерамічна панель UDEN-500 універсал&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Енергоефективні металокерамічні обігрівачі UDEN-500 використовують для обігріву найрізноманітніших приміщень: квартир, приватних будинків, об’єктів комерційної нерухомості та соціальної сфери.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівач UDEN-500&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;екологічний і економний&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;з мінімальним споживанням електрики. В якості основного обігріву&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;він підійде для площі 10 м.кв.&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;В основу його роботи закладено принцип прямого нагріву – теплові промені насамперед прогрівають тверді конструкції і тільки потім повітря, зберігаючи його живим і природним. Відчуття комфорту настає за нижчої температури.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;strong style=&quot;font-size: calc(var(--h3-size-proportion) * 1rem); text-align: center; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Переваги UDEN-500 універсал&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;ul style=&quot;padding: 0px 0px 0px 20px; margin-right: 0px; margin-bottom: 1.43em; margin-left: 0px; font-family: Roboto; font-size: 16px;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Маленьке споживання електроенергії.&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Розрахункова потужність в 1,5-2 рази менша, ніж у конвекторів, масляних радіаторів або електрокотлів, відповідно, і витрата електроенергії знижується на 35-40%. Уся система в середньому працює 5-7 годин на добу.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Наявність енергоощадного теплонакопичувача.&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівачі починають віддавати тепло через 5 хвилин після увімкнення, через 20 хвилин виходять на робочу температуру,&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;а завдяки керамічному теплонакопичувачу охолоджуються впродовж 1,5 годин,&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;продовжуючи випромінювати тепло з нульовою витратою електроенергії!&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Устаткування екологічне&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(не висушує повітря і не створює циркуляції пилу),&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;безпечне&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(український сертифікат і РЄ) і&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;надійне&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp; (5 років обмінної гарантії, термін безперервної експлуатації – 25 років).&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Легкий і швидкий монтаж&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;без шкоди для ремонту і пошкоджень інтер’єру.&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;У стаціонарній системі опалення або з окремими обігрівачами UDEN-S використовують терморегулятори. Їх застосування дає змогу задавати та підтримувати необхідну (індивідуальну) температуру в кожній кімнаті приміщення (1 терморегулятор на кімнату).&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;/p&gt;&lt;h3 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); font-size: calc(var(--h3-size-proportion) * 1rem); font-family: Roboto; text-align: center;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;source srcset=&quot;https://uden-s.org/wp-content/uploads/2020/06/sho-vhodit-v-complect-uden-500-universal-ukr.jpg.webp 1300w, https://uden-s.org/wp-content/uploads/2020/06/sho-vhodit-v-complect-uden-500-universal-ukr-300x138.jpg.webp 300w, https://uden-s.org/wp-content/uploads/2020/06/sho-vhodit-v-complect-uden-500-universal-ukr-1024x473.jpg.webp 1024w, https://uden-s.org/wp-content/uploads/2020/06/sho-vhodit-v-complect-uden-500-universal-ukr-768x354.jpg.webp 768w, https://uden-s.org/wp-content/uploads/2020/06/sho-vhodit-v-complect-uden-500-universal-ukr-1x1.jpg.webp 1w, https://uden-s.org/wp-content/uploads/2020/06/sho-vhodit-v-complect-uden-500-universal-ukr-10x5.jpg.webp 10w, https://uden-s.org/wp-content/uploads/2020/06/sho-vhodit-v-complect-uden-500-universal-ukr-600x277.jpg.webp 600w&quot; sizes=&quot;(max-width: 1300px) 100vw, 1300px&quot; type=&quot;image/webp&quot; style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; text-transform: none; padding: 0px; margin: 0px 0px 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Час роботи&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://uden-s.org/uk/shop/infrakrasnye-obogrevateli/uden-500-pult-du/&quot; style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; background-color: transparent; text-decoration: none; text-decoration-skip-ink: none; cursor: pointer; transition: all 0.2s ease-out 0s; text-transform: none !important;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівача UDEN-500 з вбудованим терморегулятором&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;зводиться до мінімуму і обмежується 8 годинами роботи на добу.&lt;/span&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(60,1,'Optilux К700НВ (без терморегулятора)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;Обігрів 15-18м2. ДОСТАВКА - &lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;БЕЗКОШТОВНО!&lt;/font&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;Моделі: РК700НВ&lt;/b&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Електро-керамічний обігрівач поєднує в собі два принципи обігріву: конвективний (коли прогрівається повітря завдяки своїй природній циркуляції) та інфрачервоними променями (ІЧ – теплові промені нагрівають предмети, що знаходяться в приміщенні. Завдяки чому вони також стають джерелами тіла.) Останні у свою чергу подібні з теплом від глиняної печі та дуже благотворно впливають на весь організм людини. Опалювальна панель РК 700 НВ має вбудований терморегулятор, який відповідає не лише за температуру повітря в приміщенні, але й за температуру обігрівача. Він призначений для створення автономної системи опалення. Користувач задає собі необхідну температуру в приміщенні. У стандартну комплектацію входить провід із вилкою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Перевагою інфрачервоних обігрівачів&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Елегантний вигляд обігрівачів підійде до будь-яких інтер\'єрів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Просте керування системою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Регулює індивідуальну температуру в кожній кімнаті з використанням терморегулятора.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обладнання виготовлене виключно із чистих природних матеріалів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Термін експлуатації 25 – 30 років&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Не вимагає вентиляції, немає загрози промерзання системи, якщо вона відключена.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Швидкий та легкий монтаж без пошкоджень ремонту.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Повна відсутність рідкого теплоносія, трубопровід, розширювальних баків та інших незручностей.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;На відміну від конвекційних систем не висушує повітря, не виділяє продукти горіння та водяної пари, не створює протягів та циркуляції пилу, усуває вогкість та плісняву.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Устаткування сертифіковане в Україні.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Характеристики:&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Потужність - 700 Вт;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Напруга та частота струму ― 220 В/50 Гц;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Габаритні розміри, мм (ШхДхТ) - 600х600х50;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Площа обігріву – 15-18 кв.м.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Робоча температура поверхні панелі - 80 градусів;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Колір плитки ― Кремовий; Сірий&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Провід з вилкою&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Терморегулятор&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Маса, кг - 15;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Спосіб встановлення - настінний;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(62,1,'UDEN-700 (без терморегулятора)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрів до 15м2. ДОСТАВКА - &lt;/span&gt;&lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;БЕЗКОШТОВНО!&lt;/span&gt;&lt;/font&gt;&lt;/b&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;h2 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); font-size: calc(var(--h2-size-proportion) * 1rem); color: rgb(34, 34, 34); text-align: center;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Металокерамічна панель UDEN-700 стандарт&lt;/span&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Енергоефективні металокерамічні обігрівачі UDEN-700 використовують для обігріву найрізноманітніших приміщень: квартир, приватних будинків, об’єктів комерційної нерухомості та соціальної сфери.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівач UDEN-700 можна встановлювати в санвузлах, балконах, лоджіях для локального обігріву робочого місця або окремих ділянок приміщення. Ви отримуєте&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;екологічний та економний обігрівач&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;з мінімальним споживанням електрики. В якості основного обігріву&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;він підійде для площі 15 м.кв.&lt;/span&gt;&lt;/strong&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Комплектація “стандарт” є дуже зручною в разі, якщо потрібно об’єднати кілька таких обігрівачів між собою і розмістити, наприклад, по периметру кімнати в якості основного обігріву.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;В основу їхньої роботи закладено принцип прямого нагріву – теплові промені насамперед прогрівають тверді конструкції і тільки потім повітря, зберігаючи його живим і природним. Відчуття комфорту настає за нижчої температури чим при використанні обігрівачів іншого типу.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;h3 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); font-size: calc(var(--h3-size-proportion) * 1rem); color: rgb(34, 34, 34); font-family: Roboto; text-align: center;&quot;&gt;&lt;em style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;​&lt;/span&gt;&lt;/em&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Переваги УДЕН-700 “стандарт”&lt;/span&gt;&lt;/strong&gt;&lt;/h3&gt;&lt;ul style=&quot;padding: 0px 0px 0px 20px; margin-right: 0px; margin-bottom: 1.43em; margin-left: 0px; color: rgb(85, 85, 85); font-family: Roboto; font-size: 16px;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Маленьке споживання електроенергії.&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Розрахункова потужність в 1,5-2 рази менша, ніж у конвекторів, масляних радіаторів або електрокотлів, відповідно, і витрата електроенергії знижується на 35-40%. Уся система в середньому працює 5-7 годин на добу.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Наявність енергоощадного теплонакопичувача.&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівачі починають віддавати тепло через 5 хвилин після увімкнення, через 20 хвилин виходять на робочу температуру,&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;а завдяки керамічному теплонакопичувачу охолоджуються впродовж 1,5 годин,&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;продовжуючи випромінювати тепло з нульовою витратою електроенергії!&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Устаткування екологічне&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(не висушує повітря і не створює циркуляції пилу),&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;безпечне&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(український сертифікат і РЄ) і&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;надійне&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(5 років обмінної гарантії, термін безперервної експлуатації – 25 років).&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Легкий і швидкий монтаж&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;без шкоди для ремонту і пошкоджень інтер’єру.&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;h3 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); font-size: calc(var(--h3-size-proportion) * 1rem); color: rgb(34, 34, 34); font-family: Roboto; text-align: center;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Особливості&lt;/span&gt;&lt;/strong&gt;&lt;/h3&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85); font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;У стаціонарній системі опалення або з окремими обігрівачами UDEN-S використовують терморегулятори. Їх застосування дає змогу задавати та підтримувати необхідну (індивідуальну) температуру в кожній кімнаті приміщення (1 терморегулятор на кімнату).&lt;/span&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(63,1,'Optilux РК330НВ (сушарка з терморегулятором)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;Обігрів до 5м2. ДОСТАВКА - &lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;БЕЗКОШТОВНО!&lt;/font&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;Моделі: РК330НВ (сушарка)&lt;/b&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Електрообігрівач Optilux РК 330 НВ із сушінням рушників призначений для обігріву невеликих приміщень (ванних кімнат тощо) загальною площею до 6-8 м2. Вона поєднує всі переваги, такі як - економічність, практичність, безпека і крім того обладнана сушаркою для рушників. Це дає додаткову можливість швидкого просушування особистих речей у будь-який час за потреби. Опалювальні панелі РК 330 НВ мають вбудований терморегулятор, що відповідає не лише за температуру повітря в приміщенні, але й за температуру обігрівача. Вони призначені для створення автономної системи опалення. У стандартну комплектацію входить провід із вилкою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Перевагою інфрачервоних обігрівачів&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Елегантний вигляд обігрівачів підійде до будь-яких інтер\'єрів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Просте керування системою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Регулює індивідуальну температуру в кожній кімнаті з використанням терморегулятора.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обладнання виготовлене виключно із чистих природних матеріалів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Термін експлуатації 25 – 30 років&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Не вимагає вентиляції, немає загрози промерзання системи, якщо вона відключена.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Швидкий та легкий монтаж без пошкоджень ремонту.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Повна відсутність рідкого теплоносія, трубопровід, розширювальних баків та інших незручностей.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;На відміну від конвекційних систем не висушує повітря, не виділяє продукти горіння та водяної пари, не створює протягів та циркуляції пилу, усуває вогкість та плісняву.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Устаткування сертифіковане в Україні.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Характеристики:&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Потужність - 330 Вт;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Напруга та частота струму ― 220 В/50 Гц;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Габаритні розміри, мм (ШхДхТ) - 600х300х20;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Площа обігріву – 6-8 кв.м.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Робоча температура поверхні панелі - 55 градусів;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Колір плитки ― Білий&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Провід з вилкою&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Маса, кг - 6;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Спосіб встановлення - настінний;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(65,1,'UDEN-900 (з терморегулятором)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрів до 20м2. ДОСТАВКА - &lt;/span&gt;&lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;БЕЗКОШТОВНО!&lt;/span&gt;&lt;/font&gt;&lt;/b&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;strong style=&quot;font-size: calc(var(--h2-size-proportion) * 1rem); text-align: center; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Металокерамічна панель UDEN-900 стандарт&lt;/span&gt;&lt;/strong&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Металокерамічний обігрівач UDEN-900 “універсал”, який стане ідеальним джерелом тепла для квартири, будинку, а також будь-яких інших приміщень площею&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;до 18 м.кв.&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;UDEN-900 “універсал” зможе ефективно опалювати приміщення, такі як, наприклад, спальня, вітальня, офіс, салон, кав’ярня, а також інші приміщення, де потрібне постійне джерело тепла. Його можна використовувати в якості основного обігріву, а також додаткового до вже існуючого.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівач є унікальним у своєму роді. При мінімальному споживанні електроенергії він може охопити велику площу приміщення, порівняно з аналогами.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівач має зручні кріплення, що дають змогу з легкістю розмістити його на стіні, і він не займатиме простір у кімнаті. А якщо місця для розміщення на стіні немає, тоді ви можете встановити обігрівач на&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;a href=&quot;https://uden-s.org/uk/shop/nozhki-podstavki/nozhki-universalnye/&quot; style=&quot;padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; transition: all 0.2s ease-out 0s;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;універсальних ніжках&lt;/span&gt;&lt;/a&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;, які спеціально для цього призначені.&lt;/span&gt;&lt;/p&gt;&lt;h3 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); font-size: calc(var(--h3-size-proportion) * 1rem); font-family: Roboto; text-align: center;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Переваги, які ви отримуєте з обігрівачем UDEN-900 “універсал”:&lt;/span&gt;&lt;/strong&gt;&lt;/h3&gt;&lt;ul style=&quot;padding: 0px 0px 0px 20px; margin-right: 0px; margin-bottom: 1.43em; margin-left: 0px; font-family: Roboto; font-size: 16px;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;один обігрівач, який зможе прогріти повітря у великому приміщенні до 18 м.кв.;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;економія на електроенергії;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;дизайн панелі, який вигідно виглядає в будь-якому інтер’єрі;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;обмінна гарантія 5 років;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;безпечне інфрачервоне тепло, яке не спалює кисень.&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Інфрачервоний обігрівач UDEN-900 “універсал” має всередині керамічний теплонакопичувач, який дає змогу насолоджуватися теплом ще впродовж 1.5 години після вимкнення обігрівача від електромережі. Таким чином панель буде випромінювати тепло не споживаючи електроенергію.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;UDEN 900 виготовлений з екологічно чистих матеріалів і є безпечним для здоров’я.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85); font-family: Roboto;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(66,1,'Optilux К1500НВ (без терморегулятора)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;До 35м2. ДОСТАВКА - &lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;БЕЗКОШТОВНО!&lt;/font&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;&lt;b style=&quot;color: rgb(41, 41, 41);&quot;&gt;Моделі&lt;/b&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;: К 1500 НВ Електрокерамічний нагрівач поєднує в собі два принципи обігрівання: конвективне (коли прогрівається повітря завдяки своїй природній циркуляції) й інфрачервоним променям (ІК — теплові промені нагрівають предмети, що містяться в приміщенні. Завдяки чому вони також стають джерелами тіла.) Останні так само схожі з теплом від глиняної печі та дуже сприятливо впливають на весь організм людини. До стандартної комплектації входить дріт із вилкою. Перевагою інфрачервоних нагрівачів Елегантний різновид нагрівачів підійде для будь-яких інтер\'єрів. Просте керування системою.&amp;nbsp; Обладнання виготовлене виключно з чистих природних матеріалів. Термін експлуатації 25-30 років Не вимагає вентиляції, немає загрози промерзання системи, якщо вона вимкнена. Швидкий і легкий монтаж (демонтаж) без пошкоджень ремонту. Абсолютно немає рідкого теплоносія, трубопровод, розширювальних баків і інших незручностей. На відміну від конвекційних систем не висушує повітря, не виділяє продукти горіння й водяної пари, не створює протягів і циркуляції пилу, усуває вогкість і цвіль. Обладнання сертифіковане в Україні.&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b style=&quot;color: rgb(41, 41, 41);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt; &lt;br&gt;&lt;/font&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Перевагою інфрачервоних обігрівачів&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Елегантний вигляд обігрівачів підійде до будь-яких інтер\'єрів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Просте керування системою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обладнання виготовлене виключно із чистих природних матеріалів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Термін експлуатації 25 – 30 років&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Не вимагає вентиляції, немає загрози промерзання системи, якщо вона відключена.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Швидкий та легкий монтаж без пошкоджень ремонту.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Повна відсутність рідкого теплоносія, трубопровід, розширювальних баків та інших незручностей.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;На відміну від конвекційних систем не висушує повітря, не виділяє продукти горіння та водяної пари, не створює протягів та циркуляції пилу, усуває вогкість та плісняву.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px; color: rgb(41, 41, 41);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Устаткування сертифіковане в Україні.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Характеристика:&lt;/font&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Потужність - 1500 Вт;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Напруга та частота струму ― 220 В/50 Гц;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Габаритні розміри, мм (ШхДхТ) - 1200х600х50;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Площа обігріву – 35 кв.м.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Робоча температура поверхні панелі - 80 градусів;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Колір плитки ― Бежевий&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Провід з вилкою&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Маса, кг - 30;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Спосіб встановлення - настінний.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(68,1,'Optilux К1100НВ (без терморегулятора)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;Обігрів 24 - 28м2. ДОСТАВКА - &lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;БЕЗКОШТОВНО!&lt;/font&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;Моделі: К1100НВ&lt;/b&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Електро-керамічний обігрівач поєднує в собі два принципи обігріву: конвективний (коли прогрівається повітря завдяки своїй природній циркуляції) та інфрачервоними променями (ІЧ – теплові промені нагрівають предмети, що знаходяться в приміщенні. Завдяки чому вони також стають джерелами тіла.) Останні у свою чергу подібні з теплом від глиняної печі та дуже благотворно впливають на весь організм людини. У стандартну комплектацію входить провід із вилкою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Перевагою інфрачервоних обігрівачів є:&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Елегантний вигляд обігрівачів підійде до будь-яких інтер\'єрів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Просте керування системою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обладнання виготовлене виключно із чистих природних матеріалів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Термін експлуатації 25 – 30 років&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Не вимагає вентиляції, немає загрози промерзання системи, якщо вона відключена.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Швидкий та легкий монтаж без пошкоджень ремонту.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Повна відсутність рідкого теплоносія, трубопровід, розширювальних баків та інших незручностей.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;На відміну від конвекційних систем не висушує повітря, не виділяє продукти горіння та водяної пари, не створює протягів та циркуляції пилу, усуває вогкість та плісняву.&amp;nbsp;&lt;/span&gt;&lt;/font&gt;&lt;u style=&quot;font-size: 14px; font-family: Arial;&quot;&gt;Устаткування сертифіковане в Україні.&lt;/u&gt;&lt;/p&gt;&lt;p&gt;&lt;u style=&quot;font-size: 14px; font-family: Arial;&quot;&gt;&lt;br&gt;&lt;/u&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Характеристика:&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Потужність - 1100 Вт;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Напруга та частота струму ― 220 В/50 Гц;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Габаритні розміри, мм (ШхДхТ) - 600х600х70;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Площа обігріву – 24-28 кв.м.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Робоча температура поверхні панелі - 80 градусів;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Колір плитки Сірий; Кремовий&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Провід з вилкою&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Маса, кг - 18;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Спосіб встановлення - настінний;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(54,1,'Optilux РК1100НВ (з терморегулятором)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;Обігрів 24 - 28м2. ДОСТАВКА - &lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;БЕЗКОШТОВНО!&lt;/font&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;Моделі: РК1100НВ&lt;/b&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Електро-керамічний обігрівач поєднує в собі два принципи обігріву: конвективний (коли прогрівається повітря завдяки своїй природній циркуляції) та інфрачервоними променями (ІЧ – теплові промені нагрівають предмети, що знаходяться в приміщенні. Завдяки чому вони також стають джерелами тіла.) Останні у свою чергу подібні з теплом від глиняної печі та дуже благотворно впливають на весь організм людини. Опалювальна панель РК 1100 НВ має вбудований терморегулятор, що відповідає не лише за температуру повітря в приміщенні, але й за температуру обігрівача. Він призначений для створення автономної системи опалення. Користувач задає собі необхідну температуру в приміщенні. У стандартну комплектацію входить провід із вилкою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Перевагою інфрачервоних обігрівачів є:&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Елегантний вигляд обігрівачів підійде до будь-яких інтер\'єрів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Просте керування системою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Регулює індивідуальну температуру в кожній кімнаті з використанням терморегулятора.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обладнання виготовлене виключно із чистих природних матеріалів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Термін експлуатації 25 – 30 років&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Не вимагає вентиляції, немає загрози промерзання системи, якщо вона відключена.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Швидкий та легкий монтаж без пошкоджень ремонту.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Повна відсутність рідкого теплоносія, трубопровід, розширювальних баків та інших незручностей.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;На відміну від конвекційних систем не висушує повітря, не виділяє продукти горіння та водяної пари, не створює протягів та циркуляції пилу, усуває вогкість та плісняву.&amp;nbsp;&lt;/span&gt;&lt;/font&gt;&lt;u style=&quot;font-size: 14px; font-family: Arial;&quot;&gt;Устаткування сертифіковане в Україні.&lt;/u&gt;&lt;/p&gt;&lt;p&gt;&lt;u style=&quot;font-size: 14px; font-family: Arial;&quot;&gt;&lt;br&gt;&lt;/u&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Характеристика:&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Потужність - 1100 Вт;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Напруга та частота струму ― 220 В/50 Гц;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Габаритні розміри, мм (ШхДхТ) - 600х600х70;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Площа обігріву – 24-28 кв.м.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Робоча температура поверхні панелі - 80 градусів;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Колір плитки Сірий; Кремовий&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Провід з вилкою&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Терморегулятор&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Маса, кг - 18;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Спосіб встановлення - настінний;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(67,1,'Optilux РК1400НВ (з терморегулятором)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;Обігрів 27-32м2. ДОСТАВКА - &lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;БЕЗКОШТОВНО!&lt;/font&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;b&gt;Моделі: РК1400НВ&lt;/b&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Електро-керамічний обігрівач поєднує в собі два принципи обігріву: конвективний (коли прогрівається повітря завдяки своїй природній циркуляції) та інфрачервоними променями (ІЧ – теплові промені нагрівають предмети, що знаходяться в приміщенні. Завдяки чому вони також стають джерелами тіла.) &lt;br&gt;Останні у свою чергу подібні з теплом від глиняної печі та дуже благотворно впливають на весь організм людини. Останнім часом популярність, інфрачервоні сауни також використовують інфрачервоні промені для оздоровлення організму і навіть лікування деяких захворювань.&lt;/font&gt;&lt;span style=&quot;color: rgb(41, 41, 41); font-family: Arial;&quot;&gt;Зазначений тип обігрівача комплектується дротом з вилкою.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;br&gt;&lt;b&gt;Перевагою інфрачервоних обігрівачів є:&lt;/b&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Елегантний вигляд обігрівачів підійде до будь-яких інтер\'єрів.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Обладнання виготовлене виключно із чистих природних матеріалів.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Термін експлуатації 25 – 30 років&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Не вимагає вентиляції, немає загрози промерзання системи, якщо вона відключена.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Швидкий та легкий монтаж без пошкоджень ремонту.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Повна відсутність рідкого теплоносія, трубопровід, розширювальних баків та інших незручностей.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;На відміну від конвекційних систем не висушує повітря, не виділяє продукти горіння та водяної пари, не створює протягів та циркуляції пилу, усуває вогкість та плісняву.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Устаткування сертифіковане в Україні.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;b&gt;Характеристика:&lt;/b&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Потужність ― 1400 Вт;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Напруга та частота струму ― 220 В/50 Гц;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Габаритні розміри, мм (ШхДхТ) - 600х600х85;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Площа обігріву – 27-32 кв.м.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Робоча температура поверхні панелі - 80 градусів;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Колір плитки ― Кремовий; Сірий&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Провід з вилкою&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Терморегулятор&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Маса, кг - 21;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;Спосіб встановлення - настінний.&lt;/font&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(50,1,'Optilux РК1500НВ (з терморегулятором)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;До 35м2. ДОСТАВКА - &lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;БЕЗКОШТОВНО!&lt;/font&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;&lt;b style=&quot;color: rgb(41, 41, 41);&quot;&gt;Моделі&lt;/b&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;: РК 1500 НВ Електрокерамічний нагрівач поєднує в собі два принципи обігрівання: конвективне (коли прогрівається повітря завдяки своїй природній циркуляції) й інфрачервоним променям (ІК — теплові промені нагрівають предмети, що містяться в приміщенні. Завдяки чому вони також стають джерелами тіла.) Останні так само схожі з теплом від глиняної печі та дуже сприятливо впливають на весь організм людини. Опалювальна панель РК 1500 НВ має вбудований терморегулятор, який відповідає не тільки за температуру повітря в приміщенні, але й за температуру нагрівача. Він предназначен для створення автономної системи опалення. Користувач задає для себе необхідну температуру в приміщенні. До стандартної комплектації входить дріт із вилкою. Перевагою інфрачервоних нагрівачів Елегантний різновид нагрівачів підійде для будь-яких інтер\'єрів. Просте керування системою. Регулювання температурою індивідуального в кожній кімнаті з використанням терморегулятора. Обладнання виготовлене виключно з чистих природних матеріалів. Термін експлуатації 25-30 років Не вимагає вентиляції, немає загрози промерзання системи, якщо вона вимкнена. Швидкий і легкий монтаж (демонтаж) без пошкоджень ремонту. Абсолютно немає рідкого теплоносія, трубопровод, розширювальних баків і інших незручностей. На відміну від конвекційних систем не висушує повітря, не виділяє продукти горіння й водяної пари, не створює протягів і циркуляції пилу, усуває вогкість і цвіль. Обладнання сертифіковане в Україні.&lt;/font&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b style=&quot;color: rgb(41, 41, 41);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt; &lt;br&gt;&lt;/font&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Перевагою інфрачервоних обігрівачів&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Елегантний вигляд обігрівачів підійде до будь-яких інтер\'єрів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Просте керування системою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Регулює індивідуальну температуру в кожній кімнаті з використанням терморегулятора.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обладнання виготовлене виключно із чистих природних матеріалів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Термін експлуатації 25 – 30 років&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Не вимагає вентиляції, немає загрози промерзання системи, якщо вона відключена.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Швидкий та легкий монтаж без пошкоджень ремонту.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Повна відсутність рідкого теплоносія, трубопровід, розширювальних баків та інших незручностей.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;На відміну від конвекційних систем не висушує повітря, не виділяє продукти горіння та водяної пари, не створює протягів та циркуляції пилу, усуває вогкість та плісняву.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px; color: rgb(41, 41, 41);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Устаткування сертифіковане в Україні.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#292929&quot; face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Характеристика:&lt;/font&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Потужність - 1500 Вт;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Напруга та частота струму ― 220 В/50 Гц;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Габаритні розміри, мм (ШхДхТ) - 1200х600х50;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Площа обігріву – 35 кв.м.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Робоча температура поверхні панелі - 80 градусів;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Колір плитки ― Бежевий&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Провід з вилкою&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Терморегулятор&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Маса, кг - 30;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Спосіб встановлення - настінний.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(70,1,'UDEN-1000 (з терморегулятором)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрів до 20м2. ДОСТАВКА - &lt;/span&gt;&lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;БЕЗКОШТОВНО!&lt;/span&gt;&lt;/font&gt;&lt;/b&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;strong style=&quot;font-size: calc(var(--h2-size-proportion) * 1rem); text-align: center; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Металокерамічна панель UDEN-1000 стандарт&lt;/span&gt;&lt;/strong&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Металокерамічний обігрівач UDEN-1000 “стандарт”, який стане ідеальним джерелом тепла для квартири, будинку, а також будь-яких інших приміщень площею&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;до 20 м.кв.&lt;/span&gt;&lt;/strong&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;UDEN-1000 “стандарт” зможе ефективно опалювати приміщення, такі як, наприклад, спальня, вітальня, офіс, салон, кав’ярня, а також інші приміщення, де потрібне постійне джерело тепла. Його можна використовувати в якості основного обігріву, а також додаткового до вже існуючого.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівач є унікальним у своєму роді. При мінімальному споживанні електроенергії він може охопити велику площу приміщення, порівняно з аналогами.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівач має зручні кріплення, що дають змогу з легкістю розмістити його на стіні, і він не займатиме простір у кімнаті. А якщо місця для розміщення на стіні немає, тоді ви можете встановити обігрівач на спеціальних&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;a href=&quot;https://uden-s.org/uk/shop/nozhki-podstavki/nozhka-stoyka-dlya-uden-1000-500k/&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot; style=&quot;padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; transition: all 0.2s ease-out 0s;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;ніжках-стійках .&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;h3 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); font-size: calc(var(--h3-size-proportion) * 1rem); text-align: center;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Переваги, які ви отримуєте з обігрівачем UDEN-1000 “стандарт”:&lt;/font&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h3&gt;&lt;ul style=&quot;padding: 0px 0px 0px 20px; margin-right: 0px; margin-bottom: 1.43em; margin-left: 0px; font-size: 16px;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot; style=&quot;&quot;&gt;один обігрівач, який зможе прогріти повітря у великому приміщенні до 20 м.кв.;&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;економія на електроенергії;&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;дизайн панелі, який вигідно виглядає в будь-якому інтер’єрі;&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;обмінна гарантія 5 років;&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;безпечне інфрачервоне тепло, яке не спалює кисень.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Інфрачервоний обігрівач UDEN-1000 “стандарт” має всередині керамічний теплонакопичувач, який дає змогу насолоджуватися теплом ще впродовж 1,5 години після вимкнення обігрівача від електромережі. Таким чином панель буде випромінювати тепло не споживаючи електроенергію.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;/strong&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;UDEN 1000 виготовлений з екологічно чистих матеріалів і є безпечним для здоров’я.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong style=&quot;color: rgb(34, 34, 34); font-family: Roboto; font-size: calc(var(--h2-size-proportion) * 1rem); text-align: center; padding: 0px; margin: 0px;&quot;&gt;&lt;/strong&gt;&lt;span style=&quot;font-family: Roboto, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(71,1,'UDEN-900 (без терморегулятора)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрів до 20м2. ДОСТАВКА - &lt;/span&gt;&lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;БЕЗКОШТОВНО!&lt;/span&gt;&lt;/font&gt;&lt;/b&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;strong style=&quot;font-size: calc(var(--h2-size-proportion) * 1rem); text-align: center; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Металокерамічна панель UDEN-900 стандарт&lt;/span&gt;&lt;/strong&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Металокерамічний обігрівач UDEN-900 “універсал”, який стане ідеальним джерелом тепла для квартири, будинку, а також будь-яких інших приміщень площею&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;до 18 м.кв.&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;UDEN-900 “універсал” зможе ефективно опалювати приміщення, такі як, наприклад, спальня, вітальня, офіс, салон, кав’ярня, а також інші приміщення, де потрібне постійне джерело тепла. Його можна використовувати в якості основного обігріву, а також додаткового до вже існуючого.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівач є унікальним у своєму роді. При мінімальному споживанні електроенергії він може охопити велику площу приміщення, порівняно з аналогами.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівач має зручні кріплення, що дають змогу з легкістю розмістити його на стіні, і він не займатиме простір у кімнаті. А якщо місця для розміщення на стіні немає, тоді ви можете встановити обігрівач на&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;a href=&quot;https://uden-s.org/uk/shop/nozhki-podstavki/nozhki-universalnye/&quot; style=&quot;padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; transition: all 0.2s ease-out 0s;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;універсальних ніжках&lt;/span&gt;&lt;/a&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;, які спеціально для цього призначені.&lt;/span&gt;&lt;/p&gt;&lt;h3 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); font-size: calc(var(--h3-size-proportion) * 1rem); font-family: Roboto; text-align: center;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Переваги, які ви отримуєте з обігрівачем UDEN-900 “універсал”:&lt;/span&gt;&lt;/strong&gt;&lt;/h3&gt;&lt;ul style=&quot;padding: 0px 0px 0px 20px; margin-right: 0px; margin-bottom: 1.43em; margin-left: 0px; font-family: Roboto; font-size: 16px;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;один обігрівач, який зможе прогріти повітря у великому приміщенні до 18 м.кв.;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;економія на електроенергії;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;дизайн панелі, який вигідно виглядає в будь-якому інтер’єрі;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;обмінна гарантія 5 років;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;безпечне інфрачервоне тепло, яке не спалює кисень.&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Інфрачервоний обігрівач UDEN-900 “універсал” має всередині керамічний теплонакопичувач, який дає змогу насолоджуватися теплом ще впродовж 1.5 години після вимкнення обігрівача від електромережі. Таким чином панель буде випромінювати тепло не споживаючи електроенергію.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;UDEN 900 виготовлений з екологічно чистих матеріалів і є безпечним для здоров’я.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85); font-family: Roboto;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(72,1,'Heats-700 (з терморегулятором)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;Обігрів до 15м2. ДОСТАВКА - &lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;БЕЗКОШТОВНО!&lt;/font&gt;&lt;/font&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;js-store-prod-all-text&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; color: rgb(43, 42, 41); font-size: 14px;&quot;&gt;&lt;div class=&quot;js-store-prod-all-text&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;Обігрівач Heats 700 loft&lt;/b&gt; - це стильний та ефективний спосіб забезпечити комфортну температуру у приміщенні. Завдяки своїм компактним розмірам та міцній конструкції, цей обігрівач можна використовувати як у домашніх умовах, так і в офісі або на робочому місці.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Керамічна технологія&amp;nbsp;нагріву забезпечує швидкий та рівномірний розподіл тепла у приміщенні, що дозволяє економити електроенергію.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Heats 700 має стильний дизайн, який доповнить інтер\'єр будь-якого приміщення.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Його можна легко встановити&amp;nbsp;на підлозі або на стіні. Обігрівач також оснащений захистом від перегріву, що забезпечує безпечну та довготривалу роботу.&lt;/font&gt;&lt;/div&gt;&lt;div class=&quot;js-store-prod-all-charcs&quot; style=&quot;box-sizing: content-box; margin: 20px 0px 0px; padding: 0px; border: 0px;&quot;&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Потужність: 700 Вт&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Об\'єм обігріву: 39 м3&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Напруга живлення: 220 В&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Робоча t° поверхні: 75-85 °C&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Колір: Loft&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Розміри: 900Х600Х15 мм&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Вага: 17 кг&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Площа обігріву при основному: 10-15 м²&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Площа обігріву при додатковому: 25 м²&lt;/font&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(61,1,'Heats-700 (без терморегулятора)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;Обігрів до 15м2. ДОСТАВКА - &lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;БЕЗКОШТОВНО!&lt;/font&gt;&lt;/font&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;js-store-prod-all-text&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; color: rgb(43, 42, 41); font-size: 14px;&quot;&gt;&lt;div class=&quot;js-store-prod-all-text&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;Обігрівач Heats 700 loft&lt;/b&gt; - це стильний та ефективний спосіб забезпечити комфортну температуру у приміщенні. Завдяки своїм компактним розмірам та міцній конструкції, цей обігрівач можна використовувати як у домашніх умовах, так і в офісі або на робочому місці.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Керамічна технологія&amp;nbsp;нагріву забезпечує швидкий та рівномірний розподіл тепла у приміщенні, що дозволяє економити електроенергію.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Heats 700 має стильний дизайн, який доповнить інтер\'єр будь-якого приміщення.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Його можна легко встановити&amp;nbsp;на підлозі або на стіні. Обігрівач також оснащений захистом від перегріву, що забезпечує безпечну та довготривалу роботу.&lt;/font&gt;&lt;/div&gt;&lt;div class=&quot;js-store-prod-all-charcs&quot; style=&quot;box-sizing: content-box; margin: 20px 0px 0px; padding: 0px; border: 0px;&quot;&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Потужність: 700 Вт&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Об\'єм обігріву: 39 м3&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Напруга живлення: 220 В&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Робоча t° поверхні: 75-85 °C&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Колір: Loft&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Розміри: 900Х600Х15 мм&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Вага: 17 кг&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Площа обігріву при основному: 10-15 м²&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Площа обігріву при додатковому: 25 м²&lt;/font&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(73,1,'Optilux РК700НВ (з терморегулятором)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;Обігрів 15-18м2. ДОСТАВКА - &lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;БЕЗКОШТОВНО!&lt;/font&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;Моделі: РК700НВ&lt;/b&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Електро-керамічний обігрівач поєднує в собі два принципи обігріву: конвективний (коли прогрівається повітря завдяки своїй природній циркуляції) та інфрачервоними променями (ІЧ – теплові промені нагрівають предмети, що знаходяться в приміщенні. Завдяки чому вони також стають джерелами тіла.) Останні у свою чергу подібні з теплом від глиняної печі та дуже благотворно впливають на весь організм людини. Опалювальна панель РК 700 НВ має вбудований терморегулятор, який відповідає не лише за температуру повітря в приміщенні, але й за температуру обігрівача. Він призначений для створення автономної системи опалення. Користувач задає собі необхідну температуру в приміщенні. У стандартну комплектацію входить провід із вилкою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Перевагою інфрачервоних обігрівачів&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Елегантний вигляд обігрівачів підійде до будь-яких інтер\'єрів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Просте керування системою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Регулює індивідуальну температуру в кожній кімнаті з використанням терморегулятора.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обладнання виготовлене виключно із чистих природних матеріалів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Термін експлуатації 25 – 30 років&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Не вимагає вентиляції, немає загрози промерзання системи, якщо вона відключена.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Швидкий та легкий монтаж без пошкоджень ремонту.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Повна відсутність рідкого теплоносія, трубопровід, розширювальних баків та інших незручностей.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;На відміну від конвекційних систем не висушує повітря, не виділяє продукти горіння та водяної пари, не створює протягів та циркуляції пилу, усуває вогкість та плісняву.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Устаткування сертифіковане в Україні.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Характеристики:&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Потужність - 700 Вт;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Напруга та частота струму ― 220 В/50 Гц;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Габаритні розміри, мм (ШхДхТ) - 600х600х50;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Площа обігріву – 15-18 кв.м.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Робоча температура поверхні панелі - 80 градусів;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Колір плитки ― Кремовий; Сірий&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Провід з вилкою&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Терморегулятор&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Маса, кг - 15;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Спосіб встановлення - настінний;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(74,1,'UDEN-700 (з терморегулятором)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрів до 15м2. ДОСТАВКА - &lt;/span&gt;&lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;БЕЗКОШТОВНО!&lt;/span&gt;&lt;/font&gt;&lt;/b&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;h2 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); font-size: calc(var(--h2-size-proportion) * 1rem); color: rgb(34, 34, 34); text-align: center;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Металокерамічна панель UDEN-700 стандарт&lt;/span&gt;&lt;/font&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Енергоефективні металокерамічні обігрівачі UDEN-700 використовують для обігріву найрізноманітніших приміщень: квартир, приватних будинків, об’єктів комерційної нерухомості та соціальної сфери.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівач UDEN-700 можна встановлювати в санвузлах, балконах, лоджіях для локального обігріву робочого місця або окремих ділянок приміщення. Ви отримуєте&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;екологічний та економний обігрівач&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;з мінімальним споживанням електрики. В якості основного обігріву&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;він підійде для площі 15 м.кв.&lt;/span&gt;&lt;/strong&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Комплектація “стандарт” є дуже зручною в разі, якщо потрібно об’єднати кілька таких обігрівачів між собою і розмістити, наприклад, по периметру кімнати в якості основного обігріву.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85);&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;В основу їхньої роботи закладено принцип прямого нагріву – теплові промені насамперед прогрівають тверді конструкції і тільки потім повітря, зберігаючи його живим і природним. Відчуття комфорту настає за нижчої температури чим при використанні обігрівачів іншого типу.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;h3 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); font-size: calc(var(--h3-size-proportion) * 1rem); color: rgb(34, 34, 34); font-family: Roboto; text-align: center;&quot;&gt;&lt;em style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;​&lt;/span&gt;&lt;/em&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Переваги УДЕН-700 “стандарт”&lt;/span&gt;&lt;/strong&gt;&lt;/h3&gt;&lt;ul style=&quot;padding: 0px 0px 0px 20px; margin-right: 0px; margin-bottom: 1.43em; margin-left: 0px; color: rgb(85, 85, 85); font-family: Roboto; font-size: 16px;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Маленьке споживання електроенергії.&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Розрахункова потужність в 1,5-2 рази менша, ніж у конвекторів, масляних радіаторів або електрокотлів, відповідно, і витрата електроенергії знижується на 35-40%. Уся система в середньому працює 5-7 годин на добу.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Наявність енергоощадного теплонакопичувача.&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівачі починають віддавати тепло через 5 хвилин після увімкнення, через 20 хвилин виходять на робочу температуру,&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;а завдяки керамічному теплонакопичувачу охолоджуються впродовж 1,5 годин,&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;продовжуючи випромінювати тепло з нульовою витратою електроенергії!&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Устаткування екологічне&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(не висушує повітря і не створює циркуляції пилу),&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;безпечне&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(український сертифікат і РЄ) і&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;надійне&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(5 років обмінної гарантії, термін безперервної експлуатації – 25 років).&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Легкий і швидкий монтаж&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;без шкоди для ремонту і пошкоджень інтер’єру.&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;h3 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); font-size: calc(var(--h3-size-proportion) * 1rem); color: rgb(34, 34, 34); font-family: Roboto; text-align: center;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Особливості&lt;/span&gt;&lt;/strong&gt;&lt;/h3&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85); font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;У стаціонарній системі опалення або з окремими обігрівачами UDEN-S використовують терморегулятори. Їх застосування дає змогу задавати та підтримувати необхідну (індивідуальну) температуру в кожній кімнаті приміщення (1 терморегулятор на кімнату).&lt;/span&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(75,1,'Heats-500 (без терморегулятора)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;Обігрів до 10м2. ДОСТАВКА - &lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;БЕЗКОШТОВНО!&lt;/font&gt;&lt;/font&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;js-store-prod-all-text&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; color: rgb(43, 42, 41); font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;Обігрівач Heats 500 Loft &lt;/b&gt;- це стильний та ефективний спосіб забезпечити комфортну температуру у приміщенні. Завдяки своїм компактним розмірам та міцної конструкції, цей обігрівач можна використовувати як в домашніх умовах, так і в офісі або на робочому місці.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Керамічна технологія нагріву забезпечує швидкий та рівномірний розподіл тепла у приміщенні, що дозволяє економити електроенергію.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Heats 500 має стильний дизайн, який відмінно доповнить інтер\'єр будь-якого приміщення.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Його легко встановити на підлозі або на стіні. Обігрівач також оснащений захистом від перегріву, що забезпечує безпечну та тривалу роботу.&lt;/font&gt;&lt;/div&gt;&lt;div class=&quot;js-store-prod-all-charcs&quot; style=&quot;box-sizing: content-box; margin: 20px 0px 0px; padding: 0px; border: 0px; color: rgb(43, 42, 41); font-size: 14px;&quot;&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Потужність: 500 Вт&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Об\'єм обігріву: 26 м3&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Напруга живлення: 220 В&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Робоча t° поверхні: 75-85 °C&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Колір: Loft&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Розміри: 600Х600Х15 мм&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Вага: 12 кг&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Площа обігріву при основному: 8-10 м²&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Площа обігріву при додатковому: 20 м²&lt;/font&gt;&lt;/p&gt;&lt;/div&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(76,1,'UDEN-500 (з терморегулятором)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрів до 10м2. ДОСТАВКА - &lt;/span&gt;&lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;БЕЗКОШТОВНО!&lt;/span&gt;&lt;/font&gt;&lt;/b&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/b&gt;&lt;/font&gt;&lt;/span&gt;&lt;strong style=&quot;color: rgb(34, 34, 34); font-family: Roboto; font-size: calc(var(--h2-size-proportion) * 1rem); text-align: center; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Металокерамічна панель UDEN-500 універсал&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Енергоефективні металокерамічні обігрівачі UDEN-500 використовують для обігріву найрізноманітніших приміщень: квартир, приватних будинків, об’єктів комерційної нерухомості та соціальної сфери.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівач UDEN-500&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;екологічний і економний&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;з мінімальним споживанням електрики. В якості основного обігріву&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;він підійде для площі 10 м.кв.&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;В основу його роботи закладено принцип прямого нагріву – теплові промені насамперед прогрівають тверді конструкції і тільки потім повітря, зберігаючи його живим і природним. Відчуття комфорту настає за нижчої температури.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;strong style=&quot;font-size: calc(var(--h3-size-proportion) * 1rem); text-align: center; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Переваги UDEN-500 універсал&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;ul style=&quot;padding: 0px 0px 0px 20px; margin-right: 0px; margin-bottom: 1.43em; margin-left: 0px; font-family: Roboto; font-size: 16px;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Маленьке споживання електроенергії.&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Розрахункова потужність в 1,5-2 рази менша, ніж у конвекторів, масляних радіаторів або електрокотлів, відповідно, і витрата електроенергії знижується на 35-40%. Уся система в середньому працює 5-7 годин на добу.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Наявність енергоощадного теплонакопичувача.&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівачі починають віддавати тепло через 5 хвилин після увімкнення, через 20 хвилин виходять на робочу температуру,&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;а завдяки керамічному теплонакопичувачу охолоджуються впродовж 1,5 годин,&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;продовжуючи випромінювати тепло з нульовою витратою електроенергії!&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Устаткування екологічне&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(не висушує повітря і не створює циркуляції пилу),&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;безпечне&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(український сертифікат і РЄ) і&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;надійне&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp; (5 років обмінної гарантії, термін безперервної експлуатації – 25 років).&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Легкий і швидкий монтаж&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;без шкоди для ремонту і пошкоджень інтер’єру.&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;У стаціонарній системі опалення або з окремими обігрівачами UDEN-S використовують терморегулятори. Їх застосування дає змогу задавати та підтримувати необхідну (індивідуальну) температуру в кожній кімнаті приміщення (1 терморегулятор на кімнату).&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto;&quot;&gt;&lt;/p&gt;&lt;h3 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); font-size: calc(var(--h3-size-proportion) * 1rem); font-family: Roboto; text-align: center;&quot;&gt;&lt;span style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;source srcset=&quot;https://uden-s.org/wp-content/uploads/2020/06/sho-vhodit-v-complect-uden-500-universal-ukr.jpg.webp 1300w, https://uden-s.org/wp-content/uploads/2020/06/sho-vhodit-v-complect-uden-500-universal-ukr-300x138.jpg.webp 300w, https://uden-s.org/wp-content/uploads/2020/06/sho-vhodit-v-complect-uden-500-universal-ukr-1024x473.jpg.webp 1024w, https://uden-s.org/wp-content/uploads/2020/06/sho-vhodit-v-complect-uden-500-universal-ukr-768x354.jpg.webp 768w, https://uden-s.org/wp-content/uploads/2020/06/sho-vhodit-v-complect-uden-500-universal-ukr-1x1.jpg.webp 1w, https://uden-s.org/wp-content/uploads/2020/06/sho-vhodit-v-complect-uden-500-universal-ukr-10x5.jpg.webp 10w, https://uden-s.org/wp-content/uploads/2020/06/sho-vhodit-v-complect-uden-500-universal-ukr-600x277.jpg.webp 600w&quot; sizes=&quot;(max-width: 1300px) 100vw, 1300px&quot; type=&quot;image/webp&quot; style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; text-transform: none; padding: 0px; margin: 0px 0px 1.43rem; line-height: 1.6; font-size: 16px; font-family: Roboto; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Час роботи&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://uden-s.org/uk/shop/infrakrasnye-obogrevateli/uden-500-pult-du/&quot; style=&quot;box-sizing: border-box; padding: 0px; margin: 0px; background-color: transparent; text-decoration: none; text-decoration-skip-ink: none; cursor: pointer; transition: all 0.2s ease-out 0s; text-transform: none !important;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівача UDEN-500 з вбудованим терморегулятором&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;зводиться до мінімуму і обмежується 8 годинами роботи на добу.&lt;/span&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(77,1,'Optilux К430НВ (без терморегулятора)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;Обігрів до 12м2. ДОСТАВКА - &lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;БЕЗКОШТОВНО!&lt;/font&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;Моделі: РК430НВ&lt;/b&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Електро-керамічний обігрівач поєднує в собі два принципи обігріву: конвективний (коли прогрівається повітря завдяки своїй природній циркуляції) та інфрачервоними променями (ІЧ – теплові промені нагрівають предмети, що знаходяться в приміщенні. Завдяки чому вони також стають джерелами тіла.) Останні у свою чергу подібні з теплом від глиняної печі та дуже благотворно впливають на весь організм людини. У стандартну комплектацію входить провід із вилкою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Перевагою інфрачервоних обігрівачів&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Елегантний вигляд обігрівачів підійде до будь-яких інтер\'єрів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Просте керування системою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обладнання виготовлене виключно із чистих природних матеріалів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Термін експлуатації 25 – 30 років&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Не вимагає вентиляції, немає загрози промерзання системи, якщо вона відключена.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Швидкий та легкий монтаж без пошкоджень ремонту.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Повна відсутність рідкого теплоносія, трубопровід, розширювальних баків та інших незручностей.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;На відміну від конвекційних систем не висушує повітря, не виділяє продукти горіння та водяної пари, не створює протягів та циркуляції пилу, усуває вогкість та плісняву.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Устаткування сертифіковане в Україні.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Характеристика:&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Потужність - 430 Вт;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Напруга та частота струму ― 220 В/50 Гц;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Габаритні розміри, мм (ШхДхТ) - 600х600х50;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Площа обігріву – 10-12 кв.м.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Робоча температура поверхні панелі - 80 градусів;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Колір плитки Сірий; Кремовий&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Провід з вилкою&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Маса, кг - 15;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Спосіб встановлення - настінний;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(79,1,'UDEN-250 (з терморегулятором)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрів до 5м2. ДОСТАВКА - &lt;/span&gt;&lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;БЕЗКОШТОВНО!&lt;/span&gt;&lt;/font&gt;&lt;/b&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;strong style=&quot;color: rgb(34, 34, 34); font-family: Roboto; font-size: calc(var(--h2-size-proportion) * 1rem); text-align: center; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Металокерамічна панель UDEN 250&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85); font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Енергоефективні металокерамічні обігрівачі UDEN-S використовують для обігріву найрізноманітніших приміщень: квартир, приватних будинків, об’єктів комерційної нерухомості та соціальної сфери. В основу їхньої роботи покладено принцип прямого нагріву – теплові промені насамперед прогрівають тверді конструкції й тільки потім повітря, зберігаючи його живим і природним. Відчуття комфорту настає за нижчої температури.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;strong style=&quot;color: rgb(34, 34, 34); font-family: Roboto; font-size: calc(var(--h2-size-proportion) * 1rem); text-align: center; padding: 0px; margin: 0px;&quot;&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85); font-family: Roboto;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрівач UDEN-250&amp;nbsp; можна встановлювати в санвузлах, балконах, лоджіях для локального обігріву робочого місця або окремих ділянок приміщення. Ви отримуєте&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;екологічний та економний обігрівач&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;з мінімальним споживанням електрики. В якості основного обігріву&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;він підійде для площі 5 м.кв.&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85); font-family: Roboto;&quot;&gt;&lt;strong style=&quot;color: rgb(34, 34, 34); font-size: calc(var(--h3-size-proportion) * 1rem); text-align: center; padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Переваги UDEN-250 універсал/&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 1.43rem; line-height: 1.6; font-size: 16px; color: rgb(85, 85, 85); font-family: Roboto;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;/strong&gt;&lt;/p&gt;&lt;ul style=&quot;padding: 0px 0px 0px 20px; margin-right: 0px; margin-bottom: 1.43em; margin-left: 0px; color: rgb(85, 85, 85); font-family: Roboto; font-size: 16px;&quot;&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Маленьке споживання електроенергії.&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Розрахункова потужність &amp;nbsp;в 1,5-2 рази менша, ніж у конвекторів, масляних радіаторів або електрокотлів, відповідно, і витрата електроенергії знижується на 35-40%. Уся система в середньому працює 5-7 годин на добу.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Наявність енергоощадного теплонакопичувача.&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;Обігрівачі починають віддавати тепло через 5 хвилин після увімкнення, через 20 хвилин виходять на робочу температуру, а завдяки керамічному теплонакопичувачу охолоджуються впродовж 1,5 годин, продовжуючи випромінювати тепло з нульовою витратою електроенергії!&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Устаткування екологічне&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(не висушує повітря і не створює циркуляції пилу),&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;безпечне&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;(український сертифікат і РЄ) і&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;надійне&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;(5 років обмінної гарантії, термін безперервної експлуатації – 25 років).&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;padding: 0px; margin: 0px 0px 0.5em; line-height: 1.8; font-size: 1.14rem;&quot;&gt;&lt;strong style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Легкий і швидкий монтаж&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;без шкоди для ремонту і пошкоджень інтер’єру.&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(78,1,'Optilux К300НВ (без терморегулятора)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;Обігрів до 5м2. ДОСТАВКА - &lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;БЕЗКОШТОВНО!&lt;/font&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;Моделі: К300НВ&lt;/b&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Електро-керамічний обігрівач поєднує в собі два принципи обігріву: конвективний (коли прогрівається повітря завдяки своїй природній циркуляції) та інфрачервоними променями (ІЧ – теплові промені нагрівають предмети, що знаходяться в приміщенні. Завдяки чому вони також стають джерелами тіла.) Останні у свою чергу подібні з теплом від глиняної печі та дуже благотворно впливають на весь організм людини. У стандартну комплектацію входить провід із вилкою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Перевагою інфрачервоних обігрівачів&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Елегантний вигляд обігрівачів підійде до будь-яких інтер\'єрів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Просте керування системою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обладнання виготовлене виключно із чистих природних матеріалів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Термін експлуатації 25 – 30 років&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Не вимагає вентиляції, немає загрози промерзання системи, якщо вона відключена.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Швидкий та легкий монтаж без пошкоджень ремонту.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Повна відсутність рідкого теплоносія, трубопровід, розширювальних баків та інших незручностей.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;На відміну від конвекційних систем не висушує повітря, не виділяє продукти горіння та водяної пари, не створює протягів та циркуляції пилу, усуває вогкість та плісняву.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Устаткування сертифіковане в Україні.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Характеристики моделей:&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Потужність - 300 Вт;&lt;/p&gt;&lt;p&gt;Напруга та частота струму ― 220 В/50 Гц;&lt;/p&gt;&lt;p&gt;Габаритні розміри, мм (ШхДхТ) - 600х300х50;&lt;/p&gt;&lt;p&gt;Площа обігріву – 5-8 кв.м.&lt;/p&gt;&lt;p&gt;Робоча температура поверхні панелі - 80 градусів;&lt;/p&gt;&lt;p&gt;Колір плитки-білий&lt;/p&gt;&lt;p&gt;Провід з вилкою&lt;/p&gt;&lt;p&gt;Маса, кг - 8;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;Спосіб встановлення - настінний&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(80,1,'Heats-200 (без терморегулятора)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрів до 5м2. ДОСТАВКА - &lt;/span&gt;&lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;БЕЗКОШТОВНО!&lt;/span&gt;&lt;/font&gt;&lt;/b&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(43, 42, 41); font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot; style=&quot;&quot;&gt;&lt;b&gt;Керамічний обігрівач Heats 200 Loft&lt;/b&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;js-store-prod-all-text&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; color: rgb(43, 42, 41); font-family: &amp;quot;Roboto Condensed&amp;quot;; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Керамічний обігрівач Heats 200 Loft - це стильний і ефективний спосіб забезпечити комфортну температуру у ванній кімнаті. Завдяки компактним розмірам та міцній конструкції, цей обігрівач ідеально підходить для використання в ванних кімнатах та санвузлах.&lt;/span&gt;&lt;br style=&quot;box-sizing: content-box;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Керамічна технологія нагріву забезпечує швидкий і рівномірний розподіл тепла в приміщенні, що дозволяє економити електроенергію.&lt;/span&gt;&lt;br style=&quot;box-sizing: content-box;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Heats 200 має стильний дизайн, який ідеально вписується в інтер\'єр будь-якого приміщення.&lt;/span&gt;&lt;br style=&quot;box-sizing: content-box;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Він легко монтується на стіні або на підлозі. Обігрівач також оснащений захистом від перегріву, що забезпечує безпечну і тривалу роботу.&lt;/span&gt;&lt;/div&gt;&lt;div class=&quot;js-store-prod-all-charcs&quot; style=&quot;box-sizing: content-box; margin: 20px 0px 0px; padding: 0px; border: 0px; color: rgb(43, 42, 41); font-family: &amp;quot;Roboto Condensed&amp;quot;; font-size: 14px;&quot;&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Потужність: 200 Вт&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Об\'єм обігріву: 10 м3&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Напруга живлення: 220 В&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Робоча t° поверхні: 75-85 °C&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Колір: Loft&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Розміри: 600Х300Х15 мм&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Вага: 5 кг&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Площа обігріву при основному: 3-5 м²&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Площа обігріву при додатковому: 6 м²&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(81,1,'Heats-200 (сушарка без терморегулятора)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрів до 5м2 (Сушарка). ДОСТАВКА - &lt;/span&gt;&lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;БЕЗКОШТОВНО!&lt;/span&gt;&lt;/font&gt;&lt;/b&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;js-store-prod-all-text&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; color: rgb(43, 42, 41); font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;Рушникосушарка Heats 200&lt;/b&gt;&amp;nbsp;- це стильний та ефективний спосіб забезпечити комфортну температуру у ванній кімнаті. Завдяки своїм компактним розмірам та міцній конструкції, цей обігрівач можна використовувати у ванних кімнатах та санвузлах.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Керамічна технологія&amp;nbsp;нагріву забезпечує швидкий та рівномірний розподіл тепла у приміщенні, що дозволяє економити електроенергію.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Heats 200 має стильний дизайн, який доповнить інтер\'єр будь-якого приміщення.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Його можна легко встановити на стіні. Обігрівач також оснащений захистом від перегріву, що забезпечує безпечну та довготривалу роботу.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Рушникотримач 1шт. в комплекті до обігрівача. Кількість тримачів можна збільшувати по бажанню.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Варіанти розміщення тримачів - горизонтально та вертикально відносно обігрівача.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Вартість тримача 400 грн.&lt;/font&gt;&lt;/div&gt;&lt;div class=&quot;js-store-prod-all-charcs&quot; style=&quot;box-sizing: content-box; margin: 20px 0px 0px; padding: 0px; border: 0px; color: rgb(43, 42, 41); font-size: 14px;&quot;&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Потужність: 200 Вт&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Об\'єм обігріву: 10 м3&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Напруга живлення: 220 В&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Робоча t° поверхні: 75-85 °C&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Колір: Oro&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Розміри: 300Х600Х15 мм&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Вага: 5 кг&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Площа обігріву при основному: 3-5 м²&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Площа обігріву при додатковому: 6 м²&lt;/font&gt;&lt;/p&gt;&lt;/div&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(64,1,'Heats-200 (сушарка з терморегулятором)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обігрів до 5м2 (Сушарка). ДОСТАВКА - &lt;/span&gt;&lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;БЕЗКОШТОВНО!&lt;/span&gt;&lt;/font&gt;&lt;/b&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;js-store-prod-all-text&quot; style=&quot;box-sizing: content-box; margin: 0px; padding: 0px; border: 0px; color: rgb(43, 42, 41); font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;Рушникосушарка Heats 200&lt;/b&gt;&amp;nbsp;- це стильний та ефективний спосіб забезпечити комфортну температуру у ванній кімнаті. Завдяки своїм компактним розмірам та міцній конструкції, цей обігрівач можна використовувати у ванних кімнатах та санвузлах.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Керамічна технологія&amp;nbsp;нагріву забезпечує швидкий та рівномірний розподіл тепла у приміщенні, що дозволяє економити електроенергію.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Heats 200 має стильний дизайн, який доповнить інтер\'єр будь-якого приміщення.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Його можна легко встановити на стіні. Обігрівач також оснащений захистом від перегріву, що забезпечує безпечну та довготривалу роботу.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Рушникотримач 1шт. в комплекті до обігрівача. Кількість тримачів можна збільшувати по бажанню.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Варіанти розміщення тримачів - горизонтально та вертикально відносно обігрівача.&lt;br style=&quot;box-sizing: content-box;&quot;&gt;Вартість тримача 400 грн.&lt;/font&gt;&lt;/div&gt;&lt;div class=&quot;js-store-prod-all-charcs&quot; style=&quot;box-sizing: content-box; margin: 20px 0px 0px; padding: 0px; border: 0px; color: rgb(43, 42, 41); font-size: 14px;&quot;&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Потужність: 200 Вт&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Об\'єм обігріву: 10 м3&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Напруга живлення: 220 В&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Робоча t° поверхні: 75-85 °C&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Колір: Oro&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Розміри: 300Х600Х15 мм&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Вага: 5 кг&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Площа обігріву при основному: 3-5 м²&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;t-typography__characteristics js-store-prod-charcs&quot; style=&quot;box-sizing: content-box; margin-bottom: 0px; padding: 0px; border: 0px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Площа обігріву при додатковому: 6 м²&lt;/font&gt;&lt;/p&gt;&lt;/div&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),(82,1,'Optilux К330НВ (сушарка без терморегулятора)','&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#292929&quot; style=&quot;&quot;&gt;Обігрів до 5м2. ДОСТАВКА - &lt;/font&gt;&lt;font color=&quot;#ce0000&quot; style=&quot;&quot;&gt;БЕЗКОШТОВНО!&lt;/font&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;b&gt;Моделі: РК330НВ (сушарка)&lt;/b&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Електрообігрівач Optilux РК 330 НВ із сушінням рушників призначений для обігріву невеликих приміщень (ванних кімнат тощо) загальною площею до 6-8 м2. Вона поєднує всі переваги, такі як - економічність, практичність, безпека і крім того обладнана сушаркою для рушників. Це дає додаткову можливість швидкого просушування особистих речей у будь-який час за потреби.У стандартну комплектацію входить провід із вилкою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Перевагою інфрачервоних обігрівачів&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Елегантний вигляд обігрівачів підійде до будь-яких інтер\'єрів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Просте керування системою.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Обладнання виготовлене виключно із чистих природних матеріалів.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Термін експлуатації 25 – 30 років&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Не вимагає вентиляції, немає загрози промерзання системи, якщо вона відключена.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Швидкий та легкий монтаж без пошкоджень ремонту.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Повна відсутність рідкого теплоносія, трубопровід, розширювальних баків та інших незручностей.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;На відміну від конвекційних систем не висушує повітря, не виділяє продукти горіння та водяної пари, не створює протягів та циркуляції пилу, усуває вогкість та плісняву.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Устаткування сертифіковане в Україні.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;Характеристики:&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Потужність - 330 Вт;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Напруга та частота струму ― 220 В/50 Гц;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Габаритні розміри, мм (ШхДхТ) - 600х300х20;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Площа обігріву – 6-8 кв.м.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Робоча температура поверхні панелі - 55 градусів;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Колір плитки ― Білий&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Провід з вилкою&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Маса, кг - 6;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Спосіб встановлення - настінний;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n','','','','','');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=681 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_discount`
--

LOCK TABLES `oc_product_discount` WRITE;
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
INSERT INTO `oc_product_discount` VALUES (602,51,1,900,1,4565.0000,'0000-00-00','0000-00-00'),(599,50,1,1000,1,6730.0000,'0000-00-00','0000-00-00'),(661,42,1,900,1,2561.0000,'0000-00-00','0000-00-00'),(657,52,1,900,1,1920.0000,'0000-00-00','0000-00-00'),(664,53,1,900,1,2540.0000,'0000-00-00','0000-00-00'),(603,54,1,900,1,4640.0000,'0000-00-00','0000-00-00'),(617,55,1,900,1,5190.0000,'0000-00-00','0000-00-00'),(629,56,1,900,1,6149.0000,'0000-00-00','0000-00-00'),(654,57,1,900,1,3450.0000,'0000-00-00','0000-00-00'),(648,58,1,900,1,3680.0000,'0000-00-00','0000-00-00'),(650,59,1,900,1,3932.0000,'0000-00-00','0000-00-00'),(680,60,1,900,1,4330.0000,'0000-00-00','0000-00-00'),(636,61,1,900,1,4420.0000,'0000-00-00','0000-00-00'),(678,62,1,900,1,4628.0000,'0000-00-00','0000-00-00'),(676,63,1,900,1,2900.0000,'0000-00-00','0000-00-00'),(670,64,1,900,1,2950.0000,'0000-00-00','0000-00-00'),(624,65,1,900,1,5749.0000,'0000-00-00','0000-00-00'),(600,66,1,1000,1,6265.0000,'0000-00-00','0000-00-00'),(601,67,1,900,1,5030.0000,'0000-00-00','0000-00-00'),(604,68,1,900,1,4640.0000,'0000-00-00','0000-00-00'),(631,69,1,900,1,5190.0000,'0000-00-00','0000-00-00'),(622,70,1,900,1,6149.0000,'0000-00-00','0000-00-00'),(628,71,1,900,1,5749.0000,'0000-00-00','0000-00-00'),(634,72,1,900,1,4420.0000,'0000-00-00','0000-00-00'),(679,73,1,900,1,4330.0000,'0000-00-00','0000-00-00'),(644,74,1,900,1,4628.0000,'0000-00-00','0000-00-00'),(647,75,1,900,1,3680.0000,'0000-00-00','0000-00-00'),(651,76,1,900,1,3932.0000,'0000-00-00','0000-00-00'),(653,77,1,900,1,3450.0000,'0000-00-00','0000-00-00'),(656,78,1,900,1,1920.0000,'0000-00-00','0000-00-00'),(660,79,1,900,1,2561.0000,'0000-00-00','0000-00-00'),(672,80,1,900,1,2540.0000,'0000-00-00','0000-00-00'),(668,81,1,900,1,2950.0000,'0000-00-00','0000-00-00'),(675,82,1,900,1,2900.0000,'0000-00-00','0000-00-00');
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_filter`
--

LOCK TABLES `oc_product_filter` WRITE;
/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3333 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_image`
--

LOCK TABLES `oc_product_image` WRITE;
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
INSERT INTO `oc_product_image` VALUES (3324,62,'catalog/u4.jpg',3),(3323,62,'catalog/u3.jpg',2),(3322,62,'catalog/u1.jpg',1),(3160,61,'catalog/h5.jpg',6),(3159,61,'catalog/h4.jpg',5),(3158,61,'catalog/h3.jpg',4),(3157,61,'catalog/h1.jpg',3),(3156,61,'catalog/h2.jpg',2),(3155,61,'catalog/h6.jpg',1),(3332,60,'catalog/o1.jpg',1),(3331,60,'catalog/o5.jpg',0),(3330,60,'catalog/o4.jpg',0),(3329,60,'catalog/o3.jpg',0),(3217,59,'catalog/u4.jpg',3),(3216,59,'catalog/u3.jpg',2),(3215,59,'catalog/u1.jpg',1),(3211,58,'catalog/h5.jpg',6),(3210,58,'catalog/h4.jpg',5),(3209,58,'catalog/h3.jpg',4),(3208,58,'catalog/h1.jpg',3),(3207,58,'catalog/h2.jpg',2),(3206,58,'catalog/h6.jpg',1),(3229,57,'catalog/o5.jpg',3),(3228,57,'catalog/o3.jpg',2),(3227,57,'catalog/o4.jpg',1),(3118,56,'catalog/u1.jpg',1),(3254,42,'catalog/u250-2.jpg',4),(3253,42,'catalog/u250-3.jpg',3),(3117,56,'catalog/u2.jpg',0),(3116,56,'catalog/u4.jpg',0),(3115,56,'catalog/u3.jpg',0),(3011,54,'catalog/o1.jpg',1),(3010,54,'catalog/o5.jpg',0),(3009,54,'catalog/o4.jpg',0),(3008,54,'catalog/o3.jpg',0),(3068,55,'catalog/h5.jpg',6),(3067,55,'catalog/h4.jpg',5),(3066,55,'catalog/h3.jpg',4),(3065,55,'catalog/h1.jpg',3),(3064,55,'catalog/h2.jpg',2),(3272,53,'catalog/h5.jpg',6),(3271,53,'catalog/h4.jpg',5),(3270,53,'catalog/h3.jpg',4),(3269,53,'catalog/h1.jpg',3),(3268,53,'catalog/h2.jpg',2),(3267,53,'catalog/h6.jpg',1),(3252,42,'catalog/u250-22.jpg',2),(3063,55,'catalog/h6.jpg',1),(3238,52,'catalog/o4.jpg',3),(3237,52,'catalog/o3.jpg',2),(3236,52,'catalog/o5.jpg',1),(3007,51,'catalog/o4.jpg',3),(3006,51,'catalog/o3.jpg',2),(2995,50,'catalog/o5.jpg',0),(2994,50,'catalog/o1.jpg',0),(2993,50,'catalog/o3.jpg',0),(3005,51,'catalog/o1.jpg',1),(3004,51,'catalog/o5.jpg',0),(2992,50,'catalog/o4.jpg',0),(3251,42,'catalog/u250-11.jpg',1),(3318,63,'catalog/Сушарки_Optilux/optisush5.jpg',0),(3316,63,'catalog/Сушарки_Optilux/optisush4.jpg',0),(3317,63,'catalog/Сушарки_Optilux/optisush2.jpg',0),(3315,63,'catalog/Сушарки_Optilux/optisush3.jpg',0),(3290,64,'catalog/Сушарка_Heats/62.jpg',0),(3289,64,'catalog/Сушарка_Heats/31.jpg',0),(3288,64,'catalog/Сушарка_Heats/2.png',0),(3098,65,'catalog/u1.jpg',1),(3097,65,'catalog/u4.jpg',0),(3096,65,'catalog/u3.jpg',0),(3095,65,'catalog/u2.jpg',0),(2999,66,'catalog/o4.jpg',0),(2998,66,'catalog/o3.jpg',0),(2997,66,'catalog/o1.jpg',0),(2996,66,'catalog/o5.jpg',0),(3002,67,'catalog/o3.jpg',2),(3001,67,'catalog/o1.jpg',1),(3000,67,'catalog/o5.jpg',0),(3014,68,'catalog/o5.jpg',0),(3013,68,'catalog/o4.jpg',0),(3012,68,'catalog/o3.jpg',0),(3003,67,'catalog/o4.jpg',3),(3015,68,'catalog/o1.jpg',1),(3130,69,'catalog/h5.jpg',6),(3129,69,'catalog/h4.jpg',5),(3128,69,'catalog/h3.jpg',4),(3127,69,'catalog/h1.jpg',3),(3126,69,'catalog/h2.jpg',2),(3125,69,'catalog/h6.jpg',1),(3090,70,'catalog/u1.jpg',1),(3089,70,'catalog/u2.jpg',0),(3088,70,'catalog/u4.jpg',0),(3087,70,'catalog/u3.jpg',0),(3114,71,'catalog/u1.jpg',1),(3113,71,'catalog/u2.jpg',0),(3112,71,'catalog/u3.jpg',0),(3111,71,'catalog/u4.jpg',0),(3148,72,'catalog/h5.jpg',6),(3147,72,'catalog/h4.jpg',5),(3146,72,'catalog/h3.jpg',4),(3145,72,'catalog/h1.jpg',3),(3144,72,'catalog/h2.jpg',2),(3143,72,'catalog/h6.jpg',1),(3328,73,'catalog/o1.jpg',1),(3327,73,'catalog/o5.jpg',0),(3325,73,'catalog/o3.jpg',0),(3326,73,'catalog/o4.jpg',0),(3190,74,'catalog/u4.jpg',3),(3189,74,'catalog/u3.jpg',2),(3188,74,'catalog/u1.jpg',1),(3205,75,'catalog/h5.jpg',6),(3204,75,'catalog/h4.jpg',5),(3203,75,'catalog/h3.jpg',4),(3202,75,'catalog/h1.jpg',3),(3201,75,'catalog/h2.jpg',2),(3200,75,'catalog/h6.jpg',1),(3220,76,'catalog/u4.jpg',3),(3219,76,'catalog/u3.jpg',2),(3218,76,'catalog/u1.jpg',1),(3226,77,'catalog/o5.jpg',3),(3225,77,'catalog/o3.jpg',2),(3224,77,'catalog/o4.jpg',1),(3235,78,'catalog/o4.jpg',3),(3234,78,'catalog/o3.jpg',2),(3233,78,'catalog/o5.jpg',1),(3250,79,'catalog/u250-2.jpg',4),(3249,79,'catalog/u250-3.jpg',3),(3248,79,'catalog/u250-22.jpg',2),(3247,79,'catalog/u250-11.jpg',1),(3302,80,'catalog/h5.jpg',6),(3301,80,'catalog/h4.jpg',5),(3300,80,'catalog/h3.jpg',4),(3299,80,'catalog/h1.jpg',3),(3298,80,'catalog/h2.jpg',2),(3297,80,'catalog/h6.jpg',1),(3284,81,'catalog/Сушарка_Heats/2.png',0),(3283,81,'catalog/Сушарка_Heats/62.jpg',0),(3282,81,'catalog/Сушарка_Heats/31.jpg',0),(3314,82,'catalog/Сушарки_Optilux/optisush3.jpg',0),(3313,82,'catalog/Сушарки_Optilux/optisush4.jpg',0),(3312,82,'catalog/Сушарки_Optilux/optisush2.jpg',0),(3311,82,'catalog/Сушарки_Optilux/optisush5.jpg',0);
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=327 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option`
--

LOCK TABLES `oc_product_option` WRITE;
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
INSERT INTO `oc_product_option` VALUES (237,52,6,'',0),(234,51,6,'',0),(236,52,5,'',0),(233,51,5,'',0),(232,51,13,'',0),(231,50,6,'',0),(230,50,5,'',0),(229,50,13,'',0),(209,42,6,'',0),(217,42,5,'',0),(228,42,13,'',0),(235,52,13,'',0),(240,53,6,'',0),(239,53,5,'',0),(238,53,13,'',0),(243,54,6,'',0),(242,54,5,'',0),(241,54,13,'',0),(246,55,6,'',0),(245,55,5,'',0),(244,55,13,'',0),(249,56,6,'',0),(248,56,5,'',0),(247,56,13,'',0),(252,57,6,'',0),(251,57,5,'',0),(250,57,13,'',0),(255,58,6,'',0),(254,58,5,'',0),(253,58,13,'',0),(258,59,6,'',0),(257,59,5,'',0),(256,59,13,'',0),(261,60,6,'',0),(260,60,5,'',0),(259,60,13,'',0),(264,61,6,'',0),(263,61,5,'',0),(262,61,13,'',0),(267,62,6,'',0),(266,62,5,'',0),(265,62,13,'',0),(270,63,6,'',0),(269,63,5,'',0),(268,63,13,'',0),(276,65,6,'',0),(273,64,6,'',0),(272,64,5,'',0),(275,65,5,'',0),(274,65,13,'',0),(279,66,6,'',0),(278,66,5,'',0),(277,66,13,'',0),(282,67,6,'',0),(281,67,5,'',0),(280,67,13,'',0),(285,68,6,'',0),(284,68,5,'',0),(283,68,13,'',0),(288,69,6,'',0),(287,69,5,'',0),(286,69,13,'',0),(291,70,6,'',0),(290,70,5,'',0),(289,70,13,'',0),(294,71,6,'',0),(293,71,5,'',0),(292,71,13,'',0),(297,72,6,'',0),(296,72,5,'',0),(295,72,13,'',0),(300,73,6,'',0),(299,73,5,'',0),(298,73,13,'',0),(303,74,6,'',0),(302,74,5,'',0),(301,74,13,'',0),(306,75,6,'',0),(305,75,5,'',0),(304,75,13,'',0),(309,76,6,'',0),(308,76,5,'',0),(307,76,13,'',0),(312,77,6,'',0),(311,77,5,'',0),(310,77,13,'',0),(315,78,6,'',0),(314,78,5,'',0),(313,78,13,'',0),(318,79,6,'',0),(317,79,5,'',0),(316,79,13,'',0),(321,80,6,'',0),(320,80,5,'',0),(319,80,13,'',0),(323,81,6,'',0),(322,81,5,'',0),(326,82,6,'',0),(325,82,5,'',0),(324,82,13,'',0);
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option_value`
--

LOCK TABLES `oc_product_option_value` WRITE;
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
INSERT INTO `oc_product_option_value` VALUES (46,242,54,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(36,236,52,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(35,236,52,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(45,242,54,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(44,242,54,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(27,232,51,13,49,0,0,270.0000,'+',0,'-',1.00000000,'+'),(28,233,51,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(29,233,51,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(30,233,51,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(31,233,51,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(26,230,50,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(25,230,50,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(24,230,50,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(23,230,50,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(22,229,50,13,49,0,0,270.0000,'+',0,'-',1.00000000,'+'),(41,239,53,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(3,217,42,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(21,228,42,13,49,0,0,340.0000,'+',0,'-',0.00000000,'-'),(34,236,52,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(32,235,52,13,49,0,0,270.0000,'+',0,'-',1.00000000,'+'),(33,236,52,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(40,239,53,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(39,239,53,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(38,239,53,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(37,238,53,13,49,0,0,390.0000,'+',0,'-',1.00000000,'-'),(43,242,54,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(42,241,54,13,49,0,0,270.0000,'+',0,'-',1.00000000,'+'),(51,245,55,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(48,245,55,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(50,245,55,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(53,248,56,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(52,247,56,13,49,0,0,340.0000,'+',0,'-',0.00000000,'-'),(57,251,57,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(56,251,57,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(54,250,57,13,49,0,0,270.0000,'+',0,'-',1.00000000,'+'),(63,254,58,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(62,254,58,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(60,254,58,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(61,254,58,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(49,245,55,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(65,257,59,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(64,256,59,13,49,0,0,340.0000,'+',0,'-',0.00000000,'-'),(66,259,60,13,49,0,0,270.0000,'+',0,'-',1.00000000,'+'),(67,260,60,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(68,260,60,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(75,263,61,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(72,263,61,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(73,263,61,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(77,266,62,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(76,265,62,13,49,0,0,340.0000,'+',0,'-',0.00000000,'-'),(59,253,58,13,49,0,0,390.0000,'+',0,'-',1.00000000,'-'),(78,268,63,13,49,0,0,270.0000,'+',0,'-',1.00000000,'+'),(79,269,63,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(81,269,63,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(55,251,57,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(87,272,64,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(86,272,64,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(85,272,64,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(84,272,64,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(74,263,61,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(69,260,60,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(89,275,65,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(88,274,65,13,49,0,0,340.0000,'+',0,'-',0.00000000,'-'),(47,244,55,13,49,0,0,390.0000,'+',0,'-',1.00000000,'-'),(80,269,63,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(93,278,66,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(90,277,66,13,49,0,0,270.0000,'+',0,'-',1.00000000,'+'),(91,278,66,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(92,278,66,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(98,281,67,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(97,281,67,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(96,281,67,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(95,280,67,13,49,0,0,270.0000,'+',0,'-',1.00000000,'+'),(103,284,68,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(102,284,68,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(100,283,68,13,49,0,0,270.0000,'+',0,'-',1.00000000,'+'),(101,284,68,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(99,281,67,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(94,278,66,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(104,284,68,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(71,262,61,13,49,0,0,390.0000,'+',0,'-',1.00000000,'-'),(70,260,60,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(108,287,69,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(107,287,69,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(105,286,69,13,49,0,0,390.0000,'+',0,'-',1.00000000,'-'),(106,287,69,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(111,290,70,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(110,289,70,13,49,0,0,340.0000,'+',0,'-',0.00000000,'-'),(112,292,71,13,49,0,0,340.0000,'+',0,'-',0.00000000,'-'),(113,293,71,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(109,287,69,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(118,296,72,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(117,296,72,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(116,296,72,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(115,296,72,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(114,295,72,13,49,0,0,390.0000,'+',0,'-',1.00000000,'-'),(123,299,73,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(122,299,73,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(119,298,73,13,49,0,0,270.0000,'+',0,'-',1.00000000,'+'),(120,299,73,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(121,299,73,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(125,302,74,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(124,301,74,13,49,0,0,340.0000,'+',0,'-',0.00000000,'-'),(130,305,75,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(129,305,75,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(128,305,75,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(127,305,75,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(126,304,75,13,49,0,0,390.0000,'+',0,'-',1.00000000,'-'),(132,308,76,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(131,307,76,13,49,0,0,340.0000,'+',0,'-',0.00000000,'-'),(137,311,77,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(136,311,77,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(135,311,77,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(134,311,77,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(133,310,77,13,49,0,0,270.0000,'+',0,'-',1.00000000,'+'),(58,251,57,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(142,314,78,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(141,314,78,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(140,314,78,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(139,314,78,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(138,313,78,13,49,0,0,270.0000,'+',0,'-',1.00000000,'+'),(144,317,79,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(143,316,79,13,49,0,0,340.0000,'+',0,'-',0.00000000,'-'),(148,320,80,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(147,320,80,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(146,320,80,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(145,319,80,13,49,0,0,390.0000,'+',0,'-',1.00000000,'-'),(153,322,81,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(152,322,81,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(151,322,81,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(150,322,81,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(149,320,80,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(158,325,82,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-'),(157,325,82,5,41,100,0,0.0000,'-',0,'-',0.00000000,'-'),(156,325,82,5,40,300,0,0.0000,'-',0,'-',0.00000000,'-'),(155,325,82,5,39,92,0,0.0000,'-',0,'-',0.00000000,'-'),(154,324,82,13,49,0,0,270.0000,'+',0,'-',1.00000000,'+'),(82,269,63,5,42,200,0,0.0000,'-',0,'-',0.00000000,'-');
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_recurring`
--

LOCK TABLES `oc_product_recurring` WRITE;
/*!40000 ALTER TABLE `oc_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_related`
--

LOCK TABLES `oc_product_related` WRITE;
/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
INSERT INTO `oc_product_related` VALUES (42,52),(42,53),(42,78),(42,80),(50,51),(50,54),(50,67),(50,68),(51,50),(51,54),(51,66),(51,68),(52,42),(52,53),(52,79),(52,80),(53,42),(53,52),(53,78),(53,79),(54,50),(54,51),(54,65),(54,66),(54,67),(54,71),(55,56),(55,65),(55,70),(55,71),(56,55),(56,65),(56,69),(56,71),(57,58),(57,59),(57,75),(57,76),(58,57),(58,59),(58,76),(58,77),(59,57),(59,58),(59,75),(59,77),(60,61),(60,62),(60,72),(60,74),(61,60),(61,62),(61,73),(61,74),(62,60),(62,61),(62,72),(62,73),(63,64),(63,81),(64,63),(64,82),(65,54),(65,55),(65,56),(65,68),(65,69),(65,70),(66,51),(66,54),(66,67),(66,68),(67,50),(67,54),(67,66),(67,68),(68,50),(68,51),(68,65),(68,66),(68,67),(68,71),(69,56),(69,65),(69,70),(69,71),(70,55),(70,65),(70,69),(70,71),(71,54),(71,55),(71,56),(71,68),(71,69),(71,70),(72,60),(72,62),(72,73),(72,74),(73,61),(73,62),(73,72),(73,74),(74,60),(74,61),(74,72),(74,73),(75,57),(75,59),(75,76),(75,77),(76,57),(76,58),(76,75),(76,77),(77,58),(77,59),(77,75),(77,76),(78,42),(78,53),(78,79),(78,80),(79,52),(79,53),(79,78),(79,80),(80,42),(80,52),(80,78),(80,79),(81,63),(81,82),(82,64),(82,81);
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_related_article`
--

DROP TABLE IF EXISTS `oc_product_related_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related_article` (
  `article_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_related_article`
--

LOCK TABLES `oc_product_related_article` WRITE;
/*!40000 ALTER TABLE `oc_product_related_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_related_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_related_mn`
--

DROP TABLE IF EXISTS `oc_product_related_mn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related_mn` (
  `product_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_related_mn`
--

LOCK TABLES `oc_product_related_mn` WRITE;
/*!40000 ALTER TABLE `oc_product_related_mn` DISABLE KEYS */;
INSERT INTO `oc_product_related_mn` VALUES (61,12),(58,12),(53,12),(64,12),(55,12),(63,11),(52,11),(57,11),(60,11),(54,11),(51,11),(50,11),(56,13),(62,13),(59,13),(42,13);
/*!40000 ALTER TABLE `oc_product_related_mn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_related_wb`
--

DROP TABLE IF EXISTS `oc_product_related_wb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related_wb` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_related_wb`
--

LOCK TABLES `oc_product_related_wb` WRITE;
/*!40000 ALTER TABLE `oc_product_related_wb` DISABLE KEYS */;
INSERT INTO `oc_product_related_wb` VALUES (51,60),(53,64),(52,60),(50,60);
/*!40000 ALTER TABLE `oc_product_related_wb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `points` int(8) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=550 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_reward`
--

LOCK TABLES `oc_product_reward` WRITE;
/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=680 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_special`
--

LOCK TABLES `oc_product_special` WRITE;
/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
INSERT INTO `oc_product_special` VALUES (660,42,1,1,2561.0000,'0000-00-00','0000-00-00'),(601,51,1,1,4565.0000,'0000-00-00','0000-00-00'),(598,50,1,1,6730.0000,'0000-00-00','0000-00-00'),(656,52,1,1,1920.0000,'0000-00-00','0000-00-00'),(663,53,1,1,2540.0000,'0000-00-00','0000-00-00'),(602,54,1,1,4640.0000,'0000-00-00','0000-00-00'),(616,55,1,1,5190.0000,'0000-00-00','0000-00-00'),(628,56,1,1,6149.0000,'0000-00-00','0000-00-00'),(653,57,1,1,3450.0000,'0000-00-00','0000-00-00'),(647,58,1,1,3680.0000,'0000-00-00','0000-00-00'),(649,59,1,1,3932.0000,'0000-00-00','0000-00-00'),(679,60,1,1,3815.0000,'0000-00-00','0000-00-00'),(635,61,1,1,3620.0000,'0000-00-00','0000-00-00'),(677,62,1,1,4628.0000,'0000-00-00','0000-00-00'),(675,63,1,1,2900.0000,'0000-00-00','0000-00-00'),(669,64,1,1,2950.0000,'0000-00-00','0000-00-00'),(623,65,1,1,6588.0000,'0000-00-00','0000-00-00'),(599,66,1,1,6265.0000,'0000-00-00','0000-00-00'),(600,67,1,1,5030.0000,'0000-00-00','0000-00-00'),(603,68,1,1,4175.0000,'0000-00-00','0000-00-00'),(630,69,1,1,4140.0000,'0000-00-00','0000-00-00'),(621,70,1,1,6988.0000,'0000-00-00','0000-00-00'),(627,71,1,1,5749.0000,'0000-00-00','0000-00-00'),(633,72,1,1,4420.0000,'0000-00-00','0000-00-00'),(678,73,1,1,4330.0000,'0000-00-00','0000-00-00'),(643,74,1,1,5467.0000,'0000-00-00','0000-00-00'),(646,75,1,1,2880.0000,'0000-00-00','0000-00-00'),(650,76,1,1,4771.0000,'0000-00-00','0000-00-00'),(652,77,1,1,2985.0000,'0000-00-00','0000-00-00'),(655,78,1,1,1455.0000,'0000-00-00','0000-00-00'),(659,79,1,1,3400.0000,'0000-00-00','0000-00-00'),(671,80,1,1,1860.0000,'0000-00-00','0000-00-00'),(667,81,1,1,2250.0000,'0000-00-00','0000-00-00'),(674,82,1,1,2435.0000,'0000-00-00','0000-00-00');
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `main_category` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_category`
--

LOCK TABLES `oc_product_to_category` WRITE;
/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
INSERT INTO `oc_product_to_category` VALUES (55,71,0),(54,60,1),(58,82,0),(59,82,0),(51,77,0),(54,78,0),(60,81,0),(58,68,0),(54,72,0),(55,79,0),(59,68,0),(57,84,0),(61,81,0),(65,80,0),(65,70,0),(56,71,0),(42,83,0),(50,74,0),(52,66,0),(57,67,0),(64,86,0),(53,64,0),(62,81,0),(52,83,0),(53,83,0),(50,60,1),(50,76,0),(60,69,0),(62,69,0),(56,79,0),(51,73,0),(51,60,1),(42,65,0),(63,83,0),(61,69,0),(55,86,0),(56,88,0),(65,88,0),(61,17,1),(60,87,0),(62,88,0),(57,87,0),(58,86,0),(59,88,0),(53,86,0),(42,88,0),(52,87,0),(63,87,0),(66,76,0),(66,74,0),(66,60,1),(67,77,0),(67,73,0),(67,60,1),(68,60,1),(68,72,0),(68,78,0),(55,57,1),(61,86,0),(58,24,1),(53,34,1),(50,87,0),(66,87,0),(67,87,0),(51,87,0),(54,87,0),(68,87,0),(60,17,1),(57,24,1),(52,34,1),(63,33,1),(64,33,1),(56,57,1),(65,17,1),(62,17,1),(59,24,1),(42,34,1),(69,57,1),(69,71,0),(69,79,0),(69,86,0),(70,57,1),(70,71,0),(70,79,0),(70,88,0),(71,88,0),(71,80,0),(71,70,0),(71,17,1),(72,17,1),(72,69,0),(72,81,0),(72,86,0),(73,17,1),(73,69,0),(73,81,0),(73,87,0),(74,88,0),(74,81,0),(74,69,0),(74,17,1),(75,86,0),(75,82,0),(75,68,0),(75,24,1),(76,88,0),(76,82,0),(76,68,0),(76,24,1),(77,87,0),(77,84,0),(77,67,0),(77,24,1),(78,87,0),(78,83,0),(78,66,0),(78,34,1),(79,34,1),(79,65,0),(79,83,0),(79,88,0),(80,86,0),(80,83,0),(80,64,0),(80,34,1),(64,64,0),(81,33,1),(81,64,0),(81,86,0),(81,83,0),(64,83,0),(82,33,1),(82,83,0),(82,87,0),(82,66,0),(63,66,0),(73,80,0),(60,80,0);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_download`
--

LOCK TABLES `oc_product_to_download` WRITE;
/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_layout`
--

LOCK TABLES `oc_product_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
INSERT INTO `oc_product_to_layout` VALUES (42,0,0),(50,0,0),(51,0,0),(52,0,0),(53,0,0),(54,0,0),(55,0,0),(56,0,0),(57,0,0),(58,0,0),(59,0,0),(60,0,0),(61,0,0),(62,0,0),(63,0,0),(64,0,0),(65,0,0),(66,0,0),(67,0,0),(68,0,0),(69,0,0),(70,0,0),(71,0,0),(72,0,0),(73,0,0),(74,0,0),(75,0,0),(76,0,0),(77,0,0),(78,0,0),(79,0,0),(80,0,0),(81,0,0),(82,0,0);
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_store`
--

LOCK TABLES `oc_product_to_store` WRITE;
/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
INSERT INTO `oc_product_to_store` VALUES (42,0),(50,0),(51,0),(52,0),(53,0),(54,0),(55,0),(56,0),(57,0),(58,0),(59,0),(60,0),(61,0),(62,0),(63,0),(64,0),(65,0),(66,0),(67,0),(68,0),(69,0),(70,0),(71,0),(72,0),(73,0),(74,0),(75,0),(76,0),(77,0),(78,0),(79,0),(80,0),(81,0),(82,0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring`
--

DROP TABLE IF EXISTS `oc_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring`
--

LOCK TABLES `oc_recurring` WRITE;
/*!40000 ALTER TABLE `oc_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring_description`
--

DROP TABLE IF EXISTS `oc_recurring_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring_description`
--

LOCK TABLES `oc_recurring_description` WRITE;
/*!40000 ALTER TABLE `oc_recurring_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return`
--

LOCK TABLES `oc_return` WRITE;
/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_action`
--

LOCK TABLES `oc_return_action` WRITE;
/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
INSERT INTO `oc_return_action` VALUES (1,1,'Відшкодовано'),(2,1,'Повернення коштів'),(3,1,'Відправлена заміна');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_history`
--

LOCK TABLES `oc_return_history` WRITE;
/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_reason`
--

LOCK TABLES `oc_return_reason` WRITE;
/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
INSERT INTO `oc_return_reason` VALUES (1,1,'Отримано/доставлено несправним (зламаним)'),(2,1,'Отримано не той (помилковий) товар'),(3,1,'Помилкове замовлення'),(4,1,'Несправний, будь ласка, вкажіть подробиці'),(5,1,'Інше (інша причина), будь ласка, вкажіть/докладіть подробиці');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_status`
--

LOCK TABLES `oc_return_status` WRITE;
/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
INSERT INTO `oc_return_status` VALUES (1,1,'В очікуванні'),(3,1,'Виконано'),(2,1,'Очікування товару');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_review`
--

LOCK TABLES `oc_review` WRITE;
/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
INSERT INTO `oc_review` VALUES (1,55,0,'Маргаріта','Добрий обігрівач. Замовила собі та мамі на дачу. Рекомендую',5,1,'2023-09-02 05:40:27','2023-11-03 18:11:17'),(2,50,0,'Олександр','Всім привіт. Дуже потужний обігрівач. Терморегулятор класно працює та значно економить єлектрику\r\nНе думав що буде така значна єкономія в порівнянні з газом та мережевим опаленням) Всім добра!',5,1,'2023-10-04 21:41:43','2023-10-31 19:47:08'),(3,59,0,'Боря','Хочу поділиться відгуком про компанію та обігрівач на 700Вт UDEN. Дуже сподобався сам обігрівач, досить потужний і до речі дуже сучасно виглядає і мережевий електронний терморегулятор. Працює як годинник)\r\nДоставку замовляв адресну додому до Львова.\r\nМенеджер дуже ввічливо прийняв замовлення і професійної підібрав обігрівач для моїй кімнати 15м2.\r\nДуже задоволений і обслуговуванням і звичайно халявною доставкою))) Дякуємо хлопцям з Кропивницьких обігрівачів',5,1,'2023-09-12 10:53:58','2023-11-03 18:11:01'),(4,64,0,'Олечка','Класна сушарка для рушника та ванну кімнату обігріває чудово) Дякую та рекомендую',4,1,'2023-09-24 15:56:49','0000-00-00 00:00:00'),(5,54,0,'Артем','Обогреватель классный, очень хорошо вписался в комнату.\r\n Обогрев достаточно мощный. Не боюсь за прерасход так как есть регулятор. Надо было взять с дистанционным управлением но это уже на следующий год) Персонал быстро принял заказ, это конечно приятно. Рекомендую',5,1,'2023-10-30 21:10:08','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_review_article`
--

DROP TABLE IF EXISTS `oc_review_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_review_article` (
  `review_article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`review_article_id`),
  KEY `article_id` (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_review_article`
--

LOCK TABLES `oc_review_article` WRITE;
/*!40000 ALTER TABLE `oc_review_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_review_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_seo_url`
--

DROP TABLE IF EXISTS `oc_seo_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`seo_url_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=1142 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_seo_url`
--

LOCK TABLES `oc_seo_url` WRITE;
/*!40000 ALTER TABLE `oc_seo_url` DISABLE KEYS */;
INSERT INTO `oc_seo_url` VALUES (601,0,1,'account/voucher','vouchers'),(602,0,1,'account/wishlist','wishlist'),(603,0,1,'account/account','my-account'),(604,0,1,'checkout/cart','cart'),(605,0,1,'checkout/checkout','checkout'),(606,0,1,'account/login','login'),(607,0,1,'account/logout','logout'),(608,0,1,'account/order','order-history'),(609,0,1,'account/newsletter','newsletter'),(610,0,1,'product/special','specials'),(611,0,1,'affiliate/account','affiliates'),(612,0,1,'checkout/voucher','gift-vouchers'),(613,0,1,'product/manufacturer','brands'),(614,0,1,'information/contact','contact-us'),(615,0,1,'account/return/insert','request-return'),(616,0,1,'information/sitemap','sitemap'),(617,0,1,'account/forgotten','forgot-password'),(618,0,1,'account/download','downloads'),(619,0,1,'account/return','returns'),(620,0,1,'account/transaction','transactions'),(621,0,1,'account/register','create-account'),(622,0,1,'product/compare','compare-products'),(623,0,1,'product/search','search'),(624,0,1,'account/edit','edit-account'),(625,0,1,'account/password','change-password'),(626,0,1,'account/address','address-book'),(627,0,1,'account/reward','reward-points'),(628,0,1,'affiliate/edit','edit-affiliate-account'),(629,0,1,'affiliate/password','change-affiliate-password'),(630,0,1,'affiliate/payment','affiliate-payment-options'),(631,0,1,'affiliate/tracking','affiliate-tracking-code'),(632,0,1,'affiliate/transaction','affiliate-transactions'),(633,0,1,'affiliate/logout','affiliate-logout'),(634,0,1,'affiliate/forgotten','affiliate-forgot-password'),(635,0,1,'affiliate/register','create-affiliate-account'),(636,0,1,'affiliate/login','affiliate-login'),(637,0,1,'account/return/add','add-return'),(823,0,1,'common/home',''),(845,0,2,'common/home','en'),(1130,0,1,'information_id=6','delivery'),(1131,0,1,'information_id=4','about_us'),(1128,0,1,'information_id=3','privacy'),(1132,0,1,'information_id=5','terms'),(1137,0,1,'category_id=57','tablets'),(1136,0,1,'category_id=17','software'),(1135,0,1,'category_id=24','smartphone'),(1138,0,1,'category_id=33','camera'),(1134,0,1,'category_id=34','mp3-players'),(1141,0,1,'product_id=42','apple_cinema_30'),(984,0,2,'account/account','en-my-account'),(985,0,2,'checkout/cart','en-cart'),(986,0,2,'checkout/checkout','en-checkout'),(987,0,2,'account/login','en-login'),(988,0,2,'account/logout','en-logout'),(989,0,2,'account/order','en-order-history'),(990,0,2,'account/newsletter','en-newsletter'),(991,0,2,'product/special','en-specials'),(992,0,2,'affiliate/account','en-affiliates'),(993,0,2,'checkout/voucher','en-gift-vouchers'),(994,0,2,'product/manufacturer','en-brands'),(995,0,2,'information/contact','en-contact-us'),(996,0,2,'account/return/insert','en-request-return'),(997,0,2,'information/sitemap','en-sitemap'),(998,0,2,'account/forgotten','en-forgot-password'),(999,0,2,'account/download','en-downloads'),(1001,0,2,'account/return','en-returns'),(1002,0,2,'account/transaction','en-transactions'),(1003,0,2,'account/register','en-create-account'),(1004,0,2,'product/compare','en-compare-products'),(1005,0,2,'product/search','en-search'),(1006,0,2,'account/edit','en-edit-account'),(1007,0,2,'account/password','en-change-password'),(1008,0,2,'account/address','en-address-book'),(1009,0,2,'account/reward','en-reward-points'),(1010,0,2,'affiliate/edit','en-edit-affiliate-account'),(1011,0,2,'affiliate/password','en-change-affiliate-password'),(1012,0,2,'affiliate/payment','en-affiliate-payment-options'),(1013,0,2,'affiliate/tracking','en-affiliate-tracking-code'),(1014,0,2,'affiliate/transaction','en-affiliate-transactions'),(1015,0,2,'affiliate/logout','en-affiliate-logout'),(1016,0,2,'affiliate/forgotten','en-affiliate-forgot-password'),(1017,0,2,'affiliate/register','en-create-affiliate-account'),(1018,0,2,'affiliate/login','en-affiliate-login'),(1019,0,2,'account/voucher','en-vouchers'),(1020,0,2,'account/wishlist','en-wishlist'),(1021,0,2,'account/return/add','en-add-return');
/*!40000 ALTER TABLE `oc_seo_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_session`
--

DROP TABLE IF EXISTS `oc_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_session`
--

LOCK TABLES `oc_session` WRITE;
/*!40000 ALTER TABLE `oc_session` DISABLE KEYS */;
INSERT INTO `oc_session` VALUES ('78d456af70d5e5b9f252dbc65e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2023-11-27 04:57:28');
/*!40000 ALTER TABLE `oc_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1304 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_setting`
--

LOCK TABLES `oc_setting` WRITE;
/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
INSERT INTO `oc_setting` VALUES (872,0,'config','config_canonical_self','0',0),(873,0,'config','config_add_prevnext','0',0),(874,0,'config','config_noindex_status','1',0),(875,0,'config','config_noindex_disallow_params','page',0),(1293,0,'onepcheckout','opc_comment_setting','{\"status\":\"0\",\"name_field\":{\"1\":\"\"},\"placeholder_field\":{\"1\":\"\"}}',1),(1292,0,'onepcheckout','all_payment_methods','cod',0),(871,0,'config','config_canonical_method','0',0),(870,0,'config','config_valide_params','block\r\nfrommarket\r\ngclid\r\nfbclid\r\nkeyword\r\nlist_type\r\nopenstat\r\nopenstat_service\r\nopenstat_campaign\r\nopenstat_ad\r\nopenstat_source\r\nposition\r\nsource\r\ntracking\r\ntype\r\nyclid\r\nymclid\r\nuri\r\nurltype\r\nutm_source\r\nutm_medium\r\nutm_campaign\r\nutm_term\r\nutm_content',0),(836,0,'config','config_captcha','',0),(837,0,'config','config_captcha_page','[\"review\",\"return\",\"contact\"]',1),(838,0,'config','config_logo','catalog/logo.png',0),(839,0,'config','config_icon','catalog/cart.png',0),(840,0,'config','config_mail_engine','mail',0),(841,0,'config','config_mail_parameter','',0),(842,0,'config','config_mail_smtp_hostname','',0),(843,0,'config','config_mail_smtp_username','',0),(844,0,'config','config_mail_smtp_password','',0),(845,0,'config','config_mail_smtp_port','25',0),(846,0,'config','config_mail_smtp_timeout','5',0),(847,0,'config','config_mail_alert','[\"account\",\"order\",\"review\"]',1),(848,0,'config','config_mail_alert_email','',0),(849,0,'config','config_maintenance','0',0),(850,0,'config','config_seo_url','0',0),(851,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),(852,0,'config','config_compression','0',0),(853,0,'config','config_secure','0',0),(854,0,'config','config_password','1',0),(855,0,'config','config_shared','0',0),(856,0,'config','config_encryption','GrwYS6UGSKCaU5g7SzXKM2Mce5BL4fIu22HEMbl7e9hAB5jAz96gPLFr5DDtnGcyDDeE7ANCypZyM4Tcs6TojmqgaDpH9pYoS76Tm27tEjods2YN4F0xIfhXKtz8HqsbFvjDuhf6vLP8hCTyc6qbljlIozpCCMgrtruGKcQfWr8jksL8KE0ClUaplF5p3WaHzuHOKlbkFDIPcZkzJ255ggiL7JKXPVV9DSIOlObwaIw7DJ7O1ogeJwoTm5s2JVPBvaMdmbSOka6IN8FboJVvazmN9MgX0Xw17vF49UGUNetBfxJThq9gMkp1MuVJI7rlywiWUrfjGrjYWeciKBVAkBUFZQ8cfiqRZDdBpv312JlvgN5ckdaQbA1GAMB6QrbllloXzF68TWCpG4IE6hIBphqPShBFqCz8vHqj2YfVwLeg7yTmhebPbfCfSSse2lL1kVIx66vwgmjt9VDGllE29d0AubdGM2a5LD0U2vYCEYToy5djtToQLwZxc6c45h6n0fuk3iR9P6KEKZ2Hs0FPtRzda3I2h76EdhBr4Olng4IoOe1TL8EHn9o5MTzIqnTHJYoMmaiWk1buycYmroILgbBlVTsbiE8aA1N1H1NQimDf1lfz4S3nJ0p89D6Wl5dIDWL5cgzLLtdnCk73UdFk96TbXSi20g35o4WQjMX9TmqstYFvBoarnsXHYdzy9H3RUHRxGmu0aPavgiSTTvzDJLj5OdabzVy83domL1aFaJcVQ9t4pvj98oQs3QZbi4voDBBU25JJ86Vk20Vm5R4O5xyoPHkCe04uDG4VQliDDSHLTgOcogoB8mUMgRLy43typYMcddw5bUpMQVr6UxuEPWMx1z1Pf6u7Nqq3vxsDUppr4Xo4XHbDEAfSDCHSMnQbkVLRSb1GUTzh1GLVPeYrSwGD3cMVSbWhwj6zDgaFOb4ctfGaysnPkQ0na1er9rAZoolIzVtxClBrHEJ1szfIzuxAwKefKZWi9PXQTNXnZ4Eg6ZaPB5E2RKpaVLkkSCBG',0),(869,0,'config','config_valide_param_flag','0',0),(868,0,'config','config_page_postfix','',0),(867,0,'config','config_seopro_lowercase','0',0),(866,0,'config','config_seopro_addslash','0',0),(865,0,'config','config_seo_url_cache','0',0),(864,0,'config','config_seo_url_include_path','0',0),(863,0,'config','config_seo_pro','0',0),(862,0,'config','config_error_filename','error.log',0),(857,0,'config','config_file_max_size','300000',0),(858,0,'config','config_file_ext_allowed','zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc',0),(859,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf',0),(860,0,'config','config_error_display','1',0),(861,0,'config','config_error_log','1',0),(96,0,'payment_free_checkout','payment_free_checkout_status','1',0),(97,0,'payment_free_checkout','payment_free_checkout_order_status_id','1',0),(98,0,'payment_free_checkout','payment_free_checkout_sort_order','1',0),(99,0,'payment_cod','payment_cod_sort_order','5',0),(100,0,'payment_cod','payment_cod_total','0.01',0),(101,0,'payment_cod','payment_cod_order_status_id','1',0),(102,0,'payment_cod','payment_cod_geo_zone_id','0',0),(103,0,'payment_cod','payment_cod_status','1',0),(1299,0,'shipping_flat','shipping_flat_sort_order','1',0),(1298,0,'shipping_flat','shipping_flat_status','0',0),(1297,0,'shipping_flat','shipping_flat_geo_zone_id','0',0),(1296,0,'shipping_flat','shipping_flat_tax_class_id','9',0),(1295,0,'shipping_flat','shipping_flat_cost','5.00',0),(109,0,'total_shipping','total_shipping_sort_order','3',0),(110,0,'total_sub_total','total_sub_total_sort_order','1',0),(111,0,'total_sub_total','total_sub_total_status','1',0),(112,0,'total_tax','total_tax_status','1',0),(113,0,'total_total','total_total_sort_order','9',0),(114,0,'total_total','total_total_status','1',0),(115,0,'total_tax','total_tax_sort_order','5',0),(116,0,'total_credit','total_credit_sort_order','7',0),(117,0,'total_credit','total_credit_status','1',0),(118,0,'total_reward','total_reward_sort_order','2',0),(119,0,'total_reward','total_reward_status','1',0),(120,0,'total_shipping','total_shipping_status','1',0),(121,0,'total_shipping','total_shipping_estimator','1',0),(1294,0,'onepcheckout','opc_javascript','',0),(124,0,'total_voucher','total_voucher_sort_order','8',0),(125,0,'total_voucher','total_voucher_status','1',0),(126,0,'module_category','module_category_status','1',0),(127,0,'module_account','module_account_status','1',0),(128,0,'theme_default','theme_default_product_limit','15',0),(129,0,'theme_default','theme_default_product_description_length','100',0),(130,0,'theme_default','theme_default_image_thumb_width','228',0),(131,0,'theme_default','theme_default_image_thumb_height','228',0),(132,0,'theme_default','theme_default_image_popup_width','500',0),(133,0,'theme_default','theme_default_image_popup_height','500',0),(134,0,'theme_default','theme_default_image_category_width','80',0),(135,0,'theme_default','theme_default_image_category_height','80',0),(136,0,'theme_default','theme_default_image_manufacturer_width','80',0),(137,0,'theme_default','theme_default_image_manufacturer_height','80',0),(138,0,'theme_default','theme_default_image_product_width','228',0),(139,0,'theme_default','theme_default_image_product_height','228',0),(140,0,'theme_default','theme_default_image_additional_width','74',0),(141,0,'theme_default','theme_default_image_additional_height','74',0),(142,0,'theme_default','theme_default_image_related_width','200',0),(143,0,'theme_default','theme_default_image_related_height','200',0),(144,0,'theme_default','theme_default_image_compare_width','90',0),(145,0,'theme_default','theme_default_image_compare_height','90',0),(146,0,'theme_default','theme_default_image_wishlist_width','47',0),(147,0,'theme_default','theme_default_image_wishlist_height','47',0),(148,0,'theme_default','theme_default_image_cart_height','47',0),(149,0,'theme_default','theme_default_image_cart_width','47',0),(150,0,'theme_default','theme_default_image_location_height','50',0),(151,0,'theme_default','theme_default_image_location_width','268',0),(152,0,'theme_default','theme_default_directory','default',0),(153,0,'theme_default','theme_default_status','1',0),(154,0,'dashboard_activity','dashboard_activity_status','1',0),(155,0,'dashboard_activity','dashboard_activity_sort_order','7',0),(156,0,'dashboard_sale','dashboard_sale_status','1',0),(157,0,'dashboard_sale','dashboard_sale_width','3',0),(158,0,'dashboard_chart','dashboard_chart_status','1',0),(159,0,'dashboard_chart','dashboard_chart_width','6',0),(160,0,'dashboard_customer','dashboard_customer_status','1',0),(161,0,'dashboard_customer','dashboard_customer_width','3',0),(162,0,'dashboard_map','dashboard_map_status','1',0),(163,0,'dashboard_map','dashboard_map_width','6',0),(164,0,'dashboard_online','dashboard_online_status','1',0),(165,0,'dashboard_online','dashboard_online_width','3',0),(166,0,'dashboard_order','dashboard_order_sort_order','1',0),(167,0,'dashboard_order','dashboard_order_status','1',0),(168,0,'dashboard_order','dashboard_order_width','3',0),(169,0,'dashboard_sale','dashboard_sale_sort_order','2',0),(170,0,'dashboard_customer','dashboard_customer_sort_order','3',0),(171,0,'dashboard_online','dashboard_online_sort_order','4',0),(172,0,'dashboard_map','dashboard_map_sort_order','5',0),(173,0,'dashboard_chart','dashboard_chart_sort_order','6',0),(174,0,'dashboard_recent','dashboard_recent_status','1',0),(175,0,'dashboard_recent','dashboard_recent_sort_order','8',0),(176,0,'dashboard_activity','dashboard_activity_width','4',0),(177,0,'dashboard_recent','dashboard_recent_width','8',0),(178,0,'report_customer_activity','report_customer_activity_status','1',0),(179,0,'report_customer_activity','report_customer_activity_sort_order','1',0),(180,0,'report_customer_order','report_customer_order_status','1',0),(181,0,'report_customer_order','report_customer_order_sort_order','2',0),(182,0,'report_customer_reward','report_customer_reward_status','1',0),(183,0,'report_customer_reward','report_customer_reward_sort_order','3',0),(184,0,'report_customer_search','report_customer_search_sort_order','3',0),(185,0,'report_customer_search','report_customer_search_status','1',0),(186,0,'report_customer_transaction','report_customer_transaction_status','1',0),(187,0,'report_customer_transaction','report_customer_transaction_status_sort_order','4',0),(188,0,'report_sale_tax','report_sale_tax_status','1',0),(189,0,'report_sale_tax','report_sale_tax_sort_order','5',0),(190,0,'report_sale_shipping','report_sale_shipping_status','1',0),(191,0,'report_sale_shipping','report_sale_shipping_sort_order','6',0),(192,0,'report_sale_return','report_sale_return_status','1',0),(193,0,'report_sale_return','report_sale_return_sort_order','7',0),(194,0,'report_sale_order','report_sale_order_status','1',0),(195,0,'report_sale_order','report_sale_order_sort_order','8',0),(196,0,'report_sale_coupon','report_sale_coupon_status','1',0),(197,0,'report_sale_coupon','report_sale_coupon_sort_order','9',0),(198,0,'report_product_viewed','report_product_viewed_status','1',0),(199,0,'report_product_viewed','report_product_viewed_sort_order','10',0),(200,0,'report_product_purchased','report_product_purchased_status','1',0),(201,0,'report_product_purchased','report_product_purchased_sort_order','11',0),(202,0,'report_marketing','report_marketing_status','1',0),(203,0,'report_marketing','report_marketing_sort_order','12',0),(204,0,'developer','developer_theme','1',0),(205,0,'developer','developer_sass','1',0),(259,0,'configblog','configblog_image_article_width','150',0),(258,0,'configblog','configblog_image_category_height','50',0),(256,0,'configblog','configblog_review_mail','0',0),(257,0,'configblog','configblog_image_category_width','50',0),(255,0,'configblog','configblog_review_guest','0',0),(253,0,'configblog','configblog_article_download','0',0),(254,0,'configblog','configblog_review_status','0',0),(252,0,'configblog','configblog_blog_menu','0',0),(251,0,'configblog','configblog_limit_admin','20',0),(250,0,'configblog','configblog_article_description_length','200',0),(249,0,'configblog','configblog_article_limit','20',0),(248,0,'configblog','configblog_article_count','0',0),(247,0,'configblog','configblog_meta_keyword','',0),(246,0,'configblog','configblog_meta_description','',0),(245,0,'configblog','configblog_meta_title','Блог для інтернет-магазину на OpenCart',0),(244,0,'configblog','configblog_html_h1','Блог для інтернет-магазину на OpenCart',0),(243,0,'configblog','configblog_name','Блог',0),(263,0,'advertise_google','advertise_google_checklist_confirmed','1',0),(228,0,'currency_ecb','currency_ecb_status','1',0),(229,0,'currency_fixer','currency_fixer_status','0',0),(230,0,'module_blog_category','module_blog_category_status','1',0),(231,0,'domovoy','domovoy_folders_logs','{\"size\":504857,\"unit\":{\"size\":493,\"unit\":\"\\u041a\\u0431\\u0430\\u0439\\u0442\"},\"files\":4,\"date\":\"2023-11-10 15:55:03\"}',1),(232,0,'dashboard_domovoy','dashboard_domovoy_warning_funtions','diskfreespace\r\ndisk_total_space\r\ndisk_total_space\r\nfileperms\r\nfopen\r\nphpversion\r\nopendir\r\nposix_getpwuid\r\nposix_uname',0),(233,0,'dashboard_domovoy','dashboard_domovoy_danger_funtions','exec\r\npassthru\r\nini_get\r\nini_get_all\r\nparse_ini_file\r\nphp_uname\r\nsystem\r\nshell_exec\r\nshow_source\r\npcntl_exec\r\npcntl_exec\r\nexpect_popen\r\nproc_open\r\npopen',0),(234,0,'dashboard_domovoy','dashboard_domovoy_free_space_status','0',0),(235,0,'dashboard_domovoy','dashboard_domovoy_disk_free_space','500',0),(236,0,'dashboard_domovoy','dashboard_domovoy_cron','{\"logs\":{\"status\":\"1\",\"size\":\"100\",\"time\":\"30\"},\"cache\":{\"status\":\"0\",\"size\":\"100\",\"time\":\"30\"},\"imagescache\":{\"status\":\"0\",\"size\":\"100\",\"time\":\"30\"}}',1),(237,0,'dashboard_domovoy','dashboard_domovoy_sort_order','10',0),(238,0,'dashboard_domovoy','dashboard_domovoy_status','1',0),(239,0,'dashboard_domovoy','dashboard_domovoy_width','12',0),(835,0,'config','config_return_status_id','2',0),(833,0,'config','config_affiliate_id','4',0),(834,0,'config','config_return_id','3',0),(832,0,'config','config_affiliate_commission','5',0),(831,0,'config','config_affiliate_auto','0',0),(830,0,'config','config_affiliate_approval','0',0),(829,0,'config','config_affiliate_group_id','1',0),(828,0,'config','config_stock_checkout','0',0),(827,0,'config','config_stock_warning','0',0),(826,0,'config','config_stock_display','0',0),(823,0,'config','config_complete_status','[\"3\",\"5\"]',1),(824,0,'config','config_fraud_status_id','16',0),(825,0,'config','config_api_id','1',0),(822,0,'config','config_processing_status','[\"2\",\"3\",\"5\",\"12\",\"1\"]',1),(821,0,'config','config_order_status_id','1',0),(820,0,'config','config_checkout_id','5',0),(819,0,'config','config_checkout_guest','1',0),(818,0,'config','config_cart_weight','1',0),(260,0,'configblog','configblog_image_article_height','150',0),(261,0,'configblog','configblog_image_related_width','200',0),(262,0,'configblog','configblog_image_related_height','200',0),(817,0,'config','config_invoice_prefix','INV-2023-00',0),(815,0,'config','config_login_attempts','5',0),(816,0,'config','config_account_id','3',0),(814,0,'config','config_customer_price','0',0),(813,0,'config','config_customer_group_display','[\"1\"]',1),(812,0,'config','config_customer_group_id','1',0),(811,0,'config','config_customer_search','0',0),(810,0,'config','config_customer_activity','0',0),(809,0,'config','config_customer_online','0',0),(808,0,'config','config_tax_customer','',0),(807,0,'config','config_tax_default','',0),(806,0,'config','config_tax','0',0),(805,0,'config','config_voucher_max','1000',0),(804,0,'config','config_voucher_min','1',0),(802,0,'config','config_review_status','1',0),(803,0,'config','config_review_guest','1',0),(801,0,'config','config_limit_autocomplete','5',0),(800,0,'config','config_limit_admin','20',0),(799,0,'config','config_product_count','0',0),(798,0,'config','config_weight_class_id','1',0),(797,0,'config','config_length_class_id','1',0),(796,0,'config','config_currency_engine','ecb',0),(795,0,'config','config_currency_auto','1',0),(794,0,'config','config_currency','UAH',0),(793,0,'config','config_admin_language','uk-ua',0),(792,0,'config','config_language','uk-ua',0),(791,0,'config','config_timezone','Europe/Uzhgorod',0),(790,0,'config','config_zone_id','3491',0),(788,0,'config','config_comment','',0),(789,0,'config','config_country_id','220',0),(787,0,'config','config_open','9:00 - 21:00',0),(784,0,'config','config_telephone','+38(067)444-0595',0),(785,0,'config','config_fax','',0),(786,0,'config','config_image','catalog/logo.png',0),(782,0,'config','config_geocode','',0),(783,0,'config','config_email','boguslav.invest@gmail.com',0),(780,0,'config','config_owner','Віктор Вікторович',0),(781,0,'config','config_address','25000 \r\nУкраїна.\r\nм. Кропивницький.\r\nвул. Преображенська, 4',0),(779,0,'config','config_name','Кропивницькі керамічні обігрівачі',0),(778,0,'config','config_layout_id','1',0),(776,0,'config','config_meta_keyword','',0),(777,0,'config','config_theme','default',0),(775,0,'config','config_meta_description','Кропивницькі керамічні обігрівачі',0),(774,0,'config','config_meta_title','Кропивницькі керамічні обігрівачі',0),(1300,0,'shipping_free','shipping_free_total','',0),(1301,0,'shipping_free','shipping_free_geo_zone_id','0',0),(1279,0,'onepcheckout','opc_free_text_status','0',0),(1291,0,'onepcheckout','opc_setting_shipping_methods','{\"default\":{\"title\":\"\\u0417\\u0430 \\u0437\\u0430\\u043c\\u043e\\u0432\\u0447\\u0443\\u0432\\u0430\\u043d\\u043d\\u044f\\u043c\",\"free_shipping_status\":\"0\",\"free_shipping_price\":\"0\"}}',1),(1281,0,'onepcheckout','opc_cr_width','30',0),(1282,0,'onepcheckout','free_text','{\"1\":{\"text\":\"\"}}',1),(1283,0,'onepcheckout','opc_related_products_setting','{\"title\":{\"1\":\"\"},\"image_width\":\"120\",\"image_height\":\"120\",\"limit\":\"15\",\"type_product_display\":\"related\",\"shuffle_products\":\"0\"}',1),(1284,0,'onepcheckout','featured_product_name','',0),(1285,0,'onepcheckout','customer_shipping_method','flat_flat',0),(1286,0,'onepcheckout','search_shipping','{\"country_id\":\"220\",\"zone_id\":\"0\"}',1),(1287,0,'onepcheckout','product_name','',0),(1288,0,'onepcheckout','opc_customer_setting','{\"default\":{\"title\":\"\\u0417\\u0430 \\u0437\\u0430\\u043c\\u043e\\u0432\\u0447\\u0443\\u0432\\u0430\\u043d\\u043d\\u044f\\u043c\",\"firstname\":{\"show_when\":\"all_client\",\"status\":\"required\",\"setting\":{\"name_field\":{\"1\":\"\"},\"placeholder_field\":{\"1\":\"\"},\"text_error_field\":{\"1\":\"\"}},\"type_action\":\"default\",\"action_field\":\"\"},\"lastname\":{\"show_when\":\"all_client\",\"status\":\"0\",\"setting\":{\"name_field\":{\"1\":\"\"},\"placeholder_field\":{\"1\":\"\"},\"text_error_field\":{\"1\":\"\"}},\"type_action\":\"default\",\"action_field\":\"\"},\"telephone\":{\"show_when\":\"all_client\",\"status\":\"required\",\"setting\":{\"name_field\":{\"1\":\"\"},\"placeholder_field\":{\"1\":\"\"},\"text_error_field\":{\"1\":\"\"}},\"type_action\":\"default\",\"action_field\":\"\"},\"email\":{\"show_when\":\"all_client\",\"status\":\"0\",\"setting\":{\"name_field\":{\"1\":\"\"},\"placeholder_field\":{\"1\":\"\"},\"text_error_field\":{\"1\":\"\"}},\"type_action\":\"default\",\"action_field\":\"\"},\"fax\":{\"show_when\":\"all_client\",\"status\":\"0\",\"setting\":{\"name_field\":{\"1\":\"\"},\"placeholder_field\":{\"1\":\"\"},\"text_error_field\":{\"1\":\"\"}},\"type_action\":\"default\",\"action_field\":\"\"}}}',1),(1289,0,'onepcheckout','select_shipping_method','flat_flat',0),(1290,0,'onepcheckout','opc_payment_address','{\"default\":{\"title\":\"\\u0417\\u0430 \\u0437\\u0430\\u043c\\u043e\\u0432\\u0447\\u0443\\u0432\\u0430\\u043d\\u043d\\u044f\\u043c\",\"country\":{\"show_when\":\"all_client\",\"status\":\"0\",\"setting\":{\"name_field\":{\"1\":\"\"},\"placeholder_field\":{\"1\":\"\"},\"text_error_field\":{\"1\":\"\"},\"type\":\"select\"},\"type_action\":\"default\",\"action_field\":\"\"},\"zone_id\":{\"show_when\":\"all_client\",\"status\":\"0\",\"setting\":{\"name_field\":{\"1\":\"\"},\"placeholder_field\":{\"1\":\"\"},\"text_error_field\":{\"1\":\"\"},\"type\":\"select\"},\"type_action\":\"default\",\"action_field\":\"\"},\"city\":{\"show_when\":\"all_client\",\"status\":\"0\",\"setting\":{\"name_field\":{\"1\":\"\"},\"placeholder_field\":{\"1\":\"\"},\"text_error_field\":{\"1\":\"\"},\"type\":\"input\"},\"type_action\":\"default\",\"action_field\":\"\"},\"address_1\":{\"show_when\":\"all_client\",\"status\":\"0\",\"setting\":{\"name_field\":{\"1\":\"\"},\"placeholder_field\":{\"1\":\"\"},\"text_error_field\":{\"1\":\"\"},\"type\":\"input\"},\"type_action\":\"default\",\"action_field\":\"\"},\"address_2\":{\"show_when\":\"all_client\",\"status\":\"0\",\"setting\":{\"name_field\":{\"1\":\"\"},\"placeholder_field\":{\"1\":\"\"},\"text_error_field\":{\"1\":\"\"},\"type\":\"input\"},\"type_action\":\"default\",\"action_field\":\"\"},\"postcode\":{\"show_when\":\"all_client\",\"status\":\"0\",\"setting\":{\"name_field\":{\"1\":\"\"},\"placeholder_field\":{\"1\":\"\"},\"text_error_field\":{\"1\":\"\"},\"type\":\"input\"},\"type_action\":\"default\",\"action_field\":\"\"},\"company\":{\"show_when\":\"all_client\",\"status\":\"0\",\"setting\":{\"name_field\":{\"1\":\"\"},\"placeholder_field\":{\"1\":\"\"},\"text_error_field\":{\"1\":\"\"},\"type\":\"input\"},\"type_action\":\"default\",\"action_field\":\"\"}}}',1),(1276,0,'onepcheckout','opc_related_products_status','0',0),(1277,0,'onepcheckout','opc_sorts_block','{\"related_products\":\"top_full\",\"cart\":\"top_left\",\"country_region\":\"top_left\",\"customer\":\"top_left\",\"shipping_method\":\"center_left\",\"payment_method\":\"center_right\",\"shipping_address\":\"bottom_left\",\"comment\":\"bottom_left\",\"totals\":\"fix_right\",\"free_text\":\"bottom_full\"}',1),(1280,0,'onepcheckout','opc_cl_width','70',0),(1278,0,'onepcheckout','opc_country_region_status','0',0),(1275,0,'onepcheckout','opc_register_status','2',0),(1274,0,'onepcheckout','opc_show_not_call_me','0',0),(1273,0,'onepcheckout','opc_show_weight','0',0),(1272,0,'onepcheckout','opc_agree_default','0',0),(1271,0,'onepcheckout','opc_min_price_order','{\"1\":\"\"}',1),(1270,0,'onepcheckout','opc_mask','',0),(1269,0,'onepcheckout','config_show_onepcheckout','1',0),(1302,0,'shipping_free','shipping_free_status','1',0),(1303,0,'shipping_free','shipping_free_sort_order','',0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_shipping_courier`
--

DROP TABLE IF EXISTS `oc_shipping_courier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`shipping_courier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_shipping_courier`
--

LOCK TABLES `oc_shipping_courier` WRITE;
/*!40000 ALTER TABLE `oc_shipping_courier` DISABLE KEYS */;
INSERT INTO `oc_shipping_courier` VALUES (1,'dhl','DHL'),(2,'fedex','Fedex'),(3,'ups','UPS'),(4,'royal-mail','Royal Mail'),(5,'usps','United States Postal Service'),(6,'auspost','Australia Post');
/*!40000 ALTER TABLE `oc_shipping_courier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_statistics`
--

DROP TABLE IF EXISTS `oc_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  PRIMARY KEY (`statistics_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_statistics`
--

LOCK TABLES `oc_statistics` WRITE;
/*!40000 ALTER TABLE `oc_statistics` DISABLE KEYS */;
INSERT INTO `oc_statistics` VALUES (1,'order_sale',71525.0000),(2,'order_processing',0.0000),(3,'order_complete',0.0000),(4,'order_other',0.0000),(5,'returns',0.0000),(6,'product',0.0000),(7,'review',0.0000);
/*!40000 ALTER TABLE `oc_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_stock_status`
--

LOCK TABLES `oc_stock_status` WRITE;
/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
INSERT INTO `oc_stock_status` VALUES (7,1,'В наявності'),(8,1,'Під замовлення'),(5,1,'Немає в наявності'),(6,1,'Очікується через 2-3 дні');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_store`
--

LOCK TABLES `oc_store` WRITE;
/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_class`
--

LOCK TABLES `oc_tax_class` WRITE;
/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
INSERT INTO `oc_tax_class` VALUES (9,'Taxable Goods','Taxed goods','2009-01-06 23:21:53','2011-09-23 14:07:50'),(10,'Downloadable Products','Downloadable','2011-09-21 22:19:39','2011-09-22 10:27:36');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate`
--

LOCK TABLES `oc_tax_rate` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
INSERT INTO `oc_tax_rate` VALUES (86,3,'VAT (20%)',20.0000,'P','2011-03-09 21:17:10','2011-09-22 22:24:29'),(87,3,'Eco Tax (-2.00)',2.0000,'F','2011-09-21 21:49:23','2011-09-23 00:40:19');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

LOCK TABLES `oc_tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc_tax_rate_to_customer_group` VALUES (86,1),(87,1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1,
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rule`
--

LOCK TABLES `oc_tax_rule` WRITE;
/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
INSERT INTO `oc_tax_rule` VALUES (121,10,86,'payment',1),(120,10,87,'store',0),(128,9,86,'shipping',1),(127,9,87,'shipping',2);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_theme`
--

DROP TABLE IF EXISTS `oc_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_theme`
--

LOCK TABLES `oc_theme` WRITE;
/*!40000 ALTER TABLE `oc_theme` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_translation`
--

DROP TABLE IF EXISTS `oc_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_translation`
--

LOCK TABLES `oc_translation` WRITE;
/*!40000 ALTER TABLE `oc_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_upload`
--

DROP TABLE IF EXISTS `oc_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_upload`
--

LOCK TABLES `oc_upload` WRITE;
/*!40000 ALTER TABLE `oc_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user`
--

LOCK TABLES `oc_user` WRITE;
/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
INSERT INTO `oc_user` VALUES (1,1,'admin','45e0ec9f23ddbea3d5961546e36c4a8d5d1c79b1','ajsc7Rej9','Viktor','Vianskus','boguslav.invest@gmail.com','catalog/photo_2023-06-03_20-43-36.jpg','','194.104.22.136',1,'2023-10-26 18:16:17');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_group`
--

LOCK TABLES `oc_user_group` WRITE;
/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
INSERT INTO `oc_user_group` VALUES (1,'Administrator','{\"access\":[\"blog\\/article\",\"blog\\/category\",\"blog\\/review\",\"blog\\/setting\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/currency\\/cbr\",\"extension\\/currency\\/ecb\",\"extension\\/currency\\/fixer\",\"extension\\/currency\\/nbu\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/domovoy\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/currency\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/blog_category\",\"extension\\/module\\/blog_featured\",\"extension\\/module\\/blog_latest\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/featured\",\"extension\\/module\\/featured_article\",\"extension\\/module\\/featured_product\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/paypal_smart_button\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypal\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/opencartforum\",\"marketplace\\/promotion\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"search\\/search\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/bestseller\",\"extension\\/analytics\\/google\",\"analytics\\/google\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/store\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/onepcheckout\",\"sale\\/abandoned_order\",\"extension\\/shipping\\/free\"],\"modify\":[\"blog\\/article\",\"blog\\/category\",\"blog\\/review\",\"blog\\/setting\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/currency\\/cbr\",\"extension\\/currency\\/ecb\",\"extension\\/currency\\/fixer\",\"extension\\/currency\\/nbu\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/domovoy\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/currency\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/blog_category\",\"extension\\/module\\/blog_featured\",\"extension\\/module\\/blog_latest\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/featured\",\"extension\\/module\\/featured_article\",\"extension\\/module\\/featured_product\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/paypal_smart_button\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypal\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/opencartforum\",\"marketplace\\/promotion\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"search\\/search\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/bestseller\",\"extension\\/analytics\\/google\",\"analytics\\/google\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/store\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/onepcheckout\",\"sale\\/abandoned_order\",\"extension\\/shipping\\/free\"]}'),(10,'Demonstration','');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher`
--

LOCK TABLES `oc_voucher` WRITE;
/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_history`
--

LOCK TABLES `oc_voucher_history` WRITE;
/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme`
--

LOCK TABLES `oc_voucher_theme` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme` VALUES (8,'catalog/demo/canon_eos_5d_2.jpg'),(7,'catalog/demo/gift-voucher-birthday.jpg'),(6,'catalog/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme_description`
--

LOCK TABLES `oc_voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme_description` VALUES (6,1,'Новий Рік'),(7,1,'День народження'),(8,1,'Подарунок');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class`
--

LOCK TABLES `oc_weight_class` WRITE;
/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
INSERT INTO `oc_weight_class` VALUES (1,1.00000000),(2,1000.00000000),(5,2.20460000),(6,35.27400000);
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class_description`
--

LOCK TABLES `oc_weight_class_description` WRITE;
/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc_weight_class_description` VALUES (1,1,'Кілограми','кг'),(2,1,'Грами','г'),(5,1,'Фунти','lb'),(6,1,'Унції','oz');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4225 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone`
--

LOCK TABLES `oc_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
INSERT INTO `oc_zone` VALUES (3480,220,'Черкаська область','71',1),(3481,220,'Чернігівська область','74',1),(3482,220,'Чернівецька область','77',1),(3483,220,'Крим','43',1),(3484,220,'Дніпропетровська область','12',1),(3485,220,'Донецька область','14',1),(3486,220,'Івано-Франківська область','26',1),(3487,220,'Херсонська область','65',1),(3488,220,'Хмельницька область','68',1),(3489,220,'Кіровоградська область','35',1),(3490,220,'Київ','30',1),(3491,220,'Київська область','32',1),(3492,220,'Луганська область','09',1),(3493,220,'Львівська область','46',1),(3494,220,'Миколаївська область','48',1),(3495,220,'Одеська область','51',1),(3496,220,'Полтавська область','53',1),(3497,220,'Рівненська область','56',1),(3498,220,'Севастополь','40',1),(3499,220,'Сумська область','59',1),(3500,220,'Тернопільська область','61',1),(3501,220,'Вінницька область','05',1),(3502,220,'Волинська область','07',1),(3503,220,'Закарпатська область','21',1),(3504,220,'Запорізька область','23',1),(3505,220,'Житомирська область','18',1),(4224,220,'Харківська область','63',1);
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

LOCK TABLES `oc_zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-27 17:00:09
