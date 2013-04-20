-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- 涓绘満: localhost
-- 鐢熸垚鏃ユ湡: 2013 骞?04 鏈?21 鏃?02:35
-- 鏈嶅姟鍣ㄧ増鏈? 5.5.25a
-- PHP 鐗堟湰: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 鏁版嵁搴? `zdata`
--

-- --------------------------------------------------------

--
-- 琛ㄧ殑缁撴瀯 `zdata_column`
--

CREATE TABLE IF NOT EXISTS `zdata_column` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) NOT NULL DEFAULT '',
  `server_name` varchar(45) NOT NULL DEFAULT '' COMMENT '鏈嶅姟鍣ㄥ悕绉?,
  `table_name` varchar(45) NOT NULL DEFAULT '' COMMENT '琛ㄥ悕',
  `column_name` varchar(45) NOT NULL DEFAULT '' COMMENT '鍒楀悕',
  `did_null_able` int(11) DEFAULT '0' COMMENT '鏄惁涓虹┖',
  `did_column_type` int(11) DEFAULT '0' COMMENT '鍒楃被鍨?,
  `length_max` int(11) DEFAULT '0' COMMENT '鏈€澶ч暱搴?,
  `length_scale` int(11) DEFAULT '0' COMMENT '绗簩闀垮害',
  `note` varchar(100) DEFAULT '' COMMENT '鍚嶇О',
  `orderid` int(11) DEFAULT '0' COMMENT '鎺掑簭',
  PRIMARY KEY (`zid`),
  UNIQUE KEY `table_name` (`table_name`,`column_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='鏁版嵁鍒楄〃' AUTO_INCREMENT=1732 ;

--
-- 杞瓨琛ㄤ腑鐨勬暟鎹?`zdata_column`
--

INSERT INTO `zdata_column` (`zid`, `uid`, `server_name`, `table_name`, `column_name`, `did_null_able`, `did_column_type`, `length_max`, `length_scale`, `note`, `orderid`) VALUES
(1605, '4946077ea9cb11e294f60023187c448b', 'zdata', 'zdata_column', 'zid', 400001002, 404103109, 0, 0, '', 1),
(1606, '494e3acaa9cb11e294f60023187c448b', 'zdata', 'zdata_column', 'uid', 400001002, 404103103, 32, 0, '', 2),
(1607, '494e43fca9cb11e294f60023187c448b', 'zdata', 'zdata_column', 'server_name', 400001002, 404103122, 45, 0, '鏈嶅姟鍣ㄥ悕绉?, 3),
(1608, '49531434a9cb11e294f60023187c448b', 'zdata', 'zdata_column', 'table_name', 400001002, 404103122, 45, 0, '琛ㄥ悕', 4),
(1609, '49547dbea9cb11e294f60023187c448b', 'zdata', 'zdata_column', 'column_name', 400001002, 404103122, 45, 0, '鍒楀悕', 5),
(1610, '49548548a9cb11e294f60023187c448b', 'zdata', 'zdata_column', 'did_null_able', 400001001, 404103109, 0, 0, '鏄惁涓虹┖', 6),
(1611, '49566ffaa9cb11e294f60023187c448b', 'zdata', 'zdata_column', 'did_column_type', 400001001, 404103109, 0, 0, '鍒楃被鍨?, 7),
(1612, '4956bfc6a9cb11e294f60023187c448b', 'zdata', 'zdata_column', 'length_max', 400001001, 404103109, 0, 0, '鏈€澶ч暱搴?, 8),
(1613, '4957d71ba9cb11e294f60023187c448b', 'zdata', 'zdata_column', 'length_scale', 400001001, 404103109, 0, 0, '绗簩闀垮害', 9),
(1614, '4958ee7ea9cb11e294f60023187c448b', 'zdata', 'zdata_column', 'note', 400001001, 404103122, 100, 0, '鍚嶇О', 10),
(1615, '495b13b0a9cb11e294f60023187c448b', 'zdata', 'zdata_column', 'orderid', 400001001, 404103109, 0, 0, '鎺掑簭', 11),
(1616, '495b2df3a9cb11e294f60023187c448b', 'zdata', 'zdata_server', 'zid', 400001002, 404103109, 0, 0, '', 1),
(1617, '495b4b45a9cb11e294f60023187c448b', 'zdata', 'zdata_server', 'uid', 400001002, 404103103, 32, 0, '', 2),
(1618, '495b6d88a9cb11e294f60023187c448b', 'zdata', 'zdata_server', 'name', 400001002, 404103122, 100, 0, '鍚嶇О', 3),
(1619, '495b7535a9cb11e294f60023187c448b', 'zdata', 'zdata_server', 'jdbc_class', 400001002, 404103122, 100, 0, '绫诲悕', 4),
(1620, '495bfeeea9cb11e294f60023187c448b', 'zdata', 'zdata_server', 'jdbc_url', 400001002, 404103122, 100, 0, '鍦板潃', 5),
(1621, '495c1451a9cb11e294f60023187c448b', 'zdata', 'zdata_server', 'jdbc_user', 400001002, 404103122, 100, 0, '鐢ㄦ埛鍚?, 6),
(1622, '495c1b70a9cb11e294f60023187c448b', 'zdata', 'zdata_server', 'jdbc_password', 400001002, 404103122, 100, 0, '瀵嗙爜', 7),
(1623, '495c332da9cb11e294f60023187c448b', 'zdata', 'zdata_server', 'note', 400001002, 404103122, 1000, 0, '鎻忚堪', 8),
(1624, '495e3f3aa9cb11e294f60023187c448b', 'zdata', 'zdata_table', 'zid', 400001002, 404103109, 0, 0, '', 1),
(1625, '495e52d1a9cb11e294f60023187c448b', 'zdata', 'zdata_table', 'uid', 400001002, 404103103, 32, 0, '', 2),
(1626, '495e5944a9cb11e294f60023187c448b', 'zdata', 'zdata_table', 'code', 400001001, 404103122, 45, 0, '缂栫爜', 3),
(1627, '495e5f3da9cb11e294f60023187c448b', 'zdata', 'zdata_table', 'name', 400001001, 404103122, 100, 0, '鍚嶇О', 4),
(1628, '495e68b7a9cb11e294f60023187c448b', 'zdata', 'zdata_table', 'note', 400001001, 404103122, 100, 0, '鎻忚堪', 5),
(1629, '495e6f05a9cb11e294f60023187c448b', 'zdata', 'zsrnpr_define', 'zid', 400001002, 404103109, 0, 0, '', 1),
(1630, '495e74fda9cb11e294f60023187c448b', 'zdata', 'zsrnpr_define', 'uid', 400001002, 404103103, 32, 0, '', 2),
(1631, '495e8a59a9cb11e294f60023187c448b', 'zdata', 'zsrnpr_define', 'code', 400001002, 404103122, 100, 0, '缂栫爜', 3),
(1632, '495e8fcda9cb11e294f60023187c448b', 'zdata', 'zsrnpr_define', 'name', 400001001, 404103122, 100, 0, '鍚嶇О', 4),
(1633, '495e92c2a9cb11e294f60023187c448b', 'zdata', 'zsrnpr_define', 'value', 400001001, 404103122, 100, 0, '鍊?, 5),
(1634, '495e95f3a9cb11e294f60023187c448b', 'zdata', 'zsrnpr_define', 'note', 400001001, 404103122, 100, 0, '涓枃', 6),
(1635, '495e9a35a9cb11e294f60023187c448b', 'zdata', 'zsrnpr_define', 'level', 400001001, 404103109, 0, 0, '绾у埆', 7),
(1636, '495e9d46a9cb11e294f60023187c448b', 'zdata', 'zweb_fields', 'zid', 400001002, 404103109, 0, 0, '', 1),
(1637, '495ea02ca9cb11e294f60023187c448b', 'zdata', 'zweb_fields', 'uid', 400001001, 404103103, 32, 0, '', 2),
(1638, '495ea2fda9cb11e294f60023187c448b', 'zdata', 'zweb_fields', 'view_code', 400001001, 404103122, 100, 0, '瑙嗗浘缂栫爜', 3),
(1639, '495ea621a9cb11e294f60023187c448b', 'zdata', 'zweb_fields', 'column_name', 400001001, 404103122, 100, 0, '鏁版嵁鍒楀悕绉?, 4),
(1640, '495ea8c5a9cb11e294f60023187c448b', 'zdata', 'zweb_fields', 'field_name', 400001001, 404103122, 100, 0, '瀛楁鍚嶇О', 5),
(1641, '495eb681a9cb11e294f60023187c448b', 'zdata', 'zweb_fields', 'did_field_type', 400001001, 404103109, 0, 0, '瀛楁绫诲瀷', 6),
(1642, '495ecd6ba9cb11e294f60023187c448b', 'zdata', 'zweb_fields', 'source_code', 400001001, 404103122, 100, 0, '鏁版嵁婧愮紪鐮?, 7),
(1643, '495ed57aa9cb11e294f60023187c448b', 'zdata', 'zweb_fields', 'source_parameter', 400001001, 404103122, 500, 0, '鏁版嵁婧愬弬鏁?, 8),
(1644, '495ed9aba9cb11e294f60023187c448b', 'zdata', 'zweb_fields', 'level_grid', 400001001, 404103109, 0, 0, '鍒楄〃鏍囪', 9),
(1645, '495ee162a9cb11e294f60023187c448b', 'zdata', 'zweb_fields', 'level_add', 400001001, 404103109, 0, 0, '鎻掑叆鏍囪', 10),
(1646, '495ee600a9cb11e294f60023187c448b', 'zdata', 'zweb_fields', 'level_edit', 400001001, 404103109, 0, 0, '淇敼鏍囪', 11),
(1647, '49609f49a9cb11e294f60023187c448b', 'zdata', 'zweb_fields', 'level_book', 400001001, 404103109, 0, 0, '灞曠ず鏍囪', 12),
(1648, '4960edeca9cb11e294f60023187c448b', 'zdata', 'zweb_fields', 'level_inquire', 400001001, 404103109, 0, 0, '鏌ヨ鏉′欢', 13),
(1649, '4960f184a9cb11e294f60023187c448b', 'zdata', 'zweb_options', 'zid', 400001002, 404103109, 0, 0, '', 1),
(1650, '4960f65da9cb11e294f60023187c448b', 'zdata', 'zweb_options', 'uid', 400001001, 404103103, 32, 0, '', 2),
(1651, '4960f966a9cb11e294f60023187c448b', 'zdata', 'zweb_options', 'view_code', 400001001, 404103122, 100, 0, '瑙嗗浘缂栧彿', 3),
(1652, '4960fc4ea9cb11e294f60023187c448b', 'zdata', 'zweb_options', 'name', 400001001, 404103122, 100, 0, '鍚嶇О', 4),
(1653, '4960ff30a9cb11e294f60023187c448b', 'zdata', 'zweb_options', 'did_page_type', 400001001, 404103109, 0, 0, '', 5),
(1654, '496101d0a9cb11e294f60023187c448b', 'zdata', 'zweb_options', 'did_option_type', 400001001, 404103109, 0, 0, '', 6),
(1655, '49610464a9cb11e294f60023187c448b', 'zdata', 'zweb_options', 'params', 400001001, 404103122, 100, 0, '鎿嶄綔鍙傛暟', 7),
(1656, '49610733a9cb11e294f60023187c448b', 'zdata', 'zweb_source', 'zid', 400001002, 404103109, 0, 0, '', 1),
(1657, '4961099ba9cb11e294f60023187c448b', 'zdata', 'zweb_source', 'uid', 400001002, 404103103, 32, 0, '', 2),
(1658, '49610c0da9cb11e294f60023187c448b', 'zdata', 'zweb_source', 'did_source_type', 400001001, 404103109, 0, 0, '鏁版嵁婧愮被鍨?, 3),
(1659, '49610e7ea9cb11e294f60023187c448b', 'zdata', 'zweb_source', 'source_code', 400001001, 404103122, 45, 0, '鏁版嵁婧愮紪鍙?, 4),
(1660, '496110f1a9cb11e294f60023187c448b', 'zdata', 'zweb_source', 'source_name', 400001001, 404103122, 45, 0, '鏁版嵁婧愬悕绉?, 5),
(1661, '4961136ba9cb11e294f60023187c448b', 'zdata', 'zweb_source', 'field_text', 400001001, 404103122, 500, 0, '灞曠ず瀛楁', 6),
(1662, '4961d271a9cb11e294f60023187c448b', 'zdata', 'zweb_source', 'field_value', 400001001, 404103122, 500, 0, '瀹為檯鍊煎瓧娈?, 7),
(1663, '4961d6b2a9cb11e294f60023187c448b', 'zdata', 'zweb_source', 'from', 400001001, 404103122, 500, 0, '鏉ヨ嚜', 8),
(1664, '4961d935a9cb11e294f60023187c448b', 'zdata', 'zweb_source', 'where_book', 400001001, 404103122, 500, 0, '灞曠ず鏃?, 9),
(1665, '4961dbb0a9cb11e294f60023187c448b', 'zdata', 'zweb_source', 'where_edit', 400001001, 404103122, 500, 0, '淇敼鏃?, 10),
(1666, '4961dfdaa9cb11e294f60023187c448b', 'zdata', 'zweb_view', 'zid', 400001002, 404103109, 0, 0, '', 1),
(1667, '4961e2d0a9cb11e294f60023187c448b', 'zdata', 'zweb_view', 'uid', 400001001, 404103103, 32, 0, '', 2),
(1668, '4962fccea9cb11e294f60023187c448b', 'zdata', 'zweb_view', 'code', 400001001, 404103122, 100, 0, '缂栫爜', 3),
(1669, '4963029ba9cb11e294f60023187c448b', 'zdata', 'zweb_view', 'view_name', 400001001, 404103122, 100, 0, '瑙嗗浘鍚嶇О', 4),
(1670, '49630586a9cb11e294f60023187c448b', 'zdata', 'zweb_view', 'table_name', 400001001, 404103122, 100, 0, '琛ㄥ悕绉?, 5);

-- --------------------------------------------------------

--
-- 琛ㄧ殑缁撴瀯 `zdata_server`
--

CREATE TABLE IF NOT EXISTS `zdata_server` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '鍚嶇О',
  `jdbc_class` varchar(100) NOT NULL DEFAULT '' COMMENT '绫诲悕',
  `jdbc_url` varchar(100) NOT NULL DEFAULT '' COMMENT '鍦板潃',
  `jdbc_user` varchar(100) NOT NULL DEFAULT '' COMMENT '鐢ㄦ埛鍚?,
  `jdbc_password` varchar(100) NOT NULL DEFAULT '' COMMENT '瀵嗙爜',
  `note` varchar(1000) NOT NULL DEFAULT '' COMMENT '鎻忚堪',
  PRIMARY KEY (`zid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='鏈嶅姟鍣ㄨ〃' AUTO_INCREMENT=2 ;

--
-- 杞瓨琛ㄤ腑鐨勬暟鎹?`zdata_server`
--

INSERT INTO `zdata_server` (`zid`, `uid`, `name`, `jdbc_class`, `jdbc_url`, `jdbc_user`, `jdbc_password`, `note`) VALUES
(1, '87421629a90111e2bb7900241d8adc62', 'zdata', 'com.mysql.jdbc.Driver', 'jdbc:mysql://127.0.0.1:3306/zdata?useUnicode=true&characterEncoding=utf8', 'root', '', '0');

-- --------------------------------------------------------

--
-- 琛ㄧ殑缁撴瀯 `zdata_table`
--

CREATE TABLE IF NOT EXISTS `zdata_table` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) NOT NULL DEFAULT '',
  `code` varchar(45) DEFAULT '' COMMENT '缂栫爜',
  `name` varchar(100) DEFAULT '' COMMENT '鍚嶇О',
  `note` varchar(100) DEFAULT '' COMMENT '鎻忚堪',
  PRIMARY KEY (`zid`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='鏁版嵁琛? AUTO_INCREMENT=218 ;

--
-- 杞瓨琛ㄤ腑鐨勬暟鎹?`zdata_table`
--

INSERT INTO `zdata_table` (`zid`, `uid`, `code`, `name`, `note`) VALUES
(203, '4937f68fa9cb11e294f60023187c448b', 'zdata_column', 'zdata_column', '鏁版嵁鍒楄〃'),
(204, '4937fd17a9cb11e294f60023187c448b', 'zdata_server', 'zdata_server', '鏈嶅姟鍣ㄨ〃'),
(205, '4937ff30a9cb11e294f60023187c448b', 'zdata_table', 'zdata_table', '鏁版嵁琛?),
(206, '493800e7a9cb11e294f60023187c448b', 'zsrnpr_define', 'zsrnpr_define', ''),
(207, '493802dea9cb11e294f60023187c448b', 'zweb_fields', 'zweb_fields', '瑙嗗浘瀛楁琛?),
(208, '493805eea9cb11e294f60023187c448b', 'zweb_options', 'zweb_options', '鎿嶄綔琛?),
(209, '4938079fa9cb11e294f60023187c448b', 'zweb_source', 'zweb_source', '鏁版嵁婧愬畾涔?),
(210, '493808a4a9cb11e294f60023187c448b', 'zweb_view', 'zweb_view', '瑙嗗浘琛?);

-- --------------------------------------------------------

--
-- 琛ㄧ殑缁撴瀯 `zsrnpr_define`
--

CREATE TABLE IF NOT EXISTS `zsrnpr_define` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) NOT NULL DEFAULT '',
  `code` varchar(100) NOT NULL DEFAULT '' COMMENT '缂栫爜',
  `name` varchar(100) DEFAULT '' COMMENT '鍚嶇О',
  `value` varchar(100) DEFAULT '' COMMENT '鍊?,
  `note` varchar(100) DEFAULT '' COMMENT '涓枃',
  `level` int(11) DEFAULT '0' COMMENT '绾у埆',
  PRIMARY KEY (`zid`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- 杞瓨琛ㄤ腑鐨勬暟鎹?`zsrnpr_define`
--

INSERT INTO `zsrnpr_define` (`zid`, `uid`, `code`, `name`, `value`, `note`, `level`) VALUES
(1, '90c43881a90111e2bb7900241d8adc62', '400', '绯荤粺瀹氫箟', '', '', 1),
(2, '90c43a88a90111e2bb7900241d8adc62', '400001', '鏄惁', '', '', 2),
(6, '90c43afca90111e2bb7900241d8adc62', '400001001', '鏄?, '', '', 3),
(7, '90c43b70a90111e2bb7900241d8adc62', '400001002', '鍚?, '', '', 3),
(8, '90c43bd1a90111e2bb7900241d8adc62', '404120', '鏁版嵁搴撶被鍨嬪畾涔?, '', '', 2),
(9, '90c43c2ea90111e2bb7900241d8adc62', '404103', '鏁版嵁搴撳瓧娈靛畾涔?, 'column', '', 2),
(10, '90c43c94a90111e2bb7900241d8adc62', '404103109', 'int', 'int', '', 3),
(11, '90c43cf5a90111e2bb7900241d8adc62', '404103122', 'varchar', 'varchar', '', 3),
(12, '90c43d51a90111e2bb7900241d8adc62', '404103104', 'decimal', 'decimal', '', 3),
(13, '90c43db3a90111e2bb7900241d8adc62', '415101', '椤甸潰鎸夐挳宸ュ叿鏍?, 'options', '', 2),
(14, '90c43e14a90111e2bb7900241d8adc62', '415101019', '鎻愪氦', 'submit', '', 3),
(15, '90c43e75a90111e2bb7900241d8adc62', '404', '鏁版嵁搴撳畾涔?, 'data', '瀹氫箟鏁版嵁搴?, 1),
(16, '90c43ed7a90111e2bb7900241d8adc62', '416', '椤甸潰瀹氫箟', 'page', '', 1),
(19, '90c43f38a90111e2bb7900241d8adc62', '416108', '椤甸潰鍏冪礌绫诲瀷', 'html', '', 2),
(20, '90c43f9ea90111e2bb7900241d8adc62', '416108109', '鏂囨湰杈撳叆妗?, 'input', '', 3),
(21, '90c43fffa90111e2bb7900241d8adc62', '404119', '鏁版嵁婧愮被鍨嬪畾涔?, 'source', '瀹氫箟鏁版嵁婧愮敤锛岀敤浜巣data_source琛?, 2),
(22, '90c44061a90111e2bb7900241d8adc62', '404119115', 'kV琛?, 'one', '', 3),
(23, '90c440bda90111e2bb7900241d8adc62', '404119103', '鍏宠仈琛?, 'conc', '', 3),
(24, '90c4411fa90111e2bb7900241d8adc62', '404103103', 'char', 'char', '', 3),
(33, '90c4417ba90111e2bb7900241d8adc62', '416120', '椤甸潰绫诲瀷', '', '', 2),
(34, '90c441d8a90111e2bb7900241d8adc62', '416120103', '鍒楄〃椤?, 'chart', '', 3),
(35, '90c44235a90111e2bb7900241d8adc62', '416120101', '鏂板椤?, 'add', '', 3),
(36, '90c442d7a90111e2bb7900241d8adc62', '416120105', '淇敼椤?, 'edit', '', 3),
(37, '90c44338a90111e2bb7900241d8adc62', '416120102', '鏌ョ湅椤?, 'book', '', 3),
(38, '90c44409a90111e2bb7900241d8adc62', '415101001', '鏂板', 'add', '', 3),
(40, '90c4446aa90111e2bb7900241d8adc62', '415101005', '淇敼', 'edit', '', 3),
(41, '90c444c7a90111e2bb7900241d8adc62', '416120104', '鍒犻櫎椤?, 'delete', '', 3),
(43, '90c44523a90111e2bb7900241d8adc62', '416108119', '閫夋嫨涓嬫媺妗?, 'select', '', 3),
(44, '90c44580a90111e2bb7900241d8adc62', '416120107', '鏌ヨ缁撴灉鍐?, 'grid', '', 3),
(45, '90c445dda90111e2bb7900241d8adc62', '415101012', '鑷畾涔夐摼鎺?, 'link', '鑷畾涔夐摼鎺?, 3),
(46, '90c4463ea90111e2bb7900241d8adc62', '415101305', '鍒楄〃椤佃〃鏍?淇敼', 'chart-edit', '鍒楄〃椤佃〃鏍?淇敼', 3),
(47, '90c4469aa90111e2bb7900241d8adc62', '416120106', '鎵ц涓撶敤椤?, 'func', '', 3),
(48, '90c446f7a90111e2bb7900241d8adc62', '415', '鎿嶄綔瀹氫箟', 'options', '', 1),
(49, '90c44580a90111e2bb7900241d8adc63', '415101006', '鎵ц璋冪敤', 'func', '', 3),
(50, '90c44580a90111e2bb7900241d8adc71', '416120109', '鏌ヨ鏉′欢', 'inquire', '鏌ヨ鏉′欢', 3),
(52, '90c44580a90111e2bb7900241d8adc73', '416108108', '闅愯棌鍩?, 'hidden', '', 3),
(53, '90c44580a90111e2bb7900241d5adc71', '400118', '杩斿洖绫诲瀷', 'result', '', 2),
(54, '90c44580a90111e2bb7900241d5add71', '400118110', 'Json瀵硅薄', 'jso', '', 3),
(55, '50c44580a90111e2bb7900241d5add71', '400118119', '瀛楃涓?, 'string', '', 3);

-- --------------------------------------------------------

--
-- 琛ㄧ殑缁撴瀯 `zweb_fields`
--

CREATE TABLE IF NOT EXISTS `zweb_fields` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `view_code` varchar(100) DEFAULT '' COMMENT '瑙嗗浘缂栫爜',
  `column_name` varchar(100) DEFAULT '' COMMENT '鏁版嵁鍒楀悕绉?,
  `field_name` varchar(100) DEFAULT '' COMMENT '瀛楁鍚嶇О',
  `did_field_type` int(11) DEFAULT '0' COMMENT '瀛楁绫诲瀷',
  `source_code` varchar(100) DEFAULT '' COMMENT '鏁版嵁婧愮紪鐮?,
  `source_parameter` varchar(500) DEFAULT '' COMMENT '鏁版嵁婧愬弬鏁?,
  `level_grid` int(11) DEFAULT '0' COMMENT '鍒楄〃鏍囪',
  `level_add` int(11) DEFAULT '0' COMMENT '鎻掑叆鏍囪',
  `level_edit` int(11) DEFAULT '0' COMMENT '淇敼鏍囪',
  `level_book` int(11) DEFAULT '0' COMMENT '灞曠ず鏍囪',
  `level_inquire` int(11) DEFAULT '0' COMMENT '鏌ヨ鏉′欢',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='瑙嗗浘瀛楁琛? AUTO_INCREMENT=455 ;

--
-- 杞瓨琛ㄤ腑鐨勬暟鎹?`zweb_fields`
--

INSERT INTO `zweb_fields` (`zid`, `uid`, `view_code`, `column_name`, `field_name`, `did_field_type`, `source_code`, `source_parameter`, `level_grid`, `level_add`, `level_edit`, `level_book`, `level_inquire`) VALUES
(426, '90dbce39a97311e2bb7900241d8adc62', 'system_options', 'did_option_type', '', 416108119, 'source_system_define', '415101', 106, 106, 106, 106, 106),
(427, '90dbd06ea97311e2bb7900241d8adc62', 'system_options', 'did_page_type', '', 416108119, 'source_system_define', '416120', 105, 105, 105, 105, 105),
(428, '90dbd131a97311e2bb7900241d8adc62', 'system_options', 'name', '鍚嶇О', 416108109, '', '', 104, 104, 104, 104, 104),
(429, '90dbd1dca97311e2bb7900241d8adc62', 'system_options', 'params', '鎿嶄綔鍙傛暟', 416108109, '', '', 107, 107, 107, 107, 107),
(430, '90dbd28ca97311e2bb7900241d8adc62', 'system_options', 'uid', '', 416108109, '', '', 102, 102, 102, 102, 102),
(431, '90dbd338a97311e2bb7900241d8adc62', 'system_options', 'view_code', '瑙嗗浘缂栧彿', 416108109, '', '', 103, 103, 103, 103, 103),
(432, '90dbd51ea97311e2bb7900241d8adc62', 'system_options', 'zid', '', 416108109, '', '', 101, 101, 101, 101, 101),
(433, '90e03ee1a97311e2bb7900241d8adc62', 'system_table', 'code', '缂栫爜', 416108109, '', '', 103, 103, 103, 103, 103),
(434, '90e040ffa97311e2bb7900241d8adc62', 'system_table', 'table_name', '琛ㄥ悕绉?, 416108109, '', '', 105, 105, 105, 105, 105),
(435, '90e041d4a97311e2bb7900241d8adc62', 'system_table', 'uid', '', 416108109, '', '', 102, 102, 102, 102, 102),
(436, '90e04280a97311e2bb7900241d8adc62', 'system_table', 'view_name', '瑙嗗浘鍚嶇О', 416108109, '', '', 104, 104, 104, 104, 104),
(437, '90e04335a97311e2bb7900241d8adc62', 'system_table', 'zid', '', 416108109, '', '', 101, 101, 101, 101, 101),
(440, '90e3e629a97311e2bb7900241d8adc62', 'system_fields', 'column_name', '鏁版嵁鍒楀悕绉?, 416108109, '', '', 104, 104, 104, 104, 104),
(441, '90e3e7c1a97311e2bb7900241d8adc62', 'system_fields', 'did_field_type', '瀛楁绫诲瀷', 416108119, 'source_system_define', '416108', 106, 106, 106, 106, 106),
(442, '90e3e876a97311e2bb7900241d8adc62', 'system_fields', 'field_name', '瀛楁鍚嶇О', 416108109, '', '', 105, 105, 105, 105, 105),
(443, '90e3e921a97311e2bb7900241d8adc62', 'system_fields', 'level_add', '鎻掑叆鏍囪', 416108109, '', '', 110, 110, 110, 110, 110),
(444, '90e3e9cca97311e2bb7900241d8adc62', 'system_fields', 'level_book', '灞曠ず鏍囪', 416108109, '', '', 112, 112, 112, 112, 112),
(445, '90e3ea6aa97311e2bb7900241d8adc62', 'system_fields', 'level_edit', '淇敼鏍囪', 416108109, '', '', 111, 111, 111, 111, 111),
(446, '90e3eb11a97311e2bb7900241d8adc62', 'system_fields', 'level_grid', '鍒楄〃鏍囪', 416108109, '', '', 109, 109, 109, 109, 109),
(447, '90e3ebaea97311e2bb7900241d8adc62', 'system_fields', 'level_inquire', '鏌ヨ鏉′欢', 416108109, '', '', 113, 113, 113, 113, 113),
(448, '90e3ec5aa97311e2bb7900241d8adc62', 'system_fields', 'source_code', '鏁版嵁婧愮紪鐮?, 416108109, '', '', 107, 107, 107, 107, 107),
(449, '90e3ecfca97311e2bb7900241d8adc62', 'system_fields', 'source_parameter', '鏁版嵁婧愬弬鏁?, 416108109, '', '', 108, 108, 108, 108, 108),
(450, '90e3ed99a97311e2bb7900241d8adc62', 'system_fields', 'uid', '', 416108109, '', '', 102, 102, 102, 102, 102),
(451, '90e3ee4aa97311e2bb7900241d8adc62', 'system_fields', 'view_code', '瑙嗗浘缂栫爜', 416108109, '', '', 103, 103, 103, 103, 103),
(452, '90e3ef44a97311e2bb7900241d8adc62', 'system_fields', 'zid', '', 416108109, '', '', 101, 101, 101, 101, 101);

-- --------------------------------------------------------

--
-- 琛ㄧ殑缁撴瀯 `zweb_options`
--

CREATE TABLE IF NOT EXISTS `zweb_options` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `view_code` varchar(100) DEFAULT '' COMMENT '瑙嗗浘缂栧彿',
  `name` varchar(100) DEFAULT '' COMMENT '鍚嶇О',
  `did_page_type` int(11) DEFAULT '0',
  `did_option_type` int(11) DEFAULT '0',
  `params` varchar(100) DEFAULT '' COMMENT '鎿嶄綔鍙傛暟',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='鎿嶄綔琛? AUTO_INCREMENT=16 ;

--
-- 杞瓨琛ㄤ腑鐨勬暟鎹?`zweb_options`
--

INSERT INTO `zweb_options` (`zid`, `uid`, `view_code`, `name`, `did_page_type`, `did_option_type`, `params`) VALUES
(1, '97b1ba1aa90111e2bb7900241d8adc62', 'system_table', '娣诲姞', 416120103, 415101001, ''),
(3, '97b1bcc3a90111e2bb7900241d8adc62', 'system_table', '鍒锋柊缁撴瀯', 416120103, 415101006, 'zyou/func-system_table-[t@uid]-func_do=refreshdata'),
(4, '97b1bd29a90111e2bb7900241d8adc62', 'system_table', '鎻愪氦', 416120105, 415101019, ''),
(5, '97b1bd98a90111e2bb7900241d8adc62', 'system_table', '鎻愪氦', 416120101, 415101019, ''),
(6, '97b1be31a90111e2bb7900241d8adc62', 'system_table', '淇敼瀛楁', 416120107, 415101012, 'zyou/chart-system_fields-[t@uid]-view_code=[code]'),
(7, '97b1be93a90111e2bb7900241d8adc62', 'system_fields', '淇敼', 416120107, 415101305, ''),
(9, '97b1be31a90111e2bb7900241d8adc63', 'system_table', '鎸夐挳瑙嗗浘', 416120107, 415101012, 'zyou/chart-system_options-[t@uid]-view_code=[code]'),
(10, '97b1bef4a90111e2bb7900241d8adc64', 'system_table', '淇敼', 416120107, 415101305, ''),
(11, 'x7b1ba1aa90111e2bb7900241d8adc62', 'system_options', '娣诲姞', 416120103, 415101001, ''),
(12, 'x7b1bd98a90111e2bb7900241d8adc62', 'system_options', '鎻愪氦', 416120101, 415101019, ''),
(13, '441377762b1444379a6421e0f0255e59', 'system_options', '淇敼', 416120107, 415101305, ''),
(14, '441377762b1444379a6421e0f0255159', 'system_options', '鎻愪氦', 416120105, 415101019, ''),
(15, '2e2453ed24744fedb02892a4a3dbf079', 'system_fields', '鎻愪氦', 416120105, 415101019, '');

-- --------------------------------------------------------

--
-- 琛ㄧ殑缁撴瀯 `zweb_source`
--

CREATE TABLE IF NOT EXISTS `zweb_source` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) NOT NULL DEFAULT '',
  `did_source_type` int(11) DEFAULT '0' COMMENT '鏁版嵁婧愮被鍨?,
  `source_code` varchar(45) DEFAULT '' COMMENT '鏁版嵁婧愮紪鍙?,
  `source_name` varchar(45) DEFAULT '' COMMENT '鏁版嵁婧愬悕绉?,
  `field_text` varchar(500) DEFAULT '' COMMENT '灞曠ず瀛楁',
  `field_value` varchar(500) DEFAULT '' COMMENT '瀹為檯鍊煎瓧娈?,
  `from` varchar(500) DEFAULT '' COMMENT '鏉ヨ嚜',
  `where_book` varchar(500) DEFAULT '' COMMENT '灞曠ず鏃?,
  `where_edit` varchar(500) DEFAULT '' COMMENT '淇敼鏃?,
  PRIMARY KEY (`zid`),
  UNIQUE KEY `source_code_UNIQUE` (`source_code`),
  UNIQUE KEY `source_name_UNIQUE` (`source_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='鏁版嵁婧愬畾涔? AUTO_INCREMENT=2 ;

--
-- 杞瓨琛ㄤ腑鐨勬暟鎹?`zweb_source`
--

INSERT INTO `zweb_source` (`zid`, `uid`, `did_source_type`, `source_code`, `source_name`, `field_text`, `field_value`, `from`, `where_book`, `where_edit`) VALUES
(1, '8a8dc993a90111e2bb7900241d8adc62', 404119115, 'source_system_define', '绯荤粺瀹氫箟绫诲瀷琛紙鏌ヨ鐢級', 'name', 'code', 'zsrnpr_define', 'code={0}', 'left(code,6)=''{0}''');

-- --------------------------------------------------------

--
-- 琛ㄧ殑缁撴瀯 `zweb_view`
--

CREATE TABLE IF NOT EXISTS `zweb_view` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `code` varchar(100) DEFAULT '' COMMENT '缂栫爜',
  `view_name` varchar(100) DEFAULT '' COMMENT '瑙嗗浘鍚嶇О',
  `table_name` varchar(100) DEFAULT '' COMMENT '琛ㄥ悕绉?,
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='瑙嗗浘琛? AUTO_INCREMENT=8 ;

--
-- 杞瓨琛ㄤ腑鐨勬暟鎹?`zweb_view`
--

INSERT INTO `zweb_view` (`zid`, `uid`, `code`, `view_name`, `table_name`) VALUES
(1, '9a4f1172a90111e2bb7900241d8adc62', 'system_table', '绯荤粺瑙嗗浘', 'zweb_view'),
(2, '9a4f1391a90111e2bb7900241d8adc62', 'system_fields', '瑙嗗浘瀛楁', 'zweb_fields'),
(3, '9a4f1409a90111e2bb7900241d8adc62', 'system_options', '瑙嗗浘鎿嶄綔', 'zweb_options');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
