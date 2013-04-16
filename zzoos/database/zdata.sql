-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2013 年 04 月 16 日 19:09
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
  `server_name` varchar(45) DEFAULT '' COMMENT '服务器名称',
  `table_name` varchar(45) DEFAULT '' COMMENT '表名',
  `column_name` varchar(45) NOT NULL DEFAULT '' COMMENT '列名',
  `did_null_able` int(11) NOT NULL DEFAULT '0' COMMENT '是否为空',
  `did_column_type` int(11) NOT NULL DEFAULT '0' COMMENT '列类型',
  `length_max` int(11) DEFAULT '0' COMMENT '最大长度',
  `length_scale` int(11) DEFAULT '0' COMMENT '第二长度',
  `note` varchar(100) DEFAULT '' COMMENT '名称',
  `orderid` int(11) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='数据列表' AUTO_INCREMENT=399 ;

--
-- 转存表中的数据 `zdata_column`
--

INSERT INTO `zdata_column` (`zid`, `server_name`, `table_name`, `column_name`, `did_null_able`, `did_column_type`, `length_max`, `length_scale`, `note`, `orderid`) VALUES
(345, 'zdata', 'zdata_column', 'zid', 400001002, 404105001, 0, 0, '', 1),
(346, 'zdata', 'zdata_column', 'server_name', 400001001, 404105002, 45, 0, '服务器名称', 2),
(347, 'zdata', 'zdata_column', 'table_name', 400001001, 404105002, 45, 0, '表名', 3),
(348, 'zdata', 'zdata_column', 'column_name', 400001002, 404105002, 45, 0, '列名', 4),
(349, 'zdata', 'zdata_column', 'did_null_able', 400001002, 404105001, 0, 0, '是否为空', 5),
(350, 'zdata', 'zdata_column', 'did_column_type', 400001002, 404105001, 0, 0, '列类型', 6),
(351, 'zdata', 'zdata_column', 'length_max', 400001001, 404105001, 0, 0, '最大长度', 7),
(352, 'zdata', 'zdata_column', 'length_scale', 400001001, 404105001, 0, 0, '第二长度', 8),
(353, 'zdata', 'zdata_column', 'note', 400001001, 404105002, 100, 0, '名称', 9),
(354, 'zdata', 'zdata_column', 'orderid', 400001001, 404105001, 0, 0, '排序', 10),
(355, 'zdata', 'zdata_server', 'zid', 400001002, 404105001, 0, 0, '', 1),
(356, 'zdata', 'zdata_server', 'name', 400001002, 404105002, 100, 0, '名称', 2),
(357, 'zdata', 'zdata_server', 'jdbc_class', 400001002, 404105002, 100, 0, '类名', 3),
(358, 'zdata', 'zdata_server', 'jdbc_url', 400001002, 404105002, 100, 0, '地址', 4),
(359, 'zdata', 'zdata_server', 'jdbc_user', 400001002, 404105002, 100, 0, '用户名', 5),
(360, 'zdata', 'zdata_server', 'jdbc_password', 400001002, 404105002, 100, 0, '密码', 6),
(361, 'zdata', 'zdata_server', 'note', 400001002, 404105002, 1000, 0, '描述', 7),
(362, 'zdata', 'zdata_source', 'zid', 400001002, 404105001, 0, 0, '', 1),
(363, 'zdata', 'zdata_source', 'uid', 400001001, 404105004, 32, 0, '', 2),
(364, 'zdata', 'zdata_source', 'did_source_type', 400001001, 404105001, 0, 0, '', 3),
(365, 'zdata', 'zdata_source', 'source_code', 400001001, 404105002, 45, 0, '', 4),
(366, 'zdata', 'zdata_source', 'source_name', 400001001, 404105002, 45, 0, '', 5),
(367, 'zdata', 'zdata_source', 'fields', 400001001, 404105002, 500, 0, '', 6),
(368, 'zdata', 'zdata_source', 'from', 400001001, 404105002, 500, 0, '', 7),
(369, 'zdata', 'zdata_source', 'where', 400001001, 404105002, 500, 0, '', 8),
(370, 'zdata', 'zdata_table', 'zid', 400001002, 404105001, 0, 0, '', 1),
(371, 'zdata', 'zdata_table', 'code', 400001002, 404105002, 45, 0, '编码', 2),
(372, 'zdata', 'zdata_table', 'name', 400001002, 404105002, 100, 0, '名称', 3),
(373, 'zdata', 'zdata_table', 'note', 400001002, 404105002, 100, 0, '描述', 4),
(374, 'zdata', 'zsrnpr_define', 'zid', 400001002, 404105001, 0, 0, '', 1),
(375, 'zdata', 'zsrnpr_define', 'code', 400001002, 404105002, 100, 0, '', 2),
(376, 'zdata', 'zsrnpr_define', 'name', 400001002, 404105002, 100, 0, '', 3),
(377, 'zdata', 'zsrnpr_define', 'value', 400001002, 404105002, 100, 0, '', 4),
(378, 'zdata', 'zsrnpr_define', 'note', 400001002, 404105002, 100, 0, '', 5),
(379, 'zdata', 'zsrnpr_define', 'level', 400001002, 404105001, 0, 0, '', 6),
(380, 'zdata', 'zweb_fields', 'zid', 400001002, 404105001, 0, 0, '', 1),
(381, 'zdata', 'zweb_fields', 'view_code', 400001001, 404105002, 100, 0, '视图编码', 2),
(382, 'zdata', 'zweb_fields', 'field_name', 400001001, 404105002, 100, 0, '字段名称', 3),
(383, 'zdata', 'zweb_fields', 'did_field_type', 400001001, 404105001, 0, 0, '字段类型', 4),
(384, 'zdata', 'zweb_fields', 'source_code', 400001001, 404105002, 100, 0, '数据源编码', 5),
(385, 'zdata', 'zweb_fields', 'source_parameter', 400001001, 404105002, 500, 0, '数据源参数', 6),
(386, 'zdata', 'zweb_fields', 'column_name', 400001001, 404105002, 100, 0, '数据列名称', 7),
(387, 'zdata', 'zweb_options', 'zid', 400001002, 404105001, 0, 0, '', 1),
(388, 'zdata', 'zweb_options', 'gid', 400001001, 404105004, 32, 0, '', 2),
(389, 'zdata', 'zweb_options', 'view_code', 400001001, 404105002, 100, 0, '视图编号', 3),
(390, 'zdata', 'zweb_options', 'name', 400001001, 404105002, 45, 0, '名称', 4),
(391, 'zdata', 'zweb_options', 'did_page_type', 400001001, 404105001, 0, 0, '', 5),
(392, 'zdata', 'zweb_options', 'did_option_type', 400001001, 404105001, 0, 0, '', 6),
(393, 'zdata', 'zweb_options', 'params', 400001001, 404105002, 100, 0, '操作参数', 7),
(394, 'zdata', 'zweb_view', 'zid', 400001002, 404105001, 0, 0, '', 1),
(395, 'zdata', 'zweb_view', 'uid', 400001001, 404105002, 32, 0, '', 2),
(396, 'zdata', 'zweb_view', 'code', 400001001, 404105002, 45, 0, '', 3),
(397, 'zdata', 'zweb_view', 'view_name', 400001001, 404105002, 100, 0, '', 4),
(398, 'zdata', 'zweb_view', 'table_name', 400001001, 404105002, 100, 0, '', 5);

