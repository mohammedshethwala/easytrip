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
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicles` (
  `vehicle_vin` varchar(40) NOT NULL,
  `vehicle_id` varchar(40) NOT NULL,
  `vehicle_type` varchar(45) DEFAULT NULL,
  `vehicle_make` varchar(45) DEFAULT NULL,
  `vehicle_model` varchar(40) DEFAULT NULL,
  `location_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`vehicle_vin`,`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES ('1HGCM82633A004352','toyotacorolla','Compact','Toyota','Corolla','LO1'),('2HGCM82683A004352','toyota4runner','SUV','Toyota','4Runner','LO2'),('3HFCM72633A004344','nissanaltima','Fullsize','Nissan','Altima','LO5'),('3HFCM72633A004380','nissanarmada','Full-Size SUV','Nissan','Armada','LO6'),('3HFCM72633A004381','nissanfrontiercrewcab','Full-Size SUV','Nissan','Frontier Crew Cab','LO7'),('3HFCM72633A004382','nissannv','Minivan','Nissan','NV','LO1'),('3HFCM72633A004383','nissanpathfinder','SUV','Nissan','Pathfinder','LO2'),('3HFCM72633A004384','nissanrogue','SUV','Nissan','Rogue','LO3'),('3HFCM72633A004385','nissanversa','Compact','Nissan','Versa','LO4'),('3HGCM82633A004344','nissanquest','Minivan','Nissan','Quest','LO4'),('3HGCM82633A774344','toyotapriushybrid','Eco-Friendly','Toyota','Prius Hybrid','LO3'),('4HKCM82637A004750','porscheboxter','Sports','Porsche','Boxter','LO4'),('4HKCM82637A004751','porsce911','Sports','Porsche','911','LO4'),('4HKCM82637A004752','porschecayenne','SUV','Porsche','Cayenne','LO7'),('4HKCM82637A004753','porschecayman','Sports','Porsche','Cayman','LO4'),('4HKCM82637A004754','porschemacan','Luxury','Porsche','Macan','LO2'),('4HKCM82637A004755','porschepanamera','Luxury','Porsche','Panamera','LO3'),('5CCCM82637A001250','landroversport','SUV','Land Rover','Sport','LO7'),('5CCCM82637A005340','chevroletsuburban','Full-Size SUV','Chevrolet','Suburban','LO4'),('5CCCM82637A005341','chevroletcamaroconvertible','Convertible','Chevrolet','Camaro Convertible','LO5'),('5CCCM82637A005342','chevroletcamarossconvertible','Convertible','Chevrolet','Camaro SS Convertible','LO6'),('5CCCM82637A005343','chevroletcamaross','Sports','Chevrolet','Camaro SS','LO4'),('5CCCM82637A005344','chevroletcruze','Compact','Chevrolet','Cruze','LO1'),('5CCCM82637A005345','chevroletimpala','Fullsize','Chevrolet','Impala','LO2'),('5CCCM82637A005346','chevroletspark','Compact','Chevrolet','Spark','LO3'),('5CCCM82637A006240','mercedesc63amg','Luxury','Mercedes','C63 AMG','LO4'),('5CCCM82637A006241','mercedesc300','Luxury','Mercedes','C300','LO5'),('5CCCM82637A006242','mercedescla45amg','Luxury','Mercedes','CLA 45 AMG','LO6'),('5CCCM82637A006243','mercedeseclass','Luxury','Mercedes','E Class','LO7'),('5CCCM82637A006244','mercedesg550','SUV','Mercedes','G 550','LO1'),('5CCCM82637A006245','mercedesgl450','Full-Size SUV','Mercedes','GL 450','LO2'),('5CCCM82637A006246','mercedesglc','SUV','Mercedes','GLC','LO3'),('5CCCM82637A006247','mercedesgle350','SUV','Mercedes','GLE 350','LO4'),('5CCCM82637A006248','mercedess550','Luxury','Mercedes','S 550','LO5'),('5CCCM82637A006249','mercedessl550cv','Convertible','Mercedes','SL 550 CV','LO6'),('5CCCM82637A006250','mercedesslk250','Convertible','Mercedes','SLK 250','LO7'),('5CCCM82637A006310','shelbygtmustang','Sports','Shelby','GT Mustang','LO4'),('5CCCM82637A006410','teslamodels','Luxury','Tesla','Model S','LO2'),('5CCCM82637A006510','volkswagenjetta','Compact','Volkswagen','Jetta','LO3'),('5CCCM82637A006610','audia3','Compact','Audi','A3','LO4'),('5CCCM82637A006710','bmw650iconvertible','Convertible','BMW','650i Convertible','LO5'),('5CCCM82637A006810','cadillacescalade','Full-Size SUV','Cadilac','Escalade','LO6'),('5CCCM82637A007210','chrysler200','Compact','Chrysler','200','LO7'),('5CCCM82637A007310','chrysler300','Fullsize','Chrysler','300','LO1'),('5CCCM82637A007410','dodgechallengerrt','Sports','Dodge','Challenger RT','LO4'),('5CCCM82637A007510','dodgejourney','SUV','Dodge','Journey','LO3'),('5CCCM82637A007610','fordmustanggtpremium','Sports','Ford','Mustang GT Premium','LO4'),('5CCCM82637A007620','fordtransit','Minivan','Ford','Transit','LO5'),('5CCCM82637A007710','hyundaisantafe','SUV','Hyundai','Santa Fe','LO6'),('5CCCM82637A007770','corvetteconvertible','Convertible','Corvette','Convertible','LO1'),('5CCCM82637A007780','corvettestingray','Sports','Corvette','Stingray','LO4'),('5CCCM82637A007810','infinitiq50','Fullsize','Infiniti','Q50','LO7'),('5CCCM82637A007820','infinitiqx60','SUV','Infiniti','QX 60','LO1'),('5CCCM82637A007830','infinitiqx70','SUV','Infiniti','QX 70','LO2'),('5CCCM82637A007840','infinitiqx80','Full-Size SUV','Infiniti','QX 80','LO3'),('5CCCM82637A009210','jeepcompass','SUV','Jeep','Compass','LO5'),('5CCCM82637A009250','jeepwrangler','SUV','Jeep','Wrangler','LO6'),('5CCCM82637A009810','jaguarxj','Luxury','Jaguar','XJ','LO4');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
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
