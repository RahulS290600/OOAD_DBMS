-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: emp_platform_db
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(100) DEFAULT NULL,
  `employee_id` int NOT NULL,
  `post_id` int NOT NULL,
  `date_posted` datetime NOT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `employee_id` (`employee_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'Great post!',1,1,'2024-05-02 08:35:00',NULL,NULL),(2,'I found this very informative.',2,2,'2024-05-04 11:00:00',NULL,NULL),(3,'Thanks for sharing!',3,3,'2024-05-06 13:25:00',NULL,NULL),(4,'Interesting read.',4,4,'2024-05-08 10:15:00',NULL,NULL),(5,'Can you provide more details?',5,5,'2024-05-10 12:30:00',NULL,NULL),(6,'Looking forward to more posts like this.',6,6,'2024-05-12 14:45:00',NULL,NULL),(7,'This is exactly what I needed.',7,7,'2024-05-14 09:20:00',NULL,NULL),(8,'I have a question regarding this topic.',8,8,'2024-05-16 11:35:00',NULL,NULL),(9,'Well explained!',9,9,'2024-05-18 13:50:00',NULL,NULL),(10,'I disagree with some points.',10,10,'2024-05-20 15:05:00',NULL,NULL),(11,'Thank you for the insights.',1,11,'2024-05-22 08:40:00',NULL,NULL),(12,'Looking forward to the next part.',2,12,'2024-05-24 10:55:00',NULL,NULL),(13,'Could you explain this further?',3,13,'2024-05-26 12:10:00',NULL,NULL),(14,'Impressive work!',4,14,'2024-05-28 14:25:00',NULL,NULL),(15,'I have a similar experience.',5,15,'2024-05-30 09:00:00',NULL,NULL),(16,'Can I get more examples?',6,16,'2024-06-01 11:15:00',NULL,NULL),(17,'This is very relevant.',7,17,'2024-06-03 13:30:00',NULL,NULL),(18,'Great job!',8,18,'2024-06-05 15:45:00',NULL,NULL),(19,'I appreciate the effort.',9,19,'2024-06-07 08:20:00',NULL,NULL),(20,'Looking forward to your next post.',10,20,'2024-06-09 10:35:00',NULL,NULL),(21,'Nice post!',1,1,'2024-06-11 08:45:00',NULL,NULL),(22,'This helped me a lot.',2,2,'2024-06-13 11:20:00',NULL,NULL),(23,'Can I share this?',3,3,'2024-06-15 13:35:00',NULL,NULL),(24,'I have a suggestion.',4,4,'2024-06-17 10:30:00',NULL,NULL),(25,'Thanks for the valuable information.',5,5,'2024-06-19 12:45:00',NULL,NULL),(26,'Keep up the good work!',6,6,'2024-06-21 14:00:00',NULL,NULL),(27,'Looking forward to more content.',7,7,'2024-06-23 09:15:00',NULL,NULL),(28,'I have a question.',8,8,'2024-06-25 11:30:00',NULL,NULL),(29,'I completely agree.',9,9,'2024-06-27 13:45:00',NULL,NULL),(30,'Great explanation!',10,10,'2024-06-29 15:00:00',NULL,NULL),(31,'Nice job!',1,11,'2024-07-01 08:10:00',NULL,NULL),(32,'This is very informative.',2,12,'2024-07-03 10:25:00',NULL,NULL),(33,'Can you clarify this?',3,13,'2024-07-05 12:40:00',NULL,NULL),(34,'Thanks for sharing your knowledge.',4,14,'2024-07-07 14:55:00',NULL,NULL),(35,'Looking forward to your next post.',5,15,'2024-07-09 09:10:00',NULL,NULL),(36,'I have a different perspective.',6,16,'2024-07-11 11:25:00',NULL,NULL),(37,'This is very relevant to me.',7,17,'2024-07-13 13:40:00',NULL,NULL),(38,'Excellent work!',8,18,'2024-07-15 15:55:00',NULL,NULL),(39,'I have a question about this topic.',9,19,'2024-07-17 08:05:00',NULL,NULL),(40,'Great content!',10,20,'2024-07-19 10:20:00',NULL,NULL),(41,'Thank you for the information',20,21,'2024-05-03 00:00:00',NULL,NULL),(42,'sample',9,9,'2024-05-03 00:00:00',NULL,NULL),(43,'THank You for the post',20,3,'2024-05-03 00:00:00',NULL,NULL),(44,'Very good post',19,11,'2024-05-03 00:00:00',NULL,NULL);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `dept_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Development'),(2,'Product Management'),(3,'Quality Assurance'),(4,'Research and Development'),(5,'Cyber Security'),(6,'Accounting'),(7,'Information Technology'),(8,'Technical Support'),(9,'Sales and Marketing'),(10,'Human Resources');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(20) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `dept_id` int NOT NULL,
  `position` varchar(60) DEFAULT NULL,
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` date NOT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `dept_id` (`dept_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'John Doe','john@example.com',1,'Software Engineer',1,NULL,'2024-05-02',NULL),(2,'Jane Smith','jane@example.com',2,'Product Manager',2,NULL,'2024-05-02',NULL),(3,'Alice Johnson','alice@example.com',3,'Quality Assurance Analyst',3,NULL,'2024-05-02',NULL),(4,'Bob Brown','bob@example.com',4,'Research Scientist',4,NULL,'2024-05-02',NULL),(5,'Emily Wilson','emily@example.com',5,'Pen Tester',5,NULL,'2024-05-02',NULL),(6,'Michael Davis','michael@example.com',6,'Accounts Manager',6,NULL,'2024-05-02',NULL),(7,'Sarah Taylor','sarah@example.com',7,'IT Specialist',7,NULL,'2024-05-02',NULL),(8,'David Lee','david@example.com',8,'Technical Support Engineer',8,NULL,'2024-05-02',NULL),(9,'Olivia Clark','olivia@example.com',9,'Sales Representative',9,NULL,'2024-05-02',NULL),(10,'Matthew Martinez','matthew@example.com',10,'HR Manager',10,NULL,'2024-05-02',NULL),(11,'Emma Anderson','emma@example.com',1,'Software Engineer',1,NULL,'2024-05-02',NULL),(12,'Daniel White','daniel@example.com',2,'Product Manager',2,NULL,'2024-05-02',NULL),(13,'Sophia Harris','sophia@example.com',3,'Quality Assurance Analyst',3,NULL,'2024-05-02',NULL),(14,'James Martin','james@example.com',4,'Research Scientist',4,NULL,'2024-05-02',NULL),(15,'Ava Thompson','ava@example.com',5,'Security Analyst',5,NULL,'2024-05-02',NULL),(16,'William Garcia','william@example.com',6,'Accountant',6,NULL,'2024-05-02',NULL),(17,'Mia Rodriguez','mia@example.com',7,'IT Specialist',7,NULL,'2024-05-02',NULL),(18,'Alexander Wilson','alexander@example.com',8,'Technical Support Engineer',8,NULL,'2024-05-02',NULL),(19,'Charlotte Martinez','charlotte@example.com',9,'Sales Representative',9,NULL,'2024-05-02',NULL),(20,'Ethan Taylor','ethan@example.com',10,'HR Intern',10,NULL,'2024-05-02',NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `author_id` int NOT NULL,
  `tag_id` int DEFAULT NULL,
  `date_published` datetime NOT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `author_id` (`author_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `post_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'Introduction to Machine Learning','Machine learning basics',1,1,'2024-05-01 08:30:00',NULL,NULL),(2,'Deep Dive into Neural Networks','Understanding neural network architecture',5,5,'2024-05-03 10:45:00',NULL,NULL),(3,'The Future of Artificial Intelligence','Exploring AI trends and advancements',2,2,'2024-05-04 14:20:00',NULL,NULL),(4,'Data Science for Beginners','Getting started with data science',6,3,'2024-05-05 09:15:00',NULL,NULL),(5,'Python Programming Essentials','Essential Python programming concepts',3,4,'2024-05-05 11:30:00',NULL,NULL),(6,'Natural Language Processing Fundamentals','Introduction to NLP techniques',7,6,'2024-05-06 13:00:00',NULL,NULL),(7,'Computer Vision Basics','Introduction to computer vision algorithms',4,7,'2024-05-07 10:00:00',NULL,NULL),(8,'Big Data Analytics Strategies','Analyzing large datasets efficiently',8,9,'2024-05-08 12:45:00',NULL,NULL),(9,'Internet of Things Applications','Exploring IoT use cases',10,10,'2024-05-10 15:30:00',NULL,NULL),(10,'Advanced Machine Learning Techniques','Advanced ML algorithms and applications',2,1,'2024-05-12 09:00:00',NULL,NULL),(11,'Artificial Intelligence in Healthcare','AI applications in the healthcare industry',5,2,'2024-05-14 11:45:00',NULL,NULL),(12,'Data Visualization Best Practices','Effective data visualization techniques',3,3,'2024-05-15 14:00:00',NULL,NULL),(13,'Cybersecurity Essentials','Key cybersecurity concepts and practices',6,8,'2024-05-17 08:30:00',NULL,NULL),(14,'Agile Project Management','Introduction to Agile methodologies',9,9,'2024-05-18 10:30:00',NULL,NULL),(15,'Social Media Marketing Strategies','Effective strategies for social media marketing',1,10,'2024-05-19 12:15:00',NULL,NULL),(16,'Recruitment and Talent Acquisition Trends','Latest trends in talent acquisition',2,10,'2024-05-21 14:45:00',NULL,NULL),(17,'Employee Engagement Strategies','Strategies for improving employee engagement',4,10,'2024-05-22 09:00:00',NULL,NULL),(18,'Remote Work Best Practices','Tips for successful remote work',7,10,'2024-05-24 11:00:00',NULL,NULL),(19,'Leadership Development Techniques','Developing effective leadership skills',8,10,'2024-05-26 13:30:00',NULL,NULL),(20,'Work-Life Balance Tips','Achieving work-life balance in a busy world',10,10,'2024-05-28 15:45:00',NULL,NULL),(21,'Computer Vision Advanced','Lets look into some advanced computer vision topics',4,7,'2024-05-03 00:00:00',NULL,NULL),(22,'Sample','SAmple sample',10,9,'2024-05-03 00:00:00',NULL,NULL),(23,'Advanced AI','Demo of post content',20,2,'2024-05-03 00:00:00',NULL,NULL),(24,'ML advanced','Welcome to Advanced ML ',11,1,'2025-05-03 00:00:00',NULL,NULL),(25,'Advanced MLLL','Demo demo demo',11,1,'2024-05-03 00:00:00',NULL,NULL);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `tag_id` int NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'Machine Learning'),(2,'AI'),(3,'Data Science'),(4,'Python Programming'),(5,'Deep Learning'),(6,'NLP'),(7,'Computer Vision'),(8,'Neural Networks'),(9,'Web Development'),(10,'IoT');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-07 15:16:29
