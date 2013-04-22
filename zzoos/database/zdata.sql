CREATE DATABASE  IF NOT EXISTS `zdata` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `zdata`;
-- MySQL dump 10.13  Distrib 5.1.67, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: zdata
-- ------------------------------------------------------
-- Server version	5.1.67

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
-- Table structure for table `info_news`
--

DROP TABLE IF EXISTS `info_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_news`
--

LOCK TABLES `info_news` WRITE;
/*!40000 ALTER TABLE `info_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `info_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_table`
--

DROP TABLE IF EXISTS `test_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_table` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT NULL,
  `inputtext` varchar(4000) DEFAULT NULL COMMENT '输入字段',
  `selecttext` varchar(4000) DEFAULT NULL COMMENT '选择字段',
  `url_file` varchar(4000) DEFAULT '''''' COMMENT '文件上传',
  `url_img` varchar(4000) DEFAULT NULL,
  `textarea` varchar(4000) DEFAULT '''''',
  `checkbox` varchar(45) DEFAULT '''''' COMMENT '选择框',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_table`
--

LOCK TABLES `test_table` WRITE;
/*!40000 ALTER TABLE `test_table` DISABLE KEYS */;
INSERT INTO `test_table` VALUES (1,'99108b5f3d794086b7865cae87dd0612','<p>afdadffff</p>\n','','','','<p>xxxxdd</p>\n',''),(2,'d7bc3f5902ca4ad593429a4f84ee25a2','<p>adfa</p>\n','aa','aa','dd','<p>acdfxxxxxxxxxxxxafdafdasfdfs</p>\n','afdasf'),(3,'b5a3075756084533944bc33f8c04e1f6','<p>dfafd</p>\n','af','da','fda','<p>dddddddddd</p>\n','ddddd'),(4,'21586d3efd6c43ed95535c35f9d3207d','','','','','<p>ad</p>\n',''),(5,'ae753a6d0b7f4debbeabe1ce47dd7f2d','','','','','',''),(6,'8091d21ff29c479caec035e671f7c863','<p>dfaf</p>\n','fasfs','fsaf','asfasf','<p>asdfsdafdasf</p>\n',''),(7,'4844e532d001453f98ef2df79610adba','','','','','',''),(8,'a19d33a8a0574b74b51c6568ddb867bf','','','','','',''),(9,'3abd7dafbb194fea86c314544b7a1bb6','','','','','',''),(10,'4843d11b79b24f029fce50dc44eba3f5','','','','','',''),(11,'1956562da6c34b3f98a09a69a04c637c','','','','','','');
/*!40000 ALTER TABLE `test_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `you_class`
--

DROP TABLE IF EXISTS `you_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `you_class` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '''''',
  `code` varchar(200) DEFAULT '''''' COMMENT '编号',
  `name` varchar(200) DEFAULT '''''' COMMENT '名称',
  `link` varchar(200) DEFAULT '''''' COMMENT '链接地址',
  `note` varchar(500) DEFAULT '''''' COMMENT '描述',
  `orderid` int(11) DEFAULT '0' COMMENT '排序',
  `parent_code` varchar(200) DEFAULT '''''' COMMENT '父编码',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `you_class`
--

LOCK TABLES `you_class` WRITE;
/*!40000 ALTER TABLE `you_class` DISABLE KEYS */;
INSERT INTO `you_class` VALUES (1,'09e561b8b47f4d45aa3309145231b54b','1','1','1','1',1,'1');
/*!40000 ALTER TABLE `you_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zdata_column`
--

DROP TABLE IF EXISTS `zdata_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zdata_column` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) NOT NULL DEFAULT '',
  `server_name` varchar(45) NOT NULL DEFAULT '' COMMENT '服务器名称',
  `table_name` varchar(45) NOT NULL DEFAULT '' COMMENT '表名',
  `column_name` varchar(45) NOT NULL DEFAULT '' COMMENT '列名',
  `did_null_able` int(11) DEFAULT '0' COMMENT '是否为空',
  `did_column_type` int(11) DEFAULT '0' COMMENT '列类型',
  `length_max` int(11) DEFAULT '0' COMMENT '最大长度',
  `length_scale` int(11) DEFAULT '0' COMMENT '第二长度',
  `note` varchar(100) DEFAULT '' COMMENT '名称',
  `orderid` int(11) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`zid`),
  UNIQUE KEY `table_name` (`table_name`,`column_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1771 DEFAULT CHARSET=utf8 COMMENT='数据列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zdata_column`
--

LOCK TABLES `zdata_column` WRITE;
/*!40000 ALTER TABLE `zdata_column` DISABLE KEYS */;
INSERT INTO `zdata_column` VALUES (1605,'4946077ea9cb11e294f60023187c448b','zdata','zdata_column','zid',400001002,404103109,0,0,'',1),(1606,'494e3acaa9cb11e294f60023187c448b','zdata','zdata_column','uid',400001002,404103103,32,0,'',2),(1607,'494e43fca9cb11e294f60023187c448b','zdata','zdata_column','server_name',400001002,404103122,45,0,'服务器名称',3),(1608,'49531434a9cb11e294f60023187c448b','zdata','zdata_column','table_name',400001002,404103122,45,0,'表名',4),(1609,'49547dbea9cb11e294f60023187c448b','zdata','zdata_column','column_name',400001002,404103122,45,0,'列名',5),(1610,'49548548a9cb11e294f60023187c448b','zdata','zdata_column','did_null_able',400001001,404103109,0,0,'是否为空',6),(1611,'49566ffaa9cb11e294f60023187c448b','zdata','zdata_column','did_column_type',400001001,404103109,0,0,'列类型',7),(1612,'4956bfc6a9cb11e294f60023187c448b','zdata','zdata_column','length_max',400001001,404103109,0,0,'最大长度',8),(1613,'4957d71ba9cb11e294f60023187c448b','zdata','zdata_column','length_scale',400001001,404103109,0,0,'第二长度',9),(1614,'4958ee7ea9cb11e294f60023187c448b','zdata','zdata_column','note',400001001,404103122,100,0,'名称',10),(1615,'495b13b0a9cb11e294f60023187c448b','zdata','zdata_column','orderid',400001001,404103109,0,0,'排序',11),(1616,'495b2df3a9cb11e294f60023187c448b','zdata','zdata_server','zid',400001002,404103109,0,0,'',1),(1617,'495b4b45a9cb11e294f60023187c448b','zdata','zdata_server','uid',400001002,404103103,32,0,'',2),(1618,'495b6d88a9cb11e294f60023187c448b','zdata','zdata_server','name',400001002,404103122,100,0,'名称',3),(1619,'495b7535a9cb11e294f60023187c448b','zdata','zdata_server','jdbc_class',400001002,404103122,100,0,'类名',4),(1620,'495bfeeea9cb11e294f60023187c448b','zdata','zdata_server','jdbc_url',400001002,404103122,100,0,'地址',5),(1621,'495c1451a9cb11e294f60023187c448b','zdata','zdata_server','jdbc_user',400001002,404103122,100,0,'用户名',6),(1622,'495c1b70a9cb11e294f60023187c448b','zdata','zdata_server','jdbc_password',400001002,404103122,100,0,'密码',7),(1623,'495c332da9cb11e294f60023187c448b','zdata','zdata_server','note',400001002,404103122,1000,0,'描述',8),(1624,'495e3f3aa9cb11e294f60023187c448b','zdata','zdata_table','zid',400001002,404103109,0,0,'',1),(1625,'495e52d1a9cb11e294f60023187c448b','zdata','zdata_table','uid',400001002,404103103,32,0,'',2),(1626,'495e5944a9cb11e294f60023187c448b','zdata','zdata_table','code',400001001,404103122,45,0,'编码',3),(1627,'495e5f3da9cb11e294f60023187c448b','zdata','zdata_table','name',400001001,404103122,100,0,'名称',4),(1628,'495e68b7a9cb11e294f60023187c448b','zdata','zdata_table','note',400001001,404103122,100,0,'描述',5),(1629,'495e6f05a9cb11e294f60023187c448b','zdata','zsrnpr_define','zid',400001002,404103109,0,0,'',1),(1630,'495e74fda9cb11e294f60023187c448b','zdata','zsrnpr_define','uid',400001002,404103103,32,0,'',2),(1631,'495e8a59a9cb11e294f60023187c448b','zdata','zsrnpr_define','code',400001002,404103122,100,0,'编码',3),(1632,'495e8fcda9cb11e294f60023187c448b','zdata','zsrnpr_define','name',400001001,404103122,100,0,'名称',4),(1633,'495e92c2a9cb11e294f60023187c448b','zdata','zsrnpr_define','value',400001001,404103122,100,0,'值',5),(1634,'495e95f3a9cb11e294f60023187c448b','zdata','zsrnpr_define','note',400001001,404103122,100,0,'中文',6),(1635,'495e9a35a9cb11e294f60023187c448b','zdata','zsrnpr_define','level',400001001,404103109,0,0,'级别',7),(1636,'495e9d46a9cb11e294f60023187c448b','zdata','zweb_fields','zid',400001002,404103109,0,0,'',1),(1637,'495ea02ca9cb11e294f60023187c448b','zdata','zweb_fields','uid',400001001,404103103,32,0,'',2),(1638,'495ea2fda9cb11e294f60023187c448b','zdata','zweb_fields','view_code',400001001,404103122,100,0,'视图编码',3),(1639,'495ea621a9cb11e294f60023187c448b','zdata','zweb_fields','column_name',400001001,404103122,100,0,'数据列名称',4),(1640,'495ea8c5a9cb11e294f60023187c448b','zdata','zweb_fields','field_name',400001001,404103122,100,0,'字段名称',5),(1641,'495eb681a9cb11e294f60023187c448b','zdata','zweb_fields','did_field_type',400001001,404103109,0,0,'字段类型',6),(1642,'495ecd6ba9cb11e294f60023187c448b','zdata','zweb_fields','source_code',400001001,404103122,100,0,'数据源编码',7),(1643,'495ed57aa9cb11e294f60023187c448b','zdata','zweb_fields','source_parameter',400001001,404103122,500,0,'数据源参数',8),(1644,'495ed9aba9cb11e294f60023187c448b','zdata','zweb_fields','level_grid',400001001,404103109,0,0,'列表标记',9),(1645,'495ee162a9cb11e294f60023187c448b','zdata','zweb_fields','level_add',400001001,404103109,0,0,'插入标记',10),(1646,'495ee600a9cb11e294f60023187c448b','zdata','zweb_fields','level_edit',400001001,404103109,0,0,'修改标记',11),(1647,'49609f49a9cb11e294f60023187c448b','zdata','zweb_fields','level_book',400001001,404103109,0,0,'展示标记',12),(1648,'4960edeca9cb11e294f60023187c448b','zdata','zweb_fields','level_inquire',400001001,404103109,0,0,'查询条件',13),(1649,'4960f184a9cb11e294f60023187c448b','zdata','zweb_options','zid',400001002,404103109,0,0,'',1),(1650,'4960f65da9cb11e294f60023187c448b','zdata','zweb_options','uid',400001001,404103103,32,0,'',2),(1651,'4960f966a9cb11e294f60023187c448b','zdata','zweb_options','view_code',400001001,404103122,100,0,'视图编号',3),(1652,'4960fc4ea9cb11e294f60023187c448b','zdata','zweb_options','name',400001001,404103122,100,0,'名称',4),(1653,'4960ff30a9cb11e294f60023187c448b','zdata','zweb_options','did_page_type',400001001,404103109,0,0,'',5),(1654,'496101d0a9cb11e294f60023187c448b','zdata','zweb_options','did_option_type',400001001,404103109,0,0,'',6),(1655,'49610464a9cb11e294f60023187c448b','zdata','zweb_options','params',400001001,404103122,100,0,'操作参数',7),(1656,'49610733a9cb11e294f60023187c448b','zdata','zweb_source','zid',400001002,404103109,0,0,'',1),(1657,'4961099ba9cb11e294f60023187c448b','zdata','zweb_source','uid',400001002,404103103,32,0,'',2),(1658,'49610c0da9cb11e294f60023187c448b','zdata','zweb_source','did_source_type',400001001,404103109,0,0,'数据源类型',3),(1659,'49610e7ea9cb11e294f60023187c448b','zdata','zweb_source','source_code',400001001,404103122,45,0,'数据源编号',4),(1660,'496110f1a9cb11e294f60023187c448b','zdata','zweb_source','source_name',400001001,404103122,45,0,'数据源名称',5),(1661,'4961136ba9cb11e294f60023187c448b','zdata','zweb_source','field_text',400001001,404103122,500,0,'展示字段',6),(1662,'4961d271a9cb11e294f60023187c448b','zdata','zweb_source','field_value',400001001,404103122,500,0,'实际值字段',7),(1663,'4961d6b2a9cb11e294f60023187c448b','zdata','zweb_source','from',400001001,404103122,500,0,'来自',8),(1664,'4961d935a9cb11e294f60023187c448b','zdata','zweb_source','where_book',400001001,404103122,500,0,'展示时',9),(1665,'4961dbb0a9cb11e294f60023187c448b','zdata','zweb_source','where_edit',400001001,404103122,500,0,'修改时',10),(1666,'4961dfdaa9cb11e294f60023187c448b','zdata','zweb_view','zid',400001002,404103109,0,0,'',1),(1667,'4961e2d0a9cb11e294f60023187c448b','zdata','zweb_view','uid',400001001,404103103,32,0,'',2),(1668,'4962fccea9cb11e294f60023187c448b','zdata','zweb_view','code',400001001,404103122,100,0,'编码',3),(1669,'4963029ba9cb11e294f60023187c448b','zdata','zweb_view','view_name',400001001,404103122,100,0,'视图名称',4),(1670,'49630586a9cb11e294f60023187c448b','zdata','zweb_view','table_name',400001001,404103122,100,0,'表名称',5),(1747,'6f5e1374aa4411e299940050568856aa','zdata','test_table','zid',400001002,404103109,0,0,'',1),(1748,'6f5e157caa4411e299940050568856aa','zdata','test_table','uid',400001001,404103103,32,0,'',2),(1749,'6f5e1608aa4411e299940050568856aa','zdata','test_table','inputtext',400001001,404103122,45,0,'输入字段',3),(1750,'6f5e1680aa4411e299940050568856aa','zdata','test_table','selecttext',400001001,404103122,45,0,'选择字段',4),(1751,'6f5e16f8aa4411e299940050568856aa','zdata','test_table','url_file',400001001,404103122,45,0,'文件上传',5),(1752,'6f5e177aaa4411e299940050568856aa','zdata','test_table','url_img',400001001,404103122,45,0,'',6),(1753,'6f5e17f2aa4411e299940050568856aa','zdata','test_table','textarea',400001001,404103122,45,0,'',7),(1754,'6f5e1860aa4411e299940050568856aa','zdata','test_table','checkbox',400001001,404103122,45,0,'选择框',8),(1755,'c230bf82ab5e11e28ccc0023187c448b','zdata','info_news','id',400001002,404103109,0,0,'',1),(1756,'c230c25cab5e11e28ccc0023187c448b','zdata','info_news','uid',400001001,404103103,32,0,'',2),(1757,'c230c31aab5e11e28ccc0023187c448b','zdata','you_class','zid',400001002,404103109,0,0,'',1),(1758,'c230c392ab5e11e28ccc0023187c448b','zdata','you_class','uid',400001001,404103103,32,0,'',2),(1759,'c230c414ab5e11e28ccc0023187c448b','zdata','you_class','code',400001001,404103122,200,0,'编号',3),(1760,'c230c496ab5e11e28ccc0023187c448b','zdata','you_class','name',400001001,404103122,200,0,'名称',4),(1761,'c230c50eab5e11e28ccc0023187c448b','zdata','you_class','link',400001001,404103122,200,0,'链接地址',5),(1762,'c230c590ab5e11e28ccc0023187c448b','zdata','you_class','note',400001001,404103122,500,0,'描述',6),(1763,'c230c612ab5e11e28ccc0023187c448b','zdata','you_class','orderid',400001001,404103109,0,0,'排序',7),(1764,'c230c6d0ab5e11e28ccc0023187c448b','zdata','you_manager','zid',400001002,404103109,0,0,'',1),(1765,'c230c752ab5e11e28ccc0023187c448b','zdata','you_manager','uid',400001001,404103103,32,0,'',2),(1766,'c230c7d4ab5e11e28ccc0023187c448b','zdata','you_manager','loginname',400001001,404103122,45,0,'',3),(1767,'c230c84cab5e11e28ccc0023187c448b','zdata','you_manager','password',400001001,404103122,45,0,'',4),(1768,'c230c8ceab5e11e28ccc0023187c448b','zdata','you_manager','showname',400001001,404103122,45,0,'',5),(1770,'c216371cab6711e28ccc0023187c448b','zdata','you_class','parent_code',400001001,404103122,200,0,'',8);
/*!40000 ALTER TABLE `zdata_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zdata_server`
--

DROP TABLE IF EXISTS `zdata_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zdata_server` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `jdbc_class` varchar(100) NOT NULL DEFAULT '' COMMENT '类名',
  `jdbc_url` varchar(100) NOT NULL DEFAULT '' COMMENT '地址',
  `jdbc_user` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名',
  `jdbc_password` varchar(100) NOT NULL DEFAULT '' COMMENT '密码',
  `note` varchar(1000) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`zid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='服务器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zdata_server`
--

LOCK TABLES `zdata_server` WRITE;
/*!40000 ALTER TABLE `zdata_server` DISABLE KEYS */;
INSERT INTO `zdata_server` VALUES (1,'87421629a90111e2bb7900241d8adc62','zdata','com.mysql.jdbc.Driver','jdbc:mysql://127.0.0.1:3306/zdata?useUnicode=true&characterEncoding=utf8','root','','0');
/*!40000 ALTER TABLE `zdata_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zdata_table`
--

DROP TABLE IF EXISTS `zdata_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zdata_table` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) NOT NULL DEFAULT '',
  `code` varchar(45) DEFAULT '' COMMENT '编码',
  `name` varchar(100) DEFAULT '' COMMENT '名称',
  `note` varchar(100) DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`zid`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8 COMMENT='数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zdata_table`
--

LOCK TABLES `zdata_table` WRITE;
/*!40000 ALTER TABLE `zdata_table` DISABLE KEYS */;
INSERT INTO `zdata_table` VALUES (203,'4937f68fa9cb11e294f60023187c448b','zdata_column','zdata_column','数据列表'),(204,'4937fd17a9cb11e294f60023187c448b','zdata_server','zdata_server','服务器表'),(205,'4937ff30a9cb11e294f60023187c448b','zdata_table','zdata_table','数据表'),(206,'493800e7a9cb11e294f60023187c448b','zsrnpr_define','zsrnpr_define',''),(207,'493802dea9cb11e294f60023187c448b','zweb_fields','zweb_fields','视图字段表'),(208,'493805eea9cb11e294f60023187c448b','zweb_options','zweb_options','操作表'),(209,'4938079fa9cb11e294f60023187c448b','zweb_source','zweb_source','数据源定义'),(210,'493808a4a9cb11e294f60023187c448b','zweb_view','zweb_view','视图表'),(218,'f2096482aa4311e299940050568856aa','test_table','test_table',''),(219,'be01e8b4ab5e11e28ccc0023187c448b','info_news','info_news',''),(220,'be01ed6eab5e11e28ccc0023187c448b','you_class','you_class',''),(221,'be01eee0ab5e11e28ccc0023187c448b','you_manager','you_manager','');
/*!40000 ALTER TABLE `zdata_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zsrnpr_define`
--

DROP TABLE IF EXISTS `zsrnpr_define`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zsrnpr_define` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) NOT NULL DEFAULT '',
  `code` varchar(100) NOT NULL DEFAULT '' COMMENT '编码',
  `name` varchar(100) DEFAULT '' COMMENT '名称',
  `value` varchar(100) DEFAULT '' COMMENT '值',
  `note` varchar(100) DEFAULT '' COMMENT '中文',
  `level` int(11) DEFAULT '0' COMMENT '级别',
  PRIMARY KEY (`zid`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zsrnpr_define`
--

LOCK TABLES `zsrnpr_define` WRITE;
/*!40000 ALTER TABLE `zsrnpr_define` DISABLE KEYS */;
INSERT INTO `zsrnpr_define` VALUES (1,'90c43881a90111e2bb7900241d8adc62','400','系统定义','','',1),(2,'90c43a88a90111e2bb7900241d8adc62','400001','是否','','',2),(6,'90c43afca90111e2bb7900241d8adc62','400001001','是','','',3),(7,'90c43b70a90111e2bb7900241d8adc62','400001002','否','','',3),(8,'90c43bd1a90111e2bb7900241d8adc62','404120','数据库类型定义','','',2),(9,'90c43c2ea90111e2bb7900241d8adc62','404103','数据库字段定义','column','',2),(10,'90c43c94a90111e2bb7900241d8adc62','404103109','int','int','',3),(11,'90c43cf5a90111e2bb7900241d8adc62','404103122','varchar','varchar','',3),(12,'90c43d51a90111e2bb7900241d8adc62','404103104','decimal','decimal','',3),(13,'90c43db3a90111e2bb7900241d8adc62','415101','页面按钮工具栏','options','',2),(14,'90c43e14a90111e2bb7900241d8adc62','415101019','提交','submit','',3),(15,'90c43e75a90111e2bb7900241d8adc62','404','数据库定义','data','定义数据库',1),(16,'90c43ed7a90111e2bb7900241d8adc62','416','页面定义','page','',1),(19,'90c43f38a90111e2bb7900241d8adc62','416108','页面元素类型','html','',2),(20,'90c43f9ea90111e2bb7900241d8adc62','416108109','文本输入框','input','',3),(21,'90c43fffa90111e2bb7900241d8adc62','404119','数据源类型定义','source','定义数据源用，用于zdata_source表',2),(22,'90c44061a90111e2bb7900241d8adc62','404119115','kV表','one','',3),(23,'90c440bda90111e2bb7900241d8adc62','404119103','关联表','conc','',3),(24,'90c4411fa90111e2bb7900241d8adc62','404103103','char','char','',3),(33,'90c4417ba90111e2bb7900241d8adc62','416120','页面类型','','',2),(34,'90c441d8a90111e2bb7900241d8adc62','416120103','列表页','chart','',3),(35,'90c44235a90111e2bb7900241d8adc62','416120101','新增页','add','',3),(36,'90c442d7a90111e2bb7900241d8adc62','416120105','修改页','edit','',3),(37,'90c44338a90111e2bb7900241d8adc62','416120102','查看页','book','',3),(38,'90c44409a90111e2bb7900241d8adc62','415101001','按钮-新增','add','',3),(40,'90c4446aa90111e2bb7900241d8adc62','415101005','按钮-修改','edit','',3),(41,'90c444c7a90111e2bb7900241d8adc62','416120104','删除页','delete','',3),(43,'90c44523a90111e2bb7900241d8adc62','416108119','选择下拉框','select','',3),(44,'90c44580a90111e2bb7900241d8adc62','416120107','查询结果内','grid','',3),(45,'90c445dda90111e2bb7900241d8adc62','415101012','自定义链接','link','自定义链接',3),(46,'90c4463ea90111e2bb7900241d8adc62','415101305','列表页表格-修改','chart-edit','列表页表格-修改',3),(47,'90c4469aa90111e2bb7900241d8adc62','416120106','执行专用页','func','',3),(48,'90c446f7a90111e2bb7900241d8adc62','415','操作定义','options','',1),(49,'90c44580a90111e2bb7900241d8adc63','415101006','按钮-执行调用','func','',3),(50,'90c44580a90111e2bb7900241d8adc71','416120109','查询条件','inquire','查询条件',3),(52,'90c44580a90111e2bb7900241d8adc73','416108108','隐藏域','hidden','',3),(53,'90c44580a90111e2bb7900241d5adc71','400118','返回类型','result','',2),(54,'90c44580a90111e2bb7900241d5add71','400118110','Json对象','jso','',3),(55,'50c44580a90111e2bb7900241d5add71','400118119','字符串','string','',3),(56,'90c44580a90111e2bb79c0241d8adc73','416108105','编辑器','editor','',3),(57,'90c44580a90111e2bb7901241d8adc73','416108120','长文本','textarea','',3);
/*!40000 ALTER TABLE `zsrnpr_define` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zweb_fields`
--

DROP TABLE IF EXISTS `zweb_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zweb_fields` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `view_code` varchar(100) DEFAULT '' COMMENT '视图编码',
  `column_name` varchar(100) DEFAULT '' COMMENT '数据列名称',
  `field_name` varchar(100) DEFAULT '' COMMENT '字段名称',
  `did_field_type` int(11) DEFAULT '0' COMMENT '字段类型',
  `source_code` varchar(100) DEFAULT '' COMMENT '数据源编码',
  `source_parameter` varchar(500) DEFAULT '' COMMENT '数据源参数',
  `level_grid` int(11) DEFAULT '0' COMMENT '列表标记',
  `level_add` int(11) DEFAULT '0' COMMENT '插入标记',
  `level_edit` int(11) DEFAULT '0' COMMENT '修改标记',
  `level_book` int(11) DEFAULT '0' COMMENT '展示标记',
  `level_inquire` int(11) DEFAULT '0' COMMENT '查询条件',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=472 DEFAULT CHARSET=utf8 COMMENT='视图字段表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zweb_fields`
--

LOCK TABLES `zweb_fields` WRITE;
/*!40000 ALTER TABLE `zweb_fields` DISABLE KEYS */;
INSERT INTO `zweb_fields` VALUES (426,'90dbce39a97311e2bb7900241d8adc62','system_options','did_option_type','',416108119,'source_system_define','415101',106,106,106,106,106),(427,'90dbd06ea97311e2bb7900241d8adc62','system_options','did_page_type','',416108119,'source_system_define','416120',105,105,105,105,105),(428,'90dbd131a97311e2bb7900241d8adc62','system_options','name','名称',416108109,'','',104,104,104,104,104),(429,'90dbd1dca97311e2bb7900241d8adc62','system_options','params','操作参数',416108109,'','',107,107,107,107,107),(430,'90dbd28ca97311e2bb7900241d8adc62','system_options','uid','',416108109,'','',102,102,102,102,102),(431,'90dbd338a97311e2bb7900241d8adc62','system_options','view_code','视图编号',416108109,'','',103,103,103,103,103),(432,'90dbd51ea97311e2bb7900241d8adc62','system_options','zid','',416108109,'','',101,101,101,101,101),(433,'90e03ee1a97311e2bb7900241d8adc62','system_table','code','编码',416108109,'','',103,103,103,103,103),(434,'90e040ffa97311e2bb7900241d8adc62','system_table','table_name','表名称',416108109,'','',105,105,105,105,105),(435,'90e041d4a97311e2bb7900241d8adc62','system_table','uid','',416108109,'','',102,102,102,102,102),(436,'90e04280a97311e2bb7900241d8adc62','system_table','view_name','视图名称',416108109,'','',104,104,104,104,104),(437,'90e04335a97311e2bb7900241d8adc62','system_table','zid','',416108109,'','',101,101,101,101,101),(440,'90e3e629a97311e2bb7900241d8adc62','system_fields','column_name','数据列名称',416108109,'','',104,104,104,104,104),(441,'90e3e7c1a97311e2bb7900241d8adc62','system_fields','did_field_type','字段类型',416108119,'source_system_define','416108',106,106,106,106,106),(442,'90e3e876a97311e2bb7900241d8adc62','system_fields','field_name','字段名称',416108109,'','',105,105,105,105,105),(443,'90e3e921a97311e2bb7900241d8adc62','system_fields','level_add','插入标记',416108109,'','',110,110,110,110,110),(444,'90e3e9cca97311e2bb7900241d8adc62','system_fields','level_book','展示标记',416108109,'','',112,112,112,112,112),(445,'90e3ea6aa97311e2bb7900241d8adc62','system_fields','level_edit','修改标记',416108109,'','',111,111,111,111,111),(446,'90e3eb11a97311e2bb7900241d8adc62','system_fields','level_grid','列表标记',416108109,'','',109,109,109,109,109),(447,'90e3ebaea97311e2bb7900241d8adc62','system_fields','level_inquire','查询条件',416108109,'','',113,113,113,113,113),(448,'90e3ec5aa97311e2bb7900241d8adc62','system_fields','source_code','数据源编码',416108109,'','',107,107,107,107,107),(449,'90e3ecfca97311e2bb7900241d8adc62','system_fields','source_parameter','数据源参数',416108109,'','',108,108,108,108,108),(450,'90e3ed99a97311e2bb7900241d8adc62','system_fields','uid','',416108109,'','',102,102,102,102,102),(451,'90e3ee4aa97311e2bb7900241d8adc62','system_fields','view_code','视图编码',416108109,'','',103,103,103,103,103),(452,'90e3ef44a97311e2bb7900241d8adc62','system_fields','zid','',416108109,'','',101,101,101,101,101),(455,'06f9513aaa4511e299940050568856aa','test_view','checkbox','选择框',416108109,'','',108,108,108,108,108),(456,'06f9539caa4511e299940050568856aa','test_view','inputtext','输入字段',416108105,'','',103,103,103,103,103),(457,'06f9541eaa4511e299940050568856aa','test_view','selecttext','选择字段',416108120,'','',104,104,104,104,104),(458,'06f95482aa4511e299940050568856aa','test_view','textarea','长文本',416108105,'','',107,107,107,107,107),(459,'06f954d2aa4511e299940050568856aa','test_view','uid','',416108108,'','',102,102,102,102,102),(460,'06f95522aa4511e299940050568856aa','test_view','url_file','文件上传',0,'','',105,105,105,105,105),(461,'06f956daaa4511e299940050568856aa','test_view','url_img','',0,'','',106,106,106,106,106),(462,'06f95748aa4511e299940050568856aa','test_view','zid','',0,'','',101,101,101,101,101),(463,'062a6178ab6611e28ccc0023187c448b','v_you_class','code','编号',0,'','',103,103,103,103,103),(464,'062a66dcab6611e28ccc0023187c448b','v_you_class','note','描述',0,'','',106,106,106,106,106),(465,'062a68a8ab6611e28ccc0023187c448b','v_you_class','link','链接地址',0,'','',105,105,105,105,105),(466,'062a69caab6611e28ccc0023187c448b','v_you_class','name','名称',0,'','',104,104,104,104,104),(467,'062a6aa6ab6611e28ccc0023187c448b','v_you_class','orderid','排序',0,'','',107,107,107,107,107),(468,'062a6b6eab6611e28ccc0023187c448b','v_you_class','uid','',0,'','',102,102,102,102,102),(469,'062a6c36ab6611e28ccc0023187c448b','v_you_class','zid','',0,'','',101,101,101,101,101),(470,'c70bc91cab6711e28ccc0023187c448b','v_you_class','parent_code','父编码',416108,'','',108,108,108,108,108),(471,'179a51b8ab6e11e28ccc0023187c448b','v_you_class','parent_code','',0,'','',108,108,108,108,108);
/*!40000 ALTER TABLE `zweb_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zweb_options`
--

DROP TABLE IF EXISTS `zweb_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zweb_options` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `view_code` varchar(100) DEFAULT '' COMMENT '视图编号',
  `name` varchar(100) DEFAULT '' COMMENT '名称',
  `did_page_type` int(11) DEFAULT '0',
  `did_option_type` int(11) DEFAULT '0',
  `params` varchar(100) DEFAULT '' COMMENT '操作参数',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='操作表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zweb_options`
--

LOCK TABLES `zweb_options` WRITE;
/*!40000 ALTER TABLE `zweb_options` DISABLE KEYS */;
INSERT INTO `zweb_options` VALUES (1,'97b1ba1aa90111e2bb7900241d8adc62','system_table','添加',416120103,415101001,''),(3,'97b1bcc3a90111e2bb7900241d8adc62','system_table','刷新结构',416120103,415101006,'zyou/func-system_table-[t@uid]-func_do=refreshdata'),(4,'97b1bd29a90111e2bb7900241d8adc62','system_table','提交',416120105,415101019,''),(5,'97b1bd98a90111e2bb7900241d8adc62','system_table','提交',416120101,415101019,''),(6,'97b1be31a90111e2bb7900241d8adc62','system_table','修改字段',416120107,415101012,'zyou/chart-system_fields-[t@uid]-view_code=[code]'),(7,'97b1be93a90111e2bb7900241d8adc62','system_fields','修改',416120107,415101305,''),(9,'97b1be31a90111e2bb7900241d8adc63','system_table','按钮视图',416120107,415101012,'zyou/chart-system_options-[t@uid]-view_code=[code]'),(10,'97b1bef4a90111e2bb7900241d8adc64','system_table','修改',416120107,415101305,''),(11,'x7b1ba1aa90111e2bb7900241d8adc62','system_options','添加',416120103,415101001,'view_code=[p@view_code]'),(12,'x7b1bd98a90111e2bb7900241d8adc62','system_options','提交',416120101,415101019,''),(13,'441377762b1444379a6421e0f0255e59','system_options','修改',416120107,415101305,''),(14,'441377762b1444379a6421e0f0255159','system_options','提交',416120105,415101019,''),(15,'2e2453ed24744fedb02892a4a3dbf079','system_fields','提交',416120105,415101019,''),(16,'3d7b8cc0cf114270855800ef7e8040fc','test_view','添加',416120103,415101001,''),(17,'842ebd8e2da44d8586bb2bf108283dda','test_view','提交',416120101,415101019,''),(18,'cbcaccfceed442a58ed58095508c11be','test_view','修改',416120107,415101305,''),(19,'5623140ec48d44b29d71584442186caa','test_view','提交',416120105,415101019,''),(20,'bf161b6107e7424798b6b607d540957c','v_you_class','新增',416120103,415101001,''),(21,'9240fb14adfc445b93894f08a80acbf5','v_you_class','提交',416120101,415101019,''),(22,'4012c8dcbdf14f35850642ae9202334f','v_you_class','修改',416120107,415101305,''),(23,'2572adf6e0de42739ee1c1d24ccd4920','v_you_class','提交',416120105,415101019,'');
/*!40000 ALTER TABLE `zweb_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zweb_source`
--

DROP TABLE IF EXISTS `zweb_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zweb_source` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) NOT NULL DEFAULT '',
  `did_source_type` int(11) DEFAULT '0' COMMENT '数据源类型',
  `source_code` varchar(45) DEFAULT '' COMMENT '数据源编号',
  `source_name` varchar(45) DEFAULT '' COMMENT '数据源名称',
  `field_text` varchar(500) DEFAULT '' COMMENT '展示字段',
  `field_value` varchar(500) DEFAULT '' COMMENT '实际值字段',
  `from` varchar(500) DEFAULT '' COMMENT '来自',
  `where_book` varchar(500) DEFAULT '' COMMENT '展示时',
  `where_edit` varchar(500) DEFAULT '' COMMENT '修改时',
  PRIMARY KEY (`zid`),
  UNIQUE KEY `source_code_UNIQUE` (`source_code`),
  UNIQUE KEY `source_name_UNIQUE` (`source_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='数据源定义';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zweb_source`
--

LOCK TABLES `zweb_source` WRITE;
/*!40000 ALTER TABLE `zweb_source` DISABLE KEYS */;
INSERT INTO `zweb_source` VALUES (1,'8a8dc993a90111e2bb7900241d8adc62',404119115,'source_system_define','系统定义类型表（查询用）','name','code','zsrnpr_define','code={0}','left(code,6)=\'{0}\'');
/*!40000 ALTER TABLE `zweb_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zweb_view`
--

DROP TABLE IF EXISTS `zweb_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zweb_view` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `code` varchar(100) DEFAULT '' COMMENT '编码',
  `view_name` varchar(100) DEFAULT '' COMMENT '视图名称',
  `table_name` varchar(100) DEFAULT '' COMMENT '表名称',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='视图表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zweb_view`
--

LOCK TABLES `zweb_view` WRITE;
/*!40000 ALTER TABLE `zweb_view` DISABLE KEYS */;
INSERT INTO `zweb_view` VALUES (1,'9a4f1172a90111e2bb7900241d8adc62','system_table','系统视图','zweb_view'),(2,'9a4f1391a90111e2bb7900241d8adc62','system_fields','视图字段','zweb_fields'),(3,'9a4f1409a90111e2bb7900241d8adc62','system_options','视图操作','zweb_options'),(8,'790898b7b5b84b6ea09bbf6acdf61b7e','test_view','测试视图 ','test_table'),(9,'2837f1b10b3744bd824a3a579ca0494c','v_you_class','分类视图','you_class');
/*!40000 ALTER TABLE `zweb_view` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-23  1:45:15
