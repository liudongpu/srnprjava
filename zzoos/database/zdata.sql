CREATE DATABASE  IF NOT EXISTS `zdata` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `zdata`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: zdata
-- ------------------------------------------------------
-- Server version	5.5.27

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
) ENGINE=InnoDB AUTO_INCREMENT=1476 DEFAULT CHARSET=utf8 COMMENT='数据列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zdata_column`
--

LOCK TABLES `zdata_column` WRITE;
/*!40000 ALTER TABLE `zdata_column` DISABLE KEYS */;
INSERT INTO `zdata_column` VALUES (1349,'81c523eba96f11e2bb7900241d8adc62','zdata','zdata_column','zid',400001002,404103109,0,0,'',1),(1350,'81c52dd7a96f11e2bb7900241d8adc62','zdata','zdata_column','uid',400001002,404103103,32,0,'',2),(1351,'81c5331ba96f11e2bb7900241d8adc62','zdata','zdata_column','server_name',400001002,404103122,45,0,'服务器名称',3),(1352,'81c5381ea96f11e2bb7900241d8adc62','zdata','zdata_column','table_name',400001002,404103122,45,0,'表名',4),(1353,'81c54484a96f11e2bb7900241d8adc62','zdata','zdata_column','column_name',400001002,404103122,45,0,'列名',5),(1354,'81c54919a96f11e2bb7900241d8adc62','zdata','zdata_column','did_null_able',400001001,404103109,0,0,'是否为空',6),(1355,'81c54db2a96f11e2bb7900241d8adc62','zdata','zdata_column','did_column_type',400001001,404103109,0,0,'列类型',7),(1356,'81c55238a96f11e2bb7900241d8adc62','zdata','zdata_column','length_max',400001001,404103109,0,0,'最大长度',8),(1357,'81c556b5a96f11e2bb7900241d8adc62','zdata','zdata_column','length_scale',400001001,404103109,0,0,'第二长度',9),(1358,'81c55b73a96f11e2bb7900241d8adc62','zdata','zdata_column','note',400001001,404103122,100,0,'名称',10),(1359,'81c5604da96f11e2bb7900241d8adc62','zdata','zdata_column','orderid',400001001,404103109,0,0,'排序',11),(1360,'81c564cfa96f11e2bb7900241d8adc62','zdata','zdata_server','zid',400001002,404103109,0,0,'',1),(1361,'81c56967a96f11e2bb7900241d8adc62','zdata','zdata_server','uid',400001002,404103103,32,0,'',2),(1362,'81c56de9a96f11e2bb7900241d8adc62','zdata','zdata_server','name',400001002,404103122,100,0,'名称',3),(1363,'81c57274a96f11e2bb7900241d8adc62','zdata','zdata_server','jdbc_class',400001002,404103122,100,0,'类名',4),(1364,'81c576ffa96f11e2bb7900241d8adc62','zdata','zdata_server','jdbc_url',400001002,404103122,100,0,'地址',5),(1365,'81c57b98a96f11e2bb7900241d8adc62','zdata','zdata_server','jdbc_user',400001002,404103122,100,0,'用户名',6),(1366,'81c5803aa96f11e2bb7900241d8adc62','zdata','zdata_server','jdbc_password',400001002,404103122,100,0,'密码',7),(1367,'81c58991a96f11e2bb7900241d8adc62','zdata','zdata_server','note',400001002,404103122,1000,0,'描述',8),(1368,'81c58e2aa96f11e2bb7900241d8adc62','zdata','zdata_source','zid',400001002,404103109,0,0,'',1),(1369,'81c5966ba96f11e2bb7900241d8adc62','zdata','zdata_source','uid',400001002,404103103,32,0,'',2),(1370,'81c59c3fa96f11e2bb7900241d8adc62','zdata','zdata_source','did_source_type',400001001,404103109,0,0,'',3),(1371,'81c5a0cfa96f11e2bb7900241d8adc62','zdata','zdata_source','source_code',400001001,404103122,45,0,'',4),(1372,'81c5a56ca96f11e2bb7900241d8adc62','zdata','zdata_source','source_name',400001001,404103122,45,0,'',5),(1373,'81c5a9f3a96f11e2bb7900241d8adc62','zdata','zdata_source','fields',400001001,404103122,500,0,'',6),(1374,'81c5aef6a96f11e2bb7900241d8adc62','zdata','zdata_source','from',400001001,404103122,500,0,'',7),(1375,'81c5b37ca96f11e2bb7900241d8adc62','zdata','zdata_source','where',400001001,404103122,500,0,'',8),(1376,'81c5b823a96f11e2bb7900241d8adc62','zdata','zdata_table','zid',400001002,404103109,0,0,'',1),(1377,'81c5bc80a96f11e2bb7900241d8adc62','zdata','zdata_table','uid',400001002,404103103,32,0,'',2),(1378,'81c5c0e6a96f11e2bb7900241d8adc62','zdata','zdata_table','code',400001001,404103122,45,0,'编码',3),(1379,'81c5c57aa96f11e2bb7900241d8adc62','zdata','zdata_table','name',400001001,404103122,100,0,'名称',4),(1380,'81c5ca46a96f11e2bb7900241d8adc62','zdata','zdata_table','note',400001001,404103122,100,0,'描述',5),(1381,'81c5ceeda96f11e2bb7900241d8adc62','zdata','zsrnpr_define','zid',400001002,404103109,0,0,'',1),(1382,'81c5d3bda96f11e2bb7900241d8adc62','zdata','zsrnpr_define','uid',400001002,404103103,32,0,'',2),(1383,'81c5d823a96f11e2bb7900241d8adc62','zdata','zsrnpr_define','code',400001002,404103122,100,0,'编码',3),(1384,'81c5dca0a96f11e2bb7900241d8adc62','zdata','zsrnpr_define','name',400001001,404103122,100,0,'名称',4),(1385,'81c5e130a96f11e2bb7900241d8adc62','zdata','zsrnpr_define','value',400001001,404103122,100,0,'值',5),(1386,'81c5e5c4a96f11e2bb7900241d8adc62','zdata','zsrnpr_define','note',400001001,404103122,100,0,'中文',6),(1387,'81c5ea33a96f11e2bb7900241d8adc62','zdata','zsrnpr_define','level',400001001,404103109,0,0,'级别',7),(1388,'81c5ee9ea96f11e2bb7900241d8adc62','zdata','zweb_fields','zid',400001002,404103109,0,0,'',1),(1389,'81c5f309a96f11e2bb7900241d8adc62','zdata','zweb_fields','uid',400001001,404103103,32,0,'',2),(1390,'81c5f76fa96f11e2bb7900241d8adc62','zdata','zweb_fields','view_code',400001001,404103122,100,0,'视图编码',3),(1391,'81c601e9a96f11e2bb7900241d8adc62','zdata','zweb_fields','column_name',400001001,404103122,100,0,'数据列名称',4),(1392,'81c6066ba96f11e2bb7900241d8adc62','zdata','zweb_fields','field_name',400001001,404103122,100,0,'字段名称',5),(1393,'81c60ae8a96f11e2bb7900241d8adc62','zdata','zweb_fields','did_field_type',400001001,404103109,0,0,'字段类型',6),(1394,'81c60f4aa96f11e2bb7900241d8adc62','zdata','zweb_fields','source_code',400001001,404103122,100,0,'数据源编码',7),(1395,'81c613bda96f11e2bb7900241d8adc62','zdata','zweb_fields','source_parameter',400001001,404103122,500,0,'数据源参数',8),(1396,'81c61844a96f11e2bb7900241d8adc62','zdata','zweb_fields','level_grid',400001001,404103109,0,0,'列表标记',9),(1397,'81c61bf0a96f11e2bb7900241d8adc62','zdata','zweb_fields','level_add',400001001,404103109,0,0,'插入标记',10),(1398,'81c61fdea96f11e2bb7900241d8adc62','zdata','zweb_fields','level_edit',400001001,404103109,0,0,'修改标记',11),(1399,'81c62378a96f11e2bb7900241d8adc62','zdata','zweb_fields','level_book',400001001,404103109,0,0,'展示标记',12),(1400,'81c62712a96f11e2bb7900241d8adc62','zdata','zweb_fields','level_inquire',400001001,404103109,0,0,'查询条件',13),(1401,'81c62af2a96f11e2bb7900241d8adc62','zdata','zweb_options','zid',400001002,404103109,0,0,'',1),(1402,'81c62f81a96f11e2bb7900241d8adc62','zdata','zweb_options','uid',400001001,404103103,32,0,'',2),(1403,'81c633faa96f11e2bb7900241d8adc62','zdata','zweb_options','view_code',400001001,404103122,100,0,'视图编号',3),(1404,'81c638a0a96f11e2bb7900241d8adc62','zdata','zweb_options','name',400001001,404103122,100,0,'名称',4),(1405,'81c63d27a96f11e2bb7900241d8adc62','zdata','zweb_options','did_page_type',400001001,404103109,0,0,'',5),(1406,'81c641a4a96f11e2bb7900241d8adc62','zdata','zweb_options','did_option_type',400001001,404103109,0,0,'',6),(1407,'81c64674a96f11e2bb7900241d8adc62','zdata','zweb_options','params',400001001,404103122,100,0,'操作参数',7),(1408,'81c64afba96f11e2bb7900241d8adc62','zdata','zweb_view','zid',400001002,404103109,0,0,'',1),(1409,'81c64f6aa96f11e2bb7900241d8adc62','zdata','zweb_view','uid',400001001,404103103,32,0,'',2),(1410,'81c653f5a96f11e2bb7900241d8adc62','zdata','zweb_view','code',400001001,404103122,100,0,'编码',3),(1411,'81c65877a96f11e2bb7900241d8adc62','zdata','zweb_view','view_name',400001001,404103122,100,0,'视图名称',4),(1412,'81c65d43a96f11e2bb7900241d8adc62','zdata','zweb_view','table_name',400001001,404103122,100,0,'表名称',5);
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
-- Table structure for table `zdata_source`
--

