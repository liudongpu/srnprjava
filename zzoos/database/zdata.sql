-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2013 年 04 月 09 日 12:40
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
-- 表的结构 `zdatacolumn`
--

CREATE TABLE IF NOT EXISTS `zdatacolumn` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `zdataserver`
--

CREATE TABLE IF NOT EXISTS `zdataserver` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `jdbc_class` varchar(100) NOT NULL,
  `jdbc_url` varchar(100) NOT NULL,
  `jdbc_user` varchar(100) NOT NULL,
  `jdbc_password` varchar(100) NOT NULL,
  `use` int(11) NOT NULL,
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `zdataserver`
--

INSERT INTO `zdataserver` (`zid`, `code`, `name`, `jdbc_class`, `jdbc_url`, `jdbc_user`, `jdbc_password`, `use`) VALUES
(1, 'zdata', 'zdata', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `zdatatable`
--

CREATE TABLE IF NOT EXISTS `zdatatable` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `zdataterm`
--

CREATE TABLE IF NOT EXISTS `zdataterm` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `zdataterm`
--

INSERT INTO `zdataterm` (`zid`, `code`, `name`, `value`, `note`, `level`) VALUES
(1, '4497', 'systemterm', '4497', '', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
