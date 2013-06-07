CREATE DATABASE  IF NOT EXISTS `zdata` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `zdata`;
-- MySQL dump 10.13  Distrib 5.5.24, for osx10.5 (i386)
--
-- Host: localhost    Database: zdata
-- ------------------------------------------------------
-- Server version	5.5.31

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
  `file_url` varchar(450) DEFAULT '' COMMENT '文件地址(1100*330)',
  `link_url` varchar(450) DEFAULT '' COMMENT '链接地址',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_adv`
--

LOCK TABLES `info_adv` WRITE;
/*!40000 ALTER TABLE `info_adv` DISABLE KEYS */;
INSERT INTO `info_adv` VALUES (1,'8ea851536e9b4435a0c5cdfa7183cde7','博观拍卖新版网站上线','/zzero/file/images_upload/20130512/85645ed019654ddc8ab53069251c84b3.jpg','newsinfo/info-list'),(2,'102b0843e09e4d4ea5026cb10932afa5','博观拍卖新版网站上线','/zzero/file/images_upload/20130512/e1202454ac254fa1a27d2819294b712f.jpg','');
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
  `file_url` varchar(200) DEFAULT '' COMMENT '拍卖会图片',
  `special_num` varchar(45) DEFAULT '' COMMENT '专场数量',
  `success_price` varchar(45) DEFAULT '' COMMENT '成交金额',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_auction`
--

LOCK TABLES `info_auction` WRITE;
/*!40000 ALTER TABLE `info_auction` DISABLE KEYS */;
INSERT INTO `info_auction` VALUES (1,'e465363abab54efeb2bceda2a0f20e62','玲珑美玉--当代玉雕精品无底价拍卖会','2013-04-21',30310001,'/zzero/file/images_upload/20130512/eed465a3da48412687aed3275db9d25b.jpg','3','5000000'),(2,'32c7af7b02714791a78fabd7e5c0385f','2012年北京博观中国玉雕大师年度作品个人专场拍卖会','2012-12-23',30310002,'/zzero/file/images_upload/20130512/dcca499c346f491f9029ee2d00f1fb23.jpg','7','88999'),(3,'295ad0b889df42249f18cb619ae5ca24','第五届“大玩家”拍卖会','2012-12-14',30310002,'/zzero/file/images_upload/20130512/3bf843ecf28a4cb79e11d15a8c183ef0.jpg','7','4444444'),(4,'5a74ec9a5b5c48a5abbd507b9b9933ce','2012年北京博观拍卖春季拍卖会','2012-06-17',30310002,'/zzero/file/images_upload/20130512/7af8992b46ff4272ba0c3ef30785c7ee.jpg','2','22222'),(5,'0dfa82fe53a84932bf3bd38189e1f6eb','2012当代玉雕精品无底价拍卖会','2012-04-28',30310002,'/zzero/file/images_upload/20130512/6bed1a1debf644c0b1912dc08c07ff03.jpg','2','22222'),(6,'c92c478320e74b298a72fca5695f2dfe','博观拍卖五周年庆典--秋季拍卖会','2011-12-28',30310002,'/zzero/file/images_upload/20130512/f1d560609c3f4430a13613fd221d8546.jpg','2','22222'),(7,'c63b1b7a5267428bb094948e7f09c820','第四届“大玩家”拍卖会','2011-11-25',30310002,'/zzero/file/images_upload/20130512/ae9b6be0a1be47ef970fac8810230856.jpg','2','22222'),(8,'137d5129069a4bccbc4ee36a6469a6d2','2013年北京博观中国玉雕大师年度作品个人专场拍卖会','2013-06-23',30310001,'/zzero/file/images_upload/20130515/752725541a0f4861aac22e7ac8623eac.jpg','5','');
/*!40000 ALTER TABLE `info_auction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_book`
--

DROP TABLE IF EXISTS `info_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_book` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `title` varchar(45) DEFAULT '' COMMENT '名称',
  `file_url` varchar(450) DEFAULT '' COMMENT '图片地址',
  `book_url` varchar(450) DEFAULT '' COMMENT '电子书',
  `sort_index` varchar(45) DEFAULT '' COMMENT '排序',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_book`
--

LOCK TABLES `info_book` WRITE;
/*!40000 ALTER TABLE `info_book` DISABLE KEYS */;
INSERT INTO `info_book` VALUES (1,'3e4142d2369c49e4a26c3780a8ed6bca','111','/zzero/file/images_upload/20130513/5422d74f22bf46cd9ede2d85f6a6b7f4.jpg','book1','2');
/*!40000 ALTER TABLE `info_book` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_good`
--

LOCK TABLES `info_good` WRITE;
/*!40000 ALTER TABLE `info_good` DISABLE KEYS */;
INSERT INTO `info_good` VALUES (1,'bc6ad0cba8ff4108a0d5f08213475a9a','范同生 和田青花财神挂件','9010','e465363abab54efeb2bceda2a0f20e62','a80abfef2e574a5faa251032337ee714','','5.7×2.5×1.8cm 42g','RMB 0,100起拍(元)','RMB 28000.00','款识：文同','/zzero/file/images_upload/20130512/3e8f7944f4ca4f21b5e5f5a64c2b6e98.jpg'),(2,'b66334afc83e47d491cc20ba394ab925','杨传烈 寿山芙蓉石博古钮印章','9011','e465363abab54efeb2bceda2a0f20e62','a80abfef2e574a5faa251032337ee714','','5.7×2.3×1.2cm 37g',' RMB 0,100起拍(元)','RMB 15000.00','款识：传烈','/zzero/file/images_upload/20130512/1eb8c80d16a6437ca27a1586cb10131d.jpg'),(3,'6f26b7bd6cc14dfb96fc88ed4b512612','上海杰艺 和田玉福在眼前牌','9012','e465363abab54efeb2bceda2a0f20e62','a80abfef2e574a5faa251032337ee714','','4.7×2.0×0.8cm 16.7g','RMB 0,100起拍(元)','RMB 15000.00','暂无','/zzero/file/images_upload/20130512/dca46734112c4ebba5c92554ee81e395.jpg'),(4,'88c49ea5c393415681c0670dd5540496','黄玉如意把件','9013','e465363abab54efeb2bceda2a0f20e62','a80abfef2e574a5faa251032337ee714','','5.1×3.8×2.7cm 69g',' RMB 0,100起拍(元)',' RMB 9000.00','暂无','/zzero/file/images_upload/20130512/19d232fa65804e57824ad0ba2b2aac31.jpg'),(5,'bb7a92700f1c4cdd9d0c3eef2a1c2ef2','范同生　和田玉籽料莲藕挂件','9017','e465363abab54efeb2bceda2a0f20e62','a80abfef2e574a5faa251032337ee714','','3.0×2.0×2.3cm 16g','RMB 0,100起拍(元)','RMB 32000.00','款识：文同','/zzero/file/images_upload/20130512/2d41321fbb334209848e74fd70b6afdb.jpg'),(6,'f2d8e6a9cddf44a686770a8aca0b3c7c','糖白玉瑞兽把件','9021','e465363abab54efeb2bceda2a0f20e62','a80abfef2e574a5faa251032337ee714','','糖白玉瑞兽把件','','','','/zzero/file/images_upload/20130512/c7a785e7b7dc4454a743bf046af48b79.jpg'),(7,'2bcbcf1dfffd43eba32c4867cd3eb51e','吕德 和田玉籽料翁仲挂件','9023','e465363abab54efeb2bceda2a0f20e62','a80abfef2e574a5faa251032337ee714','','','','','','/zzero/file/images_upload/20130512/8d4900195de24bf19fd8ea417e26d115.jpg'),(8,'b572bac5e22c4d6d8f2188b2d418705b','程磊 和田玉籽料喜相逢挂件','9025','e465363abab54efeb2bceda2a0f20e62','a80abfef2e574a5faa251032337ee714','','','','','','/zzero/file/images_upload/20130512/c2087e322777455a928bfec934a2ef96.jpg'),(17,'81137f75ed79497e8b457004df12d119','11','11','137d5129069a4bccbc4ee36a6469a6d2','d4ce573dd272412ba7df2965eb7d45b0','11','11','11','11','11','/zzero/file/images_zip/494a5201ebb5462b802d90f844800375/11.jpg'),(47,'c97bb090311c44d2bfefb5920d5b5b90','11','11','137d5129069a4bccbc4ee36a6469a6d2','494a5201ebb5462b802d90f844800375','11','11','11','11','11','/zzero/file/images_zip/494a5201ebb5462b802d90f844800375/11.jpg'),(48,'377240ee7b8e4fe0ba7553c2d0f82f66','','22','137d5129069a4bccbc4ee36a6469a6d2','494a5201ebb5462b802d90f844800375','','','','','','/zzero/file/images_zip/494a5201ebb5462b802d90f844800375/22.jpg'),(49,'1e32ef0c39f843609bffa1d1a5d1464f','11','11','137d5129069a4bccbc4ee36a6469a6d2','494a5201ebb5462b802d90f844800375','11','11','11','11','11',''),(50,'9f261a94fa8f4141aafe3fe95de1cd0c','','22','137d5129069a4bccbc4ee36a6469a6d2','494a5201ebb5462b802d90f844800375','','','','','','');
/*!40000 ALTER TABLE `info_good` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_images`
--

DROP TABLE IF EXISTS `info_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_images` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT NULL,
  `title` varchar(450) DEFAULT '' COMMENT '标题',
  `file_url` varchar(450) DEFAULT '' COMMENT '缩略图',
  `order_id` varchar(45) DEFAULT '' COMMENT '排序',
  `position_cid` int(11) DEFAULT '30350001' COMMENT '图片位置',
  PRIMARY KEY (`zid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_images`
--

LOCK TABLES `info_images` WRITE;
/*!40000 ALTER TABLE `info_images` DISABLE KEYS */;
INSERT INTO `info_images` VALUES (1,'3ad1ed7faf8c488fa7335a5ce769272b','第三期“玲珑美玉”拍卖会精品赏析','/zzero/file/images_upload/20130512/8bab758be30d4a9e91ea3196f4738efb.jpg','1',30350002),(2,'3827fe42927f4141a8cc3597e7200c26','博观摄影作品','/zzero/file/images_upload/20130512/5cd4b773dbcf4d0d9034afe4f809aa4b.jpg','',30350001),(3,'b260335968f9487ca5cfd7ebf2e1b79f','南红-博观摄影作品','/zzero/file/images_upload/20130512/3cce9864e27e4aa49b46a7e559d97117.jpg','',30350001),(4,'4eaa618f25aa4cfa9d877a3ab29fe6ef','第五届“大玩家”拍品赏析(二)','/zzero/file/images_upload/20130512/de9532b51cd24363a8b5d091b80183bf.jpg','',30350001),(5,'7238fba1d66c45269b6a969bf0c3ddaa','2012年北京博观秋拍拍品赏析','/zzero/file/images_upload/20130512/34e0f6df11014a99bd41bfd90ee1c6a9.jpg','',30350001),(6,'853a1f1a627a49ed852affc2b08b21de','第二届“玲珑美玉”精品','/zzero/file/images_upload/20130512/32216de089fd4b6d8250e27b4b31dae4.jpg','',30350001),(7,'59b574ab2d7d4939bb431360bae7a7df','博观摄影-保利珠宝','/zzero/file/images_upload/20130512/08b519a79bdc4e7d92a775eac6d2ba8f.jpg','',30350001),(8,'96ce26d45ab3462b9455ddfc270ffa0c','北京博观拍卖2012年春季拍卖会精品赏析','/zzero/file/images_upload/20130512/1007b3d0874c4808abf20f4cf40b58cb.jpg','',30350001),(9,'af366e5093f343d3a2585a401958b180','摄影作品','/zzero/file/images_upload/20130515/96659107826d48bb8ee3030be8f6434f.jpg','1',30350001);
/*!40000 ALTER TABLE `info_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_img`
--

DROP TABLE IF EXISTS `info_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_img` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `images_uid` char(32) DEFAULT '',
  `title` varchar(450) DEFAULT '' COMMENT '标题',
  `file_url` varchar(450) DEFAULT '' COMMENT '图片地址',
  `order_id` varchar(45) DEFAULT '' COMMENT '排序',
  `note` varchar(4500) DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_img`
--

LOCK TABLES `info_img` WRITE;
/*!40000 ALTER TABLE `info_img` DISABLE KEYS */;
INSERT INTO `info_img` VALUES (2,'80e877535f074076b2c0766f42f278fa','3ad1ed7faf8c488fa7335a5ce769272b','fda','/zzero/file/images_upload/20130515/6d799477bd494622a079dbffcf238f32.jpg','fd',''),(3,'0bb5368ab44d4838b2c5b49fd1fe5305','3ad1ed7faf8c488fa7335a5ce769272b','ss','/zzero/file/images_upload/20130515/0af2fc0486cb4f7faaa8ceaab4c87c5a.jpg','',''),(4,'1c8c29798a404ea5ba7504ede26c91c8','af366e5093f343d3a2585a401958b180','1231','/zzero/file/images_upload/20130515/f2fd78b15f794147b4a25a386b0f5e10.jpg','',''),(5,'a2f1b51bd4314a7a884bf96a4eeaab66','af366e5093f343d3a2585a401958b180','1231231','/zzero/file/images_upload/20130515/d8335aabd96245a698f33db34648c020.jpg','',''),(6,'8e7b483874564dc6999d133463856484','af366e5093f343d3a2585a401958b180','123132123','/zzero/file/images_upload/20130515/cd560033f95147d09e0577031f7144f1.jpg','',''),(7,'8f0594f89a394c32b9826a8f4c54ee42','af366e5093f343d3a2585a401958b180','ddqqw','/zzero/file/images_upload/20130515/c42f7b7ac67d41408e2c439b66fa9975.jpg','','');
/*!40000 ALTER TABLE `info_img` ENABLE KEYS */;
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
  `orderid` varchar(45) DEFAULT '0' COMMENT '排序',
  `create_time` char(19) DEFAULT '' COMMENT '时间',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_news`
--

LOCK TABLES `info_news` WRITE;
/*!40000 ALTER TABLE `info_news` DISABLE KEYS */;
INSERT INTO `info_news` VALUES (1,'a8f441234e854a0885fb3a53608a3c9f','第三期玲珑美玉——当代玉雕精品无底价拍卖会','北京博观举办的“第三期玲珑美玉——当代玉雕精品无底价拍卖会”于2013年4月21日在京落槌，此场拍卖会共上拍253件拍品，总落槌价为7431000元（不含佣，下同），均价为29372元。本报告从成交价位、作者对拍品价位的影响大小以及材质对拍品价格的影响等方面对拍品进行详细分析，以期对以后无底价拍卖会的运作及拍品征集工作起到指导作用。','/zzero/file/images_upload/20130512/f450497b446241f5943538a51f6d4dd3.jpg','<h1>&nbsp;</h1>\n\n<p>北京博观举办的&ldquo;第三期玲珑美玉&mdash;&mdash;当代玉雕精品无底价拍卖会&rdquo;于2013年4月21日在京落槌，此场拍卖会共上拍253件拍品，总落槌价为7431000元（不含佣，下同），均价为29372元。本报告从成交价位、作者对拍品价位的影响大小以及材质对拍品价格的影响等方面对拍品进行详细分析，以期对以后无底价拍卖会的运作及拍品征集工作起到指导作用。</p>\n\n<p>&nbsp;</p>\n\n<p><strong>一、三场&ldquo;玲珑美玉&rdquo;成交价对比</strong></p>\n\n<p><strong><img alt=\"\" src=\"http://www.boguanpaimai.com/Public/Js/KindEditor/attached/20130510013910_43928.jpg\" /></strong></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>二、拍品成交价位分析</strong></p>\n\n<p>为了解决在拍品征集中对拍品定位的问题，对本场253件拍品的成交价位段进行了简要分析，各个价位段拍品成交状况及成交总金额详见下表：</p>\n\n<p><img alt=\"\" src=\"http://www.boguanpaimai.com/Public/Js/KindEditor/attached/20130510013945_16959.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"http://www.boguanpaimai.com/Public/Js/KindEditor/attached/20130510014017_96591.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>从上图可以看出，此次拍品不同价位段均占有，且基本呈递增趋势分布，分布比较合理，满足了不同客户的需求。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"http://www.boguanpaimai.com/Public/Js/KindEditor/attached/20130510014026_11285.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>从上图可以看出，本场拍卖会拍品的成交价位主要集中在2-4万元这个区间39.6%，其成交额占总成交额的39.6%，上拍件数占总成交件数的42.3%。1-5万的拍品成交额占总成交额的71.6%，上拍件数占总上拍件数的84.2%。5万元以上的拍品虽说数量较少，但其占成交总量的份额却达到了27.4%，对整场拍卖会成交额的贡献较大。由此可以看出，拍品的品质直接影响到拍品的成交价位，也影响到成交总额。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>三、名家作品成交价位相对于非名家作品较高</strong></p>\n\n<p>在本场拍卖会中，主要征集了苏州、上海、北京、扬州等地的玉雕名家作品，从拍卖结果来看，名家作品的成交价位相对较高，市场认知度也较高，对于以&ldquo;玩&rdquo;为主的小拍客户具有较强的吸引力。</p>\n\n<p>本场落槌价后三十件的拍品中只有两件是名家作品（9242徐云栋青花君子之交挂件；9217刘毅青玉龙凤佩），这两件作品主要因为材料原因影响了成交价。因此，在以后的征集工作中，更侧重的仍然是名家的精品。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>四、拍品材质分析</strong></p>\n\n<p>本场拍卖会中的253件拍品，在材质上涵盖了和田玉、南红玛瑙、翡翠、玛瑙、虎睛石、水晶、翡翠等诸多玉石种类，尤以和田玉雕为主，既有常见的和田白玉，也有色彩艳丽的黄玉、南红玛瑙等，拍品材质丰富，绚烂多彩。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img alt=\"\" src=\"http://www.boguanpaimai.com/Public/Js/KindEditor/attached/20130510014049_20890.jpg\" />&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>从上表可以看出，买家十分关注&ldquo;和田玉&rdquo;这一产地概念，产自于新疆的和田玉籽料受到买家较多关注，其成交价位也相对较高。而非和田玉籽料类拍品成交价位相对较低，总的来说，非白玉的拍品价位成交较低，本场拍卖会中落槌价后50件拍品中只有8件是白玉拍品（含&ldquo;和田玉籽料&rdquo;及&ldquo;白玉&rdquo;），其他的为南红玛瑙、青玉、墨玉、黄玉、碧玉及黄玉等，但此类拍品在调节整场拍品的颜色及品种门类方面也是必要的。一些具有特色的颜色鲜艳的拍品也有不错的成交价，如9080号青玉腰缠万贯瓶以90000元落槌，9147号侯晓锋的碧玉弥勒把件以78000元落槌，9212号杨光的碧玉兽面纹香薰以78000元落槌。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>五、拍品品质决定了拍品成交价格</strong></p>\n\n<p>在拍品征集上，博观拍卖历来重视在拍品材质上、设计创意上、表现手法上等方面具有特色的当代玉雕精品，由于特色显著，品相良好，这些拍品常常在拍卖会上取得不俗的表现。这些拍品原料可以多样，但通过大师名家的原创的设计、独特的创意和上等的工艺，这样的拍品即使材质一般，但它的吸引力也是很强的。</p>\n\n<p>在本场拍卖会中，有品质的特色拍品均拍得了不错的价位，如陈冠军的和田玉籽料吉祥如意把件及和田玉籽料清雅和合牌、青玉腰缠万贯瓶、吴金星的和田玉籽料龙佩、侯晓锋的碧玉弥勒把件等，无论是材料还是玉雕工艺以及表现手法，都具有鲜明的特色，预展时就受到了大家的关注，拍卖时也拍得了较高的价位。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>六、文房用品及器皿类玉雕精品受追捧</strong></p>\n\n<p>本场拍卖会中器皿类作品相较于以往来说表现更加突出。31件器皿件成交总额达1194000元，均价达38516元，占成交总额的16%。31件器皿件中只有7件为非名家作品，且均为小巧精致件，品相材质好，在此次拍卖中受到买家追捧。</p>\n\n<p>文房用品因其题材雅致、用料讲究，而备受玉雕爱好者的追捧，此场无底价拍卖也不例外。以苏州玉雕名家与扬州玉雕名家雕刻的文房用品，如印章、水洗、镇纸等，也受到了买家的激烈竞争。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>七、扬州地区名家作品表现不俗</strong></p>\n\n<p>本场拍卖会扩大了扬州地区的拍品征集，这些拍品在本场拍卖会上表现不俗。此次征集了扬州玉雕名家顾铭、杨光、吉祥、刘月川、刘毅等的作品共14件，总成交额达454000元，其中杨光的&ldquo;碧玉兽面纹香薰&rdquo;以78000元成为全场第四高价作品，其他几件作品也有非常好的表现。在以后的拍卖征集中扩大征集的地域范围，将河南、新疆、广东平洲及四会纳入征集的范围，丰富品种，增加名家作品。</p>\n','1','2013-05-15'),(2,'4a22bf084f4f467a9e184010c47db407','第四期玲珑美玉——当代玉雕名家精品无底价拍卖会 拍品征集工作全面启动','','/zzero/file/images_upload/20130512/c838bbbd93684c6683c3d92c0c19f7dd.jpg','<p>&ldquo;玲珑美玉&rdquo;作为北京博观拍卖打造的又一拍卖会品牌，以当代玉雕大师及玉雕名家小件精品为主，将大众买得起的当代玉雕艺术小品进行无底价拍卖，以降低玉雕收藏门槛，吸引更多的人群加入到爱玉行列，同时也扩大了玉雕大师及玉雕名家的影响力，提振了当代玉雕市场信心。&ldquo;玲珑美玉&rdquo;每年将举办四场，形成与春秋两季大拍的互补。</p>\n\n<p>&nbsp;</p>\n\n<p>2013年4月21日，第三期&ldquo;玲珑美玉&rdquo;&mdash;&mdash;当代玉雕精品无底价拍卖会在北京西单天安天地珠宝艺术汇圆满落幕。整场共计253件拍品无底价拍卖，经过五个多小时的火热激烈竞拍，最终拍得854.6万元的好成绩，平均价达3.35万元。</p>\n\n<p>&nbsp;</p>\n\n<p>第四期玲珑美玉&mdash;&mdash;当代玉雕名家精品无底价拍卖会将于2013年7月下旬在京举办，拍品征集工作现已全面启动。主要征集有特色的玉雕大师及玉雕名家小品，拍品材质以和田玉为主，兼顾翡翠、玛瑙、独山玉、南红玛瑙等，注重趣味性与实用性。拍品征集工作将于6月30日结束，如有意向者，请将作品图片发到邮箱：<a href=\"mailto:pm@boguanpaimai.com\">pm@boguanpaimai.com</a>。</p>\n','2','2013-05-18'),(3,'1dd6ea42a58a4e30bd9fa3b720b178d0','北京国际珠宝交易中心商铺租赁权拍卖公告',' 拍卖标的：北京国际珠宝交易中心所属19间商铺及八组柜台的一年期租赁权\n\n预展时间：2013年4月25日-27日9:00-17:00','/zzero/file/images_upload/20130512/da77416bcf254e9b83ec195db57f9e9d.jpg','<p><strong>北京国际珠宝交易中心商铺租赁权拍卖公告</strong>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p style=\"margin-left:18pt\">&nbsp;拍卖标的：北京国际珠宝交易中心所属19间商铺及八组柜台的一年期租赁权</p>\n\n<p style=\"margin-left:18pt\">预展时间：2013年4月25日-27日9:00-17:00</p>\n\n<p style=\"margin-left:18pt\">预展地点：北京国际珠宝交易中心三楼会议室（朝阳区惠新东街2号）</p>\n\n<p style=\"margin-left:18pt\">&nbsp;拍卖时间：2013年4月28日14:00</p>\n\n<p style=\"margin-left:18pt\">拍卖地点：北京国际会议中心二层第二会议厅A（朝阳区北辰东路8号）</p>\n\n<p style=\"margin-left:18pt\">&nbsp;咨询电话：010-84646745</p>\n','2','2013-05-07'),(4,'cffbe949cba14dd883db18a0bfe475a2','中国玉雕技艺承古开今 玉石收藏可从新玉入手 ','对于玉石的收藏，根据个人的品味不同，收藏品类初略可分为高古玉、古玉、新玉。高古玉即指汉代以前的玉器， 古玉的下限是民国。当然这是仅从雕刻的时间上大致的区分。','/zzero/file/images_upload/20130515/6e563387c10649a7aa9f3cbcac328b55.jpg','<p>&nbsp; 对于玉石的收藏，根据个人的品味不同，收藏品类初略可分为高古玉、古玉、新玉。高古玉即指汉代以前的玉器， 古玉的下限是民国。当然这是仅从雕刻的时间上大致的区分。很多人在收藏投资时不看雕工，只看玉材，最为关注的就是玉料材质如何，所以仅以原石玉料进行投资。另外有人看重人文精神以及雕刻工艺的。有人注重自身传统文化的归属和认同感，有人欣赏新兴的思潮，注重未来，收藏现在。</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"http://www.boguanpaimai.com/Public/Js/KindEditor/attached/20130409014829_60600.jpg\" /></p>\n\n<p><a href=\"http://www.boguanpaimai.com/index.php?m=blog&amp;a=showp&amp;id=9694\" target=\"_blank\"><strong>蒋喜 和田玉籽料龙凤对牌</strong></a><strong> </strong></p>\n\n<p>　　</p>\n\n<p>&nbsp;</p>\n\n<p>　　&ldquo;投我以木瓜，报之以琼琚。匪报也，永以为好也。</p>\n\n<p>　　投我以木桃，报之以琼瑶。匪报也，永以为好也。</p>\n\n<p>　　投我以木李，报之以琼玖。匪报也，永以为好也。&rdquo;</p>\n\n<p>　　&mdash;&mdash;《诗经&middot;国风&middot;周南》</p>\n\n<p>　　和田美玉，当你目光凝视，它温润柔和;当你以肌肤触碰，它坚质清凉。佩戴摩挲刚润相合、犹如和一位具有无限&ldquo;正能量&rdquo;的挚友相伴，时刻感觉悠然 自在、清新愉快。孔子将它的质地之美比拟为君子之德还真是贴切。对于中国人而言，它有着与生俱来的亲近感，既秉赋天地之灵，又承载美好德行教化，代表着隽 永、可思的文人品味。从古至今，它们自然流畅并含蓄深刻地记录着中华文化每个继往开来的历史阶段。闲暇之时，盘玩摩挲，使之更为温泽，亦可拂拭自己内心之 尘埃与缠缧，物我同臻于朴实而真挚。</p>\n\n<p>　　玉石之美，历代文人雅士一直不吝赞誉。《诗经》以&ldquo;琼琚、琼瑶、琼玖&rdquo;赞美玉器。&ldquo;润泽以温，仁之方也;勰理自外，可以知中，义之方也;其声舒 扬，尃以远闻，智之方也;不桡而折，勇之方也;锐廉而不技，絜之方也。&rdquo;东汉的许慎在《说文解字》释义&ldquo;玉&rdquo;字时，如此高举玉的特性有如君子之五德，后世 尊奉经典，传诵至今。</p>\n\n<p>　　世上找不到任何其它物质，像它这样经得起岁月的洗礼，也没有其它任何物质寄托了中国人如此深邃的理念和悠久而浓厚的情感。</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"http://www.boguanpaimai.com/Public/Js/KindEditor/attached/20130409014846_25743.jpg\" /></p>\n\n<p><a href=\"http://www.boguanpaimai.com/index.php?m=blog&amp;a=showp&amp;id=9712\" target=\"_blank\"><strong>陈冠军 和田玉籽料吉祥如意把件</strong></a><strong> </strong></p>\n\n<p>&nbsp;</p>\n\n<p>　　<strong>唯有属于民族 才能屹立国际</strong></p>\n\n<p>　　台北故宫博物院常设玉器展厅里陈列着一件清中期的白玉锦荔枝。&ldquo;锦荔枝&rdquo;其实就是苦瓜的雅号。这件洁白细腻温润无暇的白玉摆件，曾与《乡愁》的作者余光中先生有着一 段极为亲密的心灵对话。余先生在另一首情寄故乡的《白玉苦瓜》诗篇中，将其视为祖国母亲来咏叹。&ldquo;古中国喂了又喂的乳浆&rdquo;、&ldquo;茫茫九州&rdquo;、&ldquo;钟整个大陆的 爱在一只苦瓜&rdquo;都是十分鲜明的民族代名词。在&ldquo;悠悠自千年的大寐&rdquo;后，历经&ldquo;日磨月磋琢出深孕的清莹&rdquo;，意指玉器诞生成器过程仿佛就是苦瓜或祖国的成长和 成熟，最终宛如 &ldquo;一首歌，咏生命曾经是瓜而苦，被永恒引渡，成果而甘。&rdquo;一方面追求艺术创造能超越时间而流芳百世，像&ldquo;仙果&rdquo;那样甘甜，且&ldquo;饱满而不虞腐烂&rdquo;，具有永恒 价值;另一方面又借喻中华民族崛起，文化源远流长，继古开今，哺育世代。作者曾说：&ldquo;唯有真正属于民族的，才能真正成为国际的。&rdquo;</p>\n\n<p>　　唯有民族的，才能成为国际的。将一件艺术品寄托了诸多浓郁厚重的情思，是延续了古人&ldquo;器以载道&rdquo;、&ldquo;借物言志&rdquo;的传统。台北故宫博物院院长周功 鑫说：&ldquo;在各种能以形而下之&lsquo;器&rsquo;，承载形而上之&lsquo;道&rsquo;的器类中，又以玉器为萌芽最远古、内涵最神秘、发展最连续、意义最深厚、最受大众欢迎、雅俗共赏的 器物。&rdquo;也正是带着这些&ldquo;志&rdquo;和&ldquo;道&rdquo;，使得玉文化艺术更臻于永恒。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"http://www.boguanpaimai.com/Public/Js/KindEditor/attached/20130409014900_44313.jpg\" /></p>\n\n<p><a href=\"http://www.boguanpaimai.com/index.php?m=blog&amp;a=showp&amp;id=9808\" target=\"_blank\"><strong>和田玉籽料关公</strong></a><strong> </strong></p>\n\n<p>&nbsp;</p>\n\n<p>　　<strong>玉雕技艺 承古开今</strong></p>\n\n<p>　　中华先民崇信万物有灵，借助集&ldquo;精气能量&rdquo;的美石，与大自然最高主宰&mdash;天帝进行对话。将各色玉石作璧、琮、圭、璋、琥、璜六器，以此祭礼天地四 方。随着社会进步，人文主义兴起，儒家将美玉神灵禀赋的&ldquo;德性&rdquo;，诠释为仁、义、智、勇、洁等君子之德。以玉为通灵载体的神秘思维，经人文主义的涵化，在 周、汉时，成为彰显君子美德的佩饰与维系社会秩序的礼器。及至六朝、隋唐、宋元，在融合外来艺术，及反思古礼与法统后，交织出写实求真与仿古尚玄两股不同 思维的文化精华。</p>\n\n<p>　　明清时，商品经济发达，帝王奖掖及新品种玉料、各色宝石的输入，使得玉器雕艺技巧提升，也更善用玉料色泽纹理创作出有文化内涵的巧思作品。清代 初期，南方玉器制作技艺更高，大型玉器需运到南方加工。据清宫档案记载，乾隆二十年至二十四年间两次平定边疆之后，新疆每年有2，000公斤贡玉运达京 师，造办处及苏州、扬州二地将和田玉材广泛应用，和田玉已然成为宫廷用玉的主流。乾隆皇帝对于玉器极度热衷，甚至亲自监督宫廷玉器的制作。另外著有830 多篇关于玉器的赞美、考证的诗文载入《清高宗御制诗文全集》。他的身体力行，推动了整个社会的玩玉之风。到了清末，名家荟萃，老北京已成全国玉器加工的翘 楚，所谓&ldquo;欲得精工，必得京工&rdquo;。</p>\n\n<p>　　每个阶段，都各具时代特色，承载传统又开启新的风尚。在当今，整个时代的意识形态及文化背景全然一新，作为载道的玉文化也开始了新的征程。</p>\n\n<p>　　&ldquo;海派&rdquo;、&ldquo;京派&rdquo;、&ldquo;扬派&rdquo;、&ldquo;苏帮&rdquo;等多个流派并存，各方在继承优秀传统之时又在雕刻着新的时代。这个时代，既有比六朝、隋、唐、宋、元时 更为广阔的世界文化大融合，也有着比明清两代更为直接凶猛的金融经济刺激，还有更为先进的玉料开采技术，同时也少了许多包袱，这是一个前所未有的大舞台。 在这个舞台上最为杰出的代表是海派玉雕界，涌现出了诸多玉雕大师，作品异彩纷呈。承古开今既是一个大时代的文化艺术发展局面，也是作为这个时代分子个体的 一种生存哲学。</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"http://www.boguanpaimai.com/Public/Js/KindEditor/attached/20130409014919_86997.jpg\" /></p>\n\n<p><a href=\"http://www.boguanpaimai.com/index.php?m=blog&amp;a=showp&amp;id=9821\" target=\"_blank\"><strong>侯晓锋 碧玉弥勒把件</strong></a><strong> </strong></p>\n\n<p>&nbsp;</p>\n\n<p><strong>新鲜因子 海派玉雕大师</strong></p>\n\n<p>　　玉雕教父&mdash;倪伟滨，&ldquo;罗汉三杰&rdquo;领袖&mdash;吴德昇，罗汉大家&mdash;颜桂明，实践艺术思想精髓百味的于泾，&ldquo;半仙半神&rdquo;的铭文大师&mdash;易少勇，&ldquo;雕刻全才&rdquo; 刘忠荣，中西合壁的&ldquo;中西风&rdquo;翟念卫，&ldquo;东方少帅&rdquo;王平，汪德海、郑梦贤、洪新华、瞿惠中等等，他们是当代玉雕界的中坚力量。因他们各自在不同的雕塑题材 上的成就，又被封以各种封号。</p>\n\n<p>　　倪伟滨，在美女罗汉、子冈玉牌、人物佛像等题材上都有重要贡献，创立雅园，培养了王平、于泾、尤志光等一批大师，在玉雕界尊为&ldquo;教父&rdquo;、&ldquo;四大 天王&rdquo;。他的玉雕理念是对中国传统文化的认同。他认为&ldquo;信仰就是美&rdquo;，所有称得上艺术之名的东西都是有信仰的。如果没有信仰，一切创造都将是陈腐不堪的。 都说玉石&ldquo;无价&rdquo;，是指艺术本来是&ldquo;一钱不值、万钱难求&rdquo;的，一件好的艺术品只有从精神层面去切入品玩才能称得上雅玩。</p>\n\n<p>　　吴德昇，作为海派玉雕的代表人物之一，对海派玉雕的集成和发展起到了重要的作用。他是一位引领潮流、开启风尚的艺术家。他的作品包罗万象，花鸟 虫草、飞禽走兽、观音佛像、市井小民、童子老人，男女人体、几何抽象都有。他对于器材的透析与分色能力超人一等，炉火纯青。对于一些色调相混在玉石内部的 材料(青花以及其它杂质散布的玉料)，这是一般人不看好的材料，他往往能够独具巧思，创造出令人咋舌惊艳的作品。</p>\n\n<p>　　于泾，业界评说于泾是一个有个性、有思想的玉雕家。他最擅长的是圆雕工艺，对于主题结构与动态都掌握准确，注重细节的处理，所以作品没有&ldquo;火 气&rdquo;，时时散发出一种温润厚实的雅韵。首屈一指的是他的观音和动物类作品，造型秀美典雅、虚实有度、简洁飘逸、肌理精准，讲求肌肉与骨骼的关系，注重准确 表现在不同的动势中肌肉与骨骼牵连的变化。使得观众在欣赏他的作品时，不禁为这种逼真、自然的线条，肌理转折而惊叹，而感动。</p>\n\n<p>　　易少勇，各种玉牌是他的代表。作品讲究构图章法，取材山石、花木，配以各种书体不同的文字。&ldquo;半仙半神&rdquo;就是赞誉他这些作品中所展现的幽静清雅、安然清闲、不食人间烟火的气质。</p>\n\n<p>　　刘忠荣，1984年制作的&ldquo;青玉兽面壶&rdquo;，后来被国家定为历史文物级珍品，予以收藏。线条的熟练应用、丰富的层次表现以及空间的把握是刘忠荣的 拿手绝活。不论是直线、弧线，尽显&ldquo;挺&rdquo;、&ldquo;劲&rdquo;之势，婉转细腻而干净利落。浮雕层次的掌握更是精彩，在一块小小的玉牌上，最高与最低点之间微小的距离 上，他可以做出比他人更多的层次，再加上对人物、动物、花草、山水、物体等结构的精准把握，使他的作品在立体感中，有一种温厚、顺畅、柔雅的光彩。</p>\n\n<p>　　他们站在中国传统文化的台基上，继承了吴越文化的敏感、细腻特质及大胆开放的冒险性格，并吸取西方的新鲜文化因子，新的美学观点，充实自我艺术 修养，不断潜心积累，孤心琢磨，经历十几二十年的自我完善，形成了开放、创造、多元的独特文化气质，自觉不自觉地向着这个时代最前沿的方向挺进。</p>\n\n<p>&nbsp;</p>\n\n<p>　　<strong>玉石的收藏与投资</strong></p>\n\n<p>　　对于玉石略有倾心者，大可先从新玉入手，不需要先啃太厚重的课本，凭借直观的感觉去体验即可。这是知识结构上的便利和直接，另外随着现代发达的 玉材开采技术，很多在古代没法想象的顶级玉材已经进入了新玉市场，出产和田籽料的河道早已经不知被挖了多深，翻了多少遍，早已传出资源告罄的消息。另外上 文已经介绍道，现代的玉雕大师们在整个文化传承和发展中，正在创造历史，收藏现在，即收藏未来。</p>\n\n<p>　　一个人，对于不同的趣味爱好又可能随着时间的延伸，自身的发展会有所转变。但是他们的出发点几乎都是一致的就是与玉文化的亲密认同。</p>\n\n<p>　　谈及收藏与投资之道，以及遭受坑蒙拐骗之害的新闻与旧闻，在各个媒体渠道铺天盖地的宣传和呼告下，大家早已耳熟能详。若不想重蹈他们的覆辙，又可至庄子所提倡的&ldquo;物我同一&rdquo;般亲近祥和的生态伦理情怀，唯有不断求索。</p>\n\n<p>　　首先是平常心。平常心，重点之一是&ldquo;戒贪&rdquo;，不能抱有&ldquo;捡漏&rdquo;、&ldquo;一夜暴富&rdquo;等心态，趋利心是愉快的天敌，痛苦的源头。顺其自然，仅存得之我 幸，才是收藏的快乐法则。徐志摩曾说：吾会寻觅吾生命灵魂唯一之所系，得之，我之幸也;不得，我之命。如此之大道，放之四海而皆准，更何况美玉如斯，足可 承托人们对于精神生活的美好向往。</p>\n\n<p>　　其次是不听故事多看货，多比较。电影《Liberal Arts》 中，被认为精神狂躁的DEAN揭露了社会的本真&mdash;&mdash;&ldquo;周围的人说话极其夸张，什么都是最好的。比如：某某是最好的老师，这是全世界最好吃的馅饼，说的跟他 们见识过各种教师、品尝过各种馅饼一样。&rdquo;首先，所有的真理和真相就是在不断比较中得出的，你没有见过所有的东西就不能说是最好的。第二，很多人抱有各自 的私利带有欺骗性，不要轻信传承故事和结论，要在实践比较中得出自己的判断。</p>\n\n<p>　　再则，选择心之所向，至精至诚。想成为一个有成就的收藏家，务必根据自身心之所好，不断学习精进，建立起具有自己独特品味的收藏体系。据此可 知，选择新玉或老玉皆由自身所好抉择，然而在精品和普品之间的选择上，不可不听专家所言。著名珠宝玉器鉴定专家张兰香教授曾建言，宁可用买10件普品的钱 买一件精品，也绝不用一件精品的钱换回10件普品，一个普通实力的收藏者财力有限，如果一生能有一两件精品入藏，其实已经是功德圆满了。</p>\n\n<p>　　最后，如琢如磨，物我同一。人可滋玉，玉可养人，在不断的盘摩中，直至玉文化最深层的内涵&mdash;敬天格物。古人云：&ldquo;道虽迩，不行不至;事虽小，不为不成。&rdquo;欣赏、触摸方有真感情，实践才能出真知。</p>\n','','2013-05-15');
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
  `orderid` varchar(45) DEFAULT '0' COMMENT '排序',
  `create_time` char(19) DEFAULT '' COMMENT '时间',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_notice`
