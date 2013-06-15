#================================================================================
# Contao-Website   : Contao Open Source CMS
# Contao-Database  : rona_db
# Saved by User    : Konro1 (Юрій Мирош)
# Time stamp       : 2013-06-15 at 14:14:08
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;


#
# Dumping data for table 'tl_article'
#

INSERT INTO `tl_article` VALUES ( 1, 2, 128, 1368973318, 'Головна', 'main', 1, 'main', NULL, '', '', NULL, '', '', '', '1', '', '' );
INSERT INTO `tl_article` VALUES ( 2, 4, 128, 1368976109, 'Контакти', 'contacts', 1, 'main', NULL, '', '', NULL, '', '', '', '1', '', '' );
INSERT INTO `tl_article` VALUES ( 3, 5, 128, 1368983482, 'Про друк', 'about-print', 1, 'main', NULL, '', '', NULL, '', '', '', '1', '', '' );
INSERT INTO `tl_article` VALUES ( 4, 6, 128, 1368986265, 'Ціни та послуги', 'services', 1, 'main', NULL, '', '', NULL, '', '', '', '1', '', '' );
INSERT INTO `tl_article` VALUES ( 5, 7, 128, 1371148451, 'Галерея', 'galereja', 2, 'main', NULL, '', '', NULL, '', '', '', '1', '', '' );
INSERT INTO `tl_article` VALUES ( 6, 8, 128, 1371155670, 'Галерея', '', 2, 'main', NULL, '', '', NULL, '', '', '', '1', '', '' );

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;


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
INSERT INTO `tl_content` VALUES ( 12, 4, 'tl_article', 192, 1368987708, 'html', '', NULL, '', '', '', '', '', '', '', '', '', '', '<div class="row">\n  <div class="span6">\n<h3>Візитні картки</h3>\n<table border="0">\n<tbody>\n<tr>\n<td>Шовкотрафаретний друк</td>\n<td>від 65 грн. /100 шт.</td>\n</tr>\n<tr>\n<td>Офчетний друк</td>\n<td>від 160 грн. /100 шт.</td>\n</tr>\n<tr>\n<td>Цифровий (лазерний друк)</td>\n<td>від 50 грн. /100 шт.</td>\n</tr>\n<tr>\n<td>Тиснення фольгою</td>\n<td>від 120 грн. /100 шт.</td>\n</tr>\n</tbody>\n</table>\n<h3>Бланки та конверти</h3>\n<p>від 150 грн./100 шт.</p>\n<h3>Наклейки (стікери)</h3>\n<p>Вартість розраховується індивідуально в залежності розмірів, форми, колірності та тиражу, а також матеріалу</p>\n<h3>Друк по пластику</h3>  \n<p>Вартість розраховується індивідуально в залежності розмірів, форми, колірності та тиражу, а також матеріалу</p>\n</div>\n<div class="span6">\n<div class="well">\n  <img alt="" src="files/theme/img/card.jpg">\n</div>\n</div>\n</div>', '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'mooStart', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', '', '', '', 0, 0, 0, 0, 0, '', NULL, '', '', '', '', '', '', 'ascending', 0, '', '', '', '', 'com_default', 0, 0, '', '', '' );
INSERT INTO `tl_content` VALUES ( 13, 5, 'tl_article', 128, 1371151562, 'module', '', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'mooStart', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', '', '', '', 0, 0, 0, 0, 9, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 'ascending', 0, '', '', '', '', 'com_default', 0, 0, '', '', '' );
INSERT INTO `tl_content` VALUES ( 14, 6, 'tl_article', 128, 1371155662, 'module', '', NULL, '', '', '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'mooStart', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', '', '', '', 0, 0, 0, 0, 10, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 'ascending', 0, '', '', '', '', 'com_default', 0, 0, '', '', '' );

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
INSERT INTO `tl_layout` VALUES ( 2, 1, 1371162254, 'Похідна', '3rw', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', '1cl', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', '', '', 'main', 'a:1:{i:0;s:10:"layout.css";}', '', '', '', '', '', 0x613a343a7b693a303b613a323a7b733a333a226d6f64223b733a313a2236223b733a333a22636f6c223b733a363a22686561646572223b7d693a313b613a323a7b733a333a226d6f64223b733a313a2232223b733a333a22636f6c223b733a363a22686561646572223b7d693a323b613a323a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b7d693a333b613a323a7b733a333a226d6f64223b733a313a2235223b733a333a22636f6c223b733a363a22666f6f746572223b7d7d, 'fe_page', 'xhtml_strict', '', '', '', '', '1', 'j_local', 'a:1:{i:0;s:10:"j_colorbox";}', '', 'moo_local', NULL, '', '', '', '', 'center' );

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=285 ;


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;


#
# Dumping data for table 'tl_module'
#

INSERT INTO `tl_module` VALUES ( 1, 1, 1370896545, 'Header Головна', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, '<div class="row">\n  <div class="span12">\n    <div class="well header">\n      <div class="pull-left">\n        <a href=""><img id="logo" alt="Rona" src="files/theme/img/icons/Rona.png"/></a>\n      </div>\n      <div class="clear">\n      </div>\n    </div>\n  </div>\n</div>\n<div class="row-fluid">\n  <div class="span12">\n    <div id="slideshowWrapper">\n      <ul id="slideshow">\n        <li><img class="sliderImg" src="/files/theme/img/slider/1.jpg" border="0" alt="" /></li> <!-- This is the last image in the slideshow -->\n        <li><img class="sliderImg" src="/files/theme/img/slider/2.jpg" border="0" alt="" /></li>\n        <li><img class="sliderImg" src="/files/theme/img/slider/3.jpg" border="0" alt="" /></li>\n      </ul>\n      <br clear="all" />\n    </div>\n  </div>\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, 0, '' );
INSERT INTO `tl_module` VALUES ( 3, 1, 1368976472, 'Головний текст', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, '<div class="container">\n  <div class="row">\n       <div class="span12">	\n          <div class="hero-unit">\n            <h1>Hello World!</h1>\n            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe labore doloremque nesciunt dolore facilis quidem delectus dolorum voluptas repellat quos. Suscipit, dicta, excepturi, possimus, obcaecati tempore ea saepe tenetur officiis veritatis itaque neque placeat quis!</p>\n            <p>\n              <a class="btn btn-primary btn-large">\n                Learn more\n              </a>\n            </p>\n         </div>\n    </div>\n  </div>\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, 0, '' );
INSERT INTO `tl_module` VALUES ( 2, 1, 1368975054, 'Головне Меню', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'navigation', 0, 0, '', '', '', 0, 'nav_default', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:19:"container main-menu";}', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, 0, '' );
INSERT INTO `tl_module` VALUES ( 4, 1, 1368976532, 'Головні статті', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, '<div class="container">\n  <div class="row">\n        		<div class="span4">\n        			<div class="hero-unit">\n        				<h3>Lorem ipsum dolor sit amet.</h3>\n        				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, assumenda, fugit, sint voluptas suscipit in sed illum magni dolores officia dolorum ipsa ullam deleniti molestiae commodi iusto inventore pariatur. Cumque.</p>\n        				<p><a href="" class="btn btn-primary">Learn more</a></p>	\n        			</div>\n        		</div>\n        		<div class="span4">\n        			<div class="hero-unit">\n        				<h3>Deleniti, tempore facere eveniet eius?</h3>\n        				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia, pariatur, et, ipsa perspiciatis in dolores porro non ad ratione laudantium architecto distinctio culpa repellat quibusdam voluptates inventore quod ullam illum.</p>\n        				<p><a href="" class="btn btn-primary">Learn more</a></p>	\n        			</div>\n        		</div>\n        		<div class="span4">\n        			<div class="hero-unit">\n        				<h3>Odit sapiente fuga ipsa numquam?</h3>\n        				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab, minus, eius doloribus aspernatur hic autem dignissimos repudiandae architecto voluptatum necessitatibus sequi reprehenderit facilis inventore.</p>\n        				<p><a href="" class="btn btn-primary">Learn more</a></p>	\n        			</div>\n        		</div>\n        	</div>\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, 0, '' );
INSERT INTO `tl_module` VALUES ( 5, 1, 1368978541, 'Footer', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, '<div class="container footer">\n  <div class="row">\n    <div class="span12">\n      <div class="well">\n        <div class="pull-left">(c)2013 Rona</div>\n        <div class="pull-right">\n          <p>м.Львів, пл. Галицька 15</p>\n          <p>(032)235-90-81</p>          \n        </div>\n        <div class="clear"></div>\n      </div>\n   </div>\n  </div>\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, 0, '' );
INSERT INTO `tl_module` VALUES ( 6, 1, 1368988220, 'Header Похідна', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '-e91aa329', NULL, '', '', '', NULL, NULL, '<div class="container">\n	<div class="row">\n    	<div class="span12">\n        	<div class="well">\n              <div class="pull-left">\n                <h1><a href="">Rona</a></h1>\n                <h3>Поліграфічні послуги</h3>\n              </div>\n              <div class="clear"></div>\n            </div>\n        </div>\n  	</div>\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, 0, '' );
INSERT INTO `tl_module` VALUES ( 7, 1, 1368982740, 'Контакти Блок', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, '<div class="span4 well contact-block">\n  <h3>Контактні дані:</h3>\n  <ul class="contacts">\n    <li>Телефон: (032)235-90-81</li>\n    <li>Адрес: м.Львів, пл. Галицька 15</li>\n    <li>Email: <a href="mailto:support@rona.com.ua">support@rona.com.ua</a></li>\n  </ul>\n  <h3>Lorem ipsum dolor.</h3>\n  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis, pariatur, optio nobis culpa magni labore dicta ea nemo a molestias repudiandae eaque rem consectetur tempora. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis, blanditiis. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, molestias.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum, similique, vitae illo ad perferendis nisi.</p>\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, 0, '' );
INSERT INTO `tl_module` VALUES ( 9, 1, 1371151438, 'Моя Фотогалерея', '', 'msmPhotoGallery', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, 0, '' );
INSERT INTO `tl_module` VALUES ( 10, 1, 1371155631, 'Моя Фотогалерея&#40;Детальніше&#41;', '', 'msmPhotoGalleryView', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', '', 0, NULL, NULL, '', NULL, '', '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', 'ascending', '', '', '', '', 'com_default', NULL, 0, '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0, 0, '' );

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;


#
# Dumping data for table 'tl_search'
#

INSERT INTO `tl_search` VALUES ( 1, 8, 1371162337, 'Галерея Детальніше', 'uk/gallery_view/item/1.html', 'Галерея Детальніше Rona Поліграфічні послуги Візитки (c)2013 Rona м.Львів, пл. Галицька 15 (032)235-90-81', '7.1', 'e7b0b7eefa9e6240808c1f4787e8b8f3', '', 0x30, 'uk' );
INSERT INTO `tl_search` VALUES ( 2, 2, 1371238313, 'Головна', 'uk/main.html', 'Головна Hello World! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe labore doloremque nesciunt dolore facilis quidem delectus dolorum voluptas repellat quos. Suscipit, dicta, excepturi, possimus, obcaecati tempore ea saepe tenetur officiis veritatis itaque neque placeat quis! Learn more Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, assumenda, fugit, sint voluptas suscipit in sed illum magni dolores officia dolorum ipsa ullam deleniti molestiae commodi iusto inventore pariatur. Cumque. Learn more Deleniti, tempore facere eveniet eius? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia, pariatur, et, ipsa perspiciatis in dolores porro non ad ratione laudantium architecto distinctio culpa repellat quibusdam voluptates inventore quod ullam illum. Learn more Odit sapiente fuga ipsa numquam? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab, minus, eius doloribus aspernatur hic autem dignissimos repudiandae architecto voluptatum necessitatibus sequi reprehenderit facilis inventore. Learn more (c)2013 Rona м.Львів, пл. Галицька 15 (032)235-90-81 Rona,', '6.44', '43605f678d23804cfc961210652e76b5', '', 0x30, 'uk' );

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=115 ;


#
# Dumping data for table 'tl_search_index'
#

INSERT INTO `tl_search_index` VALUES ( 1, 1, 'галерея', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 2, 1, 'детальніше', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 3, 1, 'rona', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 4, 1, 'поліграфічні', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 5, 1, 'послуги', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 6, 1, 'візитки', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 7, 1, 'c', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 8, 1, '2013', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 9, 1, 'м.львів', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 10, 1, 'пл', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 11, 1, 'галицька', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 12, 1, '15', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 13, 1, '032', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 14, 1, '235-90-81', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 15, 2, 'головна', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 16, 2, 'hello', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 17, 2, 'world', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 18, 2, 'lorem', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 19, 2, 'ipsum', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 20, 2, 'dolor', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 21, 2, 'sit', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 22, 2, 'amet', 5, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 23, 2, 'consectetur', 4, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 24, 2, 'adipisicing', 4, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 25, 2, 'elit', 4, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 26, 2, 'saepe', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 27, 2, 'labore', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 28, 2, 'doloremque', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 29, 2, 'nesciunt', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 30, 2, 'dolore', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 31, 2, 'facilis', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 32, 2, 'quidem', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 33, 2, 'delectus', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 34, 2, 'dolorum', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 35, 2, 'voluptas', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 36, 2, 'repellat', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 37, 2, 'quos', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 38, 2, 'suscipit', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 39, 2, 'dicta', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 40, 2, 'excepturi', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 41, 2, 'possimus', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 42, 2, 'obcaecati', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 43, 2, 'tempore', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 44, 2, 'ea', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 45, 2, 'tenetur', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 46, 2, 'officiis', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 47, 2, 'veritatis', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 48, 2, 'itaque', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 49, 2, 'neque', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 50, 2, 'placeat', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 51, 2, 'quis', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 52, 2, 'learn', 4, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 53, 2, 'more', 4, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 54, 2, 'accusantium', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 55, 2, 'assumenda', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 56, 2, 'fugit', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 57, 2, 'sint', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 58, 2, 'in', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 59, 2, 'sed', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 60, 2, 'illum', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 61, 2, 'magni', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 62, 2, 'dolores', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 63, 2, 'officia', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 64, 2, 'ipsa', 3, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 65, 2, 'ullam', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 66, 2, 'deleniti', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 67, 2, 'molestiae', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 68, 2, 'commodi', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 69, 2, 'iusto', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 70, 2, 'inventore', 3, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 71, 2, 'pariatur', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 72, 2, 'cumque', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 73, 2, 'facere', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 74, 2, 'eveniet', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 75, 2, 'eius', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 76, 2, 'mollitia', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 77, 2, 'et', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 78, 2, 'perspiciatis', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 79, 2, 'porro', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 80, 2, 'non', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 81, 2, 'ad', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 82, 2, 'ratione', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 83, 2, 'laudantium', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 84, 2, 'architecto', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 85, 2, 'distinctio', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 86, 2, 'culpa', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 87, 2, 'quibusdam', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 88, 2, 'voluptates', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 89, 2, 'quod', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 90, 2, 'odit', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 91, 2, 'sapiente', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 92, 2, 'fuga', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 93, 2, 'numquam', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 94, 2, 'ab', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 95, 2, 'minus', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 96, 2, 'doloribus', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 97, 2, 'aspernatur', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 98, 2, 'hic', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 99, 2, 'autem', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 100, 2, 'dignissimos', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 101, 2, 'repudiandae', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 102, 2, 'voluptatum', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 103, 2, 'necessitatibus', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 104, 2, 'sequi', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 105, 2, 'reprehenderit', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 106, 2, 'c', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 107, 2, '2013', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 108, 2, 'rona', 2, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 109, 2, 'м.львів', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 110, 2, 'пл', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 111, 2, 'галицька', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 112, 2, '15', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 113, 2, '032', 1, 'uk' );
INSERT INTO `tl_search_index` VALUES ( 114, 2, '235-90-81', 1, 'uk' );

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;


#
# Dumping data for table 'tl_session'
#

INSERT INTO `tl_session` VALUES ( 4, 2, 1371294848, 'BE_USER_AUTH', 'gv5ig2n0k4am0c34red0hj5k44', 'dc8618a22b71d4f7acac418b2549f023fe043267', '127.0.0.1', '' );

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
INSERT INTO `tl_user` VALUES ( 2, 1368992431, 'Konro1', 'Юрій Мирош', 'yuriymyrosh@gmail.com', 'uk', 'default', 'FileUpload', '1', '1', '1', '1', '$6$0ab2ed685a231742$1V5oIEkQvdQHcwG5q03sRYyoTtLAbg0pqNEHon8.77NZm/Xy61CDxcd6CnJ14Y3NGQNM/cEyU8rqCzArKXy5U/', '', '1', NULL, 'group', 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, '', '', '', 0x613a31333a7b733a373a2272656665726572223b613a363a7b733a343a226c617374223b733a31363a222f636f6e74616f2f6d61696e2e706870223b733a373a2263757272656e74223b733a32383a222f636f6e74616f2f6d61696e2e7068703f646f3d4261636b75704442223b733a383a22746c5f7468656d65223b733a32363a222f636f6e74616f2f6d61696e2e7068703f646f3d7468656d6573223b733a373a22746c5f70616765223b733a36303a222f636f6e74616f2f6d61696e2e7068703f646f3d706167652672743d3763633631623039663834626565666337376464386634623665353630613238223b733a32323a22746c5f6d736d5f70686f746f735f63617465676f7279223b733a33343a222f636f6e74616f2f6d61696e2e7068703f646f3d6d795f666f746f67616c6c657279223b733a31303a22746c5f61727469636c65223b733a34313a222f636f6e74616f2f6d61696e2e7068703f646f3d61727469636c65267469643d362673746174653d31223b7d733a373a2243555252454e54223b613a313a7b733a333a22494453223b613a323a7b693a303b733a313a2231223b693a313b733a313a2232223b7d7d733a32323a227374796c655f73686565745f7570646174655f616c6c223b4e3b733a31303a2243555252454e545f4944223b733a313a2231223b733a31323a22746c5f706167655f74726565223b613a373a7b693a313b693a313b693a323b693a303b693a353b693a303b693a363b693a303b693a343b693a303b693a373b693a313b693a383b693a303b7d733a31353a226669656c647365745f737461746573223b613a353a7b733a31313a22746c5f73657474696e6773223b613a323a7b733a31343a22707269766163795f6c6567656e64223b693a313b733a31353a2273656375726974795f6c6567656e64223b693a313b7d733a393a22746c5f6c61796f7574223b613a313a7b733a31333a226578706572745f6c6567656e64223b693a313b7d733a373a22746c5f70616765223b613a323a7b733a31333a226c61796f75745f6c6567656e64223b693a313b733a31333a226578706572745f6c6567656e64223b693a313b7d733a32323a22746c5f6d736d5f70686f746f735f63617465676f7279223b613a313a7b733a31313a227469705f67656e6572616c223b693a313b7d733a31303a22746c5f636f6e74656e74223b613a333a7b733a31363a2270726f7465637465645f6c6567656e64223b693a303b733a31333a226578706572745f6c6567656e64223b693a303b733a31363a22696e76697369626c655f6c6567656e64223b693a303b7d7d733a393a22434c4950424f415244223b613a343a7b733a373a22746c5f70616765223b613a303a7b7d733a32323a22746c5f6d736d5f70686f746f735f63617465676f7279223b613a303a7b7d733a393a22746c5f6d6f64756c65223b613a303a7b7d733a31303a22746c5f636f6e74656e74223b613a303a7b7d7d733a31313a226e65775f7265636f726473223b613a343a7b733a373a22746c5f70616765223b613a313a7b693a303b693a373b7d733a32323a22746c5f6d736d5f70686f746f735f63617465676f7279223b613a343a7b693a303b693a313b693a313b693a323b693a323b693a333b693a333b693a343b7d733a393a22746c5f6d6f64756c65223b613a323a7b693a303b693a393b693a313b693a31303b7d733a31303a22746c5f636f6e74656e74223b613a313a7b693a303b693a31333b7d7d733a33333a22747265655f746c5f6d736d5f70686f746f735f63617465676f72795f70686f746f223b613a343a7b693a313b693a303b693a32323b693a313b693a32393b693a313b693a34343b693a313b7d733a33343a22747265655f746c5f6d736d5f70686f746f735f63617465676f72795f70686f746f73223b613a333a7b693a32323b693a313b693a32393b693a313b693a34343b693a313b7d733a31323a22746c5f706167655f6e6f6465223b733a313a2231223b733a32363a22746c5f61727469636c655f746c5f61727469636c655f74726565223b613a363a7b693a353b693a303b693a313b693a303b693a333b693a303b693a343b693a303b693a323b693a303b693a363b693a303b7d733a32333a22746c5f61727469636c655f746c5f706167655f74726565223b613a323a7b693a313b693a313b693a373b693a313b7d7d, 1368992425, 1371148392, 1371294828, 3, 0, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d );

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_version' - no entries
#


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

# --- End of Backup ---
