-- MariaDB dump 10.19  Distrib 10.8.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: controlpanel
-- ------------------------------------------------------
-- Server version	10.8.3-MariaDB-1:10.8.3+maria~focal

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
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject` (`subject_type`,`subject_id`),
  KEY `causer` (`causer_type`,`causer_id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES
(1,'default','created','App\\Models\\Product','yVCrWkXGSdzeAsHR0pfiN',NULL,NULL,'[]','2022-06-23 10:54:09','2022-06-23 10:54:09'),
(2,'default','created','App\\Models\\Product','pvkCZt_ZU7uRYchSGvfFH',NULL,NULL,'[]','2022-06-23 10:54:09','2022-06-23 10:54:09'),
(3,'default','created','App\\Models\\Product','A0hD9pykK3NL1eM8FDKWd',NULL,NULL,'[]','2022-06-23 10:54:09','2022-06-23 10:54:09'),
(4,'default','created','App\\Models\\ShopProduct','HgZ1nBoCeId5Sfm7ltGTp',NULL,NULL,'[]','2022-06-23 10:54:09','2022-06-23 10:54:09'),
(5,'default','created','App\\Models\\ShopProduct','5Un8Gj-1MbdZZTZEjno0P',NULL,NULL,'[]','2022-06-23 10:54:09','2022-06-23 10:54:09'),
(6,'default','created','App\\Models\\ShopProduct','XnStQGbBXBHMjjFDOHm2u',NULL,NULL,'[]','2022-06-23 10:54:09','2022-06-23 10:54:09'),
(7,'default','created','App\\Models\\ShopProduct','timfJbHbdMsnG58II0-WU',NULL,NULL,'[]','2022-06-23 10:54:09','2022-06-23 10:54:09'),
(8,'default','created','App\\Models\\ShopProduct','_0pAki3mthlKUZ2fIV8lA',NULL,NULL,'[]','2022-06-23 10:54:09','2022-06-23 10:54:09');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application_apis`
--

DROP TABLE IF EXISTS `application_apis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application_apis` (
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_apis`
--

