-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: publicaciones
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'CATEGORIA VIDEO','2023-09-22 08:28:40','2023-10-01 04:00:34'),(2,'quia','2023-09-22 08:28:40','2023-09-22 08:28:40'),(3,'non','2023-09-22 08:28:40','2023-09-22 08:28:40'),(4,'asperiores','2023-09-22 08:28:40','2023-09-22 08:28:40'),(5,'et','2023-09-22 08:28:40','2023-09-22 08:28:40'),(6,'facere','2023-09-22 08:28:40','2023-09-22 08:28:40'),(8,'categoria2','2023-09-23 08:06:21','2023-09-23 08:06:21');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_09_22_024126_create_categorias_table',1),(6,'2023_09_22_024127_create_publicacions_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',1,'API TOKEN','0a637ee3eb536867b35462990b4e174be8a2befa6a7f61b8e22371e490d287ce','[\"*\"]',NULL,NULL,'2023-09-23 23:21:57','2023-09-23 23:21:57'),(2,'App\\Models\\User',1,'API TOKEN','402dbc761ff8f4eb7bf7867a3b92d3d03e62c1bd5897f3bcf1755c0d213aef4e','[\"*\"]','2023-10-01 03:44:37',NULL,'2023-09-23 23:34:21','2023-10-01 03:44:37'),(3,'App\\Models\\User',2,'API TOKEN','2bd63b3d14519f2ad8ce0153aa961ab206c89be660c921762ca1f0d80e3d9742','[\"*\"]','2023-10-01 04:04:01',NULL,'2023-10-01 03:51:30','2023-10-01 04:04:01');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacions`
--

DROP TABLE IF EXISTS `publicacions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicacions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenido` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publicacions_categoria_id_foreign` (`categoria_id`),
  CONSTRAINT `publicacions_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacions`
--

LOCK TABLES `publicacions` WRITE;
/*!40000 ALTER TABLE `publicacions` DISABLE KEYS */;
INSERT INTO `publicacions` VALUES (1,'Consequatur autem.','Animi quibusdam qui dolorem sed quasi ea.',4,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(2,'Maiores corporis voluptas voluptas.','Non ipsam similique voluptas esse nihil ea saepe et.',3,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(3,'Sit neque est.','Architecto dolorum illo quod officiis.',6,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(4,'Iste error placeat commodi quidem.','Ut atque et id vel itaque cumque nostrum.',4,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(5,'Enim natus impedit fugit.','Labore doloremque ad sunt asperiores quis deserunt reiciendis non.',6,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(6,'Molestias iure ut eum.','Dolores ipsum enim qui at.',3,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(7,'Iste impedit ut et dicta.','Fuga harum enim et provident.',6,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(8,'Totam occaecati animi.','Quidem necessitatibus perspiciatis dignissimos nihil.',3,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(9,'Consequuntur quia omnis consequatur.','Sit quos et fugiat eos dolor reprehenderit dicta.',5,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(10,'Culpa exercitationem et.','Perspiciatis veritatis ad et culpa.',5,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(11,'Molestiae beatae voluptatem.','Vel nam assumenda fugiat eaque.',4,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(12,'Nisi aut consequuntur ut.','Officia porro hic provident magni.',5,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(13,'Est beatae.','Eos est quidem quo aspernatur voluptas occaecati.',4,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(14,'Cupiditate est quasi.','Autem libero omnis consequatur dolorum quia.',1,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(15,'Aspernatur molestiae eligendi vel.','Excepturi nobis quia odit sequi ut sit.',3,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(16,'Commodi consequuntur.','Impedit dolorum sint sed.',5,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(17,'Quaerat porro ab.','Alias at sit vel tenetur.',2,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(18,'Quis cupiditate quis.','Vel numquam minima accusamus et.',2,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(19,'Dolores rem quibusdam quae.','Quo fugiat ut sint commodi non nulla eveniet.',1,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(20,'Nostrum sed vel et.','Sunt aut consequatur in repellat quia laboriosam molestiae.',5,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(21,'Magnam excepturi possimus et.','Ut aspernatur molestias blanditiis molestias et.',2,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(22,'Et rerum hic qui.','Similique omnis qui sit perferendis.',5,'2023-09-22 08:28:40','2023-09-22 08:28:40'),(24,'Nuevo titulo de la publicacion','este es el nuevo contenido de esta publicacion',5,'2023-09-22 08:28:40','2023-09-24 00:18:35');
/*!40000 ALTER TABLE `publicacions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'andres','andres@gmail.com',NULL,'$2y$10$Pk4S51OmavmKXC9JQwSGMOjFLY5EWc7kvJ33khjiMvXsud84gKcTS',NULL,'2023-09-23 23:21:57','2023-09-23 23:21:57'),(2,'carlos osorio','carlos@iudigital.edu.co',NULL,'$2y$10$fLGX4dUuVdPRywUudQSnjOhbmWqovU4ACfmLGPRPTbvAQDkwjvpA2',NULL,'2023-10-01 03:51:29','2023-10-01 03:51:29');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'publicaciones'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-30 20:40:47
