-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 02, 2023 at 06:50 AM
-- Server version: 10.3.36-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smmviral_technicalviral`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_providers`
--

CREATE TABLE `api_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'standard',
  `balance` decimal(15,5) DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_custom_page`
--

CREATE TABLE `general_custom_page` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `pid` int(1) DEFAULT 1,
  `position` int(1) DEFAULT 0,
  `name` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_file_manager`
--

CREATE TABLE `general_file_manager` (
  `id` int(11) NOT NULL,
  `ids` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `file_name` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `file_type` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `file_ext` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `file_size` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `is_image` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_file_manager`
--

INSERT INTO `general_file_manager` (`id`, `ids`, `uid`, `file_name`, `file_type`, `file_ext`, `file_size`, `is_image`, `image_width`, `image_height`, `created`) VALUES
(316, 'd6e5a8ef10ce29508da74572c62c33e0', 60, '77decce2678be03ad868adfc3f5fbea7.png', 'image/png', 'png', '254.05', '1', 1920, 480, '2020-08-17 01:18:57'),
(317, 'c450ec537e9f8cc6fd6d132cb20b90a5', 60, '04147513de125ca924bee8c046ac41e3.png', 'image/png', 'png', '254.05', '1', 1920, 480, '2020-08-17 01:19:15'),
(318, 'af2c8358e6557fef5813fb250ec885eb', 3, '0a9d1e94be80b389788b39b25d88cfa2.png', 'image/png', 'png', '7.78', '1', 167, 72, '2020-11-27 18:36:45'),
(319, 'e27b78234ba5e3c5967900df67c2ae4b', 3, '53531f3ecbfac29da29f819e1070224a.png', 'image/png', 'png', '7.78', '1', 167, 72, '2020-11-27 18:36:48'),
(320, '7f294b76a7655ca2de38b677c002518d', 3, 'b55f609b788b624cd4a4ef03919086af.png', 'image/png', 'png', '7.78', '1', 167, 72, '2020-11-27 18:36:53'),
(321, '454a76b25d27975bce0cba2d51f6307f', 3, '816af90b1b2b15411e73504f5fbf8217.png', 'image/png', 'png', '7.67', '1', 167, 72, '2020-11-27 18:37:14');

-- --------------------------------------------------------

--
-- Table structure for table `general_lang`
--

