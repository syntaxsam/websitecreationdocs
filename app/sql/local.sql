-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-09-29 20:55:16','2020-09-29 20:55:16','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=407 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://websitecreationdocs.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://websitecreationdocs.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','websitecreationdocs','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','samsmith.creative@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=47&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:49:\"easy-table-of-contents/easy-table-of-contents.php\";i:1;s:61:\"sticky-menu-or-anything-on-scroll/sticky-menu-or-anything.php\";i:2;s:27:\"svg-support/svg-support.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','understrap','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','understrap-child','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','48748','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:4:{i:1;a:0:{}i:3;a:4:{s:5:\"title\";s:17:\"Table of contents\";s:4:\"text\";s:256:\"<ul>\r\n 	<li>Table of contents link</li>\r\n 	<li>Table of contents link</li>\r\n 	<li>Table of contents link</li>\r\n 	<li>Table of contents link</li>\r\n 	<li>Table of contents link</li>\r\n 	<li>Table of contents link</li>\r\n 	<li>Table of contents link</li>\r\n</ul>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:414:\"<strong>Websitecreationdocs.com is a free resource site for helping people to create, customize and improve their websites.</strong>\r\n\r\n<strong>Advertiser Disclosure:</strong> WebsiteSetup.org earns commission from some of the services listed on this site. We only recommend services (or products) that we’ve found great for our visitors. <a href=\"https://websitesetup.org/advertiser-disclosure/\">Read more</a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','47','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1616964916','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'initial_db_version','48748','yes');
INSERT INTO `wp_options` VALUES (96,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (97,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (98,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:8:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"right-sidebar\";a:1:{i:0;s:9:\"ezw_tco-3\";}s:12:\"left-sidebar\";a:1:{i:0;s:10:\"nav_menu-4\";}s:4:\"hero\";a:0:{}s:10:\"herocanvas\";a:0:{}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:2:{i:0;s:10:\"nav_menu-5\";i:1;s:6:\"text-4\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:6:{i:1611377717;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1611392117;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1611435317;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1611435610;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1611780917;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'nonce_key','M7S!xoP-f%h2xY6>fP3>$D=$|_t6xWm3^V}FJd[A-nAL}&Q@<K9QLy|tvz2|rZ6n','no');
INSERT INTO `wp_options` VALUES (112,'nonce_salt','H#_Nv:[%%(=0lk)LiRobo1Mxw|5DHy/RVKUF+ftz[kHN`SVvl3,7xALF>4tm~+4f','no');
INSERT INTO `wp_options` VALUES (113,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_nav_menu','a:3:{i:4;a:1:{s:8:\"nav_menu\";i:3;}i:5;a:1:{s:8:\"nav_menu\";i:2;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (118,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.5.3-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-rollback-1.zip\";}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:5:\"5.5.1\";s:9:\"new_files\";s:0:\"\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.5.2-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.2-rollback-1.zip\";}s:7:\"current\";s:5:\"5.5.2\";s:7:\"version\";s:5:\"5.5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:5:\"5.5.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1611377537;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1611377538;s:7:\"checked\";a:5:{s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";s:16:\"understrap-child\";s:5:\"0.5.5\";s:10:\"understrap\";s:5:\"0.9.4\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.9.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:9:\"no_update\";a:1:{s:10:\"understrap\";a:6:{s:5:\"theme\";s:10:\"understrap\";s:11:\"new_version\";s:5:\"0.9.4\";s:3:\"url\";s:40:\"https://wordpress.org/themes/understrap/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/understrap.0.9.4.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (125,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1601413219;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (127,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (135,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (146,'current_theme','UnderStrap Child','yes');
INSERT INTO `wp_options` VALUES (147,'theme_mods_understrap-child','a:7:{i:0;b:0;s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:4:\"both\";s:25:\"understrap_container_type\";s:15:\"container-fluid\";s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"mobile\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:45;}','yes');
INSERT INTO `wp_options` VALUES (148,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (176,'nav_menu_options','a:1:{s:8:\"auto_add\";a:1:{i:1;i:3;}}','yes');
INSERT INTO `wp_options` VALUES (194,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (201,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (207,'_transient_health-check-site-status-result','{\"good\":10,\"recommended\":8,\"critical\":2}','yes');
INSERT INTO `wp_options` VALUES (278,'widget_ezw_tco','a:2:{s:12:\"_multiwidget\";i:1;i:3;a:4:{s:5:\"title\";s:17:\"Table of Contents\";s:5:\"affix\";s:1:\"1\";s:15:\"highlight_color\";s:7:\"#ededed\";s:11:\"hide_inline\";s:1:\"0\";}}','yes');
INSERT INTO `wp_options` VALUES (279,'ez-toc-settings','a:39:{s:15:\"fragment_prefix\";s:1:\"i\";s:8:\"position\";s:3:\"top\";s:5:\"start\";s:1:\"3\";s:17:\"show_heading_text\";s:1:\"1\";s:12:\"heading_text\";s:17:\"Table of Contents\";s:18:\"enabled_post_types\";a:3:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";s:10:\"custom_css\";s:10:\"custom_css\";}s:14:\"show_hierarchy\";s:1:\"1\";s:7:\"counter\";s:4:\"none\";s:13:\"smooth_scroll\";s:1:\"1\";s:20:\"smooth_scroll_offset\";s:2:\"30\";s:10:\"visibility\";s:1:\"1\";s:5:\"width\";s:4:\"auto\";s:12:\"width_custom\";s:3:\"275\";s:18:\"width_custom_units\";s:2:\"px\";s:8:\"wrapping\";s:4:\"none\";s:15:\"title_font_size\";s:3:\"120\";s:21:\"title_font_size_units\";s:1:\"%\";s:17:\"title_font_weight\";s:3:\"500\";s:9:\"font_size\";s:2:\"95\";s:15:\"font_size_units\";s:1:\"%\";s:5:\"theme\";s:5:\"white\";s:24:\"custom_background_colour\";s:4:\"#fff\";s:20:\"custom_border_colour\";s:4:\"#ddd\";s:19:\"custom_title_colour\";s:4:\"#999\";s:18:\"custom_link_colour\";s:7:\"#428bca\";s:24:\"custom_link_hover_colour\";s:7:\"#2a6496\";s:26:\"custom_link_visited_colour\";s:7:\"#428bca\";s:14:\"heading_levels\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:1:\"5\";i:6;s:1:\"6\";}s:19:\"css_container_class\";s:0:\"\";s:21:\"widget_affix_selector\";s:14:\"#right-sidebar\";s:22:\"auto_insert_post_types\";a:3:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";s:10:\"custom_css\";s:10:\"custom_css\";}s:7:\"exclude\";s:0:\"\";s:27:\"mobile_smooth_scroll_offset\";s:1:\"0\";s:13:\"restrict_path\";s:0:\"\";s:26:\"visibility_hide_by_default\";s:1:\"0\";s:9:\"lowercase\";s:1:\"0\";s:9:\"hyphenate\";s:1:\"0\";s:16:\"include_homepage\";s:1:\"0\";s:11:\"exclude_css\";s:1:\"0\";}','yes');
INSERT INTO `wp_options` VALUES (291,'sticky_anything_options','a:13:{s:10:\"sa_version\";s:5:\"2.1.1\";s:10:\"sa_element\";s:7:\".ez-toc\";s:11:\"sa_topspace\";s:2:\"40\";s:11:\"sa_adminbar\";b:1;s:17:\"sa_minscreenwidth\";s:0:\"\";s:17:\"sa_maxscreenwidth\";s:0:\"\";s:9:\"sa_zindex\";s:0:\"\";s:13:\"sa_legacymode\";b:0;s:14:\"sa_dynamicmode\";b:0;s:12:\"sa_debugmode\";b:0;s:9:\"sa_pushup\";s:0:\"\";s:27:\"sa_hide_review_notification\";b:0;s:6:\"sa_tab\";s:4:\"main\";}','yes');
INSERT INTO `wp_options` VALUES (292,'wp301promo','a:1:{s:49:\"popup_dismissed_sticky-menu-or-anything-on-scroll\";b:1;}','yes');
INSERT INTO `wp_options` VALUES (342,'bodhi_svgs_plugin_version','2.3.18','yes');
INSERT INTO `wp_options` VALUES (343,'bodhi_svgs_settings','a:2:{s:12:\"frontend_css\";s:2:\"on\";s:10:\"css_target\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (350,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1611377537;s:8:\"response\";a:2:{s:49:\"easy-table-of-contents/easy-table-of-contents.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/easy-table-of-contents\";s:4:\"slug\";s:22:\"easy-table-of-contents\";s:6:\"plugin\";s:49:\"easy-table-of-contents/easy-table-of-contents.php\";s:11:\"new_version\";s:6:\"2.0.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/easy-table-of-contents/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/easy-table-of-contents.2.0.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/easy-table-of-contents/assets/icon-256x256.png?rev=1241658\";s:2:\"1x\";s:75:\"https://ps.w.org/easy-table-of-contents/assets/icon-128x128.png?rev=1241658\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/easy-table-of-contents/assets/banner-1544x500.png?rev=1241665\";s:2:\"1x\";s:77:\"https://ps.w.org/easy-table-of-contents/assets/banner-772x250.png?rev=1241665\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:61:\"sticky-menu-or-anything-on-scroll/sticky-menu-or-anything.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:47:\"w.org/plugins/sticky-menu-or-anything-on-scroll\";s:4:\"slug\";s:33:\"sticky-menu-or-anything-on-scroll\";s:6:\"plugin\";s:61:\"sticky-menu-or-anything-on-scroll/sticky-menu-or-anything.php\";s:11:\"new_version\";s:4:\"2.28\";s:3:\"url\";s:64:\"https://wordpress.org/plugins/sticky-menu-or-anything-on-scroll/\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/plugin/sticky-menu-or-anything-on-scroll.2.28.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:86:\"https://ps.w.org/sticky-menu-or-anything-on-scroll/assets/icon-256x256.png?rev=2391575\";s:2:\"1x\";s:86:\"https://ps.w.org/sticky-menu-or-anything-on-scroll/assets/icon-128x128.png?rev=2391575\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:89:\"https://ps.w.org/sticky-menu-or-anything-on-scroll/assets/banner-1544x500.png?rev=2391657\";s:2:\"1x\";s:88:\"https://ps.w.org/sticky-menu-or-anything-on-scroll/assets/banner-772x250.png?rev=2391646\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"5.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:6:\"2.3.18\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/svg-support.2.3.18.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/svg-support/assets/icon-256x256.png?rev=1417738\";s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (380,'_transient_is_multi_author','0','yes');
INSERT INTO `wp_options` VALUES (403,'_site_transient_timeout_theme_roots','1611379338','no');
INSERT INTO `wp_options` VALUES (404,'_site_transient_theme_roots','a:5:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:16:\"understrap-child\";s:7:\"/themes\";s:10:\"understrap\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (405,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1611982338','no');
INSERT INTO `wp_options` VALUES (406,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (5,6,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (6,6,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (7,6,'_menu_item_object_id','6');
INSERT INTO `wp_postmeta` VALUES (8,6,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (9,6,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (10,6,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (11,6,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (12,6,'_menu_item_url','//localhost:3000/');
INSERT INTO `wp_postmeta` VALUES (13,6,'_menu_item_orphaned','1601475626');
INSERT INTO `wp_postmeta` VALUES (14,7,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (15,7,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (16,7,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (17,7,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (18,7,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (19,7,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (20,7,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (21,7,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (22,7,'_menu_item_orphaned','1601475626');
INSERT INTO `wp_postmeta` VALUES (29,12,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (30,12,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (31,12,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (32,12,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (33,12,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (34,12,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (35,12,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (36,12,'_menu_item_url','http://websitecreationdocs.local');
INSERT INTO `wp_postmeta` VALUES (70,2,'_edit_lock','1603828914:1');
INSERT INTO `wp_postmeta` VALUES (71,24,'_edit_lock','1601499162:1');
INSERT INTO `wp_postmeta` VALUES (72,26,'_edit_lock','1601499198:1');
INSERT INTO `wp_postmeta` VALUES (73,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (74,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (75,27,'_menu_item_object_id','26');
INSERT INTO `wp_postmeta` VALUES (76,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (77,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (78,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (79,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (80,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (81,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (82,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (83,29,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (84,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (85,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (86,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (87,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (88,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (90,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (91,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (92,30,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (93,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (94,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (95,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (96,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (97,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (99,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (100,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (101,31,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (102,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (103,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (104,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (105,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (106,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (108,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (109,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (110,32,'_menu_item_object_id','26');
INSERT INTO `wp_postmeta` VALUES (111,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (112,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (113,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (114,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (115,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (117,33,'_edit_lock','1601499405:1');
INSERT INTO `wp_postmeta` VALUES (118,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (119,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (120,34,'_menu_item_object_id','33');
INSERT INTO `wp_postmeta` VALUES (121,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (122,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (123,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (124,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (125,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (130,2,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (131,2,'_ez-toc-disabled','1');
INSERT INTO `wp_postmeta` VALUES (132,2,'_ez-toc-insert','');
INSERT INTO `wp_postmeta` VALUES (133,2,'_ez-toc-heading-levels','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (134,2,'_ez-toc-alttext','');
INSERT INTO `wp_postmeta` VALUES (135,2,'_ez-toc-exclude','');
INSERT INTO `wp_postmeta` VALUES (144,45,'_wp_attached_file','2020/10/websiteCreationDocs_logo.svg');
INSERT INTO `wp_postmeta` VALUES (145,45,'_wp_attachment_metadata','a:4:{s:5:\"width\";i:249;s:6:\"height\";i:44;s:4:\"file\";s:37:\"/2020/10/websiteCreationDocs_logo.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:28:\"websiteCreationDocs_logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:28:\"websiteCreationDocs_logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:28:\"websiteCreationDocs_logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:28:\"websiteCreationDocs_logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:28:\"websiteCreationDocs_logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:28:\"websiteCreationDocs_logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}');
INSERT INTO `wp_postmeta` VALUES (146,45,'_wp_attachment_image_alt','Website Creation Docs');
INSERT INTO `wp_postmeta` VALUES (149,47,'inline_featured_image','0');
INSERT INTO `wp_postmeta` VALUES (150,47,'_edit_lock','1603828049:1');
INSERT INTO `wp_postmeta` VALUES (151,48,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (152,48,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (153,48,'_menu_item_object_id','47');
INSERT INTO `wp_postmeta` VALUES (154,48,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (155,48,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (156,48,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (157,48,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (158,48,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (159,47,'_wp_page_template','page-templates/empty.php');
INSERT INTO `wp_postmeta` VALUES (160,47,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (161,47,'_ez-toc-disabled','1');
INSERT INTO `wp_postmeta` VALUES (162,47,'_ez-toc-insert','');
INSERT INTO `wp_postmeta` VALUES (163,47,'_ez-toc-heading-levels','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (164,47,'_ez-toc-alttext','');
INSERT INTO `wp_postmeta` VALUES (165,47,'_ez-toc-exclude','');
INSERT INTO `wp_postmeta` VALUES (169,52,'inline_featured_image','0');
INSERT INTO `wp_postmeta` VALUES (170,52,'_edit_lock','1603828751:1');
INSERT INTO `wp_postmeta` VALUES (171,53,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (172,53,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (173,53,'_menu_item_object_id','52');
INSERT INTO `wp_postmeta` VALUES (174,53,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (175,53,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (176,53,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (177,53,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (178,53,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (179,52,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (180,52,'_ez-toc-disabled','');
INSERT INTO `wp_postmeta` VALUES (181,52,'_ez-toc-insert','');
INSERT INTO `wp_postmeta` VALUES (182,52,'_ez-toc-heading-levels','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (183,52,'_ez-toc-alttext','');
INSERT INTO `wp_postmeta` VALUES (184,52,'_ez-toc-exclude','');
INSERT INTO `wp_postmeta` VALUES (185,2,'inline_featured_image','0');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-09-29 20:55:16','2020-09-29 20:55:16','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-09-29 20:55:16','2020-09-29 20:55:16','',0,'http://websitecreationdocs.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-09-29 20:55:16','2020-09-29 20:55:16','<!-- wp:paragraph -->\n<p>Nulla sodales condimentum ante ac mattis. In nibh velit, vestibulum sed purus eu, sollicitudin sagittis lacus. Class <strong>aptent taciti sociosqu</strong> ad litora torquent per conubia nostra, per inceptos himenaeos. Sed sodales metus leo, sed sodales mi volutpat ac. Donec <a href=\"/\">scelerisque nibh</a> odio, eu ringilla felis luctus ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:3000/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Heading One Example</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper semper tortor, vitae elementum odio posuere ac. Phasellus at pellentesque purus. Aenean pulvinar elit sit amet nibh consequat posuere. Sed cursus feugiat libero, quis maximus lectus euismod ut. Nullam ante velit, ornare in gravida ut, hendrerit vitae felis. Phasellus sed imperdiet eros. Ut id cursus odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aenean euismod aliquam fringilla. Morbi eu nulla a augue sagittis condimentum. Quisque dapibus dui massa, ut pretium ipsum rutrum id. Etiam neque nulla, convallis in sollicitudin id, iaculis vel enim. Duis eleifend tincidunt justo sit amet sodales. Aliquam ultrices diam ut egestas faucibus. Suspendisse sed aliquam lectus. Aliquam dictum nibh nibh, at consequat metus mollis non. Sed sed lobortis lorem. Nullam lorem nulla, placerat in dui at, posuere tempor tortor. Vivamus elementum mauris a velit molestie tempus. Duis sed elit justo. Suspendisse viverra aliquet arcu, sed feugiat elit semper rhoncus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Heading Two Man Geez Man</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Quisque gravida in enim vel ornare. Vestibulum non sem ac purus ornare egestas et et dolor. Integer vestibulum, ligula non tempor vestibulum, orci ligula placerat purus, fermentum aliquam purus diam sit amet lectus. Morbi maximus non lacus sed fermentum. Nullam a elementum nisl, id facilisis justo. Nulla enim lacus, pharetra eget commodo vitae, malesuada in leo. Suspendisse potenti. Pellentesque molestie lorem eget congue iaculis. Donec pharetra et neque eget laoreet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque nec mi lectus. Praesent sagittis metus in sem eleifend, sit amet posuere orci accumsan. Quisque laoreet, velit nec rutrum ornare, orci nisl iaculis felis, quis accumsan ante sem nec turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis justo at arcu vehicula rhoncus. In tincidunt dolor sit amet tortor fermentum interdum. Aliquam viverra lectus purus, a viverra arcu auctor id. Nunc velit dui, maximus nec ornare et, aliquam quis lacus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Yo This is a Heading h3 bro geez</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;Donec vestibulum justo dui, quis scelerisque nulla euismod vel. Aenean sit amet tellus ac arcu placerat cursus. In facilisis, odio eu gravida dapibus, lorem risus gravida massa, eget gravida mi leo sed neque. Fusce a tellus a erat euismod vestibulum. Phasellus nunc magna, sagittis quis libero sit amet, dignissim lacinia neque. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus euismod augue nec dolor elementum ullamcorper. Mauris sed nunc hendrerit, volutpat tortor convallis, suscipit turpis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Flaven Mah Javens</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus euismod augue nec dolor elementum ullamcorper. Mauris sed nunc hendrerit, volutpat tortor convallis, suscipit turpis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris nibh mauris, semper et diam suscipit, vestibulum feugiat erat. In euismod lacus convallis mi ullamcorper, non interdum leo hendrerit. Aliquam aliquet elit nec ultrices rhoncus. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Sharlavens haha</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus euismod augue nec dolor elementum ullamcorper. Mauris sed nunc hendrerit, volutpat tortor convallis, suscipit turpis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris nibh mauris, semper et diam suscipit, vestibulum feugiat erat. In euismod lacus convallis mi ullamcorper, non interdum leo hendrerit. Aliquam aliquet elit nec ultrices rhoncus.&nbsp;</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2020-10-27 20:01:53','2020-10-27 20:01:53','',0,'http://websitecreationdocs.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-09-29 20:55:16','2020-09-29 20:55:16','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://websitecreationdocs.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2020-09-29 20:55:16','2020-09-29 20:55:16','',0,'http://websitecreationdocs.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-09-30 14:20:26','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2020-09-30 14:20:26','0000-00-00 00:00:00','',0,'http://websitecreationdocs.local/?p=6',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-09-30 14:20:26','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-09-30 14:20:26','0000-00-00 00:00:00','',0,'http://websitecreationdocs.local/?p=7',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-09-30 14:23:37','2020-09-30 14:23:37','','Home','','publish','closed','closed','','home','','','2020-09-30 20:58:07','2020-09-30 20:58:07','',0,'http://websitecreationdocs.local/home/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-09-30 19:54:29','2020-09-30 19:54:29','<!-- wp:paragraph -->\n<p>Nulla sodales condimentum ante ac mattis. In nibh velit, vestibulum sed purus eu, sollicitudin sagittis lacus. Class <strong>aptent taciti sociosqu</strong> ad litora torquent per conubia nostra, per inceptos himenaeos. Sed sodales metus leo, sed sodales mi volutpat ac. Donec <a href=\"/\">scelerisque nibh</a> odio, eu ringilla felis luctus ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:3000/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2020-09-30 19:54:29','2020-09-30 19:54:29','',2,'http://websitecreationdocs.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-09-30 19:56:32','2020-09-30 19:56:32','<!-- wp:paragraph -->\n<p>Nulla sodales condimentum ante ac mattis. In nibh velit, vestibulum sed purus eu, sollicitudin sagittis lacus. Class <strong>aptent taciti sociosqu</strong> ad litora torquent per conubia nostra, per inceptos himenaeos. Sed sodales metus leo, sed sodales mi volutpat ac. Donec <a href=\"/\">scelerisque nibh</a> odio, eu ringilla felis luctus ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:3000/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2020-09-30 19:56:32','2020-09-30 19:56:32','',2,'http://websitecreationdocs.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-09-30 20:53:25','2020-09-30 20:53:25','<!-- wp:paragraph -->\n<p>This will be the about us page.</p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2020-09-30 20:53:25','2020-09-30 20:53:25','',0,'http://websitecreationdocs.local/?page_id=24',0,'page','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-09-30 20:53:25','2020-09-30 20:53:25','<!-- wp:paragraph -->\n<p>This will be the about us page.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','24-revision-v1','','','2020-09-30 20:53:25','2020-09-30 20:53:25','',24,'http://websitecreationdocs.local/24-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-09-30 20:55:40','2020-09-30 20:55:40','<!-- wp:paragraph -->\n<p>Contact us stuff will go here.</p>\n<!-- /wp:paragraph -->','Contact Us','','publish','closed','closed','','contact-us','','','2020-09-30 20:55:40','2020-09-30 20:55:40','',0,'http://websitecreationdocs.local/?page_id=26',0,'page','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-09-30 20:55:40','2020-09-30 20:55:40',' ','','','publish','closed','closed','','27','','','2020-09-30 20:58:07','2020-09-30 20:58:07','',0,'http://websitecreationdocs.local/27/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-09-30 20:55:40','2020-09-30 20:55:40','<!-- wp:paragraph -->\n<p>Contact us stuff will go here.</p>\n<!-- /wp:paragraph -->','Contact Us','','inherit','closed','closed','','26-revision-v1','','','2020-09-30 20:55:40','2020-09-30 20:55:40','',26,'http://websitecreationdocs.local/26-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-09-30 20:58:07','2020-09-30 20:58:07',' ','','','publish','closed','closed','','29','','','2020-09-30 20:58:07','2020-09-30 20:58:07','',0,'http://websitecreationdocs.local/?p=29',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-09-30 20:58:38','2020-09-30 20:58:38',' ','','','publish','closed','closed','','30','','','2020-09-30 20:58:38','2020-09-30 20:58:38','',0,'http://websitecreationdocs.local/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-09-30 20:58:38','2020-09-30 20:58:38',' ','','','publish','closed','closed','','31','','','2020-09-30 20:58:38','2020-09-30 20:58:38','',0,'http://websitecreationdocs.local/?p=31',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-09-30 20:58:38','2020-09-30 20:58:38',' ','','','publish','closed','closed','','32','','','2020-09-30 20:58:38','2020-09-30 20:58:38','',0,'http://websitecreationdocs.local/?p=32',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-09-30 20:59:05','2020-09-30 20:59:05','<!-- wp:paragraph -->\n<p>Website building page here.</p>\n<!-- /wp:paragraph -->','How To Build A Website','','publish','closed','closed','','how-to-build-a-website','','','2020-09-30 20:59:05','2020-09-30 20:59:05','',0,'http://websitecreationdocs.local/?page_id=33',0,'page','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-09-30 20:59:05','2020-09-30 20:59:05',' ','','','publish','closed','closed','','34','','','2020-09-30 20:59:05','2020-09-30 20:59:05','',0,'http://websitecreationdocs.local/34/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-09-30 20:59:05','2020-09-30 20:59:05','<!-- wp:paragraph -->\n<p>Website building page here.</p>\n<!-- /wp:paragraph -->','How To Build A Website','','inherit','closed','closed','','33-revision-v1','','','2020-09-30 20:59:05','2020-09-30 20:59:05','',33,'http://websitecreationdocs.local/33-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-10-08 14:01:41','2020-10-08 14:01:41','<!-- wp:paragraph -->\n<p>Nulla sodales condimentum ante ac mattis. In nibh velit, vestibulum sed purus eu, sollicitudin sagittis lacus. Class <strong>aptent taciti sociosqu</strong> ad litora torquent per conubia nostra, per inceptos himenaeos. Sed sodales metus leo, sed sodales mi volutpat ac. Donec <a href=\"/\">scelerisque nibh</a> odio, eu ringilla felis luctus ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:3000/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Heading One Example</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper semper tortor, vitae elementum odio posuere ac. Phasellus at pellentesque purus. Aenean pulvinar elit sit amet nibh consequat posuere. Sed cursus feugiat libero, quis maximus lectus euismod ut. Nullam ante velit, ornare in gravida ut, hendrerit vitae felis. Phasellus sed imperdiet eros. Ut id cursus odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aenean euismod aliquam fringilla. Morbi eu nulla a augue sagittis condimentum. Quisque dapibus dui massa, ut pretium ipsum rutrum id. Etiam neque nulla, convallis in sollicitudin id, iaculis vel enim. Duis eleifend tincidunt justo sit amet sodales. Aliquam ultrices diam ut egestas faucibus. Suspendisse sed aliquam lectus. Aliquam dictum nibh nibh, at consequat metus mollis non. Sed sed lobortis lorem. Nullam lorem nulla, placerat in dui at, posuere tempor tortor. Vivamus elementum mauris a velit molestie tempus. Duis sed elit justo. Suspendisse viverra aliquet arcu, sed feugiat elit semper rhoncus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Heading Two Man Geez Man</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Quisque gravida in enim vel ornare. Vestibulum non sem ac purus ornare egestas et et dolor. Integer vestibulum, ligula non tempor vestibulum, orci ligula placerat purus, fermentum aliquam purus diam sit amet lectus. Morbi maximus non lacus sed fermentum. Nullam a elementum nisl, id facilisis justo. Nulla enim lacus, pharetra eget commodo vitae, malesuada in leo. Suspendisse potenti. Pellentesque molestie lorem eget congue iaculis. Donec pharetra et neque eget laoreet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque nec mi lectus. Praesent sagittis metus in sem eleifend, sit amet posuere orci accumsan. Quisque laoreet, velit nec rutrum ornare, orci nisl iaculis felis, quis accumsan ante sem nec turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis justo at arcu vehicula rhoncus. In tincidunt dolor sit amet tortor fermentum interdum. Aliquam viverra lectus purus, a viverra arcu auctor id. Nunc velit dui, maximus nec ornare et, aliquam quis lacus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Yo This is a Heading h3 bro geez</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Donec vestibulum justo dui, quis scelerisque nulla euismod vel. Aenean sit amet tellus ac arcu placerat cursus. In facilisis, odio eu gravida dapibus, lorem risus gravida massa, eget gravida mi leo sed neque. Fusce a tellus a erat euismod vestibulum. Phasellus nunc magna, sagittis quis libero sit amet, dignissim lacinia neque. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus euismod augue nec dolor elementum ullamcorper. Mauris sed nunc hendrerit, volutpat tortor convallis, suscipit turpis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Flaven Mah Javens</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus euismod augue nec dolor elementum ullamcorper. Mauris sed nunc hendrerit, volutpat tortor convallis, suscipit turpis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris nibh mauris, semper et diam suscipit, vestibulum feugiat erat. In euismod lacus convallis mi ullamcorper, non interdum leo hendrerit. Aliquam aliquet elit nec ultrices rhoncus. </p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2020-10-08 14:01:41','2020-10-08 14:01:41','',2,'http://websitecreationdocs.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-10-18 04:11:13','2020-10-18 04:11:13','','websiteCreationDocs_logo','','inherit','open','closed','','websitecreationdocs_logo','','','2020-10-18 04:11:26','2020-10-18 04:11:26','',0,'http://websitecreationdocs.local/wp-content/uploads/2020/10/websiteCreationDocs_logo.svg',0,'attachment','image/svg+xml',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-10-18 04:15:58','2020-10-18 04:15:58','','Home','','publish','closed','closed','','home','','','2020-10-27 19:47:29','2020-10-27 19:47:29','',0,'http://websitecreationdocs.local/?page_id=47',0,'page','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-10-18 04:15:58','2020-10-18 04:15:58',' ','','','publish','closed','closed','','48','','','2020-10-18 04:15:58','2020-10-18 04:15:58','',0,'http://websitecreationdocs.local/48/',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-10-18 04:15:58','2020-10-18 04:15:58','','Home','','inherit','closed','closed','','47-revision-v1','','','2020-10-18 04:15:58','2020-10-18 04:15:58','',47,'http://websitecreationdocs.local/47-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2020-10-27 19:59:11','2020-10-27 19:59:11','','Blog','','publish','closed','closed','','blog','','','2020-10-27 19:59:11','2020-10-27 19:59:11','',0,'http://websitecreationdocs.local/?page_id=52',0,'page','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-10-27 19:59:11','2020-10-27 19:59:11',' ','','','publish','closed','closed','','53','','','2020-10-27 19:59:11','2020-10-27 19:59:11','',0,'http://websitecreationdocs.local/53/',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-10-27 19:59:11','2020-10-27 19:59:11','','Blog','','inherit','closed','closed','','52-revision-v1','','','2020-10-27 19:59:11','2020-10-27 19:59:11','',52,'http://websitecreationdocs.local/52-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-10-27 20:00:50','2020-10-27 20:00:50','<!-- wp:paragraph -->\n<p>Nulla sodales condimentum ante ac mattis. In nibh velit, vestibulum sed purus eu, sollicitudin sagittis lacus. Class <strong>aptent taciti sociosqu</strong> ad litora torquent per conubia nostra, per inceptos himenaeos. Sed sodales metus leo, sed sodales mi volutpat ac. Donec <a href=\"/\">scelerisque nibh</a> odio, eu ringilla felis luctus ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:3000/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Heading One Example</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper semper tortor, vitae elementum odio posuere ac. Phasellus at pellentesque purus. Aenean pulvinar elit sit amet nibh consequat posuere. Sed cursus feugiat libero, quis maximus lectus euismod ut. Nullam ante velit, ornare in gravida ut, hendrerit vitae felis. Phasellus sed imperdiet eros. Ut id cursus odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aenean euismod aliquam fringilla. Morbi eu nulla a augue sagittis condimentum. Quisque dapibus dui massa, ut pretium ipsum rutrum id. Etiam neque nulla, convallis in sollicitudin id, iaculis vel enim. Duis eleifend tincidunt justo sit amet sodales. Aliquam ultrices diam ut egestas faucibus. Suspendisse sed aliquam lectus. Aliquam dictum nibh nibh, at consequat metus mollis non. Sed sed lobortis lorem. Nullam lorem nulla, placerat in dui at, posuere tempor tortor. Vivamus elementum mauris a velit molestie tempus. Duis sed elit justo. Suspendisse viverra aliquet arcu, sed feugiat elit semper rhoncus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Heading Two Man Geez Man</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Quisque gravida in enim vel ornare. Vestibulum non sem ac purus ornare egestas et et dolor. Integer vestibulum, ligula non tempor vestibulum, orci ligula placerat purus, fermentum aliquam purus diam sit amet lectus. Morbi maximus non lacus sed fermentum. Nullam a elementum nisl, id facilisis justo. Nulla enim lacus, pharetra eget commodo vitae, malesuada in leo. Suspendisse potenti. Pellentesque molestie lorem eget congue iaculis. Donec pharetra et neque eget laoreet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque nec mi lectus. Praesent sagittis metus in sem eleifend, sit amet posuere orci accumsan. Quisque laoreet, velit nec rutrum ornare, orci nisl iaculis felis, quis accumsan ante sem nec turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis justo at arcu vehicula rhoncus. In tincidunt dolor sit amet tortor fermentum interdum. Aliquam viverra lectus purus, a viverra arcu auctor id. Nunc velit dui, maximus nec ornare et, aliquam quis lacus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Yo This is a Heading h3 bro geez</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;Donec vestibulum justo dui, quis scelerisque nulla euismod vel. Aenean sit amet tellus ac arcu placerat cursus. In facilisis, odio eu gravida dapibus, lorem risus gravida massa, eget gravida mi leo sed neque. Fusce a tellus a erat euismod vestibulum. Phasellus nunc magna, sagittis quis libero sit amet, dignissim lacinia neque. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus euismod augue nec dolor elementum ullamcorper. Mauris sed nunc hendrerit, volutpat tortor convallis, suscipit turpis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Flaven Mah Javens</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus euismod augue nec dolor elementum ullamcorper. Mauris sed nunc hendrerit, volutpat tortor convallis, suscipit turpis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris nibh mauris, semper et diam suscipit, vestibulum feugiat erat. In euismod lacus convallis mi ullamcorper, non interdum leo hendrerit. Aliquam aliquet elit nec ultrices rhoncus.&nbsp;</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2020-10-27 20:00:50','2020-10-27 20:00:50','',2,'http://websitecreationdocs.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2020-10-27 20:01:53','2020-10-27 20:01:53','<!-- wp:paragraph -->\n<p>Nulla sodales condimentum ante ac mattis. In nibh velit, vestibulum sed purus eu, sollicitudin sagittis lacus. Class <strong>aptent taciti sociosqu</strong> ad litora torquent per conubia nostra, per inceptos himenaeos. Sed sodales metus leo, sed sodales mi volutpat ac. Donec <a href=\"/\">scelerisque nibh</a> odio, eu ringilla felis luctus ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:3000/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Heading One Example</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper semper tortor, vitae elementum odio posuere ac. Phasellus at pellentesque purus. Aenean pulvinar elit sit amet nibh consequat posuere. Sed cursus feugiat libero, quis maximus lectus euismod ut. Nullam ante velit, ornare in gravida ut, hendrerit vitae felis. Phasellus sed imperdiet eros. Ut id cursus odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aenean euismod aliquam fringilla. Morbi eu nulla a augue sagittis condimentum. Quisque dapibus dui massa, ut pretium ipsum rutrum id. Etiam neque nulla, convallis in sollicitudin id, iaculis vel enim. Duis eleifend tincidunt justo sit amet sodales. Aliquam ultrices diam ut egestas faucibus. Suspendisse sed aliquam lectus. Aliquam dictum nibh nibh, at consequat metus mollis non. Sed sed lobortis lorem. Nullam lorem nulla, placerat in dui at, posuere tempor tortor. Vivamus elementum mauris a velit molestie tempus. Duis sed elit justo. Suspendisse viverra aliquet arcu, sed feugiat elit semper rhoncus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Heading Two Man Geez Man</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Quisque gravida in enim vel ornare. Vestibulum non sem ac purus ornare egestas et et dolor. Integer vestibulum, ligula non tempor vestibulum, orci ligula placerat purus, fermentum aliquam purus diam sit amet lectus. Morbi maximus non lacus sed fermentum. Nullam a elementum nisl, id facilisis justo. Nulla enim lacus, pharetra eget commodo vitae, malesuada in leo. Suspendisse potenti. Pellentesque molestie lorem eget congue iaculis. Donec pharetra et neque eget laoreet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque nec mi lectus. Praesent sagittis metus in sem eleifend, sit amet posuere orci accumsan. Quisque laoreet, velit nec rutrum ornare, orci nisl iaculis felis, quis accumsan ante sem nec turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis justo at arcu vehicula rhoncus. In tincidunt dolor sit amet tortor fermentum interdum. Aliquam viverra lectus purus, a viverra arcu auctor id. Nunc velit dui, maximus nec ornare et, aliquam quis lacus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Yo This is a Heading h3 bro geez</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;Donec vestibulum justo dui, quis scelerisque nulla euismod vel. Aenean sit amet tellus ac arcu placerat cursus. In facilisis, odio eu gravida dapibus, lorem risus gravida massa, eget gravida mi leo sed neque. Fusce a tellus a erat euismod vestibulum. Phasellus nunc magna, sagittis quis libero sit amet, dignissim lacinia neque. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus euismod augue nec dolor elementum ullamcorper. Mauris sed nunc hendrerit, volutpat tortor convallis, suscipit turpis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Flaven Mah Javens</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus euismod augue nec dolor elementum ullamcorper. Mauris sed nunc hendrerit, volutpat tortor convallis, suscipit turpis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris nibh mauris, semper et diam suscipit, vestibulum feugiat erat. In euismod lacus convallis mi ullamcorper, non interdum leo hendrerit. Aliquam aliquet elit nec ultrices rhoncus. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Sharlavens haha</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus euismod augue nec dolor elementum ullamcorper. Mauris sed nunc hendrerit, volutpat tortor convallis, suscipit turpis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris nibh mauris, semper et diam suscipit, vestibulum feugiat erat. In euismod lacus convallis mi ullamcorper, non interdum leo hendrerit. Aliquam aliquet elit nec ultrices rhoncus.&nbsp;</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2020-10-27 20:01:53','2020-10-27 20:01:53','',2,'http://websitecreationdocs.local/2-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (12,2,0);
INSERT INTO `wp_term_relationships` VALUES (27,2,0);
INSERT INTO `wp_term_relationships` VALUES (29,2,0);
INSERT INTO `wp_term_relationships` VALUES (30,3,0);
INSERT INTO `wp_term_relationships` VALUES (31,3,0);
INSERT INTO `wp_term_relationships` VALUES (32,3,0);
INSERT INTO `wp_term_relationships` VALUES (34,3,0);
INSERT INTO `wp_term_relationships` VALUES (48,3,0);
INSERT INTO `wp_term_relationships` VALUES (53,3,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,6);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Main Menu','main-menu',0);
INSERT INTO `wp_terms` VALUES (3,'Sidebar Menu','sidebar-menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','text_widget_custom_html');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"0bef083c8d80bf58dce34791894ef1dc8547316058df85fc478699ca5b728058\";a:4:{s:10:\"expiration\";i:1604000527;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";s:5:\"login\";i:1603827727;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','50');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','3');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings','libraryContent=browse&editor=tinymce');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings-time','1603831466');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BaBNFIiJQX4aBf2au4RXJlK190i1V40','admin','samsmith.creative@gmail.com','http://websitecreationdocs.local','2020-09-29 20:55:16','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-23  0:09:40