-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: movie
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
-- Table structure for table `checkout`
--

DROP TABLE IF EXISTS `checkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkout` (
  `id` int NOT NULL AUTO_INCREMENT,
  `movieId` int NOT NULL,
  `customerId` int NOT NULL,
  `outDate` datetime DEFAULT NULL,
  `returnDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`movieId`,`customerId`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `customerId_idx` (`customerId`),
  KEY `movieId_idx` (`movieId`),
  CONSTRAINT `customerId` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`),
  CONSTRAINT `movieId` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout`
--

LOCK TABLES `checkout` WRITE;
/*!40000 ALTER TABLE `checkout` DISABLE KEYS */;
INSERT INTO `checkout` VALUES (20,4,1,'2021-12-08 17:44:10',NULL),(21,4,4,'2021-12-08 17:44:20','2021-12-09 09:00:37'),(22,2,1,'2021-12-08 17:46:06','2021-12-08 17:46:22'),(23,6,1,'2021-12-08 17:47:33','2021-12-08 17:47:40'),(24,5,4,'2021-12-09 08:21:46','2021-12-13 09:21:05'),(25,8,4,'2021-12-09 08:22:54','2021-12-09 08:55:12'),(26,8,1,'2021-12-09 08:23:41','2021-12-09 08:25:15'),(27,1,4,'2021-12-09 08:55:35','2021-12-09 09:00:33'),(28,2,1,'2021-12-09 08:55:53','2021-12-09 08:58:01'),(29,5,1,'2021-12-09 08:58:38','2021-12-09 08:58:45'),(30,4,4,'2021-12-09 09:00:44','2021-12-09 19:14:47'),(31,6,5,'2021-12-09 12:28:47','2021-12-09 12:29:16'),(32,4,4,'2021-12-09 19:15:00',NULL),(33,6,5,'2021-12-09 19:15:19',NULL),(34,8,6,'2021-12-12 18:53:04','2021-12-13 08:44:23'),(35,9,6,'2021-12-13 08:44:48','2021-12-13 08:53:08'),(36,12,6,'2021-12-13 08:53:37','2021-12-13 09:02:50'),(37,10,6,'2021-12-13 09:03:18','2021-12-13 09:36:48'),(38,5,4,'2021-12-13 09:21:18',NULL),(39,5,6,'2021-12-13 09:37:02',NULL);
/*!40000 ALTER TABLE `checkout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Evan'),(4,'Tim'),(5,'Madison'),(6,'Bill');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `movie_title` varchar(45) DEFAULT NULL,
  `movie_year` int DEFAULT NULL,
  `movie_length` int DEFAULT NULL,
  `movie_genre` varchar(45) DEFAULT NULL,
  `movie_release` varchar(45) DEFAULT NULL,
  `movie_rating` varchar(45) DEFAULT NULL,
  `movie_description` varchar(1000) DEFAULT NULL,
  `movie_totalCopies` int DEFAULT NULL,
  `movie_availableCopies` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Titanic',1997,194,'Romance','1997-12-19','PG-13','James Cameron\'s \"Titanic\" is an epic, action-packed romance set against the ill-fated maiden voyage of the R.M.S. Titanic; the pride and joy of the White Star Line and, at the time, the largest moving object ever built. She was the most luxurious liner of her era',10,10),(2,'Harold & Kumar Go to White Castle',2004,88,'Comedy','2004-07-30','R','Nerdy accountant Harold (John Cho) and his irrepressible friend, Kumar (Kal Penn), get stoned watching television and find themselves utterly bewitched by a commercial for White Castle.',10,10),(4,'Birdman',2014,119,'Drama','2014-10-15','R','Former cinema superhero Riggan Thomson (Michael Keaton) is mounting an ambitious Broadway production that he hopes will breathe new life into his stagnant career. It\'s risky, but he hopes that his creative gamble will prove that he\'s a real artist and not just a washed-up movie star. As opening night approaches, a castmate is injured, forcing Riggan to hire an actor (Edward Norton) who is guaranteed to shake things up. Meanwhile, Riggan must deal with his girlfriend, daughter and ex-wife.',2,0),(5,'Uncut Gems',2019,135,'Drama','2019-12-25','R','A charismatic jeweller makes a high-stakes bet that could lead to the windfall of a lifetime. In a precarious high-wire act, he must balance business, family and adversaries on all sides in pursuit of the ultimate win.',15,13),(6,'Twister',1996,113,'Action','1996-05-10','PG-13','During the approach of the most powerful storm in decades, university professor Dr. Jo Harding (Helen Hunt) and an underfunded team of students prepare the prototype for Dorothy, a ground-breaking tornado data-gathering device conceived by her estranged husband, Bill (Bill Paxton). When Harding tells Bill that Dorothy is ready for testing -- and that their privately funded rival Dr. Jonas Miller (Cary Elwes) has stolen the idea and built his own -- Bill rejoins the team for one last mission.',20,19),(8,'The Matrix',1999,136,'Action','1999-03-31','R','Neo (Keanu Reeves) believes that Morpheus (Laurence Fishburne), an elusive figure considered to be the most dangerous man alive, can answer his question -- What is the Matrix? Neo is contacted by Trinity (Carrie-Anne Moss), a beautiful stranger who leads him into an underworld where he meets Morpheus. They fight a brutal battle for their lives against a cadre of viciously intelligent secret agents. It is a truth that could cost Neo something more precious than his life.',5,5),(9,'The Greasy Strangler',2016,93,'Romance','2016-07-10','R','Ronnie (Michael St. Michaels) runs a disco walking tour along with his browbeaten son, Brayden (Sky Elobar). When a sexy, alluring woman named Janet (Elizabeth De Razzo) comes to take the tour, it begins a competition between father and son for her attentions. It also brings about the appearance of an oily, slimy, inhuman maniac who stalks the streets at night and strangles the innocent-soon dubbed the Greasy Strangler.',1,1),(10,'Pulp Fiction',1994,154,'Drama','1994-14-10','R','Vincent Vega (John Travolta) and Jules Winnfield (Samuel L. Jackson) are hitmen with a penchant for philosophical discussions. In this ultra-hip, multi-strand crime movie, their storyline is interwoven with those of their boss, gangster Marsellus Wallace (Ving Rhames) ; his actress wife, Mia (Uma Thurman) ; struggling boxer Butch Coolidge (Bruce Willis) ; master fixer Winston Wolfe (Harvey Keitel) and a nervous pair of armed robbers, \"Pumpkin\" (Tim Roth) and \"Honey Bunny\" (Amanda Plummer).',3,3),(12,'Spider-Man',2002,121,'Action','2002-03-05','PG-13','\"Spider-Man\" centers on student Peter Parker (Tobey Maguire) who, after being bitten by a genetically-altered spider, gains superhuman strength and the spider-like ability to cling to any surface. He vows to use his abilities to fight crime, coming to understand the words of his beloved Uncle Ben: \"With great power comes great responsibility.\"',10,10),(14,'Spider-Man',2002,121,'Action','2002-03-05','PG-13','\"Spider-Man\" centers on student Peter Parker (Tobey Maguire) who, after being bitten by a genetically-altered spider, gains superhuman strength and the spider-like ability to cling to any surface. He vows to use his abilities to fight crime, coming to understand the words of his beloved Uncle Ben: \"With great power comes great responsibility.\"',10,10);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-17  8:36:12
