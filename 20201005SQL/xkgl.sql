-- MySQL dump 10.13  Distrib 5.6.37, for Win64 (x86_64)
--
-- Host: localhost    Database: xkgl
-- ------------------------------------------------------
-- Server version	5.6.37

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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `ClassID` char(8) NOT NULL,
  `ClassName` varchar(20) NOT NULL,
  `Monitor` char(8) DEFAULT NULL,
  `StudentNum` int(11) DEFAULT NULL,
  `DepartmentID` char(4) DEFAULT NULL,
  PRIMARY KEY (`ClassID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES ('Cs010901','09软件技术1班','方凯',34,'Dp01'),('Cs010902','09软件测试1班','林静',10,'Dp01'),('Cs010903','09数据库班','黄勇',28,'Dp01'),('Cs011104','11网络工程',NULL,23,'Dp01'),('Cs021001','10电子商务1班','李米',33,'Dp02'),('Cs021002','10电子商务2班',NULL,NULL,'Dp02');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `CourseID` char(8) NOT NULL,
  `CourseName` varchar(60) NOT NULL,
  `BookName` varchar(80) DEFAULT NULL,
  `period` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  PRIMARY KEY (`CourseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('Dp010001','JAVA程序设计','Java高级程序设计',60,4),('Dp010002','计算机网络','计算机网络',90,6),('Dp010003','数据库原理与应用','数据库技术与应用_SQL Server 2005',60,4),('Dp010004','计算机应用基础','计算机应用基础',30,2),('Dp020001','国际贸易实务','国际贸易实务',60,4),('Dp020002','电子商务物流管理','物流学概论',60,4),('Dp030001','大学英语(一)','大学英语综合一',90,6);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `DepartmentID` char(4) NOT NULL,
  `DepartmentName` varchar(20) NOT NULL,
  `DepartmentHeader` varchar(8) NOT NULL,
  `TeacherNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`DepartmentID`),
  UNIQUE KEY `DepartmentName` (`DepartmentName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('Dp01','计算机系','罗浩然',120),('Dp02','信管系','李伶俐',NULL),('Dp03','英语系','李宏伟',10);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade` (
  `CourseID` char(8) NOT NULL DEFAULT '',
  `StudentID` char(12) NOT NULL DEFAULT '',
  `Semester` int(11) NOT NULL,
  `SchoolYear` int(11) DEFAULT NULL,
  `Grade` decimal(5,1) DEFAULT NULL,
  PRIMARY KEY (`CourseID`,`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES ('Dp010001','St0109010001',2,2009,87.0),('Dp010001','St0109010002',2,2009,68.0),('Dp010001','St0109010003',2,2009,92.0),('Dp010001','St0109010004',2,2009,91.0),('Dp010001','St0109010005',2,2009,72.0),('Dp010001','St0109010006',2,2009,87.0),('Dp010001','St0109010007',2,2009,97.0),('Dp010001','St0109010009',2,2009,69.0),('Dp010001','St0109020001',2,2009,56.0),('Dp010001','St0109020002',2,2009,89.0),('Dp010001','St0109020003',2,2009,98.0),('Dp010001','St0109020004',2,2009,76.0),('Dp010001','St0210010001',2,2010,88.0),('Dp010001','St0210010002',2,2010,72.0),('Dp010001','St0210010003',2,2010,71.0),('Dp010002','St0111040001',2,2011,54.0),('Dp010002','St0111040002',2,2011,92.0),('Dp010002','St0111040003',2,2011,95.0),('Dp010003','St0109010001',2,2009,50.0),('Dp010003','St0109010002',2,2009,67.0),('Dp010003','St0109010003',2,2009,61.0),('Dp010003','St0109010004',2,2009,91.0),('Dp010003','St0109010005',2,2009,55.0),('Dp010003','St0109010006',2,2009,68.0),('Dp010003','St0109010007',2,2009,69.0),('Dp010003','St0109010009',2,2009,55.0),('Dp010003','St0109020001',2,2009,93.0),('Dp010003','St0109020002',2,2009,70.0),('Dp010003','St0109020003',2,2009,73.0),('Dp010003','St0109020004',2,2009,81.0),('Dp010004','St0109010001',2,2009,80.0),('Dp010004','St0109010002',2,2009,63.0),('Dp010004','St0109010004',2,2009,57.0),('Dp010004','St0109010005',2,2009,94.0),('Dp010004','St0109010006',2,2009,89.0),('Dp010004','St0109010007',2,2009,83.0),('Dp010004','St0109010009',2,2009,82.0),('Dp010004','St0109020001',2,2009,72.0),('Dp010004','St0109020002',2,2009,57.0),('Dp010004','St0109020003',2,2009,53.0),('Dp010004','St0109020004',2,2009,51.0),('Dp010004','St0111040001',1,2012,55.0),('Dp010004','St0111040002',1,2012,63.0),('Dp010004','St0111040003',1,2012,61.0),('Dp010004','St0210010001',1,2011,99.0),('Dp010004','St0210010002',1,2011,71.0),('Dp010004','St0210010003',1,2011,56.0),('Dp020001','St0210010002',2,2010,64.0),('Dp020001','St0210010003',2,2010,82.0),('Dp020001','St0210010004',2,2010,95.0),('Dp020001','St0210010005',2,2010,86.0),('Dp030001','St0109010001',2,2009,75.0),('Dp030001','St0109010002',2,2009,53.0),('Dp030001','St0109010003',2,2009,64.0),('Dp030001','St0109010004',2,2009,84.0),('Dp030001','St0109010005',2,2009,72.0),('Dp030001','St0109010006',2,2009,93.0),('Dp030001','St0109010007',2,2009,98.0),('Dp030001','St0109010009',2,2009,64.0),('Dp030001','St0109020001',2,2009,77.0),('Dp030001','St0109020002',2,2009,61.0),('Dp030001','St0109020003',2,2009,63.0),('Dp030001','St0109020004',2,2009,51.0),('Dp030001','St0111040001',2,2011,96.0),('Dp030001','St0111040002',2,2011,63.0),('Dp030001','St0111040003',2,2011,71.0),('Dp030001','St0210010001',2,2010,77.0),('Dp030001','St0210010002',2,2010,67.0),('Dp030001','St0210010003',2,2010,91.0),('Dp030001','St0210010004',2,2010,68.0),('Dp030001','St0210010005',2,2010,73.0);
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `TeacherID` char(8) NOT NULL DEFAULT '',
  `CourseID` char(8) NOT NULL DEFAULT '',
  `ClassID` char(8) NOT NULL DEFAULT '',
  `Semester` int(11) NOT NULL,
  `SchoolYear` int(11) NOT NULL,
  PRIMARY KEY (`TeacherID`,`CourseID`,`ClassID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES ('dep01001','Dp010003','Cs010902',2,2009),('dep01001','Dp010003','Cs010903',2,2009),('dep01001','Dp010004','Cs010901',2,2009),('dep01001','Dp010004','Cs010902',2,2009),('dep01002','Dp010002','Cs011104',2,2011),('dep01003','Dp010004','Cs011104',1,2012),('dep01003','Dp010004','Cs021001',1,2011),('dep01005','Dp010001','Cs010901',2,2009),('dep01005','Dp010001','Cs010902',2,2009),('dep01005','Dp010001','Cs021001',2,2010),('dep02001','Dp020001','Cs021001',2,2010),('dep03001','Dp030001','Cs010901',2,2009),('dep03001','Dp030001','Cs010902',2,2009),('dep03001','Dp030001','Cs011104',2,2011),('dep03003','Dp030001','Cs021001',2,2010);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `StudentID` char(12) NOT NULL,
  `StudentName` char(8) NOT NULL,
  `Sex` char(2) NOT NULL,
  `birth1` date DEFAULT NULL,
  `HomeAddr` varchar(80) DEFAULT NULL,
  `EntranceTime` datetime DEFAULT '2015-09-01 00:00:00',
  `ClassID` char(8) DEFAULT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('St0109010001','张宏','男','1991-04-04','广州市天河区常保阁东 80 号','2009-09-10 00:00:00','Cs010901'),('St0109010002','姜明凡','男','1990-12-07','汕头市天源路34号','2009-09-19 00:00:00','Cs010901'),('St0109010003','张丽','女','1990-09-30','','2009-09-19 00:00:00','Cs010901'),('St0109010004','赵新宇','男','1991-05-09','大连市沙河区承德西路 80 号','2009-09-10 00:00:00','Cs010901'),('St0109010005','李宇凯','男','1989-11-27','大连市沙河区花园东街 90 号','2009-09-10 00:00:00','Cs010901'),('St0109010006','黄丽莉','女','1990-08-15','佛山市南海区南海大道120号','2009-09-10 00:00:00','Cs010901'),('St0109010007','胡雨樱','女','1990-06-23','佛山市南海区狮山20号','2009-09-10 00:00:00','Cs010901'),('St0109010008','曹海华','男','1992-07-12','上海市黄石路 50 号','2009-09-10 00:00:00','Cs010901'),('St0109010009','许田','男','1991-02-21','深圳市福田区福华路29号京海大厦18c','2009-09-10 00:00:00','Cs010901'),('St0109020001','李平','男','1991-04-30','成都市都江堰红石路321号','2009-09-10 00:00:00','Cs010902'),('St0109020002','王虎','男','1990-10-19','宜宾市宜宾大道231号','2009-09-19 00:00:00','Cs010902'),('St0109020003','黄微','女','1990-07-18','鞍山市中山大道786号','2009-09-19 00:00:00','Cs010902'),('St0109020004','张凯芝','女','1989-05-19','广州市东山区34号','2009-09-19 00:00:00','Cs010902'),('St0111040001','立号','男','1994-11-04','','2011-09-13 00:00:00','Cs011104'),('St0111040002','姚钱','女','1993-04-02','成都市武侯区中山大道12号','2011-09-13 00:00:00','Cs011104'),('St0111040003','方雨丽','女','1993-10-04','','2011-09-13 00:00:00','Cs011104'),('St0210010001','李平','女','1992-12-03','广州市萝岗区32号','2010-09-12 00:00:00','Cs021001'),('St0210010002','周雅云','女','1991-04-23','大连市沙河区花园东街 91 号','2010-09-12 00:00:00','Cs021001'),('St0210010003','王建伟','男','1990-10-10','成都市中山路321号','2010-09-12 00:00:00','Cs021001'),('St0210010004','梁冬云','男','1991-05-04','成都市中山路322号','2010-09-12 00:00:00','Cs021001'),('St0210010005','黄树军','男','1993-04-08','佛山市顺德区五一大道120号','2010-09-12 00:00:00','Cs021001'),('St0210010006','雷立','男','1992-09-02','','2010-09-12 00:00:00','Cs021001');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `TeacherID` char(8) NOT NULL,
  `Teachername` char(12) NOT NULL,
  `Sex` char(2) NOT NULL,
  `Brith` datetime DEFAULT NULL,
  `Profession` char(8) DEFAULT NULL,
  `Telephone` varchar(20) DEFAULT NULL,
  `HomeAddr` varchar(50) DEFAULT NULL,
  `DepartmentID` char(4) DEFAULT NULL,
  PRIMARY KEY (`TeacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('dep01001','王一平','男','1968-04-05 00:00:00','副教授','86684567','一宿舍29栋309','Dp01'),('dep01002','潘清菊','女','1976-09-03 00:00:00','讲师','86685633','一宿舍21栋109','Dp01'),('dep01003','陈鹤','男','1959-12-05 00:00:00','教授','86687656','一宿舍12栋306','Dp01'),('dep01004','周江瑞','男','1984-06-05 00:00:00','助教','86684332','一宿舍3栋306','Dp01'),('dep01005','朱于龙','男','1978-05-06 00:00:00','讲师','86687653','一宿舍1栋206','Dp01'),('dep02001','雷燕','女','1973-03-02 00:00:00','副教授','86687651','一宿舍1栋106','Dp02'),('dep02002','郭菊','女','1985-06-07 00:00:00','助教','86680975','一宿舍1栋406','Dp02'),('dep02003','刘悠然','男','1969-12-09 00:00:00','教授','86685645','一宿舍1栋306','Dp02'),('dep03001','胡丽','女','1968-06-07 00:00:00','副教授','86687904','一宿舍21栋108','Dp03'),('dep03002','刘芳','女','1976-08-06 00:00:00','讲师','86684312','一宿舍21栋208','Dp03'),('dep03003','雷珍锦','女','1978-05-06 00:00:00','讲师','86687954','一宿舍3栋206','Dp03');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-09 17:13:56
