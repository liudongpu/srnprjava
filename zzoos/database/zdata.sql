-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 04 月 19 日 00:56
-- 服务器版本: 5.5.25a
-- PHP 版本: 5.4.4

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

DROP TABLE IF EXISTS `zdata_column`;
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='数据列表' AUTO_INCREMENT=714 ;

--
-- 转存表中的数据 `zdata_column`
--

INSERT INTO `zdata_column` (`zid`, `server_name`, `table_name`, `column_name`, `did_null_able`, `did_column_type`, `length_max`, `length_scale`, `note`, `orderid`) VALUES
(651, 'zdata', 'zdata_column', 'zid', 400001002, 404105001, 0, 0, '', 1),
(652, 'zdata', 'zdata_column', 'server_name', 400001001, 404105002, 45, 0, '服务器名称', 2),
(653, 'zdata', 'zdata_column', 'table_name', 400001001, 404105002, 45, 0, '表名', 3),
(654, 'zdata', 'zdata_column', 'column_name', 400001002, 404105002, 45, 0, '列名', 4),
(655, 'zdata', 'zdata_column', 'did_null_able', 400001002, 404105001, 0, 0, '是否为空', 5),
(656, 'zdata', 'zdata_column', 'did_column_type', 400001002, 404105001, 0, 0, '列类型', 6),
(657, 'zdata', 'zdata_column', 'length_max', 400001001, 404105001, 0, 0, '最大长度', 7),
(658, 'zdata', 'zdata_column', 'length_scale', 400001001, 404105001, 0, 0, '第二长度', 8),
(659, 'zdata', 'zdata_column', 'note', 400001001, 404105002, 100, 0, '名称', 9),
(660, 'zdata', 'zdata_column', 'orderid', 400001001, 404105001, 0, 0, '排序', 10),
(661, 'zdata', 'zdata_server', 'zid', 400001002, 404105001, 0, 0, '', 1),
(662, 'zdata', 'zdata_server', 'name', 400001002, 404105002, 100, 0, '名称', 2),
(663, 'zdata', 'zdata_server', 'jdbc_class', 400001002, 404105002, 100, 0, '类名', 3),
(664, 'zdata', 'zdata_server', 'jdbc_url', 400001002, 404105002, 100, 0, '地址', 4),
(665, 'zdata', 'zdata_server', 'jdbc_user', 400001002, 404105002, 100, 0, '用户名', 5),
(666, 'zdata', 'zdata_server', 'jdbc_password', 400001002, 404105002, 100, 0, '密码', 6),
(667, 'zdata', 'zdata_server', 'note', 400001002, 404105002, 1000, 0, '描述', 7),
(668, 'zdata', 'zdata_source', 'zid', 400001002, 404105001, 0, 0, '', 1),
(669, 'zdata', 'zdata_source', 'uid', 400001001, 404105004, 32, 0, '', 2),
(670, 'zdata', 'zdata_source', 'did_source_type', 400001001, 404105001, 0, 0, '', 3),
(671, 'zdata', 'zdata_source', 'source_code', 400001001, 404105002, 45, 0, '', 4),
(672, 'zdata', 'zdata_source', 'source_name', 400001001, 404105002, 45, 0, '', 5),
(673, 'zdata', 'zdata_source', 'fields', 400001001, 404105002, 500, 0, '', 6),
(674, 'zdata', 'zdata_source', 'from', 400001001, 404105002, 500, 0, '', 7),
(675, 'zdata', 'zdata_source', 'where', 400001001, 404105002, 500, 0, '', 8),
(676, 'zdata', 'zdata_table', 'zid', 400001002, 404105001, 0, 0, '', 1),
(677, 'zdata', 'zdata_table', 'code', 400001002, 404105002, 45, 0, '编码', 2),
(678, 'zdata', 'zdata_table', 'name', 400001002, 404105002, 100, 0, '名称', 3),
(679, 'zdata', 'zdata_table', 'note', 400001002, 404105002, 100, 0, '描述', 4),
(680, 'zdata', 'zsrnpr_define', 'zid', 400001002, 404105001, 0, 0, '', 1),
(681, 'zdata', 'zsrnpr_define', 'code', 400001002, 404105002, 100, 0, '', 2),
(682, 'zdata', 'zsrnpr_define', 'name', 400001002, 404105002, 100, 0, '', 3),
(683, 'zdata', 'zsrnpr_define', 'value', 400001002, 404105002, 100, 0, '', 4),
(684, 'zdata', 'zsrnpr_define', 'note', 400001002, 404105002, 100, 0, '', 5),
(685, 'zdata', 'zsrnpr_define', 'level', 400001002, 404105001, 0, 0, '', 6),
(686, 'zdata', 'zweb_fields', 'zid', 400001002, 404105001, 0, 0, '', 1),
(687, 'zdata', 'zweb_fields', 'view_code', 400001001, 404105002, 100, 0, '视图编码', 2),
(688, 'zdata', 'zweb_fields', 'column_name', 400001001, 404105002, 100, 0, '数据列名称', 3),
(689, 'zdata', 'zweb_fields', 'field_name', 400001001, 404105002, 100, 0, '字段名称', 4),
(690, 'zdata', 'zweb_fields', 'did_field_type', 400001001, 404105001, 0, 0, '字段类型', 5),
(691, 'zdata', 'zweb_fields', 'source_code', 400001001, 404105002, 100, 0, '数据源编码', 6),
(692, 'zdata', 'zweb_fields', 'source_parameter', 400001001, 404105002, 500, 0, '数据源参数', 7),
(693, 'zdata', 'zweb_fields', 'level_list', 400001001, 404105001, 0, 0, '列表标记', 8),
(694, 'zdata', 'zweb_fields', 'level_put', 400001001, 404105001, 0, 0, '插入标记', 9),
(695, 'zdata', 'zweb_fields', 'level_post', 400001001, 404105001, 0, 0, '修改标记', 10),
(696, 'zdata', 'zweb_fields', 'level_show', 400001001, 404105001, 0, 0, '展示标记', 11),
(697, 'zdata', 'zweb_fields', 'level_query', 400001001, 404105001, 0, 0, '查询条件', 12),
(698, 'zdata', 'zweb_options', 'zid', 400001002, 404105001, 0, 0, '', 1),
(699, 'zdata', 'zweb_options', 'uid', 400001001, 404105004, 32, 0, '', 2),
(700, 'zdata', 'zweb_options', 'view_code', 400001001, 404105002, 100, 0, '视图编号', 3),
(701, 'zdata', 'zweb_options', 'name', 400001001, 404105002, 45, 0, '名称', 4),
(702, 'zdata', 'zweb_options', 'did_page_type', 400001001, 404105001, 0, 0, '', 5),
(703, 'zdata', 'zweb_options', 'did_option_type', 400001001, 404105001, 0, 0, '', 6),
(704, 'zdata', 'zweb_options', 'params', 400001001, 404105002, 100, 0, '操作参数', 7),
(705, 'zdata', 'zweb_view', 'zid', 400001002, 404105001, 0, 0, '', 1),
(706, 'zdata', 'zweb_view', 'uid', 400001001, 404105002, 32, 0, '', 2),
(707, 'zdata', 'zweb_view', 'code', 400001001, 404105002, 45, 0, '编码', 3),
(708, 'zdata', 'zweb_view', 'view_name', 400001001, 404105002, 100, 0, '视图名称', 4),
(709, 'zdata', 'zweb_view', 'table_name', 400001001, 404105002, 100, 0, '表名称', 5);

