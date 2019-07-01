/*
SQLyog Ultimate v9.10 
MySQL - 5.6.17 : Database - e-magazine
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `emag_commentmeta` */

DROP TABLE IF EXISTS `emag_commentmeta`;

CREATE TABLE `emag_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `emag_commentmeta` */

/*Table structure for table `emag_comments` */

DROP TABLE IF EXISTS `emag_comments`;

CREATE TABLE `emag_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `emag_comments` */

insert  into `emag_comments`(`comment_ID`,`comment_post_ID`,`comment_author`,`comment_author_email`,`comment_author_url`,`comment_author_IP`,`comment_date`,`comment_date_gmt`,`comment_content`,`comment_karma`,`comment_approved`,`comment_agent`,`comment_type`,`comment_parent`,`user_id`) values (1,1,'Un commentateur WordPress','wapuu@wordpress.example','https://wordpress.org/','','2019-06-25 07:30:44','2019-06-25 05:30:44','Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);

/*Table structure for table `emag_links` */

DROP TABLE IF EXISTS `emag_links`;

CREATE TABLE `emag_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `emag_links` */

/*Table structure for table `emag_options` */

DROP TABLE IF EXISTS `emag_options`;

CREATE TABLE `emag_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4;

/*Data for the table `emag_options` */

insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (1,'siteurl','http://localhost/projets/e-magazine/srcs','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (2,'home','http://localhost/projets/e-magazine/srcs','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (3,'blogname','AXIAN E-MAGAZINE','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (4,'blogdescription','Un site utilisant WordPress','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (5,'users_can_register','0','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (6,'admin_email','narisoa.andriambololona@axian-group.com','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (7,'start_of_week','1','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (8,'use_balanceTags','0','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (9,'use_smilies','1','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (10,'require_name_email','1','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (11,'comments_notify','1','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (12,'posts_per_rss','10','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (13,'rss_use_excerpt','0','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (14,'mailserver_url','mail.example.com','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (15,'mailserver_login','login@example.com','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (16,'mailserver_pass','password','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (17,'mailserver_port','110','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (18,'default_category','1','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (19,'default_comment_status','open','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (20,'default_ping_status','open','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (21,'default_pingback_flag','0','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (22,'posts_per_page','10','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (23,'date_format','j F Y','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (24,'time_format','G \\h i \\m\\i\\n','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (25,'links_updated_date_format','j F Y G \\h i \\m\\i\\n','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (26,'comment_moderation','0','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (27,'moderation_notify','1','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (29,'rewrite_rules','a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (30,'hack_file','0','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (31,'blog_charset','UTF-8','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (32,'moderation_keys','','no');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (33,'active_plugins','a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (34,'category_base','','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (35,'ping_sites','http://rpc.pingomatic.com/','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (36,'comment_max_links','2','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (37,'gmt_offset','0','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (38,'default_email_category','1','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (39,'recently_edited','','no');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (40,'template','e_magazine','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (41,'stylesheet','e_magazine','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (42,'comment_whitelist','1','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (43,'blacklist_keys','','no');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (44,'comment_registration','0','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (45,'html_type','text/html','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (46,'use_trackback','0','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (47,'default_role','subscriber','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (48,'db_version','44719','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (49,'uploads_use_yearmonth_folders','1','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (50,'upload_path','','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (51,'blog_public','0','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (52,'default_link_category','2','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (53,'show_on_front','posts','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (54,'tag_base','','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (55,'show_avatars','1','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (56,'avatar_rating','G','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (57,'upload_url_path','','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (58,'thumbnail_size_w','150','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (59,'thumbnail_size_h','150','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (60,'thumbnail_crop','1','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (61,'medium_size_w','300','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (62,'medium_size_h','300','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (63,'avatar_default','mystery','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (64,'large_size_w','1024','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (65,'large_size_h','1024','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (66,'image_default_link_type','none','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (67,'image_default_size','','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (68,'image_default_align','','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (69,'close_comments_for_old_posts','0','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (70,'close_comments_days_old','14','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (71,'thread_comments','1','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (72,'thread_comments_depth','5','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (73,'page_comments','0','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (74,'comments_per_page','50','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (75,'default_comments_page','newest','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (76,'comment_order','asc','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (77,'sticky_posts','a:0:{}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (81,'uninstall_plugins','a:0:{}','no');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (82,'timezone_string','Europe/Paris','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (83,'page_for_posts','0','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (84,'page_on_front','0','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (85,'default_post_format','0','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (86,'link_manager_enabled','0','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (87,'finished_splitting_shared_terms','1','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (88,'site_icon','0','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (89,'medium_large_size_w','768','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (90,'medium_large_size_h','0','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (91,'wp_page_for_privacy_policy','3','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (92,'show_comments_cookies_opt_in','1','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (93,'initial_db_version','44719','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (94,'emag_user_roles','a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:9:\"webmaster\";a:2:{s:4:\"name\";s:9:\"Webmaster\";s:12:\"capabilities\";a:0:{}}}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (95,'fresh_site','0','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (96,'WPLANG','fr_FR','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (102,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (103,'cron','a:6:{i:1561962645;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1562002245;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1562045445;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1562045478;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1562047059;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (110,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (111,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (112,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (114,'recovery_keys','a:0:{}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (121,'_site_transient_timeout_browser_bcf1814caa6afe84eeebef28ff236a7f','1562045464','no');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (122,'_site_transient_browser_bcf1814caa6afe84eeebef28ff236a7f','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"75.0.3770.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (124,'_site_transient_timeout_php_check_03bc88feb8c0ce198a12645fce792b30','1562045466','no');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (125,'_site_transient_php_check_03bc88feb8c0ce198a12645fce792b30','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:1;}','no');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (127,'can_compress_scripts','1','no');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (141,'theme_mods_twentynineteen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1561440678;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (142,'current_theme','E-MAGAZINE','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (143,'theme_mods_e_magazine','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (144,'theme_switched','','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (145,'widget_connexion','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (151,'recently_activated','a:0:{}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (152,'acf_version','5.8.1','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (154,'category_children','a:0:{}','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (158,'recovery_mode_email_last_sent','1561465210','yes');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (164,'_site_transient_timeout_theme_roots','1561963010','no');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (165,'_site_transient_theme_roots','a:1:{s:10:\"e_magazine\";s:7:\"/themes\";}','no');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (166,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.2.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1561961215;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-28 07:19:18\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}','no');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (167,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1561961218;s:7:\"checked\";a:1:{s:10:\"e_magazine\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
insert  into `emag_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (168,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1561961219;s:7:\"checked\";a:1:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}}}','no');

/*Table structure for table `emag_postmeta` */

DROP TABLE IF EXISTS `emag_postmeta`;

CREATE TABLE `emag_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

/*Data for the table `emag_postmeta` */

insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (1,2,'_wp_page_template','default');
insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (2,3,'_wp_page_template','default');
insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (3,5,'_edit_lock','1561442166:1');
insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (4,6,'_edit_lock','1561442297:1');
insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (5,7,'_edit_lock','1561442546:1');
insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (6,8,'_edit_lock','1561442553:1');
insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (7,9,'_edit_lock','1561442578:1');
insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (8,14,'_wp_attached_file','2019/06/ajax-loading.gif');
insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (9,14,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:24:\"2019/06/ajax-loading.gif\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (10,22,'_edit_last','1');
insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (11,22,'_edit_lock','1561464865:1');
insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (12,25,'_edit_last','1');
insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (13,25,'_edit_lock','1561962165:1');
insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (14,26,'_wp_attached_file','2019/06/618XR_uk.pdf');
insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (15,27,'_wp_attached_file','2019/06/1080p-Full-HD-Images.jpg');
insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (16,27,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:32:\"2019/06/1080p-Full-HD-Images.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"1080p-Full-HD-Images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"1080p-Full-HD-Images-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"1080p-Full-HD-Images-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"1080p-Full-HD-Images-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"actualite_vignette\";a:4:{s:4:\"file\";s:32:\"1080p-Full-HD-Images-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"actualite_medium\";a:4:{s:4:\"file\";s:32:\"1080p-Full-HD-Images-500x281.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:281;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (17,25,'_thumbnail_id','27');
insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (19,25,'pdf_magazine','26');
insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (20,25,'_pdf_magazine','field_5d12107286427');
insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (21,28,'pdf_magazine','26');
insert  into `emag_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) values (22,28,'_pdf_magazine','field_5d12107286427');

/*Table structure for table `emag_posts` */

DROP TABLE IF EXISTS `emag_posts`;

CREATE TABLE `emag_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

/*Data for the table `emag_posts` */

insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (1,1,'2019-06-25 07:30:44','2019-06-25 05:30:44','<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->','Bonjour tout le monde !','','publish','open','open','','bonjour-tout-le-monde','','','2019-06-25 07:30:44','2019-06-25 05:30:44','',0,'http://localhost/projets/e-magazine/srcs/?p=1',0,'post','',1);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (2,1,'2019-06-25 07:30:44','2019-06-25 05:30:44','<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost/projets/e-magazine/srcs/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->','Page d’exemple','','publish','closed','open','','page-d-exemple','','','2019-06-25 07:30:44','2019-06-25 05:30:44','',0,'http://localhost/projets/e-magazine/srcs/?page_id=2',0,'page','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (3,1,'2019-06-25 07:30:44','2019-06-25 05:30:44','<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://localhost/projets/e-magazine/srcs.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->','Politique de confidentialité','','draft','closed','open','','politique-de-confidentialite','','','2019-06-25 07:30:44','2019-06-25 05:30:44','',0,'http://localhost/projets/e-magazine/srcs/?page_id=3',0,'page','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (4,1,'2019-06-25 07:31:06','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2019-06-25 07:31:06','0000-00-00 00:00:00','',0,'http://localhost/projets/e-magazine/srcs/?p=4',0,'post','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (5,1,'2019-06-25 07:57:39','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2019-06-25 07:57:39','0000-00-00 00:00:00','',0,'http://localhost/projets/e-magazine/srcs/?p=5',0,'post','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (6,1,'2019-06-25 07:58:32','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2019-06-25 07:58:32','0000-00-00 00:00:00','',0,'http://localhost/projets/e-magazine/srcs/?p=6',0,'post','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (7,1,'2019-06-25 08:00:42','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2019-06-25 08:00:42','0000-00-00 00:00:00','',0,'http://localhost/projets/e-magazine/srcs/?p=7',0,'post','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (8,1,'2019-06-25 08:04:52','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2019-06-25 08:04:52','0000-00-00 00:00:00','',0,'http://localhost/projets/e-magazine/srcs/?p=8',0,'post','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (9,1,'2019-06-25 08:04:59','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2019-06-25 08:04:59','0000-00-00 00:00:00','',0,'http://localhost/projets/e-magazine/srcs/?p=9',0,'post','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (10,1,'2019-06-25 08:05:24','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2019-06-25 08:05:24','0000-00-00 00:00:00','',0,'http://localhost/projets/e-magazine/srcs/?p=10',0,'post','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (11,1,'2019-06-25 08:06:26','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2019-06-25 08:06:26','0000-00-00 00:00:00','',0,'http://localhost/projets/e-magazine/srcs/?p=11',0,'post','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (12,1,'2019-06-25 08:06:47','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2019-06-25 08:06:47','0000-00-00 00:00:00','',0,'http://localhost/projets/e-magazine/srcs/?p=12',0,'post','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (13,1,'2019-06-25 08:07:19','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2019-06-25 08:07:19','0000-00-00 00:00:00','',0,'http://localhost/projets/e-magazine/srcs/?p=13',0,'post','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (14,1,'2019-06-25 08:11:26','2019-06-25 06:11:26','','ajax-loading','','inherit','open','closed','','ajax-loading','','','2019-06-25 08:11:26','2019-06-25 06:11:26','',13,'http://localhost/projets/axian/srcsemag-content/uploads/2019/06/ajax-loading.gif',0,'attachment','image/gif',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (15,1,'2019-06-25 08:23:18','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','closed','closed','','','','','2019-06-25 08:23:18','0000-00-00 00:00:00','',0,'http://localhost/projets/e-magazine/srcs/?post_type=acf-field-group&p=15',0,'acf-field-group','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (16,1,'2019-06-25 08:23:40','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','closed','closed','','','','','2019-06-25 08:23:40','0000-00-00 00:00:00','',0,'http://localhost/projets/e-magazine/srcs/?post_type=acf-field-group&p=16',0,'acf-field-group','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (17,1,'2019-06-25 14:08:51','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','closed','closed','','','','','2019-06-25 14:08:51','0000-00-00 00:00:00','',0,'http://localhost/projets/e-magazine/srcs/?post_type=acf-field-group&p=17',0,'acf-field-group','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (18,1,'2019-06-25 14:09:57','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','closed','closed','','','','','2019-06-25 14:09:57','0000-00-00 00:00:00','',0,'http://localhost/projets/e-magazine/srcs/?post_type=acf-field-group&p=18',0,'acf-field-group','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (19,1,'2019-06-25 14:11:11','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','closed','closed','','','','','2019-06-25 14:11:11','0000-00-00 00:00:00','',0,'http://localhost/projets/e-magazine/srcs/?post_type=acf-field-group&p=19',0,'acf-field-group','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (20,1,'2019-06-25 14:13:02','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','closed','closed','','','','','2019-06-25 14:13:02','0000-00-00 00:00:00','',0,'http://localhost/projets/e-magazine/srcs/?post_type=acf-field-group&p=20',0,'acf-field-group','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (21,1,'2019-06-25 14:14:09','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','closed','closed','','','','','2019-06-25 14:14:09','0000-00-00 00:00:00','',0,'http://localhost/projets/e-magazine/srcs/?post_type=acf-field-group&p=21',0,'acf-field-group','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (22,1,'2019-06-25 14:16:43','2019-06-25 12:16:43','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Dossiers','dossiers','publish','closed','closed','','group_5d1210608d95d','','','2019-06-25 14:16:43','2019-06-25 12:16:43','',0,'http://localhost/projets/e-magazine/srcs/?post_type=acf-field-group&#038;p=22',0,'acf-field-group','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (23,1,'2019-06-25 14:16:43','2019-06-25 12:16:43','a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:4:\".pdf\";}','Pdf','pdf_magazine','publish','closed','closed','','field_5d12107286427','','','2019-06-25 14:16:43','2019-06-25 12:16:43','',22,'http://localhost/projets/e-magazine/srcs/?post_type=acf-field&p=23',0,'acf-field','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (24,1,'2019-06-25 14:17:28','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','open','open','','','','','2019-06-25 14:17:28','0000-00-00 00:00:00','',0,'http://localhost/projets/e-magazine/srcs/?p=24',0,'post','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (25,1,'2019-06-25 14:22:39','2019-06-25 12:22:39','<h2>Qu\'est-ce que le Lorem Ipsum?</h2><p>Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>','ACG 2019','On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte','publish','open','open','','acg-2019','','','2019-06-25 14:22:39','2019-06-25 12:22:39','',0,'http://localhost/projets/e-magazine/srcs/?p=25',0,'post','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (26,1,'2019-06-25 14:21:44','2019-06-25 12:21:44','','618XR_uk','','inherit','open','closed','','618xr_uk','','','2019-06-25 14:21:44','2019-06-25 12:21:44','',25,'http://localhost/projets/e-magazine/srcs/emag-content/uploads/2019/06/618XR_uk.pdf',0,'attachment','application/pdf',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (27,1,'2019-06-25 14:22:21','2019-06-25 12:22:21','','1080p-Full-HD-Images','','inherit','open','closed','','1080p-full-hd-images','','','2019-06-25 14:22:21','2019-06-25 12:22:21','',25,'http://localhost/projets/e-magazine/srcs/emag-content/uploads/2019/06/1080p-Full-HD-Images.jpg',0,'attachment','image/jpeg',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (28,1,'2019-06-25 14:22:39','2019-06-25 12:22:39','<h2>Qu\'est-ce que le Lorem Ipsum?</h2><p>Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>','ACG 2019','On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte','inherit','closed','closed','','25-revision-v1','','','2019-06-25 14:22:39','2019-06-25 12:22:39','',25,'http://localhost/projets/e-magazine/srcs/2019/06/25/25-revision-v1/',0,'revision','',0);
insert  into `emag_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) values (29,1,'2019-07-01 08:11:22','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','closed','closed','','','','','2019-07-01 08:11:22','0000-00-00 00:00:00','',0,'http://localhost/projets/e-magazine/srcs/?post_type=acf-field-group&p=29',0,'acf-field-group','',0);

/*Table structure for table `emag_term_relationships` */

DROP TABLE IF EXISTS `emag_term_relationships`;

CREATE TABLE `emag_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `emag_term_relationships` */

insert  into `emag_term_relationships`(`object_id`,`term_taxonomy_id`,`term_order`) values (1,1,0);
insert  into `emag_term_relationships`(`object_id`,`term_taxonomy_id`,`term_order`) values (25,1,0);

/*Table structure for table `emag_term_taxonomy` */

DROP TABLE IF EXISTS `emag_term_taxonomy`;

CREATE TABLE `emag_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `emag_term_taxonomy` */

insert  into `emag_term_taxonomy`(`term_taxonomy_id`,`term_id`,`taxonomy`,`description`,`parent`,`count`) values (1,1,'category','',0,2);

/*Table structure for table `emag_termmeta` */

DROP TABLE IF EXISTS `emag_termmeta`;

CREATE TABLE `emag_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `emag_termmeta` */

/*Table structure for table `emag_terms` */

DROP TABLE IF EXISTS `emag_terms`;

CREATE TABLE `emag_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `emag_terms` */

insert  into `emag_terms`(`term_id`,`name`,`slug`,`term_group`) values (1,'Non classé','non-classe',0);

/*Table structure for table `emag_trace_magazine` */

DROP TABLE IF EXISTS `emag_trace_magazine`;

CREATE TABLE `emag_trace_magazine` (
  `mag_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mag_postid` int(11) NOT NULL,
  `mag_order` int(11) NOT NULL,
  `mag_attachment` int(11) NOT NULL,
  `mag_timestamp` int(11) NOT NULL,
  UNIQUE KEY `mag_id` (`mag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `emag_trace_magazine` */

/*Table structure for table `emag_usermeta` */

DROP TABLE IF EXISTS `emag_usermeta`;

CREATE TABLE `emag_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

/*Data for the table `emag_usermeta` */

insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (1,1,'nickname','emagazine_admin');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (2,1,'first_name','');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (3,1,'last_name','');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (4,1,'description','');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (5,1,'rich_editing','true');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (6,1,'syntax_highlighting','true');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (7,1,'comment_shortcuts','false');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (8,1,'admin_color','fresh');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (9,1,'use_ssl','0');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (10,1,'show_admin_bar_front','true');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (11,1,'locale','');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (12,1,'emag_capabilities','a:1:{s:13:\"administrator\";b:1;}');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (13,1,'emag_user_level','10');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (14,1,'dismissed_wp_pointers','');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (15,1,'show_welcome_panel','1');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (16,1,'session_tokens','a:2:{s:64:\"982ebf528de338090ba65c1d1fa7444701bd9b3fff77265e832418e9d93887b2\";a:4:{s:10:\"expiration\";i:1562650262;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36\";s:5:\"login\";i:1561440662;}s:64:\"d7cdaf11b28747f11bbbfec4e271054237200cbb5ac901f92e261a6a5bde13a0\";a:4:{s:10:\"expiration\";i:1562134281;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36\";s:5:\"login\";i:1561961481;}}');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (17,1,'emag_dashboard_quick_press_last_post_id','4');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (18,1,'meta-box-order_post','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:34:\"submitdiv,categorydiv,postimagediv\";s:6:\"normal\";s:60:\"postexcerpt,trackbacksdiv,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (19,1,'screen_layout_post','2');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (20,1,'closedpostboxes_post','a:0:{}');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (21,1,'metaboxhidden_post','a:5:{i:0;s:13:\"trackbacksdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";i:4;s:10:\"postcustom\";}');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (22,1,'emag_user-settings','editor_expand=off&editor=tinymce&libraryContent=browse&ed_size=350');
insert  into `emag_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) values (23,1,'emag_user-settings-time','1561468814');

/*Table structure for table `emag_users` */

DROP TABLE IF EXISTS `emag_users`;

CREATE TABLE `emag_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `emag_users` */

insert  into `emag_users`(`ID`,`user_login`,`user_pass`,`user_nicename`,`user_email`,`user_url`,`user_registered`,`user_activation_key`,`user_status`,`display_name`) values (1,'emagazine_admin','$P$BXR898ns..KqLI1vEEsnG/fg81sNqU1','emagazine_admin','narisoa.andriambololona@axian-group.com','','2019-06-25 05:30:44','',0,'emagazine_admin');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
