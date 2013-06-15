#================================================================================
# Contao-Website   : Contao Open Source CMS
# Contao-Database  : rona_db
# Saved by User    : Konro1 (Юрій Мирош)
# Time stamp       : 2013-06-15 at 20:55:59
#
# Contao Extension : BackupDB, Version 3.0.0
# Copyright        : Softleister (www.softleister.de)
# Author           : Hagen Klemp
# Licence          : LGPL
#
# Visit Contao project page http://www.contao.org for more information
#
#-----------------------------------------------------
# Contao Version 3.0.6
# The following modules must be installed:
#-----------------------------------------------------
#   - dlh_googlemaps              : Version 1.1.4 stable, Build 3
#   - my_calculator
#   - my_fotogallery
#
#================================================================================

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

#---------------------------------------------------------
# Table structure for table 'tl_article'
#---------------------------------------------------------
CREATE TABLE `tl_article` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `alias` varbinary(128) NOT NULL default '',
  `author` int(10) unsigned NOT NULL default '0',
  `inColumn` varchar(32) NOT NULL default '',
  `keywords` text NULL,
  `showTeaser` char(1) NOT NULL default '',
  `teaserCssID` varchar(255) NOT NULL default '',
  `teaser` text NULL,
  `printable` varchar(255) NOT NULL default '',
  `cssID` varchar(255) NOT NULL default '',
  `space` varchar(64) NOT NULL default '',
  `published` char(1) NOT NULL default '',
  `start` varchar(10) NOT NULL default '',
  `stop` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;


#
# Dumping data for table 'tl_article'
#

INSERT INTO `tl_article` VALUES ( 1, 2, 128, 1368973318, 'Головна', 'main', 1, 'main', NULL, '', '', NULL, '', '', '', '1', '', '' );
INSERT INTO `tl_article` VALUES ( 2, 4, 128, 1368976109, 'Контакти', 'contacts', 1, 'main', NULL, '', '', NULL, '', '', '', '1', '', '' );
INSERT INTO `tl_article` VALUES ( 3, 5, 128, 1368983482, 'Про друк', 'about-print', 1, 'main', NULL, '', '', NULL, '', '', '', '1', '', '' );
INSERT INTO `tl_article` VALUES ( 4, 6, 128, 1368986265, 'Ціни та послуги', 'services', 1, 'main', NULL, '', '', NULL, '', '', '', '1', '', '' );
INSERT INTO `tl_article` VALUES ( 5, 7, 128, 1371148451, 'Галерея', 'galereja', 2, 'main', NULL, '', '', NULL, '', '', '', '1', '', '' );
INSERT INTO `tl_article` VALUES ( 6, 8, 128, 1371155670, 'Галерея', '', 2, 'main', NULL, '', '', NULL, '', '', '', '1', '', '' );
INSERT INTO `tl_article` VALUES ( 7, 9, 128, 1371305747, 'Калькулятор', 'calculator', 2, 'main', NULL, '', '', NULL, '', '', '', '1', '', '' );

#---------------------------------------------------------
# Table structure for table 'tl_calculator_items'
#---------------------------------------------------------
CREATE TABLE `tl_calculator_items` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(25) NOT NULL default '',
  `price` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;


#
# Dumping data for table 'tl_calculator_items'
#

INSERT INTO `tl_calculator_items` VALUES ( 1, 1, 1371305496, 'Офсетний', '0.20' );
INSERT INTO `tl_calculator_items` VALUES ( 2, 1, 1371305521, 'Крейдований папір', '0.30' );
INSERT INTO `tl_calculator_items` VALUES ( 3, 1, 1371305559, 'Папір для глибокого друку', '0.23' );
INSERT INTO `tl_calculator_items` VALUES ( 4, 2, 1371305687, 'Фарба1', '0.4' );
INSERT INTO `tl_calculator_items` VALUES ( 5, 2, 1371305698, 'Фарба2', '0.7' );

#---------------------------------------------------------
# Table structure for table 'tl_calculator_options'
#---------------------------------------------------------
CREATE TABLE `tl_calculator_options` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(25) NOT NULL default '',
  `price` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;


#
# Dumping data for table 'tl_calculator_options'
#

INSERT INTO `tl_calculator_options` VALUES ( 1, 0, 1371305399, 'Папір', '' );
INSERT INTO `tl_calculator_options` VALUES ( 2, 0, 1371305572, 'Фарба', '' );

#---------------------------------------------------------
# Table structure for table 'tl_calendar'
#---------------------------------------------------------
CREATE TABLE `tl_calendar` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `protected` char(1) NOT NULL default '',
  `groups` blob NULL,
  `allowComments` char(1) NOT NULL default '',
  `notify` varchar(32) NOT NULL default '',
  `sortOrder` varchar(32) NOT NULL default '',
  `perPage` smallint(5) unsigned NOT NULL default '0',
  `moderate` char(1) NOT NULL default '',
  `bbcode` char(1) NOT NULL default '',
  `requireLogin` char(1) NOT NULL default '',
  `disableCaptcha` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_calendar' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_calendar_events'
#---------------------------------------------------------
CREATE TABLE `tl_calendar_events` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `alias` varbinary(128) NOT NULL default '',
  `author` int(10) unsigned NOT NULL default '0',
  `addTime` char(1) NOT NULL default '',
  `startTime` int(10) unsigned NULL,
  `endTime` int(10) unsigned NULL,
  `startDate` int(10) unsigned NULL,
  `endDate` int(10) unsigned NULL,
  `teaser` text NULL,
  `addImage` char(1) NOT NULL default '',
  `singleSRC` varchar(255) NOT NULL default '',
  `alt` varchar(255) NOT NULL default '',
  `size` varchar(64) NOT NULL default '',
  `imagemargin` varchar(128) NOT NULL default '',
  `imageUrl` varchar(255) NOT NULL default '',
  `fullsize` char(1) NOT NULL default '',
  `caption` varchar(255) NOT NULL default '',
  `floating` varchar(32) NOT NULL default '',
  `recurring` char(1) NOT NULL default '',
  `repeatEach` varchar(64) NOT NULL default '',
  `repeatEnd` int(10) unsigned NOT NULL default '0',
  `recurrences` smallint(5) unsigned NOT NULL default '0',
  `addEnclosure` char(1) NOT NULL default '',
  `enclosure` blob NULL,
  `source` varchar(32) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `articleId` int(10) unsigned NOT NULL default '0',
  `url` varchar(255) NOT NULL default '',
  `target` char(1) NOT NULL default '',
  `cssClass` varchar(255) NOT NULL default '',
  `noComments` char(1) NOT NULL default '',
  `published` char(1) NOT NULL default '',
  `start` varchar(10) NOT NULL default '',
  `stop` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_calendar_events' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_calendar_feed'
#---------------------------------------------------------
CREATE TABLE `tl_calendar_feed` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `alias` varbinary(128) NOT NULL default '',
  `language` varchar(32) NOT NULL default '',
  `calendars` blob NULL,
  `format` varchar(32) NOT NULL default '',
  `source` varchar(32) NOT NULL default '',
  `maxItems` smallint(5) unsigned NOT NULL default '0',
  `feedBase` varchar(255) NOT NULL default '',
  `description` text NULL,
  PRIMARY KEY  (`id`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_calendar_feed' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_comments'
#---------------------------------------------------------
CREATE TABLE `tl_comments` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `source` varchar(32) NOT NULL default '',
  `parent` int(10) unsigned NOT NULL default '0',
  `date` varchar(64) NOT NULL default '',
  `name` varchar(64) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `website` varchar(128) NOT NULL default '',
  `comment` text NULL,
  `addReply` char(1) NOT NULL default '',
  `author` int(10) unsigned NOT NULL default '0',
  `reply` text NULL,
  `published` char(1) NOT NULL default '',
  `ip` varchar(64) NOT NULL default '',
  `notified` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `source` (`source`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_comments' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_comments_notify'
#---------------------------------------------------------
CREATE TABLE `tl_comments_notify` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `source` varchar(32) NOT NULL default '',
  `parent` int(10) unsigned NOT NULL default '0',
  `name` varchar(128) NOT NULL default '',
  `email` varchar(128) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `addedOn` varchar(10) NOT NULL default '',
  `ip` varchar(64) NOT NULL default '',
  `tokenConfirm` varchar(32) NOT NULL default '',
  `tokenRemove` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `source` (`source`),
  KEY `parent` (`parent`),
  KEY `tokenConfirm` (`tokenConfirm`),
  KEY `tokenRemove` (`tokenRemove`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_comments_notify' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_content'
#---------------------------------------------------------
CREATE TABLE `tl_content` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `ptable` varchar(64) NOT NULL default '',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `type` varchar(32) NOT NULL default '',
  `headline` varchar(255) NOT NULL default '',
  `text` mediumtext NULL,
  `addImage` char(1) NOT NULL default '',
  `singleSRC` varchar(255) NOT NULL default '',
  `alt` varchar(255) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `size` varchar(64) NOT NULL default '',
  `imagemargin` varchar(128) NOT NULL default '',
  `imageUrl` varchar(255) NOT NULL default '',
  `fullsize` char(1) NOT NULL default '',
  `caption` varchar(255) NOT NULL default '',
  `floating` varchar(32) NOT NULL default '',
  `html` mediumtext NULL,
  `listtype` varchar(32) NOT NULL default '',
  `listitems` blob NULL,
  `tableitems` mediumblob NULL,
  `summary` varchar(255) NOT NULL default '',
  `thead` char(1) NOT NULL default '',
  `tfoot` char(1) NOT NULL default '',
  `tleft` char(1) NOT NULL default '',
  `sortable` char(1) NOT NULL default '',
  `sortIndex` smallint(5) unsigned NOT NULL default '0',
  `sortOrder` varchar(32) NOT NULL default '',
  `mooType` varchar(32) NOT NULL default '',
  `mooHeadline` varchar(255) NOT NULL default '',
  `mooStyle` varchar(255) NOT NULL default '',
  `mooClasses` varchar(255) NOT NULL default '',
  `highlight` varchar(32) NOT NULL default '',
  `shClass` varchar(255) NOT NULL default '',
  `code` text NULL,
  `url` varchar(255) NOT NULL default '',
  `target` char(1) NOT NULL default '',
  `titleText` varchar(255) NOT NULL default '',
  `linkTitle` varchar(255) NOT NULL default '',
  `embed` varchar(255) NOT NULL default '',
  `rel` varchar(64) NOT NULL default '',
  `useImage` char(1) NOT NULL default '',
  `multiSRC` blob NULL,
  `orderSRC` text NULL,
  `useHomeDir` char(1) NOT NULL default '',
  `perRow` smallint(5) unsigned NOT NULL default '0',
  `perPage` smallint(5) unsigned NOT NULL default '0',
  `numberOfItems` smallint(5) unsigned NOT NULL default '0',
  `sortBy` varchar(32) NOT NULL default '',
  `galleryTpl` varchar(64) NOT NULL default '',
  `playerSRC` blob NULL,
  `youtube` varchar(16) NOT NULL default '',
  `posterSRC` varchar(255) NOT NULL default '',
  `playerSize` varchar(64) NOT NULL default '',
  `autoplay` char(1) NOT NULL default '',
  `cteAlias` int(10) unsigned NOT NULL default '0',
  `articleAlias` int(10) unsigned NOT NULL default '0',
  `article` int(10) unsigned NOT NULL default '0',
  `form` int(10) unsigned NOT NULL default '0',
  `module` int(10) unsigned NOT NULL default '0',
  `protected` char(1) NOT NULL default '',
  `groups` blob NULL,
  `guests` char(1) NOT NULL default '',
  `cssID` varchar(255) NOT NULL default '',
  `space` varchar(64) NOT NULL default '',
  `invisible` char(1) NOT NULL default '',
  `start` varchar(10) NOT NULL default '',
  `stop` varchar(10) NOT NULL default '',
  `com_order` varchar(32) NOT NULL default '',
  `com_perPage` smallint(5) unsigned NOT NULL default '0',
  `com_moderate` char(1) NOT NULL default '',
  `com_bbcode` char(1) NOT NULL default '',
  `com_disableCaptcha` char(1) NOT NULL default '',
  `com_requireLogin` char(1) NOT NULL default '',
  `com_template` varchar(32) NOT NULL default '',
  `dlh_googlemap` int(10) unsigned NOT NULL default '0',
  `dlh_googlemap_zoom` int(10) unsigned NOT NULL default '0',
  `dlh_googlemap_size` varchar(255) NOT NULL default '',
  `dlh_googlemap_static` char(1) NOT NULL default '',
  `dlh_googlemap_url` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`),
  KEY `ptable` (`ptable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;


#
# Dumping data for table 'tl_content'
#

INSERT INTO `tl_content` VALUES ( 1, 2, 'tl_article', 128, 1368980284, 'dlh_googlemaps', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:24:"Як нас знайти";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'mooStart', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', '', '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:10:"span7 well";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 'ascending', 0, '', '', '', '', 'com_default', 1, 15, 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:2:"px";}', '', '' );
INSERT INTO `tl_content` VALUES ( 2, 2, 'tl_article', 64, 1368980068, 'html', '', NULL, '', '', '', '', '', '', '', '', '', '', '<div class = "row">', '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'mooStart', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', '', '', '', 0, 0, 0, 0, 0, '', NULL, '', '', '', '', '', '', 'ascending', 0, '', '', '', '', 'com_default', 0, 0, '', '', '' );
INSERT INTO `tl_content` VALUES ( 3, 2, 'tl_article', 256, 1368980082, 'html', '', NULL, '', '', '', '', '', '', '', '', '', '', '</div>', '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'mooStart', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', '', '', '', 0, 0, 0, 0, 0, '', NULL, '', '', '', '', '', '', 'ascending', 0, '', '', '', '', 'com_default', 0, 0, '', '', '' );
INSERT INTO `tl_content` VALUES ( 4, 2, 'tl_article', 192, 1368980797, 'module', '', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'mooStart', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', '', '', '', 0, 0, 0, 0, 7, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 'ascending', 0, '', '', '', '', 'com_default', 0, 0, '', '', '' );
INSERT INTO `tl_content` VALUES ( 5, 2, 'tl_article', 320, 1368982101, 'form', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:32:"Написати нам лист";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'mooStart', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', '', '', '', 0, 0, 0, 1, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:6:"span12";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 'ascending', 0, '', '', '', '', 'com_default', 0, 0, '', '', '' );
INSERT INTO `tl_content` VALUES ( 6, 2, 'tl_article', 288, 1368981881, 'html', '', NULL, '', '', '', '', '', '', '', '', '', '', '<div class="row">', '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'mooStart', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', '', '', '', 0, 0, 0, 0, 0, '', NULL, '', '', '', '', '', '', 'ascending', 0, '', '', '', '', 'com_default', 0, 0, '', '', '' );
INSERT INTO `tl_content` VALUES ( 7, 2, 'tl_article', 448, 1368981911, 'html', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', '<p>[lt]/div[gt]</p>', '', '', '', '', '', '', '', '', '', '', '</div>', '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'mooStart', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', '', '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 'ascending', 0, '', '', '', '', 'com_default', 0, 0, '', '', '' );
INSERT INTO `tl_content` VALUES ( 8, 3, 'tl_article', 128, 1368986074, 'text', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:78:"Трафаретний друк. Шовкографія. Різографія.";}', 0x3c703ed0a2d180d0b0d184d0b0d180d0b5d182d0bdd0b8d0b920d0b4d180d183d0ba28d0b220d0b0d0bdd0b3d0bb2e5b6e6273705d53637265656e207072696e74696e6729202d20d0a6d0b520d0bcd0b5d182d0bed0b420d0b2d196d0b4d182d0b2d0bed180d0b5d0bdd0bdd18f20d182d0b5d0bad181d182d18320d19620d0b3d180d0b0d184d196d187d0bdd0b8d18520d0b7d0bed0b1d180d0b0d0b6d0b5d0bdd18c20d0b7d0b020d0b4d0bed0bfd0bed0bcd0bed0b3d0bed18e20d0b4d180d183d0bad0bed0b2d0b0d0bdd0bed19720d184d0bed180d0bcd0b82028d182d180d0b0d184d0b0d180d0b5d182d183292c20d187d0b5d180d0b5d0b720d18fd0bad18320d184d0b0d180d0b1d0b020d0bfd180d0bed0bdd0b8d0bad0b0d19420d0bdd0b020d0b4d180d183d0bad0bed0b2d0b0d0bdd0b8d0b920d0bcd0b0d182d0b5d180d196d0b0d0bb2e20d0a6d0b5d0b920d181d0bfd0bed181d196d0b120d0b4d180d183d0bad18320d0b720d184d0bed180d0bc2c20d0b4d180d183d0bad183d0b2d0b0d0bbd18cd0bdd19620d0b5d0bbd0b5d0bcd0b5d0bdd182d0b820d18fd0bad0b8d18520d0bfd180d0bed0bfd183d181d0bad0b0d18ed182d18c20d187d0b5d180d0b5d0b720d181d0b5d0b1d0b520d184d0b0d180d0b1d1832c20d0b020d0bfd180d0bed0b1d196d0bbd18cd0bdd19620d197d19720d0b7d0b0d182d180d0b8d0bcd183d18ed182d18c2e5b6e6273705d3c2f703e0a3c68333ed0a8d0bed0b2d0bad0bed0b3d180d0b0d184d196d18f3c2f68333e0a3c703e3c696d67207374796c653d22666c6f61743a206c6566743b206d617267696e2d72696768743a20323070783b22207469746c653d2266696c65732f7468656d652f696d672f73686f6c6b2e6a70656722207372633d2266696c65732f7468656d652f696d672f73686f6c6b2e6a7065672220616c743d2266696c65732f7468656d652f696d672f73686f6c6b2e6a706567222077696474683d2235303022206865696768743d22333735223ed0a8d0bed0b2d0bad0bed0b3d180d0b0d184d196d194d18e20d0bdd0b0d0b7d0b8d0b2d0b0d18ed182d18c20d181d0bfd0bed181d196d0b120d182d180d0b0d184d0b0d180d0b5d182d0bdd0bed0b3d0be20d0b4d180d183d0bad1832c20d0b220d18fd0bad0bed0bcd18320d18fd0ba20d184d0bed180d0bcd0bdd0bed0b3d0be20d0bcd0b0d182d0b5d180d196d0b0d0bbd18320d0b2d0b8d0bad0bed180d0b8d181d182d0bed0b2d183d18ed182d18cd181d18f20d181d0bfd0b5d186d196d0b0d0bbd18cd0bdd19620d0bdd0b5d0b9d0bbd0bed0bdd0bed0b2d19620d0b0d0b1d0be20d0bcd0b5d182d0b0d0bbd0b5d0b2d19620d181d196d182d0bad0b820d187d0b0d181d182d0bed182d0bed18e20342d32303020d0bdd0b8d182d0bed0ba202f20d181d0bc20d19620d182d0bed0b2d189d0b8d0bdd0bed18e20d0bfd180d0b8d0b1d0bbd0b8d0b7d0bdd0be2031382d32303020d0bcd0bad0bc2e20d097d0b0d0b7d0b2d0b8d187d0b0d0b920d0bfd180d0bed0b1d196d0bbd18cd0bdd19620d0b5d0bbd0b5d0bcd0b5d0bdd182d0b820d184d0bed180d0bcd183d18ed182d18c20d0b1d0b5d0b7d0bfd0bed181d0b5d180d0b5d0b4d0bdd18cd0be20d0bdd0b020d181d196d182d186d19620d184d0bed182d0bed185d196d0bcd196d187d0bdd0b8d0bc20d181d0bfd0bed181d0bed0b1d0bed0bc2e20d094d0bbd18f20d0b2d0b8d0b3d0bed182d0bed0b2d0bbd0b5d0bdd0bdd18f20d0b4d180d183d0bad0bed0b2d0b0d0bdd0bed19720d184d0bed180d0bcd0b820d0bcd0bed0b6d0b520d0b1d183d182d0b820d0b2d0b8d0bad0bed180d0b8d181d182d0b0d0bdd0b8d0b920d18fd0ba20d181d183d185d0b8d0b920d0bfd0bbd196d0b2d0bad0bed0b2d0b8d0b920d184d0bed182d0bed181d0bbd0bed0b92028d0bad0b0d0bfd196d0bbd18fd180d0bdd0b020d0bfd0bbd196d0b2d0bad0b0292c20d182d0b0d0ba20d19620d180d196d0b4d0bad0b020d184d0bed182d0bed0b5d0bcd183d0bbd18cd181d196d18f2c20d0b2d0b8d181d183d188d183d194d182d18cd181d18f20d0bdd0b020d181d196d182d186d19620d0bfd196d181d0bbd18f20d0bdd0b0d0bdd0b5d181d0b5d0bdd0bdd18f2e20d0a320d0b7d0b2d0b8d187d0b0d0b9d0bdd0bed0bcd18320d181d182d0b0d0bdd19620d184d0bed182d0bed181d0bbd0bed0b920d0b7d0bcd0b8d0b2d0b0d194d182d18cd181d18f20d0b2d0bed0b4d0bed18e2e20d0a320d0bfd0b5d180d0b5d0b2d0b0d0b6d0bdd196d0b920d0b1d196d0bbd18cd188d0bed181d182d19620d0b2d0b8d0bfd0b0d0b4d0bad196d0b220d0b5d0bad181d0bfd0bed0bdd183d0b2d0b0d0bdd0bdd18f20d0bfd180d0bed0b2d0bed0b4d0b8d182d18cd181d18f20d0bad0bed0bdd182d0b0d0bad182d0bdd0b8d0bc20d181d0bfd0bed181d0bed0b1d0bed0bc2e20d09fd196d181d0bbd18f20d0b5d0bad181d0bfd0bed0bdd183d0b2d0b0d0bdd0bdd18f20d0a3d0a42dd0b2d0b8d0bfd180d0bed0bcd196d0bdd18ed0b2d0b0d0bdd0bdd18fd0bc20d184d0bed182d0bed181d0bbd0bed0b920d0bfd0bed0bbd196d0bcd0b5d180d0b8d0b7d183d194d182d18cd181d18f20d19620d0bfd0b5d180d0b5d181d182d0b0d19420d0b7d0bcd0b8d0b2d0b0d182d0b8d181d18f20d0b2d0bed0b4d0bed18e2c20d0b7d0b020d0b2d0b8d0bdd18fd182d0bad0bed0bc20d0b4d196d0bbd18fd0bdd0bed0ba2c20d09dd09520d0b7d0b0d0b7d0bdd0b0d0bbd0b820d0bed0bfd180d0bed0bcd196d0bdd0b5d0bdd0bdd18f2028d0b7d0b0d0bad180d0b8d182d19620d0b7d0bed0b1d180d0b0d0b6d0b5d0bdd0bdd18fd0bc20d0bfd0bed0b7d0b8d182d0b8d0b2d183292e20d097d0bcd0b8d182d19620d0b4d196d0bbd18fd0bdd0bad0b820d181d196d182d0bad0b820d181d182d0b0d18ed182d18c20d0b4d180d183d0bad183d18ed187d0b8d0bcd0b820d0b5d0bbd0b5d0bcd0b5d0bdd182d0b0d0bcd0b82e5b6e6273705d3c62723e3c62723ed094d180d183d0ba20d0bcd0bed0b6d0b520d0bfd180d0bed0b2d0bed0b4d0b8d182d0b8d181d18f20d0bfd180d0b0d0bad182d0b8d187d0bdd0be20d0bfd0be20d0b2d181d196d18520d0bcd0b0d182d0b5d180d196d0b0d0bbd0b0d185202d20d0bfd0b0d0bfd196d1802c20d0bfd0bbd0b0d181d182d0b8d0ba2c20d09fd092d0a52c20d181d0bad0bbd0be2c20d0bad0b5d180d0b0d0bcd196d0bad0b02c20d0bcd0b5d182d0b0d0bb2c20d182d0bad0b0d0bdd0b8d0bdd0b02c20d188d0bad196d180d0b020d19620d1822e20d0b42e20d0b2d196d0b4d0bfd0bed0b2d196d0b4d0bdd0b8d0bcd0b820d184d0b0d180d0b1d0b0d0bcd0b82e20d0a4d0b0d180d0b1d0b820d0bcd0bed0b6d183d182d18c20d0b2d196d0b4d180d196d0b7d0bdd18fd182d0b8d181d18f20d0b7d0b020d182d0b8d0bfd0bed0bc20d181d0bfd0bed0bbd183d187d0bdd0bed0b3d0be202d20d0b2d0bed0b4d0bdd1962c20d181d0bed0bbd18cd0b2d0b5d0bdd182d0bdd1962028d0bdd0b020d0bed181d0bdd0bed0b2d19620d180d0bed0b7d187d0b8d0bdd0bdd0b8d0bad196d0b2292c20d183d0bbd18cd182d180d0b0d184d196d0bed0bbd0b5d182d0bed0b2d0bed0b3d0be20d0b7d0b0d182d0b2d0b5d180d0b4d196d0bdd0bdd18f2c20d0bfd0bbd0b0d181d182d0b8d0b7d0bed0bbd1962028d189d0be20d0b2d0b8d0bcd0b0d0b3d0b0d18ed182d18c20d182d0b5d0bcd0bfd0b5d180d0b0d182d183d180d0bdd18320d184d196d0bad181d0b0d186d196d18e292e3c62723e3c62723ed0a2d0b0d0bad0bed0b620d188d0bed0b2d0bad0bed0b3d180d0b0d184d196d18f20d0b2d0b8d0bad0bed180d0b8d181d182d0bed0b2d183d194d182d18cd181d18f20d0b4d0bbd18f20d0b4d180d183d0bad18320d0b4d0b5d0bad0bed0bbd0b5d0b92028d0bfd0b5d180d0b5d0bad0bbd0b0d0b4d0bdd0b8d18520d0bad0b0d180d182d0b8d0bdd0bed0ba2920d0b720d0bdd0b0d181d182d183d0bfd0bdd0b8d0bc20d0b2d0b8d0bfd0b0d0bbd18ed0b2d0b0d0bdd0bdd18fd0bc20d0b0d0b1d0be20d0b1d0b5d0b72e3c62723ed08620d0b4d0bbd18f20d0bdd0b0d0bdd0b5d181d0b5d0bdd0bdd18f20c2abd0a1d0bad180d0b5d182d187c2bb2028d0bfd180d0b0d182d0b82920d188d0b0d180d18320d0b4d0bbd18f20d0bbd0bed182d0b5d180d0b5d0b9d0bdd0b8d18520d0bad0b2d0b8d182d0bad196d0b220d19620d0bad0b0d180d182d0bed0ba20d0bed0bfd0bbd0b0d182d0b82e3c62723e3c62723ed0a1d0b2d0bed18e20d0bdd0b0d0b7d0b2d18320c2abd188d0bed0b2d0bad0bed0b3d180d0b0d184d196d18fc2bb20d186d0b5d0b920d181d0bfd0bed181d196d0b120d0bed182d180d0b8d0bcd0b0d0b220d0b72dd0b7d0b020d0bfd0b0d182d0b5d0bdd182d18320d0bfd180d0bed186d0b5d181d18320d182d180d0b0d184d0b0d180d0b5d182d0bdd0bed0b3d0be20d0b4d180d183d0bad1832c20d0b2d0b8d0b4d0b0d0bdd0b8d0b920d0b2203139303720d180d0bed186d19620d0bfd196d0b420d0bdd0b0d0b7d0b2d0bed18e20d0b0d0bdd0b3d0bb2e2053696c6b2073637265656e207072696e74696e67202d20d0b4d180d183d0ba20d188d0bed0b2d0bad0bed0b2d0b8d0bc20d181d0b8d182d0bed0bc2e20d092d0b2d0b0d0b6d0b0d194d182d18cd181d18f2c20d189d0be20d186d0b5d0b920d181d0bfd0bed181d196d0b120d0b4d180d183d0bad18320d0b2d0b8d0bdd0b8d0bad0bbd0b020d0b220d0b3d0bbd0b8d0b1d0bed0bad18320d0b4d0b0d0b2d0bdd0b8d0bdd1832c20d0b0d0bbd0b520d181d183d187d0b0d181d0bdd0b8d0b920d0b2d0b8d0b3d0bbd18fd0b420d182d180d0b0d184d0b0d180d0b5d182d0bdd0b8d0b920d0b4d180d183d0ba20d0bdd0b0d0b1d183d0bbd0b020d0b220d181d0b5d180d0b5d0b4d0b8d0bdd19620d0bcd0b8d0bdd183d0bbd0bed0b3d0be20d181d182d0bed0bbd196d182d182d18f2e20d097d0b0d0b2d0b4d18fd0bad0b820d0bed181d0bed0b1d0bbd0b8d0b2d0bed181d182d18fd0bc20d182d0b5d185d0bdd0bed0bbd0bed0b3d196d19720d188d0bed0b2d0bad0bed0b3d180d0b0d184d196d18f20d0b4d0bed0b7d0b2d0bed0bbd18fd19420d0b4d180d183d0bad183d0b2d0b0d182d0b820d18fd0ba20d0bdd0b020d0bfd0bbd0bed181d0bad0b8d1852c20d182d0b0d0ba20d19620d0bdd0b020d186d0b8d0bbd196d0bdd0b4d180d0b8d187d0bdd0b8d18520d0bfd0bed0b2d0b5d180d185d0bdd18fd1852e20d097d0b0d180d0b0d0b720d182d180d0b0d184d0b0d180d0b5d182d0bdd0b8d0b920d0b4d180d183d0ba20d0b7d0b0d181d182d0bed181d0bed0b2d183d194d182d18cd181d18f20d0bdd0b520d182d196d0bbd18cd0bad0b820d0b220d0bfd0bed0bbd196d0b3d180d0b0d184d196d1972c20d0b0d0bbd0b520d19620d0b220d182d0b5d0bad181d182d0b8d0bbd18cd0bdd196d0b92c20d0b5d0bbd0b5d0bad182d180d0bed0bdd0bdd0bed1972c20d0b0d0b2d182d0bed0bcd0bed0b1d196d0bbd18cd0bdd0bed1972c20d181d0bad0bbd18fd0bdd0bed1972c20d0bad0b5d180d0b0d0bcd196d187d0bdd0bed19720d182d0b020d196d0bdd188d0b8d18520d0b3d0b0d0bbd183d0b7d18fd18520d0bfd180d0bed0bcd0b8d181d0bbd0bed0b2d0bed181d182d1962e3c62723e3c62723ed09ed0b4d0bdd196d194d18e20d0b720d0bed181d0bed0b1d0bbd0b8d0b2d0bed181d182d0b5d0b920d188d0bed0b2d0bad0bed0b3d180d0b0d184d196d19720d19420d0bcd0bed0b6d0bbd0b8d0b2d196d181d182d18c20d0bed182d180d0b8d0bcd183d0b2d0b0d182d0b820d182d0bed0b2d181d182d0b8d0b920d0b1d0b0d180d0b2d0b8d181d182d0b8d0b920d188d0b0d18020d0b2d196d0b420d0bdd0bed180d0bcd0b0d0bbd18cd0bdd0b8d1852038202d20313020d0bcd0bad0bc20d0b4d0be2035303020d19620d0b1d196d0bbd18cd188d0b52028d0b4d0bbd18f20d0bed184d181d0b5d182d18320d0b1d0b0d180d0b2d0b8d181d182d0b8d0b920d188d0b0d18020d181d0bad0bbd0b0d0b4d0b0d19420312d3220d0bcd0bad0bc2920d0b720d0b2d180d0b0d0b6d0b0d18ed187d0bed18e20d183d0bad180d18bd0b2d0b8d181d182d0bed181d182d18cd18e20d19620d18fd181d0bad180d0b0d0b2d196d181d182d18e20d0bad0bed0bbd18cd0bed180d1832e20d0a2d0b0d0bad0bed0b620d0bcd0bed0b6d0bdd0b020d188d0b8d180d0bed0bad0be20d0b2d0b8d0bad0bed180d0b8d181d182d0bed0b2d183d0b2d0b0d182d0b820d181d0bfd0b5d186d0b5d184d0b5d0bad182d0b8202d20d0b3d0bbd196d182d182d0b5d1802028d0b1d0bbd0b8d181d0bad196d182d0bad0b8292c20d0bed0b127d194d0bcd0bdd18320d0b4d180d183d0ba2c20d196d0bcd196d182d0b0d186d196d18e20d0bed0bad181d0b0d0bcd0b8d182d18320d0b0d0b1d0be20d0b3d183d0bcd0b82e5b6e6273705d3c2f703e0a3c68333e3c62723ed0a0d196d0b7d0bed0b3d180d0b0d184d196d18f3c2f68333e0a3c703e3c62723e3c696d67207374796c653d22666c6f61743a2072696768743b22207469746c653d2266696c65732f7468656d652f696d672f73746f706b612e6a706722207372633d2266696c65732f7468656d652f696d672f73746f706b612e6a70672220616c743d2266696c65732f7468656d652f696d672f73746f706b612e6a7067222077696474683d2232383322206865696768743d22323133223ed09ed0b4d0bdd0b8d0bc20d0b720d180d196d0b7d0bdd0bed0b2d0b8d0b4d196d0b220d182d180d0b0d184d0b0d180d0b5d182d0bdd0bed0b3d0be20d0b4d180d183d0bad18320d19420d180d0b8d0b7d0bed0b3d180d0b0d184d196d18f2c20d18fd0bad18320d0b2d196d0b4d0bdd0bed181d18fd182d18c20d0b4d0be20d181d0bfd0bed181d0bed0b1d196d0b220d0bed0bfd0b5d180d0b0d182d0b8d0b2d0bdd0bed19720d0bfd0bed0bbd196d0b3d180d0b0d184d196d1972e5b6e6273705d3c2f703e0a3c703e5b6e6273705d3c2f703e0a3c703ed0a0d196d0b7d0bed0b3d180d0b0d184d196d18f202d20d0b4d180d183d0ba20d0b720d0b2d0b8d0bad0bed180d0b8d181d182d0b0d0bdd0bdd18fd0bc20d0b4d180d183d0bad0bed0b2d0b0d0bdd0bed19720d184d0bed180d0bcd0b82c20d0b2d0b8d0b3d0bed182d0bed0b2d0bbd0b5d0bdd0bed19720d0bfd180d0bed0bfd0b0d0bbd18ed0b2d0b0d0bdd0bdd18f20d182d0b5d180d0bcd0bed0b3d0bed0bbd0bed0b2d0bad0b820d0bcd196d0bad180d0bed0bed182d0b2d0bed180d196d0b220d0b220d184d0bed180d0bcd0bdd0bed0bcd18320d0bcd0b0d182d0b5d180d196d0b0d0bbd1962028d0bcd0b0d0b9d181d182d0b5d1802dd0bfd0bbd196d0b2d186d1962920d0b4d0bbd18f20d183d182d0b2d0bed180d0b5d0bdd0bdd18f20d0b4d180d183d0bad183d18ed187d0b8d18520d0b5d0bbd0b5d0bcd0b5d0bdd182d196d0b22e5b6e6273705d3c2f703e0a3c703e5b6e6273705d3c2f703e0a3c703ed0a0d196d0b7d0bed0b3d180d0b0d184d196d18f20d0b2d0b8d0bad0bed180d0b8d181d182d0bed0b2d183d18ed182d18c20d0b4d0bbd18f20d0bed0bfd0b5d180d0b0d182d0b8d0b2d0bdd0bed0b3d0be20d180d0bed0b7d0bcd0bdd0bed0b6d0b5d0bdd0bdd18f20d0bdd0b020d0bfd0b0d0bfd0b5d180d19620d0bed0b4d0bdd0bed0bad0bed0bbd196d180d0bdd0bed19720d0b0d0b1d0be20d0b1d0b0d0b3d0b0d182d0bed0b1d0b0d180d0b2d0bdd0bed1972028d0bfd0bed0b2d0bdd0bed0bad0bed0bbd18cd0bed180d0bed0b2d0b8d0b920d0b4d180d183d0ba20d0bdd0b5d0bcd0bed0b6d0bbd0b8d0b2d0b0292e20d0a6d0b5d0b920d181d0bfd0bed181d196d0b120d0b5d0bad0bed0bdd0bed0bcd196d187d0bdd0be20d0b5d184d0b5d0bad182d0b8d0b2d0bdd0b8d0b920d0bfd180d0b820d0b4d180d183d0bad18320d0bfd180d0bed0b4d183d0bad186d196d19720d0bdd0b5d0b2d0b5d0bbd0b8d0bad0b8d0bcd0b820d182d0b8d180d0b0d0b6d0b0d0bcd0b83c2f703e0a3c703e5b6e6273705d28d0b2d196d0b420323020d0b4d0be20312e2030303020d0bfd180d0b8d0bc2e20292e20d09fd180d0b820d181d0b8d0bbd18cd0bdd0bed0bcd18320d0b7d0b1d196d0bbd18cd188d0b5d0bdd0bdd19620d0bcd0bed0b6d0bdd0b020d0bfd0bed0b1d0b0d187d0b8d182d0b82c20d189d0be20d188d182d180d0b8d185d0b820d0bdd0b020d0b2d196d0b4d182d0b8d181d0bdd0b5d0bdd0bdd19620d181d0bad0bbd0b0d0b4d0b0d18ed182d18cd181d18f20d0b720d182d0bed187d0bed0ba20d19620d0bdd0b0d0b3d0b0d0b4d183d18ed182d18c20d0bfd183d0bdd0bad182d0b8d180d0bdd19620d0bbd196d0bdd196d1972e20d0afd0ba20d0bed180d0b8d0b3d196d0bdd0b0d0bbd196d0b220d0bcd0bed0b6d183d182d18c20d0b1d183d182d0b820d0b2d0b8d0bad0bed180d0b8d181d182d0b0d0bdd19620d0bfd0b0d0bfd0b5d180d0bed0b2d19620d0b4d0bed0bad183d0bcd0b5d0bdd182d0b820d0b0d0b1d0be20d184d0b0d0b9d0bbd0b82e20d094d180d183d0ba20d0bdd0b020d180d196d0b7d0bed0b3d180d0b0d184d19620d0bfd180d0bed185d0bed0b4d0b8d182d18c20d0b720d180d0bed0b7d0b4d196d0bbd18cd0bdd0bed18e20d0b7d0b4d0b0d182d0bdd196d181d182d18e20d0b4d0be20363030206470692e20d0a0d196d0b7d0bed0b3d180d0b0d1842028d094d183d0bfd0bbd196d0bad0b0d182d0bed180d0b82c20d09ad0bed0bfd196d0bfd180d196d0bdd182d0b5d18029202d20d186d0b520d0b5d0bad0bed0bbd0bed0b3d196d187d0bdd0be20d187d0b8d181d182d0b52c20d188d0b2d0b8d0b4d0bad0b520d19620d0b5d0bad0bed0bdd0bed0bcd196d187d0bdd0b520d183d181d182d0b0d182d0bad183d0b2d0b0d0bdd0bdd18f2c20d18fd0bad0b520d0bcd0bed0b6d0b520d180d0bed0b7d182d0b0d188d0bed0b2d183d0b2d0b0d182d0b8d181d18f20d0b220d0b1d183d0b4d18c2dd18fd0bad0bed0bcd18320d0bfd180d0b8d0bcd196d189d0b5d0bdd0bdd1962e3c2f703e0a3c68333e3c62723ed09ed0b1d0bbd0b0d181d182d19620d0b7d0b0d181d182d0bed181d183d0b2d0b0d0bdd0bdd18f3c2f68333e0a3c703e3c62723ed0a2d180d0b0d184d0b0d180d0b5d182d0bdd0b8d0b920d0b4d180d183d0ba20d19420d0bed0b4d0bdd0b8d0bc20d0b720d182d0b5d185d0bdd0bed0bbd0bed0b3d196d187d0bdd0b8d18520d181d0bfd0bed181d0bed0b1d196d0b220d0b4d180d183d0bad1832e20d092d0bed0bdd0b020d0bed185d0bed0bfd0bbd18ed19420d180d196d0b7d0bdd19620d181d184d0b5d180d0b820d0b7d0b0d181d182d0bed181d183d0b2d0b0d0bdd0bdd18f3a20d0b2d196d0b420d180d183d187d0bdd0b8d18520d180d0bed0b1d196d18220d0b4d0be20d0b2d0b8d181d0bed0bad0bed182d0b5d185d0bdd0bed0bbd0bed0b3d196d187d0bdd0b8d18520d0bfd180d0bed0bcd0b8d181d0bbd0bed0b2d0b8d18520d180d196d188d0b5d0bdd18c2c20d0b2d196d0b420d0bdd0b0d0b9d0bcd0b5d0bdd188d0b8d18520d184d0bed180d0bcd0b0d182d196d0b220d0bfd180d0b820d0b2d0b8d0b3d0bed182d0bed0b2d0bbd0b5d0bdd0bdd19620d0b4d180d183d0bad0bed0b2d0b0d0bdd0b8d18520d0bfd0bbd0b0d18220d0b4d0be20d181d0b0d0bcd0b8d18520d0b2d0b5d0bbd0b8d0bad0b8d18520d0bfd0bbd0b0d0bad0b0d182d196d0b220d0bfd0bed180d18fd0b4d0bad1832033d1853620d0bc20d19620d0b2d196d0b420d0bed0b4d0b8d0bdd0b8d187d0bdd0b8d18520d0b5d0bad0b7d0b5d0bcd0bfd0bbd18fd180d196d0b220d0b4d0be20d0b2d0b5d0bbd0b8d0bad0b8d18520d0bdd0b0d0bad0bbd0b0d0b4d196d0b22e20d0a1d0bfd0bed181d0bed0b1d0bed0bc20d182d180d0b0d184d0b0d180d0b5d182d0bdd0bed0b3d0be20d0b4d180d183d0bad18320d0b7d0b0d0bfd0b5d187d0b0d182d183d18ed182d18cd181d18f20d0bfd0b0d0bfd196d1802c20d182d0b5d0bad181d182d0b8d0bbd18c2c20d0bad0b5d180d0b0d0bcd196d0bad0b020d19620d181d0b8d0bdd182d0b5d182d0b8d187d0bdd19620d0bcd0b0d182d0b5d180d196d0b0d0bbd0b820d18320d0b2d0b8d0b3d0bbd18fd0b4d19620d0bfd0bed0bbd0bed182d0bdd0b02c20d0bed0bad180d0b5d0bcd0b8d18520d0b0d180d0bad183d188d196d0b22c20d0b020d182d0b0d0bad0bed0b620d182d0b0d0bad19620d0b2d0b8d180d0bed0b1d0b820d180d196d0b7d0bdd0bed0b3d0be20d0bfd180d0b8d0b7d0bdd0b0d187d0b5d0bdd0bdd18f20d19620d184d0bed180d0bcd0b82c20d18fd0ba20d0b1d0b0d0bdd0bad0b82c20d0bad0b5d0bbd0b8d185d0b820d19620d0bfd0b0d0bdd0b5d0bbd1962e3c62723e3c62723ed09fd0b0d0bbd196d182d180d0b820d184d0b0d180d0b120d185d0b0d180d0b0d0bad182d0b5d180d0b8d0b7d183d18ed182d18cd181d18f20d0b2d0b5d0bbd0b8d0bad0bed18e20d180d196d0b7d0bdd0bed0bcd0b0d0bdd196d182d0bdd196d181d182d18e2e20d097d0bdd0b0d185d0bed0b4d18fd182d18c20d188d0b8d180d0bed0bad0b520d0b7d0b0d181d182d0bed181d183d0b2d0b0d0bdd0bdd18f20d181d0bfd0b5d186d196d0b0d0bbd18cd0bdd19620d184d0b0d180d0b1d0b820d0b4d0bbd18f20d0bdd0b0d0b9d180d196d0b7d0bdd0bed0bcd0b0d0bdd196d182d0bdd196d188d0b8d18520d0bed0b1d0bbd0b0d181d182d0b5d0b92e20d0a320d182d180d0b0d184d0b0d180d0b5d182d0bdd0bed0bcd18320d181d0bfd0bed181d0bed0b1d19620d0b4d0bbd18f20d0b4d180d183d0bad18320d196d0bbd18ed181d182d180d0b0d186d196d0b920d0b7d0bdd0b0d185d0bed0b4d0b8d182d18c20d188d0b8d180d0bed0bad0b520d0b7d0b0d181d182d0bed181d183d0b2d0b0d0bdd0bdd18f20d187d0bed182d0b8d180d0b8d0bad0bed0bbd196d180d0bdd0bed0b3d0be20d0b4d180d183d0ba2e20d097d0b0d181d182d0bed181d0bed0b2d183d0b2d0b0d0bdd19620d0b4d0bbd18f20d182d180d0b0d184d0b0d180d0b5d182d0bdd0bed0b3d0be20d0b4d180d183d0bad18320d0b0d0bfd0b0d180d0b0d182d0b82c20d0bcd0b0d188d0b8d0bdd0b820d182d0b020d183d181d182d0b0d182d0bad183d0b2d0b0d0bdd0bdd18f20d0bed185d0bed0bfd0bbd18ed18ed182d18c20d18fd0ba20d0b7d0b2d0b8d187d0b0d0b9d0bdd19620d0bfd180d0b8d181d182d0bed181d183d0b2d0b0d0bdd0bdd18f20d19620d183d181d182d0b0d0bdd0bed0b2d0bad0b82c20d189d0be20d0b2d0b8d0bad0bed180d0b8d181d182d0bed0b2d183d18ed182d18cd181d18f20d0b220d0bad183d181d182d0b0d180d0bdd0bed0bcd18320d0b2d0b8d180d0bed0b1d0bdd0b8d186d182d0b2d1962c20d182d0b0d0ba20d19620d0b2d0b5d0bbd0b8d0bad19620d0bcd0b0d188d0b8d0bdd0b820d0b4d0bbd18f20d180d0bed0b1d196d18220d18320d0bfd180d0bed0bcd0b8d181d0bbd0bed0b2d0b8d18520d0bcd0b0d181d188d182d0b0d0b1d0b0d1852e3c2f703e, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'mooStart', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', '', '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 'ascending', 0, '', '', '', '', 'com_default', 0, 0, '', '', '' );
INSERT INTO `tl_content` VALUES ( 9, 4, 'tl_article', 128, 1368986432, 'headline', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:28:"Ціни та послуги";}', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'mooStart', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', '', '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 'ascending', 0, '', '', '', '', 'com_default', 0, 0, '', '', '' );
INSERT INTO `tl_content` VALUES ( 12, 4, 'tl_article', 192, 1371311780, 'html', '', NULL, '', '', '', '', '', '', '', '', '', '', '<div class="row">\n  <div class="span6">\n<h3>Візитні картки</h3>\n<table border="0">\n<tbody>\n<tr>\n<td>Шовкотрафаретний друк</td>\n<td>від 65 грн. /100 шт.</td>\n</tr>\n<tr>\n<td>Офчетний друк</td>\n<td>від 160 грн. /100 шт.</td>\n</tr>\n<tr>\n<td>Цифровий (лазерний друк)</td>\n<td>від 50 грн. /100 шт.</td>\n</tr>\n<tr>\n<td>Тиснення фольгою</td>\n<td>від 120 грн. /100 шт.</td>\n</tr>\n</tbody>\n</table>\n<h3>Бланки та конверти</h3>\n<p>від 150 грн./100 шт.</p>\n<h3>Наклейки (стікери)</h3>\n<p>Вартість розраховується індивідуально в залежності розмірів, форми, колірності та тиражу, а також матеріалу</p>\n<h3>Друк по пластику</h3>  \n<p>Вартість розраховується індивідуально в залежності розмірів, форми, колірності та тиражу, а також матеріалу</p>\n    <a href="uk/calculator.html" class="button-padding"><button class="btn btn-large btn-block btn-primary" type="button">Розрахувати ціну</button></a>   \n</div>\n<div class="span6">\n<div class="well">\n  <img alt="" src="files/theme/img/card.jpg">\n</div>\n</div>\n<div class="clear"></div>\n</div>', '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'mooStart', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', '', '', '', 0, 0, 0, 0, 0, '', NULL, '', '', '', '', '', '', 'ascending', 0, '', '', '', '', 'com_default', 0, 0, '', '', '' );
INSERT INTO `tl_content` VALUES ( 13, 5, 'tl_article', 128, 1371151562, 'module', '', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'mooStart', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', '', '', '', 0, 0, 0, 0, 9, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 'ascending', 0, '', '', '', '', 'com_default', 0, 0, '', '', '' );
INSERT INTO `tl_content` VALUES ( 14, 6, 'tl_article', 128, 1371155662, 'module', '', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'mooStart', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', '', '', '', 0, 0, 0, 0, 10, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 'ascending', 0, '', '', '', '', 'com_default', 0, 0, '', '', '' );
INSERT INTO `tl_content` VALUES ( 15, 7, 'tl_article', 128, 1371305762, 'module', '', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'mooStart', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', '', '', '', 0, 0, 0, 0, 11, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 'ascending', 0, '', '', '', '', 'com_default', 0, 0, '', '', '' );

#---------------------------------------------------------
# Table structure for table 'tl_cron'
#---------------------------------------------------------
CREATE TABLE `tl_cron` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(32) NOT NULL default '',
  `value` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;


#
# Dumping data for table 'tl_cron'
#

INSERT INTO `tl_cron` VALUES ( 1, 'lastrun', '1371238317' );
INSERT INTO `tl_cron` VALUES ( 2, 'monthly', '201306' );
INSERT INTO `tl_cron` VALUES ( 3, 'weekly', '201324' );
INSERT INTO `tl_cron` VALUES ( 4, 'daily', '20130614' );
INSERT INTO `tl_cron` VALUES ( 5, 'hourly', '0' );
INSERT INTO `tl_cron` VALUES ( 6, 'minutely', '0' );

#---------------------------------------------------------
# Table structure for table 'tl_dlh_googlemaps'
#---------------------------------------------------------
CREATE TABLE `tl_dlh_googlemaps` (
  `title` varchar(255) NOT NULL default '',
  `center` varchar(64) NOT NULL default '',
  `geocoderAddress` varchar(255) NOT NULL default '',
  `geocoderCountry` varchar(2) NOT NULL default '1',
  `mapSize` varchar(255) NOT NULL default '',
  `zoom` int(10) unsigned NOT NULL default '0',
  `mapTypeId` varchar(16) NOT NULL default '',
  `mapTypesAvailable` varchar(255) NOT NULL default '',
  `staticMapNoscript` char(1) NOT NULL default '1',
  `sensor` char(1) NOT NULL default '1',
  `useMapTypeControl` char(1) NOT NULL default '1',
  `mapTypeControlStyle` varchar(16) NOT NULL default '',
  `mapTypeControlPos` varchar(16) NOT NULL default '',
  `useNavigationControl` char(1) NOT NULL default '1',
  `navigationControlStyle` varchar(16) NOT NULL default '',
  `navigationControlPos` varchar(16) NOT NULL default '',
  `streetViewControl` char(1) NOT NULL default '1',
  `disableDoubleClickZoom` char(1) NOT NULL default '1',
  `scrollwheel` char(1) NOT NULL default '1',
  `draggable` char(1) NOT NULL default '1',
  `useScaleControl` char(1) NOT NULL default '1',
  `scaleControlPos` varchar(16) NOT NULL default '',
  `parameter` text NULL,
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;


#
# Dumping data for table 'tl_dlh_googlemaps'
#

INSERT INTO `tl_dlh_googlemaps` VALUES ( 'Контакти Карта', '49.838875,24.031504', 'м.Львів, площа Галицька, 15', 'ua', 'a:3:{i:0;s:3:"670";i:1;s:3:"398";i:2;s:2:"px";}', 15, 'ROADMAP', 'a:4:{i:0;s:6:"HYBRID";i:1;s:7:"ROADMAP";i:2;s:9:"SATELLITE";i:3;s:7:"TERRAIN";}', '', '', '1', 'DEFAULT', 'TOP_RIGHT', '1', 'DEFAULT', 'TOP_LEFT', '1', '1', '1', '1', '1', 'BOTTOM_LEFT', '', 1, 1368979662 );

#---------------------------------------------------------
# Table structure for table 'tl_dlh_googlemaps_elements'
#---------------------------------------------------------
CREATE TABLE `tl_dlh_googlemaps_elements` (
  `title` varchar(255) NOT NULL default '',
  `type` varchar(32) NOT NULL default '',
  `singleCoords` varchar(64) NOT NULL default '',
  `markerType` varchar(32) NOT NULL default '',
  `markerAction` varchar(255) NOT NULL default '',
  `multiCoords` blob NULL,
  `markerShowTitle` char(1) NOT NULL default '',
  `overlaySRC` varchar(255) NOT NULL default '',
  `iconSRC` varchar(255) NOT NULL default '',
  `iconSize` varchar(255) NOT NULL default '',
  `iconAnchor` varchar(255) NOT NULL default '',
  `hasShadow` char(1) NOT NULL default '',
  `shadowSRC` varchar(255) NOT NULL default '',
  `shadowSize` varchar(255) NOT NULL default '',
  `strokeColor` varchar(6) NOT NULL default '',
  `strokeOpacity` varchar(255) NOT NULL default '',
  `strokeWeight` varchar(64) NOT NULL default '',
  `fillColor` varchar(6) NOT NULL default '',
  `fillOpacity` varchar(255) NOT NULL default '',
  `radius` varchar(64) NOT NULL default '',
  `bounds` varchar(255) NOT NULL default '',
  `zIndex` int(10) unsigned NOT NULL default '0',
  `popupInfoWindow` char(1) NOT NULL default '',
  `useRouting` char(1) NOT NULL default '',
  `routingAddress` varchar(255) NOT NULL default '',
  `infoWindow` text NULL,
  `infoWindowAnchor` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `target` char(1) NOT NULL default '',
  `linkTitle` varchar(255) NOT NULL default '',
  `parameter` text NULL,
  `published` char(1) NOT NULL default '',
  `sorting` int(10) unsigned NOT NULL default '0',
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;


#
# Dumping data for table 'tl_dlh_googlemaps_elements'
#

INSERT INTO `tl_dlh_googlemaps_elements` VALUES ( 'Rona - Поліграфічні Послуги', 'MARKER', '49.838875,24.031504', 'SIMPLE', 'INFO', NULL, '1', '', '', 'a:3:{i:0;s:2:"16";i:1;s:2:"16";i:2;s:2:"px";}', 'a:3:{i:0;s:1:"0";i:1;s:1:"0";i:2;s:2:"px";}', '', '', 'a:3:{i:0;s:2:"32";i:1;s:2:"32";i:2;s:2:"px";}', '000000', '100', '1', 'ffffff', '100', '1000', '', 1, '1', '', '', '<p>Rona - Поліграфічні Послуги</p>', 'a:3:{i:0;s:1:"0";i:1;s:1:"0";i:2;s:2:"px";}', '', '', '', '', '1', 128, 1, 1, 1368979837 );

#---------------------------------------------------------
# Table structure for table 'tl_extension'
#---------------------------------------------------------
CREATE TABLE `tl_extension` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(64) NOT NULL default '',
  `folder` varchar(48) NOT NULL default '',
  `author` varchar(128) NOT NULL default '',
  `copyright` varchar(128) NOT NULL default '',
  `package` varchar(64) NOT NULL default '',
  `license` varchar(64) NOT NULL default '',
  `addBeMod` char(1) NOT NULL default '',
  `beClasses` varchar(255) NOT NULL default '',
  `beTables` varchar(255) NOT NULL default '',
  `beTemplates` varchar(255) NOT NULL default '',
  `addFeMod` char(1) NOT NULL default '',
  `feClasses` varchar(255) NOT NULL default '',
  `feTables` varchar(255) NOT NULL default '',
  `feTemplates` varchar(255) NOT NULL default '',
  `addLanguage` char(1) NOT NULL default '',
  `languages` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_extension' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_faq'
#---------------------------------------------------------
CREATE TABLE `tl_faq` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `question` varchar(255) NOT NULL default '',
  `alias` varbinary(128) NOT NULL default '',
  `author` int(10) unsigned NOT NULL default '0',
  `answer` text NULL,
  `addImage` char(1) NOT NULL default '',
  `singleSRC` varchar(255) NOT NULL default '',
  `alt` varchar(255) NOT NULL default '',
  `size` varchar(64) NOT NULL default '',
  `imagemargin` varchar(128) NOT NULL default '',
  `imageUrl` varchar(255) NOT NULL default '',
  `fullsize` char(1) NOT NULL default '',
  `caption` varchar(255) NOT NULL default '',
  `floating` varchar(12) NOT NULL default '',
  `addEnclosure` char(1) NOT NULL default '',
  `enclosure` blob NULL,
  `noComments` char(1) NOT NULL default '',
  `published` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_faq' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_faq_category'
#---------------------------------------------------------
CREATE TABLE `tl_faq_category` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `headline` varchar(255) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `allowComments` char(1) NOT NULL default '',
  `notify` varchar(16) NOT NULL default '',
  `sortOrder` varchar(12) NOT NULL default '',
  `perPage` smallint(5) unsigned NOT NULL default '0',
  `moderate` char(1) NOT NULL default '',
  `bbcode` char(1) NOT NULL default '',
  `requireLogin` char(1) NOT NULL default '',
  `disableCaptcha` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_faq_category' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_files'
#---------------------------------------------------------
CREATE TABLE `tl_files` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `type` varchar(16) NOT NULL default '',
  `path` varchar(255) NOT NULL default '',
  `extension` varchar(16) NOT NULL default '',
  `hash` varchar(32) NOT NULL default '',
  `found` char(1) NOT NULL default '1',
  `name` varchar(64) NOT NULL default '',
  `meta` blob NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `pid` (`pid`),
  KEY `extension` (`extension`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=134 ;


#
# Dumping data for table 'tl_files'
#

INSERT INTO `tl_files` VALUES ( 1, 0, 1368972462, 'folder', 'files/music_academy', '', 'c00b1015e6719db22bc26d5b7894999e', '1', 'music_academy', NULL );
INSERT INTO `tl_files` VALUES ( 2, 1, 1368972462, 'folder', 'files/music_academy/campus', '', '6ced109192129cb67d6f0a30493e237f', '1', 'campus', NULL );
INSERT INTO `tl_files` VALUES ( 3, 2, 1368972462, 'file', 'files/music_academy/campus/campus_building.jpg', 'jpg', 'a0ac423df6265537c7b1783ed9cbb698', '1', 'campus_building.jpg', NULL );
INSERT INTO `tl_files` VALUES ( 4, 2, 1368972462, 'file', 'files/music_academy/campus/campus_hall.jpg', 'jpg', '16074d6c3e3dfeb23d580715f486bff2', '1', 'campus_hall.jpg', NULL );
INSERT INTO `tl_files` VALUES ( 5, 2, 1368972462, 'file', 'files/music_academy/campus/campus_library.jpg', 'jpg', '1795dc0db4a1efcd2c390e3969ac3d3b', '1', 'campus_library.jpg', NULL );
INSERT INTO `tl_files` VALUES ( 6, 2, 1368972462, 'file', 'files/music_academy/campus/campus_overview.jpg', 'jpg', '12360a385a87413fa9914d9f4b0f3113', '1', 'campus_overview.jpg', NULL );
INSERT INTO `tl_files` VALUES ( 7, 1, 1368972462, 'file', 'files/music_academy/admin.gif', 'gif', '37173d258871c781db2c025060e4f8ab', '1', 'admin.gif', NULL );
INSERT INTO `tl_files` VALUES ( 8, 1, 1368972462, 'file', 'files/music_academy/background.gif', 'gif', 'b2a05c65803733133c981a2d4e386968', '1', 'background.gif', NULL );
INSERT INTO `tl_files` VALUES ( 9, 1, 1368972462, 'file', 'files/music_academy/frontendmodules.gif', 'gif', '4f697b474f6d1e66f442c1c67d574a99', '1', 'frontendmodules.gif', NULL );
INSERT INTO `tl_files` VALUES ( 10, 1, 1368972462, 'file', 'files/music_academy/image.png', 'png', 'cb636d32a257f7b6337b7392afeab02d', '1', 'image.png', NULL );
INSERT INTO `tl_files` VALUES ( 11, 1, 1368972462, 'file', 'files/music_academy/james-wilson.jpg', 'jpg', 'fd894d798786066577c9de8cbe9c1e38', '1', 'james-wilson.jpg', NULL );
INSERT INTO `tl_files` VALUES ( 12, 1, 1368972462, 'file', 'files/music_academy/layout.gif', 'gif', 'ec5793c27e75e0426a69202d876733e2', '1', 'layout.gif', NULL );
INSERT INTO `tl_files` VALUES ( 13, 1, 1368972462, 'file', 'files/music_academy/modules.gif', 'gif', 'cefbcdcc5facb958977376f2c46367dc', '1', 'modules.gif', NULL );
INSERT INTO `tl_files` VALUES ( 14, 1, 1368972462, 'file', 'files/music_academy/news.gif', 'gif', 'ee4c7b3e72fb750033036036176feace', '1', 'news.gif', NULL );
INSERT INTO `tl_files` VALUES ( 15, 1, 1368972462, 'file', 'files/music_academy/pagemounts.gif', 'gif', '1317e91c34333dfd9bad071dd43e9f39', '1', 'pagemounts.gif', NULL );
INSERT INTO `tl_files` VALUES ( 16, 1, 1368972462, 'file', 'files/music_academy/permissions.gif', 'gif', 'edc93c562d750ea9e0b20052298f4aa5', '1', 'permissions.gif', NULL );
INSERT INTO `tl_files` VALUES ( 17, 1, 1368972462, 'file', 'files/music_academy/protect.gif', 'gif', '7d8c259b52dc2fe5ccd8b8ea7e8090fb', '1', 'protect.gif', NULL );
INSERT INTO `tl_files` VALUES ( 18, 1, 1368972462, 'file', 'files/music_academy/screenshot.jpg', 'jpg', 'bc787a96a23265d4de60c9d1c8e21580', '1', 'screenshot.jpg', NULL );
INSERT INTO `tl_files` VALUES ( 19, 0, 1368972462, 'folder', 'files/tiny_templates', '', 'db5e024c9f4351d2fbc2e31cc396816d', '1', 'tiny_templates', NULL );
INSERT INTO `tl_files` VALUES ( 20, 19, 1368972462, 'file', 'files/tiny_templates/index.html', 'html', 'aeebec42dc0335ea1e0853f4393259b4', '1', 'index.html', NULL );
INSERT INTO `tl_files` VALUES ( 21, 0, 1368972462, 'file', 'files/tinymce.css', 'css', '79a321fb4e7696159c3f5ad459840c2e', '1', 'tinymce.css', NULL );
INSERT INTO `tl_files` VALUES ( 22, 0, 1368984345, 'folder', 'files/theme', '', '3392915bcdd03b3518fbac9b947d6617', '1', 'theme', NULL );
INSERT INTO `tl_files` VALUES ( 23, 22, 1368984345, 'folder', 'files/theme/css', '', 'ffc9afc0cc552cf194707b6d6a18dea7', '1', 'css', NULL );
INSERT INTO `tl_files` VALUES ( 24, 23, 1368984346, 'file', 'files/theme/css/bootstrap-responsive.css', 'css', 'e26f2c71fa69ffa8c5d35703337c2e88', '1', 'bootstrap-responsive.css', NULL );
INSERT INTO `tl_files` VALUES ( 25, 23, 1368984346, 'file', 'files/theme/css/bootstrap-responsive.min.css', 'css', '12d88b292711cd2af776fc3c8cf2649e', '1', 'bootstrap-responsive.min.css', NULL );
INSERT INTO `tl_files` VALUES ( 26, 23, 1368984346, 'file', 'files/theme/css/bootstrap.css', 'css', '4b6cf9d982da64f10922c30891901941', '1', 'bootstrap.css', NULL );
INSERT INTO `tl_files` VALUES ( 27, 23, 1368984346, 'file', 'files/theme/css/bootstrap.min.css', 'css', '323f5dbc2c30537175dad260d75cf7ad', '1', 'bootstrap.min.css', NULL );
INSERT INTO `tl_files` VALUES ( 28, 23, 1368984346, 'file', 'files/theme/css/style.css', 'css', '8d9c5f7b10514adf834e3112f8ab5460', '1', 'style.css', NULL );
INSERT INTO `tl_files` VALUES ( 29, 22, 1368984346, 'folder', 'files/theme/img', '', '89f0ee7f69b5cf2ac19e7462dcbc84c1', '1', 'img', NULL );
INSERT INTO `tl_files` VALUES ( 30, 29, 1368984346, 'file', 'files/theme/img/1200x320.gif', 'gif', '278e8cc6181843509a1334ad0489fa41', '1', '1200x320.gif', NULL );
INSERT INTO `tl_files` VALUES ( 31, 29, 1368984346, 'file', 'files/theme/img/glyphicons-halflings-white.png', 'png', '9bbc6e9602998a385c2ea13df56470fd', '1', 'glyphicons-halflings-white.png', NULL );
INSERT INTO `tl_files` VALUES ( 32, 29, 1368984346, 'file', 'files/theme/img/glyphicons-halflings.png', 'png', '2516339970d710819585f90773aebe0a', '1', 'glyphicons-halflings.png', NULL );
INSERT INTO `tl_files` VALUES ( 33, 29, 1368984346, 'file', 'files/theme/img/map-Google.png', 'png', 'fc7e79aa1274b58b69b5005f95b53250', '1', 'map-Google.png', NULL );
INSERT INTO `tl_files` VALUES ( 34, 29, 1368984346, 'file', 'files/theme/img/stopka.jpg', 'jpg', 'c91890c8eaf9c9fe56928522b9093e5c', '1', 'stopka.jpg', NULL );
INSERT INTO `tl_files` VALUES ( 35, 29, 1368984427, 'file', 'files/theme/img/sholk.jpeg', 'jpeg', 'ed65356ff9ec5566e9b1c0cf4707dff9', '1', 'sholk.jpeg', NULL );
INSERT INTO `tl_files` VALUES ( 36, 22, 1368984346, 'folder', 'files/theme/js', '', '15f9a02f6d4958a596bf03f4edb19d9f', '1', 'js', NULL );
INSERT INTO `tl_files` VALUES ( 37, 36, 1368984346, 'file', 'files/theme/js/bootstrap.js', 'js', '4c24933a54aa9164ff84cf837821ac85', '1', 'bootstrap.js', NULL );
INSERT INTO `tl_files` VALUES ( 38, 36, 1368984346, 'file', 'files/theme/js/bootstrap.min.js', 'js', '2916bdd0ab40bc45f6cb6d5b99e34368', '1', 'bootstrap.min.js', NULL );
INSERT INTO `tl_files` VALUES ( 39, 36, 1368984346, 'file', 'files/theme/js/jquery-1.9.1.min.js', 'js', '397754ba49e9e0cf4e7c190da78dda05', '1', 'jquery-1.9.1.min.js', NULL );
INSERT INTO `tl_files` VALUES ( 41, 29, 1368987307, 'file', 'files/theme/img/card.jpg', 'jpg', '908c948989207128ae95e622c25e6927', '1', 'card.jpg', NULL );
INSERT INTO `tl_files` VALUES ( 42, 0, 1371150469, 'folder', 'files/AutoBackupDB', '', '6356eb1228bf438f328dfac073a7940f', '1', 'AutoBackupDB', NULL );
INSERT INTO `tl_files` VALUES ( 43, 42, 1371150469, 'file', 'files/AutoBackupDB/.htaccess', 'htaccess', 'bff88aa9f255706dd1e53e330cb1a7b7', '1', '.htaccess', NULL );
INSERT INTO `tl_files` VALUES ( 44, 29, 1371150507, 'folder', 'files/theme/img/gallery', '', 'd16cde3eff21360925bd606587e0f8fd', '1', 'gallery', NULL );
INSERT INTO `tl_files` VALUES ( 45, 44, 1371150508, 'folder', 'files/theme/img/gallery/.fr-DUVSDY', '', '1c1c3c5dd2099fbbcda31c470a2b3257', '1', '.fr-DUVSDY', NULL );
INSERT INTO `tl_files` VALUES ( 46, 45, 1371150508, 'folder', 'files/theme/img/gallery/.fr-DUVSDY/111_0106', '', '56d3d3fb5edeaacee425eb1c4bea295a', '1', '111_0106', NULL );
INSERT INTO `tl_files` VALUES ( 47, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1032.JPG', 'jpg', '970d97ace4d514d100b4680ebb9385b0', '1', 'IMG_1032.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 48, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1033.JPG', 'jpg', 'a34ac89728acf42d88f67318a1563ff2', '1', 'IMG_1033.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 49, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1034.JPG', 'jpg', '371078e03b5942a75a7f18e591fcef1a', '1', 'IMG_1034.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 50, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1038.JPG', 'jpg', '37407f221b597eb20a5a968a9964f221', '1', 'IMG_1038.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 51, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1039.JPG', 'jpg', '32da6ff9822f2acc1c58263f9bd01c44', '1', 'IMG_1039.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 52, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1040.JPG', 'jpg', '1eb1fc077248e0d9faa462a21d1fd5b8', '1', 'IMG_1040.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 53, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1041.JPG', 'jpg', '0a5c2222677fd824cf41d5fe25000c04', '1', 'IMG_1041.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 54, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1043.JPG', 'jpg', '5ad04871f37f5e059fb695e1393df120', '1', 'IMG_1043.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 55, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1046.JPG', 'jpg', '9ec22b766d7a6a15e4e552d2a86992aa', '1', 'IMG_1046.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 56, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1047.JPG', 'jpg', '0d8d100aa0706656e61b99dca9b7c021', '1', 'IMG_1047.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 57, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1048.JPG', 'jpg', '0ad4d34b1357681ea79241959e717f60', '1', 'IMG_1048.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 58, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1049.JPG', 'jpg', 'f332b66999a842ce16e18fe76e3b515a', '1', 'IMG_1049.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 59, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1051.JPG', 'jpg', 'e79642766a6a8286173c6cb05588a6c5', '1', 'IMG_1051.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 60, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1052.JPG', 'jpg', 'a58161d342c01d0b127ff82b3696512d', '1', 'IMG_1052.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 61, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1053.JPG', 'jpg', 'f24558afbb20000a35379c7ba8c309c9', '1', 'IMG_1053.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 62, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1055.JPG', 'jpg', 'e54eba56d1a5d8e4389cab4898bd57f1', '1', 'IMG_1055.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 63, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1058.JPG', 'jpg', '286b8eaa5743c747f42a065e7fde2cff', '1', 'IMG_1058.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 64, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1059.JPG', 'jpg', 'fa2457c282a4f14ddabcc71f1752eca6', '1', 'IMG_1059.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 65, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1060.JPG', 'jpg', 'b2580c43adc987f68d9fe858c2ecc5d6', '1', 'IMG_1060.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 66, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1063.JPG', 'jpg', '8f08204f6abdd25c8380982986090e3b', '1', 'IMG_1063.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 67, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1065.JPG', 'jpg', '03dac525704f3f82a4e371057c6c207f', '1', 'IMG_1065.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 68, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1067.JPG', 'jpg', '4cad3f25ba44a90d81edd334d2cf8f1d', '1', 'IMG_1067.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 69, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1069.JPG', 'jpg', '86f17c003a786deaf1511c3b5bc48b9c', '1', 'IMG_1069.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 70, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1070.JPG', 'jpg', '5b01688ac092146518159c72c952ff0e', '1', 'IMG_1070.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 71, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1071.JPG', 'jpg', 'e3860719a0731ac23e67ebf61d9c1832', '1', 'IMG_1071.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 72, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1072.JPG', 'jpg', 'f56d92487465eab0410cdb44bdc240e7', '1', 'IMG_1072.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 73, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1073.JPG', 'jpg', 'ac96cbf236d33a47abc4067ddd1d722d', '1', 'IMG_1073.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 74, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1074.JPG', 'jpg', 'ad3150fc0621b463494605e87af7b422', '1', 'IMG_1074.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 75, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1075.JPG', 'jpg', '31d2042caa5c0cf06d161b6c841e70a8', '1', 'IMG_1075.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 76, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1077.JPG', 'jpg', '4f4471eb91afcd39a6e7fc1c8c48e681', '1', 'IMG_1077.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 77, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1078.JPG', 'jpg', '88365791dc25a6a24ce36da90b32699d', '1', 'IMG_1078.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 78, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1080.JPG', 'jpg', 'df6fa14728f036e43f0dde10e8ad9d65', '1', 'IMG_1080.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 79, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1081.JPG', 'jpg', '7b8b4eabb0e32fadea435f64ec6aee48', '1', 'IMG_1081.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 80, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1082.JPG', 'jpg', '838b2f61bc3064aa4102ee479840dc11', '1', 'IMG_1082.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 81, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1084.JPG', 'jpg', '6e00c5e59db8b21fd9d999252daec9b4', '1', 'IMG_1084.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 82, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1086.JPG', 'jpg', '4755e2810ae13d0c1c9891492eb183b8', '1', 'IMG_1086.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 83, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/IMG_1087.JPG', 'jpg', '68adc4563abccf99c8c72f9c01057a3a', '1', 'IMG_1087.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 84, 46, 1371150508, 'file', 'files/theme/img/gallery/.fr-DUVSDY/111_0106/Thumbs.db', 'db', '716fc531f563deea67887881e539c84d', '1', 'Thumbs.db', NULL );
INSERT INTO `tl_files` VALUES ( 85, 44, 1371150508, 'folder', 'files/theme/img/gallery/folder', '', 'd41d8cd98f00b204e9800998ecf8427e', '1', 'folder', NULL );
INSERT INTO `tl_files` VALUES ( 86, 85, 1371150508, 'folder', 'files/theme/img/gallery/folder/.fr-BS6vop', '', 'd41d8cd98f00b204e9800998ecf8427e', '1', '.fr-BS6vop', NULL );
INSERT INTO `tl_files` VALUES ( 87, 85, 1371150508, 'folder', 'files/theme/img/gallery/folder/.fr-xQHnVl', '', 'd41d8cd98f00b204e9800998ecf8427e', '1', '.fr-xQHnVl', NULL );
INSERT INTO `tl_files` VALUES ( 88, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1032.JPG', 'jpg', '970d97ace4d514d100b4680ebb9385b0', '1', 'IMG_1032.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 89, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1033.JPG', 'jpg', 'a34ac89728acf42d88f67318a1563ff2', '1', 'IMG_1033.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 90, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1034.JPG', 'jpg', '371078e03b5942a75a7f18e591fcef1a', '1', 'IMG_1034.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 91, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1038.JPG', 'jpg', '37407f221b597eb20a5a968a9964f221', '1', 'IMG_1038.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 92, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1039.JPG', 'jpg', '32da6ff9822f2acc1c58263f9bd01c44', '1', 'IMG_1039.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 93, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1040.JPG', 'jpg', '1eb1fc077248e0d9faa462a21d1fd5b8', '1', 'IMG_1040.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 94, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1041.JPG', 'jpg', '0a5c2222677fd824cf41d5fe25000c04', '1', 'IMG_1041.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 95, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1043.JPG', 'jpg', '5ad04871f37f5e059fb695e1393df120', '1', 'IMG_1043.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 96, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1046.JPG', 'jpg', '9ec22b766d7a6a15e4e552d2a86992aa', '1', 'IMG_1046.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 97, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1047.JPG', 'jpg', '0d8d100aa0706656e61b99dca9b7c021', '1', 'IMG_1047.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 98, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1048.JPG', 'jpg', '0ad4d34b1357681ea79241959e717f60', '1', 'IMG_1048.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 99, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1049.JPG', 'jpg', 'f332b66999a842ce16e18fe76e3b515a', '1', 'IMG_1049.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 100, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1051.JPG', 'jpg', 'e79642766a6a8286173c6cb05588a6c5', '1', 'IMG_1051.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 101, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1052.JPG', 'jpg', 'a58161d342c01d0b127ff82b3696512d', '1', 'IMG_1052.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 102, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1053.JPG', 'jpg', 'f24558afbb20000a35379c7ba8c309c9', '1', 'IMG_1053.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 103, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1055.JPG', 'jpg', 'e54eba56d1a5d8e4389cab4898bd57f1', '1', 'IMG_1055.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 104, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1058.JPG', 'jpg', '286b8eaa5743c747f42a065e7fde2cff', '1', 'IMG_1058.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 105, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1059.JPG', 'jpg', 'fa2457c282a4f14ddabcc71f1752eca6', '1', 'IMG_1059.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 106, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1060.JPG', 'jpg', 'b2580c43adc987f68d9fe858c2ecc5d6', '1', 'IMG_1060.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 107, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1063.JPG', 'jpg', '8f08204f6abdd25c8380982986090e3b', '1', 'IMG_1063.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 108, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1065.JPG', 'jpg', '03dac525704f3f82a4e371057c6c207f', '1', 'IMG_1065.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 109, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1067.JPG', 'jpg', '4cad3f25ba44a90d81edd334d2cf8f1d', '1', 'IMG_1067.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 110, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1069.JPG', 'jpg', '86f17c003a786deaf1511c3b5bc48b9c', '1', 'IMG_1069.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 111, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1070.JPG', 'jpg', '5b01688ac092146518159c72c952ff0e', '1', 'IMG_1070.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 112, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1071.JPG', 'jpg', 'e3860719a0731ac23e67ebf61d9c1832', '1', 'IMG_1071.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 113, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1072.JPG', 'jpg', 'f56d92487465eab0410cdb44bdc240e7', '1', 'IMG_1072.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 114, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1073.JPG', 'jpg', 'ac96cbf236d33a47abc4067ddd1d722d', '1', 'IMG_1073.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 115, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1074.JPG', 'jpg', 'ad3150fc0621b463494605e87af7b422', '1', 'IMG_1074.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 116, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1075.JPG', 'jpg', '31d2042caa5c0cf06d161b6c841e70a8', '1', 'IMG_1075.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 117, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1077.JPG', 'jpg', '4f4471eb91afcd39a6e7fc1c8c48e681', '1', 'IMG_1077.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 118, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1078.JPG', 'jpg', '88365791dc25a6a24ce36da90b32699d', '1', 'IMG_1078.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 119, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1080.JPG', 'jpg', 'df6fa14728f036e43f0dde10e8ad9d65', '1', 'IMG_1080.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 120, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1081.JPG', 'jpg', '7b8b4eabb0e32fadea435f64ec6aee48', '1', 'IMG_1081.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 121, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1082.JPG', 'jpg', '838b2f61bc3064aa4102ee479840dc11', '1', 'IMG_1082.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 122, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1084.JPG', 'jpg', '6e00c5e59db8b21fd9d999252daec9b4', '1', 'IMG_1084.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 123, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1086.JPG', 'jpg', '4755e2810ae13d0c1c9891492eb183b8', '1', 'IMG_1086.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 124, 44, 1371150508, 'file', 'files/theme/img/gallery/IMG_1087.JPG', 'jpg', '68adc4563abccf99c8c72f9c01057a3a', '1', 'IMG_1087.JPG', NULL );
INSERT INTO `tl_files` VALUES ( 125, 29, 1371150508, 'folder', 'files/theme/img/icons', '', 'd7cf516fe326bc4e81eecdd295a8f2cb', '1', 'icons', NULL );
INSERT INTO `tl_files` VALUES ( 126, 125, 1371150508, 'file', 'files/theme/img/icons/Rona.png', 'png', 'fcc98e24e1788cde54a1b0321abf7589', '1', 'Rona.png', NULL );
INSERT INTO `tl_files` VALUES ( 127, 125, 1371150508, 'file', 'files/theme/img/icons/Rona_black.png', 'png', '4e664e0ead4da48e4908f0babc180799', '1', 'Rona_black.png', NULL );
INSERT INTO `tl_files` VALUES ( 128, 29, 1371150508, 'folder', 'files/theme/img/slider', '', '8a13e96517c475c0b19570068baeb6de', '1', 'slider', NULL );
INSERT INTO `tl_files` VALUES ( 129, 128, 1371150508, 'file', 'files/theme/img/slider/1.jpg', 'jpg', 'b13427fec5316b8d8a9d36b55bd99bb6', '1', '1.jpg', NULL );
INSERT INTO `tl_files` VALUES ( 130, 128, 1371150508, 'file', 'files/theme/img/slider/2.jpg', 'jpg', '12d9d149d4cb50734368b3ef36f3b5bc', '1', '2.jpg', NULL );
INSERT INTO `tl_files` VALUES ( 131, 128, 1371150508, 'file', 'files/theme/img/slider/3.jpg', 'jpg', '9695bd50544a495bd0c676b4331b01d9', '1', '3.jpg', NULL );
INSERT INTO `tl_files` VALUES ( 132, 36, 1371150509, 'file', 'files/theme/js/fadeSlideShow.js', 'js', '5afdb10219f06ac358335c9a90ce9062', '1', 'fadeSlideShow.js', NULL );
INSERT INTO `tl_files` VALUES ( 133, 0, 1371150509, 'file', 'files/Database_rona_db_2013-05-19_224043.sql', 'sql', '0ed7d73195c2ef80eea3a209aeb24427', '1', 'Database_rona_db_2013-05-19_224043.sql', NULL );

#---------------------------------------------------------
# Table structure for table 'tl_form'
#---------------------------------------------------------
CREATE TABLE `tl_form` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `alias` varbinary(128) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `sendViaEmail` char(1) NOT NULL default '',
  `recipient` text NULL,
  `subject` varchar(255) NOT NULL default '',
  `format` varchar(12) NOT NULL default '',
  `skipEmpty` char(1) NOT NULL default '',
  `storeValues` char(1) NOT NULL default '',
  `targetTable` varchar(64) NOT NULL default '',
  `method` varchar(12) NOT NULL default '',
  `attributes` varchar(255) NOT NULL default '',
  `formID` varchar(64) NOT NULL default '',
  `tableless` char(1) NOT NULL default '',
  `allowTags` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;


#
# Dumping data for table 'tl_form'
#

INSERT INTO `tl_form` VALUES ( 1, 1368983052, 'Контактна форма', 'contacts', 0, '1', 'support@rona.com.ua', 'Лист з контактної форми', 'raw', '1', '', '', 'POST', 'a:2:{i:0;s:0:"";i:1;s:18:"contacts-form well";}', '', '1', '' );

#---------------------------------------------------------
# Table structure for table 'tl_form_field'
#---------------------------------------------------------
CREATE TABLE `tl_form_field` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `invisible` char(1) NOT NULL default '',
  `type` varchar(32) NOT NULL default '',
  `name` varchar(64) NOT NULL default '',
  `label` varchar(255) NOT NULL default '',
  `text` text NULL,
  `html` text NULL,
  `options` blob NULL,
  `mandatory` char(1) NOT NULL default '',
  `rgxp` varchar(32) NOT NULL default '',
  `placeholder` varchar(255) NOT NULL default '',
  `maxlength` int(10) unsigned NOT NULL default '0',
  `size` varchar(255) NOT NULL default '',
  `multiple` char(1) NOT NULL default '',
  `mSize` smallint(5) unsigned NOT NULL default '0',
  `extensions` varchar(255) NOT NULL default '',
  `storeFile` char(1) NOT NULL default '',
  `uploadFolder` varchar(255) NOT NULL default '',
  `useHomeDir` char(1) NOT NULL default '',
  `doNotOverwrite` char(1) NOT NULL default '',
  `fsType` varchar(32) NOT NULL default '',
  `class` varchar(255) NOT NULL default '',
  `value` varchar(255) NOT NULL default '',
  `accesskey` char(1) NOT NULL default '',
  `tabindex` smallint(5) unsigned NOT NULL default '0',
  `fSize` smallint(5) unsigned NOT NULL default '0',
  `addSubmit` char(1) NOT NULL default '',
  `slabel` varchar(255) NOT NULL default '',
  `imageSubmit` char(1) NOT NULL default '',
  `singleSRC` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;


#
# Dumping data for table 'tl_form_field'
#

INSERT INTO `tl_form_field` VALUES ( 1, 1, 32, 1368981474, '', 'text', 'name', 'Ім\'я', NULL, NULL, NULL, '1', 'alpha', '', 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', '', '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '' );
INSERT INTO `tl_form_field` VALUES ( 3, 1, 192, 1368981532, '', 'textarea', 'text', 'Текст', NULL, NULL, NULL, '1', '', '', 0, 'a:2:{i:0;s:1:"4";i:1;s:2:"40";}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', '', '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '' );
INSERT INTO `tl_form_field` VALUES ( 4, 1, 128, 1368981573, '', 'text', 'email', 'Email', NULL, NULL, NULL, '1', 'email', '', 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', '', '', '', 'fsStart', '', '', '', 0, 0, '', '', '', '' );
INSERT INTO `tl_form_field` VALUES ( 5, 1, 320, 1368982139, '', 'submit', '', '', NULL, NULL, NULL, '', '', '', 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', '', '', '', 'fsStart', 'btn btn-primary', '', '', 0, 0, '', 'Відправити', '', '' );

#---------------------------------------------------------
# Table structure for table 'tl_layout'
#---------------------------------------------------------
CREATE TABLE `tl_layout` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `rows` varchar(8) NOT NULL default '',
  `headerHeight` varchar(255) NOT NULL default '',
  `footerHeight` varchar(255) NOT NULL default '',
  `cols` varchar(8) NOT NULL default '',
  `widthLeft` varchar(255) NOT NULL default '',
  `widthRight` varchar(255) NOT NULL default '',
  `sections` blob NULL,
  `sPosition` varchar(32) NOT NULL default '',
  `framework` varchar(255) NOT NULL default '',
  `stylesheet` blob NULL,
  `external` blob NULL,
  `orderExt` text NULL,
  `newsfeeds` blob NULL,
  `calendarfeeds` blob NULL,
  `modules` blob NULL,
  `template` varchar(64) NOT NULL default '',
  `doctype` varchar(32) NOT NULL default '',
  `webfonts` varchar(255) NOT NULL default '',
  `cssClass` varchar(255) NOT NULL default '',
  `onload` varchar(255) NOT NULL default '',
  `head` text NULL,
  `addJQuery` char(1) NOT NULL default '',
  `jSource` varchar(16) NOT NULL default '',
  `jquery` text NULL,
  `addMooTools` char(1) NOT NULL default '',
  `mooSource` varchar(16) NOT NULL default '',
  `mootools` text NULL,
  `analytics` varchar(64) NOT NULL default '',
  `script` text NULL,
  `static` char(1) NOT NULL default '',
  `width` varchar(255) NOT NULL default '',
  `align` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;


#
# Dumping data for table 'tl_layout'
#

INSERT INTO `tl_layout` VALUES ( 1, 1, 1368978308, 'Головна', '3rw', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', '1cl', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', '', '', 'main', 'a:2:{i:0;s:10:"layout.css";i:1;s:9:"reset.css";}', '', '', '', '', '', 0x613a353a7b693a303b613a323a7b733a333a226d6f64223b733a313a2231223b733a333a22636f6c223b733a363a22686561646572223b7d693a313b613a323a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22686561646572223b7d693a323b613a323a7b733a333a226d6f64223b733a313a2233223b733a333a22636f6c223b733a343a226d61696e223b7d693a333b613a323a7b733a333a226d6f64223b733a313a2234223b733a333a22636f6c223b733a343a226d61696e223b7d693a343b613a323a7b733a333a226d6f64223b733a313a2235223b733a333a22636f6c223b733a363a22666f6f746572223b7d7d, 'fe_page', 'xhtml_strict', '', '', '', '', '1', 'j_fallback', '', '', 'moo_local', NULL, '', '', '', '', 'center' );
INSERT INTO `tl_layout` VALUES ( 2, 1, 1371299047, 'Похідна', '3rw', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', '1cl', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', '', '', 'main', 'a:1:{i:0;s:10:"layout.css";}', '', '', '', '', '', 0x613a343a7b693a303b613a323a7b733a333a226d6f64223b733a313a2236223b733a333a22636f6c223b733a363a22686561646572223b7d693a313b613a323a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22686561646572223b7d693a323b613a323a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b7d693a333b613a323a7b733a333a226d6f64223b733a313a2235223b733a333a22636f6c223b733a363a22666f6f746572223b7d7d, 'fe_page', 'xhtml_strict', '', '', '', '', '', 'j_local', 'a:1:{i:0;s:10:"j_colorbox";}', '', 'moo_local', NULL, '', '', '', '', 'center' );

#---------------------------------------------------------
# Table structure for table 'tl_log'
#---------------------------------------------------------
CREATE TABLE `tl_log` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `source` varchar(32) NOT NULL default '',
  `action` varchar(32) NOT NULL default '',
  `username` varchar(64) NOT NULL default '',
  `text` text NULL,
  `func` varchar(255) NOT NULL default '',
  `ip` varchar(64) NOT NULL default '',
  `browser` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=332 ;


#
# Dumping data for table 'tl_log'
#

INSERT INTO `tl_log` VALUES ( 1, 1368972467, 'FE', 'CRON', '', 'Running the monthly cron jobs', 'CronJobs run()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 2, 1368972467, 'FE', 'CRON', '', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 3, 1368972467, 'FE', 'CRON', '', 'Purged the image cache', 'Automator purgeImageCache()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 4, 1368972467, 'FE', 'CRON', '', 'Monthly cron jobs complete', 'CronJobs run()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 5, 1368972475, 'BE', 'ACCESS', 'Konro1', 'User &quot;Konro1&quot; has logged in', 'Contao\\BackendUser login()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 6, 1368972483, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_theme.id=1&quot; has been created', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 7, 1368972509, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_theme.id=1&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 8, 1368972521, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 9, 1368972585, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 10, 1368973142, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_page.id=1&quot; has been created', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 11, 1368973158, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_page.id=1&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 12, 1368973200, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_page.id=1&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 13, 1368973297, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_page.id=2&quot; has been created', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 14, 1368973318, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_page.id=2&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 15, 1368973381, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 16, 1368973920, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 17, 1368973925, 'FE', 'ERROR', '', 'Could not find layout ID &quot;&quot;', 'PageRegular getPageLayout()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 18, 1368973940, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_page.id=2&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 19, 1368974015, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 20, 1368974617, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 21, 1368974865, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 22, 1368974938, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 23, 1368975054, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=2&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 24, 1368976015, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_layout.id=2&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 25, 1368976061, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_layout.id=2&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 26, 1368976071, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_page.id=3&quot; has been created', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 27, 1368976080, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_page.id=4&quot; has been created', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 28, 1368976109, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_page.id=4&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 29, 1368976160, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_layout.id=2&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 30, 1368976261, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 31, 1368976339, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_module.id=3&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 32, 1368976425, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=3&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 33, 1368976472, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=3&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 34, 1368976478, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_module.id=4&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 35, 1368976532, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=4&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 36, 1368977791, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_module.id=5&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 37, 1368977843, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=5&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 38, 1368977969, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=5&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 39, 1368978151, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=5&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 40, 1368978211, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 41, 1368978230, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_module.id=6&quot; has been created by duplicating record &quot;tl_module.id=1&quot; (parent records: tl_theme.id=1)', 'DC_Table copy()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 42, 1368978254, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=6&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 43, 1368978379, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=5&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 44, 1368978431, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=5&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 45, 1368978471, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=5&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 46, 1368978507, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=5&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 47, 1368978541, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=5&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 48, 1368978996, 'BE', 'REPOSITORY', 'Konro1', 'Extension &quot;dlh_googlemaps&quot; version &quot;1.1.4 stable&quot; has been installed', 'RepositoryManager::installExtension()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 49, 1368979014, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_dlh_googlemaps.id=1&quot; has been created', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 50, 1368979096, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_dlh_googlemaps.id=1&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 51, 1368979102, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_dlh_googlemaps_elements.id=1&quot; has been created (parent records: tl_dlh_googlemaps.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 52, 1368979253, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_dlh_googlemaps_elements.id=1&quot; has been created (parent records: tl_dlh_googlemaps.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 53, 1368979271, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_dlh_googlemaps.id=1&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 54, 1368979322, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_content.id=1&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 55, 1368979355, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=1&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 56, 1368979484, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=1&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 57, 1368979501, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=1&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 58, 1368979541, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=1&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 59, 1368979582, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_dlh_googlemaps.id=1&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 60, 1368979602, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_dlh_googlemaps.id=1&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 61, 1368979609, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_dlh_googlemaps.id=1&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 62, 1368979653, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_dlh_googlemaps_elements.id=1&quot; has been created (parent records: tl_dlh_googlemaps.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 63, 1368979662, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_dlh_googlemaps.id=1&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 64, 1368979809, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_dlh_googlemaps_elements.id=1&quot; has been created (parent records: tl_dlh_googlemaps.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 65, 1368979837, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_dlh_googlemaps_elements.id=1&quot; has been created (parent records: tl_dlh_googlemaps.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 66, 1368979988, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=1&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 67, 1368980017, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=1&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 68, 1368980052, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_content.id=2&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 69, 1368980068, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=2&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 70, 1368980073, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_content.id=3&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 71, 1368980082, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=3&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 72, 1368980284, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=1&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 73, 1368980344, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_module.id=7&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 74, 1368980771, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=7&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 75, 1368980788, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_content.id=4&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 76, 1368981015, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_form.id=1&quot; has been created', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 77, 1368981096, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_form.id=1&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 78, 1368981278, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_form_field.id=1&quot; has been created (parent records: tl_form.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 79, 1368981357, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_form_field.id=1&quot; has been created (parent records: tl_form.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 80, 1368981362, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_form_field.id=2&quot; has been created (parent records: tl_form.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 81, 1368981471, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_form_field.id=2&quot; has been created (parent records: tl_form.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 82, 1368981479, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_form_field.id=3&quot; has been created (parent records: tl_form.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 83, 1368981529, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_form_field.id=3&quot; has been created (parent records: tl_form.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 84, 1368981537, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_form_field.id=4&quot; has been created (parent records: tl_form.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 85, 1368981570, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_form_field.id=4&quot; has been created (parent records: tl_form.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 86, 1368981607, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_content.id=5&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 87, 1368981640, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=5&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 88, 1368981732, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=5&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 89, 1368981759, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=5&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 90, 1368981866, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_content.id=6&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 91, 1368981881, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=6&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 92, 1368981887, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_content.id=7&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 93, 1368981893, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=7&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 94, 1368981911, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=7&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 95, 1368982101, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=5&quot; has been created (parent records: tl_article.id=2, tl_page.id=4)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 96, 1368982118, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_form_field.id=5&quot; has been created (parent records: tl_form.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 97, 1368982135, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_form_field.id=5&quot; has been created (parent records: tl_form.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 98, 1368982223, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_form.id=1&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 99, 1368982297, 'BE', 'GENERAL', 'Konro1', 'DELETE FROM tl_form_field WHERE id=2', 'DC_Table delete()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 100, 1368982655, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=7&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 101, 1368982740, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=7&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 102, 1368983052, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_form.id=1&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 103, 1368983157, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_page.id=5&quot; has been created', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 104, 1368983482, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_page.id=5&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 105, 1368983700, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 106, 1368983781, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_module.id=8&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 107, 1368983828, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_content.id=8&quot; has been created (parent records: tl_article.id=3, tl_page.id=5)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 108, 1368983990, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=8&quot; has been created (parent records: tl_article.id=3, tl_page.id=5)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 109, 1368984270, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=8&quot; has been created (parent records: tl_article.id=3, tl_page.id=5)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 110, 1368984479, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=8&quot; has been created (parent records: tl_article.id=3, tl_page.id=5)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 111, 1368984651, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=8&quot; has been created (parent records: tl_article.id=3, tl_page.id=5)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 112, 1368984841, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=8&quot; has been created (parent records: tl_article.id=3, tl_page.id=5)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 113, 1368985100, 'BE', 'CONFIGURATION', 'Konro1', 'The global configuration variable &quot;timeZone&quot; has been changed from &quot;GMT&quot; to &quot;Europe/Kiev&quot;', 'DC_File save()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 114, 1368985100, 'BE', 'CONFIGURATION', 'Konro1', 'The global configuration variable &quot;rewriteURL&quot; has been changed from &quot;false&quot; to &quot;1&quot;', 'DC_File save()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 115, 1368985100, 'BE', 'CRON', 'Konro1', 'Purged the internal cache', 'Automator purgeInternalCache()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 116, 1368985100, 'BE', 'CONFIGURATION', 'Konro1', 'The global configuration variable &quot;defaultUser&quot; has been changed from &quot;0&quot; to &quot;&quot;', 'DC_File save()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 117, 1368985100, 'BE', 'CONFIGURATION', 'Konro1', 'The global configuration variable &quot;defaultGroup&quot; has been changed from &quot;0&quot; to &quot;&quot;', 'DC_File save()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 118, 1368985100, 'BE', 'CONFIGURATION', 'Konro1', 'The global configuration variable &quot;repository_unsafe_catalog&quot; has been changed from &quot;&quot; to &quot;&quot;', 'DC_File save()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 119, 1368985113, 'FE', 'ERROR', '', 'No active page for page ID &quot;contacts&quot;, host &quot;rona.mls&quot; and languages &quot;uk, ru, en&quot; (http://rona.mls/index.php/contacts.html)', 'PageError404 generate()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 120, 1368985134, 'FE', 'ERROR', '', 'No active page for page ID &quot;contacts&quot;, host &quot;rona.mls&quot; and languages &quot;uk, ru, en&quot; (http://rona.mls/index.php/contacts.html)', 'PageError404 generate()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 121, 1368985136, 'FE', 'ERROR', '', 'No active page for page ID &quot;about-print&quot;, host &quot;rona.mls&quot; and languages &quot;uk, ru, en&quot; (http://rona.mls/index.php/about-print.html)', 'PageError404 generate()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 122, 1368986074, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=8&quot; has been created (parent records: tl_article.id=3, tl_page.id=5)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 123, 1368986094, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_page.id=6&quot; has been created', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 124, 1368986265, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_page.id=6&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 125, 1368986379, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_content.id=9&quot; has been created (parent records: tl_article.id=4, tl_page.id=6)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 126, 1368986438, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_content.id=10&quot; has been created (parent records: tl_article.id=4, tl_page.id=6)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 127, 1368986889, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=10&quot; has been created (parent records: tl_article.id=4, tl_page.id=6)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 128, 1368986986, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=10&quot; has been created (parent records: tl_article.id=4, tl_page.id=6)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 129, 1368987248, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_content.id=11&quot; has been created (parent records: tl_article.id=4, tl_page.id=6)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 130, 1368987324, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=11&quot; has been created (parent records: tl_article.id=4, tl_page.id=6)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 131, 1368987392, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_content.id=12&quot; has been created (parent records: tl_article.id=4, tl_page.id=6)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 132, 1368987526, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=12&quot; has been created (parent records: tl_article.id=4, tl_page.id=6)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 133, 1368987536, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=10&quot; has been created (parent records: tl_article.id=4, tl_page.id=6)', 'tl_content toggleVisibility()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 134, 1368987708, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=12&quot; has been created (parent records: tl_article.id=4, tl_page.id=6)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 135, 1368987728, 'BE', 'GENERAL', 'Konro1', 'DELETE FROM tl_content WHERE id=10', 'DC_Table delete()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 136, 1368987731, 'BE', 'GENERAL', 'Konro1', 'DELETE FROM tl_content WHERE id=11', 'DC_Table delete()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 137, 1368988044, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 138, 1368988105, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 139, 1368988153, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 140, 1368988220, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=6&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 141, 1368988296, 'BE', 'REPOSITORY', 'Konro1', 'Extension &quot;BackupDB&quot; version &quot;3.1.0 stable&quot; has been installed', 'RepositoryManager::installExtension()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 142, 1368988886, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 143, 1368989832, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 144, 1368990003, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 145, 1368990680, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 146, 1368990756, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 147, 1368990823, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 148, 1368992393, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_user.id=1&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 149, 1368992395, 'BE', 'GENERAL', 'danone', 'A new entry &quot;tl_user.id=2&quot; has been created', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' );
INSERT INTO `tl_log` VALUES ( 150, 1370889815, 'BE', 'ACCESS', 'Konro1', 'User &quot;Konro1&quot; has logged in', 'Contao\\BackendUser login()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 151, 1370889969, 'BE', 'CRON', 'Konro1', 'Purged the search tables', 'Automator purgeSearchTables()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 152, 1370889969, 'BE', 'CRON', 'Konro1', 'Purged the undo table', 'Automator purgeUndoTable()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 153, 1370889969, 'BE', 'CRON', 'Konro1', 'Purged the undo table', 'Automator purgeVersionTable()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 154, 1370889969, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 155, 1370889969, 'BE', 'CRON', 'Konro1', 'Purged the image cache', 'Automator purgeImageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 156, 1370889969, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 157, 1370889969, 'BE', 'CRON', 'Konro1', 'Purged the script cache', 'Automator purgeScriptCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 158, 1370889969, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 159, 1370889969, 'BE', 'CRON', 'Konro1', 'Purged the internal cache', 'Automator purgeInternalCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 160, 1370889969, 'BE', 'CRON', 'Konro1', 'Purged the temp folder', 'Automator purgeTempFolder()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 161, 1370889969, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 162, 1370889969, 'BE', 'CRON', 'Konro1', 'Regenerated the XML files', 'Automator generateXmlFiles()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 163, 1370890380, 'FE', 'CRON', '', 'Running the monthly cron jobs', 'CronJobs run()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 164, 1370890380, 'FE', 'CRON', '', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 165, 1370890380, 'FE', 'CRON', '', 'Purged the image cache', 'Automator purgeImageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 166, 1370890380, 'FE', 'CRON', '', 'Monthly cron jobs complete', 'CronJobs run()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 167, 1370891549, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 168, 1370891609, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 169, 1370891683, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 170, 1370891795, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 171, 1370893206, 'BE', 'CONFIGURATION', 'Konro1', 'The global configuration variable &quot;addLanguageToUrl&quot; has been changed from &quot;false&quot; to &quot;1&quot;', 'DC_File save()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 172, 1370893206, 'BE', 'CRON', 'Konro1', 'Purged the internal cache', 'Automator purgeInternalCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 173, 1370893206, 'BE', 'CONFIGURATION', 'Konro1', 'The global configuration variable &quot;backupdb_zip&quot; has been changed from &quot;&quot; to &quot;&quot;', 'DC_File save()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 174, 1370893206, 'BE', 'CONFIGURATION', 'Konro1', 'The global configuration variable &quot;backupdb_sendmail&quot; has been changed from &quot;&quot; to &quot;&quot;', 'DC_File save()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 175, 1370893206, 'BE', 'CONFIGURATION', 'Konro1', 'The global configuration variable &quot;backupdb_attmail&quot; has been changed from &quot;&quot; to &quot;&quot;', 'DC_File save()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 176, 1370893273, 'BE', 'CONFIGURATION', 'Konro1', 'The global configuration variable &quot;addLanguageToUrl&quot; has been changed from &quot;true&quot; to &quot;&quot;', 'DC_File save()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 177, 1370893273, 'BE', 'CRON', 'Konro1', 'Purged the internal cache', 'Automator purgeInternalCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 178, 1370893303, 'BE', 'CONFIGURATION', 'Konro1', 'The global configuration variable &quot;rewriteURL&quot; has been changed from &quot;true&quot; to &quot;&quot;', 'DC_File save()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 179, 1370893303, 'BE', 'CRON', 'Konro1', 'Purged the internal cache', 'Automator purgeInternalCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 180, 1370893365, 'BE', 'CONFIGURATION', 'Konro1', 'The global configuration variable &quot;cacheMode&quot; has been changed from &quot;both&quot; to &quot;none&quot;', 'DC_File save()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 181, 1370893365, 'BE', 'CONFIGURATION', 'Konro1', 'The global configuration variable &quot;rewriteURL&quot; has been changed from &quot;false&quot; to &quot;1&quot;', 'DC_File save()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 182, 1370893365, 'BE', 'CONFIGURATION', 'Konro1', 'The global configuration variable &quot;addLanguageToUrl&quot; has been changed from &quot;false&quot; to &quot;1&quot;', 'DC_File save()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 183, 1370893365, 'BE', 'CONFIGURATION', 'Konro1', 'The global configuration variable &quot;bypassCache&quot; has been changed from &quot;false&quot; to &quot;1&quot;', 'DC_File save()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 184, 1370893365, 'BE', 'CRON', 'Konro1', 'Purged the internal cache', 'Automator purgeInternalCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 185, 1370893368, 'FE', 'ERROR', '', 'No active page for page ID &quot;&quot;, host &quot;rona.mls&quot; and languages &quot;en&quot; (http://rona.mls/index.php/main.html)', 'PageError404 generate()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 186, 1370895608, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 187, 1370895860, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 188, 1370896416, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 189, 1370896545, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=1&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 190, 1371148168, 'FE', 'CRON', '', 'Running the weekly cron jobs', 'CronJobs run()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 191, 1371148168, 'FE', 'CRON', '', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 192, 1371148168, 'FE', 'CRON', '', 'Purged the script cache', 'Automator purgeScriptCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 193, 1371148168, 'FE', 'CRON', '', 'Weekly cron jobs complete', 'CronJobs run()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 194, 1371148392, 'BE', 'ACCESS', 'Konro1', 'User &quot;Konro1&quot; has logged in', 'Contao\\BackendUser login()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 195, 1371148423, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_page.id=7&quot; has been created', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 196, 1371148451, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_page.id=7&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 197, 1371149849, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_msm_photos_category.id=1&quot; has been created', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 198, 1371150612, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_msm_photos_category.id=1&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 199, 1371150769, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_msm_photos_category.id=1&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 200, 1371150789, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_msm_photos_category.id=1&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 201, 1371150839, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_msm_photos_category.id=1&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 202, 1371151252, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_msm_photos_category.id=1&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 203, 1371151413, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_module.id=9&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 204, 1371151501, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_content.id=13&quot; has been created (parent records: tl_article.id=5, tl_page.id=7)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 205, 1371152425, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_page.id=7&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 206, 1371152445, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_page.id=8&quot; has been created by duplicating record &quot;tl_page.id=7&quot;', 'DC_Table copy()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 207, 1371152485, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_page.id=8&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 208, 1371152579, 'FE', 'ERROR', '', 'No active page for page ID &quot;galereja&quot;, host &quot;rona.mls&quot; and languages &quot;en&quot; (http://rona.mls/uk/galereja.html)', 'PageError404 generate()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 209, 1371152596, 'FE', 'ERROR', '', 'No active page for page ID &quot;gallery_details&quot;, host &quot;rona.mls&quot; and languages &quot;en&quot; (http://rona.mls/uk/gallery_details/item/1.html)', 'PageError404 generate()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 210, 1371153579, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_msm_photos_category.id=2&quot; has been created', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 211, 1371153597, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_msm_photos_category.id=2&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 212, 1371153624, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_msm_photos_category.id=2&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 213, 1371153711, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_msm_photos_category.id=3&quot; has been created', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 214, 1371153735, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_msm_photos_category.id=3&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 215, 1371153738, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_msm_photos_category.id=4&quot; has been created', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 216, 1371153775, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_msm_photos_category.id=4&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 217, 1371155601, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_module.id=10&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 218, 1371156274, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_layout.id=2&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 219, 1371157567, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_layout.id=2&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 220, 1371160373, 'BE', 'CRON', 'Konro1', 'Purged the search tables', 'Automator purgeSearchTables()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 221, 1371160373, 'BE', 'CRON', 'Konro1', 'Purged the undo table', 'Automator purgeUndoTable()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 222, 1371160373, 'BE', 'CRON', 'Konro1', 'Purged the undo table', 'Automator purgeVersionTable()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 223, 1371160373, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 224, 1371160373, 'BE', 'CRON', 'Konro1', 'Purged the image cache', 'Automator purgeImageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 225, 1371160373, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 226, 1371160373, 'BE', 'CRON', 'Konro1', 'Purged the script cache', 'Automator purgeScriptCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 227, 1371160373, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 228, 1371160373, 'BE', 'CRON', 'Konro1', 'Purged the internal cache', 'Automator purgeInternalCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 229, 1371160373, 'BE', 'CRON', 'Konro1', 'Purged the temp folder', 'Automator purgeTempFolder()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 230, 1371160373, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 231, 1371160373, 'BE', 'CRON', 'Konro1', 'Regenerated the XML files', 'Automator generateXmlFiles()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 232, 1371160512, 'BE', 'CRON', 'Konro1', 'Purged the search tables', 'Automator purgeSearchTables()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 233, 1371160512, 'BE', 'CRON', 'Konro1', 'Purged the undo table', 'Automator purgeUndoTable()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 234, 1371160512, 'BE', 'CRON', 'Konro1', 'Purged the undo table', 'Automator purgeVersionTable()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 235, 1371160512, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 236, 1371160512, 'BE', 'CRON', 'Konro1', 'Purged the image cache', 'Automator purgeImageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 237, 1371160512, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 238, 1371160512, 'BE', 'CRON', 'Konro1', 'Purged the script cache', 'Automator purgeScriptCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 239, 1371160512, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 240, 1371160512, 'BE', 'CRON', 'Konro1', 'Purged the internal cache', 'Automator purgeInternalCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 241, 1371160512, 'BE', 'CRON', 'Konro1', 'Purged the temp folder', 'Automator purgeTempFolder()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 242, 1371160512, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 243, 1371160512, 'BE', 'CRON', 'Konro1', 'Regenerated the XML files', 'Automator generateXmlFiles()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 244, 1371161226, 'BE', 'CRON', 'Konro1', 'Purged the search tables', 'Automator purgeSearchTables()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 245, 1371161226, 'BE', 'CRON', 'Konro1', 'Purged the undo table', 'Automator purgeUndoTable()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 246, 1371161226, 'BE', 'CRON', 'Konro1', 'Purged the undo table', 'Automator purgeVersionTable()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 247, 1371161226, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 248, 1371161226, 'BE', 'CRON', 'Konro1', 'Purged the image cache', 'Automator purgeImageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 249, 1371161226, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 250, 1371161226, 'BE', 'CRON', 'Konro1', 'Purged the script cache', 'Automator purgeScriptCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 251, 1371161226, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 252, 1371161226, 'BE', 'CRON', 'Konro1', 'Purged the internal cache', 'Automator purgeInternalCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 253, 1371161226, 'BE', 'CRON', 'Konro1', 'Purged the temp folder', 'Automator purgeTempFolder()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 254, 1371161226, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 255, 1371161226, 'BE', 'CRON', 'Konro1', 'Regenerated the XML files', 'Automator generateXmlFiles()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 256, 1371161535, 'BE', 'CRON', 'Konro1', 'Purged the search tables', 'Automator purgeSearchTables()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 257, 1371161535, 'BE', 'CRON', 'Konro1', 'Purged the undo table', 'Automator purgeUndoTable()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 258, 1371161535, 'BE', 'CRON', 'Konro1', 'Purged the undo table', 'Automator purgeVersionTable()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 259, 1371161535, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 260, 1371161535, 'BE', 'CRON', 'Konro1', 'Purged the image cache', 'Automator purgeImageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 261, 1371161535, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 262, 1371161535, 'BE', 'CRON', 'Konro1', 'Purged the script cache', 'Automator purgeScriptCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 263, 1371161535, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 264, 1371161535, 'BE', 'CRON', 'Konro1', 'Purged the internal cache', 'Automator purgeInternalCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 265, 1371161535, 'BE', 'CRON', 'Konro1', 'Purged the temp folder', 'Automator purgeTempFolder()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 266, 1371161535, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 267, 1371161535, 'BE', 'CRON', 'Konro1', 'Regenerated the XML files', 'Automator generateXmlFiles()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 268, 1371162331, 'BE', 'CRON', 'Konro1', 'Purged the search tables', 'Automator purgeSearchTables()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 269, 1371162331, 'BE', 'CRON', 'Konro1', 'Purged the undo table', 'Automator purgeUndoTable()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 270, 1371162331, 'BE', 'CRON', 'Konro1', 'Purged the undo table', 'Automator purgeVersionTable()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 271, 1371162331, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 272, 1371162331, 'BE', 'CRON', 'Konro1', 'Purged the image cache', 'Automator purgeImageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 273, 1371162331, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 274, 1371162331, 'BE', 'CRON', 'Konro1', 'Purged the script cache', 'Automator purgeScriptCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 275, 1371162331, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 276, 1371162332, 'BE', 'CRON', 'Konro1', 'Purged the internal cache', 'Automator purgeInternalCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 277, 1371162332, 'BE', 'CRON', 'Konro1', 'Purged the temp folder', 'Automator purgeTempFolder()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 278, 1371162332, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 279, 1371162332, 'BE', 'CRON', 'Konro1', 'Regenerated the XML files', 'Automator generateXmlFiles()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 280, 1371238317, 'FE', 'CRON', '', 'Running the daily cron jobs', 'CronJobs run()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 281, 1371238317, 'FE', 'CRON', '', 'Purged the temp folder', 'Automator purgeTempFolder()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 282, 1371238317, 'FE', 'CRON', '', 'Checked for Contao updates', 'Automator checkForUpdates()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 283, 1371238318, 'FE', 'CRON', '', 'Daily cron jobs complete', 'CronJobs run()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 284, 1371294828, 'BE', 'ACCESS', 'Konro1', 'User &quot;Konro1&quot; has logged in', 'Contao\\BackendUser login()', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 285, 1371298116, 'BE', 'ACCESS', 'Konro1', 'User &quot;Konro1&quot; has logged in', 'Contao\\BackendUser login()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 286, 1371300338, 'BE', 'CRON', 'Konro1', 'Purged the search tables', 'Automator purgeSearchTables()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 287, 1371300338, 'BE', 'CRON', 'Konro1', 'Purged the undo table', 'Automator purgeUndoTable()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 288, 1371300338, 'BE', 'CRON', 'Konro1', 'Purged the undo table', 'Automator purgeVersionTable()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 289, 1371300338, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 290, 1371300338, 'BE', 'CRON', 'Konro1', 'Purged the image cache', 'Automator purgeImageCache()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 291, 1371300338, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 292, 1371300338, 'BE', 'CRON', 'Konro1', 'Purged the script cache', 'Automator purgeScriptCache()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 293, 1371300338, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 294, 1371300339, 'BE', 'CRON', 'Konro1', 'Purged the internal cache', 'Automator purgeInternalCache()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 295, 1371300339, 'BE', 'CRON', 'Konro1', 'Purged the temp folder', 'Automator purgeTempFolder()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 296, 1371300339, 'BE', 'CRON', 'Konro1', 'Purged the page cache', 'Automator purgePageCache()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 297, 1371300339, 'BE', 'CRON', 'Konro1', 'Regenerated the XML files', 'Automator generateXmlFiles()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 298, 1371302916, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=6&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 299, 1371302939, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=6&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 300, 1371303147, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=12&quot; has been created (parent records: tl_article.id=4, tl_page.id=6)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 301, 1371303203, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=12&quot; has been created (parent records: tl_article.id=4, tl_page.id=6)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 302, 1371303276, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=12&quot; has been created (parent records: tl_article.id=4, tl_page.id=6)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 303, 1371303283, 'FE', 'ERROR', '', 'No active page for page ID &quot;calculator&quot;, host &quot;rona.mls&quot; and languages &quot;uk, ru, en&quot; (http://rona.mls/uk/calculator.html)', 'PageError404 generate()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 304, 1371303311, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_page.id=9&quot; has been created', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 305, 1371303349, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_page.id=9&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 306, 1371303352, 'FE', 'ERROR', '', 'No active page for page ID &quot;calculator&quot;, host &quot;rona.mls&quot; and languages &quot;uk, ru, en&quot; (http://rona.mls/uk/calculator.html)', 'PageError404 generate()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 307, 1371303359, 'FE', 'ERROR', '', 'No active page for page ID &quot;calculator&quot;, host &quot;rona.mls&quot; and languages &quot;uk, ru, en&quot; (http://rona.mls/uk/calculator.html)', 'PageError404 generate()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 308, 1371303370, 'FE', 'ERROR', '', 'No active page for page ID &quot;calculator&quot;, host &quot;rona.mls&quot; and languages &quot;uk, ru, en&quot; (http://rona.mls/uk/calculator.html)', 'PageError404 generate()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 309, 1371303379, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_page.id=9&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 310, 1371305391, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_calculator_options.id=1&quot; has been created', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 311, 1371305399, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_calculator_options.id=1&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 312, 1371305403, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_calculator_items.id=1&quot; has been created (parent records: tl_calculator_options.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 313, 1371305496, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_calculator_items.id=1&quot; has been created (parent records: tl_calculator_options.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 314, 1371305498, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_calculator_items.id=2&quot; has been created (parent records: tl_calculator_options.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 315, 1371305521, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_calculator_items.id=2&quot; has been created (parent records: tl_calculator_options.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 316, 1371305551, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_calculator_items.id=3&quot; has been created (parent records: tl_calculator_options.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 317, 1371305559, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_calculator_items.id=3&quot; has been created (parent records: tl_calculator_options.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 318, 1371305566, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_calculator_options.id=2&quot; has been created', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 319, 1371305572, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_calculator_options.id=2&quot; has been created', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 320, 1371305677, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_calculator_items.id=4&quot; has been created (parent records: tl_calculator_options.id=2)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 321, 1371305687, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_calculator_items.id=4&quot; has been created (parent records: tl_calculator_options.id=2)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 322, 1371305689, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_calculator_items.id=5&quot; has been created (parent records: tl_calculator_options.id=2)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 323, 1371305698, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_calculator_items.id=5&quot; has been created (parent records: tl_calculator_options.id=2)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 324, 1371305723, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_module.id=11&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 325, 1371305750, 'BE', 'GENERAL', 'Konro1', 'A new entry &quot;tl_content.id=15&quot; has been created (parent records: tl_article.id=7, tl_page.id=9)', 'DC_Table create()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 326, 1371311713, 'BE', 'ACCESS', 'Konro1', 'User &quot;Konro1&quot; has logged in', 'Contao\\BackendUser login()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 327, 1371311780, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_content.id=12&quot; has been created (parent records: tl_article.id=4, tl_page.id=6)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 328, 1371315993, 'BE', 'ACCESS', 'Konro1', 'User &quot;Konro1&quot; has logged in', 'Contao\\BackendUser login()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 329, 1371316072, 'BE', 'GENERAL', 'Konro1', 'A new version of record &quot;tl_module.id=4&quot; has been created (parent records: tl_theme.id=1)', 'DC_Table edit()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 330, 1371318911, 'BE', 'ACCESS', 'Konro1', 'User &quot;Konro1&quot; has logged out', 'tl_user logout()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );
INSERT INTO `tl_log` VALUES ( 331, 1371318913, 'BE', 'ACCESS', 'Konro1', 'User &quot;Konro1&quot; has logged in', 'Contao\\BackendUser login()', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36' );

#---------------------------------------------------------
# Table structure for table 'tl_member'
#---------------------------------------------------------
CREATE TABLE `tl_member` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `firstname` varchar(255) NOT NULL default '',
  `lastname` varchar(255) NOT NULL default '',
  `dateOfBirth` varchar(11) NOT NULL default '',
  `gender` varchar(32) NOT NULL default '',
  `company` varchar(255) NOT NULL default '',
  `street` varchar(255) NOT NULL default '',
  `postal` varchar(32) NOT NULL default '',
  `city` varchar(255) NOT NULL default '',
  `state` varchar(64) NOT NULL default '',
  `country` varchar(2) NOT NULL default '',
  `phone` varchar(64) NOT NULL default '',
  `mobile` varchar(64) NOT NULL default '',
  `fax` varchar(64) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `website` varchar(255) NOT NULL default '',
  `language` varchar(2) NOT NULL default '',
  `groups` blob NULL,
  `login` char(1) NOT NULL default '',
  `username` varchar(64) NOT NULL default '',
  `password` varchar(128) NOT NULL default '',
  `assignDir` char(1) NOT NULL default '',
  `homeDir` varchar(255) NOT NULL default '',
  `disable` char(1) NOT NULL default '',
  `start` varchar(10) NOT NULL default '',
  `stop` varchar(10) NOT NULL default '',
  `dateAdded` int(10) unsigned NOT NULL default '0',
  `lastLogin` int(10) unsigned NOT NULL default '0',
  `currentLogin` int(10) unsigned NOT NULL default '0',
  `loginCount` smallint(5) unsigned NOT NULL default '3',
  `locked` int(10) unsigned NOT NULL default '0',
  `session` blob NULL,
  `autologin` varchar(32) NULL default NULL,
  `createdOn` int(10) unsigned NOT NULL default '0',
  `activation` varchar(32) NOT NULL default '',
  `newsletter` blob NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `autologin` (`autologin`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `activation` (`activation`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_member' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_member_group'
#---------------------------------------------------------
CREATE TABLE `tl_member_group` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `redirect` char(1) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `disable` char(1) NOT NULL default '',
  `start` varchar(10) NOT NULL default '',
  `stop` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_member_group' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_module'
#---------------------------------------------------------
CREATE TABLE `tl_module` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `headline` varchar(255) NOT NULL default '',
  `type` varchar(64) NOT NULL default '',
  `levelOffset` smallint(5) unsigned NOT NULL default '0',
  `showLevel` smallint(5) unsigned NOT NULL default '0',
  `hardLimit` char(1) NOT NULL default '',
  `showProtected` char(1) NOT NULL default '',
  `defineRoot` char(1) NOT NULL default '',
  `rootPage` int(10) unsigned NOT NULL default '0',
  `navigationTpl` varchar(64) NOT NULL default '',
  `pages` blob NULL,
  `showHidden` char(1) NOT NULL default '',
  `customLabel` varchar(64) NOT NULL default '',
  `autologin` char(1) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `redirectBack` char(1) NOT NULL default '',
  `cols` varchar(32) NOT NULL default '',
  `editable` blob NULL,
  `memberTpl` varchar(64) NOT NULL default '',
  `tableless` char(1) NOT NULL default '',
  `form` int(10) unsigned NOT NULL default '0',
  `queryType` varchar(32) NOT NULL default '',
  `fuzzy` char(1) NOT NULL default '',
  `contextLength` smallint(5) unsigned NOT NULL default '0',
  `totalLength` smallint(5) unsigned NOT NULL default '0',
  `perPage` smallint(5) unsigned NOT NULL default '0',
  `searchType` varchar(32) NOT NULL default '',
  `searchTpl` varchar(64) NOT NULL default '',
  `inColumn` varchar(32) NOT NULL default '',
  `skipFirst` smallint(5) unsigned NOT NULL default '0',
  `loadFirst` char(1) NOT NULL default '',
  `size` varchar(64) NOT NULL default '',
  `transparent` char(1) NOT NULL default '',
  `flashvars` varchar(255) NOT NULL default '',
  `altContent` text NULL,
  `source` varchar(32) NOT NULL default '',
  `singleSRC` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `interactive` char(1) NOT NULL default '',
  `flashID` varchar(64) NOT NULL default '',
  `flashJS` text NULL,
  `imgSize` varchar(64) NOT NULL default '',
  `useCaption` char(1) NOT NULL default '',
  `fullsize` char(1) NOT NULL default '',
  `multiSRC` blob NULL,
  `orderSRC` text NULL,
  `html` text NULL,
  `rss_cache` int(10) unsigned NOT NULL default '0',
  `rss_feed` text NULL,
  `rss_template` varchar(32) NOT NULL default '',
  `numberOfItems` smallint(5) unsigned NOT NULL default '0',
  `disableCaptcha` char(1) NOT NULL default '',
  `reg_groups` blob NULL,
  `reg_allowLogin` char(1) NOT NULL default '',
  `reg_skipName` char(1) NOT NULL default '',
  `reg_close` varchar(32) NOT NULL default '',
  `reg_assignDir` char(1) NOT NULL default '',
  `reg_homeDir` varchar(255) NOT NULL default '',
  `reg_activate` char(1) NOT NULL default '',
  `reg_jumpTo` int(10) unsigned NOT NULL default '0',
  `reg_text` text NULL,
  `reg_password` text NULL,
  `protected` char(1) NOT NULL default '',
  `groups` blob NULL,
  `guests` char(1) NOT NULL default '',
  `cssID` varchar(255) NOT NULL default '',
  `space` varchar(64) NOT NULL default '',
  `cal_calendar` blob NULL,
  `cal_noSpan` char(1) NOT NULL default '',
  `cal_startDay` smallint(5) unsigned NOT NULL default '0',
  `cal_format` varchar(32) NOT NULL default '',
  `cal_ignoreDynamic` char(1) NOT NULL default '',
  `cal_order` varchar(32) NOT NULL default '',
  `cal_readerModule` int(10) unsigned NOT NULL default '0',
  `cal_limit` smallint(5) unsigned NOT NULL default '0',
  `cal_template` varchar(32) NOT NULL default '',
  `cal_ctemplate` varchar(32) NOT NULL default '',
  `cal_showQuantity` char(1) NOT NULL default '',
  `com_order` varchar(32) NOT NULL default '',
  `com_moderate` char(1) NOT NULL default '',
  `com_bbcode` char(1) NOT NULL default '',
  `com_requireLogin` char(1) NOT NULL default '',
  `com_disableCaptcha` char(1) NOT NULL default '',
  `com_template` varchar(32) NOT NULL default '',
  `faq_categories` blob NULL,
  `faq_readerModule` int(10) unsigned NOT NULL default '0',
  `list_table` varchar(64) NOT NULL default '',
  `list_fields` varchar(255) NOT NULL default '',
  `list_where` varchar(255) NOT NULL default '',
  `list_search` varchar(255) NOT NULL default '',
  `list_sort` varchar(255) NOT NULL default '',
  `list_info` varchar(255) NOT NULL default '',
  `list_info_where` varchar(255) NOT NULL default '',
  `list_layout` varchar(32) NOT NULL default '',
  `list_info_layout` varchar(32) NOT NULL default '',
  `news_archives` blob NULL,
  `news_featured` varchar(16) NOT NULL default '',
  `news_jumpToCurrent` varchar(16) NOT NULL default '',
  `news_readerModule` int(10) unsigned NOT NULL default '0',
  `news_metaFields` varchar(255) NOT NULL default '',
  `news_template` varchar(32) NOT NULL default '',
  `news_format` varchar(32) NOT NULL default '',
  `news_startDay` smallint(5) unsigned NOT NULL default '0',
  `news_order` varchar(255) NOT NULL default '',
  `news_showQuantity` char(1) NOT NULL default '',
  `newsletters` blob NULL,
  `nl_channels` blob NULL,
  `nl_hideChannels` char(1) NOT NULL default '',
  `nl_subscribe` text NULL,
  `nl_unsubscribe` text NULL,
  `nl_template` varchar(32) NOT NULL default '',
  `dlh_googlemap` int(10) unsigned NOT NULL default '0',
  `dlh_googlemap_zoom` int(10) unsigned NOT NULL default '0',
  `dlh_googlemap_size` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;


#
# Dumping data for table 'tl_module'
#

INSERT INTO `tl_module` VALUES ( 1, 1, 1370896545, 'Header Головна', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, '<div class="row">\n  <div class="span12">\n    <div class="well header">\n      <div class="pull-left">\n        <a href=""><img id="logo" alt="Rona" src="files/theme/img/icons/Rona.png"/></a>\n      </div>\n      <div class="clear">\n      </div>\n    </div>\n  </div>\n</div>\n<div class="row-fluid">\n  <div class="span12">\n    <div id="slideshowWrapper">\n      <ul id="slideshow">\n        <li><img class="sliderImg" src="/files/theme/img/slider/1.jpg" border="0" alt="" /></li> <!-- This is the last image in the slideshow -->\n        <li><img class="sliderImg" src="/files/theme/img/slider/2.jpg" border="0" alt="" /></li>\n        <li><img class="sliderImg" src="/files/theme/img/slider/3.jpg" border="0" alt="" /></li>\n      </ul>\n      <br clear="all" />\n    </div>\n  </div>\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, 0, '' );
INSERT INTO `tl_module` VALUES ( 3, 1, 1368976472, 'Головний текст', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, '<div class="container">\n  <div class="row">\n       <div class="span12">	\n          <div class="hero-unit">\n            <h1>Hello World!</h1>\n            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe labore doloremque nesciunt dolore facilis quidem delectus dolorum voluptas repellat quos. Suscipit, dicta, excepturi, possimus, obcaecati tempore ea saepe tenetur officiis veritatis itaque neque placeat quis!</p>\n            <p>\n              <a class="btn btn-primary btn-large">\n                Learn more\n              </a>\n            </p>\n         </div>\n    </div>\n  </div>\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, 0, '' );
INSERT INTO `tl_module` VALUES ( 2, 1, 1368975054, 'Головне Меню', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'navigation', 0, 0, '', '', '', 0, 'nav_default', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:19:"container main-menu";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, 0, '' );
INSERT INTO `tl_module` VALUES ( 4, 1, 1371316072, 'Головні статті', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, '<div class="container">\n  <div class="row">\n        		<div class="span4">\n        			<div class="hero-unit ltblue">\n        				<h3>Lorem ipsum dolor sit amet.</h3>\n        				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, assumenda, fugit, sint voluptas suscipit in sed illum magni dolores officia dolorum ipsa ullam deleniti molestiae commodi iusto inventore pariatur. Cumque.</p>\n        				<p><a href="" class="btn btn-primary">Learn more</a></p>	\n        			</div>\n        		</div>\n        		<div class="span4">\n        			<div class="hero-unit ltblue">\n        				<h3>Deleniti, tempore facere eveniet eius?</h3>\n        				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia, pariatur, et, ipsa perspiciatis in dolores porro non ad ratione laudantium architecto distinctio culpa repellat quibusdam voluptates inventore quod ullam illum.</p>\n        				<p><a href="" class="btn btn-primary">Learn more</a></p>	\n        			</div>\n        		</div>\n        		<div class="span4">\n        			<div class="hero-unit ltblue">\n        				<h3>Odit sapiente fuga ipsa numquam?</h3>\n        				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab, minus, eius doloribus aspernatur hic autem dignissimos repudiandae architecto voluptatum necessitatibus sequi reprehenderit facilis inventore.</p>\n        				<p><a href="" class="btn btn-primary">Learn more</a></p>	\n        			</div>\n        		</div>\n        	</div>\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, 0, '' );
INSERT INTO `tl_module` VALUES ( 5, 1, 1368978541, 'Footer', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, '<div class="container footer">\n  <div class="row">\n    <div class="span12">\n      <div class="well">\n        <div class="pull-left">(c)2013 Rona</div>\n        <div class="pull-right">\n          <p>м.Львів, пл. Галицька 15</p>\n          <p>(032)235-90-81</p>          \n        </div>\n        <div class="clear"></div>\n      </div>\n   </div>\n  </div>\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, 0, '' );
INSERT INTO `tl_module` VALUES ( 6, 1, 1371302939, 'Header Похідна', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '-e91aa329', NULL, '', '', '', NULL, NULL, '<div class="container">\n	<div class="row">\n    	<div class="span12">\n        	<div class="well">\n              <div class="pull-left">\n                <h1><a href="">Rona</a></h1>\n                <h3>Поліграфічні послуги</h3>\n              </div>\n              <div class="span2 pull-right">\n                <img alt="Rona" src="files/theme/img/icons/Rona_black.png">\n              </div>\n              <div class="clear"></div>\n            </div>\n        </div>\n  	</div>\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, 0, '' );
INSERT INTO `tl_module` VALUES ( 7, 1, 1368982740, 'Контакти Блок', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, '<div class="span4 well contact-block">\n  <h3>Контактні дані:</h3>\n  <ul class="contacts">\n    <li>Телефон: (032)235-90-81</li>\n    <li>Адрес: м.Львів, пл. Галицька 15</li>\n    <li>Email: <a href="mailto:support@rona.com.ua">support@rona.com.ua</a></li>\n  </ul>\n  <h3>Lorem ipsum dolor.</h3>\n  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis, pariatur, optio nobis culpa magni labore dicta ea nemo a molestias repudiandae eaque rem consectetur tempora. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis, blanditiis. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, molestias.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum, similique, vitae illo ad perferendis nisi.</p>\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, 0, '' );
INSERT INTO `tl_module` VALUES ( 9, 1, 1371151438, 'Моя Фотогалерея', '', 'msmPhotoGallery', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, 0, '' );
INSERT INTO `tl_module` VALUES ( 10, 1, 1371155631, 'Моя Фотогалерея&#40;Детальніше&#41;', '', 'msmPhotoGalleryView', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, 0, '' );
INSERT INTO `tl_module` VALUES ( 11, 1, 1371305735, 'Калькулятор', '', 'myCalcylator', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, 0, '' );

#---------------------------------------------------------
# Table structure for table 'tl_msm_photos_category'
#---------------------------------------------------------
CREATE TABLE `tl_msm_photos_category` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(25) NOT NULL default '',
  `photo` text NULL,
  `photos` text NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;


#
# Dumping data for table 'tl_msm_photos_category'
#

INSERT INTO `tl_msm_photos_category` VALUES ( 1, 0, 1371151252, 'Візитки', '95', 'a:10:{i:0;i:88;i:1;i:116;i:2;i:117;i:3;i:118;i:4;i:119;i:5;i:120;i:6;i:121;i:7;i:122;i:8;i:123;i:9;i:124;}' );
INSERT INTO `tl_msm_photos_category` VALUES ( 2, 0, 1371153624, 'Рекламки', '107', '' );
INSERT INTO `tl_msm_photos_category` VALUES ( 3, 0, 1371153735, 'Листівки', '124', '' );
INSERT INTO `tl_msm_photos_category` VALUES ( 4, 0, 1371153775, 'Буклети', '120', '' );

#---------------------------------------------------------
# Table structure for table 'tl_msm_photos_items'
#---------------------------------------------------------
CREATE TABLE `tl_msm_photos_items` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(25) NOT NULL default '',
  `photos` text NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_msm_photos_items' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_news'
#---------------------------------------------------------
CREATE TABLE `tl_news` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `headline` varchar(255) NOT NULL default '',
  `alias` varbinary(128) NOT NULL default '',
  `author` int(10) unsigned NOT NULL default '0',
  `date` int(10) unsigned NOT NULL default '0',
  `time` int(10) unsigned NOT NULL default '0',
  `subheadline` varchar(255) NOT NULL default '',
  `teaser` text NULL,
  `addImage` char(1) NOT NULL default '',
  `singleSRC` varchar(255) NOT NULL default '',
  `alt` varchar(255) NOT NULL default '',
  `size` varchar(64) NOT NULL default '',
  `imagemargin` varchar(128) NOT NULL default '',
  `imageUrl` varchar(255) NOT NULL default '',
  `fullsize` char(1) NOT NULL default '',
  `caption` varchar(255) NOT NULL default '',
  `floating` varchar(12) NOT NULL default '',
  `addEnclosure` char(1) NOT NULL default '',
  `enclosure` blob NULL,
  `source` varchar(12) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `articleId` int(10) unsigned NOT NULL default '0',
  `url` varchar(255) NOT NULL default '',
  `target` char(1) NOT NULL default '',
  `cssClass` varchar(255) NOT NULL default '',
  `noComments` char(1) NOT NULL default '',
  `featured` char(1) NOT NULL default '',
  `published` char(1) NOT NULL default '',
  `start` varchar(10) NOT NULL default '',
  `stop` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_news' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_news_archive'
#---------------------------------------------------------
CREATE TABLE `tl_news_archive` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `protected` char(1) NOT NULL default '',
  `groups` blob NULL,
  `allowComments` char(1) NOT NULL default '',
  `notify` varchar(16) NOT NULL default '',
  `sortOrder` varchar(32) NOT NULL default '',
  `perPage` smallint(5) unsigned NOT NULL default '0',
  `moderate` char(1) NOT NULL default '',
  `bbcode` char(1) NOT NULL default '',
  `requireLogin` char(1) NOT NULL default '',
  `disableCaptcha` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_news_archive' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_news_feed'
#---------------------------------------------------------
CREATE TABLE `tl_news_feed` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `alias` varbinary(128) NOT NULL default '',
  `language` varchar(32) NOT NULL default '',
  `archives` blob NULL,
  `format` varchar(32) NOT NULL default '',
  `source` varchar(32) NOT NULL default '',
  `maxItems` smallint(5) unsigned NOT NULL default '0',
  `feedBase` varchar(255) NOT NULL default '',
  `description` text NULL,
  PRIMARY KEY  (`id`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_news_feed' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_newsletter'
#---------------------------------------------------------
CREATE TABLE `tl_newsletter` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `subject` varchar(255) NOT NULL default '',
  `alias` varbinary(128) NOT NULL default '',
  `content` mediumtext NULL,
  `text` mediumtext NULL,
  `addFile` char(1) NOT NULL default '',
  `files` blob NULL,
  `template` varchar(32) NOT NULL default '',
  `sendText` char(1) NOT NULL default '',
  `externalImages` char(1) NOT NULL default '',
  `sender` varchar(128) NOT NULL default '',
  `senderName` varchar(128) NOT NULL default '',
  `sent` char(1) NOT NULL default '',
  `date` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_newsletter' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_newsletter_channel'
#---------------------------------------------------------
CREATE TABLE `tl_newsletter_channel` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `useSMTP` char(1) NOT NULL default '',
  `smtpHost` varchar(64) NOT NULL default '',
  `smtpUser` varchar(128) NOT NULL default '',
  `smtpPass` varchar(32) NOT NULL default '',
  `smtpEnc` varchar(3) NOT NULL default '',
  `smtpPort` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_newsletter_channel' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_newsletter_recipients'
#---------------------------------------------------------
CREATE TABLE `tl_newsletter_recipients` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `email` varchar(255) NOT NULL default '',
  `active` char(1) NOT NULL default '',
  `addedOn` varchar(10) NOT NULL default '',
  `ip` varchar(64) NOT NULL default '',
  `token` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_newsletter_recipients' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_page'
#---------------------------------------------------------
CREATE TABLE `tl_page` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `alias` varbinary(128) NOT NULL default '',
  `type` varchar(32) NOT NULL default '',
  `pageTitle` varchar(255) NOT NULL default '',
  `language` varchar(2) NOT NULL default '',
  `robots` varchar(32) NOT NULL default '',
  `description` text NULL,
  `redirect` varchar(32) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `url` varchar(255) NOT NULL default '',
  `target` char(1) NOT NULL default '',
  `dns` varchar(255) NOT NULL default '',
  `staticFiles` varchar(255) NOT NULL default '',
  `staticPlugins` varchar(255) NOT NULL default '',
  `fallback` char(1) NOT NULL default '',
  `adminEmail` varchar(255) NOT NULL default '',
  `dateFormat` varchar(32) NOT NULL default '',
  `timeFormat` varchar(32) NOT NULL default '',
  `datimFormat` varchar(32) NOT NULL default '',
  `createSitemap` char(1) NOT NULL default '',
  `sitemapName` varchar(32) NOT NULL default '',
  `useSSL` char(1) NOT NULL default '',
  `autoforward` char(1) NOT NULL default '',
  `protected` char(1) NOT NULL default '',
  `groups` blob NULL,
  `includeLayout` char(1) NOT NULL default '',
  `layout` int(10) unsigned NOT NULL default '0',
  `mobileLayout` int(10) unsigned NOT NULL default '0',
  `includeCache` char(1) NOT NULL default '',
  `cache` int(10) unsigned NOT NULL default '0',
  `includeChmod` char(1) NOT NULL default '',
  `cuser` int(10) unsigned NOT NULL default '0',
  `cgroup` int(10) unsigned NOT NULL default '0',
  `chmod` varchar(255) NOT NULL default '',
  `noSearch` char(1) NOT NULL default '',
  `cssClass` varchar(64) NOT NULL default '',
  `sitemap` varchar(32) NOT NULL default '',
  `hide` char(1) NOT NULL default '',
  `guests` char(1) NOT NULL default '',
  `tabindex` smallint(5) unsigned NOT NULL default '0',
  `accesskey` char(1) NOT NULL default '',
  `published` char(1) NOT NULL default '',
  `start` varchar(10) NOT NULL default '',
  `stop` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`),
  KEY `alias` (`alias`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;


#
# Dumping data for table 'tl_page'
#

INSERT INTO `tl_page` VALUES ( 1, 0, 128, 1368973200, 'Українська', 'ukrajinska', 'root', '', 'uk', '', NULL, 'permanent', 0, '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', '', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 2, 1, 128, 1368973940, 'Головна', 'main', 'regular', 'Головна', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '1', 1, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 4, 1, 256, 1368976109, 'Контакти', 'contacts', 'regular', 'Контакти', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '1', 2, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 5, 1, 192, 1368983504, 'Про друк', 'about-print', 'regular', 'Про друк', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '1', 2, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 6, 1, 224, 1368986265, 'Ціни та послуги', 'services', 'regular', 'Ціни та послуги', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '1', 2, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 7, 1, 240, 1371152425, 'Галерея', 'gallery', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '1', 2, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 8, 7, 128, 1371152485, 'Галерея Детальніше', 'gallery_view', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '1', 2, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '1', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 9, 6, 128, 1371303384, 'Калькулятор', 'calculator', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '1', 2, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '1', '', 0, '', '1', '', '' );

#---------------------------------------------------------
# Table structure for table 'tl_repository_installs'
#---------------------------------------------------------
CREATE TABLE `tl_repository_installs` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `extension` varchar(32) NOT NULL default '',
  `version` int(9) NOT NULL default '0',
  `build` int(9) NOT NULL default '0',
  `alpha` char(1) NOT NULL default '',
  `beta` char(1) NOT NULL default '',
  `rc` char(1) NOT NULL default '',
  `stable` char(1) NOT NULL default '1',
  `lickey` varchar(255) NOT NULL default '',
  `delprot` char(1) NOT NULL default '',
  `updprot` char(1) NOT NULL default '',
  `error` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;


#
# Dumping data for table 'tl_repository_installs'
#

INSERT INTO `tl_repository_installs` VALUES ( 1, 1368978996, 'dlh_googlemaps', 10010049, 3, '0', '0', '0', '1', '', '', '', '' );
INSERT INTO `tl_repository_installs` VALUES ( 2, 1368988296, 'BackupDB', 30010009, 16, '0', '0', '0', '1', '', '', '', '' );

#---------------------------------------------------------
# Table structure for table 'tl_repository_instfiles'
#---------------------------------------------------------
CREATE TABLE `tl_repository_instfiles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `filename` varchar(255) NOT NULL default '',
  `filetype` char(1) NOT NULL default 'F',
  `flag` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=139 ;


#
# Dumping data for table 'tl_repository_instfiles'
#

INSERT INTO `tl_repository_instfiles` VALUES ( 1, 1, 1368978994, 'system/modules/dlh_googlemaps', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 2, 1, 1368978994, 'system/modules/dlh_googlemaps/Content_dlh_googlemaps.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 3, 1, 1368978994, 'system/modules/dlh_googlemaps/DYNAMIC_MARKERS.TXT', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 4, 1, 1368978994, 'system/modules/dlh_googlemaps/DYNAMISCHE_MARKER.TXT', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 5, 1, 1368978994, 'system/modules/dlh_googlemaps/INSTALL.txt', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 6, 1, 1368978994, 'system/modules/dlh_googlemaps/LGPL.txt', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 7, 1, 1368978994, 'system/modules/dlh_googlemaps/Module_dlh_googlemaps.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 8, 1, 1368978994, 'system/modules/dlh_googlemaps/README.md', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 9, 1, 1368978994, 'system/modules/dlh_googlemaps/README.txt', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 10, 1, 1368978994, 'system/modules/dlh_googlemaps/config', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 11, 1, 1368978994, 'system/modules/dlh_googlemaps/config/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 12, 1, 1368978994, 'system/modules/dlh_googlemaps/config/autoload.ini', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 13, 1, 1368978994, 'system/modules/dlh_googlemaps/config/autoload.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 14, 1, 1368978994, 'system/modules/dlh_googlemaps/config/config.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 15, 1, 1368978994, 'system/modules/dlh_googlemaps/config/database.sql', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 16, 1, 1368978994, 'system/modules/dlh_googlemaps/dca', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 17, 1, 1368978994, 'system/modules/dlh_googlemaps/dca/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 18, 1, 1368978994, 'system/modules/dlh_googlemaps/dca/tl_content.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 19, 1, 1368978994, 'system/modules/dlh_googlemaps/dca/tl_dlh_googlemaps.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 20, 1, 1368978994, 'system/modules/dlh_googlemaps/dca/tl_dlh_googlemaps_elements.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 21, 1, 1368978994, 'system/modules/dlh_googlemaps/dca/tl_module.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 22, 1, 1368978994, 'system/modules/dlh_googlemaps/dlhListWizard.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 23, 1, 1368978994, 'system/modules/dlh_googlemaps/dlh_googlemaps.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 24, 1, 1368978994, 'system/modules/dlh_googlemaps/html', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 25, 1, 1368978994, 'system/modules/dlh_googlemaps/html/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 26, 1, 1368978994, 'system/modules/dlh_googlemaps/html/be_styles.css', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 27, 1, 1368978994, 'system/modules/dlh_googlemaps/html/dlh_googlemaps.css', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 28, 1, 1368978994, 'system/modules/dlh_googlemaps/html/icon.gif', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 29, 1, 1368978994, 'system/modules/dlh_googlemaps/languages/cs', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 30, 1, 1368978994, 'system/modules/dlh_googlemaps/languages', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 31, 1, 1368978994, 'system/modules/dlh_googlemaps/languages/cs/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 32, 1, 1368978994, 'system/modules/dlh_googlemaps/languages/cs/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 33, 1, 1368978994, 'system/modules/dlh_googlemaps/languages/cs/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 34, 1, 1368978994, 'system/modules/dlh_googlemaps/languages/cs/tl_content.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 35, 1, 1368978994, 'system/modules/dlh_googlemaps/languages/cs/tl_dlh_googlemaps.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 36, 1, 1368978994, 'system/modules/dlh_googlemaps/languages/cs/tl_dlh_googlemaps_elements.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 37, 1, 1368978994, 'system/modules/dlh_googlemaps/languages/cs/tl_module.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 38, 1, 1368978994, 'system/modules/dlh_googlemaps/languages/de', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 39, 1, 1368978994, 'system/modules/dlh_googlemaps/languages/de/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 40, 1, 1368978994, 'system/modules/dlh_googlemaps/languages/de/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 41, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/de/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 42, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/de/tl_content.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 43, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/de/tl_dlh_googlemaps.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 44, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/de/tl_dlh_googlemaps_elements.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 45, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/de/tl_module.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 46, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/en', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 47, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/en/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 48, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/en/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 49, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/en/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 50, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/en/tl_content.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 51, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/en/tl_dlh_googlemaps.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 52, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/en/tl_dlh_googlemaps_elements.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 53, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/en/tl_module.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 54, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/fr', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 55, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/fr/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 56, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/fr/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 57, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/fr/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 58, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/fr/tl_content.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 59, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/fr/tl_dlh_googlemaps.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 60, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/fr/tl_dlh_googlemaps_elements.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 61, 1, 1368978995, 'system/modules/dlh_googlemaps/languages/fr/tl_module.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 62, 1, 1368978995, 'system/modules/dlh_googlemaps/templates', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 63, 1, 1368978995, 'system/modules/dlh_googlemaps/templates/ce_dlh_googlemaps.html5', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 64, 1, 1368978995, 'system/modules/dlh_googlemaps/templates/ce_dlh_googlemaps.tpl', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 65, 1, 1368978995, 'system/modules/dlh_googlemaps/templates/ce_dlh_googlemaps.xhtml', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 66, 1, 1368978995, 'system/modules/dlh_googlemaps/templates/ce_dlh_googlemaps_static.html5', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 67, 1, 1368978995, 'system/modules/dlh_googlemaps/templates/ce_dlh_googlemaps_static.tpl', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 68, 1, 1368978995, 'system/modules/dlh_googlemaps/templates/ce_dlh_googlemaps_static.xhtml', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 69, 1, 1368978995, 'system/modules/dlh_googlemaps/templates/mod_dlh_googlemaps.html5', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 70, 1, 1368978995, 'system/modules/dlh_googlemaps/templates/mod_dlh_googlemaps.tpl', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 71, 1, 1368978995, 'system/modules/dlh_googlemaps/templates/mod_dlh_googlemaps.xhtml', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 72, 2, 1368988291, 'files/AutoBackupDB', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 73, 2, 1368988292, 'files/AutoBackupDB/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 74, 2, 1368988292, 'system/modules/BackupDB', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 75, 2, 1368988292, 'system/modules/BackupDB/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 76, 2, 1368988292, 'system/modules/BackupDB/AutoBackupDB.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 77, 2, 1368988292, 'system/modules/BackupDB/BackupDbCommon.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 78, 2, 1368988292, 'system/modules/BackupDB/BackupDbRun.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 79, 2, 1368988292, 'system/modules/BackupDB/CHANGELOG.txt', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 80, 2, 1368988292, 'system/modules/BackupDB/MakeWsTemplateRun.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 81, 2, 1368988292, 'system/modules/BackupDB/ModuleBackupDB.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 82, 2, 1368988292, 'system/modules/BackupDB/config', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 83, 2, 1368988292, 'system/modules/BackupDB/config/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 84, 2, 1368988292, 'system/modules/BackupDB/config/autoload.ini', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 85, 2, 1368988292, 'system/modules/BackupDB/config/autoload.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 86, 2, 1368988292, 'system/modules/BackupDB/config/config.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 87, 2, 1368988292, 'system/modules/BackupDB/dca', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 88, 2, 1368988292, 'system/modules/BackupDB/dca/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 89, 2, 1368988292, 'system/modules/BackupDB/dca/tl_settings.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 90, 2, 1368988292, 'system/modules/BackupDB/htacc', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 91, 2, 1368988292, 'system/modules/BackupDB/iconBackup.gif', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 92, 2, 1368988292, 'system/modules/BackupDB/languages/de', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 93, 2, 1368988292, 'system/modules/BackupDB/languages', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 94, 2, 1368988292, 'system/modules/BackupDB/languages/de/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 95, 2, 1368988292, 'system/modules/BackupDB/languages/de/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 96, 2, 1368988292, 'system/modules/BackupDB/languages/de/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 97, 2, 1368988292, 'system/modules/BackupDB/languages/de/tl_settings.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 98, 2, 1368988292, 'system/modules/BackupDB/languages/en', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 99, 2, 1368988292, 'system/modules/BackupDB/languages/en/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 100, 2, 1368988292, 'system/modules/BackupDB/languages/en/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 101, 2, 1368988292, 'system/modules/BackupDB/languages/en/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 102, 2, 1368988292, 'system/modules/BackupDB/languages/en/tl_settings.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 103, 2, 1368988292, 'system/modules/BackupDB/languages/es', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 104, 2, 1368988292, 'system/modules/BackupDB/languages/es/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 105, 2, 1368988292, 'system/modules/BackupDB/languages/es/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 106, 2, 1368988292, 'system/modules/BackupDB/languages/es/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 107, 2, 1368988292, 'system/modules/BackupDB/languages/fa', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 108, 2, 1368988292, 'system/modules/BackupDB/languages/fa/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 109, 2, 1368988292, 'system/modules/BackupDB/languages/fa/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 110, 2, 1368988293, 'system/modules/BackupDB/languages/fa/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 111, 2, 1368988293, 'system/modules/BackupDB/languages/fa/tl_settings.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 112, 2, 1368988293, 'system/modules/BackupDB/languages/fr', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 113, 2, 1368988293, 'system/modules/BackupDB/languages/fr/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 114, 2, 1368988293, 'system/modules/BackupDB/languages/fr/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 115, 2, 1368988293, 'system/modules/BackupDB/languages/fr/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 116, 2, 1368988293, 'system/modules/BackupDB/languages/fr/tl_settings.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 117, 2, 1368988293, 'system/modules/BackupDB/languages/it', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 118, 2, 1368988293, 'system/modules/BackupDB/languages/it/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 119, 2, 1368988293, 'system/modules/BackupDB/languages/it/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 120, 2, 1368988293, 'system/modules/BackupDB/languages/it/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 121, 2, 1368988293, 'system/modules/BackupDB/languages/ja', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 122, 2, 1368988293, 'system/modules/BackupDB/languages/ja/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 123, 2, 1368988293, 'system/modules/BackupDB/languages/ja/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 124, 2, 1368988293, 'system/modules/BackupDB/languages/ja/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 125, 2, 1368988293, 'system/modules/BackupDB/languages/ja/tl_settings.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 126, 2, 1368988293, 'system/modules/BackupDB/languages/pl', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 127, 2, 1368988293, 'system/modules/BackupDB/languages/pl/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 128, 2, 1368988293, 'system/modules/BackupDB/languages/pl/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 129, 2, 1368988293, 'system/modules/BackupDB/languages/pl/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 130, 2, 1368988293, 'system/modules/BackupDB/languages/ru', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 131, 2, 1368988293, 'system/modules/BackupDB/languages/ru/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 132, 2, 1368988293, 'system/modules/BackupDB/languages/ru/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 133, 2, 1368988293, 'system/modules/BackupDB/languages/ru/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 134, 2, 1368988293, 'system/modules/BackupDB/languages/ru/tl_settings.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 135, 2, 1368988293, 'system/modules/BackupDB/templates', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 136, 2, 1368988293, 'system/modules/BackupDB/templates/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 137, 2, 1368988293, 'system/modules/BackupDB/templates/mod_backup_db.html5', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 138, 2, 1368988293, 'system/modules/BackupDB/templates/mod_backup_db.tpl', 'F', '' );

#---------------------------------------------------------
# Table structure for table 'tl_search'
#---------------------------------------------------------
CREATE TABLE `tl_search` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `text` mediumtext NULL,
  `filesize` double unsigned NOT NULL default '0',
  `checksum` varchar(32) NOT NULL default '',
  `protected` char(1) NOT NULL default '',
  `groups` blob NULL,
  `language` varchar(2) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`),
  KEY `url` (`url`),
  FULLTEXT KEY `text` (`text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;


#
# Dumping data for table 'tl_search'
#

INSERT INTO `tl_search` VALUES ( 1, 8, 1371316364, 'Галерея Детальніше', 'uk/gallery_view/item/1.html', 'Галерея Детальніше Rona Поліграфічні послуги Візитки (c)2013 Rona м.Львів, пл. Галицька 15 (032)235-90-81 Rona, Візитки', '10.59', 'e7b0b7eefa9e6240808c1f4787e8b8f3', '', 0x30, 'uk' );
INSERT INTO `tl_search` VALUES ( 5, 6, 1371303150, 'Ціни та послуги', 'uk/services.html', 'Ціни та послуги Rona Поліграфічні послуги Ціни та послуги Візитні картки Шовкотрафаретний друк від 65 грн. /100 шт. Офчетний друк від 160 грн. /100 шт. Цифровий (лазерний друк) від 50 грн. /100 шт. Тиснення фольгою від 120 грн. /100 шт. Бланки та конверти від 150 грн./100 шт. Наклейки (стікери) Вартість розраховується індивідуально в залежності розмірів, форми, колірності та тиражу, а також матеріалу Друк по пластику Вартість розраховується індивідуально в залежності розмірів, форми, колірності та тиражу, а також матеріалу Розрахувати ціну (c)2013 Rona м.Львів, пл. Галицька 15 (032)235-90-81 Rona,', '5.45', '95d3b00e046682481150580004258698', '', 0x30, 'uk' );
INSERT INTO `tl_search` VALUES ( 2, 2, 1371300353, 'Головна', 'uk/main.html', 'Головна Hello World! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe labore doloremque nesciunt dolore facilis quidem delectus dolorum voluptas repellat quos. Suscipit, dicta, excepturi, possimus, obcaecati tempore ea saepe tenetur officiis veritatis itaque neque placeat quis! Learn more Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, assumenda, fugit, sint voluptas suscipit in sed illum magni dolores officia dolorum ipsa ullam deleniti molestiae commodi iusto inventore pariatur. Cumque. Learn more Deleniti, tempore facere eveniet eius? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia, pariatur, et, ipsa perspiciatis in dolores porro non ad ratione laudantium architecto distinctio culpa repellat quibusdam voluptates inventore quod ullam illum. Learn more Odit sapiente fuga ipsa numquam? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab, minus, eius doloribus aspernatur hic autem dignissimos repudiandae architecto voluptatum necessitatibus sequi reprehenderit facilis inventore. Learn more (c)2013 Rona м.Львів, пл. Галицька 15 (032)235-90-81 Rona,', '6.52', '43605f678d23804cfc961210652e76b5', '', 0x30, 'uk' );
INSERT INTO `tl_search` VALUES ( 3, 7, 1371302374, 'Галерея', 'uk/gallery.html', 'Галерея Rona Поліграфічні послуги Візитки Рекламки Листівки Буклети (c)2013 Rona м.Львів, пл. Галицька 15 (032)235-90-81', '5.51', '4fdc10b08ba067c473054dbc492fb5b4', '', 0x30, 'uk' );
INSERT INTO `tl_search` VALUES ( 4, 8, 1371302381, 'Галерея Детальніше', 'uk/gallery_view/item/3.html', 'Галерея Детальніше Rona Поліграфічні послуги Листівки > (c)2013 Rona м.Львів, пл. Галицька 15 (032)235-90-81', '4.42', '0683094b6de55254ae78f3b0fa009984', '', 0x30, 'uk' );
INSERT INTO `tl_search` VALUES ( 6, 5, 1371302460, 'Про друк', 'uk/about-print.html', 0xd09fd180d0be20d0b4d180d183d0ba20526f6e6120d09fd0bed0bbd196d0b3d180d0b0d184d196d187d0bdd19620d0bfd0bed181d0bbd183d0b3d0b820d0a2d180d0b0d184d0b0d180d0b5d182d0bdd0b8d0b920d0b4d180d183d0ba2e20d0a8d0bed0b2d0bad0bed0b3d180d0b0d184d196d18f2e20d0a0d196d0b7d0bed0b3d180d0b0d184d196d18f2e20d0a2d180d0b0d184d0b0d180d0b5d182d0bdd0b8d0b920d0b4d180d183d0ba28d0b220d0b0d0bdd0b3d0bb2e2053637265656e207072696e74696e6729202d20d0a6d0b520d0bcd0b5d182d0bed0b420d0b2d196d0b4d182d0b2d0bed180d0b5d0bdd0bdd18f20d182d0b5d0bad181d182d18320d19620d0b3d180d0b0d184d196d187d0bdd0b8d18520d0b7d0bed0b1d180d0b0d0b6d0b5d0bdd18c20d0b7d0b020d0b4d0bed0bfd0bed0bcd0bed0b3d0bed18e20d0b4d180d183d0bad0bed0b2d0b0d0bdd0bed19720d184d0bed180d0bcd0b82028d182d180d0b0d184d0b0d180d0b5d182d183292c20d187d0b5d180d0b5d0b720d18fd0bad18320d184d0b0d180d0b1d0b020d0bfd180d0bed0bdd0b8d0bad0b0d19420d0bdd0b020d0b4d180d183d0bad0bed0b2d0b0d0bdd0b8d0b920d0bcd0b0d182d0b5d180d196d0b0d0bb2e20d0a6d0b5d0b920d181d0bfd0bed181d196d0b120d0b4d180d183d0bad18320d0b720d184d0bed180d0bc2c20d0b4d180d183d0bad183d0b2d0b0d0bbd18cd0bdd19620d0b5d0bbd0b5d0bcd0b5d0bdd182d0b820d18fd0bad0b8d18520d0bfd180d0bed0bfd183d181d0bad0b0d18ed182d18c20d187d0b5d180d0b5d0b720d181d0b5d0b1d0b520d184d0b0d180d0b1d1832c20d0b020d0bfd180d0bed0b1d196d0bbd18cd0bdd19620d197d19720d0b7d0b0d182d180d0b8d0bcd183d18ed182d18c2e20d0a8d0bed0b2d0bad0bed0b3d180d0b0d184d196d18f20d0a8d0bed0b2d0bad0bed0b3d180d0b0d184d196d194d18e20d0bdd0b0d0b7d0b8d0b2d0b0d18ed182d18c20d181d0bfd0bed181d196d0b120d182d180d0b0d184d0b0d180d0b5d182d0bdd0bed0b3d0be20d0b4d180d183d0bad1832c20d0b220d18fd0bad0bed0bcd18320d18fd0ba20d184d0bed180d0bcd0bdd0bed0b3d0be20d0bcd0b0d182d0b5d180d196d0b0d0bbd18320d0b2d0b8d0bad0bed180d0b8d181d182d0bed0b2d183d18ed182d18cd181d18f20d181d0bfd0b5d186d196d0b0d0bbd18cd0bdd19620d0bdd0b5d0b9d0bbd0bed0bdd0bed0b2d19620d0b0d0b1d0be20d0bcd0b5d182d0b0d0bbd0b5d0b2d19620d181d196d182d0bad0b820d187d0b0d181d182d0bed182d0bed18e20342d32303020d0bdd0b8d182d0bed0ba202f20d181d0bc20d19620d182d0bed0b2d189d0b8d0bdd0bed18e20d0bfd180d0b8d0b1d0bbd0b8d0b7d0bdd0be2031382d32303020d0bcd0bad0bc2e20d097d0b0d0b7d0b2d0b8d187d0b0d0b920d0bfd180d0bed0b1d196d0bbd18cd0bdd19620d0b5d0bbd0b5d0bcd0b5d0bdd182d0b820d184d0bed180d0bcd183d18ed182d18c20d0b1d0b5d0b7d0bfd0bed181d0b5d180d0b5d0b4d0bdd18cd0be20d0bdd0b020d181d196d182d186d19620d184d0bed182d0bed185d196d0bcd196d187d0bdd0b8d0bc20d181d0bfd0bed181d0bed0b1d0bed0bc2e20d094d0bbd18f20d0b2d0b8d0b3d0bed182d0bed0b2d0bbd0b5d0bdd0bdd18f20d0b4d180d183d0bad0bed0b2d0b0d0bdd0bed19720d184d0bed180d0bcd0b820d0bcd0bed0b6d0b520d0b1d183d182d0b820d0b2d0b8d0bad0bed180d0b8d181d182d0b0d0bdd0b8d0b920d18fd0ba20d181d183d185d0b8d0b920d0bfd0bbd196d0b2d0bad0bed0b2d0b8d0b920d184d0bed182d0bed181d0bbd0bed0b92028d0bad0b0d0bfd196d0bbd18fd180d0bdd0b020d0bfd0bbd196d0b2d0bad0b0292c20d182d0b0d0ba20d19620d180d196d0b4d0bad0b020d184d0bed182d0bed0b5d0bcd183d0bbd18cd181d196d18f2c20d0b2d0b8d181d183d188d183d194d182d18cd181d18f20d0bdd0b020d181d196d182d186d19620d0bfd196d181d0bbd18f20d0bdd0b0d0bdd0b5d181d0b5d0bdd0bdd18f2e20d0a320d0b7d0b2d0b8d187d0b0d0b9d0bdd0bed0bcd18320d181d182d0b0d0bdd19620d184d0bed182d0bed181d0bbd0bed0b920d0b7d0bcd0b8d0b2d0b0d194d182d18cd181d18f20d0b2d0bed0b4d0bed18e2e20d0a320d0bfd0b5d180d0b5d0b2d0b0d0b6d0bdd196d0b920d0b1d196d0bbd18cd188d0bed181d182d19620d0b2d0b8d0bfd0b0d0b4d0bad196d0b220d0b5d0bad181d0bfd0bed0bdd183d0b2d0b0d0bdd0bdd18f20d0bfd180d0bed0b2d0bed0b4d0b8d182d18cd181d18f20d0bad0bed0bdd182d0b0d0bad182d0bdd0b8d0bc20d181d0bfd0bed181d0bed0b1d0bed0bc2e20d09fd196d181d0bbd18f20d0b5d0bad181d0bfd0bed0bdd183d0b2d0b0d0bdd0bdd18f20d0a3d0a42dd0b2d0b8d0bfd180d0bed0bcd196d0bdd18ed0b2d0b0d0bdd0bdd18fd0bc20d184d0bed182d0bed181d0bbd0bed0b920d0bfd0bed0bbd196d0bcd0b5d180d0b8d0b7d183d194d182d18cd181d18f20d19620d0bfd0b5d180d0b5d181d182d0b0d19420d0b7d0bcd0b8d0b2d0b0d182d0b8d181d18f20d0b2d0bed0b4d0bed18e2c20d0b7d0b020d0b2d0b8d0bdd18fd182d0bad0bed0bc20d0b4d196d0bbd18fd0bdd0bed0ba2c20d09dd09520d0b7d0b0d0b7d0bdd0b0d0bbd0b820d0bed0bfd180d0bed0bcd196d0bdd0b5d0bdd0bdd18f2028d0b7d0b0d0bad180d0b8d182d19620d0b7d0bed0b1d180d0b0d0b6d0b5d0bdd0bdd18fd0bc20d0bfd0bed0b7d0b8d182d0b8d0b2d183292e20d097d0bcd0b8d182d19620d0b4d196d0bbd18fd0bdd0bad0b820d181d196d182d0bad0b820d181d182d0b0d18ed182d18c20d0b4d180d183d0bad183d18ed187d0b8d0bcd0b820d0b5d0bbd0b5d0bcd0b5d0bdd182d0b0d0bcd0b82e20d094d180d183d0ba20d0bcd0bed0b6d0b520d0bfd180d0bed0b2d0bed0b4d0b8d182d0b8d181d18f20d0bfd180d0b0d0bad182d0b8d187d0bdd0be20d0bfd0be20d0b2d181d196d18520d0bcd0b0d182d0b5d180d196d0b0d0bbd0b0d185202d20d0bfd0b0d0bfd196d1802c20d0bfd0bbd0b0d181d182d0b8d0ba2c20d09fd092d0a52c20d181d0bad0bbd0be2c20d0bad0b5d180d0b0d0bcd196d0bad0b02c20d0bcd0b5d182d0b0d0bb2c20d182d0bad0b0d0bdd0b8d0bdd0b02c20d188d0bad196d180d0b020d19620d1822e20d0b42e20d0b2d196d0b4d0bfd0bed0b2d196d0b4d0bdd0b8d0bcd0b820d184d0b0d180d0b1d0b0d0bcd0b82e20d0a4d0b0d180d0b1d0b820d0bcd0bed0b6d183d182d18c20d0b2d196d0b4d180d196d0b7d0bdd18fd182d0b8d181d18f20d0b7d0b020d182d0b8d0bfd0bed0bc20d181d0bfd0bed0bbd183d187d0bdd0bed0b3d0be202d20d0b2d0bed0b4d0bdd1962c20d181d0bed0bbd18cd0b2d0b5d0bdd182d0bdd1962028d0bdd0b020d0bed181d0bdd0bed0b2d19620d180d0bed0b7d187d0b8d0bdd0bdd0b8d0bad196d0b2292c20d183d0bbd18cd182d180d0b0d184d196d0bed0bbd0b5d182d0bed0b2d0bed0b3d0be20d0b7d0b0d182d0b2d0b5d180d0b4d196d0bdd0bdd18f2c20d0bfd0bbd0b0d181d182d0b8d0b7d0bed0bbd1962028d189d0be20d0b2d0b8d0bcd0b0d0b3d0b0d18ed182d18c20d182d0b5d0bcd0bfd0b5d180d0b0d182d183d180d0bdd18320d184d196d0bad181d0b0d186d196d18e292e20d0a2d0b0d0bad0bed0b620d188d0bed0b2d0bad0bed0b3d180d0b0d184d196d18f20d0b2d0b8d0bad0bed180d0b8d181d182d0bed0b2d183d194d182d18cd181d18f20d0b4d0bbd18f20d0b4d180d183d0bad18320d0b4d0b5d0bad0bed0bbd0b5d0b92028d0bfd0b5d180d0b5d0bad0bbd0b0d0b4d0bdd0b8d18520d0bad0b0d180d182d0b8d0bdd0bed0ba2920d0b720d0bdd0b0d181d182d183d0bfd0bdd0b8d0bc20d0b2d0b8d0bfd0b0d0bbd18ed0b2d0b0d0bdd0bdd18fd0bc20d0b0d0b1d0be20d0b1d0b5d0b72e20d08620d0b4d0bbd18f20d0bdd0b0d0bdd0b5d181d0b5d0bdd0bdd18f20c2abd0a1d0bad180d0b5d182d187c2bb2028d0bfd180d0b0d182d0b82920d188d0b0d180d18320d0b4d0bbd18f20d0bbd0bed182d0b5d180d0b5d0b9d0bdd0b8d18520d0bad0b2d0b8d182d0bad196d0b220d19620d0bad0b0d180d182d0bed0ba20d0bed0bfd0bbd0b0d182d0b82e20d0a1d0b2d0bed18e20d0bdd0b0d0b7d0b2d18320c2abd188d0bed0b2d0bad0bed0b3d180d0b0d184d196d18fc2bb20d186d0b5d0b920d181d0bfd0bed181d196d0b120d0bed182d180d0b8d0bcd0b0d0b220d0b72dd0b7d0b020d0bfd0b0d182d0b5d0bdd182d18320d0bfd180d0bed186d0b5d181d18320d182d180d0b0d184d0b0d180d0b5d182d0bdd0bed0b3d0be20d0b4d180d183d0bad1832c20d0b2d0b8d0b4d0b0d0bdd0b8d0b920d0b2203139303720d180d0bed186d19620d0bfd196d0b420d0bdd0b0d0b7d0b2d0bed18e20d0b0d0bdd0b3d0bb2e2053696c6b2073637265656e207072696e74696e67202d20d0b4d180d183d0ba20d188d0bed0b2d0bad0bed0b2d0b8d0bc20d181d0b8d182d0bed0bc2e20d092d0b2d0b0d0b6d0b0d194d182d18cd181d18f2c20d189d0be20d186d0b5d0b920d181d0bfd0bed181d196d0b120d0b4d180d183d0bad18320d0b2d0b8d0bdd0b8d0bad0bbd0b020d0b220d0b3d0bbd0b8d0b1d0bed0bad18320d0b4d0b0d0b2d0bdd0b8d0bdd1832c20d0b0d0bbd0b520d181d183d187d0b0d181d0bdd0b8d0b920d0b2d0b8d0b3d0bbd18fd0b420d182d180d0b0d184d0b0d180d0b5d182d0bdd0b8d0b920d0b4d180d183d0ba20d0bdd0b0d0b1d183d0bbd0b020d0b220d181d0b5d180d0b5d0b4d0b8d0bdd19620d0bcd0b8d0bdd183d0bbd0bed0b3d0be20d181d182d0bed0bbd196d182d182d18f2e20d097d0b0d0b2d0b4d18fd0bad0b820d0bed181d0bed0b1d0bbd0b8d0b2d0bed181d182d18fd0bc20d182d0b5d185d0bdd0bed0bbd0bed0b3d196d19720d188d0bed0b2d0bad0bed0b3d180d0b0d184d196d18f20d0b4d0bed0b7d0b2d0bed0bbd18fd19420d0b4d180d183d0bad183d0b2d0b0d182d0b820d18fd0ba20d0bdd0b020d0bfd0bbd0bed181d0bad0b8d1852c20d182d0b0d0ba20d19620d0bdd0b020d186d0b8d0bbd196d0bdd0b4d180d0b8d187d0bdd0b8d18520d0bfd0bed0b2d0b5d180d185d0bdd18fd1852e20d097d0b0d180d0b0d0b720d182d180d0b0d184d0b0d180d0b5d182d0bdd0b8d0b920d0b4d180d183d0ba20d0b7d0b0d181d182d0bed181d0bed0b2d183d194d182d18cd181d18f20d0bdd0b520d182d196d0bbd18cd0bad0b820d0b220d0bfd0bed0bbd196d0b3d180d0b0d184d196d1972c20d0b0d0bbd0b520d19620d0b220d182d0b5d0bad181d182d0b8d0bbd18cd0bdd196d0b92c20d0b5d0bbd0b5d0bad182d180d0bed0bdd0bdd0bed1972c20d0b0d0b2d182d0bed0bcd0bed0b1d196d0bbd18cd0bdd0bed1972c20d181d0bad0bbd18fd0bdd0bed1972c20d0bad0b5d180d0b0d0bcd196d187d0bdd0bed19720d182d0b020d196d0bdd188d0b8d18520d0b3d0b0d0bbd183d0b7d18fd18520d0bfd180d0bed0bcd0b8d181d0bbd0bed0b2d0bed181d182d1962e20d09ed0b4d0bdd196d194d18e20d0b720d0bed181d0bed0b1d0bbd0b8d0b2d0bed181d182d0b5d0b920d188d0bed0b2d0bad0bed0b3d180d0b0d184d196d19720d19420d0bcd0bed0b6d0bbd0b8d0b2d196d181d182d18c20d0bed182d180d0b8d0bcd183d0b2d0b0d182d0b820d182d0bed0b2d181d182d0b8d0b920d0b1d0b0d180d0b2d0b8d181d182d0b8d0b920d188d0b0d18020d0b2d196d0b420d0bdd0bed180d0bcd0b0d0bbd18cd0bdd0b8d1852038202d20313020d0bcd0bad0bc20d0b4d0be2035303020d19620d0b1d196d0bbd18cd188d0b52028d0b4d0bbd18f20d0bed184d181d0b5d182d18320d0b1d0b0d180d0b2d0b8d181d182d0b8d0b920d188d0b0d18020d181d0bad0bbd0b0d0b4d0b0d19420312d3220d0bcd0bad0bc2920d0b720d0b2d180d0b0d0b6d0b0d18ed187d0bed18e20d183d0bad180d18bd0b2d0b8d181d182d0bed181d182d18cd18e20d19620d18fd181d0bad180d0b0d0b2d196d181d182d18e20d0bad0bed0bbd18cd0bed180d1832e20d0a2d0b0d0bad0bed0b620d0bcd0bed0b6d0bdd0b020d188d0b8d180d0bed0bad0be20d0b2d0b8d0bad0bed180d0b8d181d182d0bed0b2d183d0b2d0b0d182d0b820d181d0bfd0b5d186d0b5d184d0b5d0bad182d0b8202d20d0b3d0bbd196d182d182d0b5d1802028d0b1d0bbd0b8d181d0bad196d182d0bad0b8292c20d0bed0b127d194d0bcd0bdd18320d0b4d180d183d0ba2c20d196d0bcd196d182d0b0d186d196d18e20d0bed0bad181d0b0d0bcd0b8d182d18320d0b0d0b1d0be20d0b3d183d0bcd0b82e20d0a0d196d0b7d0bed0b3d180d0b0d184d196d18f20d09ed0b4d0bdd0b8d0bc20d0b720d180d196d0b7d0bdd0bed0b2d0b8d0b4d196d0b220d182d180d0b0d184d0b0d180d0b5d182d0bdd0bed0b3d0be20d0b4d180d183d0bad18320d19420d180d0b8d0b7d0bed0b3d180d0b0d184d196d18f2c20d18fd0bad18320d0b2d196d0b4d0bdd0bed181d18fd182d18c20d0b4d0be20d181d0bfd0bed181d0bed0b1d196d0b220d0bed0bfd0b5d180d0b0d182d0b8d0b2d0bdd0bed19720d0bfd0bed0bbd196d0b3d180d0b0d184d196d1972e20d0a0d196d0b7d0bed0b3d180d0b0d184d196d18f202d20d0b4d180d183d0ba20d0b720d0b2d0b8d0bad0bed180d0b8d181d182d0b0d0bdd0bdd18fd0bc20d0b4d180d183d0bad0bed0b2d0b0d0bdd0bed19720d184d0bed180d0bcd0b82c20d0b2d0b8d0b3d0bed182d0bed0b2d0bbd0b5d0bdd0bed19720d0bfd180d0bed0bfd0b0d0bbd18ed0b2d0b0d0bdd0bdd18f20d182d0b5d180d0bcd0bed0b3d0bed0bbd0bed0b2d0bad0b820d0bcd196d0bad180d0bed0bed182d0b2d0bed180d196d0b220d0b220d184d0bed180d0bcd0bdd0bed0bcd18320d0bcd0b0d182d0b5d180d196d0b0d0bbd1962028d0bcd0b0d0b9d181d182d0b5d1802dd0bfd0bbd196d0b2d186d1962920d0b4d0bbd18f20d183d182d0b2d0bed180d0b5d0bdd0bdd18f20d0b4d180d183d0bad183d18ed187d0b8d18520d0b5d0bbd0b5d0bcd0b5d0bdd182d196d0b22e20d0a0d196d0b7d0bed0b3d180d0b0d184d196d18f20d0b2d0b8d0bad0bed180d0b8d181d182d0bed0b2d183d18ed182d18c20d0b4d0bbd18f20d0bed0bfd0b5d180d0b0d182d0b8d0b2d0bdd0bed0b3d0be20d180d0bed0b7d0bcd0bdd0bed0b6d0b5d0bdd0bdd18f20d0bdd0b020d0bfd0b0d0bfd0b5d180d19620d0bed0b4d0bdd0bed0bad0bed0bbd196d180d0bdd0bed19720d0b0d0b1d0be20d0b1d0b0d0b3d0b0d182d0bed0b1d0b0d180d0b2d0bdd0bed1972028d0bfd0bed0b2d0bdd0bed0bad0bed0bbd18cd0bed180d0bed0b2d0b8d0b920d0b4d180d183d0ba20d0bdd0b5d0bcd0bed0b6d0bbd0b8d0b2d0b0292e20d0a6d0b5d0b920d181d0bfd0bed181d196d0b120d0b5d0bad0bed0bdd0bed0bcd196d187d0bdd0be20d0b5d184d0b5d0bad182d0b8d0b2d0bdd0b8d0b920d0bfd180d0b820d0b4d180d183d0bad18320d0bfd180d0bed0b4d183d0bad186d196d19720d0bdd0b5d0b2d0b5d0bbd0b8d0bad0b8d0bcd0b820d182d0b8d180d0b0d0b6d0b0d0bcd0b82028d0b2d196d0b420323020d0b4d0be20312e2030303020d0bfd180d0b8d0bc2e20292e20d09fd180d0b820d181d0b8d0bbd18cd0bdd0bed0bcd18320d0b7d0b1d196d0bbd18cd188d0b5d0bdd0bdd19620d0bcd0bed0b6d0bdd0b020d0bfd0bed0b1d0b0d187d0b8d182d0b82c20d189d0be20d188d182d180d0b8d185d0b820d0bdd0b020d0b2d196d0b4d182d0b8d181d0bdd0b5d0bdd0bdd19620d181d0bad0bbd0b0d0b4d0b0d18ed182d18cd181d18f20d0b720d182d0bed187d0bed0ba20d19620d0bdd0b0d0b3d0b0d0b4d183d18ed182d18c20d0bfd183d0bdd0bad182d0b8d180d0bdd19620d0bbd196d0bdd196d1972e20d0afd0ba20d0bed180d0b8d0b3d196d0bdd0b0d0bbd196d0b220d0bcd0bed0b6d183d182d18c20d0b1d183d182d0b820d0b2d0b8d0bad0bed180d0b8d181d182d0b0d0bdd19620d0bfd0b0d0bfd0b5d180d0bed0b2d19620d0b4d0bed0bad183d0bcd0b5d0bdd182d0b820d0b0d0b1d0be20d184d0b0d0b9d0bbd0b82e20d094d180d183d0ba20d0bdd0b020d180d196d0b7d0bed0b3d180d0b0d184d19620d0bfd180d0bed185d0bed0b4d0b8d182d18c20d0b720d180d0bed0b7d0b4d196d0bbd18cd0bdd0bed18e20d0b7d0b4d0b0d182d0bdd196d181d182d18e20d0b4d0be20363030206470692e20d0a0d196d0b7d0bed0b3d180d0b0d1842028d094d183d0bfd0bbd196d0bad0b0d182d0bed180d0b82c20d09ad0bed0bfd196d0bfd180d196d0bdd182d0b5d18029202d20d186d0b520d0b5d0bad0bed0bbd0bed0b3d196d187d0bdd0be20d187d0b8d181d182d0b52c20d188d0b2d0b8d0b4d0bad0b520d19620d0b5d0bad0bed0bdd0bed0bcd196d187d0bdd0b520d183d181d182d0b0d182d0bad183d0b2d0b0d0bdd0bdd18f2c20d18fd0bad0b520d0bcd0bed0b6d0b520d180d0bed0b7d182d0b0d188d0bed0b2d183d0b2d0b0d182d0b8d181d18f20d0b220d0b1d183d0b4d18c2dd18fd0bad0bed0bcd18320d0bfd180d0b8d0bcd196d189d0b5d0bdd0bdd1962e20d09ed0b1d0bbd0b0d181d182d19620d0b7d0b0d181d182d0bed181d183d0b2d0b0d0bdd0bdd18f20d0a2d180d0b0d184d0b0d180d0b5d182d0bdd0b8d0b920d0b4d180d183d0ba20d19420d0bed0b4d0bdd0b8d0bc20d0b720d182d0b5d185d0bdd0bed0bbd0bed0b3d196d187d0bdd0b8d18520d181d0bfd0bed181d0bed0b1d196d0b220d0b4d180d183d0bad1832e20d092d0bed0bdd0b020d0bed185d0bed0bfd0bbd18ed19420d180d196d0b7d0bdd19620d181d184d0b5d180d0b820d0b7d0b0d181d182d0bed181d183d0b2d0b0d0bdd0bdd18f3a20d0b2d196d0b420d180d183d187d0bdd0b8d18520d180d0bed0b1d196d18220d0b4d0be20d0b2d0b8d181d0bed0bad0bed182d0b5d185d0bdd0bed0bbd0bed0b3d196d187d0bdd0b8d18520d0bfd180d0bed0bcd0b8d181d0bbd0bed0b2d0b8d18520d180d196d188d0b5d0bdd18c2c20d0b2d196d0b420d0bdd0b0d0b9d0bcd0b5d0bdd188d0b8d18520d184d0bed180d0bcd0b0d182d196d0b220d0bfd180d0b820d0b2d0b8d0b3d0bed182d0bed0b2d0bbd0b5d0bdd0bdd19620d0b4d180d183d0bad0bed0b2d0b0d0bdd0b8d18520d0bfd0bbd0b0d18220d0b4d0be20d181d0b0d0bcd0b8d18520d0b2d0b5d0bbd0b8d0bad0b8d18520d0bfd0bbd0b0d0bad0b0d182d196d0b220d0bfd0bed180d18fd0b4d0bad1832033d1853620d0bc20d19620d0b2d196d0b420d0bed0b4d0b8d0bdd0b8d187d0bdd0b8d18520d0b5d0bad0b7d0b5d0bcd0bfd0bbd18fd180d196d0b220d0b4d0be20d0b2d0b5d0bbd0b8d0bad0b8d18520d0bdd0b0d0bad0bbd0b0d0b4d196d0b22e20d0a1d0bfd0bed181d0bed0b1d0bed0bc20d182d180d0b0d184d0b0d180d0b5d182d0bdd0bed0b3d0be20d0b4d180d183d0bad18320d0b7d0b0d0bfd0b5d187d0b0d182d183d18ed182d18cd181d18f20d0bfd0b0d0bfd196d1802c20d182d0b5d0bad181d182d0b8d0bbd18c2c20d0bad0b5d180d0b0d0bcd196d0bad0b020d19620d181d0b8d0bdd182d0b5d182d0b8d187d0bdd19620d0bcd0b0d182d0b5d180d196d0b0d0bbd0b820d18320d0b2d0b8d0b3d0bbd18fd0b4d19620d0bfd0bed0bbd0bed182d0bdd0b02c20d0bed0bad180d0b5d0bcd0b8d18520d0b0d180d0bad183d188d196d0b22c20d0b020d182d0b0d0bad0bed0b620d182d0b0d0bad19620d0b2d0b8d180d0bed0b1d0b820d180d196d0b7d0bdd0bed0b3d0be20d0bfd180d0b8d0b7d0bdd0b0d187d0b5d0bdd0bdd18f20d19620d184d0bed180d0bcd0b82c20d18fd0ba20d0b1d0b0d0bdd0bad0b82c20d0bad0b5d0bbd0b8d185d0b820d19620d0bfd0b0d0bdd0b5d0bbd1962e20d09fd0b0d0bbd196d182d180d0b820d184d0b0d180d0b120d185d0b0d180d0b0d0bad182d0b5d180d0b8d0b7d183d18ed182d18cd181d18f20d0b2d0b5d0bbd0b8d0bad0bed18e20d180d196d0b7d0bdd0bed0bcd0b0d0bdd196d182d0bdd196d181d182d18e2e20d097d0bdd0b0d185d0bed0b4d18fd182d18c20d188d0b8d180d0bed0bad0b520d0b7d0b0d181d182d0bed181d183d0b2d0b0d0bdd0bdd18f20d181d0bfd0b5d186d196d0b0d0bbd18cd0bdd19620d184d0b0d180d0b1d0b820d0b4d0bbd18f20d0bdd0b0d0b9d180d196d0b7d0bdd0bed0bcd0b0d0bdd196d182d0bdd196d188d0b8d18520d0bed0b1d0bbd0b0d181d182d0b5d0b92e20d0a320d182d180d0b0d184d0b0d180d0b5d182d0bdd0bed0bcd18320d181d0bfd0bed181d0bed0b1d19620d0b4d0bbd18f20d0b4d180d183d0bad18320d196d0bbd18ed181d182d180d0b0d186d196d0b920d0b7d0bdd0b0d185d0bed0b4d0b8d182d18c20d188d0b8d180d0bed0bad0b520d0b7d0b0d181d182d0bed181d183d0b2d0b0d0bdd0bdd18f20d187d0bed182d0b8d180d0b8d0bad0bed0bbd196d180d0bdd0bed0b3d0be20d0b4d180d183d0ba2e20d097d0b0d181d182d0bed181d0bed0b2d183d0b2d0b0d0bdd19620d0b4d0bbd18f20d182d180d0b0d184d0b0d180d0b5d182d0bdd0bed0b3d0be20d0b4d180d183d0bad18320d0b0d0bfd0b0d180d0b0d182d0b82c20d0bcd0b0d188d0b8d0bdd0b820d182d0b020d183d181d182d0b0d182d0bad183d0b2d0b0d0bdd0bdd18f20d0bed185d0bed0bfd0bbd18ed18ed182d18c20d18fd0ba20d0b7d0b2d0b8d187d0b0d0b9d0bdd19620d0bfd180d0b8d181d182d0bed181d183d0b2d0b0d0bdd0bdd18f20d19620d183d181d182d0b0d0bdd0bed0b2d0bad0b82c20d189d0be20d0b2d0b8d0bad0bed180d0b8d181d182d0bed0b2d183d18ed182d18cd181d18f20d0b220d0bad183d181d182d0b0d180d0bdd0bed0bcd18320d0b2d0b8d180d0bed0b1d0bdd0b8d186d182d0b2d1962c20d182d0b0d0ba20d19620d0b2d0b5d0bbd0b8d0bad19620d0bcd0b0d188d0b8d0bdd0b820d0b4d0bbd18f20d180d0bed0b1d196d18220d18320d0bfd180d0bed0bcd0b8d181d0bbd0bed0b2d0b8d18520d0bcd0b0d181d188d182d0b0d0b1d0b0d1852e202863293230313320526f6e6120d0bc2ed09bd18cd0b2d196d0b22c20d0bfd0bb2e20d093d0b0d0bbd0b8d186d18cd0bad0b02031352028303332293233352d39302d38312066696c65732f7468656d652f696d672f73686f6c6b2e6a7065672c2066696c65732f7468656d652f696d672f73746f706b612e6a7067, '12.45', 'f1ae365e0253dd6ab6e612a0784cfd11', '', 0x30, 'uk' );
INSERT INTO `tl_search` VALUES ( 7, 4, 1371302508, 'Контакти', 'uk/contacts.html', 'Контакти Rona Поліграфічні послуги Контактні дані: Телефон: (032)235-90-81 Адрес: м.Львів, пл. Галицька 15 Email: support@rona.com.ua Lorem ipsum dolor. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis, pariatur, optio nobis culpa magni labore dicta ea nemo a molestias repudiandae eaque rem consectetur tempora. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis, blanditiis. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, molestias.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum, similique, vitae illo ad perferendis nisi. (c)2013 Rona м.Львів, пл. Галицька 15 (032)235-90-81', '8.31', '3403750ec8470ce232460da15bb4fc18', '', 0x30, 'uk' );
INSERT INTO `tl_search` VALUES ( 8, 9, 1371310553, 'Калькулятор', 'uk/calculator.html', 'Калькулятор Rona Поліграфічні послуги Калькулятор Введіть кількість візиток Оберіть тип паперу Офсетний - 0.20 грн/шт. Крейдований папір - 0.30 грн/шт. Папір для глибокого друку - 0.23 грн/шт. Оберіть тип фарби Фарба1 - 0.4 грн/шт. Фарба2 - 0.7 грн/шт. Вартість: 60 грн. (c)2013 Rona м.Львів, пл. Галицька 15 (032)235-90-81 Rona', '6.7', 'e2cfce266db46c5a093f2d6e962e0934', '', 0x30, 'uk' );
INSERT INTO `tl_search` VALUES ( 9, 8, 1371316178, 'Галерея Детальніше', 'uk/gallery_view/item/2.html', 'Галерея Детальніше Rona Поліграфічні послуги Рекламки > (c)2013 Rona м.Львів, пл. Галицька 15 (032)235-90-81 Rona', '4.56', '821efeacbd27f4353c3f70ed1071a934', '', 0x30, 'uk' );

#---------------------------------------------------------
# Table structure for table 'tl_search_index'
#---------------------------------------------------------
CREATE TABLE `tl_search_index` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `word` varbinary(64) NOT NULL default '',
  `relevance` smallint(5) unsigned NOT NULL default '0',
  `language` varchar(2) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`),
  KEY `word` (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1486 ;


#
# Dumping data for table 'tl_search_index'
#

INSERT INTO `tl_search_index` VALUES ( 1485, 1, '235-90-81', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1484, 1, '032', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1483, 1, '15', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1482, 1, 'галицька', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1481, 1, 'пл', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1480, 1, 'м.львів', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1479, 1, '2013', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1478, 1, 'c', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1477, 1, 'візитки', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1476, 1, 'послуги', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1475, 1, 'поліграфічні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1474, 1, 'rona', 3, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1473, 1, 'детальніше', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1472, 1, 'галерея', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 23, 2, 'головна', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 24, 2, 'hello', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 25, 2, 'world', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 26, 2, 'lorem', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 27, 2, 'ipsum', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 28, 2, 'dolor', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 29, 2, 'sit', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 30, 2, 'amet', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 31, 2, 'consectetur', 4, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 32, 2, 'adipisicing', 4, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 33, 2, 'elit', 4, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 34, 2, 'saepe', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 35, 2, 'labore', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 36, 2, 'doloremque', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 37, 2, 'nesciunt', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 38, 2, 'dolore', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 39, 2, 'facilis', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 40, 2, 'quidem', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 41, 2, 'delectus', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 42, 2, 'dolorum', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 43, 2, 'voluptas', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 44, 2, 'repellat', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 45, 2, 'quos', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 46, 2, 'suscipit', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 47, 2, 'dicta', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 48, 2, 'excepturi', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 49, 2, 'possimus', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 50, 2, 'obcaecati', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 51, 2, 'tempore', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 52, 2, 'ea', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 53, 2, 'tenetur', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 54, 2, 'officiis', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 55, 2, 'veritatis', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 56, 2, 'itaque', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 57, 2, 'neque', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 58, 2, 'placeat', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 59, 2, 'quis', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 60, 2, 'learn', 4, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 61, 2, 'more', 4, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 62, 2, 'accusantium', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 63, 2, 'assumenda', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 64, 2, 'fugit', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 65, 2, 'sint', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 66, 2, 'in', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 67, 2, 'sed', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 68, 2, 'illum', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 69, 2, 'magni', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 70, 2, 'dolores', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 71, 2, 'officia', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 72, 2, 'ipsa', 3, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 73, 2, 'ullam', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 74, 2, 'deleniti', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 75, 2, 'molestiae', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 76, 2, 'commodi', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 77, 2, 'iusto', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 78, 2, 'inventore', 3, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 79, 2, 'pariatur', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 80, 2, 'cumque', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 81, 2, 'facere', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 82, 2, 'eveniet', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 83, 2, 'eius', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 84, 2, 'mollitia', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 85, 2, 'et', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 86, 2, 'perspiciatis', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 87, 2, 'porro', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 88, 2, 'non', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 89, 2, 'ad', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 90, 2, 'ratione', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 91, 2, 'laudantium', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 92, 2, 'architecto', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 93, 2, 'distinctio', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 94, 2, 'culpa', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 95, 2, 'quibusdam', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 96, 2, 'voluptates', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 97, 2, 'quod', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 98, 2, 'odit', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 99, 2, 'sapiente', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 100, 2, 'fuga', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 101, 2, 'numquam', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 102, 2, 'ab', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 103, 2, 'minus', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 104, 2, 'doloribus', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 105, 2, 'aspernatur', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 106, 2, 'hic', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 107, 2, 'autem', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 108, 2, 'dignissimos', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 109, 2, 'repudiandae', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 110, 2, 'voluptatum', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 111, 2, 'necessitatibus', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 112, 2, 'sequi', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 113, 2, 'reprehenderit', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 114, 2, 'c', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 115, 2, '2013', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 116, 2, 'rona', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 117, 2, 'м.львів', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 118, 2, 'пл', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 119, 2, 'галицька', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 120, 2, '15', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 121, 2, '032', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 122, 2, '235-90-81', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 123, 3, 'галерея', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 124, 3, 'rona', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 125, 3, 'поліграфічні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 126, 3, 'послуги', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 127, 3, 'візитки', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 128, 3, 'рекламки', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 129, 3, 'листівки', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 130, 3, 'буклети', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 131, 3, 'c', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 132, 3, '2013', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 133, 3, 'м.львів', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 134, 3, 'пл', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 135, 3, 'галицька', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 136, 3, '15', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 137, 3, '032', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 138, 3, '235-90-81', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 139, 4, 'галерея', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 140, 4, 'детальніше', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 141, 4, 'rona', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 142, 4, 'поліграфічні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 143, 4, 'послуги', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 144, 4, 'листівки', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 145, 4, 'c', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 146, 4, '2013', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 147, 4, 'м.львів', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 148, 4, 'пл', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 149, 4, 'галицька', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 150, 4, '15', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 151, 4, '032', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 152, 4, '235-90-81', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 806, 5, 'розмірів', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 805, 5, 'залежності', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 804, 5, 'в', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 803, 5, 'індивідуально', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 802, 5, 'розраховується', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 801, 5, 'вартість', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 800, 5, 'стікери', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 799, 5, 'наклейки', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 798, 5, '150', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 797, 5, 'конверти', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 796, 5, 'бланки', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 795, 5, '120', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 794, 5, 'фольгою', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 793, 5, 'тиснення', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 792, 5, '50', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 791, 5, 'лазерний', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 790, 5, 'цифровий', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 789, 5, '160', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 788, 5, 'офчетний', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 787, 5, 'шт', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 786, 5, '100', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 785, 5, 'грн', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 784, 5, '65', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 783, 5, 'від', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 782, 5, 'друк', 4, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 781, 5, 'шовкотрафаретний', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 780, 5, 'картки', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 779, 5, 'візитні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 778, 5, 'поліграфічні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 777, 5, 'rona', 3, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 776, 5, 'послуги', 3, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 775, 5, 'та', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 774, 5, 'ціни', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 216, 6, 'про', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 217, 6, 'друк', 13, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 218, 6, 'rona', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 219, 6, 'поліграфічні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 220, 6, 'послуги', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 221, 6, 'трафаретний', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 222, 6, 'шовкографія', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 223, 6, 'різографія', 4, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 224, 6, 'в', 10, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 225, 6, 'англ', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 226, 6, 'screen', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 227, 6, 'printing', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 228, 6, 'це', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 229, 6, 'метод', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 230, 6, 'відтворення', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 231, 6, 'тексту', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 232, 6, 'і', 19, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 233, 6, 'графічних', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 234, 6, 'зображень', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 235, 6, 'за', 3, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 236, 6, 'допомогою', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 237, 6, 'друкованої', 3, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 238, 6, 'форми', 4, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 239, 6, 'трафарету', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 240, 6, 'через', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 241, 6, 'яку', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 242, 6, 'фарба', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 243, 6, 'проникає', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 244, 6, 'на', 9, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 245, 6, 'друкований', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 246, 6, 'матеріал', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 247, 6, 'цей', 4, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 248, 6, 'спосіб', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 249, 6, 'друку', 11, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 250, 6, 'з', 9, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 251, 6, 'форм', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 252, 6, 'друкувальні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 253, 6, 'елементи', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 254, 6, 'яких', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 255, 6, 'пропускають', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 256, 6, 'себе', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 257, 6, 'фарбу', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 258, 6, 'а', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 259, 6, 'пробільні', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 260, 6, 'її', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 261, 6, 'затримують', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 262, 6, 'шовкографією', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 263, 6, 'називають', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 264, 6, 'трафаретного', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 265, 6, 'якому', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 266, 6, 'як', 6, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 267, 6, 'формного', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 268, 6, 'матеріалу', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 269, 6, 'використовуються', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 270, 6, 'спеціальні', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 271, 6, 'нейлонові', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 272, 6, 'або', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 273, 6, 'металеві', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 274, 6, 'сітки', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 275, 6, 'частотою', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 276, 6, '4-200', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 277, 6, 'ниток', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 278, 6, 'см', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 279, 6, 'товщиною', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 280, 6, 'приблизно', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 281, 6, '18-200', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 282, 6, 'мкм', 3, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 283, 6, 'зазвичай', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 284, 6, 'формують', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 285, 6, 'безпосередньо', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 286, 6, 'сітці', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 287, 6, 'фотохімічним', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 288, 6, 'способом', 3, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 289, 6, 'для', 11, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 290, 6, 'виготовлення', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 291, 6, 'може', 3, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 292, 6, 'бути', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 293, 6, 'використаний', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 294, 6, 'сухий', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 295, 6, 'плівковий', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 296, 6, 'фотослой', 3, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 297, 6, 'капілярна', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 298, 6, 'плівка', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 299, 6, 'так', 3, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 300, 6, 'рідка', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 301, 6, 'фотоемульсія', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 302, 6, 'висушується', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 303, 6, 'після', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 304, 6, 'нанесення', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 305, 6, 'у', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 306, 6, 'звичайному', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 307, 6, 'стані', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 308, 6, 'змивається', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 309, 6, 'водою', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 310, 6, 'переважній', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 311, 6, 'більшості', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 312, 6, 'випадків', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 313, 6, 'експонування', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 314, 6, 'проводиться', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 315, 6, 'контактним', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 316, 6, 'уф-випромінюванням', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 317, 6, 'полімеризується', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 318, 6, 'перестає', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 319, 6, 'змиватися', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 320, 6, 'винятком', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 321, 6, 'ділянок', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 322, 6, 'не', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 323, 6, 'зазнали', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 324, 6, 'опромінення', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 325, 6, 'закриті', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 326, 6, 'зображенням', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 327, 6, 'позитиву', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 328, 6, 'змиті', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 329, 6, 'ділянки', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 330, 6, 'стають', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 331, 6, 'друкуючими', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 332, 6, 'елементами', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 333, 6, 'проводитися', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 334, 6, 'практично', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 335, 6, 'по', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 336, 6, 'всіх', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 337, 6, 'матеріалах', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 338, 6, 'папір', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 339, 6, 'пластик', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 340, 6, 'пвх', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 341, 6, 'скло', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 342, 6, 'кераміка', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 343, 6, 'метал', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 344, 6, 'тканина', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 345, 6, 'шкіра', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 346, 6, 'т', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 347, 6, 'д', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 348, 6, 'відповідними', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 349, 6, 'фарбами', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 350, 6, 'фарби', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 351, 6, 'можуть', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 352, 6, 'відрізнятися', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 353, 6, 'типом', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 354, 6, 'сполучного', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 355, 6, 'водні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 356, 6, 'сольвентні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 357, 6, 'основі', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 358, 6, 'розчинників', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 359, 6, 'ультрафіолетового', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 360, 6, 'затвердіння', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 361, 6, 'пластизолі', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 362, 6, 'що', 4, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 363, 6, 'вимагають', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 364, 6, 'температурну', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 365, 6, 'фіксацію', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 366, 6, 'також', 3, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 367, 6, 'використовується', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 368, 6, 'деколей', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 369, 6, 'перекладних', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 370, 6, 'картинок', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 371, 6, 'наступним', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 372, 6, 'випалюванням', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 373, 6, 'без', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 374, 6, 'скретч', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 375, 6, 'прати', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 376, 6, 'шару', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 377, 6, 'лотерейних', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 378, 6, 'квитків', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 379, 6, 'карток', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 380, 6, 'оплати', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 381, 6, 'свою', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 382, 6, 'назву', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 383, 6, 'отримав', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 384, 6, 'з-за', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 385, 6, 'патенту', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 386, 6, 'процесу', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 387, 6, 'виданий', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 388, 6, '1907', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 389, 6, 'році', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 390, 6, 'під', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 391, 6, 'назвою', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 392, 6, 'silk', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 393, 6, 'шовковим', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 394, 6, 'ситом', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 395, 6, 'вважається', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 396, 6, 'виникла', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 397, 6, 'глибоку', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 398, 6, 'давнину', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 399, 6, 'але', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 400, 6, 'сучасний', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 401, 6, 'вигляд', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 402, 6, 'набула', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 403, 6, 'середині', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 404, 6, 'минулого', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 405, 6, 'століття', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 406, 6, 'завдяки', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 407, 6, 'особливостям', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 408, 6, 'технології', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 409, 6, 'дозволяє', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 410, 6, 'друкувати', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 411, 6, 'плоских', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 412, 6, 'циліндричних', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 413, 6, 'поверхнях', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 414, 6, 'зараз', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 415, 6, 'застосовується', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 416, 6, 'тільки', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 417, 6, 'поліграфії', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 418, 6, 'текстильній', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 419, 6, 'електронної', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 420, 6, 'автомобільної', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 421, 6, 'скляної', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 422, 6, 'керамічної', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 423, 6, 'та', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 424, 6, 'інших', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 425, 6, 'галузях', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 426, 6, 'промисловості', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 427, 6, 'однією', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 428, 6, 'особливостей', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 429, 6, 'шовкографії', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 430, 6, 'є', 3, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 431, 6, 'можливість', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 432, 6, 'отримувати', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 433, 6, 'товстий', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 434, 6, 'барвистий', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 435, 6, 'шар', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 436, 6, 'від', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 437, 6, 'нормальних', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 438, 6, '8', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 439, 6, '10', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 440, 6, 'до', 7, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 441, 6, '500', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 442, 6, 'більше', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 443, 6, 'офсету', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 444, 6, 'складає', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 445, 6, '1-2', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 446, 6, 'вражаючою', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 447, 6, 'укрывистостью', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 448, 6, 'яскравістю', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 449, 6, 'кольору', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 450, 6, 'можна', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 451, 6, 'широко', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 452, 6, 'використовувати', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 453, 6, 'спецефекти', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 454, 6, 'гліттер', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 455, 6, 'блискітки', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 456, 6, 'об\'ємну', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 457, 6, 'імітацію', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 458, 6, 'оксамиту', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 459, 6, 'гуми', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 460, 6, 'одним', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 461, 6, 'різновидів', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 462, 6, 'ризографія', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 463, 6, 'відносять', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 464, 6, 'способів', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 465, 6, 'оперативної', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 466, 6, 'використанням', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 467, 6, 'виготовленої', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 468, 6, 'пропалювання', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 469, 6, 'термоголовки', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 470, 6, 'мікроотворів', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 471, 6, 'формному', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 472, 6, 'матеріалі', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 473, 6, 'майстер-плівці', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 474, 6, 'утворення', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 475, 6, 'друкуючих', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 476, 6, 'елементів', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 477, 6, 'використовують', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 478, 6, 'оперативного', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 479, 6, 'розмноження', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 480, 6, 'папері', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 481, 6, 'одноколірної', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 482, 6, 'багатобарвної', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 483, 6, 'повнокольоровий', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 484, 6, 'неможлива', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 485, 6, 'економічно', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 486, 6, 'ефективний', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 487, 6, 'при', 3, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 488, 6, 'продукції', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 489, 6, 'невеликими', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 490, 6, 'тиражами', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 491, 6, '20', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 492, 6, '1', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 493, 6, '000', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 494, 6, 'прим', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 495, 6, 'сильному', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 496, 6, 'збільшенні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 497, 6, 'побачити', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 498, 6, 'штрихи', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 499, 6, 'відтисненні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 500, 6, 'складаються', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 501, 6, 'точок', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 502, 6, 'нагадують', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 503, 6, 'пунктирні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 504, 6, 'лінії', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 505, 6, 'оригіналів', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 506, 6, 'використані', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 507, 6, 'паперові', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 508, 6, 'документи', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 509, 6, 'файли', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 510, 6, 'різографі', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 511, 6, 'проходить', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 512, 6, 'роздільною', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 513, 6, 'здатністю', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 514, 6, '600', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 515, 6, 'dpi', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 516, 6, 'різограф', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 517, 6, 'дуплікатори', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 518, 6, 'копіпрінтер', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 519, 6, 'екологічно', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 520, 6, 'чисте', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 521, 6, 'швидке', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 522, 6, 'економічне', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 523, 6, 'устаткування', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 524, 6, 'яке', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 525, 6, 'розташовуватися', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 526, 6, 'будь-якому', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 527, 6, 'приміщенні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 528, 6, 'області', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 529, 6, 'застосування', 4, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 530, 6, 'технологічних', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 531, 6, 'вона', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 532, 6, 'охоплює', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 533, 6, 'різні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 534, 6, 'сфери', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 535, 6, 'ручних', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 536, 6, 'робіт', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 537, 6, 'високотехнологічних', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 538, 6, 'промислових', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 539, 6, 'рішень', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 540, 6, 'найменших', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 541, 6, 'форматів', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 542, 6, 'виготовленні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 543, 6, 'друкованих', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 544, 6, 'плат', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 545, 6, 'самих', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 546, 6, 'великих', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 547, 6, 'плакатів', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 548, 6, 'порядку', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 549, 6, '3х6', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 550, 6, 'м', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 551, 6, 'одиничних', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 552, 6, 'екземплярів', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 553, 6, 'накладів', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 554, 6, 'запечатуються', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 555, 6, 'текстиль', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 556, 6, 'синтетичні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 557, 6, 'матеріали', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 558, 6, 'вигляді', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 559, 6, 'полотна', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 560, 6, 'окремих', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 561, 6, 'аркушів', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 562, 6, 'такі', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 563, 6, 'вироби', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 564, 6, 'різного', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 565, 6, 'призначення', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 566, 6, 'банки', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 567, 6, 'келихи', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 568, 6, 'панелі', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 569, 6, 'палітри', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 570, 6, 'фарб', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 571, 6, 'характеризуються', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 572, 6, 'великою', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 573, 6, 'різноманітністю', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 574, 6, 'знаходять', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 575, 6, 'широке', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 576, 6, 'найрізноманітніших', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 577, 6, 'областей', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 578, 6, 'трафаретному', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 579, 6, 'способі', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 580, 6, 'ілюстрацій', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 581, 6, 'знаходить', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 582, 6, 'чотириколірного', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 583, 6, 'застосовувані', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 584, 6, 'апарати', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 585, 6, 'машини', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 586, 6, 'охоплюють', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 587, 6, 'звичайні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 588, 6, 'пристосування', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 589, 6, 'установки', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 590, 6, 'кустарному', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 591, 6, 'виробництві', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 592, 6, 'великі', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 593, 6, 'масштабах', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 594, 6, 'c', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 595, 6, '2013', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 596, 6, 'м.львів', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 597, 6, 'пл', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 598, 6, 'галицька', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 599, 6, '15', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 600, 6, '032', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 601, 6, '235-90-81', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 602, 6, 'files', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 603, 6, 'theme', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 604, 6, 'img', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 605, 6, 'sholk.jpeg', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 606, 6, 'stopka.jpg', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 770, 7, 'perferendis', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 769, 7, 'ad', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 768, 7, 'illo', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 767, 7, 'vitae', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 766, 7, 'similique', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 765, 7, 'illum', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 764, 7, 'molestias.lorem', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 763, 7, 'aperiam', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 762, 7, 'blanditiis', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 761, 7, 'quis', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 760, 7, 'tempora', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 759, 7, 'rem', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 758, 7, 'eaque', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 757, 7, 'repudiandae', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 756, 7, 'molestias', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 755, 7, 'a', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 754, 7, 'nemo', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 753, 7, 'ea', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 752, 7, 'dicta', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 751, 7, 'labore', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 750, 7, 'magni', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 749, 7, 'culpa', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 748, 7, 'nobis', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 747, 7, 'optio', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 746, 7, 'pariatur', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 744, 7, 'elit', 4, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 745, 7, 'officiis', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 743, 7, 'adipisicing', 4, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 741, 7, 'amet', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 742, 7, 'consectetur', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 740, 7, 'sit', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 739, 7, 'dolor', 6, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 738, 7, 'ipsum', 6, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 737, 7, 'lorem', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 736, 7, 'rona.com.ua', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 735, 7, 'support', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 734, 7, 'email', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 733, 7, '15', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 732, 7, 'галицька', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 731, 7, 'пл', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 730, 7, 'м.львів', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 729, 7, 'адрес', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 728, 7, '235-90-81', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 727, 7, '032', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 726, 7, 'телефон', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 725, 7, 'дані', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 724, 7, 'контактні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 723, 7, 'послуги', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 722, 7, 'поліграфічні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 721, 7, 'rona', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 720, 7, 'контакти', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 771, 7, 'nisi', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 772, 7, 'c', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 773, 7, '2013', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 807, 5, 'форми', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 808, 5, 'колірності', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 809, 5, 'тиражу', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 810, 5, 'а', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 811, 5, 'також', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 812, 5, 'матеріалу', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 813, 5, 'по', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 814, 5, 'пластику', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 815, 5, 'розрахувати', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 816, 5, 'ціну', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 817, 5, 'c', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 818, 5, '2013', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 819, 5, 'м.львів', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 820, 5, 'пл', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 821, 5, 'галицька', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 822, 5, '15', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 823, 5, '032', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 824, 5, '235-90-81', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1471, 9, '235-90-81', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1470, 9, '032', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1469, 9, '15', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1468, 9, 'галицька', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1467, 9, 'пл', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1466, 9, 'м.львів', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1465, 9, '2013', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1464, 9, 'c', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1463, 9, 'рекламки', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1462, 9, 'послуги', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1461, 9, 'поліграфічні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1460, 9, 'rona', 3, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1459, 9, 'детальніше', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1458, 9, 'галерея', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1457, 8, '235-90-81', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1456, 8, '032', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1455, 8, '15', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1454, 8, 'галицька', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1453, 8, 'пл', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1452, 8, 'м.львів', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1451, 8, '2013', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1450, 8, 'c', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1449, 8, '60', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1448, 8, 'вартість', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1447, 8, '0.7', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1446, 8, 'фарба2', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1445, 8, '0.4', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1444, 8, 'фарба1', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1443, 8, 'фарби', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1442, 8, '0.23', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1441, 8, 'друку', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1440, 8, 'глибокого', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1439, 8, 'для', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1438, 8, '0.30', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1437, 8, 'папір', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1436, 8, 'крейдований', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1435, 8, 'шт', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1434, 8, 'грн', 6, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1433, 8, '0.20', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1432, 8, 'офсетний', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1431, 8, 'паперу', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1430, 8, 'тип', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1429, 8, 'оберіть', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1428, 8, 'візиток', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1427, 8, 'кількість', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1426, 8, 'введіть', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1425, 8, 'послуги', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1424, 8, 'поліграфічні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1422, 8, 'калькулятор', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 1423, 8, 'rona', 3, 'uk' );

#---------------------------------------------------------
# Table structure for table 'tl_session'
#---------------------------------------------------------
CREATE TABLE `tl_session` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `sessionID` varchar(128) NOT NULL default '',
  `hash` varchar(40) NOT NULL default '',
  `ip` varchar(64) NOT NULL default '',
  `su` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `hash` (`hash`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;


#
# Dumping data for table 'tl_session'
#

INSERT INTO `tl_session` VALUES ( 8, 2, 1371318959, 'BE_USER_AUTH', 'e189rt16mq8lbhtgh0sfmt33p6', '09d98ad2f970f9d5fc7ebfcc743d91665191a605', '127.0.0.1', '' );

#---------------------------------------------------------
# Table structure for table 'tl_style'
#---------------------------------------------------------
CREATE TABLE `tl_style` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `invisible` char(1) NOT NULL default '',
  `selector` varchar(255) NOT NULL default '',
  `category` varchar(32) NOT NULL default '',
  `comment` varchar(255) NOT NULL default '',
  `size` char(1) NOT NULL default '',
  `width` varchar(64) NOT NULL default '',
  `height` varchar(64) NOT NULL default '',
  `minwidth` varchar(64) NOT NULL default '',
  `minheight` varchar(64) NOT NULL default '',
  `maxwidth` varchar(64) NOT NULL default '',
  `maxheight` varchar(64) NOT NULL default '',
  `positioning` char(1) NOT NULL default '',
  `trbl` varchar(128) NOT NULL default '',
  `position` varchar(32) NOT NULL default '',
  `floating` varchar(32) NOT NULL default '',
  `clear` varchar(32) NOT NULL default '',
  `overflow` varchar(32) NOT NULL default '',
  `display` varchar(32) NOT NULL default '',
  `alignment` char(1) NOT NULL default '',
  `margin` varchar(128) NOT NULL default '',
  `padding` varchar(128) NOT NULL default '',
  `align` varchar(32) NOT NULL default '',
  `verticalalign` varchar(32) NOT NULL default '',
  `textalign` varchar(32) NOT NULL default '',
  `background` char(1) NOT NULL default '',
  `bgcolor` varchar(64) NOT NULL default '',
  `bgimage` varchar(255) NOT NULL default '',
  `bgposition` varchar(32) NOT NULL default '',
  `bgrepeat` varchar(32) NOT NULL default '',
  `shadowsize` varchar(128) NOT NULL default '',
  `shadowcolor` varchar(64) NOT NULL default '',
  `gradientAngle` varchar(32) NOT NULL default '',
  `gradientColors` varchar(128) NOT NULL default '',
  `border` char(1) NOT NULL default '',
  `borderwidth` varchar(128) NOT NULL default '',
  `borderstyle` varchar(32) NOT NULL default '',
  `bordercolor` varchar(64) NOT NULL default '',
  `borderradius` varchar(128) NOT NULL default '',
  `bordercollapse` varchar(32) NOT NULL default '',
  `borderspacing` varchar(64) NOT NULL default '',
  `font` char(1) NOT NULL default '',
  `fontfamily` varchar(255) NOT NULL default '',
  `fontsize` varchar(64) NOT NULL default '',
  `fontcolor` varchar(64) NOT NULL default '',
  `lineheight` varchar(64) NOT NULL default '',
  `fontstyle` varchar(255) NOT NULL default '',
  `whitespace` char(1) NOT NULL default '',
  `texttransform` varchar(32) NOT NULL default '',
  `textindent` varchar(64) NOT NULL default '',
  `letterspacing` varchar(64) NOT NULL default '',
  `wordspacing` varchar(64) NOT NULL default '',
  `list` char(1) NOT NULL default '',
  `liststyletype` varchar(32) NOT NULL default '',
  `liststyleimage` varchar(255) NOT NULL default '',
  `own` text NULL,
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`),
  KEY `selector` (`selector`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_style' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_style_sheet'
#---------------------------------------------------------
CREATE TABLE `tl_style_sheet` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `name` varchar(64) NOT NULL default '',
  `embedImages` int(10) unsigned NOT NULL default '0',
  `cc` varchar(32) NOT NULL default '',
  `media` varchar(255) NOT NULL default '',
  `mediaQuery` text NULL,
  `vars` text NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_style_sheet' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_theme'
#---------------------------------------------------------
CREATE TABLE `tl_theme` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `name` varchar(128) NOT NULL default '',
  `author` varchar(128) NOT NULL default '',
  `folders` blob NULL,
  `screenshot` varchar(255) NOT NULL default '',
  `templates` varchar(255) NOT NULL default '',
  `vars` text NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;


#
# Dumping data for table 'tl_theme'
#

INSERT INTO `tl_theme` VALUES ( 1, 1368972509, 'Rona', 'Ростислав Курій', '', '', '', 'a:0:{}' );

#---------------------------------------------------------
# Table structure for table 'tl_undo'
#---------------------------------------------------------
CREATE TABLE `tl_undo` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `fromTable` varchar(255) NOT NULL default '',
  `query` text NULL,
  `affectedRows` smallint(5) unsigned NOT NULL default '0',
  `data` mediumblob NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_undo' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_user'
#---------------------------------------------------------
CREATE TABLE `tl_user` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `username` varchar(64) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `language` varchar(2) NOT NULL default '',
  `backendTheme` varchar(32) NOT NULL default '',
  `uploader` varchar(32) NOT NULL default '',
  `showHelp` char(1) NOT NULL default '',
  `thumbnails` char(1) NOT NULL default '',
  `useRTE` char(1) NOT NULL default '',
  `useCE` char(1) NOT NULL default '',
  `password` varchar(128) NOT NULL default '',
  `pwChange` char(1) NOT NULL default '',
  `admin` char(1) NOT NULL default '',
  `groups` blob NULL,
  `inherit` varchar(12) NOT NULL default '',
  `modules` blob NULL,
  `themes` blob NULL,
  `pagemounts` blob NULL,
  `alpty` blob NULL,
  `filemounts` blob NULL,
  `fop` blob NULL,
  `forms` blob NULL,
  `formp` blob NULL,
  `disable` char(1) NOT NULL default '',
  `start` varchar(10) NOT NULL default '',
  `stop` varchar(10) NOT NULL default '',
  `session` blob NULL,
  `dateAdded` int(10) unsigned NOT NULL default '0',
  `lastLogin` int(10) unsigned NOT NULL default '0',
  `currentLogin` int(10) unsigned NOT NULL default '0',
  `loginCount` smallint(5) unsigned NOT NULL default '3',
  `locked` int(10) unsigned NOT NULL default '0',
  `calendars` blob NULL,
  `calendarp` blob NULL,
  `calendarfeeds` blob NULL,
  `calendarfeedp` blob NULL,
  `faqs` blob NULL,
  `faqp` blob NULL,
  `news` blob NULL,
  `newp` blob NULL,
  `newsfeeds` blob NULL,
  `newsfeedp` blob NULL,
  `newsletters` blob NULL,
  `newsletterp` blob NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;


#
# Dumping data for table 'tl_user'
#

INSERT INTO `tl_user` VALUES ( 1, 1368992393, 'danone', 'Курій Ростислав', 'yriymyrosh@gmail.com', 'uk', 'default', 'FileUpload', '1', '1', '1', '1', '$6$ae21d970f4beb93f$5WDukppFNYyEWQbrkCEdvB3q2vgquxvLP.CgAyUtPDo1fC0OCXMMTbSNXgyX/P8TtpMZDzTc58pcLpg.TySVo.', '', '1', NULL, '', NULL, NULL, 0x613a303a7b7d, NULL, 0x613a303a7b7d, NULL, NULL, NULL, '', '', '', 0x613a31313a7b733a373a2272656665726572223b613a373a7b733a343a226c617374223b733a32343a222f636f6e74616f2f6d61696e2e7068703f646f3d75736572223b733a373a2263757272656e74223b733a32383a222f636f6e74616f2f6d61696e2e7068703f646f3d4261636b75704442223b733a383a22746c5f7468656d65223b733a32363a222f636f6e74616f2f6d61696e2e7068703f646f3d7468656d6573223b733a373a22746c5f70616765223b733a36303a222f636f6e74616f2f6d61696e2e7068703f646f3d706167652672743d6463376261383662373233643466633335353432643333653936353363666630223b733a31373a22746c5f646c685f676f6f676c656d617073223b733a33343a222f636f6e74616f2f6d61696e2e7068703f646f3d646c685f676f6f676c656d617073223b733a31303a22746c5f61727469636c65223b733a32373a222f636f6e74616f2f6d61696e2e7068703f646f3d61727469636c65223b733a373a22746c5f666f726d223b733a32343a222f636f6e74616f2f6d61696e2e7068703f646f3d666f726d223b7d733a32323a227374796c655f73686565745f7570646174655f616c6c223b4e3b733a373a2243555252454e54223b613a313a7b733a333a22494453223b613a323a7b693a303b733a313a2232223b693a313b733a313a2231223b7d7d733a393a22434c4950424f415244223b613a31313a7b733a383a22746c5f7468656d65223b613a303a7b7d733a393a22746c5f6c61796f7574223b613a303a7b7d733a373a22746c5f70616765223b613a303a7b7d733a393a22746c5f6d6f64756c65223b613a303a7b7d733a31323a22746c5f74656d706c61746573223b613a303a7b7d733a31373a22746c5f646c685f676f6f676c656d617073223b613a303a7b7d733a32363a22746c5f646c685f676f6f676c656d6170735f656c656d656e7473223b613a303a7b7d733a31303a22746c5f636f6e74656e74223b613a303a7b7d733a373a22746c5f666f726d223b613a303a7b7d733a31333a22746c5f666f726d5f6669656c64223b613a303a7b7d733a373a22746c5f75736572223b613a303a7b7d7d733a31313a226e65775f7265636f726473223b613a31303a7b733a383a22746c5f7468656d65223b613a313a7b693a303b693a313b7d733a393a22746c5f6c61796f7574223b613a323a7b693a303b693a313b693a313b693a323b7d733a373a22746c5f70616765223b613a363a7b693a303b693a313b693a313b693a323b693a323b693a333b693a333b693a343b693a343b693a353b693a353b693a363b7d733a393a22746c5f6d6f64756c65223b613a373a7b693a303b693a313b693a313b693a323b693a323b693a333b693a333b693a343b693a343b693a353b693a353b693a373b693a363b693a383b7d733a31373a22746c5f646c685f676f6f676c656d617073223b613a313a7b693a303b693a313b7d733a32363a22746c5f646c685f676f6f676c656d6170735f656c656d656e7473223b613a313a7b693a303b693a313b7d733a31303a22746c5f636f6e74656e74223b613a31323a7b693a303b693a313b693a313b693a323b693a323b693a333b693a333b693a343b693a343b693a353b693a353b693a363b693a363b693a373b693a373b693a383b693a383b693a393b693a393b693a31303b693a31303b693a31313b693a31313b693a31323b7d733a373a22746c5f666f726d223b613a313a7b693a303b693a313b7d733a31333a22746c5f666f726d5f6669656c64223b613a353a7b693a303b693a313b693a313b693a323b693a323b693a333b693a333b693a343b693a343b693a353b7d733a373a22746c5f75736572223b613a313a7b693a303b693a323b7d7d733a31303a2243555252454e545f4944223b733a313a2231223b733a31353a226669656c647365745f737461746573223b613a393a7b733a393a22746c5f6c61796f7574223b613a323a7b733a31353a2273656374696f6e735f6c6567656e64223b693a303b733a31333a226578706572745f6c6567656e64223b693a313b7d733a373a22746c5f70616765223b613a323a7b733a31333a22676c6f62616c5f6c6567656e64223b693a313b733a31333a226c61796f75745f6c6567656e64223b693a313b7d733a393a22746c5f6d6f64756c65223b613a343a7b733a31363a227265666572656e63655f6c6567656e64223b693a313b733a31353a2274656d706c6174655f6c6567656e64223b693a313b733a31363a2270726f7465637465645f6c6567656e64223b693a313b733a31333a226578706572745f6c6567656e64223b693a313b7d733a31303a22746c5f636f6e74656e74223b613a333a7b733a31333a226578706572745f6c6567656e64223b693a313b733a31363a2270726f7465637465645f6c6567656e64223b693a303b733a31363a22696e76697369626c655f6c6567656e64223b693a313b7d733a32363a22746c5f646c685f676f6f676c656d6170735f656c656d656e7473223b613a313a7b733a31363a22706172616d657465725f6c6567656e64223b693a313b7d733a31373a22746c5f646c685f676f6f676c656d617073223b613a353a7b733a31363a22706172616d657465725f6c6567656e64223b693a313b733a31343a226d6170747970655f6c6567656e64223b693a313b733a32323a226d617074797065636f6e74726f6c735f6c6567656e64223b693a313b733a32343a226e617669676174696f6e636f6e74726f6c5f6c6567656e64223b693a313b733a31393a227363616c65636f6e74726f6c5f6c6567656e64223b693a313b7d733a373a22746c5f666f726d223b613a323a7b733a31323a2273746f72655f6c6567656e64223b693a313b733a31333a226578706572745f6c6567656e64223b693a313b7d733a31333a22746c5f666f726d5f6669656c64223b613a323a7b733a31333a226578706572745f6c6567656e64223b693a313b733a31333a227375626d69745f6c6567656e64223b693a313b7d733a373a22746c5f75736572223b613a313a7b733a31353a2270617373776f72645f6c6567656e64223b693a313b7d7d733a31323a22746c5f706167655f74726565223b613a353a7b693a313b693a313b693a323b693a303b693a343b693a303b693a353b693a303b693a363b693a303b7d733a31323a22746c5f706167655f6e6f6465223b733a313a2236223b733a32363a22746c5f61727469636c655f746c5f61727469636c655f74726565223b613a333a7b693a323b693a303b693a333b693a303b693a343b693a303b7d733a32353a22747265655f746c5f636f6e74656e745f73696e676c65535243223b613a323a7b693a32323b693a313b693a32393b693a313b7d7d, 1368972462, 0, 1368972475, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL );
INSERT INTO `tl_user` VALUES ( 2, 1368992431, 'Konro1', 'Юрій Мирош', 'yuriymyrosh@gmail.com', 'uk', 'default', 'FileUpload', '1', '1', '1', '1', '$6$0ab2ed685a231742$1V5oIEkQvdQHcwG5q03sRYyoTtLAbg0pqNEHon8.77NZm/Xy61CDxcd6CnJ14Y3NGQNM/cEyU8rqCzArKXy5U/', '', '1', NULL, 'group', 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, '', '', '', 0x613a31333a7b733a373a2272656665726572223b613a373a7b733a343a226c617374223b733a31363a222f636f6e74616f2f6d61696e2e706870223b733a373a2263757272656e74223b733a32383a222f636f6e74616f2f6d61696e2e7068703f646f3d4261636b75704442223b733a383a22746c5f7468656d65223b733a32363a222f636f6e74616f2f6d61696e2e7068703f646f3d7468656d6573223b733a373a22746c5f70616765223b733a32343a222f636f6e74616f2f6d61696e2e7068703f646f3d70616765223b733a32323a22746c5f6d736d5f70686f746f735f63617465676f7279223b733a33343a222f636f6e74616f2f6d61696e2e7068703f646f3d6d795f666f746f67616c6c657279223b733a31303a22746c5f61727469636c65223b733a32373a222f636f6e74616f2f6d61696e2e7068703f646f3d61727469636c65223b733a32313a22746c5f63616c63756c61746f725f6f7074696f6e73223b733a33333a222f636f6e74616f2f6d61696e2e7068703f646f3d6d795f63616c63756c61746f72223b7d733a373a2243555252454e54223b613a313a7b733a333a22494453223b613a333a7b693a303b733a313a2232223b693a313b733a313a2231223b693a323b733a313a2233223b7d7d733a32323a227374796c655f73686565745f7570646174655f616c6c223b4e3b733a31303a2243555252454e545f4944223b733a313a2231223b733a31323a22746c5f706167655f74726565223b613a383a7b693a313b693a313b693a323b693a303b693a353b693a303b693a363b693a313b693a343b693a303b693a373b693a313b693a383b693a303b693a393b693a303b7d733a31353a226669656c647365745f737461746573223b613a373a7b733a31313a22746c5f73657474696e6773223b613a323a7b733a31343a22707269766163795f6c6567656e64223b693a313b733a31353a2273656375726974795f6c6567656e64223b693a313b7d733a393a22746c5f6c61796f7574223b613a313a7b733a31333a226578706572745f6c6567656e64223b693a313b7d733a373a22746c5f70616765223b613a323a7b733a31333a226c61796f75745f6c6567656e64223b693a313b733a31333a226578706572745f6c6567656e64223b693a313b7d733a32323a22746c5f6d736d5f70686f746f735f63617465676f7279223b613a313a7b733a31313a227469705f67656e6572616c223b693a313b7d733a31303a22746c5f636f6e74656e74223b613a333a7b733a31363a2270726f7465637465645f6c6567656e64223b693a303b733a31333a226578706572745f6c6567656e64223b693a303b733a31363a22696e76697369626c655f6c6567656e64223b693a303b7d733a32313a22746c5f63616c63756c61746f725f6f7074696f6e73223b613a313a7b733a31313a227469705f67656e6572616c223b693a303b7d733a31393a22746c5f63616c63756c61746f725f6974656d73223b613a313a7b733a31313a227469705f67656e6572616c223b693a313b7d7d733a393a22434c4950424f415244223b613a363a7b733a373a22746c5f70616765223b613a303a7b7d733a32323a22746c5f6d736d5f70686f746f735f63617465676f7279223b613a303a7b7d733a393a22746c5f6d6f64756c65223b613a303a7b7d733a31303a22746c5f636f6e74656e74223b613a303a7b7d733a32313a22746c5f63616c63756c61746f725f6f7074696f6e73223b613a303a7b7d733a31393a22746c5f63616c63756c61746f725f6974656d73223b613a303a7b7d7d733a31313a226e65775f7265636f726473223b613a363a7b733a373a22746c5f70616765223b613a323a7b693a303b693a373b693a313b693a393b7d733a32323a22746c5f6d736d5f70686f746f735f63617465676f7279223b613a343a7b693a303b693a313b693a313b693a323b693a323b693a333b693a333b693a343b7d733a393a22746c5f6d6f64756c65223b613a333a7b693a303b693a393b693a313b693a31303b693a323b693a31313b7d733a31303a22746c5f636f6e74656e74223b613a323a7b693a303b693a31333b693a313b693a31353b7d733a32313a22746c5f63616c63756c61746f725f6f7074696f6e73223b613a323a7b693a303b693a313b693a313b693a323b7d733a31393a22746c5f63616c63756c61746f725f6974656d73223b613a353a7b693a303b693a313b693a313b693a323b693a323b693a333b693a333b693a343b693a343b693a353b7d7d733a33333a22747265655f746c5f6d736d5f70686f746f735f63617465676f72795f70686f746f223b613a343a7b693a313b693a303b693a32323b693a313b693a32393b693a313b693a34343b693a313b7d733a33343a22747265655f746c5f6d736d5f70686f746f735f63617465676f72795f70686f746f73223b613a333a7b693a32323b693a313b693a32393b693a313b693a34343b693a313b7d733a31323a22746c5f706167655f6e6f6465223b733a313a2231223b733a32363a22746c5f61727469636c655f746c5f61727469636c655f74726565223b613a373a7b693a353b693a303b693a313b693a303b693a333b693a303b693a343b693a303b693a323b693a303b693a363b693a303b693a373b693a303b7d733a32333a22746c5f61727469636c655f746c5f706167655f74726565223b613a333a7b693a313b693a313b693a373b693a313b693a363b693a313b7d7d, 1368992425, 1371315992, 1371318913, 3, 0, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d );

#---------------------------------------------------------
# Table structure for table 'tl_user_group'
#---------------------------------------------------------
CREATE TABLE `tl_user_group` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `modules` blob NULL,
  `themes` blob NULL,
  `pagemounts` blob NULL,
  `alpty` blob NULL,
  `filemounts` blob NULL,
  `fop` blob NULL,
  `forms` blob NULL,
  `formp` blob NULL,
  `alexf` blob NULL,
  `disable` char(1) NOT NULL default '',
  `start` varchar(10) NOT NULL default '',
  `stop` varchar(10) NOT NULL default '',
  `calendars` blob NULL,
  `calendarp` blob NULL,
  `calendarfeeds` blob NULL,
  `calendarfeedp` blob NULL,
  `faqs` blob NULL,
  `faqp` blob NULL,
  `news` blob NULL,
  `newp` blob NULL,
  `newsfeeds` blob NULL,
  `newsfeedp` blob NULL,
  `newsletters` blob NULL,
  `newsletterp` blob NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_user_group' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_version'
#---------------------------------------------------------
CREATE TABLE `tl_version` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `version` smallint(5) unsigned NOT NULL default '1',
  `fromTable` varchar(255) NOT NULL default '',
  `userid` int(10) unsigned NOT NULL default '0',
  `username` varchar(64) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `editUrl` varchar(255) NOT NULL default '',
  `active` char(1) NOT NULL default '',
  `data` mediumblob NULL,
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`),
  KEY `fromTable` (`fromTable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;


#
# Dumping data for table 'tl_version'
#

INSERT INTO `tl_version` VALUES ( 1, 2, 1371302801, 1, 'tl_layout', 2, 'Konro1', 'Похідна', 'contao/main.php?do=themes&table=tl_layout&act=edit&id=2&rt=cbffa5cf6a2bbf6fe84cd3c2d8999169', '1', 0x613a33363a7b733a323a226964223b733a313a2232223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231333731323939303437223b733a343a226e616d65223b733a31343a22d09fd0bed185d196d0b4d0bdd0b0223b733a343a22726f7773223b733a333a22337277223b733a31323a22686561646572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31323a22666f6f746572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a343a22636f6c73223b733a333a2231636c223b733a393a2277696474684c656674223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31303a2277696474685269676874223b733a303a22223b733a383a2273656374696f6e73223b733a303a22223b733a393a2273506f736974696f6e223b733a343a226d61696e223b733a393a226672616d65776f726b223b733a32383a22613a313a7b693a303b733a31303a226c61796f75742e637373223b7d223b733a31303a227374796c657368656574223b733a303a22223b733a383a2265787465726e616c223b733a303a22223b733a383a226f72646572457874223b733a303a22223b733a393a226e6577736665656473223b733a303a22223b733a31333a2263616c656e6461726665656473223b733a303a22223b733a373a226d6f64756c6573223b733a3230383a22613a343a7b693a303b613a323a7b733a333a226d6f64223b733a313a2236223b733a333a22636f6c223b733a363a22686561646572223b7d693a313b613a323a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22686561646572223b7d693a323b613a323a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b7d693a333b613a323a7b733a333a226d6f64223b733a313a2235223b733a333a22636f6c223b733a363a22666f6f746572223b7d7d223b733a383a2274656d706c617465223b733a373a2266655f70616765223b733a373a22646f6374797065223b733a31323a227868746d6c5f737472696374223b733a383a22776562666f6e7473223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a363a226f6e6c6f6164223b733a303a22223b733a343a2268656164223b733a303a22223b733a393a226164644a5175657279223b733a303a22223b733a373a226a536f75726365223b733a373a226a5f6c6f63616c223b733a363a226a7175657279223b733a32383a22613a313a7b693a303b733a31303a226a5f636f6c6f72626f78223b7d223b733a31313a226164644d6f6f546f6f6c73223b733a303a22223b733a393a226d6f6f536f75726365223b733a393a226d6f6f5f6c6f63616c223b733a383a226d6f6f746f6f6c73223b4e3b733a393a22616e616c7974696373223b733a303a22223b733a363a22736372697074223b733a303a22223b733a363a22737461746963223b733a303a22223b733a353a227769647468223b733a303a22223b733a353a22616c69676e223b733a363a2263656e746572223b7d );
INSERT INTO `tl_version` VALUES ( 2, 6, 1371302810, 1, 'tl_module', 2, 'Konro1', 'Header Похідна', 'contao/main.php?do=themes&table=tl_module&act=edit&id=6&rt=cbffa5cf6a2bbf6fe84cd3c2d8999169', '', 0x613a3131373a7b733a323a226964223b733a313a2236223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231333638393838323230223b733a343a226e616d65223b733a32313a2248656164657220d09fd0bed185d196d0b4d0bdd0b0223b733a383a22686561646c696e65223b733a303a22223b733a343a2274797065223b733a343a2268746d6c223b733a31313a226c6576656c4f6666736574223b733a313a2230223b733a393a2273686f774c6576656c223b733a313a2230223b733a393a22686172644c696d6974223b733a303a22223b733a31333a2273686f7750726f746563746564223b733a303a22223b733a31303a22646566696e65526f6f74223b733a303a22223b733a383a22726f6f7450616765223b733a313a2230223b733a31333a226e617669676174696f6e54706c223b733a303a22223b733a353a227061676573223b4e3b733a31303a2273686f7748696464656e223b733a303a22223b733a31313a22637573746f6d4c6162656c223b733a303a22223b733a393a226175746f6c6f67696e223b733a303a22223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a343a22636f6c73223b733a333a2232636c223b733a383a226564697461626c65223b4e3b733a393a226d656d62657254706c223b733a303a22223b733a393a227461626c656c657373223b733a303a22223b733a343a22666f726d223b733a313a2230223b733a393a22717565727954797065223b733a333a22616e64223b733a353a2266757a7a79223b733a303a22223b733a31333a22636f6e746578744c656e677468223b733a323a223438223b733a31313a22746f74616c4c656e677468223b733a343a2231303030223b733a373a2270657250616765223b733a313a2230223b733a31303a2273656172636854797065223b733a363a2273696d706c65223b733a393a2273656172636854706c223b733a303a22223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a393a22736b69704669727374223b733a313a2230223b733a393a226c6f61644669727374223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a227472616e73706172656e74223b733a303a22223b733a393a22666c61736876617273223b733a303a22223b733a31303a22616c74436f6e74656e74223b4e3b733a363a22736f75726365223b733a383a22696e7465726e616c223b733a393a2273696e676c65535243223b733a303a22223b733a333a2275726c223b733a303a22223b733a31313a22696e746572616374697665223b733a303a22223b733a373a22666c6173684944223b733a393a222d6539316161333239223b733a373a22666c6173684a53223b4e3b733a373a22696d6753697a65223b733a303a22223b733a31303a2275736543617074696f6e223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a343a2268746d6c223b733a3335363a223c64697620636c6173733d22636f6e7461696e6572223e0a093c64697620636c6173733d22726f77223e0a20202020093c64697620636c6173733d227370616e3132223e0a2020202020202020093c64697620636c6173733d2277656c6c223e0a20202020202020202020202020203c64697620636c6173733d2270756c6c2d6c656674223e0a202020202020202020202020202020203c68313e3c6120687265663d22223e526f6e613c2f613e3c2f68313e0a202020202020202020202020202020203c68333ed09fd0bed0bbd196d0b3d180d0b0d184d196d187d0bdd19620d0bfd0bed181d0bbd183d0b3d0b83c2f68333e0a20202020202020202020202020203c2f6469763e0a20202020202020202020202020203c64697620636c6173733d22636c656172223e3c2f6469763e0a2020202020202020202020203c2f6469763e0a20202020202020203c2f6469763e0a2020093c2f6469763e0a3c2f6469763e223b733a393a227273735f6361636865223b733a343a2233363030223b733a383a227273735f66656564223b4e3b733a31323a227273735f74656d706c617465223b733a31313a227273735f64656661756c74223b733a31333a226e756d6265724f664974656d73223b733a313a2233223b733a31343a2264697361626c6543617074636861223b733a303a22223b733a31303a227265675f67726f757073223b4e3b733a31343a227265675f616c6c6f774c6f67696e223b733a303a22223b733a31323a227265675f736b69704e616d65223b733a303a22223b733a393a227265675f636c6f7365223b733a303a22223b733a31333a227265675f61737369676e446972223b733a303a22223b733a31313a227265675f686f6d65446972223b733a303a22223b733a31323a227265675f6163746976617465223b733a303a22223b733a31303a227265675f6a756d70546f223b733a313a2230223b733a383a227265675f74657874223b4e3b733a31323a227265675f70617373776f7264223b4e3b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a303a22223b733a353a227370616365223b733a303a22223b733a31323a2263616c5f63616c656e646172223b4e3b733a31303a2263616c5f6e6f5370616e223b733a303a22223b733a31323a2263616c5f7374617274446179223b733a313a2230223b733a31303a2263616c5f666f726d6174223b733a393a2263616c5f6d6f6e7468223b733a31373a2263616c5f69676e6f726544796e616d6963223b733a303a22223b733a393a2263616c5f6f72646572223b733a393a22617363656e64696e67223b733a31363a2263616c5f7265616465724d6f64756c65223b733a313a2230223b733a393a2263616c5f6c696d6974223b733a313a2230223b733a31323a2263616c5f74656d706c617465223b733a31303a226576656e745f66756c6c223b733a31333a2263616c5f6374656d706c617465223b733a31313a2263616c5f64656661756c74223b733a31363a2263616c5f73686f775175616e74697479223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31343a226661715f63617465676f72696573223b4e3b733a31363a226661715f7265616465724d6f64756c65223b733a313a2230223b733a31303a226c6973745f7461626c65223b733a303a22223b733a31313a226c6973745f6669656c6473223b733a303a22223b733a31303a226c6973745f7768657265223b733a303a22223b733a31313a226c6973745f736561726368223b733a303a22223b733a393a226c6973745f736f7274223b733a303a22223b733a393a226c6973745f696e666f223b733a303a22223b733a31353a226c6973745f696e666f5f7768657265223b733a303a22223b733a31313a226c6973745f6c61796f7574223b733a31323a226c6973745f64656661756c74223b733a31363a226c6973745f696e666f5f6c61796f7574223b733a31323a22696e666f5f64656661756c74223b733a31333a226e6577735f6172636869766573223b4e3b733a31333a226e6577735f6665617475726564223b733a393a22616c6c5f6974656d73223b733a31383a226e6577735f6a756d70546f43757272656e74223b733a303a22223b733a31373a226e6577735f7265616465724d6f64756c65223b733a313a2230223b733a31353a226e6577735f6d6574614669656c6473223b733a33383a22613a323a7b693a303b733a343a2264617465223b693a313b733a363a22617574686f72223b7d223b733a31333a226e6577735f74656d706c617465223b733a31313a226e6577735f6c6174657374223b733a31313a226e6577735f666f726d6174223b733a31303a226e6577735f6d6f6e7468223b733a31333a226e6577735f7374617274446179223b733a313a2230223b733a31303a226e6577735f6f72646572223b733a31303a2264657363656e64696e67223b733a31373a226e6577735f73686f775175616e74697479223b733a303a22223b733a31313a226e6577736c657474657273223b4e3b733a31313a226e6c5f6368616e6e656c73223b4e3b733a31353a226e6c5f686964654368616e6e656c73223b733a303a22223b733a31323a226e6c5f737562736372696265223b4e3b733a31343a226e6c5f756e737562736372696265223b4e3b733a31313a226e6c5f74656d706c617465223b733a393a226e6c5f73696d706c65223b733a31333a22646c685f676f6f676c656d6170223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f7a6f6f6d223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f73697a65223b733a303a22223b7d );
INSERT INTO `tl_version` VALUES ( 3, 6, 1371302916, 2, 'tl_module', 2, 'Konro1', 'Header Похідна', 'contao/main.php?do=themes&table=tl_module&act=edit&id=6&rt=cbffa5cf6a2bbf6fe84cd3c2d8999169', '', 0x613a3131373a7b733a323a226964223b733a313a2236223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231333638393838323230223b733a343a226e616d65223b733a32313a2248656164657220d09fd0bed185d196d0b4d0bdd0b0223b733a383a22686561646c696e65223b733a303a22223b733a343a2274797065223b733a343a2268746d6c223b733a31313a226c6576656c4f6666736574223b733a313a2230223b733a393a2273686f774c6576656c223b733a313a2230223b733a393a22686172644c696d6974223b733a303a22223b733a31333a2273686f7750726f746563746564223b733a303a22223b733a31303a22646566696e65526f6f74223b733a303a22223b733a383a22726f6f7450616765223b733a313a2230223b733a31333a226e617669676174696f6e54706c223b733a303a22223b733a353a227061676573223b4e3b733a31303a2273686f7748696464656e223b733a303a22223b733a31313a22637573746f6d4c6162656c223b733a303a22223b733a393a226175746f6c6f67696e223b733a303a22223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a343a22636f6c73223b733a333a2232636c223b733a383a226564697461626c65223b4e3b733a393a226d656d62657254706c223b733a303a22223b733a393a227461626c656c657373223b733a303a22223b733a343a22666f726d223b733a313a2230223b733a393a22717565727954797065223b733a333a22616e64223b733a353a2266757a7a79223b733a303a22223b733a31333a22636f6e746578744c656e677468223b733a323a223438223b733a31313a22746f74616c4c656e677468223b733a343a2231303030223b733a373a2270657250616765223b733a313a2230223b733a31303a2273656172636854797065223b733a363a2273696d706c65223b733a393a2273656172636854706c223b733a303a22223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a393a22736b69704669727374223b733a313a2230223b733a393a226c6f61644669727374223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a227472616e73706172656e74223b733a303a22223b733a393a22666c61736876617273223b733a303a22223b733a31303a22616c74436f6e74656e74223b4e3b733a363a22736f75726365223b733a383a22696e7465726e616c223b733a393a2273696e676c65535243223b733a303a22223b733a333a2275726c223b733a303a22223b733a31313a22696e746572616374697665223b733a303a22223b733a373a22666c6173684944223b733a393a222d6539316161333239223b733a373a22666c6173684a53223b4e3b733a373a22696d6753697a65223b733a303a22223b733a31303a2275736543617074696f6e223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a343a2268746d6c223b733a3439383a223c64697620636c6173733d22636f6e7461696e6572223e0a093c64697620636c6173733d22726f77223e0a20202020093c64697620636c6173733d227370616e3132223e0a2020202020202020093c64697620636c6173733d2277656c6c223e0a20202020202020202020202020203c64697620636c6173733d2270756c6c2d6c656674223e0a202020202020202020202020202020203c68313e3c6120687265663d22223e526f6e613c2f613e3c2f68313e0a202020202020202020202020202020203c68333ed09fd0bed0bbd196d0b3d180d0b0d184d196d187d0bdd19620d0bfd0bed181d0bbd183d0b3d0b83c2f68333e0a20202020202020202020202020203c2f6469763e0a20202020202020202020202020203c64697620636c6173733d227370616e332070756c6c2d7269676874223e0a202020202020202020202020202020203c696d6720616c743d22526f6e6122207372633d2266696c65732f7468656d652f696d672f69636f6e732f526f6e615f626c61636b2e706e67223e0a20202020202020202020202020203c2f6469763e0a20202020202020202020202020203c64697620636c6173733d22636c656172223e3c2f6469763e0a2020202020202020202020203c2f6469763e0a20202020202020203c2f6469763e0a2020093c2f6469763e0a3c2f6469763e223b733a393a227273735f6361636865223b733a343a2233363030223b733a383a227273735f66656564223b4e3b733a31323a227273735f74656d706c617465223b733a31313a227273735f64656661756c74223b733a31333a226e756d6265724f664974656d73223b733a313a2233223b733a31343a2264697361626c6543617074636861223b733a303a22223b733a31303a227265675f67726f757073223b4e3b733a31343a227265675f616c6c6f774c6f67696e223b733a303a22223b733a31323a227265675f736b69704e616d65223b733a303a22223b733a393a227265675f636c6f7365223b733a303a22223b733a31333a227265675f61737369676e446972223b733a303a22223b733a31313a227265675f686f6d65446972223b733a303a22223b733a31323a227265675f6163746976617465223b733a303a22223b733a31303a227265675f6a756d70546f223b733a313a2230223b733a383a227265675f74657874223b4e3b733a31323a227265675f70617373776f7264223b4e3b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a303a22223b733a353a227370616365223b733a303a22223b733a31323a2263616c5f63616c656e646172223b4e3b733a31303a2263616c5f6e6f5370616e223b733a303a22223b733a31323a2263616c5f7374617274446179223b733a313a2230223b733a31303a2263616c5f666f726d6174223b733a393a2263616c5f6d6f6e7468223b733a31373a2263616c5f69676e6f726544796e616d6963223b733a303a22223b733a393a2263616c5f6f72646572223b733a393a22617363656e64696e67223b733a31363a2263616c5f7265616465724d6f64756c65223b733a313a2230223b733a393a2263616c5f6c696d6974223b733a313a2230223b733a31323a2263616c5f74656d706c617465223b733a31303a226576656e745f66756c6c223b733a31333a2263616c5f6374656d706c617465223b733a31313a2263616c5f64656661756c74223b733a31363a2263616c5f73686f775175616e74697479223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31343a226661715f63617465676f72696573223b4e3b733a31363a226661715f7265616465724d6f64756c65223b733a313a2230223b733a31303a226c6973745f7461626c65223b733a303a22223b733a31313a226c6973745f6669656c6473223b733a303a22223b733a31303a226c6973745f7768657265223b733a303a22223b733a31313a226c6973745f736561726368223b733a303a22223b733a393a226c6973745f736f7274223b733a303a22223b733a393a226c6973745f696e666f223b733a303a22223b733a31353a226c6973745f696e666f5f7768657265223b733a303a22223b733a31313a226c6973745f6c61796f7574223b733a31323a226c6973745f64656661756c74223b733a31363a226c6973745f696e666f5f6c61796f7574223b733a31323a22696e666f5f64656661756c74223b733a31333a226e6577735f6172636869766573223b4e3b733a31333a226e6577735f6665617475726564223b733a393a22616c6c5f6974656d73223b733a31383a226e6577735f6a756d70546f43757272656e74223b733a303a22223b733a31373a226e6577735f7265616465724d6f64756c65223b733a313a2230223b733a31353a226e6577735f6d6574614669656c6473223b733a33383a22613a323a7b693a303b733a343a2264617465223b693a313b733a363a22617574686f72223b7d223b733a31333a226e6577735f74656d706c617465223b733a31313a226e6577735f6c6174657374223b733a31313a226e6577735f666f726d6174223b733a31303a226e6577735f6d6f6e7468223b733a31333a226e6577735f7374617274446179223b733a313a2230223b733a31303a226e6577735f6f72646572223b733a31303a2264657363656e64696e67223b733a31373a226e6577735f73686f775175616e74697479223b733a303a22223b733a31313a226e6577736c657474657273223b4e3b733a31313a226e6c5f6368616e6e656c73223b4e3b733a31353a226e6c5f686964654368616e6e656c73223b733a303a22223b733a31323a226e6c5f737562736372696265223b4e3b733a31343a226e6c5f756e737562736372696265223b4e3b733a31313a226e6c5f74656d706c617465223b733a393a226e6c5f73696d706c65223b733a31333a22646c685f676f6f676c656d6170223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f7a6f6f6d223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f73697a65223b733a303a22223b7d );
INSERT INTO `tl_version` VALUES ( 4, 6, 1371302939, 3, 'tl_module', 2, 'Konro1', 'Header Похідна', 'contao/main.php?do=themes&table=tl_module&act=edit&id=6&rt=cbffa5cf6a2bbf6fe84cd3c2d8999169', '1', 0x613a3131373a7b733a323a226964223b733a313a2236223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231333731333032393136223b733a343a226e616d65223b733a32313a2248656164657220d09fd0bed185d196d0b4d0bdd0b0223b733a383a22686561646c696e65223b733a303a22223b733a343a2274797065223b733a343a2268746d6c223b733a31313a226c6576656c4f6666736574223b733a313a2230223b733a393a2273686f774c6576656c223b733a313a2230223b733a393a22686172644c696d6974223b733a303a22223b733a31333a2273686f7750726f746563746564223b733a303a22223b733a31303a22646566696e65526f6f74223b733a303a22223b733a383a22726f6f7450616765223b733a313a2230223b733a31333a226e617669676174696f6e54706c223b733a303a22223b733a353a227061676573223b4e3b733a31303a2273686f7748696464656e223b733a303a22223b733a31313a22637573746f6d4c6162656c223b733a303a22223b733a393a226175746f6c6f67696e223b733a303a22223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a343a22636f6c73223b733a333a2232636c223b733a383a226564697461626c65223b4e3b733a393a226d656d62657254706c223b733a303a22223b733a393a227461626c656c657373223b733a303a22223b733a343a22666f726d223b733a313a2230223b733a393a22717565727954797065223b733a333a22616e64223b733a353a2266757a7a79223b733a303a22223b733a31333a22636f6e746578744c656e677468223b733a323a223438223b733a31313a22746f74616c4c656e677468223b733a343a2231303030223b733a373a2270657250616765223b733a313a2230223b733a31303a2273656172636854797065223b733a363a2273696d706c65223b733a393a2273656172636854706c223b733a303a22223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a393a22736b69704669727374223b733a313a2230223b733a393a226c6f61644669727374223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a227472616e73706172656e74223b733a303a22223b733a393a22666c61736876617273223b733a303a22223b733a31303a22616c74436f6e74656e74223b4e3b733a363a22736f75726365223b733a383a22696e7465726e616c223b733a393a2273696e676c65535243223b733a303a22223b733a333a2275726c223b733a303a22223b733a31313a22696e746572616374697665223b733a303a22223b733a373a22666c6173684944223b733a393a222d6539316161333239223b733a373a22666c6173684a53223b4e3b733a373a22696d6753697a65223b733a303a22223b733a31303a2275736543617074696f6e223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a343a2268746d6c223b733a3439383a223c64697620636c6173733d22636f6e7461696e6572223e0a093c64697620636c6173733d22726f77223e0a20202020093c64697620636c6173733d227370616e3132223e0a2020202020202020093c64697620636c6173733d2277656c6c223e0a20202020202020202020202020203c64697620636c6173733d2270756c6c2d6c656674223e0a202020202020202020202020202020203c68313e3c6120687265663d22223e526f6e613c2f613e3c2f68313e0a202020202020202020202020202020203c68333ed09fd0bed0bbd196d0b3d180d0b0d184d196d187d0bdd19620d0bfd0bed181d0bbd183d0b3d0b83c2f68333e0a20202020202020202020202020203c2f6469763e0a20202020202020202020202020203c64697620636c6173733d227370616e322070756c6c2d7269676874223e0a202020202020202020202020202020203c696d6720616c743d22526f6e6122207372633d2266696c65732f7468656d652f696d672f69636f6e732f526f6e615f626c61636b2e706e67223e0a20202020202020202020202020203c2f6469763e0a20202020202020202020202020203c64697620636c6173733d22636c656172223e3c2f6469763e0a2020202020202020202020203c2f6469763e0a20202020202020203c2f6469763e0a2020093c2f6469763e0a3c2f6469763e223b733a393a227273735f6361636865223b733a343a2233363030223b733a383a227273735f66656564223b4e3b733a31323a227273735f74656d706c617465223b733a31313a227273735f64656661756c74223b733a31333a226e756d6265724f664974656d73223b733a313a2233223b733a31343a2264697361626c6543617074636861223b733a303a22223b733a31303a227265675f67726f757073223b4e3b733a31343a227265675f616c6c6f774c6f67696e223b733a303a22223b733a31323a227265675f736b69704e616d65223b733a303a22223b733a393a227265675f636c6f7365223b733a303a22223b733a31333a227265675f61737369676e446972223b733a303a22223b733a31313a227265675f686f6d65446972223b733a303a22223b733a31323a227265675f6163746976617465223b733a303a22223b733a31303a227265675f6a756d70546f223b733a313a2230223b733a383a227265675f74657874223b4e3b733a31323a227265675f70617373776f7264223b4e3b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a303a22223b733a353a227370616365223b733a303a22223b733a31323a2263616c5f63616c656e646172223b4e3b733a31303a2263616c5f6e6f5370616e223b733a303a22223b733a31323a2263616c5f7374617274446179223b733a313a2230223b733a31303a2263616c5f666f726d6174223b733a393a2263616c5f6d6f6e7468223b733a31373a2263616c5f69676e6f726544796e616d6963223b733a303a22223b733a393a2263616c5f6f72646572223b733a393a22617363656e64696e67223b733a31363a2263616c5f7265616465724d6f64756c65223b733a313a2230223b733a393a2263616c5f6c696d6974223b733a313a2230223b733a31323a2263616c5f74656d706c617465223b733a31303a226576656e745f66756c6c223b733a31333a2263616c5f6374656d706c617465223b733a31313a2263616c5f64656661756c74223b733a31363a2263616c5f73686f775175616e74697479223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31343a226661715f63617465676f72696573223b4e3b733a31363a226661715f7265616465724d6f64756c65223b733a313a2230223b733a31303a226c6973745f7461626c65223b733a303a22223b733a31313a226c6973745f6669656c6473223b733a303a22223b733a31303a226c6973745f7768657265223b733a303a22223b733a31313a226c6973745f736561726368223b733a303a22223b733a393a226c6973745f736f7274223b733a303a22223b733a393a226c6973745f696e666f223b733a303a22223b733a31353a226c6973745f696e666f5f7768657265223b733a303a22223b733a31313a226c6973745f6c61796f7574223b733a31323a226c6973745f64656661756c74223b733a31363a226c6973745f696e666f5f6c61796f7574223b733a31323a22696e666f5f64656661756c74223b733a31333a226e6577735f6172636869766573223b4e3b733a31333a226e6577735f6665617475726564223b733a393a22616c6c5f6974656d73223b733a31383a226e6577735f6a756d70546f43757272656e74223b733a303a22223b733a31373a226e6577735f7265616465724d6f64756c65223b733a313a2230223b733a31353a226e6577735f6d6574614669656c6473223b733a33383a22613a323a7b693a303b733a343a2264617465223b693a313b733a363a22617574686f72223b7d223b733a31333a226e6577735f74656d706c617465223b733a31313a226e6577735f6c6174657374223b733a31313a226e6577735f666f726d6174223b733a31303a226e6577735f6d6f6e7468223b733a31333a226e6577735f7374617274446179223b733a313a2230223b733a31303a226e6577735f6f72646572223b733a31303a2264657363656e64696e67223b733a31373a226e6577735f73686f775175616e74697479223b733a303a22223b733a31313a226e6577736c657474657273223b4e3b733a31313a226e6c5f6368616e6e656c73223b4e3b733a31353a226e6c5f686964654368616e6e656c73223b733a303a22223b733a31323a226e6c5f737562736372696265223b4e3b733a31343a226e6c5f756e737562736372696265223b4e3b733a31313a226e6c5f74656d706c617465223b733a393a226e6c5f73696d706c65223b733a31333a22646c685f676f6f676c656d6170223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f7a6f6f6d223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f73697a65223b733a303a22223b7d );
INSERT INTO `tl_version` VALUES ( 5, 12, 1371302981, 1, 'tl_content', 2, 'Konro1', '', 'contao/main.php?do=article&table=tl_content&act=edit&id=12&rt=cbffa5cf6a2bbf6fe84cd3c2d8999169', '', 0x613a38313a7b733a323a226964223b733a323a223132223b733a333a22706964223b733a313a2234223b733a363a22707461626c65223b733a31303a22746c5f61727469636c65223b733a373a22736f7274696e67223b733a333a22313932223b733a363a22747374616d70223b733a31303a2231333638393837373038223b733a343a2274797065223b733a343a2268746d6c223b733a383a22686561646c696e65223b733a303a22223b733a343a2274657874223b4e3b733a383a22616464496d616765223b733a303a22223b733a393a2273696e676c65535243223b733a303a22223b733a333a22616c74223b733a303a22223b733a353a227469746c65223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a22696d6167656d617267696e223b733a303a22223b733a383a22696d61676555726c223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b733a383a22666c6f6174696e67223b733a303a22223b733a343a2268746d6c223b733a313139323a223c64697620636c6173733d22726f77223e0a20203c64697620636c6173733d227370616e36223e0a3c68333ed092d196d0b7d0b8d182d0bdd19620d0bad0b0d180d182d0bad0b83c2f68333e0a3c7461626c6520626f726465723d2230223e0a3c74626f64793e0a3c74723e0a3c74643ed0a8d0bed0b2d0bad0bed182d180d0b0d184d0b0d180d0b5d182d0bdd0b8d0b920d0b4d180d183d0ba3c2f74643e0a3c74643ed0b2d196d0b420363520d0b3d180d0bd2e202f31303020d188d1822e3c2f74643e0a3c2f74723e0a3c74723e0a3c74643ed09ed184d187d0b5d182d0bdd0b8d0b920d0b4d180d183d0ba3c2f74643e0a3c74643ed0b2d196d0b42031363020d0b3d180d0bd2e202f31303020d188d1822e3c2f74643e0a3c2f74723e0a3c74723e0a3c74643ed0a6d0b8d184d180d0bed0b2d0b8d0b92028d0bbd0b0d0b7d0b5d180d0bdd0b8d0b920d0b4d180d183d0ba293c2f74643e0a3c74643ed0b2d196d0b420353020d0b3d180d0bd2e202f31303020d188d1822e3c2f74643e0a3c2f74723e0a3c74723e0a3c74643ed0a2d0b8d181d0bdd0b5d0bdd0bdd18f20d184d0bed0bbd18cd0b3d0bed18e3c2f74643e0a3c74643ed0b2d196d0b42031323020d0b3d180d0bd2e202f31303020d188d1822e3c2f74643e0a3c2f74723e0a3c2f74626f64793e0a3c2f7461626c653e0a3c68333ed091d0bbd0b0d0bdd0bad0b820d182d0b020d0bad0bed0bdd0b2d0b5d180d182d0b83c2f68333e0a3c703ed0b2d196d0b42031353020d0b3d180d0bd2e2f31303020d188d1822e3c2f703e0a3c68333ed09dd0b0d0bad0bbd0b5d0b9d0bad0b82028d181d182d196d0bad0b5d180d0b8293c2f68333e0a3c703ed092d0b0d180d182d196d181d182d18c20d180d0bed0b7d180d0b0d185d0bed0b2d183d194d182d18cd181d18f20d196d0bdd0b4d0b8d0b2d196d0b4d183d0b0d0bbd18cd0bdd0be20d0b220d0b7d0b0d0bbd0b5d0b6d0bdd0bed181d182d19620d180d0bed0b7d0bcd196d180d196d0b22c20d184d0bed180d0bcd0b82c20d0bad0bed0bbd196d180d0bdd0bed181d182d19620d182d0b020d182d0b8d180d0b0d0b6d1832c20d0b020d182d0b0d0bad0bed0b620d0bcd0b0d182d0b5d180d196d0b0d0bbd1833c2f703e0a3c68333ed094d180d183d0ba20d0bfd0be20d0bfd0bbd0b0d181d182d0b8d0bad1833c2f68333e20200a3c703ed092d0b0d180d182d196d181d182d18c20d180d0bed0b7d180d0b0d185d0bed0b2d183d194d182d18cd181d18f20d196d0bdd0b4d0b8d0b2d196d0b4d183d0b0d0bbd18cd0bdd0be20d0b220d0b7d0b0d0bbd0b5d0b6d0bdd0bed181d182d19620d180d0bed0b7d0bcd196d180d196d0b22c20d184d0bed180d0bcd0b82c20d0bad0bed0bbd196d180d0bdd0bed181d182d19620d182d0b020d182d0b8d180d0b0d0b6d1832c20d0b020d182d0b0d0bad0bed0b620d0bcd0b0d182d0b5d180d196d0b0d0bbd1833c2f703e0a3c2f6469763e0a3c64697620636c6173733d227370616e36223e0a3c64697620636c6173733d2277656c6c223e0a20203c696d6720616c743d2222207372633d2266696c65732f7468656d652f696d672f636172642e6a7067223e0a3c2f6469763e0a3c2f6469763e0a3c2f6469763e223b733a383a226c69737474797065223b733a303a22223b733a393a226c6973746974656d73223b4e3b733a31303a227461626c656974656d73223b4e3b733a373a2273756d6d617279223b733a303a22223b733a353a227468656164223b733a303a22223b733a353a2274666f6f74223b733a303a22223b733a353a22746c656674223b733a303a22223b733a383a22736f727461626c65223b733a303a22223b733a393a22736f7274496e646578223b733a313a2230223b733a393a22736f72744f72646572223b733a393a22617363656e64696e67223b733a373a226d6f6f54797065223b733a383a226d6f6f5374617274223b733a31313a226d6f6f486561646c696e65223b733a303a22223b733a383a226d6f6f5374796c65223b733a303a22223b733a31303a226d6f6f436c6173736573223b733a303a22223b733a393a22686967686c69676874223b733a303a22223b733a373a227368436c617373223b733a303a22223b733a343a22636f6465223b4e3b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a393a227469746c6554657874223b733a303a22223b733a393a226c696e6b5469746c65223b733a303a22223b733a353a22656d626564223b733a303a22223b733a333a2272656c223b733a303a22223b733a383a22757365496d616765223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a31303a22757365486f6d65446972223b733a303a22223b733a363a22706572526f77223b733a313a2234223b733a373a2270657250616765223b733a313a2230223b733a31333a226e756d6265724f664974656d73223b733a313a2230223b733a363a22736f72744279223b733a303a22223b733a31303a2267616c6c65727954706c223b733a303a22223b733a393a22706c61796572535243223b4e3b733a373a22796f7574756265223b733a303a22223b733a393a22706f73746572535243223b733a303a22223b733a31303a22706c6179657253697a65223b733a303a22223b733a383a226175746f706c6179223b733a303a22223b733a383a22637465416c696173223b733a313a2230223b733a31323a2261727469636c65416c696173223b733a313a2230223b733a373a2261727469636c65223b733a313a2230223b733a343a22666f726d223b733a313a2230223b733a363a226d6f64756c65223b733a313a2230223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a303a22223b733a353a227370616365223b733a303a22223b733a393a22696e76697369626c65223b733a303a22223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31313a22636f6d5f70657250616765223b733a313a2230223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31333a22646c685f676f6f676c656d6170223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f7a6f6f6d223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f73697a65223b733a303a22223b733a32303a22646c685f676f6f676c656d61705f737461746963223b733a303a22223b733a31373a22646c685f676f6f676c656d61705f75726c223b733a303a22223b7d );
INSERT INTO `tl_version` VALUES ( 6, 12, 1371303147, 2, 'tl_content', 2, 'Konro1', '', 'contao/main.php?do=article&table=tl_content&act=edit&id=12&rt=cbffa5cf6a2bbf6fe84cd3c2d8999169', '', 0x613a38313a7b733a323a226964223b733a323a223132223b733a333a22706964223b733a313a2234223b733a363a22707461626c65223b733a31303a22746c5f61727469636c65223b733a373a22736f7274696e67223b733a333a22313932223b733a363a22747374616d70223b733a31303a2231333638393837373038223b733a343a2274797065223b733a343a2268746d6c223b733a383a22686561646c696e65223b733a303a22223b733a343a2274657874223b4e3b733a383a22616464496d616765223b733a303a22223b733a393a2273696e676c65535243223b733a303a22223b733a333a22616c74223b733a303a22223b733a353a227469746c65223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a22696d6167656d617267696e223b733a303a22223b733a383a22696d61676555726c223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b733a383a22666c6f6174696e67223b733a303a22223b733a343a2268746d6c223b733a313330323a223c64697620636c6173733d22726f77223e0a20203c64697620636c6173733d227370616e36223e0a3c68333ed092d196d0b7d0b8d182d0bdd19620d0bad0b0d180d182d0bad0b83c2f68333e0a3c7461626c6520626f726465723d2230223e0a3c74626f64793e0a3c74723e0a3c74643ed0a8d0bed0b2d0bad0bed182d180d0b0d184d0b0d180d0b5d182d0bdd0b8d0b920d0b4d180d183d0ba3c2f74643e0a3c74643ed0b2d196d0b420363520d0b3d180d0bd2e202f31303020d188d1822e3c2f74643e0a3c2f74723e0a3c74723e0a3c74643ed09ed184d187d0b5d182d0bdd0b8d0b920d0b4d180d183d0ba3c2f74643e0a3c74643ed0b2d196d0b42031363020d0b3d180d0bd2e202f31303020d188d1822e3c2f74643e0a3c2f74723e0a3c74723e0a3c74643ed0a6d0b8d184d180d0bed0b2d0b8d0b92028d0bbd0b0d0b7d0b5d180d0bdd0b8d0b920d0b4d180d183d0ba293c2f74643e0a3c74643ed0b2d196d0b420353020d0b3d180d0bd2e202f31303020d188d1822e3c2f74643e0a3c2f74723e0a3c74723e0a3c74643ed0a2d0b8d181d0bdd0b5d0bdd0bdd18f20d184d0bed0bbd18cd0b3d0bed18e3c2f74643e0a3c74643ed0b2d196d0b42031323020d0b3d180d0bd2e202f31303020d188d1822e3c2f74643e0a3c2f74723e0a3c2f74626f64793e0a3c2f7461626c653e0a3c68333ed091d0bbd0b0d0bdd0bad0b820d182d0b020d0bad0bed0bdd0b2d0b5d180d182d0b83c2f68333e0a3c703ed0b2d196d0b42031353020d0b3d180d0bd2e2f31303020d188d1822e3c2f703e0a3c68333ed09dd0b0d0bad0bbd0b5d0b9d0bad0b82028d181d182d196d0bad0b5d180d0b8293c2f68333e0a3c703ed092d0b0d180d182d196d181d182d18c20d180d0bed0b7d180d0b0d185d0bed0b2d183d194d182d18cd181d18f20d196d0bdd0b4d0b8d0b2d196d0b4d183d0b0d0bbd18cd0bdd0be20d0b220d0b7d0b0d0bbd0b5d0b6d0bdd0bed181d182d19620d180d0bed0b7d0bcd196d180d196d0b22c20d184d0bed180d0bcd0b82c20d0bad0bed0bbd196d180d0bdd0bed181d182d19620d182d0b020d182d0b8d180d0b0d0b6d1832c20d0b020d182d0b0d0bad0bed0b620d0bcd0b0d182d0b5d180d196d0b0d0bbd1833c2f703e0a3c68333ed094d180d183d0ba20d0bfd0be20d0bfd0bbd0b0d181d182d0b8d0bad1833c2f68333e20200a3c703ed092d0b0d180d182d196d181d182d18c20d180d0bed0b7d180d0b0d185d0bed0b2d183d194d182d18cd181d18f20d196d0bdd0b4d0b8d0b2d196d0b4d183d0b0d0bbd18cd0bdd0be20d0b220d0b7d0b0d0bbd0b5d0b6d0bdd0bed181d182d19620d180d0bed0b7d0bcd196d180d196d0b22c20d184d0bed180d0bcd0b82c20d0bad0bed0bbd196d180d0bdd0bed181d182d19620d182d0b020d182d0b8d180d0b0d0b6d1832c20d0b020d182d0b0d0bad0bed0b620d0bcd0b0d182d0b5d180d196d0b0d0bbd1833c2f703e0a3c627574746f6e20636c6173733d2262746e2062746e2d6c617267652062746e2d626c6f636b2062746e2d7072696d6172792220747970653d22627574746f6e223ed0a0d0bed0b7d180d0b0d185d183d0b2d0b0d182d0b820d186d196d0bdd1833c2f627574746f6e3e2020200a3c2f6469763e0a3c64697620636c6173733d227370616e36223e0a3c64697620636c6173733d2277656c6c223e0a20203c696d6720616c743d2222207372633d2266696c65732f7468656d652f696d672f636172642e6a7067223e0a3c2f6469763e0a3c2f6469763e0a3c2f6469763e223b733a383a226c69737474797065223b733a303a22223b733a393a226c6973746974656d73223b4e3b733a31303a227461626c656974656d73223b4e3b733a373a2273756d6d617279223b733a303a22223b733a353a227468656164223b733a303a22223b733a353a2274666f6f74223b733a303a22223b733a353a22746c656674223b733a303a22223b733a383a22736f727461626c65223b733a303a22223b733a393a22736f7274496e646578223b733a313a2230223b733a393a22736f72744f72646572223b733a393a22617363656e64696e67223b733a373a226d6f6f54797065223b733a383a226d6f6f5374617274223b733a31313a226d6f6f486561646c696e65223b733a303a22223b733a383a226d6f6f5374796c65223b733a303a22223b733a31303a226d6f6f436c6173736573223b733a303a22223b733a393a22686967686c69676874223b733a303a22223b733a373a227368436c617373223b733a303a22223b733a343a22636f6465223b4e3b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a393a227469746c6554657874223b733a303a22223b733a393a226c696e6b5469746c65223b733a303a22223b733a353a22656d626564223b733a303a22223b733a333a2272656c223b733a303a22223b733a383a22757365496d616765223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a31303a22757365486f6d65446972223b733a303a22223b733a363a22706572526f77223b733a313a2234223b733a373a2270657250616765223b733a313a2230223b733a31333a226e756d6265724f664974656d73223b733a313a2230223b733a363a22736f72744279223b733a303a22223b733a31303a2267616c6c65727954706c223b733a303a22223b733a393a22706c61796572535243223b4e3b733a373a22796f7574756265223b733a303a22223b733a393a22706f73746572535243223b733a303a22223b733a31303a22706c6179657253697a65223b733a303a22223b733a383a226175746f706c6179223b733a303a22223b733a383a22637465416c696173223b733a313a2230223b733a31323a2261727469636c65416c696173223b733a313a2230223b733a373a2261727469636c65223b733a313a2230223b733a343a22666f726d223b733a313a2230223b733a363a226d6f64756c65223b733a313a2230223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a303a22223b733a353a227370616365223b733a303a22223b733a393a22696e76697369626c65223b733a303a22223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31313a22636f6d5f70657250616765223b733a313a2230223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31333a22646c685f676f6f676c656d6170223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f7a6f6f6d223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f73697a65223b733a303a22223b733a32303a22646c685f676f6f676c656d61705f737461746963223b733a303a22223b733a31373a22646c685f676f6f676c656d61705f75726c223b733a303a22223b7d );
INSERT INTO `tl_version` VALUES ( 7, 12, 1371303203, 3, 'tl_content', 2, 'Konro1', '', 'contao/main.php?do=article&table=tl_content&act=edit&id=12&rt=cbffa5cf6a2bbf6fe84cd3c2d8999169', '', 0x613a38313a7b733a323a226964223b733a323a223132223b733a333a22706964223b733a313a2234223b733a363a22707461626c65223b733a31303a22746c5f61727469636c65223b733a373a22736f7274696e67223b733a333a22313932223b733a363a22747374616d70223b733a31303a2231333731333033313437223b733a343a2274797065223b733a343a2268746d6c223b733a383a22686561646c696e65223b733a303a22223b733a343a2274657874223b4e3b733a383a22616464496d616765223b733a303a22223b733a393a2273696e676c65535243223b733a303a22223b733a333a22616c74223b733a303a22223b733a353a227469746c65223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a22696d6167656d617267696e223b733a303a22223b733a383a22696d61676555726c223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b733a383a22666c6f6174696e67223b733a303a22223b733a343a2268746d6c223b733a313332383a223c64697620636c6173733d22726f77223e0a20203c64697620636c6173733d227370616e36223e0a3c68333ed092d196d0b7d0b8d182d0bdd19620d0bad0b0d180d182d0bad0b83c2f68333e0a3c7461626c6520626f726465723d2230223e0a3c74626f64793e0a3c74723e0a3c74643ed0a8d0bed0b2d0bad0bed182d180d0b0d184d0b0d180d0b5d182d0bdd0b8d0b920d0b4d180d183d0ba3c2f74643e0a3c74643ed0b2d196d0b420363520d0b3d180d0bd2e202f31303020d188d1822e3c2f74643e0a3c2f74723e0a3c74723e0a3c74643ed09ed184d187d0b5d182d0bdd0b8d0b920d0b4d180d183d0ba3c2f74643e0a3c74643ed0b2d196d0b42031363020d0b3d180d0bd2e202f31303020d188d1822e3c2f74643e0a3c2f74723e0a3c74723e0a3c74643ed0a6d0b8d184d180d0bed0b2d0b8d0b92028d0bbd0b0d0b7d0b5d180d0bdd0b8d0b920d0b4d180d183d0ba293c2f74643e0a3c74643ed0b2d196d0b420353020d0b3d180d0bd2e202f31303020d188d1822e3c2f74643e0a3c2f74723e0a3c74723e0a3c74643ed0a2d0b8d181d0bdd0b5d0bdd0bdd18f20d184d0bed0bbd18cd0b3d0bed18e3c2f74643e0a3c74643ed0b2d196d0b42031323020d0b3d180d0bd2e202f31303020d188d1822e3c2f74643e0a3c2f74723e0a3c2f74626f64793e0a3c2f7461626c653e0a3c68333ed091d0bbd0b0d0bdd0bad0b820d182d0b020d0bad0bed0bdd0b2d0b5d180d182d0b83c2f68333e0a3c703ed0b2d196d0b42031353020d0b3d180d0bd2e2f31303020d188d1822e3c2f703e0a3c68333ed09dd0b0d0bad0bbd0b5d0b9d0bad0b82028d181d182d196d0bad0b5d180d0b8293c2f68333e0a3c703ed092d0b0d180d182d196d181d182d18c20d180d0bed0b7d180d0b0d185d0bed0b2d183d194d182d18cd181d18f20d196d0bdd0b4d0b8d0b2d196d0b4d183d0b0d0bbd18cd0bdd0be20d0b220d0b7d0b0d0bbd0b5d0b6d0bdd0bed181d182d19620d180d0bed0b7d0bcd196d180d196d0b22c20d184d0bed180d0bcd0b82c20d0bad0bed0bbd196d180d0bdd0bed181d182d19620d182d0b020d182d0b8d180d0b0d0b6d1832c20d0b020d182d0b0d0bad0bed0b620d0bcd0b0d182d0b5d180d196d0b0d0bbd1833c2f703e0a3c68333ed094d180d183d0ba20d0bfd0be20d0bfd0bbd0b0d181d182d0b8d0bad1833c2f68333e20200a3c703ed092d0b0d180d182d196d181d182d18c20d180d0bed0b7d180d0b0d185d0bed0b2d183d194d182d18cd181d18f20d196d0bdd0b4d0b8d0b2d196d0b4d183d0b0d0bbd18cd0bdd0be20d0b220d0b7d0b0d0bbd0b5d0b6d0bdd0bed181d182d19620d180d0bed0b7d0bcd196d180d196d0b22c20d184d0bed180d0bcd0b82c20d0bad0bed0bbd196d180d0bdd0bed181d182d19620d182d0b020d182d0b8d180d0b0d0b6d1832c20d0b020d182d0b0d0bad0bed0b620d0bcd0b0d182d0b5d180d196d0b0d0bbd1833c2f703e0a3c627574746f6e20636c6173733d2262746e2062746e2d6c617267652062746e2d626c6f636b2062746e2d7072696d6172792220747970653d22627574746f6e223ed0a0d0bed0b7d180d0b0d185d183d0b2d0b0d182d0b820d186d196d0bdd1833c2f627574746f6e3e2020200a3c2f6469763e0a3c64697620636c6173733d227370616e36223e0a3c64697620636c6173733d2277656c6c223e0a20203c696d6720616c743d2222207372633d2266696c65732f7468656d652f696d672f636172642e6a7067223e0a3c2f6469763e0a3c2f6469763e0a3c64697620636c6173733d22636c656172223e3c2f6469763e0a3c2f6469763e223b733a383a226c69737474797065223b733a303a22223b733a393a226c6973746974656d73223b4e3b733a31303a227461626c656974656d73223b4e3b733a373a2273756d6d617279223b733a303a22223b733a353a227468656164223b733a303a22223b733a353a2274666f6f74223b733a303a22223b733a353a22746c656674223b733a303a22223b733a383a22736f727461626c65223b733a303a22223b733a393a22736f7274496e646578223b733a313a2230223b733a393a22736f72744f72646572223b733a393a22617363656e64696e67223b733a373a226d6f6f54797065223b733a383a226d6f6f5374617274223b733a31313a226d6f6f486561646c696e65223b733a303a22223b733a383a226d6f6f5374796c65223b733a303a22223b733a31303a226d6f6f436c6173736573223b733a303a22223b733a393a22686967686c69676874223b733a303a22223b733a373a227368436c617373223b733a303a22223b733a343a22636f6465223b4e3b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a393a227469746c6554657874223b733a303a22223b733a393a226c696e6b5469746c65223b733a303a22223b733a353a22656d626564223b733a303a22223b733a333a2272656c223b733a303a22223b733a383a22757365496d616765223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a31303a22757365486f6d65446972223b733a303a22223b733a363a22706572526f77223b733a313a2234223b733a373a2270657250616765223b733a313a2230223b733a31333a226e756d6265724f664974656d73223b733a313a2230223b733a363a22736f72744279223b733a303a22223b733a31303a2267616c6c65727954706c223b733a303a22223b733a393a22706c61796572535243223b4e3b733a373a22796f7574756265223b733a303a22223b733a393a22706f73746572535243223b733a303a22223b733a31303a22706c6179657253697a65223b733a303a22223b733a383a226175746f706c6179223b733a303a22223b733a383a22637465416c696173223b733a313a2230223b733a31323a2261727469636c65416c696173223b733a313a2230223b733a373a2261727469636c65223b733a313a2230223b733a343a22666f726d223b733a313a2230223b733a363a226d6f64756c65223b733a313a2230223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a303a22223b733a353a227370616365223b733a303a22223b733a393a22696e76697369626c65223b733a303a22223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31313a22636f6d5f70657250616765223b733a313a2230223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31333a22646c685f676f6f676c656d6170223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f7a6f6f6d223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f73697a65223b733a303a22223b733a32303a22646c685f676f6f676c656d61705f737461746963223b733a303a22223b733a31373a22646c685f676f6f676c656d61705f75726c223b733a303a22223b7d );
INSERT INTO `tl_version` VALUES ( 8, 12, 1371303276, 4, 'tl_content', 2, 'Konro1', '', 'contao/main.php?do=article&table=tl_content&act=edit&id=12&rt=cbffa5cf6a2bbf6fe84cd3c2d8999169', '', 0x613a38313a7b733a323a226964223b733a323a223132223b733a333a22706964223b733a313a2234223b733a363a22707461626c65223b733a31303a22746c5f61727469636c65223b733a373a22736f7274696e67223b733a333a22313932223b733a363a22747374616d70223b733a31303a2231333731333033323033223b733a343a2274797065223b733a343a2268746d6c223b733a383a22686561646c696e65223b733a303a22223b733a343a2274657874223b4e3b733a383a22616464496d616765223b733a303a22223b733a393a2273696e676c65535243223b733a303a22223b733a333a22616c74223b733a303a22223b733a353a227469746c65223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a22696d6167656d617267696e223b733a303a22223b733a383a22696d61676555726c223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b733a383a22666c6f6174696e67223b733a303a22223b733a343a2268746d6c223b733a313336353a223c64697620636c6173733d22726f77223e0a20203c64697620636c6173733d227370616e36223e0a3c68333ed092d196d0b7d0b8d182d0bdd19620d0bad0b0d180d182d0bad0b83c2f68333e0a3c7461626c6520626f726465723d2230223e0a3c74626f64793e0a3c74723e0a3c74643ed0a8d0bed0b2d0bad0bed182d180d0b0d184d0b0d180d0b5d182d0bdd0b8d0b920d0b4d180d183d0ba3c2f74643e0a3c74643ed0b2d196d0b420363520d0b3d180d0bd2e202f31303020d188d1822e3c2f74643e0a3c2f74723e0a3c74723e0a3c74643ed09ed184d187d0b5d182d0bdd0b8d0b920d0b4d180d183d0ba3c2f74643e0a3c74643ed0b2d196d0b42031363020d0b3d180d0bd2e202f31303020d188d1822e3c2f74643e0a3c2f74723e0a3c74723e0a3c74643ed0a6d0b8d184d180d0bed0b2d0b8d0b92028d0bbd0b0d0b7d0b5d180d0bdd0b8d0b920d0b4d180d183d0ba293c2f74643e0a3c74643ed0b2d196d0b420353020d0b3d180d0bd2e202f31303020d188d1822e3c2f74643e0a3c2f74723e0a3c74723e0a3c74643ed0a2d0b8d181d0bdd0b5d0bdd0bdd18f20d184d0bed0bbd18cd0b3d0bed18e3c2f74643e0a3c74643ed0b2d196d0b42031323020d0b3d180d0bd2e202f31303020d188d1822e3c2f74643e0a3c2f74723e0a3c2f74626f64793e0a3c2f7461626c653e0a3c68333ed091d0bbd0b0d0bdd0bad0b820d182d0b020d0bad0bed0bdd0b2d0b5d180d182d0b83c2f68333e0a3c703ed0b2d196d0b42031353020d0b3d180d0bd2e2f31303020d188d1822e3c2f703e0a3c68333ed09dd0b0d0bad0bbd0b5d0b9d0bad0b82028d181d182d196d0bad0b5d180d0b8293c2f68333e0a3c703ed092d0b0d180d182d196d181d182d18c20d180d0bed0b7d180d0b0d185d0bed0b2d183d194d182d18cd181d18f20d196d0bdd0b4d0b8d0b2d196d0b4d183d0b0d0bbd18cd0bdd0be20d0b220d0b7d0b0d0bbd0b5d0b6d0bdd0bed181d182d19620d180d0bed0b7d0bcd196d180d196d0b22c20d184d0bed180d0bcd0b82c20d0bad0bed0bbd196d180d0bdd0bed181d182d19620d182d0b020d182d0b8d180d0b0d0b6d1832c20d0b020d182d0b0d0bad0bed0b620d0bcd0b0d182d0b5d180d196d0b0d0bbd1833c2f703e0a3c68333ed094d180d183d0ba20d0bfd0be20d0bfd0bbd0b0d181d182d0b8d0bad1833c2f68333e20200a3c703ed092d0b0d180d182d196d181d182d18c20d180d0bed0b7d180d0b0d185d0bed0b2d183d194d182d18cd181d18f20d196d0bdd0b4d0b8d0b2d196d0b4d183d0b0d0bbd18cd0bdd0be20d0b220d0b7d0b0d0bbd0b5d0b6d0bdd0bed181d182d19620d180d0bed0b7d0bcd196d180d196d0b22c20d184d0bed180d0bcd0b82c20d0bad0bed0bbd196d180d0bdd0bed181d182d19620d182d0b020d182d0b8d180d0b0d0b6d1832c20d0b020d182d0b0d0bad0bed0b620d0bcd0b0d182d0b5d180d196d0b0d0bbd1833c2f703e0a202020203c6120687265663d22756b2f63616c63756c61746f722e68746d6c223e3c627574746f6e20636c6173733d2262746e2062746e2d6c617267652062746e2d626c6f636b2062746e2d7072696d6172792220747970653d22627574746f6e223ed0a0d0bed0b7d180d0b0d185d183d0b2d0b0d182d0b820d186d196d0bdd1833c2f627574746f6e3e3c2f613e2020200a3c2f6469763e0a3c64697620636c6173733d227370616e36223e0a3c64697620636c6173733d2277656c6c223e0a20203c696d6720616c743d2222207372633d2266696c65732f7468656d652f696d672f636172642e6a7067223e0a3c2f6469763e0a3c2f6469763e0a3c64697620636c6173733d22636c656172223e3c2f6469763e0a3c2f6469763e223b733a383a226c69737474797065223b733a303a22223b733a393a226c6973746974656d73223b4e3b733a31303a227461626c656974656d73223b4e3b733a373a2273756d6d617279223b733a303a22223b733a353a227468656164223b733a303a22223b733a353a2274666f6f74223b733a303a22223b733a353a22746c656674223b733a303a22223b733a383a22736f727461626c65223b733a303a22223b733a393a22736f7274496e646578223b733a313a2230223b733a393a22736f72744f72646572223b733a393a22617363656e64696e67223b733a373a226d6f6f54797065223b733a383a226d6f6f5374617274223b733a31313a226d6f6f486561646c696e65223b733a303a22223b733a383a226d6f6f5374796c65223b733a303a22223b733a31303a226d6f6f436c6173736573223b733a303a22223b733a393a22686967686c69676874223b733a303a22223b733a373a227368436c617373223b733a303a22223b733a343a22636f6465223b4e3b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a393a227469746c6554657874223b733a303a22223b733a393a226c696e6b5469746c65223b733a303a22223b733a353a22656d626564223b733a303a22223b733a333a2272656c223b733a303a22223b733a383a22757365496d616765223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a31303a22757365486f6d65446972223b733a303a22223b733a363a22706572526f77223b733a313a2234223b733a373a2270657250616765223b733a313a2230223b733a31333a226e756d6265724f664974656d73223b733a313a2230223b733a363a22736f72744279223b733a303a22223b733a31303a2267616c6c65727954706c223b733a303a22223b733a393a22706c61796572535243223b4e3b733a373a22796f7574756265223b733a303a22223b733a393a22706f73746572535243223b733a303a22223b733a31303a22706c6179657253697a65223b733a303a22223b733a383a226175746f706c6179223b733a303a22223b733a383a22637465416c696173223b733a313a2230223b733a31323a2261727469636c65416c696173223b733a313a2230223b733a373a2261727469636c65223b733a313a2230223b733a343a22666f726d223b733a313a2230223b733a363a226d6f64756c65223b733a313a2230223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a303a22223b733a353a227370616365223b733a303a22223b733a393a22696e76697369626c65223b733a303a22223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31313a22636f6d5f70657250616765223b733a313a2230223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31333a22646c685f676f6f676c656d6170223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f7a6f6f6d223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f73697a65223b733a303a22223b733a32303a22646c685f676f6f676c656d61705f737461746963223b733a303a22223b733a31373a22646c685f676f6f676c656d61705f75726c223b733a303a22223b7d );
INSERT INTO `tl_version` VALUES ( 9, 9, 1371303375, 1, 'tl_page', 2, 'Konro1', 'Калькулятор', 'contao/main.php?do=page&act=edit&id=9&rt=cbffa5cf6a2bbf6fe84cd3c2d8999169', '', 0x613a34383a7b733a323a226964223b733a313a2239223b733a333a22706964223b733a313a2236223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231333731333033333439223b733a353a227469746c65223b733a32323a22d09ad0b0d0bbd18cd0bad183d0bbd18fd182d0bed180223b733a353a22616c696173223b733a31303a2263616c63756c61746f72223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22706167655469746c65223b733a303a22223b733a383a226c616e6775616765223b733a303a22223b733a363a22726f626f7473223b733a31323a22696e6465782c666f6c6c6f77223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a227265646972656374223b733a393a227065726d616e656e74223b733a363a226a756d70546f223b733a313a2230223b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a333a22646e73223b733a303a22223b733a31313a2273746174696346696c6573223b733a303a22223b733a31333a22737461746963506c7567696e73223b733a303a22223b733a383a2266616c6c6261636b223b733a303a22223b733a31303a2261646d696e456d61696c223b733a303a22223b733a31303a2264617465466f726d6174223b733a303a22223b733a31303a2274696d65466f726d6174223b733a303a22223b733a31313a22646174696d466f726d6174223b733a303a22223b733a31333a22637265617465536974656d6170223b733a303a22223b733a31313a22736974656d61704e616d65223b733a303a22223b733a363a2275736553534c223b733a303a22223b733a31313a226175746f666f7277617264223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a31333a22696e636c7564654c61796f7574223b733a313a2231223b733a363a226c61796f7574223b733a313a2232223b733a31323a226d6f62696c654c61796f7574223b733a313a2230223b733a31323a22696e636c7564654361636865223b733a303a22223b733a353a226361636865223b733a313a2230223b733a31323a22696e636c75646543686d6f64223b733a303a22223b733a353a226375736572223b733a313a2230223b733a363a226367726f7570223b733a313a2230223b733a353a2263686d6f64223b733a3132333a22613a393a7b693a303b733a323a227531223b693a313b733a323a227532223b693a323b733a323a227533223b693a333b733a323a227534223b693a343b733a323a227535223b693a353b733a323a227536223b693a363b733a323a226734223b693a373b733a323a226735223b693a383b733a323a226736223b7d223b733a383a226e6f536561726368223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a373a22736974656d6170223b733a31313a226d61705f64656661756c74223b733a343a2268696465223b733a313a2231223b733a363a22677565737473223b733a303a22223b733a383a22746162696e646578223b733a313a2230223b733a393a226163636573736b6579223b733a303a22223b733a393a227075626c6973686564223b733a303a22223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b7d );
INSERT INTO `tl_version` VALUES ( 10, 9, 1371303379, 2, 'tl_page', 2, 'Konro1', 'Калькулятор', 'contao/main.php?do=page&act=edit&id=9&rt=cbffa5cf6a2bbf6fe84cd3c2d8999169', '1', 0x613a34383a7b733a323a226964223b733a313a2239223b733a333a22706964223b733a313a2236223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231333731333033333439223b733a353a227469746c65223b733a32323a22d09ad0b0d0bbd18cd0bad183d0bbd18fd182d0bed180223b733a353a22616c696173223b733a31303a2263616c63756c61746f72223b733a343a2274797065223b733a373a22726567756c6172223b733a393a22706167655469746c65223b733a303a22223b733a383a226c616e6775616765223b733a303a22223b733a363a22726f626f7473223b733a31323a22696e6465782c666f6c6c6f77223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a227265646972656374223b733a393a227065726d616e656e74223b733a363a226a756d70546f223b733a313a2230223b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a333a22646e73223b733a303a22223b733a31313a2273746174696346696c6573223b733a303a22223b733a31333a22737461746963506c7567696e73223b733a303a22223b733a383a2266616c6c6261636b223b733a303a22223b733a31303a2261646d696e456d61696c223b733a303a22223b733a31303a2264617465466f726d6174223b733a303a22223b733a31303a2274696d65466f726d6174223b733a303a22223b733a31313a22646174696d466f726d6174223b733a303a22223b733a31333a22637265617465536974656d6170223b733a303a22223b733a31313a22736974656d61704e616d65223b733a303a22223b733a363a2275736553534c223b733a303a22223b733a31313a226175746f666f7277617264223b733a303a22223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a31333a22696e636c7564654c61796f7574223b733a313a2231223b733a363a226c61796f7574223b733a313a2232223b733a31323a226d6f62696c654c61796f7574223b733a313a2230223b733a31323a22696e636c7564654361636865223b733a303a22223b733a353a226361636865223b733a313a2230223b733a31323a22696e636c75646543686d6f64223b733a303a22223b733a353a226375736572223b733a313a2230223b733a363a226367726f7570223b733a313a2230223b733a353a2263686d6f64223b733a3132333a22613a393a7b693a303b733a323a227531223b693a313b733a323a227532223b693a323b733a323a227533223b693a333b733a323a227534223b693a343b733a323a227535223b693a353b733a323a227536223b693a363b733a323a226734223b693a373b733a323a226735223b693a383b733a323a226736223b7d223b733a383a226e6f536561726368223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a373a22736974656d6170223b733a31313a226d61705f64656661756c74223b733a343a2268696465223b733a313a2231223b733a363a22677565737473223b733a303a22223b733a383a22746162696e646578223b733a313a2230223b733a393a226163636573736b6579223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b7d );
INSERT INTO `tl_version` VALUES ( 11, 4, 1371303582, 1, 'tl_msm_photos_category', 2, 'Konro1', 'Буклети', 'contao/main.php?do=my_fotogallery&act=edit&id=4&rt=cbffa5cf6a2bbf6fe84cd3c2d8999169', '1', 0x613a363a7b733a323a226964223b733a313a2234223b733a333a22706964223b733a313a2230223b733a363a22747374616d70223b733a31303a2231333731313533373735223b733a353a227469746c65223b733a31343a22d091d183d0bad0bbd0b5d182d0b8223b733a353a2270686f746f223b733a333a22313230223b733a363a2270686f746f73223b733a303a22223b7d );
INSERT INTO `tl_version` VALUES ( 12, 11, 1371305734, 1, 'tl_module', 2, 'Konro1', 'Калькулятор', 'contao/main.php?do=themes&mode=2&pid=1&rt=cbffa5cf6a2bbf6fe84cd3c2d8999169&table=tl_module&act=edit&id=11', '1', 0x613a3131373a7b733a323a226964223b733a323a223131223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231333731333035373333223b733a343a226e616d65223b733a32323a22d09ad0b0d0bbd18cd0bad183d0bbd18fd182d0bed180223b733a383a22686561646c696e65223b733a303a22223b733a343a2274797065223b733a31323a226d7943616c63796c61746f72223b733a31313a226c6576656c4f6666736574223b733a313a2230223b733a393a2273686f774c6576656c223b733a313a2230223b733a393a22686172644c696d6974223b733a303a22223b733a31333a2273686f7750726f746563746564223b733a303a22223b733a31303a22646566696e65526f6f74223b733a303a22223b733a383a22726f6f7450616765223b733a313a2230223b733a31333a226e617669676174696f6e54706c223b733a303a22223b733a353a227061676573223b4e3b733a31303a2273686f7748696464656e223b733a303a22223b733a31313a22637573746f6d4c6162656c223b733a303a22223b733a393a226175746f6c6f67696e223b733a303a22223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a343a22636f6c73223b733a333a2232636c223b733a383a226564697461626c65223b4e3b733a393a226d656d62657254706c223b733a303a22223b733a393a227461626c656c657373223b733a303a22223b733a343a22666f726d223b733a313a2230223b733a393a22717565727954797065223b733a333a22616e64223b733a353a2266757a7a79223b733a303a22223b733a31333a22636f6e746578744c656e677468223b733a323a223438223b733a31313a22746f74616c4c656e677468223b733a343a2231303030223b733a373a2270657250616765223b733a313a2230223b733a31303a2273656172636854797065223b733a363a2273696d706c65223b733a393a2273656172636854706c223b733a303a22223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a393a22736b69704669727374223b733a313a2230223b733a393a226c6f61644669727374223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a227472616e73706172656e74223b733a303a22223b733a393a22666c61736876617273223b733a303a22223b733a31303a22616c74436f6e74656e74223b4e3b733a363a22736f75726365223b733a383a22696e7465726e616c223b733a393a2273696e676c65535243223b733a303a22223b733a333a2275726c223b733a303a22223b733a31313a22696e746572616374697665223b733a303a22223b733a373a22666c6173684944223b733a303a22223b733a373a22666c6173684a53223b4e3b733a373a22696d6753697a65223b733a303a22223b733a31303a2275736543617074696f6e223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a343a2268746d6c223b4e3b733a393a227273735f6361636865223b733a343a2233363030223b733a383a227273735f66656564223b4e3b733a31323a227273735f74656d706c617465223b733a31313a227273735f64656661756c74223b733a31333a226e756d6265724f664974656d73223b733a313a2233223b733a31343a2264697361626c6543617074636861223b733a303a22223b733a31303a227265675f67726f757073223b4e3b733a31343a227265675f616c6c6f774c6f67696e223b733a303a22223b733a31323a227265675f736b69704e616d65223b733a303a22223b733a393a227265675f636c6f7365223b733a303a22223b733a31333a227265675f61737369676e446972223b733a303a22223b733a31313a227265675f686f6d65446972223b733a303a22223b733a31323a227265675f6163746976617465223b733a303a22223b733a31303a227265675f6a756d70546f223b733a313a2230223b733a383a227265675f74657874223b4e3b733a31323a227265675f70617373776f7264223b4e3b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a303a22223b733a353a227370616365223b733a303a22223b733a31323a2263616c5f63616c656e646172223b4e3b733a31303a2263616c5f6e6f5370616e223b733a303a22223b733a31323a2263616c5f7374617274446179223b733a313a2230223b733a31303a2263616c5f666f726d6174223b733a393a2263616c5f6d6f6e7468223b733a31373a2263616c5f69676e6f726544796e616d6963223b733a303a22223b733a393a2263616c5f6f72646572223b733a393a22617363656e64696e67223b733a31363a2263616c5f7265616465724d6f64756c65223b733a313a2230223b733a393a2263616c5f6c696d6974223b733a313a2230223b733a31323a2263616c5f74656d706c617465223b733a31303a226576656e745f66756c6c223b733a31333a2263616c5f6374656d706c617465223b733a31313a2263616c5f64656661756c74223b733a31363a2263616c5f73686f775175616e74697479223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31343a226661715f63617465676f72696573223b4e3b733a31363a226661715f7265616465724d6f64756c65223b733a313a2230223b733a31303a226c6973745f7461626c65223b733a303a22223b733a31313a226c6973745f6669656c6473223b733a303a22223b733a31303a226c6973745f7768657265223b733a303a22223b733a31313a226c6973745f736561726368223b733a303a22223b733a393a226c6973745f736f7274223b733a303a22223b733a393a226c6973745f696e666f223b733a303a22223b733a31353a226c6973745f696e666f5f7768657265223b733a303a22223b733a31313a226c6973745f6c61796f7574223b733a31323a226c6973745f64656661756c74223b733a31363a226c6973745f696e666f5f6c61796f7574223b733a31323a22696e666f5f64656661756c74223b733a31333a226e6577735f6172636869766573223b4e3b733a31333a226e6577735f6665617475726564223b733a393a22616c6c5f6974656d73223b733a31383a226e6577735f6a756d70546f43757272656e74223b733a303a22223b733a31373a226e6577735f7265616465724d6f64756c65223b733a313a2230223b733a31353a226e6577735f6d6574614669656c6473223b733a33383a22613a323a7b693a303b733a343a2264617465223b693a313b733a363a22617574686f72223b7d223b733a31333a226e6577735f74656d706c617465223b733a31313a226e6577735f6c6174657374223b733a31313a226e6577735f666f726d6174223b733a31303a226e6577735f6d6f6e7468223b733a31333a226e6577735f7374617274446179223b733a313a2230223b733a31303a226e6577735f6f72646572223b733a31303a2264657363656e64696e67223b733a31373a226e6577735f73686f775175616e74697479223b733a303a22223b733a31313a226e6577736c657474657273223b4e3b733a31313a226e6c5f6368616e6e656c73223b4e3b733a31353a226e6c5f686964654368616e6e656c73223b733a303a22223b733a31323a226e6c5f737562736372696265223b4e3b733a31343a226e6c5f756e737562736372696265223b4e3b733a31313a226e6c5f74656d706c617465223b733a393a226e6c5f73696d706c65223b733a31333a22646c685f676f6f676c656d6170223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f7a6f6f6d223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f73697a65223b733a303a22223b7d );
INSERT INTO `tl_version` VALUES ( 13, 7, 1371305747, 1, 'tl_article', 2, 'Konro1', 'Калькулятор', '', '', 0x613a31383a7b733a323a226964223b733a313a2237223b733a333a22706964223b733a313a2239223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231333731333033333439223b733a353a227469746c65223b733a32323a22d09ad0b0d0bbd18cd0bad183d0bbd18fd182d0bed180223b733a353a22616c696173223b733a31303a2263616c63756c61746f72223b733a363a22617574686f72223b733a313a2232223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a383a226b6579776f726473223b4e3b733a31303a2273686f77546561736572223b733a303a22223b733a31313a227465617365724373734944223b733a303a22223b733a363a22746561736572223b4e3b733a393a227072696e7461626c65223b733a303a22223b733a353a226373734944223b733a303a22223b733a353a227370616365223b733a303a22223b733a393a227075626c6973686564223b733a303a22223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b7d );
INSERT INTO `tl_version` VALUES ( 14, 7, 1371305747, 2, 'tl_article', 2, 'Konro1', 'Калькулятор', '', '1', 0x613a31383a7b733a323a226964223b733a313a2237223b733a333a22706964223b733a313a2239223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231333731333035373437223b733a353a227469746c65223b733a32323a22d09ad0b0d0bbd18cd0bad183d0bbd18fd182d0bed180223b733a353a22616c696173223b733a31303a2263616c63756c61746f72223b733a363a22617574686f72223b733a313a2232223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a383a226b6579776f726473223b4e3b733a31303a2273686f77546561736572223b733a303a22223b733a31313a227465617365724373734944223b733a303a22223b733a363a22746561736572223b4e3b733a393a227072696e7461626c65223b733a303a22223b733a353a226373734944223b733a303a22223b733a353a227370616365223b733a303a22223b733a393a227075626c6973686564223b733a313a2231223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b7d );
INSERT INTO `tl_version` VALUES ( 15, 15, 1371305756, 1, 'tl_content', 2, 'Konro1', '', 'contao/main.php?do=article&mode=2&pid=7&rt=cbffa5cf6a2bbf6fe84cd3c2d8999169&table=tl_content&act=edit&id=15', '1', 0x613a38313a7b733a323a226964223b733a323a223135223b733a333a22706964223b733a313a2237223b733a363a22707461626c65223b733a31303a22746c5f61727469636c65223b733a373a22736f7274696e67223b733a333a22313238223b733a363a22747374616d70223b733a31303a2231333731333035373536223b733a343a2274797065223b733a363a226d6f64756c65223b733a383a22686561646c696e65223b733a303a22223b733a343a2274657874223b4e3b733a383a22616464496d616765223b733a303a22223b733a393a2273696e676c65535243223b733a303a22223b733a333a22616c74223b733a303a22223b733a353a227469746c65223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a22696d6167656d617267696e223b733a303a22223b733a383a22696d61676555726c223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b733a383a22666c6f6174696e67223b733a303a22223b733a343a2268746d6c223b4e3b733a383a226c69737474797065223b733a303a22223b733a393a226c6973746974656d73223b4e3b733a31303a227461626c656974656d73223b4e3b733a373a2273756d6d617279223b733a303a22223b733a353a227468656164223b733a303a22223b733a353a2274666f6f74223b733a303a22223b733a353a22746c656674223b733a303a22223b733a383a22736f727461626c65223b733a303a22223b733a393a22736f7274496e646578223b733a313a2230223b733a393a22736f72744f72646572223b733a393a22617363656e64696e67223b733a373a226d6f6f54797065223b733a383a226d6f6f5374617274223b733a31313a226d6f6f486561646c696e65223b733a303a22223b733a383a226d6f6f5374796c65223b733a303a22223b733a31303a226d6f6f436c6173736573223b733a303a22223b733a393a22686967686c69676874223b733a303a22223b733a373a227368436c617373223b733a303a22223b733a343a22636f6465223b4e3b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a393a227469746c6554657874223b733a303a22223b733a393a226c696e6b5469746c65223b733a303a22223b733a353a22656d626564223b733a303a22223b733a333a2272656c223b733a303a22223b733a383a22757365496d616765223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a31303a22757365486f6d65446972223b733a303a22223b733a363a22706572526f77223b733a313a2234223b733a373a2270657250616765223b733a313a2230223b733a31333a226e756d6265724f664974656d73223b733a313a2230223b733a363a22736f72744279223b733a303a22223b733a31303a2267616c6c65727954706c223b733a303a22223b733a393a22706c61796572535243223b4e3b733a373a22796f7574756265223b733a303a22223b733a393a22706f73746572535243223b733a303a22223b733a31303a22706c6179657253697a65223b733a303a22223b733a383a226175746f706c6179223b733a303a22223b733a383a22637465416c696173223b733a313a2230223b733a31323a2261727469636c65416c696173223b733a313a2230223b733a373a2261727469636c65223b733a313a2230223b733a343a22666f726d223b733a313a2230223b733a363a226d6f64756c65223b733a313a2230223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a353a227370616365223b733a32383a22613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d223b733a393a22696e76697369626c65223b733a303a22223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31313a22636f6d5f70657250616765223b733a313a2230223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31333a22646c685f676f6f676c656d6170223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f7a6f6f6d223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f73697a65223b733a303a22223b733a32303a22646c685f676f6f676c656d61705f737461746963223b733a303a22223b733a31373a22646c685f676f6f676c656d61705f75726c223b733a303a22223b7d );
INSERT INTO `tl_version` VALUES ( 16, 12, 1371311780, 5, 'tl_content', 2, 'Konro1', '', 'contao/main.php?do=article&table=tl_content&act=edit&id=12&rt=cbffa5cf6a2bbf6fe84cd3c2d8999169', '1', 0x613a38313a7b733a323a226964223b733a323a223132223b733a333a22706964223b733a313a2234223b733a363a22707461626c65223b733a31303a22746c5f61727469636c65223b733a373a22736f7274696e67223b733a333a22313932223b733a363a22747374616d70223b733a31303a2231333731333033323736223b733a343a2274797065223b733a343a2268746d6c223b733a383a22686561646c696e65223b733a303a22223b733a343a2274657874223b4e3b733a383a22616464496d616765223b733a303a22223b733a393a2273696e676c65535243223b733a303a22223b733a333a22616c74223b733a303a22223b733a353a227469746c65223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a22696d6167656d617267696e223b733a303a22223b733a383a22696d61676555726c223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b733a383a22666c6f6174696e67223b733a303a22223b733a343a2268746d6c223b733a313338383a223c64697620636c6173733d22726f77223e0a20203c64697620636c6173733d227370616e36223e0a3c68333ed092d196d0b7d0b8d182d0bdd19620d0bad0b0d180d182d0bad0b83c2f68333e0a3c7461626c6520626f726465723d2230223e0a3c74626f64793e0a3c74723e0a3c74643ed0a8d0bed0b2d0bad0bed182d180d0b0d184d0b0d180d0b5d182d0bdd0b8d0b920d0b4d180d183d0ba3c2f74643e0a3c74643ed0b2d196d0b420363520d0b3d180d0bd2e202f31303020d188d1822e3c2f74643e0a3c2f74723e0a3c74723e0a3c74643ed09ed184d187d0b5d182d0bdd0b8d0b920d0b4d180d183d0ba3c2f74643e0a3c74643ed0b2d196d0b42031363020d0b3d180d0bd2e202f31303020d188d1822e3c2f74643e0a3c2f74723e0a3c74723e0a3c74643ed0a6d0b8d184d180d0bed0b2d0b8d0b92028d0bbd0b0d0b7d0b5d180d0bdd0b8d0b920d0b4d180d183d0ba293c2f74643e0a3c74643ed0b2d196d0b420353020d0b3d180d0bd2e202f31303020d188d1822e3c2f74643e0a3c2f74723e0a3c74723e0a3c74643ed0a2d0b8d181d0bdd0b5d0bdd0bdd18f20d184d0bed0bbd18cd0b3d0bed18e3c2f74643e0a3c74643ed0b2d196d0b42031323020d0b3d180d0bd2e202f31303020d188d1822e3c2f74643e0a3c2f74723e0a3c2f74626f64793e0a3c2f7461626c653e0a3c68333ed091d0bbd0b0d0bdd0bad0b820d182d0b020d0bad0bed0bdd0b2d0b5d180d182d0b83c2f68333e0a3c703ed0b2d196d0b42031353020d0b3d180d0bd2e2f31303020d188d1822e3c2f703e0a3c68333ed09dd0b0d0bad0bbd0b5d0b9d0bad0b82028d181d182d196d0bad0b5d180d0b8293c2f68333e0a3c703ed092d0b0d180d182d196d181d182d18c20d180d0bed0b7d180d0b0d185d0bed0b2d183d194d182d18cd181d18f20d196d0bdd0b4d0b8d0b2d196d0b4d183d0b0d0bbd18cd0bdd0be20d0b220d0b7d0b0d0bbd0b5d0b6d0bdd0bed181d182d19620d180d0bed0b7d0bcd196d180d196d0b22c20d184d0bed180d0bcd0b82c20d0bad0bed0bbd196d180d0bdd0bed181d182d19620d182d0b020d182d0b8d180d0b0d0b6d1832c20d0b020d182d0b0d0bad0bed0b620d0bcd0b0d182d0b5d180d196d0b0d0bbd1833c2f703e0a3c68333ed094d180d183d0ba20d0bfd0be20d0bfd0bbd0b0d181d182d0b8d0bad1833c2f68333e20200a3c703ed092d0b0d180d182d196d181d182d18c20d180d0bed0b7d180d0b0d185d0bed0b2d183d194d182d18cd181d18f20d196d0bdd0b4d0b8d0b2d196d0b4d183d0b0d0bbd18cd0bdd0be20d0b220d0b7d0b0d0bbd0b5d0b6d0bdd0bed181d182d19620d180d0bed0b7d0bcd196d180d196d0b22c20d184d0bed180d0bcd0b82c20d0bad0bed0bbd196d180d0bdd0bed181d182d19620d182d0b020d182d0b8d180d0b0d0b6d1832c20d0b020d182d0b0d0bad0bed0b620d0bcd0b0d182d0b5d180d196d0b0d0bbd1833c2f703e0a202020203c6120687265663d22756b2f63616c63756c61746f722e68746d6c2220636c6173733d22627574746f6e2d70616464696e67223e3c627574746f6e20636c6173733d2262746e2062746e2d6c617267652062746e2d626c6f636b2062746e2d7072696d6172792220747970653d22627574746f6e223ed0a0d0bed0b7d180d0b0d185d183d0b2d0b0d182d0b820d186d196d0bdd1833c2f627574746f6e3e3c2f613e2020200a3c2f6469763e0a3c64697620636c6173733d227370616e36223e0a3c64697620636c6173733d2277656c6c223e0a20203c696d6720616c743d2222207372633d2266696c65732f7468656d652f696d672f636172642e6a7067223e0a3c2f6469763e0a3c2f6469763e0a3c64697620636c6173733d22636c656172223e3c2f6469763e0a3c2f6469763e223b733a383a226c69737474797065223b733a303a22223b733a393a226c6973746974656d73223b4e3b733a31303a227461626c656974656d73223b4e3b733a373a2273756d6d617279223b733a303a22223b733a353a227468656164223b733a303a22223b733a353a2274666f6f74223b733a303a22223b733a353a22746c656674223b733a303a22223b733a383a22736f727461626c65223b733a303a22223b733a393a22736f7274496e646578223b733a313a2230223b733a393a22736f72744f72646572223b733a393a22617363656e64696e67223b733a373a226d6f6f54797065223b733a383a226d6f6f5374617274223b733a31313a226d6f6f486561646c696e65223b733a303a22223b733a383a226d6f6f5374796c65223b733a303a22223b733a31303a226d6f6f436c6173736573223b733a303a22223b733a393a22686967686c69676874223b733a303a22223b733a373a227368436c617373223b733a303a22223b733a343a22636f6465223b4e3b733a333a2275726c223b733a303a22223b733a363a22746172676574223b733a303a22223b733a393a227469746c6554657874223b733a303a22223b733a393a226c696e6b5469746c65223b733a303a22223b733a353a22656d626564223b733a303a22223b733a333a2272656c223b733a303a22223b733a383a22757365496d616765223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a31303a22757365486f6d65446972223b733a303a22223b733a363a22706572526f77223b733a313a2234223b733a373a2270657250616765223b733a313a2230223b733a31333a226e756d6265724f664974656d73223b733a313a2230223b733a363a22736f72744279223b733a303a22223b733a31303a2267616c6c65727954706c223b733a303a22223b733a393a22706c61796572535243223b4e3b733a373a22796f7574756265223b733a303a22223b733a393a22706f73746572535243223b733a303a22223b733a31303a22706c6179657253697a65223b733a303a22223b733a383a226175746f706c6179223b733a303a22223b733a383a22637465416c696173223b733a313a2230223b733a31323a2261727469636c65416c696173223b733a313a2230223b733a373a2261727469636c65223b733a313a2230223b733a343a22666f726d223b733a313a2230223b733a363a226d6f64756c65223b733a313a2230223b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a303a22223b733a353a227370616365223b733a303a22223b733a393a22696e76697369626c65223b733a303a22223b733a353a227374617274223b733a303a22223b733a343a2273746f70223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31313a22636f6d5f70657250616765223b733a313a2230223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31333a22646c685f676f6f676c656d6170223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f7a6f6f6d223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f73697a65223b733a303a22223b733a32303a22646c685f676f6f676c656d61705f737461746963223b733a303a22223b733a31373a22646c685f676f6f676c656d61705f75726c223b733a303a22223b7d );
INSERT INTO `tl_version` VALUES ( 17, 1, 1371316006, 1, 'tl_theme', 2, 'Konro1', 'Rona', 'contao/main.php?do=themes&act=edit&id=1&rt=cbffa5cf6a2bbf6fe84cd3c2d8999169', '1', 0x613a383a7b733a323a226964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231333638393732353039223b733a343a226e616d65223b733a343a22526f6e61223b733a363a22617574686f72223b733a32393a22d0a0d0bed181d182d0b8d181d0bbd0b0d0b220d09ad183d180d196d0b9223b733a373a22666f6c64657273223b733a303a22223b733a31303a2273637265656e73686f74223b733a303a22223b733a393a2274656d706c61746573223b733a303a22223b733a343a2276617273223b733a363a22613a303a7b7d223b7d );
INSERT INTO `tl_version` VALUES ( 18, 1, 1371316037, 1, 'tl_layout', 2, 'Konro1', 'Головна', 'contao/main.php?do=themes&table=tl_layout&act=edit&id=1&rt=cbffa5cf6a2bbf6fe84cd3c2d8999169', '1', 0x613a33363a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231333638393738333038223b733a343a226e616d65223b733a31343a22d093d0bed0bbd0bed0b2d0bdd0b0223b733a343a22726f7773223b733a333a22337277223b733a31323a22686561646572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31323a22666f6f746572486569676874223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a343a22636f6c73223b733a333a2231636c223b733a393a2277696474684c656674223b733a34333a22613a323a7b733a343a22756e6974223b733a303a22223b733a353a2276616c7565223b733a303a22223b7d223b733a31303a2277696474685269676874223b733a303a22223b733a383a2273656374696f6e73223b733a303a22223b733a393a2273506f736974696f6e223b733a343a226d61696e223b733a393a226672616d65776f726b223b733a34383a22613a323a7b693a303b733a31303a226c61796f75742e637373223b693a313b733a393a2272657365742e637373223b7d223b733a31303a227374796c657368656574223b733a303a22223b733a383a2265787465726e616c223b733a303a22223b733a383a226f72646572457874223b733a303a22223b733a393a226e6577736665656473223b733a303a22223b733a31333a2263616c656e6461726665656473223b733a303a22223b733a373a226d6f64756c6573223b733a3235373a22613a353a7b693a303b613a323a7b733a333a226d6f64223b733a313a2231223b733a333a22636f6c223b733a363a22686561646572223b7d693a313b613a323a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22686561646572223b7d693a323b613a323a7b733a333a226d6f64223b733a313a2233223b733a333a22636f6c223b733a343a226d61696e223b7d693a333b613a323a7b733a333a226d6f64223b733a313a2234223b733a333a22636f6c223b733a343a226d61696e223b7d693a343b613a323a7b733a333a226d6f64223b733a313a2235223b733a333a22636f6c223b733a363a22666f6f746572223b7d7d223b733a383a2274656d706c617465223b733a373a2266655f70616765223b733a373a22646f6374797065223b733a31323a227868746d6c5f737472696374223b733a383a22776562666f6e7473223b733a303a22223b733a383a22637373436c617373223b733a303a22223b733a363a226f6e6c6f6164223b733a303a22223b733a343a2268656164223b733a303a22223b733a393a226164644a5175657279223b733a313a2231223b733a373a226a536f75726365223b733a31303a226a5f66616c6c6261636b223b733a363a226a7175657279223b733a303a22223b733a31313a226164644d6f6f546f6f6c73223b733a303a22223b733a393a226d6f6f536f75726365223b733a393a226d6f6f5f6c6f63616c223b733a383a226d6f6f746f6f6c73223b4e3b733a393a22616e616c7974696373223b733a303a22223b733a363a22736372697074223b733a303a22223b733a363a22737461746963223b733a303a22223b733a353a227769647468223b733a303a22223b733a353a22616c69676e223b733a363a2263656e746572223b7d );
INSERT INTO `tl_version` VALUES ( 19, 4, 1371316047, 1, 'tl_module', 2, 'Konro1', 'Головні статті', 'contao/main.php?do=themes&table=tl_module&act=edit&id=4&rt=cbffa5cf6a2bbf6fe84cd3c2d8999169', '', 0x613a3131373a7b733a323a226964223b733a313a2234223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231333638393736353332223b733a343a226e616d65223b733a32373a22d093d0bed0bbd0bed0b2d0bdd19620d181d182d0b0d182d182d196223b733a383a22686561646c696e65223b733a303a22223b733a343a2274797065223b733a343a2268746d6c223b733a31313a226c6576656c4f6666736574223b733a313a2230223b733a393a2273686f774c6576656c223b733a313a2230223b733a393a22686172644c696d6974223b733a303a22223b733a31333a2273686f7750726f746563746564223b733a303a22223b733a31303a22646566696e65526f6f74223b733a303a22223b733a383a22726f6f7450616765223b733a313a2230223b733a31333a226e617669676174696f6e54706c223b733a303a22223b733a353a227061676573223b4e3b733a31303a2273686f7748696464656e223b733a303a22223b733a31313a22637573746f6d4c6162656c223b733a303a22223b733a393a226175746f6c6f67696e223b733a303a22223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a343a22636f6c73223b733a333a2232636c223b733a383a226564697461626c65223b4e3b733a393a226d656d62657254706c223b733a303a22223b733a393a227461626c656c657373223b733a303a22223b733a343a22666f726d223b733a313a2230223b733a393a22717565727954797065223b733a333a22616e64223b733a353a2266757a7a79223b733a303a22223b733a31333a22636f6e746578744c656e677468223b733a323a223438223b733a31313a22746f74616c4c656e677468223b733a343a2231303030223b733a373a2270657250616765223b733a313a2230223b733a31303a2273656172636854797065223b733a363a2273696d706c65223b733a393a2273656172636854706c223b733a303a22223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a393a22736b69704669727374223b733a313a2230223b733a393a226c6f61644669727374223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a227472616e73706172656e74223b733a303a22223b733a393a22666c61736876617273223b733a303a22223b733a31303a22616c74436f6e74656e74223b4e3b733a363a22736f75726365223b733a383a22696e7465726e616c223b733a393a2273696e676c65535243223b733a303a22223b733a333a2275726c223b733a303a22223b733a31313a22696e746572616374697665223b733a303a22223b733a373a22666c6173684944223b733a303a22223b733a373a22666c6173684a53223b4e3b733a373a22696d6753697a65223b733a303a22223b733a31303a2275736543617074696f6e223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a343a2268746d6c223b733a313435373a223c64697620636c6173733d22636f6e7461696e6572223e0a20203c64697620636c6173733d22726f77223e0a202020202020202009093c64697620636c6173733d227370616e34223e0a20202020202020200909093c64697620636c6173733d226865726f2d756e6974223e0a2020202020202020090909093c68333e4c6f72656d20697073756d20646f6c6f722073697420616d65742e3c2f68333e0a2020202020202020090909093c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572206164697069736963696e6720656c69742e204163637573616e7469756d2c20617373756d656e64612c2066756769742c2073696e7420766f6c757074617320737573636970697420696e2073656420696c6c756d206d61676e6920646f6c6f726573206f66666963696120646f6c6f72756d206970736120756c6c616d2064656c656e697469206d6f6c65737469616520636f6d6d6f646920697573746f20696e76656e746f72652070617269617475722e2043756d7175652e3c2f703e0a2020202020202020090909093c703e3c6120687265663d222220636c6173733d2262746e2062746e2d7072696d617279223e4c6561726e206d6f72653c2f613e3c2f703e090a20202020202020200909093c2f6469763e0a202020202020202009093c2f6469763e0a202020202020202009093c64697620636c6173733d227370616e34223e0a20202020202020200909093c64697620636c6173733d226865726f2d756e6974223e0a2020202020202020090909093c68333e44656c656e6974692c2074656d706f726520666163657265206576656e69657420656975733f3c2f68333e0a2020202020202020090909093c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572206164697069736963696e6720656c69742e204d6f6c6c697469612c2070617269617475722c2065742c20697073612070657273706963696174697320696e20646f6c6f72657320706f72726f206e6f6e20616420726174696f6e65206c617564616e7469756d206172636869746563746f2064697374696e6374696f2063756c706120726570656c6c61742071756962757364616d20766f6c7570746174657320696e76656e746f72652071756f6420756c6c616d20696c6c756d2e3c2f703e0a2020202020202020090909093c703e3c6120687265663d222220636c6173733d2262746e2062746e2d7072696d617279223e4c6561726e206d6f72653c2f613e3c2f703e090a20202020202020200909093c2f6469763e0a202020202020202009093c2f6469763e0a202020202020202009093c64697620636c6173733d227370616e34223e0a20202020202020200909093c64697620636c6173733d226865726f2d756e6974223e0a2020202020202020090909093c68333e4f6469742073617069656e746520667567612069707361206e756d7175616d3f3c2f68333e0a2020202020202020090909093c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572206164697069736963696e6720656c69742e2041622c206d696e75732c206569757320646f6c6f72696275732061737065726e617475722068696320617574656d206469676e697373696d6f7320726570756469616e646165206172636869746563746f20766f6c7570746174756d206e6563657373697461746962757320736571756920726570726568656e646572697420666163696c697320696e76656e746f72652e3c2f703e0a2020202020202020090909093c703e3c6120687265663d222220636c6173733d2262746e2062746e2d7072696d617279223e4c6561726e206d6f72653c2f613e3c2f703e090a20202020202020200909093c2f6469763e0a202020202020202009093c2f6469763e0a2020202020202020093c2f6469763e0a3c2f6469763e223b733a393a227273735f6361636865223b733a343a2233363030223b733a383a227273735f66656564223b4e3b733a31323a227273735f74656d706c617465223b733a31313a227273735f64656661756c74223b733a31333a226e756d6265724f664974656d73223b733a313a2233223b733a31343a2264697361626c6543617074636861223b733a303a22223b733a31303a227265675f67726f757073223b4e3b733a31343a227265675f616c6c6f774c6f67696e223b733a303a22223b733a31323a227265675f736b69704e616d65223b733a303a22223b733a393a227265675f636c6f7365223b733a303a22223b733a31333a227265675f61737369676e446972223b733a303a22223b733a31313a227265675f686f6d65446972223b733a303a22223b733a31323a227265675f6163746976617465223b733a303a22223b733a31303a227265675f6a756d70546f223b733a313a2230223b733a383a227265675f74657874223b4e3b733a31323a227265675f70617373776f7264223b4e3b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a303a22223b733a353a227370616365223b733a303a22223b733a31323a2263616c5f63616c656e646172223b4e3b733a31303a2263616c5f6e6f5370616e223b733a303a22223b733a31323a2263616c5f7374617274446179223b733a313a2230223b733a31303a2263616c5f666f726d6174223b733a393a2263616c5f6d6f6e7468223b733a31373a2263616c5f69676e6f726544796e616d6963223b733a303a22223b733a393a2263616c5f6f72646572223b733a393a22617363656e64696e67223b733a31363a2263616c5f7265616465724d6f64756c65223b733a313a2230223b733a393a2263616c5f6c696d6974223b733a313a2230223b733a31323a2263616c5f74656d706c617465223b733a31303a226576656e745f66756c6c223b733a31333a2263616c5f6374656d706c617465223b733a31313a2263616c5f64656661756c74223b733a31363a2263616c5f73686f775175616e74697479223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31343a226661715f63617465676f72696573223b4e3b733a31363a226661715f7265616465724d6f64756c65223b733a313a2230223b733a31303a226c6973745f7461626c65223b733a303a22223b733a31313a226c6973745f6669656c6473223b733a303a22223b733a31303a226c6973745f7768657265223b733a303a22223b733a31313a226c6973745f736561726368223b733a303a22223b733a393a226c6973745f736f7274223b733a303a22223b733a393a226c6973745f696e666f223b733a303a22223b733a31353a226c6973745f696e666f5f7768657265223b733a303a22223b733a31313a226c6973745f6c61796f7574223b733a31323a226c6973745f64656661756c74223b733a31363a226c6973745f696e666f5f6c61796f7574223b733a31323a22696e666f5f64656661756c74223b733a31333a226e6577735f6172636869766573223b4e3b733a31333a226e6577735f6665617475726564223b733a393a22616c6c5f6974656d73223b733a31383a226e6577735f6a756d70546f43757272656e74223b733a303a22223b733a31373a226e6577735f7265616465724d6f64756c65223b733a313a2230223b733a31353a226e6577735f6d6574614669656c6473223b733a33383a22613a323a7b693a303b733a343a2264617465223b693a313b733a363a22617574686f72223b7d223b733a31333a226e6577735f74656d706c617465223b733a31313a226e6577735f6c6174657374223b733a31313a226e6577735f666f726d6174223b733a31303a226e6577735f6d6f6e7468223b733a31333a226e6577735f7374617274446179223b733a313a2230223b733a31303a226e6577735f6f72646572223b733a31303a2264657363656e64696e67223b733a31373a226e6577735f73686f775175616e74697479223b733a303a22223b733a31313a226e6577736c657474657273223b4e3b733a31313a226e6c5f6368616e6e656c73223b4e3b733a31353a226e6c5f686964654368616e6e656c73223b733a303a22223b733a31323a226e6c5f737562736372696265223b4e3b733a31343a226e6c5f756e737562736372696265223b4e3b733a31313a226e6c5f74656d706c617465223b733a393a226e6c5f73696d706c65223b733a31333a22646c685f676f6f676c656d6170223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f7a6f6f6d223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f73697a65223b733a303a22223b7d );
INSERT INTO `tl_version` VALUES ( 20, 4, 1371316072, 2, 'tl_module', 2, 'Konro1', 'Головні статті', 'contao/main.php?do=themes&table=tl_module&act=edit&id=4&rt=cbffa5cf6a2bbf6fe84cd3c2d8999169', '1', 0x613a3131373a7b733a323a226964223b733a313a2234223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231333638393736353332223b733a343a226e616d65223b733a32373a22d093d0bed0bbd0bed0b2d0bdd19620d181d182d0b0d182d182d196223b733a383a22686561646c696e65223b733a303a22223b733a343a2274797065223b733a343a2268746d6c223b733a31313a226c6576656c4f6666736574223b733a313a2230223b733a393a2273686f774c6576656c223b733a313a2230223b733a393a22686172644c696d6974223b733a303a22223b733a31333a2273686f7750726f746563746564223b733a303a22223b733a31303a22646566696e65526f6f74223b733a303a22223b733a383a22726f6f7450616765223b733a313a2230223b733a31333a226e617669676174696f6e54706c223b733a303a22223b733a353a227061676573223b4e3b733a31303a2273686f7748696464656e223b733a303a22223b733a31313a22637573746f6d4c6162656c223b733a303a22223b733a393a226175746f6c6f67696e223b733a303a22223b733a363a226a756d70546f223b733a313a2230223b733a31323a2272656469726563744261636b223b733a303a22223b733a343a22636f6c73223b733a333a2232636c223b733a383a226564697461626c65223b4e3b733a393a226d656d62657254706c223b733a303a22223b733a393a227461626c656c657373223b733a303a22223b733a343a22666f726d223b733a313a2230223b733a393a22717565727954797065223b733a333a22616e64223b733a353a2266757a7a79223b733a303a22223b733a31333a22636f6e746578744c656e677468223b733a323a223438223b733a31313a22746f74616c4c656e677468223b733a343a2231303030223b733a373a2270657250616765223b733a313a2230223b733a31303a2273656172636854797065223b733a363a2273696d706c65223b733a393a2273656172636854706c223b733a303a22223b733a383a22696e436f6c756d6e223b733a343a226d61696e223b733a393a22736b69704669727374223b733a313a2230223b733a393a226c6f61644669727374223b733a303a22223b733a343a2273697a65223b733a303a22223b733a31313a227472616e73706172656e74223b733a303a22223b733a393a22666c61736876617273223b733a303a22223b733a31303a22616c74436f6e74656e74223b4e3b733a363a22736f75726365223b733a383a22696e7465726e616c223b733a393a2273696e676c65535243223b733a303a22223b733a333a2275726c223b733a303a22223b733a31313a22696e746572616374697665223b733a303a22223b733a373a22666c6173684944223b733a303a22223b733a373a22666c6173684a53223b4e3b733a373a22696d6753697a65223b733a303a22223b733a31303a2275736543617074696f6e223b733a303a22223b733a383a2266756c6c73697a65223b733a303a22223b733a383a226d756c7469535243223b4e3b733a383a226f72646572535243223b4e3b733a343a2268746d6c223b733a313437383a223c64697620636c6173733d22636f6e7461696e6572223e0a20203c64697620636c6173733d22726f77223e0a202020202020202009093c64697620636c6173733d227370616e34223e0a20202020202020200909093c64697620636c6173733d226865726f2d756e6974206c74626c7565223e0a2020202020202020090909093c68333e4c6f72656d20697073756d20646f6c6f722073697420616d65742e3c2f68333e0a2020202020202020090909093c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572206164697069736963696e6720656c69742e204163637573616e7469756d2c20617373756d656e64612c2066756769742c2073696e7420766f6c757074617320737573636970697420696e2073656420696c6c756d206d61676e6920646f6c6f726573206f66666963696120646f6c6f72756d206970736120756c6c616d2064656c656e697469206d6f6c65737469616520636f6d6d6f646920697573746f20696e76656e746f72652070617269617475722e2043756d7175652e3c2f703e0a2020202020202020090909093c703e3c6120687265663d222220636c6173733d2262746e2062746e2d7072696d617279223e4c6561726e206d6f72653c2f613e3c2f703e090a20202020202020200909093c2f6469763e0a202020202020202009093c2f6469763e0a202020202020202009093c64697620636c6173733d227370616e34223e0a20202020202020200909093c64697620636c6173733d226865726f2d756e6974206c74626c7565223e0a2020202020202020090909093c68333e44656c656e6974692c2074656d706f726520666163657265206576656e69657420656975733f3c2f68333e0a2020202020202020090909093c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572206164697069736963696e6720656c69742e204d6f6c6c697469612c2070617269617475722c2065742c20697073612070657273706963696174697320696e20646f6c6f72657320706f72726f206e6f6e20616420726174696f6e65206c617564616e7469756d206172636869746563746f2064697374696e6374696f2063756c706120726570656c6c61742071756962757364616d20766f6c7570746174657320696e76656e746f72652071756f6420756c6c616d20696c6c756d2e3c2f703e0a2020202020202020090909093c703e3c6120687265663d222220636c6173733d2262746e2062746e2d7072696d617279223e4c6561726e206d6f72653c2f613e3c2f703e090a20202020202020200909093c2f6469763e0a202020202020202009093c2f6469763e0a202020202020202009093c64697620636c6173733d227370616e34223e0a20202020202020200909093c64697620636c6173733d226865726f2d756e6974206c74626c7565223e0a2020202020202020090909093c68333e4f6469742073617069656e746520667567612069707361206e756d7175616d3f3c2f68333e0a2020202020202020090909093c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572206164697069736963696e6720656c69742e2041622c206d696e75732c206569757320646f6c6f72696275732061737065726e617475722068696320617574656d206469676e697373696d6f7320726570756469616e646165206172636869746563746f20766f6c7570746174756d206e6563657373697461746962757320736571756920726570726568656e646572697420666163696c697320696e76656e746f72652e3c2f703e0a2020202020202020090909093c703e3c6120687265663d222220636c6173733d2262746e2062746e2d7072696d617279223e4c6561726e206d6f72653c2f613e3c2f703e090a20202020202020200909093c2f6469763e0a202020202020202009093c2f6469763e0a2020202020202020093c2f6469763e0a3c2f6469763e223b733a393a227273735f6361636865223b733a343a2233363030223b733a383a227273735f66656564223b4e3b733a31323a227273735f74656d706c617465223b733a31313a227273735f64656661756c74223b733a31333a226e756d6265724f664974656d73223b733a313a2233223b733a31343a2264697361626c6543617074636861223b733a303a22223b733a31303a227265675f67726f757073223b4e3b733a31343a227265675f616c6c6f774c6f67696e223b733a303a22223b733a31323a227265675f736b69704e616d65223b733a303a22223b733a393a227265675f636c6f7365223b733a303a22223b733a31333a227265675f61737369676e446972223b733a303a22223b733a31313a227265675f686f6d65446972223b733a303a22223b733a31323a227265675f6163746976617465223b733a303a22223b733a31303a227265675f6a756d70546f223b733a313a2230223b733a383a227265675f74657874223b4e3b733a31323a227265675f70617373776f7264223b4e3b733a393a2270726f746563746564223b733a303a22223b733a363a2267726f757073223b4e3b733a363a22677565737473223b733a303a22223b733a353a226373734944223b733a303a22223b733a353a227370616365223b733a303a22223b733a31323a2263616c5f63616c656e646172223b4e3b733a31303a2263616c5f6e6f5370616e223b733a303a22223b733a31323a2263616c5f7374617274446179223b733a313a2230223b733a31303a2263616c5f666f726d6174223b733a393a2263616c5f6d6f6e7468223b733a31373a2263616c5f69676e6f726544796e616d6963223b733a303a22223b733a393a2263616c5f6f72646572223b733a393a22617363656e64696e67223b733a31363a2263616c5f7265616465724d6f64756c65223b733a313a2230223b733a393a2263616c5f6c696d6974223b733a313a2230223b733a31323a2263616c5f74656d706c617465223b733a31303a226576656e745f66756c6c223b733a31333a2263616c5f6374656d706c617465223b733a31313a2263616c5f64656661756c74223b733a31363a2263616c5f73686f775175616e74697479223b733a303a22223b733a393a22636f6d5f6f72646572223b733a393a22617363656e64696e67223b733a31323a22636f6d5f6d6f646572617465223b733a303a22223b733a31303a22636f6d5f6262636f6465223b733a303a22223b733a31363a22636f6d5f726571756972654c6f67696e223b733a303a22223b733a31383a22636f6d5f64697361626c6543617074636861223b733a303a22223b733a31323a22636f6d5f74656d706c617465223b733a31313a22636f6d5f64656661756c74223b733a31343a226661715f63617465676f72696573223b4e3b733a31363a226661715f7265616465724d6f64756c65223b733a313a2230223b733a31303a226c6973745f7461626c65223b733a303a22223b733a31313a226c6973745f6669656c6473223b733a303a22223b733a31303a226c6973745f7768657265223b733a303a22223b733a31313a226c6973745f736561726368223b733a303a22223b733a393a226c6973745f736f7274223b733a303a22223b733a393a226c6973745f696e666f223b733a303a22223b733a31353a226c6973745f696e666f5f7768657265223b733a303a22223b733a31313a226c6973745f6c61796f7574223b733a31323a226c6973745f64656661756c74223b733a31363a226c6973745f696e666f5f6c61796f7574223b733a31323a22696e666f5f64656661756c74223b733a31333a226e6577735f6172636869766573223b4e3b733a31333a226e6577735f6665617475726564223b733a393a22616c6c5f6974656d73223b733a31383a226e6577735f6a756d70546f43757272656e74223b733a303a22223b733a31373a226e6577735f7265616465724d6f64756c65223b733a313a2230223b733a31353a226e6577735f6d6574614669656c6473223b733a33383a22613a323a7b693a303b733a343a2264617465223b693a313b733a363a22617574686f72223b7d223b733a31333a226e6577735f74656d706c617465223b733a31313a226e6577735f6c6174657374223b733a31313a226e6577735f666f726d6174223b733a31303a226e6577735f6d6f6e7468223b733a31333a226e6577735f7374617274446179223b733a313a2230223b733a31303a226e6577735f6f72646572223b733a31303a2264657363656e64696e67223b733a31373a226e6577735f73686f775175616e74697479223b733a303a22223b733a31313a226e6577736c657474657273223b4e3b733a31313a226e6c5f6368616e6e656c73223b4e3b733a31353a226e6c5f686964654368616e6e656c73223b733a303a22223b733a31323a226e6c5f737562736372696265223b4e3b733a31343a226e6c5f756e737562736372696265223b4e3b733a31313a226e6c5f74656d706c617465223b733a393a226e6c5f73696d706c65223b733a31333a22646c685f676f6f676c656d6170223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f7a6f6f6d223b733a313a2230223b733a31383a22646c685f676f6f676c656d61705f73697a65223b733a303a22223b7d );
INSERT INTO `tl_version` VALUES ( 21, 1, 1371318449, 1, 'tl_calculator_options', 2, 'Konro1', 'Папір', 'contao/main.php?do=my_calculator&act=edit&id=1&rt=cbffa5cf6a2bbf6fe84cd3c2d8999169', '1', 0x613a353a7b733a323a226964223b733a313a2231223b733a333a22706964223b733a313a2230223b733a363a22747374616d70223b733a31303a2231333731333035333939223b733a353a227469746c65223b733a31303a22d09fd0b0d0bfd196d180223b733a353a227072696365223b733a303a22223b7d );
INSERT INTO `tl_version` VALUES ( 22, 3, 1371318622, 1, 'tl_calculator_items', 2, 'Konro1', 'Папір для глибокого друку', 'contao/main.php?do=my_calculator&table=tl_calculator_items&act=edit&id=3&rt=cbffa5cf6a2bbf6fe84cd3c2d8999169', '1', 0x613a353a7b733a323a226964223b733a313a2233223b733a333a22706964223b733a313a2231223b733a363a22747374616d70223b733a31303a2231333731333035353539223b733a353a227469746c65223b733a34373a22d09fd0b0d0bfd196d18020d0b4d0bbd18f20d0b3d0bbd0b8d0b1d0bed0bad0bed0b3d0be20d0b4d180d183d0bad183223b733a353a227072696365223b733a343a22302e3233223b7d );

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

# --- End of Backup ---