DROP TABLE IF EXISTS `zdata_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zdata_source` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) NOT NULL DEFAULT '',
  `did_source_type` int(11) DEFAULT '0',
  `source_code` varchar(45) DEFAULT '',
  `source_name` varchar(45) DEFAULT '',
  `fields` varchar(500) DEFAULT '',
  `from` varchar(500) DEFAULT '',
  `where` varchar(500) DEFAULT '',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='数据源定义';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zdata_source`
--

LOCK TABLES `zdata_source` WRITE;
/*!40000 ALTER TABLE `zdata_source` DISABLE KEYS */;
INSERT INTO `zdata_source` VALUES (1,'8a8dc993a90111e2bb7900241d8adc62',404119115,'system_define','系统定义类型表（查询用）',NULL,'zsrnpr_define',NULL);
/*!40000 ALTER TABLE `zdata_source` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8 COMMENT='数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zdata_table`
--

LOCK TABLES `zdata_table` WRITE;
/*!40000 ALTER TABLE `zdata_table` DISABLE KEYS */;
INSERT INTO `zdata_table` VALUES (173,'81b01783a96f11e2bb7900241d8adc62','zdata_column','zdata_column','数据列表'),(174,'81b01a97a96f11e2bb7900241d8adc62','zdata_server','zdata_server','服务器表'),(175,'81b01c90a96f11e2bb7900241d8adc62','zdata_source','zdata_source','数据源定义'),(176,'81b01e2ca96f11e2bb7900241d8adc62','zdata_table','zdata_table','数据表'),(177,'81b01fbba96f11e2bb7900241d8adc62','zsrnpr_define','zsrnpr_define',''),(178,'81b0212da96f11e2bb7900241d8adc62','zweb_fields','zweb_fields','视图字段表'),(179,'81b022aea96f11e2bb7900241d8adc62','zweb_options','zweb_options','操作表'),(180,'81b02446a96f11e2bb7900241d8adc62','zweb_view','zweb_view','视图表');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zsrnpr_define`
--

LOCK TABLES `zsrnpr_define` WRITE;
/*!40000 ALTER TABLE `zsrnpr_define` DISABLE KEYS */;
INSERT INTO `zsrnpr_define` VALUES (1,'90c43881a90111e2bb7900241d8adc62','400','系统定义','','',1),(2,'90c43a88a90111e2bb7900241d8adc62','400001','是否','','',2),(6,'90c43afca90111e2bb7900241d8adc62','400001001','是','','',3),(7,'90c43b70a90111e2bb7900241d8adc62','400001002','否','','',3),(8,'90c43bd1a90111e2bb7900241d8adc62','404120','数据库类型定义','','',2),(9,'90c43c2ea90111e2bb7900241d8adc62','404103','数据库字段定义','column','',2),(10,'90c43c94a90111e2bb7900241d8adc62','404103109','int','int','',3),(11,'90c43cf5a90111e2bb7900241d8adc62','404103122','varchar','varchar','',3),(12,'90c43d51a90111e2bb7900241d8adc62','404103104','decimal','decimal','',3),(13,'90c43db3a90111e2bb7900241d8adc62','415101','页面按钮工具栏','options','',2),(14,'90c43e14a90111e2bb7900241d8adc62','415101019','提交','submit','',3),(15,'90c43e75a90111e2bb7900241d8adc62','404','数据库定义','data','定义数据库',1),(16,'90c43ed7a90111e2bb7900241d8adc62','416','页面定义','page','',1),(19,'90c43f38a90111e2bb7900241d8adc62','416108','页面元素类型','html','',2),(20,'90c43f9ea90111e2bb7900241d8adc62','416108109','文本输入框','input','',3),(21,'90c43fffa90111e2bb7900241d8adc62','404119','数据源类型定义','source','定义数据源用，用于zdata_source表',2),(22,'90c44061a90111e2bb7900241d8adc62','404119115','单表','one','',3),(23,'90c440bda90111e2bb7900241d8adc62','404119103','关联表','conc','',3),(24,'90c4411fa90111e2bb7900241d8adc62','404103103','char','char','',3),(33,'90c4417ba90111e2bb7900241d8adc62','416120','页面类型','','',2),(34,'90c441d8a90111e2bb7900241d8adc62','416120103','列表页','chart','',3),(35,'90c44235a90111e2bb7900241d8adc62','416120101','新增页','add','',3),(36,'90c442d7a90111e2bb7900241d8adc62','416120105','修改页','edit','',3),(37,'90c44338a90111e2bb7900241d8adc62','416120102','查看页','book','',3),(38,'90c44409a90111e2bb7900241d8adc62','415101001','新增','add','',3),(40,'90c4446aa90111e2bb7900241d8adc62','415101005','修改','edit','',3),(41,'90c444c7a90111e2bb7900241d8adc62','416120104','删除页','delete','',3),(43,'90c44523a90111e2bb7900241d8adc62','416108119','选择下拉框','select','',3),(44,'90c44580a90111e2bb7900241d8adc62','416120107','查询结果内','grid','',3),(45,'90c445dda90111e2bb7900241d8adc62','415101012','自定义链接','link','自定义链接',3),(46,'90c4463ea90111e2bb7900241d8adc62','415101305','列表页表格-修改','chart-edit','列表页表格-修改',3),(47,'90c4469aa90111e2bb7900241d8adc62','416120106','执行专用页','func','',3),(48,'90c446f7a90111e2bb7900241d8adc62','415','操作定义','options','',1),(49,'90c44580a90111e2bb7900241d8adc63','415101006','执行调用','func','',3),(50,'90c44580a90111e2bb7900241d8adc71','416120109','查询条件','inquire','查询条件',3),(52,'90c44580a90111e2bb7900241d8adc73','416108108','隐藏域','hidden','',3),(53,'90c44580a90111e2bb7900241d5adc71','400118','返回类型','result','',2),(54,'90c44580a90111e2bb7900241d5add71','400118110','Json对象','jso','',3),(55,'50c44580a90111e2bb7900241d5add71','400118119','字符串','string','',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=455 DEFAULT CHARSET=utf8 COMMENT='视图字段表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zweb_fields`
--

