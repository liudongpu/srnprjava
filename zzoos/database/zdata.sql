-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2013 年 04 月 19 日 22:50
-- 服务器版本: 5.5.27
-- PHP 版本: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `zdata`
--

-- --------------------------------------------------------

--
-- 表的结构 `zdata_column`
--

CREATE TABLE IF NOT EXISTS `zdata_column` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='数据列表' AUTO_INCREMENT=1349 ;

--
-- 转存表中的数据 `zdata_column`
--

INSERT INTO `zdata_column` (`zid`, `uid`, `server_name`, `table_name`, `column_name`, `did_null_able`, `did_column_type`, `length_max`, `length_scale`, `note`, `orderid`) VALUES
(1222, '12d0df36a93211e2bb7900241d8adc62', 'zdata', 'zdata_column', 'zid', 400001002, 404103109, 0, 0, '', 1),
(1223, '12d0e797a93211e2bb7900241d8adc62', 'zdata', 'zdata_column', 'uid', 400001002, 404103103, 32, 0, '', 2),
(1224, '12d0eb11a93211e2bb7900241d8adc62', 'zdata', 'zdata_column', 'server_name', 400001002, 404103122, 45, 0, '服务器名称', 3),
(1225, '12d0ee78a93211e2bb7900241d8adc62', 'zdata', 'zdata_column', 'table_name', 400001002, 404103122, 45, 0, '表名', 4),
(1226, '12d0f1eda93211e2bb7900241d8adc62', 'zdata', 'zdata_column', 'column_name', 400001002, 404103122, 45, 0, '列名', 5),
(1227, '12d0f54ba93211e2bb7900241d8adc62', 'zdata', 'zdata_column', 'did_null_able', 400001001, 404103109, 0, 0, '是否为空', 6),
(1228, '12d0f892a93211e2bb7900241d8adc62', 'zdata', 'zdata_column', 'did_column_type', 400001001, 404103109, 0, 0, '列类型', 7),
(1229, '12d0fbd8a93211e2bb7900241d8adc62', 'zdata', 'zdata_column', 'length_max', 400001001, 404103109, 0, 0, '最大长度', 8),
(1230, '12d1027da93211e2bb7900241d8adc62', 'zdata', 'zdata_column', 'length_scale', 400001001, 404103109, 0, 0, '第二长度', 9),
(1231, '12d1063ca93211e2bb7900241d8adc62', 'zdata', 'zdata_column', 'note', 400001001, 404103122, 100, 0, '名称', 10),
(1232, '12d37b94a93211e2bb7900241d8adc62', 'zdata', 'zdata_column', 'orderid', 400001001, 404103109, 0, 0, '排序', 11),
(1233, '12d37faba93211e2bb7900241d8adc62', 'zdata', 'zdata_server', 'zid', 400001002, 404103109, 0, 0, '', 1),
(1234, '12d3833ca93211e2bb7900241d8adc62', 'zdata', 'zdata_server', 'uid', 400001002, 404103103, 32, 0, '', 2),
(1235, '12d386aca93211e2bb7900241d8adc62', 'zdata', 'zdata_server', 'name', 400001002, 404103122, 100, 0, '名称', 3),
(1236, '12d38a3da93211e2bb7900241d8adc62', 'zdata', 'zdata_server', 'jdbc_class', 400001002, 404103122, 100, 0, '类名', 4),
(1237, '12d38d9fa93211e2bb7900241d8adc62', 'zdata', 'zdata_server', 'jdbc_url', 400001002, 404103122, 100, 0, '地址', 5),
(1238, '12d3919ba93211e2bb7900241d8adc62', 'zdata', 'zdata_server', 'jdbc_user', 400001002, 404103122, 100, 0, '用户名', 6),
(1239, '12d394fda93211e2bb7900241d8adc62', 'zdata', 'zdata_server', 'jdbc_password', 400001002, 404103122, 100, 0, '密码', 7),
(1240, '12d3985ba93211e2bb7900241d8adc62', 'zdata', 'zdata_server', 'note', 400001002, 404103122, 1000, 0, '描述', 8),
(1241, '12d39bb4a93211e2bb7900241d8adc62', 'zdata', 'zdata_source', 'zid', 400001002, 404103109, 0, 0, '', 1),
(1242, '12d3a472a93211e2bb7900241d8adc62', 'zdata', 'zdata_source', 'uid', 400001002, 404103103, 32, 0, '', 2),
(1243, '12d3a872a93211e2bb7900241d8adc62', 'zdata', 'zdata_source', 'did_source_type', 400001001, 404103109, 0, 0, '', 3),
(1244, '12d3ac23a93211e2bb7900241d8adc62', 'zdata', 'zdata_source', 'source_code', 400001001, 404103122, 45, 0, '', 4),
(1245, '12d3af8aa93211e2bb7900241d8adc62', 'zdata', 'zdata_source', 'source_name', 400001001, 404103122, 45, 0, '', 5),
(1246, '12d3b2e8a93211e2bb7900241d8adc62', 'zdata', 'zdata_source', 'fields', 400001001, 404103122, 500, 0, '', 6),
(1247, '12d3b6c8a93211e2bb7900241d8adc62', 'zdata', 'zdata_source', 'from', 400001001, 404103122, 500, 0, '', 7),
(1248, '12d3ba21a93211e2bb7900241d8adc62', 'zdata', 'zdata_source', 'where', 400001001, 404103122, 500, 0, '', 8),
(1249, '12d3bd7fa93211e2bb7900241d8adc62', 'zdata', 'zdata_table', 'zid', 400001002, 404103109, 0, 0, '', 1),
(1250, '12d3c0dda93211e2bb7900241d8adc62', 'zdata', 'zdata_table', 'uid', 400001002, 404103103, 32, 0, '', 2),
(1251, '12d3c431a93211e2bb7900241d8adc62', 'zdata', 'zdata_table', 'code', 400001001, 404103122, 45, 0, '编码', 3),
(1252, '12d3c78aa93211e2bb7900241d8adc62', 'zdata', 'zdata_table', 'name', 400001001, 404103122, 100, 0, '名称', 4),
(1253, '12d3cae4a93211e2bb7900241d8adc62', 'zdata', 'zdata_table', 'note', 400001001, 404103122, 100, 0, '描述', 5),
(1254, '12d3ce54a93211e2bb7900241d8adc62', 'zdata', 'zsrnpr_define', 'zid', 400001002, 404103109, 0, 0, '', 1),
(1255, '12d3d19ba93211e2bb7900241d8adc62', 'zdata', 'zsrnpr_define', 'uid', 400001002, 404103103, 32, 0, '', 2),
(1256, '12d3d4e6a93211e2bb7900241d8adc62', 'zdata', 'zsrnpr_define', 'code', 400001002, 404103122, 100, 0, '编码', 3),
(1257, '12d3d83ba93211e2bb7900241d8adc62', 'zdata', 'zsrnpr_define', 'name', 400001001, 404103122, 100, 0, '名称', 4),
(1258, '12d3e22fa93211e2bb7900241d8adc62', 'zdata', 'zsrnpr_define', 'value', 400001001, 404103122, 100, 0, '值', 5),
(1259, '12d3e596a93211e2bb7900241d8adc62', 'zdata', 'zsrnpr_define', 'note', 400001001, 404103122, 100, 0, '中文', 6),
(1260, '12d3e8efa93211e2bb7900241d8adc62', 'zdata', 'zsrnpr_define', 'level', 400001001, 404103109, 0, 0, '级别', 7),
(1261, '12d3ec3ba93211e2bb7900241d8adc62', 'zdata', 'zweb_fields', 'zid', 400001002, 404103109, 0, 0, '', 1),
(1262, '12d3ef98a93211e2bb7900241d8adc62', 'zdata', 'zweb_fields', 'uid', 400001001, 404103103, 32, 0, '', 2),
(1263, '12d3f2e8a93211e2bb7900241d8adc62', 'zdata', 'zweb_fields', 'view_code', 400001001, 404103122, 100, 0, '视图编码', 3),
(1264, '12d3f64fa93211e2bb7900241d8adc62', 'zdata', 'zweb_fields', 'column_name', 400001001, 404103122, 100, 0, '数据列名称', 4),
(1265, '12d3f9b2a93211e2bb7900241d8adc62', 'zdata', 'zweb_fields', 'field_name', 400001001, 404103122, 100, 0, '字段名称', 5),
(1266, '12d3fd10a93211e2bb7900241d8adc62', 'zdata', 'zweb_fields', 'did_field_type', 400001001, 404103109, 0, 0, '字段类型', 6),
(1267, '12d4005ba93211e2bb7900241d8adc62', 'zdata', 'zweb_fields', 'source_code', 400001001, 404103122, 100, 0, '数据源编码', 7),
(1268, '12d403f5a93211e2bb7900241d8adc62', 'zdata', 'zweb_fields', 'source_parameter', 400001001, 404103122, 500, 0, '数据源参数', 8),
(1269, '12d4074aa93211e2bb7900241d8adc62', 'zdata', 'zweb_fields', 'level_list', 400001001, 404103109, 0, 0, '列表标记', 9),
(1270, '12d40ad1a93211e2bb7900241d8adc62', 'zdata', 'zweb_fields', 'level_put', 400001001, 404103109, 0, 0, '插入标记', 10),
(1271, '12d40e18a93211e2bb7900241d8adc62', 'zdata', 'zweb_fields', 'level_post', 400001001, 404103109, 0, 0, '修改标记', 11),
(1272, '12d41163a93211e2bb7900241d8adc62', 'zdata', 'zweb_fields', 'level_show', 400001001, 404103109, 0, 0, '展示标记', 12),
(1273, '12d4160fa93211e2bb7900241d8adc62', 'zdata', 'zweb_fields', 'level_query', 400001001, 404103109, 0, 0, '查询条件', 13),
(1274, '12d4196ca93211e2bb7900241d8adc62', 'zdata', 'zweb_options', 'zid', 400001002, 404103109, 0, 0, '', 1),
(1275, '12d41cc6a93211e2bb7900241d8adc62', 'zdata', 'zweb_options', 'uid', 400001001, 404103103, 32, 0, '', 2),
(1276, '12d42028a93211e2bb7900241d8adc62', 'zdata', 'zweb_options', 'view_code', 400001001, 404103122, 100, 0, '视图编号', 3),
(1277, '12d42378a93211e2bb7900241d8adc62', 'zdata', 'zweb_options', 'name', 400001001, 404103122, 100, 0, '名称', 4),
(1278, '12d426c8a93211e2bb7900241d8adc62', 'zdata', 'zweb_options', 'did_page_type', 400001001, 404103109, 0, 0, '', 5),
(1279, '12d42a46a93211e2bb7900241d8adc62', 'zdata', 'zweb_options', 'did_option_type', 400001001, 404103109, 0, 0, '', 6),
(1280, '12d42d7fa93211e2bb7900241d8adc62', 'zdata', 'zweb_options', 'params', 400001001, 404103122, 100, 0, '操作参数', 7),
(1281, '12d430c6a93211e2bb7900241d8adc62', 'zdata', 'zweb_view', 'zid', 400001002, 404103109, 0, 0, '', 1),
(1282, '12d43411a93211e2bb7900241d8adc62', 'zdata', 'zweb_view', 'uid', 400001001, 404103103, 32, 0, '', 2),
(1283, '12d43758a93211e2bb7900241d8adc62', 'zdata', 'zweb_view', 'code', 400001001, 404103122, 100, 0, '编码', 3),
(1284, '12d43a9ea93211e2bb7900241d8adc62', 'zdata', 'zweb_view', 'view_name', 400001001, 404103122, 100, 0, '视图名称', 4),
(1285, '12d43deaa93211e2bb7900241d8adc62', 'zdata', 'zweb_view', 'table_name', 400001001, 404103122, 100, 0, '表名称', 5);

