#
# Теплосеть Database Dump
# MODX Version:1.4.3
# 
# Host: 
# Generation Time: 21-06-2018 11:39:43
# Server version: 5.7.11-4-log
# PHP Version: 7.1.15
# Database: `host1488038_teplo`
# Description: init: 0.20180621
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
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='Contains data about locked elements.';

#
# Dumping data for table `evo_active_user_locks`
#


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

INSERT INTO `evo_active_user_sessions` VALUES ('fb64102156b0bf9c422b038da558b812','1','1529570383','91.250.61.87');


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

INSERT INTO `evo_active_users` VALUES ('fb64102156b0bf9c422b038da558b812','1','admin','1529570383','93',NULL);

INSERT INTO `evo_active_users` VALUES ('8bbc328aabf740a3999b7374a0ac2dbd','1','admin','1528624312','2',NULL);


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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Categories to be used snippets,tv,chunks, etc';

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

INSERT INTO `evo_categories` VALUES ('15','Responsiv table','0');


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
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8 COMMENT='Stores event and error logs';

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

INSERT INTO `evo_event_log` VALUES ('111','0','1518125954','3','1','1','Snippet - FormLister / No newline allowed in redir','<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><h3 style=\"color:red\">No newline allowed in redirect url.</h3>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>FormLister</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://teplo.lector-web.com/ru/avtorizaciya.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[95] <a href=\"http://teplo.lector-web.com/ru/avtorizaciya.html\" target=\"_blank\">Авторизация</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://teplo.lector-web.com/ru/avtorizaciya.html</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>5.105.44.230</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2018-02-09 00:39:14</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0,0114 s (28 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0,0302 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0,0416 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1,6559143066406 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 129</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2740</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2864</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 811</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2593</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 1901</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1990</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1838</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1838) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>FormLister\\Login->render</strong>()<br />assets/snippets/FormLister/snippet.FormLister.php on line 43</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>FormLister\\Core->render</strong>()<br />assets/snippets/FormLister/core/controller/Login.php on line 51</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>FormLister\\Login->process</strong>()<br />assets/snippets/FormLister/core/FormLister.abstract.php on line 400</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>FormLister\\Core->redirect</strong>()<br />assets/snippets/FormLister/core/controller/Login.php on line 103</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>FormLister\\Core->sendRedirect</strong>(\'{\n    &quot;page&quot;:94\', string $var2)<br />assets/snippets/FormLister/core/FormLister.abstract.php on line 1044</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->sendRedirect</strong>(\'{\n    &quot;page&quot;:94\', 0, \'REDIRECT_HEADER\', string $var4)<br />assets/snippets/FormLister/core/FormLister.abstract.php on line 1056</td>\n	</tr>\n</table>\n');