--

LOCK TABLES `info_notice` WRITE;
/*!40000 ALTER TABLE `info_notice` DISABLE KEYS */;
INSERT INTO `info_notice` VALUES (3,'2198548cc01042999e6a9eabee11326d','北京国际珠宝交易中心商铺租赁权拍卖公告',' 拍卖标的：北京国际珠宝交易中心所属19间商铺及八组柜台的一年期租赁权','<p><strong>北京国际珠宝交易中心商铺租赁权拍卖公告</strong>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p style=\"margin-left:18pt\">&nbsp;拍卖标的：北京国际珠宝交易中心所属19间商铺及八组柜台的一年期租赁权</p>\n\n<p style=\"margin-left:18pt\">预展时间：2013年4月25日-27日9:00-17:00</p>\n\n<p style=\"margin-left:18pt\">预展地点：北京国际珠宝交易中心三楼会议室（朝阳区惠新东街2号）</p>\n\n<p style=\"margin-left:18pt\">&nbsp;拍卖时间：2013年4月28日14:00</p>\n\n<p style=\"margin-left:18pt\">拍卖地点：北京国际会议中心二层第二会议厅A（朝阳区北辰东路8号）</p>\n\n<p style=\"margin-left:18pt\">&nbsp;咨询电话：010-84646745</p>\n','1',''),(4,'37703a49b3e14a218d263c70e34dffce','第三期\"玲珑美玉\"--当代玉雕石雕精品无底价拍卖会','第三期\"玲珑美玉\"--当代玉雕石雕精品无底价拍卖会','<p>预展时间：2013年4月17日-20日10:00-19:00<br />\n拍卖时间：2013年4月21日13:00<br />\n预展地点：北京天安天地珠宝艺术汇（北京西城区西绒线胡同28号天安国汇大厦）</p>\n','1','');
/*!40000 ALTER TABLE `info_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_notify`
--

DROP TABLE IF EXISTS `info_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_notify` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `title` varchar(100) DEFAULT '' COMMENT '标题',
  `note` varchar(500) DEFAULT '' COMMENT '导语',
  `content` longtext COMMENT '内容',
  `orderid` varchar(45) DEFAULT '0' COMMENT '排序',
  `create_time` char(19) DEFAULT '' COMMENT '时间',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_notify`
--

LOCK TABLES `info_notify` WRITE;
/*!40000 ALTER TABLE `info_notify` DISABLE KEYS */;
INSERT INTO `info_notify` VALUES (5,'f735bbe108be4694916a35864d520b6c','111','','<p>22</p>\n','33','2013-05-16');
/*!40000 ALTER TABLE `info_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_people`
--

DROP TABLE IF EXISTS `info_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_people` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `name` varchar(45) DEFAULT '' COMMENT '姓名',
  `file_url` varchar(450) DEFAULT '' COMMENT '头像',
  `note` varchar(4000) DEFAULT '' COMMENT '描述',
  `type_cid` char(32) DEFAULT '',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_people`
--

LOCK TABLES `info_people` WRITE;
/*!40000 ALTER TABLE `info_people` DISABLE KEYS */;
INSERT INTO `info_people` VALUES (1,'c22511fa7ef34e7fbc34f66799e770c2','彭志勇','/zzero/file/images_upload/20130512/7ff3b89909d14b2487e80d1c6f9ad423.jpg','彭志勇，1975年出生，安徽芜湖人，中国国家艺术大师，海派青年玉雕大师。“玉恒堂”品牌创始人，上海新生代青年玉雕大师。','30320001'),(2,'a7cea35a1f7c4b7887815440b5662728','陈冠军','/zzero/file/images_upload/20130512/13bddb3bb7d244d5aeb511c313de4c0c.jpg','1976年生于浙江上虞，1992年拜师学习玉雕技艺，2004年在苏州创办“冠玉坊”玉雕工作室。17岁从事玉雕行业，与玉石结下了不解之缘。历经十余年的刻苦研究，传承了明代宫廷大师陆子岗的作品；玉牌。结合现代的审美观点，以古老的设计，雕刻，抛光。作品擅长浅浮雕明清子冈牌雕刻风格，充分发挥以刀代笔的效果，采用平面减地之技法，玉牌雕刻颇有造诣。他的子岗牌在玉雕行业界首屈一指，堪称一绝。','30320002'),(3,'17974a9b542f4a01b6dcb660632e15a5','龚克勤','/zzero/file/images_upload/20130512/a9299d5aa88f463fa4573c9470076ec1.jpg','龚克勤 1965年生，苏州人。中国白玉研究会会员。\n1981年进工艺美校雕塑班并进玉雕厂实习，在玉石雕刻技法上打下基础，毕业后进了玉雕厂，先在车间工作，后提拔到干部职位，这段时间里，他认定了自己玉器制作的发展方向：新与旧，古典和现代的巧妙结合。90年代出厂后，帮人设计玉雕，月收入2500元，比厂里高了不知多少。市场经济大门敞开，外面的世界如此广阔。','30320001'),(4,'a13f230e699c4e358dc192d0cf3e7570','马洪伟','/zzero/file/images_upload/20130512/502d427ecfa741389a52406974447c98.jpg','1975年生于东渚，现为工艺美术师，苏州市民间工艺家，吴中区非物质文化遗产传承人，苏州市工艺美术行业协会玉雕专业委员会理事，苏州市明清仿古玉雕艺术研究所研究员，苏州市吴中区文艺家协会理事。\n自1986年拜师东渚李钰明学习玉雕技艺至今已有25年，通过自己的刻苦努力，潜心钻研，自己的专业技艺发展提高很快，同时形成了自己独特擅长的雕刻技艺—仿青铜器玉雕刻。','30320001'),(5,'30878640bb3149efa4cdd726ff10fae0','夏翔','/zzero/file/images_upload/20130512/2774d27cb2c04d53913e149d124f0611.jpg','夏翔：生于1964年，苏州人。现为高级工艺美术师，苏州天智堂工作室主人。江苏省工艺美术学会会员，新疆宝石协会会员，苏州市工艺美术行业协会玉雕专业委员会常务理事，苏州市民间艺术家协会秘书长。\n擅长：玉石雕刻设计，具有：“艺术品鉴定师”、“艺术品评估师”认证资格。','30320001'),(6,'a5215ec9e8a9456594350da5bad5b6b9','林光','/zzero/file/images_upload/20130512/98b3b3f5f01d42c4b92ad8fb909bddd6.jpg','林光先生  1976年生，中国浙江省玉石雕刻大师，中国工艺美术学会会员、工艺美术师、艺术品鉴定师，苏州工艺美术协会玉雕专业委员会常务理事、苏州玉石文化行业协会常务理事。\n92年因父亲开办玉石雕刻厂，开始在家从事玉器雕刻工作，曾遍访名师，向上海、苏州和扬州等工艺名师求教。技艺渐进，擅长于人物、动物、仿古和花鸟等作品的雕刻工艺。','30320001'),(7,'3d567b856f1e44099b4735af7d57ce0a','张备','/zzero/file/images_upload/20130512/6b3c9afebee94b33b4e5bdac7cc66266.jpg','张备，上个世纪70年代生于苏州，自幼喜书画，1989年毕业于苏州工艺美术学校，同年进入苏州玉石雕刻厂学习玉石雕刻与设计艺术。此后的十年他在工作中不断学习，积累经验，逐渐形成了自己的作品风格，并于1998年成立了“张备玉雕工作室”。工作室继承了“苏工”雕刻清雅与细腻的风格，同时又融入了中国画简洁明朗的画风和现代时尚元素为创作设计理念。注重精品设计，尤其擅长各种俏雕制作。 ','30320001'),(8,'f4264d3d324d4b33ba32b0d1c78a51bc','方东亮','/zzero/file/images_upload/20130512/beb9e15f5840429ba5725be051db4f39.jpg','器专家，方东亮大师玉雕作品-玛瑙俏雕酋长，北京市一级工艺美术大师，北大资源学院教授，中国防卫科技学院教授，北京珠宝首饰学院教授，财富珠宝周刊特邀记者 。\n方东亮大师从1958年起，50多年潜心玉雕设计创作和工艺美术理论研究，历任北京珠宝研修学院、中国防卫科技学院文物系、北京城市学院任玉器课客座教授。先后编著了《玉器工艺学》专业教材和《翡翠收藏鉴赏百问百答》等图书，其玉器作品多次在北京市、全国评比中获奖。','30320001'),(9,'128e6c99e4bb41b0a24b3b3f0714129d','陈建','/zzero/file/images_upload/20130512/f4d006b210a84c24ae063637909dc4b1.jpg','陈健,苏州市玉石文化行业协会会长；中国工艺美术协会设计家分会副会长；苏州市平江区政协委员；苏州市汉皇玉苑艺术品有限公司董事长。陈健于1979-1983年进邳州玉雕厂工作拜师学习玉雕，1984年至今在苏州从事玉雕设计工作，先后成立瑞祥玉雕厂；儒玉雕刻厂；苏州市汉皇玉苑艺术品有限公司。\n陈健先生从事玉雕事业已有二十余年，对我国中华五千年的玉文化有着深入的研究和独到精辟的见解，对古代玉文化的发展特别是春秋、战国及两汉文化有很高的鉴赏水准。在国内、港、澳、台及东南亚地区享有很高的声誉。','30320001');
/*!40000 ALTER TABLE `info_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_product`
--

DROP TABLE IF EXISTS `info_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_product` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `product_people_uid` char(32) DEFAULT '' COMMENT '所属名人',
  `product_name` varchar(45) DEFAULT '' COMMENT '作品名称',
  `product_time` char(19) DEFAULT '' COMMENT '创作时间',
  `product_note` longtext COMMENT '作品描述',
  `file_url` varchar(450) DEFAULT '' COMMENT '作品图片',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_product`
--

LOCK TABLES `info_product` WRITE;
/*!40000 ALTER TABLE `info_product` DISABLE KEYS */;
INSERT INTO `info_product` VALUES (1,'f297c81d1db64296a497d842c5c91a43','c22511fa7ef34e7fbc34f66799e770c2','漂亮的玉器','2013-05-01','漂亮的玉器','/zzero/file/images_upload/20130512/5df14b0830564484944e9dee246917b8.jpg'),(2,'06b8a366e83245a4acb20ebdb0fdab16','c22511fa7ef34e7fbc34f66799e770c2','2号宝玉','2013-05-12','2号宝玉','/zzero/file/images_upload/20130512/14977f12533e45e59a57443c9ab2dec1.jpg'),(3,'59d71a1f08a64178a03b267db4c54733','c22511fa7ef34e7fbc34f66799e770c2','新疆和田玉蚌鹤相争','2013-05-11','新疆和田玉蚌鹤相争','/zzero/file/images_upload/20130512/9bdc738ee08d45aca6c7e5fe2d703b2f.jpg');
/*!40000 ALTER TABLE `info_product` ENABLE KEYS */;
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
  `file_url` varchar(200) DEFAULT '' COMMENT '图片',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_special`
--

LOCK TABLES `info_special` WRITE;
/*!40000 ALTER TABLE `info_special` DISABLE KEYS */;
INSERT INTO `info_special` VALUES (1,'a80abfef2e574a5faa251032337ee714','e465363abab54efeb2bceda2a0f20e62','玲珑美玉--当代玉雕精品无底价拍卖会（三）','55555','2013-04-21','/zzero/file/images_upload/20130512/1b34112e0431416ba91ec9571583d054.jpg'),(2,'6b38e7c84eaa4259aeb46cf3bf9db2e5','32c7af7b02714791a78fabd7e5c0385f','2-1专场','22','2013-05-01',''),(3,'1f67925adb9f4f778f2cea8894b9ec42','32c7af7b02714791a78fabd7e5c0385f','2-2专场','4444','2013-05-01',''),(4,'8599b1bf858e488297e576133167cd5e','137d5129069a4bccbc4ee36a6469a6d2','淳明浩博--中国玉雕大师颜桂明年度作品专场拍卖（二）','','2013-06-23','/zzero/file/images_upload/20130515/57cdd9a677c246eabb622685266de65c.jpg'),(5,'494a5201ebb5462b802d90f844800375','137d5129069a4bccbc4ee36a6469a6d2','南石东曦--中国玉雕大师杨曦年度作品专场拍卖','','2013-06-23','/zzero/file/images_upload/20130515/678ca05a7b724609a56c612a65458973.jpg');
/*!40000 ALTER TABLE `info_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_static`
--

DROP TABLE IF EXISTS `info_static`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_static` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `code` varchar(45) DEFAULT '' COMMENT '编码',
  `title` varchar(45) DEFAULT '' COMMENT '标题',
  `content` longtext,
  `file_url` varchar(450) DEFAULT '' COMMENT '文件',
  `system_cid` int(11) DEFAULT '0' COMMENT '系统编码',
  `link` varchar(450) DEFAULT '' COMMENT '链接',
  `order_index` varchar(45) DEFAULT '' COMMENT '排序',
  PRIMARY KEY (`zid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_static`
--

LOCK TABLES `info_static` WRITE;
/*!40000 ALTER TABLE `info_static` DISABLE KEYS */;
INSERT INTO `info_static` VALUES (1,'e874cec8b57e11e28f1b00241d8adc61','303300010001','博观简介','<p><strong>&ldquo;博观&rdquo;二字寓意&ldquo;博大精深，纵观古今&rdquo;，并取意于&ldquo;博观而约取，厚积而薄发&rdquo;。</strong></p>\n\n<p><strong>&nbsp;</strong></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>&nbsp;&nbsp;&nbsp; 核心价值观</strong></p>\n\n<p>做人，做商；唯礼，唯义。</p>\n\n<p>◆博观拍卖以&ldquo;唯礼、唯义&rdquo;的企业行为准则引导公司同仁&ldquo;做人、做商&rdquo;追求儒商大家风范。&nbsp;&nbsp;&nbsp;</p>\n\n<p>◆博观拍卖集十余年的玉雕行业资源与拍卖经验，致力于打造国内最专业的玉雕艺术品专业拍卖机构。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>背景与优势</strong></p>\n\n<p>◆博观拍卖创始人集十余年的珠宝行业资源及拍卖行业经验加以整合，倾注于本专业拍卖机构,做到&ldquo;术业有专攻&rdquo;</p>\n\n<p>与全国各地的中国玉石雕刻大师保持密切合作关系</p>\n\n<p>◆拥有当代最高水平的大师级玉雕精品、中国玉石雕刻最高奖项&ldquo;天工奖&rdquo;获奖作品的征集渠道</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>专家团队</strong></p>\n\n<p>◆博观拍卖工作团队由在珠宝玉石行业内颇有影响力的专家和具有丰富行业经验的玉石行业和拍卖行业专业人员构成。</p>\n\n<p>◆博观拍卖拥有一支国家著名专家、学者、顶级玉石鉴赏家、玉石雕刻大师组成的顾问团后盾，保障了在拍品征集、鉴定方面的广泛性</p>\n\n<p>和权威性</p>\n\n<p>博观国际拍卖有限公司专家顾问名单如下：（按姓氏笔划排名）<br />\n于泾&nbsp;&nbsp;吴瑞华&nbsp;&nbsp;孙凤民&nbsp;&nbsp;袁心强&nbsp;&nbsp;顾永骏&nbsp;&nbsp;蔚长海 等</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>&nbsp;&nbsp; &nbsp;服务对象</strong></p>\n\n<p>◆艺术品收藏客户群体&nbsp;</p>\n\n<p>◆艺术品投资客户群体</p>\n\n<p>◆企业机构客户群体</p>\n\n<p>◆礼仪往来客户群体</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>&nbsp;&nbsp; &nbsp;主营业务</strong>&nbsp;&nbsp;&nbsp;&nbsp;<br />\n◆为客户提供专业化的珠宝玉石拍卖服务<br />\n◆为艺术品投资者提供全程专业投资顾问、策划、代理服务<br />\n◆为企业博物馆或收藏家博物馆提供专业建馆技术支持及藏品的征集、配制、鉴定、维护等服务<br />\n◆为企事业单位礼仪往来建立具有个性化的礼品系统提供珠宝玉器鉴定评估服务&nbsp;&nbsp;</p>\n\n<p>◆为客户发现价值 创造价值 实现价值&nbsp;&nbsp;&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>&nbsp;&nbsp; &nbsp;博观愿景&nbsp;&nbsp;</strong><br />\n以传播玉文化为主脉</p>\n\n<p>构筑中国珠宝玉石艺术品交流与玉文化传播最专业的平台</p>\n','',30330001,'',''),(2,'e874cec8b57e11e28f1b00241d8adc62','303300010002','竞买流程','<p>1、竞买人必须仔细阅读并遵守本公司拍卖规则，并对自己参加本公司拍卖活动的行为负责。</p>\n\n<p>2、本公司对拍卖品的真伪及/或品质不承担瑕疵担保责任。竞买人/或其代理人有责任自行了解有关拍卖品的实际状况并对自己竞买某拍卖品的行为承担法律责任。</p>\n\n<p>3、竞买人为自然人的，应在拍卖日前凭有效身份证或护照或中华人民共和国认可的其他有效身份证件填写并签署登记文件；竞买人为法人或者其他组织的，应在拍卖日前凭有效的注册登记文件、法定代表人身份证明或者合法的授权委托证明文件填写并签署登记文件，领取竞投号牌，否则不视为正式竞买人。</p>\n\n<p>4、竞买人参加本公司拍卖活动，应在领取竞投号牌前交纳保证金。保证金的具体数额由本公司在拍卖日前公布。</p>\n\n<p>5、除非某竞买人在拍卖日前向本公司出具书面证明并经本公司书面认可，表明其身份是某竞买人的代理人，否则每名竞买人均被视为竞买人本人。</p>\n\n<p>6、竞买人应亲自出席拍卖会。如不能出席，可根据我公司拍卖规则之相关规定采用书面形式委托本公司代理竞投。本公司有权决定是否接受上述委托。</p>\n\n<p>7、因代理竞投系本公司为竞买人由于特殊情况不能参加现场竞投而提供的免费服务，本公司及其工作人员对竞投未成功或代理竞投过程中出现的疏忽、过失或无法代为竞投等将不负任何责任。如竞买人希望确保竞投成功，则应亲自出席竞投。</p>\n\n<p>8、拍卖师有权代表本公司提高或降低竞价阶梯、拒绝任何竞投，在出现争议时，将拍卖品重新拍卖。</p>\n\n<p>9、竞买人竞投成功后，即成为该拍卖品的买受人。买受人应支付本公司相当于落槌价百分之十五（15%）的酬金或双方约定的酬金，同时应支付其它各项费用。</p>\n\n<p>10、拍卖成交后，买受人应自拍卖成交日（含成交日）起七日内一次付清购买价款并领取拍卖标的 ( 包装及搬运费用自负 )。购买价款为成交价款加成交价款的百分之十五的佣金。如买受人在上述付款时限内支付全部购买价款有困难，可于上述时限内支付相当于成交价款百分之三十的定金，并应自拍卖成交日起一个月内付清剩余购买价款。如买受人预期未付，每逾期一日，买受人应按未付款金额的千分之一/日向本公司支付滞纳金；如买受人逾期至六十日仍未付清剩余购买价款，本公司有权终止本次交易，定金不予退回买受人。</p>\n\n<p>11、未尽事宜请参阅本公司《拍卖规则》。</p>\n','',30330001,'',''),(3,'e874cec8b57e11e28f1b00241d8adc63','303300010003','竞买须知','<p>1、竞买人必须仔细阅读并遵守本公司拍卖规则，并对自己参加本公司拍卖活动的行为负责。</p>\n\n<p>2、本公司对拍卖品的真伪及/或品质不承担瑕疵担保责任。竞买人/或其代理人有责任自行了解有关拍卖品的实际状况并对自己竞买某拍卖品的行为承担法律责任。</p>\n\n<p>3、竞买人为自然人的，应在拍卖日前凭有效身份证或护照或中华人民共和国认可的其他有效身份证件填写并签署登记文件；竞买人为法人或者其他组织的，应在拍卖日前凭有效的注册登记文件、法定代表人身份证明或者合法的授权委托证明文件填写并签署登记文件，领取竞投号牌，否则不视为正式竞买人。</p>\n\n<p>4、竞买人参加本公司拍卖活动，应在领取竞投号牌前交纳保证金。保证金的具体数额由本公司在拍卖日前公布。</p>\n\n<p>5、除非某竞买人在拍卖日前向本公司出具书面证明并经本公司书面认可，表明其身份是某竞买人的代理人，否则每名竞买人均被视为竞买人本人。</p>\n\n<p>6、竞买人应亲自出席拍卖会。如不能出席，可根据我公司拍卖规则之相关规定采用书面形式委托本公司代理竞投。本公司有权决定是否接受上述委托。</p>\n\n<p>7、因代理竞投系本公司为竞买人由于特殊情况不能参加现场竞投而提供的免费服务，本公司及其工作人员对竞投未成功或代理竞投过程中出现的疏忽、过失或无法代为竞投等将不负任何责任。如竞买人希望确保竞投成功，则应亲自出席竞投。</p>\n\n<p>8、拍卖师有权代表本公司提高或降低竞价阶梯、拒绝任何竞投，在出现争议时，将拍卖品重新拍卖。</p>\n\n<p>9、竞买人竞投成功后，即成为该拍卖品的买受人。买受人应支付本公司相当于落槌价百分之十五（15%）的酬金或双方约定的酬金，同时应支付其它各项费用。</p>\n\n<p>10、拍卖成交后，买受人应自拍卖成交日（含成交日）起七日内一次付清购买价款并领取拍卖标的 ( 包装及搬运费用自负 )。购买价款为成交价款加成交价款的百分之十五的佣金。如买受人在上述付款时限内支付全部购买价款有困难，可于上述时限内支付相当于成交价款百分之三十的定金，并应自拍卖成交日起一个月内付清剩余购买价款。如买受人预期未付，每逾期一日，买受人应按未付款金额的千分之一/日向本公司支付滞纳金；如买受人逾期至六十日仍未付清剩余购买价款，本公司有权终止本次交易，定金不予退回买受人。</p>\n\n<p>11、未尽事宜请参阅本公司《拍卖规则》。</p>\n','',30330001,'',''),(4,'e874cec8b57e11e28f1b00241d8adc64','303300010004','委托须知','<p>1、委托人必须仔细阅读并遵守本公司拍卖规则，并对自己参加本公司拍卖活动的行为负责。</p>\n\n<p>2、委托人委托本公司拍卖其物品时，若为自然人，必须持有效身份证或护照或中国政府认可的其他有效身份证件并与本公司签署委托拍卖合同；若为法人或者其他组织的，应持有效注册登记证书、法定代表人身份证明或者合法的授权委托证明文件，与本公司签署委托拍卖合同。</p>\n\n<p>3、委托人就其委托本公司拍卖的拍卖品不可撤销地向本公司及买受人保证：<br />\n（1）其对该拍卖品拥有绝对的所有权或享有合法的处分权，对该拍卖品的拍卖不会侵害任何第三方的合法权益（包括著作权权益），亦不违反相关法律、法规的规定。<br />\n（2）其已尽其所知，就该拍卖品的来源和瑕疵向本公司进行了全面、详尽的披露和说明，不存在任何隐瞒或虚构之处。</p>\n\n<p>4、除本公司与委托人约定无保留价的拍卖品外，所有拍卖品均设有保留价。保留价由本公司与委托人通过协商书面确定。保留价数目一经双方确定，其更改须事先征得对方书面同意。</p>\n\n<p>5、本公司对拍卖日期、拍卖地点、拍卖场次、拍卖条件、拍卖方式以及通过图录、新闻媒体或其它载体对任何拍品作任何内容说明等事宜拥有完全的决定权。</p>\n\n<p>6、除委托人与本公司另有约定外，委托人授权本公司按落槌价百分之十五（15%）扣除拥金并同时扣除其他各项费用（百分之一（1%）的保险费，委托人为个人的，按国家规定，拍卖成交后本公司按成交价的百分之三（3%）代扣个人所得税，委托人为法人或其它组织的无须缴纳所得税）。如果某拍卖品的竞投价低于保留价而未能成交，则委托人须向本公司支付未成交佣金及其它各项费用，未成交佣金的标准为该拍卖品保留价的百分之三（3%），保险费收取为保留价的百分之一（1%）。拍卖成交后，除非委托人与本公司另有约定，委托人应支付相当于落槌价百分之一（1%）的保险费。</p>\n\n<p>7、如买受人已按本公司拍卖规则的规定向本公司付清全部购买价款，则本公司应自拍卖成交日起三十天（30天）内将拍卖收益以人民币方式支付委托人。</p>\n\n<p>8、如拍卖品未能成交，委托人应自收到本公司领取通知之日起一个月内取回该拍卖品（包装及搬运等费用自负），并向本公司支付未拍出手续费及其他各项费用。</p>\n','',30330001,'',''),(5,'e874cec8b57e11e28f1b00241d8adc65','303300010005','拍卖规则','<p>拍卖规则&nbsp;<br />\n第一条：规则的制定<br />\n本规则由北京博观国际拍卖有限公司（以下简称&ldquo;本公司&rdquo;）根据《中华人民共和国拍卖法》及其它有关法律、法规、条例、规定，同时参照国际通行惯例制定。<br />\n第二条：规则的适用范围<br />\n本规则适用于参加本公司拍卖活动的拍卖人、委托人、竞买人、买受人和其他相关各方（包括但不限于委托人、竞买人、买受人的代理人）。参加拍卖活动的当事人应当仔细阅读并遵守本规则，对自己按照本规则参与本公司拍卖活动的行为负责并承担法律后果。如因委托人、竞买人、买受人未仔细阅读本规则而引发任何争议或损失的，其全部责任均由委托人、竞买人、买受人自行承担。<br />\n在本公司组织的拍卖活动中参与竞投的竞买人，无论是自己亲自出席或者由代理人出席竞投，无论是以在拍卖活动中举牌竞投，还是以书面、电话或任何其他方式竞投，均被视为完全接受本规则。<br />\n第三条：规则中的名词解释<br />\n本规则各条款中，下列词语的定义为：<br />\n（一）&ldquo;本公司&rdquo;系指北京博观国际拍卖有限公司；<br />\n（二）&ldquo;竞买人&rdquo;系指根据中国法律规定具有完全民事行为能力的，在本公司举办的拍卖活动中登记并办理了必要手续，参加竞买拍卖标的的自然人、法人或其它组织。竞买人应当具备法律、法规对拍卖标的的买卖条件或对竞买人的资格所规定的条件或资格。本规则中，除非另有说明，竞买人均包括竞买人的代理人；<br />\n（三）&ldquo;买受人&rdquo;系指在本公司举办的拍卖活动中以最高应价购得拍卖标的的竞买人；<br />\n（四）&ldquo;委托人&rdquo;系指委托本公司拍卖本规则规定范围内拍卖标的的自然人、法人或者其它组织。本规则中，除非另有说明，委托人均包括委托人的代理人；<br />\n（五）&ldquo;拍卖标的&rdquo;系指委托人交予本公司拍卖的物品，尤其指任何图录内编有任何编号而加以说明的物品；<br />\n（六）&ldquo;拍卖日&rdquo;系指在某次拍卖活动中，本公司通告公布的正式进行拍卖交易之日。若公布的开始日期与开始拍卖活动实际日期不一致，则以拍卖活动实际开始之日为准；<br />\n（七）&ldquo;拍卖成交日&rdquo;系指在本公司举办的拍卖活动中，拍卖师以落槌或者以其它公开表示买定的方式确认任何拍卖标的达成交易的日期；<br />\n（八）&ldquo;落槌价&rdquo;系指拍卖师落槌决定将拍卖标的售予买受人的价格；<br />\n（九）&ldquo;佣金&rdquo;系指本公司组织的拍卖活动中买受人及委托人在拍卖标的成交后各自按成交价的百分之十五向本公司支付的酬金；如拍卖标的未成交，委托人则按保留价的百分之三向本公司支付未成交佣金；<br />\n（十）&ldquo;出售收益&rdquo;系指支付委托人的款项净额，该净额为落槌价减去按比率计算的佣金、各项费用及委托人应支付本公司的其它款项后的余额；<br />\n（十一）&ldquo;购买价款&rdquo;系指买受人因购买拍卖标的而应支付的包括落槌价、佣金、应由买受人支付的其它各项费用以及因买受人不履行义务而应当支付的所有费用在内的总和；<br />\n（十二）&ldquo;各项费用&rdquo;系指本公司对拍卖标的进行保险、制作拍卖标的图录及其它形式的宣传品、包装、运输、存储等所收取的费用以及依据相关法律、法规或本规则规定而收取的其它费用；<br />\n（十三）&ldquo;保证金&rdquo;系指竞买人领取竞投号牌时所应交付的费用，用以约束竞买人的竞买行为。竞买人竞买成功后，保证金自动转化为部分定金，在结清购买价款前不予退还。<br />\n（十四）&ldquo;定金&rdquo;系指竞买人竞买成功后，如因当场支付购买价款有困难，应先向本公司支付购买价款的百分之三十作为交易的保证，在结清购买价款前不予退还。<br />\n（十五）&ldquo;保留价&rdquo;系指委托人提出并与本公司协商后书面确定的拍卖标的的最低售价；<br />\n（十六）&ldquo;参考价&rdquo;系指在拍卖标的图录或其它介绍说明文字之后标明的拍卖标的估计售价，并非实际售价，仅供竞买人参考。<br />\n（十七）&ldquo;竞投牌&rdquo;系指与本公司签订竞买合同后领取的代表竞买人身份的号牌。竞投号牌是代表竞买人身份及其竞买出价的标志，每场拍卖会中竞投牌的号码具有唯一性。<br />\n（十八）&ldquo;拍卖师&rdquo;系指本公司聘请的具有国家注册拍卖师资格证书、并在拍卖会中落槌敲定成交价予买受人的主持人。拍卖师有权代表本公司提高或降低竞价阶梯、拒绝任何竞投，并在出现争议时将拍卖标的重新拍卖。<br />\n第四条：瑕疵<br />\n本公司对所有拍卖标的的真伪及/或品质不承担瑕疵担保责任。对拍卖标的的任何描述、说明、意见，仅供竞买人及/或其代理人参考，在任何情况下均不构成对拍卖标的真伪及/或品质的保证或担保。<br />\n所有拍卖标的均以拍卖时的状态出售。因此，竞买人及/或其代理人应当亲自或委托专家审看拍卖标的原物，并对自己所竞投某拍卖标的的行为承担法律责任。<br />\n任何竞买人在本公司组织的拍卖活动中参与竞投的行为，应被视为该竞买人对其准备竞投的拍卖标的的真伪、品质等情况已经进行全面的检验和评估，能够接受该拍卖标的的现状和价值。竞买人参与竞投的行为表明其愿意承担因此可能遇到的各种风险，并已放弃对该拍卖标的的真伪及/或品质提出异议的权利。<br />\n第五条：特别声明<br />\n在本公司举办的拍卖活动中，竞买人的应价经拍卖师落槌或者以其他公开表示买定的方式确认时，即表明关于拍卖标的的买卖合同关系已合法生效，该竞买人即成为该拍卖标的的买受人。本公司、委托人及买受人均应承认拍卖标的已出卖、成交的事实，并享有法律规定及本规则约定的权利，承担法律规定和本规则约定的义务。任何一方不履行义务的，均应承担相应的法律责任。</p>\n\n<p>第二章 关于委托人的规定<br />\n第六条：委托程序<br />\n（一）委托人若为自然人，必须持有效身份证或护照并与本公司签署委托拍卖合同；<br />\n（二）委托人若为法人或其它组织的，应持有效注册登记文件、法定代表人身份证明或者合法的授权委托证明文件，并与本公司签署委托拍卖合同。<br />\n（三）本公司有权对上述文件及委托事项以合法的方式进行核查。<br />\n（四）委托人一旦与本公司签署委托拍卖合同，即表示同意接受并遵照执行本规则的各项条款，同时自动授权本公司对其委托拍卖标的自行制作照片、图示，图录或其它形式的影像制品。本公司依法享有上述照片、图录或其他形式的影像制品的著作权，有权对其依法加以使用。<br />\n第七条：委托人之保证<br />\n委托人就其委托本公司拍卖的拍卖标的不可撤销地向本公司及买受人保证如下：&nbsp;<br />\n（一）其对该拍卖标的拥有绝对的所有权或享有合法的处分权，对该拍卖标的的拍卖不会侵害任何第三方的合法权益（包括著作权权益），亦不违反相关法律、法规的规定；<br />\n（二）委托拍卖标的不存在任何债权，债务纠纷（包括潜在的纠纷），没有在委托拍卖标的上设定任何担保或其他形式的权利责任。<br />\n（三）委托人就其知道或应该知道的该拍卖标的的来源和瑕疵向本公司进行了全面、详尽的披露和说明，不存在任何隐瞒或虚构之处；<br />\n（四）如果违反上述保证，造成拍卖标的的实际所有权人或声称拥有权利的任何第三人提出对该拍卖标的的权利主张，或者由于该拍卖标的存在的瑕疵而引起的索赔或权利主张的，其责任由委托人承担。造成本公司及／或买受人蒙受损失时，则委托人应负责赔偿本公司及／或买受人因此所遭受的一切损失，并承担因此而发生的一切费用和支出。<br />\n（五）委托人不得竞投自己委托本公司拍卖的物品，也不得委托他人代为竞投。若违反本条规定，委托人应自行承担相应之法律责任，并赔偿因此给本公司造成的全部损失。<br />\n（六）对需要办理附随移交手续的标的，委托人应在拍卖成交后按照约定将委托拍卖标的及相关文件、资料移交给买受人，委托人有义务协助买受人办理证照过户等手续。<br />\n（七）委托人委托本公司拍卖其物品时，该拍卖标的必须同时交付本公司保管，未经本公司同意不得擅自取走。<br />\n第八条：保留价<br />\n除本公司与委托人约定无保留价的拍卖标的外，所有拍卖标的均设有保留价，保留价以人民币表示。保留价由本公司与委托人通过协商书面确定。保留价数目一经双方确定，双方均不得擅自更改，其更改须事先征得对方同意。双方对保留价负有保密义务，不得泄露。<br />\n在任何情况下，本公司不对某一拍卖标的在本公司举办的拍卖会中未达保留价不成交而承担任何责任。<br />\n第九条：本公司的权利<br />\n本公司对下列事宜拥有完全的决定权：&nbsp;<br />\n（一）通过拍卖标的图录及／或新闻媒体及／或其它载体对任何拍卖标的做任何内容说明及／或评价；&nbsp;<br />\n（二）是否应征询任何专家意见；&nbsp;<br />\n（三）拍卖标的在图录中插图、拍卖标的展览及其它形式的拍卖标的宣传、推广活动中的安排及所应支付费用的标准；&nbsp;<br />\n（四）某拍卖标的是否适合本公司拍卖；&nbsp;<br />\n（五）拍卖日期、拍卖地点、拍卖条件及拍卖方式等事宜。&nbsp;<br />\n第十条：未上拍的拍卖标的<br />\n委托人与本公司签署委托拍卖合同且将拍卖标的交付本公司后，若因任何原因致使本公司认为某拍卖标的不适合由本公司拍卖的，则委托人应自本公司发出通知之日起三十日内取回该拍卖标的（包装及搬运等费用自负），本公司与委托人之间的委托拍卖合同自委托人领取该拍卖标的之日解除。若拍卖人未在上述期限内取走拍卖标的，则本公司与委托人之间的委托拍卖合同自上述期限届满之日即告解除。若委托人在委托拍卖合同解除后七日内仍未取走拍卖标的的，则本公司有权以本公司认为合理的方式处置该拍卖标的，处置所得在扣除本公司因此产生之全部费用后，若有余款，由委托人自行取回。<br />\n第十一条：拍卖终止<br />\n如出现下列情况之一，本公司有权在实际拍卖前的任何时间终止任何拍卖标的的拍卖活动：<br />\n（一）本公司对拍卖标的的归属或真实性持有异议；<br />\n（二）第三人对拍卖标的的归属或真实性持有异议且能够提供异议所依据的相关证据材料，并按照本公司规定交付担保金，同时愿意对中止拍卖活动所引起的法律后果及全部损失承担相应责任；&nbsp;<br />\n（三）对委托人所作的说明或对本规则第七条所述委托人保证的准确性持有异议；&nbsp;<br />\n（四）有证据表明委托人已经违反或将要违反本规则的任何条款；<br />\n（五）存在其他任何合理原因。<br />\n第十二条：委托人撤回拍卖标的&nbsp;<br />\n委托人在拍卖日前任何时间，均可向本公司发出书面通知，撤回其拍卖标的。但撤回拍卖标的时，若该拍卖标的已列入图录或其它宣传品并已开始印刷，则应支付相当于该拍卖标的保留价的百分之十的款项及其它各项费用作为违约金。如图录或任何其它宣传品尚未印刷，也需支付相当于该拍卖标的保留价的百分之五的款项及其它各项费用作为违约金。因委托人撤回拍卖标的而引起的任何争议或索赔均由委托人自行承担，与本公司无关。<br />\n第十三条：保险费<br />\n拍卖成交后，除非委托人与本公司另有约定，委托人应支付相当于落槌价百分之一的保险费。如拍卖标的未成交，委托人也应支付相当于保留价百分之一的保险费。<br />\n第十四条：拍卖标的保管期限&nbsp;<br />\n保管期限自本公司收到委托拍卖标的之日起，如果拍卖标的拍卖成交，则保管期限至拍卖成交日起第七日(含成交日)终止或买受人领取拍卖标的之日终止(以二者中较早者为准)。如果拍卖标的撤回、被终止、拍卖未能成交，则保管期限至本公司发出领回拍卖标的通知之日起七日届满为止。超过上述保管期限未取回的拍卖标的，本公司将按保留价千分之一/日的标准收取保管费，造成拍卖标的损毁、灭失的本公司不承担任何赔偿责任。<br />\n第十五条：保管免责<br />\n因自然磨损、固有瑕疵、内在或潜在缺陷、物质本身变化，自燃、自热、氧化、銹蚀、渗漏、鼠咬、虫蛀、大气(气候或气温)变化、湿度或温度转变或其它渐变原因以及因地震、海啸、战争、敌对行为、武装冲突、恐怖活动、政变、罢工、社会骚乱等不可抗力及核辐射及放射性污染对拍卖标的造成的任何毁损、灭失，以及由于任何原因造成的框架或玻璃、囊匣、底垫、支架、装裱或类似附属物的毁损、灭失，不在本公司保管责任范围之内。<br />\n第十六条：佣金及费用&nbsp;<br />\n除委托人与本公司另有约定外，委托人授权本公司按落槌价的百分之十五扣除佣金，同时扣除其它各项费用。尽管本公司是委托人的代理人，但委托人同意本公司可根据本规则第三十一条的规定，向买受人收取酬金及其它各项费用。<br />\n如果某拍卖标的的竞投价低于保留价而未能成交，则委托人授权本公司向其收取未成交佣金及其它各项费用。未成交佣金的标准为该拍卖标的保留价的百分之三。<br />\n第十七条：出售收益支付<br />\n如买受人已按本规则第三十二条的规定向本公司付清全部购买价款且未发生任何争议，则本公司应自拍卖成交日起三十天内将出售收益以人民币方式支付委托人。<br />\n如本规则第三十二条规定的付款期限届满，本公司仍未收到买受人的全部购买价款，则本公司将在收到买受人支付的全部购买价款之日起七个工作日内将出售收益支付委托人。<br />\n本公司有权向买受人收取以外币支付的购买价款，与本公司支付委托人出售收益的币种无关。<br />\n第十八条：税项<br />\n委托人所得的出售收益应向政府纳税，如有关法律规定本公司有代扣代缴义务的，本公司将依照法律规定执行，委托人应协助办理所有手续，并承担相应税费。<br />\n甲方为自然人，乙方将按照国家规定代扣落槌价百分之三的个人所得税。<br />\n第十九条：协助收取拖欠款项<br />\n委托人在委托本公司拍卖其物品的同时，被视为授权本公司有权代委托人向买受人追索相应拖欠价款。亦有权在本公司认为实际可行的情况下，采取适当措施（包括但不限于通过法律途径解决）协助委托人向买受人收取拖欠的款项。<br />\n上述约定并不排除委托人亲自或委托任何第三方向买受人追索相应拖欠款项的权利，亦不赋予本公司在任何情况下代委托人向买受人追索相应拖欠价款的义务。本公司在任何情况下不应因买受人未能支付购买价款而向委托人承担相应责任。<br />\n第二十条：拍卖标的未能成交&nbsp;<br />\n如拍卖标的未能成交，委托人应在拍卖会结束后7日内向本公司支付图录费、未成交佣金、保险费和约定的其他费用。<br />\n如拍卖标的未能成交，委托人应自收到本公司领取通知之日起一个月内取回该拍卖标的( 包装及搬运费用自负 )。超过上述期限，本公司有权以公开拍卖或其他出售方式按本公司认为合适的条件出售该拍卖标的，并有权从出售收益中扣除第一次拍卖中委托人应支付的未拍出手续费及其他各项费用及再次拍卖该拍卖标的的所有费用，将余款支付委托人。<br />\n如委托人要求本公司协助以邮寄、快递或其他通过第三方的运输方式退回其拍卖标的，一旦本公司将拍卖标的交付邮寄、快递、运输部门、公司或其雇员 / 分支机构，则视为本公司已退回该拍卖标的，同时应视为委托人已领取该拍卖标的。<br />\n第三章 关于竞买人和买受人的规定<br />\n第二十一条：竞买人登记&nbsp;<br />\n竞买人应当具备法律、法规等规定对参加拍卖活动所要求的条件。<br />\n竞买人为自然人的，应在拍卖日前凭有效身份证或护照填写并签署登记文件，办理竞买手续；竞买人为法人或者其它组织的，应在拍卖日前凭有效的注册登记证书，法定代表人身份证明或者合法的授权委托手续、受委托人的身份证明填写并签署登记文件，领取竞投号牌，否则不视为正式竞买人。<br />\n竞买人一旦取得竞买权即表示同意接受并遵循执行本拍卖规则的各项条款。<br />\n第二十二条：保证金&nbsp;<br />\n竞买人参加本公司拍卖活动，应在领取竞投号牌前交纳保证金。保证金的具体数额由本公司在拍卖日前公布。上述保证金在拍卖结束后五个工作日内，若竞买人未能购得拍卖标的，则全额无息返还竞买人；若竞买人购得拍卖标的成为买受人，该保证金则自动转化为已成交拍卖标的定金的一部分。此保证金在买受人支付所有购买价款前不予退还，若有余额，则于竞买人领取拍卖标的时，一并返还。<br />\n第二十三条：拍卖标的图录&nbsp;<br />\n拍卖标的图录中的文字、参考价，图片或其它形式的影像制品和宣传品，仅供竞买人参考，并可于拍卖前修订，不表明也不构成本公司对拍卖标的的真实性、价值、色调、质地、尺寸、有无缺陷等所作的担保。<br />\n因印刷或摄影等技术原因造成拍卖标的在图录及／或其它任何形式的图标、影像制品和宣传品中的色调、颜色、层次、形态等与原物存在误差者，以原物为准。本公司及其工作人员或其代理人对任何拍卖标的用任何方式（包括证书、图录、幻灯投影、新闻载体等）所作的介绍及评价，均为参考性意见，不构成对拍卖标的的任何担保。本公司及其工作人员或其代理人对上述之介绍及评价中的不准确或遗漏之处不承担责任。<br />\n第二十四条：本公司有权决定<br />\n本公司有权酌情拒绝任何人参加本公司举办的拍卖活动或进入拍卖现场，或在拍卖会现场进行拍照、摄像等活动。<br />\n在拍卖现场出现异常的情况下，本公司有权做出紧急处理。如拍卖现场出现任何争议，本公司有权协调解决。<br />\n本公司有权决定拍卖时计价的货币及公布货币兑换率。<br />\n第二十五条：竞投号牌<br />\n竞投号牌是竞买人及竞买权的标志，竞买人必须保管好自己的竞投号牌，谨防丢失。竞买人不得将自己的竞投号牌出借他人使用。否则，竞买人需对他人使用其竞投号牌竞投相应拍卖标的的行为承担全部法律责任。<br />\n第二十六条：委托竞投<br />\n通常情况下，竞买人应亲自出席拍卖会。如不能出席，可采用书面形式委托本公司代为竞投。本公司有权决定是否接受上述委托。<br />\n委托本公司竞投之竞买人应在规定时间内 ( 不迟于拍卖日前二十四小时 ) 办理委托手续，向本公司出具书面委托竞投授权书，清楚填写委托竞投拍卖标的的名称、图录号、最高委托出价等资料，并应根据本规则第二十七条之规定同时缴纳保证金。委托本公司竞投之竞买人如需取消委托授权，应不迟于拍卖日前二十四小时书面通知本公司。否则本公司有权按原委托竞买内容执行，竞买委托人自行承担其后果和责任。<br />\n第二十七条：委托竞投之保证金<br />\n竞买委托人应将最高委托出价的百分之三十款项作为保证金于拍卖日前三日汇至本公司（汇款手续费自理）。委托竞买成功后七日内竞买委托人应将全部购买价款的余额支付给本公司，否则本公司有权取消交易，并将该保证金按违约金的有关规定扣除。<br />\n竞买委托人未按规定将保证金汇至本公司的，本公司有权拒绝或解除竞买委托，但如本公司接受竞买委托并竞买成功，竞买委托人必须在七日内将全部购买价款支付给本公司，否则竞买委托人必须承担由此引起的一切损失的赔偿责任以及其他相关法律责任。<br />\n如委托竞买未成功，本公司将保证金如数退回竞买委托人（汇款手续费由委托人负责）。<br />\n第二十八条：委托竞投之免责&nbsp;<br />\n由于委托竞投是本公司为竞买人在特殊情况不能亲自到现场参加竞投而提供的一项免费服务，因而本公司及其工作人员对竞投未成功或代理竞投过程中出现的疏忽、过失或无法代为竞投等问题不承担任何责任。&nbsp;<br />\n第二十九条：委托在先原则&nbsp;<br />\n若两个或两个以上之竞买委托人以相同委托价委托本公司竞投同一拍卖标的，且竞投成功，则交付保证金者为成功竞买者。如均已交付保证金，则最先将授权委托书发至本公司的竞买人为该拍卖标的的买受人。<br />\n第三十条：拍卖成交及确认&nbsp;<br />\n竞买人在拍卖中举起竞投号牌即表示接受此时价位，竞买人应对自己在任何价位上的举牌应价行为负责。<br />\n竞买人的最高应价经拍卖师落槌或者以其它公开表示买定的方式确认时，即表明该竞买人与委托人之间达成了关于该拍卖标的的买卖合同，并当场在成交确认书上签字，不得反悔，否则应承担由此引发的一切法律责任。<br />\n本公司进行拍卖时，制作拍卖笔录，拍卖笔录由拍卖师、记录人签名。成交确认书是竞买人证明自己是某件拍卖标的的买受人的凭证，应经拍卖师、记录人、买受人当场签字确认，成交确认书应妥善保管，不得丢失或转让，否则一切后果由竞买人自负。<br />\n第三十一条：佣金及费用&nbsp;<br />\n竞买人竞投成功后，即成为该拍卖标的的买受人。买受人应支付本公司相当于落槌价百分之十五的佣金，同时应支付其它各项费用。买受人承认本公司可根据本规则第十六条的规定向委托人收取佣金及其它各项费用。<br />\n第三十二条：付款时间&nbsp;<br />\n拍卖成交后，买受人应自拍卖成交日（含成交日）起七日内一次付清购买价款并领取拍卖标的 ( 包装及搬运费用自负 )。购买价款为成交价款加成交价款的百分之十五的佣金。<br />\n如买受人在上述付款时限内支付全部购买价款有困难，可于上述时限内支付相当于成交价款百分之三十的定金，并应自拍卖成交日起一个月内付清剩余购买价款。如买受人预期未付，每逾期一日，买受人应按未付款金额的千分之一/日向本公司支付滞纳金；如买受人逾期至六十日仍未付清剩余购买价款，本公司有权终止本次交易，定金不予退回买受人。<br />\n经征得委托人同意，本公司可按照本规则规定再行拍卖或以其它方式出售该拍卖标的。原买受人除应当支付第一次拍卖中买受人及委托人应当支付的佣金及其它各项费用并承担再次拍卖或以其它方式出售该拍卖标的所有费用外，若再行拍卖或以其它方式出售该拍卖标的所得的价款低于原拍卖价款的，原买受人应当补足差额。<br />\n第三十三条：支付币种&nbsp;<br />\n所有价款应以本公司指定的货币支付，如买受人以本公司指定的货币以外的其它货币支付，应按买受人与本公司约定的汇价折算或按照中国人民银行于买受人付款日前一个工作日公布的人民币与该币种的汇价折算。本公司为将买受人所支付之该币种外币兑换成人民币所产生的所有银行手续费、佣金或其它费用，均由买受人承担。<br />\n第三十四条：所有权转移&nbsp;<br />\n买受人全额支付购买价款后，即可获得拍卖标的的所有权。<br />\n第三十五条：风险转移&nbsp;<br />\n竞投成功后，拍卖标的的风险于下列任何一种情形发生后 ( 以较早发生日期为准 ) 即由买受人自行承担：&nbsp;<br />\n( 一 ) 买受人领取所购拍卖标的；&nbsp;<br />\n( 二 ) 买受人向本公司支付有关拍卖标的标的全部购买价款；&nbsp;<br />\n( 三 ) 拍卖成交日 ( 含成交日 ) 起七日届满。&nbsp;<br />\n第三十六条：领取拍卖标的&nbsp;<br />\n买受人须在支付全部购买价款之日起七日内于本公司指定地点领取所购买的拍卖标的。若买受人未能在此期限内领取拍卖标的，则因逾期造成对该拍卖标的的搬运、储存及各项费用均由买受人承担，且买受人应承担其所购拍卖标的毁损灭失的风险，即使该拍卖标的仍由本公司或其它代理人代为保存，本公司及其工作人员或其代理人对任何原因所致的该拍卖标的毁损、灭失，不负任何责任。<br />\n若买受人延迟领取该拍卖标的超过三十日时，本公司有权视具体情况依照中国法律法规之规定处分该拍卖标的，以处分所得抵偿本公司垫付的保管费、保险费、搬运费等。<br />\n第三十七条：包装及搬运&nbsp;<br />\n本公司有权决定是否接受买受人要求，提供代为包装及处理的服务。如果本公司工作人员应买受人要求代为包装及处理购买的拍卖标的，上述包装及处理仅应视为本公司对买受人提供的服务，因此发生的任何风险及损失均由买受人自负。在任何情况下，本公司对因任何原因造成的框架或玻璃、囊匣、底垫、支架、或类似附属物的损坏、灭失不负责任。&nbsp;<br />\n如买受人要求本公司协助以邮寄、快递或运输方式领取其所购买的拍卖标的（包装及邮递、运输费用由买受人负担），一旦本公司将拍卖标的交付邮寄、快递、运输部门、公司或其雇员 / 分支机构，则视为本公司已交付该拍卖标的，同时应视为买受人已按正常程序领取该拍卖标的，此过程中的风险由买受人承担，除非买受人特别指明并负担保险费外，在邮寄、快递、运输过程中一般不予投保。&nbsp;<br />\n对于买受人指定或本公司向买受人推荐的包装公司及邮寄、快递、运输部门或公司所造成的一切错误、遗漏、损坏或灭失，本公司不承担责任。<br />\n第四章 其他<br />\n第三十八条：保密责任&nbsp;<br />\n本公司有义务为委托人、竞买人及买受人保守秘密，并根据中华人民共和国法律和本规则维护委托人、竞买人、买受人和本公司的正当权益不受侵害。<br />\n第三十九条：免除责任&nbsp;<br />\n本公司作为委托人的代理人，对委托人或买受人的任何违约行为不承担责任。 在委托人或买受人出现违约行为的情况下，本公司有权根据自己的判断决定向委托人或买受人披露另一方的名称和地址，使受到损害的一方得以通过法律诉讼获得损害赔偿。但是，本公司在向委托人或买受人披露该等资料之前，将采取合理步骤通知将被披露资料的一方。<br />\n第四十条：通知&nbsp;<br />\n竞买人及委托人均应将其固定有效的通讯联络方式告知本公司，若有改变，应立即书面告知本公司。本规则中所提及之通知，仅指以信函或传真形式发出的书面通知。如以邮递方式发出，一旦本公司将通知交付邮递部门，则视为本公司已发出该通知，同时应视为收件人已按正常邮递程序收到该通知。如以传真方式发出，则传真发送当日为收件人收到该通知日期。&nbsp;<br />\n第四十一条：拍卖标的出境&nbsp;<br />\n根据《中华人民共和国文物保护法》及其它法律、法规规定，限制带出中华人民共和国国境的拍卖标的，本公司将在拍卖标的图录中或在拍卖会现场予以说明；允许带出中华人民共和国国境的拍卖标的，买受人应根据国家有关规定自行办理出境手续。&nbsp;<br />\n第四十二条：可分割性<br />\n参加本公司组织的拍卖活动的当事人各方之间的权利义务，依照本规则的约定确定。&nbsp;<br />\n如本规则之任何条款或部分因任何理由被认定为无效、不合法或不可强制执行，本规则其他条款或部分仍然有效，相关各方必须遵守、执行。<br />\n本规则与现行拍卖法及相关法律规定不一致的，如果本规则的规定不违反有关法律的禁止性规定，应该优先适用本规则的规定。本规则没有规定的，如果现行法律有规定，适用有关法律的规定；如果本规则和相关法律均没有规定的，适用国际惯例或国内行业惯例。<br />\n第四十三条：争议解决&nbsp;<br />\n因依照本规则参加本公司拍卖活动而发生的任何争议，相关各方均可向北京仲裁委员会提请仲裁。解决该等争议的准据法应为中华人民共和国法律。&nbsp;<br />\n第四十四条：施行时间&nbsp;<br />\n本规则于 2006 年11月 1 日起施行。&nbsp;<br />\n第四十五条：解释权&nbsp;<br />\n本规则的解释权属于北京博观国际拍卖有限公司。</p>\n','',30330001,'',''),(6,'e874cec8b57e11e28f1b00241d8adc66','303300010006','联系方式','<p>地址：北京市朝阳区三间房东路一号&ldquo;北京懋隆文化产业创意园&rdquo;十栋<br />\n邮编：100024<br />\n电话：86-10-51695556/7转805 806<br />\n传真：86-10-51695550<br />\n邮箱：<a href=\"mailto:pm@boguanpaimai.com\">pm@boguanpaimai.com</a><br />\n客服邮箱：<a href=\"mailto:service@boguanpaimai.com\">service@boguanpaimai.com</a></p>\n','',30330001,'',''),(7,'e874cec8b57e11e28f1b00241d8adc67','303300010007','友情链接','<p><img alt=\"\" src=\"/zzero/file/image/20130512/f80e26d8cbf549c894d1cca01cb48fc6.jpg\" style=\"height:564px; width:985px\" /></p>\n','',30330001,'',''),(8,'e874cec8b57e11e28f1b00241d8adc68','303300020001','俱乐部简介','<p>&ldquo;博观&rdquo;二字寓意&ldquo;博大精深，纵观古今&rdquo;，并取意于&ldquo;博观而约取，厚积而薄发&rdquo;。博观无极玉石收藏俱乐部隶属于博观机构，是一家集专业性、权威性和艺术品位于一体的高端珠宝玉石收藏俱乐部。</p>\n\n<p>博观无极玉石收藏俱乐部一直致力于为艺术品收藏投资高端人士构建资源共享平台，为会员提供个性化的专业培训、鉴定和咨询服务，提升会员艺术品投资规划能力与鉴赏品位，让会员徜徉其中，品味珠宝玉石，享受艺术人生。</p>\n\n<p><strong>我们的宗旨</strong></p>\n\n<p>博观无极玉石俱乐部以玉石艺术品鉴赏投资学习交流为核心，构建以艺术品收藏投资高端人士为主体的资源沟通平台，让会员感受异彩纷呈的艺术氛围，享受玉石投资带来的愉悦，丰富五彩缤纷的快乐人生。</p>\n\n<p><strong>我们的背景</strong></p>\n\n<p>10多年的珠宝行业资源及拍卖业经验资本；</p>\n\n<p>国家著名专家、学者、顶级玉石鉴赏家、玉石雕刻大师组成的顾问团后盾；</p>\n\n<p>集收藏、拍卖、经营为一体的全面、专业服务机构；</p>\n\n<p>以传播玉文化为主脉，构建中国珠宝玉石艺术品交流与玉文化传播最专业的平台；</p>\n\n<p>以翡翠白玉精品为载体，融中国传统文化于现代艺术之中，引领人们涤尘去俗，进入人类艺术及儒家思想的最高境界。</p>\n\n<p><strong>我们的优势</strong></p>\n\n<p>拥有当代<strong>最高水平</strong>的<strong>大师级</strong>玉雕精品，中国玉石雕刻最高奖项&ldquo;<strong>天工奖</strong>&rdquo;获奖作品；</p>\n\n<p>拥有艺术品投资收藏权威专家的技术支持，为会员提供包括瓷器、字画等的投资收藏资讯，让会员品味更多的艺术魅力；</p>\n\n<p>资深大家坐阵，为会员提供专业性、实效性和个性化相结合的服务；</p>\n\n<p>与全国各地的中国玉石雕刻大师密切合作，会员可近距离接触玉雕大师，分享大师的赏玉、玩玉、藏玉心得；</p>\n\n<p>与其它投资行业、俱乐部、会所有着友好的合作，为会员提供更多投资和艺术资讯，让会员不断提高生活品质，体味更丰富的人生。</p>\n\n<p><strong>我们的服务</strong></p>\n\n<p>为珠宝玉石艺术品投资者提供全程专业投资策划服务；</p>\n\n<p>为企业博物馆或收藏家博物馆提供专业的珠宝玉石藏品征集、配制、维护、鉴定等服务；</p>\n\n<p>为企事业单位礼仪往来建立具有个性化的礼品系统，提供珠宝玉器鉴定评估服务；</p>\n\n<p>为会员提供收藏级白玉、翡翠、钻石等珠宝玉石艺术品的投资及鉴赏服务。</p>\n\n<p><strong>我们的活动</strong></p>\n\n<p style=\"margin-left:17.95pt\">各门类艺术品专家知识讲座；</p>\n\n<p style=\"margin-left:17.95pt\">珠宝玉石专场拍卖会；</p>\n\n<p style=\"margin-left:17.95pt\">珠宝玉石艺术品鉴赏会；</p>\n\n<p style=\"margin-left:17.95pt\">其它门类艺术品鉴赏会。</p>\n\n<p>坚实的后盾、优越的资源、丰富的资讯、个性化的服务、多彩的活动，博观无极玉石收藏俱乐部为您提供专业的服务，高品质的艺术盛宴，让您轻松理财，快乐收藏，斟酌文化韵味，品味艺术人生！</p>\n\n<p>博观玉石收藏俱乐部广交天下藏友！</p>\n','',30330002,'',''),(9,'e874cec8b57e11e28f1b00241d8adc69','303300020002','俱乐部通知','<p style=\"margin-left:18pt\">&nbsp;拍卖标的：北京国际珠宝交易中心所属19间商铺及八组柜台的一年期租赁权</p>\n\n<p style=\"margin-left:18pt\">预展时间：2013年4月25日-27日9:00-17:00</p>\n\n<p style=\"margin-left:18pt\">预展地点：北京国际珠宝交易中心三楼会议室（朝阳区惠新东街2号）</p>\n\n<p style=\"margin-left:18pt\">&nbsp;拍卖时间：2013年4月28日14:00</p>\n\n<p style=\"margin-left:18pt\">拍卖地点：北京国际会议中心二层第二会议厅A（朝阳区北辰东路8号）</p>\n\n<p style=\"margin-left:18pt\">&nbsp;咨询电话：010-84646745</p>\n\n<p style=\"margin-left:18pt\">&nbsp;</p>\n\n<p><strong>第三期&quot;玲珑美玉&quot;--当代玉雕石雕精品无底价拍卖会</strong></p>\n\n<p><br />\n预展时间：2013年4月17日-20日10:00-19:00<br />\n拍卖时间：2013年4月21日13:00<br />\n预展地点：北京天安天地珠宝艺术汇（北京西城区西绒线胡同28号天安国汇大厦）</p>\n','',30330002,'',''),(10,'e874cec8b57e11e28f1b00241d8adc70','303300020003','俱乐部章程','<p>俱乐部名称</p>\n\n<p>&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 博观无极玉石收藏俱乐部<br />\n&nbsp;<br />\n&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 俱乐部宗旨</p>\n\n<p>&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 以丰富的行业资源，全新的服务理念，成熟的运作手段和顺畅的传播网络为会员提供整合性的服务；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 以珠宝玉石品鉴赏投资与学习交流为核心，构建以艺术品收藏投资高端人士构建资源共享平台，使会员感受异彩纷呈的艺术氛围，享受玉石投资所<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 带来的愉悦，丰富五彩缤纷的快乐人生。<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 为会员提供个性化的珠宝玉石专业培训、真伪鉴定、投资咨询等全方位服务和智力支持，提升会员艺术品投资的能力与鉴赏的品味。<br />\n&nbsp;<br />\n&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会员资格</p>\n\n<p>&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 具有完全行为能力的法定成年人，自愿遵守博观无极玉石收藏俱乐部章程；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 提交入会申请并通过入会资格审核；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 按期交纳会费。<br />\n&nbsp;<br />\n&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会费</p>\n\n<p>&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 根据会员级别收取相应会费；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会费将用于为会员提供超值服务，会费用途包括：<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 组织俱乐部会员聚会、交流学习等各种活动<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 关爱社会，慈善义举<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会刊制作及相关活动资料<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会费不含外出考察所需差旅费用。<br />\n&nbsp;<br />\n&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会员资格的获取</p>\n\n<p>&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 个人资料<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 申请人需如实、完整地填写《入会申请表》，并提供1寸免冠彩色照片2张；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 俱乐部充分尊重会员隐私等个人权利，为会员个人资料保密。<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会员卡<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 申请人签署《入会申请表》并通过入会资格审核后，即可获取会员卡，成为正式会员。会员卡分为金卡、银卡及普通会员卡。正式会员享受会员的<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 所有权利，并履行相关义务。会员卡不得转让，如遇遗失、损坏，请及时通知本俱乐部并申请补办新卡。<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会员资料变更<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会员个人资料如发生更改，请及时联系俱乐部更新，否则由此引发的责任由会员个人承担。<br />\n&nbsp;<br />\n&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会员享有的服务<br />\n&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 参加俱乐部组织的各种活动；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 享受专家为您提供的艺术品鉴定、艺术品投资咨询等方面的专业服务；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 可通过俱乐部网站在线交流工具，就您关注的问题随时与专家顾问团进行咨询和交流；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在博观拍卖、博观无极俱乐部及相关与博观无极俱乐部签具合约的机构购买艺术品时，可享受会员优惠价并获得积分；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 定期获得会刊；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 享有在俱乐部网站及会刊上发布个人信息和企业最新动态的优先权和最优惠待遇；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 享受与本俱乐部合作的其他俱乐部高品质会员待遇。<br />\n&nbsp;<br />\n&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 俱乐部活动<br />\n&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 俱乐部将定期组织包括艺术品鉴赏会、酒会、专家讲座、学习考察等各种形式的会员活动。<br />\n&nbsp;<br />\n&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会员的权利和义务<br />\n&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1）、会员的权利<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 可享受俱乐部承诺的各项服务，并参加本俱乐部举办的各种活动；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 可对俱乐部的活动安排、管理方式和运作模式提出建议或意见；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 可独立向俱乐部发出活动倡议；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2）、会员的义务<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 遵守俱乐部各项章程；遵守国家法律、有关法规和社会公德；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 按时交纳会费；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 如实、详尽提供个人资料，如个人信息有变动，应及时告知以便更新；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在参加俱乐部活动时应听从俱乐部的统一安排；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会员应尊重其他会员；<br />\n&nbsp;<br />\n&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 退会<br />\n&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1）、主动退会<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会员逾期1个月不交纳会费，视作自动退会；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 因个人原因提出退会，予以退会。<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2）、规劝退会<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 不符合俱乐部会员资格者；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 严重违反俱乐部章程者；<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 由于个人不当行为给俱乐部利益造成重大损失者，俱乐部并保留追究其责任的权利。&nbsp;<br />\n&nbsp;<br />\n&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 附则<br />\n&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 俱乐部管理中心可视情况变化对本章程进行修改或补充。<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本章程最终解释权归博观无极玉石收藏俱乐部所有。<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本章程自 2009年2月起实施。</p>\n','',30330002,'',''),(11,'e874cec8b57e11e28f1b00241d8adc71','303300030001','博观书房中部广告',NULL,'/zzero/file/images_upload/20130512/22783307f8cb4c568ef4566d5e0faf31.jpg',30330003,'',''),(12,'e874cec8b57e11e28f1b00241d8adc72','303300030002','博观书房左下广告',NULL,'/zzero/file/images_upload/20130512/bcc38da3924b40d0881c5e2d31724792.jpg',30330003,'',''),(13,'e874cec8b57e11e28f1b00241d8adc73','303300030003','博观书房右下广告',NULL,'/zzero/file/images_upload/20130512/6bdadc21d1e741dd9f0a2519585e2029.jpg',30330003,'','');
/*!40000 ALTER TABLE `info_static` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_video`
--

DROP TABLE IF EXISTS `info_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_video` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `title` varchar(45) DEFAULT '' COMMENT '标题',
  `file_url` varchar(450) DEFAULT '' COMMENT '图片地址',
  `type_cid` int(11) DEFAULT '0' COMMENT '类型',
  `sort_index` char(19) DEFAULT '' COMMENT '排序',
  `video_url` varchar(450) DEFAULT '' COMMENT '优酷视频地址',
  `ppt_url` varchar(450) DEFAULT '' COMMENT 'PPT地址',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_video`
--

LOCK TABLES `info_video` WRITE;
/*!40000 ALTER TABLE `info_video` DISABLE KEYS */;
INSERT INTO `info_video` VALUES (1,'4ea645ec2156467eb1c2a452d7f6ba3e','如何鉴别真假和田玉','/zzero/file/images_upload/20130512/d4a73bdeb37c4b35bc34546874de562c.jpg',30340001,'11','','/zzero/file/images_upload/20130512/566ca70bbe8f4ba7a82e0b8ef938ed5a.ppt'),(2,'018efcc70ca0429ca6f8b65c22aca6c8','珠宝玉石鉴定方法精品课程','/zzero/file/images_upload/20130512/1560e8a4e1534e94bee8986d7b09848b.jpg',30340001,'22','','/zzero/file/images_upload/20130512/c928a7369cfd4537bb33b595a831a6ae.ppt'),(3,'759f7246d54a4629996b048bda5ac6e8','玉器雕刻加工-玉雕大师杨老师','/zzero/file/images_upload/20130512/8c8a55640f9b459fa67eb817528217b2.jpg',30340002,'','http://v.youku.com/v_show/id_XMzU5ODQyODIw.html',''),(4,'4aaa28ef39d5462aafe4e8c0dfca32af','《中国古代玉器》课程参考资料','/zzero/file/images_upload/20130512/e2a5bb164d794e418baaf0e679474cb0.jpg',30340002,'','http://v.youku.com/v_show/id_XMzU5ODQyODIw.html',''),(5,'f490cc7f69934bdfbe279b6b39c26102','养玉学习俱乐部网络','/zzero/file/images_upload/20130512/78619b918c544f87af157d95e45dee73.jpg',30340002,'','http://v.youku.com/v_show/id_XMzU5ODQyODIw.html',''),(6,'fa630c6b96aa47c981d6d25316ee944e','玉器抛光简介','/zzero/file/images_upload/20130512/191c63a93e21499ea6c893f27c264989.jpg',30340002,'','http://v.youku.com/v_show/id_XMzU5ODQyODIw.html','');
/*!40000 ALTER TABLE `info_video` ENABLE KEYS */;
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
-- Table structure for table `user_collect`
--

DROP TABLE IF EXISTS `user_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_collect` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `user_uid` char(32) DEFAULT '' COMMENT '用户',
  `info_url` varchar(450) DEFAULT '' COMMENT '收藏地址',
  `info_title` varchar(450) DEFAULT '' COMMENT '信息标题',
  `collect_date` char(19) DEFAULT '' COMMENT '时间',
  `info_type` int(11) DEFAULT '0' COMMENT '类型',
  `info_uid` char(32) DEFAULT '',
  PRIMARY KEY (`zid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_collect`
--

LOCK TABLES `user_collect` WRITE;
/*!40000 ALTER TABLE `user_collect` DISABLE KEYS */;
INSERT INTO `user_collect` VALUES (1,'0abc287d25f24a2d8e4ebeb07b368d98','6786149106e4466d96470ccd54d9b7b6','pic-list-6b38e7c84eaa4259aeb46cf3bf9db2e5','2-1专场','2013-05-12 16:04:43',0,'6b38e7c84eaa4259aeb46cf3bf9db2e5'),(2,'ca7487c3b433423b847280de3dd6a82b','6786149106e4466d96470ccd54d9b7b6','pic-list-6b38e7c84eaa4259aeb46cf3bf9db2e5','2-1专场','2013-05-12 16:04:49',0,'6b38e7c84eaa4259aeb46cf3bf9db2e5'),(3,'0baacd29d2b24d51b5409f0208e946d2','6786149106e4466d96470ccd54d9b7b6','pic-list-6b38e7c84eaa4259aeb46cf3bf9db2e5','2-1专场','2013-05-12 16:05:58',0,'6b38e7c84eaa4259aeb46cf3bf9db2e5'),(4,'1d6e7ab6a39e4f2f82cfe8cf5d8fbe35','6786149106e4466d96470ccd54d9b7b6','pic-list-6b38e7c84eaa4259aeb46cf3bf9db2e5','2-1专场','2013-05-12 16:06:01',0,'6b38e7c84eaa4259aeb46cf3bf9db2e5'),(5,'b1c199ff1d144095bcf26800492fb910','6786149106e4466d96470ccd54d9b7b6','pic-list-a80abfef2e574a5faa251032337ee714','1-1专场','2013-05-12 16:09:11',0,'a80abfef2e574a5faa251032337ee714'),(6,'f8018beccbab4d0a819910db761acf7c','6786149106e4466d96470ccd54d9b7b6','pic-list-6b38e7c84eaa4259aeb46cf3bf9db2e5','2-1专场','2013-05-12 16:46:11',0,'6b38e7c84eaa4259aeb46cf3bf9db2e5'),(7,'e8a9776d344e40ec9c68f7cc4d323c14','da1feff4d46a458e92b143962a4f9d6f','pic-list-a80abfef2e574a5faa251032337ee714','玲珑美玉--当代玉雕精品无底价拍卖会（三）','2013-05-13 16:11:21',0,'a80abfef2e574a5faa251032337ee714');
/*!40000 ALTER TABLE `user_collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_comment`
--

DROP TABLE IF EXISTS `user_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_comment` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `user_uid` char(32) DEFAULT '',
  `info_title` varchar(450) DEFAULT '' COMMENT '信息标题',
  `info_url` varchar(450) DEFAULT '' COMMENT '地址',
  `comment_date` char(19) DEFAULT '' COMMENT '时间',
  `info_type` int(11) DEFAULT '0' COMMENT '类型',
  `note` varchar(4000) DEFAULT '' COMMENT '内容',
  `info_uid` char(32) DEFAULT '',
  PRIMARY KEY (`zid`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_comment`
--

LOCK TABLES `user_comment` WRITE;
/*!40000 ALTER TABLE `user_comment` DISABLE KEYS */;
INSERT INTO `user_comment` VALUES (16,'8800a25058a94a088b1a9cb046c25ad6','9225f1c1568a47ba9cb2b3c2dfd45d72','第三期玲珑美玉——当代玉雕精品无底价拍卖会','content-content-a8f441234e854a0885fb3a53608a3c9f','2013-05-13 13:26:33',0,'不错哈：）','a8f441234e854a0885fb3a53608a3c9f'),(25,'746ef03b5a9b4b76a963b8c076509bd2','6786149106e4466d96470ccd54d9b7b6','漂亮的玉器','work-work-f297c81d1db64296a497d842c5c91a43','2013-05-19 01:03:33',0,'回复@sss:  dddddddddddddddddd','f297c81d1db64296a497d842c5c91a43'),(28,'71c99bc55b2e42cf8a143e02974798cf','da1feff4d46a458e92b143962a4f9d6f','漂亮的玉器','work-work-f297c81d1db64296a497d842c5c91a43','2013-05-20 12:29:32',0,'按时打发士大夫','f297c81d1db64296a497d842c5c91a43'),(24,'8221ba1441704892aea2c8e891557d0e','6786149106e4466d96470ccd54d9b7b6','漂亮的玉器','work-work-f297c81d1db64296a497d842c5c91a43','2013-05-19 01:03:20',0,'回复@sss:  aaaaaaaaaaa','f297c81d1db64296a497d842c5c91a43'),(22,'3bd8627b1b714730853fbaba3de1ee40','6786149106e4466d96470ccd54d9b7b6','漂亮的玉器','work-work-f297c81d1db64296a497d842c5c91a43','2013-05-18 23:10:25',0,'aaa','f297c81d1db64296a497d842c5c91a43'),(23,'730fbbfb6b1b40c3873d6bfa9f0cb224','6786149106e4466d96470ccd54d9b7b6','漂亮的玉器','work-work-f297c81d1db64296a497d842c5c91a43','2013-05-19 00:27:50',0,'回复@sss  aaaaaaaaaaaaaaaaaaa','f297c81d1db64296a497d842c5c91a43'),(26,'15e0f89e5f724cb48154bda47c5a821d','6786149106e4466d96470ccd54d9b7b6','漂亮的玉器','work-work-f297c81d1db64296a497d842c5c91a43','2013-05-19 01:03:44',0,'回复@sss:  无限回复','f297c81d1db64296a497d842c5c91a43'),(27,'fc818c20bfb748879bdc7175a319e903','6786149106e4466d96470ccd54d9b7b6','漂亮的玉器','work-work-f297c81d1db64296a497d842c5c91a43','2013-05-19 02:06:37',0,'回复@专家一号:  a','f297c81d1db64296a497d842c5c91a43');
/*!40000 ALTER TABLE `user_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `login_name` varchar(200) DEFAULT '' COMMENT '用户名',
  `login_pass` varchar(200) DEFAULT '' COMMENT '密码',
  `user_email` varchar(200) DEFAULT '' COMMENT '邮箱',
  `reg_date` char(19) DEFAULT '' COMMENT '注册日期',
  `cookie_id` char(32) DEFAULT '' COMMENT '客户编号',
  `phone_num` varchar(200) DEFAULT '',
  `real_name` varchar(200) DEFAULT '',
  `userlevel_cid` int(11) DEFAULT '30210001',
  `flag_notice_cid` int(11) DEFAULT '30010002',
  PRIMARY KEY (`zid`),
  UNIQUE KEY `login_name_UNIQUE` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (8,'6786149106e4466d96470ccd54d9b7b6','s','s','s5@ss.ss','2013-05-03 23:51:56','012b2a0a3c4c48afa0181bf7df0fac90','33','专家一号',30210002,30010002),(9,'6371c752ba6d450db3d67650beed0390','srnpr@sina.com','s','srnpr@sina.com','2013-05-11 15:35:42','057c948698344f42af11ae1957054c5e','','srnpr',30210001,30010002),(10,'f51fd9e641424b1582e54d5e391a9b3f','saya1202@126.com','841202','saya1202@126.com','2013-05-13 10:50:08','d866074c51354c9a93d0cd05209d09b8','','saya1202',30210001,30010002),(11,'9225f1c1568a47ba9cb2b3c2dfd45d72','afanok@163.com','boguan','afanok@163.com','2013-05-13 10:57:33','1cb6580b0cd342a3baaf70f4edfd5a1d','13683665376','afanok',30210001,30010002),(12,'da1feff4d46a458e92b143962a4f9d6f','greatjoshuama@gmail.com','000000','greatjoshuama@gmail.com','2013-05-13 16:05:29','261e5102ff16452db2f024658d2cc050','','greatjoshuama',30210001,30010002),(13,'8ebd0d47f0e242bd8f4a4e67d18dd00f','ss@ss.ss','s','ss@ss.ss','2013-05-16 01:00:51','066d084a0893484f9d89572d960bbe53','','ss',30210001,30010002);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `y_area`
--

DROP TABLE IF EXISTS `y_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `y_area` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `code` char(6) DEFAULT '' COMMENT '编码',
  `name` varchar(45) DEFAULT '' COMMENT '名称',
  `pcode` char(6) DEFAULT '' COMMENT '父编码',
  `level` int(11) DEFAULT '0' COMMENT '级别',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `y_area`
--

LOCK TABLES `y_area` WRITE;
/*!40000 ALTER TABLE `y_area` DISABLE KEYS */;
INSERT INTO `y_area` VALUES (1,'','110000','北京市','',1),(2,'','110100','市辖区','110000',2),(3,'','110101','东城区','110100',3),(4,'','110102','西城区','110100',3),(5,'','110105','朝阳区','110100',3),(6,'','110106','丰台区','110100',3),(7,'','110107','石景山区','110100',3),(8,'','110108','海淀区','110100',3),(9,'','110109','门头沟区','110100',3),(10,'','110111','房山区','110100',3),(11,'','110112','通州区','110100',3),(12,'','110113','顺义区','110100',3),(13,'','110114','昌平区','110100',3),(14,'','110115','大兴区','110100',3),(15,'','110116','怀柔区','110100',3),(16,'','110117','平谷区','110100',3),(17,'','110200','县','110000',2),(18,'','110228','密云县','110200',3),(19,'','110229','延庆县','110200',0);
/*!40000 ALTER TABLE `y_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `y_img`
--

DROP TABLE IF EXISTS `y_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `y_img` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `info_uid` char(32) DEFAULT '',
  `file_url` varchar(450) DEFAULT '' COMMENT '图片地址',
  `file_order` varchar(45) DEFAULT '' COMMENT '图片顺序',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `y_img`
--

LOCK TABLES `y_img` WRITE;
/*!40000 ALTER TABLE `y_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `y_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `y_info`
--

DROP TABLE IF EXISTS `y_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `y_info` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `name` varchar(450) DEFAULT '' COMMENT '养老院名称',
  `domain` varchar(45) DEFAULT '' COMMENT '二级域名',
  `area` varchar(45) DEFAULT '' COMMENT '地区',
  `money_cid` varchar(45) DEFAULT '' COMMENT '价格范围',
  `peopletype_cid` varchar(45) DEFAULT '' COMMENT '老人的情况\n',
  `score` varchar(45) DEFAULT '' COMMENT '评分',
  `icon_cids` varchar(450) DEFAULT '' COMMENT '小图标',
  `h_info_name` varchar(45) DEFAULT '' COMMENT '机构名称',
  `h_info_link` varchar(45) DEFAULT '' COMMENT '机构法人姓名',
  `h_info_address` varchar(45) DEFAULT '' COMMENT '机构地址',
  `q_property_cid` varchar(45) DEFAULT '' COMMENT '机构性质',
  `q_bednumber` varchar(45) DEFAULT '' COMMENT '床位数量\n',
  `q_money_room_one` varchar(45) DEFAULT '' COMMENT '单人间（元/月）',
  `q_money_room_two` varchar(45) DEFAULT '' COMMENT '双人间（元/月）',
  `q_money_room_three` varchar(45) DEFAULT '' COMMENT '三人间（元/月）',
  `q_money_room_more` varchar(45) DEFAULT '' COMMENT '多人间（元/月）',
  `q_money_service_include` varchar(450) DEFAULT '' COMMENT '服务费用含：',
  `q_money_service_one` varchar(45) DEFAULT '' COMMENT '一对一护理费（元/天）',
  `q_money_service_two` varchar(45) DEFAULT '' COMMENT '一对二护理费（元/天）',
  `q_money_service_more` varchar(45) DEFAULT '' COMMENT '一对多护理费（元/天）',
  `q_eat_money_month` varchar(45) DEFAULT '' COMMENT '伙食费（元/月）',
  `q_eat_money_day` varchar(45) DEFAULT '' COMMENT '提供每日饮食标准（元/日）',
  `q_eat_service_flag` varchar(45) DEFAULT '' COMMENT '是否提供点餐服务',
  `q_eat_special_cids` varchar(100) DEFAULT '' COMMENT '特殊饮食',
  `q_room_toilet_cid` varchar(45) DEFAULT '' COMMENT '有无卫生间',
  `q_room_bath_cid` varchar(45) DEFAULT '' COMMENT '有无洗浴间\n\n',
  `q_room_television_cid` varchar(45) DEFAULT '' COMMENT '有无电视机\n',
  `q_room_telephone_cid` varchar(45) DEFAULT '' COMMENT '有无电话',
  `q_play_room_cids` varchar(450) DEFAULT '' COMMENT '娱乐场所和配套设施',
  `q_play_service_name` varchar(45) DEFAULT '' COMMENT '定期娱乐活动名称',
  `q_doc_room_cids` varchar(450) DEFAULT '' COMMENT '医疗场所',
  `q_doc_people_a` varchar(45) DEFAULT '' COMMENT ' 医师（人）',
  `q_doc_people_b` varchar(45) NOT NULL DEFAULT '' COMMENT '护士（人）',
  `q_doc_people_c` varchar(45) DEFAULT '' COMMENT '康复师（人）',
  `q_doc_people_d` varchar(45) DEFAULT '' COMMENT '主治医师（人）',
  `q_doc_people_e` varchar(45) DEFAULT '' COMMENT ' 护师（人）',
  `q_doc_people_f` varchar(45) DEFAULT '' COMMENT '副主任医师（人）',
  `q_doc_people_g` varchar(45) DEFAULT '' COMMENT '副主任护师（人）\n',
  `q_doc_people_h` varchar(45) DEFAULT '' COMMENT '主任医师（人）',
  `q_doc_people_i` varchar(45) DEFAULT '' COMMENT '主任护师（人）',
  `q_doc_person_a` varchar(45) DEFAULT '' COMMENT '兼职医师（人）',
  `q_doc_person_b` varchar(45) DEFAULT '' COMMENT '兼职护士（人）',
  `q_doc_person_c` varchar(45) DEFAULT '' COMMENT '兼职康复师（人）',
  `q_doc_person_d` varchar(45) DEFAULT '' COMMENT '兼职主治医师（人）',
  `q_doc_person_e` varchar(45) DEFAULT '' COMMENT '兼职护师（人）',
  `q_doc_person_f` varchar(45) DEFAULT '' COMMENT '兼职副主任医师（人）',
  `q_doc_person_g` varchar(45) DEFAULT '' COMMENT '兼职副主任护师（人）',
  `q_doc_person_h` varchar(45) DEFAULT '' COMMENT '兼职主任医师（人）',
  `q_doc_person_i` varchar(45) DEFAULT '' COMMENT '兼职主任护师（人）',
  `q_doc_hospital_near` varchar(45) DEFAULT '' COMMENT '最近社区医院',
  `q_doc_hospital_range` varchar(45) DEFAULT '',
  `q_doc_big_near` varchar(45) DEFAULT '',
  `q_doc_big_range` varchar(45) DEFAULT '',
  `q_doc_quick_names` varchar(45) DEFAULT '' COMMENT '快速就诊协议医疗机构名称',
  `q_doc_room_flag` varchar(45) DEFAULT '' COMMENT '有无康复场地',
  `q_doc_play_things` varchar(450) DEFAULT '' COMMENT '康复器材有',
  `q_doc_build_flag` varchar(45) DEFAULT '' COMMENT '有无健身场所',
  `q_doc_build_things` varchar(450) DEFAULT '' COMMENT '健身器械有',
  `q_goto_health_flag` varchar(45) DEFAULT '' COMMENT '是否需要健康证明',
  `q_goto_money_into` varchar(45) DEFAULT '' COMMENT '入住押金（元）\n',
  `q_goto_money_keep` varchar(45) DEFAULT '' COMMENT '医疗备用金（元）\n',
  `q_service_cids` varchar(450) DEFAULT '' COMMENT '提供的特色服务',
  `field_coupon` varchar(2000) DEFAULT '' COMMENT '优惠信息',
  `field_welcome` longtext COMMENT '欢迎词\n',
  `field_description` longtext COMMENT '养老院简介',
  `field_live` longtext COMMENT '入住须知\n',
  `field_service` longtext COMMENT '服务指南',
  `link_address` varchar(450) DEFAULT '' COMMENT '地址',
  `link_zipcode` varchar(45) DEFAULT '' COMMENT '邮编',
  `link_telephone` varchar(45) DEFAULT '' COMMENT '固定电话',
  `link_people_one` varchar(45) DEFAULT '' COMMENT '联系人1',
  `link_phone_one` varchar(45) DEFAULT '' COMMENT '联系人1手机',
  `link_people_two` varchar(45) DEFAULT '' COMMENT '联系人2',
  `link_phone_two` varchar(45) DEFAULT '' COMMENT '联系人2手机',
  `link_travel` varchar(450) DEFAULT '' COMMENT '交通',
  `link_email` varchar(45) DEFAULT '' COMMENT '电子邮箱',
  `link_qqno` varchar(45) DEFAULT '' COMMENT 'QQ号码',
  `field_notice` varchar(450) DEFAULT '' COMMENT '入住其他注意事项',
  `field_eat` longtext COMMENT '一 周食谱',
  `adddate` varchar(45) DEFAULT '' COMMENT '添加时间',
  `main_img` varchar(450) DEFAULT '' COMMENT '主图(400x300)',
  PRIMARY KEY (`zid`,`q_doc_people_b`),
  UNIQUE KEY `domain_UNIQUE` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `y_info`
--

LOCK TABLES `y_info` WRITE;
/*!40000 ALTER TABLE `y_info` DISABLE KEYS */;
INSERT INTO `y_info` VALUES (1,'1744c94d9e9e84eca97a55fd81f08bdf','1','1','110000','32510002,32510003,32510004','32520002,32520003,32520004','','32590001,32590002','','','','32530001','','','','','','','','','','','','30010002','32550002,32550003,32550004','32540001','32540001','32540001','32540001','32560003,32560004','','','','','','','','','','','','','','','','','','','','','','','','','','30010001','','','','30010001','','','32580003,32580004','','','','','','','','','','','','','','','','','','2013-06-12',''),(2,'2744c94d9e9e84eca97a55fd81f08bdf','2','2','110000','32510002,32510003,32510004','32520002,32520003,32520004','','32590001,32590002','','','','32530001','','','','','','','','','','','','30010002','32550002,32550003,32550004','32540001','32540001','32540001','32540001','32560003,32560004','','','','','','','','','','','','','','','','','','','','','','','','','','30010001','','','','30010001','','','32580003,32580004','','','','','','','','','','','','','','','','','','2013-06-12',''),(3,'344c94d9e9e84eca97a55fd81f08bdf3','3','3','110000','32510002,32510003,32510004','32520002,32520003,32520004','','32590001,32590002','','','','32530001','','','','','','','','','','','','30010002','32550002,32550003,32550004','32540001','32540001','32540001','32540001','32560003,32560004','','','','','','','','','','','','','','','','','','','','','','','','','','30010001','','','','30010001','','','32580003,32580004','','','','','','','','','','','','','','','','','','2013-06-12',''),(4,'444c94d9e9e84eca97a55fd81f08bdf3','4','4','110000','32510002,32510003,32510004','32520002,32520003,32520004','','32590001,32590002','','','','32530001','','','','','','','','','','','','30010002','32550002,32550003,32550004','32540001','32540001','32540001','32540001','32560003,32560004','','','','','','','','','','','','','','','','','','','','','','','','','','30010001','','','','30010001','','','32580003,32580004','','','','','','','','','','','','','','','','','','2013-06-12','');
/*!40000 ALTER TABLE `y_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `y_menu`
--

DROP TABLE IF EXISTS `y_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `y_menu` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `code` varchar(450) DEFAULT '' COMMENT '编码',
  `name` varchar(450) DEFAULT '' COMMENT '名称',
  `link_url` varchar(450) DEFAULT '' COMMENT '链接',
  `level` int(11) DEFAULT '0' COMMENT '级别',
  `pcode` varchar(450) DEFAULT '' COMMENT '父编号',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `y_menu`
--

LOCK TABLES `y_menu` WRITE;
/*!40000 ALTER TABLE `y_menu` DISABLE KEYS */;
INSERT INTO `y_menu` VALUES (1,'','413001','银杏林后台菜单','',1,'413'),(2,'','413001001','功能列表','',2,'413001'),(3,'','413001002','系统设置','',2,'413001'),(4,'','413001001001','养老院维护','chart-v_y_info',3,'413001001'),(5,'','413001001002','广告设置','',3,'413001001');
/*!40000 ALTER TABLE `y_menu` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `you_class`
--

LOCK TABLES `you_class` WRITE;
/*!40000 ALTER TABLE `you_class` DISABLE KEYS */;
INSERT INTO `you_class` VALUES (1,'09e561b8b47f4d45aa3309145231b54b','3009','info_class','1','1',1,''),(2,'','3013','系统菜单分组','','',0,''),(3,'','30130001','广告设置','','',0,'3013'),(5,'','30130002','内容管理','','',100,'3013'),(6,'','3039','内容分类','','',1,''),(7,'','30390001','博观资讯','','',0,'3039'),(8,'','30390002','博观公告','','',0,'3039'),(9,'','3031','拍卖会类型','','',0,''),(10,'','30310001','预展','','',0,'3031'),(11,'','30310002','成交','','',0,'3031'),(12,'','3032','名家类型','','',0,''),(13,'','30320001','中国玉石雕刻名家','','',0,'3032'),(14,'','30320002','中国玉石雕刻大师','','',0,'3032'),(15,'','30320003','中国工艺美术大师','','',0,'3032'),(16,'','30320004','玉界名人堂','','',0,'3032'),(17,'','3033','静态内容','','',0,''),(18,'','30330001','网站底部导航','','',0,'3033'),(19,'','30330002','俱乐部相关','','',0,'3033'),(20,'','3034','课程类型','','',0,'3034'),(21,'','30340001','PPT课程','','',0,'3034'),(22,'','30340002','优酷视频课程','','',0,'3034'),(23,'','30330003','博观书房广告','','',0,'3033'),(24,'','3021','会员类型','','',0,''),(25,'','30210001','普通会员','','',0,'3021'),(26,'','30210002','专家会员','','',0,'3021'),(27,'','3001','是否','','',0,''),(28,'','30010001','是','','',0,'3001'),(29,'','30010002','否','','',0,'3001'),(30,'','3035','图片位置','','',0,''),(31,'','30350001','通用底部','','',0,'3035'),(32,'','30350002','俱乐部底部','','',0,'3035'),(33,'','3251','价格范围','','',0,''),(34,'','32510001','2000元以下','','',0,'3251'),(35,'','32510002','2000-3000','','',0,'3251'),(36,'','32510003','3000-4000','','',0,'3251'),(40,'','32510004','4000元以上','','',0,'3251'),(41,'','3252','老人的情况','','',0,''),(42,'','32520001','自理老人','','',0,'3252'),(43,'','32520002',' 半护理老人','','',0,'3252'),(44,'','32520003','全护理老人','','',0,'3252'),(45,'','32520004','特护','','',0,'3252'),(46,'','32520005',' 其他','','',0,'3252'),(53,'','3253','机构性质','','',0,''),(54,'','32530001','民办','','',0,'3253'),(55,'','32530002','公立','','',0,'3253'),(56,'','3254','拥有情况','','',0,''),(57,'','32540001','无','','',0,'3254'),(58,'','32540002','独立','','',0,'3254'),(59,'','32540003','公用','','',0,'3254'),(60,'','3255','特殊饮食','','',0,''),(61,'','32550001','流食','','',0,'3255'),(62,'','32550002','糖尿病饮食','','',0,'3255'),(63,'','32550003','低盐饮食','','',0,'3255'),(64,'','32550004','低脂饮食','','',0,'3255'),(65,'','3256','娱乐场所和配套设施','','',0,''),(66,'','32560001','棋牌室','','',0,'3256'),(67,'','32560002','KTV','','',0,'3256'),(68,'','32560003','球场','','',0,'3256'),(69,'','32560004','阅览室','','',0,'3256'),(70,'','32560005','健身房','','',0,'3256'),(71,'','32560006','茶室','','',0,'3256'),(72,'','32560007','超市','','',0,'3256'),(73,'','32560008','游泳池','','',0,'3256'),(74,'','32560009','其他','','',0,'3256'),(75,'','3257','医疗场所','','',0,''),(76,'','32570001','保健室','','',0,'3257'),(77,'','32570002','诊疗室 ','','',0,'3257'),(78,'','32570003','处置室','','',0,'3257'),(79,'','32570004','输液室','','',0,'3257'),(80,'','32570005','其他 ','','',0,'3257'),(81,'','3258','特色服务','','',0,''),(82,'','32580001','上门服务：免费接收老人入住回家','','',0,'3258'),(83,'','32580002','洗衣服务：免费为入住老人换洗衣服、被褥。','','',0,'3258'),(84,'','32580003','免费理发、剃须。','','',0,'3258'),(85,'','32580004','免费提供生活必需品','','',0,'3258'),(86,'','32580005','定期为老人常规体检','','',0,''),(87,'','3259','保障','','',0,''),(88,'','32590001','证','','',0,'3259'),(89,'','32590002','信','','',0,'3259'),(90,'','32590003','诚','','',0,'3259'),(91,'','32590004','惠','','',0,'3259'),(92,'','32590005','试','','',0,'3259'),(93,'','32590006','星','','',0,'3259'),(97,'','3260','排序方式','','',0,''),(98,'','32600001','星级','','',0,'3260'),(99,'','32600002','评论','','',0,'3260');
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
-- Table structure for table `you_user`
--

DROP TABLE IF EXISTS `you_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `you_user` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `user_name` varchar(45) DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(45) DEFAULT '' COMMENT '密码',
  `real_name` varchar(45) DEFAULT '' COMMENT '真实姓名',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `you_user`
--

LOCK TABLES `you_user` WRITE;
/*!40000 ALTER TABLE `you_user` DISABLE KEYS */;
INSERT INTO `you_user` VALUES (1,'1','s','s','s');
/*!40000 ALTER TABLE `you_user` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3163 DEFAULT CHARSET=utf8 COMMENT='数据列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zdata_column`
--

LOCK TABLES `zdata_column` WRITE;
/*!40000 ALTER TABLE `zdata_column` DISABLE KEYS */;
INSERT INTO `zdata_column` VALUES (2789,'6ddbbab5b16311e2bb7900241d8adc62','zdata','info_adv','zid',400001002,404103109,0,0,'',1),(2790,'6ddd44bdb16311e2bb7900241d8adc62','zdata','info_adv','uid',400001001,404103103,32,0,'',2),(2791,'6ddd47d0b16311e2bb7900241d8adc62','zdata','info_adv','title',400001001,404103122,100,0,'标题',3),(2792,'6ddd49e0b16311e2bb7900241d8adc62','zdata','info_adv','file_url',400001001,404103122,200,0,'文件地址(1100*330)',4),(2793,'6ddd4c7cb16311e2bb7900241d8adc62','zdata','info_auction','zid',400001002,404103109,0,0,'',1),(2794,'6ddd4e75b16311e2bb7900241d8adc62','zdata','info_auction','uid',400001001,404103103,32,0,'',2),(2795,'6ddd5057b16311e2bb7900241d8adc62','zdata','info_auction','name',400001001,404103122,200,0,'拍卖会名称',3),(2796,'6ddd529ab16311e2bb7900241d8adc62','zdata','info_auction','time',400001001,404103103,19,0,'拍卖会时间',4),(2797,'6ddd54a5b16311e2bb7900241d8adc62','zdata','info_auction','auction_type_cid',400001001,404103109,0,0,'拍卖会类型',5),(2798,'6ddd56a3b16311e2bb7900241d8adc62','zdata','info_auction','file_url',400001001,404103122,200,0,'拍卖会图片',6),(2799,'6ddd5828b16311e2bb7900241d8adc62','zdata','info_auction','special_num',400001001,404103122,45,0,'专场数量',7),(2800,'6ddd5a2fb16311e2bb7900241d8adc62','zdata','info_auction','success_price',400001001,404103122,45,0,'成交金额',8),(2801,'6ddd5c44b16311e2bb7900241d8adc62','zdata','info_class','zid',400001002,404103109,0,0,'',1),(2802,'6ddd5e39b16311e2bb7900241d8adc62','zdata','info_class','uid',400001001,404103103,32,0,'',2),(2803,'6ddd6060b16311e2bb7900241d8adc62','zdata','info_class','code',400001001,404103122,200,0,'编号',3),(2804,'6ddd6287b16311e2bb7900241d8adc62','zdata','info_class','name',400001001,404103122,200,0,'名称',4),(2805,'6ddd646eb16311e2bb7900241d8adc62','zdata','info_class','note',400001001,404103122,500,0,'描述',5),(2806,'6ddd6650b16311e2bb7900241d8adc62','zdata','info_class','parent_code',400001001,404103122,200,0,'父编码',6),(2807,'6ddd683bb16311e2bb7900241d8adc62','zdata','info_class','orderid',400001001,404103109,0,0,'排序',7),(2808,'6ddd6a2bb16311e2bb7900241d8adc62','zdata','info_class','link',400001001,404103122,200,0,'链接地址',8),(2809,'6ddd6c1ab16311e2bb7900241d8adc62','zdata','info_good','zid',400001002,404103109,0,0,'',1),(2810,'6ddd6deab16311e2bb7900241d8adc62','zdata','info_good','uid',400001001,404103103,32,0,'',2),(2811,'6ddd6fccb16311e2bb7900241d8adc62','zdata','info_good','name',400001001,404103122,200,0,'名称',3),(2812,'6ddd71a9b16311e2bb7900241d8adc62','zdata','info_good','code',400001001,404103122,200,0,'图录号',4),(2813,'6ddd73a2b16311e2bb7900241d8adc62','zdata','info_good','auction_uid',400001001,404103103,32,0,'所属拍卖会',5),(2814,'6ddd759bb16311e2bb7900241d8adc62','zdata','info_good','special_uid',400001001,404103103,32,0,'所属专场',6),(2815,'6ddd777db16311e2bb7900241d8adc62','zdata','info_good','texture',400001001,404103122,200,0,'质地',7),(2816,'6ddd7968b16311e2bb7900241d8adc62','zdata','info_good','size',400001001,404103122,200,0,'尺寸',8),(2817,'6ddd7b53b16311e2bb7900241d8adc62','zdata','info_good','assess_price',400001001,404103122,45,0,'估价',9),(2818,'6ddd8691b16311e2bb7900241d8adc62','zdata','info_good','success_price',400001001,404103122,45,0,'成交价',10),(2819,'6ddd8c2db16311e2bb7900241d8adc62','zdata','info_good','note',400001001,404103122,2000,0,'拍品介绍',11),(2820,'6ddd8f33b16311e2bb7900241d8adc62','zdata','info_good','file_url',400001001,404103122,200,0,'主图片',12),(2821,'6ddd9358b16311e2bb7900241d8adc62','zdata','info_news','zid',400001002,404103109,0,0,'',1),(2822,'6ddd95eeb16311e2bb7900241d8adc62','zdata','info_news','uid',400001001,404103103,32,0,'',2),(2823,'6ddd97f5b16311e2bb7900241d8adc62','zdata','info_news','title',400001001,404103122,100,0,'标题',3),(2824,'6ddd9a14b16311e2bb7900241d8adc62','zdata','info_news','note',400001001,404103122,500,0,'导语',4),(2825,'6ddd9bfab16311e2bb7900241d8adc62','zdata','info_news','file_url',400001001,404103122,200,0,'文件地址',5),(2826,'6ddd9de1b16311e2bb7900241d8adc62','zdata','info_news','content',400001001,404103112,2147483647,0,'内容',6),(2827,'6ddda07cb16311e2bb7900241d8adc62','zdata','info_news','orderid',400001001,404103109,0,0,'排序',7),(2828,'6ddda275b16311e2bb7900241d8adc62','zdata','info_news','create_time',400001001,404103103,19,0,'时间',8),(2829,'6ddda47cb16311e2bb7900241d8adc62','zdata','info_notice','zid',400001002,404103109,0,0,'',1),(2830,'6ddda667b16311e2bb7900241d8adc62','zdata','info_notice','uid',400001001,404103103,32,0,'',2),(2831,'6ddda849b16311e2bb7900241d8adc62','zdata','info_notice','title',400001001,404103122,100,0,'标题',3),(2832,'6dddaa3db16311e2bb7900241d8adc62','zdata','info_notice','note',400001001,404103122,500,0,'导语',4),(2833,'6dddacaab16311e2bb7900241d8adc62','zdata','info_notice','content',400001001,404103112,2147483647,0,'内容',5),(2834,'6dddaea3b16311e2bb7900241d8adc62','zdata','info_notice','orderid',400001001,404103109,0,0,'排序',6),(2835,'6dddb0a6b16311e2bb7900241d8adc62','zdata','info_notice','create_time',400001001,404103103,19,0,'时间',7),(2836,'6dddb28cb16311e2bb7900241d8adc62','zdata','info_special','zid',400001002,404103109,0,0,'',1),(2837,'6dddb48eb16311e2bb7900241d8adc62','zdata','info_special','uid',400001001,404103103,32,0,'',2),(2838,'6dddb667b16311e2bb7900241d8adc62','zdata','info_special','auction_uid',400001001,404103103,32,0,'所属拍卖会',3),(2839,'6dddb87cb16311e2bb7900241d8adc62','zdata','info_special','name',400001001,404103122,200,0,'专场名称',4),(2840,'6dddba91b16311e2bb7900241d8adc62','zdata','info_special','success_price',400001001,404103122,45,0,'成交金额',5),(2841,'6dddbc8ab16311e2bb7900241d8adc62','zdata','info_special','time',400001001,404103103,19,0,'专场时间',6),(2842,'6dddbefbb16311e2bb7900241d8adc62','zdata','test_table','zid',400001002,404103109,0,0,'',1),(2843,'6dddc0d9b16311e2bb7900241d8adc62','zdata','test_table','uid',400001001,404103103,32,0,'',2),(2844,'6dddc2a3b16311e2bb7900241d8adc62','zdata','test_table','inputtext',400001001,404103122,4000,0,'输入字段',3),(2845,'6dddd11eb16311e2bb7900241d8adc62','zdata','test_table','selecttext',400001001,404103122,4000,0,'选择字段',4),(2846,'6dddd358b16311e2bb7900241d8adc62','zdata','test_table','url_file',400001001,404103122,4000,0,'文件上传',5),(2847,'6dddd548b16311e2bb7900241d8adc62','zdata','test_table','url_img',400001001,404103122,4000,0,'',6),(2848,'6dddd753b16311e2bb7900241d8adc62','zdata','test_table','textarea',400001001,404103122,4000,0,'',7),(2849,'6dddd943b16311e2bb7900241d8adc62','zdata','test_table','checkbox',400001001,404103122,45,0,'选择框',8),(2850,'6ddddb1cb16311e2bb7900241d8adc62','zdata','you_class','zid',400001002,404103109,0,0,'',1),(2851,'6ddddd10b16311e2bb7900241d8adc62','zdata','you_class','uid',400001001,404103103,32,0,'',2),(2852,'6ddddefbb16311e2bb7900241d8adc62','zdata','you_class','code',400001001,404103122,200,0,'编号',3),(2853,'6ddde102b16311e2bb7900241d8adc62','zdata','you_class','name',400001001,404103122,200,0,'名称',4),(2854,'6ddde2e4b16311e2bb7900241d8adc62','zdata','you_class','link',400001001,404103122,200,0,'链接地址',5),(2855,'6ddde4c1b16311e2bb7900241d8adc62','zdata','you_class','note',400001001,404103122,500,0,'描述',6),(2856,'6ddde6c4b16311e2bb7900241d8adc62','zdata','you_class','orderid',400001001,404103109,0,0,'排序',7),(2857,'6ddde8b4b16311e2bb7900241d8adc62','zdata','you_class','parent_code',400001001,404103122,200,0,'父编码',8),(2858,'6dddeaadb16311e2bb7900241d8adc62','zdata','you_menu','zid',400001002,404103109,0,0,'',1),(2859,'6dddec73b16311e2bb7900241d8adc62','zdata','you_menu','uid',400001001,404103103,32,0,'',2),(2860,'6dddee3db16311e2bb7900241d8adc62','zdata','you_menu','group_cid',400001001,404103109,0,0,'',3),(2861,'6dddf024b16311e2bb7900241d8adc62','zdata','you_menu','name',400001001,404103122,45,0,'名称',4),(2862,'6dddf1e5b16311e2bb7900241d8adc62','zdata','you_menu','url',400001001,404103122,500,0,'链接',5),(2863,'6dddf3b9b16311e2bb7900241d8adc62','zdata','you_menu','orderid',400001001,404103109,0,0,'排序',6),(2864,'6dddf5e5b16311e2bb7900241d8adc62','zdata','zdata_column','zid',400001002,404103109,0,0,'',1),(2865,'6dddf7deb16311e2bb7900241d8adc62','zdata','zdata_column','uid',400001002,404103103,32,0,'',2),(2866,'6dddfa0ab16311e2bb7900241d8adc62','zdata','zdata_column','server_name',400001002,404103122,45,0,'服务器名称',3),(2867,'6dddfbf6b16311e2bb7900241d8adc62','zdata','zdata_column','table_name',400001002,404103122,45,0,'表名',4),(2868,'6dddfdf3b16311e2bb7900241d8adc62','zdata','zdata_column','column_name',400001002,404103122,45,0,'列名',5),(2869,'6dddfff1b16311e2bb7900241d8adc62','zdata','zdata_column','did_null_able',400001001,404103109,0,0,'是否为空',6),(2870,'6dde01dcb16311e2bb7900241d8adc62','zdata','zdata_column','did_column_type',400001001,404103109,0,0,'列类型',7),(2871,'6dde03e3b16311e2bb7900241d8adc62','zdata','zdata_column','length_max',400001001,404103109,0,0,'最大长度',8),(2872,'6dde05cab16311e2bb7900241d8adc62','zdata','zdata_column','length_scale',400001001,404103109,0,0,'第二长度',9),(2873,'6dde07ccb16311e2bb7900241d8adc62','zdata','zdata_column','note',400001001,404103122,100,0,'名称',10),(2874,'6dde09aeb16311e2bb7900241d8adc62','zdata','zdata_column','orderid',400001001,404103109,0,0,'排序',11),(2875,'6dde0b9eb16311e2bb7900241d8adc62','zdata','zdata_server','zid',400001002,404103109,0,0,'',1),(2876,'6dde0d6db16311e2bb7900241d8adc62','zdata','zdata_server','uid',400001002,404103103,32,0,'',2),(2877,'6dde0f4ab16311e2bb7900241d8adc62','zdata','zdata_server','name',400001002,404103122,100,0,'名称',3),(2878,'6dde111ab16311e2bb7900241d8adc62','zdata','zdata_server','jdbc_class',400001002,404103122,100,0,'类名',4),(2879,'6dde213ab16311e2bb7900241d8adc62','zdata','zdata_server','jdbc_url',400001002,404103122,100,0,'地址',5),(2880,'6dde2361b16311e2bb7900241d8adc62','zdata','zdata_server','jdbc_user',400001002,404103122,100,0,'用户名',6),(2881,'6dde255ab16311e2bb7900241d8adc62','zdata','zdata_server','jdbc_password',400001002,404103122,100,0,'密码',7),(2882,'6dde276fb16311e2bb7900241d8adc62','zdata','zdata_server','note',400001002,404103122,1000,0,'描述',8),(2883,'6dde295fb16311e2bb7900241d8adc62','zdata','zdata_source','zid',400001002,404103109,0,0,'',1),(2884,'6dde2b33b16311e2bb7900241d8adc62','zdata','zdata_source','uid',400001002,404103103,32,0,'',2),(2885,'6dde2d10b16311e2bb7900241d8adc62','zdata','zdata_source','did_source_type',400001001,404103109,0,0,'',3),(2886,'6dde2f4fb16311e2bb7900241d8adc62','zdata','zdata_source','source_code',400001001,404103122,45,0,'',4),(2887,'6dde313ab16311e2bb7900241d8adc62','zdata','zdata_source','source_name',400001001,404103122,45,0,'',5),(2888,'6dde3321b16311e2bb7900241d8adc62','zdata','zdata_source','fields',400001001,404103122,500,0,'',6),(2889,'6dde3523b16311e2bb7900241d8adc62','zdata','zdata_source','from',400001001,404103122,500,0,'',7),(2890,'6dde371cb16311e2bb7900241d8adc62','zdata','zdata_source','where',400001001,404103122,500,0,'',8),(2891,'6dde3915b16311e2bb7900241d8adc62','zdata','zdata_table','zid',400001002,404103109,0,0,'',1),(2892,'6dde3af7b16311e2bb7900241d8adc62','zdata','zdata_table','uid',400001002,404103103,32,0,'',2),(2893,'6dde3f9eb16311e2bb7900241d8adc62','zdata','zdata_table','code',400001001,404103122,45,0,'编码',3),(2894,'6dde419bb16311e2bb7900241d8adc62','zdata','zdata_table','name',400001001,404103122,100,0,'名称',4),(2895,'6dde43a2b16311e2bb7900241d8adc62','zdata','zdata_table','note',400001001,404103122,100,0,'描述',5),(2896,'6dde45fdb16311e2bb7900241d8adc62','zdata','zsrnpr_define','zid',400001002,404103109,0,0,'',1),(2897,'6dde47dfb16311e2bb7900241d8adc62','zdata','zsrnpr_define','uid',400001002,404103103,32,0,'',2),(2898,'6dde49ceb16311e2bb7900241d8adc62','zdata','zsrnpr_define','code',400001002,404103122,100,0,'编码',3),(2899,'6dde4bdab16311e2bb7900241d8adc62','zdata','zsrnpr_define','name',400001001,404103122,100,0,'名称',4),(2900,'6dde4dd3b16311e2bb7900241d8adc62','zdata','zsrnpr_define','value',400001001,404103122,100,0,'值',5),(2901,'6dde4fd5b16311e2bb7900241d8adc62','zdata','zsrnpr_define','note',400001001,404103122,100,0,'中文',6),(2902,'6dde51c0b16311e2bb7900241d8adc62','zdata','zsrnpr_define','level',400001001,404103109,0,0,'级别',7),(2903,'6dde53dfb16311e2bb7900241d8adc62','zdata','zweb_fields','zid',400001002,404103109,0,0,'',1),(2904,'6dde55dcb16311e2bb7900241d8adc62','zdata','zweb_fields','uid',400001001,404103103,32,0,'',2),(2905,'6dde57d1b16311e2bb7900241d8adc62','zdata','zweb_fields','view_code',400001001,404103122,100,0,'视图编码',3),(2906,'6dde59c5b16311e2bb7900241d8adc62','zdata','zweb_fields','column_name',400001001,404103122,100,0,'数据列名称',4),(2907,'6dde5c08b16311e2bb7900241d8adc62','zdata','zweb_fields','field_name',400001001,404103122,100,0,'字段名称',5),(2908,'6dde5e1db16311e2bb7900241d8adc62','zdata','zweb_fields','did_field_type',400001001,404103109,0,0,'字段类型',6),(2909,'6dde6029b16311e2bb7900241d8adc62','zdata','zweb_fields','source_code',400001001,404103122,100,0,'数据源编码',7),(2910,'6dde6222b16311e2bb7900241d8adc62','zdata','zweb_fields','source_parameter',400001001,404103122,500,0,'数据源参数',8),(2911,'6dde6432b16311e2bb7900241d8adc62','zdata','zweb_fields','level_grid',400001001,404103109,0,0,'列表标记',9),(2912,'6dde6639b16311e2bb7900241d8adc62','zdata','zweb_fields','level_add',400001001,404103109,0,0,'插入标记',10),(2913,'6dde6832b16311e2bb7900241d8adc62','zdata','zweb_fields','level_edit',400001001,404103109,0,0,'修改标记',11),(2914,'6dde6a50b16311e2bb7900241d8adc62','zdata','zweb_fields','level_book',400001001,404103109,0,0,'展示标记',12),(2915,'6dde7d3ab16311e2bb7900241d8adc62','zdata','zweb_fields','level_inquire',400001001,404103109,0,0,'查询条件',13),(2916,'6dde7f58b16311e2bb7900241d8adc62','zdata','zweb_options','zid',400001002,404103109,0,0,'',1),(2917,'6dde8148b16311e2bb7900241d8adc62','zdata','zweb_options','uid',400001001,404103103,32,0,'',2),(2918,'6dde832ab16311e2bb7900241d8adc62','zdata','zweb_options','view_code',400001001,404103122,100,0,'视图编号',3),(2919,'6dde8523b16311e2bb7900241d8adc62','zdata','zweb_options','name',400001001,404103122,100,0,'名称',4),(2920,'6dde8713b16311e2bb7900241d8adc62','zdata','zweb_options','did_page_type',400001001,404103109,0,0,'',5),(2921,'6dde893ab16311e2bb7900241d8adc62','zdata','zweb_options','did_option_type',400001001,404103109,0,0,'',6),(2922,'6dde8b58b16311e2bb7900241d8adc62','zdata','zweb_options','params',400001001,404103122,100,0,'操作参数',7),(2923,'6dde8d3fb16311e2bb7900241d8adc62','zdata','zweb_source','zid',400001002,404103109,0,0,'',1),(2924,'6dde8f46b16311e2bb7900241d8adc62','zdata','zweb_source','uid',400001002,404103103,32,0,'',2),(2925,'6dde916db16311e2bb7900241d8adc62','zdata','zweb_source','did_source_type',400001001,404103109,0,0,'数据源类型',3),(2926,'6dde9366b16311e2bb7900241d8adc62','zdata','zweb_source','source_code',400001001,404103122,45,0,'数据源编号',4),(2927,'6dde954db16311e2bb7900241d8adc62','zdata','zweb_source','source_name',400001001,404103122,45,0,'数据源名称',5),(2928,'6dde979eb16311e2bb7900241d8adc62','zdata','zweb_source','field_text',400001001,404103122,500,0,'展示字段',6),(2929,'6dde99b3b16311e2bb7900241d8adc62','zdata','zweb_source','field_value',400001001,404103122,500,0,'实际值字段',7),(2930,'6dde9bc3b16311e2bb7900241d8adc62','zdata','zweb_source','from',400001001,404103122,500,0,'来自',8),(2931,'6dde9daeb16311e2bb7900241d8adc62','zdata','zweb_source','where_book',400001001,404103122,500,0,'展示时',9),(2932,'6dde9fb5b16311e2bb7900241d8adc62','zdata','zweb_source','where_edit',400001001,404103122,500,0,'修改时',10),(2933,'6ddea1cab16311e2bb7900241d8adc62','zdata','zweb_view','zid',400001002,404103109,0,0,'',1),(2934,'6ddea399b16311e2bb7900241d8adc62','zdata','zweb_view','uid',400001001,404103103,32,0,'',2),(2935,'6ddea580b16311e2bb7900241d8adc62','zdata','zweb_view','code',400001001,404103122,100,0,'编码',3),(2936,'6ddea7a2b16311e2bb7900241d8adc62','zdata','zweb_view','view_name',400001001,404103122,100,0,'视图名称',4),(2937,'6ddea9b7b16311e2bb7900241d8adc62','zdata','zweb_view','table_name',400001001,404103122,100,0,'表名称',5),(2938,'d751477cb22511e28f1b00241d8adc62','zdata','info_people','zid',400001002,404103109,0,0,'',1),(2939,'d7514adeb22511e28f1b00241d8adc62','zdata','info_people','uid',400001001,404103103,32,0,'',2),(2940,'d7514c23b22511e28f1b00241d8adc62','zdata','info_people','name',400001001,404103122,45,0,'姓名',3),(2941,'d7514d59b22511e28f1b00241d8adc62','zdata','info_people','file_url',400001001,404103122,450,0,'头像',4),(2942,'d7514e82b22511e28f1b00241d8adc62','zdata','info_people','note',400001001,404103122,4000,0,'描述',5),(2943,'d7514fafb22511e28f1b00241d8adc62','zdata','info_people','type_cid',400001001,404103103,32,0,'',6),(2944,'d75150c9b22511e28f1b00241d8adc62','zdata','info_product','zid',400001002,404103109,0,0,'',1),(2945,'d751524fb22511e28f1b00241d8adc62','zdata','info_product','uid',400001001,404103103,32,0,'',2),(2946,'d7515373b22511e28f1b00241d8adc62','zdata','info_product','product_people_uid',400001001,404103103,32,0,'所属名人',3),(2947,'d751549bb22511e28f1b00241d8adc62','zdata','info_product','product_name',400001001,404103122,45,0,'作品名称',4),(2948,'d75155c4b22511e28f1b00241d8adc62','zdata','info_product','product_time',400001001,404103103,19,0,'创作时间',5),(2949,'d75156dab22511e28f1b00241d8adc62','zdata','info_product','product_note',400001001,404103122,4000,0,'作品描述',6),(2950,'d75157f9b22511e28f1b00241d8adc62','zdata','info_special','file_url',400001001,404103122,200,0,'图片',7),(2953,'5898ed2fb22911e28f1b00241d8adc62','zdata','info_product','file_url',400001001,404103122,450,0,'作品图片',7),(2954,'1354c62eb3fc11e2a32c0023187c448b','zdata','user_info','zid',400001002,404103109,0,0,'',1),(2955,'1354c89ab3fc11e2a32c0023187c448b','zdata','user_info','uid',400001001,404103103,32,0,'',2),(2956,'1354c93ab3fc11e2a32c0023187c448b','zdata','user_info','login_name',400001001,404103122,200,0,'用户名',3),(2957,'1354c9bcb3fc11e2a32c0023187c448b','zdata','user_info','login_pass',400001001,404103122,200,0,'密码',4),(2958,'1354ca3eb3fc11e2a32c0023187c448b','zdata','user_info','user_email',400001001,404103122,200,0,'邮箱',5),(2959,'1354cacab3fc11e2a32c0023187c448b','zdata','user_info','reg_date',400001001,404103103,19,0,'注册日期',6),(2960,'1354cb42b3fc11e2a32c0023187c448b','zdata','user_info','cookie_id',400001001,404103103,32,0,'客户编号',7),(2961,'2d4e76aeb56b11e28f1b00241d8adc62','zdata','info_images','zid',400001002,404103109,0,0,'',1),(2962,'2d4e7b7ab56b11e28f1b00241d8adc62','zdata','info_images','uid',400001001,404103103,32,0,'',2),(2963,'2d4e7ca7b56b11e28f1b00241d8adc62','zdata','info_images','title',400001001,404103122,450,0,'标题',3),(2964,'2d4e7e10b56b11e28f1b00241d8adc62','zdata','info_images','file_url',400001001,404103122,450,0,'缩略图',4),(2965,'2d4e7f83b56b11e28f1b00241d8adc62','zdata','info_static','zid',400001002,404103109,0,0,'',1),(2966,'2d4e8087b56b11e28f1b00241d8adc62','zdata','info_static','uid',400001001,404103103,32,0,'',2),(2967,'2d4e8177b56b11e28f1b00241d8adc62','zdata','info_static','code',400001001,404103122,45,0,'编码',3),(2968,'2d4e8272b56b11e28f1b00241d8adc62','zdata','info_static','title',400001001,404103122,45,0,'标题',4),(2969,'2d4e8383b56b11e28f1b00241d8adc62','zdata','info_static','content',400001001,404103112,2147483647,0,'',5),(2970,'2d4f8248b56b11e28f1b00241d8adc62','zdata','info_static','file_url',400001001,404103122,450,0,'文件',6),(2971,'2d4f839bb56b11e28f1b00241d8adc62','zdata','info_static','system_cid',400001001,404103109,0,0,'系统编码',7),(2972,'2d4f84bab56b11e28f1b00241d8adc62','zdata','info_static','link',400001001,404103122,450,0,'链接',8),(2973,'2d4f85c2b56b11e28f1b00241d8adc62','zdata','user_collect','zid',400001002,404103109,0,0,'',1),(2974,'2d4f870bb56b11e28f1b00241d8adc62','zdata','user_collect','uid',400001001,404103103,32,0,'',2),(2975,'2d4f87fcb56b11e28f1b00241d8adc62','zdata','user_collect','user_uid',400001001,404103103,32,0,'用户',3),(2976,'2d4f8909b56b11e28f1b00241d8adc62','zdata','user_collect','info_url',400001001,404103122,450,0,'收藏地址',4),(2977,'2d4f8a15b56b11e28f1b00241d8adc62','zdata','user_collect','info_title',400001001,404103122,450,0,'信息标题',5),(2978,'2d4f8b0bb56b11e28f1b00241d8adc62','zdata','user_collect','collect_date',400001001,404103103,19,0,'时间',6),(2979,'2d4f8c05b56b11e28f1b00241d8adc62','zdata','user_collect','info_type',400001001,404103109,0,0,'类型',7),(2980,'2d4f9981b56b11e28f1b00241d8adc62','zdata','user_comment','zid',400001002,404103109,0,0,'',1),(2981,'2d4f9aaab56b11e28f1b00241d8adc62','zdata','user_comment','uid',400001001,404103103,32,0,'',2),(2982,'2d4f9badb56b11e28f1b00241d8adc62','zdata','user_comment','user_uid',400001001,404103103,32,0,'',3),(2983,'2d4f9cbab56b11e28f1b00241d8adc62','zdata','user_comment','info_title',400001001,404103122,450,0,'信息标题',4),(2984,'2d4f9dcbb56b11e28f1b00241d8adc62','zdata','user_comment','info_url',400001001,404103122,450,0,'地址',5),(2985,'2d4f9ed8b56b11e28f1b00241d8adc62','zdata','user_comment','comment_date',400001001,404103103,19,0,'时间',6),(2986,'2d4f9fd7b56b11e28f1b00241d8adc62','zdata','user_comment','info_type',400001001,404103109,0,0,'类型',7),(2987,'2d4fa0cdb56b11e28f1b00241d8adc62','zdata','user_comment','note',400001001,404103122,4000,0,'内容',8),(2988,'2d4fa1d9b56b11e28f1b00241d8adc62','zdata','user_info','phone_num',400001001,404103122,200,0,'',8),(2989,'2d4fa2cfb56b11e28f1b00241d8adc62','zdata','user_info','real_name',400001001,404103122,200,0,'',9),(2992,'8da492f8b56e11e28f1b00241d8adc62','zdata','info_img','zid',400001002,404103109,0,0,'',1),(2993,'8da56537b56e11e28f1b00241d8adc62','zdata','info_img','uid',400001001,404103103,32,0,'',2),(2994,'8da56714b56e11e28f1b00241d8adc62','zdata','info_img','images_uid',400001001,404103103,32,0,'',3),(2995,'8da56838b56e11e28f1b00241d8adc62','zdata','info_img','title',400001001,404103122,450,0,'标题',4),(2996,'8da5695cb56e11e28f1b00241d8adc62','zdata','info_img','file_url',400001001,404103122,450,0,'图片地址',5),(2997,'8da56a60b56e11e28f1b00241d8adc62','zdata','info_img','order_id',400001001,404103122,45,0,'排序',6),(2999,'ed2208b1b56e11e28f1b00241d8adc62','zdata','info_images','order_id',400001001,404103122,45,0,'排序',5),(3000,'6c124b9fba1911e28f1b00241d8adc62','zdata','info_adv','link_url',400001001,404103122,450,0,'链接地址',5),(3001,'6c1713d4ba1911e28f1b00241d8adc62','zdata','info_static','order_index',400001001,404103122,45,0,'排序',9),(3002,'6c1715eeba1911e28f1b00241d8adc62','zdata','user_comment','info_uid',400001001,404103103,32,0,'',9),(3003,'a682139dbac411e28f1b00241d8adc62','zdata','info_video','zid',400001002,404103109,0,0,'',1),(3004,'a682188ebac411e28f1b00241d8adc62','zdata','info_video','uid',400001001,404103103,32,0,'',2),(3005,'a68219e4bac411e28f1b00241d8adc62','zdata','info_video','title',400001001,404103122,45,0,'标题',3),(3006,'a6821b12bac411e28f1b00241d8adc62','zdata','info_video','file_url',400001001,404103122,450,0,'内容地址',4),(3007,'a6821c5bbac411e28f1b00241d8adc62','zdata','info_video','type_cid',400001001,404103109,0,0,'类型',5),(3008,'a6821d91bac411e28f1b00241d8adc62','zdata','info_video','sort_index',400001001,404103103,19,0,'排序',6),(3010,'c04c0fe1bac611e28f1b00241d8adc62','zdata','info_video','video_url',400001001,404103122,450,0,'优酷视频地址',7),(3011,'d1b89880bac711e28f1b00241d8adc62','zdata','info_video','ppt_url',400001001,404103122,450,0,'PPT地址',8),(3012,'ed70323cbad211e28f1b00241d8adc62','zdata','info_book','zid',400001002,404103109,0,0,'',1),(3013,'ed70357ebad211e28f1b00241d8adc62','zdata','info_book','uid',400001001,404103103,32,0,'',2),(3014,'ed7036b0bad211e28f1b00241d8adc62','zdata','info_book','title',400001001,404103122,45,0,'名称',3),(3015,'ed7037d3bad211e28f1b00241d8adc62','zdata','info_book','file_url',400001001,404103122,450,0,'图片地址',4),(3016,'ed7038e9bad211e28f1b00241d8adc62','zdata','info_book','book_url',400001001,404103122,450,0,'电子书',5),(3017,'ed703a04bad211e28f1b00241d8adc62','zdata','info_book','sort_index',400001001,404103122,45,0,'排序',6),(3019,'899a74b5bada11e28f1b00241d8adc62','zdata','user_collect','info_uid',400001001,404103103,32,0,'',8),(3020,'afeee9f6bb2711e28f1b00241d8adc62','zdata','you_user','zid',400001002,404103109,0,0,'',1),(3021,'aff15365bb2711e28f1b00241d8adc62','zdata','you_user','uid',400001001,404103103,32,0,'',2),(3022,'aff15555bb2711e28f1b00241d8adc62','zdata','you_user','user_name',400001001,404103122,45,0,'用户名',3),(3023,'aff1568cbb2711e28f1b00241d8adc62','zdata','you_user','user_pass',400001001,404103122,45,0,'密码',4),(3024,'aff15823bb2711e28f1b00241d8adc62','zdata','you_user','real_name',400001001,404103122,45,0,'真实姓名',5),(3027,'bb0290abbd6e11e28f1b00241d8adc62','zdata','user_info','userlevel_cid',400001001,404103109,0,0,'',10),(3028,'bb02946abd6e11e28f1b00241d8adc62','zdata','user_info','flag_notice_cid',400001001,404103109,0,0,'',11),(3030,'fc26ad2fbe2d11e28f1b00241d8adc62','zdata','info_notify','zid',400001002,404103109,0,0,'',1),(3031,'fc283f32be2d11e28f1b00241d8adc62','zdata','info_notify','uid',400001001,404103103,32,0,'',2),(3032,'fc2840c5be2d11e28f1b00241d8adc62','zdata','info_notify','title',400001001,404103122,100,0,'标题',3),(3033,'fc2841edbe2d11e28f1b00241d8adc62','zdata','info_notify','note',400001001,404103122,500,0,'导语',4),(3034,'fc2843f0be2d11e28f1b00241d8adc62','zdata','info_notify','content',400001001,404103112,2147483647,0,'内容',5),(3035,'fc2a10b3be2d11e28f1b00241d8adc62','zdata','info_notify','orderid',400001001,404103122,45,0,'排序',6),(3036,'fc2a1201be2d11e28f1b00241d8adc62','zdata','info_notify','create_time',400001001,404103103,19,0,'时间',7),(3037,'6343651dbe3311e28f1b00241d8adc62','zdata','info_img','note',400001001,404103122,4500,0,'描述',7),(3038,'ad2a88bec0a311e28f1b00241d8adc62','zdata','info_images','position_cid',400001001,404103109,0,0,'图片位置',6),(3039,'f4ac568ac95211e2ae3fa6d63db0b88a','zdata','y_area','zid',400001002,404103109,0,0,'',1),(3040,'f4af2e6ec95211e2ae3fa6d63db0b88a','zdata','y_area','uid',400001001,404103103,32,0,'',2),(3041,'f4af30dac95211e2ae3fa6d63db0b88a','zdata','y_area','code',400001001,404103103,6,0,'编码',3),(3042,'f4af3242c95211e2ae3fa6d63db0b88a','zdata','y_area','name',400001001,404103122,45,0,'名称',4),(3043,'f4af3468c95211e2ae3fa6d63db0b88a','zdata','y_area','pcode',400001001,404103103,6,0,'父编码',5),(3044,'f4af35c6c95211e2ae3fa6d63db0b88a','zdata','y_area','level',400001001,404103109,0,0,'级别',6),(3066,'f4af601ec95211e2ae3fa6d63db0b88a','zdata','y_menu','zid',400001002,404103109,0,0,'',1),(3067,'f4af617cc95211e2ae3fa6d63db0b88a','zdata','y_menu','uid',400001001,404103103,32,0,'',2),(3068,'f4af624ec95211e2ae3fa6d63db0b88a','zdata','y_menu','code',400001001,404103122,450,0,'编码',3),(3069,'f4af6316c95211e2ae3fa6d63db0b88a','zdata','y_menu','name',400001001,404103122,450,0,'名称',4),(3070,'f4af63d4c95211e2ae3fa6d63db0b88a','zdata','y_menu','link_url',400001001,404103122,450,0,'链接',5),(3071,'f4af64a6c95211e2ae3fa6d63db0b88a','zdata','y_menu','level',400001001,404103109,0,0,'级别',6),(3072,'f4af656ec95211e2ae3fa6d63db0b88a','zdata','y_menu','pcode',400001001,404103122,450,0,'父编号',7),(3073,'f4af662cc95211e2ae3fa6d63db0b88a','zdata','zweb_fields','did_query_type',400001001,404103109,0,0,'查询类型',14),(3074,'2101f17acaea11e2956f1dd7dfd59052','zdata','y_info','zid',400001002,404103109,0,0,'',1),(3075,'2101f38ccaea11e2956f1dd7dfd59052','zdata','y_info','uid',400001001,404103103,32,0,'',2),(3076,'2101f454caea11e2956f1dd7dfd59052','zdata','y_info','name',400001001,404103122,450,0,'养老院名称',3),(3077,'2101f4f4caea11e2956f1dd7dfd59052','zdata','y_info','domain',400001001,404103122,45,0,'二级域名',4),(3078,'2101f594caea11e2956f1dd7dfd59052','zdata','y_info','area',400001001,404103122,45,0,'地区',5),(3079,'2101f634caea11e2956f1dd7dfd59052','zdata','y_info','money_cid',400001001,404103122,45,0,'价格范围',6),(3080,'2101f6d4caea11e2956f1dd7dfd59052','zdata','y_info','peopletype_cid',400001001,404103122,45,0,'老人的情况\n',7),(3081,'2101f774caea11e2956f1dd7dfd59052','zdata','y_info','score',400001001,404103122,45,0,'评分',8),(3082,'2101f80acaea11e2956f1dd7dfd59052','zdata','y_info','h_info_name',400001001,404103122,45,0,'机构名称',9),(3083,'2101fe04caea11e2956f1dd7dfd59052','zdata','y_info','h_info_link',400001001,404103122,45,0,'机构法人姓名',10),(3084,'2101fea4caea11e2956f1dd7dfd59052','zdata','y_info','h_info_address',400001001,404103122,45,0,'机构地址',11),(3085,'2101ff3acaea11e2956f1dd7dfd59052','zdata','y_info','q_property_cid',400001001,404103122,45,0,'机构性质',12),(3086,'2101ffc6caea11e2956f1dd7dfd59052','zdata','y_info','q_bednumber',400001001,404103122,45,0,'床位数量\n',13),(3087,'2102005ccaea11e2956f1dd7dfd59052','zdata','y_info','q_money_room_one',400001001,404103122,45,0,'单人间（元/月）',14),(3088,'2102014ccaea11e2956f1dd7dfd59052','zdata','y_info','q_money_room_two',400001001,404103122,45,0,'双人间（元/月）',15),(3089,'210201eccaea11e2956f1dd7dfd59052','zdata','y_info','q_money_room_three',400001001,404103122,45,0,'三人间（元/月）',16),(3090,'210202e6caea11e2956f1dd7dfd59052','zdata','y_info','q_money_room_more',400001001,404103122,45,0,'多人间（元/月）',17),(3091,'2102041ccaea11e2956f1dd7dfd59052','zdata','y_info','q_money_service_include',400001001,404103122,450,0,'服务费用含：',18),(3092,'210204dacaea11e2956f1dd7dfd59052','zdata','y_info','q_money_service_one',400001001,404103122,45,0,'一对一护理费（元/天）',19),(3093,'21020584caea11e2956f1dd7dfd59052','zdata','y_info','q_money_service_two',400001001,404103122,45,0,'一对二护理费（元/天）',20),(3094,'21020656caea11e2956f1dd7dfd59052','zdata','y_info','q_money_service_more',400001001,404103122,45,0,'一对多护理费（元/天）',21),(3095,'21020700caea11e2956f1dd7dfd59052','zdata','y_info','q_eat_money_month',400001001,404103122,45,0,'伙食费（元/月）',22),(3096,'21020796caea11e2956f1dd7dfd59052','zdata','y_info','q_eat_money_day',400001001,404103122,45,0,'提供每日饮食标准（元/日）',23),(3097,'21020836caea11e2956f1dd7dfd59052','zdata','y_info','q_eat_service_flag',400001001,404103122,45,0,'是否提供点餐服务',24),(3098,'210208d6caea11e2956f1dd7dfd59052','zdata','y_info','q_room_toilet_cid',400001001,404103122,45,0,'有无卫生间',25),(3099,'21020976caea11e2956f1dd7dfd59052','zdata','y_info','q_room_bath_cid',400001001,404103122,45,0,'有无洗浴间\n\n',26),(3100,'21020a20caea11e2956f1dd7dfd59052','zdata','y_info','q_room_television_cid',400001001,404103122,45,0,'有无电视机\n',27),(3101,'21020ac0caea11e2956f1dd7dfd59052','zdata','y_info','q_room_telephone_cid',400001001,404103122,45,0,'有无电话',28),(3102,'21020b56caea11e2956f1dd7dfd59052','zdata','y_info','q_play_room_cids',400001001,404103122,450,0,'娱乐场所和配套设施',29),(3103,'21020beccaea11e2956f1dd7dfd59052','zdata','y_info','q_play_service_name',400001001,404103122,45,0,'定期娱乐活动名称',30),(3104,'21020c96caea11e2956f1dd7dfd59052','zdata','y_info','q_doc_room_cids',400001001,404103122,450,0,'医疗场所',31),(3105,'21020d2ccaea11e2956f1dd7dfd59052','zdata','y_info','q_doc_people_a',400001001,404103122,45,0,' 医师（人）',32),(3106,'21020dd6caea11e2956f1dd7dfd59052','zdata','y_info','q_doc_people_b',400001002,404103122,45,0,'护士（人）',33),(3107,'21020e6ccaea11e2956f1dd7dfd59052','zdata','y_info','q_doc_people_c',400001001,404103122,45,0,'康复师（人）',34),(3108,'21020f0ccaea11e2956f1dd7dfd59052','zdata','y_info','q_doc_people_d',400001001,404103122,45,0,'主治医师（人）',35),(3109,'2102102ecaea11e2956f1dd7dfd59052','zdata','y_info','q_doc_people_e',400001001,404103122,45,0,' 护师（人）',36),(3110,'21021150caea11e2956f1dd7dfd59052','zdata','y_info','q_doc_people_f',400001001,404103122,45,0,'副主任医师（人）',37),(3111,'210211facaea11e2956f1dd7dfd59052','zdata','y_info','q_doc_people_g',400001001,404103122,45,0,'副主任护师（人）\n',38),(3112,'210212eacaea11e2956f1dd7dfd59052','zdata','y_info','q_doc_people_h',400001001,404103122,45,0,'主任医师（人）',39),(3113,'210213f8caea11e2956f1dd7dfd59052','zdata','y_info','q_doc_people_i',400001001,404103122,45,0,'主任护师（人）',40),(3114,'2102200acaea11e2956f1dd7dfd59052','zdata','y_info','q_doc_person_a',400001001,404103122,45,0,'兼职医师（人）',41),(3115,'2102214acaea11e2956f1dd7dfd59052','zdata','y_info','q_doc_person_b',400001001,404103122,45,0,'兼职护士（人）',42),(3116,'21022244caea11e2956f1dd7dfd59052','zdata','y_info','q_doc_person_c',400001001,404103122,45,0,'兼职康复师（人）',43),(3117,'21022320caea11e2956f1dd7dfd59052','zdata','y_info','q_doc_person_d',400001001,404103122,45,0,'兼职主治医师（人）',44),(3118,'210223fccaea11e2956f1dd7dfd59052','zdata','y_info','q_doc_person_e',400001001,404103122,45,0,'兼职护师（人）',45),(3119,'210224d8caea11e2956f1dd7dfd59052','zdata','y_info','q_doc_person_f',400001001,404103122,45,0,'兼职副主任医师（人）',46),(3120,'2102264acaea11e2956f1dd7dfd59052','zdata','y_info','q_doc_person_g',400001001,404103122,45,0,'兼职副主任护师（人）',47),(3121,'21022758caea11e2956f1dd7dfd59052','zdata','y_info','q_doc_person_h',400001001,404103122,45,0,'兼职主任医师（人）',48),(3122,'21022866caea11e2956f1dd7dfd59052','zdata','y_info','q_doc_person_i',400001001,404103122,45,0,'兼职主任护师（人）',49),(3123,'21022988caea11e2956f1dd7dfd59052','zdata','y_info','q_doc_hospital_near',400001001,404103122,45,0,'最近社区医院',50),(3124,'21022aa0caea11e2956f1dd7dfd59052','zdata','y_info','q_doc_hospital_range',400001001,404103122,45,0,'',51),(3125,'21022bcccaea11e2956f1dd7dfd59052','zdata','y_info','q_doc_big_near',400001001,404103122,45,0,'',52),(3126,'21022d48caea11e2956f1dd7dfd59052','zdata','y_info','q_doc_big_range',400001001,404103122,45,0,'',53),(3127,'21022e56caea11e2956f1dd7dfd59052','zdata','y_info','q_doc_quick_names',400001001,404103122,45,0,'快速就诊协议医疗机构名称',54),(3128,'21023018caea11e2956f1dd7dfd59052','zdata','y_info','q_doc_room_flag',400001001,404103122,45,0,'有无康复场地',55),(3129,'21023126caea11e2956f1dd7dfd59052','zdata','y_info','q_doc_play_things',400001001,404103122,450,0,'康复器材有',56),(3130,'2102322acaea11e2956f1dd7dfd59052','zdata','y_info','q_doc_build_flag',400001001,404103122,45,0,'有无健身场所',57),(3131,'21023338caea11e2956f1dd7dfd59052','zdata','y_info','q_doc_build_things',400001001,404103122,450,0,'健身器械有',58),(3132,'2102345acaea11e2956f1dd7dfd59052','zdata','y_info','q_goto_health_flag',400001001,404103122,45,0,'是否需要健康证明',59),(3133,'2102357ccaea11e2956f1dd7dfd59052','zdata','y_info','q_goto_money_into',400001001,404103122,45,0,'入住押金（元）\n',60),(3134,'2102369ecaea11e2956f1dd7dfd59052','zdata','y_info','q_goto_money_keep',400001001,404103122,45,0,'医疗备用金（元）\n',61),(3135,'210237accaea11e2956f1dd7dfd59052','zdata','y_info','q_service_cids',400001001,404103122,450,0,'提供的特色服务',62),(3136,'210238cecaea11e2956f1dd7dfd59052','zdata','y_info','field_coupon',400001001,404103122,1000,0,'优惠信息',63),(3137,'210239becaea11e2956f1dd7dfd59052','zdata','y_info','field_welcome',400001001,404103122,1000,0,'欢迎词\n',64),(3138,'21023ad6caea11e2956f1dd7dfd59052','zdata','y_info','field_description',400001001,404103122,4000,0,'养老院简介',65),(3139,'21023bf8caea11e2956f1dd7dfd59052','zdata','y_info','field_live',400001001,404103122,2000,0,'入住须知\n',66),(3140,'21023d10caea11e2956f1dd7dfd59052','zdata','y_info','field_service',400001001,404103122,2000,0,'服务指南',67),(3141,'21023e3ccaea11e2956f1dd7dfd59052','zdata','y_info','link_address',400001001,404103122,450,0,'地址',68),(3142,'21023f4acaea11e2956f1dd7dfd59052','zdata','y_info','link_zipcode',400001001,404103122,45,0,'邮编',69),(3143,'21024044caea11e2956f1dd7dfd59052','zdata','y_info','link_telephone',400001001,404103122,45,0,'固定电话',70),(3144,'21024134caea11e2956f1dd7dfd59052','zdata','y_info','link_people_one',400001001,404103122,45,0,'联系人1',71),(3145,'21024206caea11e2956f1dd7dfd59052','zdata','y_info','link_phone_one',400001001,404103122,45,0,'联系人1手机',72),(3146,'21024328caea11e2956f1dd7dfd59052','zdata','y_info','link_people_two',400001001,404103122,45,0,'联系人2',73),(3147,'210243c8caea11e2956f1dd7dfd59052','zdata','y_info','link_phone_two',400001001,404103122,45,0,'联系人2手机',74),(3148,'2102445ecaea11e2956f1dd7dfd59052','zdata','y_info','link_travel',400001001,404103122,450,0,'交通',75),(3149,'210244eacaea11e2956f1dd7dfd59052','zdata','y_info','link_email',400001001,404103122,45,0,'电子邮箱',76),(3150,'21024580caea11e2956f1dd7dfd59052','zdata','y_info','link_qqno',400001001,404103122,45,0,'QQ号码',77),(3151,'21024ceccaea11e2956f1dd7dfd59052','zdata','y_info','field_notice',400001001,404103122,450,0,'入住其他注意事项',78),(3152,'21024d8ccaea11e2956f1dd7dfd59052','zdata','y_info','field_eat',400001001,404103122,4500,0,'一 周食谱',79),(3153,'d135f836cb6511e2932684b2f09a332f','zdata','y_info','q_eat_special_cids',400001001,404103122,100,0,'特殊饮食',25),(3154,'d135fcf0cb6511e2932684b2f09a332f','zdata','y_info','adddate',400001001,404103122,45,0,'添加时间',81),(3156,'f87d7358cb6811e2932684b2f09a332f','zdata','y_info','main_img',400001001,404103122,450,0,'主图(400x300)',82),(3157,'bec8d28ccb6911e2932684b2f09a332f','zdata','y_img','zid',400001002,404103109,0,0,'',1),(3158,'bec8d66acb6911e2932684b2f09a332f','zdata','y_img','uid',400001001,404103103,32,0,'',2),(3159,'bec8d822cb6911e2932684b2f09a332f','zdata','y_img','info_uid',400001001,404103103,32,0,'',3),(3160,'bec8d8e0cb6911e2932684b2f09a332f','zdata','y_img','file_url',400001001,404103122,450,0,'图片地址',4),(3161,'bec8dc5acb6911e2932684b2f09a332f','zdata','y_img','file_order',400001001,404103122,45,0,'图片顺序',5),(3162,'6244b3b0cc5d11e2b480931095bbeb6a','zdata','y_info','icon_cids',400001001,404103122,450,0,'小图标',9);
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
) ENGINE=InnoDB AUTO_INCREMENT=399 DEFAULT CHARSET=utf8 COMMENT='数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zdata_table`
--

LOCK TABLES `zdata_table` WRITE;
/*!40000 ALTER TABLE `zdata_table` DISABLE KEYS */;
INSERT INTO `zdata_table` VALUES (360,'6dc1c47cb16311e2bb7900241d8adc62','info_adv','info_adv',''),(361,'6dc3b1efb16311e2bb7900241d8adc62','info_auction','info_auction',''),(362,'6dc3b481b16311e2bb7900241d8adc62','info_class','info_class',''),(363,'6dc3b62bb16311e2bb7900241d8adc62','info_good','info_good',''),(364,'6dc3b7b5b16311e2bb7900241d8adc62','info_news','info_news',''),(365,'6dc3b948b16311e2bb7900241d8adc62','info_notice','info_notice',''),(366,'6dc3badbb16311e2bb7900241d8adc62','info_special','info_special',''),(367,'6dc3bc78b16311e2bb7900241d8adc62','test_table','test_table',''),(368,'6dc3bf21b16311e2bb7900241d8adc62','you_class','you_class',''),(369,'6dc3c094b16311e2bb7900241d8adc62','you_menu','you_menu',''),(370,'6dc3c202b16311e2bb7900241d8adc62','zdata_column','zdata_column','数据列表'),(371,'6dc3c390b16311e2bb7900241d8adc62','zdata_server','zdata_server','服务器表'),(372,'6dc3c531b16311e2bb7900241d8adc62','zdata_source','zdata_source','数据源定义'),(373,'6dc3c6a8b16311e2bb7900241d8adc62','zdata_table','zdata_table','数据表'),(374,'6dc3c83bb16311e2bb7900241d8adc62','zsrnpr_define','zsrnpr_define',''),(375,'6dc3c9bcb16311e2bb7900241d8adc62','zweb_fields','zweb_fields','视图字段表'),(376,'6dc3cb54b16311e2bb7900241d8adc62','zweb_options','zweb_options','操作表'),(377,'6dc3ccd0b16311e2bb7900241d8adc62','zweb_source','zweb_source','数据源定义'),(378,'6dc3ce47b16311e2bb7900241d8adc62','zweb_view','zweb_view','视图表'),(379,'d7351ffab22511e28f1b00241d8adc62','info_people','info_people',''),(380,'d735236ab22511e28f1b00241d8adc62','info_product','info_product',''),(382,'134355bab3fc11e2a32c0023187c448b','user_info','user_info',''),(383,'2d203bc6b56b11e28f1b00241d8adc62','info_images','info_images',''),(384,'2d231148b56b11e28f1b00241d8adc62','info_static','info_static',''),(385,'2d23168cb56b11e28f1b00241d8adc62','user_collect','user_collect',''),(386,'2d2318cbb56b11e28f1b00241d8adc62','user_comment','user_comment',''),(390,'8d8c26dab56e11e28f1b00241d8adc62','info_img','info_img',''),(391,'a656d56fbac411e28f1b00241d8adc62','info_video','info_video',''),(392,'ed57babbbad211e28f1b00241d8adc62','info_book','info_book',''),(393,'afba72a5bb2711e28f1b00241d8adc62','you_user','you_user',''),(394,'fc0a7eb5be2d11e28f1b00241d8adc62','info_notify','info_notify',''),(395,'f4915a92c95211e2ae3fa6d63db0b88a','y_area','y_area',''),(396,'f4992ceac95211e2ae3fa6d63db0b88a','y_info','y_info',''),(397,'f4992ed4c95211e2ae3fa6d63db0b88a','y_menu','y_menu',''),(398,'bebc5c5acb6911e2932684b2f09a332f','y_img','y_img','');
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
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `uid_UNIQUE` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zsrnpr_define`
--

LOCK TABLES `zsrnpr_define` WRITE;
/*!40000 ALTER TABLE `zsrnpr_define` DISABLE KEYS */;
INSERT INTO `zsrnpr_define` VALUES (1,'90c43881a90111e2bb7900241d8adc62','400','系统定义','','',1),(2,'90c43a88a90111e2bb7900241d8adc62','400001','是否','','',2),(6,'90c43afca90111e2bb7900241d8adc62','400001001','是','','',3),(7,'90c43b70a90111e2bb7900241d8adc62','400001002','否','','',3),(8,'90c43bd1a90111e2bb7900241d8adc62','404120','数据库类型定义','','',2),(9,'90c43c2ea90111e2bb7900241d8adc62','404103','数据库字段定义','column','',2),(10,'90c43c94a90111e2bb7900241d8adc62','404103109','int','int','',3),(11,'90c43cf5a90111e2bb7900241d8adc62','404103122','varchar','varchar','',3),(12,'90c43d51a90111e2bb7900241d8adc62','404103104','decimal','decimal','',3),(13,'90c43db3a90111e2bb7900241d8adc62','415101','页面按钮工具栏','options','',2),(14,'90c43e14a90111e2bb7900241d8adc62','415101019','提交','submit','',3),(15,'90c43e75a90111e2bb7900241d8adc62','404','数据库定义','data','定义数据库',1),(16,'90c43ed7a90111e2bb7900241d8adc62','416','页面定义','page','',1),(19,'90c43f38a90111e2bb7900241d8adc62','416108','页面元素类型','html','',2),(20,'90c43f9ea90111e2bb7900241d8adc62','416108109','文本输入框','input','',3),(21,'90c43fffa90111e2bb7900241d8adc62','404119','数据源类型定义','source','定义数据源用，用于zdata_source表',2),(22,'90c44061a90111e2bb7900241d8adc62','404119115','kV表','one','',3),(23,'90c440bda90111e2bb7900241d8adc62','404119103','关联表','conc','',3),(24,'90c4411fa90111e2bb7900241d8adc62','404103103','char','char','',3),(33,'90c4417ba90111e2bb7900241d8adc62','416120','页面类型','','',2),(34,'90c441d8a90111e2bb7900241d8adc62','416120103','列表页','chart','',3),(35,'90c44235a90111e2bb7900241d8adc62','416120101','新增页','add','',3),(36,'90c442d7a90111e2bb7900241d8adc62','416120105','修改页','edit','',3),(37,'90c44338a90111e2bb7900241d8adc62','416120102','查看页','book','',3),(38,'90c44409a90111e2bb7900241d8adc62','415101001','按钮-新增','add','',3),(40,'90c4446aa90111e2bb7900241d8adc62','415101005','按钮-修改','edit','',3),(41,'90c444c7a90111e2bb7900241d8adc62','416120104','删除页','delete','',3),(43,'90c44523a90111e2bb7900241d8adc62','416108119','选择下拉框','select','',3),(44,'90c44580a90111e2bb7900241d8adc62','416120107','查询结果内','grid','',3),(45,'90c445dda90111e2bb7900241d8adc62','415101012','自定义链接','link','自定义链接',3),(46,'90c4463ea90111e2bb7900241d8adc62','415101305','列表页表格-修改','chart-edit','列表页表格-修改',3),(47,'90c4469aa90111e2bb7900241d8adc62','416120106','执行专用页','func','',3),(48,'90c446f7a90111e2bb7900241d8adc62','415','操作定义','options','',1),(49,'90c44580a90111e2bb7900241d8adc63','415101006','按钮-执行调用','func','',3),(50,'90c44580a90111e2bb7900241d8adc71','416120109','查询条件','inquire','查询条件',3),(52,'90c44580a90111e2bb7900241d8adc73','416108108','隐藏域','hidden','',3),(53,'90c44580a90111e2bb7900241d5adc71','400118','返回类型','result','',2),(54,'90c44580a90111e2bb7900241d5add71','400118110','Json对象','jso','',3),(55,'50c44580a90111e2bb7900241d5add71','400118119','字符串','string','',3),(56,'90c44580a90111e2bb79c0241d8adc73','416108105','编辑器','editor','',3),(57,'90c44580a90111e2bb7901241d8adc73','416108120','长文本','textarea','',3),(58,'90c44780a90111e2bb7901241d8adc73','416108121','upload','upload','',3),(59,'90c43cf5a90111e2bb7900241d8cdc62','404103112','longtext','longtext','',3),(60,'v0c44580a90111e2bb7900241d8adc71','416108104','日期选择控件','date','',3),(61,'90c4463ea90111e2bb7900241dvadc62','415101304','列表页表格-删除','chart-delete','列表页表格-删除',3),(62,'90c44523a9011vv2bb7900241d8adc62','416108116','密码框','password','',3),(63,'90c44523a9011vv2bb7900241d8adc63','417','查询定义','query','',1),(64,'90c44523a9011vv2bb7900241d8adc64','417020','查询类型','type','',2),(65,'90c44523a9011vv2bb7900241d8adc65','417020005','等于','equal','',3),(66,'90c44523a9011vv2bb7900241d8adc66','417020012','相似于','like','',3),(67,'90c44523a9011vv2bb7900241d8adc67','413','系统菜单','menu','',1),(68,'90c44523a9011vv2bb7900241d8adc6s','416108103','复选框','checkbox','',0);
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
  `did_query_type` int(11) DEFAULT '0' COMMENT '查询类型',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=824 DEFAULT CHARSET=utf8 COMMENT='视图字段表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zweb_fields`
--

LOCK TABLES `zweb_fields` WRITE;
/*!40000 ALTER TABLE `zweb_fields` DISABLE KEYS */;
INSERT INTO `zweb_fields` VALUES (426,'90dbce39a97311e2bb7900241d8adc62','system_options','did_option_type','',416108119,'source_system_define','415101',106,106,106,106,106,0),(427,'90dbd06ea97311e2bb7900241d8adc62','system_options','did_page_type','',416108119,'source_system_define','416120',105,105,105,105,105,0),(428,'90dbd131a97311e2bb7900241d8adc62','system_options','name','名称',416108109,'','',104,104,104,104,104,0),(429,'90dbd1dca97311e2bb7900241d8adc62','system_options','params','操作参数',416108120,'','',107,107,107,107,107,0),(430,'90dbd28ca97311e2bb7900241d8adc62','system_options','uid','',416108108,'','',0,102,102,102,102,0),(431,'90dbd338a97311e2bb7900241d8adc62','system_options','view_code','视图编号',416108109,'','',103,103,103,103,103,0),(432,'90dbd51ea97311e2bb7900241d8adc62','system_options','zid','',416108108,'','',0,0,0,0,0,0),(433,'90e03ee1a97311e2bb7900241d8adc62','system_table','code','编码',416108109,'','',103,103,103,103,103,0),(434,'90e040ffa97311e2bb7900241d8adc62','system_table','table_name','表名称',416108109,'','',105,105,105,105,105,0),(435,'90e041d4a97311e2bb7900241d8adc62','system_table','uid','',416108108,'','',0,102,102,102,102,0),(436,'90e04280a97311e2bb7900241d8adc62','system_table','view_name','视图名称',416108109,'','',104,104,104,104,104,0),(437,'90e04335a97311e2bb7900241d8adc62','system_table','zid','',416108108,'','',0,0,0,0,0,0),(440,'90e3e629a97311e2bb7900241d8adc62','system_fields','column_name','数据列名称',416108109,'','',104,104,104,104,104,0),(441,'90e3e7c1a97311e2bb7900241d8adc62','system_fields','did_field_type','字段类型',416108119,'source_system_define','416108',106,106,106,106,106,0),(442,'90e3e876a97311e2bb7900241d8adc62','system_fields','field_name','字段名称',416108109,'','',105,105,105,105,105,0),(443,'90e3e921a97311e2bb7900241d8adc62','system_fields','level_add','插入标记',416108109,'','',110,110,110,110,110,0),(444,'90e3e9cca97311e2bb7900241d8adc62','system_fields','level_book','展示标记',416108109,'','',112,112,112,112,112,0),(445,'90e3ea6aa97311e2bb7900241d8adc62','system_fields','level_edit','修改标记',416108109,'','',111,111,111,111,111,0),(446,'90e3eb11a97311e2bb7900241d8adc62','system_fields','level_grid','列表标记',416108109,'','',109,109,109,109,109,0),(447,'90e3ebaea97311e2bb7900241d8adc62','system_fields','level_inquire','查询条件',416108109,'','',113,113,113,113,113,0),(448,'90e3ec5aa97311e2bb7900241d8adc62','system_fields','source_code','数据源编码',416108109,'','',107,107,107,107,107,0),(449,'90e3ecfca97311e2bb7900241d8adc62','system_fields','source_parameter','数据源参数',416108120,'','',108,108,108,108,108,0),(450,'90e3ed99a97311e2bb7900241d8adc62','system_fields','uid','',416108108,'','',0,102,102,102,102,0),(451,'90e3ee4aa97311e2bb7900241d8adc62','system_fields','view_code','视图编码',416108109,'','',103,103,103,103,103,0),(452,'90e3ef44a97311e2bb7900241d8adc62','system_fields','zid','',416108108,'','',0,0,0,0,0,0),(455,'06f9513aaa4511e299940050568856aa','test_view','checkbox','选择框',416108109,'','',108,108,108,108,108,0),(456,'06f9539caa4511e299940050568856aa','test_view','inputtext','输入字段',416108105,'','',103,103,103,103,103,0),(457,'06f9541eaa4511e299940050568856aa','test_view','selecttext','选择字段',416108120,'','',104,104,104,104,104,0),(458,'06f95482aa4511e299940050568856aa','test_view','textarea','长文本',416108105,'','',107,107,107,107,107,0),(459,'06f954d2aa4511e299940050568856aa','test_view','uid','',416108108,'','',0,102,102,102,102,0),(460,'06f95522aa4511e299940050568856aa','test_view','url_file','文件上传',416108121,'','',105,105,105,105,105,0),(461,'06f956daaa4511e299940050568856aa','test_view','url_img','',416108109,'','',106,106,106,106,106,0),(462,'06f95748aa4511e299940050568856aa','test_view','zid','',416108108,'','',0,0,0,0,0,0),(463,'062a6178ab6611e28ccc0023187c448b','v_you_class','code','编号',416108109,'','',103,103,103,103,103,0),(464,'062a66dcab6611e28ccc0023187c448b','v_you_class','note','描述',416108109,'','',106,106,106,106,106,0),(465,'062a68a8ab6611e28ccc0023187c448b','v_you_class','link','链接地址',416108109,'','',105,105,105,105,105,0),(466,'062a69caab6611e28ccc0023187c448b','v_you_class','name','名称',416108109,'','',104,104,104,104,104,0),(467,'062a6aa6ab6611e28ccc0023187c448b','v_you_class','orderid','排序',416108109,'','',107,107,107,107,107,0),(468,'062a6b6eab6611e28ccc0023187c448b','v_you_class','uid','',416108108,'','',0,102,102,102,102,0),(469,'062a6c36ab6611e28ccc0023187c448b','v_you_class','zid','',416108108,'','',0,0,0,0,0,0),(470,'c70bc91cab6711e28ccc0023187c448b','v_you_class','parent_code','父编码',416108,'','',108,108,108,108,108,0),(471,'179a51b8ab6e11e28ccc0023187c448b','v_you_class','parent_code','',416108109,'','',108,108,108,108,108,0),(482,'e85280abb07211e2bb7900241d8adc62','v_info_adv','file_url','文件地址(1100*330)',416108121,'','',104,104,104,104,104,0),(483,'e8528338b07211e2bb7900241d8adc62','v_info_adv','title','标题',416108109,'','',103,103,103,103,103,0),(484,'e8528412b07211e2bb7900241d8adc62','v_info_adv','uid','',416108108,'','',0,102,102,102,102,0),(485,'e85284d0b07211e2bb7900241d8adc62','v_info_adv','zid','',416108108,'','',0,0,0,0,0,0),(489,'d833eaa2b09c11e2bb7900241d8adc62','v_info_news','content','内容',416108105,'','',0,107,107,107,107,0),(491,'d833eecbb09c11e2bb7900241d8adc62','v_info_news','create_time','时间',416108104,'','',110,110,110,110,110,0),(492,'d833efc6b09c11e2bb7900241d8adc62','v_info_news','note','导语',416108120,'','',0,105,105,105,105,0),(493,'d833f07ab09c11e2bb7900241d8adc62','v_info_news','file_url','文件地址',416108121,'','',106,106,106,106,106,0),(495,'d833f1c8b09c11e2bb7900241d8adc62','v_info_news','orderid','排序',416108109,'','',108,108,108,108,108,0),(496,'d833f265b09c11e2bb7900241d8adc62','v_info_news','title','标题',416108109,'','',103,103,103,103,103,0),(497,'d833f4bbb09c11e2bb7900241d8adc62','v_info_news','uid','',416108108,'','',0,102,102,102,102,0),(498,'d833f570b09c11e2bb7900241d8adc62','v_info_news','zid','',416108108,'','',0,0,0,0,0,0),(504,'e91de896b09e11e2bb7900241d8adc62','v_info_notice','content','内容',416108105,'','',0,105,105,105,105,0),(505,'e91deac7b09e11e2bb7900241d8adc62','v_info_notice','create_time','时间',416108104,'','',107,107,107,107,107,0),(506,'e91debb8b09e11e2bb7900241d8adc62','v_info_notice','note','导语',416108120,'','',0,0,0,104,104,0),(507,'e91dec7ab09e11e2bb7900241d8adc62','v_info_notice','orderid','排序',416108109,'','',106,106,106,106,106,0),(508,'e91ded3db09e11e2bb7900241d8adc62','v_info_notice','title','标题',416108109,'','',103,103,103,103,103,0),(509,'e91dee9db09e11e2bb7900241d8adc62','v_info_notice','uid','',416108108,'','',0,102,102,102,102,0),(510,'e91def52b09e11e2bb7900241d8adc62','v_info_notice','zid','',416108108,'','',0,0,0,0,0,0),(511,'dfcd07eab14211e2bb7900241d8adc62','v_info_auction','auction_type_cid','拍卖会类型',416108119,'source_you_class','3031',105,105,105,105,105,0),(512,'dfcd0a8fb14211e2bb7900241d8adc62','v_info_auction','file_url','拍卖会图片',416108121,'','',106,106,106,106,106,0),(513,'dfcd0b72b14211e2bb7900241d8adc62','v_info_auction','name','拍卖会名称',416108109,'','',103,103,103,103,103,0),(514,'dfcd0c39b14211e2bb7900241d8adc62','v_info_auction','special_num','专场数量',416108109,'','',107,107,107,107,107,0),(515,'dfcd0cf7b14211e2bb7900241d8adc62','v_info_auction','success_price','成交金额',416108109,'','',108,108,108,108,108,0),(516,'dfcd0db5b14211e2bb7900241d8adc62','v_info_auction','time','拍卖会时间',416108104,'','',104,104,104,104,104,0),(517,'dfcd0e57b14211e2bb7900241d8adc62','v_info_auction','uid','',416108108,'','',0,102,102,102,102,0),(518,'dfcd0f89b14211e2bb7900241d8adc62','v_info_auction','zid','',416108108,'','',0,0,0,0,0,0),(526,'1a91271db15611e2bb7900241d8adc62','v_info_special','auction_uid','所属拍卖会',416108119,'source_good_auction','0',103,103,103,103,103,0),(527,'1a9723c1b15611e2bb7900241d8adc62','v_info_special','name','专场名称',416108109,'','',104,104,104,104,104,0),(528,'1a972562b15611e2bb7900241d8adc62','v_info_special','success_price','成交金额',416108109,'','',105,105,105,105,105,0),(529,'1a972645b15611e2bb7900241d8adc62','v_info_special','time','专场时间',416108104,'','',106,106,106,106,106,0),(530,'1a9726ffb15611e2bb7900241d8adc62','v_info_special','uid','',416108108,'','',0,102,102,102,102,0),(531,'1a9727b8b15611e2bb7900241d8adc62','v_info_special','zid','',416108108,'','',0,0,0,0,0,0),(533,'22ea94a2b15611e2bb7900241d8adc62','v_info_good','assess_price','估价',416108109,'','',109,109,109,109,109,0),(534,'22ea9e10b15611e2bb7900241d8adc62','v_info_good','auction_uid','所属拍卖会',416108108,'','',0,105,105,105,105,0),(535,'22ea9f87b15611e2bb7900241d8adc62','v_info_good','code','图录号',416108109,'','',104,104,104,104,104,0),(536,'22eaa040b15611e2bb7900241d8adc62','v_info_good','file_url','主图片',416108121,'','',112,112,112,112,112,0),(537,'22eaa0fab15611e2bb7900241d8adc62','v_info_good','name','名称',416108109,'','',103,103,103,103,103,0),(538,'22eaa1a5b15611e2bb7900241d8adc62','v_info_good','note','拍品介绍',416108120,'','',0,111,111,111,111,0),(539,'22eaa243b15611e2bb7900241d8adc62','v_info_good','size','尺寸',416108109,'','',108,108,108,108,108,0),(540,'22eaa2e0b15611e2bb7900241d8adc62','v_info_good','special_uid','所属专场',416108108,'','',0,106,106,106,106,0),(541,'22eaa38cb15611e2bb7900241d8adc62','v_info_good','success_price','成交价',416108109,'','',110,110,110,110,110,0),(542,'22eaa429b15611e2bb7900241d8adc62','v_info_good','texture','质地',416108109,'','',107,107,107,107,107,0),(543,'22eaa4c7b15611e2bb7900241d8adc62','v_info_good','uid','',416108108,'','',0,102,102,102,102,0),(544,'22eaa56db15611e2bb7900241d8adc62','v_info_good','zid','',416108108,'','',0,0,0,0,0,0),(545,'1c83e377b22611e28f1b00241d8adc62','v_info_people','file_url','头像',416108121,'','',104,104,104,104,104,0),(546,'1c83e5bab22611e28f1b00241d8adc62','v_info_people','name','姓名',416108109,'','',103,103,103,103,103,0),(547,'1c83e694b22611e28f1b00241d8adc62','v_info_people','note','描述',416108120,'','',0,105,105,105,105,0),(548,'1c83e764b22611e28f1b00241d8adc62','v_info_people','type_cid','所属分类',416108119,'source_you_class','3032',106,106,106,106,106,0),(549,'1c83e839b22611e28f1b00241d8adc62','v_info_people','uid','',416108108,'','',0,102,102,102,102,0),(550,'1c83e8f3b22611e28f1b00241d8adc62','v_info_people','zid','',416108108,'','',0,0,0,0,0,0),(552,'210b7c68b22611e28f1b00241d8adc62','v_info_product','product_name','作品名称',416108109,'','',104,104,104,104,104,0),(553,'210b7e6ab22611e28f1b00241d8adc62','v_info_product','product_note','作品描述',416108105,'','',106,106,106,106,106,0),(554,'210b7f3ab22611e28f1b00241d8adc62','v_info_product','product_people_uid','所属名人',416108108,'','',103,103,103,103,103,0),(555,'210b800bb22611e28f1b00241d8adc62','v_info_product','product_time','创作时间',416108104,'','',105,105,105,105,105,0),(556,'210b80b6b22611e28f1b00241d8adc62','v_info_product','uid','',416108108,'','',0,102,102,102,102,0),(557,'210b816bb22611e28f1b00241d8adc62','v_info_product','zid','',416108108,'','',0,0,0,0,0,0),(559,'7465465ab22911e28f1b00241d8adc62','v_info_product','file_url','作品图片',416108121,'','',107,107,107,107,107,0),(560,'c8c9d429b56e11e28f1b00241d8adc62','v_info_images','file_url','缩略图',416108121,'','',104,104,104,104,104,0),(561,'c8cad6b2b56e11e28f1b00241d8adc62','v_info_images','title','标题',416108109,'','',103,103,103,103,103,0),(562,'c8cad874b56e11e28f1b00241d8adc62','v_info_images','uid','',416108108,'','',0,102,102,102,102,0),(563,'c8cad924b56e11e28f1b00241d8adc62','v_info_images','zid','',416108108,'','',0,0,0,0,0,0),(567,'cb3875f3b56e11e28f1b00241d8adc62','v_info_img','file_url','图片地址',416108121,'','',105,105,105,105,105,0),(568,'cb3880c1b56e11e28f1b00241d8adc62','v_info_img','images_uid','图片集',416108108,'','',0,103,103,103,103,0),(569,'cb38819fb56e11e28f1b00241d8adc62','v_info_img','order_id','排序',416108109,'','',106,106,106,106,106,0),(570,'cb388502b56e11e28f1b00241d8adc62','v_info_img','title','标题',416108109,'','',104,104,104,104,104,0),(571,'cb3885c4b56e11e28f1b00241d8adc62','v_info_img','uid','',416108108,'','',0,102,102,102,102,0),(572,'cb388674b56e11e28f1b00241d8adc62','v_info_img','zid','',416108108,'','',0,0,0,0,0,0),(574,'f0f527f3b56e11e28f1b00241d8adc62','v_info_images','order_id','排序',416108109,'','',105,105,105,105,105,0),(575,'6f026b6fba1911e28f1b00241d8adc62','v_info_adv','link_url','链接地址',416108120,'','',105,105,105,105,105,0),(576,'35051909ba6911e28f1b00241d8adc62','v_info_static_nav','code','编码',416108,'','',103,103,0,103,103,0),(577,'3506140fba6911e28f1b00241d8adc62','v_info_static_nav','content','内容',416108105,'','',0,105,105,105,105,0),(578,'35077a1bba6911e28f1b00241d8adc62','v_info_static_nav','file_url','文件',416108109,'','',0,106,0,106,106,0),(579,'35077dedba6911e28f1b00241d8adc62','v_info_static_nav','link','链接',416108109,'','',0,108,0,108,108,0),(580,'35078051ba6911e28f1b00241d8adc62','v_info_static_nav','order_index','排序',416108109,'','',0,109,0,109,109,0),(581,'35078225ba6911e28f1b00241d8adc62','v_info_static_nav','system_cid','系统编码',416108109,'','',0,107,0,107,107,0),(582,'350783e6ba6911e28f1b00241d8adc62','v_info_static_nav','title','标题',416108109,'','',104,104,104,104,104,0),(583,'3507861bba6911e28f1b00241d8adc62','v_info_static_nav','uid','',416108108,'','',0,102,102,102,102,0),(584,'35078851ba6911e28f1b00241d8adc62','v_info_static_nav','zid','',416108108,'','',0,0,0,0,0,0),(591,'d64f99c0bac411e28f1b00241d8adc62','v_info_video','file_url','图片',416108121,'','',104,104,104,104,104,0),(592,'d650b176bac411e28f1b00241d8adc62','v_info_video','sort_index','排序',416108109,'','',106,106,106,106,106,0),(593,'d650b535bac411e28f1b00241d8adc62','v_info_video','title','标题',416108109,'','',103,103,103,103,103,0),(594,'d650b758bac411e28f1b00241d8adc62','v_info_video','type_cid','类型',416108119,'source_you_class','3034',105,105,105,105,105,0),(595,'d650b98dbac411e28f1b00241d8adc62','v_info_video','uid','',416108108,'','',0,102,102,102,102,0),(596,'d650bb81bac411e28f1b00241d8adc62','v_info_video','zid','',416108108,'','',0,0,0,0,0,0),(605,'c18664cebac611e28f1b00241d8adc62','v_info_video','video_url','优酷视频地址',416108120,'','',107,107,107,107,107,0),(606,'d54dcfbdbac711e28f1b00241d8adc62','v_info_video','ppt_url','PPT地址',416108121,'','',108,108,108,108,108,0),(607,'19615744bad311e28f1b00241d8adc62','v_info_book','book_url','电子书目录',416108109,'','',105,105,105,105,105,0),(608,'1962c7ebbad311e28f1b00241d8adc62','v_info_book','file_url','图片地址',416108121,'','',104,104,104,104,104,0),(609,'1962c934bad311e28f1b00241d8adc62','v_info_book','sort_index','排序',416108109,'','',106,106,106,106,106,0),(610,'1962c9f2bad311e28f1b00241d8adc62','v_info_book','title','名称',416108109,'','',103,103,103,103,103,0),(611,'1962caa3bad311e28f1b00241d8adc62','v_info_book','uid','',416108108,'','',0,102,102,102,102,0),(612,'1962cb5cbad311e28f1b00241d8adc62','v_info_book','zid','',416108108,'','',0,0,0,0,0,0),(614,'7b485509badd11e28f1b00241d8adc62','v_info_static_club','code','编码',416108,'','',103,103,0,103,103,0),(615,'7b4857a9badd11e28f1b00241d8adc62','v_info_static_club','content','内容',416108105,'','',0,105,105,105,105,0),(616,'7b485895badd11e28f1b00241d8adc62','v_info_static_club','file_url','文件',416108109,'','',0,106,0,106,106,0),(617,'7b485965badd11e28f1b00241d8adc62','v_info_static_club','link','链接',416108109,'','',0,108,0,108,108,0),(618,'7b485a4dbadd11e28f1b00241d8adc62','v_info_static_club','order_index','排序',416108109,'','',0,109,0,109,109,0),(619,'7b485b63badd11e28f1b00241d8adc62','v_info_static_club','system_cid','系统编码',416108109,'','',0,107,0,107,107,0),(620,'7b485c13badd11e28f1b00241d8adc62','v_info_static_club','title','标题',416108109,'','',104,104,104,104,104,0),(621,'7b485cc3badd11e28f1b00241d8adc62','v_info_static_club','uid','',416108108,'','',0,102,102,102,102,0),(622,'7b485db4badd11e28f1b00241d8adc62','v_info_static_club','zid','',416108108,'','',0,0,0,0,0,0),(629,'7e24e78bbadd11e28f1b00241d8adc62','v_info_static_books','code','编码',416108,'','',103,103,0,103,103,0),(630,'7e24e9a4badd11e28f1b00241d8adc62','v_info_static_books','content','',416108109,'','',0,105,0,105,105,0),(631,'7e24ea75badd11e28f1b00241d8adc62','v_info_static_books','file_url','文件',416108121,'','',106,106,106,106,106,0),(632,'7e24eb38badd11e28f1b00241d8adc62','v_info_static_books','link','链接',416108120,'','',108,108,108,108,108,0),(633,'7e24ec60badd11e28f1b00241d8adc62','v_info_static_books','order_index','排序',416108109,'','',0,109,0,109,109,0),(634,'7e24ed89badd11e28f1b00241d8adc62','v_info_static_books','system_cid','系统编码',416108109,'','',0,107,0,107,107,0),(635,'7e24ee39badd11e28f1b00241d8adc62','v_info_static_books','title','标题',416108109,'','',104,104,104,104,104,0),(636,'7e24eef7badd11e28f1b00241d8adc62','v_info_static_books','uid','',416108108,'','',0,102,102,102,102,0),(637,'7e24efabbadd11e28f1b00241d8adc62','v_info_static_books','zid','',416108108,'','',0,0,0,0,0,0),(644,'d2a5cb97baee11e2aece001125a812cc','v_info_special','file_url','图片',416108121,'','',107,107,107,107,107,0),(645,'07ac9ee2bd6f11e28f1b00241d8adc62','v_user_info','cookie_id','客户编号',416108109,'','',0,0,0,0,0,0),(646,'07ae2299bd6f11e28f1b00241d8adc62','v_user_info','flag_notice_cid','接收通知',416108119,'source_you_class','3001',111,111,111,111,111,0),(647,'07ae2407bd6f11e28f1b00241d8adc62','v_user_info','login_name','用户名',416108109,'','',103,103,103,103,103,0),(648,'07ae24cabd6f11e28f1b00241d8adc62','v_user_info','login_pass','密码',416108116,'','',0,104,104,104,104,0),(649,'07ae258cbd6f11e28f1b00241d8adc62','v_user_info','phone_num','手机号吗',416108109,'','',108,108,108,108,108,0),(650,'07ae2638bd6f11e28f1b00241d8adc62','v_user_info','real_name','真实姓名',416108109,'','',109,109,109,109,109,0),(651,'07ae26dabd6f11e28f1b00241d8adc62','v_user_info','reg_date','注册日期',416108109,'','',106,106,106,106,106,0),(652,'07ae277cbd6f11e28f1b00241d8adc62','v_user_info','uid','',416108108,'','',0,102,102,102,102,0),(653,'07ae2831bd6f11e28f1b00241d8adc62','v_user_info','userlevel_cid','用户级别',416108119,'source_you_class','3021',110,110,110,110,110,0),(654,'07ae2901bd6f11e28f1b00241d8adc62','v_user_info','user_email','邮箱',416108109,'','',105,105,105,105,105,0),(655,'07ae29adbd6f11e28f1b00241d8adc62','v_user_info','zid','',416108108,'','',0,0,0,0,0,0),(660,'0c738ef1bd6f11e28f1b00241d8adc62','v_user_comment','comment_date','时间',416108109,'','',106,106,106,106,106,0),(661,'0c7390f8bd6f11e28f1b00241d8adc62','v_user_comment','info_title','信息标题',416108109,'','',104,104,104,104,104,417020012),(662,'0c7391bfbd6f11e28f1b00241d8adc62','v_user_comment','info_type','类型',416108109,'','',0,107,107,107,107,0),(663,'0c739287bd6f11e28f1b00241d8adc62','v_user_comment','info_uid','',416108109,'','',0,109,109,109,109,0),(664,'0c739340bd6f11e28f1b00241d8adc62','v_user_comment','info_url','地址',416108109,'','',0,105,105,105,105,0),(665,'0c7393f5bd6f11e28f1b00241d8adc62','v_user_comment','note','内容',416108109,'','',108,108,108,108,108,417020012),(666,'0c7394a5bd6f11e28f1b00241d8adc62','v_user_comment','uid','',416108108,'','',0,102,102,102,102,0),(667,'0c73954cbd6f11e28f1b00241d8adc62','v_user_comment','user_uid','',416108109,'','',0,103,103,103,103,0),(668,'0c7395f2bd6f11e28f1b00241d8adc62','v_user_comment','zid','',416108108,'','',0,0,0,0,0,0),(675,'1a214d0ebe2f11e28f1b00241d8adc62','v_info_notify','content','内容',416108105,'','',0,105,105,105,105,0),(676,'1a214ff3be2f11e28f1b00241d8adc62','v_info_notify','create_time','时间',416108104,'','',107,107,107,107,107,0),(677,'1a2150fbbe2f11e28f1b00241d8adc62','v_info_notify','note','导语',416108109,'','',0,0,0,104,104,0),(678,'1a2151ccbe2f11e28f1b00241d8adc62','v_info_notify','orderid','排序',416108109,'','',106,106,106,106,106,0),(679,'1a2152a1be2f11e28f1b00241d8adc62','v_info_notify','title','标题',416108109,'','',103,103,103,103,103,0),(680,'1a21537fbe2f11e28f1b00241d8adc62','v_info_notify','uid','',416108108,'','',0,102,102,102,102,0),(681,'1a215438be2f11e28f1b00241d8adc62','v_info_notify','zid','',416108108,'','',0,0,0,0,0,0),(682,'7cd2cf7fbe3311e28f1b00241d8adc62','v_info_img','note','描述',416108120,'','',0,107,107,107,107,0),(683,'0a5a30e6c0a411e28f1b00241d8adc62','v_info_images','position_cid','图片位置',416108119,'source_you_class','3035',106,106,106,106,106,0),(736,'29da24f2caea11e2956f1dd7dfd59052','v_y_info','area','地区',416108119,'source_y_area','',0,105,105,105,105,0),(737,'29dc313ecaea11e2956f1dd7dfd59052','v_y_info','domain','二级域名',416108109,'','',0,104,104,104,104,0),(738,'29dca718caea11e2956f1dd7dfd59052','v_y_info','field_coupon','优惠信息',416108109,'','',0,163,163,163,163,0),(739,'29dcaad8caea11e2956f1dd7dfd59052','v_y_info','field_description','养老院简介',416108105,'','',0,165,165,165,165,0),(740,'29dcad12caea11e2956f1dd7dfd59052','v_y_info','field_eat','一 周食谱',416108105,'','',0,179,179,179,179,0),(741,'29dcaf06caea11e2956f1dd7dfd59052','v_y_info','field_live','入住须知',416108105,'','',0,166,166,166,166,0),(742,'29dcafd8caea11e2956f1dd7dfd59052','v_y_info','field_notice','入住其他注意事项',416108109,'','',0,178,178,178,178,0),(743,'29dcb1cccaea11e2956f1dd7dfd59052','v_y_info','field_service','服务指南',416108105,'','',0,167,167,167,167,0),(744,'29dcb924caea11e2956f1dd7dfd59052','v_y_info','field_welcome','欢迎词',416108105,'','',0,164,164,164,164,0),(745,'29dcb99ccaea11e2956f1dd7dfd59052','v_y_info','h_info_address','机构地址',416108109,'','',0,111,111,111,111,0),(746,'29dcbb22caea11e2956f1dd7dfd59052','v_y_info','h_info_link','机构法人姓名',416108109,'','',0,110,110,110,110,0),(747,'29dcbb90caea11e2956f1dd7dfd59052','v_y_info','h_info_name','机构名称',416108109,'','',0,109,109,109,109,0),(748,'29dcbbf4caea11e2956f1dd7dfd59052','v_y_info','link_address','地址',416108120,'','',0,168,168,168,168,0),(749,'29dcbc4ecaea11e2956f1dd7dfd59052','v_y_info','link_email','电子邮箱',416108109,'','',0,176,176,176,176,0),(750,'29dcbca8caea11e2956f1dd7dfd59052','v_y_info','link_people_one','联系人1',416108109,'','',0,171,171,171,171,0),(751,'29dcbd0ccaea11e2956f1dd7dfd59052','v_y_info','link_people_two','联系人2',416108109,'','',0,173,173,173,173,0),(752,'29dcbd70caea11e2956f1dd7dfd59052','v_y_info','link_phone_one','联系人1手机',416108109,'','',0,172,172,172,172,0),(753,'29dcbdd4caea11e2956f1dd7dfd59052','v_y_info','link_phone_two','联系人2手机',416108109,'','',0,174,174,174,174,0),(754,'29dcbe38caea11e2956f1dd7dfd59052','v_y_info','link_qqno','QQ号码',416108109,'','',0,177,177,177,177,0),(755,'29dcbe92caea11e2956f1dd7dfd59052','v_y_info','link_telephone','固定电话',416108109,'','',0,170,170,170,170,0),(756,'29dcbef6caea11e2956f1dd7dfd59052','v_y_info','link_travel','交通',416108120,'','',0,175,175,175,175,0),(757,'29dcbf5acaea11e2956f1dd7dfd59052','v_y_info','link_zipcode','邮编',416108109,'','',0,169,169,169,169,0),(758,'29dcbfb4caea11e2956f1dd7dfd59052','v_y_info','money_cid','价格范围',416108103,'source_you_class','3251',0,106,106,106,106,0),(759,'29dcc018caea11e2956f1dd7dfd59052','v_y_info','name','养老院名称',416108109,'','',103,103,103,103,103,0),(760,'29dcc072caea11e2956f1dd7dfd59052','v_y_info','peopletype_cid','老人的情况\n',416108103,'source_you_class','3252',0,107,107,107,107,0),(761,'29dcc0cccaea11e2956f1dd7dfd59052','v_y_info','q_bednumber','床位数量\n',416108109,'','',0,113,113,113,113,0),(762,'29dcc130caea11e2956f1dd7dfd59052','v_y_info','q_doc_big_near','最近三甲医院',416108109,'','',0,152,152,152,152,0),(763,'29dcc18acaea11e2956f1dd7dfd59052','v_y_info','q_doc_big_range','最近三甲距离（米）',416108109,'','',0,153,153,153,153,0),(764,'29dcc1eecaea11e2956f1dd7dfd59052','v_y_info','q_doc_build_flag','有无健身场所',416108109,'source_you_class','3001',0,157,157,157,157,0),(765,'29dcc2cacaea11e2956f1dd7dfd59052','v_y_info','q_doc_build_things','健身器械有',416108109,'','',0,158,158,158,158,0),(766,'29dcc342caea11e2956f1dd7dfd59052','v_y_info','q_doc_hospital_near','最近社区医院',416108109,'','',0,150,150,150,150,0),(767,'29dcc39ccaea11e2956f1dd7dfd59052','v_y_info','q_doc_hospital_range','最近社区医院距离（米）',416108109,'','',0,151,151,151,151,0),(768,'29dcc400caea11e2956f1dd7dfd59052','v_y_info','q_doc_people_a',' 医师（人）',416108109,'','',0,132,132,132,132,0),(769,'29dcc464caea11e2956f1dd7dfd59052','v_y_info','q_doc_people_b','护士（人）',416108109,'','',0,133,133,133,133,0),(770,'29dcc4c8caea11e2956f1dd7dfd59052','v_y_info','q_doc_people_c','康复师（人）',416108109,'','',0,134,134,134,134,0),(771,'29dcc522caea11e2956f1dd7dfd59052','v_y_info','q_doc_people_d','主治医师（人）',416108109,'','',0,135,135,135,135,0),(772,'29dcc57ccaea11e2956f1dd7dfd59052','v_y_info','q_doc_people_e',' 护师（人）',416108109,'','',0,136,136,136,136,0),(773,'29dcc5e0caea11e2956f1dd7dfd59052','v_y_info','q_doc_people_f','副主任医师（人）',416108109,'','',0,137,137,137,137,0),(774,'29dcc644caea11e2956f1dd7dfd59052','v_y_info','q_doc_people_g','副主任护师（人）\n',416108109,'','',0,138,138,138,138,0),(775,'29dcc69ecaea11e2956f1dd7dfd59052','v_y_info','q_doc_people_h','主任医师（人）',416108109,'','',0,139,139,139,139,0),(776,'29dcc9a0caea11e2956f1dd7dfd59052','v_y_info','q_doc_people_i','主任护师（人）',416108109,'','',0,140,140,140,140,0),(777,'29dcca0ecaea11e2956f1dd7dfd59052','v_y_info','q_doc_person_a','兼职医师（人）',416108109,'','',0,141,141,141,141,0),(778,'29dcca72caea11e2956f1dd7dfd59052','v_y_info','q_doc_person_b','兼职护士（人）',416108109,'','',0,142,142,142,142,0),(779,'29dccacccaea11e2956f1dd7dfd59052','v_y_info','q_doc_person_c','兼职康复师（人）',416108109,'','',0,143,143,143,143,0),(780,'29dccb26caea11e2956f1dd7dfd59052','v_y_info','q_doc_person_d','兼职主治医师（人）',416108109,'','',0,144,144,144,144,0),(781,'29dccb8acaea11e2956f1dd7dfd59052','v_y_info','q_doc_person_e','兼职护师（人）',416108109,'','',0,145,145,145,145,0),(782,'29dccbeecaea11e2956f1dd7dfd59052','v_y_info','q_doc_person_f','兼职副主任医师（人）',416108109,'','',0,146,146,146,146,0),(783,'29dccc48caea11e2956f1dd7dfd59052','v_y_info','q_doc_person_g','兼职副主任护师（人）',416108109,'','',0,147,147,147,147,0),(784,'29dcccaccaea11e2956f1dd7dfd59052','v_y_info','q_doc_person_h','兼职主任医师（人）',416108109,'','',0,148,148,148,148,0),(785,'29dccd06caea11e2956f1dd7dfd59052','v_y_info','q_doc_person_i','兼职主任护师（人）',416108109,'','',0,149,149,149,149,0),(786,'29dcce82caea11e2956f1dd7dfd59052','v_y_info','q_doc_play_things','康复器材有',416108109,'','',0,156,156,156,156,0),(787,'29dccef0caea11e2956f1dd7dfd59052','v_y_info','q_doc_quick_names','快速就诊协议医疗机构名称',416108109,'','',0,154,154,154,154,0),(788,'29dccf54caea11e2956f1dd7dfd59052','v_y_info','q_doc_room_cids','医疗场所',416108103,'source_you_class','3257',0,131,131,131,131,0),(789,'29dccfb8caea11e2956f1dd7dfd59052','v_y_info','q_doc_room_flag','有无康复场地',416108119,'source_you_class','3001',0,155,155,155,155,0),(790,'29dcd01ccaea11e2956f1dd7dfd59052','v_y_info','q_eat_money_day','提供每日饮食标准（元/日）',416108109,'','',0,123,123,123,123,0),(791,'29dcd076caea11e2956f1dd7dfd59052','v_y_info','q_eat_money_month','伙食费（元/月）',416108109,'','',0,122,122,122,122,0),(792,'29dcd0dacaea11e2956f1dd7dfd59052','v_y_info','q_eat_service_flag','是否提供点餐服务',416108119,'source_you_class','3001',0,124,124,124,124,0),(793,'29dcd13ecaea11e2956f1dd7dfd59052','v_y_info','q_goto_health_flag','是否需要健康证明',416108119,'source_you_class','3001',0,159,159,159,159,0),(794,'29dcd198caea11e2956f1dd7dfd59052','v_y_info','q_goto_money_into','入住押金（元）\n',416108109,'','',0,160,160,160,160,0),(795,'29dcd1f2caea11e2956f1dd7dfd59052','v_y_info','q_goto_money_keep','医疗备用金（元）\n',416108109,'','',0,161,161,161,161,0),(796,'29dcd256caea11e2956f1dd7dfd59052','v_y_info','q_money_room_more','多人间（元/月）',416108109,'','',0,117,117,117,117,0),(797,'29dcd2bacaea11e2956f1dd7dfd59052','v_y_info','q_money_room_one','单人间（元/月）',416108109,'','',0,114,114,114,114,0),(798,'29dcd314caea11e2956f1dd7dfd59052','v_y_info','q_money_room_three','三人间（元/月）',416108109,'','',0,116,116,116,116,0),(799,'29dcd378caea11e2956f1dd7dfd59052','v_y_info','q_money_room_two','双人间（元/月）',416108109,'','',0,115,115,115,115,0),(800,'29dcd3d2caea11e2956f1dd7dfd59052','v_y_info','q_money_service_include','服务费用含：',416108109,'','',0,118,118,118,118,0),(801,'29dcd436caea11e2956f1dd7dfd59052','v_y_info','q_money_service_more','一对多护理费（元/天）',416108109,'','',0,121,121,121,121,0),(802,'29dcd49acaea11e2956f1dd7dfd59052','v_y_info','q_money_service_one','一对一护理费（元/天）',416108109,'','',0,119,119,119,119,0),(803,'29dcd4fecaea11e2956f1dd7dfd59052','v_y_info','q_money_service_two','一对二护理费（元/天）',416108109,'','',0,120,120,120,120,0),(804,'29dcd558caea11e2956f1dd7dfd59052','v_y_info','q_play_room_cids','娱乐场所和配套设施',416108103,'source_you_class','3256',0,129,129,129,129,0),(805,'29dcd616caea11e2956f1dd7dfd59052','v_y_info','q_play_service_name','定期娱乐活动名称',416108109,'','',0,130,130,130,130,0),(806,'29dcd77ecaea11e2956f1dd7dfd59052','v_y_info','q_property_cid','机构性质',416108119,'source_you_class','3253',0,112,112,112,112,0),(807,'29dcd828caea11e2956f1dd7dfd59052','v_y_info','q_room_bath_cid','有无洗浴间\n\n',416108119,'source_you_class','3254',0,126,126,126,126,0),(808,'29dcd8a0caea11e2956f1dd7dfd59052','v_y_info','q_room_telephone_cid','有无电话',416108119,'source_you_class','3254',0,128,128,128,128,0),(809,'29dcdc56caea11e2956f1dd7dfd59052','v_y_info','q_room_television_cid','有无电视机\n',416108119,'source_you_class','3254',0,127,127,127,127,0),(810,'29dcdcc4caea11e2956f1dd7dfd59052','v_y_info','q_room_toilet_cid','有无卫生间',416108119,'source_you_class','3254',0,125,125,125,125,0),(811,'29dcdd28caea11e2956f1dd7dfd59052','v_y_info','q_service_cids','提供的特色服务',416108103,'source_you_class','3258',0,162,162,162,162,0),(812,'29dcdd82caea11e2956f1dd7dfd59052','v_y_info','score','评分',416108109,'','',0,108,108,108,108,0),(813,'29dcdde6caea11e2956f1dd7dfd59052','v_y_info','uid','',416108108,'','',0,102,102,102,102,0),(814,'29dcde4acaea11e2956f1dd7dfd59052','v_y_info','zid','',416108108,'','',0,0,0,0,0,0),(815,'29dcd0dacaea11z2956f1dd7dfd59052','v_y_info','q_eat_special_cids','特殊饮食',416108103,'source_you_class','3255',0,124,124,124,124,0),(816,'da0e0f0ccb6511e2932684b2f09a332f','v_y_info','adddate','添加时间',416108104,'','',181,181,181,181,181,0),(817,'002fdf28cb6911e2932684b2f09a332f','v_y_info','main_img','主图(400x300)',416108121,'','',182,182,182,182,182,0),(818,'d7a388f6cb6911e2932684b2f09a332f','v_y_img','file_order','图片顺序',416108109,'','',105,105,105,105,105,0),(819,'d7a38c02cb6911e2932684b2f09a332f','v_y_img','file_url','图片地址(800X600)',416108121,'','',104,104,104,104,104,0),(820,'d7a38c98cb6911e2932684b2f09a332f','v_y_img','info_uid','',416108108,'','',0,103,103,103,103,0),(821,'d7a38dcecb6911e2932684b2f09a332f','v_y_img','uid','',416108108,'','',0,102,102,102,102,0),(822,'d7a38e50cb6911e2932684b2f09a332f','v_y_img','zid','',416108108,'','',0,0,0,0,0,0),(823,'9673a20ecc5d11e2b480931095bbeb6a','v_y_info','icon_cids','小图标',416108103,'source_you_class','3259',109,109,109,109,109,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COMMENT='操作表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zweb_options`
--

LOCK TABLES `zweb_options` WRITE;
/*!40000 ALTER TABLE `zweb_options` DISABLE KEYS */;
INSERT INTO `zweb_options` VALUES (1,'97b1ba1aa90111e2bb7900241d8adc62','system_table','添加',416120103,415101001,''),(3,'97b1bcc3a90111e2bb7900241d8adc62','system_table','刷新缓存',416120103,415101006,'zen.page.call(\'/zyou/func-system_table-[t@uid]-func_do=refreshcache\')'),(4,'97b1bd29a90111e2bb7900241d8adc62','system_table','提交',416120105,415101019,''),(5,'97b1bd98a90111e2bb7900241d8adc62','system_table','提交',416120101,415101019,''),(6,'97b1be31a90111e2bb7900241d8adc62','system_table','修改字段',416120107,415101012,'chart-system_fields-[t@uid]-view_code=[code]'),(7,'97b1be93a90111e2bb7900241d8adc62','system_fields','修改',416120107,415101305,''),(9,'97b1be31a90111e2bb7900241d8adc63','system_table','按钮视图',416120107,415101012,'chart-system_options-[t@uid]-view_code=[code]'),(10,'97b1bef4a90111e2bb7900241d8adc64','system_table','修改',416120107,415101305,''),(11,'x7b1ba1aa90111e2bb7900241d8adc62','system_options','添加',416120103,415101001,'view_code=[p@view_code]'),(12,'x7b1bd98a90111e2bb7900241d8adc62','system_options','提交',416120101,415101019,''),(13,'441377762b1444379a6421e0f0255e59','system_options','修改',416120107,415101305,''),(14,'441377762b1444379a6421e0f0255159','system_options','提交',416120105,415101019,''),(15,'2e2453ed24744fedb02892a4a3dbf079','system_fields','提交',416120105,415101019,''),(16,'3d7b8cc0cf114270855800ef7e8040fc','test_view','添加',416120103,415101001,''),(17,'842ebd8e2da44d8586bb2bf108283dda','test_view','提交',416120101,415101019,''),(18,'cbcaccfceed442a58ed58095508c11be','test_view','修改',416120107,415101305,''),(19,'5623140ec48d44b29d71584442186caa','test_view','提交',416120105,415101019,''),(20,'bf161b6107e7424798b6b607d540957c','v_you_class','新增',416120103,415101001,''),(21,'9240fb14adfc445b93894f08a80acbf5','v_you_class','提交',416120101,415101019,''),(22,'4012c8dcbdf14f35850642ae9202334f','v_you_class','修改',416120107,415101305,''),(23,'2572adf6e0de42739ee1c1d24ccd4920','v_you_class','提交',416120105,415101019,''),(24,'b353eb93eafd4a6b9d5ca5f55b1b22a4','system_fields','刷新表结构',416120103,415101006,'zen.page.call(\'/zyou/func-system_table-[t@uid]-func_do=refreshdata&view_code=[p@view_code]\')'),(25,'b40a9aa7964b4eb3bceb30734cd23c7d','v_info_adv','添加',416120103,415101001,''),(26,'7da7d48dc0e64f1d83f41d5e5e606789','v_info_adv','提交',416120101,415101019,''),(27,'2059b82a912342cab4dcb0dc697d5765','v_info_adv','提交',416120105,415101019,''),(28,'884b025efd78428e9e9250def3ccf29e','v_info_adv','修改',416120107,415101305,''),(29,'570d48cba7614cbb8d289f5805bc08af','v_info_news','提交',416120105,415101019,''),(30,'2ef3a9ce7988474ebdaf3225024f5c1e','v_info_news','提交',416120101,415101019,''),(31,'40b42b3fb3b54e39a11865df081c9656','v_info_news','新增',416120103,415101001,''),(32,'6654275364e84c678cc4e629aed30f45','v_info_news','修改',416120107,415101305,''),(33,'c66720f4f4044fac81a13ad502057378','v_info_notice','提交',416120101,415101019,''),(34,'4994d35473ff483cb00ce3d8dd722334','v_info_notice','提交',416120105,415101019,''),(35,'12f0e78bf79349da936269783b860dad','v_info_notice','修改',416120107,415101305,''),(36,'2a823576faff47ef8fc7d8a5fe00e7e8','v_info_notice','新增',416120103,415101001,''),(37,'ab26a839acab469facdae5bf7fb3ba3f','v_info_auction','添加',416120103,415101001,''),(38,'755cbefec4f54b58a876bf928b484260','v_info_auction','修改',416120107,415101305,''),(39,'e7c4f8c4662e4d2f8a4ec2ecb4b3e1a7','v_info_auction','提交',416120101,415101019,''),(40,'42257a77372e495c852ace99035d6bb9','v_info_auction','提交',416120105,415101019,''),(41,'545648fb58d0433f836299b3ec23641e','v_info_special','添加',416120103,415101001,''),(43,'befd2434cf034707a2dfa730642b6c97','v_info_special','提交',416120101,415101019,''),(44,'5ef4236db21743218c6bec974ed8919a','v_info_special','提交',416120105,415101019,''),(45,'d8479fbe6f7b43e8bac89f236ac1651f','v_info_special','专场拍品',416120107,415101012,'chart-v_info_good-[t@uid]-special_uid=[uid]&auction_uid=[auction_uid]'),(46,'cfe2821b66714c198be60eb1a46dd2be','v_info_special','修改',416120107,415101305,''),(47,'25da3ec742b843e8acf38f7bf4fb95db','v_info_good','添加',416120103,415101001,'special_uid=[p@special_uid]&auction_uid=[p@auction_uid]'),(48,'ba6f79a6f3ac4d5ab29dc487a894de33','v_info_good','提交',416120101,415101019,''),(49,'99b323ded28b4f1890c0eb94af88d55e','v_info_good','修改',416120107,415101305,''),(50,'307a27d1e4a948dca2da1479485250fb','v_info_good','提交',416120105,415101019,''),(51,'38e8540cfa934bdb88f99994d3d33012','v_info_product','添加',416120103,415101001,'product_people_uid=[p@product_people_uid]'),(53,'45324ba53f31401784ebc4d4b99ef199','v_info_product','提交',416120101,415101019,''),(54,'4e47a115a5d4403faf6d983b81892ab8','v_info_product','提交',416120105,415101019,''),(55,'145c8b6769274441b174b7bd3cd11e1d','v_info_product','修改',416120107,415101305,''),(56,'8198435db3a74b97accf8465f06113c2','v_info_people','添加',416120103,415101001,''),(57,'281dbe58b47b4cf9a3d633921c3ae1f1','v_info_people','作品集',416120107,415101012,'chart-v_info_product-[t@uid]-product_people_uid=[uid]'),(58,'7908882a632840df9b68e946532ed3b8','v_info_people','修改',416120107,415101305,''),(59,'26043b1f213b47ae8161e196c314888f','v_info_people','提交',416120101,415101019,''),(60,'38ecc73a61c2412ea25f972a072408ce','v_info_people','提交',416120105,415101019,''),(61,'8b8f05aa73fe4c05831000dd2f4b6fe8','v_info_images','新增',416120103,415101001,''),(62,'a363bdca7f54410f9c11b0e7ae198023','v_info_images','图片列表',416120107,415101012,'chart-v_info_img-[t@uid]-images_uid=[uid]'),(63,'3ead06699e284778a06a32fb74456ce1','v_info_images','修改',416120107,415101305,''),(64,'e8514e8bc10345f986b2d5b8cbbaa9b1','v_info_images','提交',416120101,415101019,''),(65,'97a05ee78e9f48798f8a0081b75e9072','v_info_images','提交',416120105,415101019,''),(66,'7c284a4e2e194c3fb55acb9327609f8a','v_info_img','新增',416120103,415101001,'images_uid=[p@images_uid]'),(67,'3c679c62a17d42199e0f7516e829ca06','v_info_img','修改',416120107,415101305,''),(68,'d6f8ac8cef944972a2cc5d54bd2aa34d','v_info_img','提交',416120101,415101019,''),(69,'db4da621d07e4478a18c252a5d7fbcdf','v_info_img','提交',416120105,415101019,''),(70,'a636f5a5bc44458cb74b3f7d6549f32b','v_info_static_nav','修改',416120107,415101305,''),(71,'36c1d5d43be541a4b5db0af5a98a36e9','v_info_static_nav','提交',416120105,415101019,''),(72,'9aa0a18fac5c4b44a48765113ed5bf37','v_info_video','添加',416120103,415101001,''),(73,'13e2a875882d4a72a151a54e7691150e','v_info_video','修改',416120107,415101305,''),(74,'c33e7f42d3934daaa5d318dc137a6779','v_info_video','提交',416120101,415101019,''),(75,'3a67044ca22c4728b16b9a50b784cfb6','v_info_video','提交',416120105,415101019,''),(76,'e727a76f765143d7afbf5f72bc88e63b','v_info_static_club','修改',416120107,415101305,''),(77,'03955f53655d4791a8bb022b11feb02a','v_info_static_club','提交',416120105,415101019,''),(78,'e5e8e173f5a448748d19632abf4ed389','v_info_static_books','修改',416120107,415101305,''),(79,'c71498e3047142ba8a1802800413092c','v_info_static_books','提交',416120105,415101019,''),(80,'2948c27557f843b79c7a6511fe943fdd','v_info_book','添加',416120103,415101001,''),(81,'9a7dc99991f54725b2a5a95619227969','v_info_book','修改',416120107,415101305,''),(82,'4ae37f4422984021a4676ead38d3cc9a','v_info_book','提交',416120101,415101019,''),(83,'e2dcfb66d7fc43e4b8dfa6df70bb1514','v_info_book','提交',416120105,415101019,''),(84,'61f5e078e807466983847ba7acdd93da','v_user_info','添加',416120103,415101001,''),(85,'1e9a5abad03c496db11dc8473972a216','v_user_info','修改',416120107,415101305,''),(86,'5dbbf4b6df454a47889d1a994809ecde','v_user_info','提交',416120101,415101019,''),(87,'938d4cc2da9a4728b1803da61f5bc5ed','v_user_info','提交',416120105,415101019,''),(88,'c522667e7f4b46f1b4c9fb8fc6568c3d','v_info_notify','添加',416120103,415101001,''),(89,'755e89aba2a44e3a90b54f3cd45284c8','v_info_notify','修改',416120107,415101305,''),(90,'06996dd84edc491f92feda9dc2ce86f3','v_info_notify','提交',416120101,415101019,''),(91,'dd6ee9d2a55641fe8873ddc676e01930','v_info_notify','提交',416120105,415101019,''),(94,'d4ce573dd272412ba7df2965eb7d45b0','v_info_good','批量上传',416120103,415101006,'zen.page.dialog(\'newsinfo/dialoggoods-dialoggoods-[p@special_uid]-[p@auction_uid]\')'),(95,'d8fe88450b9f4f929b39f360f0baf82b','v_user_comment','文章链接',416120107,415101012,'/newsinfo/[info_url]'),(96,'e8c1375f51b045109c2dcb98892e8ea3','v_user_comment','删除',416120107,415101304,''),(97,'4f35159907344e77be01b65118319cba','system_options','初始化按钮',416120103,415101006,'zen.page.call(\'/zyou/func-system_table-[t@uid]-func_do=refreshoptions&view_code=[p@view_code]\')'),(98,'23889937ff4f4a11b4aa24117a315286','v_y_info','添加',416120103,415101001,''),(99,'ca7ef9859f1649cfb417801e0a66cc8b','v_y_info','图片集',416120107,415101012,'chart-v_y_img-[t@uid]-info_uid=[uid]'),(100,'b93ce4fcac75409488671ce1bec61c9b','v_y_info','提交',416120101,415101019,''),(101,'0e96331b4b404df7ac7c08bec3f6cf0c','v_y_info','提交',416120105,415101019,''),(102,'992ca9daf6454808ae54b08b2e7a2a4d','v_y_img','添加',416120103,415101001,'info_uid=[p@info_uid]'),(103,'fb3f9587d6f547ebb99026dc718ec1b5','v_y_img','修改',416120107,415101305,''),(104,'01cfe2c3c5324644b907db365d7dfa28','v_y_img','提交',416120101,415101019,''),(105,'e4375290570a4a899c9ae504f8a9c3fa','v_y_img','提交',416120105,415101019,''),(106,'35e9774a97854dd786c9348145de1c66','v_y_img','删除',416120107,415101304,''),(107,'b0c9fc2e1bfa4207a44ae8add5a89f19','v_y_info','修改',416120107,415101305,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='数据源定义';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zweb_source`
--

LOCK TABLES `zweb_source` WRITE;
/*!40000 ALTER TABLE `zweb_source` DISABLE KEYS */;
INSERT INTO `zweb_source` VALUES (1,'8a8dc993a90111e2bb7900241d8adc62',404119115,'source_system_define','系统定义类型表（查询用）','name','code','zsrnpr_define','code={0}','left(code,6)=\'{0}\''),(2,'8a8dc993a90111e2bb7900241d8adc63',404119115,'source_you_class','管理分类用','name','code','you_class','code={0}','parent_code=\'{0}\''),(3,'8a8dc993a90111e2bb7900241d8adc64',404119115,'source_good_auction','所属拍卖会','name','uid','info_auction','uid={0}','1=1'),(4,'8a8dc993a90111e2bb7900241d8adc65',404119115,'source_good_special','所属专场','name','uid','info_special','uid={0}','1=1'),(5,'8a8dc993a90111e2bb7900241d8adc66',404119115,'source_info_images','所属图片集','title','uid','info_images','uid={0}','1=1'),(6,'8a8dc993a90051e2bb7900241d8adc66',404119115,'source_y_area','地址信息','name','code','y_area','code={0}','1=1');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='视图表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zweb_view`
--

LOCK TABLES `zweb_view` WRITE;
/*!40000 ALTER TABLE `zweb_view` DISABLE KEYS */;
INSERT INTO `zweb_view` VALUES (1,'9a4f1172a90111e2bb7900241d8adc62','system_table','系统视图','zweb_view'),(2,'9a4f1391a90111e2bb7900241d8adc62','system_fields','视图字段','zweb_fields'),(3,'9a4f1409a90111e2bb7900241d8adc62','system_options','视图操作','zweb_options'),(8,'790898b7b5b84b6ea09bbf6acdf61b7e','test_view','测试视图 ','test_table'),(9,'2837f1b10b3744bd824a3a579ca0494c','v_you_class','分类视图','you_class'),(10,'1c9cea53cdcd4fdf997839c2ba9333bb','v_info_adv','首页轮播图','info_adv'),(11,'f01c1763e7374bfa87db2120d04601e7','v_info_news','博观资讯','info_news'),(12,'ce40de639e3b441daa64eb6970ad8c9a','v_info_notice','博观公告','info_notice'),(13,'0bf3cb81b27248b99c19397643c75135','v_info_auction','拍卖会列表','info_auction'),(14,'fc0992dc8084438b9593d6cedc193ae2','v_info_special','专场列表','info_special'),(15,'965c4afb65604590ae5ad0ec2dcdaf07','v_info_good','拍品明细','info_good'),(16,'e4dc7f63f33e4f38b291e352f7dc6e34','v_info_people','名人堂','info_people'),(17,'06d21980a7fe45a5a581b244e9773c6a','v_info_product',' 名人作品集','info_product'),(18,'2d005754e9d9472bbf5c1156c681cd6f','v_info_images','图片集','info_images'),(19,'3f99af67e2454defafb971f6e9dd51d4','v_info_img','图片列表','info_img'),(20,'5a81f73fcbbd472e9fc0a8c7c1a3ef51','v_info_static_nav','网站底部导航','info_static'),(21,'ba4462399ab74015ba5e791154dfe202','v_info_video','俱乐部课程','info_video'),(23,'fa71628fda514c50978ad8ef7a2bdcfd','v_info_book','博观书房','info_book'),(24,'75bc1fd9bccb4a8e926924bf5655431b','v_info_static_club','俱乐部信息','info_static'),(25,'1c84d837b6eb42558f3e6d77a09d726c','v_info_static_books','固定位置广告','info_static'),(26,'a109b6415de24878bb61bac0d38b9843','v_user_info','会员列表','user_info'),(27,'75d9714860274e9d96b0b30d13616cf1','v_user_comment','评论列表','user_comment'),(28,'4005482880d546daa87df5b078a895e1','v_info_notify','俱乐部通知','info_notify'),(29,'d0bc82da50384cbe9eedb9ef1ce5f590','v_y_info','信息列表','y_info'),(30,'c314537bdfbf40fb869f81138b80a108','v_y_img','养老院图片','y_img');
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

-- Dump completed on 2013-06-08  0:15:16
