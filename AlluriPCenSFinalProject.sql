CREATE DATABASE  IF NOT EXISTS `restaurant_search` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `restaurant_search`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: restaurant_search
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `check_location`
--

DROP TABLE IF EXISTS `check_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `check_location` (
  `member` int NOT NULL,
  `location` int NOT NULL,
  PRIMARY KEY (`member`,`location`),
  KEY `location` (`location`),
  CONSTRAINT `check_location_ibfk_1` FOREIGN KEY (`member`) REFERENCES `member` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `check_location_ibfk_2` FOREIGN KEY (`location`) REFERENCES `location` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check_location`
--

LOCK TABLES `check_location` WRITE;
/*!40000 ALTER TABLE `check_location` DISABLE KEYS */;
INSERT INTO `check_location` VALUES (3,15);
/*!40000 ALTER TABLE `check_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `postmates` tinyint(1) DEFAULT NULL,
  `grubhub` tinyint(1) DEFAULT NULL,
  `doordash` tinyint(1) DEFAULT NULL,
  `uber_eats` tinyint(1) DEFAULT NULL,
  `restaurant` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `restaurant` (`restaurant`),
  CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`restaurant`) REFERENCES `restaurant` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,1,1,1,1,1),(2,1,1,1,1,2),(3,1,1,1,1,3),(4,1,1,1,1,4),(5,1,1,1,1,5),(6,0,0,0,0,6),(7,1,1,1,1,7),(8,1,1,1,1,8),(9,1,1,1,1,9),(10,1,1,1,1,10),(11,1,1,1,1,11),(12,1,1,1,1,12),(13,1,1,1,1,13),(14,1,1,1,1,14),(15,1,1,1,1,15),(16,1,1,1,1,16),(17,1,1,1,1,17),(18,1,1,1,1,18),(19,1,1,1,1,19),(20,1,1,1,1,20),(21,0,0,0,0,21),(22,1,1,1,1,22),(23,0,0,0,0,23),(24,0,0,0,0,24),(25,0,0,0,0,25),(26,1,1,1,1,26),(27,1,1,1,1,27),(28,1,1,1,1,28),(29,1,1,1,1,29),(30,1,1,1,1,30),(31,0,0,0,0,31),(32,1,1,1,1,32),(33,1,1,1,1,33),(34,1,1,1,1,34),(35,1,1,1,1,35),(36,1,1,1,1,36),(37,1,1,1,1,37),(38,1,1,1,1,38),(39,1,1,1,1,39),(40,1,1,1,1,40),(41,1,1,1,1,41),(42,1,1,1,1,42),(43,0,0,0,0,43),(44,1,1,1,1,44),(45,1,1,1,1,45),(46,1,1,1,1,46),(47,1,1,1,1,47),(48,1,1,1,1,48),(49,1,1,1,1,49),(50,1,1,1,1,50),(51,1,1,1,1,51),(52,1,1,1,1,52),(53,1,1,1,1,53),(54,1,1,1,1,54),(55,1,1,1,1,55),(56,1,1,1,1,56),(57,1,1,1,1,57),(58,1,1,1,1,58),(59,1,1,1,1,59),(60,1,1,1,1,60),(61,1,1,1,1,61),(62,1,1,1,1,62),(63,1,1,1,1,63),(64,1,1,1,1,64),(65,1,1,1,1,65),(66,1,1,1,1,66),(67,1,1,1,1,67),(68,1,1,1,1,68),(69,1,1,1,1,69),(70,1,1,1,1,70),(71,1,1,1,1,71),(72,1,1,1,1,72),(73,1,1,1,1,73),(74,1,1,1,1,74),(75,1,1,1,1,75),(76,1,1,1,1,76),(77,1,1,1,1,77),(78,1,1,1,1,78),(79,1,1,1,1,79),(80,1,1,1,1,80),(81,1,1,1,1,81),(82,1,1,1,1,82),(83,1,1,1,1,83),(84,1,1,1,1,84),(85,1,1,1,1,85),(86,1,1,1,1,86),(87,0,0,0,0,87),(88,0,0,0,0,88),(89,1,1,1,1,89),(90,1,1,1,1,90),(91,1,1,1,1,91),(92,1,1,1,1,92),(93,1,1,1,1,93),(94,1,1,1,1,94);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `phone_num` char(11) DEFAULT NULL,
  `street` varchar(64) NOT NULL,
  `city` varchar(64) NOT NULL,
  `zip` varchar(7) NOT NULL,
  `state` char(2) NOT NULL,
  `restaurant` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `restaurant` (`restaurant`),
  CONSTRAINT `location_ibfk_1` FOREIGN KEY (`restaurant`) REFERENCES `restaurant` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'16172660040','309 Huntington Ave','Boston','02115','MA',1),(2,'16174425555','1041 Tremont St','Boston','02115','MA',2),(3,'16172979585','1282 Boylston St','Boston','02115','MA',3),(4,'16176700460','315 Huntington Ave','Boston','02115','MA',4),(5,'16172478801','82 Westland Ave','Boston','02115','MA',5),(6,'16172368784','50 Gainsborough St','Boston','02115','MA',6),(7,'16179363651','269 Huntington Ave','Boston','02115','MA',7),(8,'16172664605','305 Huntington Ave','Boston','02115','MA',8),(9,'18579911647','1282 Boylston St','Boston','02115','MA',9),(10,'','329 Huntington Ave','Boston','02115','MA',10),(11,'16174258565','289 Huntington Ave','Boston','02115','MA',11),(12,'16172667461','305 Huntington Ave','Boston','02115','MA',12),(13,'16174429280','452 Huntington Ave','Boston','02115','MA',13),(14,'16172669464','325 Huntington Ave','Boston','02115','MA',14),(15,'18573173868','265 Massachusetts Ave','Boston','02115','MA',15),(16,'16172666080','313 Huntington Ave','Boston','02115','MA',16),(17,'16172638989','369 Huntington Ave','Boston','02115','MA',17),(18,'16174500910','392 Huntington Ave Ste 101','Boston','02115','MA',18),(19,'','359 Huntington Ave','Boston','02115','MA',19),(20,'16172625377','177 Massachusetts Ave','Boston','02115','MA',20),(21,'16172077742','783 Tremont St','Boston','02118','MA',21),(22,'16172367907','14 Westland Ave','Boston','02115','MA',22),(23,'16179363930','535 Columbus Ave','Boston','02118','MA',23),(24,'16172086292','10 Westland Ave','Boston','02115','MA',24),(25,'16179363490','782 Tremont St','Boston','02118','MA',25),(26,'18572335427','105 Huntington Ave','Boston','02199','MA',26),(27,'18579570949','800 Boylston Unit 107','Boston','02199','MA',27),(28,'18572334560','1100 Boylston St','Boston','02215','MA',28),(29,'16175360415','334 Massachusetts Ave','Boston','02115','MA',29),(30,'17816458080','52 Queensberry St','Boston','02215','MA',30),(31,'16178590030','3 Lansdowne St','Boston','02215','MA',31),(32,'16175451060','1321 Boylston St','Boston','02215','MA',32),(33,'18573105194','66 Hereford St','Boston','02115','MA',33),(34,'16175365723','431 Columbus Ave','Boston','02116','MA',34),(35,'16172623888','45 Gainsborough St','Boston','02115','MA',35),(36,'16175859909','129 Jersey St','Boston','02215','MA',36),(37,'18574492500','1 Dalton St','Boston','02115','MA',37),(38,'16172629090','92 Peterborough St','Boston','02215','MA',38),(39,'16174253400','120 Huntington Ave','Boston','02116','MA',39),(40,'16179827118','175 Massachusetts Ave','Boston','02115','MA',40),(41,'16173759663','58 Hemenway St','Boston','02115','MA',41),(42,'16172627700','96 Peterborough St','Boston','02215','MA',42),(43,'16174271079','1035 Tremont St','Boston','02120','MA',43),(44,'18573504305','251 Massachusetts Ave','Boston','02115','MA',44),(45,'16172668888','179 Massachusetts Ave','Boston','02115','MA',45),(46,'16172676336','150 Huntington Ave','Boston','02115','MA',46),(47,'16173030560','145 Dartmouth St','Boston','02116','MA',47),(48,'18572653254','197A Massachusetts Ave','Boston','02115','MA',48),(49,'16175661088','25 Evans Way','Boston','02115','MA',49),(50,'18572332255','30 Dalton St','Boston','02115','MA',50),(51,'16174219588','520 Columbus Ave','Boston','02118','MA',51),(52,'16179363955','1124 Boylston St','Boston','02115','MA',52),(53,'16178590969','94 Peterborough St','Boston','02215','MA',53),(54,'16175369700','502 Massachusetts Ave','Boston','02118','MA',54),(55,'18572504641','1116 Boylston St','Boston','02215','MA',55),(56,'16172868872','1346 Boylston St','Boston','02215','MA',56),(57,'16174509000','1310 Boylston St','Boston','02215','MA',57),(58,'18572770800','314 Newbury St','Boston','02115','MA',58),(59,'16175361100','604 Columbus Ave','Boston','02118','MA',59),(60,'16176700507','1271 Boylston St','Boston','02215','MA',60),(61,'16172672828','6 Hemenway St','Boston','02115','MA',61),(62,'16174424600','958 Tremont St','Boston','02120','MA',62),(63,'16179363657','263 Huntington Ave','Boston','02115','MA',63),(64,'18572638168','86 Peterborough St','Boston','02215','MA',64),(65,'16174420999','1002 Tremont St','Boston','02120','MA',65),(66,'16174240900','130 Jersey St','Boston','02215','MA',66),(67,'16178679999','250 Huntington Ave','Boston','02115','MA',67),(68,'16179826688','333 Massachusetts Ave','Boston','02115','MA',68),(69,'16174270099','722 Shawmut Ave','Boston','02119','MA',69),(70,'16173589990','122 Belvidere St','Boston','02199','MA',70),(71,'16172628900','900 Boylston St','Boston','02115','MA',71),(72,'16178077300','800 Boylston St','Boston','02199','MA',72),(73,'16178679955','50 Dalton St','Boston','02115','MA',73),(74,'16174219595','1 Lansdowne St','Boston','02215','MA',74),(75,'16175367200','370A Commonwealth Ave','Boston','02215','MA',75),(76,'16172665088','433 Columbus Ave','Boston','02116','MA',76),(77,'16178597080','44 Gainsborough St','Boston','02115','MA',77),(78,'18572399736','84 Peterborough St','Boston','02215','MA',78),(79,'16173512500','327 Newbury St','Boston','02115','MA',79),(80,'16174278068','1031 Tremont St','Boston','02120','MA',80),(81,'16178670600','480 Columbus Ave','Boston','02118','MA',81),(82,'16172671755','542 Columbus Ave','Boston','02118','MA',82),(83,'16172664976','88 Peterborough St','Boston','02215','MA',83),(84,'16175369500','569 Columbus Ave','Boston','02118','MA',84),(85,'16172678688','338 Newbury St','Boston','02115','MA',85),(86,'18572398052','517 Columbus Ave','Boston','02118','MA',86),(87,'16172361464','201 Massachusetts Ave','Boston','02115','MA',87),(88,'16174450900','12 Dade St','Roxbury','02119','MA',88),(89,'16172621338','1338 Boylston St','Boston','02215','MA',89),(90,'16174241260','1265 Boylston St','Boston','02215','MA',90),(91,'16173997777','115 Huntington Ave','Boston','02199','MA',91),(92,'18572334313','150 Huntington Ave','Boston','02115','MA',92),(93,'16174210104','100 Peterborough St','Boston','02215','MA',93),(94,'16179826953','1 Haviland St','Boston','02115','MA',94);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `street` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `zip` varchar(7) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'James Ji','700 Columbus Ave','Boston','02120','MA'),(2,'Joel Lee','458 Huntington Ave','Boston','02121','MA'),(3,'Jayden Lee','1110 Commonwealth Ave','Boston','02122','MA'),(4,'Joe Kim','744 Columbus Ave','Boston','02123','MA'),(5,'Katie Smith','780 Columbus Ave','Boston','02124','MA'),(6,'Annie Gokhale','746 Columbus Ave','Boston','02125','MA'),(7,'Sandra Jones','747 Columbus Ave','Boston','02126','MA'),(8,'John Doe','744 Columbus Ave','Boston','08820','MA'),(9,'Elizabeth Su','157 Hemenway St','Boston','02115','MA'),(12,'Dhruv Patel','171 Hemenway St','Boston','02126','MA'),(15,'Pranathi ','171 hemenway st','boston','02120','MA');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `on_restaurantlist`
--

DROP TABLE IF EXISTS `on_restaurantlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `on_restaurantlist` (
  `restaurant` int NOT NULL,
  `restaurant_list` int NOT NULL,
  PRIMARY KEY (`restaurant`,`restaurant_list`),
  KEY `restaurant_list` (`restaurant_list`),
  CONSTRAINT `on_restaurantlist_ibfk_1` FOREIGN KEY (`restaurant`) REFERENCES `restaurant` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `on_restaurantlist_ibfk_2` FOREIGN KEY (`restaurant_list`) REFERENCES `restaurantlist` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `on_restaurantlist`
--

LOCK TABLES `on_restaurantlist` WRITE;
/*!40000 ALTER TABLE `on_restaurantlist` DISABLE KEYS */;
INSERT INTO `on_restaurantlist` VALUES (12,1),(17,1),(38,1),(42,1),(56,1),(75,1),(5,2),(8,2),(12,2),(13,2),(27,2),(28,2);
/*!40000 ALTER TABLE `on_restaurantlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `website` text,
  `avg_rating` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Amelia\'s Taqueria','http://www.ameliastaqueria.com/',4.40),(2,'Bangkok Pinto','http://www.bangkok-pinto.com/',4.60),(3,'Blaze Pizza','http://www.blazepizza.com/locations/boston-boylston-st/',4.50),(4,'Boston Shawarma','https://www.boston-shawarma.com/',4.70),(5,'Cappy\'s Pizza & Subs','ordercappyspizza.com',3.70),(6,'Dos Diablos Taco Bar','',3.50),(7,'El Jefe\'s Taqueria','http://www.eljefestaqueria.com/',4.00),(8,'Gyroscope','https://gyroscopeboston.com/',4.30),(9,'Honeygrow','https://www.honeygrow.com/?utm_source=gmb&utm_medium=Yext&y_source=1_MTc5NjcwNjgtNzE1LWxvY2F0aW9uLmdvb2dsZV93ZWJzaXRlX292ZXJyaWRl',4.30),(10,'Mamacita Authentic Mexican Comida','http://mamacitaboston.com/',4.30),(11,'Panera Bread','https://locations.panerabread.com/ma/boston/289-huntington-avenue.html?utm_medium=yext&utm_source=local&utm_campaign=yext&utm_content=local-search',3.90),(12,'Sprout','http://www.sproutboston.com/',4.30),(13,'University House of Pizza','https://www.universityhousepizza.com/',3.90),(14,'Wings Over Boston','https://order.wingsover.com/',3.50),(15,'Energize','http://www.energizeboston.com/',4.90),(16,'Poke Station','https://pokestationandkitchen.business.site/',4.20),(17,'Tatte Bakery and Cafe','https://tattebakery.com/',4.40),(18,'Qdoba','https://www.qdoba.com/',4.20),(19,'b.good','https://www.bgood.com/our-menu',4.20),(20,'Pho Basil','http://www.phobasilboston.com/',4.50),(21,'ilona','http://www.ilonasouthend.com/',4.50),(22,'Ichiban Yakitori Sushi House','http://www.ichibanboston.net/',4.20),(23,'Five Horses Tavern','http://fivehorsestavern.com/boston',4.40),(24,'The Westland','http://www.westlandboston.com/',4.20),(25,'MIDA','http://www.midaboston.com/',4.50),(26,'Pressed Cafe','http://www.pressedcafe.com/',4.60),(27,'Earls Kitchen + Bar','https://earls.ca/locations/prudential-center',4.40),(28,'Boston Burger Co.','https://www.bostonburgercompany.com/',4.50),(29,'Lucy Ethiopian Cafe','https://lucyethiopiancafe.business.site/?utm_source=gmb&utm_medium=referral',4.40),(30,'Sufra Mediterranean Food','https://www.suframediterraneanfood.com/',4.40),(31,'Cheeky Monkey Brewing','http://www.cheekymonkeyboston.com/',4.20),(32,'Eventide','http://eventidefenway.com/',4.30),(33,'Santouka Back Bay','https://santouka-usa.com/locations',4.50),(34,'Giacomo\'s','https://www.giacomossouthend.com/',4.30),(35,'Symphony Sushi','http://www.symphonysushi.com/',4.30),(36,'Thaitation','http://www.bostonthaitation.com/?utm_source=gmb&utm_medium=website',4.20),(37,'Zuma','https://zumarestaurant.com/locations/boston/',4.40),(38,'El PÃ©lon Taqueria','http://www.elpelon.com/',4.50),(39,'LUCIE','http://www.luciebackbay.com/',4.00),(40,'Haju Kitchen','https://haju-kitchen.business.site/',4.40),(41,'Woody\'s Grill and Tap','https://woodys-grill-tap.business.site/?utm_source=gmb&utm_medium=referral',4.60),(42,'Phinista','http://www.phinista.com/',4.50),(43,'Ali\'s Roti Restaurant and Takeout','',4.30),(44,'Mumbai Spice','http://mumbaispiceboston.com/',3.90),(45,'Dumpling Palace','https://www.dumpling-palace.com/',3.60),(46,'Thornton\'s','http://thorntonsboston.com/',4.40),(47,'Tasty Burger','http://www.tastyburger.com/',4.20),(48,'Sombrero Chiquito','http://www.sombreroboston.com/',4.50),(49,'Cafe G','https://www.gardnermuseum.org/visit/cafe',4.40),(50,'Flour Bakery + Cafe','http://flourbakery.com/',4.60),(51,'Shun\'s Kitchen','http://www.shunskitchen.com/',4.30),(52,'Shah\'s Halal','http://www.shahshalalfood.com/boston',4.20),(53,'Rod Thai Family Taste','http://www.rodthaifenway.com/',4.30),(54,'Jugos Supremo','http://www.visitjugos.com/',4.40),(55,'The Bebop','https://www.thebebopboston.com/',4.50),(56,'CAVA','https://cava.com/locations/fenway-ma',4.50),(57,'Citizen Public House & Oyster Bar','http://www.citizenpub.com/',4.30),(58,'Grand Tour','http://grandtourboston.com/',4.50),(59,'Darryl\'s Corner Bar & Kitchen','http://dcbkboston.com/',4.30),(60,'Hojoko','http://hojokoboston.com/',4.40),(61,'PadThai Cafe','http://www.padthai.cafe/',4.30),(62,'Slade\'s Bar & Grill','http://sladesbarandgrill.com/',4.20),(63,'Five Guys','https://restaurants.fiveguys.com/263-huntington-ave',4.30),(64,'Sushi Kappo','http://sushikappo.com/',4.30),(65,'Good Eats Pizza & Subs','https://www.goodeatspizzaandsubs.com/',4.00),(66,'M&J Teriyaki','http://www.mjteriyaki-ma.com/',4.40),(67,'Ginger Exchange','https://www.gingerexchange.com/',4.20),(68,'CaffÃ© Bene','http://places.singleplatform.com/caffebene-2/menu?ref=google',4.40),(69,'Dayib Cafe','http://places.singleplatform.com/dayib-cafe/menu?ref=google',4.50),(70,'Eddie V\'s Prime Seafood','https://www.eddiev.com/locations/ma/boston/boston/8523?cmpid=br:ev_ag:ie_ch:dry_ca:EVGMB_sn:gmb_gt:boston-ma-8523_pl:locurl_rd:1022',4.50),(71,'The Capital Grille','https://www.thecapitalgrille.com/locations/ma/boston/boston/8047?cmpid=br:tcg_ag:ie_ch:loc_ca:TCGGMB_sn:gmb_gt:boston-ma-8047_pl:locurl_rd:1042',4.60),(72,'Eataly','https://www.eataly.com/us_en/stores/boston/',4.30),(73,'Summer Shack','https://www.summershackrestaurant.com/',4.30),(74,'Loretta\'s Last Call','http://www.lorettaslastcall.com/',4.20),(75,'UNI','https://uni-boston.com/',4.30),(76,'Anchovies','https://anchoviesbar.com/',4.50),(77,'Pavement Coffeehouse','http://www.pavementcoffeehouse.com/',4.30),(78,'Bennett\'s Sandwich Shop','http://www.bennettssandwichshop.com/',4.40),(79,'Sonsie','http://www.sonsieboston.com/',4.10),(80,'Sunrise Chinese Food','http://www.sunrisechinesefoodma.com/?utm_source=gmb&utm_medium=website',3.30),(81,'Petit Robert Bistro','http://www.petitrobertbistro.com/',4.40),(82,'House of Siam','https://houseofsiamboston.com/',4.20),(83,'Gyro City','https://gyrocity.com/',4.50),(84,'SRV','http://www.srvboston.com/menu.htm',4.60),(85,'Trident Booksellers & CafÃ©','http://www.tridentbookscafe.com/',4.50),(86,'Cafe Madeleine','https://www.facebook.com/cafemadeleinesouthend/',4.60),(87,'Saigon Fusion','',4.50),(88,'Haley House Bakery CafÃ©','http://haleyhouse.org/what-we-do/bakery-cafe/',4.60),(89,'Basho Japanese Brasserie','https://direct.chownow.com/order/8409/locations/11323',4.10),(90,'SOJUba','http://sojubaboston.com/',4.00),(91,'The Cheesecake Factory','https://locations.thecheesecakefactory.com/ma/boston-52.html?utm_source=Google&utm_medium=Maps&utm_campaign=Google+Places',4.30),(92,'Revolution Health Kitchen','http://www.revolutionhealthkitchen.com/',4.60),(93,'Thornton\'s Fenway Grille','http://www.thorntonsgrille.com/',4.40),(94,'Love Art Sushi','http://www.loveartsushi.com/',4.50);
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurantlist`
--

DROP TABLE IF EXISTS `restaurantlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurantlist` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `creator` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `creator` (`creator`),
  CONSTRAINT `restaurantlist_ibfk_1` FOREIGN KEY (`creator`) REFERENCES `member` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurantlist`
--

LOCK TABLES `restaurantlist` WRITE;
/*!40000 ALTER TABLE `restaurantlist` DISABLE KEYS */;
INSERT INTO `restaurantlist` VALUES (1,'Restaurants to Try',2),(2,'Friday night',2),(4,'Casual Spots',6);
/*!40000 ALTER TABLE `restaurantlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `rating` decimal(4,2) DEFAULT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `restaurant` int NOT NULL,
  `member` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `restaurant` (`restaurant`),
  KEY `member` (`member`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`restaurant`) REFERENCES `restaurant` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`member`) REFERENCES `member` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,3.00,'Good',3,1),(2,4.00,'Food was good',1,2),(3,4.00,'Great customer service',2,3),(4,2.00,'Don\'t recommend going with friends',5,4),(5,5.00,'Love the pad thai',2,5);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_delivery`
--

DROP TABLE IF EXISTS `search_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_delivery` (
  `member` int NOT NULL,
  `delivery` int NOT NULL,
  PRIMARY KEY (`member`,`delivery`),
  KEY `delivery` (`delivery`),
  CONSTRAINT `search_delivery_ibfk_1` FOREIGN KEY (`member`) REFERENCES `member` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `search_delivery_ibfk_2` FOREIGN KEY (`delivery`) REFERENCES `delivery` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_delivery`
--

LOCK TABLES `search_delivery` WRITE;
/*!40000 ALTER TABLE `search_delivery` DISABLE KEYS */;
INSERT INTO `search_delivery` VALUES (4,3);
/*!40000 ALTER TABLE `search_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_specification`
--

DROP TABLE IF EXISTS `search_specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_specification` (
  `member` int NOT NULL,
  `specification` int NOT NULL,
  PRIMARY KEY (`member`,`specification`),
  KEY `specification` (`specification`),
  CONSTRAINT `search_specification_ibfk_1` FOREIGN KEY (`member`) REFERENCES `member` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `search_specification_ibfk_2` FOREIGN KEY (`specification`) REFERENCES `specification` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_specification`
--

LOCK TABLES `search_specification` WRITE;
/*!40000 ALTER TABLE `search_specification` DISABLE KEYS */;
INSERT INTO `search_specification` VALUES (1,6);
/*!40000 ALTER TABLE `search_specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `share_restaurantlist`
--

DROP TABLE IF EXISTS `share_restaurantlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `share_restaurantlist` (
  `member` int NOT NULL,
  `restaurant_list` int NOT NULL,
  PRIMARY KEY (`member`,`restaurant_list`),
  KEY `restaurant_list` (`restaurant_list`),
  CONSTRAINT `share_restaurantlist_ibfk_1` FOREIGN KEY (`member`) REFERENCES `member` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `share_restaurantlist_ibfk_2` FOREIGN KEY (`restaurant_list`) REFERENCES `restaurantlist` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share_restaurantlist`
--

LOCK TABLES `share_restaurantlist` WRITE;
/*!40000 ALTER TABLE `share_restaurantlist` DISABLE KEYS */;
INSERT INTO `share_restaurantlist` VALUES (5,1),(8,2);
/*!40000 ALTER TABLE `share_restaurantlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialmedia`
--

DROP TABLE IF EXISTS `socialmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socialmedia` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `facebook` varchar(300) DEFAULT NULL,
  `instagram` varchar(300) DEFAULT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `restaurant` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `restaurant` (`restaurant`),
  CONSTRAINT `socialmedia_ibfk_1` FOREIGN KEY (`restaurant`) REFERENCES `restaurant` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialmedia`
--

LOCK TABLES `socialmedia` WRITE;
/*!40000 ALTER TABLE `socialmedia` DISABLE KEYS */;
INSERT INTO `socialmedia` VALUES (1,'Amelia\'s Taqueria II','','',1),(2,'','bangkokpinto','',2),(3,'','','',3),(4,'Boston Shawarma','','',4),(5,'cappy\'s pizza & subs','cappyspizzaboston','',5),(6,'Dos Diablos Tacos','','',6),(7,'El Jefe\'s Taqueria','eateljefes','',7),(8,'Gyroscope Boston','gyroscopeboston','',8),(9,'Honeygrow','','',9),(10,'','','',10),(11,'Panera Bread','panerabread','panerabread',11),(12,'Sprout Boston','sproutboston','',12),(13,'University house of pizza - UHOP','','',13),(14,'Wings Over Boston','eatwingsover','',14),(15,'','energizeboston','',15),(16,'','pokestation313','',16),(17,'Tatte Bakery and Cafe','tattebakery','',17),(18,'Qdoba','qdoba','qdoba',18),(19,'b.good','b.goodofficial','b_good_',19),(20,'Pho Basil','phobasilboston','',20),(21,'ilona south end','ilonasouthend','',21),(22,'Ichiban Yakitori Sushi House','ichibanboston','',22),(23,'Five Horses Tavern','5horsestavern','',23),(24,'The Westland','westland_boston','',24),(25,'MIDA','midaboston','',25),(26,'Pressed Cafe','pressedcafe','pressedcafe',26),(27,'Earls Kitchen + Bar','earlsboston','',27),(28,'Boston Burger Co.','bostonburger_co','',28),(29,'Lucy Ethiopian Cafe','lucyethiopianrestaurant','',29),(30,'Sufra Mediterranean Food','suframediterreanfood','',30),(31,'Cheeky Monkey Brewing','cheekymnkybos','',31),(32,'Eventide','eventidefenway','',32),(33,'Santouka Back Bay','santouka_backbay','SantoukaUSA',33),(34,'Giacomo\'s','giacomos_southend','',34),(35,'Symphony Sushi','symphonysushiboston','',35),(36,'','','',36),(37,'Zuma','zumabostonofficial','',37),(38,'El PÃ©lon Taqueria','elpelontaqueria','',38),(39,'LUCIE','luciebackbay','',39),(40,'Haju Kitchen','hajukitchen','',40),(41,'Woody\'s Grill and Tap','woodysfenway','',41),(42,'Phinista','phinista','',42),(43,'Ali\'s Roti Restaurant and Takeout','','',43),(44,'Mumbai Spice','mumbaispice_boston','',44),(45,'Dumpling Palace','dumplingpalaceboston','',45),(46,'Thornton\'s Restaurant','thorntonsrestaurantboston','',46),(47,'Tasty Burger','tastyburgerusa','TastyBurgerUSA',47),(48,'Sombrero Chiquito','','',48),(49,'Cafe G','isgmcafeg','',49),(50,'Flour Bakery + Cafe','flourbakeryandcafe','',50),(51,'Shun\'s Kitchen','shunskitchen_southend','',51),(52,'Shah\'s Halal','shahshalalfood','',52),(53,'','rodthaifamily','',53),(54,'Jugos','supremoboston','',54),(55,'The Bebop','thebebopboston','',55),(56,'CAVA','cava','cava',56),(57,'Citizen Public House & Oyster Bar','citizenboston','',57),(58,'Grand Tour','grandtourboston','',58),(59,'Darryl\'s Corner Bar & Kitchen','dcbkboston','',59),(60,'Hojoko','hojokoboston','',60),(61,'','','',61),(62,'Slade\'s Bar & Grill','slades.boston','',62),(63,'Five Guys','fiveguys','fiveguys',63),(64,'Sushi Kappo','sushikappo','',64),(65,'','','',65),(66,'','','',66),(67,'Ginger Exchange','gingerexchange','',67),(68,'CaffÃ© Bene','caffebeneboston','caffebeneusa',68),(69,'Dayib Cafe','','',69),(70,'Eddie V\'s Prime Seafood','eddievs_','',70),(71,'The Capital Grille','thecapitalgrille','',71),(72,'Eataly','eatalyboston','eatalyboston',72),(73,'Summer Shack','jwsummershack','',73),(74,'Loretta\'s Last Call','lorettaslastcall','',74),(75,'UNI Boston','uni_boston','',75),(76,'Anchovies Bar','anchoviesbar','',76),(77,'Pavement Coffeehouse','pavementcoffee','pavementcoffee',77),(78,'Bennett\'s Sandwich Shop','bennettssandwichshop','',78),(79,'Sonsie','sonsieboston','',79),(80,'','','',80),(81,'Petit Robert Bistro','petitrobertbistro','',81),(82,'House of Siam','','',82),(83,'Gyro City','gyrocityboston','',83),(84,'SRV','srvboston','',84),(85,'Trident Booksellers & CafÃ©','tridentbooks','',85),(86,'Cafe Madeleine','','',86),(87,'','','',87),(88,'Haley House Bakery CafÃ©','haleyhouseboston','',88),(89,'Basho Japanese Brasserie','bashosuhi','',89),(90,'SOJUba','sojubaboston','',90),(91,'The Cheesecake Factory','cheesecakefactory','cheesecake',91),(92,'Revolution Health Kitchen','rhkboston','',92),(93,'Thornton\'s Fenway Grille','thorntonsfenway','',93),(94,'By Love Art','byloveart','',94);
/*!40000 ALTER TABLE `socialmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specification`
--

DROP TABLE IF EXISTS `specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specification` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `distance` decimal(4,2) DEFAULT NULL,
  `cusine` varchar(45) DEFAULT NULL,
  `price_range` varchar(4) DEFAULT NULL,
  `accept_husky` tinyint(1) DEFAULT NULL,
  `characteristics` varchar(1000) DEFAULT NULL,
  `restaurant` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `restaurant` (`restaurant`),
  CONSTRAINT `specification_ibfk_1` FOREIGN KEY (`restaurant`) REFERENCES `restaurant` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specification`
--

LOCK TABLES `specification` WRITE;
/*!40000 ALTER TABLE `specification` DISABLE KEYS */;
INSERT INTO `specification` VALUES (1,0.10,'Mexican','$',0,'vegetarian options',1),(2,0.30,'Thai','$',1,'women-owned, vegeterian options',2),(3,0.60,'Fast food','$',1,'vegetarian options',3),(4,0.10,'Middle Eastern','$',1,'vegetarian options, halal food, healthy options',4),(5,0.30,'Italian','$',1,'',5),(6,0.20,'Fast food','$$',1,'vegetarian options',6),(7,0.20,'Mexican','$',1,'vegetarian options',7),(8,0.10,'Mexican','$',1,'vegetarian options',8),(9,0.50,'Greek/Mediterranean','$$',1,'vegetarian options',9),(10,0.09,'Salad','$',1,'vegetarian options',10),(11,0.20,'Seafood','$$',1,'vegetarian options',11),(12,0.10,'Mexican','$',1,'',12),(13,0.20,'Sandwiches','$',1,'',13),(14,0.09,'Salad','$$',1,'',14),(15,0.30,'Italian','$$',1,'vegetarian options',15),(16,0.10,'Fast food','$$',1,'',16),(17,0.10,'Juice Bar','$$',1,'vegetarian options',17),(18,0.10,'Japanese','$',1,'',18),(19,0.09,'Cafe','$$',1,'vegetarian options',19),(20,0.40,'Mexican','$$',0,'vegetarian options',20),(21,0.40,'Sandwiches','$$',0,'',21),(22,0.30,'American','$$',0,'',22),(23,0.40,'Vietnamese','$$',0,'',23),(24,0.30,'Greek/Mediterranean','',0,'',24),(25,0.40,'Japanese','$$',0,'',25),(26,0.60,'American','$$',0,'vegetarian options',26),(27,0.60,'American','$$',0,'',27),(28,0.50,'Italian','$$',0,'',28),(29,0.30,'Spanish','$$',0,'',29),(30,0.50,'Sandwiches','$$',0,'vegetarian options',30),(31,0.60,'American','$',0,'',31),(32,0.60,'Greek/Mediterranean','$$$',0,'',32),(33,0.60,'Japanese','$$',0,'vegetarian options',33),(34,0.60,'American','$$',0,'vegetarian options',34),(35,0.20,'Ethiopian','$$',0,'vegetarian options',35),(36,0.50,'Greek/Mediterranean','$$',0,'vegetarian options',36),(37,0.50,'American','$$',0,'',37),(38,0.60,'Seafood','$',0,'',38),(39,0.60,'Seafood','$$',0,'',39),(40,0.40,'Japanese','$$',0,'',40),(41,0.40,'Italian','$$',0,'',41),(42,0.60,'Japanese','$$',0,'vegetarian options',42),(43,0.30,'Thai','$$',0,'',43),(44,0.30,'Japanese','$$',0,'',44),(45,0.40,'American','$',0,'',45),(46,0.50,'Mexican','$$',0,'vegetarian options',46),(47,0.60,'Italian','$',0,'',47),(48,0.40,'American','$',0,'',48),(49,0.50,'Korean','$$',0,'',49),(50,0.50,'American','$$',0,'',50),(51,0.50,'Vietnamese','$$',0,'vegetarian options',51),(52,0.50,'Indian','$',0,'',52),(53,0.60,'Indian','$$',0,'',53),(54,0.40,'Chinese','$',0,'',54),(55,0.50,'French','$$',0,'',55),(56,0.60,'French','$',0,'vegetarian options',56),(57,0.60,'Breakfast & Brunch','$$',0,'',57),(58,0.60,'Seafood','$$',0,'',58),(59,0.30,'Fast food','$$',0,'',59),(60,0.60,'Fast food','$$$',0,'',60),(61,0.50,'Chinese','$$',0,'',61),(62,0.30,'Mexican','$$',0,'',62),(63,0.20,'American','$$',0,'',63),(64,0.60,'Japanese','$',0,'vegetarian options',64),(65,0.30,'American','$',0,'',65),(66,0.50,'Cafe','$$',0,'vegetarian options',66),(67,0.30,'Southern','$$',0,'vegetarian options',67),(68,0.30,'American','$',0,'vegetarian options',68),(69,0.50,'Asian Fusion','$',0,'',69),(70,0.50,'Greek/Mediterranean','$$$$',0,'',70),(71,0.60,'Thai','$$$$',0,'',71),(72,0.60,'Halal','$$',0,'halal, vegetarain-options',72),(73,0.50,'Thai','$$',0,'',73),(74,0.60,'Juice Bar','$$',0,'',74),(75,0.60,'Mexican','$$$$',0,'vegetarian options',75),(76,0.60,'Irish','$$',0,'',76),(77,0.20,'All','$$',0,'vegetarian options',77),(78,0.60,'Greek/Mediterranean','$$',0,'',78),(79,0.60,'British','$$',0,'vegetarian options',79),(80,0.30,'Korean','$',0,'',80),(81,0.60,'Japanese','$$',0,'vegetarian options',81),(82,0.40,'French','$$',0,'',82),(83,0.60,'American','$',0,'',83),(84,0.40,'Southern','$$$',0,'vegetarian options',84),(85,0.60,'Breakfast & Brunch','$$',0,'vegetarian options',85),(86,0.50,'Japanese','$$',0,'',86),(87,0.40,'Thai','$$',0,'vegetarian options',87),(88,0.60,'American','$',0,'',88),(89,0.60,'American','$$',0,'',89),(90,0.60,'Fast food','$$',0,'',90),(91,0.60,'Japanese','$$',0,'vegetarian options',91),(92,0.50,'British','$',0,'',92),(93,0.60,'Italian','$$',0,'vegetarian options',93),(94,0.50,'Italian','$$',0,'vegetarian options',94);
/*!40000 ALTER TABLE `specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `views_socialmedia`
--

DROP TABLE IF EXISTS `views_socialmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `views_socialmedia` (
  `member` int NOT NULL,
  `social_media` int NOT NULL,
  PRIMARY KEY (`member`,`social_media`),
  KEY `social_media` (`social_media`),
  CONSTRAINT `views_socialmedia_ibfk_1` FOREIGN KEY (`member`) REFERENCES `member` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `views_socialmedia_ibfk_2` FOREIGN KEY (`social_media`) REFERENCES `socialmedia` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `views_socialmedia`
--

LOCK TABLES `views_socialmedia` WRITE;
/*!40000 ALTER TABLE `views_socialmedia` DISABLE KEYS */;
INSERT INTO `views_socialmedia` VALUES (6,4),(5,5),(15,18),(15,80);
/*!40000 ALTER TABLE `views_socialmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'restaurant_search'
--

--
-- Dumping routines for database 'restaurant_search'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_member` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_member`(user_name VARCHAR(64))
BEGIN 
 
 INSERT INTO member (name)
	VALUES (user_name); 
    
SELECT ID from member WHERE name = user_name; 

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_member_address` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_member_address`(user_name VARCHAR(64), street VARCHAR(64), 
city VARCHAR(64),zip VARCHAR(7), state CHAR(2))
BEGIN 
 
 INSERT INTO member (name, street, city, zip, state)
	VALUES (user_name, street, city, zip, state); 
    
    SELECT ID from member WHERE name = user_name; 

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_restaurant_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_restaurant_list`(rest_list VARCHAR(50), rest VARCHAR(100), member INT)
BEGIN 
 
 INSERT INTO on_restaurantlist (restaurant, restaurant_list)
 VALUES ((SELECT ID FROM restaurant where name = rest), 
		 (SELECT ID FROM restaurantlist where 
         restaurantlist.name = rest_list AND creator = member));
         

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_rest_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_rest_list`(name VARCHAR(50), member INT)
BEGIN 
 
 INSERT INTO restaurantList (name, creator)
	VALUES (name, member); 

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_review` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_review`(rating double, comment VARCHAR(300), 
restaurant_name VARCHAR(100), member_ID INT)
BEGIN 
 
 INSERT INTO review (rating, comment, restaurant, member)
	VALUES (rating, 
			comment, 
            (SELECT ID FROM restaurant 
            WHERE name = restaurant_name),
            (SELECT ID FROM member
            WHERE ID = member_ID)); 

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_share_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_share_list`(list VARCHAR(50), shared VARCHAR(64), creator INT)
BEGIN 
 
 INSERT INTO share_restaurantlist (member, restaurant_list)
 VALUES ((SELECT ID FROM member where name = shared), 
		 (SELECT ID FROM restaurantlist where 
         (name = list AND creator = creator )));
         

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_website` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_website`(web TEXT, rest INT)
BEGIN 
 
 UPDATE restaurant
 SET website  = web
 WHERE 
restaurant.ID = rest; 

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_cusine` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_cusine`(cusine varchar(45))
BEGIN 
 
 SELECT name, website, avg_rating, distance, cusine, price_range, accept_husky, characteristics FROM 
 (SELECT * FROM specification) as spec
 JOIN
 restaurant as r
 ON r.ID = spec.restaurant
 WHERE spec.cusine = cusine;
 
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_distance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_distance`(dist decimal(4,2))
BEGIN 
 
 SELECT name, website, avg_rating, distance, cusine, price_range, accept_husky, characteristics FROM 
 (SELECT * FROM specification) as spec
 JOIN
 restaurant as r
 ON r.ID = spec.restaurant
 WHERE distance <= dist
 ORDER BY distance ASC;
 
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_husky` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_husky`(husky boolean)
BEGIN 
 
 SELECT name, website, avg_rating, distance, cusine, price_range, accept_husky, characteristics FROM 
 (SELECT * FROM specification) as spec
 JOIN
 restaurant as r
 ON r.ID = spec.restaurant
 WHERE spec.accept_husky = husky;
 
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_price` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_price`(price varchar(4))
BEGIN 
 
 SELECT name, website, avg_rating, distance, cusine, price_range, accept_husky, characteristics FROM 
 (SELECT * FROM specification) as spec
 JOIN
 restaurant as r
 ON r.ID = spec.restaurant
 WHERE CHAR_LENGTH(spec.price_range) <= CHAR_LENGTH(price)
 ORDER BY CHAR_LENGTH(price_range) DESC;
 
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_member` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_member`(member INT)
BEGIN 
 
 DELETE FROM member 
 WHERE ID = member;

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_rest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_rest`(rest INT)
BEGIN 
 
 DELETE FROM restaurant 
 WHERE ID = rest;

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_rest_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_rest_list`(list VARCHAR(50), member INT)
BEGIN 
 
 DELETE FROM restaurantlist
 WHERE 
 (list = name AND creator = member);

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_review` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_review`(rating double, rest VARCHAR(100), member INT)
BEGIN 
 
 DECLARE rev_ID INT; 
 
 SELECT rev.ID INTO rev_ID FROM 
 (SELECT * FROM review) as rev
 JOIN 
 restaurant 
ON rev.restaurant = restaurant.ID
WHERE
(rating = rating AND restaurant.name = rest AND member = member); 

DELETE FROM Review 
WHERE 
ID = rev_ID;

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_rating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_rating`(rating decimal(4,2))
BEGIN 
 
 
 SELECT name, website, avg_rating, distance, cusine, price_range, accept_husky, characteristics FROM 
 (SELECT * FROM specification) as spec
 JOIN
 restaurant as r
 ON r.ID = spec.restaurant
 WHERE r.avg_rating >= rating
 ORDER BY avg_rating ASC;
 
 
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_chars` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_chars`(chars VARCHAR(1000), rest INT)
BEGIN 
 
 UPDATE specification
 SET characteristics  = chars
 WHERE 
 restaurant = rest; 

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_cusine` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_cusine`(cus VARCHAR(45), rest INT)
BEGIN 
 
 UPDATE specification
 SET cusine = cus
 WHERE 
 restaurant = rest; 

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_distance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_distance`(dist decimal(4,2), rest INT)
BEGIN 
 
 UPDATE specification
 SET distance = dist
 WHERE 
 restaurant = rest; 

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_husky` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_husky`(husky boolean, rest INT)
BEGIN 
 
 UPDATE specification
 SET accept_husky = husky
 WHERE 
 restaurant = rest; 

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_member_address` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_member_address`(member INT, street VARCHAR(64), 
city VARCHAR(64),zip VARCHAR(7), state CHAR(2))
BEGIN 
 
UPDATE member 
SET
	street = street,
    city = city, 
    zip = zip, 
    state = state
	WHERE ID = member; 

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_price` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_price`(price VARCHAR(4), rest INT)
BEGIN 
 
 UPDATE specification
 SET price_range = price
 WHERE 
 restaurant = rest; 

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_delivery` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_delivery`(rest varchar(100), member INT)
BEGIN 
 
 
 SELECT postmates, grubhub, doordash, uber_eats FROM 
(SELECT * FROM delivery) as d
 JOIN
 restaurant as r
 ON d.restaurant = r.ID
 WHERE r.name = rest;
 
 INSERT INTO search_delivery (member, delivery)
 VALUES (member, 
		 (SELECT d.ID FROM 
         (SELECT * FROM delivery) as d
         JOIN
         restaurant as r
         ON d.restaurant = r.ID
         WHERE r.name = rest));
 
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_list`(member int )
BEGIN 
 
 SELECT list.name,  GROUP_CONCAT(Distinct rest.name) as restaurants FROM 
 (SELECT * FROM restaurantlist) as list
 JOIN
 on_restaurantlist as r
 ON r.restaurant_list = list.ID
 JOIN
 restaurant as rest
 ON r.restaurant = rest.ID
 WHERE list.creator = member
 GROUP BY list.name;
 
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_location` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_location`(rest varchar(100), member INT)
BEGIN 
 
 SELECT name, phone_num, street, city, zip, state FROM 
 (SELECT * FROM location) as l
 JOIN 
 restaurant as r
 ON l.restaurant = r.ID
 WHERE r.name = rest;
 
INSERT INTO check_location (member, location)
 VALUES (member, 
		 (SELECT l.ID FROM 
         (SELECT * FROM location) as l
         JOIN
         restaurant as r
         ON l.restaurant = r.ID
         WHERE r.name = rest));
 
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_rest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_rest`()
BEGIN 
SELECT * FROM restaurant;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_rest_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_rest_list`(list VARCHAR(50))
BEGIN 
 
 SELECT rest.name as restaurants FROM 
 (SELECT * FROM restaurantlist) as list
 JOIN
 on_restaurantlist as r
 ON r.restaurant_list = list.ID
 JOIN
 restaurant as rest
 ON r.restaurant = rest.ID
 WHERE list.name = list;
 
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_rest_reviews` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_rest_reviews`(rest varchar(100))
BEGIN 
 
 
 SELECT rating, comment FROM 
 (SELECT * FROM review) as rev
 JOIN
 restaurant as r
 ON rev.restaurant = r.ID
 WHERE r.name = rest
 ORDER BY rating DESC;
 
 
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_socials` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_socials`(rest varchar(100), member INT)
BEGIN 
 
 
 SELECT facebook, twitter, instagram FROM 
(SELECT * FROM SocialMedia) as social
 JOIN
 restaurant as r
 ON social.restaurant = r.ID
 WHERE r.name = rest;
 
 INSERT INTO views_socialmedia (member, social_media)
 VALUES (member,
		(SELECT social.ID FROM
        (SELECT * FROM SocialMedia) as social
         JOIN
         restaurant as r
         ON social.restaurant = r.ID
         WHERE r.name = rest));
 
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_specs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_specs`(rest varchar(100), member INT)
BEGIN 
 
 SELECT name, website, avg_rating, distance, cusine, price_range, accept_husky, characteristics FROM 
 (SELECT * FROM specification) as spec
 JOIN
 restaurant as r
 ON r.ID = spec.restaurant
 WHERE r.name = rest;
 
INSERT INTO search_specification(member, specification)
 VALUES (member, 
		 (SELECT spec.ID FROM 
         (SELECT * FROM specification) as spec
         JOIN
         restaurant as r
         ON r.ID = spec.restaurant
         WHERE r.name = rest));
 
 
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-09 23:35:28
