-- MySQL dump 10.17  Distrib 10.3.14-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: treedplant
-- ------------------------------------------------------
-- Server version	10.3.14-MariaDB-1:10.3.14+maria~bionic-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_detail` varchar(255) CHARACTER SET utf8 NOT NULL,
  `district` varchar(255) CHARACTER SET utf8 NOT NULL,
  `province` varchar(255) CHARACTER SET utf8 NOT NULL,
  `zipcode` varchar(255) CHARACTER SET utf8 NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `FK9cm2xydhhkvra3wpnh90yb3y0` (`profile_id`)
) ENGINE=MyISAM AUTO_INCREMENT=100036 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (100035,'74 หมู่ 3  บ้านคลอง','เมืองพิษณุโลก','พิษณุโลก','65000',200010),(100033,'74 หมู่ 3  บ้านคลอง','เมือง','พิษณุโลก','65000',200010),(100032,'74 หมู่ 3  บ้านคลอง','เมือง','พิษณุโลก','65000',200010),(100031,'74 หมู่ 3  บ้านคลอง','เมืองพิษณุโลก','พิษณุโลก','65000',200010),(100030,'74 หมู่ 3  บ้านคลอง','เมืองพิษณุโลก','พิษณุโลก','65000',200010),(100029,'74 หมู่ 3  บ้านคลอง','เมือง','พิษณุโลก','65000',200010),(100028,'74 หมู่ 3  บ้านคลอง','เมือง','พิษณุโลก','65000',200010),(100027,'74 หมู่ 3 - บ้านคลอง','เมือง','พิษณุโลก','65000',200010),(100026,'บางมด','บางมด','ทุ่งครุ','10150',200001);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_login` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=300003 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_login`
--

LOCK TABLES `admin_login` WRITE;
/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
INSERT INTO `admin_login` VALUES (300001,'admin@po.com','123456'),(300002,'treedplant@gmail.com','654321');
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset`
--

