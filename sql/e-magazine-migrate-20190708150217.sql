# WordPress MySQL database migration
#
# Generated: Monday 8. July 2019 15:02 UTC
# Hostname: localhost
# Database: `e-magazine`
# URL: https://e-magazine-recette.corp.aits.mg
# Path: C:\\wamp64\\www\\projets\\e-magazine\\srcs
# Tables: emag_commentmeta, emag_comments, emag_links, emag_options, emag_postmeta, emag_posts, emag_term_relationships, emag_term_taxonomy, emag_termmeta, emag_terms, emag_trace_magazine, emag_usermeta, emag_users
# Table Prefix: emag_
# Post Types: revision, acf-field, acf-field-group, attachment, page, post
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `emag_commentmeta`
#

DROP TABLE IF EXISTS `emag_commentmeta`;


#
# Table structure of table `emag_commentmeta`
#

CREATE TABLE `emag_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `emag_commentmeta`
#

#
# End of data contents of table `emag_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `emag_comments`
#

DROP TABLE IF EXISTS `emag_comments`;


#
# Table structure of table `emag_comments`
#

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


#
# Data contents of table `emag_comments`
#
INSERT INTO `emag_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-06-25 07:30:44', '2019-06-25 05:30:44', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `emag_comments`
# --------------------------------------------------------



#
# Delete any existing table `emag_links`
#

DROP TABLE IF EXISTS `emag_links`;


#
# Table structure of table `emag_links`
#

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


#
# Data contents of table `emag_links`
#

#
# End of data contents of table `emag_links`
# --------------------------------------------------------



#
# Delete any existing table `emag_options`
#

DROP TABLE IF EXISTS `emag_options`;


#
# Table structure of table `emag_options`
#

CREATE TABLE `emag_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=489 DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `emag_options`
#
INSERT INTO `emag_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://e-magazine-recette.corp.aits.mg', 'yes'),
(2, 'home', 'https://e-magazine-recette.corp.aits.mg', 'yes'),
(3, 'blogname', 'AXIAN E-MAGAZINE', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'narisoa.andriambololona@axian-group.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'e_magazine', 'yes'),
(41, 'stylesheet', 'e_magazine', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'emag_user_roles', 'a:6:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:9:"webmaster";a:2:{s:4:"name";s:9:"Webmaster";s:12:"capabilities";a:0:{}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `emag_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(103, 'cron', 'a:7:{i:1562598160;a:1:{s:11:"my_5mn_task";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:9:"minutes_5";s:4:"args";a:0:{}s:8:"interval";i:60;}}}i:1562598165;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1562607045;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1562650245;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1562650278;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1562651859;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(127, 'can_compress_scripts', '1', 'no'),
(141, 'theme_mods_twentynineteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1561440678;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(142, 'current_theme', 'E-MAGAZINE', 'yes'),
(143, 'theme_mods_e_magazine', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(145, 'widget_connexion', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(151, 'recently_activated', 'a:0:{}', 'yes'),
(152, 'acf_version', '5.8.1', 'yes'),
(154, 'category_children', 'a:0:{}', 'yes'),
(158, 'recovery_mode_email_last_sent', '1562339226', 'yes'),
(446, 'new_pdf', 's:232:"a:2:{i:0;s:102:"https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/Création-de-Plugin-WordPress.pdf";i:1;s:99:"https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/keyboard-shortcuts-windows.pdf";}";', 'yes'),
(484, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1562598137;}', 'no') ;

#
# End of data contents of table `emag_options`
# --------------------------------------------------------



#
# Delete any existing table `emag_postmeta`
#

DROP TABLE IF EXISTS `emag_postmeta`;


#
# Table structure of table `emag_postmeta`
#

CREATE TABLE `emag_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=298 DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `emag_postmeta`
#
INSERT INTO `emag_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(8, 14, '_wp_attached_file', '2019/06/ajax-loading.gif'),
(9, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:64;s:6:"height";i:64;s:4:"file";s:24:"2019/06/ajax-loading.gif";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(10, 22, '_edit_last', '1'),
(11, 22, '_edit_lock', '1562340561:1'),
(12, 25, '_edit_last', '1'),
(13, 25, '_edit_lock', '1562161469:1'),
(14, 26, '_wp_attached_file', '2019/06/618XR_uk.pdf'),
(15, 27, '_wp_attached_file', '2019/06/1080p-Full-HD-Images.jpg'),
(16, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:32:"2019/06/1080p-Full-HD-Images.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"1080p-Full-HD-Images-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"1080p-Full-HD-Images-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"1080p-Full-HD-Images-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"1080p-Full-HD-Images-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:18:"actualite_vignette";a:4:{s:4:"file";s:32:"1080p-Full-HD-Images-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:16:"actualite_medium";a:4:{s:4:"file";s:32:"1080p-Full-HD-Images-500x281.jpg";s:5:"width";i:500;s:6:"height";i:281;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(17, 25, '_thumbnail_id', '27'),
(19, 25, 'pdf_magazine', '26'),
(20, 25, '_pdf_magazine', 'field_5d12107286427'),
(21, 28, 'pdf_magazine', '26'),
(22, 28, '_pdf_magazine', 'field_5d12107286427'),
(23, 2, '_edit_lock', '1562241858:1'),
(24, 1, '_edit_lock', '1561969085:1'),
(25, 31, '_edit_last', '1'),
(26, 31, '_edit_lock', '1561984214:1'),
(36, 31, 'pdf_magazine', ''),
(37, 31, '_pdf_magazine', 'field_5d12107286427'),
(38, 36, 'pdf_magazine', ''),
(39, 36, '_pdf_magazine', 'field_5d12107286427'),
(40, 31, '_wp_trash_meta_status', 'publish'),
(41, 31, '_wp_trash_meta_time', '1561984354'),
(42, 31, '_wp_desired_post_slug', 'byloum'),
(43, 41, '_wp_page_template', 'default'),
(44, 41, '_edit_lock', '1562142636:1'),
(46, 41, '_edit_last', '1'),
(47, 41, '_wp_trash_meta_status', 'publish'),
(48, 41, '_wp_trash_meta_time', '1562142777'),
(49, 41, '_wp_desired_post_slug', 'pdf-flipbook'),
(50, 44, '_wp_page_template', 'default'),
(52, 39, 'pdf_magazine', '26'),
(53, 39, '_pdf_magazine', 'field_5d12107286427'),
(54, 45, '_edit_last', '1'),
(55, 45, '_edit_lock', '1562226918:1'),
(57, 45, 'pdf_magazine', '50'),
(58, 45, '_pdf_magazine', 'field_5d12107286427'),
(59, 46, 'pdf_magazine', ''),
(60, 46, '_pdf_magazine', 'field_5d12107286427'),
(65, 47, 'pdf_magazine', '26'),
(66, 47, '_pdf_magazine', 'field_5d12107286427'),
(80, 49, 'pdf_magazine', '26'),
(81, 49, '_pdf_magazine', 'field_5d12107286427'),
(85, 50, '_wp_attached_file', '2019/07/css.pdf'),
(88, 51, 'pdf_magazine', ''),
(89, 51, '_pdf_magazine', 'field_5d12107286427'),
(100, 56, 'pdf_magazine', '50'),
(101, 56, '_pdf_magazine', 'field_5d12107286427'),
(104, 59, 'pdf_magazine', '26'),
(105, 59, '_pdf_magazine', 'field_5d12107286427'),
(108, 61, 'pdf_magazine', '50'),
(109, 61, '_pdf_magazine', 'field_5d12107286427'),
(111, 62, 'pdf_magazine', '50'),
(112, 62, '_pdf_magazine', 'field_5d12107286427'),
(114, 63, 'pdf_magazine', '50'),
(115, 63, '_pdf_magazine', 'field_5d12107286427'),
(118, 66, '_wp_attached_file', '2019/07/initiation-HTML-CSS.pdf'),
(120, 67, 'pdf_magazine', '66'),
(121, 67, '_pdf_magazine', 'field_5d12107286427'),
(124, 69, 'pdf_magazine', '26'),
(125, 69, '_pdf_magazine', 'field_5d12107286427'),
(127, 70, 'pdf_magazine', '26'),
(128, 70, '_pdf_magazine', 'field_5d12107286427'),
(131, 72, 'pdf_magazine', '66'),
(132, 72, '_pdf_magazine', 'field_5d12107286427'),
(135, 74, 'pdf_magazine', '50'),
(136, 74, '_pdf_magazine', 'field_5d12107286427'),
(139, 76, 'pdf_magazine', '66'),
(140, 76, '_pdf_magazine', 'field_5d12107286427'),
(142, 77, 'pdf_magazine', '50'),
(143, 77, '_pdf_magazine', 'field_5d12107286427'),
(145, 78, 'pdf_magazine', '50'),
(146, 78, '_pdf_magazine', 'field_5d12107286427'),
(148, 79, 'pdf_magazine', '50'),
(149, 79, '_pdf_magazine', 'field_5d12107286427'),
(152, 81, 'pdf_magazine', '66'),
(153, 81, '_pdf_magazine', 'field_5d12107286427'),
(155, 82, 'pdf_magazine', '66'),
(156, 82, '_pdf_magazine', 'field_5d12107286427'),
(159, 44, '_wp_trash_meta_status', 'publish'),
(160, 44, '_wp_trash_meta_time', '1562241941'),
(161, 44, '_wp_desired_post_slug', 'pdf-flipbook'),
(162, 85, '_wp_page_template', 'pdf-flipbook-page.php'),
(163, 90, '_edit_last', '1'),
(164, 90, '_wp_page_template', 'exemple.php'),
(165, 90, '_edit_lock', '1562248991:1'),
(166, 98, '_edit_last', '1'),
(167, 98, '_edit_lock', '1562248536:1'),
(168, 98, '_wp_page_template', 'default'),
(169, 100, '_edit_last', '1'),
(170, 100, '_edit_lock', '1562248648:1'),
(171, 100, '_wp_page_template', 'default'),
(172, 103, '_edit_last', '1'),
(173, 103, '_edit_lock', '1562248582:1'),
(174, 103, '_wp_page_template', 'default'),
(175, 100, '_wp_trash_meta_status', 'publish'),
(176, 100, '_wp_trash_meta_time', '1562248744') ;
INSERT INTO `emag_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(177, 100, '_wp_desired_post_slug', 'test-ajout'),
(178, 103, '_wp_trash_meta_status', 'publish'),
(179, 103, '_wp_trash_meta_time', '1562248745'),
(180, 103, '_wp_desired_post_slug', 'test_ajout'),
(181, 98, '_wp_trash_meta_status', 'publish'),
(182, 98, '_wp_trash_meta_time', '1562248746'),
(183, 98, '_wp_desired_post_slug', 'xqsx'),
(184, 105, '_edit_last', '1'),
(185, 105, '_edit_lock', '1562248750:1'),
(186, 106, '_wp_attached_file', '2019/07/Création-de-Plugin-WordPress.pdf'),
(187, 105, '_wp_page_template', 'default'),
(188, 105, '_wp_trash_meta_status', 'publish'),
(189, 105, '_wp_trash_meta_time', '1562248899'),
(190, 105, '_wp_desired_post_slug', 'test-ajout'),
(191, 108, '_edit_last', '1'),
(192, 108, '_edit_lock', '1562248942:1'),
(193, 108, '_wp_page_template', 'default'),
(194, 111, '_edit_last', '1'),
(195, 111, '_edit_lock', '1562249194:1'),
(197, 111, 'pdf_magazine', '106'),
(198, 111, '_pdf_magazine', 'field_5d12107286427'),
(199, 112, 'pdf_magazine', '106'),
(200, 112, '_pdf_magazine', 'field_5d12107286427'),
(201, 114, '_edit_last', '1'),
(202, 114, '_edit_lock', '1562249398:1'),
(204, 114, 'pdf_magazine', '106'),
(205, 114, '_pdf_magazine', 'field_5d12107286427'),
(206, 115, 'pdf_magazine', '106'),
(207, 115, '_pdf_magazine', 'field_5d12107286427'),
(208, 108, '_wp_trash_meta_status', 'publish'),
(209, 108, '_wp_trash_meta_time', '1562249586'),
(210, 108, '_wp_desired_post_slug', 'tentative'),
(211, 117, '_edit_last', '1'),
(212, 117, '_edit_lock', '1562251360:1'),
(214, 117, 'pdf_magazine', '106'),
(215, 117, '_pdf_magazine', 'field_5d12107286427'),
(216, 118, 'pdf_magazine', '106'),
(217, 118, '_pdf_magazine', 'field_5d12107286427'),
(218, 117, '_wp_trash_meta_status', 'publish'),
(219, 117, '_wp_trash_meta_time', '1562305025'),
(220, 117, '_wp_desired_post_slug', 'hello'),
(221, 114, '_wp_trash_meta_status', 'publish'),
(222, 114, '_wp_trash_meta_time', '1562305154'),
(223, 114, '_wp_desired_post_slug', 'test-_ajoiut'),
(224, 111, '_wp_trash_meta_status', 'publish'),
(225, 111, '_wp_trash_meta_time', '1562305199'),
(226, 111, '_wp_desired_post_slug', 'test-ajout-magazine'),
(227, 121, '_edit_last', '1'),
(229, 125, '_edit_last', '1'),
(231, 127, '_edit_last', '1'),
(232, 127, '_edit_lock', '1562336040:1'),
(234, 127, 'pdf_magazine', '50'),
(235, 127, '_pdf_magazine', 'field_5d12107286427'),
(236, 128, 'pdf_magazine', '50'),
(237, 128, '_pdf_magazine', 'field_5d12107286427'),
(238, 132, '_edit_last', '1'),
(239, 132, '_edit_lock', '1562336202:1'),
(249, 139, '_edit_last', '1'),
(250, 139, '_edit_lock', '1562338703:1'),
(255, 140, '_edit_last', '1'),
(256, 140, '_edit_lock', '1562341085:1'),
(259, 144, '_edit_last', '1'),
(260, 144, '_edit_lock', '1562341266:1'),
(262, 144, 'pdf_magazine', '106'),
(263, 144, '_pdf_magazine', 'field_5d12107286427'),
(264, 145, 'pdf_magazine', '66'),
(265, 145, '_pdf_magazine', 'field_5d12107286427'),
(267, 146, 'pdf_magazine', '66'),
(268, 146, '_pdf_magazine', 'field_5d12107286427'),
(270, 147, 'pdf_magazine', '66'),
(271, 147, '_pdf_magazine', 'field_5d12107286427'),
(273, 148, 'pdf_magazine', '66'),
(274, 148, '_pdf_magazine', 'field_5d12107286427'),
(276, 140, 'pdf_magazine', '50'),
(277, 140, '_pdf_magazine', 'field_5d12107286427'),
(278, 149, 'pdf_magazine', '50'),
(279, 149, '_pdf_magazine', 'field_5d12107286427'),
(281, 150, 'pdf_magazine', '106'),
(282, 150, '_pdf_magazine', 'field_5d12107286427'),
(283, 151, '_edit_last', '1'),
(284, 151, '_edit_lock', '1562341326:1'),
(286, 151, 'pdf_magazine', '26'),
(287, 151, '_pdf_magazine', 'field_5d12107286427'),
(288, 152, 'pdf_magazine', '26'),
(289, 152, '_pdf_magazine', 'field_5d12107286427'),
(290, 153, '_edit_last', '1'),
(291, 153, '_edit_lock', '1562584410:1'),
(292, 154, '_wp_attached_file', '2019/07/keyboard-shortcuts-windows.pdf'),
(294, 153, 'pdf_magazine', '154'),
(295, 153, '_pdf_magazine', 'field_5d12107286427'),
(296, 155, 'pdf_magazine', '154'),
(297, 155, '_pdf_magazine', 'field_5d12107286427') ;

#
# End of data contents of table `emag_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `emag_posts`
#

DROP TABLE IF EXISTS `emag_posts`;


#
# Table structure of table `emag_posts`
#

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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `emag_posts`
#
INSERT INTO `emag_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-06-25 07:30:44', '2019-06-25 05:30:44', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2019-06-25 07:30:44', '2019-06-25 05:30:44', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=1', 0, 'post', '', 1),
(2, 1, '2019-06-25 07:30:44', '2019-06-25 05:30:44', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="https://e-magazine-recette.corp.aits.mg/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2019-06-25 07:30:44', '2019-06-25 05:30:44', '', 0, 'https://e-magazine-recette.corp.aits.mg/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-06-25 07:30:44', '2019-06-25 05:30:44', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : https://e-magazine-recette.corp.aits.mg.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2019-06-25 07:30:44', '2019-06-25 05:30:44', '', 0, 'https://e-magazine-recette.corp.aits.mg/?page_id=3', 0, 'page', '', 0),
(14, 1, '2019-06-25 08:11:26', '2019-06-25 06:11:26', '', 'ajax-loading', '', 'inherit', 'open', 'closed', '', 'ajax-loading', '', '', '2019-06-25 08:11:26', '2019-06-25 06:11:26', '', 0, 'http://localhost/projets/axian/srcsemag-content/uploads/2019/06/ajax-loading.gif', 0, 'attachment', 'image/gif', 0),
(22, 1, '2019-06-25 14:16:43', '2019-06-25 12:16:43', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Dossiers', 'dossiers', 'publish', 'closed', 'closed', '', 'group_5d1210608d95d', '', '', '2019-06-25 14:16:43', '2019-06-25 12:16:43', '', 0, 'https://e-magazine-recette.corp.aits.mg/?post_type=acf-field-group&#038;p=22', 0, 'acf-field-group', '', 0),
(23, 1, '2019-06-25 14:16:43', '2019-06-25 12:16:43', 'a:10:{s:4:"type";s:4:"file";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:7:"library";s:3:"all";s:8:"min_size";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:4:".pdf";}', 'Pdf', 'pdf_magazine', 'publish', 'closed', 'closed', '', 'field_5d12107286427', '', '', '2019-06-25 14:16:43', '2019-06-25 12:16:43', '', 22, 'https://e-magazine-recette.corp.aits.mg/?post_type=acf-field&p=23', 0, 'acf-field', '', 0),
(25, 1, '2019-06-25 14:22:39', '2019-06-25 12:22:39', '<h2><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/06/Création-de-Plugin-WordPress.pdf">Création de Plugin WordPress</a>Qu\'est-ce que le Lorem Ipsum?</h2><p>Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.kqjsd</p>', 'ACG 2019', 'On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte', 'publish', 'open', 'open', '', 'acg-2019', '', '', '2019-07-03 15:44:28', '2019-07-03 13:44:28', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=25', 0, 'post', '', 0),
(26, 1, '2019-06-25 14:21:44', '2019-06-25 12:21:44', '', '618XR_uk', '', 'inherit', 'open', 'closed', '', '618xr_uk', '', '', '2019-06-25 14:21:44', '2019-06-25 12:21:44', '', 25, 'https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/06/618XR_uk.pdf', 0, 'attachment', 'application/pdf', 0),
(27, 1, '2019-06-25 14:22:21', '2019-06-25 12:22:21', '', '1080p-Full-HD-Images', '', 'inherit', 'open', 'closed', '', '1080p-full-hd-images', '', '', '2019-06-25 14:22:21', '2019-06-25 12:22:21', '', 25, 'https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/06/1080p-Full-HD-Images.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2019-06-25 14:22:39', '2019-06-25 12:22:39', '<h2>Qu\'est-ce que le Lorem Ipsum?</h2><p>Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>', 'ACG 2019', 'On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-06-25 14:22:39', '2019-06-25 12:22:39', '', 25, 'https://e-magazine-recette.corp.aits.mg/2019/06/25/25-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-07-01 10:20:28', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-01 10:20:28', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=30', 0, 'post', '', 0),
(31, 1, '2019-07-01 10:24:42', '2019-07-01 08:24:42', '<p><img class="alignnone size-medium wp-image-32" src="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/Air-Jordan-3-Tinker-Black-Cement-CK4348-007-2019-On-Foot-Release-Date-300x215.jpg" alt="" width="300" height="215" /> <img class="alignnone size-medium wp-image-33" src="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/IMG_20190621_134759-300x169.jpg" alt="" width="300" height="169" /> <img class="alignnone size-medium wp-image-34" src="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/jordan-jumpman-diamond-mid-official-release-date-5-300x211.jpg" alt="" width="300" height="211" /> <img class="alignnone size-medium wp-image-35" src="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/nike-air-force-1-white-pink-black-aa0287-107-1-300x211.jpg" alt="" width="300" height="211" /></p>', 'ByLoum', '', 'trash', 'open', 'open', '', 'byloum__trashed', '', '', '2019-07-01 14:32:34', '2019-07-01 12:32:34', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=31', 0, 'post', '', 0),
(36, 1, '2019-07-01 10:24:42', '2019-07-01 08:24:42', '<p><img class="alignnone size-medium wp-image-32" src="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/Air-Jordan-3-Tinker-Black-Cement-CK4348-007-2019-On-Foot-Release-Date-300x215.jpg" alt="" width="300" height="215" /> <img class="alignnone size-medium wp-image-33" src="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/IMG_20190621_134759-300x169.jpg" alt="" width="300" height="169" /> <img class="alignnone size-medium wp-image-34" src="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/jordan-jumpman-diamond-mid-official-release-date-5-300x211.jpg" alt="" width="300" height="211" /> <img class="alignnone size-medium wp-image-35" src="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/nike-air-force-1-white-pink-black-aa0287-107-1-300x211.jpg" alt="" width="300" height="211" /></p>', 'ByLoum', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-07-01 10:24:42', '2019-07-01 08:24:42', '', 31, 'https://e-magazine-recette.corp.aits.mg/2019/07/01/31-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-07-03 07:26:20', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-03 07:26:20', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=37', 0, 'post', '', 0),
(38, 1, '2019-07-03 07:36:24', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-03 07:36:24', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=38', 0, 'post', '', 0),
(39, 1, '2019-07-03 07:54:29', '2019-07-03 05:54:29', '<h2>Qu\'est-ce que le Lorem Ipsum?</h2><p>Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.kqjsd</p>', 'ACG 2019', 'On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte', 'inherit', 'closed', 'closed', '', '25-autosave-v1', '', '', '2019-07-03 07:54:29', '2019-07-03 05:54:29', '', 25, 'https://e-magazine-recette.corp.aits.mg/2019/07/03/25-autosave-v1/', 0, 'revision', '', 0),
(40, 1, '2019-07-03 08:34:40', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-03 08:34:40', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=40', 0, 'post', '', 0),
(41, 1, '2019-07-03 08:35:04', '2019-07-03 06:35:04', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/Création-de-Plugin-WordPress.pdf">Création de Plugin WordPress</a></p>', 'PDF flipbook', '', 'trash', 'closed', 'closed', '', 'pdf-flipbook__trashed', '', '', '2019-07-03 10:32:57', '2019-07-03 08:32:57', '', 0, 'https://e-magazine-recette.corp.aits.mg/pdf-flipbook/', 0, 'page', '', 0),
(43, 1, '2019-07-03 10:02:25', '2019-07-03 08:02:25', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/Création-de-Plugin-WordPress.pdf">Création de Plugin WordPress</a></p>', 'PDF flipbook', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-07-03 10:02:25', '2019-07-03 08:02:25', '', 41, 'https://e-magazine-recette.corp.aits.mg/2019/07/03/41-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-07-03 13:33:19', '2019-07-03 11:33:19', '', 'PDF flipbook', '', 'trash', 'closed', 'closed', '', 'pdf-flipbook__trashed-2', '', '', '2019-07-04 14:05:41', '2019-07-04 12:05:41', '', 0, 'https://e-magazine-recette.corp.aits.mg/pdf-flipbook/', 0, 'page', '', 0),
(45, 1, '2019-07-03 14:07:32', '2019-07-03 12:07:32', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'publish', 'open', 'open', '', 'tyest', '', '', '2019-07-04 09:57:04', '2019-07-04 07:57:04', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=45', 0, 'post', '', 0),
(46, 1, '2019-07-03 14:07:32', '2019-07-03 12:07:32', '<p>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-03 14:07:32', '2019-07-03 12:07:32', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/03/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-07-03 14:11:01', '2019-07-03 12:11:01', '<h2>Qu\'est-ce que le Lorem Ipsum?</h2><p>Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.kqjsd</p>', 'ACG 2019', 'On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-07-03 14:11:01', '2019-07-03 12:11:01', '', 25, 'https://e-magazine-recette.corp.aits.mg/2019/07/03/25-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2019-07-03 15:40:35', '2019-07-03 13:40:35', '<h2><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/06/Création-de-Plugin-WordPress.pdf">Création de Plugin WordPress</a>Qu\'est-ce que le Lorem Ipsum?</h2><p>Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.kqjsd</p>', 'ACG 2019', 'On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-07-03 15:40:35', '2019-07-03 13:40:35', '', 25, 'https://e-magazine-recette.corp.aits.mg/2019/07/03/25-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-07-03 15:53:31', '2019-07-03 13:53:31', '', 'css', '', 'inherit', 'open', 'closed', '', 'css', '', '', '2019-07-03 15:53:31', '2019-07-03 13:53:31', '', 45, 'https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf', 0, 'attachment', 'application/pdf', 0),
(51, 1, '2019-07-03 15:53:49', '2019-07-03 13:53:49', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-03 15:53:49', '2019-07-03 13:53:49', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/03/45-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-07-03 16:00:44', '2019-07-03 14:00:44', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-03 16:00:44', '2019-07-03 14:00:44', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/03/45-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2019-07-03 16:02:24', '2019-07-03 14:02:24', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-03 16:02:24', '2019-07-03 14:02:24', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/03/45-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-07-03 16:05:31', '2019-07-03 14:05:31', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-03 16:05:31', '2019-07-03 14:05:31', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/03/45-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-07-03 16:08:11', '2019-07-03 14:08:11', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-03 16:08:11', '2019-07-03 14:08:11', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/03/45-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-07-03 16:10:42', '2019-07-03 14:10:42', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-03 16:10:42', '2019-07-03 14:10:42', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/03/45-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-07-03 16:11:54', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-03 16:11:54', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=57', 0, 'post', '', 0),
(58, 1, '2019-07-03 16:12:15', '2019-07-03 14:12:15', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-03 16:12:15', '2019-07-03 14:12:15', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/03/45-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-07-03 16:12:59', '2019-07-03 14:12:59', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-03 16:12:59', '2019-07-03 14:12:59', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/03/45-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2019-07-03 16:13:21', '2019-07-03 14:13:21', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-03 16:13:21', '2019-07-03 14:13:21', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/03/45-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2019-07-03 16:15:16', '2019-07-03 14:15:16', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-03 16:15:16', '2019-07-03 14:15:16', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/03/45-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-07-03 16:17:02', '2019-07-03 14:17:02', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-03 16:17:02', '2019-07-03 14:17:02', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/03/45-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2019-07-03 16:20:38', '2019-07-03 14:20:38', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-03 16:20:38', '2019-07-03 14:20:38', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/03/45-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-07-03 16:30:14', '2019-07-03 14:30:14', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-03 16:30:14', '2019-07-03 14:30:14', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/03/45-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-07-03 16:31:55', '2019-07-03 14:31:55', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-03 16:31:55', '2019-07-03 14:31:55', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/03/45-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2019-07-03 16:36:25', '2019-07-03 14:36:25', '', 'initiation-HTML-CSS', '', 'inherit', 'open', 'closed', '', 'initiation-html-css', '', '', '2019-07-03 16:36:25', '2019-07-03 14:36:25', '', 45, 'https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/initiation-HTML-CSS.pdf', 0, 'attachment', 'application/pdf', 0),
(67, 1, '2019-07-03 16:36:32', '2019-07-03 14:36:32', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-03 16:36:32', '2019-07-03 14:36:32', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/03/45-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2019-07-04 07:46:39', '2019-07-04 05:46:39', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-04 07:46:39', '2019-07-04 05:46:39', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/45-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-07-04 07:48:15', '2019-07-04 05:48:15', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-04 07:48:15', '2019-07-04 05:48:15', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/45-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-07-04 08:20:27', '2019-07-04 06:20:27', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-04 08:20:27', '2019-07-04 06:20:27', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/45-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-07-04 08:44:39', '2019-07-04 06:44:39', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-04 08:44:39', '2019-07-04 06:44:39', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/45-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-07-04 08:48:07', '2019-07-04 06:48:07', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-04 08:48:07', '2019-07-04 06:48:07', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/45-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2019-07-04 08:51:45', '2019-07-04 06:51:45', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-04 08:51:45', '2019-07-04 06:51:45', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/45-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2019-07-04 08:53:45', '2019-07-04 06:53:45', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-04 08:53:45', '2019-07-04 06:53:45', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/45-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2019-07-04 08:54:02', '2019-07-04 06:54:02', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-04 08:54:02', '2019-07-04 06:54:02', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/45-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-07-04 09:39:56', '2019-07-04 07:39:56', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-04 09:39:56', '2019-07-04 07:39:56', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/45-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2019-07-04 09:40:31', '2019-07-04 07:40:31', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-04 09:40:31', '2019-07-04 07:40:31', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/45-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-07-04 09:40:59', '2019-07-04 07:40:59', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-04 09:40:59', '2019-07-04 07:40:59', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/45-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2019-07-04 09:44:21', '2019-07-04 07:44:21', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-04 09:44:21', '2019-07-04 07:44:21', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/45-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-07-04 09:46:07', '2019-07-04 07:46:07', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-04 09:46:07', '2019-07-04 07:46:07', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/45-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-07-04 09:51:19', '2019-07-04 07:51:19', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-04 09:51:19', '2019-07-04 07:51:19', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/45-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-07-04 09:54:03', '2019-07-04 07:54:03', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-04 09:54:03', '2019-07-04 07:54:03', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/45-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2019-07-04 09:57:04', '2019-07-04 07:57:04', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>xwcwxcwxcwxcwxc</p>', 'tyest', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-04 09:57:04', '2019-07-04 07:57:04', '', 45, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/45-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2019-07-04 14:05:41', '2019-07-04 12:05:41', '', 'PDF flipbook', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-07-04 14:05:41', '2019-07-04 12:05:41', '', 44, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/44-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2019-07-04 14:05:44', '2019-07-04 12:05:44', '', 'PDF flipbook', '', 'publish', 'closed', 'closed', '', 'pdf-flipbook', '', '', '2019-07-04 14:05:44', '2019-07-04 12:05:44', '', 0, 'https://e-magazine-recette.corp.aits.mg/pdf-flipbook/', 0, 'page', '', 0),
(86, 1, '2019-07-04 14:06:44', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 14:06:44', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?page_id=86', 0, 'page', '', 0),
(87, 1, '2019-07-04 14:09:16', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 14:09:16', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?page_id=87', 0, 'page', '', 0),
(88, 1, '2019-07-04 14:16:37', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 14:16:37', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?page_id=88', 0, 'page', '', 0),
(89, 1, '2019-07-04 14:17:04', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 14:17:04', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?page_id=89', 0, 'page', '', 0),
(90, 1, '2019-07-04 14:21:37', '2019-07-04 12:21:37', '', 'exemple E-magazine', '', 'publish', 'closed', 'closed', '', 'exemple-e-magazine', '', '', '2019-07-04 14:39:39', '2019-07-04 12:39:39', '', 2, 'https://e-magazine-recette.corp.aits.mg/?page_id=90', 0, 'page', '', 0),
(91, 1, '2019-07-04 14:21:03', '2019-07-04 12:21:03', '', 'exemple E-magazine', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2019-07-04 14:21:03', '2019-07-04 12:21:03', '', 90, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/90-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2019-07-04 14:21:22', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 14:21:22', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?page_id=92', 0, 'page', '', 0),
(93, 1, '2019-07-04 15:37:11', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 15:37:11', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?page_id=93', 0, 'page', '', 0),
(94, 1, '2019-07-04 15:50:24', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 15:50:24', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?page_id=94', 0, 'page', '', 0),
(95, 1, '2019-07-04 15:50:27', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 15:50:27', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?page_id=95', 0, 'page', '', 0),
(96, 1, '2019-07-04 15:53:59', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 15:53:59', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?page_id=96', 0, 'page', '', 0),
(97, 1, '2019-07-04 15:54:01', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 15:54:01', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?page_id=97', 0, 'page', '', 0),
(98, 1, '2019-07-04 15:55:36', '2019-07-04 13:55:36', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>qxq</p>', 'xqsx', '', 'trash', 'closed', 'closed', '', 'xqsx__trashed', '', '', '2019-07-04 15:59:06', '2019-07-04 13:59:06', '', 0, 'https://e-magazine-recette.corp.aits.mg/?page_id=98', 0, 'page', '', 0),
(99, 1, '2019-07-04 15:55:36', '2019-07-04 13:55:36', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a>qxq</p>', 'xqsx', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2019-07-04 15:55:36', '2019-07-04 13:55:36', '', 98, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/98-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2019-07-04 15:57:27', '2019-07-04 13:57:27', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a></p>', 'test ajout', '', 'trash', 'closed', 'closed', '', 'test-ajout__trashed', '', '', '2019-07-04 15:59:04', '2019-07-04 13:59:04', '', 0, 'https://e-magazine-recette.corp.aits.mg/?page_id=100', 0, 'page', '', 0),
(101, 1, '2019-07-04 15:57:27', '2019-07-04 13:57:27', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a></p>', 'test ajout', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2019-07-04 15:57:27', '2019-07-04 13:57:27', '', 100, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/100-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2019-07-04 15:57:36', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 15:57:36', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?page_id=102', 0, 'page', '', 0),
(103, 1, '2019-07-04 15:58:06', '2019-07-04 13:58:06', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a></p>', 'test_ajout', '', 'trash', 'closed', 'closed', '', 'test_ajout__trashed', '', '', '2019-07-04 15:59:05', '2019-07-04 13:59:05', '', 0, 'https://e-magazine-recette.corp.aits.mg/?page_id=103', 0, 'page', '', 0),
(104, 1, '2019-07-04 15:58:06', '2019-07-04 13:58:06', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/css.pdf">css</a></p>', 'test_ajout', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2019-07-04 15:58:06', '2019-07-04 13:58:06', '', 103, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/103-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2019-07-04 16:00:09', '2019-07-04 14:00:09', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/Création-de-Plugin-WordPress.pdf">Création de Plugin WordPress</a></p>', 'test ajout', '', 'trash', 'closed', 'closed', '', 'test-ajout__trashed-2', '', '', '2019-07-04 16:01:39', '2019-07-04 14:01:39', '', 0, 'https://e-magazine-recette.corp.aits.mg/?page_id=105', 0, 'page', '', 0),
(106, 1, '2019-07-04 16:00:01', '2019-07-04 14:00:01', '', 'Création de Plugin WordPress', '', 'inherit', 'open', 'closed', '', 'creation-de-plugin-wordpress', '', '', '2019-07-04 16:00:01', '2019-07-04 14:00:01', '', 105, 'https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/Création-de-Plugin-WordPress.pdf', 0, 'attachment', 'application/pdf', 0),
(107, 1, '2019-07-04 16:00:09', '2019-07-04 14:00:09', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/Création-de-Plugin-WordPress.pdf">Création de Plugin WordPress</a></p>', 'test ajout', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2019-07-04 16:00:09', '2019-07-04 14:00:09', '', 105, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/105-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2019-07-04 16:03:07', '2019-07-04 14:03:07', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/Création-de-Plugin-WordPress.pdf">Création de Plugin WordPress</a></p>', 'tentative', '', 'trash', 'closed', 'closed', '', 'tentative__trashed', '', '', '2019-07-04 16:13:07', '2019-07-04 14:13:07', '', 0, 'https://e-magazine-recette.corp.aits.mg/?page_id=108', 0, 'page', '', 0),
(109, 1, '2019-07-04 16:03:07', '2019-07-04 14:03:07', '', 'tentative', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2019-07-04 16:03:07', '2019-07-04 14:03:07', '', 108, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/108-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2019-07-04 16:03:56', '2019-07-04 14:03:56', '<p><a href="https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/Création-de-Plugin-WordPress.pdf">Création de Plugin WordPress</a></p>', 'tentative', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2019-07-04 16:03:56', '2019-07-04 14:03:56', '', 108, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/108-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2019-07-04 16:06:33', '2019-07-04 14:06:33', '', 'test ajout magazine', '', 'trash', 'open', 'open', '', 'test-ajout-magazine__trashed', '', '', '2019-07-05 07:39:59', '2019-07-05 05:39:59', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=111', 0, 'post', '', 0),
(112, 1, '2019-07-04 16:06:33', '2019-07-04 14:06:33', '', 'test ajout magazine', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2019-07-04 16:06:33', '2019-07-04 14:06:33', '', 111, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/111-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2019-07-04 16:06:55', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-04 16:06:55', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=113', 0, 'post', '', 0),
(114, 1, '2019-07-04 16:09:10', '2019-07-04 14:09:10', '', 'test _ajoiut', '', 'trash', 'open', 'open', '', 'test-_ajoiut__trashed', '', '', '2019-07-05 07:39:14', '2019-07-05 05:39:14', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=114', 0, 'post', '', 0),
(115, 1, '2019-07-04 16:09:10', '2019-07-04 14:09:10', '', 'test _ajoiut', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2019-07-04 16:09:10', '2019-07-04 14:09:10', '', 114, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/114-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2019-07-04 16:12:23', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-04 16:12:23', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=116', 0, 'post', '', 0),
(117, 1, '2019-07-04 16:42:39', '2019-07-04 14:42:39', '', 'Hello', '', 'trash', 'open', 'open', '', 'hello__trashed', '', '', '2019-07-05 07:37:05', '2019-07-05 05:37:05', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=117', 0, 'post', '', 0),
(118, 1, '2019-07-04 16:42:39', '2019-07-04 14:42:39', '', 'Hello', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2019-07-04 16:42:39', '2019-07-04 14:42:39', '', 117, 'https://e-magazine-recette.corp.aits.mg/2019/07/04/117-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2019-07-04 17:10:23', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-04 17:10:23', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=119', 0, 'post', '', 0),
(120, 1, '2019-07-05 10:42:01', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-05 10:42:01', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=120', 0, 'post', '', 0),
(121, 1, '2019-07-05 14:27:09', '2019-07-05 12:27:09', '', 'exemple de save_post', '', 'publish', 'open', 'open', '', 'exemple-de-save_post', '', '', '2019-07-05 14:27:09', '2019-07-05 12:27:09', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=121', 0, 'post', '', 0),
(122, 1, '2019-07-05 14:27:09', '2019-07-05 12:27:09', '', 'exemple de save_post', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2019-07-05 14:27:09', '2019-07-05 12:27:09', '', 121, 'https://e-magazine-recette.corp.aits.mg/2019/07/05/121-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2019-07-05 14:42:01', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-05 14:42:01', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=123', 0, 'post', '', 0),
(124, 1, '2019-07-05 14:45:27', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-05 14:45:27', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=124', 0, 'post', '', 0),
(125, 1, '2019-07-05 14:48:52', '2019-07-05 12:48:52', '', 'post data', '', 'publish', 'open', 'open', '', 'post-data', '', '', '2019-07-05 14:48:52', '2019-07-05 12:48:52', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=125', 0, 'post', '', 0) ;
INSERT INTO `emag_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(126, 1, '2019-07-05 14:48:52', '2019-07-05 12:48:52', '', 'post data', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2019-07-05 14:48:52', '2019-07-05 12:48:52', '', 125, 'https://e-magazine-recette.corp.aits.mg/2019/07/05/125-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2019-07-05 15:22:44', '2019-07-05 13:22:44', '', 'tayac', '', 'publish', 'open', 'open', '', 'tayac', '', '', '2019-07-05 15:22:44', '2019-07-05 13:22:44', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=127', 0, 'post', '', 0),
(128, 1, '2019-07-05 15:22:44', '2019-07-05 13:22:44', '', 'tayac', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2019-07-05 15:22:44', '2019-07-05 13:22:44', '', 127, 'https://e-magazine-recette.corp.aits.mg/2019/07/05/127-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2019-07-05 15:26:31', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-05 15:26:31', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=129', 0, 'post', '', 0),
(130, 1, '2019-07-05 15:37:28', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-05 15:37:28', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=130', 0, 'post', '', 0),
(131, 1, '2019-07-05 16:15:26', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-05 16:15:26', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=131', 0, 'post', '', 0),
(132, 1, '2019-07-05 16:16:55', '2019-07-05 14:16:55', '', 'qdqsdqdqds', '', 'publish', 'open', 'open', '', 'qdqsdqdqds', '', '', '2019-07-05 16:57:29', '2019-07-05 14:57:29', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=132', 0, 'post', '', 0),
(133, 1, '2019-07-05 16:16:55', '2019-07-05 14:16:55', '', 'qdqsdqdqds', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2019-07-05 16:16:55', '2019-07-05 14:16:55', '', 132, 'https://e-magazine-recette.corp.aits.mg/2019/07/05/132-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2019-07-05 16:18:13', '2019-07-05 14:18:13', '', 'qdqsdqdqds', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2019-07-05 16:18:13', '2019-07-05 14:18:13', '', 132, 'https://e-magazine-recette.corp.aits.mg/2019/07/05/132-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2019-07-05 16:18:36', '2019-07-05 14:18:36', '', 'qdqsdqdqds', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2019-07-05 16:18:36', '2019-07-05 14:18:36', '', 132, 'https://e-magazine-recette.corp.aits.mg/2019/07/05/132-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2019-07-05 16:19:33', '2019-07-05 14:19:33', '', 'qdqsdqdqds', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2019-07-05 16:19:33', '2019-07-05 14:19:33', '', 132, 'https://e-magazine-recette.corp.aits.mg/2019/07/05/132-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2019-07-05 16:26:00', '2019-07-05 14:26:00', '', 'qdqsdqdqds', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2019-07-05 16:26:00', '2019-07-05 14:26:00', '', 132, 'https://e-magazine-recette.corp.aits.mg/2019/07/05/132-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2019-07-05 16:44:05', '2019-07-05 14:44:05', '', 'qdqsdqdqds', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2019-07-05 16:44:05', '2019-07-05 14:44:05', '', 132, 'https://e-magazine-recette.corp.aits.mg/2019/07/05/132-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2019-07-05 16:58:38', '2019-07-05 14:58:38', '', 'abel', '', 'publish', 'open', 'open', '', 'abel', '', '', '2019-07-05 16:59:52', '2019-07-05 14:59:52', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=139', 0, 'post', '', 0),
(140, 1, '2019-07-05 17:02:40', '2019-07-05 15:02:40', '', 'turn js', '', 'publish', 'open', 'open', '', 'turn-js', '', '', '2019-07-05 17:29:45', '2019-07-05 15:29:45', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=140', 0, 'post', '', 0),
(141, 1, '2019-07-05 17:06:20', '2019-07-05 15:06:20', '', 'turn js', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2019-07-05 17:06:20', '2019-07-05 15:06:20', '', 140, 'https://e-magazine-recette.corp.aits.mg/2019/07/05/140-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2019-07-05 17:10:41', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-05 17:10:41', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=142', 0, 'post', '', 0),
(143, 1, '2019-07-05 17:11:25', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-05 17:11:25', '0000-00-00 00:00:00', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=143', 0, 'post', '', 0),
(144, 1, '2019-07-05 17:15:12', '2019-07-05 15:15:12', '', 'dqsdqsdq', '', 'publish', 'open', 'open', '', 'dqsdqsdq', '', '', '2019-07-05 17:43:02', '2019-07-05 15:43:02', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=144', 0, 'post', '', 0),
(145, 1, '2019-07-05 17:15:12', '2019-07-05 15:15:12', '', 'dqsdqsdq', '', 'inherit', 'closed', 'closed', '', '144-revision-v1', '', '', '2019-07-05 17:15:12', '2019-07-05 15:15:12', '', 144, 'https://e-magazine-recette.corp.aits.mg/2019/07/05/144-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2019-07-05 17:17:28', '2019-07-05 15:17:28', '', 'dqsdqsdq', '', 'inherit', 'closed', 'closed', '', '144-revision-v1', '', '', '2019-07-05 17:17:28', '2019-07-05 15:17:28', '', 144, 'https://e-magazine-recette.corp.aits.mg/2019/07/05/144-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2019-07-05 17:19:18', '2019-07-05 15:19:18', '', 'dqsdqsdq', '', 'inherit', 'closed', 'closed', '', '144-revision-v1', '', '', '2019-07-05 17:19:18', '2019-07-05 15:19:18', '', 144, 'https://e-magazine-recette.corp.aits.mg/2019/07/05/144-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2019-07-05 17:24:03', '2019-07-05 15:24:03', '', 'dqsdqsdq', '', 'inherit', 'closed', 'closed', '', '144-revision-v1', '', '', '2019-07-05 17:24:03', '2019-07-05 15:24:03', '', 144, 'https://e-magazine-recette.corp.aits.mg/2019/07/05/144-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2019-07-05 17:29:45', '2019-07-05 15:29:45', '', 'turn js', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2019-07-05 17:29:45', '2019-07-05 15:29:45', '', 140, 'https://e-magazine-recette.corp.aits.mg/2019/07/05/140-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2019-07-05 17:43:02', '2019-07-05 15:43:02', '', 'dqsdqsdq', '', 'inherit', 'closed', 'closed', '', '144-revision-v1', '', '', '2019-07-05 17:43:02', '2019-07-05 15:43:02', '', 144, 'https://e-magazine-recette.corp.aits.mg/2019/07/05/144-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2019-07-05 17:43:51', '2019-07-05 15:43:51', '', 'samihafa', '', 'publish', 'open', 'open', '', 'samihafa', '', '', '2019-07-05 17:43:51', '2019-07-05 15:43:51', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=151', 0, 'post', '', 0),
(152, 1, '2019-07-05 17:43:51', '2019-07-05 15:43:51', '', 'samihafa', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2019-07-05 17:43:51', '2019-07-05 15:43:51', '', 151, 'https://e-magazine-recette.corp.aits.mg/2019/07/05/151-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2019-07-08 07:53:10', '2019-07-08 05:53:10', '', 'key', '', 'publish', 'open', 'open', '', 'key', '', '', '2019-07-08 07:53:10', '2019-07-08 05:53:10', '', 0, 'https://e-magazine-recette.corp.aits.mg/?p=153', 0, 'post', '', 0),
(154, 1, '2019-07-08 07:53:02', '2019-07-08 05:53:02', '', 'keyboard-shortcuts-windows', '', 'inherit', 'open', 'closed', '', 'keyboard-shortcuts-windows', '', '', '2019-07-08 07:53:02', '2019-07-08 05:53:02', '', 153, 'https://e-magazine-recette.corp.aits.mg/emag-content/uploads/2019/07/keyboard-shortcuts-windows.pdf', 0, 'attachment', 'application/pdf', 0),
(155, 1, '2019-07-08 07:53:10', '2019-07-08 05:53:10', '', 'key', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2019-07-08 07:53:10', '2019-07-08 05:53:10', '', 153, 'https://e-magazine-recette.corp.aits.mg/2019/07/08/153-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `emag_posts`
# --------------------------------------------------------



#
# Delete any existing table `emag_term_relationships`
#

DROP TABLE IF EXISTS `emag_term_relationships`;


#
# Table structure of table `emag_term_relationships`
#

CREATE TABLE `emag_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `emag_term_relationships`
#
INSERT INTO `emag_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(25, 1, 0),
(31, 1, 0),
(45, 1, 0),
(111, 1, 0),
(114, 1, 0),
(117, 1, 0),
(121, 1, 0),
(125, 1, 0),
(127, 1, 0),
(132, 1, 0),
(139, 1, 0),
(140, 1, 0),
(144, 1, 0),
(151, 1, 0),
(153, 1, 0) ;

#
# End of data contents of table `emag_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `emag_term_taxonomy`
#

DROP TABLE IF EXISTS `emag_term_taxonomy`;


#
# Table structure of table `emag_term_taxonomy`
#

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


#
# Data contents of table `emag_term_taxonomy`
#
INSERT INTO `emag_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 12) ;

#
# End of data contents of table `emag_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `emag_termmeta`
#

DROP TABLE IF EXISTS `emag_termmeta`;


#
# Table structure of table `emag_termmeta`
#

CREATE TABLE `emag_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `emag_termmeta`
#

#
# End of data contents of table `emag_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `emag_terms`
#

DROP TABLE IF EXISTS `emag_terms`;


#
# Table structure of table `emag_terms`
#

CREATE TABLE `emag_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `emag_terms`
#
INSERT INTO `emag_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0) ;

#
# End of data contents of table `emag_terms`
# --------------------------------------------------------



#
# Delete any existing table `emag_trace_magazine`
#

DROP TABLE IF EXISTS `emag_trace_magazine`;


#
# Table structure of table `emag_trace_magazine`
#

CREATE TABLE `emag_trace_magazine` (
  `mag_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mag_postid` int(11) NOT NULL,
  `mag_order` int(11) NOT NULL,
  `mag_attachment` int(11) NOT NULL,
  `mag_timestamp` int(11) NOT NULL,
  UNIQUE KEY `mag_id` (`mag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `emag_trace_magazine`
#

#
# End of data contents of table `emag_trace_magazine`
# --------------------------------------------------------



#
# Delete any existing table `emag_usermeta`
#

DROP TABLE IF EXISTS `emag_usermeta`;


#
# Table structure of table `emag_usermeta`
#

CREATE TABLE `emag_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;


#
# Data contents of table `emag_usermeta`
#
INSERT INTO `emag_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'emagazine_admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'emag_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'emag_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:"982ebf528de338090ba65c1d1fa7444701bd9b3fff77265e832418e9d93887b2";a:4:{s:10:"expiration";i:1562650262;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36";s:5:"login";i:1561440662;}s:64:"e3fdbd4c488ede076822454c0069a7d0ba4764d7cba52e3fe8e0da41a8748f32";a:4:{s:10:"expiration";i:1563193900;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36";s:5:"login";i:1561984300;}s:64:"8a4e13b89406c39ae1eb4aea1c7a3f4e1e49e6c6db2fbe7faa9e5c55daf6502b";a:4:{s:10:"expiration";i:1562736955;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36";s:5:"login";i:1562564155;}s:64:"d6be869af9361801da98958e1793a0406d66d92a3f8dec3e7765a893fa18ee7f";a:4:{s:10:"expiration";i:1562770463;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36";s:5:"login";i:1562597663;}}'),
(17, 1, 'emag_dashboard_quick_press_last_post_id', '37'),
(18, 1, 'meta-box-order_post', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:34:"submitdiv,categorydiv,postimagediv";s:6:"normal";s:60:"postexcerpt,trackbacksdiv,commentstatusdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(19, 1, 'screen_layout_post', '2'),
(20, 1, 'closedpostboxes_post', 'a:0:{}'),
(21, 1, 'metaboxhidden_post', 'a:5:{i:0;s:13:"trackbacksdiv";i:1;s:16:"commentstatusdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";i:4;s:10:"postcustom";}'),
(22, 1, 'emag_user-settings', 'editor_expand=off&editor=tinymce&libraryContent=browse&ed_size=350&mfold=o'),
(23, 1, 'emag_user-settings-time', '1562140943'),
(24, 1, 'emag_media_library_mode', 'list') ;

#
# End of data contents of table `emag_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `emag_users`
#

DROP TABLE IF EXISTS `emag_users`;


#
# Table structure of table `emag_users`
#

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


#
# Data contents of table `emag_users`
#
INSERT INTO `emag_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'emagazine_admin', '$P$BXR898ns..KqLI1vEEsnG/fg81sNqU1', 'emagazine_admin', 'narisoa.andriambololona@axian-group.com', '', '2019-06-25 05:30:44', '', 0, 'emagazine_admin') ;

#
# End of data contents of table `emag_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

