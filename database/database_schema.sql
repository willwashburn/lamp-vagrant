# ************************************************************
# Sequel Pro SQL dump
# Version 4004
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.1.67-log)
# Database: datastore
# Generation Time: 2013-05-06 17:57:14 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table cache_domain_influencers
# ------------------------------------------------------------

CREATE TABLE `cache_domain_influencers` (
  `domain` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `influencer_user_id` bigint(20) DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `domain_mentions` int(11) DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `follower_count` int(11) DEFAULT NULL,
  `following_count` int(11) DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `board_count` int(11) DEFAULT NULL,
  `pin_count` int(11) DEFAULT NULL,
  `like_count` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`domain`,`username`),
  KEY `source` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table cache_domain_pins
# ------------------------------------------------------------

CREATE TABLE `cache_domain_pins` (
  `domain` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pin_id` bigint(20) unsigned NOT NULL COMMENT 'this is the unique id of the pin found in the url (''/pin/[pin_id]'')',
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `board_id` bigint(20) unsigned DEFAULT NULL,
  `is_repin` tinyint(1) unsigned DEFAULT NULL,
  `parent_pin` bigint(20) unsigned DEFAULT NULL,
  `image_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `dominant_color` char(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `repin_count` int(11) DEFAULT NULL,
  `like_count` int(11) DEFAULT NULL,
  `comment_count` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`pin_id`,`domain`),
  KEY `board_id` (`board_id`),
  KEY `source` (`domain`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table cache_profile_influencers
# ------------------------------------------------------------

CREATE TABLE `cache_profile_influencers` (
  `user_id` bigint(20) NOT NULL,
  `influencer_user_id` bigint(20) NOT NULL DEFAULT '0',
  `influencer_username` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `follower_count` int(11) DEFAULT NULL,
  `following_count` int(11) DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `board_count` int(11) DEFAULT NULL,
  `pin_count` int(11) DEFAULT NULL,
  `like_count` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`influencer_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table cache_profile_pins
# ------------------------------------------------------------

CREATE TABLE `cache_profile_pins` (
  `user_id` bigint(20) NOT NULL,
  `pin_id` bigint(20) unsigned NOT NULL COMMENT 'this is the unique id of the pin found in the url (''/pin/[pin_id]'')',
  `board_id` bigint(20) DEFAULT NULL,
  `domain` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_repin` tinyint(1) DEFAULT NULL,
  `parent_pin` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `repin_count` int(11) DEFAULT NULL,
  `like_count` int(11) DEFAULT NULL,
  `comment_count` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`pin_id`,`user_id`),
  KEY `username` (`user_id`),
  KEY `board_id` (`board_id`),
  KEY `source` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table cache_traffic_influencers
# ------------------------------------------------------------

CREATE TABLE `cache_traffic_influencers` (
  `traffic_id` int(11) NOT NULL,
  `influencer_user_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visits` int(11) DEFAULT NULL,
  `revenue` double DEFAULT NULL,
  `transactions` int(11) DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `follower_count` int(11) DEFAULT NULL,
  `following_count` int(11) DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `board_count` int(11) DEFAULT NULL,
  `pin_count` int(11) DEFAULT NULL,
  `like_count` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table cache_traffic_pins
# ------------------------------------------------------------

CREATE TABLE `cache_traffic_pins` (
  `traffic_id` int(11) NOT NULL DEFAULT '0',
  `pin_id` bigint(20) unsigned NOT NULL COMMENT 'this is the unique id of the pin found in the url (''/pin/[pin_id]'')',
  `visits` int(11) DEFAULT NULL,
  `transactions` int(11) DEFAULT NULL,
  `revenue` double DEFAULT NULL,
  `domain` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` bigint(20) DEFAULT NULL,
  `board_id` bigint(20) DEFAULT NULL,
  `is_repin` tinyint(1) DEFAULT NULL,
  `parent_pin` bigint(20) DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `repin_count` int(11) DEFAULT NULL,
  `like_count` int(11) DEFAULT NULL,
  `comment_count` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`traffic_id`,`pin_id`),
  KEY `board_id` (`board_id`),
  KEY `source` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table calcs_board_history
# ------------------------------------------------------------

CREATE TABLE `calcs_board_history` (
  `board_id` bigint(20) unsigned NOT NULL,
  `date` int(11) NOT NULL DEFAULT '0',
  `user_id` bigint(20) DEFAULT NULL,
  `followers` int(11) DEFAULT NULL,
  `pins` int(11) DEFAULT NULL,
  `repins` int(11) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `comments` int(11) DEFAULT NULL,
  `pins_atleast_one_repin` int(11) DEFAULT NULL,
  `pins_atleast_one_like` int(11) DEFAULT NULL,
  `pins_atleast_one_comment` int(11) DEFAULT NULL,
  `pins_atleast_one_engage` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`board_id`,`date`),
  KEY `username` (`user_id`),
  KEY `board_id` (`board_id`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table calcs_domain_history
# ------------------------------------------------------------

CREATE TABLE `calcs_domain_history` (
  `domain` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT '0',
  `domain_mentions` int(11) DEFAULT NULL,
  `repin_count` int(11) DEFAULT NULL,
  `like_count` int(11) DEFAULT NULL,
  `comment_count` int(11) DEFAULT NULL,
  `unique_domain_pinners` int(11) DEFAULT NULL,
  `domain_reach` int(11) DEFAULT NULL,
  `domain_impressions` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`domain`,`date`),
  KEY `source` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table calcs_profile_categories
# ------------------------------------------------------------

CREATE TABLE `calcs_profile_categories` (
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `category` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `boards` int(11) DEFAULT NULL,
  `pins` int(11) DEFAULT NULL,
  `repins` int(11) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `comments` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table calcs_profile_history
# ------------------------------------------------------------

CREATE TABLE `calcs_profile_history` (
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL DEFAULT '0',
  `follower_count` int(11) DEFAULT NULL,
  `following_count` int(11) DEFAULT NULL,
  `reach` int(11) DEFAULT NULL,
  `board_count` int(11) DEFAULT NULL,
  `pin_count` int(11) DEFAULT NULL,
  `repin_count` int(11) DEFAULT NULL,
  `like_count` int(11) DEFAULT NULL,
  `comment_count` int(11) DEFAULT NULL,
  `pins_atleast_one_repin` int(11) DEFAULT NULL,
  `pins_atleast_one_like` int(11) DEFAULT NULL,
  `pins_atleast_one_comment` int(11) DEFAULT NULL,
  `pins_atleast_one_engage` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table data_boards
# ------------------------------------------------------------

CREATE TABLE `data_boards` (
  `board_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `owner_user_id` bigint(20) DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_collaborator` tinyint(1) unsigned DEFAULT NULL,
  `is_owner` tinyint(1) unsigned DEFAULT NULL,
  `collaborator_count` int(11) unsigned DEFAULT NULL,
  `image_cover_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `category` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin_count` int(11) unsigned DEFAULT NULL,
  `follower_count` int(11) unsigned DEFAULT NULL,
  `created_at` int(11) unsigned DEFAULT NULL,
  `last_pulled` int(11) unsigned DEFAULT NULL,
  `track_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`board_id`,`user_id`),
  KEY `username` (`user_id`),
  KEY `last_pulled` (`last_pulled`),
  KEY `track_type` (`track_type`),
  KEY `board_id` (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table data_followers
# ------------------------------------------------------------

CREATE TABLE `data_followers` (
  `user_id` bigint(20) NOT NULL,
  `follower_user_id` bigint(20) NOT NULL,
  `follower_pin_count` int(11) DEFAULT NULL,
  `follower_followers` int(11) unsigned DEFAULT NULL,
  `follower_created_at` int(11) DEFAULT NULL,
  `follower_facebook` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `follower_twitter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `follower_domain` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `follower_domain_verified` tinyint(1) DEFAULT NULL,
  `follower_location` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`user_id`,`follower_user_id`),
  KEY `username` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table data_pins_comments
# ------------------------------------------------------------

CREATE TABLE `data_pins_comments` (
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pin_id` bigint(20) unsigned NOT NULL,
  `commenter_user_id` bigint(20) unsigned DEFAULT NULL,
  `comment_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `created_at` int(11) DEFAULT NULL,
  `timestamp` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `created_at` (`created_at`),
  KEY `pin_id` (`pin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table data_pins_likes
# ------------------------------------------------------------

CREATE TABLE `data_pins_likes` (
  `pin_id` bigint(20) unsigned NOT NULL,
  `liker_user_id` bigint(20) NOT NULL,
  `timestamp` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`pin_id`,`liker_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table data_pins_new
# ------------------------------------------------------------

CREATE TABLE `data_pins_new` (
  `pin_id` bigint(20) unsigned NOT NULL COMMENT 'this is the unique id of the pin found in the url (''/pin/[pin_id]'')',
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `board_id` bigint(20) unsigned DEFAULT NULL,
  `domain` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_repin` tinyint(1) unsigned DEFAULT NULL,
  `parent_pin` bigint(20) unsigned DEFAULT NULL,
  `via_pinner` bigint(20) unsigned DEFAULT NULL,
  `image_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_square_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dominant_color` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rich_product` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `repin_count` int(11) unsigned DEFAULT NULL,
  `like_count` int(11) unsigned DEFAULT NULL,
  `comment_count` int(11) unsigned DEFAULT NULL,
  `created_at` int(11) unsigned DEFAULT NULL,
  `image_id` bigint(20) unsigned DEFAULT NULL,
  `last_pulled` int(11) unsigned DEFAULT NULL,
  `track_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`pin_id`),
  KEY `username` (`user_id`),
  KEY `board_id` (`board_id`),
  KEY `last_pulled` (`last_pulled`),
  KEY `track_type` (`track_type`),
  KEY `domain` (`domain`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table data_pins_repins
# ------------------------------------------------------------

CREATE TABLE `data_pins_repins` (
  `pin_id` bigint(20) unsigned NOT NULL,
  `repinner_user_id` bigint(20) NOT NULL DEFAULT '0',
  `board_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `board_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `board_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `board_follower_count` int(11) DEFAULT NULL,
  `is_collaborative` tinyint(1) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `timestamp` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`pin_id`,`repinner_user_id`,`board_id`),
  KEY `created_at` (`created_at`),
  KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table data_profiles_new
# ------------------------------------------------------------

CREATE TABLE `data_profiles_new` (
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `domain_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domain_verified` tinyint(1) DEFAULT NULL,
  `website_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `board_count` int(11) DEFAULT NULL,
  `pin_count` int(11) DEFAULT NULL,
  `like_count` int(11) DEFAULT NULL,
  `follower_count` int(11) DEFAULT NULL,
  `following_count` int(11) DEFAULT NULL,
  `created_at` int(11) unsigned DEFAULT NULL,
  `last_pulled` int(11) DEFAULT NULL,
  `track_type` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `last_pulled` (`last_pulled`),
  KEY `track_type` (`track_type`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table data_traffic
# ------------------------------------------------------------

CREATE TABLE `data_traffic` (
  `traffic_id` int(11) unsigned NOT NULL,
  `date` int(11) NOT NULL DEFAULT '0',
  `visits` int(11) DEFAULT NULL,
  `visitors` int(11) DEFAULT NULL,
  `new_visits` int(11) DEFAULT NULL,
  `pageviews` int(11) DEFAULT NULL,
  `transactions` int(11) DEFAULT NULL,
  `revenue` double DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`traffic_id`,`date`),
  KEY `traffic_id` (`traffic_id`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table data_traffic_pages
# ------------------------------------------------------------

CREATE TABLE `data_traffic_pages` (
  `traffic_id` int(11) unsigned NOT NULL,
  `date` int(11) NOT NULL DEFAULT '0',
  `page` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visits` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`page`,`traffic_id`,`date`),
  KEY `traffic_id` (`traffic_id`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table data_traffic_pins
# ------------------------------------------------------------

CREATE TABLE `data_traffic_pins` (
  `traffic_id` int(11) unsigned NOT NULL,
  `date` int(11) NOT NULL DEFAULT '0',
  `pin_id` bigint(20) NOT NULL DEFAULT '0',
  `visits` int(11) DEFAULT NULL,
  `visitors` int(11) DEFAULT NULL,
  `new_visits` int(11) DEFAULT NULL,
  `pageviews` int(11) DEFAULT NULL,
  `transactions` int(11) DEFAULT NULL,
  `revenue` double DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`traffic_id`,`date`,`pin_id`),
  KEY `traffic_id` (`traffic_id`),
  KEY `date` (`date`),
  KEY `pin_id` (`pin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table legacy_pins
# ------------------------------------------------------------

CREATE TABLE `legacy_pins` (
  `pin_id` bigint(20) unsigned NOT NULL COMMENT 'this is the unique id of the pin found in the url (''/pin/[pin_id]'')',
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `board_id` bigint(20) DEFAULT NULL,
  `source` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_repin` tinyint(1) DEFAULT NULL,
  `repinned_from` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `repins` int(11) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `comments` int(11) DEFAULT NULL,
  `pin_date` int(11) DEFAULT NULL,
  `last_pulled` int(11) DEFAULT NULL,
  `track_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`pin_id`),
  KEY `username` (`username`),
  KEY `board_id` (`board_id`),
  KEY `source` (`source`),
  KEY `last_pulled` (`last_pulled`),
  KEY `track_type` (`track_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table legacy_profiles
# ------------------------------------------------------------

CREATE TABLE `legacy_profiles` (
  `profile_id` bigint(20) unsigned DEFAULT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `location` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boards` int(11) DEFAULT NULL,
  `pins` int(11) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `followers` int(11) DEFAULT NULL,
  `following` int(11) DEFAULT NULL,
  `last_pulled` int(11) DEFAULT NULL,
  `track_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `last_pulled` (`last_pulled`),
  KEY `track_type` (`track_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table map_pins_attribution
# ------------------------------------------------------------

CREATE TABLE `map_pins_attribution` (
  `pin_id` bigint(20) unsigned NOT NULL,
  `provider_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`pin_id`),
  KEY `provider_name` (`provider_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table map_pins_descriptions
# ------------------------------------------------------------

CREATE TABLE `map_pins_descriptions` (
  `pin_id` bigint(20) unsigned NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`pin_id`),
  KEY `created_at` (`created_at`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table map_pins_keywords
# ------------------------------------------------------------

CREATE TABLE `map_pins_keywords` (
  `pin_id` bigint(20) unsigned NOT NULL,
  `keyword` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pinner_id` bigint(20) DEFAULT NULL,
  `domain` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`pin_id`,`keyword`),
  KEY `created_at` (`created_at`),
  KEY `pinner_id` (`pinner_id`),
  KEY `domain` (`domain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table map_profiles_locations
# ------------------------------------------------------------

CREATE TABLE `map_profiles_locations` (
  `user_id` bigint(20) unsigned NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pinterest_location` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_location` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_location` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lat_long` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msa` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table map_username_to_user_id
# ------------------------------------------------------------

CREATE TABLE `map_username_to_user_id` (
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table status_api_calls
# ------------------------------------------------------------

CREATE TABLE `status_api_calls` (
  `datetime` int(11) unsigned NOT NULL,
  `calls` int(11) DEFAULT NULL,
  PRIMARY KEY (`datetime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table status_api_calls_queue
# ------------------------------------------------------------

CREATE TABLE `status_api_calls_queue` (
  `api_call` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `object_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parameters` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bookmark` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `track_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`api_call`,`object_id`,`parameters`,`bookmark`),
  KEY `track_type` (`track_type`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table status_api_errors
# ------------------------------------------------------------

CREATE TABLE `status_api_errors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_call` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_detail` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table status_board_pins
# ------------------------------------------------------------

CREATE TABLE `status_board_pins` (
  `board_id` bigint(20) unsigned NOT NULL,
  `board_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_pulled` int(11) DEFAULT NULL,
  `track_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`board_id`),
  KEY `last_pulled` (`last_pulled`),
  KEY `track_type` (`track_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table status_boards
# ------------------------------------------------------------

CREATE TABLE `status_boards` (
  `board_id` bigint(20) unsigned NOT NULL,
  `last_calced` int(11) DEFAULT NULL,
  `track_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`board_id`),
  KEY `track_type` (`track_type`),
  KEY `last_calced` (`last_calced`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table status_crawls
# ------------------------------------------------------------

CREATE TABLE `status_crawls` (
  `url` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `crawl_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `track_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page` int(11) DEFAULT NULL,
  `marker` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`url`,`crawl_type`),
  KEY `timestamp` (`timestamp`),
  KEY `track_type` (`track_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table status_domains
# ------------------------------------------------------------

CREATE TABLE `status_domains` (
  `domain` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_pulled` int(11) DEFAULT NULL,
  `last_calced` int(11) DEFAULT NULL,
  `pins_per_day` double DEFAULT NULL,
  `track_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`domain`),
  KEY `last_pulled` (`last_pulled`),
  KEY `track_type` (`track_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table status_engines
# ------------------------------------------------------------

CREATE TABLE `status_engines` (
  `engine` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`engine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table status_image_process_log
# ------------------------------------------------------------

CREATE TABLE `status_image_process_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_time` float unsigned DEFAULT NULL,
  `count` int(11) unsigned DEFAULT NULL,
  `avg_time` float DEFAULT NULL,
  `timestamp` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table status_keywords
# ------------------------------------------------------------

CREATE TABLE `status_keywords` (
  `keyword` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_pulled` int(11) DEFAULT NULL,
  `last_calced` int(11) DEFAULT NULL,
  `pins_per_day` double DEFAULT NULL,
  `track_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`keyword`),
  KEY `last_pulled` (`last_pulled`),
  KEY `track_type` (`track_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table status_profile_followers
# ------------------------------------------------------------

CREATE TABLE `status_profile_followers` (
  `user_id` bigint(20) unsigned NOT NULL,
  `last_pulled` int(11) DEFAULT NULL,
  `track_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `last_pulled_followers` (`last_pulled`),
  KEY `track_type` (`track_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table status_profile_following
# ------------------------------------------------------------

CREATE TABLE `status_profile_following` (
  `user_id` bigint(20) unsigned NOT NULL,
  `last_pulled` int(11) DEFAULT NULL,
  `track_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `last_pulled_following` (`last_pulled`),
  KEY `track_type` (`track_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table status_profile_pins
# ------------------------------------------------------------

CREATE TABLE `status_profile_pins` (
  `user_id` bigint(20) unsigned NOT NULL,
  `last_pulled` int(11) DEFAULT NULL,
  `track_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table status_profiles
# ------------------------------------------------------------

CREATE TABLE `status_profiles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_calced` int(11) DEFAULT NULL,
  `last_pulled` int(11) DEFAULT NULL,
  `last_pulled_boards` int(11) DEFAULT NULL,
  `track_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `last_calced` (`last_calced`),
  KEY `track_type` (`track_type`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table status_traffic
# ------------------------------------------------------------

CREATE TABLE `status_traffic` (
  `traffic_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `org_id` int(11) NOT NULL DEFAULT '0',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `profile` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_pulled` int(11) DEFAULT NULL,
  `last_calced` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`org_id`,`account_id`,`profile`),
  KEY `user_id` (`user_id`),
  KEY `traffic_id` (`traffic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table status_traffic_history
# ------------------------------------------------------------

CREATE TABLE `status_traffic_history` (
  `traffic_id` int(11) unsigned NOT NULL,
  `date` int(11) NOT NULL DEFAULT '0',
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`traffic_id`,`date`),
  KEY `traffic_id` (`traffic_id`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table user_accounts
# ------------------------------------------------------------

CREATE TABLE `user_accounts` (
  `account_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `org_id` int(10) unsigned DEFAULT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `industry_id` smallint(5) unsigned DEFAULT NULL,
  `account_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `track_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `competitor_of` int(11) unsigned DEFAULT NULL,
  `chargify_id` int(11) unsigned DEFAULT NULL,
  `chargify_id_alt` int(11) unsigned DEFAULT NULL COMMENT 'used for legacy analytics customers',
  `created_at` int(11) unsigned DEFAULT NULL,
  `last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  KEY `FK_accounts_profile_id` (`username`),
  KEY `FK_accounts_organization_id` (`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table user_accounts_domains
# ------------------------------------------------------------

CREATE TABLE `user_accounts_domains` (
  `account_id` int(11) unsigned NOT NULL,
  `domain` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`account_id`,`domain`),
  KEY `domain` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table user_accounts_keywords
# ------------------------------------------------------------

CREATE TABLE `user_accounts_keywords` (
  `account_id` int(11) unsigned NOT NULL,
  `keyword` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`account_id`,`keyword`),
  KEY `keyword` (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table user_analytics
# ------------------------------------------------------------

CREATE TABLE `user_analytics` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `org_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL DEFAULT '0',
  `profile` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_pulled` int(11) DEFAULT NULL,
  `last_calced` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`account_id`,`profile`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table user_industries
# ------------------------------------------------------------

CREATE TABLE `user_industries` (
  `industry_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `industry` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`industry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table user_organizations
# ------------------------------------------------------------

CREATE TABLE `user_organizations` (
  `org_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `org_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `org_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chargify_id` int(10) unsigned DEFAULT NULL,
  `chargify_id_alt` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

CREATE TABLE `users` (
  `cust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `first_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `last_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `verified` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `org_id` int(10) unsigned DEFAULT NULL,
  `is_admin` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `type` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(11) COLLATE utf8_unicode_ci DEFAULT '-5:00',
  `timestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cust_id`),
  KEY `FK_users_organization_id` (`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
