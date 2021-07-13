-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: minivk
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `admin_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `communities_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (1,'congue','morbi vel',71),(2,'mauris','pharetra',8),(3,'ac','volutpat in congue',98),(4,'augue','tempus vel',15),(5,'in','proin interdum mauris',76),(6,'proin','interdum venenatis turpis enim blandit',22),(7,'mus etiam','volutpat',27),(8,'maecenas','hac habitasse platea dictumst etiam',76),(9,'dolor','luctus et ultrices posuere cubilia',33),(10,'pede morbi','fringilla rhoncus mauris',24),(11,'elit proin','mi integer ac neque duis',34),(12,'pede ac','sagittis nam congue risus semper',16),(13,'risus','eros elementum pellentesque quisque porta',93),(14,'ipsum primis','semper rutrum',55),(15,'nisl nunc','hac habitasse platea dictumst',32),(16,'id','quisque id justo sit',10),(17,'odio','risus semper porta volutpat',77),(18,'aenean lectus','ut odio',30),(19,'orci luctus','vel sem',44),(20,'luctus','luctus et',37),(21,'duis faucibus','massa donec dapibus',16),(22,'non','et magnis dis parturient',32),(23,'morbi','vestibulum sagittis sapien cum',31),(24,'erat','ac enim',9),(25,'cursus','id lobortis convallis tortor',5),(26,'adipiscing','sed tristique in tempus',27),(27,'arcu','pellentesque',15),(28,'in','curabitur in libero',50),(29,'sapien','quis turpis eget elit sodales',80),(30,'tempor convallis','id sapien in sapien',90),(31,'consectetuer','habitasse platea dictumst aliquam augue',85),(32,'vestibulum','vivamus in felis eu',79),(33,'nascetur ridiculus','etiam',8),(34,'sit amet','in est',16),(35,'porttitor pede','non',44),(36,'ultrices','tortor duis mattis egestas',100),(37,'amet sapien','et ultrices posuere cubilia',13),(38,'ullamcorper purus','scelerisque mauris sit amet eros',78),(39,'tempor convallis','sed ante',23),(40,'vivamus','habitasse',32),(41,'adipiscing lorem','felis',33),(42,'lobortis','nulla mollis',93),(43,'odio','molestie',48),(44,'nisi volutpat','magnis dis parturient montes',50),(45,'purus','gravida nisi at',100),(46,'pellentesque','duis mattis egestas',90),(47,'donec','mattis',71),(48,'posuere','magnis dis parturient',87),(49,'ac lobortis','maecenas',52),(50,'consequat','congue elementum in hac',87),(51,'cras non','tempus vel',45),(52,'orci luctus','velit id',34),(53,'volutpat','tortor id nulla ultrices aliquet',36),(54,'ante','sit amet',97),(55,'urna','eu tincidunt',73),(56,'pellentesque','vestibulum',58),(57,'tempor','hac habitasse platea dictumst',26),(58,'nisl ut','ac leo',90),(59,'ipsum','sed',12),(60,'gravida nisi','at turpis a',83),(61,'sit','augue a suscipit',37),(62,'fusce lacus','pede',13),(63,'nulla mollis','ultrices phasellus id sapien in',32),(64,'non interdum','consectetuer eget',28),(65,'faucibus orci','ac neque',25),(66,'nullam orci','aliquam lacus',75),(67,'nullam','ridiculus mus vivamus vestibulum sagittis',50),(68,'elementum in','vel sem sed sagittis',54),(69,'luctus','varius ut blandit',86),(70,'in felis','felis fusce posuere',14),(71,'turpis','duis faucibus accumsan',12),(72,'justo lacinia','aenean lectus',41),(73,'ut nunc','elit',96),(74,'urna ut','rhoncus dui vel sem',7),(75,'sapien ut','vivamus vel nulla eget eros',19),(76,'pulvinar','libero rutrum',22),(77,'augue','posuere nonummy',48),(78,'augue','posuere nonummy integer non velit',74),(79,'duis','congue risus semper porta',25),(80,'magnis','etiam faucibus cursus urna ut',46),(81,'nisl','vel',61),(82,'primis','amet consectetuer adipiscing',81),(83,'donec quis','vestibulum ante ipsum',91),(84,'in','adipiscing lorem vitae',30),(85,'mi','duis at',82),(86,'nam','lectus',27),(87,'mattis','imperdiet sapien urna pretium nisl',46),(88,'integer','porttitor lacus at turpis',93),(89,'felis','vivamus metus',73),(90,'tristique','ipsum dolor',100),(91,'faucibus','quisque ut',87),(92,'vel','hac',39),(93,'quam','nibh ligula nec',94),(94,'at nunc','luctus et ultrices posuere cubilia',59),(95,'sit amet','consequat ut nulla sed accumsan',30),(96,'pretium','libero quis orci nullam molestie',29),(97,'mauris','nullam',49),(98,'scelerisque','pellentesque ultrices',59),(99,'ligula','massa quis augue luctus',80),(100,'fermentum donec','at turpis a',75);
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities_users`
--

DROP TABLE IF EXISTS `communities_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities_users` (
  `community_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`community_id`,`user_id`),
  KEY `community_id` (`community_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `communities_users_ibfk_1` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `communities_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities_users`
--

LOCK TABLES `communities_users` WRITE;
/*!40000 ALTER TABLE `communities_users` DISABLE KEYS */;
INSERT INTO `communities_users` VALUES (1,65,'1996-09-22 00:00:00'),(1,73,'2015-09-15 00:00:00'),(2,63,'2008-12-07 00:00:00'),(2,84,'2000-03-14 00:00:00'),(2,91,'2005-11-08 00:00:00'),(3,12,'1986-11-07 00:00:00'),(3,13,'1999-02-24 00:00:00'),(3,46,'1987-06-30 00:00:00'),(3,67,'1985-05-08 00:00:00'),(4,12,'2014-11-12 00:00:00'),(5,25,'1995-03-17 00:00:00'),(10,11,'2015-05-11 00:00:00'),(11,85,'1996-03-25 00:00:00'),(12,33,'2008-02-08 00:00:00'),(14,14,'1981-02-24 00:00:00'),(14,53,'1994-03-04 00:00:00'),(14,83,'2006-08-14 00:00:00'),(14,92,'1995-03-04 00:00:00'),(17,3,'2020-05-02 00:00:00'),(18,96,'1989-03-28 00:00:00'),(20,48,'2012-12-02 00:00:00'),(21,58,'1996-01-17 00:00:00'),(25,3,'1982-04-05 00:00:00'),(26,4,'2001-02-03 00:00:00'),(27,25,'1991-10-28 00:00:00'),(27,57,'1996-05-23 00:00:00'),(28,89,'2011-01-27 00:00:00'),(29,50,'1995-01-25 00:00:00'),(31,100,'1984-10-29 00:00:00'),(33,62,'2007-01-07 00:00:00'),(34,92,'2004-08-17 00:00:00'),(37,28,'1988-09-20 00:00:00'),(37,37,'1988-10-12 00:00:00'),(38,77,'2013-01-29 00:00:00'),(38,94,'2020-06-18 00:00:00'),(39,10,'2009-05-12 00:00:00'),(39,16,'2019-07-10 00:00:00'),(39,82,'1985-09-08 00:00:00'),(39,89,'1994-05-28 00:00:00'),(40,19,'2012-12-19 00:00:00'),(40,41,'2008-06-20 00:00:00'),(41,34,'1990-05-28 00:00:00'),(43,26,'1989-11-17 00:00:00'),(44,97,'1982-02-14 00:00:00'),(46,22,'1982-06-28 00:00:00'),(46,62,'2018-07-27 00:00:00'),(47,48,'1995-11-01 00:00:00'),(47,74,'1996-02-16 00:00:00'),(47,91,'2018-05-11 00:00:00'),(48,81,'2016-12-05 00:00:00'),(49,28,'2005-08-03 00:00:00'),(49,58,'2013-10-02 00:00:00'),(51,45,'1982-01-15 00:00:00'),(51,81,'2010-07-05 00:00:00'),(52,97,'2008-03-23 00:00:00'),(54,83,'2007-07-20 00:00:00'),(54,88,'1988-03-28 00:00:00'),(55,3,'1985-12-06 00:00:00'),(55,24,'2012-05-02 00:00:00'),(55,63,'2014-09-14 00:00:00'),(56,33,'1997-12-28 00:00:00'),(56,36,'1993-07-07 00:00:00'),(57,45,'1984-03-03 00:00:00'),(60,69,'1997-03-21 00:00:00'),(62,48,'2003-06-28 00:00:00'),(63,97,'1994-05-19 00:00:00'),(65,69,'2007-06-08 00:00:00'),(66,46,'2001-09-05 00:00:00'),(69,12,'1986-07-15 00:00:00'),(69,13,'1987-02-26 00:00:00'),(70,81,'2000-08-30 00:00:00'),(73,11,'2000-04-12 00:00:00'),(73,85,'1998-04-02 00:00:00'),(74,42,'1987-10-10 00:00:00'),(77,28,'2008-07-18 00:00:00'),(77,89,'2014-05-20 00:00:00'),(78,34,'1996-09-09 00:00:00'),(79,59,'2018-12-27 00:00:00'),(80,51,'2000-12-06 00:00:00'),(81,49,'2008-09-27 00:00:00'),(81,70,'1997-11-02 00:00:00'),(82,84,'2003-08-06 00:00:00'),(83,17,'1987-05-03 00:00:00'),(85,45,'1996-09-01 00:00:00'),(85,80,'2011-08-07 00:00:00'),(86,64,'1991-07-09 00:00:00'),(86,69,'2018-03-01 00:00:00'),(88,31,'2003-06-22 00:00:00'),(88,52,'1993-09-20 00:00:00'),(90,6,'2005-08-31 00:00:00'),(90,47,'2016-01-10 00:00:00'),(91,20,'1991-10-25 00:00:00'),(92,95,'1986-02-27 00:00:00'),(93,11,'1993-03-31 00:00:00'),(93,58,'1996-05-12 00:00:00'),(94,37,'1994-05-09 00:00:00'),(95,18,'1986-01-06 00:00:00'),(95,86,'1982-10-10 00:00:00'),(97,73,'2010-04-26 00:00:00'),(98,45,'1990-08-08 00:00:00');
/*!40000 ALTER TABLE `communities_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend_requests`
--

DROP TABLE IF EXISTS `friend_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friend_requests` (
  `from_user_id` bigint unsigned NOT NULL,
  `to_user_id` bigint unsigned NOT NULL,
  `accepted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`from_user_id`,`to_user_id`),
  KEY `friend_requests_from_user_id_idx` (`from_user_id`),
  KEY `friend_requests_to_user_id_idx` (`from_user_id`),
  KEY `fk_friend_requests_to_user_id` (`to_user_id`),
  CONSTRAINT `fk_friend_requests_from_user_id` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_friend_requests_to_user_id` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_requests`
