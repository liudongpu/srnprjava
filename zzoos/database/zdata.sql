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
-- Table structure for table `info_adv`
--

DROP TABLE IF EXISTS `info_adv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_adv` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `title` varchar(100) DEFAULT '' COMMENT '标题',
  `file_url` varchar(200) DEFAULT '' COMMENT '文件地址(1100*330)',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_adv`
--

LOCK TABLES `info_adv` WRITE;
/*!40000 ALTER TABLE `info_adv` DISABLE KEYS */;
INSERT INTO `info_adv` VALUES (1,'8ea851536e9b4435a0c5cdfa7183cde7','风华正茂','/zzero/file/images_upload/20130429/4a02a1447764474ca7498b7e7ec6be27.jpg'),(2,'102b0843e09e4d4ea5026cb10932afa5','一流广告的魅力','/zzero/file/images_upload/20130429/c92608e215dc41e58987a56a0ef840f0.jpg');
/*!40000 ALTER TABLE `info_adv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_auction`
--

DROP TABLE IF EXISTS `info_auction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_auction` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `name` varchar(200) DEFAULT '' COMMENT '拍卖会名称',
  `time` char(19) DEFAULT '' COMMENT '拍卖会时间',
  `auction_type_cid` int(11) DEFAULT '0' COMMENT '拍卖会类型',
  `fileUrl` varchar(200) DEFAULT '' COMMENT '拍卖会图片',
  `special_num` varchar(45) DEFAULT '' COMMENT '专场数量',
  `success_price` varchar(45) DEFAULT '' COMMENT '成交金额',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_auction`
--

