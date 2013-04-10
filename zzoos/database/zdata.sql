-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2013 年 04 月 10 日 19:06
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
  `server_name` varchar(45) DEFAULT NULL,
  `table_name` varchar(45) DEFAULT NULL,
  `column_name` varchar(45) NOT NULL,
  `did_null_able` int(11) NOT NULL DEFAULT '0',
  `did_column_type` int(11) NOT NULL DEFAULT '0',
  `length_max` int(11) DEFAULT '0',
  `length_scale` int(11) DEFAULT '0',
  `note` varchar(100) DEFAULT NULL,
  `pid` int(11) DEFAULT '0',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `zdata_column`
--

INSERT INTO `zdata_column` (`zid`, `server_name`, `table_name`, `column_name`, `did_null_able`, `did_column_type`, `length_max`, `length_scale`, `note`, `pid`) VALUES
(1, 'zdata', 'zdata_column', 'zid', 400001002, 404105001, 0, 0, 'zid', 1),
(2, 'zdata', 'zdata_column', 'server_name', 400001001, 404105002, 45, 0, 'server_name', 2),
(3, 'zdata', 'zdata_column', 'table_name', 400001001, 404105002, 45, 0, 'table_name', 3),
(4, 'zdata', 'zdata_column', 'column_name', 400001002, 404105002, 45, 0, 'column_name', 4),
(5, 'zdata', 'zdata_column', 'did_null_able', 400001002, 404105001, 0, 0, 'did_null_able', 5),
(6, 'zdata', 'zdata_column', 'did_column_type', 400001002, 404105001, 0, 0, 'did_column_type', 6),
(7, 'zdata', 'zdata_column', 'length_max', 400001001, 404105001, 0, 0, 'length_max', 7),
(8, 'zdata', 'zdata_column', 'length_scale', 400001001, 404105001, 0, 0, 'length_scale', 8),
(9, 'zdata', 'zdata_column', 'note', 400001001, 404105002, 100, 0, 'note', 9),
(10, 'zdata', 'zdata_column', 'pid', 400001001, 404105001, 0, 0, 'pid', 10),
(11, 'zdata', 'zdata_server', 'zid', 400001002, 404105001, 0, 0, 'zid', 1),
(12, 'zdata', 'zdata_server', 'code', 400001002, 404105002, 20, 0, 'code', 2),
(13, 'zdata', 'zdata_server', 'name', 400001002, 404105002, 20, 0, 'name', 3),
(14, 'zdata', 'zdata_server', 'jdbc_class', 400001002, 404105002, 100, 0, 'jdbc_class', 4),
(15, 'zdata', 'zdata_server', 'jdbc_url', 400001002, 404105002, 100, 0, 'jdbc_url', 5),
(16, 'zdata', 'zdata_server', 'jdbc_user', 400001002, 404105002, 100, 0, 'jdbc_user', 6),
(17, 'zdata', 'zdata_server', 'jdbc_password', 400001002, 404105002, 100, 0, 'jdbc_password', 7),
(18, 'zdata', 'zdata_server', 'use', 400001002, 404105001, 0, 0, 'use', 8),
(19, 'zdata', 'zdata_table', 'zid', 400001002, 404105001, 0, 0, 'zid', 1),
(20, 'zdata', 'zdata_table', 'code', 400001002, 404105002, 45, 0, 'code', 2),
(21, 'zdata', 'zdata_table', 'name', 400001002, 404105002, 100, 0, 'name', 3),
(22, 'zdata', 'zdata_table', 'note', 400001002, 404105002, 100, 0, 'note', 4),
(23, 'zdata', 'zsrnpr_define', 'zid', 400001002, 404105001, 0, 0, 'zid', 1),
(24, 'zdata', 'zsrnpr_define', 'code', 400001002, 404105002, 100, 0, 'code', 2),
(25, 'zdata', 'zsrnpr_define', 'name', 400001002, 404105002, 100, 0, 'name', 3),
(26, 'zdata', 'zsrnpr_define', 'value', 400001002, 404105002, 100, 0, 'value', 4),
(27, 'zdata', 'zsrnpr_define', 'note', 400001002, 404105002, 100, 0, 'note', 5),
(28, 'zdata', 'zsrnpr_define', 'level', 400001002, 404105001, 0, 0, 'level', 6);

-- --------------------------------------------------------

--
-- 表的结构 `zdata_server`
--

CREATE TABLE IF NOT EXISTS `zdata_server` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `jdbc_class` varchar(100) NOT NULL,
  `jdbc_url` varchar(100) NOT NULL,
  `jdbc_user` varchar(100) NOT NULL,
  `jdbc_password` varchar(100) NOT NULL,
  `note` varchar(1000) NOT NULL,
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `zdata_server`
--

INSERT INTO `zdata_server` (`zid`, `name`, `jdbc_class`, `jdbc_url`, `jdbc_user`, `jdbc_password`, `note`) VALUES
(1, 'zdata', 'com.mysql.jdbc.Driver', 'jdbc:mysql://127.0.0.1:3306/zdata', 'root', '', '0');

-- --------------------------------------------------------

--
-- 表的结构 `zdata_table`
--

CREATE TABLE IF NOT EXISTS `zdata_table` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `name` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `zdata_table`
--

INSERT INTO `zdata_table` (`zid`, `code`, `name`, `note`) VALUES
(1, 'zdata_column', 'zdata_column', 'zdata_column'),
(2, 'zdata_server', 'zdata_server', 'zdata_server'),
(3, 'zdata_table', 'zdata_table', 'zdata_table'),
(4, 'zsrnpr_define', 'zsrnpr_define', 'zsrnpr_define');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

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
(10, '404105001', 'int', '', '', 3),
(11, '404105002', 'varchar', '', '', 3),
(12, '404105003', 'decimal', '', '', 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