LOCK TABLES `zweb_fields` WRITE;
/*!40000 ALTER TABLE `zweb_fields` DISABLE KEYS */;
INSERT INTO `zweb_fields` VALUES (426,'90dbce39a97311e2bb7900241d8adc62','system_options','did_option_type','',0,'','',106,106,106,106,106),(427,'90dbd06ea97311e2bb7900241d8adc62','system_options','did_page_type','',0,'','',105,105,105,105,105),(428,'90dbd131a97311e2bb7900241d8adc62','system_options','name','名称',0,'','',104,104,104,104,104),(429,'90dbd1dca97311e2bb7900241d8adc62','system_options','params','操作参数',0,'','',107,107,107,107,107),(430,'90dbd28ca97311e2bb7900241d8adc62','system_options','uid','',0,'','',102,102,102,102,102),(431,'90dbd338a97311e2bb7900241d8adc62','system_options','view_code','视图编号',0,'','',103,103,103,103,103),(432,'90dbd51ea97311e2bb7900241d8adc62','system_options','zid','',0,'','',101,101,101,101,101),(433,'90e03ee1a97311e2bb7900241d8adc62','system_table','code','编码',0,'','',103,103,103,103,103),(434,'90e040ffa97311e2bb7900241d8adc62','system_table','table_name','表名称',0,'','',105,105,105,105,105),(435,'90e041d4a97311e2bb7900241d8adc62','system_table','uid','',0,'','',102,102,102,102,102),(436,'90e04280a97311e2bb7900241d8adc62','system_table','view_name','视图名称',0,'','',104,104,104,104,104),(437,'90e04335a97311e2bb7900241d8adc62','system_table','zid','',0,'','',101,101,101,101,101),(440,'90e3e629a97311e2bb7900241d8adc62','system_fields','column_name','数据列名称',0,'','',104,104,104,104,104),(441,'90e3e7c1a97311e2bb7900241d8adc62','system_fields','did_field_type','字段类型',0,'','',106,106,106,106,106),(442,'90e3e876a97311e2bb7900241d8adc62','system_fields','field_name','字段名称',0,'','',105,105,105,105,105),(443,'90e3e921a97311e2bb7900241d8adc62','system_fields','level_add','插入标记',0,'','',110,110,110,110,110),(444,'90e3e9cca97311e2bb7900241d8adc62','system_fields','level_book','展示标记',0,'','',112,112,112,112,112),(445,'90e3ea6aa97311e2bb7900241d8adc62','system_fields','level_edit','修改标记',0,'','',111,111,111,111,111),(446,'90e3eb11a97311e2bb7900241d8adc62','system_fields','level_grid','列表标记',0,'','',109,109,109,109,109),(447,'90e3ebaea97311e2bb7900241d8adc62','system_fields','level_inquire','查询条件',0,'','',113,113,113,113,113),(448,'90e3ec5aa97311e2bb7900241d8adc62','system_fields','source_code','数据源编码',0,'','',107,107,107,107,107),(449,'90e3ecfca97311e2bb7900241d8adc62','system_fields','source_parameter','数据源参数',0,'','',108,108,108,108,108),(450,'90e3ed99a97311e2bb7900241d8adc62','system_fields','uid','',0,'','',102,102,102,102,102),(451,'90e3ee4aa97311e2bb7900241d8adc62','system_fields','view_code','视图编码',0,'','',103,103,103,103,103),(452,'90e3ef44a97311e2bb7900241d8adc62','system_fields','zid','',0,'','',101,101,101,101,101);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='操作表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zweb_options`
--

