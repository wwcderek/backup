-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: CAW
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `barcodes`
--

DROP TABLE IF EXISTS `barcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barcodes` (
  `barcode_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `path` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scan_count` int(10) DEFAULT NULL,
  `film_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`barcode_id`),
  KEY `barcodes_user_id_foreign` (`user_id`),
  CONSTRAINT `barcodes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barcodes`
--

LOCK TABLES `barcodes` WRITE;
/*!40000 ALTER TABLE `barcodes` DISABLE KEYS */;
INSERT INTO `barcodes` VALUES (1,'83109','2018-03-11 07:25:21',5,'2018-03-11 07:20:21','2018-03-11 07:20:21','http://101.78.175.101:6780/storage/qr_code/2018-03-11_15-20-21.png',0,NULL),(2,'11853','2018-03-21 07:21:57',5,'2018-03-21 07:16:57','2018-03-21 07:16:57','http://101.78.175.101:6780/storage/qr_code/2018-03-21_15-16-57.png',0,NULL),(3,'66704','2018-03-26 03:30:51',5,'2018-03-26 03:25:51','2018-03-26 03:25:51','http://101.78.175.101:6780/storage/qr_code/2018-03-26_11-25-51.png',0,NULL),(4,'66703','2018-04-04 15:37:54',5,'2018-04-04 15:32:54','2018-04-04 15:32:54','http://101.78.175.101:6780/storage/qr_code/2018-04-04_23-32-54.png',0,NULL),(5,'78876','2018-04-05 16:30:15',5,'2018-04-05 16:29:27','2018-04-05 16:30:15','http://101.78.175.101:6780/storage/qr_code/2018-04-06_00-29-27.png',2,1),(6,'71358','2018-04-05 17:02:27',19,'2018-04-05 17:01:59','2018-04-05 17:02:27','http://101.78.175.101:6780/storage/qr_code/2018-04-06_01-01-59.png',2,1),(7,'50411','2018-04-06 03:44:13',5,'2018-04-06 03:43:51','2018-04-06 03:44:13','http://101.78.175.101:6780/storage/qr_code/2018-04-06_11-43-51.png',2,1),(8,'20179','2018-04-06 03:51:48',5,'2018-04-06 03:51:35','2018-04-06 03:51:48','http://101.78.175.101:6780/storage/qr_code/2018-04-06_11-51-35.png',2,1),(9,'20482','2018-04-06 03:58:22',5,'2018-04-06 03:58:08','2018-04-06 03:58:22','http://101.78.175.101:6780/storage/qr_code/2018-04-06_11-58-08.png',2,1),(10,'78372','2018-04-06 04:00:24',19,'2018-04-06 04:00:10','2018-04-06 04:00:24','http://101.78.175.101:6780/storage/qr_code/2018-04-06_12-00-10.png',2,1),(11,'61960','2018-04-06 04:02:30',19,'2018-04-06 04:02:16','2018-04-06 04:02:30','http://101.78.175.101:6780/storage/qr_code/2018-04-06_12-02-16.png',2,1),(12,'38211','2018-04-06 04:03:21',19,'2018-04-06 04:03:05','2018-04-06 04:03:21','http://101.78.175.101:6780/storage/qr_code/2018-04-06_12-03-05.png',2,1),(13,'43181','2018-04-06 04:03:53',19,'2018-04-06 04:03:37','2018-04-06 04:03:53','http://101.78.175.101:6780/storage/qr_code/2018-04-06_12-03-37.png',2,1),(14,'16888','2018-04-06 04:21:06',19,'2018-04-06 04:20:37','2018-04-06 04:21:06','http://101.78.175.101:6780/storage/qr_code/2018-04-06_12-20-37.png',2,1),(15,'80443','2018-04-12 15:23:27',5,'2018-04-12 15:18:27','2018-04-12 15:18:27','http://101.78.175.101:6780/storage/qr_code/2018-04-12_23-18-27.png',0,1),(16,'90546','2018-04-12 15:36:19',5,'2018-04-12 15:35:32','2018-04-12 15:36:19','http://101.78.175.101:6780/storage/qr_code/2018-04-12_23-35-32.png',2,1),(17,'32795','2018-04-12 15:55:55',5,'2018-04-12 15:55:18','2018-04-12 15:55:55','http://101.78.175.101:6780/storage/qr_code/2018-04-12_23-55-18.png',2,1),(18,'35355','2018-04-15 14:50:39',5,'2018-04-15 14:45:39','2018-04-15 14:45:39','http://101.78.175.101:6780/storage/qr_code/2018-04-15_22-45-39.png',0,1),(19,'51893','2018-04-15 15:36:21',5,'2018-04-15 15:32:09','2018-04-15 15:36:21','http://101.78.175.101:6780/storage/qr_code/2018-04-15_23-32-09.png',2,1),(20,'14952','2018-04-15 15:40:01',5,'2018-04-15 15:39:22','2018-04-15 15:40:01','http://101.78.175.101:6780/storage/qr_code/2018-04-15_23-39-22.png',2,3),(21,'78178','2018-04-15 15:41:25',5,'2018-04-15 15:40:48','2018-04-15 15:41:25','http://101.78.175.101:6780/storage/qr_code/2018-04-15_23-40-48.png',2,1),(22,'12782','2018-04-15 15:48:00',5,'2018-04-15 15:47:50','2018-04-15 15:48:00','http://101.78.175.101:6780/storage/qr_code/2018-04-15_23-47-50.png',2,1),(23,'91736','2018-04-15 15:49:07',5,'2018-04-15 15:48:29','2018-04-15 15:49:07','http://101.78.175.101:6780/storage/qr_code/2018-04-15_23-48-29.png',2,3),(24,'44362','2018-04-15 16:17:08',5,'2018-04-15 16:12:08','2018-04-15 16:12:08','http://101.78.175.101:6780/storage/qr_code/2018-04-16_00-12-08.png',0,1),(25,'53901','2018-04-16 03:17:29',5,'2018-04-16 03:12:29','2018-04-16 03:12:29','http://101.78.175.101:6780/storage/qr_code/2018-04-16_11-12-29.png',0,1),(26,'37712','2018-04-16 06:52:48',5,'2018-04-16 06:47:48','2018-04-16 06:47:48','http://101.78.175.101:6780/storage/qr_code/2018-04-16_14-47-48.png',0,1),(27,'48909','2018-04-16 07:52:11',5,'2018-04-16 07:47:11','2018-04-16 07:47:11','http://101.78.175.101:6780/storage/qr_code/2018-04-16_15-47-11.png',0,1),(28,'69836','2018-04-16 08:00:09',5,'2018-04-16 07:58:48','2018-04-16 08:00:09','http://101.78.175.101:6780/storage/qr_code/2018-04-16_15-58-48.png',2,1),(29,'60105','2018-04-17 03:24:07',5,'2018-04-17 03:19:07','2018-04-17 03:19:07','http://101.78.175.101:6780/storage/qr_code/2018-04-17_11-19-07.png',0,1);
/*!40000 ALTER TABLE `barcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discounts` (
  `discount_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requirement` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,'80%','less than 30 mins'),(2,'85%','over 30 mins and less than 1 hour'),(3,'90%','over 1 hour and less than 1.5 hour');
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dislikes`
--

DROP TABLE IF EXISTS `dislikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dislikes` (
  `dislike_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `review_id` int(6) DEFAULT NULL,
  `user_id` int(6) DEFAULT NULL,
  PRIMARY KEY (`dislike_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dislikes`
--

LOCK TABLES `dislikes` WRITE;
/*!40000 ALTER TABLE `dislikes` DISABLE KEYS */;
/*!40000 ALTER TABLE `dislikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `event_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `quota` int(10) DEFAULT '5',
  `film_id` int(10) DEFAULT NULL,
  `event_start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'test','testing event',5,1,'2018-04-15 15:59:32','2018-02-11 15:57:41','2018-02-11 15:58:09'),(2,'test2','testing event',5,2,'2017-12-31 16:00:00','2018-02-11 15:57:41','2018-02-11 15:58:09'),(3,'test3','testing event',5,2,'2017-12-31 16:00:00','2018-02-11 15:57:41','2018-02-11 15:58:09'),(4,'test4','testing event',4,2,'2018-04-12 15:58:43','2018-02-11 15:57:41','2018-02-11 15:58:09'),(5,'Have Fun','Come and watch together, my friends!',5,18,'2018-04-12 13:50:56','2018-02-11 16:00:25','2018-02-11 16:00:25'),(6,'Have Fun GUY','See this good movie',2,1,'2018-04-16 07:52:10','2018-02-13 08:07:26','2018-02-13 08:07:26'),(7,'Good Movie','Come and  see together my friends. What are you waitting for?',1,8,'2018-02-21 15:52:32','2018-02-18 09:49:06','2018-02-18 09:49:06'),(8,'test event','this is  testing event, come  and join us',5,5,'2018-08-04 07:00:00','2018-04-12 15:22:11','2018-04-12 15:22:11'),(9,'testing event','this is testing event, come and join us',5,5,'2018-05-06 07:00:00','2018-04-12 15:40:18','2018-04-12 15:40:18'),(10,'event 123','testing event come and join us',5,2,'2018-05-09 04:00:00','2018-04-12 16:00:03','2018-04-12 16:00:03');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `favorite_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `review_id` int(6) DEFAULT NULL,
  `user_id` int(6) DEFAULT NULL,
  PRIMARY KEY (`favorite_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_genre`
--

DROP TABLE IF EXISTS `film_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_genre` (
  `film_genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `film_id` int(10) unsigned NOT NULL,
  `genre_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`film_genre_id`),
  KEY `film_genre_film_id_foreign` (`film_id`),
  KEY `film_genre_genre_id_foreign` (`genre_id`),
  CONSTRAINT `film_genre_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`film_id`),
  CONSTRAINT `film_genre_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_genre`