-- --------------------------------------------------------

--
-- 表的结构 `zdata_server`
--

CREATE TABLE IF NOT EXISTS `zdata_server` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='服务器表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `zdata_server`
--

INSERT INTO `zdata_server` (`zid`, `uid`, `name`, `jdbc_class`, `jdbc_url`, `jdbc_user`, `jdbc_password`, `note`) VALUES
(1, '87421629a90111e2bb7900241d8adc62', 'zdata', 'com.mysql.jdbc.Driver', 'jdbc:mysql://127.0.0.1:3306/zdata?useUnicode=true&characterEncoding=utf8', 'root', '', '0');

-- --------------------------------------------------------

--
-- 表的结构 `zdata_source`
--

CREATE TABLE IF NOT EXISTS `zdata_source` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) NOT NULL DEFAULT '',
  `did_source_type` int(11) DEFAULT '0',
  `source_code` varchar(45) DEFAULT '',
  `source_name` varchar(45) DEFAULT '',
  `fields` varchar(500) DEFAULT '',
  `from` varchar(500) DEFAULT '',
  `where` varchar(500) DEFAULT '',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='数据源定义' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `zdata_source`
--

INSERT INTO `zdata_source` (`zid`, `uid`, `did_source_type`, `source_code`, `source_name`, `fields`, `from`, `where`) VALUES
(1, '8a8dc993a90111e2bb7900241d8adc62', 404119115, 'system_define', '系统定义类型表（查询用）', NULL, 'zsrnpr_define', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `zdata_table`
--

CREATE TABLE IF NOT EXISTS `zdata_table` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) NOT NULL DEFAULT '',
  `code` varchar(45) DEFAULT '' COMMENT '编码',
  `name` varchar(100) DEFAULT '' COMMENT '名称',
  `note` varchar(100) DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`zid`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='数据表' AUTO_INCREMENT=173 ;

