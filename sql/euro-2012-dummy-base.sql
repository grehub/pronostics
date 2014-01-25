-- MySQL dump 10.13  Distrib 5.1.62, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: pronostics
-- ------------------------------------------------------
-- Server version	5.1.62-0ubuntu0.11.10.1

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
-- Table structure for table `prono_bet`
--

DROP TABLE IF EXISTS `prono_bet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prono_bet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `scoreA` int(11) NOT NULL,
  `scoreB` int(11) NOT NULL,
  `risquette` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3B62D951E48FD905` (`game_id`),
  KEY `IDX_3B62D951A76ED395` (`user_id`),
  CONSTRAINT `FK_3B62D951A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_3B62D951E48FD905` FOREIGN KEY (`game_id`) REFERENCES `prono_game` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=419 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prono_bet`
--

LOCK TABLES `prono_bet` WRITE;
/*!40000 ALTER TABLE `prono_bet` DISABLE KEYS */;
INSERT INTO `prono_bet` VALUES (119,1,1,3,2,-1),(120,1,2,4,2,1),(121,1,3,0,2,-3),(122,1,54,1,1,0),(123,1,55,2,0,-3),(124,1,56,4,4,-1),(125,1,57,2,4,2),(126,1,58,2,4,-2),(127,1,59,1,2,-3),(128,1,60,4,1,0),(129,1,61,3,4,-2),(130,1,62,0,4,3),(131,1,63,3,4,2),(132,1,64,0,2,3),(133,1,65,4,1,-3),(134,1,66,3,2,-2),(135,1,67,2,4,0),(136,1,68,3,1,0),(137,1,69,1,3,-1),(138,1,70,2,0,2),(139,1,71,0,1,-3),(140,1,72,4,2,3),(141,1,73,2,0,3),(142,1,74,4,3,2),(143,1,75,1,1,-2),(144,1,76,3,3,-2),(145,1,77,3,3,-3),(146,1,78,3,3,-3),(147,1,79,1,1,-2),(148,1,80,2,0,0),(149,1,81,2,4,3),(150,1,82,3,3,3),(151,1,83,1,2,3),(152,1,84,2,2,1),(153,1,85,3,4,-2),(154,1,86,0,2,3),(155,1,87,4,0,3),(156,1,88,1,3,-1),(157,1,89,3,1,1),(158,1,90,3,3,2),(159,1,91,4,3,-1),(160,1,92,0,1,0),(161,1,93,4,3,3),(162,1,94,3,0,2),(163,1,95,2,1,-1),(164,1,96,1,1,-1),(165,1,97,4,1,3),(166,1,98,3,2,-2),(167,1,99,1,4,-2),(168,1,100,0,3,1),(169,2,1,0,1,-1),(170,2,2,1,0,-2),(171,2,3,3,4,-3),(172,2,54,3,1,-3),(173,2,55,3,2,-3),(174,2,56,4,0,-3),(175,2,57,2,3,1),(176,2,58,3,1,-2),(177,2,59,4,4,1),(178,2,60,3,0,0),(179,2,61,1,4,-1),(180,2,62,3,3,-1),(181,2,63,3,1,0),(182,2,64,1,1,1),(183,2,65,3,4,0),(184,2,66,2,3,0),(185,2,67,0,4,1),(186,2,68,4,4,2),(187,2,69,1,4,2),(188,2,70,2,0,-3),(189,2,71,2,0,-2),(190,2,72,1,2,3),(191,2,73,3,2,3),(192,2,74,1,3,-3),(193,2,75,2,0,3),(194,2,76,4,2,3),(195,2,77,4,4,3),(196,2,78,4,3,2),(197,2,79,2,0,-1),(198,2,80,2,1,1),(199,2,81,0,4,2),(200,2,82,4,1,-1),(201,2,83,0,4,-1),(202,2,84,4,0,-1),(203,2,85,3,3,-2),(204,2,86,0,4,-1),(205,2,87,3,0,0),(206,2,88,0,0,-3),(207,2,89,0,2,-2),(208,2,90,1,3,2),(209,2,91,4,2,1),(210,2,92,3,2,-3),(211,2,93,2,0,3),(212,2,94,1,4,1),(213,2,95,0,3,2),(214,2,96,0,0,3),(215,2,97,4,2,-3),(216,2,98,1,3,3),(217,2,99,2,4,1),(218,2,100,2,3,-3),(219,3,1,0,0,1),(220,3,2,1,2,-2),(221,3,3,3,4,-3),(222,3,54,0,4,-3),(223,3,55,1,2,3),(224,3,56,4,4,-1),(225,3,57,0,1,1),(226,3,58,4,4,2),(227,3,59,0,2,-1),(228,3,60,2,1,0),(229,3,61,3,4,0),(230,3,62,0,4,1),(231,3,63,4,4,-3),(232,3,64,2,0,1),(233,3,65,3,3,-1),(234,3,66,2,4,3),(235,3,67,1,1,2),(236,3,68,3,3,-1),(237,3,69,0,4,0),(238,3,70,0,3,2),(239,3,71,0,2,1),(240,3,72,1,0,-1),(241,3,73,3,2,-2),(242,3,74,1,0,-2),(243,3,75,3,2,1),(244,3,76,1,3,-1),(245,3,77,4,2,3),(246,3,78,1,3,-2),(247,3,79,3,1,2),(248,3,80,2,1,3),(249,3,81,2,0,-2),(250,3,82,4,3,-1),(251,3,83,1,0,-2),(252,3,84,2,0,-3),(253,3,85,1,3,2),(254,3,86,3,1,-3),(255,3,87,0,0,1),(256,3,88,3,1,3),(257,3,89,2,3,-2),(258,3,90,4,2,-1),(259,3,91,2,4,3),(260,3,92,0,2,3),(261,3,93,2,3,2),(262,3,94,4,2,-3),(263,3,95,0,1,0),(264,3,96,0,4,0),(265,3,97,2,0,1),(266,3,98,0,2,-2),(267,3,99,0,2,1),(268,3,100,3,3,-2),(269,4,1,4,1,-3),(270,4,2,4,1,1),(271,4,3,0,3,1),(272,4,54,4,3,0),(273,4,55,1,4,3),(274,4,56,4,1,1),(275,4,57,0,0,1),(276,4,58,2,2,-3),(277,4,59,4,1,2),(278,4,60,2,1,0),(279,4,61,3,0,3),(280,4,62,2,4,0),(281,4,63,3,0,3),(282,4,64,1,2,2),(283,4,65,1,3,2),(284,4,66,1,2,2),(285,4,67,4,0,-3),(286,4,68,1,0,0),(287,4,69,4,3,2),(288,4,70,4,0,2),(289,4,71,2,0,-1),(290,4,72,0,3,1),(291,4,73,0,0,0),(292,4,74,2,1,-2),(293,4,75,3,3,-1),(294,4,76,4,3,0),(295,4,77,4,3,2),(296,4,78,2,0,-2),(297,4,79,3,3,-1),(298,4,80,1,2,3),(299,4,81,0,3,-3),(300,4,82,2,2,-3),(301,4,83,1,1,2),(302,4,84,4,1,2),(303,4,85,3,1,-1),(304,4,86,1,1,1),(305,4,87,2,3,-1),(306,4,88,3,4,-2),(307,4,89,0,3,-1),(308,4,90,3,4,0),(309,4,91,0,2,1),(310,4,92,1,0,1),(311,4,93,0,2,1),(312,4,94,0,4,2),(313,4,95,0,3,0),(314,4,96,2,2,-1),(315,4,97,4,0,0),(316,4,98,0,4,3),(317,4,99,4,0,-1),(318,4,100,4,2,2),(319,5,1,3,2,-1),(320,5,2,4,3,-2),(321,5,3,0,0,-2),(322,5,54,0,3,-2),(323,5,55,0,4,0),(324,5,56,1,3,-2),(325,5,57,4,4,1),(326,5,58,4,2,-1),(327,5,59,0,0,0),(328,5,60,1,0,-1),(329,5,61,3,1,-1),(330,5,62,4,1,0),(331,5,63,1,0,-2),(332,5,64,0,2,-2),(333,5,65,0,0,0),(334,5,66,4,2,2),(335,5,67,3,2,1),(336,5,68,4,0,1),(337,5,69,1,1,-2),(338,5,70,1,2,0),(339,5,71,1,4,0),(340,5,72,0,4,2),(341,5,73,1,1,-1),(342,5,74,3,1,-2),(343,5,75,4,2,-3),(344,5,76,0,1,-3),(345,5,77,3,3,-2),(346,5,78,2,1,3),(347,5,79,1,2,1),(348,5,80,3,0,-2),(349,5,81,3,0,2),(350,5,82,4,0,-1),(351,5,83,0,4,0),(352,5,84,2,2,3),(353,5,85,4,2,3),(354,5,86,1,2,2),(355,5,87,3,0,2),(356,5,88,3,1,-2),(357,5,89,2,2,1),(358,5,90,4,2,-2),(359,5,91,2,2,-2),(360,5,92,2,3,-1),(361,5,93,1,0,2),(362,5,94,1,4,-2),(363,5,95,3,3,-3),(364,5,96,2,0,2),(365,5,97,1,1,0),(366,5,98,2,4,-1),(367,5,99,2,4,1),(368,5,100,0,4,-3),(369,6,1,1,0,1),(370,6,2,2,1,-3),(371,6,3,1,4,1),(372,6,54,2,1,0),(373,6,55,4,4,2),(374,6,56,1,3,-1),(375,6,57,2,2,1),(376,6,58,3,1,1),(377,6,59,0,1,-1),(378,6,60,4,4,0),(379,6,61,3,3,3),(380,6,62,2,4,3),(381,6,63,2,0,2),(382,6,64,4,1,-3),(383,6,65,4,1,3),(384,6,66,3,3,3),(385,6,67,0,0,-3),(386,6,68,4,1,0),(387,6,69,3,0,-3),(388,6,70,0,2,-2),(389,6,71,1,4,0),(390,6,72,1,1,2),(391,6,73,0,1,1),(392,6,74,2,3,2),(393,6,75,3,4,3),(394,6,76,4,4,-3),(395,6,77,1,0,-1),(396,6,78,3,3,2),(397,6,79,2,3,0),(398,6,80,4,2,0),(399,6,81,3,4,-3),(400,6,82,2,1,3),(401,6,83,2,0,-2),(402,6,84,0,1,-3),(403,6,85,1,2,-2),(404,6,86,3,3,0),(405,6,87,3,3,3),(406,6,88,2,1,1),(407,6,89,1,0,-1),(408,6,90,0,0,1),(409,6,91,0,3,-3),(410,6,92,1,0,0),(411,6,93,2,4,2),(412,6,94,1,0,-3),(413,6,95,2,1,2),(414,6,96,1,1,-3),(415,6,97,2,2,0),(416,6,98,4,4,0),(417,6,99,0,4,-3),(418,6,100,2,2,3);
/*!40000 ALTER TABLE `prono_bet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prono_game`
--

DROP TABLE IF EXISTS `prono_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prono_game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `scoreA` int(11) DEFAULT NULL,
  `scoreB` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `location` varchar(255) NOT NULL,
  `risquette` longtext,
  `risquetteValidee` tinyint(1) DEFAULT NULL,
  `teamA_id` int(11) DEFAULT NULL,
  `teamB_id` int(11) DEFAULT NULL,
  `channel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_585A88178C146F38` (`teamA_id`),
  KEY `IDX_585A88179EA1C0D6` (`teamB_id`),
  CONSTRAINT `FK_585A88178C146F38` FOREIGN KEY (`teamA_id`) REFERENCES `prono_team` (`id`),
  CONSTRAINT `FK_585A88179EA1C0D6` FOREIGN KEY (`teamB_id`) REFERENCES `prono_team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prono_game`
