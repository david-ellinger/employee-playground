-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	5.7.25

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
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `deptno` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Accounting'),(2,'R&D'),(3,'Sales'),(4,'Operations');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `emp_no` int(11) NOT NULL,
  `first_name` varchar(14) NOT NULL,
  `last_name` varchar(16) NOT NULL,
  `hire_date` date NOT NULL,
  `salary` int(11) NOT NULL,
  `deptno` int(11) NOT NULL,
  PRIMARY KEY (`emp_no`),
  KEY `dept_no_idx` (`deptno`),
  CONSTRAINT `dept_no` FOREIGN KEY (`deptno`) REFERENCES `department` (`deptno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'David','Ellinger','2014-05-04',98000,3),(2,'Seymour','Spottiswoode','2005-10-10',101456,2),(3,'Sandi','Chauvey','2016-03-17',98579,3),(4,'Hedvig','Andrioni','2006-04-07',21577,1),(5,'Kellina','Crichten','2009-09-02',48594,3),(6,'Dill','Willans','2002-02-15',114018,4),(7,'Dorelia','McQuaide','2005-12-20',170791,3),(8,'Melisandra','Campo','2005-05-27',174839,3),(9,'Major','Gerasch','2010-08-25',192765,1),(10,'Lanette','Kleinhaut','2002-11-13',124755,4),(11,'Marley','Mattityahou','2007-06-27',182978,3),(12,'Cory','Loadman','2013-12-23',94141,1),(13,'Drucill','Tring','2004-10-11',186032,1),(14,'Vernice','Menghi','2009-12-13',120394,1),(15,'Spencer','Mandy','2017-07-25',139335,1),(16,'Barrett','Nussgen','2003-01-27',143924,3),(17,'Justus','Bloodworth','2017-10-05',60502,4),(18,'Vita','Willgress','2002-11-28',132354,1),(19,'Cicely','Dumingo','2004-03-17',177728,4),(20,'Meredith','MacFaell','2007-02-13',198691,2),(21,'Cory','Mountain','2003-12-01',164200,2),(22,'Viva','Aucoate','2005-01-13',163875,1),(23,'Jennie','Hedde','2005-04-05',158948,4),(24,'Elie','Keenlyside','2007-11-28',109809,1),(25,'Ulysses','Niche','2013-09-17',69203,4),(26,'Heinrick','Pietsma','2018-07-18',148980,3),(27,'Beltran','Pryn','2008-02-14',171176,3),(28,'Lani','Gyngyll','2002-10-03',94751,4),(29,'Maribeth','Oldknowe','2008-02-04',149932,4),(30,'Derwin','Rodolf','2002-06-07',121948,2),(31,'Faulkner','Deards','2006-01-16',17375,2),(32,'Carly','Alyonov','2000-05-05',80254,2),(33,'Milton','Ledwitch','2002-10-14',20031,4),(34,'Binni','Dahmke','2008-03-28',151186,2),(35,'Anselm','Gammill','2004-05-27',19490,2),(36,'Karena','Groucutt','2006-09-11',132914,1),(37,'Betty','Jowling','2018-12-01',180707,4),(38,'Tamra','Hitzke','2001-07-28',62300,2),(39,'Emelina','Setter','2011-04-26',111831,1),(40,'Star','Dearlove','2004-05-26',64821,3),(41,'Zsazsa','Thorwarth','2010-06-27',170055,2),(42,'Tasha','Nelles','2018-12-01',128598,1),(43,'Sarge','Lenthall','2006-06-03',91342,4),(44,'Clerkclaude','Cresswell','2006-10-28',96844,3),(45,'Binni','Eykelhof','2002-07-04',66920,4),(46,'Anetta','Gerauld','2010-10-18',43468,2),(47,'Erik','Brewster','2011-11-04',180255,2),(48,'Freda','Oliver-Paull','2012-01-11',37399,4),(49,'Rae','Alelsandrowicz','2004-02-08',65248,4),(50,'Catlee','Deeson','2004-11-23',33250,2),(51,'Selinda','Hails','2002-09-18',70324,1),(52,'Burk','Haborn','2016-01-25',126534,2),(53,'Shelia','Keningley','2000-04-18',101376,4),(54,'Janelle','Wanjek','2013-11-03',68760,3),(55,'Renie','Devenish','2002-08-26',168708,1),(56,'Mitchell','Bakhrushkin','2009-05-25',144112,4),(57,'Daniele','Cattrall','2017-09-22',160847,2),(58,'Franky','Posse','2000-03-31',110172,3),(59,'Kristofor','Arnolds','2019-03-04',171351,1),(60,'Trista','Waller','2015-09-01',92417,1),(61,'Esma','Drew','2003-12-27',181052,4),(62,'Caren','Sloam','2004-03-07',194378,3),(63,'Cherie','Barker','2017-03-02',128230,2),(64,'Roch','Champniss','2006-09-09',156255,4),(65,'Aigneis','Vonasek','2008-01-13',164014,1),(66,'Nelia','Merrigans','2003-06-30',173598,4),(67,'Bay','Cabotto','2007-10-31',129017,1),(68,'Pippy','Wilds','2013-04-16',62582,2),(69,'Portia','Dowley','2000-08-28',182039,2),(70,'Floyd','McGloin','2004-05-10',55131,1),(71,'Madella','Courtese','2018-10-30',29485,2),(72,'Rennie','Denk','2003-11-26',18504,3),(73,'Damian','Ormesher','2010-06-10',43415,1),(74,'Kevan','Marsh','2004-03-13',176142,3),(75,'Eldridge','Hurch','2011-02-21',135341,3),(76,'Lucais','Pressman','2013-05-01',138102,4),(77,'Josepha','Getch','2001-05-21',91585,2),(78,'Xever','Levesley','2009-03-22',170532,4),(79,'Sarge','Covert','2018-10-31',125401,3),(80,'Anthea','Calvey','2000-11-01',75932,4),(81,'Elset','Oager','2012-12-07',100469,1),(82,'Hernando','Gudd','2012-06-05',88054,1),(83,'Brandyn','Fishwick','2016-12-18',167959,3),(84,'Caye','Stockdale','2016-01-02',151576,1),(85,'Grover','Toner','2004-04-10',165261,4),(86,'Tatiana','Sapseed','2002-02-15',51607,4),(87,'Brennan','Stovin','2003-02-06',61183,4),(88,'Galvan','Dinsale','2007-12-01',79849,1),(89,'Esme','Beers','2002-12-06',136224,4),(90,'Jannelle','Leverage','2001-02-26',157468,4),(91,'Huntlee','Gloucester','2002-01-27',147752,3),(92,'Sherye','Middis','2004-09-29',157374,1),(93,'Teador','Kington','2013-08-13',160798,1),(94,'Harriot','Casemore','2012-06-09',136108,4),(95,'Morgen','Hamlen','2010-06-13',132306,1),(96,'Liuka','Somers','2003-03-10',185538,2),(97,'Hester','Quinton','2015-03-10',175791,2),(98,'Nertie','Clewley','2012-07-20',42113,3),(99,'Stillman','Antognoni','2005-09-14',128638,2),(100,'Chaim','Casotti','2009-07-23',179495,4);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-19  1:04:56
