CREATE DATABASE  IF NOT EXISTS `simpleblog` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `simpleblog`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: simpleblog
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` text CHARACTER SET utf8,
  `postDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (7,'test ','<h2>The Luck of the Fryrish</h2>\r\n<p>Professor, make a woman out of me. I am the man with no name, Zapp Brannigan! Good man. Nixon\'s pro-war and pro-family. The alien mothership is in orbit here. If we can hit that bullseye, the rest of the dominoes will fall like a house of cards. Checkmate. Fry, you can\'t just sit here in the dark listening to classical music.</p>\r\n<ul>\r\n<li>Who are those horrible orange men?</li>\r\n<li>Is today\'s hectic lifestyle making you tense and impatient?</li>\r\n</ul>\r\n<h3>Lethal Inspection</h3>\r\n<p>Oh, but you can. But you may have to metaphorically make a deal with the devil. And by \"devil\", I mean Robot Devil. And by \"metaphorically\", I mean get your coat. No. We\'re on the top. Does anybody else feel jealous and aroused and worried? Well I\'da done better, but it\'s plum hard pleading a case while awaiting trial for that there incompetence. It must be wonderful.</p>\r\n<h4>Where No Fan Has Gone Before</h4>\r\n<p>Who are those horrible orange men? Bender, we\'re trying our best. Please, Don-Bot&hellip; look into your hard drive, and open your mercy file! Wow! A superpowers drug you can just rub onto your skin? You\'d think it would be something you\'d have to freebase. WINDMILLS DO NOT WORK THAT WAY! GOOD NIGHT! Look, last night was a mistake.</p>\r\n<ol>\r\n<li>I\'m sorry, guys. I never meant to hurt you. Just to destroy everything you ever believed in.</li>\r\n<li>Stop it, stop it. It\'s fine. I will \'destroy\' you!</li>\r\n<li>You guys realize you live in a sewer, right?</li>\r\n</ol>\r\n<h5>Fear of a Bot Planet</h5>\r\n<p>Why yes! Thanks for noticing. Hey, guess what you\'re accessories to. Yes, except the Dave Matthews Band doesn\'t rock. Take me to your leader! Daddy Bender, we\'re hungry.</p>','2016-07-09 08:00:03'),(9,'test 2','<h1><img style=\"float: right;\" src=\"http://themepush.com/demo/runcharity/assets/img/intro.jpg\" alt=\"\" width=\"356\" height=\"238\" /></h1>\r\n<h1>&nbsp;</h1>\r\n<h1>Title</h1>\r\n<p>&nbsp;</p>\r\n<p>description..description..description..description..description.</p>\r\n<p>.description..description..description..description..description</p>\r\n<p>..description..description..description..description..description</p>\r\n<p>..description..description..description..</p>','2016-07-09 18:35:41'),(10,'test 3','<h2>titlu</h2>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Google Inc.</strong> este o <a title=\"CorporaÈ›ie\" href=\"https://ro.wikipedia.org/wiki/Corpora%C8%9Bie\">corporaÈ›ie</a> <a class=\"mw-redirect\" title=\"SUA\" href=\"https://ro.wikipedia.org/wiki/SUA\">americanÄƒ</a> multinaÈ›ionalÄƒ care administreazÄƒ <a title=\"Motor de cÄƒutare\" href=\"https://ro.wikipedia.org/wiki/Motor_de_c%C4%83utare\">motorul de cÄƒutare</a> pe <a title=\"Internet\" href=\"https://ro.wikipedia.org/wiki/Internet\">Internet</a> cu <a title=\"Google (motor de cÄƒutare)\" href=\"https://ro.wikipedia.org/wiki/Google_%28motor_de_c%C4%83utare%29\">acelaÈ™i nume</a>. A fost fondatÄƒ &icirc;n <a title=\"1998\" href=\"https://ro.wikipedia.org/wiki/1998\">1998</a> de cÄƒtre doi doctoranzi de la <a title=\"Universitatea Stanford\" href=\"https://ro.wikipedia.org/wiki/Universitatea_Stanford\">Universitatea Stanford</a>, <a title=\"Larry Page\" href=\"https://ro.wikipedia.org/wiki/Larry_Page\">Larry Page</a> È™i <a class=\"mw-redirect\" title=\"Serghei Brin\" href=\"https://ro.wikipedia.org/wiki/Serghei_Brin\">Sergey Brin</a>. Google oferÄƒ o metodÄƒ simplÄƒ È™i rapidÄƒ de gÄƒsire a informaÈ›iilor pe web, av&acirc;nd o bazÄƒ de date despre peste 8 miliarde de situri web.<sup id=\"cite_ref-6\" class=\"reference\"><a href=\"https://ro.wikipedia.org/wiki/Google#cite_note-6\">[6]</a></sup> La &icirc;nceputul anului <a title=\"2004\" href=\"https://ro.wikipedia.org/wiki/2004\">2004</a> Google rÄƒspundea zilnic la mai mult de 200 milioane de consultÄƒri.</p>','2016-07-11 11:44:46');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  `path` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'work','/work'),(2,'services','/services'),(3,'news','/news'),(4,'careers','/careers'),(5,'contact','/contact');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2y$10$HJpw2eQuaiV55jEYBcdky.aj0WlJFIgHRDt4Gm9PHhr.K7khMKnVu','admin@admin.com'),(2,'demo','$2y$10$4SVLHbjj/a5lLLXFV/Fg7.NCdHyJyX5CR158Ac.NAQIKklENY6awy','demo@email.com'),(4,'alex','$2y$10$ugfw1lyM4J4PnKWk.2hZkuS4snLPaBI6Qx7t7NdeP1YHN2WwuKK0W','alex@email.com');
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

-- Dump completed on 2016-07-17 22:41:47