DROP TABLE IF EXISTS `asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset` (
  `asset_id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_detail` varchar(255) CHARACTER SET utf8 NOT NULL,
  `asset_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `assset_image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` int(11) NOT NULL,
  `tree_id` int(11) DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`asset_id`),
  KEY `FK29simrhqe2umk0wlho1cha0nc` (`tree_id`),
  KEY `FKjl67el34cp1gonjeprr3uulxf` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=400150 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset`
--

LOCK TABLES `asset` WRITE;
/*!40000 ALTER TABLE `asset` DISABLE KEYS */;
INSERT INTO `asset` VALUES (400143,'หน้าตาคล้ายกระถางคอนกรีต แต่ทำจากพลาสติกรีไซเคิล จึงมีน้ำหนักเบาและส่งผลกระทบต่อสิ่งแวดล้อมน้อยกว่า','กระถางรีไซเคิล ','https://firebasestorage.googleapis.com/v0/b/tree-d-plant-f1ef8.appspot.com/o/images%2F0641158_PE700331_S5.webpTue%20Nov%2012%202019%2018%3A57%3A50%20GMT%2B0700%20(Indochina%20Time)?alt=media&token=e8acc50d-ed17-46f3-9ada-b77c09745b27',80,NULL,2,1),(400142,'หน้าวัวใบมีรูปแบบใบและขนาดต้นที่หลากหลาย จึงนิยมปลูกเป็นไม้กระถางประดับตกแต่งภายในบ้านเรือน เพื่อบดบังมุมที่ดูไม่สวยงาม','หน้าวัวใบ','https://firebasestorage.googleapis.com/v0/b/tree-d-plant-f1ef8.appspot.com/o/images%2Fflamingo.pngTue%20Nov%2012%202019%2018%3A39%3A40%20GMT%2B0700%20(Indochina%20Time)?alt=media&token=745b80df-212a-4a27-b141-1843e439e045',150,500148,1,1),(400141,'นิยมปลูกในกระถางสำหรับประดับในอาคาร และนอกอาคาร เนื่องจาก แผ่นใบมีขนาดใหญ่ พื้นใบมีสีเขียว และประเป็นลายด่างด้วยสีขาวจนดูแปลกตา และสวยงาม','สาวน้อยประแป้ง','https://firebasestorage.googleapis.com/v0/b/tree-d-plant-f1ef8.appspot.com/o/images%2FDieffenbachia.pngTue%20Nov%2012%202019%2018%3A35%3A00%20GMT%2B0700%20(Indochina%20Time)?alt=media&token=dca3ed86-4096-4c49-86a9-665c8b5c425f',150,500145,1,1),(400140,'เศรษฐีเรือนในเป็นพืชที่ไม่ค่อยคายน้ำเท่าใดนัก แต่มีการดูดสารพิษจากอากาศภายในอาคารได้ดีมากชนิดหนึ่ง','เศรษฐีเรือนใน','https://firebasestorage.googleapis.com/v0/b/tree-d-plant-f1ef8.appspot.com/o/images%2Fspider%20(2).pngTue%20Nov%2012%202019%2018%3A24%3A24%20GMT%2B0700%20(Indochina%20Time)?alt=media&token=3139d4b1-c2c8-4c2f-b931-ababad3f18d2',80,500143,1,1),(400139,'เป็นต้นไม้ที่มีชื่อมงคลแล้ว ต้นวาสนายังเป็นต้นไม้ที่ปลูกง่าย เหมาะกับดินทุกสภาพ และมีความทนทาน','วาสนา','https://firebasestorage.googleapis.com/v0/b/tree-d-plant-f1ef8.appspot.com/o/images%2Fwassana.pngTue%20Nov%2012%202019%2018%3A19%3A10%20GMT%2B0700%20(Indochina%20Time)?alt=media&token=cc03ebfb-a86e-47ee-99bc-ced8cab7827a',150,500141,1,1),(400138,'นิยมปลูกไว้ในบ้าน หรือสำนักงานเพราะมีขนาดไม่ใหญ่มาก ทั้งยังมีข้อดีในการฟอกอากาศได้ดีอีกด้วย','ลิ้นมังกร','https://firebasestorage.googleapis.com/v0/b/tree-d-plant-f1ef8.appspot.com/o/images%2Fsnake.pngTue%20Nov%2012%202019%2018%3A15%3A42%20GMT%2B0700%20(Indochina%20Time)?alt=media&token=9edf35af-e099-42d4-8528-0c8af54fd616',100,500139,1,1),(400137,'เป็นพันธุ์ไม้ที่เหมาะสำหรับตั้งภายในออฟฟิศ เพราะช่วยดูดสารพิษได้เป็นอย่างดี','ยางอินเดีย','https://firebasestorage.googleapis.com/v0/b/tree-d-plant-f1ef8.appspot.com/o/images%2Frubber.pngTue%20Nov%2012%202019%2018%3A12%3A21%20GMT%2B0700%20(Indochina%20Time)?alt=media&token=96f741c0-26ac-404c-a7dc-e42265582dd5',200,500138,1,0),(400135,'เป็นพืชที่ดูแลง่าย คงทน แถมยังเป็น ต้นไม้ปลูกในบ้าน ฟอกอากาศ และที่สำคัญช่วยดูดซับสารพิษต่างๆ ภายในอาคารได้อีกด้วย','พลูด่าง','https://firebasestorage.googleapis.com/v0/b/tree-d-plant-f1ef8.appspot.com/o/images%2Fpludang.pngTue%20Nov%2012%202019%2018%3A01%3A17%20GMT%2B0700%20(Indochina%20Time)?alt=media&token=7a6c6039-10d6-4b21-bf0e-b0f9e2d37dbf',50,500134,1,1),(400136,'เป็นพืชที่ดูแลง่าย คงทน แถมยังเป็น ต้นไม้ปลูกในบ้าน ฟอกอากาศ และที่สำคัญช่วยดูดซับสารพิษต่างๆ ภายในอาคารได้อีกด้วย','กวักมรกต','https://firebasestorage.googleapis.com/v0/b/tree-d-plant-f1ef8.appspot.com/o/images%2Fzzplant.pngTue%20Nov%2012%202019%2018%3A00%3A56%20GMT%2B0700%20(Indochina%20Time)?alt=media&token=111c639c-c2d5-499f-8ee6-99574ede4424',60,500136,1,1),(400134,'เป็นพืชที่ดูแลง่าย คงทน แถมยังเป็น ต้นไม้ปลูกในบ้าน ฟอกอากาศ และที่สำคัญช่วยดูดซับสารพิษต่างๆ ภายในอาคารได้อีกด้วย','พลูด่าง','https://firebasestorage.googleapis.com/v0/b/tree-d-plant-f1ef8.appspot.com/o/images%2Fpludang.pngTue%20Nov%2012%202019%2017%3A54%3A04%20GMT%2B0700%20(Indochina%20Time)?alt=media&token=452ec9ed-d228-4609-8c09-7a9fa685013f',50,500132,1,0),(400133,'เป็นต้นไม้ที่มีการตั้งชื่อที่เป็นมงคล เหมาะสำหรับนำมาประดับเป็นต้นไม้ในบ้าน และในออฟฟิศ เพราะสามารถอยู่ได้ในที่แสงน้อย','กวักมรกต','https://firebasestorage.googleapis.com/v0/b/tree-d-plant-f1ef8.appspot.com/o/images%2Fzzplant.pngTue%20Nov%2012%202019%2017%3A38%3A25%20GMT%2B0700%20(Indochina%20Time)?alt=media&token=d32e3e01-7604-4f7a-923e-0e834247319c',50,500131,1,0),(400149,'เป็นพันธุ์ไม้เหมาะสำหรับปลูกในออฟฟิศ','ยางอินเดีย','https://firebasestorage.googleapis.com/v0/b/tree-d-plant-f1ef8.appspot.com/o/images%2Frubber.pngTue%20Nov%2012%202019%2018%3A12%3A21%20GMT%2B0700%20(Indochina%20Time)?alt=media&token=495ee164-7c84-41a5-882a-1f4d62dc7170',200,500155,1,1);
/*!40000 ALTER TABLE `asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `FKn5f8pcjsgkfubs94bongqs2pv` (`asset_id`),
  KEY `FKkie7mjynplphteyes88etrlxc` (`order_id`),
  KEY `FKt7pdlpp5u5ge7vvi6s5dntfb4` (`profile_id`)
) ENGINE=MyISAM AUTO_INCREMENT=700078 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (700064,1,400138,800025,200010),(700063,1,400136,NULL,200010),(700062,1,400136,NULL,200010),(700061,1,400135,NULL,200010),(700060,1,400149,800024,200010),(700059,1,400136,NULL,200010),(700058,1,400138,NULL,200010),(700057,2,400136,NULL,200010),(700056,1,400135,NULL,200010),(700055,1,400141,NULL,200010),(700054,1,400135,NULL,200010),(700053,2,400136,NULL,200010),(700052,1,400139,800023,200010),(700051,2,400149,800022,200010),(700050,1,400141,NULL,200010),(700049,1,400137,NULL,200010),(700048,3,400138,NULL,200010),(700047,1,400137,800021,200010),(700046,1,400137,800021,200010),(700045,1,400138,NULL,200010),(700044,1,400137,800020,200010),(700043,3,400138,NULL,200010),(700042,1,400139,NULL,200010),(700041,1,400136,NULL,200010),(700040,1,400140,NULL,200010),(700039,1,400142,NULL,200010),(700038,2,400141,NULL,200010),(700037,1,400135,NULL,200010),(700036,1,400137,NULL,200010),(700035,1,400136,800019,200010),(700065,1,400136,NULL,200010),(700066,1,400149,NULL,200010),(700067,1,400140,NULL,200010),(700068,1,400149,800026,200010),(700069,1,400135,800026,200010),(700070,1,400136,NULL,200010),(700071,1,400140,NULL,200010),(700072,1,400138,NULL,200010),(700073,1,400140,NULL,200010),(700074,2,400138,800027,200010),(700075,1,400136,NULL,200010),(700076,1,400149,NULL,200010),(700077,2,400149,NULL,200010);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `facebook` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM AUTO_INCREMENT=200017 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (200010,'nattapat27@gmail.com','2246746558769303','นลพรรณ','1234567890','0969381036');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_order`
--

DROP TABLE IF EXISTS `purchase_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_purchase` date NOT NULL,
  `design` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `total_price` float NOT NULL,
  `address_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FK73djf8axob9ovi0tlfdkbj5cm` (`address_id`),
  KEY `FK3md4fptj7jn5geip2p9405q5b` (`profile_id`),
  KEY `FKkw5co4cf1wo8pwpo9wj3lxfoi` (`status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=800028 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order`
--

LOCK TABLES `purchase_order` WRITE;
/*!40000 ALTER TABLE `purchase_order` DISABLE KEYS */;
INSERT INTO `purchase_order` VALUES (800027,'2019-12-16',NULL,200,100035,200010,1),(800026,'2019-11-18',NULL,250,100034,200010,1),(800025,'2019-11-18',NULL,100,100033,200010,1),(800024,'2019-11-18',NULL,200,100032,200010,1),(800023,'2019-11-15',NULL,150,100031,200010,2),(800022,'2019-11-15',NULL,400,100030,200010,1),(800021,'2019-11-14',NULL,200,100029,200010,3),(800020,'2019-11-14',NULL,200,100028,200010,1),(800019,'2019-11-13',NULL,60,100027,200010,2);
/*!40000 ALTER TABLE `purchase_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_order`
--

DROP TABLE IF EXISTS `status_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_order` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_order`
--

LOCK TABLES `status_order` WRITE;
/*!40000 ALTER TABLE `status_order` DISABLE KEYS */;
INSERT INTO `status_order` VALUES (1,'รอดำเนินการ'),(2,'เตรียมจัดส่ง'),(3,'เสร็จสมบูรณ์');
/*!40000 ALTER TABLE `status_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tree`
--

DROP TABLE IF EXISTS `tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tree` (
  `tree_id` int(11) NOT NULL AUTO_INCREMENT,
  `height` float NOT NULL,
  `model` varchar(255) CHARACTER SET utf8 NOT NULL,
  `width` float NOT NULL,
  `shader` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `scale` float DEFAULT NULL,
  PRIMARY KEY (`tree_id`)
) ENGINE=MyISAM AUTO_INCREMENT=500156 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tree`
--

LOCK TABLES `tree` WRITE;
/*!40000 ALTER TABLE `tree` DISABLE KEYS */;
INSERT INTO `tree` VALUES (500154,80,'C:\\fakepath\\untitled.obj',30,'C:\\fakepath\\uvtextture2.png',0.1),(500155,80,'C:\\fakepath\\untitled.obj',30,'C:\\fakepath\\uvtextture2.png',0.1),(500153,44,'C:\\fakepath\\aa.js',44,'C:\\fakepath\\App.js',0.1),(500151,345,'C:\\fakepath\\add.png',345,'C:\\fakepath\\add.png',0.1),(500152,345,'C:\\fakepath\\add.png',345,'C:\\fakepath\\add.png',0.1),(500149,33,'C:\\fakepath\\add.png',33,'C:\\fakepath\\add.png',0.1),(500150,345,'C:\\fakepath\\add.png',34,'C:\\fakepath\\add.png',0.1),(500148,80,'C:\\fakepath\\flamingo.png',60,'C:\\fakepath\\flamingo.png',0.1),(500146,45,'C:\\fakepath\\flamingo.png',30,'',0.1),(500147,80,'C:\\fakepath\\flamingo.png',60,'C:\\fakepath\\flamingo.png',0.1),(500145,90,'C:\\fakepath\\Dieffenbachia.png',60,'C:\\fakepath\\Dieffenbachia.png',0.1),(500143,40,'C:\\fakepath\\spider (2).png',25,'C:\\fakepath\\spider (2).png',0.1),(500144,90,'C:\\fakepath\\Dieffenbachia.png',60,'C:\\fakepath\\Dieffenbachia.png',0.1),(500142,40,'C:\\fakepath\\spider (2).png',25,'C:\\fakepath\\spider (2).png',0.1),(500140,150,'C:\\fakepath\\wassana.png',60,'C:\\fakepath\\wassana.png',0.1),(500141,150,'C:\\fakepath\\wassana.png',60,'C:\\fakepath\\wassana.png',0.1),(500139,50,'C:\\fakepath\\snake.png',15,'C:\\fakepath\\snake.png',0.1),(500138,80,'C:\\fakepath\\rubber.png',30,'C:\\fakepath\\rubber.png',0.1),(500136,50,'C:\\fakepath\\zzplant.png',30,'C:\\fakepath\\zzplant.png',0.1),(500137,80,'C:\\fakepath\\rubber.png',30,'C:\\fakepath\\rubber.png',0.1),(500135,50,'C:\\fakepath\\zzplant.png',30,'C:\\fakepath\\zzplant.png',0.1),(500133,25,'C:\\fakepath\\pludang.png',12,'C:\\fakepath\\pludang.png',0.1),(500134,25,'C:\\fakepath\\pludang.png',12,'C:\\fakepath\\pludang.png',0.1),(500131,60,'C:\\fakepath\\ปก2.jpg',30,'C:\\fakepath\\ปก2.jpg',0.1),(500132,25,'C:\\fakepath\\pludang.png',12,'C:\\fakepath\\pludang.png',0.1),(500130,60,'C:\\fakepath\\กวักมรกต (1).png',30,'C:\\fakepath\\กวักมรกต (1).png',0.1),(500129,60,'C:\\fakepath\\กวักมรกต (1).png',30,'C:\\fakepath\\กวักมรกต (1).png',0.1),(500127,60,'C:\\fakepath\\กวักมรกต (1).png',30,'C:\\fakepath\\กวักมรกต (1).png',0.1),(500128,60,'C:\\fakepath\\กวักมรกต (1).png',30,'C:\\fakepath\\กวักมรกต (1).png',0.1),(500125,60,'C:\\fakepath\\ปก2.jpg',30,'C:\\fakepath\\DSC_0017.png',0.1),(500126,60,'C:\\fakepath\\ปก2.jpg',30,'C:\\fakepath\\DSC_0017.png',0.1),(500123,60,'C:\\fakepath\\dddd.jpg',30,'C:\\fakepath\\images.jpg',0.1),(500124,60,'C:\\fakepath\\DSC_0017.png',30,'C:\\fakepath\\DSC_0017.png',0.1),(500122,60,'C:\\fakepath\\dddd.jpg',30,'C:\\fakepath\\images.jpg',0.1);
/*!40000 ALTER TABLE `tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_asset`
--

DROP TABLE IF EXISTS `type_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_asset` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=600002 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_asset`
--

LOCK TABLES `type_asset` WRITE;
/*!40000 ALTER TABLE `type_asset` DISABLE KEYS */;
INSERT INTO `type_asset` VALUES (1,'tree'),(2,'asset');
/*!40000 ALTER TABLE `type_asset` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-19 12:57:48