LOCK TABLES `info_auction` WRITE;
/*!40000 ALTER TABLE `info_auction` DISABLE KEYS */;
INSERT INTO `info_auction` VALUES (1,'e465363abab54efeb2bceda2a0f20e62','第一拍卖会','2013-05-30 10:00:00',30310001,'/zzero/file/images_upload/20130430/eb0c610667ee484380e80ae25cda3477.jpg','9','5000');
/*!40000 ALTER TABLE `info_auction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_class`
--

DROP TABLE IF EXISTS `info_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_class` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `code` varchar(200) DEFAULT '' COMMENT '编号',
  `name` varchar(200) DEFAULT '' COMMENT '名称',
  `note` varchar(500) DEFAULT '' COMMENT '描述',
  `parent_code` varchar(200) DEFAULT '' COMMENT '父编码',
  `orderid` int(11) DEFAULT '0' COMMENT '排序',
  `link` varchar(200) DEFAULT '' COMMENT '链接地址',
  PRIMARY KEY (`zid`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_class`
--

LOCK TABLES `info_class` WRITE;
/*!40000 ALTER TABLE `info_class` DISABLE KEYS */;
INSERT INTO `info_class` VALUES (1,'','30090003','内容类型','class','3009',1,''),(2,'','300900030001','首页广告轮播图','','30090003',1,'');
/*!40000 ALTER TABLE `info_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_good`
--

DROP TABLE IF EXISTS `info_good`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_good` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `name` varchar(200) DEFAULT '' COMMENT '名称',
  `code` varchar(200) DEFAULT '' COMMENT '图录号',
  `auction_uid` char(32) DEFAULT '' COMMENT '所属拍卖会',
  `special_uid` char(32) DEFAULT '' COMMENT '所属专场',
  `texture` varchar(200) DEFAULT '' COMMENT '质地',
  `size` varchar(200) DEFAULT '' COMMENT '尺寸',
  `assess_price` varchar(45) DEFAULT '' COMMENT '估价',
  `success_price` varchar(45) DEFAULT '' COMMENT '成交价',
  `note` varchar(2000) DEFAULT '' COMMENT '拍品介绍',
  `file_url` varchar(200) DEFAULT '' COMMENT '主图片',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_good`
--

LOCK TABLES `info_good` WRITE;
/*!40000 ALTER TABLE `info_good` DISABLE KEYS */;
/*!40000 ALTER TABLE `info_good` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_news`
--

DROP TABLE IF EXISTS `info_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_news` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `title` varchar(100) DEFAULT '' COMMENT '标题',
  `note` varchar(500) DEFAULT '' COMMENT '导语',
  `file_url` varchar(200) DEFAULT '' COMMENT '文件地址',
  `content` longtext COMMENT '内容',
  `orderid` int(11) DEFAULT '0' COMMENT '排序',
  `create_time` char(19) DEFAULT '' COMMENT '时间',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_news`
--

LOCK TABLES `info_news` WRITE;
/*!40000 ALTER TABLE `info_news` DISABLE KEYS */;
INSERT INTO `info_news` VALUES (1,'a8f441234e854a0885fb3a53608a3c9f','我广告我快乐','我广告我快乐我广告我快乐我广告我快乐我广告我快乐我广告我快乐我广告我快乐','/zzero/file/images_upload/20130429/4e2ed9b6640342d481f72f9894e5e1fa.jpg','',1,''),(2,'4a22bf084f4f467a9e184010c47db407','第二张广告','','/zzero/file/images_upload/20130429/5199623271bc452fa5b19688505b86d5.jpg','',2,'');
/*!40000 ALTER TABLE `info_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_notice`
--

DROP TABLE IF EXISTS `info_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_notice` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `title` varchar(100) DEFAULT '' COMMENT '标题',
  `note` varchar(500) DEFAULT '' COMMENT '导语',
  `content` longtext COMMENT '内容',
  `orderid` int(11) DEFAULT '0' COMMENT '排序',
  `create_time` char(19) DEFAULT '' COMMENT '时间',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_notice`
--

LOCK TABLES `info_notice` WRITE;
/*!40000 ALTER TABLE `info_notice` DISABLE KEYS */;
INSERT INTO `info_notice` VALUES (3,'2198548cc01042999e6a9eabee11326d','我公告我快乐','','<p>我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐我公告我快乐</p>\n',1,'');
/*!40000 ALTER TABLE `info_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_special`
--

DROP TABLE IF EXISTS `info_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_special` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `auction_uid` char(32) DEFAULT '' COMMENT '所属拍卖会',
  `name` varchar(200) DEFAULT '' COMMENT '专场名称',
  `success_price` varchar(45) DEFAULT '' COMMENT '成交金额',
  `time` char(19) DEFAULT '' COMMENT '专场时间',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_special`
--

LOCK TABLES `info_special` WRITE;
/*!40000 ALTER TABLE `info_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `info_special` ENABLE KEYS */;
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
INSERT INTO `test_table` VALUES (1,'99108b5f3d794086b7865cae87dd0612','<p>afdadffff</p>\n','','/zadmin/zzero/file/images_upload/20130429/ec56831dc45a4e6bb29b25e31bfbdb98.jpg','','<p>xxxxdd</p>\n',''),(2,'d7bc3f5902ca4ad593429a4f84ee25a2','<p>adfa</p>\n','aa','aa','dd','<p>acdfxxxxxxxxxxxxafdafdasfdfs</p>\n','afdasf'),(3,'b5a3075756084533944bc33f8c04e1f6','<p>dfafd</p>\n','af','da','fda','<p>dddddddddd</p>\n','ddddd'),(4,'21586d3efd6c43ed95535c35f9d3207d','','','','','<p>ad</p>\n',''),(5,'ae753a6d0b7f4debbeabe1ce47dd7f2d','','','','','',''),(6,'8091d21ff29c479caec035e671f7c863','<p>dfaf</p>\n','fasfs','fsaf','asfasf','<p>asdfsdafdasf</p>\n',''),(7,'4844e532d001453f98ef2df79610adba','','','','','',''),(8,'a19d33a8a0574b74b51c6568ddb867bf','','','','','',''),(9,'3abd7dafbb194fea86c314544b7a1bb6','','','','','',''),(10,'4843d11b79b24f029fce50dc44eba3f5','','','','','',''),(11,'1956562da6c34b3f98a09a69a04c637c','','','','','','');
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
  `uid` char(32) DEFAULT '',
  `code` varchar(200) DEFAULT '' COMMENT '编号',
  `name` varchar(200) DEFAULT '' COMMENT '名称',
  `link` varchar(200) DEFAULT '' COMMENT '链接地址',
  `note` varchar(500) DEFAULT '' COMMENT '描述',
  `orderid` int(11) DEFAULT '0' COMMENT '排序',
  `parent_code` varchar(200) DEFAULT '' COMMENT '父编码',
  PRIMARY KEY (`zid`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `you_class`
--

LOCK TABLES `you_class` WRITE;
/*!40000 ALTER TABLE `you_class` DISABLE KEYS */;
INSERT INTO `you_class` VALUES (1,'09e561b8b47f4d45aa3309145231b54b','3009','info_class','1','1',1,''),(2,'','3013','系统菜单分组','','',0,''),(3,'','30130001','广告设置','','',0,'3013'),(5,'','30130002','内容管理','','',100,'3013'),(6,'','3039','内容分类','','',1,''),(7,'','30390001','博观资讯','','',0,'3039'),(8,'','30390002','博观公告','','',0,'3039'),(9,'','3031','拍卖会类型','','',0,''),(10,'','30310001','预展','','',0,'3031'),(11,'','30310002','成交','','',0,'3031');
/*!40000 ALTER TABLE `you_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `you_menu`
--

DROP TABLE IF EXISTS `you_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `you_menu` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `group_cid` int(11) DEFAULT '0',
  `name` varchar(45) DEFAULT '' COMMENT '名称',
  `url` varchar(500) DEFAULT '' COMMENT '链接',
  `orderid` int(11) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `you_menu`
--

LOCK TABLES `you_menu` WRITE;
/*!40000 ALTER TABLE `you_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `you_menu` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2534 DEFAULT CHARSET=utf8 COMMENT='数据列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zdata_column`
--

LOCK TABLES `zdata_column` WRITE;
/*!40000 ALTER TABLE `zdata_column` DISABLE KEYS */;
INSERT INTO `zdata_column` VALUES (2279,'7e1b279eb14211e2bb7900241d8adc62','zdata','info_adv','zid',400001002,404103109,0,0,'',1),(2280,'7e1e6628b14211e2bb7900241d8adc62','zdata','info_adv','uid',400001001,404103103,32,0,'',2),(2281,'7e1e6f06b14211e2bb7900241d8adc62','zdata','info_adv','title',400001001,404103122,100,0,'标题',3),(2282,'7e1e7d8ab14211e2bb7900241d8adc62','zdata','info_adv','file_url',400001001,404103122,200,0,'文件地址(1100*330)',4),(2283,'7e2059ecb14211e2bb7900241d8adc62','zdata','info_auction','zid',400001002,404103109,0,0,'',1),(2284,'7e205fb2b14211e2bb7900241d8adc62','zdata','info_auction','uid',400001001,404103103,32,0,'',2),(2285,'7e206343b14211e2bb7900241d8adc62','zdata','info_auction','name',400001001,404103122,200,0,'拍卖会名称',3),(2286,'7e207070b14211e2bb7900241d8adc62','zdata','info_auction','time',400001001,404103103,19,0,'拍卖会时间',4),(2287,'7e20749fb14211e2bb7900241d8adc62','zdata','info_auction','auction_type_cid',400001001,404103109,0,0,'拍卖会类型',5),(2288,'7e2077c0b14211e2bb7900241d8adc62','zdata','info_auction','fileUrl',400001001,404103122,200,0,'拍卖会图片',6),(2289,'7e207b0cb14211e2bb7900241d8adc62','zdata','info_auction','special_num',400001001,404103122,45,0,'专场数量',7),(2290,'7e207e73b14211e2bb7900241d8adc62','zdata','info_auction','success_price',400001001,404103122,45,0,'成交金额',8),(2291,'7e2081d0b14211e2bb7900241d8adc62','zdata','info_class','zid',400001002,404103109,0,0,'',1),(2292,'7e208fc5b14211e2bb7900241d8adc62','zdata','info_class','uid',400001001,404103103,32,0,'',2),(2293,'7e2095deb14211e2bb7900241d8adc62','zdata','info_class','code',400001001,404103122,200,0,'编号',3),(2294,'7e209bbcb14211e2bb7900241d8adc62','zdata','info_class','name',400001001,404103122,200,0,'名称',4),(2295,'7e20a158b14211e2bb7900241d8adc62','zdata','info_class','note',400001001,404103122,500,0,'描述',5),(2296,'7e20a70cb14211e2bb7900241d8adc62','zdata','info_class','parent_code',400001001,404103122,200,0,'父编码',6),(2297,'7e20ac95b14211e2bb7900241d8adc62','zdata','info_class','orderid',400001001,404103109,0,0,'排序',7),(2298,'7e20c594b14211e2bb7900241d8adc62','zdata','info_class','link',400001001,404103122,200,0,'链接地址',8),(2299,'7e20cb72b14211e2bb7900241d8adc62','zdata','info_news','zid',400001002,404103109,0,0,'',1),(2300,'7e20d0f7b14211e2bb7900241d8adc62','zdata','info_news','uid',400001001,404103103,32,0,'',2),(2301,'7e20d68ab14211e2bb7900241d8adc62','zdata','info_news','title',400001001,404103122,100,0,'标题',3),(2302,'7e20dd13b14211e2bb7900241d8adc62','zdata','info_news','note',400001001,404103122,500,0,'导语',4),(2303,'7e20e03eb14211e2bb7900241d8adc62','zdata','info_news','file_url',400001001,404103122,200,0,'文件地址',5),(2304,'7e20e561b14211e2bb7900241d8adc62','zdata','info_news','content',400001001,404103112,2147483647,0,'内容',6),(2305,'7e235967b14211e2bb7900241d8adc62','zdata','info_news','orderid',400001001,404103109,0,0,'排序',7),(2306,'7e235f60b14211e2bb7900241d8adc62','zdata','info_news','create_time',400001001,404103103,19,0,'时间',8),(2307,'7e23649bb14211e2bb7900241d8adc62','zdata','info_notice','zid',400001002,404103109,0,0,'',1),(2308,'7e2369b6b14211e2bb7900241d8adc62','zdata','info_notice','uid',400001001,404103103,32,0,'',2),(2309,'7e236effb14211e2bb7900241d8adc62','zdata','info_notice','title',400001001,404103122,100,0,'标题',3),(2310,'7e2374aeb14211e2bb7900241d8adc62','zdata','info_notice','note',400001001,404103122,500,0,'导语',4),(2311,'7e2377f4b14211e2bb7900241d8adc62','zdata','info_notice','content',400001001,404103112,2147483647,0,'内容',5),(2312,'7e237e7db14211e2bb7900241d8adc62','zdata','info_notice','orderid',400001001,404103109,0,0,'排序',6),(2313,'7e2383f0b14211e2bb7900241d8adc62','zdata','info_notice','create_time',400001001,404103103,19,0,'时间',7),(2314,'7e23898cb14211e2bb7900241d8adc62','zdata','test_table','zid',400001002,404103109,0,0,'',1),(2315,'7e238ea2b14211e2bb7900241d8adc62','zdata','test_table','uid',400001001,404103103,32,0,'',2),(2316,'7e2393a6b14211e2bb7900241d8adc62','zdata','test_table','inputtext',400001001,404103122,4000,0,'输入字段',3),(2317,'7e2398d7b14211e2bb7900241d8adc62','zdata','test_table','selecttext',400001001,404103122,4000,0,'选择字段',4),(2318,'7e239e4ab14211e2bb7900241d8adc62','zdata','test_table','url_file',400001001,404103122,4000,0,'文件上传',5),(2319,'7e23aab9b14211e2bb7900241d8adc62','zdata','test_table','url_img',400001001,404103122,4000,0,'',6),(2320,'7e23beffb14211e2bb7900241d8adc62','zdata','test_table','textarea',400001001,404103122,4000,0,'',7),(2321,'7e23c645b14211e2bb7900241d8adc62','zdata','test_table','checkbox',400001001,404103122,45,0,'选择框',8),(2322,'7e23cbf0b14211e2bb7900241d8adc62','zdata','you_class','zid',400001002,404103109,0,0,'',1),(2323,'7e23d147b14211e2bb7900241d8adc62','zdata','you_class','uid',400001001,404103103,32,0,'',2),(2324,'7e23f4f8b14211e2bb7900241d8adc62','zdata','you_class','code',400001001,404103122,200,0,'编号',3),(2325,'7e23fa4ab14211e2bb7900241d8adc62','zdata','you_class','name',400001001,404103122,200,0,'名称',4),(2326,'7e23ffe2b14211e2bb7900241d8adc62','zdata','you_class','link',400001001,404103122,200,0,'链接地址',5),(2327,'7e240539b14211e2bb7900241d8adc62','zdata','you_class','note',400001001,404103122,500,0,'描述',6),(2328,'7e240a4ab14211e2bb7900241d8adc62','zdata','you_class','orderid',400001001,404103109,0,0,'排序',7),(2329,'7e240f5cb14211e2bb7900241d8adc62','zdata','you_class','parent_code',400001001,404103122,200,0,'父编码',8),(2330,'7e2415a3b14211e2bb7900241d8adc62','zdata','you_menu','zid',400001002,404103109,0,0,'',1),(2331,'7e241ff0b14211e2bb7900241d8adc62','zdata','you_menu','uid',400001001,404103103,32,0,'',2),(2332,'7e2427c6b14211e2bb7900241d8adc62','zdata','you_menu','group_cid',400001001,404103109,0,0,'',3),(2333,'7e242d67b14211e2bb7900241d8adc62','zdata','you_menu','name',400001001,404103122,45,0,'名称',4),(2334,'7e243311b14211e2bb7900241d8adc62','zdata','you_menu','url',400001001,404103122,500,0,'链接',5),(2335,'7e24387bb14211e2bb7900241d8adc62','zdata','you_menu','orderid',400001001,404103109,0,0,'排序',6),(2336,'7e243da3b14211e2bb7900241d8adc62','zdata','zdata_column','zid',400001002,404103109,0,0,'',1),(2337,'7e2442dfb14211e2bb7900241d8adc62','zdata','zdata_column','uid',400001002,404103103,32,0,'',2),(2338,'7e24480cb14211e2bb7900241d8adc62','zdata','zdata_column','server_name',400001002,404103122,45,0,'服务器名称',3),(2339,'7e244d91b14211e2bb7900241d8adc62','zdata','zdata_column','table_name',400001002,404103122,45,0,'表名',4),(2340,'7e2452c7b14211e2bb7900241d8adc62','zdata','zdata_column','column_name',400001002,404103122,45,0,'列名',5),(2341,'7e245823b14211e2bb7900241d8adc62','zdata','zdata_column','did_null_able',400001001,404103109,0,0,'是否为空',6),(2342,'7e245d9ab14211e2bb7900241d8adc62','zdata','zdata_column','did_column_type',400001001,404103109,0,0,'列类型',7),(2343,'7e2463ddb14211e2bb7900241d8adc62','zdata','zdata_column','length_max',400001001,404103109,0,0,'最大长度',8),(2344,'7e246947b14211e2bb7900241d8adc62','zdata','zdata_column','length_scale',400001001,404103109,0,0,'第二长度',9),(2345,'7e246e6bb14211e2bb7900241d8adc62','zdata','zdata_column','note',400001001,404103122,100,0,'名称',10),(2346,'7e2474a5b14211e2bb7900241d8adc62','zdata','zdata_column','orderid',400001001,404103109,0,0,'排序',11),(2347,'7e2479d6b14211e2bb7900241d8adc62','zdata','zdata_server','zid',400001002,404103109,0,0,'',1),(2348,'7e247f5cb14211e2bb7900241d8adc62','zdata','zdata_server','uid',400001002,404103103,32,0,'',2),(2349,'7e2484fdb14211e2bb7900241d8adc62','zdata','zdata_server','name',400001002,404103122,100,0,'名称',3),(2350,'7e248a4ab14211e2bb7900241d8adc62','zdata','zdata_server','jdbc_class',400001002,404103122,100,0,'类名',4),(2351,'7e249015b14211e2bb7900241d8adc62','zdata','zdata_server','jdbc_url',400001002,404103122,100,0,'地址',5),(2352,'7e249550b14211e2bb7900241d8adc62','zdata','zdata_server','jdbc_user',400001002,404103122,100,0,'用户名',6),(2353,'7e249a9eb14211e2bb7900241d8adc62','zdata','zdata_server','jdbc_password',400001002,404103122,100,0,'密码',7),(2354,'7e24a036b14211e2bb7900241d8adc62','zdata','zdata_server','note',400001002,404103122,1000,0,'描述',8),(2355,'7e24c716b14211e2bb7900241d8adc62','zdata','zdata_source','zid',400001002,404103109,0,0,'',1),(2356,'7e24ccc1b14211e2bb7900241d8adc62','zdata','zdata_source','uid',400001002,404103103,32,0,'',2),(2357,'7e24d266b14211e2bb7900241d8adc62','zdata','zdata_source','did_source_type',400001001,404103109,0,0,'',3),(2358,'7e24d843b14211e2bb7900241d8adc62','zdata','zdata_source','source_code',400001001,404103122,45,0,'',4),(2359,'7e24dd55b14211e2bb7900241d8adc62','zdata','zdata_source','source_name',400001001,404103122,45,0,'',5),(2360,'7e24e329b14211e2bb7900241d8adc62','zdata','zdata_source','fields',400001001,404103122,500,0,'',6),(2361,'7e24e869b14211e2bb7900241d8adc62','zdata','zdata_source','from',400001001,404103122,500,0,'',7),(2362,'7e24eda4b14211e2bb7900241d8adc62','zdata','zdata_source','where',400001001,404103122,500,0,'',8),(2363,'7e24f329b14211e2bb7900241d8adc62','zdata','zdata_table','zid',400001002,404103109,0,0,'',1),(2364,'7e24f8f4b14211e2bb7900241d8adc62','zdata','zdata_table','uid',400001002,404103103,32,0,'',2),(2365,'7e24fe4fb14211e2bb7900241d8adc62','zdata','zdata_table','code',400001001,404103122,45,0,'编码',3),(2366,'7e25041ab14211e2bb7900241d8adc62','zdata','zdata_table','name',400001001,404103122,100,0,'名称',4),(2367,'7e250971b14211e2bb7900241d8adc62','zdata','zdata_table','note',400001001,404103122,100,0,'描述',5),(2368,'7e250fe2b14211e2bb7900241d8adc62','zdata','zsrnpr_define','zid',400001002,404103109,0,0,'',1),(2369,'7e2514eab14211e2bb7900241d8adc62','zdata','zsrnpr_define','uid',400001002,404103103,32,0,'',2),(2370,'7e251a33b14211e2bb7900241d8adc62','zdata','zsrnpr_define','code',400001002,404103122,100,0,'编码',3),(2371,'7e251fdeb14211e2bb7900241d8adc62','zdata','zsrnpr_define','name',400001001,404103122,100,0,'名称',4),(2372,'7e25250fb14211e2bb7900241d8adc62','zdata','zsrnpr_define','value',400001001,404103122,100,0,'值',5),(2373,'7e252a6bb14211e2bb7900241d8adc62','zdata','zsrnpr_define','note',400001001,404103122,100,0,'中文',6),(2374,'7e252fbdb14211e2bb7900241d8adc62','zdata','zsrnpr_define','level',400001001,404103109,0,0,'级别',7),(2375,'7e2534d8b14211e2bb7900241d8adc62','zdata','zweb_fields','zid',400001002,404103109,0,0,'',1),(2376,'7e253a3db14211e2bb7900241d8adc62','zdata','zweb_fields','uid',400001001,404103103,32,0,'',2),(2377,'7e253fb9b14211e2bb7900241d8adc62','zdata','zweb_fields','view_code',400001001,404103122,100,0,'视图编码',3),(2378,'7e2545c4b14211e2bb7900241d8adc62','zdata','zweb_fields','column_name',400001001,404103122,100,0,'数据列名称',4),(2379,'7e254b32b14211e2bb7900241d8adc62','zdata','zweb_fields','field_name',400001001,404103122,100,0,'字段名称',5),(2380,'7e2550b3b14211e2bb7900241d8adc62','zdata','zweb_fields','did_field_type',400001001,404103109,0,0,'字段类型',6),(2381,'7e25564bb14211e2bb7900241d8adc62','zdata','zweb_fields','source_code',400001001,404103122,100,0,'数据源编码',7),(2382,'7e255c0cb14211e2bb7900241d8adc62','zdata','zweb_fields','source_parameter',400001001,404103122,500,0,'数据源参数',8),(2383,'7e256233b14211e2bb7900241d8adc62','zdata','zweb_fields','level_grid',400001001,404103109,0,0,'列表标记',9),(2384,'7e2567afb14211e2bb7900241d8adc62','zdata','zweb_fields','level_add',400001001,404103109,0,0,'插入标记',10),(2385,'7e274148b14211e2bb7900241d8adc62','zdata','zweb_fields','level_edit',400001001,404103109,0,0,'修改标记',11),(2386,'7e2747ffb14211e2bb7900241d8adc62','zdata','zweb_fields','level_book',400001001,404103109,0,0,'展示标记',12),(2387,'7e274d8db14211e2bb7900241d8adc62','zdata','zweb_fields','level_inquire',400001001,404103109,0,0,'查询条件',13),(2388,'7e277cd9b14211e2bb7900241d8adc62','zdata','zweb_options','zid',400001002,404103109,0,0,'',1),(2389,'7e2783ccb14211e2bb7900241d8adc62','zdata','zweb_options','uid',400001001,404103103,32,0,'',2),(2390,'7e27891eb14211e2bb7900241d8adc62','zdata','zweb_options','view_code',400001001,404103122,100,0,'视图编号',3),(2391,'7e278e70b14211e2bb7900241d8adc62','zdata','zweb_options','name',400001001,404103122,100,0,'名称',4),(2392,'7e2793ffb14211e2bb7900241d8adc62','zdata','zweb_options','did_page_type',400001001,404103109,0,0,'',5),(2393,'7e279997b14211e2bb7900241d8adc62','zdata','zweb_options','did_option_type',400001001,404103109,0,0,'',6),(2394,'7e279fa2b14211e2bb7900241d8adc62','zdata','zweb_options','params',400001001,404103122,100,0,'操作参数',7),(2395,'7e27a52cb14211e2bb7900241d8adc62','zdata','zweb_source','zid',400001002,404103109,0,0,'',1),(2396,'7e27ab38b14211e2bb7900241d8adc62','zdata','zweb_source','uid',400001002,404103103,32,0,'',2),(2397,'7e27b073b14211e2bb7900241d8adc62','zdata','zweb_source','did_source_type',400001001,404103109,0,0,'数据源类型',3),(2398,'7e27b61db14211e2bb7900241d8adc62','zdata','zweb_source','source_code',400001001,404103122,45,0,'数据源编号',4),(2399,'7e27c63eb14211e2bb7900241d8adc62','zdata','zweb_source','source_name',400001001,404103122,45,0,'数据源名称',5),(2400,'7e27d044b14211e2bb7900241d8adc62','zdata','zweb_source','field_text',400001001,404103122,500,0,'展示字段',6),(2401,'7e27d647b14211e2bb7900241d8adc62','zdata','zweb_source','field_value',400001001,404103122,500,0,'实际值字段',7),(2402,'7e27dbb9b14211e2bb7900241d8adc62','zdata','zweb_source','from',400001001,404103122,500,0,'来自',8),(2403,'7e27e10cb14211e2bb7900241d8adc62','zdata','zweb_source','where_book',400001001,404103122,500,0,'展示时',9),(2404,'7e27e6e4b14211e2bb7900241d8adc62','zdata','zweb_source','where_edit',400001001,404103122,500,0,'修改时',10),(2405,'7e27ec37b14211e2bb7900241d8adc62','zdata','zweb_view','zid',400001002,404103109,0,0,'',1),(2406,'7e27f0f0b14211e2bb7900241d8adc62','zdata','zweb_view','uid',400001001,404103103,32,0,'',2),(2407,'7e27f782b14211e2bb7900241d8adc62','zdata','zweb_view','code',400001001,404103122,100,0,'编码',3),(2408,'7e27fd43b14211e2bb7900241d8adc62','zdata','zweb_view','view_name',400001001,404103122,100,0,'视图名称',4),(2409,'7e2802b1b14211e2bb7900241d8adc62','zdata','zweb_view','table_name',400001001,404103122,100,0,'表名称',5);
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
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8 COMMENT='数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zdata_table`
--

LOCK TABLES `zdata_table` WRITE;
/*!40000 ALTER TABLE `zdata_table` DISABLE KEYS */;
INSERT INTO `zdata_table` VALUES (298,'7df87e9db14211e2bb7900241d8adc62','info_adv','info_adv',''),(299,'7dfa29bfb14211e2bb7900241d8adc62','info_auction','info_auction',''),(300,'7dfa31edb14211e2bb7900241d8adc62','info_class','info_class',''),(301,'7dfa3716b14211e2bb7900241d8adc62','info_news','info_news',''),(302,'7dfa3bcbb14211e2bb7900241d8adc62','info_notice','info_notice',''),(303,'7dfa4010b14211e2bb7900241d8adc62','test_table','test_table',''),(304,'7dfa43ebb14211e2bb7900241d8adc62','you_class','you_class',''),(305,'7dfa4807b14211e2bb7900241d8adc62','you_menu','you_menu',''),(306,'7dfa4c43b14211e2bb7900241d8adc62','zdata_column','zdata_column','数据列表'),(307,'7dfa504cb14211e2bb7900241d8adc62','zdata_server','zdata_server','服务器表'),(308,'7dfa5492b14211e2bb7900241d8adc62','zdata_source','zdata_source','数据源定义'),(309,'7dfa5a00b14211e2bb7900241d8adc62','zdata_table','zdata_table','数据表'),(310,'7dfa5e6ab14211e2bb7900241d8adc62','zsrnpr_define','zsrnpr_define',''),(311,'7dfa626ab14211e2bb7900241d8adc62','zweb_fields','zweb_fields','视图字段表'),(312,'7dfa6637b14211e2bb7900241d8adc62','zweb_options','zweb_options','操作表'),(313,'7dfa6a53b14211e2bb7900241d8adc62','zweb_source','zweb_source','数据源定义'),(314,'7dfa6efab14211e2bb7900241d8adc62','zweb_view','zweb_view','视图表');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zsrnpr_define`
--

LOCK TABLES `zsrnpr_define` WRITE;
/*!40000 ALTER TABLE `zsrnpr_define` DISABLE KEYS */;
INSERT INTO `zsrnpr_define` VALUES (1,'90c43881a90111e2bb7900241d8adc62','400','系统定义','','',1),(2,'90c43a88a90111e2bb7900241d8adc62','400001','是否','','',2),(6,'90c43afca90111e2bb7900241d8adc62','400001001','是','','',3),(7,'90c43b70a90111e2bb7900241d8adc62','400001002','否','','',3),(8,'90c43bd1a90111e2bb7900241d8adc62','404120','数据库类型定义','','',2),(9,'90c43c2ea90111e2bb7900241d8adc62','404103','数据库字段定义','column','',2),(10,'90c43c94a90111e2bb7900241d8adc62','404103109','int','int','',3),(11,'90c43cf5a90111e2bb7900241d8adc62','404103122','varchar','varchar','',3),(12,'90c43d51a90111e2bb7900241d8adc62','404103104','decimal','decimal','',3),(13,'90c43db3a90111e2bb7900241d8adc62','415101','页面按钮工具栏','options','',2),(14,'90c43e14a90111e2bb7900241d8adc62','415101019','提交','submit','',3),(15,'90c43e75a90111e2bb7900241d8adc62','404','数据库定义','data','定义数据库',1),(16,'90c43ed7a90111e2bb7900241d8adc62','416','页面定义','page','',1),(19,'90c43f38a90111e2bb7900241d8adc62','416108','页面元素类型','html','',2),(20,'90c43f9ea90111e2bb7900241d8adc62','416108109','文本输入框','input','',3),(21,'90c43fffa90111e2bb7900241d8adc62','404119','数据源类型定义','source','定义数据源用，用于zdata_source表',2),(22,'90c44061a90111e2bb7900241d8adc62','404119115','kV表','one','',3),(23,'90c440bda90111e2bb7900241d8adc62','404119103','关联表','conc','',3),(24,'90c4411fa90111e2bb7900241d8adc62','404103103','char','char','',3),(33,'90c4417ba90111e2bb7900241d8adc62','416120','页面类型','','',2),(34,'90c441d8a90111e2bb7900241d8adc62','416120103','列表页','chart','',3),(35,'90c44235a90111e2bb7900241d8adc62','416120101','新增页','add','',3),(36,'90c442d7a90111e2bb7900241d8adc62','416120105','修改页','edit','',3),(37,'90c44338a90111e2bb7900241d8adc62','416120102','查看页','book','',3),(38,'90c44409a90111e2bb7900241d8adc62','415101001','按钮-新增','add','',3),(40,'90c4446aa90111e2bb7900241d8adc62','415101005','按钮-修改','edit','',3),(41,'90c444c7a90111e2bb7900241d8adc62','416120104','删除页','delete','',3),(43,'90c44523a90111e2bb7900241d8adc62','416108119','选择下拉框','select','',3),(44,'90c44580a90111e2bb7900241d8adc62','416120107','查询结果内','grid','',3),(45,'90c445dda90111e2bb7900241d8adc62','415101012','自定义链接','link','自定义链接',3),(46,'90c4463ea90111e2bb7900241d8adc62','415101305','列表页表格-修改','chart-edit','列表页表格-修改',3),(47,'90c4469aa90111e2bb7900241d8adc62','416120106','执行专用页','func','',3),(48,'90c446f7a90111e2bb7900241d8adc62','415','操作定义','options','',1),(49,'90c44580a90111e2bb7900241d8adc63','415101006','按钮-执行调用','func','',3),(50,'90c44580a90111e2bb7900241d8adc71','416120109','查询条件','inquire','查询条件',3),(52,'90c44580a90111e2bb7900241d8adc73','416108108','隐藏域','hidden','',3),(53,'90c44580a90111e2bb7900241d5adc71','400118','返回类型','result','',2),(54,'90c44580a90111e2bb7900241d5add71','400118110','Json对象','jso','',3),(55,'50c44580a90111e2bb7900241d5add71','400118119','字符串','string','',3),(56,'90c44580a90111e2bb79c0241d8adc73','416108105','编辑器','editor','',3),(57,'90c44580a90111e2bb7901241d8adc73','416108120','长文本','textarea','',3),(58,'90c44780a90111e2bb7901241d8adc73','416108121','upload','upload','',3),(59,'90c43cf5a90111e2bb7900241d8cdc62','404103112','longtext','longtext','',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=526 DEFAULT CHARSET=utf8 COMMENT='视图字段表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zweb_fields`
--

LOCK TABLES `zweb_fields` WRITE;
/*!40000 ALTER TABLE `zweb_fields` DISABLE KEYS */;
INSERT INTO `zweb_fields` VALUES (426,'90dbce39a97311e2bb7900241d8adc62','system_options','did_option_type','',416108119,'source_system_define','415101',106,106,106,106,106),(427,'90dbd06ea97311e2bb7900241d8adc62','system_options','did_page_type','',416108119,'source_system_define','416120',105,105,105,105,105),(428,'90dbd131a97311e2bb7900241d8adc62','system_options','name','名称',416108109,'','',104,104,104,104,104),(429,'90dbd1dca97311e2bb7900241d8adc62','system_options','params','操作参数',416108120,'','',107,107,107,107,107),(430,'90dbd28ca97311e2bb7900241d8adc62','system_options','uid','',416108109,'','',102,102,102,102,102),(431,'90dbd338a97311e2bb7900241d8adc62','system_options','view_code','视图编号',416108109,'','',103,103,103,103,103),(432,'90dbd51ea97311e2bb7900241d8adc62','system_options','zid','',416108109,'','',101,101,101,101,101),(433,'90e03ee1a97311e2bb7900241d8adc62','system_table','code','编码',416108109,'','',103,103,103,103,103),(434,'90e040ffa97311e2bb7900241d8adc62','system_table','table_name','表名称',416108109,'','',105,105,105,105,105),(435,'90e041d4a97311e2bb7900241d8adc62','system_table','uid','',416108109,'','',102,102,102,102,102),(436,'90e04280a97311e2bb7900241d8adc62','system_table','view_name','视图名称',416108109,'','',104,104,104,104,104),(437,'90e04335a97311e2bb7900241d8adc62','system_table','zid','',416108109,'','',101,101,101,101,101),(440,'90e3e629a97311e2bb7900241d8adc62','system_fields','column_name','数据列名称',416108109,'','',104,104,104,104,104),(441,'90e3e7c1a97311e2bb7900241d8adc62','system_fields','did_field_type','字段类型',416108119,'source_system_define','416108',106,106,106,106,106),(442,'90e3e876a97311e2bb7900241d8adc62','system_fields','field_name','字段名称',416108109,'','',105,105,105,105,105),(443,'90e3e921a97311e2bb7900241d8adc62','system_fields','level_add','插入标记',416108109,'','',110,110,110,110,110),(444,'90e3e9cca97311e2bb7900241d8adc62','system_fields','level_book','展示标记',416108109,'','',112,112,112,112,112),(445,'90e3ea6aa97311e2bb7900241d8adc62','system_fields','level_edit','修改标记',416108109,'','',111,111,111,111,111),(446,'90e3eb11a97311e2bb7900241d8adc62','system_fields','level_grid','列表标记',416108109,'','',109,109,109,109,109),(447,'90e3ebaea97311e2bb7900241d8adc62','system_fields','level_inquire','查询条件',416108109,'','',113,113,113,113,113),(448,'90e3ec5aa97311e2bb7900241d8adc62','system_fields','source_code','数据源编码',416108109,'','',107,107,107,107,107),(449,'90e3ecfca97311e2bb7900241d8adc62','system_fields','source_parameter','数据源参数',416108120,'','',108,108,108,108,108),(450,'90e3ed99a97311e2bb7900241d8adc62','system_fields','uid','',416108109,'','',102,102,102,102,102),(451,'90e3ee4aa97311e2bb7900241d8adc62','system_fields','view_code','视图编码',416108109,'','',103,103,103,103,103),(452,'90e3ef44a97311e2bb7900241d8adc62','system_fields','zid','',416108109,'','',101,101,101,101,101),(455,'06f9513aaa4511e299940050568856aa','test_view','checkbox','选择框',416108109,'','',108,108,108,108,108),(456,'06f9539caa4511e299940050568856aa','test_view','inputtext','输入字段',416108105,'','',103,103,103,103,103),(457,'06f9541eaa4511e299940050568856aa','test_view','selecttext','选择字段',416108120,'','',104,104,104,104,104),(458,'06f95482aa4511e299940050568856aa','test_view','textarea','长文本',416108105,'','',107,107,107,107,107),(459,'06f954d2aa4511e299940050568856aa','test_view','uid','',416108108,'','',102,102,102,102,102),(460,'06f95522aa4511e299940050568856aa','test_view','url_file','文件上传',416108121,'','',105,105,105,105,105),(461,'06f956daaa4511e299940050568856aa','test_view','url_img','',0,'','',106,106,106,106,106),(462,'06f95748aa4511e299940050568856aa','test_view','zid','',0,'','',101,101,101,101,101),(463,'062a6178ab6611e28ccc0023187c448b','v_you_class','code','编号',0,'','',103,103,103,103,103),(464,'062a66dcab6611e28ccc0023187c448b','v_you_class','note','描述',0,'','',106,106,106,106,106),(465,'062a68a8ab6611e28ccc0023187c448b','v_you_class','link','链接地址',0,'','',105,105,105,105,105),(466,'062a69caab6611e28ccc0023187c448b','v_you_class','name','名称',0,'','',104,104,104,104,104),(467,'062a6aa6ab6611e28ccc0023187c448b','v_you_class','orderid','排序',0,'','',107,107,107,107,107),(468,'062a6b6eab6611e28ccc0023187c448b','v_you_class','uid','',0,'','',102,102,102,102,102),(469,'062a6c36ab6611e28ccc0023187c448b','v_you_class','zid','',0,'','',101,101,101,101,101),(470,'c70bc91cab6711e28ccc0023187c448b','v_you_class','parent_code','父编码',416108,'','',108,108,108,108,108),(471,'179a51b8ab6e11e28ccc0023187c448b','v_you_class','parent_code','',0,'','',108,108,108,108,108),(482,'e85280abb07211e2bb7900241d8adc62','v_info_adv','file_url','文件地址(1100*330)',416108121,'','',104,104,104,104,104),(483,'e8528338b07211e2bb7900241d8adc62','v_info_adv','title','标题',416108109,'','',103,103,103,103,103),(484,'e8528412b07211e2bb7900241d8adc62','v_info_adv','uid','',0,'','',102,102,102,102,102),(485,'e85284d0b07211e2bb7900241d8adc62','v_info_adv','zid','',0,'','',101,101,101,101,101),(489,'d833eaa2b09c11e2bb7900241d8adc62','v_info_news','content','内容',0,'','',107,107,107,107,107),(491,'d833eecbb09c11e2bb7900241d8adc62','v_info_news','create_time','时间',0,'','',110,110,110,110,110),(492,'d833efc6b09c11e2bb7900241d8adc62','v_info_news','note','导语',416108120,'','',105,105,105,105,105),(493,'d833f07ab09c11e2bb7900241d8adc62','v_info_news','file_url','文件地址',416108121,'','',106,106,106,106,106),(495,'d833f1c8b09c11e2bb7900241d8adc62','v_info_news','orderid','排序',416108109,'','',108,108,108,108,108),(496,'d833f265b09c11e2bb7900241d8adc62','v_info_news','title','标题',416108109,'','',103,103,103,103,103),(497,'d833f4bbb09c11e2bb7900241d8adc62','v_info_news','uid','',0,'','',102,102,102,102,102),(498,'d833f570b09c11e2bb7900241d8adc62','v_info_news','zid','',0,'','',101,101,101,101,101),(504,'e91de896b09e11e2bb7900241d8adc62','v_info_notice','content','内容',416108105,'','',105,105,105,105,105),(505,'e91deac7b09e11e2bb7900241d8adc62','v_info_notice','create_time','时间',0,'','',107,107,107,107,107),(506,'e91debb8b09e11e2bb7900241d8adc62','v_info_notice','note','导语',416108120,'','',104,104,104,104,104),(507,'e91dec7ab09e11e2bb7900241d8adc62','v_info_notice','orderid','排序',0,'','',106,106,106,106,106),(508,'e91ded3db09e11e2bb7900241d8adc62','v_info_notice','title','标题',416108109,'','',103,103,103,103,103),(509,'e91dee9db09e11e2bb7900241d8adc62','v_info_notice','uid','',0,'','',102,102,102,102,102),(510,'e91def52b09e11e2bb7900241d8adc62','v_info_notice','zid','',0,'','',101,101,101,101,101),(511,'dfcd07eab14211e2bb7900241d8adc62','v_info_auction','auction_type_cid','拍卖会类型',416108119,'source_you_class','3031',105,105,105,105,105),(512,'dfcd0a8fb14211e2bb7900241d8adc62','v_info_auction','fileUrl','拍卖会图片',416108121,'','',106,106,106,106,106),(513,'dfcd0b72b14211e2bb7900241d8adc62','v_info_auction','name','拍卖会名称',0,'','',103,103,103,103,103),(514,'dfcd0c39b14211e2bb7900241d8adc62','v_info_auction','special_num','专场数量',0,'','',107,107,107,107,107),(515,'dfcd0cf7b14211e2bb7900241d8adc62','v_info_auction','success_price','成交金额',0,'','',108,108,108,108,108),(516,'dfcd0db5b14211e2bb7900241d8adc62','v_info_auction','time','拍卖会时间',0,'','',104,104,104,104,104),(517,'dfcd0e57b14211e2bb7900241d8adc62','v_info_auction','uid','',0,'','',102,102,102,102,102),(518,'dfcd0f89b14211e2bb7900241d8adc62','v_info_auction','zid','',0,'','',101,101,101,101,101);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='操作表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zweb_options`
--

LOCK TABLES `zweb_options` WRITE;
/*!40000 ALTER TABLE `zweb_options` DISABLE KEYS */;
INSERT INTO `zweb_options` VALUES (1,'97b1ba1aa90111e2bb7900241d8adc62','system_table','添加',416120103,415101001,''),(3,'97b1bcc3a90111e2bb7900241d8adc62','system_table','刷新缓存',416120103,415101006,'zyou/func-system_table-[t@uid]-func_do=refreshcache'),(4,'97b1bd29a90111e2bb7900241d8adc62','system_table','提交',416120105,415101019,''),(5,'97b1bd98a90111e2bb7900241d8adc62','system_table','提交',416120101,415101019,''),(6,'97b1be31a90111e2bb7900241d8adc62','system_table','修改字段',416120107,415101012,'zyou/chart-system_fields-[t@uid]-view_code=[code]'),(7,'97b1be93a90111e2bb7900241d8adc62','system_fields','修改',416120107,415101305,''),(9,'97b1be31a90111e2bb7900241d8adc63','system_table','按钮视图',416120107,415101012,'zyou/chart-system_options-[t@uid]-view_code=[code]'),(10,'97b1bef4a90111e2bb7900241d8adc64','system_table','修改',416120107,415101305,''),(11,'x7b1ba1aa90111e2bb7900241d8adc62','system_options','添加',416120103,415101001,'view_code=[p@view_code]'),(12,'x7b1bd98a90111e2bb7900241d8adc62','system_options','提交',416120101,415101019,''),(13,'441377762b1444379a6421e0f0255e59','system_options','修改',416120107,415101305,''),(14,'441377762b1444379a6421e0f0255159','system_options','提交',416120105,415101019,''),(15,'2e2453ed24744fedb02892a4a3dbf079','system_fields','提交',416120105,415101019,''),(16,'3d7b8cc0cf114270855800ef7e8040fc','test_view','添加',416120103,415101001,''),(17,'842ebd8e2da44d8586bb2bf108283dda','test_view','提交',416120101,415101019,''),(18,'cbcaccfceed442a58ed58095508c11be','test_view','修改',416120107,415101305,''),(19,'5623140ec48d44b29d71584442186caa','test_view','提交',416120105,415101019,''),(20,'bf161b6107e7424798b6b607d540957c','v_you_class','新增',416120103,415101001,''),(21,'9240fb14adfc445b93894f08a80acbf5','v_you_class','提交',416120101,415101019,''),(22,'4012c8dcbdf14f35850642ae9202334f','v_you_class','修改',416120107,415101305,''),(23,'2572adf6e0de42739ee1c1d24ccd4920','v_you_class','提交',416120105,415101019,''),(24,'b353eb93eafd4a6b9d5ca5f55b1b22a4','system_fields','刷新表结构',416120103,415101006,'zyou/func-system_table-[t@uid]-func_do=refreshdata&view_code=[p@view_code]'),(25,'b40a9aa7964b4eb3bceb30734cd23c7d','v_info_adv','添加',416120103,415101001,''),(26,'7da7d48dc0e64f1d83f41d5e5e606789','v_info_adv','提交',416120101,415101019,''),(27,'2059b82a912342cab4dcb0dc697d5765','v_info_adv','提交',416120105,415101019,''),(28,'884b025efd78428e9e9250def3ccf29e','v_info_adv','修改',416120107,415101305,''),(29,'570d48cba7614cbb8d289f5805bc08af','v_info_news','提交',416120105,415101019,''),(30,'2ef3a9ce7988474ebdaf3225024f5c1e','v_info_news','提交',416120101,415101019,''),(31,'40b42b3fb3b54e39a11865df081c9656','v_info_news','新增',416120103,415101001,''),(32,'6654275364e84c678cc4e629aed30f45','v_info_news','修改',416120107,415101305,''),(33,'c66720f4f4044fac81a13ad502057378','v_info_notice','提交',416120101,415101019,''),(34,'4994d35473ff483cb00ce3d8dd722334','v_info_notice','提交',416120105,415101019,''),(35,'12f0e78bf79349da936269783b860dad','v_info_notice','修改',416120107,415101305,''),(36,'2a823576faff47ef8fc7d8a5fe00e7e8','v_info_notice','新增',416120103,415101001,''),(37,'ab26a839acab469facdae5bf7fb3ba3f','v_info_auction','添加',416120103,415101001,''),(38,'755cbefec4f54b58a876bf928b484260','v_info_auction','修改',416120107,415101305,''),(39,'e7c4f8c4662e4d2f8a4ec2ecb4b3e1a7','v_info_auction','提交',416120101,415101019,''),(40,'42257a77372e495c852ace99035d6bb9','v_info_auction','提交',416120105,415101019,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='数据源定义';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zweb_source`
--

LOCK TABLES `zweb_source` WRITE;
/*!40000 ALTER TABLE `zweb_source` DISABLE KEYS */;
INSERT INTO `zweb_source` VALUES (1,'8a8dc993a90111e2bb7900241d8adc62',404119115,'source_system_define','系统定义类型表（查询用）','name','code','zsrnpr_define','code={0}','left(code,6)=\'{0}\''),(2,'8a8dc993a90111e2bb7900241d8adc63',404119115,'source_you_class','管理分类用','name','code','you_class','code={0}','parent_code=\'{0}\'');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='视图表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zweb_view`
--

LOCK TABLES `zweb_view` WRITE;
/*!40000 ALTER TABLE `zweb_view` DISABLE KEYS */;
INSERT INTO `zweb_view` VALUES (1,'9a4f1172a90111e2bb7900241d8adc62','system_table','系统视图','zweb_view'),(2,'9a4f1391a90111e2bb7900241d8adc62','system_fields','视图字段','zweb_fields'),(3,'9a4f1409a90111e2bb7900241d8adc62','system_options','视图操作','zweb_options'),(8,'790898b7b5b84b6ea09bbf6acdf61b7e','test_view','测试视图 ','test_table'),(9,'2837f1b10b3744bd824a3a579ca0494c','v_you_class','分类视图','you_class'),(10,'1c9cea53cdcd4fdf997839c2ba9333bb','v_info_adv','首页轮播图','info_adv'),(11,'f01c1763e7374bfa87db2120d04601e7','v_info_news','博观资讯','info_news'),(12,'ce40de639e3b441daa64eb6970ad8c9a','v_info_notice','博观公告','info_notice'),(13,'0bf3cb81b27248b99c19397643c75135','v_info_auction','拍卖会列表','info_auction');
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

-- Dump completed on 2013-04-30 12:29:18
