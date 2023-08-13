-- MariaDB dump 10.19  Distrib 10.5.19-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: mikeintoshsyscom_champagne
-- ------------------------------------------------------
-- Server version	10.5.19-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - deactive, 1 - active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,NULL,'admin','administrator@mikeintoshsys.com','MIKEINTOSH','SYSTEMS','64ca7a54d0fc1.png','$2y$10$UmZ3nP0JIUOI0CxLG/175efcigYJDbfg45Ga4cYz/YdZOshZ0GPMm',1,NULL,'2023-08-02 11:46:28'),(10,7,'delivery','delivery@gmail.com','Delivery','Manager','5f6c395833e14.jpg','$2y$10$658kJ38abUEn.d46DmYhQ.wNIy9fRE2TPDrNzeMODbxDWHWOwrqRS',1,'2020-09-24 00:14:48','2020-09-28 11:24:32'),(11,8,'kitchen','kitchen@gmail.com','Kitchen','Manager','60a934a18ff49.jpg','$2y$10$PTTKwbg5AEHm4BBVUaes1uhlx1eZKeTJzD7M5pIQjPrDmGYaVzul2',1,'2020-09-28 11:23:39','2021-05-23 01:43:13'),(12,9,'test','saifislamfci@gmail.com','Saiful Islam','Sharif','6402c0c90904c.jpg','$2y$10$7mmLn1fWdaYUkNQY8fEwY.QB6csIcv9WpFo5zLDvYy4UFZvuqq48W',1,'2023-03-04 03:53:45','2023-03-04 03:53:45'),(13,10,'administrator','mikeintoshsys@gmail.com','MICHAEL','TEFERRA','64ca8d7d95c96.png','$2y$10$sXrkVd2kMY0yNkHtoJ1MSeCY.lcGIED0euKGb.CwwPQpVPi5q0ETi',1,'2023-08-02 09:08:13','2023-08-02 09:08:13'),(14,11,'champion','champion@mikeintoshsys.com','Champion','Manager','64ca9d9033de8.jpg','$2y$10$1pAdfKQRVRBOnpfHNpRI7u3mZaDHXwpNmdpqap.BboI1QYvvoGUW2',1,'2023-08-02 10:16:48','2023-08-02 10:16:48');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backups`
--

DROP TABLE IF EXISTS `backups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backups`
--

LOCK TABLES `backups` WRITE;
/*!40000 ALTER TABLE `backups` DISABLE KEYS */;
INSERT INTO `backups` VALUES (9,'2023-08-02-110216-dump-mikeintoshsyscom_championrestaurant.sql','2023-08-02 10:02:17','2023-08-02 10:02:17'),(10,'2023-08-02-113300-dump-mikeintoshsyscom_championrestaurant.sql','2023-08-02 10:33:01','2023-08-02 10:33:01'),(11,'2023-08-02-143703-dump-mikeintoshsyscom_championrestaurant.sql','2023-08-02 13:37:05','2023-08-02 13:37:05'),(12,'2023-08-11-114721-dump-mikeintoshsyscom_champagne.sql','2023-08-11 10:47:21','2023-08-11 10:47:21');
/*!40000 ALTER TABLE `backups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_extendeds`
--

DROP TABLE IF EXISTS `basic_extendeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basic_extendeds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `cookie_alert_status` tinyint(4) NOT NULL DEFAULT 1,
  `cookie_alert_text` blob DEFAULT NULL,
  `cookie_alert_button_text` varchar(255) DEFAULT NULL,
  `to_mail` varchar(255) DEFAULT NULL,
  `default_language_direction` varchar(20) NOT NULL DEFAULT 'ltr' COMMENT 'ltr / rtl',
  `blogs_meta_keywords` text DEFAULT NULL,
  `blogs_meta_description` text DEFAULT NULL,
  `is_facebook_pexel` tinyint(4) NOT NULL DEFAULT 0,
  `facebook_pexel_script` text DEFAULT NULL,
  `theme_version` varchar(70) DEFAULT 'default_service_category',
  `from_mail` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `is_smtp` tinyint(4) NOT NULL DEFAULT 0,
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(30) DEFAULT NULL,
  `encryption` varchar(30) DEFAULT NULL,
  `smtp_username` varchar(255) DEFAULT NULL,
  `smtp_password` varchar(255) DEFAULT NULL,
  `slider_shape_img` varchar(255) DEFAULT NULL,
  `slider_bottom_img` varchar(255) DEFAULT NULL,
  `footer_bottom_img` varchar(255) DEFAULT NULL,
  `menu_section_title` varchar(255) DEFAULT NULL,
  `menu_section_subtitle` varchar(255) DEFAULT NULL,
  `menu_section_img` varchar(50) DEFAULT NULL,
  `special_section_title` varchar(255) DEFAULT NULL,
  `special_section_subtitle` varchar(255) DEFAULT NULL,
  `testimonial_bg_img` varchar(50) DEFAULT NULL,
  `table_section_title` varchar(255) NOT NULL,
  `table_section_subtitle` varchar(255) NOT NULL,
  `table_section_img` varchar(50) DEFAULT NULL,
  `base_currency_symbol` blob DEFAULT NULL,
  `base_currency_symbol_position` varchar(10) NOT NULL DEFAULT 'left',
  `base_currency_text` varchar(100) DEFAULT NULL,
  `base_currency_text_position` varchar(10) NOT NULL DEFAULT 'right',
  `base_currency_rate` decimal(8,2) NOT NULL DEFAULT 0.00,
  `hero_bg` varchar(50) DEFAULT NULL,
  `hero_section_bold_text` varchar(255) DEFAULT NULL,
  `hero_section_bold_text_font_size` int(11) NOT NULL DEFAULT 60,
  `hero_section_bold_text_color` varchar(20) NOT NULL DEFAULT 'FFFFFF',
  `hero_section_text` varchar(255) DEFAULT NULL,
  `hero_section_text_font_size` int(11) NOT NULL DEFAULT 18,
  `hero_section_text_color` varchar(20) NOT NULL DEFAULT 'FFFFFF',
  `hero_section_button_text` varchar(30) DEFAULT NULL,
  `hero_section_button_text_font_size` int(11) NOT NULL DEFAULT 14,
  `hero_section_button_color` varchar(20) NOT NULL DEFAULT 'FFFFFF',
  `hero_section_button_url` text DEFAULT NULL,
  `hero_section_button2_text` varchar(30) DEFAULT NULL,
  `hero_section_button2_text_font_size` int(11) DEFAULT 14,
  `hero_section_button2_url` text DEFAULT NULL,
  `hero_shape_img` varchar(50) DEFAULT NULL,
  `hero_bottom_img` varchar(50) DEFAULT NULL,
  `hero_section_video_link` varchar(255) DEFAULT NULL,
  `hero_side_img` varchar(50) DEFAULT NULL,
  `faq_title` varchar(255) DEFAULT NULL,
  `career_title` varchar(255) DEFAULT NULL,
  `career_details_title` varchar(255) DEFAULT NULL,
  `special_section_bg` varchar(50) DEFAULT NULL,
  `menu_version` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - menu with col-6, 2 - menu with col-12',
  `qrcode_url` text DEFAULT NULL,
  `qrcode_color` text DEFAULT NULL,
  `pusher_app_id` varchar(15) DEFAULT NULL,
  `pusher_app_key` varchar(30) DEFAULT NULL,
  `pusher_app_secret` varchar(30) DEFAULT NULL,
  `pusher_app_cluster` varchar(10) DEFAULT NULL,
  `is_facebook_login` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - Active, 0 - Deactive',
  `facebook_app_id` varchar(100) DEFAULT NULL,
  `facebook_app_secret` varchar(100) DEFAULT NULL,
  `is_google_login` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - Active, 0 - Deactive',
  `google_client_id` varchar(150) DEFAULT NULL,
  `google_client_secret` varchar(70) DEFAULT NULL,
  `timezone` varchar(125) DEFAULT 'UTC',
  `delivery_date_time_status` tinyint(4) NOT NULL DEFAULT 0,
  `delivery_date_time_required` tinyint(4) NOT NULL DEFAULT 0,
  `qr_image` varchar(100) DEFAULT NULL,
  `qr_color` varchar(50) NOT NULL DEFAULT '0',
  `qr_size` int(11) NOT NULL DEFAULT 250,
  `qr_style` varchar(50) NOT NULL DEFAULT 'square',
  `qr_eye_style` varchar(50) NOT NULL DEFAULT 'square',
  `qr_margin` int(11) NOT NULL DEFAULT 0,
  `qr_text` varchar(255) DEFAULT NULL,
  `qr_text_color` varchar(50) NOT NULL DEFAULT '000000',
  `qr_text_size` int(11) NOT NULL DEFAULT 15,
  `qr_text_x` int(11) NOT NULL DEFAULT 50,
  `qr_text_y` int(11) NOT NULL DEFAULT 50,
  `qr_inserted_image` varchar(50) DEFAULT NULL,
  `qr_inserted_image_size` int(11) NOT NULL DEFAULT 20,
  `qr_inserted_image_x` int(11) NOT NULL DEFAULT 50,
  `qr_inserted_image_y` int(11) NOT NULL DEFAULT 50,
  `qr_type` varchar(50) NOT NULL DEFAULT 'default' COMMENT 'default, image, text',
  `order_close` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 - order closed, 0 - order open',
  `order_close_message` varchar(255) NOT NULL DEFAULT 'Order is closed now!',
  `testimonial_side_img` varchar(255) DEFAULT NULL,
  `feature_section_bg_image` varchar(50) DEFAULT NULL,
  `special_section_bg_image` varchar(50) DEFAULT NULL,
  `footer_section_bg_image` varchar(50) DEFAULT NULL,
  `hero_section_button_two_color` varchar(20) DEFAULT NULL,
  `hero_section_author_name` varchar(30) DEFAULT NULL,
  `hero_section_author_image` varchar(50) DEFAULT NULL,
  `hero_section_author_designation` varchar(30) DEFAULT NULL,
  `intro_bg_image` varchar(50) DEFAULT NULL,
  `testimonial_section_top_shape_image` varchar(50) DEFAULT NULL,
  `testimonial_section_bottom_shape_image` varchar(50) DEFAULT NULL,
  `blog_section_bg_image` varchar(50) DEFAULT NULL,
  `hero_section_water_shape_text` varchar(255) DEFAULT NULL,
  `hero_section_water_shape_text_font_size` int(11) DEFAULT NULL,
  `hero_section_water_shape_text_color` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_extendeds`
--

LOCK TABLES `basic_extendeds` WRITE;
/*!40000 ALTER TABLE `basic_extendeds` DISABLE KEYS */;
INSERT INTO `basic_extendeds` VALUES (147,176,1,'Your experience on this site will be improved by allowing cookies from <b>CHAMPAGNE Kitchen &amp; Lounge</b>.','Allow Cookies','mikeintoshsys@gmail.com','ltr','lorem, dolor','Lorem Ipsum is simply dummy text of the printing and typesetting industry',1,'<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s)\r\n{if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};\r\nif(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\r\nn.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];\r\ns.parentNode.insertBefore(t,s)}(window, document,\'script\',\r\n\'https://connect.facebook.net/en_US/fbevents.js\');\r\nfbq(\'init\', \'2723323421236702\');\r\nfbq(\'track\', \'PageView\');\r\n</script>\r\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\r\nsrc=\"https://www.facebook.com/tr?id=2723323421236702&ev=PageView&noscript=1\"\r\n/></noscript>\r\n<!-- End Facebook Pixel Code -->','default_service_category','admin@kreativdev.com','Superv',0,'nl1-sr12.supercp.com','587','TLS','admin@kreativdev.com','ZAOP!~rSk~gb','5f5a03b9351d9.png','5fec644e710b9.png','5f5b45239066f.png','Our Menus','Discover Taste For the First Time!','1599809670.png','Our Special Offered Items Price','VIEW ALL MENU LIST','6460784cda617.jpg','Table Reservation','Reserve Your Table','1683098625.png','$','left','USD','right',1.00,'6460656344753.jpg','Champagne Kitchen and Lounge',60,'FFFFFF','Serving Amazing American-Ethiopian cuisine & hookah',18,'FFFFFF','Learn More',18,'FFFFFF','#','Our Menu',14,'/menus','64606531f13f4.png','64d677b876e63.png','https://www.youtube.com/watch?v=ZDQn-9cdx9Q','64d66e960b1cb.png','F.A.Q.','Career','Job Details','1600010997.jpg',1,'https://codecanyon.kreativdev.com/superv/qr-menu','3851FF','1645348','a7747a4d0e9c885b9d4e','526f8f5455f980ed3f8d','us3',1,'188100859706337','73dc84a95f12657de1b1ebaa6cc7ba94',0,'81856165251-cd0s41jcep43b3a33i3rc7pnp3jdvo0p.apps.googleusercontent.com','nLCYVG30u-bVIvhzSg-z52pi','America/Los_Angeles',0,0,'64d681872697d.png','18173D',245,'square','circle',0,'CHAMPAGNE LOUNGE','114C05',7,50,50,'60a92611aca0a.png',20,50,50,'text',0,'Order is closed now!','1680940275.png','6432711301a4f.jpg','6432710879569.jpg','643270decd777.jpg','D3A971','Hames Rodrigo','642916deb895f.jpg','Founder & Ceo','6412f4bbf028b.png','1678963129.png','1678948560.png','641a9269c1419.png','Orange juccice',50,'FFD854'),(148,177,1,'سيتم تحسين تجربتك على هذا الموقع من خلال السماح بملفات تعريف الارتباط','السماح للكوكيز','mikeintoshsys@gmail.com','ltr','lorem, dolor','Lorem Ipsum is simply dummy text of the printing and typesetting industry',1,'<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s)\r\n{if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};\r\nif(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\r\nn.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];\r\ns.parentNode.insertBefore(t,s)}(window, document,\'script\',\r\n\'https://connect.facebook.net/en_US/fbevents.js\');\r\nfbq(\'init\', \'2723323421236702\');\r\nfbq(\'track\', \'PageView\');\r\n</script>\r\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\r\nsrc=\"https://www.facebook.com/tr?id=2723323421236702&ev=PageView&noscript=1\"\r\n/></noscript>\r\n<!-- End Facebook Pixel Code -->','default_service_category','admin@kreativdev.com','Superv',0,'nl1-sr12.supercp.com','587','TLS','admin@kreativdev.com','ZAOP!~rSk~gb','5f3e41b24e6dd.png','5fec665e8e248.png','5f449d8ad6e85.png','eeeeeeeeeeeeمنا',NULL,'1599809810.png','سعر العناصر المعروضة الخاصة بنا','عرض كل قائمة القائمة','641e9e7ed921a.png','طاولة حجز','احجز طاولتك','1599810481.jpg','$','left','USD','right',1.00,'642548e042435.jpg','أفضل مكان لإصلاح سيارتك',60,'FFFFFF','سيلون لك في طائر الدجاجة قائلا الهيمنة البلدات الوحش على علاج الأعشاب الداكنة والظلمة التي صنعها والتي تواجه اللحوم.',18,'FFB05D','اطلب الان',14,'FFAA52','https://codecanyon.megasoft.biz/superv/menu/Beef-Cheese-Burger/25','اطلب الان',16,'https://codecanyon.megasoft.biz/superv/menu/Beef-Cheese-Burger/25','641eac689ae78.png','5f58bc10650ff.png','https://www.youtube.com/watch?v=ZDQn-9cdx9Q','641ec9bba0465.png','أسئلة مكررة','وظائف','تفاصيل الوظيفة','1600010986.jpg',1,'https://codecanyon.kreativdev.com/superv/qr-menu','3851FF','1645348','a7747a4d0e9c885b9d4e','526f8f5455f980ed3f8d','us3',1,'188100859706337','73dc84a95f12657de1b1ebaa6cc7ba94',0,'81856165251-cd0s41jcep43b3a33i3rc7pnp3jdvo0p.apps.googleusercontent.com','nLCYVG30u-bVIvhzSg-z52pi','America/Los_Angeles',0,0,'64d681872697d.png','18173D',245,'square','circle',0,'CHAMPAGNE LOUNGE','114C05',7,50,50,'60a92611aca0a.png',20,50,50,'text',0,'Order is closed now!','1679736605.png',NULL,'641ec97ee2775.png','641ebecb7301b.png','FFFFFF','Hames Rodrigo','641eb7cf98f2f.jpg','Founder & Ceo','641e9a620c612.png',NULL,NULL,NULL,'أفضل مكان لإصلاح سيارتك',80,NULL);
/*!40000 ALTER TABLE `basic_extendeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_extras`
--

DROP TABLE IF EXISTS `basic_extras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basic_extras` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `whatsapp_order_status_notification` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - disable, 1 - enable',
  `whatsapp_home_delivery` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - enabled, 1 - disabled',
  `whatsapp_pickup` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - enabled, 1 - disabled',
  `whatsapp_on_table` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - enabled, 1 - disabled',
  `twilio_sid` varchar(100) DEFAULT NULL,
  `twilio_token` varchar(100) DEFAULT NULL,
  `twilio_phone_number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_extras`
--

LOCK TABLES `basic_extras` WRITE;
/*!40000 ALTER TABLE `basic_extras` DISABLE KEYS */;
INSERT INTO `basic_extras` VALUES (1,0,0,0,0,'AC87db7baafc84b106f2d59eee812b8f7e','8a938c87f06427109910fde8a5794b5f','+14155238886');
/*!40000 ALTER TABLE `basic_extras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_settings`
--

DROP TABLE IF EXISTS `basic_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basic_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `favicon` varchar(50) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `preloader_status` tinyint(4) NOT NULL COMMENT '0 - deactive, 1 - active',
  `preloader` varchar(50) DEFAULT NULL,
  `website_title` varchar(255) DEFAULT NULL,
  `base_color` varchar(30) DEFAULT NULL,
  `secondary_base_color` varchar(20) DEFAULT NULL,
  `support_email` varchar(100) DEFAULT NULL,
  `support_phone` varchar(30) DEFAULT NULL,
  `breadcrumb` varchar(50) DEFAULT NULL,
  `footer_logo` varchar(50) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `newsletter_text` varchar(255) DEFAULT NULL,
  `copyright_text` blob DEFAULT NULL,
  `intro_section_title` varchar(50) DEFAULT NULL,
  `intro_title` varchar(255) DEFAULT NULL,
  `intro_text` text DEFAULT NULL,
  `intro_contact_text` varchar(255) DEFAULT NULL,
  `intro_contact_number` varchar(255) DEFAULT NULL,
  `intro_video_image` varchar(191) DEFAULT NULL,
  `intro_signature` varchar(191) DEFAULT NULL,
  `intro_video_link` varchar(191) DEFAULT NULL,
  `intro_main_image` varchar(191) DEFAULT NULL,
  `team_section_title` varchar(255) DEFAULT NULL,
  `team_section_subtitle` varchar(255) DEFAULT NULL,
  `contact_form_title` varchar(255) DEFAULT NULL,
  `contact_address` text DEFAULT NULL,
  `contact_number` text DEFAULT NULL,
  `contact_mails` text DEFAULT NULL,
  `contact_text` varchar(255) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `longitude` varchar(191) DEFAULT NULL,
  `map_zoom` int(11) NOT NULL DEFAULT 10,
  `contact_info_title` varchar(191) DEFAULT NULL,
  `tawk_to_script` text DEFAULT NULL,
  `google_analytics_script` text DEFAULT NULL,
  `is_recaptcha` tinyint(4) NOT NULL DEFAULT 0,
  `google_recaptcha_site_key` varchar(255) DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) DEFAULT NULL,
  `is_tawkto` tinyint(4) NOT NULL DEFAULT 1,
  `is_disqus` tinyint(4) NOT NULL DEFAULT 1,
  `disqus_script` text DEFAULT NULL,
  `is_analytics` tinyint(4) NOT NULL DEFAULT 1,
  `maintenance_mode` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 - active, 0 - deactive',
  `maintenance_text` text DEFAULT NULL,
  `ips` text DEFAULT NULL,
  `testimonial_title` varchar(255) DEFAULT NULL,
  `blog_section_title` varchar(255) DEFAULT NULL,
  `blog_section_subtitle` varchar(191) DEFAULT NULL,
  `blog_title` varchar(255) DEFAULT NULL,
  `blog_details_title` varchar(255) DEFAULT NULL,
  `gallery_title` varchar(255) DEFAULT NULL,
  `team_title` varchar(255) DEFAULT NULL,
  `contact_title` varchar(255) DEFAULT NULL,
  `menu_title` varchar(191) DEFAULT NULL,
  `reservation_title` varchar(191) DEFAULT NULL,
  `items_title` varchar(191) DEFAULT NULL,
  `menu_details_title` varchar(191) DEFAULT NULL,
  `cart_title` varchar(191) DEFAULT NULL,
  `checkout_title` varchar(191) DEFAULT NULL,
  `error_title` varchar(255) DEFAULT NULL,
  `home_version` varchar(30) DEFAULT NULL,
  `feature_section` tinyint(4) NOT NULL DEFAULT 1,
  `intro_section` tinyint(4) NOT NULL DEFAULT 1,
  `testimonial_section` tinyint(4) NOT NULL DEFAULT 1,
  `team_section` tinyint(4) NOT NULL DEFAULT 1,
  `news_section` tinyint(4) NOT NULL DEFAULT 1,
  `menu_section` int(11) NOT NULL DEFAULT 1,
  `special_section` int(11) NOT NULL DEFAULT 1,
  `instagram_section` int(11) NOT NULL DEFAULT 1,
  `table_section` int(11) NOT NULL DEFAULT 1,
  `top_footer_section` tinyint(4) NOT NULL DEFAULT 1,
  `copyright_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_quote` tinyint(4) NOT NULL DEFAULT 1,
  `office_time` varchar(255) DEFAULT NULL,
  `is_appzi` tinyint(4) NOT NULL DEFAULT 0,
  `appzi_script` text DEFAULT NULL,
  `is_addthis` tinyint(4) NOT NULL DEFAULT 0,
  `addthis_script` text DEFAULT NULL,
  `token_no_start` int(11) NOT NULL DEFAULT 1,
  `token_no` int(11) NOT NULL DEFAULT 0,
  `postal_code` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - enabled, 0 - disabled',
  `qr_call_waiter` tinyint(4) NOT NULL DEFAULT 1,
  `website_call_waiter` tinyint(4) NOT NULL DEFAULT 1,
  `is_whatsapp` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - enable, 0 - disable',
  `whatsapp_number` varchar(255) DEFAULT NULL,
  `whatsapp_header_title` varchar(255) NOT NULL DEFAULT 'Chat with us on WhatsApp!',
  `whatsapp_popup_message` text DEFAULT NULL,
  `whatsapp_popup` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - enable, 0 - disable',
  `feature_title` text DEFAULT NULL,
  `testimonial_section_text` text DEFAULT NULL,
  `category_section_title` varchar(255) DEFAULT NULL,
  `intro_section_button_url` text DEFAULT NULL,
  `intro_section_button_text` varchar(50) DEFAULT NULL,
  `intro_section_video_button_url` text DEFAULT NULL,
  `intro_section_video_button_text` varchar(100) DEFAULT NULL,
  `intro_section_video_button_title` varchar(100) DEFAULT NULL,
  `intro_section_highlight_text` text DEFAULT NULL,
  `intro_section_bg_image` varchar(50) DEFAULT NULL,
  `intro_section_author_image` varchar(50) DEFAULT NULL,
  `intro_section_author_name` varchar(30) DEFAULT NULL,
  `intro_section_author_designation` varchar(50) DEFAULT NULL,
  `intro_section_top_shape_image` varchar(50) DEFAULT NULL,
  `intro_section_bottom_shape_image` varchar(50) DEFAULT NULL,
  `features_section_bg_color` varchar(30) DEFAULT NULL,
  `features_section_top_shape_image` varchar(50) DEFAULT NULL,
  `features_section_bottom_shape_image` varchar(50) DEFAULT NULL,
  `theme` varchar(50) NOT NULL DEFAULT 'multipurpose',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_settings`
--

LOCK TABLES `basic_settings` WRITE;
/*!40000 ALTER TABLE `basic_settings` DISABLE KEYS */;
INSERT INTO `basic_settings` VALUES (153,176,'64d79ac1e15ad.png','64d79b1e01835.png',1,'64d79166c94c7.gif','Champagne Kitchen & Lounge','D3A971','0A3041','info@champagnekitchenlounge.com','+1 (702) 445-7773','6242eeb240b73.jpg','64d7a2b3c93dd.png','YES We Are CHAMPAGNE!!!','Subscribe to gate Latest News, Offer and connect With Us.','Copyright © 2023. All rights reserved  <u><b><span style=\"font-family:\'Comic Sans MS\';\"><a href=\"#\">CHAMPAGNE</a></span></b><a href=\"#\">  Kitchen &amp; Lounge</a></u>','Our Story','Where every bite is an experience!','Welcome to Champagne Kitchen and Lounge, where we serve amazing American-Ethiopian cuisine and offer a unique hookah experience. Our restaurant is dedicated to providing a pleasant memorable dining experience that combines the best of both worlds - delicious food and a vibrant atmosphere.  \r\n\r\nWe hope to make your day an Unforgettable Dining Experience!','Our 24/7 Phone Services','702 445 7773','64607433ed3e4.jpg','5f5b0ee606923.png','https://www.youtube.com/watch?v=GlrxcuEDyF8','64d797fb02f15.jpg','Our Team','Our Expert Members','Leave Reply','4970 ARVILLE ST, LAS VEGAS NEVADA','+1 702 445 7773','info@championrestaurant.com','We\'d be happy to hear from you!','36.0995585498929','-115.19831214426884',17,'CONTACT US','<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5f5e445f4704467e89ee918d/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->','<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-137437974-2\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-137437974-2\');\r\n</script>',0,'6LcNapgfAAAAANlRx0HEcRXhjzD5ZzAV7FPpKmds','6LcNapgfAAAAAHz1D4vlw3Qto7HFKPtmmW_T2nOR',0,0,'<script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://superv-1.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n</script>',0,0,']]]]]','testing2fgfgddd','What Our client Saying ?','Our Blog','Latest News Feeds','Latest Blog','Blog Details','Our Gallery','Team Members','Contact Us','Our Menu','Reserve Table','Our Items','Item Details','Cart','Checkout','404 Not Found','static',1,1,1,1,1,1,1,1,1,1,1,1,'10 AM - 12 AM',0,'<!-- Appzi: Capture Insightful Feedback -->\r\n<script async src=\"https://w.appzi.io/w.js?token=p5cpm\"></script>\r\n<!-- End Appzi -->',0,'<!-- Go to www.addthis.com/dashboard to customize your tools -->\r\n<script type=\"text/javascript\" src=\"//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5e74e0cf10c08cfa\"></script>',1,184,0,1,0,0,'+8801689583182','Chat with us on WhatsApp!','Admin can also disable WhatsApp Chat\r\n& enable Tawk.to chat\r\n(Admin can set any message here)',0,'Explore Our Most Popular Cuisine & Menu List','ssffffffffffffffff','Discover Your Favorite Bakery And Pastry Foods','https://www.youtube.com/watch?v=GlrxcuEDyF8','Order Now',NULL,'How To Place Order','fff','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,',NULL,'640efc12b3d40.jpg','dfdff test','sdfdd test','64313d1503aa7.png','641ea69a4b116.png','62401A','64252e50659d6.png','64252e5065dcb.png','multipurpose'),(154,177,'64d79ac1e15ad.png','64d79b1e01835.png',1,'64d79166c94c7.gif','Champagne Kitchen & Lounge','D3A971','0A3041','info@geotechit.com','+44 078 9101 1714','6242eeb240b73.jpg','5f4b477743017.png','نحن شركة متعددة الأطراف فائزة بشكل كبير. نحن نؤمن بالجودة والمعايير التي نأخذها بعين الاعتبار.','Subscribe to gate Latest News, Offer and connect With Us.','جميع الحقوق محفوظة © 2020.','قصتنا','لدينا 20 عاما من الخبرة العملية في مقهى.','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام','خدماتنا الهاتفية 24/7','555 666 999 00','5f3e498da6634.jpg','5f3e498da6301.png','https://www.youtube.com/watch?v=GlrxcuEDyF8','641eca72199ca.png','فريقنا','الأعضاء الخبراء لدينا','اترك الرد','143 طريق القلعة 517 حي,ميناء كييف جنوب كندا','+3 123 456 789,00066668888',NULL,'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل','1.00000','45425',10,'معلومات الاتصال','<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5f5e445f4704467e89ee918d/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->','<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-137437974-2\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-137437974-2\');\r\n</script>',0,'6LcNapgfAAAAANlRx0HEcRXhjzD5ZzAV7FPpKmds','6LcNapgfAAAAAHz1D4vlw3Qto7HFKPtmmW_T2nOR',0,0,'<script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://superv-1.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n</script>',0,0,']]]]]','testing2fgfgddd','ماذا يقول عملائنا؟','أحدث الأخبار','تعرف على فريق الخبراء التنفيذيين لدينا ..','أحدث المدونات','تفاصيل المدونة','معرضنا','أعضاء الفريق','اتصل بنا','القائمة لدينا','حجز','العناصر لدينا','تفاصيل العنصر','عربة التسوق','الدفع','404 غير موجود','static',1,1,1,1,1,1,1,1,1,1,1,1,'10 AM - 12 AM',0,'<!-- Appzi: Capture Insightful Feedback -->\r\n<script async src=\"https://w.appzi.io/w.js?token=p5cpm\"></script>\r\n<!-- End Appzi -->',0,'<!-- Go to www.addthis.com/dashboard to customize your tools -->\r\n<script type=\"text/javascript\" src=\"//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5e74e0cf10c08cfa\"></script>',1,11,0,1,0,0,'+8801689583182','Chat with us on WhatsApp!','Admin can also disable WhatsApp Chat\r\n& enable Tawk.to chat\r\n(Admin can set any message here)',0,'وجبات خفيفة ساخنة',NULL,'dfdfs','https://www.youtube.com/watch?v=GlrxcuEDyF8','اطلب الان',NULL,'لفقرات في الصفحة التي','لفقرات في الصفحة التي',NULL,NULL,'641eca7219e17.jpg','لفقرات في الصفحة التي','لفقرات في الصفحة التي','641eacf9245fa.png','641eacf92481e.png',NULL,NULL,NULL,'multipurpose');
/*!40000 ALTER TABLE `basic_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bcategories`
--

DROP TABLE IF EXISTS `bcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bcategories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bcategories`
--

LOCK TABLES `bcategories` WRITE;
/*!40000 ALTER TABLE `bcategories` DISABLE KEYS */;
INSERT INTO `bcategories` VALUES (1,176,'Cooking',1,1),(3,176,'Food',1,2),(4,176,'Burgers',0,3),(5,176,'Fun & Jamming',1,4),(6,176,'Recipes',1,5),(7,177,'طبخ',1,1),(8,177,'أغذية',1,2),(9,177,'برجر',1,3),(10,177,'المرح والتشويش',1,4),(11,177,'وصفات',1,5),(12,176,'Shop Manager',0,3);
/*!40000 ALTER TABLE `bcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `bcategory_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `content` blob DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (66,176,1,'How we cook at Champagne Kitchen','How-we-cook-at-Champagne-Kitchen','1598694784.jpg','<p>At Champagne Kitchen &amp; Lounge, we take great pride in\nour culinary creations. Our talented chefs combine the best of American and\nEthiopian cuisine to bring you a unique and flavorful dining experience. Here\'s\na glimpse into how we cook at Champagne Kitchen &amp; Lounge:</p><p><br></p><ol><li><b>Culinary\n     Fusion</b>: Our menu features a diverse range of dishes that blend the\n     rich and aromatic spices of Ethiopian cuisine with the familiar and\n     comforting flavors of American classics. Our chefs expertly combine these\n     culinary traditions to create dishes that are both delicious and innovative.</li>\n <li><b>Fresh\n     Ingredients</b>: We believe that the quality of ingredients directly\n     impacts the taste of the final dish. That\'s why we source the freshest and\n     finest ingredients for our recipes. From locally sourced produce to\n     high-quality meats and spices, we ensure that every ingredient is of the\n     highest standard.</li>\n <li><b>Attention\n     to Detail</b>: Cooking is an art, and our chefs pay meticulous attention\n     to every detail. From the precise measurements of spices to the cooking\n     techniques used, we strive for perfection in every dish. Our chefs bring\n     their passion and creativity to the kitchen, resulting in beautifully\n     presented and flavorful meals.</li>\n <li><b>Ethiopian\n     Stews</b>: One of our specialties is Ethiopian stews, which are\n     slow-cooked to perfection. These stews are made with a variety of spices\n     and ingredients, creating complex and rich flavors. Served with injera, a\n     traditional Ethiopian flatbread, our stews offer a truly authentic taste\n     of Ethiopian cuisine.</li>\n <li><b>American\n     Classics</b>: Alongside our Ethiopian-inspired dishes, we also offer\n     American classics that are prepared with the same level of care and\n     attention. Our burgers are made with high-quality beef and served with\n     crispy fries, satisfying even the most discerning burger lovers.</li>\n <li><b>Hookah\n     Lounge</b>: In addition to our culinary offerings, we provide a unique\n     hookah lounge experience. Our lounge offers a cozy and relaxed setting\n     where you can enjoy a variety of flavorful hookah blends. Our staff\n     ensures that the hookah experience is enjoyable and enhances your overall\n     visit to Champagne Kitchen &amp; Lounge.</li>\n</ol><p>At Champagne Kitchen &amp; Lounge, we strive to create a\ndining experience that is not only delicious but also memorable. Our culinary\nfusion, attention to detail, and dedication to using fresh ingredients set us\napart. Whether you\'re a fan of Ethiopian cuisine, American classics, or looking\nfor a new culinary adventure, we invite you to join us and savor the flavors at\nChampagne Kitchen &amp; Lounge.</p>',NULL,NULL,NULL,1,'2020-08-29 03:47:49','2023-08-12 07:36:20'),(67,176,3,'What we serve at Champagne Kitchen & Lounge','What-we-serve-at-Champagne-Kitchen-&-Lounge','1598694802.jpg','<p><b>Champagne Kitchen &amp; Lounge</b> is a unique restaurant that\noffers a fusion of American and Ethiopian cuisine. Our menu features a diverse\nrange of dishes that blend the rich and aromatic spices of Ethiopian cuisine\nwith the familiar and comforting flavors of American classics. Here are some of\nthe dishes that we serve:</p><p><br></p><p><br></p><p></p>\n\n<ul>\n <li><b>Ethiopian\n     Stews and Injera:</b> Our Ethiopian stews are a must-try for anyone looking to\n     experience the rich and complex flavors of Ethiopian cuisine. Served with\n     injera, a traditional Ethiopian flatbread, our stews are the perfect\n     combination of savory and spicy. Try our Doro Wat, a spicy chicken stew,\n     or our vegetarian Misir Wat, made with lentils and a blend of spices.<br><br></li>\n <li><b>Burgers\n     and Fries:</b> If you\'re in the mood for something more familiar, our burgers\n     and fries are sure to hit the spot. Our juicy burgers are made with\n     high-quality beef and served with crispy fries on the side. Try our\n     classic cheeseburger or our Ethiopian-inspired Awaze Burger, topped with\n     spicy Awaze sauce and served on a brioche bun.<br><br></li>\n <li><b>Hookah:</b>\n     No visit to Champagne Kitchen &amp; Lounge is complete without trying our\n     hookah. Our lounge provides a cozy and relaxed setting where you can enjoy\n     a variety of flavorful hookah blends. Sit back, relax, and savor the\n     aromatic smoke as you engage in conversation or simply take in the\n     ambiance of our lounge.</li>\n</ul>',NULL,NULL,NULL,2,'2020-08-29 03:50:37','2023-08-12 07:32:28'),(68,176,6,'Which and What Recipes','Which-and-What-Recipes','1598694694.jpg','<p>The menu features a diverse range of dishes that blend the\nrich and aromatic spices of Ethiopian cuisine with the familiar and comforting\nflavors of American classics. The restaurant\'s specialties include Ethiopian\nstews, which are slow-cooked to perfection, and burgers made with high-quality\nbeef. The seafood dishes are also popular among customers, including Grilled\nFilet of Salmon Dinner, Crab Stuffed Tilapia Dinner, and Jumbo Fried Butterfly\nShrimp Dinner.</p><p><br></p><p> </p>\n\n<p>At Champagne Kitchen &amp; Lounge, the chefs pay meticulous\nattention to every detail, ensuring that every dish is prepared with the\nhighest level of care and attention. The restaurant uses fresh and high-quality\ningredients to create dishes that are both delicious and innovative.</p><p><br></p><p> </p>\n\n<p>Overall, Champagne Kitchen &amp; Lounge is dedicated to\nproviding a unique dining experience that combines the best of both worlds -\ndelicious food and a vibrant atmosphere. Whether you\'re a fan of Ethiopian\ncuisine, American classics, or simply looking for a new culinary adventure, the\nrestaurant has something to offer everyone.</p>',NULL,NULL,NULL,3,'2020-08-29 03:51:34','2023-08-12 07:42:44'),(69,176,3,'Dining at Champagne','Dining-at-Champagne','1598694769.jpg','<p>Champagne Kitchen &amp; Lounge offers a unique dining\nexperience that combines the best of American and Ethiopian cuisine. Our menu\nfeatures a diverse range of dishes that blend the rich and aromatic spices of\nEthiopian cuisine with the familiar and comforting flavors of American\nclassics. Here\'s what you can expect when dining at Champagne Kitchen &amp;\nLounge:</p><p><br></p><p></p>\n\n<p><b>Ethiopian Stews and Injera</b></p><p><b></b></p><b></b>\n\n<p>Our Ethiopian stews are a must-try for anyone looking to experience\nthe rich and complex flavors of Ethiopian cuisine. Served with injera, a\ntraditional Ethiopian flatbread, our stews are the perfect combination of\nsavory and spicy. Try our Doro Wat, a spicy chicken stew, or our vegetarian\nMisir Wat, made with lentils and a blend of spices.</p>\n\n<p><b><br></b></p><p><b>Burgers and Fries</b></p><p><b></b></p><b></b>\n\n<p>If you\'re in the mood for something more familiar, our\nburgers and fries are sure to hit the spot. Our juicy burgers are made with\nhigh-quality beef and served with crispy fries on the side. Try our classic cheeseburger\nor our Ethiopian-inspired Awaze Burger, topped with spicy Awaze sauce and\nserved on a brioche bun.</p>\n\n<p><b><br></b></p><p><b>Seafood Dishes</b></p><p><b></b></p><b></b>\n\n<p>Our seafood dishes are a popular choice among our customers.\nWe offer Grilled Filet of Salmon Dinner, Crab Stuffed Tilapia Dinner, and Jumbo\nFried Butterfly Shrimp Dinner. These dishes are prepared with the same level of\ncare and attention as our other menu items, ensuring that every bite is\ndelicious.</p>\n\n<p><b><br></b></p><p><b>Sunday Champagne Brunch</b></p><p><b></b></p><b></b>\n\n<p>Join us for our Sunday Champagne Brunch, where we offer a\nvariety of breakfast items, sandwiches, salads, and sides, as well as\nbottomless mimosas and champagne. It\'s the perfect way to start your Sunday and\nindulge in some delicious food and drinks.</p><p><br></p><p>At Champagne Kitchen &amp; Lounge, we are dedicated to\nproviding a unique dining experience that combines the best of both worlds -\ndelicious food and a vibrant atmosphere. Whether you\'re a fan of Ethiopian\ncuisine, American classics, or simply looking for a new culinary adventure, our\nrestaurant has something to offer everyone. Come and experience the magic of\nChampagne Kitchen &amp; Lounge today!</p><p><br></p><p><br></p><p></p><p></p>',NULL,NULL,NULL,4,'2020-08-29 03:52:49','2023-08-12 07:39:40'),(70,176,1,'What\'s your favorite Food at Champagne Kitchen & Lounge?','What\'s-your-favorite-Food-at-Champagne-Kitchen-&-Lounge','1691854160.jpg','<p>Are you looking for a unique dining experience that combines\nthe best of American and Ethiopian cuisine? Look no further than Champagne\nKitchen &amp; Lounge. Our menu features a diverse range of dishes that blend\nthe rich and aromatic spices of Ethiopian cuisine with the familiar and\ncomforting flavors of American classics. Here are some of our customers\'\nfavorite dishes:</p><p><br></p>\n\n<p><b>Ethiopian Stews and Injera</b></p>\n\n<p><br></p><p>Our Ethiopian stews are a must-try for anyone looking to\nexperience the rich and complex flavors of Ethiopian cuisine. Served with\ninjera, a traditional Ethiopian flatbread, our stews are the perfect\ncombination of savory and spicy. Try our Doro Wat, a spicy chicken stew, or our\nvegetarian Misir Wat, made with lentils and a blend of spices.</p>',NULL,NULL,NULL,5,'2020-08-29 03:53:57','2023-08-12 07:29:20'),(71,176,5,'Fun at Champagne Kitchen & Lounge','Fun-at-Champagne-Kitchen-&-Lounge','1598694875.jpg','<p>Champagne Kitchen and Lounge is not just a restaurant,\nit\'s an experience. The restaurant offers several features that make dining at\nthe restaurant a unique and enjoyable experience. Here are some of the features\nthat you can expect when dining at Champagne Kitchen &amp; Lounge:</p><p><br></p><p></p>\n\n<p><b>Outdoor Dining with City View</b></p><p><b></b></p><b></b>\n\n<p>Champagne Kitchen &amp; Lounge offers outdoor dining that\nprovides a stunning view of the city. The outdoor dining area is perfect for\nthose who want to enjoy the beautiful city view while indulging in delicious food.\nThe restaurant\'s outdoor dining area is also a fun and jamming place to be,\nproviding a vibrant atmosphere that is perfect for socializing and enjoying a\nmeal with friends or family.</p><p><br></p><p></p>\n\n<p><b>Nightlife</b></p><p><b></b></p><b></b>\n\n<p>Champagne Kitchen &amp; Lounge is open late and offers\nentertainment every night. The restaurant is a popular spot for locals and\ntourists alike, with a lively atmosphere that is perfect for a night out. The\nrestaurant offers karaoke every Friday through Monday nights from 10-2, making\nit the perfect place to sing your heart out and have some fun.</p><p><br></p><p></p>\n\n<p><b>Hookah Lounge</b></p><p><b></b></p><b></b>\n\n<p>After your meal, head over to the hookah lounge for a unique\nand relaxing experience. The lounge provides a cozy and relaxed setting where\nyou can enjoy a variety of flavorful hookah blends. Sit back, relax, and savor\nthe aromatic smoke as you engage in conversation or simply take in the ambiance\nof the lounge.</p><p><br></p><p></p>\n\n<p><b>Fun Things to Do at the Lounge</b></p><p><b></b></p><b></b>\n\n<p>In addition to hookah, the lounge offers several fun things\nto do. The lounge has a pool table, making it the perfect place to challenge\nyour friends to a game. The lounge also has a jukebox, allowing you to choose\nyour favorite songs and create your own fun atmosphere. At Champagne Kitchen\n&amp; Lounge, we are dedicated to providing a unique dining experience that\ncombines the best of both worlds - delicious food and a vibrant atmosphere.\nWhether you\'re a fan of Ethiopian cuisine, American classics, or simply looking\nfor a new culinary adventure, our restaurant has something to offer everyone.\nCome and experience the fun and excitement of Champagne Kitchen &amp; Lounge\ntoday!</p>',NULL,NULL,NULL,6,'2020-08-29 03:54:35','2023-08-12 07:48:41'),(72,176,3,'Coming soon article','Coming-soon-article','1598694928.jpg','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',NULL,NULL,NULL,7,'2020-08-29 03:55:28','2023-08-12 07:50:41'),(73,176,3,'Coming soon article','Coming-soon-article','1598694962.jpg','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',NULL,NULL,NULL,8,'2020-08-29 03:56:02','2023-08-12 07:50:59'),(74,176,1,'Coming soon article','Coming-soon-article','1598695007.jpg','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',NULL,NULL,NULL,9,'2020-08-29 03:56:47','2023-08-12 07:51:13'),(75,177,7,'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز','هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-المحتوى-المقروء-لصفحة-ما-سيلهي-القارئ-عن-التركيز','1598773516.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',NULL,NULL,NULL,1,'2020-08-30 01:45:16','2020-08-30 01:45:16'),(76,177,8,'المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص','المحتوى)-ويُستخدم-في-صناعات-المطابع-ودور-النشر.-كان-لوريم-إيبسوم-ولايزال-المعيار-للنص','1598773566.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',NULL,NULL,NULL,2,'2020-08-30 01:46:06','2020-08-30 01:46:06'),(77,177,11,'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز','هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-المحتوى-المقروء-لصفحة-ما-سيلهي-القارئ-عن-التركيز','1598773612.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',NULL,NULL,NULL,3,'2020-08-30 01:46:52','2020-08-30 01:46:52'),(78,177,8,'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس','لوريم-إيبسوم(Lorem-Ipsum)-هو-ببساطة-نص-شكلي-(بمعنى-أن-الغاية-هي-الشكل-وليس','1598773671.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',NULL,NULL,NULL,4,'2020-08-30 01:47:51','2020-08-30 01:47:51'),(79,177,7,'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز','هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-المحتوى-المقروء-لصفحة-ما-سيلهي-القارئ-عن-التركيز','1598773736.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',NULL,NULL,NULL,5,'2020-08-30 01:48:56','2020-08-30 01:48:56'),(80,177,10,'المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص','المحتوى)-ويُستخدم-في-صناعات-المطابع-ودور-النشر.-كان-لوريم-إيبسوم-ولايزال-المعيار-للنص','1598773784.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',NULL,NULL,NULL,6,'2020-08-30 01:49:44','2020-08-30 01:49:44'),(81,177,8,'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز','هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-المحتوى-المقروء-لصفحة-ما-سيلهي-القارئ-عن-التركيز','1598773832.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',NULL,NULL,NULL,7,'2020-08-30 01:50:32','2020-08-30 01:50:32'),(82,177,8,'المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص','المحتوى)-ويُستخدم-في-صناعات-المطابع-ودور-النشر.-كان-لوريم-إيبسوم-ولايزال-المعيار-للنص','1598773871.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',NULL,NULL,NULL,8,'2020-08-30 01:51:11','2020-08-30 01:51:11'),(83,177,7,'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز','هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-المحتوى-المقروء-لصفحة-ما-سيلهي-القارئ-عن-التركيز','1598773908.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',NULL,NULL,NULL,9,'2020-08-30 01:51:48','2020-08-30 01:51:48');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bottomlinks`
--