--

LOCK TABLES `film_genre` WRITE;
/*!40000 ALTER TABLE `film_genre` DISABLE KEYS */;
INSERT INTO `film_genre` VALUES (1,1,2),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,4),(7,7,4),(8,8,4),(9,9,4),(10,10,2),(11,11,2),(12,12,2),(13,13,7),(14,14,7),(15,15,7),(16,16,7),(17,17,3),(18,18,3),(19,19,3),(20,20,3),(23,35,1);
/*!40000 ALTER TABLE `film_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `films` (
  `film_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `running_time` int(11) NOT NULL,
  `publish_time` datetime NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`film_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,'Identity Theft','Mild mannered businessman Sandy Patterson travels from Denver to Florida to confront the deceptively harmless looking woman who has been living it up after stealing Sandy\'s identity.','English',5,114,'2013-02-08 00:00:00','2018-01-05-23-57-43','http://101.78.175.101:6780/storage/2018-01-05-23-57-43.jpg','2018-01-05 15:57:43','2018-04-11 17:44:54'),(2,'Post Mortem','In Chile, 1973, during the last days of Salvador Allende\'s presidency, an employee at a Morgue\'s recording office falls for a burlesque dancer who mysteriously disappears.','English',0,120,'2012-04-11 00:00:00','2018-01-06-00-01-10','http://101.78.175.101:6780/storage/2018-01-06-00-01-10.jpg','2018-01-05 16:01:10','2018-04-16 07:57:48'),(3,'Tarzan','Tarzan, having acclimated to life in London, is called back to his former home in the jungle to investigate the activities at a mining encampment.','English',5,112,'2016-07-01 00:00:00','2018-01-06-00-12-35','http://101.78.175.101:6780/storage/2018-01-06-00-12-35.jpg','2018-01-05 16:12:35','2018-04-12 03:45:45'),(4,'Collide','An American backpacker gets involved with a ring of drug smugglers as their driver, though he winds up on the run from his employers across Cologne high-speed Autobahn.','English',0,99,'2017-02-24 00:00:00','2018-01-06-00-17-14','http://101.78.175.101:6780/storage/2018-01-06-00-17-14.jpg','2018-01-05 16:17:14','2018-01-05 16:17:14'),(5,'24 Hours','An assassin seeks redemption after being given a second chance at life.','English',0,93,'2017-10-26 00:00:00','2018-01-06-00-20-34','http://101.78.175.101:6780/storage/2018-01-06-00-20-34.jpg','2018-01-05 16:20:34','2018-01-05 16:20:34'),(6,'Jumanji','Four teenagers are sucked into a magical video game, and the only way they can escape is to work together to finish the game.','English',5,109,'2018-01-01 00:00:00','2018-01-06-00-22-02','http://101.78.175.101:6780/storage/2018-01-06-00-22-02.jpg','2018-01-05 16:22:02','2018-01-05 16:22:02'),(7,'Star Wars','Rey develops her newly discovered abilities with the guidance of Luke Skywalker, who is unsettled by the strength of her powers.','English',0,150,'2017-06-15 00:00:00','2018-01-06-00-24-11','http://101.78.175.101:6780/storage/2018-01-06-00-24-11.jpg','2018-01-05 16:24:11','2018-01-05 16:24:11'),(8,'Avengers','When Tony Stark and Bruce Banner try to jump-start a dormant peacekeeping program called Ultron, things go horribly wrong and it\'s up to Earth\'s mightiest heroes.','English',5,170,'2015-05-01 00:00:00','2018-01-06-00-26-08','http://101.78.175.101:6780/storage/2018-01-06-00-26-08.jpg','2018-01-05 16:26:08','2018-01-05 16:26:08'),(9,'Dragonball','he young warrior Son Goku sets out on a quest, racing against time and the vengeful King Piccolo, to collect a set of seven magical orbs.','English',0,85,'2009-04-10 00:00:00','2018-01-06-00-27-56','http://101.78.175.101:6780/storage/2018-01-06-00-27-56.jpg','2018-01-05 16:27:56','2018-01-05 16:27:56'),(10,'Pulse 2','After ghosts invade the human world through the Internet, a father must protect his daughter from the psychotic spirit of his ex-wife.','English',0,80,'2009-09-30 00:00:00','2018-01-06-00-30-26','http://101.78.175.101:6780/storage/2018-01-06-00-30-26.jpg','2018-01-05 16:30:26','2018-04-11 17:45:41'),(11,'Hurt','A recently widowed family is forced to move into their uncle\'s salvage yard, and soon after the arrival of a mysterious foster child, a family secret starts to threaten their lives.','English',0,97,'2009-11-10 00:00:00','2018-01-06-00-32-15','http://101.78.175.101:6780/storage/2018-01-06-00-32-15.jpg','2018-01-05 16:32:15','2018-01-05 16:32:15'),(12,'The Conjuring 2','Ed and Lorraine Warren travel to North London to help a single mother raising 4 children alone in a house plagued by a supernatural spirit.','English',0,134,'2016-06-10 00:00:00','2018-01-06-00-33-53','http://101.78.175.101:6780/storage/2018-01-06-00-33-53.jpg','2018-01-05 16:33:53','2018-01-05 16:33:53'),(13,'Moana','In Ancient Polynesia, when a terrible curse incurred by the Demigod Maui reaches Moana\'s island, she answers the Ocean\'s call to seek out the Demigod to set things right.','English',0,107,'2016-11-23 00:00:00','2018-01-06-00-36-11','http://101.78.175.101:6780/storage/2018-01-06-00-36-11.png','2018-01-05 16:36:11','2018-01-05 16:36:11'),(14,'ParaNorman','A misunderstood boy takes on ghosts, zombies and grown-ups to save his town from a centuries-old curse.','English',0,97,'2016-11-09 00:00:00','2018-01-06-00-59-19','http://101.78.175.101:6780/storage/2018-01-06-00-59-19.jpg','2018-01-05 16:59:19','2018-01-05 16:59:19'),(15,'Toy Story','A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy\'s room.','English',0,110,'2000-06-08 00:00:00','2018-01-06-01-02-42','http://101.78.175.101:6780/storage/2018-01-06-01-02-42.jpeg','2018-01-05 17:02:42','2018-01-05 17:02:42'),(16,'Rio','When Blu, a domesticated macaw from small-town Minnesota, meets the fiercely independent Jewel, he takes off on an adventure to Rio de Janeiro with the bird of his dreams.','English',0,95,'2011-07-06 00:00:00','2018-01-06-01-04-41','http://101.78.175.101:6780/storage/2018-01-06-01-04-41.jpg','2018-01-05 17:04:41','2018-01-05 17:04:41'),(17,'City of Angels','Inspired by the modern classic, Wings of Desire, City involves an angel (Cage) who is spotted by a doctor in an operating room.','English',0,130,'1998-04-10 00:00:00','2018-01-06-01-06-40','http://101.78.175.101:6780/storage/2018-01-06-01-06-40.jpg','2018-01-05 17:06:40','2018-01-05 17:06:40'),(18,'Rock Star','Lead singer of a tribute band becomes lead singer of the real band he idolizes.','English',0,121,'2011-02-16 00:00:00','2018-01-06-01-14-16','http://101.78.175.101:6780/storage/2018-01-06-01-14-16.jpg','2018-01-05 17:14:16','2018-01-05 17:14:16'),(19,'Juno','Faced with an unplanned pregnancy, an offbeat young woman makes an unusual decision regarding her unborn child.','English',0,90,'2007-05-10 00:00:00','2018-01-06-01-16-17','http://101.78.175.101:6780/storage/2018-01-06-01-16-17.jpg','2018-01-05 17:16:17','2018-01-05 17:16:17'),(20,'Me Before You','A girl in a small town forms an unlikely bond with a recently-paralyzed man she\'s taking care of.','English',5,106,'2016-06-03 00:00:00','2018-01-06-01-19-56','http://101.78.175.101:6780/storage/2018-01-06-01-19-56.jpeg','2018-01-05 17:19:56','2018-01-05 17:19:56'),(35,'testing film','this is good','english',0,120,'2018-04-10 00:00:00','2018-04-16-15-58-31','http://101.78.175.101:6780/storage/2018-04-16-15-58-31.png','2018-04-16 07:58:31','2018-04-16 07:58:31');
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `genre_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Action'),(2,'Horror'),(3,'Drama'),(4,'Fiction'),(5,'War'),(6,'Thriller'),(7,'Animation'),(8,'History'),(9,'Romance');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (214,'2014_10_12_000000_create_users_table',1),(215,'2014_10_12_100000_create_password_resets_table',1),(216,'2017_08_25_101158_create_permission_table',1),(217,'2017_11_07_161130_create_barcode_table',1),(218,'2017_11_07_161917_create_reviews_table',1),(219,'2017_11_07_162136_create_discounts_table',1),(220,'2017_11_07_162638_create_user_has_discount_table',1),(221,'2017_11_07_163414_create_film_genre_table',1),(222,'2017_11_07_164417_create_role_has_film_table',1),(223,'2017_11_07_165126_create_roles_table',1),(224,'2017_11_07_174252_create_genres_table',1),(225,'2017_11_07_174502_create_films_table',1),(226,'2017_11_09_173647_create_admins_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `review_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `film_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `favorite` int(11) DEFAULT NULL,
  `dislike` int(11) DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `reviews_user_id_foreign` (`user_id`),
  KEY `reviews_film_id_foreign` (`film_id`),
  CONSTRAINT `reviews_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`film_id`),
  CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (5,'super good','you have to go there once',3,5,1,'2018-01-09 08:32:49','2018-04-16 07:46:11',7,1),(6,'amazinh film','all of you should enjoy it',0,5,6,'2018-01-08 16:37:01','2018-01-08 16:37:01',NULL,0),(7,'Review 1','It is quite intesting',3,1,1,'2018-01-09 08:32:49','2018-04-15 16:10:59',6,2),(8,'Review 2','It is quite good',3,7,1,'2018-01-09 08:32:49','2018-04-14 16:35:18',3,1),(9,'Review 3','It is amazing',4,8,1,'2018-01-09 08:32:49','2018-02-22 16:57:31',5,0),(10,'Review 4','It is so so',2,9,1,'2018-01-09 08:32:49','2018-02-22 15:51:37',4,0),(11,'Review 5','It is normal',3,10,1,'2018-01-09 08:32:49','2018-02-22 16:41:39',5,2),(12,'Review 6','It is not bad',3,11,1,'2018-01-09 08:32:49',NULL,NULL,0),(13,'Review 7','It is not so bad',2,12,1,'2018-01-09 08:32:49',NULL,NULL,0),(14,'Review1','This is a good movie',4,13,1,'2018-01-09 08:32:49',NULL,NULL,0),(15,'avengers','this ia a good mobie',4,5,8,'2018-01-09 08:32:49','2018-01-09 08:32:49',0,0),(16,'Review1','This is a good movie',4,14,1,'2018-01-09 10:00:49','2018-02-22 16:47:12',4,2),(17,'good movie','this is a good movie',3,5,1,'2018-01-11 09:02:02','2018-02-22 16:46:59',0,1),(18,'amazing','this is a good movie',4,5,1,'2018-04-12 15:37:07','2018-04-12 15:37:07',0,0),(19,'film review','testing review',5,5,1,'2018-04-12 15:56:56','2018-04-12 15:56:56',0,0),(20,'testing review','can you see?',4,5,1,'2018-04-15 15:52:43','2018-04-15 15:52:43',0,0),(21,'testing review','testing rebiew',3,5,1,'2018-04-16 08:01:21','2018-04-16 08:01:21',0,0);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_film`
--

DROP TABLE IF EXISTS `role_has_film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_film` (
  `role_has_film_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `film_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`role_has_film_id`),
  KEY `role_has_film_film_id_foreign` (`film_id`),
  KEY `role_has_film_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_film_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`film_id`),
  CONSTRAINT `role_has_film_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_film`
--

LOCK TABLES `role_has_film` WRITE;
/*!40000 ALTER TABLE `role_has_film` DISABLE KEYS */;
INSERT INTO `role_has_film` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,4),(5,2,5),(6,2,6),(7,3,7),(8,3,8),(9,3,9),(10,4,10),(11,4,11),(12,4,12),(13,5,13),(14,5,14),(15,5,15),(16,5,15),(17,6,16),(18,6,17),(19,6,18),(20,7,19),(21,7,20),(22,7,21),(23,8,22),(24,8,23),(25,8,24),(26,9,25),(27,9,26),(28,9,27),(29,10,28),(30,10,29),(31,10,30),(32,11,31),(33,11,32),(34,11,33),(35,12,34),(36,12,35),(37,12,36),(38,13,37),(39,13,38),(40,13,39),(41,14,40),(42,14,41),(43,14,42),(44,15,43),(45,15,44),(46,15,45),(47,16,46),(48,16,47),(49,16,48),(50,17,49),(51,17,50),(52,17,51),(53,18,52),(54,18,53),(55,18,54),(57,19,55),(58,19,56),(59,19,57),(60,20,58),(61,20,59),(62,20,60),(63,41,85),(64,41,86),(65,42,87),(66,42,88),(67,43,89),(68,43,90),(69,45,93),(70,45,94);
/*!40000 ALTER TABLE `role_has_film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Peter Jackson','Male','Director'),(2,'Naomi Watts','Female','Actor'),(3,'Jack Black','Male','Actor'),(4,'Paul W.S. Anderson','Male','Director'),(5,'Milla Jovovich','Female','Actor'),(6,'Michelle Rodriguez','Female','Actor'),(7,'Michael Cuesta','Male','Director'),(8,'Dylan Brien','Male','Actor'),(9,'Michael Keaton','Male','Actor'),(10,'David Yates','Male','Director'),(11,'Eddie Redmayne','Male','Actor'),(12,'Katherine Waterston','Female','Actor'),(13,'Zack Snyder','Male','Director'),(14,'Ben Affleck','Male','Actor'),(15,'Henry Cavill','Male','Actor'),(16,'Scott Stewart','Male','Director'),(17,'Paul Bettany','Male','Actor'),(18,'Cam Gigandet','Male','Actor'),(19,'Stefen Fangmeier','Male','Director'),(20,'Ed Speleers','Male','Actor'),(21,'Sienna Guillory','Female','Actor'),(22,'Gary Ross','Male','Director'),(23,'Jennifer Lawrence','Female','Actor'),(24,'Josh Hutcherson','Male','Actor'),(25,'Bill Condon','Male','Director'),(26,'Emma Watson','Female','Actor'),(27,'Dan Stevens','Male','Actor'),(28,'Kenneth Branagh','Male','Director'),(29,'Lily James','Female','Actor'),(30,'Cate Blanchett','Female','Actor'),(31,'Eric Darnell','Male','Director'),(32,'Ben Stiller','Male','Actor'),(33,'Chris Rock','Male','Actor'),(34,'Genndy Tartakovsky','Male','Director'),(35,'Adam Sandler','Male','Actor'),(36,'Kevin James','Male','Actor'),(37,'Andrew Adamson','Male','Director'),(38,'Mike Myers','Male','Actor'),(39,'Eddie Murphy','Male','Actor'),(40,'Thea Sharrock','Male','Director'),(41,'Emilia Clarke','Male','Actor'),(42,'Sam Claflin','Male','Actor'),(43,'Philippa Lowthorpe','Male','Director'),(44,'David Thompsone','Male','Actor'),(45,'Dan Winch','Male','Actor'),(46,'Michael Hoffman','Male','Director'),(47,'James Marsden','Male','Actor'),(48,'Michelle Monaghan','Female','Actor'),(49,'Vikramaditya Motwane','Male','Director'),(50,'Ranveer Singh','Male','Actor'),(51,'Sonakshi Sinha','Female','Actor'),(52,'Marcus Nispel','Male','Director'),(53,'Jared Padalecki','Male','Actor'),(54,'Amanda Righetti','Female','Actor'),(55,'Matthew Cirulnick','Male','Director'),(56,'Stana Katic','Female','Actor'),(57,'Patrick Heusinger','Male','Actor'),(58,'Wes Craven','Male','Director'),(59,'David Arquette','Male','Actor'),(60,'Neve Campbell','Female','Actor'),(93,'C','Male','Actor'),(94,'D','Male','Actor');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_discount`
--

DROP TABLE IF EXISTS `user_has_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_has_discount` (
  `user_has_discount_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `discount_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `path` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_has_discount_id`),
  KEY `user_has_discount_user_id_foreign` (`user_id`),
  KEY `user_has_discount_discount_id_foreign` (`discount_id`),
  CONSTRAINT `user_has_discount_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`discount_id`),
  CONSTRAINT `user_has_discount_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_discount`
--

LOCK TABLES `user_has_discount` WRITE;
/*!40000 ALTER TABLE `user_has_discount` DISABLE KEYS */;
INSERT INTO `user_has_discount` VALUES (1,1,1,'2018-01-31 17:15:29','2018-01-31 17:15:29',NULL,'2018-02-04 09:17:41'),(2,5,1,'2018-02-04 12:26:58','2018-02-04 12:26:58','http://101.78.175.101:6780/storage/qr_code/discount_2018-02-04_20-26-58.png','2018-02-11 12:26:58'),(3,5,1,'2018-02-04 12:58:20','2018-02-04 12:58:20','http://101.78.175.101:6780/storage/qr_code/discount_2018-02-04_20-58-20.png','2018-02-11 12:58:20'),(4,5,1,'2018-02-04 13:09:11','2018-02-04 13:09:11','http://101.78.175.101:6780/storage/qr_code/discount_2018-02-04_21-09-11.png','2018-02-11 13:09:11'),(5,18,1,'2018-02-04 14:52:42','2018-02-04 14:52:42','http://101.78.175.101:6780/storage/qr_code/discount_2018-02-04_22-52-42.png','2018-02-11 14:52:42'),(6,5,1,'2018-04-05 16:30:15','2018-04-05 16:30:15','http://101.78.175.101:6780/storage/qr_code/discount_2018-04-06_00-30-15.png','2018-04-12 16:30:15'),(7,19,1,'2018-04-05 17:02:27','2018-04-05 17:02:27','http://101.78.175.101:6780/storage/qr_code/discount_2018-04-06_01-02-27.png','2018-04-12 17:02:27'),(8,5,1,'2018-04-06 03:44:13','2018-04-06 03:44:13','http://101.78.175.101:6780/storage/qr_code/discount_2018-04-06_11-44-13.png','2018-04-13 03:44:13'),(9,5,1,'2018-04-06 03:51:48','2018-04-06 03:51:48','http://101.78.175.101:6780/storage/qr_code/discount_2018-04-06_11-51-48.png','2018-04-13 03:51:48'),(10,5,1,'2018-04-06 03:58:22','2018-04-06 03:58:22','http://101.78.175.101:6780/storage/qr_code/discount_2018-04-06_11-58-22.png','2018-04-13 03:58:22'),(11,19,1,'2018-04-06 04:00:24','2018-04-06 04:00:24','http://101.78.175.101:6780/storage/qr_code/discount_2018-04-06_12-00-24.png','2018-04-13 04:00:24'),(12,19,1,'2018-04-06 04:02:30','2018-04-06 04:02:30','http://101.78.175.101:6780/storage/qr_code/discount_2018-04-06_12-02-30.png','2018-04-13 04:02:30'),(13,19,1,'2018-04-06 04:03:21','2018-04-06 04:03:21','http://101.78.175.101:6780/storage/qr_code/discount_2018-04-06_12-03-21.png','2018-04-13 04:03:21'),(14,19,1,'2018-04-06 04:03:53','2018-04-06 04:03:53','http://101.78.175.101:6780/storage/qr_code/discount_2018-04-06_12-03-53.png','2018-04-13 04:03:53'),(15,19,1,'2018-04-06 04:21:06','2018-04-06 04:21:06','http://101.78.175.101:6780/storage/qr_code/discount_2018-04-06_12-21-06.png','2018-04-13 04:21:06'),(16,5,1,'2018-04-12 15:36:19','2018-04-12 15:36:19','http://101.78.175.101:6780/storage/qr_code/discount_2018-04-12_23-36-19.png','2018-04-19 15:36:19'),(17,5,1,'2018-04-12 15:55:55','2018-04-12 15:55:55','http://101.78.175.101:6780/storage/qr_code/discount_2018-04-12_23-55-55.png','2018-04-19 15:55:55'),(18,5,1,'2018-04-15 15:36:21','2018-04-15 15:36:21','http://101.78.175.101:6780/storage/qr_code/discount_2018-04-15_23-36-21.png','2018-04-22 15:36:21'),(19,5,1,'2018-04-15 15:40:01','2018-04-15 15:40:01','http://101.78.175.101:6780/storage/qr_code/discount_2018-04-15_23-40-01.png','2018-04-22 15:40:01'),(20,5,1,'2018-04-15 15:41:25','2018-04-15 15:41:25','http://101.78.175.101:6780/storage/qr_code/discount_2018-04-15_23-41-25.png','2018-04-22 15:41:25'),(21,5,1,'2018-04-15 15:48:00','2018-04-15 15:48:00','http://101.78.175.101:6780/storage/qr_code/discount_2018-04-15_23-48-00.png','2018-04-22 15:48:00'),(22,5,1,'2018-04-15 15:49:07','2018-04-15 15:49:07','http://101.78.175.101:6780/storage/qr_code/discount_2018-04-15_23-49-07.png','2018-04-22 15:49:07'),(23,5,1,'2018-04-16 08:00:09','2018-04-16 08:00:09','http://101.78.175.101:6780/storage/qr_code/discount_2018-04-16_16-00-09.png','2018-04-23 08:00:09');
/*!40000 ALTER TABLE `user_has_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_event`
--

DROP TABLE IF EXISTS `user_has_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_has_event` (
  `user_has_event_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `event_id` int(10) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_has_event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_event`
--

LOCK TABLES `user_has_event` WRITE;
/*!40000 ALTER TABLE `user_has_event` DISABLE KEYS */;
INSERT INTO `user_has_event` VALUES (1,1,4,'creator'),(2,NULL,5,'creator'),(3,1,6,'creator'),(4,1,6,'participant'),(6,5,7,'creator'),(11,1,7,'participant'),(19,18,7,'participant'),(25,5,8,'creator'),(27,5,9,'creator'),(29,5,10,'creator'),(32,19,6,'participant'),(36,5,6,'participant');
/*!40000 ALTER TABLE `user_has_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'wongwaichun1995','example.gmail.com','$2y$10$hAqogQZ6T6YOvguQaO/z..bKHZLYj9qetk5Vat6ABmPpuD.B8jzQ.','http://101.78.175.101:6780/storage/2018-01-06-15-02-53.png','admin','general',NULL,'2017-11-14 16:49:53','2018-04-16 07:56:55','wongwaichun'),(4,'uglyjj','example.gmail.com','$2y$10$o9l8xSHG0xgemEO/cTLxSeDSm/N55waW6FoNWMsu46fArbPGc2tqy','example','user','general',NULL,'2017-11-15 02:25:58','2017-11-15 02:25:58',NULL),(5,'WongWai Chun','wongwaichun@gmail.com','$2y$10$opsdAvkSg4iIYOIloTqd3uxfRES24lzlbTgNKqsc0zBRFe/R6qfUK','https://firebasestorage.googleapis.com/v0/b/facebooklogin-67539.appspot.com/o/icon%2Fimage%2F2018-01-11T08%3A59%3A29.456Z.png?alt=media&token=e5970adb-b4c9-4254-bee9-1a4f96ac1617','user','facebook',NULL,'2017-11-15 17:05:48','2018-04-12 15:51:45','wwcderek134'),(6,'admin','example.gmail.com','$2y$10$yQs3ee2mrQF2yb/560c7qO/sUfsW.gN1jx7brdxFT/C7Ufwy0i7M6','example','user','general',NULL,'2017-11-16 15:31:21','2017-11-16 15:31:21',NULL),(7,'test123','example.gmail.com','$2y$10$rFmvB.WxZW759o3kdHU8xeVrpBMXA0iz3M58AJcx8z0PfxPATnPFS','http://101.78.175.101:6780/storage/2018-01-06-15-02-53.png','user','general',NULL,'2018-01-08 16:33:31','2018-01-08 16:33:31','test123'),(8,'test3456789','example.gmail.com','$2y$10$bsSsqbEeDLsigzJN/4qo3uqwpjIqcdU6fJMHxnv4iX66Bc0.B5mqW','http://101.78.175.101:6780/storage/2018-01-06-15-02-53.png','admin','general',NULL,'2018-01-08 16:33:46','2018-04-16 03:26:01','test3456'),(9,'test45678','example.gmail.com','$2y$10$9Po6AtUaex3bCXzp5Z1l8exzCHPrytlqG.tNZDDXNI40iXHYHFNVS','http://101.78.175.101:6780/storage/2018-01-06-15-02-53.png','user','general',NULL,'2018-01-08 16:34:00','2018-01-08 16:34:00','test45678'),(10,'testahh','example.gmail.com','$2y$10$HBRwkDqYxmWJ50TgWoe56.vBoFYClW7zBEuKe8XRf.8y1GO3xnDYi','http://101.78.175.101:6780/storage/2018-01-06-15-02-53.png','user','general',NULL,'2018-01-08 16:34:13','2018-01-08 16:34:13','testahh'),(11,'dhxvbshh','example.gmail.com','$2y$10$NsbfHzz9yQuNKHBoBpJPSOMtl74DyHR8PvMuSTx18cAKvmEK.wqqO','http://101.78.175.101:6780/storage/2018-01-06-15-02-53.png','user','general',NULL,'2018-01-08 16:34:33','2018-01-08 16:34:33','dhxvbshh'),(12,'test99','example.gmail.com','$2y$10$0rSZbn7pbIMrgUaKsnBQeefKFOqFVydDhl9CGv/.qsxF8038yvk5i','http://101.78.175.101:6780/storage/2018-01-06-15-02-53.png','user','general',NULL,'2018-01-08 16:35:00','2018-01-08 16:35:00','test99'),(13,'testjj','example.gmail.com','$2y$10$FjOspt7H.C2sRzsRGdZT2.uSeIi/XQhlB/KPoT42qu6Rek0TtPVfi','http://101.78.175.101:6780/storage/2018-01-06-15-02-53.png','user','general',NULL,'2018-01-08 16:35:14','2018-01-08 16:35:14','testjj'),(14,'testgg','example.gmail.com','$2y$10$j.yho1OWGKmZgzjR3rSU4O/ZvfPx8syExDGDdW1SCLupZmyKzPOFC','http://101.78.175.101:6780/storage/2018-01-06-15-02-53.png','user','general',NULL,'2018-01-08 16:35:28','2018-01-08 16:35:28','testgg'),(15,'mntest','example.gmail.com','$2y$10$IYGv4VbAs5KIG/i/KVuuz.4I3oDCgfx9layNo1hVoSe10drtLEJvO','http://101.78.175.101:6780/storage/2018-01-06-15-02-53.png','user','general',NULL,'2018-01-08 16:35:42','2018-01-08 16:35:42','mntest'),(16,'testwudbbdb','example.gmail.com','$2y$10$uLdF2OXARxmsPND8fhspQeIgKLvs5/eREq5ljFhOP4kME0cJSeKPm','http://101.78.175.101:6780/storage/2018-01-06-15-02-53.png','user','general',NULL,'2018-01-10 17:44:04','2018-01-10 17:44:04','testwudbbdb'),(17,'test123456','example.gmail.com','$2y$10$QQ/GgI3KdQUf0KrclxH62OHI39.D3x/LcnDet9aPay9c2NZvKa.RG','http://101.78.175.101:6780/storage/2018-01-06-15-02-53.png','user','general',NULL,'2018-01-11 08:58:00','2018-01-11 08:58:00','test123456'),(18,'admin2','example.gmail.com','$2y$10$p8gEgMc7Uax1egu/dzXjWeAq4RgDPUqBD2JlU2FXEjPptlxKAoH76','http://101.78.175.101:6780/storage/2018-01-06-15-02-53.png','user','general',NULL,'2018-01-23 02:08:28','2018-01-23 02:08:28','admin2'),(19,'admin1','example.gmail.com','$2y$10$pL.LxKJXCHMmQMGbZeb.5./huVwy3gsQrCzkDuSWUo9LBNuQY/jIC','http://101.78.175.101:6780/storage/2018-01-06-15-02-53.png','admin','general',NULL,'2018-03-16 05:39:43','2018-03-16 05:39:43','admin1'),(20,'staff','example.gmail.com','$2y$10$GkJ7SIlbaL5ZsR/0tnk10ekEuqtKpnxFGSlul6qdFujZ1JSEnagWK','https://firebasestorage.googleapis.com/v0/b/facebooklogin-67539.appspot.com/o/icon%2Fimage%2F2018-03-23T16%3A43%3A09.585Z.png?alt=media&token=196dd1ec-e7e9-4c1a-800c-7853061e377f','staff','general',NULL,'2018-03-23 16:30:02','2018-03-23 16:43:15','staff'),(21,'test12345','example.gmail.com','$2y$10$5g8WWuCAcEHPMdfWlONPEu6ky3.38LlyjmyPjK0JplLvl9aBhNOZm','http://101.78.175.101:6780/storage/2018-01-06-15-02-53.png','user','general',NULL,'2018-04-12 14:36:12','2018-04-12 14:36:12','test12345'),(22,'test456','example.gmail.com','$2y$10$Yh.l/xVYQsUVutcX/UmCFuge37dxqdlN3l.I14ojw6zRAgeyBKOSe','http://101.78.175.101:6780/storage/2018-01-06-15-02-53.png','user','general',NULL,'2018-04-12 15:12:28','2018-04-12 15:12:28','test456'),(23,'test789','example.gmail.com','$2y$10$ehs4NH6mBurxvRb3hp0RJejDeD9THAv7cC9E4KLQqhXshP8mGBMOu','http://101.78.175.101:6780/storage/2018-01-06-15-02-53.png','user','general',NULL,'2018-04-12 15:14:51','2018-04-12 15:14:51','test789'),(24,'test112','example.gmail.com','$2y$10$KDVdI4xYy0XYL.WzbJGEVeV0IScRehAaUmxAf5J7pviX1G3onjXLO','http://101.78.175.101:6780/storage/2018-01-06-15-02-53.png','user','general',NULL,'2018-04-12 15:31:24','2018-04-12 15:31:24','test112'),(25,'test223','example.gmail.com','$2y$10$.QmlIR5/vihs6QFc1RKRruf9RNStMO/Yo2DkteeXAen1oEiheWvty','http://101.78.175.101:6780/storage/2018-01-06-15-02-53.png','user','general',NULL,'2018-04-12 15:43:18','2018-04-12 15:43:18','test223'),(26,'test345','example.gmail.com','$2y$10$J/Ms9AKdl.OFtfh3bymtPui0fkRezfyx5j6YXMK.XEN/mwp1sTOWm','http://101.78.175.101:6780/storage/2018-01-06-15-02-53.png','user','general',NULL,'2018-04-12 15:50:05','2018-04-12 15:50:05','test345');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-19 11:00:35