LOCK TABLES `application_apis` WRITE;
/*!40000 ALTER TABLE `application_apis` DISABLE KEYS */;
INSERT INTO `application_apis` VALUES
('QOZgfSCYHOTgt9NEgW9KqRuW-BDUlBe1h8ffNnWSCA2iwzQN','admin',NULL,'2022-06-23 10:54:09','2022-06-23 10:54:09');
/*!40000 ALTER TABLE `application_apis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discord_users`
--

DROP TABLE IF EXISTS `discord_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discord_users` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discriminator` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` tinyint(1) DEFAULT NULL,
  `public_flags` int(11) DEFAULT NULL,
  `flags` int(11) DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mfa_enabled` tinyint(1) DEFAULT NULL,
  `premium_type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discord_users`
--

LOCK TABLES `discord_users` WRITE;
/*!40000 ALTER TABLE `discord_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `discord_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `egg_product`
--

DROP TABLE IF EXISTS `egg_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `egg_product` (
  `egg_id` bigint(20) unsigned NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `egg_product_egg_id_foreign` (`egg_id`),
  KEY `egg_product_product_id_foreign` (`product_id`),
  CONSTRAINT `egg_product_egg_id_foreign` FOREIGN KEY (`egg_id`) REFERENCES `eggs` (`id`),
  CONSTRAINT `egg_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `egg_product`
--

LOCK TABLES `egg_product` WRITE;
/*!40000 ALTER TABLE `egg_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `egg_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eggs`
--

DROP TABLE IF EXISTS `eggs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eggs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nest_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docker_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `startup` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `environment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`environment`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `eggs_nest_id_foreign` (`nest_id`),
  CONSTRAINT `eggs_nest_id_foreign` FOREIGN KEY (`nest_id`) REFERENCES `nests` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eggs`
--

LOCK TABLES `eggs` WRITE;
/*!40000 ALTER TABLE `eggs` DISABLE KEYS */;
/*!40000 ALTER TABLE `eggs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2021_02_06_182407_create_notifications_table',1),
(5,'2021_02_07_173938_create_locations_table',1),
(6,'2021_02_07_173939_create_nodes_table',1),
(7,'2021_02_07_173940_create_nests_table',1),
(8,'2021_02_07_173941_create_eggs_table',1),
(9,'2021_02_07_173942_create_products_table',1),
(10,'2021_02_07_173943_create_servers_table',1),
(11,'2021_02_08_190205_create_activity_log_table',1),
(12,'2021_02_16_162655_create_payments_table',1),
(13,'2021_03_24_073828_add_ip_and_last_seen_to_users_table',1),
(14,'2021_04_11_190944_create_discord_users_table',1),
(15,'2021_04_11_195141_add_discord_verified_at_to_users_table',1),
(16,'2021_05_04_155305_add_disabled_to_products_table',1),
(17,'2021_05_06_123125_update_make_description_nullable_to_locations_table',1),
(18,'2021_05_06_131634_update_make_description_nullable_add_disabled_to_nodes_table',1),
(19,'2021_05_06_140859_update_make_description_nullable_add_disabled_to_nest_table',1),
(20,'2021_05_06_150709_update_make_description_nullable_to_eggs_table',1),
(21,'2021_05_07_065911_update_to_servers_table',1),
(22,'2021_05_07_162701_remove_config_from_servers_table',1),
(23,'2021_05_08_081218_create_paypal_products_table',1),
(24,'2021_05_08_164658_create_configurations_table',1),
(25,'2021_05_09_153742_add_display_to_paypal_products_table',1),
(26,'2021_05_15_211643_create_jobs_table',1),
(27,'2021_06_06_144120_create_application_apis_table',1),
(28,'2021_06_09_213306_create_useful_links_table',1),
(29,'2021_06_23_090026_update_price_to_payments_table',1),
(30,'2021_06_23_090806_add__currency_code_to_payments_table',1),
(31,'2021_07_06_152319_create_egg_product_table',1),
(32,'2021_07_06_154314_create_node_product_table',1),
(33,'2021_07_06_154658_add_disabled_to_eggs_table',1),
(34,'2021_07_09_190453_create_vouchers_table',1),
(35,'2021_07_09_191913_create_user_voucher_table',1),
(36,'2021_07_10_062140_update_credits_to_users_table',1),
(37,'2021_09_26_150114_add_suspended_to_users_table',1),
(38,'2021_10_01_200844_add_product_minimum_credits',1),
(39,'2021_11_05_071456_add_tax_to_paymentlogs',1),
(40,'2021_11_27_014226_create_invoices',1),
(41,'2021_12_15_120346_update_to_payments_table',1),
(42,'2021_12_28_203515_rename_paypal_products_table',1),
(43,'2022_01_05_144858_rename_configurations_table',1),
(44,'2022_01_14_234418_update_settings_table_allow_nullable',1),
(45,'2022_05_30_085900_rename_credits_product',1),
(46,'2022_06_02_081655_referral_code',1),
(47,'2022_06_02_091921_table-user-referrals',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nests`
--

DROP TABLE IF EXISTS `nests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nests`
--

LOCK TABLES `nests` WRITE;
/*!40000 ALTER TABLE `nests` DISABLE KEYS */;
/*!40000 ALTER TABLE `nests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_product`
--

DROP TABLE IF EXISTS `node_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_product` (
  `node_id` bigint(20) unsigned NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `node_product_node_id_foreign` (`node_id`),
  KEY `node_product_product_id_foreign` (`product_id`),
  CONSTRAINT `node_product_node_id_foreign` FOREIGN KEY (`node_id`) REFERENCES `nodes` (`id`),
  CONSTRAINT `node_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_product`
--

LOCK TABLES `node_product` WRITE;
/*!40000 ALTER TABLE `node_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `node_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodes`
--

DROP TABLE IF EXISTS `nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `nodes_location_id_foreign` (`location_id`),
  CONSTRAINT `nodes_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodes`
--

LOCK TABLES `nodes` WRITE;
/*!40000 ALTER TABLE `nodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `tax_value` decimal(8,2) DEFAULT NULL,
  `tax_percent` int(11) DEFAULT NULL,
  `total_price` decimal(8,2) DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_item_product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `payments_user_id_foreign` (`user_id`),
  CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `memory` int(11) NOT NULL,
  `cpu` int(11) NOT NULL DEFAULT 100,
  `swap` int(11) NOT NULL DEFAULT 64,
  `disk` int(11) NOT NULL DEFAULT 1000,
  `io` int(11) NOT NULL DEFAULT 500,
  `databases` int(11) NOT NULL DEFAULT 1,
  `backups` int(11) NOT NULL DEFAULT 1,
  `allocations` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `minimum_credits` double(8,2) NOT NULL DEFAULT -1.00,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES
('A0hD9pykK3NL1eM8FDKWd','Advanced','256MB Ram, 5GB Disk, 5 Database,  280 credits monthly',280,256,100,64,5000,500,5,1,0,'2022-06-23 10:54:09','2022-06-23 10:54:09',0,-1.00),
('pvkCZt_ZU7uRYchSGvfFH','Standard','128MB Ram, 2GB Disk, 2 Database,  210 credits monthly',210,128,100,64,2000,500,2,1,0,'2022-06-23 10:54:09','2022-06-23 10:54:09',0,-1.00),
('yVCrWkXGSdzeAsHR0pfiN','Starter','64MB Ram, 1GB Disk, 1 Database, 140 credits monthly',140,64,100,64,1000,500,1,1,0,'2022-06-23 10:54:09','2022-06-23 10:54:09',0,-1.00);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servers` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suspended` datetime DEFAULT NULL,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pterodactyl_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `servers_user_id_foreign` (`user_id`),
  KEY `servers_product_id_foreign` (`product_id`),
  CONSTRAINT `servers_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `servers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'string',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES
('SETTINGS::DISCORD:BOT_TOKEN','','string','Discord API Credentials - https://discordapp.com/developers/applications/','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::DISCORD:CLIENT_ID','','string','Discord API Credentials - https://discordapp.com/developers/applications/','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::DISCORD:CLIENT_SECRET','','string','Discord API Credentials - https://discordapp.com/developers/applications/','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::DISCORD:GUILD_ID','','string','Discord API Credentials - https://discordapp.com/developers/applications/','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::DISCORD:INVITE_URL','','string','The invite URL to your Discord Server','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::DISCORD:ROLE_ID','','string','Discord role that will be assigned to users when they register','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::INVOICE:COMPANY_ADDRESS','','string','The address of the Company on the Invoices','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::INVOICE:COMPANY_MAIL','','string','The email address of the Company on the Invoices','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::INVOICE:COMPANY_NAME','','string','The name of the Company on the Invoices','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::INVOICE:COMPANY_PHONE','','string','The phone number of the Company on the Invoices','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::INVOICE:COMPANY_VAT','','string','The VAT-Number of the Company on the Invoices','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::INVOICE:COMPANY_WEBSITE','','string','The Website of the Company on the Invoices','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::INVOICE:ENABLED','false','boolean','Enables or disables the invoice feature for payments','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::INVOICE:PREFIX','INV','string','The invoice prefix','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::LOCALE:AVAILABLE','','string','The available languages','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::LOCALE:CLIENTS_CAN_CHANGE','false','boolean','If this is true, the clients will be able to change their Locale.','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::LOCALE:DATATABLES','en-gb','string','The Language of the Datatables. Grab the Language-Codes from here https://datatables.net/plug-ins/i18n/','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::LOCALE:DEFAULT','en','string','The default Language the dashboard will be shown in','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::LOCALE:DYNAMIC','false','boolean','If this is true, the Language will change to the Clients browserlanguage or default.','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::MAIL:ENCRYPTION',NULL,'string','Mailer Encryption (tls, ssl)','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::MAIL:FROM_ADDRESS',NULL,'string','Mailer From Address','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::MAIL:FROM_NAME','Controlpanel.gg','string','Mailer From Name','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::MAIL:HOST','mailhog','string','Mailer Host Adress','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::MAIL:MAILER','smtp','string','Selected Mailer (smtp, mailgun, sendgrid, mailtrap)','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::MAIL:PASSWORD',NULL,'string','Mailer Password','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::MAIL:PORT','1025','string','Mailer Server Port','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::MAIL:USERNAME',NULL,'string','Mailer Username','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::MISC:PHPMYADMIN:URL','','string','The URL to your PHPMYADMIN Panel. Must not end with a /, remove to remove database button','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::PAYMENTS:PAYPAL:CLIENT_ID','','string','Your PayPal Client_ID','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::PAYMENTS:PAYPAL:SANDBOX_CLIENT_ID','','string','Your PayPal SANDBOX Client-ID used for testing ','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::PAYMENTS:PAYPAL:SANDBOX_SECRET','','string','Your PayPal SANDBOX Secret-Key used for testing ','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::PAYMENTS:PAYPAL:SECRET','','string','Your PayPal Secret-Key ( https://developer.paypal.com/docs/integration/direct/rest/)','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::PAYMENTS:SALES_TAX','0','integer','The %-value of tax that will be added to the product price on checkout','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::PAYMENTS:STRIPE:ENDPOINT_SECRET','','string','Your Stripe endpoint secret-key','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::PAYMENTS:STRIPE:ENDPOINT_TEST_SECRET','','string','Your Stripe endpoint test secret-key','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::PAYMENTS:STRIPE:METHODS','card,sepa_debit','string','Comma seperated list of payment methods that are enabled (https://stripe.com/docs/payments/payment-methods/integration-options)','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::PAYMENTS:STRIPE:SECRET','','string','Your Stripe  Secret-Key  ( https://dashboard.stripe.com/account/apikeys )','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::PAYMENTS:STRIPE:TEST_SECRET','','string','Your Stripe test secret-key','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::RECAPTCHA:ENABLED','false','boolean','Enables or disables the ReCaptcha feature on the registration/login page','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::RECAPTCHA:SECRET_KEY','6LeIxAcTAAAAAGG-vFI1TnRWxMZNFuojJ4WifJWe','string','Google Recaptcha API Credentials - https://www.google.com/recaptcha/admin - reCaptcha V2 (not v3)','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::RECAPTCHA:SITE_KEY','6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI','string','Google Recaptcha API Credentials - https://www.google.com/recaptcha/admin - reCaptcha V2 (not v3)','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::REFERRAL::ALLOWED','client','string','Who should be allowed to to use the referral code. all/client','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::REFERRAL::ENABLED','true','string','Enable or disable the referral system','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::REFERRAL::REWARD','100','integer','Credit reward a user should receive when a user registers with his referral code','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::REFERRAL:MODE','sign-up','string','Whether referrals get Credits on User-Registration or if a User buys credits','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::REFERRAL:PERCENTAGE','100','integer','The Percentage Value a referred user gets','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::SERVER:ALLOCATION_LIMIT','200','integer','The maximum amount of allocations to pull per node for automatic deployment, if more allocations are being used than this limit is set to, no new servers can be created!','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::SYSTEM:CREDITS_DISPLAY_NAME','Credits','string','Set the display name of your currency :)','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::SYSTEM:PTERODACTYL:TOKEN','ptla_OoGpJvqhu12ZbxaVShTtCIN4txqVsn5mU36736m3LbG','string','Admin API Token from Pterodactyl Panel - necessary for the Panel to work. The Key needs all read&write permissions!','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::SYSTEM:PTERODACTYL:URL','https://pl.ulianla.com','string','The URL to your Pterodactyl Panel. Must not end with a / ','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::SYSTEM:REGISTER_IP_CHECK','true','boolean','Prevent users from making multiple accounts using the same IP address','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::SYSTEM:SERVER_CREATE_CHARGE_FIRST_HOUR','true','boolean','Charges the first hour worth of credits upon creating a server.','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::USER:CREDITS_REWARD_AFTER_VERIFY_DISCORD','375','integer','Increase in credits after the user has verified their discord account.','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::USER:CREDITS_REWARD_AFTER_VERIFY_EMAIL','250','integer','Increase in credits after the user has verified their email account.','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::USER:FORCE_DISCORD_VERIFICATION','false','boolean','Force an user to link an Discord Account before creating a server / buying credits.','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::USER:FORCE_EMAIL_VERIFICATION','false','boolean','Force an user to verify the email adress before creating a server / buying credits.','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::USER:INITIAL_CREDITS','250','integer','The initial amount of credits the user starts with.','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::USER:INITIAL_SERVER_LIMIT','1','integer','The initial server limit the user starts with.','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::USER:MINIMUM_REQUIRED_CREDITS_TO_MAKE_SERVER','50','integer','The minimum amount of credits the user would need to make a server.','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::USER:SERVER_LIMIT_AFTER_IRL_PURCHASE','10','integer','updates the users server limit to this amount (unless the user already has a higher server limit) after making a purchase with real money, set to 0 to ignore this.','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::USER:SERVER_LIMIT_REWARD_AFTER_VERIFY_DISCORD','2','integer','Increase in server limit after the user has verified their discord account.','2022-06-23 10:54:09','2022-06-23 10:54:09'),
('SETTINGS::USER:SERVER_LIMIT_REWARD_AFTER_VERIFY_EMAIL','2','integer','Increase in server limit after the user has verified their email account.','2022-06-23 10:54:09','2022-06-23 10:54:09');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_products`
--

DROP TABLE IF EXISTS `shop_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_products` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `quantity` int(10) unsigned NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `display` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_products`
--

LOCK TABLES `shop_products` WRITE;
/*!40000 ALTER TABLE `shop_products` DISABLE KEYS */;
INSERT INTO `shop_products` VALUES
('_0pAki3mthlKUZ2fIV8lA','Server slots',5.00,2,'You will be able to create 2 more servers','EUR',0,'2022-06-23 10:54:09','2022-06-23 10:54:09','+2 Server slots'),
('5Un8Gj-1MbdZZTZEjno0P','Credits',5.00,1000,'Adds 1000 credits to your account','EUR',0,'2022-06-23 10:54:09','2022-06-23 10:54:09','875 + 125'),
('HgZ1nBoCeId5Sfm7ltGTp','Credits',2.00,350,'Adds 350 credits to your account','EUR',0,'2022-06-23 10:54:09','2022-06-23 10:54:09','350'),
('timfJbHbdMsnG58II0-WU','Credits',20.00,4000,'Adds 4000 credits to your account','EUR',0,'2022-06-23 10:54:09','2022-06-23 10:54:09','3500 + 500'),
('XnStQGbBXBHMjjFDOHm2u','Credits',10.00,2000,'Adds 2000 credits to your account','EUR',0,'2022-06-23 10:54:09','2022-06-23 10:54:09','1750 + 250');
/*!40000 ALTER TABLE `shop_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useful_links`
--

DROP TABLE IF EXISTS `useful_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useful_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useful_links`
--

LOCK TABLES `useful_links` WRITE;
/*!40000 ALTER TABLE `useful_links` DISABLE KEYS */;
INSERT INTO `useful_links` VALUES
(1,'fas fa-egg','Pterodactyl Panel','http://localhost','Use your servers on our pterodactyl panel <small>(You can use the same login details)</small>','2022-06-23 10:54:09','2022-06-23 10:54:09'),
(2,'fas fa-database','phpMyAdmin','http://localhost','View your database online using phpMyAdmin','2022-06-23 10:54:09','2022-06-23 10:54:09'),
(3,'fab fa-discord','Discord','https://discord.gg/4Y6HjD2uyU','Need a helping hand? Want to chat? Got any questions? Join our discord!','2022-06-23 10:54:09','2022-06-23 10:54:09');
/*!40000 ALTER TABLE `useful_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_referrals`
--

DROP TABLE IF EXISTS `user_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_referrals` (
  `referral_id` bigint(20) unsigned NOT NULL,
  `registered_user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `user_referrals_referral_id_foreign` (`referral_id`),
  KEY `user_referrals_registered_user_id_foreign` (`registered_user_id`),
  CONSTRAINT `user_referrals_referral_id_foreign` FOREIGN KEY (`referral_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_referrals_registered_user_id_foreign` FOREIGN KEY (`registered_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_referrals`
--

LOCK TABLES `user_referrals` WRITE;
/*!40000 ALTER TABLE `user_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_voucher`
--

DROP TABLE IF EXISTS `user_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_voucher` (
  `user_id` bigint(20) unsigned NOT NULL,
  `voucher_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `user_voucher_user_id_foreign` (`user_id`),
  KEY `user_voucher_voucher_id_foreign` (`voucher_id`),
  CONSTRAINT `user_voucher_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_voucher_voucher_id_foreign` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_voucher`
--

LOCK TABLES `user_voucher` WRITE;
/*!40000 ALTER TABLE `user_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member',
  `credits` double unsigned NOT NULL DEFAULT 250,
  `server_limit` int(10) unsigned NOT NULL DEFAULT 1,
  `pterodactyl_id` int(10) unsigned DEFAULT NULL,
  `avatar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_seen` datetime DEFAULT NULL,
  `discord_verified_at` timestamp NULL DEFAULT NULL,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `referral_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'ccrscj','admin',250,1,1,NULL,'yyg@ygink.cn',NULL,'$2y$10$I0XfiAVxSAAzDHL4LcDjH.tTm5ABoHB0qFXmiWUPBBLkH5n5RA5Eu',NULL,'2022-06-23 10:55:49',NULL,NULL,NULL,NULL,0,'MvVfjChX');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vouchers`
--

DROP TABLE IF EXISTS `vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vouchers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credits` double(10,2) unsigned NOT NULL,
  `uses` int(10) unsigned NOT NULL DEFAULT 1,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vouchers_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vouchers`
--

LOCK TABLES `vouchers` WRITE;
/*!40000 ALTER TABLE `vouchers` DISABLE KEYS */;
/*!40000 ALTER TABLE `vouchers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-23 11:01:46