--

LOCK TABLES `prono_game` WRITE;
/*!40000 ALTER TABLE `prono_game` DISABLE KEYS */;
INSERT INTO `prono_game` VALUES (1,'Groupe A : Match 1',1,1,'2012-06-08 18:00:00','Stade national, Varsovie','Au moins 7 hors-jeu sifflés dans le match',0,6,5,'M6'),(2,'Groupe A : Match 2',4,1,'2012-06-08 20:45:00','Stade municipal, Wroclaw','Au moins un poteau ou une barre dans le match',1,8,7,''),(3,'Groupe B : Match 1',0,1,'2012-06-09 18:00:00','Stade Metalist, Kharkiv','L\'équipe qui marque en 1er gagne',1,11,10,''),(4,'Groupe B : Match 2',1,0,'2012-06-09 20:45:00','Stade Lemberg, Lviv','Les 6 changements sont effectués',0,9,12,'TF1'),(5,'Groupe C : Match 1',1,1,'2012-06-10 18:00:00','PGE Arena, Gdansk','But d\'un joueur ayant évolué cette saison dans son pays',1,14,16,'M6'),(6,'Groupe C : Match 2',1,3,'2012-06-10 20:45:00','Stade municipal, Poznan','Possession de balle à l\'avantage de l\'Irlande',0,15,13,''),(7,'Groupe D : Match 1',1,1,'2012-06-11 18:00:00','Donbass Arena, Donetsk','L\'équipe de coeur de Richard Thomas ne gagnera pas',1,1,2,'TF1'),(8,'Groupe D : Match 2',2,1,'2012-06-11 20:45:00','Stade olympique, Kiev','But d\'un joueur avec un numéro pair',1,4,3,''),(9,'Groupe A : Match 3',1,2,'2012-06-12 18:00:00','Stade municipal, Wroclaw','Au moins 3 cartons jaunes dans le match',1,5,7,''),(10,'Groupe A : Match 4',1,1,'2012-06-12 20:45:00','Stade national, Varsovie','Au moins 10 tirs cadrés dans le match',1,6,8,'M6'),(11,'Groupe B : Match 3',2,3,'2012-06-13 18:00:00','Stade Lemberg, Lviv','But marqué par un milieu ou un défenseur',1,10,12,''),(12,'Groupe B : Match 4',1,2,'2012-06-13 20:45:00','Stade Metalist, Kharkiv','Un buteur a joué la Ligue des Champions',1,11,9,'TF1'),(13,'Groupe C : Match 3',1,1,'2012-06-14 18:00:00','Stade municipal, Poznan','Autant de buts en première qu\'en seconde période',1,16,13,''),(14,'Groupe C : Match 4',4,0,'2012-06-14 20:45:00','PGE Arena, Gdansk','Lionel trouve le vainqueur ou le match nul',1,14,15,'TF1'),(15,'Groupe D : Match 4',2,3,'2012-06-15 20:45:00','Stade olympique, Kiev','L\'homme du match est Anglais. Pour M. Coujet, Maxime de son prénom, la source de validation de CETTE risquette est le site fr.uefa.com',0,3,2,'M6'),(16,'Groupe D : Match 3',0,2,'2012-06-15 18:00:00','Donbass Arena, Donetsk','Un joueur ayant évolué dans le championnat de France 2011-2012 entre en cours de jeu.',1,4,1,'M6'),(17,'Groupe A : Match 5',1,0,'2012-06-16 20:45:00','Stade municipal, Wroclaw','Au moins un but de la tête',0,7,6,NULL),(18,'Groupe A : Match 6',1,0,'2012-06-16 20:45:00','Stade national, Varsovie','Au moins un but sur penalty',0,5,8,NULL),(19,'Groupe B : Match 5',1,2,'2012-06-17 20:45:00','Stade Lemberg, Lviv','Victoire de l\'Allemagne. Messieurs Babin, Antoine et Malet : cela signifie que le nombre de buts inscrits et comptabilisés par l\'arbitre pour l\'Allemagne est strictement supérieur à celui de son adversaire.',1,10,9,'M6'),(20,'Groupe B : Match 6',2,1,'2012-06-17 20:45:00','Stade Metalist, Kharkiv','Les positions des 2 équipes au classement restent inchangées\r\nExplication pour les boeufs du Teicno Pole : Le Portugal reste 2ème et les Pays-Bas 4ème à l\'issue du 1er tour',1,12,11,'M6'),(21,'Groupe C : Match 5',0,1,'2012-06-18 20:45:00','PGE Arena, Gdansk','Au moins 2 buts d\'écart',0,13,14,'TF1'),(22,'Groupe C : Match 6',2,0,'2012-06-18 20:45:00','Stade municipal, Poznan','L\'équipe qui gagne est celle qui a remporté la dernière confrontation officielle entre ces 2 équipes. \r\n\r\nTRADUCTION : L\'IRLANDE gagne\r\n\r\nhttp://www.calciomio.fr/historique-des-confrontations-entre-litalie-et-lirlande_146117\r\nou\r\nhttp://fr.wikipedia.org/wiki/Liste_des_matchs_de_l%27%C3%A9quipe_d%27Italie_de_football_par_adversaire#I',0,16,15,'TF1'),(23,'Groupe D : Match 5',2,0,'2012-06-19 20:45:00','Stade olympique, Kiev','Ribéry ou Benzéma va marquer ou faire une passe décisive',0,3,1,'M6'),(24,'Groupe D : Match 6',1,0,'2012-06-19 20:45:00','Donbass Arena, Donetsk','L\'équipe qui menait au score à la mi-temps gagne',0,2,4,NULL),(25,'Quart de finale 1 : 1er Groupe A / 2ème Groupe B',0,1,'2012-06-21 20:45:00','Stade national, Varsovie','L\'équipe qualifiée est celle qui a commis le plus de fautes',0,7,12,'TF1'),(26,'Quart de finale 3 : 1er Groupe B / 2ème Groupe A',4,2,'2012-06-22 20:45:00','PGE Arena, Gdansk','Le joueur du match est dans l\'équipe qualifiée',1,9,5,'M6'),(27,'Quart de finale 2 : 1er Groupe C / 2ème Groupe D',2,0,'2012-06-23 20:45:00','Donbass Arena, Donetsk','But valable d\'un pied gauche, coups de pied arrêtés inclus \r\n(hors séance de tirs au but)',0,14,1,'M6'),(28,'Quart de finale 4 : 1er Groupe D / 2ème Groupe C',0,0,'2012-06-24 20:45:00','Stade olympique, Kiev','L\'équipe qui se qualifie est celle dont le pays compte le plus grand nombre d\'habitants.\r\n\r\nL\'Angleterre n\'est pas un pays : c\'est une nation qui fait partie du pays du Royaume-Uni. Détail du nombre d\'habitants par pays ici : http://fr.wikipedia.org/wiki/Liste_des_pays_par_population',0,2,16,'TF1'),(29,'Demi finale 1 : Vainqueur QDF 1 / Vainqueur QDF 2',0,0,'2012-06-27 20:45:00','Donbass Arena, Donetsk','But d\'un joueur ayant moins de 28 ans au jour du match',0,12,14,'M6'),(30,'Demi-finale 2 : Vainqueur QDF 3 / Vainqueur QDF 4',1,2,'2012-06-28 20:45:00','Stade national, Varsovie','Chaque équipe marque au moins un but, hors prolongation et hors séance de tirs aux buts',1,9,16,'TF1'),(31,'Finale : Vainqueur DF 1 / Vainqueur DF 2',4,0,'2012-07-01 20:45:00','Stade olympique, Kiev','Les prolongations sont jouées',0,14,16,'TF1');
/*!40000 ALTER TABLE `prono_game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prono_group`
--

DROP TABLE IF EXISTS `prono_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prono_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prono_group`
--

LOCK TABLES `prono_group` WRITE;
/*!40000 ALTER TABLE `prono_group` DISABLE KEYS */;
INSERT INTO `prono_group` VALUES (1,'Groupe A'),(2,'Groupe B'),(3,'Groupe C'),(4,'Groupe D');
/*!40000 ALTER TABLE `prono_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prono_team`
--

DROP TABLE IF EXISTS `prono_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prono_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BF911F84FE54D947` (`group_id`),
  CONSTRAINT `FK_BF911F84FE54D947` FOREIGN KEY (`group_id`) REFERENCES `prono_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prono_team`
--

LOCK TABLES `prono_team` WRITE;
/*!40000 ALTER TABLE `prono_team` DISABLE KEYS */;
INSERT INTO `prono_team` VALUES (1,4,'France'),(2,4,'Angleterre'),(3,4,'Suède'),(4,4,'Ukraine'),(5,1,'Grèce'),(6,1,'Pologne'),(7,1,'République tchèque'),(8,1,'Russie'),(9,2,'Allemagne'),(10,2,'Danemark'),(11,2,'Pays-Bas'),(12,2,'Portugal'),(13,3,'Croatie'),(14,3,'Espagne'),(15,3,'Irlande'),(16,3,'Italie');
/*!40000 ALTER TABLE `prono_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `username_canonical` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_canonical` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1483A5E992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_1483A5E9A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'hub','hub','hub@hub.hub','hub@hub.hub',1,'lu1kr0ewqs08koc8w0k8scook4ck8ww','UO7KNqkrAB/7I7my8EWIB9yIwRnzCN7EbHSONtZNRjtniCp9sTNqLIe5pcOl1OdUTR6Awa4V0SLNQDEOrPEtfA==','2012-05-29 13:27:50',0,0,NULL,NULL,NULL,'a:1:{i:0;s:10:\"ROLE_ADMIN\";}',0,NULL,'Hubert','Sablonnière'),(2,'greg','greg','greg@greg.greg','greg@greg.greg',1,'fzze20nthwook0ks0wk040c00sgkks8','GM8tyqgyPMGb1inPWKOAVqJtIgzUUk4fLOZGnfMLQAsX/cCb8JfELyknBNgIahDaUlENJpT5beN4H7IXNKQ/Vg==','2012-05-25 11:47:36',0,0,NULL,NULL,NULL,'a:1:{i:0;s:10:\"ROLE_ADMIN\";}',0,NULL,'Grégory','Quatannens'),(3,'seb','seb','seb@seb.seb','seb@seb.seb',1,'hm717k0gbbc4wkccs04cckkw4s404ww','sa1Tco2IqiaGh2JqoxEUS2TEpF7UBlzXGz/pxZhoJhtNDNUk1/8aozqQ+A9rmuVHTqt6SQm+5z5XztbdMTfDWQ==',NULL,0,0,NULL,NULL,NULL,'a:1:{i:0;s:10:\"ROLE_ADMIN\";}',0,NULL,'Sébastien','Beaussart'),(54,'guilhemine.martin','guilhemine.martin','guilhemine.martin@euro2012.com','guilhemine.martin@euro2012.com',1,'85y6b06yjh8g0cck44sggcokg0sooko','BNk7FpJEwp1uHhX/SzxYtGFfKDorke/cEBbWedtUPDQUrRld6/rxxqJFN3WFQFjYORqCZcr7r5/TpAlnWme7yQ==',NULL,0,0,NULL,'pba6h6qpb4g8sc4w808gos088k4ko088cg888c4048wsgs0o0',NULL,'a:0:{}',0,NULL,'Guilhemine','MARTIN'),(55,'avigaelle.bernard','avigaelle.bernard','avigaelle.bernard@euro2012.com','avigaelle.bernard@euro2012.com',1,'t09a49h3ydc40c48o8004g8wowks0s8','w2UIYWlG2ztSA5L/tFgOPKqaWiHw18y/KwWT/L14i9Y7R1E5US5S1AdfnQCCWa2CgAYnBc5nK8JC2jFTDbk9Ag==',NULL,0,0,NULL,'4mxmeqfb3b40wc4wskwwgo4gc8cgwgg88ws0scc08c80gk488o',NULL,'a:0:{}',0,NULL,'Avigaelle','BERNARD'),(56,'albin.thomas','albin.thomas','albin.thomas@euro2012.com','albin.thomas@euro2012.com',1,'ddd0i2g1ynwckg04cwgk4ssg00cookw','JqykE/sp4TE8a2aRxZGJzHlWdii/v8AsriQVAMOrZDerxzuM0tvEVPM912UbB2c5HrINxLJrv5XxlWBQHtriiQ==',NULL,0,0,NULL,'5c2nxddb6uck44s44ock40s8kgwo88ksww40w0oogcws8cgw4k',NULL,'a:0:{}',0,NULL,'Albin','THOMAS'),(57,'anthime.petit','anthime.petit','anthime.petit@euro2012.com','anthime.petit@euro2012.com',1,'d234xq8twxwgo0ggswkgsg8w80gs0s4','ndDxwcHXszI99pywy8CBdWf8cX3Ib+g4aHvfJicLCVXynVnb/eWINEQQVIILy7rvwR/BUa2H3t8v5WTo5CWAvQ==',NULL,0,0,NULL,'2jtahuavi2gw0wggckwococow8kcwsogowwg8gscw0kg0wg8ss',NULL,'a:0:{}',0,NULL,'Anthime','PETIT'),(58,'arsene.robert','arsene.robert','arsene.robert@euro2012.com','arsene.robert@euro2012.com',1,'apr15rdpdhs80cgs80kw8w4w08gwwwo','VKmvDlDfFBWdlQacIgsPRlxGUGL+woRhNUjQoD+wK7TLy2OfUwsKNtP3WpL7YoV+AIr89OQ953/7th/VINoGzg==',NULL,0,0,NULL,'21z4ybrztdk0k0ocg8g000kcw4skwso480o088g8skww48kg0w',NULL,'a:0:{}',0,NULL,'Arsene','ROBERT'),(59,'margot.richard','margot.richard','margot.richard@euro2012.com','margot.richard@euro2012.com',1,'susl67v6spw400swo4k8888w4000c4o','E2SLW5EjJDkdHPC9byc7lliECqur/2cBC3sieN1U1KxBB5q5BJ5W09n8t/JC4kJCufDIVlBA/0IpnthlOJsbhA==',NULL,0,0,NULL,'5kdok956e98o0g4ss88kw8gccw4k0cs00s4oo0ckwwgsgockk4',NULL,'a:0:{}',0,NULL,'Margot','RICHARD'),(60,'alcide.durand','alcide.durand','alcide.durand@euro2012.com','alcide.durand@euro2012.com',1,'7o9mfnaisqccoc0ws8c4404o8ww44co','pxMoLggN6I3h3s5iWKpSAusBHcmf6/Agl/JhHRLg/2rUaf7P8zniJ7AM29sh3SR2QPVutLmJKEVWhEPpufESag==',NULL,0,0,NULL,'4a9zxp2utqkg4g4gooo04004swcg0c8g88488g48wocgk0s0k8',NULL,'a:0:{}',0,NULL,'Alcide','DURAND'),(61,'paulette.dubois','paulette.dubois','paulette.dubois@euro2012.com','paulette.dubois@euro2012.com',1,'ja0d92dnc68kc0ocs8kk84888s08gw4','QuExDEK3MASk5bgqBCDppmq4JM55hK5Ge2oWDdmwVOVxIHGAHqbc0+grRkSTiSmd6XFWYdWuwd6nhPfU4MT1zg==',NULL,0,0,NULL,'482cra3ez3ggws0ggs4k8s8oksg4gwogcc4sg4sgo8wg8cocsg',NULL,'a:0:{}',0,NULL,'Paulette','DUBOIS'),(62,'bernard.moreau','bernard.moreau','bernard.moreau@euro2012.com','bernard.moreau@euro2012.com',1,'tfras78rqi8sos8s8ssc0k44kw48gs0','5/IbjsM0IFqweG8//dIpe5qqIWQHunUDuzbwSXnJCZ77M/QwYf97RHli6Qc6nqe9ExncMdmAt5KLBVBv9UVFbg==',NULL,0,0,NULL,'1jj3ysxwg58gsk4swwgsgkw488c08ococ0w8wo8sw4s04kkggo',NULL,'a:0:{}',0,NULL,'Bernard','MOREAU'),(63,'fabien.laurent','fabien.laurent','fabien.laurent@euro2012.com','fabien.laurent@euro2012.com',1,'igsa3s7b5340co04cs84s44ook888o4','etQw5IECE+5T9+VQ+yXIhy8mhX1zF46T747nnX3ArSDmnODOzBVH7VfV0S/x6FTIjaQSx/j/a6xi3c7ligMzfQ==',NULL,0,0,NULL,'1bkcphcb4wckoc8k8wsw8k04cgwogwwk0ow4og084ocgcg0kk4',NULL,'a:0:{}',0,NULL,'Fabien','LAURENT'),(64,'sigismond.simon','sigismond.simon','sigismond.simon@euro2012.com','sigismond.simon@euro2012.com',1,'h5y99rs2m9csoc8kc4c84s40s0kc84o','q+D4A+zEI/EZWC3l7/89rph0Ddjxt7iGwD1IYBGiwSFI+G5JReegnP7lpEWob/96Fbz9qBnqn2TheuWcA0joaA==',NULL,0,0,NULL,'1dltrjm76busco4c8scsgocss4gow0kg80k48kocgo0wgww4w4',NULL,'a:0:{}',0,NULL,'Sigismond','SIMON'),(65,'ambre.michel','ambre.michel','ambre.michel@euro2012.com','ambre.michel@euro2012.com',1,'lrl8drng4dcggkk88wsso4sw0wgkw8o','BMePjBYc9sn6pir+FDdKSZJMUj2+Ey+Y3hUfzf2ij78fSLARNcjj67CyzAHUgptywHgLAtrdMAHSO03qu8n/lg==',NULL,0,0,NULL,'4x4opdmjsdmogs0ksko0g80cggw8408w0s8o40kk084s8okkc8',NULL,'a:0:{}',0,NULL,'Ambre','MICHEL'),(66,'matthias.lefebvre','matthias.lefebvre','matthias.lefebvre@euro2012.com','matthias.lefebvre@euro2012.com',1,'k895jt6u9ts4cgw4c8sws8s44o0okk0','+P1IbQHj733qEx/idcE6ernFKiGfbwibZJRaFmIKc3n+ftheoAgbGrQr5N1nkpHO4vd6tZZqeKMKnDJ7/Vciuw==',NULL,0,0,NULL,'3edsqnvrwdgkko4g80ocscgk8s8wgk4ok8kocg0go8g0o0w0w0',NULL,'a:0:{}',0,NULL,'Matthias','LEFEBVRE'),(67,'acace.leroy','acace.leroy','acace.leroy@euro2012.com','acace.leroy@euro2012.com',1,'2bdll8uqfk00gk08soggsgkkkkgck0c','bW22TRJzjUn8bpkBD9q8C7RZFd5Ch1VKGNl2ZU4z51UFwZl9kdbN20uRdRZ1k+3U/H4H69CwSholbZ2wxPzQyQ==',NULL,0,0,NULL,'2pmuozha9740w4g8w8g0gckws8oc80wws80k44wsco80kk0wwo',NULL,'a:0:{}',0,NULL,'Acace','LEROY'),(68,'adrien.roux','adrien.roux','adrien.roux@euro2012.com','adrien.roux@euro2012.com',1,'eg59bcws6xc84csw04c0sgk48ccgkco','MhYiY3v1I/To8FsSwCFs73yNeDJMV+O/f2m9TZIm0bcAyjPnMB6PJdzRPN0Hy2LLbeE0g4o2KuiBJ8MRVJiKnQ==',NULL,0,0,NULL,'5aunude5mxwkwcsw0804ogk8sgss4kg8k00g888kks48g0go8k',NULL,'a:0:{}',0,NULL,'Adrien','ROUX'),(69,'ferdinand.david','ferdinand.david','ferdinand.david@euro2012.com','ferdinand.david@euro2012.com',1,'4xdx9x8apkkcows4gwk8w4o0wws4c8o','xf97BcuTdZ5gveTx6+GoPCt2+47TZY7lz8l3XRIIfVTjn50bdQ8/nGp6IsKeWGS2CcEUjpCLwh9R7KO81Mj+eQ==',NULL,0,0,NULL,'53ha7eauv6kgk0kc44ckwcwoggow8kkgcgskssk0g0gwoc8k00',NULL,'a:0:{}',0,NULL,'Ferdinand','DAVID'),(70,'octave.bertrand','octave.bertrand','octave.bertrand@euro2012.com','octave.bertrand@euro2012.com',1,'a820lnwjyk0scokw80048og0kgckgcg','CIpVJ2i9mAhWqmddKI0JhfBbfwcoCbVHFKwfZx6YPnSVVPy/IoN8Pw2F7uCGsK7nz2b7MmEHPq74rPpOhTe6Qw==',NULL,0,0,NULL,'45n1k1rv0reo4cwcog8sck8wo04sk08k0o4ccccw000o04gg04',NULL,'a:0:{}',0,NULL,'Octave','BERTRAND'),(71,'francois.morel','francois.morel','francois.morel@euro2012.com','francois.morel@euro2012.com',1,'jjfiwmoc274gs8okoss840o0c8ckws0','4YlPM/7GVA4ugRkPHURWc1L7qcitvuCpzZZ7ei936cOHG0HhzI3w4p13q9rQaUB+ctkuNfXrASKz7sIfn9MyHA==',NULL,0,0,NULL,'1brulfpnr7esggggogosk0k0sws0s84o44o0kwc84cswsw4o8c',NULL,'a:0:{}',0,NULL,'Francois','MOREL'),(72,'yves.fournier','yves.fournier','yves.fournier@euro2012.com','yves.fournier@euro2012.com',1,'oosqhm71si88g84gcssc0s84kcw88o8','dFzACC/eaKE6Crg49Vbi/9M2D4pUra8y1sRuIKBmrzPIJYJ88sHrrur5NnRZDmMhITUoB2t25CNpb6LF6d5iWA==',NULL,0,0,NULL,'3r35hcueirokscgog8s0ss4owo0ggkgo8c8o8g4o4g8g4gockg',NULL,'a:0:{}',0,NULL,'Yves','FOURNIER'),(73,'mahault.girard','mahault.girard','mahault.girard@euro2012.com','mahault.girard@euro2012.com',1,'9695q9i2jgg08k4os8gowwc4ow8okcs','VyxGDu0k11TlxOrPgscQhuzQrMB6Ap+877ZOeKn7jaO958q5RqFuCBuKV6V7oWBimFK9jUo19NNFUQZK0QHXPA==',NULL,0,0,NULL,'2sot74kozse8scggw4gcwo48kcw4cs00sgc084gcksg0ksswwg',NULL,'a:0:{}',0,NULL,'Mahault','GIRARD'),(74,'benoit.bonnet','benoit.bonnet','benoit.bonnet@euro2012.com','benoit.bonnet@euro2012.com',1,'8kccphsdngo4koscswcso0kc840co4s','+WXJtgN+uTDMABkzHG40kVcYN3lKvLKj/BYKxmLve6+Mrb3ABOE5YyM8qE4eY4UafgtLlhJ9nmYkEKFNibiSWg==',NULL,0,0,NULL,'1wzsi543sehwwc0gkk80ws484o4o80o0wkggok840gs00kcwwo',NULL,'a:0:{}',0,NULL,'Benoit','BONNET'),(75,'mathias.dupont','mathias.dupont','mathias.dupont@euro2012.com','mathias.dupont@euro2012.com',1,'qfsk1h8775cswwow0kwc4ookg0skkk0','FNVmh/Ps3z5azX9XLlaAy9cdG0o56y37URvaVjYhpwPOyCRK06lTbLAR0D+qo+g4/o2Yh4GTb0swTys84Tbr5w==',NULL,0,0,NULL,'43iy8yjh4se84cwssowcs80woocw8soc8soc4o048g4kcsoswc',NULL,'a:0:{}',0,NULL,'Mathias','DUPONT'),(76,'roger.lambert','roger.lambert','roger.lambert@euro2012.com','roger.lambert@euro2012.com',1,'t434upcc7ogk8w4oc88g84g04sk4cc0','2NH/Ipm7urLD5qiZTNpsHvkSDdPXYubOzCVc+ATsw5hrmN9Q7xRuapNI9DGJ7hnaZg6cWgZMvf+puuzHKh+82Q==',NULL,0,0,NULL,'1gcg59wltwhwo4ookogo0owwsss40c400cc4sg84so8sw844go',NULL,'a:0:{}',0,NULL,'Roger','LAMBERT'),(77,'lorene.fontaine','lorene.fontaine','lorene.fontaine@euro2012.com','lorene.fontaine@euro2012.com',1,'o11dd5io0vks0cw0wgs040gc88488g4','Mij3CjHFFTmBHJ+Ie/isoVVwRbUP4yrvzDVPImTZlbbhy60twK5nOujPrlp6vQcNKuG3vKsGYQES9vTSCk0tuw==',NULL,0,0,NULL,'1l2wyl8zkmw0kocwcgsc000w444k080g8gwk00ksocgwk4w0ww',NULL,'a:0:{}',0,NULL,'Lorene','FONTAINE'),(78,'alphonse.rousseau','alphonse.rousseau','alphonse.rousseau@euro2012.com','alphonse.rousseau@euro2012.com',1,'b3vrsqhxteokcw0c0swgskg8c00kwg4','usLn09Nyi5hYy5mxlsEKAEs4QGvpC6KuoEO7M9BsJIaKejr6aaQ1VhajmuBFykTdw84MQka9K7EIf4jk4Upvkw==',NULL,0,0,NULL,'9o1rh8dmud4w0s0sck4c0g4os0cokk80skck4484k4csowck0',NULL,'a:0:{}',0,NULL,'Alphonse','ROUSSEAU'),(79,'aphelie.vincent','aphelie.vincent','aphelie.vincent@euro2012.com','aphelie.vincent@euro2012.com',1,'nr4yqvz61xcw00g0s8sgo800g0s4kkc','f5n/J1+JU0n0gVyY1SXFnhvhknjFdvoQrCg5AQlwZkSzv6bpG6PVEOuEJmqVC+bfcfikoHLhZZPE1cskKHtrzg==',NULL,0,0,NULL,'3uwndaozb6ck4cokw4wsw08os44sc0gkcsg0k4o844kks08o0o',NULL,'a:0:{}',0,NULL,'Aphelie','VINCENT'),(80,'abel.muller','abel.muller','abel.muller@euro2012.com','abel.muller@euro2012.com',1,'7qnb3i1ljw0s4gskogcooo840gwkcgo','gsyJZ/V4WYgDd6tALHHaJcH5DvsLmiS2dGWtvgv82w2yMA4WisrG4Cp3X4FEjGLewDdJ5FmyEdMUVJuFrVp3aA==',NULL,0,0,NULL,'1piza6p7755w4sgckgs4wg4ocwokwcs80ckgo8ckws44kw8808',NULL,'a:0:{}',0,NULL,'Abel','MULLER'),(81,'axellane.lefevre','axellane.lefevre','axellane.lefevre@euro2012.com','axellane.lefevre@euro2012.com',1,'s3olur0ap68sckkwk80k4o4c0sk84kk','mVj9PLcijgPKZ3UoodeVyzrg/KtCoiMik6r/ivSwRDq02D8lSL3r/JydQcshvNgcKpGzJ1Y7Y6dLsbARf/D6NA==',NULL,0,0,NULL,'4l9qj9bs5u04g8k4k8gcssg00kww48s4g0ssksw4cogo4kcgoc',NULL,'a:0:{}',0,NULL,'Axellane','LEFEVRE'),(82,'raymond.faure','raymond.faure','raymond.faure@euro2012.com','raymond.faure@euro2012.com',1,'244c8fd3n6pwokkwg888s84cosscokk','xG7nv/6sFtcUIW5SLJpb3N7YbWtVSPPvEai3weWnQR/MIHXIf4rdAPYDJNP2Ahz2roEhfKzlI4ssiDIEINsbCQ==',NULL,0,0,NULL,'25hl3lhs605cws40w88go4coocowkcs8ww008kc4cg0o4gcw48',NULL,'a:0:{}',0,NULL,'Raymond','FAURE'),(83,'anastasiane.andre','anastasiane.andre','anastasiane.andre@euro2012.com','anastasiane.andre@euro2012.com',1,'sbsq2qtpiqog8wwwcoko84040ow48ck','R+9jjcWVnIlGkcnYD8U6VYcQJ48E8lWl5arso1lugkcJesFjK6MqjyhqKlZL68FjH3uM1tihyUnJNppsslOmZw==',NULL,0,0,NULL,'5xrdxkyife8s0go8888c8k8k0w4w0w4k8808c0wcckgswooc8g',NULL,'a:0:{}',0,NULL,'Anastasiane','ANDRE'),(84,'aubert.mercier','aubert.mercier','aubert.mercier@euro2012.com','aubert.mercier@euro2012.com',1,'pug80uznxdwg4kw0s0go8kk4o8skcks','mDUJuIIVbfQaksL49vpIZqFQqqzVxnfblGYjq3Ur+5z90ExBSMAberA3C84lNgXtbgYoJq0Y+LfUhQUj9Jedzw==',NULL,0,0,NULL,'635iqcptnio8g80owko4wc44wccwsgo4g8gss4sw08s84c0kgw',NULL,'a:0:{}',0,NULL,'Aubert','MERCIER'),(85,'camille.blanc','camille.blanc','camille.blanc@euro2012.com','camille.blanc@euro2012.com',1,'e0pik9j8eagc0ggkk0wcoggk8oswwcw','C7mAqNqw2+Qd1zhG8nLGmEWwO3TxZAsLXnK7iUp+yaeFhW8kJdmkHD/P6zHfC1oOzKPVtH2lx9pGPv1YVrr05Q==',NULL,0,0,NULL,'35d2rb8zwao0k8kkg4sowkg440gkgo00o0wcs4csw04cw88osg',NULL,'a:0:{}',0,NULL,'Camille','BLANC'),(86,'amandin.guerin','amandin.guerin','amandin.guerin@euro2012.com','amandin.guerin@euro2012.com',1,'xyo2u6fsx9wc8w4sos0wwg8kg4osok','UOgCi7+A63BFHAoydr5I1iyEHAhipB9TJAVGJvgEqUkto8vD1j2l6/lRnyH/+BtUjowLtnLNN3jZuqwAYLWcfw==',NULL,0,0,NULL,'530j3is5xl0kcs04w4ccc0088ok00w0cswcok0ocowgck0ko40',NULL,'a:0:{}',0,NULL,'Amandin','GUERIN'),(87,'aldonce.boyer','aldonce.boyer','aldonce.boyer@euro2012.com','aldonce.boyer@euro2012.com',1,'rdufho2kkhco0ow844gsosg0w0css48','2dlBsQklGTUzXh+R0tbBxOeTzc+oMzFRwAY/FGBe7xkRYfaGLKe9cQGQRpU5zNzwB9ZDWlTWjzx/S7877gUXmg==',NULL,0,0,NULL,'3fg8vw5ykwe8g0swg0888ckkg40w4ggo8gw880gscg000kgkkg',NULL,'a:0:{}',0,NULL,'Aldonce','BOYER'),(88,'alois.garnier','alois.garnier','alois.garnier@euro2012.com','alois.garnier@euro2012.com',1,'ap7r9pcm9k0kss8g4wwkc40kcwskkgo','d3vIEj7FWPiQ4OMVkC+JhJ2NkS4sPWTBsWFyW00qt197o4iVb3H5AgNQPM0UPUEOsclxsLb+orvjOvNzBLmSEg==',NULL,0,0,NULL,'3ochfqom42680oo0g0s8sk84s4w4sc8084kg048w8k00c80cc0',NULL,'a:0:{}',0,NULL,'Alois','GARNIER'),(89,'albane.chevalier','albane.chevalier','albane.chevalier@euro2012.com','albane.chevalier@euro2012.com',1,'le1oueu1wk08ck48so4ogg8gwgg04s4','qMYQG6+gtmi+yMLNxA+xXE0YAsx90tDd8xfOmYy/i8/gxngz9MJx6NrUkeweSKRRJFwlSc5Tr2ytGFTeSysEtQ==',NULL,0,0,NULL,'486qga07bcg0og8c0o4ww8g0gsg8swsksk40ococ8g4k0ko088',NULL,'a:0:{}',0,NULL,'Albane','CHEVALIER'),(90,'perceval.francois','perceval.francois','perceval.francois@euro2012.com','perceval.francois@euro2012.com',1,'nnwfurw53asco0c04g0kososo4g04w4','DNSsVlF6pqhnGD0/H1IPqXMu+deFR2TftAQmaXoW5SLen6uYy7FKURyEGS8M07BDR5h/PNpoG//BOGu5gqm8JA==',NULL,0,0,NULL,'4afbdfwr7a04cw4gsg4488swkw0okosk0ko88kko8ccckc84g4',NULL,'a:0:{}',0,NULL,'Perceval','FRANCOIS'),(91,'david.legrand','david.legrand','david.legrand@euro2012.com','david.legrand@euro2012.com',1,'n6ve8208mqoggko8s8sco0o0g0ok4oc','o0ia08OjqwuJXAmtHJfCMNYDPJp4hPKQZF8NBxpZwl4K/LL0/h4QssR7iTclZxLj/q9VaP9gzm1bnt7l0mTzNA==',NULL,0,0,NULL,'lpr20fxglpwcc8gk4s88wwccgkcs40800ck4wsckos4c8wwgk',NULL,'a:0:{}',0,NULL,'David','LEGRAND'),(92,'angadreme.gauthier','angadreme.gauthier','angadreme.gauthier@euro2012.com','angadreme.gauthier@euro2012.com',1,'dwkevnttnz4kookoc8088csc0c0wk4c','DzYpVtc3xEkm5mk3pV4i1OPCkTKZpX6RWQpGx2jOwoTjvTIK3GqIu1R7Yh7eHvLSn7b925/lVKifvAl+lBOGJQ==',NULL,0,0,NULL,'67ccwmjfmi4o000oowoowog48ow8skk4wgkocs8kcws0gwg4sc',NULL,'a:0:{}',0,NULL,'Angadreme','GAUTHIER'),(93,'mederic.garcia','mederic.garcia','mederic.garcia@euro2012.com','mederic.garcia@euro2012.com',1,'jzgtk8tbw40csskcgc48s08k08s4sc0','6mflEjX658wFYcIic+3WwW+vK1dl5AcmXHlNeWQrt80a4lraGphZ6E2jFcvH4qVX6fCVDOizQf2dsvvrC6gRPg==',NULL,0,0,NULL,'ysmw27q2smsck088c0sgcccokw4kcgcows8kc484cc4444g4c',NULL,'a:0:{}',0,NULL,'Mederic','GARCIA'),(94,'daniele.perrin','daniele.perrin','daniele.perrin@euro2012.com','daniele.perrin@euro2012.com',1,'3znzav2zb9wk4kwc0gocc480gs4ko4g','VIeP9p/xF7zLYKB3JnKTS6w/eAcW7A87R4uuZCJes1evKc8VnMdeCZxC1I2iYq9s8teYXgPiyGaK2rLqAlgJSA==',NULL,0,0,NULL,'1jv3tmd0uxwggwskg4ooo0scsco0ks08w0wws8sg8ks4wgkw8g',NULL,'a:0:{}',0,NULL,'Daniele','PERRIN'),(95,'brigitte.robin','brigitte.robin','brigitte.robin@euro2012.com','brigitte.robin@euro2012.com',1,'bim8ghsl3moko40ogc8kgoow48kgoo8','hIsbxqXAdax7NWucYvEkpK/O1fqoa2nE/LH4bp/2GPb8lp5uyCOqOwcd5rQURtV+XuYIR2fZBZlHvH+BP6i1nQ==',NULL,0,0,NULL,'5hh1w2ljd3sw88so8c048gowwsogkc8scc8kw00co8cwsck8kw',NULL,'a:0:{}',0,NULL,'Brigitte','ROBIN'),(96,'aliette.clement','aliette.clement','aliette.clement@euro2012.com','aliette.clement@euro2012.com',1,'ep0msgdabuo0w0cs44owsokcwco4ww4','iBj036Ef/P6e6LTXSahVswUuQpy0648rlO4JIFO2q2qoVhlzxUkSCRwFkZKvkJbEvitn3xNXCLuh6y+feG819Q==',NULL,0,0,NULL,'k83kcnst93kckwko0w8wc880ooo088owwckoskws00kos8w4w',NULL,'a:0:{}',0,NULL,'Aliette','CLEMENT'),(97,'corentin.morin','corentin.morin','corentin.morin@euro2012.com','corentin.morin@euro2012.com',1,'59f8z041ojs4gwkcoowswk4woc44c8o','n6sMjSw9wLT9CQu498y8SJQ8KZbKEy5oAkWiCJWthamE2AHNOTeeG5rZzQucvEUHIz/drZudWMLZjge+WP94UQ==',NULL,0,0,NULL,'30dbwe449ew48w0kcwg84088okcgsc8w8ckkssksogccsgw48c',NULL,'a:0:{}',0,NULL,'Corentin','MORIN'),(98,'caroline.nicolas','caroline.nicolas','caroline.nicolas@euro2012.com','caroline.nicolas@euro2012.com',1,'rfvetix9g2s0og08k00s00kkgs04skg','zqowkGSHCBQQ1TWk2RPT8aI/54dY+Sun7AqB1Bjfjpz2kgRKUvvTmGwXyRLCX4o5gwM62v6l7M8tHz+M3ZnsHQ==',NULL,0,0,NULL,'4ezbvz094uucw0sgsg4o0ggoscwk0s8csgk8gsgsgocsg48ck4',NULL,'a:0:{}',0,NULL,'Caroline','NICOLAS'),(99,'thomas.henry','thomas.henry','thomas.henry@euro2012.com','thomas.henry@euro2012.com',1,'tcqr6cu2v1w80cgwc0okow4o48k088w','cIJ97ZOfw/IlSsbEOOBI9UBOG0MyeQtuwJPfuhFNTEhau08b1kUaeIfYBWb8NH0R0SZOus/XZVjt0zH045zKSg==',NULL,0,0,NULL,'2knqszrkwge8kg88ck8gsoookggko4kok00w00cswsw4oosc4s',NULL,'a:0:{}',0,NULL,'Thomas','HENRY'),(100,'georgette.roussel','georgette.roussel','georgette.roussel@euro2','georgette.roussel@euro2',1,'38rns3btpssgkk08scwk880gcw48844','JbkNvrWIe2K8xYyv2/XiYkofHwAVURc6qkrC6o73aVR5cZlys/AYG8izV50YX3inTwdSVaIcCqzJqJBEUPdYdg==',NULL,0,0,NULL,'5vn9u9xch3go8sswsowgg0ssgc88gocgoo4gw00004044ko8g4',NULL,'a:0:{}',0,NULL,'Georgette','ROUSSEL');
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

-- Dump completed on 2012-05-29 13:57:27