LOCK TABLES `zweb_options` WRITE;
/*!40000 ALTER TABLE `zweb_options` DISABLE KEYS */;
INSERT INTO `zweb_options` VALUES (1,'97b1ba1aa90111e2bb7900241d8adc62','system_table','添加',416120103,415101001,''),(3,'97b1bcc3a90111e2bb7900241d8adc62','system_table','刷新结构',416120103,415101006,'zyou/func-system_table-[t@uid]-func_do=refreshdata'),(4,'97b1bd29a90111e2bb7900241d8adc62','system_table','提交',416120105,415101019,''),(5,'97b1bd98a90111e2bb7900241d8adc62','system_table','提交',416120101,415101019,''),(6,'97b1be31a90111e2bb7900241d8adc62','system_table','修改字段',416120107,415101012,'zyou/list-system_fields-[t@uid]-view_code=[code]'),(7,'97b1be93a90111e2bb7900241d8adc62','system_fields','修改',416120107,415101305,''),(9,'97b1be31a90111e2bb7900241d8adc63','system_table','按钮视图',416120107,415101012,'zyou/list-system_options-[t@uid]-view_code=[code]'),(10,'97b1bef4a90111e2bb7900241d8adc64','system_table','修改',416120107,415101305,'');
/*!40000 ALTER TABLE `zweb_options` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='视图表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zweb_view`
--

LOCK TABLES `zweb_view` WRITE;
/*!40000 ALTER TABLE `zweb_view` DISABLE KEYS */;
INSERT INTO `zweb_view` VALUES (1,'9a4f1172a90111e2bb7900241d8adc62','system_table','系统视图2','zweb_view'),(2,'9a4f1391a90111e2bb7900241d8adc62','system_fields','视图字段','zweb_fields'),(3,'9a4f1409a90111e2bb7900241d8adc62','system_options','视图操作','zweb_options');
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

-- Dump completed on 2013-04-20 14:01:35