CREATE TABLE `general_lang` (
  `id` int(11) NOT NULL,
  `ids` varchar(100) DEFAULT NULL,
  `lang_code` varchar(10) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `general_lang_list`
--

CREATE TABLE `general_lang_list` (
  `id` int(11) NOT NULL,
  `ids` varchar(225) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `country_code` varchar(225) DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_lang_list`
--

INSERT INTO `general_lang_list` (`id`, `ids`, `code`, `country_code`, `is_default`, `status`, `created`) VALUES
(3, '39892bf7f5748191c6fefeeada1951e5', 'en', 'GB', 1, 1, '2020-08-30 07:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `general_news`
--

CREATE TABLE `general_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_options`
--

CREATE TABLE `general_options` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_options`
--

INSERT INTO `general_options` (`id`, `name`, `value`) VALUES
(67, 'enable_https', '0'),
(68, 'enable_disable_homepage', '0'),
(69, 'website_desc', 'SmartPanel 3.4 - Unlimited License by https://smmpanels.store                                  '),
(70, 'website_keywords', 'buy smm panel, buy smmpanels.store, smmpanels.store, smm panel, SmartPanel, smm reseller panel, smm provider panel, reseller panel, instagram panel, resellerpanel, social media reseller panel, smmpanel, panelsmm, smm, panel, socialmedia, instagram reseller panel                                                                                                                                                                                                                                                                                                                                                                                                                  '),
(71, 'website_title', 'SmartPanel 3.4 - Unlimited License by https://smmpanels.store                                  '),
(72, 'website_favicon', 'http://smartpanel3-4.smmpanels.store/assets/uploads/user77de68daecd823babbb58edb1c8e14d7106e83bb/0a9d1e94be80b389788b39b25d88cfa2.png'),
(73, 'embed_head_javascript', ''),
(74, 'website_logo', 'http://smartpanel3-4.smmpanels.store/assets/uploads/user77de68daecd823babbb58edb1c8e14d7106e83bb/53531f3ecbfac29da29f819e1070224a.png'),
(75, 'website_logo_white', 'http://smartpanel3-4.smmpanels.store/assets/uploads/user77de68daecd823babbb58edb1c8e14d7106e83bb/b55f609b788b624cd4a4ef03919086af.png'),
(176, 'cookies_policy_page', '<p><strong>Lorem Ipsum</strong></p><p>Lorem ipsum dolor sit amet, in eam consetetur consectetuer. Vivendo eleifend postulant ut mei, vero maiestatis cu nam. Qui et facer mandamus, nullam regione lucilius eu has. Mei an vidisse facilis posidonium, eros minim deserunt per ne.</p><p>Duo quando tibique intellegam at. Nec error mucius in, ius in error legendos reformidans. Vidisse dolorum vulputate cu ius. Ei qui stet error consulatu.</p><p>Mei habeo prompta te. Ignota commodo nam ei. Te iudico definitionem sed, placerat oporteat tincidunt eu per, stet clita meliore usu ne. Facer debitis ponderum per no, agam corpora recteque at mel.</p>'),
(76, 'enable_service_list_no_login', '1'),
(77, 'disable_signup_page', '0'),
(78, 'notification_popup_content', ''),
(79, 'is_cookie_policy_page', ''),
(80, 'enable_api_tab', '1'),
(81, 'contact_tel', ''),
(82, 'contact_email', ''),
(83, 'contact_work_hour', ''),
(84, 'social_facebook_link', ''),
(85, 'social_twitter_link', ''),
(86, 'social_instagram_link', ''),
(87, 'social_pinterest_link', ''),
(88, 'social_tumblr_link', ''),
(89, 'social_youtube_link', ''),
(90, 'copy_right_content', 'Copyright © 2020 '),
(91, 'embed_javascript', '	\r\n'),
(92, 'enable_notification_popup', '0'),
(93, 'enable_goolge_recapcha', '0'),
(94, 'enable_signup_skype_field', '0'),
(95, 'default_price_percentage_increase', '30'),
(96, 'new_currecry_rate', '76'),
(97, 'currency_decimal_separator', 'dot'),
(98, 'currency_thousand_separator', 'comma'),
(99, 'currency_symbol', '₹'),
(100, 'currency_decimal', '2'),
(101, 'default_header_skin', 'bluelagoo'),
(102, 'enable_news_announcement', '1'),
(103, 'default_limit_per_page', '100'),
(104, 'get_features_option', '0'),
(105, 'is_verification_new_account', '0'),
(106, 'is_welcome_email', '0'),
(107, 'is_new_user_email', '0'),
(108, 'is_active_paypal', '0'),
(109, 'is_active_stripe', '0'),
(110, 'is_active_2checkout', '0'),
(111, 'is_active_manual', '0'),
(112, 'enable_explication_service_symbol', '1'),
(113, 'enable_drip_feed', '1'),
(114, 'enable_attentions_orderpage', ''),
(115, 'is_maintenance_mode', '0'),
(116, 'website_name', 'SmartPanel 3.4 - Unlimited License                  '),
(117, 'currency_code', 'INR'),
(118, 'auto_rounding_x_decimal_places', '2'),
(119, 'is_auto_currency_convert', '1'),
(120, 'payment_transaction_min', '30'),
(121, 'payment_environment', 'live'),
(122, 'paypal_chagre_fee', '0'),
(123, 'paypal_client_id', ''),
(124, 'paypal_client_secret', ''),
(125, 'stripe_chagre_fee', '4'),
(126, 'stripe_publishable_key', ''),
(127, 'stripe_secret_key', ''),
(128, 'twocheckout_chagre_fee', '4'),
(129, '2checkout_publishable_key', ''),
(130, '2checkout_private_key', ''),
(131, '2checkout_seller_id', ''),
(132, 'manual_payment_content', ''),
(133, 'is_active_paytm', '1'),
(134, 'paytm_payment_environment', 'PROD'),
(135, 'paytm_chagre_fee', '0'),
(136, 'paytm_payment_transaction_min', '10'),
(137, 'paytm_currency_rate_to_usd', '1'),
(138, 'paytm_merchant_id', 'dfyttE26595422359624'),
(139, 'paytm_merchant_key', 'uniceoYb!2F1X4L6'),
(140, 'default_home_page', 'monoka'),
(141, 'default_timezone', 'Asia/Kolkata'),
(142, 'is_clear_ticket', '1'),
(143, 'default_clear_ticket_days', '30'),
(144, 'default_min_order', ''),
(145, 'default_max_order', ''),
(146, 'default_price_per_1k', ''),
(147, 'default_drip_feed_runs', '10'),
(148, 'default_drip_feed_interval', '30'),
(149, 'google_capcha_site_key', ''),
(150, 'google_capcha_secret_key', ''),
(151, 'is_ticket_notice_email_admin', '0'),
(152, 'is_ticket_notice_email', '0'),
(153, 'email_password_recovery_subject', ' Password Recovery'),
(154, 'email_password_recovery_content', '<p>Hi {{<strong>user_firstnane}}!</strong></p>\r\n<p>somebody ( hopefully your requested New password your account.</p>\r\n<p>No change have been made to your account yet.</p>\r\n<p>you can reset your password by click this link:{{recovery_password_link}}</p>\r\n<p>If you did not request a password reset, no further action is requested</p>\r\n<p></p>\r\n<p>Thanks !</p>'),
(155, 'email_from', ''),
(156, 'email_name', ''),
(157, 'email_protocol_type', 'php_mail'),
(158, 'smtp_server', ''),
(159, 'smtp_port', ''),
(160, 'smtp_username', ''),
(161, 'smtp_password', ''),
(162, 'smtp_encryption', 'none'),
(163, 'is_payment_notice_email', '0'),
(164, 'is_order_notice_email', '0'),
(165, 'terms_content', ''),
(166, 'policy_content', ''),
(167, 'verification_email_subject', ' Please validate your account'),
(168, 'verification_email_content', '<p><strong>Welcome </strong></p>\r\n<p>Hello <strong>{{user_firstname}}</strong>!</p>\r\n<p> Thank you for joining! We\'re glad to have you as community member, and we\'re stocked for you to start exploring our service.  If you don\'t verify your address, you won\'t be able to create a User Account.</p>\r\n<p>  All you need to do is activate your account by click this link: <br>  {{activation_link}} </p>\r\n<p>Thanks and Best Regards!</p>'),
(169, 'email_welcome_email_subject', ' Getting Started with Our Service!'),
(170, 'email_welcome_email_content', '<p><strong>Welcome </strong></p>\r\n<p>Hello <strong>{{user_firstname}}</strong>!</p>\r\n<p>Congratulations! <br>You have successfully signed up for our service - {{website_name}} with follow data</p>\r\n<ul>\r\n<li>Firstname: {{user_firstname}}</li>\r\n<li>Lastname: {{user_lastname}}</li>\r\n<li>Email: {{user_email}}</li>\r\n<li>Timezone: {{user_timezone}}</li>\r\n</ul>\r\n<p>We want to exceed your expectations, so please do not hesitate to reach out at any time if you have any questions or concerns. We look to working with you.</p>\r\n<p>Best Regards,</p>'),
(171, 'email_new_registration_subject', 'New Registration'),
(172, 'email_new_registration_content', '<p>Hi Admin!</p>\r\n<p>Someone signed up in  with follow data</p>\r\n<ul>\r\n<li>Firstname {{user_firstname}}</li>\r\n<li>Lastname: {{user_lastname}}</li>\r\n<li>Email: {{user_email}}</li>\r\n<li>Timezone: {{user_timezone}}</li>\r\n</ul>'),
(173, 'email_payment_notice_subject', '  Thank You! Deposit Payment Received'),
(174, 'email_payment_notice_content', '<p xss=\"removed\">Hi<strong> {{user_firstname}}! </strong></p>\r\n<p>We\'ve just received your final remittance and would like to thank you. We appreciate your diligence in adding funds to your balance in our service.</p>\r\n<p>It has been a pleasure doing business with you. We wish you the best of luck.</p>\r\n<p>Thanks and Best Regards!</p>'),
(175, 'defaut_auto_sync_service_setting', '{\"price_percentage_increase\":50,\"sync_request\":1,\"new_currency_rate\":\"76\",\"is_enable_sync_price\":1,\"is_convert_to_new_currency\":1}'),
(177, ' - SmartPanel', ''),
(178, 'enable_custom_home', ''),
(179, 'refill_expiry_days', '30');

-- --------------------------------------------------------

--
-- Table structure for table `general_purchase`
--

CREATE TABLE `general_purchase` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `pid` text DEFAULT NULL,
  `purchase_code` text DEFAULT NULL,
  `version` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_purchase`
--

INSERT INTO `general_purchase` (`id`, `ids`, `pid`, `purchase_code`, `version`) VALUES
(1, '0bd767eca1df93ad4adce458b0e7d8d7', '23595718', 'smmpanels.store', '3.4');

-- --------------------------------------------------------

--
-- Table structure for table `general_sessions`
--

CREATE TABLE `general_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_sessions`
--

INSERT INTO `general_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('755d949607da5b9dc6457e3a5244fdb196f0b3c0', '182.68.189.210', 1672642197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323634323137383b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2233223b733a333a22696473223b733a33323a223339383932626637663537343831393163366665666565616461313935316535223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30382d33302030373a34303a3034223b7d7569647c733a313a2239223b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a353a2261646d696e223b733a353a22656d61696c223b733a32343a2261646d696e40746563686e6963616c766972616c2e636f6d223b733a31303a2266697273745f6e616d65223b733a393a22746563686e6963616c223b733a393a226c6173745f6e616d65223b733a353a22766972616c223b733a383a2274696d657a6f6e65223b733a31323a22417369612f4b6f6c6b617461223b7d),
('617829d89bc7745f2497570e67484e1a6a75ee67', '182.68.189.210', 1672639958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323633393935383b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2233223b733a333a22696473223b733a33323a223339383932626637663537343831393163366665666565616461313935316535223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30382d33302030373a34303a3034223b7d7569647c693a393b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a343a2275736572223b733a353a22656d61696c223b733a32343a2261646d696e40746563686e6963616c766972616c2e636f6d223b733a31303a2266697273745f6e616d65223b733a393a22746563686e6963616c223b733a393a226c6173745f6e616d65223b733a353a22766972616c223b733a383a2274696d657a6f6e65223b733a31323a22417369612f4b6f6c6b617461223b7d),
('25cca98c45dadb9e2a3c01c96c70b6d53ba89fa3', '46.4.122.42', 1672639337, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323633393333373b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2233223b733a333a22696473223b733a33323a223339383932626637663537343831393163366665666565616461313935316535223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30382d33302030373a34303a3034223b7d),
('53729323aa637379a2449e52f26ca194a894e9c5', '182.68.189.210', 1672640578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323634303537383b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2233223b733a333a22696473223b733a33323a223339383932626637663537343831393163366665666565616461313935316535223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30382d33302030373a34303a3034223b7d7569647c693a393b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a343a2275736572223b733a353a22656d61696c223b733a32343a2261646d696e40746563686e6963616c766972616c2e636f6d223b733a31303a2266697273745f6e616d65223b733a393a22746563686e6963616c223b733a393a226c6173745f6e616d65223b733a353a22766972616c223b733a383a2274696d657a6f6e65223b733a31323a22417369612f4b6f6c6b617461223b7d),
('3163471356d59f3c306fb887deb0937463bf8212', '182.68.189.210', 1672641570, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323634313537303b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2233223b733a333a22696473223b733a33323a223339383932626637663537343831393163366665666565616461313935316535223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30382d33302030373a34303a3034223b7d7569647c693a393b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a343a2275736572223b733a353a22656d61696c223b733a32343a2261646d696e40746563686e6963616c766972616c2e636f6d223b733a31303a2266697273745f6e616d65223b733a393a22746563686e6963616c223b733a393a226c6173745f6e616d65223b733a353a22766972616c223b733a383a2274696d657a6f6e65223b733a31323a22417369612f4b6f6c6b617461223b7d),
('d111faba3ff2d03b69f0b79d5c60f644f108d924', '46.4.122.42', 1672641133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323634313133333b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2233223b733a333a22696473223b733a33323a223339383932626637663537343831393163366665666565616461313935316535223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30382d33302030373a34303a3034223b7d),
('2aa036720edb0a78ddc51ca36ecba55d78b94219', '182.68.189.210', 1672642178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637323634323137383b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2233223b733a333a22696473223b733a33323a223339383932626637663537343831393163366665666565616461313935316535223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032302d30382d33302030373a34303a3034223b7d7569647c733a313a2239223b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a353a2261646d696e223b733a353a22656d61696c223b733a32343a2261646d696e40746563686e6963616c766972616c2e636f6d223b733a31303a2266697273745f6e616d65223b733a393a22746563686e6963616c223b733a393a226c6173745f6e616d65223b733a353a22766972616c223b733a383a2274696d657a6f6e65223b733a31323a22417369612f4b6f6c6b617461223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `general_subscribers`
--

CREATE TABLE `general_subscribers` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_transaction_logs`
--

CREATE TABLE `general_transaction_logs` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `payer_email` varchar(255) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `transaction_id` text DEFAULT NULL,
  `txn_fee` double DEFAULT NULL,
  `note` int(11) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_users`
--

CREATE TABLE `general_users` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `login_type` text DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `timezone` text DEFAULT NULL,
  `more_information` text DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `balance` decimal(15,4) DEFAULT 0.0000,
  `custom_rate` int(11) NOT NULL DEFAULT 0,
  `api_key` varchar(191) DEFAULT NULL,
  `spent` varchar(225) DEFAULT NULL,
  `activation_key` text DEFAULT NULL,
  `reset_key` text DEFAULT NULL,
  `history_ip` text DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_users`
--

INSERT INTO `general_users` (`id`, `ids`, `role`, `login_type`, `first_name`, `last_name`, `email`, `password`, `timezone`, `more_information`, `settings`, `desc`, `balance`, `custom_rate`, `api_key`, `spent`, `activation_key`, `reset_key`, `history_ip`, `status`, `changed`, `created`) VALUES
(9, '7a1bb014b817ad35a2f87ebd2e870622', 'admin', NULL, 'technical', 'viral', 'admin@technicalviral.com', '$2a$08$5hpEiC4TwSXmdmsLMigdJenrUfiBlr0j2FlltselrFstDPApRRb0a', 'Asia/Kolkata', NULL, '{\"limit_payments\":{\"paypal\":\"0\",\"stripe\":\"1\",\"paytm\":\"1\"}}', NULL, '0.0000', 0, 'kVhe6QIEiEKrpFfKcJcN8712Xa9Mb6ae', NULL, 'WivRcE21uDTzJQKroYN9nEljlYFbOGot', 'bb4b37c4a5e43c5df348016ea058a241', '182.68.189.210', 1, '2023-01-01 19:01:14', '2023-01-01 19:01:14');

-- --------------------------------------------------------

--
-- Table structure for table `general_users_price`
--

CREATE TABLE `general_users_price` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `ids` text CHARACTER SET utf8 DEFAULT NULL,
  `type` enum('direct','api') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'direct',
  `cate_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_order_id` int(11) DEFAULT NULL,
  `service_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `api_provider_id` int(11) DEFAULT NULL,
  `api_service_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_order_id` int(11) DEFAULT 0,
  `uid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_refill` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `usernames` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hashtags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hashtag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_posts` int(11) DEFAULT NULL,
  `sub_min` int(11) DEFAULT NULL,
  `sub_max` int(11) DEFAULT NULL,
  `sub_delay` int(11) DEFAULT NULL,
  `sub_expiry` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_response_orders` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_response_posts` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_status` enum('Active','Paused','Completed','Expired','Canceled') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(15,4) DEFAULT NULL,
  `formal_charge` decimal(15,4) DEFAULT NULL,
  `profit` decimal(15,4) DEFAULT NULL,
  `status` enum('active','completed','processing','inprogress','pending','partial','canceled','refunded','awaiting','error','fail') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `start_counter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remains` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `is_drip_feed` int(1) DEFAULT 0,
  `runs` int(11) DEFAULT 0,
  `interval` int(2) DEFAULT 0,
  `dripfeed_quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `refill_status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(225) NOT NULL,
  `min` double NOT NULL,
  `max` double NOT NULL,
  `new_users` int(1) NOT NULL DEFAULT 0 COMMENT '1:Allowed, 0: Not Allowed',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '1 -> ON, 0 -> OFF',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `type`, `name`, `min`, `max`, `new_users`, `status`, `params`) VALUES
(13, 'paypal', 'Paypal Checkout', 10, 100, 0, 1, '{\"type\":\"paypal\",\"name\":\"Paypal Checkout\",\"min\":\"10\",\"max\":\"100\",\"new_users\":\"0\",\"status\":\"1\",\"take_fee_from_user\":\"1\",\"option\":{\"environment\":\"live\",\"client_id\":\"\",\"secret_key\":\"\"}}'),
(14, 'stripe', 'Stripe Checkout', 10, 100000, 1, 1, '{\"type\":\"stripe\",\"name\":\"Stripe Checkout\",\"min\":\"10\",\"max\":\"100000\",\"new_users\":\"1\",\"status\":\"1\",\"option\":{\"tnx_fee\":\"3\",\"environment\":\"live\",\"public_key\":\"\",\"secret_key\":\"\"}}'),
(129, 'paytm', 'Paytm CheckOut', 10, 100000, 1, 1, '{\"type\":\"paytm\",\"name\":\"Paytm CheckOut\",\"min\":\"10\",\"max\":\"100000\",\"new_users\":\"1\",\"status\":\"1\",\"option\":{\"tnx_fee\":\"0\",\"environment\":\"TEST\",\"paytm_mid\":\"\",\"merchant_key\":\"\",\"rate_to_usd\":\"76\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `payments_bonus`
--

CREATE TABLE `payments_bonus` (
  `id` int(11) NOT NULL,
  `ids` varchar(100) DEFAULT NULL,
  `payment_id` int(11) NOT NULL,
  `bonus_from` double NOT NULL,
  `percentage` double NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `original_price` decimal(15,4) DEFAULT NULL,
  `min` int(50) DEFAULT NULL,
  `max` int(50) DEFAULT NULL,
  `add_type` enum('manual','api') DEFAULT 'manual',
  `type` varchar(100) DEFAULT 'default',
  `api_service_id` varchar(200) DEFAULT NULL,
  `api_provider_id` int(11) DEFAULT NULL,
  `dripfeed` int(1) DEFAULT 0,
  `status` int(1) DEFAULT 1,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('new','pending','closed','answered') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `user_read` double NOT NULL DEFAULT 0,
  `admin_read` double NOT NULL DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_providers`
--
ALTER TABLE `api_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_custom_page`
--
ALTER TABLE `general_custom_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_file_manager`
--
ALTER TABLE `general_file_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_lang`
--
ALTER TABLE `general_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_lang_list`
--
ALTER TABLE `general_lang_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_news`
--
ALTER TABLE `general_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `general_options`
--
ALTER TABLE `general_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_purchase`
--
ALTER TABLE `general_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_sessions`
--
ALTER TABLE `general_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `general_subscribers`
--
ALTER TABLE `general_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_transaction_logs`
--
ALTER TABLE `general_transaction_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_users`
--
ALTER TABLE `general_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_users_price`
--
ALTER TABLE `general_users_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments_bonus`
--
ALTER TABLE `payments_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_messages_user_id_foreign` (`uid`),
  ADD KEY `ticket_messages_ticket_id_foreign` (`ticket_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_providers`
--
ALTER TABLE `api_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `general_custom_page`
--
ALTER TABLE `general_custom_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_file_manager`
--
ALTER TABLE `general_file_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `general_lang`
--
ALTER TABLE `general_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_lang_list`
--
ALTER TABLE `general_lang_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_news`
--
ALTER TABLE `general_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_options`
--
ALTER TABLE `general_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `general_purchase`
--
ALTER TABLE `general_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_subscribers`
--
ALTER TABLE `general_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_transaction_logs`
--
ALTER TABLE `general_transaction_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_users`
--
ALTER TABLE `general_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `general_users_price`
--
ALTER TABLE `general_users_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `payments_bonus`
--
ALTER TABLE `payments_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