--

LOCK TABLES `friend_requests` WRITE;
/*!40000 ALTER TABLE `friend_requests` DISABLE KEYS */;
INSERT INTO `friend_requests` VALUES (1,63,0),(4,57,1),(4,90,1),(5,38,1),(6,35,0),(6,68,1),(6,79,0),(8,90,1),(9,29,0),(9,44,0),(11,39,0),(11,47,0),(13,32,1),(16,68,0),(17,36,1),(18,5,1),(18,13,0),(18,82,0),(18,99,1),(20,64,1),(23,30,1),(24,75,0),(25,7,0),(25,51,0),(26,62,0),(28,31,1),(30,66,0),(31,89,1),(33,51,1),(33,91,0),(36,50,0),(36,73,0),(37,34,1),(37,35,0),(37,94,0),(37,97,0),(39,53,0),(39,98,1),(41,53,1),(41,63,1),(41,90,1),(42,81,0),(42,98,0),(44,55,1),(49,9,0),(49,18,1),(49,54,0),(50,5,1),(50,85,1),(51,41,1),(51,87,0),(52,19,1),(53,56,1),(54,68,1),(54,76,1),(55,85,1),(56,73,1),(57,17,1),(57,25,0),(59,12,1),(60,21,1),(61,91,1),(62,1,1),(62,78,1),(63,12,1),(64,7,0),(64,31,0),(65,85,1),(65,98,0),(66,40,1),(68,100,0),(69,76,1),(70,34,0),(74,48,1),(77,4,1),(77,62,1),(78,21,1),(78,42,0),(80,40,1),(80,46,1),(85,32,0),(85,97,0),(88,58,0),(88,98,0),(89,25,1),(89,63,1),(89,99,1),(92,30,1),(93,32,1),(93,58,1),(94,47,1),(94,50,1),(95,29,1),(95,39,1),(96,19,0),(96,77,0),(97,33,0),(98,17,1),(99,15,1),(99,93,0);
/*!40000 ALTER TABLE `friend_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `media_types_id` int unsigned NOT NULL,
  `file_name` varchar(255) DEFAULT NULL COMMENT 'C:files...',
  `file_size` bigint unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `media_types_id` (`media_types_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`media_types_id`) REFERENCES `media_types` (`id`),
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,40,3,'SapienArcuSed.ppt',1307,'1989-04-27 00:00:00'),(2,92,4,'QuisTurpis.tiff',5556,'1993-01-19 00:00:00'),(3,6,4,'MusEtiam.jpeg',4830,'2003-12-23 00:00:00'),(4,19,4,'Tristique.pdf',7446,'1991-11-10 00:00:00'),(5,47,3,'IdTurpis.pdf',7874,'1984-04-03 00:00:00'),(6,78,2,'BlanditUltricesEnim.mp3',3376,'2015-06-20 00:00:00'),(7,55,3,'Est.tiff',2498,'2010-07-11 00:00:00'),(8,66,4,'Tellus.mov',2679,'2003-01-23 00:00:00'),(9,13,4,'AnteIpsum.xls',4538,'1981-06-27 00:00:00'),(10,33,3,'PurusPhasellus.avi',662,'1981-06-11 00:00:00'),(11,8,1,'LuctusEtUltrices.ppt',5563,'2007-07-24 00:00:00'),(12,20,2,'AdipiscingElit.jpeg',4224,'1988-01-17 00:00:00'),(13,21,1,'ConsequatMorbiA.mp3',1405,'1995-10-20 00:00:00'),(14,3,3,'FelisDonecSemper.txt',7313,'1981-06-10 00:00:00'),(15,68,1,'Lectus.png',6570,'2018-07-17 00:00:00'),(16,52,3,'PedeMorbi.xls',8228,'2016-06-25 00:00:00'),(17,93,2,'IaculisDiam.avi',1451,'1998-12-02 00:00:00'),(18,19,2,'SapienCum.avi',7801,'1999-05-19 00:00:00'),(19,34,4,'MattisOdioDonec.xls',6545,'1996-05-21 00:00:00'),(20,66,3,'Maecenas.avi',7308,'1991-12-03 00:00:00'),(21,28,1,'Ipsum.avi',333,'2006-05-17 00:00:00'),(22,28,2,'MorbiVel.tiff',5920,'2005-07-01 00:00:00'),(23,3,1,'PedeUllamcorperAugue.gif',1985,'1999-01-28 00:00:00'),(24,80,3,'JustoSollicitudinUt.mov',4718,'1992-03-25 00:00:00'),(25,69,4,'Aenean.xls',6694,'2020-04-20 00:00:00'),(26,96,4,'Odio.jpeg',8729,'1996-07-25 00:00:00'),(27,15,2,'IpsumAc.ppt',8014,'1990-04-29 00:00:00'),(28,3,1,'Ultrices.ppt',8309,'2007-03-23 00:00:00'),(29,7,4,'SitAmetConsectetuer.mp3',2298,'2008-01-08 00:00:00'),(30,46,4,'BlanditNam.ppt',4009,'2012-06-21 00:00:00'),(31,92,3,'AmetEros.ppt',3729,'1981-01-08 00:00:00'),(32,9,4,'PlateaDictumst.jpeg',7544,'1986-05-05 00:00:00'),(33,96,2,'At.mp3',4030,'2018-06-28 00:00:00'),(34,47,4,'Nec.xls',7287,'1983-06-30 00:00:00'),(35,36,3,'QuamPedeLobortis.doc',1263,'1992-08-05 00:00:00'),(36,54,4,'ConvallisDuis.mov',3037,'2009-03-18 00:00:00'),(37,89,3,'Consectetuer.ppt',3732,'2012-07-02 00:00:00'),(38,11,1,'Eleifend.mov',4356,'2009-06-12 00:00:00'),(39,58,4,'DonecUtMauris.tiff',3072,'2015-02-16 00:00:00'),(40,46,2,'NullaSuscipit.mov',4714,'2007-07-26 00:00:00'),(41,96,2,'Donec.jpeg',6437,'1993-07-29 00:00:00'),(42,95,4,'Erat.ppt',2534,'2019-08-26 00:00:00'),(43,27,3,'RidiculusMusEtiam.mp3',1797,'2016-04-24 00:00:00'),(44,57,4,'Diam.ppt',5036,'2018-12-06 00:00:00'),(45,19,2,'UtNunc.xls',4451,'2019-05-07 00:00:00'),(46,35,3,'LaciniaSapienQuis.xls',2494,'2002-01-21 00:00:00'),(47,26,2,'MaurisEnim.tiff',1390,'1990-07-05 00:00:00'),(48,24,4,'LuctusEt.xls',4441,'2017-11-16 00:00:00'),(49,17,3,'MaecenasUtMassa.mp3',8924,'2001-01-08 00:00:00'),(50,42,3,'PrimisIn.xls',8623,'2006-10-03 00:00:00'),(51,96,4,'Metus.txt',2378,'1995-04-06 00:00:00'),(52,80,1,'Sed.ppt',1102,'2000-02-24 00:00:00'),(53,16,4,'IpsumPrimisIn.avi',2885,'2019-06-21 00:00:00'),(54,32,2,'DuiNecNisi.gif',7541,'1985-03-14 00:00:00'),(55,51,1,'CondimentumIdLuctus.mp3',2467,'1991-11-25 00:00:00'),(56,25,4,'NullaAcEnim.mov',4321,'1982-11-10 00:00:00'),(57,32,3,'EratVestibulumSed.ppt',5741,'2003-10-05 00:00:00'),(58,91,1,'AnteIpsum.mpeg',6603,'1984-03-09 00:00:00'),(59,94,4,'DuiVelNisl.mp3',5100,'1993-02-16 00:00:00'),(60,60,3,'SapienQuis.avi',4222,'2018-05-01 00:00:00'),(61,82,4,'AFeugiat.ppt',6805,'2015-09-08 00:00:00'),(62,70,2,'OrciLuctusEt.xls',4544,'1993-09-19 00:00:00'),(63,28,4,'Adipiscing.avi',6563,'2005-03-14 00:00:00'),(64,98,4,'CurabiturConvallis.pdf',6773,'1991-09-13 00:00:00'),(65,54,3,'MassaIdNisl.xls',3496,'2015-11-29 00:00:00'),(66,36,3,'Integer.xls',6878,'2012-09-30 00:00:00'),(67,43,4,'NullaInteger.xls',5140,'2007-12-15 00:00:00'),(68,75,3,'Tincidunt.xls',4162,'2020-01-15 00:00:00'),(69,10,4,'LuctusCumSociis.avi',7954,'2020-06-03 00:00:00'),(70,94,3,'JustoMaecenas.xls',1230,'2011-06-01 00:00:00'),(71,100,1,'EuEstCongue.xls',5953,'1986-10-29 00:00:00'),(72,19,3,'InterdumMaurisNon.xls',5633,'1982-04-18 00:00:00'),(73,28,4,'LigulaNecSem.xls',3277,'1981-10-05 00:00:00'),(74,83,4,'Lobortis.doc',6121,'1993-09-11 00:00:00'),(75,17,3,'Eleifend.mpeg',5903,'2017-08-22 00:00:00'),(76,88,2,'DuisBibendumFelis.pdf',5551,'1984-03-31 00:00:00'),(77,50,3,'AliquetMassaId.pdf',5747,'2014-02-13 00:00:00'),(78,29,4,'Nulla.avi',6825,'1998-12-03 00:00:00'),(79,48,2,'AeneanSitAmet.tiff',2318,'1994-01-31 00:00:00'),(80,84,3,'NuncVestibulumAnte.mpeg',5760,'1983-08-14 00:00:00'),(81,94,1,'EuSapien.xls',3845,'1980-12-31 00:00:00'),(82,16,3,'InEstRisus.jpeg',5205,'2009-01-29 00:00:00'),(83,20,1,'SemperRutrumNulla.mpeg',7994,'2018-02-16 00:00:00'),(84,39,4,'Ac.mp3',2781,'2001-07-14 00:00:00'),(85,98,2,'JustoMaecenasRhoncus.ppt',5198,'2016-04-05 00:00:00'),(86,15,1,'Accumsan.mp3',157,'2001-07-02 00:00:00'),(87,68,3,'SapienUrnaPretium.ppt',7558,'1984-04-26 00:00:00'),(88,46,2,'BibendumImperdiet.png',5637,'2011-05-07 00:00:00'),(89,35,1,'Dui.avi',4413,'1994-06-22 00:00:00'),(90,61,4,'Arcu.pdf',7601,'2000-09-22 00:00:00'),(91,60,1,'ElitProin.doc',8568,'1999-11-03 00:00:00'),(92,6,4,'MolestieSedJusto.mp3',6746,'2008-04-13 00:00:00'),(93,38,4,'NecSem.xls',1362,'2013-03-18 00:00:00'),(94,62,2,'SapienSapien.doc',6116,'2019-02-12 00:00:00'),(95,58,4,'Luctus.tiff',1915,'1983-07-27 00:00:00'),(96,36,4,'Sociis.xls',2385,'1992-11-30 00:00:00'),(97,53,1,'SedAccumsanFelis.mp3',2476,'1984-03-23 00:00:00'),(98,43,4,'Hac.doc',3679,'1986-03-24 00:00:00'),(99,15,2,'PraesentBlanditNam.png',3976,'1984-08-09 00:00:00'),(100,80,4,'IdMaurisVulputate.xls',6716,'2012-12-26 00:00:00');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (2,'audio'),(4,'document'),(1,'image'),(3,'video');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint unsigned NOT NULL,
  `to_user_id` bigint unsigned NOT NULL,
  `text` text NOT NULL,
  `is_delivered` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строк',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `messages_from_user_id_idx` (`from_user_id`),
  KEY `messages_to_user_id_idx` (`to_user_id`),
  CONSTRAINT `fk_messages_from_user_id` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_messages_to_user_id` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,80,51,'proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis',1,'2021-04-24 00:00:00','2020-12-11 00:00:00'),(2,32,99,'eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim',1,'2021-05-05 00:00:00','2020-08-01 00:00:00'),(3,96,19,'nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget',0,'2021-05-10 00:00:00','2021-06-09 00:00:00'),(4,22,65,'convallis duis consequat dui nec nisi volutpat eleifend donec ut',0,'2020-11-02 00:00:00','2021-04-21 00:00:00'),(5,95,34,'duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate',0,'2020-12-31 00:00:00','2020-08-12 00:00:00'),(6,58,38,'tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris',0,'2021-01-29 00:00:00','2021-01-25 00:00:00'),(7,65,91,'luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor',1,'2021-05-25 00:00:00','2021-03-15 00:00:00'),(8,27,96,'lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu',1,'2021-05-13 00:00:00','2020-12-15 00:00:00'),(9,16,30,'viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non',0,'2021-02-18 00:00:00','2020-09-13 00:00:00'),(10,57,80,'duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor',0,'2021-01-04 00:00:00','2021-02-28 00:00:00'),(11,8,21,'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus',1,'2020-10-29 00:00:00','2020-10-15 00:00:00'),(12,42,12,'ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum',1,'2020-12-05 00:00:00','2021-01-07 00:00:00'),(13,14,33,'dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor',1,'2020-08-24 00:00:00','2020-12-29 00:00:00'),(14,35,89,'vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer',1,'2021-02-26 00:00:00','2020-09-29 00:00:00'),(15,26,44,'blandit lacinia erat vestibulum sed magna at nunc commodo placerat',1,'2020-10-27 00:00:00','2021-07-02 00:00:00'),(16,63,82,'volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac',0,'2021-01-11 00:00:00','2021-03-26 00:00:00'),(17,6,94,'faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi',0,'2020-10-09 00:00:00','2021-01-18 00:00:00'),(18,26,40,'a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices',1,'2021-07-07 00:00:00','2021-06-21 00:00:00'),(19,23,97,'a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum',0,'2020-09-09 00:00:00','2021-05-06 00:00:00'),(20,32,70,'aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat',1,'2020-11-20 00:00:00','2021-02-18 00:00:00'),(21,4,63,'sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum',1,'2021-06-02 00:00:00','2020-12-14 00:00:00'),(22,78,55,'rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend',1,'2021-03-29 00:00:00','2021-06-05 00:00:00'),(23,75,75,'magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis',0,'2020-09-23 00:00:00','2020-08-29 00:00:00'),(24,57,4,'purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in',0,'2020-08-29 00:00:00','2021-04-26 00:00:00'),(25,28,98,'ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam',1,'2021-02-22 00:00:00','2020-08-05 00:00:00'),(26,91,44,'et tempus semper est quam pharetra magna ac consequat metus',1,'2021-06-29 00:00:00','2021-01-12 00:00:00'),(27,72,36,'ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet',1,'2021-05-03 00:00:00','2021-01-19 00:00:00'),(28,82,66,'in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus',0,'2021-06-26 00:00:00','2021-02-08 00:00:00'),(29,41,66,'vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue',1,'2021-06-03 00:00:00','2021-03-01 00:00:00'),(30,63,78,'sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer',0,'2020-07-30 00:00:00','2020-07-29 00:00:00'),(31,58,98,'praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in',0,'2020-07-14 00:00:00','2021-06-29 00:00:00'),(32,13,8,'lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula',1,'2021-02-02 00:00:00','2020-11-18 00:00:00'),(33,26,87,'non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl',1,'2020-10-29 00:00:00','2020-10-21 00:00:00'),(34,77,39,'magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce',1,'2021-04-23 00:00:00','2021-01-20 00:00:00'),(35,81,42,'eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed',1,'2021-07-02 00:00:00','2020-12-29 00:00:00'),(36,22,29,'potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur',0,'2021-02-22 00:00:00','2021-06-28 00:00:00'),(37,87,5,'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque',1,'2021-04-29 00:00:00','2020-08-07 00:00:00'),(38,10,73,'et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse',0,'2020-11-13 00:00:00','2020-07-21 00:00:00'),(39,36,86,'magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus',0,'2021-02-23 00:00:00','2021-04-13 00:00:00'),(40,25,58,'non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus',0,'2021-04-19 00:00:00','2021-06-04 00:00:00'),(41,19,1,'ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi',0,'2020-09-20 00:00:00','2020-07-14 00:00:00'),(42,61,2,'congue eget semper rutrum nulla nunc purus phasellus in felis donec',0,'2020-09-08 00:00:00','2021-02-04 00:00:00'),(43,90,68,'risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam',1,'2021-07-01 00:00:00','2021-05-14 00:00:00'),(44,84,29,'nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula',1,'2021-02-27 00:00:00','2021-02-17 00:00:00'),(45,61,74,'consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum',0,'2021-05-21 00:00:00','2020-07-18 00:00:00'),(46,98,46,'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue',0,'2020-11-01 00:00:00','2020-12-18 00:00:00'),(47,55,69,'sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas',0,'2021-04-17 00:00:00','2021-06-04 00:00:00'),(48,28,42,'montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque',1,'2021-06-28 00:00:00','2021-03-07 00:00:00'),(49,84,15,'aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam',1,'2021-06-02 00:00:00','2021-04-02 00:00:00'),(50,15,83,'sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non',0,'2020-09-16 00:00:00','2020-11-19 00:00:00'),(51,72,75,'nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non',0,'2021-03-16 00:00:00','2021-01-07 00:00:00'),(52,55,49,'nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel',0,'2020-07-24 00:00:00','2021-05-29 00:00:00'),(53,73,51,'felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec',0,'2021-04-20 00:00:00','2020-08-15 00:00:00'),(54,82,93,'sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices',1,'2021-07-09 00:00:00','2020-11-01 00:00:00'),(55,28,44,'suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque',1,'2020-10-25 00:00:00','2021-06-08 00:00:00'),(56,37,37,'hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc',1,'2020-12-25 00:00:00','2021-02-21 00:00:00'),(57,97,39,'ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus',0,'2021-04-23 00:00:00','2021-06-11 00:00:00'),(58,51,19,'ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam',1,'2020-08-20 00:00:00','2020-12-26 00:00:00'),(59,27,40,'eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus',0,'2020-08-26 00:00:00','2021-03-09 00:00:00'),(60,96,55,'nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit',1,'2021-02-01 00:00:00','2020-10-02 00:00:00'),(61,71,8,'elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper',0,'2020-09-01 00:00:00','2021-03-16 00:00:00'),(62,83,2,'rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean',0,'2020-07-27 00:00:00','2021-03-19 00:00:00'),(63,28,31,'quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante',1,'2021-06-09 00:00:00','2021-01-06 00:00:00'),(64,4,36,'curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis',0,'2021-04-22 00:00:00','2020-11-21 00:00:00'),(65,36,69,'augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea',1,'2021-03-16 00:00:00','2020-09-19 00:00:00'),(66,33,56,'sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum',0,'2021-07-02 00:00:00','2021-03-12 00:00:00'),(67,29,75,'gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum',0,'2020-08-11 00:00:00','2020-12-07 00:00:00'),(68,84,92,'sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere',0,'2021-01-20 00:00:00','2020-10-23 00:00:00'),(69,69,78,'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices',0,'2020-07-23 00:00:00','2020-08-06 00:00:00'),(70,50,55,'amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus',1,'2021-03-30 00:00:00','2021-01-16 00:00:00'),(71,61,40,'vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue',1,'2020-08-15 00:00:00','2021-03-13 00:00:00'),(72,39,81,'porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet',1,'2021-05-12 00:00:00','2021-05-23 00:00:00'),(73,87,50,'est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci',0,'2021-01-02 00:00:00','2020-12-14 00:00:00'),(74,64,72,'vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices',1,'2021-03-16 00:00:00','2020-11-02 00:00:00'),(75,51,91,'consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices',1,'2021-04-18 00:00:00','2021-02-14 00:00:00'),(76,61,96,'aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci',0,'2021-01-19 00:00:00','2021-05-11 00:00:00'),(77,72,68,'tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy',1,'2020-09-24 00:00:00','2021-03-19 00:00:00'),(78,76,64,'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate',1,'2021-06-27 00:00:00','2020-09-23 00:00:00'),(79,63,29,'pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio',0,'2020-07-28 00:00:00','2021-04-29 00:00:00'),(80,27,7,'blandit mi in porttitor pede justo eu massa donec dapibus duis',1,'2020-12-22 00:00:00','2020-10-06 00:00:00'),(81,21,31,'volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas',1,'2021-01-25 00:00:00','2020-10-18 00:00:00'),(82,61,77,'quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent',0,'2021-01-27 00:00:00','2020-10-22 00:00:00'),(83,17,83,'sed magna at nunc commodo placerat praesent blandit nam nulla',1,'2020-09-16 00:00:00','2021-05-07 00:00:00'),(84,48,90,'dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et',0,'2020-08-19 00:00:00','2020-11-27 00:00:00'),(85,89,41,'vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non',0,'2021-01-01 00:00:00','2021-04-13 00:00:00'),(86,57,39,'at nulla suspendisse potenti cras in purus eu magna vulputate',0,'2020-10-27 00:00:00','2020-10-03 00:00:00'),(87,91,98,'pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum',1,'2020-10-15 00:00:00','2021-02-06 00:00:00'),(88,94,34,'sapien non mi integer ac neque duis bibendum morbi non',1,'2021-06-28 00:00:00','2020-11-21 00:00:00'),(89,19,75,'sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in',1,'2021-02-05 00:00:00','2020-12-02 00:00:00'),(90,31,89,'eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est',0,'2020-11-12 00:00:00','2021-05-14 00:00:00'),(91,38,41,'posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar',0,'2020-10-07 00:00:00','2021-04-26 00:00:00'),(92,79,35,'vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum',1,'2021-05-06 00:00:00','2021-02-04 00:00:00'),(93,25,2,'felis donec semper sapien a libero nam dui proin leo',0,'2021-03-25 00:00:00','2020-12-11 00:00:00'),(94,45,98,'proin eu mi nulla ac enim in tempor turpis nec',1,'2021-03-13 00:00:00','2020-09-06 00:00:00'),(95,15,29,'mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus',0,'2021-02-21 00:00:00','2020-08-30 00:00:00'),(96,19,12,'ipsum primis in faucibus orci luctus et ultrices posuere cubilia',1,'2021-04-29 00:00:00','2021-01-11 00:00:00'),(97,63,46,'id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi',1,'2021-04-29 00:00:00','2021-01-01 00:00:00'),(98,57,6,'tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel',0,'2020-07-20 00:00:00','2021-01-10 00:00:00'),(99,46,88,'id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio',0,'2020-11-05 00:00:00','2020-12-18 00:00:00'),(100,52,60,'nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat',0,'2021-04-24 00:00:00','2021-06-13 00:00:00');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_like`
--

DROP TABLE IF EXISTS `post_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_like` (
  `post_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `is_like` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`post_id`,`user_id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `post_like_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `post_like_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_like`
--

LOCK TABLES `post_like` WRITE;
/*!40000 ALTER TABLE `post_like` DISABLE KEYS */;
INSERT INTO `post_like` VALUES (1,36,1),(1,97,1),(3,50,1),(5,71,1),(5,85,1),(6,98,1),(7,8,1),(7,30,1),(7,35,1),(7,75,1),(8,34,1),(11,73,1),(12,31,1),(12,67,1),(13,1,1),(13,10,1),(13,15,1),(14,4,1),(14,86,1),(15,8,1),(15,43,1),(16,26,1),(17,12,1),(17,14,1),(17,95,1),(18,67,1),(19,39,1),(20,24,1),(20,50,1),(21,29,1),(24,5,1),(24,23,1),(24,83,1),(26,16,1),(26,63,1),(27,58,1),(28,41,1),(28,59,1),(28,63,1),(29,99,1),(30,20,1),(31,42,1),(31,47,1),(31,91,1),(32,97,1),(33,39,1),(34,96,1),(35,15,1),(35,46,1),(36,20,1),(37,79,1),(37,92,1),(38,96,1),(40,67,1),(41,86,1),(43,14,1),(44,45,1),(48,88,1),(48,97,1),(49,92,1),(50,41,1),(51,22,1),(52,35,1),(52,58,1),(53,13,1),(53,99,1),(53,100,1),(54,65,1),(56,32,1),(57,78,1),(62,3,1),(62,46,1),(64,33,1),(65,52,1),(65,90,1),(66,7,1),(67,24,1),(68,47,1),(70,36,1),(70,40,1),(70,86,1),(73,20,1),(74,15,1),(76,16,1),(76,39,1),(82,27,1),(83,74,1),(83,91,1),(84,58,1),(85,6,1),(85,40,1),(85,61,1),(88,2,1),(90,88,1),(94,94,1),(96,17,1),(97,8,1),(98,12,1),(99,39,1),(100,58,1);
/*!40000 ALTER TABLE `post_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `post_text` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,85,'in faucibus orci luctus','2004-10-13 00:00:00','1989-03-08 00:00:00'),(2,56,'erat curabitur gravida nisi at nibh in hac','2011-04-09 00:00:00','2011-02-08 00:00:00'),(3,86,'ultrices phasellus id sapien in','1993-08-31 00:00:00','2012-11-17 00:00:00'),(4,55,'at nibh in hac habitasse platea dictumst','1986-12-22 00:00:00','1986-08-31 00:00:00'),(5,91,'quis turpis eget','1998-02-27 00:00:00','2010-07-06 00:00:00'),(6,81,'porttitor pede justo eu massa donec','2016-11-04 00:00:00','1982-10-10 00:00:00'),(7,99,'fusce congue diam id','2020-11-02 00:00:00','1991-08-29 00:00:00'),(8,58,'erat fermentum justo nec condimentum neque sapien placerat','1998-10-05 00:00:00','2012-10-17 00:00:00'),(9,14,'gravida sem praesent id massa id nisl venenatis lacinia','1987-10-29 00:00:00','2006-03-28 00:00:00'),(10,24,'nam ultrices libero non mattis pulvinar','1981-01-23 00:00:00','2021-05-17 00:00:00'),(11,40,'in tempus sit amet sem fusce consequat nulla nisl','1991-07-28 00:00:00','2015-12-02 00:00:00'),(12,68,'eros vestibulum ac est lacinia nisi venenatis tristique fusce congue','1980-12-25 00:00:00','2007-02-09 00:00:00'),(13,29,'purus aliquet at feugiat non','1993-09-03 00:00:00','1988-07-02 00:00:00'),(14,78,'facilisi cras non','1982-05-08 00:00:00','1985-09-22 00:00:00'),(15,27,'sit amet eleifend','2005-03-18 00:00:00','2012-11-08 00:00:00'),(16,35,'amet lobortis sapien sapien','2007-05-09 00:00:00','1996-01-27 00:00:00'),(17,76,'aliquet ultrices erat tortor','2014-11-13 00:00:00','1996-01-25 00:00:00'),(18,18,'blandit ultrices enim lorem ipsum dolor sit amet consectetuer','1981-05-25 00:00:00','1988-08-17 00:00:00'),(19,33,'cras mi pede malesuada','1991-01-16 00:00:00','1989-05-07 00:00:00'),(20,80,'vel dapibus at diam nam tristique tortor eu pede','1989-06-10 00:00:00','1990-11-26 00:00:00'),(21,83,'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui','1980-11-20 00:00:00','2016-01-06 00:00:00'),(22,74,'purus phasellus in felis donec','2012-10-05 00:00:00','1982-10-28 00:00:00'),(23,42,'condimentum id luctus','1989-10-18 00:00:00','1992-05-13 00:00:00'),(24,47,'id sapien in sapien iaculis congue vivamus metus arcu adipiscing','2012-10-24 00:00:00','1983-05-14 00:00:00'),(25,40,'convallis tortor risus','2017-01-21 00:00:00','2017-01-28 00:00:00'),(26,71,'placerat praesent blandit nam nulla integer pede justo lacinia eget','1989-06-24 00:00:00','1991-08-06 00:00:00'),(27,3,'curae donec pharetra magna vestibulum','1997-12-08 00:00:00','2013-04-01 00:00:00'),(28,30,'enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin','2020-07-06 00:00:00','2020-08-15 00:00:00'),(29,85,'in imperdiet et commodo vulputate justo in','2009-09-06 00:00:00','1998-06-17 00:00:00'),(30,30,'a odio in','2003-04-17 00:00:00','2015-03-28 00:00:00'),(31,92,'risus dapibus augue vel accumsan tellus nisi eu orci mauris','1980-11-16 00:00:00','1985-09-15 00:00:00'),(32,28,'odio in hac habitasse platea','1984-07-18 00:00:00','1987-02-13 00:00:00'),(33,29,'in faucibus orci luctus','1995-06-07 00:00:00','2011-03-23 00:00:00'),(34,11,'id mauris vulputate','2006-08-18 00:00:00','1987-03-11 00:00:00'),(35,82,'nulla ut erat id mauris vulputate elementum','2003-04-12 00:00:00','1982-04-07 00:00:00'),(36,100,'nisi venenatis tristique fusce','1989-07-23 00:00:00','2002-04-01 00:00:00'),(37,34,'blandit lacinia erat','1994-06-21 00:00:00','2017-11-01 00:00:00'),(38,23,'accumsan tortor quis turpis sed','1998-02-10 00:00:00','2003-08-16 00:00:00'),(39,86,'dapibus nulla suscipit','1983-06-02 00:00:00','2005-07-14 00:00:00'),(40,38,'non mauris morbi non lectus aliquam sit amet','2017-10-05 00:00:00','2014-03-11 00:00:00'),(41,55,'nascetur ridiculus mus etiam vel augue vestibulum rutrum','2011-10-12 00:00:00','2002-07-14 00:00:00'),(42,14,'sociis natoque penatibus et magnis dis','1999-03-10 00:00:00','2002-06-02 00:00:00'),(43,84,'justo morbi ut','2011-01-26 00:00:00','2017-04-21 00:00:00'),(44,15,'sed augue aliquam erat volutpat in congue','2013-05-04 00:00:00','1989-12-07 00:00:00'),(45,96,'etiam vel augue vestibulum rutrum rutrum neque aenean auctor','2002-11-06 00:00:00','1980-08-12 00:00:00'),(46,68,'leo rhoncus sed','2020-09-05 00:00:00','1998-12-21 00:00:00'),(47,42,'rutrum rutrum neque aenean auctor gravida','2012-10-29 00:00:00','1984-03-06 00:00:00'),(48,28,'sociis natoque penatibus et magnis dis','2019-05-11 00:00:00','1994-06-30 00:00:00'),(49,34,'in faucibus orci luctus et ultrices posuere','2011-06-03 00:00:00','1996-07-11 00:00:00'),(50,26,'ante vel ipsum praesent','2011-01-15 00:00:00','2008-04-20 00:00:00'),(51,68,'nec dui luctus rutrum nulla','2011-12-02 00:00:00','2017-07-08 00:00:00'),(52,63,'in lectus pellentesque','1995-11-18 00:00:00','2021-05-04 00:00:00'),(53,70,'lobortis ligula sit amet','2013-06-28 00:00:00','2003-06-24 00:00:00'),(54,68,'semper rutrum nulla nunc purus phasellus in felis donec semper','1992-02-28 00:00:00','2004-03-02 00:00:00'),(55,95,'praesent lectus vestibulum quam sapien varius','2001-02-06 00:00:00','1999-06-01 00:00:00'),(56,68,'luctus et ultrices','2015-11-11 00:00:00','1988-08-29 00:00:00'),(57,99,'pede posuere nonummy integer non','2019-06-27 00:00:00','1989-06-22 00:00:00'),(58,47,'in sapien iaculis','1999-06-12 00:00:00','1998-11-17 00:00:00'),(59,48,'ut erat id mauris vulputate elementum nullam','1986-03-02 00:00:00','1996-07-15 00:00:00'),(60,20,'dapibus augue vel accumsan tellus nisi eu orci mauris lacinia','1983-03-26 00:00:00','2004-04-27 00:00:00'),(61,72,'sapien arcu sed augue aliquam erat volutpat in congue etiam','2020-02-17 00:00:00','2010-09-14 00:00:00'),(62,59,'molestie lorem quisque','1993-10-04 00:00:00','2021-04-21 00:00:00'),(63,92,'consectetuer adipiscing elit','1994-01-21 00:00:00','1993-02-17 00:00:00'),(64,78,'in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae','2003-03-11 00:00:00','1984-07-20 00:00:00'),(65,31,'commodo placerat praesent blandit','1989-06-30 00:00:00','2004-07-16 00:00:00'),(66,99,'scelerisque mauris sit amet eros suspendisse accumsan tortor quis','1988-05-28 00:00:00','2015-03-16 00:00:00'),(67,24,'lacus morbi quis tortor id nulla','2003-11-15 00:00:00','2002-12-08 00:00:00'),(68,80,'scelerisque mauris sit amet eros suspendisse','1983-10-13 00:00:00','2009-06-29 00:00:00'),(69,80,'nibh in quis justo maecenas rhoncus aliquam','1997-04-15 00:00:00','2019-11-20 00:00:00'),(70,93,'sem fusce consequat nulla nisl nunc nisl','1981-03-02 00:00:00','2012-01-24 00:00:00'),(71,95,'pretium iaculis diam','1998-10-29 00:00:00','2015-08-13 00:00:00'),(72,84,'gravida nisi at nibh in hac habitasse platea dictumst','2009-08-21 00:00:00','2005-10-21 00:00:00'),(73,76,'vitae nisi nam ultrices libero non mattis pulvinar nulla','1991-04-01 00:00:00','2006-02-06 00:00:00'),(74,13,'vestibulum eget vulputate ut ultrices vel','2004-02-21 00:00:00','1984-04-21 00:00:00'),(75,20,'vestibulum proin eu mi nulla ac enim in','1983-01-10 00:00:00','1980-11-09 00:00:00'),(76,50,'phasellus sit amet erat nulla','2011-03-10 00:00:00','1988-06-17 00:00:00'),(77,14,'dictumst morbi vestibulum velit id','2018-10-02 00:00:00','2005-11-14 00:00:00'),(78,39,'feugiat non pretium quis lectus','1996-01-09 00:00:00','2010-06-02 00:00:00'),(79,22,'fusce lacus purus aliquet at feugiat non pretium','1980-08-02 00:00:00','2002-08-06 00:00:00'),(80,27,'pretium nisl ut volutpat sapien arcu sed augue aliquam erat','2012-07-16 00:00:00','2011-03-03 00:00:00'),(81,56,'etiam vel augue vestibulum rutrum','2008-01-23 00:00:00','2009-01-14 00:00:00'),(82,88,'dolor morbi vel lectus in quam','1997-03-02 00:00:00','1981-09-04 00:00:00'),(83,47,'dolor sit amet consectetuer adipiscing elit proin','1997-12-22 00:00:00','2005-06-06 00:00:00'),(84,9,'id mauris vulputate elementum nullam varius nulla facilisi cras non','2003-04-01 00:00:00','2002-05-18 00:00:00'),(85,83,'lacus purus aliquet at feugiat non pretium quis','2017-11-25 00:00:00','1994-04-08 00:00:00'),(86,78,'vestibulum sed magna at nunc commodo placerat','1994-02-26 00:00:00','2017-10-18 00:00:00'),(87,37,'tempus semper est quam pharetra magna ac','1998-12-01 00:00:00','1989-04-30 00:00:00'),(88,97,'integer tincidunt ante vel ipsum','2004-06-27 00:00:00','2003-10-06 00:00:00'),(89,46,'nulla quisque arcu libero','2008-09-21 00:00:00','2007-02-01 00:00:00'),(90,18,'ac diam cras pellentesque volutpat dui maecenas','1990-11-16 00:00:00','1987-04-25 00:00:00'),(91,85,'imperdiet et commodo vulputate justo in blandit ultrices','1987-01-11 00:00:00','2014-10-16 00:00:00'),(92,26,'justo in hac habitasse platea dictumst','2015-05-20 00:00:00','1988-01-03 00:00:00'),(93,51,'donec odio justo','1985-09-20 00:00:00','2015-11-06 00:00:00'),(94,91,'ligula pellentesque ultrices phasellus id sapien','2017-09-05 00:00:00','1997-01-05 00:00:00'),(95,73,'nec dui luctus rutrum nulla tellus','2020-02-28 00:00:00','1989-12-05 00:00:00'),(96,74,'vel accumsan tellus nisi eu orci mauris lacinia','1999-12-09 00:00:00','2003-02-06 00:00:00'),(97,50,'est congue elementum in hac habitasse platea dictumst','2013-04-07 00:00:00','2004-06-18 00:00:00'),(98,60,'justo in hac habitasse platea','1996-08-31 00:00:00','2007-12-27 00:00:00'),(99,40,'quam pede lobortis ligula sit','1999-05-28 00:00:00','2009-09-15 00:00:00'),(100,96,'sed ante vivamus tortor duis mattis egestas metus aenean','2007-07-24 00:00:00','2013-12-23 00:00:00');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` bigint unsigned NOT NULL,
  `gender` varchar(30) NOT NULL,
  `birthday` date NOT NULL,
  `photo_id` int unsigned DEFAULT NULL,
  `country` varchar(130) DEFAULT NULL,
  `city` varchar(130) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'Genderqueer','2015-03-07',1,'France','GuГ©ret'),(2,'Genderfluid','2011-10-14',2,'Japan','Hikari'),(3,'Polygender','1983-11-22',3,'Malaysia','Pulau Pinang'),(4,'Male','1992-03-17',4,'Serbia','Sremski Karlovci'),(5,'Agender','2014-06-08',5,'Brazil','Boquira'),(6,'Agender','1986-07-15',6,'Nigeria','Malumfashi'),(7,'Genderfluid','1997-01-13',7,'Russia','Idrinskoye'),(8,'Genderqueer','1991-05-10',8,'Greece','MГЅrina'),(9,'Male','2001-07-26',9,'Sweden','Svenljunga'),(10,'Non-binary','2016-10-19',10,'Russia','Sim'),(11,'Polygender','1991-10-27',11,'Thailand','Khong'),(12,'Polygender','2020-07-06',12,'Russia','Kapotnya'),(13,'Female','1980-09-25',13,'Chile','TraiguГ©n'),(14,'Polygender','2011-07-10',14,'Russia','Kurgan'),(15,'Polygender','2003-02-06',15,'Netherlands','Rotterdam postbusnummers'),(16,'Bigender','1996-10-12',16,'Albania','DelvinГ«'),(17,'Male','2011-05-24',17,'Philippines','Tagkawayan Sabang'),(18,'Genderqueer','2002-12-05',18,'Greece','ГЃvato'),(19,'Male','2013-02-07',19,'Indonesia','Manggekompo'),(20,'Polygender','1990-08-11',20,'China','Xinfang'),(21,'Genderqueer','1993-01-27',21,'Czech Republic','RoЕѕДЏalovice'),(22,'Bigender','1996-08-09',22,'Netherlands','Voorburg'),(23,'Agender','2007-07-14',23,'Portugal','Moscavide'),(24,'Genderfluid','2001-03-20',24,'China','Hubei'),(25,'Agender','2020-11-20',25,'Honduras','Tras Cerros'),(26,'Bigender','2013-01-09',26,'Indonesia','Kebonagung'),(27,'Genderqueer','1992-12-20',27,'Japan','Kanda'),(28,'Female','1990-03-05',28,'Denmark','Frederiksberg'),(29,'Female','2014-01-29',29,'Argentina','Cintra'),(30,'Non-binary','2015-02-05',30,'Japan','Tamamura'),(31,'Polygender','1983-03-04',31,'Indonesia','Pacar'),(32,'Polygender','2019-05-15',32,'United States','Pasadena'),(33,'Bigender','1981-05-13',33,'Indonesia','Kubang'),(34,'Polygender','1983-07-18',34,'France','OrlГ©ans'),(35,'Genderfluid','1988-05-24',35,'Cuba','CamajuanГ­'),(36,'Genderqueer','1997-07-11',36,'Philippines','Buan'),(37,'Non-binary','2010-04-06',37,'China','Naji'),(38,'Polygender','2015-09-05',38,'Thailand','Phra Pradaeng'),(39,'Agender','1997-04-28',39,'China','Yanggu'),(40,'Bigender','2002-12-03',40,'Czech Republic','Broumov'),(41,'Female','2019-07-31',41,'France','Brignoles'),(42,'Agender','2004-11-26',42,'Indonesia','Tuanalepe'),(43,'Genderfluid','1989-01-14',43,'Bahamas','West End'),(44,'Non-binary','1996-02-02',44,'Tunisia','Al вЂ?ДЂliyah'),(45,'Agender','1995-02-10',45,'Indonesia','Tangerang'),(46,'Genderfluid','1989-09-27',46,'Brazil','CarapicuГ­ba'),(47,'Bigender','2005-10-21',47,'Philippines','Banaybanay'),(48,'Genderfluid','2004-01-03',48,'Senegal','Khombole'),(49,'Genderfluid','1994-01-14',49,'Eritrea','Barentu'),(50,'Non-binary','2003-10-14',50,'Madagascar','Antanifotsy'),(51,'Genderfluid','1984-08-11',51,'Russia','Moscow'),(52,'Female','2000-10-14',52,'China','Lingbei'),(53,'Agender','2011-03-17',53,'Indonesia','Tenjolaya'),(54,'Non-binary','1983-07-06',54,'Philippines','Buenavista'),(55,'Male','2002-06-18',55,'Sweden','LinkГ¶ping'),(56,'Agender','1986-09-05',56,'Portugal','FigueirГі dos Vinhos'),(57,'Polygender','2000-09-27',57,'Indonesia','Mandeman Daya'),(58,'Male','1999-12-19',58,'China','Jiantian'),(59,'Genderqueer','1996-07-28',59,'Botswana','Mosopa'),(60,'Genderfluid','1986-01-12',60,'Argentina','Victoria'),(61,'Female','2000-02-28',61,'China','Guanshan'),(62,'Genderfluid','2014-03-20',62,'Indonesia','Kampungmasjid'),(63,'Male','2021-05-11',63,'Philippines','Balayang'),(64,'Genderqueer','1997-08-29',64,'Croatia','Belica'),(65,'Bigender','1998-10-20',65,'Indonesia','Raejeru'),(66,'Genderqueer','1992-08-08',66,'Azerbaijan','Qutqashen'),(67,'Polygender','1999-06-25',67,'Sweden','Moholm'),(68,'Agender','2015-09-07',68,'Comoros','Sima'),(69,'Male','1985-10-16',69,'Poland','Okocim'),(70,'Polygender','1994-11-06',70,'Uzbekistan','Kosonsoy'),(71,'Bigender','1987-05-18',71,'Russia','Dalakovo'),(72,'Agender','1989-01-10',72,'Indonesia','Raksajaya'),(73,'Male','2008-12-31',73,'Brazil','Rio Preto da Eva'),(74,'Genderfluid','1981-06-26',74,'France','Paris 03'),(75,'Non-binary','2010-06-15',75,'Indonesia','Ambian'),(76,'Polygender','2013-05-14',76,'Philippines','San Quintin'),(77,'Female','2007-04-29',77,'China','Huixing'),(78,'Bigender','1987-01-15',78,'China','Chenhu'),(79,'Polygender','2006-11-20',79,'Thailand','Mueang Nonthaburi'),(80,'Male','1984-07-16',80,'Serbia','Prislonica'),(81,'Genderqueer','2012-02-07',81,'Vietnam','BuГґn TrбєҐp'),(82,'Male','2005-11-19',82,'Canada','Princeton'),(83,'Male','2019-06-01',83,'Argentina','San Antonio'),(84,'Female','1999-04-22',84,'Guatemala','San Juan AtitГЎn'),(85,'Genderfluid','2007-07-29',85,'Czech Republic','ZajeДЌГ­'),(86,'Genderqueer','2013-05-22',86,'Philippines','Montevista'),(87,'Non-binary','2007-02-20',87,'Poland','Legionowo'),(88,'Polygender','2020-10-05',88,'Brazil','Osvaldo Cruz'),(89,'Genderfluid','1982-04-19',89,'Japan','Kawasaki'),(90,'Non-binary','1998-05-20',90,'China','Qingshuitang'),(91,'Bigender','2016-06-18',91,'Peru','Tocota'),(92,'Male','1999-06-23',92,'Kazakhstan','Baykonyr'),(93,'Male','1990-07-06',93,'China','Shuangxi'),(94,'Genderfluid','2015-01-19',94,'China','Shangfang'),(95,'Genderfluid','1986-12-05',95,'China','Wangliao'),(96,'Male','1988-09-25',96,'Estonia','Saue'),(97,'Genderfluid','1989-05-30',97,'Sri Lanka','Horana South'),(98,'Genderqueer','1993-10-24',98,'Republic of the Congo','Kayes'),(99,'Non-binary','1999-01-25',99,'Poland','StД…porkГіw'),(100,'Male','2017-04-18',100,'China','Yangcun');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(145) NOT NULL,
  `last_name` varchar(145) NOT NULL,
  `email` varchar(145) NOT NULL,
  `phone` char(11) NOT NULL,
  `password_hash` char(65) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `phone` (`phone`),
  KEY `email_2` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Maria','Skrines','mskrines0@flavors.me','91795404366','oOqpTab16zUV','2010-07-04 00:00:00'),(2,'Maxie','Spennock','mspennock1@myspace.com','7114500112','ICvm1ef5ZfYa','2014-05-24 00:00:00'),(3,'Herman','Pirot','hpirot2@pagesperso-orange.fr','2381911202','fSuwyHU','2002-11-10 00:00:00'),(4,'Mame','Beinke','mbeinke3@forbes.com','1819418354','PKc7Rdo','2015-12-07 00:00:00'),(5,'Vonni','Ashforth','vashforth4@smh.com.au','5899628686','9vuCqMU','2002-01-12 00:00:00'),(6,'Earvin','Chesworth','echesworth5@gravatar.com','3437006915','dGm8hTiyw','2008-03-14 00:00:00'),(7,'Morse','Deaville','mdeaville6@google.es','2477352324','MUpLj1Bmt','2009-02-14 00:00:00'),(8,'Zena','Fevers','zfevers7@dedecms.com','6991128315','YierABA8B4','2002-03-09 00:00:00'),(9,'Evangelin','Bruggeman','ebruggeman8@msn.com','7623213941','fTVpZqPqiTQE','2007-06-11 00:00:00'),(10,'Kelsey','McCarrick','kmccarrick9@ted.com','2821621453','wuCcnMpXPg','2009-10-05 00:00:00'),(11,'Guenna','Quinet','gquineta@rakuten.co.jp','7092707388','idwhzj','2004-12-05 00:00:00'),(12,'Benjie','McQuirter','bmcquirterb@cloudflare.com','8269540365','EkwjYSiee','2015-11-09 00:00:00'),(13,'Nadean','Aizikovich','naizikovichc@soup.io','8923107604','LJJIwaNmg','2006-06-07 00:00:00'),(14,'Jo-ann','Braunter','jbraunterd@biblegateway.com','3392176732','Q9vBJFYp4t','2010-05-16 00:00:00'),(15,'Raimundo','Landrick','rlandricke@cdc.gov','2639492444','1qqlHFIfkPz','2017-02-09 00:00:00'),(16,'Devina','Jahnig','djahnigf@amazon.de','5196024627','kbdjSQoB','2003-11-19 00:00:00'),(17,'Issy','Housiaux','ihousiauxg@hc360.com','2437801853','EfOuL4P','2006-06-16 00:00:00'),(18,'Melody','Plumm','mplummh@gnu.org','6173715043','LhqT03N8xTh','2014-09-03 00:00:00'),(19,'Audra','Roggers','aroggersi@fema.gov','9199000900','MzkZ17gtgWA2','2012-01-28 00:00:00'),(20,'Michaela','Loan','mloanj@moonfruit.com','9237981994','asYNKnu0HF','2014-05-25 00:00:00'),(21,'Ramonda','Law','rlawk@webs.com','2541664299','a90iM2D','2014-11-08 00:00:00'),(22,'Leshia','Hedney','lhedneyl@rambler.ru','1833844036','RZCak60','2002-02-12 00:00:00'),(23,'Gerda','Ivashchenko','givashchenkom@fotki.com','1791108029','n2J21uphuK','2016-12-28 00:00:00'),(24,'Gertrude','Barme','gbarmen@biblegateway.com','6023358898','3D9auZ','2002-09-10 00:00:00'),(25,'Vic','Gout','vgouto@ycombinator.com','3746078385','Z0apQtEis','2007-05-06 00:00:00'),(26,'Charin','Lehrmann','clehrmannp@nymag.com','1892431824','Sc5MNYDsy','2008-03-02 00:00:00'),(27,'Brodie','O\'Loinn','boloinnq@bing.com','8609599318','8ctvVsibZ','2014-08-25 00:00:00'),(28,'Farlay','Plessing','fplessingr@apache.org','7923560818','n8MYUHbbIq','2006-08-09 00:00:00'),(29,'Kipp','Amiss','kamisss@baidu.com','4542013609','x5UZA3','2016-03-26 00:00:00'),(30,'Gretna','Cubitt','gcubittt@statcounter.com','2844286629','1ZR9yY','2016-07-07 00:00:00'),(31,'Anissa','Levin','alevinu@cornell.edu','1664027047','3J55Y32vF','2013-07-10 00:00:00'),(32,'Lannie','Hourston','lhourstonv@nifty.com','5548641324','KlB7r1Hk8klW','2006-05-26 00:00:00'),(33,'Shane','English','senglishw@abc.net.au','6228952001','zV4fpS4whT','2020-11-11 00:00:00'),(34,'Dominica','Alp','dalpx@admin.ch','2901915118','LBALnPvxF','2010-04-06 00:00:00'),(35,'Caprice','O\'Siaghail','cosiaghaily@alibaba.com','2344433677','Ez1piMo7Pjy','2013-04-16 00:00:00'),(36,'Bell','Clissell','bclissellz@dailymotion.com','5902274574','Is8a9LmxoN','2002-02-11 00:00:00'),(37,'Alecia','Rivalant','arivalant10@smh.com.au','9224232374','fjqYTrUUROzS','2005-11-25 00:00:00'),(38,'Skye','Listone','slistone11@oakley.com','7574453111','hC3HZX','2011-09-07 00:00:00'),(39,'Berny','Teulier','bteulier12@privacy.gov.au','7679140243','ZSjSgQ','2018-04-08 00:00:00'),(40,'Renae','Jonathon','rjonathon13@hexun.com','5008090255','4Z6YQhvo4i','2003-08-17 00:00:00'),(41,'Devy','Calan','dcalan14@mysql.com','9967779247','WNnfqeDT0sT','2020-08-03 00:00:00'),(42,'Sophie','Gutteridge','sgutteridge15@dyndns.org','7363567252','Zo1Ztlsa','2008-07-19 00:00:00'),(43,'Darrin','Scollick','dscollick16@seesaa.net','3853906009','QmtLvw','2013-03-14 00:00:00'),(44,'Aleta','Gemnett','agemnett17@mac.com','6989247029','bjkNY0RJihQ','2001-02-25 00:00:00'),(45,'Lyndsey','Frood','lfrood18@diigo.com','1466912014','PzDu368Zq6','2004-08-29 00:00:00'),(46,'Tracey','Camili','tcamili19@cbslocal.com','2339519303','HGvr9J3mR','2015-10-09 00:00:00'),(47,'Gustie','Cave','gcave1a@php.net','5216446800','Ym2hbJSwyu85','2013-08-14 00:00:00'),(48,'Savina','Woolerton','swoolerton1b@mayoclinic.com','1088901968','W8vkBkw','2015-09-30 00:00:00'),(49,'Wilie','Kolyagin','wkolyagin1c@shinystat.com','8653018712','hnAH1jPC1iHj','2005-04-05 00:00:00'),(50,'Parker','Kike','pkike1d@about.me','9376604418','Uo9GHu','2018-04-30 00:00:00'),(51,'Bobinette','Daulton','bdaulton1e@boston.com','9626133558','2pU68mjS','2005-04-15 00:00:00'),(52,'Lucretia','Gorling','lgorling1f@army.mil','4078775682','P5S6n9KS','2009-08-24 00:00:00'),(53,'Annice','Pol','apol1g@uol.com.br','5091314972','SNjZ4YH','2003-12-03 00:00:00'),(54,'Latashia','Beavis','lbeavis1h@nifty.com','9813780158','Q5uziJQDJ','2004-09-01 00:00:00'),(55,'Cindie','Janman','cjanman1i@jalbum.net','9126408557','oP0Nvc4pQ8X','2008-09-19 00:00:00'),(56,'Elyse','Beck','ebeck1j@sina.com.cn','3035619728','i6hGVYWN2Hf','2004-05-09 00:00:00'),(57,'Gerard','Netti','gnetti1k@samsung.com','6612620079','38pn1VsTaNT','2009-10-27 00:00:00'),(58,'Staci','Asker','sasker1l@bbc.co.uk','7035994390','kXSxK8pny','2011-09-03 00:00:00'),(59,'Alejandra','Klaffs','aklaffs1m@mail.ru','8715989187','WQBDre2My','2012-07-22 00:00:00'),(60,'Oren','Storres','ostorres1n@google.es','1086119008','nTDr9MBjC','2014-07-29 00:00:00'),(61,'Allister','Panchen','apanchen1o@usda.gov','8161491186','RCx6qpH3eZ','2000-06-23 00:00:00'),(62,'Patricio','Maunton','pmaunton1p@reddit.com','8407254725','PA0w4Lcq61nC','2012-05-28 00:00:00'),(63,'Otho','Dwelley','odwelley1q@businessinsider.com','5613102082','h5b6JeDT','2010-07-19 00:00:00'),(64,'Sibelle','Novacek','snovacek1r@theguardian.com','4883599937','U2vzFSbX58','2011-11-21 00:00:00'),(65,'Heather','McOrkil','hmcorkil1s@networksolutions.com','6481202563','DJmEhp','2015-09-10 00:00:00'),(66,'Mortimer','MacKeague','mmackeague1t@quantcast.com','2451824842','G218tGIl','2012-09-27 00:00:00'),(67,'Cynthy','Reaveley','creaveley1u@google.com.au','2669952940','a76ITy7','2006-08-17 00:00:00'),(68,'Jaymee','Currier','jcurrier1v@reuters.com','9103204733','EhJG5SsLUxj','2016-09-03 00:00:00'),(69,'Ozzie','Yakushkin','oyakushkin1w@jalbum.net','8953581293','1RXXbWj5ybbw','2005-12-16 00:00:00'),(70,'Tann','Bleby','tbleby1x@sina.com.cn','4215997322','BrgStuIhr','2018-05-29 00:00:00'),(71,'Honey','Allingham','hallingham1y@biglobe.ne.jp','8091050900','RESrp5dkG7','2018-09-28 00:00:00'),(72,'Maryjo','Brennenstuhl','mbrennenstuhl1z@blogger.com','6385785585','gjolE3ENAI','2015-09-26 00:00:00'),(73,'Doreen','Allmann','dallmann20@abc.net.au','6019857126','qtrc4fHKV1zB','2016-02-12 00:00:00'),(74,'Eloise','MacFadzan','emacfadzan21@uiuc.edu','4575126672','Z98c6jdW','2015-02-10 00:00:00'),(75,'Kerr','Quilleash','kquilleash22@hibu.com','7628805855','ueXqpyyO2mx','2013-06-02 00:00:00'),(76,'Andrew','O\'Carroll','aocarroll23@java.com','9743513778','LkQqKd','2017-04-14 00:00:00'),(77,'Eldin','Goburn','egoburn24@pagesperso-orange.fr','4093497613','mJBbNMti','2006-04-05 00:00:00'),(78,'Luciano','Bourdis','lbourdis25@mapy.cz','7783224904','JuqUCv8Kszs','2019-12-20 00:00:00'),(79,'Beale','Quiddinton','bquiddinton26@topsy.com','2372182808','48uBdox','2002-01-26 00:00:00'),(80,'Jackelyn','Barnham','jbarnham27@istockphoto.com','4776706701','NIeXI3GcfMqm','2005-07-23 00:00:00'),(81,'Millisent','Penwright','mpenwright28@usa.gov','4205478447','zMz30tR','2002-06-12 00:00:00'),(82,'Salaidh','Knocker','sknocker29@ycombinator.com','5934512203','AMrNxzsJclBA','2001-10-12 00:00:00'),(83,'Olympia','Sonier','osonier2a@pagesperso-orange.fr','6766361062','KxXz8LBly','2012-09-13 00:00:00'),(84,'Geraldine','Antonov','gantonov2b@senate.gov','5672795374','5ws4oK3OV5UW','2015-01-28 00:00:00'),(85,'Maryjane','Margaret','mmargaret2c@deviantart.com','1551001543','zKgx5o9VQ3','2009-03-13 00:00:00'),(86,'Rossy','Walwood','rwalwood2d@bluehost.com','2026492388','zbDwKuM8OAX','2001-06-26 00:00:00'),(87,'Fabiano','Agutter','fagutter2e@blogs.com','9055159964','Ffy4vZ2','2009-01-27 00:00:00'),(88,'Bertrando','Tart','btart2f@marriott.com','7469706383','gdIVRrr8DQ','2003-12-22 00:00:00'),(89,'Anselma','Cabble','acabble2g@marriott.com','4894343967','V0IqICRYE','2018-11-09 00:00:00'),(90,'Silvester','Mazin','smazin2h@mac.com','4003390770','3AFR7Hq','2000-01-14 00:00:00'),(91,'Ariel','Bowld','abowld2i@auda.org.au','2321159192','rDGqKp','2011-06-10 00:00:00'),(92,'Hortensia','Wilton','hwilton2j@squarespace.com','7755721042','hV1nfgR5','2002-04-13 00:00:00'),(93,'Lorraine','Bellwood','lbellwood2k@rakuten.co.jp','6473170053','27dM75LWhn','2013-06-19 00:00:00'),(94,'Rochelle','Maeer','rmaeer2l@noaa.gov','7893245092','aDkwIUKpf','2018-09-29 00:00:00'),(95,'Edita','Corkhill','ecorkhill2m@aol.com','3444362485','Q6I6SbX','2000-07-11 00:00:00'),(96,'Betteanne','Esterbrook','besterbrook2n@sun.com','2662406779','jyMR5Sxa','2014-07-02 00:00:00'),(97,'Les','Bartosek','lbartosek2o@ebay.com','1163273778','oq8dknxp','2001-01-24 00:00:00'),(98,'Jens','Varvell','jvarvell2p@chron.com','9288650997','OXotI03tU0j','2012-08-02 00:00:00'),(99,'Livvyy','Drage','ldrage2q@csmonitor.com','6627341851','vYrsGY','2019-06-10 00:00:00'),(100,'Emily','Kearney','ekearney2r@google.fr','5081726343','F3TThEZF','2007-02-20 00:00:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'minivk'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-09  3:46:24
