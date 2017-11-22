-- phpMyAdmin SQL Dump
-- version 3.4.7.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 年 11 月 22 日 11:47
-- 服务器版本: 5.1.69
-- PHP 版本: 5.2.17p1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `weizan1`
--

-- --------------------------------------------------------

--
-- 表的结构 `ims_account`
--

CREATE TABLE IF NOT EXISTS `ims_account` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `hash` varchar(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `isconnect` tinyint(4) NOT NULL DEFAULT '0',
  `isdeleted` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `ims_account`
--

INSERT INTO `ims_account` (`acid`, `uniacid`, `hash`, `type`, `isconnect`, `isdeleted`) VALUES
(1, 1, 'uRr8qvQV', 1, 0, 1),
(2, 2, 'WusXtU66', 1, 0, 1),
(3, 3, 'Y8CiWcxw', 1, 0, 1),
(4, 4, 's109DzJ8', 1, 0, 1),
(5, 5, 'nSE8w9Qe', 1, 0, 0),
(6, 6, 'QGK277Gi', 1, 1, 0),
(7, 7, 'EuluZEcT', 1, 0, 0),
(8, 8, 'Ps7AAba5', 1, 0, 0),
(9, 9, 'c3Yh2jGK', 1, 1, 0),
(10, 10, 'L918pw0R', 1, 0, 1),
(11, 11, 'E3Px446c', 1, 1, 0),
(12, 12, 'AY1b2a1y', 1, 0, 0),
(13, 13, 'b6lMT571', 1, 0, 0),
(14, 14, 'ZX8P8kRl', 1, 0, 0),
(15, 15, 'xi85AIEl', 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_account_wechats`
--

CREATE TABLE IF NOT EXISTS `ims_account_wechats` (
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `access_token` varchar(1000) NOT NULL DEFAULT '',
  `level` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `country` varchar(10) NOT NULL,
  `province` varchar(3) NOT NULL,
  `city` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `styleid` int(10) unsigned NOT NULL DEFAULT '1',
  `jsapi_ticket` varchar(1000) NOT NULL,
  `subscribeurl` varchar(120) NOT NULL,
  `card_ticket` varchar(1000) NOT NULL,
  `topad` varchar(225) NOT NULL,
  `footad` varchar(225) NOT NULL,
  `auth_refresh_token` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_account_wechats`
--

INSERT INTO `ims_account_wechats` (`acid`, `uniacid`, `token`, `encodingaeskey`, `access_token`, `level`, `name`, `account`, `original`, `signature`, `country`, `province`, `city`, `username`, `password`, `lastupdate`, `key`, `secret`, `styleid`, `jsapi_ticket`, `subscribeurl`, `card_ticket`, `topad`, `footad`, `auth_refresh_token`) VALUES
(1, 1, 'omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP', '', '', 1, 'Wzteam', '', '', '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', '', ''),
(2, 2, 'KntCTJm9cDEt3J3M9ntN8n3JUSc4dJnN', 'At85zO5E8eB531E8eOoEZElDnTN752258N8EMLEeveE', '', 2, '123', '123', '123', '', '', '', '', '', '', 0, '123', '123', 1, '', '', '', '', '', ''),
(3, 3, 'Gw3Jctq1Em10Uu1z1JH1x7t13fucCzo7', 'Pa74W5tAeUKsREErZrnTuHR7tW6vHIi5Ri5AivvaaUv', '', 1, '123123123', '123', '', '', '', '', '', '', '', 0, '123', '123', 1, '', '', '', '', '', ''),
(4, 4, 'vo636s7DVl03tSi6i666iytplSo3YdYd', 'WitGiMbilYJ9rlTW4cAawaDBkaUDutIFgDEvEUwAHjV', '', 4, '口口碑点餐', '', 'gh_925d4d7e2212', '', '', '', '', '', '', 0, 'wxb5f09a820a3a1aaa', '443fd39be19c7da414bf1364fd86e894', 1, '', '', '', '', '', ''),
(5, 5, 'vo636s7DVl03tSi6i666iytplSo3YdYd', 'WitGiMbilYJ9rlTW4cAawaDBkaUDutIFgDEvEUwAHjV', '', 4, '口口碑', '', 'gh_925d4d7e2212', '', '', '', '', '', '', 0, 'wxb5f09a820a3a1aaa', '443fd39be19c7da414bf1364fd86e894', 1, '', '', '', '', '', ''),
(6, 6, 'u57vp4xqr6ZJvSn2yOB5KkOx4yYozkB4', 'kx9mG9X2IwWY4W9I9Wxy8y2IT2Ywg89YFwwziMwl67w', '', 4, '点了码', 'dianlema_order@163.com', 'gh_fbed32f1f289', '', '', '', '', '', '', 0, 'wxf906fe71b74173e8', '364d27b352bfe9b27c9ec814e4b074aa', 1, '', '', '', '', '', ''),
(7, 7, 'osMMWNZLHl6d6ksM94JbB36KSN7jiK46', 'P8ffZDK3FfF9SXfPS62FPSFxK0R9k8f44FlR63pD9wf', '', 1, '1111', '111', '111', '', '', '', '', '', '', 0, '11', '11', 1, '', '', '', '', '', ''),
(8, 8, 'ta7b5ug33mFtt8bm3GgT35Ft3EN3N3IC', 'Fjdn1FaZJRaEqSxjcDNRRCoXxXWzmaoM3RpCfoqN1N1', '', 1, '测试公众号', '', '', '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', '', ''),
(9, 9, 'khTbTTSTTNT0sNtaCNANUSBstIAhTzBp', 'NpmQi0zkQKlvl5iPZVMvVshvlWqhRpc53o3OWo5lzv0', '', 1, '猿人点餐', 'wang_tingxie', 'gh_91d09ef450f5', '', '', '', '', '', '', 0, 'wx77769cf6c77a1ef7', '060ab9eb0106b7238175e96fb796f2ed', 1, '', '', '', '', '', ''),
(10, 10, 'mu2yy57FLU0Ey9FI6575qa4zoI9yMfuu', 'zSX72SrqT1R7R12fBZiEBCxcNB1bQ72NQMXqBsz7BT7', '', 1, '藤菲Tyuankeo', '', '', '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', '', ''),
(11, 11, 'gOsM61IM19sYg1I2U9j3o22o6Gu2m2Li', 'w8PEE3688tjKe6KKeERrTh88g88RHzRr8frJpG8nRM3', '', 1, '青草香1', '450311024@qq.com', 'gh_529b9bcffb19', '', '', '', '', '', '', 0, 'wx473f166ad8a8c8cd', '6c4843c5772d14bb8048914d99818a0c', 1, '', '', '', '', '', ''),
(12, 12, 'YUfqb97C008uhB19BuuNvH8ciFxh66s0', 'y7xSGGIGIl474G0LgfgIlGi8760GS7GIii6kgZ60066', '', 1, '一剪梅牛肉火锅', 'yijianmei', 'yijianmei', '', '', '', '', '', '', 0, '123', '123', 1, '', '', '', '', '', ''),
(13, 13, 'V17yZIfkYCvF7fLLOhm17zyyUIRuhLuI', 'xVN7kL3ACV33J6IaQ19YzLzQ8V8QjvB1L3nL7Dc2kYd', '', 1, '一刀切牛肉火锅', 'Yidaoqie Beef in hot pot', '123456789', '', '', '', '', '', '', 0, '1234567890', '1234567890', 1, '', '', '', '', '', ''),
(14, 14, 'bvovv77dwwOAx7rwzZq7X3q7r7X3nN3D', 'wl5TRZ755rLa0l37jg0r022C20jljRORa2ayrA0rgZt', '', 1, '刀刀刀', 'daodaodao', '132457890', '', '', '', '', '', '', 0, '123457890', '1324567890', 1, '', '', '', '', '', ''),
(15, 15, 'FhsZl2ZX6nbaHKHFlo2LkVBaxC9969kv', 'yZSwZtvguuu84tjnz0ZnJZsTtJv0t8ft01bVUNtU1U0', '', 1, 'Tyuankeo', '', '', '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_account_wxapp`
--

CREATE TABLE IF NOT EXISTS `ims_account_wxapp` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(43) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `version` varchar(10) NOT NULL,
  `access_token` varchar(200) NOT NULL,
  `expirein` int(10) unsigned NOT NULL,
  `refresh_token` varchar(100) NOT NULL,
  `plugin` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `fail_reason` text NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_account_yixin`
--

CREATE TABLE IF NOT EXISTS `ims_account_yixin` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `access_token` varchar(1000) NOT NULL DEFAULT '',
  `level` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `styleid` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`acid`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_clerks`
--

CREATE TABLE IF NOT EXISTS `ims_activity_clerks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `password` (`password`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_clerk_menu`
--

CREATE TABLE IF NOT EXISTS `ims_activity_clerk_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `displayorder` int(4) NOT NULL,
  `pid` int(6) NOT NULL,
  `group_name` varchar(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `url` varchar(60) NOT NULL,
  `type` varchar(20) NOT NULL,
  `permission` varchar(50) NOT NULL,
  `system` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `ims_activity_clerk_menu`
--

INSERT INTO `ims_activity_clerk_menu` (`id`, `uniacid`, `displayorder`, `pid`, `group_name`, `title`, `icon`, `url`, `type`, `permission`, `system`) VALUES
(1, 0, 0, 0, 'mc', '快捷交易', '', '', '', 'mc_manage', 1),
(2, 0, 0, 1, '', '会员积分修改', 'fa fa-money', 'credit1', 'modal', 'mc_credit1', 1),
(3, 0, 0, 1, '', '会员余额修改', 'fa fa-cny', 'credit2', 'modal', 'mc_credit2', 1),
(4, 0, 0, 1, '', '消费', 'fa fa-usd', 'consume', 'modal', 'mc_consume', 1),
(5, 0, 0, 1, '', '发放会员卡', 'fa fa-credit-card', 'card', 'modal', 'mc_card', 1),
(6, 0, 0, 0, 'stat', '数据统计', '', '', '', 'stat_manage', 1),
(7, 0, 0, 6, '', '会员积分统计', 'fa fa-bar-chart', './index.php?c=stat&a=credit1', 'url', 'stat_credit1', 1),
(8, 0, 0, 6, '', '会员余额统计', 'fa fa-bar-chart', './index.php?c=stat&a=credit2', 'url', 'stat_credit2', 1),
(9, 0, 0, 6, '', '现金消费统计', 'fa fa-bar-chart', './index.php?c=stat&a=cash', 'url', 'stat_cash', 1),
(10, 0, 0, 6, '', '会员卡领卡统计', 'fa fa-bar-chart', './index.php?c=stat&a=card', 'url', 'stat_card', 1),
(11, 0, 0, 0, 'activity', '卡券核销', '', '', '', 'activity_card_manage', 1),
(19, 0, 0, 18, '', '微信刷卡收款', 'fa fa-money', './index.php?c=paycenter&a=wxmicro&do=pay', 'url', 'paycenter_wxmicro_pay', 1),
(18, 0, 0, 0, 'paycenter', '收银台', '', '', '', 'paycenter_manage', 1),
(16, 0, 0, 6, '', '收银台收款统计', 'fa fa-bar-chart', './index.php?c=stat&a=paycenter', 'url', 'stat_paycenter', 1),
(17, 0, 0, 11, '', '卡券核销', 'fa fa-money', 'cardconsume', 'modal', 'coupon_consume', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_coupon`
--

CREATE TABLE IF NOT EXISTS `ims_activity_coupon` (
  `couponid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `type` tinyint(4) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `couponsn` varchar(50) NOT NULL,
  `description` text,
  `discount` decimal(10,2) NOT NULL,
  `condition` decimal(10,2) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '0',
  `dosage` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `credittype` varchar(20) NOT NULL,
  `use_module` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`couponid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_coupon_allocation`
--

CREATE TABLE IF NOT EXISTS `ims_activity_coupon_allocation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`couponid`,`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_coupon_modules`
--

CREATE TABLE IF NOT EXISTS `ims_activity_coupon_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `couponid` (`couponid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_coupon_password`
--

CREATE TABLE IF NOT EXISTS `ims_activity_coupon_password` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(200) NOT NULL DEFAULT '',
  `mobile` varchar(20) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(30) NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_coupon_record`
--

CREATE TABLE IF NOT EXISTS `ims_activity_coupon_record` (
  `recid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `grantmodule` varchar(50) NOT NULL DEFAULT '',
  `granttime` int(10) unsigned NOT NULL DEFAULT '0',
  `usemodule` varchar(50) NOT NULL DEFAULT '',
  `usetime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `remark` varchar(300) NOT NULL DEFAULT '',
  `couponid` int(10) unsigned NOT NULL,
  `operator` varchar(30) NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  PRIMARY KEY (`recid`),
  KEY `couponid` (`uid`,`grantmodule`,`usemodule`,`status`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_exchange`
--

CREATE TABLE IF NOT EXISTS `ims_activity_exchange` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `couponid` int(10) NOT NULL DEFAULT '0',
  `uniacid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `extra` varchar(3000) NOT NULL DEFAULT '',
  `credit` int(10) unsigned NOT NULL,
  `credittype` varchar(10) NOT NULL,
  `pretotal` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `extra` (`extra`(333))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_exchange_trades`
--

CREATE TABLE IF NOT EXISTS `ims_activity_exchange_trades` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `exid` int(10) unsigned NOT NULL,
  `type` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `uniacid` (`uniacid`,`uid`,`exid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_exchange_trades_shipping`
--

CREATE TABLE IF NOT EXISTS `ims_activity_exchange_trades_shipping` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `exid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  `province` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_modules`
--

CREATE TABLE IF NOT EXISTS `ims_activity_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `exid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `available` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `uniacid` (`uniacid`),
  KEY `module` (`module`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_modules_record`
--

CREATE TABLE IF NOT EXISTS `ims_activity_modules_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL,
  `num` tinyint(3) NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_activity_stores`
--

CREATE TABLE IF NOT EXISTS `ims_activity_stores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `source` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1为系统门店，2为微信门店',
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `location_id` (`location_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_agent`
--

CREATE TABLE IF NOT EXISTS `ims_agent` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(800) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `usercount` int(10) NOT NULL DEFAULT '0',
  `wxusercount` int(10) NOT NULL DEFAULT '0',
  `sitename` varchar(50) NOT NULL DEFAULT '',
  `sitelogo` varchar(200) NOT NULL DEFAULT '',
  `qrcode` varchar(100) NOT NULL DEFAULT '',
  `sitetitle` varchar(60) NOT NULL DEFAULT '',
  `siteurl` varchar(100) NOT NULL DEFAULT '',
  `robotname` varchar(40) NOT NULL DEFAULT '',
  `connectouttip` varchar(50) NOT NULL DEFAULT '',
  `needcheckuser` tinyint(1) NOT NULL DEFAULT '0',
  `regneedmp` tinyint(1) NOT NULL DEFAULT '1',
  `reggid` int(10) NOT NULL DEFAULT '0',
  `regvaliddays` mediumint(4) NOT NULL DEFAULT '30',
  `qq` varchar(12) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `metades` varchar(300) NOT NULL DEFAULT '',
  `metakeywords` varchar(200) NOT NULL DEFAULT '',
  `statisticcode` varchar(300) NOT NULL DEFAULT '',
  `copyright` varchar(100) NOT NULL DEFAULT '',
  `alipayaccount` varchar(50) NOT NULL DEFAULT '',
  `alipaypid` varchar(100) NOT NULL DEFAULT '',
  `alipaykey` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `salt` varchar(6) NOT NULL DEFAULT '',
  `money` int(10) NOT NULL DEFAULT '0',
  `moneybalance` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `endtime` varchar(15) NOT NULL,
  `lastloginip` varchar(26) NOT NULL DEFAULT '',
  `lastlogintime` int(11) NOT NULL DEFAULT '0',
  `wxacountprice` mediumint(4) NOT NULL DEFAULT '0',
  `monthprice` mediumint(4) NOT NULL DEFAULT '0',
  `appid` varchar(50) NOT NULL DEFAULT '',
  `appsecret` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(40) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `isnav` int(11) NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_agent_copyright`
--

CREATE TABLE IF NOT EXISTS `ims_agent_copyright` (
  `id` int(10) NOT NULL,
  `uid` int(5) unsigned NOT NULL,
  `yuming` varchar(30) NOT NULL,
  `copyright` varchar(5000) NOT NULL DEFAULT '',
  `pifu` varchar(30) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_agent_copyright`
--

INSERT INTO `ims_agent_copyright` (`id`, `uid`, `yuming`, `copyright`, `pifu`) VALUES
(0, 16, 'dianlema.com.cn', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_agent_expenserecords`
--

CREATE TABLE IF NOT EXISTS `ims_agent_expenserecords` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `amount` int(10) NOT NULL DEFAULT '0',
  `orderid` varchar(60) NOT NULL DEFAULT '',
  `des` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `times` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `num` int(10) NOT NULL,
  `group` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`,`times`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_appdabao`
--

CREATE TABLE IF NOT EXISTS `ims_appdabao` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` varchar(200) NOT NULL,
  `domain` varchar(200) NOT NULL,
  `app_id` int(10) unsigned NOT NULL,
  `app_key` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_appdabao_list`
--

CREATE TABLE IF NOT EXISTS `ims_appdabao_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` varchar(200) NOT NULL,
  `web_app_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `oktime` int(10) unsigned DEFAULT NULL,
  `err_result` varchar(200) DEFAULT NULL,
  `addtime` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `intro` text,
  `weburl` varchar(500) NOT NULL,
  `apptype` int(11) NOT NULL DEFAULT '0',
  `icopic` varchar(200) NOT NULL,
  `hellopic` varchar(200) NOT NULL,
  `hidetop` int(11) NOT NULL DEFAULT '0',
  `screen` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `weid` (`weid`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_about`
--

CREATE TABLE IF NOT EXISTS `ims_article_about` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_agent`
--

CREATE TABLE IF NOT EXISTS `ims_article_agent` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `mobilephone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_case`
--

CREATE TABLE IF NOT EXISTS `ims_article_case` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `weixinh` varchar(50) NOT NULL,
  `weixintag` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_catecase`
--

CREATE TABLE IF NOT EXISTS `ims_article_catecase` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_category`
--

CREATE TABLE IF NOT EXISTS `ims_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_link`
--

CREATE TABLE IF NOT EXISTS `ims_article_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `siteurl` varchar(100) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_news`
--

CREATE TABLE IF NOT EXISTS `ims_article_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_notice`
--

CREATE TABLE IF NOT EXISTS `ims_article_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_product`
--

CREATE TABLE IF NOT EXISTS `ims_article_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `author` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_reply`
--

CREATE TABLE IF NOT EXISTS `ims_article_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `articleid` int(11) NOT NULL,
  `isfill` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_unread_notice`
--

CREATE TABLE IF NOT EXISTS `ims_article_unread_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `notice_id` (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_wenda`
--

CREATE TABLE IF NOT EXISTS `ims_article_wenda` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `modid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_basic_reply`
--

CREATE TABLE IF NOT EXISTS `ims_basic_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `ims_basic_reply`
--

INSERT INTO `ims_basic_reply` (`id`, `rid`, `content`) VALUES
(1, 9, '123测试'),
(3, 10, '干吗？');

-- --------------------------------------------------------

--
-- 表的结构 `ims_business`
--

CREATE TABLE IF NOT EXISTS `ims_business` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL DEFAULT '',
  `phone` varchar(15) NOT NULL DEFAULT '',
  `qq` varchar(15) NOT NULL DEFAULT '',
  `province` varchar(50) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `dist` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(500) NOT NULL DEFAULT '',
  `lng` varchar(10) NOT NULL DEFAULT '',
  `lat` varchar(10) NOT NULL DEFAULT '',
  `industry1` varchar(10) NOT NULL DEFAULT '',
  `industry2` varchar(10) NOT NULL DEFAULT '',
  `createtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lat_lng` (`lng`,`lat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_buymod_mbuy`
--

CREATE TABLE IF NOT EXISTS `ims_buymod_mbuy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `module` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `status` int(2) NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_buymod_members`
--

CREATE TABLE IF NOT EXISTS `ims_buymod_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `credit` decimal(10,2) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_buymod_modules`
--

CREATE TABLE IF NOT EXISTS `ims_buymod_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `module` varchar(50) NOT NULL,
  `price` decimal(10,2) unsigned NOT NULL,
  `outLink` varchar(500) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_buymod_payrecords`
--

CREATE TABLE IF NOT EXISTS `ims_buymod_payrecords` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `orderid` varchar(200) NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  `credit` decimal(10,2) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `pay_type` int(2) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `order_no` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_buymod_payset`
--

CREATE TABLE IF NOT EXISTS `ims_buymod_payset` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `alipayaccount` varchar(100) NOT NULL DEFAULT '',
  `alipaypartner` varchar(100) NOT NULL DEFAULT '',
  `alipaykey` varchar(100) NOT NULL DEFAULT '',
  `yunaccount` varchar(100) NOT NULL,
  `yunpid` varchar(100) NOT NULL,
  `yunkey` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_buymod_record`
--

CREATE TABLE IF NOT EXISTS `ims_buymod_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `module` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `price` decimal(10,2) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_attachment`
--

CREATE TABLE IF NOT EXISTS `ims_core_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=132 ;

--
-- 转存表中的数据 `ims_core_attachment`
--

INSERT INTO `ims_core_attachment` (`id`, `uniacid`, `uid`, `filename`, `attachment`, `type`, `createtime`) VALUES
(1, 1, 1, 'logo.jpg', 'images/global/b2mYvWR0k0Wv7URcE2hSJm6kZ6M9uk.jpg', 1, 1504955597),
(2, 0, 1, 'qrcode_5.jpg', 'images/0/2017/09/T2Mq0522K22e3QEW5eeMMM95EE99O2.jpg', 1, 1506308710),
(3, 5, 1, 'qrcode_5.jpg', 'images/5/2017/09/aOdpWOt3tWwn7k7xpoup7Ku7PT7TOP.jpg', 1, 1506309124),
(4, 5, 1, 'YCAy0Oe4JV9t3Yv5j4n9m43c83noeC', 'images/5/2017/10/YCAy0Oe4JV9t3Yv5j4n9m43c83noeC.jpg', 1, 1508564579),
(5, 5, 1, '1.jpg', 'images/5/2017/10/oz6z9r5616rt6U1E1r1kQB6R66j2KW.jpg', 1, 1508925687),
(6, 5, 1, '5.jpg', 'images/5/2017/10/jjgj5nZhjESFEZR59hgJEexh9jEerZ.jpg', 1, 1508925746),
(7, 5, 1, '6.jpg', 'images/5/2017/10/Jfc6q3MnEZzc1931613x99yc1T6cWC.jpg', 1, 1508925746),
(8, 5, 1, '22.jpg', 'images/5/2017/10/jc6qJoCK860dPJ81f3F6oNzokLzUO1.jpg', 1, 1508925746),
(9, 5, 1, '2.jpg', 'images/5/2017/10/X6cjC3mdUBd79yb73d7O3y36O9Jbub.jpg', 1, 1508925746),
(10, 5, 1, '1.jpg', 'images/5/2017/10/YCaiIIUarQ04caXxp1ipi11Ga04p0D.jpg', 1, 1508925746),
(11, 5, 1, '11.jpg', 'images/5/2017/10/kTZrwX24r2r95ZG48z30F3Xbluerw5.jpg', 1, 1508925746),
(12, 5, 1, '33.jpg', 'images/5/2017/10/A1b7B74LbVcMzMuNZm6yCCCu6zFbc5.jpg', 1, 1508925746),
(13, 5, 1, '44.jpg', 'images/5/2017/10/H4H2Q2b422ZB422YmhBAQ2bJ9IwCIa.jpg', 1, 1508925746),
(14, 5, 1, '55.jpg', 'images/5/2017/10/khdLb0zHyl8L22IlPCxOr2PlP8Brll.jpg', 1, 1508925746),
(15, 5, 1, '3333.jpg', 'images/5/2017/10/IXw7z4H75WW7wRXZHArP4w7L2WxxCl.jpg', 1, 1508925746),
(16, 5, 1, '1111.jpg', 'images/5/2017/10/AP3ZdJT3tr39sT7ujP9sU76h338rtz.jpg', 1, 1508925746),
(17, 5, 1, '2222.jpg', 'images/5/2017/10/L12xHFpji4Xq5iP21FzecHP4ExH2xh.jpg', 1, 1508925746),
(18, 5, 1, '4444.jpg', 'images/5/2017/10/eS9dtXzuhIHs3uiDizw0ZdJIuD0ASs.jpg', 1, 1508925746),
(19, 5, 1, '5555.jpg', 'images/5/2017/10/F811I2bVe89i6iivG68fVfnzEDi92d.jpg', 1, 1508925746),
(20, 5, 1, '6666.jpg', 'images/5/2017/10/WWHnk4B1wN7761X6471BNx72xD127x.jpg', 1, 1508925746),
(21, 0, 1, '20171027104333.png', 'images/0/2017/10/uzaNUNtp8K1NmKu2jki6tu6aiNrquz.png', 1, 1509072598),
(22, 0, 1, 'dlm.png', 'images/0/2017/10/RktRsVqAZme9NmanSv5GsVtENsV5eA.png', 1, 1509072692),
(23, 0, 1, 'qrcode_for_gh_fbed32f1f289_430.jpg', 'images/0/2017/10/ACdddUpH3zUBH1sDKDKc3CYD4B5D4d.jpg', 1, 1509072933),
(24, 5, 1, '广告.jpg', 'images/5/2017/10/fe6dRw20CP7EP3U1pobWnO1zD2i022.jpg', 1, 1509097218),
(25, 5, 1, '广告.jpg', 'images/5/2017/10/lCW3t3JW7nTjPH3p8tH373wzO3NsvW.jpg', 1, 1509097444),
(26, 6, 1, '广告.jpg', 'images/6/2017/10/Pki0sa99eGkefah77Sbij06G0aHai7.jpg', 1, 1509109608),
(27, 6, 1, '点了码_logo_01-05.png', 'images/6/2017/10/dSL681878S88l26885fvenEsHnO8rS.png', 1, 1509109617),
(28, 5, 1, '点了码_logo_01-05.png', 'images/5/2017/10/Gyyyj1WBiRii1i3iWZWjtIqOu4B5t1.png', 1, 1509112023),
(29, 6, 1, '1129aa5358627592ab21f65e082e0ab987572.jpg', 'images/6/2017/10/sM50cFgJPv7cagAC9zG2fAmpAaZaa8.jpg', 1, 1509119689),
(30, 6, 1, '6dfbcef24042c997f8b712a394306abd61442.jpg', 'images/6/2017/10/kukk49447L7QzuQUL399n9QP4L3gl6.jpg', 1, 1509119689),
(31, 6, 1, '76835cc69b5511b4c6c6cbf3158d1fe132768.jpg', 'images/6/2017/10/g3phUN34ZE3HvbA333z3eh93VV4VNa.jpg', 1, 1509119689),
(32, 6, 1, 'c0ca18df6405397a895f3b0d8c75dd5d234014.jpg', 'images/6/2017/10/O9Z4fcCzzVmMdFE3EsmdCMmam3z8Te.jpg', 1, 1509119689),
(33, 6, 1, 'b4ccd63ea801db634586dca1847b6709224650.jpg', 'images/6/2017/10/z0UATk0P0UGEw524qEP2EPgtUQy55p.jpg', 1, 1509119689),
(34, 6, 1, '93b358c3a3242b538ad6d93915a18454334526.jpg', 'images/6/2017/10/B9kQamqUMKQaRPUmbZaZx9989XUPKX.jpg', 1, 1509120194),
(35, 6, 1, '35bf167ec334a26678d888c6f6eb8560661504.jpg', 'images/6/2017/10/VgwUpu082d17pgB2Z4FB8UgF72017b.jpg', 1, 1509120194),
(36, 6, 1, '58d4d3791ad205552d3d024cb2c333a3291914.jpg', 'images/6/2017/10/Btwm2jO7BBabwwjWM7mCWZRbbKKzkc.jpg', 1, 1509120194),
(37, 6, 1, '5b4b95bf02cc08f20ee43fc08b522c81263047.jpg', 'images/6/2017/10/JZ7UEED4HLbBxe17egQQfQFQQlhXxx.jpg', 1, 1509120194),
(38, 6, 1, '8d1e2a82f9bca6d0fa5491143f82e59d45860.jpg', 'images/6/2017/10/Pp8n15zuox1XXq31K3jz3xnn3n3JkO.jpg', 1, 1509120436),
(39, 6, 1, '56672efbde230714c2afbfc6b50e68ca441785.jpg', 'images/6/2017/10/ls63XoNnou3oh6X3sdXzSeN4S4UOU3.jpg', 1, 1509120436),
(40, 6, 1, '60d579ddd3d16eb56b3229b5ea704d73940032.jpg', 'images/6/2017/10/SY4y7dk4k4Zs4ddtl0904Z5KZ0MDl0.jpg', 1, 1509120436),
(41, 6, 1, '778dc218671e541866a795b8a7a9a4b8453346.jpg', 'images/6/2017/10/XBmO6B6FLuJLT6oibJ7hFb3J2Ioj2O.jpg', 1, 1509120436),
(42, 6, 1, '23645a1756313a4cef7fbf6a9904f45a77268.jpg', 'images/6/2017/10/Dem6RPSU77euqr8R7Z7804Z67PePe8.jpg', 1, 1509120672),
(43, 6, 1, '3ae761140e3f0118961b4f3f6047787483482.jpg', 'images/6/2017/10/C7Onwz6lNWj3nflL770ElL1flLoFfL.jpg', 1, 1509120672),
(44, 6, 1, '739f5ccc98b53f8d741051a1fdef7e8f272846.jpg', 'images/6/2017/10/xjjTkIsjI7738IJOgW020bOW3GJj7O.jpg', 1, 1509120672),
(45, 6, 1, '48cb05b95cc5e6bae14f9791c268ba57323142.jpg', 'images/6/2017/10/uaxwAfbIxFaCoFfwcfbqCACIYC1oXB.jpg', 1, 1509120672),
(46, 6, 1, '0e7f84909a14a3b6cc94ce0cc329b37d146320.jpg', 'images/6/2017/10/Zj4hp4d8budDi64kD8OOMnb2j6yjnu.jpg', 1, 1509120873),
(47, 6, 1, '8ba9c9f769ebee23f9eb182db36d1c6b765952.jpg', 'images/6/2017/10/IfMPFoeVo585a6AffA83M53rZROplL.jpg', 1, 1509120873),
(48, 6, 1, '064c10ef14b5ceb521d25c48c6d3cb38324004.jpg', 'images/6/2017/10/vNl3rqNB8Li8Im8Wla3NWnInjwVBc3.jpg', 1, 1509120873),
(49, 6, 1, 'bf58f004695072f39c689dc908ffc318497664.jpg', 'images/6/2017/10/iJ3Q6760RqSk3yyZPkfusSJsZ60szs.jpg', 1, 1509120873),
(50, 6, 1, '999516116bd07d4d5dd67655936d076152467.jpg', 'images/6/2017/10/mr34xiRkzkrNqX0Gtk3RVWv4XYIvG4.jpg', 1, 1509121038),
(51, 6, 1, '27389b42e7fff0a3c942cedc3891ea0051189.jpg', 'images/6/2017/10/K5rv1Za5l8uooa8l3dL1o558Tl1Z5V.jpg', 1, 1509121038),
(52, 6, 1, '05285b8ae8834f05ae8e5a18a0b0193b51026.jpg', 'images/6/2017/10/kprdB35LDKDk7dUHzvvG7r58GCv58z.jpg', 1, 1509121038),
(53, 6, 1, '8165d68018ae713fe96e66c7d610862a30720.jpg', 'images/6/2017/10/i6MD865899Qmwz3T1h6T1T6m6z8TJq.jpg', 1, 1509121038),
(54, 6, 1, '7f75a981ac4ae8f6a0137088de764fd9330624.jpg', 'images/6/2017/10/HDG00GlZdzWCzGyngXqD9NyxtXWjlY.jpg', 1, 1509121243),
(55, 6, 1, 'b81ebd9fd984bd6c4ddf9ff559a90a95374676.jpg', 'images/6/2017/10/F65oF6gO4FcOXongNx6hHfGg9OPOxz.jpg', 1, 1509121243),
(56, 6, 1, '5e69fa872fac83f484822638d55264fe406272.jpg', 'images/6/2017/10/GFN8JSL0l3S8fzCl061J1lFc0clN1n.jpg', 1, 1509121243),
(57, 6, 1, '2d759a56931bb54d64b98d79c20b97b11091584.jpg', 'images/6/2017/10/Y0cHDoy1AhhYuOt5tb1ARSZuO5id5R.jpg', 1, 1509121569),
(58, 6, 1, '734339a8898a94b4506a7ded00b650b1884736.jpg', 'images/6/2017/10/UuCrvLue7kT5k8lPE85vev1rL6keaR.jpg', 1, 1509121569),
(59, 6, 1, '点了码_logo_06-06.png', 'images/6/2017/10/x7rOGqFfUT2rZZRFdRar3Q6OSauRy7.png', 1, 1509122667),
(60, 6, 1, '123.png', 'images/6/2017/10/aGGa2f3dLF1fiRA8U03FDUgu32tBIa.png', 1, 1509357989),
(61, 5, 1, 'wangb.jpg', 'images/global/OPg4YOPT89RZo7y96o795XG48UOTTt.jpg', 1, 1509951118),
(62, 5, 1, 'wangb2.jpg', 'images/global/ND9nSaDYbddx55XybbYa5b9DX5X54b.jpg', 1, 1509951196),
(63, 5, 1, 'wangb3.jpg', 'images/global/mH03qkzq3zt6z3Rtos3skfo3HR0f0L.jpg', 1, 1509951298),
(64, 5, 1, 'wangb33.jpg', 'images/global/xMHYh7hYH9hsCSSv7hvi4Vv4h2qm57.jpg', 1, 1509951484),
(65, 5, 1, 'wangb11.jpg', 'images/global/S2VUlT291Z5J9D5tV8hr9P6Q2vFVDF.jpg', 1, 1509951872),
(66, 5, 1, 'wangb3.png', 'images/global/xM01MhYA3ysyZS0a7hv9091391Y79a.png', 1, 1509952213),
(67, 5, 1, 'wangb3.png', 'images/global/YzOoH63J5Tzd6Cr5tf66ORchwhoJjZ.png', 1, 1509952271),
(68, 5, 1, 'wangb3.png', 'images/global/aooVi0nyo4c36m31UoYt6T63tI6uJo.png', 1, 1509952332),
(96, 6, 1, '2015091103.jpg', 'images/6/2017/11/X9xSSZz5bVv6SShvch5coL7B7QC9eC.jpg', 1, 1510303943),
(70, 7, 8, 'IMG_0575.JPG', 'images/7/2017/11/Yw8I8M858nlNJViV8888xLL8LizujB.jpg', 1, 1510191761),
(71, 7, 8, 'IMG_0575.JPG', 'images/7/2017/11/ws83s4z406gsGvliBbFZWYQq3046Fs.jpg', 1, 1510191769),
(98, 12, 1, '路飞.jpg', 'images/12/2017/11/Qu5DDQ9sxW9PzQ58SS9qQgm8Q9qp91.jpg', 1, 1510556836),
(99, 13, 1, '路飞.jpg', 'images/13/2017/11/x4RTJWw2WWo2H2Wd006kAd44W4jZ04.jpg', 1, 1510558136),
(97, 12, 1, '2013112234537665.jpg', 'images/12/2017/11/GiJ2Ij2jgYY2k27G3jYC3geZY3IGyS.jpg', 1, 1510556747),
(74, 6, 1, '20170420111519_5766.jpg', 'images/6/2017/11/CXfe2UWriaFFie9Kr2o2zo2E2GwQXQ.jpg', 1, 1510197332),
(76, 0, 1, '微信图片_20171109141621.png', 'images/0/2017/11/p0tr04srpAWza5rn0TkCRpacPj9IA4.png', 1, 1510208728),
(77, 0, 1, '微信图片_20171109141621_meitu_2.jpg', 'images/0/2017/11/vfFqNI0naNYmnAbzYN88bfBLfdDFfN.jpg', 1, 1510210677),
(78, 0, 1, '微信图片_20171109141627.png', 'images/0/2017/11/u1hOFOjlpitLJHTtkokhH0G2JK1IbP.png', 1, 1510211354),
(79, 0, 1, '微信图片_20171109141634.png', 'images/0/2017/11/sU8XlN58800AxnX0lZ5N0n005s0A6Z.png', 1, 1510211502),
(80, 0, 1, '微信图片_20171109141641.png', 'images/0/2017/11/A5G1lO21qkrDmreZg9nqzbGSWGNznR.png', 1, 1510211617),
(81, 0, 1, '微信图片_20171109141641_meitu_3.jpg', 'images/0/2017/11/I4vF31fPV1t33NnkNNVNIpvnrfqI74.jpg', 1, 1510211882),
(82, 0, 14, 'qrcode_for_gh_91d09ef450f5_860.jpg', 'images/0/2017/11/s63zu366a11deA41E3LEsMUUU4dz4M.jpg', 1, 1510213987),
(100, 6, 1, 'IMG_0575.JPG', 'images/6/2017/11/Hh1omNNxTlm7hbnQemax8iE71Eb7gO.jpg', 1, 1510628421),
(106, 6, 1, '5.png', 'images/6/2017/11/dLo4Ijv3oOc4nOpjQ6vm9C4z6MqYin.png', 1, 1510650111),
(102, 6, 1, '2.png', 'images/6/2017/11/rD81S1nb6WC4o5os68O8cB8O8n1b11.png', 1, 1510649418),
(93, 11, 16, '123.png', 'images/11/2017/11/N09ZWwEFFfawab7SRfemWMGWgnfRMg.png', 1, 1510283039),
(94, 11, 16, 'QQ图片20171010154557.png', 'images/11/2017/11/zSA9ohYkAA9s93Bmy732ab3BOpby72.png', 1, 1510283115),
(95, 6, 1, '2015091103.jpg', 'images/6/2017/11/if06691Z5R3rrh9mz3hfzI29I36rh5.jpg', 1, 1510303935),
(103, 6, 1, '3.png', 'images/6/2017/11/nMOtncsCO6Jo1cCmTpm7hhT2H5cM1W.png', 1, 1510649432),
(104, 6, 1, 'QQ截图20171114165142.png', 'images/6/2017/11/GcD1da7414jzdJJO2Qd7qJ162QLCD3.png', 1, 1510649541),
(105, 6, 1, '4.png', 'images/6/2017/11/PFzfv7JvYD407S2zU1yVh275Wv228m.png', 1, 1510649990),
(101, 6, 1, '1.jpg', 'images/6/2017/11/vmZ7Z48BmOfyBo0OmGR9gFox50T58O.jpg', 1, 1510649392),
(107, 6, 1, '16_meitu_1.jpg', 'images/6/2017/11/R79TN398A8A3tOjUQq67BOnN4369ZZ.jpg', 1, 1510650431),
(108, 6, 1, '17.png', 'images/6/2017/11/SlixJZ8w4CSCv4Sv4YbteJqJOT88oq.png', 1, 1510650530),
(109, 6, 1, '18.png', 'images/6/2017/11/AZOVls34s070QgXRrEyX270LGZs32s.png', 1, 1510650711),
(118, 6, 1, '微信截图_20171115092712.png', 'images/6/2017/11/R6868q68F0W6QS6tpSto6o7626sS48.png', 1, 1510714171),
(111, 6, 1, '20.png', 'images/6/2017/11/wKn5z574nAkMP5zrRJXlyGgGk5NNhh.png', 1, 1510650730),
(112, 6, 1, '21.png', 'images/6/2017/11/yi08S8V6i2X2n36RYZy692iV6IWF9V.png', 1, 1510651438),
(113, 6, 1, '24.png', 'images/6/2017/11/rak9GSyABH63hg99kia6k6g1SKn9zc.png', 1, 1510652070),
(114, 6, 1, '25.png', 'images/6/2017/11/S7S4w48KzlbFulUBsV7l829SVKLF7f.png', 1, 1510652105),
(115, 6, 1, '30.png', 'images/6/2017/11/Nq2T265wYw65qYwBQfTqq6k4u224bv.png', 1, 1510652269),
(116, 6, 1, '31.png', 'images/6/2017/11/ZUtMmR4EJdDvnNnTdlfhLFcDT4DfWe.png', 1, 1510652278),
(117, 6, 1, '19_meitu_2.jpg', 'images/6/2017/11/qmtkCuHuZNn91XUU1hHX7cH98Cm3ut.jpg', 1, 1510653445),
(130, 6, 1, '133490410232864744.jpg', 'images/6/2017/11/SfhT3ShhsEFRTd99gFhk3ReRfMm3fq.jpg', 1, 1511146574),
(120, 6, 1, '微信截图_20171115094732.png', 'images/6/2017/11/j0UIWtSI79I4iT9jCo5uT5WW95QICw.png', 1, 1510714171),
(129, 6, 1, '2.jpg', 'images/6/2017/11/e1d49LhydL111KmlLZTL1cZ0C4HcDu.jpg', 1, 1510729816),
(122, 6, 1, '微信截图_20171115093009.png', 'images/6/2017/11/dUuCr7qVEu0B74E19ZvwBPB3d4v00Z.png', 1, 1510714172),
(123, 0, 13, '3.jpg', 'images/0/2017/11/V5vVQ9qJV8zl8T8Vu8jFV9JeQ5eU98.jpg', 1, 1510726536),
(124, 0, 13, '4.jpg', 'images/0/2017/11/bN75K5nXu85585U785k5uW5XxiInr8.jpg', 1, 1510726566),
(125, 0, 13, '5.jpg', 'images/0/2017/11/w3bqMvczQdiCaZ0bfAEZE0XvvRrdbD.jpg', 1, 1510726623),
(126, 6, 1, '3.jpg', 'images/6/2017/11/oWWye4hsCzKZzJ87SjXjCyJ4hKZksS.jpg', 1, 1510727694),
(127, 6, 1, '4.jpg', 'images/6/2017/11/qaDf3MMgm4EDA00580mZh54H83Mm0e.jpg', 1, 1510727710),
(128, 6, 1, '5.jpg', 'images/6/2017/11/sUPKqu79fQssHkuEw111PpKpqHhc9s.jpg', 1, 1510727729),
(131, 6, 1, 'sj0814yu06.jpg', 'images/6/2017/11/uW5KyyY6s52eEolL8TEY8zZyJStzej.jpg', 1, 1511146715);

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_cache`
--

CREATE TABLE IF NOT EXISTS `ims_core_cache` (
  `key` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_core_cache`
--

INSERT INTO `ims_core_cache` (`key`, `value`) VALUES
('account:ticket', 's:0:"";'),
('userbasefields', 'a:45:{s:7:"uniacid";s:17:"同一公众号id";s:7:"groupid";s:8:"分组id";s:7:"credit1";s:6:"积分";s:7:"credit2";s:6:"余额";s:7:"credit3";s:19:"预留积分类型3";s:7:"credit4";s:19:"预留积分类型4";s:7:"credit5";s:19:"预留积分类型5";s:7:"credit6";s:19:"预留积分类型6";s:10:"createtime";s:12:"加入时间";s:6:"mobile";s:12:"手机号码";s:5:"email";s:12:"电子邮箱";s:8:"realname";s:12:"真实姓名";s:8:"nickname";s:6:"昵称";s:6:"avatar";s:6:"头像";s:2:"qq";s:5:"QQ号";s:6:"gender";s:6:"性别";s:5:"birth";s:6:"生日";s:13:"constellation";s:6:"星座";s:6:"zodiac";s:6:"生肖";s:9:"telephone";s:12:"固定电话";s:6:"idcard";s:12:"证件号码";s:9:"studentid";s:6:"学号";s:5:"grade";s:6:"班级";s:7:"address";s:6:"地址";s:7:"zipcode";s:6:"邮编";s:11:"nationality";s:6:"国籍";s:6:"reside";s:9:"居住地";s:14:"graduateschool";s:12:"毕业学校";s:7:"company";s:6:"公司";s:9:"education";s:6:"学历";s:10:"occupation";s:6:"职业";s:8:"position";s:6:"职位";s:7:"revenue";s:9:"年收入";s:15:"affectivestatus";s:12:"情感状态";s:10:"lookingfor";s:13:" 交友目的";s:9:"bloodtype";s:6:"血型";s:6:"height";s:6:"身高";s:6:"weight";s:6:"体重";s:6:"alipay";s:15:"支付宝帐号";s:3:"msn";s:3:"MSN";s:6:"taobao";s:12:"阿里旺旺";s:4:"site";s:6:"主页";s:3:"bio";s:12:"自我介绍";s:8:"interest";s:12:"兴趣爱好";s:8:"password";s:6:"密码";}'),
('usersfields', 'a:46:{s:8:"realname";s:12:"真实姓名";s:8:"nickname";s:6:"昵称";s:6:"avatar";s:6:"头像";s:2:"qq";s:5:"QQ号";s:6:"mobile";s:12:"手机号码";s:3:"vip";s:9:"VIP级别";s:6:"gender";s:6:"性别";s:9:"birthyear";s:12:"出生生日";s:13:"constellation";s:6:"星座";s:6:"zodiac";s:6:"生肖";s:9:"telephone";s:12:"固定电话";s:6:"idcard";s:12:"证件号码";s:9:"studentid";s:6:"学号";s:5:"grade";s:6:"班级";s:7:"address";s:12:"邮寄地址";s:7:"zipcode";s:6:"邮编";s:11:"nationality";s:6:"国籍";s:14:"resideprovince";s:12:"居住地址";s:14:"graduateschool";s:12:"毕业学校";s:7:"company";s:6:"公司";s:9:"education";s:6:"学历";s:10:"occupation";s:6:"职业";s:8:"position";s:6:"职位";s:7:"revenue";s:9:"年收入";s:15:"affectivestatus";s:12:"情感状态";s:10:"lookingfor";s:13:" 交友目的";s:9:"bloodtype";s:6:"血型";s:6:"height";s:6:"身高";s:6:"weight";s:6:"体重";s:6:"alipay";s:15:"支付宝帐号";s:3:"msn";s:3:"MSN";s:5:"email";s:12:"电子邮箱";s:6:"taobao";s:12:"阿里旺旺";s:4:"site";s:6:"主页";s:3:"bio";s:12:"自我介绍";s:8:"interest";s:12:"兴趣爱好";s:7:"uniacid";s:17:"同一公众号id";s:7:"groupid";s:8:"分组id";s:7:"credit1";s:6:"积分";s:7:"credit2";s:6:"余额";s:7:"credit3";s:19:"预留积分类型3";s:7:"credit4";s:19:"预留积分类型4";s:7:"credit5";s:19:"预留积分类型5";s:7:"credit6";s:19:"预留积分类型6";s:10:"createtime";s:12:"加入时间";s:8:"password";s:12:"用户密码";}'),
('setting', 'a:10:{s:8:"authmode";i:1;s:5:"close";a:2:{s:6:"status";s:1:"0";s:6:"reason";s:0:"";}s:9:"copyright";a:31:{s:6:"status";s:1:"0";s:4:"demo";s:1:"0";s:6:"is_dns";s:1:"0";s:8:"is_check";s:1:"0";s:10:"verifycode";s:1:"0";s:6:"reason";s:0:"";s:6:"smname";s:0:"";s:8:"sitename";s:9:"点了码";s:3:"url";s:16:"http://lgzol.cn/";s:8:"sitehost";s:0:"";s:7:"payhost";s:0:"";s:8:"statcode";s:0:"";s:10:"footerleft";s:24:"powered by weizancms.com";s:11:"footerright";s:0:"";s:4:"icon";s:51:"images/6/2017/10/aGGa2f3dLF1fiRA8U03FDUgu32tBIa.png";s:3:"ewm";s:48:"images/global/xMHYh7hYH9hsCSSv7hvi4Vv4h2qm57.jpg";s:5:"flogo";s:48:"images/global/aooVi0nyo4c36m31UoYt6T63tI6uJo.png";s:6:"slides";s:2:"N;";s:6:"notice";s:0:"";s:5:"blogo";s:48:"images/global/S2VUlT291Z5J9D5tV8hr9P6Q2vFVDF.jpg";s:8:"baidumap";a:2:{s:3:"lng";s:10:"118.096222";s:3:"lat";s:9:"24.442196";}s:7:"company";s:33:"厦门点了码科技有限公司";s:14:"companyprofile";s:0:"";s:7:"address";s:45:"厦门市思明区世茂海峡大厦a塔45楼";s:6:"person";s:9:"点了码";s:5:"phone";s:8:"XXXXXXXX";s:2:"qq";s:7:"XXXXXXX";s:5:"email";s:0:"";s:8:"keywords";s:9:"点了码";s:11:"description";s:9:"点了码";s:12:"showhomepage";i:1;}s:8:"register";a:4:{s:4:"open";i:1;s:6:"verify";i:0;s:4:"code";i:1;s:7:"groupid";i:1;}s:6:"addons";a:2:{s:10:"addons_url";s:27:"http://addons.weizancms.com";s:5:"c_url";s:20:"http://www.012wz.com";}s:8:"platform";a:5:{s:5:"token";s:32:"FaA9nNSBiIyiisgmccsIBgAmzmMvhFqT";s:14:"encodingaeskey";s:43:"eXSBp5AC72cO55v2z2aNl2xxM1L3VC5a2IbIsLNVOSV";s:5:"appid";s:18:"wxf906fe71b74173e8";s:9:"appsecret";s:32:"364d27b352bfe9b27c9ec814e4b074aa";s:9:"authstate";i:1;}s:6:"taocan";a:4:{s:7:"jichuid";i:1;s:9:"shangyeid";i:1;s:8:"hangyeid";i:1;s:8:"zhizunid";i:3;}s:10:"module_ban";a:0:{}s:14:"module_upgrade";a:0:{}s:13:"kim_financial";a:12:{s:5:"mchid";s:0:"";s:7:"signkey";s:0:"";s:11:"service_qqs";s:0:"";s:14:"alipay_account";s:0:"";s:7:"partner";s:0:"";s:3:"key";s:0:"";s:12:"dx_UnitPrice";s:1:"0";s:10:"over_group";s:1:"1";s:7:"tx_date";s:1:"7";s:8:"tx_email";s:0:"";s:11:"package_day";s:2:"90";s:10:"service_gg";s:21:"&lt;p&gt;30&lt;/p&gt;";}}'),
('we7:all_cloud_upgrade_module:', 'a:2:{s:6:"expire";i:1510741126;s:4:"data";a:0:{}}'),
('we7:memberinfo:23', 'a:53:{s:3:"uid";s:2:"23";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"95513a926a72b9d1a112a10a8d570a4d@weizancms.com";s:8:"password";s:32:"32dfe08b4bff77d43d824d890ba11538";s:4:"salt";s:8:"FNEyUcu6";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1509333323";s:8:"realname";s:0:"";s:8:"nickname";s:6:"彪哥";s:6:"avatar";s:131:"http://wx.qlogo.cn/mmopen/eHiaJB7Wb9AL6UsFpIZ8ZGPkibnDk8xxLATLU4Lbb4AnXFvYt3b8FzMfynrSsu0mlM79C8g2PjBvB7JPgsiaUZ9063icAC02aEiaK/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"1";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:6:"中国";s:14:"resideprovince";s:9:"福建省";s:10:"residecity";s:9:"莆田市";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:36', 'a:53:{s:3:"uid";s:2:"36";s:7:"uniacid";s:1:"7";s:6:"mobile";s:0:"";s:5:"email";s:46:"512bd40d345a0fae6694bb97d7cb12c2@weizancms.com";s:8:"password";s:32:"383bcbfb42394d09404569fa9a93804b";s:4:"salt";s:8:"FOL9HhHO";s:7:"groupid";s:1:"7";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1510198050";s:8:"realname";s:0:"";s:8:"nickname";s:0:"";s:6:"avatar";s:0:"";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:user_accounts:8', 'a:1:{i:0;a:7:{s:4:"acid";s:1:"7";s:7:"uniacid";s:1:"7";s:3:"key";s:2:"11";s:6:"secret";s:2:"11";s:5:"level";s:1:"1";s:4:"name";s:4:"1111";s:4:"role";s:5:"owner";}}'),
('we7:memberinfo:49', 'a:53:{s:3:"uid";s:2:"49";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"42287c9e7e59d70374e57ae89ac12775@weizancms.com";s:8:"password";s:32:"7890a65b3cc5b0fdb02182635ec1f2dc";s:4:"salt";s:8:"X6Vnn66N";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1511160925";s:8:"realname";s:0:"";s:8:"nickname";s:6:"街墙";s:6:"avatar";s:130:"http://wx.qlogo.cn/mmopen/YSBzp7uZPb2LUF9mB1BQZyLn9icvfQLbjZ0iaEvJbrYFMzgMFTObkndDicSUfDt0MTD3AmULtzKgQ8V9DYv6eQU7mB1MehiaBB6t/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('module_receive_enable', 'a:12:{s:5:"image";a:1:{i:0;s:13:"kim_financial";}s:5:"voice";a:1:{i:0;s:13:"kim_financial";}s:5:"video";a:1:{i:0;s:13:"kim_financial";}s:8:"location";a:1:{i:0;s:13:"kim_financial";}s:4:"link";a:1:{i:0;s:13:"kim_financial";}s:9:"subscribe";a:1:{i:0;s:13:"kim_financial";}s:11:"unsubscribe";a:1:{i:0;s:13:"kim_financial";}s:2:"qr";a:1:{i:0;s:13:"kim_financial";}s:5:"trace";a:1:{i:0;s:13:"kim_financial";}s:5:"click";a:1:{i:0;s:13:"kim_financial";}s:4:"view";a:1:{i:0;s:13:"kim_financial";}s:5:"enter";a:1:{i:0;s:13:"kim_financial";}}'),
('we7:module_info:basic', 'a:30:{s:3:"mid";s:1:"1";s:4:"name";s:5:"basic";s:4:"type";s:6:"system";s:5:"title";s:18:"基本文字回复";s:7:"version";s:3:"1.0";s:7:"ability";s:24:"和您进行简单对话";s:11:"description";s:201:"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.";s:6:"author";s:14:"Weizancms Team";s:3:"url";s:25:"http://www.weizancms.com/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:10:"issolution";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:5:"price";s:4:"0.00";s:5:"isbuy";s:1:"0";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:11:"template_id";s:1:"0";s:9:"item_list";s:0:"";s:9:"isdisplay";i:1;s:4:"logo";s:58:"http://www.dianlema.net/addons/basic/icon.jpg?v=1510739330";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}s:11:"is_relation";b:0;}'),
('we7:module_info:news', 'a:30:{s:3:"mid";s:1:"2";s:4:"name";s:4:"news";s:4:"type";s:6:"system";s:5:"title";s:24:"基本混合图文回复";s:7:"version";s:3:"1.0";s:7:"ability";s:33:"为你提供生动的图文资讯";s:11:"description";s:272:"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.";s:6:"author";s:14:"Weizancms Team";s:3:"url";s:25:"http://www.weizancms.com/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:10:"issolution";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:5:"price";s:4:"0.00";s:5:"isbuy";s:1:"0";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:11:"template_id";s:1:"0";s:9:"item_list";s:0:"";s:9:"isdisplay";i:1;s:4:"logo";s:57:"http://www.dianlema.net/addons/news/icon.jpg?v=1510739330";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}s:11:"is_relation";b:0;}'),
('we7:module_info:music', 'a:30:{s:3:"mid";s:1:"3";s:4:"name";s:5:"music";s:4:"type";s:6:"system";s:5:"title";s:18:"基本音乐回复";s:7:"version";s:3:"1.0";s:7:"ability";s:39:"提供语音、音乐等音频类回复";s:11:"description";s:183:"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。";s:6:"author";s:14:"Weizancms Team";s:3:"url";s:25:"http://www.weizancms.com/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:10:"issolution";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:5:"price";s:4:"0.00";s:5:"isbuy";s:1:"0";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:11:"template_id";s:1:"0";s:9:"item_list";s:0:"";s:9:"isdisplay";i:1;s:4:"logo";s:58:"http://www.dianlema.net/addons/music/icon.jpg?v=1510739330";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}s:11:"is_relation";b:0;}'),
('we7:module_info:userapi', 'a:30:{s:3:"mid";s:1:"4";s:4:"name";s:7:"userapi";s:4:"type";s:6:"system";s:5:"title";s:21:"自定义接口回复";s:7:"version";s:3:"1.1";s:7:"ability";s:33:"更方便的第三方接口设置";s:11:"description";s:141:"自定义接口又称第三方接口，可以让开发者更方便的接入微赞系统，高效的与微信公众平台进行对接整合。";s:6:"author";s:14:"Weizancms Team";s:3:"url";s:25:"http://www.weizancms.com/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:10:"issolution";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:5:"price";s:4:"0.00";s:5:"isbuy";s:1:"0";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:11:"template_id";s:1:"0";s:9:"item_list";s:0:"";s:9:"isdisplay";i:1;s:4:"logo";s:60:"http://www.dianlema.net/addons/userapi/icon.jpg?v=1510739330";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}s:11:"is_relation";b:0;}'),
('we7:module_info:recharge', 'a:30:{s:3:"mid";s:1:"5";s:4:"name";s:8:"recharge";s:4:"type";s:6:"system";s:5:"title";s:24:"会员中心充值模块";s:7:"version";s:3:"1.0";s:7:"ability";s:24:"提供会员充值功能";s:11:"description";s:0:"";s:6:"author";s:14:"Weizancms Team";s:3:"url";s:25:"http://www.weizancms.com/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"1";s:10:"issolution";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:5:"price";s:4:"0.00";s:5:"isbuy";s:1:"0";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:11:"template_id";s:1:"0";s:9:"item_list";s:0:"";s:9:"isdisplay";i:1;s:4:"logo";s:61:"http://www.dianlema.net/addons/recharge/icon.jpg?v=1510739330";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}s:11:"is_relation";b:0;}'),
('we7:module_info:custom', 'a:30:{s:3:"mid";s:1:"6";s:4:"name";s:6:"custom";s:4:"type";s:6:"system";s:5:"title";s:15:"多客服转接";s:7:"version";s:5:"1.0.0";s:7:"ability";s:36:"用来接入腾讯的多客服系统";s:11:"description";s:0:"";s:6:"author";s:14:"Weizancms Team";s:3:"url";s:24:"http://bbs.weizancms.com";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:6:{i:0;s:5:"image";i:1;s:5:"voice";i:2;s:5:"video";i:3;s:8:"location";i:4;s:4:"link";i:5;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:10:"issolution";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:5:"price";s:4:"0.00";s:5:"isbuy";s:1:"0";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:11:"template_id";s:1:"0";s:9:"item_list";s:0:"";s:9:"isdisplay";i:1;s:4:"logo";s:59:"http://www.dianlema.net/addons/custom/icon.jpg?v=1510739330";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}s:11:"is_relation";b:0;}'),
('we7:module_info:images', 'a:30:{s:3:"mid";s:1:"7";s:4:"name";s:6:"images";s:4:"type";s:6:"system";s:5:"title";s:18:"基本图片回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供图片回复";s:11:"description";s:132:"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。";s:6:"author";s:14:"Weizancms Team";s:3:"url";s:25:"http://www.weizancms.com/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:10:"issolution";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:5:"price";s:4:"0.00";s:5:"isbuy";s:1:"0";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:11:"template_id";s:1:"0";s:9:"item_list";s:0:"";s:9:"isdisplay";i:1;s:4:"logo";s:59:"http://www.dianlema.net/addons/images/icon.jpg?v=1510739330";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}s:11:"is_relation";b:0;}'),
('we7:module_info:video', 'a:30:{s:3:"mid";s:1:"8";s:4:"name";s:5:"video";s:4:"type";s:6:"system";s:5:"title";s:18:"基本视频回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供图片回复";s:11:"description";s:132:"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。";s:6:"author";s:14:"Weizancms Team";s:3:"url";s:25:"http://www.weizancms.com/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:10:"issolution";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:5:"price";s:4:"0.00";s:5:"isbuy";s:1:"0";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:11:"template_id";s:1:"0";s:9:"item_list";s:0:"";s:9:"isdisplay";i:1;s:4:"logo";s:58:"http://www.dianlema.net/addons/video/icon.jpg?v=1510739330";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}s:11:"is_relation";b:0;}'),
('we7:module_info:voice', 'a:30:{s:3:"mid";s:1:"9";s:4:"name";s:5:"voice";s:4:"type";s:6:"system";s:5:"title";s:18:"基本语音回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供语音回复";s:11:"description";s:132:"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。";s:6:"author";s:14:"Weizancms Team";s:3:"url";s:25:"http://www.weizancms.com/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:10:"issolution";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:5:"price";s:4:"0.00";s:5:"isbuy";s:1:"0";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:11:"template_id";s:1:"0";s:9:"item_list";s:0:"";s:9:"isdisplay";i:1;s:4:"logo";s:58:"http://www.dianlema.net/addons/voice/icon.jpg?v=1510739330";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}s:11:"is_relation";b:0;}'),
('we7:module_info:chats', 'a:30:{s:3:"mid";s:2:"10";s:4:"name";s:5:"chats";s:4:"type";s:6:"system";s:5:"title";s:18:"发送客服消息";s:7:"version";s:3:"1.0";s:7:"ability";s:77:"公众号可以在粉丝最后发送消息的48小时内无限制发送消息";s:11:"description";s:0:"";s:6:"author";s:14:"Weizancms Team";s:3:"url";s:25:"http://www.weizancms.com/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"1";s:10:"issolution";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:5:"price";s:4:"0.00";s:5:"isbuy";s:1:"0";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:11:"template_id";s:1:"0";s:9:"item_list";s:0:"";s:9:"isdisplay";i:1;s:4:"logo";s:58:"http://www.dianlema.net/addons/chats/icon.jpg?v=1510739330";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}s:11:"is_relation";b:0;}'),
('we7:module_info:wxcard', 'a:30:{s:3:"mid";s:2:"11";s:4:"name";s:6:"wxcard";s:4:"type";s:6:"system";s:5:"title";s:18:"微信卡券回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"微信卡券回复";s:11:"description";s:18:"微信卡券回复";s:6:"author";s:14:"Weizancms Team";s:3:"url";s:25:"http://www.weizancms.com/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:10:"issolution";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:5:"price";s:4:"0.00";s:5:"isbuy";s:1:"0";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:11:"template_id";s:1:"0";s:9:"item_list";s:0:"";s:9:"isdisplay";i:1;s:4:"logo";s:59:"http://www.dianlema.net/addons/wxcard/icon.jpg?v=1510739330";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}s:11:"is_relation";b:0;}'),
('we7:module_info:we7_coupon', 'a:30:{s:3:"mid";s:2:"14";s:4:"name";s:10:"we7_coupon";s:4:"type";s:8:"business";s:5:"title";s:12:"系统卡券";s:7:"version";s:3:"3.8";s:7:"ability";s:12:"微赞卡券";s:11:"description";s:12:"微赞卡券";s:6:"author";s:12:"微赞团队";s:3:"url";s:0:"";s:8:"settings";s:1:"2";s:10:"subscribes";a:0:{}s:7:"handles";a:0:{}s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"1";s:10:"issolution";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:6:"a:0:{}";s:5:"price";s:4:"0.00";s:5:"isbuy";s:1:"0";s:13:"title_initial";s:1:"X";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:11:"template_id";s:1:"0";s:9:"item_list";s:0:"";s:9:"isdisplay";i:1;s:4:"logo";s:63:"http://www.dianlema.net/addons/we7_coupon/icon.jpg?v=1510739330";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}s:11:"is_relation";b:0;}'),
('we7:module_info:weisrc_dish', 'a:30:{s:3:"mid";s:2:"15";s:4:"name";s:11:"weisrc_dish";s:4:"type";s:8:"business";s:5:"title";s:30:"码上点餐外卖餐饮系统";s:7:"version";s:5:"6.4.2";s:7:"ability";s:12:"码上点餐";s:11:"description";s:12:"码上点餐";s:6:"author";s:21:"淘宝大众乐科技";s:3:"url";s:18:"https://www.we7.cc";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:3:{i:0;s:9:"subscribe";i:1;s:2:"qr";i:2;s:4:"text";}s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"0";s:10:"issolution";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:6:"a:0:{}";s:5:"price";s:4:"0.00";s:5:"isbuy";s:1:"0";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:11:"template_id";s:1:"0";s:9:"item_list";s:0:"";s:9:"isdisplay";i:1;s:4:"logo";s:71:"http://www.dianlema.net/addons/weisrc_dish/icon-custom.jpg?v=1510739330";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}s:11:"is_relation";b:0;}'),
('we7:module_info:kim_financial', 'a:30:{s:3:"mid";s:2:"19";s:4:"name";s:13:"kim_financial";s:4:"type";s:8:"customer";s:5:"title";s:12:"财务中心";s:7:"version";s:5:"6.0.1";s:7:"ability";s:78:"用于会员在线充值余额、余额购买套餐，购买短信条数服务";s:11:"description";s:78:"用于会员在线充值余额、余额购买套餐，购买短信条数服务";s:6:"author";s:3:"XXX";s:3:"url";s:3:"XXX";s:8:"settings";s:1:"0";s:10:"subscribes";a:13:{i:0;s:4:"text";i:1;s:5:"image";i:2;s:5:"voice";i:3;s:5:"video";i:4;s:8:"location";i:5;s:4:"link";i:6;s:9:"subscribe";i:7;s:11:"unsubscribe";i:8;s:2:"qr";i:9;s:5:"trace";i:10;s:5:"click";i:11;s:4:"view";i:12;s:5:"enter";}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"0";s:10:"issolution";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:2:"N;";s:5:"price";s:4:"0.00";s:5:"isbuy";s:1:"0";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:11:"template_id";s:1:"0";s:9:"item_list";s:0:"";s:9:"isdisplay";i:1;s:4:"logo";s:66:"http://www.dianlema.net/addons/kim_financial/icon.jpg?v=1510739330";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}s:11:"is_relation";b:0;}'),
('we7:module:all_uninstall', 'a:2:{s:6:"expire";i:1511325971;s:4:"data";a:4:{s:13:"cloud_m_count";N;s:7:"modules";a:2:{s:7:"recycle";a:1:{s:3:"app";a:1:{s:21:"weisrc_businesscenter";a:8:{s:4:"from";s:5:"local";s:4:"name";s:21:"weisrc_businesscenter";s:7:"version";s:5:"6.0.1";s:5:"title";s:12:"智慧商圈";s:11:"app_support";i:2;s:13:"wxapp_support";i:1;s:11:"main_module";s:0:"";s:15:"upgrade_support";b:0;}}}s:11:"uninstalled";a:0:{}}s:9:"app_count";i:0;s:11:"wxapp_count";i:0;}}'),
('unisetting:15', 'a:28:{s:7:"uniacid";s:2:"15";s:8:"passport";s:0:"";s:5:"oauth";s:0:"";s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:2:"15";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}'),
('uniaccount:15', 'a:36:{s:4:"acid";s:2:"15";s:7:"uniacid";s:2:"15";s:5:"token";s:32:"FhsZl2ZX6nbaHKHFlo2LkVBaxC9969kv";s:14:"encodingaeskey";s:43:"yZSwZtvguuu84tjnz0ZnJZsTtJv0t8ft01bVUNtU1U0";s:12:"access_token";s:0:"";s:5:"level";s:1:"1";s:4:"name";s:8:"Tyuankeo";s:7:"account";s:0:"";s:8:"original";s:0:"";s:9:"signature";s:0:"";s:7:"country";s:0:"";s:8:"province";s:0:"";s:4:"city";s:0:"";s:8:"username";s:0:"";s:8:"password";s:0:"";s:10:"lastupdate";s:1:"0";s:3:"key";s:0:"";s:6:"secret";s:0:"";s:7:"styleid";s:1:"1";s:12:"jsapi_ticket";s:0:"";s:12:"subscribeurl";s:0:"";s:11:"card_ticket";s:0:"";s:5:"topad";s:0:"";s:6:"footad";s:0:"";s:18:"auth_refresh_token";s:0:"";s:4:"type";s:1:"1";s:9:"isconnect";s:1:"0";s:9:"isdeleted";s:1:"0";s:3:"uid";s:2:"13";s:9:"starttime";s:10:"1510198413";s:7:"endtime";s:1:"0";s:6:"groups";a:1:{i:15;a:6:{s:7:"groupid";s:2:"15";s:7:"uniacid";s:2:"15";s:5:"title";s:15:"默认会员组";s:9:"orderlist";s:1:"0";s:9:"isdefault";s:1:"1";s:6:"credit";s:1:"0";}}s:7:"setting";a:28:{s:7:"uniacid";s:2:"15";s:8:"passport";s:0:"";s:5:"oauth";s:0:"";s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:2:"15";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}s:10:"grouplevel";s:1:"0";s:4:"logo";s:65:"http://www.dianlema.net/attachment/headimg_15.jpg?time=1510739332";s:6:"qrcode";s:64:"http://www.dianlema.net/attachment/qrcode_15.jpg?time=1510739332";}'),
('unisetting:14', 'a:28:{s:7:"uniacid";s:2:"14";s:8:"passport";s:0:"";s:5:"oauth";s:0:"";s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:2:"14";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}'),
('uniaccount:14', 'a:36:{s:4:"acid";s:2:"14";s:7:"uniacid";s:2:"14";s:5:"token";s:32:"bvovv77dwwOAx7rwzZq7X3q7r7X3nN3D";s:14:"encodingaeskey";s:43:"wl5TRZ755rLa0l37jg0r022C20jljRORa2ayrA0rgZt";s:12:"access_token";s:0:"";s:5:"level";s:1:"1";s:4:"name";s:9:"刀刀刀";s:7:"account";s:9:"daodaodao";s:8:"original";s:9:"132457890";s:9:"signature";s:0:"";s:7:"country";s:0:"";s:8:"province";s:0:"";s:4:"city";s:0:"";s:8:"username";s:0:"";s:8:"password";s:0:"";s:10:"lastupdate";s:1:"0";s:3:"key";s:9:"123457890";s:6:"secret";s:10:"1324567890";s:7:"styleid";s:1:"1";s:12:"jsapi_ticket";s:0:"";s:12:"subscribeurl";s:0:"";s:11:"card_ticket";s:0:"";s:5:"topad";s:0:"";s:6:"footad";s:0:"";s:18:"auth_refresh_token";s:0:"";s:4:"type";s:1:"1";s:9:"isconnect";s:1:"0";s:9:"isdeleted";s:1:"0";s:3:"uid";s:1:"2";s:9:"starttime";s:10:"1504493840";s:7:"endtime";s:1:"0";s:6:"groups";a:1:{i:14;a:6:{s:7:"groupid";s:2:"14";s:7:"uniacid";s:2:"14";s:5:"title";s:15:"默认会员组";s:9:"orderlist";s:1:"0";s:9:"isdefault";s:1:"1";s:6:"credit";s:1:"0";}}s:7:"setting";a:28:{s:7:"uniacid";s:2:"14";s:8:"passport";s:0:"";s:5:"oauth";s:0:"";s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:2:"14";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}s:10:"grouplevel";s:1:"0";s:4:"logo";s:65:"http://www.dianlema.net/attachment/headimg_14.jpg?time=1510739332";s:6:"qrcode";s:64:"http://www.dianlema.net/attachment/qrcode_14.jpg?time=1510739332";}'),
('unisetting:13', 'a:28:{s:7:"uniacid";s:2:"13";s:8:"passport";s:0:"";s:5:"oauth";s:0:"";s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:2:"13";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}'),
('uniaccount:13', 'a:36:{s:4:"acid";s:2:"13";s:7:"uniacid";s:2:"13";s:5:"token";s:32:"V17yZIfkYCvF7fLLOhm17zyyUIRuhLuI";s:14:"encodingaeskey";s:43:"xVN7kL3ACV33J6IaQ19YzLzQ8V8QjvB1L3nL7Dc2kYd";s:12:"access_token";s:0:"";s:5:"level";s:1:"1";s:4:"name";s:21:"一刀切牛肉火锅";s:7:"account";s:24:"Yidaoqie Beef in hot pot";s:8:"original";s:9:"123456789";s:9:"signature";s:0:"";s:7:"country";s:0:"";s:8:"province";s:0:"";s:4:"city";s:0:"";s:8:"username";s:0:"";s:8:"password";s:0:"";s:10:"lastupdate";s:1:"0";s:3:"key";s:10:"1234567890";s:6:"secret";s:10:"1234567890";s:7:"styleid";s:1:"1";s:12:"jsapi_ticket";s:0:"";s:12:"subscribeurl";s:0:"";s:11:"card_ticket";s:0:"";s:5:"topad";s:0:"";s:6:"footad";s:0:"";s:18:"auth_refresh_token";s:0:"";s:4:"type";s:1:"1";s:9:"isconnect";s:1:"0";s:9:"isdeleted";s:1:"0";s:3:"uid";N;s:9:"starttime";N;s:7:"endtime";N;s:6:"groups";a:1:{i:13;a:6:{s:7:"groupid";s:2:"13";s:7:"uniacid";s:2:"13";s:5:"title";s:15:"默认会员组";s:9:"orderlist";s:1:"0";s:9:"isdefault";s:1:"1";s:6:"credit";s:1:"0";}}s:7:"setting";a:28:{s:7:"uniacid";s:2:"13";s:8:"passport";s:0:"";s:5:"oauth";s:0:"";s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:2:"13";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}s:10:"grouplevel";s:1:"0";s:4:"logo";s:65:"http://www.dianlema.net/attachment/headimg_13.jpg?time=1510739332";s:6:"qrcode";s:64:"http://www.dianlema.net/attachment/qrcode_13.jpg?time=1510739332";}'),
('unisetting:12', 'a:28:{s:7:"uniacid";s:2:"12";s:8:"passport";s:0:"";s:5:"oauth";s:0:"";s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:2:"12";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}'),
('uniaccount:12', 'a:36:{s:4:"acid";s:2:"12";s:7:"uniacid";s:2:"12";s:5:"token";s:32:"YUfqb97C008uhB19BuuNvH8ciFxh66s0";s:14:"encodingaeskey";s:43:"y7xSGGIGIl474G0LgfgIlGi8760GS7GIii6kgZ60066";s:12:"access_token";s:0:"";s:5:"level";s:1:"1";s:4:"name";s:21:"一剪梅牛肉火锅";s:7:"account";s:9:"yijianmei";s:8:"original";s:9:"yijianmei";s:9:"signature";s:0:"";s:7:"country";s:0:"";s:8:"province";s:0:"";s:4:"city";s:0:"";s:8:"username";s:0:"";s:8:"password";s:0:"";s:10:"lastupdate";s:1:"0";s:3:"key";s:3:"123";s:6:"secret";s:3:"123";s:7:"styleid";s:1:"1";s:12:"jsapi_ticket";s:0:"";s:12:"subscribeurl";s:0:"";s:11:"card_ticket";s:0:"";s:5:"topad";s:0:"";s:6:"footad";s:0:"";s:18:"auth_refresh_token";s:0:"";s:4:"type";s:1:"1";s:9:"isconnect";s:1:"0";s:9:"isdeleted";s:1:"0";s:3:"uid";s:2:"19";s:9:"starttime";s:10:"1510303861";s:7:"endtime";s:1:"0";s:6:"groups";a:1:{i:12;a:6:{s:7:"groupid";s:2:"12";s:7:"uniacid";s:2:"12";s:5:"title";s:15:"默认会员组";s:9:"orderlist";s:1:"0";s:9:"isdefault";s:1:"1";s:6:"credit";s:1:"0";}}s:7:"setting";a:28:{s:7:"uniacid";s:2:"12";s:8:"passport";s:0:"";s:5:"oauth";s:0:"";s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:2:"12";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}s:10:"grouplevel";s:1:"0";s:4:"logo";s:65:"http://www.dianlema.net/attachment/headimg_12.jpg?time=1510739332";s:6:"qrcode";s:64:"http://www.dianlema.net/attachment/qrcode_12.jpg?time=1510739332";}'),
('unisetting:11', 'a:28:{s:7:"uniacid";s:2:"11";s:8:"passport";s:0:"";s:5:"oauth";s:0:"";s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:2:"11";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}'),
('uniaccount:11', 'a:36:{s:4:"acid";s:2:"11";s:7:"uniacid";s:2:"11";s:5:"token";s:32:"gOsM61IM19sYg1I2U9j3o22o6Gu2m2Li";s:14:"encodingaeskey";s:43:"w8PEE3688tjKe6KKeERrTh88g88RHzRr8frJpG8nRM3";s:12:"access_token";s:0:"";s:5:"level";s:1:"1";s:4:"name";s:10:"青草香1";s:7:"account";s:16:"450311024@qq.com";s:8:"original";s:15:"gh_529b9bcffb19";s:9:"signature";s:0:"";s:7:"country";s:0:"";s:8:"province";s:0:"";s:4:"city";s:0:"";s:8:"username";s:0:"";s:8:"password";s:0:"";s:10:"lastupdate";s:1:"0";s:3:"key";s:18:"wx473f166ad8a8c8cd";s:6:"secret";s:32:"6c4843c5772d14bb8048914d99818a0c";s:7:"styleid";s:1:"1";s:12:"jsapi_ticket";s:0:"";s:12:"subscribeurl";s:0:"";s:11:"card_ticket";s:0:"";s:5:"topad";s:0:"";s:6:"footad";s:0:"";s:18:"auth_refresh_token";s:0:"";s:4:"type";s:1:"1";s:9:"isconnect";s:1:"1";s:9:"isdeleted";s:1:"0";s:3:"uid";s:2:"16";s:9:"starttime";s:10:"1510220410";s:7:"endtime";s:10:"1510306810";s:6:"groups";a:1:{i:11;a:6:{s:7:"groupid";s:2:"11";s:7:"uniacid";s:2:"11";s:5:"title";s:15:"默认会员组";s:9:"orderlist";s:1:"0";s:9:"isdefault";s:1:"1";s:6:"credit";s:1:"0";}}s:7:"setting";a:28:{s:7:"uniacid";s:2:"11";s:8:"passport";s:0:"";s:5:"oauth";s:0:"";s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:2:"11";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}s:10:"grouplevel";s:1:"0";s:4:"logo";s:65:"http://www.dianlema.net/attachment/headimg_11.jpg?time=1510739332";s:6:"qrcode";s:64:"http://www.dianlema.net/attachment/qrcode_11.jpg?time=1510739332";}'),
('unisetting:9', 'a:28:{s:7:"uniacid";s:1:"9";s:8:"passport";s:0:"";s:5:"oauth";s:0:"";s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:1:"9";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}'),
('uniaccount:9', 'a:36:{s:4:"acid";s:1:"9";s:7:"uniacid";s:1:"9";s:5:"token";s:32:"khTbTTSTTNT0sNtaCNANUSBstIAhTzBp";s:14:"encodingaeskey";s:43:"NpmQi0zkQKlvl5iPZVMvVshvlWqhRpc53o3OWo5lzv0";s:12:"access_token";s:0:"";s:5:"level";s:1:"1";s:4:"name";s:12:"猿人点餐";s:7:"account";s:12:"wang_tingxie";s:8:"original";s:15:"gh_91d09ef450f5";s:9:"signature";s:0:"";s:7:"country";s:0:"";s:8:"province";s:0:"";s:4:"city";s:0:"";s:8:"username";s:0:"";s:8:"password";s:0:"";s:10:"lastupdate";s:1:"0";s:3:"key";s:18:"wx77769cf6c77a1ef7";s:6:"secret";s:32:"060ab9eb0106b7238175e96fb796f2ed";s:7:"styleid";s:1:"1";s:12:"jsapi_ticket";s:0:"";s:12:"subscribeurl";s:0:"";s:11:"card_ticket";s:0:"";s:5:"topad";s:0:"";s:6:"footad";s:0:"";s:18:"auth_refresh_token";s:0:"";s:4:"type";s:1:"1";s:9:"isconnect";s:1:"1";s:9:"isdeleted";s:1:"0";s:3:"uid";s:2:"14";s:9:"starttime";s:10:"1510212571";s:7:"endtime";s:1:"0";s:6:"groups";a:1:{i:9;a:6:{s:7:"groupid";s:1:"9";s:7:"uniacid";s:1:"9";s:5:"title";s:15:"默认会员组";s:9:"orderlist";s:1:"0";s:9:"isdefault";s:1:"1";s:6:"credit";s:1:"0";}}s:7:"setting";a:28:{s:7:"uniacid";s:1:"9";s:8:"passport";s:0:"";s:5:"oauth";s:0:"";s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:1:"9";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}s:10:"grouplevel";s:1:"0";s:4:"logo";s:64:"http://www.dianlema.net/attachment/headimg_9.jpg?time=1510739332";s:6:"qrcode";s:63:"http://www.dianlema.net/attachment/qrcode_9.jpg?time=1510739332";}'),
('unisetting:8', 'a:28:{s:7:"uniacid";s:1:"8";s:8:"passport";s:0:"";s:5:"oauth";s:0:"";s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:1:"8";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}'),
('uniaccount:8', 'a:36:{s:4:"acid";s:1:"8";s:7:"uniacid";s:1:"8";s:5:"token";s:32:"ta7b5ug33mFtt8bm3GgT35Ft3EN3N3IC";s:14:"encodingaeskey";s:43:"Fjdn1FaZJRaEqSxjcDNRRCoXxXWzmaoM3RpCfoqN1N1";s:12:"access_token";s:0:"";s:5:"level";s:1:"1";s:4:"name";s:15:"测试公众号";s:7:"account";s:0:"";s:8:"original";s:0:"";s:9:"signature";s:0:"";s:7:"country";s:0:"";s:8:"province";s:0:"";s:4:"city";s:0:"";s:8:"username";s:0:"";s:8:"password";s:0:"";s:10:"lastupdate";s:1:"0";s:3:"key";s:0:"";s:6:"secret";s:0:"";s:7:"styleid";s:1:"1";s:12:"jsapi_ticket";s:0:"";s:12:"subscribeurl";s:0:"";s:11:"card_ticket";s:0:"";s:5:"topad";s:0:"";s:6:"footad";s:0:"";s:18:"auth_refresh_token";s:0:"";s:4:"type";s:1:"1";s:9:"isconnect";s:1:"0";s:9:"isdeleted";s:1:"0";s:3:"uid";s:2:"10";s:9:"starttime";s:10:"1510123698";s:7:"endtime";s:10:"1510210098";s:6:"groups";a:1:{i:8;a:6:{s:7:"groupid";s:1:"8";s:7:"uniacid";s:1:"8";s:5:"title";s:15:"默认会员组";s:9:"orderlist";s:1:"0";s:9:"isdefault";s:1:"1";s:6:"credit";s:1:"0";}}s:7:"setting";a:28:{s:7:"uniacid";s:1:"8";s:8:"passport";s:0:"";s:5:"oauth";s:0:"";s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:1:"8";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}s:10:"grouplevel";s:1:"0";s:4:"logo";s:64:"http://www.dianlema.net/attachment/headimg_8.jpg?time=1510739332";s:6:"qrcode";s:63:"http://www.dianlema.net/attachment/qrcode_8.jpg?time=1510739332";}'),
('unisetting:7', 'a:28:{s:7:"uniacid";s:1:"7";s:8:"passport";s:0:"";s:5:"oauth";s:0:"";s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:1:"7";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}'),
('uniaccount:7', 'a:36:{s:4:"acid";s:1:"7";s:7:"uniacid";s:1:"7";s:5:"token";s:32:"osMMWNZLHl6d6ksM94JbB36KSN7jiK46";s:14:"encodingaeskey";s:43:"P8ffZDK3FfF9SXfPS62FPSFxK0R9k8f44FlR63pD9wf";s:12:"access_token";s:0:"";s:5:"level";s:1:"1";s:4:"name";s:4:"1111";s:7:"account";s:3:"111";s:8:"original";s:3:"111";s:9:"signature";s:0:"";s:7:"country";s:0:"";s:8:"province";s:0:"";s:4:"city";s:0:"";s:8:"username";s:0:"";s:8:"password";s:0:"";s:10:"lastupdate";s:1:"0";s:3:"key";s:2:"11";s:6:"secret";s:2:"11";s:7:"styleid";s:1:"1";s:12:"jsapi_ticket";s:0:"";s:12:"subscribeurl";s:0:"";s:11:"card_ticket";s:0:"";s:5:"topad";s:0:"";s:6:"footad";s:0:"";s:18:"auth_refresh_token";s:0:"";s:4:"type";s:1:"1";s:9:"isconnect";s:1:"0";s:9:"isdeleted";s:1:"0";s:3:"uid";s:1:"8";s:9:"starttime";s:10:"1509617757";s:7:"endtime";s:10:"1512144000";s:6:"groups";a:1:{i:7;a:6:{s:7:"groupid";s:1:"7";s:7:"uniacid";s:1:"7";s:5:"title";s:15:"默认会员组";s:9:"orderlist";s:1:"0";s:9:"isdefault";s:1:"1";s:6:"credit";s:1:"0";}}s:7:"setting";a:28:{s:7:"uniacid";s:1:"7";s:8:"passport";s:0:"";s:5:"oauth";s:0:"";s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:1:"7";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}s:10:"grouplevel";s:1:"0";s:4:"logo";s:64:"http://www.dianlema.net/attachment/headimg_7.jpg?time=1510739332";s:6:"qrcode";s:63:"http://www.dianlema.net/attachment/qrcode_7.jpg?time=1510739332";}');
INSERT INTO `ims_core_cache` (`key`, `value`) VALUES
('unisetting:6', 'a:28:{s:7:"uniacid";s:1:"6";s:8:"passport";s:0:"";s:5:"oauth";a:2:{s:7:"account";s:1:"6";s:4:"host";s:0:"";}s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";a:3:{s:6:"wechat";a:6:{s:6:"switch";s:1:"1";s:7:"account";s:1:"6";s:7:"signkey";s:32:"F95C9695402C23CFE4B96985A3559C65";s:7:"version";s:1:"2";s:5:"mchid";s:10:"1491081962";s:6:"apikey";s:32:"F95C9695402C23CFE4B96985A3559C65";}s:8:"delivery";a:1:{s:6:"switch";b:0;}s:13:"wechat_refund";a:3:{s:6:"switch";s:1:"1";s:4:"cert";s:2154:"a04dn/Q76a46G60pUdKPMtU48KSCFUBCHo6YIFM0XloNj+Bmr8m78qpthvA1eXt3pB7yvvRMbaglpvtStjAenqaLL25LAo+ufLIdmw5GAKDTXQFi+w8qgVBC/yvzhudTllFMT9uQvP4exBKGIy/HFQ8hkOTwDaEteXiUliZm+yIoIsgsjbmq5la4Dcgvek0jXeZFbqc8jRGdRJE455mNSyEU9S2H6+5rikMdH9duN2CGExYyw8Wyg0O31cilT62mqWz0zlGrhst5QDyMVHtbSnWZN0g4kPX4ReQN/t34b6Jy4YwyZg6bZLdfcdmKnQ7v4Lq7gJsXS6SMhXxtjRi+JToaSoP+5UC29g4j4p5xOweYGraBiJSubghouOO86W9/Ch/iNxqwKLWKbx2LzXgvAVtUVEU4X7AE2FJj5RYv7OvaXoMEqaQk3CfmRVFzmxWnNcV+R4+yaAvEwH10dWPnypQkaY5EXa81mFGbG2+mFF82t9YNL8DztglcnfdPUAAGFWvJyMOtE1Oi0gvs45cv+7OrYaYFxsQmrnXfYRZ/VFkE0ywOWn+cknMdovxl9wZXaoPu0T7Jse5eQzU1Tw+l8lJACYBB0/jCaJHkNDhAGHteyvU61FVCBlfsBhCxmg3GTUP8vLIqBVqKYa2SVFw0cbXz7p0ZSFHwlen4hRTrP3V2RlPVyh1pLFkaM8ETzU5N64N5UnK8cnJXW/JfF1M2Ar2CrTgGB4TgYutKiK8MNdJaZfw+2w01MCZ+7H/FJ74gnlXTUIUmuipcLOTvGgBWxxGuVwtVyAEs3aJz9uJOpEHQMtFRgcuXArz7VM8hhoXRLias3u9iBQ/Idw6ltDFai5Dr7fLA6bZn7jINziHKKA1akfWksfLwCYMjtkg/6c1L8NP0hv5KYlES0bwgdewycoJ3XBh0s7exZwfsAiKtvHeVtE2SW9uLpnks1SyKvQ0ndsEwx53Dztg8ZaoHBHWzZbSK+DcRcmTNtsvRJD4S5nuY6VG9ewL/9ziFRWmi+8aypl2dmp8WXoOfb/MjAjpOUeuZ7mO7IURmhlES/wWUBWIIF42bCaBSsGXv9TYOOal6TL90qHLJ0TNDqQL8gbCn/UkoHXVFr9XrId3BiWytK1V35xD4vj5OROdyBWiwZNL7SEgxignyFHdkh9JOYBbmlD6v47rk57AY4nfg9/vBF4fOpXGSXarIa948BLZ4WR5hErkk5r8hh2O/0yyPEdMEpR8+7sN2zqscPe2qq46odrvnbxn+UXfbwlM0FInIjzyCLasgPrg+bnhrZCzGM5hrjZLepnzW4xf/KE+GDrpe2jWs8Z+Q4Aa73v11KJH2gJk4a1F9MVJEKJ/NLDr7c4xmwBWDq1Y31uGvvB90MTDGIE/7A5ifIilAVXKt+KiQP6GNgiIK4x/Dlgu9UKbNWiuZ+Priqu7kuANoCuEOAEMKSgl3DUOQWwuJ0eWhHXKpR9PCwguqskePCfs0g5TG2NvjmD+oLwcMZi0RD01N8IM3T2bDLT6X4glGGyw8FWJHdO+BQitQ3e+zTwgSNDjawtson2karJXeNv1epYAcEPcaIL+dlF/9enRTuyvejYtyslmbhFnZLhl+rFTp8PyfuCMuO5ehkS0TRfNWYsYZrggV/klSTQbBYJ0nUUN5NKF+Fkj5EcAf5fXuVoCzjh7vAbfO1tC+TdySS6yNqJtDQK6u8jcQKK4oYgsuvAhB8eaN8eUOOBHjONYjTpcwjDwupKQjKOF7z08NvoQy65tOquotIxUmqn/wHYOWuIqG7qoBfOOstghhR3bpXV9h1j32eptjyQHMBGxkso6ku8NU9efT1sA2bBvZlVTYtSc0TMw85YhFeL+qmAnEBC8OONQXqFreDT2fDu5QXRrubzmm6GyeujmQ4hfcv1jNjqUGXaWDEsQ3u5W6U/GIuNOp4XpXvJj0BGfvM0BiF5lAMMkALLgN6nUKhk7Rt7Mthto52T7Ppkw15LXNkiDccoP7HW1Xtfj5bJ+/wK1MkPodagLT40V+afQ9yCEjOV87i6nMPCuxSNnRLHbzMo5L/+5ZqrAQzWiywRZ/uIGkq8RCJ0Y5yDzepkVAHRUWM2tOAIKpT/Rewk2aBdpv72h20ttA0QRWQ5LVwCrzelumziJxLTWC0uwD4w";s:3:"key";s:2311:"8e32vQuX+4GUPtY4albH7cdtdXU/yA2AuvZd9q79RL5IylrTN6YJP1vOs8f0OsETibE6xn7RuPpNvd5KnEJIk+hc+vBe490JFLjf1OLDovsqJWKoWzyNSS03aa9zQSf61rTGzv3KCQsJIxmoEUSseyxSay9jiE/wk3ilkl9fZMkIbwZFJVBXC98rys2Yl7KD4ylEgURt6rZEH65dbt3JOuTDdlFRPQek8pppHlmyvoSSwfZTbSfwm4RcCFJWLeMn7lz+va1fnpTakj7UMRkgTEiALrQO+PLFI74drgaBYmQJrtI7I8cdF1ym1iOhOOxXVCQ3NMNDtUwwtIOXSSYPn9pNUxF5/iNmsfFkZucvHbQmHztM4zC/QuPBknuv6xMCdIP+bNnJN46s7BwkSj4EfzUtabzBKetGbUnmKIB+1N14/beAjCoZ/2/oGBDxv4huYleqNU1Eig5M3hQGgS1voRKeC1fDILMqMN4jT5kvpkk1vmDGWFyYRoltseBsu2kxFxl/FxgKLrZ4hhDzXppGdVM/2/Rcek8SnFIRHwEqK5fJyMJbiiS0PPHe6HcKshLdNAXC8JuthKL84EK717Wo6/LMYlcV4k/RT0OCPTtvrGSl9bpigv27PbY+WcwxgIrRUBvrr82F1uonE6DyJHsffBIpNsahoOUww/ghAgBDgHvhqLK+w6K2hngza0QcWj1Ukf24zQG1IxNgFlIdRuVKVbglbD05f1JRt7mc4LW3foxbQeaxd/nuAuNYunhqFW95zQNk8655qFa3ZyS0kmTf4dSduFQVJZ4h3a6dmuhqdZYnSd+hrmuuVlSe9G7kjq+ysJOjF7TTGoLWPiLrnY53WsIKtf6bRha8tDkwepTaqWLvBpNZb40+kMADA3e16Q+cIRlyIqBx7eMR2LIcXMeKuewZsD6vq+bk0l61RQTVS1/e6DOVzJT5e7/R5DW9OWYMS8pFR1k9oScXyfBu3/hIRW8WPofVyNoqudlFm/JZC/EMkfeWYQk6GD6l6wThtjx3X5B2eRCrPbg6qG/Yp6MTXKeEz1hq9Bn2wH7jvsaYYF1Y2umxALgIw9uaZ1veHNiHjPDPPI7RJ2BUXXHRDn19ocVCISeuL56wgg83YwugYXX558hCa+UtD1JIheFuqBQhPkTHfYMyj13pd0VkpjWas4uX08qxdwIZxIMdSzyRClGlHei9P+K7a9uLGj5Pt1WnFlRIV4B9mo6AzwA+FFGhWNDVuay2EDjRnX21TlcWbCwvaCpuVr5w2fAqxygILMPnQ9p/JkwCNecLJaWslQJJFPjp0RFC/u0EERPtXSBt4XyFCsaVxtXVM/4LovvDuyYRLrYvodc7xcgHUQhSs1UQngXiKvGmjyAxf1wBdsGaYvM4sdAo4lfZoJxI3fmqhe1fi3auLfXt+1JGTRZt7mqk9lKHW2wEKKUWxrGiGHqEtD2Dz2rvUesB6C5Wre5jHtPtOqwPasn7PL1cBksPtr3i2ox0Blg8UPj3Rfr0Qo0LRY2KN+FpJeDT41FTbbxkiiSsxh7umGfBLclRv2cKkY1tJ6Hi4oQRcaLLEQBKCt7Zitz+ajKYaFlJK0tqg3GNpTdzwDoldtg8+OoqDro7EqC0FOpf5uAmHv3fu72OXzs/EIvnkgVAJ67oypxt8V8UTvPT8wGERHDkjlGM2bUl08i1cRncMk4SUE7Z8pmtBvWtcekYF5YVsKBa7ZFxItbVX29n9ZOuKnebFH1lRkN26cuN94+PD9IKsMEfLoF7KGvcF6kFHpi1YDjKQ7cEvcsxiRslrapc9MMZ38Timc2uz1X01nMc7qXKEVneenVzlw/5X8ofLu5Za8JSBv+2+C5liZwup5e8bVEQts4PIZeXzRMEP5yk+y+jgGJbIVXZqzPC8R0YJieJMuWTkPHvHyrG3YJJw8YgBoxMyfUWBEJ9nyv2PIiCyNJsKCNQkT8yGWRW6Bf2CV2cGAoKOgcEjetl0Wuol13HaSXqxkc967VuRgOVGswMMqb+Px9IHdD4fruLVasNoFRLt2g5DgmTIULvHPJC4/wfkSxZK06kx5AniAQYa/q3nCGHyZxMLy61z2gZwCDHxYKumcVkLAaEIeAwS78n7oabDDpLEC55hvuk2JFKJmkltYdlO1ygWpD54joNTd3GATiqLtNlk1EpKCe3cjJdCB9c6kvbM2a+219sH3wVysQ9yJwEwRFLuFRLTT/G16v+4h5A8xeKC49dnrhJ2rmY77lugTX/Pdc+TjFLyNOsp/tkNVew219JNnL0UCGOxbzk5xPyFhwNn8hs3kInuFd013kOHto";}}s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:1:"6";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}'),
('uniaccount:6', 'a:36:{s:4:"acid";s:1:"6";s:7:"uniacid";s:1:"6";s:5:"token";s:32:"u57vp4xqr6ZJvSn2yOB5KkOx4yYozkB4";s:14:"encodingaeskey";s:43:"kx9mG9X2IwWY4W9I9Wxy8y2IT2Ywg89YFwwziMwl67w";s:12:"access_token";s:0:"";s:5:"level";s:1:"4";s:4:"name";s:9:"点了码";s:7:"account";s:22:"dianlema_order@163.com";s:8:"original";s:15:"gh_fbed32f1f289";s:9:"signature";s:0:"";s:7:"country";s:0:"";s:8:"province";s:0:"";s:4:"city";s:0:"";s:8:"username";s:0:"";s:8:"password";s:0:"";s:10:"lastupdate";s:1:"0";s:3:"key";s:18:"wxf906fe71b74173e8";s:6:"secret";s:32:"364d27b352bfe9b27c9ec814e4b074aa";s:7:"styleid";s:1:"1";s:12:"jsapi_ticket";s:0:"";s:12:"subscribeurl";s:0:"";s:11:"card_ticket";s:0:"";s:5:"topad";s:0:"";s:6:"footad";s:0:"";s:18:"auth_refresh_token";s:0:"";s:4:"type";s:1:"1";s:9:"isconnect";s:1:"1";s:9:"isdeleted";s:1:"0";s:3:"uid";N;s:9:"starttime";N;s:7:"endtime";N;s:6:"groups";a:1:{i:6;a:6:{s:7:"groupid";s:1:"6";s:7:"uniacid";s:1:"6";s:5:"title";s:15:"默认会员组";s:9:"orderlist";s:1:"0";s:9:"isdefault";s:1:"1";s:6:"credit";s:1:"0";}}s:7:"setting";a:28:{s:7:"uniacid";s:1:"6";s:8:"passport";s:0:"";s:5:"oauth";a:2:{s:7:"account";s:1:"6";s:4:"host";s:0:"";}s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";a:3:{s:6:"wechat";a:6:{s:6:"switch";s:1:"1";s:7:"account";s:1:"6";s:7:"signkey";s:32:"F95C9695402C23CFE4B96985A3559C65";s:7:"version";s:1:"2";s:5:"mchid";s:10:"1491081962";s:6:"apikey";s:32:"F95C9695402C23CFE4B96985A3559C65";}s:8:"delivery";a:1:{s:6:"switch";b:0;}s:13:"wechat_refund";a:3:{s:6:"switch";s:1:"1";s:4:"cert";s:2154:"a04dn/Q76a46G60pUdKPMtU48KSCFUBCHo6YIFM0XloNj+Bmr8m78qpthvA1eXt3pB7yvvRMbaglpvtStjAenqaLL25LAo+ufLIdmw5GAKDTXQFi+w8qgVBC/yvzhudTllFMT9uQvP4exBKGIy/HFQ8hkOTwDaEteXiUliZm+yIoIsgsjbmq5la4Dcgvek0jXeZFbqc8jRGdRJE455mNSyEU9S2H6+5rikMdH9duN2CGExYyw8Wyg0O31cilT62mqWz0zlGrhst5QDyMVHtbSnWZN0g4kPX4ReQN/t34b6Jy4YwyZg6bZLdfcdmKnQ7v4Lq7gJsXS6SMhXxtjRi+JToaSoP+5UC29g4j4p5xOweYGraBiJSubghouOO86W9/Ch/iNxqwKLWKbx2LzXgvAVtUVEU4X7AE2FJj5RYv7OvaXoMEqaQk3CfmRVFzmxWnNcV+R4+yaAvEwH10dWPnypQkaY5EXa81mFGbG2+mFF82t9YNL8DztglcnfdPUAAGFWvJyMOtE1Oi0gvs45cv+7OrYaYFxsQmrnXfYRZ/VFkE0ywOWn+cknMdovxl9wZXaoPu0T7Jse5eQzU1Tw+l8lJACYBB0/jCaJHkNDhAGHteyvU61FVCBlfsBhCxmg3GTUP8vLIqBVqKYa2SVFw0cbXz7p0ZSFHwlen4hRTrP3V2RlPVyh1pLFkaM8ETzU5N64N5UnK8cnJXW/JfF1M2Ar2CrTgGB4TgYutKiK8MNdJaZfw+2w01MCZ+7H/FJ74gnlXTUIUmuipcLOTvGgBWxxGuVwtVyAEs3aJz9uJOpEHQMtFRgcuXArz7VM8hhoXRLias3u9iBQ/Idw6ltDFai5Dr7fLA6bZn7jINziHKKA1akfWksfLwCYMjtkg/6c1L8NP0hv5KYlES0bwgdewycoJ3XBh0s7exZwfsAiKtvHeVtE2SW9uLpnks1SyKvQ0ndsEwx53Dztg8ZaoHBHWzZbSK+DcRcmTNtsvRJD4S5nuY6VG9ewL/9ziFRWmi+8aypl2dmp8WXoOfb/MjAjpOUeuZ7mO7IURmhlES/wWUBWIIF42bCaBSsGXv9TYOOal6TL90qHLJ0TNDqQL8gbCn/UkoHXVFr9XrId3BiWytK1V35xD4vj5OROdyBWiwZNL7SEgxignyFHdkh9JOYBbmlD6v47rk57AY4nfg9/vBF4fOpXGSXarIa948BLZ4WR5hErkk5r8hh2O/0yyPEdMEpR8+7sN2zqscPe2qq46odrvnbxn+UXfbwlM0FInIjzyCLasgPrg+bnhrZCzGM5hrjZLepnzW4xf/KE+GDrpe2jWs8Z+Q4Aa73v11KJH2gJk4a1F9MVJEKJ/NLDr7c4xmwBWDq1Y31uGvvB90MTDGIE/7A5ifIilAVXKt+KiQP6GNgiIK4x/Dlgu9UKbNWiuZ+Priqu7kuANoCuEOAEMKSgl3DUOQWwuJ0eWhHXKpR9PCwguqskePCfs0g5TG2NvjmD+oLwcMZi0RD01N8IM3T2bDLT6X4glGGyw8FWJHdO+BQitQ3e+zTwgSNDjawtson2karJXeNv1epYAcEPcaIL+dlF/9enRTuyvejYtyslmbhFnZLhl+rFTp8PyfuCMuO5ehkS0TRfNWYsYZrggV/klSTQbBYJ0nUUN5NKF+Fkj5EcAf5fXuVoCzjh7vAbfO1tC+TdySS6yNqJtDQK6u8jcQKK4oYgsuvAhB8eaN8eUOOBHjONYjTpcwjDwupKQjKOF7z08NvoQy65tOquotIxUmqn/wHYOWuIqG7qoBfOOstghhR3bpXV9h1j32eptjyQHMBGxkso6ku8NU9efT1sA2bBvZlVTYtSc0TMw85YhFeL+qmAnEBC8OONQXqFreDT2fDu5QXRrubzmm6GyeujmQ4hfcv1jNjqUGXaWDEsQ3u5W6U/GIuNOp4XpXvJj0BGfvM0BiF5lAMMkALLgN6nUKhk7Rt7Mthto52T7Ppkw15LXNkiDccoP7HW1Xtfj5bJ+/wK1MkPodagLT40V+afQ9yCEjOV87i6nMPCuxSNnRLHbzMo5L/+5ZqrAQzWiywRZ/uIGkq8RCJ0Y5yDzepkVAHRUWM2tOAIKpT/Rewk2aBdpv72h20ttA0QRWQ5LVwCrzelumziJxLTWC0uwD4w";s:3:"key";s:2311:"8e32vQuX+4GUPtY4albH7cdtdXU/yA2AuvZd9q79RL5IylrTN6YJP1vOs8f0OsETibE6xn7RuPpNvd5KnEJIk+hc+vBe490JFLjf1OLDovsqJWKoWzyNSS03aa9zQSf61rTGzv3KCQsJIxmoEUSseyxSay9jiE/wk3ilkl9fZMkIbwZFJVBXC98rys2Yl7KD4ylEgURt6rZEH65dbt3JOuTDdlFRPQek8pppHlmyvoSSwfZTbSfwm4RcCFJWLeMn7lz+va1fnpTakj7UMRkgTEiALrQO+PLFI74drgaBYmQJrtI7I8cdF1ym1iOhOOxXVCQ3NMNDtUwwtIOXSSYPn9pNUxF5/iNmsfFkZucvHbQmHztM4zC/QuPBknuv6xMCdIP+bNnJN46s7BwkSj4EfzUtabzBKetGbUnmKIB+1N14/beAjCoZ/2/oGBDxv4huYleqNU1Eig5M3hQGgS1voRKeC1fDILMqMN4jT5kvpkk1vmDGWFyYRoltseBsu2kxFxl/FxgKLrZ4hhDzXppGdVM/2/Rcek8SnFIRHwEqK5fJyMJbiiS0PPHe6HcKshLdNAXC8JuthKL84EK717Wo6/LMYlcV4k/RT0OCPTtvrGSl9bpigv27PbY+WcwxgIrRUBvrr82F1uonE6DyJHsffBIpNsahoOUww/ghAgBDgHvhqLK+w6K2hngza0QcWj1Ukf24zQG1IxNgFlIdRuVKVbglbD05f1JRt7mc4LW3foxbQeaxd/nuAuNYunhqFW95zQNk8655qFa3ZyS0kmTf4dSduFQVJZ4h3a6dmuhqdZYnSd+hrmuuVlSe9G7kjq+ysJOjF7TTGoLWPiLrnY53WsIKtf6bRha8tDkwepTaqWLvBpNZb40+kMADA3e16Q+cIRlyIqBx7eMR2LIcXMeKuewZsD6vq+bk0l61RQTVS1/e6DOVzJT5e7/R5DW9OWYMS8pFR1k9oScXyfBu3/hIRW8WPofVyNoqudlFm/JZC/EMkfeWYQk6GD6l6wThtjx3X5B2eRCrPbg6qG/Yp6MTXKeEz1hq9Bn2wH7jvsaYYF1Y2umxALgIw9uaZ1veHNiHjPDPPI7RJ2BUXXHRDn19ocVCISeuL56wgg83YwugYXX558hCa+UtD1JIheFuqBQhPkTHfYMyj13pd0VkpjWas4uX08qxdwIZxIMdSzyRClGlHei9P+K7a9uLGj5Pt1WnFlRIV4B9mo6AzwA+FFGhWNDVuay2EDjRnX21TlcWbCwvaCpuVr5w2fAqxygILMPnQ9p/JkwCNecLJaWslQJJFPjp0RFC/u0EERPtXSBt4XyFCsaVxtXVM/4LovvDuyYRLrYvodc7xcgHUQhSs1UQngXiKvGmjyAxf1wBdsGaYvM4sdAo4lfZoJxI3fmqhe1fi3auLfXt+1JGTRZt7mqk9lKHW2wEKKUWxrGiGHqEtD2Dz2rvUesB6C5Wre5jHtPtOqwPasn7PL1cBksPtr3i2ox0Blg8UPj3Rfr0Qo0LRY2KN+FpJeDT41FTbbxkiiSsxh7umGfBLclRv2cKkY1tJ6Hi4oQRcaLLEQBKCt7Zitz+ajKYaFlJK0tqg3GNpTdzwDoldtg8+OoqDro7EqC0FOpf5uAmHv3fu72OXzs/EIvnkgVAJ67oypxt8V8UTvPT8wGERHDkjlGM2bUl08i1cRncMk4SUE7Z8pmtBvWtcekYF5YVsKBa7ZFxItbVX29n9ZOuKnebFH1lRkN26cuN94+PD9IKsMEfLoF7KGvcF6kFHpi1YDjKQ7cEvcsxiRslrapc9MMZ38Timc2uz1X01nMc7qXKEVneenVzlw/5X8ofLu5Za8JSBv+2+C5liZwup5e8bVEQts4PIZeXzRMEP5yk+y+jgGJbIVXZqzPC8R0YJieJMuWTkPHvHyrG3YJJw8YgBoxMyfUWBEJ9nyv2PIiCyNJsKCNQkT8yGWRW6Bf2CV2cGAoKOgcEjetl0Wuol13HaSXqxkc967VuRgOVGswMMqb+Px9IHdD4fruLVasNoFRLt2g5DgmTIULvHPJC4/wfkSxZK06kx5AniAQYa/q3nCGHyZxMLy61z2gZwCDHxYKumcVkLAaEIeAwS78n7oabDDpLEC55hvuk2JFKJmkltYdlO1ygWpD54joNTd3GATiqLtNlk1EpKCe3cjJdCB9c6kvbM2a+219sH3wVysQ9yJwEwRFLuFRLTT/G16v+4h5A8xeKC49dnrhJ2rmY77lugTX/Pdc+TjFLyNOsp/tkNVew219JNnL0UCGOxbzk5xPyFhwNn8hs3kInuFd013kOHto";}}s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:1:"6";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}s:10:"grouplevel";s:1:"0";s:4:"logo";s:64:"http://www.dianlema.net/attachment/headimg_6.jpg?time=1510739332";s:6:"qrcode";s:63:"http://www.dianlema.net/attachment/qrcode_6.jpg?time=1510739332";}'),
('unisetting:5', 'a:28:{s:7:"uniacid";s:1:"5";s:8:"passport";s:0:"";s:5:"oauth";a:2:{s:7:"account";s:1:"5";s:4:"host";s:0:"";}s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:1:"5";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}'),
('uniaccount:5', 'a:36:{s:4:"acid";s:1:"5";s:7:"uniacid";s:1:"5";s:5:"token";s:32:"vo636s7DVl03tSi6i666iytplSo3YdYd";s:14:"encodingaeskey";s:43:"WitGiMbilYJ9rlTW4cAawaDBkaUDutIFgDEvEUwAHjV";s:12:"access_token";s:0:"";s:5:"level";s:1:"4";s:4:"name";s:9:"口口碑";s:7:"account";s:0:"";s:8:"original";s:15:"gh_925d4d7e2212";s:9:"signature";s:0:"";s:7:"country";s:0:"";s:8:"province";s:0:"";s:4:"city";s:0:"";s:8:"username";s:0:"";s:8:"password";s:0:"";s:10:"lastupdate";s:1:"0";s:3:"key";s:18:"wxb5f09a820a3a1aaa";s:6:"secret";s:32:"443fd39be19c7da414bf1364fd86e894";s:7:"styleid";s:1:"1";s:12:"jsapi_ticket";s:0:"";s:12:"subscribeurl";s:0:"";s:11:"card_ticket";s:0:"";s:5:"topad";s:0:"";s:6:"footad";s:0:"";s:18:"auth_refresh_token";s:0:"";s:4:"type";s:1:"1";s:9:"isconnect";s:1:"0";s:9:"isdeleted";s:1:"0";s:3:"uid";N;s:9:"starttime";N;s:7:"endtime";N;s:6:"groups";a:1:{i:5;a:6:{s:7:"groupid";s:1:"5";s:7:"uniacid";s:1:"5";s:5:"title";s:15:"默认会员组";s:9:"orderlist";s:1:"0";s:9:"isdefault";s:1:"1";s:6:"credit";s:1:"0";}}s:7:"setting";a:28:{s:7:"uniacid";s:1:"5";s:8:"passport";s:0:"";s:5:"oauth";a:2:{s:7:"account";s:1:"5";s:4:"host";s:0:"";}s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:1:"5";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}s:10:"grouplevel";s:1:"0";s:4:"logo";s:64:"http://www.dianlema.net/attachment/headimg_5.jpg?time=1510739332";s:6:"qrcode";s:63:"http://www.dianlema.net/attachment/qrcode_5.jpg?time=1510739332";}'),
('unisetting:1', 'a:28:{s:7:"uniacid";s:1:"1";s:8:"passport";a:3:{s:8:"focusreg";i:0;s:4:"item";s:5:"email";s:4:"type";s:8:"password";}s:5:"oauth";a:2:{s:6:"status";s:1:"0";s:7:"account";s:1:"0";}s:2:"uc";a:1:{s:6:"status";i:0;}s:6:"notify";a:1:{s:3:"sms";a:2:{s:7:"balance";i:0;s:9:"signature";s:0:"";}}s:11:"creditnames";a:5:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}s:7:"credit3";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}s:7:"credit4";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}s:7:"credit5";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";a:4:{s:6:"credit";a:1:{s:6:"switch";b:0;}s:6:"alipay";a:4:{s:6:"switch";b:0;s:7:"account";s:0:"";s:7:"partner";s:0:"";s:6:"secret";s:0:"";}s:6:"wechat";a:5:{s:6:"switch";b:0;s:7:"account";b:0;s:7:"signkey";s:0:"";s:7:"partner";s:0:"";s:3:"key";s:0:"";}s:8:"delivery";a:1:{s:6:"switch";b:0;}}s:9:"groupdata";s:90:"a:4:{s:8:"isexpire";i:1;s:7:"endtime";d:1507456793;s:10:"oldgroupid";N;s:7:"is_auto";i:1;}";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:1:"1";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}'),
('we7:module_setting:6:weisrc_dish', 'a:7:{s:2:"id";s:2:"14";s:7:"uniacid";s:1:"6";s:6:"module";s:11:"weisrc_dish";s:7:"enabled";s:1:"1";s:8:"settings";s:156:"a:1:{s:11:"weisrc_dish";a:5:{s:10:"storecount";s:1:"0";s:14:"copyright_name";s:0:"";s:13:"copyright_url";s:0:"";s:8:"is_jueqi";i:0;s:11:"is_fengniao";i:0;}}";s:8:"shortcut";s:1:"0";s:12:"displayorder";s:1:"0";}'),
('we7:lastaccount:pYIxp', 'a:1:{s:7:"account";i:6;}'),
('unicount:6', 's:1:"1";'),
('we7:unimodules:6:', 'a:14:{s:11:"weisrc_dish";a:1:{s:4:"name";s:11:"weisrc_dish";}s:6:"wxcard";a:1:{s:4:"name";s:6:"wxcard";}s:4:"news";a:1:{s:4:"name";s:4:"news";}s:6:"images";a:1:{s:4:"name";s:6:"images";}s:10:"we7_coupon";a:1:{s:4:"name";s:10:"we7_coupon";}s:5:"music";a:1:{s:4:"name";s:5:"music";}s:5:"video";a:1:{s:4:"name";s:5:"video";}s:7:"userapi";a:1:{s:4:"name";s:7:"userapi";}s:5:"voice";a:1:{s:4:"name";s:5:"voice";}s:13:"kim_financial";a:1:{s:4:"name";s:13:"kim_financial";}s:8:"recharge";a:1:{s:4:"name";s:8:"recharge";}s:5:"chats";a:1:{s:4:"name";s:5:"chats";}s:5:"basic";a:1:{s:4:"name";s:5:"basic";}s:6:"custom";a:1:{s:4:"name";s:6:"custom";}}'),
('we7:lastaccount:Ak6SE', 'a:1:{s:7:"account";i:6;}'),
('uniaccount:1', 'a:36:{s:4:"acid";s:1:"1";s:7:"uniacid";s:1:"1";s:5:"token";s:32:"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP";s:14:"encodingaeskey";s:0:"";s:12:"access_token";s:0:"";s:5:"level";s:1:"1";s:4:"name";s:6:"Wzteam";s:7:"account";s:0:"";s:8:"original";s:0:"";s:9:"signature";s:0:"";s:7:"country";s:0:"";s:8:"province";s:0:"";s:4:"city";s:0:"";s:8:"username";s:0:"";s:8:"password";s:0:"";s:10:"lastupdate";s:1:"0";s:3:"key";s:0:"";s:6:"secret";s:0:"";s:7:"styleid";s:1:"1";s:12:"jsapi_ticket";s:0:"";s:12:"subscribeurl";s:0:"";s:11:"card_ticket";s:0:"";s:5:"topad";s:0:"";s:6:"footad";s:0:"";s:18:"auth_refresh_token";s:0:"";s:4:"type";s:1:"1";s:9:"isconnect";s:1:"0";s:9:"isdeleted";s:1:"1";s:3:"uid";N;s:9:"starttime";N;s:7:"endtime";N;s:6:"groups";a:1:{i:1;a:6:{s:7:"groupid";s:1:"1";s:7:"uniacid";s:1:"1";s:5:"title";s:15:"默认会员组";s:9:"orderlist";s:1:"0";s:9:"isdefault";s:1:"1";s:6:"credit";s:1:"0";}}s:7:"setting";a:28:{s:7:"uniacid";s:1:"1";s:8:"passport";a:3:{s:8:"focusreg";i:0;s:4:"item";s:5:"email";s:4:"type";s:8:"password";}s:5:"oauth";a:2:{s:6:"status";s:1:"0";s:7:"account";s:1:"0";}s:2:"uc";a:1:{s:6:"status";i:0;}s:6:"notify";a:1:{s:3:"sms";a:2:{s:7:"balance";i:0;s:9:"signature";s:0:"";}}s:11:"creditnames";a:5:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}s:7:"credit3";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}s:7:"credit4";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}s:7:"credit5";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";a:4:{s:6:"credit";a:1:{s:6:"switch";b:0;}s:6:"alipay";a:4:{s:6:"switch";b:0;s:7:"account";s:0:"";s:7:"partner";s:0:"";s:6:"secret";s:0:"";}s:6:"wechat";a:5:{s:6:"switch";b:0;s:7:"account";b:0;s:7:"signkey";s:0:"";s:7:"partner";s:0:"";s:3:"key";s:0:"";}s:8:"delivery";a:1:{s:6:"switch";b:0;}}s:9:"groupdata";s:90:"a:4:{s:8:"isexpire";i:1;s:7:"endtime";d:1507456793;s:10:"oldgroupid";N;s:7:"is_auto";i:1;}";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:1:"1";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}s:10:"grouplevel";s:1:"0";s:4:"logo";s:64:"http://www.dianlema.net/attachment/headimg_1.jpg?time=1510821350";s:6:"qrcode";s:63:"http://www.dianlema.net/attachment/qrcode_1.jpg?time=1510821350";}'),
('unisetting:2', 'a:28:{s:7:"uniacid";s:1:"2";s:8:"passport";s:0:"";s:5:"oauth";s:0:"";s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:90:"a:4:{s:8:"isexpire";i:1;s:7:"endtime";i:1507468709;s:10:"oldgroupid";N;s:7:"is_auto";i:1;}";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:1:"2";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}'),
('stat:todaylock:15', 'a:1:{s:6:"expire";i:1511327789;}'),
('defaultgroupid:6', 's:1:"6";'),
('we7:memberinfo:45', 'a:53:{s:3:"uid";s:2:"45";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"b8bfba009e93b1e51c9aa6cd1a7325e8@weizancms.com";s:8:"password";s:32:"c873ba4dda7bd754c89ceb4d898f7690";s:4:"salt";s:8:"j83ctC9l";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1510563228";s:8:"realname";s:0:"";s:8:"nickname";s:5:"Lc啊";s:6:"avatar";s:132:"http://wx.qlogo.cn/mmopen/YSBzp7uZPb2LUF9mB1BQZ5j84icIQoIaOicTEoy5dUoC9bSlibt1zBHFYppyib3rQEtwSiaIjmibrpgYyuowAfuRQyAQMPnXbrpKAh/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('accesstoken:6', 'a:2:{s:5:"token";s:138:"Ha5oao7HqQpJ_DDqmJm6NlykH_SXjvZICx5ZA-r7H_rm1u4zdeZTPQ7Oa8PBHq5Dfkq9whdxasjuwZYzaX92817eT2lxf9teOmRoZ82uP5u1YMxs0WZOLurihoJRdKSqWNBaABASJX";s:6:"expire";i:1511327644;}'),
('jsticket:6', 'a:2:{s:6:"ticket";s:86:"HoagFKDcsGMVCIY2vOjf9kJaF5kkzllhywFkffHUlnMD3j_aSNySrCXJ3gdFx8hCrsDYfqc3eGHw465suUgGAg";s:6:"expire";i:1511271948;}'),
('we7:memberinfo:16', 'a:53:{s:3:"uid";s:2:"16";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"df1755dc0f71c3778714cca1e5b66ebf@weizancms.com";s:8:"password";s:32:"32dfe08b4bff77d43d824d890ba11538";s:4:"salt";s:8:"h181w5wV";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1509097351";s:8:"realname";s:0:"";s:8:"nickname";s:6:"成果";s:6:"avatar";s:118:"http://wx.qlogo.cn/mmopen/Q3auHgzwzM4lficuQ7Jo2kInMGDxsprd5VdXpBaRRPKd9EIMoVBTAXPA5ia9q6fCIhnzPRz0pfNG1M8FCGGjNObg/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"1";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:6:"中国";s:14:"resideprovince";s:9:"福建省";s:10:"residecity";s:9:"厦门市";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:21', 'a:53:{s:3:"uid";s:2:"21";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"f4ae23509fba5fb16f0dab4e148f2a16@weizancms.com";s:8:"password";s:32:"32dfe08b4bff77d43d824d890ba11538";s:4:"salt";s:8:"XPkywook";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1509122632";s:8:"realname";s:0:"";s:8:"nickname";s:21:"即来之～则安之";s:6:"avatar";s:130:"http://wx.qlogo.cn/mmopen/YSBzp7uZPb28FGgxXCra8ADs6tyMlwDrdulyJAf3Y9IQutlSCNVyTntgibMByRQRUbWngQvBAG4Ar1FD8qJibAibDGK6OgvicrcP/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"1";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:6:"中国";s:14:"resideprovince";s:9:"广西省";s:10:"residecity";s:9:"南宁市";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:18', 'a:53:{s:3:"uid";s:2:"18";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"fff7759fb7343c8e6b8974555af69bef@weizancms.com";s:8:"password";s:32:"9122ed74332846957617b0bb1cfb48f3";s:4:"salt";s:8:"NYxECB27";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1509111977";s:8:"realname";s:0:"";s:8:"nickname";s:9:"王庭协";s:6:"avatar";s:120:"http://wx.qlogo.cn/mmopen/qGusKyb0IEc4Vp17o76DFnwvg45Iicw02ArXBAgViaibAsY7BRdcQaWGhW1frM5oBJo8koo3Wm3dSWLpdllMSibqUA/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:lastaccount:Bmztd', 'a:1:{s:7:"account";i:6;}'),
('stat:todaylock:6', 'a:1:{s:6:"expire";i:1511327848;}'),
('unisetting:', 'b:0;'),
('uniaccount:', 'a:8:{s:3:"uid";N;s:9:"starttime";N;s:7:"endtime";N;s:6:"groups";a:0:{}s:7:"setting";a:0:{}s:10:"grouplevel";N;s:4:"logo";s:63:"http://www.dianlema.net/attachment/headimg_.jpg?time=1510815914";s:6:"qrcode";s:62:"http://www.dianlema.net/attachment/qrcode_.jpg?time=1510815914";}'),
('we7:lastaccount:hvXfh', 'a:1:{s:7:"account";i:6;}'),
('we7:user_modules:1', 'a:14:{i:0;s:13:"kim_financial";i:1;s:11:"weisrc_dish";i:2;s:10:"we7_coupon";i:3;s:6:"wxcard";i:4;s:5:"chats";i:5;s:5:"voice";i:6;s:5:"video";i:7;s:6:"images";i:8;s:6:"custom";i:9;s:8:"recharge";i:10;s:7:"userapi";i:11;s:5:"music";i:12;s:4:"news";i:13;s:5:"basic";}'),
('we7:uni_group', 'a:2:{i:5;a:11:{s:2:"id";s:1:"5";s:4:"name";s:6:"商家";s:7:"modules";a:1:{s:11:"weisrc_dish";a:33:{s:3:"mid";s:2:"15";s:4:"name";s:11:"weisrc_dish";s:4:"type";s:8:"business";s:5:"title";s:30:"码上点餐外卖餐饮系统";s:7:"version";s:5:"6.4.2";s:7:"ability";s:12:"码上点餐";s:11:"description";s:12:"码上点餐";s:6:"author";s:21:"淘宝大众乐科技";s:3:"url";s:18:"https://www.we7.cc";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:3:{i:0;s:9:"subscribe";i:1;s:2:"qr";i:2;s:4:"text";}s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"0";s:10:"issolution";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:6:"a:0:{}";s:5:"price";s:4:"0.00";s:5:"isbuy";s:1:"0";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:11:"template_id";s:1:"0";s:9:"item_list";s:0:"";s:9:"isdisplay";i:1;s:4:"logo";s:71:"http://www.dianlema.net/addons/weisrc_dish/icon-custom.jpg?v=1510739330";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}s:11:"is_relation";b:0;s:6:"config";a:1:{s:11:"weisrc_dish";a:5:{s:10:"storecount";s:1:"0";s:14:"copyright_name";s:0:"";s:13:"copyright_url";s:0:"";s:8:"is_jueqi";i:0;s:11:"is_fengniao";i:0;}}s:7:"enabled";s:1:"1";s:8:"shortcut";s:1:"0";}}s:9:"templates";a:2:{s:7:"default";a:3:{s:2:"id";s:1:"1";s:4:"name";s:7:"default";s:5:"title";s:18:"微站默认模板";}s:7:"style31";a:3:{s:2:"id";s:1:"2";s:4:"name";s:7:"style31";s:5:"title";s:13:"微赞style31";}}s:7:"uniacid";s:1:"0";s:5:"price";s:4:"0.00";s:4:"hide";s:1:"0";s:10:"moduletime";s:0:"";s:9:"owner_uid";s:1:"0";s:3:"day";N;s:5:"wxapp";a:0:{}}i:1;a:11:{s:2:"id";s:1:"1";s:4:"name";s:18:"点餐套餐服务";s:7:"modules";a:1:{s:11:"weisrc_dish";a:33:{s:3:"mid";s:2:"15";s:4:"name";s:11:"weisrc_dish";s:4:"type";s:8:"business";s:5:"title";s:30:"码上点餐外卖餐饮系统";s:7:"version";s:5:"6.4.2";s:7:"ability";s:12:"码上点餐";s:11:"description";s:12:"码上点餐";s:6:"author";s:21:"淘宝大众乐科技";s:3:"url";s:18:"https://www.we7.cc";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:3:{i:0;s:9:"subscribe";i:1;s:2:"qr";i:2;s:4:"text";}s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"0";s:10:"issolution";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:6:"a:0:{}";s:5:"price";s:4:"0.00";s:5:"isbuy";s:1:"0";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:11:"template_id";s:1:"0";s:9:"item_list";s:0:"";s:9:"isdisplay";i:1;s:4:"logo";s:71:"http://www.dianlema.net/addons/weisrc_dish/icon-custom.jpg?v=1510739330";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}s:11:"is_relation";b:0;s:6:"config";a:1:{s:11:"weisrc_dish";a:5:{s:10:"storecount";s:1:"0";s:14:"copyright_name";s:0:"";s:13:"copyright_url";s:0:"";s:8:"is_jueqi";i:0;s:11:"is_fengniao";i:0;}}s:7:"enabled";s:1:"1";s:8:"shortcut";s:1:"0";}}s:9:"templates";a:2:{s:7:"default";a:3:{s:2:"id";s:1:"1";s:4:"name";s:7:"default";s:5:"title";s:18:"微站默认模板";}s:7:"style31";a:3:{s:2:"id";s:1:"2";s:4:"name";s:7:"style31";s:5:"title";s:13:"微赞style31";}}s:7:"uniacid";s:1:"0";s:5:"price";s:6:"720.00";s:4:"hide";s:1:"0";s:10:"moduletime";s:0:"";s:9:"owner_uid";s:1:"0";s:3:"day";s:2:"30";s:5:"wxapp";a:0:{}}}'),
('stat:todaylock:9', 'a:1:{s:6:"expire";i:1510823156;}'),
('unicount:9', 's:1:"1";'),
('we7:lastaccount:l220O', 'a:1:{s:7:"account";i:7;}'),
('uniaccount:2', 'a:36:{s:4:"acid";s:1:"2";s:7:"uniacid";s:1:"2";s:5:"token";s:32:"KntCTJm9cDEt3J3M9ntN8n3JUSc4dJnN";s:14:"encodingaeskey";s:43:"At85zO5E8eB531E8eOoEZElDnTN752258N8EMLEeveE";s:12:"access_token";s:0:"";s:5:"level";s:1:"2";s:4:"name";s:3:"123";s:7:"account";s:3:"123";s:8:"original";s:3:"123";s:9:"signature";s:0:"";s:7:"country";s:0:"";s:8:"province";s:0:"";s:4:"city";s:0:"";s:8:"username";s:0:"";s:8:"password";s:0:"";s:10:"lastupdate";s:1:"0";s:3:"key";s:3:"123";s:6:"secret";s:3:"123";s:7:"styleid";s:1:"1";s:12:"jsapi_ticket";s:0:"";s:12:"subscribeurl";s:0:"";s:11:"card_ticket";s:0:"";s:5:"topad";s:0:"";s:6:"footad";s:0:"";s:18:"auth_refresh_token";s:0:"";s:4:"type";s:1:"1";s:9:"isconnect";s:1:"0";s:9:"isdeleted";s:1:"1";s:3:"uid";s:1:"2";s:9:"starttime";s:10:"1504493840";s:7:"endtime";s:1:"0";s:6:"groups";a:1:{i:2;a:6:{s:7:"groupid";s:1:"2";s:7:"uniacid";s:1:"2";s:5:"title";s:15:"默认会员组";s:9:"orderlist";s:1:"0";s:9:"isdefault";s:1:"1";s:6:"credit";s:1:"0";}}s:7:"setting";a:28:{s:7:"uniacid";s:1:"2";s:8:"passport";s:0:"";s:5:"oauth";s:0:"";s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:90:"a:4:{s:8:"isexpire";i:1;s:7:"endtime";i:1507468709;s:10:"oldgroupid";N;s:7:"is_auto";i:1;}";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:1:"2";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}s:10:"grouplevel";s:1:"0";s:4:"logo";s:64:"http://www.dianlema.net/attachment/headimg_2.jpg?time=1510821350";s:6:"qrcode";s:63:"http://www.dianlema.net/attachment/qrcode_2.jpg?time=1510821350";}'),
('unisetting:3', 'a:28:{s:7:"uniacid";s:1:"3";s:8:"passport";s:0:"";s:5:"oauth";s:0:"";s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:90:"a:4:{s:8:"isexpire";i:1;s:7:"endtime";i:1507474006;s:10:"oldgroupid";N;s:7:"is_auto";i:1;}";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:1:"3";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}'),
('uniaccount:3', 'a:36:{s:4:"acid";s:1:"3";s:7:"uniacid";s:1:"3";s:5:"token";s:32:"Gw3Jctq1Em10Uu1z1JH1x7t13fucCzo7";s:14:"encodingaeskey";s:43:"Pa74W5tAeUKsREErZrnTuHR7tW6vHIi5Ri5AivvaaUv";s:12:"access_token";s:0:"";s:5:"level";s:1:"1";s:4:"name";s:9:"123123123";s:7:"account";s:3:"123";s:8:"original";s:0:"";s:9:"signature";s:0:"";s:7:"country";s:0:"";s:8:"province";s:0:"";s:4:"city";s:0:"";s:8:"username";s:0:"";s:8:"password";s:0:"";s:10:"lastupdate";s:1:"0";s:3:"key";s:3:"123";s:6:"secret";s:3:"123";s:7:"styleid";s:1:"1";s:12:"jsapi_ticket";s:0:"";s:12:"subscribeurl";s:0:"";s:11:"card_ticket";s:0:"";s:5:"topad";s:0:"";s:6:"footad";s:0:"";s:18:"auth_refresh_token";s:0:"";s:4:"type";s:1:"1";s:9:"isconnect";s:1:"0";s:9:"isdeleted";s:1:"1";s:3:"uid";s:1:"4";s:9:"starttime";s:10:"1504876925";s:7:"endtime";s:10:"1689436800";s:6:"groups";a:1:{i:3;a:6:{s:7:"groupid";s:1:"3";s:7:"uniacid";s:1:"3";s:5:"title";s:15:"默认会员组";s:9:"orderlist";s:1:"0";s:9:"isdefault";s:1:"1";s:6:"credit";s:1:"0";}}s:7:"setting";a:28:{s:7:"uniacid";s:1:"3";s:8:"passport";s:0:"";s:5:"oauth";s:0:"";s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:90:"a:4:{s:8:"isexpire";i:1;s:7:"endtime";i:1507474006;s:10:"oldgroupid";N;s:7:"is_auto";i:1;}";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:1:"3";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}s:10:"grouplevel";s:1:"0";s:4:"logo";s:64:"http://www.dianlema.net/attachment/headimg_3.jpg?time=1510821350";s:6:"qrcode";s:63:"http://www.dianlema.net/attachment/qrcode_3.jpg?time=1510821350";}'),
('unisetting:4', 'a:28:{s:7:"uniacid";s:1:"4";s:8:"passport";s:0:"";s:5:"oauth";a:2:{s:7:"account";s:1:"4";s:4:"host";s:0:"";}s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:1:"4";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}'),
('uniaccount:4', 'a:36:{s:4:"acid";s:1:"4";s:7:"uniacid";s:1:"4";s:5:"token";s:32:"vo636s7DVl03tSi6i666iytplSo3YdYd";s:14:"encodingaeskey";s:43:"WitGiMbilYJ9rlTW4cAawaDBkaUDutIFgDEvEUwAHjV";s:12:"access_token";s:0:"";s:5:"level";s:1:"4";s:4:"name";s:15:"口口碑点餐";s:7:"account";s:0:"";s:8:"original";s:15:"gh_925d4d7e2212";s:9:"signature";s:0:"";s:7:"country";s:0:"";s:8:"province";s:0:"";s:4:"city";s:0:"";s:8:"username";s:0:"";s:8:"password";s:0:"";s:10:"lastupdate";s:1:"0";s:3:"key";s:18:"wxb5f09a820a3a1aaa";s:6:"secret";s:32:"443fd39be19c7da414bf1364fd86e894";s:7:"styleid";s:1:"1";s:12:"jsapi_ticket";s:0:"";s:12:"subscribeurl";s:0:"";s:11:"card_ticket";s:0:"";s:5:"topad";s:0:"";s:6:"footad";s:0:"";s:18:"auth_refresh_token";s:0:"";s:4:"type";s:1:"1";s:9:"isconnect";s:1:"0";s:9:"isdeleted";s:1:"1";s:3:"uid";N;s:9:"starttime";N;s:7:"endtime";N;s:6:"groups";a:1:{i:4;a:6:{s:7:"groupid";s:1:"4";s:7:"uniacid";s:1:"4";s:5:"title";s:15:"默认会员组";s:9:"orderlist";s:1:"0";s:9:"isdefault";s:1:"1";s:6:"credit";s:1:"0";}}s:7:"setting";a:28:{s:7:"uniacid";s:1:"4";s:8:"passport";s:0:"";s:5:"oauth";a:2:{s:7:"account";s:1:"4";s:4:"host";s:0:"";}s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:1:"4";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}s:10:"grouplevel";s:1:"0";s:4:"logo";s:64:"http://www.dianlema.net/attachment/headimg_4.jpg?time=1510821350";s:6:"qrcode";s:63:"http://www.dianlema.net/attachment/qrcode_4.jpg?time=1510821350";}'),
('unisetting:10', 'a:28:{s:7:"uniacid";s:2:"10";s:8:"passport";s:0:"";s:5:"oauth";a:2:{s:4:"host";s:0:"";s:7:"account";s:0:"";}s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:2:"10";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}'),
('uniaccount:10', 'a:36:{s:4:"acid";s:2:"10";s:7:"uniacid";s:2:"10";s:5:"token";s:32:"mu2yy57FLU0Ey9FI6575qa4zoI9yMfuu";s:14:"encodingaeskey";s:43:"zSX72SrqT1R7R12fBZiEBCxcNB1bQ72NQMXqBsz7BT7";s:12:"access_token";s:0:"";s:5:"level";s:1:"1";s:4:"name";s:14:"藤菲Tyuankeo";s:7:"account";s:0:"";s:8:"original";s:0:"";s:9:"signature";s:0:"";s:7:"country";s:0:"";s:8:"province";s:0:"";s:4:"city";s:0:"";s:8:"username";s:0:"";s:8:"password";s:0:"";s:10:"lastupdate";s:1:"0";s:3:"key";s:0:"";s:6:"secret";s:0:"";s:7:"styleid";s:1:"1";s:12:"jsapi_ticket";s:0:"";s:12:"subscribeurl";s:0:"";s:11:"card_ticket";s:0:"";s:5:"topad";s:0:"";s:6:"footad";s:0:"";s:18:"auth_refresh_token";s:0:"";s:4:"type";s:1:"1";s:9:"isconnect";s:1:"0";s:9:"isdeleted";s:1:"1";s:3:"uid";s:2:"13";s:9:"starttime";s:10:"1510198413";s:7:"endtime";s:1:"0";s:6:"groups";a:1:{i:10;a:6:{s:7:"groupid";s:2:"10";s:7:"uniacid";s:2:"10";s:5:"title";s:15:"默认会员组";s:9:"orderlist";s:1:"0";s:9:"isdefault";s:1:"1";s:6:"credit";s:1:"0";}}s:7:"setting";a:28:{s:7:"uniacid";s:2:"10";s:8:"passport";s:0:"";s:5:"oauth";a:2:{s:4:"host";s:0:"";s:7:"account";s:0:"";}s:2:"uc";s:0:"";s:6:"notify";s:0:"";s:11:"creditnames";a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:6:"shenhe";s:0:"";s:15:"default_message";s:0:"";s:9:"shortcuts";s:0:"";s:7:"payment";s:0:"";s:9:"groupdata";s:0:"";s:4:"stat";s:0:"";s:9:"bootstrap";s:0:"";s:7:"menuset";s:0:"";s:12:"default_site";s:2:"10";s:4:"sync";s:1:"0";s:11:"jsauth_acid";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:3:"msg";s:0:"";s:5:"print";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";}s:10:"grouplevel";s:1:"0";s:4:"logo";s:65:"http://www.dianlema.net/attachment/headimg_10.jpg?time=1510821350";s:6:"qrcode";s:64:"http://www.dianlema.net/attachment/qrcode_10.jpg?time=1510821350";}'),
('we7:proxy_wechatpay_account:', 'a:2:{s:7:"service";a:0:{}s:6:"borrow";a:1:{i:6;s:9:"点了码";}}'),
('we7:user_accounts:1', 'a:10:{i:0;a:6:{s:4:"acid";s:1:"5";s:7:"uniacid";s:1:"5";s:3:"key";s:18:"wxb5f09a820a3a1aaa";s:6:"secret";s:32:"443fd39be19c7da414bf1364fd86e894";s:5:"level";s:1:"4";s:4:"name";s:9:"口口碑";}i:1;a:6:{s:4:"acid";s:1:"6";s:7:"uniacid";s:1:"6";s:3:"key";s:18:"wxf906fe71b74173e8";s:6:"secret";s:32:"364d27b352bfe9b27c9ec814e4b074aa";s:5:"level";s:1:"4";s:4:"name";s:9:"点了码";}i:2;a:6:{s:4:"acid";s:1:"7";s:7:"uniacid";s:1:"7";s:3:"key";s:2:"11";s:6:"secret";s:2:"11";s:5:"level";s:1:"1";s:4:"name";s:4:"1111";}i:3;a:6:{s:4:"acid";s:1:"8";s:7:"uniacid";s:1:"8";s:3:"key";s:0:"";s:6:"secret";s:0:"";s:5:"level";s:1:"1";s:4:"name";s:15:"测试公众号";}i:4;a:6:{s:4:"acid";s:1:"9";s:7:"uniacid";s:1:"9";s:3:"key";s:18:"wx77769cf6c77a1ef7";s:6:"secret";s:32:"060ab9eb0106b7238175e96fb796f2ed";s:5:"level";s:1:"1";s:4:"name";s:12:"猿人点餐";}i:5;a:6:{s:4:"acid";s:2:"11";s:7:"uniacid";s:2:"11";s:3:"key";s:18:"wx473f166ad8a8c8cd";s:6:"secret";s:32:"6c4843c5772d14bb8048914d99818a0c";s:5:"level";s:1:"1";s:4:"name";s:10:"青草香1";}i:6;a:6:{s:4:"acid";s:2:"12";s:7:"uniacid";s:2:"12";s:3:"key";s:3:"123";s:6:"secret";s:3:"123";s:5:"level";s:1:"1";s:4:"name";s:21:"一剪梅牛肉火锅";}i:7;a:6:{s:4:"acid";s:2:"13";s:7:"uniacid";s:2:"13";s:3:"key";s:10:"1234567890";s:6:"secret";s:10:"1234567890";s:5:"level";s:1:"1";s:4:"name";s:21:"一刀切牛肉火锅";}i:8;a:6:{s:4:"acid";s:2:"14";s:7:"uniacid";s:2:"14";s:3:"key";s:9:"123457890";s:6:"secret";s:10:"1324567890";s:5:"level";s:1:"1";s:4:"name";s:9:"刀刀刀";}i:9;a:6:{s:4:"acid";s:2:"15";s:7:"uniacid";s:2:"15";s:3:"key";s:0:"";s:6:"secret";s:0:"";s:5:"level";s:1:"1";s:4:"name";s:8:"Tyuankeo";}}'),
('we7:unimodules:6:1', 'a:14:{s:11:"weisrc_dish";a:1:{s:4:"name";s:11:"weisrc_dish";}s:7:"userapi";a:1:{s:4:"name";s:7:"userapi";}s:5:"voice";a:1:{s:4:"name";s:5:"voice";}s:13:"kim_financial";a:1:{s:4:"name";s:13:"kim_financial";}s:8:"recharge";a:1:{s:4:"name";s:8:"recharge";}s:5:"chats";a:1:{s:4:"name";s:5:"chats";}s:5:"basic";a:1:{s:4:"name";s:5:"basic";}s:6:"custom";a:1:{s:4:"name";s:6:"custom";}s:6:"wxcard";a:1:{s:4:"name";s:6:"wxcard";}s:4:"news";a:1:{s:4:"name";s:4:"news";}s:6:"images";a:1:{s:4:"name";s:6:"images";}s:10:"we7_coupon";a:1:{s:4:"name";s:10:"we7_coupon";}s:5:"music";a:1:{s:4:"name";s:5:"music";}s:5:"video";a:1:{s:4:"name";s:5:"video";}}'),
('we7:memberinfo:44', 'a:53:{s:3:"uid";s:2:"44";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"0f5af1fb0720701381c692a42007c3f7@weizancms.com";s:8:"password";s:32:"104c632907f2ba28883ca6cc4c5a4808";s:4:"salt";s:8:"voWtzb75";s:7:"groupid";s:1:"6";s:7:"credit1";d:2;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1510555176";s:8:"realname";s:0:"";s:8:"nickname";s:9:"点了码";s:6:"avatar";s:130:"http://wx.qlogo.cn/mmopen/yicNtvz6vYyrG7XGOd56BRZomWXYxaOuH3FIKXBYM1wabHq4DicUEEe5Jic1qGfJrMyDvLqTjKG3E2rEP9KhqWVTE5ZwNnias9AK/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:17', 'a:53:{s:3:"uid";s:2:"17";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"f4c595d1b4217d7a027720efbe5c40b6@weizancms.com";s:8:"password";s:32:"32dfe08b4bff77d43d824d890ba11538";s:4:"salt";s:8:"CtnneNf1";s:7:"groupid";s:1:"6";s:7:"credit1";d:18;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1509100104";s:8:"realname";s:0:"";s:8:"nickname";s:7:"Wind。";s:6:"avatar";s:132:"http://wx.qlogo.cn/mmopen/qGusKyb0IEcL2n2e19GVh9GtFhALbYju80CeoIE0ib1ezxNfC8DohibhMfibIWzsARsOPJjg2ibhOP0wOZicMdOxXu7rYRHGRziaAf/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"1";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:6:"挪威";s:14:"resideprovince";s:3:"省";s:10:"residecity";s:3:"市";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}');
INSERT INTO `ims_core_cache` (`key`, `value`) VALUES
('we7:memberinfo:33', 'a:53:{s:3:"uid";s:2:"33";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"73f8b90b9686fd075929e90a9233f7d8@weizancms.com";s:8:"password";s:32:"5ec239465cbf143f538adb3d3ee15402";s:4:"salt";s:8:"YMoZMjLN";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1510042232";s:8:"realname";s:0:"";s:8:"nickname";s:6:"SOWHAT";s:6:"avatar";s:130:"http://wx.qlogo.cn/mmopen/yicNtvz6vYyrv4uGjgST1zaqSc5gpgzLW4ZB587wD5bCvGSHNMPnaNF4iaoEBOiawBqJX4GZzDAoCv44YIfpTQfibcS95DjY5kOS/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:40', 'a:53:{s:3:"uid";s:2:"40";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"227467facb17c8da3d1808dc8f64d0ff@weizancms.com";s:8:"password";s:32:"ab18a2e32ce5887d2d1dc2babcb326f7";s:4:"salt";s:8:"pn9nBPq5";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1510302235";s:8:"realname";s:0:"";s:8:"nickname";s:0:"";s:6:"avatar";s:131:"http://wx.qlogo.cn/mmopen/YSBzp7uZPb2LUF9mB1BQZwn9ibbhwLFedtPtkbLwnIJovdsj6RyibPbWicUdmtSaTSpwJDBKbrC4mRBH7iaFCF8AFrVEjaAgViblV/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:27', 'a:53:{s:3:"uid";s:2:"27";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"2a304972906c79107a8986a6464c2a5f@weizancms.com";s:8:"password";s:32:"9176b4b0258abdbc1bebf96da325b1cf";s:4:"salt";s:8:"xk8WLYq5";s:7:"groupid";s:1:"6";s:7:"credit1";d:10;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1509935387";s:8:"realname";s:0:"";s:8:"nickname";s:15:"链家。聂平";s:6:"avatar";s:121:"http://wx.qlogo.cn/mmopen/PiajxSqBRaEJ0WDPkUEbtiaHFcO0gMRibI0cGutTIibjRlOo2HibGCCMbBPH7MOtuT2OK1AN0VczjFelAqg3N5q2rIQ/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:user_modules:8', 'a:13:{i:0;s:11:"weisrc_dish";i:1;s:10:"we7_coupon";i:2;s:6:"wxcard";i:3;s:5:"chats";i:4;s:5:"voice";i:5;s:5:"video";i:6;s:6:"images";i:7;s:6:"custom";i:8;s:8:"recharge";i:9;s:7:"userapi";i:10;s:5:"music";i:11;s:4:"news";i:12;s:5:"basic";}'),
('we7:unimodules:7:', 'a:13:{s:11:"weisrc_dish";a:1:{s:4:"name";s:11:"weisrc_dish";}s:7:"userapi";a:1:{s:4:"name";s:7:"userapi";}s:5:"voice";a:1:{s:4:"name";s:5:"voice";}s:8:"recharge";a:1:{s:4:"name";s:8:"recharge";}s:5:"chats";a:1:{s:4:"name";s:5:"chats";}s:5:"basic";a:1:{s:4:"name";s:5:"basic";}s:6:"custom";a:1:{s:4:"name";s:6:"custom";}s:6:"wxcard";a:1:{s:4:"name";s:6:"wxcard";}s:4:"news";a:1:{s:4:"name";s:4:"news";}s:6:"images";a:1:{s:4:"name";s:6:"images";}s:10:"we7_coupon";a:1:{s:4:"name";s:10:"we7_coupon";}s:5:"music";a:1:{s:4:"name";s:5:"music";}s:5:"video";a:1:{s:4:"name";s:5:"video";}}'),
('we7:unimodules::', 'a:14:{s:11:"weisrc_dish";a:1:{s:4:"name";s:11:"weisrc_dish";}s:7:"userapi";a:1:{s:4:"name";s:7:"userapi";}s:5:"voice";a:1:{s:4:"name";s:5:"voice";}s:13:"kim_financial";a:1:{s:4:"name";s:13:"kim_financial";}s:8:"recharge";a:1:{s:4:"name";s:8:"recharge";}s:5:"chats";a:1:{s:4:"name";s:5:"chats";}s:5:"basic";a:1:{s:4:"name";s:5:"basic";}s:6:"custom";a:1:{s:4:"name";s:6:"custom";}s:6:"wxcard";a:1:{s:4:"name";s:6:"wxcard";}s:4:"news";a:1:{s:4:"name";s:4:"news";}s:6:"images";a:1:{s:4:"name";s:6:"images";}s:10:"we7_coupon";a:1:{s:4:"name";s:10:"we7_coupon";}s:5:"music";a:1:{s:4:"name";s:5:"music";}s:5:"video";a:1:{s:4:"name";s:5:"video";}}'),
('we7:6:keyword:202cb962ac59075b964b07152d234b70', 'a:2:{s:4:"data";a:1:{i:0;a:6:{s:7:"message";a:13:{s:10:"tousername";s:15:"gh_fbed32f1f289";s:12:"fromusername";s:28:"oSRY005yh2cXkbIoumh2yvD4rc3Y";s:10:"createtime";s:10:"1510826122";s:7:"msgtype";s:4:"text";s:7:"content";s:3:"123";s:5:"msgid";s:19:"6488948784363407622";s:4:"from";s:28:"oSRY005yh2cXkbIoumh2yvD4rc3Y";s:2:"to";s:15:"gh_fbed32f1f289";s:4:"time";s:10:"1510826122";s:4:"type";s:4:"text";s:5:"event";N;s:11:"redirection";b:0;s:6:"source";N;}s:6:"module";s:5:"reply";s:4:"rule";s:1:"9";s:8:"priority";s:1:"0";s:7:"keyword";a:9:{s:2:"id";s:2:"13";s:3:"rid";s:1:"9";s:7:"uniacid";s:1:"6";s:6:"module";s:5:"reply";s:7:"content";s:3:"123";s:4:"type";s:1:"1";s:12:"displayorder";s:1:"0";s:6:"status";s:1:"1";s:10:"reply_type";a:1:{i:0;s:5:"basic";}}s:10:"reply_type";a:1:{i:0;s:5:"basic";}}}s:6:"expire";i:1510826422;}'),
('we7:6:keyword:59c5cfbca09a8f39765bc693fc8392a3', 'a:2:{s:4:"data";a:1:{i:0;a:6:{s:7:"message";a:13:{s:10:"tousername";s:15:"gh_fbed32f1f289";s:12:"fromusername";s:28:"oSRY00ymxuQQkyt71joCQe5uH1WQ";s:10:"createtime";s:10:"1510826230";s:7:"msgtype";s:4:"text";s:7:"content";s:9:"在吗？";s:5:"msgid";s:19:"6488949248219875638";s:4:"from";s:28:"oSRY00ymxuQQkyt71joCQe5uH1WQ";s:2:"to";s:15:"gh_fbed32f1f289";s:4:"time";s:10:"1510826230";s:4:"type";s:4:"text";s:5:"event";N;s:11:"redirection";b:0;s:6:"source";N;}s:6:"module";s:5:"reply";s:4:"rule";s:2:"10";s:8:"priority";s:1:"0";s:7:"keyword";a:9:{s:2:"id";s:2:"14";s:3:"rid";s:2:"10";s:7:"uniacid";s:1:"6";s:6:"module";s:5:"reply";s:7:"content";s:9:"在吗？";s:4:"type";s:1:"1";s:12:"displayorder";s:1:"0";s:6:"status";s:1:"1";s:10:"reply_type";a:1:{i:0;s:5:"basic";}}s:10:"reply_type";a:1:{i:0;s:5:"basic";}}}s:6:"expire";i:1510826530;}'),
('we7:6:keyword:cdb1bf9aef28779d5b3bc44786c8b03d', 'a:2:{s:4:"data";a:1:{i:0;a:6:{s:7:"message";a:13:{s:10:"tousername";s:15:"gh_fbed32f1f289";s:12:"fromusername";s:28:"oSRY00ymxuQQkyt71joCQe5uH1WQ";s:10:"createtime";s:10:"1510826296";s:7:"msgtype";s:4:"text";s:7:"content";s:6:"在吗";s:5:"msgid";s:19:"6488949531687717191";s:4:"from";s:28:"oSRY00ymxuQQkyt71joCQe5uH1WQ";s:2:"to";s:15:"gh_fbed32f1f289";s:4:"time";s:10:"1510826296";s:4:"type";s:4:"text";s:5:"event";N;s:11:"redirection";b:0;s:6:"source";N;}s:6:"module";s:5:"reply";s:4:"rule";s:2:"10";s:8:"priority";s:1:"0";s:7:"keyword";a:9:{s:2:"id";s:2:"15";s:3:"rid";s:2:"10";s:7:"uniacid";s:1:"6";s:6:"module";s:5:"reply";s:7:"content";s:6:"在吗";s:4:"type";s:1:"2";s:12:"displayorder";s:1:"0";s:6:"status";s:1:"1";s:10:"reply_type";a:1:{i:0;s:5:"basic";}}s:10:"reply_type";a:1:{i:0;s:5:"basic";}}}s:6:"expire";i:1510826596;}'),
('we7:6:keyword:4d2b08731b19443be49d8e4cebe6b0c2', 'a:2:{s:4:"data";a:1:{i:0;a:6:{s:7:"message";a:13:{s:10:"tousername";s:15:"gh_fbed32f1f289";s:12:"fromusername";s:28:"oSRY00ymxuQQkyt71joCQe5uH1WQ";s:10:"createtime";s:10:"1510826311";s:7:"msgtype";s:4:"text";s:7:"content";s:21:"在吗？？啊？哈";s:5:"msgid";s:19:"6488949596112226639";s:4:"from";s:28:"oSRY00ymxuQQkyt71joCQe5uH1WQ";s:2:"to";s:15:"gh_fbed32f1f289";s:4:"time";s:10:"1510826311";s:4:"type";s:4:"text";s:5:"event";N;s:11:"redirection";b:0;s:6:"source";N;}s:6:"module";s:5:"reply";s:4:"rule";s:2:"10";s:8:"priority";s:1:"0";s:7:"keyword";a:9:{s:2:"id";s:2:"15";s:3:"rid";s:2:"10";s:7:"uniacid";s:1:"6";s:6:"module";s:5:"reply";s:7:"content";s:6:"在吗";s:4:"type";s:1:"2";s:12:"displayorder";s:1:"0";s:6:"status";s:1:"1";s:10:"reply_type";a:1:{i:0;s:5:"basic";}}s:10:"reply_type";a:1:{i:0;s:5:"basic";}}}s:6:"expire";i:1510826611;}'),
('we7:6:keyword:5929022267304041492d140a9b4f0b31', 'a:2:{s:4:"data";a:1:{i:0;a:6:{s:7:"message";a:13:{s:10:"tousername";s:15:"gh_fbed32f1f289";s:12:"fromusername";s:28:"oSRY00ymxuQQkyt71joCQe5uH1WQ";s:10:"createtime";s:10:"1510826318";s:7:"msgtype";s:4:"text";s:7:"content";s:9:"你在吗";s:5:"msgid";s:19:"6488949626176997714";s:4:"from";s:28:"oSRY00ymxuQQkyt71joCQe5uH1WQ";s:2:"to";s:15:"gh_fbed32f1f289";s:4:"time";s:10:"1510826318";s:4:"type";s:4:"text";s:5:"event";N;s:11:"redirection";b:0;s:6:"source";N;}s:6:"module";s:5:"reply";s:4:"rule";s:2:"10";s:8:"priority";s:1:"0";s:7:"keyword";a:9:{s:2:"id";s:2:"15";s:3:"rid";s:2:"10";s:7:"uniacid";s:1:"6";s:6:"module";s:5:"reply";s:7:"content";s:6:"在吗";s:4:"type";s:1:"2";s:12:"displayorder";s:1:"0";s:6:"status";s:1:"1";s:10:"reply_type";a:1:{i:0;s:5:"basic";}}s:10:"reply_type";a:1:{i:0;s:5:"basic";}}}s:6:"expire";i:1510826618;}'),
('we7:6:keyword:bd1480d5bf12987fed841162d6f6842a', 'a:2:{s:4:"data";a:1:{i:0;a:6:{s:7:"message";a:13:{s:10:"tousername";s:15:"gh_fbed32f1f289";s:12:"fromusername";s:28:"oSRY00ymxuQQkyt71joCQe5uH1WQ";s:10:"createtime";s:10:"1510826339";s:7:"msgtype";s:4:"text";s:7:"content";s:126:"在路的傻子，吗我们现在哪个月的不是你们现在哪个月的不是在吗你不要去你不要去你不要去你";s:5:"msgid";s:19:"6488949716371310937";s:4:"from";s:28:"oSRY00ymxuQQkyt71joCQe5uH1WQ";s:2:"to";s:15:"gh_fbed32f1f289";s:4:"time";s:10:"1510826339";s:4:"type";s:4:"text";s:5:"event";N;s:11:"redirection";b:0;s:6:"source";N;}s:6:"module";s:5:"reply";s:4:"rule";s:2:"10";s:8:"priority";s:1:"0";s:7:"keyword";a:9:{s:2:"id";s:2:"15";s:3:"rid";s:2:"10";s:7:"uniacid";s:1:"6";s:6:"module";s:5:"reply";s:7:"content";s:6:"在吗";s:4:"type";s:1:"2";s:12:"displayorder";s:1:"0";s:6:"status";s:1:"1";s:10:"reply_type";a:1:{i:0;s:5:"basic";}}s:10:"reply_type";a:1:{i:0;s:5:"basic";}}}s:6:"expire";i:1510826640;}'),
('stat:todaylock:7', 'a:1:{s:6:"expire";i:1511256232;}'),
('unicount:7', 's:1:"1";'),
('we7:unimodules:7:1', 'a:13:{s:11:"weisrc_dish";a:1:{s:4:"name";s:11:"weisrc_dish";}s:7:"userapi";a:1:{s:4:"name";s:7:"userapi";}s:5:"voice";a:1:{s:4:"name";s:5:"voice";}s:8:"recharge";a:1:{s:4:"name";s:8:"recharge";}s:5:"chats";a:1:{s:4:"name";s:5:"chats";}s:5:"basic";a:1:{s:4:"name";s:5:"basic";}s:6:"custom";a:1:{s:4:"name";s:6:"custom";}s:6:"wxcard";a:1:{s:4:"name";s:6:"wxcard";}s:4:"news";a:1:{s:4:"name";s:4:"news";}s:6:"images";a:1:{s:4:"name";s:6:"images";}s:10:"we7_coupon";a:1:{s:4:"name";s:10:"we7_coupon";}s:5:"music";a:1:{s:4:"name";s:5:"music";}s:5:"video";a:1:{s:4:"name";s:5:"video";}}'),
('we7:lastaccount:Rzd3n', 'a:1:{s:7:"account";i:7;}'),
('we7:user_modules:13', 'a:13:{i:0;s:11:"weisrc_dish";i:1;s:10:"we7_coupon";i:2;s:6:"wxcard";i:3;s:5:"chats";i:4;s:5:"voice";i:5;s:5:"video";i:6;s:6:"images";i:7;s:6:"custom";i:8;s:8:"recharge";i:9;s:7:"userapi";i:10;s:5:"music";i:11;s:4:"news";i:12;s:5:"basic";}'),
('we7:unimodules:15:', 'a:13:{s:5:"video";a:1:{s:4:"name";s:5:"video";}s:11:"weisrc_dish";a:1:{s:4:"name";s:11:"weisrc_dish";}s:7:"userapi";a:1:{s:4:"name";s:7:"userapi";}s:5:"voice";a:1:{s:4:"name";s:5:"voice";}s:8:"recharge";a:1:{s:4:"name";s:8:"recharge";}s:5:"chats";a:1:{s:4:"name";s:5:"chats";}s:5:"basic";a:1:{s:4:"name";s:5:"basic";}s:6:"custom";a:1:{s:4:"name";s:6:"custom";}s:6:"wxcard";a:1:{s:4:"name";s:6:"wxcard";}s:4:"news";a:1:{s:4:"name";s:4:"news";}s:6:"images";a:1:{s:4:"name";s:6:"images";}s:10:"we7_coupon";a:1:{s:4:"name";s:10:"we7_coupon";}s:5:"music";a:1:{s:4:"name";s:5:"music";}}'),
('we7:lastaccount:B9d2m', 'a:1:{s:7:"account";i:6;}'),
('we7:lastaccount:N33D2', 'a:1:{s:7:"account";i:7;}'),
('we7:memberinfo:48', 'a:53:{s:3:"uid";s:2:"48";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"faa6203dc567c0cbebb25719f4fce373@weizancms.com";s:8:"password";s:32:"f95f6166ed20277120220b9fe8d3390d";s:4:"salt";s:8:"m0i7E8zZ";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1510971513";s:8:"realname";s:0:"";s:8:"nickname";s:3:"沐";s:6:"avatar";s:130:"http://wx.qlogo.cn/mmopen/qGusKyb0IEezhuyjRkgtxQrCdfnAjibEAJlOXJbO5PdZjCFoV8GjCkWGvZJupjS7yBiaibQs7eEzWzRNHt1PsBRiblwm8mftcYOv/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:32', 'a:53:{s:3:"uid";s:2:"32";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"4bedb64177c5daa3349793821ce28f01@weizancms.com";s:8:"password";s:32:"32dfe08b4bff77d43d824d890ba11538";s:4:"salt";s:8:"L5gGgY93";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1509967416";s:8:"realname";s:0:"";s:8:"nickname";s:4:"liam";s:6:"avatar";s:130:"http://wx.qlogo.cn/mmopen/YSBzp7uZPb2LUF9mB1BQZ7xvnITlK9TNBZoRSCxyflPY7FwRTvCqDnfibmZl6GUUB3ia40ONa9k25kDtZG2WFqhribibC8zxUxmI/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"1";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:6:"中国";s:14:"resideprovince";s:9:"福建省";s:10:"residecity";s:9:"厦门市";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:46', 'a:53:{s:3:"uid";s:2:"46";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"fb1f609a6420653022469c13e982f760@weizancms.com";s:8:"password";s:32:"7db996749b3963014f2b1effbe7140c1";s:4:"salt";s:8:"Y6Glj36K";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1510653256";s:8:"realname";s:0:"";s:8:"nickname";s:6:"Steven";s:6:"avatar";s:128:"http://wx.qlogo.cn/mmopen/eHiaJB7Wb9AKezkEs2lCv7g2AA0MOf7SlOkCIL8u3GYtHyfRwEzanq1UEq62WBmKqXW88o6nN7d8U8BQLhIcEOTDV9AATuHLib/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:26', 'a:53:{s:3:"uid";s:2:"26";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"690aa9546287ff0df37fe27c9aeca942@weizancms.com";s:8:"password";s:32:"a377559526278b9b4bdeee022fa52a74";s:4:"salt";s:8:"A88xR88z";s:7:"groupid";s:1:"6";s:7:"credit1";d:10;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1509935387";s:8:"realname";s:0:"";s:8:"nickname";s:9:"卞晨龙";s:6:"avatar";s:121:"http://wx.qlogo.cn/mmopen/PiajxSqBRaEJT4gq0QN4zTEdek9usR2DFov9ibrP3ANicAYMuzUQlpQ1wFEHpyXffmDKKRzEKyIbic3NEEkpUicWjDA/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:39', 'a:53:{s:3:"uid";s:2:"39";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"39f0e6c13b9b796350a3473768a0bf3f@weizancms.com";s:8:"password";s:32:"86912d1484e93cb591db4f26133bcdc4";s:4:"salt";s:8:"fcRz711C";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1510297865";s:8:"realname";s:0:"";s:8:"nickname";s:12:"帅逼小新";s:6:"avatar";s:128:"http://wx.qlogo.cn/mmopen/yicNtvz6vYyoA5fNPEyia5EbY15vEN0IbxrY4lpsaA1cWBTNVPXmWjEIkpy2IvhW1QOqHs56Bq8e5ABPDW1BBLLMcdK8tQnyEF/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:37', 'a:53:{s:3:"uid";s:2:"37";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"6e5f506b7486b16e53ee40ccbcf7cbd6@weizancms.com";s:8:"password";s:32:"39601e284da2606fec4096c7cac8af8e";s:4:"salt";s:8:"e79zIxar";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1510211892";s:8:"realname";s:0:"";s:8:"nickname";s:7:"Kingsen";s:6:"avatar";s:131:"http://wx.qlogo.cn/mmopen/qGusKyb0IEezhuyjRkgtxeAdeL6AbIKiazAFCibt2vvVvA6ibzhicDdLG6YcjmkdOQ6cdPN5icKwwwTdZDMoppD4kKZJNhBZdnvyS/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:35', 'a:53:{s:3:"uid";s:2:"35";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"67ec7ca4acc25cf926808a4b68a4be70@weizancms.com";s:8:"password";s:32:"6955f0e20f76664aff6897316ceadf6c";s:4:"salt";s:8:"pi9az2Ny";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1510123177";s:8:"realname";s:0:"";s:8:"nickname";s:12:"舞～夜殇";s:6:"avatar";s:133:"http://wx.qlogo.cn/mmopen/yicNtvz6vYyq9ek3icYEFHRJZSnoibwyhxXgxwPHT7P438GldP5W1bckzs9hhniaichIHT8CIDlKicCkmpMCAs9uIhIa9ibkzLuabBw/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:20', 'a:53:{s:3:"uid";s:2:"20";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"2ff2757169a3a97aa96c32c737552cc2@weizancms.com";s:8:"password";s:32:"6da8d49fee0ba8ed5ae02082b6cbf8c9";s:4:"salt";s:8:"qsO85of7";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1509122274";s:8:"realname";s:0:"";s:8:"nickname";s:12:"糖醋排骨";s:6:"avatar";s:129:"http://wx.qlogo.cn/mmopen/YSBzp7uZPb2rBGRWKm2FjSJTDDgO275WM0cHlGHtGQvFaHfiaQgaRzIUYhTA4msdMPicTfFadxlKdRI9eWjEzwORoq5pt8IPibB/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:19', 'a:53:{s:3:"uid";s:2:"19";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"2c5ee2d0893335e6b986ca2e1d58ed4c@weizancms.com";s:8:"password";s:32:"b7c9a060a0c78392fb2667bb413e6238";s:4:"salt";s:8:"sBaA7IF7";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1509118360";s:8:"realname";s:0:"";s:8:"nickname";s:9:"孙佳宏";s:6:"avatar";s:133:"http://wx.qlogo.cn/mmopen/YSBzp7uZPb2LUF9mB1BQZ0icoX0IJfDNtoy9d9iaZUdfPEO4FMOkVibc8jMXYib7YqIpYnWtdOicALuJ4zByialbP6icvw38hOavswk/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:15', 'a:53:{s:3:"uid";s:2:"15";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"184609233cf633b25f267f4c44b31a23@weizancms.com";s:8:"password";s:32:"d2dbe47233ca1449660ca27a58b7769d";s:4:"salt";s:8:"iS4bYjzJ";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1509085930";s:8:"realname";s:0:"";s:8:"nickname";s:6:"帝一";s:6:"avatar";s:120:"http://wx.qlogo.cn/mmopen/qGusKyb0IEc5IkWXGCrrxhdnEEPUJWpL0ibtAMsFia4DGJkCIC3lHpY9vG6eB4siakVsKc6uolyLqOmCan9iaqcr1w/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:34', 'a:53:{s:3:"uid";s:2:"34";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"5fa647335e92c4a4d95e61e04d66f295@weizancms.com";s:8:"password";s:32:"752b98a50af5c68a3ba06e60a57a8fde";s:4:"salt";s:8:"WxtGiRUF";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1510110111";s:8:"realname";s:0:"";s:8:"nickname";s:16:"谢恒彦·Vicky";s:6:"avatar";s:127:"http://wx.qlogo.cn/mmopen/YSBzp7uZPb2LUF9mB1BQZyrsrmIsQkLg97plNSXeE2Yojcq8fpohEdhXz1HQCpnDJnzksXO4IhBqmD6zfWiarTMBDetbDuZZF/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:31', 'a:53:{s:3:"uid";s:2:"31";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"6b9c551334dc72fe73a525ebed86d746@weizancms.com";s:8:"password";s:32:"5d600d841ae2938d74692c1c8e5eac6a";s:4:"salt";s:8:"R5pQ2rlo";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1509954473";s:8:"realname";s:0:"";s:8:"nickname";s:9:"朱肖芳";s:6:"avatar";s:129:"http://wx.qlogo.cn/mmopen/eHiaJB7Wb9AI4KP0Nq3icDtx9Gndh7Z4HRicBhBHfGQjyh2bSdcB9mCl7Mwt3uxQ9KMYN18HJOoZOq8Wtk8ZabXrA79ozjSsIYK/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:30', 'a:53:{s:3:"uid";s:2:"30";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"806ba26a723e034be46ebe7378e63b6f@weizancms.com";s:8:"password";s:32:"7668d14c96402644900e2549ca1be7df";s:4:"salt";s:8:"GaCP4AI4";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1509953900";s:8:"realname";s:0:"";s:8:"nickname";s:27:"专注互联网～江伟斌";s:6:"avatar";s:121:"http://wx.qlogo.cn/mmopen/yicNtvz6vYyqMcRT0EqcuOic19ZNmjy3PLNTcNneIVDAKOvibBoVgwfXTcmibTb2jIft0f4ZEVOebe5DC2iaZrt2lRQ/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:29', 'a:53:{s:3:"uid";s:2:"29";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"12c48d223938098f4a8901214c3947ae@weizancms.com";s:8:"password";s:32:"9f80df1c13e9a65c3b287daef2308fd3";s:4:"salt";s:8:"O0h2aN0U";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1509953526";s:8:"realname";s:0:"";s:8:"nickname";s:14:"Raven李马剑";s:6:"avatar";s:121:"http://wx.qlogo.cn/mmopen/eHiaJB7Wb9AIic9OAuRpGN9ZkHHdKrclRG84HZibZAvspV8GDUC7Yz0tNumqda6gAThlicfJXJKgEdersU7eKUVibLw/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:25', 'a:53:{s:3:"uid";s:2:"25";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"f51469f2514a0c5fee99adbcd5383355@weizancms.com";s:8:"password";s:32:"ec95abe5605094dde2794c245569adae";s:4:"salt";s:8:"obht97ut";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1509503412";s:8:"realname";s:0:"";s:8:"nickname";s:10:"Nephila。";s:6:"avatar";s:127:"http://wx.qlogo.cn/mmopen/YSBzp7uZPb06XD6M4cESmhp7OA3pyYnBeUUBZmpz7aV6BcbI46hlqWFtrD0EvfY1ulez67byYf9ibDIzILt5VnIIqyMquu45Q/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:22', 'a:53:{s:3:"uid";s:2:"22";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"d59322c39daaf3e974d27268ddbac241@weizancms.com";s:8:"password";s:32:"c2b174a3b76b49bdb9f6f08e25d67635";s:4:"salt";s:8:"wqQQaql9";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1509273621";s:8:"realname";s:0:"";s:8:"nickname";s:21:"UsaHero®郭文杰™";s:6:"avatar";s:121:"http://wx.qlogo.cn/mmopen/yicNtvz6vYyoY9yCfGHtznUse9icBOojlz4k3orcaFNxhgktbM5o3ng90sX0ZRJpefGdibAHTbiaCv01hTph1Iibt8A/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:lastaccount:Ok40k', 'a:1:{s:7:"account";i:6;}'),
('we7:lastaccount:bUAeG', 'a:1:{s:7:"account";i:6;}');
INSERT INTO `ims_core_cache` (`key`, `value`) VALUES
('system_frame', 'a:6:{s:6:"system";a:6:{s:5:"title";s:12:"系统管理";s:4:"icon";s:13:"wi wi-setting";s:3:"url";s:39:"./index.php?c=home&a=welcome&do=system&";s:7:"section";a:7:{s:10:"wxplatform";a:2:{s:5:"title";s:9:"公众号";s:4:"menu";a:6:{s:14:"system_account";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:16:" 微信公众号";s:3:"url";s:45:"./index.php?c=account&a=manage&account_type=1";s:15:"permission_name";s:14:"system_account";s:4:"icon";s:12:"wi wi-wechat";s:12:"displayorder";i:6;s:2:"id";N;s:14:"sub_permission";a:6:{i:0;a:2:{s:5:"title";s:21:"公众号管理设置";s:15:"permission_name";s:21:"system_account_manage";}i:1;a:2:{s:5:"title";s:15:"添加公众号";s:15:"permission_name";s:19:"system_account_post";}i:2;a:2:{s:5:"title";s:15:"公众号停用";s:15:"permission_name";s:19:"system_account_stop";}i:3;a:2:{s:5:"title";s:18:"公众号回收站";s:15:"permission_name";s:22:"system_account_recycle";}i:4;a:2:{s:5:"title";s:15:"公众号删除";s:15:"permission_name";s:21:"system_account_delete";}i:5;a:2:{s:5:"title";s:15:"公众号恢复";s:15:"permission_name";s:22:"system_account_recover";}}}s:16:"extension_module";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"公众号模块";s:3:"url";s:47:"./index.php?c=extension&a=module&account_type=1";s:15:"permission_name";s:16:"extension_module";s:4:"icon";s:14:"wi wi-wx-apply";s:12:"displayorder";i:5;s:2:"id";N;s:14:"sub_permission";N;}s:15:"system_template";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:15:"微官网模板";s:3:"url";s:32:"./index.php?c=system&a=template&";s:15:"permission_name";s:15:"system_template";s:4:"icon";s:17:"wi wi-wx-template";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";N;}s:15:"system_platform";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:19:" 微信开放平台";s:3:"url";s:32:"./index.php?c=system&a=platform&";s:15:"permission_name";s:15:"system_platform";s:4:"icon";s:20:"wi wi-exploitsetting";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:26:"system_subscribe_subscribe";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:18:"模块订阅管理";s:3:"url";s:46:"./index.php?c=system&a=subscribe&do=subscribe&";s:15:"permission_name";s:26:"system_subscribe_subscribe";s:4:"icon";s:20:"wi wi-exploitsetting";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:22:"system_service_display";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:15:"常用服务API";s:3:"url";s:42:"./index.php?c=system&a=service&do=display&";s:15:"permission_name";s:22:"system_service_display";s:4:"icon";s:20:"wi wi-exploitsetting";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:6:"module";a:2:{s:5:"title";s:9:"小程序";s:4:"menu";a:2:{s:12:"system_wxapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:15:"微信小程序";s:3:"url";s:45:"./index.php?c=account&a=manage&account_type=4";s:15:"permission_name";s:12:"system_wxapp";s:4:"icon";s:11:"wi wi-wxapp";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";a:6:{i:0;a:2:{s:5:"title";s:21:"小程序管理设置";s:15:"permission_name";s:19:"system_wxapp_manage";}i:1;a:2:{s:5:"title";s:15:"添加小程序";s:15:"permission_name";s:17:"system_wxapp_post";}i:2;a:2:{s:5:"title";s:15:"小程序停用";s:15:"permission_name";s:17:"system_wxapp_stop";}i:3;a:2:{s:5:"title";s:18:"小程序回收站";s:15:"permission_name";s:20:"system_wxapp_recycle";}i:4;a:2:{s:5:"title";s:15:"小程序删除";s:15:"permission_name";s:19:"system_wxapp_delete";}i:5;a:2:{s:5:"title";s:15:"小程序恢复";s:15:"permission_name";s:20:"system_wxapp_recover";}}}s:19:"system_module_wxapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:15:"小程序应用";s:3:"url";s:51:"./index.php?c=module&a=manage-system&account_type=4";s:15:"permission_name";s:19:"system_module_wxapp";s:4:"icon";s:17:"wi wi-wxapp-apply";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:4:"shop";a:2:{s:5:"title";s:12:"应用商店";s:4:"menu";a:5:{s:18:"system_shop_module";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"应用管理";s:3:"url";s:28:"./index.php?c=shop&a=module&";s:15:"permission_name";s:18:"system_shop_module";s:4:"icon";s:11:"wi wi-wxapp";s:12:"displayorder";i:5;s:2:"id";N;s:14:"sub_permission";N;}s:25:"system_shop_member_record";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"消费记录";s:3:"url";s:38:"./index.php?c=shop&a=member&do=record&";s:15:"permission_name";s:25:"system_shop_member_record";s:4:"icon";s:17:"wi wi-wxapp-apply";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";N;}s:27:"system_shop_member_chongzhi";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"充值记录";s:3:"url";s:40:"./index.php?c=shop&a=member&do=chongzhi&";s:15:"permission_name";s:27:"system_shop_member_chongzhi";s:4:"icon";s:17:"wi wi-wxapp-apply";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:26:"system_shop_mpayset_payset";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"支付设置";s:3:"url";s:39:"./index.php?c=shop&a=mpayset&do=payset&";s:15:"permission_name";s:26:"system_shop_mpayset_payset";s:4:"icon";s:17:"wi wi-wxapp-apply";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:18:"system_shop_taocan";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"套餐绑定";s:3:"url";s:28:"./index.php?c=shop&a=taocan&";s:15:"permission_name";s:18:"system_shop_taocan";s:4:"icon";s:17:"wi wi-wxapp-apply";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:4:"user";a:2:{s:5:"title";s:13:"帐户/用户";s:4:"menu";a:4:{s:9:"system_my";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"我的帐户";s:3:"url";s:29:"./index.php?c=user&a=profile&";s:15:"permission_name";s:9:"system_my";s:4:"icon";s:10:"wi wi-user";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:11:"system_user";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"用户管理";s:3:"url";s:29:"./index.php?c=user&a=display&";s:15:"permission_name";s:11:"system_user";s:4:"icon";s:16:"wi wi-user-group";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";a:6:{i:0;a:2:{s:5:"title";s:12:"编辑用户";s:15:"permission_name";s:16:"system_user_post";}i:1;a:2:{s:5:"title";s:12:"审核用户";s:15:"permission_name";s:17:"system_user_check";}i:2;a:2:{s:5:"title";s:15:"用户回收站";s:15:"permission_name";s:19:"system_user_recycle";}i:3;a:2:{s:5:"title";s:18:"用户属性设置";s:15:"permission_name";s:18:"system_user_fields";}i:4;a:2:{s:5:"title";s:31:"用户属性设置-编辑字段";s:15:"permission_name";s:23:"system_user_fields_post";}i:5;a:2:{s:5:"title";s:18:"用户注册设置";s:15:"permission_name";s:23:"system_user_registerset";}}}s:15:"system_ymmanage";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"用户域名";s:3:"url";s:30:"./index.php?c=user&a=ymmanage&";s:15:"permission_name";s:15:"system_ymmanage";s:4:"icon";s:16:"wi wi-user-group";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}i:11;a:9:{s:9:"is_system";s:1:"0";s:10:"is_display";s:1:"1";s:5:"title";s:12:"广告管理";s:3:"url";s:83:"http://www.dianlema.net/web/index.php?c=site&a=entry&op=display&do=ad&m=weisrc_dish";s:15:"permission_name";s:2:"11";s:4:"icon";s:16:"wi wi-appsetting";s:12:"displayorder";i:0;s:2:"id";s:2:"36";s:14:"sub_permission";N;}}}s:10:"permission";a:2:{s:5:"title";s:12:"权限管理";s:4:"menu";a:2:{s:19:"system_module_group";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"1";s:5:"title";s:15:"应用权限组";s:3:"url";s:29:"./index.php?c=module&a=group&";s:15:"permission_name";s:19:"system_module_group";s:4:"icon";s:21:"wi wi-appjurisdiction";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";a:3:{i:0;a:2:{s:5:"title";s:21:"添加应用权限组";s:15:"permission_name";s:23:"system_module_group_add";}i:1;a:2:{s:5:"title";s:21:"编辑应用权限组";s:15:"permission_name";s:24:"system_module_group_post";}i:2;a:2:{s:5:"title";s:21:"删除应用权限组";s:15:"permission_name";s:23:"system_module_group_del";}}}s:17:"system_user_group";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"1";s:5:"title";s:15:"用户权限组";s:3:"url";s:27:"./index.php?c=user&a=group&";s:15:"permission_name";s:17:"system_user_group";s:4:"icon";s:22:"wi wi-userjurisdiction";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";a:3:{i:0;a:2:{s:5:"title";s:15:"添加用户组";s:15:"permission_name";s:21:"system_user_group_add";}i:1;a:2:{s:5:"title";s:15:"编辑用户组";s:15:"permission_name";s:22:"system_user_group_post";}i:2;a:2:{s:5:"title";s:15:"删除用户组";s:15:"permission_name";s:21:"system_user_group_del";}}}}}s:7:"article";a:2:{s:5:"title";s:13:"文章/公告";s:4:"menu";a:8:{s:14:"system_article";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:12:"新闻管理";s:3:"url";s:29:"./index.php?c=article&a=news&";s:15:"permission_name";s:19:"system_article_news";s:4:"icon";s:13:"wi wi-article";s:12:"displayorder";i:8;s:2:"id";N;s:14:"sub_permission";N;}s:21:"system_article_notice";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:12:"公告管理";s:3:"url";s:31:"./index.php?c=article&a=notice&";s:15:"permission_name";s:21:"system_article_notice";s:4:"icon";s:12:"wi wi-notice";s:12:"displayorder";i:7;s:2:"id";N;s:14:"sub_permission";N;}s:20:"system_article_about";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:12:"关于我们";s:3:"url";s:30:"./index.php?c=article&a=about&";s:15:"permission_name";s:20:"system_article_about";s:4:"icon";s:13:"wi wi-article";s:12:"displayorder";i:6;s:2:"id";N;s:14:"sub_permission";N;}s:19:"system_article_case";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:12:"案例管理";s:3:"url";s:29:"./index.php?c=article&a=case&";s:15:"permission_name";s:19:"system_article_case";s:4:"icon";s:13:"wi wi-article";s:12:"displayorder";i:5;s:2:"id";N;s:14:"sub_permission";N;}s:22:"system_article_product";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:12:"产品管理";s:3:"url";s:32:"./index.php?c=article&a=product&";s:15:"permission_name";s:22:"system_article_product";s:4:"icon";s:13:"wi wi-article";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";N;}s:20:"system_article_agent";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:12:"代理公司";s:3:"url";s:30:"./index.php?c=article&a=agent&";s:15:"permission_name";s:20:"system_article_agent";s:4:"icon";s:13:"wi wi-article";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:13:"website_wenda";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:12:"问答系统";s:3:"url";s:30:"./index.php?c=website&a=wenda&";s:15:"permission_name";s:13:"website_wenda";s:4:"icon";s:13:"wi wi-article";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:19:"system_article_link";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:12:"友情链接";s:3:"url";s:29:"./index.php?c=article&a=link&";s:15:"permission_name";s:19:"system_article_link";s:4:"icon";s:13:"wi wi-article";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:5:"cache";a:2:{s:5:"title";s:6:"缓存";s:4:"menu";a:1:{s:26:"system_setting_updatecache";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"更新缓存";s:3:"url";s:35:"./index.php?c=system&a=updatecache&";s:15:"permission_name";s:26:"system_setting_updatecache";s:4:"icon";s:12:"wi wi-update";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}}s:9:"is_system";b:1;s:10:"is_display";b:1;}s:7:"account";a:6:{s:5:"title";s:15:"公众号管理";s:4:"icon";s:18:"wi wi-white-collar";s:3:"url";s:41:"./index.php?c=home&a=welcome&do=platform&";s:7:"section";a:6:{s:13:"platform_plus";a:2:{s:5:"title";s:12:"增强功能";s:4:"menu";a:5:{s:14:"platform_reply";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"自动回复";s:3:"url";s:31:"./index.php?c=platform&a=reply&";s:15:"permission_name";s:14:"platform_reply";s:4:"icon";s:11:"wi wi-reply";s:12:"displayorder";i:5;s:2:"id";N;s:14:"sub_permission";a:0:{}}s:13:"platform_menu";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"自定义菜单";s:3:"url";s:30:"./index.php?c=platform&a=menu&";s:15:"permission_name";s:13:"platform_menu";s:4:"icon";s:16:"wi wi-custommenu";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";N;}s:11:"platform_qr";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:22:"二维码/转化链接";s:3:"url";s:28:"./index.php?c=platform&a=qr&";s:15:"permission_name";s:11:"platform_qr";s:4:"icon";s:12:"wi wi-qrcode";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";a:0:{}}s:17:"platform_material";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:16:"素材/编辑器";s:3:"url";s:34:"./index.php?c=platform&a=material&";s:15:"permission_name";s:17:"platform_material";s:4:"icon";s:12:"wi wi-redact";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:13:"platform_site";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:16:"微官网-文章";s:3:"url";s:38:"./index.php?c=site&a=multi&do=display&";s:15:"permission_name";s:13:"platform_site";s:4:"icon";s:10:"wi wi-home";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";a:0:{}}}}s:15:"platform_module";a:3:{s:5:"title";s:12:"应用模块";s:4:"menu";a:0:{}s:10:"is_display";b:1;}s:2:"mc";a:2:{s:5:"title";s:6:"粉丝";s:4:"menu";a:2:{s:7:"mc_fans";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"1";s:5:"title";s:12:"粉丝管理";s:3:"url";s:24:"./index.php?c=mc&a=fans&";s:15:"permission_name";s:7:"mc_fans";s:4:"icon";s:16:"wi wi-fansmanage";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:9:"mc_member";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"会员管理";s:3:"url";s:26:"./index.php?c=mc&a=member&";s:15:"permission_name";s:9:"mc_member";s:4:"icon";s:10:"wi wi-fans";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:7:"profile";a:2:{s:5:"title";s:6:"配置";s:4:"menu";a:2:{s:7:"profile";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"参数配置";s:3:"url";s:33:"./index.php?c=profile&a=passport&";s:15:"permission_name";s:15:"profile_setting";s:4:"icon";s:23:"wi wi-parameter-setting";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:7:"payment";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"支付参数";s:3:"url";s:32:"./index.php?c=profile&a=payment&";s:15:"permission_name";s:15:"profile_setting";s:4:"icon";s:17:"wi wi-pay-setting";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:4:"shop";a:2:{s:5:"title";s:12:"应用商店";s:4:"menu";a:2:{s:13:"shop_mymodule";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"应用商店";s:3:"url";s:30:"./index.php?c=shop&a=mymodule&";s:15:"permission_name";s:13:"shop_mymodule";s:4:"icon";s:11:"wi wi-wxapp";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";a:1:{i:0;a:2:{s:5:"title";s:12:"模块购买";s:15:"permission_name";s:16:"shop_morder_post";}}}s:12:"shop_mrecord";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"消费记录";s:3:"url";s:29:"./index.php?c=shop&a=mrecord&";s:15:"permission_name";s:12:"shop_mrecord";s:4:"icon";s:11:"wi wi-wxapp";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:7:"fournet";a:2:{s:5:"title";s:12:"四网融合";s:4:"menu";a:5:{s:20:"fournet_wxauth_mplis";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:15:"多平台绑定";s:3:"url";s:41:"./index.php?c=fournet&a=wxauth&do=mplist&";s:15:"permission_name";s:20:"fournet_wxauth_mplis";s:4:"icon";s:11:"wi wi-wxapp";s:12:"displayorder";i:5;s:2:"id";N;s:14:"sub_permission";N;}s:21:"fournet_domain_manage";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:12:"域名管理";s:3:"url";s:41:"./index.php?c=fournet&a=domain&do=manage&";s:15:"permission_name";s:21:"fournet_domain_manage";s:4:"icon";s:11:"wi wi-wxapp";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";N;}s:11:"fournet_msg";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:18:"全局短信设置";s:3:"url";s:28:"./index.php?c=fournet&a=msg&";s:15:"permission_name";s:11:"fournet_msg";s:4:"icon";s:11:"wi wi-wxapp";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:13:"fournet_print";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:21:"全局打印机设置";s:3:"url";s:30:"./index.php?c=fournet&a=print&";s:15:"permission_name";s:13:"fournet_print";s:4:"icon";s:11:"wi wi-wxapp";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:12:"fournet_cron";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:18:"全局计划任务";s:3:"url";s:29:"./index.php?c=cron&a=display&";s:15:"permission_name";s:12:"fournet_cron";s:4:"icon";s:11:"wi wi-wxapp";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}}s:9:"is_system";b:1;s:10:"is_display";b:1;}s:5:"wxapp";a:6:{s:5:"title";s:15:"小程序管理";s:4:"icon";s:19:"wi wi-small-routine";s:3:"url";s:38:"./index.php?c=wxapp&a=display&do=home&";s:7:"section";a:3:{s:14:"wxapp_entrance";a:3:{s:5:"title";s:15:"小程序入口";s:4:"menu";a:1:{s:11:"module_link";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:12:"入口页面";s:3:"url";s:54:"./index.php?c=wxapp&a=version&do=module_entrance_link&";s:15:"permission_name";s:26:"wxapp_module_entrance_link";s:4:"icon";s:18:"wi wi-data-synchro";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}s:10:"is_display";b:1;}s:12:"wxapp_module";a:3:{s:5:"title";s:6:"应用";s:4:"menu";a:0:{}s:10:"is_display";b:1;}s:20:"platform_manage_menu";a:2:{s:5:"title";s:6:"管理";s:4:"menu";a:3:{s:11:"module_link";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"数据同步";s:3:"url";s:53:"./index.php?c=wxapp&a=version&do=module_link_uniacid&";s:15:"permission_name";s:25:"wxapp_module_link_uniacid";s:4:"icon";s:18:"wi wi-data-synchro";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:13:"wxapp_profile";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"支付参数";s:3:"url";s:30:"./index.php?c=wxapp&a=payment&";s:15:"permission_name";s:13:"wxapp_payment";s:4:"icon";s:16:"wi wi-appsetting";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:14:"front_download";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"小程序下载";s:3:"url";s:48:"./index.php?c=wxapp&a=version&do=front_download&";s:15:"permission_name";s:20:"wxapp_front_download";s:4:"icon";s:20:"wi wi-wxapp-download";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}}s:9:"is_system";b:1;s:10:"is_display";b:0;}s:6:"module";a:6:{s:5:"title";s:6:"应用";s:4:"icon";s:11:"wi wi-apply";s:3:"url";s:31:"./index.php?c=module&a=display&";s:7:"section";a:0:{}s:10:"is_display";b:0;s:9:"is_system";b:1;}s:4:"site";a:7:{s:5:"title";s:12:"站点管理";s:4:"icon";s:17:"wi wi-system-site";s:3:"url";s:28:"./index.php?c=system&a=site&";s:7:"section";a:3:{s:5:"cloud";a:2:{s:5:"title";s:9:"云服务";s:4:"menu";a:1:{s:14:"system_profile";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"系统升级";s:3:"url";s:25:"./index.php?c=cloud&a=up&";s:15:"permission_name";s:20:"system_cloud_upgrade";s:4:"icon";s:11:"wi wi-cache";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:7:"setting";a:2:{s:5:"title";s:6:"设置";s:4:"menu";a:8:{s:19:"system_setting_site";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"站点设置";s:3:"url";s:28:"./index.php?c=system&a=site&";s:15:"permission_name";s:19:"system_setting_site";s:4:"icon";s:18:"wi wi-site-setting";s:12:"displayorder";i:8;s:2:"id";N;s:14:"sub_permission";N;}s:20:"system_setting_theme";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:12:"后台皮肤";s:3:"url";s:39:"./index.php?c=extension&a=theme&do=web&";s:15:"permission_name";s:20:"system_setting_theme";s:4:"icon";s:9:"wi wi-log";s:12:"displayorder";i:7;s:2:"id";N;s:14:"sub_permission";N;}s:21:"system_setting_mbsite";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:15:"手机站设置";s:3:"url";s:30:"./index.php?c=system&a=mbsite&";s:15:"permission_name";s:21:"system_setting_mbsite";s:4:"icon";s:9:"wi wi-log";s:12:"displayorder";i:6;s:2:"id";N;s:14:"sub_permission";N;}s:19:"system_setting_menu";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"1";s:5:"title";s:12:"菜单设置";s:3:"url";s:28:"./index.php?c=system&a=menu&";s:15:"permission_name";s:19:"system_setting_menu";s:4:"icon";s:18:"wi wi-menu-setting";s:12:"displayorder";i:5;s:2:"id";N;s:14:"sub_permission";N;}s:25:"system_setting_attachment";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:12:"附件设置";s:3:"url";s:34:"./index.php?c=system&a=attachment&";s:15:"permission_name";s:25:"system_setting_attachment";s:4:"icon";s:16:"wi wi-attachment";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";N;}s:25:"system_setting_systeminfo";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:12:"系统信息";s:3:"url";s:34:"./index.php?c=system&a=systeminfo&";s:15:"permission_name";s:25:"system_setting_systeminfo";s:4:"icon";s:17:"wi wi-system-info";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:19:"system_setting_logs";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:12:"查看日志";s:3:"url";s:28:"./index.php?c=system&a=logs&";s:15:"permission_name";s:19:"system_setting_logs";s:4:"icon";s:9:"wi wi-log";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:26:"system_setting_ipwhitelist";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:11:"IP白名单";s:3:"url";s:35:"./index.php?c=system&a=ipwhitelist&";s:15:"permission_name";s:26:"system_setting_ipwhitelist";s:4:"icon";s:8:"wi wi-ip";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:7:"utility";a:2:{s:5:"title";s:12:"常用工具";s:4:"menu";a:4:{s:23:"system_utility_optimize";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:12:"性能优化";s:3:"url";s:32:"./index.php?c=system&a=optimize&";s:15:"permission_name";s:23:"system_utility_optimize";s:4:"icon";s:14:"wi wi-optimize";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:23:"system_utility_database";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:9:"数据库";s:3:"url";s:32:"./index.php?c=system&a=database&";s:15:"permission_name";s:23:"system_utility_database";s:4:"icon";s:9:"wi wi-sql";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:18:"system_utility_bom";a:9:{s:9:"is_system";i:1;s:10:"is_display";s:1:"0";s:5:"title";s:15:"检测文件BOM";s:3:"url";s:27:"./index.php?c=system&a=bom&";s:15:"permission_name";s:18:"system_utility_bom";s:4:"icon";s:9:"wi wi-bom";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}i:1122;a:9:{s:9:"is_system";s:1:"0";s:10:"is_display";s:1:"0";s:5:"title";s:12:"新增菜单";s:3:"url";s:4:"1122";s:15:"permission_name";s:4:"1122";s:4:"icon";s:16:"wi wi-appsetting";s:12:"displayorder";i:0;s:2:"id";s:2:"38";s:14:"sub_permission";N;}}}}s:7:"founder";b:1;s:9:"is_system";b:1;s:10:"is_display";b:1;}s:5:"cloud";a:5:{s:5:"title";s:12:"系统升级";s:3:"url";s:25:"./index.php?c=cloud&a=up&";s:7:"section";a:0:{}s:9:"is_system";b:1;s:10:"is_display";b:1;}}'),
('we7:memberinfo:47', 'a:53:{s:3:"uid";s:2:"47";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"b76271547ee7bd2ddf5e7f4ee05aace9@weizancms.com";s:8:"password";s:32:"fc44495467f97ceb1c7c0cb0727f4d13";s:4:"salt";s:8:"m1t0104t";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1510823431";s:8:"realname";s:0:"";s:8:"nickname";s:35:"安静的美男子(=￣ρ￣=).zzZZ";s:6:"avatar";s:130:"http://wx.qlogo.cn/mmopen/5IUAtIabUJKKtYCxcb8xsqU3sU7jUWwj86lgwbSiatMsrYSNlqOIwCoyrDcxCTm8BfiaXibJ4ibJH0lQB4r92LCJmZxIfJWeSzTl/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('we7:memberinfo:51', 'a:53:{s:3:"uid";s:2:"51";s:7:"uniacid";s:1:"6";s:6:"mobile";s:0:"";s:5:"email";s:46:"7a724873cf1d12c7dca2468472ba7fb8@weizancms.com";s:8:"password";s:32:"270e03ab2266e26e60cd4cfcd4eefc53";s:4:"salt";s:8:"gxi2J7qO";s:7:"groupid";s:1:"6";s:7:"credit1";d:0;s:7:"credit2";d:0;s:7:"credit3";d:0;s:7:"credit4";d:0;s:7:"credit5";d:0;s:7:"credit6";d:0;s:8:"credit20";s:4:"0.00";s:10:"createtime";s:10:"1511264922";s:8:"realname";s:0:"";s:8:"nickname";s:3:"You";s:6:"avatar";s:128:"http://wx.qlogo.cn/mmopen/YSBzp7uZPb2LUF9mB1BQZ4F2sfmJMbicTGtVXNaMvjfguAcN9hSdfMA7MibrX68YMGVG2f1HmRa6nef6okaedINj85nOBKFREn/132";s:2:"qq";s:0:"";s:3:"vip";s:1:"0";s:6:"gender";s:1:"0";s:9:"birthyear";s:1:"0";s:10:"birthmonth";s:1:"0";s:8:"birthday";s:1:"0";s:13:"constellation";s:0:"";s:6:"zodiac";s:0:"";s:9:"telephone";s:0:"";s:6:"idcard";s:0:"";s:9:"studentid";s:0:"";s:5:"grade";s:0:"";s:7:"address";s:0:"";s:7:"zipcode";s:0:"";s:11:"nationality";s:0:"";s:14:"resideprovince";s:0:"";s:10:"residecity";s:0:"";s:10:"residedist";s:0:"";s:14:"graduateschool";s:0:"";s:7:"company";s:0:"";s:9:"education";s:0:"";s:10:"occupation";s:0:"";s:8:"position";s:0:"";s:7:"revenue";s:0:"";s:15:"affectivestatus";s:0:"";s:10:"lookingfor";s:0:"";s:9:"bloodtype";s:0:"";s:6:"height";s:0:"";s:6:"weight";s:0:"";s:6:"alipay";s:0:"";s:3:"msn";s:0:"";s:6:"taobao";s:0:"";s:4:"site";s:0:"";s:3:"bio";s:0:"";s:8:"interest";s:0:"";}'),
('unicount:15', 's:1:"1";');

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_cron`
--

CREATE TABLE IF NOT EXISTS `ims_core_cron` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `filename` varchar(50) NOT NULL,
  `lastruntime` int(10) unsigned NOT NULL,
  `nextruntime` int(10) unsigned NOT NULL,
  `weekday` tinyint(3) NOT NULL,
  `day` tinyint(3) NOT NULL,
  `hour` tinyint(3) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `extra` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `value` varchar(15) NOT NULL,
  `url` varchar(200) NOT NULL,
  `open` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL,
  `cloudid` int(10) NOT NULL,
  `module` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createtime` (`createtime`),
  KEY `nextruntime` (`nextruntime`),
  KEY `uniacid` (`uniacid`),
  KEY `cloudid` (`cloudid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_cron_record`
--

CREATE TABLE IF NOT EXISTS `ims_core_cron_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `tid` (`tid`),
  KEY `module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_menu`
--

CREATE TABLE IF NOT EXISTS `ims_core_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `append_title` varchar(30) NOT NULL,
  `append_url` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_system` tinyint(3) unsigned NOT NULL,
  `permission_name` varchar(50) NOT NULL,
  `group_name` varchar(30) NOT NULL,
  `icon` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- 转存表中的数据 `ims_core_menu`
--

INSERT INTO `ims_core_menu` (`id`, `pid`, `title`, `name`, `url`, `append_title`, `append_url`, `displayorder`, `type`, `is_display`, `is_system`, `permission_name`, `group_name`, `icon`) VALUES
(1, 0, '', '', '', '', '', 0, '', 0, 0, 'system_template', '', ''),
(2, 0, '', '', '', '', '', 0, '', 0, 0, 'system_platform', '', ''),
(3, 0, '', '', '', '', '', 0, '', 0, 0, 'system_subscribe_subscribe', '', ''),
(4, 0, '', '', '', '', '', 0, '', 0, 0, 'system_service_display', '', ''),
(5, 0, '', '', '', '', '', 0, '', 0, 0, 'system_wxapp', '', ''),
(6, 0, '', '', '', '', '', 0, '', 0, 0, 'system_module_wxapp', '', ''),
(7, 0, '', '', '', '', '', 0, '', 0, 0, 'fournet_wxauth_mplis', '', ''),
(8, 0, '', '', '', '', '', 0, '', 0, 0, 'fournet_domain_manage', '', ''),
(9, 0, '', '', '', '', '', 0, '', 0, 0, 'fournet_msg', '', ''),
(10, 0, '', '', '', '', '', 0, '', 0, 0, 'fournet_print', '', ''),
(11, 0, '', '', '', '', '', 0, '', 0, 0, 'fournet_cron', '', ''),
(12, 0, '', '', '', '', '', 0, '', 0, 1, 'wxapp', 'frame', ''),
(14, 0, '', '', '', '', '', 0, '', 0, 0, 'system_utility_optimize', '', ''),
(15, 0, '', '', '', '', '', 0, '', 0, 0, 'system_utility_database', '', ''),
(16, 0, '', '', '', '', '', 0, '', 0, 0, 'system_utility_bom', '', ''),
(17, 0, '', '', '', '', '', 0, '', 0, 0, 'system_setting_ipwhitelist', '', ''),
(18, 0, '', '', '', '', '', 0, '', 0, 0, 'system_setting_logs', '', ''),
(19, 0, '', '', '', '', '', 0, '', 0, 0, 'system_setting_systeminfo', '', ''),
(20, 0, '', '', '', '', '', 0, '', 0, 0, 'system_setting_theme', '', ''),
(21, 0, '', '', '', '', '', 0, '', 0, 0, 'system_setting_mbsite', '', ''),
(22, 0, '', '', '', '', '', 0, '', 1, 0, 'system_setting_menu', '', ''),
(23, 0, '', '', '', '', '', 0, '', 0, 0, 'system_setting_attachment', '', ''),
(24, 0, '', '', '', '', '', 0, '', 0, 0, 'wxapp_module_entrance_link', '', ''),
(25, 0, '', '', '', '', '', 0, '', 0, 1, 'module', 'frame', ''),
(26, 0, '', '', '', '', '', 0, '', 0, 0, 'system_article_news', '', ''),
(27, 0, '', '', '', '', '', 0, '', 0, 0, 'system_article_notice', '', ''),
(28, 0, '', '', '', '', '', 0, '', 0, 0, 'system_article_about', '', ''),
(29, 0, '', '', '', '', '', 0, '', 0, 0, 'system_article_case', '', ''),
(30, 0, '', '', '', '', '', 0, '', 0, 0, 'system_article_product', '', ''),
(31, 0, '', '', '', '', '', 0, '', 0, 0, 'system_article_agent', '', ''),
(32, 0, '', '', '', '', '', 0, '', 0, 0, 'website_wenda', '', ''),
(33, 0, '', '', '', '', '', 0, '', 0, 0, 'system_article_link', '', ''),
(34, 0, '', '', '', '', '', 0, '', 1, 0, 'system_module_group', '', ''),
(35, 0, '', '', '', '', '', 0, '', 1, 0, 'system_user_group', '', ''),
(36, 0, '广告管理', '', 'http://www.dianlema.net/web/index.php?c=site&a=entry&op=display&do=ad&m=weisrc_dish', '', '', 0, 'url', 1, 0, '11', 'user', ''),
(37, 0, '', '', '', '', '', 0, '', 1, 0, 'mc_fans', '', ''),
(38, 0, '新增菜单', '', '1122', '', '', 0, 'url', 0, 0, '1122', 'utility', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_paylog`
--

CREATE TABLE IF NOT EXISTS `ims_core_paylog` (
  `plid` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `acid` int(10) NOT NULL,
  `openid` varchar(40) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `tid` varchar(128) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `tag` varchar(2000) NOT NULL,
  `is_usecard` tinyint(3) unsigned NOT NULL,
  `card_type` tinyint(3) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `card_fee` decimal(10,2) unsigned NOT NULL,
  `encrypt_code` varchar(100) NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_tid` (`tid`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=110 ;

--
-- 转存表中的数据 `ims_core_paylog`
--

INSERT INTO `ims_core_paylog` (`plid`, `type`, `uniacid`, `acid`, `openid`, `uniontid`, `tid`, `fee`, `status`, `module`, `tag`, `is_usecard`, `card_type`, `card_id`, `card_fee`, `encrypt_code`) VALUES
(1, '', 6, 6, '16', '', '294', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(2, '', 5, 5, '1', '', '295', '46.00', 0, 'weisrc_dish', '', 0, 0, '', '46.00', ''),
(3, '', 6, 6, '16', '', '296', '256.00', 0, 'weisrc_dish', '', 0, 0, '', '256.00', ''),
(4, '', 6, 6, '16', '', '297', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(5, '', 6, 6, '16', '', '298', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(6, '', 6, 6, '16', '', '299', '38.00', 0, 'weisrc_dish', '', 0, 0, '', '38.00', ''),
(7, '', 6, 6, '16', '', '300', '256.00', 0, 'weisrc_dish', '', 0, 0, '', '256.00', ''),
(8, '', 6, 6, '16', '', '301', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(9, '', 5, 5, '1', '', '302', '10.00', 0, 'weisrc_dish', '', 0, 0, '', '10.00', ''),
(10, '', 5, 5, '1', '', '303', '12.00', 0, 'weisrc_dish', '', 0, 0, '', '12.00', ''),
(11, '', 6, 6, '16', '', '304', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(12, '', 6, 6, '16', '', '305', '104.00', 0, 'weisrc_dish', '', 0, 0, '', '104.00', ''),
(13, '', 6, 6, '16', '', '306', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(14, '', 6, 6, '17', '', '307', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(15, '', 6, 6, '16', '', '308', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(16, '', 5, 5, '1', '', '309', '12.00', 0, 'weisrc_dish', '', 0, 0, '', '12.00', ''),
(17, '', 5, 5, '13', '', '310', '20.00', 0, 'weisrc_dish', '', 0, 0, '', '20.00', ''),
(18, '', 6, 6, '16', '', '311', '25.00', 0, 'weisrc_dish', '', 0, 0, '', '25.00', ''),
(19, '', 6, 6, '16', '', '312', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(20, '', 6, 6, '23', '', '313', '256.00', 0, 'weisrc_dish', '', 0, 0, '', '256.00', ''),
(21, '', 6, 6, '18', '', '314', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(22, '', 6, 6, '18', '', '315', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(23, '', 6, 6, '15', '', '316', '434.00', 0, 'weisrc_dish', '', 0, 0, '', '434.00', ''),
(24, '', 6, 6, '18', '', '317', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(25, '', 6, 6, '18', '', '318', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(26, '', 6, 6, '15', '', '319', '256.00', 0, 'weisrc_dish', '', 0, 0, '', '256.00', ''),
(27, 'wechat', 6, 6, 'oSRY005X21OxPllfXAlfbcnlrF-A', '2017110811085900001580472803', '320', '256.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"15";}', 0, 0, '0', '256.00', ''),
(28, '', 6, 6, '18', '', '321', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(29, '', 6, 6, '18', '', '322', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(30, '', 6, 6, '18', '', '323', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(31, 'wechat', 6, 6, 'oSRY005X21OxPllfXAlfbcnlrF-A', '2017110811110500001565459745', '324', '0.10', 1, 'weisrc_dish', 'a:3:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"15";s:14:"transaction_id";s:28:"4200000004201711083214107097";}', 0, 0, '0', '0.10', ''),
(32, 'wechat', 6, 6, 'oSRY00yS5yHUwKxVARp8b_21YceE', '2017110811110600001526899209', '325', '0.10', 1, 'weisrc_dish', 'a:3:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"18";s:14:"transaction_id";s:28:"4200000030201711083219170009";}', 0, 0, '0', '0.10', ''),
(33, 'wechat', 6, 6, 'oSRY007ii1nrPRxSCeihLAxANMB8', '2017110811120500001593462926', '326', '2.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"16";}', 0, 0, '0', '2.00', ''),
(34, 'wechat', 6, 6, 'oSRY007ii1nrPRxSCeihLAxANMB8', '2017110811162900001536634491', '327', '2.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"16";}', 0, 0, '0', '2.00', ''),
(35, '', 5, 5, '1', '', '328', '8.00', 0, 'weisrc_dish', '', 0, 0, '', '8.00', ''),
(36, 'wechat', 6, 6, 'oSRY005X21OxPllfXAlfbcnlrF-A', '2017110811544200001530426547', '329', '0.10', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"15";}', 0, 0, '0', '0.10', ''),
(37, 'wechat', 6, 6, 'oSRY007ii1nrPRxSCeihLAxANMB8', '2017110811571500001540533865', '330', '2.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"16";}', 0, 0, '0', '2.00', ''),
(38, '', 6, 6, '16', '', '331', '2.00', 0, 'weisrc_dish', '', 0, 0, '', '2.00', ''),
(39, 'wechat', 6, 6, 'oSRY007ii1nrPRxSCeihLAxANMB8', '2017110812115200001561684226', '332', '2.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"16";}', 0, 0, '0', '2.00', ''),
(40, 'wechat', 6, 6, 'oSRY007ii1nrPRxSCeihLAxANMB8', '2017110812122200001535096568', '333', '2.00', 1, 'weisrc_dish', 'a:3:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"16";s:14:"transaction_id";s:28:"4200000013201711083234687051";}', 0, 0, '0', '2.00', ''),
(41, '', 6, 6, '16', '', '334', '200.00', 0, 'weisrc_dish', '', 0, 0, '', '200.00', ''),
(42, 'wechat', 6, 6, 'oSRY0002kWJeWI40pNCycPqBUO3E', '2017110814221700001584046506', '335', '290.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"17";}', 0, 0, '0', '290.00', ''),
(43, '', 6, 6, '15', '', '336', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(44, '', 6, 6, '15', '', '337', '484.00', 0, 'weisrc_dish', '', 0, 0, '', '484.00', ''),
(45, '', 6, 6, '15', '', '338', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(46, '', 6, 6, '15', '', '339', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(47, '', 6, 6, '16', '', '340', '200.00', 0, 'weisrc_dish', '', 0, 0, '', '200.00', ''),
(48, '', 6, 6, '16', '', '341', '50.00', 0, 'weisrc_dish', '', 0, 0, '', '50.00', ''),
(49, 'wechat', 6, 6, 'oSRY0002kWJeWI40pNCycPqBUO3E', '2017110819424800001504823548', '342', '50.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"17";}', 0, 0, '0', '50.00', ''),
(50, 'wechat', 6, 6, 'oSRY0002kWJeWI40pNCycPqBUO3E', '2017110819451000001546555473', '343', '294.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"17";}', 0, 0, '0', '294.00', ''),
(51, 'wechat', 6, 6, 'oSRY007ii1nrPRxSCeihLAxANMB8', '2017110821123600001563463299', '344', '1124.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"16";}', 0, 0, '0', '1124.00', ''),
(52, '', 6, 6, '16', '', '345', '50.00', 0, 'weisrc_dish', '', 0, 0, '', '50.00', ''),
(53, '', 6, 6, '16', '', '346', '562.00', 0, 'weisrc_dish', '', 0, 0, '', '562.00', ''),
(54, 'wechat', 6, 6, 'oSRY007ii1nrPRxSCeihLAxANMB8', '2017110821474400001544232489', '347', '380.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"16";}', 0, 0, '0', '380.00', ''),
(55, 'wechat', 6, 6, 'oSRY004apWoEmgGRX6tq94KeP8SE', '2017110910203700001502421504', '349', '128.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"27";}', 0, 0, '0', '128.00', ''),
(56, '', 6, 6, '17', '', '350', '1330.00', 0, 'weisrc_dish', '', 0, 0, '', '1330.00', ''),
(57, 'wechat', 6, 6, 'oSRY0002kWJeWI40pNCycPqBUO3E', '2017111015135600001530608054', '352', '640.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"17";}', 0, 0, '0', '640.00', ''),
(58, 'wechat', 6, 6, 'oSRY004apWoEmgGRX6tq94KeP8SE', '2017111015155600001522278886', '353', '2042.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"27";}', 0, 0, '0', '2042.00', ''),
(59, 'wechat', 6, 6, 'oSRY0002kWJeWI40pNCycPqBUO3E', '2017111109144900001562144444', '354', '512.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"17";}', 0, 0, '0', '512.00', ''),
(60, '', 6, 6, '17', '', '355', '352.00', 0, 'weisrc_dish', '', 0, 0, '', '352.00', ''),
(61, '', 6, 6, '17', '', '360', '200.00', 0, 'weisrc_dish', '', 0, 0, '', '200.00', ''),
(62, 'wechat', 6, 6, 'oSRY0002kWJeWI40pNCycPqBUO3E', '2017111314410900001589209793', '361', '1439.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"17";}', 0, 0, '0', '1439.00', ''),
(63, '', 6, 6, '17', '', '362', '408.00', 0, 'weisrc_dish', '', 0, 0, '', '408.00', ''),
(64, 'wechat', 6, 6, 'oSRY0002kWJeWI40pNCycPqBUO3E', '2017111314484600001528683248', '363', '1152.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"17";}', 0, 0, '0', '1152.00', ''),
(65, '', 6, 6, '17', '', '364', '460.00', 0, 'weisrc_dish', '', 0, 0, '', '460.00', ''),
(66, 'wechat', 6, 6, 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '2017111316342400001588839138', '365', '128.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"44";}', 0, 0, '0', '128.00', ''),
(67, '', 6, 6, '44', '', '366', '1074.00', 0, 'weisrc_dish', '', 0, 0, '', '1074.00', ''),
(68, '', 6, 6, '44', '', '367', '200.00', 0, 'weisrc_dish', '', 0, 0, '', '200.00', ''),
(69, '', 6, 6, '44', '', '368', '200.00', 0, 'weisrc_dish', '', 0, 0, '', '200.00', ''),
(70, 'wechat', 6, 6, 'oSRY0002kWJeWI40pNCycPqBUO3E', '2017111410212000001526868066', '369', '0.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"17";}', 0, 0, '0', '790.00', ''),
(71, '', 6, 6, '26', '', '370', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(72, '', 6, 6, '17', '', '371', '512.00', 0, 'weisrc_dish', '', 0, 0, '', '512.00', ''),
(73, 'wechat', 6, 6, 'oSRY0002kWJeWI40pNCycPqBUO3E', '2017111410255000001579638742', '372', '0.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"17";}', 0, 0, '0', '1424.00', ''),
(74, '', 6, 6, '26', '', '373', '100.00', 0, 'weisrc_dish', '', 0, 0, '', '100.00', ''),
(75, '', 6, 6, '26', '', '374', '1018.00', 0, 'weisrc_dish', '', 0, 0, '', '1018.00', ''),
(76, '', 6, 6, '26', '', '375', '571.00', 0, 'weisrc_dish', '', 0, 0, '', '571.00', ''),
(77, '', 6, 6, '26', '', '376', '562.00', 0, 'weisrc_dish', '', 0, 0, '', '562.00', ''),
(78, 'wechat', 6, 6, 'oSRY007ii1nrPRxSCeihLAxANMB8', '2017111412001200001566660637', '377', '106.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"16";}', 0, 0, '0', '106.00', ''),
(79, '', 6, 6, '16', '', '378', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(80, '', 6, 6, '16', '', '379', '128.00', 0, 'weisrc_dish', '', 0, 0, '', '128.00', ''),
(81, '', 6, 6, '27', '', '380', '306.00', 0, 'weisrc_dish', '', 0, 0, '', '306.00', ''),
(82, 'wechat', 6, 6, 'oSRY003Ve7He7RlAnCV4CKmNLHEA', '2017111415310400001586586669', '381', '0.10', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"39";}', 0, 0, '0', '0.10', ''),
(83, 'wechat', 6, 6, 'oSRY003Ve7He7RlAnCV4CKmNLHEA', '2017111415443800001570410517', '382', '0.10', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"39";}', 0, 0, '0', '0.10', ''),
(84, 'wechat', 6, 6, 'oSRY003Ve7He7RlAnCV4CKmNLHEA', '2017111415453100001516144648', '383', '0.10', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"39";}', 0, 0, '0', '0.10', ''),
(85, '', 6, 6, '39', '', '384', '0.10', 0, 'weisrc_dish', '', 0, 0, '', '0.10', ''),
(86, '', 6, 6, '39', '', '385', '0.10', 0, 'weisrc_dish', '', 0, 0, '', '0.10', ''),
(87, '', 6, 6, '39', '', '386', '0.10', 0, 'weisrc_dish', '', 0, 0, '', '0.10', ''),
(88, '', 6, 6, '16', '', '387', '200.00', 0, 'weisrc_dish', '', 0, 0, '', '200.00', ''),
(89, '', 6, 6, '17', '', '388', '1224.00', 0, 'weisrc_dish', '', 0, 0, '', '1224.00', ''),
(90, '', 6, 6, '17', '', '389', '512.00', 0, 'weisrc_dish', '', 0, 0, '', '512.00', ''),
(91, 'wechat', 6, 6, 'oSRY0002kWJeWI40pNCycPqBUO3E', '2017111420594900001588831847', '390', '1273.10', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"17";}', 0, 0, '0', '1273.10', ''),
(92, '', 6, 6, '26', '', '392', '1024.00', 0, 'weisrc_dish', '', 0, 0, '', '1024.00', ''),
(93, '', 6, 6, '17', '', '393', '236.00', 0, 'weisrc_dish', '', 0, 0, '', '264.00', ''),
(94, 'wechat', 6, 6, 'oSRY003Ve7He7RlAnCV4CKmNLHEA', '2017111516413300001522990606', '394', '0.10', 1, 'weisrc_dish', 'a:3:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"39";s:14:"transaction_id";s:28:"4200000002201711154845064400";}', 0, 0, '0', '0.10', ''),
(95, 'wechat', 6, 6, 'oSRY003Ve7He7RlAnCV4CKmNLHEA', '2017111516440500001564466344', '395', '0.10', 1, 'weisrc_dish', 'a:3:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"39";s:14:"transaction_id";s:28:"4200000017201711154843618056";}', 0, 0, '0', '0.10', ''),
(96, 'wechat', 6, 6, 'oSRY0009p7BYSw0LnJpUxWbD2924', '2017111615284900001506344784', '396', '128.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"23";}', 0, 0, '0', '128.00', ''),
(97, 'wechat', 6, 6, 'oSRY0002kWJeWI40pNCycPqBUO3E', '2017111623134400001512773777', '397', '1176.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"17";}', 0, 0, '0', '1176.00', ''),
(98, 'wechat', 6, 6, 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '2017111715343500001534377427', '398', '0.10', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"44";}', 0, 0, '0', '0.10', ''),
(99, 'wechat', 6, 6, 'oSRY0002kWJeWI40pNCycPqBUO3E', '2017111723375500001580444268', '399', '50.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"17";}', 0, 0, '0', '50.00', ''),
(100, 'wechat', 6, 6, 'oSRY007ii1nrPRxSCeihLAxANMB8', '2017111810221200001573262205', '400', '128.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"16";}', 0, 0, '0', '128.00', ''),
(101, 'wechat', 6, 6, 'oSRY0002kWJeWI40pNCycPqBUO3E', '2017111823182900001569222694', '401', '50.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"17";}', 0, 0, '0', '50.00', ''),
(102, 'wechat', 6, 6, 'oSRY0069zmR3bYgg6-YSEbdA-K1E', '2017112010451500001554651524', '402', '0.10', 1, 'weisrc_dish', 'a:3:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"21";s:14:"transaction_id";s:28:"4200000018201711205844922382";}', 0, 0, '0', '0.10', ''),
(103, 'wechat', 6, 6, 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '2017112010575800001568321240', '403', '0.06', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"44";}', 0, 0, '0', '0.06', ''),
(104, 'wechat', 6, 6, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', '2017112010591500001574687408', '404', '0.10', 1, 'weisrc_dish', 'a:3:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"26";s:14:"transaction_id";s:28:"4200000023201711205845604821";}', 0, 0, '0', '0.10', ''),
(105, 'wechat', 6, 6, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', '2017112011062800001560184120', '405', '99999999.99', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"26";}', 0, 0, '0', '99999999.99', ''),
(106, 'wechat', 6, 6, 'oSRY004apWoEmgGRX6tq94KeP8SE', '2017112011080600001552122222', '406', '99999999.99', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"27";}', 0, 0, '0', '99999999.99', ''),
(107, '', 6, 6, '26', '', '407', '2.00', 0, 'weisrc_dish', '', 0, 0, '', '2.00', ''),
(108, 'wechat', 6, 6, 'oSRY0002kWJeWI40pNCycPqBUO3E', '2017112015120300001546882422', '408', '1504.00', 0, 'weisrc_dish', 'a:2:{s:4:"acid";s:1:"6";s:3:"uid";s:2:"17";}', 0, 0, '0', '1504.00', ''),
(109, '', 6, 6, '16', '', '409', '8.00', 0, 'weisrc_dish', '', 0, 0, '', '8.00', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_performance`
--

CREATE TABLE IF NOT EXISTS `ims_core_performance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `runtime` varchar(10) NOT NULL,
  `runurl` varchar(512) NOT NULL,
  `runsql` varchar(512) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_queue`
--

CREATE TABLE IF NOT EXISTS `ims_core_queue` (
  `qid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `message` varchar(2000) NOT NULL,
  `params` varchar(1000) NOT NULL,
  `keyword` varchar(1000) NOT NULL,
  `response` varchar(2000) NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `module` (`module`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_refundlog`
--

CREATE TABLE IF NOT EXISTS `ims_core_refundlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `refund_uniontid` varchar(64) NOT NULL,
  `reason` varchar(80) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `refund_uniontid` (`refund_uniontid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_resource`
--

CREATE TABLE IF NOT EXISTS `ims_core_resource` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `trunk` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `acid` (`uniacid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_sendsms_log`
--

CREATE TABLE IF NOT EXISTS `ims_core_sendsms_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `createtime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_sessions`
--

CREATE TABLE IF NOT EXISTS `ims_core_sessions` (
  `sid` char(32) NOT NULL DEFAULT '',
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `data` varchar(5000) NOT NULL,
  `expiretime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_core_sessions`
--

INSERT INTO `ims_core_sessions` (`sid`, `uniacid`, `openid`, `data`, `expiretime`) VALUES
('1e638f1fd9dd1ca59a048d998f291803', 6, '101.226.66.174', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"aJHA";i:1511018467;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0002kWJeWI40pNCycPqBUO3E%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511022067),
('8456a3865cb9881ededcf8d41adae736', 6, '101.226.65.107', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"aYre";i:1511018482;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D5%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511022082),
('2bdc275e3048878c9f5609bb819d3eee', 6, '101.226.65.107', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"BpW0";i:1511018497;}dest_url|s:150:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DReservationIndex%26m%3Dweisrc_dish%26selectdate%3D2017-11-20";', 1511022097),
('c1109f17aa512c7c9867bc5271437c81', 6, '101.226.66.174', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"eP8Y";i:1511018502;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D401";', 1511022102),
('b4a4d8cf03fd6a0e65c6fc39729ecde8', 6, '101.226.65.107', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"K00S";i:1511018506;}dest_url|s:332:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D659519b5c48c353794abe10235c8bec844423578%26ps%3DeyJ0aWQiOiIxMDEiLCJ1bmlvbnRpZCI6IjIwMTcxMTE4MjMxODI5MDAwMDE1NjkyMjI2OTQiLCJ1c2VyIjoib1NSWTAwMDJrV0plV0k0MHBOQ3ljUHFCVU8zRSIsImZlZSI6IjUwLjAwIiwidGl0bGUiOiIlRTklQTQlOTAlRTklQTUlQUUyMDE3MTExODE4MzA3ODA2NzY3NSJ9";', 1511022106),
('7d7ea7cfedcf499297a2f5da906d5bf2', 6, '101.226.66.174', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"JpDg";i:1511018506;}dest_url|s:332:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D659519b5c48c353794abe10235c8bec844423578%26ps%3DeyJ0aWQiOiIxMDEiLCJ1bmlvbnRpZCI6IjIwMTcxMTE4MjMxODI5MDAwMDE1NjkyMjI2OTQiLCJ1c2VyIjoib1NSWTAwMDJrV0plV0k0MHBOQ3ljUHFCVU8zRSIsImZlZSI6IjUwLjAwIiwidGl0bGUiOiIlRTklQTQlOTAlRTklQTUlQUUyMDE3MTExODE4MzA3ODA2NzY3NSJ9";', 1511022106),
('47b53549c5b65f4df7901a7f2f4c1072', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"b14b";i:1511019416;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";', 1511023016),
('d633470ddfcd2ff9def5b3141c145926', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"j6hn";i:1511019423;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0002kWJeWI40pNCycPqBUO3E%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511023023),
('127695c8dc649292ada8ba4a25a62172', 6, '120.204.17.71', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"f505";i:1511019425;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";', 1511023025),
('b42ba6c1be5c458ed010a27e18fe71f9', 6, '101.226.65.107', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Vr7h";i:1511019602;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";', 1511023202),
('c90e2b365883e1f0c4791ee53970a1eb', 6, '211.97.130.129', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"Hv8w";i:1511138823;s:4:"z2hn";i:1511138824;s:4:"y5NF";i:1511138825;s:4:"b85i";i:1511138829;s:4:"Vse3";i:1511138834;s:4:"QCdD";i:1511138847;}dest_url|s:125:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D167%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY0002JvnXBtEpaAY6FbFSnWQY";oauth_acid|s:1:"6";openid|s:28:"oSRY0002JvnXBtEpaAY6FbFSnWQY";uid|s:2:"45";', 1511142447),
('225f27a002685e775937a932d8bbdd08', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"iRfS";i:1511138822;}dest_url|s:125:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D167%26do%3Ddetail%26m%3Dweisrc_dish";', 1511142422),
('ba65ba3b5400cee09b9c99c749825b5a', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Shat";i:1511138823;}dest_url|s:125:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D167%26do%3Ddetail%26m%3Dweisrc_dish";', 1511142423),
('f2a5c6d8b265a56141f410375b01f266', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"TTl9";i:1511152118;}dest_url|s:125:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dadminorderdetail%26m%3Dweisrc_dish%26orderid%3D406";', 1511155718),
('aa570dd316613a37a70a4b223f019f57', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ueH4";i:1511152124;}dest_url|s:179:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D406%26status%3Dcancel%26do%3Dsetadminorder%26m%3Dweisrc_dish%26totalprice%3D99999999.99%26remark%3D";', 1511155724),
('d3324c509d2844b02361c502b9ea87f7', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"bXiv";i:1511152125;}dest_url|s:125:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D406%26do%3Dadminorderdetail%26m%3Dweisrc_dish";', 1511155725),
('3e3034285fb1b2e16f2c34746586973c', 6, '120.204.17.67', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"CdXu";i:1511152132;}dest_url|s:179:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D406%26status%3Dcancel%26do%3Dsetadminorder%26m%3Dweisrc_dish%26totalprice%3D99999999.99%26remark%3D";', 1511155732),
('7da5dde9b114369e611e621207e068b2', 6, '121.51.32.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ht6g";i:1511152139;}dest_url|s:125:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D406%26do%3Dadminorderdetail%26m%3Dweisrc_dish";', 1511155739),
('f213770b616028f03916302818af12a5', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Wp3a";i:1511152148;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511155748),
('40a1a146828879879913edaa0c5fa4cb', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"uqKP";i:1511152149;}dest_url|s:103:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dusercenter%26m%3Dweisrc_dish";', 1511155749),
('15f4b7b2eafed16673a86d05ecd08f18', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"i67X";i:1511152151;}dest_url|s:103:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dadminorder%26m%3Dweisrc_dish";', 1511155751),
('80a093d03732db79aebe1bc10937f38a', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"w5wS";i:1511152153;}dest_url|s:125:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dadminorderdetail%26m%3Dweisrc_dish%26orderid%3D405";', 1511155753),
('74b60601ce312c34c947c0330ba9f68e', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"q17O";i:1511152157;}dest_url|s:179:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D405%26status%3Dcancel%26do%3Dsetadminorder%26m%3Dweisrc_dish%26totalprice%3D99999999.99%26remark%3D";', 1511155757),
('2ec1b5ad88cb5519675d65c87b4ec5a1', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"i9eS";i:1511152160;}dest_url|s:125:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D405%26do%3Dadminorderdetail%26m%3Dweisrc_dish";', 1511155760),
('ae6ea2569de90b7dbfdc78e3c54adbee', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"RJDT";i:1511152163;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511155763),
('b3daace39e581ce44c2aa28a3ba6f874', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"sNFt";i:1511152166;}dest_url|s:103:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dusercenter%26m%3Dweisrc_dish";', 1511155766),
('839147fdd6077f8153bfa23e2f242aa0', 6, '120.204.17.67', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"UyMq";i:1511152167;}dest_url|s:179:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D405%26status%3Dcancel%26do%3Dsetadminorder%26m%3Dweisrc_dish%26totalprice%3D99999999.99%26remark%3D";', 1511155767),
('0f6065c6611812f62da701674cd14d80', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"FGGl";i:1511152167;}dest_url|s:103:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dadminorder%26m%3Dweisrc_dish";', 1511155767),
('30d576afe707d985dbc12a2cdc187075', 6, '121.51.32.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"j060";i:1511152174;}dest_url|s:125:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D405%26do%3Dadminorderdetail%26m%3Dweisrc_dish";', 1511155774),
('419676a32fae69b7defca2975f3cfb9d', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"DRoc";i:1511152193;}dest_url|s:98:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorder%26m%3Dweisrc_dish";', 1511155793),
('898b64e61f392467f935e1f24daa1057', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"UV9a";i:1511152198;}dest_url|s:106:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Ddeliveryorder%26m%3Dweisrc_dish";', 1511155798),
('1e9abe242d991221ba1962b43d9e8d5f', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Ix0i";i:1511152421;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D406%26do%3Dorderdetail%26m%3Dweisrc_dish";', 1511156021),
('8ce2522c30079549fc8a3c942d482f5a', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"aCXs";i:1511160303;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511163903),
('67a8b16ad4d6fe578beb513a38e8687b', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ow9q";i:1511160306;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511163906),
('15508617fee1c08b166929fa34f95d98', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"G2KV";i:1511160308;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511163908),
('7c414a7573a4efc95606ec0d55bb25c5', 6, '121.51.32.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"AW88";i:1511161838;}dest_url|s:143:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26mode%3D1%26storeid%3D21%26tablesid%3D162%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511165438),
('6c14f1e7d589f448b15ff203157db3c9', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"F8z6";i:1511160312;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511163912),
('ea48bcf0adeda3d85a7503c0d02acff1', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"mBMI";i:1511160382;}dest_url|s:104:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dwaprestlist%26m%3Dweisrc_dish";', 1511163982),
('7bc87cefc9f234bb41d23351a42c8b49', 6, 'oSRY00_4HQL3U8SwTcdHz9PmjSnQ', 'openid|s:28:"oSRY00_4HQL3U8SwTcdHz9PmjSnQ";', 1511244543),
('87a946740991858103ab5dd704df7008', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"eh9T";i:1511161807;}dest_url|s:143:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26mode%3D1%26storeid%3D21%26tablesid%3D162%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511165407),
('23cbaaf1843f6137466b74cf4d562286', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"IQN0";i:1511161842;}dest_url|s:156:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26mode%3D1%26storeid%3D21%26tablesid%3D162%26append%3D1%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511165442),
('f6e0b36f7f32afb33007d7ecc74d93c3', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"er7K";i:1511162972;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511166572),
('77fb0019a70ca89ea04355b8b56061f9', 6, '183.192.201.97', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Yzed";i:1511161854;}dest_url|s:156:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26mode%3D1%26storeid%3D21%26tablesid%3D162%26append%3D1%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511165454),
('b6eff1f7f9227dd9c26260de1be3eda0', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"h3F4";i:1511161859;}dest_url|s:165:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D1%26tablesid%3D162%26type%3D1%26do%3DSendOperatorNotice%26m%3Dweisrc_dish";', 1511165459),
('beedce02f389ce59ef36bca111a47d44', 6, '120.204.17.67', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ksGZ";i:1511161864;}dest_url|s:165:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D1%26tablesid%3D162%26type%3D1%26do%3DSendOperatorNotice%26m%3Dweisrc_dish";', 1511165464),
('131e36fcad04f1d005f3c3f66558ff1b', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Ncfn";i:1511161868;}dest_url|s:143:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26mode%3D1%26storeid%3D21%26tablesid%3D162%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511165468),
('379bbf413b36d85c4484713b9bbf67c1', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"wKGp";i:1511161871;}dest_url|s:213:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0002kWJeWI40pNCycPqBUO3E%26storeid%3D21%26mode%3D1%26tablesid%3D162%26append%3D0%26orderid%3D0%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511165471),
('26b115efc18abe19be58c8bf76e5e6a5', 6, '223.104.6.20', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"v6w6";i:1511161873;s:4:"FkV5";i:1511161874;s:4:"jdv9";i:1511161876;s:4:"L0h9";i:1511161876;s:4:"n6wb";i:1511161925;s:4:"m9zq";i:1511161926;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";oauth_acid|s:1:"6";openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";uid|s:2:"16";', 1511165526),
('11e835e64a77c2417335c0f2f0b90e68', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"u97G";i:1511161875;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511165475),
('d09f876824af1515aa6a3f4ebcddb496', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"E4Nj";i:1511161875;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511165475),
('6c98955649b7db210d862ff14f31b020', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"zqMx";i:1511161877;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511165477),
('b89c1549249f496790a92756746f6f97', 6, '120.204.17.73', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"nUH7";i:1511161887;}dest_url|s:213:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0002kWJeWI40pNCycPqBUO3E%26storeid%3D21%26mode%3D1%26tablesid%3D162%26append%3D0%26orderid%3D0%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511165487),
('616c9ed6229c0ba5cb92126663979143', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"WzjY";i:1511161907;}dest_url|s:143:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26mode%3D1%26storeid%3D21%26tablesid%3D159%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511165507),
('5a56646f6d36a4604f2cf89561feee18', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Opz6";i:1511161918;}dest_url|s:213:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0002kWJeWI40pNCycPqBUO3E%26storeid%3D21%26mode%3D1%26tablesid%3D159%26append%3D0%26orderid%3D0%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511165518),
('81443ae9e7bb9dc299a45b6320fc7488', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"IbN2";i:1511161918;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D408";', 1511165518),
('5e5fd35c15b645ef1dc107c47e2e1e33', 6, '120.204.17.46', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"z748";i:1511161921;}dest_url|s:213:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0002kWJeWI40pNCycPqBUO3E%26storeid%3D21%26mode%3D1%26tablesid%3D159%26append%3D0%26orderid%3D0%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511165521),
('ddb994218094fa990618f75a57269598', 6, '58.247.212.98', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"phTo";i:1511161923;}dest_url|s:143:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26mode%3D1%26storeid%3D21%26tablesid%3D159%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511165523),
('ac475a5cde9f09d0d8965741ac4220b4', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"P34V";i:1511161924;}dest_url|s:338:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D5b2d2ab4af15b840077c11acfb17bc57c6b4174f%26ps%3DeyJ0aWQiOiIxMDgiLCJ1bmlvbnRpZCI6IjIwMTcxMTIwMTUxMjAzMDAwMDE1NDY4ODI0MjIiLCJ1c2VyIjoib1NSWTAwMDJrV0plV0k0MHBOQ3ljUHFCVU8zRSIsImZlZSI6IjE1MDQuMDAiLCJ0aXRsZSI6IiVFOSVBNCU5MCVFOSVBNSVBRTIwMTcxMTIwNjE5MTcxNDA2MTg1In0%3D";', 1511165524),
('c52db20a06536b5d59e229e914c81fd2', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"RWzu";i:1511161925;}dest_url|s:92:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dmc%26a%3Dcash%26do%3Dwechat%26";', 1511165525),
('126016b5d83cbd3d3a46edff2a8a5e97', 6, '58.247.212.98', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"U3rP";i:1511161927;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D408";', 1511165527),
('389bcbd56db49d81afc43355f5ae20c4', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"YPOc";i:1511161927;}dest_url|s:104:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dwaprestlist%26m%3Dweisrc_dish";', 1511165527),
('85ec69e2f85b982f8ab3b08b4c2c1da2', 6, '121.51.32.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"JI5J";i:1511161934;}dest_url|s:338:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D5b2d2ab4af15b840077c11acfb17bc57c6b4174f%26ps%3DeyJ0aWQiOiIxMDgiLCJ1bmlvbnRpZCI6IjIwMTcxMTIwMTUxMjAzMDAwMDE1NDY4ODI0MjIiLCJ1c2VyIjoib1NSWTAwMDJrV0plV0k0MHBOQ3ljUHFCVU8zRSIsImZlZSI6IjE1MDQuMDAiLCJ0aXRsZSI6IiVFOSVBNCU5MCVFOSVBNSVBRTIwMTcxMTIwNjE5MTcxNDA2MTg1In0%3D";', 1511165534),
('4a12b61e5110075670edebb9b491516d', 6, '101.226.233.147', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"iHxr";i:1511163307;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511166907),
('5f7b93f1291d0531f89517465ce3d12f', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"YarW";i:1511163314;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511166914),
('68737364b7259955fc536e4a65a97e04', 6, '183.192.201.97', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"jp9Z";i:1511163783;}dest_url|s:143:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26mode%3D1%26storeid%3D21%26tablesid%3D161%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511167383),
('ea514f7e47dd622113906bde183a0677', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"bnkY";i:1511163636;}dest_url|s:143:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26mode%3D1%26storeid%3D21%26tablesid%3D161%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511167236),
('0a4b9afcce222c67fbe2b259fe1baddf', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"hflH";i:1511163341;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0002kWJeWI40pNCycPqBUO3E%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511166941),
('8b2e1124a844bae41a6fae989ac0b62b', 6, '120.204.17.69', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"t8PR";i:1511163350;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0002kWJeWI40pNCycPqBUO3E%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511166950),
('bbbe7ddfcdfa9b22126b09198d54ff07', 6, '120.204.17.68', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"yU4G";i:1511163644;}dest_url|s:143:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26mode%3D1%26storeid%3D21%26tablesid%3D161%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511167244),
('736e78ac82f193c67baf1869b2a643e4', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"jw3t";i:1511163774;}dest_url|s:143:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26mode%3D1%26storeid%3D21%26tablesid%3D161%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511167374),
('e5342fbe78a47e10c9524c4a575cd97c', 6, '120.204.17.68', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Mf3r";i:1511164780;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";', 1511168380),
('3c832934eff405b201f564b93cae1086', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Ltac";i:1511164771;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";', 1511168371),
('9o1tm3q14p7s1gfl9p83lgh090', 7, '218.6.78.20', 'acid|s:1:"7";uniacid|i:7;token|a:1:{s:4:"vrn1";i:1511166394;}', 1511169994),
('7c84a479c0ed1f95c30cf07c763f9b14', 6, '27.154.73.219', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Qq7E";i:1511169967;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY00yS5yHUwKxVARp8b_21YceE";oauth_acid|s:1:"6";openid|s:28:"oSRY00yS5yHUwKxVARp8b_21YceE";uid|s:2:"18";', 1511173567),
('2441ba8584995b1f2c5931ae4a3c675c', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"XFTP";i:1511168751;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511172351),
('7453c4355ca2c7180fb15e922fd1e0d0', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"B3nh";i:1511168752;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511172352),
('185738866d86421d755a94f6637faa2f', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ZwoZ";i:1511168757;}dest_url|s:98:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorder%26m%3Dweisrc_dish";', 1511172357),
('11972a9304ea2ce475d3e2081269d718', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"EnC3";i:1511168759;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorderdetail%26m%3Dweisrc_dish%26orderid%3D325";', 1511172359),
('8f8039a8b2c8e48b47d4d4321e4bc3d8', 6, '58.247.212.98', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"A9GQ";i:1511168768;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorderdetail%26m%3Dweisrc_dish%26orderid%3D325";', 1511172368),
('ed684c04d1a7ccc8da742ab85d79f47d', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"sJs1";i:1511169188;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorderdetail%26m%3Dweisrc_dish%26orderid%3D323";', 1511172788),
('66fd17903c12e9da61e90e78f8e2c51a', 6, '120.204.17.68', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"hErU";i:1511169197;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorderdetail%26m%3Dweisrc_dish%26orderid%3D323";', 1511172797),
('4a20d617df85c82bd49a88a9c3d6348e', 6, 'oSRY0072FpN3_9fZLPvWtOuWTAz0', 'openid|s:28:"oSRY0072FpN3_9fZLPvWtOuWTAz0";', 1511176229),
('2522116e82e02157a6894e7c18a2000f', 6, '101.226.65.107', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"DS2M";i:1511169346;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorderdetail%26m%3Dweisrc_dish%26orderid%3D323";', 1511172946),
('6fa9a405b8a7aaeaf1ada99dc85e2f4c', 6, '101.226.233.143', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"fuUe";i:1511172927;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511176527),
('29b47dfefa750cb5d87aaaf59f9a6ea8', 6, '223.104.6.56', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"QM8o";i:1511172950;s:4:"NQ6X";i:1511172951;s:4:"VRi2";i:1511172995;s:4:"YYGy";i:1511173001;s:4:"g17p";i:1511173006;s:4:"S82m";i:1511173007;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";oauth_acid|s:1:"6";openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";uid|s:2:"16";', 1511176607),
('2ec8d0865e1730e6ac0df8b6a707bb22', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"qgbw";i:1511172930;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511176530),
('129956d7e828107b50ea6f0ac5cc56e1', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"GNL8";i:1511172930;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511176530),
('006c18115a74dd9a35b1b4ba0439ce5f', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"L33w";i:1511172931;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D4%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511176531),
('847b4c82938d8835b440f2d56757a9de', 6, '101.226.233.142', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"K2x4";i:1511172936;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY007ii1nrPRxSCeihLAxANMB8%26storeid%3D21%26mode%3D4%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511176536),
('1bc2418f35e445d8d3b83dd81f4ce9f6', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"wLdA";i:1511172940;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D409";', 1511176540),
('cdeb4ffbcf7dd64a0301e90714f93b21', 6, '101.226.233.142', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"X100";i:1511172949;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511176549),
('b2ef23eaf4548195ef200e913e283c9a', 6, '101.226.233.152', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ije0";i:1511172950;}dest_url|s:98:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorder%26m%3Dweisrc_dish";', 1511176550),
('e0c3e2c4ac9cb4db827787e83e151527', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"nD55";i:1511172951;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorderdetail%26m%3Dweisrc_dish%26orderid%3D409";', 1511176551),
('c6362ca1e6b0403cd7c1cdccc5d5a59f', 6, '120.204.17.73', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"C3tA";i:1511172961;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorderdetail%26m%3Dweisrc_dish%26orderid%3D409";', 1511176561),
('89609edbd64ebb07e8eda7d58b70a208', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"PxdK";i:1511172995;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511176595),
('a46a19fdbf7bd9e42f532cffdfddadaf', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"C3ys";i:1511173002;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D4%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511176602),
('3b97cd2b7f726556ba70644284b72c40', 6, '119.233.165.195', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"w2qh";i:1511227934;s:4:"KTGO";i:1511227966;s:4:"U2wt";i:1511227969;s:4:"HSew";i:1511227991;s:4:"Ey9c";i:1511227993;s:4:"ayQM";i:1511227995;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";oauth_acid|s:1:"6";openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";uid|s:2:"16";', 1511231595),
('4d84b2371d44dff1c2aafa972478b74c', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"qvEI";i:1511227875;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511231475),
('67a2dbc09c93c895adda5b7a409696ac', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"PvpZ";i:1511227876;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511231476),
('5db3d0fef3a158991261fae005e95a34', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"zbq8";i:1511227876;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511231476),
('da5f080500217bae7caf580b87d3a710', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"MxkL";i:1511227879;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511231479),
('bec14b6a0689a1b0e48542a351eaf5dd', 6, '101.226.233.142', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"sQbH";i:1511227880;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511231480),
('d60c896dae82ddbe696aa85361c85f11', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"zCMZ";i:1511227881;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D4%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511231481),
('6df10a41caa950e216c2a5b95e2d4989', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"o9ZK";i:1511227969;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511231569),
('96babacf4a0a64605868ac6144b9019b', 6, '101.226.233.158', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"sVHv";i:1511227991;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dsavewineform%26m%3Dweisrc_dish";', 1511231591),
('98f3af8ced4f38761507b8387f8a7297', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"TKEg";i:1511229239;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D401%26do%3Dorderdetail%26m%3Dweisrc_dish";', 1511232839),
('cb75c09372c4c197e8d8e07aeb2d3ea7', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"T8Z1";i:1511240803;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511244403),
('7f907e26fb30aac423055271649683aa', 6, '218.6.78.20', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"W0wp";i:1511240910;s:4:"C3sJ";i:1511240915;s:4:"OA7d";i:1511240917;s:4:"OH2j";i:1511240918;s:4:"wxZ7";i:1511240943;s:4:"JJ79";i:1511240944;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY00_4HQL3U8SwTcdHz9PmjSnQ";oauth_acid|s:1:"6";openid|s:28:"oSRY00_4HQL3U8SwTcdHz9PmjSnQ";uid|s:2:"49";', 1511244544),
('a7dfc8efc178e39da2932d46b59e44f3', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"f59C";i:1511240806;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D061LAASa2z33VO08p4Sa26ZySa2LAAS1%26state%3D0";', 1511244406),
('1a91db20c5c44dadeff2387ee676df22', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"nzQW";i:1511240806;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D0213Pd0D1Rvci30xpbZC1ize0D13Pd0K%26state%3D0";', 1511244406),
('9160219c1bac943f57183fc9dc218cf0', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"G7Ax";i:1511240807;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D0213Pd0D1Rvci30xpbZC1ize0D13Pd0K%26state%3D0";', 1511244407),
('7053725edc6efd569a6ccc987705e04e', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"P1PF";i:1511240807;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D061LAASa2z33VO08p4Sa26ZySa2LAAS1%26state%3D0";', 1511244407),
('90e8e2127e25ac5a57a67e8563abfe66', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"VRMM";i:1511240808;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511244408),
('f1cddf5dfbceb01faf1c4186d2c00e2c', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"O28U";i:1511240815;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D0213Pd0D1Rvci30xpbZC1ize0D13Pd0K%26state%3D0";', 1511244415),
('d417913c8331ab94dc0ff0a378b2c01d', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"TB8h";i:1511240816;}dest_url|s:103:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dusercenter%26m%3Dweisrc_dish";', 1511244416),
('a09c3451a04234fbf6b21b4f7371f871', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"mk43";i:1511240824;}dest_url|s:98:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorder%26m%3Dweisrc_dish";', 1511244424),
('516d23d231c44981890a1324a07390e1', 6, '120.204.17.71', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"eZ8m";i:1511240826;}dest_url|s:103:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dusercenter%26m%3Dweisrc_dish";', 1511244426),
('1225052bab228ff34093245fac00ca9b', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"vpJ2";i:1511240829;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511244429),
('0e08cc7de5a458c74cce8b66ad9bd6fc', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"XPQz";i:1511240833;}dest_url|s:119:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dallfeedback%26m%3Dweisrc_dish";', 1511244433),
('0fead03559ee3dafd0f82bbe278a17c4', 6, '120.204.17.68', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"x3L4";i:1511240843;}dest_url|s:119:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dallfeedback%26m%3Dweisrc_dish";', 1511244443),
('a3c3acc215d23203a93c323459a131a8', 6, '101.226.233.158', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"f3ad";i:1511240847;}dest_url|s:135:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D3%26do%3DreservationIndex%26m%3Dweisrc_dish";', 1511244447),
('658b620968691e967269fba7bc44ffdb', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"bKou";i:1511240848;}dest_url|s:135:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D3%26do%3DreservationIndex%26m%3Dweisrc_dish";', 1511244448),
('9d9408a5775465f16b130fcb63c80aef', 6, '101.226.233.143', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"r0UU";i:1511240854;}dest_url|s:150:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DReservationIndex%26m%3Dweisrc_dish%26selectdate%3D2017-11-22";', 1511244454),
('f04bd2ccbdba6bcab2f8c1ecebeda747', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"V4dr";i:1511240854;}dest_url|s:150:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DReservationIndex%26m%3Dweisrc_dish%26selectdate%3D2017-11-22";', 1511244454),
('18b803a415e412591940d9ed1fabf7c7', 6, '120.204.17.70', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"OAyn";i:1511240857;}dest_url|s:135:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D3%26do%3DreservationIndex%26m%3Dweisrc_dish";', 1511244457),
('05f77239c25002df1308a4390449bbe4', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"TXf6";i:1511240859;}dest_url|s:165:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DReservationDetail%26m%3Dweisrc_dish%26selectdate%3D2017-11-22%26timeid%3D17";', 1511244459),
('48c9ac408027f32362df2d0ed92c536a', 6, '120.204.17.73', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"F7nU";i:1511240864;}dest_url|s:150:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DReservationIndex%26m%3Dweisrc_dish%26selectdate%3D2017-11-22";', 1511244464),
('9036cb0316d6cbe0a88ada057c770fec', 6, '120.204.17.68', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"VULl";i:1511240867;}dest_url|s:165:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DReservationDetail%26m%3Dweisrc_dish%26selectdate%3D2017-11-22%26timeid%3D17";', 1511244467),
('5a4d067d63c2085bc5781e0f16512e1e', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ITN1";i:1511240882;}dest_url|s:113:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dqueue%26m%3Dweisrc_dish";', 1511244482),
('b8b477d4676cc9dc4cf37b00222276c9', 6, '101.226.233.152', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"b55N";i:1511240887;}dest_url|s:117:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dqueueform%26m%3Dweisrc_dish";', 1511244487),
('dfe291196b61b57abeec52c2e7759275', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"OM6G";i:1511240888;}dest_url|s:117:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dqueueform%26m%3Dweisrc_dish";', 1511244488),
('d1d4dc49359adb97ee671dddbffa031a', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Tb44";i:1511240900;}dest_url|s:113:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dqueue%26m%3Dweisrc_dish";', 1511244500),
('761c7360f5b172c98c2c651c56c0852a', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"qAHq";i:1511240910;}dest_url|s:119:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DcancelQueue%26m%3Dweisrc_dish";', 1511244510),
('4ccccc24afab751012a938a631c861c5', 6, '120.204.17.71', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"i7Qg";i:1511240920;}dest_url|s:119:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DcancelQueue%26m%3Dweisrc_dish";', 1511244520),
('dd4821e9d74da121f79e65aff305bfdc', 6, '101.226.233.152', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ZzIR";i:1511240943;}dest_url|s:78:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26eid%3D39";', 1511244543),
('f40ad930f5818ed5601d7c95d34980f8', 6, '183.192.201.97', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"CRy7";i:1511241799;}dest_url|s:78:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26eid%3D39";', 1511245399),
('65b597fc1dcd340c70eb0df61711515d', 6, '223.104.6.116', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"h1k2";i:1511243341;s:4:"PpEB";i:1511243342;s:4:"g70v";i:1511243344;s:4:"D222";i:1511243344;s:4:"Be79";i:1511243345;s:4:"D4zZ";i:1511243346;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";oauth_acid|s:1:"6";openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";uid|s:2:"16";', 1511246946),
('919346d9dd19b395f884ca547b5429de', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"b6Wh";i:1511243337;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511246937),
('c17f512ef61038d994e8cc63528b9820', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"kTwb";i:1511243338;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511246938),
('639cfffd5690c9460309fe277e01ff2d', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"sv7R";i:1511243338;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511246938),
('f9d44c09b7ce00bd01dede08ad3277ac', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"guwL";i:1511243339;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D01112Zc92PavER0R01f92OZid9212Zc7%26state%3D0";', 1511246939),
('6c37490d51c722a9a1ce2b6377388a71', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"zY9Y";i:1511243340;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D01112Zc92PavER0R01f92OZid9212Zc7%26state%3D0";', 1511246940),
('88f800711910907fa44b7524f8f1a639', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"nV3s";i:1511243343;}dest_url|s:98:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorder%26m%3Dweisrc_dish";', 1511246943),
('39efabafc55328d7a0e5d781bae4a2ca', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"WcU9";i:1511243344;}dest_url|s:103:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dusercenter%26m%3Dweisrc_dish";', 1511246944),
('45f0108a022f017b82a03ac887008fd0', 6, '27.154.73.219', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"Cnm0";i:1511248843;s:4:"O7m0";i:1511248844;s:4:"VcSg";i:1511248845;s:4:"ngj1";i:1511248845;s:4:"MxWx";i:1511248851;s:4:"kIH5";i:1511248853;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY00yS5yHUwKxVARp8b_21YceE";oauth_acid|s:1:"6";openid|s:28:"oSRY00yS5yHUwKxVARp8b_21YceE";uid|s:2:"18";', 1511252453),
('88bcb9d88c9fe6169f16dd1794044cce', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ERLR";i:1511248844;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511252444),
('2d2552685f2d59fd818251556660952a', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Vq2K";i:1511248845;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511252445),
('da94c2067cbc4517e770120e92219ce2', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"oVxf";i:1511248845;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D011ez6jQ17R4f91aQhiQ1IPViQ1ez6jU%26state%3D0";', 1511252445),
('3fa9f2bf20c05b617c7c9912429cbe38', 6, '101.226.233.147', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"PD8q";i:1511248848;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D011ez6jQ17R4f91aQhiQ1IPViQ1ez6jU%26state%3D0";', 1511252448),
('a0c9efe98de3205dba4f4ccbd282bb0e', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"KEYi";i:1511248851;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511252451),
('d2de1839b996bc86e16fd813886bed74', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"p9HR";i:1511248854;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D4%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511252454),
('386da1d42794bc5432449071feca4af5', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"l2A2";i:1511251777;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511255377),
('13a64a76656442a948c9bf62445b15c9', 6, '211.97.129.211', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"NkKQ";i:1511252001;s:4:"jggv";i:1511252008;s:4:"or40";i:1511252011;s:4:"YrlK";i:1511252016;s:4:"y553";i:1511252017;s:4:"zs0D";i:1511252020;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY00ymxuQQkyt71joCQe5uH1WQ";oauth_acid|s:1:"6";openid|s:28:"oSRY00ymxuQQkyt71joCQe5uH1WQ";uid|s:2:"47";', 1511255620),
('3ae07e6e8e93dbbfc24f86ab9c2b07e9', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Wjg1";i:1511251779;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511255379),
('5c12a930896465e1674dded42e15ab28', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"v632";i:1511251780;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D081Cctma0tS2tw1no5qa04oqma0Cctmm%26state%3D0";', 1511255380),
('9ec27dd33f98acd6d2b38596a1651181', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"S1h9";i:1511251780;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D081Cctma0tS2tw1no5qa04oqma0Cctmm%26state%3D0";', 1511255380),
('dd8a509e4e4236a395df99f6b9f46e7f', 6, '101.226.233.148', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"JG82";i:1511251794;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D4%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511255394),
('0c7e3227076271a36575f1f13a930896', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"iVK8";i:1511251806;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY00ymxuQQkyt71joCQe5uH1WQ%26storeid%3D21%26mode%3D4%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511255406),
('b70e1bc608ec53ceb34c7b3f8aef8994', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"vH4n";i:1511251819;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";', 1511255419),
('b6dbb5906c66aa9e817d0fd8eca6f5a2', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"W22I";i:1511251826;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511255426),
('83e677afb06fe5a9ad3342cd77aa4687', 6, '183.192.201.97', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"e7tQ";i:1511251830;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";', 1511255430),
('31a296cd3cc477cb84db8a438bb92e90', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Z6z8";i:1511252002;}dest_url|s:143:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26mode%3D1%26storeid%3D21%26tablesid%3D159%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511255602),
('f9ea9cee8a9ac35c699ca07a0be5189d', 6, '120.204.17.70', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"yqjN";i:1511252011;}dest_url|s:143:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26mode%3D1%26storeid%3D21%26tablesid%3D159%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511255611),
('58ed0300258043966a96b28c2ae7c99c', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ZQq0";i:1511252025;}dest_url|s:213:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY00ymxuQQkyt71joCQe5uH1WQ%26storeid%3D21%26mode%3D1%26tablesid%3D159%26append%3D0%26orderid%3D0%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511255625),
('5350d698ce2309f42a8d334e35155447', 6, 'oSRY00-8Udss0lTrtr-ZSwOJEC2I', 'openid|s:28:"oSRY00-8Udss0lTrtr-ZSwOJEC2I";', 1511268547),
('0f19b12290758b41fa430431b1d8ace3', 6, '27.154.76.247', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"LYyl";i:1511264954;s:4:"zzOu";i:1511264959;s:4:"B3FZ";i:1511264961;s:4:"uB78";i:1511264964;s:4:"ne68";i:1511264964;s:4:"XE3P";i:1511264970;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY00-8Udss0lTrtr-ZSwOJEC2I";oauth_acid|s:1:"6";openid|s:28:"oSRY00-8Udss0lTrtr-ZSwOJEC2I";uid|s:2:"51";', 1511268570);
INSERT INTO `ims_core_sessions` (`sid`, `uniacid`, `openid`, `data`, `expiretime`) VALUES
('69b95bd63153c272b54060616a0f9397', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"NDpU";i:1511264949;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511268549),
('a6a420c3778be97923c7a5d5f3cf6c7c', 6, '101.226.233.143', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"A33p";i:1511264949;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511268549),
('b59e1df2e35e54af1b2d442361017b9e', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"zJ7e";i:1511264950;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511268550),
('e66a8a1c0b972a057fbba8cc9dcfc365', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"oTh8";i:1511264950;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511268550),
('2f41fddd22acc9b293e05c7bf3b06649', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"S8W6";i:1511264951;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511268551),
('b517964db3afd2a770152a3095f0976f', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"D08b";i:1511264953;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511268553),
('eeccb909cd485b7b22d36e0294ab6f26', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Peoh";i:1511264954;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D0117hd9e0wyX4A1Uh29e0aHu9e07hd9j%26state%3D0";', 1511268554),
('3417aa13e7315782a16a37ea8e4cbfd5', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"F9uf";i:1511264954;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D0117hd9e0wyX4A1Uh29e0aHu9e07hd9j%26state%3D0";', 1511268554),
('44e43ad2f67dc832f64c3d14a9b0b8fb', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Lyf8";i:1511264954;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511268554),
('e9a6fd5cdab1f54e8f20f4bb1eea20ca', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ElYD";i:1511264959;}dest_url|s:98:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorder%26m%3Dweisrc_dish";', 1511268559),
('fea2089fc6d89c76966d5b8cbd1e5a6b', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"bf4R";i:1511264965;}dest_url|s:103:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dusercenter%26m%3Dweisrc_dish";', 1511268565),
('385e246d2821392f75b20005d0adb2fe', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Rb96";i:1511138823;}dest_url|s:152:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D167%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511142423),
('51c1ccc20d87b11250ce558e26ae449d', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"qad9";i:1511138824;}dest_url|s:179:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D167%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D021Ztefa0Uonkw1MOmga0hqyfa0Ztefl%26state%3D0";', 1511142424),
('592ec4ce6dbc79269995fccd1f6374ad', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"p42t";i:1511138824;}dest_url|s:179:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D167%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D021Ztefa0Uonkw1MOmga0hqyfa0Ztefl%26state%3D0";', 1511142424),
('4eaa2ea5d95c56bdf94bb6b9aac4b7a8', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"aldo";i:1511138829;}dest_url|s:135:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D3%26do%3DreservationIndex%26m%3Dweisrc_dish";', 1511142429),
('943364755b4cf1248e255f4f1fba8b99', 6, '58.247.212.98', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"eD34";i:1511138831;}dest_url|s:125:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D167%26do%3Ddetail%26m%3Dweisrc_dish";', 1511142431),
('9b14d81ebb45f3fba578c5f8650cb55b', 6, '101.226.233.143', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Apiw";i:1511138835;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511142435),
('a1c2e2472a7ef184048ce8f2bf97b6f4', 6, '120.204.17.67', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"V9MW";i:1511138839;}dest_url|s:135:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D3%26do%3DreservationIndex%26m%3Dweisrc_dish";', 1511142439),
('5efea274a9814f35b6e3c3e3923fa948', 6, '58.247.212.98', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Ot6Z";i:1511138844;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511142444),
('000948009ab4d47fee124ab0bbe7e235', 6, '101.226.233.158', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Ks1B";i:1511138847;}dest_url|s:119:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dallfeedback%26m%3Dweisrc_dish";', 1511142447),
('bc21d2bbcf58b70b11aa355124a6a156', 6, '58.247.212.98', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"OLq6";i:1511138857;}dest_url|s:119:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dallfeedback%26m%3Dweisrc_dish";', 1511142457),
('a60ac3a4f405567854a3b8abc9defe09', 6, '101.226.66.174', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"NVc0";i:1511138998;}dest_url|s:119:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dallfeedback%26m%3Dweisrc_dish";', 1511142598),
('4b23de57c3fd7520c27277b4d812e391', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"O6va";i:1511140763;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511144363),
('1a088263bcae088d13a2fdf5049f91bc', 6, '223.104.6.52', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"fvuM";i:1511140766;s:4:"uuM8";i:1511140767;s:4:"m5tA";i:1511140772;s:4:"uXg8";i:1511140773;s:4:"x5eM";i:1511140775;s:4:"x3D1";i:1511140779;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY000uHhXcjQ6jvJ9QemtELGmQ";oauth_acid|s:1:"6";openid|s:28:"oSRY000uHhXcjQ6jvJ9QemtELGmQ";uid|s:2:"48";', 1511144379),
('366f5711e0e5d0d1ff93bacdc36f2a21', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Tm7R";i:1511140774;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511144374),
('ddd7ff243cd62d2aecfac0dabb35acd5', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"kVAe";i:1511140778;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D0015STNE0Ay1oe21y8PE0tU6OE05STNb%26state%3D0";', 1511144378),
('cf0f312f06f5c11458dc691b0d841bf2', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"N468";i:1511140780;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D0015STNE0Ay1oe21y8PE0tU6OE05STNb%26state%3D0";', 1511144380),
('ccbbdda490daed9e8da49779006f3878', 6, '120.204.17.69', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"zkmz";i:1511141059;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511144659),
('7b388381dd65dcb8d1c21dc1fa489080', 6, '140.243.124.113', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"gD8l";i:1511145908;s:4:"d9Qv";i:1511145909;s:4:"UI9v";i:1511145915;s:4:"iHA7";i:1511145915;s:4:"aNFd";i:1511145929;s:4:"Pw1S";i:1511145937;}dest_url|s:78:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26eid%3D39";oauth_openid|s:28:"oSRY0069zmR3bYgg6-YSEbdA-K1E";oauth_acid|s:1:"6";openid|s:28:"oSRY0069zmR3bYgg6-YSEbdA-K1E";uid|s:2:"21";', 1511149537),
('93ff6829c492c79853207314655704ea', 6, '101.226.233.158', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ue9h";i:1511143710;}dest_url|s:78:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26eid%3D39";', 1511147310),
('d8578c54e1798f2f2b0b55ed55c9b794', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"c5oT";i:1511143712;}dest_url|s:105:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26eid%3D39%26wxref%3Dmp.weixin.qq.com";', 1511147312),
('58335d0545a9c224e741640ce4c1f28b', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"U4r4";i:1511143713;}dest_url|s:105:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26eid%3D39%26wxref%3Dmp.weixin.qq.com";', 1511147313),
('1e76946b252de3bf22983c30ff378726', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"J5bs";i:1511145709;}dest_url|s:101:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dmycoupon%26m%3Dweisrc_dish";', 1511149309),
('650a03aedc1a4f65de3a73eadb936d64', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"GMSm";i:1511143714;}dest_url|s:105:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26eid%3D39%26wxref%3Dmp.weixin.qq.com";', 1511147314),
('0475a34060e3a7cff8cabdb704b6f86c', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"qSrP";i:1511143715;}dest_url|s:171:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26agentid%3D0%26do%3DUserCenter%26m%3Dweisrc_dish%26code%3D061GzqPA1v6XRe0j8OOA1hlAPA1GzqPU%26state%3D0";', 1511147315),
('ff6530aa6198c7d81d2e92d5d0b95e98', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"dx5L";i:1511143716;}dest_url|s:171:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26agentid%3D0%26do%3DUserCenter%26m%3Dweisrc_dish%26code%3D061GzqPA1v6XRe0j8OOA1hlAPA1GzqPU%26state%3D0";', 1511147316),
('e2f0d9f1a88d8df4bb41f941b03f98be', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"zHT1";i:1511143732;}dest_url|s:103:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dadminorder%26m%3Dweisrc_dish";', 1511147332),
('78a582924ab8664f05b646d16ba19abf', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"O5CJ";i:1511143767;}dest_url|s:105:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dsavewinelist%26m%3Dweisrc_dish";', 1511147367),
('b099594332255f7345193cd48c610821', 6, '120.204.17.73', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"fese";i:1511143777;}dest_url|s:105:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dsavewinelist%26m%3Dweisrc_dish";', 1511147377),
('4afbb6f4d40491426cbb37d52d5fc17c', 6, '120.204.17.68', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"stM7";i:1511144295;}dest_url|s:78:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26eid%3D39";', 1511147895),
('d57240443261a251dd7ad4e6b00f4998', 6, '183.192.201.97', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"PFl6";i:1511144373;}dest_url|s:103:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dadminorder%26m%3Dweisrc_dish";', 1511147973),
('b6adf01f37a4bdf91d2b165effe2aade', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"s11O";i:1511146765;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D404%26do%3Dorderdetail%26m%3Dweisrc_dish";', 1511150365),
('887f0e828e750377cc81d38a59db3e3a', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Rhji";i:1511145712;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dmycoupon%26m%3Dweisrc_dish%26type%3D2";', 1511149312),
('190c6bd1f013f9533a29eb61246b7a9d', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"MT4B";i:1511145712;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dmycoupon%26m%3Dweisrc_dish%26type%3D2";', 1511149312),
('3a10f53c75585115e94a59a094c23b1d', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"fDUu";i:1511145713;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dmycoupon%26m%3Dweisrc_dish%26type%3D3";', 1511149313),
('3d84a7abf5520e9315d6e406520a6b55', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"XoJW";i:1511145713;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dmycoupon%26m%3Dweisrc_dish%26type%3D3";', 1511149313),
('db3e43e20617ca75eea885b28dc7d269', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"rc9k";i:1511145714;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dmycoupon%26m%3Dweisrc_dish%26type%3D1";', 1511149314),
('92c849c5e57c4a6490e63eef2562f1a6', 6, '183.192.201.97', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"veWO";i:1511145719;}dest_url|s:101:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dmycoupon%26m%3Dweisrc_dish";', 1511149319),
('9c5aab9c9c5151aa28372668b9faa520', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"K6mI";i:1511145720;}dest_url|s:78:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26eid%3D39";', 1511149320),
('60ae74bff693b44dd7fbe278dad25904', 6, '120.204.17.67', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Ckjp";i:1511145724;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dmycoupon%26m%3Dweisrc_dish%26type%3D3";', 1511149324),
('8056cc2119104918f80e6dc9c7dba426', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"v9Gz";i:1511145743;}dest_url|s:103:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dusercenter%26m%3Dweisrc_dish";', 1511149343),
('32180a8f3d83d48ce1ac9951b4b14494', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"voE0";i:1511145745;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511149345),
('e008a6abd1f3cc975635c852008b603f', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Kz39";i:1511145752;}dest_url|s:119:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dallfeedback%26m%3Dweisrc_dish";', 1511149352),
('3d5c0bbdf5fdc2095fc1f419dd2b4441', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"pr35";i:1511145752;}dest_url|s:119:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dallfeedback%26m%3Dweisrc_dish";', 1511149352),
('fb6056097b4eda2bac60e34ec86ccd95', 6, '120.204.17.69', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"q7e7";i:1511145753;}dest_url|s:103:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dusercenter%26m%3Dweisrc_dish";', 1511149353),
('0ba2a039b76e5eb9f117162f7ee24ca0', 6, '101.226.233.157', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"H2az";i:1511145769;}dest_url|s:104:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dwaprestlist%26m%3Dweisrc_dish";', 1511149369),
('051ae361b3837e6d03f862ca23650863', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ELZt";i:1511145774;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511149374),
('80104f192baf46b3d3dc9e907c6ceb03', 6, '58.247.212.98', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"coz6";i:1511145778;}dest_url|s:104:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dwaprestlist%26m%3Dweisrc_dish";', 1511149378),
('55f8cf6dd46ca8476d28fdd890427fa7', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"AHVC";i:1511145784;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0069zmR3bYgg6-YSEbdA-K1E%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511149384),
('e088ddac978130a21fe0acb956139a6f', 6, '183.192.201.97', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"lwDu";i:1511145793;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0069zmR3bYgg6-YSEbdA-K1E%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511149393),
('70f344244e92c6254a4fb4531011eec5', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"KqOo";i:1511145828;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511149428),
('a4e055aa7677ae3d19e26cb94df668d1', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"cFXF";i:1511145832;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511149432),
('37dcc66671a3b7718f851a8a1df1028d', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"rzmz";i:1511145867;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0069zmR3bYgg6-YSEbdA-K1E%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511149467),
('bfd9ebfdaf72ef3478f0b4e9ccba509d', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"IpJP";i:1511145867;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0069zmR3bYgg6-YSEbdA-K1E%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511149467),
('fc1fb35ff77396b6ec350d341cb040a1', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"hsU1";i:1511145909;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D402";', 1511149509),
('116cf63a8d5fb86c5c372aa5391ffc85', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"m7cY";i:1511145910;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D402";', 1511149510),
('51fef5b362c6ec34a30855d0d3801f59', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"LBv4";i:1511145915;}dest_url|s:92:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dmc%26a%3Dcash%26do%3Dwechat%26";', 1511149515),
('6c11037d8040e9ed7390168c36b04f21', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"owq1";i:1511145916;}dest_url|s:334:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D1813b50a7d3bd68386a745b461cd1098a3d40191%26ps%3DeyJ0aWQiOiIxMDIiLCJ1bmlvbnRpZCI6IjIwMTcxMTIwMTA0NTE1MDAwMDE1NTQ2NTE1MjQiLCJ1c2VyIjoib1NSWTAwNjl6bVIzYllnZzYtWVNFYmRBLUsxRSIsImZlZSI6IjAuMTAiLCJ0aXRsZSI6IiVFOSVBNCU5MCVFOSVBNSVBRTIwMTcxMTIwNDU5MDkwMTEwMDk0In0%3D";', 1511149516),
('4acdca22eb0ddcdcd5e2314067238ef5', 6, '120.204.17.68', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"o096";i:1511145925;}dest_url|s:334:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D1813b50a7d3bd68386a745b461cd1098a3d40191%26ps%3DeyJ0aWQiOiIxMDIiLCJ1bmlvbnRpZCI6IjIwMTcxMTIwMTA0NTE1MDAwMDE1NTQ2NTE1MjQiLCJ1c2VyIjoib1NSWTAwNjl6bVIzYllnZzYtWVNFYmRBLUsxRSIsImZlZSI6IjAuMTAiLCJ0aXRsZSI6IiVFOSVBNCU5MCVFOSVBNSVBRTIwMTcxMTIwNDU5MDkwMTEwMDk0In0%3D";', 1511149525),
('1b74060bfe9acddb8ad19108c312947b', 6, '120.204.17.67', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"X4Rn";i:1511145925;}dest_url|s:92:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dmc%26a%3Dcash%26do%3Dwechat%26";', 1511149525),
('6e8b26534d8a28dd230b8b157d8c9794', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"J2Df";i:1511145929;}dest_url|s:345:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D1813b50a7d3bd68386a745b461cd1098a3d40191%26ps%3DeyJ0aWQiOiIxMDIiLCJ1bmlvbnRpZCI6IjIwMTcxMTIwMTA0NTE1MDAwMDE1NTQ2NTE1MjQiLCJ1c2VyIjoib1NSWTAwNjl6bVIzYllnZzYtWVNFYmRBLUsxRSIsImZlZSI6IjAuMTAiLCJ0aXRsZSI6IiVFOSVBNCU5MCVFOSVBNSVBRTIwMTcxMTIwNDU5MDkwMTEwMDk0In0%3D%26done%3D1";', 1511149529),
('21af3a847c5b109a2ef262941b156204', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"rnnD";i:1511145938;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D402%26do%3Dorderdetail%26m%3Dweisrc_dish";', 1511149538),
('f50f405bfcc8b707bd8b5013e0717310', 6, '183.192.201.97', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"vNPC";i:1511145939;}dest_url|s:345:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D1813b50a7d3bd68386a745b461cd1098a3d40191%26ps%3DeyJ0aWQiOiIxMDIiLCJ1bmlvbnRpZCI6IjIwMTcxMTIwMTA0NTE1MDAwMDE1NTQ2NTE1MjQiLCJ1c2VyIjoib1NSWTAwNjl6bVIzYllnZzYtWVNFYmRBLUsxRSIsImZlZSI6IjAuMTAiLCJ0aXRsZSI6IiVFOSVBNCU5MCVFOSVBNSVBRTIwMTcxMTIwNDU5MDkwMTEwMDk0In0%3D%26done%3D1";', 1511149539),
('f0c4db9a2ebab283b338d6f9692d3b49', 6, '120.204.17.71', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"HyAH";i:1511145948;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D402%26do%3Dorderdetail%26m%3Dweisrc_dish";', 1511149548),
('16bb3dcdf5a576d3a98e35ec85e2968b', 6, '223.104.6.28', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"J6o7";i:1511146830;s:4:"knv6";i:1511146833;s:4:"k9IY";i:1511146834;s:4:"Lq8l";i:1511146834;s:4:"CxDf";i:1511146835;s:4:"u6aw";i:1511146840;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D402%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY0002kWJeWI40pNCycPqBUO3E";oauth_acid|s:1:"6";openid|s:28:"oSRY0002kWJeWI40pNCycPqBUO3E";uid|s:2:"17";', 1511150440),
('a090a209a83453f7fb92f575b9f59c2c', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ge00";i:1511146028;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D402%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish";', 1511149628),
('b8cdfda8d4f43876a7c1b7a346f0ee8c', 6, '101.226.233.148', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"GHZK";i:1511146028;}dest_url|s:155:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D402%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511149628),
('12d9f11a1604bc23df6be91506ee2766', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"rTST";i:1511146030;}dest_url|s:155:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D402%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511149630),
('4c42af0c1831da876aee750c84d9482d', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"SZQr";i:1511146799;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D404%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish";', 1511150399),
('cf8f10918fade3924350c80c5336ae59', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"WzZ2";i:1511146030;}dest_url|s:155:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D402%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511149630),
('b9e83186dc869947336eb81c9aaecea4', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"KvMk";i:1511146031;}dest_url|s:182:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D402%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish%26code%3D0212LfT220pe6Z07L5W22oOwT222LfT8%26state%3D0";', 1511149631),
('a03e47673e1bb7d2cbab137ec7207b69', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"i906";i:1511146031;}dest_url|s:182:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D402%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish%26code%3D0212LfT220pe6Z07L5W22oOwT222LfT8%26state%3D0";', 1511149631),
('b72bde7b562f0a12edd26ae700429a73', 6, 'oSRY005yh2cXkbIoumh2yvD4rc3Y', 'openid|s:28:"oSRY005yh2cXkbIoumh2yvD4rc3Y";', 1511156496),
('22636ff1a4f742f52d281e86bf064319', 6, '120.204.17.70', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Cc1q";i:1511146037;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D402%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish";', 1511149637),
('6a6f9b0f209831535f7b76620152c9ad', 6, '140.243.125.60', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"sMJv";i:1511146270;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511149870),
('fd5bd5cba318b21903ff72e81eb1a06c', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Ly0l";i:1511146270;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511149870),
('09a1b56943c06ac345868f8700b993fa', 6, '140.243.125.60', 'acid|s:1:"6";uniacid|i:6;token|a:2:{s:4:"V08D";i:1511152421;s:4:"d111";i:1511152422;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY004apWoEmgGRX6tq94KeP8SE";oauth_acid|s:1:"6";openid|s:28:"oSRY004apWoEmgGRX6tq94KeP8SE";uid|s:2:"27";', 1511156022),
('218daadff17621e25d2d9b832cdf3aab', 6, '27.154.98.229', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"fouw";i:1511150408;s:4:"Eb7q";i:1511150411;s:4:"WU2I";i:1511150412;s:4:"z1O0";i:1511150415;s:4:"snkG";i:1511150417;s:4:"pc7G";i:1511150420;}dest_url|s:143:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26mode%3D1%26storeid%3D21%26tablesid%3D160%26do%3Dwaplist%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY0002kWJeWI40pNCycPqBUO3E";oauth_acid|s:1:"6";openid|s:28:"oSRY0002kWJeWI40pNCycPqBUO3E";uid|s:2:"17";', 1511154020),
('30df29322274119ce5cd7a2b75b5e711', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"iAzA";i:1511146273;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511149873),
('2eef65c0044c24f02cddcb5925f67c85', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"bE4u";i:1511146273;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D061cTC9L0NBUf72GuU9L0o8P9L0cTC94%26state%3D0";', 1511149873),
('ea561d277596c19667f7d9b15269532e', 6, '101.226.233.147', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"eQZr";i:1511146274;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D061cTC9L0NBUf72GuU9L0o8P9L0cTC94%26state%3D0";', 1511149874),
('feac5c864220744925a5ad4f28baff77', 6, '58.247.212.98', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"kadh";i:1511146280;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511149880),
('f12a6a089d788f6aa6943d9be1a0c671', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ajii";i:1511146285;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511149885),
('c208b1cd09dacb225827298f43aa43e6', 6, '58.247.212.98', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"abVb";i:1511146400;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dmycoupon%26m%3Dweisrc_dish%26type%3D2";', 1511150000),
('027743e99b10807eaf8957df7c659cda', 6, '120.204.17.67', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"UfWz";i:1511146622;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D402";', 1511150222),
('3e99ab491509823a6782088feb123963', 6, '101.226.233.158', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ljDG";i:1511146636;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511150236),
('8fa22d232bbba3ff0daa27606ccc51fb', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"o7nn";i:1511146638;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511150238),
('536310f672b34bd9958793fd513869cc', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Xom7";i:1511150444;}dest_url|s:122:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D404%26do%3Ddeliveryorder%26m%3Dweisrc_dish";', 1511154044),
('7c6a4d0e13d9e9b3ac10212b0f3cba09', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"v71U";i:1511146639;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511150239),
('2aa9f938140b4d74b67b5f190d57fe55', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Ig5V";i:1511146640;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D021BuJY921Qt2O0CDCZ926TRY92BuJYF%26state%3D0";', 1511150240),
('1d5020805ebb8ea8aa66a2d02342ee6d', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"IOta";i:1511146641;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D071mDiK41aJcYL1AzkL41I0tK41mDiKi%26state%3D0";', 1511150241),
('79327fc3b70dc43344075221cf0272b1', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"NR8z";i:1511146641;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D021BuJY921Qt2O0CDCZ926TRY92BuJYF%26state%3D0";', 1511150241),
('c087833dab499c6392e80079ed9564e4', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"fp7d";i:1511146641;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D071mDiK41aJcYL1AzkL41I0tK41mDiKi%26state%3D0";', 1511150241),
('90979a3d3d1de39bfb39befd42aa9d9a', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"iGLH";i:1511146649;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D4%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511150249),
('96cbb0bee50a796496b74902b5d1d24e', 6, '120.204.17.70', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"e5ZV";i:1511146657;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D4%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511150257),
('f4396fdac94a19d10d576a09c0b4c388', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Z0qY";i:1511146674;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY005yh2cXkbIoumh2yvD4rc3Y%26storeid%3D21%26mode%3D4%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511150274),
('f1eadcfdb5af71253475de2954b672fc', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"IFeg";i:1511146674;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY005yh2cXkbIoumh2yvD4rc3Y%26storeid%3D21%26mode%3D4%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511150274),
('d29075538a01dc635dd297b22a17b668', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"y6R9";i:1511146676;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D403";', 1511150276),
('1bb181b3b54a58c259f0232cf27ddf92', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"tAva";i:1511146676;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D403";', 1511150276),
('6676e52097af4e08924c18448c750e4b', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"fW07";i:1511146679;}dest_url|s:92:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dmc%26a%3Dcash%26do%3Dwechat%26";', 1511150279),
('c6c13a74a0bf4e0cfa9203374e410e8c', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"R7ZS";i:1511146679;}dest_url|s:334:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D29b62e8c72768cc7cc247cc27fa83a96360dc1a0%26ps%3DeyJ0aWQiOiIxMDMiLCJ1bmlvbnRpZCI6IjIwMTcxMTIwMTA1NzU4MDAwMDE1NjgzMjEyNDAiLCJ1c2VyIjoib1NSWTAwNXloMmNYa2JJb3VtaDJ5dkQ0cmMzWSIsImZlZSI6IjAuMDYiLCJ0aXRsZSI6IiVFOSVBNCU5MCVFOSVBNSVBRTIwMTcxMTIwNDY2NzUzMTAzNzU5In0%3D";', 1511150279),
('c0321764e3908843a8c3b58d7e4a9204', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"U9J9";i:1511146679;}dest_url|s:334:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D29b62e8c72768cc7cc247cc27fa83a96360dc1a0%26ps%3DeyJ0aWQiOiIxMDMiLCJ1bmlvbnRpZCI6IjIwMTcxMTIwMTA1NzU4MDAwMDE1NjgzMjEyNDAiLCJ1c2VyIjoib1NSWTAwNXloMmNYa2JJb3VtaDJ5dkQ0cmMzWSIsImZlZSI6IjAuMDYiLCJ0aXRsZSI6IiVFOSVBNCU5MCVFOSVBNSVBRTIwMTcxMTIwNDY2NzUzMTAzNzU5In0%3D";', 1511150279),
('6c36bd85d4925076abbd578454efdafa', 6, '183.192.201.97', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"YirF";i:1511146684;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY005yh2cXkbIoumh2yvD4rc3Y%26storeid%3D21%26mode%3D4%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511150284),
('2f570d2484973e33b5bde1a7a85b7cf3', 6, '120.204.17.68', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"nPQ7";i:1511146685;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D403";', 1511150285),
('ddb9c22bfe7737f50d959979c33fbb61', 6, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 'openid|s:28:"oSRY002sNxP0bwNvR-pdAsYYFKz8";', 1511156490),
('1bc72d347b5148cf3cc822d620043a4c', 6, '27.154.73.219', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"f1R1";i:1511146711;s:4:"JiI5";i:1511146712;s:4:"a02f";i:1511146719;s:4:"VRQg";i:1511146724;s:4:"q3E6";i:1511146727;s:4:"m9iB";i:1511146727;}dest_url|s:122:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D402%26do%3Ddeliveryorder%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY00yS5yHUwKxVARp8b_21YceE";oauth_acid|s:1:"6";openid|s:28:"oSRY00yS5yHUwKxVARp8b_21YceE";uid|s:2:"18";', 1511150327),
('edbbfafdae7ce81e831f91e88b3dff31', 6, '223.104.6.17', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"IAr8";i:1511149553;s:4:"B7EE";i:1511149565;s:4:"kGqq";i:1511149568;s:4:"zn00";i:1511149573;s:4:"YdKr";i:1511149575;s:4:"Khtt";i:1511149576;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";oauth_openid|s:28:"oSRY002sNxP0bwNvR-pdAsYYFKz8";oauth_acid|s:1:"6";openid|s:28:"oSRY002sNxP0bwNvR-pdAsYYFKz8";uid|s:2:"26";', 1511153176),
('155c4e59e4f7325b1707583bbd6e4109', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"CQ4X";i:1511146709;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";', 1511150309),
('c991d0c0e4854eb53b82ece3015427bc', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"kRyg";i:1511146710;}dest_url|s:160:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Ddeliveryorder%26m%3Dweisrc_dish%26code%3D071grnam1LCsoi0Hiwdm1sRmam1grna2%26state%3D0";', 1511150310),
('2de67af79606b7946835fe59c45215fe', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"RA20";i:1511146710;}dest_url|s:160:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Ddeliveryorder%26m%3Dweisrc_dish%26code%3D071grnam1LCsoi0Hiwdm1sRmam1grna2%26state%3D0";', 1511150310),
('6fe7f0f044dd028666aa5f93a1211994', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"N7Rm";i:1511146710;}dest_url|s:122:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D402%26do%3Ddeliveryorder%26m%3Dweisrc_dish";', 1511150310),
('cb111776499ab5803011b66804488a90', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"qj25";i:1511146711;}dest_url|s:153:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2%26wxref%3Dmp.weixin.qq.com";', 1511150311),
('74a6a20481cb191564496e4377202a40', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"qYmy";i:1511146711;}dest_url|s:149:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D402%26do%3Ddeliveryorder%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511150311),
('02e9b675a708cdfce36ef38883b578a7', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"KGWg";i:1511146712;}dest_url|s:194:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26agentid%3D0%26do%3Dwaplist%26m%3Dweisrc_dish%26code%3D011tys570KsAEG1Es6370TbK570tys5q%26state%3D0";', 1511150312),
('3de2910c64295f4d720fe3fa6e71ffa4', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"DGp0";i:1511146712;}dest_url|s:194:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26agentid%3D0%26do%3Dwaplist%26m%3Dweisrc_dish%26code%3D011tys570KsAEG1Es6370TbK570tys5q%26state%3D0";', 1511150312),
('dc8f63c0b97c49866376a4ef65b66f9a', 6, '101.226.233.158', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"wKvK";i:1511147146;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511150746),
('1a38c6201bc676055c5326d768492688', 6, '183.192.201.97', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"h37r";i:1511146718;}dest_url|s:122:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D402%26do%3Ddeliveryorder%26m%3Dweisrc_dish";', 1511150318),
('c8d394a4db775e6e67cc56e006d553b9', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"WYO7";i:1511146723;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY002sNxP0bwNvR-pdAsYYFKz8%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511150323),
('2f0d5c50dc0fd4ac5cc09bc0ae8d3d67', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"KJrr";i:1511146727;}dest_url|s:115:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Ddeliveryorder%26m%3Dweisrc_dish%26op%3D1";', 1511150327),
('73d179101640722803ebd7f53e199589', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"u5rz";i:1511146752;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D404";', 1511150352),
('895f93de97782ac486ae1bbf7442090a', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"OQqN";i:1511146755;}dest_url|s:334:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D7bdffdd32bea3c431a10e6b060cf8734c94c6b7d%26ps%3DeyJ0aWQiOiIxMDQiLCJ1bmlvbnRpZCI6IjIwMTcxMTIwMTA1OTE1MDAwMDE1NzQ2ODc0MDgiLCJ1c2VyIjoib1NSWTAwMnNOeFAwYndOdlItcGRBc1lZRkt6OCIsImZlZSI6IjAuMTAiLCJ0aXRsZSI6IiVFOSVBNCU5MCVFOSVBNSVBRTIwMTcxMTIwNDY3NTIxMzMwMDc3In0%3D";', 1511150355),
('26ea63c490c9901ab402def7a522f6e4', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"unfT";i:1511146761;}dest_url|s:92:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dmc%26a%3Dcash%26do%3Dwechat%26";', 1511150361),
('4686ed9f2d0d08e4a3043c14870e4b6f', 6, '120.204.17.71', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"CE7P";i:1511146762;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D404";', 1511150362),
('5d3755263c9803ade61f82a034a30ed7', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"pghg";i:1511146763;}dest_url|s:345:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D7bdffdd32bea3c431a10e6b060cf8734c94c6b7d%26ps%3DeyJ0aWQiOiIxMDQiLCJ1bmlvbnRpZCI6IjIwMTcxMTIwMTA1OTE1MDAwMDE1NzQ2ODc0MDgiLCJ1c2VyIjoib1NSWTAwMnNOeFAwYndOdlItcGRBc1lZRkt6OCIsImZlZSI6IjAuMTAiLCJ0aXRsZSI6IiVFOSVBNCU5MCVFOSVBNSVBRTIwMTcxMTIwNDY3NTIxMzMwMDc3In0%3D%26done%3D1";', 1511150363),
('c918cd9193fdbb7037c612c6d7c73a4f', 6, '120.204.17.67', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"i65D";i:1511146765;}dest_url|s:334:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D7bdffdd32bea3c431a10e6b060cf8734c94c6b7d%26ps%3DeyJ0aWQiOiIxMDQiLCJ1bmlvbnRpZCI6IjIwMTcxMTIwMTA1OTE1MDAwMDE1NzQ2ODc0MDgiLCJ1c2VyIjoib1NSWTAwMnNOeFAwYndOdlItcGRBc1lZRkt6OCIsImZlZSI6IjAuMTAiLCJ0aXRsZSI6IiVFOSVBNCU5MCVFOSVBNSVBRTIwMTcxMTIwNDY3NTIxMzMwMDc3In0%3D";', 1511150365),
('2a95879600cdb586f632f3702d4ce2f5', 6, '120.204.17.67', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ZEP7";i:1511146772;}dest_url|s:345:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D7bdffdd32bea3c431a10e6b060cf8734c94c6b7d%26ps%3DeyJ0aWQiOiIxMDQiLCJ1bmlvbnRpZCI6IjIwMTcxMTIwMTA1OTE1MDAwMDE1NzQ2ODc0MDgiLCJ1c2VyIjoib1NSWTAwMnNOeFAwYndOdlItcGRBc1lZRkt6OCIsImZlZSI6IjAuMTAiLCJ0aXRsZSI6IiVFOSVBNCU5MCVFOSVBNSVBRTIwMTcxMTIwNDY3NTIxMzMwMDc3In0%3D%26done%3D1";', 1511150372),
('7b2f1066bf1810001bddbc15d096098e', 6, 'oSRY005X21OxPllfXAlfbcnlrF-A', 'openid|s:28:"oSRY005X21OxPllfXAlfbcnlrF-A";', 1511153165),
('42824d330da5d7c19d6e68f866cea3e8', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"w1JR";i:1511146805;}dest_url|s:144:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D404%26op%3Dacceptorder%26do%3Dsetdeliveryorder%26m%3Dweisrc_dish";', 1511150405),
('e43c16682f2ee8a261e32f8d3428bb93', 6, '120.204.17.70', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"sW3m";i:1511146809;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D404%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish";', 1511150409),
('628f68b938f1778f260af46845c393a7', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ONNZ";i:1511146818;}dest_url|s:122:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D404%26do%3Ddeliveryorder%26m%3Dweisrc_dish";', 1511150418),
('9ff141e231cbab9599636d0958292b82', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"c7Ii";i:1511146822;}dest_url|s:115:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Ddeliveryorder%26m%3Dweisrc_dish%26op%3D1";', 1511150422),
('1be0c03360301bc983a01cb2f157f5d9', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"yjv8";i:1511146830;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish%26orderid%3D377";', 1511150430),
('48cded36d86e74e6e69dbd43b33634d0', 6, '120.204.17.71', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"kBpl";i:1511146832;}dest_url|s:115:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Ddeliveryorder%26m%3Dweisrc_dish%26op%3D1";', 1511150432),
('e9fbcebe8c48a81f5e11af138c3d8c92', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"XmZx";i:1511146834;}dest_url|s:141:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D377%26op%3Dpayorder%26do%3Dsetdeliveryorder%26m%3Dweisrc_dish";', 1511150434),
('c25b52a8cedc5fa695800103d3bcf4a4', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"C3TY";i:1511146835;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D377%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish";', 1511150435),
('3f8e470d05ecdded2b2014446703051c', 6, '120.204.17.70', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"k4x5";i:1511146839;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish%26orderid%3D377";', 1511150439),
('ee4851e3ebca257855c35ed73a0483bb', 6, '120.204.17.70', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"L16S";i:1511146843;}dest_url|s:141:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D377%26op%3Dpayorder%26do%3Dsetdeliveryorder%26m%3Dweisrc_dish";', 1511150443),
('d367d8de5d23bf646815e1a5572a9163', 6, '120.204.17.70', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"khuf";i:1511146844;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D377%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish";', 1511150444),
('eb1767dc398873bc96a05a993dbb7ea4', 6, '101.226.233.157', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Hjt6";i:1511146856;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D404%26do%3Dorderdetail%26m%3Dweisrc_dish";', 1511150456),
('89642348c728fce653faf6c606fd0060', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"QPh8";i:1511146864;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";', 1511150464),
('eeb7a14f30bae70537ff953c58dafbbf', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"adhs";i:1511147149;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511150749),
('5e13269626ced6594930a9b5d46c23ce', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"q2P1";i:1511147158;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY002sNxP0bwNvR-pdAsYYFKz8%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511150758),
('cd48d5e7319943514ec84265175b152d', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"suSN";i:1511149388;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY002sNxP0bwNvR-pdAsYYFKz8%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511152988),
('71242a5b1ff9db8ee8ba24a0cb42b95a', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"KrXR";i:1511147164;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D405";', 1511150764),
('ba7cf0c5c7fd6e81f25c668639ee5cc5', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Og9T";i:1511147189;}dest_url|s:92:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dmc%26a%3Dcash%26do%3Dwechat%26";', 1511150789),
('6a9c710658848ba3add3eb50f6935a1c', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"G0mo";i:1511147191;}dest_url|s:340:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D1216a17bd0d36b4857fc5ac6586301d0f01a69a2%26ps%3DeyJ0aWQiOiIxMDUiLCJ1bmlvbnRpZCI6IjIwMTcxMTIwMTEwNjI4MDAwMDE1NjAxODQxMjAiLCJ1c2VyIjoib1NSWTAwMnNOeFAwYndOdlItcGRBc1lZRkt6OCIsImZlZSI6Ijk5OTk5OTk5Ljk5IiwidGl0bGUiOiIlRTklQTQlOTAlRTklQTUlQUUyMDE3MTEyMDQ3MTYzNjk1MDA4MyJ9";', 1511150791),
('cbf9fbc63f43176caedb704cfea8b73e', 6, '120.204.17.70', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"k39F";i:1511147198;}dest_url|s:92:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dmc%26a%3Dcash%26do%3Dwechat%26";', 1511150798),
('2b0e69a9b038d938ce14047c59dcedf3', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"SfVZ";i:1511148572;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511152172),
('f09634af09e966ec54f313a32a39b496', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"LYKr";i:1511147247;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY004apWoEmgGRX6tq94KeP8SE%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511150847),
('ad1cf7b1ef14e26130c9a059d7ff7dd2', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"jf4h";i:1511147250;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D406";', 1511150850),
('1be897cf95764b1213d51906f68ec5ea', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"eCNW";i:1511147286;}dest_url|s:340:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3Da1c5fa61a06d87771cfaef1b9c55ec0538dc1394%26ps%3DeyJ0aWQiOiIxMDYiLCJ1bmlvbnRpZCI6IjIwMTcxMTIwMTEwODA2MDAwMDE1NTIxMjIyMjIiLCJ1c2VyIjoib1NSWTAwNGFwV29FbWdHUlg2dHE5NEtlUDhTRSIsImZlZSI6Ijk5OTk5OTk5Ljk5IiwidGl0bGUiOiIlRTklQTQlOTAlRTklQTUlQUUyMDE3MTEyMDQ3MjUwMzEyMTA1OCJ9";', 1511150886),
('910ac007bd3f38cf4cdbd2c0959ab366', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"XqUM";i:1511147286;}dest_url|s:92:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dmc%26a%3Dcash%26do%3Dwechat%26";', 1511150886),
('9b2c94bdf244e4db151b16dd66b7601b', 6, '120.204.17.73', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"TZX7";i:1511147297;}dest_url|s:340:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3Da1c5fa61a06d87771cfaef1b9c55ec0538dc1394%26ps%3DeyJ0aWQiOiIxMDYiLCJ1bmlvbnRpZCI6IjIwMTcxMTIwMTEwODA2MDAwMDE1NTIxMjIyMjIiLCJ1c2VyIjoib1NSWTAwNGFwV29FbWdHUlg2dHE5NEtlUDhTRSIsImZlZSI6Ijk5OTk5OTk5Ljk5IiwidGl0bGUiOiIlRTklQTQlOTAlRTklQTUlQUUyMDE3MTEyMDQ3MjUwMzEyMTA1OCJ9";', 1511150897);
INSERT INTO `ims_core_sessions` (`sid`, `uniacid`, `openid`, `data`, `expiretime`) VALUES
('0bd32237a888ecdd628e2c3f60cca035', 6, '120.204.17.69', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"iNhU";i:1511147498;}dest_url|s:122:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D404%26do%3Ddeliveryorder%26m%3Dweisrc_dish";', 1511151098),
('94586a26a3f3c7d3f0d733119a4a94d5', 6, '121.51.32.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"gTHo";i:1511147886;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D405";', 1511151486),
('4c6498a478c8f4716258a9e049421387', 6, '120.204.17.69', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Qo8l";i:1511147971;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY004apWoEmgGRX6tq94KeP8SE%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511151571),
('f4a8be3062619a0f29f2edaf19257861', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"UlvJ";i:1511148590;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511152190),
('8953ea929a413a61c45fc47eebd9ab33', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"FW72";i:1511149333;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";', 1511152933),
('f05e9fe67937fa6041e7df1627f40a33', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"g8HB";i:1511149398;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D407";', 1511152998),
('9ab63b656328e30cb6864e567428a422', 6, '120.204.17.71', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"YkEe";i:1511149407;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D407";', 1511153007),
('6a96c2e376e0efc8d3c9102975c3696e', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"yflb";i:1511149410;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511153010),
('da19ad9bb157f5a844d289a8ed651b41', 6, '101.226.233.142', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"J64j";i:1511149412;}dest_url|s:98:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorder%26m%3Dweisrc_dish";', 1511153012),
('62f9e92ab6f109421d1378eb13e1ce17', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"E7c7";i:1511149524;}dest_url|s:124:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DreservationIndex%26m%3Dweisrc_dish";', 1511153124),
('14198e6d32042f189446977bd00c0d48', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"mW3I";i:1511149527;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";', 1511153127),
('d9972e82fbeb700599e8d790b60fedf4', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"rpW9";i:1511149530;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511153130),
('575641c50125b636f295f3c704ad3893', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"DQiO";i:1511149532;}dest_url|s:98:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorder%26m%3Dweisrc_dish";', 1511153132),
('5bf37fc51d8b9e68d2e65ef28ce98154', 6, '101.226.233.158', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"O7TI";i:1511149536;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorderdetail%26m%3Dweisrc_dish%26orderid%3D407";', 1511153136),
('59fbaf94c83805aa8e98c9203845d420', 6, '120.204.17.69', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"n4tI";i:1511149542;}dest_url|s:98:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorder%26m%3Dweisrc_dish";', 1511153142),
('82c25d7be607ec8fc28bca5b6215061f', 6, '120.204.17.69', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"zoES";i:1511149546;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorderdetail%26m%3Dweisrc_dish%26orderid%3D407";', 1511153146),
('7c05b7b888425bdf4e0bbf7355f8ea6b', 6, '120.204.17.67', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"k8A9";i:1511149550;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D407%26do%3Dpay%26m%3Dweisrc_dish";', 1511153150),
('d563dc2ae92a73fd317d834322aeebd3', 6, 'oSRY0069zmR3bYgg6-YSEbdA-K1E', 'openid|s:28:"oSRY0069zmR3bYgg6-YSEbdA-K1E";', 1511244496),
('6b02d370ef3cd9ee4788157c932e40d1', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"i37t";i:1511150338;}dest_url|s:143:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26mode%3D1%26storeid%3D21%26tablesid%3D160%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511153938),
('6ba20708b809affc3e03d319e0b66b2c', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"R8Z2";i:1511150348;}dest_url|s:170:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26mode%3D1%26storeid%3D21%26tablesid%3D160%26do%3Dwaplist%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511153948),
('311b234ab52cdc98c4deee7620789a58', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"DFrX";i:1511150389;}dest_url|s:156:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26mode%3D1%26storeid%3D21%26tablesid%3D160%26append%3D1%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511153989),
('88d48b264bcc4a31e26df67e6deb8067', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"S7bR";i:1511150397;}dest_url|s:165:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D1%26tablesid%3D160%26type%3D2%26do%3DSendOperatorNotice%26m%3Dweisrc_dish";', 1511153997),
('c640296bb2988a751e90ac0adcc0b069', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"QUyr";i:1511150401;}dest_url|s:143:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D1%26tablesid%3D160%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511154001),
('7bb8e7f9a93c0fc437f2b175a0f98f0e', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"FYwT";i:1511150404;}dest_url|s:165:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D1%26tablesid%3D160%26type%3D1%26do%3DSendOperatorNotice%26m%3Dweisrc_dish";', 1511154004),
('3a0f81a092367c1dafbd20112a7cafda', 6, '121.51.32.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"z6S6";i:1511150410;}dest_url|s:143:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D1%26tablesid%3D160%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511154010),
('b2bed796df6465cc0d7e5ee3a568ba1a', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"d84k";i:1511150445;}dest_url|s:149:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D404%26do%3Ddeliveryorder%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511154045),
('335a95070a45bb7bd3f0385594c91f03', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"CCg7";i:1511150445;}dest_url|s:149:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D404%26do%3Ddeliveryorder%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511154045),
('769068699150811541aeef7e5c635620', 6, '101.226.233.153', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"uWgr";i:1511150448;}dest_url|s:149:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D404%26do%3Ddeliveryorder%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511154048),
('be7e09aea0ba2a6d5839bdfef1766498', 6, '101.226.233.152', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"WvVE";i:1511150449;}dest_url|s:149:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D404%26do%3Ddeliveryorder%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511154049),
('f626ec125f2a8a7edb5e51de1ad83459', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"cGQR";i:1511150449;}dest_url|s:149:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D404%26do%3Ddeliveryorder%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511154049),
('37db02140e479c2e4e8d48f3e9c76588', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"hxpF";i:1511150456;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish%26orderid%3D406";', 1511154056),
('027f9e6c0a3522111c0f412bbb5b81b7', 6, '101.226.233.142', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"UxLP";i:1511150456;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish%26orderid%3D406";', 1511154056),
('0883d5cd88b330134581a668591d56c4', 6, '120.204.17.71', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"tQaY";i:1511150465;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish%26orderid%3D406";', 1511154065),
('456c9217c3dd408e586ad678c7ad11c7', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"b5U6";i:1511150468;}dest_url|s:144:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D406%26op%3Dacceptorder%26do%3Dsetdeliveryorder%26m%3Dweisrc_dish";', 1511154068),
('49fb5be5758ffde34202f03500abaa38', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"jtRy";i:1511150471;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D406%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish";', 1511154071),
('43f2ab8ca803f9c62f87783fc3ae848f', 6, '101.226.233.158', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ogM1";i:1511150473;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D406%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish";', 1511154073),
('575d27987ba6e459b2365db5e57e1b01', 6, '58.247.212.98', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"zE1e";i:1511150477;}dest_url|s:144:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D406%26op%3Dacceptorder%26do%3Dsetdeliveryorder%26m%3Dweisrc_dish";', 1511154077),
('2be06eb4c4aa58a62a1efd0f502b0fa2', 6, '120.204.17.46', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"U4eE";i:1511150480;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D406%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish";', 1511154080),
('6fe0cbdee711c0c5b304838410aebe95', 6, '101.226.233.152', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"I7po";i:1511150486;}dest_url|s:141:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D406%26op%3Dpayorder%26do%3Dsetdeliveryorder%26m%3Dweisrc_dish";', 1511154086),
('2e43b3d52bc99a3fde9087759e6cc953', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"C26V";i:1511150486;}dest_url|s:141:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D406%26op%3Dpayorder%26do%3Dsetdeliveryorder%26m%3Dweisrc_dish";', 1511154086),
('f2805c8c0d000f057eaa17d70fb24cfd', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"v5Y0";i:1511151186;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D404%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish";', 1511154786),
('18527d171ef548416a23c52a01467813', 6, '223.104.6.28', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"T7Yu";i:1511164770;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY0002kWJeWI40pNCycPqBUO3E";oauth_acid|s:1:"6";openid|s:28:"oSRY0002kWJeWI40pNCycPqBUO3E";uid|s:2:"17";', 1511168370),
('d4022231a24e105afe786620f399b9de', 6, '223.104.6.20', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"DVbE";i:1511152268;s:4:"TD5T";i:1511152269;s:4:"JJ9k";i:1511152269;s:4:"WeYY";i:1511152269;s:4:"BcDD";i:1511152284;s:4:"YmaF";i:1511152285;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D387%26do%3Dorderdetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";oauth_acid|s:1:"6";openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";uid|s:2:"16";', 1511155885),
('1b5c6d343f16d3d2d74f69f351d36b3a', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"mJRB";i:1511151912;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D387%26do%3Dorderdetail%26m%3Dweisrc_dish";', 1511155512),
('2d292a60694dfb2caa8d46aeb817b0ea', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"osZU";i:1511151914;}dest_url|s:147:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D387%26do%3Dorderdetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511155514),
('04fca3c3e8a6acd1fb7f7dbb7ba4cedc', 6, '101.226.233.157', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"U26B";i:1511151918;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D387%26do%3Dorderdetail%26m%3Dweisrc_dish";', 1511155518),
('336d8cde271f7a48d7083b129ebfa0cb', 6, '120.204.17.73', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"QT81";i:1511151922;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D387%26do%3Dorderdetail%26m%3Dweisrc_dish";', 1511155522),
('c9badbcc0ef0f159f2e0e361606b481b', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"FlaI";i:1511151993;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511155593),
('bdc5220df130187c326ff2856ad54497', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"doB5";i:1511151994;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D0117xuCk04KH0k14VhEk0L8tCk07xuCt%26state%3D0";', 1511155594),
('a7e8f72809800c118773526f01e085b7', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Mbbu";i:1511151995;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D0117xuCk04KH0k14VhEk0L8tCk07xuCt%26state%3D0";', 1511155595),
('36fc9259112340a83f988e3cd82deabc', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Ez7J";i:1511151997;}dest_url|s:103:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dusercenter%26m%3Dweisrc_dish";', 1511155597),
('c99edf3d32e751ac7503b6d8a31ec89d', 6, '101.226.233.153', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"TrWF";i:1511152007;}dest_url|s:103:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dadminorder%26m%3Dweisrc_dish";', 1511155607),
('66b25eee570ca90ca2268713abc67cd4', 6, '120.204.17.70', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"cQT1";i:1511152016;}dest_url|s:103:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dadminorder%26m%3Dweisrc_dish";', 1511155616),
('7caebee6b2ba9031a6833d9083b3152e', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"UY51";i:1511152017;}dest_url|s:125:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dadminorderdetail%26m%3Dweisrc_dish%26orderid%3D406";', 1511155617),
('4c264b7667400e0c7324213d7eb504ed', 6, '183.192.201.97', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"F5i6";i:1511152025;}dest_url|s:125:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dadminorderdetail%26m%3Dweisrc_dish%26orderid%3D406";', 1511155625),
('b8e6ba5dcae0a8ec3d179d0a3663a039', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"r9jI";i:1511152083;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D387%26do%3Dorderdetail%26m%3Dweisrc_dish";', 1511155683),
('eb15183cd40da22031c4edcf6b40dfbb', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"e4Gk";i:1511152113;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511155713),
('36d06406613908cffcb95cba11f26019', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"UPo0";i:1511152114;}dest_url|s:103:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dusercenter%26m%3Dweisrc_dish";', 1511155714),
('32ed46de2e723af64451cc4681b06ee3', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"X0Y9";i:1511152115;}dest_url|s:103:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dadminorder%26m%3Dweisrc_dish";', 1511155715),
('8af43e515d8db5017a3b10394675644b', 6, '223.104.6.27', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"rn9z";i:1510827642;s:4:"BgKt";i:1510827642;s:4:"X4wg";i:1510827665;s:4:"z4vY";i:1510827668;s:4:"UfO0";i:1510827875;s:4:"qzoC";i:1510827877;}dest_url|s:113:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dqueue%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY0002kWJeWI40pNCycPqBUO3E";oauth_acid|s:1:"6";openid|s:28:"oSRY0002kWJeWI40pNCycPqBUO3E";uid|s:2:"17";', 1510831477),
('58fd90b434a9026bae9ae8538a8372e9', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"qpTg";i:1510827640;}dest_url|s:113:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dqueue%26m%3Dweisrc_dish";', 1510831240),
('fa72769242d530e421a53876300672d3', 6, 'oSRY0002kWJeWI40pNCycPqBUO3E', 'openid|s:28:"oSRY0002kWJeWI40pNCycPqBUO3E";', 1511168370),
('9d28f70c2cff4cc22fc4fae321b632e6', 6, '101.226.233.147', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"UqJx";i:1510827643;}dest_url|s:117:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dqueueform%26m%3Dweisrc_dish";', 1510831243),
('cb6386237cdd70ea893a7ce91e8399d2', 6, 'oSRY007ii1nrPRxSCeihLAxANMB8', 'openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";', 1511246935),
('fe957c68c1d1ed311393f472e0e756e6', 6, 'oSRY00yS5yHUwKxVARp8b_21YceE', 'openid|s:28:"oSRY00yS5yHUwKxVARp8b_21YceE";', 1511252451),
('1cb393ccbad3f42f95fd741a5ed1b9cb', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"m7w3";i:1510828713;}dest_url|s:140:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dqueue%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1510832313),
('f4d7ed56046ab2ea8ccf7fe97c1d5236', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"R0P5";i:1510828984;}dest_url|s:113:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dqueue%26m%3Dweisrc_dish";', 1510832584),
('cf06894951c4dad51bf1d9d6c9277c5d', 6, 'oSRY004apWoEmgGRX6tq94KeP8SE', 'openid|s:28:"oSRY004apWoEmgGRX6tq94KeP8SE";', 1511156488),
('4142b0adb0eae5c6c4c120d71897ead4', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"S6EK";i:1510830956;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510834556),
('c18bfdb0f59e0eda546c3575e503444f', 6, '140.243.98.212', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"MQ0E";i:1510830956;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510834556),
('cd8918884ffedbc2f3b579fe7d676741', 6, '140.243.98.212', 'acid|s:1:"6";uniacid|i:6;token|a:4:{s:4:"p43d";i:1510830957;s:4:"aknW";i:1510830958;s:4:"cjP7";i:1510830959;s:4:"Ka31";i:1510830959;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY004apWoEmgGRX6tq94KeP8SE";oauth_acid|s:1:"6";openid|s:28:"oSRY004apWoEmgGRX6tq94KeP8SE";uid|s:2:"27";', 1510834559),
('664890ba5c85067a7b3b96d444474fa6', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"UucU";i:1510830959;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1510834559),
('8e0f447e95bab0155bbe2244deab23da', 6, '101.226.233.158', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"eM44";i:1510830960;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D001QTief0rDReB1QUIbf0NAxef0QTiek%26state%3D0";', 1510834560),
('1f05a95843010ff73a16ec86f767da69', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Ci22";i:1510830960;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D001QTief0rDReB1QUIbf0NAxef0QTiek%26state%3D0";', 1510834560),
('5e1628f48f783dad8795d6cc9c9aa72c', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"VcB1";i:1510833287;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510836887),
('2ec81d8b5ea88bc988bb715eabe1e40a', 6, '120.204.17.71', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"PoU8";i:1510833296;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510836896),
('2b02b1d1c139b947ea55d4a69fcc1aca', 6, '183.250.153.137', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"R0zO";i:1510835250;s:4:"tbLb";i:1510835269;s:4:"d2Dd";i:1510835279;s:4:"Nwk9";i:1510835296;s:4:"i83S";i:1510835318;s:4:"A1Nv";i:1510835437;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";oauth_acid|s:1:"6";openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";uid|s:2:"16";', 1510839037),
('bedd8b17838840d68f4927c483896f3b', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Scc5";i:1510835250;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1510838850),
('d52888a3f4e0fe24297f711a89c3cb6e', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"lJRK";i:1510835251;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D021vJPXZ0DamkZ1xK0001MCPXZ0vJPXD%26state%3D0";', 1510838851),
('dd99e2acfc79261aec3bffce8abeb9c5', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"lWBj";i:1510835251;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D021vJPXZ0DamkZ1xK0001MCPXZ0vJPXD%26state%3D0";', 1510838851),
('ae0912edd29ef0b761a0aba009e2bf3d', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Qkdn";i:1510835254;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510838854),
('e5434d79a188642f98b99f85d270e254', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Jt2I";i:1510835269;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510838869),
('333af43b00db1224be9f043c4d7d0e46', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"p15Y";i:1510835305;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510838905),
('1470cf2fe3c9619d65138aa0abde3da4', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"HV7N";i:1510835318;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";', 1510838918),
('21a61d1fb6d2f0e4ac00978e395b23d7', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"S441";i:1510835437;}dest_url|s:125:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D395%26do%3Dadminorderdetail%26m%3Dweisrc_dish";', 1510839037),
('41d606eee4e8ccdac5cbf474f984bb32', 6, '223.104.6.54', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"k5c5";i:1510845220;s:4:"PHWc";i:1510845221;s:4:"bqXh";i:1510845222;s:4:"q6Ji";i:1510845222;s:4:"h8Py";i:1510845224;s:4:"j58r";i:1510845224;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";oauth_openid|s:28:"oSRY0002kWJeWI40pNCycPqBUO3E";oauth_acid|s:1:"6";openid|s:28:"oSRY0002kWJeWI40pNCycPqBUO3E";uid|s:2:"17";', 1510848824),
('3684f7edfc6e59a1dbe51683038e68b9', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"jwXe";i:1510845188;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";', 1510848788),
('e054aab8d65fdc3a9f30c843a3c6a052', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"tXt8";i:1510845190;}dest_url|s:153:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2%26wxref%3Dmp.weixin.qq.com";', 1510848790),
('7a0dcbf8979fade12a08530dfecd473e', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"jZGU";i:1510845192;}dest_url|s:153:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2%26wxref%3Dmp.weixin.qq.com";', 1510848792),
('3908d0064d55fdb17eefe9822d617254', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"OMPG";i:1510845199;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0002kWJeWI40pNCycPqBUO3E%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1510848799),
('8fe08954cacbac7810e4e77a3a6f9380', 6, '120.204.17.68', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"d7Yy";i:1510845208;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0002kWJeWI40pNCycPqBUO3E%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1510848808),
('9201fad115d689545a3e1e64b5f3e43d', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"dLqJ";i:1510845211;}dest_url|s:113:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dqueue%26m%3Dweisrc_dish";', 1510848811),
('4deffa8b5215feef93e71812645bca3c', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"FYeb";i:1510845215;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510848815),
('e40d9cb4615f63d2ed15722c06ec665f', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"M8L8";i:1510845218;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D4%26do%3Dwaplist%26m%3Dweisrc_dish";', 1510848818),
('fb05e9fc81abc7a6ef386ed334ed1cde', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ukWG";i:1510845221;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0002kWJeWI40pNCycPqBUO3E%26storeid%3D21%26mode%3D4%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1510848821),
('b5c17640e520ffbe23a101f6cd2391ab', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"WsWs";i:1510845223;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D397";', 1510848823),
('e934af59e2e9f826075024b0fa020948', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"gcsR";i:1510845225;}dest_url|s:92:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dmc%26a%3Dcash%26do%3Dwechat%26";', 1510848825),
('e90b8c71b65db743a73d09a99048666c', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"TO72";i:1510845225;}dest_url|s:340:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D634d63a6593f40a7fc043622986686bdb02741e0%26ps%3DeyJ0aWQiOiI5NyIsInVuaW9udGlkIjoiMjAxNzExMTYyMzEzNDQwMDAwMTUxMjc3Mzc3NyIsInVzZXIiOiJvU1JZMDAwMmtXSmVXSTQwcE5DeWNQcUJVTzNFIiwiZmVlIjoiMTE3Ni4wMCIsInRpdGxlIjoiJUU5JUE0JTkwJUU5JUE1JUFFMjAxNzExMTY0NTIyMjg2OTQwMTIifQ%3D%3D";', 1510848825),
('73fe67980344b9ee15f4919397d260cb', 6, '120.204.17.73', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"WaMC";i:1510845227;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D4%26do%3Dwaplist%26m%3Dweisrc_dish";', 1510848827),
('2d6d91093ee0d9a53dfcf47daa2bdcfe', 6, '120.204.17.68', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Dswd";i:1510845231;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0002kWJeWI40pNCycPqBUO3E%26storeid%3D21%26mode%3D4%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1510848831),
('1e326f5c183fbbd5f2b14b8b912cfe42', 6, '121.51.32.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Coe5";i:1510845239;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D397";', 1510848839),
('02c495c0df761d07da2c43fe0fea2842', 6, '101.226.66.174', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Hna0";i:1510845474;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D397";', 1510849074),
('5b3f434757545d08930e64f3df25e95e', 6, 'oSRY0002JvnXBtEpaAY6FbFSnWQY', 'openid|s:28:"oSRY0002JvnXBtEpaAY6FbFSnWQY";', 1510906000),
('5b3f13fe2d8f2ad7db2d24888ab7f874', 6, '211.97.128.93', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"eSk6";i:1510902318;s:4:"fYTL";i:1510902366;s:4:"KuxC";i:1510902366;s:4:"TV33";i:1510902375;s:4:"PI8f";i:1510902379;s:4:"xnrh";i:1510902400;}dest_url|s:113:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dqueue%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY0002JvnXBtEpaAY6FbFSnWQY";oauth_acid|s:1:"6";openid|s:28:"oSRY0002JvnXBtEpaAY6FbFSnWQY";uid|s:2:"45";', 1510906000),
('083d028d6e00008b3d7f11af2438dcc4', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"DZ44";i:1510902317;}dest_url|s:113:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dqueue%26m%3Dweisrc_dish";', 1510905917),
('8794c9a5def27cc1228d65a58d368a46', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"C32t";i:1510902318;}dest_url|s:140:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dqueue%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1510905918),
('b8eec57d2f1e5cc426774b0b6314d921', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"AG0g";i:1510902366;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510905966),
('a91b27e5cbf323ab5e74df24963abe94', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Pmbe";i:1510902367;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D061orGNd1WRF9s0vLjPd1tpANd1orGNM%26state%3D0";', 1510905967),
('f971a9730788f79bc8406c68aaec0cb8', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"t04v";i:1510902367;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D061orGNd1WRF9s0vLjPd1tpANd1orGNM%26state%3D0";', 1510905967),
('15e967cf8cd02c6a1c470d9bb889bd91', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"dOsU";i:1510902376;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";', 1510905976),
('db2b2697ad4e522411f9c237c82832c0', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"BFk5";i:1510902379;}dest_url|s:124:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DreservationIndex%26m%3Dweisrc_dish";', 1510905979),
('1ee67b7ffa58216cdd59669be9d06dba', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"My4i";i:1510902400;}dest_url|s:124:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DreservationIndex%26m%3Dweisrc_dish";', 1510906000),
('3af8d58cf3341612e5938d89994c57c5', 6, '101.226.65.107', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"v6Kl";i:1510902561;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";', 1510906161),
('536cfec1b9d915bed99d1dd8dfcab5fd', 6, '223.104.6.54', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"JROc";i:1510903864;s:4:"BFaT";i:1510903870;s:4:"DBNh";i:1510903874;s:4:"eMB1";i:1510903874;s:4:"f8jN";i:1510903875;s:4:"E878";i:1510903881;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY0002kWJeWI40pNCycPqBUO3E";oauth_acid|s:1:"6";openid|s:28:"oSRY0002kWJeWI40pNCycPqBUO3E";uid|s:2:"17";', 1510907481),
('e92be32ab80ccdc807cd21fe607bb193', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"X3VF";i:1510903741;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510907341),
('e00fee884f466861ffdb035c87a5afb3', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"mi3R";i:1510903744;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1510907344),
('3b35c4589cc020ad3e1e52f041c80615', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"a8L6";i:1510903745;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1510907345),
('b618c1ec8cba2fab367c1532ce6d2045', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"OPV1";i:1510903750;}dest_url|s:98:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorder%26m%3Dweisrc_dish";', 1510907350),
('0d15dfd9d5ee82cd5c873a21d39d0b09', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"GE26";i:1510903750;}dest_url|s:103:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dusercenter%26m%3Dweisrc_dish";', 1510907350),
('ffcba332bf08b54c050fa1a4d416c435', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"gSgT";i:1510903755;}dest_url|s:89:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dmc%26a%3Dcard%26do%3Dcredit";', 1510907355),
('8c8beb300fafcb31a80343100ce98bf7', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"LvQs";i:1510903757;}dest_url|s:96:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26m%3Dwe7_coupon%26do%3Dcard";', 1510907357),
('653187275dfd6de648e1471e1ecf1184', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"wM5r";i:1510903766;}dest_url|s:106:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Ddeliveryorder%26m%3Dweisrc_dish";', 1510907366),
('a7bf51c574b8db8d2c222de68024a50a', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"k4bL";i:1510903771;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish%26orderid%3D377";', 1510907371),
('1f3b15e958c3fd4c96f940182cb6d250', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ueIH";i:1510903776;}dest_url|s:144:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D377%26op%3Dacceptorder%26do%3Dsetdeliveryorder%26m%3Dweisrc_dish";', 1510907376),
('c875b9eea76a3bdc685ceadb1460dc88', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"AcS3";i:1510903779;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D377%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish";', 1510907379),
('e432706b05ba04656be2829f37a379c4', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"uT92";i:1510903790;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D377%26do%3Dorderdetail%26m%3Dweisrc_dish";', 1510907390),
('4d85aaa5dd5a73cd92788d941bbc2831', 6, '183.250.153.137', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"UCiT";i:1510903792;s:4:"lBy2";i:1510903792;s:4:"SfM6";i:1510903792;s:4:"TtFx";i:1510903793;s:4:"HkRz";i:1510903795;s:4:"Zu7c";i:1510903815;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D377%26do%3Dorderdetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";oauth_acid|s:1:"6";openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";uid|s:2:"16";', 1510907415),
('87e146b5b8d413a5c95f1e4848160c76', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"jR7q";i:1510903793;}dest_url|s:147:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D377%26do%3Dorderdetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1510907393),
('ab250cc35e0c2ba61fb81c6df86e649a', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"j77F";i:1510903795;}dest_url|s:147:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D377%26do%3Dorderdetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1510907395),
('08c7aad91af5af15c088f857b8ecd79d', 6, '120.204.17.73', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"LDK5";i:1510903800;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D377%26do%3Dorderdetail%26m%3Dweisrc_dish";', 1510907400),
('c6b6f4c40ef9620049163952f45aaf7d', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"oJQg";i:1510903815;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D377%26do%3Dorderdetail%26m%3Dweisrc_dish";', 1510907415),
('ff6faf7610b24b42c2822fbbbf440b68', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"IWjs";i:1510903839;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D386%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish";', 1510907439),
('e68e142567b700e895f2d5f4bb481816', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"nHjW";i:1510903841;}dest_url|s:106:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Ddeliveryorder%26m%3Dweisrc_dish";', 1510907441),
('6cdf1a5d4b14e113df4ee9015bfdafca', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"yg9n";i:1510903844;}dest_url|s:115:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Ddeliveryorder%26m%3Dweisrc_dish%26op%3D1";', 1510907444),
('21f1fd87caa54480f553d5309b8fc52a', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ldEX";i:1510903848;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish%26orderid%3D386";', 1510907448),
('efdb8b8e80ee6fce942a0a1b27fd35ca', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"inLR";i:1510903850;}dest_url|s:125:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D394%26do%3Dadminorderdetail%26m%3Dweisrc_dish";', 1510907450),
('a58fbc5276379e224a743530ebe26466', 6, '223.104.6.14', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"r7qZ";i:1511150479;s:4:"XX4a";i:1511150485;s:4:"nfN5";i:1511150487;s:4:"YJOd";i:1511150488;s:4:"bYzI";i:1511150491;s:4:"ejAe";i:1511150497;}dest_url|s:122:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D404%26do%3Ddeliveryorder%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY005yh2cXkbIoumh2yvD4rc3Y";oauth_acid|s:1:"6";openid|s:28:"oSRY005yh2cXkbIoumh2yvD4rc3Y";uid|s:2:"44";', 1511154097),
('374b31da4f0c28fee01349a3b74221d0', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"q442";i:1511146638;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511150238),
('6a002178f36d30604b6d1166c0fa1183', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Boyz";i:1510903852;}dest_url|s:152:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D394%26do%3Dadminorderdetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1510907452),
('aa8d6cc7972068ad29a51ff01e8e75dc', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"BDdc";i:1510903853;}dest_url|s:179:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D394%26do%3Dadminorderdetail%26m%3Dweisrc_dish%26code%3D071hKEab2RcL6P0CHkbb2IYuab2hKEae%26state%3D0";', 1510907453),
('cf7740a629374bbc6bfc60cfe15130c1', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"x5F9";i:1510903854;}dest_url|s:179:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D394%26do%3Dadminorderdetail%26m%3Dweisrc_dish%26code%3D071hKEab2RcL6P0CHkbb2IYuab2hKEae%26state%3D0";', 1510907454),
('9d9096919ec74875a4b3eff8191e20a1', 6, '58.247.212.98', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"IS0t";i:1510903857;}dest_url|s:106:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Ddeliveryorder%26m%3Dweisrc_dish";', 1510907457),
('8393209b6e32f1e51f9e4b8d5d371c84', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"xN9P";i:1510903865;}dest_url|s:125:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D394%26do%3Dadminorderdetail%26m%3Dweisrc_dish";', 1510907465),
('f8631dd434696049ec1442956fb90a62', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"I9bG";i:1510903871;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510907471),
('a9fc9c95778052893a26d3276a5df1c5', 6, '120.204.17.73', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"X5ca";i:1510903872;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D377%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish";', 1510907472),
('43405cbe42765f6be0992509c5162f2f', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"E6gd";i:1510903881;}dest_url|s:119:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dallfeedback%26m%3Dweisrc_dish";', 1510907481),
('3e6492b81692db105c7b17fff9dbd70c', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"SjzC";i:1510903881;}dest_url|s:119:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dallfeedback%26m%3Dweisrc_dish";', 1510907481),
('f97b4595de38a1cdbc4f2f94568ff029', 6, '120.204.17.71', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Pd9V";i:1510903891;}dest_url|s:119:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dallfeedback%26m%3Dweisrc_dish";', 1510907491),
('1537b5338195f9e81546c446a9ce98fa', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"W3KV";i:1510903897;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";', 1510907497),
('ba11b0017d414342db4b2d4d93e0d8f8', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"rwM7";i:1510903919;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY005yh2cXkbIoumh2yvD4rc3Y%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1510907519),
('09b78f2fd48315560840ba09862518cc', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Ri4O";i:1510903919;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY005yh2cXkbIoumh2yvD4rc3Y%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1510907519),
('abc6790d8f44c42ad67595677ecfed26', 6, '120.204.17.71', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"L4Aj";i:1510903936;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish%26orderid%3D386";', 1510907536),
('c24ba148d50fdae7b1fd86d9ab32b1e4', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"geG4";i:1510904072;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D398";', 1510907672),
('0f6b0110b05a673da2ce1aadf43299fa', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"A11W";i:1510904073;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D398";', 1510907673),
('07ed28755d9339c52cda5224593a6ee5', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"PtI8";i:1510904076;}dest_url|s:92:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dmc%26a%3Dcash%26do%3Dwechat%26";', 1510907676),
('b40cdfa183ccacdcdf3303a16e2469e3', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"G0oL";i:1510904076;}dest_url|s:336:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D59c86fecdd25ae9d0274265fc36263ed8eea56d7%26ps%3DeyJ0aWQiOiI5OCIsInVuaW9udGlkIjoiMjAxNzExMTcxNTM0MzUwMDAwMTUzNDM3NzQyNyIsInVzZXIiOiJvU1JZMDA1eWgyY1hrYklvdW1oMnl2RDRyYzNZIiwiZmVlIjoiMC4xMCIsInRpdGxlIjoiJUU5JUE0JTkwJUU5JUE1JUFFMjAxNzExMTcwNDA3MTE1MTI1MTYifQ%3D%3D";', 1510907676),
('53e4599fb1d71b160a58cc06f07d5f14', 6, '101.226.233.153', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"FwfX";i:1510904076;}dest_url|s:336:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D59c86fecdd25ae9d0274265fc36263ed8eea56d7%26ps%3DeyJ0aWQiOiI5OCIsInVuaW9udGlkIjoiMjAxNzExMTcxNTM0MzUwMDAwMTUzNDM3NzQyNyIsInVzZXIiOiJvU1JZMDA1eWgyY1hrYklvdW1oMnl2RDRyYzNZIiwiZmVlIjoiMC4xMCIsInRpdGxlIjoiJUU5JUE0JTkwJUU5JUE1JUFFMjAxNzExMTcwNDA3MTE1MTI1MTYifQ%3D%3D";', 1510907676),
('0967f1583d14d80f06f6dadfe82c9bcc', 6, '120.204.17.70', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"r0C2";i:1510904081;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D398";', 1510907681),
('99baf88fa9a67741c1fd4de014726b12', 6, '120.204.17.71', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"yQzQ";i:1510904085;}dest_url|s:336:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D59c86fecdd25ae9d0274265fc36263ed8eea56d7%26ps%3DeyJ0aWQiOiI5OCIsInVuaW9udGlkIjoiMjAxNzExMTcxNTM0MzUwMDAwMTUzNDM3NzQyNyIsInVzZXIiOiJvU1JZMDA1eWgyY1hrYklvdW1oMnl2RDRyYzNZIiwiZmVlIjoiMC4xMCIsInRpdGxlIjoiJUU5JUE0JTkwJUU5JUE1JUFFMjAxNzExMTcwNDA3MTE1MTI1MTYifQ%3D%3D";', 1510907685),
('1f45bd54ca4565d59068053f7f81a2ea', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ep61";i:1510904097;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510907697),
('930884bfb9b16737dc5b2351f586c04b', 6, '101.226.233.148', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"qDS7";i:1510904105;}dest_url|s:103:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dusercenter%26m%3Dweisrc_dish";', 1510907705),
('888c0ee3f1350724248abc7bacbce747', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"a20J";i:1510904106;}dest_url|s:98:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorder%26m%3Dweisrc_dish";', 1510907706),
('e53139b111b47c254e8daa2a2d965551', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:4:{s:4:"BWo6";i:1510910500;s:4:"bUEX";i:1510910500;s:4:"EGAE";i:1510910501;s:4:"QFo4";i:1510910503;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D377%26do%3Dorderdetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";oauth_acid|s:1:"6";openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";uid|s:2:"16";', 1510914103),
('fa00e5b43895262bf12310a18fae12af', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"u4V7";i:1510910500;}dest_url|s:120:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D377%26do%3Dorderdetail%26m%3Dweisrc_dish";', 1510914100),
('17135dd053df8316c8b463db50517252', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"FWCW";i:1510910502;}dest_url|s:147:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D377%26do%3Dorderdetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1510914102),
('31a0dd578e5b67f5ca8fcfe0eaa396fe', 6, '223.104.6.62', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"vitz";i:1510911256;s:4:"R9RA";i:1510911257;s:4:"RegG";i:1510911257;s:4:"K8Fp";i:1510911261;s:4:"HwJM";i:1510911265;s:4:"Gnec";i:1510911267;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";oauth_acid|s:1:"6";openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";uid|s:2:"16";', 1510914867),
('9cef3592ba5de8ebfc61cc9af7bf6cda', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"uvh5";i:1510911255;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510914855),
('1467169bd4faafc2b68c5e8185a14f0a', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"gxJ6";i:1510911256;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1510914856);
INSERT INTO `ims_core_sessions` (`sid`, `uniacid`, `openid`, `data`, `expiretime`) VALUES
('c1a1bdf3b5dc2ecb8dca2ee12a54e8ee', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"vJ0C";i:1510911257;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D061l5XTF1N90L10rMAVF1bRNTF1l5XTX%26state%3D0";', 1510914857),
('c15190be0c2533cc43f90bb05c20e169', 6, '101.226.233.148', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"VZIy";i:1510911257;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D061l5XTF1N90L10rMAVF1bRNTF1l5XTX%26state%3D0";', 1510914857),
('4041c56ad70b654fb5e0bb0ab6aa3654', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Sg7d";i:1510911263;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D4%26do%3Dwaplist%26m%3Dweisrc_dish";', 1510914863),
('1c33a92145b8771a9b2a633d5673e938', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"UdDQ";i:1510911265;}dest_url|s:98:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorder%26m%3Dweisrc_dish";', 1510914865),
('62378965e7e040e6d0179063996e076f', 6, '120.204.17.71', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"r25U";i:1510911275;}dest_url|s:98:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorder%26m%3Dweisrc_dish";', 1510914875),
('6cda10e45bee8559b0d8de92526c4b05', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:4:{s:4:"D624";i:1510913037;s:4:"X6XA";i:1510913038;s:4:"t3zA";i:1510913038;s:4:"x3hH";i:1510913039;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";oauth_acid|s:1:"6";openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";uid|s:2:"16";', 1510916639),
('3c8f596172480e929391641356901378', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"o68A";i:1510913038;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510916638),
('da0dcc788833e7b6417095d6885452ac', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"rQPG";i:1510913039;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1510916639),
('0b54b1827249b4c9a67d098a768da22e', 6, '223.104.6.30', 'acid|s:1:"6";uniacid|i:6;token|a:3:{s:4:"C7f1";i:1510936767;s:4:"S3ZK";i:1510936771;s:4:"KmD9";i:1510936773;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";oauth_openid|s:28:"oSRY0002kWJeWI40pNCycPqBUO3E";oauth_acid|s:1:"6";openid|s:28:"oSRY0002kWJeWI40pNCycPqBUO3E";uid|s:2:"17";', 1510940373),
('30dc97e137e4c8bff5cead36abb2458e', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"iXZx";i:1510929650;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";', 1510933250),
('e2c10574c7adcc2744ad25277da07da7', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"iA1p";i:1510929675;}dest_url|s:194:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26agentid%3D0%26do%3Dwaplist%26m%3Dweisrc_dish%26code%3D081M3Jy11wSeQ02L6Vv11z2xy11M3Jyr%26state%3D0";', 1510933275),
('e6de8c49e9cc4ed470bcb4d1e214c185', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"MrrR";i:1510929675;}dest_url|s:194:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26agentid%3D0%26do%3Dwaplist%26m%3Dweisrc_dish%26code%3D081M3Jy11wSeQ02L6Vv11z2xy11M3Jyr%26state%3D0";', 1510933275),
('dcdc355fa8b15c79c2de859e4c48fdce', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"TbjM";i:1510929677;}dest_url|s:153:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2%26wxref%3Dmp.weixin.qq.com";', 1510933277),
('b163b70e9e5136ed66269f38499d08bb', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"mk15";i:1510933052;}dest_url|s:124:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DreservationIndex%26m%3Dweisrc_dish";', 1510936652),
('9da17685bf039b1f1497b575b5588b89', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"P7qG";i:1510929679;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510933279),
('180e74da2e8b114030e5bf00c811dbc5', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"TzB9";i:1510929698;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26orderid%3D386%26do%3Ddeliveryorderdetail%26m%3Dweisrc_dish";', 1510933298),
('ec6fc2375f3149c7296e70575d973798', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Z6JA";i:1510929715;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26do%3Dwaplist%26m%3Dweisrc_dish";', 1510933315),
('e7b5cbb8713a04dc504848a81601044a', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"BrEh";i:1510933065;}dest_url|s:150:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DReservationIndex%26m%3Dweisrc_dish%26selectdate%3D2017-11-19";', 1510936665),
('4874ce9807a96b5e082648ecd3149d2b', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"eV99";i:1510933065;}dest_url|s:165:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DReservationDetail%26m%3Dweisrc_dish%26selectdate%3D2017-11-19%26timeid%3D18";', 1510936665),
('7ee7bee1b29809782c5ae96797bf8903', 6, '120.204.17.70', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"a7kk";i:1510933073;}dest_url|s:150:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DReservationIndex%26m%3Dweisrc_dish%26selectdate%3D2017-11-19";', 1510936673),
('2b9bb6aa13bf664109ed3aa4fcd41a48', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ADUI";i:1510936768;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";', 1510940368),
('c7afdba4d0fbcf3aea31602e843b0810', 6, '101.226.233.147', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Fq26";i:1510933074;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D399";', 1510936674),
('ab36ba6a93259c9aadb2924102557f22', 6, '120.204.17.70', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"vNxM";i:1510933075;}dest_url|s:165:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DReservationDetail%26m%3Dweisrc_dish%26selectdate%3D2017-11-19%26timeid%3D18";', 1510936675),
('df228e5bdb175b49299bd45d44af8c14', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"vZOb";i:1510933076;}dest_url|s:334:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D43042350b51a3213d0fceaf05f1952b3db3609e6%26ps%3DeyJ0aWQiOiI5OSIsInVuaW9udGlkIjoiMjAxNzExMTcyMzM3NTUwMDAwMTU4MDQ0NDI2OCIsInVzZXIiOiJvU1JZMDAwMmtXSmVXSTQwcE5DeWNQcUJVTzNFIiwiZmVlIjoiNTAuMDAiLCJ0aXRsZSI6IiVFOSVBNCU5MCVFOSVBNSVBRTIwMTcxMTE3MzMwNzQyNDU2NTYyIn0%3D";', 1510936676),
('c699b38c4062cc8d2ecffafd211d4218', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"zltT";i:1510933076;}dest_url|s:92:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dmc%26a%3Dcash%26do%3Dwechat%26";', 1510936676),
('bf27edfa09bc76b4e57fbf802e2d41b0', 6, '58.247.212.98', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"bwqV";i:1510933084;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D399";', 1510936684),
('0d16db784ad5d7bcafb22fae0fa6b748', 6, '120.204.17.46', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"fQQe";i:1510933086;}dest_url|s:334:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D43042350b51a3213d0fceaf05f1952b3db3609e6%26ps%3DeyJ0aWQiOiI5OSIsInVuaW9udGlkIjoiMjAxNzExMTcyMzM3NTUwMDAwMTU4MDQ0NDI2OCIsInVzZXIiOiJvU1JZMDAwMmtXSmVXSTQwcE5DeWNQcUJVTzNFIiwiZmVlIjoiNTAuMDAiLCJ0aXRsZSI6IiVFOSVBNCU5MCVFOSVBNSVBRTIwMTcxMTE3MzMwNzQyNDU2NTYyIn0%3D";', 1510936686),
('aa661af3943dc2a298d929d078d308a4', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Tft7";i:1510933090;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510936690),
('69057f253e280c2fe1f85d2a0fa4b7b9', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"OzhL";i:1510933109;}dest_url|s:78:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26eid%3D39";', 1510936709),
('4fa151b9962be7fe97f1e2e76715e5ba', 6, '120.204.17.46', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"HyZK";i:1510933119;}dest_url|s:78:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26eid%3D39";', 1510936719),
('0e0eb3793bd278f55d05e08128eca454', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"cAfC";i:1510933120;}dest_url|s:113:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dqueue%26m%3Dweisrc_dish";', 1510936720),
('fbdcb52f5b0b4be8af94f3dc7ea0a734', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"qB2d";i:1510933128;}dest_url|s:124:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DreservationIndex%26m%3Dweisrc_dish";', 1510936728),
('8f6c72ca333a13e694eccb19f460c0db', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"a1Fr";i:1510933131;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510936731),
('208a88ffc7abd82abfedec7062950641', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"A7Hp";i:1510933132;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26do%3Dwaplist%26m%3Dweisrc_dish";', 1510936732),
('0212350a256f15b32e307a3aef936011', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"K7pJ";i:1510933144;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0002kWJeWI40pNCycPqBUO3E%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1510936744),
('f558de36ce391013d5f8f498cb136baa', 6, '101.226.66.174', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Id3H";i:1510933250;}dest_url|s:150:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DReservationIndex%26m%3Dweisrc_dish%26selectdate%3D2017-11-19";', 1510936850),
('77acd54ff09637c72c141a0c8a8adb3e', 7, '140.243.163.202', 'acid|s:1:"7";uniacid|i:7;token|a:1:{s:4:"Cw6I";i:1510935003;}', 1510938603),
('0207b07bc00a93b61476b99ffcebae15', 7, '140.243.163.202', 'acid|s:1:"7";uniacid|i:7;token|a:6:{s:4:"rrRo";i:1510935060;s:4:"CKM3";i:1510935061;s:4:"R4DD";i:1510935067;s:4:"Hms6";i:1510935106;s:4:"H4o4";i:1510935109;s:4:"ccU2";i:1510935111;}', 1510938711),
('752123df2708a0bb20720a1604ad9a4c', 7, '101.226.64.177', 'acid|s:1:"7";uniacid|i:7;token|a:1:{s:4:"JM6H";i:1510935013;}', 1510938613),
('ab3c0c264f11c280c4f3057579495ead', 7, '101.226.66.192', 'acid|s:1:"7";uniacid|i:7;token|a:1:{s:4:"P22f";i:1510935025;}', 1510938625),
('79ae98709439866c79a297549a14ed29', 7, '101.226.33.208', 'acid|s:1:"7";uniacid|i:7;token|a:1:{s:4:"M7S7";i:1510935029;}', 1510938629),
('c20a4dfd1bbfb3eb4e5ec27cd4aab571', 7, '101.226.66.191', 'acid|s:1:"7";uniacid|i:7;token|a:1:{s:4:"IX3X";i:1510935029;}', 1510938629),
('9f83850616a028a4a70cd22f18174654', 7, '101.226.33.240', 'acid|s:1:"7";uniacid|i:7;token|a:1:{s:4:"o9Mm";i:1510935048;}', 1510938648),
('78d7e0716cae180dc46fb54961f8d40e', 7, '101.226.33.227', 'acid|s:1:"7";uniacid|i:7;token|a:1:{s:4:"BQLB";i:1510935054;}', 1510938654),
('24075019204b5dec84d285bc1252d7da', 7, '101.226.33.240', 'acid|s:1:"7";uniacid|i:7;token|a:1:{s:4:"ih6E";i:1510935077;}', 1510938677),
('b9c7a963248917690f3ce6b67e5c12f9', 7, '101.226.233.144', 'acid|s:1:"7";uniacid|i:7;token|a:1:{s:4:"WpP2";i:1510935261;}', 1510938861),
('4a0435a74eddb20b22ef1dc1e755f494', 7, '140.243.163.202', 'acid|s:1:"7";uniacid|i:7;token|a:1:{s:4:"z49h";i:1510935261;}', 1510938861),
('b51ae70095be1d0c3f1b119272226d8f', 7, '140.243.163.202', 'acid|s:1:"7";uniacid|i:7;token|a:1:{s:4:"KlV9";i:1510935263;}', 1510938863),
('ec9303736059b4499a9b7f2e9911f392', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Bb83";i:1510936773;}dest_url|s:153:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2%26wxref%3Dmp.weixin.qq.com";', 1510940373),
('9b79a22c376397535792fb78e7196b78', 6, '223.104.6.15', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"NhpB";i:1510971729;s:4:"Bk38";i:1510971729;s:4:"OSci";i:1510971732;s:4:"R6XP";i:1510971732;s:4:"dXuo";i:1510971738;s:4:"tZO9";i:1510971741;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";oauth_acid|s:1:"6";openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";uid|s:2:"16";', 1510975341),
('8ba7f93e6ee4470a14ee79b6c4c9e2a4', 6, '101.226.233.158', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Lb70";i:1510971457;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510975057),
('0c70f2dae0c79d4d30052f0186159dbf', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"qPOO";i:1510971458;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1510975058),
('a566428c986597597dcb6293320417ad', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Fcn3";i:1510971459;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1510975059),
('776a95d91671b222ff462e2dbffe0f7d', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"aiGn";i:1510971459;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D021H5mSx0ieXzj12G8Rx0rUjSx0H5mS9%26state%3D0";', 1510975059),
('a1b26aae3075a75b206f50c0fad2d44e', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Y6NI";i:1510971460;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D021H5mSx0ieXzj12G8Rx0rUjSx0H5mS9%26state%3D0";', 1510975060),
('97d9a6a5075d40afae1dbb642b2845b0', 6, '120.204.17.73', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"nqlp";i:1510971466;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510975066),
('eae8265bec79097499d416a28854bbb7', 6, 'oSRY000uHhXcjQ6jvJ9QemtELGmQ', 'openid|s:28:"oSRY000uHhXcjQ6jvJ9QemtELGmQ";', 1511144362),
('e7e8fb2645b3a97ee3aa10bb992e6d43', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"X195";i:1510971531;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510975131),
('7316885671c6b35279c836dfeed52c6b', 6, '223.104.6.18', 'acid|s:1:"6";uniacid|i:6;token|a:4:{s:4:"dn9O";i:1510974186;s:4:"vhze";i:1510974349;s:4:"mQkI";i:1510974475;s:4:"nchG";i:1510974482;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY000uHhXcjQ6jvJ9QemtELGmQ";oauth_acid|s:1:"6";openid|s:28:"oSRY000uHhXcjQ6jvJ9QemtELGmQ";uid|s:2:"48";', 1510978082),
('6012921da61683ef80f445a7a776cd8b', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ic14";i:1510971554;}dest_url|s:135:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D3%26do%3DreservationIndex%26m%3Dweisrc_dish";', 1510975154),
('bd337c46984bad28df29cb7a90046294', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ngGr";i:1510974185;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26do%3Dwaplist%26m%3Dweisrc_dish";', 1510977785),
('68ff6d7518a01830d06bd47c6eecfcff', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"cUhu";i:1510971558;}dest_url|s:165:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DReservationDetail%26m%3Dweisrc_dish%26selectdate%3D2017-11-18%26timeid%3D18";', 1510975158),
('8d21c7355605c0a198c0bd54be9bc4b7', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"kKyz";i:1510971563;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1510975163),
('457d2b0ab24a78aa72ee6a2fb21ddfaa', 6, '121.51.32.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"R8SQ";i:1510971564;}dest_url|s:135:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D3%26do%3DreservationIndex%26m%3Dweisrc_dish";', 1510975164),
('d91431d2bf5a24f884919254b2585fcd', 6, '183.192.201.97', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"zl8w";i:1510971567;}dest_url|s:165:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DReservationDetail%26m%3Dweisrc_dish%26selectdate%3D2017-11-18%26timeid%3D18";', 1510975167),
('8f74ab14400fdacd1c1c4e921d9d2154', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Gd6A";i:1510971569;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D071W6mfV0qQDwU1X4bfV0FacfV0W6mf6%26state%3D0";', 1510975169),
('5371a30260fbf10fcdc91b158086e575', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ZARg";i:1510971570;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D071W6mfV0qQDwU1X4bfV0FacfV0W6mf6%26state%3D0";', 1510975170),
('37be1c2371e324567536888dd088ce48', 6, '101.226.233.152', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Tk71";i:1510971654;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510975254),
('fb69f9b1920250e87d69e107f41ccf33', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"LuG7";i:1510971674;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510975274),
('c28f37c83e61b847ea316af65b58d39a', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"i3p8";i:1510971695;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26do%3Dwaplist%26m%3Dweisrc_dish";', 1510975295),
('9548a056c00121ae8f00918c8d3d4ab1', 6, '120.204.17.67', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"KP2K";i:1510971705;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26do%3Dwaplist%26m%3Dweisrc_dish";', 1510975305),
('d638ffcc14282541aa1299bfbb8d4a86', 6, '101.226.65.107', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"GyCC";i:1510971705;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26do%3Dwaplist%26m%3Dweisrc_dish";', 1510975305),
('ef8fbb34e509ecbc7a6bb1453ad763b4', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"XLhv";i:1510971715;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY007ii1nrPRxSCeihLAxANMB8%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1510975315),
('06dd20e7894bbecee9e3a9eda9542897', 6, '101.226.65.107', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"tz85";i:1510971720;}dest_url|s:165:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DReservationDetail%26m%3Dweisrc_dish%26selectdate%3D2017-11-18%26timeid%3D18";', 1510975320),
('281e3ab3545f1f083ef564af8cecc5a9', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"zeIi";i:1510971730;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D400";', 1510975330),
('759b13b6d71e49833ad469ad2afd9c46', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ScJe";i:1510971732;}dest_url|s:92:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dmc%26a%3Dcash%26do%3Dwechat%26";', 1510975332),
('47588b739824d7f3b7105b33d0de4424', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"ODRa";i:1510971733;}dest_url|s:340:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D829af85131c40c5e9cdbb0d8eb3def051db57d5d%26ps%3DeyJ0aWQiOiIxMDAiLCJ1bmlvbnRpZCI6IjIwMTcxMTE4MTAyMjEyMDAwMDE1NzMyNjIyMDUiLCJ1c2VyIjoib1NSWTAwN2lpMW5yUFJ4U0NlaWhMQXhBTk1COCIsImZlZSI6IjEyOC4wMCIsInRpdGxlIjoiJUU5JUE0JTkwJUU5JUE1JUFFMjAxNzExMTg3MTcyOTc0NTY0OTEifQ%3D%3D";', 1510975333),
('1a3226cdbb2f30dcce6e0eef03222843', 6, '120.204.17.73', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"UVPZ";i:1510971745;}dest_url|s:92:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dmc%26a%3Dcash%26do%3Dwechat%26";', 1510975345),
('f8df185f9563b6b8b276d0da0b2143b3', 6, '223.104.6.15', 'acid|s:1:"6";uniacid|i:6;token|a:5:{s:4:"j1pV";i:1510973171;s:4:"Q4aO";i:1510973208;s:4:"iqag";i:1510973210;s:4:"Ekzn";i:1510973211;s:4:"bdxQ";i:1510973239;}dest_url|s:124:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DreservationIndex%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";oauth_acid|s:1:"6";openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";uid|s:2:"16";', 1510976839),
('184c96965a42d1a4615b2ca631b61809', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"PK24";i:1510972321;}dest_url|s:124:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DreservationIndex%26m%3Dweisrc_dish";', 1510975921),
('0238a590b4abc0bb027bbad975c2d9e9', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"DUkm";i:1510973208;}dest_url|s:98:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dorder%26m%3Dweisrc_dish";', 1510976808),
('e2016da1037b8ddf7e0654dac2903069', 6, '101.226.233.157', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"f4bB";i:1510972323;}dest_url|s:151:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DreservationIndex%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1510975923),
('17e91d2f10ef7e12ff844a3dcfb78f3b', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"x1Sh";i:1510972323;}dest_url|s:151:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DreservationIndex%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1510975923),
('7af5603403d557fa2b735a4142d12dd6', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"jYl3";i:1510972327;}dest_url|s:165:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DReservationDetail%26m%3Dweisrc_dish%26selectdate%3D2017-11-18%26timeid%3D18";', 1510975927),
('3a24720ac402449caca9a5c72a4656ce', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"s06V";i:1510972327;}dest_url|s:178:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D3%26selectdate%3D2017-11-18%26timeid%3D18%26rtype%3D2%26do%3Dwaplist%26m%3Dweisrc_dish";', 1510975927),
('5ee1bae411bb0ca7bb131ebb88a8a527', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"dqXG";i:1510973171;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510976771),
('008cdb04059abc12abc55f6783bd79a0', 6, '101.226.233.142', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"DyWp";i:1510973211;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D4%26do%3Dwaplist%26m%3Dweisrc_dish";', 1510976811),
('4eac8b80ce4292f10262ae4784de701e', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"qQiF";i:1510974169;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510977769),
('9fb2c1acbe7f3b1221094b21885230bf', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"x6PU";i:1510974347;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";', 1510977947),
('200e4bc73709c7ecb5575d8645f2be75', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"hD0I";i:1510974474;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510978074),
('237f0fdab7a85a51a6d9386bf311561f', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"sUpY";i:1510974481;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dwaplist%26m%3Dweisrc_dish%26mode%3D2";', 1510978081),
('806ff52bca2e54ad06eee5693b303106', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"CKed";i:1511002453;s:4:"HC8o";i:1511002454;s:4:"IaiY";i:1511002454;s:4:"ioDU";i:1511002455;s:4:"zaq7";i:1511002455;s:4:"H575";i:1511002456;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";oauth_acid|s:1:"6";openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";uid|s:2:"16";', 1511006056),
('93859045a935677b399e7cf5000017cf', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"UMSB";i:1511002453;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511006053),
('20c2a27a9bedc40f4219ebac372bf230', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Me2I";i:1511002455;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511006055),
('b113976056298cc738e8b76a8889930b', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"C1s3";i:1511002457;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511006057),
('30e7dfb08a378b0fc2ceee8ce8b51700', 6, '58.247.212.98', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"s5Rp";i:1511002463;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511006063),
('c87c7c22acbad0d2a16df531f6bf7dcf', 6, '59.57.165.172', 'acid|s:1:"6";uniacid|i:6;token|a:4:{s:4:"bHhh";i:1511004914;s:4:"Tq55";i:1511004914;s:4:"Ejaa";i:1511004915;s:4:"M6cr";i:1511004916;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";oauth_acid|s:1:"6";openid|s:28:"oSRY007ii1nrPRxSCeihLAxANMB8";uid|s:2:"16";', 1511008516),
('7a24f5403961585bc14fe45885f34c62', 6, '101.226.233.139', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"yG2v";i:1511004914;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511008514),
('2f721c495ad95542eb00b27aa842bec8', 6, '101.226.233.143', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"pqVt";i:1511004915;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511008515),
('0c087452673c661b7a9b00e61f5274a9', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"fII1";i:1511004918;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D4%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511008518),
('4d5d4f8f2619bac78321df4c2132cf60', 6, '120.204.17.69', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"U7zz";i:1511004926;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D4%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511008526),
('3d5f3ea65f80168afb66cbded8765685', 6, '101.226.66.174', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"wUY3";i:1511005118;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D4%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511008718),
('16e5eeafaa44dc346392462dbde9d3cd', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"oDWW";i:1511018256;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1511021856),
('2c5c388ff75bbd910a41e82f566defa7', 6, '119.233.202.179', 'acid|s:1:"6";uniacid|i:6;token|a:6:{s:4:"naQF";i:1511019420;s:4:"L3cO";i:1511019420;s:4:"Clbk";i:1511019421;s:4:"Yvvj";i:1511019421;s:4:"m15p";i:1511019421;s:4:"E2TU";i:1511019423;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY0002kWJeWI40pNCycPqBUO3E";oauth_acid|s:1:"6";openid|s:28:"oSRY0002kWJeWI40pNCycPqBUO3E";uid|s:2:"17";', 1511023023),
('b14d6444d9c396d60d41cc5610a8c0c4', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"fxHb";i:1511018259;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511021859),
('f1ee2553dcffacb43d0013442831358a', 6, '101.226.233.150', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"YGIQ";i:1511018259;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1511021859),
('102195ee152c25c709c2792cddfa287a', 6, '101.226.233.140', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"eJp6";i:1511018260;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D0613bD2C0cZyig2GP64C0hty2C03bD2Z%26state%3D0";', 1511021860),
('014ba90986b782a546b273955856a822', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"rR6P";i:1511018260;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D0613bD2C0cZyig2GP64C0hty2C03bD2Z%26state%3D0";', 1511021860),
('ec5aa0c864d66a705ebafb8b9899ec7f', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"PN3w";i:1511018267;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D2%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511021867),
('8e97c04bc0f98f741914b19821fbffc3', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"uHsH";i:1511018271;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0002kWJeWI40pNCycPqBUO3E%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511021871),
('14951c90b5441e055d4d9253f98e39f2', 6, '120.204.17.70', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Fv4X";i:1511018281;}dest_url|s:169:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0002kWJeWI40pNCycPqBUO3E%26storeid%3D21%26mode%3D2%26do%3Dwapmenu%26m%3Dweisrc_dish";', 1511021881),
('6f063315a6fb6ca5a4452d2a8aa866a4', 6, '101.226.233.146', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"tl17";i:1511018284;}dest_url|s:113:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3Dqueue%26m%3Dweisrc_dish";', 1511021884),
('9d76ae081844c0f7dcda5052d6d6e4a9', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"psI8";i:1511018287;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D5%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511021887),
('2d5be86694d806fe6dbb61442d044753', 6, '101.226.233.145', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"gDR2";i:1511018291;}dest_url|s:156:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0002kWJeWI40pNCycPqBUO3E%26storeid%3D21%26do%3Dqueue%26m%3Dweisrc_dish";', 1511021891),
('0eb7e88b49234b907b50cd02837b1853', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"N8Cu";i:1511018296;}dest_url|s:124:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DreservationIndex%26m%3Dweisrc_dish";', 1511021896),
('bf57d2e58d3e46cfce437a66b37f5d16', 6, '120.204.17.69', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"VuFa";i:1511018297;}dest_url|s:126:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26mode%3D5%26do%3Dwaplist%26m%3Dweisrc_dish";', 1511021897),
('9253d98e336e14d66cff2eb13b25cd6f', 6, '120.204.17.70', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"z0oo";i:1511018300;}dest_url|s:156:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26from_user%3DoSRY0002kWJeWI40pNCycPqBUO3E%26storeid%3D21%26do%3Dqueue%26m%3Dweisrc_dish";', 1511021900),
('3f7c54fa0dc1b0f0b373b4ab3104e674', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"n5Q2";i:1511018302;}dest_url|s:150:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DReservationIndex%26m%3Dweisrc_dish%26selectdate%3D2017-11-20";', 1511021902),
('e7f4744281ab7ed75cfb7733e659193c', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"bL9l";i:1511018303;}dest_url|s:165:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DReservationDetail%26m%3Dweisrc_dish%26selectdate%3D2017-11-20%26timeid%3D18";', 1511021903),
('ad0391dc05a22eee881b2cc9486b8b96', 6, '101.226.233.156', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"x0qV";i:1511018308;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D401";', 1511021908),
('03fd398a06f53a2793c672cef1e705cc', 6, '101.226.233.155', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Q5I5";i:1511018309;}dest_url|s:92:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dmc%26a%3Dcash%26do%3Dwechat%26";', 1511021909),
('33f63699b4473d402808945d32b7313f', 6, '120.204.17.73', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"x0J0";i:1511018311;}dest_url|s:150:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DReservationIndex%26m%3Dweisrc_dish%26selectdate%3D2017-11-20";', 1511021911),
('4376d2ef69e2343fa6672923770e29f6', 6, '101.226.233.141', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Pbyb";i:1511018312;}dest_url|s:332:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D659519b5c48c353794abe10235c8bec844423578%26ps%3DeyJ0aWQiOiIxMDEiLCJ1bmlvbnRpZCI6IjIwMTcxMTE4MjMxODI5MDAwMDE1NjkyMjI2OTQiLCJ1c2VyIjoib1NSWTAwMDJrV0plV0k0MHBOQ3ljUHFCVU8zRSIsImZlZSI6IjUwLjAwIiwidGl0bGUiOiIlRTklQTQlOTAlRTklQTUlQUUyMDE3MTExODE4MzA3ODA2NzY3NSJ9";', 1511021912),
('6984702a592c4ad726b18f8062219454', 6, '120.204.17.73', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"wfPP";i:1511018313;}dest_url|s:165:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26storeid%3D21%26do%3DReservationDetail%26m%3Dweisrc_dish%26selectdate%3D2017-11-20%26timeid%3D18";', 1511021913),
('7f7c61eae9f41cf42c2a11dff410ef75', 6, '120.204.17.46', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"QO3t";i:1511018317;}dest_url|s:112:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dpay%26m%3Dweisrc_dish%26orderid%3D401";', 1511021917),
('132a252b37ceafafa99f0b1089f612ee', 6, '101.226.65.107', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"JNPK";i:1511018319;}dest_url|s:332:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D659519b5c48c353794abe10235c8bec844423578%26ps%3DeyJ0aWQiOiIxMDEiLCJ1bmlvbnRpZCI6IjIwMTcxMTE4MjMxODI5MDAwMDE1NjkyMjI2OTQiLCJ1c2VyIjoib1NSWTAwMDJrV0plV0k0MHBOQ3ljUHFCVU8zRSIsImZlZSI6IjUwLjAwIiwidGl0bGUiOiIlRTklQTQlOTAlRTklQTUlQUUyMDE3MTExODE4MzA3ODA2NzY3NSJ9";', 1511021919),
('a37a69d0c26e4d631d9626914a7a3361', 6, '120.204.17.71', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"wOtv";i:1511018319;}dest_url|s:332:"http%3A%2F%2Fwww.dianlema.net%2Fpayment%2Fwechat%2Fpay.php%3Fi%3D6%26auth%3D659519b5c48c353794abe10235c8bec844423578%26ps%3DeyJ0aWQiOiIxMDEiLCJ1bmlvbnRpZCI6IjIwMTcxMTE4MjMxODI5MDAwMDE1NjkyMjI2OTQiLCJ1c2VyIjoib1NSWTAwMDJrV0plV0k0MHBOQ3ljUHFCVU8zRSIsImZlZSI6IjUwLjAwIiwidGl0bGUiOiIlRTklQTQlOTAlRTklQTUlQUUyMDE3MTExODE4MzA3ODA2NzY3NSJ9";', 1511021919),
('505c68bed4935e43c430579b6f00ce59', 6, 'oSRY00ymxuQQkyt71joCQe5uH1WQ', 'openid|s:28:"oSRY00ymxuQQkyt71joCQe5uH1WQ";', 1511255426),
('26bf823707f5bc619f75419902a8aaf0', 6, '211.97.131.49', 'acid|s:1:"6";uniacid|i:6;token|a:5:{s:4:"bXfr";i:1510823435;s:4:"iP1d";i:1510823436;s:4:"LyC9";i:1510823436;s:4:"dU8Q";i:1510823436;s:4:"uFv6";i:1510823437;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY00ymxuQQkyt71joCQe5uH1WQ";oauth_acid|s:1:"6";openid|s:28:"oSRY00ymxuQQkyt71joCQe5uH1WQ";uid|s:2:"47";', 1510827037),
('c32e56989b9d583cbef59ebe4b2980e5', 6, '101.226.233.154', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"QWQM";i:1510823436;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510827036),
('220db9b3ca86a3a15d09fd4119817de1', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Z60d";i:1510823436;}dest_url|s:136:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1510827036),
('934e7429c60a2873544e300d48da8124', 6, '101.226.233.153', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"C8Cc";i:1510823437;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D021phOAW0WIQSV1NnxAW0FCwAW0phOAi%26state%3D0";', 1510827037),
('6fb889a8539d134cb5006449939091da', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"yxNk";i:1510823439;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D021phOAW0WIQSV1NnxAW0FCwAW0phOAi%26state%3D0";', 1510827039),
('891515a33a17b617c4f9dd937b6ea912', 6, '101.226.233.151', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"FfTW";i:1510826190;}dest_url|s:101:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dmycoupon%26m%3Dweisrc_dish";oauth_openid|s:28:"oSRY0002kWJeWI40pNCycPqBUO3E";oauth_acid|s:1:"6";openid|s:28:"oSRY0002kWJeWI40pNCycPqBUO3E";uid|s:2:"17";', 1510829790),
('fda37414055ba051c18b07028249edb8', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"zOLo";i:1510826191;}dest_url|s:128:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dmycoupon%26m%3Dweisrc_dish%26wxref%3Dmp.weixin.qq.com";', 1510829791),
('94bbb2de7e78643df202dd4a195da9a5', 6, '101.226.233.158', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"G8y4";i:1510825703;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D071p9OGr0rmmqd15p5Gr02iNGr0p9OGj%26state%3D0";', 1510829303),
('5937619d898c4a3944d3a19075da78b3', 6, '101.226.233.144', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"CKKY";i:1510826190;}dest_url|s:101:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26do%3Dmycoupon%26m%3Dweisrc_dish";', 1510829790),
('59087c0114c5438a96508eef44b24c36', 6, '101.226.233.149', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"VdUD";i:1510826228;}dest_url|s:109:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26do%3Ddetail%26m%3Dweisrc_dish";', 1510829828),
('708ad063a10995069fa88fa5404e7cb7', 6, '101.226.233.152', 'acid|s:1:"6";uniacid|i:6;token|a:1:{s:4:"Ulos";i:1510826230;}dest_url|s:177:"http%3A%2F%2Fwww.dianlema.net%2Fapp%2Findex.php%3Fi%3D6%26c%3Dentry%26id%3D21%26agentid%3D0%26do%3Ddetail%26m%3Dweisrc_dish%26code%3D071p9OGr0rmmqd15p5Gr02iNGr0p9OGj%26state%3D0";', 1510829830);

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_settings`
--

CREATE TABLE IF NOT EXISTS `ims_core_settings` (
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_core_settings`
--

INSERT INTO `ims_core_settings` (`key`, `value`) VALUES
('authmode', 'i:1;'),
('close', 'a:2:{s:6:"status";s:1:"0";s:6:"reason";s:0:"";}'),
('copyright', 'a:31:{s:6:"status";s:1:"0";s:4:"demo";s:1:"0";s:6:"is_dns";s:1:"0";s:8:"is_check";s:1:"0";s:10:"verifycode";s:1:"0";s:6:"reason";s:0:"";s:6:"smname";s:0:"";s:8:"sitename";s:9:"点了码";s:3:"url";s:16:"http://lgzol.cn/";s:8:"sitehost";s:0:"";s:7:"payhost";s:0:"";s:8:"statcode";s:0:"";s:10:"footerleft";s:24:"powered by weizancms.com";s:11:"footerright";s:0:"";s:4:"icon";s:51:"images/6/2017/10/aGGa2f3dLF1fiRA8U03FDUgu32tBIa.png";s:3:"ewm";s:48:"images/global/xMHYh7hYH9hsCSSv7hvi4Vv4h2qm57.jpg";s:5:"flogo";s:48:"images/global/aooVi0nyo4c36m31UoYt6T63tI6uJo.png";s:6:"slides";s:2:"N;";s:6:"notice";s:0:"";s:5:"blogo";s:48:"images/global/S2VUlT291Z5J9D5tV8hr9P6Q2vFVDF.jpg";s:8:"baidumap";a:2:{s:3:"lng";s:10:"118.096222";s:3:"lat";s:9:"24.442196";}s:7:"company";s:33:"厦门点了码科技有限公司";s:14:"companyprofile";s:0:"";s:7:"address";s:45:"厦门市思明区世茂海峡大厦a塔45楼";s:6:"person";s:9:"点了码";s:5:"phone";s:8:"XXXXXXXX";s:2:"qq";s:7:"XXXXXXX";s:5:"email";s:0:"";s:8:"keywords";s:9:"点了码";s:11:"description";s:9:"点了码";s:12:"showhomepage";i:1;}'),
('register', 'a:4:{s:4:"open";i:1;s:6:"verify";i:0;s:4:"code";i:1;s:7:"groupid";i:1;}'),
('addons', 'a:2:{s:10:"addons_url";s:23:"http://addons.weizancms.com";s:5:"c_url";s:20:"http://www.012wz.com";}'),
('platform', 'a:5:{s:5:"token";s:32:"FaA9nNSBiIyiisgmccsIBgAmzmMvhFqT";s:14:"encodingaeskey";s:43:"eXSBp5AC72cO55v2z2aNl2xxM1L3VC5a2IbIsLNVOSV";s:5:"appid";s:18:"wxf906fe71b74173e8";s:9:"appsecret";s:32:"364d27b352bfe9b27c9ec814e4b074aa";s:9:"authstate";i:1;}'),
('taocan', 'a:4:{s:7:"jichuid";i:1;s:9:"shangyeid";i:1;s:8:"hangyeid";i:1;s:8:"zhizunid";i:3;}'),
('module_ban', 'a:0:{}'),
('module_upgrade', 'a:0:{}'),
('kim_financial', 'a:12:{s:5:"mchid";s:0:"";s:7:"signkey";s:0:"";s:11:"service_qqs";s:0:"";s:14:"alipay_account";s:0:"";s:7:"partner";s:0:"";s:3:"key";s:0:"";s:12:"dx_UnitPrice";s:1:"0";s:10:"over_group";s:1:"1";s:7:"tx_date";s:1:"7";s:8:"tx_email";s:0:"";s:11:"package_day";s:2:"90";s:10:"service_gg";s:21:"&lt;p&gt;30&lt;/p&gt;";}');

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_wechats_attachment`
--

CREATE TABLE IF NOT EXISTS `ims_core_wechats_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `media_id` varchar(255) NOT NULL,
  `type` varchar(15) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `model` varchar(25) NOT NULL,
  `tag` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `media_id` (`media_id`),
  KEY `acid` (`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_coupon`
--

CREATE TABLE IF NOT EXISTS `ims_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL,
  `logo_url` varchar(150) NOT NULL,
  `code_type` tinyint(3) unsigned NOT NULL,
  `brand_name` varchar(15) NOT NULL,
  `title` varchar(15) NOT NULL,
  `sub_title` varchar(20) NOT NULL,
  `color` varchar(15) NOT NULL,
  `notice` varchar(15) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_info` varchar(200) NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `location_id_list` varchar(1000) NOT NULL,
  `use_custom_code` tinyint(3) NOT NULL,
  `bind_openid` tinyint(3) unsigned NOT NULL,
  `can_share` tinyint(3) unsigned NOT NULL,
  `can_give_friend` tinyint(3) unsigned NOT NULL,
  `get_limit` tinyint(3) unsigned NOT NULL,
  `service_phone` varchar(20) NOT NULL,
  `extra` varchar(1000) NOT NULL,
  `source` varchar(20) NOT NULL,
  `url_name_type` varchar(20) NOT NULL,
  `custom_url` varchar(100) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `promotion_url_name` varchar(10) NOT NULL,
  `promotion_url` varchar(100) NOT NULL,
  `promotion_url_sub_title` varchar(10) NOT NULL,
  `is_selfconsume` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_coupon_activity`
--

CREATE TABLE IF NOT EXISTS `ims_coupon_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `msg_id` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` int(3) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `coupons` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `members` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_coupon_groups`
--

CREATE TABLE IF NOT EXISTS `ims_coupon_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `couponid` varchar(255) NOT NULL,
  `groupid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_coupon_location`
--

CREATE TABLE IF NOT EXISTS `ims_coupon_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `offset_type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `message` varchar(255) NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_coupon_modules`
--

CREATE TABLE IF NOT EXISTS `ims_coupon_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL DEFAULT '0',
  `card_id` varchar(50) NOT NULL,
  `module` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `card_id` (`card_id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `couponid` (`couponid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_coupon_record`
--

CREATE TABLE IF NOT EXISTS `ims_coupon_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `outer_id` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `friend_openid` varchar(50) NOT NULL,
  `givebyfriend` tinyint(3) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `usetime` int(10) unsigned NOT NULL,
  `status` tinyint(3) NOT NULL,
  `clerk_name` varchar(15) NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `grantmodule` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `outer_id` (`outer_id`),
  KEY `card_id` (`card_id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_coupon_setting`
--

CREATE TABLE IF NOT EXISTS `ims_coupon_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) NOT NULL,
  `logourl` varchar(150) NOT NULL,
  `whitelist` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_coupon_store`
--

CREATE TABLE IF NOT EXISTS `ims_coupon_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `couponid` varchar(255) NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `couponid` (`couponid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_cover_reply`
--

CREATE TABLE IF NOT EXISTS `ims_cover_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL DEFAULT '0',
  `rid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL DEFAULT '',
  `do` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `ims_cover_reply`
--

INSERT INTO `ims_cover_reply` (`id`, `uniacid`, `multiid`, `rid`, `module`, `do`, `title`, `description`, `thumb`, `url`) VALUES
(1, 1, 0, 7, 'mc', '', '进入个人中心', '', '', './index.php?c=mc&a=home&i=1'),
(2, 1, 1, 8, 'site', '', '进入首页', '', '', './index.php?c=home&i=1&t=1');

-- --------------------------------------------------------

--
-- 表的结构 `ims_custom_reply`
--

CREATE TABLE IF NOT EXISTS `ims_custom_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `start1` int(10) NOT NULL DEFAULT '-1',
  `end1` int(10) NOT NULL DEFAULT '-1',
  `start2` int(10) NOT NULL DEFAULT '-1',
  `end2` int(10) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_domain`
--

CREATE TABLE IF NOT EXISTS `ims_domain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `domain` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `entry` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `module` varchar(20) NOT NULL DEFAULT '',
  `eid` int(11) NOT NULL,
  `ext` text,
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `all` tinyint(3) NOT NULL DEFAULT '0',
  `redirect` tinyint(3) NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_domain` (`domain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_domain_group`
--

CREATE TABLE IF NOT EXISTS `ims_domain_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL DEFAULT '',
  `host` varchar(80) NOT NULL DEFAULT '',
  `groupid` int(11) NOT NULL,
  `isaccount` tinyint(3) NOT NULL DEFAULT '0',
  `limit` int(10) unsigned NOT NULL DEFAULT '0',
  `ext` text,
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `domain` tinyint(3) NOT NULL DEFAULT '0',
  `right` tinyint(3) NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_groupid` (`groupid`),
  KEY `idx_isaccount` (`isaccount`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_fournet_pcmulti`
--

CREATE TABLE IF NOT EXISTS `ims_fournet_pcmulti` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `site_info` text NOT NULL,
  `quickmenu` varchar(2000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `bindhost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `bindhost` (`bindhost`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_fournet_pcnav`
--

CREATE TABLE IF NOT EXISTS `ims_fournet_pcnav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `section` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `position` tinyint(4) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(500) NOT NULL,
  `css` varchar(1000) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `categoryid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_fournet_pcpage`
--

CREATE TABLE IF NOT EXISTS `ims_fournet_pcpage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `params` longtext NOT NULL,
  `html` longtext NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_fournet_pcslide`
--

CREATE TABLE IF NOT EXISTS `ims_fournet_pcslide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `displayorder` tinyint(4) NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_fournet_pcstyles`
--

CREATE TABLE IF NOT EXISTS `ims_fournet_pcstyles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_fournet_pcstyles_vars`
--

CREATE TABLE IF NOT EXISTS `ims_fournet_pcstyles_vars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `variable` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_fournet_pctemplates`
--

CREATE TABLE IF NOT EXISTS `ims_fournet_pctemplates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `version` varchar(64) NOT NULL,
  `description` varchar(500) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `sections` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_images_reply`
--

CREATE TABLE IF NOT EXISTS `ims_images_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_card`
--

CREATE TABLE IF NOT EXISTS `ims_mc_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `color` varchar(255) NOT NULL,
  `background` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `format` varchar(50) NOT NULL,
  `fields` varchar(1000) NOT NULL,
  `snpos` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `business` text NOT NULL,
  `description` varchar(512) NOT NULL,
  `discount_type` tinyint(3) unsigned NOT NULL,
  `discount` varchar(3000) NOT NULL,
  `grant` varchar(3000) NOT NULL,
  `grant_rate` varchar(20) NOT NULL,
  `offset_rate` int(10) unsigned NOT NULL,
  `offset_max` int(10) NOT NULL,
  `nums_status` tinyint(3) unsigned NOT NULL,
  `nums_text` varchar(15) NOT NULL,
  `nums` varchar(1000) NOT NULL,
  `times_status` tinyint(3) unsigned NOT NULL,
  `times_text` varchar(15) NOT NULL,
  `times` varchar(1000) NOT NULL,
  `recharge` varchar(500) NOT NULL,
  `format_type` tinyint(3) unsigned NOT NULL,
  `params` longtext NOT NULL,
  `html` longtext NOT NULL,
  `recommend_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sign_status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '签到功能是否开启，0为关闭，1为开启',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_card_care`
--

CREATE TABLE IF NOT EXISTS `ims_mc_card_care` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit2` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `granttime` int(10) unsigned NOT NULL,
  `days` int(10) unsigned NOT NULL,
  `time` tinyint(3) unsigned NOT NULL,
  `show_in_card` tinyint(3) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL,
  `sms_notice` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_card_credit_set`
--

CREATE TABLE IF NOT EXISTS `ims_mc_card_credit_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `sign` varchar(1000) NOT NULL,
  `share` varchar(500) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_card_members`
--

CREATE TABLE IF NOT EXISTS `ims_mc_card_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `cid` int(10) NOT NULL DEFAULT '0',
  `cardsn` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nums` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_card_notices`
--

CREATE TABLE IF NOT EXISTS `ims_mc_card_notices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_card_notices_unread`
--

CREATE TABLE IF NOT EXISTS `ims_mc_card_notices_unread` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `notice_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`),
  KEY `notice_id` (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_card_recommend`
--

CREATE TABLE IF NOT EXISTS `ims_mc_card_recommend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_card_record`
--

CREATE TABLE IF NOT EXISTS `ims_mc_card_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `model` tinyint(3) unsigned NOT NULL,
  `fee` decimal(10,2) unsigned NOT NULL,
  `tag` varchar(10) NOT NULL,
  `note` varchar(255) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_card_sign_record`
--

CREATE TABLE IF NOT EXISTS `ims_mc_card_sign_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `is_grant` tinyint(3) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_cash_record`
--

CREATE TABLE IF NOT EXISTS `ims_mc_cash_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `fee` decimal(10,2) unsigned NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit1_fee` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `cash` decimal(10,2) unsigned NOT NULL,
  `return_cash` decimal(10,2) unsigned NOT NULL,
  `final_cash` decimal(10,2) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `trade_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_chats_record`
--

CREATE TABLE IF NOT EXISTS `ims_mc_chats_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `openid` varchar(32) NOT NULL,
  `msgtype` varchar(15) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `openid` (`openid`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `ims_mc_chats_record`
--

INSERT INTO `ims_mc_chats_record` (`id`, `uniacid`, `acid`, `flag`, `openid`, `msgtype`, `content`, `createtime`) VALUES
(1, 6, 0, 1, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 'text', 'a:1:{s:7:"content";s:155:"%E7%85%9E%E7%AC%94+%E4%BD%A0%E4%BB%A5%E5%90%8E%E5%88%AB%E6%9D%A5%E6%88%91%E8%BF%99%E5%84%BF%E5%90%83%E9%A5%AD%E4%BA%86+%E9%92%B1%E9%83%BD%E4%B8%8D%E4%BB%98";}', 1510654203),
(2, 6, 6, 2, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 'text', '不去就不去，你家点餐点了几天，还没上菜，搞锤子！？', 1510654422),
(3, 6, 6, 2, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 'text', '差评', 1510654432),
(4, 6, 0, 1, 'oSRY007ii1nrPRxSCeihLAxANMB8', 'text', 'a:1:{s:7:"content";s:82:"%E7%94%A8%E9%A4%90%E9%AB%98%E5%B3%B0%E6%9C%9F+%E5%BF%AB%E5%8E%BB%E9%85%8D%E9%80%81";}', 1510654546),
(5, 6, 0, 1, 'oSRY0002kWJeWI40pNCycPqBUO3E', 'text', 'a:1:{s:7:"content";s:770:"%E5%B0%8A%E6%95%AC%E7%9A%84%E7%82%B9%E4%BA%86%E7%A0%81%E7%94%A8%E6%88%B7%EF%BC%9A%5Cn++%E4%BD%A0%E5%A5%BD%EF%BC%81%E6%9C%AC%E5%85%AC%E5%8F%B8%E4%BA%A7%E5%93%81%E5%B0%86%E4%BA%8E2017%E5%B9%B411%E6%9C%8820%E6%97%A5%E6%AD%A3%E5%BC%8F%E5%90%AF%E5%8A%A8%EF%BC%8C%E6%84%9F%E8%B0%A2%E6%82%A8%E7%9A%84%E6%94%AF%E6%8C%81%E4%B8%8E%E8%AE%A4%E5%8F%AF%EF%BC%81%E6%95%AC%E8%AF%B7%E6%9C%9F%E5%BE%85%EF%BC%81%5Cn++%E6%9C%AC%E5%85%AC%E5%8F%B8%E5%B0%86%E4%BA%8E19%E6%97%A5%E6%99%9A8%EF%BC%9A00%E5%9C%A8%E4%BC%9A%E5%B1%95%E6%B5%B7%E8%BE%B9%E7%BB%84%E7%BB%87%E5%90%B9%E9%A3%8E%E6%B4%BB%E5%8A%A8%EF%BC%8C%E6%AC%A2%E8%BF%8E%E6%9C%89%E6%97%B6%E9%97%B4%E7%9A%84%E6%9C%8B%E5%8F%8B%E6%8D%A7%E5%9C%BA%E4%BA%92%E5%8A%A8%EF%BC%81%5Cn++%E7%88%B1%E4%BD%A0%EF%BC%81%E4%B9%88%E4%B9%88%E5%93%92+%EF%BC%81";}', 1510713598),
(6, 6, 0, 1, 'oSRY0002kWJeWI40pNCycPqBUO3E', 'text', 'a:1:{s:7:"content";s:770:"%E5%B0%8A%E6%95%AC%E7%9A%84%E7%82%B9%E4%BA%86%E7%A0%81%E7%94%A8%E6%88%B7%EF%BC%9A%5Cn++%E4%BD%A0%E5%A5%BD%EF%BC%81%E6%9C%AC%E5%85%AC%E5%8F%B8%E4%BA%A7%E5%93%81%E5%B0%86%E4%BA%8E2017%E5%B9%B411%E6%9C%8820%E6%97%A5%E6%AD%A3%E5%BC%8F%E5%90%AF%E5%8A%A8%EF%BC%8C%E6%84%9F%E8%B0%A2%E6%82%A8%E7%9A%84%E6%94%AF%E6%8C%81%E4%B8%8E%E8%AE%A4%E5%8F%AF%EF%BC%81%E6%95%AC%E8%AF%B7%E6%9C%9F%E5%BE%85%EF%BC%81%5Cn++%E6%9C%AC%E5%85%AC%E5%8F%B8%E5%B0%86%E4%BA%8E19%E6%97%A5%E6%99%9A8%EF%BC%9A00%E5%9C%A8%E4%BC%9A%E5%B1%95%E6%B5%B7%E8%BE%B9%E7%BB%84%E7%BB%87%E5%90%B9%E9%A3%8E%E6%B4%BB%E5%8A%A8%EF%BC%8C%E6%AC%A2%E8%BF%8E%E6%9C%89%E6%97%B6%E9%97%B4%E7%9A%84%E6%9C%8B%E5%8F%8B%E6%8D%A7%E5%9C%BA%E4%BA%92%E5%8A%A8%EF%BC%81%5Cn++%E7%88%B1%E4%BD%A0%EF%BC%81%E4%B9%88%E4%B9%88%E5%93%92+%EF%BC%81";}', 1510713605),
(7, 6, 0, 1, 'oSRY004apWoEmgGRX6tq94KeP8SE', 'text', 'a:1:{s:7:"content";s:22:"%E4%BD%A0%E5%A5%BD%5Cn";}', 1510715990),
(8, 6, 0, 1, 'oSRY0069zmR3bYgg6-YSEbdA-K1E', 'text', 'a:1:{s:7:"content";s:72:"%E4%BD%A0%E5%A5%BD%EF%BC%81%E4%BB%8A%E6%99%9A%E7%BA%A6%E5%90%97%EF%BC%9F";}', 1511145648),
(9, 6, 0, 1, 'oSRY0069zmR3bYgg6-YSEbdA-K1E', 'text', 'a:1:{s:7:"content";s:72:"%E4%BD%A0%E5%A5%BD%EF%BC%81%E4%BB%8A%E6%99%9A%E7%BA%A6%E5%90%97%EF%BC%9F";}', 1511145655),
(10, 6, 0, 1, 'oSRY0069zmR3bYgg6-YSEbdA-K1E', 'text', 'a:1:{s:7:"content";s:72:"%E4%BD%A0%E5%A5%BD%EF%BC%81%E4%BB%8A%E6%99%9A%E7%BA%A6%E5%90%97%EF%BC%9F";}', 1511145658),
(11, 6, 0, 1, 'oSRY0069zmR3bYgg6-YSEbdA-K1E', 'text', 'a:1:{s:7:"content";s:72:"%E4%BD%A0%E5%A5%BD%EF%BC%81%E4%BB%8A%E6%99%9A%E7%BA%A6%E5%90%97%EF%BC%9F";}', 1511145664),
(12, 6, 6, 2, 'oSRY0069zmR3bYgg6-YSEbdA-K1E', 'text', 'http://www.dianlema.net/app/index.php?i=6&c=entry&do=mycoupon&m=weisrc_dish', 1511145708),
(13, 6, 6, 2, 'oSRY0069zmR3bYgg6-YSEbdA-K1E', 'text', 'http://www.dianlema.net/app/index.php?i=6&c=entry&eid=39', 1511145719),
(14, 6, 6, 2, 'oSRY0069zmR3bYgg6-YSEbdA-K1E', 'text', 'http://www.dianlema.net/app/index.php?i=6&c=entry&id=21&do=detail&m=weisrc_dish', 1511145826);

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_credits_recharge`
--

CREATE TABLE IF NOT EXISTS `ims_mc_credits_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `tid` varchar(64) NOT NULL,
  `transid` varchar(30) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `type` varchar(15) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `backtype` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid_uid` (`uniacid`,`uid`),
  KEY `idx_tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_credits_record`
--

CREATE TABLE IF NOT EXISTS `ims_mc_credits_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(11) NOT NULL,
  `credittype` varchar(10) NOT NULL DEFAULT '',
  `num` decimal(10,2) NOT NULL,
  `operator` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `remark` varchar(200) NOT NULL DEFAULT '',
  `module` varchar(30) NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `ims_mc_credits_record`
--

INSERT INTO `ims_mc_credits_record` (`id`, `uid`, `uniacid`, `credittype`, `num`, `operator`, `createtime`, `remark`, `module`, `clerk_id`, `store_id`, `clerk_type`) VALUES
(1, 17, 6, 'credit1', '2.00', 17, 1510539539, '微点餐积分奖励 订单ID:355', '', 0, 0, 1),
(2, 27, 6, 'credit1', '10.00', 27, 1510539539, '微点餐积分奖励 订单ID:353', '', 0, 0, 1),
(3, 17, 6, 'credit1', '2.00', 17, 1510539539, '微点餐积分奖励 订单ID:350', '', 0, 0, 1),
(4, 44, 6, 'credit1', '2.00', 44, 1510624987, '微点餐积分奖励 订单ID:366', '', 0, 0, 1),
(5, 17, 6, 'credit1', '14.00', 17, 1510624987, '微点餐积分奖励 订单ID:361', '', 0, 0, 1),
(6, 26, 6, 'credit1', '10.00', 26, 1511151748, '微点餐积分奖励 订单ID:374', '', 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_fans_groups`
--

CREATE TABLE IF NOT EXISTS `ims_mc_fans_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groups` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `ims_mc_fans_groups`
--

INSERT INTO `ims_mc_fans_groups` (`id`, `uniacid`, `acid`, `groups`) VALUES
(1, 5, 5, 'a:1:{i:2;a:3:{s:2:"id";i:2;s:4:"name";s:9:"星标组";s:5:"count";i:0;}}'),
(2, 6, 6, 'a:1:{i:2;a:3:{s:2:"id";i:2;s:4:"name";s:9:"星标组";s:5:"count";i:0;}}');

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_fans_tag_mapping`
--

CREATE TABLE IF NOT EXISTS `ims_mc_fans_tag_mapping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fanid` int(11) unsigned NOT NULL,
  `tagid` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mapping` (`fanid`,`tagid`),
  KEY `fanid_index` (`fanid`),
  KEY `tagid_index` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_groups`
--

CREATE TABLE IF NOT EXISTS `ims_mc_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL DEFAULT '',
  `orderlist` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `isdefault` tinyint(4) NOT NULL DEFAULT '0',
  `credit` int(10) unsigned NOT NULL,
  PRIMARY KEY (`groupid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `ims_mc_groups`
--

INSERT INTO `ims_mc_groups` (`groupid`, `uniacid`, `title`, `orderlist`, `isdefault`, `credit`) VALUES
(1, 1, '默认会员组', 0, 1, 0),
(2, 2, '默认会员组', 0, 1, 0),
(3, 3, '默认会员组', 0, 1, 0),
(4, 4, '默认会员组', 0, 1, 0),
(5, 5, '默认会员组', 0, 1, 0),
(6, 6, '默认会员组', 0, 1, 0),
(7, 7, '默认会员组', 0, 1, 0),
(8, 8, '默认会员组', 0, 1, 0),
(9, 9, '默认会员组', 0, 1, 0),
(10, 10, '默认会员组', 0, 1, 0),
(11, 11, '默认会员组', 0, 1, 0),
(12, 12, '默认会员组', 0, 1, 0),
(13, 13, '默认会员组', 0, 1, 0),
(14, 14, '默认会员组', 0, 1, 0),
(15, 15, '默认会员组', 0, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_handsel`
--

CREATE TABLE IF NOT EXISTS `ims_mc_handsel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `touid` int(10) unsigned NOT NULL,
  `fromuid` varchar(32) NOT NULL,
  `module` varchar(30) NOT NULL,
  `sign` varchar(100) NOT NULL,
  `action` varchar(20) NOT NULL,
  `credit_value` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`touid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_mapping_fans`
--

CREATE TABLE IF NOT EXISTS `ims_mc_mapping_fans` (
  `fanid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL,
  `salt` char(8) NOT NULL DEFAULT '',
  `follow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `followtime` int(10) unsigned NOT NULL,
  `unfollowtime` int(10) unsigned NOT NULL,
  `tag` varchar(1000) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `groupid` varchar(30) NOT NULL,
  `updatetime` int(10) unsigned DEFAULT NULL,
  `unionid` varchar(64) NOT NULL,
  PRIMARY KEY (`fanid`),
  KEY `acid` (`acid`),
  KEY `uniacid` (`uniacid`),
  KEY `openid` (`openid`),
  KEY `updatetime` (`updatetime`),
  KEY `nickname` (`nickname`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- 转存表中的数据 `ims_mc_mapping_fans`
--

INSERT INTO `ims_mc_mapping_fans` (`fanid`, `acid`, `uniacid`, `uid`, `openid`, `salt`, `follow`, `followtime`, `unfollowtime`, `tag`, `nickname`, `groupid`, `updatetime`, `unionid`) VALUES
(1, 5, 5, 1, 'oEZ6bw0iZLyvZrHcCUJJO6HYxIy4', 'IJ4o929o', 1, 1501728320, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib0VaNmJ3MGlaTHl2WnJIY0NVSkpPNkhZeEl5NCI7czo4OiJuaWNrbmFtZSI7czo2OiLmiJDmnpwiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuWOpumXqCI7czo4OiJwcm92aW5jZSI7czo2OiLnpo/lu7oiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTE5OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1EzYXVIZ3p3ek01NFQxWEY5bE1Nb3NzZHFlbTFIMmxybWVFd1FjODFBY2trUkc2a2QwaWJvWDZpYVEyTktmZkFqN0RzUmgwcUo4azFTR0kxWmt1T29pYjV3LzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUwMTcyODMyMDtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjExOToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9RM2F1SGd6d3pNNTRUMVhGOWxNTW9zc2RxZW0xSDJscm1lRXdRYzgxQWNra1JHNmtkMGlib1g2aWFRMk5LZmZBajdEc1JoMHFKOGsxU0dJMVprdU9vaWI1dy8xMzIiO30=', '成果', '', 1506308921, ''),
(2, 5, 5, 2, 'oEZ6bw0bLRzZ2z3mWHnbGCmmbP40', 'ukJr1rEY', 1, 1508225009, 1507096874, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib0VaNmJ3MGJMUnpaMnozbVdIbmJHQ21tYlA0MCI7czo4OiJuaWNrbmFtZSI7czo2OiLluJ3kuIAiO3M6Mzoic2V4IjtpOjI7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuWOpumXqCI7czo4OiJwcm92aW5jZSI7czo2OiLnpo/lu7oiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTE5OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1Z6UXNkenNHU2NQOUFwMmVncFZ5UHJsc3JXZGliOWY5MHpFUVVaMVlQSjAybEt1OU5LTDIxS1lTSFJFN3VWZXpGc0E1Z0VpY3hhSmljNWZzZnZkVEZyNlJBLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUwODIyNTAwOTtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjExOToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9WelFzZHpzR1NjUDlBcDJlZ3BWeVBybHNyV2RpYjlmOTB6RVFVWjFZUEowMmxLdTlOS0wyMUtZU0hSRTd1VmV6RnNBNWdFaWN4YUppYzVmc2Z2ZFRGcjZSQS8xMzIiO30=', '帝一', '', 1506309096, ''),
(3, 5, 5, 3, 'oEZ6bwzskhjvDR059pZRPyTP2DyI', 'Wc7tbBuK', 1, 1506488084, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib0VaNmJ3enNraGp2RFIwNTlwWlJQeVRQMkR5SSI7czo4OiJuaWNrbmFtZSI7czoyMjoiU2NvcnBpb0VmZm9ydHNUb0NoYW5nZSI7czozOiJzZXgiO2k6MTtzOjg6Imxhbmd1YWdlIjtzOjU6InpoX0NOIjtzOjQ6ImNpdHkiO3M6Njoi5rO45beeIjtzOjg6InByb3ZpbmNlIjtzOjY6IuWbm+W3nSI7czo3OiJjb3VudHJ5IjtzOjY6IuS4reWbvSI7czoxMDoiaGVhZGltZ3VybCI7czoxMzE6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vOTJUT0NxVWczcDFPT2ljTkx6TWljaG1PRXkweHhVTGx0N0RoOU9tTmJUVGljanBnNURVVldMaWNFSWNvZ2twazN6WlZBNWpmbzRhckdNME5pYW5rRTNiZ0F5RjBWQlo0YUFPZ0UvMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNTA2NDg4MDg0O3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTMxOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuLzkyVE9DcVVnM3AxT09pY05Mek1pY2htT0V5MHh4VUxsdDdEaDlPbU5iVFRpY2pwZzVEVVZXTGljRUljb2drcGszelpWQTVqZm80YXJHTTBOaWFua0UzYmdBeUYwVkJaNGFBT2dFLzEzMiI7fQ==', 'ScorpioEffortsToChange', '', NULL, ''),
(4, 5, 5, 4, 'oEZ6bwzJU0h1mI7bpXkir0KaZDHs', 'wfwF0s8V', 1, 1507290755, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib0VaNmJ3ekpVMGgxbUk3YnBYa2lyMEthWkRIcyI7czo4OiJuaWNrbmFtZSI7czo5OiLlsI/kuI3ngrkiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuazieW3niI7czo4OiJwcm92aW5jZSI7czo2OiLnpo/lu7oiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTMyOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL0JKZzVwdXRxYWRYUnUyU2RHcEhsaE1SbGVpYmdoeUs0NXJPVWVhN2lhT1NmbjVXbGljV0lzWnd6c0J3Q2t5cmJwTFBtc3ZMZ0dpYzJCVjBHVVdEZUtWNklGcWlhZmx6TFppYUNaby8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1MDcyOTA3NTU7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMzI6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vQkpnNXB1dHFhZFhSdTJTZEdwSGxoTVJsZWliZ2h5SzQ1ck9VZWE3aWFPU2ZuNVdsaWNXSXNad3pzQndDa3lyYnBMUG1zdkxnR2ljMkJWMEdVV0RlS1Y2SUZxaWFmbHpMWmlhQ1pvLzEzMiI7fQ==', '小不点', '', NULL, ''),
(5, 5, 5, 5, 'oEZ6bw85UJYZcLBMNHMO9gWbFtSA', 'QQG68sf5', 1, 1507623004, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib0VaNmJ3ODVVSllaY0xCTU5ITU85Z1diRnRTQSI7czo4OiJuaWNrbmFtZSI7czo3OiJXaW5k44CCIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czowOiIiO3M6ODoicHJvdmluY2UiO3M6MDoiIjtzOjc6ImNvdW50cnkiO3M6Njoi5oyq5aiBIjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEyNzoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9WelFzZHpzR1NjUFpmSG9VZlpsOVBjNjlYa3ZPSnhtbVlQYjJTVGNoUTRoY0ZSSHRlZWVGSVlwOHVadlNacDVxZTZlV2pJSWlhRTFaSlZYWExkWEdvaEZ6Y1VkenZabmZWLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUwNzYyMzAwNDtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEyNzoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9WelFzZHpzR1NjUFpmSG9VZlpsOVBjNjlYa3ZPSnhtbVlQYjJTVGNoUTRoY0ZSSHRlZWVGSVlwOHVadlNacDVxZTZlV2pJSWlhRTFaSlZYWExkWEdvaEZ6Y1VkenZabmZWLzEzMiI7fQ==', 'Wind。', '', NULL, ''),
(6, 5, 5, 6, 'oEZ6bw7yKBT8MbH3OxwXCIZ6RMI0', 'UcrlnB91', 0, 1503070912, 1508048088, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib0VaNmJ3N3lLQlQ4TWJIM094d1hDSVo2Uk1JMCI7czo4OiJuaWNrbmFtZSI7czoxMjoi57OW6YaL5o6S6aqoIjtzOjM6InNleCI7aTowO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czowOiIiO3M6ODoicHJvdmluY2UiO3M6MDoiIjtzOjc6ImNvdW50cnkiO3M6MDoiIjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzMToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi85MlRPQ3FVZzNwMjdVYm01a0liV1JpYzZrSHZFc3UwYzNPaklwVjlzcjc1empqS2xuNGtSZVJIVnRpYk14WDhxSUUzR0FUWEs3aWJOaWE4V01ZeWliandxc2c1TDd1R0NZOEJISS8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1MDMwNzA5MTI7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMzE6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vOTJUT0NxVWczcDI3VWJtNWtJYldSaWM2a0h2RXN1MGMzT2pJcFY5c3I3NXpqaktsbjRrUmVSSFZ0aWJNeFg4cUlFM0dBVFhLN2liTmlhOFdNWXlpYmp3cXNnNUw3dUdDWThCSEkvMTMyIjt9', '糖醋排骨', '', 1508047445, ''),
(7, 5, 5, 7, 'oEZ6bw08DdgtOlmD8Macsk4nX43k', 'quq6xksG', 1, 1503371976, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib0VaNmJ3MDhEZGd0T2xtRDhNYWNzazRuWDQzayI7czo4OiJuaWNrbmFtZSI7czo2OiLlvarlk6UiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuiOhueUsCI7czo4OiJwcm92aW5jZSI7czo2OiLnpo/lu7oiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTMzOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuLzVYTmtYS3lEUkVFa2Jvb1hwUlk2dVB6TXhwQTBJUlJUaWFrQ2ljUm9wUmliNXBpY1dvbWdDYUpNMUQ0amhMMWlhT1dpYVd4UXl3b2lhWGxZWkNCVlBmOUZ3ajJsbGxaQVUxMWI1WHcvMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNTAzMzcxOTc2O3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTMzOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuLzVYTmtYS3lEUkVFa2Jvb1hwUlk2dVB6TXhwQTBJUlJUaWFrQ2ljUm9wUmliNXBpY1dvbWdDYUpNMUQ0amhMMWlhT1dpYVd4UXl3b2lhWGxZWkNCVlBmOUZ3ajJsbGxaQVUxMWI1WHcvMTMyIjt9', '彪哥', '', 1508127092, ''),
(8, 5, 5, 8, 'oEZ6bwy0FiHNn3UpkRpJ2-DbAdlU', 'OIbqeGWu', 1, 1508229664, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib0VaNmJ3eTBGaUhObjNVcGtScEoyLURiQWRsVSI7czo4OiJuaWNrbmFtZSI7czo2OiLooZflopkiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuWOpumXqCI7czo4OiJwcm92aW5jZSI7czo2OiLnpo/lu7oiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTMwOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuLzkyVE9DcVVnM3AyaWJYRldPMTFnMTlEdkpDYVJZTUh0OTBjQVJ0aWFxNDlMQ3kzREZXNTBpYzdQdFFUa2RiUVNkZEw2OWYyNjRTRERRSXQ2cGhhMUVpYTBZVEVKWjRZWFdUd20vMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNTA4MjI5NjY0O3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTMwOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuLzkyVE9DcVVnM3AyaWJYRldPMTFnMTlEdkpDYVJZTUh0OTBjQVJ0aWFxNDlMQ3kzREZXNTBpYzdQdFFUa2RiUVNkZEw2OWYyNjRTRERRSXQ2cGhhMUVpYTBZVEVKWjRZWFdUd20vMTMyIjt9', '街墙', '', NULL, ''),
(9, 5, 5, 9, 'oEZ6bw_1ZORRrCmzRPr9r4Cqv7lQ', 'eJy6bbpB', 1, 1508310574, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib0VaNmJ3XzFaT1JSckNtelJQcjlyNENxdjdsUSI7czo4OiJuaWNrbmFtZSI7czo5OiLnjovluq3ljY8iO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuWOpumXqCI7czo4OiJwcm92aW5jZSI7czo2OiLnpo/lu7oiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTE3OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1Z6UXNkenNHU2NPaWNDYTdEbDB2cm9HY2xCTXl3QVdaSkRsVkk3WHNTYThWdXZrcmdsQUl1VEFhTGdhcG1JNUZEUW5yQ0w3WDZTOXBTeHFrU3Jzc253Zy8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1MDgzMTA1NzQ7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMTc6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vVnpRc2R6c0dTY09pY0NhN0RsMHZyb0djbEJNeXdBV1pKRGxWSTdYc1NhOFZ1dmtyZ2xBSXVUQWFMZ2FwbUk1RkRRbnJDTDdYNlM5cFN4cWtTcnNzbndnLzEzMiI7fQ==', '王庭协', '', NULL, ''),
(10, 5, 5, 10, 'oEZ6bw_N61zxNySWFYDvBqAUTWUQ', 'aZDb263Z', 0, 1508311255, 1508311298, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib0VaNmJ3X042MXp4TnlTV0ZZRHZCcUFVVFdVUSI7czo4OiJuaWNrbmFtZSI7czozOiLnjosiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuazieW3niI7czo4OiJwcm92aW5jZSI7czo2OiLnpo/lu7oiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTE3OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1BpYWp4U3FCUmFFS0N4b0VCY2N1Q0dQSW4yQ1BzTkJJanVlY0tnMkJjZFk4WUdvblluRWpJb29qQUxmNk1FRWJGNDZPa3ZyNXJ3bENWdnF6a0c3ZFZ5US8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1MDgzMTEyNTU7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMTc6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vUGlhanhTcUJSYUVLQ3hvRUJjY3VDR1BJbjJDUHNOQklqdWVjS2cyQmNkWThZR29uWW5Faklvb2pBTGY2TUVFYkY0Nk9rdnI1cndsQ1Z2cXprRzdkVnlRLzEzMiI7fQ==', '王', '', NULL, ''),
(11, 5, 5, 11, 'oEZ6bwwDHUmm68wE2waN7vYDsCkY', 'aBJGmJHw', 1, 1504000301, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib0VaNmJ3d0RIVW1tNjh3RTJ3YU43dllEc0NrWSI7czo4OiJuaWNrbmFtZSI7czo0OiJsaWFtIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLljqbpl6giO3M6ODoicHJvdmluY2UiO3M6Njoi56aP5bu6IjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEyODoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi85MlRPQ3FVZzNwMmliWEZXTzExZzE5RjFuM1VidEJrcW8xbjlaWmNiNHZiOGNzZW03VmI4QmU3OTJmS1R4VzRzV3Q0a0c1Z1hzWVJ4anZUakNXTnhRNGlhMDhVUG92cUkzcy8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1MDQwMDAzMDE7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMjg6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vOTJUT0NxVWczcDJpYlhGV08xMWcxOUYxbjNVYnRCa3FvMW45WlpjYjR2Yjhjc2VtN1ZiOEJlNzkyZktUeFc0c1d0NGtHNWdYc1lSeGp2VGpDV054UTRpYTA4VVBvdnFJM3MvMTMyIjt9', 'liam', '', 1508318574, ''),
(12, 5, 5, 12, 'oEZ6bw_5ehdcWr-DLzpFUdydOw54', 'nQIwIqP0', 1, 1508318751, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib0VaNmJ3XzVlaGRjV3ItREx6cEZVZHlkT3c1NCI7czo4OiJuaWNrbmFtZSI7czo0OiJBcnlhIjtzOjM6InNleCI7aToyO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLljqbpl6giO3M6ODoicHJvdmluY2UiO3M6Njoi56aP5bu6IjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjExOToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9hak5WZHFIWkxMQkxsTTRkcjROeEdzcm5RT0xzRGN3M0xHZzR0OXdpYmlhbEtud3h1MW9kdzR3cFpNUzNwdHVsd1ljeUNDRWlhOEFabDN5N1JCMTVFcldQQS8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1MDgzMTg3NTE7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMTk6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vYWpOVmRxSFpMTEJMbE00ZHI0TnhHc3JuUU9Mc0RjdzNMR2c0dDl3aWJpYWxLbnd4dTFvZHc0d3BaTVMzcHR1bHdZY3lDQ0VpYThBWmwzeTdSQjE1RXJXUEEvMTMyIjt9', 'Arya', '', NULL, ''),
(13, 5, 5, 13, 'oEZ6bw5z3cuoT91YLtOntd9NRCvw', 'muV4720s', 1, 1508488124, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib0VaNmJ3NXozY3VvVDkxWUx0T250ZDlOUkN2dyI7czo4OiJuaWNrbmFtZSI7czo2OiLpu4TlgpEiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuWOpumXqCI7czo4OiJwcm92aW5jZSI7czo2OiLnpo/lu7oiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTMxOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuLzkyVE9DcVVnM3Azd0RiWmJTeHZPZ2pGVUhqZnFJaWNzamlhdTJjdUNRRXNRREZBa25iZ0t3cmIyUFg4U1VxaWJPMmljUUFia0VmTDdacHBOM2h3d0ptQmZ4Wmg4NHpiSVZpYjRnLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUwODQ4ODEyNDtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEzMToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi85MlRPQ3FVZzNwM3dEYlpiU3h2T2dqRlVIamZxSWljc2ppYXUyY3VDUUVzUURGQWtuYmdLd3JiMlBYOFNVcWliTzJpY1FBYmtFZkw3WnBwTjNod3dKbUJmeFpoODR6YklWaWI0Zy8xMzIiO30=', '黄傑', '', NULL, ''),
(14, 5, 5, 14, 'oEZ6bwy69eIxS1-_ET7pz1t9EnIo', 'DU7loltO', 1, 1508729045, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib0VaNmJ3eTY5ZUl4UzEtX0VUN3B6MXQ5RW5JbyI7czo4OiJuaWNrbmFtZSI7czo5OiLljJfmtbfpgZMiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuWOpumXqCI7czo4OiJwcm92aW5jZSI7czo2OiLnpo/lu7oiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTE5OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1BpYWp4U3FCUmFFS0VUd1B5OUFvOXU2eHFsR28za2dJaWNzam43NWhQdXlwRDNjeUhiZnh1ZWVyRmhoY1lINk9PRW1CV3IxNzRuaDFPZEt1d1dYaWNZS0ZnLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUwODcyOTA0NTtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjExOToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9QaWFqeFNxQlJhRUtFVHdQeTlBbzl1NnhxbEdvM2tnSWljc2puNzVoUHV5cEQzY3lIYmZ4dWVlckZoaGNZSDZPT0VtQldyMTc0bmgxT2RLdXdXWGljWUtGZy8xMzIiO30=', '北海道', '', NULL, ''),
(15, 6, 6, 15, 'oSRY005X21OxPllfXAlfbcnlrF-A', 'l2rCRVVd', 1, 1509085930, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwNVgyMU94UGxsZlhBbGZiY25sckYtQSI7czo4OiJuaWNrbmFtZSI7czo2OiLluJ3kuIAiO3M6Mzoic2V4IjtpOjI7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuWOpumXqCI7czo4OiJwcm92aW5jZSI7czo2OiLnpo/lu7oiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTIwOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL3FHdXNLeWIwSUVjNUlrV1hHQ3JyeGhkbkVFUFVKV3BMMGlidEFNc0ZpYTRER0prQ0lDM2xIcFk5dkc2ZUI0c2lha1ZzS2M2dW9seUxxT21DYW45aWFxY3Ixdy8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1MDkwODU5MzA7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMjA6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vcUd1c0t5YjBJRWM1SWtXWEdDcnJ4aGRuRUVQVUpXcEwwaWJ0QU1zRmlhNERHSmtDSUMzbEhwWTl2RzZlQjRzaWFrVnNLYzZ1b2x5THFPbUNhbjlpYXFjcjF3LzEzMiI7fQ==', '帝一', '', NULL, ''),
(16, 6, 6, 16, 'oSRY007ii1nrPRxSCeihLAxANMB8', 'GaggUpnW', 1, 1508316306, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwN2lpMW5yUFJ4U0NlaWhMQXhBTk1COCI7czo4OiJuaWNrbmFtZSI7czo2OiLmiJDmnpwiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuWOpumXqCI7czo4OiJwcm92aW5jZSI7czo2OiLnpo/lu7oiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTE4OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1EzYXVIZ3p3ek00bGZpY3VRN0pvMmtJbk1HRHhzcHJkNVZkWHBCYVJSUEtkOUVJTW9WQlRBWFBBNWlhOXE2ZkNJaG56UFJ6MHBmTkcxTThGQ0dHak5PYmcvMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNTA4MzE2MzA2O3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTE4OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1EzYXVIZ3p3ek00bGZpY3VRN0pvMmtJbk1HRHhzcHJkNVZkWHBCYVJSUEtkOUVJTW9WQlRBWFBBNWlhOXE2ZkNJaG56UFJ6MHBmTkcxTThGQ0dHak5PYmcvMTMyIjt9', '成果', '', 1509097351, ''),
(17, 6, 6, 17, 'oSRY0002kWJeWI40pNCycPqBUO3E', 'wR70dXXD', 1, 1509115625, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwMDJrV0plV0k0MHBOQ3ljUHFCVU8zRSI7czo4OiJuaWNrbmFtZSI7czo3OiJXaW5k44CCIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czowOiIiO3M6ODoicHJvdmluY2UiO3M6MDoiIjtzOjc6ImNvdW50cnkiO3M6Njoi5oyq5aiBIjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzMjoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9xR3VzS3liMElFY0wybjJlMTlHVmg5R3RGaEFMYllqdTgwQ2VvSUUwaWIxZXp4TmZDOERvaGliaE1maWJJV3pzQVJzT1BKamcyaWJoT1Awd09aaWNNZE94WHU3cllSSEdSemlhQWYvMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNTA5MTE1NjI1O3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTMyOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL3FHdXNLeWIwSUVjTDJuMmUxOUdWaDlHdEZoQUxiWWp1ODBDZW9JRTBpYjFlenhOZkM4RG9oaWJoTWZpYklXenNBUnNPUEpqZzJpYmhPUDB3T1ppY01kT3hYdTdyWVJIR1J6aWFBZi8xMzIiO30=', 'Wind。', '', 1509100104, ''),
(18, 6, 6, 18, 'oSRY00yS5yHUwKxVARp8b_21YceE', 'BPryLoy2', 1, 1509954082, 1509954071, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAweVM1eUhVd0t4VkFScDhiXzIxWWNlRSI7czo4OiJuaWNrbmFtZSI7czo5OiLnjovluq3ljY8iO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuWOpumXqCI7czo4OiJwcm92aW5jZSI7czo2OiLnpo/lu7oiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTIwOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL3FHdXNLeWIwSUVjNFZwMTdvNzZERm53dmc0NUlpY3cwMkFyWEJBZ1ZpYWliQXNZN0JSZGNRYVdHaFcxZnJNNW9CSm84a29vM1dtM2RTV0xwZGxsTVNpYnFVQS8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1MDk5NTQwODI7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMjA6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vcUd1c0t5YjBJRWM0VnAxN283NkRGbnd2ZzQ1SWljdzAyQXJYQkFnVmlhaWJBc1k3QlJkY1FhV0doVzFmck01b0JKbzhrb28zV20zZFNXTHBkbGxNU2licVVBLzEzMiI7fQ==', '王庭协', '', NULL, ''),
(19, 6, 6, 19, 'oSRY00xwP3RqZUy04n2o1Q3c-dHc', 'oyzpspoO', 1, 1509118360, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAweHdQM1JxWlV5MDRuMm8xUTNjLWRIYyI7czo4OiJuaWNrbmFtZSI7czo5OiLlrZnkvbPlro8iO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuWOpumXqCI7czo4OiJwcm92aW5jZSI7czo2OiLnpo/lu7oiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTMzOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1lTQnpwN3VaUGIyTFVGOW1CMUJRWjBpY29YMElKZkROdG95OWQ5aWFaVWRmUEVPNEZNT2tWaWJjOGpNWFlpYjdZcUlwWW5XdGRPaWNBTHVKNHpCeWlhbGJQNmljdnczOGhPYXZzd2svMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNTA5MTE4MzYwO3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTMzOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1lTQnpwN3VaUGIyTFVGOW1CMUJRWjBpY29YMElKZkROdG95OWQ5aWFaVWRmUEVPNEZNT2tWaWJjOGpNWFlpYjdZcUlwWW5XdGRPaWNBTHVKNHpCeWlhbGJQNmljdnczOGhPYXZzd2svMTMyIjt9', '孙佳宏', '', NULL, ''),
(20, 6, 6, 20, 'oSRY001Rpt_vlGa5ZAmGHmweECbo', 'hRR78tQ8', 1, 1509122274, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwMVJwdF92bEdhNVpBbUdIbXdlRUNibyI7czo4OiJuaWNrbmFtZSI7czoxMjoi57OW6YaL5o6S6aqoIjtzOjM6InNleCI7aTowO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czowOiIiO3M6ODoicHJvdmluY2UiO3M6MDoiIjtzOjc6ImNvdW50cnkiO3M6MDoiIjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEyOToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9ZU0J6cDd1WlBiMnJCR1JXS20yRmpTSlRERGdPMjc1V00wY0hsR0h0R1F2RmFIZmlhUWdhUnpJVVloVEE0bXNkTVBpY1RmRmFkeGxLZFJJOWVXakV6d09Sb3E1cHQ4SVBpYkIvMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNTA5MTIyMjc0O3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTI5OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1lTQnpwN3VaUGIyckJHUldLbTJGalNKVEREZ08yNzVXTTBjSGxHSHRHUXZGYUhmaWFRZ2FSeklVWWhUQTRtc2RNUGljVGZGYWR4bEtkUkk5ZVdqRXp3T1JvcTVwdDhJUGliQi8xMzIiO30=', '糖醋排骨', '', NULL, ''),
(21, 6, 6, 21, 'oSRY0069zmR3bYgg6-YSEbdA-K1E', 'IZ8YHn33', 1, 1510055967, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwNjl6bVIzYllnZzYtWVNFYmRBLUsxRSI7czo4OiJuaWNrbmFtZSI7czoyMToi5Y2z5p2l5LmL772e5YiZ5a6J5LmLIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLljZflroEiO3M6ODoicHJvdmluY2UiO3M6Njoi5bm/6KW/IjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzMDoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9ZU0J6cDd1WlBiMjhGR2d4WENyYThBRHM2dHlNbHdEcmR1bHlKQWYzWTlJUXV0bFNDTlZ5VG50Z2liTUJ5UlFSVWJXbmdRdkJBRzRBcjFGRDhxSmliQWliREdLNk9ndmljcmNQLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUxMDA1NTk2NztzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEzMDoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9ZU0J6cDd1WlBiMjhGR2d4WENyYThBRHM2dHlNbHdEcmR1bHlKQWYzWTlJUXV0bFNDTlZ5VG50Z2liTUJ5UlFSVWJXbmdRdkJBRzRBcjFGRDhxSmliQWliREdLNk9ndmljcmNQLzEzMiI7fQ==', '即来之～则安之', '', 1509122632, ''),
(22, 6, 6, 22, 'oSRY005yOgfcGd7xTxZwap2S5NIY', 'BFpwz4O4', 1, 1509273621, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwNXlPZ2ZjR2Q3eFR4WndhcDJTNU5JWSI7czo4OiJuaWNrbmFtZSI7czoyMToiVXNhSGVyb8Ku6YOt5paH5p2w4oSiIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLljqbpl6giO3M6ODoicHJvdmluY2UiO3M6Njoi56aP5bu6IjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEyMToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi95aWNOdHZ6NnZZeW9ZOXlDZkdIdHpuVXNlOWljQk9vamx6NGszb3JjYUZOeGhna3RiTTVvM25nOTBzWDBaUkpwZWZHZGliQUhUYmlhQ3YwMWhUcGgxSWlidDhBLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUwOTI3MzYyMTtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEyMToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi95aWNOdHZ6NnZZeW9ZOXlDZkdIdHpuVXNlOWljQk9vamx6NGszb3JjYUZOeGhna3RiTTVvM25nOTBzWDBaUkpwZWZHZGliQUhUYmlhQ3YwMWhUcGgxSWlidDhBLzEzMiI7fQ==', 'UsaHero®郭文杰™', '', NULL, ''),
(23, 6, 6, 23, 'oSRY0009p7BYSw0LnJpUxWbD2924', 'NEOkwiTo', 1, 1508919821, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwMDlwN0JZU3cwTG5KcFV4V2JEMjkyNCI7czo4OiJuaWNrbmFtZSI7czo2OiLlvarlk6UiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuiOhueUsCI7czo4OiJwcm92aW5jZSI7czo2OiLnpo/lu7oiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTMxOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL2VIaWFKQjdXYjlBTDZVc0ZwSVo4WkdQa2libkRrOHh4TEFUTFU0TGJiNEFuWEZ2WXQzYjhGek1meW5yU3N1MG1sTTc5QzhnMlBqQnZCN0pQZ3NpYVVaOTA2M2ljQUMwMmFFaWFLLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUwODkxOTgyMTtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEzMToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9lSGlhSkI3V2I5QUw2VXNGcElaOFpHUGtpYm5Eazh4eExBVExVNExiYjRBblhGdll0M2I4RnpNZnluclNzdTBtbE03OUM4ZzJQakJ2QjdKUGdzaWFVWjkwNjNpY0FDMDJhRWlhSy8xMzIiO30=', '彪哥', '', 1509333323, ''),
(24, 6, 6, 24, 'oSRY006QGqwA_kc5J-lt-jW0xdj0', 'BDtbrghi', 0, 1509343399, 1509343513, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwNlFHcXdBX2tjNUotbHQtalcweGRqMCI7czo4OiJuaWNrbmFtZSI7czoxMDoi5a6J5a6J8J+RhCI7czozOiJzZXgiO2k6MjtzOjg6Imxhbmd1YWdlIjtzOjU6InpoX0NOIjtzOjQ6ImNpdHkiO3M6Njoi5Y2X5bK4IjtzOjg6InByb3ZpbmNlIjtzOjY6IumHjeW6hiI7czo3OiJjb3VudHJ5IjtzOjY6IuS4reWbvSI7czoxMDoiaGVhZGltZ3VybCI7czoxMzE6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4veWljTnR2ejZ2WXlvQTVmTlBFeWlhNUVScWNMUXJUSFZXQmhENE5GT01xMnVFUGxMUHNyRGdveGNRUjBpYWUyQzNzaWFGMEVPYkhJYWxUc2pEMjFhZzhrWU1heFhFMmZVOE5pYWcvMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNTA5MzQzMzk5O3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTMxOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL3lpY050dno2dll5b0E1Zk5QRXlpYTVFUnFjTFFyVEhWV0JoRDRORk9NcTJ1RVBsTFBzckRnb3hjUVIwaWFlMkMzc2lhRjBFT2JISWFsVHNqRDIxYWc4a1lNYXhYRTJmVThOaWFnLzEzMiI7fQ==', '安安', '', NULL, ''),
(25, 6, 6, 25, 'oSRY003vEej7mx16uayKvDVYcH0c', 'C2r2r3rR', 1, 1509503412, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwM3ZFZWo3bXgxNnVheUt2RFZZY0gwYyI7czo4OiJuaWNrbmFtZSI7czoxNjoi44CA44CATmVwaGlsYeOAgiI7czozOiJzZXgiO2k6MjtzOjg6Imxhbmd1YWdlIjtzOjU6InpoX0NOIjtzOjQ6ImNpdHkiO3M6MDoiIjtzOjg6InByb3ZpbmNlIjtzOjY6IuWliOiJryI7czo3OiJjb3VudHJ5IjtzOjY6IuaXpeacrCI7czoxMDoiaGVhZGltZ3VybCI7czoxMjc6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vWVNCenA3dVpQYjA2WEQ2TTRjRVNtaHA3T0EzcHlZbkJlVVVCWm1wejdhVjZCY2JJNDZobHFXRnRyRDBFdmZZMXVsZXo2N2J5WWY5aWJESXpJTHQ1Vm5JSXF5TXF1dTQ1US8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1MDk1MDM0MTI7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMjc6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vWVNCenA3dVpQYjA2WEQ2TTRjRVNtaHA3T0EzcHlZbkJlVVVCWm1wejdhVjZCY2JJNDZobHFXRnRyRDBFdmZZMXVsZXo2N2J5WWY5aWJESXpJTHQ1Vm5JSXF5TXF1dTQ1US8xMzIiO30=', 'Nephila。', '', NULL, ''),
(26, 6, 6, 26, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 'AN1lzZnm', 1, 1510303243, 1510298363, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwMnNOeFAwYndOdlItcGRBc1lZRkt6OCI7czo4OiJuaWNrbmFtZSI7czoyNjoi5Y2e5pmo6b6Z8J+HqPCfh7PlnKjov5nph4wiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuWOpumXqCI7czo4OiJwcm92aW5jZSI7czo2OiLnpo/lu7oiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTIxOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1BpYWp4U3FCUmFFSlQ0Z3EwUU40elRFZGVrOXVzUjJERm92OWliclAzQU5pY0FZTXV6VVFscFExd0ZFSHB5WGZmbURLS1J6RUt5SWJpYzNORUVrcFVpY1dqREEvMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNTEwMzAzMjQzO3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTIxOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1BpYWp4U3FCUmFFSlQ0Z3EwUU40elRFZGVrOXVzUjJERm92OWliclAzQU5pY0FZTXV6VVFscFExd0ZFSHB5WGZmbURLS1J6RUt5SWJpYzNORUVrcFVpY1dqREEvMTMyIjt9', '卞晨龙', '', NULL, ''),
(27, 6, 6, 27, 'oSRY004apWoEmgGRX6tq94KeP8SE', 'Y4ZwyN94', 1, 1509935387, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwNGFwV29FbWdHUlg2dHE5NEtlUDhTRSI7czo4OiJuaWNrbmFtZSI7czoxNToi6ZO+5a6244CC6IGC5bmzIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLljqbpl6giO3M6ODoicHJvdmluY2UiO3M6Njoi56aP5bu6IjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEyMToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9QaWFqeFNxQlJhRUowV0RQa1VFYnRpYUhGY08wZ01SaWJJMGNHdXRUSWlialJsT28ySGliR0NDTWJCUEg3TU90dVQyT0sxQU4wVmN6akZlbEFxZzNONXEycklRLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUwOTkzNTM4NztzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEyMToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9QaWFqeFNxQlJhRUowV0RQa1VFYnRpYUhGY08wZ01SaWJJMGNHdXRUSWlialJsT28ySGliR0NDTWJCUEg3TU90dVQyT0sxQU4wVmN6akZlbEFxZzNONXEycklRLzEzMiI7fQ==', '链家。聂平', '', NULL, ''),
(28, 5, 5, 28, 'oEZ6bw6Ciy4wuBnG-5sCeU4s-hxw', 'e04e6Tvz', 1, 1509939505, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib0VaNmJ3NkNpeTR3dUJuRy01c0NlVTRzLWh4dyI7czo4OiJuaWNrbmFtZSI7czoxMjoi6Iie772e5aSc5q6HIjtzOjM6InNleCI7aToyO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLljqbpl6giO3M6ODoicHJvdmluY2UiO3M6Njoi56aP5bu6IjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzMzoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9FS1FOVXFPaWNqaWJpYTNOYVBBbk9DUGNZV0dwaWJDeFMwVWlhOE5YZFJWU3llZmliNEtNbmp3M3AyRG5KUHlSMUZxenJzREFhRVlENnc4MXV1WlNpYXF1QUFmRnNRempQcTdkRDZzLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUwOTkzOTUwNTtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEzMzoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9FS1FOVXFPaWNqaWJpYTNOYVBBbk9DUGNZV0dwaWJDeFMwVWlhOE5YZFJWU3llZmliNEtNbmp3M3AyRG5KUHlSMUZxenJzREFhRVlENnc4MXV1WlNpYXF1QUFmRnNRempQcTdkRDZzLzEzMiI7fQ==', '舞～夜殇', '', NULL, ''),
(29, 6, 6, 29, 'oSRY000WHC1RqLJ-YU_P-setRxts', 'p439p622', 1, 1509953526, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwMFdIQzFScUxKLVlVX1Atc2V0Unh0cyI7czo4OiJuaWNrbmFtZSI7czoxNToiUmF2ZW4g5p2O6ams5YmRIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLljqbpl6giO3M6ODoicHJvdmluY2UiO3M6Njoi56aP5bu6IjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEyMToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9lSGlhSkI3V2I5QUlpYzlPQXVScEdOOVprSEhkS3JjbFJHODRIWmliWkF2c3BWOEdEVUM3WXowdE51bXFkYTZnQVRobGljZkpYSktnRWRlcnNVN2VLVVZpYkx3LzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUwOTk1MzUyNjtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEyMToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9lSGlhSkI3V2I5QUlpYzlPQXVScEdOOVprSEhkS3JjbFJHODRIWmliWkF2c3BWOEdEVUM3WXowdE51bXFkYTZnQVRobGljZkpYSktnRWRlcnNVN2VLVVZpYkx3LzEzMiI7fQ==', 'Raven李马剑', '', NULL, ''),
(30, 6, 6, 30, 'oSRY00wiwpxSwtmLXEMLGjVZx444', 'SMcrTpni', 1, 1509953900, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwd2l3cHhTd3RtTFhFTUxHalZaeDQ0NCI7czo4OiJuaWNrbmFtZSI7czoyNzoi5LiT5rOo5LqS6IGU572R772e5rGf5Lyf5paMIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLljqbpl6giO3M6ODoicHJvdmluY2UiO3M6Njoi56aP5bu6IjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEyMToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi95aWNOdHZ6NnZZeXFNY1JUMEVxY3VPaWMxOVpObWp5M1BMTlRjTm5lSVZEQUtPdmliQm9WZ3dmWFRjbWliVGIyaklmdDBmNFpFVk9lYmU1REMyaWFacnQybFJRLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUwOTk1MzkwMDtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEyMToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi95aWNOdHZ6NnZZeXFNY1JUMEVxY3VPaWMxOVpObWp5M1BMTlRjTm5lSVZEQUtPdmliQm9WZ3dmWFRjbWliVGIyaklmdDBmNFpFVk9lYmU1REMyaWFacnQybFJRLzEzMiI7fQ==', '专注互联网～江伟斌', '', NULL, ''),
(31, 6, 6, 31, 'oSRY00y8tEJOKS4Wj2DKPzLLRX4w', 'VllRltRp', 1, 1509954473, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAweTh0RUpPS1M0V2oyREtQekxMUlg0dyI7czo4OiJuaWNrbmFtZSI7czo5OiLmnLHogpboirMiO3M6Mzoic2V4IjtpOjI7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuWOpumXqCI7czo4OiJwcm92aW5jZSI7czo2OiLnpo/lu7oiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTI5OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL2VIaWFKQjdXYjlBSTRLUDBOcTNpY0R0eDlHbmRoN1o0SFJpY0JoQkhmR1FqeWgyYlNkY0I5bUNsN013dDN1eFE5S01ZTjE4SEpPb1pPcThXdGs4WmFiWHJBNzlvempTc0lZSy8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1MDk5NTQ0NzM7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMjk6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vZUhpYUpCN1diOUFJNEtQME5xM2ljRHR4OUduZGg3WjRIUmljQmhCSGZHUWp5aDJiU2RjQjltQ2w3TXd0M3V4UTlLTVlOMThISk9vWk9xOFd0azhaYWJYckE3OW96alNzSVlLLzEzMiI7fQ==', '朱肖芳', '', NULL, ''),
(32, 6, 6, 32, 'oSRY00xbvLPo4398l0ZjXXqgbY90', 'U6Lyzy26', 1, 1510654414, 1510654411, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAweGJ2TFBvNDM5OGwwWmpYWHFnYlk5MCI7czo4OiJuaWNrbmFtZSI7czo0OiJsaWFtIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLljqbpl6giO3M6ODoicHJvdmluY2UiO3M6Njoi56aP5bu6IjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzMDoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9ZU0J6cDd1WlBiMkxVRjltQjFCUVo3eHZuSVRsSzlUTkJab1JTQ3h5ZmxQWTdGd1JUdkNxRG5maWJtWmw2R1VVQjNpYTQwT05hOWsyNWtEdFpHMldGcWhyaWJpYkM4enhVeG1JLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUxMDY1NDQxNDtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEzMDoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9ZU0J6cDd1WlBiMkxVRjltQjFCUVo3eHZuSVRsSzlUTkJab1JTQ3h5ZmxQWTdGd1JUdkNxRG5maWJtWmw2R1VVQjNpYTQwT05hOWsyNWtEdFpHMldGcWhyaWJpYkM4enhVeG1JLzEzMiI7fQ==', 'liam', '', 1509967416, ''),
(33, 6, 6, 33, 'oSRY00yYsbrQoDjLXPbsJV53YcNs', 'F0jJ01Yj', 1, 1510042232, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAweVlzYnJRb0RqTFhQYnNKVjUzWWNOcyI7czo4OiJuaWNrbmFtZSI7czo3OiJTTyBXSEFUIjtzOjM6InNleCI7aToyO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfVFciO3M6NDoiY2l0eSI7czo2OiLlub/lt54iO3M6ODoicHJvdmluY2UiO3M6Njoi5bm/5LicIjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzMDoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi95aWNOdHZ6NnZZeXJ2NHVHamdTVDF6YXFTYzVncGd6TFc0WkI1ODd3RDViQ3ZHU0hOTVBuYU5GNGlhb0VCT2lhd0JxSlg0R1p6REFvQ3Y0NFlJZnBUUWZpYmNTOTVEalk1a09TLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUxMDA0MjIzMTtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEzMDoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi95aWNOdHZ6NnZZeXJ2NHVHamdTVDF6YXFTYzVncGd6TFc0WkI1ODd3RDViQ3ZHU0hOTVBuYU5GNGlhb0VCT2lhd0JxSlg0R1p6REFvQ3Y0NFlJZnBUUWZpYmNTOTVEalk1a09TLzEzMiI7fQ==', 'SOWHAT', '', NULL, ''),
(34, 6, 6, 34, 'oSRY007ILWst1TXekjesngRG_yeo', 'MiBWBiip', 1, 1510110111, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwN0lMV3N0MVRYZWtqZXNuZ1JHX3llbyI7czo4OiJuaWNrbmFtZSI7czoxNjoi6LCi5oGS5b2mwrdWaWNreSI7czozOiJzZXgiO2k6MjtzOjg6Imxhbmd1YWdlIjtzOjU6InpoX0NOIjtzOjQ6ImNpdHkiO3M6Njoi5Y6m6ZeoIjtzOjg6InByb3ZpbmNlIjtzOjY6Iuemj+W7uiI7czo3OiJjb3VudHJ5IjtzOjY6IuS4reWbvSI7czoxMDoiaGVhZGltZ3VybCI7czoxMjc6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vWVNCenA3dVpQYjJMVUY5bUIxQlFaeXJzcm1Jc1FrTGc5N3BsTlNYZUUyWW9qY3E4ZnBvaEVkaFh6MUhRQ3BuREpuemtzWE80SWhCcW1ENnpmV2lhclRNQkRldGJEdVpaRi8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1MTAxMTAxMTE7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMjc6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vWVNCenA3dVpQYjJMVUY5bUIxQlFaeXJzcm1Jc1FrTGc5N3BsTlNYZUUyWW9qY3E4ZnBvaEVkaFh6MUhRQ3BuREpuemtzWE80SWhCcW1ENnpmV2lhclRNQkRldGJEdVpaRi8xMzIiO30=', '谢恒彦·Vicky', '', NULL, ''),
(35, 6, 6, 35, 'oSRY004zChumoRtS7gtYVPYL1Jcc', 'DYUZLbuC', 1, 1510123177, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwNHpDaHVtb1J0UzdndFlWUFlMMUpjYyI7czo4OiJuaWNrbmFtZSI7czoxMjoi6Iie772e5aSc5q6HIjtzOjM6InNleCI7aToyO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLljqbpl6giO3M6ODoicHJvdmluY2UiO3M6Njoi56aP5bu6IjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzMzoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi95aWNOdHZ6NnZZeXE5ZWszaWNZRUZIUkpaU25vaWJ3eWh4WGd4d1BIVDdQNDM4R2xkUDVXMWJja3pzOWhobmlhaWNoSUhUOENJRGxLaWNDa21wTUNBczl1SWhJYTlpYmt6THVhYkJ3LzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUxMDEyMzE3NztzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEzMzoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi95aWNOdHZ6NnZZeXE5ZWszaWNZRUZIUkpaU25vaWJ3eWh4WGd4d1BIVDdQNDM4R2xkUDVXMWJja3pzOWhobmlhaWNoSUhUOENJRGxLaWNDa21wTUNBczl1SWhJYTlpYmt6THVhYkJ3LzEzMiI7fQ==', '舞～夜殇', '', NULL, ''),
(36, 7, 7, 36, 'fromUser', 'vv7DjgI3', 1, 1510539714, 1510539691, '', '', '', NULL, ''),
(37, 6, 6, 37, 'oSRY0002mJm8W8DuAzZE5sZ3HxUU', 'LpaP0PI1', 1, 1510211892, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwMDJtSm04VzhEdUF6WkU1c1ozSHhVVSI7czo4OiJuaWNrbmFtZSI7czo3OiJLaW5nc2VuIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLljqbpl6giO3M6ODoicHJvdmluY2UiO3M6Njoi56aP5bu6IjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzMToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9xR3VzS3liMElFZXpodXlqUmtndHhlQWRlTDZBYklLaWF6QUZDaWJ0MnZ2VnZBNmliemhpY0RkTEc2WWNqbWtkT1E2Y2RQTjVpY0t3d3dUZFpETW9wcEQ0a0taSk5oQlpkbnZ5Uy8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1MTAyMTE4OTI7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMzE6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vcUd1c0t5YjBJRWV6aHV5alJrZ3R4ZUFkZUw2QWJJS2lhekFGQ2lidDJ2dlZ2QTZpYnpoaWNEZExHNlljam1rZE9RNmNkUE41aWNLd3d3VGRaRE1vcHBENGtLWkpOaEJaZG52eVMvMTMyIjt9', 'Kingsen', '', NULL, ''),
(38, 11, 11, 38, 'o3hq9w2nbztFvd5kk6idtN05AKqs', 'It5NW2Lt', 1, 1510283696, 0, '', '', '', NULL, ''),
(39, 6, 6, 39, 'oSRY003Ve7He7RlAnCV4CKmNLHEA', 'df3yH2V1', 1, 1510297865, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwM1ZlN0hlN1JsQW5DVjRDS21OTEhFQSI7czo4OiJuaWNrbmFtZSI7czoxMjoi5biF6YC85bCP5pawIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLljqbpl6giO3M6ODoicHJvdmluY2UiO3M6Njoi56aP5bu6IjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEyODoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi95aWNOdHZ6NnZZeW9BNWZOUEV5aWE1RWJZMTV2RU4wSWJ4clk0bHBzYUExY1dCVE5WUFhtV2pFSWtweTJJdmhXMVFPcUhzNTZCcThlNUFCUERXMUJCTExNY2RLOHRRbnlFRi8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1MTAyOTc4NjU7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMjg6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4veWljTnR2ejZ2WXlvQTVmTlBFeWlhNUViWTE1dkVOMElieHJZNGxwc2FBMWNXQlROVlBYbVdqRUlrcHkySXZoVzFRT3FIczU2QnE4ZTVBQlBEVzFCQkxMTWNkSzh0UW55RUYvMTMyIjt9', '帅逼小新', '', NULL, ''),
(40, 6, 6, 40, 'oSRY004A93llNfyzRwav-17antW8', 'AT454bM1', 1, 1510302235, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwNEE5M2xsTmZ5elJ3YXYtMTdhbnRXOCI7czo4OiJuaWNrbmFtZSI7czo0OiLwn42JIjtzOjM6InNleCI7aToyO3M6ODoibGFuZ3VhZ2UiO3M6MjoiZW4iO3M6NDoiY2l0eSI7czo2OiLljqbpl6giO3M6ODoicHJvdmluY2UiO3M6Njoi56aP5bu6IjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzMToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9ZU0J6cDd1WlBiMkxVRjltQjFCUVp3bjlpYmJod0xGZWR0UHRrYkx3bklKb3Zkc2o2UnlpYlBiV2ljVWRtdFNhVFNwd0pEQktickM0bVJCSDdpYUZDRjhBRnJWRWphQWdWaWJsVi8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1MTAzMDIyMzU7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMzE6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vWVNCenA3dVpQYjJMVUY5bUIxQlFad245aWJiaHdMRmVkdFB0a2JMd25JSm92ZHNqNlJ5aWJQYldpY1VkbXRTYVRTcHdKREJLYnJDNG1SQkg3aWFGQ0Y4QUZyVkVqYUFnVmlibFYvMTMyIjt9', '', '', NULL, ''),
(41, 5, 5, 41, 'oEZ6bw26kL4fH8z0Dw32WLI0A9VU', 'bh8i1A5k', 1, 1510315996, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib0VaNmJ3MjZrTDRmSDh6MER3MzJXTEkwQTlWVSI7czo4OiJuaWNrbmFtZSI7czo2OiLmiJjnpZ4iO3M6Mzoic2V4IjtpOjA7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9UVyI7czo0OiJjaXR5IjtzOjA6IiI7czo4OiJwcm92aW5jZSI7czowOiIiO3M6NzoiY291bnRyeSI7czowOiIiO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTI5OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuLzVYTmtYS3lEUkVFT055NXB2UEZLUk9iTGI5SnFvY2h0aEVlVzFpY3BzMEpYa3UzMXU4aWFPZmN3ZlJTOFBXV0pTWmlidHM4c1g0TW1jUmh4cDhHWnpEZUNybXUzalRZTmpNZi8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE1MTAzMTU5OTY7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMjk6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vNVhOa1hLeURSRUVPTnk1cHZQRktST2JMYjlKcW9jaHRoRWVXMWljcHMwSlhrdTMxdThpYU9mY3dmUlM4UFdXSlNaaWJ0czhzWDRNbWNSaHhwOEdaekRlQ3JtdTNqVFlOak1mLzEzMiI7fQ==', '战神', '', NULL, ''),
(42, 5, 5, 42, 'oEZ6bw2GhlfkWr2nszuZwujNZzVk', 'Aa5aZWLw', 1, 1510398761, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib0VaNmJ3MkdobGZrV3IybnN6dVp3dWpOWnpWayI7czo4OiJuaWNrbmFtZSI7czo2OiLpmYjlm5siO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuiuuOaYjCI7czo4OiJwcm92aW5jZSI7czo2OiLmsrPljZciO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTMxOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL0VLUU5VcU9pY2ppYmpFM3VzWUxKVjBab2lhVk41V3RIRXRpYjAxM0NyOW9LWlEzTXRkSHI4bkdDdm52ekpVcEpQRUNibVV5VERyeGFzQ3JhaWFJTmd1OFU4SlQ3ZWMzZk5FQ2x6LzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUxMDM5ODc2MDtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEzMToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9FS1FOVXFPaWNqaWJqRTN1c1lMSlYwWm9pYVZONVd0SEV0aWIwMTNDcjlvS1pRM010ZEhyOG5HQ3ZudnpKVXBKUEVDYm1VeVREcnhhc0NyYWlhSU5ndThVOEpUN2VjM2ZORUNsei8xMzIiO30=', '陈四', '', NULL, ''),
(43, 5, 5, 43, 'oEZ6bw0HwLML32A_mDD5Ui7Fx-4g', 'Pth4Qh4h', 1, 1510490000, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib0VaNmJ3MEh3TE1MMzJBX21ERDVVaTdGeC00ZyI7czo4OiJuaWNrbmFtZSI7czo5OiLnq6Dlu7rlro8iO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IumHkeWNjiI7czo4OiJwcm92aW5jZSI7czo2OiLmtZnmsZ8iO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTMxOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuLzVYTmtYS3lEUkVHTHppY3JaZVNvRldZQzBxMUhGcmNtSDFrSnp1WnltQXdpYzRldHlhRFEzUnFaRFNNWlRnM01kTHNidVJ6QnJpYWZMS09CaWN0ZTZremlhcUF3dkJVNFhxM0RQLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUxMDQ5MDAwMDtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEzMToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi81WE5rWEt5RFJFR0x6aWNyWmVTb0ZXWUMwcTFIRnJjbUgxa0p6dVp5bUF3aWM0ZXR5YURRM1JxWkRTTVpUZzNNZExzYnVSekJyaWFmTEtPQmljdGU2a3ppYXFBd3ZCVTRYcTNEUC8xMzIiO30=', '章建宏', '', NULL, ''),
(44, 6, 6, 44, 'oSRY005yh2cXkbIoumh2yvD4rc3Y', 'K99lai5A', 1, 1510555176, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwNXloMmNYa2JJb3VtaDJ5dkQ0cmMzWSI7czo4OiJuaWNrbmFtZSI7czo5OiLngrnkuobnoIEiO3M6Mzoic2V4IjtpOjA7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjA6IiI7czo4OiJwcm92aW5jZSI7czowOiIiO3M6NzoiY291bnRyeSI7czowOiIiO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTMwOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL3lpY050dno2dll5ckc3WEdPZDU2QlJab21XWFl4YU91SDNGSUtYQllNMXdhYkhxNERpY1VFRWU1SmljMXFHZkpyTXlEdkxxVGpLRzNFMnJFUDlLaHFXVlRFNVp3Tm5pYXM5QUsvMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNTEwNTU1MTc2O3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTMwOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL3lpY050dno2dll5ckc3WEdPZDU2QlJab21XWFl4YU91SDNGSUtYQllNMXdhYkhxNERpY1VFRWU1SmljMXFHZkpyTXlEdkxxVGpLRzNFMnJFUDlLaHFXVlRFNVp3Tm5pYXM5QUsvMTMyIjt9', '点了码', '', NULL, ''),
(45, 6, 6, 45, 'oSRY0002JvnXBtEpaAY6FbFSnWQY', 'U96FfOh3', 1, 1510563228, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwMDJKdm5YQnRFcGFBWTZGYkZTbldRWSI7czo4OiJuaWNrbmFtZSI7czo1OiJMY+WViiI7czozOiJzZXgiO2k6MTtzOjg6Imxhbmd1YWdlIjtzOjU6InpoX0NOIjtzOjQ6ImNpdHkiO3M6MDoiIjtzOjg6InByb3ZpbmNlIjtzOjA6IiI7czo3OiJjb3VudHJ5IjtzOjk6Iuazveilv+WymyI7czoxMDoiaGVhZGltZ3VybCI7czoxMzI6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vWVNCenA3dVpQYjJMVUY5bUIxQlFaNWo4NGljSVFvSWFPaWNURW95NWRVb0M5YlNsaWJ0MXpCSEZZcHB5aWIzclFFdHdTaWFJam1pYnJwZ1l5dW93QWZ1UlF5QVFNUG5YYnJwS0FoLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUxMDU2MzIyODtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEzMjoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9ZU0J6cDd1WlBiMkxVRjltQjFCUVo1ajg0aWNJUW9JYU9pY1RFb3k1ZFVvQzliU2xpYnQxekJIRllwcHlpYjNyUUV0d1NpYUlqbWlicnBnWXl1b3dBZnVSUXlBUU1QblhicnBLQWgvMTMyIjt9', 'Lc啊', '', NULL, ''),
(46, 6, 6, 46, 'oSRY0041WZrzvp2v5xNyImo5LAZI', 'ArSRIi0S', 1, 1510653256, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwNDFXWnJ6dnAydjV4TnlJbW81TEFaSSI7czo4OiJuaWNrbmFtZSI7czo2OiJTdGV2ZW4iO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjk6IumYsuWfjua4ryI7czo4OiJwcm92aW5jZSI7czo2OiLlub/opb8iO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTI4OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL2VIaWFKQjdXYjlBS2V6a0VzMmxDdjdnMkFBME1PZjdTbE9rQ0lMOHUzR1l0SHlmUndFemFucTFVRXE2MldCbUtxWFc4OG82bk43ZDhVOEJRTGhJY0VPVERWOUFBVHVITGliLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUxMDY1MzI1NjtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEyODoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9lSGlhSkI3V2I5QUtlemtFczJsQ3Y3ZzJBQTBNT2Y3U2xPa0NJTDh1M0dZdEh5ZlJ3RXphbnExVUVxNjJXQm1LcVhXODhvNm5ON2Q4VThCUUxoSWNFT1REVjlBQVR1SExpYi8xMzIiO30=', 'Steven', '', NULL, ''),
(47, 6, 6, 47, 'oSRY00ymxuQQkyt71joCQe5uH1WQ', 'RFQW2C0F', 1, 1511251515, 1510837021, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAweW14dVFRa3l0NzFqb0NRZTV1SDFXUSI7czo4OiJuaWNrbmFtZSI7czozNjoi5a6J6Z2Z55qE576O55S35a2QKD3vv6Mgz4Hvv6M9KS56elpaIjtzOjM6InNleCI7aToxO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfQ04iO3M6NDoiY2l0eSI7czo2OiLljZflubMiO3M6ODoicHJvdmluY2UiO3M6Njoi56aP5bu6IjtzOjc6ImNvdW50cnkiO3M6Njoi5Lit5Zu9IjtzOjEwOiJoZWFkaW1ndXJsIjtzOjEzMDoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi81SVVBdElhYlVKS0t0WUN4Y2I4eHNxVTNzVTdqVVd3ajg2bGd3YlNpYXRNc3JZU05scU9Jd0NveXJEY3hDVG04QmZpYVhpYko0aWJKSDBsUUI0cjkyTENKbVp4SWZKV2VTelRsLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUxMTI1MTUxNTtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEzMDoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi81SVVBdElhYlVKS0t0WUN4Y2I4eHNxVTNzVTdqVVd3ajg2bGd3YlNpYXRNc3JZU05scU9Jd0NveXJEY3hDVG04QmZpYVhpYko0aWJKSDBsUUI0cjkyTENKbVp4SWZKV2VTelRsLzEzMiI7fQ==', '安静的美男子(=￣ρ￣=).zzZZ', '', NULL, ''),
(48, 6, 6, 48, 'oSRY000uHhXcjQ6jvJ9QemtELGmQ', 'z2VRLG78', 1, 1510971513, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwMHVIaFhjalE2anZKOVFlbXRFTEdtUSI7czo4OiJuaWNrbmFtZSI7czozOiLmspAiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuWOpumXqCI7czo4OiJwcm92aW5jZSI7czo2OiLnpo/lu7oiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTMwOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL3FHdXNLeWIwSUVlemh1eWpSa2d0eFFyQ2RmbkFqaWJFQUpsT1hKYk81UGRaakNGb1Y4R2pDa1dHdlpKdXBqUzd5QmlhaWJRczdlRXpXelJOSHQxUHNCUmlibHdtOG1mdGNZT3YvMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNTEwOTcxNTEzO3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTMwOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL3FHdXNLeWIwSUVlemh1eWpSa2d0eFFyQ2RmbkFqaWJFQUpsT1hKYk81UGRaakNGb1Y4R2pDa1dHdlpKdXBqUzd5QmlhaWJRczdlRXpXelJOSHQxUHNCUmlibHdtOG1mdGNZT3YvMTMyIjt9', '沐', '', NULL, ''),
(49, 6, 6, 49, 'oSRY00_4HQL3U8SwTcdHz9PmjSnQ', 'S4cfyRYx', 1, 1511160925, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwXzRIUUwzVThTd1RjZEh6OVBtalNuUSI7czo4OiJuaWNrbmFtZSI7czo2OiLooZflopkiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuWOpumXqCI7czo4OiJwcm92aW5jZSI7czo2OiLnpo/lu7oiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTMwOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1lTQnpwN3VaUGIyTFVGOW1CMUJRWnlMbjlpY3ZmUUxialowaWFFdkpicllGTXpnTUZUT2JrbmREaWNTVWZEdDBNVEQzQW1VTHR6S2dROFY5RFl2NmVRVTdtQjFNZWhpYUJCNnQvMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNTExMTYwOTI1O3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTMwOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1lTQnpwN3VaUGIyTFVGOW1CMUJRWnlMbjlpY3ZmUUxialowaWFFdkpicllGTXpnTUZUT2JrbmREaWNTVWZEdDBNVEQzQW1VTHR6S2dROFY5RFl2NmVRVTdtQjFNZWhpYUJCNnQvMTMyIjt9', '街墙', '', NULL, ''),
(50, 6, 6, 50, 'oSRY0072FpN3_9fZLPvWtOuWTAz0', 'd0LAnE2C', 1, 1511172629, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwNzJGcE4zXzlmWkxQdld0T3VXVEF6MCI7czo4OiJuaWNrbmFtZSI7czo5OiLniZvlpKflv6siO3M6Mzoic2V4IjtpOjA7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjA6IiI7czo4OiJwcm92aW5jZSI7czowOiIiO3M6NzoiY291bnRyeSI7czowOiIiO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTMxOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1lTQnpwN3VaUGIxTDNoanVLaERReWljSlVZU1k0TGJXTXV2M2lhMDFPRmlhZzhrQ3BtMnJhcWhOQVVGOEtpYnVKZnhoZDRMb242UExpY0p4ekpybzhGZmJJMkNhaG1VUWRwRlplLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUxMTE3MjYyOTtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEzMToiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9ZU0J6cDd1WlBiMUwzaGp1S2hEUXlpY0pVWVNZNExiV011djNpYTAxT0ZpYWc4a0NwbTJyYXFoTkFVRjhLaWJ1SmZ4aGQ0TG9uNlBMaWNKeHpKcm84RmZiSTJDYWhtVVFkcEZaZS8xMzIiO30=', '牛大快', '', NULL, ''),
(51, 6, 6, 51, 'oSRY00-8Udss0lTrtr-ZSwOJEC2I', 'qkKwgy85', 1, 1511264922, 0, 'YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib1NSWTAwLThVZHNzMGxUcnRyLVpTd09KRUMySSI7czo4OiJuaWNrbmFtZSI7czozOiJZb3UiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuazieW3niI7czo4OiJwcm92aW5jZSI7czo2OiLnpo/lu7oiO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTI4OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1lTQnpwN3VaUGIyTFVGOW1CMUJRWjRGMnNmbUpNYmljVEd0VlhOYU12amZndUFjTjloU2RmTUE3TWliclg2OFlNR1ZHMmYxSG1SYTZuZWY2b2thZWRJTmo4NW5PQktGUkVuLzEzMiI7czoxNDoic3Vic2NyaWJlX3RpbWUiO2k6MTUxMTI2NDkyMjtzOjY6InJlbWFyayI7czowOiIiO3M6NzoiZ3JvdXBpZCI7aTowO3M6MTA6InRhZ2lkX2xpc3QiO2E6MDp7fXM6NjoiYXZhdGFyIjtzOjEyODoiaHR0cDovL3d4LnFsb2dvLmNuL21tb3Blbi9ZU0J6cDd1WlBiMkxVRjltQjFCUVo0RjJzZm1KTWJpY1RHdFZYTmFNdmpmZ3VBY045aFNkZk1BN01pYnJYNjhZTUdWRzJmMUhtUmE2bmVmNm9rYWVkSU5qODVuT0JLRlJFbi8xMzIiO30=', 'You', '', NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_mapping_ucenter`
--

CREATE TABLE IF NOT EXISTS `ims_mc_mapping_ucenter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `centeruid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_mass_record`
--

CREATE TABLE IF NOT EXISTS `ims_mc_mass_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `fansnum` int(10) unsigned NOT NULL,
  `msgtype` varchar(10) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `group` int(10) NOT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `cron_id` int(10) unsigned NOT NULL,
  `sendtime` int(10) unsigned NOT NULL,
  `finalsendtime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_members`
--

CREATE TABLE IF NOT EXISTS `ims_mc_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(8) NOT NULL,
  `groupid` int(11) NOT NULL,
  `credit1` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `credit3` decimal(10,2) unsigned NOT NULL,
  `credit4` decimal(10,2) unsigned NOT NULL,
  `credit5` decimal(10,2) unsigned NOT NULL,
  `credit6` decimal(10,2) NOT NULL,
  `credit20` decimal(10,2) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `groupid` (`groupid`),
  KEY `uniacid` (`uniacid`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- 转存表中的数据 `ims_mc_members`
--

INSERT INTO `ims_mc_members` (`uid`, `uniacid`, `mobile`, `email`, `password`, `salt`, `groupid`, `credit1`, `credit2`, `credit3`, `credit4`, `credit5`, `credit6`, `credit20`, `createtime`, `realname`, `nickname`, `avatar`, `qq`, `vip`, `gender`, `birthyear`, `birthmonth`, `birthday`, `constellation`, `zodiac`, `telephone`, `idcard`, `studentid`, `grade`, `address`, `zipcode`, `nationality`, `resideprovince`, `residecity`, `residedist`, `graduateschool`, `company`, `education`, `occupation`, `position`, `revenue`, `affectivestatus`, `lookingfor`, `bloodtype`, `height`, `weight`, `alipay`, `msn`, `taobao`, `site`, `bio`, `interest`) VALUES
(1, 5, '', '8c0b484469b74f7d69f574cf8ec19df8@weizancms.com', '32dfe08b4bff77d43d824d890ba11538', 'PM1A5A55', 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1506308921, '', '成果', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM54T1XF9lMMossdqem1H2lrmeEwQc81AckkRG6kd0iboX6iaQ2NKffAj7DsRh0qJ8k1SGI1ZkuOoib5w/132', '', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '福建省', '厦门市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 5, '', '65fe770e1425855962d4220caa24b298@weizancms.com', '32dfe08b4bff77d43d824d890ba11538', 'bDLFa99W', 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1506309096, '', '帝一', 'http://wx.qlogo.cn/mmopen/VzQsdzsGScP9Ap2egpVyPrlsrWdib9f90zEQUZ1YPJ02lKu9NKL21KYSHRE7uVezFsA5gEicxaJic5fsfvdTFr6RA/132', '', 0, 2, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '福建省', '厦门市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 5, '', '9a593e5f6cb8dbc9c05f5a347f5c4d2c@weizancms.com', '66950163e50628312cc7f3bdc3283914', 'UadxSaA7', 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1506488084, '', 'ScorpioEffortsToChan', 'http://wx.qlogo.cn/mmopen/92TOCqUg3p1OOicNLzMichmOEy0xxULlt7Dh9OmNbTTicjpg5DUVWLicEIcogkpk3zZVA5jfo4arGM0NiankE3bgAyF0VBZ4aAOgE/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 5, '', 'bf586597465c5e2a6c9b8c8c9e778c51@weizancms.com', '6e9461090a6459ec96be8ecf836aaa55', 'd7JwZ8FF', 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1507290755, '', '小不点', 'http://wx.qlogo.cn/mmopen/BJg5putqadXRu2SdGpHlhMRleibghyK45rOUea7iaOSfn5WlicWIsZwzsBwCkyrbpLPmsvLgGic2BV0GUWDeKV6IFqiaflzLZiaCZo/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 5, '', '20c1c404adf4e3a7fee7065840a1993c@weizancms.com', '311eeb5b92f5e11411a7104847eabd51', 'AiN8iPu0', 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1507623004, '', 'Wind。', 'http://wx.qlogo.cn/mmopen/VzQsdzsGScPZfHoUfZl9Pc69XkvOJxmmYPb2STchQ4hcFRHteeeFIYp8uZvSZp5qe6eWjIIiaE1ZJVXXLdXGohFzcUdzvZnfV/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 5, '', '7dfedb036fad085ba25faa72a7f1f42d@weizancms.com', '32dfe08b4bff77d43d824d890ba11538', 'wqlbhes7', 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1508047445, '', '糖醋排骨', 'http://wx.qlogo.cn/mmopen/92TOCqUg3p27Ubm5kIbWRic6kHvEsu0c3OjIpV9sr75zjjKln4kReRHVtibMxX8qIE3GATXK7ibNia8WMYyibjwqsg5L7uGCY8BHI/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '省', '市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 5, '', '4fbd6d24072f9c446d3684396efa8d8d@weizancms.com', '32dfe08b4bff77d43d824d890ba11538', 'I1iN7NLg', 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1508127092, '', '彪哥', 'http://wx.qlogo.cn/mmopen/5XNkXKyDREEkbooXpRY6uPzMxpA0IRRTiakCicRopRib5picWomgCaJM1D4jhL1iaOWiaWxQywoiaXlYZCBVPf9Fwj2lllZAU11b5Xw/132', '', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '福建省', '莆田市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 5, '', '11b58010b6b00c2c8daeed1703960ec8@weizancms.com', '421f2ab6f4eeedbe290c6184fc2bce29', 'C1QyRQ7R', 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1508229664, '', '街墙', 'http://wx.qlogo.cn/mmopen/92TOCqUg3p2ibXFWO11g19DvJCaRYMHt90cARtiaq49LCy3DFW50ic7PtQTkdbQSddL69f264SDDQIt6pha1Eia0YTEJZ4YXWTwm/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 5, '', 'dd6f33185a084f7e064bf42714db1465@weizancms.com', '8c06894359986d0fbfcae3fd06e9f95b', 'fLA4Lm2M', 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1508310574, '', '王庭协', 'http://wx.qlogo.cn/mmopen/VzQsdzsGScOicCa7Dl0vroGclBMywAWZJDlVI7XsSa8VuvkrglAIuTAaLgapmI5FDQnrCL7X6S9pSxqkSrssnwg/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 5, '', 'cf90002a0947445b0318448e57bd16e8@weizancms.com', '0ef9f2efb0b3bf6e11ec58b51b9926f9', 'wUQUb2NP', 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1508311255, '', '王', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKCxoEBccuCGPIn2CPsNBIjuecKg2BcdY8YGonYnEjIoojALf6MEEbF46Okvr5rwlCVvqzkG7dVyQ/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 5, '', 'bae637e0db95ec9aa93035716097cfa9@weizancms.com', '32dfe08b4bff77d43d824d890ba11538', 'xXYhqx0o', 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1508318574, '', 'liam', 'http://wx.qlogo.cn/mmopen/92TOCqUg3p2ibXFWO11g19F1n3UbtBkqo1n9ZZcb4vb8csem7Vb8Be792fKTxW4sWt4kG5gXsYRxjvTjCWNxQ4ia08UPovqI3s/132', '', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '福建省', '厦门市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 5, '', '8185ab470331f262867617281d32a56d@weizancms.com', 'b3ce68f27005e040c8100b04072e8e5c', 'FVS8w24V', 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1508318751, '', 'Arya', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBLlM4dr4NxGsrnQOLsDcw3LGg4t9wibialKnwxu1odw4wpZMS3ptulwYcyCCEia8AZl3y7RB15ErWPA/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 5, '', '5c8e3f735036a4bf9927fa5e90e50cd1@weizancms.com', 'e74f37e0675e3728a0ab867ff85434a9', 'QL8czV6B', 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1508488124, '', '黄傑', 'http://wx.qlogo.cn/mmopen/92TOCqUg3p3wDbZbSxvOgjFUHjfqIicsjiau2cuCQEsQDFAknbgKwrb2PX8SUqibO2icQAbkEfL7ZppN3hwwJmBfxZh84zbIVib4g/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 5, '', 'b87e96378d4eb828be5e9b2a8733a4e5@weizancms.com', 'd2b4996e563686cc2295aa19edd6e55b', 'In1F9eiV', 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1508729045, '', '北海道', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKETwPy9Ao9u6xqlGo3kgIicsjn75hPuypD3cyHbfxueerFhhcYH6OOEmBWr174nh1OdKuwWXicYKFg/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 6, '', '184609233cf633b25f267f4c44b31a23@weizancms.com', 'd2dbe47233ca1449660ca27a58b7769d', 'iS4bYjzJ', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1509085930, '', '帝一', 'http://wx.qlogo.cn/mmopen/qGusKyb0IEc5IkWXGCrrxhdnEEPUJWpL0ibtAMsFia4DGJkCIC3lHpY9vG6eB4siakVsKc6uolyLqOmCan9iaqcr1w/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, 6, '', 'df1755dc0f71c3778714cca1e5b66ebf@weizancms.com', '32dfe08b4bff77d43d824d890ba11538', 'h181w5wV', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1509097351, '', '成果', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM4lficuQ7Jo2kInMGDxsprd5VdXpBaRRPKd9EIMoVBTAXPA5ia9q6fCIhnzPRz0pfNG1M8FCGGjNObg/132', '', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '福建省', '厦门市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, 6, '', 'f4c595d1b4217d7a027720efbe5c40b6@weizancms.com', '32dfe08b4bff77d43d824d890ba11538', 'CtnneNf1', 6, '18.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1509100104, '', 'Wind。', 'http://wx.qlogo.cn/mmopen/qGusKyb0IEcL2n2e19GVh9GtFhALbYju80CeoIE0ib1ezxNfC8DohibhMfibIWzsARsOPJjg2ibhOP0wOZicMdOxXu7rYRHGRziaAf/132', '', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '挪威', '省', '市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, 6, '', 'fff7759fb7343c8e6b8974555af69bef@weizancms.com', '9122ed74332846957617b0bb1cfb48f3', 'NYxECB27', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1509111977, '', '王庭协', 'http://wx.qlogo.cn/mmopen/qGusKyb0IEc4Vp17o76DFnwvg45Iicw02ArXBAgViaibAsY7BRdcQaWGhW1frM5oBJo8koo3Wm3dSWLpdllMSibqUA/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, 6, '', '2c5ee2d0893335e6b986ca2e1d58ed4c@weizancms.com', 'b7c9a060a0c78392fb2667bb413e6238', 'sBaA7IF7', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1509118360, '', '孙佳宏', 'http://wx.qlogo.cn/mmopen/YSBzp7uZPb2LUF9mB1BQZ0icoX0IJfDNtoy9d9iaZUdfPEO4FMOkVibc8jMXYib7YqIpYnWtdOicALuJ4zByialbP6icvw38hOavswk/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, 6, '', '2ff2757169a3a97aa96c32c737552cc2@weizancms.com', '6da8d49fee0ba8ed5ae02082b6cbf8c9', 'qsO85of7', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1509122274, '', '糖醋排骨', 'http://wx.qlogo.cn/mmopen/YSBzp7uZPb2rBGRWKm2FjSJTDDgO275WM0cHlGHtGQvFaHfiaQgaRzIUYhTA4msdMPicTfFadxlKdRI9eWjEzwORoq5pt8IPibB/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, 6, '', 'f4ae23509fba5fb16f0dab4e148f2a16@weizancms.com', '32dfe08b4bff77d43d824d890ba11538', 'XPkywook', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1509122632, '', '即来之～则安之', 'http://wx.qlogo.cn/mmopen/YSBzp7uZPb28FGgxXCra8ADs6tyMlwDrdulyJAf3Y9IQutlSCNVyTntgibMByRQRUbWngQvBAG4Ar1FD8qJibAibDGK6OgvicrcP/132', '', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '广西省', '南宁市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, 6, '', 'd59322c39daaf3e974d27268ddbac241@weizancms.com', 'c2b174a3b76b49bdb9f6f08e25d67635', 'wqQQaql9', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1509273621, '', 'UsaHero®郭文杰™', 'http://wx.qlogo.cn/mmopen/yicNtvz6vYyoY9yCfGHtznUse9icBOojlz4k3orcaFNxhgktbM5o3ng90sX0ZRJpefGdibAHTbiaCv01hTph1Iibt8A/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, 6, '', '95513a926a72b9d1a112a10a8d570a4d@weizancms.com', '32dfe08b4bff77d43d824d890ba11538', 'FNEyUcu6', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1509333323, '', '彪哥', 'http://wx.qlogo.cn/mmopen/eHiaJB7Wb9AL6UsFpIZ8ZGPkibnDk8xxLATLU4Lbb4AnXFvYt3b8FzMfynrSsu0mlM79C8g2PjBvB7JPgsiaUZ9063icAC02aEiaK/132', '', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '福建省', '莆田市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, 6, '', 'cce35752a53a548f4d05611272cb58d9@weizancms.com', 'e9c801fc5120ec5d17db48bf5db7a1c7', 'AH6FR6Yy', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1509343399, '', '安安', 'http://wx.qlogo.cn/mmopen/yicNtvz6vYyoA5fNPEyia5ERqcLQrTHVWBhD4NFOMq2uEPlLPsrDgoxcQR0iae2C3siaF0EObHIalTsjD21ag8kYMaxXE2fU8Niag/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, 6, '', 'f51469f2514a0c5fee99adbcd5383355@weizancms.com', 'ec95abe5605094dde2794c245569adae', 'obht97ut', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1509503412, '', 'Nephila。', 'http://wx.qlogo.cn/mmopen/YSBzp7uZPb06XD6M4cESmhp7OA3pyYnBeUUBZmpz7aV6BcbI46hlqWFtrD0EvfY1ulez67byYf9ibDIzILt5VnIIqyMquu45Q/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, 6, '', '690aa9546287ff0df37fe27c9aeca942@weizancms.com', 'a377559526278b9b4bdeee022fa52a74', 'A88xR88z', 6, '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1509935387, '', '卞晨龙', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJT4gq0QN4zTEdek9usR2DFov9ibrP3ANicAYMuzUQlpQ1wFEHpyXffmDKKRzEKyIbic3NEEkpUicWjDA/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, 6, '', '2a304972906c79107a8986a6464c2a5f@weizancms.com', '9176b4b0258abdbc1bebf96da325b1cf', 'xk8WLYq5', 6, '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1509935387, '', '链家。聂平', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJ0WDPkUEbtiaHFcO0gMRibI0cGutTIibjRlOo2HibGCCMbBPH7MOtuT2OK1AN0VczjFelAqg3N5q2rIQ/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(28, 5, '', '968dbd7b49228beae33496f825cbd042@weizancms.com', 'e520f11663af38396c7bc440da3904b6', 'AB4b1n4Q', 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1509939505, '', '舞～夜殇', 'http://wx.qlogo.cn/mmopen/EKQNUqOicjibia3NaPAnOCPcYWGpibCxS0Uia8NXdRVSyefib4KMnjw3p2DnJPyR1FqzrsDAaEYD6w81uuZSiaquAAfFsQzjPq7dD6s/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, 6, '', '12c48d223938098f4a8901214c3947ae@weizancms.com', '9f80df1c13e9a65c3b287daef2308fd3', 'O0h2aN0U', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1509953526, '', 'Raven李马剑', 'http://wx.qlogo.cn/mmopen/eHiaJB7Wb9AIic9OAuRpGN9ZkHHdKrclRG84HZibZAvspV8GDUC7Yz0tNumqda6gAThlicfJXJKgEdersU7eKUVibLw/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, 6, '', '806ba26a723e034be46ebe7378e63b6f@weizancms.com', '7668d14c96402644900e2549ca1be7df', 'GaCP4AI4', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1509953900, '', '专注互联网～江伟斌', 'http://wx.qlogo.cn/mmopen/yicNtvz6vYyqMcRT0EqcuOic19ZNmjy3PLNTcNneIVDAKOvibBoVgwfXTcmibTb2jIft0f4ZEVOebe5DC2iaZrt2lRQ/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, 6, '', '6b9c551334dc72fe73a525ebed86d746@weizancms.com', '5d600d841ae2938d74692c1c8e5eac6a', 'R5pQ2rlo', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1509954473, '', '朱肖芳', 'http://wx.qlogo.cn/mmopen/eHiaJB7Wb9AI4KP0Nq3icDtx9Gndh7Z4HRicBhBHfGQjyh2bSdcB9mCl7Mwt3uxQ9KMYN18HJOoZOq8Wtk8ZabXrA79ozjSsIYK/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, 6, '', '4bedb64177c5daa3349793821ce28f01@weizancms.com', '32dfe08b4bff77d43d824d890ba11538', 'L5gGgY93', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1509967416, '', 'liam', 'http://wx.qlogo.cn/mmopen/YSBzp7uZPb2LUF9mB1BQZ7xvnITlK9TNBZoRSCxyflPY7FwRTvCqDnfibmZl6GUUB3ia40ONa9k25kDtZG2WFqhribibC8zxUxmI/132', '', 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '中国', '福建省', '厦门市', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, 6, '', '73f8b90b9686fd075929e90a9233f7d8@weizancms.com', '5ec239465cbf143f538adb3d3ee15402', 'YMoZMjLN', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1510042232, '', 'SOWHAT', 'http://wx.qlogo.cn/mmopen/yicNtvz6vYyrv4uGjgST1zaqSc5gpgzLW4ZB587wD5bCvGSHNMPnaNF4iaoEBOiawBqJX4GZzDAoCv44YIfpTQfibcS95DjY5kOS/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, 6, '', '5fa647335e92c4a4d95e61e04d66f295@weizancms.com', '752b98a50af5c68a3ba06e60a57a8fde', 'WxtGiRUF', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1510110111, '', '谢恒彦·Vicky', 'http://wx.qlogo.cn/mmopen/YSBzp7uZPb2LUF9mB1BQZyrsrmIsQkLg97plNSXeE2Yojcq8fpohEdhXz1HQCpnDJnzksXO4IhBqmD6zfWiarTMBDetbDuZZF/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, 6, '', '67ec7ca4acc25cf926808a4b68a4be70@weizancms.com', '6955f0e20f76664aff6897316ceadf6c', 'pi9az2Ny', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1510123177, '', '舞～夜殇', 'http://wx.qlogo.cn/mmopen/yicNtvz6vYyq9ek3icYEFHRJZSnoibwyhxXgxwPHT7P438GldP5W1bckzs9hhniaichIHT8CIDlKicCkmpMCAs9uIhIa9ibkzLuabBw/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(36, 7, '', '512bd40d345a0fae6694bb97d7cb12c2@weizancms.com', '383bcbfb42394d09404569fa9a93804b', 'FOL9HhHO', 7, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1510198050, '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, 6, '', '6e5f506b7486b16e53ee40ccbcf7cbd6@weizancms.com', '39601e284da2606fec4096c7cac8af8e', 'e79zIxar', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1510211892, '', 'Kingsen', 'http://wx.qlogo.cn/mmopen/qGusKyb0IEezhuyjRkgtxeAdeL6AbIKiazAFCibt2vvVvA6ibzhicDdLG6YcjmkdOQ6cdPN5icKwwwTdZDMoppD4kKZJNhBZdnvyS/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, 11, '', '76e7b0a5927eb5fc08a75c3ae602f737@weizancms.com', '8646a1795a27221cf91b88358a015b49', 'AZsuLPoE', 11, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1510283696, '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, 6, '', '39f0e6c13b9b796350a3473768a0bf3f@weizancms.com', '86912d1484e93cb591db4f26133bcdc4', 'fcRz711C', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1510297865, '', '帅逼小新', 'http://wx.qlogo.cn/mmopen/yicNtvz6vYyoA5fNPEyia5EbY15vEN0IbxrY4lpsaA1cWBTNVPXmWjEIkpy2IvhW1QOqHs56Bq8e5ABPDW1BBLLMcdK8tQnyEF/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, 6, '', '227467facb17c8da3d1808dc8f64d0ff@weizancms.com', 'ab18a2e32ce5887d2d1dc2babcb326f7', 'pn9nBPq5', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1510302235, '', '', 'http://wx.qlogo.cn/mmopen/YSBzp7uZPb2LUF9mB1BQZwn9ibbhwLFedtPtkbLwnIJovdsj6RyibPbWicUdmtSaTSpwJDBKbrC4mRBH7iaFCF8AFrVEjaAgViblV/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(41, 5, '', 'afb425f62e0ef8df53d6164ad6961e33@weizancms.com', '39e54d411eb8c4ad610ba5cf76e0f64f', 'YedNM8dM', 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1510315996, '', '战神', 'http://wx.qlogo.cn/mmopen/5XNkXKyDREEONy5pvPFKRObLb9JqochthEeW1icps0JXku31u8iaOfcwfRS8PWWJSZibts8sX4MmcRhxp8GZzDeCrmu3jTYNjMf/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(42, 5, '', '628b36e5197e00f84e46a41819d806f2@weizancms.com', 'a56f29c556287e95bba44efbbf89fc70', 'S33XZDC3', 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1510398761, '', '陈四', 'http://wx.qlogo.cn/mmopen/EKQNUqOicjibjE3usYLJV0ZoiaVN5WtHEtib013Cr9oKZQ3MtdHr8nGCvnvzJUpJPECbmUyTDrxasCraiaINgu8U8JT7ec3fNEClz/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, 5, '', 'ff7a85c78d5e08f227c9c108cc3330ba@weizancms.com', 'aaa9d5221fa4c457a8ae7d144ffebeed', 'eZdbtb1x', 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1510490000, '', '章建宏', 'http://wx.qlogo.cn/mmopen/5XNkXKyDREGLzicrZeSoFWYC0q1HFrcmH1kJzuZymAwic4etyaDQ3RqZDSMZTg3MdLsbuRzBriafLKOBicte6kziaqAwvBU4Xq3DP/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, 6, '', '0f5af1fb0720701381c692a42007c3f7@weizancms.com', '104c632907f2ba28883ca6cc4c5a4808', 'voWtzb75', 6, '2.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1510555176, '', '点了码', 'http://wx.qlogo.cn/mmopen/yicNtvz6vYyrG7XGOd56BRZomWXYxaOuH3FIKXBYM1wabHq4DicUEEe5Jic1qGfJrMyDvLqTjKG3E2rEP9KhqWVTE5ZwNnias9AK/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(45, 6, '', 'b8bfba009e93b1e51c9aa6cd1a7325e8@weizancms.com', 'c873ba4dda7bd754c89ceb4d898f7690', 'j83ctC9l', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1510563228, '', 'Lc啊', 'http://wx.qlogo.cn/mmopen/YSBzp7uZPb2LUF9mB1BQZ5j84icIQoIaOicTEoy5dUoC9bSlibt1zBHFYppyib3rQEtwSiaIjmibrpgYyuowAfuRQyAQMPnXbrpKAh/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(46, 6, '', 'fb1f609a6420653022469c13e982f760@weizancms.com', '7db996749b3963014f2b1effbe7140c1', 'Y6Glj36K', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1510653256, '', 'Steven', 'http://wx.qlogo.cn/mmopen/eHiaJB7Wb9AKezkEs2lCv7g2AA0MOf7SlOkCIL8u3GYtHyfRwEzanq1UEq62WBmKqXW88o6nN7d8U8BQLhIcEOTDV9AATuHLib/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(47, 6, '', 'b76271547ee7bd2ddf5e7f4ee05aace9@weizancms.com', 'fc44495467f97ceb1c7c0cb0727f4d13', 'm1t0104t', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1510823431, '', '安静的美男子(=￣ρ￣=).zzZZ', 'http://wx.qlogo.cn/mmopen/5IUAtIabUJKKtYCxcb8xsqU3sU7jUWwj86lgwbSiatMsrYSNlqOIwCoyrDcxCTm8BfiaXibJ4ibJH0lQB4r92LCJmZxIfJWeSzTl/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(48, 6, '', 'faa6203dc567c0cbebb25719f4fce373@weizancms.com', 'f95f6166ed20277120220b9fe8d3390d', 'm0i7E8zZ', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1510971513, '', '沐', 'http://wx.qlogo.cn/mmopen/qGusKyb0IEezhuyjRkgtxQrCdfnAjibEAJlOXJbO5PdZjCFoV8GjCkWGvZJupjS7yBiaibQs7eEzWzRNHt1PsBRiblwm8mftcYOv/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(49, 6, '', '42287c9e7e59d70374e57ae89ac12775@weizancms.com', '7890a65b3cc5b0fdb02182635ec1f2dc', 'X6Vnn66N', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1511160925, '', '街墙', 'http://wx.qlogo.cn/mmopen/YSBzp7uZPb2LUF9mB1BQZyLn9icvfQLbjZ0iaEvJbrYFMzgMFTObkndDicSUfDt0MTD3AmULtzKgQ8V9DYv6eQU7mB1MehiaBB6t/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(50, 6, '', 'd59a89374e5bc2667c0ed3feb4132556@weizancms.com', 'ce7847810dfcc14f305c970deafa171c', 'r4VxhXxX', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1511172629, '', '牛大快', 'http://wx.qlogo.cn/mmopen/YSBzp7uZPb1L3hjuKhDQyicJUYSY4LbWMuv3ia01OFiag8kCpm2raqhNAUF8KibuJfxhd4Lon6PLicJxzJro8FfbI2CahmUQdpFZe/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(51, 6, '', '7a724873cf1d12c7dca2468472ba7fb8@weizancms.com', '270e03ab2266e26e60cd4cfcd4eefc53', 'gxi2J7qO', 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1511264922, '', 'You', 'http://wx.qlogo.cn/mmopen/YSBzp7uZPb2LUF9mB1BQZ4F2sfmJMbicTGtVXNaMvjfguAcN9hSdfMA7MibrX68YMGVG2f1HmRa6nef6okaedINj85nOBKFREn/132', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_member_address`
--

CREATE TABLE IF NOT EXISTS `ims_mc_member_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(50) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `province` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `district` varchar(32) NOT NULL,
  `address` varchar(512) NOT NULL,
  `isdefault` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uinacid` (`uniacid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_member_fields`
--

CREATE TABLE IF NOT EXISTS `ims_mc_member_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_fieldid` (`fieldid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=505 ;

--
-- 转存表中的数据 `ims_mc_member_fields`
--

INSERT INTO `ims_mc_member_fields` (`id`, `uniacid`, `fieldid`, `title`, `available`, `displayorder`) VALUES
(1, 2, 1, '真实姓名', 1, 0),
(2, 2, 2, '昵称', 1, 1),
(3, 2, 3, '头像', 1, 1),
(4, 2, 4, 'QQ号', 1, 0),
(5, 2, 5, '手机号码', 1, 0),
(6, 2, 6, 'VIP级别', 1, 0),
(7, 2, 7, '性别', 1, 0),
(8, 2, 8, '出生生日', 1, 0),
(9, 2, 9, '星座', 1, 0),
(10, 2, 10, '生肖', 1, 0),
(11, 2, 11, '固定电话', 1, 0),
(12, 2, 12, '证件号码', 1, 0),
(13, 2, 13, '学号', 1, 0),
(14, 2, 14, '班级', 1, 0),
(15, 2, 15, '邮寄地址', 1, 0),
(16, 2, 16, '邮编', 1, 0),
(17, 2, 17, '国籍', 1, 0),
(18, 2, 18, '居住地址', 1, 0),
(19, 2, 19, '毕业学校', 1, 0),
(20, 2, 20, '公司', 1, 0),
(21, 2, 21, '学历', 1, 0),
(22, 2, 22, '职业', 1, 0),
(23, 2, 23, '职位', 1, 0),
(24, 2, 24, '年收入', 1, 0),
(25, 2, 25, '情感状态', 1, 0),
(26, 2, 26, ' 交友目的', 1, 0),
(27, 2, 27, '血型', 1, 0),
(28, 2, 28, '身高', 1, 0),
(29, 2, 29, '体重', 1, 0),
(30, 2, 30, '支付宝帐号', 1, 0),
(31, 2, 31, 'MSN', 1, 0),
(32, 2, 32, '电子邮箱', 1, 0),
(33, 2, 33, '阿里旺旺', 1, 0),
(34, 2, 34, '主页', 1, 0),
(35, 2, 35, '自我介绍', 1, 0),
(36, 2, 36, '兴趣爱好', 1, 0),
(37, 3, 1, '真实姓名', 1, 0),
(38, 3, 2, '昵称', 1, 1),
(39, 3, 3, '头像', 1, 1),
(40, 3, 4, 'QQ号', 1, 0),
(41, 3, 5, '手机号码', 1, 0),
(42, 3, 6, 'VIP级别', 1, 0),
(43, 3, 7, '性别', 1, 0),
(44, 3, 8, '出生生日', 1, 0),
(45, 3, 9, '星座', 1, 0),
(46, 3, 10, '生肖', 1, 0),
(47, 3, 11, '固定电话', 1, 0),
(48, 3, 12, '证件号码', 1, 0),
(49, 3, 13, '学号', 1, 0),
(50, 3, 14, '班级', 1, 0),
(51, 3, 15, '邮寄地址', 1, 0),
(52, 3, 16, '邮编', 1, 0),
(53, 3, 17, '国籍', 1, 0),
(54, 3, 18, '居住地址', 1, 0),
(55, 3, 19, '毕业学校', 1, 0),
(56, 3, 20, '公司', 1, 0),
(57, 3, 21, '学历', 1, 0),
(58, 3, 22, '职业', 1, 0),
(59, 3, 23, '职位', 1, 0),
(60, 3, 24, '年收入', 1, 0),
(61, 3, 25, '情感状态', 1, 0),
(62, 3, 26, ' 交友目的', 1, 0),
(63, 3, 27, '血型', 1, 0),
(64, 3, 28, '身高', 1, 0),
(65, 3, 29, '体重', 1, 0),
(66, 3, 30, '支付宝帐号', 1, 0),
(67, 3, 31, 'MSN', 1, 0),
(68, 3, 32, '电子邮箱', 1, 0),
(69, 3, 33, '阿里旺旺', 1, 0),
(70, 3, 34, '主页', 1, 0),
(71, 3, 35, '自我介绍', 1, 0),
(72, 3, 36, '兴趣爱好', 1, 0),
(73, 4, 1, '真实姓名', 1, 0),
(74, 4, 2, '昵称', 1, 1),
(75, 4, 3, '头像', 1, 1),
(76, 4, 4, 'QQ号', 1, 0),
(77, 4, 5, '手机号码', 1, 0),
(78, 4, 6, 'VIP级别', 1, 0),
(79, 4, 7, '性别', 1, 0),
(80, 4, 8, '出生生日', 1, 0),
(81, 4, 9, '星座', 1, 0),
(82, 4, 10, '生肖', 1, 0),
(83, 4, 11, '固定电话', 1, 0),
(84, 4, 12, '证件号码', 1, 0),
(85, 4, 13, '学号', 1, 0),
(86, 4, 14, '班级', 1, 0),
(87, 4, 15, '邮寄地址', 1, 0),
(88, 4, 16, '邮编', 1, 0),
(89, 4, 17, '国籍', 1, 0),
(90, 4, 18, '居住地址', 1, 0),
(91, 4, 19, '毕业学校', 1, 0),
(92, 4, 20, '公司', 1, 0),
(93, 4, 21, '学历', 1, 0),
(94, 4, 22, '职业', 1, 0),
(95, 4, 23, '职位', 1, 0),
(96, 4, 24, '年收入', 1, 0),
(97, 4, 25, '情感状态', 1, 0),
(98, 4, 26, ' 交友目的', 1, 0),
(99, 4, 27, '血型', 1, 0),
(100, 4, 28, '身高', 1, 0),
(101, 4, 29, '体重', 1, 0),
(102, 4, 30, '支付宝帐号', 1, 0),
(103, 4, 31, 'MSN', 1, 0),
(104, 4, 32, '电子邮箱', 1, 0),
(105, 4, 33, '阿里旺旺', 1, 0),
(106, 4, 34, '主页', 1, 0),
(107, 4, 35, '自我介绍', 1, 0),
(108, 4, 36, '兴趣爱好', 1, 0),
(109, 5, 1, '真实姓名', 1, 0),
(110, 5, 2, '昵称', 1, 1),
(111, 5, 3, '头像', 1, 1),
(112, 5, 4, 'QQ号', 1, 0),
(113, 5, 5, '手机号码', 1, 0),
(114, 5, 6, 'VIP级别', 1, 0),
(115, 5, 7, '性别', 1, 0),
(116, 5, 8, '出生生日', 1, 0),
(117, 5, 9, '星座', 1, 0),
(118, 5, 10, '生肖', 1, 0),
(119, 5, 11, '固定电话', 1, 0),
(120, 5, 12, '证件号码', 1, 0),
(121, 5, 13, '学号', 1, 0),
(122, 5, 14, '班级', 1, 0),
(123, 5, 15, '邮寄地址', 1, 0),
(124, 5, 16, '邮编', 1, 0),
(125, 5, 17, '国籍', 1, 0),
(126, 5, 18, '居住地址', 1, 0),
(127, 5, 19, '毕业学校', 1, 0),
(128, 5, 20, '公司', 1, 0),
(129, 5, 21, '学历', 1, 0),
(130, 5, 22, '职业', 1, 0),
(131, 5, 23, '职位', 1, 0),
(132, 5, 24, '年收入', 1, 0),
(133, 5, 25, '情感状态', 1, 0),
(134, 5, 26, ' 交友目的', 1, 0),
(135, 5, 27, '血型', 1, 0),
(136, 5, 28, '身高', 1, 0),
(137, 5, 29, '体重', 1, 0),
(138, 5, 30, '支付宝帐号', 1, 0),
(139, 5, 31, 'MSN', 1, 0),
(140, 5, 32, '电子邮箱', 1, 0),
(141, 5, 33, '阿里旺旺', 1, 0),
(142, 5, 34, '主页', 1, 0),
(143, 5, 35, '自我介绍', 1, 0),
(144, 5, 36, '兴趣爱好', 1, 0),
(145, 6, 1, '真实姓名', 1, 0),
(146, 6, 2, '昵称', 1, 1),
(147, 6, 3, '头像', 1, 1),
(148, 6, 4, 'QQ号', 1, 0),
(149, 6, 5, '手机号码', 1, 0),
(150, 6, 6, 'VIP级别', 1, 0),
(151, 6, 7, '性别', 1, 0),
(152, 6, 8, '出生生日', 1, 0),
(153, 6, 9, '星座', 1, 0),
(154, 6, 10, '生肖', 1, 0),
(155, 6, 11, '固定电话', 1, 0),
(156, 6, 12, '证件号码', 1, 0),
(157, 6, 13, '学号', 1, 0),
(158, 6, 14, '班级', 1, 0),
(159, 6, 15, '邮寄地址', 1, 0),
(160, 6, 16, '邮编', 1, 0),
(161, 6, 17, '国籍', 1, 0),
(162, 6, 18, '居住地址', 1, 0),
(163, 6, 19, '毕业学校', 1, 0),
(164, 6, 20, '公司', 1, 0),
(165, 6, 21, '学历', 1, 0),
(166, 6, 22, '职业', 1, 0),
(167, 6, 23, '职位', 1, 0),
(168, 6, 24, '年收入', 1, 0),
(169, 6, 25, '情感状态', 1, 0),
(170, 6, 26, ' 交友目的', 1, 0),
(171, 6, 27, '血型', 1, 0),
(172, 6, 28, '身高', 1, 0),
(173, 6, 29, '体重', 1, 0),
(174, 6, 30, '支付宝帐号', 1, 0),
(175, 6, 31, 'MSN', 1, 0),
(176, 6, 32, '电子邮箱', 1, 0),
(177, 6, 33, '阿里旺旺', 1, 0),
(178, 6, 34, '主页', 1, 0),
(179, 6, 35, '自我介绍', 1, 0),
(180, 6, 36, '兴趣爱好', 1, 0),
(181, 7, 1, '真实姓名', 1, 0),
(182, 7, 2, '昵称', 1, 1),
(183, 7, 3, '头像', 1, 1),
(184, 7, 4, 'QQ号', 1, 0),
(185, 7, 5, '手机号码', 1, 0),
(186, 7, 6, 'VIP级别', 1, 0),
(187, 7, 7, '性别', 1, 0),
(188, 7, 8, '出生生日', 1, 0),
(189, 7, 9, '星座', 1, 0),
(190, 7, 10, '生肖', 1, 0),
(191, 7, 11, '固定电话', 1, 0),
(192, 7, 12, '证件号码', 1, 0),
(193, 7, 13, '学号', 1, 0),
(194, 7, 14, '班级', 1, 0),
(195, 7, 15, '邮寄地址', 1, 0),
(196, 7, 16, '邮编', 1, 0),
(197, 7, 17, '国籍', 1, 0),
(198, 7, 18, '居住地址', 1, 0),
(199, 7, 19, '毕业学校', 1, 0),
(200, 7, 20, '公司', 1, 0),
(201, 7, 21, '学历', 1, 0),
(202, 7, 22, '职业', 1, 0),
(203, 7, 23, '职位', 1, 0),
(204, 7, 24, '年收入', 1, 0),
(205, 7, 25, '情感状态', 1, 0),
(206, 7, 26, ' 交友目的', 1, 0),
(207, 7, 27, '血型', 1, 0),
(208, 7, 28, '身高', 1, 0),
(209, 7, 29, '体重', 1, 0),
(210, 7, 30, '支付宝帐号', 1, 0),
(211, 7, 31, 'MSN', 1, 0),
(212, 7, 32, '电子邮箱', 1, 0),
(213, 7, 33, '阿里旺旺', 1, 0),
(214, 7, 34, '主页', 1, 0),
(215, 7, 35, '自我介绍', 1, 0),
(216, 7, 36, '兴趣爱好', 1, 0),
(217, 8, 1, '真实姓名', 1, 0),
(218, 8, 2, '昵称', 1, 1),
(219, 8, 3, '头像', 1, 1),
(220, 8, 4, 'QQ号', 1, 0),
(221, 8, 5, '手机号码', 1, 0),
(222, 8, 6, 'VIP级别', 1, 0),
(223, 8, 7, '性别', 1, 0),
(224, 8, 8, '出生生日', 1, 0),
(225, 8, 9, '星座', 1, 0),
(226, 8, 10, '生肖', 1, 0),
(227, 8, 11, '固定电话', 1, 0),
(228, 8, 12, '证件号码', 1, 0),
(229, 8, 13, '学号', 1, 0),
(230, 8, 14, '班级', 1, 0),
(231, 8, 15, '邮寄地址', 1, 0),
(232, 8, 16, '邮编', 1, 0),
(233, 8, 17, '国籍', 1, 0),
(234, 8, 18, '居住地址', 1, 0),
(235, 8, 19, '毕业学校', 1, 0),
(236, 8, 20, '公司', 1, 0),
(237, 8, 21, '学历', 1, 0),
(238, 8, 22, '职业', 1, 0),
(239, 8, 23, '职位', 1, 0),
(240, 8, 24, '年收入', 1, 0),
(241, 8, 25, '情感状态', 1, 0),
(242, 8, 26, ' 交友目的', 1, 0),
(243, 8, 27, '血型', 1, 0),
(244, 8, 28, '身高', 1, 0),
(245, 8, 29, '体重', 1, 0),
(246, 8, 30, '支付宝帐号', 1, 0),
(247, 8, 31, 'MSN', 1, 0),
(248, 8, 32, '电子邮箱', 1, 0),
(249, 8, 33, '阿里旺旺', 1, 0),
(250, 8, 34, '主页', 1, 0),
(251, 8, 35, '自我介绍', 1, 0),
(252, 8, 36, '兴趣爱好', 1, 0),
(253, 9, 1, '真实姓名', 1, 0),
(254, 9, 2, '昵称', 1, 1),
(255, 9, 3, '头像', 1, 1),
(256, 9, 4, 'QQ号', 1, 0),
(257, 9, 5, '手机号码', 1, 0),
(258, 9, 6, 'VIP级别', 1, 0),
(259, 9, 7, '性别', 1, 0),
(260, 9, 8, '出生生日', 1, 0),
(261, 9, 9, '星座', 1, 0),
(262, 9, 10, '生肖', 1, 0),
(263, 9, 11, '固定电话', 1, 0),
(264, 9, 12, '证件号码', 1, 0),
(265, 9, 13, '学号', 1, 0),
(266, 9, 14, '班级', 1, 0),
(267, 9, 15, '邮寄地址', 1, 0),
(268, 9, 16, '邮编', 1, 0),
(269, 9, 17, '国籍', 1, 0),
(270, 9, 18, '居住地址', 1, 0),
(271, 9, 19, '毕业学校', 1, 0),
(272, 9, 20, '公司', 1, 0),
(273, 9, 21, '学历', 1, 0),
(274, 9, 22, '职业', 1, 0),
(275, 9, 23, '职位', 1, 0),
(276, 9, 24, '年收入', 1, 0),
(277, 9, 25, '情感状态', 1, 0),
(278, 9, 26, ' 交友目的', 1, 0),
(279, 9, 27, '血型', 1, 0),
(280, 9, 28, '身高', 1, 0),
(281, 9, 29, '体重', 1, 0),
(282, 9, 30, '支付宝帐号', 1, 0),
(283, 9, 31, 'MSN', 1, 0),
(284, 9, 32, '电子邮箱', 1, 0),
(285, 9, 33, '阿里旺旺', 1, 0),
(286, 9, 34, '主页', 1, 0),
(287, 9, 35, '自我介绍', 1, 0),
(288, 9, 36, '兴趣爱好', 1, 0),
(289, 10, 1, '真实姓名', 1, 0),
(290, 10, 2, '昵称', 1, 1),
(291, 10, 3, '头像', 1, 1),
(292, 10, 4, 'QQ号', 1, 0),
(293, 10, 5, '手机号码', 1, 0),
(294, 10, 6, 'VIP级别', 1, 0),
(295, 10, 7, '性别', 1, 0),
(296, 10, 8, '出生生日', 1, 0),
(297, 10, 9, '星座', 1, 0),
(298, 10, 10, '生肖', 1, 0),
(299, 10, 11, '固定电话', 1, 0),
(300, 10, 12, '证件号码', 1, 0),
(301, 10, 13, '学号', 1, 0),
(302, 10, 14, '班级', 1, 0),
(303, 10, 15, '邮寄地址', 1, 0),
(304, 10, 16, '邮编', 1, 0),
(305, 10, 17, '国籍', 1, 0),
(306, 10, 18, '居住地址', 1, 0),
(307, 10, 19, '毕业学校', 1, 0),
(308, 10, 20, '公司', 1, 0),
(309, 10, 21, '学历', 1, 0),
(310, 10, 22, '职业', 1, 0),
(311, 10, 23, '职位', 1, 0),
(312, 10, 24, '年收入', 1, 0),
(313, 10, 25, '情感状态', 1, 0),
(314, 10, 26, ' 交友目的', 1, 0),
(315, 10, 27, '血型', 1, 0),
(316, 10, 28, '身高', 1, 0),
(317, 10, 29, '体重', 1, 0),
(318, 10, 30, '支付宝帐号', 1, 0),
(319, 10, 31, 'MSN', 1, 0),
(320, 10, 32, '电子邮箱', 1, 0),
(321, 10, 33, '阿里旺旺', 1, 0),
(322, 10, 34, '主页', 1, 0),
(323, 10, 35, '自我介绍', 1, 0),
(324, 10, 36, '兴趣爱好', 1, 0),
(325, 11, 1, '真实姓名', 1, 0),
(326, 11, 2, '昵称', 1, 1),
(327, 11, 3, '头像', 1, 1),
(328, 11, 4, 'QQ号', 1, 0),
(329, 11, 5, '手机号码', 1, 0),
(330, 11, 6, 'VIP级别', 1, 0),
(331, 11, 7, '性别', 1, 0),
(332, 11, 8, '出生生日', 1, 0),
(333, 11, 9, '星座', 1, 0),
(334, 11, 10, '生肖', 1, 0),
(335, 11, 11, '固定电话', 1, 0),
(336, 11, 12, '证件号码', 1, 0),
(337, 11, 13, '学号', 1, 0),
(338, 11, 14, '班级', 1, 0),
(339, 11, 15, '邮寄地址', 1, 0),
(340, 11, 16, '邮编', 1, 0),
(341, 11, 17, '国籍', 1, 0),
(342, 11, 18, '居住地址', 1, 0),
(343, 11, 19, '毕业学校', 1, 0),
(344, 11, 20, '公司', 1, 0),
(345, 11, 21, '学历', 1, 0),
(346, 11, 22, '职业', 1, 0),
(347, 11, 23, '职位', 1, 0),
(348, 11, 24, '年收入', 1, 0),
(349, 11, 25, '情感状态', 1, 0),
(350, 11, 26, ' 交友目的', 1, 0),
(351, 11, 27, '血型', 1, 0),
(352, 11, 28, '身高', 1, 0),
(353, 11, 29, '体重', 1, 0),
(354, 11, 30, '支付宝帐号', 1, 0),
(355, 11, 31, 'MSN', 1, 0),
(356, 11, 32, '电子邮箱', 1, 0),
(357, 11, 33, '阿里旺旺', 1, 0),
(358, 11, 34, '主页', 1, 0),
(359, 11, 35, '自我介绍', 1, 0),
(360, 11, 36, '兴趣爱好', 1, 0),
(361, 12, 1, '真实姓名', 1, 0),
(362, 12, 2, '昵称', 1, 1),
(363, 12, 3, '头像', 1, 1),
(364, 12, 4, 'QQ号', 1, 0),
(365, 12, 5, '手机号码', 1, 0),
(366, 12, 6, 'VIP级别', 1, 0),
(367, 12, 7, '性别', 1, 0),
(368, 12, 8, '出生生日', 1, 0),
(369, 12, 9, '星座', 1, 0),
(370, 12, 10, '生肖', 1, 0),
(371, 12, 11, '固定电话', 1, 0),
(372, 12, 12, '证件号码', 1, 0),
(373, 12, 13, '学号', 1, 0),
(374, 12, 14, '班级', 1, 0),
(375, 12, 15, '邮寄地址', 1, 0),
(376, 12, 16, '邮编', 1, 0),
(377, 12, 17, '国籍', 1, 0),
(378, 12, 18, '居住地址', 1, 0),
(379, 12, 19, '毕业学校', 1, 0),
(380, 12, 20, '公司', 1, 0),
(381, 12, 21, '学历', 1, 0),
(382, 12, 22, '职业', 1, 0),
(383, 12, 23, '职位', 1, 0),
(384, 12, 24, '年收入', 1, 0),
(385, 12, 25, '情感状态', 1, 0),
(386, 12, 26, ' 交友目的', 1, 0),
(387, 12, 27, '血型', 1, 0),
(388, 12, 28, '身高', 1, 0),
(389, 12, 29, '体重', 1, 0),
(390, 12, 30, '支付宝帐号', 1, 0),
(391, 12, 31, 'MSN', 1, 0),
(392, 12, 32, '电子邮箱', 1, 0),
(393, 12, 33, '阿里旺旺', 1, 0),
(394, 12, 34, '主页', 1, 0),
(395, 12, 35, '自我介绍', 1, 0),
(396, 12, 36, '兴趣爱好', 1, 0),
(397, 13, 1, '真实姓名', 1, 0),
(398, 13, 2, '昵称', 1, 1),
(399, 13, 3, '头像', 1, 1),
(400, 13, 4, 'QQ号', 1, 0),
(401, 13, 5, '手机号码', 1, 0),
(402, 13, 6, 'VIP级别', 1, 0),
(403, 13, 7, '性别', 1, 0),
(404, 13, 8, '出生生日', 1, 0),
(405, 13, 9, '星座', 1, 0),
(406, 13, 10, '生肖', 1, 0),
(407, 13, 11, '固定电话', 1, 0),
(408, 13, 12, '证件号码', 1, 0),
(409, 13, 13, '学号', 1, 0),
(410, 13, 14, '班级', 1, 0),
(411, 13, 15, '邮寄地址', 1, 0),
(412, 13, 16, '邮编', 1, 0),
(413, 13, 17, '国籍', 1, 0),
(414, 13, 18, '居住地址', 1, 0),
(415, 13, 19, '毕业学校', 1, 0),
(416, 13, 20, '公司', 1, 0),
(417, 13, 21, '学历', 1, 0),
(418, 13, 22, '职业', 1, 0),
(419, 13, 23, '职位', 1, 0),
(420, 13, 24, '年收入', 1, 0),
(421, 13, 25, '情感状态', 1, 0),
(422, 13, 26, ' 交友目的', 1, 0),
(423, 13, 27, '血型', 1, 0),
(424, 13, 28, '身高', 1, 0),
(425, 13, 29, '体重', 1, 0),
(426, 13, 30, '支付宝帐号', 1, 0),
(427, 13, 31, 'MSN', 1, 0),
(428, 13, 32, '电子邮箱', 1, 0),
(429, 13, 33, '阿里旺旺', 1, 0),
(430, 13, 34, '主页', 1, 0),
(431, 13, 35, '自我介绍', 1, 0),
(432, 13, 36, '兴趣爱好', 1, 0),
(433, 14, 1, '真实姓名', 1, 0),
(434, 14, 2, '昵称', 1, 1),
(435, 14, 3, '头像', 1, 1),
(436, 14, 4, 'QQ号', 1, 0),
(437, 14, 5, '手机号码', 1, 0),
(438, 14, 6, 'VIP级别', 1, 0),
(439, 14, 7, '性别', 1, 0),
(440, 14, 8, '出生生日', 1, 0),
(441, 14, 9, '星座', 1, 0),
(442, 14, 10, '生肖', 1, 0),
(443, 14, 11, '固定电话', 1, 0),
(444, 14, 12, '证件号码', 1, 0),
(445, 14, 13, '学号', 1, 0),
(446, 14, 14, '班级', 1, 0),
(447, 14, 15, '邮寄地址', 1, 0),
(448, 14, 16, '邮编', 1, 0),
(449, 14, 17, '国籍', 1, 0),
(450, 14, 18, '居住地址', 1, 0),
(451, 14, 19, '毕业学校', 1, 0),
(452, 14, 20, '公司', 1, 0),
(453, 14, 21, '学历', 1, 0),
(454, 14, 22, '职业', 1, 0),
(455, 14, 23, '职位', 1, 0),
(456, 14, 24, '年收入', 1, 0),
(457, 14, 25, '情感状态', 1, 0),
(458, 14, 26, ' 交友目的', 1, 0),
(459, 14, 27, '血型', 1, 0),
(460, 14, 28, '身高', 1, 0),
(461, 14, 29, '体重', 1, 0),
(462, 14, 30, '支付宝帐号', 1, 0),
(463, 14, 31, 'MSN', 1, 0),
(464, 14, 32, '电子邮箱', 1, 0),
(465, 14, 33, '阿里旺旺', 1, 0),
(466, 14, 34, '主页', 1, 0),
(467, 14, 35, '自我介绍', 1, 0),
(468, 14, 36, '兴趣爱好', 1, 0),
(469, 15, 1, '真实姓名', 1, 0),
(470, 15, 2, '昵称', 1, 1),
(471, 15, 3, '头像', 1, 1),
(472, 15, 4, 'QQ号', 1, 0),
(473, 15, 5, '手机号码', 1, 0),
(474, 15, 6, 'VIP级别', 1, 0),
(475, 15, 7, '性别', 1, 0),
(476, 15, 8, '出生生日', 1, 0),
(477, 15, 9, '星座', 1, 0),
(478, 15, 10, '生肖', 1, 0),
(479, 15, 11, '固定电话', 1, 0),
(480, 15, 12, '证件号码', 1, 0),
(481, 15, 13, '学号', 1, 0),
(482, 15, 14, '班级', 1, 0),
(483, 15, 15, '邮寄地址', 1, 0),
(484, 15, 16, '邮编', 1, 0),
(485, 15, 17, '国籍', 1, 0),
(486, 15, 18, '居住地址', 1, 0),
(487, 15, 19, '毕业学校', 1, 0),
(488, 15, 20, '公司', 1, 0),
(489, 15, 21, '学历', 1, 0),
(490, 15, 22, '职业', 1, 0),
(491, 15, 23, '职位', 1, 0),
(492, 15, 24, '年收入', 1, 0),
(493, 15, 25, '情感状态', 1, 0),
(494, 15, 26, ' 交友目的', 1, 0),
(495, 15, 27, '血型', 1, 0),
(496, 15, 28, '身高', 1, 0),
(497, 15, 29, '体重', 1, 0),
(498, 15, 30, '支付宝帐号', 1, 0),
(499, 15, 31, 'MSN', 1, 0),
(500, 15, 32, '电子邮箱', 1, 0),
(501, 15, 33, '阿里旺旺', 1, 0),
(502, 15, 34, '主页', 1, 0),
(503, 15, 35, '自我介绍', 1, 0),
(504, 15, 36, '兴趣爱好', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_member_property`
--

CREATE TABLE IF NOT EXISTS `ims_mc_member_property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `property` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_oauth_fans`
--

CREATE TABLE IF NOT EXISTS `ims_mc_oauth_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oauth_openid` varchar(50) NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_oauthopenid_acid` (`oauth_openid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_menu_event`
--

CREATE TABLE IF NOT EXISTS `ims_menu_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `picmd5` varchar(32) NOT NULL,
  `openid` varchar(128) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `picmd5` (`picmd5`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `ims_menu_event`
--

INSERT INTO `ims_menu_event` (`id`, `uniacid`, `keyword`, `type`, `picmd5`, `openid`, `createtime`) VALUES
(1, 6, '123', 'pic_sysphoto', '479e2616d01e034a8806b083f9e4f312', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', 1510556475);

-- --------------------------------------------------------

--
-- 表的结构 `ims_mobilenumber`
--

CREATE TABLE IF NOT EXISTS `ims_mobilenumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateline` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_modules`
--

CREATE TABLE IF NOT EXISTS `ims_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL,
  `version` varchar(15) NOT NULL,
  `ability` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `settings` tinyint(1) NOT NULL DEFAULT '0',
  `subscribes` varchar(500) NOT NULL DEFAULT '',
  `handles` varchar(500) NOT NULL DEFAULT '',
  `isrulefields` tinyint(1) NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issolution` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `target` int(10) unsigned NOT NULL DEFAULT '0',
  `iscard` tinyint(3) unsigned NOT NULL,
  `permissions` varchar(5000) NOT NULL,
  `price` decimal(10,2) unsigned DEFAULT '0.00',
  `isbuy` int(10) unsigned NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `wxapp_support` tinyint(1) NOT NULL DEFAULT '1',
  `app_support` tinyint(1) NOT NULL DEFAULT '1',
  `template_id` int(10) unsigned NOT NULL,
  `item_list` text NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `idx_name` (`name`),
  KEY `idx_issystem` (`issystem`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `ims_modules`
--

INSERT INTO `ims_modules` (`mid`, `name`, `type`, `title`, `version`, `ability`, `description`, `author`, `url`, `settings`, `subscribes`, `handles`, `isrulefields`, `issystem`, `issolution`, `target`, `iscard`, `permissions`, `price`, `isbuy`, `title_initial`, `wxapp_support`, `app_support`, `template_id`, `item_list`) VALUES
(1, 'basic', 'system', '基本文字回复', '1.0', '和您进行简单对话', '一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.', 'Weizancms Team', 'http://www.weizancms.com/', 0, '', '', 1, 1, 0, 0, 0, '', '0.00', 0, '', 1, 2, 0, ''),
(2, 'news', 'system', '基本混合图文回复', '1.0', '为你提供生动的图文资讯', '一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.', 'Weizancms Team', 'http://www.weizancms.com/', 0, '', '', 1, 1, 0, 0, 0, '', '0.00', 0, '', 1, 2, 0, ''),
(3, 'music', 'system', '基本音乐回复', '1.0', '提供语音、音乐等音频类回复', '在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。', 'Weizancms Team', 'http://www.weizancms.com/', 0, '', '', 1, 1, 0, 0, 0, '', '0.00', 0, '', 1, 2, 0, ''),
(4, 'userapi', 'system', '自定义接口回复', '1.1', '更方便的第三方接口设置', '自定义接口又称第三方接口，可以让开发者更方便的接入微赞系统，高效的与微信公众平台进行对接整合。', 'Weizancms Team', 'http://www.weizancms.com/', 0, '', '', 1, 1, 0, 0, 0, '', '0.00', 0, '', 1, 2, 0, ''),
(5, 'recharge', 'system', '会员中心充值模块', '1.0', '提供会员充值功能', '', 'Weizancms Team', 'http://www.weizancms.com/', 0, '', '', 0, 1, 0, 0, 0, '', '0.00', 0, '', 1, 2, 0, ''),
(6, 'custom', 'system', '多客服转接', '1.0.0', '用来接入腾讯的多客服系统', '', 'Weizancms Team', 'http://bbs.weizancms.com', 0, 'a:0:{}', 'a:6:{i:0;s:5:"image";i:1;s:5:"voice";i:2;s:5:"video";i:3;s:8:"location";i:4;s:4:"link";i:5;s:4:"text";}', 1, 1, 0, 0, 0, '', '0.00', 0, '', 1, 2, 0, ''),
(7, 'images', 'system', '基本图片回复', '1.0', '提供图片回复', '在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。', 'Weizancms Team', 'http://www.weizancms.com/', 0, '', '', 1, 1, 0, 0, 0, '', '0.00', 0, '', 1, 2, 0, ''),
(8, 'video', 'system', '基本视频回复', '1.0', '提供图片回复', '在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。', 'Weizancms Team', 'http://www.weizancms.com/', 0, '', '', 1, 1, 0, 0, 0, '', '0.00', 0, '', 1, 2, 0, ''),
(9, 'voice', 'system', '基本语音回复', '1.0', '提供语音回复', '在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。', 'Weizancms Team', 'http://www.weizancms.com/', 0, '', '', 1, 1, 0, 0, 0, '', '0.00', 0, '', 1, 2, 0, ''),
(10, 'chats', 'system', '发送客服消息', '1.0', '公众号可以在粉丝最后发送消息的48小时内无限制发送消息', '', 'Weizancms Team', 'http://www.weizancms.com/', 0, '', '', 0, 1, 0, 0, 0, '', '0.00', 0, '', 1, 2, 0, ''),
(11, 'wxcard', 'system', '微信卡券回复', '1.0', '微信卡券回复', '微信卡券回复', 'Weizancms Team', 'http://www.weizancms.com/', 0, '', '', 1, 1, 0, 0, 0, '', '0.00', 0, '', 1, 2, 0, ''),
(14, 'we7_coupon', 'business', '系统卡券', '3.8', '微赞卡券', '微赞卡券', '微赞团队', '', 2, 'a:0:{}', 'a:0:{}', 0, 1, 0, 0, 0, 'a:0:{}', '0.00', 0, 'X', 1, 2, 0, ''),
(15, 'weisrc_dish', 'business', '码上点餐外卖餐饮系统', '6.4.2', '码上点餐', '码上点餐', '淘宝大众乐科技', 'https://www.we7.cc', 0, 'a:0:{}', 'a:3:{i:0;s:9:"subscribe";i:1;s:2:"qr";i:2;s:4:"text";}', 0, 0, 0, 0, 0, 'a:0:{}', '0.00', 0, '', 1, 2, 0, ''),
(19, 'kim_financial', 'customer', '财务中心', '6.0.1', '用于会员在线充值余额、余额购买套餐，购买短信条数服务', '用于会员在线充值余额、余额购买套餐，购买短信条数服务', 'XXX', 'XXX', 0, 'a:13:{i:0;s:4:"text";i:1;s:5:"image";i:2;s:5:"voice";i:3;s:5:"video";i:4;s:8:"location";i:5;s:4:"link";i:6;s:9:"subscribe";i:7;s:11:"unsubscribe";i:8;s:2:"qr";i:9;s:5:"trace";i:10;s:5:"click";i:11;s:4:"view";i:12;s:5:"enter";}', 'a:1:{i:0;s:4:"text";}', 0, 0, 0, 0, 0, 'N;', '0.00', 0, '', 1, 2, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_modules_bindings`
--

CREATE TABLE IF NOT EXISTS `ims_modules_bindings` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) NOT NULL,
  `entry` varchar(10) NOT NULL DEFAULT '',
  `call` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL,
  `do` varchar(30) NOT NULL,
  `state` varchar(200) NOT NULL,
  `direct` int(11) NOT NULL DEFAULT '0',
  `url` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `displayorder` tinyint(255) unsigned NOT NULL,
  PRIMARY KEY (`eid`),
  KEY `idx_module` (`module`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=792 ;

--
-- 转存表中的数据 `ims_modules_bindings`
--

INSERT INTO `ims_modules_bindings` (`eid`, `module`, `entry`, `call`, `title`, `do`, `state`, `direct`, `url`, `icon`, `displayorder`) VALUES
(13, 'we7_coupon', 'cover', '', '会员卡入口设置', 'card', '', 0, '', '', 0),
(14, 'we7_coupon', 'cover', '', '收银台入口设置', 'clerk', '', 0, '', '', 0),
(15, 'we7_coupon', 'menu', '', '会员卡设置', 'membercard', '', 0, '', '', 0),
(16, 'we7_coupon', 'menu', '', '会员卡管理', 'cardmanage', '', 0, '', '', 0),
(17, 'we7_coupon', 'menu', '', '会员属性', 'memberproperty', '', 0, '', '', 0),
(18, 'we7_coupon', 'menu', '', '优惠券管理', 'couponmanage', '', 0, '', '', 0),
(19, 'we7_coupon', 'menu', '', '优惠券核销', 'couponconsume', '', 0, '', '', 0),
(20, 'we7_coupon', 'menu', '', '优惠券派发', 'couponmarket', '', 0, '', '', 0),
(21, 'we7_coupon', 'menu', '', '兑换优惠券', 'couponexchange', '', 0, '', '', 0),
(22, 'we7_coupon', 'menu', '', '兑换真实物品', 'goodsexchange', '', 0, '', '', 0),
(23, 'we7_coupon', 'menu', '', '门店管理', 'storelist', '', 0, '', '', 0),
(24, 'we7_coupon', 'menu', '', '店员管理', 'clerklist', '', 0, '', '', 0),
(25, 'we7_coupon', 'menu', '', '门店收银台', 'paycenter', '', 0, '', '', 0),
(26, 'we7_coupon', 'menu', '', '工作台菜单设置', 'clerkdeskmenu', '', 0, '', '', 0),
(27, 'we7_coupon', 'menu', '', '签到管理', 'signmanage', '', 0, '', '', 0),
(28, 'we7_coupon', 'menu', '', '通知管理', 'noticemanage', '', 0, '', '', 0),
(29, 'we7_coupon', 'menu', '', '会员积分统计', 'statcredit1', '', 0, '', '', 0),
(30, 'we7_coupon', 'menu', '', '会员余额统计', 'statcredit2', '', 0, '', '', 0),
(31, 'we7_coupon', 'menu', '', '会员现金消费统计', 'statcash', '', 0, '', '', 0),
(32, 'we7_coupon', 'menu', '', '会员卡统计', 'statcard', '', 0, '', '', 0),
(33, 'we7_coupon', 'menu', '', '收银台收款统计', 'statpaycenter', '', 0, '', '', 0),
(34, 'we7_coupon', 'menu', '', '微信卡券回复', 'wxcardreply', '', 0, '', '', 0),
(35, 'we7_coupon', 'profile', '', '会员卡', 'card', '', 0, '', '', 0),
(36, 'we7_coupon', 'profile', '', '兑换商城', 'activity', '', 0, '', '', 0),
(37, 'weisrc_dish', 'cover', '', '我邀请的好友入口', 'mymemberlist', '', 0, '', '', 0),
(38, 'weisrc_dish', 'cover', '', '我的订单入口', 'orderlist', '', 0, '', '', 0),
(39, 'weisrc_dish', 'cover', '', '用户中心入口', 'usercenter', '', 0, '', '', 0),
(40, 'weisrc_dish', 'cover', '', '门店列表入口', 'waprestList', '', 0, '', '', 0),
(41, 'weisrc_dish', 'cover', '', '首页入口', 'index', '', 0, '', '', 0),
(42, 'weisrc_dish', 'menu', '', '门店类型', 'type', '', 0, '', '', 0),
(44, 'weisrc_dish', 'menu', '', '订单管理', 'allorder', '', 0, '', '', 0),
(45, 'weisrc_dish', 'menu', '', '门店管理', 'stores', '', 0, '', '', 0),
(46, 'weisrc_dish', 'menu', '', '顾客管理', 'allfans', '', 0, '', '', 0),
(47, 'weisrc_dish', 'menu', '', '区域管理', 'area', '', 0, '', '', 0),
(48, 'weisrc_dish', 'menu', '', '账号管理', 'account', '', 0, '', '', 0),
(49, 'weisrc_dish', 'menu', '', '模版管理', 'template', '', 0, '', '', 0),
(50, 'weisrc_dish', 'menu', '', '系统设置', 'setting', '', 0, '', '', 0),
(51, 'weisrc_dish', 'home', '', '首页入口', 'index', '', 0, '', '', 0),
(52, 'weisrc_dish', 'home', '', '门店列表', 'waprestList', '', 0, '', '', 0),
(53, 'weisrc_dish', 'home', '', '我的订单', 'orderlist', '', 0, '', '', 0),
(54, 'weisrc_dish', 'home', '', '我邀请的好友入口', 'mymemberlist', '', 0, '', '', 0),
(791, 'kim_financial', 'menu', '', '财务中心', 'FinancialCenter', '', 0, '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_modules_plugin`
--

CREATE TABLE IF NOT EXISTS `ims_modules_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `main_module` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `main_module` (`main_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_modules_recycle`
--

CREATE TABLE IF NOT EXISTS `ims_modules_recycle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `modulename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `modulename` (`modulename`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `ims_modules_recycle`
--

INSERT INTO `ims_modules_recycle` (`id`, `modulename`) VALUES
(1, 'weisrc_businesscenter');

-- --------------------------------------------------------

--
-- 表的结构 `ims_music_reply`
--

CREATE TABLE IF NOT EXISTS `ims_music_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(300) NOT NULL DEFAULT '',
  `hqurl` varchar(300) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_news_reply`
--

CREATE TABLE IF NOT EXISTS `ims_news_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `incontent` tinyint(1) NOT NULL DEFAULT '0',
  `author` varchar(64) NOT NULL,
  `createtime` int(10) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `media_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_paycenter_order`
--

CREATE TABLE IF NOT EXISTS `ims_paycenter_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `uniontid` varchar(40) NOT NULL,
  `transaction_id` varchar(40) NOT NULL,
  `type` varchar(10) NOT NULL,
  `trade_type` varchar(10) NOT NULL,
  `body` varchar(255) NOT NULL,
  `fee` varchar(15) NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit1_fee` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `cash` decimal(10,2) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  `auth_code` varchar(30) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `follow` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `credit_status` tinyint(3) unsigned NOT NULL,
  `paytime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_printep`
--

CREATE TABLE IF NOT EXISTS `ims_printep` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `tepid` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `module` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `defaul` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_printer`
--

CREATE TABLE IF NOT EXISTS `ims_printer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `isdefault` tinyint(2) NOT NULL DEFAULT '0',
  `token` varchar(20) NOT NULL,
  `apikey` varchar(50) NOT NULL,
  `dtuid` varchar(50) NOT NULL,
  `imei` varchar(100) NOT NULL,
  `top` varchar(500) NOT NULL,
  `bottom` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_profile_fields`
--

CREATE TABLE IF NOT EXISTS `ims_profile_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` smallint(6) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `unchangeable` tinyint(1) NOT NULL DEFAULT '0',
  `showinregister` tinyint(1) NOT NULL DEFAULT '0',
  `field_length` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- 转存表中的数据 `ims_profile_fields`
--

INSERT INTO `ims_profile_fields` (`id`, `field`, `available`, `title`, `description`, `displayorder`, `required`, `unchangeable`, `showinregister`, `field_length`) VALUES
(1, 'realname', 1, '真实姓名', '', 0, 1, 1, 1, 0),
(2, 'nickname', 1, '昵称', '', 1, 1, 0, 1, 0),
(3, 'avatar', 1, '头像', '', 1, 0, 0, 0, 0),
(4, 'qq', 1, 'QQ号', '', 0, 0, 0, 1, 0),
(5, 'mobile', 1, '手机号码', '', 0, 0, 0, 0, 0),
(6, 'vip', 1, 'VIP级别', '', 0, 0, 0, 0, 0),
(7, 'gender', 1, '性别', '', 0, 0, 0, 0, 0),
(8, 'birthyear', 1, '出生生日', '', 0, 0, 0, 0, 0),
(9, 'constellation', 1, '星座', '', 0, 0, 0, 0, 0),
(10, 'zodiac', 1, '生肖', '', 0, 0, 0, 0, 0),
(11, 'telephone', 1, '固定电话', '', 0, 0, 0, 0, 0),
(12, 'idcard', 1, '证件号码', '', 0, 0, 0, 0, 0),
(13, 'studentid', 1, '学号', '', 0, 0, 0, 0, 0),
(14, 'grade', 1, '班级', '', 0, 0, 0, 0, 0),
(15, 'address', 1, '邮寄地址', '', 0, 0, 0, 0, 0),
(16, 'zipcode', 1, '邮编', '', 0, 0, 0, 0, 0),
(17, 'nationality', 1, '国籍', '', 0, 0, 0, 0, 0),
(18, 'resideprovince', 1, '居住地址', '', 0, 0, 0, 0, 0),
(19, 'graduateschool', 1, '毕业学校', '', 0, 0, 0, 0, 0),
(20, 'company', 1, '公司', '', 0, 0, 0, 0, 0),
(21, 'education', 1, '学历', '', 0, 0, 0, 0, 0),
(22, 'occupation', 1, '职业', '', 0, 0, 0, 0, 0),
(23, 'position', 1, '职位', '', 0, 0, 0, 0, 0),
(24, 'revenue', 1, '年收入', '', 0, 0, 0, 0, 0),
(25, 'affectivestatus', 1, '情感状态', '', 0, 0, 0, 0, 0),
(26, 'lookingfor', 1, ' 交友目的', '', 0, 0, 0, 0, 0),
(27, 'bloodtype', 1, '血型', '', 0, 0, 0, 0, 0),
(28, 'height', 1, '身高', '', 0, 0, 0, 0, 0),
(29, 'weight', 1, '体重', '', 0, 0, 0, 0, 0),
(30, 'alipay', 1, '支付宝帐号', '', 0, 0, 0, 0, 0),
(31, 'msn', 1, 'MSN', '', 0, 0, 0, 0, 0),
(32, 'email', 1, '电子邮箱', '', 0, 0, 0, 0, 0),
(33, 'taobao', 1, '阿里旺旺', '', 0, 0, 0, 0, 0),
(34, 'site', 1, '主页', '', 0, 0, 0, 0, 0),
(35, 'bio', 1, '自我介绍', '', 0, 0, 0, 0, 0),
(36, 'interest', 1, '兴趣爱好', '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_qrcode`
--

CREATE TABLE IF NOT EXISTS `ims_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL DEFAULT '0',
  `qrcid` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `keyword` varchar(100) NOT NULL,
  `model` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ticket` varchar(250) NOT NULL DEFAULT '',
  `expire` int(10) unsigned NOT NULL DEFAULT '0',
  `subnum` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  `extra` int(10) unsigned NOT NULL,
  `url` varchar(256) NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_qrcid` (`qrcid`),
  KEY `uniacid` (`uniacid`),
  KEY `ticket` (`ticket`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_qrcode_stat`
--

CREATE TABLE IF NOT EXISTS `ims_qrcode_stat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `acid` int(10) unsigned NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `qrcid` bigint(20) unsigned NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `scene_str` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_rule`
--

CREATE TABLE IF NOT EXISTS `ims_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `module` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `containtype` varchar(100) NOT NULL,
  `reply_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `ims_rule`
--

INSERT INTO `ims_rule` (`id`, `uniacid`, `name`, `module`, `displayorder`, `status`, `containtype`, `reply_type`) VALUES
(1, 0, '城市天气', 'userapi', 255, 1, '', 0),
(2, 0, '百度百科', 'userapi', 255, 1, '', 0),
(3, 0, '即时翻译', 'userapi', 255, 1, '', 0),
(4, 0, '今日老黄历', 'userapi', 255, 1, '', 0),
(5, 0, '看新闻', 'userapi', 255, 1, '', 0),
(6, 0, '快递查询', 'userapi', 255, 1, '', 0),
(7, 1, '个人中心入口设置', 'cover', 0, 1, '', 0),
(8, 1, '微赞团队入口设置', 'cover', 0, 1, '', 0),
(9, 6, '', 'reply', 0, 1, 'basic,', 0),
(10, 6, '', 'reply', 0, 1, 'basic,', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_rule_keyword`
--

CREATE TABLE IF NOT EXISTS `ims_rule_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `module` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_content` (`content`),
  KEY `rid` (`rid`),
  KEY `idx_rid` (`rid`),
  KEY `idx_uniacid_type_content` (`uniacid`,`type`,`content`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `ims_rule_keyword`
--

INSERT INTO `ims_rule_keyword` (`id`, `rid`, `uniacid`, `module`, `content`, `type`, `displayorder`, `status`) VALUES
(1, 1, 0, 'userapi', '^.+天气$', 3, 255, 1),
(2, 2, 0, 'userapi', '^百科.+$', 3, 255, 1),
(3, 2, 0, 'userapi', '^定义.+$', 3, 255, 1),
(4, 3, 0, 'userapi', '^@.+$', 3, 255, 1),
(5, 4, 0, 'userapi', '日历', 1, 255, 1),
(6, 4, 0, 'userapi', '万年历', 1, 255, 1),
(7, 4, 0, 'userapi', '黄历', 1, 255, 1),
(8, 4, 0, 'userapi', '几号', 1, 255, 1),
(9, 5, 0, 'userapi', '新闻', 1, 255, 1),
(10, 6, 0, 'userapi', '^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$', 3, 255, 1),
(11, 7, 1, 'cover', '个人中心', 1, 0, 1),
(12, 8, 1, 'cover', '首页', 1, 0, 1),
(13, 9, 6, 'reply', '123', 1, 0, 1),
(15, 10, 6, 'reply', '在吗', 2, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_article`
--

CREATE TABLE IF NOT EXISTS `ims_site_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `iscommend` tinyint(1) NOT NULL DEFAULT '0',
  `ishot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pcate` int(10) unsigned NOT NULL DEFAULT '0',
  `ccate` int(10) unsigned NOT NULL DEFAULT '0',
  `template` varchar(300) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(500) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '',
  `credit` varchar(255) NOT NULL DEFAULT '',
  `incontent` tinyint(1) NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_iscommend` (`iscommend`),
  KEY `idx_ishot` (`ishot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_category`
--

CREATE TABLE IF NOT EXISTS `ims_site_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `icon` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `template` varchar(300) NOT NULL DEFAULT '',
  `styleid` int(10) unsigned NOT NULL,
  `templatefile` varchar(100) NOT NULL DEFAULT '',
  `linkurl` varchar(500) NOT NULL DEFAULT '',
  `ishomepage` tinyint(1) NOT NULL DEFAULT '0',
  `icontype` tinyint(1) unsigned NOT NULL,
  `css` varchar(500) NOT NULL,
  `multiid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_multi`
--

CREATE TABLE IF NOT EXISTS `ims_site_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `site_info` text NOT NULL,
  `quickmenu` varchar(2000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `bindhost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `bindhost` (`bindhost`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `ims_site_multi`
--

INSERT INTO `ims_site_multi` (`id`, `uniacid`, `title`, `styleid`, `site_info`, `quickmenu`, `status`, `bindhost`) VALUES
(1, 1, '微赞团队', 1, '', '', 1, ''),
(2, 2, '123', 2, '', '', 1, ''),
(3, 3, '123123123', 3, '', '', 1, ''),
(4, 4, '口口碑点餐', 4, '', '', 1, ''),
(5, 5, '口口碑', 5, '', '', 1, ''),
(6, 6, '点了码', 6, '', '', 1, ''),
(7, 7, '1111', 7, '', '', 1, ''),
(8, 8, '测试公众号', 8, '', '', 1, ''),
(9, 9, '猿人点餐', 9, '', '', 1, ''),
(10, 10, '藤菲Tyuankeo', 10, '', '', 1, ''),
(11, 11, '青草香1', 11, '', '', 1, ''),
(12, 12, '一剪梅牛肉火锅', 12, '', '', 1, ''),
(13, 13, '一刀切牛肉火锅', 13, '', '', 1, ''),
(14, 14, '刀刀刀', 14, '', '', 1, ''),
(15, 15, 'Tyuankeo', 15, '', '', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_nav`
--

CREATE TABLE IF NOT EXISTS `ims_site_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `section` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(50) NOT NULL DEFAULT '',
  `displayorder` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL DEFAULT '',
  `position` tinyint(4) NOT NULL DEFAULT '1',
  `url` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(500) NOT NULL DEFAULT '',
  `css` varchar(1000) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `categoryid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_page`
--

CREATE TABLE IF NOT EXISTS `ims_site_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `params` longtext NOT NULL,
  `html` longtext NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `goodnum` int(10) unsigned NOT NULL,
  `multipage` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_slide`
--

CREATE TABLE IF NOT EXISTS `ims_site_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `displayorder` tinyint(4) NOT NULL DEFAULT '0',
  `multiid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_styles`
--

CREATE TABLE IF NOT EXISTS `ims_site_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `ims_site_styles`
--

INSERT INTO `ims_site_styles` (`id`, `uniacid`, `templateid`, `name`) VALUES
(1, 1, 1, '微站默认模板_gC5C'),
(2, 2, 1, '微站默认模板_knAe'),
(3, 3, 1, '微站默认模板_UNYZ'),
(4, 4, 1, '微站默认模板_q2V5'),
(5, 5, 1, '微站默认模板_ofI1'),
(6, 6, 1, '微站默认模板_U89q'),
(7, 7, 1, '微站默认模板_JNY0'),
(8, 8, 1, '微站默认模板_SG0e'),
(9, 9, 1, '微站默认模板_Sd1d'),
(10, 10, 1, '微站默认模板_u0Tj'),
(11, 11, 1, '微站默认模板_VFWa'),
(12, 12, 1, '微站默认模板_G67H'),
(13, 13, 1, '微站默认模板_EVLj'),
(14, 14, 1, '微站默认模板_vy4i'),
(15, 15, 1, '微站默认模板_Tg1n');

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_styles_vars`
--

CREATE TABLE IF NOT EXISTS `ims_site_styles_vars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `templateid` int(10) unsigned NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `variable` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_templates`
--

CREATE TABLE IF NOT EXISTS `ims_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(30) NOT NULL,
  `description` varchar(500) NOT NULL DEFAULT '',
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `sections` int(10) unsigned NOT NULL,
  `version` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=214 ;

--
-- 转存表中的数据 `ims_site_templates`
--

INSERT INTO `ims_site_templates` (`id`, `name`, `title`, `description`, `author`, `url`, `type`, `sections`, `version`) VALUES
(1, 'default', '微站默认模板', '由微赞提供默认微站模板套系', '微赞团队', 'http://weizancms.com', '1', 0, ''),
(2, 'style31', '微赞style31', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'drink', 0, '6.0'),
(3, 'style_car', '微站微汽车', '由微赞提供微站微汽车', '012微赞', 'http://bbs.b2ctui.com', 'other', 0, ''),
(4, 'style99', '微赞微站模板99', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(5, 'style98', '微赞微站模板98', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, ''),
(6, 'style96', '微赞微站模板96', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(7, 'style95', '微赞微站模板95', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(8, 'style94', '微赞微站模板94', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(9, 'style93', '微赞微站模板93', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(10, 'style92', '微赞微站模板92', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, ''),
(11, 'style91', '微赞模板91', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(12, 'style90', '微赞模板90', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(13, 'style9', '微赞style9', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'car', 0, '6.0'),
(14, 'style89', '微赞模板89', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(15, 'style88', '微赞模板88', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(16, 'style87', '微赞模板87', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(17, 'style86', '微赞模板86', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(18, 'style85', '微赞模板85', '由易福源码网提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(19, 'style84', '微赞模板84', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(20, 'style83', '微赞模板83', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(21, 'style82', '微赞模板82', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(22, 'style81', '微赞模板81', '由微赞提供默认微站模板套系，刷新看事例，请自行上传30*30px大小的png格式透明分类图片', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(23, 'style80', '微赞模板80', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(118, 'style8', '微赞style8', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'shoot', 0, '6.0'),
(25, 'style79', '微赞模板79', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(26, 'style78', '微赞模板78', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(27, 'style77', '微赞模板77', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, ''),
(28, 'style76', '微赞模板76', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(29, 'style75', '微赞模板75', '由易福源码网提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, ''),
(30, 'style74', '微赞模板74', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(31, 'style73', '微赞模板73', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, ''),
(32, 'style72', '微赞模板72', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, ''),
(33, 'style71', '微赞模71', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, ''),
(34, 'style70', '微赞模板70', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(35, 'style7', '微赞style7', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(36, 'style69', '微赞模板69', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, ''),
(37, 'style68', '微赞模板68', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(38, 'style67', '微赞模板67', '由易福源码网提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, ''),
(39, 'style66', '微赞模板66', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, ''),
(40, 'style65', '微赞模板65', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(41, 'style64', '微赞模板64', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(42, 'style63', '微赞模板63', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(43, 'style62', '微赞模板62', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(44, 'style61', '微赞模板61', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, ''),
(45, 'style60', '微赞模板60', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, ''),
(46, 'style6', '微赞style6', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(47, 'style59', '微赞模板59', '由易福源码网提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, ''),
(48, 'style58', '微赞模板58', '由微赞提供默认微站模板套系', 'WDL', 'http://bbs.b2ctui.com', 'other', 0, ''),
(49, 'style57', '微赞style57', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(50, 'style56', '微赞style56', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(51, 'style55', '微赞style55', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(52, 'style54', '微赞style54', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(53, 'style53', '微赞style53', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '7.0'),
(54, 'style52', '微赞style52', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '5.0'),
(55, 'style51', '微赞style51', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(56, 'style50', '微赞style50', '由易福源码网提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(57, 'style5', '微赞style5', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'car', 0, '5.0'),
(58, 'style49', '微赞style49', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(59, 'style48', '微赞style48', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(60, 'style47', '微赞style47', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(61, 'style46', '微赞style46', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(62, 'style45', '微赞style45', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(63, 'style44', '微赞style44', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(64, 'style43', '微赞style43', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(65, 'style42', '微赞style42', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(66, 'style41', '微赞style41', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(67, 'style40', '微赞style40', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(68, 'style4', '微赞style4', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'car', 0, '5.0'),
(69, 'style39', '微赞style39', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(70, 'style38', '微赞style38', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(71, 'style37', '微赞style37', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(72, 'style36', '微赞style36', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'medical', 0, '6.0'),
(73, 'style35', '微赞style35', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(74, 'style34', '微赞style34', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(75, 'style33', '微赞style33', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(76, 'style32', '微赞style32', '由易福源码网提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(77, 'style30', '微赞style30', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(78, 'style3', '微赞style3', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '4.0'),
(79, 'style29', '微赞style29', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(80, 'style28', '微赞style28', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(81, 'style27', '微赞style27', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(82, 'style26', '微赞style26', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(83, 'style25', '微赞style25', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(84, 'style24', '微赞style24', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(85, 'style23', '微赞style23', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '5.0'),
(86, 'style22', '微赞style22', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '5.0'),
(87, 'style21', '微赞style21', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(88, 'style20', '微赞style20', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(89, 'style2', '微赞style2', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'cosmetology', 0, '5.0'),
(90, 'style19', '微赞style19', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'drink', 0, '7.0'),
(91, 'style18', '微赞style18', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '4.0'),
(92, 'style17', '微赞style17', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(93, 'style16', '微赞style16', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(94, 'style15', '微赞style15', '由易福源码网提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'tourism', 0, '6.0'),
(95, 'style14', '微赞style14', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '6.0'),
(96, 'style13', '微赞style13', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'realty', 0, '6.0'),
(97, 'style12', '微赞style12', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '5.0'),
(98, 'style118', '微赞微站模板118', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(99, 'style117', '微赞微站模板117', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(100, 'style116', '微赞微站模板116', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(101, 'style113', '微赞微站模板113', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, ''),
(102, 'style112', '微赞微站模板112', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(103, 'style111', '微赞微站模板111', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(104, 'style110', '微赞微站模板110', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(105, 'style11', '微赞style11', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'shoot', 0, '6.0'),
(106, 'style108', '微赞微站模板108', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, ''),
(107, 'style107', '微赞微站模板107', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, ''),
(108, 'style106', '微赞微站模板106', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, ''),
(109, 'style105', '微赞微站模板105', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, ''),
(110, 'style104', '微赞微站模板104', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(111, 'style103', '微赞微站模板103', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(112, 'style102', '微赞微站模板102', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(113, 'style101', '微赞微站模板101', '由易福源码网提供默认微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, ''),
(114, 'style100', '微赞微站模板100', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'other', 0, '1.0'),
(115, 'style10', '微赞style10', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'shoot', 0, '6.0'),
(116, 'style1', '微赞style1', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'drink', 0, '4.0'),
(117, 'fanxing_daqi1', '微赞fanxing_daqi1', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(119, 'superman_wxtmpl', '微赞superman_wxtmpl', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '2.0'),
(120, 'hccc05', '微赞hccc05', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(121, 'hccc04', '微赞hccc04', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(122, 'hccc02', '微赞hccc02', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(123, 'hccc01', '微赞hccc01', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(124, 'style109', '微赞微站模板109', '由微赞微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(125, 'style114', '微赞微站模板114', '由微赞微站模板套系', 'WDL', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(126, 'style119', '微赞微站模板119', '由微赞微站模板套系', 'WDL', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(127, 'style120', '微赞微站模板120', '由微赞微站模板套系', 'WDL', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(128, 'style121', '微赞微站模板121', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'often', 0, '1.0'),
(129, 'style125', '微赞微站模板125', '由微赞微站模板套系', 'weidongli Team', 'http://bbs.b2ctui.com', 'often', 0, '1.0'),
(130, 'style127', '微赞微站默认模板127', '霓虹灯下的旋转特效', '微赞', 'http://bbs.b2ctui.com', 'often', 0, '1.0'),
(131, 'style128', '微赞模版128', '由微赞提供微站模板套系128', '微赞', 'http://www.b2ctui.com', 'often', 0, '1.0'),
(132, 'style129', '微赞模版系列129', '由微赞提供微站模板套系129', '微赞', 'http://www.b2ctui.com', 'often', 0, '1.0'),
(133, 'style130', '微赞130', '由微赞提供微站模板套系130', '微赞', 'http://www.b2ctui.com', 'often', 0, '1.0'),
(134, 'style133', '微赞默认模板133', '由易福源码网提供默认微站模板套系', 'WEIDONGLI', 'http://www.b2ctui.com', 'often', 0, '1.0'),
(135, 'style134', '微赞134', '由微赞提供默认套系', 'WEIDONGLI', 'http://www.b2ctui.com', 'often', 0, '1.0'),
(136, 'style137', '微赞137', '圆圆的小角，圆圆的卡片，刷新看事例，请自行上传30*30px大小的png格式分类图片', 'Hooyo', 'http://bbs.b2ctui.com/', 'often', 0, '1.0'),
(137, 'style139', '微赞139', '由微赞提供默认套系', '012微赞', 'http://bbs.b2ctui.com', 'often', 0, '1.0'),
(138, 'style141', '微赞141', '由微赞提供默认套系', '012微赞', 'http://bbs.b2ctui.com', 'often', 0, '1.0'),
(139, 'style143', '微赞143', '由微赞提供默认套系', '012微赞', 'http://bbs.b2ctui.com', 'often', 0, '1.0'),
(140, 'style144', '微赞144', '由微赞提供默认套系', '012微赞', 'http://bbs.b2ctui.com', 'often', 0, '1.0'),
(141, 'style146', '微赞146', '由微赞提供默认套系', '012微赞', 'http://bbs.b2ctui.com', 'often', 0, '1.0'),
(142, 'style147', '微赞147', '由微赞提供默认套系', '012微赞', 'http://bbs.b2ctui.com', 'often', 0, '1.0'),
(143, 'style148', '微赞148', '微赞系列', '微赞', '微', 'often', 0, '1.0'),
(144, 'style149', '微赞149', '由微赞提供默认套系', 'WeiYang Team', 'http://bbs.b2ctui.com', 'often', 0, '1.0'),
(145, 'style150', '微赞150', '微赞模板', '微', 'bbs.012wz.com', 'often', 0, '1.0'),
(146, 'style153', '微赞153', '由微赞提供套系', '微赞', 'http://www.b2ctui.com', 'often', 0, '1.0'),
(147, 'style156', '微赞156', '由微赞提供小清新套系', 'b2ctui.com', 'http://b2ctui.com', 'often', 0, '1.0'),
(148, 'style157', '微赞157', '由微赞提供小清新套系', 'b2ctui.com', 'http://b2ctui.com', 'often', 0, '1.0'),
(149, 'style158', '微赞158', '仿微盟的电商微官网模板', '微赞 大圣', 'http://www.b2ctui.com', 'often', 0, '1.0'),
(150, 'style159', '微赞159', '微赞微营销', 'weidongli', 'http://www.b2ctui.com', 'often', 0, '1.0'),
(151, 'style160', '微赞160', '微赞电商分类微官网模板', '微赞 大圣', 'http://www.b2ctui.com', 'often', 0, '1.0'),
(152, 'style163', '微赞163', '由微赞提供套系', '微赞', 'bbs.b2ctui.com', 'often', 0, '1.0'),
(153, 'style166', '微赞166', '由易福源码网提供默认微站模板套系', 'Fox', 'http://www.b2ctui.com', 'often', 0, '1.0'),
(154, 'style167', '微赞167', '微赞', 'wdl', 'http://www.b2ctui.com', 'often', 0, '1.0'),
(155, 'style169', '微赞169', '由微赞提供默认套系', '012微赞', 'http://bbs.b2ctui.com', 'often', 0, '1.0'),
(156, 'style170', '微赞170', '微赞提供', 'wdl Team', 'http://bbs.b2ctui.com', 'often', 0, '1.0'),
(157, 'style172', '微赞172', '微赞', 'weidongli', 'http://www.b2ctui.com', 'often', 0, '1.0'),
(158, 'style174', '微赞174', '古朴风“木板风格”', '微赞', 'weidongli', 'often', 0, '1.0'),
(159, 'style175', '微赞175', 'weidongli', 'weidongli Team', 'http://bbs.b2ctui.com', 'often', 0, '1.0'),
(160, 'style179', '微站179', '微', 'bjue', '', 'often', 0, '1.0'),
(161, 'style180', '微赞180', '微赞提供', 'bjue', '微', 'often', 0, '1.0'),
(162, 'style184', '微赞184', '由易福源码网提供默认微站模板套系', '微赞', 'http://www.b2ctui.com', 'often', 0, '1.0'),
(163, 'style185', '微赞185', '由微赞提供套系', '微赞', 'http://bbs.b2ctui.com', 'often', 0, '1.0'),
(164, 'style186', '微赞186', '由微赞提供套系', '微赞', 'http://bbs.b2ctui.com', 'often', 0, '1.0'),
(165, 'style187', '微赞187', '由微赞提供套系', '微赞', 'http://bbs.b2ctui.com', 'often', 0, '1.0'),
(166, 'style188', '微赞188', '由微赞提供套系', '微赞网络科技', 'www.b2ctui.com', 'often', 0, '1.0'),
(167, 'style190', '微赞190', '由微赞提供微站模板', '微赞', 'http://www.b2ctui.com', 'often', 0, '1.0'),
(168, 'style193', '超爱小清新|微赞193', '由微赞提供小清新微站模板套系', 'b2ctui.com', 'http://b2ctui.com', 'often', 0, '1.0'),
(169, 'style195', '超爱小清新|微赞195', '由微赞提供小清新微站模板套系', 'b2ctui.com', 'http://b2ctui.com', 'often', 0, '1.0'),
(170, 'style198', '微赞默认模板系列198', '由微赞提供默认微站模板套系之一', '微赞', 'http://微赞.中国', 'often', 0, '1.0'),
(171, 'style199', '微赞默认模板系列199', '由微赞提供默认微站模板套系', '微赞', 'http://微赞.中国', 'often', 0, '1.0'),
(172, 'style200', '微赞默认模板系列200', '由微赞提供默认微站模板套系之三', 'Dear Hu', 'http://微赞.中国', 'often', 0, '1.0'),
(173, 'style211', 'style211', '由微赞提供微站模板', '微赞', 'http://www.b2ctui.com', 'often', 0, '1.0'),
(174, 'style206', '微赞206', '由微赞提供默认微站模板套系', '微赞', 'http://www.b2ctui.com', 'often', 0, '1.0'),
(175, 'style209', '紫色高贵209', '微赞作品', 'wdl', 'http://bbs.b2ctui.com', 'often', 0, '1.0'),
(176, 'style210', '微赞210', '由易福源码网提供默认微站模板套系', 'wdl', 'http://bbs.b2ctui.com', 'often', 0, '1.0'),
(177, 'jlsh_wb', '微赞-仿微盟手机端jlsh_wb', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(178, 'hc_style012', '微赞hc_style012', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(179, 'hc_style011', '微赞hc_style011', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(180, 'hc_style010', '微赞hc_style010', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(181, 'hc_style009', '微赞hc_style009', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(182, 'hc_style008', '微赞hc_style008', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(183, 'hc_style007', '微赞hc_style007', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(184, 'hc_style006', '微赞hc_style006', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(185, 'hc_style005', '微赞hc_style005', '由易福源码网提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(186, 'hc_style004', '微赞hc_style004', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(187, 'hc_style003', '微赞hc_style003', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(188, 'hc_style002', '微赞hc_style002', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(189, 'hc_style001', '微赞hc_style001', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(190, 'hc_style_03', '微赞hc_style_03', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(191, 'mihuacar', '微赞-mihuacar', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(192, 'niling_themes01', '微赞-niling_themes01', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(193, 'sdren', '微赞-sdren', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(194, 'shijihongda', '微赞-shijihongda', '由易福源码网提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(195, 'sql_tpl_company', '微赞sql_tpl_company', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(196, 'on_vfuling', '微赞on_vfuling', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(197, 'wl_tm01', '微赞-wl_tm01', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'often', 0, '1.0'),
(198, 'xingwei08', '微站【首页08】模板', '首页音乐切换多菜单模版', 'QQ:79172293', 'http://bbs.we7.cc/', 'often', 0, '1.0'),
(200, 'dp_moban01', 'DP整站模板01', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'other', 0, ''),
(201, 'dp_list03', 'DP列表模板03', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'other', 0, ''),
(202, 'dp_list01', 'DP列表模板01', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'other', 0, ''),
(204, 'vcard02', '微信样式WeUI', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'other', 0, ''),
(205, 'vcard01', '微名片模板1', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'other', 0, ''),
(206, 'mihuakid', '幼儿园微官网模板', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'other', 0, ''),
(207, 'bsht_WeUI', '微赞样式WeUI', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'other', 0, ''),
(208, 'niling_themes_06', 'niling_themes_06', 'niling_themes_06', '微赞', 'http://bbs.012wz.com', 'other', 0, ''),
(209, 'niling_themes_05', 'niling_themes_05', 'niling_themes_05', '微赞', 'http://bbs.012wz.com', 'other', 0, ''),
(210, 'niling_themes_01', 'niling_themes_01', 'niling_themes_01', '微赞', 'http://bbs.012wz.com', 'other', 0, ''),
(211, 'm001_themes01', 'm001_themes01', 'm001_themes01', '微赞', 'http://bbs.012wz.com', 'other', 0, ''),
(212, 'lyz_dcstyle', 'lyz_dcstyle', 'lyz_dcstyle', '微赞', 'http://bbs.012wz.com', 'other', 0, ''),
(213, 'bilin_version2', 'bilin_version2模版', '由微赞提供默认微站模板套系', '微赞', 'http://bbs.012wz.com', 'other', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_solution_acl`
--

CREATE TABLE IF NOT EXISTS `ims_solution_acl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `module` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `eid` int(10) unsigned NOT NULL DEFAULT '0',
  `do` varchar(255) NOT NULL,
  `state` varchar(1000) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module`),
  KEY `idx_eid` (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_fans`
--

CREATE TABLE IF NOT EXISTS `ims_stat_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `new` int(10) unsigned NOT NULL,
  `cancel` int(10) unsigned NOT NULL,
  `cumulate` int(10) NOT NULL,
  `date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=239 ;

--
-- 转存表中的数据 `ims_stat_fans`
--

INSERT INTO `ims_stat_fans` (`id`, `uniacid`, `new`, `cancel`, `cumulate`, `date`) VALUES
(1, 1, 0, 0, 0, '20170903'),
(2, 1, 0, 0, 0, '20170902'),
(3, 1, 0, 0, 0, '20170901'),
(4, 1, 0, 0, 0, '20170831'),
(5, 1, 0, 0, 0, '20170830'),
(6, 1, 0, 0, 0, '20170829'),
(7, 1, 0, 0, 0, '20170828'),
(8, 2, 0, 0, 0, '20170903'),
(9, 2, 0, 0, 0, '20170902'),
(10, 2, 0, 0, 0, '20170901'),
(11, 2, 0, 0, 0, '20170831'),
(12, 2, 0, 0, 0, '20170830'),
(13, 2, 0, 0, 0, '20170829'),
(14, 2, 0, 0, 0, '20170828'),
(15, 1, 0, 0, 0, '20170907'),
(16, 1, 0, 0, 0, '20170906'),
(17, 1, 0, 0, 0, '20170905'),
(18, 1, 0, 0, 0, '20170904'),
(19, 2, 0, 0, 0, '20170907'),
(20, 2, 0, 0, 0, '20170906'),
(21, 2, 0, 0, 0, '20170905'),
(22, 2, 0, 0, 0, '20170904'),
(23, 3, 0, 0, 0, '20170907'),
(24, 3, 0, 0, 0, '20170906'),
(25, 3, 0, 0, 0, '20170905'),
(26, 3, 0, 0, 0, '20170904'),
(27, 3, 0, 0, 0, '20170903'),
(28, 3, 0, 0, 0, '20170902'),
(29, 3, 0, 0, 0, '20170901'),
(30, 3, 0, 0, 0, '20170908'),
(31, 1, 0, 0, 0, '20170908'),
(32, 3, 0, 0, 0, '20170909'),
(33, 3, 0, 0, 0, '20170910'),
(34, 3, 0, 0, 0, '20170911'),
(35, 3, 0, 0, 0, '20170924'),
(36, 3, 0, 0, 0, '20170923'),
(37, 3, 0, 0, 0, '20170922'),
(38, 3, 0, 0, 0, '20170921'),
(39, 3, 0, 0, 0, '20170920'),
(40, 3, 0, 0, 0, '20170919'),
(41, 3, 0, 0, 0, '20170918'),
(42, 5, 0, 0, 10, '20170924'),
(43, 5, 0, 0, 10, '20170923'),
(44, 5, 0, 0, 10, '20170922'),
(45, 5, 0, 0, 10, '20170921'),
(46, 5, 0, 0, 10, '20170920'),
(47, 5, 0, 0, 10, '20170919'),
(48, 5, 0, 0, 10, '20170918'),
(49, 5, 1, 0, 0, '20170927'),
(50, 5, 0, 1, 0, '20171004'),
(51, 5, 1, 0, 11, '20171006'),
(52, 5, 1, 0, 12, '20171010'),
(53, 5, 0, 0, 12, '20171011'),
(54, 5, 0, 0, 11, '20171009'),
(55, 5, 0, 0, 11, '20171008'),
(56, 5, 0, 0, 11, '20171007'),
(57, 5, 0, 0, 10, '20171005'),
(58, 5, 0, 0, 12, '20171014'),
(59, 5, 0, 0, 12, '20171013'),
(60, 5, 0, 0, 12, '20171012'),
(61, 5, 0, 1, 11, '20171015'),
(62, 5, 0, 0, 11, '20171016'),
(63, 5, 3, 0, 14, '20171017'),
(64, 5, 3, 1, 16, '20171018'),
(65, 5, 0, 1, 15, '20171019'),
(66, 5, 1, 0, 16, '20171020'),
(67, 5, 1, 0, 17, '20171023'),
(68, 5, 0, 0, 16, '20171022'),
(69, 5, 0, 0, 16, '20171021'),
(70, 5, 0, 0, 17, '20171024'),
(71, 5, 0, 0, 17, '20171025'),
(72, 5, 0, 0, 17, '20171026'),
(73, 6, 0, 0, 5, '20171026'),
(74, 6, 2, 1, 5, '20171025'),
(75, 6, 1, 0, 4, '20171024'),
(76, 6, 0, 0, 3, '20171023'),
(77, 6, 1, 0, 3, '20171022'),
(78, 6, 0, 0, 2, '20171021'),
(79, 6, 0, 0, 2, '20171020'),
(80, 6, 0, 0, 2, '20171021'),
(81, 6, 0, 0, 2, '20171020'),
(82, 6, 4, 0, 9, '20171027'),
(83, 6, 1, 0, 10, '20171028'),
(84, 5, 0, 0, 17, '20171027'),
(85, 5, 0, 0, 17, '20171028'),
(86, 6, 1, 0, 11, '20171029'),
(87, 5, 0, 0, 17, '20171029'),
(88, 6, 1, 1, 11, '20171030'),
(89, 6, 0, 0, 11, '20171031'),
(90, 6, 1, 0, 12, '20171101'),
(91, 5, 0, 0, 17, '20171031'),
(92, 5, 0, 0, 17, '20171030'),
(93, 5, 0, 0, 17, '20171101'),
(94, 6, 0, 0, 12, '20171102'),
(95, 5, 0, 0, 17, '20171102'),
(96, 5, 0, 0, 17, '20171105'),
(97, 5, 0, 0, 17, '20171104'),
(98, 5, 0, 0, 17, '20171103'),
(99, 6, 0, 0, 12, '20171105'),
(100, 6, 0, 0, 12, '20171104'),
(101, 6, 0, 0, 12, '20171103'),
(102, 6, 6, 1, 17, '20171106'),
(103, 5, 1, 0, 18, '20171106'),
(104, 6, 2, 0, 19, '20171107'),
(105, 7, 0, 0, 0, '20171106'),
(106, 7, 0, 0, 0, '20171105'),
(107, 7, 0, 0, 0, '20171104'),
(108, 7, 0, 0, 0, '20171103'),
(109, 7, 0, 0, 0, '20171102'),
(110, 7, 0, 0, 0, '20171101'),
(111, 7, 0, 0, 0, '20171031'),
(112, 7, 0, 0, 0, '20171107'),
(113, 6, 2, 0, 21, '20171108'),
(114, 5, 0, 0, 18, '20171107'),
(115, 8, 0, 0, 0, '20171107'),
(116, 8, 0, 0, 0, '20171106'),
(117, 8, 0, 0, 0, '20171105'),
(118, 8, 0, 0, 0, '20171104'),
(119, 8, 0, 0, 0, '20171103'),
(120, 8, 0, 0, 0, '20171102'),
(121, 8, 0, 0, 0, '20171101'),
(122, 7, 0, 0, 0, '20171108'),
(123, 5, 0, 0, 18, '20171108'),
(124, 6, 1, 0, 22, '20171109'),
(125, 9, 0, 0, 0, '20171108'),
(126, 9, 0, 0, 0, '20171107'),
(127, 9, 0, 0, 0, '20171106'),
(128, 9, 0, 0, 0, '20171105'),
(129, 9, 0, 0, 0, '20171104'),
(130, 9, 0, 0, 0, '20171103'),
(131, 9, 0, 0, 0, '20171102'),
(132, 9, 0, 0, 0, '20171109'),
(133, 10, 0, 0, 0, '20171109'),
(134, 10, 0, 0, 0, '20171108'),
(135, 10, 0, 0, 0, '20171107'),
(136, 10, 0, 0, 0, '20171106'),
(137, 10, 0, 0, 0, '20171105'),
(138, 10, 0, 0, 0, '20171104'),
(139, 10, 0, 0, 0, '20171103'),
(140, 10, 4, 2, 0, '20171110'),
(141, 11, 0, 0, 0, '20171109'),
(142, 11, 0, 0, 0, '20171108'),
(143, 11, 0, 0, 0, '20171107'),
(144, 11, 0, 0, 0, '20171106'),
(145, 11, 0, 0, 0, '20171105'),
(146, 11, 0, 0, 0, '20171104'),
(147, 11, 0, 0, 0, '20171103'),
(148, 11, 2, 3, 1, '20171110'),
(149, 7, 0, 0, 0, '20171109'),
(150, 8, 0, 0, 0, '20171109'),
(151, 8, 0, 0, 0, '20171108'),
(152, 6, 3, 1, 24, '20171110'),
(153, 12, 0, 0, 0, '20171109'),
(154, 12, 0, 0, 0, '20171108'),
(155, 12, 0, 0, 0, '20171107'),
(156, 12, 0, 0, 0, '20171106'),
(157, 12, 0, 0, 0, '20171105'),
(158, 12, 0, 0, 0, '20171104'),
(159, 12, 0, 0, 0, '20171103'),
(160, 5, 1, 0, 19, '20171110'),
(161, 7, 0, 0, 0, '20171110'),
(162, 5, 1, 0, 20, '20171111'),
(163, 5, 2, 0, 22, '20171112'),
(164, 11, 0, 0, 1, '20171112'),
(165, 11, 0, 0, 1, '20171111'),
(166, 6, 0, 0, 24, '20171112'),
(167, 6, 0, 0, 24, '20171111'),
(168, 5, 0, 0, 18, '20171109'),
(169, 10, 0, 0, 0, '20171112'),
(170, 10, 0, 0, 0, '20171111'),
(171, 10, 1, 6, 0, '20171113'),
(172, 12, 0, 0, 0, '20171112'),
(173, 12, 0, 0, 0, '20171111'),
(174, 12, 0, 0, 0, '20171110'),
(175, 6, 3, 0, 27, '20171113'),
(176, 7, 0, 0, 0, '20171112'),
(177, 7, 0, 0, 0, '20171111'),
(178, 13, 0, 0, 0, '20171112'),
(179, 13, 0, 0, 0, '20171111'),
(180, 13, 0, 0, 0, '20171110'),
(181, 13, 0, 0, 0, '20171109'),
(182, 13, 0, 0, 0, '20171108'),
(183, 13, 0, 0, 0, '20171107'),
(184, 13, 0, 0, 0, '20171106'),
(185, 14, 0, 0, 0, '20171112'),
(186, 14, 0, 0, 0, '20171111'),
(187, 14, 0, 0, 0, '20171110'),
(188, 14, 0, 0, 0, '20171109'),
(189, 14, 0, 0, 0, '20171108'),
(190, 14, 0, 0, 0, '20171107'),
(191, 14, 0, 0, 0, '20171106'),
(192, 9, 0, 0, 0, '20171112'),
(193, 9, 0, 0, 0, '20171111'),
(194, 9, 0, 0, 0, '20171110'),
(195, 5, 0, 1, 21, '20171113'),
(196, 7, 0, 0, 1, '20171113'),
(197, 9, 0, 0, 0, '20171113'),
(198, 13, 0, 0, 0, '20171113'),
(199, 6, 1, 1, 27, '20171114'),
(200, 0, 0, 0, 0, '20171113'),
(201, 0, 0, 0, 0, '20171112'),
(202, 0, 0, 0, 0, '20171111'),
(203, 0, 0, 0, 0, '20171110'),
(204, 0, 0, 0, 0, '20171109'),
(205, 0, 0, 0, 0, '20171108'),
(206, 0, 0, 0, 0, '20171107'),
(207, 10, 0, 0, 0, '20171114'),
(208, 7, 0, 0, 1, '20171114'),
(209, 5, 0, 0, 21, '20171114'),
(210, 15, 0, 0, 0, '20171114'),
(211, 15, 0, 0, 0, '20171113'),
(212, 15, 0, 0, 0, '20171112'),
(213, 15, 0, 0, 0, '20171111'),
(214, 15, 0, 0, 0, '20171110'),
(215, 15, 0, 0, 0, '20171109'),
(216, 15, 0, 0, 0, '20171108'),
(217, 15, 0, 0, 0, '20171115'),
(218, 6, 0, 0, 27, '20171115'),
(219, 9, 0, 0, 0, '20171115'),
(220, 9, 0, 0, 0, '20171114'),
(221, 6, 2, 1, 28, '20171116'),
(222, 7, 0, 0, 1, '20171115'),
(223, 7, 0, 0, 1, '20171116'),
(224, 15, 0, 0, 0, '20171116'),
(225, 6, 1, 0, 28, '20171118'),
(226, 6, 0, 1, 27, '20171117'),
(227, 15, 0, 0, 0, '20171119'),
(228, 15, 0, 0, 0, '20171118'),
(229, 15, 0, 0, 0, '20171117'),
(230, 6, 0, 0, 28, '20171119'),
(231, 7, 0, 0, 1, '20171119'),
(232, 7, 0, 0, 1, '20171118'),
(233, 7, 0, 0, 1, '20171117'),
(234, 6, 2, 0, 30, '20171120'),
(235, 7, 0, 0, 1, '20171120'),
(236, 6, 2, 0, 32, '20171121'),
(237, 15, 0, 0, 0, '20171121'),
(238, 15, 0, 0, 0, '20171120');

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_keyword`
--

CREATE TABLE IF NOT EXISTS `ims_stat_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` varchar(10) NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_msg_history`
--

CREATE TABLE IF NOT EXISTS `ims_stat_msg_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_rule`
--

CREATE TABLE IF NOT EXISTS `ims_stat_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_account`
--

CREATE TABLE IF NOT EXISTS `ims_uni_account` (
  `uniacid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `default_acid` int(10) unsigned NOT NULL,
  `rank` int(10) DEFAULT NULL,
  `title_initial` varchar(1) NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `ims_uni_account`
--

INSERT INTO `ims_uni_account` (`uniacid`, `groupid`, `name`, `description`, `default_acid`, `rank`, `title_initial`) VALUES
(1, 1, '微赞团队', '一个朝气蓬勃的团队', 1, NULL, 'W'),
(2, 1, '123', '123', 2, NULL, ''),
(3, 0, '123123123', '123123', 3, NULL, ''),
(4, 0, '口口碑点餐', '口口碑点餐', 4, NULL, 'K'),
(5, 0, '口口碑', '口口碑', 5, NULL, 'K'),
(6, 0, '点了码', '', 6, NULL, 'D'),
(7, 0, '1111', '1111', 7, NULL, ''),
(8, 0, '测试公众号', '', 8, NULL, 'C'),
(9, 0, '猿人点餐', '内部点餐', 9, NULL, 'Y'),
(10, 0, '藤菲Tyuankeo', '', 10, NULL, 'T'),
(11, 0, '青草香1', '测试', 11, NULL, 'Q'),
(12, 0, '一剪梅牛肉火锅', '本店用的是上等新鲜的牛肉，有牛排、牛仔骨、牛百叶等等，牛肉富含肌氨酸、维生素B6、蛋白质、钾、镁、锌、铁等等。', 12, NULL, 'Y'),
(13, 0, '一刀切牛肉火锅', '一刀切牛肉火锅使用的是最新鲜最上等的牛肉、牛舌、牛肝、牛心、牛鞭、牛百叶、牛仔骨等美味部位，它富含肌氨酸、维生素B6、肉毒碱、钾和蛋白质、锌、镁、铁、丙胺酸、维生素B12等等营养价值。', 13, NULL, 'Y'),
(14, 0, '刀刀刀', '刀刀刀', 14, NULL, 'D'),
(15, 0, 'Tyuankeo', '', 15, NULL, 'T');

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_account_group`
--

CREATE TABLE IF NOT EXISTS `ims_uni_account_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `groupid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `ims_uni_account_group`
--

INSERT INTO `ims_uni_account_group` (`id`, `uniacid`, `groupid`) VALUES
(1, 4, -1),
(2, 4, 1),
(3, 5, -1),
(4, 5, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_account_menus`
--

CREATE TABLE IF NOT EXISTS `ims_uni_account_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `menuid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL,
  `group_id` int(10) NOT NULL,
  `client_platform_type` tinyint(3) unsigned NOT NULL,
  `area` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `menuid` (`menuid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `ims_uni_account_menus`
--

INSERT INTO `ims_uni_account_menus` (`id`, `uniacid`, `menuid`, `type`, `title`, `sex`, `group_id`, `client_platform_type`, `area`, `data`, `status`, `createtime`, `isdeleted`) VALUES
(1, 5, 0, 1, '最新菜单', 0, -1, 0, '', 'YToxOntzOjY6ImJ1dHRvbiI7YToyOntpOjA7YToyOntzOjQ6Im5hbWUiO3M6MTI6IuaJq+eggeeCueWNlSI7czoxMDoic3ViX2J1dHRvbiI7YTo1OntpOjA7YTozOntzOjQ6Im5hbWUiO3M6Njoi54K55Y2VIjtzOjQ6InR5cGUiO3M6NDoidmlldyI7czozOiJ1cmwiO3M6NzE6Imh0dHA6Ly9sZ3pvbC5jbi9hcHAvaW5kZXgucGhwP2k9NSZjPWVudHJ5JmlkPTIwJmRvPWRldGFpbCZtPXdlaXNyY19kaXNoIjt9aToxO2E6Mzp7czo0OiJuYW1lIjtzOjY6IumihOWumiI7czo0OiJ0eXBlIjtzOjQ6InZpZXciO3M6MzoidXJsIjtzOjg2OiJodHRwOi8vbGd6b2wuY24vYXBwL2luZGV4LnBocD9pPTUmYz1lbnRyeSZzdG9yZWlkPTIwJmRvPXJlc2VydmF0aW9uSW5kZXgmbT13ZWlzcmNfZGlzaCI7fWk6MjthOjM6e3M6NDoibmFtZSI7czo2OiLlpJbljZYiO3M6NDoidHlwZSI7czo0OiJ2aWV3IjtzOjM6InVybCI7czo4NDoiaHR0cDovL2xnem9sLmNuL2FwcC9pbmRleC5waHA/aT01JmM9ZW50cnkmc3RvcmVpZD0yMCZkbz13YXBsaXN0Jm09d2Vpc3JjX2Rpc2gmbW9kZT0yIjt9aTozO2E6Mzp7czo0OiJuYW1lIjtzOjY6IuaOkuWPtyI7czo0OiJ0eXBlIjtzOjQ6InZpZXciO3M6MzoidXJsIjtzOjc1OiJodHRwOi8vbGd6b2wuY24vYXBwL2luZGV4LnBocD9pPTUmYz1lbnRyeSZzdG9yZWlkPTIwJmRvPXF1ZXVlJm09d2Vpc3JjX2Rpc2giO31pOjQ7YTozOntzOjQ6Im5hbWUiO3M6MTI6IumFkuawtOWvhOWtmCI7czo0OiJ0eXBlIjtzOjQ6InZpZXciO3M6MzoidXJsIjtzOjgyOiJodHRwOi8vbGd6b2wuY24vYXBwL2luZGV4LnBocD9pPTUmYz1lbnRyeSZzdG9yZWlkPTIwJmRvPXNhdmV3aW5lZm9ybSZtPXdlaXNyY19kaXNoIjt9fX1pOjE7YToyOntzOjQ6Im5hbWUiO3M6Njoi5Lya5ZGYIjtzOjEwOiJzdWJfYnV0dG9uIjthOjM6e2k6MDthOjM6e3M6NDoibmFtZSI7czoxMjoi5oiR55qE5biQ5Y+3IjtzOjQ6InR5cGUiO3M6NDoidmlldyI7czozOiJ1cmwiO3M6Njk6Imh0dHA6Ly9sZ3pvbC5jbi9hcHAvaW5kZXgucGhwP2k9NSZjPWVudHJ5JmRvPXVzZXJjZW50ZXImbT13ZWlzcmNfZGlzaCI7fWk6MTthOjM6e3M6NDoibmFtZSI7czoxNToi5oiR55qE5LyY5oOg5Y23IjtzOjQ6InR5cGUiO3M6NDoidmlldyI7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9sZ3pvbC5jbi9hcHAvaW5kZXgucGhwP2k9NSZjPWVudHJ5JmRvPW15Y291cG9uJm09d2Vpc3JjX2Rpc2giO31pOjI7YTozOntzOjQ6Im5hbWUiO3M6MTI6IuaIkeeahOiuouWNlSI7czo0OiJ0eXBlIjtzOjQ6InZpZXciO3M6MzoidXJsIjtzOjY0OiJodHRwOi8vbGd6b2wuY24vYXBwL2luZGV4LnBocD9pPTUmYz1lbnRyeSZkbz1vcmRlciZtPXdlaXNyY19kaXNoIjt9fX19fQ==', 1, 1509115208, 0),
(2, 6, 0, 1, '点餐', 0, -1, 0, '', 'YToxOntzOjY6ImJ1dHRvbiI7YTozOntpOjA7YToyOntzOjQ6Im5hbWUiO3M6MTI6IuS6p+WTgea8lOekuiI7czoxMDoic3ViX2J1dHRvbiI7YTo1OntpOjA7YTozOntzOjQ6Im5hbWUiO3M6Njoi54K55Y2VIjtzOjQ6InR5cGUiO3M6NDoidmlldyI7czozOiJ1cmwiO3M6Nzk6Imh0dHA6Ly93d3cuZGlhbmxlbWEubmV0L2FwcC9pbmRleC5waHA/aT02JmM9ZW50cnkmaWQ9MjEmZG89ZGV0YWlsJm09d2Vpc3JjX2Rpc2giO31pOjE7YTozOntzOjQ6Im5hbWUiO3M6Njoi5aSW5Y2WIjtzOjQ6InR5cGUiO3M6NDoidmlldyI7czozOiJ1cmwiO3M6OTI6Imh0dHA6Ly93d3cuZGlhbmxlbWEubmV0L2FwcC9pbmRleC5waHA/aT02JmM9ZW50cnkmc3RvcmVpZD0yMSZkbz13YXBsaXN0Jm09d2Vpc3JjX2Rpc2gmbW9kZT0yIjt9aToyO2E6Mzp7czo0OiJuYW1lIjtzOjY6IuaOkuWPtyI7czo0OiJ0eXBlIjtzOjQ6InZpZXciO3M6MzoidXJsIjtzOjgzOiJodHRwOi8vd3d3LmRpYW5sZW1hLm5ldC9hcHAvaW5kZXgucGhwP2k9NiZjPWVudHJ5JnN0b3JlaWQ9MjEmZG89cXVldWUmbT13ZWlzcmNfZGlzaCI7fWk6MzthOjM6e3M6NDoibmFtZSI7czo2OiLpooTlrpoiO3M6NDoidHlwZSI7czo0OiJ2aWV3IjtzOjM6InVybCI7czo5NDoiaHR0cDovL3d3dy5kaWFubGVtYS5uZXQvYXBwL2luZGV4LnBocD9pPTYmYz1lbnRyeSZzdG9yZWlkPTIxJmRvPXJlc2VydmF0aW9uSW5kZXgmbT13ZWlzcmNfZGlzaCI7fWk6NDthOjM6e3M6NDoibmFtZSI7czoxMjoi6YWS5rC05a+E5a2YIjtzOjQ6InR5cGUiO3M6NDoidmlldyI7czozOiJ1cmwiO3M6OTA6Imh0dHA6Ly93d3cuZGlhbmxlbWEubmV0L2FwcC9pbmRleC5waHA/aT02JmM9ZW50cnkmc3RvcmVpZD0yMSZkbz1zYXZld2luZWZvcm0mbT13ZWlzcmNfZGlzaCI7fX19aToxO2E6Mjp7czo0OiJuYW1lIjtzOjEyOiLkuobop6PmiJHku6wiO3M6MTA6InN1Yl9idXR0b24iO2E6NDp7aTowO2E6Mzp7czo0OiJuYW1lIjtzOjE1OiLngrnkuobnoIHku4vnu40iO3M6NDoidHlwZSI7czo4OiJtZWRpYV9pZCI7czo4OiJtZWRpYV9pZCI7czo0MzoiQklMM1VzVWh4ZTNtd185UVU5c3ItczBqS2ZraEZ5RlNYd2QwMmpEWTI1SSI7fWk6MTthOjM6e3M6NDoibmFtZSI7czoxMjoi6IGU57O75a6i5pyNIjtzOjQ6InR5cGUiO3M6NDoidmlldyI7czozOiJ1cmwiO3M6NzU6Imh0dHA6Ly93d3cuZGlhbmxlbWEubmV0L2FwcC9pbmRleC5waHA/aT02JmM9ZW50cnkmZG89bXljb3Vwb24mbT13ZWlzcmNfZGlzaCI7fWk6MjthOjM6e3M6NDoibmFtZSI7czoxMjoi6IGU55uf5ZWG5a62IjtzOjQ6InR5cGUiO3M6NDoidmlldyI7czozOiJ1cmwiO3M6NTY6Imh0dHA6Ly93d3cuZGlhbmxlbWEubmV0L2FwcC9pbmRleC5waHA/aT02JmM9ZW50cnkmZWlkPTM5Ijt9aTozO2E6Mzp7czo0OiJuYW1lIjtzOjEyOiLlubPlj7DkvJjlir8iO3M6NDoidHlwZSI7czo4OiJtZWRpYV9pZCI7czo4OiJtZWRpYV9pZCI7czo0MzoiQklMM1VzVWh4ZTNtd185UVU5c3ItczBqS2ZraEZ5RlNYd2QwMmpEWTI1SSI7fX19aToyO2E6Mjp7czo0OiJuYW1lIjtzOjEyOiLmk43kvZzmjIfljZciO3M6MTA6InN1Yl9idXR0b24iO2E6NTp7aTowO2E6Mzp7czo0OiJuYW1lIjtzOjE1OiLnlLPor7flhazkvJflj7ciO3M6NDoidHlwZSI7czo4OiJtZWRpYV9pZCI7czo4OiJtZWRpYV9pZCI7czo0MzoiQklMM1VzVWh4ZTNtd185UVU5c3ItanNyZnB3ZGJ0OHZSSlVEclNzbUpSbyI7fWk6MTthOjM6e3M6NDoibmFtZSI7czoxODoi5rOo5YaM5bmz5Y+w6LSm5Y+3IjtzOjQ6InR5cGUiO3M6ODoibWVkaWFfaWQiO3M6ODoibWVkaWFfaWQiO3M6NDM6IkJJTDNVc1VoeGUzbXdfOVFVOXNyLW52Y05PUDZ4RTVuTVVuWlZLY0xOa00iO31pOjI7YTozOntzOjQ6Im5hbWUiO3M6MTI6Iui/nuaOpeW5s+WPsCI7czo0OiJ0eXBlIjtzOjg6Im1lZGlhX2lkIjtzOjg6Im1lZGlhX2lkIjtzOjQzOiJCSUwzVXNVaHhlM213XzlRVTlzci1zMGpLZmtoRnlGU1h3ZDAyakRZMjVJIjt9aTozO2E6Mzp7czo0OiJuYW1lIjtzOjEyOiLotK3kubDlpZfppJAiO3M6NDoidHlwZSI7czo4OiJtZWRpYV9pZCI7czo4OiJtZWRpYV9pZCI7czo0MzoiQklMM1VzVWh4ZTNtd185UVU5c3ItczBqS2ZraEZ5RlNYd2QwMmpEWTI1SSI7fWk6NDthOjM6e3M6NDoibmFtZSI7czoxMjoi5ZCO5Y+w5pON5L2cIjtzOjQ6InR5cGUiO3M6MTI6InBpY19zeXNwaG90byI7czozOiJrZXkiO3M6MzoiMTIzIjt9fX19fQ==', 1, 1510218126, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_account_modules`
--

CREATE TABLE IF NOT EXISTS `ims_uni_account_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL,
  `settings` text NOT NULL,
  `shortcut` tinyint(1) unsigned NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `ims_uni_account_modules`
--

INSERT INTO `ims_uni_account_modules` (`id`, `uniacid`, `module`, `enabled`, `settings`, `shortcut`, `displayorder`) VALUES
(1, 1, 'basic', 1, '', 0, 0),
(2, 1, 'news', 1, '', 0, 0),
(3, 1, 'music', 1, '', 0, 0),
(4, 1, 'userapi', 1, '', 0, 0),
(5, 1, 'recharge', 1, '', 0, 0),
(6, 1, 'weisrc_dish', 1, '', 0, 0),
(7, 2, 'weisrc_dish', 1, '', 1, 0),
(9, 1, 'kim_financial', 1, '', 0, 0),
(10, 2, 'kim_financial', 1, '', 1, 0),
(11, 3, 'kim_financial', 1, '', 0, 0),
(14, 6, 'weisrc_dish', 1, 'a:1:{s:11:"weisrc_dish";a:5:{s:10:"storecount";s:1:"0";s:14:"copyright_name";s:0:"";s:13:"copyright_url";s:0:"";s:8:"is_jueqi";i:0;s:11:"is_fengniao";i:0;}}', 0, 0),
(13, 3, 'weisrc_dish', 1, '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_account_users`
--

CREATE TABLE IF NOT EXISTS `ims_uni_account_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `role` varchar(255) NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_memberid` (`uid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `ims_uni_account_users`
--

INSERT INTO `ims_uni_account_users` (`id`, `uniacid`, `uid`, `role`, `rank`) VALUES
(1, 1, 1, 'manager', 0),
(2, 2, 2, 'owner', 0),
(3, 2, 3, 'manager', 0),
(4, 3, 4, 'owner', 0),
(5, 6, 6, 'operator', 0),
(6, 6, 7, 'operator', 0),
(7, 5, 9, 'operator', 0),
(8, 7, 8, 'owner', 0),
(9, 8, 10, 'owner', 0),
(10, 9, 14, 'owner', 0),
(11, 10, 13, 'owner', 0),
(12, 11, 16, 'owner', 0),
(13, 6, 17, 'operator', 0),
(14, 11, 18, 'operator', 0),
(15, 12, 19, 'owner', 0),
(16, 14, 2, 'owner', 0),
(17, 6, 20, 'operator', 0),
(18, 15, 13, 'owner', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_group`
--

CREATE TABLE IF NOT EXISTS `ims_uni_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `modules` varchar(15000) NOT NULL,
  `templates` varchar(5000) NOT NULL DEFAULT '',
  `uniacid` int(10) unsigned NOT NULL,
  `price` decimal(11,2) DEFAULT '0.00' COMMENT '套餐价格',
  `hide` int(1) DEFAULT '0' COMMENT '是否隐藏 0-否 1-是',
  `moduletime` text NOT NULL,
  `owner_uid` int(10) NOT NULL,
  `day` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `ims_uni_group`
--

INSERT INTO `ims_uni_group` (`id`, `name`, `modules`, `templates`, `uniacid`, `price`, `hide`, `moduletime`, `owner_uid`, `day`) VALUES
(1, '点餐套餐服务', 'a:1:{i:0;s:11:"weisrc_dish";}', 'a:2:{i:0;s:1:"1";i:1;s:1:"2";}', 0, '720.00', 0, '', 0, '30'),
(5, '商家', 'a:1:{i:0;s:11:"weisrc_dish";}', 'a:2:{i:0;s:1:"1";i:1;s:1:"2";}', 0, '0.00', 0, '', 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_payorder`
--

CREATE TABLE IF NOT EXISTS `ims_uni_payorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(200) DEFAULT NULL,
  `status` int(1) DEFAULT '0' COMMENT '0-未付款 1-已付款',
  `money` decimal(10,2) DEFAULT NULL,
  `pay_time` int(10) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `order_time` int(10) DEFAULT NULL,
  `credittype` varchar(20) DEFAULT NULL,
  `pay_type` int(1) DEFAULT '0',
  `order_no` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- 转存表中的数据 `ims_uni_payorder`
--

INSERT INTO `ims_uni_payorder` (`id`, `orderid`, `status`, `money`, `pay_time`, `uid`, `order_time`, `credittype`, `pay_type`, `order_no`) VALUES
(1, '20170908172624249056', 0, '10.00', NULL, 1, 1504862784, 'credit2', 1, NULL),
(2, '20171016114943015757', 0, '10.00', NULL, 1, 1508125783, 'credit2', 1, NULL),
(3, '20171017162912185835', 0, '10.00', NULL, 1, 1508228952, 'credit2', 1, NULL),
(4, '20171017163047195711', 0, '100.00', NULL, 1, 1508229047, 'credit2', 1, NULL),
(5, '20171019163856385835', 0, '10.00', NULL, 1, 1508402335, 'credit2', 1, NULL),
(6, '20171019180731848838', 0, '10.00', NULL, 2, 1508407651, 'credit2', 1, NULL),
(7, '20171020112718428477', 0, '1.00', NULL, 1, 1508470038, 'credit2', 1, NULL),
(8, '20171102161548690513', 0, '10.00', NULL, 1, 1509610548, 'weixinpay', 1, NULL),
(9, '20171102161607395351', 0, '10.00', NULL, 1, 1509610567, 'weixinpay', 1, NULL),
(10, '20171102161629800395', 0, '10.00', NULL, 1, 1509610589, 'weixinpay', 1, NULL),
(11, '20171102161939636927', 0, '10.00', NULL, 1, 1509610779, 'weixinpay', 1, NULL),
(12, '20171102161942015687', 0, '10.00', NULL, 1, 1509610782, 'weixinpay', 1, NULL),
(13, '20171102162139760466', 0, '10.00', NULL, 1, 1509610899, 'weixinpay', 1, NULL),
(14, '20171102162158076003', 0, '10.00', NULL, 1, 1509610918, 'weixinpay', 1, NULL),
(15, '20171102162216536890', 0, '10.00', NULL, 1, 1509610936, 'weixinpay', 1, NULL),
(16, '20171102162233897677', 0, '10.00', NULL, 1, 1509610953, 'weixinpay', 1, NULL),
(17, '20171102162255563865', 0, '10.00', NULL, 1, 1509610975, 'weixinpay', 1, NULL),
(18, '20171102162518643475', 1, '0.01', 1509613183, 1, 1509611118, 'weixinpay', 1, '20171102162518643475'),
(19, '20171102162743066683', 0, '10.00', NULL, 1, 1509611263, 'weixinpay', 1, NULL),
(20, '20171102162857696535', 0, '10.00', NULL, 1, 1509611337, 'weixinpay', 1, NULL),
(21, '20171102164020127936', 1, '0.01', 1509612040, 1, 1509612020, 'weixinpay', 1, '20171102164020127936'),
(22, '20171102164510574870', 1, '0.01', 1509612320, 1, 1509612310, 'weixinpay', 1, '20171102164510574870'),
(23, '20171102164658180733', 1, '0.01', 1509612430, 2, 1509612418, 'weixinpay', 1, '20171102164658180733'),
(24, '20171102165625426639', 1, '0.01', 1509612995, 2, 1509612985, 'weixinpay', 1, '20171102165625426639'),
(25, '20171102173215334485', 0, '100.00', NULL, 1, 1509615135, 'credit2', 1, NULL),
(26, '20171102173246128972', 0, '100.00', NULL, 4, 1509615166, 'weixinpay', 1, NULL),
(27, '20171102173255595416', 1, '0.10', 1509615192, 4, 1509615175, 'weixinpay', 1, '20171102173255595416'),
(28, '20171102173329755729', 0, '10.00', NULL, 4, 1509615209, 'credit2', 1, NULL),
(29, '20171102175055998553', 0, '102.00', NULL, 1, 1509616255, 'credit2', 1, NULL),
(30, '20171102181652116648', 0, '10.00', NULL, 8, 1509617812, 'credit2', 1, NULL),
(31, '20171102182249943496', 0, '10.00', NULL, 1, 1509618169, 'credit2', 1, NULL),
(32, '20171103092938307796', 0, '10.00', NULL, 1, 1509672578, 'weixinpay', 1, NULL),
(33, '20171103092948557394', 1, '0.01', 1509672604, 1, 1509672588, 'weixinpay', 1, '20171103092948557394'),
(34, '20171103104055041516', 0, '10.00', NULL, 8, 1509676854, 'weixinpay', 1, NULL),
(35, '20171103105109264394', 0, '600.00', NULL, 1, 1509677469, 'weixinpay', 1, NULL),
(36, '20171103105205792582', 0, '10.00', NULL, 1, 1509677525, 'weixinpay', 1, NULL),
(37, '20171103174350308937', 0, '10000.00', NULL, 1, 1509702230, 'weixinpay', 1, NULL),
(38, '20171108145453065976', 0, '10086.00', NULL, 10, 1510124093, 'weixinpay', 1, NULL),
(39, '20171108150701746518', 0, '10.00', NULL, 1, 1510124821, 'weixinpay', 1, NULL),
(40, '20171108150941470888', 0, '10.00', NULL, 8, 1510124981, 'weixinpay', 1, NULL),
(41, '20171108200039649990', 0, '10.00', NULL, 8, 1510142439, 'weixinpay', 1, NULL),
(42, '20171108204103276313', 0, '1080.00', NULL, 8, 1510144863, 'weixinpay', 1, NULL),
(43, '20171109112436433855', 0, '1000.00', NULL, 8, 1510197876, 'weixinpay', 1, NULL),
(44, '20171109164156775394', 0, '10.00', NULL, 1, 1510216916, 'weixinpay', 1, NULL),
(45, '20171110091858047531', 0, '1080.00', NULL, 16, 1510276738, 'weixinpay', 1, NULL),
(46, '20171120153535992847', 0, '10.00', NULL, 8, 1511163335, 'weixinpay', 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_settings`
--

CREATE TABLE IF NOT EXISTS `ims_uni_settings` (
  `uniacid` int(10) unsigned NOT NULL,
  `passport` varchar(200) NOT NULL DEFAULT '',
  `oauth` varchar(100) NOT NULL DEFAULT '',
  `uc` varchar(500) NOT NULL,
  `notify` varchar(2000) NOT NULL DEFAULT '',
  `creditnames` varchar(500) NOT NULL DEFAULT '',
  `creditbehaviors` varchar(500) NOT NULL DEFAULT '',
  `welcome` varchar(60) NOT NULL DEFAULT '',
  `default` varchar(60) NOT NULL DEFAULT '',
  `shenhe` varchar(10) NOT NULL,
  `default_message` varchar(2000) NOT NULL,
  `shortcuts` text NOT NULL,
  `payment` text NOT NULL,
  `groupdata` varchar(100) NOT NULL,
  `stat` varchar(300) NOT NULL,
  `bootstrap` varchar(120) NOT NULL,
  `menuset` text NOT NULL,
  `default_site` int(10) unsigned DEFAULT '0',
  `sync` tinyint(3) unsigned NOT NULL,
  `jsauth_acid` int(10) unsigned NOT NULL,
  `recharge` varchar(500) NOT NULL,
  `tplnotice` varchar(1000) NOT NULL,
  `grouplevel` tinyint(3) unsigned NOT NULL,
  `mcplugin` varchar(500) NOT NULL,
  `msg` varchar(2000) NOT NULL COMMENT '短信配置参数',
  `print` varchar(2000) NOT NULL COMMENT '打印机配置参数',
  `exchange_enable` tinyint(3) unsigned NOT NULL,
  `coupon_type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_uni_settings`
--

INSERT INTO `ims_uni_settings` (`uniacid`, `passport`, `oauth`, `uc`, `notify`, `creditnames`, `creditbehaviors`, `welcome`, `default`, `shenhe`, `default_message`, `shortcuts`, `payment`, `groupdata`, `stat`, `bootstrap`, `menuset`, `default_site`, `sync`, `jsauth_acid`, `recharge`, `tplnotice`, `grouplevel`, `mcplugin`, `msg`, `print`, `exchange_enable`, `coupon_type`) VALUES
(1, 'a:3:{s:8:"focusreg";i:0;s:4:"item";s:5:"email";s:4:"type";s:8:"password";}', 'a:2:{s:6:"status";s:1:"0";s:7:"account";s:1:"0";}', 'a:1:{s:6:"status";i:0;}', 'a:1:{s:3:"sms";a:2:{s:7:"balance";i:0;s:9:"signature";s:0:"";}}', 'a:5:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}s:7:"credit3";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}s:7:"credit4";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}s:7:"credit5";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}}', 'a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}', '', '', '', '', '', 'a:4:{s:6:"credit";a:1:{s:6:"switch";b:0;}s:6:"alipay";a:4:{s:6:"switch";b:0;s:7:"account";s:0:"";s:7:"partner";s:0:"";s:6:"secret";s:0:"";}s:6:"wechat";a:5:{s:6:"switch";b:0;s:7:"account";b:0;s:7:"signkey";s:0:"";s:7:"partner";s:0:"";s:3:"key";s:0:"";}s:8:"delivery";a:1:{s:6:"switch";b:0;}}', 'a:4:{s:8:"isexpire";i:1;s:7:"endtime";d:1507456793;s:10:"oldgroupid";N;s:7:"is_auto";i:1;}', '', '', '', 1, 0, 0, '', '', 0, '', '', '', 0, 0),
(2, '', '', '', '', 'a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}', 'a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}', '', '', '', '', '', '', 'a:4:{s:8:"isexpire";i:1;s:7:"endtime";i:1507468709;s:10:"oldgroupid";N;s:7:"is_auto";i:1;}', '', '', '', 2, 0, 0, '', '', 0, '', '', '', 0, 0),
(3, '', '', '', '', 'a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}', 'a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}', '', '', '', '', '', '', 'a:4:{s:8:"isexpire";i:1;s:7:"endtime";i:1507474006;s:10:"oldgroupid";N;s:7:"is_auto";i:1;}', '', '', '', 3, 0, 0, '', '', 0, '', '', '', 0, 0),
(4, '', 'a:2:{s:7:"account";s:1:"4";s:4:"host";s:0:"";}', '', '', 'a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}', 'a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}', '', '', '', '', '', '', '', '', '', '', 4, 0, 0, '', '', 0, '', '', '', 0, 0),
(5, '', 'a:2:{s:7:"account";s:1:"5";s:4:"host";s:0:"";}', '', '', 'a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}', 'a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}', '', '', '', '', '', '', '', '', '', '', 5, 0, 0, '', '', 0, '', '', '', 0, 0),
(6, '', 'a:2:{s:7:"account";s:1:"6";s:4:"host";s:0:"";}', '', '', 'a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}', 'a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}', '', '', '', '', '', 'a:3:{s:6:"wechat";a:6:{s:6:"switch";s:1:"1";s:7:"account";s:1:"6";s:7:"signkey";s:32:"F95C9695402C23CFE4B96985A3559C65";s:7:"version";s:1:"2";s:5:"mchid";s:10:"1491081962";s:6:"apikey";s:32:"F95C9695402C23CFE4B96985A3559C65";}s:8:"delivery";a:1:{s:6:"switch";b:0;}s:13:"wechat_refund";a:3:{s:6:"switch";s:1:"1";s:4:"cert";s:2154:"a04dn/Q76a46G60pUdKPMtU48KSCFUBCHo6YIFM0XloNj+Bmr8m78qpthvA1eXt3pB7yvvRMbaglpvtStjAenqaLL25LAo+ufLIdmw5GAKDTXQFi+w8qgVBC/yvzhudTllFMT9uQvP4exBKGIy/HFQ8hkOTwDaEteXiUliZm+yIoIsgsjbmq5la4Dcgvek0jXeZFbqc8jRGdRJE455mNSyEU9S2H6+5rikMdH9duN2CGExYyw8Wyg0O31cilT62mqWz0zlGrhst5QDyMVHtbSnWZN0g4kPX4ReQN/t34b6Jy4YwyZg6bZLdfcdmKnQ7v4Lq7gJsXS6SMhXxtjRi+JToaSoP+5UC29g4j4p5xOweYGraBiJSubghouOO86W9/Ch/iNxqwKLWKbx2LzXgvAVtUVEU4X7AE2FJj5RYv7OvaXoMEqaQk3CfmRVFzmxWnNcV+R4+yaAvEwH10dWPnypQkaY5EXa81mFGbG2+mFF82t9YNL8DztglcnfdPUAAGFWvJyMOtE1Oi0gvs45cv+7OrYaYFxsQmrnXfYRZ/VFkE0ywOWn+cknMdovxl9wZXaoPu0T7Jse5eQzU1Tw+l8lJACYBB0/jCaJHkNDhAGHteyvU61FVCBlfsBhCxmg3GTUP8vLIqBVqKYa2SVFw0cbXz7p0ZSFHwlen4hRTrP3V2RlPVyh1pLFkaM8ETzU5N64N5UnK8cnJXW/JfF1M2Ar2CrTgGB4TgYutKiK8MNdJaZfw+2w01MCZ+7H/FJ74gnlXTUIUmuipcLOTvGgBWxxGuVwtVyAEs3aJz9uJOpEHQMtFRgcuXArz7VM8hhoXRLias3u9iBQ/Idw6ltDFai5Dr7fLA6bZn7jINziHKKA1akfWksfLwCYMjtkg/6c1L8NP0hv5KYlES0bwgdewycoJ3XBh0s7exZwfsAiKtvHeVtE2SW9uLpnks1SyKvQ0ndsEwx53Dztg8ZaoHBHWzZbSK+DcRcmTNtsvRJD4S5nuY6VG9ewL/9ziFRWmi+8aypl2dmp8WXoOfb/MjAjpOUeuZ7mO7IURmhlES/wWUBWIIF42bCaBSsGXv9TYOOal6TL90qHLJ0TNDqQL8gbCn/UkoHXVFr9XrId3BiWytK1V35xD4vj5OROdyBWiwZNL7SEgxignyFHdkh9JOYBbmlD6v47rk57AY4nfg9/vBF4fOpXGSXarIa948BLZ4WR5hErkk5r8hh2O/0yyPEdMEpR8+7sN2zqscPe2qq46odrvnbxn+UXfbwlM0FInIjzyCLasgPrg+bnhrZCzGM5hrjZLepnzW4xf/KE+GDrpe2jWs8Z+Q4Aa73v11KJH2gJk4a1F9MVJEKJ/NLDr7c4xmwBWDq1Y31uGvvB90MTDGIE/7A5ifIilAVXKt+KiQP6GNgiIK4x/Dlgu9UKbNWiuZ+Priqu7kuANoCuEOAEMKSgl3DUOQWwuJ0eWhHXKpR9PCwguqskePCfs0g5TG2NvjmD+oLwcMZi0RD01N8IM3T2bDLT6X4glGGyw8FWJHdO+BQitQ3e+zTwgSNDjawtson2karJXeNv1epYAcEPcaIL+dlF/9enRTuyvejYtyslmbhFnZLhl+rFTp8PyfuCMuO5ehkS0TRfNWYsYZrggV/klSTQbBYJ0nUUN5NKF+Fkj5EcAf5fXuVoCzjh7vAbfO1tC+TdySS6yNqJtDQK6u8jcQKK4oYgsuvAhB8eaN8eUOOBHjONYjTpcwjDwupKQjKOF7z08NvoQy65tOquotIxUmqn/wHYOWuIqG7qoBfOOstghhR3bpXV9h1j32eptjyQHMBGxkso6ku8NU9efT1sA2bBvZlVTYtSc0TMw85YhFeL+qmAnEBC8OONQXqFreDT2fDu5QXRrubzmm6GyeujmQ4hfcv1jNjqUGXaWDEsQ3u5W6U/GIuNOp4XpXvJj0BGfvM0BiF5lAMMkALLgN6nUKhk7Rt7Mthto52T7Ppkw15LXNkiDccoP7HW1Xtfj5bJ+/wK1MkPodagLT40V+afQ9yCEjOV87i6nMPCuxSNnRLHbzMo5L/+5ZqrAQzWiywRZ/uIGkq8RCJ0Y5yDzepkVAHRUWM2tOAIKpT/Rewk2aBdpv72h20ttA0QRWQ5LVwCrzelumziJxLTWC0uwD4w";s:3:"key";s:2311:"8e32vQuX+4GUPtY4albH7cdtdXU/yA2AuvZd9q79RL5IylrTN6YJP1vOs8f0OsETibE6xn7RuPpNvd5KnEJIk+hc+vBe490JFLjf1OLDovsqJWKoWzyNSS03aa9zQSf61rTGzv3KCQsJIxmoEUSseyxSay9jiE/wk3ilkl9fZMkIbwZFJVBXC98rys2Yl7KD4ylEgURt6rZEH65dbt3JOuTDdlFRPQek8pppHlmyvoSSwfZTbSfwm4RcCFJWLeMn7lz+va1fnpTakj7UMRkgTEiALrQO+PLFI74drgaBYmQJrtI7I8cdF1ym1iOhOOxXVCQ3NMNDtUwwtIOXSSYPn9pNUxF5/iNmsfFkZucvHbQmHztM4zC/QuPBknuv6xMCdIP+bNnJN46s7BwkSj4EfzUtabzBKetGbUnmKIB+1N14/beAjCoZ/2/oGBDxv4huYleqNU1Eig5M3hQGgS1voRKeC1fDILMqMN4jT5kvpkk1vmDGWFyYRoltseBsu2kxFxl/FxgKLrZ4hhDzXppGdVM/2/Rcek8SnFIRHwEqK5fJyMJbiiS0PPHe6HcKshLdNAXC8JuthKL84EK717Wo6/LMYlcV4k/RT0OCPTtvrGSl9bpigv27PbY+WcwxgIrRUBvrr82F1uonE6DyJHsffBIpNsahoOUww/ghAgBDgHvhqLK+w6K2hngza0QcWj1Ukf24zQG1IxNgFlIdRuVKVbglbD05f1JRt7mc4LW3foxbQeaxd/nuAuNYunhqFW95zQNk8655qFa3ZyS0kmTf4dSduFQVJZ4h3a6dmuhqdZYnSd+hrmuuVlSe9G7kjq+ysJOjF7TTGoLWPiLrnY53WsIKtf6bRha8tDkwepTaqWLvBpNZb40+kMADA3e16Q+cIRlyIqBx7eMR2LIcXMeKuewZsD6vq+bk0l61RQTVS1/e6DOVzJT5e7/R5DW9OWYMS8pFR1k9oScXyfBu3/hIRW8WPofVyNoqudlFm/JZC/EMkfeWYQk6GD6l6wThtjx3X5B2eRCrPbg6qG/Yp6MTXKeEz1hq9Bn2wH7jvsaYYF1Y2umxALgIw9uaZ1veHNiHjPDPPI7RJ2BUXXHRDn19ocVCISeuL56wgg83YwugYXX558hCa+UtD1JIheFuqBQhPkTHfYMyj13pd0VkpjWas4uX08qxdwIZxIMdSzyRClGlHei9P+K7a9uLGj5Pt1WnFlRIV4B9mo6AzwA+FFGhWNDVuay2EDjRnX21TlcWbCwvaCpuVr5w2fAqxygILMPnQ9p/JkwCNecLJaWslQJJFPjp0RFC/u0EERPtXSBt4XyFCsaVxtXVM/4LovvDuyYRLrYvodc7xcgHUQhSs1UQngXiKvGmjyAxf1wBdsGaYvM4sdAo4lfZoJxI3fmqhe1fi3auLfXt+1JGTRZt7mqk9lKHW2wEKKUWxrGiGHqEtD2Dz2rvUesB6C5Wre5jHtPtOqwPasn7PL1cBksPtr3i2ox0Blg8UPj3Rfr0Qo0LRY2KN+FpJeDT41FTbbxkiiSsxh7umGfBLclRv2cKkY1tJ6Hi4oQRcaLLEQBKCt7Zitz+ajKYaFlJK0tqg3GNpTdzwDoldtg8+OoqDro7EqC0FOpf5uAmHv3fu72OXzs/EIvnkgVAJ67oypxt8V8UTvPT8wGERHDkjlGM2bUl08i1cRncMk4SUE7Z8pmtBvWtcekYF5YVsKBa7ZFxItbVX29n9ZOuKnebFH1lRkN26cuN94+PD9IKsMEfLoF7KGvcF6kFHpi1YDjKQ7cEvcsxiRslrapc9MMZ38Timc2uz1X01nMc7qXKEVneenVzlw/5X8ofLu5Za8JSBv+2+C5liZwup5e8bVEQts4PIZeXzRMEP5yk+y+jgGJbIVXZqzPC8R0YJieJMuWTkPHvHyrG3YJJw8YgBoxMyfUWBEJ9nyv2PIiCyNJsKCNQkT8yGWRW6Bf2CV2cGAoKOgcEjetl0Wuol13HaSXqxkc967VuRgOVGswMMqb+Px9IHdD4fruLVasNoFRLt2g5DgmTIULvHPJC4/wfkSxZK06kx5AniAQYa/q3nCGHyZxMLy61z2gZwCDHxYKumcVkLAaEIeAwS78n7oabDDpLEC55hvuk2JFKJmkltYdlO1ygWpD54joNTd3GATiqLtNlk1EpKCe3cjJdCB9c6kvbM2a+219sH3wVysQ9yJwEwRFLuFRLTT/G16v+4h5A8xeKC49dnrhJ2rmY77lugTX/Pdc+TjFLyNOsp/tkNVew219JNnL0UCGOxbzk5xPyFhwNn8hs3kInuFd013kOHto";}}', '', '', '', '', 6, 0, 0, '', '', 0, '', '', '', 0, 0),
(7, '', '', '', '', 'a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}', 'a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}', '', '', '', '', '', '', '', '', '', '', 7, 0, 0, '', '', 0, '', '', '', 0, 0),
(8, '', '', '', '', 'a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}', 'a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}', '', '', '', '', '', '', '', '', '', '', 8, 0, 0, '', '', 0, '', '', '', 0, 0),
(9, '', '', '', '', 'a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}', 'a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}', '', '', '', '', '', '', '', '', '', '', 9, 0, 0, '', '', 0, '', '', '', 0, 0),
(10, '', 'a:2:{s:4:"host";s:0:"";s:7:"account";s:0:"";}', '', '', 'a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}', 'a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}', '', '', '', '', '', '', '', '', '', '', 10, 0, 0, '', '', 0, '', '', '', 0, 0),
(11, '', '', '', '', 'a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}', 'a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, '', '', 0, '', '', '', 0, 0),
(12, '', '', '', '', 'a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}', 'a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}', '', '', '', '', '', '', '', '', '', '', 12, 0, 0, '', '', 0, '', '', '', 0, 0),
(13, '', '', '', '', 'a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}', 'a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}', '', '', '', '', '', '', '', '', '', '', 13, 0, 0, '', '', 0, '', '', '', 0, 0),
(14, '', '', '', '', 'a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}', 'a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}', '', '', '', '', '', '', '', '', '', '', 14, 0, 0, '', '', 0, '', '', '', 0, 0),
(15, '', '', '', '', 'a:2:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}}', 'a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}', '', '', '', '', '', '', '', '', '', '', 15, 0, 0, '', '', 0, '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_verifycode`
--

CREATE TABLE IF NOT EXISTS `ims_uni_verifycode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `verifycode` varchar(6) NOT NULL,
  `total` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_userapi_cache`
--

CREATE TABLE IF NOT EXISTS `ims_userapi_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_userapi_reply`
--

CREATE TABLE IF NOT EXISTS `ims_userapi_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `description` varchar(300) NOT NULL DEFAULT '',
  `apiurl` varchar(300) NOT NULL DEFAULT '',
  `token` varchar(32) NOT NULL DEFAULT '',
  `default_text` varchar(100) NOT NULL DEFAULT '',
  `cachetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `ims_userapi_reply`
--

INSERT INTO `ims_userapi_reply` (`id`, `rid`, `description`, `apiurl`, `token`, `default_text`, `cachetime`) VALUES
(1, 1, '"城市名+天气", 如: "北京天气"', 'weather.php', '', '', 0),
(2, 2, '"百科+查询内容" 或 "定义+查询内容", 如: "百科姚明", "定义自行车"', 'baike.php', '', '', 0),
(3, 3, '"@查询内容(中文或英文)"', 'translate.php', '', '', 0),
(4, 4, '"日历", "万年历", "黄历"或"几号"', 'calendar.php', '', '', 0),
(5, 5, '"新闻"', 'news.php', '', '', 0),
(6, 6, '"快递+单号", 如: "申通1200041125"', 'express.php', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_users`
--

CREATE TABLE IF NOT EXISTS `ims_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `joindate` int(10) unsigned NOT NULL DEFAULT '0',
  `joinip` varchar(15) NOT NULL DEFAULT '',
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(15) NOT NULL DEFAULT '',
  `remark` varchar(500) NOT NULL DEFAULT '',
  `ucuserid` int(10) unsigned NOT NULL,
  `viptime` varchar(13) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `credit1` decimal(11,2) DEFAULT '0.00' COMMENT '用户积分',
  `credit2` decimal(11,2) DEFAULT '0.00' COMMENT '交易币',
  `type` tinyint(3) unsigned NOT NULL,
  `owner_uid` int(10) NOT NULL,
  `founder_groupid` tinyint(4) NOT NULL,
  `agentid` int(10) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `ims_users`
--

INSERT INTO `ims_users` (`uid`, `groupid`, `username`, `password`, `salt`, `status`, `joindate`, `joinip`, `lastvisit`, `lastip`, `remark`, `ucuserid`, `viptime`, `starttime`, `endtime`, `credit1`, `credit2`, `type`, `owner_uid`, `founder_groupid`, `agentid`) VALUES
(1, 1, 'admin', '98ff791ef3f76455fb105a1274bba2b74e8fd6c7', 'd65f8539', 0, 1504492988, '', 1511322370, '59.57.165.118', '', 0, '', 0, 423707617, '0.00', '21906.29', 0, 0, 0, NULL),
(2, 1, 'admin2', '1a862e8db3e59f0f2c64d36fd36da19f07bcc55f', 'DFWWtmvv', 2, 1504493840, '27.154.210.162', 1509612401, '202.109.247.206', '123456', 0, '', 1504493840, 0, '0.00', '48500.01', 0, 0, 0, NULL),
(3, 1, 'admin3', 'b1312043d27ffa999ba8a5d5a6c90af5985319e4', 'QRHeiRfw', 3, 1504533470, '27.154.210.162', 1504875920, '27.154.210.162', '', 0, '', 1504533470, 1507468709, '0.00', '0.00', 0, 0, 0, NULL),
(4, 1, 'admin4', 'e6e9ecb6219a42d6d91148998b95d6d27b865ed1', 'ifozUkCM', 3, 1504876925, '27.154.210.162', 1509615155, '27.154.75.22', 'AAA', 0, '', 1504876925, 1689436800, '0.00', '99994599.10', 0, 0, 0, NULL),
(5, 1, 'dlm_admin', '5e6701347e1802e072b42fe86183b7f9e7bd7094', 'l4YTKJTd', 3, 1509073010, '183.250.153.60', 1509073010, '183.250.153.60', '管理员', 0, '', 1509073010, 1509159410, '0.00', '0.00', 0, 0, 0, NULL),
(6, 0, 'admin9', '1d012a9d8e3345ccfccdf583a92297944114c2c5', 'y2dK6kIf', 3, 1509358357, '27.154.75.249', 1510624109, '27.154.75.230', '', 0, '', 0, 0, '0.00', '0.00', 0, 0, 0, NULL),
(7, 0, 'admin10', '1c323f611e32673761e656d5df6b6d56c5bddb70', 'GZKf7O0a', 3, 1509358482, '27.154.75.249', 1509358482, '27.154.75.249', '', 0, '', 0, 0, '0.00', '0.00', 0, 0, 0, NULL),
(8, 1, 'admin11', 'a427231b929b26752a4c61a79adef7d014c5b8cd', 'C9Ueizq3', 2, 1509617757, '27.154.75.22', 1511167444, '27.154.73.219', '', 0, '', 1509617757, 1512144000, '0.00', '0.00', 0, 0, 0, NULL),
(9, 0, 'kkbhb', '63487c91bac09ee8b4a114feac24b25473d22aa9', 'nG4ENNQ3', 3, 1509696207, '27.154.174.127', 1510713947, '59.57.165.172', '', 0, '', 0, 0, '0.00', '0.00', 0, 0, 0, NULL),
(13, 1, 'Tyuankeo', 'b0c872be7663c55afb4c5755bc523758b8822f37', 's18NtJN4', 2, 1510198413, '27.154.194.144', 1511143087, '59.57.165.172', '', 0, '', 1510198413, 0, '0.00', '0.00', 0, 0, 0, NULL),
(10, 1, 'zyb123456', '85b7d85581716e8381dd59b19585ccb30d126b02', 'Svz33Nx3', 3, 1510123698, '27.154.194.144', 1510123713, '27.154.194.144', '', 0, '', 1510123698, 1510210098, '0.00', '0.00', 0, 0, 0, NULL),
(11, 1, 'dianlema1', 'debfe48999d3196cc8e58ba4e8775a36700f45ef', 'Z9Iehwhy', 2, 1510143782, '27.154.194.144', 1510143795, '27.154.194.144', '', 0, '', 1510143782, 1510230182, '0.00', '0.00', 0, 0, 0, NULL),
(12, 1, 'dian1', '6232b4a6e34f18503099348bcf702cac350e9aea', 'C6r6pbnN', 2, 1510144741, '27.154.194.144', 1510144777, '27.154.194.144', '', 0, '', 1510144741, 1510231141, '0.00', '0.00', 0, 0, 0, NULL),
(14, 1, 'adminwtx', 'd0c3120d5601bb589010d557344a1d934e25295a', 'z4BkvBZn', 2, 1510212571, '27.154.75.230', 1510215124, '27.154.75.230', '', 0, '', 1510212571, 0, '0.00', '0.00', 0, 0, 0, NULL),
(15, 1, 'sss', 'd2ef7312729d8abb276aeb76cdaf196ec8b0b2bb', 'KoHOhKW6', 2, 1510216655, '27.154.194.144', 1510216655, '27.154.194.144', '', 0, '', 1510216655, 1510303055, '0.00', '0.00', 0, 0, 0, NULL),
(16, 1, 'zyb1234', 'aaa190564eb897c81750bc405a52b1dba54cf542', 'JfTw8pBf', 2, 1510220410, '27.154.194.144', 1510300821, '27.154.194.144', '', 0, '', 1510220410, 1510306810, '0.00', '0.00', 0, 0, 0, NULL),
(17, 0, 'neko', '9cb2bb9ea5c137abc9899ee49a3f8922eb77539b', 'VVARhvPp', 2, 1510297686, '27.154.194.144', 1510297806, '27.154.194.144', '', 0, '', 0, 0, '0.00', '0.00', 0, 0, 0, NULL),
(18, 0, 'test1', 'f8805b91f4aa2b60b20d9edf8c82be9238a69af3', 'c7Ona5cA', 2, 1510297785, '27.154.194.144', 1510299282, '27.154.194.144', '', 0, '', 0, 0, '0.00', '0.00', 0, 0, 0, NULL),
(19, 1, '猿人小哥', '5c072cd6e61379d724c8df8a7e62fdbfdf2a81ab', 'Sen7Zi9G', 2, 1510303861, '27.154.24.39', 1510560713, '27.154.25.80', '店长', 0, '', 1510303861, 0, '0.00', '1.00', 0, 0, 0, NULL),
(20, 0, 'chenchengguo', '69c80dba1c68210e7b7e7c429b16b5a6cf9455dd', 'QZvsWH3s', 2, 1510631465, '59.57.165.124', 1510631573, '59.57.165.124', '', 0, '', 0, 0, '0.00', '0.00', 0, 0, 0, NULL),
(21, 1, 'hss', '9d92e367ec399e613fd28db3796845593d03f6f6', 'Tc4FZ8hY', 2, 1510709997, '59.57.165.172', 1510710260, '59.57.165.172', '', 0, '', 1510709997, 1511573997, '0.00', '0.00', 0, 0, 0, NULL),
(22, 1, '仲夏夜', 'e154067e51352966650df58638fafc473e73154f', 'cWwWC1ZU', 2, 1510713804, '59.57.165.172', 1510713822, '59.57.165.172', '', 0, '', 1510713804, 1511577804, '0.00', '0.00', 0, 0, 0, NULL),
(23, 1, 'test2', '09aa37ec3b354b92ee8ac1910c54ca75abc4f557', 'pM7zpA0P', 2, 1510728489, '59.57.165.172', 1510728505, '59.57.165.172', '测试用户', 0, '', 1510728489, 1511592489, '0.00', '0.00', 0, 0, 0, NULL),
(24, 1, 'ahh', 'fdf139af4c6169abad5044e21919c6b3c3195783', 'nu4AT161', 2, 1510737238, '59.57.165.172', 1510737238, '59.57.165.172', '', 0, '', 1510737238, 1511601238, '0.00', '0.00', 0, 0, 0, NULL),
(25, 1, 'chen', '95518542dd9edc08d7694d8faa1f6409f50ef836', 'RK4w82Kk', 2, 1510737380, '59.57.165.172', 1510815676, '27.154.26.185', '', 0, '', 1510737380, 1511601380, '0.00', '0.00', 0, 0, 0, NULL),
(26, 1, 'chen2', 'bb217cfaa29ac3b90edfdbf2826c9499e6137848', 'xVs59JsW', 2, 1510737713, '59.57.165.172', 1510738308, '27.154.73.234', '', 0, '', 1510737713, 1511601713, '0.00', '0.00', 0, 0, 0, NULL),
(27, 1, 'admin33', '498dbd10c76aad62a92b5e62e737a41fc98b8954', 'L575s5Jl', 2, 1510815527, '27.154.26.185', 1510815537, '27.154.26.185', 'XXXX', 0, '', 1510815527, 1511679527, '0.00', '0.00', 0, 0, 0, NULL),
(28, 1, 'ccchen', '17258814a8af74a7535380778e223026ebaa55b3', 'f9YVZ75S', 2, 1510817062, '223.104.6.34', 1510817075, '223.104.6.34', '', 0, '', 1510817062, 1511681062, '0.00', '0.00', 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_credits_record`
--

CREATE TABLE IF NOT EXISTS `ims_users_credits_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(11) NOT NULL,
  `credittype` varchar(10) NOT NULL DEFAULT '',
  `num` decimal(10,2) NOT NULL,
  `operator` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `remark` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- 转存表中的数据 `ims_users_credits_record`
--

INSERT INTO `ims_users_credits_record` (`id`, `uid`, `uniacid`, `credittype`, `num`, `operator`, `createtime`, `remark`) VALUES
(1, 4, 3, 'credit2', '-500.00', 0, 1504882006, '自动续费： 体验用户组 套餐续费,续费前：2017-09-08 到期; 续费后：2017-10-08 到期'),
(2, 1, 0, 'credit2', '23859.73', 0, 1504883006, '会员升级'),
(3, 1, 0, 'credit2', '-500.00', 0, 1504883008, '会员续费'),
(4, 1, 0, 'credit2', '-500.00', 0, 1504883039, '会员续费'),
(5, 1, 0, 'credit2', '-500.00', 0, 1504883074, '会员续费'),
(6, 1, 0, 'credit2', '-500.00', 0, 1504883082, '会员续费'),
(7, 1, 0, 'credit2', '-500.00', 0, 1504883085, '会员续费'),
(8, 1, 0, 'credit2', '-500.00', 0, 1504883088, '会员续费'),
(9, 1, 0, 'credit2', '-500.00', 0, 1504883205, '会员续费'),
(10, 1, 0, 'credit2', '-500.00', 0, 1504883236, '会员续费'),
(11, 1, 0, 'credit2', '-6000.00', 0, 1505026275, '会员续费'),
(12, 1, 0, 'credit2', '-6000.00', 0, 1505026277, '会员续费'),
(13, 1, 0, 'credit2', '-6000.00', 0, 1505114913, '会员续费'),
(14, 4, 0, 'credit2', '-600.00', 0, 1505199001, '会员续费'),
(15, 4, 0, 'credit2', '-600.00', 0, 1505199004, '会员续费'),
(16, 4, 0, 'credit2', '-600.00', 0, 1505199010, '会员续费'),
(17, 4, 0, 'credit2', '-600.00', 0, 1505199013, '会员续费'),
(18, 4, 0, 'credit2', '-600.00', 0, 1505199016, '会员续费'),
(19, 4, 0, 'credit2', '-600.00', 0, 1505199019, '会员续费'),
(20, 4, 0, 'credit2', '-600.00', 0, 1505199025, '会员续费'),
(21, 4, 0, 'credit2', '-600.00', 0, 1505199033, '会员续费'),
(22, 4, 0, 'credit2', '-600.00', 0, 1505199039, '会员续费'),
(23, 4, 0, 'credit2', '-600.00', 0, 1505199042, '会员续费'),
(24, 4, 0, 'credit2', '-600.00', 0, 1505199045, '会员续费'),
(25, 4, 0, 'credit2', '-600.00', 0, 1505199077, '会员续费'),
(26, 4, 0, 'credit2', '-600.00', 0, 1505199087, '会员续费'),
(27, 4, 0, 'credit2', '-600.00', 0, 1505199093, '会员续费'),
(28, 4, 0, 'credit2', '-600.00', 0, 1505199165, '会员续费'),
(29, 4, 0, 'credit2', '-600.00', 0, 1505199178, '会员续费'),
(30, 4, 0, 'credit2', '-600.00', 0, 1505199224, '会员续费'),
(31, 4, 0, 'credit2', '-600.00', 0, 1505199227, '会员续费'),
(32, 4, 0, 'credit2', '-600.00', 0, 1505199229, '会员续费'),
(33, 4, 0, 'credit2', '-600.00', 0, 1505199231, '会员续费'),
(34, 1, 0, 'credit2', '-600.00', 0, 1508047537, '会员续费'),
(35, 1, 0, 'credit2', '-600.00', 0, 1508126085, '会员续费'),
(36, 1, 0, 'credit2', '-600.00', 0, 1508224609, '会员续费'),
(37, 2, 0, 'credit2', '-1500.00', 0, 1509094219, '会员续费'),
(38, 1, 0, 'credit2', '10260.51', 0, 1510559828, '会员升级'),
(39, 1, 0, 'credit2', '-1000.00', 0, 1510559834, '会员续费'),
(40, 1, 0, 'credit2', '-1000.00', 0, 1510559839, '会员续费'),
(41, 1, 0, 'credit2', '-1000.00', 0, 1510559842, '会员续费'),
(42, 1, 0, 'credit2', '-1000.00', 0, 1510559849, '会员续费'),
(43, 1, 0, 'credit2', '-1000.00', 0, 1510559852, '会员续费'),
(44, 1, 0, 'credit2', '-1000.00', 0, 1510562910, '会员续费'),
(45, 1, 0, 'credit2', '-1000.00', 0, 1510623672, '会员续费'),
(46, 1, 0, 'credit2', '-1000.00', 0, 1510624550, '会员续费'),
(47, 1, 0, 'credit2', '-1000.00', 0, 1510625136, '会员续费'),
(48, 1, 0, 'credit2', '-1000.00', 0, 1510644597, '会员续费'),
(49, 1, 0, 'credit2', '25786.03', 0, 1511145507, '会员升级'),
(50, 1, 0, 'credit2', '-2400.00', 0, 1511145524, '会员续费'),
(51, 1, 0, 'credit2', '-1080.00', 0, 1511149035, '会员续费'),
(52, 1, 0, 'credit2', '-720.00', 0, 1511322374, '会员续费');

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_failed_login`
--

CREATE TABLE IF NOT EXISTS `ims_users_failed_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `username` varchar(32) NOT NULL,
  `count` tinyint(1) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip_username` (`ip`,`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_group`
--

CREATE TABLE IF NOT EXISTS `ims_users_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL DEFAULT '',
  `maxaccount` int(10) unsigned NOT NULL DEFAULT '0',
  `maxsubaccount` int(10) unsigned NOT NULL,
  `maxsize` decimal(8,2) NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `discount` decimal(11,2) DEFAULT NULL COMMENT '打折',
  `owner_uid` int(10) NOT NULL,
  `price` decimal(10,2) unsigned DEFAULT '0.00',
  `domain` int(10) NOT NULL DEFAULT '0',
  `maxwxapp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `ims_users_group`
--

INSERT INTO `ims_users_group` (`id`, `name`, `package`, `maxaccount`, `maxsubaccount`, `maxsize`, `timelimit`, `discount`, `owner_uid`, `price`, `domain`, `maxwxapp`) VALUES
(1, '点餐用户组', 'a:1:{i:0;i:1;}', 1, 1, '0.00', 10, '0.00', 0, '720.00', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_group_price`
--

CREATE TABLE IF NOT EXISTS `ims_users_group_price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `price` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_group_vipprice`
--

CREATE TABLE IF NOT EXISTS `ims_users_group_vipprice` (
  `gpid` int(11) NOT NULL AUTO_INCREMENT,
  `ugid` int(11) DEFAULT '0' COMMENT 'users_group.id',
  `title` varchar(100) DEFAULT NULL,
  `desc` varchar(300) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `day` int(11) DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '0',
  `orderby` int(11) DEFAULT '10',
  PRIMARY KEY (`gpid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `ims_users_group_vipprice`
--

INSERT INTO `ims_users_group_vipprice` (`gpid`, `ugid`, `title`, `desc`, `price`, `day`, `status`, `orderby`) VALUES
(1, 1, '半年', '前100家五折特惠', '1800.00', 180, 1, 2),
(5, 1, '整年', '前100家五折特惠', '2400.00', 365, 1, 3),
(6, 1, '单季', '前100家五折特惠', '1080.00', 90, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_invitation`
--

CREATE TABLE IF NOT EXISTS `ims_users_invitation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `fromuid` int(10) unsigned NOT NULL,
  `inviteuid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_packages`
--

CREATE TABLE IF NOT EXISTS `ims_users_packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL COMMENT '公众号ID',
  `record_id` int(11) DEFAULT NULL COMMENT '消费记录ID',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `package` int(11) DEFAULT NULL COMMENT '套餐ID',
  `buy_time` int(11) DEFAULT '0' COMMENT '购买时间',
  `expiration_time` int(11) DEFAULT '0' COMMENT '到期时间',
  `status` int(1) DEFAULT '0' COMMENT '状态 0 - 待付款 1-已付款',
  PRIMARY KEY (`id`),
  KEY `uid_package` (`uid`,`package`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- 转存表中的数据 `ims_users_packages`
--

INSERT INTO `ims_users_packages` (`id`, `uniacid`, `record_id`, `uid`, `package`, `buy_time`, `expiration_time`, `status`) VALUES
(54, 3, 54, 4, 1, 1504882006, 1507474006, 1),
(53, 3, 53, 4, 1, 1504881609, 1507473609, 1),
(52, 3, 52, 4, 1, 1504881601, 1507473601, 1),
(51, 3, 51, 4, 1, 1504881504, 1507473504, 1),
(50, 3, 50, 4, 1, 1504881497, 1507473497, 1),
(49, 3, 49, 4, 1, 1504878578, 1507470578, 1),
(48, 3, 48, 4, 1, 1504878570, 1507470570, 1),
(47, 3, 47, 4, 1, 1504877945, 1507469945, 1),
(46, 3, 46, 4, 1, 1504877509, 1507469509, 1),
(45, 3, 45, 4, 1, 1504877351, 1507469351, 1),
(44, 3, 44, 4, 1, 1504877346, 1507469346, 1),
(43, 3, 43, 4, 1, 1504877340, 1507469340, 1),
(42, 2, 42, 3, 1, 1504876709, 1507468709, 1),
(41, 2, 41, 3, 1, 1504876665, 1507468665, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_permission`
--

CREATE TABLE IF NOT EXISTS `ims_users_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL,
  `permission` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `ims_users_permission`
--

INSERT INTO `ims_users_permission` (`id`, `uniacid`, `uid`, `url`, `type`, `permission`) VALUES
(1, 6, 6, '', 'weisrc_dish', 'weisrc_dish_menu_stores2'),
(2, 6, 7, '', 'weisrc_dish', 'weisrc_dish_menu_stores2'),
(3, 5, 9, '', 'weisrc_dish', 'weisrc_dish_menu_stores2'),
(4, 6, 17, '', 'weisrc_dish', 'weisrc_dish_menu_stores2'),
(5, 11, 18, '', 'weisrc_dish', 'weisrc_dish_menu_stores2'),
(6, 6, 20, '', 'weisrc_dish', 'weisrc_dish_menu_stores2');

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_profile`
--

CREATE TABLE IF NOT EXISTS `ims_users_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL DEFAULT '',
  `nickname` varchar(20) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL DEFAULT '',
  `mobile` varchar(11) NOT NULL DEFAULT '',
  `fakeid` varchar(30) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `birthyear` smallint(6) unsigned NOT NULL DEFAULT '0',
  `birthmonth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `birthday` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `constellation` varchar(10) NOT NULL DEFAULT '',
  `zodiac` varchar(5) NOT NULL DEFAULT '',
  `telephone` varchar(15) NOT NULL DEFAULT '',
  `idcard` varchar(30) NOT NULL DEFAULT '',
  `studentid` varchar(50) NOT NULL DEFAULT '',
  `grade` varchar(10) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(10) NOT NULL DEFAULT '',
  `nationality` varchar(30) NOT NULL DEFAULT '',
  `resideprovince` varchar(30) NOT NULL DEFAULT '',
  `residecity` varchar(30) NOT NULL DEFAULT '',
  `residedist` varchar(30) NOT NULL DEFAULT '',
  `graduateschool` varchar(50) NOT NULL DEFAULT '',
  `company` varchar(50) NOT NULL DEFAULT '',
  `education` varchar(10) NOT NULL DEFAULT '',
  `occupation` varchar(30) NOT NULL DEFAULT '',
  `position` varchar(30) NOT NULL DEFAULT '',
  `revenue` varchar(10) NOT NULL DEFAULT '',
  `affectivestatus` varchar(30) NOT NULL DEFAULT '',
  `lookingfor` varchar(255) NOT NULL DEFAULT '',
  `bloodtype` varchar(5) NOT NULL DEFAULT '',
  `height` varchar(5) NOT NULL DEFAULT '',
  `weight` varchar(5) NOT NULL DEFAULT '',
  `alipay` varchar(30) NOT NULL DEFAULT '',
  `msn` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `taobao` varchar(30) NOT NULL DEFAULT '',
  `site` varchar(30) NOT NULL DEFAULT '',
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `workerid` varchar(64) NOT NULL,
  `edittime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `ims_users_profile`
--

INSERT INTO `ims_users_profile` (`id`, `uid`, `createtime`, `realname`, `nickname`, `avatar`, `qq`, `mobile`, `fakeid`, `vip`, `gender`, `birthyear`, `birthmonth`, `birthday`, `constellation`, `zodiac`, `telephone`, `idcard`, `studentid`, `grade`, `address`, `zipcode`, `nationality`, `resideprovince`, `residecity`, `residedist`, `graduateschool`, `company`, `education`, `occupation`, `position`, `revenue`, `affectivestatus`, `lookingfor`, `bloodtype`, `height`, `weight`, `alipay`, `msn`, `email`, `taobao`, `site`, `bio`, `interest`, `workerid`, `edittime`) VALUES
(1, 10, 1510123698, '郑云彪', 'hehe', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(2, 11, 1510143782, 'chen', 'da', '', '316621844', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(3, 12, 1510144741, 'chen', 'dk', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(4, 13, 1510198413, 'neko', 'neko', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1510538704),
(5, 14, 1510212571, '王庭协', '尼古拉斯王五', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1510279560),
(6, 15, 1510216655, 'sss', 'sss', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(7, 16, 1510220410, '34234234', '234234', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(8, 1, 1510277056, '', '', 'http://www.dianlema.net/attachment/images/0/2017/10/uzaNUNtp8K1NmKu2jki6tu6aiNrquz.png', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1510277056),
(9, 19, 1510303958, '小哥', '', 'http://www.dianlema.net/attachment/images/6/2017/11/X9xSSZz5bVv6SShvch5coL7B7QC9eC.jpg', '1324567890', '12345678901', '', 0, 0, 2016, 11, 11, '', '', '', '', '', '', '软件园二期20号地下一楼', '', '', '福建省', '厦门市', '思明区', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1510304109),
(10, 21, 1510709997, 'hss', 'hss', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(11, 22, 1510713804, '陈琳琳', '仲夏夜', '', '1009057654', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(12, 24, 1510737238, '12', '21', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(13, 25, 1510737380, 'chen', 'chen', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(14, 28, 1510817062, 'chen', 'v', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_video_reply`
--

CREATE TABLE IF NOT EXISTS `ims_video_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_voice_reply`
--

CREATE TABLE IF NOT EXISTS `ims_voice_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wechat_attachment`
--

CREATE TABLE IF NOT EXISTS `ims_wechat_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `media_id` varchar(255) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `model` varchar(25) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `media_id` (`media_id`),
  KEY `acid` (`acid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `ims_wechat_attachment`
--

INSERT INTO `ims_wechat_attachment` (`id`, `uniacid`, `acid`, `uid`, `filename`, `attachment`, `media_id`, `width`, `height`, `type`, `model`, `tag`, `createtime`) VALUES
(2, 6, 6, 0, '', '', 'BIL3UsUhxe3mw_9QU9sr-jsrfpwdbt8vRJUDrSsmJRo', 0, 0, 'news', 'perm', '', 1510197419),
(3, 6, 6, 0, '', '', 'BIL3UsUhxe3mw_9QU9sr-nvcNOP6xE5nMUnZVKcLNkM', 0, 0, 'news', 'perm', '', 1510216361);

-- --------------------------------------------------------

--
-- 表的结构 `ims_wechat_news`
--

CREATE TABLE IF NOT EXISTS `ims_wechat_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned DEFAULT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `thumb_media_id` varchar(60) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `digest` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_source_url` varchar(200) NOT NULL,
  `show_cover_pic` tinyint(3) unsigned NOT NULL,
  `url` varchar(200) NOT NULL,
  `thumb_url` varchar(255) NOT NULL,
  `displayorder` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `attach_id` (`attach_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `ims_wechat_news`
--

INSERT INTO `ims_wechat_news` (`id`, `uniacid`, `attach_id`, `thumb_media_id`, `title`, `author`, `digest`, `content`, `content_source_url`, `show_cover_pic`, `url`, `thumb_url`, `displayorder`) VALUES
(21, 6, 2, 'BIL3UsUhxe3mw_9QU9sr-rMgSJSc-QBZXtFdSNT7cp8', '如何申请微信公众号？', '', '微信公众号注册流程商家公众号注册1、浏览器中搜索“微信公众号”：2、点击“微信公众平台”：3、点击右上角“立', '<section class="_135editor" data-tools="135编辑器" data-id="10" style="border-width: 0px;border-style: none;border-color: initial;padding: 0px;box-sizing: border-box;"><section><section style="margin-top: 10px;margin-bottom: 10px;display: inline-block;border-radius: 5px;color: rgb(254, 254, 254);background-color: rgb(226, 121, 97);box-sizing: border-box;"><p style="padding:5px 10px;"><span style="color:#FFFFFF;font-size:18px;"><strong class="135brush" data-brushtype="text">微信公众号注册流程</strong></span></p></section></section></section><p><strong><span style="font-family: 微软雅黑;color: rgb(192, 0, 0);font-size: 19px;"><span style="font-family:微软雅黑;">商家公众号注册</span></span></strong></p><p><span style="font-family:微软雅黑;font-size:15px;">1、</span><span style="font-family:微软雅黑;font-size:15px;"><span style="font-family:微软雅黑;">浏览器中搜索</span>“微信公众号”：</span></p><p style="text-align: center;"><img data-src="http://mmbiz.qpic.cn/mmbiz_jpg/nwgxc32QttWKDGE3FqcLEztMdibeJJXYdGCGKiav2Bxl7zG4BFBqhQvPQW0vmVeGfQ5D6Ma4rORdtic3Dj7RiaVbWg/0" width="100%" class="" data-ratio="0.20859538784067086" data-w="954"  /></p><p><span style="font-family:微软雅黑;font-size:15px;"><br  /></span></p><p><span style="font-family:微软雅黑;font-size:15px;">2、点击“微信公众平台”：</span></p><p style="text-align: center;"><span style="font-family:微软雅黑;font-size:15px;"><img data-src="http://mmbiz.qpic.cn/mmbiz_png/nwgxc32QttWKDGE3FqcLEztMdibeJJXYdeyj0zEwhKVApBfwSKbLca1mzLUUyvvzUk3TXRVGMIfqvicaafHGibSNA/0" width="100%" class="" data-ratio="0.2311178247734139" data-w="662"  /></span></p><p><span style="font-family:微软雅黑;font-size:15px;"><br  /></span></p><p><span style="font-family:微软雅黑;font-size:15px;">3、点击右上角“立即注册”：</span></p><p style="text-align: center;"><br  /></p><p><img data-src="http://mmbiz.qpic.cn/mmbiz_png/nwgxc32QttU1UhW6rHzfPk87dbvkmQc3MNwQ5LnSIkLrYcYN0W025FxX05uhlUfibqJwrZDoSwt9yQwcdzHjvLg/0" width="100%" class="" data-ratio="0.5963455149501661" data-w="1204"  /></p><p><span style="font-family:微软雅黑;font-size:15px;"><br  /></span></p><p><span style="font-family:微软雅黑;font-size:15px;">4、注册第一步“选择账号类型”：</span></p><p style="text-align: center;"><span style="font-family:微软雅黑;font-size:15px;"><img data-src="http://mmbiz.qpic.cn/mmbiz_png/nwgxc32QttWKDGE3FqcLEztMdibeJJXYdHOCibUvQ92zxKHyc9MSELkPbeYHdYWHpmZyrWR2JRPNXDZ7FFCaqkbA/0" width="100%" class="" data-ratio="0.5932062966031483" data-w="1207"  /></span></p><p style="text-align: center;"><span style="font-family:微软雅黑;font-size:15px;"><img data-src="http://mmbiz.qpic.cn/mmbiz_png/nwgxc32QttWKDGE3FqcLEztMdibeJJXYdenJrZpKecRW6W2PclUDKL1t5UMnGhHwm0svoRCd1qcDgq8TKiakv8xw/0" width="100%" class="" data-ratio="0.5918874172185431" data-w="1208"  /></span></p><p><br  /></p><p><span style="font-family: 微软雅黑;font-size: 15px;">可点击底部“账号类型区别”了解：</span><br  /></p><p style="text-align: center;"><span style="font-family:微软雅黑;font-size:15px;"><img data-src="http://mmbiz.qpic.cn/mmbiz_png/nwgxc32QttWKDGE3FqcLEztMdibeJJXYdHwjmtvOu3b5IATLdHn7HJdeG6z0PB5n5VL309JmHeyibLHTP6P2onVg/0" width="100%" class="" data-ratio="0.5915841584158416" data-w="1212"  /></span></p><p><br  /></p><p><span style="font-family:微软雅黑;font-size:15px;">5、注册第二步“邮箱激活”，登录邮箱激活账号：</span></p><p style="text-align: center;"><span style="font-family:微软雅黑;font-size:15px;"><img data-src="http://mmbiz.qpic.cn/mmbiz_jpg/nwgxc32QttWKDGE3FqcLEztMdibeJJXYdjKvCwD8HIFGaaiciaUXdUH9FKrx4tkywX4JXPgqNr5BIn4iaWDBFLKe6Q/0" width="100%" class="" data-ratio="1.096728307254623" data-w="703"  /></span></p><p><br  /></p><p>发送验证码到邮箱：</p><p style="text-align: center;"><img data-src="http://mmbiz.qpic.cn/mmbiz_png/nwgxc32QttWKDGE3FqcLEztMdibeJJXYdhoPdUR67Z3FbicdTgnuvOticpc8uP8LESHoUWPWDdMgfZhtt0eHsbB5Q/0" width="100%" class="" data-ratio="0.5608333333333333" data-w="1200"  /></p><p><br  /></p><p>登录邮箱提取邮箱验证码（注意，验证码时效为30分钟，30分钟后需重新激活邮箱）：</p><p><img data-src="http://mmbiz.qpic.cn/mmbiz_png/nwgxc32QttWKDGE3FqcLEztMdibeJJXYdwXxVrG1zDy7xgZZskzrR2XodJC2J9Ht2PibTQ1eQicNaLg9BEn55YSyw/0" style="" width="100%" class="" data-ratio="0.07575757575757576" data-w="462"  /></p><p style="text-align: center;"><img width="100%" style="" class=""  /></p><p><br  /></p><p>输入验证码、密码，并同意遵守《微信公众平台服务协议》：</p><p style="text-align: center;"><img data-src="http://mmbiz.qpic.cn/mmbiz_png/nwgxc32QttWKDGE3FqcLEztMdibeJJXYdT6JG28ouHuuX9HDur9sTxhysfrmicUrycVfAF8oIq8crZXrfphfTDeQ/0" style="" width="100%" class="" data-ratio="1.1262411347517731" data-w="705"  /></p><p><br  /></p><p><span style="font-family:微软雅黑;font-size:15px;">&nbsp;</span></p><p><span style="font-family:微软雅黑;font-size:15px;">6、</span><span style="font-family:微软雅黑;font-size:15px;"><span style="font-family:微软雅黑;">注册第三步</span>“选择类型：（服务号）</span></p><p style="text-align: center;"><span style="font-family:微软雅黑;font-size:15px;"><img data-src="http://mmbiz.qpic.cn/mmbiz_png/nwgxc32QttWKDGE3FqcLEztMdibeJJXYdUNP5JWiapPPibNHJNaiaziaOQ23icBJRDdlAGPtvCHHxPgo2Nw4zVxS4Fmg/0" width="100%" class="" data-ratio="0.5963455149501661" data-w="1204"  /></span></p><p><br  /></p><p><span style="font-family:微软雅黑;font-size:15px;"><span style="font-family:微软雅黑;">注意：类型选择后是不可以修改的，选择前可参考“了解详情”</span></span></p><p><span style="font-family:微软雅黑;font-size:15px;"><img data-src="http://mmbiz.qpic.cn/mmbiz_png/nwgxc32QttWKDGE3FqcLEztMdibeJJXYd8Y94mWlm3rYjIAShRiamzicyqdUSOcB6AypNACBG1LKsPuoA5Ky61d8A/0" width="100%" class="" data-ratio="0.5842323651452282" data-w="1205"  /></span></p><p style="text-align: center;"><span style="font-family:微软雅黑;font-size:15px;"><img data-src="http://mmbiz.qpic.cn/mmbiz_png/nwgxc32QttWKDGE3FqcLEztMdibeJJXYdiaIjcZBF0pVTZHic8BvuQmvs2ehCmzN4602eDvtiabH25ogq44ORvaFJQ/0" width="100%" class="" data-ratio="0.586490939044481" data-w="1214"  /></span></p><p><span style="font-family:微软雅黑;font-size:15px;"><br  /></span></p><p style="text-align: left;"><span style="font-family: 微软雅黑;color: rgb(51, 51, 51);font-size: 15px;background: rgb(255, 255, 255);">7、</span><span style="font-family: 微软雅黑;color: rgb(51, 51, 51);font-size: 15px;background: rgb(255, 255, 255);"><span style="font-family:微软雅黑;">注册第四步</span>“信息登记”：要先写姓名、身份证号码、手机号</span></p><p style="text-align: center;"><img data-src="http://mmbiz.qpic.cn/mmbiz_png/nwgxc32QttWKDGE3FqcLEztMdibeJJXYdq6U1PWk4v3p2IhbkpticrvODuDtqGaicmAkp3no6XfPElHqhibHicm9JuQ/0" style="color: rgb(51, 51, 51);font-family: 微软雅黑;font-size: 15px;" width="100%" class="" data-ratio="0.6135225375626043" data-w="1198"  /></p><p><span style="font-family: 微软雅黑;color: rgb(51, 51, 51);font-size: 15px;background: rgb(255, 255, 255);"><span style="font-family:微软雅黑;">注意：主体信息提交后是不可以修改的，点击确认才可以进行一下步：</span></span></p><p><span style="font-family: 微软雅黑;color: rgb(51, 51, 51);font-size: 15px;background: rgb(255, 255, 255);">&nbsp;</span></p><p><span style="font-family: 微软雅黑;color: rgb(51, 51, 51);font-size: 15px;background: rgb(255, 255, 255);">8、</span><span style="font-family: 微软雅黑;color: rgb(51, 51, 51);font-size: 15px;background: rgb(255, 255, 255);"><span style="font-family:微软雅黑;">注册第五步</span>“公众号信息”填写：账号名称注册后不能更改</span></p><p><span style="font-family:Calibri;font-size:14px;">&nbsp;</span></p><p><span style="font-family: 微软雅黑;color: rgb(51, 51, 51);font-size: 15px;background: rgb(255, 255, 255);">9、</span><span style="font-family: 微软雅黑;color: rgb(51, 51, 51);font-size: 15px;background: rgb(255, 255, 255);"><span style="font-family:微软雅黑;">注册成功：</span></span></p><p><span style="font-family:Calibri;font-size:14px;">&nbsp;</span></p><p><span style="font-family: 微软雅黑;color: rgb(51, 51, 51);font-size: 15px;background: rgb(255, 255, 255);">10、</span><span style="font-family: 微软雅黑;color: rgb(51, 51, 51);font-size: 15px;background: rgb(255, 255, 255);">“公众号设置”：一旦设置后就不能再更改！</span></p>', '', 0, 'http://mp.weixin.qq.com/s?__biz=MzU0MzQwNjE1Mw==&mid=100000004&idx=1&sn=ac88e1531199694842554929c0612a16&chksm=7b0aa0224c7d2934e65c37a043c03ac2e574e0eaa24afa5931a674f86af727b77e72821185ee#rd', 'http://mmbiz.qpic.cn/mmbiz_jpg/nwgxc32QttVA51icMCPKZreSZZGicCUu8eSWLK6qN2XjEEw9HNhf3YU7EibkO1iap6Oaq1mFL3JjBNR9zz4yUSNqOQ/0?wx_fmt=jpeg', 0),
(20, 6, 3, 'BIL3UsUhxe3mw_9QU9sr-jjbJvHX-AzfiO4-gpMkPVk', '“点了码”平台账号注册流程', '', '平台账号注册流程登录网址www.dianlema.net，打开主页点击右上角“会员注册”：2.进入注册界面，', '<section class="_135editor" data-tools="135编辑器" data-id="10" style="border-width: 0px;border-style: none;border-color: currentcolor;-moz-border-top-colors: none;-moz-border-right-colors: none;-moz-border-bottom-colors: none;-moz-border-left-colors: none;padding: 0px;box-sizing: border-box;"><section><section style="margin-top: 10px;margin-bottom: 10px;display: inline-block;border-radius: 5px;color: rgb(254, 254, 254);background-color: rgb(226, 121, 97);box-sizing: border-box;"><p style="padding: 5px 10px;"><span style="color: rgb(255, 255, 255);font-size: 18px;"><strong class="135brush" data-brushtype="text">平台账号注册流程</strong></span></p></section></section></section><ol class=" list-paddingleft-2" style="list-style-type: decimal;"><li><p>登录网址<a href="http://www.dianlema.net" src="http://www.dianlema.net">www.dianlema.net</a>，打开主页点击右上角“会员注册”：</p></li></ol><p><img data-src="http://mmbiz.qpic.cn/mmbiz_png/nwgxc32QttVcjhlDmb0jYpNDLY6TSLt588nd958HY7icBZL7Hk2x7R3QfdZx9qr35zNH1C16SicBwWMu3KlS0XGg/0" class="" data-ratio="0.11764705882352941" data-w="612" width="100%"  /></p><p style="text-align: center;"><img class="" width="100%"  /></p><p><br  /></p><p>2.进入注册界面，填写资料信息，申请注册：</p><p style="text-align: center;"><img style="" class="" width="100%"  /></p><p><img data-s="300,640" data-type="jpeg" data-src="https://mmbiz.qpic.cn/mmbiz_jpg/nwgxc32QttVA51icMCPKZreSZZGicCUu8efl9FVUjond1uoqCib5ib4WpMrBGqtOu7vTv8u59CUFZH828xsS56iakMg/0?wx_fmt=jpeg" data-copyright="0" style="" class="" data-ratio="0.3128888888888889" data-w="1125"  /></p><p>3.注册成功，登录平台：</p><p style="text-align: center;"><img style="" class="" width="100%"  /></p><p><br  /></p><p>4.新增公众号，便于后台管理：</p><p style="text-align: center;"><img style="" class="" width="100%"  /></p>', '', 0, 'http://mp.weixin.qq.com/s?__biz=MzU0MzQwNjE1Mw==&mid=100000007&idx=1&sn=ddd9b2296fff7342a4128e37478aec11&chksm=7b0aa0214c7d29372aba3622f1085eee68cea62181e070cd58dced552307c05e1e0e9621b8d1#rd', 'http://mmbiz.qpic.cn/mmbiz_jpg/nwgxc32QttVA51icMCPKZreSZZGicCUu8efl9FVUjond1uoqCib5ib4WpMrBGqtOu7vTv8u59CUFZH828xsS56iakMg/0?wx_fmt=jpeg', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_account`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `storeid` varchar(1000) NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_user` varchar(100) NOT NULL DEFAULT '',
  `accountname` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(200) NOT NULL DEFAULT '',
  `salt` varchar(10) NOT NULL DEFAULT '',
  `pwd` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pay_account` varchar(200) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '状态',
  `role` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1:店长,2:店员',
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(15) NOT NULL,
  `areaid` int(10) NOT NULL DEFAULT '0' COMMENT '区域id',
  `is_admin_order` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_notice_order` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_notice_queue` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_notice_service` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_notice_boss` tinyint(1) NOT NULL DEFAULT '0',
  `lat` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '经度',
  `lng` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '纬度',
  `remark` varchar(1000) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- 转存表中的数据 `ims_weisrc_dish_account`
--

INSERT INTO `ims_weisrc_dish_account` (`id`, `weid`, `storeid`, `uid`, `from_user`, `accountname`, `password`, `salt`, `pwd`, `mobile`, `email`, `username`, `pay_account`, `displayorder`, `dateline`, `status`, `role`, `lastvisit`, `lastip`, `areaid`, `is_admin_order`, `is_notice_order`, `is_notice_queue`, `is_notice_service`, `is_notice_boss`, `lat`, `lng`, `remark`) VALUES
(24, 5, '20', 0, '', '', '', '', '', '123', '', '123', '', 0, 1509358009, 2, 2, 0, '', 0, 1, 1, 0, 1, 0, '0.0000000000', '0.0000000000', '123'),
(25, 6, '0', 0, 'oSRY005X21OxPllfXAlfbcnlrF-A', '', '', '', '', '18050086692', '', '111', '', 0, 1511146139, 2, 4, 0, '', 0, 0, 0, 0, 0, 0, '0.0000000000', '0.0000000000', '123123'),
(26, 6, '21', 6, 'oSRY005X21OxPllfXAlfbcnlrF-A', '', '', '', '', '', '', '11', '', 0, 1509358357, 2, 1, 0, '', 0, 1, 0, 0, 0, 0, '0.0000000000', '0.0000000000', ''),
(27, 6, '21', 7, 'oSRY007ii1nrPRxSCeihLAxANMB8', '', '', '', '', '', '', '', '', 0, 1509358482, 2, 1, 0, '', 0, 1, 1, 0, 0, 0, '24.4892306100', '118.1038860500', ''),
(28, 6, '21', 0, 'oSRY00yS5yHUwKxVARp8b_21YceE', '', '', '', '', '13163906015', '', '王庭协', '', 0, 1510652826, 2, 4, 0, '', 0, 1, 1, 1, 1, 1, '24.4933452744', '118.1864477364', ''),
(29, 5, '20', 9, '', '', '', '', '', '', '', '', '', 0, 1509696207, 2, 1, 0, '', 0, 1, 1, 1, 1, 1, '0.0000000000', '0.0000000000', ''),
(30, 7, '23', 0, '', '', '', '', '', '15396289796', '', '聂平、', '', 0, 1510193461, 2, 2, 0, '', 0, 1, 1, 0, 1, 0, '0.0000000000', '0.0000000000', ''),
(31, 7, '22', 0, '', '', '', '', '', '110', '', '丁丁', '', 0, 1510194603, 2, 5, 0, '', 0, 1, 1, 1, 1, 1, '0.0000000000', '0.0000000000', ''),
(32, 7, '22', 0, '', '', '', '', '', '11111', '', '二丁', '', 0, 1510194624, 2, 2, 0, '', 0, 1, 1, 0, 1, 0, '0.0000000000', '0.0000000000', ''),
(33, 6, '0', 17, '', '', '', '', '', '', '', '', '', 0, 1510297686, 2, 1, 0, '', 0, 0, 0, 0, 0, 0, '0.0000000000', '0.0000000000', ''),
(34, 11, '24', 18, '', '', '', '', '', '', '', '', '', 0, 1510297785, 2, 1, 0, '', 0, 1, 1, 1, 1, 1, '0.0000000000', '0.0000000000', ''),
(38, 9, '25', 0, '', '', '', '', '', '', '', 'wind', '', 0, 1510625588, 0, 2, 0, '', 0, 1, 1, 0, 1, 0, '0.0000000000', '0.0000000000', ''),
(39, 6, '0', 0, 'oSRY004apWoEmgGRX6tq94KeP8SE', '', '', '', '', '13333333333', '', '努尔哈赤', '', 0, 1510629578, 2, 4, 0, '', 0, 0, 0, 0, 0, 0, '24.4695349295', '118.0879422362', ''),
(40, 6, '21', 20, 'oSRY007ii1nrPRxSCeihLAxANMB8', '', '', '', '', '13696929853', '', '陈成果', '', 0, 1510631465, 2, 1, 0, '', 0, 1, 1, 1, 1, 1, '24.4892306100', '118.1038860500', ''),
(41, 6, '21', 0, 'oSRY007ii1nrPRxSCeihLAxANMB8', '', '', '', '', '13696929853', '', 'chenchengguo', '', 0, 1510652748, 2, 4, 0, '', 0, 1, 1, 1, 1, 1, '24.4892306100', '118.1038860500', ''),
(42, 6, '0', 0, 'oSRY0002kWJeWI40pNCycPqBUO3E', '', '', '', '', '11111111111', '', '袁老四', '', 0, 1510646340, 2, 4, 0, '', 0, 0, 0, 0, 0, 0, '24.4693514642', '118.0883079124', ''),
(43, 7, '22', 0, '', '', '', '', '', '13378295647', '', '龙龙', '', 0, 1510652752, 2, 2, 0, '', 0, 1, 1, 0, 1, 0, '0.0000000000', '0.0000000000', ''),
(44, 7, '22', 0, '', '', '', '', '', '121', '', '晨晨', '', 0, 1510652888, 2, 4, 0, '', 0, 1, 1, 1, 1, 0, '0.0000000000', '0.0000000000', ''),
(46, 6, '21', 0, 'oSRY0069zmR3bYgg6-YSEbdA-K1E', '', '', '', '', '', '', '软中华', '', 0, 1511150159, 2, 2, 0, '', 0, 1, 1, 1, 1, 1, '0.0000000000', '0.0000000000', ''),
(47, 6, '0', 0, 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '', '', '', '', '11111111111', '', '丘吉尔', '', 0, 1510729053, 2, 4, 0, '', 2, 0, 0, 0, 0, 0, '24.4694682078', '118.0877316290', ''),
(48, 6, '0', 0, 'oSRY004apWoEmgGRX6tq94KeP8SE', '', '', '', '', '', '', 'wagc', '', 0, 1510729204, 2, 4, 0, '', 0, 0, 0, 0, 0, 0, '24.4695349295', '118.0879422362', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_ad`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_ad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `thumb` varchar(500) NOT NULL DEFAULT '',
  `position` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:首页,2:商家页',
  `starttime` int(10) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `endtime` int(10) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `ims_weisrc_dish_ad`
--

INSERT INTO `ims_weisrc_dish_ad` (`id`, `uniacid`, `title`, `url`, `thumb`, `position`, `starttime`, `endtime`, `displayorder`, `status`, `dateline`) VALUES
(8, 5, '', '#', 'http://lgzol.cn/attachment/images/5/2017/09/aOdpWOt3tWwn7k7xpoup7Ku7PT7TOP.jpg', 2, 1507706640, 1508570640, 0, 0, 1508225074),
(9, 5, '', '#', 'http://lgzol.cn/attachment/images/5/2017/10/Gyyyj1WBiRii1i3iWZWjtIqOu4B5t1.png', 2, 1508748600, 1512032100, 2, 1, 1508564612),
(11, 5, '', '#', 'http://lgzol.cn/attachment/images/5/2017/10/lCW3t3JW7nTjPH3p8tH373wzO3NsvW.jpg', 2, 1509097860, 1511689860, 1, 1, 1509097882),
(12, 6, '', '#', 'http://lgzol.cn/attachment/images/6/2017/10/Pki0sa99eGkefah77Sbij06G0aHai7.jpg', 3, 1509109560, 1511701560, 1, 1, 1509109635),
(13, 6, '', '#', 'http://lgzol.cn/attachment/images/6/2017/10/dSL681878S88l26885fvenEsHnO8rS.png', 3, 1509109620, 1511701620, 2, 1, 1509109650);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_address`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `realname` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `address` varchar(300) NOT NULL,
  `dateline` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_area`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '区域名称',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_blacklist`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_blacklist` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(100) DEFAULT '' COMMENT '用户ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_openid` (`from_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_businesslog`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_businesslog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL,
  `dining_mode` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类型1店内2外卖3预定4快餐',
  `business_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '申请金额',
  `charges` decimal(10,2) DEFAULT '0.00' COMMENT '手续费',
  `successprice` decimal(10,2) DEFAULT '0.00' COMMENT '到帐金额',
  `haveprice` decimal(10,2) DEFAULT '0.00' COMMENT '已申请总金额',
  `totalprice` decimal(10,2) DEFAULT '0.00' COMMENT '当时可总金额',
  `trade_no` varchar(200) DEFAULT '0',
  `payment_no` varchar(200) DEFAULT '0',
  `result` varchar(1000) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `handletime` int(10) DEFAULT '0' COMMENT '处理时间',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_cart`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `goodsid` int(11) NOT NULL,
  `goodstype` tinyint(1) NOT NULL DEFAULT '1',
  `price` varchar(10) NOT NULL,
  `packvalue` varchar(10) NOT NULL DEFAULT '0' COMMENT '打包费',
  `from_user` varchar(50) NOT NULL,
  `total` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=487 ;

--
-- 转存表中的数据 `ims_weisrc_dish_cart`
--

INSERT INTO `ims_weisrc_dish_cart` (`id`, `weid`, `storeid`, `goodsid`, `goodstype`, `price`, `packvalue`, `from_user`, `total`) VALUES
(241, 5, 20, 193, 117, '12', '0', 'oEZ6bwwDHUmm68wE2waN7vYDsCkY', 2),
(242, 5, 20, 192, 117, '8', '0', 'oEZ6bwwDHUmm68wE2waN7vYDsCkY', 1),
(243, 5, 20, 187, 117, '10', '0', 'oEZ6bwwDHUmm68wE2waN7vYDsCkY', 2),
(244, 5, 20, 190, 117, '9', '0', 'oEZ6bwwDHUmm68wE2waN7vYDsCkY', 2),
(245, 5, 20, 191, 117, '8', '0', 'oEZ6bwwDHUmm68wE2waN7vYDsCkY', 1),
(257, 6, 21, 209, 123, '58', '0', 'oSRY00xwP3RqZUy04n2o1Q3c-dHc', 6),
(255, 6, 21, 226, 119, '128', '0', 'oSRY00xwP3RqZUy04n2o1Q3c-dHc', 8),
(256, 6, 21, 225, 119, '178', '0', 'oSRY00xwP3RqZUy04n2o1Q3c-dHc', 5),
(258, 6, 21, 208, 123, '35', '0', 'oSRY00xwP3RqZUy04n2o1Q3c-dHc', 8),
(264, 6, 21, 226, 119, '128', '0', 'oSRY006QGqwA_kc5J-lt-jW0xdj0', 1),
(265, 6, 21, 225, 119, '178', '0', 'oSRY006QGqwA_kc5J-lt-jW0xdj0', 1),
(266, 6, 21, 213, 121, '52', '0', 'oSRY006QGqwA_kc5J-lt-jW0xdj0', 1),
(267, 6, 21, 207, 123, '48', '0', 'oSRY006QGqwA_kc5J-lt-jW0xdj0', 1),
(268, 6, 21, 208, 123, '35', '0', 'oSRY006QGqwA_kc5J-lt-jW0xdj0', 1),
(269, 6, 21, 209, 123, '58', '0', 'oSRY006QGqwA_kc5J-lt-jW0xdj0', 1),
(281, 6, 21, 226, 119, '128', '0', 'oSRY00xbvLPo4398l0ZjXXqgbY90', 2),
(284, 6, 21, 226, 119, '128', '0', 'oSRY00y8tEJOKS4Wj2DKPzLLRX4w', 1),
(428, 6, 21, 226, 119, '128', '0', 'oSRY00yS5yHUwKxVARp8b_21YceE', 1),
(486, 6, 21, 230, 119, '8', '1', 'oSRY00ymxuQQkyt71joCQe5uH1WQ', 1),
(362, 6, 21, 226, 119, '128', '0', 'oSRY00ymxuQQkyt71joCQe5uH1WQ', 2),
(363, 6, 21, 225, 119, '178', '0', 'oSRY00ymxuQQkyt71joCQe5uH1WQ', 1),
(484, 6, 21, 226, 119, '128', '0', 'oSRY0002kWJeWI40pNCycPqBUO3E', 2),
(469, 6, 21, 214, 122, '52', '0', 'oSRY0002JvnXBtEpaAY6FbFSnWQY', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_cashlog`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_cashlog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_user` varchar(200) DEFAULT '',
  `logtype` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '日志类型1佣金2配送佣金',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '类型1微信2余额',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '申请金额',
  `charges` decimal(10,2) DEFAULT '0.00' COMMENT '手续费',
  `successprice` decimal(10,2) DEFAULT '0.00' COMMENT '到帐金额',
  `totalprice` decimal(10,2) DEFAULT '0.00' COMMENT '余额',
  `trade_no` varchar(200) DEFAULT '0',
  `payment_no` varchar(200) DEFAULT '0',
  `remark` varchar(1000) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `handletime` int(10) DEFAULT '0' COMMENT '处理时间',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_category`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '门店id',
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `rebate` decimal(5,2) NOT NULL DEFAULT '10.00' COMMENT '打折费率',
  `is_discount` int(2) NOT NULL DEFAULT '0' COMMENT '是否开启打折',
  `is_meal` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否店内点餐',
  `is_delivery` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否外卖订餐',
  `is_snack` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否支持快餐',
  `is_reservation` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否支持预定',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=134 ;

--
-- 转存表中的数据 `ims_weisrc_dish_category`
--

INSERT INTO `ims_weisrc_dish_category` (`id`, `storeid`, `weid`, `name`, `parentid`, `rebate`, `is_discount`, `is_meal`, `is_delivery`, `is_snack`, `is_reservation`, `displayorder`, `enabled`) VALUES
(117, 20, 5, '单点菜单', 0, '0.00', 1, 1, 1, 1, 1, 1, 1),
(118, 20, 5, '汉堡套餐系列', 0, '0.00', 1, 1, 1, 1, 1, 0, 1),
(119, 21, 6, '招牌菜', 0, '9.00', 1, 1, 1, 1, 1, 9, 1),
(129, 22, 7, '酒水', 0, '0.00', 0, 1, 1, 1, 1, 0, 1),
(121, 21, 6, '铁板系列', 0, '9.00', 0, 1, 1, 1, 1, 8, 1),
(122, 21, 6, '煲锅系列', 0, '9.00', 0, 1, 1, 1, 1, 7, 1),
(123, 21, 6, '泡椒系列', 0, '9.00', 0, 1, 1, 1, 1, 6, 1),
(124, 21, 6, '素菜系列', 0, '9.00', 0, 1, 1, 1, 1, 5, 1),
(125, 21, 6, '凉菜系列', 0, '9.00', 0, 1, 1, 1, 1, 4, 1),
(126, 21, 6, '汤系列', 0, '9.00', 0, 1, 1, 1, 1, 3, 1),
(127, 21, 6, '主食', 0, '0.00', 0, 1, 1, 1, 1, 2, 1),
(128, 21, 6, '酒水', 0, '0.00', 0, 1, 1, 1, 1, 1, 1),
(130, 22, 7, '油炸', 0, '0.00', 0, 1, 1, 1, 1, 0, 1),
(131, 22, 7, '3', 0, '0.00', 0, 1, 1, 1, 1, 0, 1),
(132, 20, 5, '小食', 0, '0.00', 1, 1, 1, 1, 1, 2, 1),
(133, 21, 6, '营养汤类', 0, '88.00', 0, 1, 1, 1, 1, 10, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_collection`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_collection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `dateline` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_commission`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_commission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned DEFAULT '0',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '门店编号',
  `orderid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单编号',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级编号',
  `ordersn` varchar(100) DEFAULT '',
  `from_user` varchar(100) DEFAULT '' COMMENT '购买者openid',
  `price` decimal(10,2) DEFAULT '0.00',
  `level` tinyint(1) NOT NULL DEFAULT '1' COMMENT '级别',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_coupon`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_coupon` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL DEFAULT '0' COMMENT '公众号id',
  `storeid` int(10) NOT NULL DEFAULT '0' COMMENT '门店id',
  `levelid` tinyint(1) NOT NULL DEFAULT '0' COMMENT '所属人群',
  `title` varchar(50) NOT NULL COMMENT '优惠券名称',
  `thumb` varchar(500) NOT NULL DEFAULT '' COMMENT '图片',
  `attr_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '属性 1=普通券 2=营销券',
  `ruletype` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=不限 2=首单',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '优惠券类型 1=优惠券 2=代金券 3=礼品券 4=积分兑换',
  `gmoney` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '支付金额',
  `dmoney` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '抵用金额',
  `content` text NOT NULL COMMENT '详细内容',
  `totalcount` int(10) NOT NULL DEFAULT '0' COMMENT '发放总数',
  `usercount` int(10) NOT NULL DEFAULT '0' COMMENT '每人领取张数',
  `ticket_ty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '积分兑换优惠券类型 1=优惠券2=代金券3=礼品券',
  `ticket_id` int(10) NOT NULL DEFAULT '0' COMMENT '优惠券id',
  `needscore` int(10) NOT NULL DEFAULT '0' COMMENT '兑换需要积分',
  `starttime` int(10) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `endtime` int(10) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `is_meal` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否店内点餐',
  `is_delivery` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否外卖订餐',
  `is_snack` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否支持快餐',
  `is_reservation` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否支持预定',
  `is_shouyin` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否支持收银',
  `displayorder` tinyint(4) NOT NULL DEFAULT '0',
  `dateline` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `ims_weisrc_dish_coupon`
--

INSERT INTO `ims_weisrc_dish_coupon` (`id`, `weid`, `storeid`, `levelid`, `title`, `thumb`, `attr_type`, `ruletype`, `type`, `gmoney`, `dmoney`, `content`, `totalcount`, `usercount`, `ticket_ty`, `ticket_id`, `needscore`, `starttime`, `endtime`, `is_meal`, `is_delivery`, `is_snack`, `is_reservation`, `is_shouyin`, `displayorder`, `dateline`) VALUES
(14, 7, 22, 0, '吃不了兜着走', '../addons/weisrc_dish/template/images/coupon.jpg', 1, 1, 1, '999.00', '0.00', '', 0, 1, 0, 0, 0, 1510193760, 1512785760, 1, 1, 1, 0, 1, 0, 1510193878),
(15, 7, 22, 0, '有种你再来', '../addons/weisrc_dish/template/images/coupon.jpg', 1, 1, 2, '200.00', '20.00', '', 0, 2, 0, 0, 0, 1510193880, 1512785880, 1, 1, 1, 0, 1, 0, 1510193952),
(16, 7, 22, 0, '1元也是爱', '../addons/weisrc_dish/template/images/coupon.jpg', 1, 1, 3, '100.00', '1.00', '', 0, 0, 0, 0, 0, 1510193940, 1512785940, 1, 1, 1, 0, 1, 0, 1510194071),
(17, 7, 22, 0, '你是爸爸', '../addons/weisrc_dish/template/images/coupon.jpg', 1, 1, 4, '100.00', '99.00', '', 0, 0, 0, 0, 0, 1510194060, 1512786060, 1, 1, 1, 0, 1, 0, 1510194100),
(18, 7, 23, 0, '免费吃', '../addons/weisrc_dish/template/images/coupon.jpg', 1, 1, 3, '100.00', '60.00', '', 0, 0, 0, 0, 0, 1510564500, 1513156500, 1, 1, 1, 0, 1, 2, 1510564565),
(19, 6, 21, 0, '爆炸满减', '../addons/weisrc_dish/template/images/coupon.jpg', 1, 1, 3, '100.00', '99.00', '', 0, 0, 0, 0, 0, 1510626420, 1513218420, 1, 1, 1, 0, 1, 0, 1510627020),
(20, 6, 21, 0, '爆炸满减（新）', '../addons/weisrc_dish/template/images/coupon.jpg', 1, 1, 4, '100.00', '99.00', '', 0, 0, 0, 0, 0, 1510627020, 1513219020, 1, 1, 1, 0, 1, 0, 1510627049),
(21, 6, 21, 0, '霸王餐', '../addons/weisrc_dish/template/images/coupon.jpg', 1, 1, 4, '500.00', '500.00', '', 0, 0, 0, 0, 0, 1510627740, 1513219740, 1, 1, 1, 0, 1, 0, 1510627813),
(22, 6, 21, 0, '666', '../addons/weisrc_dish/template/images/coupon.jpg', 1, 1, 4, '570.00', '570.00', '', 0, 0, 0, 0, 0, 1510627860, 1513219860, 1, 1, 1, 0, 1, 0, 1510627885),
(23, 6, 21, 0, '6666', '../addons/weisrc_dish/template/images/coupon.jpg', 1, 1, 4, '0.00', '560.00', '', 0, 0, 0, 0, 0, 1510627920, 1513219920, 1, 1, 1, 0, 1, 0, 1510628000),
(24, 6, 21, 0, '999', '../addons/weisrc_dish/template/images/coupon.jpg', 1, 1, 2, '0.00', '999.00', '', 0, 0, 0, 0, 0, 1510628160, 1513220160, 1, 1, 1, 0, 1, 0, 1510628174);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_credits_record`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_credits_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(100) DEFAULT '',
  `credittype` varchar(100) DEFAULT '' COMMENT '积分类型',
  `num` decimal(10,2) DEFAULT '0.00',
  `operator` varchar(100) DEFAULT '',
  `remark` varchar(1000) DEFAULT NULL COMMENT '内容',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_deliveryarea`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_deliveryarea` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属门店',
  `title` varchar(50) NOT NULL COMMENT '区域名称',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `lat` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '经度',
  `lng` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '纬度',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `ims_weisrc_dish_deliveryarea`
--

INSERT INTO `ims_weisrc_dish_deliveryarea` (`id`, `weid`, `storeid`, `title`, `displayorder`, `lat`, `lng`, `dateline`, `status`) VALUES
(2, 6, 0, '金拱门', 0, '0.0000000000', '0.0000000000', 1510629643, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_delivery_record`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_delivery_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `storeid` int(10) NOT NULL DEFAULT '0' COMMENT '门店id',
  `orderid` int(10) NOT NULL DEFAULT '0' COMMENT '订单id',
  `delivery_id` int(10) NOT NULL DEFAULT '0' COMMENT '配送员id',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_dispatcharea`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_dispatcharea` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属门店',
  `title` varchar(50) NOT NULL COMMENT '区域名称',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `ims_weisrc_dish_dispatcharea`
--

INSERT INTO `ims_weisrc_dish_dispatcharea` (`id`, `weid`, `storeid`, `title`, `displayorder`, `dateline`, `status`) VALUES
(3, 7, 22, '福建省', 0, 0, 1),
(6, 6, 21, '', 0, 0, 1),
(5, 6, 21, '普罗米修斯', 0, 0, 1),
(7, 6, 21, '湖里区', 0, 0, 1),
(8, 6, 21, '思明区', 1, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_distance`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_distance` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `begindistance` int(10) unsigned NOT NULL,
  `enddistance` int(10) unsigned NOT NULL,
  `sendingprice` decimal(10,2) DEFAULT '0.00' COMMENT '起送价格',
  `dispatchprice` decimal(10,2) DEFAULT '0.00',
  `freeprice` decimal(10,2) DEFAULT '0.00',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_email_setting`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_email_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `email_enable` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '开启邮箱提醒',
  `email_host` varchar(50) DEFAULT '' COMMENT '邮箱服务器',
  `email_send` varchar(100) DEFAULT '' COMMENT '商户发送邮件邮箱',
  `email_pwd` varchar(20) DEFAULT '' COMMENT '邮箱密码',
  `email_user` varchar(100) DEFAULT '' COMMENT '发信人名称',
  `email` varchar(100) DEFAULT '' COMMENT '商户接收邮件邮箱',
  `email_business_tpl` varchar(200) DEFAULT '' COMMENT '商户接收内容模板',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_fans`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `weid` int(11) DEFAULT '0',
  `storeid` int(11) DEFAULT '0',
  `agentid` int(11) DEFAULT '0',
  `agentid2` int(11) DEFAULT '0',
  `agentid3` int(11) DEFAULT '0',
  `is_commission` tinyint(1) DEFAULT '1',
  `commission_price` decimal(18,2) NOT NULL DEFAULT '0.00',
  `delivery_price` decimal(18,2) NOT NULL DEFAULT '0.00',
  `from_user` varchar(50) DEFAULT '' COMMENT '用户ID',
  `nickname` varchar(50) DEFAULT '',
  `headimgurl` varchar(500) DEFAULT '',
  `username` varchar(50) DEFAULT '',
  `mobile` varchar(50) DEFAULT '',
  `address` varchar(200) DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '性别',
  `country` varchar(50) DEFAULT '',
  `province` varchar(50) DEFAULT '',
  `city` varchar(50) DEFAULT '',
  `lat` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '经度',
  `lng` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '纬度',
  `totalprice` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '交易总金额',
  `avgprice` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '平均金额',
  `totalcount` int(10) DEFAULT '0' COMMENT '交易次数',
  `paytime` int(10) DEFAULT '0' COMMENT '上次交易时间',
  `status` tinyint(1) DEFAULT '1',
  `noticetime` int(10) DEFAULT '0',
  `lasttime` int(10) DEFAULT '0',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=197 ;

--
-- 转存表中的数据 `ims_weisrc_dish_fans`
--

INSERT INTO `ims_weisrc_dish_fans` (`id`, `uid`, `weid`, `storeid`, `agentid`, `agentid2`, `agentid3`, `is_commission`, `commission_price`, `delivery_price`, `from_user`, `nickname`, `headimgurl`, `username`, `mobile`, `address`, `sex`, `country`, `province`, `city`, `lat`, `lng`, `totalprice`, `avgprice`, `totalcount`, `paytime`, `status`, `noticetime`, `lasttime`, `dateline`) VALUES
(143, 2, 5, 0, 0, 0, 0, 1, '0.00', '0.00', 'oEZ6bw0bLRzZ2z3mWHnbGCmmbP40', '帝一', 'http://wx.qlogo.cn/mmopen/VzQsdzsGScP9Ap2egpVyPrlsrWdib9f90zEQUZ1YPJ02lKu9NKL21KYSHRE7uVezFsA5gEicxaJic5fsfvdTFr6RA/0', '', '', '', 2, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 1508310637, 1506309098),
(144, 1, 5, 0, 0, 0, 0, 1, '0.00', '0.00', 'oEZ6bw0iZLyvZrHcCUJJO6HYxIy4', '成果', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM54T1XF9lMMossdqem1H2lrmeEwQc81AckkRG6kd0iboX6iaQ2NKffAj7DsRh0qJ8k1SGI1ZkuOoib5w/0', '陈成果', '13696929856', '厦门市思明区大学路世贸海峡大厦 4501', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 1510020954, 1506310393),
(145, 4, 5, 0, 0, 0, 0, 1, '0.00', '0.00', 'oEZ6bwzJU0h1mI7bpXkir0KaZDHs', '小不点', 'http://wx.qlogo.cn/mmopen/BJg5putqadXRu2SdGpHlhMRleibghyK45rOUea7iaOSfn5WlicWIsZwzsBwCkyrbpLPmsvLgGic2BV0GUWDeKV6IFqiaflzLZiaCZo/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1507290764),
(146, 5, 5, 0, 0, 0, 0, 1, '0.00', '0.00', 'oEZ6bw85UJYZcLBMNHMO9gWbFtSA', 'Wind。', 'http://wx.qlogo.cn/mmopen/VzQsdzsGScPZfHoUfZl9Pc69XkvOJxmmYPb2STchQ4hcFRHteeeFIZWdoErwZwrgGaFEBMMrZ2mPLc8w1hKnia13qqdIvDJLj/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 1509098055, 1507623310),
(147, 6, 5, 0, 0, 0, 0, 1, '0.00', '0.00', 'oEZ6bw7yKBT8MbH3OxwXCIZ6RMI0', '糖醋排骨', 'http://wx.qlogo.cn/mmopen/92TOCqUg3p27Ubm5kIbWRic6kHvEsu0c3OjIpV9sr75zjjKln4kReRHVtibMxX8qIE3GATXK7ibNia8WMYyibjwqsg5L7uGCY8BHI/0', '', '', '', 0, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 1508047478, 1508047448),
(148, 0, 5, 0, 0, 0, 0, 1, '0.00', '0.00', 'oEZ6bw08DdgtOlmD8Macsk4nX43k', '彪哥', 'http://wx.qlogo.cn/mmopen/5XNkXKyDREEkbooXpRY6uPzMxpA0IRRTiakCicRopRib5picWomgCaJM1D4jhL1iaOWiaWxQywoiaXlYZCBVPf9Fwj2lllZAU11b5Xw/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1508127094),
(149, 0, 5, 0, 0, 0, 0, 1, '0.00', '0.00', 'oEZ6bwy0FiHNn3UpkRpJ2-DbAdlU', '街墙', 'http://wx.qlogo.cn/mmopen/92TOCqUg3p2ibXFWO11g19DvJCaRYMHt90cARtiaq49LCy3DFW50ic7PtQTkdbQSddL69f264SDDQIt6pha1Eia0YTEJZ4YXWTwm/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 1508229776, 1508229727),
(150, 0, 5, 0, 0, 0, 0, 1, '0.00', '0.00', 'oEZ6bw_1ZORRrCmzRPr9r4Cqv7lQ', '王庭协', 'http://wx.qlogo.cn/mmopen/VzQsdzsGScOicCa7Dl0vroGclBMywAWZJDlVI7XsSa8VuvkrglAIuTAaLgapmI5FDQnrCL7X6S9pSxqkSrssnwg/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 1509938615, 1508310589),
(151, 0, 5, 0, 0, 0, 0, 1, '0.00', '0.00', 'oEZ6bw_N61zxNySWFYDvBqAUTWUQ', '王', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKCxoEBccuCGPIn2CPsNBIjuecKg2BcdY8YGonYnEjIoojALf6MEEbF46Okvr5rwlCVvqzkG7dVyQ/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 1508311287, 1508311268),
(152, 0, 5, 0, 0, 0, 0, 1, '0.00', '0.00', 'oEZ6bwwDHUmm68wE2waN7vYDsCkY', 'liam', 'http://wx.qlogo.cn/mmopen/92TOCqUg3p2ibXFWO11g19F1n3UbtBkqo1n9ZZcb4vb8csem7Vb8Be792fKTxW4sWt4kG5gXsYRxjvTjCWNxQ4ia08UPovqI3s/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 1509967356, 1508318576),
(153, 0, 5, 0, 0, 0, 0, 1, '0.00', '0.00', 'oEZ6bw5z3cuoT91YLtOntd9NRCvw', '黄傑', 'http://wx.qlogo.cn/mmopen/92TOCqUg3p3wDbZbSxvOgjFUHjfqIicsjiau2cuCQEsQDFAknbgKwrb2PX8SUqibO2icQAbkEfL7ZppN3hwwJmBfxZh84zbIVib4g/0', '黄杰', '13866668888', '厦门市湖里区南山路288号 南山路', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 1509952754, 1508488378),
(154, 0, 5, 0, 0, 0, 0, 1, '0.00', '0.00', '', '', '', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1508558959),
(155, 0, 5, 0, 0, 0, 0, 1, '0.00', '0.00', '', '', '', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1508559855),
(156, 0, 5, 0, 0, 0, 0, 1, '0.00', '0.00', 'oEZ6bwy69eIxS1-_ET7pz1t9EnIo', '北海道', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKETwPy9Ao9u6xqlGo3kgIicsjn75hPuypD3cyHbfxueerFhhcYH6OOEmBWr174nh1OdKuwWXicYKFg/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1508729072),
(157, 15, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY005X21OxPllfXAlfbcnlrF-A', '帝一', 'http://wx.qlogo.cn/mmopen/qGusKyb0IEc5IkWXGCrrxhdnEEPUJWpL0ibtAMsFia4DGJkCIC3lHpY9vG6eB4siakVsKc6uolyLqOmCan9iaqcr1w/0', '前期', '18050086692', 'undefined undefined', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 1510125360, 1509085858),
(158, 16, 6, 21, 0, 0, 0, 1, '0.00', '0.00', 'oSRY007ii1nrPRxSCeihLAxANMB8', '成果', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM4lficuQ7Jo2kInMGDxsprd5VdXpBaRRPKd9EIMoVBTAXPA5ia9q6fCIhnzPRz0pfNG1M8FCGGjNObg/0', '陈成果', '13696929853', 'undefined undefined', 1, '', '', '', '24.4645235524', '118.1218400757', '200.00', '200.00', 1, 1509421990, 1, 0, 1511161925, 1509097353),
(159, 0, 6, 0, 0, 0, 0, 1, '0.00', '0.00', '', '', '', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1509097372),
(160, 17, 6, 21, 158, 0, 0, 1, '0.00', '0.00', 'oSRY0002kWJeWI40pNCycPqBUO3E', 'Wind', 'http://wx.qlogo.cn/mmopen/eHiaJB7Wb9ALORASKvnmrMBZum1A5HcX6mSXsdUzYe6IwBLxpK6zSticM0aceWdp0X8b1bRsy2RBe4mmsOUpphALuNicicHnh6Gj/0', '袁', '13886737567', 'undefined undefined', 1, '', '', '', '24.4695214738', '118.0880477842', '5167.00', '645.88', 8, 0, 1, 1511161854, 1511160410, 1509098086),
(161, 0, 6, 0, 158, 0, 0, 1, '0.00', '0.00', 'oSRY00-uT_2g54rJRKYrv6eb7lI0', '北海道', 'http://wx.qlogo.cn/mmhead/DC8d9GYbibrfxUdWuCRQLgsDjqpCDnQ6ibZyLIXIfk8uA/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 0, 0, 1509098521, 1509098112),
(162, 18, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY00yS5yHUwKxVARp8b_21YceE', '王庭协', 'http://wx.qlogo.cn/mmopen/qGusKyb0IEc4Vp17o76DFnwvg45Iicw02ArXBAgViaibAsY7BRdcQaWGhW1frM5oBJo8koo3Wm3dSWLpdllMSibqUA/0', '王庭协', '13163906015', '厦门市思明区观日路20号4楼 猿人行星', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 1510120853, 1509111990),
(163, 21, 6, 0, 160, 158, 0, 1, '0.00', '0.00', 'oSRY0069zmR3bYgg6-YSEbdA-K1E', '即来之～则安之', 'http://wx.qlogo.cn/mmopen/YSBzp7uZPb28FGgxXCra8ADs6tyMlwDrdulyJAf3Y9IQutlSCNVyTntgibMByRQRUbWngQvBAG4Ar1FD8qJibAibDGK6OgvicrcP/0', '刘巧明', '18150077127', '厦门市思明区禾祥西路8-18 厦门市思明区禾祥西路8-18', 1, '', '', '', '24.4694655210', '118.0877110055', '0.00', '0.00', 0, 0, 1, 0, 1511145768, 1509114948),
(164, 19, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY00xwP3RqZUy04n2o1Q3c-dHc', '孙佳宏', 'http://wx.qlogo.cn/mmopen/YSBzp7uZPb2LUF9mB1BQZ0icoX0IJfDNtoy9d9iaZUdfPEO4FMOkVibc8jMXYib7YqIpYnWtdOicALuJ4zByialbP6icvw38hOavswk/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1509118367),
(165, 0, 6, 0, 0, 0, 0, 1, '0.00', '0.00', '', '', '', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1509268220),
(166, 20, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY001Rpt_vlGa5ZAmGHmweECbo', '糖醋排骨', 'http://wx.qlogo.cn/mmopen/YSBzp7uZPb2rBGRWKm2FjSJTDDgO275WM0cHlGHtGQvFaHfiaQgaRzIUYhTA4msdMPicTfFadxlKdRI9eWjEzwORoq5pt8IPibB/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1509268481),
(167, 23, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY0009p7BYSw0LnJpUxWbD2924', '彪哥', 'http://wx.qlogo.cn/mmopen/eHiaJB7Wb9AL6UsFpIZ8ZGPkibnDk8xxLATLU4Lbb4AnXFvYt3b8FzMfynrSsu0mlM79C8g2PjBvB7JPgsiaUZ9063icAC02aEiaK/0', '郑云彪', '15080151627', '厦门市思明区观日路20', 1, '', '', '', '24.4930714855', '118.1865131723', '0.00', '0.00', 0, 0, 1, 0, 1510302776, 1509333325),
(168, 24, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY006QGqwA_kc5J-lt-jW0xdj0', '安安', 'http://wx.qlogo.cn/mmopen/yicNtvz6vYyoA5fNPEyia5ERqcLQrTHVWBhD4NFOMq2uEPlLPsrDgoxcQR0iae2C3siaF0EObHIalTsjD21ag8kYMaxXE2fU8Niag/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1509343405),
(169, 25, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY003vEej7mx16uayKvDVYcH0c', '　　Nephila。', 'http://wx.qlogo.cn/mmopen/YSBzp7uZPb06XD6M4cESmhp7OA3pyYnBeUUBZmpz7aV6BcbI46hlqWFtrD0EvfY1ulez67byYf9ibDIzILt5VnIIqyMquu45Q/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1509503417),
(170, 26, 6, 21, 158, 0, 0, 1, '0.00', '0.00', 'oSRY002sNxP0bwNvR-pdAsYYFKz8', '卞晨龙', 'http://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eobvhQlvOI0d3Vz9O1rVdFrvBGTOSVDwDzKTnlxbl4XOsLeoSdLPiaAAgjfPYeOELT80A6ADk7ABmQ/0', '吕奉先', '13232323232', '厦门市思明区厦禾路269号-103', 1, '', '', '', '24.4672190000', '118.0879830000', '1118.00', '559.00', 2, 0, 1, 1510298592, 0, 1509587412),
(171, 27, 6, 21, 158, 0, 0, 1, '0.00', '0.00', 'oSRY004apWoEmgGRX6tq94KeP8SE', '链家。聂平', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJ0WDPkUEbtiaHFcO0gMRibI0cGutTIibjRlOo2HibGCCMbBPH7MOtuT2OK1AN0VczjFelAqg3N5q2rIQ/0', '聂青', '18181066010', '厦门市思明区角滨路25号', 1, '', '', '', '24.4695690046', '118.0878285636', '2170.00', '1085.00', 2, 0, 1, 0, 1510195155, 1509935652),
(172, 0, 5, 0, 0, 0, 0, 1, '0.00', '0.00', 'oEZ6bw6Ciy4wuBnG-5sCeU4s-hxw', '舞～夜殇', 'http://wx.qlogo.cn/mmopen/EKQNUqOicjibia3NaPAnOCPcYWGpibCxS0Uia8NXdRVSyefib4KMnjw3p2DnJPyR1FqzrsDAaEYD6w81uuZSiaquAAfFsQzjPq7dD6s/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1509939528),
(173, 29, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY000WHC1RqLJ-YU_P-setRxts', 'Raven 李马剑', 'http://wx.qlogo.cn/mmopen/eHiaJB7Wb9AIic9OAuRpGN9ZkHHdKrclRG84HZibZAvspV8GDUC7Yz0tNumqda6gAThlicfJXJKgEdersU7eKUVibLw/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 1509954233, 1509953533),
(174, 30, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY00wiwpxSwtmLXEMLGjVZx444', '专注互联网～江伟斌', 'http://wx.qlogo.cn/mmopen/yicNtvz6vYyqMcRT0EqcuOic19ZNmjy3PLNTcNneIVDAKOvibBoVgwfXTcmibTb2jIft0f4ZEVOebe5DC2iaZrt2lRQ/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1509953906),
(175, 31, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY00y8tEJOKS4Wj2DKPzLLRX4w', '朱肖芳', 'http://wx.qlogo.cn/mmopen/eHiaJB7Wb9AI4KP0Nq3icDtx9Gndh7Z4HRicBhBHfGQjyh2bSdcB9mCl7Mwt3uxQ9KMYN18HJOoZOq8Wtk8ZabXrA79ozjSsIYK/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1509955199),
(176, 32, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY00xbvLPo4398l0ZjXXqgbY90', 'liam', 'http://wx.qlogo.cn/mmopen/YSBzp7uZPb2LUF9mB1BQZ7xvnITlK9TNBZoRSCxyflPY7FwRTvCqDnfibmZl6GUUB3ia40ONa9k25kDtZG2WFqhribibC8zxUxmI/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 1510117064, 1509967418),
(177, 33, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY00yYsbrQoDjLXPbsJV53YcNs', 'SO WHAT', 'http://wx.qlogo.cn/mmopen/yicNtvz6vYyrv4uGjgST1zaqSc5gpgzLW4ZB587wD5bCvGSHNMPnaNF4iaoEBOiawBqJX4GZzDAoCv44YIfpTQfibcS95DjY5kOS/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 1510302731, 1510121577),
(178, 35, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY004zChumoRtS7gtYVPYL1Jcc', '舞～夜殇', 'http://wx.qlogo.cn/mmopen/yicNtvz6vYyq9ek3icYEFHRJZSnoibwyhxXgxwPHT7P438GldP5W1bckzs9hhniaichIHT8CIDlKicCkmpMCAs9uIhIa9ibkzLuabBw/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 1510125585, 1510123184),
(183, 0, 6, 0, 0, 0, 0, 1, '0.00', '0.00', '', '', '', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1510301128),
(179, 37, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY0002mJm8W8DuAzZE5sZ3HxUU', 'Kingsen', 'http://wx.qlogo.cn/mmopen/qGusKyb0IEezhuyjRkgtxeAdeL6AbIKiazAFCibt2vvVvA6ibzhicDdLG6YcjmkdOQ6cdPN5icKwwwTdZDMoppD4kKZJNhBZdnvyS/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1510211899),
(182, 39, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY003Ve7He7RlAnCV4CKmNLHEA', '帅逼小新', 'http://wx.qlogo.cn/mmopen/yicNtvz6vYyoA5fNPEyia5EbY15vEN0IbxrY4lpsaA1cWBTNVPXmWjEIkpy2IvhW1QOqHs56Bq8e5ABPDW1BBLLMcdK8tQnyEF/0', '猿人小哥', '13145200000', 'undefined undefined', 1, '', '', '', '24.4930900000', '118.1869360000', '0.00', '0.00', 0, 0, 1, 0, 0, 1510298059),
(180, 44, 6, 21, 0, 0, 0, 1, '0.00', '0.00', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '', '', '点点', '18888888888', 'undefined undefined', 1, '', '', '', '24.4755640000', '118.1133500000', '1474.00', '491.33', 3, 0, 1, 0, 1510729093, 1510296914),
(194, 0, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY000uHhXcjQ6jvJ9QemtELGmQ', '沐', 'http://wx.qlogo.cn/mmopen/qGusKyb0IEezhuyjRkgtxQrCdfnAjibEAJlOXJbO5PdZjCFoV8GjCkWGvZJupjS7yBiaibQs7eEzWzRNHt1PsBRiblwm8mftcYOv/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1510971571),
(181, 0, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY00ymxuQQkyt71joCQe5uH1WQ', '安静的美男子(=￣ ρ￣=).zzZZ', 'http://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLibicElvH09SqPDVkKBB8xYiboHOqzZ74QE1d8v1BtLiclxAmLZGlZoAvw4HibhujjR7LY88GmHwhTiaIw/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1510297139),
(184, 0, 6, 0, 0, 0, 0, 1, '0.00', '0.00', '', '', '', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1510301203),
(185, 0, 6, 0, 0, 0, 0, 1, '0.00', '0.00', '', '', '', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1510302086),
(186, 40, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY004A93llNfyzRwav-17antW8', '', 'http://wx.qlogo.cn/mmopen/YSBzp7uZPb2LUF9mB1BQZwn9ibbhwLFedtPtkbLwnIJovdsj6RyibPbWicUdmtSaTSpwJDBKbrC4mRBH7iaFCF8AFrVEjaAgViblV/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 1510302296, 1510302242),
(187, 0, 6, 0, 0, 0, 0, 1, '0.00', '0.00', '', '', '', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1510302563),
(188, 0, 5, 0, 0, 0, 0, 1, '0.00', '0.00', 'oEZ6bw26kL4fH8z0Dw32WLI0A9VU', '战神', 'http://wx.qlogo.cn/mmopen/5XNkXKyDREEONy5pvPFKRObLb9JqochthEeW1icps0JXku31u8iaOfcwfRS8PWWJSZibts8sX4MmcRhxp8GZzDeCrmu3jTYNjMf/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1510316012),
(189, 45, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY0002JvnXBtEpaAY6FbFSnWQY', 'Lc啊', 'http://wx.qlogo.cn/mmopen/YSBzp7uZPb2LUF9mB1BQZ5j84icIQoIaOicTEoy5dUoC9bSlibt1zBHFYppyib3rQEtwSiaIjmibrpgYyuowAfuRQyAQMPnXbrpKAh/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 1510737267, 1510563233),
(190, 0, 10, 0, 0, 0, 0, 1, '0.00', '0.00', '', '', '', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1510623179),
(191, 0, 10, 0, 0, 0, 0, 1, '0.00', '0.00', '', '', '', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1510623180),
(192, 0, 10, 0, 0, 0, 0, 1, '0.00', '0.00', '', '', '', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1510623188),
(193, 0, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY0041WZrzvp2v5xNyImo5LAZI', 'Steven', 'http://wx.qlogo.cn/mmopen/eHiaJB7Wb9AKezkEs2lCv7g2AA0MOf7SlOkCIL8u3GYtHyfRwEzanq1UEq62WBmKqXW88o6nN7d8U8BQLhIcEOTDV9AATuHLib/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1510653262),
(195, 0, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY00_4HQL3U8SwTcdHz9PmjSnQ', '街墙', 'http://wx.qlogo.cn/mmopen/YSBzp7uZPb2LUF9mB1BQZyLn9icvfQLbjZ0iaEvJbrYFMzgMFTObkndDicSUfDt0MTD3AmULtzKgQ8V9DYv6eQU7mB1MehiaBB6t/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1511240806),
(196, 0, 6, 0, 0, 0, 0, 1, '0.00', '0.00', 'oSRY00-8Udss0lTrtr-ZSwOJEC2I', 'You', 'http://wx.qlogo.cn/mmopen/YSBzp7uZPb2LUF9mB1BQZ4F2sfmJMbicTGtVXNaMvjfguAcN9hSdfMA7MibrX68YMGVG2f1HmRa6nef6okaedINj85nOBKFREn/0', '', '', '', 1, '', '', '', '0.0000000000', '0.0000000000', '0.00', '0.00', 0, 0, 1, 0, 0, 1511264954);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_feedback`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned DEFAULT '0',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '门店编号',
  `orderid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单编号',
  `from_user` varchar(100) DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '5' COMMENT '等级',
  `content` varchar(500) DEFAULT '' COMMENT '回复内容',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_fengniao`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_fengniao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `orderid` int(11) DEFAULT '0',
  `open_order_code` varchar(200) DEFAULT '' COMMENT '蜂鸟配送开放平台返回的订单号',
  `partner_order_code` varchar(200) DEFAULT '' COMMENT '商户自己的订单号',
  `order_status` int(11) DEFAULT '0' COMMENT '状态码',
  `push_time` int(11) DEFAULT '0' COMMENT '状态推送时间(毫秒)',
  `carrier_driver_name` varchar(200) DEFAULT '' COMMENT '蜂鸟配送员姓名',
  `carrier_driver_phone` varchar(200) DEFAULT '' COMMENT '蜂鸟配送员电话',
  `description` varchar(200) DEFAULT '' COMMENT '描述信息',
  `address` varchar(200) DEFAULT '' COMMENT '定点次日达服务独有的字段: 微仓地址',
  `latitude` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '定点次日达服务独有的字段: 微仓纬度',
  `longitude` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '定点次日达服务独有的字段: 微仓经度',
  `cancel_reason` int(11) DEFAULT '0' COMMENT '订单取消原因. 1:用户取消, 2:商家取消',
  `error_code` varchar(200) DEFAULT '' COMMENT '错误编码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_goods`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `storeid` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL COMMENT '公众号id',
  `labelid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '打印标签',
  `pcate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `ccate` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `thumb` varchar(500) NOT NULL DEFAULT '',
  `unitname` varchar(5) NOT NULL DEFAULT '份' COMMENT '单位',
  `description` varchar(1000) NOT NULL DEFAULT '' COMMENT '描述',
  `week` varchar(100) NOT NULL DEFAULT '1,2,3,4,5,6,0' COMMENT '星期',
  `taste` varchar(1000) NOT NULL DEFAULT '' COMMENT '口味',
  `isspecial` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `marketprice` varchar(10) NOT NULL DEFAULT '' COMMENT '现价',
  `memberprice` varchar(10) NOT NULL DEFAULT '' COMMENT '会员价',
  `productprice` varchar(10) NOT NULL DEFAULT '' COMMENT '原价',
  `packvalue` varchar(10) NOT NULL DEFAULT '0' COMMENT '打包费',
  `delivery_commission_money` decimal(10,2) DEFAULT '0.00',
  `commission_money1` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '一级佣金',
  `commission_money2` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '二级佣金',
  `counts` int(10) NOT NULL DEFAULT '-1' COMMENT '今日库存',
  `today_counts` int(10) NOT NULL DEFAULT '0' COMMENT '今日销售量',
  `lasttime` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '总销量',
  `credit` int(10) NOT NULL DEFAULT '0' COMMENT '奖励积分',
  `subcount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被点次数',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=234 ;

--
-- 转存表中的数据 `ims_weisrc_dish_goods`
--

INSERT INTO `ims_weisrc_dish_goods` (`id`, `storeid`, `weid`, `labelid`, `pcate`, `ccate`, `title`, `thumb`, `unitname`, `description`, `week`, `taste`, `isspecial`, `marketprice`, `memberprice`, `productprice`, `packvalue`, `delivery_commission_money`, `commission_money1`, `commission_money2`, `counts`, `today_counts`, `lasttime`, `sales`, `credit`, `subcount`, `status`, `recommend`, `deleted`, `displayorder`, `dateline`, `content`) VALUES
(187, 20, 5, 0, 117, 0, '香辣鸡腿汉堡', 'images/5/2017/10/YCaiIIUarQ04caXxp1ipi11Ga04p0D.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '10', '9', '10', '0', '0.00', '0.00', '0.00', 10, 0, 1510714159, 1, 1, 27, 1, 0, 0, 1, 1508925849, ''),
(188, 20, 5, 0, 117, 0, '双层牛肉汉堡', 'images/5/2017/10/Jfc6q3MnEZzc1931613x99yc1T6cWC.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '12', '11', '12', '0', '0.00', '0.00', '0.00', 10, 0, 1510714159, 0, 1, 0, 1, 0, 0, 0, 1508926181, ''),
(189, 20, 5, 0, 117, 0, '板烧鸡腿汉堡', 'images/5/2017/10/jjgj5nZhjESFEZR59hgJEexh9jEerZ.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '12', '10', '12', '0', '0.00', '0.00', '0.00', 10, 0, 1510714159, 0, 1, 0, 1, 0, 0, 0, 1508926253, ''),
(190, 20, 5, 0, 117, 0, '鸡腿莲合', 'images/5/2017/10/khdLb0zHyl8L22IlPCxOr2PlP8Brll.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '9', '8', '9', '0', '0.00', '0.00', '0.00', 10, 0, 1510714159, 0, 1, 1, 1, 0, 0, 0, 1508926415, ''),
(191, 20, 5, 0, 117, 0, '上校鸡块', 'images/5/2017/10/A1b7B74LbVcMzMuNZm6yCCCu6zFbc5.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '8', '8', '8', '0', '0.00', '0.00', '0.00', -1, 0, 1510714159, 0, 1, 1, 1, 0, 0, 0, 1508926471, ''),
(192, 20, 5, 0, 117, 0, '美式薯条', 'images/5/2017/10/H4H2Q2b422ZB422YmhBAQ2bJ9IwCIa.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '8', '8', '8', '0', '0.00', '0.00', '0.00', 10, 0, 1510714159, 2, 0, 3, 1, 0, 0, 6, 1508926558, ''),
(193, 20, 5, 0, 117, 0, '老北京鸡肉卷', 'images/5/2017/10/kTZrwX24r2r95ZG48z30F3Xbluerw5.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '12', '10', '12', '0', '0.00', '0.00', '0.00', 10, 0, 1510714159, 6, 1, 6, 1, 0, 0, 7, 1508926691, ''),
(194, 20, 5, 0, 118, 0, '缤纷全家桶', 'images/5/2017/10/WWHnk4B1wN7761X6471BNx72xD127x.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '50', '50', '50', '0', '0.00', '0.00', '0.00', 10, 0, 1510714159, 0, 0, 0, 1, 0, 0, 1, 1508926798, ''),
(195, 20, 5, 0, 118, 0, '套餐一', 'images/5/2017/10/AP3ZdJT3tr39sT7ujP9sU76h338rtz.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '10', '10', '10', '0', '0.00', '0.00', '0.00', 10, 0, 1510714159, 0, 0, 0, 1, 0, 0, 2, 1508926880, ''),
(196, 20, 5, 0, 118, 0, '套餐二', 'images/5/2017/10/L12xHFpji4Xq5iP21FzecHP4ExH2xh.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '10', '10', '10', '0', '0.00', '0.00', '0.00', 10, 0, 1510714159, 0, 0, 0, 1, 0, 0, 3, 1508926916, ''),
(197, 20, 5, 0, 118, 0, '套餐三', 'images/5/2017/10/IXw7z4H75WW7wRXZHArP4w7L2WxxCl.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '10', '10', '10', '0', '0.00', '0.00', '0.00', 10, 0, 1510714159, 1, 0, 1, 1, 0, 0, 4, 1508926952, ''),
(198, 20, 5, 0, 118, 0, '套餐四', 'images/5/2017/10/eS9dtXzuhIHs3uiDizw0ZdJIuD0ASs.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '10', '10', '10', '0', '0.00', '0.00', '0.00', 10, 0, 1510714159, 0, 0, 1, 1, 0, 0, 5, 1508926991, ''),
(199, 21, 6, 0, 122, 0, '苦笋小肠煲', 'images/6/2017/10/z0UATk0P0UGEw524qEP2EPgtUQy55p.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '38', '36', '38', '0', '0.00', '0.00', '0.00', 10, 0, 1511254335, 0, 0, 0, 1, 0, 0, 1, 1509119826, ''),
(200, 21, 6, 0, 122, 0, '日本豆腐煲', 'images/6/2017/10/O9Z4fcCzzVmMdFE3EsmdCMmam3z8Te.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '22', '20', '22', '0', '0.00', '0.00', '0.00', 10, 0, 1511254335, 0, 0, 0, 1, 0, 0, 2, 1509119989, ''),
(201, 21, 6, 0, 122, 0, '苦瓜煲', 'images/6/2017/10/g3phUN34ZE3HvbA333z3eh93VV4VNa.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '22', '20', '22', '0', '0.00', '0.00', '0.00', 10, 0, 1511254335, 9, 0, 1, 1, 0, 0, 3, 1509120048, ''),
(202, 21, 6, 0, 122, 0, '羊肉煲', 'images/6/2017/10/kukk49447L7QzuQUL399n9QP4L3gl6.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '75', '70', '75', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 6, 0, 7, 1, 0, 0, 4, 1509120137, ''),
(203, 21, 6, 0, 125, 0, '凉拌黄瓜', 'images/6/2017/10/JZ7UEED4HLbBxe17egQQfQFQQlhXxx.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '20', '18', '20', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 1, 0, 1, 1, 0, 0, 1, 1509120253, ''),
(204, 21, 6, 0, 125, 0, '虎皮青椒', 'images/6/2017/10/Btwm2jO7BBabwwjWM7mCWZRbbKKzkc.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '20', '18', '20', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 0, 0, 1, 1, 0, 0, 2, 1509120314, ''),
(205, 21, 6, 0, 125, 0, '夫妻肺片', 'images/6/2017/10/VgwUpu082d17pgB2Z4FB8UgF72017b.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '35', '33', '35', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 2, 0, 2, 1, 0, 0, 4, 1509120362, ''),
(206, 21, 6, 0, 125, 0, '鸡蛋干', 'images/6/2017/10/B9kQamqUMKQaRPUmbZaZx9989XUPKX.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '20', '18', '20', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 2, 0, 3, 1, 0, 0, 3, 1509120407, ''),
(207, 21, 6, 0, 123, 0, '泡椒鸡软骨', 'images/6/2017/10/XBmO6B6FLuJLT6oibJ7hFb3J2Ioj2O.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '48', '', '48', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 1, 0, 3, 1, 0, 0, 1, 1509120499, ''),
(208, 21, 6, 0, 123, 0, '泡椒鸡杂', 'images/6/2017/10/SY4y7dk4k4Zs4ddtl0904Z5KZ0MDl0.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '35', '', '35', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 1, 0, 4, 1, 0, 0, 2, 1509120534, ''),
(209, 21, 6, 0, 123, 0, '泡椒鳝段', 'images/6/2017/10/ls63XoNnou3oh6X3sdXzSeN4S4UOU3.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '58', '', '58', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 11, 0, 11, 1, 0, 0, 3, 1509120603, ''),
(210, 21, 6, 0, 123, 0, '泡椒鱼肚', 'images/6/2017/10/Pp8n15zuox1XXq31K3jz3xnn3n3JkO.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '48', '', '48', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 8, 0, 8, 1, 0, 0, 4, 1509120646, ''),
(211, 21, 6, 0, 121, 0, '铁板腰花', 'images/6/2017/10/uaxwAfbIxFaCoFfwcfbqCACIYC1oXB.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '38', '', '38', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 8, 0, 7, 1, 0, 0, 1, 1509120713, ''),
(212, 21, 6, 0, 121, 0, '铁板田鸡', 'images/6/2017/10/xjjTkIsjI7738IJOgW020bOW3GJj7O.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '48', '', '48', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 5, 1, 5, 1, 0, 0, 2, 1509120752, ''),
(213, 21, 6, 0, 121, 0, '铁板牛肉', 'images/6/2017/10/C7Onwz6lNWj3nflL770ElL1flLoFfL.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '52', '', '52', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 20, 0, 15, 1, 0, 0, 3, 1509120790, ''),
(214, 21, 6, 0, 122, 0, '铁板鳝鱼', 'images/6/2017/10/Dem6RPSU77euqr8R7Z7804Z67PePe8.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '52', '', '52', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 4, 1, 8, 1, 0, 0, 4, 1509120838, ''),
(215, 21, 6, 0, 124, 0, '炒生菜', 'images/6/2017/10/iJ3Q6760RqSk3yyZPkfusSJsZ60szs.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '18', '', '18', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 1, 0, 1, 1, 0, 0, 1, 1509120908, ''),
(216, 21, 6, 0, 124, 0, '炒小白菜', 'images/6/2017/10/vNl3rqNB8Li8Im8Wla3NWnInjwVBc3.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '18', '', '18', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 2, 0, 2, 1, 0, 0, 2, 1509120948, ''),
(217, 21, 6, 0, 124, 0, '松仁玉米', 'images/6/2017/10/IfMPFoeVo585a6AffA83M53rZROplL.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '22', '', '22', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 5, 0, 5, 1, 0, 0, 3, 1509120982, ''),
(218, 21, 6, 0, 124, 0, '苦瓜咸蛋黄', 'images/6/2017/10/Zj4hp4d8budDi64kD8OOMnb2j6yjnu.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '0.1', '', '25', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 17, 0, 17, 1, 0, 0, 4, 1509121018, ''),
(219, 21, 6, 0, 126, 0, '莲籽猪肚汤', 'images/6/2017/10/i6MD865899Qmwz3T1h6T1T6m6z8TJq.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '38', '', '38', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 7, 1, 1, 1, 0, 0, 1, 1509121104, ''),
(220, 21, 6, 0, 126, 0, '玉米排骨汤', 'images/6/2017/10/K5rv1Za5l8uooa8l3dL1o558Tl1Z5V.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '35', '', '35', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 2, 1, 2, 1, 0, 0, 2, 1509121148, ''),
(221, 21, 6, 0, 126, 0, '文蛤豆腐汤', 'images/6/2017/10/mr34xiRkzkrNqX0Gtk3RVWv4XYIvG4.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '26', '', '26', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 1, 0, 1, 1, 0, 0, 3, 1509121193, ''),
(222, 21, 6, 0, 127, 0, '白米饭', 'images/6/2017/10/HDG00GlZdzWCzGyngXqD9NyxtXWjlY.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '2', '', '2', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 9, 0, 9, 1, 0, 0, 1, 1509121267, ''),
(223, 21, 6, 0, 127, 0, '蛋炒饭', 'images/6/2017/10/F65oF6gO4FcOXongNx6hHfGg9OPOxz.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '16', '', '16', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 2, 0, 3, 1, 0, 0, 2, 1509121308, ''),
(224, 21, 6, 0, 127, 0, '炒米粉／面', 'images/6/2017/10/GFN8JSL0l3S8fzCl061J1lFc0clN1n.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '20', '', '20', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 1, 0, 3, 1, 0, 0, 3, 1509121347, ''),
(225, 21, 6, 0, 119, 0, '麻辣大龙虾', 'images/6/2017/10/Y0cHDoy1AhhYuOt5tb1ARSZuO5id5R.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '178', '168', '178', '0', '0.00', '0.00', '0.00', -1, 0, 1511252011, 44, 2, 27, 1, 0, 0, 1, 1509121615, ''),
(226, 21, 6, 0, 119, 0, '麻辣小龙虾', 'images/6/2017/10/UuCrvLue7kT5k8lPE85vev1rL6keaR.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '128', '118', '128', '0', '0.00', '0.00', '0.00', -1, 0, 1511251802, 142, 0, 75, 1, 0, 0, 2, 1509121660, ''),
(227, 22, 7, 0, 129, 0, '11111111', '', '份', '', '1,2,3,4,5,6,0', '', 1, '0', '', '', '0', '0.00', '0.00', '0.00', -1, 0, 1510711453, 0, 0, 111, 1, 0, 0, 0, 1510192143, ''),
(228, 22, 7, 0, 129, 0, '如意金箍棒', '', '份', '', '1,2,3,4,5,6,0', '', 1, '0', '', '', '0', '0.00', '0.00', '0.00', -1, 0, 1510711453, 0, 0, 0, 1, 0, 0, 0, 1510198466, ''),
(229, 21, 6, 0, 127, 0, '宇宙无敌双人餐', 'images/6/2017/11/CXfe2UWriaFFie9Kr2o2zo2E2GwQXQ.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '9999', '998', '13420', '50', '0.00', '0.00', '0.00', -1, 0, 1511254335, 0, 0, 0, 1, 0, 1, 0, 1510563575, ''),
(230, 21, 6, 0, 119, 0, '酸辣土豆丝', '', '1份', '舒服', '1,2,3,4,5,6,0', '酸辣', 2, '8', '5', '8', '1', '0.00', '0.00', '0.00', -200, 0, 1511252016, 2010, 1, 35, 1, 0, 0, 0, 1510665729, ''),
(232, 21, 6, 0, 119, 0, '聂平', 'images/6/2017/11/SfhT3ShhsEFRTd99gFhk3ReRfMm3fq.jpg', '份', '', '1,2,3,4,5,6,0', '', 2, '8.88888888', '8.88888888', '8.88888888', '1', '0.00', '0.00', '0.00', 5, 0, 1511254335, 16, 0, 202, 0, 0, 0, 0, 1511146582, ''),
(231, 21, 6, 0, 119, 0, '黑鱼100斤', '', '份', '', '1,2,3,4,5,6,0', '', 2, '1', '', '', '0', '0.00', '0.00', '0.00', -1, 0, 1511254335, 0, 0, 0, 1, 0, 0, 0, 1510752416, ''),
(233, 21, 6, 0, 119, 0, '水煮大鲸鱼', 'images/6/2017/11/uW5KyyY6s52eEolL8TEY8zZyJStzej.jpg', '条', '吃鲸鱼只有坏处没有好处从人体来讲现海洋污染严重鲸鱼又食物链顶端体内积蓄了许多毒素比汞吃了绝对有害从生态上讲上世纪大规模捕鲸已经使好几种类鲸鱼濒临灭绝所了保护鲸请要吃鲸', '1,2,3,4,5,6,0', '酸  辣', 2, '180000000', '178000000', '180000000', '200000', '0.00', '0.00', '0.00', 2, 0, 1511254335, 3, 19999999, 82, 1, 0, 0, 1, 1511146916, '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_goods_option`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_goods_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `price` decimal(10,2) DEFAULT '0.00',
  `stock` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `specs` text,
  PRIMARY KEY (`id`),
  KEY `indx_goodsid` (`goodsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_intelligent`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_intelligent` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '门店id',
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` int(10) NOT NULL DEFAULT '0' COMMENT '适用人数',
  `content` varchar(1000) NOT NULL DEFAULT '' COMMENT '商品',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `ims_weisrc_dish_intelligent`
--

INSERT INTO `ims_weisrc_dish_intelligent` (`id`, `storeid`, `weid`, `name`, `content`, `displayorder`, `enabled`) VALUES
(4, 23, 7, 3, '', 2, 1),
(5, 22, 7, 5, '227,228', 0, 1),
(6, 21, 6, 5, '226,213,202,210,209,218,217', 0, 1),
(7, 21, 6, 2, '226,225,213,212,211,202,214,201,200,199', 0, 1),
(8, 21, 6, 3, '226,225,212,211', 0, 1),
(9, 21, 6, 4, '226,225,213,212', 0, 1),
(10, 21, 6, 2, '226,225', 0, 1),
(11, 21, 6, 3, '226,213,212', 0, 1),
(12, 21, 6, 3, '226,213,212,202,214,210', 0, 1),
(13, 21, 6, 2, '226,225', 0, 1),
(14, 21, 6, 2, '226', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_mealtime`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_mealtime` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `begintime` varchar(20) DEFAULT '09:00' COMMENT '开始时间',
  `endtime` varchar(20) DEFAULT '18:00' COMMENT '结束时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否开启',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- 转存表中的数据 `ims_weisrc_dish_mealtime`
--

INSERT INTO `ims_weisrc_dish_mealtime` (`id`, `weid`, `storeid`, `begintime`, `endtime`, `status`, `dateline`) VALUES
(31, 5, 1, '08:30', '18:00', 0, 1506309136),
(40, 6, 1, '08:30', '18:00', 0, 1510752127),
(33, 6, 21, '08:30', '18:00', 0, 1509121770),
(36, 7, 23, '08:30', '18:00', 0, 1510213529),
(35, 7, 1, '08:30', '18:00', 0, 1510192222),
(37, 11, 1, '08:30', '18:00', 0, 1510283128),
(38, 9, 1, '08:30', '18:00', 0, 1510625267);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_nave`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_nave` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `type` int(10) NOT NULL DEFAULT '-1' COMMENT '链接类型 -1:自定义 1:首页2:门店3:菜单列表4:我的菜单',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '导航名称',
  `link` varchar(200) NOT NULL DEFAULT '' COMMENT '导航链接',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_order`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL COMMENT '公众号id',
  `storeid` int(10) unsigned NOT NULL COMMENT '门店id',
  `couponid` int(10) unsigned NOT NULL DEFAULT '0',
  `rechargeid` int(10) NOT NULL DEFAULT '0',
  `quicknum` varchar(30) NOT NULL DEFAULT '0001',
  `from_user` varchar(50) NOT NULL,
  `ordersn` varchar(30) NOT NULL COMMENT '订单号',
  `totalnum` tinyint(4) DEFAULT NULL COMMENT '总数量',
  `totalprice` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总价格',
  `tea_money` decimal(10,2) DEFAULT '0.00',
  `service_money` decimal(10,2) DEFAULT '0.00',
  `discount_money` decimal(10,2) DEFAULT '0.00',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '-1取消状态，0普通状态，1为确认付款方式，2为成功',
  `ispay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0,1,2',
  `ismerge` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否合并的单子',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1余额，2微信支付，3到付',
  `transid` varchar(30) NOT NULL DEFAULT '0' COMMENT '微信支付单号',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `address` varchar(250) NOT NULL DEFAULT '' COMMENT '地址',
  `tel` varchar(50) NOT NULL DEFAULT '' COMMENT '联系电话',
  `meal_time` varchar(50) NOT NULL DEFAULT '' COMMENT '就餐时间',
  `counts` tinyint(4) DEFAULT '0' COMMENT '预订人数',
  `seat_type` tinyint(1) DEFAULT '0' COMMENT '位置类型1大厅2包间',
  `carports` tinyint(3) DEFAULT '0' COMMENT '车位',
  `delivery_id` int(10) NOT NULL DEFAULT '0' COMMENT '配送员id',
  `delivery_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deliveryareaid` int(10) NOT NULL DEFAULT '0' COMMENT '配送点id',
  `delivery_money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '佣金',
  `goodsprice` decimal(10,2) DEFAULT '0.00',
  `dispatchprice` decimal(10,2) DEFAULT '0.00',
  `packvalue` varchar(10) NOT NULL DEFAULT '0' COMMENT '打包费',
  `dining_mode` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '用餐类型 1:到店 2:外卖',
  `is_append` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否加单',
  `append_dish` tinyint(2) NOT NULL DEFAULT '0' COMMENT '加菜',
  `remark` varchar(1000) NOT NULL DEFAULT '' COMMENT '备注',
  `reply` varchar(1000) NOT NULL DEFAULT '' COMMENT '回复',
  `paydetail` varchar(1000) NOT NULL DEFAULT '' COMMENT '消费详细信息',
  `credit` varchar(10) NOT NULL DEFAULT '0' COMMENT '赠送积分',
  `tables` varchar(10) NOT NULL DEFAULT '' COMMENT '桌号',
  `tablezonesid` varchar(10) NOT NULL DEFAULT '' COMMENT '桌台类别',
  `print_sta` tinyint(1) DEFAULT '-1' COMMENT '打印状态',
  `sign` tinyint(1) NOT NULL DEFAULT '0' COMMENT '-1拒绝，0未处理，1已处理',
  `lat` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '经度',
  `lng` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '纬度',
  `isfinish` tinyint(1) NOT NULL DEFAULT '0',
  `isemail` tinyint(1) NOT NULL DEFAULT '0',
  `issms` tinyint(1) NOT NULL DEFAULT '0',
  `istpl` tinyint(1) NOT NULL DEFAULT '0',
  `delivery_notice` tinyint(1) NOT NULL DEFAULT '0',
  `isfeedback` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否留言',
  `isvip` tinyint(1) NOT NULL DEFAULT '0' COMMENT '会员',
  `finishtime` int(10) DEFAULT '0' COMMENT '完成时间',
  `confirmtime` int(10) DEFAULT '0' COMMENT '确认时间',
  `paytime` int(10) DEFAULT '0' COMMENT '付款时间',
  `delivery_finish_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已配送时间',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `newlimitprice` varchar(500) NOT NULL DEFAULT '',
  `oldlimitprice` varchar(500) NOT NULL DEFAULT '',
  `newlimitpricevalue` varchar(10) NOT NULL DEFAULT '',
  `oldlimitpricevalue` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=410 ;

--
-- 转存表中的数据 `ims_weisrc_dish_order`
--

INSERT INTO `ims_weisrc_dish_order` (`id`, `weid`, `storeid`, `couponid`, `rechargeid`, `quicknum`, `from_user`, `ordersn`, `totalnum`, `totalprice`, `tea_money`, `service_money`, `discount_money`, `status`, `ispay`, `ismerge`, `paytype`, `transid`, `username`, `address`, `tel`, `meal_time`, `counts`, `seat_type`, `carports`, `delivery_id`, `delivery_status`, `deliveryareaid`, `delivery_money`, `goodsprice`, `dispatchprice`, `packvalue`, `dining_mode`, `is_append`, `append_dish`, `remark`, `reply`, `paydetail`, `credit`, `tables`, `tablezonesid`, `print_sta`, `sign`, `lat`, `lng`, `isfinish`, `isemail`, `issms`, `istpl`, `delivery_notice`, `isfeedback`, `isvip`, `finishtime`, `confirmtime`, `paytime`, `delivery_finish_time`, `dateline`, `newlimitprice`, `oldlimitprice`, `newlimitpricevalue`, `oldlimitpricevalue`) VALUES
(294, 6, 21, 0, 0, '0001', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171028557518284466', 1, '128.00', '0.00', '0.00', '0.00', -1, 0, 0, 0, '0', '陈成果', '厦门市思明区文屏路174-1号 101', '13696929853', '', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4656310181', '118.1171600948', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1509155751, '', '', '', ''),
(295, 5, 20, 0, 0, '0001', 'oEZ6bw0iZLyvZrHcCUJJO6HYxIy4', '20171028559761502148', 4, '46.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '陈成果', '厦门市思明区大学路世贸海峡大厦 4501', '13696929856', '', 0, 0, 0, 0, 0, 0, '0.00', '46.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4870230636', '118.1292930408', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1509155976, '', '', '', ''),
(296, 6, 21, 0, 0, '0002', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171028561746448567', 2, '256.00', '0.00', '0.00', '0.00', -1, 0, 0, 0, '0', '陈成果', '厦门市思明区文屏路174-1号 101', '13696929853', '', 0, 0, 0, 0, 0, 0, '0.00', '256.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4656310181', '118.1171600948', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1509156174, '', '', '', ''),
(297, 6, 21, 0, 0, '0003', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171028564821723756', 1, '128.00', '0.00', '0.00', '0.00', -1, 0, 0, 0, '0', '陈成果', '厦门市思明区文屏路174-1号 101', '13696929853', '', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4656310181', '118.1171600948', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1509156482, '', '', '', ''),
(298, 6, 21, 0, 0, '0004', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171028689247188520', 1, '128.00', '0.00', '0.00', '0.00', -1, 0, 0, 0, '0', '陈成果', '厦门市思明区文屏路174-1号 101', '13696929853', '', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4656310181', '118.1171600948', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1509168924, '', '', '', ''),
(299, 6, 21, 0, 0, '0005', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171028852218421768', 1, '38.00', '0.00', '0.00', '0.00', -1, 0, 0, 0, '0', '陈成果', '厦门市思明区文屏路174-1号 101', '13696929853', '', 0, 0, 0, 0, 0, 0, '0.00', '38.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4656310181', '118.1171600948', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1509185221, '', '', '', ''),
(300, 6, 21, 0, 0, '0006', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171029700782396997', 2, '256.00', '0.00', '0.00', '0.00', -1, 0, 0, 0, '0', '陈成果', '厦门市思明区文屏路174-1号 101', '13696929853', '', 0, 0, 0, 0, 0, 0, '0.00', '256.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4656310181', '118.1171600948', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1509270078, '', '', '', ''),
(301, 6, 21, 0, 0, '0007', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171030343811573092', 1, '128.00', '0.00', '0.00', '0.00', -1, 1, 0, 0, '0', '陈成果', '厦门市思明区文屏路174-1号 101', '13696929853', '', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4656310181', '118.1171600948', 0, 0, 0, 0, 0, 0, 0, 0, 1509425175, 0, 0, 1509334381, '', '', '', ''),
(302, 5, 20, 0, 0, '0002', 'oEZ6bw0iZLyvZrHcCUJJO6HYxIy4', '20171030355933449779', 1, '10.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '陈成果', '厦门市思明区大学路世贸海峡大厦 4501', '13696929856', '', 0, 0, 0, 0, 0, 0, '0.00', '10.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4870230636', '118.1292930408', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1509335593, '', '', '', ''),
(303, 5, 20, 0, 0, '0003', 'oEZ6bw0iZLyvZrHcCUJJO6HYxIy4', '20171030363651748558', 1, '12.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '陈成果', '厦门市思明区大学路世贸海峡大厦 4501', '13696929856', '', 0, 0, 0, 0, 0, 0, '0.00', '12.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4870230636', '118.1292930408', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1509336365, '', '', '', ''),
(304, 6, 21, 0, 0, '0008', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171030484826894878', 1, '128.00', '0.00', '0.00', '0.00', -1, 2, 0, 0, '0', '陈成果', '厦门市思明区文屏路174-1号 101', '13696929853', '', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4656310181', '118.1171600948', 1, 0, 0, 0, 0, 0, 0, 1509421990, 1509421986, 1509359096, 0, 1509348482, '', '', '', ''),
(305, 6, 21, 0, 0, '0009', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171101331526207364', 2, '104.00', '0.00', '0.00', '0.00', -1, 0, 0, 0, '0', '陈成果', '厦门市思明区文屏路174-1号 101', '13696929853', '', 0, 0, 0, 0, 0, 0, '0.00', '104.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4656310181', '118.1171600948', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1509533152, '', '', '', ''),
(306, 6, 21, 0, 0, '0010', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171103862690096793', 1, '128.00', '0.00', '0.00', '0.00', -1, 0, 0, 0, '0', '陈成果', '厦门市思明区文屏路174-1号 101', '13696929853', '', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4656310181', '118.1171600948', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1509686268, '', '', '', ''),
(307, 6, 21, 0, 0, '0011', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171103026351711784', 1, '128.00', '0.00', '0.00', '0.00', 1, 0, 0, 0, '0', '袁', '厦门市思明区大学路162号 4501', '13886737567', '', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4430959626', '118.0949080482', 0, 0, 0, 0, 0, 0, 0, 0, 1509702770, 0, 0, 1509702635, '', '', '', ''),
(308, 6, 21, 0, 0, '0012', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171103027154448551', 1, '128.00', '0.00', '0.00', '0.00', 1, 0, 0, 0, '0', '陈成果', '厦门市思明区文屏路174-1号 101', '13696929853', '', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4656310181', '118.1171600948', 0, 0, 0, 0, 0, 0, 0, 0, 1509702770, 0, 0, 1509702715, '', '', '', ''),
(309, 5, 20, 0, 0, '0004', 'oEZ6bw0iZLyvZrHcCUJJO6HYxIy4', '20171105634082171964', 1, '12.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '陈成果', '厦门市思明区大学路世贸海峡大厦 4501', '13696929856', '', 0, 0, 0, 0, 0, 0, '0.00', '12.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4870230636', '118.1292930408', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1509863408, '', '', '', ''),
(310, 5, 20, 0, 0, '0005', 'oEZ6bw5z3cuoT91YLtOntd9NRCvw', '20171106523413372271', 2, '20.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '黄杰', '厦门市湖里区南山路288号 南山路', '13866668888', '', 0, 0, 0, 0, 0, 0, '0.00', '20.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.5099040000', '118.1232690000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1509952341, '', '', '', ''),
(311, 6, 21, 0, 0, '0013', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171107432523480061', 1, '25.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '陈成果', '厦门市思明区文屏路174-1号 101', '13696929853', '', 0, 0, 0, 0, 0, 0, '0.00', '25.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4656310181', '118.1171600948', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510043252, '', '', '', ''),
(312, 6, 21, 0, 0, '0014', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171108082726186133', 1, '128.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '陈成果', '厦门市思明区文屏路174-1号 101', '13696929853', '', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4656310181', '118.1171600948', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510108272, '', '', '', ''),
(313, 6, 21, 0, 0, '0015', 'oSRY0009p7BYSw0LnJpUxWbD2924', '20171108083746676792', 2, '256.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '郑云彪', '厦门市思明区演武大桥 4501', '15080151627', '', 0, 0, 0, 0, 0, 0, '0.00', '256.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4437570000', '118.0928070000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510108374, '', '', '', ''),
(314, 6, 21, 0, 0, '0016', 'oSRY00yS5yHUwKxVARp8b_21YceE', '20171108087621791818', 1, '128.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '王庭协', '厦门市思明区观日路20号4楼 猿人行星', '13163906015', '', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4933512688', '118.1864661265', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510108762, '', '', '', ''),
(315, 6, 21, 0, 0, '0017', 'oSRY00yS5yHUwKxVARp8b_21YceE', '20171108092961244898', 1, '128.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '王庭协', '厦门市思明区观日路20号4楼 猿人行星', '13163906015', '', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4933512688', '118.1864661265', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510109296, '', '', '', ''),
(316, 6, 21, 0, 0, '0018', 'oSRY005X21OxPllfXAlfbcnlrF-A', '20171108093776716494', 3, '434.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '前期', '厦门市思明区观日路50号 111', '18050086692', '', 0, 0, 0, 0, 0, 0, '0.00', '434.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4904805615', '118.1882565180', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510109377, '', '', '', ''),
(317, 6, 21, 0, 0, '0019', 'oSRY00yS5yHUwKxVARp8b_21YceE', '20171108101774992842', 1, '128.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '王庭协', '厦门市思明区观日路20号4楼 猿人行星', '13163906015', '', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4933512688', '118.1864661265', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510110177, '', '', '', ''),
(318, 6, 21, 0, 0, '0020', 'oSRY00yS5yHUwKxVARp8b_21YceE', '20171108102122885614', 1, '128.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '王庭协', '厦门市思明区观日路20号4楼 猿人行星', '13163906015', '', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4933512688', '118.1864661265', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510110212, '', '', '', ''),
(319, 6, 21, 0, 0, '0021', 'oSRY005X21OxPllfXAlfbcnlrF-A', '20171108102166932765', 2, '256.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '前期', '厦门市思明区观日路50号 111', '18050086692', '', 0, 0, 0, 0, 0, 0, '0.00', '256.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4904805615', '118.1882565180', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510110216, '', '', '', ''),
(320, 6, 21, 0, 0, '0022', 'oSRY005X21OxPllfXAlfbcnlrF-A', '20171108102896080777', 2, '256.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '前期', '厦门市思明区观日路50号 111', '18050086692', '', 0, 0, 0, 0, 0, 0, '0.00', '256.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4904805615', '118.1882565180', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510110289, '', '', '', ''),
(321, 6, 21, 0, 0, '0023', 'oSRY00yS5yHUwKxVARp8b_21YceE', '20171108103030765322', 1, '128.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '王庭协', '厦门市思明区观日路20号4楼 猿人行星', '13163906015', '', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4933512688', '118.1864661265', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510110303, '', '', '', ''),
(322, 6, 21, 0, 0, '0024', 'oSRY00yS5yHUwKxVARp8b_21YceE', '20171108104164817744', 1, '128.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '王庭协', '厦门市思明区观日路20号4楼 猿人行星', '13163906015', '', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4933512688', '118.1864661265', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510110416, '', '', '', ''),
(323, 6, 21, 0, 0, '0025', 'oSRY00yS5yHUwKxVARp8b_21YceE', '20171108105526586018', 1, '128.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '王庭协', '厦门市思明区观日路20号4楼 猿人行星', '13163906015', '', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4933512688', '118.1864661265', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510110552, '', '', '', ''),
(324, 6, 21, 0, 0, '0026', 'oSRY005X21OxPllfXAlfbcnlrF-A', '20171108106645328977', 1, '0.10', '0.00', '0.00', '0.00', -1, 3, 0, 2, '4200000004201711083214107097', '前期', '厦门市思明区观日路50号 111', '18050086692', '', 0, 0, 0, 0, 0, 0, '0.00', '0.10', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4904805615', '118.1882565180', 0, 0, 0, 1, 0, 0, 0, 0, 0, 1510110670, 0, 1510110664, '', '', '', ''),
(325, 6, 21, 0, 0, '0027', 'oSRY00yS5yHUwKxVARp8b_21YceE', '20171108106654149547', 1, '0.10', '0.00', '0.00', '0.00', -1, 3, 0, 2, '4200000030201711083219170009', '王庭协', '厦门市思明区观日路20号4楼 猿人行星', '13163906015', '', 0, 0, 0, 0, 0, 0, '0.00', '0.10', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4933512688', '118.1864661265', 0, 0, 0, 1, 0, 0, 0, 0, 0, 1510110675, 0, 1510110665, '', '', '', ''),
(326, 6, 21, 0, 0, '0028', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171108107240367812', 1, '2.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '陈成果', '厦门市思明区文屏路174-1号 101', '13696929853', '', 0, 0, 0, 0, 0, 0, '0.00', '2.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4656310181', '118.1171600948', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510110723, '', '', '', ''),
(327, 6, 21, 0, 0, '0029', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171108109886618067', 1, '2.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '陈成果', '厦门市思明区文屏路174-1号 101', '13696929853', '', 0, 0, 0, 0, 0, 0, '0.00', '2.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4656310181', '118.1171600948', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510110988, '', '', '', ''),
(328, 5, 20, 0, 0, '0006', 'oEZ6bw0iZLyvZrHcCUJJO6HYxIy4', '20171108131923744068', 1, '8.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '陈成果', '厦门市思明区大学路世贸海峡大厦 4501', '13696929856', '', 0, 0, 0, 0, 0, 0, '0.00', '8.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4870230636', '118.1292930408', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510113192, '', '', '', ''),
(329, 6, 21, 0, 0, '0030', 'oSRY005X21OxPllfXAlfbcnlrF-A', '20171108132816515939', 1, '0.10', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '前期', '厦门市思明区观日路50号 111', '18050086692', '', 0, 0, 0, 0, 0, 0, '0.00', '0.10', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4904805615', '118.1882565180', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510113281, '', '', '', ''),
(330, 6, 21, 0, 0, '0031', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171108134348695296', 1, '2.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '陈成果', '厦门市思明区文屏路174-1号 101', '13696929853', '', 0, 0, 0, 0, 0, 0, '0.00', '2.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4656310181', '118.1171600948', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510113434, '', '', '', ''),
(331, 6, 21, 0, 0, '0001', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171108141568036039', 1, '2.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '陈成果', '厦门市思明区大学路177号', '13696929853', '08:30~18:00', 0, 0, 0, 0, 0, 0, '0.00', '2.00', '0.00', '0', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4432076135', '118.0948859663', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510114156, '', '', '', ''),
(332, 6, 21, 0, 0, '0001', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171108143113860686', 1, '2.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '陈成果', '厦门市思明区大学路162号', '13696929853', '08:30~18:00', 0, 0, 0, 0, 0, 0, '0.00', '2.00', '0.00', '0', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4429955469', '118.0949496868', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510114311, '', '', '', ''),
(333, 6, 21, 0, 0, '0032', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171108143394930769', 1, '2.00', '0.00', '0.00', '0.00', 0, 1, 0, 2, '4200000013201711083234687051', '陈成果', 'undefined undefined', '13696929853', '', 0, 0, 0, 0, 0, 0, '0.00', '2.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4429955469', '118.0949496868', 0, 0, 0, 1, 0, 0, 0, 0, 0, 1510114347, 0, 1510114339, '', '', '', ''),
(334, 6, 21, 0, 0, '0001', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171108168732148108', 0, '200.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '陈成果', '', '13696929853', '2017-11-08 18:00', 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0', 3, 0, 0, '', '', '', '0', '160', '29', -1, 0, '0.0000000000', '0.0000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510116873, '', '', '', ''),
(335, 6, 21, 0, 0, '0033', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171108221353567763', 5, '290.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '袁', 'undefined undefined', '13886737567', '', 0, 0, 0, 0, 0, 0, '0.00', '290.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '0.0000000000', '0.0000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510122135, '', '', '', ''),
(336, 6, 21, 0, 0, '0034', 'oSRY005X21OxPllfXAlfbcnlrF-A', '20171108251347533636', 1, '128.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '前期', 'undefined undefined', '18050086692', '', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '0.0000000000', '0.0000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510125134, '', '', '', ''),
(337, 6, 21, 0, 0, '0035', 'oSRY005X21OxPllfXAlfbcnlrF-A', '20171108253093334156', 3, '484.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '前期', 'undefined undefined', '18050086692', '', 0, 0, 0, 0, 0, 0, '0.00', '484.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '0.0000000000', '0.0000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510125309, '', '', '', ''),
(338, 6, 21, 0, 0, '0036', 'oSRY005X21OxPllfXAlfbcnlrF-A', '20171108253360621267', 1, '128.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '前期', 'undefined undefined', '18050086692', '', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '0.0000000000', '0.0000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510125336, '', '', '', ''),
(339, 6, 21, 0, 0, '0037', 'oSRY005X21OxPllfXAlfbcnlrF-A', '20171108253671480383', 1, '128.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '前期', 'undefined undefined', '18050086692', '', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '0.0000000000', '0.0000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510125367, '', '', '', ''),
(340, 6, 21, 0, 0, '0001', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171108276382868611', 0, '200.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '陈成果', '厦门市思明区文屏路174-1号 101', '13696929853', '2017-11-08 18:00', 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0', 3, 0, 0, '', '', '', '0', '160', '29', -1, 0, '24.4656310181', '118.1171600948', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510127638, '', '', '', ''),
(341, 6, 21, 0, 0, '0001', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171108330274995792', 0, '50.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '陈成果', '厦门市思明区文屏路174-1号 101', '13696929853', '2017-11-08 18:00', 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0', 3, 0, 0, '', '', '', '0', '162', '30', -1, 0, '24.4656310181', '118.1171600948', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510133027, '', '', '', ''),
(342, 6, 21, 0, 0, '0001', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171108413672256993', 0, '50.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '袁', '厦门市思明区大学路162号 4501', '13886737567', '2017-11-09 18:00', 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0', 3, 0, 0, '', '', '', '0', '162', '30', -1, 0, '24.4430959626', '118.0949080482', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510141367, '', '', '', ''),
(343, 6, 21, 0, 0, '0038', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171108415094758984', 3, '294.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '袁', '厦门市思明区大学路162号 4501', '13886737567', '', 0, 0, 0, 0, 0, 0, '0.00', '294.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4430959626', '118.0949080482', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510141509, '', '', '', ''),
(344, 6, 21, 0, 0, '0001', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171108467537507032', 8, '1124.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '', '', '', '', 17, 0, 0, 0, 0, 0, '0.00', '1124.00', '0.00', '0', 1, 0, 0, '', '', '', '0', '161', '29', -1, 0, '24.4429955469', '118.0949496868', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510146753, '', '', '', ''),
(345, 6, 21, 0, 0, '0001', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171108486537643751', 0, '50.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '陈成果', '', '13696929853', '2017-11-09 18:00', 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0', 3, 0, 0, '', '', '', '0', '162', '30', -1, 0, '0.0000000000', '0.0000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510148653, '', '', '', ''),
(346, 6, 21, 0, 0, '0001', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171108487696059896', 4, '562.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '陈成果', '', '13696929853', '2017-11-09 18:00', 0, 0, 0, 0, 0, 0, '0.00', '562.00', '0.00', '0', 3, 0, 0, '', '', '', '0', '162', '30', -1, 0, '0.0000000000', '0.0000000000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510148769, '', '', '', ''),
(347, 6, 21, 0, 0, '0001', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171108488626132621', 7, '380.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '', '', '', '', 1, 0, 0, 0, 0, 0, '0.00', '380.00', '0.00', '0', 1, 0, 0, '', '', '', '0', '162', '30', -1, 0, '24.4429955469', '118.0949496868', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510148862, '', '', '', ''),
(348, 7, 22, 0, 0, '0001', 'admin', '20171109936242987632', 0, '100.00', '0.00', '0.00', '0.00', 1, 3, 0, 3, '0', '', '', '', '2017-11-09 11:40', 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0', 3, 0, 0, '', '', '', '', '163', '32', -1, 0, '0.0000000000', '0.0000000000', 1, 0, 0, 0, 0, 0, 0, 1510193690, 1510195880, 1510193667, 0, 1510193624, '', '', '', ''),
(349, 6, 21, 0, 0, '0001', 'oSRY004apWoEmgGRX6tq94KeP8SE', '20171109940359837794', 1, '128.00', '0.00', '0.00', '0.00', 3, 0, 0, 0, '0', '聂青', '厦门市思明区小学路163-～165 厦门市思明区小学路163-～165', '18181066010', '08:30~18:00', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4685280000', '118.0877420000', 1, 0, 0, 0, 0, 0, 0, 1510539539, 1510539455, 0, 0, 1510194035, '', '', '', ''),
(350, 6, 21, 0, 0, '0001', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171109994153688446', 10, '1330.00', '0.00', '0.00', '0.00', 3, 0, 0, 0, '0', '袁', '', '13886737567', '2017-11-09 18:00', 0, 0, 0, 0, 0, 0, '0.00', '1330.00', '0.00', '0', 3, 0, 0, '', '', '', '2', '159', '27', -1, 0, '0.0000000000', '0.0000000000', 1, 0, 0, 0, 0, 0, 0, 1510539539, 1510539455, 0, 0, 1510199415, '', '', '', ''),
(351, 7, 22, 0, 0, '0001', 'admin', '20171109994483180167', 0, '0.00', '0.00', '0.00', '0.00', 3, 3, 0, 3, '0', '111', '', '15859240132', '2017-11-09 16:20', 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0', 3, 0, 0, '', '', '', '', '163', '32', -1, 0, '0.0000000000', '0.0000000000', 1, 0, 0, 0, 0, 0, 0, 1510710951, 1510653102, 0, 0, 1510199448, '', '', '', ''),
(352, 6, 21, 0, 0, '0001', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171110980339181784', 5, '640.00', '0.00', '0.00', '0.00', 3, 0, 0, 0, '0', '', '', '', '', 1, 0, 0, 0, 0, 0, '0.00', '640.00', '0.00', '0', 1, 0, 0, '', '', '', '0', '158', '27', -1, 0, '0.0000000000', '0.0000000000', 1, 0, 0, 0, 0, 0, 0, 1510539539, 1510539455, 0, 0, 1510298033, '', '', '', ''),
(353, 6, 21, 0, 0, '0001', 'oSRY004apWoEmgGRX6tq94KeP8SE', '20171110981539720642', 45, '2042.00', '0.00', '0.00', '0.00', 3, 0, 0, 0, '0', '聂青', '厦门市思明区角滨路17号-之104', '18181066010', '08:30~18:00', 0, 0, 0, 0, 0, 0, '0.00', '2042.00', '0.00', '0', 2, 0, 0, '', '', '', '10', '0', '0', -1, 0, '24.4684450000', '118.0876220000', 1, 0, 0, 0, 0, 0, 0, 1510539539, 1510539455, 0, 0, 1510298153, '', '', '', ''),
(354, 6, 21, 0, 0, '0039', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171111628866730452', 4, '512.00', '0.00', '0.00', '0.00', 3, 0, 0, 0, '0', '袁', 'undefined undefined', '13886737567', '', 0, 0, 0, 0, 0, 0, '0.00', '512.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '0.0000000000', '0.0000000000', 1, 0, 0, 0, 0, 0, 0, 1510539539, 1510539455, 0, 0, 1510362886, '', '', '', ''),
(355, 6, 21, 0, 0, '0001', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171111802128079550', 8, '352.00', '0.00', '0.00', '0.00', -1, 0, 0, 0, '0', '袁', '厦门市思明区禾祥西路10号', '13886737567', '08:30~18:00', 0, 0, 0, 0, 0, 0, '0.00', '352.00', '0.00', '0', 2, 0, 0, '', '', '', '2', '0', '0', -1, 0, '24.4694616229', '118.0879785499', 1, 0, 0, 0, 0, 0, 0, 1510539539, 1510539455, 0, 0, 1510380212, '', '', '', ''),
(356, 6, 21, 0, 0, '0001', 'admin', '20171113391498091902', 0, '0.00', '0.00', '0.00', '0.00', 3, 0, 0, 3, '0', '牛肉丸', '', '13888888888', '2017-11-14 18:00', 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0', 3, 0, 0, '', '', '', '', '160', '29', -1, 0, '0.0000000000', '0.0000000000', 1, 0, 0, 0, 0, 0, 0, 1510539539, 1510539455, 0, 0, 1510539149, '', '', '', ''),
(357, 6, 21, 0, 0, '0001', 'admin', '20171113392745209991', 0, '0.00', '0.00', '0.00', '0.00', 3, 0, 0, 3, '0', '', '', '', '2017-11-13 18:00', 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0', 3, 0, 0, '', '', '', '', '162', '30', -1, 0, '0.0000000000', '0.0000000000', 1, 0, 0, 0, 0, 0, 0, 1510539539, 1510539455, 0, 0, 1510539274, '', '', '', ''),
(358, 6, 21, 0, 0, '0001', 'admin', '20171113393094090068', 0, '0.00', '0.00', '0.00', '0.00', 3, 0, 0, 3, '0', '', '', '', '2017-11-14 18:00', 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0', 3, 0, 0, '', '', '', '', '162', '30', -1, 0, '0.0000000000', '0.0000000000', 1, 0, 0, 0, 0, 0, 0, 1510539539, 1510539455, 0, 0, 1510539309, '', '', '', ''),
(359, 6, 21, 0, 0, '0001', 'admin', '20171113393417457718', 0, '0.00', '0.00', '0.00', '0.00', -1, 3, 0, 3, '0', '', '', '', '2017-11-14 18:00', 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0', 3, 0, 0, '', '', '', '', '161', '29', -1, 0, '0.0000000000', '0.0000000000', 1, 0, 0, 0, 0, 0, 0, 1510624987, 1510539455, 1510624979, 0, 1510539341, '', '', '', ''),
(360, 6, 21, 0, 0, '0001', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171113395888196046', 0, '200.00', '0.00', '0.00', '0.00', 3, 1, 0, 0, '0', '袁', '', '13886737567', '2017-11-13 18:00', 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0', 3, 0, 0, '', '', '', '', '160', '29', -1, 0, '0.0000000000', '0.0000000000', 1, 0, 0, 0, 0, 0, 0, 1511151748, 0, 1511151737, 0, 1510539588, '', '', '', ''),
(361, 6, 21, 0, 0, '0001', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171113552659254644', 11, '1439.00', '0.00', '0.00', '0.00', -1, 3, 0, 0, '0', '袁', '厦门市思明区禾祥西路10号', '13886737567', '08:30~18:00', 0, 0, 0, 0, 0, 0, '0.00', '1439.00', '0.00', '0', 2, 0, 0, '', '', '', '14', '0', '0', -1, 0, '24.4694865017', '118.0880312088', 1, 0, 0, 0, 0, 0, 0, 1510624987, 0, 1510624979, 0, 1510555265, '', '', '', ''),
(362, 6, 21, 0, 0, '0001', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171113553777947378', 7, '408.00', '0.00', '0.00', '0.00', -1, 3, 0, 0, '0', '袁', '厦门市思明区禾祥西路10号', '13886737567', '08:30~18:00', 0, 0, 0, 0, 0, 0, '0.00', '408.00', '0.00', '0', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4694891964', '118.0880428788', 1, 0, 0, 0, 0, 0, 0, 1510624987, 0, 1510624979, 0, 1510555377, '', '', '', ''),
(363, 6, 21, 0, 0, '0001', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171113557205686753', 9, '1152.00', '0.00', '0.00', '0.00', 3, 1, 0, 0, '0', '袁', '', '13886737567', '2017-11-13 18:00', 0, 0, 0, 0, 0, 0, '0.00', '1152.00', '0.00', '0', 3, 0, 0, '老板 味道 酸甜苦辣咸。', '', '', '0', '161', '29', -1, 0, '0.0000000000', '0.0000000000', 1, 0, 0, 0, 0, 0, 0, 1511151748, 0, 1511151737, 0, 1510555720, '', '', '', ''),
(364, 6, 21, 0, 0, '0001', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171113596458499831', 8, '460.00', '0.00', '0.00', '0.00', -1, 3, 0, 0, '0', '袁', '厦门市思明区禾祥西路10号', '13886737567', '08:30~18:00', 0, 0, 0, 0, 0, 0, '0.00', '460.00', '0.00', '0', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4694692419', '118.0879636304', 1, 0, 0, 0, 0, 0, 0, 1510624987, 0, 1510624979, 0, 1510559645, '', '', '', ''),
(365, 6, 21, 0, 0, '0001', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '20171113620527550706', 1, '128.00', '0.00', '0.00', '0.00', -1, 3, 0, 0, '0', '王者', '厦门市思明区小学路165号 厦门市思明区小学路165号', '18888888888', '08:30~18:00', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4684210000', '118.0877800000', 1, 0, 0, 0, 0, 0, 0, 1510624987, 0, 1510624979, 0, 1510562052, '', '', '', ''),
(366, 6, 21, 0, 0, '0001', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '20171113624547186588', 8, '1074.00', '0.00', '0.00', '0.00', 3, 1, 0, 0, '0', '王者', '', '18888888888', '2017-11-15 18:00', 0, 0, 0, 0, 0, 0, '0.00', '1074.00', '0.00', '0', 3, 0, 0, '', '', '', '2', '161', '29', -1, 0, '0.0000000000', '0.0000000000', 1, 0, 0, 0, 0, 0, 0, 1511151748, 0, 1511151737, 0, 1510562454, '', '', '', ''),
(367, 6, 21, 0, 0, '0001', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '20171113625002863061', 0, '200.00', '0.00', '0.00', '0.00', 3, 1, 0, 0, '0', '王者', '', '18888888888', '2017-11-15 18:00', 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0', 3, 0, 0, '', '', '', '', '160', '29', -1, 0, '0.0000000000', '0.0000000000', 1, 0, 0, 0, 0, 0, 0, 1511151748, 0, 1511151737, 0, 1510562500, '', '', '', ''),
(368, 6, 21, 0, 0, '0001', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '20171113625261895041', 0, '200.00', '0.00', '0.00', '0.00', 3, 1, 0, 0, '0', '王者', '', '18888888888', '2017-11-15 18:00', 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0', 3, 0, 0, '', '', '', '', '161', '29', -1, 0, '0.0000000000', '0.0000000000', 1, 0, 0, 0, 0, 0, 0, 1511151748, 0, 1511151737, 0, 1510562526, '', '', '', ''),
(369, 6, 21, 0, 0, '0001', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171114260680754042', 5, '484.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '袁', '普罗米修斯厦门市思明区禾祥西路10号', '13886737567', '08:30~18:00', 0, 0, 0, 0, 0, 0, '0.00', '484.00', '0.00', '0', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4694518789', '118.0879633478', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510626068, '', '', '', ''),
(370, 6, 21, 0, 0, '0001', 'oSRY002sNxP0bwNvR-pdAsYYFKz8', '20171114261725106598', 1, '128.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '嫦娥', '月球背面厦门市思明区小学路151 厦门市思明区小学路151', '13232323232', '08:30~18:00', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4678140000', '118.0878490000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510626172, '', '', '', ''),
(371, 6, 21, 0, 0, '0001', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171114263305005768', 4, '512.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '', '', '', '', 1, 0, 0, 0, 0, 0, '0.00', '512.00', '0.00', '0', 1, 0, 0, '', '', '', '0', '159', '27', -1, 0, '24.4694518789', '118.0879633478', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510626330, '', '', '', ''),
(372, 6, 21, 0, 0, '0001', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171114263489201929', 8, '1246.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '', '', '', '', 1, 0, 0, 0, 0, 0, '0.00', '1246.00', '0.00', '0', 1, 0, 0, '', '', '', '0', '159', '27', -1, 0, '24.4694518789', '118.0879633478', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510626348, '', '', '', ''),
(373, 6, 21, 0, 0, '0001', 'oSRY002sNxP0bwNvR-pdAsYYFKz8', '20171114267417127582', 0, '100.00', '0.00', '0.00', '0.00', 3, 1, 0, 0, '0', '嫦娥', '', '13232323232', '2017-11-14 18:00', 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0', 3, 0, 0, '', '', '', '', '159', '27', -1, 0, '0.0000000000', '0.0000000000', 1, 0, 0, 0, 0, 0, 0, 1511151748, 0, 1511151737, 0, 1510626741, '', '', '', ''),
(374, 6, 21, 0, 0, '0001', 'oSRY002sNxP0bwNvR-pdAsYYFKz8', '20171114268046699344', 6, '1018.00', '0.00', '0.00', '0.00', 3, 1, 0, 0, '0', '嫦娥', '', '13232323232', '2017-11-14 18:00', 0, 0, 0, 0, 0, 0, '0.00', '1018.00', '0.00', '0', 3, 0, 0, '', '', '', '10', '158', '27', -1, 0, '0.0000000000', '0.0000000000', 1, 0, 0, 0, 0, 0, 0, 1511151748, 0, 1511151737, 0, 1510626804, '', '', '', ''),
(375, 6, 21, 0, 0, '0001', 'oSRY002sNxP0bwNvR-pdAsYYFKz8', '20171114279192688944', 7, '571.00', '0.00', '0.00', '0.00', 1, 0, 0, 0, '0', '嫦娥', '普罗米修斯厦门市思明区角滨路9-35', '13232323232', '08:30~18:00', 0, 0, 0, 39, 1, 0, '2.00', '571.00', '0.00', '0', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4687261892', '118.0881064371', 0, 0, 0, 0, 0, 0, 0, 0, 1510645767, 0, 0, 1510627919, '', '', '', ''),
(376, 6, 21, 0, 0, '0001', 'oSRY002sNxP0bwNvR-pdAsYYFKz8', '20171114280328228858', 4, '562.00', '0.00', '0.00', '0.00', 1, 0, 0, 0, '0', '嫦娥', '普罗米修斯厦门市思明区禾祥西商圈角滨路15号', '13232323232', '08:30~18:00', 0, 0, 0, 39, 2, 0, '2.00', '562.00', '0.00', '0', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4684020000', '118.0880520000', 0, 0, 0, 0, 0, 0, 0, 0, 1510645767, 0, 1510629683, 1510628032, '', '', '', ''),
(377, 6, 21, 0, 0, '0001', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171114320102926727', 2, '106.00', '0.00', '0.00', '0.00', 1, 1, 0, 0, '0', '陈成果', '普罗米修斯厦门市思明区大学路162号', '13696929853', '08:30~18:00', 0, 0, 0, 42, 1, 0, '2.00', '106.00', '0.00', '0', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4430874614', '118.0949537019', 0, 0, 0, 0, 0, 0, 0, 0, 1510645767, 0, 0, 1510632010, '', '', '', ''),
(378, 6, 21, 0, 0, '0001', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171114323384347778', 1, '128.00', '0.00', '0.00', '0.00', 1, 1, 0, 0, '0', '陈成果', '普罗米修斯厦门市思明区大学路162号', '13696929853', '08:30~18:00', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4431017322', '118.0949667349', 0, 0, 0, 0, 0, 0, 0, 0, 1510645767, 1510652598, 0, 1510632338, '', '', '', ''),
(379, 6, 21, 0, 0, '0040', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171114323521056659', 1, '128.00', '0.00', '0.00', '0.00', 1, 1, 0, 0, '0', '陈成果', 'undefined undefined', '13696929853', '', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4431017322', '118.0949667349', 0, 0, 0, 0, 0, 0, 0, 0, 1510645767, 1510652598, 0, 1510632352, '', '', '', ''),
(380, 6, 21, 0, 0, '0001', 'oSRY004apWoEmgGRX6tq94KeP8SE', '20171114420071003436', 2, '306.00', '0.00', '0.00', '0.00', 1, 3, 0, 0, '0', '聂青', '普罗米修斯厦门市思明区湖滨北路97', '18181066010', '08:30~18:00', 0, 0, 0, 39, 1, 0, '2.00', '306.00', '0.00', '0', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4884420000', '118.1019280000', 0, 0, 0, 0, 0, 0, 0, 0, 1510645767, 1510652598, 0, 1510642007, '', '', '', ''),
(381, 6, 21, 0, 0, '0041', 'oSRY003Ve7He7RlAnCV4CKmNLHEA', '20171114446600706291', 8, '0.10', '0.00', '0.00', '0.00', 1, 1, 0, 0, '0', '猿人小哥', 'undefined undefined', '13145200000', '', 0, 0, 0, 0, 0, 0, '0.00', '419.00', '0.00', '0', 4, 0, 0, '麻烦多加点辣椒', '', '', '0', '0', '0', -1, 0, '0.0000000000', '0.0000000000', 0, 0, 0, 0, 0, 0, 0, 0, 1510645767, 1510652598, 0, 1510644660, '', '', '', ''),
(382, 6, 21, 0, 0, '0001', 'oSRY003Ve7He7RlAnCV4CKmNLHEA', '20171114454764696322', 1, '0.10', '0.00', '0.00', '0.00', 1, 1, 0, 0, '0', '猿人小哥', '普罗米修斯厦门市思明区观日路', '13145200000', '08:30~18:00', 0, 0, 0, 39, 1, 0, '2.00', '0.10', '0.00', '0', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4910930000', '118.1858980000', 0, 0, 0, 0, 0, 0, 0, 0, 1510645767, 1510709967, 0, 1510645476, '', '', '', ''),
(383, 6, 21, 0, 0, '0042', 'oSRY003Ve7He7RlAnCV4CKmNLHEA', '20171114455272731392', 1, '0.10', '0.00', '0.00', '0.00', 1, 1, 0, 0, '0', '猿人小哥', 'undefined undefined', '13145200000', '', 0, 0, 0, 0, 0, 0, '0.00', '0.10', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4910930000', '118.1858980000', 0, 0, 0, 0, 0, 0, 0, 0, 1510645767, 1510709967, 0, 1510645527, '', '', '', ''),
(384, 6, 21, 0, 0, '0043', 'oSRY003Ve7He7RlAnCV4CKmNLHEA', '20171114456261350466', 1, '0.10', '0.00', '0.00', '0.00', 1, 1, 0, 0, '0', '猿人小哥', 'undefined undefined', '13145200000', '', 0, 0, 0, 0, 0, 0, '0.00', '0.10', '0.00', '0', 4, 0, 0, '加点酱油', '', '', '0', '0', '0', -1, 0, '24.4910930000', '118.1858980000', 0, 0, 0, 0, 0, 0, 0, 0, 1510645767, 1510709967, 0, 1510645626, '', '', '', ''),
(385, 6, 21, 0, 0, '0044', 'oSRY003Ve7He7RlAnCV4CKmNLHEA', '20171114458309619975', 1, '0.10', '0.00', '0.00', '0.00', -1, 1, 0, 0, '0', '猿人小哥', 'undefined undefined', '13145200000', '', 0, 0, 0, 0, 0, 0, '0.00', '0.10', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4910930000', '118.1858980000', 0, 0, 0, 0, 0, 0, 0, 0, 1510646293, 1510709967, 0, 1510645830, '', '', '', ''),
(386, 6, 21, 0, 0, '0001', 'oSRY003Ve7He7RlAnCV4CKmNLHEA', '20171114459219237893', 1, '0.10', '0.00', '0.00', '0.00', 1, 1, 0, 0, '0', '猿人小哥', '普罗米修斯福建省厦门市思明区观日路20 地下一楼', '13145200000', '08:30~18:00', 0, 0, 0, 42, 1, 0, '2.00', '0.10', '0.00', '0', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4930900000', '118.1869360000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510709967, 0, 1510645921, '', '', '', ''),
(387, 6, 21, 0, 0, '0001', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171114522921579515', 0, '200.00', '0.00', '0.00', '0.00', 3, 1, 0, 0, '0', '陈成果', '', '13696929853', '2017-11-14 18:00', 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0', 3, 0, 0, '', '', '', '', '161', '29', -1, 0, '0.0000000000', '0.0000000000', 1, 0, 0, 0, 0, 0, 0, 1511151748, 1510652585, 1511151737, 0, 1510652292, '', '', '', ''),
(388, 6, 21, 0, 0, '0001', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171114529069845803', 8, '1224.00', '0.00', '0.00', '0.00', 1, 3, 0, 0, '0', '袁', '普罗米修斯厦门市思明区禾祥西路16号101室', '13886737567', '08:30~18:00', 0, 0, 0, 48, 2, 0, '2.00', '1224.00', '0.00', '0', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4695214738', '118.0880477842', 0, 0, 0, 0, 0, 1, 0, 0, 0, 1510709967, 1510729279, 1510652906, '', '', '', ''),
(389, 6, 21, 0, 0, '0001', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171114643514446000', 4, '512.00', '0.00', '0.00', '0.00', 0, 1, 0, 0, '0', '', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '512.00', '0.00', '0', 1, 1, 0, '', '', '', '0', '191', '29', -1, 0, '24.4695214738', '118.0880477842', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510709967, 0, 1510664351, '', '', '', ''),
(390, 6, 21, 0, 0, '0001', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171114643869539573', 12, '1273.10', '0.00', '0.00', '0.00', 0, 1, 0, 0, '0', '', '', '', '', 1, 0, 0, 0, 0, 0, '0.00', '1273.10', '0.00', '0', 1, 0, 0, '', '', '', '0', '191', '29', -1, 0, '24.4695214738', '118.0880477842', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510709967, 0, 1510664386, '', '', '', ''),
(391, 6, 21, 0, 0, '0001', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171114653786631397', 16, '1233.00', '0.00', '0.00', '0.00', 3, 1, 1, 3, '0', '', '', '', '', 1, 0, 0, 0, 0, 0, '0.00', '1785.10', '0.00', '0', 1, 0, 0, '', '', '', '0', '191', '29', -1, 0, '0.0000000000', '0.0000000000', 1, 0, 0, 0, 0, 0, 0, 1510666082, 0, 1510709967, 0, 1510665378, '', '', '', ''),
(392, 6, 21, 0, 0, '0045', 'oSRY002sNxP0bwNvR-pdAsYYFKz8', '20171115106660731006', 8, '1024.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '吕奉先', 'undefined undefined', '13232323232', '', 0, 0, 0, 0, 0, 0, '0.00', '1024.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4684020000', '118.0880520000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510710666, '', '', '', ''),
(393, 6, 21, 0, 0, '0046', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171115149827094160', 3, '236.00', '0.00', '0.00', '0.00', -1, 0, 0, 0, '0', '袁', 'undefined undefined', '13886737567', '', 0, 0, 0, 0, 0, 0, '0.00', '264.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4695214738', '118.0880477842', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510714982, '', '', '', ''),
(394, 6, 21, 0, 0, '0047', 'oSRY003Ve7He7RlAnCV4CKmNLHEA', '20171115352901522715', 1, '0.10', '0.00', '0.00', '0.00', 1, 1, 0, 2, '4200000002201711154845064400', '猿人小哥', 'undefined undefined', '13145200000', '', 0, 0, 0, 0, 0, 0, '0.00', '0.10', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4930900000', '118.1869360000', 0, 0, 0, 1, 0, 0, 0, 0, 0, 1510735300, 0, 1510735290, '', '', '', ''),
(395, 6, 21, 0, 0, '0048', 'oSRY003Ve7He7RlAnCV4CKmNLHEA', '20171115354428131698', 1, '0.10', '0.00', '0.00', '0.00', 1, 1, 0, 2, '4200000017201711154843618056', '猿人小哥', 'undefined undefined', '13145200000', '', 0, 0, 0, 0, 0, 0, '0.00', '0.10', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4930900000', '118.1869360000', 0, 0, 0, 1, 0, 0, 0, 0, 0, 1510735451, 0, 1510735442, '', '', '', ''),
(396, 6, 21, 0, 0, '0001', 'oSRY0009p7BYSw0LnJpUxWbD2924', '20171116173210139570', 1, '128.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '郑云彪', '湖里区厦门市思明区观日路20', '15080151627', '08:30~18:00', 0, 0, 0, 0, 0, 0, '0.00', '128.00', '0.00', '0', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4930714855', '118.1865131723', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510817320, '', '', '', ''),
(397, 6, 21, 0, 0, '0049', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171116452228694012', 12, '1176.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '袁', 'undefined undefined', '13886737567', '', 0, 0, 0, 0, 0, 0, '0.00', '1176.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4695214738', '118.0880477842', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510845222, '', '', '', ''),
(398, 6, 21, 0, 0, '0001', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '20171117040711512516', 1, '0.10', '0.00', '0.00', '0.00', -1, 0, 0, 0, '0', '点点', '思明区厦门市思明区最大的红绿灯下', '18888888888', '08:30~18:00', 0, 0, 0, 0, 0, 0, '0.00', '0.10', '0.00', '0', 2, 0, 0, '加速！冲刺！相信自己，你是最胖的！', '', '', '0', '0', '0', -1, 0, '24.4755640000', '118.1133500000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510904071, '', '', '', ''),
(399, 6, 21, 0, 0, '0001', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171117330742456562', 0, '50.00', '0.00', '0.00', '0.00', -1, 1, 0, 0, '0', '袁', '', '13886737567', '2017-11-19 18:00', 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0', 3, 0, 0, '', '', '', '', '162', '30', -1, 0, '0.0000000000', '0.0000000000', 1, 0, 0, 0, 0, 0, 0, 1511151748, 0, 1511151737, 0, 1510933074, '', '', '', ''),
(400, 6, 21, 0, 0, '0001', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171118717297456491', 1, '128.00', '0.00', '0.00', '0.00', -1, 0, 0, 0, '0', '陈成果', '普罗米修斯厦门市思明区文屏路79号-5-后2号', '13696929853', '08:30~18:00', 0, 0, 0, 39, 1, 0, '2.00', '128.00', '0.00', '0', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4645235524', '118.1218400757', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1510971729, '', '', '', ''),
(401, 6, 21, 0, 0, '0001', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171118183078067675', 0, '50.00', '0.00', '0.00', '0.00', -1, 1, 0, 0, '0', '袁', '', '13886737567', '2017-11-20 18:00', 0, 0, 0, 0, 0, 0, '0.00', '0.00', '0.00', '0', 3, 0, 0, '', '', '', '', '162', '30', -1, 0, '0.0000000000', '0.0000000000', 1, 0, 0, 0, 0, 0, 0, 1511151748, 0, 1511151737, 0, 1511018307, '', '', '', ''),
(402, 6, 21, 0, 0, '0001', 'oSRY0069zmR3bYgg6-YSEbdA-K1E', '20171120459090110094', 1, '0.10', '0.00', '0.00', '0.00', -1, 3, 0, 2, '4200000018201711205844922382', '刘巧明', '普罗米修斯厦门市思明区禾祥西路8-18 厦门市思明区禾祥西路8-18', '18150077127', '08:30~18:00', 0, 0, 0, 42, 1, 0, '2.00', '0.10', '0.00', '0', 2, 0, 0, '要辣', '', '', '0', '0', '0', -1, 0, '24.4694655210', '118.0877110055', 0, 0, 0, 1, 1, 0, 0, 0, 0, 1511145991, 0, 1511145908, '', '', '', ''),
(403, 6, 21, 0, 0, '0050', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '20171120466753103759', 6, '0.06', '0.00', '0.00', '0.00', -1, 0, 0, 0, '0', '点点', 'undefined undefined', '18888888888', '', 0, 0, 0, 0, 0, 0, '0.00', '0.06', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4755640000', '118.1133500000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1511146675, '', '', '', ''),
(404, 6, 21, 0, 0, '0001', 'oSRY002sNxP0bwNvR-pdAsYYFKz8', '20171120467521330077', 10, '0.10', '0.00', '0.00', '0.00', -1, 3, 0, 2, '4200000023201711205845604821', '吕奉先', '普罗米修斯厦门市思明区角滨路2号', '13232323232', '08:30~18:00', 0, 0, 0, 39, 1, 0, '2.00', '0.10', '0.00', '0', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4676420000', '118.0885430000', 0, 0, 0, 1, 1, 0, 0, 0, 0, 1511146761, 0, 1511146752, '', '', '', ''),
(405, 6, 21, 0, 0, '0001', 'oSRY002sNxP0bwNvR-pdAsYYFKz8', '20171120471636950083', 1, '99999999.99', '0.00', '0.00', '0.00', -1, 0, 0, 0, '0', '吕奉先', '普罗米修斯厦门市思明区角滨路9-18号', '13232323232', '08:30~18:00', 0, 0, 0, 0, 0, 0, '0.00', '99999999.99', '0.00', '200000', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4681008138', '118.0882783769', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1511147163, '', '', '', ''),
(406, 6, 21, 0, 0, '0001', 'oSRY004apWoEmgGRX6tq94KeP8SE', '20171120472503121058', 1, '99999999.99', '0.00', '0.00', '0.00', -1, 2, 0, 0, '0', '聂青', '普罗米修斯厦门市思明区角滨路25号', '18181066010', '08:30~18:00', 0, 0, 0, 47, 1, 2, '2.00', '99999999.99', '0.00', '200000', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4695690046', '118.0878285636', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1511147250, '', '', '', ''),
(407, 6, 21, 0, 0, '0001', 'oSRY002sNxP0bwNvR-pdAsYYFKz8', '20171120493973863645', 1, '2.00', '0.00', '0.00', '0.00', -1, 0, 0, 0, '0', '吕奉先', '普罗米修斯厦门市思明区厦禾路269号-103', '13232323232', '08:30~18:00', 0, 0, 0, 0, 0, 0, '0.00', '2.00', '0.00', '0', 2, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4672190000', '118.0879830000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1511149397, '', '', '', ''),
(408, 6, 21, 0, 0, '0001', 'oSRY0002kWJeWI40pNCycPqBUO3E', '20171120619171406185', 20, '1504.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '', '', '', '', 1, 0, 0, 0, 0, 0, '0.00', '1504.00', '0.00', '0', 1, 0, 0, '', '', '', '0', '159', '27', -1, 0, '24.4695214738', '118.0880477842', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1511161917, '', '', '', ''),
(409, 6, 21, 0, 0, '0051', 'oSRY007ii1nrPRxSCeihLAxANMB8', '20171120729394907573', 1, '8.00', '0.00', '0.00', '0.00', 0, 0, 0, 0, '0', '陈成果', 'undefined undefined', '13696929853', '', 0, 0, 0, 0, 0, 0, '0.00', '8.00', '0.00', '0', 4, 0, 0, '', '', '', '0', '0', '0', -1, 0, '24.4645235524', '118.1218400757', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1511172939, '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_order_goods`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_order_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `orderid` int(10) unsigned NOT NULL,
  `goodsid` int(10) unsigned NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `total` int(10) unsigned NOT NULL DEFAULT '1',
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=402 ;

--
-- 转存表中的数据 `ims_weisrc_dish_order_goods`
--

INSERT INTO `ims_weisrc_dish_order_goods` (`id`, `weid`, `storeid`, `orderid`, `goodsid`, `price`, `total`, `dateline`) VALUES
(216, 6, 21, 294, 226, '128.00', 1, 1509155751),
(217, 5, 20, 295, 193, '12.00', 3, 1509155976),
(218, 5, 20, 295, 197, '10.00', 1, 1509155976),
(219, 6, 21, 296, 226, '128.00', 2, 1509156174),
(220, 6, 21, 297, 226, '128.00', 1, 1509156482),
(221, 6, 21, 298, 226, '128.00', 1, 1509168924),
(222, 6, 21, 299, 211, '38.00', 1, 1509185221),
(223, 6, 21, 300, 226, '128.00', 2, 1509270078),
(224, 6, 21, 301, 226, '128.00', 1, 1509334381),
(225, 5, 20, 302, 187, '10.00', 1, 1509335593),
(226, 5, 20, 303, 193, '12.00', 1, 1509336365),
(227, 6, 21, 304, 226, '128.00', 1, 1509348482),
(228, 6, 21, 305, 213, '52.00', 2, 1509533152),
(229, 6, 21, 306, 226, '128.00', 1, 1509686268),
(230, 6, 21, 307, 226, '128.00', 1, 1509702635),
(231, 6, 21, 308, 226, '128.00', 1, 1509702715),
(232, 5, 20, 309, 193, '12.00', 1, 1509863408),
(233, 5, 20, 310, 193, '12.00', 1, 1509952341),
(234, 5, 20, 310, 192, '8.00', 1, 1509952341),
(235, 6, 21, 311, 218, '25.00', 1, 1510043252),
(236, 6, 21, 312, 226, '128.00', 1, 1510108272),
(237, 6, 21, 313, 226, '128.00', 2, 1510108374),
(238, 6, 21, 314, 226, '128.00', 1, 1510108762),
(239, 6, 21, 315, 226, '128.00', 1, 1510109296),
(240, 6, 21, 316, 226, '128.00', 2, 1510109377),
(241, 6, 21, 316, 225, '178.00', 1, 1510109377),
(242, 6, 21, 317, 226, '128.00', 1, 1510110177),
(243, 6, 21, 318, 226, '128.00', 1, 1510110212),
(244, 6, 21, 319, 226, '128.00', 2, 1510110216),
(245, 6, 21, 320, 226, '128.00', 2, 1510110289),
(246, 6, 21, 321, 226, '128.00', 1, 1510110303),
(247, 6, 21, 322, 226, '128.00', 1, 1510110416),
(248, 6, 21, 323, 226, '128.00', 1, 1510110552),
(249, 6, 21, 324, 218, '0.10', 1, 1510110664),
(250, 6, 21, 325, 218, '0.10', 1, 1510110665),
(251, 6, 21, 326, 222, '2.00', 1, 1510110723),
(252, 6, 21, 327, 222, '2.00', 1, 1510110988),
(253, 5, 20, 328, 192, '8.00', 1, 1510113192),
(254, 6, 21, 329, 218, '0.10', 1, 1510113281),
(255, 6, 21, 330, 222, '2.00', 1, 1510113434),
(256, 6, 21, 331, 222, '2.00', 1, 1510114156),
(257, 6, 21, 332, 222, '2.00', 1, 1510114311),
(258, 6, 21, 333, 222, '2.00', 1, 1510114339),
(259, 6, 21, 335, 209, '58.00', 5, 1510122135),
(260, 6, 21, 336, 226, '128.00', 1, 1510125134),
(261, 6, 21, 337, 225, '178.00', 2, 1510125309),
(262, 6, 21, 337, 226, '128.00', 1, 1510125309),
(263, 6, 21, 338, 226, '128.00', 1, 1510125336),
(264, 6, 21, 339, 226, '128.00', 1, 1510125367),
(265, 6, 21, 343, 226, '128.00', 2, 1510141509),
(266, 6, 21, 343, 211, '38.00', 1, 1510141509),
(267, 6, 21, 344, 225, '178.00', 2, 1510146753),
(268, 6, 21, 344, 226, '128.00', 6, 1510146753),
(269, 6, 21, 346, 225, '178.00', 1, 1510148769),
(270, 6, 21, 346, 226, '128.00', 3, 1510148769),
(271, 6, 21, 347, 206, '20.00', 1, 1510148862),
(272, 6, 21, 347, 217, '22.00', 1, 1510148862),
(273, 6, 21, 347, 210, '48.00', 1, 1510148862),
(274, 6, 21, 347, 214, '52.00', 1, 1510148862),
(275, 6, 21, 347, 209, '58.00', 1, 1510148862),
(276, 6, 21, 347, 213, '52.00', 1, 1510148862),
(277, 6, 21, 347, 226, '128.00', 1, 1510148862),
(278, 6, 21, 349, 226, '128.00', 1, 1510194035),
(279, 6, 21, 350, 226, '128.00', 9, 1510199415),
(280, 6, 21, 350, 225, '178.00', 1, 1510199415),
(281, 6, 21, 352, 226, '128.00', 5, 1510298033),
(282, 6, 21, 353, 210, '48.00', 2, 1510298153),
(283, 6, 21, 353, 201, '22.00', 9, 1510298153),
(284, 6, 21, 353, 202, '75.00', 2, 1510298153),
(285, 6, 21, 353, 214, '52.00', 1, 1510298153),
(286, 6, 21, 353, 211, '38.00', 1, 1510298153),
(287, 6, 21, 353, 213, '52.00', 4, 1510298153),
(288, 6, 21, 353, 209, '58.00', 1, 1510298153),
(289, 6, 21, 353, 208, '35.00', 1, 1510298153),
(290, 6, 21, 353, 207, '48.00', 1, 1510298153),
(291, 6, 21, 353, 215, '18.00', 1, 1510298153),
(292, 6, 21, 353, 205, '35.00', 2, 1510298153),
(293, 6, 21, 353, 206, '20.00', 1, 1510298153),
(294, 6, 21, 353, 221, '26.00', 1, 1510298153),
(295, 6, 21, 353, 220, '35.00', 1, 1510298153),
(296, 6, 21, 353, 219, '38.00', 7, 1510298153),
(297, 6, 21, 353, 223, '16.00', 2, 1510298153),
(298, 6, 21, 353, 222, '2.00', 2, 1510298153),
(299, 6, 21, 353, 226, '128.00', 5, 1510298153),
(300, 6, 21, 353, 212, '48.00', 1, 1510298153),
(301, 6, 21, 354, 226, '128.00', 4, 1510362886),
(302, 6, 21, 355, 211, '38.00', 4, 1510380212),
(303, 6, 21, 355, 213, '52.00', 2, 1510380212),
(304, 6, 21, 355, 212, '48.00', 2, 1510380212),
(305, 6, 21, 361, 225, '178.00', 7, 1510555265),
(306, 6, 21, 361, 226, '128.00', 1, 1510555265),
(307, 6, 21, 361, 216, '18.00', 1, 1510555265),
(308, 6, 21, 361, 218, '25.00', 1, 1510555265),
(309, 6, 21, 361, 217, '22.00', 1, 1510555265),
(310, 6, 21, 362, 218, '25.00', 1, 1510555377),
(311, 6, 21, 362, 217, '22.00', 1, 1510555377),
(312, 6, 21, 362, 213, '52.00', 1, 1510555377),
(313, 6, 21, 362, 226, '128.00', 1, 1510555377),
(314, 6, 21, 362, 210, '48.00', 1, 1510555377),
(315, 6, 21, 362, 209, '58.00', 1, 1510555377),
(316, 6, 21, 362, 202, '75.00', 1, 1510555377),
(317, 6, 21, 363, 226, '128.00', 9, 1510555720),
(318, 6, 21, 364, 226, '128.00', 1, 1510559645),
(319, 6, 21, 364, 218, '25.00', 1, 1510559645),
(320, 6, 21, 364, 217, '22.00', 1, 1510559645),
(321, 6, 21, 364, 210, '48.00', 1, 1510559645),
(322, 6, 21, 364, 209, '58.00', 1, 1510559645),
(323, 6, 21, 364, 202, '75.00', 1, 1510559645),
(324, 6, 21, 364, 213, '52.00', 2, 1510559645),
(325, 6, 21, 365, 226, '128.00', 1, 1510562052),
(326, 6, 21, 366, 226, '128.00', 7, 1510562454),
(327, 6, 21, 366, 225, '178.00', 1, 1510562454),
(328, 6, 21, 369, 225, '178.00', 2, 1510626068),
(329, 6, 21, 369, 226, '128.00', 1, 1510626068),
(330, 6, 21, 370, 226, '128.00', 1, 1510626172),
(331, 6, 21, 371, 226, '128.00', 4, 1510626330),
(332, 6, 21, 372, 225, '178.00', 7, 1510626348),
(333, 6, 21, 374, 225, '178.00', 5, 1510626804),
(334, 6, 21, 374, 226, '128.00', 1, 1510626804),
(335, 6, 21, 375, 214, '52.00', 1, 1510627919),
(336, 6, 21, 375, 211, '38.00', 1, 1510627919),
(337, 6, 21, 375, 212, '48.00', 1, 1510627919),
(338, 6, 21, 375, 202, '75.00', 1, 1510627919),
(339, 6, 21, 375, 213, '52.00', 1, 1510627919),
(340, 6, 21, 375, 225, '178.00', 1, 1510627919),
(341, 6, 21, 375, 226, '128.00', 1, 1510627919),
(342, 6, 21, 376, 225, '178.00', 1, 1510628032),
(343, 6, 21, 376, 226, '128.00', 3, 1510628032),
(344, 6, 21, 377, 210, '48.00', 1, 1510632010),
(345, 6, 21, 377, 209, '58.00', 1, 1510632010),
(346, 6, 21, 378, 226, '128.00', 1, 1510632338),
(347, 6, 21, 379, 226, '128.00', 1, 1510632352),
(348, 6, 21, 380, 225, '178.00', 1, 1510642007),
(349, 6, 21, 380, 226, '128.00', 1, 1510642007),
(350, 6, 21, 381, 214, '52.00', 1, 1510644660),
(351, 6, 21, 381, 210, '48.00', 1, 1510644660),
(352, 6, 21, 381, 216, '18.00', 1, 1510644660),
(353, 6, 21, 381, 203, '20.00', 1, 1510644660),
(354, 6, 21, 381, 220, '35.00', 1, 1510644660),
(355, 6, 21, 381, 224, '20.00', 1, 1510644660),
(356, 6, 21, 381, 212, '48.00', 1, 1510644660),
(357, 6, 21, 381, 225, '178.00', 1, 1510644660),
(358, 6, 21, 382, 218, '0.10', 1, 1510645476),
(359, 6, 21, 383, 218, '0.10', 1, 1510645527),
(360, 6, 21, 384, 218, '0.10', 1, 1510645626),
(361, 6, 21, 385, 218, '0.10', 1, 1510645830),
(362, 6, 21, 386, 218, '0.10', 1, 1510645921),
(363, 6, 21, 388, 225, '178.00', 4, 1510652906),
(364, 6, 21, 388, 226, '128.00', 4, 1510652906),
(365, 6, 21, 389, 226, '128.00', 4, 1510664351),
(366, 6, 21, 390, 226, '128.00', 1, 1510664386),
(367, 6, 21, 390, 210, '48.00', 1, 1510664386),
(368, 6, 21, 390, 213, '52.00', 1, 1510664386),
(369, 6, 21, 390, 217, '22.00', 1, 1510664386),
(370, 6, 21, 390, 218, '0.10', 1, 1510664386),
(371, 6, 21, 390, 209, '58.00', 1, 1510664386),
(372, 6, 21, 390, 202, '75.00', 1, 1510664386),
(373, 6, 21, 390, 225, '178.00', 5, 1510664386),
(374, 6, 21, 391, 226, '128.00', 5, 1510665378),
(375, 6, 21, 391, 210, '48.00', 1, 1510665378),
(376, 6, 21, 391, 213, '52.00', 1, 1510665378),
(377, 6, 21, 391, 217, '22.00', 1, 1510665378),
(378, 6, 21, 391, 218, '0.10', 1, 1510665378),
(379, 6, 21, 391, 209, '58.00', 1, 1510665378),
(380, 6, 21, 391, 202, '75.00', 1, 1510665378),
(381, 6, 21, 391, 225, '178.00', 5, 1510665378),
(382, 6, 21, 392, 226, '128.00', 8, 1510710666),
(383, 6, 21, 393, 226, '128.00', 2, 1510714982),
(384, 6, 21, 393, 230, '8.00', 1, 1510714982),
(385, 6, 21, 394, 218, '0.10', 1, 1510735290),
(386, 6, 21, 395, 218, '0.10', 1, 1510735442),
(387, 6, 21, 396, 226, '128.00', 1, 1510817320),
(388, 6, 21, 397, 226, '128.00', 9, 1510845222),
(389, 6, 21, 397, 230, '8.00', 3, 1510845222),
(390, 6, 21, 398, 218, '0.10', 1, 1510904071),
(391, 6, 21, 400, 226, '128.00', 1, 1510971729),
(392, 6, 21, 402, 218, '0.10', 1, 1511145908),
(393, 6, 21, 403, 232, '0.01', 6, 1511146675),
(394, 6, 21, 404, 232, '0.01', 10, 1511146752),
(395, 6, 21, 405, 233, '99999999.99', 1, 1511147163),
(396, 6, 21, 406, 233, '99999999.99', 1, 1511147250),
(397, 6, 21, 407, 222, '2.00', 1, 1511149397),
(398, 6, 21, 408, 226, '128.00', 9, 1511161917),
(399, 6, 21, 408, 213, '52.00', 6, 1511161917),
(400, 6, 21, 408, 230, '8.00', 5, 1511161917),
(401, 6, 21, 409, 230, '8.00', 1, 1511172939);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_order_log`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_order_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '门店编号',
  `orderid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单编号',
  `content` varchar(1000) DEFAULT NULL COMMENT '内容',
  `fromtype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '来源',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1242 ;

--
-- 转存表中的数据 `ims_weisrc_dish_order_log`
--

INSERT INTO `ims_weisrc_dish_order_log` (`id`, `weid`, `storeid`, `orderid`, `content`, `fromtype`, `status`, `dateline`) VALUES
(902, 6, 0, 294, '用户成果提交订单', 1, 0, 1509155751),
(903, 5, 0, 295, '用户成果提交订单', 1, 0, 1509155976),
(904, 6, 0, 296, '用户成果提交订单', 1, 0, 1509156174),
(905, 6, 0, 297, '用户成果提交订单', 1, 0, 1509156482),
(906, 6, 0, 298, '用户成果提交订单', 1, 0, 1509168924),
(907, 6, 0, 299, '用户成果提交订单', 1, 0, 1509185221),
(908, 6, 0, 300, '用户成果提交订单', 1, 0, 1509270078),
(909, 6, 0, 301, '用户成果提交订单', 1, 0, 1509334381),
(910, 5, 0, 302, '用户成果提交订单', 1, 0, 1509335593),
(911, 5, 0, 303, '用户成果提交订单', 1, 0, 1509336365),
(912, 6, 0, 304, '用户成果提交订单', 1, 0, 1509348482),
(913, 6, 0, 304, '管理员帝一支付订单', 1, 0, 1509359096),
(914, 6, 0, 304, '管理员帝一改价，128.00改为128。', 1, 0, 1509359102),
(915, 6, 0, 304, '管理员帝一改价，128.00改为128。', 1, 0, 1509359110),
(916, 6, 0, 304, '管理员帝一改价，128.00改为128。', 1, 0, 1509359493),
(917, 6, 0, 304, '管理员帝一改价，128.00改为128。', 1, 0, 1509359499),
(918, 6, 0, 304, '管理员帝一改价，128.00改为128。', 1, 0, 1509359504),
(919, 6, 0, 304, '管理员admin开启订单', 2, 0, 1509421982),
(920, 6, 0, 304, '管理员admin确认订单', 2, 0, 1509421986),
(921, 6, 0, 304, '管理员admin完成订单', 2, 0, 1509421990),
(922, 6, 0, 301, '管理员admin支付订单', 2, 0, 1509425164),
(923, 6, 0, 301, '管理员admin确认订单', 2, 0, 1509425175),
(924, 6, 0, 305, '用户成果提交订单', 1, 0, 1509533152),
(925, 6, 0, 305, '管理员成果取消订单', 1, 0, 1509538084),
(926, 6, 0, 305, '管理员admin取消订单', 2, 0, 1509684494),
(927, 6, 0, 305, '管理员admin取消订单', 2, 0, 1509684504),
(928, 6, 0, 304, '管理员admin取消订单', 2, 0, 1509684504),
(929, 6, 0, 301, '管理员admin取消订单', 2, 0, 1509684504),
(930, 6, 0, 306, '用户成果提交订单', 1, 0, 1509686268),
(931, 6, 0, 306, '管理员admin取消订单', 2, 0, 1509693157),
(932, 6, 0, 305, '管理员admin取消订单', 2, 0, 1509693157),
(933, 6, 0, 304, '管理员admin取消订单', 2, 0, 1509693157),
(934, 6, 0, 301, '管理员admin取消订单', 2, 0, 1509693157),
(935, 6, 0, 300, '管理员admin取消订单', 2, 0, 1509693157),
(936, 6, 0, 299, '管理员admin取消订单', 2, 0, 1509693157),
(937, 6, 0, 298, '管理员admin取消订单', 2, 0, 1509693157),
(938, 6, 0, 297, '管理员admin取消订单', 2, 0, 1509693157),
(939, 6, 0, 296, '管理员admin取消订单', 2, 0, 1509693157),
(940, 6, 0, 294, '管理员admin取消订单', 2, 0, 1509693157),
(941, 6, 0, 307, '用户Wind。提交订单', 1, 0, 1509702635),
(942, 6, 0, 308, '用户成果提交订单', 1, 0, 1509702715),
(943, 6, 0, 307, '管理员admin确认订单', 2, 0, 1509702744),
(944, 6, 0, 308, '管理员admin确认订单', 2, 0, 1509702770),
(945, 6, 0, 307, '管理员admin确认订单', 2, 0, 1509702770),
(946, 5, 0, 309, '用户成果提交订单', 1, 0, 1509863408),
(947, 5, 0, 310, '用户黄傑提交订单', 1, 0, 1509952341),
(948, 6, 0, 311, '用户成果提交订单', 1, 0, 1510043252),
(949, 6, 0, 312, '用户成果提交订单', 1, 0, 1510108272),
(950, 6, 0, 313, '用户彪哥提交订单', 1, 0, 1510108374),
(951, 6, 0, 314, '用户王庭协提交订单', 1, 0, 1510108762),
(952, 6, 0, 315, '用户王庭协提交订单', 1, 0, 1510109296),
(953, 6, 0, 316, '用户帝一提交订单', 1, 0, 1510109377),
(954, 6, 0, 317, '用户王庭协提交订单', 1, 0, 1510110177),
(955, 6, 0, 318, '用户王庭协提交订单', 1, 0, 1510110212),
(956, 6, 0, 319, '用户帝一提交订单', 1, 0, 1510110216),
(957, 6, 0, 320, '用户帝一提交订单', 1, 0, 1510110289),
(958, 6, 0, 321, '用户王庭协提交订单', 1, 0, 1510110303),
(959, 6, 0, 322, '用户王庭协提交订单', 1, 0, 1510110416),
(960, 6, 0, 323, '用户王庭协提交订单', 1, 0, 1510110552),
(961, 6, 0, 324, '用户帝一提交订单', 1, 0, 1510110664),
(962, 6, 0, 325, '用户王庭协提交订单', 1, 0, 1510110665),
(963, 6, 0, 324, '用户帝一支付订单', 1, 0, 1510110670),
(964, 6, 0, 325, '用户王庭协支付订单', 1, 0, 1510110675),
(965, 6, 0, 326, '用户成果提交订单', 1, 0, 1510110723),
(966, 6, 0, 327, '用户成果提交订单', 1, 0, 1510110988),
(967, 6, 0, 324, '管理员admin退款', 2, 0, 1510112337),
(968, 6, 0, 325, '管理员admin退款', 2, 0, 1510112344),
(969, 6, 0, 325, '管理员admin退款', 2, 0, 1510112456),
(970, 6, 0, 325, '管理员admin退款', 2, 0, 1510112569),
(971, 6, 0, 324, '管理员admin退款', 2, 0, 1510112586),
(972, 6, 0, 325, '管理员admin退款', 2, 0, 1510112589),
(973, 6, 0, 325, '管理员admin退款', 2, 0, 1510112597),
(974, 6, 0, 325, '管理员admin退款', 2, 0, 1510112949),
(975, 5, 0, 328, '用户成果提交订单', 1, 0, 1510113192),
(976, 6, 0, 325, '管理员admin退款', 2, 0, 1510113251),
(977, 6, 0, 329, '用户帝一提交订单', 1, 0, 1510113281),
(978, 6, 0, 330, '用户成果提交订单', 1, 0, 1510113434),
(979, 6, 0, 331, '用户成果提交订单', 1, 0, 1510114156),
(980, 6, 0, 332, '用户成果提交订单', 1, 0, 1510114311),
(981, 6, 0, 333, '用户成果提交订单', 1, 0, 1510114339),
(982, 6, 0, 333, '用户成果支付订单', 1, 0, 1510114347),
(983, 6, 0, 334, '用户成果提交订单', 1, 0, 1510116873),
(984, 6, 0, 335, '用户Wind提交订单', 1, 0, 1510122135),
(985, 6, 0, 333, '管理员admin退款', 2, 0, 1510124015),
(986, 6, 0, 324, '管理员admin退款', 2, 0, 1510124029),
(987, 6, 0, 324, '管理员admin退款', 2, 0, 1510124169),
(988, 6, 0, 336, '用户帝一提交订单', 1, 0, 1510125134),
(989, 6, 0, 337, '用户帝一提交订单', 1, 0, 1510125309),
(990, 6, 0, 338, '用户帝一提交订单', 1, 0, 1510125336),
(991, 6, 0, 339, '用户帝一提交订单', 1, 0, 1510125367),
(992, 6, 0, 324, '管理员admin退款', 2, 0, 1510125900),
(993, 6, 0, 325, '管理员admin退款', 2, 0, 1510125918),
(994, 6, 0, 340, '用户成果提交订单', 1, 0, 1510127638),
(995, 6, 0, 341, '用户成果提交订单', 1, 0, 1510133027),
(996, 6, 0, 342, '用户Wind提交订单', 1, 0, 1510141367),
(997, 6, 0, 343, '用户Wind提交订单', 1, 0, 1510141509),
(998, 6, 0, 344, '用户成果提交订单', 1, 0, 1510146753),
(999, 6, 0, 345, '用户成果提交订单', 1, 0, 1510148653),
(1000, 6, 0, 346, '用户成果提交订单', 1, 0, 1510148769),
(1001, 6, 0, 347, '用户成果提交订单', 1, 0, 1510148862),
(1002, 7, 0, 348, '管理员admin11支付订单', 2, 0, 1510193667),
(1003, 7, 0, 348, '管理员admin11确认订单', 2, 0, 1510193680),
(1004, 7, 0, 348, '管理员admin11完成订单', 2, 0, 1510193690),
(1005, 7, 0, 348, '管理员admin11确认订单', 2, 0, 1510193698),
(1006, 7, 0, 348, '管理员admin11取消订单', 2, 0, 1510193705),
(1007, 7, 0, 348, '管理员admin11退款', 2, 0, 1510193710),
(1008, 6, 0, 349, '用户链家。聂平提交订单', 1, 0, 1510194035),
(1009, 7, 0, 348, '管理员admin11确认订单', 2, 0, 1510195880),
(1010, 7, 0, 348, '管理员admin11改价，0.00改为100。', 2, 0, 1510199311),
(1011, 6, 0, 350, '用户Wind提交订单', 1, 0, 1510199415),
(1012, 6, 0, 352, '用户Wind提交订单', 1, 0, 1510298033),
(1013, 6, 0, 353, '用户链家。聂平提交订单', 1, 0, 1510298153),
(1014, 6, 0, 354, '用户Wind提交订单', 1, 0, 1510362886),
(1015, 6, 0, 355, '用户Wind提交订单', 1, 0, 1510380212),
(1016, 6, 0, 359, '管理员admin确认订单', 2, 0, 1510539455),
(1017, 6, 0, 358, '管理员admin确认订单', 2, 0, 1510539455),
(1018, 6, 0, 357, '管理员admin确认订单', 2, 0, 1510539455),
(1019, 6, 0, 356, '管理员admin确认订单', 2, 0, 1510539455),
(1020, 6, 0, 355, '管理员admin确认订单', 2, 0, 1510539455),
(1021, 6, 0, 354, '管理员admin确认订单', 2, 0, 1510539455),
(1022, 6, 0, 353, '管理员admin确认订单', 2, 0, 1510539455),
(1023, 6, 0, 352, '管理员admin确认订单', 2, 0, 1510539455),
(1024, 6, 0, 350, '管理员admin确认订单', 2, 0, 1510539455),
(1025, 6, 0, 349, '管理员admin确认订单', 2, 0, 1510539455),
(1026, 6, 0, 304, '管理员admin取消订单', 2, 0, 1510539512),
(1027, 6, 0, 301, '管理员admin取消订单', 2, 0, 1510539512),
(1028, 6, 0, 300, '管理员admin取消订单', 2, 0, 1510539512),
(1029, 6, 0, 299, '管理员admin取消订单', 2, 0, 1510539512),
(1030, 6, 0, 298, '管理员admin取消订单', 2, 0, 1510539512),
(1031, 6, 0, 297, '管理员admin取消订单', 2, 0, 1510539512),
(1032, 6, 0, 296, '管理员admin取消订单', 2, 0, 1510539512),
(1033, 6, 0, 294, '管理员admin取消订单', 2, 0, 1510539512),
(1034, 6, 0, 359, '管理员admin完成订单', 2, 0, 1510539539),
(1035, 6, 0, 358, '管理员admin完成订单', 2, 0, 1510539539),
(1036, 6, 0, 357, '管理员admin完成订单', 2, 0, 1510539539),
(1037, 6, 0, 356, '管理员admin完成订单', 2, 0, 1510539539),
(1038, 6, 0, 355, '管理员admin完成订单', 2, 0, 1510539539),
(1039, 6, 0, 354, '管理员admin完成订单', 2, 0, 1510539539),
(1040, 6, 0, 353, '管理员admin完成订单', 2, 0, 1510539539),
(1041, 6, 0, 352, '管理员admin完成订单', 2, 0, 1510539539),
(1042, 6, 0, 350, '管理员admin完成订单', 2, 0, 1510539539),
(1043, 6, 0, 349, '管理员admin完成订单', 2, 0, 1510539539),
(1044, 6, 0, 360, '用户Wind提交订单', 1, 0, 1510539588),
(1045, 6, 0, 355, '管理员点了码取消订单', 1, 0, 1510555225),
(1046, 6, 0, 361, '用户Wind提交订单', 1, 0, 1510555265),
(1047, 6, 0, 362, '用户Wind提交订单', 1, 0, 1510555377),
(1048, 6, 0, 362, '管理员点了码取消订单', 1, 0, 1510555589),
(1049, 6, 0, 361, '管理员点了码取消订单', 1, 0, 1510555629),
(1050, 6, 0, 363, '用户Wind提交订单', 1, 0, 1510555720),
(1051, 6, 0, 363, '管理员点了码取消订单', 1, 0, 1510556402),
(1052, 6, 0, 364, '用户Wind提交订单', 1, 0, 1510559645),
(1053, 6, 0, 365, '用户点了码提交订单', 1, 0, 1510562052),
(1054, 6, 0, 366, '用户点了码提交订单', 1, 0, 1510562454),
(1055, 6, 0, 367, '用户点了码提交订单', 1, 0, 1510562500),
(1056, 6, 0, 368, '用户点了码提交订单', 1, 0, 1510562526),
(1057, 6, 0, 364, '管理员点了码取消订单', 1, 0, 1510564609),
(1058, 6, 0, 364, '管理员点了码取消订单', 1, 0, 1510564614),
(1059, 6, 0, 368, '管理员admin支付订单', 2, 0, 1510624979),
(1060, 6, 0, 367, '管理员admin支付订单', 2, 0, 1510624979),
(1061, 6, 0, 366, '管理员admin支付订单', 2, 0, 1510624979),
(1062, 6, 0, 365, '管理员admin支付订单', 2, 0, 1510624979),
(1063, 6, 0, 364, '管理员admin支付订单', 2, 0, 1510624979),
(1064, 6, 0, 363, '管理员admin支付订单', 2, 0, 1510624979),
(1065, 6, 0, 362, '管理员admin支付订单', 2, 0, 1510624979),
(1066, 6, 0, 361, '管理员admin支付订单', 2, 0, 1510624979),
(1067, 6, 0, 360, '管理员admin支付订单', 2, 0, 1510624979),
(1068, 6, 0, 359, '管理员admin支付订单', 2, 0, 1510624979),
(1069, 6, 0, 368, '管理员admin完成订单', 2, 0, 1510624987),
(1070, 6, 0, 367, '管理员admin完成订单', 2, 0, 1510624987),
(1071, 6, 0, 366, '管理员admin完成订单', 2, 0, 1510624987),
(1072, 6, 0, 365, '管理员admin完成订单', 2, 0, 1510624987),
(1073, 6, 0, 364, '管理员admin完成订单', 2, 0, 1510624987),
(1074, 6, 0, 363, '管理员admin完成订单', 2, 0, 1510624987),
(1075, 6, 0, 362, '管理员admin完成订单', 2, 0, 1510624987),
(1076, 6, 0, 361, '管理员admin完成订单', 2, 0, 1510624987),
(1077, 6, 0, 360, '管理员admin完成订单', 2, 0, 1510624987),
(1078, 6, 0, 359, '管理员admin完成订单', 2, 0, 1510624987),
(1079, 6, 0, 368, '管理员admin取消订单', 2, 0, 1510625012),
(1080, 6, 0, 367, '管理员admin取消订单', 2, 0, 1510625012),
(1081, 6, 0, 366, '管理员admin取消订单', 2, 0, 1510625012),
(1082, 6, 0, 365, '管理员admin取消订单', 2, 0, 1510625012),
(1083, 6, 0, 364, '管理员admin取消订单', 2, 0, 1510625012),
(1084, 6, 0, 363, '管理员admin取消订单', 2, 0, 1510625012),
(1085, 6, 0, 362, '管理员admin取消订单', 2, 0, 1510625012),
(1086, 6, 0, 361, '管理员admin取消订单', 2, 0, 1510625012),
(1087, 6, 0, 360, '管理员admin取消订单', 2, 0, 1510625012),
(1088, 6, 0, 359, '管理员admin取消订单', 2, 0, 1510625012),
(1089, 6, 0, 364, '管理员admin退款', 2, 0, 1510625023),
(1090, 6, 0, 363, '管理员admin退款', 2, 0, 1510625041),
(1091, 6, 0, 368, '管理员admin退款', 2, 0, 1510625944),
(1092, 6, 0, 369, '用户Wind提交订单', 1, 0, 1510626068),
(1093, 6, 0, 369, '管理员admin&nbsp;退菜：麻辣大龙虾*1,提交订单', 2, 0, 1510626148),
(1094, 6, 0, 369, '管理员admin&nbsp;退菜：麻辣小龙虾*1,提交订单', 2, 0, 1510626157),
(1095, 6, 0, 370, '用户卞晨龙提交订单', 1, 0, 1510626172),
(1096, 6, 0, 367, '管理员admin退款', 2, 0, 1510626251),
(1097, 6, 0, 366, '管理员admin退款', 2, 0, 1510626256),
(1098, 6, 0, 365, '管理员admin退款', 2, 0, 1510626261),
(1099, 6, 0, 362, '管理员admin退款', 2, 0, 1510626266),
(1100, 6, 0, 361, '管理员admin退款', 2, 0, 1510626272),
(1101, 6, 0, 360, '管理员admin退款', 2, 0, 1510626280),
(1102, 6, 0, 359, '管理员admin退款', 2, 0, 1510626291),
(1103, 6, 0, 371, '用户Wind提交订单', 1, 0, 1510626330),
(1104, 6, 0, 372, '用户Wind提交订单', 1, 0, 1510626348),
(1105, 6, 0, 372, '管理员admin&nbsp;退菜：麻辣大龙虾*1,提交订单', 2, 0, 1510626447),
(1106, 6, 0, 373, '用户卞晨龙提交订单', 1, 0, 1510626741),
(1107, 6, 0, 374, '用户卞晨龙提交订单', 1, 0, 1510626804),
(1108, 6, 0, 375, '用户卞晨龙提交订单', 1, 0, 1510627919),
(1109, 6, 0, 376, '用户卞晨龙提交订单', 1, 0, 1510628032),
(1110, 6, 0, 377, '用户成果提交订单', 1, 0, 1510632010),
(1111, 6, 0, 378, '用户成果提交订单', 1, 0, 1510632338),
(1112, 6, 0, 379, '用户成果提交订单', 1, 0, 1510632352),
(1113, 6, 0, 380, '用户链家。聂平提交订单', 1, 0, 1510642007),
(1114, 6, 0, 381, '用户帅逼小新提交订单', 1, 0, 1510644660),
(1115, 6, 0, 381, '管理员admin改价，419.00改为0.1。', 2, 0, 1510645236),
(1116, 6, 0, 382, '用户帅逼小新提交订单', 1, 0, 1510645476),
(1117, 6, 0, 383, '用户帅逼小新提交订单', 1, 0, 1510645527),
(1118, 6, 0, 384, '用户帅逼小新提交订单', 1, 0, 1510645626),
(1119, 6, 0, 384, '管理员admin确认订单', 2, 0, 1510645767),
(1120, 6, 0, 383, '管理员admin确认订单', 2, 0, 1510645767),
(1121, 6, 0, 382, '管理员admin确认订单', 2, 0, 1510645767),
(1122, 6, 0, 381, '管理员admin确认订单', 2, 0, 1510645767),
(1123, 6, 0, 380, '管理员admin确认订单', 2, 0, 1510645767),
(1124, 6, 0, 379, '管理员admin确认订单', 2, 0, 1510645767),
(1125, 6, 0, 378, '管理员admin确认订单', 2, 0, 1510645767),
(1126, 6, 0, 377, '管理员admin确认订单', 2, 0, 1510645767),
(1127, 6, 0, 376, '管理员admin确认订单', 2, 0, 1510645767),
(1128, 6, 0, 375, '管理员admin确认订单', 2, 0, 1510645767),
(1129, 6, 0, 385, '用户帅逼小新提交订单', 1, 0, 1510645830),
(1130, 6, 0, 386, '用户帅逼小新提交订单', 1, 0, 1510645921),
(1131, 6, 0, 385, '管理员admin确认订单', 2, 0, 1510646293),
(1132, 6, 0, 387, '用户成果提交订单', 1, 0, 1510652292),
(1133, 7, 0, 351, '管理员admin取消订单', 2, 0, 1510652464),
(1134, 7, 0, 351, '管理员admin支付订单', 2, 0, 1510652472),
(1135, 7, 0, 351, '管理员admin退款', 2, 0, 1510652497),
(1136, 7, 0, 351, '管理员admin开启订单', 2, 0, 1510652573),
(1137, 6, 0, 387, '管理员admin确认订单', 2, 0, 1510652585),
(1138, 6, 0, 387, '管理员admin支付订单', 2, 0, 1510652598),
(1139, 6, 0, 386, '管理员admin支付订单', 2, 0, 1510652598),
(1140, 6, 0, 385, '管理员admin支付订单', 2, 0, 1510652598),
(1141, 6, 0, 384, '管理员admin支付订单', 2, 0, 1510652598),
(1142, 6, 0, 383, '管理员admin支付订单', 2, 0, 1510652598),
(1143, 6, 0, 382, '管理员admin支付订单', 2, 0, 1510652598),
(1144, 6, 0, 381, '管理员admin支付订单', 2, 0, 1510652598),
(1145, 6, 0, 380, '管理员admin支付订单', 2, 0, 1510652598),
(1146, 6, 0, 379, '管理员admin支付订单', 2, 0, 1510652598),
(1147, 6, 0, 378, '管理员admin支付订单', 2, 0, 1510652598),
(1148, 6, 0, 388, '用户Wind提交订单', 1, 0, 1510652906),
(1149, 7, 0, 351, '管理员admin确认订单', 2, 0, 1510653102),
(1150, 6, 0, 386, '管理员admin退款', 2, 0, 1510653609),
(1151, 6, 0, 387, '管理员admin退款', 2, 0, 1510663872),
(1152, 6, 0, 380, '管理员admin退款', 2, 0, 1510663893),
(1153, 6, 0, 389, '用户Wind提交订单', 1, 0, 1510664351),
(1154, 6, 0, 390, '用户Wind提交订单', 1, 0, 1510664386),
(1155, 6, 0, 385, '管理员admin取消订单', 2, 0, 1510665355),
(1156, 6, 0, 391, '管理员admin改价，1785.10改为1233。', 2, 0, 1510665410),
(1157, 6, 0, 391, '管理员admin完成订单', 2, 0, 1510666082),
(1158, 6, 0, 387, '管理员admin支付订单', 2, 0, 1510666111),
(1159, 6, 0, 391, '管理员admin支付订单', 2, 0, 1510709967),
(1160, 6, 0, 390, '管理员admin支付订单', 2, 0, 1510709967),
(1161, 6, 0, 389, '管理员admin支付订单', 2, 0, 1510709967),
(1162, 6, 0, 388, '管理员admin支付订单', 2, 0, 1510709967),
(1163, 6, 0, 387, '管理员admin支付订单', 2, 0, 1510709967),
(1164, 6, 0, 386, '管理员admin支付订单', 2, 0, 1510709967),
(1165, 6, 0, 385, '管理员admin支付订单', 2, 0, 1510709967),
(1166, 6, 0, 384, '管理员admin支付订单', 2, 0, 1510709967),
(1167, 6, 0, 383, '管理员admin支付订单', 2, 0, 1510709967),
(1168, 6, 0, 382, '管理员admin支付订单', 2, 0, 1510709967),
(1169, 6, 0, 392, '用户卞晨龙提交订单', 1, 0, 1510710666),
(1170, 7, 0, 351, '管理员admin完成订单', 2, 0, 1510710951),
(1171, 6, 0, 388, '管理员admin退款', 2, 0, 1510712676),
(1172, 6, 0, 393, '用户Wind提交订单', 1, 0, 1510714982),
(1173, 6, 0, 393, '管理员成果改价，264.00改为264。', 1, 0, 1510715060),
(1174, 6, 0, 393, '管理员成果改价，264.00改为236。', 1, 0, 1510715107),
(1175, 6, 0, 394, '用户帅逼小新提交订单', 1, 0, 1510735290),
(1176, 6, 0, 394, '用户帅逼小新支付订单', 1, 0, 1510735300),
(1177, 6, 0, 395, '用户帅逼小新提交订单', 1, 0, 1510735442),
(1178, 6, 0, 395, '用户帅逼小新支付订单', 1, 0, 1510735451),
(1179, 6, 0, 396, '用户彪哥提交订单', 1, 0, 1510817320),
(1180, 6, 0, 397, '用户Wind提交订单', 1, 0, 1510845222),
(1181, 6, 0, 398, '用户oSRY005yh2cXkbIoumh2yvD4rc3Y提交订单', 1, 0, 1510904071),
(1182, 6, 0, 399, '用户Wind提交订单', 1, 0, 1510933074),
(1183, 6, 0, 400, '用户成果提交订单', 1, 0, 1510971729),
(1184, 6, 0, 401, '用户Wind提交订单', 1, 0, 1511018307),
(1185, 6, 0, 402, '用户即来之～则安之提交订单', 1, 0, 1511145908),
(1186, 6, 0, 402, '用户即来之～则安之支付订单', 1, 0, 1511145927),
(1187, 6, 0, 402, '管理员admin退款', 2, 0, 1511145971),
(1188, 6, 0, 402, '管理员admin支付订单', 2, 0, 1511145991),
(1189, 6, 0, 402, '管理员admin退款', 2, 0, 1511146005),
(1190, 6, 0, 403, '用户oSRY005yh2cXkbIoumh2yvD4rc3Y提交订单', 1, 0, 1511146675),
(1191, 6, 0, 404, '用户卞晨龙提交订单', 1, 0, 1511146752),
(1192, 6, 0, 404, '用户卞晨龙支付订单', 1, 0, 1511146761),
(1193, 6, 0, 404, '管理员admin退款', 2, 0, 1511146819),
(1194, 6, 0, 405, '用户卞晨龙提交订单', 1, 0, 1511147163),
(1195, 6, 0, 406, '用户链家。聂平提交订单', 1, 0, 1511147250),
(1196, 6, 0, 407, '用户卞晨龙提交订单', 1, 0, 1511149397),
(1197, 6, 0, 401, '管理员admin取消订单', 2, 0, 1511151717),
(1198, 6, 0, 399, '管理员admin取消订单', 2, 0, 1511151717),
(1199, 6, 0, 387, '管理员admin取消订单', 2, 0, 1511151717),
(1200, 6, 0, 374, '管理员admin取消订单', 2, 0, 1511151717),
(1201, 6, 0, 373, '管理员admin取消订单', 2, 0, 1511151717),
(1202, 6, 0, 368, '管理员admin取消订单', 2, 0, 1511151717),
(1203, 6, 0, 367, '管理员admin取消订单', 2, 0, 1511151717),
(1204, 6, 0, 366, '管理员admin取消订单', 2, 0, 1511151717),
(1205, 6, 0, 363, '管理员admin取消订单', 2, 0, 1511151717),
(1206, 6, 0, 360, '管理员admin取消订单', 2, 0, 1511151717),
(1207, 6, 0, 401, '管理员admin支付订单', 2, 0, 1511151737),
(1208, 6, 0, 399, '管理员admin支付订单', 2, 0, 1511151737),
(1209, 6, 0, 387, '管理员admin支付订单', 2, 0, 1511151737),
(1210, 6, 0, 374, '管理员admin支付订单', 2, 0, 1511151737),
(1211, 6, 0, 373, '管理员admin支付订单', 2, 0, 1511151737),
(1212, 6, 0, 368, '管理员admin支付订单', 2, 0, 1511151737),
(1213, 6, 0, 367, '管理员admin支付订单', 2, 0, 1511151737),
(1214, 6, 0, 366, '管理员admin支付订单', 2, 0, 1511151737),
(1215, 6, 0, 363, '管理员admin支付订单', 2, 0, 1511151737),
(1216, 6, 0, 360, '管理员admin支付订单', 2, 0, 1511151737),
(1217, 6, 0, 401, '管理员admin完成订单', 2, 0, 1511151748),
(1218, 6, 0, 399, '管理员admin完成订单', 2, 0, 1511151748),
(1219, 6, 0, 387, '管理员admin完成订单', 2, 0, 1511151748),
(1220, 6, 0, 374, '管理员admin完成订单', 2, 0, 1511151748),
(1221, 6, 0, 373, '管理员admin完成订单', 2, 0, 1511151748),
(1222, 6, 0, 368, '管理员admin完成订单', 2, 0, 1511151748),
(1223, 6, 0, 367, '管理员admin完成订单', 2, 0, 1511151748),
(1224, 6, 0, 366, '管理员admin完成订单', 2, 0, 1511151748),
(1225, 6, 0, 363, '管理员admin完成订单', 2, 0, 1511151748),
(1226, 6, 0, 360, '管理员admin完成订单', 2, 0, 1511151748),
(1227, 6, 0, 406, '管理员成果取消订单', 1, 0, 1511152122),
(1228, 6, 0, 406, '管理员成果取消订单', 1, 0, 1511152130),
(1229, 6, 0, 405, '管理员成果取消订单', 1, 0, 1511152157),
(1230, 6, 0, 407, '管理员admin取消订单', 2, 0, 1511152887),
(1231, 6, 0, 406, '管理员admin取消订单', 2, 0, 1511152887),
(1232, 6, 0, 405, '管理员admin取消订单', 2, 0, 1511152887),
(1233, 6, 0, 404, '管理员admin取消订单', 2, 0, 1511152887),
(1234, 6, 0, 403, '管理员admin取消订单', 2, 0, 1511152887),
(1235, 6, 0, 402, '管理员admin取消订单', 2, 0, 1511152887),
(1236, 6, 0, 401, '管理员admin取消订单', 2, 0, 1511152887),
(1237, 6, 0, 400, '管理员admin取消订单', 2, 0, 1511152887),
(1238, 6, 0, 399, '管理员admin取消订单', 2, 0, 1511152887),
(1239, 6, 0, 398, '管理员admin取消订单', 2, 0, 1511152887),
(1240, 6, 0, 408, '用户Wind提交订单', 1, 0, 1511161917),
(1241, 6, 0, 409, '用户成果提交订单', 1, 0, 1511172939);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_print_label`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_print_label` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '门店id',
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `title` varchar(50) NOT NULL COMMENT '标签名称',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_print_order`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_print_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `orderid` int(10) unsigned NOT NULL,
  `print_usr` varchar(50) DEFAULT '',
  `print_status` tinyint(1) DEFAULT '-1',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=137 ;

--
-- 转存表中的数据 `ims_weisrc_dish_print_order`
--

INSERT INTO `ims_weisrc_dish_print_order` (`id`, `weid`, `orderid`, `print_usr`, `print_status`, `dateline`) VALUES
(83, 6, 301, 'kdt1083042', 0, 1509421776),
(84, 6, 294, 'kdt1083042', 0, 1509422232),
(85, 6, 294, 'kdt1083042', 0, 1509422257),
(86, 6, 294, 'kdt1083042', 0, 1509422352),
(87, 6, 304, 'kdt1083042', 0, 1509427330),
(88, 6, 304, 'kdt1083042', 0, 1509429697),
(89, 6, 301, 'kdt1083042', 0, 1509429697),
(90, 6, 300, 'kdt1083042', 0, 1509429697),
(91, 6, 299, 'kdt1083042', 0, 1509429697),
(92, 6, 298, 'kdt1083042', 0, 1509429697),
(93, 6, 297, 'kdt1083042', 0, 1509429697),
(94, 6, 296, 'kdt1083042', 0, 1509429697),
(95, 6, 294, 'kdt1083042', 0, 1509429697),
(96, 6, 324, 'kdt1083042', 0, 1510110670),
(97, 6, 325, 'kdt1083042', 0, 1510110675),
(98, 6, 325, 'kdt1083042', 0, 1510110721),
(99, 6, 324, 'kdt1083042', 0, 1510110743),
(100, 6, 333, 'kdt1083042', 0, 1510114347),
(101, 6, 359, 'kdt1083042', 0, 1510539445),
(102, 6, 358, 'kdt1083042', 0, 1510539445),
(103, 6, 357, 'kdt1083042', 0, 1510539445),
(104, 6, 356, 'kdt1083042', 0, 1510539445),
(105, 6, 355, 'kdt1083042', 0, 1510539445),
(106, 6, 354, 'kdt1083042', 0, 1510539445),
(107, 6, 353, 'kdt1083042', 0, 1510539445),
(108, 6, 352, 'kdt1083042', 0, 1510539445),
(109, 6, 350, 'kdt1083042', 0, 1510539445),
(110, 6, 349, 'kdt1083042', 0, 1510539445),
(111, 6, 380, 'kdt1083042', 0, 1510642695),
(112, 6, 380, 'kdt1083042', 0, 1510642706),
(113, 6, 380, 'kdt1083042', 0, 1510642782),
(114, 6, 376, 'kdt1083042', 0, 1510642834),
(115, 6, 376, 'kdt1083042', 0, 1510642848),
(116, 6, 376, 'kdt1083042', 0, 1510643836),
(117, 6, 376, 'kdt1083042', 0, 1510643836),
(118, 6, 376, 'kdt1083042', 0, 1510643931),
(119, 6, 381, 'kdt1083042', 0, 1510645381),
(120, 6, 384, 'kdt1083042', 0, 1510645728),
(121, 6, 383, 'kdt1083042', 0, 1510645746),
(122, 6, 386, 'kdt1083042', 0, 1510646431),
(123, 6, 385, 'kdt1083042', 0, 1510646431),
(124, 6, 386, 'kdt1083042', 0, 1510646448),
(125, 6, 385, 'kdt1083042', 0, 1510646448),
(126, 6, 384, 'kdt1083042', 0, 1510666127),
(127, 6, 393, 'kdt1083042', 0, 1510715007),
(128, 6, 394, 'kdt1083042', 0, 1510735300),
(129, 6, 394, 'kdt1083042', 0, 1510735300),
(130, 6, 395, 'kdt1083042', 0, 1510735451),
(131, 6, 395, 'kdt1083042', 0, 1510735451),
(132, 6, 402, 'kdt1083042', 0, 1511145927),
(133, 6, 402, 'kdt1083042', 0, 1511145927),
(134, 6, 404, 'kdt1083042', 0, 1511146761),
(135, 6, 404, 'kdt1083042', 0, 1511146761),
(136, 6, 407, 'kdt1083042', 0, 1511149553);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_print_setting`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_print_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `title` varchar(200) DEFAULT '',
  `print_status` tinyint(1) NOT NULL,
  `type` varchar(50) DEFAULT 'hongxin',
  `position_type` tinyint(1) DEFAULT '1',
  `yilian_type` tinyint(1) DEFAULT '1',
  `api_key` varchar(100) DEFAULT '' COMMENT 'api密钥',
  `member_code` varchar(100) DEFAULT '' COMMENT '商户代码',
  `feyin_key` varchar(100) DEFAULT '' COMMENT 'api密钥',
  `print_type` tinyint(1) NOT NULL,
  `print_usr` varchar(50) DEFAULT '',
  `print_nums` tinyint(3) DEFAULT '1',
  `print_top` varchar(40) DEFAULT '',
  `print_bottom` varchar(40) DEFAULT '',
  `is_print_all` tinyint(1) NOT NULL DEFAULT '1',
  `is_meal` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否店内点餐',
  `is_delivery` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否外卖订餐',
  `is_snack` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否支持快餐',
  `is_reservation` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否支持预定',
  `is_shouyin` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否支持收银',
  `api_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '打印机api类型',
  `print_label` varchar(500) DEFAULT '0',
  `print_goodstype` varchar(500) DEFAULT '0',
  `qrcode_status` tinyint(1) NOT NULL DEFAULT '0',
  `qrcode_url` varchar(200) DEFAULT '',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `ims_weisrc_dish_print_setting`
--

INSERT INTO `ims_weisrc_dish_print_setting` (`id`, `weid`, `storeid`, `title`, `print_status`, `type`, `position_type`, `yilian_type`, `api_key`, `member_code`, `feyin_key`, `print_type`, `print_usr`, `print_nums`, `print_top`, `print_bottom`, `is_print_all`, `is_meal`, `is_delivery`, `is_snack`, `is_reservation`, `is_shouyin`, `api_type`, `print_label`, `print_goodstype`, `qrcode_status`, `qrcode_url`, `dateline`) VALUES
(10, 6, 21, 'PrintCenter', 0, '365', 2, 1, '', '', 'e669c', 0, 'kdt1083042', 1, '欢迎光顾', '点了码测试打印', 1, 1, 1, 1, 1, 1, 0, '0', '0', 0, 'http://www.dianlema.net', 1509420157),
(11, 7, 22, '大黄蜂', 1, '365', 1, 1, '', '', '', 0, '', 1, '', '', 1, 1, 1, 1, 1, 0, 0, '0', '0', 0, '', 1510194368),
(12, 6, 21, 'PRINTCENTER', 0, '365', 1, 1, '', '', 'e669c', 0, 'kdt1083042', 1, '', '', 1, 1, 1, 1, 1, 1, 0, '0', '0', 0, '', 1510630764);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_queue_order`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_queue_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `queueid` int(10) unsigned NOT NULL DEFAULT '0',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_user` varchar(200) NOT NULL DEFAULT '',
  `num` varchar(100) NOT NULL DEFAULT '',
  `mobile` varchar(30) NOT NULL DEFAULT '',
  `usercount` int(10) unsigned NOT NULL DEFAULT '0',
  `isnotify` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- 转存表中的数据 `ims_weisrc_dish_queue_order`
--

INSERT INTO `ims_weisrc_dish_queue_order` (`id`, `weid`, `queueid`, `storeid`, `from_user`, `num`, `mobile`, `usercount`, `isnotify`, `status`, `dateline`) VALUES
(8, 6, 8, 21, 'oSRY007ii1nrPRxSCeihLAxANMB8', 'A-001', '13696929853', 2, 0, -1, 1510114829),
(9, 6, 8, 21, 'oSRY007ii1nrPRxSCeihLAxANMB8', 'B-010', '13886737567', 2, 0, -1, 1510115027),
(10, 6, 9, 21, 'oSRY007ii1nrPRxSCeihLAxANMB8', 'B-001', '13696929853', 7, 0, -1, 1510115103),
(11, 6, 9, 21, 'oSRY007ii1nrPRxSCeihLAxANMB8', 'B-002', '13696929853', 7, 0, -1, 1510115175),
(12, 6, 8, 21, 'oSRY007ii1nrPRxSCeihLAxANMB8', 'A-003', '13696929823', 6, 0, -1, 1510127696),
(13, 6, 9, 21, 'oSRY007ii1nrPRxSCeihLAxANMB8', 'B-003', '13696929853', 7, 0, -1, 1510132967),
(14, 6, 8, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 'A-004', '13886737567', 6, 0, -1, 1510141186),
(15, 6, 9, 21, 'oSRY007ii1nrPRxSCeihLAxANMB8', 'B-004', '13696929853', 7, 1, 2, 1510147089),
(16, 6, 8, 21, 'oSRY004apWoEmgGRX6tq94KeP8SE', 'A-005', '15396289796', 4, 0, -1, 1510157519),
(17, 6, 8, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 'A-006', '13886737567', 5, 0, -1, 1510157548),
(18, 6, 8, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 'A-007', '15959911111', 5, 0, -1, 1510194931),
(19, 6, 9, 21, 'oSRY004apWoEmgGRX6tq94KeP8SE', 'B-005', '15396289793', 8, 0, -1, 1510194970),
(20, 6, 8, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 'A-008', '15959999999', 5, 0, -1, 1510195035),
(21, 6, 8, 21, 'oSRY00xwP3RqZUy04n2o1Q3c-dHc', 'A-009', '13779951852', 5, 0, -1, 1510323596),
(22, 6, 9, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 'B-006', '13886737567', 9, 1, 2, 1510555558),
(23, 6, 9, 21, 'oSRY0041WZrzvp2v5xNyImo5LAZI', 'B-007', '15980812404', 7, 1, -1, 1510653329),
(24, 6, 9, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 'B-008', '13886737567', 8, 1, 2, 1510664593),
(25, 6, 9, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 'B-009', '15711590322', 7, 1, 2, 1510664823),
(26, 6, 9, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 'B-010', '13886737567', 8, 1, 2, 1510710663),
(27, 6, 9, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 'B-011', '15711590322', 7, 1, 2, 1510710772),
(28, 6, 9, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 'B-012', '13811111111', 7, 1, 3, 1510710836),
(29, 6, 8, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 'A-010', '13811111111', 2, 1, 2, 1510710927),
(30, 6, 8, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 'A-011', '13812341234', 5, 1, -1, 1510710976),
(31, 6, 9, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 'B-013', '13886737567', 9, 1, 2, 1510711013),
(32, 6, 9, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 'B-014', '13812341234', 8, 1, 2, 1510711085),
(33, 6, 9, 21, 'oSRY007ii1nrPRxSCeihLAxANMB8', 'B-015', '13696929853', 7, 1, 2, 1510804950),
(34, 6, 8, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 'A-012', '13886737567', 1, 1, 3, 1510827665),
(35, 6, 8, 21, 'oSRY00_4HQL3U8SwTcdHz9PmjSnQ', 'A-013', '18696959693', 6, 1, -1, 1511240895);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_queue_setting`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_queue_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `limit_num` int(10) unsigned NOT NULL DEFAULT '0',
  `prefix` varchar(50) NOT NULL,
  `starttime` varchar(50) NOT NULL DEFAULT '00:00' COMMENT '开始时间',
  `endtime` varchar(50) NOT NULL DEFAULT '23:59' COMMENT '结束时间',
  `notify_number` int(10) NOT NULL DEFAULT '0' COMMENT '通知人数',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `ims_weisrc_dish_queue_setting`
--

INSERT INTO `ims_weisrc_dish_queue_setting` (`id`, `weid`, `storeid`, `title`, `limit_num`, `prefix`, `starttime`, `endtime`, `notify_number`, `displayorder`, `dateline`, `status`) VALUES
(8, 6, 21, '1-5', 6, 'A-', '00:00', '23:59', -5, 0, 1510114793, 1),
(9, 6, 21, '6-10', 10, 'B-', '00:00', '23:59', 5, 0, 1510114998, 1),
(10, 7, 22, '傻子小分队', 2, 'SB-', '11:00', '00:00', 0, 0, 1510192878, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_recharge`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_recharge` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL DEFAULT '0' COMMENT '公众号id',
  `storeid` int(10) NOT NULL DEFAULT '0' COMMENT '门店id',
  `title` varchar(200) NOT NULL COMMENT '活动名称',
  `recharge_value` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值多少',
  `give_value` int(10) NOT NULL DEFAULT '0' COMMENT '赠送多少',
  `total` int(10) NOT NULL DEFAULT '0' COMMENT '几期',
  `starttime` int(10) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `endtime` int(10) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `content` text NOT NULL,
  `displayorder` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `dateline` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `ims_weisrc_dish_recharge`
--

INSERT INTO `ims_weisrc_dish_recharge` (`id`, `weid`, `storeid`, `title`, `recharge_value`, `give_value`, `total`, `starttime`, `endtime`, `content`, `displayorder`, `status`, `dateline`) VALUES
(4, 6, 0, '满100送0元！', '100.00', 0, 1, 1511150220, 1513742220, '', 0, 0, 1511150252);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_recharge_record`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_recharge_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rechargeid` int(10) NOT NULL DEFAULT '0',
  `weid` int(10) NOT NULL DEFAULT '0' COMMENT '公众号id',
  `from_user` varchar(100) DEFAULT '',
  `storeid` int(10) NOT NULL DEFAULT '0' COMMENT '门店id',
  `orderid` int(10) NOT NULL DEFAULT '0' COMMENT '订单id',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `displayorder` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `remark` text NOT NULL COMMENT '备注',
  `givetime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `dateline` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_reply`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '入口类型',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '入口门店',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `picture` varchar(255) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加日期',
  PRIMARY KEY (`id`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_reservation`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_reservation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '门店',
  `tablezonesid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '餐桌类型id',
  `time` varchar(200) NOT NULL DEFAULT '' COMMENT '预定时间',
  `label` varchar(50) NOT NULL DEFAULT '' COMMENT '标签',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- 转存表中的数据 `ims_weisrc_dish_reservation`
--

INSERT INTO `ims_weisrc_dish_reservation` (`id`, `weid`, `storeid`, `tablezonesid`, `time`, `label`, `displayorder`, `dateline`) VALUES
(15, 6, 21, 27, '18:00', '包厢', 0, 1510115400),
(16, 6, 21, 28, '18:00', '', 0, 1510116282),
(17, 6, 21, 29, '18:00', '', 0, 1510116296),
(18, 6, 21, 30, '18:00', '', 0, 1510116309),
(19, 6, 21, 31, '18:00', '', 0, 1510116337),
(31, 7, 22, 32, '09:05', '', 0, 1510198833),
(30, 7, 22, 32, '09:00', '', 0, 1510198833),
(37, 7, 22, 32, '09:30', '', 0, 1510199545),
(36, 7, 23, 0, '07:05', '', 0, 1510199409),
(28, 7, 22, 32, '16:20', '', 0, 1510193362),
(29, 7, 22, 32, '17:00', '', 0, 1510193362),
(32, 7, 22, 32, '09:10', '', 0, 1510198833),
(33, 7, 22, 32, '09:15', '', 0, 1510198833),
(34, 7, 22, 32, '09:20', '', 0, 1510198833);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_savewine_log`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_savewine_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '门店编号',
  `from_user` varchar(100) DEFAULT '',
  `savenumber` varchar(100) NOT NULL DEFAULT '' COMMENT '存酒卡号',
  `title` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `username` varchar(100) DEFAULT NULL COMMENT '用户姓名',
  `tel` varchar(30) DEFAULT NULL COMMENT '联系电话',
  `remark` text NOT NULL COMMENT '备注',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `takeouttime` int(10) unsigned NOT NULL DEFAULT '0',
  `savetime` int(10) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `ims_weisrc_dish_savewine_log`
--

INSERT INTO `ims_weisrc_dish_savewine_log` (`id`, `weid`, `storeid`, `from_user`, `savenumber`, `title`, `username`, `tel`, `remark`, `displayorder`, `status`, `takeouttime`, `savetime`, `dateline`) VALUES
(9, 6, 21, 'oSRY007ii1nrPRxSCeihLAxANMB8', '1000001', '啤酒15瓶', '陈成果', '13696929853', '', 0, 1, 0, 1510133107, 1510124641),
(10, 6, 21, 'oSRY007ii1nrPRxSCeihLAxANMB8', '1000002', '啤酒1', '陈成果', '13696929853', '', 0, 1, 0, 1510738901, 1510127750),
(11, 6, 21, 'oSRY007ii1nrPRxSCeihLAxANMB8', '1000003', '啤酒', '陈成果', '13696929853', '', 0, -1, 1511150226, 1510738886, 1510133136),
(16, 7, 23, '', '1000002', '陆毅18*2', '王先森', '12345678901', '', 0, 0, 0, 0, 1510564633),
(13, 7, 22, '', '1000001', '锤子', '傻子', '250', '', 0, 0, 0, 0, 1510192217),
(14, 6, 21, 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '1000005', '老婆2个', '鸡蛋', '15888888888', '', 0, 1, 1510646149, 1510738924, 1510561804),
(17, 6, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', '1000006', '锤子', '李元霸', '10808080808', '', 0, 1, 0, 1510625964, 1510625948),
(18, 6, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', '1000007', '牛鞭', '尉迟恭', '11111111111', '', 0, -1, 1510653205, 1510653010, 1510646131);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_service_log`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_service_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '门店编号',
  `from_user` varchar(100) DEFAULT '',
  `content` varchar(1000) DEFAULT NULL COMMENT '内容',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- 转存表中的数据 `ims_weisrc_dish_service_log`
--

INSERT INTO `ims_weisrc_dish_service_log` (`id`, `weid`, `storeid`, `from_user`, `content`, `status`, `dateline`) VALUES
(21, 6, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 'V001号桌要打包', 1, 1510298085),
(22, 6, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 'V001号桌呼叫服务员', 1, 1510298091),
(23, 6, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 'V001号桌要打包', 1, 1510298113),
(24, 6, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 'V001号桌呼叫服务员', 1, 1510298116),
(25, 6, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 'V001号桌呼叫服务员', 1, 1510298135),
(26, 6, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 'V001号桌要打包', 1, 1510298587),
(27, 6, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 'V001号桌呼叫服务员', 1, 1510298592),
(28, 6, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', '钻1号桌要打包', 0, 1511150396),
(29, 6, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', '钻1号桌呼叫服务员', 0, 1511150403),
(30, 6, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', '钻1号桌呼叫服务员', 0, 1511150408),
(31, 6, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', '钻1号桌呼叫服务员', 0, 1511150412),
(32, 6, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', '钻1号桌呼叫服务员', 0, 1511150417),
(33, 6, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', '卡001号桌呼叫服务员', 0, 1511161854);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_setting`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) DEFAULT '' COMMENT '网站名称',
  `thumb` varchar(200) DEFAULT '' COMMENT '背景图',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0',
  `mode` tinyint(1) NOT NULL DEFAULT '0' COMMENT '模式',
  `is_notice` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '开启提醒',
  `entrance_type` tinyint(1) unsigned NOT NULL COMMENT '入口类型1:首页2门店列表3商品列表4我的菜单',
  `entrance_storeid` tinyint(1) unsigned NOT NULL COMMENT '入口门店id',
  `order_enable` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '订餐开启',
  `dining_mode` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '用餐类型 1:到店 2:外卖',
  `istplnotice` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否模版通知',
  `tpltype` tinyint(1) NOT NULL DEFAULT '1' COMMENT '模版行业类型',
  `tplneworder` varchar(200) DEFAULT '' COMMENT '模板id',
  `tplnewqueue` varchar(200) DEFAULT '' COMMENT '模板id',
  `tploperator` varchar(200) DEFAULT '' COMMENT '模板id',
  `tplboss` varchar(200) NOT NULL DEFAULT '',
  `link_card_name` varchar(100) DEFAULT '',
  `link_card` varchar(500) DEFAULT '',
  `link_sign_name` varchar(100) DEFAULT '',
  `link_sign` varchar(500) DEFAULT '',
  `searchword` varchar(1000) DEFAULT '' COMMENT '搜索关键字',
  `tpluser` text COMMENT '通知用户',
  `sms_enable` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '开启短信提醒',
  `sms_username` varchar(20) DEFAULT '' COMMENT '平台帐号',
  `sms_pwd` varchar(20) DEFAULT '' COMMENT '平台密码',
  `sms_mobile` varchar(20) DEFAULT '' COMMENT '商户接收短信手机',
  `email_enable` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '开启邮箱提醒',
  `email_host` varchar(50) DEFAULT '' COMMENT '邮箱服务器',
  `email_send` varchar(100) DEFAULT '' COMMENT '商户发送邮件邮箱',
  `email_pwd` varchar(20) DEFAULT '' COMMENT '邮箱密码',
  `email_user` varchar(100) DEFAULT '' COMMENT '发信人名称',
  `email` varchar(100) DEFAULT '' COMMENT '平台接收邮件邮箱',
  `getcash_price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最低提现金额',
  `fee_rate` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '提现费率',
  `fee_min` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '提现手续费最低金额',
  `fee_max` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '提现手续费最高金额',
  `is_commission` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '开启分销',
  `commission_level` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '分销级别',
  `commission_mode` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '分销模式',
  `commission_money_mode` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '佣金模式',
  `commission1_rate_max` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '佣金费率',
  `commission1_value_max` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '提现手续费最低金额',
  `commission2_rate_max` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '佣金费率',
  `commission2_value_max` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '提现手续费最低金额',
  `commission3_rate_max` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '佣金费率',
  `commission3_value_max` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '提现手续费最低金额',
  `commission_settlement` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '佣金结算方式',
  `delivery_mode` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '配送通知模式',
  `delivery_commission_mode` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '配送佣金模式',
  `delivery_money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '佣金',
  `delivery_cash_price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '提现最低金额',
  `delivery_rate` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '佣金费率',
  `delivery_order_max` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配送订单数量限制',
  `delivery_auto_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '自动推送配送员时间设置',
  `delivery_finish_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '自动完成已配送订单',
  `link_recharge` varchar(500) DEFAULT '',
  `link_recharge_name` varchar(100) DEFAULT '',
  `wechat` tinyint(1) NOT NULL DEFAULT '1',
  `alipay` tinyint(1) NOT NULL DEFAULT '1',
  `credit` tinyint(1) NOT NULL DEFAULT '1',
  `delivery` tinyint(1) NOT NULL DEFAULT '1',
  `is_speaker` tinyint(1) NOT NULL DEFAULT '1',
  `is_auto_address` tinyint(1) NOT NULL DEFAULT '0',
  `is_show_home` tinyint(1) NOT NULL DEFAULT '1',
  `is_operator_pwd` tinyint(1) NOT NULL DEFAULT '0',
  `tiptype` tinyint(1) NOT NULL DEFAULT '1',
  `tipbtn` tinyint(1) NOT NULL DEFAULT '1',
  `tipqrcode` varchar(500) DEFAULT '',
  `operator_pwd` varchar(50) DEFAULT '',
  `apiclient_cert` tinyint(1) NOT NULL DEFAULT '0',
  `apiclient_key` tinyint(1) NOT NULL DEFAULT '0',
  `rootca` tinyint(1) NOT NULL DEFAULT '0',
  `share_title` varchar(200) DEFAULT '',
  `share_desc` varchar(300) DEFAULT '',
  `share_image` varchar(500) DEFAULT '',
  `follow_url` varchar(500) DEFAULT '',
  `follow_title` varchar(500) DEFAULT '',
  `follow_desc` varchar(500) DEFAULT '',
  `follow_logo` varchar(500) DEFAULT '',
  `site_logo` varchar(500) DEFAULT '',
  `isneedfollow` tinyint(1) DEFAULT '0',
  `statistics` text NOT NULL,
  `dateline` int(10) DEFAULT '0',
  `tplapplynotice` varchar(200) NOT NULL DEFAULT '',
  `is_contain_delivery` tinyint(1) NOT NULL DEFAULT '1',
  `fengniao_appid` varchar(200) DEFAULT '',
  `fengniao_key` varchar(200) DEFAULT '',
  `is_verify_mobile` tinyint(1) NOT NULL DEFAULT '0',
  `dayu_appkey` varchar(200) DEFAULT '',
  `dayu_secretkey` varchar(200) DEFAULT '',
  `dayu_verify_code` varchar(200) DEFAULT '',
  `dayu_sign` varchar(200) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `ims_weisrc_dish_setting`
--

INSERT INTO `ims_weisrc_dish_setting` (`id`, `weid`, `title`, `thumb`, `storeid`, `mode`, `is_notice`, `entrance_type`, `entrance_storeid`, `order_enable`, `dining_mode`, `istplnotice`, `tpltype`, `tplneworder`, `tplnewqueue`, `tploperator`, `tplboss`, `link_card_name`, `link_card`, `link_sign_name`, `link_sign`, `searchword`, `tpluser`, `sms_enable`, `sms_username`, `sms_pwd`, `sms_mobile`, `email_enable`, `email_host`, `email_send`, `email_pwd`, `email_user`, `email`, `getcash_price`, `fee_rate`, `fee_min`, `fee_max`, `is_commission`, `commission_level`, `commission_mode`, `commission_money_mode`, `commission1_rate_max`, `commission1_value_max`, `commission2_rate_max`, `commission2_value_max`, `commission3_rate_max`, `commission3_value_max`, `commission_settlement`, `delivery_mode`, `delivery_commission_mode`, `delivery_money`, `delivery_cash_price`, `delivery_rate`, `delivery_order_max`, `delivery_auto_time`, `delivery_finish_time`, `link_recharge`, `link_recharge_name`, `wechat`, `alipay`, `credit`, `delivery`, `is_speaker`, `is_auto_address`, `is_show_home`, `is_operator_pwd`, `tiptype`, `tipbtn`, `tipqrcode`, `operator_pwd`, `apiclient_cert`, `apiclient_key`, `rootca`, `share_title`, `share_desc`, `share_image`, `follow_url`, `follow_title`, `follow_desc`, `follow_logo`, `site_logo`, `isneedfollow`, `statistics`, `dateline`, `tplapplynotice`, `is_contain_delivery`, `fengniao_appid`, `fengniao_key`, `is_verify_mobile`, `dayu_appkey`, `dayu_secretkey`, `dayu_verify_code`, `dayu_sign`) VALUES
(5, 5, '', '', 20, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', 'admin', '', 0, '', '', '', 0, 'smtp.qq.com', '', '', '微点餐', '', 0, '0.00', 0, 0, 0, 1, 0, 0, '0.00', 0, '0.00', 0, '0.00', 0, 0, 1, 1, '0.00', 0, '0.00', 0, 0, 0, '', '', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, '', 'apestar2017Diancan', 0, 0, 0, '', '', '', '', '', '', '', './addons/weisrc_dish/template/images/logo.png', 0, '', 1506309221, '', 0, '', '', 0, '', '', '', ''),
(6, 6, '', '', 21, 1, 1, 0, 0, 0, 0, 1, 1, 'SviWMOq3xN1xYzMmLPEk0sr3LvcqiHWW6Xl9w9kGTqk', 'c9o152PtYBh3-dNhO_9CjRFrUeY56F--6TKDVzFP2e4', 'oBql7vepU09miSZP4rOuZLMc7FeItrJ5XaqAUJTuUCo', '', '', '', '', '', 'admin', 'oSRY007ii1nrPRxSCeihLAxANMB8', 0, '', '', '', 0, 'smtp.qq.com', '', '', '微点餐', '', 0, '0.00', 0, 0, 0, 1, 0, 0, '0.00', 0, '0.00', 0, '0.00', 0, 0, 2, 1, '2.00', 20, '100.00', 999, 3, 0, '', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, '', 'apestar2017Diancan', 1, 1, 1, '', '', '', '', '', '', '', 'images/6/2017/10/x7rOGqFfUT2rZZRFdRar3Q6OSauRy7.png', 0, '', 1509085601, '', 0, '', '', 0, '', '', '', ''),
(7, 7, '', '', 23, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 'smtp.qq.com', '', '', '微点餐', '', 0, '0.00', 0, 0, 0, 1, 0, 0, '0.00', 0, '0.00', 0, '0.00', 0, 0, 1, 1, '0.00', 0, '0.00', 0, 0, 0, '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, '', '', '', '', '', '', '', './addons/weisrc_dish/template/images/logo.png', 0, '', 1510213133, '', 0, '', '', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_sms_checkcode`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_sms_checkcode` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(100) DEFAULT '' COMMENT '用户ID',
  `mobile` varchar(30) DEFAULT '' COMMENT '手机',
  `checkcode` varchar(100) DEFAULT '' COMMENT '验证码',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '状态 0未使用1已使用',
  `dateline` int(10) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_sms_setting`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_sms_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `sms_enable` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '开启短信提醒',
  `sms_verify_enable` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '开启短信验证提醒',
  `sms_username` varchar(20) DEFAULT '' COMMENT '平台帐号',
  `sms_pwd` varchar(20) DEFAULT '' COMMENT '平台密码',
  `sms_mobile` varchar(20) DEFAULT '' COMMENT '商户接收短信手机',
  `sms_verify_tpl` varchar(120) DEFAULT '' COMMENT '验证短信模板',
  `sms_business_tpl` varchar(120) DEFAULT '' COMMENT '商户短信模板',
  `sms_user_tpl` varchar(120) DEFAULT '' COMMENT '用户短信模板',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_sncode`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_sncode` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `couponid` int(10) NOT NULL DEFAULT '0' COMMENT '优惠券id',
  `storeid` int(10) NOT NULL DEFAULT '0' COMMENT '门店id',
  `weid` int(10) NOT NULL DEFAULT '0' COMMENT '公众号id',
  `from_user` varchar(100) NOT NULL COMMENT 'openid',
  `title` varchar(40) NOT NULL,
  `sncode` varchar(100) NOT NULL COMMENT 'sn码',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1优惠券2代金券3礼品券',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '消费金额',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `isshow` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示 用户删除时更新',
  `winningtime` int(10) NOT NULL DEFAULT '0' COMMENT '生成时间',
  `usetime` int(10) NOT NULL DEFAULT '0' COMMENT '使用时间',
  `dateline` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_stores`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_stores` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL DEFAULT '0' COMMENT '公众号id',
  `from_user` varchar(200) NOT NULL DEFAULT '',
  `areaid` int(10) NOT NULL DEFAULT '0' COMMENT '区域id',
  `typeid` int(10) NOT NULL DEFAULT '0' COMMENT '商家类型',
  `default_jump` tinyint(2) NOT NULL DEFAULT '1' COMMENT '默认类型',
  `default_jump_url` varchar(500) NOT NULL DEFAULT '' COMMENT '默认链接',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `logo` varchar(500) NOT NULL DEFAULT '' COMMENT '商家logo',
  `info` varchar(1000) NOT NULL DEFAULT '' COMMENT '简短描述',
  `content` text NOT NULL COMMENT '简介',
  `thumbs` text NOT NULL,
  `announce` varchar(1000) NOT NULL DEFAULT '' COMMENT '公告通知',
  `reservation_announce` varchar(1000) NOT NULL DEFAULT '' COMMENT '预定公告',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `address` varchar(200) DEFAULT '' COMMENT '地址',
  `qq` varchar(20) DEFAULT '',
  `weixin` varchar(20) DEFAULT '',
  `place` varchar(200) NOT NULL DEFAULT '',
  `lat` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '经度',
  `lng` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '纬度',
  `password` varchar(20) NOT NULL DEFAULT '' COMMENT '登录密码',
  `hours` varchar(200) NOT NULL DEFAULT '' COMMENT '营业时间',
  `recharging_password` varchar(20) NOT NULL DEFAULT '' COMMENT '充值密码',
  `thumb_url` varchar(1000) DEFAULT NULL,
  `enable_wifi` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有wifi',
  `enable_card` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否能刷卡',
  `enable_room` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有包厢',
  `enable_park` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有停车',
  `is_locktables` tinyint(1) NOT NULL DEFAULT '0',
  `is_dispatcharea` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否启用配送区域',
  `is_brand` tinyint(1) NOT NULL DEFAULT '0' COMMENT '品牌商家',
  `is_meal_pay_confirm` tinyint(1) NOT NULL DEFAULT '0' COMMENT '店内点餐在线支付是否需要确认',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '搜索页显示',
  `is_rest` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否休息中',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否在手机端显示',
  `is_list` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否在列表显示',
  `is_sms` tinyint(1) NOT NULL DEFAULT '0',
  `is_hour` tinyint(1) NOT NULL DEFAULT '0',
  `is_add_dish` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否加菜',
  `is_add_order` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否加单',
  `is_meal` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否店内点餐',
  `is_delivery` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否外卖订餐',
  `is_snack` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否支持快餐',
  `is_reservation` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否支持预定',
  `is_queue` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否支持排队',
  `is_intelligent` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否支持套餐',
  `is_savewine` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否支持寄存',
  `is_shouyin` tinyint(1) NOT NULL DEFAULT '0',
  `is_operator1` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否支持呼叫服务员',
  `is_operator2` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否支持打包',
  `is_business` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否支持子商户支付',
  `business_id` int(10) NOT NULL DEFAULT '0' COMMENT '子商户活动ID',
  `is_bank_pay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否支持银行支付',
  `bank_pay_id` int(10) NOT NULL DEFAULT '0' COMMENT '银行活动ID',
  `is_vtiny_bankpay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否支持银行支付',
  `vtiny_bankpay_id` int(10) NOT NULL DEFAULT '0' COMMENT '银行活动ID',
  `vtiny_bankpay_url` varchar(500) NOT NULL DEFAULT '' COMMENT '链接',
  `is_auto_confirm` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否自动确认订单',
  `is_order_autoconfirm` tinyint(1) NOT NULL DEFAULT '0',
  `notice_space_time` int(10) DEFAULT '300',
  `coupon_title1` varchar(100) NOT NULL DEFAULT '' COMMENT '优惠名称',
  `coupon_link1` varchar(200) NOT NULL DEFAULT '' COMMENT '优惠链接',
  `coupon_title2` varchar(100) NOT NULL DEFAULT '' COMMENT '优惠名称',
  `coupon_link2` varchar(200) NOT NULL DEFAULT '' COMMENT '优惠链接',
  `coupon_title3` varchar(100) NOT NULL DEFAULT '' COMMENT '优惠名称',
  `coupon_link3` varchar(200) NOT NULL DEFAULT '' COMMENT '优惠链接',
  `btn_reservation` varchar(100) NOT NULL DEFAULT '预定' COMMENT '预定按钮',
  `btn_eat` varchar(100) NOT NULL DEFAULT '点菜' COMMENT '点菜按钮',
  `btn_delivery` varchar(100) NOT NULL DEFAULT '外卖' COMMENT '外卖按钮',
  `btn_snack` varchar(100) NOT NULL DEFAULT '快餐' COMMENT '快餐按钮',
  `btn_queue` varchar(100) NOT NULL DEFAULT '排队' COMMENT '排队按钮',
  `btn_intelligent` varchar(100) NOT NULL DEFAULT '套餐' COMMENT '套餐按钮',
  `btn_shouyin` varchar(100) NOT NULL DEFAULT '收银',
  `is_reservation_dish` tinyint(1) NOT NULL DEFAULT '1',
  `reservation_days` int(10) NOT NULL DEFAULT '7' COMMENT '预订天数',
  `kefu_qrcode` varchar(500) NOT NULL DEFAULT '',
  `begintime` varchar(20) DEFAULT '09:00' COMMENT '开始时间',
  `endtime` varchar(20) DEFAULT '18:00' COMMENT '结束时间',
  `begintime1` varchar(20) DEFAULT '09:00' COMMENT '开始时间',
  `endtime1` varchar(20) DEFAULT '18:00' COMMENT '结束时间',
  `begintime2` varchar(20) DEFAULT '09:00' COMMENT '开始时间',
  `endtime2` varchar(20) DEFAULT '18:00' COMMENT '结束时间',
  `delivery_isnot_today` tinyint(1) NOT NULL DEFAULT '0',
  `delivery_within_days` int(10) NOT NULL DEFAULT '0' COMMENT '允许提前几天点外卖',
  `delivery_radius` decimal(18,1) NOT NULL DEFAULT '0.0' COMMENT '半径',
  `not_in_delivery_radius` tinyint(1) NOT NULL DEFAULT '1' COMMENT '在配送半径之外是否允许下单',
  `sendingprice` varchar(10) NOT NULL DEFAULT '' COMMENT '起送价格',
  `dispatchprice` decimal(10,2) DEFAULT '0.00',
  `freeprice` decimal(10,2) DEFAULT '0.00',
  `consume` varchar(20) NOT NULL COMMENT '人均消费',
  `wechat` tinyint(1) NOT NULL DEFAULT '1',
  `alipay` tinyint(1) NOT NULL DEFAULT '1',
  `credit` tinyint(1) NOT NULL DEFAULT '1',
  `is_speaker` tinyint(1) NOT NULL DEFAULT '1',
  `delivery` tinyint(1) NOT NULL DEFAULT '1',
  `is_reservation_today` tinyint(1) NOT NULL DEFAULT '1',
  `reservation_tip` varchar(200) NOT NULL DEFAULT '请输入备注，人数口味等等（可不填）',
  `reservation_wechat` tinyint(1) NOT NULL DEFAULT '1',
  `reservation_alipay` tinyint(1) NOT NULL DEFAULT '1',
  `reservation_credit` tinyint(1) NOT NULL DEFAULT '1',
  `reservation_delivery` tinyint(1) NOT NULL DEFAULT '1',
  `level` tinyint(1) NOT NULL DEFAULT '1' COMMENT '级别',
  `screen_mode` tinyint(1) NOT NULL DEFAULT '1',
  `screen_title` varchar(200) NOT NULL DEFAULT '',
  `screen_bg` varchar(500) NOT NULL DEFAULT '',
  `screen_bottom` varchar(200) NOT NULL DEFAULT '',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `updatetime` int(10) NOT NULL DEFAULT '0',
  `dateline` int(10) NOT NULL DEFAULT '0',
  `business_type` tinyint(1) NOT NULL DEFAULT '0',
  `business_openid` varchar(200) NOT NULL DEFAULT '',
  `business_username` varchar(200) NOT NULL DEFAULT '',
  `business_alipay` varchar(200) NOT NULL DEFAULT '',
  `business_wechat` varchar(200) NOT NULL DEFAULT '',
  `is_ld_wxserver` tinyint(1) DEFAULT NULL,
  `ld_wxserver_url` varchar(255) DEFAULT NULL,
  `is_default_rate` tinyint(1) NOT NULL DEFAULT '1' COMMENT '默认1,自定义2',
  `getcash_price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最低提现金额',
  `fee_rate` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '提现费率',
  `fee_min` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '提现手续费最低金额',
  `fee_max` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '提现手续费最高金额',
  `is_tea_money` tinyint(1) NOT NULL DEFAULT '0',
  `tea_money` decimal(10,2) DEFAULT '0.00',
  `tea_tip` varchar(200) NOT NULL DEFAULT '',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_delivery_nowtime` tinyint(1) NOT NULL DEFAULT '1',
  `is_order_tip` tinyint(1) NOT NULL DEFAULT '0',
  `default_user_count` int(10) unsigned NOT NULL DEFAULT '5' COMMENT '默认的用餐人数',
  `is_jueqi_ymf` tinyint(1) NOT NULL DEFAULT '0',
  `jueqi_host` varchar(200) NOT NULL DEFAULT '',
  `jueqi_customerId` varchar(200) NOT NULL DEFAULT '',
  `is_newlimitprice` tinyint(1) NOT NULL DEFAULT '0' COMMENT '新顾客满减',
  `is_oldlimitprice` tinyint(1) NOT NULL DEFAULT '0' COMMENT '老顾客满减',
  `is_delivery_distance` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否支持配送距离',
  `is_fengniao` tinyint(1) NOT NULL DEFAULT '0',
  `business_mobile` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `ims_weisrc_dish_stores`
--

INSERT INTO `ims_weisrc_dish_stores` (`id`, `weid`, `from_user`, `areaid`, `typeid`, `default_jump`, `default_jump_url`, `title`, `logo`, `info`, `content`, `thumbs`, `announce`, `reservation_announce`, `tel`, `address`, `qq`, `weixin`, `place`, `lat`, `lng`, `password`, `hours`, `recharging_password`, `thumb_url`, `enable_wifi`, `enable_card`, `enable_room`, `enable_park`, `is_locktables`, `is_dispatcharea`, `is_brand`, `is_meal_pay_confirm`, `is_hot`, `is_rest`, `is_show`, `is_list`, `is_sms`, `is_hour`, `is_add_dish`, `is_add_order`, `is_meal`, `is_delivery`, `is_snack`, `is_reservation`, `is_queue`, `is_intelligent`, `is_savewine`, `is_shouyin`, `is_operator1`, `is_operator2`, `is_business`, `business_id`, `is_bank_pay`, `bank_pay_id`, `is_vtiny_bankpay`, `vtiny_bankpay_id`, `vtiny_bankpay_url`, `is_auto_confirm`, `is_order_autoconfirm`, `notice_space_time`, `coupon_title1`, `coupon_link1`, `coupon_title2`, `coupon_link2`, `coupon_title3`, `coupon_link3`, `btn_reservation`, `btn_eat`, `btn_delivery`, `btn_snack`, `btn_queue`, `btn_intelligent`, `btn_shouyin`, `is_reservation_dish`, `reservation_days`, `kefu_qrcode`, `begintime`, `endtime`, `begintime1`, `endtime1`, `begintime2`, `endtime2`, `delivery_isnot_today`, `delivery_within_days`, `delivery_radius`, `not_in_delivery_radius`, `sendingprice`, `dispatchprice`, `freeprice`, `consume`, `wechat`, `alipay`, `credit`, `is_speaker`, `delivery`, `is_reservation_today`, `reservation_tip`, `reservation_wechat`, `reservation_alipay`, `reservation_credit`, `reservation_delivery`, `level`, `screen_mode`, `screen_title`, `screen_bg`, `screen_bottom`, `displayorder`, `updatetime`, `dateline`, `business_type`, `business_openid`, `business_username`, `business_alipay`, `business_wechat`, `is_ld_wxserver`, `ld_wxserver_url`, `is_default_rate`, `getcash_price`, `fee_rate`, `fee_min`, `fee_max`, `is_tea_money`, `tea_money`, `tea_tip`, `deleted`, `is_delivery_nowtime`, `is_order_tip`, `default_user_count`, `is_jueqi_ymf`, `jueqi_host`, `jueqi_customerId`, `is_newlimitprice`, `is_oldlimitprice`, `is_delivery_distance`, `is_fengniao`, `business_mobile`) VALUES
(20, 5, '', 0, 0, 1, '', '口口碑', 'images/5/2017/09/aOdpWOt3tWwn7k7xpoup7Ku7PT7TOP.jpg', '', '', '', '', '20分钟未到店，商家有权取消本次预订，请安排好您的时间', '', '', '', '', '', '0.0000000000', '0.0000000000', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', '', '', '', '预定', '店内', '外卖', '饮品', '排队', '存酒', '收银', 1, 7, '', '09:00', '18:00', '', '', '', '', 0, 0, '0.0', 0, '', '0.00', '0.00', '', 0, 0, 0, 1, 0, 1, '请输入备注，人数口味等等（可不填）', 1, 1, 1, 1, 1, 1, '', '', '', 0, 1506309136, 1506309136, 0, '', '', '', '', 0, '', 1, 0, '0.00', 0, 0, 0, '0.00', '', 0, 1, 0, 5, 0, '', '', 0, 0, 0, 0, ''),
(21, 6, '', 0, 0, 1, '', '点了码', 'images/6/2017/11/if06691Z5R3rrh9mz3hfzI29I36rh5.jpg', '点了码', '&lt;p&gt;点了码&lt;/p&gt;', '', '点了码', '20分钟未到店，商家有权取消本次预订，请安排好您的时间', '', '', '', '', '', '0.0000000000', '0.0000000000', '', '', '', NULL, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, '', 1, 1, 0, '', '', '', '', '', '', '预定', '店内', '外卖', '饮品', '排队', '存酒', '收银', 1, 3, '', '09:00', '23:55', '', '', '', '', 0, 0, '10.0', 1, '', '0.00', '0.00', '1000', 1, 0, 0, 1, 0, 1, '请输入备注，人数口味等等', 1, 0, 0, 0, 5, 1, '点了码', 'https://15595755.kf5.com/attachments/download/3056299/001584a6bdcc076a25d0e43a1f03c9f/', '取号，微信扫一扫', 0, 1510555001, 1509085578, 0, '', '', '', '', 0, '', 1, 0, '0.00', 0, 0, 0, '0.00', '', 0, 1, 0, 20, 0, '', '', 0, 0, 0, 0, ''),
(22, 7, '', 0, 0, 1, '', '1111', '', '', '', 'a:1:{i:0;a:2:{s:5:"image";s:51:"images/7/2017/11/ws83s4z406gsGvliBbFZWYQq3046Fs.jpg";s:3:"url";s:0:"";}}', '', '20分钟未到店，商家有权取消本次预订，请安排好您的时间', '', '', '', '', '', '0.0000000000', '0.0000000000', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', '', '', '', '预定', '店内', '外卖', '快餐', '排队', '存酒', '收银', 1, 7, '', '09:00', '18:00', '', '', '', '', 0, 0, '0.0', 0, '', '0.00', '0.00', '', 0, 0, 0, 1, 0, 1, '请输入备注，人数口味等等（可不填）', 1, 1, 1, 1, 1, 1, '', '', '', 0, 1510191802, 1510191802, 0, '', '', '', '', 0, '', 1, 0, '0.00', 0, 0, 0, '0.00', '', 0, 1, 0, 5, 0, '', '', 0, 0, 0, 0, ''),
(23, 7, '', 0, 0, 1, '', '黑店', '', '这里有妈妈在味道', '', '', '到饭点了 欢迎回家', '20分钟 你来与不来我都这里', '', '', '', '', '', '0.0000000000', '0.0000000000', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 5, '', '', '', '', '', '', '预定', '店内', '外卖', '快餐', '排队', '存酒', '收银', 1, 7, '', '09:00', '18:00', '', '', '', '', 0, 1, '5.0', 0, '28', '4.00', '30.00', '', 1, 0, 0, 1, 0, 1, '请输入备注，人数口味等等（可不填）', 1, 1, 1, 1, 1, 1, '', '', '', 0, 1510213529, 1510192222, 0, '', '', '', '', 0, '', 1, 0, '0.00', 0, 0, 0, '0.00', '', 0, 1, 0, 5, 0, '', '', 0, 0, 1, 0, ''),
(24, 11, '', 0, 0, 1, '', '测试门店1', '', '', '', 'a:1:{i:0;a:2:{s:5:"image";s:52:"images/11/2017/11/zSA9ohYkAA9s93Bmy732ab3BOpby72.png";s:3:"url";s:0:"";}}', '', '20分钟未到店，商家有权取消本次预订，请安排好您的时间', '', '', '', '', '', '0.0000000000', '0.0000000000', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', '', '', '', '预定', '店内', '外卖', '快餐', '排队', '存酒', '收银', 1, 7, '', '09:00', '18:00', '', '', '', '', 0, 0, '0.0', 0, '', '0.00', '0.00', '', 0, 0, 0, 1, 0, 1, '请输入备注，人数口味等等（可不填）', 1, 1, 1, 1, 1, 1, '', '', '', 0, 1510283128, 1510283128, 0, '', '', '', '', 0, '', 1, 0, '0.00', 0, 0, 0, '0.00', '', 0, 1, 0, 5, 0, '', '', 0, 0, 0, 0, ''),
(25, 9, '', 0, 0, 1, '', 'wind的餐厅', '', '', '', '', '', '20分钟未到店，商家有权取消本次预订，请安排好您的时间', '', '', '', '', '', '0.0000000000', '0.0000000000', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', '', '', '', '预定', '店内', '外卖', '快餐', '排队', '存酒', '收银', 1, 7, '', '09:00', '18:00', '', '', '', '', 0, 0, '0.0', 0, '', '0.00', '0.00', '', 0, 0, 0, 1, 0, 1, '请输入备注，人数口味等等（可不填）', 1, 1, 1, 1, 1, 1, '', '', '', 0, 1510625267, 1510625267, 0, '', '', '', '', 0, '', 1, 0, '0.00', 0, 0, 0, '0.00', '', 0, 1, 0, 5, 0, '', '', 0, 0, 0, 0, ''),
(26, 6, '', 0, 0, 1, '', '孽缘', 'images/6/2017/11/Hh1omNNxTlm7hbnQemax8iE71Eb7gO.jpg', '', '', '', '聂氏川菜和袁氏湘菜，搞得你不要不要的！', '20分钟未到店，商家有权取消本次预订，请安排好您的时间', '', '', '', '', '', '0.0000000000', '0.0000000000', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', '', '', '', '预定', '店内', '外卖', '快餐', '排队', '存酒', '收银', 1, 7, '', '09:00', '18:00', '', '', '', '', 0, 0, '0.0', 0, '', '0.00', '0.00', '', 0, 0, 0, 1, 0, 1, '请输入备注，人数口味等等（可不填）', 1, 1, 1, 1, 1, 1, '', '', '', 0, 1510628534, 1510628534, 0, '', '', '', '', 0, '', 1, 0, '0.00', 0, 0, 0, '0.00', '', 1, 1, 0, 5, 0, '', '', 0, 0, 0, 0, ''),
(27, 6, '', 0, 0, 1, '', '令狐冲1店', '', '', '', '', '', '20分钟未到店，商家有权取消本次预订，请安排好您的时间', '', '', '', '', '', '0.0000000000', '0.0000000000', '', '', '', NULL, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', '', '', '', '预定', '店内', '外卖', '快餐', '排队', '存酒', '收银', 1, 7, '', '09:00', '18:00', '', '', '', '', 0, 0, '0.0', 0, '', '0.00', '0.00', '', 0, 0, 0, 1, 0, 1, '请输入备注，人数口味等等（可不填）', 1, 1, 1, 1, 1, 1, '', '', '', 0, 1510752127, 1510752127, 0, '', '', '', '', 0, '', 1, 0, '0.00', 0, 0, 0, '0.00', '', 1, 1, 0, 5, 0, '', '', 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_store_setting`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_store_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `order_enable` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '订餐开启',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_tables`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_tables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0',
  `print_label` int(4) NOT NULL DEFAULT '0',
  `tablezonesid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '' COMMENT '名字(桌台号)',
  `url` varchar(500) NOT NULL DEFAULT '',
  `user_count` int(10) NOT NULL DEFAULT '0' COMMENT '可供就餐人数',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=192 ;

--
-- 转存表中的数据 `ims_weisrc_dish_tables`
--

INSERT INTO `ims_weisrc_dish_tables` (`id`, `weid`, `storeid`, `print_label`, `tablezonesid`, `title`, `url`, `user_count`, `displayorder`, `dateline`, `status`) VALUES
(158, 6, 21, 0, 27, 'V001', '', 12, 0, 1510116469, 0),
(159, 6, 21, 0, 27, 'V002', '', 12, 2, 1510116494, 1),
(160, 6, 21, 0, 29, '钻1', '', 16, 1, 1510116546, 0),
(161, 6, 21, 0, 29, '钻2', '', 16, 2, 1510116567, 0),
(162, 6, 21, 0, 30, '卡001', '', 8, 1, 1510116598, 0),
(163, 7, 22, 0, 32, '01', '', 2000, 0, 1510192513, 0),
(164, 7, 22, 0, 32, '000', '', 8, 0, 1510192596, 0),
(165, 7, 22, 0, 32, '001', '', 8, 0, 1510192596, 0),
(166, 7, 22, 0, 32, '002', '', 8, 0, 1510192596, 0),
(167, 7, 22, 0, 32, '003', '', 8, 0, 1510192596, 0),
(168, 7, 22, 0, 32, '004', '', 8, 0, 1510192596, 0),
(169, 7, 22, 0, 32, '005', '', 8, 0, 1510192596, 0),
(170, 7, 22, 0, 32, '006', '', 8, 0, 1510192596, 0),
(171, 7, 22, 0, 32, '007', '', 8, 0, 1510192596, 0),
(172, 7, 22, 0, 32, '008', '', 8, 0, 1510192596, 0),
(173, 7, 22, 0, 32, '009', '', 8, 0, 1510192596, 0),
(174, 7, 22, 0, 32, '010', '', 8, 0, 1510192596, 0),
(175, 7, 22, 0, 32, '011', '', 8, 0, 1510192596, 0),
(176, 7, 22, 0, 32, '012', '', 8, 0, 1510192596, 0),
(177, 7, 22, 0, 32, '013', '', 8, 0, 1510192596, 0),
(178, 7, 22, 0, 32, '014', '', 8, 0, 1510192596, 0),
(179, 7, 22, 0, 32, '015', '', 8, 0, 1510192596, 0),
(180, 7, 22, 0, 32, '016', '', 8, 0, 1510192596, 0),
(181, 7, 22, 0, 32, '017', '', 8, 0, 1510192596, 0),
(182, 7, 22, 0, 32, '018', '', 8, 0, 1510192596, 0),
(183, 7, 22, 0, 32, '019', '', 8, 0, 1510192596, 0),
(184, 7, 23, 0, 34, 'A01', '', 5, 1, 1510564283, 0),
(185, 6, 26, 0, 35, 'H001', '', 8, 0, 1510628786, 0),
(186, 6, 26, 0, 35, 'H002', '', 8, 0, 1510628786, 0),
(187, 6, 26, 0, 35, 'H003', '', 8, 0, 1510628786, 0),
(188, 6, 26, 0, 35, 'H004', '', 8, 0, 1510628786, 0),
(189, 6, 26, 0, 35, 'H005', '', 8, 0, 1510628786, 1),
(190, 6, 26, 0, 35, 'H006', '', 8, 0, 1510628786, 0),
(191, 6, 21, 0, 29, '888', '', 0, 0, 1510664311, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_tables_order`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_tables_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `tablesid` int(10) unsigned NOT NULL DEFAULT '0',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_user` varchar(200) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=442 ;

--
-- 转存表中的数据 `ims_weisrc_dish_tables_order`
--

INSERT INTO `ims_weisrc_dish_tables_order` (`id`, `weid`, `tablesid`, `storeid`, `from_user`, `dateline`) VALUES
(353, 6, 161, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510141612),
(354, 6, 161, 21, 'oSRY007ii1nrPRxSCeihLAxANMB8', 1510141633),
(355, 6, 161, 21, 'oSRY007ii1nrPRxSCeihLAxANMB8', 1510141643),
(356, 6, 161, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510141646),
(357, 6, 162, 21, 'oSRY007ii1nrPRxSCeihLAxANMB8', 1510141673),
(358, 6, 161, 21, 'oSRY007ii1nrPRxSCeihLAxANMB8', 1510146689),
(359, 6, 161, 21, 'oSRY007ii1nrPRxSCeihLAxANMB8', 1510146762),
(360, 6, 158, 21, 'oSRY007ii1nrPRxSCeihLAxANMB8', 1510146780),
(361, 6, 161, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510146790),
(362, 6, 161, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510146791),
(363, 6, 162, 21, 'oSRY007ii1nrPRxSCeihLAxANMB8', 1510146793),
(364, 6, 162, 21, '', 1510146805),
(365, 6, 160, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510146817),
(366, 6, 160, 21, '', 1510146828),
(367, 6, 162, 21, 'oSRY007ii1nrPRxSCeihLAxANMB8', 1510148837),
(368, 6, 162, 21, 'oSRY007ii1nrPRxSCeihLAxANMB8', 1510148885),
(369, 6, 162, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 1510295405),
(370, 6, 162, 21, '', 1510295418),
(371, 6, 159, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 1510295449),
(372, 6, 159, 21, '', 1510295462),
(373, 6, 159, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 1510295494),
(374, 6, 161, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 1510295541),
(375, 6, 160, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 1510295570),
(376, 6, 159, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 1510295594),
(377, 6, 160, 21, '', 1510295706),
(378, 6, 161, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 1510296753),
(379, 6, 162, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 1510296813),
(380, 6, 160, 21, 'oSRY005yh2cXkbIoumh2yvD4rc3Y', 1510296909),
(381, 6, 160, 21, 'oSRY005yh2cXkbIoumh2yvD4rc3Y', 1510296909),
(382, 6, 160, 21, 'oSRY005yh2cXkbIoumh2yvD4rc3Y', 1510296914),
(383, 6, 160, 21, 'oSRY005yh2cXkbIoumh2yvD4rc3Y', 1510296916),
(384, 6, 160, 21, 'oSRY005yh2cXkbIoumh2yvD4rc3Y', 1510297120),
(385, 6, 160, 21, 'oSRY00ymxuQQkyt71joCQe5uH1WQ', 1510297136),
(386, 6, 160, 21, 'oSRY00ymxuQQkyt71joCQe5uH1WQ', 1510297139),
(387, 6, 158, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510297953),
(388, 6, 158, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510297954),
(389, 6, 158, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510297972),
(390, 6, 158, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510297985),
(391, 6, 158, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510298025),
(392, 6, 158, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510298043),
(393, 6, 158, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510298083),
(394, 6, 158, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510298089),
(395, 6, 158, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510298096),
(396, 6, 158, 21, '', 1510298101),
(397, 6, 158, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510298105),
(398, 6, 158, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510298117),
(399, 6, 158, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510298137),
(400, 6, 158, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510298141),
(401, 6, 158, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510298182),
(402, 6, 158, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 1510298461),
(403, 6, 158, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 1510298531),
(404, 6, 158, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 1510298566),
(405, 6, 158, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 1510298590),
(406, 6, 158, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 1510298594),
(407, 6, 158, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 1510298629),
(408, 6, 161, 21, 'oSRY00yYsbrQoDjLXPbsJV53YcNs', 1510303403),
(409, 6, 161, 21, 'oSRY0009p7BYSw0LnJpUxWbD2924', 1510303425),
(410, 6, 161, 21, 'oSRY0009p7BYSw0LnJpUxWbD2924', 1510303511),
(411, 6, 162, 21, 'oSRY00yYsbrQoDjLXPbsJV53YcNs', 1510303546),
(412, 6, 162, 21, 'oSRY0009p7BYSw0LnJpUxWbD2924', 1510303548),
(413, 6, 158, 21, 'oSRY005yh2cXkbIoumh2yvD4rc3Y', 1510564372),
(414, 6, 158, 21, '', 1510564383),
(415, 6, 158, 21, 'oSRY005yh2cXkbIoumh2yvD4rc3Y', 1510564400),
(416, 6, 158, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 1510564795),
(417, 6, 158, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 1510564796),
(418, 6, 159, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510626324),
(419, 6, 159, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510626340),
(420, 6, 161, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 1510626531),
(421, 6, 162, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 1510626611),
(422, 6, 189, 26, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 1510628809),
(423, 6, 160, 21, 'oSRY002sNxP0bwNvR-pdAsYYFKz8', 1510645985),
(424, 6, 191, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510664342),
(425, 6, 191, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510664346),
(426, 6, 191, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510664358),
(427, 6, 191, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1510664374),
(428, 6, 160, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1511150339),
(429, 6, 160, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1511150388),
(430, 6, 160, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1511150400),
(431, 6, 160, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1511150406),
(432, 6, 160, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1511150411),
(433, 6, 160, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1511150415),
(434, 6, 160, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1511150420),
(435, 6, 162, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1511161806),
(436, 6, 162, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1511161841),
(437, 6, 162, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1511161869),
(438, 6, 159, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1511161907),
(439, 6, 161, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1511163635),
(440, 6, 161, 21, 'oSRY0002kWJeWI40pNCycPqBUO3E', 1511163774),
(441, 6, 159, 21, 'oSRY00ymxuQQkyt71joCQe5uH1WQ', 1511252001);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_tablezones`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_tablezones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `limit_price` int(10) unsigned NOT NULL DEFAULT '0',
  `reservation_price` int(10) unsigned NOT NULL DEFAULT '0',
  `table_count` int(10) NOT NULL DEFAULT '0' COMMENT '餐桌数量',
  `service_rate` decimal(10,2) DEFAULT '0.00',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- 转存表中的数据 `ims_weisrc_dish_tablezones`
--

INSERT INTO `ims_weisrc_dish_tablezones` (`id`, `weid`, `storeid`, `title`, `limit_price`, `reservation_price`, `table_count`, `service_rate`, `displayorder`, `dateline`, `status`) VALUES
(27, 6, 21, 'VIP包厢', 300, 100, 0, '0.00', 0, 1510116093, 1),
(29, 6, 21, '钻石包厢', 1000, 200, 0, '0.00', 0, 1510116155, 1),
(30, 6, 21, '卡坐', 200, 50, 0, '0.00', 0, 1510116179, 1),
(32, 7, 22, '大厅', 2000, 500, 0, '3.00', 0, 1510192435, 1),
(33, 7, 22, '包厢', 5000, 1000, 0, '10.00', 0, 1510192459, 1),
(34, 7, 23, '包厢', 100, 20, 0, '15.00', 0, 1510199522, 1),
(35, 6, 26, '黑房', 0, 0, 0, '0.00', 0, 1510628686, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_template`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_template` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) NOT NULL DEFAULT '0',
  `template_name` varchar(50) NOT NULL DEFAULT 'style1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `ims_weisrc_dish_template`
--

INSERT INTO `ims_weisrc_dish_template` (`id`, `weid`, `template_name`) VALUES
(3, 5, 'style1'),
(4, 6, 'style1');

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_tpl_log`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_tpl_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned DEFAULT '0',
  `storeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '门店编号',
  `orderid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单编号',
  `ordersn` varchar(100) DEFAULT '',
  `from_user` varchar(100) DEFAULT '' COMMENT '接收者openid',
  `content` varchar(1000) DEFAULT '' COMMENT '内容',
  `result` varchar(200) DEFAULT '' COMMENT '内容结果',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=223 ;

--
-- 转存表中的数据 `ims_weisrc_dish_tpl_log`
--

INSERT INTO `ims_weisrc_dish_tpl_log` (`id`, `weid`, `storeid`, `orderid`, `ordersn`, `from_user`, `content`, `result`, `dateline`) VALUES
(96, 6, 21, 388, '20171114529069845803', 'oSRY007ii1nrPRxSCeihLAxANMB8', '配送员订单通知', '发送成功', 1510653259),
(97, 6, 21, 388, '20171114529069845803', 'oSRY007ii1nrPRxSCeihLAxANMB8', '配送员订单通知', '发送成功', 1510653262),
(98, 6, 21, 386, '20171114459219237893', 'oSRY007ii1nrPRxSCeihLAxANMB8', '配送员订单通知', '发送成功', 1510653418),
(99, 6, 21, 386, '20171114459219237893', 'oSRY007ii1nrPRxSCeihLAxANMB8', '配送员订单通知', '发送成功', 1510653421),
(100, 6, 21, 388, '20171114529069845803', 'oSRY0069zmR3bYgg6-YSEbdA-K1E', '配送员订单通知', '发送成功', 1510653873),
(101, 6, 21, 388, '20171114529069845803', 'oSRY0069zmR3bYgg6-YSEbdA-K1E', '配送员订单通知', '发送成功', 1510653959),
(102, 2, 2, 2, '2', 'oSRY00yS5yHUwKxVARp8b_21YceE', '老板信息通知', 'invalid template_id size hint: [eeBmeA0995ge21]', 1510653995),
(103, 2, 2, 2, '2', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '老板信息通知', 'invalid template_id size hint: [04U8aA0996ge30]', 1510653995),
(104, 2, 2, 2, '2', 'oSRY007ii1nrPRxSCeihLAxANMB8', '老板信息通知', 'invalid template_id size hint: [3kI0ma0996ge21]', 1510653995),
(105, 2, 2, 2, '2', 'oSRY007ii1nrPRxSCeihLAxANMB8', '老板信息通知', 'invalid template_id size hint: [WMZnSA0996ge25]', 1510653995),
(106, 2, 2, 2, '2', 'oSRY0069zmR3bYgg6-YSEbdA-K1E', '老板信息通知', 'invalid template_id size hint: [nRKOBa0997ge30]', 1510653995),
(107, 2, 2, 2, '2', 'oSRY00yS5yHUwKxVARp8b_21YceE', '老板信息通知', 'invalid template_id size hint: [I6sjta0910ge25]', 1510663910),
(108, 2, 2, 2, '2', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '老板信息通知', 'invalid template_id size hint: [HUQpoA0910ge29]', 1510663910),
(109, 2, 2, 2, '2', 'oSRY007ii1nrPRxSCeihLAxANMB8', '老板信息通知', 'invalid template_id size hint: [NSCCNa0911ge21]', 1510663910),
(110, 2, 2, 2, '2', 'oSRY007ii1nrPRxSCeihLAxANMB8', '老板信息通知', 'invalid template_id size hint: [soRgza0911ge30]', 1510663910),
(111, 2, 2, 2, '2', 'oSRY0069zmR3bYgg6-YSEbdA-K1E', '老板信息通知', 'invalid template_id size hint: [p3Jdka0911ge20]', 1510663910),
(112, 2, 2, 2, '2', 'oSRY00yS5yHUwKxVARp8b_21YceE', '老板信息通知', 'invalid template_id size hint: [6G81MA0938ge31]', 1510663938),
(113, 2, 2, 2, '2', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '老板信息通知', 'invalid template_id size hint: [E8UJuA0938ge21]', 1510663938),
(114, 2, 2, 2, '2', 'oSRY007ii1nrPRxSCeihLAxANMB8', '老板信息通知', 'invalid template_id size hint: [Igp._0938ge20]', 1510663938),
(115, 2, 2, 2, '2', 'oSRY007ii1nrPRxSCeihLAxANMB8', '老板信息通知', 'invalid template_id size hint: [9GpN8a0939ge30]', 1510663938),
(116, 2, 2, 2, '2', 'oSRY0069zmR3bYgg6-YSEbdA-K1E', '老板信息通知', 'invalid template_id size hint: [qy1Wka0939ge25]', 1510663938),
(117, 2, 2, 2, '2', 'oSRY00yS5yHUwKxVARp8b_21YceE', '老板信息通知', 'invalid template_id size hint: [JlTLmA0942ge31]', 1510663942),
(118, 2, 2, 2, '2', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '老板信息通知', 'invalid template_id size hint: [vdqk50942ge25]', 1510663942),
(119, 2, 2, 2, '2', 'oSRY007ii1nrPRxSCeihLAxANMB8', '老板信息通知', 'invalid template_id size hint: [u63tOa0943ge25]', 1510663942),
(120, 2, 2, 2, '2', 'oSRY007ii1nrPRxSCeihLAxANMB8', '老板信息通知', 'invalid template_id size hint: [DSEPBA0943ge31]', 1510663942),
(121, 2, 2, 2, '2', 'oSRY0069zmR3bYgg6-YSEbdA-K1E', '老板信息通知', 'invalid template_id size hint: [1QFQtA0943ge21]', 1510663942),
(122, 2, 2, 2, '2', 'oSRY00yS5yHUwKxVARp8b_21YceE', '老板信息通知', 'invalid template_id size hint: [5nZ8Wa0968ge30]', 1510663968),
(123, 2, 2, 2, '2', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '老板信息通知', 'invalid template_id size hint: [opDmYa0968ge20]', 1510663968),
(124, 2, 2, 2, '2', 'oSRY007ii1nrPRxSCeihLAxANMB8', '老板信息通知', 'invalid template_id size hint: [99S2DA0968ge31]', 1510663968),
(125, 2, 2, 2, '2', 'oSRY007ii1nrPRxSCeihLAxANMB8', '老板信息通知', 'invalid template_id size hint: [olN8dA0969ge20]', 1510663968),
(126, 2, 2, 2, '2', 'oSRY0069zmR3bYgg6-YSEbdA-K1E', '老板信息通知', 'invalid template_id size hint: [Nh4xCA0969ge21]', 1510663968),
(127, 2, 2, 2, '2', 'oSRY00yS5yHUwKxVARp8b_21YceE', '老板信息通知', 'invalid template_id size hint: [ikWB30982ge29]', 1510663981),
(128, 2, 2, 2, '2', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '老板信息通知', 'invalid template_id size hint: [N_fLtA0982ge20]', 1510663981),
(129, 2, 2, 2, '2', 'oSRY007ii1nrPRxSCeihLAxANMB8', '老板信息通知', 'invalid template_id size hint: [4oOHwa0982ge20]', 1510663981),
(130, 2, 2, 2, '2', 'oSRY007ii1nrPRxSCeihLAxANMB8', '老板信息通知', 'invalid template_id size hint: [ZDOtna0983ge20]', 1510663981),
(131, 2, 2, 2, '2', 'oSRY0069zmR3bYgg6-YSEbdA-K1E', '老板信息通知', 'invalid template_id size hint: [IYi.qa0983ge20]', 1510663981),
(132, 6, 21, 388, '20171114529069845803', 'oSRY0002kWJeWI40pNCycPqBUO3E', '配送员订单通知', '发送成功', 1510709936),
(133, 6, 21, 388, '20171114529069845803', 'oSRY0002kWJeWI40pNCycPqBUO3E', '配送员订单通知', '发送成功', 1510709938),
(134, 6, 21, 388, '20171114529069845803', 'oSRY0002kWJeWI40pNCycPqBUO3E', '配送员订单通知', '发送成功', 1510710333),
(135, 6, 21, 388, '20171114529069845803', 'oSRY0002kWJeWI40pNCycPqBUO3E', '配送员订单通知', '发送成功', 1510710336),
(136, 6, 21, 393, '20171115149827094160', 'oSRY00yS5yHUwKxVARp8b_21YceE', '管理员订单通知', '发送成功', 1510715007),
(137, 6, 21, 393, '20171115149827094160', 'oSRY0069zmR3bYgg6-YSEbdA-K1E', '管理员订单通知', '发送成功', 1510715007),
(138, 6, 21, 393, '20171115149827094160', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1510715007),
(139, 6, 21, 393, '20171115149827094160', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1510715007),
(140, 6, 21, 393, '20171115149827094160', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '管理员订单通知', '发送成功', 1510715007),
(141, 6, 21, 393, '20171115149827094160', 'oSRY00yS5yHUwKxVARp8b_21YceE', '管理员订单通知', '发送成功', 1510715007),
(142, 6, 21, 393, '20171115149827094160', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1510715007),
(143, 6, 21, 393, '20171115149827094160', 'oSRY005X21OxPllfXAlfbcnlrF-A', '管理员订单通知', '发送成功', 1510715007),
(144, 6, 21, 393, '20171115149827094160', 'oSRY005X21OxPllfXAlfbcnlrF-A', '管理员订单通知', '发送成功', 1510715007),
(145, 6, 21, 388, '20171114529069845803', 'oSRY007ii1nrPRxSCeihLAxANMB8', '配送员订单通知', '发送成功', 1510728704),
(146, 6, 21, 388, '20171114529069845803', 'oSRY007ii1nrPRxSCeihLAxANMB8', '配送员订单通知', '发送成功', 1510728707),
(147, 6, 21, 388, '20171114529069845803', 'oSRY004apWoEmgGRX6tq94KeP8SE', '配送员订单通知', '发送成功', 1510728719),
(148, 6, 21, 388, '20171114529069845803', 'oSRY004apWoEmgGRX6tq94KeP8SE', '配送员订单通知', '发送成功', 1510728722),
(149, 6, 21, 388, '20171114529069845803', 'oSRY005X21OxPllfXAlfbcnlrF-A', '配送员订单通知', '发送成功', 1510728759),
(150, 6, 21, 388, '20171114529069845803', 'oSRY005X21OxPllfXAlfbcnlrF-A', '配送员订单通知', '发送成功', 1510728762),
(151, 6, 21, 388, '20171114529069845803', 'oSRY004apWoEmgGRX6tq94KeP8SE', '配送员订单通知', '发送成功', 1510728876),
(152, 6, 21, 386, '20171114459219237893', 'oSRY004apWoEmgGRX6tq94KeP8SE', '配送员订单通知', '发送成功', 1510728926),
(153, 6, 21, 388, '20171114529069845803', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '配送员订单通知', '发送成功', 1510729069),
(154, 6, 21, 386, '20171114459219237893', 'oSRY0002kWJeWI40pNCycPqBUO3E', '配送员订单通知', '发送成功', 1510729123),
(155, 6, 21, 388, '20171114529069845803', 'oSRY004apWoEmgGRX6tq94KeP8SE', '配送员订单通知', '发送成功', 1510729257),
(156, 6, 21, 394, '20171115352901522715', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1510735300),
(157, 6, 21, 394, '20171115352901522715', 'oSRY0069zmR3bYgg6-YSEbdA-K1E', '管理员订单通知', '发送成功', 1510735300),
(158, 6, 21, 394, '20171115352901522715', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1510735300),
(159, 6, 21, 394, '20171115352901522715', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1510735300),
(160, 6, 21, 394, '20171115352901522715', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '管理员订单通知', '发送成功', 1510735300),
(161, 6, 21, 394, '20171115352901522715', 'oSRY00yS5yHUwKxVARp8b_21YceE', '管理员订单通知', '发送成功', 1510735300),
(162, 6, 21, 394, '20171115352901522715', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1510735300),
(163, 6, 21, 395, '20171115354428131698', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1510735451),
(164, 6, 21, 395, '20171115354428131698', 'oSRY0069zmR3bYgg6-YSEbdA-K1E', '管理员订单通知', '发送成功', 1510735451),
(165, 6, 21, 395, '20171115354428131698', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1510735451),
(166, 6, 21, 395, '20171115354428131698', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1510735451),
(167, 6, 21, 395, '20171115354428131698', 'oSRY00yS5yHUwKxVARp8b_21YceE', '管理员订单通知', '发送成功', 1510735451),
(168, 6, 21, 395, '20171115354428131698', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1510735451),
(169, 6, 21, 402, '20171120459090110094', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1511145927),
(170, 6, 21, 402, '20171120459090110094', 'oSRY0069zmR3bYgg6-YSEbdA-K1E', '管理员订单通知', '发送成功', 1511145927),
(171, 6, 21, 402, '20171120459090110094', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1511145927),
(172, 6, 21, 402, '20171120459090110094', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1511145927),
(173, 6, 21, 402, '20171120459090110094', 'oSRY00yS5yHUwKxVARp8b_21YceE', '管理员订单通知', '发送成功', 1511145927),
(174, 6, 21, 402, '20171120459090110094', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1511145927),
(175, 6, 21, 402, '20171120459090110094', 'oSRY004apWoEmgGRX6tq94KeP8SE', '配送员订单通知', '发送成功', 1511145927),
(176, 6, 21, 402, '20171120459090110094', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '配送员订单通知', '发送成功', 1511145927),
(177, 6, 21, 402, '20171120459090110094', 'oSRY0002kWJeWI40pNCycPqBUO3E', '配送员订单通知', '发送成功', 1511145927),
(178, 6, 21, 402, '20171120459090110094', 'oSRY007ii1nrPRxSCeihLAxANMB8', '配送员订单通知', '发送成功', 1511145927),
(179, 6, 21, 402, '20171120459090110094', 'oSRY004apWoEmgGRX6tq94KeP8SE', '配送员订单通知', '发送成功', 1511145927),
(180, 6, 21, 402, '20171120459090110094', 'oSRY00yS5yHUwKxVARp8b_21YceE', '配送员订单通知', '发送成功', 1511145927),
(181, 6, 21, 402, '20171120459090110094', 'oSRY004apWoEmgGRX6tq94KeP8SE', '配送员订单通知', '发送成功', 1511146045),
(182, 6, 21, 402, '20171120459090110094', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '配送员订单通知', '发送成功', 1511146045),
(183, 6, 21, 402, '20171120459090110094', 'oSRY0002kWJeWI40pNCycPqBUO3E', '配送员订单通知', '发送成功', 1511146045),
(184, 6, 21, 402, '20171120459090110094', 'oSRY007ii1nrPRxSCeihLAxANMB8', '配送员订单通知', '发送成功', 1511146045),
(185, 6, 21, 402, '20171120459090110094', 'oSRY004apWoEmgGRX6tq94KeP8SE', '配送员订单通知', '发送成功', 1511146045),
(186, 6, 21, 402, '20171120459090110094', 'oSRY00yS5yHUwKxVARp8b_21YceE', '配送员订单通知', '发送成功', 1511146045),
(187, 6, 21, 402, '20171120459090110094', 'oSRY0002kWJeWI40pNCycPqBUO3E', '配送员订单通知', '发送成功', 1511146053),
(188, 6, 21, 400, '20171118717297456491', 'oSRY004apWoEmgGRX6tq94KeP8SE', '配送员订单通知', '发送成功', 1511146069),
(189, 6, 21, 400, '20171118717297456491', 'oSRY004apWoEmgGRX6tq94KeP8SE', '配送员订单通知', '发送成功', 1511146072),
(190, 6, 21, 404, '20171120467521330077', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1511146761),
(191, 6, 21, 404, '20171120467521330077', 'oSRY0069zmR3bYgg6-YSEbdA-K1E', '管理员订单通知', '发送成功', 1511146761),
(192, 6, 21, 404, '20171120467521330077', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1511146761),
(193, 6, 21, 404, '20171120467521330077', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1511146761),
(194, 6, 21, 404, '20171120467521330077', 'oSRY00yS5yHUwKxVARp8b_21YceE', '管理员订单通知', '发送成功', 1511146761),
(195, 6, 21, 404, '20171120467521330077', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1511146761),
(196, 6, 21, 404, '20171120467521330077', 'oSRY004apWoEmgGRX6tq94KeP8SE', '配送员订单通知', '发送成功', 1511146761),
(197, 6, 21, 404, '20171120467521330077', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '配送员订单通知', '发送成功', 1511146761),
(198, 6, 21, 404, '20171120467521330077', 'oSRY0002kWJeWI40pNCycPqBUO3E', '配送员订单通知', '发送成功', 1511146761),
(199, 6, 21, 404, '20171120467521330077', 'oSRY007ii1nrPRxSCeihLAxANMB8', '配送员订单通知', '发送成功', 1511146761),
(200, 6, 21, 404, '20171120467521330077', 'oSRY004apWoEmgGRX6tq94KeP8SE', '配送员订单通知', '发送成功', 1511146761),
(201, 6, 21, 404, '20171120467521330077', 'oSRY00yS5yHUwKxVARp8b_21YceE', '配送员订单通知', '发送成功', 1511146761),
(202, 6, 21, 404, '20171120467521330077', 'oSRY005X21OxPllfXAlfbcnlrF-A', '配送员订单通知', '发送成功', 1511146761),
(203, 6, 21, 404, '20171120467521330077', 'oSRY004apWoEmgGRX6tq94KeP8SE', '配送员订单通知', '发送成功', 1511146801),
(204, 6, 21, 404, '20171120467521330077', 'oSRY005yh2cXkbIoumh2yvD4rc3Y', '配送员订单通知', '发送成功', 1511146801),
(205, 6, 21, 404, '20171120467521330077', 'oSRY0002kWJeWI40pNCycPqBUO3E', '配送员订单通知', '发送成功', 1511146801),
(206, 6, 21, 404, '20171120467521330077', 'oSRY007ii1nrPRxSCeihLAxANMB8', '配送员订单通知', '发送成功', 1511146801),
(207, 6, 21, 404, '20171120467521330077', 'oSRY004apWoEmgGRX6tq94KeP8SE', '配送员订单通知', '发送成功', 1511146801),
(208, 6, 21, 404, '20171120467521330077', 'oSRY00yS5yHUwKxVARp8b_21YceE', '配送员订单通知', '发送成功', 1511146801),
(209, 6, 21, 404, '20171120467521330077', 'oSRY005X21OxPllfXAlfbcnlrF-A', '配送员订单通知', '发送成功', 1511146801),
(210, 6, 21, 404, '20171120467521330077', 'oSRY004apWoEmgGRX6tq94KeP8SE', '配送员订单通知', '发送成功', 1511146811),
(211, 6, 21, 404, '20171120467521330077', 'oSRY004apWoEmgGRX6tq94KeP8SE', '配送员订单通知', '发送成功', 1511146813),
(212, 6, 21, 407, '20171120493973863645', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1511149553),
(213, 6, 21, 407, '20171120493973863645', 'oSRY0069zmR3bYgg6-YSEbdA-K1E', '管理员订单通知', '发送成功', 1511149553),
(214, 6, 21, 407, '20171120493973863645', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1511149553),
(215, 6, 21, 407, '20171120493973863645', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1511149553),
(216, 6, 21, 407, '20171120493973863645', 'oSRY00yS5yHUwKxVARp8b_21YceE', '管理员订单通知', '发送成功', 1511149553),
(217, 6, 21, 407, '20171120493973863645', 'oSRY007ii1nrPRxSCeihLAxANMB8', '管理员订单通知', '发送成功', 1511149553),
(218, 6, 21, 407, '20171120493973863645', 'oSRY005X21OxPllfXAlfbcnlrF-A', '管理员订单通知', '发送成功', 1511149553),
(219, 2, 2, 2, '2', 'oSRY00yS5yHUwKxVARp8b_21YceE', '老板信息通知', 'invalid template_id size hint: [9ypD8a0891ge20]', 1511151891),
(220, 2, 2, 2, '2', 'oSRY007ii1nrPRxSCeihLAxANMB8', '老板信息通知', 'invalid template_id size hint: [Ul57PA0892ge25]', 1511151891),
(221, 2, 2, 2, '2', 'oSRY007ii1nrPRxSCeihLAxANMB8', '老板信息通知', 'invalid template_id size hint: [fnbKOa0892ge29]', 1511151891),
(222, 2, 2, 2, '2', 'oSRY0069zmR3bYgg6-YSEbdA-K1E', '老板信息通知', 'invalid template_id size hint: [qIZaGA0892ge25]', 1511151891);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_type`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '类型名称',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '链接',
  `thumb` varchar(500) NOT NULL DEFAULT '' COMMENT '图片',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weisrc_dish_useraddress`
--

CREATE TABLE IF NOT EXISTS `ims_weisrc_dish_useraddress` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL DEFAULT '',
  `realname` varchar(20) NOT NULL DEFAULT '',
  `mobile` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(300) NOT NULL DEFAULT '',
  `doorplate` varchar(300) NOT NULL DEFAULT '',
  `gender` tinyint(1) NOT NULL DEFAULT '1',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `lat` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '经度',
  `lng` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '纬度',
  `dateline` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `ims_weisrc_dish_useraddress`
--

INSERT INTO `ims_weisrc_dish_useraddress` (`id`, `weid`, `from_user`, `realname`, `mobile`, `address`, `doorplate`, `gender`, `isdefault`, `lat`, `lng`, `dateline`) VALUES
(8, 5, 'oEZ6bw0iZLyvZrHcCUJJO6HYxIy4', '陈成果', '13696929856', '厦门市思明区大学路世贸海峡大厦', '4501', 1, 1, '24.4870230636', '118.1292930408', 1508992922),
(9, 6, 'oSRY007ii1nrPRxSCeihLAxANMB8', '陈成果', '13696929853', '厦门市思明区文屏路174-1号', '101', 1, 1, '24.4656310181', '118.1171600948', 1509121818),
(10, 6, 'oSRY0002kWJeWI40pNCycPqBUO3E', '袁', '13886737567', '厦门市思明区大学路162号', '4501', 1, 1, '24.4430959626', '118.0949080482', 1509702628),
(11, 5, 'oEZ6bw5z3cuoT91YLtOntd9NRCvw', '黄杰', '13866668888', '厦门市湖里区南山路288号', '南山路', 1, 1, '24.5099040000', '118.1232690000', 1509951592),
(12, 6, 'oSRY0009p7BYSw0LnJpUxWbD2924', '郑云彪', '15080151627', '厦门市思明区演武大桥', '4501', 1, 1, '24.4437570000', '118.0928070000', 1510108348),
(13, 6, 'oSRY00yS5yHUwKxVARp8b_21YceE', '王庭协', '13163906015', '厦门市思明区观日路20号4楼', '猿人行星', 1, 1, '24.4933512688', '118.1864661265', 1510108635),
(14, 6, 'oSRY005X21OxPllfXAlfbcnlrF-A', '前期', '18050086692', '厦门市思明区观日路50号', '111', 1, 1, '24.4904805615', '118.1882565180', 1510109374);

-- --------------------------------------------------------

--
-- 表的结构 `ims_wxapp_general_analysis`
--

CREATE TABLE IF NOT EXISTS `ims_wxapp_general_analysis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `session_cnt` int(10) NOT NULL,
  `visit_pv` int(10) NOT NULL,
  `visit_uv` int(10) NOT NULL,
  `visit_uv_new` int(10) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `stay_time_uv` varchar(10) NOT NULL,
  `stay_time_session` varchar(10) NOT NULL,
  `visit_depth` varchar(10) NOT NULL,
  `ref_date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `ref_date` (`ref_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wxapp_versions`
--

CREATE TABLE IF NOT EXISTS `ims_wxapp_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `version` varchar(10) NOT NULL,
  `modules` varchar(1000) NOT NULL,
  `design_method` tinyint(1) NOT NULL,
  `template` int(10) NOT NULL,
  `redirect` varchar(300) NOT NULL,
  `quickmenu` varchar(2500) NOT NULL,
  `createtime` int(10) NOT NULL,
  `connection` varchar(1000) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `version` (`version`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wxauth_app`
--

CREATE TABLE IF NOT EXISTS `ims_wxauth_app` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `m_id` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_delete` tinyint(1) unsigned NOT NULL,
  `create_time` int(10) unsigned NOT NULL,
  `token` char(32) NOT NULL,
  `encodingaeskey` char(43) NOT NULL,
  `url` varchar(200) NOT NULL,
  `sort` int(11) unsigned NOT NULL DEFAULT '50',
  `desc` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wxauth_list`
--

CREATE TABLE IF NOT EXISTS `ims_wxauth_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `w_id` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `appid` char(18) NOT NULL,
  `appsecret` char(32) NOT NULL,
  `token` char(32) NOT NULL,
  `encodingaeskey` char(43) NOT NULL,
  `is_yz` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL,
  `desc` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wxauth_log`
--

CREATE TABLE IF NOT EXISTS `ims_wxauth_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(10) unsigned NOT NULL,
  `a_id` int(10) unsigned NOT NULL,
  `from_data` varchar(10000) NOT NULL,
  `send_data` varchar(10000) NOT NULL,
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wxcard_reply`
--

CREATE TABLE IF NOT EXISTS `ims_wxcard_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `success` varchar(255) NOT NULL,
  `error` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_yundabao`
--

CREATE TABLE IF NOT EXISTS `tp_yundabao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` varchar(100) NOT NULL,
  `AppId` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `AppName` varchar(100) DEFAULT NULL,
  `AppNote` text,
  `HideTop` int(11) DEFAULT NULL,
  `IconType` int(11) DEFAULT NULL,
  `IconName` varchar(200) DEFAULT NULL,
  `IconName_url` varchar(200) DEFAULT NULL,
  `LogoName` varchar(100) DEFAULT NULL,
  `LogoName_url` varchar(200) DEFAULT NULL,
  `BgColor` int(11) DEFAULT NULL,
  `SplashType` int(11) DEFAULT NULL,
  `SplashName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_yundabao_users`
--

CREATE TABLE IF NOT EXISTS `tp_yundabao_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `endtime` int(11) NOT NULL,
  `AccessToken` varchar(200) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