-- --------------------------------------------------------

--
-- 表的结构 `zdata_server`
--

CREATE TABLE IF NOT EXISTS `zdata_server` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `jdbc_class` varchar(100) NOT NULL DEFAULT '' COMMENT '类名',
  `jdbc_url` varchar(100) NOT NULL DEFAULT '' COMMENT '地址',
  `jdbc_user` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名',
  `jdbc_password` varchar(100) NOT NULL DEFAULT '' COMMENT '密码',
  `note` varchar(1000) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='服务器表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `zdata_server`
--

INSERT INTO `zdata_server` (`zid`, `name`, `jdbc_class`, `jdbc_url`, `jdbc_user`, `jdbc_password`, `note`) VALUES
(1, 'zdata', 'com.mysql.jdbc.Driver', 'jdbc:mysql://127.0.0.1:3306/zdata?useUnicode=true&characterEncoding=utf8', 'root', '', '0');

-- --------------------------------------------------------

--
-- 表的结构 `zdata_source`
--

CREATE TABLE IF NOT EXISTS `zdata_source` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT NULL,
  `did_source_type` int(11) DEFAULT NULL,
  `source_code` varchar(45) DEFAULT NULL,
  `source_name` varchar(45) DEFAULT NULL,
  `fields` varchar(500) DEFAULT NULL,
  `from` varchar(500) DEFAULT NULL,
  `where` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='数据源定义' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `zdata_source`
--

