-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: picture
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `admin_menus`
--

DROP TABLE IF EXISTS `admin_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_menus` (
  `menuCode` varchar(9) COLLATE utf8_bin NOT NULL,
  `menuName` varchar(30) COLLATE utf8_bin NOT NULL,
  `menuAddress` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `menuOrder` int(11) NOT NULL,
  `menuDescribe` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `paternalCode` varchar(9) COLLATE utf8_bin DEFAULT NULL,
  `menuStyle` varchar(10) COLLATE utf8_bin NOT NULL,
  `superVisibility` char(1) COLLATE utf8_bin NOT NULL,
  `adminVisibility` char(1) COLLATE utf8_bin NOT NULL,
  `menuGrade` char(1) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menus`
--

LOCK TABLES `admin_menus` WRITE;
/*!40000 ALTER TABLE `admin_menus` DISABLE KEYS */;
INSERT INTO `admin_menus` VALUES ('M01','系统管理',NULL,1,NULL,NULL,'&#xe60a;','1','1','1'),('M01S01','基础管理',NULL,1,NULL,'M01','&#xe60a;','1','1','2'),('M01S01I04','用户管理','sys/toUserPage.htmls',4,NULL,'M01S01','&#xe60a;','0','1','3'),('M01S01I03','管理员维护','sys/toAdminManager.htmls',3,NULL,'M01S01','&#xe60a;','1','0','3'),('M01S01I02','基础角色查询','sys/toBasicRoleQuery.htmls',2,NULL,'M01S01','&#xe60a;','0','1','3'),('M01S01I01','基础角色管理','sys/toBasicRoleManager.htmls',1,NULL,'M01S01','&#xe60a;','1','0','3'),('M01S01I05','组织管理','org/toOrgPage.htmls',5,NULL,'M01S01','&#xe60a;','1','0','3'),('M01S01I05','首页查询权限','browse/toQueryAuthPage.htmls',6,NULL,'M01S01','&#xe60a;','1','0','3');
/*!40000 ALTER TABLE `admin_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_table`
--

DROP TABLE IF EXISTS `album_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_table` (
  `album_code` varchar(30) COLLATE utf8_bin NOT NULL,
  `album_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `album_describe` varchar(100) COLLATE utf8_bin NOT NULL,
  `album_createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`album_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_table`
--

LOCK TABLES `album_table` WRITE;
/*!40000 ALTER TABLE `album_table` DISABLE KEYS */;
INSERT INTO `album_table` VALUES ('A001','风景相册','风景12','2019-06-25 07:24:28'),('A002','设备相册','设备12','2019-06-25 07:24:40');
/*!40000 ALTER TABLE `album_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_table`
--

DROP TABLE IF EXISTS `auth_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_table` (
  `auth_code` int(4) NOT NULL,
  `operation_code` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `resources_id` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `fresources_id` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `auth_type` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`auth_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_table`
--

LOCK TABLES `auth_table` WRITE;
/*!40000 ALTER TABLE `auth_table` DISABLE KEYS */;
INSERT INTO `auth_table` VALUES (1,'M02','M02','','0'),(2,'M02S01','M02S01','M02','0'),(3,'M02S01I01','M02S01I01','M02S01','0'),(4,'M03','M03',NULL,'0'),(5,'M03S01','M03S01','M03','0'),(6,'M03S01I01','M03S01I01','M03S01','0'),(7,'M04','M04',NULL,'0'),(8,'M04S01','M04S01','M04','0'),(9,'M04S01I01','M04S01I01','M04S01','0'),(10,'','BQ','34','LL'),(11,'SC',NULL,'26',NULL),(12,NULL,'FL','34','LL'),(19,'M05','M05',NULL,'0'),(20,'M05S01','M05S01','M05','0'),(21,'M05S01I01','M05S01I01','M05S01','0'),(22,'M05S01I02','M05S01I02','M05S01','0'),(23,'M05S01I03','M05S01I03','M05S01','0'),(24,'XG',NULL,'26',NULL),(25,'XZ',NULL,'26',NULL),(26,'TPGL',NULL,'',NULL),(31,NULL,'XC','34','LL'),(34,'LL',NULL,'26',NULL),(35,NULL,'BQ','25','XZ'),(36,NULL,'FL','25','XZ'),(37,NULL,'XC','25','XZ'),(172,NULL,'A001','31','LL'),(173,NULL,'A001','37','XZ'),(174,NULL,'A002','31','LL'),(175,NULL,'A002','37','XZ'),(188,NULL,'C001','12','LL'),(189,NULL,'C001','36','XZ'),(196,NULL,'C002','12','LL'),(197,NULL,'C002','36','XZ'),(198,NULL,'C002001','196','LL'),(199,NULL,'C002001','197','XZ'),(200,NULL,'L001','10','LL'),(201,NULL,'L001','35','XZ'),(202,NULL,'L001001','200','LL'),(203,NULL,'L001001','201','XZ'),(204,NULL,'L001001001','202','LL'),(205,NULL,'L001001001','203','XZ'),(206,NULL,'L001001002','202','LL'),(207,NULL,'L001001002','203','XZ'),(214,NULL,'L001002','200','LL'),(215,NULL,'L001002','201','XZ'),(216,NULL,'L001002001','214','LL'),(217,NULL,'L001002001','215','XZ'),(218,NULL,'L001002002','214','LL'),(219,NULL,'L001002002','215','XZ'),(220,NULL,'C002001001','198','LL'),(221,NULL,'C002001001','199','XZ'),(222,NULL,'C002001002','198','LL'),(223,NULL,'C002001002','199','XZ'),(224,NULL,'C002001003','198','LL'),(225,NULL,'C002001003','199','XZ'),(226,NULL,'C002001004','198','LL'),(227,NULL,'C002001004','199','XZ'),(232,NULL,'C001002','188','LL'),(233,NULL,'C001002','189','XZ'),(234,NULL,'C001002001','232','LL'),(235,NULL,'C001002001','233','XZ'),(236,NULL,'C001002001001','234','LL'),(237,NULL,'C001002001001','235','XZ'),(238,NULL,'C001002001002','234','LL'),(239,NULL,'C001002001002','235','XZ'),(240,NULL,'C001002002','232','LL'),(241,NULL,'C001002002','233','XZ'),(242,NULL,'C001002002001','240','LL'),(243,NULL,'C001002002001','241','XZ'),(244,NULL,'C001002002002','240','LL'),(245,NULL,'C001002002002','241','XZ'),(246,NULL,'C001002002003','240','LL'),(247,NULL,'C001002002003','241','XZ'),(248,NULL,'C001003','188','LL'),(249,NULL,'C001003','189','XZ'),(250,NULL,'C001003001','248','LL'),(251,NULL,'C001003001','249','XZ'),(252,NULL,'C001004','188','LL'),(253,NULL,'C001004','189','XZ'),(254,NULL,'C001004001','252','LL'),(255,NULL,'C001004001','253','XZ'),(256,NULL,'C001005','188','LL'),(257,NULL,'C001005','189','XZ'),(258,NULL,'C001005001','256','LL'),(259,NULL,'C001005001','257','XZ'),(260,NULL,'C001005002','256','LL'),(261,NULL,'C001005002','257','XZ');
/*!40000 ALTER TABLE `auth_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classified_table`
--

DROP TABLE IF EXISTS `classified_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classified_table` (
  `classified_code` varchar(30) COLLATE utf8_bin NOT NULL,
  `classified_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `classified_fcode` varchar(30) COLLATE utf8_bin NOT NULL,
  `classified_createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `browse_state` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT '0',
  PRIMARY KEY (`classified_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classified_table`
--

LOCK TABLES `classified_table` WRITE;
/*!40000 ALTER TABLE `classified_table` DISABLE KEYS */;
INSERT INTO `classified_table` VALUES ('C001','联调联试','','2019-09-02 03:11:17','1'),('C001002','2008','C001','2019-09-02 03:10:28','1'),('C001002001','京广线','C001002','2019-09-02 03:10:48','1'),('C001002001001','会议','C001002001','2019-09-02 03:11:33','1'),('C001002001002','车上试验','C001002001','2019-09-02 03:12:00','1'),('C001002002','京沪线','C001002','2019-09-02 03:12:17','1'),('C001002002001','视察&客服','C001002002','2019-09-02 03:12:40','1'),('C001002002002','地面试验','C001002002','2019-09-02 03:13:33','1'),('C001002002003','车上实验','C001002002','2019-09-02 03:13:44','1'),('C001003','2009','C001','2019-09-02 03:18:53','1'),('C001003001','沪昆线','C001003','2019-09-02 03:19:16','1'),('C001004','2010','C001','2019-09-02 03:19:54','1'),('C001004001','长林线','C001004','2019-09-02 03:20:09','1'),('C001005','2011','C001','2019-09-02 03:24:55','1'),('C001005001','京津线','C001005','2019-09-02 03:25:08','1'),('C001005002','承赤线','C001005','2019-09-02 03:26:03','1'),('C002','单位分类','','2019-06-27 07:43:42','1'),('C002001','铁科院','C002','2019-06-27 07:43:48','1'),('C002001001','铁科院未分类','C002001','2019-08-22 03:16:04','1'),('C002001002','信息所','C002001','2019-08-22 03:16:04','1'),('C002001003','运经所','C002001','2019-08-22 03:16:36','1'),('C002001004','电子所','C002001','2019-08-22 03:16:49','1');
/*!40000 ALTER TABLE `classified_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `label_table`
--

DROP TABLE IF EXISTS `label_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `label_table` (
  `label_code` varchar(30) COLLATE utf8_bin NOT NULL,
  `label_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `label_fcode` varchar(30) COLLATE utf8_bin NOT NULL,
  `label_createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`label_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `label_table`
--

LOCK TABLES `label_table` WRITE;
/*!40000 ALTER TABLE `label_table` DISABLE KEYS */;
INSERT INTO `label_table` VALUES ('L001','轨道标签','','2019-06-27 07:44:56'),('L001001','轨道图片标签','L001','2019-06-27 07:45:11'),('L001001001','轨道图片标签未定义标签','L001001','2019-06-27 07:45:43'),('L001001002','钢轨图片','L001001','2019-06-27 07:45:43'),('L001002','222','L001','2019-07-23 01:43:17'),('L001002001','333','L001002','2019-07-23 01:43:27'),('L001002002','444','L001002','2019-07-23 01:43:35');
/*!40000 ALTER TABLE `label_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `menuCode` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `menuAddress` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `menuName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `menuDescribe` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `paternalCode` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `menuStyle` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `menuOrder` char(1) COLLATE utf8_bin DEFAULT NULL,
  `menuGrade` char(1) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES ('M02','','基础管理','基础管理',NULL,'&#xe60a;','2','1'),('M02S01',NULL,'基础管理','基础管理','M02','&#xe60a;','1','2'),('M02S01I01','classifyManage/toClassifyPage.htmls','分类管理','分类管理','M02S01','&#xe60a;','1','3'),('M02S01I02','labelManage/toLabelPage.htmls','标签管理','标签管理','M02S01','&#xe60a;','2','3'),('M02S01I03','albumManage/toAlbumPage.htmls','相册管理','相册管理','M02S01','&#xe60a;','3','3'),('M03',NULL,'照片管理','照片管理',NULL,'&#xe60a;','3','1'),('M03S01',NULL,'照片管理','照片管理','M03','&#xe60a;','1','2'),('M03S01I01','upload/toUploadPicture.htmls','上传','上传','M03S01','&#xe60a;','1','3'),('M03S01I02','updateImage/toUpdatePicture.htmls','修改','修改','M03S01','&#xe60a;','2','3'),('M03S01I03','browsePicture/toBorwsePage.htmls','浏览','浏览','M03S01','&#xe60a;','3','3'),('M03S01I04','downLoad/toDownLoadPicture.htmls','下载','下载','M03S01','&#xe60a;','4','3');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_table`
--

DROP TABLE IF EXISTS `operation_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_table` (
  `operation_code` varchar(20) COLLATE utf8_bin NOT NULL,
  `operation_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `resources_id` varchar(9) COLLATE utf8_bin NOT NULL,
  `operation_desc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`operation_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_table`
--

LOCK TABLES `operation_table` WRITE;
/*!40000 ALTER TABLE `operation_table` DISABLE KEYS */;
INSERT INTO `operation_table` VALUES ('LL','浏览','LL',NULL),('SC','上传','SC',NULL),('TPGL','照片管理','TPGL',NULL),('XG','修改','XG',NULL),('XZ','下载','XZ',NULL);
/*!40000 ALTER TABLE `operation_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization` (
  `orgCode` varchar(9) COLLATE utf8_bin NOT NULL,
  `orgName` varchar(100) COLLATE utf8_bin NOT NULL,
  `orgShort` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `orgType` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `orgSpell` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `paterCode` varchar(9) COLLATE utf8_bin DEFAULT NULL,
  `orgOrder` int(11) DEFAULT NULL,
  `creatTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`orgCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES ('001','铁科院',NULL,'0','0',NULL,NULL,'2019-06-25 06:01:54');
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_extend`
--

DROP TABLE IF EXISTS `photo_extend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo_extend` (
  `photo_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `cameraType` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `width` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `height` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `distinguishability` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `iso_sensitivity` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `exposure` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `focal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `diaphragm` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `flashlight` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `shoot_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_extend`
--

LOCK TABLES `photo_extend` WRITE;
/*!40000 ALTER TABLE `photo_extend` DISABLE KEYS */;
INSERT INTO `photo_extend` VALUES ('1061709076',NULL,'800 pixels','684 pixels','72 dots',NULL,NULL,NULL,NULL,NULL,NULL),('1710865320',NULL,'424 pixels','800 pixels','72 dots',NULL,NULL,NULL,NULL,NULL,NULL),('1961867480',NULL,'800 pixels','682 pixels','72 dots',NULL,NULL,NULL,NULL,NULL,NULL),('2079977462',NULL,'800 pixels','680 pixels','72 dots',NULL,NULL,NULL,NULL,NULL,NULL),('409043945',NULL,'362 pixels','800 pixels','72 dots',NULL,NULL,NULL,NULL,NULL,NULL),('483059875',NULL,'25683 pixels','9361 pixels','300 dots per inch',NULL,NULL,NULL,NULL,'1.00','2019-04-23 10:52:19'),('488623667',NULL,'25683 pixels','9361 pixels','300 dots per inch',NULL,NULL,NULL,NULL,'1.00','2019-04-23 10:53:23'),('818174146',NULL,'800 pixels','686 pixels','72 dots',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `photo_extend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_manage`
--

DROP TABLE IF EXISTS `photo_manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo_manage` (
  `photo_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `photo_url` varchar(500) COLLATE utf8_bin NOT NULL,
  `thumbnail_url` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `photo_name` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `upload_user` varchar(10) COLLATE utf8_bin NOT NULL,
  `upload_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_code` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `label_code` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `album_code` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `glance_num` int(11) NOT NULL DEFAULT '0',
  `download_num` int(11) NOT NULL DEFAULT '0',
  `remarks` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `photo_byte` longblob,
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_manage`
--

LOCK TABLES `photo_manage` WRITE;
/*!40000 ALTER TABLE `photo_manage` DISABLE KEYS */;
INSERT INTO `photo_manage` VALUES ('1061709076','\\icon\\微信图片_201908081717115.txt','\\thum\\微信图片_201908081717115.jpg','微信图片_201908081717115','CARS_user','2019-09-24 07:53:07','C001002001002','L001001002','A002',0,0,'',NULL),('1710865320','\\icon\\微信图片_201908081717113.txt','\\thum\\微信图片_201908081717113.jpg','微信图片_201908081717113','CARS_user','2019-09-24 07:53:07','C001002001002','L001001002','A002',0,0,'',NULL),('1961867480','\\icon\\微信图片_201908081717114.txt','\\thum\\微信图片_201908081717114.jpg','微信图片_201908081717114','CARS_user','2019-09-24 07:53:07','C001002001002','L001001002','A002',0,0,'',NULL),('2079977462','\\icon\\微信图片_201908081717117.txt','\\thum\\微信图片_201908081717117.jpg','微信图片_201908081717117','CARS_user','2019-09-24 07:53:08','C001002001002','L001001002','A002',0,0,'',NULL),('409043945','\\icon\\微信图片_20190808171711.txt','\\thum\\微信图片_20190808171711.jpg','微信图片_20190808171711','CARS_user','2019-09-24 07:53:07','C001002001002','L001001002','A002',0,0,'',NULL),('483059875','\\icon\\微信图片_201908081717111.txt','\\thum\\微信图片_201908081717111.jpg','微信图片_201908081717111','CARS_user','2019-09-24 07:53:09','C001002001002','L001001002','A002',0,0,'',NULL),('488623667','\\icon\\微信图片_201908081717112.txt','\\thum\\微信图片_201908081717112.jpg','微信图片_201908081717112','CARS_user','2019-09-24 07:53:09','C001002001002','L001001002','A002',0,0,'',NULL),('818174146','\\icon\\微信图片_201908081717116.txt','\\thum\\微信图片_201908081717116.jpg','微信图片_201908081717116','CARS_user','2019-09-24 07:53:07','C001002001002','L001001002','A002',0,0,'',NULL);
/*!40000 ALTER TABLE `photo_manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources_table`
--

DROP TABLE IF EXISTS `resources_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resources_table` (
  `resources_id` varchar(20) COLLATE utf8_bin NOT NULL,
  `resources_name` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`resources_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources_table`
--

LOCK TABLES `resources_table` WRITE;
/*!40000 ALTER TABLE `resources_table` DISABLE KEYS */;
INSERT INTO `resources_table` VALUES ('A001','风景相册'),('A002','设备相册'),('BQ','标签'),('C001','联调联试'),('C001002','2008'),('C001002001','京广线'),('C001002001001','会议'),('C001002001002','车上试验'),('C001002002','京沪线'),('C001002002001','视察&客服'),('C001002002002','地面试验'),('C001002002003','车上实验'),('C001003','2009'),('C001003001','沪昆线'),('C001004','2010'),('C001004001','长林线'),('C001005','2011'),('C001005001','京津线'),('C001005002','承赤线'),('C002','单位分类'),('C002001','铁科院'),('C002001001','铁科院未分类'),('C002001002','信息所'),('C002001003','运经所'),('C002001004','电子所'),('FL','分类'),('L001','轨道标签'),('L001001','轨道图片标签'),('L001001001','轨道图片标签未定义标签'),('L001001002','钢轨图片'),('L001002','222'),('L001002001','333'),('L001002002','444'),('XC','相册'),('XZ','下载');
/*!40000 ALTER TABLE `resources_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_purview`
--

DROP TABLE IF EXISTS `role_purview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_purview` (
  `authrelat_id` varchar(20) COLLATE utf8_bin NOT NULL,
  `role_Id` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_purview`
--

LOCK TABLES `role_purview` WRITE;
/*!40000 ALTER TABLE `role_purview` DISABLE KEYS */;
INSERT INTO `role_purview` VALUES ('24','7'),('42','10'),('66','10'),('70','10'),('43','11'),('67','11'),('71','11'),('11','6'),('43','12'),('26','8'),('34','8'),('10','8'),('200','8'),('202','8'),('204','8'),('206','8'),('214','8'),('216','8'),('218','8'),('12','8'),('188','8'),('190','8'),('192','8'),('194','8'),('210','8'),('212','8'),('228','8'),('230','8'),('208','8'),('196','8'),('198','8'),('220','8'),('222','8'),('224','8'),('226','8'),('31','8'),('172','8'),('174','8'),('26','9'),('25','9'),('35','9'),('201','9'),('203','9'),('205','9'),('207','9'),('215','9'),('217','9'),('219','9'),('36','9'),('189','9'),('191','9'),('193','9'),('195','9'),('211','9'),('213','9'),('229','9'),('231','9'),('209','9'),('197','9'),('199','9'),('221','9'),('223','9'),('225','9'),('227','9'),('37','9'),('173','9'),('175','9');
/*!40000 ALTER TABLE `role_purview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `roleDescribe` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (6,'上传角色','上传'),(7,'修改角色','修改'),(8,'浏览角色','浏览'),(9,'下载角色','下载'),(10,'浏览角色1','运经所浏览'),(11,'下载角色1','铁建所下载'),(12,'下载角色2','运经所下载');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `userId` varchar(20) COLLATE utf8_bin NOT NULL,
  `roleId` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES ('CARS_limin','7'),('CARS_limin','8'),('CARS_yangwt','6'),('CARS_yangwt','7'),('CARS_yangwt','8'),('CARS_admin','6'),('CARS_admin','7'),('CARS_admin','8'),('CARS_admin','9'),('CARS_admin','10'),('CARS_admin','11'),('CARS_admin','12'),('CARS_user','6'),('CARS_user','7'),('CARS_user','8'),('CARS_user','9'),('CARS_zhangkai','6'),('CARS_zhangkai','7'),('CARS_zhangkai','8'),('CARS_zhangkai','9'),('CARS_zhangkai','10'),('CARS_zhangkai','11'),('CARS_zhangkai','12');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userId` varchar(30) COLLATE utf8_bin NOT NULL,
  `orgCode` varchar(9) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `userName` varchar(200) COLLATE utf8_bin NOT NULL,
  `phone` char(11) COLLATE utf8_bin DEFAULT NULL,
  `userType` char(1) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('CARS_admin','001','crctmc123','铁科院管理员','1236547899','1'),('CARS_limin','001','crctmc123','李敏','15697753245','0'),('CARS_user','001','crctmc123','铁科院用户','14789652311','0'),('CARS_yangwt','001','crctmc123','杨文韬','18600245292','0'),('CARS_zhangkai','001','crctmc123','张凯','12587469321','0'),('admin',NULL,'crctmc123','超级管理员','1234567893','2'),('fuguoyin',NULL,'crctmc123','付国印','18134005741','3');
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

-- Dump completed on 2020-05-15 15:04:20