INSERT INTO `evo_event_log` VALUES ('112','0','1518420748','1','1','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('113','0','1518420754','1','1','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('114','0','1518421134','1','1','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('115','0','1518421244','1','1','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('116','0','1518421366','1','1','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('117','0','1518421618','1','1','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('118','0','1518421693','1','1','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('119','0','1518421827','1','1','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('120','0','1518422159','1','1','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('121','0','1518426007','1','0','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('122','0','1518426070','1','0','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('123','0','1518426440','1','0','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('124','0','1518426490','1','0','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('125','0','1518426998','1','0','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('126','0','1518427040','1','1','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('127','0','1518427265','1','0','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('128','0','1518433289','1','4','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('129','0','1518433589','1','5','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('130','0','1518433636','1','5','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('131','0','1518433740','1','5','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('132','0','1518435995','1','1','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('133','0','1518436097','1','1','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('134','0','1518436325','1','1','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('135','0','1518436462','1','1','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('136','0','1518521418','1','1','1','FormLister','Parameter &formid is not set');

INSERT INTO `evo_event_log` VALUES ('137','0','1518521509','1','1','1','FormLister','Parameter &formid is not set');


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
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

#
# Dumping data for table `evo_lexicon`
#

INSERT INTO `evo_lexicon` VALUES ('1','Контакты','Контакты','Звязки');

INSERT INTO `evo_lexicon` VALUES ('2','RU','2','3');

INSERT INTO `evo_lexicon` VALUES ('3','Поиск','Поиск','Пошук');

INSERT INTO `evo_lexicon` VALUES ('4','Личный кабинет','Личный кабинет',' Особистий кабінет');

INSERT INTO `evo_lexicon` VALUES ('5','Новости','82','109');

INSERT INTO `evo_lexicon` VALUES ('6','Главные новости','Главные новости','Головні новини');

INSERT INTO `evo_lexicon` VALUES ('7','Лента новостей','Лента новостей','Стрічка новин');

INSERT INTO `evo_lexicon` VALUES ('8','Не зарегистрирован','Не зарегистрирован','Не зареєстрований');

INSERT INTO `evo_lexicon` VALUES ('9','Обязательно введите','Обязательно введите','Обов\'язково введіть');

INSERT INTO `evo_lexicon` VALUES ('10','В пароле должно быть больше 6 символов','В пароле должно быть больше 6 символов','У паролі має бути більше 6 символів');

INSERT INTO `evo_lexicon` VALUES ('11','Введите email правильно','Введите email правильно','Введіть email правильно');

INSERT INTO `evo_lexicon` VALUES ('12','Этот email уже использует другой пользователь','Этот email уже использует другой пользователь','Цей email вже використовує інший користувач');

INSERT INTO `evo_lexicon` VALUES ('13','Обязательно введите пароль','Обязательно введите пароль','Обов\'язково введіть пароль');

INSERT INTO `evo_lexicon` VALUES ('14','Повторите пароль','Повторите пароль','Повторіть пароль');

INSERT INTO `evo_lexicon` VALUES ('15','Пароли не совпадают','Пароли не совпадают','Паролі не співпадають');

INSERT INTO `evo_lexicon` VALUES ('16','Для регистрации вы должны принять правила','Для регистрации вы должны принять правила','Для реєстрації ви повинні прийняти правила');

INSERT INTO `evo_lexicon` VALUES ('17','Зарегистрироваться','Зарегистрироваться','Зареєструватися');

INSERT INTO `evo_lexicon` VALUES ('18','Имя','Имя','Ім\'я');

INSERT INTO `evo_lexicon` VALUES ('19','Я согласен с правилами','Я согласен с правилами','Я згоден з правилами');

INSERT INTO `evo_lexicon` VALUES ('20','Поздравляем с успешной регистрацией','Поздравляем с успешной регистрацией','Вітаємо з успішною реєстрацією');

INSERT INTO `evo_lexicon` VALUES ('21','Теперь вы можете','Теперь вы можете','Тепер ви можете');

INSERT INTO `evo_lexicon` VALUES ('22','авторизоваться','авторизоваться','авторизуватись');

INSERT INTO `evo_lexicon` VALUES ('23','на сайте','на сайте','на сайті');

INSERT INTO `evo_lexicon` VALUES ('24','Выход','Выход','Вихід');

INSERT INTO `evo_lexicon` VALUES ('25','Информация','Информация','Інформація');

INSERT INTO `evo_lexicon` VALUES ('26','Сверка','Сверка','Звірка');

INSERT INTO `evo_lexicon` VALUES ('27','Квитанция','Квитанция','Квитанція');

INSERT INTO `evo_lexicon` VALUES ('28','Договор','Договор','Договір');

INSERT INTO `evo_lexicon` VALUES ('29','Платежи','Платежи','Платежі');

INSERT INTO `evo_lexicon` VALUES ('30','Субсидии','Субсидии','Субсидії');

INSERT INTO `evo_lexicon` VALUES ('31','Приборы учета','Приборы учета','Прилади обліку');

INSERT INTO `evo_lexicon` VALUES ('32','Профиль','Профиль','Профіль');

INSERT INTO `evo_lexicon` VALUES ('33','Интернет приемная','Интернет приемная','Інтернет приймальня');

INSERT INTO `evo_lexicon` VALUES ('34','Задать вопрос','Задать вопрос','Задати питання');

INSERT INTO `evo_lexicon` VALUES ('35','home-page','1','4');

INSERT INTO `evo_lexicon` VALUES ('36','reg-page','96','113');

INSERT INTO `evo_lexicon` VALUES ('37','user-page','94','111');

INSERT INTO `evo_lexicon` VALUES ('38','search-page','93','110');

INSERT INTO `evo_lexicon` VALUES ('39','in-page','95','112');

INSERT INTO `evo_lexicon` VALUES ('40','Отправить','Отправить','Відправити');

INSERT INTO `evo_lexicon` VALUES ('41','Забыл пароль','Забыл пароль','Забув пароль');

INSERT INTO `evo_lexicon` VALUES ('42','rePass-page','146','147');

INSERT INTO `evo_lexicon` VALUES ('43','Письмо с инструкциями отправлено по электронной почте, указанному при регистрации!','Письмо с инструкциями отправлено по электронной почте, указанному при регистрации!','Лист з інструкціями відправлено по електронній пошті, вказаною при реєстрації!');

INSERT INTO `evo_lexicon` VALUES ('44','Чтобы восстановить пароль, нажмите на ссылку','Чтобы восстановить пароль, нажмите на ссылку','Щоб відновити пароль, натисніть на посилання');

INSERT INTO `evo_lexicon` VALUES ('45','Ваш новый пароль','Ваш новый пароль','Ваш новий пароль');

INSERT INTO `evo_lexicon` VALUES ('46','Здравствуй','Здравствуй','Здрастуй');

INSERT INTO `evo_lexicon` VALUES ('47','Сохранить','Сохранить','Зберегти');

INSERT INTO `evo_lexicon` VALUES ('48','reset-pass','148','149');

INSERT INTO `evo_lexicon` VALUES ('49','reset-pass','146','147');

INSERT INTO `evo_lexicon` VALUES ('50','Детали профиля','Детали профиля','Деталі профілю');

INSERT INTO `evo_lexicon` VALUES ('51','Имя пользователя','Имя пользователя','Ім\'я користувача');


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
  `ip` varchar(15) DEFAULT NULL,
  `useragent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4886 DEFAULT CHARSET=utf8 COMMENT='Contains a record of user interaction.';

#
# Dumping data for table `evo_manager_log`
#

INSERT INTO `evo_manager_log` VALUES ('1801','1511178665','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1802','1511178665','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1803','1511178744','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1804','1511178747','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1805','1511178749','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1806','1511178751','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1807','1511178807','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1808','1511178807','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1809','1511178860','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1810','1511178860','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1811','1511179042','1','admin','5','85','Т\'eст','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1812','1511179042','1','admin','27','85','Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1813','1511179063','1','admin','27','85','Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1814','1511179067','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1815','1511179176','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1816','1511179193','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1817','1511179193','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1818','1511179425','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1819','1511179425','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1820','1511179729','1','admin','27','83','Новини','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1821','1511179732','1','admin','5','83','Новини','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1822','1511179732','1','admin','27','83','Новини','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1823','1511179746','1','admin','94','84','Копия Тест','Duplicate resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1824','1511179746','1','admin','3','86','Копия Тест','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1825','1511179755','1','admin','94','86','Копия Копия Тест','Duplicate resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1826','1511179755','1','admin','3','87','Копия Копия Тест','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1827','1511179765','1','admin','94','84','Копия Тест','Duplicate resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1828','1511179765','1','admin','3','88','Копия Тест','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1829','1511179775','1','admin','94','85','Копия Т\'eст','Duplicate resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1830','1511179776','1','admin','3','89','Копия Т\'eст','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1831','1511179789','1','admin','94','89','Копия Копия Т\'eст','Duplicate resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1832','1511179789','1','admin','3','90','Копия Копия Т\'eст','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1833','1511179797','1','admin','94','85','Копия Т\'eст','Duplicate resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1834','1511179797','1','admin','3','91','Копия Т\'eст','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1835','1511179816','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1836','1511179841','1','admin','94','89','Копия Копия Т\'eст','Duplicate resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1837','1511179841','1','admin','3','92','Копия Копия Т\'eст','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1838','1511179849','1','admin','6','92','Копия Копия Т\'eст','Deleting resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1839','1511179849','1','admin','3','83','Новини','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1840','1511179853','1','admin','3','83','Новини','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1841','1511179861','1','admin','64','-','-','Removing deleted content',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1842','1511179870','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1843','1511179908','1','admin','5','86','Копия Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1844','1511179908','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1845','1511179923','1','admin','5','86','Копия Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1846','1511179923','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1847','1511179927','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1848','1511179932','1','admin','5','87','Копия Копия Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1849','1511179932','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1850','1511179934','1','admin','27','88','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1851','1511179939','1','admin','5','88','Копия Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1852','1511179939','1','admin','27','88','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1853','1511179942','1','admin','27','89','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1854','1511179945','1','admin','5','89','Копия Т\'eст','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1855','1511179945','1','admin','27','89','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1856','1511179947','1','admin','27','90','Копия Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1857','1511179950','1','admin','5','90','Копия Копия Т\'eст','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1858','1511179950','1','admin','27','90','Копия Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1859','1511179951','1','admin','27','91','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1860','1511179956','1','admin','5','91','Копия Т\'eст','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1861','1511179956','1','admin','27','91','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1862','1511180136','1','admin','112','1','Extras','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1863','1511180192','1','admin','300','-','Новый параметр (TV)','Create Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1864','1511180225','1','admin','302','-','Таблица','Save Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1865','1511180225','1','admin','301','5','Таблица','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1866','1511180238','1','admin','22','32','TvTable','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1867','1511180267','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1868','1511180293','1','admin','103','22','TvTable','Saving plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1869','1511180293','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1870','1511180299','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1871','1511180455','1','admin','5','86','Копия Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1872','1511180455','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1873','1511180661','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1874','1511180677','1','admin','20','5','Текстовая страница','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1875','1511180677','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1876','1511180897','1','admin','120','-','-','Idle (unknown)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1877','1511180901','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1878','1511180905','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1879','1511180907','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1880','1511180910','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1881','1511180981','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1882','1511181007','1','admin','20','5','Текстовая страница','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1883','1511181007','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1884','1511181176','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1885','1511181176','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1886','1511181187','1','admin','20','5','Текстовая страница','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1887','1511181187','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1888','1511181452','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1889','1511181452','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1890','1511181526','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1891','1511181526','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1892','1511181955','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1893','1511181955','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1894','1511181994','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1895','1511181994','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1896','1511182041','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1897','1511182041','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1898','1511182252','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1899','1511182252','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1900','1511182334','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1901','1511182334','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1902','1511182374','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1903','1511182374','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1904','1511182445','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1905','1511182445','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1906','1511182670','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1907','1511182670','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1908','1511182723','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1909','1511182723','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1910','1511182748','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1911','1511182753','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1912','1511182793','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1913','1511182793','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1914','1511182834','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1915','1511182834','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1916','1511182997','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1917','1511183018','1','admin','300','-','Новый параметр (TV)','Create Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1918','1511183048','1','admin','302','-','Картинка','Save Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1919','1511183048','1','admin','301','6','Картинка','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1920','1511183055','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1921','1511183118','1','admin','5','86','Копия Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1922','1511183118','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1923','1511183142','1','admin','27','89','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1924','1511183155','1','admin','27','89','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1925','1511183182','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1926','1511183190','1','admin','5','84','Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1927','1511183190','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1928','1511183191','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1929','1511183200','1','admin','5','87','Копия Копия Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1930','1511183200','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1931','1511183201','1','admin','27','88','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1932','1511183209','1','admin','5','88','Копия Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1933','1511183209','1','admin','27','88','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1934','1511183216','1','admin','27','85','Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1935','1511183222','1','admin','27','85','Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1936','1511183230','1','admin','5','85','Т\'eст','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1937','1511183230','1','admin','27','85','Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1938','1511183232','1','admin','27','89','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1939','1511183239','1','admin','27','89','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1940','1511183247','1','admin','5','89','Копия Т\'eст','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1941','1511183247','1','admin','27','89','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1942','1511183250','1','admin','27','90','Копия Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1943','1511183253','1','admin','27','90','Копия Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1944','1511183261','1','admin','5','90','Копия Копия Т\'eст','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1945','1511183261','1','admin','27','90','Копия Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1946','1511183267','1','admin','27','91','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1947','1511183272','1','admin','27','91','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1948','1511183281','1','admin','5','91','Копия Т\'eст','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1949','1511183281','1','admin','27','91','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1950','1511183310','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1951','1511183314','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1952','1511183318','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1953','1511183322','1','admin','27','88','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1954','1511216030','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1955','1511216043','1','admin','120','-','-','Idle (unknown)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1956','1511216049','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1957','1511216051','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1958','1511216053','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1959','1511216056','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1960','1511217144','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1961','1511217144','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1962','1511217299','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1963','1511217299','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1964','1511217466','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1965','1511217492','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1966','1511217492','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1967','1511622792','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1968','1511622807','1','admin','27','2','RU','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1969','1511622815','1','admin','27','13','Предприятие','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1970','1511622818','1','admin','27','1','Главная страница','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1971','1511622828','1','admin','27','20','Коммерческое предложение','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1972','1511622833','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1973','1511622840','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1974','1511622842','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1975','1511622844','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1976','1511622847','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1977','1511622865','1','admin','112','1','Extras','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1978','1511622893','1','admin','27','33','Дислокация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1979','1511622911','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1980','1511622915','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1981','1511622939','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1982','1511768991','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1983','1511769005','1','admin','27','25','О предприятии','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1984','1511769010','1','admin','27','53','Про підприємство','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1985','1512550576','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1986','1512550972','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1987','1512550975','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1988','1512550977','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1989','1512550982','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1990','1512614148','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1991','1512614163','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1992','1512614445','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1993','1512614747','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1994','1512614747','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1995','1512614791','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1996','1512614791','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1997','1512615019','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1998','1512615021','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('1999','1512615022','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2000','1512615025','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2001','1512615048','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2002','1512615048','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2003','1512615051','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2004','1512615051','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2005','1512615117','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2006','1512615117','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2007','1512615811','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2008','1512615811','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2009','1512615831','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2010','1512616154','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2011','1512616165','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2012','1512616167','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2013','1512616216','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2014','1512616239','1','admin','79','3','inc_meta','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2015','1512616239','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2016','1512616269','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2017','1512616269','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2018','1512616317','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2019','1512616385','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2020','1512616385','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2021','1512616429','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2022','1512616429','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2023','1512616431','1','admin','79','3','inc_meta','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2024','1512616431','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2025','1512616688','1','admin','79','3','inc_meta','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2026','1512616688','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2027','1512616698','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2028','1512616698','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2029','1512616716','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2030','1512887212','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2031','1512887253','1','admin','120','-','-','Idle (unknown)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2032','1512887256','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2033','1512887261','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2034','1512887264','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2035','1512887288','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2036','1512887291','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2037','1512887467','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/flexslider.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2038','1512887533','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2039','1512887535','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2040','1512887537','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2041','1512887555','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2042','1512887659','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2043','1512887826','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2044','1512888368','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2045','1512888620','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2046','1512888621','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2047','1512888625','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2048','1512901715','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2049','1512901725','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2050','1512953914','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2051','1513081980','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2052','1513081991','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2053','1513081993','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2054','1513081995','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2055','1513082015','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2056','1513082087','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2057','1513082087','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2058','1513082179','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2059','1513082208','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2060','1513082209','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2061','1513082241','1','admin','16','4','Язык','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2062','1513082249','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2063','1513082404','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2064','1513082404','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2065','1513082415','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2066','1513082415','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2067','1513082504','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2068','1513082504','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2069','1513082550','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2070','1513082550','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2071','1513082593','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2072','1513082593','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2073','1513168680','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2074','1513853756','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2075','1513853793','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2076','1513853797','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2077','1513853800','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2078','1513853807','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2079','1513853865','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2080','1513854218','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2081','1513854218','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2082','1513854375','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2083','1513854375','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2084','1513854427','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2085','1513854427','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2086','1513855008','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2087','1513855008','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2088','1513855194','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2089','1513855194','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2090','1513855411','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2091','1513855411','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2092','1513962410','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2093','1513962416','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2094','1513962419','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2095','1513962427','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2096','1513962431','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/index.php','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2097','1513962639','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/index.php','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2098','1513962740','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/index-ajax.php','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2099','1513962751','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2100','1513962758','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2101','1513962761','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2102','1513962762','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2103','1513962766','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/assets/cache/docid_23_bb8d110214c9c42a27f4c6f241408ec0.pageCache.php','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2104','1514279869','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2105','1514282762','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2106','1514282771','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2107','1514282773','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2108','1514282778','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2109','1514282941','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2110','1514282941','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2111','1514283311','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2112','1514283311','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2113','1514283389','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2114','1514283389','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2115','1514283431','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2116','1514283431','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2117','1514283559','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2118','1514283559','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2119','1514284120','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2120','1514284120','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2121','1514284198','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2122','1514284198','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2123','1514284218','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2124','1514284218','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2125','1514284253','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2126','1514284253','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2127','1514284315','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2128','1514284315','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2129','1514284360','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2130','1514284360','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2131','1514284628','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2132','1514284673','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2133','1514284675','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2134','1514284678','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2135','1514284681','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2136','1514284825','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2137','1514284825','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2138','1514286606','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2139','1514286618','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2140','1514286663','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2141','1514286668','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2142','1514286940','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2143','1514286941','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2144','1514287008','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2145','1514287008','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2146','1514287020','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2147','1514287020','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2148','1514287039','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2149','1514287039','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2150','1514287196','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2151','1514287196','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2152','1514287297','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2153','1514287297','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2154','1514287866','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2155','1514287903','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2156','1514287903','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2157','1514288460','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2158','1514288502','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2159','1514288860','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2160','1514289030','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2161','1514289036','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2162','1514289044','1','admin','16','4','Язык','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2163','1514289055','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2164','1514289081','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2165','1514289082','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2166','1514289096','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2167','1514289097','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2168','1514289150','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2169','1514289150','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2170','1514289633','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2171','1514289633','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2172','1514291058','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2173','1514291058','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2174','1514291068','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2175','1514291068','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2176','1514291122','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2177','1514291122','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2178','1514291176','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2179','1514291202','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2180','1514291202','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2181','1514291228','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2182','1514291330','1','admin','5','84','Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2183','1514291330','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2184','1514291331','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2185','1514291337','1','admin','5','86','Копия Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2186','1514291337','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2187','1514291339','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2188','1514291345','1','admin','5','87','Копия Копия Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2189','1514291345','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2190','1514291347','1','admin','27','88','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2191','1514291352','1','admin','5','88','Копия Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2192','1514291352','1','admin','27','88','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2193','1514291357','1','admin','27','83','Новини','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2194','1514291361','1','admin','27','85','Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2195','1514291378','1','admin','5','85','Т\'eст','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2196','1514291378','1','admin','27','85','Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2197','1514291381','1','admin','27','89','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2198','1514291388','1','admin','5','89','Копия Т\'eст','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2199','1514291389','1','admin','27','89','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2200','1514291391','1','admin','27','90','Копия Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2201','1514291418','1','admin','5','90','Копия Копия Т\'eст','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2202','1514291418','1','admin','27','90','Копия Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2203','1514291421','1','admin','27','91','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2204','1514291426','1','admin','5','91','Копия Т\'eст','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2205','1514291426','1','admin','27','91','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2206','1514291450','1','admin','5','91','Копия Т\'eст','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2207','1514291450','1','admin','27','91','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2208','1514293379','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2209','1514293379','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2210','1514297753','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2211','1514297802','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2212','1514297802','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2213','1514297853','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2214','1514297853','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2215','1514297964','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2216','1514297964','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2217','1514298111','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2218','1514298111','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2219','1514298146','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2220','1514298146','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2221','1514298286','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2222','1514298286','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2223','1514298323','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2224','1514298323','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2225','1514298411','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2226','1514298411','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2227','1514298441','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2228','1514298441','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2229','1514298533','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2230','1514298533','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2231','1514299677','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2232','1514299677','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2233','1514299741','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2234','1514299741','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2235','1514300199','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2236','1514300265','1','admin','20','6','Новости','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2237','1514300265','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2238','1514300299','1','admin','20','6','Новости','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2239','1514300299','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2240','1514300316','1','admin','20','6','Новости','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2241','1514300316','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2242','1514300333','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2243','1514300367','1','admin','20','5','Текстовая страница','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2244','1514300368','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2245','1514300433','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2246','1514300433','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2247','1514300515','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2248','1514300515','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2249','1514300529','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2250','1514300641','1','admin','5','84','Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2251','1514300642','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2252','1514300684','1','admin','5','84','Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2253','1514300684','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2254','1514300767','1','admin','5','84','Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2255','1514300767','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2256','1514300813','1','admin','5','84','Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2257','1514300813','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2258','1514300888','1','admin','5','84','Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2259','1514300888','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2260','1514362863','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2261','1514362902','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2262','1514363251','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2263','1514363562','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2264','1514363580','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2265','1514363585','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2266','1514363594','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2267','1514363664','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2268','1514363680','1','admin','86','-','-','Role management',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2269','1514363711','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2270','1514363774','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2271','1514363780','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2272','1514363860','1','admin','86','-','-','Role management',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2273','1514364162','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2274','1514364164','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2275','1514364166','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2276','1514364169','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2277','1514364655','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2278','1514364655','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2279','1514365217','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2280','1514365224','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2281','1514365236','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2282','1514365238','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2283','1514365240','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2284','1514365249','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2285','1514365296','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2286','1514365296','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2287','1514365394','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2288','1514365395','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2289','1514365403','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2290','1514365422','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2291','1514365422','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2292','1514365430','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2293','1514365430','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2294','1514365640','1','admin','23','-','Новый сниппет','Creating a new Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2295','1514365784','1','admin','76','-','-','Element management',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2296','1514365787','1','admin','112','1','Extras','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2297','1514365844','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2298','1514365844','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2299','1514365882','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2300','1514365882','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2301','1514366428','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2302','1514366428','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2303','1514367391','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2304','1514367391','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2305','1514368464','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2306','1514368678','1','admin','76','-','-','Element management',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2307','1514368683','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2308','1514368689','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2309','1514368755','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2310','1514368755','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2311','1514368820','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2312','1514368820','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2313','1514368883','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2314','1514368883','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2315','1514368933','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2316','1514368933','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2317','1514368956','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2318','1514368956','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2319','1514368998','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2320','1514368998','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2321','1514369001','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2322','1514369001','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2323','1514369097','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2324','1514369097','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2325','1514369667','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2326','1514369667','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2327','1514369971','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2328','1514369971','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2329','1514370163','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2330','1514370163','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2331','1514370397','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2332','1514370397','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2333','1514370483','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2334','1514370483','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2335','1514370504','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2336','1514370504','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2337','1514370632','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2338','1514370632','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2339','1514370822','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2340','1514370822','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2341','1514370826','1','admin','112','1','Extras','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2342','1514371167','1','admin','23','-','Новый сниппет','Creating a new Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2343','1514371298','1','admin','24','-','countViews','Saving Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2344','1514371298','1','admin','22','33','countViews','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2345','1514371451','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2346','1514371490','1','admin','79','-','inc','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2347','1514371490','1','admin','78','7','inc','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2348','1514371515','1','admin','23','-','Новый сниппет','Creating a new Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2349','1514371536','1','admin','80','7','inc','Deleting Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2350','1514371536','1','admin','76','-','-','Element management',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2351','1514371545','1','admin','300','-','Новый параметр (TV)','Create Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2352','1514371782','1','admin','24','-','hits','Saving Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2353','1514371782','1','admin','22','34','hits','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2354','1514371795','1','admin','23','-','Новый сниппет','Creating a new Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2355','1514371852','1','admin','24','-','inc','Saving Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2356','1514371852','1','admin','22','35','inc','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2357','1514371915','1','admin','24','35','inc','Saving Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2358','1514371915','1','admin','22','35','inc','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2359','1514371947','1','admin','300','-','Новый параметр (TV)','Create Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2360','1514371959','1','admin','302','-','countViews','Save Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2361','1514371959','1','admin','301','7','countViews','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2362','1514374412','1','admin','22','34','hits','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2363','1514374425','1','admin','22','35','inc','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2364','1514374437','1','admin','22','33','countViews','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2365','1514374487','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2366','1514374532','1','admin','20','5','Текстовая страница','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2367','1514374532','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2368','1514374639','1','admin','20','5','Текстовая страница','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2369','1514374639','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2370','1514374708','1','admin','27','25','О предприятии','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2371','1514374719','1','admin','5','25','О предприятии','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2372','1514374719','1','admin','27','25','О предприятии','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2373','1514375328','1','admin','26','-','-','Refreshing site',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2374','1514375362','1','admin','5','25','О предприятии','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2375','1514375362','1','admin','27','25','О предприятии','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2376','1514375500','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2377','1514375691','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2378','1514375691','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2379','1514375694','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2380','1514375694','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2381','1514375821','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2382','1514375821','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2383','1514375868','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2384','1514375868','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2385','1514375927','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2386','1514375927','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2387','1514376239','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2388','1514376239','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2389','1514376385','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2390','1514376412','1','admin','79','-','article-min.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2391','1514376412','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2392','1514376497','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2393','1514376497','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2394','1514376541','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2395','1514376541','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2396','1514376548','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2397','1514376551','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2398','1514376553','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2399','1514376571','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2400','1514376571','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2401','1514376704','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2402','1514376704','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2403','1514376739','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2404','1514376739','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2405','1514376751','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2406','1514376751','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2407','1514376848','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2408','1514376848','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2409','1514376917','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2410','1514376917','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2411','1514376936','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2412','1514376936','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2413','1514376954','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2414','1514376954','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2415','1514376967','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2416','1514376967','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2417','1514377100','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2418','1514377100','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2419','1514377154','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2420','1514377154','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2421','1514377191','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2422','1514377191','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2423','1514377279','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2424','1514377279','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2425','1514377309','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2426','1514377309','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2427','1514377332','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2428','1514377333','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2429','1514377349','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2430','1514377349','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2431','1514377368','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2432','1514377369','1','admin','19','-','Новый шаблон','Creating a new template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2433','1514377375','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2434','1514377381','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2435','1514377381','1','admin','19','-','Новый шаблон','Creating a new template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2436','1514377395','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2437','1514377421','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2438','1514377421','1','admin','19','-','Новый шаблон','Creating a new template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2439','1514377438','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2440','1514377463','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2441','1514377463','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2442','1514377482','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2443','1514377482','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2444','1514377500','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2445','1514377500','1','admin','19','-','Новый шаблон','Creating a new template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2446','1514377510','1','admin','76','-','-','Element management',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2447','1514377512','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2448','1514377521','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2449','1514377521','1','admin','19','-','Новый шаблон','Creating a new template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2450','1514377529','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2451','1514377734','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2452','1514377734','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2453','1514377752','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2454','1514377753','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2455','1514377785','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2456','1514377785','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2457','1514377869','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2458','1514377869','1','admin','19','-','Новый шаблон','Creating a new template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2459','1514377889','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2460','1514377940','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2461','1514377940','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2462','1514377943','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2463','1514377943','1','admin','19','-','Новый шаблон','Creating a new template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2464','1514377949','1','admin','20','-','Untitled template','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2465','1514377949','1','admin','16','8','Untitled template','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2466','1514377957','1','admin','21','8','Untitled template','Deleting template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2467','1514377957','1','admin','76','-','-','Element management',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2468','1514377962','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2469','1514377969','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2470','1514377969','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2471','1514378021','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2472','1514378021','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2473','1514378051','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2474','1514378052','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2475','1514378123','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2476','1514378123','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2477','1514378153','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2478','1514378154','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2479','1514378172','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2480','1514378172','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2481','1514378196','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2482','1514378196','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2483','1514378252','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2484','1514378252','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2485','1514378264','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2486','1514378264','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2487','1514378426','1','admin','27','25','О предприятии','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2488','1514378448','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2489','1514378463','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2490','1514378562','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2491','1514378562','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2492','1514378824','1','admin','5','84','Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2493','1514378824','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2494','1514378828','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2495','1514378831','1','admin','5','86','Копия Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2496','1514378831','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2497','1514378834','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2498','1514378838','1','admin','5','87','Копия Копия Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2499','1514378838','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2500','1514378841','1','admin','27','88','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2501','1514378844','1','admin','5','88','Копия Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2502','1514378844','1','admin','27','88','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2503','1514378847','1','admin','27','85','Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2504','1514378850','1','admin','5','85','Т\'eст','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2505','1514378850','1','admin','27','85','Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2506','1514378853','1','admin','27','89','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2507','1514378856','1','admin','5','89','Копия Т\'eст','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2508','1514378856','1','admin','27','89','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2509','1514378860','1','admin','27','90','Копия Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2510','1514378863','1','admin','5','90','Копия Копия Т\'eст','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2511','1514378863','1','admin','27','90','Копия Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2512','1514378866','1','admin','27','91','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2513','1514378869','1','admin','5','91','Копия Т\'eст','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2514','1514378869','1','admin','27','91','Копия Т\'eст','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2515','1514378910','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2516','1514378910','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2517','1514378921','1','admin','79','8','article-min.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2518','1514378921','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2519','1514378949','1','admin','79','6','article.item','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2520','1514378949','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2521','1514378986','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2522','1514378986','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2523','1514379017','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2524','1514379017','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2525','1514379135','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2526','1514379135','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2527','1514380219','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2528','1514380219','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2529','1514380335','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2530','1514380504','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2531','1514380504','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2532','1514380632','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2533','1514380632','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2534','1514380658','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2535','1514380658','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2536','1514380769','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2537','1514380769','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2538','1514383009','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2539','1514383009','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2540','1514383207','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2541','1514383207','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2542','1514383563','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2543','1514383563','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2544','1514383775','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2545','1514383775','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2546','1514383984','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2547','1514383984','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2548','1514384050','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2549','1514384050','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2550','1514384309','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2551','1514384309','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2552','1514384498','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2553','1514384498','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2554','1514384569','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2555','1514384624','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2556','1514384624','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2557','1514384694','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2558','1514384694','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2559','1514384731','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2560','1514384731','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2561','1514384740','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2562','1514384741','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2563','1514384754','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2564','1514384754','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2565','1514384839','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2566','1514384839','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2567','1514385030','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2568','1514385031','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2569','1514385054','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2570','1514385054','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2571','1514385102','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2572','1514385102','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2573','1514385136','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2574','1514385136','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2575','1514385271','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2576','1514385271','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2577','1514385468','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2578','1514385468','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2579','1514385767','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2580','1514385767','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2581','1514385940','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2582','1514385940','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2583','1514385954','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2584','1514385954','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2585','1514387005','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2586','1514387005','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2587','1514387102','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2588','1514387146','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2589','1514387146','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2590','1514387212','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2591','1514387212','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2592','1514387279','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2593','1514387279','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2594','1514387517','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2595','1514387517','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2596','1514387599','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2597','1514387599','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2598','1514387625','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2599','1514387625','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2600','1514387667','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2601','1514387667','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2602','1514387939','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2603','1514387939','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2604','1514388026','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2605','1514388026','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2606','1514388404','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2607','1514388404','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2608','1514389216','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2609','1514389216','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2610','1514389219','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2611','1514389496','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2612','1514389496','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2613','1514389617','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2614','1514389621','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2615','1514389623','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2616','1514389624','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2617','1514389626','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2618','1514406868','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2619','1514406907','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2620','1514406916','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2621','1514406921','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2622','1514407138','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2623','1514407140','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2624','1514407141','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2625','1514407143','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2626','1514407156','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2627','1514407156','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2628','1514408336','1','admin','27','20','Коммерческое предложение','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2629','1515578630','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2630','1515578730','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2631','1515578742','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2632','1515579317','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2633','1515579317','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2634','1515579463','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2635','1515579463','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2636','1515579472','1','admin','27','1','Главная страница','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2637','1515579481','1','admin','301','3','Meta description','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2638','1515579503','1','admin','301','2','Meta keywords','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2639','1515579510','1','admin','302','2','Meta keywords','Save Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2640','1515579510','1','admin','301','2','Meta keywords','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2641','1515579513','1','admin','301','1','Meta title','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2642','1515579519','1','admin','302','1','Meta title','Save Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2643','1515579519','1','admin','301','1','Meta title','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2644','1515579522','1','admin','301','3','Meta description','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2645','1515579528','1','admin','302','3','Meta description','Save Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2646','1515579529','1','admin','301','3','Meta description','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2647','1515579565','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2648','1515579567','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2649','1515579569','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2650','1515579572','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2651','1515579588','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2652','1515579588','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2653','1515579621','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2654','1515579663','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2655','1515579675','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2656','1515579711','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2657','1515579749','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2658','1515579749','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2659','1515579755','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2660','1515579781','1','admin','5','-','Результаты поиска','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2661','1515579781','1','admin','27','93','Результаты поиска','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2662','1515579796','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2663','1515579802','1','admin','96','5','Текстовая страница Копия','Duplicate Template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2664','1515579802','1','admin','16','9','Текстовая страница Копия','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2665','1515579811','1','admin','16','9','Текстовая страница Копия','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2666','1515579863','1','admin','16','9','Текстовая страница Копия','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2667','1515579864','1','admin','16','9','Текстовая страница Копия','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2668','1515579876','1','admin','16','9','Текстовая страница Копия','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2669','1515579899','1','admin','20','9','Текстовая страница Копия','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2670','1515579899','1','admin','16','9','Текстовая страница Копия','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2671','1515579915','1','admin','16','9','Текстовая страница Копия','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2672','1515579916','1','admin','16','9','Текстовая страница Копия','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2673','1515579943','1','admin','17','-','-','Editing settings',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2674','1515579944','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2675','1515579956','1','admin','21','9','Текстовая страница Копия','Deleting template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2676','1515579956','1','admin','76','-','-','Element management',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2677','1515579960','1','admin','27','93','Результаты поиска','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2678','1515579966','1','admin','27','93','Результаты поиска','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2679','1515579969','1','admin','5','93','Результаты поиска','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2680','1515579969','1','admin','27','93','Результаты поиска','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2681','1515580005','1','admin','20','7','Результаты поиска','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2682','1515580005','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2683','1515580024','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2684','1515580035','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2685','1515580035','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2686','1515580076','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2687','1515580133','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2688','1515580242','1','admin','79','5','inc_footer','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2689','1515580242','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2690','1515580264','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2691','1515580264','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2692','1515580322','1','admin','78','2','evoSearch','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2693','1515580407','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2694','1515580449','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2695','1515580449','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2696','1515580614','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2697','1515580614','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2698','1515580617','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2699','1515580760','1','admin','79','-','feedbackForm','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2700','1515580760','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2701','1515580797','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2702','1515580797','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2703','1515580805','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2704','1515580805','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2705','1515580816','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2706','1515580816','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2707','1515580837','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2708','1515580837','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2709','1515581281','1','admin','17','-','-','Editing settings',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2710','1515581311','1','admin','30','-','-','Saving settings',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2711','1515581321','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2712','1515581327','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2713','1515581374','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2714','1515581377','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2715','1515581386','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2716','1515581397','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2717','1515581428','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2718','1515581462','1','admin','79','-','feedbackReport','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2719','1515581463','1','admin','78','10','feedbackReport','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2720','1515581754','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2721','1516265292','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2722','1516265405','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2723','1516801896','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2724','1516883289','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2725','1516940023','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2726','1517227025','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2727','1517227030','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2728','1517227032','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2729','1517227034','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2730','1517227036','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2731','1517227038','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2732','1517227040','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2733','1517396929','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2734','1517396937','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2735','1517396988','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2736','1517396996','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2737','1517397108','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2738','1517397130','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2739','1517397141','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2740','1517397421','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2741','1517397927','1','admin','27','2','RU','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2742','1517399222','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2743','1517399223','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2744','1517399228','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2745','1517399230','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2746','1517399232','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2747','1517399234','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2748','1517399327','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2749','1517399327','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2750','1517399348','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2751','1517399348','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2752','1517399759','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2753','1517399759','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2754','1517399831','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2755','1517399831','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2756','1517401705','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2757','1517401705','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2758','1517401787','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2759','1517401787','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2760','1517401945','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2761','1517401945','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2762','1517402028','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2763','1517402028','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2764','1517402748','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2765','1517402748','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2766','1517403636','1','admin','78','2','evoSearch','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2767','1517403769','1','admin','102','12','evoSearch','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2768','1517403792','1','admin','102','3','Search Highlight','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2769','1517403812','1','admin','22','15','evoSearch','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2770','1517403846','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2771','1517403849','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2772','1517403852','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2773','1517403856','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2774','1517403861','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2775','1517403862','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2776','1517403890','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2777','1517404493','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2778','1517404493','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2779','1517404567','1','admin','79','2','evoSearch','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2780','1517404568','1','admin','78','2','evoSearch','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2781','1517404696','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2782','1517404705','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2783','1517404736','1','admin','301','3','Meta description','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2784','1517404752','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2785','1517407437','1','admin','79','2','evoSearch','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2786','1517407437','1','admin','78','2','evoSearch','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2787','1517416474','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2788','1517416516','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2789','1517416519','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2790','1517416520','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2791','1517416525','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2792','1517437762','1','admin','76','-','-','Element management',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2793','1517504237','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2794','1517504246','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2795','1517504569','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2796','1517504580','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2797','1517504657','1','admin','20','7','Результаты поиска','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2798','1517504657','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2799','1517504667','1','admin','106','-','-','Viewing Modules',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2800','1517504694','1','admin','27','23','Контакты','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2801','1517504710','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2802','1517504739','1','admin','27','32','Юридические лица','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2803','1517504749','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2804','1517504823','1','admin','112','1','Extras','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2805','1517504873','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2806','1517505047','1','admin','11','-','Новый пользователь','Creating a user',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2807','1517505087','1','admin','40','-','-','Editing Access Permissions',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2808','1517505108','1','admin','91','-','-','Editing Web Access Permissions',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2809','1517505118','1','admin','87','-','Новый веб-пользователь','Create new web user',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2810','1517505146','1','admin','86','-','-','Role management',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2811','1517505154','1','admin','38','-','Новая роль','Creating new role',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2812','1517505196','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2813','1517505200','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2814','1517505208','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2815','1517505219','1','admin','17','-','-','Editing settings',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2816','1517505288','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2817','1517506551','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2818','1517506554','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2819','1517506557','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2820','1517506560','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2821','1517511670','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2822','1517511676','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2823','1517511689','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2824','1517511699','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2825','1517511717','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2826','1517511721','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2827','1517511724','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2828','1517511728','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2829','1517559453','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2830','1517559466','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2831','1517559480','1','admin','78','2','evoSearch','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2832','1517559518','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2833','1517559521','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2834','1517559523','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2835','1517559525','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2836','1517559751','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2837','1517559751','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2838','1517560013','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2839','1517560013','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2840','1517560026','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2841','1517560026','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2842','1517560139','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2843','1517560139','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2844','1517560331','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2845','1517560334','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2846','1517560335','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2847','1517560337','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2848','1517560350','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2849','1517560350','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2850','1517561097','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2851','1517561097','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2852','1517561118','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2853','1517561121','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2854','1517561123','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2855','1517561128','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2856','1517561357','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2857','1517561357','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2858','1517561363','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2859','1517561391','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2860','1517561391','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2861','1517562633','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2862','1517562700','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2863','1517562724','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2864','1517562724','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2865','1517562759','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2866','1517562759','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2867','1517562869','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2868','1517562869','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2869','1517563640','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2870','1517563640','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2871','1517563646','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2872','1517563646','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2873','1517564314','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2874','1517564314','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2875','1517565209','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2876','1517565209','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2877','1517576311','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2878','1517576376','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2879','1517576385','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2880','1517576397','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2881','1517576495','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2882','1517576537','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2883','1517576600','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2884','1517576602','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2885','1517576605','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2886','1517576984','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2887','1517576984','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2888','1517576987','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2889','1517577001','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2890','1517577039','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2891','1517577040','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2892','1517577124','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2893','1517577124','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2894','1517577167','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2895','1517577168','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2896','1517821070','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2897','1517840323','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2898','1517904825','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2899','1517904855','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2900','1517904867','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2901','1517904893','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2902','1517904897','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2903','1517904900','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2904','1517904901','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2905','1517904904','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2906','1517905382','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2907','1517905502','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2908','1517905502','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2909','1517906104','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2910','1517906105','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2911','1517906345','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2912','1517906345','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2913','1517906350','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2914','1517906350','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2915','1517906476','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2916','1517906476','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2917','1517987237','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2918','1518000987','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2919','1518001064','1','admin','19','-','Новый шаблон','Creating a new template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2920','1518001080','1','admin','20','-','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2921','1518001081','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2922','1518001096','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2923','1518006920','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2924','1518006921','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2925','1518072372','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2926','1518073254','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2927','1518073261','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2928','1518073402','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2929','1518073402','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2930','1518073424','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2931','1518073458','1','admin','19','-','Новый шаблон','Creating a new template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2932','1518073556','1','admin','20','-','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2933','1518073557','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2934','1518073617','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2935','1518073621','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2936','1518073621','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2937','1518073659','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2938','1518073942','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2939','1518073943','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2940','1518073980','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2941','1518074008','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2942','1518074011','1','admin','5','-','Личный кабинет','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2943','1518074011','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2944','1518074049','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2945','1518074049','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2946','1518074072','1','admin','5','94','Личный кабинет','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2947','1518074072','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2948','1518074131','1','admin','27','3','UA','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2949','1518074182','1','admin','112','1','Extras','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2950','1518074209','1','admin','22','6','FormLister','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2951','1518074242','1','admin','78','10','feedbackReport','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2952','1518074252','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2953','1518074582','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2954','1518074582','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2955','1518074638','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2956','1518074638','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2957','1518074701','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2958','1518074701','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2959','1518074846','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2960','1518074846','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2961','1518075673','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2962','1518075673','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2963','1518077402','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2964','1518077431','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2965','1518077431','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2966','1518077917','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2967','1518077917','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2968','1518078539','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2969','1518078669','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2970','1518078669','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2971','1518078777','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2972','1518078777','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2973','1518079475','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2974','1518079475','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2975','1518079502','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2976','1518079502','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2977','1518081837','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2978','1518081846','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2979','1518081846','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2980','1518081856','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2981','1518081857','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2982','1518081892','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2983','1518081928','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2984','1518081933','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2985','1518081933','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2986','1518081941','1','admin','5','-','Авторизация','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2987','1518081941','1','admin','27','95','Авторизация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2988','1518081947','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2989','1518081957','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2990','1518081959','1','admin','5','-','Регистрация','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2991','1518081960','1','admin','27','96','Регистрация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2992','1518081999','1','admin','93','-','-','Backup Manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2993','1518082028','1','admin','93','-','-','Backup Manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2994','1518082113','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2995','1518082115','1','admin','17','-','-','Editing settings',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2996','1518082129','1','admin','30','-','-','Saving settings',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2997','1518082157','1','admin','112','1','Extras','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2998','1518082225','1','admin','27','95','Авторизация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('2999','1518082230','1','admin','5','95','Авторизация','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3000','1518082230','1','admin','27','95','Авторизация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3001','1518082231','1','admin','27','96','Регистрация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3002','1518082235','1','admin','5','96','Регистрация','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3003','1518082235','1','admin','27','96','Регистрация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3004','1518082283','1','admin','27','95','Авторизация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3005','1518082297','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3006','1518082368','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3007','1518082368','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3008','1518082758','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3009','1518082758','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3010','1518082769','1','admin','27','96','Регистрация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3011','1518082773','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3012','1518082796','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3013','1518082796','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3014','1518082850','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3015','1518082850','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3016','1518082857','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3017','1518082857','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3018','1518082903','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3019','1518082904','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3020','1518082913','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3021','1518082914','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3022','1518083399','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3023','1518083399','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3024','1518083589','1','admin','22','6','FormLister','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3025','1518083934','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3026','1518084134','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3027','1518099033','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3028','1518099110','1','admin','27','95','Авторизация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3029','1518099119','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3030','1518099240','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3031','1518099255','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3032','1518099264','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3033','1518099268','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3034','1518099565','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3035','1518099565','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3036','1518099733','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3037','1518099733','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3038','1518099766','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3039','1518099767','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3040','1518099796','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3041','1518099796','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3042','1518099812','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3043','1518099813','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3044','1518099875','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3045','1518099875','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3046','1518099908','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3047','1518099908','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3048','1518100099','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3049','1518100099','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3050','1518100124','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3051','1518100153','1','admin','19','-','Новый шаблон','Creating a new template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3052','1518100184','1','admin','20','-','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3053','1518100184','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3054','1518100279','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3055','1518100279','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3056','1518100310','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3057','1518100314','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3058','1518100317','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3059','1518100320','1','admin','5','94','Личный кабинет','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3060','1518100320','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3061','1518100349','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3062','1518100350','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3063','1518100379','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3064','1518100631','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3065','1518100632','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3066','1518100835','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3067','1518101060','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3068','1518101072','1','admin','27','95','Авторизация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3069','1518101085','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3070','1518101123','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3071','1518101257','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3072','1518101257','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3073','1518101303','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3074','1518101303','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3075','1518101333','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3076','1518101333','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3077','1518101398','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3078','1518101399','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3079','1518101434','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3080','1518101434','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3081','1518101566','1','admin','112','1','Extras','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3082','1518101587','1','admin','76','-','-','Element management',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3083','1518101609','1','admin','102','27','userHelper','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3084','1518101613','1','admin','103','27','userHelper','Saving plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3085','1518101613','1','admin','102','27','userHelper','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3086','1518101619','1','admin','76','-','-','Element management',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3087','1518101622','1','admin','102','23','userHelper','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3088','1518101625','1','admin','103','23','userHelper','Saving plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3089','1518101625','1','admin','102','23','userHelper','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3090','1518102182','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3091','1518102183','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3092','1518102196','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3093','1518102196','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3094','1518102217','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3095','1518102217','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3096','1518102227','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3097','1518102227','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3098','1518102308','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3099','1518102308','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3100','1518102865','1','admin','78','10','feedbackReport','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3101','1518107968','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3102','1518109090','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3103','1518109102','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3104','1518109110','1','admin','17','-','-','Editing settings',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3105','1518109148','1','admin','102','29','ElementsInTree','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3106','1518109302','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3107','1518109302','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3108','1518109341','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3109','1518109342','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3110','1518109558','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3111','1518109558','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3112','1518109581','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3113','1518109581','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3114','1518109590','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3115','1518109590','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3116','1518109655','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3117','1518109655','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3118','1518109696','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3119','1518109696','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3120','1518109773','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3121','1518109802','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3122','1518109819','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3123','1518112063','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3124','1518115665','1','admin','78','11','eFeedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3125','1518116332','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3126','1518117849','1','admin','22','6','FormLister','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3127','1518117852','1','admin','22','9','DocLister','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3128','1518117873','1','admin','22','10','MemberCheck','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3129','1518117946','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3130','1518117959','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3131','1518118048','1','admin','102','23','userHelper','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3132','1518118052','1','admin','102','27','userHelper','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3133','1518118066','1','admin','103','23','userHelper','Saving plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3134','1518118066','1','admin','102','23','userHelper','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3135','1518118069','1','admin','103','27','userHelper','Saving plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3136','1518118069','1','admin','102','27','userHelper','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3137','1518118079','1','admin','102','27','userHelper','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3138','1518118088','1','admin','102','23','userHelper','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3139','1518118146','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3140','1518118264','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3141','1518118335','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3142','1518118335','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3143','1518118374','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3144','1518118374','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3145','1518118441','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3146','1518118441','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3147','1518118457','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3148','1518118457','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3149','1518118472','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3150','1518118472','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3151','1518118609','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3152','1518118609','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3153','1518118793','1','admin','22','9','DocLister','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3154','1518118817','1','admin','22','6','FormLister','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3155','1518118877','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3156','1518118948','1','admin','88','1','beninbenino@gmail.com','Editing web user',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3157','1518119074','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3158','1518119219','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3159','1518119220','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3160','1518119370','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3161','1518119370','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3162','1518119402','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3163','1518119402','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3164','1518119416','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3165','1518119416','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3166','1518119450','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3167','1518119450','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3168','1518119572','1','admin','88','1','beninbenino@gmail.com','Editing web user',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3169','1518121572','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3170','1518121573','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3171','1518121681','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3172','1518121681','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3173','1518121694','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3174','1518121719','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3175','1518121719','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3176','1518121899','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3177','1518121946','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3178','1518122001','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3179','1518122018','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3180','1518122174','1','admin','99','-','-','Manage Web Users',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3181','1518122183','1','admin','75','-','-','User/ role management',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3182','1518122188','1','admin','12','1','admin','Editing user',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3183','1518122206','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3184','1518124055','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3185','1518124090','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3186','1518124544','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3187','1518124616','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3188','1518124617','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3189','1518124727','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3190','1518124727','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3191','1518124768','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3192','1518124768','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3193','1518124863','1','admin','78','1','mm_rules','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3194','1518124870','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3195','1518124903','1','admin','79','3','inc_meta','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3196','1518124903','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3197','1518125142','1','admin','79','3','inc_meta','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3198','1518125142','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3199','1518125176','1','admin','79','3','inc_meta','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3200','1518125176','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3201','1518125264','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3202','1518125269','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3203','1518125284','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3204','1518125284','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3205','1518125306','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3206','1518125306','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3207','1518125343','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3208','1518125343','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3209','1518125437','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3210','1518125437','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3211','1518125486','1','admin','79','3','inc_meta','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3212','1518125486','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3213','1518125506','1','admin','79','3','inc_meta','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3214','1518125506','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3215','1518125623','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3216','1518125623','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3217','1518125646','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3218','1518125647','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3219','1518125690','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3220','1518125690','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3221','1518125748','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3222','1518125748','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3223','1518125888','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3224','1518125889','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3225','1518125931','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3226','1518125931','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3227','1518125972','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3228','1518126027','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3229','1518126125','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3230','1518126248','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3231','1518126398','1','admin','17','-','-','Editing settings',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3232','1518126700','1','admin','27','93','Результаты поиска','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3233','1518126725','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3234','1518126754','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3235','1518126766','1','admin','78','2','evoSearch','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3236','1518126781','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3237','1518126788','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3238','1518126794','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3239','1518126834','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3240','1518126917','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3241','1518126921','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3242','1518127010','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3243','1518127091','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3244','1518127091','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3245','1518127298','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3246','1518127315','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3247','1518127326','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3248','1518127327','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3249','1518127331','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3250','1518127365','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3251','1518127365','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3252','1518127547','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3253','1518127547','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3254','1518127655','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3255','1518127656','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3256','1518127672','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3257','1518127942','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3258','1518127957','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3259','1518128019','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3260','1518128019','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3261','1518128099','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3262','1518128099','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3263','1518129140','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3264','1518129153','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3265','1518129174','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3266','1518129174','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3267','1518129775','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3268','1518129775','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3269','1518129888','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3270','1518129888','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3271','1518129925','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3272','1518129926','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3273','1518129990','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3274','1518129990','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3275','1518130159','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3276','1518130159','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3277','1518130354','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3278','1518130354','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3279','1518130548','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3280','1518130548','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3281','1518130672','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3282','1518130742','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3283','1518130751','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3284','1518165912','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3285','1518166826','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3286','1518166829','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3287','1518166832','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3288','1518166837','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3289','1518171654','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3290','1518171654','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3291','1518172065','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3292','1518172065','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3293','1518172305','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3294','1518172305','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3295','1518172762','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3296','1518172762','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3297','1518172886','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3298','1518172886','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3299','1518172929','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3300','1518172929','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3301','1518173325','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3302','1518173325','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3303','1518176018','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3304','1518176018','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3305','1518176925','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3306','1518176925','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3307','1518177124','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3308','1518177124','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3309','1518177195','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3310','1518177195','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3311','1518177332','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3312','1518177332','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3313','1518177465','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3314','1518177465','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3315','1518177667','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3316','1518177667','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3317','1518177893','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3318','1518177893','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3319','1518178087','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3320','1518178087','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3321','1518178333','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3322','1518178345','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3323','1518178581','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3324','1518178581','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3325','1518178801','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3326','1518178801','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3327','1518178813','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3328','1518178828','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3329','1518178828','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3330','1518179369','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3331','1518179369','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3332','1518179379','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3333','1518179382','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3334','1518179567','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3335','1518179567','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3336','1518179576','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3337','1518179576','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3338','1518179765','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3339','1518179765','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3340','1518180763','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3341','1518180763','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3342','1518182800','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3343','1518182800','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3344','1518183169','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3345','1518183169','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3346','1518183290','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3347','1518183322','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3348','1518183322','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3349','1518183346','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3350','1518183659','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3351','1518183663','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3352','1518183665','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3353','1518183669','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3354','1518183695','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3355','1518183695','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3356','1518183837','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3357','1518183837','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3358','1518183977','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3359','1518184217','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3360','1518184289','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3361','1518184290','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3362','1518184352','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3363','1518184352','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3364','1518192899','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3365','1518192983','1','admin','102','28','OutdatedExtrasCheck','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3366','1518193003','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3367','1518193643','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3368','1518193803','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3369','1518193807','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3370','1518193821','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3371','1518193830','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3372','1518194098','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3373','1518194185','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3374','1518195153','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3375','1518195153','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3376','1518195197','1','admin','27','93','Результаты поиска','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3377','1518195211','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3378','1518195240','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3379','1518195266','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3380','1518195303','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3381','1518195307','1','admin','5','-','Особистий кабінет','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3382','1518195307','1','admin','27','97','Особистий кабінет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3383','1518195319','1','admin','27','95','Авторизация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3384','1518195336','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3385','1518195353','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3386','1518195357','1','admin','5','-','Авторизація','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3387','1518195357','1','admin','27','98','Авторизація','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3388','1518195361','1','admin','27','96','Регистрация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3389','1518195377','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3390','1518195387','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3391','1518195390','1','admin','5','-','Реєстрація','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3392','1518195391','1','admin','27','99','Реєстрація','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3393','1518195414','1','admin','27','93','Результаты поиска','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3394','1518195427','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3395','1518195434','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3396','1518195439','1','admin','5','-','Результати пошуку','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3397','1518195439','1','admin','27','100','Результати пошуку','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3398','1518195459','1','admin','5','100','Результати пошуку','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3399','1518195460','1','admin','27','100','Результати пошуку','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3400','1518195469','1','admin','27','97','Особистий кабінет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3401','1518195476','1','admin','5','97','Особистий кабінет','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3402','1518195476','1','admin','27','97','Особистий кабінет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3403','1518195481','1','admin','27','98','Авторизація','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3404','1518195487','1','admin','5','98','Авторизація','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3405','1518195487','1','admin','27','98','Авторизація','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3406','1518195490','1','admin','27','99','Реєстрація','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3407','1518195495','1','admin','5','99','Реєстрація','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3408','1518195495','1','admin','27','99','Реєстрація','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3409','1518195578','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3410','1518195593','1','admin','22','30','evoBabel','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3411','1518195621','1','admin','102','20','evoBabel','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3412','1518195626','1','admin','102','21','evoBabelPlaceholder','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3413','1518195666','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3414','1518195901','1','admin','27','97','Особистий кабінет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3415','1518195921','1','admin','112','1','Extras','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3416','1518195940','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3417','1518195963','1','admin','22','30','evoBabel','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3418','1518195979','1','admin','27','1','Главная страница','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3419','1518195999','1','admin','27','13','Предприятие','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3420','1518196006','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3421','1518196133','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3422','1518196153','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3423','1518196181','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3424','1518196181','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3425','1518196190','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3426','1518196202','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3427','1518196202','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3428','1518196203','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3429','1518196211','1','admin','20','6','Новости','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3430','1518196211','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3431','1518196213','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3432','1518196223','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3433','1518196223','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3434','1518196224','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3435','1518196229','1','admin','20','7','Результаты поиска','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3436','1518196229','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3437','1518196231','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3438','1518196235','1','admin','16','4','Язык','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3439','1518196253','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3440','1518196259','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3441','1518196266','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3442','1518196288','1','admin','27','96','Регистрация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3443','1518196307','1','admin','27','1','Главная страница','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3444','1518196311','1','admin','27','93','Результаты поиска','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3445','1518196325','1','admin','27','82','Новости','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3446','1518196332','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3447','1518196343','1','admin','27','20','Коммерческое предложение','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3448','1518196391','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3449','1518196395','1','admin','27','95','Авторизация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3450','1518196404','1','admin','27','95','Авторизация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3451','1518196407','1','admin','27','95','Авторизация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3452','1518196408','1','admin','27','95','Авторизация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3453','1518196428','1','admin','27','98','Авторизація','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3454','1518196441','1','admin','5','95','Авторизація','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3455','1518196441','1','admin','27','95','Авторизація','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3456','1518196460','1','admin','27','101','Авторизация (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3457','1518196473','1','admin','6','98','Авторизація','Deleting resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3458','1518196474','1','admin','3','3','UA','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3459','1518196487','1','admin','6','97','Особистий кабінет','Deleting resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3460','1518196487','1','admin','3','3','UA','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3461','1518196494','1','admin','6','99','Реєстрація','Deleting resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3462','1518196495','1','admin','3','3','UA','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3463','1518196503','1','admin','6','100','Результати пошуку','Deleting resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3464','1518196503','1','admin','3','3','UA','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3465','1518196517','1','admin','64','-','-','Removing deleted content',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3466','1518196524','1','admin','27','60','Юридичні особи','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3467','1518196556','1','admin','27','95','Авторизація','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3468','1518196562','1','admin','27','101','Авторизация (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3469','1518196601','1','admin','22','30','evoBabel','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3470','1518196615','1','admin','22','31','lang','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3471','1518196649','1','admin','102','20','evoBabel','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3472','1518196694','1','admin','103','20','evoBabel','Saving plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3473','1518196695','1','admin','102','20','evoBabel','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3474','1518196699','1','admin','27','96','Регистрация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3475','1518196703','1','admin','27','96','Регистрация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3476','1518196704','1','admin','27','96','Регистрация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3477','1518196713','1','admin','27','102','Регистрация (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3478','1518196721','1','admin','6','102','Регистрация (Укр)','Deleting resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3479','1518196721','1','admin','3','3','UA','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3480','1518196725','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3481','1518196730','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3482','1518196731','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3483','1518196736','1','admin','27','103','Личный кабинет (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3484','1518196796','1','admin','27','101','Авторизация (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3485','1518196812','1','admin','6','101','Авторизация (Укр)','Deleting resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3486','1518196812','1','admin','3','3','UA','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3487','1518196817','1','admin','6','103','Личный кабинет (Укр)','Deleting resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3488','1518196817','1','admin','3','3','UA','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3489','1518196836','1','admin','6','83','Новини','Deleting resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3490','1518196837','1','admin','3','3','UA','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3491','1518196840','1','admin','27','19','Споживачі','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3492','1518196845','1','admin','6','19','Споживачі','Deleting resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3493','1518196845','1','admin','3','3','UA','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3494','1518196851','1','admin','6','22','Комерційна пропозиція','Deleting resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3495','1518196852','1','admin','3','3','UA','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3496','1518196857','1','admin','6','24','Контакти','Deleting resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3497','1518196857','1','admin','3','3','UA','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3498','1518196862','1','admin','6','17','Публічна інформація','Deleting resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3499','1518196862','1','admin','3','3','UA','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3500','1518196866','1','admin','6','14','Предпріемство','Deleting resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3501','1518196867','1','admin','3','3','UA','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3502','1518196884','1','admin','64','-','-','Removing deleted content',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3503','1518196891','1','admin','27','1','Главная страница','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3504','1518196894','1','admin','27','4','Головна сторінка','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3505','1518196899','1','admin','27','13','Предприятие','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3506','1518196906','1','admin','27','13','Предприятие','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3507','1518196908','1','admin','27','13','Предприятие','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3508','1518196919','1','admin','27','15','Публичная информация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3509','1518196934','1','admin','27','15','Публичная информация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3510','1518196936','1','admin','27','15','Публичная информация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3511','1518196943','1','admin','27','18','Потребители','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3512','1518196948','1','admin','27','18','Потребители','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3513','1518196949','1','admin','27','18','Потребители','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3514','1518196953','1','admin','27','20','Коммерческое предложение','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3515','1518196958','1','admin','27','20','Коммерческое предложение','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3516','1518196959','1','admin','27','20','Коммерческое предложение','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3517','1518196966','1','admin','27','23','Контакты','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3518','1518196971','1','admin','27','23','Контакты','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3519','1518196972','1','admin','27','23','Контакты','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3520','1518196973','1','admin','27','82','Новости','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3521','1518196977','1','admin','27','82','Новости','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3522','1518196978','1','admin','27','82','Новости','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3523','1518196982','1','admin','27','93','Результаты поиска','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3524','1518196984','1','admin','27','93','Результаты поиска','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3525','1518196986','1','admin','27','93','Результаты поиска','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3526','1518196988','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3527','1518196992','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3528','1518196994','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3529','1518197003','1','admin','27','95','Авторизація','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3530','1518197006','1','admin','27','95','Авторизація','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3531','1518197007','1','admin','27','95','Авторизація','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3532','1518197012','1','admin','27','96','Регистрация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3533','1518197017','1','admin','27','96','Регистрация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3534','1518197018','1','admin','27','96','Регистрация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3535','1518197115','1','admin','27','1','Главная страница','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3536','1518197122','1','admin','27','25','О предприятии','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3537','1518197132','1','admin','27','25','О предприятии','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3538','1518197133','1','admin','27','25','О предприятии','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3539','1518197149','1','admin','27','26','Руководство','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3540','1518197157','1','admin','27','26','Руководство','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3541','1518197158','1','admin','27','26','Руководство','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3542','1518197163','1','admin','27','27','Награды и грамоты','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3543','1518197168','1','admin','27','27','Награды и грамоты','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3544','1518197169','1','admin','27','27','Награды и грамоты','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3545','1518197175','1','admin','27','28','Благодарности','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3546','1518197179','1','admin','27','28','Благодарности','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3547','1518197180','1','admin','27','28','Благодарности','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3548','1518197186','1','admin','27','29','Инновации','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3549','1518197190','1','admin','27','29','Инновации','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3550','1518197191','1','admin','27','29','Инновации','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3551','1518197192','1','admin','27','30','Вакансии','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3552','1518197197','1','admin','27','30','Вакансии','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3553','1518197199','1','admin','27','30','Вакансии','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3554','1518197205','1','admin','27','31','Абонентные участки','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3555','1518197208','1','admin','27','31','Абонентные участки','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3556','1518197210','1','admin','27','31','Абонентные участки','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3557','1518197213','1','admin','27','32','Юридические лица','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3558','1518197217','1','admin','27','32','Юридические лица','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3559','1518197218','1','admin','27','32','Юридические лица','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3560','1518197221','1','admin','27','33','Дислокация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3561','1518197232','1','admin','27','33','Дислокация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3562','1518197233','1','admin','27','33','Дислокация','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3563','1518197256','1','admin','27','34','Структура предприятия','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3564','1518197260','1','admin','27','34','Структура предприятия','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3565','1518197261','1','admin','27','34','Структура предприятия','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3566','1518197263','1','admin','27','35','Фин. отчетность','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3567','1518197272','1','admin','27','35','Фин. отчетность','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3568','1518197273','1','admin','27','35','Фин. отчетность','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3569','1518197275','1','admin','27','36','О доступе к публичной информации','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3570','1518197279','1','admin','27','36','О доступе к публичной информации','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3571','1518197281','1','admin','27','36','О доступе к публичной информации','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3572','1518197284','1','admin','27','37','Организационная структура','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3573','1518197287','1','admin','27','37','Организационная структура','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3574','1518197288','1','admin','27','37','Организационная структура','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3575','1518197291','1','admin','27','38','Тарифы','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3576','1518197294','1','admin','27','38','Тарифы','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3577','1518197296','1','admin','27','38','Тарифы','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3578','1518197299','1','admin','27','39','Нормативно-правовые акты','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3579','1518197305','1','admin','27','39','Нормативно-правовые акты','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3580','1518197306','1','admin','27','39','Нормативно-правовые акты','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3581','1518197309','1','admin','27','40','График личных приемов руководителей','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3582','1518197317','1','admin','27','40','График личных приемов руководителей','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3583','1518197318','1','admin','27','40','График личных приемов руководителей','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3584','1518197341','1','admin','27','41','Структура предприятия, правила внутреннего распорядка','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3585','1518197366','1','admin','27','41','Структура предприятия, правила внутреннего распорядка','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3586','1518197368','1','admin','27','41','Структура предприятия, правила внутреннего распорядка','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3587','1518197378','1','admin','27','42','Отчеты о запросах публичной информации','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3588','1518197389','1','admin','27','42','Отчеты о запросах публичной информации','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3589','1518197391','1','admin','27','42','Отчеты о запросах публичной информации','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3590','1518197401','1','admin','27','31','Абонентные участки','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3591','1518197433','1','admin','27','43','Тарифы для населения','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3592','1518197438','1','admin','27','43','Тарифы для населения','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3593','1518197439','1','admin','27','43','Тарифы для населения','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3594','1518197445','1','admin','27','44','Тарифы для юр.лиц','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3595','1518197449','1','admin','27','44','Тарифы для юр.лиц','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3596','1518197450','1','admin','27','44','Тарифы для юр.лиц','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3597','1518197453','1','admin','27','45','Субсидии','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3598','1518197456','1','admin','27','45','Субсидии','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3599','1518197457','1','admin','27','45','Субсидии','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3600','1518197459','1','admin','27','46','Льготы','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3601','1518197463','1','admin','27','46','Льготы','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3602','1518197464','1','admin','27','46','Льготы','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3603','1518197466','1','admin','27','47','Предоставление услуг','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3604','1518197470','1','admin','27','47','Предоставление услуг','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3605','1518197472','1','admin','27','47','Предоставление услуг','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3606','1518197486','1','admin','27','48','Сообщить показания прибора учета ','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3607','1518197495','1','admin','27','48','Сообщить показания прибора учета ','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3608','1518197497','1','admin','27','48','Сообщить показания прибора учета ','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3609','1518197500','1','admin','27','49','Нормативно-правовые акты ','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3610','1518197503','1','admin','27','49','Нормативно-правовые акты ','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3611','1518197504','1','admin','27','49','Нормативно-правовые акты ','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3612','1518197507','1','admin','27','50','Разъяснения','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3613','1518197511','1','admin','27','50','Разъяснения','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3614','1518197512','1','admin','27','50','Разъяснения','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3615','1518197515','1','admin','27','51','Прибоpы учета','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3616','1518197519','1','admin','27','51','Прибоpы учета','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3617','1518197520','1','admin','27','51','Прибоpы учета','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3618','1518197525','1','admin','27','52','Подключение объектов','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3619','1518197530','1','admin','27','52','Подключение объектов','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3620','1518197533','1','admin','27','52','Подключение объектов','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3621','1518197540','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3622','1518197544','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3623','1518197546','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3624','1518197552','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3625','1518197556','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3626','1518197562','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3627','1518197562','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3628','1518197695','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3629','1518197697','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3630','1518197700','1','admin','27','88','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3631','1518197705','1','admin','27','88','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3632','1518197706','1','admin','27','88','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3633','1518197769','1','admin','27','104','Предприятие (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3634','1518197815','1','admin','5','104','Підприємство','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3635','1518197815','1','admin','27','104','Підприємство','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3636','1518197819','1','admin','27','114','О предприятии (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3637','1518197834','1','admin','5','114','Про підприємстві','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3638','1518197834','1','admin','27','114','Про підприємстві','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3639','1518197837','1','admin','27','115','Руководство (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3640','1518197858','1','admin','5','115','Керівництво','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3641','1518197858','1','admin','27','115','Керівництво','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3642','1518197862','1','admin','27','116','Награды и грамоты (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3643','1518197930','1','admin','5','116','Нагороди та грамоти','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3644','1518197930','1','admin','27','116','Нагороди та грамоти','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3645','1518197933','1','admin','27','117','Благодарности (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3646','1518197997','1','admin','5','117','Подяки','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3647','1518197997','1','admin','27','117','Подяки','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3648','1518198001','1','admin','27','118','Инновации (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3649','1518198020','1','admin','5','118','Інновації','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3650','1518198021','1','admin','27','118','Інновації','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3651','1518198023','1','admin','27','119','Вакансии (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3652','1518198047','1','admin','5','119','Вакансії','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3653','1518198047','1','admin','27','119','Вакансії','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3654','1518198056','1','admin','27','117','Подяки','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3655','1518198067','1','admin','27','105','Публичная информация (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3656','1518198082','1','admin','5','105','Публічна інформація','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3657','1518198082','1','admin','27','105','Публічна інформація','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3658','1518198085','1','admin','27','120','Абонентные участки (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3659','1518198100','1','admin','5','120','Абонентні ділянки','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3660','1518198100','1','admin','27','120','Абонентні ділянки','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3661','1518198102','1','admin','27','121','Юридические лица (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3662','1518198118','1','admin','5','121','Юридичні особи','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3663','1518198118','1','admin','27','121','Юридичні особи','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3664','1518198125','1','admin','27','122','Дислокация (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3665','1518198139','1','admin','5','122','Дислокація','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3666','1518198140','1','admin','27','122','Дислокація','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3667','1518198189','1','admin','27','123','Структура предприятия (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3668','1518198205','1','admin','5','123','Структура підприємства','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3669','1518198205','1','admin','27','123','Структура підприємства','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3670','1518198209','1','admin','27','124','Фин. отчетность (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3671','1518198227','1','admin','5','124','Фін. звітність','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3672','1518198227','1','admin','27','124','Фін. звітність','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3673','1518198229','1','admin','27','125','О доступе к публичной информации (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3674','1518198252','1','admin','5','125','Про доступ до публічної інформації','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3675','1518198253','1','admin','27','125','Про доступ до публічної інформації','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3676','1518198255','1','admin','27','126','Организационная структура (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3677','1518198268','1','admin','5','126','Організаційна структура','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3678','1518198268','1','admin','27','126','Організаційна структура','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3679','1518198270','1','admin','27','127','Тарифы (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3680','1518198304','1','admin','5','127','Тарифи','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3681','1518198305','1','admin','27','127','Тарифи','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3682','1518198308','1','admin','27','128','Нормативно-правовые акты (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3683','1518198324','1','admin','5','128','Нормативно-правові акти','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3684','1518198324','1','admin','27','128','Нормативно-правові акти','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3685','1518198330','1','admin','27','129','График личных приемов руководителей (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3686','1518198350','1','admin','5','129','Графік особистих прийомів керівників','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3687','1518198350','1','admin','27','129','Графік особистих прийомів керівників','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3688','1518198353','1','admin','27','130','Структура предприятия, правила внутреннего распорядка (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3689','1518198372','1','admin','5','130','Структура підприємства, правила внутрішнього розпорядку','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3690','1518198373','1','admin','27','130','Структура підприємства, правила внутрішнього розпорядку','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3691','1518198379','1','admin','27','131','Отчеты о запросах публичной информации (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3692','1518198399','1','admin','5','131','Звіти про запити публічної інформації','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3693','1518198399','1','admin','27','131','Звіти про запити публічної інформації','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3694','1518198413','1','admin','27','129','Графік особистих прийомів керівників','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3695','1518198413','1','admin','27','129','Графік особистих прийомів керівників','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3696','1518198424','1','admin','27','107','Коммерческое предложение (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3697','1518198441','1','admin','5','107','Комерційна пропозиція','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3698','1518198441','1','admin','27','107','Комерційна пропозиція','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3699','1518198445','1','admin','27','108','Контакты (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3700','1518198459','1','admin','5','108','Контакти','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3701','1518198459','1','admin','27','108','Контакти','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3702','1518198467','1','admin','27','109','Новости (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3703','1518198478','1','admin','5','109','Новини','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3704','1518198479','1','admin','27','109','Новини','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3705','1518198488','1','admin','27','110','Результаты поиска (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3706','1518198505','1','admin','5','110','Результати пошуку','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3707','1518198505','1','admin','27','110','Результати пошуку','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3708','1518198509','1','admin','27','111','Личный кабинет (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3709','1518198519','1','admin','5','111','Особистий кабінет','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3710','1518198519','1','admin','27','111','Особистий кабінет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3711','1518198521','1','admin','27','112','Авторизація (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3712','1518198530','1','admin','27','113','Регистрация (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3713','1518198548','1','admin','5','113','Реєстрація','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3714','1518198548','1','admin','27','113','Реєстрація','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3715','1518198758','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3716','1518198918','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3717','1518198933','1','admin','27','106','Потребители (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3718','1518198973','1','admin','5','106','Споживачі','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3719','1518198973','1','admin','27','106','Споживачі','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3720','1518198979','1','admin','27','132','Тарифы для населения (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3721','1518198996','1','admin','5','132','Тарифи для населення','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3722','1518198996','1','admin','27','132','Тарифи для населення','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3723','1518198999','1','admin','27','133','Тарифы для юр.лиц (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3724','1518199018','1','admin','27','134','Субсидии (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3725','1518199038','1','admin','5','134','Субсидії','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3726','1518199038','1','admin','27','134','Субсидії','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3727','1518199040','1','admin','27','135','Льготы (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3728','1518199100','1','admin','5','135','Пільги','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3729','1518199100','1','admin','27','135','Пільги','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3730','1518199104','1','admin','27','136','Предоставление услуг (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3731','1518199143','1','admin','5','136','Надання послуг','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3732','1518199143','1','admin','27','136','Надання послуг','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3733','1518199147','1','admin','27','137','Сообщить показания прибора учета  (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3734','1518199167','1','admin','5','137','Повідомити показання приладу обліку','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3735','1518199168','1','admin','27','137','Повідомити показання приладу обліку','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3736','1518199171','1','admin','27','138','Нормативно-правовые акты  (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3737','1518199191','1','admin','5','138','Нормативно-правові акти','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3738','1518199191','1','admin','27','138','Нормативно-правові акти','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3739','1518199195','1','admin','27','139','Разъяснения (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3740','1518199210','1','admin','5','139','Роз\'яснення','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3741','1518199210','1','admin','27','139','Роз\'яснення','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3742','1518199211','1','admin','27','140','Прибоpы учета (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3743','1518199230','1','admin','27','141','Подключение объектов (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3744','1518199255','1','admin','5','141','Підключення об\'єктів','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3745','1518199256','1','admin','27','141','Підключення об\'єктів','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3746','1518199272','1','admin','27','108','Контакти','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3747','1518199829','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3748','1518220836','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3749','1518220848','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3750','1518220852','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3751','1518220855','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3752','1518220858','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3753','1518221273','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3754','1518221360','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3755','1518221360','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3756','1518221377','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3757','1518221377','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3758','1518221491','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3759','1518221491','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3760','1518222012','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3761','1518222012','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3762','1518222044','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3763','1518222044','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3764','1518222488','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3765','1518222489','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3766','1518222510','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3767','1518222510','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3768','1518222562','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3769','1518222563','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3770','1518222623','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3771','1518222623','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3772','1518222728','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3773','1518222728','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3774','1518222953','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3775','1518222953','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3776','1518223006','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3777','1518223006','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3778','1518223191','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3779','1518223191','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3780','1518223272','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3781','1518223287','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3782','1518223288','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3783','1518223411','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3784','1518223411','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3785','1518223454','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3786','1518223455','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3787','1518223496','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3788','1518223496','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3789','1518223868','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3790','1518223868','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3791','1518223918','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3792','1518223918','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3793','1518224092','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3794','1518224092','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3795','1518224099','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3796','1518224099','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3797','1518225418','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3798','1518225418','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3799','1518225566','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3800','1518225566','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3801','1518226156','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3802','1518226156','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3803','1518226434','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3804','1518226434','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3805','1518226536','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3806','1518226536','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3807','1518226611','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3808','1518226859','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3809','1518226875','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3810','1518226878','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3811','1518226880','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3812','1518226883','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3813','1518227004','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3814','1518227004','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3815','1518227220','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3816','1518227220','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3817','1518227311','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3818','1518227311','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3819','1518227586','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3820','1518227596','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3821','1518227716','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3822','1518227916','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3823','1518227916','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3824','1518228837','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3825','1518228837','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3826','1518392255','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3827','1518392340','1','admin','27','142','Тест (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3828','1518392358','1','admin','5','142','Тест (Укр)','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3829','1518392358','1','admin','27','142','Тест (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3830','1518392377','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3831','1518392432','1','admin','5','142','Тест (Укр)','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3832','1518392432','1','admin','27','142','Тест (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3833','1518392434','1','admin','27','143','Копия Тест (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3834','1518392438','1','admin','27','144','Копия Копия Тест (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3835','1518392444','1','admin','5','144','Копия Копия Тест (Укр)','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3836','1518392444','1','admin','27','144','Копия Копия Тест (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3837','1518392446','1','admin','27','145','Копия Тест (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3838','1518392459','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3839','1518392469','1','admin','5','84','Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3840','1518392469','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3841','1518392472','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3842','1518392481','1','admin','5','86','Копия Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3843','1518392481','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3844','1518392484','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3845','1518392491','1','admin','5','87','Копия Копия Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3846','1518392491','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3847','1518392493','1','admin','27','88','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3848','1518392503','1','admin','27','82','Новости','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3849','1518392515','1','admin','27','109','Новини','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3850','1518392527','1','admin','27','142','Тест (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3851','1518392565','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3852','1518392597','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3853','1518392677','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3854','1518393146','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3855','1518393261','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3856','1518393590','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3857','1518393593','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3858','1518393595','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3859','1518393599','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3860','1518393643','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3861','1518393647','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3862','1518393653','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3863','1518393657','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3864','1518393659','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3865','1518393661','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3866','1518393760','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3867','1518393760','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3868','1518393801','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3869','1518393801','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3870','1518393811','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3871','1518393868','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3872','1518393868','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3873','1518393945','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3874','1518393945','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3875','1518394176','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3876','1518394176','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3877','1518394200','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3878','1518394200','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3879','1518394251','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3880','1518394251','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3881','1518394286','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3882','1518394286','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3883','1518394344','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3884','1518394361','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3885','1518394364','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3886','1518394367','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3887','1518394370','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3888','1518394516','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3889','1518394516','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3890','1518394533','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3891','1518394533','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3892','1518394652','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3893','1518394652','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3894','1518394658','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3895','1518394658','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3896','1518394710','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3897','1518394710','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3898','1518394725','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3899','1518394726','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3900','1518394854','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3901','1518394854','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3902','1518394885','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3903','1518394888','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3904','1518394891','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3905','1518394894','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3906','1518395055','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3907','1518395069','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3908','1518395069','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3909','1518395291','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3910','1518395291','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3911','1518395762','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3912','1518395762','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3913','1518395839','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3914','1518395839','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3915','1518395984','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3916','1518395984','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3917','1518396061','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3918','1518396061','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3919','1518396242','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3920','1518396242','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3921','1518396427','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3922','1518396427','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3923','1518396511','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3924','1518396511','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3925','1518396535','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3926','1518396535','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3927','1518397100','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3928','1518397100','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3929','1518397182','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3930','1518397182','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3931','1518397306','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3932','1518397306','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3933','1518413587','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3934','1518413618','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3935','1518413729','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3936','1518413873','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3937','1518413876','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3938','1518413878','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3939','1518413882','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3940','1518413932','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3941','1518413932','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3942','1518414195','1','admin','76','-','-','Element management',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3943','1518414203','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3944','1518414633','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3945','1518414633','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3946','1518415037','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3947','1518415037','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3948','1518415211','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3949','1518415211','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3950','1518415250','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3951','1518415394','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3952','1518415398','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3953','1518415441','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3954','1518415444','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3955','1518415447','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3956','1518415450','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3957','1518415480','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3958','1518415480','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3959','1518416203','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3960','1518416326','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3961','1518416328','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3962','1518416331','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3963','1518416334','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3964','1518416502','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3965','1518416502','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3966','1518416636','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3967','1518416636','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3968','1518416677','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3969','1518416677','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3970','1518416777','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3971','1518416777','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3972','1518416795','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3973','1518416795','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3974','1518417172','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3975','1518417172','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3976','1518417442','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3977','1518417442','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3978','1518417585','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3979','1518417585','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3980','1518418023','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3981','1518418023','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3982','1518418102','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3983','1518418102','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3984','1518418116','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3985','1518418116','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3986','1518418242','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3987','1518418242','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3988','1518418348','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3989','1518418348','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3990','1518418489','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3991','1518418489','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3992','1518418509','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3993','1518418509','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3994','1518418593','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3995','1518418593','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3996','1518418639','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3997','1518418639','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3998','1518418736','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('3999','1518418736','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4000','1518419172','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4001','1518419172','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4002','1518419523','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4003','1518419523','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4004','1518419731','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4005','1518419731','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4006','1518419755','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4007','1518419755','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4008','1518419819','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4009','1518419819','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4010','1518419903','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4011','1518419903','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4012','1518419958','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4013','1518419958','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4014','1518419974','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4015','1518419974','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4016','1518420182','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4017','1518420182','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4018','1518420261','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4019','1518420261','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4020','1518420665','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4021','1518420743','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4022','1518420743','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4023','1518421124','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4024','1518421124','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4025','1518421239','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4026','1518421239','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4027','1518421349','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4028','1518421349','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4029','1518421613','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4030','1518421613','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4031','1518421689','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4032','1518421689','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4033','1518421819','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4034','1518421819','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4035','1518422154','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4036','1518422154','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4037','1518422245','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4038','1518425013','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4039','1518425061','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4040','1518425157','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4041','1518425222','1','admin','20','3','Home','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4042','1518425222','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4043','1518425303','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4044','1518425415','1','admin','20','11','Регистрация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4045','1518425416','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4046','1518425429','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4047','1518425549','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4048','1518425550','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4049','1518425591','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4050','1518425697','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4051','1518425697','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4052','1518425707','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4053','1518425713','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4054','1518425816','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4055','1518425834','1','admin','78','2','evoSearch','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4056','1518425848','1','admin','22','30','evoBabel','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4057','1518425855','1','admin','22','15','evoSearch','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4058','1518425893','1','admin','102','21','evoBabelPlaceholder','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4059','1518425935','1','admin','102','3','Search Highlight','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4060','1518425939','1','admin','102','12','evoSearch','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4061','1518426104','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4062','1518426533','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4063','1518426976','1','admin','27','112','Авторизація (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4064','1518426986','1','admin','5','112','Авторизація','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4065','1518426986','1','admin','27','112','Авторизація','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4066','1518426992','1','admin','79','4','inc_header','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4067','1518426992','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4068','1518427093','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4069','1518427176','1','admin','19','-','Новый шаблон','Creating a new template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4070','1518427252','1','admin','20','-','Восстановление пароля','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4071','1518427252','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4072','1518427682','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4073','1518427689','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4074','1518427694','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4075','1518427715','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4076','1518427719','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4077','1518427768','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4078','1518427936','1','admin','78','2','evoSearch','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4079','1518427949','1','admin','78','10','feedbackReport','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4080','1518428021','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4081','1518428105','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4082','1518428249','1','admin','79','9','feedbackForm','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4083','1518428249','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4084','1518428376','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4085','1518428593','1','admin','20','13','Восстановление пароля','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4086','1518428593','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4087','1518429595','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4088','1518429625','1','admin','20','13','Восстановление пароля','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4089','1518429625','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4090','1518429721','1','admin','27','93','Результаты поиска','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4091','1518430537','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4092','1518430590','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4093','1518430674','1','admin','5','-','Восстановление пароля','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4094','1518430674','1','admin','27','146','Восстановление пароля','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4095','1518430723','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4096','1518430826','1','admin','27','146','Восстановление пароля','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4097','1518430830','1','admin','27','146','Восстановление пароля','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4098','1518430832','1','admin','27','146','Восстановление пароля','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4099','1518430838','1','admin','5','146','Восстановление пароля','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4100','1518430838','1','admin','27','146','Восстановление пароля','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4101','1518430843','1','admin','27','147','Восстановление пароля (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4102','1518430873','1','admin','5','147','Відновлення паролю','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4103','1518430873','1','admin','27','147','Відновлення паролю','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4104','1518430883','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4105','1518430989','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4106','1518430989','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4107','1518431165','1','admin','20','13','Восстановление пароля','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4108','1518431166','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4109','1518431866','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4110','1518431963','1','admin','20','13','Восстановление пароля','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4111','1518431963','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4112','1518432274','1','admin','20','13','Восстановление пароля','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4113','1518432274','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4114','1518432431','1','admin','20','13','Восстановление пароля','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4115','1518432431','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4116','1518432456','1','admin','19','-','Новый шаблон','Creating a new template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4117','1518432495','1','admin','20','-','Изменение пароля','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4118','1518432495','1','admin','16','14','Изменение пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4119','1518432568','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4120','1518432580','1','admin','27','2','RU','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4121','1518432584','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4122','1518432605','1','admin','4','-','Новый ресурс','Creating a resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4123','1518432614','1','admin','5','-','Изменение пароля','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4124','1518432614','1','admin','27','148','Изменение пароля','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4125','1518432619','1','admin','27','148','Изменение пароля','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4126','1518432621','1','admin','27','148','Изменение пароля','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4127','1518432628','1','admin','5','148','Изменение пароля','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4128','1518432628','1','admin','27','148','Изменение пароля','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4129','1518432633','1','admin','27','149','Изменение пароля (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4130','1518432642','1','admin','5','149','Зміна пароля','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4131','1518432642','1','admin','27','149','Зміна пароля','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4132','1518432676','1','admin','20','14','Изменение пароля','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4133','1518432676','1','admin','16','14','Изменение пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4134','1518432785','1','admin','20','14','Изменение пароля','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4135','1518432786','1','admin','16','14','Изменение пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4136','1518432906','1','admin','20','13','Восстановление пароля','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4137','1518432906','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4138','1518433131','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4139','1518433201','1','admin','20','13','Восстановление пароля','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4140','1518433201','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4141','1518433449','1','admin','20','13','Восстановление пароля','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4142','1518433665','1','admin','27','148','Изменение пароля','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4143','1518433692','1','admin','6','148','Изменение пароля','Deleting resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4144','1518433693','1','admin','3','2','RU','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4145','1518433697','1','admin','27','149','Зміна пароля','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4146','1518433702','1','admin','6','149','Зміна пароля','Deleting resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4147','1518433702','1','admin','3','3','UA','Viewing data for resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4148','1518433712','1','admin','27','18','Потребители','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4149','1518433715','1','admin','27','20','Коммерческое предложение','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4150','1518433763','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4151','1518433777','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4152','1518433779','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4153','1518433782','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4154','1518434027','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4155','1518434044','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4156','1518434129','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4157','1518434144','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4158','1518434146','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4159','1518434149','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4160','1518434152','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4161','1518434216','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4162','1518434216','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4163','1518434422','1','admin','16','14','Изменение пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4164','1518434431','1','admin','21','14','Изменение пароля','Deleting template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4165','1518434431','1','admin','76','-','-','Element management',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4166','1518434442','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4167','1518434565','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4168','1518434566','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4169','1518434570','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4170','1518434570','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4171','1518434927','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4172','1518434927','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4173','1518434937','1','admin','20','10','Авторизация','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4174','1518434937','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4175','1518435078','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4176','1518435078','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4177','1518435141','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4178','1518435255','1','admin','20','13','Восстановление пароля','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4179','1518435255','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4180','1518435478','1','admin','20','13','Восстановление пароля','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4181','1518435478','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4182','1518435605','1','admin','20','13','Восстановление пароля','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4183','1518435605','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4184','1518435631','1','admin','20','13','Восстановление пароля','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4185','1518435631','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4186','1518435679','1','admin','20','13','Восстановление пароля','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4187','1518435679','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4188','1518435923','1','admin','20','13','Восстановление пароля','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4189','1518435923','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4190','1518435954','1','admin','20','13','Восстановление пароля','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4191','1518435954','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4192','1518436234','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4193','1518436304','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4194','1518436304','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4195','1518436360','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4196','1518436364','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4197','1518436369','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4198','1518436374','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4199','1518518329','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4200','1518518528','1','admin','64','-','-','Removing deleted content',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4201','1518518940','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4202','1518518943','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4203','1518518945','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4204','1518518948','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4205','1518520651','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4206','1518520651','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4207','1518520757','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4208','1518520757','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4209','1518520828','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4210','1518520828','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4211','1518520919','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4212','1518520919','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4213','1518520971','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4214','1518520971','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4215','1518521008','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4216','1518521008','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4217','1518521243','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4218','1518521243','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4219','1518521303','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4220','1518521303','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4221','1518521392','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Modified File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4222','1518521392','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4223','1518522040','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4224','1518522175','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4225','1518522175','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4226','1518522431','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4227','1518522530','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4228','1518522531','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4229','1518522641','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4230','1518522641','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4231','1518522801','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4232','1518522801','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4233','1518522806','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4234','1518522885','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4235','1518522885','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4236','1518523049','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4237','1518523049','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4238','1518523136','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4239','1518523136','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4240','1518523452','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4241','1518523453','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4242','1518523533','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4243','1518523533','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4244','1518523596','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4245','1518523596','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4246','1518523710','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4247','1518523842','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4248','1518523842','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4249','1518523941','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4250','1518523946','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4251','1518523956','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4252','1518524063','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4253','1518524065','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4254','1518524072','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4255','1518524484','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4256','1518524495','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4257','1518524509','1','admin','79','-','onlinefeedbackForm','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4258','1518524509','1','admin','78','14','onlinefeedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4259','1518524533','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4260','1518524537','1','admin','78','10','feedbackReport','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4261','1518524564','1','admin','79','-','onlinefeedbackReport','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4262','1518524564','1','admin','78','15','onlinefeedbackReport','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4263','1518524576','1','admin','79','15','onlinefeedbackReport','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4264','1518524576','1','admin','78','15','onlinefeedbackReport','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4265','1518524741','1','admin','79','14','onlinefeedbackForm','Saving Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4266','1518524741','1','admin','78','14','onlinefeedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4267','1518524747','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4268','1518524793','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4269','1518545916','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4270','1518545947','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4271','1518545956','1','admin','78','11','eFeedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4272','1518545967','1','admin','78','12','eFeedbackReport','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4273','1518545981','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4274','1518545983','1','admin','78','10','feedbackReport','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4275','1518545991','1','admin','12','1','admin','Editing user',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4276','1518546235','1','admin','78','13','feedback','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4277','1518546497','1','admin','22','14','eForm','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4278','1518546520','1','admin','12','1','admin','Editing user',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4279','1518546534','1','admin','17','-','-','Editing settings',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4280','1518589703','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4281','1518589730','1','admin','76','-','-','Element management',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4282','1518589783','1','admin','22','32','TvTable','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4283','1518589982','1','admin','22','32','TvTable','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4284','1518776213','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4285','1518776232','1','admin','17','-','-','Editing settings',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4286','1518777520','1','admin','78','13','feedback','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4287','1518777523','1','admin','78','12','eFeedbackReport','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4288','1518777532','1','admin','112','1','Extras','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4289','1518777558','1','admin','78','10','feedbackReport','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4290','1518777560','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4291','1518777567','1','admin','78','11','eFeedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4292','1518777586','1','admin','78','14','onlinefeedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4293','1518777590','1','admin','78','15','onlinefeedbackReport','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4294','1518777596','1','admin','78','9','feedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4295','1518777891','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4296','1518778399','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4297','1518778544','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4298','1518779032','1','admin','22','32','TvTable','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4299','1518779884','1','admin','301','7','countViews','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4300','1518779887','1','admin','301','6','Картинка','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4301','1518779891','1','admin','301','4','Языковые версии ресурса','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4302','1518779895','1','admin','301','5','Таблица','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4303','1518780432','1','admin','22','32','TvTable','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4304','1518780510','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4305','1518780706','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4306','1518945781','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4307','1518945797','1','admin','88','1','beninbenino@gmail.com','Editing web user',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4308','1518945818','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4309','1518945824','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4310','1518945830','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4311','1518945872','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4312','1518945890','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4313','1518945903','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4314','1519043427','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4315','1519043446','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4316','1519043499','1','admin','22','33','countViews','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4317','1519043585','1','admin','22','35','inc','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4318','1519043587','1','admin','22','34','hits','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4319','1519046232','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4320','1519046240','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4321','1519046254','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4322','1519046277','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4323','1519046284','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4324','1519046292','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4325','1519046347','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4326','1519046358','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4327','1519215364','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4328','1519215374','1','admin','27','82','Новости','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4329','1519215376','1','admin','27','93','Результаты поиска','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4330','1519215402','1','admin','88','1','beninbenino@gmail.com','Editing web user',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4331','1519215436','1','admin','12','1','admin','Editing user',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4332','1519215929','1','admin','27','26','Руководство','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4333','1519215930','1','admin','27','25','О предприятии','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4334','1519215957','1','admin','27','82','Новости','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4335','1519215975','1','admin','5','82','Новости','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4336','1519215975','1','admin','27','82','Новости','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4337','1519215998','1','admin','5','82','Новости','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4338','1519215998','1','admin','27','82','Новости','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4339','1519229800','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4340','1519309964','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4341','1519309971','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4342','1519368243','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4343','1519368250','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4344','1519369015','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4345','1519369019','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4346','1519369021','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4347','1519369023','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4348','1519369144','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4349','1519369147','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4350','1519369160','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4351','1519369162','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4352','1519369164','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4353','1519369166','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4354','1519369168','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4355','1519369171','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4356','1519370124','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4357','1519370129','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4358','1519417076','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4359','1519417085','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4360','1519417100','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4361','1519417662','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4362','1519417668','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4363','1519417672','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4364','1519417673','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4365','1519417679','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4366','1519719824','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4367','1519719840','1','admin','17','-','-','Editing settings',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4368','1519719883','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4369','1519720054','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4370','1519720064','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4371','1519720086','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4372','1519720168','1','admin','27','1','Главная страница','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4373','1519720198','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4374','1519720782','1','admin','22','18','sgLister','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4375','1519720797','1','admin','22','17','sgThumb','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4376','1519720815','1','admin','22','19','sgController','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4377','1519720966','1','admin','301','6','Картинка','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4378','1519720981','1','admin','301','4','Языковые версии ресурса','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4379','1519720985','1','admin','301','7','countViews','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4380','1519721015','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4381','1519721042','1','admin','102','18','SimpleGallery','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4382','1519725342','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4383','1519725347','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4384','1519725355','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4385','1519725359','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4386','1519736877','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4387','1519737027','1','admin','78','2','evoSearch','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4388','1519737045','1','admin','22','15','evoSearch','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4389','1519737061','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4390','1519758757','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4391','1519758773','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4392','1520031129','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4393','1520031228','1','admin','53','-','-','Viewing system info',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4394','1520031242','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4395','1520031432','1','admin','78','5','inc_footer','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4396','1520031557','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4397','1520031571','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4398','1520031580','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4399','1520031587','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4400','1521018553','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4401','1521019456','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4402','1521188045','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4403','1521188061','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4404','1521188065','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4405','1521188071','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4406','1521188073','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4407','1521188075','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4408','1521188080','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4409','1521188602','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4410','1521188947','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4411','1521188950','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4412','1521188955','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4413','1521549635','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4414','1521549645','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4415','1521549656','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4416','1521549681','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4417','1521550180','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4418','1521743738','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4419','1521743766','1','admin','27','32','Юридические лица','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4420','1521743829','1','admin','27','32','Юридические лица','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4421','1521743853','1','admin','78','1','mm_rules','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4422','1522180099','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4423','1522180272','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4424','1522193508','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4425','1522193511','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4426','1522193539','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4427','1522193565','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4428','1522740697','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4429','1522741442','1','admin','27','27','Награды и грамоты','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4430','1522741465','1','admin','27','82','Новости','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4431','1522741553','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4432','1522741928','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4433','1522742003','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4434','1522742027','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4435','1522742102','1','admin','5','84','Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4436','1522742102','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4437','1522742103','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4438','1522742111','1','admin','5','86','Копия Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4439','1522742111','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4440','1522742112','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4441','1522742119','1','admin','5','87','Копия Копия Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4442','1522742119','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4443','1522742122','1','admin','27','88','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4444','1522742131','1','admin','27','142','Тест (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4445','1522742136','1','admin','5','142','Тест (Укр)','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4446','1522742136','1','admin','27','142','Тест (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4447','1522742138','1','admin','27','143','Копия Тест (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4448','1522742147','1','admin','5','143','Копия Тест (Укр)','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4449','1522742148','1','admin','27','143','Копия Тест (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4450','1522742149','1','admin','27','144','Копия Копия Тест (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4451','1522742157','1','admin','5','144','Копия Копия Тест (Укр)','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4452','1522742157','1','admin','27','144','Копия Копия Тест (Укр)','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4453','1522742203','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4454','1522742248','1','admin','20','5','Текстовая страница','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4455','1522742248','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4456','1522742297','1','admin','20','5','Текстовая страница','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4457','1522742298','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4458','1522742347','1','admin','20','5','Текстовая страница','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4459','1522742347','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4460','1522764172','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4461','1522764177','1','admin','27','2','RU','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4462','1522764184','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4463','1522764195','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4464','1522764198','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4465','1522833277','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4466','1522833281','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4467','1522833303','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4468','1522833404','1','admin','27','82','Новости','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4469','1522833414','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4470','1522833921','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4471','1522995935','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4472','1522995941','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4473','1525264593','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4474','1525330859','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4475','1525330870','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4476','1525330880','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4477','1525331093','1','admin','23','-','Новый сниппет','Creating a new Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4478','1525332174','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4479','1525332175','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4480','1525336932','1','admin','88','1','beninbenino@gmail.com','Editing web user',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4481','1525336968','1','admin','89','1','beninbenino@gmail.com','Saving web user',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4482','1525337027','1','admin','88','1','beninbenino@gmail.com','Editing web user',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4483','1525337161','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4484','1525337168','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4485','1525337184','1','admin','88','1','beninbenino@gmail.com','Editing web user',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4486','1525338696','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4487','1525338716','1','admin','23','-','Новый сниппет','Creating a new Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4488','1525339222','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4489','1525344400','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4490','1525344420','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4491','1525344546','1','admin','27','87','Копия Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4492','1525344554','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4493','1525344611','1','admin','5','86','Копия Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4494','1525344611','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4495','1525344667','1','admin','5','86','Копия Тест','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4496','1525344667','1','admin','27','86','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4497','1525344676','1','admin','27','88','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4498','1525344693','1','admin','301','5','Таблица','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4499','1525344725','1','admin','302','5','Таблица','Save Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4500','1525344726','1','admin','301','5','Таблица','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4501','1525345288','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4502','1525345289','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4503','1525345300','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4504','1525345356','1','admin','27','88','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4505','1525345440','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4506','1525345449','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4507','1525345475','1','admin','5','94','Личный кабинет','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4508','1525345476','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4509','1525345549','1','admin','301','5','Таблица','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4510','1525345576','1','admin','301','4','Языковые версии ресурса','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4511','1525345586','1','admin','301','7','countViews','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4512','1525345609','1','admin','302','5','Таблица','Save Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4513','1525345609','1','admin','301','5','Таблица','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4514','1525345672','1','admin','302','5','Таблица','Save Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4515','1525345690','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4516','1525345695','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4517','1525345705','1','admin','26','-','-','Refreshing site',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4518','1525345706','1','admin','26','-','-','Refreshing site',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4519','1525345723','1','admin','67','-','-','Removing locks',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4520','1525345727','1','admin','301','5','Таблица','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4521','1525345751','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4522','1525346325','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4523','1525346325','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4524','1525346605','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4525','1525440039','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4526','1525448942','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4527','1525448961','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4528','1525449029','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4529','1525449033','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4530','1525449034','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4531','1525449036','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4532','1525449041','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4533','1525449844','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4534','1525450221','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4535','1525450223','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4536','1525450239','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4537','1525450239','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4538','1525450383','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4539','1525450383','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4540','1525681213','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4541','1525681253','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4542','1525681386','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4543','1525681392','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4544','1525705180','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4545','1525705207','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4546','1525705216','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4547','1525705223','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4548','1525705233','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4549','1525705236','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4550','1525705515','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4551','1525705575','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4552','1525705617','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4553','1525705617','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4554','1525705621','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4555','1525705636','1','admin','301','5','Таблица','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4556','1525705714','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4557','1525705749','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4558','1525705924','1','admin','27','88','Копия Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4559','1525705928','1','admin','16','6','Новости','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4560','1525705940','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4561','1525705989','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4562','1525776161','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4563','1525776332','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4564','1525776361','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4565','1525776383','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4566','1525776387','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4567','1525777577','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4568','1525778253','1','admin','22','30','evoBabel','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4569','1525778294','1','admin','102','21','evoBabelPlaceholder','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4570','1525778359','1','admin','22','19','sgController','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4571','1525779696','1','admin','112','3','evoBabelLexicon','Execute module',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4572','1525779743','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4573','1525779771','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4574','1525781884','1','admin','27','95','Авторизація','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4575','1525782170','1','admin','16','7','Результаты поиска','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4576','1525782184','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4577','1525782702','1','admin','16','10','Авторизация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4578','1525782943','1','admin','16','11','Регистрация','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4579','1525783229','1','admin','16','13','Восстановление пароля','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4580','1525950926','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4581','1525950943','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4582','1526548889','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4583','1526548918','1','admin','93','-','-','Backup Manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4584','1526548966','1','admin','93','-','-','Backup Manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4585','1526560363','1','admin','17','-','-','Editing settings',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4586','1527085411','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4587','1527085424','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4588','1527085450','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4589','1527085574','1','admin','301','7','countViews','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4590','1527085581','1','admin','301','6','Картинка','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4591','1527085590','1','admin','301','4','Языковые версии ресурса','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4592','1527085595','1','admin','301','5','Таблица','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4593','1527085823','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4594','1527085902','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4595','1527333053','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4596','1527333073','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4597','1527334008','1','admin','16','3','Home','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4598','1527585465','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4599','1527585558','1','admin','78','11','eFeedbackForm','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4600','1527585564','1','admin','78','13','feedback','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4601','1527586285','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4602','1527586289','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4603','1527586315','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4604','1527586320','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4605','1527586339','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4606','1527586364','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4607','1527586369','1','admin','8','-','-','Logged out',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4608','1527586373','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4609','1527586386','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4610','1527586420','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4611','1527586422','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4612','1527586425','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4613','1527587067','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4614','1527587306','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4615','1527587371','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4616','1527587371','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4617','1527587473','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4618','1527587529','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4619','1527587555','1','admin','67','-','-','Removing locks',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4620','1527587562','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4621','1527587568','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4622','1527587578','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4623','1527587607','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4624','1527587636','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4625','1527587637','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4626','1527587691','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4627','1527587691','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4628','1527587716','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4629','1527587723','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4630','1527588207','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4631','1527588216','1','admin','22','32','TvTable','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4632','1527588763','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4633','1527588763','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4634','1527588791','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4635','1527588791','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4636','1527588809','1','admin','301','5','Таблица','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4637','1527588844','1','admin','20','12','Личный кабинет','Saving template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4638','1527588844','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4639','1527588850','1','admin','26','-','-','Refreshing site',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4640','1527588853','1','admin','26','-','-','Refreshing site',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4641','1527588968','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4642','1527588991','1','admin','301','5','Таблица','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4643','1527589127','1','admin','27','84','Тест','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4644','1527589150','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4645','1527589469','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4646','1527589676','1','admin','22','32','TvTable','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4647','1527590302','1','admin','27','13','Предприятие','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4648','1527590305','1','admin','27','27','Награды и грамоты','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4649','1527590325','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4650','1527590366','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4651','1527590379','1','admin','301','5','Таблица','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4652','1527594420','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4653','1527594468','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4654','1527594534','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4655','1527594671','1','admin','301','5','Таблица','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4656','1527594735','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4657','1527594863','1','admin','103','22','TvTable','Saving plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4658','1527594864','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4659','1527594877','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4660','1527594888','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4661','1527595336','1','admin','27','20','Коммерческое предложение','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4662','1527595361','1','admin','93','-','-','Backup Manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4663','1527595366','1','admin','26','-','-','Refreshing site',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4664','1527595370','1','admin','26','-','-','Refreshing site',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4665','1527595375','1','admin','26','-','-','Refreshing site',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4666','1527595383','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4667','1527595407','1','admin','22','32','TvTable','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4668','1527595430','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4669','1527595444','1','admin','103','22','TvTable','Saving plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4670','1527595444','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4671','1527595457','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4672','1527595468','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4673','1527595487','1','admin','103','22','TvTable','Saving plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4674','1527595487','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4675','1527595504','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4676','1527595532','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4677','1527595547','1','admin','103','22','TvTable','Saving plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4678','1527595547','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4679','1527595554','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4680','1527595575','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4681','1527595582','1','admin','103','22','TvTable','Saving plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4682','1527595582','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4683','1527595597','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4684','1527595620','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4685','1527595627','1','admin','117','12','-','Editing tv rank',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4686','1527595638','1','admin','117','12','-','Editing tv rank',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4687','1527595648','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4688','1527595689','1','admin','301','5','Таблица','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4689','1527595801','1','admin','301','5','Таблица','Edit Template Variable',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4690','1527595809','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4691','1527595846','1','admin','103','22','TvTable','Saving plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4692','1527595846','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4693','1527595868','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4694','1527595899','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4695','1527596057','1','admin','103','22','TvTable','Saving plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4696','1527596057','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4697','1527596064','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4698','1527596075','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4699','1527596130','1','admin','103','22','TvTable','Saving plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4700','1527596130','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4701','1527596136','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4702','1527596161','1','admin','102','16','Diff','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4703','1527596171','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4704','1527596197','1','admin','103','22','TvTable','Saving plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4705','1527596197','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4706','1527596201','1','admin','26','-','-','Refreshing site',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4707','1527596203','1','admin','26','-','-','Refreshing site',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4708','1527596217','1','admin','5','94','Личный кабинет','Saving resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4709','1527596217','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4710','1527596279','1','admin','22','31','lang','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4711','1527596341','1','admin','22','32','TvTable','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4712','1527596368','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4713','1527596471','1','admin','22','32','TvTable','Editing Snippet',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4714','1527596497','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4715','1527596510','1','admin','103','22','TvTable','Saving plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4716','1527596510','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4717','1527596518','1','admin','16','12','Личный кабинет','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4718','1527596542','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4719','1527596554','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4720','1527671495','1','admin','58','-','MODX','Logged in',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4721','1527671699','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4722','1527671933','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4723','1527671978','1','admin','16','5','Текстовая страница','Editing template',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4724','1527671986','1','admin','27','20','Коммерческое предложение','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4725','1527672029','1','admin','103','22','TvTable','Saving plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4726','1527672029','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4727','1527672037','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4728','1527672046','1','admin','27','20','Коммерческое предложение','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4729','1527672070','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4730','1527672460','1','admin','103','22','TvTable','Saving plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4731','1527672461','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4732','1527672468','1','admin','27','94','Личный кабинет','Editing resource',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4733','1527672499','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4734','1527672519','1','admin','103','22','TvTable','Saving plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4735','1527672519','1','admin','102','22','TvTable','Edit plugin',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4736','1527672601','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4737','1527672605','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4738','1527672607','1','admin','31','-','-','Using file manager',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4739','1527672611','1','admin','31','-','/home/host1488038/lector-web.com/htdocs/teplo/template/css/style.css','Viewing File',NULL,NULL);

INSERT INTO `evo_manager_log` VALUES ('4740','1527673721','1','admin','58','-','MODX','Logged in','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4741','1527673723','1','admin','17','-','-','Editing settings','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4742','1527673773','1','admin','30','-','-','Saving settings','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4743','1527673824','1','admin','102','7','Forgot Manager Login','Edit plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4744','1527673833','1','admin','104','7','Forgot Manager Login','Delete plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4745','1527673833','1','admin','76','-','-','Element management','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4746','1527673836','1','admin','102','24','ManagerManager','Edit plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4747','1527673837','1','admin','102','1','ManagerManager','Edit plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4748','1527673844','1','admin','104','1','ManagerManager','Delete plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4749','1527673845','1','admin','76','-','-','Element management','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4750','1527673851','1','admin','102','2','Quick Manager+','Edit plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4751','1527673856','1','admin','104','2','Quick Manager+','Delete plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4752','1527673857','1','admin','76','-','-','Element management','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4753','1527673859','1','admin','102','25','Quick Manager+','Edit plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4754','1527673864','1','admin','104','25','Quick Manager+','Delete plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4755','1527673864','1','admin','76','-','-','Element management','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4756','1527673867','1','admin','102','8','TinyMCE4','Edit plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4757','1527673873','1','admin','104','8','TinyMCE4','Delete plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4758','1527673873','1','admin','76','-','-','Element management','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4759','1527673877','1','admin','102','4','Updater','Edit plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4760','1527673886','1','admin','104','4','Updater','Delete plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4761','1527673887','1','admin','76','-','-','Element management','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4762','1527673888','1','admin','102','26','Updater','Edit plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4763','1527673898','1','admin','104','26','Updater','Delete plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4764','1527673898','1','admin','76','-','-','Element management','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4765','1527673910','1','admin','102','5','userHelper','Edit plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4766','1527673917','1','admin','104','5','userHelper','Delete plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4767','1527673917','1','admin','76','-','-','Element management','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4768','1527674040','1','admin','102','9','ElementsInTree','Edit plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4769','1527674046','1','admin','104','9','ElementsInTree','Delete plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4770','1527674046','1','admin','76','-','-','Element management','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4771','1527674050','1','admin','102','10','CodeMirror','Edit plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4772','1527674069','1','admin','104','10','CodeMirror','Delete plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4773','1527674069','1','admin','76','-','-','Element management','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4774','1527674071','1','admin','102','23','userHelper','Edit plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4775','1527674075','1','admin','104','23','userHelper','Delete plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4776','1527674075','1','admin','76','-','-','Element management','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4777','1527674079','1','admin','102','27','userHelper','Edit plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4778','1527674083','1','admin','104','27','userHelper','Delete plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4779','1527674083','1','admin','76','-','-','Element management','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4780','1527674093','1','admin','102','22','TvTable','Edit plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4781','1527674125','1','admin','300','-','Новый параметр (TV)','Create Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4782','1527674153','1','admin','302','-','tableUser','Save Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4783','1527674153','1','admin','301','8','tableUser','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4784','1527674156','1','admin','301','5','Таблица','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4785','1527674161','1','admin','302','5','Таблица','Save Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4786','1527674162','1','admin','301','5','Таблица','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4787','1527674176','1','admin','103','22','TvTable','Saving plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4788','1527674176','1','admin','102','22','TvTable','Edit plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4789','1527674182','1','admin','16','12','Личный кабинет','Editing template','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4790','1527674194','1','admin','20','12','Личный кабинет','Saving template','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4791','1527674194','1','admin','16','12','Личный кабинет','Editing template','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4792','1527674674','1','admin','27','94','Личный кабинет','Editing resource','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4793','1527676363','1','admin','5','94','Личный кабинет','Saving resource','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4794','1527676363','1','admin','27','94','Личный кабинет','Editing resource','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4795','1527676536','1','admin','301','5','Таблица','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4796','1527676566','1','admin','302','5','Таблица','Save Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4797','1527676566','1','admin','301','5','Таблица','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4798','1527676589','1','admin','302','5','Таблица','Save Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4799','1527676590','1','admin','301','5','Таблица','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4800','1527676597','1','admin','301','8','tableUser','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4801','1527676608','1','admin','302','8','tableUser','Save Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4802','1527676609','1','admin','301','8','tableUser','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4803','1527676611','1','admin','300','-','Новый параметр (TV)','Create Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4804','1527676662','1','admin','302','-','tableRevise','Save Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4805','1527676662','1','admin','301','9','tableRevise','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4806','1527676673','1','admin','302','9','tableRevise','Save Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4807','1527676673','1','admin','301','9','tableRevise','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4808','1527676679','1','admin','300','-','Новый параметр (TV)','Create Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4809','1527676714','1','admin','302','-','tableReceipt','Save Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4810','1527676715','1','admin','301','10','tableReceipt','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4811','1527676759','1','admin','300','-','Новый параметр (TV)','Create Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4812','1527676781','1','admin','302','-','tableContract','Save Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4813','1527676782','1','admin','301','11','tableContract','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4814','1527676787','1','admin','300','-','Новый параметр (TV)','Create Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4815','1527676830','1','admin','302','-','tablePayments','Save Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4816','1527676830','1','admin','301','12','tablePayments','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4817','1527677741','1','admin','301','11','tableContract','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4818','1527677750','1','admin','302','11','tableContract','Save Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4819','1527677751','1','admin','301','11','tableContract','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4820','1527677753','1','admin','301','12','tablePayments','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4821','1527677760','1','admin','302','12','tablePayments','Save Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4822','1527677761','1','admin','301','12','tablePayments','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4823','1527677768','1','admin','301','10','tableReceipt','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4824','1527677775','1','admin','302','10','tableReceipt','Save Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4825','1527677775','1','admin','301','10','tableReceipt','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4826','1527677780','1','admin','301','9','tableRevise','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4827','1527677786','1','admin','302','9','tableRevise','Save Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4828','1527677786','1','admin','301','9','tableRevise','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4829','1527677792','1','admin','301','8','tableUser','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4830','1527677804','1','admin','301','5','Таблица','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4831','1527677809','1','admin','301','11','tableContract','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4832','1527677920','1','admin','103','22','TvTable','Saving plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4833','1527677920','1','admin','102','22','TvTable','Edit plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4834','1527677985','1','admin','301','12','tablePayments','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4835','1527678007','1','admin','301','9','tableRevise','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4836','1527678416','1','admin','300','-','Новый параметр (TV)','Create Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4837','1527678428','1','admin','302','-','tableMetr','Save Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4838','1527678428','1','admin','301','13','tableMetr','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4839','1527678455','1','admin','301','9','tableRevise','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4840','1527678514','1','admin','300','-','Новый параметр (TV)','Create Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4841','1527678536','1','admin','302','-','tableSub','Save Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4842','1527678536','1','admin','301','14','tableSub','Edit Template Variable','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4843','1527678552','1','admin','20','12','Личный кабинет','Saving template','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4844','1527678552','1','admin','16','12','Личный кабинет','Editing template','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4845','1527678590','1','admin','20','12','Личный кабинет','Saving template','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4846','1527678590','1','admin','16','12','Личный кабинет','Editing template','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4847','1527678605','1','admin','16','12','Личный кабинет','Editing template','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4848','1527678617','1','admin','20','12','Личный кабинет','Saving template','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4849','1527678617','1','admin','16','12','Личный кабинет','Editing template','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4850','1527678627','1','admin','27','94','Личный кабинет','Editing resource','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4851','1527678659','1','admin','102','22','TvTable','Edit plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4852','1527678677','1','admin','103','22','TvTable','Saving plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4853','1527678677','1','admin','102','22','TvTable','Edit plugin','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4854','1527751605','1','admin','58','-','MODX','Logged in','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4855','1527751621','1','admin','27','94','Личный кабинет','Editing resource','178.209.66.210','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4856','1527773156','1','admin','58','-','MODX','Logged in','91.204.199.213','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4857','1527773185','1','admin','27','94','Личный кабинет','Editing resource','91.204.199.213','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4858','1527773371','1','admin','8','-','-','Logged out','91.204.199.213','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4859','1527780422','1','admin','58','-','MODX','Logged in','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4860','1528013690','1','admin','58','-','MODX','Logged in','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4861','1528013707','1','admin','16','6','Новости','Editing template','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4862','1528013798','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4863','1528013998','1','admin','16','5','Текстовая страница','Editing template','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4864','1528014287','1','admin','16','3','Home','Editing template','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4865','1528612890','1','admin','58','-','MODX','Logged in','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4866','1528612914','1','admin','16','5','Текстовая страница','Editing template','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4867','1528612949','1','admin','301','6','Картинка','Edit Template Variable','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4868','1528613654','1','admin','16','3','Home','Editing template','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4869','1528613675','1','admin','16','6','Новости','Editing template','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4870','1528613757','1','admin','16','6','Новости','Editing template','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4871','1528614191','1','admin','301','6','Картинка','Edit Template Variable','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4872','1528614215','1','admin','16','5','Текстовая страница','Editing template','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4873','1528614228','1','admin','78','4','inc_header','Editing Chunk (HTML Snippet)','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4874','1528614651','1','admin','27','84','Тест','Editing resource','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4875','1528614674','1','admin','5','84','Тест','Saving resource','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4876','1528614674','1','admin','27','84','Тест','Editing resource','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4877','1528614697','1','admin','27','84','Тест','Editing resource','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4878','1528616356','1','admin','78','6','article.item','Editing Chunk (HTML Snippet)','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4879','1528616366','1','admin','78','8','article-min.item','Editing Chunk (HTML Snippet)','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4880','1528616714','1','admin','78','3','inc_meta','Editing Chunk (HTML Snippet)','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4881','1528619483','1','admin','16','3','Home','Editing template','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4882','1528619491','1','admin','16','6','Новости','Editing template','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4883','1528624311','1','admin','58','-','MODX','Logged in','91.204.199.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4884','1529570303','1','admin','58','-','MODX','Logged in','91.250.61.87','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36');

INSERT INTO `evo_manager_log` VALUES ('4885','1529570316','1','admin','93','-','-','Backup Manager','91.250.61.87','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36');


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
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=utf8 COMMENT='Contains the site document tree.';

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

INSERT INTO `evo_site_content` VALUES ('18','document','text/html','Потребители','','','potrebiteli','','1','0','0','2','1','','','1','5','3','1','1','1','1508256700','1','1508256700','0','0','0','1508256700','1','','0','0','0','0','0','1','Потребители    ','ПОТРЕБИТЕЛЬ','0');

INSERT INTO `evo_site_content` VALUES ('13','document','text/html','Предприятие','','','predpriyatie','','1','0','0','2','1','','','1','5','1','1','1','1','1508256093','1','1508256254','0','0','0','1508256254','1','','0','0','0','0','0','1','Предприятие    ','ПРЕДПРИЯТИЕ','0');

INSERT INTO `evo_site_content` VALUES ('23','document','text/html','Контакты','','','kontakty','','1','0','0','2','0','','','1','5','5','1','1','1','1508256926','1','1508256926','0','0','0','1508256926','1','','0','0','0','0','0','1','Контакты    ','КОНТАКТ','0');

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

INSERT INTO `evo_site_content` VALUES ('145','document','text/html','Копия Тест (Укр)','','','kopiya-test1','','1','0','0','109','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<h3>Классический текст Lorem Ipsum, используемый с XVI века</h3>\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<h3>Абзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.</h3>\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<h3>Английский перевод 1914 года, H. Rackham</h3>\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>','1','5','0','1','1','1','1511179765','1','1514378844','0','0','0','1511179939','1','','0','0','0','0','0','1','Копия Тест   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Классический текст Lorem Ipsum, используемый с XVI века\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\nАбзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\nАнглийский перевод 1914 года, H. Rackham\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"','ЦИЦЕРОН ТЕСТ ТЕСТО ТЕКСТ ПЕРЕВОД НАПИСАТЬ КОПИЯ КЛАССИЧЕСКИЙ АНГЛИЙСКИЙ ИСПОЛЬЗОВАТЬ ГОД ВЕК ВЕКО АБЗАЦ YOU WITH WILL WHO WHICH VITA UNDERTAKE TRUTH SYSTEM REM NULLA NOSTRUM NIHIL NEMO MASTER-BUILDER IDEA EXPLORER EXERCITATION ESSE ERROR DOLOR TRIVIAL PAINFUL LABORIOUS TOIL PAIN ENCOUNTER ACCOUNT THAT THIS THE THERE RATIONALLY OCCASIONALLY NOT EXTREMELY EVER AGAIN TEMPUS TEACHING CONSEQUENCE TAKE SOME SIT RIGHT RESULTANT PHYSICAL HUMAN ACTUAL REJECT QUASI PURSUE PROCURE PRODUCE DISLIKE DESIRE CIRCUMSTANCE PRAISE DENOUNCE PLEASURE EXERCISE EXAMPLE ADVANTAGE ONE OCCUR OBTAIN EXPOUND EXPLAIN ENJOY NOR NISI BECAUSE AND MUST MODUS MISTAKEN MISTAKE MINIM MINIMUM DICTUM MAN LOVE KNOW ITSELF HOW HAVE HAPPINESS GREAT GIVE FROM FIND FAULT EXCEPT EOS DOLORES COMPLETE CHOOSE CAN BUT BORN BEAR AVOID ARE ANY ANYONE ANNOYING ANNOY ALL VOLUPTATE VOLUPTATEM VOLUPTA VERITATIS VENIAM VEL VELIT UNDE ULLAM ULLAMCO TOTAM TEMPOR SUSCIPIT SUNT SINT SED REPREHENDERIT RATIONE RACKHAM QUI QUISQUAM QUIA QUAM QUA QUAERAT PROIDENT PERSPICIATIS PARIATUR OMNIS OFFICIA ODIT OCCAECAT NUMQUAM NOSTRUD NON NESCIUNT NEQUE NATUS MOLLIT MOLESTIA MALORUM MAGNA MAGNAM LOREM LAUDANTIUM LABORUM LABORIS LABORIOSAM LABORE IURE ISTE IRURE IPSUM IPSA IPSAM INVENTORE INCIDUNT INCIDIDUNT ILLUM ILLO FUGIT FUGIAT FINIBUS EXERCITATIONEM EXCEPTEUR EUM EST ENIM ELIT EIUS EIUSMOD EAQUE DUI DOLORE DOLOREM DOLOREMQUE DESERUNT CUPIDATAT CORPORIS CONSEQUUNTUR CONSEQUAT CONSEQUATUR CONSECTETUR COMMODO CILLUM BONORUM BEATA AUT AUTE AUTEM ASPERNATUR ARCHITECTO APERIAM ANIM AMET ALIQUIP ALIQUID ALIQUAM ADIPISCUS ADIPISCE ACCUSANTIUM','0');

INSERT INTO `evo_site_content` VALUES ('82','document','text/html','Новости','','','novosti','','1','0','0','2','1','','','1','6','6','1','1','1','1511178311','1','1519215998','0','0','0','1511178311','1','','0','0','0','0','1','1','Новости    ','НОВОСТЬ','0');

INSERT INTO `evo_site_content` VALUES ('84','document','text/html','Тест','','','test','','1','0','0','82','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<p>&nbsp;</p>\n<h3>Классический текст Lorem Ipsum, используемый с XVI века</h3>\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<h3>Абзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.</h3>\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<h3>Английский перевод 1914 года, H. Rackham</h3>\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\n<p><img class=\"\" src=\"assets/images/modx-logo.png\" alt=\"\" width=\"377\" height=\"377\" /></p>','1','5','0','1','1','1','1511178429','1','1528614673','0','0','0','1511178429','1','','0','0','0','0','1','1','Тест   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. &nbsp;\nКлассический текст Lorem Ipsum, используемый с XVI века\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\nАбзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\nАнглийский перевод 1914 года, H. Rackham\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"\n','ЦИЦЕРОН ТЕСТ ТЕСТО ТЕКСТ ПЕРЕВОД НАПИСАТЬ КЛАССИЧЕСКИЙ АНГЛИЙСКИЙ ИСПОЛЬЗОВАТЬ ГОД ВЕК ВЕКО АБЗАЦ YOU WITH WILL WHO WHICH VITA UNDERTAKE TRUTH SYSTEM REM NULLA NOSTRUM NIHIL NEMO MASTER-BUILDER IDEA EXPLORER EXERCITATION ESSE ERROR DOLOR TRIVIAL PAINFUL LABORIOUS TOIL PAIN ENCOUNTER ACCOUNT THAT THIS THE THERE RATIONALLY OCCASIONALLY NOT EXTREMELY EVER AGAIN TEMPUS TEACHING CONSEQUENCE TAKE SOME SIT RIGHT RESULTANT PHYSICAL HUMAN ACTUAL REJECT QUASI PURSUE PROCURE PRODUCE DISLIKE DESIRE CIRCUMSTANCE PRAISE DENOUNCE PLEASURE EXERCISE EXAMPLE ADVANTAGE ONE OCCUR OBTAIN EXPOUND EXPLAIN ENJOY NOR NISI BECAUSE AND MUST MODUS MISTAKEN MISTAKE MINIM MINIMUM DICTUM MAN LOVE KNOW ITSELF HOW HAVE HAPPINESS GREAT GIVE FROM FIND FAULT EXCEPT EOS DOLORES COMPLETE CHOOSE CAN BUT BORN BEAR AVOID ARE ANY ANYONE ANNOYING ANNOY ALL VOLUPTATE VOLUPTATEM VOLUPTA VERITATIS VENIAM VEL VELIT UNDE ULLAM ULLAMCO TOTAM TEMPOR SUSCIPIT SUNT SINT SED REPREHENDERIT RATIONE RACKHAM QUI QUISQUAM QUIA QUAM QUA QUAERAT PROIDENT PERSPICIATIS PARIATUR OMNIS OFFICIA ODIT OCCAECAT NUMQUAM NOSTRUD NON NESCIUNT NEQUE NATUS MOLLIT MOLESTIA MALORUM MAGNA MAGNAM LOREM LAUDANTIUM LABORUM LABORIS LABORIOSAM LABORE IURE ISTE IRURE IPSUM IPSA IPSAM INVENTORE INCIDUNT INCIDIDUNT ILLUM ILLO FUGIT FUGIAT FINIBUS EXERCITATIONEM EXCEPTEUR EUM EST ENIM ELIT EIUS EIUSMOD EAQUE DUI DOLORE DOLOREM DOLOREMQUE DESERUNT CUPIDATAT CORPORIS CONSEQUUNTUR CONSEQUAT CONSEQUATUR CONSECTETUR COMMODO CILLUM BONORUM BEATA AUT AUTE AUTEM ASPERNATUR ARCHITECTO APERIAM ANIM AMET ALIQUIP ALIQUID ALIQUAM ADIPISCUS ADIPISCE ACCUSANTIUM','0');

INSERT INTO `evo_site_content` VALUES ('144','document','text/html','Копия Копия Тест (Укр)','','','kopiya-kopiya-test','','1','0','0','109','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<h3>Классический текст Lorem Ipsum, используемый с XVI века</h3>\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<h3>Абзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.</h3>\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<h3>Английский перевод 1914 года, H. Rackham</h3>\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>','1','5','0','1','1','1','1511179755','1','1522742157','0','0','0','1511179932','1','','0','0','0','0','1','1','Копия Копия Тест (Укр)   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Классический текст Lorem Ipsum, используемый с XVI века\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\nАбзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\nАнглийский перевод 1914 года, H. Rackham\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"','ЦИЦЕРОН ТЕСТ ТЕСТО ТЕКСТ ПЕРЕВОД НАПИСАТЬ КОПИЯ КЛАССИЧЕСКИЙ АНГЛИЙСКИЙ ИСПОЛЬЗОВАТЬ ГОД ВЕК ВЕКО АБЗАЦ YOU WITH WILL WHO WHICH VITA UNDERTAKE TRUTH SYSTEM REM NULLA NOSTRUM NIHIL NEMO MASTER-BUILDER IDEA EXPLORER EXERCITATION ESSE ERROR DOLOR TRIVIAL PAINFUL LABORIOUS TOIL PAIN ENCOUNTER ACCOUNT THAT THIS THE THERE RATIONALLY OCCASIONALLY NOT EXTREMELY EVER AGAIN TEMPUS TEACHING CONSEQUENCE TAKE SOME SIT RIGHT RESULTANT PHYSICAL HUMAN ACTUAL REJECT QUASI PURSUE PROCURE PRODUCE DISLIKE DESIRE CIRCUMSTANCE PRAISE DENOUNCE PLEASURE EXERCISE EXAMPLE ADVANTAGE ONE OCCUR OBTAIN EXPOUND EXPLAIN ENJOY NOR NISI BECAUSE AND MUST MODUS MISTAKEN MISTAKE MINIM MINIMUM DICTUM MAN LOVE KNOW ITSELF HOW HAVE HAPPINESS GREAT GIVE FROM FIND FAULT EXCEPT EOS DOLORES COMPLETE CHOOSE CAN BUT BORN BEAR AVOID ARE ANY ANYONE ANNOYING ANNOY ALL VOLUPTATE VOLUPTATEM VOLUPTA VERITATIS VENIAM VEL VELIT UNDE ULLAM ULLAMCO TOTAM TEMPOR SUSCIPIT SUNT SINT SED REPREHENDERIT RATIONE RACKHAM QUI QUISQUAM QUIA QUAM QUA QUAERAT PROIDENT PERSPICIATIS PARIATUR OMNIS OFFICIA ODIT OCCAECAT NUMQUAM NOSTRUD NON NESCIUNT NEQUE NATUS MOLLIT MOLESTIA MALORUM MAGNA MAGNAM LOREM LAUDANTIUM LABORUM LABORIS LABORIOSAM LABORE IURE ISTE IRURE IPSUM IPSA IPSAM INVENTORE INCIDUNT INCIDIDUNT ILLUM ILLO FUGIT FUGIAT FINIBUS EXERCITATIONEM EXCEPTEUR EUM EST ENIM ELIT EIUS EIUSMOD EAQUE DUI DOLORE DOLOREM DOLOREMQUE DESERUNT CUPIDATAT CORPORIS CONSEQUUNTUR CONSEQUAT CONSEQUATUR CONSECTETUR COMMODO CILLUM BONORUM BEATA AUT AUTE AUTEM ASPERNATUR ARCHITECTO APERIAM ANIM AMET ALIQUIP ALIQUID ALIQUAM ADIPISCUS ADIPISCE ACCUSANTIUM','0');

INSERT INTO `evo_site_content` VALUES ('86','document','text/html','Копия Тест','','','kopiya-test','','1','0','0','82','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<h3>Классический текст Lorem Ipsum, используемый с XVI века</h3>\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<h3>Абзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.</h3>\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<h3>Английский перевод 1914 года, H. Rackham</h3>\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>','1','5','0','1','1','1','1511179746','1','1525344667','0','0','0','1511179922','1','','0','0','0','0','1','1','Копия Тест   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Классический текст Lorem Ipsum, используемый с XVI века\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\nАбзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\nАнглийский перевод 1914 года, H. Rackham\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"','ЦИЦЕРОН ТЕСТ ТЕСТО ТЕКСТ ПЕРЕВОД НАПИСАТЬ КОПИЯ КЛАССИЧЕСКИЙ АНГЛИЙСКИЙ ИСПОЛЬЗОВАТЬ ГОД ВЕК ВЕКО АБЗАЦ YOU WITH WILL WHO WHICH VITA UNDERTAKE TRUTH SYSTEM REM NULLA NOSTRUM NIHIL NEMO MASTER-BUILDER IDEA EXPLORER EXERCITATION ESSE ERROR DOLOR TRIVIAL PAINFUL LABORIOUS TOIL PAIN ENCOUNTER ACCOUNT THAT THIS THE THERE RATIONALLY OCCASIONALLY NOT EXTREMELY EVER AGAIN TEMPUS TEACHING CONSEQUENCE TAKE SOME SIT RIGHT RESULTANT PHYSICAL HUMAN ACTUAL REJECT QUASI PURSUE PROCURE PRODUCE DISLIKE DESIRE CIRCUMSTANCE PRAISE DENOUNCE PLEASURE EXERCISE EXAMPLE ADVANTAGE ONE OCCUR OBTAIN EXPOUND EXPLAIN ENJOY NOR NISI BECAUSE AND MUST MODUS MISTAKEN MISTAKE MINIM MINIMUM DICTUM MAN LOVE KNOW ITSELF HOW HAVE HAPPINESS GREAT GIVE FROM FIND FAULT EXCEPT EOS DOLORES COMPLETE CHOOSE CAN BUT BORN BEAR AVOID ARE ANY ANYONE ANNOYING ANNOY ALL VOLUPTATE VOLUPTATEM VOLUPTA VERITATIS VENIAM VEL VELIT UNDE ULLAM ULLAMCO TOTAM TEMPOR SUSCIPIT SUNT SINT SED REPREHENDERIT RATIONE RACKHAM QUI QUISQUAM QUIA QUAM QUA QUAERAT PROIDENT PERSPICIATIS PARIATUR OMNIS OFFICIA ODIT OCCAECAT NUMQUAM NOSTRUD NON NESCIUNT NEQUE NATUS MOLLIT MOLESTIA MALORUM MAGNA MAGNAM LOREM LAUDANTIUM LABORUM LABORIS LABORIOSAM LABORE IURE ISTE IRURE IPSUM IPSA IPSAM INVENTORE INCIDUNT INCIDIDUNT ILLUM ILLO FUGIT FUGIAT FINIBUS EXERCITATIONEM EXCEPTEUR EUM EST ENIM ELIT EIUS EIUSMOD EAQUE DUI DOLORE DOLOREM DOLOREMQUE DESERUNT CUPIDATAT CORPORIS CONSEQUUNTUR CONSEQUAT CONSEQUATUR CONSECTETUR COMMODO CILLUM BONORUM BEATA AUT AUTE AUTEM ASPERNATUR ARCHITECTO APERIAM ANIM AMET ALIQUIP ALIQUID ALIQUAM ADIPISCUS ADIPISCE ACCUSANTIUM','0');

INSERT INTO `evo_site_content` VALUES ('87','document','text/html','Копия Копия Тест','','','kopiya-kopiya-test','','1','0','0','82','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<h3>Классический текст Lorem Ipsum, используемый с XVI века</h3>\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<h3>Абзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.</h3>\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<h3>Английский перевод 1914 года, H. Rackham</h3>\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>','1','5','0','1','1','1','1511179755','1','1522742119','0','0','0','1511179932','1','','0','0','0','0','1','1','Копия Копия Тест   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Классический текст Lorem Ipsum, используемый с XVI века\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\nАбзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\nАнглийский перевод 1914 года, H. Rackham\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"','ЦИЦЕРОН ТЕСТ ТЕСТО ТЕКСТ ПЕРЕВОД НАПИСАТЬ КОПИЯ КЛАССИЧЕСКИЙ АНГЛИЙСКИЙ ИСПОЛЬЗОВАТЬ ГОД ВЕК ВЕКО АБЗАЦ YOU WITH WILL WHO WHICH VITA UNDERTAKE TRUTH SYSTEM REM NULLA NOSTRUM NIHIL NEMO MASTER-BUILDER IDEA EXPLORER EXERCITATION ESSE ERROR DOLOR TRIVIAL PAINFUL LABORIOUS TOIL PAIN ENCOUNTER ACCOUNT THAT THIS THE THERE RATIONALLY OCCASIONALLY NOT EXTREMELY EVER AGAIN TEMPUS TEACHING CONSEQUENCE TAKE SOME SIT RIGHT RESULTANT PHYSICAL HUMAN ACTUAL REJECT QUASI PURSUE PROCURE PRODUCE DISLIKE DESIRE CIRCUMSTANCE PRAISE DENOUNCE PLEASURE EXERCISE EXAMPLE ADVANTAGE ONE OCCUR OBTAIN EXPOUND EXPLAIN ENJOY NOR NISI BECAUSE AND MUST MODUS MISTAKEN MISTAKE MINIM MINIMUM DICTUM MAN LOVE KNOW ITSELF HOW HAVE HAPPINESS GREAT GIVE FROM FIND FAULT EXCEPT EOS DOLORES COMPLETE CHOOSE CAN BUT BORN BEAR AVOID ARE ANY ANYONE ANNOYING ANNOY ALL VOLUPTATE VOLUPTATEM VOLUPTA VERITATIS VENIAM VEL VELIT UNDE ULLAM ULLAMCO TOTAM TEMPOR SUSCIPIT SUNT SINT SED REPREHENDERIT RATIONE RACKHAM QUI QUISQUAM QUIA QUAM QUA QUAERAT PROIDENT PERSPICIATIS PARIATUR OMNIS OFFICIA ODIT OCCAECAT NUMQUAM NOSTRUD NON NESCIUNT NEQUE NATUS MOLLIT MOLESTIA MALORUM MAGNA MAGNAM LOREM LAUDANTIUM LABORUM LABORIS LABORIOSAM LABORE IURE ISTE IRURE IPSUM IPSA IPSAM INVENTORE INCIDUNT INCIDIDUNT ILLUM ILLO FUGIT FUGIAT FINIBUS EXERCITATIONEM EXCEPTEUR EUM EST ENIM ELIT EIUS EIUSMOD EAQUE DUI DOLORE DOLOREM DOLOREMQUE DESERUNT CUPIDATAT CORPORIS CONSEQUUNTUR CONSEQUAT CONSEQUATUR CONSECTETUR COMMODO CILLUM BONORUM BEATA AUT AUTE AUTEM ASPERNATUR ARCHITECTO APERIAM ANIM AMET ALIQUIP ALIQUID ALIQUAM ADIPISCUS ADIPISCE ACCUSANTIUM','0');

INSERT INTO `evo_site_content` VALUES ('88','document','text/html','Копия Тест','','','kopiya-test1','','1','0','0','82','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<h3>Классический текст Lorem Ipsum, используемый с XVI века</h3>\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<h3>Абзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.</h3>\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<h3>Английский перевод 1914 года, H. Rackham</h3>\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>','1','5','0','1','1','1','1511179765','1','1514378844','0','0','0','1511179939','1','','0','0','0','0','0','1','Копия Тест   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Классический текст Lorem Ipsum, используемый с XVI века\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\nАбзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\nАнглийский перевод 1914 года, H. Rackham\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"','ЦИЦЕРОН ТЕСТ ТЕСТО ТЕКСТ ПЕРЕВОД НАПИСАТЬ КОПИЯ КЛАССИЧЕСКИЙ АНГЛИЙСКИЙ ИСПОЛЬЗОВАТЬ ГОД ВЕК ВЕКО АБЗАЦ YOU WITH WILL WHO WHICH VITA UNDERTAKE TRUTH SYSTEM REM NULLA NOSTRUM NIHIL NEMO MASTER-BUILDER IDEA EXPLORER EXERCITATION ESSE ERROR DOLOR TRIVIAL PAINFUL LABORIOUS TOIL PAIN ENCOUNTER ACCOUNT THAT THIS THE THERE RATIONALLY OCCASIONALLY NOT EXTREMELY EVER AGAIN TEMPUS TEACHING CONSEQUENCE TAKE SOME SIT RIGHT RESULTANT PHYSICAL HUMAN ACTUAL REJECT QUASI PURSUE PROCURE PRODUCE DISLIKE DESIRE CIRCUMSTANCE PRAISE DENOUNCE PLEASURE EXERCISE EXAMPLE ADVANTAGE ONE OCCUR OBTAIN EXPOUND EXPLAIN ENJOY NOR NISI BECAUSE AND MUST MODUS MISTAKEN MISTAKE MINIM MINIMUM DICTUM MAN LOVE KNOW ITSELF HOW HAVE HAPPINESS GREAT GIVE FROM FIND FAULT EXCEPT EOS DOLORES COMPLETE CHOOSE CAN BUT BORN BEAR AVOID ARE ANY ANYONE ANNOYING ANNOY ALL VOLUPTATE VOLUPTATEM VOLUPTA VERITATIS VENIAM VEL VELIT UNDE ULLAM ULLAMCO TOTAM TEMPOR SUSCIPIT SUNT SINT SED REPREHENDERIT RATIONE RACKHAM QUI QUISQUAM QUIA QUAM QUA QUAERAT PROIDENT PERSPICIATIS PARIATUR OMNIS OFFICIA ODIT OCCAECAT NUMQUAM NOSTRUD NON NESCIUNT NEQUE NATUS MOLLIT MOLESTIA MALORUM MAGNA MAGNAM LOREM LAUDANTIUM LABORUM LABORIS LABORIOSAM LABORE IURE ISTE IRURE IPSUM IPSA IPSAM INVENTORE INCIDUNT INCIDIDUNT ILLUM ILLO FUGIT FUGIAT FINIBUS EXERCITATIONEM EXCEPTEUR EUM EST ENIM ELIT EIUS EIUSMOD EAQUE DUI DOLORE DOLOREM DOLOREMQUE DESERUNT CUPIDATAT CORPORIS CONSEQUUNTUR CONSEQUAT CONSEQUATUR CONSECTETUR COMMODO CILLUM BONORUM BEATA AUT AUTE AUTEM ASPERNATUR ARCHITECTO APERIAM ANIM AMET ALIQUIP ALIQUID ALIQUAM ADIPISCUS ADIPISCE ACCUSANTIUM','0');

INSERT INTO `evo_site_content` VALUES ('143','document','text/html','Копия Тест (Укр)','','','kopiya-test','','1','0','0','109','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<h3>Классический текст Lorem Ipsum, используемый с XVI века</h3>\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<h3>Абзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.</h3>\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<h3>Английский перевод 1914 года, H. Rackham</h3>\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>','1','5','0','1','1','1','1511179746','1','1522742147','0','0','0','1511179922','1','','0','0','0','0','0','1','Копия Тест (Укр)   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Классический текст Lorem Ipsum, используемый с XVI века\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\nАбзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\nАнглийский перевод 1914 года, H. Rackham\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"','ЦИЦЕРОН ТЕСТ ТЕСТО ТЕКСТ ПЕРЕВОД НАПИСАТЬ КОПИЯ КЛАССИЧЕСКИЙ АНГЛИЙСКИЙ ИСПОЛЬЗОВАТЬ ГОД ВЕК ВЕКО АБЗАЦ YOU WITH WILL WHO WHICH VITA UNDERTAKE TRUTH SYSTEM REM NULLA NOSTRUM NIHIL NEMO MASTER-BUILDER IDEA EXPLORER EXERCITATION ESSE ERROR DOLOR TRIVIAL PAINFUL LABORIOUS TOIL PAIN ENCOUNTER ACCOUNT THAT THIS THE THERE RATIONALLY OCCASIONALLY NOT EXTREMELY EVER AGAIN TEMPUS TEACHING CONSEQUENCE TAKE SOME SIT RIGHT RESULTANT PHYSICAL HUMAN ACTUAL REJECT QUASI PURSUE PROCURE PRODUCE DISLIKE DESIRE CIRCUMSTANCE PRAISE DENOUNCE PLEASURE EXERCISE EXAMPLE ADVANTAGE ONE OCCUR OBTAIN EXPOUND EXPLAIN ENJOY NOR NISI BECAUSE AND MUST MODUS MISTAKEN MISTAKE MINIM MINIMUM DICTUM MAN LOVE KNOW ITSELF HOW HAVE HAPPINESS GREAT GIVE FROM FIND FAULT EXCEPT EOS DOLORES COMPLETE CHOOSE CAN BUT BORN BEAR AVOID ARE ANY ANYONE ANNOYING ANNOY ALL VOLUPTATE VOLUPTATEM VOLUPTA VERITATIS VENIAM VEL VELIT UNDE ULLAM ULLAMCO TOTAM TEMPOR SUSCIPIT SUNT SINT SED REPREHENDERIT RATIONE RACKHAM QUI QUISQUAM QUIA QUAM QUA QUAERAT PROIDENT PERSPICIATIS PARIATUR OMNIS OFFICIA ODIT OCCAECAT NUMQUAM NOSTRUD NON NESCIUNT NEQUE NATUS MOLLIT MOLESTIA MALORUM MAGNA MAGNAM LOREM LAUDANTIUM LABORUM LABORIS LABORIOSAM LABORE IURE ISTE IRURE IPSUM IPSA IPSAM INVENTORE INCIDUNT INCIDIDUNT ILLUM ILLO FUGIT FUGIAT FINIBUS EXERCITATIONEM EXCEPTEUR EUM EST ENIM ELIT EIUS EIUSMOD EAQUE DUI DOLORE DOLOREM DOLOREMQUE DESERUNT CUPIDATAT CORPORIS CONSEQUUNTUR CONSEQUAT CONSEQUATUR CONSECTETUR COMMODO CILLUM BONORUM BEATA AUT AUTE AUTEM ASPERNATUR ARCHITECTO APERIAM ANIM AMET ALIQUIP ALIQUID ALIQUAM ADIPISCUS ADIPISCE ACCUSANTIUM','0');

INSERT INTO `evo_site_content` VALUES ('140','document','text/html','Прибоpы учета (Укр)','','','pribopy-ucheta','','1','0','0','106','0','','','1','5','8','1','1','1','1510092253','1','1510092253','0','0','0','1510092253','1','','0','0','0','0','0','1','Прибоpы учета    ','УЧЕТ','0');

INSERT INTO `evo_site_content` VALUES ('141','document','text/html','Підключення об\'єктів','','','podklyuchenie-obektov','','1','0','0','106','0','','','1','5','9','1','1','1','1510092266','1','1518199255','0','0','0','1510092266','1','','0','0','0','0','0','1','Підключення об\'єктів    ','ОБ ПІДКЛЮЧЕННИЙ','0');

INSERT INTO `evo_site_content` VALUES ('142','document','text/html','Тест (Укр)','','','test','','1','0','0','109','0','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<p>&nbsp;</p>\n<h3>Классический текст Lorem Ipsum, используемый с XVI века</h3>\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<h3>Абзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.</h3>\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<h3>Английский перевод 1914 года, H. Rackham</h3>\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>','1','5','0','1','1','1','1511178429','1','1522742136','0','0','0','1511178429','1','','0','0','0','0','1','1','Тест (Укр)   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. &nbsp;\nКлассический текст Lorem Ipsum, используемый с XVI века\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\nАбзац 1.10.32 \"de Finibus Bonorum et Malorum\", написанный Цицероном в 45 году н.э.\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\nАнглийский перевод 1914 года, H. Rackham\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"','ЦИЦЕРОН ТЕСТ ТЕСТО ТЕКСТ ПЕРЕВОД НАПИСАТЬ КЛАССИЧЕСКИЙ АНГЛИЙСКИЙ ИСПОЛЬЗОВАТЬ ГОД ВЕК ВЕКО АБЗАЦ YOU WITH WILL WHO WHICH VITA UNDERTAKE TRUTH SYSTEM REM NULLA NOSTRUM NIHIL NEMO MASTER-BUILDER IDEA EXPLORER EXERCITATION ESSE ERROR DOLOR TRIVIAL PAINFUL LABORIOUS TOIL PAIN ENCOUNTER ACCOUNT THAT THIS THE THERE RATIONALLY OCCASIONALLY NOT EXTREMELY EVER AGAIN TEMPUS TEACHING CONSEQUENCE TAKE SOME SIT RIGHT RESULTANT PHYSICAL HUMAN ACTUAL REJECT QUASI PURSUE PROCURE PRODUCE DISLIKE DESIRE CIRCUMSTANCE PRAISE DENOUNCE PLEASURE EXERCISE EXAMPLE ADVANTAGE ONE OCCUR OBTAIN EXPOUND EXPLAIN ENJOY NOR NISI BECAUSE AND MUST MODUS MISTAKEN MISTAKE MINIM MINIMUM DICTUM MAN LOVE KNOW ITSELF HOW HAVE HAPPINESS GREAT GIVE FROM FIND FAULT EXCEPT EOS DOLORES COMPLETE CHOOSE CAN BUT BORN BEAR AVOID ARE ANY ANYONE ANNOYING ANNOY ALL VOLUPTATE VOLUPTATEM VOLUPTA VERITATIS VENIAM VEL VELIT UNDE ULLAM ULLAMCO TOTAM TEMPOR SUSCIPIT SUNT SINT SED REPREHENDERIT RATIONE RACKHAM QUI QUISQUAM QUIA QUAM QUA QUAERAT PROIDENT PERSPICIATIS PARIATUR OMNIS OFFICIA ODIT OCCAECAT NUMQUAM NOSTRUD NON NESCIUNT NEQUE NATUS MOLLIT MOLESTIA MALORUM MAGNA MAGNAM LOREM LAUDANTIUM LABORUM LABORIS LABORIOSAM LABORE IURE ISTE IRURE IPSUM IPSA IPSAM INVENTORE INCIDUNT INCIDIDUNT ILLUM ILLO FUGIT FUGIAT FINIBUS EXERCITATIONEM EXCEPTEUR EUM EST ENIM ELIT EIUS EIUSMOD EAQUE DUI DOLORE DOLOREM DOLOREMQUE DESERUNT CUPIDATAT CORPORIS CONSEQUUNTUR CONSEQUAT CONSEQUATUR CONSECTETUR COMMODO CILLUM BONORUM BEATA AUT AUTE AUTEM ASPERNATUR ARCHITECTO APERIAM ANIM AMET ALIQUIP ALIQUID ALIQUAM ADIPISCUS ADIPISCE ACCUSANTIUM','0');

INSERT INTO `evo_site_content` VALUES ('110','document','text/html','Результати пошуку','','','rezultaty-poiska','','1','0','0','3','0','','','1','7','7','1','1','1','1515579781','1','1518198505','0','0','0','1515579781','1','','0','0','0','0','1','1','Результати пошуку    ','РЕЗУЛЬТАТИТЬ РЕЗУЛЬТАТЬ ПОШУК','0');

INSERT INTO `evo_site_content` VALUES ('111','document','text/html','Особистий кабінет','','','lichnyj-kabinet','','1','0','0','3','0','','','1','12','8','1','1','1','1518074011','1','1518198519','0','0','0','1518074011','1','','0','0','0','0','1','1','Особистий кабінет    ','ОСОБИСТИЯ КАБІНЕТ КАБІНУТЬ','0');

INSERT INTO `evo_site_content` VALUES ('112','document','text/html','Авторизація','','','avtorizaciya','','1','0','0','3','0','','','1','10','9','1','1','1','1518081941','1','1518426986','0','0','0','1518081941','1','','0','0','0','0','1','1','Авторизація    ','','0');

INSERT INTO `evo_site_content` VALUES ('113','document','text/html','Реєстрація','','','registraciya','','1','0','0','3','0','','','1','11','10','1','1','1','1518081959','1','1518198548','0','0','0','1518081959','1','','0','0','0','0','1','1','Реєстрація    ','','0');

INSERT INTO `evo_site_content` VALUES ('114','document','text/html','Про підприємстві','','','o-predpriyatii','','1','0','0','104','0','','','1','5','0','1','1','1','1510089938','1','1518197833','0','0','0','1510089938','1','','0','0','0','0','0','1','Про підприємстві    ','ПРО','0');

INSERT INTO `evo_site_content` VALUES ('115','document','text/html','Керівництво','','','rukovodstvo','','1','0','0','104','0','','','1','5','1','1','1','1','1510089980','1','1518197858','0','0','0','1510089980','1','','0','0','0','0','0','1','Керівництво    ','КЕРІВНИЦТВО','0');

INSERT INTO `evo_site_content` VALUES ('116','document','text/html','Нагороди та грамоти','','','nagrady-i-gramoty','','1','0','0','104','0','','','1','5','2','1','1','1','1510090057','1','1518197930','0','0','0','1510090057','1','','0','0','0','0','0','1','Нагороди та грамоти    ','ТОТ НАГОРОДИТЬ ГРАМОТИТЬ ГРАМОТЬ','0');

INSERT INTO `evo_site_content` VALUES ('117','document','text/html','Подяки','','','blagodarnosti','','1','0','0','104','0','','','1','5','3','1','1','1','1510090112','1','1518197997','0','0','0','1510090112','1','','0','0','0','0','0','1','Подяки    ','ПОДЯК','0');

INSERT INTO `evo_site_content` VALUES ('147','document','text/html','Відновлення паролю','','','vosstanovlenie-parolya','','1','0','0','3','0','','','1','13','11','1','1','1','1518430673','1','1518430873','0','0','0','1518430673','1','','0','0','0','0','1','1','Відновлення паролю    ','ПАРОЛЬ ВІДНОВЛЕННИЙ','0');

INSERT INTO `evo_site_content` VALUES ('118','document','text/html','Інновації','','','innovacii','','1','0','0','104','0','','','1','5','4','1','1','1','1510090376','1','1518198020','0','0','0','1510090376','1','','0','0','0','0','0','1','Інновації    ','','0');

INSERT INTO `evo_site_content` VALUES ('119','document','text/html','Вакансії','','','vakansii','','1','0','0','104','0','','','1','5','5','1','1','1','1510090533','1','1518198047','0','0','0','1510090533','1','','0','0','0','0','0','1','Вакансії    ','','0');

INSERT INTO `evo_site_content` VALUES ('120','document','text/html','Абонентні ділянки','','','abonentnye-uchastki','','1','0','0','105','0','','','1','5','0','1','1','1','1510090722','1','1518198100','0','0','0','1510090722','1','','0','0','0','0','0','1','Абонентні ділянки    ','ДІЛЯНКА','0');

INSERT INTO `evo_site_content` VALUES ('121','document','text/html','Юридичні особи','','','yuridicheskie-lica','','1','0','0','105','0','','','1','5','1','1','1','1','1510090742','1','1518198118','0','0','0','1510090742','1','','0','0','0','0','0','1','Юридичні особи    ','ОСОБЬ','0');

INSERT INTO `evo_site_content` VALUES ('122','document','text/html','Дислокація','','','dislokaciya','','1','0','0','105','0','','','1','5','2','1','1','1','1510090778','1','1518198139','0','0','0','1510090778','1','','0','0','0','0','0','1','Дислокація    ','','0');

INSERT INTO `evo_site_content` VALUES ('123','document','text/html','Структура підприємства','','','struktura-predpriyatiya','','1','0','0','105','0','','','1','5','3','1','1','1','1510090880','1','1518198205','0','0','0','1510090880','1','','0','0','0','0','0','1','Структура підприємства    ','СТРУКТУРА ПІДПРИЄМСТВО','0');

INSERT INTO `evo_site_content` VALUES ('124','document','text/html','Фін. звітність','','','fin.-otchetnost','','1','0','0','105','0','','','1','5','4','1','1','1','1510091124','1','1518198227','0','0','0','1510091124','1','','0','0','0','0','0','1','Фін. звітність    ','ЗВІТНІСТЬ','0');

INSERT INTO `evo_site_content` VALUES ('125','document','text/html','Про доступ до публічної інформації','','','o-dostupe-k-publichnoj-informacii','','1','0','0','105','0','','','1','5','5','1','1','1','1510091880','1','1518198252','0','0','0','1510091880','1','','0','0','0','0','0','1','Про доступ до публічної інформації    ','ПРО ДО ДОСТУП','0');

INSERT INTO `evo_site_content` VALUES ('126','document','text/html','Організаційна структура','','','organizacionnaya-struktura','','1','0','0','105','0','','','1','5','6','1','1','1','1510091922','1','1518198268','0','0','0','1510091922','1','','0','0','0','0','0','1','Організаційна структура    ','СТРУКТУРА ОРГАНІЗАЦІЙНЫЙ ОРГАНІЗАЦІЙН','0');

INSERT INTO `evo_site_content` VALUES ('127','document','text/html','Тарифи','','','tarify','','1','0','0','105','0','','','1','5','7','1','1','1','1510091940','1','1518198304','0','0','0','1510091940','1','','0','0','0','0','0','1','Тарифи    ','ТАРИФЯ','0');

INSERT INTO `evo_site_content` VALUES ('128','document','text/html','Нормативно-правові акти','','','normativno-pravovye-akty','','1','0','0','105','0','','','1','5','8','1','1','1','1510091961','1','1518198324','0','0','0','1510091961','1','','0','0','0','0','0','1','Нормативно-правові акти    ','АКТИТЬ АКТЬ','0');

INSERT INTO `evo_site_content` VALUES ('129','document','text/html','Графік особистих прийомів керівників','','','grafik-lichnyh-priemov-rukovoditelej','','1','0','0','105','0','','','1','5','9','1','1','1','1510091978','1','1518198350','0','0','0','1510091978','1','','0','0','0','0','0','1','Графік особистих прийомів керівників    ','ОСОБИСТИХ','0');

INSERT INTO `evo_site_content` VALUES ('130','document','text/html','Структура підприємства, правила внутрішнього розпорядку','','','struktura-predpriyatiya-pravila-vnutrennego-rasporyadka','','1','0','0','105','0','','','1','5','10','1','1','1','1510091996','1','1518198372','0','0','0','1510091996','1','','0','0','0','0','0','1','Структура підприємства, правила внутрішнього розпорядку    ','СТРУКТУРА ПРАВИТЬ ПРАВИЛО РОЗПОРЯДОК ПІДПРИЄМСТВО ВНУТРІШНЬИЙ ВНУТРІШНЬЫЙ','0');

INSERT INTO `evo_site_content` VALUES ('131','document','text/html','Звіти про запити публічної інформації','','','otchety-o-zaprosah-publichnoj-informacii','','1','0','0','105','0','','','1','5','11','1','1','1','1510092016','1','1518198399','0','0','0','1510092016','1','','0','0','0','0','0','1','Звіти про запити публічної інформації    ','ПРО ЗВІТИТЬ ЗВІТЬ ЗАПИТЬ','0');

INSERT INTO `evo_site_content` VALUES ('132','document','text/html','Тарифи для населення','','','tarify-dlya-naseleniya','','1','0','0','106','0','','','1','5','0','1','1','1','1510092052','1','1518198996','0','0','0','1510092052','1','','0','0','0','0','0','1','Тарифи для населення    ','ДЛЯ ДЛИТЬ ТАРИФЯ НАСЕЛЕННИЙ','0');

INSERT INTO `evo_site_content` VALUES ('133','document','text/html','Тарифы для юр.лиц (Укр)','','','tarify-dlya-yur.lic','','1','0','0','106','0','','','1','5','1','1','1','1','1510092070','1','1510092070','0','0','0','1510092070','1','','0','0','0','0','0','1','Тарифы для юр.лиц    ','ЮР ЮРА ТАРИФ ЛИЦО ДЛЯ ДЛИТЬ','0');

INSERT INTO `evo_site_content` VALUES ('134','document','text/html','Субсидії','','','subsidii','','1','0','0','106','0','','','1','5','2','1','1','1','1510092083','1','1518199038','0','0','0','1510092083','1','','0','0','0','0','0','1','Субсидії    ','','0');

INSERT INTO `evo_site_content` VALUES ('135','document','text/html','Пільги','','','lgoty','','1','0','0','106','0','','','1','5','3','1','1','1','1510092177','1','1518199099','0','0','0','1510092177','1','','0','0','0','0','0','1','Пільги    ','ПІЛЬГА','0');

INSERT INTO `evo_site_content` VALUES ('136','document','text/html','Надання послуг','','','predostavlenie-uslug','','1','0','0','106','0','','','1','5','4','1','1','1','1510092191','1','1518199143','0','0','0','1510092191','1','','0','0','0','0','0','1','Надання послуг    ','ПОСЛУГ НАДАННИЙ','0');

INSERT INTO `evo_site_content` VALUES ('137','document','text/html','Повідомити показання приладу обліку','','','soobshhit-pokazaniya-pribora-ucheta','','1','0','0','106','0','','','1','5','5','1','1','1','1510092208','1','1518199167','0','0','0','1510092208','1','','0','0','0','0','0','1','Повідомити показання приладу обліку    ','ПРИЛАДА ПОКАЗАННИЙ ПОВІДОМИТЬ ОБЛІКА','0');

INSERT INTO `evo_site_content` VALUES ('138','document','text/html','Нормативно-правові акти','','','normativno-pravovye-akty1','','1','0','0','106','0','','','1','5','6','1','1','1','1510092221','1','1518199191','0','0','0','1510092221','1','','0','0','0','0','0','1','Нормативно-правові акти    ','АКТИТЬ АКТЬ','0');

INSERT INTO `evo_site_content` VALUES ('146','document','text/html','Восстановление пароля','','','vosstanovlenie-parolya','','1','0','0','2','0','','','1','13','11','1','1','1','1518430673','1','1518430837','0','0','0','1518430673','1','','0','0','0','0','1','1','Восстановление пароля    ','ПАРОЛЬ ВОССТАНОВЛЕНИЕ','0');

INSERT INTO `evo_site_content` VALUES ('139','document','text/html','Роз\'яснення','','','razyasneniya','','1','0','0','106','0','','','1','5','7','1','1','1','1510092238','1','1518199210','0','0','0','1510092238','1','','0','0','0','0','0','1','Роз\'яснення    ','РОЗА ЯСНЕННИЙ','0');

INSERT INTO `evo_site_content` VALUES ('108','document','text/html','Контакти','','','kontakty','','1','0','0','3','0','','','1','5','5','1','1','1','1508256926','1','1518198459','0','0','0','1508256926','1','','0','0','0','0','0','1','Контакти    ','КОНТАКТИТЬ КОНТАКТЬ','0');

INSERT INTO `evo_site_content` VALUES ('109','document','text/html','Новини','','','novosti','','1','0','0','3','1','','','1','6','6','1','1','1','1511178311','1','1518198478','0','0','0','1511178311','1','','0','0','0','0','1','1','Новини    ','НОВИНЯ НОВИНИЙ НОВИНИТЬ','0');

INSERT INTO `evo_site_content` VALUES ('93','document','text/html','Результаты поиска','','','rezultaty-poiska','','1','0','0','2','0','','','1','7','7','1','1','1','1515579781','1','1515579969','0','0','0','1515579781','1','','0','0','0','0','1','1','Результаты поиска    ','РЕЗУЛЬТАТ ПОИСК','0');

INSERT INTO `evo_site_content` VALUES ('94','document','text/html','Личный кабинет','','','lichnyj-kabinet','','1','0','0','2','0','','','1','12','8','1','1','1','1518074011','1','1527676362','0','0','0','1518074011','1','','0','0','0','0','1','1','Личный кабинет    ','ЛИЧНЫЙ КАБИНЕТ','0');

INSERT INTO `evo_site_content` VALUES ('95','document','text/html','Авторизація','','','avtorizaciya','','1','0','0','2','0','','','1','10','9','1','1','1','1518081941','1','1518196440','0','0','0','1518081941','1','','0','0','0','0','1','1','Авторизація    ','','0');

INSERT INTO `evo_site_content` VALUES ('96','document','text/html','Регистрация','','','registraciya','','1','0','0','2','0','','','1','11','10','1','1','1','1518081959','1','1518082235','0','0','0','1518081959','1','','0','0','0','0','1','1','Регистрация    ','РЕГИСТРАЦИЯ','0');

INSERT INTO `evo_site_content` VALUES ('107','document','text/html','Комерційна пропозиція','','','kommercheskoe-predlozhenie','','1','0','0','3','0','','','1','5','4','1','1','1','1508256771','1','1518198441','0','0','0','1508256771','1','','0','0','0','0','0','1','Комерційна пропозиція    ','КОМЕРЦІЙНЫЙ КОМЕРЦІЙН','0');

INSERT INTO `evo_site_content` VALUES ('106','document','text/html','Споживачі','','','potrebiteli','','1','0','0','3','1','','','1','5','3','1','1','1','1508256700','1','1518198973','0','0','0','1508256700','1','','0','0','0','0','0','1','Споживачі    ','','0');

INSERT INTO `evo_site_content` VALUES ('105','document','text/html','Публічна інформація','','','publichnaya-informaciya','','1','0','0','3','1','','','1','5','2','1','1','1','1508256460','1','1518198082','0','0','0','1508256460','1','','0','0','0','0','0','1','Публічна інформація    ','ПУБЛІЧНЫЙ','0');

INSERT INTO `evo_site_content` VALUES ('104','document','text/html','Підприємство','','','predpriyatie','','1','0','0','3','1','','','1','5','1','1','1','1','1508256093','1','1518197815','0','0','0','1508256254','1','','0','0','0','0','0','1','Підприємство    ','ПІДПРИЄМСТВО','0');


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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Contains the site chunks.';

#
# Dumping data for table `evo_site_htmlsnippets`
#

INSERT INTO `evo_site_htmlsnippets` VALUES ('1','mm_rules','Default ManagerManager rules.','0','none','2','0','// more example rules are in assets/plugins/managermanager/example_mm_rules.inc.php\n// example of how PHP is allowed - check that a TV named documentTags exists before creating rule\n\nif ($modx->db->getValue($modx->db->select(\'count(id)\', $modx->getFullTableName(\'site_tmplvars\'), \"name=\'documentTags\'\"))) {\n	mm_widget_tags(\'documentTags\', \' \'); // Give blog tag editing capabilities to the \'documentTags (3)\' TV\n}\nmm_widget_showimagetvs(); // Always give a preview of Image TVs\n\nmm_createTab(\'SEO\', \'seo\', \'\', \'\', \'\', \'\');\nmm_moveFieldsToTab(\'titl,keyw,desc,seoOverride,noIndex,sitemap_changefreq,sitemap_priority,sitemap_exclude\', \'seo\', \'\', \'\');\nmm_widget_tags(\'keyw\',\',\'); // Give blog tag editing capabilities to the \'documentTags (3)\' TV\n\n\n//mm_createTab(\'Images\', \'photos\', \'\', \'\', \'\', \'850\');\n//mm_moveFieldsToTab(\'images,photos\', \'photos\', \'\', \'\');\n\n//mm_hideFields(\'longtitle,description,link_attributes,menutitle,content\', \'\', \'6,7\');\n\n//mm_hideTemplates(\'0,5,8,9,11,12\', \'2,3\');\n\n//mm_hideTabs(\'settings, access\', \'2\');\n','0','0','0','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('2','evoSearch','<strong>0.1</strong> Вывод результатов поиска','2','none','4','0','<div class=\"search_all\">\n	<div class=\"search_title\"><a href=\"[+url+]\">[+pagetitle+]</a></div>\n	<div class=\"search_extract\">[+extract+]</div>\n</div>\n','0','0','1517407437','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('3','inc_meta','','2','none','10','0','<!DOCTYPE html>\n<html>\n<head>\n	<meta charset=\"UTF-8\">\n	<title>[*title*]</title>\n	<meta name=\"keywords\" content=\"[*keyw*]\">\n	<meta name=\"description\" content=\"[*desc*]\">\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n	<base href=\"[(site_url)]\">\n	<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\n	<link rel=\"stylesheet\" href=\"template/css/normalize.css\">\n	<link rel=\"stylesheet\" href=\"template/css/flexslider.css\">\n	<link rel=\"stylesheet\" href=\"template/css/style.css\">\n</head>\n<body>\n	<div class=\"wrapper\">\n		<div class=\"main-content\">','0','1507023745','1518125506','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('4','inc_header','','2','none','10','0','<header>\n	<div class=\"header_inner\">\n		\n		<a href=\"[(site_url)]\" class=\"logo\">\n			<img src=\"template/img/logo.png\" alt=\"\">\n		</a>\n\n		<div class=\"social\">\n			<a href=\"\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a>\n			<a href=\"\" target=\"_blank\"><i class=\"fa fa-instagram\"></i></a>\n			<a href=\"\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a>\n		</div>	\n\n		<div class=\"lang\">[+switchLang+]</div>\n\n		<a href=\"\" class=\"burgermenu\"><img src=\"template/img/menu_icon-512.png\" alt=\"\"></a>\n		\n	</div>\n</header>\n<nav>\n	\n	[!DLMenu? &parents=\'[%RU%]\' &maxDepth=\'2\'  &outerClass=\'menu\' &innerClass=\'dowmenu\' &rowTpl=\'@CODE:<li><a href=\"[+url+]\">[+title+]</a></li>\'!]\n	<div class=\"search\">\n	<form action=\'[~[%search-page%]~]\' method=\"get\">\n		<input placeholder=[%Поиск%] type=\"text\" value=\"\" name=\"search\">\n		<div class=\"btn\"><i class=\"fa fa-search\"></i></div>\n	</form>\n	<a href=\"[~[%in-page%]~]\" class=\"header_cabinet\" target=\"_self\">[%Личный кабинет%]</a>\n	</div>\n</nav>','0','1507023969','1518426992','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('5','inc_footer','','2','none','10','0','		</div>\n<footer>	\n	<div class=\"main-footer\">\n		<a href=\"[(site_url)]\" class=\"logo\">\n			<img src=\"template/img/logo.png\" alt=\"\">\n		</a>\n		<div class=\"main-footer-info-address\">\n			<p>пр. Мира,70, г. Мариуполь, Донецкая область, 87500 Украина</p>\n			<p><a href=\"mailto:mar.v@dn.gov.ua\">mailto:mar.v@dn.gov.ua</a></p>\n			<p><a href=\"tel:15-55; +38 (067) 345-1555; +38 (050) 345-1555\">tel:15-55; +38 (067) 345-1555; +38 (050) 345-1555</a></p>\n		</div>\n		<div class=\"main-footer-social\">\n			<a href=\"\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a>\n			<a href=\"\" target=\"_blank\"><i class=\"fa fa-instagram\"></i></a>\n			<a href=\"\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a>\n		</div>\n	</div>\n</footer>\n	</div>\n	<script src=\"https://code.jquery.com/jquery.min.js\"></script>\n	<script src=\"template/js/jquery.flexslider.js\"></script>\n	<script>// Can also be used with $(document).ready()\n	$(window).load(function() {\n	  $(\'.flexslider\').flexslider({\n		animation: \"slide\",\n		nextText:\"\",\n		prevText:\"\"\n	  });\n	});</script>\n	<script>\n	$(\"nav .btn\").click(function(e){\n		//e.preventDefault();\n		$(\"nav input\").toggleClass(\"active\")\n	});\n	</script>\n	<script>\n	$(\".burgermenu\").click(function(e){\n		e.preventDefault();\n		if($(\".menu\").css(\"display\")==\"none\") {\n			$(\".menu\").slideDown().addClass(\"open-menu\");\n		}\n		else {\n			$(\".menu\").slideUp().removeClass(\"open-menu\");\n		}\n	});\n	</script>\n	<script>\n	$(document).ready(function(){    \n		$(\".feedback a\").click(function(e){\n			e.preventDefault();\n			$(\".feedback-card\").fadeIn();\n		});\n		$(\".close\").click(function(){\n			$(\".feedback-card\").fadeOut();\n		});\n	});\n	</script>\n</body>\n</html>','0','1507024691','1515580242','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('6','article.item','','2','none','12','0','<article>\n	<a class=\"article-title\" href=\"[+url+]\"></a>\n	<div class=\"article-text\">\n		<a class=\"article-img\" href=\"[+url+]\">\n			<div class=\"article-img-block\">\n				<img src=\"[[phpthumb? &input=`[+image+]` &options=`w=340,h=115,far=C,zc=1,bg=FFFFFF`]]\" alt=\"[+pagetitle+]\">\n			</div>\n			<p class=\"article-pagetitle\">[+pagetitle+]</p>\n		</a>\n		<p class=\"article-data\">[+date+]</p>\n		\n	</div>\n</article>','0','1511172636','1514378949','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('8','article-min.item','','2','none','12','0','<article>\n	<a class=\"article-min-title\" href=\"[+url+]\"></a>\n	<div class=\"article-min-text\">\n		<a class=\"article-min-img\" href=\"[+url+]\">\n			<p class=\"article-min-pagetitle\">[+pagetitle+]</p>\n			<p class=\"article-min-introtext\">[+introtext+]</p>\n			<p class=\"article-min-date\">[+date+]</p>\n		</a>\n	</div>\n</article>','0','1514376412','1514378921','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('9','feedbackForm','','2','none','0','0','<form action=\'[~[*id*]~]\' method=\"post\">\n	<input type=\"hidden\" name=\"formid\" value=\"feedbackForm\">\n	<div class=\"error\">[+validationmessage+]</div>\n	<span class=\"close\">&times;</span>\n	<input type=\"text\" name=\"name\" eform=\"Имя:string:1\" placeholder=\"name\">\n	<input type=\"email\" name=\"email\" placeholder=\"email\">\n	<textarea placeholder=\"message\" type=\"text\" name=\"message\" rows=\"17\"></textarea>\n	<button type=\"submit\" value=\"\" class=\"ask-buttom-sub\">[%Отправить%]</button>\n</form>','0','1515580760','1518428249','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('10','feedbackReport','','2','none','0','0','Письмо прислано бла-бла\n рвупзр впщзышр\n[+name+]\n[+email+]\n[+message+]','0','1515581462','1515581462','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('11','eFeedbackForm','<strong>1.0</strong> eFeedbackForm Шаблон формы обратной связи','0','none','9','0','<p><span style=\"color:#900;\">[+validationmessage+]</span></p>\n\n<form  class=\"eform\" method=\"post\" action=\"[~[*id*]~]\">\n\n<input type=\"hidden\" name=\"formid\" value=\"feedbackForm\" />\n<input value=\"\" name=\"special\" class=\"special\" type=\"text\" eform=\"Спец:date:0\"  style=\"display:none;\" />\n<p>\n    <input type=\"text\" name=\"name\" id=\"name\" class=\"grid_3\" value=\"\"  eform=\"Имя:string:1\"/>\n    <label for=\"name\">Ваше имя</label>\n</p>\n            \n<p>\n    <input type=\"text\" name=\"email\" id=\"email\" class=\"grid_3\" value=\"\" eform=\"E-mail:email:1\" />\n    <label for=\"email\">Ваш E-mail</label>\n</p>\n            \n<p>\n    <input type=\"text\" name=\"phone\" id=\"subject\" class=\"grid_3\" value=\"\" eform=\"Номер телефона:string:1\"/>\n    <label for=\"subject\">Номер телефона</label>\n</p>\n            \n<p>\n    <textarea name=\"comments\" id=\"message\" class=\"grid_6\" cols=\"50\" rows=\"10\" eform=\"Текст сообщения:string:1\"></textarea>\n</p>\n<p>Введите код с картинки: <br />\n    <input type=\"text\" class=\"ver\" name=\"vericode\" /><img class=\"feed\" src=\"[+verimageurl+]\" alt=\"Введите код\" />\n</p>            \n<p>\n    <input type=\"submit\" name=\"submit\" class=\"subeform grid_2\" value=\"Отправить сообщение\"/>\n </p>\n\n</form>\n\n\n \n\n','0','0','0','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('12','eFeedbackReport','<strong>1.0</strong> eFeedbackReport  шаблон отправки на почту','0','none','9','0','<p>Прислано человеком, с именем: [+name+] . Подробности ниже:</p>\n<table>\n<tr valign=\"top\"><td>Имя:</td><td>[+name+]</td></tr>\n<tr valign=\"top\"><td>E-mail:</td><td>[+email+]</td></tr>\n<tr valign=\"top\"><td>Номер телефона:</td><td>[+phone+]</td></tr>\n<tr valign=\"top\"><td>Текст сообщения:</td><td>[+comments+]</td></tr>\n</table>\n<p>Можно использовать ссылку для ответа: <a href=\"mailto:[+email+]?subject=RE:[+subject+]\">[+email+]</a></p>\n\n','0','0','0','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('13','feedback','<strong>1.0</strong> форма обратной связи','0','none','9','0','[!eForm? &formid=`feedbackForm` &subject=`Сообщение с сайта` &tpl=`eFeedbackForm` &report=`eFeedbackReport` &gotoid=`[*id*]` &vericode=`1` !] \n\n','0','0','0','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('14','onlinefeedbackForm','','2','none','0','0','<form action=\'[~[*id*]~]\' method=\"post\">\n	<input type=\"hidden\" name=\"formid\" value=\"onlinefeedbackForm\">\n	<div class=\"error\">[+validationmessage+]</div>\n	<input type=\"text\" name=\"name\" eform=\"Имя:string:1\" placeholder=\"name\">\n	<input type=\"email\" name=\"email\" placeholder=\"email\">\n	<textarea placeholder=\"message\" type=\"text\" name=\"message\" rows=\"17\"></textarea>\n	<button type=\"submit\" value=\"\" class=\"ask-buttom-sub\">[%Отправить%]</button>\n</form>','0','1518524509','1518524741','0');

INSERT INTO `evo_site_htmlsnippets` VALUES ('15','onlinefeedbackReport','','2','none','0','0','Письмо прислано бла-бла\n рвупзр впщзышр\n[+name+]\n[+email+]\n[+message+]','0','1518524564','1518524576','0');


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

INSERT INTO `evo_site_plugin_events` VALUES ('3','3','0');

INSERT INTO `evo_site_plugin_events` VALUES ('6','100','0');

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

INSERT INTO `evo_site_plugin_events` VALUES ('24','205','0');

INSERT INTO `evo_site_plugin_events` VALUES ('24','53','0');

INSERT INTO `evo_site_plugin_events` VALUES ('24','35','0');

INSERT INTO `evo_site_plugin_events` VALUES ('24','31','0');

INSERT INTO `evo_site_plugin_events` VALUES ('24','30','0');

INSERT INTO `evo_site_plugin_events` VALUES ('24','29','0');

INSERT INTO `evo_site_plugin_events` VALUES ('24','28','0');

INSERT INTO `evo_site_plugin_events` VALUES ('28','202','0');

INSERT INTO `evo_site_plugin_events` VALUES ('29','211','0');

INSERT INTO `evo_site_plugin_events` VALUES ('29','210','0');

INSERT INTO `evo_site_plugin_events` VALUES ('29','206','0');

INSERT INTO `evo_site_plugin_events` VALUES ('29','77','0');

INSERT INTO `evo_site_plugin_events` VALUES ('29','75','0');

INSERT INTO `evo_site_plugin_events` VALUES ('29','57','0');

INSERT INTO `evo_site_plugin_events` VALUES ('29','55','0');

INSERT INTO `evo_site_plugin_events` VALUES ('29','51','0');

INSERT INTO `evo_site_plugin_events` VALUES ('29','49','0');

INSERT INTO `evo_site_plugin_events` VALUES ('29','45','0');

INSERT INTO `evo_site_plugin_events` VALUES ('29','43','0');

INSERT INTO `evo_site_plugin_events` VALUES ('29','39','0');

INSERT INTO `evo_site_plugin_events` VALUES ('29','37','0');

INSERT INTO `evo_site_plugin_events` VALUES ('29','27','0');

INSERT INTO `evo_site_plugin_events` VALUES ('29','25','0');

INSERT INTO `evo_site_plugin_events` VALUES ('30','3','0');

INSERT INTO `evo_site_plugin_events` VALUES ('30','13','0');

INSERT INTO `evo_site_plugin_events` VALUES ('30','28','0');

INSERT INTO `evo_site_plugin_events` VALUES ('30','31','0');

INSERT INTO `evo_site_plugin_events` VALUES ('30','92','0');

INSERT INTO `evo_site_plugin_events` VALUES ('31','70','0');

INSERT INTO `evo_site_plugin_events` VALUES ('31','202','0');

INSERT INTO `evo_site_plugin_events` VALUES ('31','1000','0');

INSERT INTO `evo_site_plugin_events` VALUES ('32','4','0');

INSERT INTO `evo_site_plugin_events` VALUES ('32','79','0');

INSERT INTO `evo_site_plugin_events` VALUES ('32','90','0');

INSERT INTO `evo_site_plugin_events` VALUES ('32','1000','0');

INSERT INTO `evo_site_plugin_events` VALUES ('33','80','0');

INSERT INTO `evo_site_plugin_events` VALUES ('33','81','0');

INSERT INTO `evo_site_plugin_events` VALUES ('33','93','0');

INSERT INTO `evo_site_plugin_events` VALUES ('34','3','0');

INSERT INTO `evo_site_plugin_events` VALUES ('34','20','0');

INSERT INTO `evo_site_plugin_events` VALUES ('34','85','0');

INSERT INTO `evo_site_plugin_events` VALUES ('34','87','0');

INSERT INTO `evo_site_plugin_events` VALUES ('34','88','0');

INSERT INTO `evo_site_plugin_events` VALUES ('34','91','0');

INSERT INTO `evo_site_plugin_events` VALUES ('34','92','0');

INSERT INTO `evo_site_plugin_events` VALUES ('35','23','0');

INSERT INTO `evo_site_plugin_events` VALUES ('35','29','0');

INSERT INTO `evo_site_plugin_events` VALUES ('35','35','0');

INSERT INTO `evo_site_plugin_events` VALUES ('35','41','0');

INSERT INTO `evo_site_plugin_events` VALUES ('35','47','0');

INSERT INTO `evo_site_plugin_events` VALUES ('35','73','0');

INSERT INTO `evo_site_plugin_events` VALUES ('35','88','0');


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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='Contains the site plugins.';

#
# Dumping data for table `evo_site_plugins`
#

INSERT INTO `evo_site_plugins` VALUES ('3','Search Highlight','<strong>1.5</strong> Used with AjaxSearch to show search terms highlighted on page linked from search results','0','4','0','/**\n * Search Highlight\n * \n * Used with AjaxSearch to show search terms highlighted on page linked from search results\n *\n * @category 	plugin\n * @version 	1.5\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@events OnWebPagePrerender \n * @internal	@modx_category Search\n * @internal    @legacy_names Search Highlighting\n * @internal    @installset base, sample\n * @internal    @disabled 1\n */\n \n /*\n  ------------------------------------------------------------------------\n  Plugin: Search_Highlight v1.5\n  ------------------------------------------------------------------------\n  Changes:\n  18/03/10 - Remove possibility of XSS attempts being passed in the URL\n           - look-behind assertion improved\n  29/03/09 - Removed urldecode calls;\n           - Added check for magic quotes - if set, remove slashes\n           - Highlights terms searched for when target is a HTML entity\n  18/07/08 - advSearch parameter and pcre modifier added\n  10/02/08 - Strip_tags added to avoid sql injection and XSS. Use of $_REQUEST\n  01/03/07 - Added fies/updates from forum from users mikkelwe/identity\n  (better highlight replacement, additional div around term/removal message)\n  ------------------------------------------------------------------------\n  Description: When a user clicks on the link from the AjaxSearch results\n    the target page will have the terms highlighted.\n  ------------------------------------------------------------------------\n  Created By:  Susan Ottwell (sottwell@sottwell.com)\n               Kyle Jaebker (kjaebker@muddydogpaws.com)\n\n  Refactored by Coroico (www.evo.wangba.fr) and TS\n  ------------------------------------------------------------------------\n  Based off the the code by Susan Ottwell (www.sottwell.com)\n    http://forums.modx.com/thread/47775/plugin-highlight-search-terms\n  ------------------------------------------------------------------------\n  CSS:\n    The classes used for the highlighting are the same as the AjaxSearch\n  ------------------------------------------------------------------------\n  Notes:\n    To add a link to remove the highlighting and to show the searchterms\n    put the following on your page where you would like this to appear:\n\n      <!--search_terms-->\n\n    Example output for this:\n\n      Search Terms: the, template\n      Remove Highlighting\n\n    Set the following variables to change the text:\n\n      $termText - the text before the search terms\n      $removeText - the text for the remove link\n  ------------------------------------------------------------------------\n*/\nglobal $database_connection_charset;\n// Conversion code name between html page character encoding and Mysql character encoding\n// Some others conversions should be added if needed. Otherwise Page charset = Database charset\n$pageCharset = array(\n  \'utf8\' => \'UTF-8\',\n  \'latin1\' => \'ISO-8859-1\',\n  \'latin2\' => \'ISO-8859-2\'\n);\n\nif (isset($_REQUEST[\'searched\']) && isset($_REQUEST[\'highlight\'])) {\n\n  // Set these to customize the text for the highlighting key\n  // --------------------------------------------------------\n     $termText = \'<div class=\"searchTerms\">Search Terms: \';\n     $removeText = \'Remove Highlighting\';\n  // --------------------------------------------------------\n\n  $highlightText = $termText;\n  $advsearch = \'oneword\';\n\n  $dbCharset = $database_connection_charset;\n  $pgCharset = array_key_exists($dbCharset,$pageCharset) ? $pageCharset[$dbCharset] : $dbCharset;\n\n  $searched = strip_tags($_REQUEST[\'searched\']);\n  $highlight = strip_tags($_REQUEST[\'highlight\']);\n  if (isset($_REQUEST[\'advsearch\'])) $advsearch = strip_tags($_REQUEST[\'advsearch\']);\n\n\n  if ($advsearch != \'nowords\') {\n\n    $searchArray = array();\n    if ($advsearch == \'exactphrase\') $searchArray[0] = $searched;\n    else $searchArray = explode(\' \', $searched);\n\n    $searchArray = array_unique($searchArray);\n    $nbterms = count($searchArray);\n    $searchTerms = array();\n    for($i=0;$i<$nbterms;$i++){\n      // Consider all possible combinations\n      $word_ents = array();\n      $word_ents[] = $searchArray[$i];\n      $word_ents[] = htmlentities($searchArray[$i], ENT_NOQUOTES, $pgCharset);\n      $word_ents[] = htmlentities($searchArray[$i], ENT_COMPAT, $pgCharset);\n      $word_ents[] = htmlentities($searchArray[$i], ENT_QUOTES, $pgCharset);\n      // Avoid duplication\n      $word_ents = array_unique($word_ents);\n      foreach($word_ents as $word) $searchTerms[]= array(\'term\' => $word, \'class\' => $i+1);\n    }\n\n    $output = $modx->documentOutput; // get the parsed document\n    $body = explode(\"<body\", $output); // break out the head\n\n    $highlightClass = explode(\' \',$highlight); // break out the highlight classes\n    /* remove possibility of XSS attempts being passed in URL */\n    foreach ($highlightClass as $key => $value) {\n       $highlightClass[$key] = preg_match(\'/[^A-Za-z0-9_-]/ms\', $value) == 1 ? \'\' : $value;\n    }\n\n    $pcreModifier = ($pgCharset == \'UTF-8\') ? \'iu\' : \'i\';\n    $lookBehind = \'/(?<!&|&[\\w#]|&[\\w#]\\w|&[\\w#]\\w\\w|&[\\w#]\\w\\w\\w|&[\\w#]\\w\\w\\w\\w|&[\\w#]\\w\\w\\w\\w\\w)\';  // avoid a match with a html entity\n    $lookAhead = \'(?=[^>]*<)/\'; // avoid a match with a html tag\n\n    $nbterms = count($searchTerms);\n    for($i=0;$i<$nbterms;$i++){\n      $word = $searchTerms[$i][\'term\'];\n      $class = $highlightClass[0].\' \'.$highlightClass[$searchTerms[$i][\'class\']];\n\n      $highlightText .= ($i > 0) ? \', \' : \'\';\n      $highlightText .= \'<span class=\"\'.$class.\'\">\'.$word.\'</span>\';\n\n      $pattern = $lookBehind . preg_quote($word, \'/\') . $lookAhead . $pcreModifier;\n      $replacement = \'<span class=\"\' . $class . \'\">${0}</span>\';\n      $body[1] = preg_replace($pattern, $replacement, $body[1]);\n    }\n\n    $output = implode(\"<body\", $body);\n\n    $removeUrl = $modx->makeUrl($modx->documentIdentifier);\n    $highlightText .= \'<br /><a href=\"\'.$removeUrl.\'\" class=\"ajaxSearch_removeHighlight\">\'.$removeText.\'</a></div>\';\n\n    $output = str_replace(\'<!--search_terms-->\',$highlightText,$output);\n    $modx->documentOutput = $output;\n  }\n}','0','','1','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('6','TransAlias','<strong>1.0.4</strong> Human readible URL translation supporting multiple languages and overrides','0','3','0','require MODX_BASE_PATH.\'assets/plugins/transalias/plugin.transalias.php\';','0','{\"table_name\":[{\"label\":\"Trans table\",\"type\":\"list\",\"value\":\"russian\",\"options\":\"common,russian,dutch,german,czech,utf8,utf8lowercase\",\"default\":\"russian\",\"desc\":\"\"}],\"char_restrict\":[{\"label\":\"Restrict alias to\",\"type\":\"list\",\"value\":\"lowercase alphanumeric\",\"options\":\"lowercase alphanumeric,alphanumeric,legal characters\",\"default\":\"lowercase alphanumeric\",\"desc\":\"\"}],\"remove_periods\":[{\"label\":\"Remove Periods\",\"type\":\"list\",\"value\":\"No\",\"options\":\"Yes,No\",\"default\":\"No\",\"desc\":\"\"}],\"word_separator\":[{\"label\":\"Word Separator\",\"type\":\"list\",\"value\":\"dash\",\"options\":\"dash,underscore,none\",\"default\":\"dash\",\"desc\":\"\"}],\"override_tv\":[{\"label\":\"Override TV name\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('11','FileSource','<strong>0.1</strong> Save snippet and plugins to file','0','3','0','require MODX_BASE_PATH.\'assets/plugins/filesource/plugin.filesource.php\';','0','','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('12','evoSearch','<strong>0.1</strong> Плагин для индексации и поиска','0','4','0','/**\n * до первого запуска сниппета на фронтэнде сайта необходимо запустить индексацию (сохранить любой ресурс в админке)\n *\n * индексация запускается сохранением любого ресурса (вызовом события onDocFormSave)\n *\n * при первом запуске индексации или необходимости переиндексации необходимо выставить параметр \"Переиндексировать все\" = 1, начальные строки и количество строк за сеанс устанавливаются в зависимости от \n * возможностей вашего хостинга (например 0 и 10 000 соответственно - проиндексирует строки с 0 в количестве 10 000 штук в БД\n * необходимо открыть и пересохранить любой документ для создания события onDocFormSave\n *\n * для последующей работы установите \"Переиндексировать все\" = 0, \"Строк за сеанс индексировать\" = 1 \n * при этом происходит переиндксация только того документа, который сохраняется\n *\n * индексируются pagetitle,longtitle,description,introtext.content и указанные явно в плагине ТВ (по именам через запятую)\n *\n*/\n\nrequire_once MODX_BASE_PATH . \"assets/plugins/evoSearch/evoSearch.plugin.php\";\n','0','{\"offset\":[{\"label\":\"Первая строка переиндексации\",\"type\":\"text\",\"value\":\"0\",\"default\":\"0\",\"desc\":\"\"}],\"rowsperonce\":[{\"label\":\"Строк за сеанс индексировать\",\"type\":\"text\",\"value\":\"1\",\"default\":\"1\",\"desc\":\"\"}],\"reindex\":[{\"label\":\"Переиндексировать все\",\"type\":\"text\",\"value\":\"0\",\"default\":\"0\",\"desc\":\"\"}],\"excludeTmpls\":[{\"label\":\"Исключить шаблоны\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"excludeIDs\":[{\"label\":\"Исключить ID ресурсов\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"TvNames\":[{\"label\":\"Имена TV для поиска\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"unpublished\":[{\"label\":\"Индексировать неопубликованные\",\"type\":\"text\",\"value\":\"0\",\"default\":\"0\",\"desc\":\"\"}],\"deleted\":[{\"label\":\"Индексировать удаленные\",\"type\":\"text\",\"value\":\"0\",\"default\":\"0\",\"desc\":\"\"}],\"dicts\":[{\"label\":\"Использовать словари\",\"type\":\"text\",\"value\":\"rus,eng\",\"default\":\"rus,eng\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('13','Clear Comments','<strong>1.0</strong> Remove comments of documents when you empty MODx Trash Can.','0','0','0','/**\n * Clear Comments Plugin: Remove comments of documents when you empty MODx Trash Can.\n * Version: 1.0\n * Event: \"OnEmptyTrash\"\n * Requirement: Jot Snippet\n * Work on: Evolution\n *\n * Author: AHHP ~ Boplo.ir\n * Date: 21 August 2009\n*/\n\ndefined(\'IN_MANAGER_MODE\') or die();\nif($modx->Event->name == \"OnEmptyTrash\")\n{\n	$where = \'uparent IN(\' .join(\',\' , $ids). \')\';\n	$jot_content = $modx->getFullTableName(\'jot_content\');\n	$jot_fields = $modx->getFullTableName(\'jot_fields\');\n	$jot_subscriptions = $modx->getFullTableName(\'jot_subscriptions\');\n	\n	\n	// If `jot_fields` exists\n	if($modx->db->getRecordCount( $modx->db->query(\"SHOW TABLES LIKE \'$jot_fields\'\") ) == 1)\n	{\n		// `jot_fields` stores fields by comments ID so we need to get comments ID that are removing.\n		$commentsIds = array();\n		$select = $modx->db->select(\"id\", $jot_content, $where);\n		while($commentRow = $modx->db->getRow($select, \'num\'))\n			$commentsIds[] = $commentRow[0];\n		\n		if(count($commentsIds) > 0)\n			$modx->db->delete($jot_fields, \'id IN(\' .join(\",\",$commentsIds). \')\');\n		\n		unset($select, $commentsIds);\n	}\n	\n	$modx->db->delete($jot_content, $where);\n	$modx->db->delete($jot_subscriptions, $where);\n}','0','','1','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('14','JotAdminNotify','<strong>0.1</strong> На главной странице админки отображается количество неопубликованных коментариев снипета JotX','0','0','0','$output = \"\";\n$e = &$modx->Event;\nif($e->name == \'OnManagerWelcomePrerender\'){\n\n    $table = $modx->getFullTableName(\'jot_content\');\n    $sitecontent = $modx->getFullTableName(\'site_content\');\n    $rs = $modx->db->query(\"SELECT count(jc.uparent) as count, jc.uparent, sc.pagetitle FROM $table jc left join $sitecontent sc on sc.id = uparent where jc.published=0 group by jc.uparent\");\n    while($row=$modx->db->GetRow($rs)){\n        if ($row[\'count\']>0){\n            $id = $row[\'uparent\'];\n            $count = $row[\'count\'];\n            $url = $modx->makeUrl($id);\n            $output .= \"<li><a href=\'$url\' target=\'_blank\'>\".$row[\'pagetitle\'].\": $count</a></li>\";\n        }\n    }\n    \n    if (!empty($output)){\n        $output = \'<div class=\"sectionHeader\" style=\"color:red\">Имеются неопубликованные комментарии</div><div class=\"sectionBody\"><ul>\'.$output.\'</ul></div>\';\n    }\n    $e->output($output);\n}\n','0','','1','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('15','AlwaysStay','<strong>1</strong> по умолчанию ставим галочку продолжить редактирование','0','0','0','$e = & $modx->Event;\nif ($e->name == \"OnDocFormRender\" ||\n    $e->name == \"OnTempFormRender\" ||\n    $e->name == \"OnChunkFormRender\" ||\n    $e->name == \"OnSnipFormRender\" ||\n    $e->name == \"OnPluginFormRender\"\n   ) {\n      $html = \"\n           <script type=\'text/javascript\'>\n             if(!$(\'stay\').value) $(\'stay\').value=2;\n           </script>\n      \";\n      $e->output($html);\n}','0','','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('16','Diff','<strong>2.6</strong> plugin for Modx Evo','0','3','0','/*************************************/\nif(file_exists($modx->config[\'base_path\'].\'assets/plugins/\'.$folderPlugin.\'/lang/\'.$modx->config[\'manager_language\'].\'.inc.php\')){\n  include($modx->config[\'base_path\'].\'assets/plugins/\'.$folderPlugin.\'/lang/\'.$modx->config[\'manager_language\'].\'.inc.php\');\n}else{\n  include($modx->config[\'base_path\'].\'assets/plugins/\'.$folderPlugin.\'/lang/english.inc.php\');\n}\ninclude($modx->config[\'base_path\'].\'assets/plugins/\'.$folderPlugin.\'/version.class.php\');\nswitch($modx->Event->name){\n	/** Template */\n	case \'OnTempFormDelete\':{\n		$Diff=new ElementVer($modx,\'template\',$folderPlugin);\n		if($Diff->ignored($ignoredTPL)){\n			$Diff->del($modx->Event->params[\'id\']);\n		}\n		break;\n	}\n	case \'OnTempFormSave\':{\n		$Diff=new ElementVer($modx,\'template\',$folderPlugin);\n		if($Diff->ignored($ignoredTPL)){\n			$Diff->countVer=(int)$countTPL;\n			$Diff->save($modx->Event->params[\'id\'],\'post\');\n		}\n		break;\n	}\n	case \'OnTempFormRender\':{\n		$Diff=new ElementVer($modx,\'template\',$folderPlugin);\n		if($Diff->ignored($ignoredTPL)){\n			$out=$Diff->loadJs($idBlock,$which_jquery,$jqname,$js_src_type);\n			$modx->Event->output($out);\n		}\n		break;\n	}\n	\n	/** Snippet */\n	case \'OnSnipFormDelete\':{\n		$Diff=new ElementVer($modx,\'snippet\',$folderPlugin);\n		if($Diff->ignored($ignoredSnippet)){\n			$Diff->del($modx->Event->params[\'id\']);\n		}\n		break;\n	}\n	case \'OnSnipFormSave\':{\n		$Diff=new ElementVer($modx,\'snippet\',$folderPlugin);\n		if($Diff->ignored($ignoredSnippet)){\n			$Diff->countVer=(int)$countSnippet;\n			$Diff->save($modx->Event->params[\'id\'],\'post\');\n		}\n		break;\n	}\n	case \'OnSnipFormRender\':{\n		$Diff=new ElementVer($modx,\'snippet\',$folderPlugin);\n		if($Diff->ignored($ignoredSnippet)){\n			$out=$Diff->loadJs($idBlock,$which_jquery,$jqname,$js_src_type);\n			$modx->Event->output($out);\n		}\n		break;\n	}\n	\n	/** Plugin */\n	case \'OnPluginFormDelete\':{\n		$Diff=new ElementVer($modx,\'plugin\',$folderPlugin);\n		if($Diff->ignored($ignoredPlugin)){\n			$Diff->del($modx->Event->params[\'id\']);\n		}\n		break;\n	}\n	case \'OnPluginFormSave\':{\n		$Diff=new ElementVer($modx,\'plugin\',$folderPlugin);\n		if($Diff->ignored($ignoredPlugin)){\n			$Diff->countVer=(int)$countPlugin;\n			$Diff->save($modx->Event->params[\'id\'],\'post\');\n		}\n		break;\n	}\n	case \'OnPluginFormRender\':{\n		$Diff=new ElementVer($modx,\'plugin\',$folderPlugin);\n		if($Diff->ignored($ignoredPlugin)){\n			$out=$Diff->loadJs($idBlock,$which_jquery,$jqname,$js_src_type);\n			$modx->Event->output($out);\n		}\n		break;\n	}\n	\n	/** Module */\n	case \'OnModFormDelete\':{\n		$Diff=new ElementVer($modx,\'module\',$folderPlugin);\n		if($Diff->ignored($ignoredModule)){\n			$Diff->del($modx->Event->params[\'id\']);\n		}\n		break;\n	}\n	case \'OnModFormSave\':{\n		$Diff=new ElementVer($modx,\'module\',$folderPlugin);\n		if($Diff->ignored($ignoredModule)){\n			$Diff->countVer=(int)$countModule;\n			$Diff->save($modx->Event->params[\'id\'],\'post\');\n		}\n		break;\n	}\n	case \'OnModFormRender\':{\n		$Diff=new ElementVer($modx,\'module\',$folderPlugin);\n		if($Diff->ignored($ignoredModule)){\n			$out=$Diff->loadJs($idBlock,$which_jquery,$jqname,$js_src_type);\n			$modx->Event->output($out);\n		}\n		break;\n	}\n	\n	/** Chunk */\n	case \'OnChunkFormDelete\':{\n		$Diff=new ElementVer($modx,\'chunk\',$folderPlugin);\n		if($Diff->ignored($ignoredChunk)){\n			$Diff->del($modx->Event->params[\'id\']);\n		}\n		break;\n	}\n	case \'OnChunkFormSave\':{\n		$Diff=new ElementVer($modx,\'chunk\',$folderPlugin);\n		if($Diff->ignored($ignoredChunk)){\n			$Diff->countVer=(int)$countChunk;\n			$Diff->save($modx->Event->params[\'id\'],\'post\');\n		}\n		break;\n	}\n	case \'OnChunkFormRender\':{\n		$Diff=new ElementVer($modx,\'chunk\',$folderPlugin);\n		if($Diff->ignored($ignoredChunk)){\n			$out=$Diff->loadJs($idBlock,$which_jquery,$jqname,$js_src_type);\n			$modx->Event->output($out);\n		}\n		break;\n	}\n	/** Document */\n	case \'OnDocFormDelete\':{\n		$Diff=new ElementVer($modx,\'document\',$folderPlugin);\n		if($Diff->ignored($ignoredDoc)){\n			$Diff->del($modx->Event->params[\'id\']);\n		}\n		break;\n	}\n	case \'OnDocFormSave\':{\n		$Diff=new ElementVer($modx,\'document\',$folderPlugin);\n		if($Diff->ignored($ignoredDoc)){\n			$Diff->countVer=(int)$countDoc;\n			$Diff->save($modx->Event->params[\'id\'],\'ta\');\n		}\n		break;\n	}\n	case \'OnDocFormRender\':{\n		$Diff=new ElementVer($modx,\'document\',$folderPlugin);\n		if($Diff->ignored($ignoredDoc)){\n			// Check for ManagerManager\n			$res = $modx->db->select(\'*\', $modx->getFullTableName(\'site_plugins\'), \'name=\"ManagerManager\" AND disabled=0 \');\n			$mmActive = $modx->db->getRow($res);\n			if (!$mmActive) {\n				$out=$Diff->loadJs($idBlock,$which_jquery,$jqname,$js_src_type);\n			} else {\n				$out=$Diff->loadJs($idBlock,\'not_include\',$jqname,$js_src_type);\n			}\n			$modx->Event->output($out);\n		}\n		break;\n	}\n}\n//?>','0','{\"idBlock\":[{\"label\":\"ID блока\",\"type\":\"text\",\"value\":\"Version\",\"default\":\"Version\",\"desc\":\"\"}],\"folderPlugin\":[{\"label\":\"Папка плагина\",\"type\":\"text\",\"value\":\"diff\",\"default\":\"diff\",\"desc\":\"\"}],\"which_jquery\":[{\"label\":\"Подключить jQuery\",\"type\":\"list\",\"value\":\"\\/assets\\/js\\/\",\"options\":\"Не подключать,\\/assets\\/js\\/,google code,custom url\",\"default\":\"\\/assets\\/js\\/\",\"desc\":\"\"}],\"js_src_type\":[{\"label\":\"Свой url к библиотеке jQuery\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"jqname\":[{\"label\":\"Имя Jquery переменной в noConflict\",\"type\":\"text\",\"value\":\"j\",\"default\":\"j\",\"desc\":\"\"}],\"ignoredChunk\":[{\"label\":\"ID игнорируемых чанков\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ignoredSnippet\":[{\"label\":\"ID игнорируемых сниппетов\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ignoredPlugin\":[{\"label\":\"ID игнорируемых плагинов\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ignoredDoc\":[{\"label\":\"ID игнорируемых документов\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ignoredModule\":[{\"label\":\"ID игнорируемых модулей\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ignoredTPL\":[{\"label\":\"ID игнорируемых шаблонов\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"countTPL\":[{\"label\":\"Кол-во версий одного шаблона\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"countChunk\":[{\"label\":\"Кол-во версий одного чанка\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"countPlugin\":[{\"label\":\"Кол-во версий одного плагина\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"countModule\":[{\"label\":\"Кол-во версий одного модуля\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"countSnippet\":[{\"label\":\"Кол-во версий одного сниппета\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"countDoc\":[{\"label\":\"Кол-во версий одного документа\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('17','sgThumb','<strong>1.2.2</strong> Plugin to create thumbnails for SimpleGallery images','0','0','0','require MODX_BASE_PATH.\'assets/plugins/simplegallery/plugin.sgthumb.php\';\n','0','{\"tconfig\":[{\"label\":\"Thumbnails Configuration\",\"type\":\"textarea\",\"value\":\"See plugin code for details\",\"default\":\"See plugin code for details\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('18','SimpleGallery','<strong>1.2.2</strong> Plugin to create image galleries','0','0','0','require MODX_BASE_PATH.\'assets/plugins/simplegallery/plugin.simplegallery.php\';','0','{\n  \"tabName\": [\n    {\n      \"label\": \"Tab name\",\n      \"type\": \"text\",\n      \"value\": \"Картинки слайдера\",\n      \"default\": \"SimpleGallery\",\n      \"desc\": \"\"\n    }\n  ],\n  \"controller\": [\n    {\n      \"label\": \"Controller class\",\n      \"type\": \"text\",\n      \"value\": \"\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"templates\": [\n    {\n      \"label\": \"Templates\",\n      \"type\": \"text\",\n      \"value\": \"3\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"documents\": [\n    {\n      \"label\": \"Documents\",\n      \"type\": \"text\",\n      \"value\": \"\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"ignoreDoc\": [\n    {\n      \"label\": \"Ignore Documents\",\n      \"type\": \"text\",\n      \"value\": \"\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"role\": [\n    {\n      \"label\": \"Roles\",\n      \"type\": \"text\",\n      \"value\": \"\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"folder\": [\n    {\n      \"label\": \"Galleries folder\",\n      \"type\": \"text\",\n      \"value\": \"assets/galleries/\",\n      \"default\": \"assets/galleries/\",\n      \"desc\": \"\"\n    }\n  ],\n  \"thumbsCache\": [\n    {\n      \"label\": \"Thumbs cache folder\",\n      \"type\": \"text\",\n      \"value\": \"assets/.sgThumbs/\",\n      \"default\": \"assets/.sgThumbs/\",\n      \"desc\": \"\"\n    }\n  ],\n  \"w\": [\n    {\n      \"label\": \"Thumbs width\",\n      \"type\": \"text\",\n      \"value\": \"140\",\n      \"default\": \"140\",\n      \"desc\": \"\"\n    }\n  ],\n  \"h\": [\n    {\n      \"label\": \"Thumbs height\",\n      \"type\": \"text\",\n      \"value\": \"105\",\n      \"default\": \"105\",\n      \"desc\": \"\"\n    }\n  ],\n  \"customThumbOptions\": [\n    {\n      \"label\": \"Custom thumb options\",\n      \"type\": \"text\",\n      \"value\": \"\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"clientResize\": [\n    {\n      \"label\": \"Client Resize\",\n      \"type\": \"list\",\n      \"value\": \"No\",\n      \"options\": \"No,Yes\",\n      \"default\": \"No\",\n      \"desc\": \"\"\n    }\n  ],\n  \"jpegQuality\": [\n    {\n      \"label\": \"Jpeg quality\",\n      \"type\": \"text\",\n      \"value\": \"0.93\",\n      \"default\": \"0.93\",\n      \"desc\": \"\"\n    }\n  ],\n  \"skipPHPThumb\": [\n    {\n      \"label\": \"Skip PHPThumb\",\n      \"type\": \"list\",\n      \"value\": \"No\",\n      \"options\": \"No,Yes\",\n      \"default\": \"No\",\n      \"desc\": \"\"\n    }\n  ]\n}','0',' ','0','1507652486');

INSERT INTO `evo_site_plugins` VALUES ('20','evoBabel','<strong>0.21</strong> plugin for work evoBabel','0','3','0','if (!defined(\'MODX_BASE_PATH\')) {\n    die (\'What are you doing? Get out of here!\');\n}\n\n$e = & $modx->event;\n\n$content_table = $modx->getFullTableName(\'site_content\');\n$tvs_table = $modx->getFullTableName(\'site_tmplvar_contentvalues\');\n\nif (isset($params[\'rel_tv_id\']) && isset($params[\'lang_template_id\'])) {\n    include_once MODX_BASE_PATH . \'assets/snippets/evoBabel/evoBabel.class.php\';\n    $eB=new evoBabel($modx, 0, $params);\n\n    switch ($e->name) {\n        case \'OnPageNotFound\'://переадресация на нужную страницу 404, указать ее в модуле лексикона\n            //$docid = 0;\n            $docid = !empty($modx->config[\'error_page\']) ?  $modx->config[\'error_page\'] : $modx->config[\'site_start\'];\n            if (!isset($_SESSION[\'perevod\'])) {\n                //$docid = $modx->config[\'site_start\'];\n                $modx->sendRedirect($modx->makeUrl($docid), 0, \'REDIRECT_HEADER\', \'HTTP/1.0 404 Not Found\');exit();\n            }\n            $id = $_SESSION[\'perevod\'][\'Страница не найдена\'];\n            $docid = (int)$id;\n            if ($docid == 0) {\n                $id = $_SESSION[\'perevod\'][\'Главная страница\'];\n                $docid = (int)$id;\n                if ($docid == 0) {\n                    $id = $_SESSION[\'perevod\'][\'Корневая папка\'];\n                    $docid = (int)$id;\n                }\n            }\n            if ($docid != 0) {\n                $modx->sendRedirect($modx->makeUrl($docid), 0, \'REDIRECT_HEADER\', \'HTTP/1.0 404 Not Found\');exit();\n            }  else {\n                $docid = !empty($modx->config[\'error_page\']) ?  $modx->config[\'error_page\'] : $modx->config[\'site_start\'];\n            }\n            break ;\n        case \'OnDocFormSave\'://синхронизация выбранных TV на выбранном шаблоне\n            if ($e->params[\'mode\'] == \'upd\' && (isset($synch_template) && $synch_template != \'\') && (isset($synch_TV) && $synch_TV != \'\')) {\n                $eB->synchTVs($synch_TV, $synch_template, $e->params[\'id\']);\n            }\n            break;\n        case \'OnBeforeEmptyTrash\': //собираем связи окончательно удаляемых ресурсов, чтобы потом скорректировать их связанные версии\n            if (isset($ids) && is_array($ids)) {\n                $del_ids = implode(\',\', $ids);\n                $del_array = $eB->makeDelRelsArray($del_ids);\n                $_SESSION[\'del_array\'] = $del_array;\n            }\n            break;\n        case \'OnEmptyTrash\': //корректируем связи языковых версий с учетом окончательного удаления ресурсов\n            $del_array = $_SESSION[\'del_array\'];\n            if (!empty($del_array)) {\n                $eB->updateDeletedRelations($del_array);\n            }\n            break;\n        case \'OnWebPageInit\':\n            // в нужном месте прописываем [+activeLang+] (вывод текущего языка) и [+switchLang+] - вывод переключалки (списка) языков\n            // параметры вызова\n            // &activeLang - шаблон вывода текущего языка (отдельно)\n            // &activeRow - шаблон вывода текущего языка в списке языков\n            // &unactiveRow - шаблон вывода языков в списке (кроме текущего)\n            // &langOuter - шаблон обертки для списка языков\n\n            //шаблоны вывода по умолчанию\n            $tmp = isset($config) ? $config : \'\';\n            if(!empty($config) && file_exists(MODX_BASE_PATH . $config)){\n                include_once (MODX_BASE_PATH . $tmp);\n            }\n            //активный язык отдельно\n            $activeLang = isset($activeLang) ? $activeLang : \'<div id=\"curr_lang\"><img src=\"assets/snippets/evoBabel/config/images/flag_[+alias+].png\"> <a href=\"javascript:;\">[+name+]</a></div>\'; \n            //активный язык в списке\n            $activeRow = isset($activeRow) ? $activeRow : \'<div class=\"active\"><img src=\"assets/snippets/evoBabel/config/images/flag_[+alias+].png\"> &nbsp;<a href=\"[+url+]\">[+name+]</a></div>\';\n            //неактивный язык списка\n            $unactiveRow = isset($unactiveRow) ? $unactiveRow : \'<div><img src=\"assets/snippets/evoBabel/config/images/langs/flag_[+alias+].png\"> &nbsp;<a href=\"[+url+]\">[+name+]</a></div>\';\n            //обертка списка языков\n            $langOuter = isset($langOuter) ? $langOuter : \'<div class=\"other_langs\">[+wrapper+]</div>\';\n\n        //фикс для OnWebPageInit на несуществующей странице с несуществующим documentIdentifier\n        if ($modx->documentIdentifier && $modx->documentIdentifier != 0 && $modx->documentIdentifier != \'0\' && !empty($modx->documentIdentifier) ) {\n\n            $out = \'\';\n            $langs = array();\n            $others = array();//массив других языков (кроме текущего)\n            $eB->id = $modx->documentIdentifier;\n            $siteLangs = $eB->getSiteLangs($eB->lang_template_id);\n            $siteAllLangs = $eB->getAllSiteLangs($eB->lang_template_id);\n            //если находимся в корневой папке языка, отправляем на главную страницу этого языка (при условии, что она задана и отличается от текущей)\n            if (isset($siteLangs[$eB->id]) && $siteLangs[$eB->id][\'home\'] != \'\' && (int)$siteLangs[$eB->id][\'home\'] != 0 && $siteLangs[$eB->id][\'home\'] != $eB->id) {\n                $modx->sendRedirect($modx->makeUrl((int)$siteLangs[$eB->id][\'home\']));\n            }\n            $curr_lang_id = $eB->getCurLangId($eB->id);\n            $relations = $eB->getRelations($eB->id);\n            $relArray = $eB->getRelationsArray($relations);\n\n            //устанавливаем текущий язык\n            $currLang = str_replace(array(\'[+alias+]\', \'[+name+]\', \'[+lang+]\'), array($siteLangs[$curr_lang_id][\'alias\'], $siteLangs[$curr_lang_id][\'name\'], $siteLangs[$curr_lang_id][\'lang\']), $activeLang);\n\n            //устанавливаем список языков с учетом активного\n            $langRows = \'\';\n\n            foreach ($siteLangs as $k=>$v) {\n                $tpl = ($k != $curr_lang_id ? $unactiveRow : $activeRow);\n                if (isset($relArray[$v[\'alias\']]) && $eB->checkActivePage($relArray[$v[\'alias\']])) {//если есть связь и эта страница активна\n                    $url = $relArray[$v[\'alias\']];\n                } else {//нет связи либо страница не активна -> проверяем родителя\n                    $parent_id = $modx->db->getValue($modx->db->query(\"SELECT parent FROM {$eB->content_table} WHERE id={$eB->id} AND published=1 AND deleted=0 AND parent!=0 AND template!=$eB->lang_template_id\"));\n                    if (!$parent_id) {//если нет родителя, отправляем на главную страницу языка\n                        $url = ((int)$v[\'home\'] != 0 ? (int)$v[\'home\'] : $k);\n                    } else {//если родитель есть, проверяем его связи\n                        $parent_relations = $eB->getRelations($parent_id);\n                        $relParentArray = $eB->getRelationsArray($parent_relations);\n                        if (isset($relParentArray[$v[\'alias\']]) && $eB->checkActivePage($relParentArray[$v[\'alias\']])) {//у родителя активная связь\n                            $url = $relParentArray[$v[\'alias\']];\n                        } else {//иначе -> на главную страницу языка\n                            $url = ((int)$v[\'home\'] != 0 ? (int)$v[\'home\'] : $k);\n                        }\n                    }\n                }\n                $langRows .= str_replace(array(\'[+alias+]\', \'[+url+]\', \'[+name+]\', \'[+lang+]\'), array($v[\'alias\'], $modx->makeUrl($url), $v[\'name\'], $v[\'lang\']), $tpl);\n            }\n            $langsList .= str_replace(array(\'[+wrapper+]\'), array($langRows), $langOuter);\n\n            // устанавливаем плейсхолдеры [+activeLang+] и [+switchLang+] для вывода активного языка и списка языков соответственно\n            $modx->setPlaceholder(\"activeLang\", $currLang);\n            $modx->setPlaceholder(\"switchLang\", $langsList);\n\n            //получаем массив перевода для чанков в сессию\n            $perevod = array();\n            $cur_lexicon = $siteAllLangs[$curr_lang_id][\'alias\'];\n            if($cur_lexicon == \'\'){\n				$doc = $modx->getDocument($modx->documentIdentifier);\n				$cur_lexicon = $doc[\'alias\'];	\n			} \n            $q = $modx->db->query(\"SELECT * FROM \" . $modx->getFullTableName(\'lexicon\'));\n            while ($row = $modx->db->getRow($q)) {\n                $perevod[$row[\'name\']] = $row[$cur_lexicon];\n            }\n            $_SESSION[\'evoBabel_curLang\'] = $cur_lexicon;\n            $_SESSION[\'perevod\'] = $perevod;\n        }\n            break;\n        case \'OnDocDuplicate\' :\n            if ($e->params[\'new_id\']) {\n                $q = $modx->db->query(\"DELETE FROM \" . $eB->tvs_table . \" WHERE contentid={$e->params[\'new_id\']} AND tmplvarid={$eB->rel_tv_id}\");\n            }\n            break;\n        default:\n            return ;\n    }\n}\n','0','{\n  \"synch_TV\": [\n    {\n      \"label\": \"ids TV для синхронизации\",\n      \"type\": \"text\",\n      \"value\": \"3\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"synch_template\": [\n    {\n      \"label\": \"ids шаблонов для синхронизации\",\n      \"type\": \"text\",\n      \"value\": \"2\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"config\": [\n    {\n      \"label\": \"Файл шаблонов\",\n      \"type\": \"text\",\n      \"value\": \"assets/snippets/evoBabel/config/config.php\",\n      \"default\": \"assets/snippets/evoBabel/config/config.php\",\n      \"desc\": \"\"\n    }\n  ]\n}','0','evobabels','0','1518196694');

INSERT INTO `evo_site_plugins` VALUES ('21','evoBabelPlaceholder','<strong>0.21</strong> plugin for work evoBabel (use placeholder [%key%] for language versions)','0','3','0','$e =& $modx->event;\nswitch ($e->name) {\n    case \'OnParseDocument\':\n    case \'OnBeforeParseParams\':\n    //	обрабатываем языковые плейсхолдеры вида [%ключ%]\n        $source = $modx->documentOutput;\n        $source = $this->mergeSettingsContent($source);\n        $source = $this->mergeDocumentContent($source);\n        $source = $this->mergeSettingsContent($source);\n        $source = $this->mergeChunkContent($source);\n\n        //$pattern=\'~\\[\\%(.*?)\\%\\]~s\';\n        $pattern=\"/\\[%([^%\\]]*)?%\\]/\";\n\n        preg_match_all($pattern, $source, $matches, PREG_PATTERN_ORDER);\n        if (is_array($matches[0])) {\n            foreach ($matches[0] as $v) {\n                $k = str_replace(\'%]\', \'\', str_replace(\'[%\', \'\', $v));\n                if (isset($_SESSION[\'perevod\'][$k])) {\n                    $source = str_replace($v, $_SESSION[\'perevod\'][$k], $source);\n                }\n            }\n        }\n        $modx->documentOutput = $source;\n        break;\n    default:\n        return ;\n}\n','0','{}','0',' ','0','1507651308');

INSERT INTO `evo_site_plugins` VALUES ('22','TvTable','<strong>1.11</strong> Добавление к странице таблицы данных','0','0','0','//defined(\'IN_MANAGER_MODE\') or die();\n\nglobal $content,$default_template,$tmplvars;\n$tvIds = isset($tvIds) ? $tvIds : 102;\n$templ = isset($templ) ? explode(\',\',$templ) : false;\n$role = isset($role) ? explode(\',\',$role) : false;\n$cur_templ = isset($_POST[\'template\']) ? $_POST[\'template\'] : (isset($content[\'template\']) ? $content[\'template\'] : $default_template);\n$cur_role = $_SESSION[\'mgrRole\'];\nif (($templ && !in_array($cur_templ,$templ)) || ($role && !in_array($cur_role,$role))) return;\n\n$loadfile = isset($loadfile)&&($loadfile==\'true\') ? \"this.box.adopt(new Element(\'input\',{\'type\':\'file\',\'name\':\'file_\'+fid,\'styles\':{\'margin-top\':\'5px\'}}));\" : \"\";\n\n$e = &$modx->Event;\nif ($e->name == \'OnDocFormRender\') {\n$output = <<< OUT\n<!-- TvTable -->\n<script type=\"text/javascript\">\nwindow.ie9=window.XDomainRequest && window.performance; window.ie=window.ie && !window.ie9; /* IE9 patch */\nvar TvTable = new Class({\n	initialize: function(fid){\n		this.fid = $(fid);\n		var tvtArr = (this.fid.value) ? Json.evaluate(this.fid.value) : [null,null];\n		this.fid.setStyle(\'display\',\'none\');\n		this.box = new Element(\'div\',{\'class\':\'tvtEditor\'});\n		this.fid.getParent().adopt(this.box);\n		this.addHeader(tvtArr[0]);\n		for (var row=1;row<tvtArr.length;row++) this.addItem(tvtArr[row]);\n		{$loadfile}\n	},\n	build: function(val){\n		return new Element(\'input\',{\'type\':\'text\',\'styles\':{\'width\':\'100px\'},\'value\':val,\'events\':{\'keyup\':function(){this.setEditor();documentDirty=true;}.bind(this)}});\n	},\n	addHeader: function(values,elem){\n		var rowDiv = new Element(\'div\',{\'class\':\'tvtrow\',\'styles\':{\'background\':\'#f0f0ee\',\'padding\':\'5px 0\',\'white-space\':\'nowrap\'}});\n		this.box.adopt(rowDiv);\n		if (!values) values=[\'\',\'\'];\n		this.cols=values.length;\n		for (var i=0;i<this.cols;i++) rowDiv.adopt(this.build(values[i]));\n		rowDiv.adopt(new Element(\'input\',{\'type\':\'button\',\'value\':\'>>\',\'events\':{\n			\'click\':function(){\n				this.cols++;\n				this.box.getElements(\'div.tvtrow\').each(function(item){this.build(\'\').injectAfter(item.getElements(\'input[type=text]\').getLast());}.bind(this));\n				this.setEditor();\n			}.bind(this)\n		}}));\n		rowDiv.adopt(new Element(\'input\',{\'type\':\'button\',\'value\':\'<<\',\'events\':{\n			\'click\':function(){\n				if (rowDiv.getElements(\'input[type=text]\').length>2){\n					this.cols--;\n					this.box.getElements(\'div.tvtrow\').each(function(item){item.getElements(\'input[type=text]\').getLast().remove();});\n					this.setEditor();\n				}\n			}.bind(this)\n		}}));\n	},\n	addItem: function(values,elem){\n		var rowDiv = new Element(\'div\',{\'class\':\'tvtrow\',\'styles\':{\'white-space\':\'nowrap\'}});\n		if (elem) {rowDiv.injectAfter(elem);} else {this.box.adopt(rowDiv);}\n		for (var i=0;i<this.cols;i++) rowDiv.adopt(this.build((values) ? values[i] : \'\'));\n		rowDiv.adopt(new Element(\'input\',{\'type\':\'button\',\'value\':\'+\',\'events\': {\n			\'click\':function(){this.addItem(null,rowDiv);}.bind(this)\n		}}));\n		if (this.box.getElements(\'div.tvtrow\').length>2) rowDiv.adopt(new Element(\'input\',{\'type\':\'button\',\'value\':\'-\',\'events\':{\n			\'click\':function(){rowDiv.remove();this.setEditor();}.bind(this)\n		}}));\n	},\n	setEditor: function(){\n		var tvtArr=new Array();\n		this.box.getElements(\'div.tvtrow\').each(function(item){\n			var itemsArr=new Array();\n			var inputs=item.getElements(\'input[type=text]\');\n			inputs.each(function(item){itemsArr.push(item.value);});\n			tvtArr.push(itemsArr);\n		});\n		this.fid.value = Json.toString(tvtArr);\n	}\n});\nwindow.addEvent(\'domready\', function(){\n	var tvIds = [$tvIds];\n	for (var i=0;i<tvIds.length;i++){\n		var fid = \'tv\'+ tvIds[i];\n		if($(fid)!=null) {var modxTvTable=new TvTable(fid);}\n	}\n});\n</script>\n<!-- /TvTable -->\nOUT;\n$e->output($output);\n}\nif ($e->name == \'OnBeforeDocFormSave\'){\n$tvIds=explode(\',\',$tvIds);\nforeach ($tvIds as $tvid) {\n	$fname=\'file_tv\'.$tvid;\n	if (isset($_FILES[$fname]) && is_uploaded_file($_FILES[$fname][\'tmp_name\']) && is_readable($_FILES[$fname][\'tmp_name\'])) {\n		$file=fopen($_FILES[$fname][\'tmp_name\'],\'r\');\n		while (($data = fgetcsv($file, 1000, \',\')) !== FALSE) {$dataArr[]=$data;}\n		fclose($file);\n		$tmplvars[$tvid][1]=str_replace(\'\\\\/\', \'/\', json_encode($dataArr));\n	}\n}\n}\n//?>','0','{\n  \"tvIds\": [\n    {\n      \"label\": \"TV Ids\",\n      \"type\": \"text\",\n      \"value\": \"5,8,9,10,11,12,13,14\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"templ\": [\n    {\n      \"label\": \"Template\",\n      \"type\": \"text\",\n      \"value\": \"5,12\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"role\": [\n    {\n      \"label\": \"Role\",\n      \"type\": \"text\",\n      \"value\": \"1\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"loadfile\": [\n    {\n      \"label\": \"Load csv file\",\n      \"type\": \"list\",\n      \"value\": \"true\",\n      \"options\": \"true,false\",\n      \"default\": \"false\",\n      \"desc\": \"\"\n    }\n  ]\n}','0',' ','0','1527678677');

INSERT INTO `evo_site_plugins` VALUES ('24','ManagerManager','<strong>0.6.3</strong> Customize the EVO Manager to offer bespoke admin functions for end users or manipulate the display of document fields in the manager.','0','3','0','\n/**\n * ManagerManager\n *\n * Customize the EVO Manager to offer bespoke admin functions for end users or manipulate the display of document fields in the manager.\n *\n * @category plugin\n * @version 0.6.3\n * @license http://creativecommons.org/licenses/GPL/2.0/ GNU Public License (GPL v2)\n * @internal @properties &remove_deprecated_tv_types_pref=Remove deprecated TV types;list;yes,no;yes &config_chunk=Configuration Chunk;text;mm_rules\n * @internal @events OnDocFormRender,OnDocFormPrerender,OnBeforeDocFormSave,OnDocFormSave,OnDocDuplicate,OnPluginFormRender,OnTVFormRender\n * @internal @modx_category Manager and Admin\n * @internal @installset base\n * @internal @legacy_names Image TV Preview, Show Image TVs\n * @reportissues https://github.com/DivanDesign/MODXEvo.plugin.ManagerManager/\n * @documentation README [+site_url+]assets/plugins/managermanager/readme.html\n * @documentation Official docs http://code.divandesign.biz/modx/managermanager\n * @link        Latest version http://code.divandesign.biz/modx/managermanager\n * @link        Additional tools http://code.divandesign.biz/modx\n * @link        Full changelog http://code.divandesign.biz/modx/managermanager/changelog\n * @author      Inspired by: HideEditor plugin by Timon Reinhard and Gildas; HideManagerFields by Brett @ The Man Can!\n * @author      DivanDesign studio http://www.DivanDesign.biz\n * @author      Nick Crossland http://www.rckt.co.uk\n * @author      Many others\n * @lastupdate  22/01/2018\n */\n\n// Run the main code\ninclude($modx->config[\'base_path\'].\'assets/plugins/managermanager/mm.inc.php\');\n','0','{\"remove_deprecated_tv_types_pref\":[{\"label\":\"Remove deprecated TV types\",\"type\":\"list\",\"value\":\"yes\",\"options\":\"yes,no\",\"default\":\"yes\",\"desc\":\"\"}],\"config_chunk\":[{\"label\":\"Configuration Chunk\",\"type\":\"text\",\"value\":\"mm_rules\",\"default\":\"mm_rules\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('28','OutdatedExtrasCheck','<strong>1.4.0</strong> Check for Outdated critical extras not compatible with EVO 1.4.0','0','3','0','/**\n * OutdatedExtrasCheck\n *\n * Check for Outdated critical extras not compatible with EVO 1.4.0\n *\n * @category	plugin\n * @version     1.4.0 \n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @package     evo\n * @author      Author: Nicola Lambathakis\n * @internal    @events OnManagerWelcomeHome\n * @internal    @properties &wdgVisibility=Show widget for:;menu;All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly;All &ThisRole=Run only for this role:;string;;;(role id) &ThisUser=Run only for this user:;string;;;(username) &DittoVersion=Min Ditto version:;string;2.1.3 &EformVersion=Min eForm version:;string;1.4.9 &AjaxSearchVersion=Min AjaxSearch version:;string;1.11.0 &WayfinderVersion=Min Wayfinder version:;string;2.0.5 &WebLoginVersion=Min WebLogin version:;string;1.2 &WebSignupVersion=Min WebSignup version:;string;1.1.2 &WebChangePwdVersion=Min WebChangePwd version:;string;1.1.2 &BreadcrumbsVersion=Min Breadcrumbs version:;string;1.0.5 &ReflectVersion=Min Reflect version:;string;2.2 &JotVersion=Min Jot version:;string;1.1.5 &MtvVersion=Min multiTV version:;string;2.0.13 &badthemes=Outdated Manager Themes:;string;MODxRE2_DropdownMenu,MODxRE2,MODxRE,MODxCarbon,D3X,MODxFLAT,wMOD,ScienceStyle\n * @internal    @modx_category Manager and Admin\n * @internal    @installset base\n * @internal    @disabled 0\n */\n\n// get manager role check\n$internalKey = $modx->getLoginUserID();\n$sid = $modx->sid;\n$role = $_SESSION[\'mgrRole\'];\n$user = $_SESSION[\'mgrShortname\'];\n// show widget only to Admin role 1\nif(($role!=1) AND ($wdgVisibility == \'AdminOnly\')) {}\n// show widget to all manager users excluded Admin role 1\nelse if(($role==1) AND ($wdgVisibility == \'AdminExcluded\')) {}\n// show widget only to \"this\" role id\nelse if(($role!=$ThisRole) AND ($wdgVisibility == \'ThisRoleOnly\')) {}\n// show widget only to \"this\" username\nelse if(($user!=$ThisUser) AND ($wdgVisibility == \'ThisUserOnly\')) {}\nelse {\n// get plugin id and setting button\n$result = $modx->db->select(\'id\', $this->getFullTableName(\"site_plugins\"), \"name=\'{$modx->event->activePlugin}\' AND disabled=0\");\n$pluginid = $modx->db->getValue($result);\nif($modx->hasPermission(\'edit_plugin\')) {\n$button_pl_config = \'<a data-toggle=\"tooltip\" href=\"javascript:;\" title=\"\' . $_lang[\"settings_config\"] . \'\" class=\"text-muted pull-right\" onclick=\"parent.modx.popup({url:\\\'\'. MODX_MANAGER_URL.\'?a=102&id=\'.$pluginid.\'&tab=1\\\',title1:\\\'\' . $_lang[\"settings_config\"] . \'\\\',icon:\\\'fa-cog\\\',iframe:\\\'iframe\\\',selector2:\\\'#tabConfig\\\',position:\\\'center center\\\',width:\\\'80%\\\',height:\\\'80%\\\',hide:0,hover:0,overlay:1,overlayclose:1})\" ><i class=\"fa fa-cog fa-spin-hover\" style=\"color:#FFFFFF;\"></i> </a>\';\n}\n$modx->setPlaceholder(\'button_pl_config\', $button_pl_config);\n//plugin lang\n$_oec_lang = array();\n$plugin_path = $modx->config[\'base_path\'] . \"assets/plugins/extrascheck/\";\ninclude($plugin_path . \'lang/english.php\');\nif (file_exists($plugin_path . \'lang/\' . $modx->config[\'manager_language\'] . \'.php\')) {\ninclude($plugin_path . \'lang/\' . $modx->config[\'manager_language\'] . \'.php\');\n}\n//run the plugin\n// get globals\nglobal $modx,$_lang;\n//function to extract snippet version from description <strong></strong> tags \nif (!function_exists(\'getver\')) {\nfunction getver($string, $tag)\n{\n$content =\"/<$tag>(.*?)<\\/$tag>/\";\npreg_match($content, $string, $text);\nreturn $text[1];\n	}\n}\n$e = &$modx->Event;\n$EVOversion = $modx->config[\'settings_version\'];\n$output = \'\';\n//get extras module id for the link\n$modtable = $modx->getFullTableName(\'site_modules\');\n$getExtra = $modx->db->select( \"id, name\", $modtable, \"name=\'Extras\'\" );\nwhile( $row = $modx->db->getRow( $getExtra ) ) {\n$ExtrasID = $row[\'id\'];\n}\n//check outdated files\n//ajax index\n$indexajax = \"../index-ajax.php\";\nif (file_exists($indexajax)){\n    $output .= \'<div class=\"widget-wrapper alert alert-danger\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>index-ajax.php</b> \'.$_oec_lang[\'not_used\'].\' <b>Evolution \'.$EVOversion.\'</b>.  \'.$_oec_lang[\'if_dont_use\'].\', \'.$_oec_lang[\'please_delete\'].\'.</div>\';\n}\n//check outdated default manager themes\n$oldthemes = explode(\",\",\"$badthemes\");\nforeach ($oldthemes as $oldtheme){\n	if (file_exists(\'media/style/\'.$oldtheme)){\n    $output .= \'<div class=\"widget-wrapper alert alert-danger\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\'.$oldtheme.\'</b> \'.$_lang[\"manager_theme\"].\',  \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>.   \'.$_oec_lang[\'please_delete\'].\' \'.$_oec_lang[\'from_folder\'].\' \' . MODX_MANAGER_PATH . \'media/style/.</div>\';\n}\n}	\n//get site snippets table\n$table = $modx->getFullTableName(\'site_snippets\');\n//check ditto\n//get min version from config\n$minDittoVersion = $DittoVersion;\n//search the snippet by name\n$CheckDitto = $modx->db->select( \"id, name, description\", $table, \"name=\'Ditto\'\" );\nif($CheckDitto != \'\'){\nwhile( $row = $modx->db->getRow( $CheckDitto ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_ditto_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_ditto_version,$minDittoVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_ditto_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minDittoVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a> \'.$_oec_lang[\'or_move_to\'].\' <b>DocLister</b></div>\';\n		}\n	}\n} \n//end check ditto\n\n//check eform\n//get min version from config\n$minEformVersion = $EformVersion;\n//search the snippet by name\n$CheckEform = $modx->db->select( \"id, name, description\", $table, \"name=\'eForm\'\" );\nif($CheckEform != \'\'){\nwhile( $row = $modx->db->getRow( $CheckEform ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_Eform_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_Eform_version,$minEformVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_Eform_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minEformVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a> \'.$_oec_lang[\'or_move_to\'].\' <b>FormLister</b></div>\';\n		}\n	}\n} \n//end check eform\n	\n//check AjaxSearch\n//get min version from config\n$minAjaxSearchVersion = $AjaxSearchVersion;\n//search the snippet by name\n$CheckAjaxSearch = $modx->db->select( \"id, name, description\", $table, \"name=\'AjaxSearch\'\" );\nif($CheckAjaxSearch != \'\'){\nwhile( $row = $modx->db->getRow( $CheckAjaxSearch ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_AjaxSearch_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_AjaxSearch_version,$minAjaxSearchVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_AjaxSearch_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minAjaxSearchVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a>.</div>\';\n		}\n	}\n} \n//end check AjaxSearch	\n	\n//check Wayfinder\n//get min version from config\n$minWayfinderVersion = $WayfinderVersion;\n//search the snippet by name\n$CheckWayfinder = $modx->db->select( \"id, name, description\", $table, \"name=\'Wayfinder\'\" );\nif($CheckWayfinder != \'\'){\nwhile( $row = $modx->db->getRow( $CheckWayfinder ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_Wayfinder_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_Wayfinder_version,$minWayfinderVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_Wayfinder_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minWayfinderVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a>.</div>\';\n		}\n	}\n} \n//end check Wayfinder\n	\n//check WebLogin\n//get min version from config\n$minWebLoginVersion = $WebLoginVersion;\n//search the snippet by name\n$CheckWebLogin = $modx->db->select( \"id, name, description\", $table, \"name=\'WebLogin\'\" );\nif($CheckWebLogin != \'\'){\nwhile( $row = $modx->db->getRow( $CheckWebLogin ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_WebLogin_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_WebLogin_version,$minWebLoginVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_WebLogin_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minWebLoginVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a> \'.$_oec_lang[\'or_move_to\'].\' <b>FormLister</b></div>\';\n		}\n	}\n} \n//end check WebLogin\n\n//check WebChangePwd\n//get min version from config\n$minWebChangePwdVersion = $WebChangePwdVersion;\n//search the snippet by name\n$CheckWebChangePwd = $modx->db->select( \"id, name, description\", $table, \"name=\'WebChangePwd\'\" );\nif($CheckWebLogin != \'\'){\nwhile( $row = $modx->db->getRow( $CheckWebChangePwd ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_WebChangePwd_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_WebChangePwd_version,$minWebChangePwdVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_WebChangePwd_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minWebChangePwdVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a> \'.$_oec_lang[\'or_move_to\'].\' <b>FormLister</b></div>\';\n		}\n	}\n} \n//end check WebChangePwd\n	\n//check WebSignup\n//get min version from config\n$minWebSignupVersion = $WebSignupVersion;\n//search the snippet by name\n$CheckWebSignup = $modx->db->select( \"id, name, description\", $table, \"name=\'WebSignup\'\" );\nif($CheckWebSignup != \'\'){\nwhile( $row = $modx->db->getRow( $CheckWebSignup ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_WebSignup_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_WebSignup_version,$minWebSignupVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_WebSignup_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minWebSignupVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a> \'.$_oec_lang[\'or_move_to\'].\' <b>FormLister</b></div>\';\n		}\n	}\n} \n//end check WebSignup\n\n//check Breadcrumbs\n//get min version from config\n$minBreadcrumbsVersion = $BreadcrumbsVersion;\n//search the snippet by name\n$CheckBreadcrumbs = $modx->db->select( \"id, name, description\", $table, \"name=\'Breadcrumbs\'\" );\nif($CheckBreadcrumbs != \'\'){\nwhile( $row = $modx->db->getRow( $CheckBreadcrumbs ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_Breadcrumbs_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_Breadcrumbs_version,$minBreadcrumbsVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_Breadcrumbs_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minBreadcrumbsVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a>.</div>\';\n		}\n	}\n} \n//end check Breadcrumbs\n\n//check Reflect\n//get min version from config\n$minReflectVersion = $ReflectVersion;\n//search the snippet by name\n$CheckReflect = $modx->db->select( \"id, name, description\", $table, \"name=\'Reflect\'\" );\nif($CheckReflect != \'\'){\nwhile( $row = $modx->db->getRow( $CheckReflect ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_Reflect_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_Reflect_version,$minReflectVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_Reflect_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minReflectVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a>.</div>\';\n		}\n	}\n} \n//end check Reflect\n\n//check Jot\n//get min version from config\n$minJotVersion = $JotVersion;\n//search the snippet by name\n$CheckJot = $modx->db->select( \"id, name, description\", $table, \"name=\'Jot\'\" );\nif($CheckJot != \'\'){\nwhile( $row = $modx->db->getRow( $CheckJot ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_Jot_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_Jot_version,$minJotVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_Jot_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minJotVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a>.</div>\';\n		}\n	}\n} \n//end check Jot\n	\n//check Multitv\n//get min version from config\n$minMtvVersion = $MtvVersion;\n//search the snippet by name\n$CheckMtv = $modx->db->select( \"id, name, description\", $table, \"name=\'multiTV\'\" );\nif($CheckMtv != \'\'){\nwhile( $row = $modx->db->getRow( $CheckMtv ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_mtv_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_mtv_version,$minMtvVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_mtv_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minMtvVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a></div>\';\n		}\n	}\n} \n//end check Multitv\n\nif($output != \'\'){\nif($e->name == \'OnManagerWelcomeHome\') {\n$out = $output;\n$wdgTitle = \'EVO \'.$EVOversion.\' - \'.$_oec_lang[\'title\'].\'\';\n$widgets[\'xtraCheck\'] = array(\n				\'menuindex\' =>\'0\',\n				\'id\' => \'xtraCheck\'.$pluginid.\'\',\n				\'cols\' => \'col-md-12\',\n                \'headAttr\' => \'style=\"background-color:#B60205; color:#FFFFFF;\"\',\n				\'bodyAttr\' => \'\',\n				\'icon\' => \'fa-warning\',\n				\'title\' => \'\'.$wdgTitle.\' \'.$button_pl_config.\'\',\n				\'body\' => \'<div class=\"card-body\">\'.$out.\'</div>\',\n				\'hide\' => \'0\'\n			);	\n            $e->output(serialize($widgets));\nreturn;\n		}\n	}\n}','0','{\"wdgVisibility\":[{\"label\":\"Show widget for:\",\"type\":\"menu\",\"value\":\"All\",\"options\":\"All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly\",\"default\":\"All\",\"desc\":\"\"}],\"ThisRole\":[{\"label\":\"Run only for this role:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ThisUser\":[{\"label\":\"Run only for this user:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"DittoVersion\":[{\"label\":\"Min Ditto version:\",\"type\":\"string\",\"value\":\"2.1.3\",\"default\":\"2.1.3\",\"desc\":\"\"}],\"EformVersion\":[{\"label\":\"Min eForm version:\",\"type\":\"string\",\"value\":\"1.4.9\",\"default\":\"1.4.9\",\"desc\":\"\"}],\"AjaxSearchVersion\":[{\"label\":\"Min AjaxSearch version:\",\"type\":\"string\",\"value\":\"1.11.0\",\"default\":\"1.11.0\",\"desc\":\"\"}],\"WayfinderVersion\":[{\"label\":\"Min Wayfinder version:\",\"type\":\"string\",\"value\":\"2.0.5\",\"default\":\"2.0.5\",\"desc\":\"\"}],\"WebLoginVersion\":[{\"label\":\"Min WebLogin version:\",\"type\":\"string\",\"value\":\"1.2\",\"default\":\"1.2\",\"desc\":\"\"}],\"WebSignupVersion\":[{\"label\":\"Min WebSignup version:\",\"type\":\"string\",\"value\":\"1.1.2\",\"default\":\"1.1.2\",\"desc\":\"\"}],\"WebChangePwdVersion\":[{\"label\":\"Min WebChangePwd version:\",\"type\":\"string\",\"value\":\"1.1.2\",\"default\":\"1.1.2\",\"desc\":\"\"}],\"BreadcrumbsVersion\":[{\"label\":\"Min Breadcrumbs version:\",\"type\":\"string\",\"value\":\"1.0.5\",\"default\":\"1.0.5\",\"desc\":\"\"}],\"ReflectVersion\":[{\"label\":\"Min Reflect version:\",\"type\":\"string\",\"value\":\"2.2\",\"default\":\"2.2\",\"desc\":\"\"}],\"JotVersion\":[{\"label\":\"Min Jot version:\",\"type\":\"string\",\"value\":\"1.1.5\",\"default\":\"1.1.5\",\"desc\":\"\"}],\"MtvVersion\":[{\"label\":\"Min multiTV version:\",\"type\":\"string\",\"value\":\"2.0.12\",\"default\":\"2.0.12\",\"desc\":\"\"}],\"badthemes\":[{\"label\":\"Outdated Manager Themes:\",\"type\":\"string\",\"value\":\"MODxRE2_DropdownMenu,MODxRE2,MODxRE,MODxCarbon,D3X,MODxFLAT,wMOD,ScienceStyle\",\"default\":\"MODxRE2_DropdownMenu,MODxRE2,MODxRE,MODxCarbon,D3X,MODxFLAT,wMOD,ScienceStyle\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('29','ElementsInTree','<strong>1.5.9</strong> Get access to all Elements and Modules inside Manager sidebar','0','3','0','require MODX_BASE_PATH.\'assets/plugins/elementsintree/plugin.elementsintree.php\';\n','0','{\"adminRoleOnly\":[{\"label\":\"Administrators only\",\"type\":\"list\",\"value\":\"yes\",\"options\":\"yes,no\",\"default\":\"yes\",\"desc\":\"\"}],\"treeButtonsInTab\":[{\"label\":\"Tree buttons in tab\",\"type\":\"list\",\"value\":\"yes\",\"options\":\"yes,no\",\"default\":\"yes\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('30','Quick Manager+','<strong>1.5.10</strong> Enables QuickManager+ front end content editing support','0','3','0','\n/**\n * Quick Manager+\n * \n * Enables QuickManager+ front end content editing support\n *\n * @category 	plugin\n * @version 	1.5.10\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL v3)\n * @internal    @properties &jqpath=Path to jQuery;text;assets/js/jquery.min.js &loadmanagerjq=Load jQuery in manager;list;true,false;false &loadfrontendjq=Load jQuery in front-end;list;true,false;false &noconflictjq=jQuery noConflict mode in front-end;list;true,false;false &loadfa=Load Font Awesome css in front-end;list;true,false;true &loadtb=Load modal box in front-end;list;true,false;true &tbwidth=Modal box window width;text;80% &tbheight=Modal box window height;text;90% &hidefields=Hide document fields from front-end editors;text;parent &hidetabs=Hide document tabs from front-end editors;text; &hidesections=Hide document sections from front-end editors;text; &addbutton=Show add document here button;list;true,false;true &tpltype=New document template type;list;parent,id,selected;parent &tplid=New document template id;int;3 &custombutton=Custom buttons;textarea; &managerbutton=Show go to manager button;list;true,false;true &logout=Logout to;list;manager,front-end;manager &disabled=Plugin disabled on documents;text; &autohide=Autohide toolbar;list;true,false;true &position= Toolbar position;list;top,right,bottom,left,before;top &editbuttons=Inline edit buttons;list;true,false;false &editbclass=Edit button CSS class;text;qm-edit &newbuttons=Inline new resource buttons;list;true,false;false &newbclass=New resource button CSS class;text;qm-new &tvbuttons=Inline template variable buttons;list;true,false;false &tvbclass=Template variable button CSS class;text;qm-tv &removeBg=Remove toolbar background;list;yes,no;no &buttonStyle=QuickManager buttons CSS stylesheet;list;actionButtons,navButtons;navButtons  \n * @internal	@events OnParseDocument,OnWebPagePrerender,OnDocFormPrerender,OnDocFormSave,OnManagerLogout \n * @internal	@modx_category Manager and Admin\n * @internal    @legacy_names QM+,QuickEdit\n * @internal    @installset base, sample\n * @internal    @disabled 1\n * @reportissues https://github.com/modxcms/evolution\n * @documentation Official docs [+site_url+]assets/plugins/qm/readme.html\n * @link        http://www.maagit.fi/modx/quickmanager-plus\n * @author      Mikko Lammi\n * @author      Since 2011: yama, dmi3yy, segr, Nicola1971.\n * @lastupdate  02/02/2018 \n */\n\n// In manager\nif (!$modx->checkSession()) return;\n\n$show = TRUE;\n\nif ($disabled  != \'\') {\n    $arr = array_filter(array_map(\'intval\', explode(\',\', $disabled)));\n    if (in_array($modx->documentIdentifier, $arr)) {\n        $show = FALSE;\n    }\n}\n\nif ($show) {\n    // Replace [*#tv*] with QM+ edit TV button placeholders\n    if ($tvbuttons == \'true\') {\n        if ($modx->event->name == \'OnParseDocument\') {\n             $output = &$modx->documentOutput;\n             $output = preg_replace(\'~\\[\\*#(.*?)\\*\\]~\', \'<!-- \'.$tvbclass.\' $1 -->[*$1*]\', $output);\n             $modx->documentOutput = $output;\n         }\n     }\n    include_once($modx->config[\'base_path\'].\'assets/plugins/qm/qm.inc.php\');\n    $qm = new Qm($modx, $jqpath, $loadmanagerjq, $loadfrontendjq, $noconflictjq, $loadfa, $loadtb, $tbwidth, $tbheight, $hidefields, $hidetabs, $hidesections, $addbutton, $tpltype, $tplid, $custombutton, $managerbutton, $logout, $autohide, $position, $editbuttons, $editbclass, $newbuttons, $newbclass, $tvbuttons, $tvbclass, $buttonStyle, $removeBg);\n}\n','0','{\"jqpath\":[{\"label\":\"Path to jQuery\",\"type\":\"text\",\"value\":\"assets\\/js\\/jquery.min.js\",\"default\":\"assets\\/js\\/jquery.min.js\",\"desc\":\"\"}],\"loadmanagerjq\":[{\"label\":\"Load jQuery in manager\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"loadfrontendjq\":[{\"label\":\"Load jQuery in front-end\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"noconflictjq\":[{\"label\":\"jQuery noConflict mode in front-end\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"loadfa\":[{\"label\":\"Load Font Awesome css in front-end\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"loadtb\":[{\"label\":\"Load modal box in front-end\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"tbwidth\":[{\"label\":\"Modal box window width\",\"type\":\"text\",\"value\":\"80%\",\"default\":\"80%\",\"desc\":\"\"}],\"tbheight\":[{\"label\":\"Modal box window height\",\"type\":\"text\",\"value\":\"90%\",\"default\":\"90%\",\"desc\":\"\"}],\"hidefields\":[{\"label\":\"Hide document fields from front-end editors\",\"type\":\"text\",\"value\":\"parent\",\"default\":\"parent\",\"desc\":\"\"}],\"hidetabs\":[{\"label\":\"Hide document tabs from front-end editors\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"hidesections\":[{\"label\":\"Hide document sections from front-end editors\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"addbutton\":[{\"label\":\"Show add document here button\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"tpltype\":[{\"label\":\"New document template type\",\"type\":\"list\",\"value\":\"parent\",\"options\":\"parent,id,selected\",\"default\":\"parent\",\"desc\":\"\"}],\"tplid\":[{\"label\":\"New document template id\",\"type\":\"int\",\"value\":\"3\",\"default\":\"3\",\"desc\":\"\"}],\"custombutton\":[{\"label\":\"Custom buttons\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"managerbutton\":[{\"label\":\"Show go to manager button\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"logout\":[{\"label\":\"Logout to\",\"type\":\"list\",\"value\":\"manager\",\"options\":\"manager,front-end\",\"default\":\"manager\",\"desc\":\"\"}],\"disabled\":[{\"label\":\"Plugin disabled on documents\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"autohide\":[{\"label\":\"Autohide toolbar\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"position\":[{\"label\":\"Toolbar position\",\"type\":\"list\",\"value\":\"top\",\"options\":\"top,right,bottom,left,before\",\"default\":\"top\",\"desc\":\"\"}],\"editbuttons\":[{\"label\":\"Inline edit buttons\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"editbclass\":[{\"label\":\"Edit button CSS class\",\"type\":\"text\",\"value\":\"qm-edit\",\"default\":\"qm-edit\",\"desc\":\"\"}],\"newbuttons\":[{\"label\":\"Inline new resource buttons\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"newbclass\":[{\"label\":\"New resource button CSS class\",\"type\":\"text\",\"value\":\"qm-new\",\"default\":\"qm-new\",\"desc\":\"\"}],\"tvbuttons\":[{\"label\":\"Inline template variable buttons\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"tvbclass\":[{\"label\":\"Template variable button CSS class\",\"type\":\"text\",\"value\":\"qm-tv\",\"default\":\"qm-tv\",\"desc\":\"\"}],\"removeBg\":[{\"label\":\"Remove toolbar background\",\"type\":\"list\",\"value\":\"no\",\"options\":\"yes,no\",\"default\":\"no\",\"desc\":\"\"}],\"buttonStyle\":[{\"label\":\"QuickManager buttons CSS stylesheet\",\"type\":\"list\",\"value\":\"navButtons\",\"options\":\"actionButtons,navButtons\",\"default\":\"navButtons\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('31','Updater','<strong>0.8.4</strong> show message about outdated CMS version','0','3','0','require MODX_BASE_PATH.\'assets/plugins/updater/plugin.updater.php\';\n\n\n','0','{\"version\":[{\"label\":\"Version:\",\"type\":\"text\",\"value\":\"evolution-cms\\/evolution\",\"default\":\"evolution-cms\\/evolution\",\"desc\":\"\"}],\"wdgVisibility\":[{\"label\":\"Show widget for:\",\"type\":\"menu\",\"value\":\"All\",\"options\":\"All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly\",\"default\":\"All\",\"desc\":\"\"}],\"ThisRole\":[{\"label\":\"Show only to this role id:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ThisUser\":[{\"label\":\"Show only to this username:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"showButton\":[{\"label\":\"Show Update Button:\",\"type\":\"menu\",\"value\":\"AdminOnly\",\"options\":\"show,hide,AdminOnly\",\"default\":\"AdminOnly\",\"desc\":\"\"}],\"type\":[{\"label\":\"Type:\",\"type\":\"menu\",\"value\":\"tags\",\"options\":\"tags,releases,commits\",\"default\":\"tags\",\"desc\":\"\"}],\"branch\":[{\"label\":\"Commit branch:\",\"type\":\"text\",\"value\":\"develop\",\"default\":\"develop\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('32','userHelper','<strong>1.7.18</strong> addition to FormLister','0','5','0','\n/**\n * userHelper\n * \n * addition to FormLister\n * \n * @category    plugin\n * @version     1.7.18\n * @internal    @properties &logoutKey=Request key;text;logout &cookieName=Cookie Name;text;WebLoginPE &cookieLifetime=Cookie Lifetime, seconds;text;157680000 &maxFails=Max failed logins;text;3 &blockTime=Block for, seconds;text;3600\n * @internal    @events OnWebAuthentication,OnWebPageInit,OnPageNotFound,OnWebLogin\n * @internal    @modx_category Content\n * @internal    @disabled 1\n**/\n\nrequire MODX_BASE_PATH.\'assets/snippets/FormLister/plugin.userHelper.php\';\n','0','{\"logoutKey\":[{\"label\":\"Request key\",\"type\":\"text\",\"value\":\"logout\",\"default\":\"logout\",\"desc\":\"\"}],\"cookieName\":[{\"label\":\"Cookie Name\",\"type\":\"text\",\"value\":\"WebLoginPE\",\"default\":\"WebLoginPE\",\"desc\":\"\"}],\"cookieLifetime\":[{\"label\":\"Cookie Lifetime, seconds\",\"type\":\"text\",\"value\":\"157680000\",\"default\":\"157680000\",\"desc\":\"\"}],\"maxFails\":[{\"label\":\"Max failed logins\",\"type\":\"text\",\"value\":\"3\",\"default\":\"3\",\"desc\":\"\"}],\"blockTime\":[{\"label\":\"Block for, seconds\",\"type\":\"text\",\"value\":\"3600\",\"default\":\"3600\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('33','Forgot Manager Login','<strong>1.1.7</strong> Resets your manager login when you forget your password via email confirmation','0','3','0','require MODX_BASE_PATH.\'assets/plugins/forgotmanagerlogin/plugin.forgotmanagerlogin.php\';','0','','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('34','TinyMCE4','<strong>4.7.4</strong> Javascript rich text editor','0','3','0','\n/**\n * TinyMCE4\n *\n * Javascript rich text editor\n *\n * @category    plugin\n * @version     4.7.4\n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal    @properties &styleFormats=Custom Style Formats <b>RAW</b><br/><br/><ul><li>leave empty to use below block/inline formats</li><li>allows simple-format: <i>Title,cssClass|Title2,cssClass2</i></li><li>Also accepts full JSON-config as per TinyMCE4 docs / configure / content-formating / style_formats</li></ul>;textarea; &styleFormats_inline=Custom Style Formats <b>INLINE</b><br/><br/><ul><li>will wrap selected text with span-tag + css-class</li><li>simple-format only</li></ul>;textarea;InlineTitle,cssClass1|InlineTitle2,cssClass2 &styleFormats_block=Custom Style Formats <b>BLOCK</b><br/><br/><ul><li>will add css-class to selected block-element</li><li>simple-format only</li></ul>;textarea;BlockTitle,cssClass3|BlockTitle2,cssClass4 &customParams=Custom Parameters<br/><b>(Be careful or leave empty!)</b>;textarea; &entityEncoding=Entity Encoding;list;named,numeric,raw;named &entities=Entities;text; &pathOptions=Path Options;list;Site config,Absolute path,Root relative,URL,No convert;Site config &resizing=Advanced Resizing;list;true,false;false &disabledButtons=Disabled Buttons;text; &webTheme=Web Theme;test;webuser &webPlugins=Web Plugins;text; &webButtons1=Web Buttons 1;text;bold italic underline strikethrough removeformat alignleft aligncenter alignright &webButtons2=Web Buttons 2;text;link unlink image undo redo &webButtons3=Web Buttons 3;text; &webButtons4=Web Buttons 4;text; &webAlign=Web Toolbar Alignment;list;ltr,rtl;ltr &width=Width;text;100% &height=Height;text;400px &introtextRte=<b>Introtext RTE</b><br/>add richtext-features to \"introtext\";list;enabled,disabled;disabled &inlineMode=<b>Inline-Mode</b>;list;enabled,disabled;disabled &inlineTheme=<b>Inline-Mode</b><br/>Theme;text;inline &browser_spellcheck=<b>Browser Spellcheck</b><br/>At least one dictionary must be installed inside your browser;list;enabled,disabled;disabled &paste_as_text=<b>Force Paste as Text</b>;list;enabled,disabled;disabled\n * @internal    @events OnLoadWebDocument,OnParseDocument,OnWebPagePrerender,OnLoadWebPageCache,OnRichTextEditorRegister,OnRichTextEditorInit,OnInterfaceSettingsRender\n * @internal    @modx_category Manager and Admin\n * @internal    @legacy_names TinyMCE Rich Text Editor\n * @internal    @installset base\n * @logo        /assets/plugins/tinymce4/tinymce/logo.png\n * @reportissues https://github.com/extras-evolution/tinymce4-for-modx-evo\n * @documentation Plugin docs https://github.com/extras-evolution/tinymce4-for-modx-evo\n * @documentation Official TinyMCE4-docs https://www.tinymce.com/docs/\n * @author      Deesen\n * @lastupdate  2018-01-17\n */\nif (!defined(\'MODX_BASE_PATH\')) { die(\'What are you doing? Get out of here!\'); }\n\nrequire(MODX_BASE_PATH.\"assets/plugins/tinymce4/plugin.tinymce.inc.php\");','0','{\"styleFormats\":[{\"label\":\"Custom Style Formats <b>RAW<\\/b><br\\/><br\\/><ul><li>leave empty to use below block\\/inline formats<\\/li><li>allows simple-format: <i>Title,cssClass|Title2,cssClass2<\\/i><\\/li><li>Also accepts full JSON-config as per TinyMCE4 docs \\/ configure \\/ content-formating \\/ style_formats<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"styleFormats_inline\":[{\"label\":\"Custom Style Formats <b>INLINE<\\/b><br\\/><br\\/><ul><li>will wrap selected text with span-tag + css-class<\\/li><li>simple-format only<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"InlineTitle,cssClass1|InlineTitle2,cssClass2\",\"default\":\"InlineTitle,cssClass1|InlineTitle2,cssClass2\",\"desc\":\"\"}],\"styleFormats_block\":[{\"label\":\"Custom Style Formats <b>BLOCK<\\/b><br\\/><br\\/><ul><li>will add css-class to selected block-element<\\/li><li>simple-format only<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"BlockTitle,cssClass3|BlockTitle2,cssClass4\",\"default\":\"BlockTitle,cssClass3|BlockTitle2,cssClass4\",\"desc\":\"\"}],\"customParams\":[{\"label\":\"Custom Parameters<br\\/><b>(Be careful or leave empty!)<\\/b>\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"entityEncoding\":[{\"label\":\"Entity Encoding\",\"type\":\"list\",\"value\":\"named\",\"options\":\"named,numeric,raw\",\"default\":\"named\",\"desc\":\"\"}],\"entities\":[{\"label\":\"Entities\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"pathOptions\":[{\"label\":\"Path Options\",\"type\":\"list\",\"value\":\"Site config\",\"options\":\"Site config,Absolute path,Root relative,URL,No convert\",\"default\":\"Site config\",\"desc\":\"\"}],\"resizing\":[{\"label\":\"Advanced Resizing\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"disabledButtons\":[{\"label\":\"Disabled Buttons\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webTheme\":[{\"label\":\"Web Theme\",\"type\":\"test\",\"value\":\"webuser\",\"default\":\"webuser\",\"desc\":\"\"}],\"webPlugins\":[{\"label\":\"Web Plugins\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webButtons1\":[{\"label\":\"Web Buttons 1\",\"type\":\"text\",\"value\":\"bold italic underline strikethrough removeformat alignleft aligncenter alignright\",\"default\":\"bold italic underline strikethrough removeformat alignleft aligncenter alignright\",\"desc\":\"\"}],\"webButtons2\":[{\"label\":\"Web Buttons 2\",\"type\":\"text\",\"value\":\"link unlink image undo redo\",\"default\":\"link unlink image undo redo\",\"desc\":\"\"}],\"webButtons3\":[{\"label\":\"Web Buttons 3\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webButtons4\":[{\"label\":\"Web Buttons 4\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webAlign\":[{\"label\":\"Web Toolbar Alignment\",\"type\":\"list\",\"value\":\"ltr\",\"options\":\"ltr,rtl\",\"default\":\"ltr\",\"desc\":\"\"}],\"width\":[{\"label\":\"Width\",\"type\":\"text\",\"value\":\"100%\",\"default\":\"100%\",\"desc\":\"\"}],\"height\":[{\"label\":\"Height\",\"type\":\"text\",\"value\":\"400px\",\"default\":\"400px\",\"desc\":\"\"}],\"introtextRte\":[{\"label\":\"<b>Introtext RTE<\\/b><br\\/>add richtext-features to \\\"introtext\\\"\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"inlineMode\":[{\"label\":\"<b>Inline-Mode<\\/b>\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"inlineTheme\":[{\"label\":\"<b>Inline-Mode<\\/b><br\\/>Theme\",\"type\":\"text\",\"value\":\"inline\",\"default\":\"inline\",\"desc\":\"\"}],\"browser_spellcheck\":[{\"label\":\"<b>Browser Spellcheck<\\/b><br\\/>At least one dictionary must be installed inside your browser\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"paste_as_text\":[{\"label\":\"<b>Force Paste as Text<\\/b>\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `evo_site_plugins` VALUES ('35','CodeMirror','<strong>1.5</strong> JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.33 (released on 21-12-2017)','0','3','0','\n/**\n * CodeMirror\n *\n * JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.33 (released on 21-12-2017)\n *\n * @category    plugin\n * @version     1.5\n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @package     evo\n * @internal    @events OnDocFormRender,OnChunkFormRender,OnModFormRender,OnPluginFormRender,OnSnipFormRender,OnTempFormRender,OnRichTextEditorInit\n * @internal    @modx_category Manager and Admin\n * @internal    @properties &theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;default &darktheme=Dark Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;one-dark &fontSize=Font-size;list;10,11,12,13,14,15,16,17,18;14 &lineHeight=Line-height;list;1,1.1,1.2,1.3,1.4,1.5;1.3 &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;true &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;false &indentWithTabs=indentWithTabs;list;true,false;true &undoDepth=undoDepth;int;200 &historyEventDelay=historyEventDelay;int;1250\n * @internal    @installset base\n * @reportissues https://github.com/evolution-cms/evolution/issues/\n * @documentation Official docs https://codemirror.net/doc/manual.html\n * @author      hansek from http://www.modxcms.cz\n * @author      update Mihanik71\n * @author      update Deesen\n * @author      update 64j\n * @lastupdate  08-01-2018\n */\n\n$_CM_BASE = \'assets/plugins/codemirror/\';\n\n$_CM_URL = $modx->config[\'site_url\'] . $_CM_BASE;\n\nrequire(MODX_BASE_PATH. $_CM_BASE .\'codemirror.plugin.php\');','0','{\"theme\":[{\"label\":\"Theme\",\"type\":\"list\",\"value\":\"default\",\"options\":\"default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light\",\"default\":\"default\",\"desc\":\"\"}],\"darktheme\":[{\"label\":\"Dark Theme\",\"type\":\"list\",\"value\":\"one-dark\",\"options\":\"default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light\",\"default\":\"one-dark\",\"desc\":\"\"}],\"fontSize\":[{\"label\":\"Font-size\",\"type\":\"list\",\"value\":\"14\",\"options\":\"10,11,12,13,14,15,16,17,18\",\"default\":\"14\",\"desc\":\"\"}],\"lineHeight\":[{\"label\":\"Line-height\",\"type\":\"list\",\"value\":\"1.3\",\"options\":\"1,1.1,1.2,1.3,1.4,1.5\",\"default\":\"1.3\",\"desc\":\"\"}],\"indentUnit\":[{\"label\":\"Indent unit\",\"type\":\"int\",\"value\":\"4\",\"default\":\"4\",\"desc\":\"\"}],\"tabSize\":[{\"label\":\"The width of a tab character\",\"type\":\"int\",\"value\":\"4\",\"default\":\"4\",\"desc\":\"\"}],\"lineWrapping\":[{\"label\":\"lineWrapping\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"matchBrackets\":[{\"label\":\"matchBrackets\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"activeLine\":[{\"label\":\"activeLine\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"emmet\":[{\"label\":\"emmet\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"search\":[{\"label\":\"search\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"indentWithTabs\":[{\"label\":\"indentWithTabs\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"undoDepth\":[{\"label\":\"undoDepth\",\"type\":\"int\",\"value\":\"200\",\"default\":\"200\",\"desc\":\"\"}],\"historyEventDelay\":[{\"label\":\"historyEventDelay\",\"type\":\"int\",\"value\":\"1250\",\"default\":\"1250\",\"desc\":\"\"}]}','0','','0','0');


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

INSERT INTO `evo_site_snippets` VALUES ('2','DLMenu','<strong>1.3.0</strong> Snippet to build menu with DocLister','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLMenu.php\';\n','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('3','DLCrumbs','<strong>1.2</strong> DLCrumbs','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLCrumbs.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('4','if','<strong>1.3</strong> A simple conditional snippet. Allows for eq/neq/lt/gt/etc logic within templates, resources, chunks, etc.','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/if/snippet.if.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('5','Reflect','<strong>2.2</strong> Generates date-based archives using Ditto','0','5','0','\n/**\n * Reflect\n * \n * Generates date-based archives using Ditto\n *\n * @category 	snippet\n * @version 	2.2\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@modx_category Content\n * @internal    @installset base, sample\n * @documentation Cheatsheet https://de.scribd.com/doc/55919355/MODx-Ditto-and-Reflect-Cheatsheet-v1-2\n * @documentation Inside snippet-code\n * @reportissues https://github.com/modxcms/evolution\n * @author      Mark Kaplan\n * @author      Ryan Thrash http://thrash.me\n * @author      netProphET, Dmi3yy, bossloper, yamamoto\n * @lastupdate  2016-11-21\n */\n\n/*\n *  Note: \n *  If Reflect is not retrieving its own documents, make sure that the\n *  Ditto call feeding it has all of the fields in it that you plan on\n *  calling in your Reflect template. Furthermore, Reflect will ONLY\n *  show what is currently in the Ditto result set.\n *  Thus, if pagination is on it will ONLY show that page\'s items.\n*/\n\nreturn require MODX_BASE_PATH.\'assets/snippets/reflect/snippet.reflect.php\';\n','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('6','FormLister','<strong>1.7.18</strong> Form processor','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/FormLister/snippet.FormLister.php\';\n','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('7','UltimateParent','<strong>2.0</strong> Travels up the document tree from a specified document and returns its \"ultimate\" non-root parent','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/ultimateparent/snippet.ultimateparent.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('8','FirstChildRedirect','<strong>2.0</strong> Automatically redirects to the first child of a Container Resource','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/firstchildredirect/snippet.firstchildredirect.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('9','DocLister','<strong>2.3.14</strong> Snippet to display the information of the tables by the description rules. The main goal - replacing Ditto and CatalogView','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DocLister.php\';\n','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('10','MemberCheck','<strong>1.1</strong> Show chunks based on a logged in Web User\'s group membership','0','7','0','return require MODX_BASE_PATH.\'assets/snippets/membercheck/snippet.membercheck.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('11','phpthumb','<strong>1.3</strong> PHPThumb creates thumbnails and altered images on the fly and caches them','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/phpthumb/snippet.phpthumb.php\';\n','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('12','summary','<strong>2.0.2</strong> Truncates the string to the specified length','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/summary/snippet.summary.php\';','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('13','DocInfo','<strong>1</strong> Take any field from any document (fewer requests than GetField)','0','8','0','return require MODX_BASE_PATH.\'assets/snippets/docinfo/snippet.docinfo.php\';\n','0','','','0','0','0');

INSERT INTO `evo_site_snippets` VALUES ('14','eForm','<strong>1.4.9</strong> Robust form parser/processor with validation, multiple sending options, chunk/page support for forms and reports, and file uploads','0','9','0','return require MODX_BASE_PATH.\'assets/snippets/eform/snippet.eform.php\';\n','0','','','0','0','0');

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='Contains the site templates.';

#
# Dumping data for table `evo_site_templates`
#

INSERT INTO `evo_site_templates` VALUES ('3','Home','','0','0','','0','{{inc_meta}}\n{{inc_header}}\n<div class=\"flexslider\" >\n	<ul class=\"slides\">\n		[!sgLister? &tpl=\'@CODE:<li><img src=\"[+sg_image+]\" alt=\"[+sg_title+]\"></li>\'!]\n	</ul>\n</div>\n<section class=\"create\">\n	<div class=\"content\">\n		<div class=\"news\">\n			<h3>[%Главные новости%]</h3>\n			[[DocLister?\n			&parents=`[%Новости%]`\n			&tpl=`article.item`\n			&tvPrefix=``\n			&tvList=`image`\n			&display=`3`\n			&orderBy=`menuindex ASC`\n			&dateFormat=`%d.%h.%Y `\n			]]\n		</div>\n		<div class=\"arhiv\">\n			<h3>[%Лента новостей%]</h3>\n			[[DocLister?\n			&parents=`[%Новости%]`\n			&tpl=`article-min.item`\n			&tvPrefix=``\n			&tvList=`image`\n			&display=`6`\n			&orderBy=`menuindex ASC`\n			&dateFormat=`%d.%m.%Y %H.%M`\n			]]\n		</div>\n		<div class=\"feedback\">\n			<a href=\"#\">[%Задать вопрос%]</a>\n			<div class=\"feedback-card\" id=\"back-card\">\n				[!eForm? &formid=`feedbackForm` &subject=`Сообщение с сайта [(site_name)]` &tpl=`feedbackForm` &report=`feedbackReport` &gotoid=`[*id*]` &vericode=`0`!] \n			</div>\n		</div>\n	</div>\n</section>\n\n{{inc_footer}}','0','1','0','1518425221');

INSERT INTO `evo_site_templates` VALUES ('4','Язык','','0','0','','0','','0','1','1507650487','1507650487');

INSERT INTO `evo_site_templates` VALUES ('5','Текстовая страница','','0','0','','0','{{inc_meta}}\n{{inc_header}}\n[!countViews? &type=`counter` &id=`[*id*]` &tvid=`7`!]\n<div class=\"content\">\n	<h1 class=\"text-page-h1\">[*pagetitle*]</h1>\n	[*content*]	\n</div>\n<div class=\"table\">\n	[[TvTable? &tvname=`table`]]\n	<!-- [[countViews? &type=`output` &id=`[*id*]` &tvid=`7`]] -->\n</div>\n{{inc_footer}}','0','1','1508254933','1522742347');

INSERT INTO `evo_site_templates` VALUES ('6','Новости','','0','0','','0','{{inc_meta}}\n{{inc_header}}\n<div class=\"content\">\n	<h1> [*pagetitle*]</h1>\n	[[DocLister?\n	&parents=`[*id*]`\n	&tpl=`article.item`\n	&tvPrefix=``\n	&tvList=`image`\n	&display=`5`\n	&paginate=`pages`\n	&orderBy=`menuindex ASC`\n	&TplNextP=`` \n	&TplPrevP=`` \n	&TplPage=`@CODE: <li><a href=\"[+link+]\">[+num+]</a></li>` \n	&TplCurrentPage=`@CODE: <li class=\"active\"><a href=\"[+link+]\">[+num+]</a></li>` \n	&TplWrapPaginate=`@CODE: <ul class=\"pagination\">[+wrap+]</ul>`\n	]]\n	[+pages+]\n</div>\n{{inc_footer}}','0','1','1511172461','1518196211');

INSERT INTO `evo_site_templates` VALUES ('7','Результаты поиска','','0','0','','0','{{inc_meta}}\n{{inc_header}}\n<div class=\"content\">\n	<h1>[*pagetitle*]</h1>\n	<section class=\"tovar-container\">\n		[[evoSearch? \n			&addSearch=`0` \n			&extract=`1`\n			&tpl=`evoSearch` \n			&tvPrefix=``\n		]]\n	</section>\n</div>\n{{inc_footer}}','0','1','1511172805','1518196229');

INSERT INTO `evo_site_templates` VALUES ('10','Авторизация','','0','0','','0','{{inc_meta}}\n{{inc_header}}\n\n<div class=\"content-main\">\n	[!FormLister?\n&formid=`login`\n&controller=`Login`\n&loginField=`email`\n&passwordField=`password`\n&rules=`{\n  \"email\":{\n			\"required\":\"[%Обязательно введите%] email\"\n			}\n	},\n	\"password\":{\n			\"required\":\"[%Обязательно введите%] пароль\",\n			\"minLength\":{\n					\"params\":6,\n					\"message\":\"[%В пароле должно быть больше 6 символов%]\"\n			}\n	},\n}`\n&allowedFields=`email,password`\n&formTpl=`@CODE:\n<div class=\"register user-form-card\">\n        <form method=\"post\">\n                <input type=\"hidden\" name=\"formid\" value=\"login\">\n                <div class=\"form-group[+email.errorClass+][+email.requiredClass+] user-form-reg\">\n                        <label for=\"email\"><i class=\"icon-gmail\"></i></label>\n                                <input type=\"text\" class=\"form-control entry-field\" id=\"email\" placeholder=\"Email\" name=\"email\" value=\"[+email.value+]\">\n                                [+email.error+]\n                </div>\n                <div class=\"form-group[+password.errorClass+][+password.requiredClass+] user-form-reg\">\n                        <label for=\"password\"><i class=\"icon-cog\"></i></label>\n                        <input type=\"password\" class=\"form-control entry-field\" id=\"password\" placeholder=\"Пароль\" name=\"password\" value=\"\">\n                        [+password.error+]\n                </div>\n                [+form.messages+]\n                <div class=\"form-group user-form-reg\">\n                        <button type=\"submit\" class=\"btn btn-primary btm-form\"><i class=\"icon-user\"></i> Войти</button>\n                </div>\n        </form>\n	<div class=\"btm-user-cont\">\n		<a href=\"[~[%reg-page%]~]\" target=\"_self\" class=\"btm-reg\">[%Не зарегистрирован%]</a>\n		<a href=\"[~[%rePass-page%]~]\" target=\"_self\" class=\"btm-repass\">[%Забыл пароль%]</a>\n	</div>\n	\n</div>\n`\n&messagesOuterTpl=`@CODE:<div class=\"alert alert-danger\" role=\"alert\">[+messages+]</div>`\n&errorTpl=`@CODE:<div class=\"alert alert-danger\">[+message+]</div>`\n&redirectTo=`{\n    \"page\":[%user-page%],\n    \"header\":\"HTTP/1.1 307 Temporary Redirect\"\n}`\n&requiredClass=` has-error`\n&errorClass=` has-error`\n&requiredClass=` has-error`\n!]\n\n\n</div>\n\n{{inc_footer}}','0','1','1518001080','1518434937');

INSERT INTO `evo_site_templates` VALUES ('12','Личный кабинет','','0','0','','0','{{inc_meta}}\n{{inc_header}}\n<div class=\"section-main\">\n	<a href=\"[(site_url)]?logout\" class=\"btn-logout\">[%Выход%]</a>\n</div>\n\n<div class=\"section-main\" id=\"user-box\">\n\n	\n	<input type=\"radio\" name=\"user-menu-tbl\" id=\"tbl-1\" checked></input>\n		<label for=\"tbl-1\">[%Информация%]</label>\n	<input type=\"radio\" name=\"user-menu-tbl\" id=\"tbl-2\"></input>\n		<label for=\"tbl-2\">[%Сверка%]</label>\n	<input type=\"radio\" name=\"user-menu-tbl\" id=\"tbl-3\"></input>\n		<label for=\"tbl-3\">[%Квитанция%]</label>\n	<input type=\"radio\" name=\"user-menu-tbl\" id=\"tbl-4\"></input>\n		<label for=\"tbl-4\">[%Договор%]</label>\n	<input type=\"radio\" name=\"user-menu-tbl\" id=\"tbl-5\"></input>\n		<label for=\"tbl-5\">[%Платежи%]</label>\n	<input type=\"radio\" name=\"user-menu-tbl\" id=\"tbl-6\"></input>\n		<label for=\"tbl-6\">[%Субсидии%]</label>\n	<input type=\"radio\" name=\"user-menu-tbl\" id=\"tbl-7\"></input>\n		<label for=\"tbl-7\">Оплата</label>\n	<input type=\"radio\" name=\"user-menu-tbl\" id=\"tbl-8\"></input>\n		<label for=\"tbl-8\">[%Приборы учета%]</label>\n	<input type=\"radio\" name=\"user-menu-tbl\" id=\"tbl-9\"></input>\n		<label for=\"tbl-9\">[%Профиль%]</label>\n	<input type=\"radio\" name=\"user-menu-tbl\" id=\"tbl-10\"></input>\n		<label for=\"tbl-10\">[%Интернет приемная%]</label>\n\n	\n	<div  id=\"user-show\">\n		<div>\n			<h3>[%Информация%]</h3>\n			<div class=\"table\">\n				[[TvTable? &tvname=`tableUser`]]\n			</div>\n		</div>\n		<div>\n			<h3>[%Сверка%]</h3>\n			<div class=\"table\">\n				[[TvTable? &tvname=`tableRevise`]]\n			</div>\n		</div>\n		<div>\n			<h3>[%Квитанция%]</h3>\n			<div class=\"table\">\n				[[TvTable? &tvname=`tableReceipt`]]\n			</div>\n		</div>\n		<div>\n			<h3>[%Договор%]</h3>\n			<div class=\"table\">\n				[[TvTable? &tvname=`tableContract`]]\n			</div>\n		</div>\n		<div>\n			<h3>[%Платежи%]</h3>\n			<div class=\"table\">\n				[[TvTable? &tvname=`tablePayments`]]\n			</div>\n		</div>\n		<div>\n			<h3>[%Субсидии%]</h3>\n			<div class=\"table\">\n				[[TvTable? &tvname=`tableSub`]]\n			</div>\n		</div>\n		<div>\n			<h3>Оплата</h3>\n			<div class=\"table\">\n				\n			</div>\n		</div>\n		<div>\n			<h3>[%Приборы учета%]</h3>\n			<div class=\"table\">\n				[[TvTable? &tvname=`tableMetr`]]\n			</div>\n		</div>\n		<div>\n			<h3>[%Профиль%]</h3>\n			\n			[!FormLister?\n				&formid=`registerForm`\n				&controller=`Profile`\n				&requiredClass=`has-warning`\n				&errorClass=`has-error`\n				&errorTpl=`@CODE:<small class=\"help-block\">[+message+]</small>`\n				&allowedFields=`email,username,fullname,country`\n				&rules=`{\n					\"username\":{\n						\"required\":\"Enter your username\",\n						\"alphaNumeric\":\"Only letters and numbers\",\n						\"custom\":{\n							\"function\":\"\\\\FormLister\\\\Register::uniqueUsername\",\n							\"message\":\"Name already taken\"\n						}\n					},\n					\"email\":{\n						\"required\":\"Enter email\",\n						\"email\":\"Incorrect email\",\n						\"custom\":{\n							\"function\":\"\\\\FormLister\\\\Register::uniqueEmail\",\n							\"message\":\"This email is already in use by another user\"\n						}\n					},\n					\"password\":{\n						\"required\":\"Enter password\"\n					},\n					\"repeatPassword\":{\n						\"required\":\"Retype password\",\n						\"equals\":{\n							\"message\":\"Passwords do not match\"\n						}\n					}\n				}`\n				&formTpl=`@CODE: \n		<div class=\"register user-form-card\">\n\n			<form role=\"form\" id=\"websignupfrm\" method=\"post\" name=\"websignupfrm\" action=\"[+action+]\">\n				<input type=\"hidden\" name=\"formid\" value=\"registerForm\"/>\n				<h3>[%Детали профиля%]</h3>\n\n				<div class=\"form-group [+fullname.classname+] user-form-reg\">\n					<label class=\"control-label\" for=\"fullname\">[%Имя пользователя%] :</label> \n					<input type=\"text\" name=\"fullname\" id=\"fullname\" class=\"form-control entry-field\" maxlength=\"100\" value=\"[+fullname.value+]\" placeholder=\"[%Имя пользователя%]\"/>\n					[+fullname.error+]\n				</div>\n\n				<div class=\"form-group  [+email.classname+] user-form-reg\">\n					<label class=\"control-label\" for=\"email\">Email :</label> \n					<input type=\"text\" name=\"email\" id=\"email\" class=\"form-control entry-field\" value=\"[+email.value+]\" placeholder=\"Email\"/>\n					[+email.error+]\n				</div>\n\n				<div class=\"form-group [+password.classname+] user-form-reg\">\n					<h3>Пароль</h3> \n					<input type=\"password\" name=\"password\" id=\"su_password\" class=\"form-control entry-field\" placeholder=\"Пароль\"/>\n					[+password.error+]\n				</div>\n				<div class=\"form-group [+repeatPassword.classname+] user-form-reg\">\n					<input type=\"password\" name=\"repeatPassword\" id=\"confirmpassword\" class=\"form-control entry-field\" placeholder=\"[%Повторите пароль%]\"/>\n					[+repeatPassword.error+]\n				</div>\n\n\n				 <div class=\"form-group user-form-reg\">\n					 <input type=\"submit\" class=\"btn btn-success btn-lg btm-form\" value=\"[%Отправить%]\" name=\"cmdwebsignup\" />\n				 </div>\n\n			</form>\n		</div>\n	`!]\n\n			\n		</div>\n		<div>\n			<h3>[%Интернет приемная%]</h3>\n			<div class=\"online-feedback-card\">\n				[!eForm? &formid=`onlinefeedbackForm` &subject=`Сообщение с сайта [(site_name)], онлайн приемная` &tpl=`onlinefeedbackForm` &report=`feedbackReport` &gotoid=`[*id*]` &vericode=`0`!] \n			</div>\n		</div>\n	</div>\n</div>\n\n{{inc_footer}}','0','1','1518100184','1527678617');

INSERT INTO `evo_site_templates` VALUES ('13','Восстановление пароля','','0','0','','0','{{inc_meta}}\n{{inc_header}}\n\n<div class=\"section-main\">\n\n			[!FormLister?\n&controller=`Reminder`\n&formid=`remind`\n&rules=`{\n	\"email\":{\n		\"required\":\"Be sure to enter email\",\n		\"email\":\"Enter email correctly\"\n	}\n}`\n&resetRules=`{\n	\"password\":{\n		\"required\":\"Be sure to enter the password\",\n		\"minLength\":{\n			\"params\":6,\n			\"message\":\"Password must be longer than 6 characters\"\n		}\n	},\n	\"repeatPassword\":{\n		\"required\":\"Repeat password\",\n		\"equals\":{\n			\"message\":\"Passwords do not match\"\n		}\n	}\n}`\n&formTpl=`@CODE:\n	<h2 class=\"form-signin-heading\">[*pagetitle*]</h2>\n<div class=\"form-remind user-form-card\">\n	[+form.messages+]\n	\n	<form method=\"post\">\n		<input type=\"hidden\" name=\"formid\" value=\"remind\">\n		<div class=\"form-group user-form-reg\">\n			<input type=\"text\" class=\"form-control entry-field\" id=\"email\" placeholder=\"Email\" name=\"email\" value=\"[+email.value+]\">\n			[+email.error+]\n		</div>\n\n		<div class=\"form-group user-form-reg\">\n			<button type=\"submit\" class=\"btn btn-primary btm-form\">[%Отправить%]</button>\n		</div>\n	</form>\n</div>`\n\n&resetTpl=`@CODE:\n	<h2 class=\"form-signin-heading\">[*pagetitle*]</h2>\n<div class=\"form-remind user-form-card\">\n	[+form.messages+]\n	\n	<form method=\"post\" class=\"\">\n		<input type=\"hidden\" name=\"formid\" value=\"remind\">\n		<div class=\"form-group user-form-reg\">\n			<input type=\"password\" class=\"form-control entry-field\" id=\"password1\" placeholder=\"New password\" name=\"password\" value=\"\">\n		</div>\n			<div class=\"form-group user-form-reg\">\n			[+password.error+]\n			<input type=\"password\" class=\"form-control entry-field\" id=\"password2\" placeholder=\"Repeat Password\" name=\"repeatPassword\" value=\"\">\n			[+repeatPassword.error+]\n		</div>\n		<div class=\"form-group user-form-reg\">\n			<button type=\"submit\" class=\"btn btn-primary btm-form\">[%Сохранить%]</button>\n		</div>\n	</form>\n</div>\n`\n&messagesOuterTpl=`@CODE:<div class=\"alert alert-danger\" role=\"alert\">[+messages+]</div>`\n&successTpl=`@CODE:\n<div class=\"form-reg\">\n	<div class=\"text-center\">[%Письмо с инструкциями отправлено по электронной почте, указанному при регистрации!%]</div>\n</div>`\n\n&subject=`Password recovery, [(site_name)]`\n&reportTpl=`@CODE:<p>[%Чтобы восстановить пароль, нажмите на ссылку%] <a href=\"[+reset.url+]\">[+reset.url+]</a></p>`\n&resetReportTpl=`@CODE:<p>[%Здравствуй%], [+fullname.value+]!</p><p>[%Ваш новый пароль%]: [+newpassword+]</p>`\n&resetTo=`[%reset-pass%]`\n&redirectTo=`[%in-page%]`\n&errorTpl=`@CODE:<span class=\"help-block\">[+message+]</span>`\n!]\n						\n		\n</div>\n\n{{inc_footer}}','0','1','1518427252','1518435954');

INSERT INTO `evo_site_templates` VALUES ('11','Регистрация','','0','0','','0','{{inc_meta}}\n{{inc_header}}\n\n<div class=\"content\">\n	[!FormLister?\n&formid=`register`\n&controller=`Register`\n&defaults=`{\"photo\":\"\"}`\n&keepDefaults=`photo`\n&rules=`{\n\"fullname\":{\n    \"required\":\"[%Обязательно введите%] имя\"\n},\n\"email\":{\n    \"required\":\"[%Обязательно введите%] email\",\n    \"email\":\"[%Введите email правильно%]\",\n    \"custom\":{\n        \"function\":\"\\\\FormLister\\\\Register::uniqueEmail\",\n        \"message\":\"[%Этот email уже использует другой пользователь%]\"\n    }\n},\n\"password\":{\n    \"required\":\"[%Обязательно введите%] пароль\",\n    \"minLength\":{\n        \"params\":6,\n        \"message\":\"[%В пароле должно быть больше 6 символов%]\"\n    }\n},\n\"repeatPassword\":{\n    \"required\":\"[%Повторите пароль%]\",\n    \"equals\":{\n        \"message\":\"[%Пароли не совпадают%]\"\n    }\n},\n\"agree\":{\n    \"required\":\"[%Для регистрации вы должны принять правила%]\"\n}\n}`\n&allowedFields=`email,password,username,fullname,country,photo,dob`\n&formControls=`agree`\n&prepare=`countryList`\n&formTpl=`@CODE:\n<div class=\"row user-form-card\">\n    <div class=\"col-md-6 col-md-offset-3\">\n        <div class=\"well\">\n            <form method=\"post\" enctype=\"multipart/form-data\">\n                <input type=\"hidden\" name=\"formid\" value=\"register\">\n                <div class=\"form-group[+fullname.errorClass+][+fullname.requiredClass+] user-form-reg\">\n                    \n                    <input type=\"text\" class=\"form-control entry-field\" id=\"fullname\" placeholder=\"[%Имя%]\" name=\"fullname\" value=\"[+fullname.value+]\">\n                    [+fullname.error+]\n                </div>\n                <div class=\"form-group[+email.errorClass+][+email.requiredClass+] user-form-reg\">\n                    \n                    <input type=\"text\" class=\"form-control entry-field\" id=\"email\" placeholder=\"Email\" name=\"email\" value=\"[+email.value+]\">\n                    [+email.error+]\n                </div>\n                <div class=\"row\">\n                    <div class=\"col-md-6\">\n                        <div class=\"form-group[+password.errorClass+][+password.requiredClass+] user-form-reg\">\n                            \n                            <input type=\"password\" class=\"form-control entry-field\" id=\"password\" placeholder=\"Пароль\" name=\"password\" value=\"\">\n                            [+password.error+]\n                        </div>\n                    </div>\n                    <div class=\"col-md-6\">\n                        <div class=\"form-group[+repeatPassword.errorClass+][+repeatPassword.requiredClass+] user-form-reg\">\n                            \n                            <input type=\"password\" class=\"form-control entry-field\" id=\"repeatPassword\" placeholder=\"[%Повторите пароль%]\" name=\"repeatPassword\" value=\"\">\n                            [+repeatPassword.error+]\n                        </div>\n                    </div>\n                </div>\n                <div class=\"checkbox[+agree.requiredClass+] user-form-reg checkbox\">\n                    <label>\n                        <input type=\"checkbox\" name=\"agree\" value=\"Да\" [+c.agree.Да+]>\n						<div class=\"checkbox__text\">[%Я согласен с правилами%]</div>\n                    </label>\n                    [+agree.error+]\n                </div>\n                [+form.messages+]\n                <div class=\"form-group user-form-reg\">\n                    <button type=\"submit\" class=\"btn btn-primary btn-block text-center btm-form\"><i class=\"glyphicon glyphicon-user\"></i> [%Зарегистрироваться%]</button>\n                </div>\n            </form>\n        </div>\n    </div>\n</div>`\n&messagesOuterTpl=`@CODE:<div class=\"alert alert-danger\" role=\"alert\">[+messages+]</div>`\n&successTpl=`@CODE:<div>[%Поздравляем с успешной регистрацией%], [+fullname.value+]! [%Теперь вы можете%] <a href=\"[~[%home-page%]~]\">[%авторизоваться%]</a> [%на сайте%].</div>`\n&errorTpl=`@CODE:<span class=\"help-block\">[+message+]</span>`\n&errorClass=` has-error`\n&requiredClass=` has-warning`\n!]\n</div>\n\n{{inc_footer}}','0','1','1518073556','1518425415');


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
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Content Values Link Table';

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

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('50','4','106','ru:18||ua:106');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('49','4','18','ru:18||ua:106');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('48','7','106','3');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('21','7','25','1009');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('22','7','43','8');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('23','7','31','8');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('25','7','20','13');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('26','7','18','8');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('27','7','15','7');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('28','7','23','14');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('29','7','13','5');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('30','7','27','1');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('31','7','33','3');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('157','8','94','[[\"Лицевой счет\",\"\"],[\"Адрес\",\"\"],[\"Телефон\",\"\"],[\"Основной квартиросъемщик\",\"\"],[\"Район\",\"\"],[\"Котельная\",\"\"],[\"Адрес и телефон абонентного участка\",\"\"],[\"Общая площадь, м3\",\"\"],[\"Отапливаемая площадь, м3\",\"\"],[\"Количество проживающих, чел.\",\"\"],[\"Льгота\",\"\"],[\"Услуга по центральному отоплению\",\"\"],[\"Услуга по горячей воде\",\"\"]]');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('47','4','105','ru:15||ua:105');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('34','7','44','1');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('45','7','105','6');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('46','4','15','ru:15||ua:105');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('44','4','104','ru:13||ua:104');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('42','7','104','3');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('43','4','13','ru:13||ua:104');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('51','7','107','10');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('52','4','20','ru:20||ua:107');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('53','4','107','ru:20||ua:107');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('54','7','108','11');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('55','4','23','ru:23||ua:108');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('56','4','108','ru:23||ua:108');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('57','4','82','ru:82||ua:109');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('58','4','109','ru:82||ua:109');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('59','4','93','ru:93||ua:110');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('60','4','110','ru:93||ua:110');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('61','4','94','ru:94||ua:111');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('62','4','111','ru:94||ua:111');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('63','4','95','ru:95||ua:112');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('64','4','112','ru:95||ua:112');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('65','4','96','ru:96||ua:113');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('66','4','113','ru:96||ua:113');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('67','7','114','1007');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('68','4','25','ru:25||ua:114');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('69','4','114','ru:25||ua:114');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('70','4','26','ru:26||ua:115');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('71','4','115','ru:26||ua:115');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('72','7','116','2');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('73','4','27','ru:27||ua:116');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('74','4','116','ru:27||ua:116');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('75','4','28','ru:28||ua:117');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('76','4','117','ru:28||ua:117');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('77','4','29','ru:29||ua:118');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('78','4','118','ru:29||ua:118');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('79','4','30','ru:30||ua:119');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('80','4','119','ru:30||ua:119');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('81','7','120','7');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('82','4','31','ru:31||ua:120');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('83','4','120','ru:31||ua:120');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('84','4','32','ru:32||ua:121');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('85','4','121','ru:32||ua:121');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('86','7','122','1');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('87','4','33','ru:33||ua:122');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('88','4','122','ru:33||ua:122');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('89','4','34','ru:34||ua:123');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('90','4','123','ru:34||ua:123');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('91','4','35','ru:35||ua:124');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('92','4','124','ru:35||ua:124');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('93','4','36','ru:36||ua:125');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('94','4','125','ru:36||ua:125');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('95','4','37','ru:37||ua:126');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('96','4','126','ru:37||ua:126');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('97','4','38','ru:38||ua:127');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('98','4','127','ru:38||ua:127');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('99','4','39','ru:39||ua:128');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('100','4','128','ru:39||ua:128');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('101','4','40','ru:40||ua:129');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('102','4','129','ru:40||ua:129');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('103','4','41','ru:41||ua:130');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('104','4','130','ru:41||ua:130');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('105','4','42','ru:42||ua:131');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('106','4','131','ru:42||ua:131');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('107','7','132','10');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('108','4','43','ru:43||ua:132');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('109','4','132','ru:43||ua:132');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('110','7','133','1');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('111','4','44','ru:44||ua:133');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('112','4','133','ru:44||ua:133');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('113','4','45','ru:45||ua:134');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('114','4','134','ru:45||ua:134');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('115','4','46','ru:46||ua:135');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('116','4','135','ru:46||ua:135');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('117','4','47','ru:47||ua:136');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('118','4','136','ru:47||ua:136');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('119','4','48','ru:48||ua:137');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('120','4','137','ru:48||ua:137');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('121','4','49','ru:49||ua:138');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('122','4','138','ru:49||ua:138');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('123','4','50','ru:50||ua:139');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('124','4','139','ru:50||ua:139');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('125','4','51','ru:51||ua:140');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('126','4','140','ru:51||ua:140');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('127','4','52','ru:52||ua:141');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('128','4','141','ru:52||ua:141');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('129','6','142','assets/images/news/4.png');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('155','5','94','[[\"TEEREERTRETERT\",\"RETETRETE\"]]');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('131','4','84','ru:84||ua:142');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('132','4','142','ru:84||ua:142');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('133','5','143','[[\"Заголовыок 1\",\"Заголовыок 2\",\"Заголовыок 3\",\"Заголовыок 4\",\"Заголовыок 5\"],[\"1.1\",\"1.2\",\"1.3\",\"1.4\",\"1.5\"],[\"2.1\",\"2.2\",\"2.3\",\"2.4\",\"2.5\"],[\"3.1\",\"3.2\",\"3.3\",\"3.4\",\"3.5\"],[\"4.1\",\"4.2\",\"4.3\",\"4.4\",\"4.5\"]]');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('134','6','143','assets/images/news/4.png');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('156','7','86','4');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('136','4','86','ru:86||ua:143');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('137','4','143','ru:86||ua:143');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('138','6','144','assets/images/news/4.png');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('140','4','87','ru:87||ua:144');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('141','4','144','ru:87||ua:144');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('142','6','145','assets/images/news/4.png');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('143','4','88','ru:88||ua:145');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('144','4','145','ru:88||ua:145');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('145','7','30','1');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('146','4','146','ru:146||ua:147');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('147','4','147','ru:146||ua:147');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('148','7','37','2');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('152','7','26','2');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('151','7','35','1');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('153','7','115','2');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('154','7','32','1');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('158','7','84','1');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('159','7','28','1');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('160','7','119','1');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('161','7','139','1');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('162','7','145','1');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('163','7','136','2');

INSERT INTO `evo_site_tmplvar_contentvalues` VALUES ('164','7','138','1');


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

INSERT INTO `evo_site_tmplvar_templates` VALUES ('4','12','4');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('6','5','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('7','5','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('2','3','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('1','6','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('1','7','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('2','5','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('1','3','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('2','6','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('2','7','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('1','5','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('3','3','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('3','6','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('3','7','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('3','5','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('3','10','1');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('2','10','2');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('1','10','3');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('4','10','4');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('5','5','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('1','12','3');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('2','12','2');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('4','6','1');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('3','11','1');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('2','11','2');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('1','11','3');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('4','11','4');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('4','7','1');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('3','13','1');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('2','13','2');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('1','13','3');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('4','13','4');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('3','12','1');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('8','12','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('14','12','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('9','12','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('10','12','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('12','12','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('13','5','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('11','12','0');

INSERT INTO `evo_site_tmplvar_templates` VALUES ('13','12','5');


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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables';

#
# Dumping data for table `evo_site_tmplvars`
#

INSERT INTO `evo_site_tmplvars` VALUES ('1','text','titl','Meta title','Meta title','0','1','0','','0','','','[*pagetitle*] - [(site_name)]','0','1515579519');

INSERT INTO `evo_site_tmplvars` VALUES ('2','text','keyw','Meta keywords','Meta keywords','0','1','0','','0','','','[*pagetitle*]','0','1515579510');

INSERT INTO `evo_site_tmplvars` VALUES ('3','textarea','desc','Meta description','Meta description','0','1','0','','0','','','[*introtext*]','0','1515579528');

INSERT INTO `evo_site_tmplvars` VALUES ('4','custom_tv','relation','Языковые версии ресурса','','0','0','0','@EVAL return $modx->runSnippet(\"evoBabel\"); ','0','','','','1507650714','1507650714');

INSERT INTO `evo_site_tmplvars` VALUES ('5','text','table','Таблица','','0','15','0','','0','','','','1511180225','1527676589');

INSERT INTO `evo_site_tmplvars` VALUES ('6','image','image','Картинка','','0','0','0','','0','','','','1511183048','1511183048');

INSERT INTO `evo_site_tmplvars` VALUES ('7','text','countViews','countViews','','0','0','0','','0','','','','1514371959','1514371959');

INSERT INTO `evo_site_tmplvars` VALUES ('8','text','tableUser','tableUser','','0','15','0','','0','','','','1527674153','1527676608');

INSERT INTO `evo_site_tmplvars` VALUES ('9','text','tableRevise','tableRevise','','0','15','0','','0','','','','1527676662','1527677786');

INSERT INTO `evo_site_tmplvars` VALUES ('10','text','tableReceipt','tableReceipt','','0','15','0','','0','','','','1527676714','1527677775');

INSERT INTO `evo_site_tmplvars` VALUES ('11','text','tableContract','tableContract','','0','15','0','','0','','','','1527676781','1527677750');

INSERT INTO `evo_site_tmplvars` VALUES ('12','text','tablePayments','tablePayments','','0','15','0','','0','','','','1527676830','1527677760');

INSERT INTO `evo_site_tmplvars` VALUES ('13','text','tableMetr','tableMetr','','0','15','0','','0','','','','1527678428','1527678428');

INSERT INTO `evo_site_tmplvars` VALUES ('14','text','tableSub','tableSub','','0','15','0','','0','','','','1527678536','1527678536');


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

INSERT INTO `evo_system_settings` VALUES ('settings_version','1.4.3');

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

INSERT INTO `evo_system_settings` VALUES ('site_id','5b0e736fc56bd');

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

INSERT INTO `evo_system_settings` VALUES ('sys_files_checksum','a:4:{s:55:\"/home/host1488038/lector-web.com/htdocs/teplo/index.php\";s:32:\"cdc22609f8a321de87c7305a478d42aa\";s:55:\"/home/host1488038/lector-web.com/htdocs/teplo/.htaccess\";s:32:\"4a85d88f437a75e2d2b008debc0eaec6\";s:63:\"/home/host1488038/lector-web.com/htdocs/teplo/manager/index.php\";s:32:\"95efdfa243c95d259353257ebd2235b1\";s:77:\"/home/host1488038/lector-web.com/htdocs/teplo/manager/includes/config.inc.php\";s:32:\"f56f68ab135133af7bff032c5d9778f7\";}');

INSERT INTO `evo_system_settings` VALUES ('enable_at_syntax','1');

INSERT INTO `evo_system_settings` VALUES ('global_tabs','1');

INSERT INTO `evo_system_settings` VALUES ('show_picker','1');

INSERT INTO `evo_system_settings` VALUES ('show_newresource_btn','1');

INSERT INTO `evo_system_settings` VALUES ('show_fullscreen_btn','1');

INSERT INTO `evo_system_settings` VALUES ('email_sender_method','1');

INSERT INTO `evo_system_settings` VALUES ('manager_theme_mode','3');

INSERT INTO `evo_system_settings` VALUES ('tinymce4_skintheme','inlite');


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

INSERT INTO `evo_user_attributes` VALUES ('1','1','Admin','1','beninbenino@gmail.com','','','0','1528612889','0','153','1528624311','1529570303','0','fb64102156b0bf9c422b038da558b812','0','0','','','','','','','','','0','0');


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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Contains information for web users.';

#
# Dumping data for table `evo_web_user_attributes`
#

INSERT INTO `evo_web_user_attributes` VALUES ('1','1','Френк','0','beninbenino@gmail.com','','','0','0','0','50','1527587427','1527673985','0','65c3b486c9cbb8029adefe021a9e55d4','0','0','','','','','','','','','1518083437','0');

INSERT INTO `evo_web_user_attributes` VALUES ('2','2','Енотик','0','123@gmail.com','','','0','0','0','1','1518199318','1518199318','0','69523d13a346ddf7783843eaf448e2e2','0','0','','','','','','','','','1518199306','0');

INSERT INTO `evo_web_user_attributes` VALUES ('3','3','Никифор','0','dereon.avynn@loanins.org','','','0','0','0','0','0','0','0','fdeffccda2075d0588515415d015cb95','0','0','','','','','','','','','1518431521','0');

INSERT INTO `evo_web_user_attributes` VALUES ('4','4','dsdsd','0','zjt35481@miauj.com','','','0','0','0','1','1518433288','1518433288','0','e9beb4ec1ffce71fe513003a421cf1c3','0','0','','','','','','','','','1518433269','0');

INSERT INTO `evo_web_user_attributes` VALUES ('5','5','efesfefs','0','tat47630@sawoe.com','','','0','0','0','2','1518433588','1518433636','0','2bce1bc54006d04e3ce00f0c8b826106','0','0','','','','','','','','','1518433562','0');

INSERT INTO `evo_web_user_attributes` VALUES ('6','6','юля','0','ulitka7070@gmail.com','','','0','0','0','1','1518538286','1518538286','0','fe54ac1293862320fa6bc58e7679e187','0','0','','','','','','','','','1518538274','0');

INSERT INTO `evo_web_user_attributes` VALUES ('7','7','Елена Луценко','0','fortelena@ukr.net','','','0','0','0','3','1519218144','1529499581','0','18498449a0a79a1bbf3c51a8a1c5139c','0','0','','','','','','','','','1519214628','0');

INSERT INTO `evo_web_user_attributes` VALUES ('8','8','Николай','0','kovalenko1988@icloud.com','','','0','0','0','3','1519990322','1527159806','0','2fb43b61fdfedbf8f08feba667c3876c','0','0','','','','','','','','','1519989676','0');


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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Dumping data for table `evo_web_users`
#

INSERT INTO `evo_web_users` VALUES ('1','beninbenino@gmail.com','623bc769edbf23faf628f2657e0afda9','');

INSERT INTO `evo_web_users` VALUES ('2','123@gmail.com','e10adc3949ba59abbe56e057f20f883e','');

INSERT INTO `evo_web_users` VALUES ('3','dereon.avynn@loanins.org','945f9ed92691951ad2636d08c37fb281','');

INSERT INTO `evo_web_users` VALUES ('4','zjt35481@miauj.com','6fb42da0e32e07b61c9f0251fe627a9c','');

INSERT INTO `evo_web_users` VALUES ('5','tat47630@sawoe.com','6fb42da0e32e07b61c9f0251fe627a9c','');

INSERT INTO `evo_web_users` VALUES ('6','ulitka7070@gmail.com','1b6a71d2c7d3d301127a17d9bae94f9a','');

INSERT INTO `evo_web_users` VALUES ('7','fortelena@ukr.net','25d55ad283aa400af464c76d713c07ad','');

INSERT INTO `evo_web_users` VALUES ('8','kovalenko1988@icloud.com','a3c5a73e856b52777650019828a50ff9','');


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
