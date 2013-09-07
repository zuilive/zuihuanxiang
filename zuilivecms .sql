-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 09 月 07 日 03:40
-- 服务器版本: 5.5.24-log
-- PHP 版本: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `zuilivecms`
--

-- --------------------------------------------------------

--
-- 表的结构 `zui_access`
--

CREATE TABLE IF NOT EXISTS `zui_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  `pid` int(11) NOT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zui_access`
--

INSERT INTO `zui_access` (`role_id`, `node_id`, `level`, `module`, `pid`) VALUES
(1, 61, 3, NULL, 60),
(1, 60, 2, NULL, 1),
(1, 59, 3, NULL, 58),
(1, 58, 2, NULL, 1),
(1, 57, 3, NULL, 53),
(1, 56, 3, NULL, 53),
(1, 55, 3, NULL, 53),
(1, 54, 3, NULL, 53),
(1, 53, 2, NULL, 1),
(1, 52, 3, NULL, 48),
(1, 51, 3, NULL, 48),
(1, 50, 3, NULL, 48),
(1, 49, 3, NULL, 48),
(1, 48, 2, NULL, 1),
(1, 45, 3, NULL, 41),
(1, 44, 3, NULL, 41),
(1, 43, 3, NULL, 41),
(1, 42, 3, NULL, 41),
(1, 41, 2, NULL, 1),
(1, 40, 3, NULL, 36),
(1, 39, 3, NULL, 36),
(1, 38, 3, NULL, 36),
(1, 37, 3, NULL, 36),
(1, 36, 2, NULL, 1),
(1, 46, 3, NULL, 31),
(1, 35, 3, NULL, 31),
(1, 34, 3, NULL, 31),
(1, 33, 3, NULL, 31),
(1, 32, 3, NULL, 31),
(1, 31, 2, NULL, 1),
(1, 30, 3, NULL, 21),
(1, 29, 3, NULL, 21),
(1, 28, 3, NULL, 21),
(1, 27, 3, NULL, 21),
(1, 26, 3, NULL, 21),
(1, 25, 3, NULL, 21),
(1, 24, 3, NULL, 21),
(1, 23, 3, NULL, 21),
(1, 22, 3, NULL, 21),
(1, 21, 2, NULL, 1),
(1, 20, 3, NULL, 19),
(1, 19, 2, NULL, 1),
(1, 18, 3, NULL, 14),
(1, 17, 3, NULL, 14),
(1, 16, 3, NULL, 14),
(1, 15, 3, NULL, 14),
(1, 14, 2, NULL, 1),
(1, 13, 3, NULL, 4),
(1, 12, 3, NULL, 4),
(1, 11, 3, NULL, 4),
(1, 10, 3, NULL, 4),
(1, 9, 3, NULL, 4),
(1, 8, 3, NULL, 4),
(1, 7, 3, NULL, 4),
(1, 6, 3, NULL, 4),
(1, 5, 3, NULL, 4),
(1, 4, 2, NULL, 1),
(1, 47, 3, NULL, 2),
(1, 3, 3, NULL, 2),
(1, 2, 2, NULL, 1),
(1, 1, 1, NULL, 0),
(2, 61, 3, NULL, 60),
(2, 60, 2, NULL, 1),
(2, 59, 3, NULL, 58),
(2, 58, 2, NULL, 1),
(2, 57, 3, NULL, 53),
(2, 56, 3, NULL, 53),
(2, 55, 3, NULL, 53),
(2, 54, 3, NULL, 53),
(2, 53, 2, NULL, 1),
(2, 52, 3, NULL, 48),
(2, 51, 3, NULL, 48),
(2, 50, 3, NULL, 48),
(2, 49, 3, NULL, 48),
(2, 48, 2, NULL, 1),
(2, 45, 3, NULL, 41),
(2, 44, 3, NULL, 41),
(2, 43, 3, NULL, 41),
(2, 42, 3, NULL, 41),
(2, 41, 2, NULL, 1),
(2, 40, 3, NULL, 36),
(2, 39, 3, NULL, 36),
(2, 38, 3, NULL, 36),
(2, 37, 3, NULL, 36),
(2, 36, 2, NULL, 1),
(2, 46, 3, NULL, 31),
(2, 35, 3, NULL, 31),
(2, 34, 3, NULL, 31),
(2, 33, 3, NULL, 31),
(2, 32, 3, NULL, 31),
(2, 31, 2, NULL, 1),
(2, 30, 3, NULL, 21),
(2, 29, 3, NULL, 21),
(2, 27, 3, NULL, 21),
(2, 26, 3, NULL, 21),
(2, 24, 3, NULL, 21),
(2, 21, 2, NULL, 1),
(2, 20, 3, NULL, 19),
(2, 19, 2, NULL, 1),
(2, 13, 3, NULL, 4),
(2, 12, 3, NULL, 4),
(2, 11, 3, NULL, 4),
(2, 10, 3, NULL, 4),
(2, 9, 3, NULL, 4),
(2, 4, 2, NULL, 1),
(2, 47, 3, NULL, 2),
(2, 3, 3, NULL, 2),
(2, 2, 2, NULL, 1),
(2, 1, 1, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `zui_article`
--

CREATE TABLE IF NOT EXISTS `zui_article` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `cateid` smallint(5) NOT NULL DEFAULT '0' COMMENT '分类id',
  `title` varchar(160) NOT NULL COMMENT '文章标题',
  `thumb` varchar(100) NOT NULL COMMENT '缩略图',
  `keywords` varchar(60) NOT NULL COMMENT 'seo关键字',
  `description` mediumtext NOT NULL COMMENT 'seo描述',
  `url` char(100) NOT NULL COMMENT '链接',
  `listorder` tinyint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `inputtime` int(10) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updatetime` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `content` mediumtext NOT NULL COMMENT '文章内容',
  `type` varchar(20) NOT NULL COMMENT '类型（文章还是页面）',
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '点击数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='文章表'  ;

----------------------------------------------

--
-- 表的结构 `zui_category`
--

CREATE TABLE IF NOT EXISTS `zui_category` (
  `cid` int(10) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(20) NOT NULL COMMENT '分类名称',
  `seotitle` varchar(40) NOT NULL COMMENT 'seo标题',
  `keywords` varchar(160) NOT NULL COMMENT 'seo关键字',
  `description` longtext NOT NULL COMMENT 'seo描述',
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '父类id',
  `status` int(11) NOT NULL COMMENT '状态',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `path` varchar(40) NOT NULL DEFAULT '0' COMMENT '分类路径',
  `url` varchar(100) NOT NULL COMMENT 'URL名称',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='分类表' ;


-- --------------------------------------------------------

--
-- 表的结构 `zui_config`
--

CREATE TABLE IF NOT EXISTS `zui_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `varname` varchar(20) NOT NULL COMMENT '设置项的拼音',
  `info` varchar(100) NOT NULL COMMENT '设置项的中文名称',
  `value` text NOT NULL COMMENT '设置项的值',
  `groupid` tinyint(4) NOT NULL COMMENT '分组',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='设置表' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `zui_config`
--

INSERT INTO `zui_config` (`id`, `varname`, `info`, `value`, `groupid`) VALUES
(1, 'sitename', '网站名称', 'Zuilive', 1),
(2, 'siteurl', '网站地址', 'http://www.zuilive.org', 1),
(3, 'siteemail', '站点邮箱', 'zuihuanxiang@gmail.com', 1),
(4, 'siteinfo', '网站介绍', '一个程序猿的博客，用来分享网络知识，记录生活。', 1),
(5, 'sitekeywords', '网站关键字', '', 1),
(6, 'siteseotitle', '网站SEO标题', 'Zuilive | 分享网络甘泉！', 1),
(7, 'icp', '备案号', '', 1),
(8, 'statistical', '站点统计代码', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `zui_links`
--

CREATE TABLE IF NOT EXISTS `zui_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '链接名',
  `url` varchar(300) NOT NULL COMMENT '链接地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='友情链接表' ;


-- --------------------------------------------------------

--
-- 表的结构 `zui_member`
--

CREATE TABLE IF NOT EXISTS `zui_member` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` char(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `encrypt` char(6) NOT NULL COMMENT '随机码',
  `checked` tinyint(1) NOT NULL COMMENT '是否审核',
  `nickname` char(20) NOT NULL COMMENT '昵称',
  `userpic` varchar(200) NOT NULL COMMENT '会员头像',
  `regdate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `lastdate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `regip` char(15) NOT NULL DEFAULT '' COMMENT '注册ip',
  `lastip` char(15) NOT NULL DEFAULT '' COMMENT '上次登录ip',
  `loginnum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '登陆次数',
  `email` char(32) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  `areaid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '地区id',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '钱金总额',
  `point` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型id',
  `message` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有短消息',
  `islock` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否锁定',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`(20))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='会员表' ;

-- --------------------------------------------------------

--
-- 表的结构 `zui_member_group`
--

CREATE TABLE IF NOT EXISTS `zui_member_group` (
  `groupid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员组id',
  `name` char(15) NOT NULL COMMENT '用户组名称',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否是系统组',
  `starnum` tinyint(2) unsigned NOT NULL COMMENT '会员组星星数',
  `point` smallint(6) unsigned NOT NULL COMMENT '积分范围',
  `allowmessage` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '许允发短消息数量',
  `allowvisit` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许访问',
  `allowpost` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许发稿',
  `allowpostverify` tinyint(1) unsigned NOT NULL COMMENT '是否投稿不需审核',
  `allowsearch` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许搜索',
  `allowupgrade` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否允许自主升级',
  `allowsendmessage` tinyint(1) unsigned NOT NULL COMMENT '允许发送短消息',
  `allowpostnum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '每天允许发文章数',
  `allowattachment` tinyint(1) NOT NULL COMMENT '是否允许上传附件',
  `icon` char(255) NOT NULL COMMENT '用户组图标',
  `usernamecolor` char(7) NOT NULL COMMENT '用户名颜色',
  `description` char(100) NOT NULL COMMENT '描述',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '序排',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `expand` mediumtext NOT NULL COMMENT '扩展',
  PRIMARY KEY (`groupid`),
  KEY `disabled` (`disabled`),
  KEY `listorder` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员组' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `zui_menu`
--

CREATE TABLE IF NOT EXISTS `zui_menu` (
  `id` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `model` varchar(100) NOT NULL COMMENT '模型',
  `action` varchar(100) NOT NULL COMMENT '动作',
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `remark` varchar(150) NOT NULL COMMENT '备注',
  `ico` varchar(100) NOT NULL COMMENT '图标',
  `listorder` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

--
-- 转存表中的数据 `zui_menu`
--

INSERT INTO `zui_menu` (`id`, `parentid`, `model`, `action`, `type`, `status`, `name`, `remark`, `ico`, `listorder`) VALUES
(1, 0, '', '', 1, 0, '控制台', '控制台', '', 0),
(2, 1, 'Index', 'index', 2, 0, '首页', '控制台首页', 'icon-home', 0),
(5, 0, '', '', 1, 1, '文章', '大文章标题', 'icon-book', 0),
(6, 5, 'Article', 'index', 2, 1, '所有文章', '所有文章', 'icon-book', 0),
(8, 5, 'Article', 'add', 2, 0, '写文章', '写文章', 'icon-pencil', 0),
(15, 0, 'Tags', 'index', 1, 0, '标签', '标签', 'icon-tags', 0),
(20, 0, '', '', 1, 0, '分类', '分类', 'icon-th-list', 0),
(21, 5, 'Category', 'index', 2, 1, '栏目分类', '栏目分类', 'icon-envelope', 0),
(22, 20, 'Category', 'add', 2, 0, '添加分类', '添加分类', 'icon-glass', 0),
(30, 0, '', '', 1, 1, '页面', '页面', 'icon-file', 0),
(31, 30, 'Page', 'index', 2, 1, '所有页面', '所有页面', 'icon-th-large', 0),
(32, 30, 'Page', 'verifylist', 2, 1, '审核页面', '审核页面', 'icon-th-list', 0),
(40, 0, '', '', 1, 1, '管理员', '管理员', 'icon-user', 0),
(41, 40, 'User', 'index', 2, 1, '后台用户', '后台用户', 'icon-user', 0),
(42, 40, 'Role', 'index', 2, 1, '后台角色', '后台角色', 'icon-map-marker', 0),
(70, 0, '', '', 1, 1, '设置', '设置', 'icon-wrench', 0),
(71, 70, 'Config', 'index', 2, 1, '站点设置', '站点设置', 'icon-cog', 0),
(72, 70, 'Links', 'index', 2, 1, '友情链接', '友情链接', 'icon-magnet', 0),
(74, 70, 'Db', 'index', 2, 1, '数据库', '数据库', 'icon-fire', 0),
(50, 0, '', '', 1, 1, '会员', '会员', 'icon-tint', 0),
(51, 50, 'Member', 'index', 2, 1, '会员管理', '会员管理', 'icon-tint', 0),
(55, 50, 'Membergroup', 'index', 2, 1, '会员组管理', '会员组管理', 'icon-eye-open', 0),
(16, 5, 'Tags', 'index', 2, 1, '标签列表', '标签列表', '', 0),
(17, 15, 'Tags', 'add', 2, 0, '添加标签', '添加标签', '', 0),
(7, 5, 'Article', 'verifylist', 2, 1, '审核文章', '审核文章', '', 0),
(9, 5, 'Article', 'recyclelist', 2, 1, '回收站', '回收站', '', 0),
(60, 0, '', '', 1, 1, '外观', '外观', 'icon-eye-open', 0),
(61, 60, 'Nav', 'index', 2, 1, '前台导航', '前台导航', '', 0),
(33, 30, 'Page', 'recyclelist', 2, 1, '回收站', '回收站', '', 0),
(75, 70, 'Sitemap', 'index', 2, 1, '网站地图', '网站地图', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `zui_nav`
--

CREATE TABLE IF NOT EXISTS `zui_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) NOT NULL COMMENT '导航名',
  `url` varchar(300) NOT NULL COMMENT '链接',
  `group` varchar(60) NOT NULL COMMENT '分组',
  `pid` int(11) NOT NULL COMMENT '父id',
  `display` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='前台导航' ;


-- --------------------------------------------------------

--
-- 表的结构 `zui_node`
--

CREATE TABLE IF NOT EXISTS `zui_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- 转存表中的数据 `zui_node`
--

INSERT INTO `zui_node` (`id`, `name`, `title`, `status`, `remark`, `sort`, `pid`, `level`) VALUES
(1, 'Admin', '后台模块', 1, '', 0, 0, 1),
(2, 'Index', '控制台控制器', 1, '', 0, 1, 2),
(3, 'index', '控制器首页动作', 1, '', 0, 2, 3),
(4, 'Article', '文章控制器', 1, '', 0, 1, 2),
(5, 'index', '文章管理动作', 1, '', 0, 4, 3),
(6, 'verifylist', '审核文章列表动作', 1, '', 0, 4, 3),
(7, 'recyclelist', '回收站文章列表动作', 1, '', 0, 4, 3),
(8, 'add', '文章添加动作', 1, '', 0, 4, 3),
(9, 'edit', '文章编辑动作', 1, '', 0, 4, 3),
(10, 'recycle', '文章放入回收站动作', 1, '', 0, 4, 3),
(11, 'recovery', '文章还原操作', 1, '', 0, 4, 3),
(12, 'del', '文章彻底删除动作', 1, '', 0, 4, 3),
(13, 'verify', '文章审核动作', 1, '', 0, 4, 3),
(14, 'Category', '分类控制器', 1, '', 0, 1, 2),
(15, 'index', '分类管理动作', 1, '', 0, 14, 3),
(16, 'add', '分类添加动作', 1, '', 0, 14, 3),
(17, 'edit', '分类编辑动作', 1, '', 0, 14, 3),
(18, 'del', '分类删除动作', 1, '', 0, 14, 3),
(19, 'Config', '设置控制器', 1, '', 0, 1, 2),
(20, 'index', '站点设置', 1, '', 0, 19, 3),
(21, 'Page', '页面控制器', 1, '', 0, 1, 2),
(22, 'index', '文章管理动作', 1, '', 0, 21, 3),
(23, 'verifylist', '审核文章列表', 1, '', 0, 21, 3),
(24, 'recyclelist', '回收站文章列表', 1, '', 0, 21, 3),
(25, 'add', '页面添加动作', 1, '', 0, 21, 3),
(26, 'edit', '页面编辑动作', 1, '', 0, 21, 3),
(27, 'recycle', '页面放入回收站动作', 1, '', 0, 21, 3),
(28, 'recovery', '页面还原动作', 1, '', 0, 21, 3),
(29, 'del', '页面彻底删除动作', 1, '', 0, 21, 3),
(30, 'verify', '页面审核动作', 1, '', 0, 21, 3),
(31, 'Role', '后台角色控制器', 1, '', 0, 1, 2),
(32, 'add', '增加角色动作', 1, '', 0, 31, 3),
(33, 'index', '角色显示动作', 1, '', 0, 31, 3),
(34, 'edit', '编辑角色动作', 1, '', 0, 31, 3),
(35, 'delete', '删除角色动作', 1, '', 0, 31, 3),
(36, 'Tags', '标签控制器', 1, '', 0, 1, 2),
(37, 'index', '标签列表显示动作', 1, '', 0, 36, 3),
(38, 'add', '添加标签动作', 1, '', 0, 36, 3),
(39, 'edit', '编辑标签动作', 1, '', 0, 36, 3),
(40, 'del', '删除标签动作', 1, '', 0, 36, 3),
(41, 'User', '后台用户控制器', 1, '', 0, 1, 2),
(42, 'index', '管理员列表显示动作', 1, '', 0, 41, 3),
(43, 'add', '添加管理员动作', 1, '', 0, 41, 3),
(44, 'edit', '编辑管理员动作', 1, '', 0, 41, 3),
(45, 'delete', '删除管理员动作', 1, '', 0, 41, 3),
(46, 'shouquan', '角色授权动作', 1, '', 0, 31, 3),
(47, 'delcache', '删除缓存', 1, '', 0, 2, 3),
(48, 'Links', '友情链接控制器', 1, '', 0, 1, 2),
(49, 'index', '友情链接列表动作', 1, '', 0, 48, 3),
(50, 'add', '友情链接添加动作', 1, '', 0, 48, 3),
(51, 'edit', '友情链接编辑动作', 1, '', 0, 48, 3),
(52, 'del', '友情链接删除动作', 1, '', 0, 48, 3),
(53, 'Nav', '导航控制器', 1, '', 0, 1, 2),
(54, 'index', '导航显示动作', 1, '', 0, 53, 3),
(55, 'edit', '导航编辑动作', 1, '', 0, 53, 3),
(56, 'del', '导航删除动作', 1, '', 0, 53, 3),
(57, 'add', '导航添加动作', 1, '', 0, 53, 3),
(58, 'Member', '会员控制器', 1, '', NULL, 1, 2),
(59, 'index', '会员显示动作', 1, '', NULL, 58, 3),
(60, 'Membergroup', '会员组控制器', 1, '', NULL, 1, 2),
(61, 'index', '会员组显示动作', 1, '', NULL, 60, 3),
(62, 'Sitemap', '网站地图控制器', 1, '', NULL, 1, 2),
(63, 'index', '网站地图首页', 1, '', NULL, 62, 3),
(64, 'start', '网站地图生成动作', 1, '', NULL, 62, 3);

-- --------------------------------------------------------

--
-- 表的结构 `zui_role`
--

CREATE TABLE IF NOT EXISTS `zui_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8  ;

--
-- 转存表中的数据 `zui_role`
--

INSERT INTO `zui_role` (`id`, `name`, `pid`, `status`, `remark`) VALUES
(1, '超级管理员', NULL, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `zui_role_user`
--

CREATE TABLE IF NOT EXISTS `zui_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- 表的结构 `zui_tags`
--

CREATE TABLE IF NOT EXISTS `zui_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL COMMENT '标签名',
  `urlname` varchar(100) NOT NULL COMMENT 'url显示名称',
  `keywords` varchar(100) NOT NULL COMMENT '关键字',
  `description` text NOT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='标签表';


-- --------------------------------------------------------

--
-- 表的结构 `zui_tags_relationships`
--

CREATE TABLE IF NOT EXISTS `zui_tags_relationships` (
  `tagid` int(11) NOT NULL COMMENT '标签id',
  `postid` int(11) NOT NULL COMMENT '文章或产品id',
  `type` varchar(100) NOT NULL COMMENT '类型',
  KEY `tagid` (`tagid`),
  KEY `postid` (`postid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签-文章关系表';


-- --------------------------------------------------------

--
-- 表的结构 `zui_user`
--

CREATE TABLE IF NOT EXISTS `zui_user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL COMMENT '用户名',
  `nickname` varchar(50) NOT NULL COMMENT '昵称/姓名',
  `password` char(32) NOT NULL COMMENT '密码',
  `last_login_time` int(11) unsigned DEFAULT '0' COMMENT '上次登录时间',
  `last_login_ip` varchar(40) DEFAULT NULL COMMENT '上次登录IP',
  `verify` varchar(32) DEFAULT NULL COMMENT '证验码',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `role_id` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '对应角色ID',
  `info` text NOT NULL COMMENT '信息',
  `login_count` int(11) NOT NULL DEFAULT '0' COMMENT '登陆次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='后台用户表' ;

--
-- 转存表中的数据 `zui_user`
--

INSERT INTO `zui_user` (`id`, `username`, `nickname`, `password`, `last_login_time`, `last_login_ip`, `verify`, `email`, `remark`, `create_time`, `update_time`, `status`, `role_id`, `info`, `login_count`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1378383707, '127.0.0.1', NULL, 'zuihuanxiang@gmail.com', '', 0, 1378212606, 1, 2, '', 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
