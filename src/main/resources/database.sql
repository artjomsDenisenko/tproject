-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: database_project
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1-log

drop database if exists database_project;
create database database_project;
use database_project;

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
-- Table structure for table `Genres`
--
DROP TABLE IF EXISTS `Genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Genres` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genres`
--

LOCK TABLES `Genres` WRITE;
INSERT INTO `Genres` VALUES (1, 'Comedy'),(2, 'Drama'),(3, 'Fiction');
UNLOCK TABLES;

--
-- Table structure for table `Clases_Student_Map`
--

DROP TABLE IF EXISTS `Genres_Movie_Map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Genres_Movie_Map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `genreId` int(10) unsigned NOT NULL,
  `movieId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Genres_Movie_Map_1` (`genreId`),
  KEY `FK_Genres_Movie_Map_2` (`movieId`),
  CONSTRAINT `FK_Genres_Movie_Map_1` FOREIGN KEY (`genreId`) REFERENCES `Genres` (`id`),
  CONSTRAINT `FK_Genres_Movie_Map_2` FOREIGN KEY (`movieId`) REFERENCES `Movies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;