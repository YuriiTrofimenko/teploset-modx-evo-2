#
# Теплосеть Database Dump
# MODX Version:1.4.0.RC2
# 
# Host: 
# Generation Time: 08-02-2018 12:27:08
# Server version: 5.7.11-4-log
# PHP Version: 7.1.11
# Database: `host1488038_teplo`
# Description: до обновления 1.4.0
#

# --------------------------------------------------------

#
# Table structure for table `evo_active_user_locks`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_active_user_locks`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_active_user_locks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `elementType` int(1) NOT NULL DEFAULT '0',
  `elementId` int(10) NOT NULL DEFAULT '0',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_element_id` (`elementType`,`elementId`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=1103 DEFAULT CHARSET=utf8 COMMENT='Contains data about locked elements.';

#
# Dumping data for table `evo_active_user_locks`
#

INSERT INTO `evo_active_user_locks` VALUES ('1068','9840b30249cdef998b1e301bf81ed677','1','1','5','1518073254');


# --------------------------------------------------------

#
# Table structure for table `evo_active_user_sessions`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_active_user_sessions`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_active_user_sessions` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about valid user sessions.';

#
# Dumping data for table `evo_active_user_sessions`
#

INSERT INTO `evo_active_user_sessions` VALUES ('9840b30249cdef998b1e301bf81ed677','1','1518082028','5.105.44.230');


# --------------------------------------------------------

#
# Table structure for table `evo_active_users`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_active_users`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_active_users` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `action` varchar(10) NOT NULL DEFAULT '',
  `id` int(10) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about last user action.';

#
# Dumping data for table `evo_active_users`
#

INSERT INTO `evo_active_users` VALUES ('9840b30249cdef998b1e301bf81ed677','1','admin','1518082028','93',NULL);


# --------------------------------------------------------

#
# Table structure for table `evo_categories`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_categories`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='Categories to be used snippets,tv,chunks, etc';

#
# Dumping data for table `evo_categories`
#

INSERT INTO `evo_categories` VALUES ('1','SEO','0');

INSERT INTO `evo_categories` VALUES ('2','Js','0');

INSERT INTO `evo_categories` VALUES ('3','Manager and Admin','0');

INSERT INTO `evo_categories` VALUES ('4','Search','0');

INSERT INTO `evo_categories` VALUES ('5','Content','0');

INSERT INTO `evo_categories` VALUES ('6','Navigation','0');

INSERT INTO `evo_categories` VALUES ('7','Login','0');

INSERT INTO `evo_categories` VALUES ('8','add','0');

INSERT INTO `evo_categories` VALUES ('9','Forms','0');

INSERT INTO `evo_categories` VALUES ('10','include','0');

INSERT INTO `evo_categories` VALUES ('11','MultiLang','0');

INSERT INTO `evo_categories` VALUES ('12','Items','0');

INSERT INTO `evo_categories` VALUES ('13','HitsPage','0');

INSERT INTO `evo_categories` VALUES ('14','HidePage','0');


# --------------------------------------------------------

#
# Table structure for table `evo_document_groups`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_document_groups`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_document_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_dg_id` (`document_group`,`document`),
  KEY `document` (`document`),
  KEY `document_group` (`document_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `evo_document_groups`
#


# --------------------------------------------------------

#
# Table structure for table `evo_documentgroup_names`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_documentgroup_names`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_documentgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(4) DEFAULT '0' COMMENT 'determine whether the document group is private to manager users',
  `private_webgroup` tinyint(4) DEFAULT '0' COMMENT 'determines whether the document is private to web users',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `evo_documentgroup_names`
#


# --------------------------------------------------------

#
# Table structure for table `evo_event_log`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_event_log`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_event_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventid` int(11) DEFAULT '0',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1- information, 2 - warning, 3- error',
  `user` int(11) NOT NULL DEFAULT '0' COMMENT 'link to user table',
  `usertype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - manager, 1 - web',
  `source` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COMMENT='Stores event and error logs';

#
# Dumping data for table `evo_event_log`
#

INSERT INTO `evo_event_log` VALUES ('1','0','1507023745','1','1','0','Call deprecated method','$modx-&gt;makeList() is deprecated function<br />Plugin - Diff<br /><br />/home/host1488038/lector-web.com/htdocs/teplo/assets/plugins/diff/version.class.php(line:389)');

INSERT INTO `evo_event_log` VALUES ('2','0','1507023969','1','1','0','Call deprecated method','$modx-&gt;makeList() is deprecated function<br />Plugin - Diff<br /><br />/home/host1488038/lector-web.com/htdocs/teplo/assets/plugins/diff/version.class.php(line:389)');

INSERT INTO `evo_event_log` VALUES ('3','0','1507024691','1','1','0','Call deprecated method','$modx-&gt;makeList() is deprecated function<br />Plugin - Diff<br /><br />/home/host1488038/lector-web.com/htdocs/teplo/assets/plugins/diff/version.class.php(line:389)');

INSERT INTO `evo_event_log` VALUES ('4','0','1507024770','1','1','0','Call deprecated method','$modx-&gt;makeList() is deprecated function<br />Plugin - Diff<br /><br />/home/host1488038/lector-web.com/htdocs/teplo/assets/plugins/diff/version.class.php(line:389)');

INSERT INTO `evo_event_log` VALUES ('5','0','1507024863','3','0','1','Snippet - sgLister / Execution of a query to the d','<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'host1488038_teplo.evo_sg_images\' doesn\'t exist</h3><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `host1488038_teplo`.`evo_sg_images` as `c` WHERE `sg_isactive`=1 AND (`c`.`sg_rid` IN (\'1\'))  ORDER BY sg_index DESC </span></div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>sgLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://teplo.lector-web.com/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://teplo.lector-web.com/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>5.105.37.89</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2017-10-03 13:01:03</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0,0035 s (7 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0,1957 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0,1992 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>4,2607650756836 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 129</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2198</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2292</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 672</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2051</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 1444</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1502</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1397</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1397) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />assets/snippets/simplegallery/sgLister.php on line 70</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 3503</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1397</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1397) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 34</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 44</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 294</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1739</td>\n	</tr>\n</table>\n');

INSERT INTO `evo_event_log` VALUES ('6','0','1507024964','3','0','1','Snippet - sgLister / Execution of a query to the d','<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'host1488038_teplo.evo_sg_images\' doesn\'t exist</h3><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `host1488038_teplo`.`evo_sg_images` as `c` WHERE `sg_isactive`=1 AND (`c`.`sg_rid` IN (\'1\'))  ORDER BY sg_index DESC </span></div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>sgLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://teplo.lector-web.com/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://teplo.lector-web.com/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>5.105.37.89</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2017-10-03 13:02:44</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0,0041 s (7 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0,0477 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0,0518 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>4,2602462768555 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 129</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2198</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2292</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 672</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2051</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 1444</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1502</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1397</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1397) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />assets/snippets/simplegallery/sgLister.php on line 70</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 3503</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1397</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1397) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 34</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 44</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 294</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1739</td>\n	</tr>\n</table>\n');

INSERT INTO `evo_event_log` VALUES ('7','0','1507025151','3','0','1','Snippet - sgLister / Execution of a query to the d','<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'host1488038_teplo.evo_sg_images\' doesn\'t exist</h3><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `host1488038_teplo`.`evo_sg_images` as `c` WHERE `sg_isactive`=1 AND (`c`.`sg_rid` IN (\'1\'))  ORDER BY sg_index DESC </span></div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>sgLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://teplo.lector-web.com/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://teplo.lector-web.com/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>66.102.9.57</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2017-10-03 13:05:51</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0,0038 s (7 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0,0605 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0,0642 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>4,2659454345703 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 129</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2198</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2292</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 672</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2051</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 1444</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1502</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1397</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1397) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />assets/snippets/simplegallery/sgLister.php on line 70</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 3503</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1397</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1397) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 34</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 44</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 294</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1739</td>\n	</tr>\n</table>\n');

INSERT INTO `evo_event_log` VALUES ('8','0','1507025261','1','1','0','Call deprecated method','$modx-&gt;makeList() is deprecated function<br />Plugin - Diff<br /><br />/home/host1488038/lector-web.com/htdocs/teplo/assets/plugins/diff/version.class.php(line:389)');

INSERT INTO `evo_event_log` VALUES ('9','0','1507025272','1','1','0','Call deprecated method','$modx-&gt;makeList() is deprecated function<br />Plugin - Diff<br /><br />/home/host1488038/lector-web.com/htdocs/teplo/assets/plugins/diff/version.class.php(line:389)');

INSERT INTO `evo_event_log` VALUES ('10','0','1507025274','1','1','0','Call deprecated method','$modx-&gt;makeList() is deprecated function<br />Plugin - Diff<br /><br />/home/host1488038/lector-web.com/htdocs/teplo/assets/plugins/diff/version.class.php(line:389)');

INSERT INTO `evo_event_log` VALUES ('11','0','1507025277','1','1','0','Call deprecated method','$modx-&gt;makeList() is deprecated function<br />Plugin - Diff<br /><br />/home/host1488038/lector-web.com/htdocs/teplo/assets/plugins/diff/version.class.php(line:389)');

INSERT INTO `evo_event_log` VALUES ('12','0','1507025293','3','0','1','Snippet - sgLister / Execution of a query to the d','<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'host1488038_teplo.evo_sg_images\' doesn\'t exist</h3><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `host1488038_teplo`.`evo_sg_images` as `c` WHERE `sg_isactive`=1 AND (`c`.`sg_rid` IN (\'1\'))  ORDER BY sg_index DESC </span></div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>sgLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://teplo.lector-web.com/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://teplo.lector-web.com/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>5.105.37.89</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2017-10-03 13:08:13</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0,0037 s (7 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0,0501 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0,0538 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>4,2602462768555 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 129</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2198</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2292</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 672</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2051</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 1444</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1502</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1397</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1397) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />assets/snippets/simplegallery/sgLister.php on line 70</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 3503</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1397</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1397) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 34</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 44</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 294</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1739</td>\n	</tr>\n</table>\n');

INSERT INTO `evo_event_log` VALUES ('13','0','1507025312','1','1','0','Call deprecated method','$modx-&gt;makeList() is deprecated function<br />Plugin - Diff<br /><br />/home/host1488038/lector-web.com/htdocs/teplo/assets/plugins/diff/version.class.php(line:389)');

INSERT INTO `evo_event_log` VALUES ('14','0','1507025317','1','1','0','Call deprecated method','$modx-&gt;makeList() is deprecated function<br />Plugin - Diff<br /><br />/home/host1488038/lector-web.com/htdocs/teplo/assets/plugins/diff/version.class.php(line:389)');

INSERT INTO `evo_event_log` VALUES ('15','0','1507025348','1','1','0','Call deprecated method','$modx-&gt;makeList() is deprecated function<br />Plugin - Diff<br /><br />/home/host1488038/lector-web.com/htdocs/teplo/assets/plugins/diff/version.class.php(line:389)');

INSERT INTO `evo_event_log` VALUES ('16','0','1507025356','3','0','1','Snippet - sgLister / Execution of a query to the d','<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'host1488038_teplo.evo_sg_images\' doesn\'t exist</h3><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `host1488038_teplo`.`evo_sg_images` as `c` WHERE `sg_isactive`=1 AND (`c`.`sg_rid` IN (\'1\'))  ORDER BY sg_index DESC </span></div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>sgLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://teplo.lector-web.com/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://teplo.lector-web.com/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://teplo.lector-web.com/manager/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>5.105.37.89</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2017-10-03 13:09:16</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0,0035 s (7 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0,0547 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0,0581 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>4,2605667114258 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 129</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2198</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2292</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 672</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2051</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 1444</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1502</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1397</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1397) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />assets/snippets/simplegallery/sgLister.php on line 70</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 3503</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1397</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1397) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 34</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 44</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 294</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1739</td>\n	</tr>\n</table>\n');

INSERT INTO `evo_event_log` VALUES ('17','0','1507025365','1','1','0','Call deprecated method','$modx-&gt;makeList() is deprecated function<br />Plugin - Diff<br /><br />/home/host1488038/lector-web.com/htdocs/teplo/assets/plugins/diff/version.class.php(line:389)');

INSERT INTO `evo_event_log` VALUES ('18','0','1507025368','1','1','0','Call deprecated method','$modx-&gt;makeList() is deprecated function<br />Plugin - Diff<br /><br />/home/host1488038/lector-web.com/htdocs/teplo/assets/plugins/diff/version.class.php(line:389)');

INSERT INTO `evo_event_log` VALUES ('19','0','1507025375','1','1','0','Call deprecated method','$modx-&gt;makeList() is deprecated function<br />Plugin - Diff<br /><br />/home/host1488038/lector-web.com/htdocs/teplo/assets/plugins/diff/version.class.php(line:389)');

INSERT INTO `evo_event_log` VALUES ('20','0','1507025377','1','1','0','Call deprecated method','$modx-&gt;makeList() is deprecated function<br />Plugin - Diff<br /><br />/home/host1488038/lector-web.com/htdocs/teplo/assets/plugins/diff/version.class.php(line:389)');

INSERT INTO `evo_event_log` VALUES ('21','0','1507025431','3','0','1','Snippet - sgLister / Execution of a query to the d','<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'host1488038_teplo.evo_sg_images\' doesn\'t exist</h3><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `host1488038_teplo`.`evo_sg_images` as `c` WHERE `sg_isactive`=1 AND (`c`.`sg_rid` IN (\'1\'))  ORDER BY sg_index DESC </span></div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>sgLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://teplo.lector-web.com/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://teplo.lector-web.com/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://teplo.lector-web.com/manager/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>5.105.37.89</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2017-10-03 13:10:31</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0,0056 s (7 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0,0636 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0,0691 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>4,2598495483398 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 129</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2198</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2292</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 672</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2051</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 1444</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1502</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1397</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1397) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />assets/snippets/simplegallery/sgLister.php on line 70</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 3503</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1397</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1397) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 34</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 44</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 294</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1739</td>\n	</tr>\n</table>\n');

INSERT INTO `evo_event_log` VALUES ('22','0','1507025697','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('23','0','1507025738','3','0','1','Snippet - sgLister / Execution of a query to the d','<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'host1488038_teplo.evo_sg_images\' doesn\'t exist</h3><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `host1488038_teplo`.`evo_sg_images` as `c` WHERE `sg_isactive`=1 AND (`c`.`sg_rid` IN (\'1\'))  ORDER BY sg_index DESC </span></div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>sgLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://teplo.lector-web.com/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://teplo.lector-web.com/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://teplo.lector-web.com/manager/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>5.105.37.89</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2017-10-03 13:15:38</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0,0026 s (7 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0,0415 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0,0442 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>4,2592620849609 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 129</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2198</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2292</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 672</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2051</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 1444</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1502</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1397</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1397) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />assets/snippets/simplegallery/sgLister.php on line 70</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 3503</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1397</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1397) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 34</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 44</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 294</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1739</td>\n	</tr>\n</table>\n');

INSERT INTO `evo_event_log` VALUES ('24','0','1507025792','3','0','1','Snippet - sgLister / Execution of a query to the d','<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'host1488038_teplo.evo_sg_images\' doesn\'t exist</h3><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `host1488038_teplo`.`evo_sg_images` as `c` WHERE `sg_isactive`=1 AND (`c`.`sg_rid` IN (\'1\'))  ORDER BY sg_index DESC </span></div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>sgLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://teplo.lector-web.com/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://teplo.lector-web.com/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://teplo.lector-web.com/manager/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>5.105.37.89</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2017-10-03 13:16:32</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0,0022 s (7 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0,1979 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0,2001 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>4,2589111328125 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 129</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2198</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2292</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 672</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2051</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 1444</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1502</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1397</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1397) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />assets/snippets/simplegallery/sgLister.php on line 70</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 3503</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1397</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1397) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 34</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 44</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 294</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1739</td>\n	</tr>\n</table>\n');

INSERT INTO `evo_event_log` VALUES ('25','0','1507025879','3','0','1','Snippet - sgLister / Execution of a query to the d','<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Table \'host1488038_teplo.evo_sg_images\' doesn\'t exist</h3><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT * FROM `host1488038_teplo`.`evo_sg_images` as `c` WHERE `sg_isactive`=1 AND (`c`.`sg_rid` IN (\'1\'))  ORDER BY sg_index DESC </span></div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>sgLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://teplo.lector-web.com/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://teplo.lector-web.com/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://teplo.lector-web.com/manager/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>5.105.37.89</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2017-10-03 13:17:59</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0,0038 s (7 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0,0554 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0,0592 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>4,2589111328125 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 129</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2198</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2292</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 672</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2051</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 1444</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1502</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1397</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1397) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />assets/snippets/simplegallery/sgLister.php on line 70</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 3503</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1397</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1397) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>onetableDocLister->getDocs</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 34</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>onetableDocLister->getChildrenList</strong>()<br />assets/snippets/DocLister/core/controller/onetable.php on line 40</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocLister->dbQuery</strong>(string $var1)<br />assets/snippets/DocLister/core/controller/onetable.php on line 290</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 1746</td>\n	</tr>\n</table>\n');

INSERT INTO `evo_event_log` VALUES ('26','0','1507047101','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('27','0','1507649423','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('28','0','1507726003','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('29','0','1507818660','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('30','0','1508142683','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('31','0','1508144749','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('32','0','1508191846','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('33','0','1508252267','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('34','0','1508266019','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('35','0','1508313209','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('36','0','1508331613','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('37','0','1508404625','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('38','0','1508453745','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('39','0','1508490522','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('40','0','1508560689','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('41','0','1508579029','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('42','0','1509300152','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('43','0','1509427568','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('44','0','1509468105','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('45','0','1509651864','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('46','0','1509690414','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('47','0','1509715648','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('48','0','1510074995','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('49','0','1510088509','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('50','0','1510088509','3','1','0','Не удалена папка с файлами, использовавшимися в пр','Папка /install содержит инсталляционные файлы системы EVO. Злоумышленники могут воспользоваться этими файлами для взлома/повреждения сайта, так что лучше удалить папку с сервера.');

INSERT INTO `evo_event_log` VALUES ('51','0','1510161109','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('52','0','1510161109','3','1','0','Не удалена папка с файлами, использовавшимися в пр','Папка /install содержит инсталляционные файлы системы EVO. Злоумышленники могут воспользоваться этими файлами для взлома/повреждения сайта, так что лучше удалить папку с сервера.');

INSERT INTO `evo_event_log` VALUES ('53','0','1510393707','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('54','0','1510393707','3','1','0','Не удалена папка с файлами, использовавшимися в пр','Папка /install содержит инсталляционные файлы системы EVO. Злоумышленники могут воспользоваться этими файлами для взлома/повреждения сайта, так что лучше удалить папку с сервера.');

INSERT INTO `evo_event_log` VALUES ('55','0','1510395507','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('56','0','1510395507','3','1','0','Не удалена папка с файлами, использовавшимися в пр','Папка /install содержит инсталляционные файлы системы EVO. Злоумышленники могут воспользоваться этими файлами для взлома/повреждения сайта, так что лучше удалить папку с сервера.');

INSERT INTO `evo_event_log` VALUES ('57','0','1510406996','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('58','0','1510406996','3','1','0','Не удалена папка с файлами, использовавшимися в пр','Папка /install содержит инсталляционные файлы системы EVO. Злоумышленники могут воспользоваться этими файлами для взлома/повреждения сайта, так что лучше удалить папку с сервера.');

INSERT INTO `evo_event_log` VALUES ('59','0','1510411437','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('60','0','1510411437','3','1','0','Не удалена папка с файлами, использовавшимися в пр','Папка /install содержит инсталляционные файлы системы EVO. Злоумышленники могут воспользоваться этими файлами для взлома/повреждения сайта, так что лучше удалить папку с сервера.');

INSERT INTO `evo_event_log` VALUES ('61','0','1510487213','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('62','0','1510487213','3','1','0','Не удалена папка с файлами, использовавшимися в пр','Папка /install содержит инсталляционные файлы системы EVO. Злоумышленники могут воспользоваться этими файлами для взлома/повреждения сайта, так что лучше удалить папку с сервера.');

INSERT INTO `evo_event_log` VALUES ('63','0','1510582032','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('64','0','1510582032','3','1','0','Не удалена папка с файлами, использовавшимися в пр','Папка /install содержит инсталляционные файлы системы EVO. Злоумышленники могут воспользоваться этими файлами для взлома/повреждения сайта, так что лучше удалить папку с сервера.');

INSERT INTO `evo_event_log` VALUES ('65','0','1510750672','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('66','0','1510750672','3','1','0','Не удалена папка с файлами, использовавшимися в пр','Папка /install содержит инсталляционные файлы системы EVO. Злоумышленники могут воспользоваться этими файлами для взлома/повреждения сайта, так что лучше удалить папку с сервера.');

INSERT INTO `evo_event_log` VALUES ('67','0','1510918051','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('68','0','1510918051','3','1','0','Не удалена папка с файлами, использовавшимися в пр','Папка /install содержит инсталляционные файлы системы EVO. Злоумышленники могут воспользоваться этими файлами для взлома/повреждения сайта, так что лучше удалить папку с сервера.');

INSERT INTO `evo_event_log` VALUES ('69','0','1511160393','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('70','0','1511160393','3','1','0','Не удалена папка с файлами, использовавшимися в пр','Папка /install содержит инсталляционные файлы системы EVO. Злоумышленники могут воспользоваться этими файлами для взлома/повреждения сайта, так что лучше удалить папку с сервера.');

INSERT INTO `evo_event_log` VALUES ('71','0','1511171762','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('72','0','1511171762','3','1','0','Не удалена папка с файлами, использовавшимися в пр','Папка /install содержит инсталляционные файлы системы EVO. Злоумышленники могут воспользоваться этими файлами для взлома/повреждения сайта, так что лучше удалить папку с сервера.');

INSERT INTO `evo_event_log` VALUES ('73','0','1511178224','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('74','0','1511178224','3','1','0','Не удалена папка с файлами, использовавшимися в пр','Папка /install содержит инсталляционные файлы системы EVO. Злоумышленники могут воспользоваться этими файлами для взлома/повреждения сайта, так что лучше удалить папку с сервера.');

INSERT INTO `evo_event_log` VALUES ('75','0','1511216031','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('76','0','1511622793','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('77','0','1511768992','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('78','0','1512550577','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('79','0','1512614149','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('80','0','1512887213','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('81','0','1512953916','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('82','0','1513081981','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('83','0','1513168681','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('84','0','1513853758','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('85','0','1513962410','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('86','0','1514279870','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('87','0','1514284629','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('88','0','1514362864','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('89','0','1514363256','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('90','0','1514363563','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('91','0','1514363586','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('92','0','1514363665','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('93','0','1514406869','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('94','0','1515578631','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('95','0','1516265294','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('96','0','1516801898','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('97','0','1516883291','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('98','0','1516940025','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('99','0','1517227026','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('100','0','1517396930','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('101','0','1517416475','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('102','0','1517504239','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('103','0','1517511671','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('104','0','1517559454','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('105','0','1517576312','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('106','0','1517821072','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('107','0','1517840324','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('108','0','1517904826','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('109','0','1517987238','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');

INSERT INTO `evo_event_log` VALUES ('110','0','1518072373','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');


# --------------------------------------------------------

#
# Table structure for table `evo_lexicon`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_lexicon`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_lexicon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `ru` varchar(255) NOT NULL DEFAULT '',
  `ua` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Dumping data for table `evo_lexicon`
#

INSERT INTO `evo_lexicon` VALUES ('1','Контакты','Контакты','Звязки');

INSERT INTO `evo_lexicon` VALUES ('2','RU','2','3');

INSERT INTO `evo_lexicon` VALUES ('3','Поиск','Поиск','Пошук');

INSERT INTO `evo_lexicon` VALUES ('4','Личный кабинет','Личный кабинет',' Особистий кабінет');

INSERT INTO `evo_lexicon` VALUES ('5','Новости','82','83');

INSERT INTO `evo_lexicon` VALUES ('6','Главные новости','Главные новости','Головні новини');

INSERT INTO `evo_lexicon` VALUES ('7','Лента новостей','Лента новостей','Стрічка новин');


# --------------------------------------------------------

#
# Table structure for table `evo_manager_log`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_manager_log`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_manager_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `timestamp` int(20) NOT NULL DEFAULT '0',
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `action` int(10) NOT NULL DEFAULT '0',
  `itemid` varchar(10) DEFAULT '0',
  `itemname` varchar(255) DEFAULT NULL,
  `message` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2993 DEFAULT CHARSET=utf8 COMMENT='Contains a record of user interaction.';

#
# Dumping data for table `evo_manager_log`
#

INSERT INTO `evo_manager_log` VALUES ('1','1507021014','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2','1507021016','1','admin','17','-','-','Editing settings');

INSERT INTO `evo_manager_log` VALUES ('3','1507021030','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('4','1507021065','1','admin','102','9','ElementsInTree','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('5','1507021073','1','admin','103','9','ElementsInTree','Saving plugin');

INSERT INTO `evo_manager_log` VALUES ('6','1507021074','1','admin','76','-','-','Element management');

INSERT INTO `evo_manager_log` VALUES ('7','1507021079','1','admin','76','-','-','Element management');

INSERT INTO `evo_manager_log` VALUES ('8','1507021087','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('9','1507021251','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('10','1507021273','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('11','1507021282','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('12','1507021310','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('13','1507023319','1','admin','17','-','-','Editing settings');

INSERT INTO `evo_manager_log` VALUES ('14','1507023354','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('15','1507023381','1','admin','17','-','-','Editing settings');

INSERT INTO `evo_manager_log` VALUES ('16','1507023397','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('17','1507023745','1','admin','79','-','inc_meta','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('18','1507023746','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('19','1507023756','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('20','1507023969','1','admin','79','-','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('21','1507023969','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('22','1507023998','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('23','1507024691','1','admin','79','-','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('24','1507024691','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('25','1507024770','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('26','1507024770','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('27','1507024780','1','admin','78','1','mm_rules','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('28','1507024788','1','admin','78','2','evoSearch','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('29','1507024816','1','admin','16','3','Minimal Template','Editing template');

INSERT INTO `evo_manager_log` VALUES ('30','1507024858','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('31','1507024858','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('32','1507024907','1','admin','102','18','SimpleGallery','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('33','1507024958','1','admin','103','18','SimpleGallery','Saving plugin');

INSERT INTO `evo_manager_log` VALUES ('34','1507024958','1','admin','102','18','SimpleGallery','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('35','1507024993','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('36','1507025077','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('37','1507025086','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('38','1507025261','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('39','1507025272','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('40','1507025274','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('41','1507025277','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('42','1507025312','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('43','1507025317','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('44','1507025348','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('45','1507025348','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('46','1507025365','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('47','1507025368','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('48','1507025375','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('49','1507025377','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('50','1507025390','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('51','1507025531','1','admin','102','18','SimpleGallery','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('52','1507025633','1','admin','17','-','-','Editing settings');

INSERT INTO `evo_manager_log` VALUES ('53','1507025646','1','admin','102','4','Updater','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('54','1507025660','1','admin','103','4','Updater','Saving plugin');

INSERT INTO `evo_manager_log` VALUES ('55','1507025660','1','admin','102','4','Updater','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('56','1507025666','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('57','1507025690','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('58','1507025692','1','admin','17','-','-','Editing settings');

INSERT INTO `evo_manager_log` VALUES ('59','1507025696','1','admin','30','-','-','Saving settings');

INSERT INTO `evo_manager_log` VALUES ('60','1507025711','1','admin','102','19','MODX.Evolution.updateNotify','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('61','1507025720','1','admin','104','19','MODX.Evolution.updateNotify','Delete plugin');

INSERT INTO `evo_manager_log` VALUES ('62','1507025720','1','admin','76','-','-','Element management');

INSERT INTO `evo_manager_log` VALUES ('63','1507025725','1','admin','26','-','-','Refreshing site');

INSERT INTO `evo_manager_log` VALUES ('64','1507025732','1','admin','26','-','-','Refreshing site');

INSERT INTO `evo_manager_log` VALUES ('65','1507025751','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('66','1507025761','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('67','1507025788','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('68','1507025788','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('69','1507025809','1','admin','93','-','-','Backup Manager');

INSERT INTO `evo_manager_log` VALUES ('70','1507025822','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('71','1507025862','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('72','1507025873','1','admin','102','18','SimpleGallery','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('73','1507025877','1','admin','103','18','SimpleGallery','Saving plugin');

INSERT INTO `evo_manager_log` VALUES ('74','1507025877','1','admin','102','18','SimpleGallery','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('75','1507025885','1','admin','93','-','-','Backup Manager');

INSERT INTO `evo_manager_log` VALUES ('76','1507025996','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('77','1507026019','1','admin','26','-','Extras','Refreshing site');

INSERT INTO `evo_manager_log` VALUES ('78','1507026038','1','admin','102','18','SimpleGallery','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('79','1507026047','1','admin','27','1','Evolution CMS Install Success','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('80','1507026053','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('81','1507026064','1','admin','27','1','Evolution CMS Install Success','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('82','1507026075','1','admin','5','1','Evolution CMS Install Success','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('83','1507026075','1','admin','27','1','Evolution CMS Install Success','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('84','1507047099','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('85','1507047462','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('86','1507047469','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('87','1507047473','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('88','1507047476','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('89','1507047478','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('90','1507047483','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('91','1507047490','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('92','1507047492','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('93','1507047494','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('94','1507047497','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('95','1507047499','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('96','1507047502','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('97','1507047507','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('98','1507047509','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('99','1507047512','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('100','1507047715','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('101','1507047715','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('102','1507048086','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('103','1507048086','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('104','1507048088','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('105','1507048413','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('106','1507048413','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('107','1507048417','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('108','1507048425','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('109','1507048432','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('110','1507048443','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('111','1507048445','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('112','1507048453','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('113','1507048978','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('114','1507049304','1','admin','27','1','Evolution CMS Install Success','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('115','1507049322','1','admin','27','1','Evolution CMS Install Success','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('116','1507049347','1','admin','5','1','Evolution CMS Install Success','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('117','1507049347','1','admin','27','1','Evolution CMS Install Success','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('118','1507049634','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('119','1507049837','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('120','1507049840','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('121','1507049857','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('122','1507049893','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('123','1507049893','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('124','1507049895','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('125','1507049896','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('126','1507049900','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('127','1507050038','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('128','1507050388','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('129','1507050388','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('130','1507050445','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('131','1507050445','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('132','1507050538','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('133','1507050557','1','admin','79','3','inc_meta','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('134','1507050557','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('135','1507050559','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('136','1507050565','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('137','1507050658','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('138','1507050658','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('139','1507050715','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('140','1507050729','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('141','1507050730','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('142','1507050991','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('143','1507050991','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('144','1507051134','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('145','1507051134','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('146','1507051172','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('147','1507051172','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('148','1507051807','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('149','1507051807','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('150','1507052091','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('151','1507052091','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('152','1507052105','1','admin','27','1','Evolution CMS Install Success','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('153','1507052208','1','admin','5','1','Главная страница','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('154','1507052208','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('155','1507649409','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('156','1507649410','1','admin','28','-','-','Changing password');

INSERT INTO `evo_manager_log` VALUES ('157','1507649423','1','admin','34','-','-','Saving new password');

INSERT INTO `evo_manager_log` VALUES ('158','1507649626','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('159','1507649637','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('160','1507649639','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('161','1507649641','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('162','1507649644','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('163','1507649647','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('164','1507649649','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('165','1507649659','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('166','1507649711','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('167','1507649712','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('168','1507649727','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('169','1507649732','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('170','1507649763','1','admin','102','18','SimpleGallery','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('171','1507649805','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('172','1507649815','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('173','1507649818','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('174','1507649821','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('175','1507649825','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('176','1507649858','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('177','1507649861','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/flexslider.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('178','1507649874','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/flexslider.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('179','1507649874','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/flexslider.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('180','1507649943','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('181','1507649951','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('182','1507650277','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('183','1507650326','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('184','1507650388','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('185','1507650397','1','admin','102','20','evoBabel','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('186','1507650466','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('187','1507650473','1','admin','19','-','Новый шаблон','Creating a new template');

INSERT INTO `evo_manager_log` VALUES ('188','1507650487','1','admin','20','-','Язык','Saving template');

INSERT INTO `evo_manager_log` VALUES ('189','1507650487','1','admin','16','4','Язык','Editing template');

INSERT INTO `evo_manager_log` VALUES ('190','1507650501','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('191','1507650512','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('192','1507650523','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('193','1507650524','1','admin','5','-','RU','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('194','1507650525','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('195','1507650528','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('196','1507650534','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('197','1507650538','1','admin','5','-','UA','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('198','1507650538','1','admin','27','3','UA','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('199','1507650624','1','admin','5','3','UA','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('200','1507650624','1','admin','27','3','UA','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('201','1507650625','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('202','1507650636','1','admin','5','2','RU','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('203','1507650636','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('204','1507650645','1','admin','300','-','Новый параметр (TV)','Create Template Variable');

INSERT INTO `evo_manager_log` VALUES ('205','1507650714','1','admin','302','-','Языковые версии ресурса','Save Template Variable');

INSERT INTO `evo_manager_log` VALUES ('206','1507650714','1','admin','76','-','-','Element management');

INSERT INTO `evo_manager_log` VALUES ('207','1507650731','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('208','1507650746','1','admin','102','20','evoBabel','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('209','1507650773','1','admin','103','20','evoBabel','Saving plugin');

INSERT INTO `evo_manager_log` VALUES ('210','1507650773','1','admin','102','20','evoBabel','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('211','1507650777','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('212','1507650791','1','admin','301','4','Языковые версии ресурса','Edit Template Variable');

INSERT INTO `evo_manager_log` VALUES ('213','1507650842','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('214','1507650876','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('215','1507650891','1','admin','106','-','-','Viewing Modules');

INSERT INTO `evo_manager_log` VALUES ('216','1507650895','1','admin','108','3','evoBabelLexicon','Edit module');

INSERT INTO `evo_manager_log` VALUES ('217','1507650928','1','admin','109','3','evoBabelLexicon','Saving module');

INSERT INTO `evo_manager_log` VALUES ('218','1507650928','1','admin','106','-','-','Viewing Modules');

INSERT INTO `evo_manager_log` VALUES ('219','1507650947','1','admin','22','30','evoBabel','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('220','1507650972','1','admin','22','29','alternate','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('221','1507650975','1','admin','22','31','lang','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('222','1507650979','1','admin','22','30','evoBabel','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('223','1507650985','1','admin','22','29','alternate','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('224','1507650987','1','admin','22','31','lang','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('225','1507651089','1','admin','106','-','-','Viewing Modules');

INSERT INTO `evo_manager_log` VALUES ('226','1507651091','1','admin','108','3','evoBabelLexicon','Edit module');

INSERT INTO `evo_manager_log` VALUES ('227','1507651097','1','admin','113','3','evoBabelLexicon','Manage module dependencies');

INSERT INTO `evo_manager_log` VALUES ('228','1507651101','1','admin','84','-','-','Load Element Selector');

INSERT INTO `evo_manager_log` VALUES ('229','1507651120','1','admin','113','3','evoBabelLexicon','Manage module dependencies');

INSERT INTO `evo_manager_log` VALUES ('230','1507651123','1','admin','84','-','-','Load Element Selector');

INSERT INTO `evo_manager_log` VALUES ('231','1507651137','1','admin','113','3','evoBabelLexicon','Manage module dependencies');

INSERT INTO `evo_manager_log` VALUES ('232','1507651163','1','admin','106','-','-','Viewing Modules');

INSERT INTO `evo_manager_log` VALUES ('233','1507651167','1','admin','22','30','evoBabel','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('234','1507651175','1','admin','22','30','evoBabel','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('235','1507651193','1','admin','106','-','-','Viewing Modules');

INSERT INTO `evo_manager_log` VALUES ('236','1507651195','1','admin','108','3','evoBabelLexicon','Edit module');

INSERT INTO `evo_manager_log` VALUES ('237','1507651198','1','admin','109','3','evoBabelLexicon','Saving module');

INSERT INTO `evo_manager_log` VALUES ('238','1507651198','1','admin','106','-','-','Viewing Modules');

INSERT INTO `evo_manager_log` VALUES ('239','1507651201','1','admin','22','30','evoBabel','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('240','1507651229','1','admin','106','-','-','Viewing Modules');

INSERT INTO `evo_manager_log` VALUES ('241','1507651232','1','admin','108','3','evoBabelLexicon','Edit module');

INSERT INTO `evo_manager_log` VALUES ('242','1507651246','1','admin','109','3','evoBabelLexicon','Saving module');

INSERT INTO `evo_manager_log` VALUES ('243','1507651246','1','admin','106','-','-','Viewing Modules');

INSERT INTO `evo_manager_log` VALUES ('244','1507651248','1','admin','22','30','evoBabel','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('245','1507651263','1','admin','24','30','evoBabel','Saving Snippet');

INSERT INTO `evo_manager_log` VALUES ('246','1507651263','1','admin','22','30','evoBabel','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('247','1507651268','1','admin','22','31','lang','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('248','1507651271','1','admin','24','31','lang','Saving Snippet');

INSERT INTO `evo_manager_log` VALUES ('249','1507651271','1','admin','22','31','lang','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('250','1507651289','1','admin','102','21','evoBabelPlaceholder','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('251','1507651308','1','admin','103','21','evoBabelPlaceholder','Saving plugin');

INSERT INTO `evo_manager_log` VALUES ('252','1507651308','1','admin','102','21','evoBabelPlaceholder','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('253','1507651312','1','admin','102','21','evoBabelPlaceholder','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('254','1507651315','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('255','1507651332','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('256','1507651333','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('257','1507651353','1','admin','5','1','Головна стоинка','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('258','1507651354','1','admin','27','1','Головна стоинка','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('259','1507651383','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('260','1507651384','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('261','1507651401','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('262','1507651401','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('263','1507651447','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('264','1507651447','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('265','1507651542','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('266','1507651543','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('267','1507651624','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('268','1507651625','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('269','1507651656','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('270','1507651656','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('271','1507651679','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('272','1507651679','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('273','1507651700','1','admin','106','-','-','Viewing Modules');

INSERT INTO `evo_manager_log` VALUES ('274','1507651704','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('275','1507651720','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('276','1507651774','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('277','1507651797','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('278','1507651797','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('279','1507651825','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('280','1507651898','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('281','1507651906','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('282','1507651925','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('283','1507651925','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('284','1507651940','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('285','1507651960','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('286','1507651973','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('287','1507651974','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('288','1507652019','1','admin','22','30','evoBabel','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('289','1507652030','1','admin','24','30','evoBabel','Saving Snippet');

INSERT INTO `evo_manager_log` VALUES ('290','1507652030','1','admin','22','30','evoBabel','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('291','1507652033','1','admin','22','31','lang','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('292','1507652037','1','admin','24','31','lang','Saving Snippet');

INSERT INTO `evo_manager_log` VALUES ('293','1507652037','1','admin','22','31','lang','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('294','1507652043','1','admin','102','20','evoBabel','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('295','1507652044','1','admin','102','21','evoBabelPlaceholder','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('296','1507652046','1','admin','102','20','evoBabel','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('297','1507652068','1','admin','102','21','evoBabelPlaceholder','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('298','1507652128','1','admin','16','4','Язык','Editing template');

INSERT INTO `evo_manager_log` VALUES ('299','1507652129','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('300','1507652142','1','admin','102','20','evoBabel','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('301','1507652152','1','admin','103','20','evoBabel','Saving plugin');

INSERT INTO `evo_manager_log` VALUES ('302','1507652152','1','admin','102','20','evoBabel','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('303','1507652271','1','admin','103','20','evoBabel','Saving plugin');

INSERT INTO `evo_manager_log` VALUES ('304','1507652271','1','admin','102','20','evoBabel','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('305','1507652281','1','admin','103','20','evoBabel','Saving plugin');

INSERT INTO `evo_manager_log` VALUES ('306','1507652281','1','admin','102','20','evoBabel','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('307','1507652332','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('308','1507652361','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('309','1507652361','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('310','1507652368','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('311','1507652372','1','admin','106','-','-','Viewing Modules');

INSERT INTO `evo_manager_log` VALUES ('312','1507652374','1','admin','108','3','evoBabelLexicon','Edit module');

INSERT INTO `evo_manager_log` VALUES ('313','1507652416','1','admin','102','20','evoBabel','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('314','1507652419','1','admin','102','21','evoBabelPlaceholder','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('315','1507652447','1','admin','27','4','Главная страница (Украинский)','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('316','1507652451','1','admin','27','1','Головна стоинка','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('317','1507652455','1','admin','27','4','Главная страница (Украинский)','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('318','1507652471','1','admin','102','18','SimpleGallery','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('319','1507652486','1','admin','103','18','SimpleGallery','Saving plugin');

INSERT INTO `evo_manager_log` VALUES ('320','1507652486','1','admin','102','18','SimpleGallery','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('321','1507652496','1','admin','27','4','Главная страница (Украинский)','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('322','1507652521','1','admin','5','4','Главная страница (Украинский)','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('323','1507652522','1','admin','27','4','Главная страница (Украинский)','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('324','1507726001','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('325','1507726025','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('326','1507818659','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('327','1508142681','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('328','1508144747','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('329','1508144760','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('330','1508144769','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('331','1508144771','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('332','1508144785','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('333','1508191845','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('334','1508191865','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('335','1508252264','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('336','1508252602','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('337','1508252651','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('338','1508253453','1','admin','5','-','Предприятие','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('339','1508253453','1','admin','27','5','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('340','1508253468','1','admin','27','-','Новый ресурс','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('341','1508253479','1','admin','27','5','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('342','1508253483','1','admin','6','5','Предприятие','Deleting resource');

INSERT INTO `evo_manager_log` VALUES ('343','1508253483','1','admin','3','5','Предприятие','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('344','1508253488','1','admin','27','5','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('345','1508253491','1','admin','6','5','Предприятие','Deleting resource');

INSERT INTO `evo_manager_log` VALUES ('346','1508253492','1','admin','3','5','Предприятие','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('347','1508253505','1','admin','27','1','Головна стоинка','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('348','1508253508','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('349','1508253511','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('350','1508253530','1','admin','5','-','Предприятие','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('351','1508253530','1','admin','27','6','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('352','1508253539','1','admin','27','5','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('353','1508253545','1','admin','3','5','Предприятие','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('354','1508253571','1','admin','27','5','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('355','1508253585','1','admin','27','-','Новый ресурс','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('356','1508253588','1','admin','27','6','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('357','1508253591','1','admin','27','-','Новый ресурс','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('358','1508253615','1','admin','27','1','Головна стоинка','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('359','1508253622','1','admin','27','5','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('360','1508253630','1','admin','27','5','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('361','1508253631','1','admin','27','6','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('362','1508253639','1','admin','27','6','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('363','1508253645','1','admin','64','-','-','Removing deleted content');

INSERT INTO `evo_manager_log` VALUES ('364','1508253649','1','admin','27','6','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('365','1508253654','1','admin','6','6','Предприятие','Deleting resource');

INSERT INTO `evo_manager_log` VALUES ('366','1508253654','1','admin','3','6','Предприятие','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('367','1508253658','1','admin','64','-','-','Removing deleted content');

INSERT INTO `evo_manager_log` VALUES ('368','1508253661','1','admin','27','1','Головна стоинка','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('369','1508253669','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('370','1508254061','1','admin','22','2','DLMenu','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('371','1508254086','1','admin','27','1','Головна стоинка','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('372','1508254371','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('373','1508254382','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('374','1508254400','1','admin','27','1','Головна стоинка','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('375','1508254433','1','admin','27','4','Главная страница (Украинский)','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('376','1508254443','1','admin','5','4','Головна сторінка','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('377','1508254443','1','admin','27','4','Головна сторінка','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('378','1508254445','1','admin','27','1','Головна стоинка','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('379','1508254491','1','admin','5','1','Главная страница','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('380','1508254491','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('381','1508254494','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('382','1508254504','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('383','1508254637','1','admin','19','-','Новый шаблон','Creating a new template');

INSERT INTO `evo_manager_log` VALUES ('384','1508254774','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('385','1508254895','1','admin','16','4','Язык','Editing template');

INSERT INTO `evo_manager_log` VALUES ('386','1508254902','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('387','1508254907','1','admin','19','-','Новый шаблон','Creating a new template');

INSERT INTO `evo_manager_log` VALUES ('388','1508254933','1','admin','20','-','Текстовая страница','Saving template');

INSERT INTO `evo_manager_log` VALUES ('389','1508254933','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('390','1508254943','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('391','1508254944','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('392','1508254954','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('393','1508254983','1','admin','5','-','Предприятие','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('394','1508254983','1','admin','27','7','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('395','1508254988','1','admin','27','7','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('396','1508255010','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('397','1508255016','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('398','1508255023','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('399','1508255030','1','admin','27','7','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('400','1508255106','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('401','1508255123','1','admin','27','7','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('402','1508255131','1','admin','5','7','Предприятие','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('403','1508255131','1','admin','27','7','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('404','1508255153','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('405','1508255183','1','admin','112','2','Doc Manager','Execute module');

INSERT INTO `evo_manager_log` VALUES ('406','1508255188','1','admin','106','-','-','Viewing Modules');

INSERT INTO `evo_manager_log` VALUES ('407','1508255191','1','admin','108','3','evoBabelLexicon','Edit module');

INSERT INTO `evo_manager_log` VALUES ('408','1508255351','1','admin','106','-','-','Viewing Modules');

INSERT INTO `evo_manager_log` VALUES ('409','1508255359','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('410','1508255371','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('411','1508255378','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('412','1508255383','1','admin','20','5','Текстовая страница','Saving template');

INSERT INTO `evo_manager_log` VALUES ('413','1508255383','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('414','1508255390','1','admin','27','7','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('415','1508255430','1','admin','17','-','-','Editing settings');

INSERT INTO `evo_manager_log` VALUES ('416','1508255446','1','admin','30','-','-','Saving settings');

INSERT INTO `evo_manager_log` VALUES ('417','1508255463','1','admin','27','7','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('418','1508255488','1','admin','27','7','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('419','1508255489','1','admin','27','7','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('420','1508255547','1','admin','5','7','Предпріемство','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('421','1508255547','1','admin','27','7','Предпріемство','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('422','1508255551','1','admin','27','8','Предприятие (Украинский)','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('423','1508255561','1','admin','5','8','Предприятие','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('424','1508255561','1','admin','27','8','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('425','1508255568','1','admin','27','7','Предпріемство','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('426','1508255572','1','admin','27','8','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('427','1508255575','1','admin','27','8','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('428','1508255578','1','admin','27','7','Предпріемство','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('429','1508255588','1','admin','27','8','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('430','1508255592','1','admin','5','8','Предприятие','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('431','1508255592','1','admin','27','8','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('432','1508255606','1','admin','27','7','Предпріемство','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('433','1508255608','1','admin','5','7','Предпріемство','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('434','1508255608','1','admin','27','7','Предпріемство','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('435','1508255613','1','admin','27','8','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('436','1508255616','1','admin','27','7','Предпріемство','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('437','1508255618','1','admin','5','7','Предпріемство','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('438','1508255618','1','admin','27','7','Предпріемство','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('439','1508255629','1','admin','27','7','Предпріемство','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('440','1508255634','1','admin','27','8','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('441','1508255656','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('442','1508255668','1','admin','5','-','Публичная информация','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('443','1508255668','1','admin','27','9','Публичная информация','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('444','1508255679','1','admin','27','9','Публичная информация','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('445','1508255693','1','admin','27','8','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('446','1508255694','1','admin','27','9','Публичная информация','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('447','1508255695','1','admin','27','9','Публичная информация','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('448','1508255703','1','admin','27','-','Новый ресурс','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('449','1508255714','1','admin','27','9','Публичная информация','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('450','1508255719','1','admin','5','9','Публичная информация','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('451','1508255720','1','admin','27','9','Публичная информация','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('452','1508255723','1','admin','27','9','Публичная информация','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('453','1508255723','1','admin','27','9','Публичная информация','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('454','1508255776','1','admin','5','9','Публічна інформація','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('455','1508255776','1','admin','27','9','Публічна інформація','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('456','1508255802','1','admin','27','10','Публичная информация (Украинский)','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('457','1508255806','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('458','1508255808','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('459','1508255824','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('460','1508255870','1','admin','5','-','Контакты','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('461','1508255870','1','admin','27','11','Контакты','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('462','1508255877','1','admin','27','11','Контакты','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('463','1508255886','1','admin','27','11','Контакты','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('464','1508255889','1','admin','5','11','Контакты','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('465','1508255890','1','admin','27','11','Контакты','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('466','1508255896','1','admin','27','11','Контакты','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('467','1508255897','1','admin','27','11','Контакты','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('468','1508255909','1','admin','5','11','Контакти','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('469','1508255910','1','admin','27','11','Контакти','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('470','1508255931','1','admin','106','-','-','Viewing Modules');

INSERT INTO `evo_manager_log` VALUES ('471','1508255934','1','admin','108','3','evoBabelLexicon','Edit module');

INSERT INTO `evo_manager_log` VALUES ('472','1508255949','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('473','1508255960','1','admin','27','3','UA','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('474','1508255994','1','admin','27','7','Предпріемство','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('475','1508256006','1','admin','6','7','Предпріемство','Deleting resource');

INSERT INTO `evo_manager_log` VALUES ('476','1508256006','1','admin','3','3','UA','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('477','1508256008','1','admin','27','12','Контакты (Украинский)','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('478','1508256012','1','admin','6','12','Контакты (Украинский)','Deleting resource');

INSERT INTO `evo_manager_log` VALUES ('479','1508256012','1','admin','3','3','UA','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('480','1508256016','1','admin','27','9','Публічна інформація','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('481','1508256024','1','admin','64','-','-','Removing deleted content');

INSERT INTO `evo_manager_log` VALUES ('482','1508256029','1','admin','27','8','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('483','1508256032','1','admin','27','11','Контакти','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('484','1508256036','1','admin','27','9','Публічна інформація','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('485','1508256047','1','admin','6','9','Публічна інформація','Deleting resource');

INSERT INTO `evo_manager_log` VALUES ('486','1508256048','1','admin','3','2','RU','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('487','1508256055','1','admin','64','-','-','Removing deleted content');

INSERT INTO `evo_manager_log` VALUES ('488','1508256069','1','admin','6','8','Предприятие','Deleting resource');

INSERT INTO `evo_manager_log` VALUES ('489','1508256069','1','admin','3','2','RU','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('490','1508256071','1','admin','27','11','Контакти','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('491','1508256075','1','admin','6','11','Контакти','Deleting resource');

INSERT INTO `evo_manager_log` VALUES ('492','1508256076','1','admin','3','2','RU','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('493','1508256080','1','admin','64','-','-','Removing deleted content');

INSERT INTO `evo_manager_log` VALUES ('494','1508256085','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('495','1508256093','1','admin','94','1','Копия Главная страница','Duplicate resource');

INSERT INTO `evo_manager_log` VALUES ('496','1508256093','1','admin','3','13','Копия Главная страница','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('497','1508256096','1','admin','27','13','Копия Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('498','1508256158','1','admin','27','13','Копия Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('499','1508256168','1','admin','5','13','Предприятие','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('500','1508256168','1','admin','27','13','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('501','1508256179','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('502','1508256187','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('503','1508256191','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('504','1508256217','1','admin','5','-','Предпріемство','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('505','1508256217','1','admin','27','14','Предпріемство','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('506','1508256221','1','admin','27','13','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('507','1508256225','1','admin','27','14','Предпріемство','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('508','1508256229','1','admin','27','4','Головна сторінка','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('509','1508256230','1','admin','27','13','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('510','1508256254','1','admin','5','13','Предприятие','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('511','1508256254','1','admin','27','13','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('512','1508256263','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('513','1508256452','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('514','1508256460','1','admin','5','-','Публичная информация','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('515','1508256461','1','admin','27','15','Публичная информация','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('516','1508256468','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('517','1508256475','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('518','1508256487','1','admin','5','-','Пуь','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('519','1508256487','1','admin','27','16','Пуь','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('520','1508256611','1','admin','27','16','Пуь','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('521','1508256620','1','admin','5','16','Публічна інформація','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('522','1508256620','1','admin','27','16','Публічна інформація','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('523','1508256639','1','admin','27','15','Публичная информация','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('524','1508256644','1','admin','27','16','Публічна інформація','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('525','1508256652','1','admin','6','16','Публічна інформація','Deleting resource');

INSERT INTO `evo_manager_log` VALUES ('526','1508256652','1','admin','3','3','UA','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('527','1508256658','1','admin','64','-','-','Removing deleted content');

INSERT INTO `evo_manager_log` VALUES ('528','1508256662','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('529','1508256667','1','admin','5','-','Публічна інформація','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('530','1508256667','1','admin','27','17','Публічна інформація','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('531','1508256671','1','admin','27','17','Публічна інформація','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('532','1508256673','1','admin','5','17','Публічна інформація','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('533','1508256673','1','admin','27','17','Публічна інформація','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('534','1508256687','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('535','1508256697','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('536','1508256700','1','admin','5','-','Потребители','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('537','1508256700','1','admin','27','18','Потребители','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('538','1508256708','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('539','1508256740','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('540','1508256742','1','admin','5','-','Споживачі','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('541','1508256742','1','admin','27','19','Споживачі','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('542','1508256756','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('543','1508256759','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('544','1508256765','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('545','1508256771','1','admin','5','-','Коммерческое предложение','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('546','1508256771','1','admin','5','-','Коммерческое предложение','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('547','1508256772','1','admin','27','21','Коммерческое предложение','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('548','1508256777','1','admin','27','20','Коммерческое предложение','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('549','1508256780','1','admin','27','21','Коммерческое предложение','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('550','1508256794','1','admin','6','21','Коммерческое предложение','Deleting resource');

INSERT INTO `evo_manager_log` VALUES ('551','1508256794','1','admin','3','2','RU','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('552','1508256798','1','admin','64','-','-','Removing deleted content');

INSERT INTO `evo_manager_log` VALUES ('553','1508256803','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('554','1508256832','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('555','1508256836','1','admin','5','-','Комерційна пропозиція','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('556','1508256836','1','admin','27','22','Комерційна пропозиція','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('557','1508256869','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('558','1508256906','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('559','1508256926','1','admin','5','-','Контакты','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('560','1508256926','1','admin','27','23','Контакты','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('561','1508256930','1','admin','27','3','UA','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('562','1508256935','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('563','1508256953','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('564','1508256958','1','admin','5','-','Контакти','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('565','1508256958','1','admin','27','24','Контакти','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('566','1508257004','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('567','1508257010','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('568','1508257027','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('569','1508257027','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('570','1508258124','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('571','1508258124','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('572','1508258187','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('573','1508258187','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('574','1508258219','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('575','1508258219','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('576','1508258255','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('577','1508258255','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('578','1508258332','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('579','1508258393','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('580','1508258409','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('581','1508258449','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('582','1508258449','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('583','1508258512','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('584','1508258512','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('585','1508258520','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('586','1508258542','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('587','1508258568','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('588','1508258569','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('589','1508258576','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('590','1508258716','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('591','1508258716','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('592','1508258736','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('593','1508258739','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('594','1508258742','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('595','1508258745','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('596','1508258748','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('597','1508258754','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('598','1508258818','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('599','1508258818','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('600','1508258950','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('601','1508258950','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('602','1508259002','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('603','1508259002','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('604','1508259074','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('605','1508259074','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('606','1508260655','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('607','1508260655','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('608','1508261034','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('609','1508261034','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('610','1508261050','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('611','1508261050','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('612','1508261071','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('613','1508261071','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('614','1508261180','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('615','1508261223','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('616','1508261226','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('617','1508261229','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('618','1508261232','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('619','1508261310','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('620','1508261310','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('621','1508261323','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('622','1508261323','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('623','1508261339','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('624','1508261339','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('625','1508261425','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('626','1508261425','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('627','1508261444','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('628','1508261489','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('629','1508261492','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('630','1508261500','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('631','1508261500','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('632','1508261505','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('633','1508261508','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('634','1508261526','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('635','1508261529','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('636','1508261627','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('637','1508261627','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('638','1508261692','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('639','1508261692','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('640','1508261826','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('641','1508261826','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('642','1508261913','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('643','1508261913','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('644','1508261919','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('645','1508261919','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('646','1508261995','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('647','1508261995','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('648','1508262077','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('649','1508262077','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('650','1508262090','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('651','1508262090','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('652','1508262092','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('653','1508262146','1','admin','79','3','inc_meta','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('654','1508262146','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('655','1508262151','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('656','1508262162','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('657','1508262175','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('658','1508262175','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('659','1508262195','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('660','1508262201','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('661','1508262203','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('662','1508262206','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('663','1508262247','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('664','1508262247','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('665','1508262286','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('666','1508262286','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('667','1508266019','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('668','1508269269','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('669','1508270903','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('670','1508271858','1','admin','106','-','-','Viewing Modules');

INSERT INTO `evo_manager_log` VALUES ('671','1508272172','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('672','1508313203','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('673','1508313235','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('674','1508314505','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('675','1508314528','1','admin','79','3','inc_meta','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('676','1508314528','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('677','1508314550','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('678','1508314667','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('679','1508314675','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('680','1508314679','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('681','1508314686','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('682','1508314686','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('683','1508314699','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('684','1508314715','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('685','1508314718','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('686','1508314720','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('687','1508314723','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('688','1508314813','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('689','1508314813','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('690','1508314884','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('691','1508314884','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('692','1508316257','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('693','1508331611','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('694','1508331618','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('695','1508331663','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('696','1508331674','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('697','1508331720','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('698','1508331720','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('699','1508331897','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('700','1508404624','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('701','1508404640','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('702','1508404643','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('703','1508404645','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('704','1508404648','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('705','1508453744','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('706','1508453761','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('707','1508453765','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('708','1508453771','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('709','1508453965','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('710','1508454068','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('711','1508454068','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('712','1508454204','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('713','1508454204','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('714','1508454274','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('715','1508454274','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('716','1508454333','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('717','1508454333','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('718','1508454409','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('719','1508454409','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('720','1508454440','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('721','1508454440','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('722','1508455399','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('723','1508455399','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('724','1508455399','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('725','1508455399','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('726','1508455435','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('727','1508455435','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('728','1508490521','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('729','1508490584','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('730','1508490594','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('731','1508490816','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('732','1508490820','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('733','1508496039','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('734','1508497387','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('735','1508500979','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('736','1508500983','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('737','1508502241','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('738','1508502242','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('739','1508560688','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('740','1508579028','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('741','1509300149','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('742','1509300183','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('743','1509300392','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('744','1509300403','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('745','1509300408','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('746','1509300743','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('747','1509302684','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('748','1509302708','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('749','1509303132','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('750','1509303136','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('751','1509303139','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('752','1509303307','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/img/logo.png','Uploaded File');

INSERT INTO `evo_manager_log` VALUES ('753','1509303315','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/img/logo.png','Deleted File');

INSERT INTO `evo_manager_log` VALUES ('754','1509303317','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('755','1509303324','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('756','1509303342','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/img/logo.png','Uploaded File');

INSERT INTO `evo_manager_log` VALUES ('757','1509303370','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/img/logo.png','Deleted File');

INSERT INTO `evo_manager_log` VALUES ('758','1509303382','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/img/logo.png','Deleted File');

INSERT INTO `evo_manager_log` VALUES ('759','1509303382','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/img/logo.png','Deleted File');

INSERT INTO `evo_manager_log` VALUES ('760','1509303414','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/img/logo.png','Uploaded File');

INSERT INTO `evo_manager_log` VALUES ('761','1509303420','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('762','1509303430','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/img/logo.png','Deleted File');

INSERT INTO `evo_manager_log` VALUES ('763','1509303470','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/img/logo.png','Deleted File');

INSERT INTO `evo_manager_log` VALUES ('764','1509303665','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('765','1509303670','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('766','1509303672','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('767','1509303675','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('768','1509303693','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/img/logo.png','Uploaded File');

INSERT INTO `evo_manager_log` VALUES ('769','1509303715','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('770','1509303758','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('771','1509303763','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('772','1509303766','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('773','1509303773','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('774','1509303798','1','admin','78','1','mm_rules','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('775','1509303811','1','admin','22','31','lang','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('776','1509303859','1','admin','102','20','evoBabel','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('777','1509303875','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('778','1509303911','1','admin','102','21','evoBabelPlaceholder','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('779','1509303983','1','admin','102','21','evoBabelPlaceholder','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('780','1509304021','1','admin','16','4','Язык','Editing template');

INSERT INTO `evo_manager_log` VALUES ('781','1509304074','1','admin','22','30','evoBabel','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('782','1509304085','1','admin','102','20','evoBabel','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('783','1509304517','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('784','1509304537','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('785','1509304543','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('786','1509304553','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('787','1509304568','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('788','1509304657','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('789','1509304657','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('790','1509305043','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('791','1509305043','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('792','1509305313','1','admin','76','-','-','Element management');

INSERT INTO `evo_manager_log` VALUES ('793','1509305356','1','admin','22','30','evoBabel','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('794','1509305374','1','admin','76','-','-','Element management');

INSERT INTO `evo_manager_log` VALUES ('795','1509305376','1','admin','76','-','-','Element management');

INSERT INTO `evo_manager_log` VALUES ('796','1509305391','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('797','1509305392','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('798','1509305430','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('799','1509305443','1','admin','27','4','Головна сторінка','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('800','1509305465','1','admin','22','30','evoBabel','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('801','1509305496','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('802','1509305521','1','admin','22','8','FirstChildRedirect','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('803','1509305555','1','admin','22','4','if','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('804','1509305581','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('805','1509305633','1','admin','22','30','evoBabel','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('806','1509305648','1','admin','22','18','sgLister','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('807','1509305665','1','admin','22','31','lang','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('808','1509305692','1','admin','22','30','evoBabel','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('809','1509305694','1','admin','22','29','alternate','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('810','1509305702','1','admin','22','30','evoBabel','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('811','1509305732','1','admin','102','21','evoBabelPlaceholder','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('812','1509305760','1','admin','102','20','evoBabel','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('813','1509305899','1','admin','16','4','Язык','Editing template');

INSERT INTO `evo_manager_log` VALUES ('814','1509306006','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('815','1509306011','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('816','1509306026','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('817','1509306028','1','admin','78','1','mm_rules','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('818','1509306034','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('819','1509306039','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('820','1509306050','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('821','1509306057','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('822','1509306219','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('823','1509306251','1','admin','5','2','RU','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('824','1509306251','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('825','1509306268','1','admin','27','3','UA','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('826','1509306301','1','admin','5','3','UA','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('827','1509306301','1','admin','27','3','UA','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('828','1509306304','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('829','1509306358','1','admin','5','2','RU','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('830','1509306358','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('831','1509306501','1','admin','27','3','UA','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('832','1509306521','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('833','1509306525','1','admin','5','2','RU','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('834','1509306526','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('835','1509306594','1','admin','22','30','evoBabel','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('836','1509306643','1','admin','102','20','evoBabel','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('837','1509306773','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('838','1509306775','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('839','1509306778','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('840','1509306780','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('841','1509306783','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('842','1509306789','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('843','1509306862','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('844','1509306862','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('845','1509427568','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('846','1509468104','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('847','1509468158','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('848','1509468162','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('849','1509468166','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('850','1509468169','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('851','1509468174','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('852','1509468176','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('853','1509468183','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/assets/snippets/evoBabel/snippet.evoBabel.php','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('854','1509468188','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('855','1509468191','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('856','1509468193','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('857','1509468197','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/assets/snippets/evoBabel/evoBabel.class.php','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('858','1509468214','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('859','1509468217','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('860','1509468219','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('861','1509468227','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/assets/snippets/evoBabel/script.js','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('862','1509468232','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('863','1509468236','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('864','1509468239','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('865','1509468242','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('866','1509468246','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('867','1509468249','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('868','1509468254','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('869','1509468258','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('870','1509468269','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('871','1509468273','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/assets/snippets/evoBabel/config/config.php','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('872','1509468317','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/assets/snippets/evoBabel/config/config.php','Modified File');

INSERT INTO `evo_manager_log` VALUES ('873','1509468317','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/assets/snippets/evoBabel/config/config.php','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('874','1509468326','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/assets/snippets/evoBabel/config/config.php','Modified File');

INSERT INTO `evo_manager_log` VALUES ('875','1509468326','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/assets/snippets/evoBabel/config/config.php','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('876','1509468359','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/assets/snippets/evoBabel/config/config.php','Modified File');

INSERT INTO `evo_manager_log` VALUES ('877','1509468359','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/assets/snippets/evoBabel/config/config.php','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('878','1509468374','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('879','1509469076','1','admin','8','-','-','Logged out');

INSERT INTO `evo_manager_log` VALUES ('880','1509651864','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('881','1509662540','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('882','1509663597','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('883','1509664259','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('884','1509664259','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('885','1509665249','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('886','1509665427','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('887','1509665431','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('888','1509667070','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('889','1509667070','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('890','1509690412','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('891','1509690421','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('892','1509690452','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('893','1509690452','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('894','1509690469','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('895','1509690469','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('896','1509690583','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('897','1509690616','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('898','1509690621','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('899','1509690639','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('900','1509690639','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('901','1509690641','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('902','1509690646','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('903','1509690647','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('904','1509690715','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('905','1509690717','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('906','1509690719','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('907','1509690721','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('908','1509690726','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/js/classie.js','Uploaded File');

INSERT INTO `evo_manager_log` VALUES ('909','1509690726','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/js/uisearch.js','Uploaded File');

INSERT INTO `evo_manager_log` VALUES ('910','1509690735','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('911','1509715647','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('912','1509715958','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('913','1509715966','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('914','1509715983','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('915','1509715983','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('916','1509716019','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('917','1509716038','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('918','1509716048','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('919','1509716048','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('920','1509716077','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('921','1509716097','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('922','1509716101','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('923','1509716103','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('924','1509716106','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('925','1509716120','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('926','1509716122','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('927','1510074994','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('928','1510075001','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('929','1510075012','1','admin','120','-','-','Idle (unknown)');

INSERT INTO `evo_manager_log` VALUES ('930','1510075015','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('931','1510075017','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('932','1510075019','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('933','1510075021','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('934','1510075132','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('935','1510075134','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('936','1510075136','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('937','1510075140','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('938','1510075229','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('939','1510075229','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('940','1510075236','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('941','1510075244','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('942','1510075286','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('943','1510075289','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('944','1510075291','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('945','1510075304','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/js/classie.js','Deleted File');

INSERT INTO `evo_manager_log` VALUES ('946','1510075308','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/js/uisearch.js','Deleted File');

INSERT INTO `evo_manager_log` VALUES ('947','1510075322','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('948','1510075327','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('949','1510075350','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('950','1510075350','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('951','1510075421','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('952','1510075538','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('953','1510075545','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('954','1510075560','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('955','1510075560','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('956','1510075563','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('957','1510075564','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('958','1510075566','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('959','1510075571','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('960','1510075591','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('961','1510075591','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('962','1510075608','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('963','1510075608','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('964','1510075666','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('965','1510075666','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('966','1510075790','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('967','1510075790','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('968','1510075803','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('969','1510075825','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('970','1510075825','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('971','1510075826','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('972','1510075829','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('973','1510075852','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('974','1510075853','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('975','1510075917','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('976','1510075921','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('977','1510075926','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('978','1510075928','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('979','1510075935','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/assets/snippets/evoBabel/evoBabel.class.php','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('980','1510076009','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('981','1510076014','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('982','1510076017','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('983','1510076019','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('984','1510076023','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/assets/snippets/evoBabel/config/config.php','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('985','1510076052','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/assets/snippets/evoBabel/config/config.php','Modified File');

INSERT INTO `evo_manager_log` VALUES ('986','1510076052','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/assets/snippets/evoBabel/config/config.php','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('987','1510076144','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('988','1510076148','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('989','1510076150','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('990','1510076152','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('991','1510076201','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('992','1510076201','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('993','1510076212','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/assets/snippets/evoBabel/config/config.php','Modified File');

INSERT INTO `evo_manager_log` VALUES ('994','1510076212','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/assets/snippets/evoBabel/config/config.php','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('995','1510076276','1','admin','17','-','-','Editing settings');

INSERT INTO `evo_manager_log` VALUES ('996','1510076280','1','admin','30','-','-','Saving settings');

INSERT INTO `evo_manager_log` VALUES ('997','1510076325','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('998','1510076330','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('999','1510076338','1','admin','27','15','Публичная информация','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1000','1510076344','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1001','1510076347','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1002','1510076611','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1003','1510076618','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1004','1510076620','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1005','1510076629','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1006','1510076633','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1007','1510076652','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1008','1510076660','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1009','1510076666','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1010','1510076669','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1011','1510076674','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1012','1510076686','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1013','1510076691','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/assets/snippets/evoBabel/config/config.php','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1014','1510076742','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1015','1510076745','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1016','1510076755','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1017','1510076760','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1018','1510076762','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1019','1510076767','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1020','1510076828','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1021','1510076828','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1022','1510076893','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1023','1510076893','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1024','1510077032','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1025','1510077032','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1026','1510077469','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1027','1510077469','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1028','1510077513','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1029','1510077513','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1030','1510077569','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1031','1510077569','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1032','1510077638','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1033','1510077638','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1034','1510077673','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1035','1510077673','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1036','1510077764','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1037','1510077764','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1038','1510077795','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1039','1510077795','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1040','1510077870','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1041','1510077870','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1042','1510078060','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1043','1510078060','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1044','1510078433','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1045','1510078433','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1046','1510078736','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1047','1510078736','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1048','1510078849','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1049','1510078849','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1050','1510078932','1','admin','27','13','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1051','1510079032','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1052','1510079035','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1053','1510079036','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1054','1510079040','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1055','1510079058','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1056','1510079058','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1057','1510079118','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1058','1510079118','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1059','1510079202','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1060','1510079202','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1061','1510079205','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1062','1510079223','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1063','1510079235','1','admin','27','13','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1064','1510079362','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1065','1510080235','1','admin','27','13','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1066','1510088508','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('1067','1510088592','1','admin','27','3','UA','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1068','1510088799','1','admin','27','3','UA','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1069','1510088803','1','admin','27','3','UA','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1070','1510088806','1','admin','27','3','UA','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1071','1510088808','1','admin','27','3','UA','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1072','1510088815','1','admin','27','3','UA','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1073','1510088826','1','admin','27','3','UA','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1074','1510088833','1','admin','27','3','UA','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1075','1510089899','1','admin','27','13','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1076','1510089907','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1077','1510089939','1','admin','5','-','О предприятии','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1078','1510089939','1','admin','27','25','О предприятии','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1079','1510089975','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1080','1510089981','1','admin','5','-','Руководство','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1081','1510089981','1','admin','27','26','Руководство','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1082','1510090041','1','admin','27','25','О предприятии','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1083','1510090043','1','admin','27','26','Руководство','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1084','1510090048','1','admin','27','13','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1085','1510090052','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1086','1510090057','1','admin','5','-','Награды и грамоты','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1087','1510090057','1','admin','27','27','Награды и грамоты','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1088','1510090105','1','admin','27','13','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1089','1510090110','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1090','1510090113','1','admin','5','-','Благодарности','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1091','1510090113','1','admin','27','28','Благодарности','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1092','1510090367','1','admin','27','13','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1093','1510090371','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1094','1510090376','1','admin','5','-','Инновации','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1095','1510090376','1','admin','27','29','Инновации','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1096','1510090378','1','admin','27','13','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1097','1510090381','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1098','1510090533','1','admin','5','-','Вакансии','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1099','1510090534','1','admin','27','30','Вакансии','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1100','1510090653','1','admin','27','15','Публичная информация','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1101','1510090709','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1102','1510090722','1','admin','5','-','Абонентные участки','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1103','1510090722','1','admin','27','31','Абонентные участки','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1104','1510090728','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1105','1510090742','1','admin','5','-','Юридические лица','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1106','1510090743','1','admin','27','32','Юридические лица','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1107','1510090746','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1108','1510090778','1','admin','5','-','Дислокация','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1109','1510090778','1','admin','27','33','Дислокация','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1110','1510090872','1','admin','27','15','Публичная информация','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1111','1510090875','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1112','1510090880','1','admin','5','-','Структура предприятия','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1113','1510090880','1','admin','27','34','Структура предприятия','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1114','1510091107','1','admin','27','15','Публичная информация','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1115','1510091109','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1116','1510091124','1','admin','5','-','Фин. отчетность','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1117','1510091124','1','admin','27','35','Фин. отчетность','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1118','1510091291','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1119','1510091295','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1120','1510091299','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1121','1510091301','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1122','1510091349','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1123','1510091355','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1124','1510091357','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1125','1510091364','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1126','1510091877','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1127','1510091880','1','admin','5','-','О доступе к публичной информации','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1128','1510091880','1','admin','27','36','О доступе к публичной информации','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1129','1510091884','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1130','1510091922','1','admin','5','-','Организационная структура','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1131','1510091922','1','admin','27','37','Организационная структура','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1132','1510091938','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1133','1510091940','1','admin','5','-','Тарифы','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1134','1510091940','1','admin','27','38','Тарифы','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1135','1510091957','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1136','1510091961','1','admin','5','-','Нормативно-правовые акты','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1137','1510091961','1','admin','27','39','Нормативно-правовые акты','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1138','1510091974','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1139','1510091978','1','admin','5','-','График личных приемов руководителей','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1140','1510091978','1','admin','27','40','График личных приемов руководителей','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1141','1510091993','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1142','1510091996','1','admin','5','-','Структура предприятия, правила внутреннего распорядка','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1143','1510091996','1','admin','27','41','Структура предприятия, правила внутреннего распорядка','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1144','1510092012','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1145','1510092016','1','admin','5','-','Отчеты о запросах публичной информации','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1146','1510092016','1','admin','27','42','Отчеты о запросах публичной информации','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1147','1510092050','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1148','1510092052','1','admin','5','-','Тарифы для населения','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1149','1510092052','1','admin','27','43','Тарифы для населения','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1150','1510092056','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1151','1510092070','1','admin','5','-','Тарифы для юр.лиц','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1152','1510092070','1','admin','27','44','Тарифы для юр.лиц','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1153','1510092074','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1154','1510092083','1','admin','5','-','Субсидии','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1155','1510092083','1','admin','27','45','Субсидии','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1156','1510092175','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1157','1510092178','1','admin','5','-','Льготы','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1158','1510092178','1','admin','27','46','Льготы','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1159','1510092187','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1160','1510092191','1','admin','5','-','Предоставление услуг','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1161','1510092191','1','admin','27','47','Предоставление услуг','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1162','1510092206','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1163','1510092208','1','admin','5','-','Сообщить показания прибора учета ','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1164','1510092208','1','admin','27','48','Сообщить показания прибора учета ','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1165','1510092219','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1166','1510092222','1','admin','5','-','Нормативно-правовые акты ','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1167','1510092222','1','admin','27','49','Нормативно-правовые акты ','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1168','1510092236','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1169','1510092238','1','admin','5','-','Разъяснения','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1170','1510092238','1','admin','27','50','Разъяснения','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1171','1510092251','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1172','1510092253','1','admin','5','-','Прибоpы учета','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1173','1510092253','1','admin','27','51','Прибоpы учета','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1174','1510092264','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1175','1510092266','1','admin','5','-','Подключение объектов','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1176','1510092266','1','admin','27','52','Подключение объектов','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1177','1510092485','1','admin','27','4','Головна сторінка','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1178','1510092491','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1179','1510092496','1','admin','27','13','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1180','1510092500','1','admin','27','14','Предпріемство','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1181','1510092504','1','admin','27','17','Публічна інформація','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1182','1510092508','1','admin','27','19','Споживачі','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1183','1510092511','1','admin','27','22','Комерційна пропозиція','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1184','1510092514','1','admin','27','24','Контакти','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1185','1510092525','1','admin','27','13','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1186','1510161108','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('1187','1510161140','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1188','1510393706','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('1189','1510393714','1','admin','17','-','-','Editing settings');

INSERT INTO `evo_manager_log` VALUES ('1190','1510393731','1','admin','30','-','-','Saving settings');

INSERT INTO `evo_manager_log` VALUES ('1191','1510393736','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1192','1510393739','1','admin','27','23','Контакты','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1193','1510393743','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1194','1510393749','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1195','1510393754','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1196','1510393757','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1197','1510393761','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1198','1510393788','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1199','1510393795','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1200','1510393795','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1201','1510395506','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('1202','1510395515','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1203','1510395518','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1204','1510395520','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1205','1510395524','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1206','1510395730','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1207','1510395730','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1208','1510395764','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1209','1510395764','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1210','1510395863','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1211','1510395863','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1212','1510395965','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1213','1510396010','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1214','1510396010','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1215','1510396021','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1216','1510396021','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1217','1510396058','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1218','1510396058','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1219','1510396078','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1220','1510396078','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1221','1510396120','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1222','1510396120','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1223','1510396276','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1224','1510396276','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1225','1510396670','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1226','1510396670','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1227','1510396737','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1228','1510396737','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1229','1510396761','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1230','1510396761','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1231','1510396871','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1232','1510396871','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1233','1510396904','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1234','1510396904','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1235','1510396955','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1236','1510396955','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1237','1510397098','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1238','1510397098','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1239','1510397188','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1240','1510397188','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1241','1510397207','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1242','1510397207','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1243','1510397270','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1244','1510397270','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1245','1510397679','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1246','1510397679','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1247','1510397796','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1248','1510397797','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1249','1510397945','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1250','1510397945','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1251','1510398218','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1252','1510398218','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1253','1510398222','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1254','1510398222','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1255','1510398368','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1256','1510398368','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1257','1510398630','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1258','1510398630','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1259','1510398650','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1260','1510398650','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1261','1510398737','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1262','1510398737','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1263','1510398771','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1264','1510398771','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1265','1510398838','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1266','1510398838','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1267','1510398880','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1268','1510398880','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1269','1510398893','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1270','1510398893','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1271','1510398902','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1272','1510398902','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1273','1510398916','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1274','1510398916','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1275','1510398987','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1276','1510398987','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1277','1510399005','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1278','1510399005','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1279','1510399063','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1280','1510399063','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1281','1510399161','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1282','1510399161','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1283','1510399196','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1284','1510399196','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1285','1510399218','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1286','1510399218','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1287','1510399232','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1288','1510399232','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1289','1510399259','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1290','1510399259','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1291','1510399272','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1292','1510399272','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1293','1510399310','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1294','1510399310','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1295','1510399359','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1296','1510399359','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1297','1510399366','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1298','1510399366','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1299','1510399388','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1300','1510399388','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1301','1510399582','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1302','1510399582','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1303','1510399606','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1304','1510399606','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1305','1510399698','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1306','1510399698','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1307','1510399853','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1308','1510399853','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1309','1510399972','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1310','1510399972','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1311','1510400027','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1312','1510400027','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1313','1510400099','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1314','1510400099','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1315','1510400110','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1316','1510400110','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1317','1510400129','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1318','1510400129','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1319','1510400183','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1320','1510400494','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1321','1510400494','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1322','1510400509','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1323','1510400509','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1324','1510400530','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1325','1510400530','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1326','1510400562','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1327','1510400562','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1328','1510400570','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1329','1510400570','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1330','1510400590','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1331','1510400591','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1332','1510400609','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1333','1510400609','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1334','1510400645','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1335','1510400646','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1336','1510400663','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1337','1510400663','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1338','1510400681','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1339','1510400681','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1340','1510400895','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1341','1510400895','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1342','1510400938','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1343','1510400938','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1344','1510401006','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1345','1510401006','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1346','1510401025','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1347','1510401025','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1348','1510401112','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1349','1510401112','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1350','1510401156','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1351','1510401156','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1352','1510401179','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1353','1510401179','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1354','1510401328','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1355','1510401328','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1356','1510401343','1','admin','22','30','evoBabel','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('1357','1510401349','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('1358','1510401415','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('1359','1510401468','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1360','1510401474','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1361','1510401495','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1362','1510401495','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1363','1510401519','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1364','1510401523','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1365','1510401525','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1366','1510401528','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1367','1510401634','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1368','1510401634','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1369','1510401666','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1370','1510401666','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1371','1510401711','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1372','1510401711','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1373','1510401785','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1374','1510401785','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1375','1510401908','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1376','1510401908','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1377','1510401927','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1378','1510401935','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1379','1510401938','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1380','1510401940','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1381','1510401943','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1382','1510401967','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1383','1510401967','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1384','1510402026','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1385','1510402026','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1386','1510402136','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1387','1510402136','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1388','1510402174','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1389','1510402174','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1390','1510402245','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1391','1510402245','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1392','1510402258','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1393','1510402258','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1394','1510402279','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1395','1510402279','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1396','1510402343','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1397','1510402343','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1398','1510402541','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1399','1510402541','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1400','1510406996','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('1401','1510407117','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1402','1510407125','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1403','1510407127','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1404','1510407129','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1405','1510407524','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1406','1510407524','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1407','1510407614','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1408','1510407614','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1409','1510407632','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1410','1510407632','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1411','1510407701','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1412','1510407701','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1413','1510407781','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1414','1510407781','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1415','1510407840','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1416','1510407840','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1417','1510407853','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1418','1510407853','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1419','1510407888','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1420','1510407888','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1421','1510407950','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1422','1510407950','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1423','1510408111','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1424','1510408111','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1425','1510408158','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1426','1510408158','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1427','1510408285','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1428','1510408285','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1429','1510408363','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1430','1510408363','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1431','1510408840','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1432','1510408840','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1433','1510408902','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1434','1510408902','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1435','1510409205','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1436','1510409205','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1437','1510409285','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1438','1510409285','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1439','1510409332','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1440','1510409332','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1441','1510409364','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1442','1510409364','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1443','1510409457','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1444','1510409457','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1445','1510409517','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1446','1510409517','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1447','1510409582','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1448','1510409582','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1449','1510409645','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1450','1510409645','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1451','1510409773','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1452','1510409773','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1453','1510409814','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1454','1510409814','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1455','1510410025','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1456','1510410025','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1457','1510410084','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1458','1510410084','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1459','1510410160','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1460','1510410160','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1461','1510410172','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1462','1510410175','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1463','1510410180','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1464','1510410182','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1465','1510410188','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1466','1510410191','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1467','1510410300','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1468','1510410300','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1469','1510410376','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1470','1510410376','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1471','1510410492','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1472','1510410492','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1473','1510410534','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1474','1510410534','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1475','1510410617','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1476','1510410617','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1477','1510410680','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1478','1510410680','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1479','1510410705','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1480','1510410705','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1481','1510410724','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1482','1510410724','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1483','1510410749','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1484','1510410749','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1485','1510411436','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('1486','1510411581','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1487','1510411584','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1488','1510411586','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1489','1510411588','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1490','1510411599','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1491','1510411599','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1492','1510411677','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1493','1510411677','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1494','1510412193','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1495','1510412193','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1496','1510412205','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1497','1510412205','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1498','1510412520','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1499','1510412520','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1500','1510412548','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1501','1510412548','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1502','1510412756','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1503','1510412758','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1504','1510412815','1','admin','79','3','inc_meta','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1505','1510412815','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1506','1510413478','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1507','1510413482','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1508','1510413483','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1509','1510413488','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/img/menu_icon-512.png','Uploaded File');

INSERT INTO `evo_manager_log` VALUES ('1510','1510413491','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1511','1510413506','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1512','1510413516','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1513','1510413518','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1514','1510413525','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1515','1510413545','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1516','1510413625','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1517','1510413625','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1518','1510413644','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1519','1510413644','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1520','1510413673','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1521','1510413673','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1522','1510413793','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1523','1510413793','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1524','1510413830','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1525','1510413833','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1526','1510413835','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1527','1510413867','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1528','1510413868','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1529','1510413870','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1530','1510413881','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1531','1510413881','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1532','1510413969','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1533','1510413969','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1534','1510414045','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1535','1510414045','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1536','1510414147','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1537','1510414147','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1538','1510414181','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1539','1510414181','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1540','1510414300','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1541','1510414430','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1542','1510414430','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1543','1510414503','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1544','1510414503','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1545','1510414550','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1546','1510414550','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1547','1510414600','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1548','1510414600','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1549','1510414637','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1550','1510414637','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1551','1510487213','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('1552','1510487315','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1553','1510487318','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1554','1510487319','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1555','1510487322','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1556','1510582030','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('1557','1510582137','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1558','1510582299','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1559','1510582303','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1560','1510582314','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1561','1510582891','1','admin','20','5','Текстовая страница','Saving template');

INSERT INTO `evo_manager_log` VALUES ('1562','1510582892','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1563','1510582899','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1564','1510582927','1','admin','20','5','Текстовая страница','Saving template');

INSERT INTO `evo_manager_log` VALUES ('1565','1510582927','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1566','1510582932','1','admin','20','5','Текстовая страница','Saving template');

INSERT INTO `evo_manager_log` VALUES ('1567','1510582932','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1568','1510582948','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1569','1510582960','1','admin','27','23','Контакты','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1570','1510750671','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('1571','1510750689','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1572','1510750692','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1573','1510750694','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1574','1510750697','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1575','1510750819','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1576','1510751143','1','admin','27','14','Предпріемство','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1577','1510918050','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('1578','1510918103','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1579','1510918115','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1580','1510918135','1','admin','27','25','О предприятии','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1581','1510918194','1','admin','5','-','Про підприємство','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1582','1510918194','1','admin','27','53','Про підприємство','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1583','1510918201','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1584','1510918205','1','admin','27','26','Руководство','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1585','1510918215','1','admin','27','14','Предпріемство','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1586','1510918222','1','admin','5','-','Керівництво','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1587','1510918222','1','admin','27','54','Керівництво','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1588','1510918251','1','admin','27','27','Награды и грамоты','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1589','1510918263','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1590','1510918267','1','admin','5','-','Нагороди та грамоти','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1591','1510918267','1','admin','27','55','Нагороди та грамоти','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1592','1510918273','1','admin','27','28','Благодарности','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1593','1510918286','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1594','1510918288','1','admin','5','-','Подяки','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1595','1510918288','1','admin','27','56','Подяки','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1596','1510918300','1','admin','27','29','Инновации','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1597','1510918351','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1598','1510918358','1','admin','5','-','Іновації','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1599','1510918358','1','admin','27','57','Іновації','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1600','1510918361','1','admin','27','30','Вакансии','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1601','1510918388','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1602','1510918404','1','admin','5','-','Вакансії','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1603','1510918404','1','admin','27','58','Вакансії','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1604','1510918467','1','admin','27','31','Абонентные участки','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1605','1510918483','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1606','1510918497','1','admin','5','-','Абонентні ділянки','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1607','1510918497','1','admin','27','59','Абонентні ділянки','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1608','1510918506','1','admin','27','32','Юридические лица','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1609','1510918521','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1610','1510918523','1','admin','5','-','Юридичні особи','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1611','1510918523','1','admin','27','60','Юридичні особи','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1612','1510918527','1','admin','27','33','Дислокация','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1613','1510918544','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1614','1510918546','1','admin','5','-','Дислокації','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1615','1510918547','1','admin','27','61','Дислокації','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1616','1510918548','1','admin','27','34','Структура предприятия','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1617','1510918569','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1618','1510918575','1','admin','5','-','Структура підприємства','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1619','1510918575','1','admin','27','62','Структура підприємства','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1620','1510918590','1','admin','27','31','Абонентные участки','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1621','1510918593','1','admin','27','13','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1622','1510918601','1','admin','27','18','Потребители','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1623','1510918604','1','admin','27','18','Потребители','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1624','1510918605','1','admin','27','18','Потребители','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1625','1510918612','1','admin','27','63','Потребители (Укр)','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1626','1510918623','1','admin','6','63','Потребители (Укр)','Deleting resource');

INSERT INTO `evo_manager_log` VALUES ('1627','1510918623','1','admin','3','3','UA','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('1628','1510918628','1','admin','64','-','-','Removing deleted content');

INSERT INTO `evo_manager_log` VALUES ('1629','1510918642','1','admin','27','32','Юридические лица','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1630','1510918650','1','admin','27','15','Публичная информация','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1631','1510918690','1','admin','27','35','Фин. отчетность','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1632','1510918704','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1633','1510918706','1','admin','5','-','Фін. звітність','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1634','1510918706','1','admin','27','64','Фін. звітність','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1635','1510918731','1','admin','5','64','Фін. звітність','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1636','1510918731','1','admin','27','64','Фін. звітність','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1637','1510918738','1','admin','27','36','О доступе к публичной информации','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1638','1510918752','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1639','1510918754','1','admin','5','-','Про доступ до публічної інформації','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1640','1510918754','1','admin','27','65','Про доступ до публічної інформації','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1641','1510918764','1','admin','27','37','Организационная структура','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1642','1510918789','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1643','1510918791','1','admin','5','-','Організаційна структура','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1644','1510918791','1','admin','27','66','Організаційна структура','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1645','1510918794','1','admin','27','38','Тарифы','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1646','1510918804','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1647','1510918810','1','admin','5','-','Тарифи','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1648','1510918810','1','admin','27','67','Тарифи','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1649','1510918812','1','admin','27','39','Нормативно-правовые акты','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1650','1510918822','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1651','1510918824','1','admin','5','-','Нормативно-правові акти','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1652','1510918824','1','admin','27','68','Нормативно-правові акти','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1653','1510918825','1','admin','27','40','График личных приемов руководителей','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1654','1510918839','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1655','1510918842','1','admin','5','-','Графік особистих прийомів керівників','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1656','1510918842','1','admin','27','69','Графік особистих прийомів керівників','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1657','1510918845','1','admin','27','41','Структура предприятия, правила внутреннего распорядка','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1658','1510918856','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1659','1510918858','1','admin','5','-','Структура підприємства, правила внутрішнього розпорядку','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1660','1510918858','1','admin','27','70','Структура підприємства, правила внутрішнього розпорядку','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1661','1510918860','1','admin','27','42','Отчеты о запросах публичной информации','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1662','1510918873','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1663','1510918878','1','admin','5','-','Звіти про запити публічної інформації','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1664','1510918878','1','admin','27','71','Звіти про запити публічної інформації','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1665','1510918917','1','admin','27','18','Потребители','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1666','1510918922','1','admin','27','43','Тарифы для населения','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1667','1510918935','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1668','1510918937','1','admin','5','-','Тарифи для населення','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1669','1510918937','1','admin','27','72','Тарифи для населення','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1670','1510918938','1','admin','27','44','Тарифы для юр.лиц','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1671','1510918948','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1672','1510918950','1','admin','5','-','Тарифи для юр.осіб','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1673','1510918950','1','admin','27','73','Тарифи для юр.осіб','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1674','1510918951','1','admin','27','45','Субсидии','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1675','1510918960','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1676','1510918965','1','admin','5','-','Субсидії','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1677','1510918965','1','admin','27','74','Субсидії','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1678','1510918966','1','admin','27','46','Льготы','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1679','1510918974','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1680','1510918978','1','admin','5','-','Пільги','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1681','1510918978','1','admin','27','75','Пільги','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1682','1510918979','1','admin','27','47','Предоставление услуг','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1683','1510918988','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1684','1510918990','1','admin','5','-','Надання послуг','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1685','1510918990','1','admin','27','76','Надання послуг','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1686','1510918991','1','admin','27','48','Сообщить показания прибора учета ','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1687','1510919008','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1688','1510919010','1','admin','5','-','Повідомити показання приладу обліку','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1689','1510919010','1','admin','27','77','Повідомити показання приладу обліку','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1690','1510919011','1','admin','27','49','Нормативно-правовые акты ','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1691','1510919023','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1692','1510919025','1','admin','5','-','Нормативно-правові акти','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1693','1510919025','1','admin','27','78','Нормативно-правові акти','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1694','1510919026','1','admin','27','50','Разъяснения','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1695','1510919035','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1696','1510919039','1','admin','5','-','Роз\'яснення','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1697','1510919039','1','admin','27','79','Роз\'яснення','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1698','1510919040','1','admin','27','51','Прибоpы учета','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1699','1510919049','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1700','1510919052','1','admin','5','-','Прібоpи обліку','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1701','1510919052','1','admin','27','80','Прібоpи обліку','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1702','1510919053','1','admin','27','52','Подключение объектов','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1703','1510919064','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1704','1510919069','1','admin','5','-','Підключення об\'єктів','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1705','1510919069','1','admin','27','81','Підключення об\'єктів','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1706','1511160392','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('1707','1511160493','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1708','1511160498','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1709','1511160501','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1710','1511160504','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1711','1511160512','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1712','1511160626','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1713','1511160626','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1714','1511160855','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1715','1511160855','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1716','1511160976','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1717','1511160976','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1718','1511160979','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1719','1511160979','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1720','1511161056','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1721','1511161056','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1722','1511161163','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1723','1511161163','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1724','1511161327','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1725','1511161327','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1726','1511161413','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1727','1511161413','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1728','1511171761','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('1729','1511171970','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1730','1511171982','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1731','1511172042','1','admin','5','1','Главная страница','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1732','1511172042','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1733','1511172045','1','admin','27','4','Головна сторінка','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1734','1511172073','1','admin','5','4','Головна сторінка','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1735','1511172074','1','admin','27','4','Головна сторінка','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1736','1511172097','1','admin','5','4','Головна сторінка','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1737','1511172097','1','admin','27','4','Головна сторінка','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1738','1511172103','1','admin','5','1','Главная страница','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1739','1511172103','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1740','1511172222','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1741','1511172376','1','admin','20','5','Текстовая страница','Saving template');

INSERT INTO `evo_manager_log` VALUES ('1742','1511172376','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1743','1511172390','1','admin','19','-','Новый шаблон','Creating a new template');

INSERT INTO `evo_manager_log` VALUES ('1744','1511172408','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1745','1511172422','1','admin','19','-','Новый шаблон','Creating a new template');

INSERT INTO `evo_manager_log` VALUES ('1746','1511172461','1','admin','20','-','Новости','Saving template');

INSERT INTO `evo_manager_log` VALUES ('1747','1511172461','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1748','1511172464','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1749','1511172573','1','admin','20','6','Новости','Saving template');

INSERT INTO `evo_manager_log` VALUES ('1750','1511172573','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1751','1511172585','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1752','1511172636','1','admin','79','-','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1753','1511172636','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1754','1511172756','1','admin','19','-','Новый шаблон','Creating a new template');

INSERT INTO `evo_manager_log` VALUES ('1755','1511172805','1','admin','20','-','Результаты поиска','Saving template');

INSERT INTO `evo_manager_log` VALUES ('1756','1511172805','1','admin','16','7','Результаты поиска','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1757','1511172807','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1758','1511172991','1','admin','20','6','Новости','Saving template');

INSERT INTO `evo_manager_log` VALUES ('1759','1511172991','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1760','1511172994','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1761','1511178223','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('1762','1511178244','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1763','1511178261','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1764','1511178270','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1765','1511178277','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1766','1511178290','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1767','1511178295','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1768','1511178311','1','admin','5','-','Новости','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1769','1511178311','1','admin','27','82','Новости','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1770','1511178335','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1771','1511178337','1','admin','27','3','UA','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1772','1511178343','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1773','1511178355','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1774','1511178366','1','admin','5','-','Новини','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1775','1511178366','1','admin','27','83','Новини','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1776','1511178379','1','admin','27','82','Новости','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1777','1511178396','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1778','1511178426','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1779','1511178430','1','admin','5','-','Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1780','1511178430','1','admin','27','84','Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1781','1511178432','1','admin','27','83','Новини','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1782','1511178434','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('1783','1511178447','1','admin','27','82','Новости','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1784','1511178456','1','admin','5','82','Новости','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1785','1511178456','1','admin','27','82','Новости','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1786','1511178463','1','admin','27','84','Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1787','1511178498','1','admin','5','-','Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1788','1511178498','1','admin','27','85','Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1789','1511178520','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1790','1511178525','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1791','1511178535','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1792','1511178544','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1793','1511178605','1','admin','20','6','Новости','Saving template');

INSERT INTO `evo_manager_log` VALUES ('1794','1511178605','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1795','1511178626','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('1796','1511178626','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1797','1511178637','1','admin','20','6','Новости','Saving template');

INSERT INTO `evo_manager_log` VALUES ('1798','1511178637','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1799','1511178644','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('1800','1511178644','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1801','1511178665','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('1802','1511178665','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1803','1511178744','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1804','1511178747','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1805','1511178749','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1806','1511178751','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1807','1511178807','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1808','1511178807','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1809','1511178860','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('1810','1511178860','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1811','1511179042','1','admin','5','85','Т\'eст','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1812','1511179042','1','admin','27','85','Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1813','1511179063','1','admin','27','85','Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1814','1511179067','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('1815','1511179176','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1816','1511179193','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('1817','1511179193','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1818','1511179425','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('1819','1511179425','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1820','1511179729','1','admin','27','83','Новини','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1821','1511179732','1','admin','5','83','Новини','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1822','1511179732','1','admin','27','83','Новини','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1823','1511179746','1','admin','94','84','Копия Тест','Duplicate resource');

INSERT INTO `evo_manager_log` VALUES ('1824','1511179746','1','admin','3','86','Копия Тест','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('1825','1511179755','1','admin','94','86','Копия Копия Тест','Duplicate resource');

INSERT INTO `evo_manager_log` VALUES ('1826','1511179755','1','admin','3','87','Копия Копия Тест','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('1827','1511179765','1','admin','94','84','Копия Тест','Duplicate resource');

INSERT INTO `evo_manager_log` VALUES ('1828','1511179765','1','admin','3','88','Копия Тест','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('1829','1511179775','1','admin','94','85','Копия Т\'eст','Duplicate resource');

INSERT INTO `evo_manager_log` VALUES ('1830','1511179776','1','admin','3','89','Копия Т\'eст','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('1831','1511179789','1','admin','94','89','Копия Копия Т\'eст','Duplicate resource');

INSERT INTO `evo_manager_log` VALUES ('1832','1511179789','1','admin','3','90','Копия Копия Т\'eст','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('1833','1511179797','1','admin','94','85','Копия Т\'eст','Duplicate resource');

INSERT INTO `evo_manager_log` VALUES ('1834','1511179797','1','admin','3','91','Копия Т\'eст','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('1835','1511179816','1','admin','27','87','Копия Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1836','1511179841','1','admin','94','89','Копия Копия Т\'eст','Duplicate resource');

INSERT INTO `evo_manager_log` VALUES ('1837','1511179841','1','admin','3','92','Копия Копия Т\'eст','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('1838','1511179849','1','admin','6','92','Копия Копия Т\'eст','Deleting resource');

INSERT INTO `evo_manager_log` VALUES ('1839','1511179849','1','admin','3','83','Новини','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('1840','1511179853','1','admin','3','83','Новини','Viewing data for resource');

INSERT INTO `evo_manager_log` VALUES ('1841','1511179861','1','admin','64','-','-','Removing deleted content');

INSERT INTO `evo_manager_log` VALUES ('1842','1511179870','1','admin','27','86','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1843','1511179908','1','admin','5','86','Копия Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1844','1511179908','1','admin','27','86','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1845','1511179923','1','admin','5','86','Копия Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1846','1511179923','1','admin','27','86','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1847','1511179927','1','admin','27','87','Копия Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1848','1511179932','1','admin','5','87','Копия Копия Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1849','1511179932','1','admin','27','87','Копия Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1850','1511179934','1','admin','27','88','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1851','1511179939','1','admin','5','88','Копия Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1852','1511179939','1','admin','27','88','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1853','1511179942','1','admin','27','89','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1854','1511179945','1','admin','5','89','Копия Т\'eст','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1855','1511179945','1','admin','27','89','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1856','1511179947','1','admin','27','90','Копия Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1857','1511179950','1','admin','5','90','Копия Копия Т\'eст','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1858','1511179950','1','admin','27','90','Копия Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1859','1511179951','1','admin','27','91','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1860','1511179956','1','admin','5','91','Копия Т\'eст','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1861','1511179956','1','admin','27','91','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1862','1511180136','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('1863','1511180192','1','admin','300','-','Новый параметр (TV)','Create Template Variable');

INSERT INTO `evo_manager_log` VALUES ('1864','1511180225','1','admin','302','-','Таблица','Save Template Variable');

INSERT INTO `evo_manager_log` VALUES ('1865','1511180225','1','admin','301','5','Таблица','Edit Template Variable');

INSERT INTO `evo_manager_log` VALUES ('1866','1511180238','1','admin','22','32','TvTable','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('1867','1511180267','1','admin','102','22','TvTable','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('1868','1511180293','1','admin','103','22','TvTable','Saving plugin');

INSERT INTO `evo_manager_log` VALUES ('1869','1511180293','1','admin','102','22','TvTable','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('1870','1511180299','1','admin','27','86','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1871','1511180455','1','admin','5','86','Копия Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1872','1511180455','1','admin','27','86','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1873','1511180661','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1874','1511180677','1','admin','20','5','Текстовая страница','Saving template');

INSERT INTO `evo_manager_log` VALUES ('1875','1511180677','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1876','1511180897','1','admin','120','-','-','Idle (unknown)');

INSERT INTO `evo_manager_log` VALUES ('1877','1511180901','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1878','1511180905','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1879','1511180907','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1880','1511180910','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1881','1511180981','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1882','1511181007','1','admin','20','5','Текстовая страница','Saving template');

INSERT INTO `evo_manager_log` VALUES ('1883','1511181007','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1884','1511181176','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1885','1511181176','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1886','1511181187','1','admin','20','5','Текстовая страница','Saving template');

INSERT INTO `evo_manager_log` VALUES ('1887','1511181187','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1888','1511181452','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1889','1511181452','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1890','1511181526','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1891','1511181526','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1892','1511181955','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1893','1511181955','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1894','1511181994','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1895','1511181994','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1896','1511182041','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1897','1511182041','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1898','1511182252','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1899','1511182252','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1900','1511182334','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1901','1511182334','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1902','1511182374','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1903','1511182374','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1904','1511182445','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1905','1511182445','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1906','1511182670','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1907','1511182670','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1908','1511182723','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1909','1511182723','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1910','1511182748','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1911','1511182753','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1912','1511182793','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1913','1511182793','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1914','1511182834','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1915','1511182834','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1916','1511182997','1','admin','27','84','Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1917','1511183018','1','admin','300','-','Новый параметр (TV)','Create Template Variable');

INSERT INTO `evo_manager_log` VALUES ('1918','1511183048','1','admin','302','-','Картинка','Save Template Variable');

INSERT INTO `evo_manager_log` VALUES ('1919','1511183048','1','admin','301','6','Картинка','Edit Template Variable');

INSERT INTO `evo_manager_log` VALUES ('1920','1511183055','1','admin','27','86','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1921','1511183118','1','admin','5','86','Копия Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1922','1511183118','1','admin','27','86','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1923','1511183142','1','admin','27','89','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1924','1511183155','1','admin','27','89','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1925','1511183182','1','admin','27','84','Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1926','1511183190','1','admin','5','84','Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1927','1511183190','1','admin','27','84','Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1928','1511183191','1','admin','27','87','Копия Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1929','1511183200','1','admin','5','87','Копия Копия Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1930','1511183200','1','admin','27','87','Копия Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1931','1511183201','1','admin','27','88','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1932','1511183209','1','admin','5','88','Копия Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1933','1511183209','1','admin','27','88','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1934','1511183216','1','admin','27','85','Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1935','1511183222','1','admin','27','85','Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1936','1511183230','1','admin','5','85','Т\'eст','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1937','1511183230','1','admin','27','85','Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1938','1511183232','1','admin','27','89','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1939','1511183239','1','admin','27','89','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1940','1511183247','1','admin','5','89','Копия Т\'eст','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1941','1511183247','1','admin','27','89','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1942','1511183250','1','admin','27','90','Копия Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1943','1511183253','1','admin','27','90','Копия Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1944','1511183261','1','admin','5','90','Копия Копия Т\'eст','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1945','1511183261','1','admin','27','90','Копия Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1946','1511183267','1','admin','27','91','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1947','1511183272','1','admin','27','91','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1948','1511183281','1','admin','5','91','Копия Т\'eст','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('1949','1511183281','1','admin','27','91','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1950','1511183310','1','admin','27','84','Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1951','1511183314','1','admin','27','86','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1952','1511183318','1','admin','27','87','Копия Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1953','1511183322','1','admin','27','88','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1954','1511216030','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('1955','1511216043','1','admin','120','-','-','Idle (unknown)');

INSERT INTO `evo_manager_log` VALUES ('1956','1511216049','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1957','1511216051','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1958','1511216053','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1959','1511216056','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1960','1511217144','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1961','1511217144','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1962','1511217299','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('1963','1511217299','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1964','1511217466','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1965','1511217492','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1966','1511217492','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1967','1511622792','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('1968','1511622807','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1969','1511622815','1','admin','27','13','Предприятие','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1970','1511622818','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1971','1511622828','1','admin','27','20','Коммерческое предложение','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1972','1511622833','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('1973','1511622840','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1974','1511622842','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1975','1511622844','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1976','1511622847','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1977','1511622865','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('1978','1511622893','1','admin','27','33','Дислокация','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1979','1511622911','1','admin','27','87','Копия Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1980','1511622915','1','admin','27','86','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1981','1511622939','1','admin','8','-','-','Logged out');

INSERT INTO `evo_manager_log` VALUES ('1982','1511768991','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('1983','1511769005','1','admin','27','25','О предприятии','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1984','1511769010','1','admin','27','53','Про підприємство','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('1985','1512550576','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('1986','1512550972','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1987','1512550975','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1988','1512550977','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1989','1512550982','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('1990','1512614148','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('1991','1512614163','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1992','1512614445','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1993','1512614747','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1994','1512614747','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1995','1512614791','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1996','1512614791','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('1997','1512615019','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1998','1512615021','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('1999','1512615022','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2000','1512615025','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2001','1512615048','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2002','1512615048','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2003','1512615051','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2004','1512615051','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2005','1512615117','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2006','1512615117','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2007','1512615811','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2008','1512615811','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2009','1512615831','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2010','1512616154','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2011','1512616165','1','admin','16','7','Результаты поиска','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2012','1512616167','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2013','1512616216','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2014','1512616239','1','admin','79','3','inc_meta','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2015','1512616239','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2016','1512616269','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2017','1512616269','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2018','1512616317','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2019','1512616385','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2020','1512616385','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2021','1512616429','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2022','1512616429','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2023','1512616431','1','admin','79','3','inc_meta','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2024','1512616431','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2025','1512616688','1','admin','79','3','inc_meta','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2026','1512616688','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2027','1512616698','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2028','1512616698','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2029','1512616716','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2030','1512887212','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2031','1512887253','1','admin','120','-','-','Idle (unknown)');

INSERT INTO `evo_manager_log` VALUES ('2032','1512887256','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2033','1512887261','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2034','1512887264','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2035','1512887288','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2036','1512887291','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2037','1512887467','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/flexslider.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2038','1512887533','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2039','1512887535','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2040','1512887537','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2041','1512887555','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2042','1512887659','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2043','1512887826','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2044','1512888368','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2045','1512888620','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2046','1512888621','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2047','1512888625','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2048','1512901715','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2049','1512901725','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2050','1512953914','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2051','1513081980','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2052','1513081991','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2053','1513081993','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2054','1513081995','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2055','1513082015','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2056','1513082087','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2057','1513082087','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2058','1513082179','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2059','1513082208','1','admin','16','7','Результаты поиска','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2060','1513082209','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2061','1513082241','1','admin','16','4','Язык','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2062','1513082249','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2063','1513082404','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2064','1513082404','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2065','1513082415','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2066','1513082415','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2067','1513082504','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2068','1513082504','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2069','1513082550','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2070','1513082550','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2071','1513082593','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2072','1513082593','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2073','1513168680','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2074','1513853756','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2075','1513853793','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2076','1513853797','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2077','1513853800','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2078','1513853807','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2079','1513853865','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2080','1513854218','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2081','1513854218','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2082','1513854375','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2083','1513854375','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2084','1513854427','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2085','1513854427','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2086','1513855008','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2087','1513855008','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2088','1513855194','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2089','1513855194','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2090','1513855411','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2091','1513855411','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2092','1513962410','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2093','1513962416','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2094','1513962419','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2095','1513962427','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2096','1513962431','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/index.php','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2097','1513962639','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/index.php','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2098','1513962740','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/index-ajax.php','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2099','1513962751','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2100','1513962758','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2101','1513962761','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2102','1513962762','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2103','1513962766','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/assets/cache/docid_23_bb8d110214c9c42a27f4c6f241408ec0.pageCache.php','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2104','1514279869','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2105','1514282762','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2106','1514282771','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2107','1514282773','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2108','1514282778','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2109','1514282941','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2110','1514282941','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2111','1514283311','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2112','1514283311','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2113','1514283389','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2114','1514283389','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2115','1514283431','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2116','1514283431','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2117','1514283559','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2118','1514283559','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2119','1514284120','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2120','1514284120','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2121','1514284198','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2122','1514284198','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2123','1514284218','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2124','1514284218','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2125','1514284253','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2126','1514284253','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2127','1514284315','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2128','1514284315','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2129','1514284360','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2130','1514284360','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2131','1514284628','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2132','1514284673','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2133','1514284675','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2134','1514284678','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2135','1514284681','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2136','1514284825','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2137','1514284825','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2138','1514286606','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2139','1514286618','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2140','1514286663','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2141','1514286668','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2142','1514286940','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2143','1514286941','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2144','1514287008','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2145','1514287008','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2146','1514287020','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2147','1514287020','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2148','1514287039','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2149','1514287039','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2150','1514287196','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2151','1514287196','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2152','1514287297','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2153','1514287297','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2154','1514287866','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2155','1514287903','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2156','1514287903','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2157','1514288460','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2158','1514288502','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2159','1514288860','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2160','1514289030','1','admin','16','7','Результаты поиска','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2161','1514289036','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2162','1514289044','1','admin','16','4','Язык','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2163','1514289055','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2164','1514289081','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2165','1514289082','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2166','1514289096','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2167','1514289097','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2168','1514289150','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2169','1514289150','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2170','1514289633','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2171','1514289633','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2172','1514291058','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2173','1514291058','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2174','1514291068','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2175','1514291068','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2176','1514291122','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2177','1514291122','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2178','1514291176','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2179','1514291202','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2180','1514291202','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2181','1514291228','1','admin','27','84','Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2182','1514291330','1','admin','5','84','Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2183','1514291330','1','admin','27','84','Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2184','1514291331','1','admin','27','86','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2185','1514291337','1','admin','5','86','Копия Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2186','1514291337','1','admin','27','86','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2187','1514291339','1','admin','27','87','Копия Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2188','1514291345','1','admin','5','87','Копия Копия Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2189','1514291345','1','admin','27','87','Копия Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2190','1514291347','1','admin','27','88','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2191','1514291352','1','admin','5','88','Копия Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2192','1514291352','1','admin','27','88','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2193','1514291357','1','admin','27','83','Новини','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2194','1514291361','1','admin','27','85','Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2195','1514291378','1','admin','5','85','Т\'eст','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2196','1514291378','1','admin','27','85','Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2197','1514291381','1','admin','27','89','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2198','1514291388','1','admin','5','89','Копия Т\'eст','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2199','1514291389','1','admin','27','89','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2200','1514291391','1','admin','27','90','Копия Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2201','1514291418','1','admin','5','90','Копия Копия Т\'eст','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2202','1514291418','1','admin','27','90','Копия Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2203','1514291421','1','admin','27','91','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2204','1514291426','1','admin','5','91','Копия Т\'eст','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2205','1514291426','1','admin','27','91','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2206','1514291450','1','admin','5','91','Копия Т\'eст','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2207','1514291450','1','admin','27','91','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2208','1514293379','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2209','1514293379','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2210','1514297753','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2211','1514297802','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2212','1514297802','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2213','1514297853','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2214','1514297853','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2215','1514297964','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2216','1514297964','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2217','1514298111','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2218','1514298111','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2219','1514298146','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2220','1514298146','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2221','1514298286','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2222','1514298286','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2223','1514298323','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2224','1514298323','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2225','1514298411','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2226','1514298411','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2227','1514298441','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2228','1514298441','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2229','1514298533','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2230','1514298533','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2231','1514299677','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2232','1514299677','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2233','1514299741','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2234','1514299741','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2235','1514300199','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2236','1514300265','1','admin','20','6','Новости','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2237','1514300265','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2238','1514300299','1','admin','20','6','Новости','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2239','1514300299','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2240','1514300316','1','admin','20','6','Новости','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2241','1514300316','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2242','1514300333','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2243','1514300367','1','admin','20','5','Текстовая страница','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2244','1514300368','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2245','1514300433','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2246','1514300433','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2247','1514300515','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2248','1514300515','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2249','1514300529','1','admin','27','84','Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2250','1514300641','1','admin','5','84','Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2251','1514300642','1','admin','27','84','Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2252','1514300684','1','admin','5','84','Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2253','1514300684','1','admin','27','84','Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2254','1514300767','1','admin','5','84','Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2255','1514300767','1','admin','27','84','Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2256','1514300813','1','admin','5','84','Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2257','1514300813','1','admin','27','84','Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2258','1514300888','1','admin','5','84','Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2259','1514300888','1','admin','27','84','Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2260','1514362863','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2261','1514362902','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2262','1514363251','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2263','1514363562','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2264','1514363580','1','admin','8','-','-','Logged out');

INSERT INTO `evo_manager_log` VALUES ('2265','1514363585','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2266','1514363594','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2267','1514363664','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2268','1514363680','1','admin','86','-','-','Role management');

INSERT INTO `evo_manager_log` VALUES ('2269','1514363711','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2270','1514363774','1','admin','16','7','Результаты поиска','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2271','1514363780','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2272','1514363860','1','admin','86','-','-','Role management');

INSERT INTO `evo_manager_log` VALUES ('2273','1514364162','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2274','1514364164','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2275','1514364166','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2276','1514364169','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2277','1514364655','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2278','1514364655','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2279','1514365217','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2280','1514365224','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2281','1514365236','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2282','1514365238','1','admin','16','7','Результаты поиска','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2283','1514365240','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2284','1514365249','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2285','1514365296','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2286','1514365296','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2287','1514365394','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2288','1514365395','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2289','1514365403','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2290','1514365422','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2291','1514365422','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2292','1514365430','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2293','1514365430','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2294','1514365640','1','admin','23','-','Новый сниппет','Creating a new Snippet');

INSERT INTO `evo_manager_log` VALUES ('2295','1514365784','1','admin','76','-','-','Element management');

INSERT INTO `evo_manager_log` VALUES ('2296','1514365787','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('2297','1514365844','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2298','1514365844','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2299','1514365882','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2300','1514365882','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2301','1514366428','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2302','1514366428','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2303','1514367391','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2304','1514367391','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2305','1514368464','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2306','1514368678','1','admin','76','-','-','Element management');

INSERT INTO `evo_manager_log` VALUES ('2307','1514368683','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2308','1514368689','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2309','1514368755','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2310','1514368755','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2311','1514368820','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2312','1514368820','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2313','1514368883','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2314','1514368883','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2315','1514368933','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2316','1514368933','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2317','1514368956','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2318','1514368956','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2319','1514368998','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2320','1514368998','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2321','1514369001','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2322','1514369001','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2323','1514369097','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2324','1514369097','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2325','1514369667','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2326','1514369667','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2327','1514369971','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2328','1514369971','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2329','1514370163','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2330','1514370163','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2331','1514370397','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2332','1514370397','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2333','1514370483','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2334','1514370483','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2335','1514370504','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2336','1514370504','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2337','1514370632','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2338','1514370632','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2339','1514370822','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2340','1514370822','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2341','1514370826','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('2342','1514371167','1','admin','23','-','Новый сниппет','Creating a new Snippet');

INSERT INTO `evo_manager_log` VALUES ('2343','1514371298','1','admin','24','-','countViews','Saving Snippet');

INSERT INTO `evo_manager_log` VALUES ('2344','1514371298','1','admin','22','33','countViews','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('2345','1514371451','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2346','1514371490','1','admin','79','-','inc','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2347','1514371490','1','admin','78','7','inc','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2348','1514371515','1','admin','23','-','Новый сниппет','Creating a new Snippet');

INSERT INTO `evo_manager_log` VALUES ('2349','1514371536','1','admin','80','7','inc','Deleting Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2350','1514371536','1','admin','76','-','-','Element management');

INSERT INTO `evo_manager_log` VALUES ('2351','1514371545','1','admin','300','-','Новый параметр (TV)','Create Template Variable');

INSERT INTO `evo_manager_log` VALUES ('2352','1514371782','1','admin','24','-','hits','Saving Snippet');

INSERT INTO `evo_manager_log` VALUES ('2353','1514371782','1','admin','22','34','hits','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('2354','1514371795','1','admin','23','-','Новый сниппет','Creating a new Snippet');

INSERT INTO `evo_manager_log` VALUES ('2355','1514371852','1','admin','24','-','inc','Saving Snippet');

INSERT INTO `evo_manager_log` VALUES ('2356','1514371852','1','admin','22','35','inc','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('2357','1514371915','1','admin','24','35','inc','Saving Snippet');

INSERT INTO `evo_manager_log` VALUES ('2358','1514371915','1','admin','22','35','inc','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('2359','1514371947','1','admin','300','-','Новый параметр (TV)','Create Template Variable');

INSERT INTO `evo_manager_log` VALUES ('2360','1514371959','1','admin','302','-','countViews','Save Template Variable');

INSERT INTO `evo_manager_log` VALUES ('2361','1514371959','1','admin','301','7','countViews','Edit Template Variable');

INSERT INTO `evo_manager_log` VALUES ('2362','1514374412','1','admin','22','34','hits','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('2363','1514374425','1','admin','22','35','inc','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('2364','1514374437','1','admin','22','33','countViews','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('2365','1514374487','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2366','1514374532','1','admin','20','5','Текстовая страница','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2367','1514374532','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2368','1514374639','1','admin','20','5','Текстовая страница','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2369','1514374639','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2370','1514374708','1','admin','27','25','О предприятии','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2371','1514374719','1','admin','5','25','О предприятии','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2372','1514374719','1','admin','27','25','О предприятии','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2373','1514375328','1','admin','26','-','-','Refreshing site');

INSERT INTO `evo_manager_log` VALUES ('2374','1514375362','1','admin','5','25','О предприятии','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2375','1514375362','1','admin','27','25','О предприятии','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2376','1514375500','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2377','1514375691','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2378','1514375691','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2379','1514375694','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2380','1514375694','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2381','1514375821','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2382','1514375821','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2383','1514375868','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2384','1514375868','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2385','1514375927','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2386','1514375927','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2387','1514376239','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2388','1514376239','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2389','1514376385','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2390','1514376412','1','admin','79','-','article-min.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2391','1514376412','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2392','1514376497','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2393','1514376497','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2394','1514376541','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2395','1514376541','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2396','1514376548','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2397','1514376551','1','admin','16','7','Результаты поиска','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2398','1514376553','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2399','1514376571','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2400','1514376571','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2401','1514376704','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2402','1514376704','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2403','1514376739','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2404','1514376739','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2405','1514376751','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2406','1514376751','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2407','1514376848','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2408','1514376848','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2409','1514376917','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2410','1514376917','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2411','1514376936','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2412','1514376936','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2413','1514376954','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2414','1514376954','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2415','1514376967','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2416','1514376967','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2417','1514377100','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2418','1514377100','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2419','1514377154','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2420','1514377154','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2421','1514377191','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2422','1514377191','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2423','1514377279','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2424','1514377279','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2425','1514377309','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2426','1514377309','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2427','1514377332','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2428','1514377333','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2429','1514377349','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2430','1514377349','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2431','1514377368','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2432','1514377369','1','admin','19','-','Новый шаблон','Creating a new template');

INSERT INTO `evo_manager_log` VALUES ('2433','1514377375','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2434','1514377381','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2435','1514377381','1','admin','19','-','Новый шаблон','Creating a new template');

INSERT INTO `evo_manager_log` VALUES ('2436','1514377395','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2437','1514377421','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2438','1514377421','1','admin','19','-','Новый шаблон','Creating a new template');

INSERT INTO `evo_manager_log` VALUES ('2439','1514377438','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2440','1514377463','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2441','1514377463','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2442','1514377482','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2443','1514377482','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2444','1514377500','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2445','1514377500','1','admin','19','-','Новый шаблон','Creating a new template');

INSERT INTO `evo_manager_log` VALUES ('2446','1514377510','1','admin','76','-','-','Element management');

INSERT INTO `evo_manager_log` VALUES ('2447','1514377512','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2448','1514377521','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2449','1514377521','1','admin','19','-','Новый шаблон','Creating a new template');

INSERT INTO `evo_manager_log` VALUES ('2450','1514377529','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2451','1514377734','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2452','1514377734','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2453','1514377752','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2454','1514377753','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2455','1514377785','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2456','1514377785','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2457','1514377869','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2458','1514377869','1','admin','19','-','Новый шаблон','Creating a new template');

INSERT INTO `evo_manager_log` VALUES ('2459','1514377889','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2460','1514377940','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2461','1514377940','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2462','1514377943','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2463','1514377943','1','admin','19','-','Новый шаблон','Creating a new template');

INSERT INTO `evo_manager_log` VALUES ('2464','1514377949','1','admin','20','-','Untitled template','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2465','1514377949','1','admin','16','8','Untitled template','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2466','1514377957','1','admin','21','8','Untitled template','Deleting template');

INSERT INTO `evo_manager_log` VALUES ('2467','1514377957','1','admin','76','-','-','Element management');

INSERT INTO `evo_manager_log` VALUES ('2468','1514377962','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2469','1514377969','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2470','1514377969','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2471','1514378021','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2472','1514378021','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2473','1514378051','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2474','1514378052','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2475','1514378123','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2476','1514378123','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2477','1514378153','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2478','1514378154','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2479','1514378172','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2480','1514378172','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2481','1514378196','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2482','1514378196','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2483','1514378252','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2484','1514378252','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2485','1514378264','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2486','1514378264','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2487','1514378426','1','admin','27','25','О предприятии','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2488','1514378448','1','admin','27','84','Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2489','1514378463','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('2490','1514378562','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2491','1514378562','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2492','1514378824','1','admin','5','84','Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2493','1514378824','1','admin','27','84','Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2494','1514378828','1','admin','27','86','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2495','1514378831','1','admin','5','86','Копия Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2496','1514378831','1','admin','27','86','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2497','1514378834','1','admin','27','87','Копия Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2498','1514378838','1','admin','5','87','Копия Копия Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2499','1514378838','1','admin','27','87','Копия Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2500','1514378841','1','admin','27','88','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2501','1514378844','1','admin','5','88','Копия Тест','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2502','1514378844','1','admin','27','88','Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2503','1514378847','1','admin','27','85','Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2504','1514378850','1','admin','5','85','Т\'eст','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2505','1514378850','1','admin','27','85','Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2506','1514378853','1','admin','27','89','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2507','1514378856','1','admin','5','89','Копия Т\'eст','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2508','1514378856','1','admin','27','89','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2509','1514378860','1','admin','27','90','Копия Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2510','1514378863','1','admin','5','90','Копия Копия Т\'eст','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2511','1514378863','1','admin','27','90','Копия Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2512','1514378866','1','admin','27','91','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2513','1514378869','1','admin','5','91','Копия Т\'eст','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2514','1514378869','1','admin','27','91','Копия Т\'eст','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2515','1514378910','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2516','1514378910','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2517','1514378921','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2518','1514378921','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2519','1514378949','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2520','1514378949','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2521','1514378986','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2522','1514378986','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2523','1514379017','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2524','1514379017','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2525','1514379135','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2526','1514379135','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2527','1514380219','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2528','1514380219','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2529','1514380335','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2530','1514380504','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2531','1514380504','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2532','1514380632','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2533','1514380632','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2534','1514380658','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2535','1514380658','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2536','1514380769','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2537','1514380769','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2538','1514383009','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2539','1514383009','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2540','1514383207','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2541','1514383207','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2542','1514383563','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2543','1514383563','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2544','1514383775','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2545','1514383775','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2546','1514383984','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2547','1514383984','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2548','1514384050','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2549','1514384050','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2550','1514384309','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2551','1514384309','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2552','1514384498','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2553','1514384498','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2554','1514384569','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2555','1514384624','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2556','1514384624','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2557','1514384694','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2558','1514384694','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2559','1514384731','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2560','1514384731','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2561','1514384740','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2562','1514384741','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2563','1514384754','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2564','1514384754','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2565','1514384839','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2566','1514384839','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2567','1514385030','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2568','1514385031','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2569','1514385054','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2570','1514385054','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2571','1514385102','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2572','1514385102','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2573','1514385136','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2574','1514385136','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2575','1514385271','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2576','1514385271','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2577','1514385468','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2578','1514385468','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2579','1514385767','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2580','1514385767','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2581','1514385940','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2582','1514385940','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2583','1514385954','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2584','1514385954','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2585','1514387005','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2586','1514387005','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2587','1514387102','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2588','1514387146','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2589','1514387146','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2590','1514387212','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2591','1514387212','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2592','1514387279','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2593','1514387279','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2594','1514387517','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2595','1514387517','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2596','1514387599','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2597','1514387599','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2598','1514387625','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2599','1514387625','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2600','1514387667','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2601','1514387667','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2602','1514387939','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2603','1514387939','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2604','1514388026','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2605','1514388026','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2606','1514388404','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2607','1514388404','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2608','1514389216','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2609','1514389216','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2610','1514389219','1','admin','112','3','evoBabelLexicon','Execute module');

INSERT INTO `evo_manager_log` VALUES ('2611','1514389496','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2612','1514389496','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2613','1514389617','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2614','1514389621','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2615','1514389623','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2616','1514389624','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2617','1514389626','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2618','1514406868','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2619','1514406907','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2620','1514406916','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2621','1514406921','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2622','1514407138','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2623','1514407140','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2624','1514407141','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2625','1514407143','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2626','1514407156','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2627','1514407156','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2628','1514408336','1','admin','27','20','Коммерческое предложение','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2629','1515578630','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2630','1515578730','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2631','1515578742','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2632','1515579317','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2633','1515579317','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2634','1515579463','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2635','1515579463','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2636','1515579472','1','admin','27','1','Главная страница','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2637','1515579481','1','admin','301','3','Meta description','Edit Template Variable');

INSERT INTO `evo_manager_log` VALUES ('2638','1515579503','1','admin','301','2','Meta keywords','Edit Template Variable');

INSERT INTO `evo_manager_log` VALUES ('2639','1515579510','1','admin','302','2','Meta keywords','Save Template Variable');

INSERT INTO `evo_manager_log` VALUES ('2640','1515579510','1','admin','301','2','Meta keywords','Edit Template Variable');

INSERT INTO `evo_manager_log` VALUES ('2641','1515579513','1','admin','301','1','Meta title','Edit Template Variable');

INSERT INTO `evo_manager_log` VALUES ('2642','1515579519','1','admin','302','1','Meta title','Save Template Variable');

INSERT INTO `evo_manager_log` VALUES ('2643','1515579519','1','admin','301','1','Meta title','Edit Template Variable');

INSERT INTO `evo_manager_log` VALUES ('2644','1515579522','1','admin','301','3','Meta description','Edit Template Variable');

INSERT INTO `evo_manager_log` VALUES ('2645','1515579528','1','admin','302','3','Meta description','Save Template Variable');

INSERT INTO `evo_manager_log` VALUES ('2646','1515579529','1','admin','301','3','Meta description','Edit Template Variable');

INSERT INTO `evo_manager_log` VALUES ('2647','1515579565','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2648','1515579567','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2649','1515579569','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2650','1515579572','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2651','1515579588','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2652','1515579588','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2653','1515579621','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2654','1515579663','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2655','1515579675','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2656','1515579711','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2657','1515579749','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2658','1515579749','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2659','1515579755','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('2660','1515579781','1','admin','5','-','Результаты поиска','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2661','1515579781','1','admin','27','93','Результаты поиска','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2662','1515579796','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2663','1515579802','1','admin','96','5','Текстовая страница Копия','Duplicate Template');

INSERT INTO `evo_manager_log` VALUES ('2664','1515579802','1','admin','16','9','Текстовая страница Копия','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2665','1515579811','1','admin','16','9','Текстовая страница Копия','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2666','1515579863','1','admin','16','9','Текстовая страница Копия','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2667','1515579864','1','admin','16','9','Текстовая страница Копия','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2668','1515579876','1','admin','16','9','Текстовая страница Копия','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2669','1515579899','1','admin','20','9','Текстовая страница Копия','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2670','1515579899','1','admin','16','9','Текстовая страница Копия','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2671','1515579915','1','admin','16','9','Текстовая страница Копия','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2672','1515579916','1','admin','16','9','Текстовая страница Копия','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2673','1515579943','1','admin','17','-','-','Editing settings');

INSERT INTO `evo_manager_log` VALUES ('2674','1515579944','1','admin','16','7','Результаты поиска','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2675','1515579956','1','admin','21','9','Текстовая страница Копия','Deleting template');

INSERT INTO `evo_manager_log` VALUES ('2676','1515579956','1','admin','76','-','-','Element management');

INSERT INTO `evo_manager_log` VALUES ('2677','1515579960','1','admin','27','93','Результаты поиска','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2678','1515579966','1','admin','27','93','Результаты поиска','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2679','1515579969','1','admin','5','93','Результаты поиска','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2680','1515579969','1','admin','27','93','Результаты поиска','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2681','1515580005','1','admin','20','7','Результаты поиска','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2682','1515580005','1','admin','16','7','Результаты поиска','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2683','1515580024','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2684','1515580035','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2685','1515580035','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2686','1515580076','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2687','1515580133','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2688','1515580242','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2689','1515580242','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2690','1515580264','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2691','1515580264','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2692','1515580322','1','admin','78','2','evoSearch','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2693','1515580407','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2694','1515580449','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2695','1515580449','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2696','1515580614','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2697','1515580614','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2698','1515580617','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2699','1515580760','1','admin','79','-','feedbackForm','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2700','1515580760','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2701','1515580797','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2702','1515580797','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2703','1515580805','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2704','1515580805','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2705','1515580816','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2706','1515580816','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2707','1515580837','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2708','1515580837','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2709','1515581281','1','admin','17','-','-','Editing settings');

INSERT INTO `evo_manager_log` VALUES ('2710','1515581311','1','admin','30','-','-','Saving settings');

INSERT INTO `evo_manager_log` VALUES ('2711','1515581321','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2712','1515581327','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2713','1515581374','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2714','1515581377','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2715','1515581386','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2716','1515581397','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2717','1515581428','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2718','1515581462','1','admin','79','-','feedbackReport','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2719','1515581463','1','admin','78','10','feedbackReport','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2720','1515581754','1','admin','8','-','-','Logged out');

INSERT INTO `evo_manager_log` VALUES ('2721','1516265292','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2722','1516265405','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2723','1516801896','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2724','1516883289','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2725','1516940023','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2726','1517227025','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2727','1517227030','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2728','1517227032','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2729','1517227034','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2730','1517227036','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2731','1517227038','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2732','1517227040','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2733','1517396929','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2734','1517396937','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2735','1517396988','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2736','1517396996','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2737','1517397108','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2738','1517397130','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2739','1517397141','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2740','1517397421','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2741','1517397927','1','admin','27','2','RU','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2742','1517399222','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2743','1517399223','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2744','1517399228','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2745','1517399230','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2746','1517399232','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2747','1517399234','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2748','1517399327','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2749','1517399327','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2750','1517399348','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2751','1517399348','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2752','1517399759','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2753','1517399759','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2754','1517399831','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2755','1517399831','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2756','1517401705','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2757','1517401705','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2758','1517401787','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2759','1517401787','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2760','1517401945','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2761','1517401945','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2762','1517402028','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2763','1517402028','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2764','1517402748','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2765','1517402748','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2766','1517403636','1','admin','78','2','evoSearch','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2767','1517403769','1','admin','102','12','evoSearch','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('2768','1517403792','1','admin','102','3','Search Highlight','Edit plugin');

INSERT INTO `evo_manager_log` VALUES ('2769','1517403812','1','admin','22','15','evoSearch','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('2770','1517403846','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2771','1517403849','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2772','1517403852','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2773','1517403856','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2774','1517403861','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2775','1517403862','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2776','1517403890','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2777','1517404493','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2778','1517404493','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2779','1517404567','1','admin','79','2','evoSearch','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2780','1517404568','1','admin','78','2','evoSearch','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2781','1517404696','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2782','1517404705','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2783','1517404736','1','admin','301','3','Meta description','Edit Template Variable');

INSERT INTO `evo_manager_log` VALUES ('2784','1517404752','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2785','1517407437','1','admin','79','2','evoSearch','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2786','1517407437','1','admin','78','2','evoSearch','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2787','1517416474','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2788','1517416516','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2789','1517416519','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2790','1517416520','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2791','1517416525','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2792','1517437762','1','admin','76','-','-','Element management');

INSERT INTO `evo_manager_log` VALUES ('2793','1517504237','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2794','1517504246','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2795','1517504569','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2796','1517504580','1','admin','16','7','Результаты поиска','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2797','1517504657','1','admin','20','7','Результаты поиска','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2798','1517504657','1','admin','16','7','Результаты поиска','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2799','1517504667','1','admin','106','-','-','Viewing Modules');

INSERT INTO `evo_manager_log` VALUES ('2800','1517504694','1','admin','27','23','Контакты','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2801','1517504710','1','admin','27','84','Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2802','1517504739','1','admin','27','32','Юридические лица','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2803','1517504749','1','admin','27','87','Копия Копия Тест','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2804','1517504823','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('2805','1517504873','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2806','1517505047','1','admin','11','-','Новый пользователь','Creating a user');

INSERT INTO `evo_manager_log` VALUES ('2807','1517505087','1','admin','40','-','-','Editing Access Permissions');

INSERT INTO `evo_manager_log` VALUES ('2808','1517505108','1','admin','91','-','-','Editing Web Access Permissions');

INSERT INTO `evo_manager_log` VALUES ('2809','1517505118','1','admin','87','-','Новый веб-пользователь','Create new web user');

INSERT INTO `evo_manager_log` VALUES ('2810','1517505146','1','admin','86','-','-','Role management');

INSERT INTO `evo_manager_log` VALUES ('2811','1517505154','1','admin','38','-','Новая роль','Creating new role');

INSERT INTO `evo_manager_log` VALUES ('2812','1517505196','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2813','1517505200','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2814','1517505208','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2815','1517505219','1','admin','17','-','-','Editing settings');

INSERT INTO `evo_manager_log` VALUES ('2816','1517505288','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2817','1517506551','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2818','1517506554','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2819','1517506557','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2820','1517506560','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2821','1517511670','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2822','1517511676','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2823','1517511689','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2824','1517511699','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2825','1517511717','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2826','1517511721','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2827','1517511724','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2828','1517511728','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2829','1517559453','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2830','1517559466','1','admin','16','7','Результаты поиска','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2831','1517559480','1','admin','78','2','evoSearch','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2832','1517559518','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2833','1517559521','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2834','1517559523','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2835','1517559525','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2836','1517559751','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2837','1517559751','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2838','1517560013','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2839','1517560013','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2840','1517560026','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2841','1517560026','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2842','1517560139','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2843','1517560139','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2844','1517560331','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2845','1517560334','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2846','1517560335','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2847','1517560337','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2848','1517560350','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2849','1517560350','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2850','1517561097','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2851','1517561097','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2852','1517561118','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2853','1517561121','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2854','1517561123','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2855','1517561128','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2856','1517561357','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2857','1517561357','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2858','1517561363','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2859','1517561391','1','admin','20','3','Home','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2860','1517561391','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2861','1517562633','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2862','1517562700','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2863','1517562724','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2864','1517562724','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2865','1517562759','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2866','1517562759','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2867','1517562869','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2868','1517562869','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2869','1517563640','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2870','1517563640','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2871','1517563646','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2872','1517563646','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2873','1517564314','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2874','1517564314','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2875','1517565209','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2876','1517565209','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2877','1517576311','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2878','1517576376','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2879','1517576385','1','admin','16','7','Результаты поиска','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2880','1517576397','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2881','1517576495','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2882','1517576537','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2883','1517576600','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2884','1517576602','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2885','1517576605','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2886','1517576984','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2887','1517576984','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2888','1517576987','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2889','1517577001','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2890','1517577039','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2891','1517577040','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2892','1517577124','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2893','1517577124','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2894','1517577167','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2895','1517577168','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2896','1517821070','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2897','1517840323','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2898','1517904825','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2899','1517904855','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2900','1517904867','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2901','1517904893','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2902','1517904897','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2903','1517904900','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2904','1517904901','1','admin','31','-','-','Using file manager');

INSERT INTO `evo_manager_log` VALUES ('2905','1517904904','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2906','1517905382','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2907','1517905502','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2908','1517905502','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2909','1517906104','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2910','1517906105','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2911','1517906345','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2912','1517906345','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2913','1517906350','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2914','1517906350','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2915','1517906476','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File');

INSERT INTO `evo_manager_log` VALUES ('2916','1517906476','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File');

INSERT INTO `evo_manager_log` VALUES ('2917','1517987237','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2918','1518000987','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('2919','1518001064','1','admin','19','-','Новый шаблон','Creating a new template');

INSERT INTO `evo_manager_log` VALUES ('2920','1518001080','1','admin','20','-','Авторизация','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2921','1518001081','1','admin','16','10','Авторизация','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2922','1518001096','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2923','1518006920','1','admin','20','10','Авторизация','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2924','1518006921','1','admin','16','10','Авторизация','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2925','1518072372','1','admin','58','-','MODX','Logged in');

INSERT INTO `evo_manager_log` VALUES ('2926','1518073254','1','admin','16','5','Текстовая страница','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2927','1518073261','1','admin','16','10','Авторизация','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2928','1518073402','1','admin','20','10','Авторизация','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2929','1518073402','1','admin','16','10','Авторизация','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2930','1518073424','1','admin','16','6','Новости','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2931','1518073458','1','admin','19','-','Новый шаблон','Creating a new template');

INSERT INTO `evo_manager_log` VALUES ('2932','1518073556','1','admin','20','-','Регистрация','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2933','1518073557','1','admin','16','11','Регистрация','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2934','1518073617','1','admin','16','3','Home','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2935','1518073621','1','admin','20','10','Авторизация','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2936','1518073621','1','admin','16','10','Авторизация','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2937','1518073659','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2938','1518073942','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2939','1518073943','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2940','1518073980','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('2941','1518074008','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('2942','1518074011','1','admin','5','-','Личный кабинет','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2943','1518074011','1','admin','27','94','Личный кабинет','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2944','1518074049','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2945','1518074049','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2946','1518074072','1','admin','5','94','Личный кабинет','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2947','1518074072','1','admin','27','94','Личный кабинет','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2948','1518074131','1','admin','27','3','UA','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2949','1518074182','1','admin','112','1','Extras','Execute module');

INSERT INTO `evo_manager_log` VALUES ('2950','1518074209','1','admin','22','6','FormLister','Editing Snippet');

INSERT INTO `evo_manager_log` VALUES ('2951','1518074242','1','admin','78','10','feedbackReport','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2952','1518074252','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2953','1518074582','1','admin','20','10','Авторизация','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2954','1518074582','1','admin','16','10','Авторизация','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2955','1518074638','1','admin','20','10','Авторизация','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2956','1518074638','1','admin','16','10','Авторизация','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2957','1518074701','1','admin','20','10','Авторизация','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2958','1518074701','1','admin','16','10','Авторизация','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2959','1518074846','1','admin','20','10','Авторизация','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2960','1518074846','1','admin','16','10','Авторизация','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2961','1518075673','1','admin','20','10','Авторизация','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2962','1518075673','1','admin','16','10','Авторизация','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2963','1518077402','1','admin','16','10','Авторизация','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2964','1518077431','1','admin','20','10','Авторизация','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2965','1518077431','1','admin','16','10','Авторизация','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2966','1518077917','1','admin','20','10','Авторизация','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2967','1518077917','1','admin','16','10','Авторизация','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2968','1518078539','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2969','1518078669','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2970','1518078669','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2971','1518078777','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2972','1518078777','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)');

INSERT INTO `evo_manager_log` VALUES ('2973','1518079475','1','admin','20','10','Авторизация','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2974','1518079475','1','admin','16','10','Авторизация','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2975','1518079502','1','admin','20','10','Авторизация','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2976','1518079502','1','admin','16','10','Авторизация','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2977','1518081837','1','admin','16','11','Регистрация','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2978','1518081846','1','admin','20','11','Регистрация','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2979','1518081846','1','admin','16','11','Регистрация','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2980','1518081856','1','admin','20','10','Авторизация','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2981','1518081857','1','admin','16','10','Авторизация','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2982','1518081892','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('2983','1518081928','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('2984','1518081933','1','admin','20','10','Авторизация','Saving template');

INSERT INTO `evo_manager_log` VALUES ('2985','1518081933','1','admin','16','10','Авторизация','Editing template');

INSERT INTO `evo_manager_log` VALUES ('2986','1518081941','1','admin','5','-','Авторизация','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2987','1518081941','1','admin','27','95','Авторизация','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2988','1518081947','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('2989','1518081957','1','admin','4','-','Новый ресурс','Creating a resource');

INSERT INTO `evo_manager_log` VALUES ('2990','1518081959','1','admin','5','-','Регистрация','Saving resource');

INSERT INTO `evo_manager_log` VALUES ('2991','1518081960','1','admin','27','96','Регистрация','Editing resource');

INSERT INTO `evo_manager_log` VALUES ('2992','1518081999','1','admin','93','-','-','Backup Manager');


# --------------------------------------------------------

#
# Table structure for table `evo_manager_users`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_manager_users`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_manager_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Contains login information for backend users.';

#
# Dumping data for table `evo_manager_users`
#

INSERT INTO `evo_manager_users` VALUES ('1','admin','$P$B07sNFJYnYhfZKczInYxfm2JWCxEuY.');


# --------------------------------------------------------

#
# Table structure for table `evo_member_groups`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_member_groups`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_member_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_group` int(10) NOT NULL DEFAULT '0',
  `member` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_member` (`user_group`,`member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `evo_member_groups`
#


# --------------------------------------------------------

#
# Table structure for table `evo_membergroup_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_membergroup_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_membergroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `membergroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `evo_membergroup_access`
#


# --------------------------------------------------------

#
# Table structure for table `evo_membergroup_names`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_membergroup_names`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_membergroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `evo_membergroup_names`
#


# --------------------------------------------------------

#
# Table structure for table `evo_sg_images`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_sg_images`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_sg_images` (
  `sg_id` int(10) NOT NULL AUTO_INCREMENT,
  `sg_image` text NOT NULL,
  `sg_title` varchar(255) NOT NULL DEFAULT '',
  `sg_description` text NOT NULL,
  `sg_properties` text NOT NULL,
  `sg_add` text NOT NULL,
  `sg_isactive` int(1) NOT NULL DEFAULT '1',
  `sg_rid` int(10) DEFAULT NULL,
  `sg_index` int(10) NOT NULL DEFAULT '0',
  `sg_createdon` datetime NOT NULL,
  PRIMARY KEY (`sg_id`),
  KEY `sg_rid` (`sg_rid`),
  KEY `sg_index` (`sg_index`),
  KEY `sg_isactive` (`sg_isactive`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='Datatable for SimpleGallery plugin.';

#
# Dumping data for table `evo_sg_images`
#

INSERT INTO `evo_sg_images` VALUES ('11','assets/galleries/1/depositphotos_9938167_original.jpg','Depositphotos_9938167_original','','{\"width\":1920,\"height\":800,\"size\":447079}','','1','1','2','2017-11-20 13:00:30');

INSERT INTO `evo_sg_images` VALUES ('12','assets/galleries/1/product-page-alfa-main.jpg','product-page-alfa-main','','{\"width\":988,\"height\":399,\"size\":121109}','','1','1','1','2017-11-20 13:00:31');

INSERT INTO `evo_sg_images` VALUES ('13','assets/galleries/1/vod-kot-4_796_325.jpg','vod-kot-4_796_325','','{\"width\":796,\"height\":325,\"size\":98160}','','1','1','0','2017-11-20 13:00:32');

INSERT INTO `evo_sg_images` VALUES ('14','assets/galleries/4/depositphotos_9938167_original.jpg','Depositphotos_9938167_original','','{\"width\":1920,\"height\":800,\"size\":447079}','','1','4','2','2017-11-20 13:01:10');

INSERT INTO `evo_sg_images` VALUES ('15','assets/galleries/4/product-page-alfa-main.jpg','product-page-alfa-main','','{\"width\":988,\"height\":399,\"size\":121109}','','1','4','1','2017-11-20 13:01:11');

INSERT INTO `evo_sg_images` VALUES ('16','assets/galleries/4/vod-kot-4_796_325.jpg','vod-kot-4_796_325','','{\"width\":796,\"height\":325,\"size\":98160}','','1','4','0','2017-11-20 13:01:11');


# --------------------------------------------------------

#
# Table structure for table `evo_site_content`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_site_content`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_site_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(245) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '' COMMENT 'Link attriubtes',
  `published` int(1) NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` int(1) NOT NULL DEFAULT '0',
  `introtext` text COMMENT 'Used to provide quick summary of the document',
  `content` mediumtext,
  `richtext` tinyint(1) NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` int(1) NOT NULL DEFAULT '1',
  `cacheable` int(1) NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0' COMMENT 'Date the document was published',
  `publishedby` int(10) NOT NULL DEFAULT '0' COMMENT 'ID of user who published the document',
  `menutitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Menu title',
  `donthit` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Disable page hit count',
  `privateweb` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private web document',
  `privatemgr` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private manager document',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-inline, 1-attachment',
  `hidemenu` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Hide document from menu',
  `alias_visible` int(2) NOT NULL DEFAULT '1',
  `content_with_tv` mediumtext NOT NULL,
  `content_with_tv_index` mediumtext NOT NULL,
  `count` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `parent` (`parent`),
  KEY `aliasidx` (`alias`),
  KEY `typeidx` (`type`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`description`,`content`),
  FULLTEXT KEY `content_index` (`content_with_tv`,`content_with_tv_index`),
  FULLTEXT KEY `pagetitle` (`pagetitle`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='Contains the site document tree.';

#
# Dumping data for table `evo_site_content`
#

INSERT INTO `evo_site_content` VALUES ('1','document','text/html','Главная страница','','','glavnaya-stranica','','1','0','0','2','0','','','1','3','0','1','1','1','1130304721','1','1511172103','0','0','0','1130304721','1','','0','0','0','0','0','1','Главная страница    ','СТРАНИЦА ГЛАВНЫЙ','0');

INSERT INTO `evo_site_content` VALUES ('2','document','text/html','RU','Рус','2','ru','','1','0','0','0','1','','','1','4','0','1','1','1','1507650524','1','1509306525','0','0','0','1507650524','1','','0','0','0','0','0','1','RU Рус 2  ','РУСЫЙ','0');

INSERT INTO `evo_site_content` VALUES ('3','document','text/html','UA','Укр','3','ua','','1','0','0','0','1','','','1','4','2','1','1','1','1507650538','1','1509306301','0','0','0','1507650538','1','','0','0','0','0','0','1','UA Укр 3  ','','0');

INSERT INTO `evo_site_content` VALUES ('25','document','text/html','О предприятии','','','o-predpriyatii','','1','0','0','13','0','','','1','5','0','1','1','1','1510089938','1','1514375362','0','0','0','1510089938','1','','0','0','0','0','0','1','О предприятии    ','ПРЕДПРИЯТИЕ','0');

INSERT INTO `evo_site_content` VALUES ('4','document','text/html','Головна сторінка','','','glavnaya-stranica','','1','0','0','3','0','','','1','3','0','1','1','1','1130304721','1','1511172097','0','0','0','1130304721','1','','0','0','0','0','0','1','Головна сторінка    ','ГОЛ ГОЛОВНЫЙ','0');

INSERT INTO `evo_site_content` VALUES ('20','document','text/html','Коммерческое предложение','','','kommercheskoe-predlozhenie','','1','0','0','2','0','','','1','5','4','1','1','1','1508256771','1','1508256771','0','0','0','1508256771','1','','0','0','0','0','0','1','Коммерческое предложение    ','ПРЕДЛОЖЕНИЕ КОММЕРЧЕСКИЙ','0');

INSERT INTO `evo_site_content` VALUES ('15','document','text/html','Публичная информация','','','publichnaya-informaciya','','1','0','0','2','1','','','1','5','2','1','1','1','1508256460','1','1508256460','0','0','0','1508256460','1','','0','0','0','0','0','1','Публичная информация    ','ПУБЛИЧНЫЙ ИНФОРМАЦИЯ','0');

INSERT INTO `evo_site_content` VALUES ('17','document','text/html','Публічна інформація','','','publichna-informaciya','','1','0','0','3','1','','','1','5','2','1','1','1','1508256666','1','1508256673','0','0','0','1508256666','1','','0','0','0','0','0','1','Публічна інформація    ','ПУБЛІЧНЫЙ','0');

INSERT INTO `evo_site_content` VALUES ('18','document','text/html','Потребители','','','potrebiteli','','1','0','0','2','1','','','1','5','3','1','1','1','1508256700','1','1508256700','0','0','0','1508256700','1','','0','0','0','0','0','1','Потребители    ','ПОТРЕБИТЕЛЬ','0');

INSERT INTO `evo_site_content` VALUES ('19','document','text/html','Споживачі','','','spozhivachi','','1','0','0','3','1','','','1','5','3','1','1','1','1508256742','1','1508256742','0','0','0','1508256742','1','','0','0','0','0','0','1','Споживачі    ','','0');

INSERT INTO `evo_site_content` VALUES ('13','document','text/html','Предприятие','','','predpriyatie','','1','0','0','2','1','','','1','5','1','1','1','1','1508256093','1','1508256254','0','0','0','1508256254','1','','0','0','0','0','0','1','Предприятие    ','ПРЕДПРИЯТИЕ','0');

INSERT INTO `evo_site_content` VALUES ('14','document','text/html','Предпріемство','','','predpriemstvo','','1','0','0','3','1','','','1','5','1','1','1','1','1508256217','1','1508256217','0','0','0','1508256217','1','','0','0','0','0','0','1','Предпріемство    ','ПРЕДПРІЕМСТВО','0');

INSERT INTO `evo_site_content` VALUES ('22','document','text/html','Комерційна пропозиція','','','komercijna-propoziciya','','1','0','0','3','0','','','1','5','4','1','1','1','1508256836','1','1508256836','0','0','0','1508256836','1','','0','0','0','0','0','1','Комерційна пропозиція    ','КОМЕРЦІЙНЫЙ КОМЕРЦІЙН','0');

INSERT INTO `evo_site_content` VALUES ('23','document','text/html','Контакты','','','kontakty','','1','0','0','2','0','','','1','5','5','1','1','1','1508256926','1','1508256926','0','0','0','1508256926','1','','0','0','0','0','0','1','Контакты    ','КОНТАКТ','0');

INSERT INTO `evo_site_content` VALUES ('24','document','text/html','Контакти','','','kontakti','','1','0','0','3','0','','','1','5','5','1','1','1','1508256958','1','1508256958','0','0','0','1508256958','1','','0','0','0','0','0','1','Контакти    ','КОНТАКТИТЬ КОНТАКТЬ','0');

INSERT INTO `evo_site_content` VALUES ('26','document','text/html','Руководство','','','rukovodstvo','','1','0','0','13','0','','','1','5','1','1','1','1','1510089980','1','1510089980','0','0','0','1510089980','1','','0','0','0','0','0','1','Руководство    ','РУКОВОДСТВО','0');

INSERT INTO `evo_site_content` VALUES ('27','document','text/html','Награды и грамоты','','','nagrady-i-gramoty','','1','0','0','13','0','','','1','5','2','1','1','1','1510090057','1','1510090057','0','0','0','1510090057','1','','0','0','0','0','0','1','Награды и грамоты    ','НАГРАДА ГРАМОТА','0');

INSERT INTO `evo_site_content` VALUES ('28','document','text/html','Благодарности','','','blagodarnosti','','1','0','0','13','0','','','1','5','3','1','1','1','1510090112','1','1510090112','0','0','0','1510090112','1','','0','0','0','0','0','1','Благодарности    ','БЛАГОДАРНОСТЬ','0');

INSERT INTO `evo_site_content` VALUES ('29','document','text/html','Инновации','','','innovacii','','1','0','0','13','0','','','1','5','4','1','1','1','1510090376','1','1510090376','0','0','0','1510090376','1','','0','0','0','0','0','1','Инновации    ','ИННОВАЦИЯ','0');

INSERT INTO `evo_site_content` VALUES ('30','document','text/html','Вакансии','','','vakansii','','1','0','0','13','0','','','1','5','5','1','1','1','1510090533','1','1510090533','0','0','0','1510090533','1','','0','0','0','0','0','1','Вакансии    ','ВАКАНСИЯ','0');

INSERT INTO `evo_site_content` VALUES ('31','document','text/html','Абонентные участки','','','abonentnye-uchastki','','1','0','0','15','0','','','1','5','0','1','1','1','1510090722','1','1510090722','0','0','0','1510090722','1','','0','0','0','0','0','1','Абонентные участки    ','УЧАСТОК АБОНЕНТНЫЙ','0');

INSERT INTO `evo_site_content` VALUES ('32','document','text/html','Юридические лица','','','yuridicheskie-lica','','1','0','0','15','0','','','1','5','1','1','1','1','1510090742','1','1510090742','0','0','0','1510090742','1','','0','0','0','0','0','1','Юридические лица    ','ЮРИДИЧЕСКИЙ ЛИЦО','0');

INSERT INTO `evo_site_content` VALUES ('33','document','text/html','Дислокация','','','dislokaciya','','1','0','0','15','0','','','1','5','2','1','1','1','1510090778','1','1510090778','0','0','0','1510090778','1','','0','0','0','0','0','1','Дислокация    ','ДИСЛОКАЦИЯ','0');

INSERT INTO `evo_site_content` VALUES ('34','document','text/html','Структура предприятия','','','struktura-predpriyatiya','','1','0','0','15','0','','','1','5','3','1','1','1','1510090880','1','1510090880','0','0','0','1510090880','1','','0','0','0','0','0','1','Структура предприятия    ','СТРУКТУРА ПРЕДПРИЯТИЕ','0');

INSERT INTO `evo_site_content` VALUES ('35','document','text/html','Фин. отчетность','','','fin.-otchetnost','','1','0','0','15','0','','','1','5','4','1','1','1','1510091124','1','1510091124','0','0','0','1510091124','1','','0','0','0','0','0','1','Фин. отчетность    ','ФИНА ОТЧЕТНОСТЬ','0');

INSERT INTO `evo_site_content` VALUES ('36','document','text/html','О доступе к публичной информации','','','o-dostupe-k-publichnoj-informacii','','1','0','0','15','0','','','1','5','5','1','1','1','1510091880','1','1510091880','0','0','0','1510091880','1','','0','0','0','0','0','1','О доступе к публичной информации    ','ПУБЛИЧНЫЙ ИНФОРМАЦИЯ ДОСТУП','0');

INSERT INTO `evo_site_content` VALUES ('37','document','text/html','Организационная структура','','','organizacionnaya-struktura','','1','0','0','15','0','','','1','5','6','1','1','1','1510091922','1','1510091922','0','0','0','1510091922','1','','0','0','0','0','0','1','Организационная структура    ','СТРУКТУРА ОРГАНИЗАЦИОННЫЙ','0');

INSERT INTO `evo_site_content` VALUES ('38','document','text/html','Тарифы','','','tarify','','1','0','0','15','0','','','1','5','7','1','1','1','1510091940','1','1510091940','0','0','0','1510091940','1','','0','0','0','0','0','1','Тарифы    ','ТАРИФ','0');

INSERT INTO `evo_site_content` VALUES ('39','document','text/html','Нормативно-правовые акты','','','normativno-pravovye-akty','','1','0','0','15','0','','','1','5','8','1','1','1','1510091961','1','1510091961','0','0','0','1510091961','1','','0','0','0','0','0','1','Нормативно-правовые акты    ','АКТ НОРМАТИВНО-ПРАВОВОЙ','0');

INSERT INTO `evo_site_content` VALUES ('40','document','text/html','График личных приемов руководителей','','','grafik-lichnyh-priemov-rukovoditelej','','1','0','0','15','0','','','1','5','9','1','1','1','1510091978','1','1510091978','0','0','0','1510091978','1','','0','0','0','0','0','1','График личных приемов руководителей    ','РУКОВОДИТЕЛЬ ЛИЧНЫЙ ЛИЧНОЙ ГРАФИК ГРАФИКА ПРИЕМ','0');

INSERT INTO `evo_site_content` VALUES ('41','document','text/html','Структура предприятия, правила внутреннего распорядка','','','struktura-predpriyatiya-pravila-vnutrennego-rasporyadka','','1','0','0','15','0','','','1','5','10','1','1','1','1510091996','1','1510091996','0','0','0','1510091996','1','','0','0','0','0','0','1','Структура предприятия, правила внутреннего распорядка    ','СТРУКТУРА РАСПОРЯДОК ПРЕДПРИЯТИЕ ПРАВИТЬ ПРАВИЛО ВНУТРЕННИЙ','0');

INSERT INTO `evo_site_content` VALUES ('42','document','text/html','Отчеты о запросах публичной информации','','','otchety-o-zaprosah-publichnoj-informacii','','1','0','0','15','0','','','1','5','11','1','1','1','1510092016','1','1510092016','0','0','0','1510092016','1','','0','0','0','0','0','1','Отчеты о запросах публичной информации    ','ПУБЛИЧНЫЙ ИНФОРМАЦИЯ ЗАПРОС ОТЧЕТА','0');

INSERT INTO `evo_site_content` VALUES ('43','document','text/html','Тарифы для населения','','','tarify-dlya-naseleniya','','1','0','0','18','0','','','1','5','0','1','1','1','1510092052','1','1510092052','0','0','0','1510092052','1','','0','0','0','0','0','1','Тарифы для населения    ','ТАРИФ НАСЕЛЕНИЕ ДЛЯ ДЛИТЬ','0');

INSERT INTO `evo_site_content` VALUES ('44','document','text/html','Тарифы для юр.лиц','','','tarify-dlya-yur.lic','','1','0','0','18','0','','','1','5','1','1','1','1','1510092070','1','1510092070','0','0','0','1510092070','1','','0','0','0','0','0','1','Тарифы для юр.лиц    ','ЮР ЮРА ТАРИФ ЛИЦО ДЛЯ ДЛИТЬ','0');

INSERT INTO `evo_site_content` VALUES ('45','document','text/html','Субсидии','','','subsidii','','1','0','0','18','0','','','1','5','2','1','1','1','1510092083','1','1510092083','0','0','0','1510092083','1','','0','0','0','0','0','1','Субсидии    ','СУБСИДИЯ','0');

INSERT INTO `evo_site_content` VALUES ('46','document','text/html','Льготы','','','lgoty','','1','0','0','18','0','','','1','5','3','1','1','1','1510092177','1','1510092177','0','0','0','1510092177','1','','0','0','0','0','0','1','Льготы    ','ЛЬГОТА','0');

INSERT INTO `evo_site_content` VALUES ('47','document','text/html','Предоставление услуг','','','predostavlenie-uslug','','1','0','0','18','0','','','1','5','4','1','1','1','1510092191','1','1510092191','0','0','0','1510092191','1','','0','0','0','0','0','1','Предоставление услуг    ','УСЛУГА ПРЕДОСТАВЛЕНИЕ','0');

INSERT INTO `evo_site_content` VALUES ('48','document','text/html','Сообщить показания прибора учета ','','','soobshhit-pokazaniya-pribora-ucheta','','1','0','0','18','0','','','1','5','5','1','1','1','1510092208','1','1510092208','0','0','0','1510092208','1','','0','0','0','0','0','1','Сообщить показания прибора учета     ','СООБЩИТЬ ПРИБОР ПОКАЗАНИЕ УЧЕТ','0');

INSERT INTO `evo_site_content` VALUES ('49','document','text/html','Нормативно-правовые акты ','','','normativno-pravovye-akty1','','1','0','0','18','0','','','1','5','6','1','1','1','1510092221','1','1510092221','0','0','0','1510092221','1','','0','0','0','0','0','1','Нормативно-правовые акты     ','АКТ НОРМАТИВНО-ПРАВОВОЙ','0');

INSERT INTO `evo_site_content` VALUES ('50','document','text/html','Разъяснения','','','razyasneniya','','1','0','0','18','0','','','1','5','7','1','1','1','1510092238','1','1510092238','0','0','0','1510092238','1','','0','0','0','0','0','1','Разъяснения    ','РАЗЪЯСНЕНИЕ','0');

INSERT INTO `evo_site_content` VALUES ('51','document','text/html','Прибоpы учета','','','pribopy-ucheta','','1','0','0','18','0','','','1','5','8','1','1','1','1510092253','1','1510092253','0','0','0','1510092253','1','','0','0','0','0','0','1','Прибоpы учета    ','УЧЕТ','0');

INSERT INTO `evo_site_content` VALUES ('52','document','text/html','Подключение объектов','','','podklyuchenie-obektov','','1','0','0','18','0','','','1','5','9','1','1','1','1510092266','1','1510092266','0','0','0','1510092266','1','','0','0','0','0','0','1','Подключение объектов    ','ПОДКЛЮЧЕНИЕ ОБЪЕКТОВЫЙ ОБЪЕКТ','0');

INSERT INTO `evo_site_content` VALUES ('53','document','text/html','Про підприємство','','','pro-pidpriemstvo','','1','0','0','14','0','','','1','5','0','1','1','1','1510918194','1','1510918194','0','0','0','1510918194','1','','0','0','0','0','0','1','Про підприємство    ','ПРО ПІДПРИЄМСТВО','0');

INSERT INTO `evo_site_content` VALUES ('54','document','text/html','Керівництво','','','kerivnictvo','','1','0','0','14','0','','','1','5','1','1','1','1','1510918222','1','1510918222','0','0','0','1510918222','1','','0','0','0','0','0','1','Керівництво    ','КЕРІВНИЦТВО','0');

INSERT INTO `evo_site_content` VALUES ('55','document','text/html','Нагороди та грамоти','','','nagorodi-ta-gramoti','','1','0','0','14','0','','','1','5','2','1','1','1','1510918267','1','1510918267','0','0','0','1510918267','1','','0','0','0','0','0','1','Нагороди та грамоти    ','ТОТ НАГОРОДИТЬ ГРАМОТИТЬ ГРАМОТЬ','0');

INSERT INTO `evo_site_content` VALUES ('56','document','text/html','Подяки','','','podyaki','','1','0','0','14','0','','','1','5','3','1','1','1','1510918288','1','1510918288','0','0','0','1510918288','1','','0','0','0','0','0','1','Подяки    ','ПОДЯК','0');

INSERT INTO `evo_site_content` VALUES ('57','document','text/html','Іновації','','','inovacii','','1','0','0','14','0','','','1','5','4','1','1','1','1510918358','1','1510918358','0','0','0','1510918358','1','','0','0','0','0','0','1','Іновації    ','','0');

INSERT INTO `evo_site_content` VALUES ('58','document','text/html','Вакансії','','','vakansii1','','1','0','0','14','0','','','1','5','5','1','1','1','1510918404','1','1510918404','0','0','0','1510918404','1','','0','0','0','0','0','1','Вакансії    ','','0');

INSERT INTO `evo_site_content` VALUES ('59','document','text/html','Абонентні ділянки','','','abonentni-dilyanki','','1','0','0','17','0','','','1','5','0','1','1','1','1510918497','1','1510918497','0','0','0','1510918497','1','','0','0','0','0','0','1','Абонентні ділянки    ','ДІЛЯНКА','0');

INSERT INTO `evo_site_content` VALUES ('60','document','text/html','Юридичні особи','','','yuridichni-osobi','','1','0','0','17','0','','','1','5','1','1','1','1','1510918523','1','1510918523','0','0','0','1510918523','1','','0','0','0','0','0','1','Юридичні особи    ','ОСОБЬ','0');

INSERT INTO `evo_site_content` VALUES ('61','document','text/html','Дислокації','','','dislokacii','','1','0','0','17','0','','','1','5','2','1','1','1','1510918546','1','1510918546','0','0','0','1510918546','1','','0','0','0','0','0','1','Дислокації    ','','0');

INSERT INTO `evo_site_content` VALUES ('62','document','text/html','Структура підприємства','','','struktura-pidpriemstva','','1','0','0','17','0','','','1','5','3','1','1','1','1510918575','1','1510918575','0','0','0','1510918575','1','','0','0','0','0','0','1','Структура підприємства    ','СТРУКТУРА ПІДПРИЄМСТВО','0');

INSERT INTO `evo_site_content` VALUES ('64','document','text/html','Фін. звітність','','','fin.-zvitnist','','1','0','0','17','0','','','1','5','4','1','1','1','1510918706','1','1510918731','0','0','0','1510918706','1','','0','0','0','0','0','1','Фін. звітність    ','ЗВІТНІСТЬ','0');

INSERT INTO `evo_site_content` VALUES ('65','document','text/html','Про доступ до публічної інформації','','','pro-dostup-do-publichnoi-informacii','','1','0','0','17','0','','','1','5','5','1','1','1','1510918754','1','1510918754','0','0','0','1510918754','1','','0','0','0','0','0','1','Про доступ до публічної інформації    ','ПРО ДО ДОСТУП','0');

INSERT INTO `evo_site_content` VALUES ('66','document','text/html','Організаційна структура','','','organizacijna-struktura','','1','0','0','17','0','','','1','5','6','1','1','1','1510918791','1','1510918791','0','0','0','1510918791','1','','0','0','0','0','0','1','Організаційна структура    ','СТРУКТУРА ОРГАНІЗАЦІЙНЫЙ ОРГАНІЗАЦІЙН','0');

INSERT INTO `evo_site_content` VALUES ('67','document','text/html','Тарифи','','','tarifi','','1','0','0','17','0','','','1','5','7','1','1','1','1510918809','1','1510918809','0','0','0','1510918809','1','','0','0','0','0','0','1','Тарифи    ','ТАРИФЯ','0');

INSERT INTO `evo_site_content` VALUES ('68','document','text/html','Нормативно-правові акти','','','normativno-pravovi-akti','','1','0','0','17','0','','','1','5','8','1','1','1','1510918824','1','1510918824','0','0','0','1510918824','1','','0','0','0','0','0','1','Нормативно-правові акти    ','АКТИТЬ АКТЬ','0');

INSERT INTO `evo_site_content` VALUES ('69','document','text/html','Графік особистих прийомів керівників','','','grafik-osobistih-prijomiv-kerivnikiv','','1','0','0','17','0','','','1','5','9','1','1','1','1510918842','1','1510918842','0','0','0','1510918842','1','','0','0','0','0','0','1','Графік особистих прийомів керівників    ','ОСОБИСТИХ','0');

INSERT INTO `evo_site_content` VALUES ('70','document','text/html','Структура підприємства, правила внутрішнього розпорядку','','','struktura-pidpriemstva-pravila-vnutrishnogo-rozporyadku','','1','0','0','17','0','','','1','5','10','1','1','1','1510918858','1','1510918858','0','0','0','1510918858','1','','0','0','0','0','0','1','Структура підприємства, правила внутрішнього розпорядку    ','СТРУКТУРА ПРАВИТЬ ПРАВИЛО РОЗПОРЯДОК ПІДПРИЄМСТВО ВНУТРІШНЬИЙ ВНУТРІШНЬЫЙ','0');

INSERT INTO `evo_site_content` VALUES ('71','document','text/html','Звіти про запити публічної інформації','','','zviti-pro-zapiti-publichnoi-informacii','','1','0','0','17','0','','','1','5','11','1','1','1','1510918878','1','1510918878','0','0','0','1510918878','1','','0','0','0','0','0','1','Звіти про запити публічної інформації    ','ПРО ЗВІТИТЬ ЗВІТЬ ЗАПИТЬ','0');

INSERT INTO `evo_site_content` VALUES ('72','document','text/html','Тарифи для населення','','','tarifi-dlya-naselennya','','1','0','0','19','0','','','1','5','0','1','1','1','1510918937','1','1510918937','0','0','0','1510918937','1','','0','0','0','0','0','1','Тарифи для населення    ','ДЛЯ ДЛИТЬ ТАРИФЯ НАСЕЛЕННИЙ','0');

INSERT INTO `evo_site_content` VALUES ('73','document','text/html','Тарифи для юр.осіб','','','tarifi-dlya-yur.osib','','1','0','0','19','0','','','1','5','1','1','1','1','1510918950','1','1510918950','0','0','0','1510918950','1','','0','0','0','0','0','1','Тарифи для юр.осіб    ','ЮР ЮРА ДЛЯ ДЛИТЬ ТАРИФЯ','0');

INSERT INTO `evo_site_content` VALUES ('74','document','text/html','Субсидії','','','subsidii1','','1','0','0','19','0','','','1','5','2','1','1','1','1510918965','1','1510918965','0','0','0','1510918965','1','','0','0','0','0','0','1','Субсидії    ','','0');

INSERT INTO `evo_site_content` VALUES ('75','document','text/html','Пільги','','','pilgi','','1','0','0','19','0','','','1','5','3','1','1','1','1510918978','1','1510918978','0','0','0','1510918978','1','','0','0','0','0','0','1','Пільги    ','ПІЛЬГА','0');

INSERT INTO `evo_site_content` VALUES ('76','document','text/html','Надання послуг','','','nadannya-poslug','','1','0','0','19','0','','','1','5','4','1','1','1','1510918990','1','1510918990','0','0','0','1510918990','1','','0','0','0','0','0','1','Надання послуг    ','ПОСЛУГ НАДАННИЙ','0');

INSERT INTO `evo_site_content` VALUES ('77','document','text/html','Повідомити показання приладу обліку','','','povidomiti-pokazannya-priladu-obliku','','1','0','0','19','0','','','1','5','5','1','1','1','1510919010','1','1510919010','0','0','0','1510919010','1','','0','0','0','0','0','1','Повідомити показання приладу обліку    ','ПРИЛАДА ПОКАЗАННИЙ ПОВІДОМИТЬ ОБЛІКА','0');

INSERT INTO `evo_site_content` VALUES ('78','document','text/html','Нормативно-правові акти','','','normativno-pravovi-akti1','','1','0','0','19','0','','','1','5','6','1','1','1','1510919025','1','1510919025','0','0','0','1510919025','1','','0','0','0','0','0','1','Нормативно-правові акти    ','АКТИТЬ АКТЬ','0');

INSERT INTO `evo_site_content` VALUES ('79','document','text/html','Роз\'яснення','','','rozyasnennya','','1','0','0','19','0','','','1','5','7','1','1','1','1510919039','1','1510919039','0','0','0','1510919039','1','','0','0','0','0','0','1','Роз\'яснення    ','РОЗА ЯСНЕННИЙ','0');

INSERT INTO `evo_site_content` VALUES ('80','document','text/html','Прібоpи обліку','','','pribopi-obliku','','1','0','0','19','0','','','1','5','8','1','1','1','1510919052','1','1510919052','0','0','0','1510919052','1','','0','0','0','0','0','1','Прібоpи обліку    ','ОБЛІКА','0');

INSERT INTO `evo_site_content` VALUES ('81','document','text/html','Підключення об\'єктів','','','pidklyuchennya-obektiv','','1','0','0','19','0','','','1','5','9','1','1','1','1510919069','1','1510919069','0','0','0','1510919069','1','','0','0','0','0','0','1','Підключення об\'єктів    ','ОБ ПІДКЛЮЧЕННИЙ','0');

INSERT INTO `evo_site_content` VALUES ('82','document','text/html','Новости','','','novosti','','1','0','0','2','1','','','1','6','6','1','1','1','1511178311','1','1511178456','0','0','0','1511178311','1','','0','0','0','0','1','1','Новости    ','НОВОСТЬ','0');

INSERT INTO `evo_site_content` VALUES ('83','document','text/html','Новини','','','novini','','1','0','0','3','1','','','1','6','6','1','1','1','1511178365','1','1511179732','0','0','0','1511178365','1','','0','0','0','0','1','1','Новини    ','НОВИНЯ НОВИНИЙ НОВИНИТЬ','0');

INSERT INTO `evo_site_content` VALUES ('84','document','text/html','Тест','','','test','','1','0','0','82','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<p>&nbsp;</p>\n<h3>Классический текст Lorem Ipsum, используемый с XVI века</h3>\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<h3>Абзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.</h3>\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<h3>Английский перевод 1914 года, H. Rackham</h3>\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>','1','5','0','1','1','1','1511178429','1','1514378823','0','0','0','1511178429','1','','0','0','0','0','0','1','Тест   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. &nbsp;\nКлассический текст Lorem Ipsum, используемый с XVI века\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\nАбзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\nАнглийский перевод 1914 года, H. Rackham\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"','ЦИЦЕРОН ТЕСТ ТЕСТО ТЕКСТ ПЕРЕВОД НАПИСАТЬ КЛАССИЧЕСКИЙ АНГЛИЙСКИЙ ИСПОЛЬЗОВАТЬ ГОД ВЕК ВЕКО АБЗАЦ YOU WITH WILL WHO WHICH VITA UNDERTAKE TRUTH SYSTEM REM NULLA NOSTRUM NIHIL NEMO MASTER-BUILDER IDEA EXPLORER EXERCITATION ESSE ERROR DOLOR TRIVIAL PAINFUL LABORIOUS TOIL PAIN ENCOUNTER ACCOUNT THAT THIS THE THERE RATIONALLY OCCASIONALLY NOT EXTREMELY EVER AGAIN TEMPUS TEACHING CONSEQUENCE TAKE SOME SIT RIGHT RESULTANT PHYSICAL HUMAN ACTUAL REJECT QUASI PURSUE PROCURE PRODUCE DISLIKE DESIRE CIRCUMSTANCE PRAISE DENOUNCE PLEASURE EXERCISE EXAMPLE ADVANTAGE ONE OCCUR OBTAIN EXPOUND EXPLAIN ENJOY NOR NISI BECAUSE AND MUST MODUS MISTAKEN MISTAKE MINIM MINIMUM DICTUM MAN LOVE KNOW ITSELF HOW HAVE HAPPINESS GREAT GIVE FROM FIND FAULT EXCEPT EOS DOLORES COMPLETE CHOOSE CAN BUT BORN BEAR AVOID ARE ANY ANYONE ANNOYING ANNOY ALL VOLUPTATE VOLUPTATEM VOLUPTA VERITATIS VENIAM VEL VELIT UNDE ULLAM ULLAMCO TOTAM TEMPOR SUSCIPIT SUNT SINT SED REPREHENDERIT RATIONE RACKHAM QUI QUISQUAM QUIA QUAM QUA QUAERAT PROIDENT PERSPICIATIS PARIATUR OMNIS OFFICIA ODIT OCCAECAT NUMQUAM NOSTRUD NON NESCIUNT NEQUE NATUS MOLLIT MOLESTIA MALORUM MAGNA MAGNAM LOREM LAUDANTIUM LABORUM LABORIS LABORIOSAM LABORE IURE ISTE IRURE IPSUM IPSA IPSAM INVENTORE INCIDUNT INCIDIDUNT ILLUM ILLO FUGIT FUGIAT FINIBUS EXERCITATIONEM EXCEPTEUR EUM EST ENIM ELIT EIUS EIUSMOD EAQUE DUI DOLORE DOLOREM DOLOREMQUE DESERUNT CUPIDATAT CORPORIS CONSEQUUNTUR CONSEQUAT CONSEQUATUR CONSECTETUR COMMODO CILLUM BONORUM BEATA AUT AUTE AUTEM ASPERNATUR ARCHITECTO APERIAM ANIM AMET ALIQUIP ALIQUID ALIQUAM ADIPISCUS ADIPISCE ACCUSANTIUM','0');

INSERT INTO `evo_site_content` VALUES ('85','document','text/html','Т\'eст','','','test1','','1','0','0','83','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<h3>Стандартний Lorem Ipsum, використовуваний з XVI ст.</h3>\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<h3>Розділ 1.10.32 \"de Finibus Bonorum et Malorum\", написаного Цицероном у 45 році до н.е.</h3>\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<h3>Переклад Х.Рекема англійською, 1914</h3>\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>','1','5','0','1','1','1','1511178498','1','1514378850','0','0','0','1511178498','1','','0','0','0','0','0','1','Т\'eст   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Стандартний Lorem Ipsum, використовуваний з XVI ст.\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\nРозділ 1.10.32 \"de Finibus Bonorum et Malorum\", написаного Цицероном у 45 році до н.е.\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\nПереклад Х.Рекема англійською, 1914\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"','ЦИЦЕРОН СТАТЬЯ ПЕРЕКЛАД ДО СТАНДАРТНИЙ РЕКЕМА РЕКТЬ РЕКЕМЫЙ НАПИСАНЫЙ ВИКОРИСТОВУВАНИЯ АНГЛІЙСЬКА EСТ EСТЫЙ YOU WITH WILL WHO WHICH VITA UNDERTAKE TRUTH SYSTEM REM NULLA NOSTRUM NIHIL NEMO MASTER-BUILDER IDEA EXPLORER EXERCITATION ESSE ERROR DOLOR TRIVIAL PAINFUL LABORIOUS TOIL PAIN ENCOUNTER ACCOUNT THAT THIS THE THERE RATIONALLY OCCASIONALLY NOT EXTREMELY EVER AGAIN TEMPUS TEACHING CONSEQUENCE TAKE SOME SIT RIGHT RESULTANT PHYSICAL HUMAN ACTUAL REJECT QUASI PURSUE PROCURE PRODUCE DISLIKE DESIRE CIRCUMSTANCE PRAISE DENOUNCE PLEASURE EXERCISE EXAMPLE ADVANTAGE ONE OCCUR OBTAIN EXPOUND EXPLAIN ENJOY NOR NISI BECAUSE AND MUST MODUS MISTAKEN MISTAKE MINIM MINIMUM DICTUM MAN LOVE KNOW ITSELF HOW HAVE HAPPINESS GREAT GIVE FROM FIND FAULT EXCEPT EOS DOLORES COMPLETE CHOOSE CAN BUT BORN BEAR AVOID ARE ANY ANYONE ANNOYING ANNOY ALL VOLUPTATE VOLUPTATEM VOLUPTA VERITATIS VENIAM VEL VELIT UNDE ULLAM ULLAMCO TOTAM TEMPOR SUSCIPIT SUNT SINT SED REPREHENDERIT RATIONE QUI QUISQUAM QUIA QUAM QUA QUAERAT PROIDENT PERSPICIATIS PARIATUR OMNIS OFFICIA ODIT OCCAECAT NUMQUAM NOSTRUD NON NESCIUNT NEQUE NATUS MOLLIT MOLESTIA MALORUM MAGNA MAGNAM LOREM LAUDANTIUM LABORUM LABORIS LABORIOSAM LABORE IURE ISTE IRURE IPSUM IPSA IPSAM INVENTORE INCIDUNT INCIDIDUNT ILLUM ILLO FUGIT FUGIAT FINIBUS EXERCITATIONEM EXCEPTEUR EUM EST ENIM ELIT EIUS EIUSMOD EAQUE DUI DOLORE DOLOREM DOLOREMQUE DESERUNT CUPIDATAT CORPORIS CONSEQUUNTUR CONSEQUAT CONSEQUATUR CONSECTETUR COMMODO CILLUM BONORUM BEATA AUT AUTE AUTEM ASPERNATUR ARCHITECTO APERIAM ANIM AMET ALIQUIP ALIQUID ALIQUAM ADIPISCUS ADIPISCE ACCUSANTIUM','0');

INSERT INTO `evo_site_content` VALUES ('86','document','text/html','Копия Тест','','','kopiya-test','','1','0','0','82','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<h3>Классический текст Lorem Ipsum, используемый с XVI века</h3>\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<h3>Абзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.</h3>\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<h3>Английский перевод 1914 года, H. Rackham</h3>\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>','1','5','0','1','1','1','1511179746','1','1514378830','0','0','0','1511179922','1','','0','0','0','0','0','1','Копия Тест   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Классический текст Lorem Ipsum, используемый с XVI века\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\nАбзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\nАнглийский перевод 1914 года, H. Rackham\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"','ЦИЦЕРОН ТЕСТ ТЕСТО ТЕКСТ ПЕРЕВОД НАПИСАТЬ КОПИЯ КЛАССИЧЕСКИЙ АНГЛИЙСКИЙ ИСПОЛЬЗОВАТЬ ГОД ВЕК ВЕКО АБЗАЦ YOU WITH WILL WHO WHICH VITA UNDERTAKE TRUTH SYSTEM REM NULLA NOSTRUM NIHIL NEMO MASTER-BUILDER IDEA EXPLORER EXERCITATION ESSE ERROR DOLOR TRIVIAL PAINFUL LABORIOUS TOIL PAIN ENCOUNTER ACCOUNT THAT THIS THE THERE RATIONALLY OCCASIONALLY NOT EXTREMELY EVER AGAIN TEMPUS TEACHING CONSEQUENCE TAKE SOME SIT RIGHT RESULTANT PHYSICAL HUMAN ACTUAL REJECT QUASI PURSUE PROCURE PRODUCE DISLIKE DESIRE CIRCUMSTANCE PRAISE DENOUNCE PLEASURE EXERCISE EXAMPLE ADVANTAGE ONE OCCUR OBTAIN EXPOUND EXPLAIN ENJOY NOR NISI BECAUSE AND MUST MODUS MISTAKEN MISTAKE MINIM MINIMUM DICTUM MAN LOVE KNOW ITSELF HOW HAVE HAPPINESS GREAT GIVE FROM FIND FAULT EXCEPT EOS DOLORES COMPLETE CHOOSE CAN BUT BORN BEAR AVOID ARE ANY ANYONE ANNOYING ANNOY ALL VOLUPTATE VOLUPTATEM VOLUPTA VERITATIS VENIAM VEL VELIT UNDE ULLAM ULLAMCO TOTAM TEMPOR SUSCIPIT SUNT SINT SED REPREHENDERIT RATIONE RACKHAM QUI QUISQUAM QUIA QUAM QUA QUAERAT PROIDENT PERSPICIATIS PARIATUR OMNIS OFFICIA ODIT OCCAECAT NUMQUAM NOSTRUD NON NESCIUNT NEQUE NATUS MOLLIT MOLESTIA MALORUM MAGNA MAGNAM LOREM LAUDANTIUM LABORUM LABORIS LABORIOSAM LABORE IURE ISTE IRURE IPSUM IPSA IPSAM INVENTORE INCIDUNT INCIDIDUNT ILLUM ILLO FUGIT FUGIAT FINIBUS EXERCITATIONEM EXCEPTEUR EUM EST ENIM ELIT EIUS EIUSMOD EAQUE DUI DOLORE DOLOREM DOLOREMQUE DESERUNT CUPIDATAT CORPORIS CONSEQUUNTUR CONSEQUAT CONSEQUATUR CONSECTETUR COMMODO CILLUM BONORUM BEATA AUT AUTE AUTEM ASPERNATUR ARCHITECTO APERIAM ANIM AMET ALIQUIP ALIQUID ALIQUAM ADIPISCUS ADIPISCE ACCUSANTIUM','0');

INSERT INTO `evo_site_content` VALUES ('87','document','text/html','Копия Копия Тест','','','kopiya-kopiya-test','','1','0','0','82','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<h3>Классический текст Lorem Ipsum, используемый с XVI века</h3>\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<h3>Абзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.</h3>\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<h3>Английский перевод 1914 года, H. Rackham</h3>\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>','1','5','0','1','1','1','1511179755','1','1514378838','0','0','0','1511179932','1','','0','0','0','0','0','1','Копия Копия Тест   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Классический текст Lorem Ipsum, используемый с XVI века\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\nАбзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\nАнглийский перевод 1914 года, H. Rackham\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"','ЦИЦЕРОН ТЕСТ ТЕСТО ТЕКСТ ПЕРЕВОД НАПИСАТЬ КОПИЯ КЛАССИЧЕСКИЙ АНГЛИЙСКИЙ ИСПОЛЬЗОВАТЬ ГОД ВЕК ВЕКО АБЗАЦ YOU WITH WILL WHO WHICH VITA UNDERTAKE TRUTH SYSTEM REM NULLA NOSTRUM NIHIL NEMO MASTER-BUILDER IDEA EXPLORER EXERCITATION ESSE ERROR DOLOR TRIVIAL PAINFUL LABORIOUS TOIL PAIN ENCOUNTER ACCOUNT THAT THIS THE THERE RATIONALLY OCCASIONALLY NOT EXTREMELY EVER AGAIN TEMPUS TEACHING CONSEQUENCE TAKE SOME SIT RIGHT RESULTANT PHYSICAL HUMAN ACTUAL REJECT QUASI PURSUE PROCURE PRODUCE DISLIKE DESIRE CIRCUMSTANCE PRAISE DENOUNCE PLEASURE EXERCISE EXAMPLE ADVANTAGE ONE OCCUR OBTAIN EXPOUND EXPLAIN ENJOY NOR NISI BECAUSE AND MUST MODUS MISTAKEN MISTAKE MINIM MINIMUM DICTUM MAN LOVE KNOW ITSELF HOW HAVE HAPPINESS GREAT GIVE FROM FIND FAULT EXCEPT EOS DOLORES COMPLETE CHOOSE CAN BUT BORN BEAR AVOID ARE ANY ANYONE ANNOYING ANNOY ALL VOLUPTATE VOLUPTATEM VOLUPTA VERITATIS VENIAM VEL VELIT UNDE ULLAM ULLAMCO TOTAM TEMPOR SUSCIPIT SUNT SINT SED REPREHENDERIT RATIONE RACKHAM QUI QUISQUAM QUIA QUAM QUA QUAERAT PROIDENT PERSPICIATIS PARIATUR OMNIS OFFICIA ODIT OCCAECAT NUMQUAM NOSTRUD NON NESCIUNT NEQUE NATUS MOLLIT MOLESTIA MALORUM MAGNA MAGNAM LOREM LAUDANTIUM LABORUM LABORIS LABORIOSAM LABORE IURE ISTE IRURE IPSUM IPSA IPSAM INVENTORE INCIDUNT INCIDIDUNT ILLUM ILLO FUGIT FUGIAT FINIBUS EXERCITATIONEM EXCEPTEUR EUM EST ENIM ELIT EIUS EIUSMOD EAQUE DUI DOLORE DOLOREM DOLOREMQUE DESERUNT CUPIDATAT CORPORIS CONSEQUUNTUR CONSEQUAT CONSEQUATUR CONSECTETUR COMMODO CILLUM BONORUM BEATA AUT AUTE AUTEM ASPERNATUR ARCHITECTO APERIAM ANIM AMET ALIQUIP ALIQUID ALIQUAM ADIPISCUS ADIPISCE ACCUSANTIUM','0');

INSERT INTO `evo_site_content` VALUES ('88','document','text/html','Копия Тест','','','kopiya-test1','','1','0','0','82','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<h3>Классический текст Lorem Ipsum, используемый с XVI века</h3>\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<h3>Абзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.</h3>\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<h3>Английский перевод 1914 года, H. Rackham</h3>\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>','1','5','0','1','1','1','1511179765','1','1514378844','0','0','0','1511179939','1','','0','0','0','0','0','1','Копия Тест   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Классический текст Lorem Ipsum, используемый с XVI века\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\nАбзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\nАнглийский перевод 1914 года, H. Rackham\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"','ЦИЦЕРОН ТЕСТ ТЕСТО ТЕКСТ ПЕРЕВОД НАПИСАТЬ КОПИЯ КЛАССИЧЕСКИЙ АНГЛИЙСКИЙ ИСПОЛЬЗОВАТЬ ГОД ВЕК ВЕКО АБЗАЦ YOU WITH WILL WHO WHICH VITA UNDERTAKE TRUTH SYSTEM REM NULLA NOSTRUM NIHIL NEMO MASTER-BUILDER IDEA EXPLORER EXERCITATION ESSE ERROR DOLOR TRIVIAL PAINFUL LABORIOUS TOIL PAIN ENCOUNTER ACCOUNT THAT THIS THE THERE RATIONALLY OCCASIONALLY NOT EXTREMELY EVER AGAIN TEMPUS TEACHING CONSEQUENCE TAKE SOME SIT RIGHT RESULTANT PHYSICAL HUMAN ACTUAL REJECT QUASI PURSUE PROCURE PRODUCE DISLIKE DESIRE CIRCUMSTANCE PRAISE DENOUNCE PLEASURE EXERCISE EXAMPLE ADVANTAGE ONE OCCUR OBTAIN EXPOUND EXPLAIN ENJOY NOR NISI BECAUSE AND MUST MODUS MISTAKEN MISTAKE MINIM MINIMUM DICTUM MAN LOVE KNOW ITSELF HOW HAVE HAPPINESS GREAT GIVE FROM FIND FAULT EXCEPT EOS DOLORES COMPLETE CHOOSE CAN BUT BORN BEAR AVOID ARE ANY ANYONE ANNOYING ANNOY ALL VOLUPTATE VOLUPTATEM VOLUPTA VERITATIS VENIAM VEL VELIT UNDE ULLAM ULLAMCO TOTAM TEMPOR SUSCIPIT SUNT SINT SED REPREHENDERIT RATIONE RACKHAM QUI QUISQUAM QUIA QUAM QUA QUAERAT PROIDENT PERSPICIATIS PARIATUR OMNIS OFFICIA ODIT OCCAECAT NUMQUAM NOSTRUD NON NESCIUNT NEQUE NATUS MOLLIT MOLESTIA MALORUM MAGNA MAGNAM LOREM LAUDANTIUM LABORUM LABORIS LABORIOSAM LABORE IURE ISTE IRURE IPSUM IPSA IPSAM INVENTORE INCIDUNT INCIDIDUNT ILLUM ILLO FUGIT FUGIAT FINIBUS EXERCITATIONEM EXCEPTEUR EUM EST ENIM ELIT EIUS EIUSMOD EAQUE DUI DOLORE DOLOREM DOLOREMQUE DESERUNT CUPIDATAT CORPORIS CONSEQUUNTUR CONSEQUAT CONSEQUATUR CONSECTETUR COMMODO CILLUM BONORUM BEATA AUT AUTE AUTEM ASPERNATUR ARCHITECTO APERIAM ANIM AMET ALIQUIP ALIQUID ALIQUAM ADIPISCUS ADIPISCE ACCUSANTIUM','0');

INSERT INTO `evo_site_content` VALUES ('89','document','text/html','Копия Т\'eст','','','kopiya-test2','','1','0','0','83','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<h3>Стандартний Lorem Ipsum, використовуваний з XVI ст.</h3>\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<h3>Розділ 1.10.32 \"de Finibus Bonorum et Malorum\", написаного Цицероном у 45 році до н.е.</h3>\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<h3>Переклад Х.Рекема англійською, 1914</h3>\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>','1','5','0','1','1','1','1511179775','1','1514378856','0','0','0','1511179945','1','','0','0','0','0','0','1','Копия Т\'eст   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Стандартний Lorem Ipsum, використовуваний з XVI ст.\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\nРозділ 1.10.32 \"de Finibus Bonorum et Malorum\", написаного Цицероном у 45 році до н.е.\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\nПереклад Х.Рекема англійською, 1914\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"','ЦИЦЕРОН СТАТЬЯ ПЕРЕКЛАД КОПИЯ ДО СТАНДАРТНИЙ РЕКЕМА РЕКТЬ РЕКЕМЫЙ НАПИСАНЫЙ ВИКОРИСТОВУВАНИЯ АНГЛІЙСЬКА EСТ EСТЫЙ YOU WITH WILL WHO WHICH VITA UNDERTAKE TRUTH SYSTEM REM NULLA NOSTRUM NIHIL NEMO MASTER-BUILDER IDEA EXPLORER EXERCITATION ESSE ERROR DOLOR TRIVIAL PAINFUL LABORIOUS TOIL PAIN ENCOUNTER ACCOUNT THAT THIS THE THERE RATIONALLY OCCASIONALLY NOT EXTREMELY EVER AGAIN TEMPUS TEACHING CONSEQUENCE TAKE SOME SIT RIGHT RESULTANT PHYSICAL HUMAN ACTUAL REJECT QUASI PURSUE PROCURE PRODUCE DISLIKE DESIRE CIRCUMSTANCE PRAISE DENOUNCE PLEASURE EXERCISE EXAMPLE ADVANTAGE ONE OCCUR OBTAIN EXPOUND EXPLAIN ENJOY NOR NISI BECAUSE AND MUST MODUS MISTAKEN MISTAKE MINIM MINIMUM DICTUM MAN LOVE KNOW ITSELF HOW HAVE HAPPINESS GREAT GIVE FROM FIND FAULT EXCEPT EOS DOLORES COMPLETE CHOOSE CAN BUT BORN BEAR AVOID ARE ANY ANYONE ANNOYING ANNOY ALL VOLUPTATE VOLUPTATEM VOLUPTA VERITATIS VENIAM VEL VELIT UNDE ULLAM ULLAMCO TOTAM TEMPOR SUSCIPIT SUNT SINT SED REPREHENDERIT RATIONE QUI QUISQUAM QUIA QUAM QUA QUAERAT PROIDENT PERSPICIATIS PARIATUR OMNIS OFFICIA ODIT OCCAECAT NUMQUAM NOSTRUD NON NESCIUNT NEQUE NATUS MOLLIT MOLESTIA MALORUM MAGNA MAGNAM LOREM LAUDANTIUM LABORUM LABORIS LABORIOSAM LABORE IURE ISTE IRURE IPSUM IPSA IPSAM INVENTORE INCIDUNT INCIDIDUNT ILLUM ILLO FUGIT FUGIAT FINIBUS EXERCITATIONEM EXCEPTEUR EUM EST ENIM ELIT EIUS EIUSMOD EAQUE DUI DOLORE DOLOREM DOLOREMQUE DESERUNT CUPIDATAT CORPORIS CONSEQUUNTUR CONSEQUAT CONSEQUATUR CONSECTETUR COMMODO CILLUM BONORUM BEATA AUT AUTE AUTEM ASPERNATUR ARCHITECTO APERIAM ANIM AMET ALIQUIP ALIQUID ALIQUAM ADIPISCUS ADIPISCE ACCUSANTIUM','0');

INSERT INTO `evo_site_content` VALUES ('90','document','text/html','Копия Копия Т\'eст','','','kopiya-kopiya-test1','','1','0','0','83','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<h3>Стандартний Lorem Ipsum, використовуваний з XVI ст.</h3>\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<h3>Розділ 1.10.32 \"de Finibus Bonorum et Malorum\", написаного Цицероном у 45 році до н.е.</h3>\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<h3>Переклад Х.Рекема англійською, 1914</h3>\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>','1','5','0','1','1','1','1511179789','1','1514378863','0','0','0','1511179950','1','','0','0','0','0','0','1','Копия Копия Т\'eст   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Стандартний Lorem Ipsum, використовуваний з XVI ст.\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\nРозділ 1.10.32 \"de Finibus Bonorum et Malorum\", написаного Цицероном у 45 році до н.е.\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\nПереклад Х.Рекема англійською, 1914\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"','ЦИЦЕРОН СТАТЬЯ ПЕРЕКЛАД КОПИЯ ДО СТАНДАРТНИЙ РЕКЕМА РЕКТЬ РЕКЕМЫЙ НАПИСАНЫЙ ВИКОРИСТОВУВАНИЯ АНГЛІЙСЬКА EСТ EСТЫЙ YOU WITH WILL WHO WHICH VITA UNDERTAKE TRUTH SYSTEM REM NULLA NOSTRUM NIHIL NEMO MASTER-BUILDER IDEA EXPLORER EXERCITATION ESSE ERROR DOLOR TRIVIAL PAINFUL LABORIOUS TOIL PAIN ENCOUNTER ACCOUNT THAT THIS THE THERE RATIONALLY OCCASIONALLY NOT EXTREMELY EVER AGAIN TEMPUS TEACHING CONSEQUENCE TAKE SOME SIT RIGHT RESULTANT PHYSICAL HUMAN ACTUAL REJECT QUASI PURSUE PROCURE PRODUCE DISLIKE DESIRE CIRCUMSTANCE PRAISE DENOUNCE PLEASURE EXERCISE EXAMPLE ADVANTAGE ONE OCCUR OBTAIN EXPOUND EXPLAIN ENJOY NOR NISI BECAUSE AND MUST MODUS MISTAKEN MISTAKE MINIM MINIMUM DICTUM MAN LOVE KNOW ITSELF HOW HAVE HAPPINESS GREAT GIVE FROM FIND FAULT EXCEPT EOS DOLORES COMPLETE CHOOSE CAN BUT BORN BEAR AVOID ARE ANY ANYONE ANNOYING ANNOY ALL VOLUPTATE VOLUPTATEM VOLUPTA VERITATIS VENIAM VEL VELIT UNDE ULLAM ULLAMCO TOTAM TEMPOR SUSCIPIT SUNT SINT SED REPREHENDERIT RATIONE QUI QUISQUAM QUIA QUAM QUA QUAERAT PROIDENT PERSPICIATIS PARIATUR OMNIS OFFICIA ODIT OCCAECAT NUMQUAM NOSTRUD NON NESCIUNT NEQUE NATUS MOLLIT MOLESTIA MALORUM MAGNA MAGNAM LOREM LAUDANTIUM LABORUM LABORIS LABORIOSAM LABORE IURE ISTE IRURE IPSUM IPSA IPSAM INVENTORE INCIDUNT INCIDIDUNT ILLUM ILLO FUGIT FUGIAT FINIBUS EXERCITATIONEM EXCEPTEUR EUM EST ENIM ELIT EIUS EIUSMOD EAQUE DUI DOLORE DOLOREM DOLOREMQUE DESERUNT CUPIDATAT CORPORIS CONSEQUUNTUR CONSEQUAT CONSEQUATUR CONSECTETUR COMMODO CILLUM BONORUM BEATA AUT AUTE AUTEM ASPERNATUR ARCHITECTO APERIAM ANIM AMET ALIQUIP ALIQUID ALIQUAM ADIPISCUS ADIPISCE ACCUSANTIUM','0');

INSERT INTO `evo_site_content` VALUES ('91','document','text/html','Копия Т\'eст','','','kopiya-test3','','1','0','0','83','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<h3>Стандартний Lorem Ipsum, використовуваний з XVI ст.</h3>\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<h3>Розділ 1.10.32 \"de Finibus Bonorum et Malorum\", написаного Цицероном у 45 році до н.е.</h3>\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<h3>Переклад Х.Рекема англійською, 1914</h3>\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>','1','5','0','1','1','1','1511179797','1','1514378869','0','0','0','1511179954','1','','0','0','0','0','0','1','Копия Т\'eст   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Стандартний Lorem Ipsum, використовуваний з XVI ст.\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\nРозділ 1.10.32 \"de Finibus Bonorum et Malorum\", написаного Цицероном у 45 році до н.е.\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\nПереклад Х.Рекема англійською, 1914\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"','ЦИЦЕРОН СТАТЬЯ ПЕРЕКЛАД КОПИЯ ДО СТАНДАРТНИЙ РЕКЕМА РЕКТЬ РЕКЕМЫЙ НАПИСАНЫЙ ВИКОРИСТОВУВАНИЯ АНГЛІЙСЬКА EСТ EСТЫЙ YOU WITH WILL WHO WHICH VITA UNDERTAKE TRUTH SYSTEM REM NULLA NOSTRUM NIHIL NEMO MASTER-BUILDER IDEA EXPLORER EXERCITATION ESSE ERROR DOLOR TRIVIAL PAINFUL LABORIOUS TOIL PAIN ENCOUNTER ACCOUNT THAT THIS THE THERE RATIONALLY OCCASIONALLY NOT EXTREMELY EVER AGAIN TEMPUS TEACHING CONSEQUENCE TAKE SOME SIT RIGHT RESULTANT PHYSICAL HUMAN ACTUAL REJECT QUASI PURSUE PROCURE PRODUCE DISLIKE DESIRE CIRCUMSTANCE PRAISE DENOUNCE PLEASURE EXERCISE EXAMPLE ADVANTAGE ONE OCCUR OBTAIN EXPOUND EXPLAIN ENJOY NOR NISI BECAUSE AND MUST MODUS MISTAKEN MISTAKE MINIM MINIMUM DICTUM MAN LOVE KNOW ITSELF HOW HAVE HAPPINESS GREAT GIVE FROM FIND FAULT EXCEPT EOS DOLORES COMPLETE CHOOSE CAN BUT BORN BEAR AVOID ARE ANY ANYONE ANNOYING ANNOY ALL VOLUPTATE VOLUPTATEM VOLUPTA VERITATIS VENIAM VEL VELIT UNDE ULLAM ULLAMCO TOTAM TEMPOR SUSCIPIT SUNT SINT SED REPREHENDERIT RATIONE QUI QUISQUAM QUIA QUAM QUA QUAERAT PROIDENT PERSPICIATIS PARIATUR OMNIS OFFICIA ODIT OCCAECAT NUMQUAM NOSTRUD NON NESCIUNT NEQUE NATUS MOLLIT MOLESTIA MALORUM MAGNA MAGNAM LOREM LAUDANTIUM LABORUM LABORIS LABORIOSAM LABORE IURE ISTE IRURE IPSUM IPSA IPSAM INVENTORE INCIDUNT INCIDIDUNT ILLUM ILLO FUGIT FUGIAT FINIBUS EXERCITATIONEM EXCEPTEUR EUM EST ENIM ELIT EIUS EIUSMOD EAQUE DUI DOLORE DOLOREM DOLOREMQUE DESERUNT CUPIDATAT CORPORIS CONSEQUUNTUR CONSEQUAT CONSEQUATUR CONSECTETUR COMMODO CILLUM BONORUM BEATA AUT AUTE AUTEM ASPERNATUR ARCHITECTO APERIAM ANIM AMET ALIQUIP ALIQUID ALIQUAM ADIPISCUS ADIPISCE ACCUSANTIUM','0');

INSERT INTO `evo_site_content` VALUES ('93','document','text/html','Результаты поиска','','','rezultaty-poiska','','1','0','0','2','0','','','1','7','7','1','1','1','1515579781','1','1515579969','0','0','0','1515579781','1','','0','0','0','0','1','1','Результаты поиска    ','РЕЗУЛЬТАТ ПОИСК','0');

INSERT INTO `evo_site_content` VALUES ('94','document','text/html','Личный кабинет','','','lichnyj-kabinet','','1','0','0','2','0','','','1','10','8','1','1','1','1518074011','1','1518074072','0','0','0','1518074011','1','','0','0','0','0','1','1','Личный кабинет    ','ЛИЧНЫЙ КАБИНЕТ','0');

INSERT INTO `evo_site_content` VALUES ('95','document','text/html','Авторизация','','','avtorizaciya','','1','0','0','2','0','','','1','10','9','1','1','1','1518081941','1','1518081941','0','0','0','1518081941','1','','0','0','0','0','0','1','Авторизация    ','АВТОРИЗАЦИЯ','0');

INSERT INTO `evo_site_content` VALUES ('96','document','text/html','Регистрация','','','registraciya','','1','0','0','2','0','','','1','11','10','1','1','1','1518081959','1','1518081959','0','0','0','1518081959','1','','0','0','0','0','0','1','Регистрация    ','РЕГИСТРАЦИЯ','0');


# --------------------------------------------------------

#
# Table structure for table `evo_site_htmlsnippets`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_site_htmlsnippets`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_site_htmlsnippets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `editor_name` varchar(50) NOT NULL DEFAULT 'none',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  `disabled` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Disables the snippet',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Contains the site chunks.';

#
# Dumping data for table `evo_site_htmlsnippets`
#

INSERT INTO `evo_site_htmlsnippets` VALUES ('1','mm_rules','Default ManagerManager rules.','0','none','2','0','// more example rules are in assets/plugins/managermanager/example_mm_rules.inc.php\n// example of how PHP is allowed - check that a TV named documentTags exists before creating rule\n\nif ($modx->db->getValue($modx->db->select(\'count(id)\', $modx->getFullTableName(\'site_tmplvars\'), \"name=\'documentTags\'\"))) {\n	mm_widget_tags(\'documentTags\', \' \'); // Give blog tag editing capabilities to the \'documentTags (3)\' TV\n}\nmm_widget_showimagetvs(); // Always give a preview of Image TVs\n\nmm_createTab(\'SEO\', \'seo\', \'\', \'\', \'\', \'\');\nmm_moveFieldsToTab(\'titl,keyw,desc,seoOverride,noIndex,sitemap_changefreq,sitemap_priority,sitemap_exclude\', \'seo\', \'\', \'\');\nmm_widget_tags(\'keyw\',\',\'); // Give blog tag editing capabilities to the \'documentTags (3)\' TV\n\n\n//mm_createTab(\'Images\', \'photos\', \'\', \'\', \'\', \'850\');\n//mm_moveFieldsToTab(\'images,photos\', \'photos\', \'\', \'\');\n\n//mm_hideFields(\'longtitle,description,link_attributes,menutitle,content\', \'\', \'6,7\');\n\n//mm_hideTemplates(\'0,5,8,9,11,12\', \'2,3\');\n\n//mm_hideTabs(\'settings, access\', \'2\');\n','0','0','0','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('2','evoSearch','<strong>0.1</strong> Вывод результатов поиска','2','none','4','0','<div class=\"search_all\">\n	<div class=\"search_title\"><a href=\"[+url+]\">[+pagetitle+]</a></div>\n	<div class=\"search_extract\">[+extract+]</div>\n</div>\n','0','0','1517407437','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('3','inc_meta','','2','none','10','0','<!DOCTYPE html>\n<html>\n<head>\n	<meta charset=\"UTF-8\">\n	<title>[*titl*]</title>\n	<meta name=\"keywords\" content=\"[*keyw*]\">\n	<meta name=\"description\" content=\"[*desc*]\">\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n	<base href=\"[(site_url)]\">\n	<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\n	<link rel=\"stylesheet\" href=\"template/css/normalize.css\">\n	<link rel=\"stylesheet\" href=\"template/css/flexslider.css\">\n	<link rel=\"stylesheet\" href=\"template/css/style.css\">\n</head>\n<body>\n	<div class=\"wrapper\">\n		<div class=\"main-content\">','0','1507023745','1512616688','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('4','inc_header','','2','none','10','0','<header>\n	<div class=\"header_inner\">\n		\n		<a href=\"[(site_url)]\" class=\"logo\">\n			<img src=\"template/img/logo.png\" alt=\"\">\n		</a>\n\n		<div class=\"social\">\n			<a href=\"\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a>\n			<a href=\"\" target=\"_blank\"><i class=\"fa fa-instagram\"></i></a>\n			<a href=\"\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a>\n		</div>	\n\n		<div class=\"lang\">[+switchLang+]</div>\n\n		<a href=\"\" class=\"burgermenu\"><img src=\"template/img/menu_icon-512.png\" alt=\"\"></a>\n		\n	</div>\n</header>\n<nav>\n	\n	[!DLMenu? &parents=\'[%RU%]\' &maxDepth=\'2\'  &outerClass=\'menu\' &innerClass=\'dowmenu\' &rowTpl=\'@CODE:<li><a href=\"[+url+]\">[+title+]</a></li>\'!]\n	<div class=\"search\">\n	<form action=\'[~93~]\' method=\"get\">\n		<input placeholder=[%Поиск%] type=\"text\" value=\"\" name=\"search\">\n		<div class=\"btn\"><i class=\"fa fa-search\"></i></div>\n	</form>\n	<a href=\"[~94~]\" class=\"header_cabinet\" target=\"_self\">[%Личный кабинет%]</a>\n	</div>\n</nav>','0','1507023969','1518078777','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('5','inc_footer','','2','none','10','0','		</div>\n<footer>	\n	<div class=\"main-footer\">\n		<a href=\"[(site_url)]\" class=\"logo\">\n			<img src=\"template/img/logo.png\" alt=\"\">\n		</a>\n		<div class=\"main-footer-info-address\">\n			<p>пр. Мира,70, г. Мариуполь, Донецкая область, 87500 Украина</p>\n			<p><a href=\"mailto:mar.v@dn.gov.ua\">mailto:mar.v@dn.gov.ua</a></p>\n			<p><a href=\"tel:15-55; +38 (067) 345-1555; +38 (050) 345-1555\">tel:15-55; +38 (067) 345-1555; +38 (050) 345-1555</a></p>\n		</div>\n		<div class=\"main-footer-social\">\n			<a href=\"\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a>\n			<a href=\"\" target=\"_blank\"><i class=\"fa fa-instagram\"></i></a>\n			<a href=\"\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a>\n		</div>\n	</div>\n</footer>\n	</div>\n	<script src=\"https://code.jquery.com/jquery.min.js\"></script>\n	<script src=\"template/js/jquery.flexslider.js\"></script>\n	<script>// Can also be used with $(document).ready()\n	$(window).load(function() {\n	  $(\'.flexslider\').flexslider({\n		animation: \"slide\",\n		nextText:\"\",\n		prevText:\"\"\n	  });\n	});</script>\n	<script>\n	$(\"nav .btn\").click(function(e){\n		//e.preventDefault();\n		$(\"nav input\").toggleClass(\"active\")\n	});\n	</script>\n	<script>\n	$(\".burgermenu\").click(function(e){\n		e.preventDefault();\n		if($(\".menu\").css(\"display\")==\"none\") {\n			$(\".menu\").slideDown().addClass(\"open-menu\");\n		}\n		else {\n			$(\".menu\").slideUp().removeClass(\"open-menu\");\n		}\n	});\n	</script>\n	<script>\n	$(document).ready(function(){    \n		$(\".feedback a\").click(function(e){\n			e.preventDefault();\n			$(\".feedback-card\").fadeIn();\n		});\n		$(\".close\").click(function(){\n			$(\".feedback-card\").fadeOut();\n		});\n	});\n	</script>\n</body>\n</html>','0','1507024691','1515580242','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('6','article.item','','2','none','12','0','<article>\n	<a class=\"article-title\" href=\"[+url+]\"></a>\n	<div class=\"article-text\">\n		<a class=\"article-img\" href=\"[+url+]\">\n			<div class=\"article-img-block\">\n				<img src=\"[[phpthumb? &input=`[+image+]` &options=`w=340,h=115,far=C,zc=1,bg=FFFFFF`]]\" alt=\"[+pagetitle+]\">\n			</div>\n			<p class=\"article-pagetitle\">[+pagetitle+]</p>\n		</a>\n		<p class=\"article-data\">[+date+]</p>\n		\n	</div>\n</article>','0','1511172636','1514378949','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('8','article-min.item','','2','none','12','0','<article>\n	<a class=\"article-min-title\" href=\"[+url+]\"></a>\n	<div class=\"article-min-text\">\n		<a class=\"article-min-img\" href=\"[+url+]\">\n			<p class=\"article-min-pagetitle\">[+pagetitle+]</p>\n			<p class=\"article-min-introtext\">[+introtext+]</p>\n			<p class=\"article-min-date\">[+date+]</p>\n		</a>\n	</div>\n</article>','0','1514376412','1514378921','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('9','feedbackForm','','2','none','0','0','<form action=\'[~[*id*]~]\' method=\"post\">\n	<input type=\"hidden\" name=\"formid\" value=\"feedbackForm\">\n	<div class=\"error\">[+validationmessage+]</div>\n	<span class=\"close\">&times;</span>\n	<input type=\"text\" name=\"name\" eform=\"Имя:string:1\" placeholder=\"name\">\n	<input type=\"email\" name=\"email\" placeholder=\"email\">\n	<textarea placeholder=\"message\" type=\"text\" name=\"message\" rows=\"17\"></textarea>\n	<button type=\"submit\" value=\"\" class=\"ask-buttom-sub\">Отправить</button>\n</form>','0','1515580760','1517906350','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('10','feedbackReport','','2','none','0','0','Письмо прислано бла-бла\n рвупзр впщзышр\n[+name+]\n[+email+]\n[+message+]','0','1515581462','1515581462','0');


# --------------------------------------------------------

#
# Table structure for table `evo_site_module_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_site_module_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_site_module_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT '0',
  `usergroup` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module users group access permission';

#
# Dumping data for table `evo_site_module_access`
#


# --------------------------------------------------------

#
# Table structure for table `evo_site_module_depobj`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_site_module_depobj`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_site_module_depobj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT '0',
  `resource` int(11) NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '10-chunks, 20-docs, 30-plugins, 40-snips, 50-tpls, 60-tvs',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Module Dependencies';

#
# Dumping data for table `evo_site_module_depobj`
#

INSERT INTO `evo_site_module_depobj` VALUES ('1','3','30','40');

INSERT INTO `evo_site_module_depobj` VALUES ('2','3','31','40');

INSERT INTO `evo_site_module_depobj` VALUES ('3','3','20','30');


# --------------------------------------------------------

#
# Table structure for table `evo_site_modules`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_site_modules`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_site_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `wrap` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to module icon',
  `enable_resource` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'enables the resource file feature',
  `resourcefile` varchar(255) NOT NULL DEFAULT '' COMMENT 'a physical link to a resource file',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  `guid` varchar(32) NOT NULL DEFAULT '' COMMENT 'globally unique identifier',
  `enable_sharedparams` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text,
  `modulecode` mediumtext COMMENT 'module boot up code',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Site Modules';

#
# Dumping data for table `evo_site_modules`
#

INSERT INTO `evo_site_modules` VALUES ('1','Extras','<strong>0.1.3</strong> first repository for Evolution CMS','0','0','3','0','0','','0','','0','0','store435243542tf542t5t','1','',' \n/**\n * Extras\n * \n * first repository for Evolution CMS\n * \n * @category	module\n * @version 	0.1.3\n * @internal	@properties\n * @internal	@guid store435243542tf542t5t	\n * @internal	@shareparams 1\n * @internal	@dependencies requires files located at /assets/modules/store/\n * @internal	@modx_category Manager and Admin\n * @internal    @installset base, sample\n * @lastupdate  25/11/2016\n */\n\n//AUTHORS: Bumkaka & Dmi3yy \ninclude_once(\'../assets/modules/store/core.php\');');

INSERT INTO `evo_site_modules` VALUES ('2','Doc Manager','<strong>1.1</strong> Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions','0','0','3','0','0','','0','','0','0','docman435243542tf542t5t','1','',' \n/**\n * Doc Manager\n * \n * Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions\n * \n * @category	module\n * @version 	1.1\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@guid docman435243542tf542t5t	\n * @internal	@shareparams 1\n * @internal	@dependencies requires files located at /assets/modules/docmanager/\n * @internal	@modx_category Manager and Admin\n * @internal    @installset base, sample\n * @lastupdate  09/04/2016\n */\n\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/docmanager.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_frontend.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_backend.class.php\');\n\n$dm = new DocManager($modx);\n$dmf = new DocManagerFrontend($dm, $modx);\n$dmb = new DocManagerBackend($dm, $modx);\n\n$dm->ph = $dm->getLang();\n$dm->ph[\'theme\'] = $dm->getTheme();\n$dm->ph[\'ajax.endpoint\'] = MODX_SITE_URL.\'assets/modules/docmanager/tv.ajax.php\';\n$dm->ph[\'datepicker.offset\'] = $modx->config[\'datepicker_offset\'];\n$dm->ph[\'datetime.format\'] = $modx->config[\'datetime_format\'];\n\nif (isset($_POST[\'tabAction\'])) {\n    $dmb->handlePostback();\n} else {\n    $dmf->getViews();\n    echo $dm->parseTemplate(\'main.tpl\', $dm->ph);\n}');

INSERT INTO `evo_site_modules` VALUES ('3','evoBabelLexicon','<strong>0.21</strong> manage Lexicon','0','0','11','0','0','','0','','0','1507651246','evobabels','1','{\n  \"lang_template_id\": [\n    {\n      \"label\": \"id шаблона языка\",\n      \"type\": \"text\",\n      \"value\": \"4\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"rel_tv_id\": [\n    {\n      \"label\": \"id TV языковых связей\",\n      \"type\": \"text\",\n      \"value\": \"4\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"currlang\": [\n    {\n      \"label\": \"язык по умолчанию\",\n      \"type\": \"text\",\n      \"value\": \"ru\",\n      \"default\": \"ru\",\n      \"desc\": \"\"\n    }\n  ],\n  \"show_panel\": [\n    {\n      \"label\": \"Показывать панель\",\n      \"type\": \"text\",\n      \"value\": \"1\",\n      \"default\": \"1\",\n      \"desc\": \"\"\n    }\n  ],\n  \"publish\": [\n    {\n      \"label\": \"Публиковать (0 -нет, 1 - да)\",\n      \"type\": \"text\",\n      \"value\": \"1\",\n      \"default\": \"0\",\n      \"desc\": \"\"\n    }\n  ],\n  \"translate_lang\": [\n    {\n      \"label\": \"язык переводов\",\n      \"type\": \"text\",\n      \"value\": \"ru\",\n      \"default\": \"ru\",\n      \"desc\": \"\"\n    }\n  ]\n}','$actions_path = MODX_BASE_URL . \'assets/snippets/evoBabel/lexicon/actions.php\';\n$lexicon_path = MODX_BASE_URL . \'assets/snippets/evoBabel/lexicon/\';\n$theme = $modx->config[\'manager_theme\'];\n//подгружаем язык\nif (is_file (MODX_BASE_PATH . \'assets/snippets/evoBabel/lang/\' . $translate_lang . \'.php\')) {\n    include_once(MODX_BASE_PATH . \'assets/snippets/evoBabel/lang/\' . $translate_lang . \'.php\');\n} else {\n    include(MODX_BASE_PATH . \'assets/snippets/evoBabel/lang/ru.php\');\n}\n\n\n$sql=\"\nCREATE TABLE IF NOT EXISTS \" . $modx->getFullTableName(\'lexicon\') . \" (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `name` varchar(255) NOT NULL DEFAULT \'\',\n  `ru` varchar(255) NOT NULL DEFAULT \'\',\n  PRIMARY KEY (`id`)\n) ENGINE=MyISAM DEFAULT CHARSET=utf8;\n\";\n$q=$modx->db->query($sql);\n\nif(isset($_POST[\'newlang\'])&&$_POST[\'newlang\'] != \'\'){\n	$newlang = $modx->db->escape($_POST[\'newlang\']);\n	$q = $modx->db->query(\"ALTER TABLE \" . $modx->getFullTableName(\'lexicon\') . \" ADD `\" . $newlang . \"` varchar(255)\");\n}\nif(isset($_POST[\'del_lang\']) && is_array($_POST[\'del_lang\'])){\n	$del_lang = $_POST[\'del_lang\'];\n	foreach ($del_lang as $k) {\n		$q = $modx->db->query(\"ALTER TABLE \" . $modx->getFullTableName(\'lexicon\') . \" DROP `\" . $k . \"`\");\n	}\n}\n\n//получаем названия колонок\n$columns = \'\';\n$lang = \'\';\n$q = $modx->db->query(\"SELECT * FROM \" . $modx->getFullTableName(\'lexicon\') . \" LIMIT 0,1\");\n$cols = $modx->db->getColumnNames($q);\nfor( $i = 0; $i < count( $cols ); $i++ ) { \n	if($cols[$i] != \'name\') {\n		if($cols[$i] == \'id\') {\n			$columns .= \'<th field=\"\' . $cols[$i] . \'\" width=\"50\" editor=\"{}\">\' . $cols[$i] . \'</th> \';\n		}\n		else{\n			$columns .= \'<th field=\"\' . $cols[$i] . \'\" width=\"50\" editor=\"{type:\\\'validatebox\\\',options:{}}\">\' . $cols[$i] . \'</th> \';\n			$langs .= \'<div><input type=\"checkbox\" name=\"del_lang[]\" value=\"\' . $cols[$i] . \'\"> \' . $cols[$i] . \'</div>\';\n		}\n	}\n}\n\n\n$output=<<<OUT\n<!DOCTYPE html>\n<html>\n<head>\n	<meta charset=\"UTF-8\">\n	<title>MODx EVO Lexicons</title>\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"media/style/{$theme}/style.css\" />\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"{$lexicon_path}jquery-easyui-1.3.4/themes/default/easyui.css\">\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"{$lexicon_path}jquery-easyui-1.3.4/themes/icon.css\">\n	<link rel=\"stylesheet\" type=\"text/css\" href=\"{$lexicon_path}jquery-easyui-1.3.4/demo/demo.css\">\n	<script type=\"text/javascript\" src=\"{$lexicon_path}jquery-easyui-1.3.4/jquery.min.js\"></script>\n	<script type=\"text/javascript\" src=\"{$lexicon_path}jquery-easyui-1.3.4/jquery.easyui.min.js\"></script>\n	<script type=\"text/javascript\" src=\"{$lexicon_path}jquery-easyui-1.3.4/plugins/jquery.edatagrid.js\"></script>\n	<script type=\"text/javascript\" src=\"{$lexicon_path}datagrid-filter/datagrid-filter.js\"></script>\n	<script type=\"text/javascript\" src=\"{$lexicon_path}jquery-easyui-1.3.4/locale/easyui-lang-ru.js\"></script>\n</head>\n<body>\n\n<div class=\"create\" style=\"padding:10px 0;\">\n	<form action=\"\" method=\"post\" id=\"lang_form\">\n		<div>{$_eb_lang[\'new_language_name\']} <input type=\"text\" name=\"newlang\" value=\"\"> <input type=\"submit\" value=\"{$_eb_lang[\'create_new_language\']}\"></div>\n	</form>\n</div>\n	<div class=\"table\" style=\"width:100%;\">\n    <table id=\"dg\" title=\"{$_eb_lang[\'translation_management\']}\" style=\"min-width:750px;width:auto;height:500px\"\n            toolbar=\"#toolbar\" pagination=\"false\" idField=\"id\"\n            rownumbers=\"true\" fitColumns=\"true\" singleSelect=\"true\">\n        <thead>\n            <tr>\n                <th field=\"name\" width=\"50\" editor=\"{type:\'validatebox\',options:{required:true}}\">{$_eb_lang[\'param_name\']}</th>\n				{$columns}\n            </tr>\n        </thead>\n    </table>\n</div>\n				\n    <div id=\"toolbar\">\n        <a href=\"javascript:void(0)\" class=\"easyui-linkbutton\" iconCls=\"icon-add\" plain=\"true\" onclick=\"javascript:$(\'#dg\').edatagrid(\'addRow\')\">{$_eb_lang[\'create\']}</a>\n        <a href=\"javascript:void(0)\" class=\"easyui-linkbutton\" iconCls=\"icon-remove\" plain=\"true\" onclick=\"javascript:$(\'#dg\').edatagrid(\'destroyRow\')\">{$_eb_lang[\'delete\']}</a>\n        <a href=\"javascript:void(0)\" class=\"easyui-linkbutton\" iconCls=\"icon-save\" plain=\"true\" onclick=\"javascript:$(\'#dg\').edatagrid(\'saveRow\')\">{$_eb_lang[\'save\']}</a>\n        <a href=\"javascript:void(0)\" class=\"easyui-linkbutton\" iconCls=\"icon-undo\" plain=\"true\" onclick=\"javascript:$(\'#dg\').edatagrid(\'cancelRow\')\">{$_eb_lang[\'cancel\']}</a>\n    </div>\n    <script type=\"text/javascript\">\n        $(function(){\n            var dg = $(\'#dg\').edatagrid({\n				url: \'{$actions_path}?action=get\',\n                saveUrl: \'{$actions_path}?action=save\',\n                updateUrl: \'{$actions_path}?action=update\',\n                destroyUrl: \'{$actions_path}?action=destroy\'\n            });\n			\n			dg.edatagrid(\'enableFilter\');\n\n        });\n    </script>\n	<p>&nbsp;</p>\n	<p><b>{$_eb_lang[\'available_languages\']}</b></p>\n	<form action=\"\" method=\"post\" id=\"del_form\">\n		<div>{$langs}<input type=\"submit\" value=\"{$_eb_lang[\'delete_languages\']}\"></div>\n	</form>\n\n</body>\n</html>\n\nOUT;\necho $output;\n');


# --------------------------------------------------------

#
# Table structure for table `evo_site_plugin_events`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_site_plugin_events`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_site_plugin_events` (
  `pluginid` int(10) NOT NULL,
  `evtid` int(10) NOT NULL DEFAULT '0',
  `priority` int(10) NOT NULL DEFAULT '0' COMMENT 'determines plugin run order',
  PRIMARY KEY (`pluginid`,`evtid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links to system events';

#
# Dumping data for table `evo_site_plugin_events`
#

INSERT INTO `evo_site_plugin_events` VALUES ('1','28','0');

INSERT INTO `evo_site_plugin_events` VALUES ('1','29','0');

INSERT INTO `evo_site_plugin_events` VALUES ('1','30','0');

INSERT INTO `evo_site_plugin_events` VALUES ('1','31','0');

INSERT INTO `evo_site_plugin_events` VALUES ('1','35','0');

INSERT INTO `evo_site_plugin_events` VALUES ('1','53','0');

INSERT INTO `evo_site_plugin_events` VALUES ('1','205','0');

INSERT INTO `evo_site_plugin_events` VALUES ('2','3','0');

INSERT INTO `evo_site_plugin_events` VALUES ('2','13','0');

INSERT INTO `evo_site_plugin_events` VALUES ('2','28','0');

INSERT INTO `evo_site_plugin_events` VALUES ('2','31','0');

INSERT INTO `evo_site_plugin_events` VALUES ('2','92','0');

INSERT INTO `evo_site_plugin_events` VALUES ('3','3','0');

INSERT INTO `evo_site_plugin_events` VALUES ('4','70','0');

INSERT INTO `evo_site_plugin_events` VALUES ('4','1000','0');

INSERT INTO `evo_site_plugin_events` VALUES ('4','202','0');

INSERT INTO `evo_site_plugin_events` VALUES ('5','4','0');

INSERT INTO `evo_site_plugin_events` VALUES ('5','90','0');

INSERT INTO `evo_site_plugin_events` VALUES ('5','1000','0');

INSERT INTO `evo_site_plugin_events` VALUES ('6','100','0');

INSERT INTO `evo_site_plugin_events` VALUES ('7','80','0');

INSERT INTO `evo_site_plugin_events` VALUES ('7','81','0');

INSERT INTO `evo_site_plugin_events` VALUES ('7','93','0');

INSERT INTO `evo_site_plugin_events` VALUES ('8','3','0');

INSERT INTO `evo_site_plugin_events` VALUES ('8','20','0');

INSERT INTO `evo_site_plugin_events` VALUES ('8','85','0');

INSERT INTO `evo_site_plugin_events` VALUES ('8','87','0');

INSERT INTO `evo_site_plugin_events` VALUES ('8','88','0');

INSERT INTO `evo_site_plugin_events` VALUES ('8','91','0');

INSERT INTO `evo_site_plugin_events` VALUES ('8','92','0');

INSERT INTO `evo_site_plugin_events` VALUES ('9','49','0');

INSERT INTO `evo_site_plugin_events` VALUES ('9','51','0');

INSERT INTO `evo_site_plugin_events` VALUES ('9','55','0');

INSERT INTO `evo_site_plugin_events` VALUES ('9','57','0');

INSERT INTO `evo_site_plugin_events` VALUES ('9','43','0');

INSERT INTO `evo_site_plugin_events` VALUES ('9','45','0');

INSERT INTO `evo_site_plugin_events` VALUES ('9','37','0');

INSERT INTO `evo_site_plugin_events` VALUES ('9','39','0');

INSERT INTO `evo_site_plugin_events` VALUES ('9','77','0');

INSERT INTO `evo_site_plugin_events` VALUES ('9','75','0');

INSERT INTO `evo_site_plugin_events` VALUES ('9','25','0');

INSERT INTO `evo_site_plugin_events` VALUES ('9','27','0');

INSERT INTO `evo_site_plugin_events` VALUES ('9','211','0');

INSERT INTO `evo_site_plugin_events` VALUES ('9','210','0');

INSERT INTO `evo_site_plugin_events` VALUES ('9','206','0');

INSERT INTO `evo_site_plugin_events` VALUES ('10','23','0');

INSERT INTO `evo_site_plugin_events` VALUES ('10','29','0');

INSERT INTO `evo_site_plugin_events` VALUES ('10','35','0');

INSERT INTO `evo_site_plugin_events` VALUES ('10','41','0');

INSERT INTO `evo_site_plugin_events` VALUES ('10','47','0');

INSERT INTO `evo_site_plugin_events` VALUES ('10','73','0');

INSERT INTO `evo_site_plugin_events` VALUES ('10','88','0');

INSERT INTO `evo_site_plugin_events` VALUES ('11','34','0');

INSERT INTO `evo_site_plugin_events` VALUES ('11','35','0');

INSERT INTO `evo_site_plugin_events` VALUES ('11','36','0');

INSERT INTO `evo_site_plugin_events` VALUES ('11','40','0');

INSERT INTO `evo_site_plugin_events` VALUES ('11','41','0');

INSERT INTO `evo_site_plugin_events` VALUES ('11','42','0');

INSERT INTO `evo_site_plugin_events` VALUES ('12','31','0');

INSERT INTO `evo_site_plugin_events` VALUES ('13','98','0');

INSERT INTO `evo_site_plugin_events` VALUES ('14','201','0');

INSERT INTO `evo_site_plugin_events` VALUES ('15','23','0');

INSERT INTO `evo_site_plugin_events` VALUES ('15','29','0');

INSERT INTO `evo_site_plugin_events` VALUES ('15','35','0');

INSERT INTO `evo_site_plugin_events` VALUES ('15','41','0');

INSERT INTO `evo_site_plugin_events` VALUES ('15','47','0');

INSERT INTO `evo_site_plugin_events` VALUES ('16','23','0');

INSERT INTO `evo_site_plugin_events` VALUES ('16','25','0');

INSERT INTO `evo_site_plugin_events` VALUES ('16','27','0');

INSERT INTO `evo_site_plugin_events` VALUES ('16','29','0');

INSERT INTO `evo_site_plugin_events` VALUES ('16','31','0');

INSERT INTO `evo_site_plugin_events` VALUES ('16','33','0');

INSERT INTO `evo_site_plugin_events` VALUES ('16','35','0');

INSERT INTO `evo_site_plugin_events` VALUES ('16','37','0');

INSERT INTO `evo_site_plugin_events` VALUES ('16','39','0');

INSERT INTO `evo_site_plugin_events` VALUES ('16','41','0');

INSERT INTO `evo_site_plugin_events` VALUES ('16','43','0');

INSERT INTO `evo_site_plugin_events` VALUES ('16','45','0');

INSERT INTO `evo_site_plugin_events` VALUES ('16','47','0');

INSERT INTO `evo_site_plugin_events` VALUES ('16','49','0');

INSERT INTO `evo_site_plugin_events` VALUES ('16','51','0');

INSERT INTO `evo_site_plugin_events` VALUES ('16','73','0');

INSERT INTO `evo_site_plugin_events` VALUES ('16','75','0');

INSERT INTO `evo_site_plugin_events` VALUES ('16','77','0');

INSERT INTO `evo_site_plugin_events` VALUES ('17','1001','0');

INSERT INTO `evo_site_plugin_events` VALUES ('18','98','0');

INSERT INTO `evo_site_plugin_events` VALUES ('18','29','0');

INSERT INTO `evo_site_plugin_events` VALUES ('20','90','0');

INSERT INTO `evo_site_plugin_events` VALUES ('20','31','0');

INSERT INTO `evo_site_plugin_events` VALUES ('20','205','0');

INSERT INTO `evo_site_plugin_events` VALUES ('20','1000','0');

INSERT INTO `evo_site_plugin_events` VALUES ('20','98','0');

INSERT INTO `evo_site_plugin_events` VALUES ('20','97','0');

INSERT INTO `evo_site_plugin_events` VALUES ('21','92','0');

INSERT INTO `evo_site_plugin_events` VALUES ('21','108','0');

INSERT INTO `evo_site_plugin_events` VALUES ('22','29','0');

INSERT INTO `evo_site_plugin_events` VALUES ('22','30','0');

INSERT INTO `evo_site_plugin_events` VALUES ('23','4','0');

INSERT INTO `evo_site_plugin_events` VALUES ('23','90','0');

INSERT INTO `evo_site_plugin_events` VALUES ('23','1000','0');


# --------------------------------------------------------

#
# Table structure for table `evo_site_plugins`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_site_plugins`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_site_plugins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Plugin',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `plugincode` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `disabled` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Disables the plugin',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='Contains the site plugins.';

#
# Dumping data for table `evo_site_plugins`
#

INSERT INTO `evo_site_plugins` VALUES ('1','ManagerManager','<strong>0.6.2</strong> Customize the EVO Manager to offer bespoke admin functions for end users or manipulate the display of document fields in the manager.','0','3','0','\n/**\n * ManagerManager\n *\n * Customize the EVO Manager to offer bespoke admin functions for end users or manipulate the display of document fields in the manager.\n *\n * @category plugin\n * @version 0.6.2\n * @license http://creativecommons.org/licenses/GPL/2.0/ GNU Public License (GPL v2)\n * @internal @properties &remove_deprecated_tv_types_pref=Remove deprecated TV types;list;yes,no;yes &config_chunk=Configuration Chunk;text;mm_rules\n * @internal @events OnDocFormRender,OnDocFormPrerender,OnBeforeDocFormSave,OnDocFormSave,OnDocDuplicate,OnPluginFormRender,OnTVFormRender\n * @internal @modx_category Manager and Admin\n * @internal @installset base\n * @internal @legacy_names Image TV Preview, Show Image TVs\n * @reportissues https://github.com/DivanDesign/MODXEvo.plugin.ManagerManager/\n * @documentation README [+site_url+]assets/plugins/managermanager/readme.html\n * @documentation Official docs http://code.divandesign.biz/modx/managermanager\n * @link        Latest version http://code.divandesign.biz/modx/managermanager\n * @link        Additional tools http://code.divandesign.biz/modx\n * @link        Full changelog http://code.divandesign.biz/modx/managermanager/changelog\n * @author      Inspired by: HideEditor plugin by Timon Reinhard and Gildas; HideManagerFields by Brett @ The Man Can!\n * @author      DivanDesign studio http://www.DivanDesign.biz\n * @author      Nick Crossland http://www.rckt.co.uk\n * @author      Many others\n * @lastupdate  06/03/2016\n */\n\n// Run the main code\ninclude($modx->config[\'base_path\'].\'assets/plugins/managermanager/mm.inc.php\');','0','{\"remove_deprecated_tv_types_pref\":[{\"label\":\"Remove deprecated TV types\",\"type\":\"list\",\"value\":\"yes\",\"options\":\"yes,no\",\"default\":\"yes\",\"desc\":\"\"}],\"config_chunk\":[{\"label\":\"Configuration Chunk\",\"type\":\"text\",\"value\":\"mm_rules\",\"default\":\"mm_rules\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('2','Quick Manager+','<strong>1.5.8</strong> Enables QuickManager+ front end content editing support','0','3','0','\n/**\n * Quick Manager+\n * \n * Enables QuickManager+ front end content editing support\n *\n * @category 	plugin\n * @version 	1.5.8\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL v3)\n * @internal    @properties &jqpath=Path to jQuery;text;assets/js/jquery.min.js &loadmanagerjq=Load jQuery in manager;list;true,false;false &loadfrontendjq=Load jQuery in front-end;list;true,false;true &noconflictjq=jQuery noConflict mode in front-end;list;true,false;true &loadfa=Load Font Awesome css in front-end;list;true,false;true &loadtb=Load modal box in front-end;list;true,false;true &tbwidth=Modal box window width;text;80% &tbheight=Modal box window height;text;90% &hidefields=Hide document fields from front-end editors;text;parent &hidetabs=Hide document tabs from front-end editors;text; &hidesections=Hide document sections from front-end editors;text; &addbutton=Show add document here button;list;true,false;true &tpltype=New document template type;list;parent,id,selected;parent &tplid=New document template id;int;3 &custombutton=Custom buttons;textarea; &managerbutton=Show go to manager button;list;true,false;true &logout=Logout to;list;manager,front-end;manager &disabled=Plugin disabled on documents;text; &autohide=Autohide toolbar;list;true,false;true &position= Toolbar position;list;top,right,bottom,left,before;top &editbuttons=Inline edit buttons;list;true,false;false &editbclass=Edit button CSS class;text;qm-edit &newbuttons=Inline new resource buttons;list;true,false;false &newbclass=New resource button CSS class;text;qm-new &tvbuttons=Inline template variable buttons;list;true,false;false &tvbclass=Template variable button CSS class;text;qm-tv &removeBg=Remove toolbar background;list;yes,no;no &buttonStyle=QuickManager buttons CSS stylesheet;list;actionButtons,navButtons;actionButtons  \n * @internal	@events OnParseDocument,OnWebPagePrerender,OnDocFormPrerender,OnDocFormSave,OnManagerLogout \n * @internal	@modx_category Manager and Admin\n * @internal    @legacy_names QM+,QuickEdit\n * @internal    @installset base, sample\n * @internal    @disabled 1\n * @reportissues https://github.com/modxcms/evolution\n * @documentation Official docs [+site_url+]assets/plugins/qm/readme.html\n * @link        http://www.maagit.fi/modx/quickmanager-plus\n * @author      Mikko Lammi\n * @author      Since 2011: yama, dmi3yy, segr, Nicola1971.\n * @lastupdate  21/08/2017 \n */\n\n// In manager\nif (!$modx->checkSession()) return;\n\n$show = TRUE;\n\nif ($disabled  != \'\') {\n    $arr = array_filter(array_map(\'intval\', explode(\',\', $disabled)));\n    if (in_array($modx->documentIdentifier, $arr)) {\n        $show = FALSE;\n    }\n}\n\nif ($show) {\n    // Replace [*#tv*] with QM+ edit TV button placeholders\n    if ($tvbuttons == \'true\') {\n        if ($modx->event->name == \'OnParseDocument\') {\n             $output = &$modx->documentOutput;\n             $output = preg_replace(\'~\\[\\*#(.*?)\\*\\]~\', \'<!-- \'.$tvbclass.\' $1 -->[*$1*]\', $output);\n             $modx->documentOutput = $output;\n         }\n     }\n    include_once($modx->config[\'base_path\'].\'assets/plugins/qm/qm.inc.php\');\n    $qm = new Qm($modx, $jqpath, $loadmanagerjq, $loadfrontendjq, $noconflictjq, $loadfa, $loadtb, $tbwidth, $tbheight, $hidefields, $hidetabs, $hidesections, $addbutton, $tpltype, $tplid, $custombutton, $managerbutton, $logout, $autohide, $position, $editbuttons, $editbclass, $newbuttons, $newbclass, $tvbuttons, $tvbclass, $buttonStyle, $removeBg);\n}\n','0','{\"jqpath\":[{\"label\":\"Path to jQuery\",\"type\":\"text\",\"value\":\"assets\\/js\\/jquery.min.js\",\"default\":\"assets\\/js\\/jquery.min.js\",\"desc\":\"\"}],\"loadmanagerjq\":[{\"label\":\"Load jQuery in manager\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"loadfrontendjq\":[{\"label\":\"Load jQuery in front-end\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"noconflictjq\":[{\"label\":\"jQuery noConflict mode in front-end\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"loadfa\":[{\"label\":\"Load Font Awesome css in front-end\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"loadtb\":[{\"label\":\"Load modal box in front-end\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"tbwidth\":[{\"label\":\"Modal box window width\",\"type\":\"text\",\"value\":\"80%\",\"default\":\"80%\",\"desc\":\"\"}],\"tbheight\":[{\"label\":\"Modal box window height\",\"type\":\"text\",\"value\":\"90%\",\"default\":\"90%\",\"desc\":\"\"}],\"hidefields\":[{\"label\":\"Hide document fields from front-end editors\",\"type\":\"text\",\"value\":\"parent\",\"default\":\"parent\",\"desc\":\"\"}],\"hidetabs\":[{\"label\":\"Hide document tabs from front-end editors\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"hidesections\":[{\"label\":\"Hide document sections from front-end editors\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"addbutton\":[{\"label\":\"Show add document here button\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"tpltype\":[{\"label\":\"New document template type\",\"type\":\"list\",\"value\":\"parent\",\"options\":\"parent,id,selected\",\"default\":\"parent\",\"desc\":\"\"}],\"tplid\":[{\"label\":\"New document template id\",\"type\":\"int\",\"value\":\"3\",\"default\":\"3\",\"desc\":\"\"}],\"custombutton\":[{\"label\":\"Custom buttons\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"managerbutton\":[{\"label\":\"Show go to manager button\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"logout\":[{\"label\":\"Logout to\",\"type\":\"list\",\"value\":\"manager\",\"options\":\"manager,front-end\",\"default\":\"manager\",\"desc\":\"\"}],\"disabled\":[{\"label\":\"Plugin disabled on documents\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"autohide\":[{\"label\":\"Autohide toolbar\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"position\":[{\"label\":\"Toolbar position\",\"type\":\"list\",\"value\":\"top\",\"options\":\"top,right,bottom,left,before\",\"default\":\"top\",\"desc\":\"\"}],\"editbuttons\":[{\"label\":\"Inline edit buttons\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"editbclass\":[{\"label\":\"Edit button CSS class\",\"type\":\"text\",\"value\":\"qm-edit\",\"default\":\"qm-edit\",\"desc\":\"\"}],\"newbuttons\":[{\"label\":\"Inline new resource buttons\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"newbclass\":[{\"label\":\"New resource button CSS class\",\"type\":\"text\",\"value\":\"qm-new\",\"default\":\"qm-new\",\"desc\":\"\"}],\"tvbuttons\":[{\"label\":\"Inline template variable buttons\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"tvbclass\":[{\"label\":\"Template variable button CSS class\",\"type\":\"text\",\"value\":\"qm-tv\",\"default\":\"qm-tv\",\"desc\":\"\"}],\"removeBg\":[{\"label\":\"Remove toolbar background\",\"type\":\"list\",\"value\":\"no\",\"options\":\"yes,no\",\"default\":\"no\",\"desc\":\"\"}],\"buttonStyle\":[{\"label\":\"QuickManager buttons CSS stylesheet\",\"type\":\"list\",\"value\":\"actionButtons\",\"options\":\"actionButtons,navButtons\",\"default\":\"actionButtons\",\"desc\":\"\"}]}','1','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('3','Search Highlight','<strong>1.5</strong> Used with AjaxSearch to show search terms highlighted on page linked from search results','0','4','0','/**\n * Search Highlight\n * \n * Used with AjaxSearch to show search terms highlighted on page linked from search results\n *\n * @category 	plugin\n * @version 	1.5\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@events OnWebPagePrerender \n * @internal	@modx_category Search\n * @internal    @legacy_names Search Highlighting\n * @internal    @installset base, sample\n * @internal    @disabled 1\n */\n \n /*\n  ------------------------------------------------------------------------\n  Plugin: Search_Highlight v1.5\n  ------------------------------------------------------------------------\n  Changes:\n  18/03/10 - Remove possibility of XSS attempts being passed in the URL\n           - look-behind assertion improved\n  29/03/09 - Removed urldecode calls;\n           - Added check for magic quotes - if set, remove slashes\n           - Highlights terms searched for when target is a HTML entity\n  18/07/08 - advSearch parameter and pcre modifier added\n  10/02/08 - Strip_tags added to avoid sql injection and XSS. Use of $_REQUEST\n  01/03/07 - Added fies/updates from forum from users mikkelwe/identity\n  (better highlight replacement, additional div around term/removal message)\n  ------------------------------------------------------------------------\n  Description: When a user clicks on the link from the AjaxSearch results\n    the target page will have the terms highlighted.\n  ------------------------------------------------------------------------\n  Created By:  Susan Ottwell (sottwell@sottwell.com)\n               Kyle Jaebker (kjaebker@muddydogpaws.com)\n\n  Refactored by Coroico (www.evo.wangba.fr) and TS\n  ------------------------------------------------------------------------\n  Based off the the code by Susan Ottwell (www.sottwell.com)\n    http://forums.modx.com/thread/47775/plugin-highlight-search-terms\n  ------------------------------------------------------------------------\n  CSS:\n    The classes used for the highlighting are the same as the AjaxSearch\n  ------------------------------------------------------------------------\n  Notes:\n    To add a link to remove the highlighting and to show the searchterms\n    put the following on your page where you would like this to appear:\n\n      <!--search_terms-->\n\n    Example output for this:\n\n      Search Terms: the, template\n      Remove Highlighting\n\n    Set the following variables to change the text:\n\n      $termText - the text before the search terms\n      $removeText - the text for the remove link\n  ------------------------------------------------------------------------\n*/\nglobal $database_connection_charset;\n// Conversion code name between html page character encoding and Mysql character encoding\n// Some others conversions should be added if needed. Otherwise Page charset = Database charset\n$pageCharset = array(\n  \'utf8\' => \'UTF-8\',\n  \'latin1\' => \'ISO-8859-1\',\n  \'latin2\' => \'ISO-8859-2\'\n);\n\nif (isset($_REQUEST[\'searched\']) && isset($_REQUEST[\'highlight\'])) {\n\n  // Set these to customize the text for the highlighting key\n  // --------------------------------------------------------\n     $termText = \'<div class=\"searchTerms\">Search Terms: \';\n     $removeText = \'Remove Highlighting\';\n  // --------------------------------------------------------\n\n  $highlightText = $termText;\n  $advsearch = \'oneword\';\n\n  $dbCharset = $database_connection_charset;\n  $pgCharset = array_key_exists($dbCharset,$pageCharset) ? $pageCharset[$dbCharset] : $dbCharset;\n\n  $searched = strip_tags($_REQUEST[\'searched\']);\n  $highlight = strip_tags($_REQUEST[\'highlight\']);\n  if (isset($_REQUEST[\'advsearch\'])) $advsearch = strip_tags($_REQUEST[\'advsearch\']);\n\n\n  if ($advsearch != \'nowords\') {\n\n    $searchArray = array();\n    if ($advsearch == \'exactphrase\') $searchArray[0] = $searched;\n    else $searchArray = explode(\' \', $searched);\n\n    $searchArray = array_unique($searchArray);\n    $nbterms = count($searchArray);\n    $searchTerms = array();\n    for($i=0;$i<$nbterms;$i++){\n      // Consider all possible combinations\n      $word_ents = array();\n      $word_ents[] = $searchArray[$i];\n      $word_ents[] = htmlentities($searchArray[$i], ENT_NOQUOTES, $pgCharset);\n      $word_ents[] = htmlentities($searchArray[$i], ENT_COMPAT, $pgCharset);\n      $word_ents[] = htmlentities($searchArray[$i], ENT_QUOTES, $pgCharset);\n      // Avoid duplication\n      $word_ents = array_unique($word_ents);\n      foreach($word_ents as $word) $searchTerms[]= array(\'term\' => $word, \'class\' => $i+1);\n    }\n\n    $output = $modx->documentOutput; // get the parsed document\n    $body = explode(\"<body\", $output); // break out the head\n\n    $highlightClass = explode(\' \',$highlight); // break out the highlight classes\n    /* remove possibility of XSS attempts being passed in URL */\n    foreach ($highlightClass as $key => $value) {\n       $highlightClass[$key] = preg_match(\'/[^A-Za-z0-9_-]/ms\', $value) == 1 ? \'\' : $value;\n    }\n\n    $pcreModifier = ($pgCharset == \'UTF-8\') ? \'iu\' : \'i\';\n    $lookBehind = \'/(?<!&|&[\\w#]|&[\\w#]\\w|&[\\w#]\\w\\w|&[\\w#]\\w\\w\\w|&[\\w#]\\w\\w\\w\\w|&[\\w#]\\w\\w\\w\\w\\w)\';  // avoid a match with a html entity\n    $lookAhead = \'(?=[^>]*<)/\'; // avoid a match with a html tag\n\n    $nbterms = count($searchTerms);\n    for($i=0;$i<$nbterms;$i++){\n      $word = $searchTerms[$i][\'term\'];\n      $class = $highlightClass[0].\' \'.$highlightClass[$searchTerms[$i][\'class\']];\n\n      $highlightText .= ($i > 0) ? \', \' : \'\';\n      $highlightText .= \'<span class=\"\'.$class.\'\">\'.$word.\'</span>\';\n\n      $pattern = $lookBehind . preg_quote($word, \'/\') . $lookAhead . $pcreModifier;\n      $replacement = \'<span class=\"\' . $class . \'\">${0}</span>\';\n      $body[1] = preg_replace($pattern, $replacement, $body[1]);\n    }\n\n    $output = implode(\"<body\", $body);\n\n    $removeUrl = $modx->makeUrl($modx->documentIdentifier);\n    $highlightText .= \'<br /><a href=\"\'.$removeUrl.\'\" class=\"ajaxSearch_removeHighlight\">\'.$removeText.\'</a></div>\';\n\n    $output = str_replace(\'<!--search_terms-->\',$highlightText,$output);\n    $modx->documentOutput = $output;\n  }\n}','0','','1','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('4','Updater','<strong>0.7</strong> show message about outdated CMS version','0','3','0','require MODX_BASE_PATH.\'assets/plugins/updater/plugin.updater.php\';','0','{\n  \"showButton\": [\n    {\n      \"label\": \"Show Update Button:\",\n      \"type\": \"menu\",\n      \"value\": \"AdminOnly\",\n      \"options\": \"show,hide,AdminOnly\",\n      \"default\": \"AdminOnly\",\n      \"desc\": \"\"\n    }\n  ],\n  \"type\": [\n    {\n      \"label\": \"Type:\",\n      \"type\": \"menu\",\n      \"value\": \"tags\",\n      \"options\": \"tags,releases,commits\",\n      \"default\": \"tags\",\n      \"desc\": \"\"\n    }\n  ]\n}','0',' ','0','1507025660');

INSERT INTO `evo_site_plugins` VALUES ('5','userHelper','<strong>1.7.8</strong> addition to FormLister','0','0','0','\n/**\n * userHelper\n * \n * addition to FormLister\n * \n * @category    plugin\n * @version     1.7.8\n * @internal    @properties &logoutKey=Request key;text;logout &cookieName=Cookie Name;text;WebLoginPE &cookieLifetime=Cookie Lifetime, seconds;text;157680000 &maxFails=Max failed logins;text;3 &blockTime=Block for, seconds;text;3600\n * @internal    @events OnWebPageInit,OnPageNotFound,OnWebLogin\n * @internal    @disabled 1\n**/\n\nrequire MODX_BASE_PATH.\'assets/snippets/FormLister/plugin.userHelper.php\';','0','{\"logoutKey\":[{\"label\":\"Request key\",\"type\":\"text\",\"value\":\"logout\",\"default\":\"logout\",\"desc\":\"\"}],\"cookieName\":[{\"label\":\"Cookie Name\",\"type\":\"text\",\"value\":\"WebLoginPE\",\"default\":\"WebLoginPE\",\"desc\":\"\"}],\"cookieLifetime\":[{\"label\":\"Cookie Lifetime, seconds\",\"type\":\"text\",\"value\":\"157680000\",\"default\":\"157680000\",\"desc\":\"\"}],\"maxFails\":[{\"label\":\"Max failed logins\",\"type\":\"text\",\"value\":\"3\",\"default\":\"3\",\"desc\":\"\"}],\"blockTime\":[{\"label\":\"Block for, seconds\",\"type\":\"text\",\"value\":\"3600\",\"default\":\"3600\",\"desc\":\"\"}]}','1','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('6','TransAlias','<strong>1.0.4</strong> Human readible URL translation supporting multiple languages and overrides','0','3','0','require MODX_BASE_PATH.\'assets/plugins/transalias/plugin.transalias.php\';','0','{\"table_name\":[{\"label\":\"Trans table\",\"type\":\"list\",\"value\":\"russian\",\"options\":\"common,russian,dutch,german,czech,utf8,utf8lowercase\",\"default\":\"russian\",\"desc\":\"\"}],\"char_restrict\":[{\"label\":\"Restrict alias to\",\"type\":\"list\",\"value\":\"lowercase alphanumeric\",\"options\":\"lowercase alphanumeric,alphanumeric,legal characters\",\"default\":\"lowercase alphanumeric\",\"desc\":\"\"}],\"remove_periods\":[{\"label\":\"Remove Periods\",\"type\":\"list\",\"value\":\"No\",\"options\":\"Yes,No\",\"default\":\"No\",\"desc\":\"\"}],\"word_separator\":[{\"label\":\"Word Separator\",\"type\":\"list\",\"value\":\"dash\",\"options\":\"dash,underscore,none\",\"default\":\"dash\",\"desc\":\"\"}],\"override_tv\":[{\"label\":\"Override TV name\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('7','Forgot Manager Login','<strong>1.1.6</strong> Resets your manager login when you forget your password via email confirmation','0','3','0','require MODX_BASE_PATH.\'assets/plugins/forgotmanagerlogin/plugin.forgotmanagerlogin.php\';','0','','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('8','TinyMCE4','<strong>4.6.3</strong> Javascript WYSIWYG editor','0','3','0','require MODX_BASE_PATH.\'assets/plugins/tinymce4/plugin.tinymce.php\';','0','{\"styleFormats\":[{\"label\":\"Custom Style Formats <b>RAW<\\/b><br\\/><br\\/><ul><li>leave empty to use below block\\/inline formats<\\/li><li>allows simple-format: <i>Title,cssClass|Title2,cssClass2<\\/i><\\/li><li>Also accepts full JSON-config as per TinyMCE4 docs \\/ configure \\/ content-formating \\/ style_formats<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"styleFormats_inline\":[{\"label\":\"Custom Style Formats <b>INLINE<\\/b><br\\/><br\\/><ul><li>will wrap selected text with span-tag + css-class<\\/li><li>simple-format only<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"InlineTitle,cssClass1|InlineTitle2,cssClass2\",\"default\":\"InlineTitle,cssClass1|InlineTitle2,cssClass2\",\"desc\":\"\"}],\"styleFormats_block\":[{\"label\":\"Custom Style Formats <b>BLOCK<\\/b><br\\/><br\\/><ul><li>will add css-class to selected block-element<\\/li><li>simple-format only<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"BlockTitle,cssClass3|BlockTitle2,cssClass4\",\"default\":\"BlockTitle,cssClass3|BlockTitle2,cssClass4\",\"desc\":\"\"}],\"customParams\":[{\"label\":\"Custom Parameters<br\\/><b>(Be careful or leave empty!)<\\/b>\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"entityEncoding\":[{\"label\":\"Entity Encoding\",\"type\":\"list\",\"value\":\"named\",\"options\":\"named,numeric,raw\",\"default\":\"named\",\"desc\":\"\"}],\"entities\":[{\"label\":\"Entities\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"pathOptions\":[{\"label\":\"Path Options\",\"type\":\"list\",\"value\":\"Site config\",\"options\":\"Site config,Absolute path,Root relative,URL,No convert\",\"default\":\"Site config\",\"desc\":\"\"}],\"resizing\":[{\"label\":\"Advanced Resizing\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"disabledButtons\":[{\"label\":\"Disabled Buttons\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webTheme\":[{\"label\":\"Web Theme\",\"type\":\"test\",\"value\":\"webuser\",\"default\":\"webuser\",\"desc\":\"\"}],\"webPlugins\":[{\"label\":\"Web Plugins\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webButtons1\":[{\"label\":\"Web Buttons 1\",\"type\":\"text\",\"value\":\"bold italic underline strikethrough removeformat alignleft aligncenter alignright\",\"default\":\"bold italic underline strikethrough removeformat alignleft aligncenter alignright\",\"desc\":\"\"}],\"webButtons2\":[{\"label\":\"Web Buttons 2\",\"type\":\"text\",\"value\":\"link unlink image undo redo\",\"default\":\"link unlink image undo redo\",\"desc\":\"\"}],\"webButtons3\":[{\"label\":\"Web Buttons 3\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webButtons4\":[{\"label\":\"Web Buttons 4\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webAlign\":[{\"label\":\"Web Toolbar Alignment\",\"type\":\"list\",\"value\":\"ltr\",\"options\":\"ltr,rtl\",\"default\":\"ltr\",\"desc\":\"\"}],\"width\":[{\"label\":\"Width\",\"type\":\"text\",\"value\":\"100%\",\"default\":\"100%\",\"desc\":\"\"}],\"height\":[{\"label\":\"Height\",\"type\":\"text\",\"value\":\"400px\",\"default\":\"400px\",\"desc\":\"\"}],\"introtextRte\":[{\"label\":\"<b>Introtext RTE<\\/b><br\\/>add richtext-features to \\\"introtext\\\"\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"inlineMode\":[{\"label\":\"<b>Inline-Mode<\\/b>\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"inlineTheme\":[{\"label\":\"<b>Inline-Mode<\\/b><br\\/>Theme\",\"type\":\"text\",\"value\":\"inline\",\"default\":\"inline\",\"desc\":\"\"}],\"browser_spellcheck\":[{\"label\":\"<b>Browser Spellcheck<\\/b><br\\/>At least one dictionary must be installed inside your browser\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('9','ElementsInTree','<strong>1.5.8</strong> Get access to all Elements and Modules inside Manager sidebar','0','3','0','require MODX_BASE_PATH.\'assets/plugins/elementsintree/plugin.elementsintree.php\';','0','{\n  \"adminRoleOnly\": [\n    {\n      \"label\": \"Administrators only\",\n      \"type\": \"list\",\n      \"value\": \"yes\",\n      \"options\": \"yes,no\",\n      \"default\": \"yes\",\n      \"desc\": \"\"\n    }\n  ],\n  \"treeButtonsInTab\": [\n    {\n      \"label\": \"Tree buttons in tab\",\n      \"type\": \"list\",\n      \"value\": \"yes\",\n      \"options\": \"yes,no\",\n      \"default\": \"yes\",\n      \"desc\": \"\"\n    }\n  ],\n  \"useIcons\": [\n    {\n      \"label\": \"Tab icons\",\n      \"type\": \"list\",\n      \"value\": \"yes\",\n      \"options\": \"yes,no\",\n      \"default\": \"yes\",\n      \"desc\": \"\"\n    }\n  ],\n  \"unifyFrames\": [\n    {\n      \"label\": \"Unify frames\",\n      \"type\": \"list\",\n      \"value\": \"yes\",\n      \"options\": \"yes,no\",\n      \"default\": \"yes\",\n      \"desc\": \"\"\n    }\n  ],\n  \"tabTreeTitle\": [\n    {\n      \"label\": \"Tree tab title\",\n      \"type\": \"text\",\n      \"value\": \"Site\",\n      \"default\": \"Site\",\n      \"desc\": \"\"\n    }\n  ]\n}','0',' ','0','1507021073');

INSERT INTO `evo_site_plugins` VALUES ('10','CodeMirror','<strong>1.4</strong> JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.12','0','3','0','\n/**\n * CodeMirror\n *\n * JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.12\n *\n * @category    plugin\n * @version     1.4\n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @package     modx\n * @internal    @events OnDocFormRender,OnChunkFormRender,OnModFormRender,OnPluginFormRender,OnSnipFormRender,OnTempFormRender,OnRichTextEditorInit\n * @internal    @modx_category Manager and Admin\n * @internal    @properties &theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;default &darktheme=Dark Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;one-dark &fontSize=Font-size;list;10,11,12,13,14,15,16,17,18;14 &lineHeight=Line-height;list;1,1.1,1.2,1.3,1.4,1.5;1.3 &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;true &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;false &indentWithTabs=indentWithTabs;list;true,false;true &undoDepth=undoDepth;int;200 &historyEventDelay=historyEventDelay;int;1250\n * @internal    @installset base\n * @reportissues https://github.com/evolution-cms/evolution\n * @documentation Official docs https://codemirror.net/doc/manual.html\n * @author      hansek from http://www.modxcms.cz\n * @author      update Mihanik71\n * @author      update Deesen\n * @author      update 64j\n * @lastupdate  3/07/2017\n */\n\n$_CM_BASE = \'assets/plugins/codemirror/\';\n\n$_CM_URL = $modx->config[\'site_url\'] . $_CM_BASE;\n\nrequire(MODX_BASE_PATH. $_CM_BASE .\'codemirror.plugin.php\');\n','0','{\"theme\":[{\"label\":\"Theme\",\"type\":\"list\",\"value\":\"default\",\"options\":\"default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light\",\"default\":\"default\",\"desc\":\"\"}],\"darktheme\":[{\"label\":\"Dark Theme\",\"type\":\"list\",\"value\":\"one-dark\",\"options\":\"default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light\",\"default\":\"one-dark\",\"desc\":\"\"}],\"fontSize\":[{\"label\":\"Font-size\",\"type\":\"list\",\"value\":\"14\",\"options\":\"10,11,12,13,14,15,16,17,18\",\"default\":\"14\",\"desc\":\"\"}],\"lineHeight\":[{\"label\":\"Line-height\",\"type\":\"list\",\"value\":\"1.3\",\"options\":\"1,1.1,1.2,1.3,1.4,1.5\",\"default\":\"1.3\",\"desc\":\"\"}],\"indentUnit\":[{\"label\":\"Indent unit\",\"type\":\"int\",\"value\":\"4\",\"default\":\"4\",\"desc\":\"\"}],\"tabSize\":[{\"label\":\"The width of a tab character\",\"type\":\"int\",\"value\":\"4\",\"default\":\"4\",\"desc\":\"\"}],\"lineWrapping\":[{\"label\":\"lineWrapping\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"matchBrackets\":[{\"label\":\"matchBrackets\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"activeLine\":[{\"label\":\"activeLine\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"emmet\":[{\"label\":\"emmet\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"search\":[{\"label\":\"search\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"indentWithTabs\":[{\"label\":\"indentWithTabs\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"undoDepth\":[{\"label\":\"undoDepth\",\"type\":\"int\",\"value\":\"200\",\"default\":\"200\",\"desc\":\"\"}],\"historyEventDelay\":[{\"label\":\"historyEventDelay\",\"type\":\"int\",\"value\":\"1250\",\"default\":\"1250\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('11','FileSource','<strong>0.1</strong> Save snippet and plugins to file','0','3','0','require MODX_BASE_PATH.\'assets/plugins/filesource/plugin.filesource.php\';','0','','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('12','evoSearch','<strong>0.1</strong> Плагин для индексации и поиска','0','4','0','/**\n * до первого запуска сниппета на фронтэнде сайта необходимо запустить индексацию (сохранить любой ресурс в админке)\n *\n * индексация запускается сохранением любого ресурса (вызовом события onDocFormSave)\n *\n * при первом запуске индексации или необходимости переиндексации необходимо выставить параметр \"Переиндексировать все\" = 1, начальные строки и количество строк за сеанс устанавливаются в зависимости от \n * возможностей вашего хостинга (например 0 и 10 000 соответственно - проиндексирует строки с 0 в количестве 10 000 штук в БД\n * необходимо открыть и пересохранить любой документ для создания события onDocFormSave\n *\n * для последующей работы установите \"Переиндексировать все\" = 0, \"Строк за сеанс индексировать\" = 1 \n * при этом происходит переиндксация только того документа, который сохраняется\n *\n * индексируются pagetitle,longtitle,description,introtext.content и указанные явно в плагине ТВ (по именам через запятую)\n *\n*/\n\nrequire_once MODX_BASE_PATH . \"assets/plugins/evoSearch/evoSearch.plugin.php\";\n','0','{\"offset\":[{\"label\":\"Первая строка переиндексации\",\"type\":\"text\",\"value\":\"0\",\"default\":\"0\",\"desc\":\"\"}],\"rowsperonce\":[{\"label\":\"Строк за сеанс индексировать\",\"type\":\"text\",\"value\":\"1\",\"default\":\"1\",\"desc\":\"\"}],\"reindex\":[{\"label\":\"Переиндексировать все\",\"type\":\"text\",\"value\":\"0\",\"default\":\"0\",\"desc\":\"\"}],\"excludeTmpls\":[{\"label\":\"Исключить шаблоны\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"excludeIDs\":[{\"label\":\"Исключить ID ресурсов\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"TvNames\":[{\"label\":\"Имена TV для поиска\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"unpublished\":[{\"label\":\"Индексировать неопубликованные\",\"type\":\"text\",\"value\":\"0\",\"default\":\"0\",\"desc\":\"\"}],\"deleted\":[{\"label\":\"Индексировать удаленные\",\"type\":\"text\",\"value\":\"0\",\"default\":\"0\",\"desc\":\"\"}],\"dicts\":[{\"label\":\"Использовать словари\",\"type\":\"text\",\"value\":\"rus,eng\",\"default\":\"rus,eng\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('13','Clear Comments','<strong>1.0</strong> Remove comments of documents when you empty MODx Trash Can.','0','0','0','/**\n * Clear Comments Plugin: Remove comments of documents when you empty MODx Trash Can.\n * Version: 1.0\n * Event: \"OnEmptyTrash\"\n * Requirement: Jot Snippet\n * Work on: Evolution\n *\n * Author: AHHP ~ Boplo.ir\n * Date: 21 August 2009\n*/\n\ndefined(\'IN_MANAGER_MODE\') or die();\nif($modx->Event->name == \"OnEmptyTrash\")\n{\n	$where = \'uparent IN(\' .join(\',\' , $ids). \')\';\n	$jot_content = $modx->getFullTableName(\'jot_content\');\n	$jot_fields = $modx->getFullTableName(\'jot_fields\');\n	$jot_subscriptions = $modx->getFullTableName(\'jot_subscriptions\');\n	\n	\n	// If `jot_fields` exists\n	if($modx->db->getRecordCount( $modx->db->query(\"SHOW TABLES LIKE \'$jot_fields\'\") ) == 1)\n	{\n		// `jot_fields` stores fields by comments ID so we need to get comments ID that are removing.\n		$commentsIds = array();\n		$select = $modx->db->select(\"id\", $jot_content, $where);\n		while($commentRow = $modx->db->getRow($select, \'num\'))\n			$commentsIds[] = $commentRow[0];\n		\n		if(count($commentsIds) > 0)\n			$modx->db->delete($jot_fields, \'id IN(\' .join(\",\",$commentsIds). \')\');\n		\n		unset($select, $commentsIds);\n	}\n	\n	$modx->db->delete($jot_content, $where);\n	$modx->db->delete($jot_subscriptions, $where);\n}','0','','1','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('14','JotAdminNotify','<strong>0.1</strong> На главной странице админки отображается количество неопубликованных коментариев снипета JotX','0','0','0','$output = \"\";\n$e = &$modx->Event;\nif($e->name == \'OnManagerWelcomePrerender\'){\n\n    $table = $modx->getFullTableName(\'jot_content\');\n    $sitecontent = $modx->getFullTableName(\'site_content\');\n    $rs = $modx->db->query(\"SELECT count(jc.uparent) as count, jc.uparent, sc.pagetitle FROM $table jc left join $sitecontent sc on sc.id = uparent where jc.published=0 group by jc.uparent\");\n    while($row=$modx->db->GetRow($rs)){\n        if ($row[\'count\']>0){\n            $id = $row[\'uparent\'];\n            $count = $row[\'count\'];\n            $url = $modx->makeUrl($id);\n            $output .= \"<li><a href=\'$url\' target=\'_blank\'>\".$row[\'pagetitle\'].\": $count</a></li>\";\n        }\n    }\n    \n    if (!empty($output)){\n        $output = \'<div class=\"sectionHeader\" style=\"color:red\">Имеются неопубликованные комментарии</div><div class=\"sectionBody\"><ul>\'.$output.\'</ul></div>\';\n    }\n    $e->output($output);\n}\n','0','','1','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('15','AlwaysStay','<strong>1</strong> по умолчанию ставим галочку продолжить редактирование','0','0','0','$e = & $modx->Event;\nif ($e->name == \"OnDocFormRender\" ||\n    $e->name == \"OnTempFormRender\" ||\n    $e->name == \"OnChunkFormRender\" ||\n    $e->name == \"OnSnipFormRender\" ||\n    $e->name == \"OnPluginFormRender\"\n   ) {\n      $html = \"\n           <script type=\'text/javascript\'>\n             if(!$(\'stay\').value) $(\'stay\').value=2;\n           </script>\n      \";\n      $e->output($html);\n}','0','','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('16','Diff','<strong>2.6</strong> plugin for Modx Evo','0','3','0','/*************************************/\nif(file_exists($modx->config[\'base_path\'].\'assets/plugins/\'.$folderPlugin.\'/lang/\'.$modx->config[\'manager_language\'].\'.inc.php\')){\n  include($modx->config[\'base_path\'].\'assets/plugins/\'.$folderPlugin.\'/lang/\'.$modx->config[\'manager_language\'].\'.inc.php\');\n}else{\n  include($modx->config[\'base_path\'].\'assets/plugins/\'.$folderPlugin.\'/lang/english.inc.php\');\n}\ninclude($modx->config[\'base_path\'].\'assets/plugins/\'.$folderPlugin.\'/version.class.php\');\nswitch($modx->Event->name){\n	/** Template */\n	case \'OnTempFormDelete\':{\n		$Diff=new ElementVer($modx,\'template\',$folderPlugin);\n		if($Diff->ignored($ignoredTPL)){\n			$Diff->del($modx->Event->params[\'id\']);\n		}\n		break;\n	}\n	case \'OnTempFormSave\':{\n		$Diff=new ElementVer($modx,\'template\',$folderPlugin);\n		if($Diff->ignored($ignoredTPL)){\n			$Diff->countVer=(int)$countTPL;\n			$Diff->save($modx->Event->params[\'id\'],\'post\');\n		}\n		break;\n	}\n	case \'OnTempFormRender\':{\n		$Diff=new ElementVer($modx,\'template\',$folderPlugin);\n		if($Diff->ignored($ignoredTPL)){\n			$out=$Diff->loadJs($idBlock,$which_jquery,$jqname,$js_src_type);\n			$modx->Event->output($out);\n		}\n		break;\n	}\n	\n	/** Snippet */\n	case \'OnSnipFormDelete\':{\n		$Diff=new ElementVer($modx,\'snippet\',$folderPlugin);\n		if($Diff->ignored($ignoredSnippet)){\n			$Diff->del($modx->Event->params[\'id\']);\n		}\n		break;\n	}\n	case \'OnSnipFormSave\':{\n		$Diff=new ElementVer($modx,\'snippet\',$folderPlugin);\n		if($Diff->ignored($ignoredSnippet)){\n			$Diff->countVer=(int)$countSnippet;\n			$Diff->save($modx->Event->params[\'id\'],\'post\');\n		}\n		break;\n	}\n	case \'OnSnipFormRender\':{\n		$Diff=new ElementVer($modx,\'snippet\',$folderPlugin);\n		if($Diff->ignored($ignoredSnippet)){\n			$out=$Diff->loadJs($idBlock,$which_jquery,$jqname,$js_src_type);\n			$modx->Event->output($out);\n		}\n		break;\n	}\n	\n	/** Plugin */\n	case \'OnPluginFormDelete\':{\n		$Diff=new ElementVer($modx,\'plugin\',$folderPlugin);\n		if($Diff->ignored($ignoredPlugin)){\n			$Diff->del($modx->Event->params[\'id\']);\n		}\n		break;\n	}\n	case \'OnPluginFormSave\':{\n		$Diff=new ElementVer($modx,\'plugin\',$folderPlugin);\n		if($Diff->ignored($ignoredPlugin)){\n			$Diff->countVer=(int)$countPlugin;\n			$Diff->save($modx->Event->params[\'id\'],\'post\');\n		}\n		break;\n	}\n	case \'OnPluginFormRender\':{\n		$Diff=new ElementVer($modx,\'plugin\',$folderPlugin);\n		if($Diff->ignored($ignoredPlugin)){\n			$out=$Diff->loadJs($idBlock,$which_jquery,$jqname,$js_src_type);\n			$modx->Event->output($out);\n		}\n		break;\n	}\n	\n	/** Module */\n	case \'OnModFormDelete\':{\n		$Diff=new ElementVer($modx,\'module\',$folderPlugin);\n		if($Diff->ignored($ignoredModule)){\n			$Diff->del($modx->Event->params[\'id\']);\n		}\n		break;\n	}\n	case \'OnModFormSave\':{\n		$Diff=new ElementVer($modx,\'module\',$folderPlugin);\n		if($Diff->ignored($ignoredModule)){\n			$Diff->countVer=(int)$countModule;\n			$Diff->save($modx->Event->params[\'id\'],\'post\');\n		}\n		break;\n	}\n	case \'OnModFormRender\':{\n		$Diff=new ElementVer($modx,\'module\',$folderPlugin);\n		if($Diff->ignored($ignoredModule)){\n			$out=$Diff->loadJs($idBlock,$which_jquery,$jqname,$js_src_type);\n			$modx->Event->output($out);\n		}\n		break;\n	}\n	\n	/** Chunk */\n	case \'OnChunkFormDelete\':{\n		$Diff=new ElementVer($modx,\'chunk\',$folderPlugin);\n		if($Diff->ignored($ignoredChunk)){\n			$Diff->del($modx->Event->params[\'id\']);\n		}\n		break;\n	}\n	case \'OnChunkFormSave\':{\n		$Diff=new ElementVer($modx,\'chunk\',$folderPlugin);\n		if($Diff->ignored($ignoredChunk)){\n			$Diff->countVer=(int)$countChunk;\n			$Diff->save($modx->Event->params[\'id\'],\'post\');\n		}\n		break;\n	}\n	case \'OnChunkFormRender\':{\n		$Diff=new ElementVer($modx,\'chunk\',$folderPlugin);\n		if($Diff->ignored($ignoredChunk)){\n			$out=$Diff->loadJs($idBlock,$which_jquery,$jqname,$js_src_type);\n			$modx->Event->output($out);\n		}\n		break;\n	}\n	/** Document */\n	case \'OnDocFormDelete\':{\n		$Diff=new ElementVer($modx,\'document\',$folderPlugin);\n		if($Diff->ignored($ignoredDoc)){\n			$Diff->del($modx->Event->params[\'id\']);\n		}\n		break;\n	}\n	case \'OnDocFormSave\':{\n		$Diff=new ElementVer($modx,\'document\',$folderPlugin);\n		if($Diff->ignored($ignoredDoc)){\n			$Diff->countVer=(int)$countDoc;\n			$Diff->save($modx->Event->params[\'id\'],\'ta\');\n		}\n		break;\n	}\n	case \'OnDocFormRender\':{\n		$Diff=new ElementVer($modx,\'document\',$folderPlugin);\n		if($Diff->ignored($ignoredDoc)){\n			// Check for ManagerManager\n			$res = $modx->db->select(\'*\', $modx->getFullTableName(\'site_plugins\'), \'name=\"ManagerManager\" AND disabled=0 \');\n			$mmActive = $modx->db->getRow($res);\n			if (!$mmActive) {\n				$out=$Diff->loadJs($idBlock,$which_jquery,$jqname,$js_src_type);\n			} else {\n				$out=$Diff->loadJs($idBlock,\'not_include\',$jqname,$js_src_type);\n			}\n			$modx->Event->output($out);\n		}\n		break;\n	}\n}\n//?>','0','{\"idBlock\":[{\"label\":\"ID блока\",\"type\":\"text\",\"value\":\"Version\",\"default\":\"Version\",\"desc\":\"\"}],\"folderPlugin\":[{\"label\":\"Папка плагина\",\"type\":\"text\",\"value\":\"diff\",\"default\":\"diff\",\"desc\":\"\"}],\"which_jquery\":[{\"label\":\"Подключить jQuery\",\"type\":\"list\",\"value\":\"\\/assets\\/js\\/\",\"options\":\"Не подключать,\\/assets\\/js\\/,google code,custom url\",\"default\":\"\\/assets\\/js\\/\",\"desc\":\"\"}],\"js_src_type\":[{\"label\":\"Свой url к библиотеке jQuery\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"jqname\":[{\"label\":\"Имя Jquery переменной в noConflict\",\"type\":\"text\",\"value\":\"j\",\"default\":\"j\",\"desc\":\"\"}],\"ignoredChunk\":[{\"label\":\"ID игнорируемых чанков\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ignoredSnippet\":[{\"label\":\"ID игнорируемых сниппетов\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ignoredPlugin\":[{\"label\":\"ID игнорируемых плагинов\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ignoredDoc\":[{\"label\":\"ID игнорируемых документов\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ignoredModule\":[{\"label\":\"ID игнорируемых модулей\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ignoredTPL\":[{\"label\":\"ID игнорируемых шаблонов\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"countTPL\":[{\"label\":\"Кол-во версий одного шаблона\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"countChunk\":[{\"label\":\"Кол-во версий одного чанка\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"countPlugin\":[{\"label\":\"Кол-во версий одного плагина\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"countModule\":[{\"label\":\"Кол-во версий одного модуля\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"countSnippet\":[{\"label\":\"Кол-во версий одного сниппета\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"countDoc\":[{\"label\":\"Кол-во версий одного документа\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('17','sgThumb','<strong>1.2.2</strong> Plugin to create thumbnails for SimpleGallery images','0','0','0','require MODX_BASE_PATH.\'assets/plugins/simplegallery/plugin.sgthumb.php\';\n','0','{\"tconfig\":[{\"label\":\"Thumbnails Configuration\",\"type\":\"textarea\",\"value\":\"See plugin code for details\",\"default\":\"See plugin code for details\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('18','SimpleGallery','<strong>1.2.2</strong> Plugin to create image galleries','0','0','0','require MODX_BASE_PATH.\'assets/plugins/simplegallery/plugin.simplegallery.php\';','0','{\n  \"tabName\": [\n    {\n      \"label\": \"Tab name\",\n      \"type\": \"text\",\n      \"value\": \"Картинки слайдера\",\n      \"default\": \"SimpleGallery\",\n      \"desc\": \"\"\n    }\n  ],\n  \"controller\": [\n    {\n      \"label\": \"Controller class\",\n      \"type\": \"text\",\n      \"value\": \"\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"templates\": [\n    {\n      \"label\": \"Templates\",\n      \"type\": \"text\",\n      \"value\": \"3\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"documents\": [\n    {\n      \"label\": \"Documents\",\n      \"type\": \"text\",\n      \"value\": \"\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"ignoreDoc\": [\n    {\n      \"label\": \"Ignore Documents\",\n      \"type\": \"text\",\n      \"value\": \"\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"role\": [\n    {\n      \"label\": \"Roles\",\n      \"type\": \"text\",\n      \"value\": \"\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"folder\": [\n    {\n      \"label\": \"Galleries folder\",\n      \"type\": \"text\",\n      \"value\": \"assets/galleries/\",\n      \"default\": \"assets/galleries/\",\n      \"desc\": \"\"\n    }\n  ],\n  \"thumbsCache\": [\n    {\n      \"label\": \"Thumbs cache folder\",\n      \"type\": \"text\",\n      \"value\": \"assets/.sgThumbs/\",\n      \"default\": \"assets/.sgThumbs/\",\n      \"desc\": \"\"\n    }\n  ],\n  \"w\": [\n    {\n      \"label\": \"Thumbs width\",\n      \"type\": \"text\",\n      \"value\": \"140\",\n      \"default\": \"140\",\n      \"desc\": \"\"\n    }\n  ],\n  \"h\": [\n    {\n      \"label\": \"Thumbs height\",\n      \"type\": \"text\",\n      \"value\": \"105\",\n      \"default\": \"105\",\n      \"desc\": \"\"\n    }\n  ],\n  \"customThumbOptions\": [\n    {\n      \"label\": \"Custom thumb options\",\n      \"type\": \"text\",\n      \"value\": \"\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"clientResize\": [\n    {\n      \"label\": \"Client Resize\",\n      \"type\": \"list\",\n      \"value\": \"No\",\n      \"options\": \"No,Yes\",\n      \"default\": \"No\",\n      \"desc\": \"\"\n    }\n  ],\n  \"jpegQuality\": [\n    {\n      \"label\": \"Jpeg quality\",\n      \"type\": \"text\",\n      \"value\": \"0.93\",\n      \"default\": \"0.93\",\n      \"desc\": \"\"\n    }\n  ],\n  \"skipPHPThumb\": [\n    {\n      \"label\": \"Skip PHPThumb\",\n      \"type\": \"list\",\n      \"value\": \"No\",\n      \"options\": \"No,Yes\",\n      \"default\": \"No\",\n      \"desc\": \"\"\n    }\n  ]\n}','0',' ','0','1507652486');

INSERT INTO `evo_site_plugins` VALUES ('20','evoBabel','<strong>0.21</strong> plugin for work evoBabel','0','3','0','if (!defined(\'MODX_BASE_PATH\')) {\n    die (\'What are you doing? Get out of here!\');\n}\n\n$e = & $modx->event;\n\n$content_table = $modx->getFullTableName(\'site_content\');\n$tvs_table = $modx->getFullTableName(\'site_tmplvar_contentvalues\');\n\nif (isset($params[\'rel_tv_id\']) && isset($params[\'lang_template_id\'])) {\n    include_once MODX_BASE_PATH . \'assets/snippets/evoBabel/evoBabel.class.php\';\n    $eB=new evoBabel($modx, 0, $params);\n\n    switch ($e->name) {\n        case \'OnPageNotFound\'://переадресация на нужную страницу 404, указать ее в модуле лексикона\n            //$docid = 0;\n            $docid = !empty($modx->config[\'error_page\']) ?  $modx->config[\'error_page\'] : $modx->config[\'site_start\'];\n            if (!isset($_SESSION[\'perevod\'])) {\n                //$docid = $modx->config[\'site_start\'];\n                $modx->sendRedirect($modx->makeUrl($docid), 0, \'REDIRECT_HEADER\', \'HTTP/1.0 404 Not Found\');exit();\n            }\n            $id = $_SESSION[\'perevod\'][\'Страница не найдена\'];\n            $docid = (int)$id;\n            if ($docid == 0) {\n                $id = $_SESSION[\'perevod\'][\'Главная страница\'];\n                $docid = (int)$id;\n                if ($docid == 0) {\n                    $id = $_SESSION[\'perevod\'][\'Корневая папка\'];\n                    $docid = (int)$id;\n                }\n            }\n            if ($docid != 0) {\n                $modx->sendRedirect($modx->makeUrl($docid), 0, \'REDIRECT_HEADER\', \'HTTP/1.0 404 Not Found\');exit();\n            }  else {\n                $docid = !empty($modx->config[\'error_page\']) ?  $modx->config[\'error_page\'] : $modx->config[\'site_start\'];\n            }\n            break ;\n        case \'OnDocFormSave\'://синхронизация выбранных TV на выбранном шаблоне\n            if ($e->params[\'mode\'] == \'upd\' && (isset($synch_template) && $synch_template != \'\') && (isset($synch_TV) && $synch_TV != \'\')) {\n                $eB->synchTVs($synch_TV, $synch_template, $e->params[\'id\']);\n            }\n            break;\n        case \'OnBeforeEmptyTrash\': //собираем связи окончательно удаляемых ресурсов, чтобы потом скорректировать их связанные версии\n            if (isset($ids) && is_array($ids)) {\n                $del_ids = implode(\',\', $ids);\n                $del_array = $eB->makeDelRelsArray($del_ids);\n                $_SESSION[\'del_array\'] = $del_array;\n            }\n            break;\n        case \'OnEmptyTrash\': //корректируем связи языковых версий с учетом окончательного удаления ресурсов\n            $del_array = $_SESSION[\'del_array\'];\n            if (!empty($del_array)) {\n                $eB->updateDeletedRelations($del_array);\n            }\n            break;\n        case \'OnWebPageInit\':\n            // в нужном месте прописываем [+activeLang+] (вывод текущего языка) и [+switchLang+] - вывод переключалки (списка) языков\n            // параметры вызова\n            // &activeLang - шаблон вывода текущего языка (отдельно)\n            // &activeRow - шаблон вывода текущего языка в списке языков\n            // &unactiveRow - шаблон вывода языков в списке (кроме текущего)\n            // &langOuter - шаблон обертки для списка языков\n\n            //шаблоны вывода по умолчанию\n            $tmp = isset($config) ? $config : \'\';\n            if(!empty($config) && file_exists(MODX_BASE_PATH . $config)){\n                include_once (MODX_BASE_PATH . $tmp);\n            }\n            //активный язык отдельно\n            $activeLang = isset($activeLang) ? $activeLang : \'<div id=\"curr_lang\"><img src=\"assets/snippets/evoBabel/config/images/flag_[+alias+].png\"> <a href=\"javascript:;\">[+name+]</a></div>\'; \n            //активный язык в списке\n            $activeRow = isset($activeRow) ? $activeRow : \'<div class=\"active\"><img src=\"assets/snippets/evoBabel/config/images/flag_[+alias+].png\"> &nbsp;<a href=\"[+url+]\">[+name+]</a></div>\';\n            //неактивный язык списка\n            $unactiveRow = isset($unactiveRow) ? $unactiveRow : \'<div><img src=\"assets/snippets/evoBabel/config/images/langs/flag_[+alias+].png\"> &nbsp;<a href=\"[+url+]\">[+name+]</a></div>\';\n            //обертка списка языков\n            $langOuter = isset($langOuter) ? $langOuter : \'<div class=\"other_langs\">[+wrapper+]</div>\';\n\n        //фикс для OnWebPageInit на несуществующей странице с несуществующим documentIdentifier\n        if ($modx->documentIdentifier && $modx->documentIdentifier != 0 && $modx->documentIdentifier != \'0\' && !empty($modx->documentIdentifier) ) {\n\n            $out = \'\';\n            $langs = array();\n            $others = array();//массив других языков (кроме текущего)\n            $eB->id = $modx->documentIdentifier;\n            $siteLangs = $eB->getSiteLangs($eB->lang_template_id);\n            $siteAllLangs = $eB->getAllSiteLangs($eB->lang_template_id);\n            //если находимся в корневой папке языка, отправляем на главную страницу этого языка (при условии, что она задана и отличается от текущей)\n            if (isset($siteLangs[$eB->id]) && $siteLangs[$eB->id][\'home\'] != \'\' && (int)$siteLangs[$eB->id][\'home\'] != 0 && $siteLangs[$eB->id][\'home\'] != $eB->id) {\n                $modx->sendRedirect($modx->makeUrl((int)$siteLangs[$eB->id][\'home\']));\n            }\n            $curr_lang_id = $eB->getCurLangId($eB->id);\n            $relations = $eB->getRelations($eB->id);\n            $relArray = $eB->getRelationsArray($relations);\n\n            //устанавливаем текущий язык\n            $currLang = str_replace(array(\'[+alias+]\', \'[+name+]\', \'[+lang+]\'), array($siteLangs[$curr_lang_id][\'alias\'], $siteLangs[$curr_lang_id][\'name\'], $siteLangs[$curr_lang_id][\'lang\']), $activeLang);\n\n            //устанавливаем список языков с учетом активного\n            $langRows = \'\';\n\n            foreach ($siteLangs as $k=>$v) {\n                $tpl = ($k != $curr_lang_id ? $unactiveRow : $activeRow);\n                if (isset($relArray[$v[\'alias\']]) && $eB->checkActivePage($relArray[$v[\'alias\']])) {//если есть связь и эта страница активна\n                    $url = $relArray[$v[\'alias\']];\n                } else {//нет связи либо страница не активна -> проверяем родителя\n                    $parent_id = $modx->db->getValue($modx->db->query(\"SELECT parent FROM {$eB->content_table} WHERE id={$eB->id} AND published=1 AND deleted=0 AND parent!=0 AND template!=$eB->lang_template_id\"));\n                    if (!$parent_id) {//если нет родителя, отправляем на главную страницу языка\n                        $url = ((int)$v[\'home\'] != 0 ? (int)$v[\'home\'] : $k);\n                    } else {//если родитель есть, проверяем его связи\n                        $parent_relations = $eB->getRelations($parent_id);\n                        $relParentArray = $eB->getRelationsArray($parent_relations);\n                        if (isset($relParentArray[$v[\'alias\']]) && $eB->checkActivePage($relParentArray[$v[\'alias\']])) {//у родителя активная связь\n                            $url = $relParentArray[$v[\'alias\']];\n                        } else {//иначе -> на главную страницу языка\n                            $url = ((int)$v[\'home\'] != 0 ? (int)$v[\'home\'] : $k);\n                        }\n                    }\n                }\n                $langRows .= str_replace(array(\'[+alias+]\', \'[+url+]\', \'[+name+]\', \'[+lang+]\'), array($v[\'alias\'], $modx->makeUrl($url), $v[\'name\'], $v[\'lang\']), $tpl);\n            }\n            $langsList .= str_replace(array(\'[+wrapper+]\'), array($langRows), $langOuter);\n\n            // устанавливаем плейсхолдеры [+activeLang+] и [+switchLang+] для вывода активного языка и списка языков соответственно\n            $modx->setPlaceholder(\"activeLang\", $currLang);\n            $modx->setPlaceholder(\"switchLang\", $langsList);\n\n            //получаем массив перевода для чанков в сессию\n            $perevod = array();\n            $cur_lexicon = $siteAllLangs[$curr_lang_id][\'alias\'];\n            if($cur_lexicon == \'\'){\n				$doc = $modx->getDocument($modx->documentIdentifier);\n				$cur_lexicon = $doc[\'alias\'];	\n			} \n            $q = $modx->db->query(\"SELECT * FROM \" . $modx->getFullTableName(\'lexicon\'));\n            while ($row = $modx->db->getRow($q)) {\n                $perevod[$row[\'name\']] = $row[$cur_lexicon];\n            }\n            $_SESSION[\'evoBabel_curLang\'] = $cur_lexicon;\n            $_SESSION[\'perevod\'] = $perevod;\n        }\n            break;\n        case \'OnDocDuplicate\' :\n            if ($e->params[\'new_id\']) {\n                $q = $modx->db->query(\"DELETE FROM \" . $eB->tvs_table . \" WHERE contentid={$e->params[\'new_id\']} AND tmplvarid={$eB->rel_tv_id}\");\n            }\n            break;\n        default:\n            return ;\n    }\n}\n','0','{\n  \"synch_TV\": [\n    {\n      \"label\": \"ids TV для синхронизации\",\n      \"type\": \"text\",\n      \"value\": \"4\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"synch_template\": [\n    {\n      \"label\": \"ids шаблонов для синхронизации\",\n      \"type\": \"text\",\n      \"value\": \"3\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"config\": [\n    {\n      \"label\": \"Файл шаблонов\",\n      \"type\": \"text\",\n      \"value\": \"assets/snippets/evoBabel/config/config.php\",\n      \"default\": \"assets/snippets/evoBabel/config/config.php\",\n      \"desc\": \"\"\n    }\n  ]\n}','0','evobabels','0','1507652281');

INSERT INTO `evo_site_plugins` VALUES ('21','evoBabelPlaceholder','<strong>0.21</strong> plugin for work evoBabel (use placeholder [%key%] for language versions)','0','3','0','$e =& $modx->event;\nswitch ($e->name) {\n    case \'OnParseDocument\':\n    case \'OnBeforeParseParams\':\n    //	обрабатываем языковые плейсхолдеры вида [%ключ%]\n        $source = $modx->documentOutput;\n        $source = $this->mergeSettingsContent($source);\n        $source = $this->mergeDocumentContent($source);\n        $source = $this->mergeSettingsContent($source);\n        $source = $this->mergeChunkContent($source);\n\n        //$pattern=\'~\\[\\%(.*?)\\%\\]~s\';\n        $pattern=\"/\\[%([^%\\]]*)?%\\]/\";\n\n        preg_match_all($pattern, $source, $matches, PREG_PATTERN_ORDER);\n        if (is_array($matches[0])) {\n            foreach ($matches[0] as $v) {\n                $k = str_replace(\'%]\', \'\', str_replace(\'[%\', \'\', $v));\n                if (isset($_SESSION[\'perevod\'][$k])) {\n                    $source = str_replace($v, $_SESSION[\'perevod\'][$k], $source);\n                }\n            }\n        }\n        $modx->documentOutput = $source;\n        break;\n    default:\n        return ;\n}\n','0','{}','0',' ','0','1507651308');

INSERT INTO `evo_site_plugins` VALUES ('22','TvTable','<strong>1.11</strong> Добавление к странице таблицы данных','0','0','0','//defined(\'IN_MANAGER_MODE\') or die();\n\nglobal $content,$default_template,$tmplvars;\n$tvIds = isset($tvIds) ? $tvIds : 102;\n$templ = isset($templ) ? explode(\',\',$templ) : false;\n$role = isset($role) ? explode(\',\',$role) : false;\n$cur_templ = isset($_POST[\'template\']) ? $_POST[\'template\'] : (isset($content[\'template\']) ? $content[\'template\'] : $default_template);\n$cur_role = $_SESSION[\'mgrRole\'];\nif (($templ && !in_array($cur_templ,$templ)) || ($role && !in_array($cur_role,$role))) return;\n\n$loadfile = isset($loadfile)&&($loadfile==\'true\') ? \"this.box.adopt(new Element(\'input\',{\'type\':\'file\',\'name\':\'file_\'+fid,\'styles\':{\'margin-top\':\'5px\'}}));\" : \"\";\n\n$e = &$modx->Event;\nif ($e->name == \'OnDocFormRender\') {\n$output = <<< OUT\n<!-- TvTable -->\n<script type=\"text/javascript\">\nwindow.ie9=window.XDomainRequest && window.performance; window.ie=window.ie && !window.ie9; /* IE9 patch */\nvar TvTable = new Class({\n	initialize: function(fid){\n		this.fid = $(fid);\n		var tvtArr = (this.fid.value) ? Json.evaluate(this.fid.value) : [null,null];\n		this.fid.setStyle(\'display\',\'none\');\n		this.box = new Element(\'div\',{\'class\':\'tvtEditor\'});\n		this.fid.getParent().adopt(this.box);\n		this.addHeader(tvtArr[0]);\n		for (var row=1;row<tvtArr.length;row++) this.addItem(tvtArr[row]);\n		{$loadfile}\n	},\n	build: function(val){\n		return new Element(\'input\',{\'type\':\'text\',\'styles\':{\'width\':\'100px\'},\'value\':val,\'events\':{\'keyup\':function(){this.setEditor();documentDirty=true;}.bind(this)}});\n	},\n	addHeader: function(values,elem){\n		var rowDiv = new Element(\'div\',{\'class\':\'tvtrow\',\'styles\':{\'background\':\'#f0f0ee\',\'padding\':\'5px 0\',\'white-space\':\'nowrap\'}});\n		this.box.adopt(rowDiv);\n		if (!values) values=[\'\',\'\'];\n		this.cols=values.length;\n		for (var i=0;i<this.cols;i++) rowDiv.adopt(this.build(values[i]));\n		rowDiv.adopt(new Element(\'input\',{\'type\':\'button\',\'value\':\'>>\',\'events\':{\n			\'click\':function(){\n				this.cols++;\n				this.box.getElements(\'div.tvtrow\').each(function(item){this.build(\'\').injectAfter(item.getElements(\'input[type=text]\').getLast());}.bind(this));\n				this.setEditor();\n			}.bind(this)\n		}}));\n		rowDiv.adopt(new Element(\'input\',{\'type\':\'button\',\'value\':\'<<\',\'events\':{\n			\'click\':function(){\n				if (rowDiv.getElements(\'input[type=text]\').length>2){\n					this.cols--;\n					this.box.getElements(\'div.tvtrow\').each(function(item){item.getElements(\'input[type=text]\').getLast().remove();});\n					this.setEditor();\n				}\n			}.bind(this)\n		}}));\n	},\n	addItem: function(values,elem){\n		var rowDiv = new Element(\'div\',{\'class\':\'tvtrow\',\'styles\':{\'white-space\':\'nowrap\'}});\n		if (elem) {rowDiv.injectAfter(elem);} else {this.box.adopt(rowDiv);}\n		for (var i=0;i<this.cols;i++) rowDiv.adopt(this.build((values) ? values[i] : \'\'));\n		rowDiv.adopt(new Element(\'input\',{\'type\':\'button\',\'value\':\'+\',\'events\': {\n			\'click\':function(){this.addItem(null,rowDiv);}.bind(this)\n		}}));\n		if (this.box.getElements(\'div.tvtrow\').length>2) rowDiv.adopt(new Element(\'input\',{\'type\':\'button\',\'value\':\'-\',\'events\':{\n			\'click\':function(){rowDiv.remove();this.setEditor();}.bind(this)\n		}}));\n	},\n	setEditor: function(){\n		var tvtArr=new Array();\n		this.box.getElements(\'div.tvtrow\').each(function(item){\n			var itemsArr=new Array();\n			var inputs=item.getElements(\'input[type=text]\');\n			inputs.each(function(item){itemsArr.push(item.value);});\n			tvtArr.push(itemsArr);\n		});\n		this.fid.value = Json.toString(tvtArr);\n	}\n});\nwindow.addEvent(\'domready\', function(){\n	var tvIds = [$tvIds];\n	for (var i=0;i<tvIds.length;i++){\n		var fid = \'tv\'+ tvIds[i];\n		if($(fid)!=null) {var modxTvTable=new TvTable(fid);}\n	}\n});\n</script>\n<!-- /TvTable -->\nOUT;\n$e->output($output);\n}\nif ($e->name == \'OnBeforeDocFormSave\'){\n$tvIds=explode(\',\',$tvIds);\nforeach ($tvIds as $tvid) {\n	$fname=\'file_tv\'.$tvid;\n	if (isset($_FILES[$fname]) && is_uploaded_file($_FILES[$fname][\'tmp_name\']) && is_readable($_FILES[$fname][\'tmp_name\'])) {\n		$file=fopen($_FILES[$fname][\'tmp_name\'],\'r\');\n		while (($data = fgetcsv($file, 1000, \',\')) !== FALSE) {$dataArr[]=$data;}\n		fclose($file);\n		$tmplvars[$tvid][1]=str_replace(\'\\\\/\', \'/\', json_encode($dataArr));\n	}\n}\n}\n//?>','0','{\n  \"tvIds\": [\n    {\n      \"label\": \"TV Ids\",\n      \"type\": \"text\",\n      \"value\": \"5\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"templ\": [\n    {\n      \"label\": \"Template\",\n      \"type\": \"text\",\n      \"value\": \"5\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"role\": [\n    {\n      \"label\": \"Role\",\n      \"type\": \"text\",\n      \"value\": \"1\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"loadfile\": [\n    {\n      \"label\": \"Load csv file\",\n      \"type\": \"list\",\n      \"value\": \"true\",\n      \"options\": \"true,false\",\n      \"default\": \"false\",\n      \"desc\": \"\"\n    }\n  ]\n}','0',' ','0','1511180293');

INSERT INTO `evo_site_plugins` VALUES ('23','userHelper','<strong>1.7.14</strong> addition to FormLister','0','5','0','require MODX_BASE_PATH.\'assets/snippets/FormLister/plugin.userHelper.php\';\n','0','{\"logoutKey\":[{\"label\":\"Request key\",\"type\":\"text\",\"value\":\"logout\",\"default\":\"logout\",\"desc\":\"\"}],\"cookieName\":[{\"label\":\"Cookie Name\",\"type\":\"text\",\"value\":\"WebLoginPE\",\"default\":\"WebLoginPE\",\"desc\":\"\"}],\"cookieLifetime\":[{\"label\":\"Cookie Lifetime, seconds\",\"type\":\"text\",\"value\":\"157680000\",\"default\":\"157680000\",\"desc\":\"\"}],\"maxFails\":[{\"label\":\"Max failed logins\",\"type\":\"text\",\"value\":\"3\",\"default\":\"3\",\"desc\":\"\"}],\"blockTime\":[{\"label\":\"Block for, seconds\",\"type\":\"text\",\"value\":\"3600\",\"default\":\"3600\",\"desc\":\"\"}]}','0','','0','0');


# --------------------------------------------------------

#
# Table structure for table `evo_site_snippets`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_site_snippets`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_site_snippets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Snippet',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  `disabled` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Disables the snippet',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='Contains the site snippets.';

#
# Dumping data for table `evo_site_snippets`
#

INSERT INTO `evo_site_snippets` VALUES ('1','DLSitemap','<strong>1.0.0</strong> Snippet to build XML sitemap','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLSitemap.php\';\n','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('2','DLMenu','<strong>1.2.0</strong> Snippet to build menu with DocLister','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLMenu.php\';\n','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('3','DLCrumbs','<strong>1.2</strong> DLCrumbs','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLCrumbs.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('4','if','<strong>1.3</strong> A simple conditional snippet. Allows for eq/neq/lt/gt/etc logic within templates, resources, chunks, etc.','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/if/snippet.if.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('5','Reflect','<strong>2.2</strong> Generates date-based archives using Ditto','0','5','0','\n/**\n * Reflect\n * \n * Generates date-based archives using Ditto\n *\n * @category 	snippet\n * @version 	2.2\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@modx_category Content\n * @internal    @installset base, sample\n * @documentation Cheatsheet https://de.scribd.com/doc/55919355/MODx-Ditto-and-Reflect-Cheatsheet-v1-2\n * @documentation Inside snippet-code\n * @reportissues https://github.com/modxcms/evolution\n * @author      Mark Kaplan\n * @author      Ryan Thrash http://thrash.me\n * @author      netProphET, Dmi3yy, bossloper, yamamoto\n * @lastupdate  2016-11-21\n */\n\n/*\n *  Note: \n *  If Reflect is not retrieving its own documents, make sure that the\n *  Ditto call feeding it has all of the fields in it that you plan on\n *  calling in your Reflect template. Furthermore, Reflect will ONLY\n *  show what is currently in the Ditto result set.\n *  Thus, if pagination is on it will ONLY show that page\'s items.\n*/\n\nreturn require MODX_BASE_PATH.\'assets/snippets/reflect/snippet.reflect.php\';\n','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('6','FormLister','<strong>1.7.14</strong> Form processor','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/FormLister/snippet.FormLister.php\';\n','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('7','UltimateParent','<strong>2.0</strong> Travels up the document tree from a specified document and returns its \"ultimate\" non-root parent','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/ultimateparent/snippet.ultimateparent.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('8','FirstChildRedirect','<strong>2.0</strong> Automatically redirects to the first child of a Container Resource','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/firstchildredirect/snippet.firstchildredirect.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('9','DocLister','<strong>2.3.11</strong> Snippet to display the information of the tables by the description rules. The main goal - replacing Ditto and CatalogView','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DocLister.php\';\n','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('10','MemberCheck','<strong>1.1</strong> Show chunks based on a logged in Web User\'s group membership','0','7','0','return require MODX_BASE_PATH.\'assets/snippets/membercheck/snippet.membercheck.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('11','phpthumb','<strong>1.3</strong> PHPThumb creates thumbnails and altered images on the fly and caches them','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/phpthumb/snippet.phpthumb.php\';\n','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('12','summary','<strong>2.0.2</strong> Truncates the string to the specified length','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/summary/snippet.summary.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('13','DocInfo','<strong>1</strong> Берем любое поле из любого документа (меньше запросов по сравнению с GetField)','0','8','0','return require MODX_BASE_PATH.\'assets/snippets/docinfo/snippet.docinfo.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('14','eForm','<strong>1.4.8</strong> Robust form parser/processor with validation, multiple sending options, chunk/page support for forms and reports, and file uploads','0','9','0','return require MODX_BASE_PATH.\'assets/snippets/eform/snippet.eform.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('15','evoSearch','<strong>0.1</strong> Вывод результатов поиска','0','4','0','//поиск по сайту с учетом словоформ (словаря phpMorphy)\n//работает совместно с плагином evoSearch (плагин индексирует, сниппет выводит результаты)\n//для работы необходим установленный сниппет DocLister\n//пример вызова - для вывода результатов [!evoSearch? &tpl=`evoSearch`!], \n//ПАРАМЕТРЫ\n// + &noResult = `Ничего не найдено` - строка, которая выводится при отсутствии результата поиска )необязательно)\n// + &addSearch = `0` - для опционального отключения дополнительного поиска при пустом fulltext-search (по умолчанию - 1)\n// + &extract=`0` - отключить экстрактор формирует нужную часть текста с подсветкой из результатов поиска (плейсхолдер [+extract+] в чанке вывода результатов DocLister) - по умолчанию 1 (не извлекать)\n// + &maxlength=`300` - максимальная длина извлекаемой части текста в резуьлтатах поиска (по умолчанию 350)\n// + &show_stat = `0` - отключаем показ статистики \"найдено....показано...с...по...\". По умолчанию - 1 - показ включен\n// + &statTpl - шаблон показа статистики (по умолчанию - <div class=\"evoSearch_info\">По запросу <b>[+stat_request+]</b> найдено всего <b>[+stat_total+]</b>. Показано <b>[+stat_display+]</b>, c [+stat_from+] по [+stat_to+]</div> ), где\n//              [+stat_request+] - запрос из строки $_GET[\'search\']\n//              [+stat_total+] - найдено всего\n//              [+stat_display+] - показано на текущей странице с [+stat_from+] по [+stat_to+] \n// + &rel = `1` - релевантность поиска, по умолчанию 2, чем выше цифра - тем более релевантные результаты и тем их меньше\n// + &addLikeSearch = `1` - добавляем функционал для поиска через like (на случай, если слов не было в словаре). По умолчанию - 0\n// + addLikeSearchType - тип поиска addLikeSearch (oneword- любое слово, allwords-все слова). По умолчанию exact - фраза целиком\n// + addLikeSearchLength - минимальная длина слова для поиска в addLikeSearch (по умолчанию - 3)\n//\n//остальные параметры - дублируют параметры вызова DocLister\n//обрабатывает $_GET[\'search\'] в качестве входной строки для поиска\n\nrequire_once MODX_BASE_PATH . \"assets/snippets/evoSearch/evoSearch.snippet.php\";\n\n','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('16','JotX','<strong>1.1</strong> User comments with moderation and email subscription','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/jot/snippet.jot.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('17','sgThumb','<strong>1.2.1</strong> Snippet for get thumbnails for SimpleGallery','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/simplegallery/sgThumb.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('18','sgLister','<strong>1.2.1</strong> DocLister wrapper for SimpleGallery table','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/simplegallery/sgLister.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('19','sgController','<strong>1.2.1</strong> use sg_site_content controller for DocLister','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/simplegallery/sgController.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('20','DLBeforeAfter','<strong>1</strong> Пагинация по прошедшим и предстоящим событиями с учетом текущей даты','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLBeforeAfter.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('21','DLFirstChar','<strong>1</strong> Группировка документов по первой букве','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLFirstChar.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('22','DDocInfo','<strong>1</strong> DDocInfo','0','5','0','$id = isset($id) ? (int)$id : $modx->documentObject[\'id\'];\n$field = isset($field) ? (string)$field : \'id\';\nif($field == \'id\'){\n    $out = $id;\n}else{\n    if($modx->documentObject[\'id\'] == $id){\n        $out = isset($modx->documentObject[$field]) ? $modx->documentObject[$field] : \'\';\n        if(is_array($out)){\n           $out = isset($out[1]) ? $out[1] : \'\';\n        }\n    }else{\n        $out = $modx->doc->edit($id)->get($field);\n    }\n}\nreturn (string)$out;','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('23','DLPrevNext','<strong>1.1</strong> DLPrevNext','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLPrevNext.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('24','DLReflectFilter','<strong>2</strong> Фильтрация документов по датам которые были выведены сниппетом DLReflect','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLReflectFilter.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('25','DLGlossary','<strong>0.1</strong> Фильтрация документов по первому символу','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLGlossary.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('26','DLTemplate','<strong>1</strong> DLTemplate','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLTemplate.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('27','DLReflect','<strong>2</strong> Построение списка дат для фильтрации по ним документов','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLReflect.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('28','DLValuelist','<strong>1.1</strong> DLValuelist','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLValuelist.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('29','alternate','<strong>0.21</strong> MultiLang alternate links','0','11','0','// используется для вывода ссылок на языковые версии аналогичных страниц\n// https://support.google.com/webmasters/answer/189077?hl=ru\n// https://support.google.com/webmasters/answer/189077?hl=en\n// внести в модуль лексиконов строку hreflang для каждого языка (uk-ua, en-ua и т.п.)\n// не забыть про необходимость заполнения там же строки Язык с алиасами языков\n// вызывать в header в виде [[alternate? &use_default=`1` &default_lang=`ru` &tv=`[*relation*]`]] - чтобы указывать язык по умолчанию\n// либо\n// [[alternate? &tv=`[*relation*]`]] - если не требуется дефолтный язык\n\n$out = \'\';\n$curr_lang = $modx->runSnippet(\"lang\", array(\"a\" => \"Язык\"));\n$curr_lang = !empty($curr_lang) ? $curr_lang : \'ru\';\n$default_lang = isset($default_lang) ? $default_lang : \'ru\';\n$use_default = isset($use_default) && $use_default == \'1\' ? true : false;\n\n$langs = array();\nif ($tv && !empty($tv)) {\n    $tmp = explode(\"||\", $tv);\n    foreach($tmp as $k => $v) {\n        $tmp2 = explode(\":\", $v);\n        $langs[$tmp2[0]] = $tmp2[1];\n    }\n}\n$default_link = \'\';\n$alter_link = \'\';\nif (!empty($langs)) {\n    foreach ($langs as $lang => $docid) {\n        if ($use_default && $default_lang == $lang) {\n            $default_link .= \'<link rel=\"alternate\" hreflang=\"x-default\" href=\"\' . $modx->makeUrl($docid) . \'\" />\';\n        } else {\n            $href_lang = $modx->runSnippet(\"lang\", array(\"a\" => \"hreflang\", \"id\" => $lang));\n            $href_lang = !empty($href_lang) ? $href_lang : $lang;\n            $alter_link .= \'<link rel=\"alternate\" href=\"\' . MODX_SITE_URL . $modx->makeUrl($docid) . \'\" hreflang=\"\' . $href_lang . \'\" />\';\n        }\n    }\n}\n$out .= $default_link . $alter_link;\nreturn $out;\n','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('30','evoBabel','<strong>0.21</strong> MultiLang solution','0','11','0','\nrequire MODX_BASE_PATH . \'assets/snippets/evoBabel/snippet.evoBabel.php\';','0','{}','evobabels','0','1507652030','0');

INSERT INTO `evo_site_snippets` VALUES ('31','lang','<strong>0.21</strong> MultiLang output lexicon','0','11','0','\n//использование в шаблонах чанках и т.п.\n// [[lang? &a=`Главная страница`]] либо просто [%Главная страница%] если установлен плагин evoBabelPlaceholder\n// использование в сниппетах \n// [[DocLister? &parents=`[[lang? &a=`Папка каталог`]]` ...другие параметры ..]]\n// доступны плейсхолдеры вида [%Папка каталог%] - в шаблонах и чанках  если установлен плагин evoBabelPlaceholder\n// [[lang? &a=`Главная страница` &id=`eng`]] Получение главной страницы для eng лексикона\n\nif (!is_scalar($a)) $a = null;\nif (!is_scalar($currlang)) $currlang = null;\n$defLang = $currlang;\nif (!empty($_SESSION[\'evoBabel_curLang\'])) {\n	$currlang = $_SESSION[\'evoBabel_curLang\'];\n}\n$id = isset($id) ? $id : $currlang;\n$out = (!empty($a) && isset($_SESSION[\'perevod\'][$a]) && $currlang == $id) ? $_SESSION[\'perevod\'][$a] : null;	\nif (!empty($a) && !empty($id) && is_null($out)) {\n	$q = $modx->db->query(\"SELECT * FROM \" . $modx->getFullTableName(\'lexicon\').\" WHERE name=\'\".$modx->db->escape($a).\"\' LIMIT 1\");\n	$row = $modx->db->getRow($q);\n	if (isset($row[$id])) {\n		$out = $row[$id];\n	}\n}\nreturn $out;','0','{}','evobabels','0','1507652037','0');

INSERT INTO `evo_site_snippets` VALUES ('32','TvTable','<strong>1.1</strong> TvTable','0','8','0','return require MODX_BASE_PATH.\'assets/snippets/multi/snippet.tvtable.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('33','countViews','','0','13','0','$type = isset($type) ? $type : \'output\'; \n$table = $modx->getFullTableName(\'site_tmplvar_contentvalues\'); \n$insert = false; \n$lock = ($lock == \'1\') ? true : false; \n$_SESSION[\'countViews\'] = is_array($_SESSION[\'countViews\']) ? $_SESSION[\'countViews\'] : array(); \n$countViews = (isset($_SESSION[\'countViews\'][$id]) && $_SESSION[\'countViews\'][$id] === true) ? true : false; \n$usertype = isset($_SESSION[\'usertype\']) ? $_SESSION[\'usertype\'] : \'user\'; \nswitch($type) { \n    case \'output\': \n        $count = $modx->getTemplateVar(\'countViews\', \'*\', $id); \n        echo ($count[\'value\'] == \'\' ? \'0\' : $count[\'value\']); \n    break; \n    case \'counter\': \n        if($usertype == \'manager\' || ($lock && $countViews)) {\n            break;\n        } \n        else {\n            $tvar = $modx->db->select(\'value\', $table, \'tmplvarid =\"\'.$tvid.\'\" and contentid=\"\'.$id.\'\"\'); \n            if($modx->db->getRecordCount($tvar) == 0) {\n                $insert = true; $count = 0;\n            } \n            else {\n                $row = $modx->db->getRow($tvar); \n                $count = $row[\'value\'];\n            } \n            $count++; \n            $_SESSION[\'countViews\'][$id] = true; \n            $fields = array(\'value\' => $count, \'tmplvarid\' => $tvid, \'contentid\' => $id); \n  \n            if($insert) {\n                $modx->db->insert($fields, $table);\n            } \n            else {\n                $modx->db->update($fields, $table, \'tmplvarid = \"\'.$tvid.\'\" and contentid = \"\'.$id.\'\"\');\n            }\n        } \n    break;\n}','0','{}',' ','1514371298','1514371298','0');

INSERT INTO `evo_site_snippets` VALUES ('34','hits','','0','13','0','$id = isset($id) ? $id : $modx->documentIdentifier;\nreturn $modx->db->getValue($modx->db->select(\'count\',$modx->getFullTableName(\'site_content\'),\'id=\'.$id));','0','{}',' ','1514371782','1514371782','0');

INSERT INTO `evo_site_snippets` VALUES ('35','inc','','0','13','0','$table = $modx->getFullTableName(\"site_content\");\n$id = $modx->documentObject[\'id\'];\n$result = $modx->db->update(\"count=count+1\", $table, \"id=$id\");','0','{}',' ','1514371852','1514371915','0');


# --------------------------------------------------------

#
# Table structure for table `evo_site_templates`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_site_templates`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_site_templates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `templatename` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to icon file',
  `template_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-page,1-content',
  `content` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `selectable` tinyint(4) NOT NULL DEFAULT '1',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Contains the site templates.';

#
# Dumping data for table `evo_site_templates`
#

INSERT INTO `evo_site_templates` VALUES ('3','Home','','0','0','','0','{{inc_meta}}\n{{inc_header}}\n<div class=\"flexslider\" >\n	<ul class=\"slides\">\n		[!sgLister? &tpl=\'@CODE:<li><img src=\"[+sg_image+]\" alt=\"[+sg_title+]\"></li>\'!]\n	</ul>\n</div>\n<section class=\"create\">\n	<div class=\"content\">\n		<div class=\"news\">\n			<h3>[%Главные новости%]</h3>\n			[[DocLister?\n			&parents=`[%Новости%]`\n			&tpl=`article.item`\n			&tvPrefix=``\n			&tvList=`image`\n			&display=`3`\n			&orderBy=`menuindex ASC`\n			&dateFormat=`%d.%h.%Y `\n			]]\n		</div>\n		<div class=\"arhiv\">\n			<h3>[%Лента новостей%]</h3>\n			[[DocLister?\n			&parents=`[%Новости%]`\n			&tpl=`article-min.item`\n			&tvPrefix=``\n			&tvList=`image`\n			&display=`6`\n			&orderBy=`menuindex ASC`\n			&dateFormat=`%d.%m.%Y %H.%M`\n			]]\n		</div>\n		<div class=\"feedback\">\n			<a href=\"#\">Задать вопрос</a>\n			<div class=\"feedback-card\" id=\"back-card\">\n				[!eForm? &formid=`feedbackForm` &subject=`Сообщение с сайта [(site_name)]` &tpl=`feedbackForm` &report=`feedbackReport` &gotoid=`[*id*]` &vericode=`0`!] \n			</div>\n		</div>\n	</div>\n</section>\n\n{{inc_footer}}','0','1','0','1517561391');

INSERT INTO `evo_site_templates` VALUES ('4','Язык','','0','0','','0','','0','1','1507650487','1507650487');

INSERT INTO `evo_site_templates` VALUES ('5','Текстовая страница','','0','0','','0','{{inc_meta}}\n{{inc_header}}\n[!countViews? &type=`counter` &id=`[*id*]` &tvid=`7`!]\n<div class=\"content\">\n	<h1 class=\"text-page-h1\">[*pagetitle*]</h1>\n	[*content*]	\n</div>\n<div class=\"table\">\n	[[TvTable? &tvname=`table`]]\n	[[countViews? &type=`output` &id=`[*id*]` &tvid=`7`]]\n</div>\n{{inc_footer}}','0','1','1508254933','1514374639');

INSERT INTO `evo_site_templates` VALUES ('6','Новости','','0','0','','0','{{inc_meta}}\n{{inc_header}}\n<div class=\"content\">\n	<h1> [*pagetitle*]</h1>\n	[[DocLister?\n	&parents=`[*id*]`\n	&tpl=`article.item`\n	&tvPrefix=``\n	&tvList=`image`\n	&display=`5`\n	&paginate=`pages`\n	&orderBy=`menuindex ASC`\n	&TplNextP=`` \n	&TplPrevP=`` \n	&TplPage=`@CODE: <li><a href=\"[+link+]\">[+num+]</a></li>` \n	&TplCurrentPage=`@CODE: <li class=\"active\"><a href=\"[+link+]\">[+num+]</a></li>` \n	&TplWrapPaginate=`@CODE: <ul class=\"pagination\">[+wrap+]</ul>`\n	]]\n	[+pages+]\n</div>\n{{inc_footer}}','0','1','1511172461','1514300316');

INSERT INTO `evo_site_templates` VALUES ('7','Результаты поиска','','0','0','','0','{{inc_meta}}\n{{inc_header}}\n<div class=\"content\">\n	<h1>[*pagetitle*]</h1>\n	<section class=\"tovar-container\">\n		[[evoSearch? \n			&addSearch=`0` \n			&extract=`1`\n			&tpl=`evoSearch` \n			&tvPrefix=``\n		]]\n	</section>\n</div>\n{{inc_footer}}','0','1','1511172805','1517504657');

INSERT INTO `evo_site_templates` VALUES ('10','Авторизация','','0','0','','0','{{inc_meta}}\n{{inc_header}}\n\n<hr>\n<p>Вход</p>\n<hr>\n\n[!FormLister?\n&formid=`login`\n&controller=`Login`\n&loginField=`email`\n&passwordField=`password`\n&rules=`{\n  \"email\":{\n			\"required\":\"Обязательно введите email\"\n			}\n	},\n	\"password\":{\n			\"required\":\"Обязательно введите пароль\",\n			\"minLength\":{\n					\"params\":6,\n					\"message\":\"В пароле должно быть больше 6 символов\"\n			}\n	},\n}`\n&allowedFields=`email,password`\n&formTpl=`@CODE:\n<div class=\"register\">\n        <form method=\"post\">\n                <input type=\"hidden\" name=\"formid\" value=\"login\">\n                <div class=\"form-group[+email.errorClass+][+email.requiredClass+]\">\n                        <label for=\"email\"><i class=\"icon-gmail\"></i></label>\n                                <input type=\"text\" class=\"form-control\" id=\"email\" placeholder=\"Email\" name=\"email\" value=\"[+email.value+]\">\n                                [+email.error+]\n                </div>\n                <div class=\"form-group[+password.errorClass+][+password.requiredClass+]\">\n                        <label for=\"password\"><i class=\"icon-cog\"></i></label>\n                        <input type=\"password\" class=\"form-control\" id=\"password\" placeholder=\"Пароль\" name=\"password\" value=\"\">\n                        [+password.error+]\n                </div>\n                [+form.messages+]\n                <div class=\"form-group\">\n                        <button type=\"submit\" class=\"btn btn-primary\"><i class=\"icon-user\"></i> Войти</button>\n                </div>\n        </form>\n</div>\n`\n&messagesOuterTpl=`@CODE:<div class=\"alert alert-danger\" role=\"alert\">[+messages+]</div>`\n&successTpl=`@CODE:<div>Поздравляем с успешной авторизацией, [+fullname.value+]!</div>`\n&errorTpl=`@CODE:<div class=\"alert alert-danger\">[+message+]</div>`\n&requiredClass=` has-error`\n&errorClass=` has-error`\n&requiredClass=` has-error`\n!]\n\n<a href=\"[]\"></a>\n\n\n{{inc_footer}}','0','1','1518001080','1518081932');

INSERT INTO `evo_site_templates` VALUES ('11','Регистрация','','0','0','','0','{{inc_meta}}\n{{inc_header}}\n\n<hr>\n<p>Регестрация</p>\n<hr>\n\n\n\n\n\n[!FormLister?\n&formid=`register`\n&controller=`Register`\n&defaults=`{\"photo\":\"\"}`\n&keepDefaults=`photo`\n&rules=`{\n\"fullname\":{\n    \"required\":\"Обязательно введите имя\"\n},\n\"email\":{\n    \"required\":\"Обязательно введите email\",\n    \"email\":\"Введите email правильно\",\n    \"custom\":{\n        \"function\":\"\\\\FormLister\\\\Register::uniqueEmail\",\n        \"message\":\"Этот email уже использует другой пользователь\"\n    }\n},\n\"password\":{\n    \"required\":\"Обязательно введите пароль\",\n    \"minLength\":{\n        \"params\":6,\n        \"message\":\"В пароле должно быть больше 6 символов\"\n    }\n},\n\"repeatPassword\":{\n    \"required\":\"Повторите пароль\",\n    \"equals\":{\n        \"message\":\"Пароли не совпадают\"\n    }\n},\n\"agree\":{\n    \"required\":\"Для регистрации вы должны принять правила\"\n}\n}`\n&allowedFields=`email,password,username,fullname,country,photo,dob`\n&formControls=`agree`\n&prepare=`countryList`\n&formTpl=`@CODE:\n<div class=\"row\">\n    <div class=\"col-md-6 col-md-offset-3\">\n        <div class=\"well\">\n            <form method=\"post\" enctype=\"multipart/form-data\">\n                <input type=\"hidden\" name=\"formid\" value=\"register\">\n                <div class=\"form-group[+fullname.errorClass+][+fullname.requiredClass+]\">\n                    <label for=\"fullname\">* Имя</label>\n                    <input type=\"text\" class=\"form-control\" id=\"fullname\" placeholder=\"Имя\" name=\"fullname\" value=\"[+fullname.value+]\">\n                    [+fullname.error+]\n                </div>\n                <div class=\"form-group[+email.errorClass+][+email.requiredClass+]\">\n                    <label for=\"email\">* Email</label>\n                    <input type=\"text\" class=\"form-control\" id=\"email\" placeholder=\"Email\" name=\"email\" value=\"[+email.value+]\">\n                    [+email.error+]\n                </div>\n                <div class=\"row\">\n                    <div class=\"col-md-6\">\n                        <div class=\"form-group[+password.errorClass+][+password.requiredClass+]\">\n                            <label for=\"password\">* Пароль</label>\n                            <input type=\"password\" class=\"form-control\" id=\"password\" placeholder=\"Пароль\" name=\"password\" value=\"\">\n                            [+password.error+]\n                        </div>\n                    </div>\n                    <div class=\"col-md-6\">\n                        <div class=\"form-group[+repeatPassword.errorClass+][+repeatPassword.requiredClass+]\">\n                            <label for=\"repeatPassword\">* Повторите пароль</label>\n                            <input type=\"password\" class=\"form-control\" id=\"repeatPassword\" placeholder=\"Повторите пароль\" name=\"repeatPassword\" value=\"\">\n                            [+repeatPassword.error+]\n                        </div>\n                    </div>\n                </div>\n                <div class=\"checkbox[+agree.requiredClass+]\">\n                    <label>\n                        <input type=\"checkbox\" name=\"agree\" value=\"Да\" [+c.agree.Да+]>Я согласен с правилами\n                    </label>\n                    [+agree.error+]\n                </div>\n                [+form.messages+]\n                <div class=\"form-group\">\n                    <button type=\"submit\" class=\"btn btn-primary btn-block text-center\"><i class=\"glyphicon glyphicon-user\"></i> Зарегистрироваться</button>\n                </div>\n            </form>\n        </div>\n    </div>\n</div>`\n&messagesOuterTpl=`@CODE:<div class=\"alert alert-danger\" role=\"alert\">[+messages+]</div>`\n&successTpl=`@CODE:<div>Поздравляем с успешной регистрацией, [+fullname.value+]! Теперь вы можете <a href=\"[~11~]\">авторизоваться</a> на сайте.</div>`\n&errorTpl=`@CODE:<span class=\"help-block\">[+message+]</span>`\n&errorClass=` has-error`\n&requiredClass=` has-warning`\n!]\n\n{{inc_footer}}','0','1','1518073556','1518081846');


# --------------------------------------------------------

#
# Table structure for table `evo_site_tmplvar_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_site_tmplvar_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_site_tmplvar_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for template variable access permissions.';

#
# Dumping data for table `evo_site_tmplvar_access`
#


# --------------------------------------------------------

#
# Table structure for table `evo_site_tmplvar_contentvalues`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_site_tmplvar_contentvalues`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_site_tmplvar_contentvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `contentid` int(10) NOT NULL DEFAULT '0' COMMENT 'Site Content Id',
  `value` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_tvid_contentid` (`tmplvarid`,`contentid`),
  KEY `idx_tmplvarid` (`tmplvarid`),
  KEY `idx_id` (`contentid`),
  FULLTEXT KEY `value_ft_idx` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Content Values Link Table';

#
# Dumping data for table `evo_site_tmplvar_contentvalues`
#

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('1','4','1','ru:1||ua:4');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('2','4','4','ru:1||ua:4');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('12','5','86','[[\"Заголовыок 1\",\"Заголовыок 2\",\"Заголовыок 3\",\"Заголовыок 4\",\"Заголовыок 5\"],[\"1.1\",\"1.2\",\"1.3\",\"1.4\",\"1.5\"],[\"2.1\",\"2.2\",\"2.3\",\"2.4\",\"2.5\"],[\"3.1\",\"3.2\",\"3.3\",\"3.4\",\"3.5\"],[\"4.1\",\"4.2\",\"4.3\",\"4.4\",\"4.5\"]]');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('13','6','86','assets/images/news/4.png');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('14','6','84','assets/images/news/4.png');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('15','6','87','assets/images/news/4.png');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('16','6','88','assets/images/news/4.png');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('17','6','85','assets/images/news/4.png');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('18','6','89','assets/images/news/4.png');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('19','6','90','assets/images/news/4.png');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('20','6','91','assets/images/news/4.png');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('21','7','25','1002');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('22','7','43','5');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('23','7','31','2');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('24','7','86','1');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('25','7','20','5');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('26','7','18','1');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('27','7','15','3');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('28','7','23','3');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('29','7','13','2');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('30','7','27','1');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('31','7','33','1');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('32','7','84','1');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('33','7','85','1');


# --------------------------------------------------------

#
# Table structure for table `evo_site_tmplvar_templates`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_site_tmplvar_templates`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Templates Link Table';

#
# Dumping data for table `evo_site_tmplvar_templates`
#

INSERT INTO `evo_site_tmplvar_templates` VALUES ('4','3','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('4','5','1');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('5','5','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('6','5','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('7','5','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('2','3','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('2','6','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('2','7','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('2','5','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('1','3','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('1','6','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('1','7','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('1','5','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('3','3','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('3','6','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('3','7','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('3','5','0');


# --------------------------------------------------------

#
# Table structure for table `evo_site_tmplvars`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_site_tmplvars`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_site_tmplvars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '' COMMENT 'Display Control',
  `display_params` text COMMENT 'Display Control Properties',
  `default_text` text,
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rank` (`rank`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables';

#
# Dumping data for table `evo_site_tmplvars`
#

INSERT INTO `evo_site_tmplvars` VALUES ('1','text','titl','Meta title','Meta title','0','1','0','','0','','','[*pagetitle*] - [(site_name)]','0','1515579519');

INSERT INTO `evo_site_tmplvars` VALUES ('2','text','keyw','Meta keywords','Meta keywords','0','1','0','','0','','','[*pagetitle*]','0','1515579510');

INSERT INTO `evo_site_tmplvars` VALUES ('3','textarea','desc','Meta description','Meta description','0','1','0','','0','','','[*introtext*]','0','1515579528');

INSERT INTO `evo_site_tmplvars` VALUES ('4','custom_tv','relation','Языковые версии ресурса','','0','0','0','@EVAL return $modx->runSnippet(\"evoBabel\"); ','0','','','','1507650714','1507650714');

INSERT INTO `evo_site_tmplvars` VALUES ('5','text','table','Таблица','','0','0','0','','0','','','','1511180225','1511180225');

INSERT INTO `evo_site_tmplvars` VALUES ('6','image','image','Картинка','','0','0','0','','0','','','','1511183048','1511183048');

INSERT INTO `evo_site_tmplvars` VALUES ('7','text','countViews','countViews','','0','0','0','','0','','','','1514371959','1514371959');


# --------------------------------------------------------

#
# Table structure for table `evo_system_eventnames`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_system_eventnames`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_system_eventnames` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `service` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'System Service number',
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1042 DEFAULT CHARSET=utf8 COMMENT='System Event Names.';

#
# Dumping data for table `evo_system_eventnames`
#

INSERT INTO `evo_system_eventnames` VALUES ('1','OnDocPublished','5','');

INSERT INTO `evo_system_eventnames` VALUES ('2','OnDocUnPublished','5','');

INSERT INTO `evo_system_eventnames` VALUES ('3','OnWebPagePrerender','5','');

INSERT INTO `evo_system_eventnames` VALUES ('4','OnWebLogin','3','');

INSERT INTO `evo_system_eventnames` VALUES ('5','OnBeforeWebLogout','3','');

INSERT INTO `evo_system_eventnames` VALUES ('6','OnWebLogout','3','');

INSERT INTO `evo_system_eventnames` VALUES ('7','OnWebSaveUser','3','');

INSERT INTO `evo_system_eventnames` VALUES ('8','OnWebDeleteUser','3','');

INSERT INTO `evo_system_eventnames` VALUES ('9','OnWebChangePassword','3','');

INSERT INTO `evo_system_eventnames` VALUES ('10','OnWebCreateGroup','3','');

INSERT INTO `evo_system_eventnames` VALUES ('11','OnManagerLogin','2','');

INSERT INTO `evo_system_eventnames` VALUES ('12','OnBeforeManagerLogout','2','');

INSERT INTO `evo_system_eventnames` VALUES ('13','OnManagerLogout','2','');

INSERT INTO `evo_system_eventnames` VALUES ('14','OnManagerSaveUser','2','');

INSERT INTO `evo_system_eventnames` VALUES ('15','OnManagerDeleteUser','2','');

INSERT INTO `evo_system_eventnames` VALUES ('16','OnManagerChangePassword','2','');

INSERT INTO `evo_system_eventnames` VALUES ('17','OnManagerCreateGroup','2','');

INSERT INTO `evo_system_eventnames` VALUES ('18','OnBeforeCacheUpdate','4','');

INSERT INTO `evo_system_eventnames` VALUES ('19','OnCacheUpdate','4','');

INSERT INTO `evo_system_eventnames` VALUES ('107','OnMakePageCacheKey','4','');

INSERT INTO `evo_system_eventnames` VALUES ('20','OnLoadWebPageCache','4','');

INSERT INTO `evo_system_eventnames` VALUES ('21','OnBeforeSaveWebPageCache','4','');

INSERT INTO `evo_system_eventnames` VALUES ('22','OnChunkFormPrerender','1','Chunks');

INSERT INTO `evo_system_eventnames` VALUES ('23','OnChunkFormRender','1','Chunks');

INSERT INTO `evo_system_eventnames` VALUES ('24','OnBeforeChunkFormSave','1','Chunks');

INSERT INTO `evo_system_eventnames` VALUES ('25','OnChunkFormSave','1','Chunks');

INSERT INTO `evo_system_eventnames` VALUES ('26','OnBeforeChunkFormDelete','1','Chunks');

INSERT INTO `evo_system_eventnames` VALUES ('27','OnChunkFormDelete','1','Chunks');

INSERT INTO `evo_system_eventnames` VALUES ('28','OnDocFormPrerender','1','Documents');

INSERT INTO `evo_system_eventnames` VALUES ('29','OnDocFormRender','1','Documents');

INSERT INTO `evo_system_eventnames` VALUES ('30','OnBeforeDocFormSave','1','Documents');

INSERT INTO `evo_system_eventnames` VALUES ('31','OnDocFormSave','1','Documents');

INSERT INTO `evo_system_eventnames` VALUES ('32','OnBeforeDocFormDelete','1','Documents');

INSERT INTO `evo_system_eventnames` VALUES ('33','OnDocFormDelete','1','Documents');

INSERT INTO `evo_system_eventnames` VALUES ('1033','OnDocFormUnDelete','1','Documents');

INSERT INTO `evo_system_eventnames` VALUES ('1034','onBeforeMoveDocument','1','Documents');

INSERT INTO `evo_system_eventnames` VALUES ('1035','onAfterMoveDocument','1','Documents');

INSERT INTO `evo_system_eventnames` VALUES ('34','OnPluginFormPrerender','1','Plugins');

INSERT INTO `evo_system_eventnames` VALUES ('35','OnPluginFormRender','1','Plugins');

INSERT INTO `evo_system_eventnames` VALUES ('36','OnBeforePluginFormSave','1','Plugins');

INSERT INTO `evo_system_eventnames` VALUES ('37','OnPluginFormSave','1','Plugins');

INSERT INTO `evo_system_eventnames` VALUES ('38','OnBeforePluginFormDelete','1','Plugins');

INSERT INTO `evo_system_eventnames` VALUES ('39','OnPluginFormDelete','1','Plugins');

INSERT INTO `evo_system_eventnames` VALUES ('40','OnSnipFormPrerender','1','Snippets');

INSERT INTO `evo_system_eventnames` VALUES ('41','OnSnipFormRender','1','Snippets');

INSERT INTO `evo_system_eventnames` VALUES ('42','OnBeforeSnipFormSave','1','Snippets');

INSERT INTO `evo_system_eventnames` VALUES ('43','OnSnipFormSave','1','Snippets');

INSERT INTO `evo_system_eventnames` VALUES ('44','OnBeforeSnipFormDelete','1','Snippets');

INSERT INTO `evo_system_eventnames` VALUES ('45','OnSnipFormDelete','1','Snippets');

INSERT INTO `evo_system_eventnames` VALUES ('46','OnTempFormPrerender','1','Templates');

INSERT INTO `evo_system_eventnames` VALUES ('47','OnTempFormRender','1','Templates');

INSERT INTO `evo_system_eventnames` VALUES ('48','OnBeforeTempFormSave','1','Templates');

INSERT INTO `evo_system_eventnames` VALUES ('49','OnTempFormSave','1','Templates');

INSERT INTO `evo_system_eventnames` VALUES ('50','OnBeforeTempFormDelete','1','Templates');

INSERT INTO `evo_system_eventnames` VALUES ('51','OnTempFormDelete','1','Templates');

INSERT INTO `evo_system_eventnames` VALUES ('52','OnTVFormPrerender','1','Template Variables');

INSERT INTO `evo_system_eventnames` VALUES ('53','OnTVFormRender','1','Template Variables');

INSERT INTO `evo_system_eventnames` VALUES ('54','OnBeforeTVFormSave','1','Template Variables');

INSERT INTO `evo_system_eventnames` VALUES ('55','OnTVFormSave','1','Template Variables');

INSERT INTO `evo_system_eventnames` VALUES ('56','OnBeforeTVFormDelete','1','Template Variables');

INSERT INTO `evo_system_eventnames` VALUES ('57','OnTVFormDelete','1','Template Variables');

INSERT INTO `evo_system_eventnames` VALUES ('58','OnUserFormPrerender','1','Users');

INSERT INTO `evo_system_eventnames` VALUES ('59','OnUserFormRender','1','Users');

INSERT INTO `evo_system_eventnames` VALUES ('60','OnBeforeUserFormSave','1','Users');

INSERT INTO `evo_system_eventnames` VALUES ('61','OnUserFormSave','1','Users');

INSERT INTO `evo_system_eventnames` VALUES ('62','OnBeforeUserFormDelete','1','Users');

INSERT INTO `evo_system_eventnames` VALUES ('63','OnUserFormDelete','1','Users');

INSERT INTO `evo_system_eventnames` VALUES ('64','OnWUsrFormPrerender','1','Web Users');

INSERT INTO `evo_system_eventnames` VALUES ('65','OnWUsrFormRender','1','Web Users');

INSERT INTO `evo_system_eventnames` VALUES ('66','OnBeforeWUsrFormSave','1','Web Users');

INSERT INTO `evo_system_eventnames` VALUES ('67','OnWUsrFormSave','1','Web Users');

INSERT INTO `evo_system_eventnames` VALUES ('68','OnBeforeWUsrFormDelete','1','Web Users');

INSERT INTO `evo_system_eventnames` VALUES ('69','OnWUsrFormDelete','1','Web Users');

INSERT INTO `evo_system_eventnames` VALUES ('70','OnSiteRefresh','1','');

INSERT INTO `evo_system_eventnames` VALUES ('71','OnFileManagerUpload','1','');

INSERT INTO `evo_system_eventnames` VALUES ('72','OnModFormPrerender','1','Modules');

INSERT INTO `evo_system_eventnames` VALUES ('73','OnModFormRender','1','Modules');

INSERT INTO `evo_system_eventnames` VALUES ('74','OnBeforeModFormDelete','1','Modules');

INSERT INTO `evo_system_eventnames` VALUES ('75','OnModFormDelete','1','Modules');

INSERT INTO `evo_system_eventnames` VALUES ('76','OnBeforeModFormSave','1','Modules');

INSERT INTO `evo_system_eventnames` VALUES ('77','OnModFormSave','1','Modules');

INSERT INTO `evo_system_eventnames` VALUES ('78','OnBeforeWebLogin','3','');

INSERT INTO `evo_system_eventnames` VALUES ('79','OnWebAuthentication','3','');

INSERT INTO `evo_system_eventnames` VALUES ('80','OnBeforeManagerLogin','2','');

INSERT INTO `evo_system_eventnames` VALUES ('81','OnManagerAuthentication','2','');

INSERT INTO `evo_system_eventnames` VALUES ('82','OnSiteSettingsRender','1','System Settings');

INSERT INTO `evo_system_eventnames` VALUES ('83','OnFriendlyURLSettingsRender','1','System Settings');

INSERT INTO `evo_system_eventnames` VALUES ('84','OnUserSettingsRender','1','System Settings');

INSERT INTO `evo_system_eventnames` VALUES ('85','OnInterfaceSettingsRender','1','System Settings');

INSERT INTO `evo_system_eventnames` VALUES ('86','OnMiscSettingsRender','1','System Settings');

INSERT INTO `evo_system_eventnames` VALUES ('87','OnRichTextEditorRegister','1','RichText Editor');

INSERT INTO `evo_system_eventnames` VALUES ('88','OnRichTextEditorInit','1','RichText Editor');

INSERT INTO `evo_system_eventnames` VALUES ('89','OnManagerPageInit','2','');

INSERT INTO `evo_system_eventnames` VALUES ('90','OnWebPageInit','5','');

INSERT INTO `evo_system_eventnames` VALUES ('101','OnLoadDocumentObject','5','');

INSERT INTO `evo_system_eventnames` VALUES ('104','OnBeforeLoadDocumentObject','5','');

INSERT INTO `evo_system_eventnames` VALUES ('105','OnAfterLoadDocumentObject','5','');

INSERT INTO `evo_system_eventnames` VALUES ('91','OnLoadWebDocument','5','');

INSERT INTO `evo_system_eventnames` VALUES ('92','OnParseDocument','5','');

INSERT INTO `evo_system_eventnames` VALUES ('106','OnParseProperties','5','');

INSERT INTO `evo_system_eventnames` VALUES ('108','OnBeforeParseParams','5','');

INSERT INTO `evo_system_eventnames` VALUES ('93','OnManagerLoginFormRender','2','');

INSERT INTO `evo_system_eventnames` VALUES ('94','OnWebPageComplete','5','');

INSERT INTO `evo_system_eventnames` VALUES ('95','OnLogPageHit','5','');

INSERT INTO `evo_system_eventnames` VALUES ('96','OnBeforeManagerPageInit','2','');

INSERT INTO `evo_system_eventnames` VALUES ('97','OnBeforeEmptyTrash','1','Documents');

INSERT INTO `evo_system_eventnames` VALUES ('98','OnEmptyTrash','1','Documents');

INSERT INTO `evo_system_eventnames` VALUES ('99','OnManagerLoginFormPrerender','2','');

INSERT INTO `evo_system_eventnames` VALUES ('100','OnStripAlias','1','Documents');

INSERT INTO `evo_system_eventnames` VALUES ('102','OnMakeDocUrl','5','');

INSERT INTO `evo_system_eventnames` VALUES ('103','OnBeforeLoadExtension','5','');

INSERT INTO `evo_system_eventnames` VALUES ('200','OnCreateDocGroup','1','Documents');

INSERT INTO `evo_system_eventnames` VALUES ('201','OnManagerWelcomePrerender','2','');

INSERT INTO `evo_system_eventnames` VALUES ('202','OnManagerWelcomeHome','2','');

INSERT INTO `evo_system_eventnames` VALUES ('203','OnManagerWelcomeRender','2','');

INSERT INTO `evo_system_eventnames` VALUES ('204','OnBeforeDocDuplicate','1','Documents');

INSERT INTO `evo_system_eventnames` VALUES ('205','OnDocDuplicate','1','Documents');

INSERT INTO `evo_system_eventnames` VALUES ('206','OnManagerMainFrameHeaderHTMLBlock','2','');

INSERT INTO `evo_system_eventnames` VALUES ('207','OnManagerPreFrameLoader','2','');

INSERT INTO `evo_system_eventnames` VALUES ('208','OnManagerFrameLoader','2','');

INSERT INTO `evo_system_eventnames` VALUES ('209','OnManagerTreeInit','2','');

INSERT INTO `evo_system_eventnames` VALUES ('210','OnManagerTreePrerender','2','');

INSERT INTO `evo_system_eventnames` VALUES ('211','OnManagerTreeRender','2','');

INSERT INTO `evo_system_eventnames` VALUES ('212','OnManagerNodePrerender','2','');

INSERT INTO `evo_system_eventnames` VALUES ('213','OnManagerNodeRender','2','');

INSERT INTO `evo_system_eventnames` VALUES ('214','OnManagerMenuPrerender','2','');

INSERT INTO `evo_system_eventnames` VALUES ('215','OnManagerTopPrerender','2','');

INSERT INTO `evo_system_eventnames` VALUES ('224','OnDocFormTemplateRender','1','Documents');

INSERT INTO `evo_system_eventnames` VALUES ('999','OnPageUnauthorized','1','');

INSERT INTO `evo_system_eventnames` VALUES ('1000','OnPageNotFound','1','');

INSERT INTO `evo_system_eventnames` VALUES ('1001','OnFileBrowserUpload','1','File Browser Events');

INSERT INTO `evo_system_eventnames` VALUES ('1036','OnBeforeSimpleGallerySave','6','SimpleGallery Events');

INSERT INTO `evo_system_eventnames` VALUES ('1037','OnSimpleGallerySave','6','SimpleGallery Events');

INSERT INTO `evo_system_eventnames` VALUES ('1038','OnBeforeSimpleGalleryDelete','6','SimpleGallery Events');

INSERT INTO `evo_system_eventnames` VALUES ('1039','OnSimpleGalleryDelete','6','SimpleGallery Events');

INSERT INTO `evo_system_eventnames` VALUES ('1040','OnSimpleGalleryMove','6','SimpleGallery Events');

INSERT INTO `evo_system_eventnames` VALUES ('1041','OnSimpleGalleryRefresh','6','SimpleGallery Events');


# --------------------------------------------------------

#
# Table structure for table `evo_system_settings`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_system_settings`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_system_settings` (
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`setting_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains Content Manager settings.';

#
# Dumping data for table `evo_system_settings`
#

INSERT INTO `evo_system_settings` VALUES ('settings_version','1.4.0.RC2');

INSERT INTO `evo_system_settings` VALUES ('manager_theme','default');

INSERT INTO `evo_system_settings` VALUES ('server_offset_time','0');

INSERT INTO `evo_system_settings` VALUES ('manager_language','russian-UTF8');

INSERT INTO `evo_system_settings` VALUES ('modx_charset','UTF-8');

INSERT INTO `evo_system_settings` VALUES ('site_name','Теплосеть');

INSERT INTO `evo_system_settings` VALUES ('site_start','1');

INSERT INTO `evo_system_settings` VALUES ('error_page','1');

INSERT INTO `evo_system_settings` VALUES ('unauthorized_page','1');

INSERT INTO `evo_system_settings` VALUES ('site_status','1');

INSERT INTO `evo_system_settings` VALUES ('auto_template_logic','sibling');

INSERT INTO `evo_system_settings` VALUES ('default_template','5');

INSERT INTO `evo_system_settings` VALUES ('old_template','5');

INSERT INTO `evo_system_settings` VALUES ('publish_default','1');

INSERT INTO `evo_system_settings` VALUES ('friendly_urls','1');

INSERT INTO `evo_system_settings` VALUES ('friendly_alias_urls','1');

INSERT INTO `evo_system_settings` VALUES ('use_alias_path','1');

INSERT INTO `evo_system_settings` VALUES ('cache_type','2');

INSERT INTO `evo_system_settings` VALUES ('failed_login_attempts','3');

INSERT INTO `evo_system_settings` VALUES ('blocked_minutes','60');

INSERT INTO `evo_system_settings` VALUES ('use_captcha','0');

INSERT INTO `evo_system_settings` VALUES ('emailsender','beninbenino@gmail.com');

INSERT INTO `evo_system_settings` VALUES ('use_editor','1');

INSERT INTO `evo_system_settings` VALUES ('use_browser','1');

INSERT INTO `evo_system_settings` VALUES ('fe_editor_lang','russian-UTF8');

INSERT INTO `evo_system_settings` VALUES ('fck_editor_toolbar','standard');

INSERT INTO `evo_system_settings` VALUES ('fck_editor_autolang','0');

INSERT INTO `evo_system_settings` VALUES ('editor_css_path','');

INSERT INTO `evo_system_settings` VALUES ('editor_css_selectors','');

INSERT INTO `evo_system_settings` VALUES ('upload_maxsize','10485760');

INSERT INTO `evo_system_settings` VALUES ('manager_layout','4');

INSERT INTO `evo_system_settings` VALUES ('auto_menuindex','1');

INSERT INTO `evo_system_settings` VALUES ('session.cookie.lifetime','604800');

INSERT INTO `evo_system_settings` VALUES ('mail_check_timeperiod','600');

INSERT INTO `evo_system_settings` VALUES ('manager_direction','ltr');

INSERT INTO `evo_system_settings` VALUES ('xhtml_urls','0');

INSERT INTO `evo_system_settings` VALUES ('automatic_alias','1');

INSERT INTO `evo_system_settings` VALUES ('datetime_format','dd-mm-YYYY');

INSERT INTO `evo_system_settings` VALUES ('warning_visibility','0');

INSERT INTO `evo_system_settings` VALUES ('remember_last_tab','1');

INSERT INTO `evo_system_settings` VALUES ('enable_bindings','1');

INSERT INTO `evo_system_settings` VALUES ('seostrict','1');

INSERT INTO `evo_system_settings` VALUES ('number_of_results','30');

INSERT INTO `evo_system_settings` VALUES ('theme_refresher','');

INSERT INTO `evo_system_settings` VALUES ('site_id','59d350b9026d9');

INSERT INTO `evo_system_settings` VALUES ('site_unavailable_page','');

INSERT INTO `evo_system_settings` VALUES ('reload_site_unavailable','');

INSERT INTO `evo_system_settings` VALUES ('site_unavailable_message','В настоящее время сайт недоступен.');

INSERT INTO `evo_system_settings` VALUES ('siteunavailable_message_default','В настоящее время сайт недоступен.');

INSERT INTO `evo_system_settings` VALUES ('enable_filter','0');

INSERT INTO `evo_system_settings` VALUES ('cache_default','1');

INSERT INTO `evo_system_settings` VALUES ('search_default','1');

INSERT INTO `evo_system_settings` VALUES ('custom_contenttype','application/rss+xml,application/pdf,application/vnd.ms-word,application/vnd.ms-excel,text/html,text/css,text/xml,text/javascript,text/plain,application/json');

INSERT INTO `evo_system_settings` VALUES ('docid_incrmnt_method','0');

INSERT INTO `evo_system_settings` VALUES ('enable_cache','1');

INSERT INTO `evo_system_settings` VALUES ('minifyphp_incache','0');

INSERT INTO `evo_system_settings` VALUES ('server_protocol','http');

INSERT INTO `evo_system_settings` VALUES ('rss_url_news','http://feeds.feedburner.com/modx-announce');

INSERT INTO `evo_system_settings` VALUES ('track_visitors','0');

INSERT INTO `evo_system_settings` VALUES ('top_howmany','10');

INSERT INTO `evo_system_settings` VALUES ('friendly_url_prefix','');

INSERT INTO `evo_system_settings` VALUES ('friendly_url_suffix','.html');

INSERT INTO `evo_system_settings` VALUES ('make_folders','0');

INSERT INTO `evo_system_settings` VALUES ('aliaslistingfolder','0');

INSERT INTO `evo_system_settings` VALUES ('allow_duplicate_alias','0');

INSERT INTO `evo_system_settings` VALUES ('use_udperms','1');

INSERT INTO `evo_system_settings` VALUES ('udperms_allowroot','0');

INSERT INTO `evo_system_settings` VALUES ('email_method','mail');

INSERT INTO `evo_system_settings` VALUES ('smtp_auth','0');

INSERT INTO `evo_system_settings` VALUES ('smtp_secure','none');

INSERT INTO `evo_system_settings` VALUES ('smtp_host','smtp.example.com');

INSERT INTO `evo_system_settings` VALUES ('smtp_port','25');

INSERT INTO `evo_system_settings` VALUES ('smtp_username','you@example.com');

INSERT INTO `evo_system_settings` VALUES ('reload_emailsubject','');

INSERT INTO `evo_system_settings` VALUES ('emailsubject','Данные для авторизации');

INSERT INTO `evo_system_settings` VALUES ('emailsubject_default','Данные для авторизации');

INSERT INTO `evo_system_settings` VALUES ('reload_signupemail_message','');

INSERT INTO `evo_system_settings` VALUES ('signupemail_message','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации в системе управления сайтом [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');

INSERT INTO `evo_system_settings` VALUES ('system_email_signup_default','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации в системе управления сайтом [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');

INSERT INTO `evo_system_settings` VALUES ('reload_websignupemail_message','');

INSERT INTO `evo_system_settings` VALUES ('websignupemail_message','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации на [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');

INSERT INTO `evo_system_settings` VALUES ('system_email_websignup_default','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации на [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');

INSERT INTO `evo_system_settings` VALUES ('reload_system_email_webreminder_message','');

INSERT INTO `evo_system_settings` VALUES ('webpwdreminder_message','Здравствуйте, [+uid+]!\n\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\n\n[+surl+]\n\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\n\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\n\nС уважением, Администрация');

INSERT INTO `evo_system_settings` VALUES ('system_email_webreminder_default','Здравствуйте, [+uid+]!\n\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\n\n[+surl+]\n\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\n\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\n\nС уважением, Администрация');

INSERT INTO `evo_system_settings` VALUES ('tree_page_click','27');

INSERT INTO `evo_system_settings` VALUES ('use_breadcrumbs','1');

INSERT INTO `evo_system_settings` VALUES ('group_tvs','0');

INSERT INTO `evo_system_settings` VALUES ('resource_tree_node_name','pagetitle');

INSERT INTO `evo_system_settings` VALUES ('session_timeout','15');

INSERT INTO `evo_system_settings` VALUES ('tree_show_protected','0');

INSERT INTO `evo_system_settings` VALUES ('datepicker_offset','-10');

INSERT INTO `evo_system_settings` VALUES ('number_of_logs','100');

INSERT INTO `evo_system_settings` VALUES ('number_of_messages','40');

INSERT INTO `evo_system_settings` VALUES ('which_editor','TinyMCE4');

INSERT INTO `evo_system_settings` VALUES ('tinymce4_theme','custom');

INSERT INTO `evo_system_settings` VALUES ('tinymce4_skin','lightgray');

INSERT INTO `evo_system_settings` VALUES ('tinymce4_template_docs','');

INSERT INTO `evo_system_settings` VALUES ('tinymce4_template_chunks','');

INSERT INTO `evo_system_settings` VALUES ('tinymce4_entermode','p');

INSERT INTO `evo_system_settings` VALUES ('tinymce4_element_format','xhtml');

INSERT INTO `evo_system_settings` VALUES ('tinymce4_schema','html5');

INSERT INTO `evo_system_settings` VALUES ('tinymce4_custom_plugins','advlist autolink lists link image charmap print preview hr anchor pagebreak searchreplace wordcount visualblocks visualchars code fullscreen spellchecker insertdatetime media nonbreaking save table contextmenu directionality emoticons template paste textcolor codesample colorpicker textpattern imagetools paste modxlink youtube');

INSERT INTO `evo_system_settings` VALUES ('tinymce4_custom_buttons1','undo redo | cut copy paste | searchreplace | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent blockquote | styleselect');

INSERT INTO `evo_system_settings` VALUES ('tinymce4_custom_buttons2','link unlink anchor image media codesample table | hr removeformat | subscript superscript charmap | nonbreaking | visualchars visualblocks print preview fullscreen code formatselect');

INSERT INTO `evo_system_settings` VALUES ('tinymce4_custom_buttons3','');

INSERT INTO `evo_system_settings` VALUES ('tinymce4_custom_buttons4','');

INSERT INTO `evo_system_settings` VALUES ('tinymce4_blockFormats','Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3');

INSERT INTO `evo_system_settings` VALUES ('allow_eval','with_scan');

INSERT INTO `evo_system_settings` VALUES ('safe_functions_at_eval','time,date,strtotime,strftime');

INSERT INTO `evo_system_settings` VALUES ('check_files_onlogin','index.php\n.htaccess\nmanager/index.php\nmanager/includes/config.inc.php');

INSERT INTO `evo_system_settings` VALUES ('validate_referer','1');

INSERT INTO `evo_system_settings` VALUES ('rss_url_security','http://feeds.feedburner.com/modxsecurity');

INSERT INTO `evo_system_settings` VALUES ('error_reporting','1');

INSERT INTO `evo_system_settings` VALUES ('send_errormail','0');

INSERT INTO `evo_system_settings` VALUES ('pwd_hash_algo','UNCRYPT');

INSERT INTO `evo_system_settings` VALUES ('reload_captcha_words','');

INSERT INTO `evo_system_settings` VALUES ('captcha_words','EVO,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote');

INSERT INTO `evo_system_settings` VALUES ('captcha_words_default','EVO,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote');

INSERT INTO `evo_system_settings` VALUES ('filemanager_path','/home/host1488038/lector-web.com/htdocs/teplo/');

INSERT INTO `evo_system_settings` VALUES ('upload_files','bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,fla,flv,swf,aac,au,avi,css,cache,doc,docx,gz,gzip,htaccess,htm,html,js,mp3,mp4,mpeg,mpg,ods,odp,odt,pdf,ppt,pptx,rar,tar,tgz,txt,wav,wmv,xls,xlsx,xml,z,zip,JPG,JPEG,PNG,GIF,svg');

INSERT INTO `evo_system_settings` VALUES ('upload_images','bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,svg');

INSERT INTO `evo_system_settings` VALUES ('upload_media','au,avi,mp3,mp4,mpeg,mpg,wav,wmv');

INSERT INTO `evo_system_settings` VALUES ('upload_flash','fla,flv,swf');

INSERT INTO `evo_system_settings` VALUES ('new_file_permissions','0644');

INSERT INTO `evo_system_settings` VALUES ('new_folder_permissions','0755');

INSERT INTO `evo_system_settings` VALUES ('which_browser','mcpuk');

INSERT INTO `evo_system_settings` VALUES ('rb_webuser','0');

INSERT INTO `evo_system_settings` VALUES ('rb_base_dir','/home/host1488038/lector-web.com/htdocs/teplo/assets/');

INSERT INTO `evo_system_settings` VALUES ('rb_base_url','assets/');

INSERT INTO `evo_system_settings` VALUES ('clean_uploaded_filename','1');

INSERT INTO `evo_system_settings` VALUES ('strip_image_paths','1');

INSERT INTO `evo_system_settings` VALUES ('maxImageWidth','2600');

INSERT INTO `evo_system_settings` VALUES ('maxImageHeight','2200');

INSERT INTO `evo_system_settings` VALUES ('thumbWidth','150');

INSERT INTO `evo_system_settings` VALUES ('thumbHeight','150');

INSERT INTO `evo_system_settings` VALUES ('thumbsDir','.thumbs');

INSERT INTO `evo_system_settings` VALUES ('jpegQuality','90');

INSERT INTO `evo_system_settings` VALUES ('denyZipDownload','0');

INSERT INTO `evo_system_settings` VALUES ('denyExtensionRename','0');

INSERT INTO `evo_system_settings` VALUES ('showHiddenFiles','0');

INSERT INTO `evo_system_settings` VALUES ('lang_code','ru');

INSERT INTO `evo_system_settings` VALUES ('sys_files_checksum','a:4:{s:55:\"/home/host1488038/lector-web.com/htdocs/teplo/index.php\";s:32:\"1a580fcd2fe7218b42b621ec00bfedfd\";s:55:\"/home/host1488038/lector-web.com/htdocs/teplo/.htaccess\";s:32:\"4a85d88f437a75e2d2b008debc0eaec6\";s:63:\"/home/host1488038/lector-web.com/htdocs/teplo/manager/index.php\";s:32:\"863a96f261fe95da8b2a549002172c37\";s:77:\"/home/host1488038/lector-web.com/htdocs/teplo/manager/includes/config.inc.php\";s:32:\"d8d7e61fc6bf3c624609f1dd0f1abfb1\";}');

INSERT INTO `evo_system_settings` VALUES ('enable_at_syntax','1');

INSERT INTO `evo_system_settings` VALUES ('global_tabs','1');

INSERT INTO `evo_system_settings` VALUES ('show_picker','1');

INSERT INTO `evo_system_settings` VALUES ('show_newresource_btn','1');

INSERT INTO `evo_system_settings` VALUES ('show_fullscreen_btn','1');


# --------------------------------------------------------

#
# Table structure for table `evo_user_attributes`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_user_attributes`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_user_attributes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(5) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text,
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Contains information about the backend users.';

#
# Dumping data for table `evo_user_attributes`
#

INSERT INTO `evo_user_attributes` VALUES ('1','1','Admin','1','beninbenino@gmail.com','','','0','1508560687','0','73','1517987237','1518072372','0','9840b30249cdef998b1e301bf81ed677','0','0','','','','','','','','','0','0');


# --------------------------------------------------------

#
# Table structure for table `evo_user_messages`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_user_messages`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_user_messages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(60) NOT NULL DEFAULT '',
  `message` text,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `postdate` int(20) NOT NULL DEFAULT '0',
  `messageread` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains messages for the Content Manager messaging system.';

#
# Dumping data for table `evo_user_messages`
#


# --------------------------------------------------------

#
# Table structure for table `evo_user_roles`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_user_roles`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_user_roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `frames` int(1) NOT NULL DEFAULT '0',
  `home` int(1) NOT NULL DEFAULT '0',
  `view_document` int(1) NOT NULL DEFAULT '0',
  `new_document` int(1) NOT NULL DEFAULT '0',
  `save_document` int(1) NOT NULL DEFAULT '0',
  `publish_document` int(1) NOT NULL DEFAULT '0',
  `delete_document` int(1) NOT NULL DEFAULT '0',
  `empty_trash` int(1) NOT NULL DEFAULT '0',
  `action_ok` int(1) NOT NULL DEFAULT '0',
  `logout` int(1) NOT NULL DEFAULT '0',
  `help` int(1) NOT NULL DEFAULT '0',
  `messages` int(1) NOT NULL DEFAULT '0',
  `new_user` int(1) NOT NULL DEFAULT '0',
  `edit_user` int(1) NOT NULL DEFAULT '0',
  `logs` int(1) NOT NULL DEFAULT '0',
  `edit_parser` int(1) NOT NULL DEFAULT '0',
  `save_parser` int(1) NOT NULL DEFAULT '0',
  `edit_template` int(1) NOT NULL DEFAULT '0',
  `settings` int(1) NOT NULL DEFAULT '0',
  `credits` int(1) NOT NULL DEFAULT '0',
  `new_template` int(1) NOT NULL DEFAULT '0',
  `save_template` int(1) NOT NULL DEFAULT '0',
  `delete_template` int(1) NOT NULL DEFAULT '0',
  `edit_snippet` int(1) NOT NULL DEFAULT '0',
  `new_snippet` int(1) NOT NULL DEFAULT '0',
  `save_snippet` int(1) NOT NULL DEFAULT '0',
  `delete_snippet` int(1) NOT NULL DEFAULT '0',
  `edit_chunk` int(1) NOT NULL DEFAULT '0',
  `new_chunk` int(1) NOT NULL DEFAULT '0',
  `save_chunk` int(1) NOT NULL DEFAULT '0',
  `delete_chunk` int(1) NOT NULL DEFAULT '0',
  `empty_cache` int(1) NOT NULL DEFAULT '0',
  `edit_document` int(1) NOT NULL DEFAULT '0',
  `change_password` int(1) NOT NULL DEFAULT '0',
  `error_dialog` int(1) NOT NULL DEFAULT '0',
  `about` int(1) NOT NULL DEFAULT '0',
  `category_manager` int(1) NOT NULL DEFAULT '0',
  `file_manager` int(1) NOT NULL DEFAULT '0',
  `assets_files` int(1) NOT NULL DEFAULT '0',
  `assets_images` int(1) NOT NULL DEFAULT '0',
  `save_user` int(1) NOT NULL DEFAULT '0',
  `delete_user` int(1) NOT NULL DEFAULT '0',
  `save_password` int(11) NOT NULL DEFAULT '0',
  `edit_role` int(1) NOT NULL DEFAULT '0',
  `save_role` int(1) NOT NULL DEFAULT '0',
  `delete_role` int(1) NOT NULL DEFAULT '0',
  `new_role` int(1) NOT NULL DEFAULT '0',
  `access_permissions` int(1) NOT NULL DEFAULT '0',
  `bk_manager` int(1) NOT NULL DEFAULT '0',
  `new_plugin` int(1) NOT NULL DEFAULT '0',
  `edit_plugin` int(1) NOT NULL DEFAULT '0',
  `save_plugin` int(1) NOT NULL DEFAULT '0',
  `delete_plugin` int(1) NOT NULL DEFAULT '0',
  `new_module` int(1) NOT NULL DEFAULT '0',
  `edit_module` int(1) NOT NULL DEFAULT '0',
  `save_module` int(1) NOT NULL DEFAULT '0',
  `delete_module` int(1) NOT NULL DEFAULT '0',
  `exec_module` int(1) NOT NULL DEFAULT '0',
  `view_eventlog` int(1) NOT NULL DEFAULT '0',
  `delete_eventlog` int(1) NOT NULL DEFAULT '0',
  `new_web_user` int(1) NOT NULL DEFAULT '0',
  `edit_web_user` int(1) NOT NULL DEFAULT '0',
  `save_web_user` int(1) NOT NULL DEFAULT '0',
  `delete_web_user` int(1) NOT NULL DEFAULT '0',
  `web_access_permissions` int(1) NOT NULL DEFAULT '0',
  `view_unpublished` int(1) NOT NULL DEFAULT '0',
  `import_static` int(1) NOT NULL DEFAULT '0',
  `export_static` int(1) NOT NULL DEFAULT '0',
  `remove_locks` int(1) NOT NULL DEFAULT '0',
  `display_locks` int(1) NOT NULL DEFAULT '0',
  `change_resourcetype` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Contains information describing the user roles.';

#
# Dumping data for table `evo_user_roles`
#

INSERT INTO `evo_user_roles` VALUES ('2','Editor','Limited to managing content','1','1','1','1','1','1','1','0','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','1','0','1','0','1','1','1','1','1','0','1','1','1','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','1','0','0','1','1','1');

INSERT INTO `evo_user_roles` VALUES ('3','Publisher','Editor with expanded permissions including manage users, update Elements and site settings','1','1','1','1','1','1','1','1','1','1','1','0','1','1','1','0','0','1','1','1','1','1','1','0','0','0','0','1','1','1','1','1','1','1','1','1','0','1','1','1','1','1','1','0','0','0','0','0','1','0','0','0','0','0','0','0','0','1','0','0','1','1','1','1','0','1','0','0','1','1','1');

INSERT INTO `evo_user_roles` VALUES ('1','Administrator','Site administrators have full access to all functions','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1');


# --------------------------------------------------------

#
# Table structure for table `evo_user_settings`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_user_settings`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_user_settings` (
  `user` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`user`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains backend user settings.';

#
# Dumping data for table `evo_user_settings`
#


# --------------------------------------------------------

#
# Table structure for table `evo_web_groups`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_web_groups`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_web_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `webuser` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_user` (`webgroup`,`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `evo_web_groups`
#


# --------------------------------------------------------

#
# Table structure for table `evo_web_user_attributes`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_web_user_attributes`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_web_user_attributes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(25) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text,
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains information for web users.';

#
# Dumping data for table `evo_web_user_attributes`
#


# --------------------------------------------------------

#
# Table structure for table `evo_web_user_settings`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_web_user_settings`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_web_user_settings` (
  `webuser` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`webuser`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `webuserid` (`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains web user settings.';

#
# Dumping data for table `evo_web_user_settings`
#


# --------------------------------------------------------

#
# Table structure for table `evo_web_users`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_web_users`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_web_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '' COMMENT 'Store new unconfirmed password',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Dumping data for table `evo_web_users`
#


# --------------------------------------------------------

#
# Table structure for table `evo_webgroup_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_webgroup_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_webgroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `evo_webgroup_access`
#


# --------------------------------------------------------

#
# Table structure for table `evo_webgroup_names`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evo_webgroup_names`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `evo_webgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `evo_webgroup_names`
#