--
-- 转存表中的数据 `zdata_table`
--

INSERT INTO `zdata_table` (`zid`, `uid`, `code`, `name`, `note`) VALUES
(158, '12c0c21fa93211e2bb7900241d8adc62', 'zdata_column', 'zdata_column', '数据列表'),
(159, '12c0c52ea93211e2bb7900241d8adc62', 'zdata_server', 'zdata_server', '服务器表'),
(160, '12c0c6f0a93211e2bb7900241d8adc62', 'zdata_source', 'zdata_source', '数据源定义'),
(161, '12c0c974a93211e2bb7900241d8adc62', 'zdata_table', 'zdata_table', '数据表'),
(162, '12c0cb5fa93211e2bb7900241d8adc62', 'zsrnpr_define', 'zsrnpr_define', ''),
(163, '12c0ccd6a93211e2bb7900241d8adc62', 'zweb_fields', 'zweb_fields', '视图字段表'),
(164, '12c0ce9ca93211e2bb7900241d8adc62', 'zweb_options', 'zweb_options', '操作表'),
(165, '12c0d026a93211e2bb7900241d8adc62', 'zweb_view', 'zweb_view', '视图表');

-- --------------------------------------------------------

--
-- 表的结构 `zsrnpr_define`
--

CREATE TABLE IF NOT EXISTS `zsrnpr_define` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) NOT NULL DEFAULT '',
  `code` varchar(100) NOT NULL DEFAULT '' COMMENT '编码',
  `name` varchar(100) DEFAULT '' COMMENT '名称',
  `value` varchar(100) DEFAULT '' COMMENT '值',
  `note` varchar(100) DEFAULT '' COMMENT '中文',
  `level` int(11) DEFAULT '0' COMMENT '级别',
  PRIMARY KEY (`zid`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- 转存表中的数据 `zsrnpr_define`
--

INSERT INTO `zsrnpr_define` (`zid`, `uid`, `code`, `name`, `value`, `note`, `level`) VALUES
(1, '90c43881a90111e2bb7900241d8adc62', '400', '系统定义', '', '', 1),
(2, '90c43a88a90111e2bb7900241d8adc62', '400001', '是否', '', '', 2),
(6, '90c43afca90111e2bb7900241d8adc62', '400001001', '是', '', '', 3),
(7, '90c43b70a90111e2bb7900241d8adc62', '400001002', '否', '', '', 3),
(8, '90c43bd1a90111e2bb7900241d8adc62', '404120', '数据库类型定义', '', '', 2),
(9, '90c43c2ea90111e2bb7900241d8adc62', '404103', '数据库字段定义', 'column', '', 2),
(10, '90c43c94a90111e2bb7900241d8adc62', '404103109', 'int', 'int', '', 3),
(11, '90c43cf5a90111e2bb7900241d8adc62', '404103122', 'varchar', 'varchar', '', 3),
(12, '90c43d51a90111e2bb7900241d8adc62', '404103104', 'decimal', 'decimal', '', 3),
(13, '90c43db3a90111e2bb7900241d8adc62', '415101', '页面按钮工具栏', 'options', '', 2),
(14, '90c43e14a90111e2bb7900241d8adc62', '415101019', '提交', 'submit', '', 3),
(15, '90c43e75a90111e2bb7900241d8adc62', '404', '数据库定义', 'data', '', 1),
(16, '90c43ed7a90111e2bb7900241d8adc62', '416', '页面定义', 'page', '', 1),
(19, '90c43f38a90111e2bb7900241d8adc62', '416108', '页面元素类型', 'html', '', 2),
(20, '90c43f9ea90111e2bb7900241d8adc62', '416108001', '文本输入框', 'input', '', 3),
(21, '90c43fffa90111e2bb7900241d8adc62', '404119', '数据源类型定义', 'source', '定义数据源用，用于zdata_source表', 2),
(22, '90c44061a90111e2bb7900241d8adc62', '404119115', '单表', 'one', '', 3),
(23, '90c440bda90111e2bb7900241d8adc62', '404119103', '关联表', 'conc', '', 3),
(24, '90c4411fa90111e2bb7900241d8adc62', '404103103', 'char', 'char', '', 3),
(33, '90c4417ba90111e2bb7900241d8adc62', '416120', '页面类型', '', '', 2),
(34, '90c441d8a90111e2bb7900241d8adc62', '416120103', '列表页', 'chart', '', 3),
(35, '90c44235a90111e2bb7900241d8adc62', '416120101', '新增页', 'add', '', 3),
(36, '90c442d7a90111e2bb7900241d8adc62', '416120105', '修改页', 'edit', '', 3),
(37, '90c44338a90111e2bb7900241d8adc62', '416120102', '查看页', 'book', '', 3),
(38, '90c44409a90111e2bb7900241d8adc62', '415101001', '新增', 'add', '', 3),
(40, '90c4446aa90111e2bb7900241d8adc62', '415101005', '修改', 'edit', '', 3),
(41, '90c444c7a90111e2bb7900241d8adc62', '416120104', '删除页', 'delete', '', 3),
(43, '90c44523a90111e2bb7900241d8adc62', '416108002', '选择下拉框', 'select', '', 3),
(44, '90c44580a90111e2bb7900241d8adc62', '416120107', '查询结果内', 'grid', '', 3),
(45, '90c445dda90111e2bb7900241d8adc62', '415101012', '自定义链接', 'link', '自定义链接', 3),
(46, '90c4463ea90111e2bb7900241d8adc62', '415101305', '列表页表格-修改', 'chart-edit', '列表页表格-修改', 3),
(47, '90c4469aa90111e2bb7900241d8adc62', '416120106', '执行专用页', 'func', '', 3),
(48, '90c446f7a90111e2bb7900241d8adc62', '415', '操作定义', 'options', '', 1),
(49, '90c44580a90111e2bb7900241d8adc63', '415101006', '执行调用', 'func', '', 3);

-- --------------------------------------------------------

--
-- 表的结构 `zweb_fields`
--

CREATE TABLE IF NOT EXISTS `zweb_fields` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `view_code` varchar(100) DEFAULT '' COMMENT '视图编码',
  `column_name` varchar(100) DEFAULT '' COMMENT '数据列名称',
  `field_name` varchar(100) DEFAULT '' COMMENT '字段名称',
  `did_field_type` int(11) DEFAULT '0' COMMENT '字段类型',
  `source_code` varchar(100) DEFAULT '' COMMENT '数据源编码',
  `source_parameter` varchar(500) DEFAULT '' COMMENT '数据源参数',
  `level_list` int(11) DEFAULT '0' COMMENT '列表标记',
  `level_put` int(11) DEFAULT '0' COMMENT '插入标记',
  `level_post` int(11) DEFAULT '0' COMMENT '修改标记',
  `level_show` int(11) DEFAULT '0' COMMENT '展示标记',
  `level_query` int(11) DEFAULT '0' COMMENT '查询条件',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='视图字段表' AUTO_INCREMENT=136 ;

-- --------------------------------------------------------

--
-- 表的结构 `zweb_options`
--

CREATE TABLE IF NOT EXISTS `zweb_options` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `view_code` varchar(100) DEFAULT '' COMMENT '视图编号',
  `name` varchar(100) DEFAULT '' COMMENT '名称',
  `did_page_type` int(11) DEFAULT '0',
  `did_option_type` int(11) DEFAULT '0',
  `params` varchar(100) DEFAULT '' COMMENT '操作参数',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='操作表' AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `zweb_options`
--

INSERT INTO `zweb_options` (`zid`, `uid`, `view_code`, `name`, `did_page_type`, `did_option_type`, `params`) VALUES
(1, '97b1ba1aa90111e2bb7900241d8adc62', 'system_table', '添加', 416120103, 415101001, ''),
(3, '97b1bcc3a90111e2bb7900241d8adc62', 'system_table', '刷新结构', 416120103, 415101006, 'zyou/func-system_table-[t@uid]-func_do=refreshdata'),
(4, '97b1bd29a90111e2bb7900241d8adc62', 'system_table', '提交', 416120105, 415101019, ''),
(5, '97b1bd98a90111e2bb7900241d8adc62', 'system_table', '提交', 416120101, 415101019, ''),
(6, '97b1be31a90111e2bb7900241d8adc62', 'system_table', '修改字段', 416120107, 415101012, 'zyou/list-system_fields-[t@uid]-view_code=[code]'),
(7, '97b1be93a90111e2bb7900241d8adc62', 'system_fields', '修改', 416120107, 415101305, ''),
(9, '97b1be31a90111e2bb7900241d8adc63', 'system_table', '按钮视图', 416120107, 415101012, 'zyou/list-system_options-[t@uid]-view_code=[code]'),
(10, '97b1bef4a90111e2bb7900241d8adc64', 'system_table', '修改', 416120107, 415101305, '');

-- --------------------------------------------------------

--
-- 表的结构 `zweb_view`
--

CREATE TABLE IF NOT EXISTS `zweb_view` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `code` varchar(100) DEFAULT '' COMMENT '编码',
  `view_name` varchar(100) DEFAULT '' COMMENT '视图名称',
  `table_name` varchar(100) DEFAULT '' COMMENT '表名称',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='视图表' AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `zweb_view`
--

INSERT INTO `zweb_view` (`zid`, `uid`, `code`, `view_name`, `table_name`) VALUES
(1, '9a4f1172a90111e2bb7900241d8adc62', 'system_table', '系统视图2', 'zweb_view'),
(2, '9a4f1391a90111e2bb7900241d8adc62', 'system_fields', '视图字段', 'zweb_fields'),
(3, '9a4f1409a90111e2bb7900241d8adc62', 'system_options', '视图操作', 'zweb_options');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
