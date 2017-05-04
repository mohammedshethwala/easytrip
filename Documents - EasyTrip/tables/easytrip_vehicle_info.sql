-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: easytrip
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `vehicle_info`
--

DROP TABLE IF EXISTS `vehicle_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_info` (
  `vehicle_id` varchar(45) NOT NULL,
  `vehicle_price` varchar(45) DEFAULT NULL,
  `vehicle_milage` varchar(45) DEFAULT NULL,
  `vehicle_passenger` int(11) DEFAULT NULL,
  `vehicle_sluggage` int(11) DEFAULT NULL,
  `vehicle_lluggage` int(11) DEFAULT NULL,
  `vehicle_transmission` varchar(45) DEFAULT NULL,
  `vehicle_image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_info`
--

LOCK TABLES `vehicle_info` WRITE;
/*!40000 ALTER TABLE `vehicle_info` DISABLE KEYS */;
INSERT INTO `vehicle_info` VALUES ('audia3','65.0','26',5,2,1,'Automatic','images/Audi A3.jpg'),('bmw650iconvertible','175.0','15',2,1,0,'Automatic','images/BMW 650i Convertible.jpg'),('cadillacescalade','165.0','15',7,3,3,'Automatic','images/Cadillac Escalade.jpg'),('chevroletcamaroconvertible','95.0','16',2,1,0,'Automatic','images/Chevrolet Camaro Convertible.jpg'),('chevroletcamaross','90.0','16',2,1,0,'Automatic','images/Chevrolet Camaro SS.jpg'),('chevroletcamarossconvertible','125.0','15',2,1,0,'Automatic','images/Chevrolet Camaro SS Convertible.jpg'),('chevroletcruze','30.0','36',5,2,1,'Automatic','images/Chevrolet Cruze.jpg'),('chevroletimpala','65.0','26',5,2,2,'Automatic','images/Chevrolet Impala.jpg'),('chevroletspark','25.0','36',4,1,0,'Automatic','images/Chevrolet Spark.jpg'),('chevroletsuburban','125.0','18',7,3,3,'Automatic','images/Chevrolet Suburban.jpg'),('chrysler200','40.0','30',5,2,1,'Automatic','images/Chrysler 200.jpg'),('chrysler300','60.0','25',5,2,2,'Automatic','images/Chrysler 200.jpg'),('corvetteconvertible','160.0','12',2,1,0,'Automatic','images/Corvette Convertible.jpg'),('corvettestingray','220.0','10',2,1,0,'Automatic','images/Corvette Stingray.jpg'),('dodgechallengerrt','120.0','12',2,1,0,'Manual','images/Dodge Challenger RT.jpg'),('dodgejourney','65.0','18',5,2,2,'Automatic','images/Dodge Journey.jpg'),('fordmustanggtpremium','115.0','14',2,1,0,'Automatic','images/Ford Mustang GT Premium.jpg'),('fordtransit','95.0','16',12,4,2,'Automatic','images/Ford Transit 12 psgr.jpg'),('hyundaisantafe','70.0','18',5,2,2,'Automatic','images/Hyundai Santa Fe.jpg'),('infinitiq50','75.0','18',5,2,2,'Automatic','images/Infiniti Q50.jpg'),('infinitiqx60','80.0','18',5,2,2,'Automatic','images/Infiniti QX60.jpg'),('infinitiqx70','90.0','16',5,2,2,'Automatic','images/Infiniti QX70.jpg'),('infinitiqx80','130.0','16',7,2,2,'Automatic','images/Infiniti QX80.jpg'),('jaguarxj','170.0','16',5,2,2,'Automatic','images/Jaguar XJ.jpg'),('jeepcompass','60.0','24',5,2,1,'Automatic','images/Jeep Compass.jpg'),('jeepwrangler','70.0','24',5,2,1,'Automatic','images/Jeep Wrangler.jpg'),('landroversport','150.0','20',5,2,2,'Automatic','images/Land Rover Sport.jpg'),('mercedesc300','78.0','19',5,2,1,'Automatic','images/Mercedes C300.jpg'),('mercedesc63amg','88.0','19',5,2,1,'Automatic','images/Mercedes C63 AMG.jpg'),('mercedescla45amg','95.0','18',5,2,1,'Automatic','images/Mercedes CLA45 AMG.jpg'),('mercedeseclass','135.0','18',5,2,2,'Automatic','images/Mercedes E Class.jpg'),('mercedesg550','145.0','15',5,2,2,'Automatic','images/Mercedes G550.jpg'),('mercedesgl450','130.0','17',5,2,3,'Automatic','images/Mercedes GL450.jpg'),('mercedesglc','110.0','17',5,2,2,'Automatic','images/Mercedes GLC.jpg'),('mercedesgle350','120.0','17',5,2,2,'Automatic','images/Mercedes GLE350.jpg'),('mercedess550','170.0','16',5,2,2,'Automatic','images/Mercedes S550.jpg'),('mercedessl550cv','185.0','15',2,1,0,'Automatic','images/Mercedes SL550 CV.jpg'),('mercedesslk250','125.0','15',2,1,0,'Automatic','images/Mercedes SLK250.jpg'),('nissanaltima','40.0','26',5,2,1,'Automatic','images/Nissan Altima.jpg'),('nissanarmada','85.0','19',5,2,2,'Automatic','images/Nissan Armada.jpg'),('nissanfrontiercrewcab','65.0','17',5,3,4,'Automatic','images/Nissan Frontier Crew Cab.jpg'),('nissannv','69.0','21',7,2,2,'Automatic','images/Nissan NV.jpg'),('nissanpathfinder','75.0','19',5,2,2,'Automatic','images/Nissan Pathfinder.jpg'),('nissanquest','68.0','20',7,3,3,'Automatic','images/Nissan Quest.jpg'),('nissanrogue','56.0','24',5,2,2,'Automatic','images/Nissan Rogue.jpg'),('nissanversa','32.0','34',5,1,1,'Automatic','images/Nissan Versa.jpg'),('porsce911','210.0','13',2,1,0,'Manual','images/Porsche 911.jpg'),('porscheboxter','230.0','14',2,1,0,'Automatic','images/Porsche Boxter.jpg'),('porschecayenne','180.0','18',5,2,2,'Automatic','images/Porsche Cayenne.jpg'),('porschecayman','195.0','16',2,1,0,'Automatic','images/Porsche Cayman.jpg'),('porschemacan','175.0','16',5,2,2,'Automatic','images/Porsche Macan.jpg'),('porschepanamera','155.0','19',5,1,1,'Automatic','images/Porsche Panamera.jpg'),('shelbygtmustang','195.0','12',2,1,0,'Automatic','images/Shelby GT Mustang.jpg'),('teslamodels','150.0','28',5,2,2,'Automatic','images/Tesla Model S.jpg'),('toyota4runner','78.0','22',5,2,2,'Automatic','images/Toyota 4Runner.jpg'),('toyotacorolla','31.0','32',5,1,1,'Automatic','images/Toyota Corolla.jpg'),('toyotapriushybrid','47.0','42',5,2,1,'Automatic','images/Toyota Prius Hybrid.jpg'),('volkswagenjetta','35.0','32',5,2,1,'Automatic','images/Volkswagen Jetta.jpg');
/*!40000 ALTER TABLE `vehicle_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-02 21:56:07
