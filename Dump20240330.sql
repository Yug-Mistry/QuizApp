CREATE DATABASE  IF NOT EXISTS `quizappdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `quizappdb`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: quizappdb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Category',7,'add_category'),(26,'Can change Category',7,'change_category'),(27,'Can delete Category',7,'delete_category'),(28,'Can view Category',7,'view_category'),(29,'Can add User Progress',8,'add_progress'),(30,'Can change User Progress',8,'change_progress'),(31,'Can delete User Progress',8,'delete_progress'),(32,'Can view User Progress',8,'view_progress'),(33,'Can add Quiz',9,'add_quiz'),(34,'Can change Quiz',9,'change_quiz'),(35,'Can delete Quiz',9,'delete_quiz'),(36,'Can view Quiz',9,'view_quiz'),(37,'Can add sitting',10,'add_sitting'),(38,'Can change sitting',10,'change_sitting'),(39,'Can delete sitting',10,'delete_sitting'),(40,'Can view sitting',10,'view_sitting'),(41,'Can see completed exams.',10,'view_sittings'),(42,'Can add Sub-Category',11,'add_subcategory'),(43,'Can change Sub-Category',11,'change_subcategory'),(44,'Can delete Sub-Category',11,'delete_subcategory'),(45,'Can view Sub-Category',11,'view_subcategory'),(46,'Can add Question',12,'add_question'),(47,'Can change Question',12,'change_question'),(48,'Can delete Question',12,'delete_question'),(49,'Can view Question',12,'view_question'),(50,'Can add Answer',13,'add_answer'),(51,'Can change Answer',13,'change_answer'),(52,'Can delete Answer',13,'delete_answer'),(53,'Can view Answer',13,'view_answer'),(54,'Can add Multiple Choice Question',14,'add_mcquestion'),(55,'Can change Multiple Choice Question',14,'change_mcquestion'),(56,'Can delete Multiple Choice Question',14,'delete_mcquestion'),(57,'Can view Multiple Choice Question',14,'view_mcquestion'),(58,'Can add True/False Question',15,'add_tf_question'),(59,'Can change True/False Question',15,'change_tf_question'),(60,'Can delete True/False Question',15,'delete_tf_question'),(61,'Can view True/False Question',15,'view_tf_question'),(62,'Can add Essay style question',16,'add_essay_question'),(63,'Can change Essay style question',16,'change_essay_question'),(64,'Can delete Essay style question',16,'delete_essay_question'),(65,'Can view Essay style question',16,'view_essay_question');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$gQ8VoftliNlYdBYuVXco4C$nNu9E2jFn5Zyiv/BiIiHnVCKPpwGWF7fOZ2vkqYHy8I=','2024-03-27 11:27:31.104770',1,'admin','','','admin@gmail.com',1,1,'2024-03-18 23:59:07.453998'),(2,'pbkdf2_sha256$720000$KwWQL6sC2MISRYRPl6A8pn$BoCT/EaPpmBJ18JDVR5xHpLxVaqaWAtiwLG3l7NvoU0=','2024-03-27 06:44:39.975765',0,'ajay','','','ajay@gmail.com',1,1,'2024-03-20 11:54:28.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-03-20 11:26:33.142406','1','Maths',1,'[{\"added\": {}}]',7,1),(2,'2024-03-20 11:28:08.165980','1','Quiz1',1,'[{\"added\": {}}]',9,1),(3,'2024-03-20 11:28:51.339016','1','Addition (Maths)',1,'[{\"added\": {}}]',11,1),(4,'2024-03-20 11:29:00.518557','2','Subtraction (Maths)',1,'[{\"added\": {}}]',11,1),(5,'2024-03-20 11:30:14.857017','1','1+1 = ____',1,'[{\"added\": {}}]',14,1),(6,'2024-03-20 11:45:31.000748','1','Quiz1',2,'[]',9,1),(7,'2024-03-20 11:46:21.747676','1','1+1 = ____',2,'[{\"added\": {\"name\": \"Answer\", \"object\": \"1\"}}, {\"added\": {\"name\": \"Answer\", \"object\": \"2\"}}, {\"added\": {\"name\": \"Answer\", \"object\": \"3\"}}]',14,1),(8,'2024-03-20 11:47:12.657838','1','Quiz1',2,'[{\"changed\": {\"fields\": [\"Single Attempt\"]}}]',9,1),(9,'2024-03-20 11:54:29.074271','2','ajay',1,'[{\"added\": {}}]',4,1),(10,'2024-03-20 11:58:49.150066','2','ajay',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1),(11,'2024-03-20 12:05:21.075707','2','Quiz2',1,'[{\"added\": {}}]',9,1),(12,'2024-03-20 12:06:48.406727','3','Equations (Maths)',1,'[{\"added\": {}}]',11,1),(13,'2024-03-20 12:13:11.934546','2','( a + b )^2 = _____________',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Answer\", \"object\": \"a^2+b^2+2ab\"}}, {\"added\": {\"name\": \"Answer\", \"object\": \"a^2+b^2\"}}]',14,1),(14,'2024-03-20 12:13:27.295387','2','Quiz2',2,'[]',9,1),(15,'2024-03-21 13:56:44.479990','2','Movie',1,'[{\"added\": {}}]',7,1),(16,'2024-03-21 13:57:06.185199','4','Sci-Fi (Movie)',1,'[{\"added\": {}}]',11,1),(17,'2024-03-21 13:57:59.712364','3','I __ Iron Man',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Answer\", \"object\": \"was\"}}, {\"added\": {\"name\": \"Answer\", \"object\": \"am\"}}, {\"added\": {\"name\": \"Answer\", \"object\": \"has\"}}, {\"added\": {\"name\": \"Answer\", \"object\": \"willl be\"}}]',14,1),(18,'2024-03-21 13:59:45.605176','4','Loki is God of ____',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Answer\", \"object\": \"Mischief\"}}, {\"added\": {\"name\": \"Answer\", \"object\": \"Time\"}}, {\"added\": {\"name\": \"Answer\", \"object\": \"Space\"}}]',14,1),(19,'2024-03-21 14:01:27.978982','3','Quiz 3',1,'[{\"added\": {}}]',9,1),(20,'2024-03-21 14:06:27.901726','2','ajay',2,'[]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(16,'essay','essay_question'),(13,'multichoice','answer'),(14,'multichoice','mcquestion'),(7,'quiz','category'),(8,'quiz','progress'),(12,'quiz','question'),(9,'quiz','quiz'),(10,'quiz','sitting'),(11,'quiz','subcategory'),(6,'sessions','session'),(15,'true_false','tf_question');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-03-18 23:48:44.494776'),(2,'auth','0001_initial','2024-03-18 23:48:46.812142'),(3,'admin','0001_initial','2024-03-18 23:48:47.091038'),(4,'admin','0002_logentry_remove_auto_add','2024-03-18 23:48:47.122268'),(5,'admin','0003_logentry_add_action_flag_choices','2024-03-18 23:48:47.135261'),(6,'contenttypes','0002_remove_content_type_name','2024-03-18 23:48:47.313103'),(7,'auth','0002_alter_permission_name_max_length','2024-03-18 23:48:47.450363'),(8,'auth','0003_alter_user_email_max_length','2024-03-18 23:48:47.497165'),(9,'auth','0004_alter_user_username_opts','2024-03-18 23:48:47.537716'),(10,'auth','0005_alter_user_last_login_null','2024-03-18 23:48:47.666996'),(11,'auth','0006_require_contenttypes_0002','2024-03-18 23:48:47.682631'),(12,'auth','0007_alter_validators_add_error_messages','2024-03-18 23:48:47.717427'),(13,'auth','0008_alter_user_username_max_length','2024-03-18 23:48:47.863054'),(14,'auth','0009_alter_user_last_name_max_length','2024-03-18 23:48:47.997218'),(15,'auth','0010_alter_group_name_max_length','2024-03-18 23:48:48.044785'),(16,'auth','0011_update_proxy_permissions','2024-03-18 23:48:48.068011'),(17,'auth','0012_alter_user_first_name_max_length','2024-03-18 23:48:48.245042'),(18,'quiz','0001_initial','2024-03-18 23:48:49.775335'),(19,'essay','0001_initial','2024-03-18 23:48:49.915622'),(20,'multichoice','0001_initial','2024-03-18 23:48:50.220885'),(21,'multichoice','0002_alter_answer_id','2024-03-18 23:48:50.347977'),(22,'sessions','0001_initial','2024-03-18 23:48:50.455463'),(23,'true_false','0001_initial','2024-03-18 23:48:50.582400');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `django_session` VALUES ('ccg9kn424vk5ii7wf81g1eypmafx7vz8','.eJxVi0sOwiAQQO_C2jQUhjK408RzkBlgAvGTaGWj8e5W04Vu3-epIvV7jX0ut9iy2qpRbX4ZUzqWy0dce3sMX7Gy4XCmdtotZL9Gf2eluS6bKwEzkGbkTHoiJ17AGGQNkxXMnHQSFEcpeCFgssEbSDI6zBbEqNcbW-82Fg:1rpRRL:XmEI7DReseDCoSdk1g73ASacqAsTibOOXCg8ZXbogNw','2024-04-10 11:27:31.127744'),('wpwski5e6rvq5hgptsurp5994yhal44q','.eJxVi0sOwiAQQO_C2jQUhjK408RzkBlgAvGTaGWj8e5W04Vu3-epIvV7jX0ut9iy2qpRbX4ZUzqWy0dce3sMX7Gy4XCmdtotZL9Gf2eluS6bKwEzkGbkTHoiJ17AGGQNkxXMnHQSFEcpeCFgssEbSDI6zBbEqNcbW-82Fg:1rnJ7x:xCtMos_rhjUydh354iiAV1BAIGN35OaGsPUS7pnSjmk','2024-04-04 14:10:41.379449');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `essay_essay_question`
--

DROP TABLE IF EXISTS `essay_essay_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `essay_essay_question` (
  `question_ptr_id` bigint NOT NULL,
  PRIMARY KEY (`question_ptr_id`),
  CONSTRAINT `essay_essay_question_question_ptr_id_380e7c9a_fk_quiz_ques` FOREIGN KEY (`question_ptr_id`) REFERENCES `quiz_question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `essay_essay_question`
--

LOCK TABLES `essay_essay_question` WRITE;
/*!40000 ALTER TABLE `essay_essay_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `essay_essay_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multichoice_answer`
--

DROP TABLE IF EXISTS `multichoice_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multichoice_answer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) NOT NULL,
  `correct` tinyint(1) NOT NULL,
  `question_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `multichoice_answer_question_id_59e030d4_fk_multichoi` (`question_id`),
  CONSTRAINT `multichoice_answer_question_id_59e030d4_fk_multichoi` FOREIGN KEY (`question_id`) REFERENCES `multichoice_mcquestion` (`question_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multichoice_answer`
--

LOCK TABLES `multichoice_answer` WRITE;
/*!40000 ALTER TABLE `multichoice_answer` DISABLE KEYS */;
INSERT INTO `multichoice_answer` VALUES (1,'1',0,1),(2,'2',1,1),(3,'3',0,1),(4,'a^2+b^2+2ab',1,2),(5,'a^2+b^2',0,2),(6,'was',0,3),(7,'am',1,3),(8,'has',0,3),(9,'willl be',0,3),(10,'Mischief',1,4),(11,'Time',0,4),(12,'Space',0,4);
/*!40000 ALTER TABLE `multichoice_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multichoice_mcquestion`
--

DROP TABLE IF EXISTS `multichoice_mcquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multichoice_mcquestion` (
  `question_ptr_id` bigint NOT NULL,
  `answer_order` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`question_ptr_id`),
  CONSTRAINT `multichoice_mcquesti_question_ptr_id_bfc85403_fk_quiz_ques` FOREIGN KEY (`question_ptr_id`) REFERENCES `quiz_question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multichoice_mcquestion`
--

LOCK TABLES `multichoice_mcquestion` WRITE;
/*!40000 ALTER TABLE `multichoice_mcquestion` DISABLE KEYS */;
INSERT INTO `multichoice_mcquestion` VALUES (1,'random'),(2,'content'),(3,'random'),(4,'random');
/*!40000 ALTER TABLE `multichoice_mcquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_category`
--

DROP TABLE IF EXISTS `quiz_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_category`
--

LOCK TABLES `quiz_category` WRITE;
/*!40000 ALTER TABLE `quiz_category` DISABLE KEYS */;
INSERT INTO `quiz_category` VALUES (1,'Maths'),(2,'Movie');
/*!40000 ALTER TABLE `quiz_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_progress`
--

DROP TABLE IF EXISTS `quiz_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_progress` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `score` varchar(1024) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `quiz_progress_user_id_af390dea_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_progress`
--

LOCK TABLES `quiz_progress` WRITE;
/*!40000 ALTER TABLE `quiz_progress` DISABLE KEYS */;
INSERT INTO `quiz_progress` VALUES (1,'Maths,5,6,Movie,2,2,',1),(2,'Maths,7,13,Movie,0,2,',2);
/*!40000 ALTER TABLE `quiz_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_question`
--

DROP TABLE IF EXISTS `quiz_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_question` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `figure` varchar(100) DEFAULT NULL,
  `content` varchar(1000) NOT NULL,
  `explanation` longtext NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `sub_category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_question_category_id_eeff11ec_fk_quiz_category_id` (`category_id`),
  KEY `quiz_question_sub_category_id_dd7303cb_fk_quiz_subcategory_id` (`sub_category_id`),
  CONSTRAINT `quiz_question_category_id_eeff11ec_fk_quiz_category_id` FOREIGN KEY (`category_id`) REFERENCES `quiz_category` (`id`),
  CONSTRAINT `quiz_question_sub_category_id_dd7303cb_fk_quiz_subcategory_id` FOREIGN KEY (`sub_category_id`) REFERENCES `quiz_subcategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_question`
--

LOCK TABLES `quiz_question` WRITE;
/*!40000 ALTER TABLE `quiz_question` DISABLE KEYS */;
INSERT INTO `quiz_question` VALUES (1,'','1+1 = ____','It\'s obvious',1,1),(2,'','( a + b )^2 = _____________','it\'s identity',1,3),(3,'','I __ Iron Man','',2,4),(4,'','Loki is God of ____','',2,4);
/*!40000 ALTER TABLE `quiz_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_question_quiz`
--

DROP TABLE IF EXISTS `quiz_question_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_question_quiz` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_id` bigint NOT NULL,
  `quiz_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `quiz_question_quiz_question_id_quiz_id_3414207a_uniq` (`question_id`,`quiz_id`),
  KEY `quiz_question_quiz_quiz_id_eccb418d_fk_quiz_quiz_id` (`quiz_id`),
  CONSTRAINT `quiz_question_quiz_question_id_2b2637b3_fk_quiz_question_id` FOREIGN KEY (`question_id`) REFERENCES `quiz_question` (`id`),
  CONSTRAINT `quiz_question_quiz_quiz_id_eccb418d_fk_quiz_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `quiz_quiz` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_question_quiz`
--

LOCK TABLES `quiz_question_quiz` WRITE;
/*!40000 ALTER TABLE `quiz_question_quiz` DISABLE KEYS */;
INSERT INTO `quiz_question_quiz` VALUES (1,1,1),(3,1,2),(4,1,3),(2,2,2),(5,2,3),(6,3,3),(7,4,3);
/*!40000 ALTER TABLE `quiz_question_quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_quiz`
--

DROP TABLE IF EXISTS `quiz_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_quiz` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `description` longtext NOT NULL,
  `url` varchar(60) NOT NULL,
  `random_order` tinyint(1) NOT NULL,
  `max_questions` int unsigned DEFAULT NULL,
  `answers_at_end` tinyint(1) NOT NULL,
  `exam_paper` tinyint(1) NOT NULL,
  `single_attempt` tinyint(1) NOT NULL,
  `pass_mark` smallint NOT NULL,
  `success_text` longtext NOT NULL,
  `fail_text` longtext NOT NULL,
  `draft` tinyint(1) NOT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_quiz_category_id_568a4c23_fk_quiz_category_id` (`category_id`),
  KEY `quiz_quiz_url_aa508dbd` (`url`),
  CONSTRAINT `quiz_quiz_category_id_568a4c23_fk_quiz_category_id` FOREIGN KEY (`category_id`) REFERENCES `quiz_category` (`id`),
  CONSTRAINT `quiz_quiz_chk_1` CHECK ((`max_questions` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_quiz`
--

LOCK TABLES `quiz_quiz` WRITE;
/*!40000 ALTER TABLE `quiz_quiz` DISABLE KEYS */;
INSERT INTO `quiz_quiz` VALUES (1,'Quiz1','Maths quiz','mathsquiz',0,NULL,1,0,0,0,'','',0,1),(2,'Quiz2','Maths test 2','mathsquiz2',1,NULL,1,1,1,40,'','',0,1),(3,'Quiz 3','The test consist of questions from movie and maths categories','quiz3',1,NULL,1,1,0,25,'','',0,2);
/*!40000 ALTER TABLE `quiz_quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_sitting`
--

DROP TABLE IF EXISTS `quiz_sitting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_sitting` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_order` varchar(1024) NOT NULL,
  `question_list` varchar(1024) NOT NULL,
  `incorrect_questions` varchar(1024) NOT NULL,
  `current_score` int NOT NULL,
  `complete` tinyint(1) NOT NULL,
  `user_answers` longtext NOT NULL,
  `start` datetime(6) NOT NULL,
  `end` datetime(6) DEFAULT NULL,
  `quiz_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_sitting_quiz_id_a3187627_fk_quiz_quiz_id` (`quiz_id`),
  KEY `quiz_sitting_user_id_cfb694f3_fk_auth_user_id` (`user_id`),
  CONSTRAINT `quiz_sitting_quiz_id_a3187627_fk_quiz_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `quiz_quiz` (`id`),
  CONSTRAINT `quiz_sitting_user_id_cfb694f3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_sitting`
--

LOCK TABLES `quiz_sitting` WRITE;
/*!40000 ALTER TABLE `quiz_sitting` DISABLE KEYS */;
INSERT INTO `quiz_sitting` VALUES (1,'1,','','1,',0,1,'{\"1\": \"1\"}','2024-03-20 11:45:44.455585','2024-03-20 11:46:40.586966',1,1),(2,'1,','','',1,1,'{\"1\": \"2\"}','2024-03-20 11:47:54.585442','2024-03-20 11:47:59.855965',1,1),(3,'1,','1,','',0,0,'{}','2024-03-20 11:53:46.262064',NULL,1,1),(4,'2,1,','','2,',1,1,'{\"2\": \"5\", \"1\": \"2\"}','2024-03-20 12:15:22.503939','2024-03-20 12:15:33.007948',2,2),(5,'2,1,','2,1,','',0,0,'{}','2024-03-20 12:16:19.676616',NULL,2,2),(6,'1,','','',1,1,'{\"1\": \"2\"}','2024-03-20 12:16:23.781121','2024-03-20 12:16:27.512450',1,2),(7,'1,','','',1,1,'{\"1\": \"2\"}','2024-03-20 12:17:45.684617','2024-03-22 01:55:41.401281',1,2),(8,'1,2,','','',2,1,'{\"1\": \"2\", \"2\": \"4\"}','2024-03-21 03:43:45.916069','2024-03-21 03:43:56.837362',2,1),(9,'1,2,','1,2,','',0,0,'{}','2024-03-21 03:44:08.661551',NULL,2,1),(10,'1,3,2,4,','','1,,3,,2,,4,',0,1,'{\"1\": \"3\", \"3\": \"6\", \"2\": \"5\", \"4\": \"11\"}','2024-03-22 01:43:13.742018','2024-03-22 01:57:04.507651',3,2),(11,'1,','','',1,1,'{\"1\": \"2\"}','2024-03-22 01:56:03.820572','2024-03-22 01:56:03.917403',1,2),(12,'1,','','1,',0,1,'{\"1\": \"1\"}','2024-03-22 10:42:14.010435','2024-03-22 10:42:20.201845',1,2),(13,'1,','','1,',0,1,'{\"1\": \"1\"}','2024-03-22 10:55:29.744557','2024-03-22 10:55:29.834514',1,2),(14,'1,','','1,',0,1,'{\"1\": \"1\"}','2024-03-22 10:56:25.214074','2024-03-22 10:56:25.303944',1,2),(15,'1,','','',1,1,'{\"1\": \"2\"}','2024-03-22 10:56:31.412189','2024-03-22 10:56:34.849197',1,2),(16,'1,','','',1,1,'{\"1\": \"2\"}','2024-03-22 10:59:10.602691','2024-03-22 10:59:10.683807',1,2),(17,'1,','','',1,1,'{\"1\": \"2\"}','2024-03-22 10:59:28.797885','2024-03-22 10:59:28.880885',1,2),(18,'1,','1,','',0,0,'{}','2024-03-23 02:27:03.887752',NULL,1,2),(19,'3,2,1,4,','','',4,1,'{\"3\": \"7\", \"2\": \"4\", \"1\": \"2\", \"4\": \"10\"}','2024-03-23 03:05:32.118719','2024-03-23 03:05:57.671367',3,1);
/*!40000 ALTER TABLE `quiz_sitting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_subcategory`
--

DROP TABLE IF EXISTS `quiz_subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_subcategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sub_category` varchar(250) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_subcategory_category_id_aa7a410e_fk_quiz_category_id` (`category_id`),
  CONSTRAINT `quiz_subcategory_category_id_aa7a410e_fk_quiz_category_id` FOREIGN KEY (`category_id`) REFERENCES `quiz_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_subcategory`
--

LOCK TABLES `quiz_subcategory` WRITE;
/*!40000 ALTER TABLE `quiz_subcategory` DISABLE KEYS */;
INSERT INTO `quiz_subcategory` VALUES (1,'Addition',1),(2,'Subtraction',1),(3,'Equations',1),(4,'Sci-Fi',2);
/*!40000 ALTER TABLE `quiz_subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `true_false_tf_question`
--

DROP TABLE IF EXISTS `true_false_tf_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `true_false_tf_question` (
  `question_ptr_id` bigint NOT NULL,
  `correct` tinyint(1) NOT NULL,
  PRIMARY KEY (`question_ptr_id`),
  CONSTRAINT `true_false_tf_questi_question_ptr_id_11230c0e_fk_quiz_ques` FOREIGN KEY (`question_ptr_id`) REFERENCES `quiz_question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `true_false_tf_question`
--

LOCK TABLES `true_false_tf_question` WRITE;
/*!40000 ALTER TABLE `true_false_tf_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `true_false_tf_question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-30 13:27:11