DROP TABLE IF EXISTS `bottomlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bottomlinks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottomlinks`
--

LOCK TABLES `bottomlinks` WRITE;
/*!40000 ALTER TABLE `bottomlinks` DISABLE KEYS */;
INSERT INTO `bottomlinks` VALUES (11,169,'Career','https://megasoft.biz/plusagency/services?category=9',NULL,NULL),(12,169,'Terms of service','https://megasoft.biz/plusagency/services?category=9',NULL,NULL),(13,169,'Refund policy','https://megasoft.biz/plusagency/services?category=9',NULL,NULL),(14,176,'Privacy Policy','#',NULL,NULL),(15,176,'Terms & Conditions','#',NULL,NULL),(16,176,'About','#',NULL,NULL),(17,177,'link 1','https://megasoft.biz/alphasoft/',NULL,NULL),(18,177,'link 2','https://megasoft.biz/alphasoft/',NULL,NULL);
/*!40000 ALTER TABLE `bottomlinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT 'percentage, fixed',
  `value` decimal(11,2) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `minimum_spend` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (2,'KHABO60','KHABO60','fixed',60.00,'12/24/2020','12/30/2020',180.00,'2020-12-23 02:23:36','2020-12-23 02:23:36'),(3,'Victory Day','BIJOY16','percentage',16.00,'12/16/2020','01/07/2021',10.00,'2020-12-23 02:32:55','2020-12-24 04:54:59'),(4,'Special','Special14','percentage',14.00,'12/29/2020','01/09/2021',400.00,'2020-12-23 03:54:07','2020-12-24 08:54:42'),(5,'Shop Manager','123456789','percentage',10.00,'04/01/2023','05/31/2023',1.00,'2023-05-04 04:33:42','2023-05-04 04:33:42');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (34,'mike','michaelktd7@gmail.com','123456789',NULL,'2023-08-02 13:26:43','2023-08-02 13:26:43');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email_type` varchar(100) DEFAULT NULL,
  `email_subject` text DEFAULT NULL,
  `email_body` blob DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (2,'email_verification','Verify Your Email','<p style=\"line-height: 1.6;\">Hello<b> {customer_name}</b>,</p><p style=\"line-height: 1.6;\"><br>Please click the link below to verify your email.</p><p>{verification_link}</p><p><br></p><p>Best Regards,</p><p>{website_title}</p>'),(3,'order_received','Order Received','<p style=\"line-height: 1.6;\">Hello {customer_name},</p><p style=\"line-height: 1.6;\"><br>Your order has been received.<br>Order Number: #{order_number}</p><p><br>Please click on the below link to see your order details.<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),(4,'order_preparing','Preparing Your Order','<p style=\"line-height: 1.6;\">Hello {customer_name},</p><p style=\"line-height: 1.6;\"><br>Chef has started preparing your ordered foods.<br>Order Number:&nbsp; #{order_number}</p><p><br>Please click on the below link to see your order details.<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),(5,'order_ready_to_pickup','Your Order is Ready to Pickup','<p style=\"line-height: 1.6;\">Hello {customer_name},</p><p style=\"line-height: 1.6;\"><br>Your order is ready to pickup. Our delivery man will pick up the order soon.<br>Order Number:&nbsp; #{order_number}</p><p style=\"line-height: 1.6;\"><br>Please click on the below link to see your order details.<br>{order_link}</p><p style=\"line-height: 1.6;\"><br></p><p>Best Regards,<br>{website_title}</p>'),(6,'order_ready_to_pickup_pick_up','Your order is ready to pick up','<p style=\"line-height: 1.6;\">Hello {customer_name},</p><p style=\"line-height: 1.6;\"><br>Your order is ready to pickup. Please pickup your order at your chosen date & time.<br>Order Number:&nbsp; #{order_number}</p><p style=\"line-height: 1.6;\"><br>Please click on the below link to see your order details.<br>{order_link}</p><p style=\"line-height: 1.6;\"><br></p><p>Best Regards,<br>{website_title}</p>'),(7,'order_pickedup','Order has been pickedup','<p>Hello {customer_name},</p><p><br>Your order is picked up for delivery. It will be arrived in a few moments.<br>Order Number: #{order_number}</p><p><br>Please click on the below link to see your order details.<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),(8,'order_pickedup_pick_up','You have picked up Ordered Food','<p>Hello {customer_name},</p><p><br>Your have picked up your ordered Food.<br>Order Number: #{order_number}</p><p><br>Please click on the below link to see your order details.<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),(9,'order_delivered','Order has been Delivered','<p style=\"line-height: 1.6;\">Hello {customer_name},</p><p style=\"line-height: 1.6;\"><br>Your order has been delivered.<br>Order Number: #{order_number}</p><p style=\"line-height: 1.6;\"><br>Please click on the below link to see your order details.<br>{order_link}</p><p style=\"line-height: 1.6;\"><br></p><p>Best Regards,<br>{website_title}</p>'),(10,'order_cancelled','Order is Cancelled','<p style=\"line-height: 1.6;\">Hello <b>{customer_name}</b>,</p><p style=\"line-height: 1.6;\"><br>Your order has been cancelled.<br>Order Number: {order_number}</p><p><br>Please click on the below link to see your order details.<br>{order_link}</p><p><br></p><p>Best Regards,<br><b>{website_title}</b></p>'),(11,'order_ready_to_serve','Your order is ready to serve on table','<p>Hello {customer_name},</p><p><br>Your order is ready to serve on table. Waiter will server the order in a moment.<br>Order Number: #{order_number}</p><p><br>Please click on the below link to see your order details.<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),(12,'order_served','You order is served on table','<p>Hello {customer_name},</p><p><br>Your order is served on your table. Enjoy your Food.<br>Order Number: #{order_number}</p><p><br>Please click on the below link to see your order details.<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),(13,'food_checkout','Order has been placed','<p style=\"line-height: 1.6;\">Hello {customer_name},</p><p style=\"line-height: 1.6;\"><br>Your order has been placed successfully. We have attached an invoice in this mail.<br>Order Number: #{order_number}</p><p><br>Please click on the below link to see your order details.<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),(14,'reservation_accept','Reservation Request Accepted','<p>Hello {customer_name},</p><p><br>You reservation request has been accepted.</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),(15,'reservation_reject','Reservation Request Rejected','<p style=\"line-height: 1.6;\">Hello {customer_name},</p><p style=\"line-height: 1.6;\"><br>You reservation request has been rejected.</p><p><br></p><p>Best Regards,<br>{website_title}</p>');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `question` varchar(255) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (20,176,'Why this app is so awesome','Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.',1),(21,176,'Why this app is so awesome','Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.',2),(22,176,'Why this app is so awesome','Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.',3),(23,176,'Why this app is so awesome','Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.',4),(24,176,'Why this app is so awesome','Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.',5),(25,176,'Why this app is so awesome','Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.',6),(26,176,'Why this app is so awesome','Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.',7),(27,176,'Why this app is so awesome','Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.',8),(28,176,'Why this app is so awesome','Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.',9),(29,176,'Why this app is so awesome','Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.',10),(50,177,'لماذا هذا التطبيق رائع جدا','الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.',1),(51,177,'لماذا هذا التطبيق رائع جدا','الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.',2),(52,177,'لماذا هذا التطبيق رائع جدا','الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.',3),(53,177,'لماذا هذا التطبيق رائع جدا','الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.',4),(54,177,'لماذا هذا التطبيق رائع جدا','الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.',5),(55,177,'لماذا هذا التطبيق رائع جدا','الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.',6),(56,177,'لماذا هذا التطبيق رائع جدا','الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.',7),(57,177,'لماذا هذا التطبيق رائع جدا','الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.',8),(58,177,'لماذا هذا التطبيق رائع جدا','الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.',9),(59,177,'لماذا هذا التطبيق رائع جدا','الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.',10);
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (38,176,'1599804681.png','Fresh Items',2,NULL,NULL),(42,176,'1598681208.png','Ethiopian Traditional Food',3,NULL,NULL),(43,176,'1598681487.png','Snacks',4,NULL,NULL),(50,176,'1598681561.jpg','Best Pizzas',5,NULL,NULL),(51,176,'1598681630.jpg','Sandwiches',6,NULL,NULL),(52,177,'1598709367.png','أغذية صحية',1,NULL,NULL),(53,177,'1598709399.png','الأصناف الطازجة',2,NULL,NULL),(54,177,'1598709420.png','Tasty Foods',3,NULL,NULL),(55,177,'1598709446.png','جبن حلو',4,NULL,NULL),(56,177,'1598709473.jpg','أفضل بيتزا',5,NULL,NULL),(57,177,'1598709494.jpg','وجبات خفيفة ساخنة',6,NULL,NULL),(62,176,'1691859684.png','Beverages',7,NULL,NULL);
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (78,176,'Kitfo','1691857280.png',1,'2020-08-21 23:59:16','2023-08-12 08:21:20'),(79,176,'Chikena Tibes','1691857294.png',2,'2020-08-22 00:00:03','2023-08-12 08:21:34'),(80,176,'Sanbusa','1691857311.png',3,'2020-08-22 00:12:14','2023-08-12 08:21:51'),(81,176,'Juice and Snacks','1691857335.png',4,'2020-08-22 00:12:59','2023-08-12 08:22:15'),(82,176,'Burger','1691857264.png',5,'2020-08-22 00:13:35','2023-08-12 08:21:04'),(83,176,'Ethiopian Favorite Dish','1691857362.png',6,'2020-08-22 00:14:16','2023-08-12 08:22:42'),(84,176,'Shekla Tibes','1691857384.png',7,'2020-08-22 00:15:46','2023-08-12 08:23:04'),(85,177,'بوتي كباب','1598770469.jpg',1,'2020-08-30 00:54:29','2020-08-30 00:54:29'),(86,177,'طاه الطبخ','1598770506.jpg',2,'2020-08-30 00:55:06','2020-08-30 00:55:06'),(87,177,'بلاك بيري','1598770535.jpg',3,'2020-08-30 00:55:35','2020-08-30 00:55:35'),(88,177,'تقطيع الخضار','1598770563.jpg',4,'2020-08-30 00:56:03','2020-08-30 00:56:03'),(89,177,'بلاك برجر','1598770590.jpg',5,'2020-08-30 00:56:30','2020-08-30 00:56:30'),(90,177,'كؤوس النبيذ','1598770685.jpg',6,'2020-08-30 00:58:05','2020-08-30 00:58:05'),(91,177,'طماطم','1598770727.jpg',7,'2020-08-30 00:58:47','2020-08-30 00:58:47');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `endpoint` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guests_endpoint_unique` (`endpoint`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` VALUES (3,'https://fcm.googleapis.com/fcm/send/dRDyV7OmiFg:APA91bHVyRIr4Fex43DVFIM_CC6Ldo9hieQFcgewtgoLNGfK_fpIzFgGAAP_INoOTjnmOzSjg5K1qJUKKLefZuz5uQBj3YFFuyREw5YqWVQt7AJTeAfo-bfiFEz6-BytS3JoYseML_wt','2020-12-26 07:38:28','2020-12-26 07:38:28'),(4,'https://fcm.googleapis.com/fcm/send/dt--VeNXQpk:APA91bEXROqytusuQiBN-WidokRxoe_IH7kR6Qi6zXD1Ajx-XyQ4EtEoJxg62WwI-j0RFq2xUjBe-Is7h17zlUMntaf4mgCUeDFtLiW98h8xoOfL3ynutkpMHmyqoldRHVZDZGOQY98X','2020-12-26 10:04:17','2020-12-26 10:04:17'),(5,'https://fcm.googleapis.com/fcm/send/fetLuDtmxNg:APA91bHqqBZBZzCuFd8Ae3hGHo5q972ktIjfZuRzek59nJXiwdn88UBtnuU9IwaxVznCJGxn1SdhlOFZ8sIsGyVBoK-GIm6KCk0iTuvwc1e3o0H4hfunWZe-o98HQpIXpYDAkan0DiAy','2021-03-24 07:37:03','2021-03-24 07:37:03'),(6,'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABgXhAyYoUVkJ8ymIaucMN78o9LdNIJ2ZhWATCMTUa79O7Q_6IWuwZlWOkNi33elgKb73GjntPc0ErLR7FF9b0UU0BNiDpJdsEv0uqcGKdNWkiYlAdlmNPaR0rKI8VivAkeCPzjYhykXGdYpXVpR3TxceTSpWBzxivvTpCTLQlUq72QNO8','2021-03-26 11:47:44','2021-03-26 11:47:44'),(7,'https://fcm.googleapis.com/fcm/send/cmWvhqu3tv8:APA91bFobMGJpxJvuqHpFU7Y5vtVZNcvsykv_So9xDDoCqKLewXINW8QbmIkpha9i7CJZPAoaZjST1cJPnwwa0rbp-VCk8LOWRoxcuIyyUlsOIFCMCOwysBSFZm_1eBbVV9aeyLSENGc','2021-04-03 00:02:31','2021-04-03 00:02:31'),(8,'https://fcm.googleapis.com/fcm/send/eh4uTNYjL8g:APA91bEX1UoNIWd9wkORCAREAofoRcvvbmRdDNMQwd1d-EZ0lbfCU5CUXewaZucNBK81XO0z6h0LnUaBFPHRlEDrUGm90vu_GHDd5lrndy3l6Otqf5i921YWUa-Xwn4i0MSW5uoPAeMQ','2021-04-16 11:36:28','2021-04-16 11:36:28'),(9,'https://fcm.googleapis.com/fcm/send/dObB80OmAaw:APA91bFv7cirSdv3z2G0IU7AlDsIylsVt5C2Z3q53ZUNLMlvlOIfQiOshMF-xKknu8706NDLq9PJyhl7eCdOZlzw-pxRrgsW-p2PjU9N1bePkHnYSIPnTp5a4g1N1tDQQQQWNDjy9slX','2021-05-06 09:40:57','2021-05-06 09:40:57'),(10,'https://fcm.googleapis.com/fcm/send/eZKf01giLZc:APA91bH4tmbQ3s4Lv-B9nztPSZW3yd7Y2uXC-60sHsGIhKkOlUxP6oC68n37Vtq-FBk-OlTVlU76weuJ_vrW0BliQoqvrNRb8xstdCONgBIs47-5fgbphTiuONZgUp1nDtX8LfcFM-Iy','2021-05-23 00:31:34','2021-05-23 00:31:34'),(11,'https://fcm.googleapis.com/fcm/send/cPVrToqh8P0:APA91bEiMbgqN8bDAhr0mbdzXPcFOvc77t1WzG17LnxbEo7shs1OJ-UhjuXbKMj71Nx0_EjBlZNmj4Nl44WiksfgkV3COShKvj02S_ZpkTe5fD6WFwtIlPZ6LO-IrH57t-lVOinUQkHw','2022-03-08 11:07:58','2022-03-08 11:07:58'),(12,'https://fcm.googleapis.com/fcm/send/eSdjeQS-6ec:APA91bFUxeQX0vknYUYO5cF4Bau2chgFvbcNkVDiWxQzJFCC-koRWSuqHWlB-CNygN8YDUgGxCLD5EVEx8MpSGHTxkTpypT7lCxo9MiYVJdRjmLkxlLilJmyI2277FKumLhLbQM55CmZ','2022-03-25 09:37:15','2022-03-25 09:37:15'),(13,'https://fcm.googleapis.com/fcm/send/fVC8cace-fw:APA91bEWCMtj2rRSwKQ1q6JQKrdw5X4JAk8FKP6kbWS9Zr7koUH_yRlG7mVwaycVt20EO7UYs0xe3DP26Xba3xGo4tPhS3Rjapa3i-2MNewsDloDPsDppAFkm-X4FKqpWqS_Vk6L9XMS','2022-03-25 15:10:08','2022-03-25 15:10:08'),(14,'https://fcm.googleapis.com/fcm/send/eAFjl2NwK-s:APA91bEp8b2PiBhmwX_zmnbBUTHukeW5vNABILeBOl5rsDHvN95kgd_3ywilHH9NfNnYpm7a7aJgNPXUc0gJ_7uaFuYjitNc-QRbXz7ys5ZGdtfSKOnGpiuyegInmd4Gzk2SpknKc4wc','2022-03-26 05:55:51','2022-03-26 05:55:51'),(15,'https://fcm.googleapis.com/fcm/send/cYxO9t_xdXE:APA91bGQ1gBBBwp_ci8cdd_QyMhpiNn_YQHz5T7jYq_Rpy361fJn38T1n4_JepcLWvTVcWKS0_rKSxDZwj98j4tcKJ4WDTYftcpmHSOwzZ_wHMo-DbmOg7OCmo1H5bmM_qzs1JwSsKq3','2022-03-26 06:11:44','2022-03-26 06:11:44'),(16,'https://fcm.googleapis.com/fcm/send/fL9PPVT6jlM:APA91bF1dsI1uMzo_fGgOiP-6G_LSRBmOpdao8C9sSPUtd4Pu9bvcJbOcFmiCbEKxdD2TGk6elsRlMa44pw4m73kcZy1Z6dWdk4uFxoqwF542pO4ZgneVD6DT1-2cCiMcadxvdHmQAQv','2022-03-26 06:11:59','2022-03-26 06:11:59'),(17,'https://fcm.googleapis.com/fcm/send/dvFmtOYkKOE:APA91bHpWKVtET2wBSGnEvLtLXpy5S150lRksdlSMTIDfiUNahnnOsJErkgga8EjvraIjSHkSe_epQEiN7naxS7w8vz9PmnOURQi4Bu4dBQj--WhHTyH50BPXBF_ZIVKcaOIlo3KVadt','2022-03-26 06:33:01','2022-03-26 06:33:01'),(18,'https://fcm.googleapis.com/fcm/send/fVc8RLnHZ6M:APA91bG2us8fW833NzlJ1ilqh8kkVoNrbKck6JZezNXegKjw8NwAm8vDovgpLndAmHNJA6gRfznPD_Rc8vwJ7XXOE3pE0KBokTaozkMq5M4UbPp8MReZ3ho6_iyqx9FrnXjnpxR9wxpa','2022-03-28 13:24:40','2022-03-28 13:24:40'),(19,'https://fcm.googleapis.com/fcm/send/fgbnPkwsCU8:APA91bGJfLBxkTgEtJePLRIsyfSu2BIPQ22BYwHpAhVrA4whhAdsiHpOSOVr4Vcmp_pTLgRfP2PisJm_fG7so9YU0lNjbXEYHQJ24RkHcDf2eI3mP_5_BM9ALtjdM78nUxodMPYY4k5x','2022-03-29 07:23:02','2022-03-29 07:23:02'),(20,'https://fcm.googleapis.com/fcm/send/ePVbno9kWtA:APA91bHQi13UwmBnf_z9erJ2VBB78MK_hfeRvQ2tDeLiDgHC4Sl71dDktuhYtjOEamBq_w75T9_Nu0tJqw3YPRPqKW09ObMCn9LiA6pbQKWNYnJujatjDFL0VzZAhB_RLPo8KAdadkqz','2022-03-29 07:26:21','2022-03-29 07:26:21'),(21,'https://fcm.googleapis.com/fcm/send/dgvxW5cNw5g:APA91bH8Au63veVx1bkKpGB0g_MxoQICgJ3bWaP-QtyowdorZUGcayo5xASkTEFjJri6IjOyvRP7WKCv4jbr4RxT4PD_zr-3AwHlpG00d8rDd-bTvzyvTK2Aj0r59zpKtNSEw8a99VlZ','2022-03-29 09:33:41','2022-03-29 09:33:41'),(22,'https://fcm.googleapis.com/fcm/send/dH8KnORYEVQ:APA91bEJFuFWl1iloiH44Fuot4Gnoh5p0aUxs_mtrPVsm7O3Dkjd8vELa2DeW9ETdHFcSBkyZt8g0dERLI7jZU3sz5Kv0UP8S2UuDgkRGHC3hRIDp9PdYR8srv-7y_EitmUEY8kBhE9M','2022-03-29 09:49:54','2022-03-29 09:49:54'),(23,'https://fcm.googleapis.com/fcm/send/eV2Fy6cICFg:APA91bH64deQsEs8og6oMqWSN0IV80-6IJtBR0MmRHwpm6vNvyY1Q-mVU8IK9x_BvxPuTNje_k1Ur6G1WhNqi_kmlCXQZoikKjkeOuLzQ0JjcoT5enML53YCw__PX9i_yathf5ajux8x','2022-03-29 11:31:26','2022-03-29 11:31:26'),(24,'https://fcm.googleapis.com/fcm/send/fjhrX4tX4Cc:APA91bGSxATfx2askizSwnj_XEEe1dirC38jMXFsCL-Nip69CVioMNbApRMS8_A3RzlWDBXI1sUm2DdSq0-OnXsqO1fror-THjD3R107bF_OBsJWSy4YfrBCdlqD_KZVP_MO3FJbIyIO','2022-04-04 14:22:56','2022-04-04 14:22:56'),(25,'https://fcm.googleapis.com/fcm/send/dMfJBWeK59g:APA91bHVx8OoUaqqaZROwpYLGi0oL_hpP27-BHhKWcsb_Cf3JhO_0nfblhoeyZWsntig9h4yIv20-lwaiIUVaKQcZ_GtyC1P4DWizrLSkGtYLUtO1Erv9Q5SN1gPfGFy9BN9-J9M17Qi','2022-04-06 14:45:27','2022-04-06 14:45:27'),(26,'https://fcm.googleapis.com/fcm/send/eFLG-3oEzKI:APA91bF934GtVfeJ3I-0pekZ3k2uYGQyExkei8SLug9CuMb0uXNj8p0kkc_kGPuzAbW0oVt3hlOWdNKmChP2aAWkPRwfGtkxgnDodUhkEZamoo92yi50N6Q65AOOGJVrydcjfVmWFoWF','2022-05-25 12:10:23','2022-05-25 12:10:23'),(27,'https://fcm.googleapis.com/fcm/send/ddjYk0PfZN4:APA91bHrypeB-IsqioQhnJ5YUV1nZxv-bIK5tKRJppgC4q2mcmEib9ng0gFFlm3_xs8jiHbzQ_KnQPxthBm3qaMnEyRFuv2r-jjs_xE5ie6kVK1zCKjNL1wE0nDC8Ftu-vlA0qtCDYs7','2023-04-10 05:35:33','2023-04-10 05:35:33'),(28,'https://fcm.googleapis.com/fcm/send/c6z1jcd4ug8:APA91bHU62xxRJMvKKsE2hAVbIP5aHsYN5kNXcyMJ1MJ7LU16BG1IJiHmangsq9yWPlFoIpPhKB_uIzldr7lr4jh01AqC5NS4tZVHYBZn_zrkZuWh1uOWPxtQQGudUwEc5XGFv_M1THK','2023-04-10 07:46:43','2023-04-10 07:46:43'),(29,'https://fcm.googleapis.com/fcm/send/eZJp6IVs6lo:APA91bHggwA-gOtuZj-610cq9vO2dR3OuTKsklGG4bHXztdyX4tIQsDX--944xanSG3DWa2wkq6EflFM0i-r-OXQCsFa2nGloFQCyDvOwTWPGaXSbD3LCXAzvqJ-K2SFOvvsMSFq8h-7','2023-05-30 10:54:57','2023-05-30 10:54:57'),(30,'https://fcm.googleapis.com/fcm/send/daS7OD0xrI0:APA91bHGugjoAi2W-_67lIm8JmwBpcvTQQS8_thJOZjCGdnQNSao_CeonoDdQcfFZMOIP3RrnPEe3dbyf6MRwSIDt1-nV3Y7Gu16eMQT2KwwN0XZFtd1-OpoQqLRxpaZ4jdpI6TRoSV-','2023-08-02 10:53:35','2023-08-02 10:53:35');
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intro_points`
--

DROP TABLE IF EXISTS `intro_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intro_points` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `text` text DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `intro_section_rating_point` int(11) DEFAULT NULL,
  `intro_section_rating_symbol` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intro_points`
--

LOCK TABLES `intro_points` WRITE;
/*!40000 ALTER TABLE `intro_points` DISABLE KEYS */;
INSERT INTO `intro_points` VALUES (3,176,'fab fa-accessible-icon','100% Pure Food','We provide 100& Pure & handmade foods',2,NULL,NULL,74,'%'),(7,177,'fab fa-accusoft','اطلب الان','اطلب الاناطلب الانلصفح',2,NULL,NULL,NULL,NULL),(8,177,'fab fa-accessible-icon','اطلب الان','اطلب الاناطلب الاناطلب الان',3,NULL,NULL,NULL,NULL),(9,176,'fab fa-accusoft','100% Pure Foods','We provide 100& Pure & handmade foods',10,NULL,NULL,100,'%'),(19,176,'fab fa-accessible-icon','111',NULL,10,NULL,NULL,10000,'%');
/*!40000 ALTER TABLE `intro_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jcategories`
--

DROP TABLE IF EXISTS `jcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jcategories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jcategories`
--

LOCK TABLES `jcategories` WRITE;
/*!40000 ALTER TABLE `jcategories` DISABLE KEYS */;
INSERT INTO `jcategories` VALUES (22,176,'Web Developer',1,1,'2019-12-21 20:34:11','2020-02-10 21:01:36'),(23,176,'Web Designer',1,2,'2019-12-21 20:34:22','2020-02-10 21:01:30'),(24,176,'Team Leader',1,3,'2019-12-21 20:35:02','2020-02-10 21:39:34'),(25,176,'IOS Developer',1,4,NULL,NULL),(26,176,'Andriod Developer',1,5,'2019-12-21 20:35:27','2020-02-10 21:39:34'),(34,177,'مطور ويب',1,1,'2019-12-29 23:49:09','2020-02-10 21:40:10'),(35,177,'مصمم الويب',1,2,'2019-12-29 23:49:23','2020-02-10 21:40:10'),(36,177,'رئيس الفريق',1,3,'2019-12-29 23:49:41','2020-02-10 21:40:10'),(37,177,'مطور IOS',1,4,'2019-12-29 23:49:54','2020-02-10 21:40:10'),(38,177,'الروبوت المطور',1,5,'2019-12-29 23:50:07','2020-02-10 21:40:10');
/*!40000 ALTER TABLE `jcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `jcategory_id` int(11) DEFAULT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `vacancy` int(11) DEFAULT NULL,
  `deadline` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `job_responsibilities` blob DEFAULT NULL,
  `employment_status` varchar(255) DEFAULT NULL,
  `educational_requirements` blob DEFAULT NULL,
  `experience_requirements` blob DEFAULT NULL,
  `additional_requirements` blob DEFAULT NULL,
  `job_location` varchar(255) DEFAULT NULL,
  `salary` blob DEFAULT NULL,
  `benefits` blob DEFAULT NULL,
  `read_before_apply` blob DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (17,22,176,'Software Engineer - Laravel, Vue JS','software-engineer-laravel-vue-js',3,'12/31/2019','3 to 4 year(s)','<span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced with UI frameworks in general; we love the Angular and Angular material.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced in building Single Page Applications (SPA) &amp; integrating Web (Rest) API.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">Well versed with Angular modules or you have created custom and web components by yourself.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You must have practical experience on Node.js, TypeScript, webpack and Third party library.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You are pixel-perfect in design conversions and you think of mobile-first implementations.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.</span><br>','Full-time','<span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced with UI frameworks in general; we love the Angular and Angular material.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced in building Single Page Applications (SPA) &amp; integrating Web (Rest) API.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">Well versed with Angular modules or you have created custom and web components by yourself.</span><br>','<span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced with UI frameworks in general; we love the Angular and Angular material.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced in building Single Page Applications (SPA) &amp; integrating Web (Rest) API.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">Well versed with Angular modules or you have created custom and web components by yourself.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.</span><br>','<span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You are pixel-perfect in design conversions and you think of mobile-first implementations.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.</span><br>','Remote Job','<span style=\"font-family: Arial, sans-serif;\">$2000</span><br>','<span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You are pixel-perfect in design conversions and you think of mobile-first implementations.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.</span><br>','<br>','drop_your_cv@plusagency.com',1,NULL,NULL,'2019-12-21 20:44:00','2020-02-10 21:49:54'),(18,22,176,'PHP Developer - Laravel, Codeigniter','php-developer-laravel-codeigniter',2,'12/31/2019','2 to 3 year(s)','<span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced with UI frameworks in general; we love the Angular and Angular material.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced in building Single Page Applications (SPA) &amp; integrating Web (Rest) API.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">Well versed with Angular modules or you have created custom and web components by yourself.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You must have practical experience on Node.js, TypeScript, webpack and Third party library.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You are pixel-perfect in design conversions and you think of mobile-first implementations.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.</span><br>','Full-time','<span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced with UI frameworks in general; we love the Angular and Angular material.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced in building Single Page Applications (SPA) &amp; integrating Web (Rest) API.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">Well versed with Angular modules or you have created custom and web components by yourself.</span><br>','<span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced with UI frameworks in general; we love the Angular and Angular material.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced in building Single Page Applications (SPA) &amp; integrating Web (Rest) API.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">Well versed with Angular modules or you have created custom and web components by yourself.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You must have practical experience on Node.js, TypeScript, webpack and Third party library.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.</span><br>','<span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You must have practical experience on Node.js, TypeScript, webpack and Third party library.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You are pixel-perfect in design conversions and you think of mobile-first implementations.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.</span><br>','California, USA','<span style=\"font-family: Arial, sans-serif;\">$1000 - $1500</span><br>','<span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">Well versed with Angular modules or you have created custom and web components by yourself.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You must have practical experience on Node.js, TypeScript, webpack and Third party library.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You are pixel-perfect in design conversions and you think of mobile-first implementations.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.</span><br>','<font color=\"#ff3b30\">*Photograph</font>&nbsp;must be enclosed with the resume.<br>','drop_your_cv@plusagency.com',2,NULL,NULL,'2019-12-21 21:14:03','2020-02-10 21:49:54'),(19,23,176,'Front End Software Engineer','Front-End-Software-Engineer',5,'12/27/2019','2 to 5 year(s)','<span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced with UI frameworks in general; we love the Angular and Angular material.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced in building Single Page Applications (SPA) &amp; integrating Web (Rest) API.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">Well versed with Angular modules or you have created custom and web components by yourself.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You must have practical experience on Node.js, TypeScript, webpack and Third party library.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You are pixel-perfect in design conversions and you think of mobile-first implementations.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.</span><br>','Full-time','<span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You must have practical experience on Node.js, TypeScript, webpack and Third party library.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You are pixel-perfect in design conversions and you think of mobile-first implementations.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.</span><br>','1 to 3 years<br>','<span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced with UI frameworks in general; we love the Angular and Angular material.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced in building Single Page Applications (SPA) &amp; integrating Web (Rest) API.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">Well versed with Angular modules or you have created custom and web components by yourself.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You must have practical experience on Node.js, TypeScript, webpack and Third party library.</span><br>','Paris, France','<span style=\"font-family: Arial, Helvetica, sans-serif, solaimanlipi;\">Negotiable</span><br>','<span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced with UI frameworks in general; we love the Angular and Angular material.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">You have to be experienced in building Single Page Applications (SPA) &amp; integrating Web (Rest) API.</span><br><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Well versed with Angular modules or you have created custom and web components by yourself.</span><br><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">You must have practical experience on Node.js, TypeScript, webpack and Third party library.</span><br><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">You should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.</span></span><br>','<span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced with UI frameworks in general; we love the Angular and Angular material.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced in building Single Page Applications (SPA) &amp; integrating Web (Rest) API.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">Well versed with Angular modules or you have created custom and web components by yourself.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You must have practical experience on Node.js, TypeScript, webpack and Third party library.</span><br>','drop_your_cv@plusagency.com',3,NULL,NULL,'2019-12-21 21:15:20','2020-02-10 21:49:54'),(20,24,176,'Agriculture Market Systems Leader','agriculture-market-systems-leader',4,'12/28/2019','At least 7 year(s)','<span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced with UI frameworks in general; we love the Angular and Angular material.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced in building Single Page Applications (SPA) &amp; integrating Web (Rest) API.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">Well versed with Angular modules or you have created custom and web components by yourself.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You must have practical experience on Node.js, TypeScript, webpack and Third party library.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You are pixel-perfect in design conversions and you think of mobile-first implementations.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.</span><br>','Full-time','<span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced with UI frameworks in general; we love the Angular and Angular material.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced in building Single Page Applications (SPA) &amp; integrating Web (Rest) API.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">Well versed with Angular modules or you have created custom and web components by yourself.</span><br>','<span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced with UI frameworks in general; we love the Angular and Angular material.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have to be experienced in building Single Page Applications (SPA) &amp; integrating Web (Rest) API.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">Well versed with Angular modules or you have created custom and web components by yourself.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.</span><br>','<span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You are pixel-perfect in design conversions and you think of mobile-first implementations.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.</span><br>','California, USA','$1000 - $1500<br>','<span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You have an in-depth understanding of cross browser compatibility and you do not create bugs for such reasons.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You are pixel-perfect in design conversions and you think of mobile-first implementations.</span><span style=\"font-size: 10.5pt; line-height: 28px; font-family: Arial, sans-serif;\"><br></span><span style=\"font-size: 10.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 28px; font-family: Arial, sans-serif;\">You should have knowledge of CSS preprocessors, Media queries, Image compression and be good with debugging.</span><br>','<br>','drop_your_cv@plusagency.com',4,NULL,NULL,'2019-12-21 21:16:28','2020-02-10 21:49:54'),(25,34,177,'مهندس برمجيات - Laravel ، Vue JS','مهندس-برمجيات---Laravel-،-Vue-JS',3,'01/07/2020','3 الى 4 سنوات','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نفسك.</font></div><div><font size=\"4\">يجب أن يكون لديك خبرة عملية في Node.js و TypeScript و webpack ومكتبة الطرف الثالث.</font></div><div><font size=\"4\">لديك فهم متعمق للتوافق عبر المستعرض ولم تقم بإنشاء أخطاء لهذه الأسباب.</font></div><div><font size=\"4\">أنت مثالي للبيكسل في تحويلات التصميم وتفكر في تطبيقات المحمول الأولى.</font></div><div><font size=\"4\">يجب أن تكون لديك معرفة بمعالجات CSS الأولية واستعلامات الوسائط وضغط الصور وتكون جيدًا في تصحيح الأخطاء.</font></div>','وقت كامل','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نفسك.</font></div><div><font size=\"4\">يجب أن يكون لديك خبرة عملية في Node.js و TypeScript و webpack ومكتبة الطرف الثالث.</font></div><div><font size=\"4\">لديك فهم متعمق للتوافق عبر المستعرض ولم تقم بإنشاء أخطاء لهذه الأسباب.</font></div><div><font size=\"4\">أنت مثالي للبيكسل في تحويلات التصميم وتفكر في تطبيقات المحمول الأولى.</font></div><div><font size=\"4\">يجب أن تكون لديك معرفة بمعالجات CSS الأولية واستعلامات الوسائط وضغط الصور وتكون جيدًا في تصحيح الأخطاء.</font></div>','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نفسك.</font></div>','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نفسك.</font></div>','وظيفة عن بعد','$ 2000<br>','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نفسك.</font></div>','<br>','drop_your_cv@plusagency.com',1,NULL,NULL,'2020-01-01 21:24:25','2020-02-10 21:50:44'),(26,34,177,'مطور PHP - لارافيل','مطور-PHP---لارافيل',2,'01/28/2020','2 إلى 3 سنوات','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نفسك.</font></div><div><font size=\"4\">يجب أن يكون لديك خبرة عملية في Node.js و TypeScript و webpack ومكتبة الطرف الثالث.</font></div><div><font size=\"4\">لديك فهم متعمق للتوافق عبر المستعرض ولم تقم بإنشاء أخطاء لهذه الأسباب.</font></div><div><font size=\"4\">أنت مثالي للبيكسل في تحويلات التصميم وتفكر في تطبيقات المحمول الأولى.</font></div><div><font size=\"4\">يجب أن تكون لديك معرفة بمعالجات CSS الأولية واستعلامات الوسائط وضغط الصور وتكون جيدًا في تصحيح الأخطاء.</font></div>','تعاقدي','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نفسك.</font></div><div><font size=\"4\">يجب أن يكون لديك خبرة عملية في Node.js و TypeScript و webpack ومكتبة الطرف الثالث.</font></div><div><font size=\"4\">لديك فهم متعمق للتوافق عبر المستعرض ولم تقم بإنشاء أخطاء لهذه الأسباب.</font></div><div><font size=\"4\">أنت مثالي للبيكسل في تحويلات التصميم وتفكر في تطبيقات المحمول الأولى.</font></div><div><font size=\"4\">يجب أن تكون لديك معرفة بمعالجات CSS الأولية واستعلامات الوسائط وضغط الصور وتكون جيدًا في تصحيح الأخطاء.</font></div>','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نفسك.</font></div><div><font size=\"4\">يجب أن يكون لديك خبرة عملية في Node.js و TypeScript و webpack ومكتبة الطرف الثالث.</font></div>','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نفسك.</font></div><div><font size=\"4\">يجب أن يكون لديك خبرة عملية في Node.js و TypeScript و webpack ومكتبة الطرف الثالث.</font></div>','كاليفورنيا، الولايات المتحدة الأمريكية','1000 دولار - 1500 دولار<br>','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نفسك.</font></div><div><font size=\"4\">يجب أن يكون لديك خبرة عملية في Node.js و TypeScript و webpack ومكتبة الطرف الثالث.</font></div>','* يجب إرفاق الصورة مع السيرة الذاتية.<br>','drop_your_cv@plusagency.com',2,NULL,NULL,'2020-01-01 21:28:01','2020-02-10 21:50:44'),(27,35,177,'مهندس برمجيات الواجهة الأمامية','مهندس-برمجيات-الواجهة-الأمامية',5,'01/31/2020','2 إلى 5 سنوات','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نفسك.</font></div><div><font size=\"4\">يجب أن يكون لديك خبرة عملية في Node.js و TypeScript و webpack ومكتبة الطرف الثالث.</font></div><div><font size=\"4\">لديك فهم متعمق للتوافق عبر المستعرض ولم تقم بإنشاء أخطاء لهذه الأسباب.</font></div><div><font size=\"4\">أنت مثالي للبيكسل في تحويلات التصميم وتفكر في تطبيقات المحمول الأولى.</font></div><div><font size=\"4\">يجب أن تكون لديك معرفة بمعالجات CSS الأولية واستعلامات الوسائط وضغط الصور وتكون جيدًا في تصحيح الأخطاء.</font></div>','وقت كامل','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نفسك.</font></div><div><br></div>','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نفسك.</font></div><div><br></div>','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نفسك.</font></div><div><br></div>','باريس، فرنسا','1 إلى 3 سنوات<br>','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نفسك.</font></div><div><br></div>','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نفسك.</font></div><div><font size=\"4\">يجب أن يكون لديك خبرة عملية في Node.js و TypeScript و webpack ومكتبة الطرف الثالث.</font></div>','drop_your_cv@plusagency.com',3,NULL,NULL,'2020-01-01 21:32:47','2020-02-10 21:50:44'),(28,36,177,'زعيم نظم السوق الزراعية','زعيم-نظم-السوق-الزراعية',4,'02/05/2020','على الأقل 7 سنوات','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نفسك.</font></div><div><font size=\"4\">يجب أن يكون لديك خبرة عملية في Node.js و TypeScript و webpack ومكتبة الطرف الثالث.</font></div><div><font size=\"4\">لديك فهم متعمق للتوافق عبر المستعرض ولم تقم بإنشاء أخطاء لهذه الأسباب.</font></div><div><font size=\"4\">أنت مثالي للبيكسل في تحويلات التصميم وتفكر في تطبيقات المحمول الأولى.</font></div><div><font size=\"4\">يجب أن تكون لديك معرفة بمعالجات CSS الأولية واستعلامات الوسائط وضغط الصور وتكون جيدًا في تصحيح الأخطاء.</font></div>','وقت كامل','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نف</font></div>','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نفسك.</font></div>','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نفسك.</font></div>','كاليفورنيا، الولايات المتحدة الأمريكية','1000 دولار - 1500 دولار<br>','<div><font size=\"4\">يجب أن تكون متمرسًا في أطر عمل واجهة المستخدم بشكل عام ؛ نحن نحب الزاوي والمواد الزاوي.</font></div><div><font size=\"4\">يجب أن تكون لديك خبرة في إنشاء تطبيقات صفحة واحدة (SPA) ودمج واجهة برمجة تطبيقات الويب (الراحة).</font></div><div><font size=\"4\">ضليعا في وحدات الزاوي أو قمت بإنشاء مكونات مخصصة وشبكة الإنترنت من قبل نفسك.</font></div>','<br>','drop_your_cv@plusagency.com',4,NULL,NULL,'2020-01-01 21:35:15','2020-02-24 00:58:25');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 1,
  `rtl` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - LTR, 1- RTL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (176,'English','en',1,0,'2020-08-07 04:43:05','2023-05-02 11:03:24'),(177,'عربى','ar',0,1,'2020-08-07 04:51:17','2023-05-02 11:03:24');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `feature` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (54,176,'Andress Pirlo','Manager, Superv','1597749461.jpg','https://www.facebook.com/','https://www.facebook.com/','https://www.facebook.com/','https://www.facebook.com/',1,NULL,NULL),(55,176,'Christina Grimmie','Master Chef','1597749478.jpg','https://www.facebook.com/','https://www.facebook.com/','https://www.facebook.com/','https://www.facebook.com/',1,NULL,NULL),(56,176,'Roza Bela','Burger Chef','1597749496.jpg','https://www.facebook.com/','https://www.facebook.com/','https://www.facebook.com/','https://www.facebook.com/',1,NULL,NULL),(57,176,'Cesc Fabrigus','Set Menu Chef','1597749511.jpg','https://www.facebook.com/','https://www.facebook.com/','https://www.facebook.com/','https://www.facebook.com/',0,NULL,NULL),(58,177,'سيلينا غوميز','الرئيس التنفيذي والمؤسس','1597919376.jpg','https://twitter.com/','https://www.facebook.com/','https://www.instagram.com/','https://www.instagram.com/',1,NULL,NULL),(59,177,'أندريس بيرلو','مدير ، مشرف','1597919908.jpg','https://twitter.com/','https://www.facebook.com/','https://www.instagram.com/','https://www.instagram.com/',1,NULL,NULL),(60,177,'كريستينا جريمي','رئيس الطباخين','1597919925.jpg','https://twitter.com/','https://www.facebook.com/','https://www.instagram.com/','https://www.instagram.com/',1,NULL,NULL),(61,177,'روزا بيلا','برجر شيف','1597919942.jpg','https://twitter.com/','https://www.facebook.com/','https://www.instagram.com/','https://www.instagram.com/',0,NULL,NULL),(62,176,'Gondon Ramsay','Dessert Chef','1598691630.jpg','https://twitter.com/','https://www.facebook.com/','https://www.instagram.com/','https://www.instagram.com/',0,NULL,NULL),(63,176,'Frank Lampard','Beverage Chef','1598691925.jpg','https://twitter.com/','https://www.facebook.com/','https://www.instagram.com/','https://www.instagram.com/',0,NULL,NULL),(64,176,'Chistopher Helen','Waiter, Superv','1598691992.jpg','https://twitter.com/','https://www.facebook.com/','https://www.instagram.com/','https://www.instagram.com/',0,NULL,NULL),(65,176,'Chrissy Costanza','Waiter, Superv','1598692028.jpg','https://twitter.com/','https://www.facebook.com/','https://www.instagram.com/','https://www.instagram.com/',0,NULL,NULL),(66,177,'سيسك فابريجاس','تعيين رئيس الطهاة','1598772306.jpg','https://twitter.com/','https://www.facebook.com/','https://www.instagram.com','https://www.linkedin.com/',0,NULL,NULL),(67,177,'غوردون رامزي','شيف حلويات','1598772340.jpg','https://twitter.com/','https://www.facebook.com/','https://www.instagram.com','https://www.linkedin.com/',0,NULL,NULL),(68,177,'فرانك لامبارد','الشيف المشروبات','1598772371.jpg','https://twitter.com/','https://www.facebook.com/','https://www.instagram.com','https://www.linkedin.com/',0,NULL,NULL),(69,177,'شيستوفر هيلين','نادل مشرف','1598772405.jpg','https://twitter.com/','https://www.facebook.com/','https://www.instagram.com','https://www.linkedin.com/',0,NULL,NULL),(70,177,'كريسى كوستانزا','نادل مشرف','1598772435.jpg','https://twitter.com/','https://www.facebook.com/','https://www.instagram.com','https://www.linkedin.com/',0,NULL,NULL);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `menus` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (107,177,'[{\"text\":\"الصفحة الرئيسية\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"قائمة طعام\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"menu_1\"},{\"text\":\"أغذية\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"العناصر\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"items\"},{\"text\":\"عربة التسوق\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"cart\"},{\"text\":\"الدفع\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"checkout\"}]},{\"text\":\"حول\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"صفحات ديناميكية\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"معلومات عنا\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"5\"},{\"text\":\"البنود و الظروف\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"6\"},{\"text\":\"سياسة خاصة\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"7\"}]},{\"text\":\"صالة عرض\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"gallery\"},{\"text\":\"التعليمات\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"},{\"text\":\"وظائف\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"career\"},{\"text\":\"أعضاء الفريق\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"team\"},{\"text\":\"حجز\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"reservation\"},{\"text\":\"مستويات غير محدودة\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"المستوى 3-1\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"المستوى 3-2\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"المستوى 4-1\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"المستوى 4-2\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"المستوى 4-3\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"المستوى 5-1\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"المستوى 5-2\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"المستوى 5-3\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"}]}]},{\"text\":\"المستوى 3-3\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"}]}]},{\"type\":\"blogs\",\"text\":\"المدونات\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"contact\",\"text\":\"اتصل\",\"href\":\"\",\"target\":\"_self\"}]','2020-12-31 06:36:17','2020-12-31 06:36:17'),(117,176,'[{\"text\":\"Home\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"Items\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"Foods\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"items\"},{\"text\":\"Cart\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"cart\"},{\"text\":\"Checkout\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"checkout\"}]},{\"text\":\"About\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"Dynamic Pages\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"About Us\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"1\"},{\"text\":\"Privacy Policy\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"4\"},{\"text\":\"Terms & Conditions\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"3\"}]},{\"text\":\"Gallery\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"gallery\"},{\"text\":\"FAQ\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"},{\"text\":\"Career\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"career\"},{\"text\":\"Team Members\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"team\"},{\"text\":\"Reservation\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"reservation\"},{\"text\":\"Unlimited Levels\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"Level 3-1\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"Level 3-2\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"Level 4-1\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"Level 4-2\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"Level 4-3\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"Level 5-1\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"Level 5-2\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"Level 5-3\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"}]}]},{\"text\":\"Level 3-3\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"}]}]},{\"text\":\"Blogs\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blogs\"},{\"text\":\"Contact\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"},{\"type\":\"menu_1\",\"text\":\"Menu\",\"href\":\"\",\"target\":\"_self\"}]','2023-05-03 06:14:15','2023-05-03 06:14:15');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2021_04_10_155226_add_pos_to_serving_methods',1),(5,'2021_04_10_161129_create_pos_payment_methods',2),(6,'2021_04_11_075502_create_customers_table',3),(7,'2021_04_11_151305_create_tables_table',4),(8,'2021_04_16_175547_add_qr_image_to_tables',5),(10,'2021_04_16_184950_add_qr_cols_to_table',6),(11,'2021_05_06_172702_add_image_to_tables',7),(12,'2021_05_06_182658_add_image_size_to_tables',8),(13,'2021_05_07_141846_change_defailt_image_size',9),(14,'2021_05_07_165729_drop_background_color_from_tables',10),(15,'2021_05_07_170622_add_image_position_cols_to_tables',11),(17,'2021_05_08_104914_add_type_and_text_cols_to_tables',12),(18,'2021_05_08_113457_add_default_value_to_text_color_in_tables',13),(19,'2021_05_08_174437_add_default_value_to_text_size_in_tables',14),(20,'2021_05_08_194033_add_qr_image_cols_to_basic_extendeds',15),(21,'2021_05_10_155349_add_gateway_type_to_product_orders',16),(24,'2021_05_11_180827_add_token_no_in_basic_settings',17),(25,'2021_05_11_181941_add_token_no_after_order_number_in_product_orders',17),(28,'2021_05_13_083313_create_postal_codes_table',18),(29,'2021_05_13_101831_add_postal_code_to_basic_settings',19),(32,'2021_05_16_105019_add_postal_code_to_product_orders',20),(33,'2021_05_18_130916_add_call_waiter_status_to_basic_settings',21),(34,'2021_05_18_194729_add_contact_infos_to_basic_settings',22),(36,'2021_05_19_081335_create_popups_table',23),(37,'2021_05_19_122217_drop_announcement_cols_from_basic_settings',24),(38,'2021_05_19_125220_drop_parent_link_col_from_basic_settings',25),(40,'2021_05_19_125534_add_whatsapp_chat_cols_to_basic_settings',26),(41,'2021_05_20_120604_add_order_close_cols_to_basic_extendeds',27),(42,'2022_03_13_165621_create_psub_categories_table',28),(43,'2022_03_13_180650_add_subcategory_id_to_products_table',28),(44,'2022_03_17_131144_add_free_delivery_amount_to_postal_codes',29),(45,'2022_03_17_194525_add_free_delivery_amount_to_shipping_charges',30),(46,'2022_04_18_133021_create_basic_extras',31),(49,'2022_04_19_155032_add_country_code_to_users_table',32),(51,'2022_04_21_120742_add_country_code_in_product_orders',33),(52,'2022_04_23_124847_add_whatsapp_order_notification_based_on_serving_methods',34),(53,'2022_04_23_144354_add_twilio_credentials_in_basic_extras',35),(54,'2022_05_25_195401_add_is_feature_in_psub_categories',36),(65,'2023_03_04_165637_create_intro_points_table',37),(66,'2023_03_05_124128_create_titles_table',37),(67,'2023_03_05_132538_add_column_to_basic_settings',38),(69,'2023_03_05_161748_add_column_testimonial_side_image_to_basic_extendeds',39),(71,'2023_03_05_171212_add_column_testimonial_section_text_to_basic_settings_table',40),(72,'2023_03_05_173430_add_column_category_section_title_and_special_section_title_to_basic_settings_table',41),(73,'2023_03_06_105842_add_column_background_image_to_basic_extendeds',42),(74,'2023_03_11_160511_add_column_hero_section_button_two_color_to_basic_extendeds',43),(76,'2023_03_11_163039_add_column_hero_section_autor_name_to_basic_extendeds',44),(77,'2023_03_13_103439_add_column_pricing_to_basic_extendeds',45),(84,'2023_03_13_130121_add_column_intro_to_basic_settings',46),(85,'2023_03_13_132216_add_column_rating_to_intro_points',46),(86,'2023_03_14_102250_add_column_intro_bg_image_to_basic_extendeds',47),(87,'2023_03_14_111304_alter_column_testimonial_bg_img_to_basic_extendeds',48),(89,'2023_03_14_130444_remove_column_special_section_title_to_basic_settings',49),(90,'2023_03_16_121332_add_column_top_bottom_shape_to_basic_extendeds',50),(91,'2023_03_16_161727_add_column_intro_section_shape_image_to_basic_settings',51),(93,'2023_03_20_110357_add_column_intro_section_coffee_theme_to_basic_settings',52),(94,'2023_03_22_111823_add_column_blog_section_bg_image_basic_extendeds',53),(95,'2023_03_25_145040_alter_column_hero_section_button_2_text_font_size_to_basic_extendeds',54),(96,'2023_03_30_130615_ad_column_water_shape_to_basic_extededs',55),(97,'2023_04_09_123201_alter_column_maintainance_to_basic_settings',56),(98,'2023_04_11_112615_delete_column_intro_section_button_font_size_and_intro_section_button_text_color_to_basic_settings',57),(99,'2023_04_11_124905_delete_column_to_hero_section_starting_price_and_hero_section_ending_price_to_basic_extendeds',58),(100,'2023_05_02_131139_alter_column_intro_title_to_basic_settings',59),(101,'2023_05_25_124230_add_colum_theme_to_basic_settings',60);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offline_gateways`
--

DROP TABLE IF EXISTS `offline_gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offline_gateways` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `instructions` blob DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `is_receipt` tinyint(4) NOT NULL DEFAULT 1,
  `receipt` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offline_gateways`
--

LOCK TABLES `offline_gateways` WRITE;
/*!40000 ALTER TABLE `offline_gateways` DISABLE KEYS */;
INSERT INTO `offline_gateways` VALUES (1,'Offline Gateway 1','Please send your payment to the following account.\r\nBank Name: Lorem Ipsum.\r\nBeneficiary Name: John Doe.\r\nAccount Number/IBAN: 12345678','<p style=\"line-height: 1.8;\"><font face=\"CircularStd-Book, Arial, sans-serif\">Chase Bank is the consumer banking division of JPMorgan Chase. Unlike its competitors, Chase is taking steps to expand its branch network in key markets. The bank currently has nearly 5,000 branches and 16,000 ATMs. According to the bank, nearly half of the country’s households are Chase customers.</font><br></p>',1,1,1,NULL,'2020-09-17 01:06:39','2023-04-11 04:42:23'),(2,'Offline Gateway 2','Please send your payment to the following account.\r\nBank Name: Lorem Ipsum.\r\nBeneficiary Name: John Doe.\r\nAccount Number/IBAN: 12345678','<p style=\"line-height: 1.8;\"><span style=\"font-family: CircularStd-Book, Arial, sans-serif; font-size: 14px;\">Bank of America serves about 66 million consumers and small business clients worldwide. Like many of the biggest banks, Bank of America is known for its digital innovation. It has more than 37 million digital clients and is experiencing success after introducing its virtual assistant, Erica, that assists account holders with various tasks</span><br></p>',1,2,0,NULL,'2020-09-17 01:07:37','2021-01-01 02:12:22'),(3,'Cash On Delivery',NULL,'<p><br></p>',1,3,0,NULL,'2020-09-17 02:05:36','2020-09-17 02:05:36');
/*!40000 ALTER TABLE `offline_gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `variations` text DEFAULT NULL,
  `addons` text DEFAULT NULL,
  `variations_price` decimal(11,2) NOT NULL DEFAULT 0.00,
  `addons_price` decimal(11,2) NOT NULL,
  `product_price` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (281,157,37,NULL,'Milk Shakes',1,'1598688750.jpg','\"\"','\"\"',0.00,0.00,4.00,4.00,'2023-08-02 13:26:43',NULL);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_times`
--

DROP TABLE IF EXISTS `order_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(100) DEFAULT NULL,
  `start_time` varchar(100) DEFAULT NULL,
  `end_time` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_times`
--

LOCK TABLES `order_times` WRITE;
/*!40000 ALTER TABLE `order_times` DISABLE KEYS */;
INSERT INTO `order_times` VALUES (1,'monday','8:00 AM','9:00 PM'),(2,'tuesday','10:00 AM','10:30 PM'),(3,'wednesday','12:00 AM','11:59 PM'),(4,'thursday','8:00 AM','11:59 PM'),(5,'friday','4:00 PM','9:00 PM'),(6,'saturday','11:25 AM','6:25 PM'),(7,'sunday','2:21 PM','4:19 PM');
/*!40000 ALTER TABLE `order_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `body` blob DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,176,'About Us','About Us','About Us','About-Us','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',1,1,NULL,NULL,'2020-08-21 04:06:16','2020-08-29 04:27:29'),(3,176,'Terms & Conditions','Terms & Conditions','Terms & Conditions','Terms-&-Conditions','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',1,2,NULL,NULL,'2020-08-21 04:06:16','2020-08-30 02:06:33'),(4,176,'Privacy Policy','Privacy Policy','Privacy Policy','Privacy-Policy','<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting  industry. \n\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. \n\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry.\n\n Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>',1,3,NULL,NULL,'2020-08-21 04:06:16','2020-09-07 18:47:30'),(5,177,'معلومات عنا','معلومات عنا','معلومات عنا','معلومات-عنا','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',1,1,NULL,NULL,'2020-08-30 02:07:32','2020-08-30 02:07:32'),(6,177,'البنود و الظروف','البنود و الظروف','البنود و الظروف','البنود-و-الظروف','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',1,2,NULL,NULL,'2020-08-30 02:09:42','2020-08-30 02:09:42'),(7,177,'سياسة خاصة','سياسة خاصة','سياسة خاصة','سياسة-خاصة','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',1,3,NULL,NULL,'2020-08-30 02:10:07','2020-08-30 02:10:07');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_gateways`
--

DROP TABLE IF EXISTS `payment_gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_gateways` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subtitle` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'manual',
  `information` mediumtext DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_gateways`
--

LOCK TABLES `payment_gateways` WRITE;
/*!40000 ALTER TABLE `payment_gateways` DISABLE KEYS */;
INSERT INTO `payment_gateways` VALUES (6,NULL,NULL,NULL,'Flutterwave','automatic','{\"public_key\":\"FLWPUBK_TEST-54e1bcf960a5364fa3365240fe555615-X\",\"secret_key\":\"FLWSECK_TEST-85dc3d03f924083034da3af27ec45b39-X\",\"text\":\"Pay via your Flutterwave account.\"}','flutterwave',1),(9,NULL,NULL,NULL,'Razorpay','automatic','{\"key\":\"rzp_test_fV9dM9URYbqjm7\",\"secret\":\"nickxZ1du2ojPYVVRTDif2Xr\",\"text\":\"Pay via your Razorpay account.\"}','razorpay',1),(11,NULL,NULL,NULL,'Paytm','automatic','{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"text\":\"Pay via your paytm account.\"}','paytm',1),(12,NULL,NULL,NULL,'Paystack','automatic','{\"key\":\"sk_test_45b0b207ffa006eeb5fc74ea35d01e673be15ade\",\"text\":\"Pay via your Paystack account.\"}','paystack',1),(13,NULL,NULL,NULL,'Instamojo','automatic','{\"key\":\"test_172371aa837ae5cad6047dc3052\",\"token\":\"test_4ac5a785e25fc596b67dbc5c267\",\"sandbox_check\":\"1\",\"text\":\"Pay via your Instamojo account.\"}','instamojo',1),(14,NULL,NULL,NULL,'Stripe','automatic','{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit account.\"}','stripe',1),(15,NULL,NULL,NULL,'Paypal','automatic','{\"client_id\":\"AVYKFEw63FtDt9aeYOe9biyifNI56s2Hc2F1Us11hWoY5GMuegipJRQBfWLiIKNbwQ5tmqKSrQTU3zB3\",\"client_secret\":\"EJY0qOKliVg7wKsR3uPN7lngr9rL1N7q4WV0FulT1h4Fw3_e5Itv1mxSdbtSUwAaQoXQFgq-RLlk_sQu\",\"sandbox_check\":\"1\",\"text\":\"Pay via your PayPal account.\"}','paypal',1),(17,NULL,NULL,NULL,'Mollie Payment','automatic','{\"key\":\"test_m6BAuk4mJ7asBP52AtCWn3WjpK4Tv3\",\"text\":\"Pay via your Mollie Payment account.\"}','mollie',1),(18,NULL,NULL,NULL,'PayUmoney','automatic','{\"key\":\"gtKFFx\",\"salt\":\"eCwWELxi\",\"text\":\"Pay via your PayUmoney account.\"}','payumoney',1),(19,NULL,NULL,NULL,'Mercado Pago','automatic','{\"token\":\"TEST-705032440135962-041006-ad2e021853f22338fe1a4db9f64d1491-421886156\",\"sandbox_check\":\"1\",\"text\":\"Pay via your Mercado Pago account.\"}','mercadopago',1);
/*!40000 ALTER TABLE `payment_gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pcategories`
--

DROP TABLE IF EXISTS `pcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcategories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_feature` int(11) DEFAULT NULL,
  `tax` decimal(11,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcategories`
--

LOCK TABLES `pcategories` WRITE;
/*!40000 ALTER TABLE `pcategories` DISABLE KEYS */;
INSERT INTO `pcategories` VALUES (12,176,'Ethiopian Food Menu','Ethiopian-Food-Menu','5f49f32b3e7f6.png',1,1,5.00,'2020-08-29 00:18:19','2023-08-12 08:24:43'),(13,176,'Pizza and Burgers','Pizza-and-Burgers','5f49f35703c25.png',1,1,2.00,'2020-08-29 00:19:03','2023-08-12 08:46:04'),(14,176,'Snack and Desserts','Snack-and-Desserts','5f49f38d9b272.png',1,1,3.00,'2020-08-29 00:19:57','2023-08-12 08:46:15'),(15,176,'Beverages','Beverages','5f5b1abeb9848.png',1,1,1.00,'2020-08-29 00:20:17','2023-08-12 08:26:25'),(16,177,'قائمة الضبط','قائمة-الضبط','5f4a6202bf8c7.png',1,1,0.00,'2020-08-29 08:11:14','2020-08-29 08:19:32'),(17,177,'برجر','برجر','5f4a63a389c5c.png',1,1,0.00,'2020-08-29 08:18:11','2020-08-29 08:19:28'),(18,177,'الحلوى','الحلوى','5f4a63c72bdf7.png',1,1,0.00,'2020-08-29 08:18:47','2020-08-29 08:19:26'),(19,177,'مشروب','مشروب','5f4a63de44351.png',1,1,0.00,'2020-08-29 08:19:10','2020-08-29 08:19:31');
/*!40000 ALTER TABLE `pcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `popups`
--

DROP TABLE IF EXISTS `popups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `popups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `background_image` varchar(100) DEFAULT NULL,
  `background_color` varchar(100) DEFAULT NULL,
  `background_opacity` decimal(8,2) NOT NULL DEFAULT 1.00,
  `title` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_url` text DEFAULT NULL,
  `button_color` varchar(20) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `delay` int(11) NOT NULL DEFAULT 1000 COMMENT 'in milisconds',
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - active, 0 - deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `popups_language_id_foreign` (`language_id`),
  CONSTRAINT `popups_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `popups`
--

LOCK TABLES `popups` WRITE;
/*!40000 ALTER TABLE `popups` DISABLE KEYS */;
INSERT INTO `popups` VALUES (11,176,'Black Friday','606d41536fa81.jpg',NULL,NULL,1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1500,1,1,0,'2021-04-06 19:21:23','2021-05-23 00:53:12'),(12,176,'Monthend Sale',NULL,'606d41d50dd28.jpg','451D53',0.80,'ENJOY 10% OFF','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.','Shop Now','http://example.com/','451D53',NULL,NULL,2000,2,2,0,'2021-04-06 19:23:33','2021-05-23 00:53:32'),(13,176,'Summer Sale',NULL,'606d42e66ee81.jpg','FF2865',0.70,'Newsletter','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.','Subscribe',NULL,'FF2865',NULL,NULL,2000,3,3,0,'2021-04-06 19:28:06','2021-05-23 00:53:22'),(14,176,'Winter Offer','606d43711d16a.jpg',NULL,NULL,1.00,'Get 10% off your first order','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt','Shop Now','http://example.com/','FF2865',NULL,NULL,1500,4,4,0,'2021-04-06 19:30:25','2021-05-23 00:53:46'),(15,176,'Winter Sale','606d43dfad35b.jpg',NULL,NULL,1.00,'Get 10% off your first order','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt','Subscribe',NULL,'F8960D',NULL,NULL,2000,6,5,0,'2021-04-06 19:32:15','2023-08-02 10:06:31'),(16,176,'New Arrivals Saleu',NULL,'609a5fc14a725.jpg',NULL,1.00,'Hurry, Sale Ends This Friday','This is your last chance to save 30%','Yes,I Want to Save 30%','http://example.com/','29A19C','03/14/2022','3:00 AM',1500,7,6,0,'2021-04-06 19:34:08','2023-08-02 10:06:24'),(17,176,'Flash Sale','606d5691a51bf.jpg',NULL,'930077',1.00,'Hurry, Sale Ends This Friday','This is your last chance to save 30%','Yes,I Want to Save 30%','http://example.com/','FA00CA','12/01/2023','10:00 AM',1500,8,7,0,'2021-04-06 19:36:04','2023-08-02 10:13:43'),(33,177,'Black Friday','606d41536fa81.jpg',NULL,NULL,1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1500,1,1,0,'2021-04-06 19:21:23','2021-04-07 22:06:58'),(34,177,'Monthend Sale',NULL,'606d41d50dd28.jpg','451D53',0.80,'ENJOY 10% OFF','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.','Shop Now','http://example.com/','451D53',NULL,NULL,2000,2,2,0,'2021-04-06 19:23:33','2021-04-07 22:06:21'),(35,177,'Summer Sale',NULL,'606d42e66ee81.jpg','FF2865',0.70,'Newsletter','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.','Subscribe',NULL,'FF2865',NULL,NULL,2000,3,3,0,'2021-04-06 19:28:06','2021-04-07 22:06:18'),(36,177,'Winter Offer','606d43711d16a.jpg',NULL,NULL,1.00,'Get 10% off your first order','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt','Shop Now','http://example.com/','FF2865',NULL,NULL,1500,4,4,0,'2021-04-06 19:30:25','2021-04-25 04:18:04'),(37,177,'Winter Sale','606d43dfad35b.jpg',NULL,NULL,1.00,'Get 10% off your first order','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt','Subscribe',NULL,'F8960D',NULL,NULL,2000,6,5,0,'2021-04-06 19:32:15','2021-04-07 22:06:09'),(38,177,'New Arrivals Saleu',NULL,'606d55f99176d.jpg',NULL,1.00,'Hurry, Sale Ends This Friday','This is your last chance to save 30%','Yes,I Want to Save 30%','http://example.com/','29A19C','03/14/2022','3:00 AM',1500,7,6,0,'2021-04-06 19:34:08','2021-05-23 01:00:12'),(39,177,'Flash Sale','606d5691a51bf.jpg',NULL,'930077',1.00,'Hurry, Sale Ends This Friday','This is your last chance to save 30%','Yes,I Want to Save 30%','http://example.com/','FA00CA','04/09/2022','10:00 AM',1500,8,7,0,'2021-04-06 19:36:04','2021-04-07 22:06:03');
/*!40000 ALTER TABLE `popups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pos_payment_methods`
--

DROP TABLE IF EXISTS `pos_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pos_payment_methods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1 - active, 0 - deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_payment_methods`
--

LOCK TABLES `pos_payment_methods` WRITE;
/*!40000 ALTER TABLE `pos_payment_methods` DISABLE KEYS */;
INSERT INTO `pos_payment_methods` VALUES (2,'On Cash',1,'2021-04-11 00:57:46','2021-04-11 00:57:57'),(4,'Paypal',1,'2021-05-10 11:30:28','2021-05-10 11:30:28');
/*!40000 ALTER TABLE `pos_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postal_codes`
--

DROP TABLE IF EXISTS `postal_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postal_codes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  `charge` decimal(11,2) NOT NULL DEFAULT 0.00,
  `free_delivery_amount` decimal(11,2) DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `postal_codes_language_id_foreign` (`language_id`),
  CONSTRAINT `postal_codes_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postal_codes`
--

LOCK TABLES `postal_codes` WRITE;
/*!40000 ALTER TABLE `postal_codes` DISABLE KEYS */;
INSERT INTO `postal_codes` VALUES (1,176,'Croton On Hudson','10520',2.00,NULL,1,'2021-05-13 03:59:27','2022-03-17 13:43:15'),(2,176,'Scarsdale','10583',1.00,NULL,2,'2021-05-13 04:10:31','2021-05-13 04:10:31'),(3,176,'Washington','20036',0.00,NULL,3,'2021-05-13 04:11:01','2021-05-13 04:11:58'),(4,176,'Williamsburg','23185',2.50,NULL,4,'2021-05-13 04:11:43','2022-03-17 13:42:26'),(5,176,'Bynum','36253',2.00,30.00,1,'2022-03-17 09:06:19','2022-03-17 09:06:19');
/*!40000 ALTER TABLE `postal_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=404 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (46,15,'5f49f71d3e143.jpg','2020-08-29 00:35:09','2020-08-29 00:50:08'),(47,15,'5f49f71d55108.jpg','2020-08-29 00:35:09','2020-08-29 00:50:08'),(48,15,'5f49f71dc6ba6.jpg','2020-08-29 00:35:09','2020-08-29 00:50:08'),(49,15,'5f49f71dd6ec1.jpg','2020-08-29 00:35:09','2020-08-29 00:50:08'),(50,15,'5f49f71e2f633.jpg','2020-08-29 00:35:10','2020-08-29 00:50:08'),(51,15,'5f49f71e42478.jpg','2020-08-29 00:35:10','2020-08-29 00:50:08'),(52,16,'5f49fded6d5b2.jpg','2020-08-29 01:04:13','2020-08-29 01:05:55'),(53,16,'5f49fded8b2ff.jpg','2020-08-29 01:04:13','2020-08-29 01:05:55'),(54,16,'5f49fdedee30b.jpg','2020-08-29 01:04:13','2020-08-29 01:05:55'),(55,16,'5f49fdee1fb13.jpg','2020-08-29 01:04:14','2020-08-29 01:05:55'),(56,16,'5f49fdef73578.jpg','2020-08-29 01:04:15','2020-08-29 01:05:55'),(57,16,'5f49fdef7f5df.jpg','2020-08-29 01:04:15','2020-08-29 01:05:55'),(58,17,'5f49fe8727bdd.jpg','2020-08-29 01:06:47','2020-08-29 01:07:55'),(59,17,'5f49fe872b59b.jpg','2020-08-29 01:06:47','2020-08-29 01:07:55'),(60,17,'5f49fe879e5ef.jpg','2020-08-29 01:06:47','2020-08-29 01:07:55'),(61,17,'5f49fe87a12f7.jpg','2020-08-29 01:06:47','2020-08-29 01:07:55'),(62,17,'5f49fe880dc20.jpg','2020-08-29 01:06:48','2020-08-29 01:07:55'),(63,17,'5f49fe8813908.jpg','2020-08-29 01:06:48','2020-08-29 01:07:55'),(64,18,'5f49ff519ac98.jpg','2020-08-29 01:10:09','2020-08-29 01:10:27'),(65,18,'5f49ff519ae30.jpg','2020-08-29 01:10:09','2020-08-29 01:10:27'),(66,18,'5f49ff51ed17a.jpg','2020-08-29 01:10:09','2020-08-29 01:10:27'),(67,18,'5f49ff5202028.jpg','2020-08-29 01:10:10','2020-08-29 01:10:27'),(68,18,'5f49ff524eea1.jpg','2020-08-29 01:10:10','2020-08-29 01:10:27'),(69,18,'5f49ff5252441.jpg','2020-08-29 01:10:10','2020-08-29 01:10:27'),(70,19,'5f4a01291c821.jpg','2020-08-29 01:18:01','2020-08-29 01:20:27'),(71,19,'5f4a012922549.jpg','2020-08-29 01:18:01','2020-08-29 01:20:27'),(72,19,'5f4a012999765.jpg','2020-08-29 01:18:01','2020-08-29 01:20:27'),(73,19,'5f4a0129a1e11.jpg','2020-08-29 01:18:01','2020-08-29 01:20:27'),(74,19,'5f4a012a0afb0.jpg','2020-08-29 01:18:02','2020-08-29 01:20:27'),(75,19,'5f4a012a19c1a.jpg','2020-08-29 01:18:02','2020-08-29 01:20:27'),(82,21,'5f4a037b6863d.jpg','2020-08-29 01:27:55','2020-08-29 01:28:55'),(83,21,'5f4a037b6b021.jpg','2020-08-29 01:27:55','2020-08-29 01:28:55'),(84,21,'5f4a037c15972.jpg','2020-08-29 01:27:56','2020-08-29 01:28:55'),(85,21,'5f4a037c22754.jpg','2020-08-29 01:27:56','2020-08-29 01:28:55'),(86,21,'5f4a037c72b86.jpg','2020-08-29 01:27:56','2020-08-29 01:28:55'),(87,21,'5f4a037c74ebf.jpg','2020-08-29 01:27:56','2020-08-29 01:28:55'),(88,22,'5f4a04b809578.jpg','2020-08-29 01:33:12','2020-08-29 01:33:15'),(89,22,'5f4a04b809f46.jpg','2020-08-29 01:33:12','2020-08-29 01:33:15'),(90,22,'5f4a04b85664d.jpg','2020-08-29 01:33:12','2020-08-29 01:33:15'),(91,22,'5f4a04b8585c8.jpg','2020-08-29 01:33:12','2020-08-29 01:33:15'),(92,22,'5f4a04b8aac60.jpg','2020-08-29 01:33:12','2020-08-29 01:33:15'),(93,22,'5f4a04b8ac060.jpg','2020-08-29 01:33:12','2020-08-29 01:33:15'),(94,23,'5f4a05dd9711f.jpg','2020-08-29 01:38:05','2020-08-29 01:38:51'),(95,23,'5f4a05dd9bcdb.jpg','2020-08-29 01:38:05','2020-08-29 01:38:51'),(96,23,'5f4a05de52f5a.jpg','2020-08-29 01:38:06','2020-08-29 01:38:51'),(97,23,'5f4a05de69582.jpg','2020-08-29 01:38:06','2020-08-29 01:38:51'),(98,23,'5f4a05e04463c.jpg','2020-08-29 01:38:08','2020-08-29 01:38:51'),(99,23,'5f4a05e044bff.jpg','2020-08-29 01:38:08','2020-08-29 01:38:51'),(100,24,'5f4a061889d00.jpg','2020-08-29 01:39:04','2020-08-29 01:39:57'),(101,24,'5f4a0618aa724.jpg','2020-08-29 01:39:04','2020-08-29 01:39:57'),(102,24,'5f4a06191dde9.jpg','2020-08-29 01:39:05','2020-08-29 01:39:57'),(103,24,'5f4a06191d50e.jpg','2020-08-29 01:39:05','2020-08-29 01:39:57'),(104,24,'5f4a061968d00.jpg','2020-08-29 01:39:05','2020-08-29 01:39:57'),(105,24,'5f4a0619690fd.jpg','2020-08-29 01:39:05','2020-08-29 01:39:57'),(106,25,'5f4a06c5a0358.jpg','2020-08-29 01:41:57','2020-08-29 01:42:42'),(107,25,'5f4a06c5a2754.jpg','2020-08-29 01:41:57','2020-08-29 01:42:42'),(108,25,'5f4a06c606a64.jpg','2020-08-29 01:41:58','2020-08-29 01:42:42'),(109,25,'5f4a06c60966e.jpg','2020-08-29 01:41:58','2020-08-29 01:42:42'),(110,25,'5f4a06c64f8bd.jpg','2020-08-29 01:41:58','2020-08-29 01:42:42'),(111,25,'5f4a06c653d62.jpg','2020-08-29 01:41:58','2020-08-29 01:42:42'),(112,26,'5f4a07054dae3.jpg','2020-08-29 01:43:01','2020-08-29 01:44:32'),(113,26,'5f4a07058abce.jpg','2020-08-29 01:43:01','2020-08-29 01:44:32'),(114,26,'5f4a070632ac7.jpg','2020-08-29 01:43:02','2020-08-29 01:44:32'),(115,26,'5f4a070674ed0.jpg','2020-08-29 01:43:02','2020-08-29 01:44:32'),(116,26,'5f4a0706d92e5.jpg','2020-08-29 01:43:02','2020-08-29 01:44:32'),(117,26,'5f4a0706f13e7.jpg','2020-08-29 01:43:02','2020-08-29 01:44:32'),(118,27,'5f4a08969cfa5.jpg','2020-08-29 01:49:42','2020-08-29 01:53:55'),(119,27,'5f4a0896c48c7.jpg','2020-08-29 01:49:42','2020-08-29 01:53:55'),(120,27,'5f4a08972892b.jpg','2020-08-29 01:49:43','2020-08-29 01:53:55'),(121,27,'5f4a08974ce00.jpg','2020-08-29 01:49:43','2020-08-29 01:53:55'),(122,27,'5f4a089781191.jpg','2020-08-29 01:49:43','2020-08-29 01:53:55'),(123,27,'5f4a089795b4b.jpg','2020-08-29 01:49:43','2020-08-29 01:53:55'),(125,28,'5f4a09ba77c85.jpg','2020-08-29 01:54:34','2020-08-29 01:55:30'),(126,28,'5f4a09ba8bbdb.jpg','2020-08-29 01:54:34','2020-08-29 01:55:30'),(127,28,'5f4a09bab8d8b.jpg','2020-08-29 01:54:34','2020-08-29 01:55:30'),(128,28,'5f4a09bace806.jpg','2020-08-29 01:54:34','2020-08-29 01:55:30'),(129,28,'5f4a09bb1a543.jpg','2020-08-29 01:54:35','2020-08-29 01:55:30'),(130,28,'5f4a09bb2ae1b.jpg','2020-08-29 01:54:35','2020-08-29 01:55:30'),(131,29,'5f4a0a0001078.jpg','2020-08-29 01:55:44','2020-08-29 01:56:37'),(132,29,'5f4a0a0008941.jpg','2020-08-29 01:55:44','2020-08-29 01:56:37'),(133,29,'5f4a0a0046b52.jpg','2020-08-29 01:55:44','2020-08-29 01:56:37'),(134,29,'5f4a0a005230d.jpg','2020-08-29 01:55:44','2020-08-29 01:56:37'),(135,29,'5f4a0a0093455.jpg','2020-08-29 01:55:44','2020-08-29 01:56:37'),(136,29,'5f4a0a009b5fb.jpg','2020-08-29 01:55:44','2020-08-29 01:56:37'),(137,30,'5f4a0a5f82da3.jpg','2020-08-29 01:57:19','2020-08-29 01:58:56'),(138,30,'5f4a0a5f8deb4.jpg','2020-08-29 01:57:19','2020-08-29 01:58:56'),(139,30,'5f4a0a61094ab.jpg','2020-08-29 01:57:21','2020-08-29 01:58:56'),(140,30,'5f4a0a610a3ff.jpg','2020-08-29 01:57:21','2020-08-29 01:58:56'),(141,30,'5f4a0a614d32c.jpg','2020-08-29 01:57:21','2020-08-29 01:58:56'),(142,30,'5f4a0a614d5f1.jpg','2020-08-29 01:57:21','2020-08-29 01:58:56'),(143,31,'5f4a0ad4d5e81.jpg','2020-08-29 01:59:16','2020-08-29 02:00:10'),(144,31,'5f4a0ad4d72e7.jpg','2020-08-29 01:59:16','2020-08-29 02:00:10'),(145,31,'5f4a0ad53a175.jpg','2020-08-29 01:59:17','2020-08-29 02:00:10'),(146,31,'5f4a0ad54226c.jpg','2020-08-29 01:59:17','2020-08-29 02:00:10'),(147,31,'5f4a0ad586a4d.jpg','2020-08-29 01:59:17','2020-08-29 02:00:10'),(148,31,'5f4a0ad589b04.jpg','2020-08-29 01:59:17','2020-08-29 02:00:10'),(149,32,'5f4a0b377bda5.jpg','2020-08-29 02:00:55','2020-08-29 02:01:36'),(150,32,'5f4a0b378e9e2.jpg','2020-08-29 02:00:55','2020-08-29 02:01:36'),(151,32,'5f4a0b37c8f82.jpg','2020-08-29 02:00:55','2020-08-29 02:01:36'),(152,32,'5f4a0b37dc0e3.jpg','2020-08-29 02:00:55','2020-08-29 02:01:36'),(153,32,'5f4a0b3822f08.jpg','2020-08-29 02:00:56','2020-08-29 02:01:36'),(154,32,'5f4a0b38333f8.jpg','2020-08-29 02:00:56','2020-08-29 02:01:36'),(155,33,'5f4a0c1700047.jpg','2020-08-29 02:04:39','2020-08-29 02:05:47'),(156,33,'5f4a0c1717ac2.jpg','2020-08-29 02:04:39','2020-08-29 02:05:47'),(157,33,'5f4a0c174ea7f.jpg','2020-08-29 02:04:39','2020-08-29 02:05:47'),(158,33,'5f4a0c175bf91.jpg','2020-08-29 02:04:39','2020-08-29 02:05:47'),(159,33,'5f4a0c179799d.jpg','2020-08-29 02:04:39','2020-08-29 02:05:47'),(160,33,'5f4a0c17a19a0.jpg','2020-08-29 02:04:39','2020-08-29 02:05:47'),(162,34,'5f4a0c7e26013.jpg','2020-08-29 02:06:22','2020-08-29 02:07:12'),(163,34,'5f4a0c7e34d52.jpg','2020-08-29 02:06:22','2020-08-29 02:07:12'),(164,34,'5f4a0c7e69e61.jpg','2020-08-29 02:06:22','2020-08-29 02:07:12'),(165,34,'5f4a0c7e7bbc9.jpg','2020-08-29 02:06:22','2020-08-29 02:07:12'),(166,34,'5f4a0c7ec05e8.jpg','2020-08-29 02:06:22','2020-08-29 02:07:12'),(167,34,'5f4a0c7ece222.jpg','2020-08-29 02:06:22','2020-08-29 02:07:12'),(168,35,'5f4a0ce4ec541.jpg','2020-08-29 02:08:04','2020-08-29 02:08:52'),(169,35,'5f4a0ce5070e1.jpg','2020-08-29 02:08:05','2020-08-29 02:08:52'),(170,35,'5f4a0ce588b80.jpg','2020-08-29 02:08:05','2020-08-29 02:08:52'),(171,35,'5f4a0ce5963da.jpg','2020-08-29 02:08:05','2020-08-29 02:08:52'),(172,35,'5f4a0ce5cfd49.jpg','2020-08-29 02:08:05','2020-08-29 02:08:52'),(173,35,'5f4a0ce5e8329.jpg','2020-08-29 02:08:05','2020-08-29 02:08:52'),(174,36,'5f4a0d32821ba.jpg','2020-08-29 02:09:22','2020-08-29 02:10:00'),(175,36,'5f4a0d32895a9.jpg','2020-08-29 02:09:22','2020-08-29 02:10:00'),(176,36,'5f4a0d32c62e4.jpg','2020-08-29 02:09:22','2020-08-29 02:10:00'),(177,36,'5f4a0d32ca3e5.jpg','2020-08-29 02:09:22','2020-08-29 02:10:00'),(178,36,'5f4a0d3321a7b.jpg','2020-08-29 02:09:23','2020-08-29 02:10:00'),(179,36,'5f4a0d3328ae6.jpg','2020-08-29 02:09:23','2020-08-29 02:10:00'),(182,37,'5f4a0dc41b3c0.jpg','2020-08-29 02:11:48','2020-08-29 02:12:30'),(183,37,'5f4a0dc431759.jpg','2020-08-29 02:11:48','2020-08-29 02:12:30'),(184,37,'5f4a0dc473774.jpg','2020-08-29 02:11:48','2020-08-29 02:12:30'),(185,37,'5f4a0dc486595.jpg','2020-08-29 02:11:48','2020-08-29 02:12:30'),(186,37,'5f4a0dc4bf74e.jpg','2020-08-29 02:11:48','2020-08-29 02:12:30'),(187,37,'5f4a0dc4c9bdd.jpg','2020-08-29 02:11:48','2020-08-29 02:12:30'),(194,39,'5f4a68d955137.jpg','2020-08-29 08:40:25','2020-08-29 08:44:00'),(195,39,'5f4a68d96bb93.jpg','2020-08-29 08:40:25','2020-08-29 08:44:00'),(196,39,'5f4a68d9d9e62.jpg','2020-08-29 08:40:25','2020-08-29 08:44:00'),(197,39,'5f4a68d9ea812.jpg','2020-08-29 08:40:25','2020-08-29 08:44:00'),(198,39,'5f4a68da465d1.jpg','2020-08-29 08:40:26','2020-08-29 08:44:00'),(199,39,'5f4a68da543df.jpg','2020-08-29 08:40:26','2020-08-29 08:44:00'),(200,40,'5f4a69caeb230.jpg','2020-08-29 08:44:26','2020-08-29 08:45:34'),(201,40,'5f4a69caeb005.jpg','2020-08-29 08:44:26','2020-08-29 08:45:34'),(202,40,'5f4a69cb49e17.jpg','2020-08-29 08:44:27','2020-08-29 08:45:34'),(203,40,'5f4a69cb4f29e.jpg','2020-08-29 08:44:27','2020-08-29 08:45:34'),(204,40,'5f4a69cb97268.jpg','2020-08-29 08:44:27','2020-08-29 08:45:34'),(205,40,'5f4a69cb9ca9c.jpg','2020-08-29 08:44:27','2020-08-29 08:45:34'),(206,41,'5f4a6a2e1b842.jpg','2020-08-29 08:46:06','2020-08-29 08:46:44'),(207,41,'5f4a6a2e210a5.jpg','2020-08-29 08:46:06','2020-08-29 08:46:44'),(208,41,'5f4a6a2e67648.jpg','2020-08-29 08:46:06','2020-08-29 08:46:44'),(209,41,'5f4a6a2e6bfc9.jpg','2020-08-29 08:46:06','2020-08-29 08:46:44'),(210,41,'5f4a6a2eacd18.jpg','2020-08-29 08:46:06','2020-08-29 08:46:44'),(211,41,'5f4a6a2eae388.jpg','2020-08-29 08:46:06','2020-08-29 08:46:44'),(212,42,'5f4a6a6cc242b.jpg','2020-08-29 08:47:08','2020-08-29 08:47:45'),(213,42,'5f4a6a6cc2f5b.jpg','2020-08-29 08:47:08','2020-08-29 08:47:45'),(214,42,'5f4a6a6d1ee00.jpg','2020-08-29 08:47:09','2020-08-29 08:47:45'),(215,42,'5f4a6a6d2230c.jpg','2020-08-29 08:47:09','2020-08-29 08:47:45'),(216,42,'5f4a6a6d6aa9f.jpg','2020-08-29 08:47:09','2020-08-29 08:47:45'),(217,42,'5f4a6a6d6cb4e.jpg','2020-08-29 08:47:09','2020-08-29 08:47:45'),(218,43,'5f4a6aa87eb54.jpg','2020-08-29 08:48:08','2020-08-29 08:48:46'),(219,43,'5f4a6aa88b874.jpg','2020-08-29 08:48:08','2020-08-29 08:48:46'),(220,43,'5f4a6aa8d80dc.jpg','2020-08-29 08:48:08','2020-08-29 08:48:46'),(221,43,'5f4a6aa8e3900.jpg','2020-08-29 08:48:08','2020-08-29 08:48:46'),(222,43,'5f4a6aa95ede7.jpg','2020-08-29 08:48:09','2020-08-29 08:48:46'),(223,43,'5f4a6aa96034a.jpg','2020-08-29 08:48:09','2020-08-29 08:48:46'),(224,44,'5f4a6ae3d18f9.jpg','2020-08-29 08:49:07','2020-08-29 08:49:50'),(225,44,'5f4a6ae3d4b99.jpg','2020-08-29 08:49:07','2020-08-29 08:49:50'),(226,44,'5f4a6ae4759ad.jpg','2020-08-29 08:49:08','2020-08-29 08:49:50'),(227,44,'5f4a6ae47852e.jpg','2020-08-29 08:49:08','2020-08-29 08:49:50'),(228,44,'5f4a6ae4b05c0.jpg','2020-08-29 08:49:08','2020-08-29 08:49:50'),(229,44,'5f4a6ae4b3e2f.jpg','2020-08-29 08:49:08','2020-08-29 08:49:50'),(230,45,'5f4a6da3ca69b.jpg','2020-08-29 09:00:51','2020-08-29 09:01:52'),(231,45,'5f4a6da3e8058.jpg','2020-08-29 09:00:51','2020-08-29 09:01:52'),(232,45,'5f4a6da490c90.jpg','2020-08-29 09:00:52','2020-08-29 09:01:52'),(233,45,'5f4a6da49aaf1.jpg','2020-08-29 09:00:52','2020-08-29 09:01:52'),(234,45,'5f4a6da4dcedc.jpg','2020-08-29 09:00:52','2020-08-29 09:01:52'),(235,45,'5f4a6da4dff5c.jpg','2020-08-29 09:00:52','2020-08-29 09:01:52'),(236,46,'5f4a6e0253cfe.jpg','2020-08-29 09:02:26','2020-08-29 09:03:16'),(237,46,'5f4a6e0284cba.jpg','2020-08-29 09:02:26','2020-08-29 09:03:16'),(238,46,'5f4a6e02ec82d.jpg','2020-08-29 09:02:26','2020-08-29 09:03:16'),(239,46,'5f4a6e033477f.jpg','2020-08-29 09:02:27','2020-08-29 09:03:16'),(240,46,'5f4a6e035ff2d.jpg','2020-08-29 09:02:27','2020-08-29 09:03:16'),(241,47,'5f4a718bd9351.jpg','2020-08-29 09:17:31','2020-08-29 09:18:16'),(242,47,'5f4a718bda9a3.jpg','2020-08-29 09:17:31','2020-08-29 09:18:16'),(243,47,'5f4a718c2e0b9.jpg','2020-08-29 09:17:32','2020-08-29 09:18:16'),(244,47,'5f4a718c2eca7.jpg','2020-08-29 09:17:32','2020-08-29 09:18:16'),(245,47,'5f4a718c7ef05.jpg','2020-08-29 09:17:32','2020-08-29 09:18:16'),(246,47,'5f4a718c809f7.jpg','2020-08-29 09:17:32','2020-08-29 09:18:16'),(247,48,'5f4a7239b9b28.jpg','2020-08-29 09:20:25','2020-08-29 09:20:56'),(248,48,'5f4a7239bf231.jpg','2020-08-29 09:20:25','2020-08-29 09:20:56'),(249,48,'5f4a723a31b64.jpg','2020-08-29 09:20:26','2020-08-29 09:20:56'),(250,48,'5f4a723a4d102.jpg','2020-08-29 09:20:26','2020-08-29 09:20:56'),(251,48,'5f4a723aa7333.jpg','2020-08-29 09:20:26','2020-08-29 09:20:56'),(252,48,'5f4a723ace80a.jpg','2020-08-29 09:20:26','2020-08-29 09:20:56'),(253,49,'5f4a7278a313a.jpg','2020-08-29 09:21:28','2020-08-29 09:22:05'),(254,49,'5f4a7278b21d0.jpg','2020-08-29 09:21:28','2020-08-29 09:22:05'),(255,49,'5f4a7278e4908.jpg','2020-08-29 09:21:28','2020-08-29 09:22:05'),(256,49,'5f4a727903f5b.jpg','2020-08-29 09:21:29','2020-08-29 09:22:05'),(257,49,'5f4a72793dd44.jpg','2020-08-29 09:21:29','2020-08-29 09:22:05'),(258,49,'5f4a72794d5a9.jpg','2020-08-29 09:21:29','2020-08-29 09:22:05'),(259,50,'5f4a72b6e15d5.jpg','2020-08-29 09:22:30','2020-08-29 09:23:04'),(260,50,'5f4a72b70ad3f.jpg','2020-08-29 09:22:31','2020-08-29 09:23:04'),(261,50,'5f4a72b74a024.jpg','2020-08-29 09:22:31','2020-08-29 09:23:04'),(262,50,'5f4a72b75d446.jpg','2020-08-29 09:22:31','2020-08-29 09:23:04'),(263,50,'5f4a72b7a1f37.jpg','2020-08-29 09:22:31','2020-08-29 09:23:04'),(264,50,'5f4a72b7b3754.jpg','2020-08-29 09:22:31','2020-08-29 09:23:04'),(265,51,'5f4b27e87bd5f.jpg','2020-08-29 22:15:36','2020-08-29 22:16:53'),(266,51,'5f4b27e88316b.jpg','2020-08-29 22:15:36','2020-08-29 22:16:53'),(267,51,'5f4b27e8edba3.jpg','2020-08-29 22:15:36','2020-08-29 22:16:53'),(268,51,'5f4b27e900425.jpg','2020-08-29 22:15:37','2020-08-29 22:16:53'),(269,51,'5f4b27e9516b3.jpg','2020-08-29 22:15:37','2020-08-29 22:16:53'),(270,51,'5f4b27e951d77.jpg','2020-08-29 22:15:37','2020-08-29 22:16:53'),(271,52,'5f4b285c274a7.jpg','2020-08-29 22:17:32','2020-08-29 22:18:08'),(272,52,'5f4b285c2f7cc.jpg','2020-08-29 22:17:32','2020-08-29 22:18:08'),(273,52,'5f4b285c7e026.jpg','2020-08-29 22:17:32','2020-08-29 22:18:08'),(274,52,'5f4b285c880b5.jpg','2020-08-29 22:17:32','2020-08-29 22:18:08'),(275,52,'5f4b285cdfd06.jpg','2020-08-29 22:17:32','2020-08-29 22:18:08'),(276,52,'5f4b285ce7a4a.jpg','2020-08-29 22:17:32','2020-08-29 22:18:08'),(277,53,'5f4b289f862a9.jpg','2020-08-29 22:18:39','2020-08-29 22:19:15'),(278,53,'5f4b289f8649c.jpg','2020-08-29 22:18:39','2020-08-29 22:19:15'),(279,53,'5f4b289fcabeb.jpg','2020-08-29 22:18:39','2020-08-29 22:19:15'),(280,53,'5f4b289fd0a2e.jpg','2020-08-29 22:18:39','2020-08-29 22:19:15'),(281,53,'5f4b28a0238ce.jpg','2020-08-29 22:18:40','2020-08-29 22:19:15'),(282,53,'5f4b28a024363.jpg','2020-08-29 22:18:40','2020-08-29 22:19:15'),(283,54,'5f4b299bb4425.jpg','2020-08-29 22:22:51','2020-08-29 22:24:22'),(284,54,'5f4b299bb65ea.jpg','2020-08-29 22:22:51','2020-08-29 22:24:22'),(285,54,'5f4b299c3180e.jpg','2020-08-29 22:22:52','2020-08-29 22:24:22'),(286,54,'5f4b299c313e7.jpg','2020-08-29 22:22:52','2020-08-29 22:24:22'),(287,54,'5f4b299c8e154.jpg','2020-08-29 22:22:52','2020-08-29 22:24:22'),(288,54,'5f4b299c91e1b.jpg','2020-08-29 22:22:52','2020-08-29 22:24:22'),(289,55,'5f4b2a1b96496.jpg','2020-08-29 22:24:59','2020-08-29 22:25:27'),(290,55,'5f4b2a1b96d57.jpg','2020-08-29 22:24:59','2020-08-29 22:25:27'),(291,55,'5f4b2a1c04f45.jpg','2020-08-29 22:25:00','2020-08-29 22:25:27'),(292,55,'5f4b2a1c10526.jpg','2020-08-29 22:25:00','2020-08-29 22:25:27'),(293,55,'5f4b2a1c6b51c.jpg','2020-08-29 22:25:00','2020-08-29 22:25:27'),(294,55,'5f4b2a1c6db56.jpg','2020-08-29 22:25:00','2020-08-29 22:25:27'),(295,56,'5f4b2a505ec75.jpg','2020-08-29 22:25:52','2020-08-29 22:26:19'),(296,56,'5f4b2a506c7f9.jpg','2020-08-29 22:25:52','2020-08-29 22:26:19'),(297,56,'5f4b2a50ae311.jpg','2020-08-29 22:25:52','2020-08-29 22:26:19'),(298,56,'5f4b2a50bcafe.jpg','2020-08-29 22:25:52','2020-08-29 22:26:19'),(299,56,'5f4b2a51247f6.jpg','2020-08-29 22:25:53','2020-08-29 22:26:19'),(300,56,'5f4b2a512c12e.jpg','2020-08-29 22:25:53','2020-08-29 22:26:19'),(308,57,'5f4b2a9f73eb7.jpg','2020-08-29 22:27:11','2020-08-29 22:27:52'),(309,57,'5f4b2a9f75219.jpg','2020-08-29 22:27:11','2020-08-29 22:27:52'),(310,57,'5f4b2a9fd974b.jpg','2020-08-29 22:27:11','2020-08-29 22:27:52'),(311,57,'5f4b2a9fe1379.jpg','2020-08-29 22:27:11','2020-08-29 22:27:52'),(312,57,'5f4b2aa044d29.jpg','2020-08-29 22:27:12','2020-08-29 22:27:52'),(313,57,'5f4b2aa058bc1.jpg','2020-08-29 22:27:12','2020-08-29 22:27:52'),(314,58,'5f4b2acef13c5.jpg','2020-08-29 22:27:58','2020-08-29 22:28:43'),(315,58,'5f4b2acef1588.jpg','2020-08-29 22:27:58','2020-08-29 22:28:43'),(316,58,'5f4b2acf49269.jpg','2020-08-29 22:27:59','2020-08-29 22:28:43'),(317,58,'5f4b2acf4b7b7.jpg','2020-08-29 22:27:59','2020-08-29 22:28:43'),(318,58,'5f4b2acf81d65.jpg','2020-08-29 22:27:59','2020-08-29 22:28:43'),(319,58,'5f4b2acf867ef.jpg','2020-08-29 22:27:59','2020-08-29 22:28:43'),(320,59,'5f4b2bbee254c.jpg','2020-08-29 22:31:58','2020-08-29 22:32:55'),(321,59,'5f4b2bbeee61c.jpg','2020-08-29 22:31:58','2020-08-29 22:32:55'),(322,59,'5f4b2bbf52165.jpg','2020-08-29 22:31:59','2020-08-29 22:32:55'),(323,59,'5f4b2bbf5cd0c.jpg','2020-08-29 22:31:59','2020-08-29 22:32:55'),(324,59,'5f4b2bbfaa38b.jpg','2020-08-29 22:31:59','2020-08-29 22:32:55'),(325,59,'5f4b2bbfb7893.jpg','2020-08-29 22:31:59','2020-08-29 22:32:55'),(326,60,'5f4b2bff27214.jpg','2020-08-29 22:33:03','2020-08-29 22:33:45'),(327,60,'5f4b2bff4038b.jpg','2020-08-29 22:33:03','2020-08-29 22:33:45'),(328,60,'5f4b2bffb3e9b.jpg','2020-08-29 22:33:03','2020-08-29 22:33:45'),(329,60,'5f4b2bffc5894.jpg','2020-08-29 22:33:03','2020-08-29 22:33:45'),(330,60,'5f4b2c0022c9c.jpg','2020-08-29 22:33:04','2020-08-29 22:33:45'),(331,60,'5f4b2c003b127.jpg','2020-08-29 22:33:04','2020-08-29 22:33:45'),(333,61,'5f4b2c4b18612.jpg','2020-08-29 22:34:19','2020-08-29 22:35:18'),(334,61,'5f4b2c4b18663.jpg','2020-08-29 22:34:19','2020-08-29 22:35:18'),(335,61,'5f4b2c4b6b852.jpg','2020-08-29 22:34:19','2020-08-29 22:35:18'),(336,61,'5f4b2c4b6eccf.jpg','2020-08-29 22:34:19','2020-08-29 22:35:18'),(337,61,'5f4b2c4bc4329.jpg','2020-08-29 22:34:19','2020-08-29 22:35:18'),(338,61,'5f4b2c4bcd1c6.jpg','2020-08-29 22:34:19','2020-08-29 22:35:18'),(339,62,'5f4b2c8d416fa.jpg','2020-08-29 22:35:25','2020-08-29 22:36:22'),(340,62,'5f4b2c8d54c58.jpg','2020-08-29 22:35:25','2020-08-29 22:36:22'),(341,62,'5f4b2c8d91745.jpg','2020-08-29 22:35:25','2020-08-29 22:36:22'),(342,62,'5f4b2c8d9cf34.jpg','2020-08-29 22:35:25','2020-08-29 22:36:22'),(343,62,'5f4b2c8dd7bf6.jpg','2020-08-29 22:35:25','2020-08-29 22:36:22'),(344,62,'5f4b2c8de3157.jpg','2020-08-29 22:35:25','2020-08-29 22:36:22'),(391,68,'6450ab1556a4f.jpg','2023-05-02 06:17:57','2023-05-02 06:18:51'),(399,20,'64d7b4c7a46da.jpg','2023-08-12 08:35:19','2023-08-12 08:35:19'),(400,20,'64d7b4f117e8f.jpg','2023-08-12 08:36:01','2023-08-12 08:36:01'),(401,20,'64d7b4f11e081.jpg','2023-08-12 08:36:01','2023-08-12 08:36:01'),(402,20,'64d7b4f21650f.jpg','2023-08-12 08:36:02','2023-08-12 08:36:02'),(403,20,'64d7b4f21fee5.jpg','2023-08-12 08:36:02','2023-08-12 08:36:02');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_orders`
--

DROP TABLE IF EXISTS `product_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `billing_country` varchar(255) DEFAULT NULL,
  `billing_fname` varchar(255) DEFAULT NULL,
  `billing_lname` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `billing_country_code` varchar(10) DEFAULT NULL,
  `billing_number` varchar(255) DEFAULT NULL,
  `shpping_country` varchar(255) DEFAULT NULL,
  `shpping_fname` varchar(255) DEFAULT NULL,
  `shpping_lname` varchar(255) DEFAULT NULL,
  `shpping_address` varchar(255) DEFAULT NULL,
  `shpping_city` varchar(255) DEFAULT NULL,
  `shpping_email` varchar(255) DEFAULT NULL,
  `shpping_country_code` varchar(10) DEFAULT NULL,
  `shpping_number` varchar(255) DEFAULT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `gateway_type` varchar(50) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `currency_code_position` varchar(20) DEFAULT NULL,
  `currency_symbol` blob DEFAULT NULL,
  `currency_symbol_position` varchar(20) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `token_no` int(11) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `shipping_charge` decimal(11,2) DEFAULT NULL,
  `postal_code` text DEFAULT NULL,
  `postal_code_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 - post code based delivery enabled, 0 - post code based delivery disabled',
  `payment_status` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'pending',
  `txnid` varchar(255) DEFAULT NULL,
  `charge_id` varchar(255) DEFAULT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receipt` varchar(100) DEFAULT NULL,
  `order_notes` text DEFAULT NULL,
  `completed` varchar(20) NOT NULL DEFAULT 'no',
  `type` varchar(255) DEFAULT NULL,
  `serving_method` varchar(255) DEFAULT NULL,
  `pick_up_date` varchar(100) DEFAULT NULL,
  `pick_up_time` varchar(100) DEFAULT NULL,
  `waiter_name` varchar(255) DEFAULT NULL,
  `table_number` varchar(20) DEFAULT NULL,
  `tax` decimal(11,2) NOT NULL DEFAULT 0.00,
  `coupon` decimal(11,2) NOT NULL DEFAULT 0.00,
  `delivery_date` varchar(100) DEFAULT NULL,
  `delivery_time_start` varchar(100) DEFAULT NULL,
  `delivery_time_end` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_orders`
--

LOCK TABLES `product_orders` WRITE;
/*!40000 ALTER TABLE `product_orders` DISABLE KEYS */;
INSERT INTO `product_orders` VALUES (157,NULL,NULL,'mike',NULL,NULL,NULL,'michaelktd7@gmail.com','+1','123456789',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4.04,'Cash On Delivery','offline','USD','right','$','left','8193-1691011603',184,NULL,NULL,NULL,0,'Completed','ready_to_serve','txn_jyAa2h1F1691011603','ch_PffXjCKT61691011603','EOSL1691011603.pdf','2023-08-02 13:26:43','2023-08-02 13:28:31',NULL,NULL,'yes','qr','on_table',NULL,NULL,NULL,'12',0.04,0.00,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_reviews`
--

DROP TABLE IF EXISTS `product_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `review` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_reviews`
--

LOCK TABLES `product_reviews` WRITE;
/*!40000 ALTER TABLE `product_reviews` DISABLE KEYS */;
INSERT INTO `product_reviews` VALUES (9,2,15,5,'Great product & Excellent service !! 5 Starsssss!','2020-08-30 10:06:17','2020-08-30 10:06:17'),(10,2,17,4,'Good Quality but not satisfied with the delivery speed :(','2020-08-30 10:07:05','2020-08-30 10:07:05'),(11,2,19,3,'Good product but there are chances to improve their services.','2020-08-30 10:07:42','2020-08-30 10:07:42'),(12,2,20,5,'Really happy with my order, will order again & again !!!','2020-08-30 10:08:19','2020-08-30 10:08:19'),(13,2,18,1,'Very unhygenic, not happy with their delivery service too !!','2020-08-30 10:09:05','2020-08-30 10:09:05'),(14,2,16,5,'Very Tasty set menu, I am gonna refer this item to my friends too. Thanks a lot !!!!','2020-08-30 10:09:49','2020-08-30 10:09:49'),(15,2,37,5,'Never drunk any tasty cold drink like this one !! Keep it up guys!!!','2020-08-30 10:11:51','2020-08-30 10:11:51'),(16,2,34,4,'Very cold & fresh lemon Juice. But please maintain the level of salt . It was too saltyyy!!','2020-08-30 10:13:08','2020-08-30 10:13:08'),(17,2,31,1,'Worst donut ever !!!!! Cannot believe what I just ate.','2020-08-30 10:13:53','2020-08-30 10:13:53'),(18,2,38,5,'The mint flavor is awesome, great mixture of the mint & lemon !!!','2020-08-31 00:47:52','2020-08-31 00:47:52'),(19,2,35,5,'Never drank a orange juice like this ! Awesome guys !!! Keep it up.','2020-08-31 00:49:58','2020-08-31 00:49:58'),(20,2,32,2,'That is more like a biscuit than cookie. very bad !!!','2020-08-31 00:50:41','2020-08-31 00:50:41'),(21,2,30,4,'Good but there are place to improve the item more.','2020-08-31 00:53:21','2020-08-31 00:53:21'),(22,2,33,3,'The amount is ice is too much that it reduces the amount of coke !!!','2020-08-31 00:53:59','2020-08-31 00:53:59'),(23,2,36,5,'Very fresh, healthy, tasty & organic juice. I will order again !!!','2020-08-31 00:54:45','2020-08-31 00:54:45');
/*!40000 ALTER TABLE `product_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `feature_image` varchar(255) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `variations` text DEFAULT NULL,
  `addons` text DEFAULT NULL,
  `current_price` decimal(11,2) NOT NULL DEFAULT 0.00,
  `previous_price` decimal(11,2) DEFAULT 0.00,
  `rating` decimal(11,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_feature` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_special` tinyint(4) NOT NULL DEFAULT 0,
  `subcategory_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (15,176,'Set Menu - 1','Set-Menu---1',12,'1598683808.jpg','Consists of egg fried rice, chicken chili onion & 2 pcs of chicken fry.','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0.5}],\"Ratio\":[{\"name\":\"1:1\",\"price\":0},{\"name\":\"1:2\",\"price\":1},{\"name\":\"1:3\",\"price\":2}]}','[{\"name\":\"1pc Chicken\",\"price\":1},{\"name\":\"Vegetable\",\"price\":0.5},{\"name\":\"Egg\",\"price\":0.2}]',2.00,NULL,4.67,1,1,'2020-08-29 00:50:08','2023-05-08 10:01:53',0,22),(16,176,'Set Menu - 2','Set-Menu---2',12,'1598684755.jpg','Consists of egg fried rice, mixed vegetable & 2 pcs of chicken fry.','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','{\"Ratio\":[{\"name\":\"1:1\",\"price\":0},{\"name\":\"1:2\",\"price\":1},{\"name\":\"1:3\",\"price\":2}]}','[{\"name\":\"1 PC Chicken\",\"price\":1},{\"name\":\"Coke\",\"price\":0.5},{\"name\":\"French Fries\",\"price\":1}]',3.00,3.25,4.00,1,1,'2020-08-29 01:05:55','2022-05-29 07:16:13',1,23),(17,176,'Set Menu - 3','Set-Menu---3',12,'1598684875.jpg','Consists of egg fried rice, chicken chili onion & 2 pcs of chicken fry.','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',NULL,'[{\"name\":\"1pc Chicken\",\"price\":2},{\"name\":\"Vegetable\",\"price\":1},{\"name\":\"Egg\",\"price\":0}]',3.50,4.00,4.00,1,1,'2020-08-29 01:07:55','2020-12-15 01:16:53',1,22),(18,176,'Set Menu - 4','Set-Menu---4',12,'1598685027.jpg','Consists of egg fried rice, mixed vegetable & chicken masala.','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0.5}]}',NULL,4.00,NULL,3.00,1,1,'2020-08-29 01:10:27','2022-05-29 07:16:28',0,23),(19,176,'Set Menu - 5','Set-Menu---5',12,'1598685627.jpg','Consists of egg fried rice, mixed vegetable, chicken chili onion & 2 pcs of chicken fry.','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',NULL,NULL,4.75,NULL,4.00,1,1,'2020-08-29 01:20:27','2020-09-14 03:48:13',0,22),(20,176,'Set Menu - 6','Set-Menu---6',12,'1691858291.png','Consists of Shiro, Gomen Besiga, Eggs, Kitfo, Tibes, Selata, Key Sir','Content Discreption','{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0.5}],\"Ratio\":[{\"name\":\"1:1\",\"price\":0},{\"name\":\"1:2\",\"price\":1},{\"name\":\"1:3\",\"price\":2}]}','[{\"name\":\"1pc Shekla Tibes\",\"price\":2},{\"name\":\"Kitfo\",\"price\":1},{\"name\":\"1pc Doro Wot\",\"price\":0}]',5.00,NULL,5.00,1,1,'2020-08-29 01:21:34','2023-08-12 08:50:23',1,23),(21,176,'Regular Chicken Burger','Regular-Chicken-Burger',13,'1598686135.jpg','These chicken burgers are seasoned with bread crumbs, onion, chicken,crumbs, olive oil,garlic','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0}],\"Size\":[{\"name\":\"Regular\",\"price\":0},{\"name\":\"Large\",\"price\":1}]}','[{\"name\":\"Cheesee\",\"price\":0.3},{\"name\":\"BBQ Sauce\",\"price\":0.2},{\"name\":\"Patty\",\"price\":1},{\"name\":\"Sausage\",\"price\":0.4},{\"name\":\"Egg\",\"price\":0.2}]',3.00,NULL,0.00,1,1,'2020-08-29 01:28:55','2022-05-29 07:00:11',0,8),(22,176,'Regular Beef Burger','Regular-Beef-Burger',13,'1598686395.jpg','Ground beef, bread crumbs, black pepper,House special sauce.','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','{\"Size\":[{\"name\":\"Regular\",\"price\":0},{\"name\":\"Large\",\"price\":1}]}','[{\"name\":\"1pc Chicken\",\"price\":2},{\"name\":\"Vegetable\",\"price\":1},{\"name\":\"Egg\",\"price\":0}]',3.50,NULL,0.00,1,1,'2020-08-29 01:33:15','2022-05-29 07:02:36',0,9),(23,176,'Crispy Chicken Burger','Crispy-Chicken-Burger',13,'1598687093.jpg','Gouda cheese, chicken breasts, little gem, white cabbage. These fried chicken burgers are ultra crispy and absolutely bursting with flavor.','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0}]}',NULL,4.00,4.50,0.00,1,1,'2020-08-29 01:38:51','2022-05-29 07:02:51',1,8),(24,176,'Chicken Cheese Burger','Chicken-Cheese-Burger',13,'1598686797.jpg','Ranch dressing, chicken breasts, loose leaf, salsa sauce, cheese. Chicken Cheese Burgers taste the best','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',NULL,'[{\"name\":\"Cheesee\",\"price\":0.3},{\"name\":\"BBQ Sauce\",\"price\":0.2},{\"name\":\"Patty\",\"price\":1},{\"name\":\"Sausage\",\"price\":0.4},{\"name\":\"Egg\",\"price\":0.2}]',5.00,NULL,0.00,1,1,'2020-08-29 01:39:57','2022-05-29 07:03:04',0,8),(25,176,'Beef Cheese Burger','Beef-Cheese-Burger',13,'1598686962.jpg','Ground Beef, buns, split slices cheese, lettuce leaves. tomato slices.','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0}],\"Size\":[{\"name\":\"Regular\",\"price\":0},{\"name\":\"Large\",\"price\":1}]}','[{\"name\":\"1pc Chicken\",\"price\":2},{\"name\":\"Vegetable\",\"price\":1},{\"name\":\"Egg\",\"price\":0}]',5.50,6.00,0.00,1,1,'2020-08-29 01:42:42','2020-09-15 05:24:04',0,9),(26,176,'Grilled Chicken Burger','Grilled-Chicken-Burger',13,'1598687072.jpg','Ranch dressing, grilled chicken breasts, loose leaf, salsa sauce, cheese. Chicken Cheese Burgers taste the best','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0}],\"Size\":[{\"name\":\"Regular\",\"price\":0},{\"name\":\"Large\",\"price\":1}]}','[{\"name\":\"Cheesee\",\"price\":0.3},{\"name\":\"BBQ Sauce\",\"price\":0.2},{\"name\":\"Patty\",\"price\":1},{\"name\":\"Sausage\",\"price\":0.4},{\"name\":\"Egg\",\"price\":0.2}]',6.00,6.25,0.00,1,1,'2020-08-29 01:44:32','2020-09-14 05:29:36',0,8),(27,176,'Nutella Chocolates','Nutella-Chocolates',14,'1598687635.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',NULL,'[{\"name\":\"Bread\",\"price\":1}]',2.00,NULL,0.00,1,1,'2020-08-29 01:53:55','2022-03-16 11:16:02',0,3),(28,176,'Gulapjamun Sweets','Gulapjamun-Sweets',14,'1598687730.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','{\"Amount\":[{\"name\":\"400g\",\"price\":0},{\"name\":\"1kg\",\"price\":2}]}',NULL,3.00,NULL,0.00,1,1,'2020-08-29 01:55:30','2022-05-29 07:28:43',0,4),(29,176,'Almond Chocolate Cookies','Almond-Chocolate-Cookies',14,'1598687797.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',NULL,NULL,3.00,3.50,0.00,1,1,'2020-08-29 01:56:37','2020-09-15 03:25:54',1,3),(30,176,'Vanilla Ice Cream','Vanilla-Ice-Cream',14,'1598687936.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','{\"Amount\":[{\"name\":\"500 ML\",\"price\":0},{\"name\":\"1 L\",\"price\":2.5}]}',NULL,3.50,3.75,4.00,1,1,'2020-08-29 01:58:56','2022-05-29 07:30:04',1,6),(31,176,'Strawberry Creamed Donut','Strawberry-Creamed-Donut',14,'1598688010.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',NULL,NULL,2.50,NULL,1.50,1,1,'2020-08-29 02:00:10','2020-09-15 03:28:01',0,5),(32,176,'Regular Donut','Regular-Donut',14,'1598688096.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',NULL,NULL,1.50,2.00,1.50,1,1,'2020-08-29 02:01:36','2020-09-16 11:38:51',0,5),(33,176,'Iced CocaCola','Iced-CocaCola',15,'1598688347.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','{\"Size\":[{\"name\":\"600ML\",\"price\":0.6},{\"name\":\"1L\",\"price\":1}]}','[{\"name\":\"Ice\",\"price\":0},{\"name\":\"Sugar\",\"price\":0.5}]',1.00,NULL,3.50,1,1,'2020-08-29 02:05:47','2022-05-29 07:34:48',0,12),(34,176,'Lemon Juice','Lemon-Juice',15,'1598688432.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','{\"Size\":[{\"name\":\"Small\",\"price\":0},{\"name\":\"Regular\",\"price\":1},{\"name\":\"Large\",\"price\":1.5}]}','[{\"name\":\"Ice\",\"price\":0},{\"name\":\"Sugar\",\"price\":0.5}]',2.00,3.00,3.00,1,1,'2020-08-29 02:07:12','2020-09-28 02:29:48',1,10),(35,176,'Orange Juice','Orange-Juice',15,'1598688532.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',NULL,'[{\"name\":\"Ice\",\"price\":0},{\"name\":\"Sugar\",\"price\":0.5}]',2.25,2.50,5.00,1,1,'2020-08-29 02:08:52','2020-09-14 03:44:56',0,10),(36,176,'Organic Fruit Juice','Organic-Fruit-Juice',15,'1598688600.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','{\"Size\":[{\"name\":\"Small\",\"price\":0},{\"name\":\"Regular\",\"price\":1},{\"name\":\"Large\",\"price\":1.5}]}','[{\"name\":\"Ice\",\"price\":0},{\"name\":\"Sugar\",\"price\":0.5}]',3.00,NULL,5.00,1,1,'2020-08-29 02:10:00','2020-09-18 01:20:24',0,10),(37,176,'Milk Shakes','Milk-Shakes',15,'1598688750.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',NULL,NULL,4.00,4.50,4.50,1,1,'2020-08-29 02:12:30','2021-05-20 07:44:45',1,11),(39,177,'ضبط القائمة - 1','ضبط-القائمة---1',16,'1598712240.jpg','يتكون من أرز مقلي بالبيض ، دجاج مقلي ، بصل و 2 قطعة دجاج مقلي.','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.','{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0.5}],\"Ratio\":[{\"name\":\"1:1\",\"price\":0},{\"name\":\"1:2\",\"price\":1},{\"name\":\"1:3\",\"price\":2}]}','[{\"name\":\"1 \\u0642\\u0637\\u0639\\u0629 \\u062f\\u062c\\u0627\\u062c\",\"price\":1},{\"name\":\"\\u0627\\u0644\\u062e\\u0636\\u0631\\u0648\\u0627\\u062a\",\"price\":0.5},{\"name\":\"\\u0628\\u064a\\u0636\\u0629\",\"price\":0.2}]',2.00,NULL,0.00,1,1,'2020-08-29 08:44:00','2020-09-28 03:30:56',0,24),(40,177,'ضبط القائمة - 2','ضبط-القائمة---2',16,'1598712334.jpg','يتكون من أرز مقلي بالبيض وخضروات مشكلة و 2 قطعة دجاج مقلي.','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ','{\"Ratio\":[{\"name\":\"1:1\",\"price\":0},{\"name\":\"1:2\",\"price\":1},{\"name\":\"1:3\",\"price\":2}]}','[{\"name\":\"1 \\u0642\\u0637\\u0639\\u0629 \\u062f\\u062c\\u0627\\u062c\",\"price\":1},{\"name\":\"\\u0627\\u0644\\u062e\\u0636\\u0631\\u0648\\u0627\\u062a\",\"price\":0.5},{\"name\":\"\\u0628\\u064a\\u0636\\u0629\",\"price\":0.2}]',3.00,3.25,0.00,1,1,'2020-08-29 08:45:34','2020-08-29 22:37:00',1,25),(41,177,'ضبط القائمة - 3','ضبط-القائمة---3',16,'1598712404.jpg','يتكون من أرز مقلي بالبيض ، دجاج مقلي ، بصل و 2 قطعة دجاج مقلي.','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',NULL,NULL,3.50,4.00,0.00,1,1,'2020-08-29 08:46:44','2020-08-30 03:56:52',1,24),(42,177,'تعيين القائمة - 4','تعيين-القائمة---4',16,'1598712465.jpg','يتكون من أرز مقلي بالبيض وخضروات مشكلة ودجاج ماسالا.','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ','{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0.5}]}','[{\"name\":\"1 \\u0642\\u0637\\u0639\\u0629 \\u062f\\u062c\\u0627\\u062c\",\"price\":1},{\"name\":\"\\u0627\\u0644\\u062e\\u0636\\u0631\\u0648\\u0627\\u062a\",\"price\":0.5},{\"name\":\"\\u0628\\u064a\\u0636\\u0629\",\"price\":0.2}]',4.00,NULL,0.00,1,1,'2020-08-29 08:47:45','2020-08-29 22:36:43',0,25),(43,177,'تعيين القائمة - 5','تعيين-القائمة---5',16,'1598712526.jpg','يتكون من أرز مقلي بالبيض ، خضار مشكلة ، دجاج حار ، بصل و 2 قطعة دجاج مقلي.','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',NULL,NULL,4.75,NULL,0.00,1,1,'2020-08-29 08:48:46','2020-08-29 22:37:30',0,24),(44,177,'تعيين القائمة - 6','تعيين-القائمة---6',16,'1598712590.jpg','يتكون من أرز مقلي بالبيض ، خضار مشكلة ، دجاج بصل حار ، كوكاكولا و 2 قطعة دجاج مقلي.','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ','{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0.5}],\"Ratio\":[{\"name\":\"1:1\",\"price\":0},{\"name\":\"1:2\",\"price\":1},{\"name\":\"1:3\",\"price\":2}]}',NULL,5.00,NULL,0.00,1,1,'2020-08-29 08:49:50','2020-08-29 22:37:29',0,25),(45,177,'برجر دجاج عادي','برجر-دجاج-عادي',17,'1598713312.jpg','هذا البرجر الدجاج متبل بفتات الخبز والبصل والدجاج والفتات وزيت الزيتون والثوم','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ','{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0}],\"Size\":[{\"name\":\"Regular\",\"price\":0},{\"name\":\"Large\",\"price\":1}]}','[{\"name\":\"\\u062c\\u0628\\u0646\",\"price\":0.3},{\"name\":\"\\u0635\\u0644\\u0635\\u0629 \\u0634\\u0648\\u0627\\u0621\",\"price\":0.2},{\"name\":\"\\u0641\\u0637\\u064a\\u0631\\u0629\",\"price\":1},{\"name\":\"\\u0633\\u062c\\u0642\",\"price\":0.4},{\"name\":\"\\u0628\\u064a\\u0636\\u0629\",\"price\":0.2}]',3.00,NULL,0.00,1,1,'2020-08-29 09:01:52','2020-08-29 22:37:27',0,17),(46,177,'برجر لحم عادي','برجر-لحم-عادي',17,'1598713396.jpg','لحم مفروم ، بقسماط ، فلفل أسود ، صلصة هاوس الخاصة.','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.','{\"Size\":[{\"name\":\"Regular\",\"price\":0},{\"name\":\"Large\",\"price\":1}]}','[{\"name\":\"\\u062c\\u0628\\u0646\",\"price\":0.3},{\"name\":\"\\u0635\\u0644\\u0635\\u0629 \\u0634\\u0648\\u0627\\u0621\",\"price\":0.2},{\"name\":\"\\u0641\\u0637\\u064a\\u0631\\u0629\",\"price\":1},{\"name\":\"\\u0633\\u062c\\u0642\",\"price\":0.4},{\"name\":\"\\u0628\\u064a\\u0636\\u0629\",\"price\":0.2}]',3.50,NULL,0.00,1,1,'2020-08-29 09:03:16','2020-09-28 03:35:02',0,18),(47,177,'برجر دجاج مقرمش','برجر-دجاج-مقرمش',17,'1598714296.jpg','جبنة جودة ، صدور دجاج ، جوهرة صغيرة ، ملفوف أبيض. برجر الدجاج المقلي مقرمش للغاية ومليء بالنكهة.','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ','{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0}]}',NULL,4.00,4.50,0.00,1,1,'2020-08-29 09:18:16','2020-08-29 22:38:20',1,17),(48,177,'برجر دجاج بالجبنة','برجر-دجاج-بالجبنة',17,'1598714456.jpg','صلصة رانش ، صدور دجاج ، أوراق سائبة ، صلصة صلصة ، جبن. الدجاج والجبن الذوق هو الأفضل','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',NULL,'[{\"name\":\"\\u062c\\u0628\\u0646\",\"price\":0.3},{\"name\":\"\\u0635\\u0644\\u0635\\u0629 \\u0634\\u0648\\u0627\\u0621\",\"price\":0.2},{\"name\":\"\\u0641\\u0637\\u064a\\u0631\\u0629\",\"price\":1},{\"name\":\"\\u0633\\u062c\\u0642\",\"price\":0.4},{\"name\":\"\\u0628\\u064a\\u0636\\u0629\",\"price\":0.2}]',5.00,NULL,0.00,1,1,'2020-08-29 09:20:56','2020-08-29 22:37:21',0,17),(49,177,'برجر لحم بالجبنة','برجر-لحم-بالجبنة',17,'1598714525.jpg','لحم مفروم ، خبز ، شرائح جبن ، أوراق خس. شرائح الطماطم.','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ','{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0}],\"Size\":[{\"name\":\"Regular\",\"price\":0},{\"name\":\"Large\",\"price\":1}]}',NULL,5.50,6.00,0.00,1,1,'2020-08-29 09:22:05','2020-08-29 22:37:19',0,18),(50,177,'برجر دجاج مشوي','برجر-دجاج-مشوي',17,'1598714584.jpg','صلصة رانش ، صدور دجاج مشوية ، أوراق سائبة ، صلصة صلصة ، جبن. الدجاج والجبن الذوق هو الأفضل','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ','{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0}],\"Size\":[{\"name\":\"Regular\",\"price\":0},{\"name\":\"Large\",\"price\":1}]}','[{\"name\":\"\\u062c\\u0628\\u0646\",\"price\":0.3},{\"name\":\"\\u0635\\u0644\\u0635\\u0629 \\u0634\\u0648\\u0627\\u0621\",\"price\":0.2},{\"name\":\"\\u0641\\u0637\\u064a\\u0631\\u0629\",\"price\":1},{\"name\":\"\\u0633\\u062c\\u0642\",\"price\":0.4},{\"name\":\"\\u0628\\u064a\\u0636\\u0629\",\"price\":0.2}]',6.00,6.25,0.00,1,1,'2020-08-29 09:23:04','2020-08-29 22:37:18',0,17),(51,177,'شوكولاتة نوتيلا','شوكولاتة-نوتيلا',18,'1598761013.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',NULL,NULL,2.00,NULL,0.00,1,1,'2020-08-29 22:16:53','2020-08-29 22:37:16',0,13),(52,177,'حلويات جولابجامون','حلويات-جولابجامون',18,'1598761088.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ','{\"Amount\":[{\"name\":\"400g\",\"price\":0},{\"name\":\"1kg\",\"price\":2}]}',NULL,3.00,NULL,0.00,1,1,'2020-08-29 22:18:08','2020-08-29 22:37:15',0,14),(53,177,'كوكيز شوكولاتة اللوز','كوكيز-شوكولاتة-اللوز',18,'1598761155.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',NULL,NULL,3.00,3.50,0.00,1,1,'2020-08-29 22:19:15','2020-08-29 22:38:07',1,13),(54,177,'مثلجات الفانيليا','مثلجات-الفانيليا',18,'1598761462.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.','{\"Amount\":[{\"name\":\"500 ML\",\"price\":0},{\"name\":\"1 L\",\"price\":2.5}]}',NULL,3.50,3.75,0.00,1,1,'2020-08-29 22:24:22','2020-08-30 03:34:35',1,16),(55,177,'دونات كريمة الفراولة','دونات-كريمة-الفراولة',18,'1598761527.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',NULL,NULL,2.50,NULL,0.00,1,1,'2020-08-29 22:25:27','2020-08-29 22:37:45',0,15),(56,177,'دونات عادي','دونات-عادي',18,'1598761579.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',NULL,NULL,1.50,2.00,0.00,1,1,'2020-08-29 22:26:19','2020-08-29 22:37:43',0,15),(57,177,'مثلج كوكاكولا','مثلج-كوكاكولا',19,'1598761672.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ','{\"Size\":[{\"name\":\"600ML\",\"price\":0.6},{\"name\":\"1L\",\"price\":1}]}','[{\"name\":\"\\u062c\\u0644\\u064a\\u062f\",\"price\":0},{\"name\":\"\\u0627\\u0644\\u0633\\u0643\\u0631\",\"price\":0.5}]',1.00,NULL,0.00,1,1,'2020-08-29 22:27:52','2020-08-29 22:37:42',0,21),(58,177,'عصير ليمون','عصير-ليمون',19,'1598761890.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ','{\"Size\":[{\"name\":\"Small\",\"price\":0},{\"name\":\"Regular\",\"price\":1},{\"name\":\"Large\",\"price\":1.5}]}','[{\"name\":\"\\u062c\\u0644\\u064a\\u062f\",\"price\":0},{\"name\":\"\\u0627\\u0644\\u0633\\u0643\\u0631\",\"price\":0.5}]',2.00,3.00,0.00,1,1,'2020-08-29 22:28:43','2020-08-30 03:34:44',1,19),(59,177,'عصير البرتقال','عصير-البرتقال',19,'1598761975.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',NULL,'[{\"name\":\"\\u062c\\u0644\\u064a\\u062f\",\"price\":0},{\"name\":\"\\u0627\\u0644\\u0633\\u0643\\u0631\",\"price\":0.5}]',2.25,2.50,0.00,1,1,'2020-08-29 22:32:55','2020-08-29 22:37:39',0,19),(60,177,'عصير فواكه عضوي','عصير-فواكه-عضوي',19,'1598762025.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ','{\"Size\":[{\"name\":\"Small\",\"price\":0},{\"name\":\"Regular\",\"price\":1},{\"name\":\"Large\",\"price\":1.5}]}','[{\"name\":\"\\u062c\\u0644\\u064a\\u062f\",\"price\":0},{\"name\":\"\\u0627\\u0644\\u0633\\u0643\\u0631\",\"price\":0.5}]',3.00,NULL,0.00,1,1,'2020-08-29 22:33:45','2020-08-29 22:37:38',0,19),(61,177,'ميلك شيك','ميلك-شيك',19,'1598762118.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ',NULL,'[{\"name\":\"\\u062c\\u0644\\u064a\\u062f\",\"price\":0},{\"name\":\"\\u0627\\u0644\\u0633\\u0643\\u0631\",\"price\":0.5}]',4.00,4.50,5.00,1,1,'2020-08-29 22:35:18','2023-05-13 05:59:33',1,20),(62,177,'ليمونادة بالنعناع','ليمونادة-بالنعناع',19,'1598762182.jpg','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.','{\"Size\":[{\"name\":\"Small\",\"price\":0},{\"name\":\"Regular\",\"price\":1},{\"name\":\"Large\",\"price\":1.5}]}','[{\"name\":\"\\u062c\\u0644\\u064a\\u062f\",\"price\":0},{\"name\":\"\\u0627\\u0644\\u0633\\u0643\\u0631\",\"price\":0.5}]',2.00,NULL,0.00,1,1,'2020-08-29 22:36:22','2020-09-28 03:43:58',0,19),(68,177,'444455','444455',18,'1683008331.png','10','<p>10</p>','[]','[{\"name\":\"20\",\"price\":0}]',10.00,10.00,0.00,0,0,'2023-05-02 06:18:51','2023-05-02 06:18:51',0,14);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psub_categories`
--

DROP TABLE IF EXISTS `psub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psub_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_feature` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psub_categories`
--

LOCK TABLES `psub_categories` WRITE;
/*!40000 ALTER TABLE `psub_categories` DISABLE KEYS */;
INSERT INTO `psub_categories` VALUES (3,176,14,'Chocolates',NULL,1,1,'2022-05-29 03:39:05','2022-05-29 05:09:50'),(4,176,14,'Sweets',NULL,1,1,'2022-05-29 03:39:15','2022-05-29 05:09:52'),(5,176,14,'Donuts',NULL,1,1,'2022-05-29 03:39:26','2022-05-29 05:09:54'),(6,176,14,'Ice Creams',NULL,1,1,'2022-05-29 03:39:57','2022-05-29 05:09:57'),(8,176,13,'Chicken Burger',NULL,1,1,'2022-05-29 03:41:08','2022-05-29 05:09:58'),(9,176,13,'Beef Burger',NULL,1,1,'2022-05-29 03:41:22','2022-05-29 05:10:00'),(10,176,15,'Juice',NULL,1,1,'2022-05-29 03:42:30','2022-05-29 05:10:02'),(11,176,15,'Shakes',NULL,1,1,'2022-05-29 03:42:41','2022-05-29 05:10:04'),(12,176,15,'Soft Drinks',NULL,1,1,'2022-05-29 03:42:56','2022-05-29 05:10:06'),(13,177,18,'الشوكولاتة',NULL,1,1,'2022-05-29 03:39:05','2022-05-29 05:10:11'),(14,177,18,'حلويات',NULL,1,1,'2022-05-29 03:39:15','2022-05-29 05:10:13'),(15,177,18,'دونات',NULL,1,1,'2022-05-29 03:39:26','2022-05-29 05:10:15'),(16,177,18,'مثلجات',NULL,1,1,'2022-05-29 03:39:57','2022-05-29 05:10:17'),(17,177,17,'برغر الدجاج',NULL,1,1,'2022-05-29 03:41:08','2022-05-29 05:10:19'),(18,177,17,'برجر لحم',NULL,1,1,'2022-05-29 03:41:22','2022-05-29 05:10:21'),(19,177,19,'عصير',NULL,1,1,'2022-05-29 03:42:30','2022-05-29 05:10:23'),(20,177,19,'يهز',NULL,1,1,'2022-05-29 03:42:41','2022-05-29 05:10:25'),(21,177,19,'المشروبات الغازية',NULL,1,1,'2022-05-29 03:42:56','2022-05-29 05:10:29'),(22,176,12,'Family','Family',1,1,'2022-05-29 05:13:55','2022-05-29 05:17:44'),(23,176,12,'Individual','Individual',1,1,'2022-05-29 05:14:06','2022-05-29 05:18:00'),(24,177,16,'عائلة','عائلة',1,1,'2022-05-29 05:13:55','2022-05-29 05:17:44'),(25,177,16,'الفرد','الفرد',1,1,'2022-05-29 05:14:06','2022-05-29 05:18:00'),(26,177,16,'sssss',NULL,1,0,'2023-05-02 05:50:52','2023-05-02 05:50:52'),(27,176,15,'Alcohol','Alcohol',1,1,'2023-05-02 05:51:19','2023-08-12 08:27:38'),(28,177,16,'test1 AR',NULL,1,1,'2023-05-02 05:51:55','2023-05-02 05:52:06'),(29,178,20,'demo subcategory',NULL,1,0,'2023-05-02 06:07:27','2023-05-02 06:07:27'),(30,176,13,'Pizza',NULL,1,1,'2023-08-12 08:47:18','2023-08-12 08:48:53');
/*!40000 ALTER TABLE `psub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_subscriptions`
--

DROP TABLE IF EXISTS `push_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `push_subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subscribable_id` int(11) DEFAULT NULL,
  `subscribable_type` varchar(255) DEFAULT NULL,
  `endpoint` varchar(500) NOT NULL,
  `public_key` varchar(255) DEFAULT NULL,
  `auth_token` varchar(255) DEFAULT NULL,
  `content_encoding` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `push_subscriptions_endpoint_unique` (`endpoint`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_subscriptions`
--

LOCK TABLES `push_subscriptions` WRITE;
/*!40000 ALTER TABLE `push_subscriptions` DISABLE KEYS */;
INSERT INTO `push_subscriptions` VALUES (5,6,'App\\Models\\Guest','https://updates.push.services.mozilla.com/wpush/v2/gAAAAABgXhAyYoUVkJ8ymIaucMN78o9LdNIJ2ZhWATCMTUa79O7Q_6IWuwZlWOkNi33elgKb73GjntPc0ErLR7FF9b0UU0BNiDpJdsEv0uqcGKdNWkiYlAdlmNPaR0rKI8VivAkeCPzjYhykXGdYpXVpR3TxceTSpWBzxivvTpCTLQlUq72QNO8','BP6E_WEMY_Gq-nWKfidLIo4fI4kDlWB3XgnAPevTYRa8niS4TB0_OknMpwML1r_i-dWxE69eDU6e_TnUgufsd5E','yzcj6vcUg0WgFcQH6kC7kA',NULL,'2021-03-26 11:47:44','2021-03-26 11:47:44'),(27,28,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/c6z1jcd4ug8:APA91bHU62xxRJMvKKsE2hAVbIP5aHsYN5kNXcyMJ1MJ7LU16BG1IJiHmangsq9yWPlFoIpPhKB_uIzldr7lr4jh01AqC5NS4tZVHYBZn_zrkZuWh1uOWPxtQQGudUwEc5XGFv_M1THK','BP8wsKuMUhGdPmNWoyMJVFcEEISFpqpb6q4GWjh_nXdqVrLhLMyjCYehZOa4zYwTPakUoFR9peaS2jt10fxQUHk','_-t7eG5DZKzXwEcwoaA2xQ',NULL,'2023-04-10 07:46:43','2023-04-10 07:46:43'),(29,30,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/daS7OD0xrI0:APA91bHGugjoAi2W-_67lIm8JmwBpcvTQQS8_thJOZjCGdnQNSao_CeonoDdQcfFZMOIP3RrnPEe3dbyf6MRwSIDt1-nV3Y7Gu16eMQT2KwwN0XZFtd1-OpoQqLRxpaZ4jdpI6TRoSV-','BD0OhmX_ZxK17a8vsfVMdIGFn8Uz3UPmWVGwncCDzt0Gwib9YY23wwnMSqSm-I6Yr-DxhA-0w-OOhfmMaWcWCok','nrzSOicTho9-ZBOna2WOlQ',NULL,'2023-08-02 10:53:35','2023-08-02 10:53:35');
/*!40000 ALTER TABLE `push_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_input_options`
--

DROP TABLE IF EXISTS `reservation_input_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation_input_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reservation_input_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_input_options`
--

LOCK TABLES `reservation_input_options` WRITE;
/*!40000 ALTER TABLE `reservation_input_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation_input_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_inputs`
--

DROP TABLE IF EXISTS `reservation_inputs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation_inputs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(4) DEFAULT NULL COMMENT '1-text, 2-select, 3-checkbox, 4-textarea, 5-datepicker, 6-timepicker',
  `label` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 - required, 0 - optional',
  `order_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_inputs`
--

LOCK TABLES `reservation_inputs` WRITE;
/*!40000 ALTER TABLE `reservation_inputs` DISABLE KEYS */;
INSERT INTO `reservation_inputs` VALUES (17,177,1,'هاتف','هاتف','أدخل رقم الهاتف',1,1,'2020-09-13 04:12:46','2020-09-13 04:12:46'),(23,177,6,'زمن','زمن','أدخل تاريخ الوصول',1,2,'2020-09-13 04:36:59','2020-09-13 04:36:59'),(24,177,5,'تاريخ','تاريخ','أدخل تاريخ الوصول',1,3,'2020-09-13 08:28:11','2020-09-13 08:28:11'),(25,177,7,'شخص','شخص','أدخل عدد الأشخاص',1,4,'2020-09-13 08:28:43','2020-09-13 08:28:43'),(30,176,1,'Phone','Phone','Enter Phone Number',1,2,'2021-05-17 05:34:42','2023-04-01 08:24:17'),(31,176,1,'Number of Persons','Number_of_Persons','Enter Number of Persons',1,1,'2021-05-17 05:34:53','2023-04-01 08:24:17'),(36,176,5,'Check-in Date','Check-in_Date','Enter Check-in Date',1,3,'2021-05-17 05:58:05','2021-05-17 05:58:05'),(37,176,6,'Check-in Time','Check-in_Time','Enter Check-in Time',1,4,'2021-05-17 05:58:16','2021-05-17 05:58:16');
/*!40000 ALTER TABLE `reservation_inputs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (7,'Delivery Manager','[\"Dashboard\",\"Order Management\"]','2020-09-24 00:13:52','2021-05-21 05:28:11'),(8,'Kitchen Manager','[\"Dashboard\",\"Table Reservation\",\"Product Management\",\"Order Management\"]','2020-09-28 11:23:56','2020-12-31 05:45:18'),(9,'Shop Manager','[\"Dashboard\",\"POS\"]','2023-03-04 03:48:36','2023-03-04 03:56:21'),(10,'SuperAdmin','[\"Dashboard\",\"POS\",\"Order Management\",\"Customers\",\"Product Management\",\"QR Code Builder\",\"Payment Gateways\",\"Reservation Settings\",\"Table Reservation\",\"Table Reservation\",\"Menu Builder\",\"Website Pages\",\"Announcement Popup\",\"Push Notification\",\"Subscribers\",\"Basic Settings\",\"Language Management\",\"Admins Management\",\"Sitemap\",\"Backup\"]','2023-08-02 09:05:58','2023-08-02 09:06:33'),(11,'Restaurant Admin','[\"Dashboard\",\"Customers\",\"Product Management\",\"QR Code Builder\",\"Table Reservation\",\"Table Reservation\",\"Website Pages\",\"Announcement Popup\",\"Subscribers\"]','2023-08-02 10:14:54','2023-08-02 10:15:32');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serving_methods`
--

DROP TABLE IF EXISTS `serving_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serving_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `gateways` text DEFAULT NULL,
  `serial_number` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `website_menu` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - deactive on website menu, 1 - active on website menu',
  `qr_menu` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - deactive on qr menu, 1 - active on qr menu',
  `qr_payment` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - deactive, 1 - active',
  `pos` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - active for POS, 0 - deactive for POS',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serving_methods`
--

LOCK TABLES `serving_methods` WRITE;
/*!40000 ALTER TABLE `serving_methods` DISABLE KEYS */;
INSERT INTO `serving_methods` VALUES (1,'On Table','on_table','[\"1\",\"2\",\"3\"]',1,'Choose this method, if you are in restaurant',1,1,1,1),(2,'Pick Up','pick_up','[\"1\",\"2\",\"3\"]',2,'Choose this, if you want to pick up the food from Restaurant',0,0,1,0),(3,'Home Delivery','home_delivery','[\"1\",\"2\",\"3\"]',3,'Choose this, if you want the order to be served at your doorstep.',0,0,1,0);
/*!40000 ALTER TABLE `serving_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_charges`
--

DROP TABLE IF EXISTS `shipping_charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_charges` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `charge` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `free_delivery_amount` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_charges`
--

LOCK TABLES `shipping_charges` WRITE;
/*!40000 ALTER TABLE `shipping_charges` DISABLE KEYS */;
INSERT INTO `shipping_charges` VALUES (7,'Within 2 days',176,'Come & take a seat in Superv Restaurant',1.00,'2020-08-30 07:51:46','2022-03-17 14:13:10',45.00),(8,'Within 4 days',176,'Come & grab your orders from Superv Restaurant',2.00,'2020-08-30 07:52:30','2020-12-13 07:16:23',NULL),(9,'Urgent Delivery',176,'Order & your order will be arrived to your doorstep',5.00,'2020-08-30 07:53:51','2020-12-13 07:15:53',NULL),(10,'تناول الطعام في',177,'تعال واجلس في مطعم SUPERV',0.00,'2020-08-30 07:57:04','2020-08-30 07:57:04',NULL),(11,'يبعد',177,'تعال واحصل على طلباتك من مطعم Superv Restaurant',0.00,'2020-08-30 07:57:28','2020-08-30 07:57:28',NULL),(12,'توصيل منزلي',177,'اطلب و سيصلك طلبك إلى عتبة داركم',1.00,'2020-08-30 07:57:52','2020-08-30 07:57:52',NULL),(13,'Inside Dhaka',176,'custom',1.25,'2022-03-17 13:47:40','2022-03-17 14:07:46',40.00);
/*!40000 ALTER TABLE `shipping_charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitemaps`
--

DROP TABLE IF EXISTS `sitemaps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitemaps` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sitemap_url` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitemaps`
--

LOCK TABLES `sitemaps` WRITE;
/*!40000 ALTER TABLE `sitemaps` DISABLE KEYS */;
INSERT INTO `sitemaps` VALUES (2,'http://localhost/superv/without_license/superv-1.2/','sitemap5f5e377957033.xml','2020-09-13 09:15:26','2020-09-13 09:15:26');
/*!40000 ALTER TABLE `sitemaps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sliders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_url` varchar(255) DEFAULT NULL,
  `button_text1` varchar(191) DEFAULT NULL,
  `button_url1` varchar(191) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `bg_image` varchar(191) DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_color` varchar(255) DEFAULT NULL,
  `text_color` varchar(255) DEFAULT NULL,
  `button_color` varchar(255) DEFAULT NULL,
  `title_font_size` int(11) NOT NULL DEFAULT 60,
  `text_font_size` int(11) NOT NULL DEFAULT 18,
  `button_text_font_size` int(11) NOT NULL DEFAULT 14,
  `button_text1_font_size` int(11) NOT NULL DEFAULT 14,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (24,176,'Nunc molestie mi nunc, nec accumsan libero dignissim sit amet. Fusce sit amet tincidunt metus. Nunc eu risus sus-cipit massa dapibu.','Mexican Grilled Chicken Sub Sandwich...','Add to Cart','https://gizmoder.com/demo/html/omnivus/omnivus/index.html','Book a Table','https://gizmoder.com/demo/html/omnivus/omnivus/index.html','1598069700.png','1609328203.jpg',3,'2020-08-17 03:49:17','2020-12-30 11:36:43','FFFFFF','FFFFFF','FFFFFF',60,18,14,14),(26,177,'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف','برجر كنج برجر دجاج مشوي ...','أضف إلى السلة','https://megasoft.biz/plusagency/about-us/page','احجز طاولة','https://megasoft.biz/plusagency/about-us/page','1597915383.png','1609328255.jpg',2,'2020-08-20 03:23:03','2020-12-30 11:37:35','FFFFFF','FFFFFF','FFFFFF',60,18,14,14),(27,177,'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف','صب ساندوتش دجاج مشوي مكسيكي ...','أضف إلى السلة','https://megasoft.biz/plusagency/about-us/page','احجز طاولة','https://megasoft.biz/plusagency/about-us/page','1598709117.png','1609328243.jpg',3,'2020-08-20 03:23:03','2020-12-30 11:37:23','FFFFFF','FFFFFF','FFFFFF',60,18,14,14),(28,176,'Nunc molestie mi nunc, nec accumsan libero dignissim sit amet. Fusce sit amet tincidunt metus. Nunc eu risus sus-cipit massa dapibu.','Burger King Grilled Chicken Burger...','Add to Cart','https://megasoft.biz/plusagency/about-us/page','Book a Table','https://megasoft.biz/plusagency/about-us/page','1598069651.png','1609328189.jpg',2,'2020-08-20 23:41:41','2020-12-30 11:36:29','FFFFFF','FFFFFF','FFFFFF',60,18,14,14),(29,176,'Nunc molestie mi nunc, nec accumsan libero dignissim sit amet. Fusce sit amet tincidunt metus. Nunc eu risus sus-cipit massa dapibu.','Mexican Chicken Cheese Toaster Pizza','Add to Cart','https://megasoft.biz/plusagency/about-us/page','Book a Table','https://megasoft.biz/plusagency/about-us/page','1598680778.png','1609328176.jpg',1,'2020-08-20 23:41:41','2020-12-30 11:36:16','FFFFFF','FFFFFF','FFFFFF',60,18,14,14),(30,177,'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف','بيتزا محمصة دجاج مكسيكي بالجبن','أضف إلى السلة','https://megasoft.biz/plusagency/about-us/page','احجز طاولة','https://megasoft.biz/plusagency/about-us/page','1598708979.png','1609328232.jpg',1,'2020-08-29 07:43:18','2020-12-30 11:37:12','FFFFFF','FFFFFF','FFFFFF',60,18,14,14);
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socials`
--

DROP TABLE IF EXISTS `socials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `icon` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socials`
--

LOCK TABLES `socials` WRITE;
/*!40000 ALTER TABLE `socials` DISABLE KEYS */;
INSERT INTO `socials` VALUES (1,'fab fa-facebook-f','https://www.facebook.com/',1),(2,'fab fa-twitter','https://twitter.com/',2),(3,'fab fa-linkedin-in','https://bd.linkedin.com/',3),(4,'fab fa-instagram','https://www.instagram.com/',4),(5,'fab fa-dribbble','https://dribbble.com/',5);
/*!40000 ALTER TABLE `socials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
INSERT INTO `subscribers` VALUES (37,'michaelktd7@gmail.com',NULL,NULL);
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_books`
--

DROP TABLE IF EXISTS `table_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_books` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fields` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_books`
--

LOCK TABLES `table_books` WRITE;
/*!40000 ALTER TABLE `table_books` DISABLE KEYS */;
INSERT INTO `table_books` VALUES (32,'MICHAEL KIFLE TEFERRA','michaelktd7@gmail.com','{\"Phone\":\"+251913391985\",\"Number_of_Persons\":\"1\",\"Check-in_Date\":\"08/04/2023\",\"Check-in_Time\":\"12:30 PM\"}',2,'2023-08-02 13:31:26','2023-08-02 13:33:17');
/*!40000 ALTER TABLE `table_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables`
--

DROP TABLE IF EXISTS `tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tables` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `table_no` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - active, 2 - deactive',
  `qr_image` varchar(100) DEFAULT NULL,
  `color` varchar(50) NOT NULL DEFAULT '000000',
  `size` int(11) NOT NULL DEFAULT 250,
  `style` varchar(50) NOT NULL DEFAULT 'square',
  `eye_style` varchar(50) NOT NULL DEFAULT 'square',
  `margin` int(11) NOT NULL DEFAULT 0,
  `text` varchar(255) DEFAULT NULL,
  `text_color` varchar(50) DEFAULT '000000',
  `text_size` int(11) DEFAULT 15,
  `text_x` int(11) NOT NULL DEFAULT 50,
  `text_y` int(11) NOT NULL DEFAULT 50,
  `image` varchar(50) DEFAULT NULL,
  `image_size` int(11) NOT NULL DEFAULT 20,
  `image_x` int(11) NOT NULL DEFAULT 50,
  `image_y` int(11) NOT NULL DEFAULT 50,
  `type` varchar(50) NOT NULL DEFAULT 'default' COMMENT 'default, image, text',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables`
--

LOCK TABLES `tables` WRITE;
/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
INSERT INTO `tables` VALUES (7,1,1,'64ca86aba1d8d.png','520606',274,'square','circle',3,NULL,NULL,NULL,50,50,'60a926ea0a451.png',20,50,50,'text'),(8,2,1,'60a92703adfed.png','000000',250,'square','square',0,NULL,'000000',15,50,50,NULL,20,50,50,'text'),(10,3,1,'60a9262e62d6b.png','000000',250,'square','square',0,NULL,'000000',15,50,50,NULL,20,50,50,'default'),(11,4,1,'60a9263865d0b.png','000000',250,'square','square',0,NULL,'000000',15,50,50,NULL,20,50,50,'default'),(12,5,1,'60a9263ea193e.png','000000',250,'square','square',0,NULL,'000000',15,50,50,NULL,20,50,50,'default'),(13,6,1,'60a9264514cdb.png','000000',250,'square','square',0,NULL,'000000',15,50,50,NULL,20,50,50,'default'),(14,7,1,'60a9264bc926e.png','000000',250,'square','square',0,NULL,'000000',15,50,50,NULL,20,50,50,'default'),(15,8,1,'60a92651a1323.png','000000',250,'square','square',0,NULL,'000000',15,50,50,NULL,20,50,50,'default'),(16,9,1,'60a92658b0ffd.png','000000',250,'square','square',0,NULL,'000000',15,50,50,NULL,20,50,50,'default'),(17,10,1,'60a9265ec7cd9.png','000000',250,'square','square',0,NULL,'000000',15,50,50,NULL,20,50,50,'default'),(18,11,1,'60a9266999054.png','000000',250,'square','square',0,NULL,'000000',15,50,50,NULL,20,50,50,'default'),(19,12,1,'60a92674c0125.png','000000',250,'square','square',0,NULL,'000000',15,50,50,NULL,20,50,50,'default');
/*!40000 ALTER TABLE `tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (24,176,'1597736067.png','Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet','Emma Watson','CEO, PlusAgency',5,1,NULL,NULL),(25,176,'1597749691.png','Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet','Amelia Hanna','Manager, PlusAgency',5,4,NULL,NULL),(28,176,'1598692556.png','Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet','Marcos Reus','Software Engineer',4,2,NULL,NULL),(29,176,'1598692612.png','Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet','Rebeca Isabella','CTO, PlusAgency',1,3,NULL,NULL),(30,177,'1598772950.png','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام','إيما واتسون','الرئيس التنفيذي لشركة PlusAgency',5,1,NULL,NULL),(31,177,'1598772999.png','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام','اميليا حنا','مدير PlusAgency',5,2,NULL,NULL),(32,177,'1598773050.png','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام','ماركوس ريوس','مهندس برمجيات',5,3,NULL,NULL),(33,177,'1598773091.png','هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام','ريبيكا إيزابيلا','CTO ، PlusAgency',5,4,NULL,NULL);
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_frames`
--

DROP TABLE IF EXISTS `time_frames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_frames` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(100) DEFAULT NULL,
  `start` varchar(100) DEFAULT NULL,
  `end` varchar(100) DEFAULT NULL,
  `max_orders` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_frames`
--

LOCK TABLES `time_frames` WRITE;
/*!40000 ALTER TABLE `time_frames` DISABLE KEYS */;
INSERT INTO `time_frames` VALUES (1,'monday','10:00 AM','11:00 AM',20),(3,'monday','02:00 PM','03:00 PM',7),(4,'wednesday','10:00 AM','12:00 PM',30);
/*!40000 ALTER TABLE `time_frames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timezones`
--

DROP TABLE IF EXISTS `timezones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timezones` (
  `country_code` char(3) NOT NULL,
  `timezone` varchar(125) NOT NULL DEFAULT '',
  `gmt_offset` float(10,2) DEFAULT NULL,
  `dst_offset` float(10,2) DEFAULT NULL,
  `raw_offset` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`country_code`,`timezone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timezones`
--

LOCK TABLES `timezones` WRITE;
/*!40000 ALTER TABLE `timezones` DISABLE KEYS */;
INSERT INTO `timezones` VALUES ('AD','Europe/Andorra',1.00,2.00,1.00),('AE','Asia/Dubai',4.00,4.00,4.00),('AF','Asia/Kabul',4.50,4.50,4.50),('AG','America/Antigua',-4.00,-4.00,-4.00),('AI','America/Anguilla',-4.00,-4.00,-4.00),('AL','Europe/Tirane',1.00,2.00,1.00),('AM','Asia/Yerevan',4.00,4.00,4.00),('AO','Africa/Luanda',1.00,1.00,1.00),('AQ','Antarctica/Casey',8.00,8.00,8.00),('AQ','Antarctica/Davis',7.00,7.00,7.00),('AQ','Antarctica/DumontDUrville',10.00,10.00,10.00),('AQ','Antarctica/Mawson',5.00,5.00,5.00),('AQ','Antarctica/McMurdo',13.00,12.00,12.00),('AQ','Antarctica/Palmer',-3.00,-4.00,-4.00),('AQ','Antarctica/Rothera',-3.00,-3.00,-3.00),('AQ','Antarctica/South_Pole',13.00,12.00,12.00),('AQ','Antarctica/Syowa',3.00,3.00,3.00),('AQ','Antarctica/Vostok',6.00,6.00,6.00),('AR','America/Argentina/Buenos_Aires',-3.00,-3.00,-3.00),('AR','America/Argentina/Catamarca',-3.00,-3.00,-3.00),('AR','America/Argentina/Cordoba',-3.00,-3.00,-3.00),('AR','America/Argentina/Jujuy',-3.00,-3.00,-3.00),('AR','America/Argentina/La_Rioja',-3.00,-3.00,-3.00),('AR','America/Argentina/Mendoza',-3.00,-3.00,-3.00),('AR','America/Argentina/Rio_Gallegos',-3.00,-3.00,-3.00),('AR','America/Argentina/Salta',-3.00,-3.00,-3.00),('AR','America/Argentina/San_Juan',-3.00,-3.00,-3.00),('AR','America/Argentina/San_Luis',-3.00,-3.00,-3.00),('AR','America/Argentina/Tucuman',-3.00,-3.00,-3.00),('AR','America/Argentina/Ushuaia',-3.00,-3.00,-3.00),('AS','Pacific/Pago_Pago',-11.00,-11.00,-11.00),('AT','Europe/Vienna',1.00,2.00,1.00),('AU','Antarctica/Macquarie',11.00,11.00,11.00),('AU','Australia/Adelaide',10.50,9.50,9.50),('AU','Australia/Brisbane',10.00,10.00,10.00),('AU','Australia/Broken_Hill',10.50,9.50,9.50),('AU','Australia/Currie',11.00,10.00,10.00),('AU','Australia/Darwin',9.50,9.50,9.50),('AU','Australia/Eucla',8.75,8.75,8.75),('AU','Australia/Hobart',11.00,10.00,10.00),('AU','Australia/Lindeman',10.00,10.00,10.00),('AU','Australia/Lord_Howe',11.00,10.50,10.50),('AU','Australia/Melbourne',11.00,10.00,10.00),('AU','Australia/Perth',8.00,8.00,8.00),('AU','Australia/Sydney',11.00,10.00,10.00),('AW','America/Aruba',-4.00,-4.00,-4.00),('AX','Europe/Mariehamn',2.00,3.00,2.00),('AZ','Asia/Baku',4.00,5.00,4.00),('BA','Europe/Sarajevo',1.00,2.00,1.00),('BB','America/Barbados',-4.00,-4.00,-4.00),('BD','Asia/Dhaka',6.00,6.00,6.00),('BE','Europe/Brussels',1.00,2.00,1.00),('BF','Africa/Ouagadougou',0.00,0.00,0.00),('BG','Europe/Sofia',2.00,3.00,2.00),('BH','Asia/Bahrain',3.00,3.00,3.00),('BI','Africa/Bujumbura',2.00,2.00,2.00),('BJ','Africa/Porto-Novo',1.00,1.00,1.00),('BL','America/St_Barthelemy',-4.00,-4.00,-4.00),('BM','Atlantic/Bermuda',-4.00,-3.00,-4.00),('BN','Asia/Brunei',8.00,8.00,8.00),('BO','America/La_Paz',-4.00,-4.00,-4.00),('BQ','America/Kralendijk',-4.00,-4.00,-4.00),('BR','America/Araguaina',-3.00,-3.00,-3.00),('BR','America/Bahia',-3.00,-3.00,-3.00),('BR','America/Belem',-3.00,-3.00,-3.00),('BR','America/Boa_Vista',-4.00,-4.00,-4.00),('BR','America/Campo_Grande',-3.00,-4.00,-4.00),('BR','America/Cuiaba',-3.00,-4.00,-4.00),('BR','America/Eirunepe',-5.00,-5.00,-5.00),('BR','America/Fortaleza',-3.00,-3.00,-3.00),('BR','America/Maceio',-3.00,-3.00,-3.00),('BR','America/Manaus',-4.00,-4.00,-4.00),('BR','America/Noronha',-2.00,-2.00,-2.00),('BR','America/Porto_Velho',-4.00,-4.00,-4.00),('BR','America/Recife',-3.00,-3.00,-3.00),('BR','America/Rio_Branco',-5.00,-5.00,-5.00),('BR','America/Santarem',-3.00,-3.00,-3.00),('BR','America/Sao_Paulo',-2.00,-3.00,-3.00),('BS','America/Nassau',-5.00,-4.00,-5.00),('BT','Asia/Thimphu',6.00,6.00,6.00),('BW','Africa/Gaborone',2.00,2.00,2.00),('BY','Europe/Minsk',3.00,3.00,3.00),('BZ','America/Belize',-6.00,-6.00,-6.00),('CA','America/Atikokan',-5.00,-5.00,-5.00),('CA','America/Blanc-Sablon',-4.00,-4.00,-4.00),('CA','America/Cambridge_Bay',-7.00,-6.00,-7.00),('CA','America/Creston',-7.00,-7.00,-7.00),('CA','America/Dawson',-8.00,-7.00,-8.00),('CA','America/Dawson_Creek',-7.00,-7.00,-7.00),('CA','America/Edmonton',-7.00,-6.00,-7.00),('CA','America/Glace_Bay',-4.00,-3.00,-4.00),('CA','America/Goose_Bay',-4.00,-3.00,-4.00),('CA','America/Halifax',-4.00,-3.00,-4.00),('CA','America/Inuvik',-7.00,-6.00,-7.00),('CA','America/Iqaluit',-5.00,-4.00,-5.00),('CA','America/Moncton',-4.00,-3.00,-4.00),('CA','America/Montreal',-5.00,-4.00,-5.00),('CA','America/Nipigon',-5.00,-4.00,-5.00),('CA','America/Pangnirtung',-5.00,-4.00,-5.00),('CA','America/Rainy_River',-6.00,-5.00,-6.00),('CA','America/Rankin_Inlet',-6.00,-5.00,-6.00),('CA','America/Regina',-6.00,-6.00,-6.00),('CA','America/Resolute',-6.00,-5.00,-6.00),('CA','America/St_Johns',-3.50,-2.50,-3.50),('CA','America/Swift_Current',-6.00,-6.00,-6.00),('CA','America/Thunder_Bay',-5.00,-4.00,-5.00),('CA','America/Toronto',-5.00,-4.00,-5.00),('CA','America/Vancouver',-8.00,-7.00,-8.00),('CA','America/Whitehorse',-8.00,-7.00,-8.00),('CA','America/Winnipeg',-6.00,-5.00,-6.00),('CA','America/Yellowknife',-7.00,-6.00,-7.00),('CC','Indian/Cocos',6.50,6.50,6.50),('CD','Africa/Kinshasa',1.00,1.00,1.00),('CD','Africa/Lubumbashi',2.00,2.00,2.00),('CF','Africa/Bangui',1.00,1.00,1.00),('CG','Africa/Brazzaville',1.00,1.00,1.00),('CH','Europe/Zurich',1.00,2.00,1.00),('CI','Africa/Abidjan',0.00,0.00,0.00),('CK','Pacific/Rarotonga',-10.00,-10.00,-10.00),('CL','America/Santiago',-3.00,-4.00,-4.00),('CL','Pacific/Easter',-5.00,-6.00,-6.00),('CM','Africa/Douala',1.00,1.00,1.00),('CN','Asia/Chongqing',8.00,8.00,8.00),('CN','Asia/Harbin',8.00,8.00,8.00),('CN','Asia/Kashgar',8.00,8.00,8.00),('CN','Asia/Shanghai',8.00,8.00,8.00),('CN','Asia/Urumqi',8.00,8.00,8.00),('CO','America/Bogota',-5.00,-5.00,-5.00),('CR','America/Costa_Rica',-6.00,-6.00,-6.00),('CU','America/Havana',-5.00,-4.00,-5.00),('CV','Atlantic/Cape_Verde',-1.00,-1.00,-1.00),('CW','America/Curacao',-4.00,-4.00,-4.00),('CX','Indian/Christmas',7.00,7.00,7.00),('CY','Asia/Nicosia',2.00,3.00,2.00),('CZ','Europe/Prague',1.00,2.00,1.00),('DE','Europe/Berlin',1.00,2.00,1.00),('DE','Europe/Busingen',1.00,2.00,1.00),('DJ','Africa/Djibouti',3.00,3.00,3.00),('DK','Europe/Copenhagen',1.00,2.00,1.00),('DM','America/Dominica',-4.00,-4.00,-4.00),('DO','America/Santo_Domingo',-4.00,-4.00,-4.00),('DZ','Africa/Algiers',1.00,1.00,1.00),('EC','America/Guayaquil',-5.00,-5.00,-5.00),('EC','Pacific/Galapagos',-6.00,-6.00,-6.00),('EE','Europe/Tallinn',2.00,3.00,2.00),('EG','Africa/Cairo',2.00,2.00,2.00),('EH','Africa/El_Aaiun',0.00,0.00,0.00),('ER','Africa/Asmara',3.00,3.00,3.00),('ES','Africa/Ceuta',1.00,2.00,1.00),('ES','Atlantic/Canary',0.00,1.00,0.00),('ES','Europe/Madrid',1.00,2.00,1.00),('ET','Africa/Addis_Ababa',3.00,3.00,3.00),('FI','Europe/Helsinki',2.00,3.00,2.00),('FJ','Pacific/Fiji',13.00,12.00,12.00),('FK','Atlantic/Stanley',-3.00,-3.00,-3.00),('FM','Pacific/Chuuk',10.00,10.00,10.00),('FM','Pacific/Kosrae',11.00,11.00,11.00),('FM','Pacific/Pohnpei',11.00,11.00,11.00),('FO','Atlantic/Faroe',0.00,1.00,0.00),('FR','Europe/Paris',1.00,2.00,1.00),('GA','Africa/Libreville',1.00,1.00,1.00),('GB','Europe/London',0.00,1.00,0.00),('GD','America/Grenada',-4.00,-4.00,-4.00),('GE','Asia/Tbilisi',4.00,4.00,4.00),('GF','America/Cayenne',-3.00,-3.00,-3.00),('GG','Europe/Guernsey',0.00,1.00,0.00),('GH','Africa/Accra',0.00,0.00,0.00),('GI','Europe/Gibraltar',1.00,2.00,1.00),('GL','America/Danmarkshavn',0.00,0.00,0.00),('GL','America/Godthab',-3.00,-2.00,-3.00),('GL','America/Scoresbysund',-1.00,0.00,-1.00),('GL','America/Thule',-4.00,-3.00,-4.00),('GM','Africa/Banjul',0.00,0.00,0.00),('GN','Africa/Conakry',0.00,0.00,0.00),('GP','America/Guadeloupe',-4.00,-4.00,-4.00),('GQ','Africa/Malabo',1.00,1.00,1.00),('GR','Europe/Athens',2.00,3.00,2.00),('GS','Atlantic/South_Georgia',-2.00,-2.00,-2.00),('GT','America/Guatemala',-6.00,-6.00,-6.00),('GU','Pacific/Guam',10.00,10.00,10.00),('GW','Africa/Bissau',0.00,0.00,0.00),('GY','America/Guyana',-4.00,-4.00,-4.00),('HK','Asia/Hong_Kong',8.00,8.00,8.00),('HN','America/Tegucigalpa',-6.00,-6.00,-6.00),('HR','Europe/Zagreb',1.00,2.00,1.00),('HT','America/Port-au-Prince',-5.00,-4.00,-5.00),('HU','Europe/Budapest',1.00,2.00,1.00),('ID','Asia/Jakarta',7.00,7.00,7.00),('ID','Asia/Jayapura',9.00,9.00,9.00),('ID','Asia/Makassar',8.00,8.00,8.00),('ID','Asia/Pontianak',7.00,7.00,7.00),('IE','Europe/Dublin',0.00,1.00,0.00),('IL','Asia/Jerusalem',2.00,3.00,2.00),('IM','Europe/Isle_of_Man',0.00,1.00,0.00),('IN','Asia/Kolkata',5.50,5.50,5.50),('IO','Indian/Chagos',6.00,6.00,6.00),('IQ','Asia/Baghdad',3.00,3.00,3.00),('IR','Asia/Tehran',3.50,4.50,3.50),('IS','Atlantic/Reykjavik',0.00,0.00,0.00),('IT','Europe/Rome',1.00,2.00,1.00),('JE','Europe/Jersey',0.00,1.00,0.00),('JM','America/Jamaica',-5.00,-5.00,-5.00),('JO','Asia/Amman',2.00,3.00,2.00),('JP','Asia/Tokyo',9.00,9.00,9.00),('KE','Africa/Nairobi',3.00,3.00,3.00),('KG','Asia/Bishkek',6.00,6.00,6.00),('KH','Asia/Phnom_Penh',7.00,7.00,7.00),('KI','Pacific/Enderbury',13.00,13.00,13.00),('KI','Pacific/Kiritimati',14.00,14.00,14.00),('KI','Pacific/Tarawa',12.00,12.00,12.00),('KM','Indian/Comoro',3.00,3.00,3.00),('KN','America/St_Kitts',-4.00,-4.00,-4.00),('KP','Asia/Pyongyang',9.00,9.00,9.00),('KR','Asia/Seoul',9.00,9.00,9.00),('KW','Asia/Kuwait',3.00,3.00,3.00),('KY','America/Cayman',-5.00,-5.00,-5.00),('KZ','Asia/Almaty',6.00,6.00,6.00),('KZ','Asia/Aqtau',5.00,5.00,5.00),('KZ','Asia/Aqtobe',5.00,5.00,5.00),('KZ','Asia/Oral',5.00,5.00,5.00),('KZ','Asia/Qyzylorda',6.00,6.00,6.00),('LA','Asia/Vientiane',7.00,7.00,7.00),('LB','Asia/Beirut',2.00,3.00,2.00),('LC','America/St_Lucia',-4.00,-4.00,-4.00),('LI','Europe/Vaduz',1.00,2.00,1.00),('LK','Asia/Colombo',5.50,5.50,5.50),('LR','Africa/Monrovia',0.00,0.00,0.00),('LS','Africa/Maseru',2.00,2.00,2.00),('LT','Europe/Vilnius',2.00,3.00,2.00),('LU','Europe/Luxembourg',1.00,2.00,1.00),('LV','Europe/Riga',2.00,3.00,2.00),('LY','Africa/Tripoli',2.00,2.00,2.00),('MA','Africa/Casablanca',0.00,0.00,0.00),('MC','Europe/Monaco',1.00,2.00,1.00),('MD','Europe/Chisinau',2.00,3.00,2.00),('ME','Europe/Podgorica',1.00,2.00,1.00),('MF','America/Marigot',-4.00,-4.00,-4.00),('MG','Indian/Antananarivo',3.00,3.00,3.00),('MH','Pacific/Kwajalein',12.00,12.00,12.00),('MH','Pacific/Majuro',12.00,12.00,12.00),('MK','Europe/Skopje',1.00,2.00,1.00),('ML','Africa/Bamako',0.00,0.00,0.00),('MM','Asia/Rangoon',6.50,6.50,6.50),('MN','Asia/Choibalsan',8.00,8.00,8.00),('MN','Asia/Hovd',7.00,7.00,7.00),('MN','Asia/Ulaanbaatar',8.00,8.00,8.00),('MO','Asia/Macau',8.00,8.00,8.00),('MP','Pacific/Saipan',10.00,10.00,10.00),('MQ','America/Martinique',-4.00,-4.00,-4.00),('MR','Africa/Nouakchott',0.00,0.00,0.00),('MS','America/Montserrat',-4.00,-4.00,-4.00),('MT','Europe/Malta',1.00,2.00,1.00),('MU','Indian/Mauritius',4.00,4.00,4.00),('MV','Indian/Maldives',5.00,5.00,5.00),('MW','Africa/Blantyre',2.00,2.00,2.00),('MX','America/Bahia_Banderas',-6.00,-5.00,-6.00),('MX','America/Cancun',-6.00,-5.00,-6.00),('MX','America/Chihuahua',-7.00,-6.00,-7.00),('MX','America/Hermosillo',-7.00,-7.00,-7.00),('MX','America/Matamoros',-6.00,-5.00,-6.00),('MX','America/Mazatlan',-7.00,-6.00,-7.00),('MX','America/Merida',-6.00,-5.00,-6.00),('MX','America/Mexico_City',-6.00,-5.00,-6.00),('MX','America/Monterrey',-6.00,-5.00,-6.00),('MX','America/Ojinaga',-7.00,-6.00,-7.00),('MX','America/Santa_Isabel',-8.00,-7.00,-8.00),('MX','America/Tijuana',-8.00,-7.00,-8.00),('MY','Asia/Kuala_Lumpur',8.00,8.00,8.00),('MY','Asia/Kuching',8.00,8.00,8.00),('MZ','Africa/Maputo',2.00,2.00,2.00),('NA','Africa/Windhoek',2.00,1.00,1.00),('NC','Pacific/Noumea',11.00,11.00,11.00),('NE','Africa/Niamey',1.00,1.00,1.00),('NF','Pacific/Norfolk',11.50,11.50,11.50),('NG','Africa/Lagos',1.00,1.00,1.00),('NI','America/Managua',-6.00,-6.00,-6.00),('NL','Europe/Amsterdam',1.00,2.00,1.00),('NO','Europe/Oslo',1.00,2.00,1.00),('NP','Asia/Kathmandu',5.75,5.75,5.75),('NR','Pacific/Nauru',12.00,12.00,12.00),('NU','Pacific/Niue',-11.00,-11.00,-11.00),('NZ','Pacific/Auckland',13.00,12.00,12.00),('NZ','Pacific/Chatham',13.75,12.75,12.75),('OM','Asia/Muscat',4.00,4.00,4.00),('PA','America/Panama',-5.00,-5.00,-5.00),('PE','America/Lima',-5.00,-5.00,-5.00),('PF','Pacific/Gambier',-9.00,-9.00,-9.00),('PF','Pacific/Marquesas',-9.50,-9.50,-9.50),('PF','Pacific/Tahiti',-10.00,-10.00,-10.00),('PG','Pacific/Port_Moresby',10.00,10.00,10.00),('PH','Asia/Manila',8.00,8.00,8.00),('PK','Asia/Karachi',5.00,5.00,5.00),('PL','Europe/Warsaw',1.00,2.00,1.00),('PM','America/Miquelon',-3.00,-2.00,-3.00),('PN','Pacific/Pitcairn',-8.00,-8.00,-8.00),('PR','America/Puerto_Rico',-4.00,-4.00,-4.00),('PS','Asia/Gaza',2.00,3.00,2.00),('PS','Asia/Hebron',2.00,3.00,2.00),('PT','Atlantic/Azores',-1.00,0.00,-1.00),('PT','Atlantic/Madeira',0.00,1.00,0.00),('PT','Europe/Lisbon',0.00,1.00,0.00),('PW','Pacific/Palau',9.00,9.00,9.00),('PY','America/Asuncion',-3.00,-4.00,-4.00),('QA','Asia/Qatar',3.00,3.00,3.00),('RE','Indian/Reunion',4.00,4.00,4.00),('RO','Europe/Bucharest',2.00,3.00,2.00),('RS','Europe/Belgrade',1.00,2.00,1.00),('RU','Asia/Anadyr',12.00,12.00,12.00),('RU','Asia/Irkutsk',9.00,9.00,9.00),('RU','Asia/Kamchatka',12.00,12.00,12.00),('RU','Asia/Khandyga',10.00,10.00,10.00),('RU','Asia/Krasnoyarsk',8.00,8.00,8.00),('RU','Asia/Magadan',12.00,12.00,12.00),('RU','Asia/Novokuznetsk',7.00,7.00,7.00),('RU','Asia/Novosibirsk',7.00,7.00,7.00),('RU','Asia/Omsk',7.00,7.00,7.00),('RU','Asia/Sakhalin',11.00,11.00,11.00),('RU','Asia/Ust-Nera',11.00,11.00,11.00),('RU','Asia/Vladivostok',11.00,11.00,11.00),('RU','Asia/Yakutsk',10.00,10.00,10.00),('RU','Asia/Yekaterinburg',6.00,6.00,6.00),('RU','Europe/Kaliningrad',3.00,3.00,3.00),('RU','Europe/Moscow',4.00,4.00,4.00),('RU','Europe/Samara',4.00,4.00,4.00),('RU','Europe/Volgograd',4.00,4.00,4.00),('RW','Africa/Kigali',2.00,2.00,2.00),('SA','Asia/Riyadh',3.00,3.00,3.00),('SB','Pacific/Guadalcanal',11.00,11.00,11.00),('SC','Indian/Mahe',4.00,4.00,4.00),('SD','Africa/Khartoum',3.00,3.00,3.00),('SE','Europe/Stockholm',1.00,2.00,1.00),('SG','Asia/Singapore',8.00,8.00,8.00),('SH','Atlantic/St_Helena',0.00,0.00,0.00),('SI','Europe/Ljubljana',1.00,2.00,1.00),('SJ','Arctic/Longyearbyen',1.00,2.00,1.00),('SK','Europe/Bratislava',1.00,2.00,1.00),('SL','Africa/Freetown',0.00,0.00,0.00),('SM','Europe/San_Marino',1.00,2.00,1.00),('SN','Africa/Dakar',0.00,0.00,0.00),('SO','Africa/Mogadishu',3.00,3.00,3.00),('SR','America/Paramaribo',-3.00,-3.00,-3.00),('SS','Africa/Juba',3.00,3.00,3.00),('ST','Africa/Sao_Tome',0.00,0.00,0.00),('SV','America/El_Salvador',-6.00,-6.00,-6.00),('SX','America/Lower_Princes',-4.00,-4.00,-4.00),('SY','Asia/Damascus',2.00,3.00,2.00),('SZ','Africa/Mbabane',2.00,2.00,2.00),('TC','America/Grand_Turk',-5.00,-4.00,-5.00),('TD','Africa/Ndjamena',1.00,1.00,1.00),('TF','Indian/Kerguelen',5.00,5.00,5.00),('TG','Africa/Lome',0.00,0.00,0.00),('TH','Asia/Bangkok',7.00,7.00,7.00),('TJ','Asia/Dushanbe',5.00,5.00,5.00),('TK','Pacific/Fakaofo',13.00,13.00,13.00),('TL','Asia/Dili',9.00,9.00,9.00),('TM','Asia/Ashgabat',5.00,5.00,5.00),('TN','Africa/Tunis',1.00,1.00,1.00),('TO','Pacific/Tongatapu',13.00,13.00,13.00),('TR','Europe/Istanbul',2.00,3.00,2.00),('TT','America/Port_of_Spain',-4.00,-4.00,-4.00),('TV','Pacific/Funafuti',12.00,12.00,12.00),('TW','Asia/Taipei',8.00,8.00,8.00),('TZ','Africa/Dar_es_Salaam',3.00,3.00,3.00),('UA','Europe/Kiev',2.00,3.00,2.00),('UA','Europe/Simferopol',2.00,4.00,4.00),('UA','Europe/Uzhgorod',2.00,3.00,2.00),('UA','Europe/Zaporozhye',2.00,3.00,2.00),('UG','Africa/Kampala',3.00,3.00,3.00),('UM','Pacific/Johnston',-10.00,-10.00,-10.00),('UM','Pacific/Midway',-11.00,-11.00,-11.00),('UM','Pacific/Wake',12.00,12.00,12.00),('US','America/Adak',-10.00,-9.00,-10.00),('US','America/Anchorage',-9.00,-8.00,-9.00),('US','America/Boise',-7.00,-6.00,-7.00),('US','America/Chicago',-6.00,-5.00,-6.00),('US','America/Denver',-7.00,-6.00,-7.00),('US','America/Detroit',-5.00,-4.00,-5.00),('US','America/Indiana/Indianapolis',-5.00,-4.00,-5.00),('US','America/Indiana/Knox',-6.00,-5.00,-6.00),('US','America/Indiana/Marengo',-5.00,-4.00,-5.00),('US','America/Indiana/Petersburg',-5.00,-4.00,-5.00),('US','America/Indiana/Tell_City',-6.00,-5.00,-6.00),('US','America/Indiana/Vevay',-5.00,-4.00,-5.00),('US','America/Indiana/Vincennes',-5.00,-4.00,-5.00),('US','America/Indiana/Winamac',-5.00,-4.00,-5.00),('US','America/Juneau',-9.00,-8.00,-9.00),('US','America/Kentucky/Louisville',-5.00,-4.00,-5.00),('US','America/Kentucky/Monticello',-5.00,-4.00,-5.00),('US','America/Los_Angeles',-8.00,-7.00,-8.00),('US','America/Menominee',-6.00,-5.00,-6.00),('US','America/Metlakatla',-8.00,-8.00,-8.00),('US','America/New_York',-5.00,-4.00,-5.00),('US','America/Nome',-9.00,-8.00,-9.00),('US','America/North_Dakota/Beulah',-6.00,-5.00,-6.00),('US','America/North_Dakota/Center',-6.00,-5.00,-6.00),('US','America/North_Dakota/New_Salem',-6.00,-5.00,-6.00),('US','America/Phoenix',-7.00,-7.00,-7.00),('US','America/Shiprock',-7.00,-6.00,-7.00),('US','America/Sitka',-9.00,-8.00,-9.00),('US','America/Yakutat',-9.00,-8.00,-9.00),('US','Pacific/Honolulu',-10.00,-10.00,-10.00),('UY','America/Montevideo',-2.00,-3.00,-3.00),('UZ','Asia/Samarkand',5.00,5.00,5.00),('UZ','Asia/Tashkent',5.00,5.00,5.00),('VA','Europe/Vatican',1.00,2.00,1.00),('VC','America/St_Vincent',-4.00,-4.00,-4.00),('VE','America/Caracas',-4.50,-4.50,-4.50),('VG','America/Tortola',-4.00,-4.00,-4.00),('VI','America/St_Thomas',-4.00,-4.00,-4.00),('VN','Asia/Ho_Chi_Minh',7.00,7.00,7.00),('VU','Pacific/Efate',11.00,11.00,11.00),('WF','Pacific/Wallis',12.00,12.00,12.00),('WS','Pacific/Apia',14.00,13.00,13.00),('YE','Asia/Aden',3.00,3.00,3.00),('YT','Indian/Mayotte',3.00,3.00,3.00),('ZA','Africa/Johannesburg',2.00,2.00,2.00),('ZM','Africa/Lusaka',2.00,2.00,2.00),('ZW','Africa/Harare',2.00,2.00,2.00);
/*!40000 ALTER TABLE `timezones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titles`
--

DROP TABLE IF EXISTS `titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `section` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titles`
--

LOCK TABLES `titles` WRITE;
/*!40000 ALTER TABLE `titles` DISABLE KEYS */;
/*!40000 ALTER TABLE `titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ulinks`
--

DROP TABLE IF EXISTS `ulinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ulinks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ulinks`
--

LOCK TABLES `ulinks` WRITE;
/*!40000 ALTER TABLE `ulinks` DISABLE KEYS */;
INSERT INTO `ulinks` VALUES (36,176,'Contact','#',NULL,NULL),(37,176,'Blogs','#',NULL,NULL),(38,176,'Team','#',NULL,NULL),(39,176,'Gallery','#',NULL,NULL),(40,177,'الرابط 1','https://megasoft.biz/alphasoft/',NULL,NULL),(41,177,'الرابط 2','https://megasoft.biz/alphasoft/',NULL,NULL);
/*!40000 ALTER TABLE `ulinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `billing_fname` varchar(255) DEFAULT NULL,
  `billing_lname` varchar(255) DEFAULT NULL,
  `billing_photo` varchar(255) DEFAULT NULL,
  `billing_username` varchar(255) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `billing_number` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_state` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `billing_country` varchar(255) DEFAULT NULL,
  `shpping_fname` varchar(255) DEFAULT NULL,
  `shpping_lname` varchar(255) DEFAULT NULL,
  `shpping_photo` varchar(255) DEFAULT NULL,
  `shpping_username` varchar(255) DEFAULT NULL,
  `shpping_email` varchar(255) DEFAULT NULL,
  `shpping_number` varchar(255) DEFAULT NULL,
  `shpping_city` varchar(255) DEFAULT NULL,
  `shpping_state` varchar(255) DEFAULT NULL,
  `shpping_address` varchar(255) DEFAULT NULL,
  `shpping_country` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `verification_link` text DEFAULT NULL,
  `email_verified` varchar(20) NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `billing_country_code` varchar(10) DEFAULT NULL,
  `shipping_country_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'John','Mikel','15988000003.png','Mikel007','mikel@gmail.com','$2y$10$OHlZWozb9quLWem6bhCVn.bbmTskN1b6zrJX54Stx0FVMe85n71gq','67097604344','Oklahoma','Oklahoma','Oklahoma, USA','United States','r0zQPdDnXFMDktXEmuFAmAcCswO1QeEXdVmN8qy4YFEMyftMF8sarv9Q60Z3','John','Mikel',NULL,NULL,'john@gmail.com','36473871339','New York','New York','New York, USA','USA','John','Mikel',NULL,NULL,'mikel@gmail.com','36237343742','California','California','California, USA','USA',1,'18cbbab1fde0cff2579803dd8de1d0ec','Yes','2020-08-30 09:03:54','2020-08-30 09:12:03',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-12 18:49:15