-- --------------------------------------------------------

--
-- 表的结构 `zdata_server`
--

DROP TABLE IF EXISTS `zdata_server`;
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

DROP TABLE IF EXISTS `zdata_source`;
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
(1, NULL, 404119115, 'system_define', '系统定义类型表（查询用）', NULL, 'zsrnpr_define', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `zdata_table`
--

DROP TABLE IF EXISTS `zdata_table`;
CREATE TABLE IF NOT EXISTS `zdata_table` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL COMMENT '编码',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `note` varchar(100) NOT NULL COMMENT '描述',
  PRIMARY KEY (`zid`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='数据表' AUTO_INCREMENT=113 ;

--
-- 转存表中的数据 `zdata_table`
--

INSERT INTO `zdata_table` (`zid`, `code`, `name`, `note`) VALUES
(98, 'zdata_column', 'zdata_column', '数据列表'),
(99, 'zdata_server', 'zdata_server', '服务器表'),
(100, 'zdata_source', 'zdata_source', '数据源定义'),
(101, 'zdata_table', 'zdata_table', '数据表'),
(102, 'zsrnpr_define', 'zsrnpr_define', ''),
(103, 'zweb_fields', 'zweb_fields', '视图字段表'),
(104, 'zweb_options', 'zweb_options', '操作表'),
(105, 'zweb_view', 'zweb_view', '视图表');

-- --------------------------------------------------------

--
-- 表的结构 `zsrnpr_define`
--

DROP TABLE IF EXISTS `zsrnpr_define`;
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- 转存表中的数据 `zsrnpr_define`
--

INSERT INTO `zsrnpr_define` (`zid`, `code`, `name`, `value`, `note`, `level`) VALUES
(1, '400', '系统定义', '', '', 1),
(2, '400001', '是否', '', '', 2),
(6, '400001001', '是', '', '', 3),
(7, '400001002', '否', '', '', 3),
(8, '404120', '数据库类型定义', '', '', 2),
(9, '404103', '数据库字段定义', 'column', '', 2),
(10, '404103109', 'int', 'int', '', 3),
(11, '404103122', 'varchar', 'varchar', '', 3),
(12, '404103104', 'decimal', 'decimal', '', 3),
(13, '415101', '页面按钮工具栏', 'options', '', 2),
(14, '415101019', '提交', 'submit', '', 3),
(15, '404', '数据库定义', 'data', '', 1),
(16, '416', '页面定义', 'page', '', 1),
(19, '416108', '页面元素类型', 'html', '', 2),
(20, '416108001', '文本输入框', 'input', '', 3),
(21, '404119', '数据源类型定义', 'source', '定义数据源用，用于zdata_source表', 2),
(22, '404119115', '单表', 'one', '', 3),
(23, '404119103', '关联表', 'conc', '', 3),
(24, '404103103', 'char', 'char', '', 3),
(33, '416120', '页面类型', '', '', 2),
(34, '416120103', '列表页', 'chart', '', 3),
(35, '416120101', '新增页', 'add', '', 3),
(36, '416120105', '修改页', 'edit', '', 3),
(37, '416120102', '查看页', 'book', '', 3),
(38, '415101001', '新增', 'add', '', 3),
(40, '415101005', '修改', 'edit', '', 3),
(41, '416120104', '删除页', 'delete', '', 3),
(43, '416108002', '选择下拉框', 'select', '', 3),
(44, '416120107', '查询结果内', 'grid', '', 3),
(45, '415101012', '自定义链接', 'link', '自定义链接', 3),
(46, '415101305', '列表页表格-修改', 'chart-edit', '列表页表格-修改', 3),
(47, '416120106', '执行专用', 'func', '', 3),
(48, '415', '操作定义', 'options', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `zweb_fields`
--

DROP TABLE IF EXISTS `zweb_fields`;
CREATE TABLE IF NOT EXISTS `zweb_fields` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='视图字段表' AUTO_INCREMENT=45 ;

--
-- 转存表中的数据 `zweb_fields`
--

INSERT INTO `zweb_fields` (`zid`, `view_code`, `column_name`, `field_name`, `did_field_type`, `source_code`, `source_parameter`, `level_list`, `level_put`, `level_post`, `level_show`, `level_query`) VALUES
(23, 'system_fields', 'zid', '', 0, '', '', 0, 0, 0, 0, 0),
(24, 'system_fields', 'view_code', '视图编码', 0, '', '', 0, 0, 0, 0, 0),
(25, 'system_fields', 'column_name', '数据列名称', 0, '', '', 0, 0, 0, 0, 0),
(26, 'system_fields', 'field_name', '字段名称', 0, '', '', 0, 0, 0, 0, 0),
(27, 'system_fields', 'did_field_type', '字段类型', 0, '', '', 0, 0, 0, 0, 0),
(28, 'system_fields', 'source_code', '数据源编码', 0, '', '', 0, 0, 0, 0, 0),
(29, 'system_fields', 'source_parameter', '数据源参数', 0, '', '', 0, 0, 0, 0, 0),
(30, 'system_fields', 'deep_list', '列表标记', 0, '', '', 0, 0, 0, 0, 0),
(31, 'system_fields', 'deep_put', '插入标记', 0, '', '', 0, 0, 0, 0, 0),
(32, 'system_fields', 'deep_post', '修改标记', 0, '', '', 0, 0, 0, 0, 0),
(33, 'system_fields', 'deep_show', '展示标记', 0, '', '', 0, 0, 0, 0, 0),
(38, 'system_table', 'zid', '', 0, '', '', 0, 0, 0, 0, 0),
(39, 'system_table', 'uid', '', 0, '', '', 0, 0, 0, 0, 0),
(40, 'system_table', 'code', '编码3', 0, '', '', 0, 0, 0, 0, 0),
(41, 'system_table', 'view_name', '视图名称', 0, '', '', 0, 0, 0, 0, 0),
(42, 'system_table', 'table_name', '表名称', 0, '', '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `zweb_options`
--

DROP TABLE IF EXISTS `zweb_options`;
CREATE TABLE IF NOT EXISTS `zweb_options` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(32) DEFAULT '',
  `view_code` varchar(100) DEFAULT '' COMMENT '视图编号',
  `name` varchar(45) DEFAULT '' COMMENT '名称',
  `did_page_type` int(11) DEFAULT '0',
  `did_option_type` int(11) DEFAULT '0',
  `params` varchar(100) DEFAULT '' COMMENT '操作参数',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='操作表' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `zweb_options`
--

INSERT INTO `zweb_options` (`zid`, `uid`, `view_code`, `name`, `did_page_type`, `did_option_type`, `params`) VALUES
(1, '', 'system_table', '添加', 416120103, 415101001, ''),
(2, '', 'system_table', '字段列表', 416120105, 415101005, ''),
(3, '', 'system_table', '操作列表', 416120105, 415101005, ''),
(4, '', 'system_table', '提交', 416120105, 415101019, ''),
(5, '', 'system_table', '修改', 416120101, 415101001, ''),
(6, '42', 'system_table', '修改字段', 416120107, 415101012, 'zyou/list-system_fields-42-view_code=[code]'),
(7, '', 'system_fields', '修改', 416120107, 415101305, ''),
(8, '', 'system_table', '修改', 416120107, 415101305, '');

-- --------------------------------------------------------

--
-- 表的结构 `zweb_view`
--

DROP TABLE IF EXISTS `zweb_view`;
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
(1, '1', 'system_table', '系统视图3', 'zweb_view'),
(2, '2', 'system_fields', '视图字段', 'zweb_fields'),
(3, '3', 'system_options', '视图操作', 'zweb_options');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
