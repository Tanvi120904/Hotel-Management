-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: hotelDB
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `addemployeeinfo`
--

DROP TABLE IF EXISTS `addemployeeinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addemployeeinfo` (
  `Empname` varchar(20) DEFAULT NULL,
  `EmpEmail` varchar(8) DEFAULT NULL,
  `EmpNo` int DEFAULT NULL,
  `Empadd` varchar(10) DEFAULT NULL,
  `EmpID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addemployeeinfo`
--

LOCK TABLES `addemployeeinfo` WRITE;
/*!40000 ALTER TABLE `addemployeeinfo` DISABLE KEYS */;
INSERT INTO `addemployeeinfo` VALUES ('Nita','nita@35',88907,'Thane',103),('Ritu','ritu@56',78954,'mulund',106);
/*!40000 ALTER TABLE `addemployeeinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addroominfo`
--

DROP TABLE IF EXISTS `addroominfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addroominfo` (
  `RoomNo` int DEFAULT NULL,
  `Roomtype` varchar(10) DEFAULT NULL,
  `RoomStatus` varchar(10) DEFAULT NULL,
  `Bedcapacity` int DEFAULT NULL,
  `Roomprice` int DEFAULT NULL,
  `RoomDay` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addroominfo`
--

LOCK TABLES `addroominfo` WRITE;
/*!40000 ALTER TABLE `addroominfo` DISABLE KEYS */;
INSERT INTO `addroominfo` VALUES (203,'AcRoom','available',2,1500,1),(301,'AcRoom','available',1,2000,2);
/*!40000 ALTER TABLE `addroominfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminlogininfo`
--

DROP TABLE IF EXISTS `adminlogininfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminlogininfo` (
  `username` varchar(10) DEFAULT NULL,
  `password` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlogininfo`
--

LOCK TABLES `adminlogininfo` WRITE;
/*!40000 ALTER TABLE `adminlogininfo` DISABLE KEYS */;
INSERT INTO `adminlogininfo` VALUES ('riyagudi',40406783),('sakshirao',38926726);
/*!40000 ALTER TABLE `adminlogininfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allcustinfo`
--

DROP TABLE IF EXISTS `allcustinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allcustinfo` (
  `custID` int DEFAULT NULL,
  `RoomID` int DEFAULT NULL,
  `checkindate` int DEFAULT NULL,
  `checkoutdate` int DEFAULT NULL,
  `downreceipt` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allcustinfo`
--

LOCK TABLES `allcustinfo` WRITE;
/*!40000 ALTER TABLE `allcustinfo` DISABLE KEYS */;
INSERT INTO `allcustinfo` VALUES (301,1004,19,22,'succesfull'),(203,2004,14,17,'nonsuccesfull');
/*!40000 ALTER TABLE `allcustinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkininfo`
--

DROP TABLE IF EXISTS `checkininfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkininfo` (
  `custID` int DEFAULT NULL,
  `custName` varchar(20) DEFAULT NULL,
  `custNo` int DEFAULT NULL,
  `EmailID` varchar(10) DEFAULT NULL,
  `custadd` varchar(15) DEFAULT NULL,
  `RoomNo` int DEFAULT NULL,
  `Roomtype` varchar(10) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `checkindate` int DEFAULT NULL,
  `checkoutdate` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkininfo`
--

LOCK TABLES `checkininfo` WRITE;
/*!40000 ALTER TABLE `checkininfo` DISABLE KEYS */;
INSERT INTO `checkininfo` VALUES (301,'Rahul',45632,'Rahul@14','Dombivali',201,'AcRoom',2500,20,22),(401,'kirti',67832,'kirti@45','Kurla',301,'NonAcRoom',1500,10,12);
/*!40000 ALTER TABLE `checkininfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkoutinfo`
--

DROP TABLE IF EXISTS `checkoutinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkoutinfo` (
  `custID` int DEFAULT NULL,
  `custName` varchar(20) DEFAULT NULL,
  `custNo` int DEFAULT NULL,
  `RoomID` int DEFAULT NULL,
  `totalprice` int DEFAULT NULL,
  `Receipt` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkoutinfo`
--

LOCK TABLES `checkoutinfo` WRITE;
/*!40000 ALTER TABLE `checkoutinfo` DISABLE KEYS */;
INSERT INTO `checkoutinfo` VALUES (100,'Sanika',57892,1001,2000,'reciev'),(200,'Priya',93652,2002,1300,'noreciev');
/*!40000 ALTER TABLE `checkoutinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerhistoryinfo`
--

DROP TABLE IF EXISTS `customerhistoryinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerhistoryinfo` (
  `custID` int DEFAULT NULL,
  `custName` varchar(15) DEFAULT NULL,
  `custNo` int DEFAULT NULL,
  `RoomID` int DEFAULT NULL,
  `lenstay` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerhistoryinfo`
--

LOCK TABLES `customerhistoryinfo` WRITE;
/*!40000 ALTER TABLE `customerhistoryinfo` DISABLE KEYS */;
INSERT INTO `customerhistoryinfo` VALUES (101,'janvhi',54832,1001,2),(201,'priti',78932,2001,3);
/*!40000 ALTER TABLE `customerhistoryinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerinfo`
--

DROP TABLE IF EXISTS `customerinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerinfo` (
  `custID` int DEFAULT NULL,
  `custName` varchar(12) DEFAULT NULL,
  `custEmail` varchar(12) DEFAULT NULL,
  `custno` int DEFAULT NULL,
  `custRID` int DEFAULT NULL,
  `custRT` varchar(10) DEFAULT NULL,
  `checkindate` int DEFAULT NULL,
  `checkoutdate` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerinfo`
--

LOCK TABLES `customerinfo` WRITE;
/*!40000 ALTER TABLE `customerinfo` DISABLE KEYS */;
INSERT INTO `customerinfo` VALUES (1000,'Radhika','Radha@31',94273,101,'AcRoom',20,22),(2000,'Sanika','Sanu@56',57892,201,'NonAcRoom',10,14);
/*!40000 ALTER TABLE `customerinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custreceiptinfo`
--

DROP TABLE IF EXISTS `custreceiptinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custreceiptinfo` (
  `custName` varchar(15) DEFAULT NULL,
  `custNo` int DEFAULT NULL,
  `RoomID` int DEFAULT NULL,
  `hotelName` varchar(15) DEFAULT NULL,
  `amopaid` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custreceiptinfo`
--

LOCK TABLES `custreceiptinfo` WRITE;
/*!40000 ALTER TABLE `custreceiptinfo` DISABLE KEYS */;
INSERT INTO `custreceiptinfo` VALUES ('Raj',2356,1001,'TajHotel',2500),('Piyu',90643,2001,'Homestay',1700);
/*!40000 ALTER TABLE `custreceiptinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeinfo`
--

DROP TABLE IF EXISTS `employeeinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeeinfo` (
  `EmpID` int DEFAULT NULL,
  `EmpName` varchar(10) DEFAULT NULL,
  `EmpEmail` varchar(10) DEFAULT NULL,
  `EmpNo` int DEFAULT NULL,
  `Empadd` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeinfo`
--

LOCK TABLES `employeeinfo` WRITE;
/*!40000 ALTER TABLE `employeeinfo` DISABLE KEYS */;
INSERT INTO `employeeinfo` VALUES (1111,'Bhumika','bhumika@16',89075,'Dombivaliw'),(2222,'Tanvi','Tanvi@13',45823,'Kalyawest'),(3333,'Prashika','prashu@15',95732,'Kandivalie');
/*!40000 ALTER TABLE `employeeinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managerlogin`
--

DROP TABLE IF EXISTS `managerlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managerlogin` (
  `username` varchar(10) DEFAULT NULL,
  `password` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managerlogin`
--

LOCK TABLES `managerlogin` WRITE;
/*!40000 ALTER TABLE `managerlogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `managerlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managerlogininfo`
--

DROP TABLE IF EXISTS `managerlogininfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managerlogininfo` (
  `username` varchar(10) DEFAULT NULL,
  `password` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managerlogininfo`
--

LOCK TABLES `managerlogininfo` WRITE;
/*!40000 ALTER TABLE `managerlogininfo` DISABLE KEYS */;
INSERT INTO `managerlogininfo` VALUES ('ranigupta',23459065),('poojadas',19825673);
/*!40000 ALTER TABLE `managerlogininfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roominfo`
--

DROP TABLE IF EXISTS `roominfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roominfo` (
  `Room no` int DEFAULT NULL,
  `Room type` varchar(10) DEFAULT NULL,
  `Room Status` varchar(10) DEFAULT NULL,
  `Bed capacity` varchar(10) DEFAULT NULL,
  `Room charges` int DEFAULT NULL,
  `Room ID` int DEFAULT NULL,
  `Room day` int DEFAULT NULL,
  `Edit` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roominfo`
--

LOCK TABLES `roominfo` WRITE;
/*!40000 ALTER TABLE `roominfo` DISABLE KEYS */;
INSERT INTO `roominfo` VALUES (101,'Ac Room','Available','Two',1300,1001,2,'yes'),(201,'AcRoom','Available','One',1200,2001,3,'No');
/*!40000 ALTER TABLE `roominfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `totalearninginfo`
--

DROP TABLE IF EXISTS `totalearninginfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `totalearninginfo` (
  `totalbooking` int DEFAULT NULL,
  `totalexpenses` int DEFAULT NULL,
  `totalrevenue` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `totalearninginfo`
--

LOCK TABLES `totalearninginfo` WRITE;
/*!40000 ALTER TABLE `totalearninginfo` DISABLE KEYS */;
INSERT INTO `totalearninginfo` VALUES (1000,3000,2000);
/*!40000 ALTER TABLE `totalearninginfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `totalexpeninfo`
--

DROP TABLE IF EXISTS `totalexpeninfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `totalexpeninfo` (
  `custID` int DEFAULT NULL,
  `Roomcharge` int DEFAULT NULL,
  `foodcharge` int DEFAULT NULL,
  `applicharge` int DEFAULT NULL,
  `othertax` int DEFAULT NULL,
  `totalamount` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `totalexpeninfo`
--

LOCK TABLES `totalexpeninfo` WRITE;
/*!40000 ALTER TABLE `totalexpeninfo` DISABLE KEYS */;
INSERT INTO `totalexpeninfo` VALUES (346,2000,1500,900,50,4780),(278,2500,1700,300,48,5300);
/*!40000 ALTER TABLE `totalexpeninfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-20 16:03:17