INSERT INTO `zdata_source` (`zid`, `uid`, `did_source_type`, `source_code`, `source_name`, `fields`, `from`, `where`) VALUES
(1, NULL, 404119001, 'system_define', '系统定义类型表（查询用）', NULL, 'zsrnpr_define', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `zdata_table`
--

CREATE TABLE IF NOT EXISTS `zdata_table` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL COMMENT '编码',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `note` varchar(100) NOT NULL COMMENT '描述',
  PRIMARY KEY (`zid`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='数据表' AUTO_INCREMENT=38 ;

--
-- 转存表中的数据 `zdata_table`
--

INSERT INTO `zdata_table` (`zid`, `code`, `name`, `note`) VALUES
(30, 'zdata_column', 'zdata_column', '数据列表'),
(31, 'zdata_server', 'zdata_server', '服务器表'),
(32, 'zdata_source', 'zdata_source', '数据源定义'),
(33, 'zdata_table', 'zdata_table', '数据表'),
(34, 'zsrnpr_define', 'zsrnpr_define', ''),
(35, 'zweb_fields', 'zweb_fields', ''),
(36, 'zweb_options', 'zweb_options', '操作表'),
(37, 'zweb_view', 'zweb_view', '');

-- --------------------------------------------------------

--
-- 表的结构 `zsrnpr_define`
--

CREATE TABLE IF NOT EXISTS `zsrnpr_define` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`zid`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- 转存表中的数据 `zsrnpr_define`
--

INSERT INTO `zsrnpr_define` (`zid`, `code`, `name`, `value`, `note`, `level`) VALUES
(1, '400', '系统定义', '', '', 1),
(2, '400001', '是否', '', '', 2),
(6, '400001001', '是', '', '', 3),
(7, '400001002', '否', '', '', 3),
(8, '404101', '数据库类型定义', '', '', 2),
(9, '404105', '数据库字段定义', '', '', 2),
(10, '404105001', 'int', 'int', '', 3),
(11, '404105002', 'varchar', 'varchar', '', 3),
(12, '404105003', 'decimal', 'decimal', '', 3),
(13, '416101', '页面按钮工具栏', '', '', 2),
(14, '416101001', '提交', '', '', 3),
(15, '404', '数据库定义', '', '', 1),
(16, '416', '页面定义', '', '', 1),
(19, '416102', '页面元素类型', '', '', 2),
(20, '416102001', 'input', '', '', 3),
(21, '404119', '数据源类型定义', '', '定义数据源用，用于zdata_source表', 2),
(22, '404119001', '单表', '', '', 3),
(23, '404119002', '关联表', '', '', 3),
(24, '404105004', 'char', 'char', '', 3),
(33, '416103', '页面类型', '', '', 2),
(34, '416103001', '列表页', 'list', '', 3),
(35, '416103002', '新增页', 'put', '', 3),
(36, '416103003', '修改页', 'post', '', 3),
(37, '416103004', '查看页', 'show', '', 3),
(38, '416101002', '新增', '', '', 3),
(40, '416101003', '列表', '', '', 3),
(41, '416103005', '删除页', 'delete', '', 3),
(42, '416103101', '列表中字段', '', '', 3);

-- --------------------------------------------------------

--
-- 表的结构 `zweb_fields`
--

CREATE TABLE IF NOT EXISTS `zweb_fields` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `view_code` varchar(100) DEFAULT '' COMMENT '视图编码',
  `field_name` varchar(100) DEFAULT '' COMMENT '字段名称',
  `did_field_type` int(11) DEFAULT '0' COMMENT '字段类型',
  `source_code` varchar(100) DEFAULT '' COMMENT '数据源编码',
  `source_parameter` varchar(500) DEFAULT '' COMMENT '数据源参数',
  `column_name` varchar(100) DEFAULT '' COMMENT '数据列名称',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `zweb_options`
--

CREATE TABLE IF NOT EXISTS `zweb_options` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `gid` char(32) DEFAULT '',
  `view_code` varchar(100) DEFAULT '' COMMENT '视图编号',
  `name` varchar(45) DEFAULT '' COMMENT '名称',
  `did_page_type` int(11) DEFAULT '0',
  `did_option_type` int(11) DEFAULT '0',
  `params` varchar(100) DEFAULT '' COMMENT '操作参数',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='操作表' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `zweb_options`
--

INSERT INTO `zweb_options` (`zid`, `gid`, `view_code`, `name`, `did_page_type`, `did_option_type`, `params`) VALUES
(1, '', 'system_table', '添加', 416103001, 416101002, ''),
(2, '', 'system_table', '字段列表', 416103003, 416101003, ''),
(3, '', 'system_table', '操作列表', 416103003, 416101003, ''),
(4, '', 'system_table', '提交', 416103003, 0, ''),
(5, '', 'system_table', '修改', 416103101, 416101002, '');

-- --------------------------------------------------------

--
-- 表的结构 `zweb_view`
--

CREATE TABLE IF NOT EXISTS `zweb_view` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(32) DEFAULT '',
  `code` varchar(45) DEFAULT '' COMMENT '编码',
  `view_name` varchar(100) DEFAULT '' COMMENT '视图名称',
  `table_name` varchar(100) DEFAULT '' COMMENT '表名称',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='视图表' AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `zweb_view`
--

INSERT INTO `zweb_view` (`zid`, `uid`, `code`, `view_name`, `table_name`) VALUES
(1, '1', 'system_table', '系统视图2', 'zweb_view'),
(2, NULL, 'system_fields', '视图字段', 'zweb_fields'),
(3, NULL, 'system_options', '视图操作', 'zweb_options');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
