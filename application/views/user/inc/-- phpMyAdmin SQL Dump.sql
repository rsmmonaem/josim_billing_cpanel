-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 18, 2023 at 09:44 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_your_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE IF NOT EXISTS `admin_user` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(33) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(33) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'user_name = Email',
  `full_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone_area_coad` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `pass_word` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_type` varchar(33) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(33) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`u_id`, `user_id`, `user_name`, `full_name`, `first_name`, `phone_area_coad`, `mobile_number`, `company`, `country`, `last_name`, `pass_word`, `user_type`, `status`, `update_date`) VALUES
(1, 'admin', 'admin@gmail.com', 'Super Admin', 'MD.', '', '+8801968402925', 'SEO', 'Bangladesh', 'Monaem', 'admin', 'super_admin', 'ENABLE', '2024-10-15 00:00:00'),
(2, '', 'user@gmail.com', '', 'Rsm ', 'US', '1313213', 'SEo', 'Bangladesh', 'Monaem', '12345678', 'user', 'ENABLE', '0000-00-00 00:00:00'),
(3, '', 'veqosa@mailinator.com', 'Sydnee Hicks', 'Sydnee', 'US', '313', 'Owen Duran Inc', 'Liechtenstein', 'Hicks', 'Pa$$w0rd!', 'user', 'ENABLE', '2023-10-12 14:38:13');

-- --------------------------------------------------------

--
-- Table structure for table `contact_page`
--

DROP TABLE IF EXISTS `contact_page`;
CREATE TABLE IF NOT EXISTS `contact_page` (
  `con_id` int NOT NULL AUTO_INCREMENT,
  `con_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `con_facebook` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `con_instagram` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `con_twitter` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `con_youtube` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `con_google` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `con_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `con_phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `con_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`con_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_page`
--

INSERT INTO `contact_page` (`con_id`, `con_title`, `con_facebook`, `con_instagram`, `con_twitter`, `con_youtube`, `con_google`, `con_email`, `con_phone`, `con_address`) VALUES
(1, 'যোগাযোগ করুন', 'https://facebook.com', 'https://instagram.com', 'https://twitter.com', 'https://youtube.com', 'https://google.com/', 'defenedap@mailinator.com', '123456789', 'Rerum ipsum autem ne');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `countrycode` char(3) NOT NULL,
  `countryname` varchar(200) NOT NULL,
  `code` char(2) DEFAULT NULL,
  PRIMARY KEY (`countrycode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`countrycode`, `countryname`, `code`) VALUES
('ABW', 'Aruba', 'AW'),
('AFG', 'Afghanistan', 'AF'),
('AGO', 'Angola', 'AO'),
('AIA', 'Anguilla', 'AI'),
('ALA', 'Åland', 'AX'),
('ALB', 'Albania', 'AL'),
('AND', 'Andorra', 'AD'),
('ARE', 'United Arab Emirates', 'AE'),
('ARG', 'Argentina', 'AR'),
('ARM', 'Armenia', 'AM'),
('ASM', 'American Samoa', 'AS'),
('ATA', 'Antarctica', 'AQ'),
('ATF', 'French Southern Territories', 'TF'),
('ATG', 'Antigua and Barbuda', 'AG'),
('AUS', 'Australia', 'AU'),
('AUT', 'Austria', 'AT'),
('AZE', 'Azerbaijan', 'AZ'),
('BDI', 'Burundi', 'BI'),
('BEL', 'Belgium', 'BE'),
('BEN', 'Benin', 'BJ'),
('BES', 'Bonaire', 'BQ'),
('BFA', 'Burkina Faso', 'BF'),
('BGD', 'Bangladesh', 'BD'),
('BGR', 'Bulgaria', 'BG'),
('BHR', 'Bahrain', 'BH'),
('BHS', 'Bahamas', 'BS'),
('BIH', 'Bosnia and Herzegovina', 'BA'),
('BLM', 'Saint Barthélemy', 'BL'),
('BLR', 'Belarus', 'BY'),
('BLZ', 'Belize', 'BZ'),
('BMU', 'Bermuda', 'BM'),
('BOL', 'Bolivia', 'BO'),
('BRA', 'Brazil', 'BR'),
('BRB', 'Barbados', 'BB'),
('BRN', 'Brunei', 'BN'),
('BTN', 'Bhutan', 'BT'),
('BVT', 'Bouvet Island', 'BV'),
('BWA', 'Botswana', 'BW'),
('CAF', 'Central African Republic', 'CF'),
('CAN', 'Canada', 'CA'),
('CCK', 'Cocos [Keeling] Islands', 'CC'),
('CHE', 'Switzerland', 'CH'),
('CHL', 'Chile', 'CL'),
('CHN', 'China', 'CN'),
('CIV', 'Ivory Coast', 'CI'),
('CMR', 'Cameroon', 'CM'),
('COD', 'Democratic Republic of the Congo', 'CD'),
('COG', 'Republic of the Congo', 'CG'),
('COK', 'Cook Islands', 'CK'),
('COL', 'Colombia', 'CO'),
('COM', 'Comoros', 'KM'),
('CPV', 'Cape Verde', 'CV'),
('CRI', 'Costa Rica', 'CR'),
('CUB', 'Cuba', 'CU'),
('CUW', 'Curacao', 'CW'),
('CXR', 'Christmas Island', 'CX'),
('CYM', 'Cayman Islands', 'KY'),
('CYP', 'Cyprus', 'CY'),
('CZE', 'Czech Republic', 'CZ'),
('DEU', 'Germany', 'DE'),
('DJI', 'Djibouti', 'DJ'),
('DMA', 'Dominica', 'DM'),
('DNK', 'Denmark', 'DK'),
('DOM', 'Dominican Republic', 'DO'),
('DZA', 'Algeria', 'DZ'),
('ECU', 'Ecuador', 'EC'),
('EGY', 'Egypt', 'EG'),
('ERI', 'Eritrea', 'ER'),
('ESH', 'Western Sahara', 'EH'),
('ESP', 'Spain', 'ES'),
('EST', 'Estonia', 'EE'),
('ETH', 'Ethiopia', 'ET'),
('FIN', 'Finland', 'FI'),
('FJI', 'Fiji', 'FJ'),
('FLK', 'Falkland Islands', 'FK'),
('FRA', 'France', 'FR'),
('FRO', 'Faroe Islands', 'FO'),
('FSM', 'Micronesia', 'FM'),
('GAB', 'Gabon', 'GA'),
('GBR', 'United Kingdom', 'GB'),
('GEO', 'Georgia', 'GE'),
('GGY', 'Guernsey', 'GG'),
('GHA', 'Ghana', 'GH'),
('GIB', 'Gibraltar', 'GI'),
('GIN', 'Guinea', 'GN'),
('GLP', 'Guadeloupe', 'GP'),
('GMB', 'Gambia', 'GM'),
('GNB', 'Guinea-Bissau', 'GW'),
('GNQ', 'Equatorial Guinea', 'GQ'),
('GRC', 'Greece', 'GR'),
('GRD', 'Grenada', 'GD'),
('GRL', 'Greenland', 'GL'),
('GTM', 'Guatemala', 'GT'),
('GUF', 'French Guiana', 'GF'),
('GUM', 'Guam', 'GU'),
('GUY', 'Guyana', 'GY'),
('HKG', 'Hong Kong', 'HK'),
('HMD', 'Heard Island and McDonald Islands', 'HM'),
('HND', 'Honduras', 'HN'),
('HRV', 'Croatia', 'HR'),
('HTI', 'Haiti', 'HT'),
('HUN', 'Hungary', 'HU'),
('IDN', 'Indonesia', 'ID'),
('IMN', 'Isle of Man', 'IM'),
('IND', 'India', 'IN'),
('IOT', 'British Indian Ocean Territory', 'IO'),
('IRL', 'Ireland', 'IE'),
('IRN', 'Iran', 'IR'),
('IRQ', 'Iraq', 'IQ'),
('ISL', 'Iceland', 'IS'),
('ISR', 'Israel', 'IL'),
('ITA', 'Italy', 'IT'),
('JAM', 'Jamaica', 'JM'),
('JEY', 'Jersey', 'JE'),
('JOR', 'Jordan', 'JO'),
('JPN', 'Japan', 'JP'),
('KAZ', 'Kazakhstan', 'KZ'),
('KEN', 'Kenya', 'KE'),
('KGZ', 'Kyrgyzstan', 'KG'),
('KHM', 'Cambodia', 'KH'),
('KIR', 'Kiribati', 'KI'),
('KNA', 'Saint Kitts and Nevis', 'KN'),
('KOR', 'South Korea', 'KR'),
('KWT', 'Kuwait', 'KW'),
('LAO', 'Laos', 'LA'),
('LBN', 'Lebanon', 'LB'),
('LBR', 'Liberia', 'LR'),
('LBY', 'Libya', 'LY'),
('LCA', 'Saint Lucia', 'LC'),
('LIE', 'Liechtenstein', 'LI'),
('LKA', 'Sri Lanka', 'LK'),
('LSO', 'Lesotho', 'LS'),
('LTU', 'Lithuania', 'LT'),
('LUX', 'Luxembourg', 'LU'),
('LVA', 'Latvia', 'LV'),
('MAC', 'Macao', 'MO'),
('MAF', 'Saint Martin', 'MF'),
('MAR', 'Morocco', 'MA'),
('MCO', 'Monaco', 'MC'),
('MDA', 'Moldova', 'MD'),
('MDG', 'Madagascar', 'MG'),
('MDV', 'Maldives', 'MV'),
('MEX', 'Mexico', 'MX'),
('MHL', 'Marshall Islands', 'MH'),
('MKD', 'Macedonia', 'MK'),
('MLI', 'Mali', 'ML'),
('MLT', 'Malta', 'MT'),
('MMR', 'Myanmar [Burma]', 'MM'),
('MNE', 'Montenegro', 'ME'),
('MNG', 'Mongolia', 'MN'),
('MNP', 'Northern Mariana Islands', 'MP'),
('MOZ', 'Mozambique', 'MZ'),
('MRT', 'Mauritania', 'MR'),
('MSR', 'Montserrat', 'MS'),
('MTQ', 'Martinique', 'MQ'),
('MUS', 'Mauritius', 'MU'),
('MWI', 'Malawi', 'MW'),
('MYS', 'Malaysia', 'MY'),
('MYT', 'Mayotte', 'YT'),
('NAM', 'Namibia', 'NA'),
('NCL', 'New Caledonia', 'NC'),
('NER', 'Niger', 'NE'),
('NFK', 'Norfolk Island', 'NF'),
('NGA', 'Nigeria', 'NG'),
('NIC', 'Nicaragua', 'NI'),
('NIU', 'Niue', 'NU'),
('NLD', 'Netherlands', 'NL'),
('NOR', 'Norway', 'NO'),
('NPL', 'Nepal', 'NP'),
('NRU', 'Nauru', 'NR'),
('NZL', 'New Zealand', 'NZ'),
('OMN', 'Oman', 'OM'),
('PAK', 'Pakistan', 'PK'),
('PAN', 'Panama', 'PA'),
('PCN', 'Pitcairn Islands', 'PN'),
('PER', 'Peru', 'PE'),
('PHL', 'Philippines', 'PH'),
('PLW', 'Palau', 'PW'),
('PNG', 'Papua New Guinea', 'PG'),
('POL', 'Poland', 'PL'),
('PRI', 'Puerto Rico', 'PR'),
('PRK', 'North Korea', 'KP'),
('PRT', 'Portugal', 'PT'),
('PRY', 'Paraguay', 'PY'),
('PSE', 'Palestine', 'PS'),
('PYF', 'French Polynesia', 'PF'),
('QAT', 'Qatar', 'QA'),
('REU', 'Réunion', 'RE'),
('ROU', 'Romania', 'RO'),
('RUS', 'Russia', 'RU'),
('RWA', 'Rwanda', 'RW'),
('SAU', 'Saudi Arabia', 'SA'),
('SDN', 'Sudan', 'SD'),
('SEN', 'Senegal', 'SN'),
('SGP', 'Singapore', 'SG'),
('SGS', 'South Georgia and the South Sandwich Islands', 'GS'),
('SHN', 'Saint Helena', 'SH'),
('SJM', 'Svalbard and Jan Mayen', 'SJ'),
('SLB', 'Solomon Islands', 'SB'),
('SLE', 'Sierra Leone', 'SL'),
('SLV', 'El Salvador', 'SV'),
('SMR', 'San Marino', 'SM'),
('SOM', 'Somalia', 'SO'),
('SPM', 'Saint Pierre and Miquelon', 'PM'),
('SRB', 'Serbia', 'RS'),
('SSD', 'South Sudan', 'SS'),
('STP', 'São Tomé and Príncipe', 'ST'),
('SUR', 'Suriname', 'SR'),
('SVK', 'Slovakia', 'SK'),
('SVN', 'Slovenia', 'SI'),
('SWE', 'Sweden', 'SE'),
('SWZ', 'Swaziland', 'SZ'),
('SXM', 'Sint Maarten', 'SX'),
('SYC', 'Seychelles', 'SC'),
('SYR', 'Syria', 'SY'),
('TCA', 'Turks and Caicos Islands', 'TC'),
('TCD', 'Chad', 'TD'),
('TGO', 'Togo', 'TG'),
('THA', 'Thailand', 'TH'),
('TJK', 'Tajikistan', 'TJ'),
('TKL', 'Tokelau', 'TK'),
('TKM', 'Turkmenistan', 'TM'),
('TLS', 'East Timor', 'TL'),
('TON', 'Tonga', 'TO'),
('TTO', 'Trinidad and Tobago', 'TT'),
('TUN', 'Tunisia', 'TN'),
('TUR', 'Turkey', 'TR'),
('TUV', 'Tuvalu', 'TV'),
('TWN', 'Taiwan', 'TW'),
('TZA', 'Tanzania', 'TZ'),
('UGA', 'Uganda', 'UG'),
('UKR', 'Ukraine', 'UA'),
('UMI', 'U.S. Minor Outlying Islands', 'UM'),
('URY', 'Uruguay', 'UY'),
('USA', 'United States', 'US'),
('UZB', 'Uzbekistan', 'UZ'),
('VAT', 'Vatican City', 'VA'),
('VCT', 'Saint Vincent and the Grenadines', 'VC'),
('VEN', 'Venezuela', 'VE'),
('VGB', 'British Virgin Islands', 'VG'),
('VIR', 'U.S. Virgin Islands', 'VI'),
('VNM', 'Vietnam', 'VN'),
('VUT', 'Vanuatu', 'VU'),
('WLF', 'Wallis and Futuna', 'WF'),
('WSM', 'Samoa', 'WS'),
('XKX', 'Kosovo', 'XK'),
('YEM', 'Yemen', 'YE'),
('ZAF', 'South Africa', 'ZA'),
('ZMB', 'Zambia', 'ZM'),
('ZWE', 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `email_list`
--

DROP TABLE IF EXISTS `email_list`;
CREATE TABLE IF NOT EXISTS `email_list` (
  `email_id` int NOT NULL AUTO_INCREMENT,
  `direct_email` varchar(255) NOT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `sic_coad` varchar(255) DEFAULT NULL,
  `employee_range` varchar(255) DEFAULT NULL,
  `revenue_range` varchar(255) DEFAULT NULL,
  `job_lavel` varchar(255) DEFAULT NULL,
  `job_function_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email_list`
--

INSERT INTO `email_list` (`email_id`, `direct_email`, `contact_name`, `company`, `sic_coad`, `employee_range`, `revenue_range`, `job_lavel`, `job_function_uri`, `country`, `city`, `type`, `create_date`) VALUES
(22, 'desytanud@mailinator.com', 'Boris Herring', 'Ortega and Bradford LLC', '141', '3', '19', 'Omnis eveniet magna', 'manager', 'Dominican Republic', NULL, NULL, '1970-03-16'),
(20, 'huba@mailinator.com', 'Kasimir Mccormick', 'Cooper and Wong LLC', 'Enim quis duis earum', '44', '78', 'Inventore qui itaque', 'business', 'Azerbaijan', 'Qui dolores exercita', 'business', '2001-01-10'),
(1, 'ginynyfel@mailinator.com', 'Calista Flynn', 'Herring and Gutierrez Plc', 'Consequatur similiq', '1', '140000', 'VIP', 'director', 'Velit sunt proident', 'Voluptate similique ', 'job-levels', '2005-04-13'),
(2, 'Monaem@gmail.com', 'Ismail', 'SEO EXPATE BANGLADESH', 'SEOBD03', '500', '5000000', 'VVIP', 'non-manager', 'Bangladesh', 'Mymanshingh', 'job-levels', '2023-09-14'),
(4, 'wusuvuwi@mailinator.com', 'monaem ss', 'Seo', 'Sic 02', '400', '400000', 'WEB DEVELOPER', 'vp', 'Bangladesh', 'Sherpur', 'job-levels', '2023-09-17'),
(3, 'regewe@mailinator.com', 'Camden Clemons', 'Hicks Sparks Associates', 'bg41', '43', '14000', 'A', 'manager', 'India', 'Kolkata', 'job-levels', '2023-09-16'),
(5, 'vrkm55@gmail.com', 'Rsm Monaem', 'kinboekhanei', '5245', '54', '54', 'WEB DEVELOPER', 'C-Level', 'Bangladesh', 'Sherpur', 'job-levels', '2023-09-16'),
(6, 'wolaxela@mailinator.com', 'Uma Melton', 'Beard Ward Associates', 'Occaecat consequat ', '30', '89', 'Velit mollitia ullam', 'civil', 'Saepe anim eaque vol', 'Qui adipisci eos co', 'realstate', '1996-06-26'),
(14, 'majeburyj@mailinator.com', 'Octavia Mejia', 'Leonard and Clayton Inc', 'Duis sint ipsa et ', '93', '85', 'Dolorem eos asperio', 'ceo', 'Saepe anim eaque vol', 'Doloribus enim volup', 'realstate', '1998-01-18'),
(13, 'qawe@mailinator.com', 'Fiona Hodges', 'Levy and Moses Traders', 'Porro autem illum n', '29', '5', 'Magni voluptas eos d', 'civil', 'Anim asperiores expl', 'Fugiat molestiae qui', 'realstate', '2008-06-16'),
(21, 'bajireba@mailinator.com', 'Kelly Martin', 'Schneider Stephens Co', 'Totam est eveniet ', '2', '70', 'Repellendus Fugit ', 'ceo', 'Botswana', 'Qui voluptates et cu', 'job-titles', '1982-01-09');

-- --------------------------------------------------------

--
-- Table structure for table `email_list_database_price`
--

DROP TABLE IF EXISTS `email_list_database_price`;
CREATE TABLE IF NOT EXISTS `email_list_database_price` (
  `email_list_database_id` int NOT NULL AUTO_INCREMENT,
  `package_name` varchar(255) NOT NULL,
  `job_function_uri` varchar(255) NOT NULL,
  `email_list_database_price` varchar(255) NOT NULL,
  `number_of_leads` varchar(255) NOT NULL,
  `file_download_link` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`email_list_database_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email_list_database_price`
--

INSERT INTO `email_list_database_price` (`email_list_database_id`, `package_name`, `job_function_uri`, `email_list_database_price`, `number_of_leads`, `file_download_link`, `status`) VALUES
(11, 'Gold', 'vp', '452', '54245245', 'http://103.145.112.179/book_your_data_old.rar', 'published'),
(12, 'Gold C', 'c-level', '315', '252', 'http://103.145.112.179/book_your_data_old.rar', 'published');

-- --------------------------------------------------------

--
-- Table structure for table `footer_link`
--

DROP TABLE IF EXISTS `footer_link`;
CREATE TABLE IF NOT EXISTS `footer_link` (
  `id` int NOT NULL AUTO_INCREMENT,
  `perma_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'If(position == 5 ){Permalink will-> Level}else{Pernalink}',
  `name` varchar(255) NOT NULL,
  `position` int NOT NULL COMMENT '1=first,2=Second,3=third,4=fourth,5=fifth',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footer_link`
--

INSERT INTO `footer_link` (`id`, `perma_link`, `name`, `position`) VALUES
(1, 'email_list_builder', 'Online List Builder', 1),
(2, 'about_us', 'About Us', 2),
(3, 'contact_us', 'Contact', 2),
(4, 'pricing', 'Pricing', 2),
(5, 'email_list_database/cfo', 'CFO', 4),
(6, 'email_list_database/tour-operators-travel-agencies', 'Travel Agencies', 4),
(7, 'email_list_database/fitness-spa-clubs', 'Fitness Spa Clubs', 4),
(8, 'email_list_database/manufacturing', 'Manufacturing', 4),
(9, 'email_list_database/engineering', 'Engineering', 4),
(10, 'events', 'Events', 3),
(11, 'resources', 'Resources', 3),
(12, 'blog', 'Blog', 3),
(13, 'case-study-vsma', 'Case Study', 3),
(14, 'pages/faq', 'FAQ', 3),
(15, 'sitemap', 'Sitemap', 3),
(16, 'pages/our-guarantees', 'Our Guarantees', 2),
(17, 'community-relations', 'Community Relations', 2),
(18, 'external', 'External', 2),
(19, 'pages/press-room', 'Press Room', 2),
(20, 'careers', 'Careers', 2),
(21, 'how-to-build-an-email-list', 'How To Build A List', 2),
(22, 'gdpr-ready', 'GDPR Ready', 2),
(23, 'ccpa-ready', 'CCPA Ready', 2),
(24, 'ready_made_lists/job-levels', 'Lists By Job Levels', 1),
(25, 'ready_made_lists/job-titles', 'ists By Job Titles', 1),
(26, 'ready_made_lists/job-functions', 'Lists By Job Functions', 1),
(27, 'ready_made_lists/industries', 'Lists By Job industries', 1),
(28, 'ready_made_lists/healthcare', 'Healthcare Professionals', 1),
(29, 'ready_made_lists/international', 'International', 1),
(30, 'ready_made_lists/realstate', 'Real Estate Lists', 1),
(31, 'Washington', '1348 Florida Ave. NW, Washington, DC, 20009, US', 5),
(32, 'New York', '2 Wall Street, New York, NY, 10005', 5),
(33, 'Istanbul', 'Arifipasa Sok. 4/4 Bebek, Istanbul, 34342, TR', 5),
(34, 'London', '2/8 Victoria Avenue, Bishopgate, London EC2M 4NS, UK', 5),
(36, 'P', '(866)-824-6163', 5);

-- --------------------------------------------------------

--
-- Table structure for table `job_function_uri`
--

DROP TABLE IF EXISTS `job_function_uri`;
CREATE TABLE IF NOT EXISTS `job_function_uri` (
  `job_function_id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'job-levels',
  `job_function` varchar(255) NOT NULL,
  `job_function_uri` varchar(255) NOT NULL,
  `job_function_desc` longtext NOT NULL,
  `job_function_details` longtext NOT NULL,
  `job_function_img` varchar(255) NOT NULL,
  `job_function_price` int NOT NULL,
  `job_function_emails_numbers` int NOT NULL,
  `job_function_number_of_leads` int NOT NULL,
  `last_update_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`job_function_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_function_uri`
--

INSERT INTO `job_function_uri` (`job_function_id`, `type`, `job_function`, `job_function_uri`, `job_function_desc`, `job_function_details`, `job_function_img`, `job_function_price`, `job_function_emails_numbers`, `job_function_number_of_leads`, `last_update_date`) VALUES
(64, 'job-levels', 'Director', 'director', 'Are you looking to make better connections with key influencers who would be both interested in and ready to decide on integrating your company\'s products into their routine? Find directors\' emails, phone numbers, and more and start effectively marketing to them with this list!', 'An effective marketing campaign is all about reaching out to the right people. Find key influencers with Bookyourdata.com and market to people who have the authority to make decisions right away. This can boost your sales and lead to more deals. With this accurate, affordable, and verified directory, you can come into contact with the high-level people who care about their company: directors.\n\nOften managing teams of managers or whole departments and working directly with C-level management and executives, directors often have a hands-on approach to improving the functions of their aspect of a business. This is an important job level to get in touch with because they often have just enough decision-making power without the pressures of managing an entire institution. These are senior-level, experienced employees in the corporate world working hard to improve their areas in a company.\n\nFind the people who can make your product or service go from good to great with Bookyourdata.com\'s list of directors\' emails, phone numbers, and more! If you\'re looking for a targeted email list that can help you get in touch with key influencers who would be interested in your product or service, this is it. You can build an effective marketing campaign using our email database of directors and see high response rates. Browse our pre-built lists or create your own custom list to ensure you reach out to your target market. You\'ll have all the information you need at your fingertips—no more digging around on the internet for outdated contact info. This list is updated monthly and verified by real humans. It\'s so easy to use that you could start building your email marketing campaign in seconds!\n\nWith this helpful, ready-made list, there are several different ways that you could reach out. You could conduct more effective, targeted email marketing. You could call, as our list also has phone numbers. You could even conduct a direct mail campaign. It\'s up to you! With so much information at your disposal, networking can be that much easier and more effective. Download this list now!', 'director-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(63, 'job-levels', 'VP', 'vp', 'Get in touch with this group of high-level movers and shakers easily with this VP contact list. You\'ll have all of the information you need to reach out to vice presidents: emails, phone numbers, company information, and more. Contact VPs today!', 'Vice presidents have great influence over a company without the enormous pressure of being the sole leader. They\'re left in charge of major branches and departments of a company. While managing groups of people from a high place in the hierarchy of a company, they still often have the time to work on building stronger business-to-business (B2B) relationships. If you want to talk to the people who have enough influence to make changes while often still having a fair amount of interest in learning about and working with your company, choose this data product to help start your business marketing campaign.\r\n\r\nVice presidents often are the sole decision-makers for a whole section of a company, working underneath CEOs, managing directors, or presidents. They are often senior employees with many years of experience in their field and are constantly looking to improve their part of a company in various ways.\r\n\r\nYou can easily both find and reach out to this group, which is very high on the corporate totem pole. Pull yourself up the corporate ladder and speak to the people who would most likely be interested in your company\'s products or services. This is a pre-built product and ready for you to download now!', 'vp-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(62, 'job-levels', 'C-Level', 'c-level', 'If you want to make stronger connections with other businesses, your goal should be to get in touch with the real decision-makers at companies. Luckily, you can do that with this list. Find CEOs, CFOs, and many other C-level employees in one directory!', 'Wouldn\'t it be great if you could cut through the red tape and speak to people who would be most likely to make a decision regarding your product? With this pre-built list from Bookyourdata.com, you can. These are some of the most highly sought-after contacts out there: an extensive list of C-level executives in one reliable, downloadable database. It\'s a database that you can pull, integrate into your CRM, and start using today. This is one of our customers\' favorite ready-made data products, with all of the information you need to get started, from C-level executives\' emails to phone numbers to addresses to company hierarchy information.\r\n\r\nWhen people say \"C-level,\" they often mean the key decision-makers at a company with the title \"chief.\" A chief executive officer, or CEO, for example, is the head of a company. Other chiefs often either sit on the board of a company or have major influence over company functions. Some of the important people on this email list include CEOs, chief financial officers (CFOs), and chief operations officers (COOs). Chief marketing officers (CMOs) and chief information officers (CIOs) are also important, especially in select industries. (Please note that if you are targeting one type of C-level executive, such as CEOs, you can find a separate list for them under the job title section.) Pull this great list of the top people in the corporate world today!\r\n\r\nImagine the most frustrating scenario possible. You\'ve taken the time to create a killer email campaign, but the only people responding are secretaries and interns—the people who aren\'t making any decisions. Sure, you can keep talking to them, hoping someone from the C-suite will notice your email in their inbox and respond. But how much time are you really willing to waste? With our C-level contacts email list, you\'ll have access to the email addresses of people who really matter. You can market directly to a CEO or any other type of executive-level manager by purchasing a list of all the C-suite execs you need.\r\n\r\nIt\'s time to cut out all gatekeepers from your contact list and get straight to the C-suite execs using our C-level contacts email database. Bookyourdata allows you to create targeted email lists in seconds. If you want to make stronger connections with other businesses, your goal should be to get in touch with the real decision-makers at companies. Luckily, you can do that with this list. Find CEOs, CFOs, and many other C-level employees in one directory.', 'c-level-email-list-sample.jpg', 80, 5000, 250, '2023/10/01'),
(2, '', 'HR', 'hr', 'Network with professionals using our ready-made human resources list, a huge directory of potential sales leads, including phone numbers, emails, job titles, and more! Find and market to those working in HR departments at many different companies and institutions now using our directory.', 'Human resources is a multifaceted, nuanced, and ever-changing field with many different needs. Often dealing with the organization of confidential employee information, providing benefits and pay, managing onboarding and terminations, or taking care of many other important business functions, highly qualified HR managers and professionals must use many types of organizational software, services, or tools.  Bookyourdata allows you to build a targeted email list in seconds. Network with professionals using our ready-made human resources list, a vast directory of potential sales leads, including phone numbers, emails, job titles, and more! Find and market to those working in HR departments at many different companies and institutions now using our directory. You can find just the right audience for your next project by browsing this list of human resources contacts. This is the perfect database for you if you\'re looking to directly engage with HR staff—personnel directors, personnel managers, benefits managers, talent acquisition directors, and recruiters. This database comes with updated information, so you can be sure you\'re reaching the right people every time. Whether you\'re looking for HR staff at small local businesses or HR directors at large corporations, we need to start your next project today! If you have a solution that can help companies with human resource management (HRM), let them know about it with this ready-to-download HR email list. This targeted HR contacts database is pre-built and ready for you to integrate into your CRM moments after purchasing. It contains the key contact information of professionals working within human resources at multiple organizations across many industries. Find better leads and start making connections. Remember that we don\'t provide generic email addresses (such as hr@example.com), so you\'ll be able to build stronger business-to-business (B2B) relationships by being able to email leads with direct contact information. This verified human resources email list also includes address information, so you can use it as your HR mailing list as well.  Bookyourdata directory helps people save time researching their contacts. We want to help you network with professionals in the H.R. field. With our directory, you can get a huge email listing of H.R. department contacts in seconds and start marketing to them. Our definition of \"huge\" is over 100,000 listings from the U.S. alone—and we\'re constantly adding more. Many of those listings are for people working in government agencies or Fortune 500 companies. The rest of the listings are for smaller companies and individual businesses. With so many contacts available on our site, you can easily find the most likely interested in your products or services. Use this accurate list to make sure they hear about what you offer! Email is the most effective way to reach out to human resources professionals. Whether you\'re trying to sell your company\'s H.R. software, recruit new employees, or market your H.R. services. You can buy a targeted email list from Bookyourdata, including phone numbers and job titles, company size, and industry type. The Bookyourdata email database is the fastest way to build an accurate email list. Start marketing to HR managers, staff, or even senior executives now. To narrow your sales leads even further, feel free to customize and build your own targeted human resources list with our list-builder tool. Buy this premium ready-to-download database if you want to communicate with HR decision-makers!   Resources: The Role of HR, Issues in HR, SHRM - Edited by Gary Taylor Email\'s Evolution', 'hr-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(1, 'job-titles', 'CEO', 'ceo', 'Yes, you can get the direct contact information of chief executive officers! Pull a huge, human-verified contact list of CEO emails and start leveraging that data as part of your marketing outreach. With this pre-built CEO database, you can jump to the top with direct and accurate email addresses that will energize your next B2B marketing campaign.', 'Chief executive officers (CEOs) are the most important people in a company. They lead, manage, coordinate, and are responsible for big managerial decisions. If you want to network with the people who have the power and authority to actually make important decisions, then this premium CEO email list is for you. It\'s simply how to contact CEOs with direct marketing. Too often, smaller companies and start-ups are forced to talk with people who don\'t have the power to make changes. If you want your business-to-business (B2B) marketing campaign to be successful, you need an accurate, targeted list of actionable sales leads. These heads of companies are the people to talk to; they can make changes and initiate key business relationships.\r\n\r\nWith this CEO mailing list, you can select the right CEOs that fit your ideal buyer persona. You can reach the most successful business leaders in the world and make them interested in your products or services. It\'s easy to target the exact CEOs that you want to reach with our CEO email database, which is updated regularly and contains accurate, verified data that is guaranteed. If you\'re looking for a CEO mailing list, this one is unique in the fact that it can be customized for any industry. Want to reach CEOs in the tech industry? No problem. What about retail? That\'s easy too. What about manufacturing? We have that covered as well! Any business from financial services to healthcare can leverage this database of CEOs.\r\nOur CEO business contact list is not only one of the most comprehensive databases you\'ll find anywhere, but it\'s also one of the most trusted. We don\'t just scrape data from random websites but we create our CEO contact list by pulling information from trusted public sources, like company annual reports and SEC filings. Then we cross-check the business contact data with other sources to give you the most complete and accurate names, emails, phone numbers, and more that you can\'t find anywhere.\r\nGet access to this invaluable resource with just a few clicks. Once you\'ve purchased the CEO email list, you can download it in its entirety as a CSV file within minutes. Each file contains complete details about each CEO\'s personal and professional life. Your marketing team can use these lists immediately as they come. All you need to do is add them to your CRM or email software and start connecting. Our B2B CEO marketing lists work well with any CRM system, so we won\'t slow down your process when you choose us as a partner.\r\nIn this ready-to-download contact list, you can find an organized directory of CEO phone numbers, emails, and names across companies and institutions. Bookyourdata.com offers this verified CEO database at an amazingly affordable price while still maintaining accuracy. Use our targeted lists to contact leads who also happen to be the most important group of leaders in the corporate world.\r\n\r\nWith this pre-built CEO mailing list, your marketing efforts will be more effective because you\'ll be connecting with businesses\' top decision-makers, especially if you identify your target market. Buy our real, valuable sales leads and find CEO email addresses online right now, or continue to narrow your audience to your industry or area with our list-builder tool. Connect with real decision-makers by reaching to the top of the corporate ladder. Pull a list of CEO email addresses today!\r\n\r\nResources: What CEOs Do, CEO News, CEO Magazine - Edited by Gary Taylor Other articles by Gary Taylor Computer History, Business Online', 'UMmCjsIHPt.jpg', 89, 5000, 250, '2023/10/01'),
(4, '', 'COLLEGES UNIVERSITIES', 'colleges-universities', 'Colleges and universities can be contacted today with the help of our pre-built list of college emails and contact directory! Buy a college email database containing direct emails, phone numbers, and more and get in touch with administrators and decision-makers in higher education now!', 'Find out why you should buy our colleges email list. This video shares expert tips on generating leads for your B2B business.\r\n\r\nCollege administrators, professors, department heads, and other key decision-makers are difficult to track down sometimes. The good news is that we\'ve done some of the work for you with our College universities email address lists. We\'ve made it easy to target the right people at universities of all sizes – private or public – schools across the nation as well as research institutes, think tanks, and other academic organizations with our verified college universities email marketing list.\r\nFind college administrators, professors, department heads, and key decision-makers with the help of this university email database. Colleges and universities, public and private, have a lot of influence, not only on their students, but on their communities. To start talking to the key points of contact at numerous higher education institutions, simply download this verified university email list. College mailing lists like this rarely double as directories of non-generic email addresses, as well as accurate phone directories. With one organized university mailing list from Bookyourdata.com, you can get in touch with your target audience in many different ways, as it includes all of the important contact information: emails, phone numbers, addresses, titles, and more.\r\n\r\nOur college email list can be pulled right into your CRM. With Bookyourdata.com\'s university email address list, you can find the highly qualified people who would be most interested in your product and start marketing to them right away. In a few minutes, use this college email address list to call or email leads who are influential with the group your business needs to reach.\r\n\r\nThis affordable college mailing list is for those looking to market their product or service to colleges and universities, whether that item be synthetic turf for a stadium, a new line of textbooks, research equipment, or something else that\'s relevant to those in higher education. Our premium mailing list for colleges enables you to directly contact professors and administrators who may be interested in your product.\r\n\r\nBy downloading this college university email database, you can contact these higher education institutions directly to discuss how your products or services could benefit them. The higher education community can also be an excellent source of new customers for B2B businesses since they often oversee large budgets. If you are selling products or services that can help educators, this university email database is essential. Reach out to key decision-makers like heads of departments, who frequently have control over their budgets.\r\n\r\nDownload it and start connecting with your target B2B audience: professionals working at a university or college. Mail list options can also be crafted by using our build-a-list tool. Build your own, customized list of targeted sales leads or purchase this ready-to-download data product now!', 'colleges-universities-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(5, 'healthcare', 'PHARMACEUTICAL', 'pharmaceutical', 'The huge, ever-growing pharmaceutical industry is full of big names, influential managers, and key administrators. Find pharmaceutical business contacts with the help of this pre-made, ready-to-download data product from Bookyourdata.com! Contact the right people with our pharmaceutical email database now.', 'Find out why you should buy pharmaceutical industry email list. This video shares expert tips on generating leads for your B2B business.\r\n\r\nDo you need sales-generating business-to-business (B2B) leads? Don\'t worry, because we have the prescription: an accurate and reliable pharmaceutical contact directory. Look up the key executives, managers, staff, administrators, and associates in the industry easily when you download this pharmaceutical email list, which contains everything from titles to phone numbers to emails to postal addresses. We have all of the sales leads you need to really start the conversation.\r\n\r\nThe pharmaceutical industry is big business, developing and distributing medications and drugs that help people all over the world to live better lives. With a pharmaceutical email list from Bookyourdata.com, you can reach managers, directors, and other key players in this expansive industry, so you can get your products and services right where they need to go. Our pharmaceutical email database contains information on thousands of individuals who work in all aspects of the pharma industry—from life science to drug development—so you can expand your marketing efforts for everything from health awareness campaigns to new medication research. You can connect with key decision-makers who are involved in purchasing medical supplies, upgrading medical equipment, or starting brand new projects within their businesses using our pharmaceutical B2B emails.\r\n\r\nAn unsuccessful business marketing campaign can be a bitter pill to swallow. Get the right information so that you can find and talk to those who may be most interested in your product: those in the pharmaceutical industry. Whether you plan to network with this high-end group or email leads who would be interested in a new drug, service, or health-care product, you can do so more efficiently by having a consolidated, consistent contact database.\r\n\r\nDon\'t waste your time with an outdated, inaccurate pharmaceutical email list. Bookyourdata.com has the most up-to-date contacts for pharmaceutical businesses that you need to grow your outreach and sales. These pre-made lists of pharmaceutical companies include the names, titles, email addresses, mailing addresses, phone numbers, and fax numbers of important decision-makers in the industry. The people on this list are ready to hear about your products or services because we only include accurate data for active business professionals who have been verified and updated. We take care of all the heavy lifting so that you can focus on connecting with clients from day one.\r\n\r\nDownload this pharmaceutical mailing list today and you can integrate it into your CRM and get started within minutes. Start contacting the right people with this already-built product, or feel free to find another prescription for your marketing needs with our innovative list-builder tool. Our human-verified email and contact directories can help jump-start your campaign. Buy it and start making valuable contacts within the \"pharma\" industry now!', 'pharmaceutical-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(3, 'healthcare', 'ATTORNEY', 'attorney', 'Download our accurate, human-verified list of lawyers\' emails, phone numbers, and more using Bookyourdata.com. This pre-made attorney email database is full of direct contact information, so you can market specifically to legal advisers across firms.', 'Attorneys are responsible for a lot of the details that keep our world running. If you\'re planning to market your product or service to legal advisers, it\'s important to have an email list of attorneys that is accurate and up-to-date. The pre-made database of lawyers by Bookyourdata.com comes with direct contact information for lawyers across niches like Compliance, Policy Advisory, Personal Injury, Estate Planning, Bankruptcy, Intellectual Property, Employment, Corporate, Immigration, Criminal, Medical Malpractice, Tax, Family, Divorce, Contract, Civil Litigation and more.\r\n\r\nNetwork with highly qualified attorneys from multiple industries, businesses, and law firms. If you want to get a hold of attorneys, you don\'t have to sift through the contact information of less-qualified paralegals, legal aides, and office assistants. You can pull lawyers\' email addresses and contact information so that you can get in touch with them directly. This affordable attorney mailing list is one of our many pre-built data products and can be integrated into your CRM within minutes.\r\n\r\nThe attorney email list is a highly-responsive mailing list of legal professionals across the country. It\'s perfect for lawyers and legal marketers who want to reach out to attorneys and solicitors to build their networks or promote their services. This email database of lawyers can also benefit legal publishers, media companies, and other professionals who need to contact these individuals directly. So if you want to sell your office supplies, legal software, or other B2B products, this list is for you. You\'ll find attorneys who specialize in all sorts of law. Whether you\'re looking for real estate lawyers or medical malpractice solicitors, we\'ve got you covered.\r\n\r\nYou can also create a customized lawyer mailing list by selecting from hundreds of criteria options, including geographic information (like city and state), and more. All of our mailing lists are built from scratch to reach your target audience and grow your customer base. We provide 100% accurate data for lawyers, including their full name, mailing address, email address, telephone number, and fax number. All the information provided in our lawyer mailing list is updated regularly by our team of professionals so you can always rest assured that you\'re reaching the freshest prospects on the market.\r\n\r\nMake your case for your product, service, or business using our lawyer email list. Whether you plan to invite them to a networking event, coordinate groups of lawyers, email leads who are more likely to be interested in your product, or send other vital communication, our premium lawyers list can help. Using this list of attorneys, you can call, email, or send mail directly to lawyers. You can buy this ready-to-download list of unique, valuable sales leads, or you can customize attorney email lists to fit your specific audience.\r\n\r\nWhy choose Bookyourdata.com for your B2B marketing contact list needs? The evidence in favor of our attorney email database is overwhelming: We offer affordable, human-verified attorney mailing lists guaranteed to be at least 90% accurate. Who else can provide such a large-scale, business-focused, targeted list of attorney email addresses at such an amazing price? We rest our case.', 'attorney-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(6, 'job-functions', 'ADMISSION', 'admission', 'This extensive data product includes the contact information of individuals at admissions departments of several different companies, colleges, and institutions. If you want to reach out to admissions staff, directors, and professionals, pull this accurate, verified contact information now.', 'We all know that colleges and universities are the hotspots for students to learn and grow, but they\'re also home to some of the most important people in higher education. These are the people who make decisions about academic programs, admissions requirements, campus amenities, and so much more. They\'re the decision-makers who can approve your brand or product for their school when you reach out with a personalized email campaign. With our college email address list, you can contact the right people - admission managers, directors, and staff you want to reach out to and promote your product or service. The targeted database of VPs, directors and chief officers allows you to reach the decision-makers directly.\r\n\r\nQuickly pulling an email address list of the admissions departments of several institutions is easier and faster than ever with Bookyourdata.com. Use this ready-to-download directory to find the key points of contact in admissions departments and pull important contact information like emails, phone numbers, addresses, titles, names, and more. As a list of college email addresses, this data product can help networking business-to-business marketers, browsing seniors, and data analysts. It also provides a more robust lead list for really getting the conversation started.\r\n\r\nUsing this database of college contacts is like having access to an open door into each of these schools. Our specialized admissions email list of colleges gives you access to contact details for staff members in charge of college enrollment and admissions. These are highly targeted contacts within a particular field of interest. No matter what product or service you\'re promoting, if it\'s relevant to students or staff at these educational institutions, you can use our list to target the right people.\r\n\r\nRemember that we don\'t sell generic email addresses (such as admissions@example.edu). We only provide name-based emails, meaning that you\'ll be able to get in touch with admissions directors and staff directly. That personalized communication is integral to your success, whether you\'re networking with professionals, marketing a product, or simply asking for more information. Our college email address list of real human beings is also human-verified, meaning that the data has a higher accuracy than many competitors\'. Bookyourdata.com offers the best cost-to-quality ratio.\r\n\r\nWe can help you make real connections with those in admissions departments. Download this integral college email address list, or customize your data solution using our list-builder tool. Get started with contacting the right people today.', 'admission-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(65, 'job-levels', 'Manager', 'manager', 'Are you looking for a vast and affordable list of managers? Find key contact information, including managers\' emails, addresses, phone numbers, and much more, after pulling this accurate lead list today. Reach out to the management staff at institutions now!', 'The word many people think of when they think of the words \"responsible,\" \"business,\" and \"decision-maker\" is \"manager.\" With Bookyourdata.com, you can reach out to this reliable group synonymous with influence, decisions, and cooperation. This ready-made list is full of some of the most highly sought-after contacts in the business world: those in management. Pull the lead information of many different managers at a variety of institutions into one directory. By consolidating this vast list, you can find more people who would be influential enough to build a great business-to-business (B2B) relationship.\r\n\r\nThis pre-built list is full of managers\' emails and contact information and ready to download and use right away. If you want to market to managers via email, by calling, or even by mail, you can easily get it done. This management email list contains all of the information you need for a better campaign. The data is also human-verified, an amazing thing to find in this price range!\r\n\r\nManagers have a huge influence in corporate and nonprofit settings and often have similar concerns about organizing staff, completing projects, and training and assessing employees. If you have a new tool that can help them manage projects and employees better, let them know via email, phone, or mail with this accurate manager lead list today!', 'manager-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(66, 'job-levels', 'NON-MANAGER', 'non-manager', 'Get in touch with non-managers today with this accurate and affordable email list from Bookyourdata.com! Make sure your company has been heard about on the ground floor, too. Send non-managers emails, call them, or send mail with this verified information today.', 'With Bookyourdata.com, you can talk to professionals based on their job level with our ready-made databases. Sometimes, there are times you\'ll want to talk to the higher-ups who can make major decisions and deal with talking to other businesses every day, but sometimes, you\'ll want to talk to those working on the ground, trying to build a company\'s future. Teams of hard-working professionals in different industries may not be recognized as managers, but often, these experienced, senior people can have just as much sway. They are working to build an amazing company from the ground up, with specialized skills and administrative power.\r\n\r\nThese non-managers can be a vital group to market to for many businesses. Whether your aim is to market an office product, provide an outsourced service, or simply network with a spread-out group of hopeful and hard-working professionals in several industries, this list is for you. This non-manager lead list contains all of the information you need: emails, phone numbers, postal addresses, company information, department information, and more.\r\n\r\nThis is one of our many pre-built lead lists and is ready for you to download right away. If you want to market to non-managers working together to create a better company, use this list to communicate with them today.', 'non-manager-2-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(82, 'job-titles', 'canadian-cfo', 'CANADIAN CFO', 'Get instant access to a comprehensive, human-verified Canadian chief financial officer mailing list when you buy and download our pre-built CFO email database. Use this accurate B2B email list to find potential sales leads, develop stronger business connections, and boost your marketing campaign', 'Looking for a comprehensive Canadian CFO email list to help you reach your target audience? At bookyourdata, we\'ve already done the hard work—and now you can benefit from it. Our pre-built CFO mailing database gives you instant access to a comprehensive list of human-verified Canadian chief financial officers. Don\'t waste time trying to create a B2B email list from inaccurate sources your own. Instead, download our easy-to-use database to find potential sales leads, develop stronger business connections, and boost your marketing campaign. Also, our CFO mailing list offers advanced search filters that allow you to get specific about which people in which positions you want to connect with.\r\n\r\nCanadian chief financial officers (CFOs) are responsible for overseeing and managing a company\'s financial operations. To help connect you with these senior, C-level executives, we offer a premium business database that takes just minutes to download after purchase. Our CFO email list is the tool you need to make the most of your company\'s marketing efforts and to secure prosperous sales leads.\r\n\r\nOur ready-made chief financial officer mailing list contains essential contact information, such as verified phone numbers, direct email addresses, and more. With just a few easy steps, you can buy and download our business contact list and get in touch with industry professionals through email leads and other means of contact. You can also build your own Canadian CFO email database with our list-builder tool.\r\n\r\nOur Canadian CFO email list serves multiple functions. Use it as a mailing list to generate email leads or as a simple database of respected contacts in your target industry. With the contact information of highly-qualified senior executives, you can also build valuable B2B relationships, obtain sales leads, and increase your business\'s revenue.\r\n\r\nBuy and download our Canadian chief financial officers email database, integrate it into your CRM, and start seeing results today.', 'canadian-cfo-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(83, 'job-titles', 'CHIEF AND VP OF FINANCING', 'chief-and-vp-of-financing', 'A vice president of finance email database is the perfect investment for those who need to reach high- and c-level financial business executives for better B2B email marketing campaigns. Use our finance and investment executives email list to reach powerful finance VPs and senior executives.', 'The financial world is fast-paced and ever-changing; stay on top of it using this human-verified email list of CFOs and VPs of finance. Unlike our other lists organized by industry or department, this Chief Financial Officer email list contains direct contact information for financial professionals and financing VPs organized by job title. You\'ll be able to contact financing and investment executives across regions, corporations, and industries, including CFOs and those with the title of \"VP finance\". Climb the corporate ladder without having to dig for the right contacts. Leverage our financing vice presidents and CFO mailing list and effectively invest in your marketing campaign by reaching those in charge of business\'s finances. We\'ve done the work for you by consolidating senior and c-level contacts into one chief financial officer and VP of finance email database.\r\n\r\nIn charge of numerous financial decisions companies makes, these finance VPs are important professionals to have the ear of, especially if you\'re trying to promote your brand\'s organizational software, useful financial product, or financing and accounting service. They have a great deal of influence and may benefit from the products and services you\'re marketing. Contact them directly to get your brand and business in front of those who have the purchasing power. Buy our CFO and financing VP email database and use it to multiple ends: as a mailing list of vice presidents of finance, an email directory for your online campaigns, or as a cold-calling list for when you need a personal touch. Contacting VPs of finance is easier than ever with this organized, human-verified contact list from Bookyourdata.com!', 'chief-and-vp-of-financing-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(68, 'job-titles', 'CFO', 'cfo', 'Obtain an extensive directory of chief financial officers after downloading our pre-built CFO contact list. Pull names, numbers, emails, and more, and network within minutes. Our accurate CFO email list is the perfect tool for an effective B2B campaign!', 'Chief financial officers (CFOs) are very influential in many companies and corporations, with responsibility for all of the financial affairs of their institution. They are senior, C-level executives who often sit on a company\'s board and manage large-scale, sweeping changes within the business. If you want to market to a group who is directly involved in making major decisions, then definitely pull this expansive and accurate CFO email database. Office365 filtered version is also available for prospecting b2b leads!\r\n\r\nThis pre-built list of high-quality sales leads is comprised of CFOs and contains not only email addresses, but other means of contact, like phone and fax numbers. Using our affordable CFO mailing list, you can email leads effectively, marketing your accounting services, useful reporting software solution, or other finance-related product to a group who has power and influence to make choices that affect your business. This is also a great list for building strong B2B relationships with top-level executives at major companies. CFO is the 2nd most important position within top executives in a company. If you\'re looking for 1st one, which is CEO, you can check it out as well. Buy this targeted CFO list if you want to pull the contact information of CFOs across industries and companies with office 365 version as optional. Or you can create your own customized CFO email lists with our custom list-builder tool: Bookyourdata.com offers high-quality data regardless of which solution you choose with the professional email marketing etiquette.\r\n\r\nOur CFO email list gives you access to information about these financial leaders, including direct phone numbers and emails, so you can begin building relationships immediately. With this tool at your disposal, you can reach financial decision-makers quickly and easily—making it easier than ever to launch a successful B2B campaign. We are constantly updating our CFO contact list so that you have access to the most current information available on financial decision-makers. We want to help your business succeed, which is why we are proud to offer a high-quality product with up-to-date information.\r\n\r\nWhether you\'re hoping to connect with CFOs from all over the country, or from a select group of businesses and industries, bookyourdata.com has the solution for you. Our accurate and up-to-date CFO email list offers you an opportunity to reach out to any CFO in the country, helping you tailor your marketing strategy and target your audience in any way you can imagine. The best part is that it\'s already been verified! Simply download it and start networking immediately.\r\n\r\nOur CFO email list is the best you\'ll find on the web. We\'ve done all the hard work for you, so all that\'s left for you to do is download and use our extensive directory of chief financial officers in an instant. No more hours of research and no more long wait times—now you can pull names, numbers, emails, and more from our CFO email database and network within minutes. If you want to run a successful B2B campaign, a targeted email list like this one is the perfect tool for you.\r\n\r\nPurchase our human-verified, premium list of highly valuable CFO email addresses, download it, integrate it into your CRM, and start emailing, mailing, or talking with this exclusive group today!', 'cfo-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(69, 'job-titles', 'CIO, CTO', 'cio-cto', 'If you\'re marketing a software, hardware, or technological solution, it is important to contact the people who make IT-related decisions. Pull this extensive email database of CTOs and CIOs, and start emailing, calling, mailing, and networking with the real decision-makers!', 'Chief information officers (CIOs), who are sometimes referred to as chief technology officers (CTOs), are the top IT decision-makers at most companies. As the highest-ranking C-level executives for technological growth, they are a hardware or software company\'s point of contact. To get an extensive contact list of CTOs and CIOs at companies and institutions, purchase our verified, premium data product now.\r\n\r\nWhen you\'re marketing software, hardware, or a technological solution, it\'s important to contact the people who make IT-related decisions. Don\'t waste your time on the middlemen: pull this extensive email database of CTOs and CIOs, and start emailing, calling, mailing, and networking with the real decision-makers. Whether you\'re looking for technical managers and directors, chief VPs of the technical department, or anyone else in the technical department, we\'ve got you covered with our email list. We\'ve even included CISOs (chief information security officers) and other IT leaders in this list so you can really get down to business fast!\r\n\r\nThis CTO targeted email list has been thoroughly researched and organized by a team of data experts. Select from any number of demographic filters—location, job title, industry, and more—and we\'ll provide you with a list of names and email addresses of the decision-makers who fit your criteria. There are no outdated records in our database. We are constantly updating our information to ensure its accuracy and validity every week and updated monthly.\r\n\r\nThis CIO mailing list is useful in several capacities. For example, if you are hoping to make B2B sales regarding a new software product, server, mobile device, hardware product, technological system, or service, marketing directly to these sales leads may be very effective. If you are simply hoping to network with other major names in the technology industry, this would be a great list as well. As a whole, Bookyourdata.com\'s reliable email list of CIOs can help a business build better relationships with those in the technology and corporate world.\r\n\r\nIf you want to customize your own unique list that can help you find more leads, use our custom list-builder tool. However, if you want a ready-made, actionable list of those with the specific job title of CIO or CTO, buy this product now! Email leads with the power to make changes and make more sales with our ready-to-use CIO mailing list!', 'cio-cto-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(70, 'job-titles', 'CANADIAN CTOS, CIOS', 'canadian-ctos-cios', 'Find potential sales leads in seconds when you buy and download our Canadian chief technology officer (CTO) and chief information officer (CIO) email database. Obtain the names, numbers and addresses of industry professionals in your target audience with our B2B email list.', 'Connect with decision-makers at the forefront of technology and innovation with verified Canadian CTOs contacts. Bookyourdata Canadian CTOs business contact list is a comprehensive CTO and CIO email list that connects you with the best-of-the-best in Canadian technology. The contact data is an invaluable resource for companies who want to reach out to important contacts in Canada. Contact details such as phone numbers and email addresses are provided for each entry on this list, so you can reach out directly through multiple channels. This is the most accurate data available for the Canadian market, with 95% accuracy guaranteed. You can purchase only the contacts you need and use them for your marketing campaigns. It is also possible to customize your list by selecting specific industries or job titles to reach your target audience. The accuracy of this data will ensure that every contact you make will be ready and willing to speak with you about what they do best—technology.\r\n\r\nIT executives in Canada, such as chief technology officers (CTOs) and chief information officers (CIOs), possess business knowledge, leadership skills, and a strong understanding of technology. While a CTO is typically involved in the creation of technology to sell to customers, a CIO manages the infrastructure for business operations. Our Canadian CTO email list allows you to connect directly with these strategic thinkers with a primary objective to make more deals and secure sales leads.\r\n\r\nThis Canadian chief information officer mailing list contains numerous email leads as well as other means of communication. Our CTO and CIO email database contains important contact data like names, phone numbers, fax numbers, addresses, and more. When you buy and download our affordable and verified B2B email list, you can build a simple directory of highly qualified professionals in your target industry and leverage targeted sales leads.\r\n\r\nWe offer ready-made Canadian CIO and CTO email lists as well as access to our list-builder tool, which you can use to easily build your own business database containing expert chief information officers and chief technology officers narrowed down using factors such as company size and specific location. Buy and download our business contact list and begin pursuing sales leads today!', 'canadian-ctos-cios-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(71, 'job-titles', 'cmo', 'CMO', 'Market to C-level marketing executives from across the corporate and business world with the help of Bookyourdata.com\'s accurate, human-verified email list. CMOs are powerful points of contact with company-wide influence. Find and contact them with our pre-made directory now.', 'CMOs are strong points of contact with company-wide influence. It\'s a tough job, but someone has to do it. And if you\'re in sales, it\'s your job to find them and speak to them. You can make that job a little easier with the help of Bookyourdata.com\'s accurate, human-verified email list of C-level marketing executives from across the corporate and business world. We know that every company is different, and every business has its own need. We give you all the tools you need to build a targeted email list in seconds. Market to CMOs from your target location, industry, or even by their interests with the help of Bookyourdata.com. It\'s time to take control of your sales leads and level up your outbound efforts—find and contact CMOs.\r\n\r\nThis premium data product is full of those with the job title of chief marketing officer (CMO), not just marketing-related employees. Go straight to the top when you\'re building strong business-to-business relationships or trying to market your marketing-related products or services. Chief marketing officers often answer directly to the CEO and have the decision-making power to implement sweeping changes throughout an entire organization. With this ready-to-download email database, you can network with people who have the power to change policies, clients, and vendors.\r\n\r\nWith just a few clicks, your contact with Chief Marketing Officers will be as easy as pie. You will have access to their name, work email address, phone number, mailing address, etc. You\'ll be able to market directly to CMOs and save time finding new leads or manually updating old accounts. Whether you\'re looking for CMO sales leads or an email database of CMOs, we\'ve got what you need to take your marketing strategy further than ever before (and faster!).\r\n\r\nCMOs are often considered to be the voice of the customer. If you can help them market their company\'s products or services, increase brand recognition, analyze sales leads, or more accurately study their audience, then use this CMO email list to let them know. Because we not only provide emails but phone numbers, addresses, and other important data, you will have the tools to really get the conversation started. Find CMOs specifically right now with this specialized mailing list, or feel free to customize your own list of business-to-business (B2B) contacts with our list-builder tool.\r\n\r\nUsing accurate contact information from this CMO email list, you can email leads, talk to real decision-makers, mail them important documents, and encourage them to buy your product or use your service. There\'s a lot of power in being able to reach the right people with the right information, and this CMO mailing list allows you to reach the people in charge of marketing at major companies in the business world. Download this targeted list of CMOs and their key contact information within minutes and get started!', 'cmo-email-list-sample.jpg', 89, 5000, 250, '2023/10/01');
INSERT INTO `job_function_uri` (`job_function_id`, `type`, `job_function`, `job_function_uri`, `job_function_desc`, `job_function_details`, `job_function_img`, `job_function_price`, `job_function_emails_numbers`, `job_function_number_of_leads`, `last_update_date`) VALUES
(72, 'job-titles', 'coo', 'COO', 'Start the conversation with the right people with Bookyourdata.com’s ready-to-download, targeted contact list of chief operating officers (COOs). Communicate with the C-level executives who oversee day-to-day operations of a company. Purchase this list to find employees with the title of COO.', 'Few C-level employees have as much power as a COO. They are often the second in command at a company, directly reporting to the CEO. Chief operating officers (also sometimes referred to as operations directors or directors of operations) impact and can change a wide array of business functions. They compile strategies, policies, and goals and often are responsible for human resource management (HRM) functions. These executives can definitely implement changes and nurture new B2B relationships!\r\n\r\nWhen starting a new business, the right contacts can make all the difference. Ensure you have the right people to talk to with Bookyourdata.com\'s chief operating officer (COO) email list. This database includes COO email addresses to send your messages straight to the inbox of the person in charge of daily operations at a company. Our COO email list is pre-built and ready to download, so you can start using it as soon as you download it. All data is checked and validated by our experts before it\'s sent out, guaranteeing that every detail is accurate and up-to-date. You might think this type of targeted email list would be expensive. Still, we\'ve made our contacts affordable for small businesses, so you don\'t have to break the bank to reach your target audience. Select the number of connections you want from our list-builder tool on the left, and then download your list directly from the website! If you\'re looking for even more flexibility, try creating your own custom mailing list with our List Builder Tool. The tool allows you to select from more than 20 different search options.\r\n\r\nCommunicate and network with COOs directly with the help of our premium data product, an extensive COO directory complete with emails, phone numbers, and more. If you have a product or service that can help a chief operating officer manage the day-to-day operations of an organization, let them know with this email list. COO contact information is available right now as a pre-built list. Also, if you want to extend your reach to other C-level employees, you can build out your own customized list with the list-builder tool.\r\n\r\nBuy this product, download it, and start building connections with COOs at several major companies today with the help of our accurate, reliable data. With Bookyourdata.com, it\'s easier than ever to foster new B2B relationships.', 'coo-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(73, 'job-titles', 'FOUNDER ', 'founder', 'Connect with the individual who had the initial creative spark to establish a company. Network with founders from several companies and institutions with the help of this pre-built, premium contact list, which includes names, emails, phone numbers, and more!', 'If you\'re looking to create a strong marketing presence and grow your business, the Bookyourdata founders\' marketing list is the perfect place to start. The list includes contacts of entrepreneurs and small business owners who require a new solution to help them market their business. It also includes a breakdown of their company type, size, location and industry. Our founders\' business contacts are an excellent resource for entrepreneurs looking to grow their business by acquiring new partners or marketers selling their inventions. By targeting businesses in specific industries, you can reach out directly to these individuals with your product or service.\r\n\r\nFind and contact the people who laid the foundation for a company: the founders. With Bookyourdata.com\'s accurate contact list, you can also build the foundation for strong B2B relationships between companies and market your unique product or service to a company\'s philosophical leader. Start making new connections with founders across businesses and industries after downloading this extensive database.\r\n\r\nThe Founders marketing list by Bookyourdata is an excellent tool for any salesperson or marketer. It has all contacts of founders of numerous companies and institutions so you can market directly to them. We have a list-builder tool that allows you to search by specific industry or keyword to find the right person quickly. It also comes with an easy-to-use interface that allows you to filter the Founders contact database with over 20 criteria like location, age, and business type. We pride ourselves on providing high-quality data that is accurate and up-to-date. Our data is collected directly from the public database of founders of different companies and institutions and verified through our human team of data analysts.\r\n\r\nA founder had the determination to create and grow a business from a start-up. Perhaps you operate or are marketing for another start-up or small business; they can offer insight, help, and advice. Using this powerful data product, find those with the title of founder, not just a large, nameless list of employees. With this list, you can target your B2B marketing campaign, network, or simply communicate with the individuals in a business who had the vision and dedication to enable a business to become successful.\r\n\r\nPurchase this list to find founders\' emails, phone numbers, and other contact details, or for a more customized list, feel free to create your own solution with the list-builder tool. The founder email list is a pre-built data product, which is human-verified and ready to download now. Buy it and start connecting with like-minded people today.', 'founder-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(74, 'job-titles', 'OWNER, PARTNER, SHAREHOLDER', 'owner-partner-shareholder', 'Do you want to talk to the people who are the most concerned about a company’s growth? Download this verified list of business owners, partners, and key shareholders now and contact the people who have the power to make decisions.', 'Buy this email list of business owners and download a huge directory of valuable business-to-business (B2B) contacts. This contact list is full of people who have a real stake in their company: owners, partners, and major shareholders. Get valuable, accurate business owner contact information at an affordable price, and start communicating within minutes of downloading. This easy-to-use, ready-to-download data product is perfect for those looking to market to business owners or foster new B2B relationships.\r\n\r\nAs a business owner or service provider, you can\'t make money unless you know who to sell your product or services. We offer a verified list of business owners, partners, and key shareholders of both small and fortune 500 companies. Our list is updated every month, so you know you\'re getting the most up-to-date information on your prospects. You can be confident that the email addresses of each business owner or shareholder you\'re reaching out to are authentic and accurate—not just somebody\'s guesswork. The list has contacts for top decision-makers in public and private industries. Leverage the available information to have front door access to the people who are most concerned about their company\'s growth. They know that every dollar they spend on marketing is another dollar they\'re making back. With this verified list of contacts at your fingertips, you can spend less time searching for leads and more time closing deals with these potential customers.\r\n\r\nMembers of this list are committed to growing their business, which means they\'re looking for new ways to expand their operations. Use the contacts as an opportunity for you to showcase your products and services as helpful resources for these business owners\' growth efforts. We\'ve compiled this list using publicly available information from company websites and other sources. Our shareholders are some of the most influential people in the world. They have significant buying power, and they\'re always on the lookout for new products and services to invest. If you can get in front of them, they\'ll be more likely to buy from you than anywhere else. These are not just email addresses—they\'re real people who will respond when you reach out to them with your offer.\r\n\r\nThis list can help you jump-start your B2B marketing campaign, whether you\'re showing off a new product, talking about your services, or simply hoping to find new clients. Start-ups and small businesses can help to boost their sales with just a few clicks! And because our business owner email list is affordable, it also has a great ROI; our lists are both reasonably priced and human-verified, with accurate contact information. Either get started right away by downloading our pre-built list of business owners or feel free to customize your solution with our innovative list-builder tool.\r\n\r\nOur premium list of B2B contacts is ready for you to download within minutes right now. Use this list to find clients, make connections, and generate leads fast!', 'owner-partner-shareholder-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(75, 'job-titles', 'PRESIDENT ', 'president', 'Use Bookyourdata.com’s pre-built contact list of presidents to get in touch with the heads of companies and nonprofits. This database of contact details includes everything from emails to addresses to phone numbers. Find and contact presidents at numerous institutions now!', 'When it comes to networking and business-to-business (B2B) marketing, getting in touch with the people who actually have the power to make decisions is sometimes the hardest part. Don\'t get tangled in red tape! With Bookyourdata.com, you can pull a reliable list of key decision-makers full of accurate contact information of presidents at many companies, colleges, and organizations. Get in touch with the effective leader of an organization directly with our extensive data product.\r\n\r\nA company\'s president is the most important contact on your marketing list. If you want to get in touch with the head of a company or nonprofit, you need a list of email addresses that will help you reach them. Bookyourdata president email contacts are pre-built lists of email addresses for presidents, CEOs, and other top-tier executives in your industry. The database includes everything from emails to addresses to phone numbers so you can reach these influential people directly without having to wait for an assistant or secretary to connect you. Our president database saves you time and effort when it comes to marketing your product because it gives you instant access to all the information you need in one place. When you buy this product, it\'s yours forever. When you want to keep following up on future leads, they will be available whenever you need them.\r\n\r\nThis ready-made list of presidents\' contact details is human-verified and ready to download now. At an affordable price, get the right information so you can effectively launch your next B2B campaign. Whether you plan to market a new software solution to college presidents, find nonprofit organizations, or open up communications with new potential business clients, this email list of presidents can be an effective tool.\r\n\r\nWith Bookyourdata.com, you can either customize and create your own list with our list-builder tool or buy one of our pre-made lists, such as this one. This extensive directory, which includes those with the job title of president, is full of many different contacts that could result in a solid business relationship. Buy it, download it, and start contacting presidents in minutes!', 'president-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(76, 'job-titles', 'BOARD MEMBER, BOARD OF DIRECTOR, MEMBER OF THE BOARD', 'board-member-board-of-director-member-of-the-board', 'Directly communicate with the top decision-makers at major companies: those sitting on the board. Get the contact information of board members, including emails, phone numbers, addresses, and more, with Bookyourdata.com. Purchase this list and influence a company’s major influencers today.', 'Some of the most important companies and nonprofits feature a board of directors, board of managers, or board of trustees. Those sitting on the board have a great amount of power over an organization\'s actions. Board members effectively govern an organization. Within this contact list, which includes key contact information and titles, one may find CEOs, CFOs, large shareholders, and elected representatives. If you really want to help shape change, why not talk to the people who are in charge of making a business\'s most important decisions?\r\n\r\nStart emailing, calling, or otherwise networking with the top-ranking leaders of a company within minutes after downloading this affordable, easy-to-use database. This data product is one of Bookyourdata.com\'s many pre-built, human-verified contact lists, which you can use right away without paying additional hidden fees. Integrate it into your CRM and start communicating today. If you want to extend your reach even further, you can also create your own customized contact list with our innovative, dynamic list-builder tool.\r\n\r\nTo get a premium directory of company board members right away, purchase this pre-built list. You can get one step closer to making a sale with a C-level executive with just a few clicks!', 'board-member-board-of-director-member-of-the-board-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(77, 'job-titles', 'INVESTORS ', 'investors', 'Find funding with this targeted, accurate investor email list, full of information you need to make more personable business connections. Pulling from numerous companies and industries, this pre-made list contains those with the job title of investor.', 'One of the most difficult parts of going into business in the first place is finding the right investor or funder. Email lists from Bookyourdata.com can help connect you with those powerful decision-makers. Today, even within a few minutes, you can download a directory full of hard-to-reach angel investors\' contact information: direct emails, phone numbers, names, postal addresses, titles, and more! Shortly after downloading, you can pull the information into your CRM and start calling, emailing, or otherwise connecting with this lucrative group of investors!\r\n\r\nBookYourData.com\'s investor email lists will help you build a perfect, targeted marketing campaign. Our investors\' list is full of the information you need to make more personable business connections. If you\'re looking for a specific type of investor, we can help you narrow down your search and meet your goals. You can even choose the types of companies and industries that are represented in the list. The whole point is to find investors with whom you already have something in common. Our investor email address lists are perfect for any business that wants to find funding for its next project—from small local businesses to large international corporations. We\'ve done all the hard work of creating the list for you, so all you have to do is purchase it, download it, and start using it!\r\n\r\nEmail lists from Bookyourdata.com are human-verified, highly qualified, and at a much more affordable price than many of our competitors offer. We give you the tools to build stronger connections with the people who are important to your business. In this case, you can reach out to investors who decide whether or not to fund other businesses! This is the perfect tool for a well-recognized business looking to market their service or product or a new entrepreneur. Email list products can also be further narrowed with our customization feature, which allows you to build a list based on location, industry, function, or job level.\r\n\r\nWhen you\'re looking for funding, it\'s important to make connections that will be more personal than just a cold email out of nowhere. This targeted and accurate investor email list is full of the information you need to make those connections, so you can send emails to those who matter most—and get results. Our carefully constructed database pulls from numerous companies and industries including investment companies, investment offices, venture capital, VC, and private equity. There are plenty of options for everyone. It contains all the job titles you\'re looking for, including the investor. One of the qualities that set us apart from other companies is that we\'ve already vetted all our data sources for you—no more time wasted on leads that don\'t pan out! All our data is constantly updated, so you can be sure your list is accurate and relevant at all times. We also offer instant lookup tools; no more long waits while your request is processed (or worse yet, rejected). So what are you waiting for? Purchase your investor email list now and get started!\r\n\r\nCreate a customized list of potential backers, or just download this pre-made list to get started pulling investor contact information right away. Try it and get funding now!', 'investors-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(78, 'job-titles', 'chairman', 'CHAIRMAN ', 'Do you want a database full of accurate contact information of the most important people in a corporation: the chairperson of the board? Find chairmen and chairwomen easily with Bookyourdata.com’s pre-made contact directory, which contains emails, phone numbers, and more!', 'The chairperson is the most powerful person on a board of directors or board of managers at a company. These individuals have a high level of decision-making power. While being responsible for the board\'s activities, a chairman or chairwoman must bring up discussions on issues that require action. They are very important and influential people with the power to make real change.\r\n\r\nIf you want to market a useful product or foster growth-oriented business-to-business (B2B) relationships, it\'s very important for your company or your company\'s product to be discussed in the boardroom. This extensive list of contacts can help you get there. Our human-verified, premium directory of board leaders in multiple organizations can be the jumping-off point for your company to grow.\r\n\r\nDownload this list within a few minutes, integrate it, and start emailing, calling, or otherwise contacting the key influencers at a company: chairmen and chairwomen. Contact lists like this are often expensive, but our solution is affordable, offering the best quality/cost ratio. Buy this premium data product or feel free to design your own, customized solution with our innovative list-builder tool.\r\nMake sure your company is discussed at the next board meeting at major companies with Bookyourdata.com', 'chairman-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(79, 'job-titles', 'PARTNERS ', 'partners', 'Download an extensive email list of business partners now and start connecting with key decision-makers at many different corporations and organizations. This ready-made database of partners is the perfect tool for connecting with top executives and marketing your product.', 'Bookyourdata.com offers businesses the data they need to make strong B2B connections. In this extensive data product, which is ready to download right now, you can find a vast list of partners of many different organizations. It consolidates a vast group of powerful individuals into one downloadable database, which can be integrated into your CRM easily. With it, you can start contacting business partners within minutes. This is one of our many pre-built email lists, which contain not only emails but phone numbers, fax numbers, official titles, company information, addresses, and more. That means that your B2B marketing campaign can go beyond simple email blasts and can be further personalized with more direct information.\r\n\r\nBusiness partners are important people to get a hold of in almost any company. Many small and large businesses are partnerships because it is such an effective business structure. Because they have partial ownership, partners often have a lot of sway. Use this list to get in touch with those with the high-ranking status of partner at multiple firms, offices, companies, and organizations. Note that you can also further customize this list or use our list-builder application to create your own specific, targeted email list.', 'partners-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(80, 'job-titles', 'GENERAL MANAGER', 'general-manager', 'Download an accurate, premium list of high-value, decision-making contacts from Bookyourdata.com and make your next B2B marketing campaign more effective by targeting general managers. Communicate with those responsible for departments, projects, and stores after purchasing this list!', 'High-level general managers tend to be in charge of departments, below busier top executives, and can make key choices about the profitability of their area of a business. Within the retail and food industries, general managers often run a particular store or outlet. They tend to operate like business owners, making decisions, implementing changes, and increasing profits. These medium-level managers tend to focus on how they can improve their area of the business and can influence whole departments, stores, and major areas of the company. Depending on the structure of the company one is looking at, they may make sweeping changes that affect the whole company.\r\n\r\nTo start connecting with this important group within a company\'s structure, first, one must find accurate, detailed contact information about this group. Luckily, Bookyourdata.com can provide not only general managers\' emails but their phone numbers, departments, addresses, and more! This accurate, human-verified directory can help you get in touch with the right people and talk to those looking to positively change and grow their area of a company. Market your product to them, network with them, or simply foster new business relationships with them in relevant areas with the help of this premium, downloadable list.', 'general-manager-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(81, 'job-titles', 'CANADIAN CEO', 'canadian-ceo', 'Leverage an accurate Canadian chief executive officer (CEO) email database when you buy and download this ready-made B2B email list today! Pull a targeted CEO mailing list, secure sales leads, and begin networking right away with corporate leaders in Canada, in any industry.', 'Canadian chief executive officers are responsible for making major corporate decisions, implementing high-level strategies, and overseeing operations. With this CEO email database, you can contact these major decision-makers directly. Our business contact list is comprised of essential data, including telephone numbers and direct email addresses. Integrate potential sales leads into your CRM today with our human-verified Canadian chief executive officers email list.\r\n\r\nOur pre-built chief executive officer email list is full of potential sales leads just waiting to hear about your products and services. Buy and download our ready-made Canada CEO email database and begin marketing to your target audience. You can also customize your own Canadian CEO mailing list with our list-builder tool to more narrowly focus your efforts to target CEOs in Canada, within specific industries.\r\n\r\nBookyourdata provides corporate leaders\' contact information, so you can network with executives at the most prominent companies and smaller businesses that are just starting. Our Canadian CEO email database is verified weekly, so you will always have the most up-to-date information to help you grow your company. Instead of spending hours gathering data on your own, use this ready-made CEO mailing list to save time and make more money! We have already done all the work for you to reach out to targeted CEOs in any industry in Canada.\r\n\r\nOur Canadian CEO email list is the perfect solution for building strong business-to-business relationships with senior executives. Purchase this chief executive officer email database and instantly pull the contact information of CEOs in a wide range of industries. Our high-quality, accurate bulk email list provides the tools necessary to effectively grow your business, obtain sales leads, and make mutually beneficial deals.\r\n\r\nChief executive officers, in Canada and around the world, play a hands-on role in their company, making strategic business decisions. Buy and download our affordable Canadian CEO mailing list and email leads now!', 'canadian-ceo-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(84, 'job-titles', 'CHIEF AND VP OF ACCOUNTING', 'chief-and-vp-of-accounting', 'Download this chief accountant email database now and get the quality sales leads you need to promote your accounting products or services to vice presidents companies and institutions within a few minutes. Vice presidents of accounting are counting on you', 'Chief accounting officers\' email addresses, phone numbers, real names, and postal addresses are all packed inside this one organized and human-verified business contact database, which is culled by job title. Find powerful c-level and senior accountants with high-level titles like \"vice president of accounting\" or \"chief of accounting.\" Our email list of VPs of accounting can be downloaded and used within minutes so that you can start networking, building more effective ties with accounting departments, and make more sales.\r\n\r\nWhether you\'re showing off a new accounting program, tax app, budgeting tool, or even outsourcing service, this chief accountant mailing list is the best way to get the right sales and email leads to start that conversation. An accounting vice president would be the person to talk to if you\'re hoping a company will make sweeping changes or a large B2B purchase due to their high level of influence over their department and institution. This is a very important set of contacts for your sales team to have, and you can download this VP of accounting mailing list right now. Give the budgeting and tax experts a break with this email list of chief accountants! Show off your services or products to those managing accountants with our chief accounting officers and VPs list today.', 'chief-and-vp-of-accounting-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(85, 'job-titles', 'CHIEF AND VP OF RISK', 'chief-and-vp-of-risk', 'Do you want to connect with a vice president of risk management or similar c-level and senior executives to sell your product or service? This human-verified risk management VP email database is full of quality contacts hoping to avoid catastrophes and financial loses. Buy email leads in the world of risk management now.', 'Pull a VP of risk email list today from Bookyourdata.com and get all of the contact data you need to make a connection: risk management vice presidents\' phone numbers, postal and email addresses, company information, and much more essential business contact data. In one consolidated, organized, human-verified business database that\'s already ready for you to download and use right away, you\'ll have the direct lines of communication with chiefs of risk management. (That can certainly make your B2B email marketing campaign less risky!)\r\n\r\nFind the VP of risk and control who would be most interested in your product or service, whether that\'s an outsourced underwriting service, bit of claims management software, or some other project management tool. A VP or chief of risk management will likely have sway in numerous departments: legal, licensing, compliance, accounting, and others. If you have a product that can help them or know of a potential risk to their company or organization, let this group of high-level corporate leaders know with Bookyourdata.com\'s vice presidents of risk mailing list. Risk management VPs often report to C-level management but are autonomous enough to make many business decisions themselves. Connect with VPs of risk management within a few minutes of downloading this list of strong sales leads!', 'chief-and-vp-of-risk-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(86, 'job-titles', 'CHIEF AND VP OF AUDIT', 'chief-and-vp-of-audit', 'Our chief audit executive (CAE) email database includes direct contact information of senior auditing executives and VPs: emails, phone numbers, and company information all in one downloadable auditing VP mailing list. Don\'t hunt down this number-crunching group of high-level VPs and CAEs; we\'ve organized their information for you!', 'B2B marketing is all about targeting the right audience. We are offering you this chief and V.P. of Audit email list. Our lead includes direct contact information of B2B professionals, chief and vice presidents of auditing and chief audit executives (CAEs). The Bookyourdata audit marketing list is a valuable resource for any company that wants to market its products or services to the Chief and V.P. of audit demography. This list comprises email addresses, phone numbers, and other contact info for CAEs and V.P.s of auditing in over 170 countries. You can use it to gain both new international and local customers. These are the people who can help you sell your products and services to companies in the accounting sector. So if you are looking for a way to get new leads for your sales team, our database is your best tool.\r\n\r\nMake sure your numbers are correct with this VP of auditing email list, which will help you make more B2B sales! Grab the leads that make the most sense for your email marketing campaign with our ready-made VP of auditing email database. This human-verified mailing list is targeted towards a powerful group of auditors; those with relevant and professional business titles like \"vice president internal audit,\" \"chief audit executive (CAE),\" or \"auditing VP.\" Email lists such as this offer key information that you can leverage to contact decision-making sales leads.\r\n\r\nAn account management software solution, organizational tool, or tracking app would be ideal things to market using this vice president of auditing and CAE mailing list. Corporate leaders in auditing departments are in charge of finding mistakes, so validation tools would also likely interest them. Connect with a VP of auditing to encourage that professional to implement your company\'s product or service on a grand scale. It\'s easier when you can buy an already organized business contact list of chief audit executives and VPs of internal audits.', 'chief-and-vp-of-audit-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(87, 'job-titles', 'CHIEF AND VP OF IT', 'chief-and-vp-of-it', 'Buy a CTO email database from Bookyourdata.com and get all of the key direct contact information of some of the most powerful B2B leads available. Market your hardware or software to the VPs who are often in charge of all IT buying decisions!', 'Email VPs of information technology moments after you buy our organized business contact list, which is ready for you to download right away. Spark innovation when you reach out to teams who need the software, tools, outsourced help-desk service, servers, Internet service, or other IT solutions you offer, and make real changes right away when you contact IT VPs. Mailing list solutions from Bookyourdata.com have all of the information you need to get connected (note that this list only includes those whose job title is chief or VP of IT): emails, phone numbers, postal addresses, company information, and more!\r\n\r\nOften serving under CIOs, powerful, influential VPs of IT will have a great deal of influence over which software to distribute to their teams, which long-term service to go with, or which hardware should be distributed throughout the company. Is there a better group to reach out to when trying to get your IT solution in front of the right eyes? We\'ve done all of the legwork for you by pulling a spread-out group of numerous VPs of information technology into one place: a ready-to-download .CSV file, which can be pulled into your CRM right away.\r\n\r\nIt\'s that easy: Buy a VP of information technology email database, get all of the information you need, integrate it, and start your email marketing campaign, telemarketing, or direct mailing within minutes. Encourage the senior executives and c-level leaders of IT across several institutions to buy your products, and make more sales by starting with quality sales leads. Connect with vice presidents of IT now.', 'chief-and-vp-of-it-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(88, 'job-titles', 'CHIEF AND VP OF SOFTWARE', 'chief-and-vp-of-software', 'This VP of software mailing list puts you in contact with professionals who speak the same language as you! Use our contact and email database of senior software executives within the areas of development and programming to discuss your new solution for front-end or back-end optimization.', 'As C-level software professionals often lead a team of programmers, application developers, and UX/UI experts, VPs of software engineering and development have many responsibilities. If you have a new tool, environment, or solution that will help them bring new software products to their companies and clients, reach out using this consolidated, human-verified software VP email database of quality contacts.\r\n\r\nThe secret of great marketing is to create a real connection and make sales by leveraging great leads. If you\'re talking to potential leads whose eyes glaze over when you say words like \"M2M,\" \"Ajax,\" \"Symantec,\" \"MS Dynamics,\" \"Magento,\" \"Sharepoint,\" or \"SAP,\" it\'s time to talk to industry leaders and professionals who\'ll be on the same page: software vice presidents. Email lists from Bookyourdata.com are built to help you get in touch with the right B2B audience that speaks the same language as you; in this case, it\'s likely PHP, Java, Python, C++, or Ruby.\r\n\r\nCreating tools for platforms like Microsoft Windows, iOS, Android, and the cloud, a VP of software needs to coordinate huge projects or come up with completely unique products and databases for their companies. They may work with major developers like Oracle, Adobe, Cisco, IBM, and Informatica to help them find solutions fast. If you have a new development platform, UX concept, or programming solution, get connected with those who make software creation decisions using our VP of software development email list!', 'chief-and-vp-of-software-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(89, 'job-titles', 'CHIEF AND VP OF HR', 'chief-and-vp-of-hr', 'Email the most powerful sales leads in human resources management: vice presidents of HR. A business contact and email database with all the contacts you need, our VP of HR email list is accurate and ready to download.', 'There is no better way to reach your audience than with a trusted source\'s targeted sales and marketing email. Business leads don\'t get more targeted than reaching out to the chief and V.P. of H.R. These are the people who make decisions about hiring, training and managing others in the organization. Bookyourdata Chief and V.P. of H.R. contacts can help you get your products or services in front of some of the most influential people in human resources management. Our chief and V.P. of H.R. email list empowers you to get a leg up on your competition by giving you access to thousands of business contacts in over 170 countries in the human resources management field. We understand how important accuracy is to build a targeted email list. We have a standby team that ensures our inventory is updated every month and verified every week.\r\n\r\nIt can be challenging to get your hands on the correct email information. However, Bookyourdata makes it easy for you to find the decision-makers in the marketing sphere. Whether you are looking for an H.R. manager or a CHRO, the bookyourdata email database connects you with the decision-makers without the gatekeepers. Our lists are updated every week to ensure that you are always making contact with present employees and active businesses. Your time is money. Eliminate the risk of wasted hours spent researching, compiling, and contacting outdated sales leads by leveraging the prebuilt business contacts in our database.\r\n\r\nTalk directly to the leaders of HR departments with this vice president of human resources email database from Bookyourdata.com. Our accurate data product will connect you with HR VPs and chiefs at numerous corporations, companies, and institutions by providing you with their human-verified contact information. This includes human resources vice presidents\' email addresses, company information, direct postal addresses, phone numbers, and real names. Within moments of downloading this HR VP mailing list, you\'ll be able to pick up the phone and talk to these senior executives, email them as part of a powerful B2B marketing campaign, or send them direct mail.\r\n\r\nGet noticed by connecting with HR executives responsible for their company\'s human resources management decisions, from which services should be contracted out to what sort of HRM software their team should use to their organization\'s data-keeping methodology. If you have an HRM solution, why not reach the people at the top right away with our vice president of HR email database? Buy these high-quality, accurate B2B emails and go straight to the top of HR.\r\n\r\nThis business contact list includes those with the specific job titles of HR leadership, such as \"vice president human resources\" or \"chief human resources officer.\" Email lists organized by job title rather than industry or department will allow you to specifically connect with leadership. Download this list, flaunt your HRM solution, and make more sales today.', 'chief-and-vp-of-hr-email-list-sample.jpg', 89, 5000, 250, '2023/10/01'),
(94, 'job-titles', 'CHIEF AND VP OF ADMINISTRATION XXXXXXXXXXXXXXXXXx', 'chief-and-vp-of-administration', 'Chiefs of administration are some of the most powerful people in the business and corporate world, and you can have access to their direct contact information! Our administrative VPs email database can help you make connections with potential sales leads.', 'Administrative functions can be either the most straightforward or the most messy and difficult duties of an institution, as a vice president of administration often manages huge operations and makes sweeping changes to keep a company operational. The reach and influence of an administration vice president depends on the institution, but these high- and c-level professionals often manage teams of office managers and support staff to make things run smoothly. In any case, if you have a useful project management app, outsourced service, or organizational product, this is an ideal group to reach out to, as a vice president of administration would likely implement your product on a larger scale. Use our VPs of administration email database to market directly to these professionals.\r\n\r\nOur VP of administration email list is culled by job title and includes senior administrators and administrative executives with relevant official titles across numerous institutions, saving your marketing team value time and effort. Our business-to-business database isn\'t just an email list; you can also use it as a mailing list of vice presidents of administration, as it has postal addresses and real names. Within a few minutes, you\'ll have access to all of the information you need to get in touch with VPs and chiefs of administration. Buy and download this ready-made data product and start marketing your products and services to administrative vice presidents. Who knows? A chief of administration may implement your solution company-wide!', 'KCs4976XnT.jpg', 86, 40000, 240, '2023/10/08'),
(95, 'industries', 'TOUR OPERATORS, TRAVEL AGENCIES', 'tour-operators-travel-agencies', 'Market to travel agents, tour operators, and other travel companies with this consolidated and accurate contact directory. Our pre-built travel agencies list is ready for you to download now. Connect with those in the world of travel and tourism!', 'The tourism and leisure industry is constantly changing. But your business can stay on top of the industry with the updated email list from Bookyourdata. This database includes every detail you need to reach the people in charge of Canadian travel agents or other countries. Leverage our marketing list to directly promote your products or service to tour operators and travel agent owners. This email list of travel agents is up-to-date and customizable. You will get the exact contact information you need for C-level executives and owners at tour operator companies worldwide.\r\n\r\nTake your business-to-business (B2B) campaign on tour. Without having to go anywhere, you can market directly to those in your target audience easily with just a few clicks! You don\'t have to hunt for leads. Go to one source for finding accurate, human-verified contact information and marketing to tour operators and travel companies: a pre-built Bookyourdata.com list! Travel agencies all over can be contacted right after downloading one centralized and consolidated list of travel email addresses.\r\n\r\nFind the people you need to market to, including those working in the travel and tourism industries, such as tour guides and travel agents. Email list options from Bookyourdata.com can help you promote your business or organization, whether you want to show off an attraction, offer deals on transportation, flaunt your charter service, or encourage agencies to learn more about your city. By pulling the important information of travel contacts into one place, Bookyourdata.com offers businesses new ways to make meaningful connections with travel agents.\r\n\r\nA travel agent email list can help to make sure your next business campaign takes flight. Conquer new territory with this accurate contact data, and email leads who are most important to your business. Market to the agents and tour guides who help customers travel around the world, and tell them about your location, product, or service. Buy this travel agent mailing list, or check out our list-builder tool to find even more sales leads today!', 'uFnvCIGDQp.jpg', 89, 8000000, 2000, '2023/10/10'),
(96, 'industries', 'FITNESS SPA CLUBS', 'fitness-spa-clubs', 'Flex your marketing muscles so that you can connect with health-focused small businesses: spas, wellness clubs, fitness centers, gyms, and more. Start marketing to those in the fitness industry and develop stronger connections with this pre-built, ready-to-download database.', 'Market to health-oriented small businesses with this ready-made, consolidated fitness contact directory from Bookyourdata.com. Buy this email list of key contacts at wellness, fitness centers, clubs, gyms, spas, and other fitness-related businesses and stretch your business-to-business (B2B) marketing reach. Within minutes, you can purchase this product, download it, integrate it into your CRM, and start marketing to your target audience: fitness-focused businesses. In this list, you may find the managers, personal trainers, massage therapists, and health gurus who would be most interested in your company\'s product or service.\r\n\r\nWith our email list, you can get a list of spa and fitness club contacts in seconds. This ready-to-download database will allow you to flex your marketing muscles and target those who matter most to your business: health-focused small businesses, including spas, wellness clubs, fitness centers, gyms, weight-reduction facilities, medispas, nail salons, and more. This pre-built email database is clean and up-to-date. It is formatted so that you can easily download it directly into your CRM system. Take advantage of this tool and build relationships with the fitness industry: massage therapists, Crossfit coaches, yoga instructors, salon/club owners, and more.\r\n\r\nWhether you\'re marketing a health food, energy bar, sports drink, clothing line, or other health-oriented product or service, you can make more sales with this targeted lead list. Gyms, clubs, fitness centers, and spas are full of people concerned with keeping their clients and customers as happy and as healthy as possible. If you can help them achieve that goal, whether that be with a nutrition service or exercise product, then definitely let them know with this list. It\'s ready for you to download right now. Either get this health club and gym contact directory now or feel free to use our list-builder tool to perfect your B2B prospect list. Get started today!', 'aSJvQGYw9x.jpg', 89, 700000, 200, '2023/10/10');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `o_id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) NOT NULL,
  `package_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `shipping_address` text NOT NULL,
  `price` int NOT NULL,
  `subtotal` int NOT NULL,
  `order_total` decimal(10,2) NOT NULL,
  `payment_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order_delevery_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order_date` datetime NOT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`o_id`, `order_id`, `package_id`, `product_id`, `quantity`, `user_id`, `user_email`, `shipping_address`, `price`, `subtotal`, `order_total`, `payment_status`, `order_delevery_status`, `order_date`) VALUES
(132, '28621902', 'No PAckage Include', 'admission', 1, '2', 'user@gmail.com', '250', 89, 89, '89.00', 'Completed', 'Pending', '2023-10-07 17:01:40'),
(131, '26492102', '12', 'c-level', 1, '2', 'user@gmail.com', '250', 315, 315, '315.00', 'Completed', 'Pending', '2023-10-07 15:56:26'),
(133, '17409051', '12', 'c-level', 1, '1', 'admin@gmail.com', '250', 315, 315, '315.00', 'Pending', 'Pending', '2023-10-09 09:57:13'),
(135, '14292941', '12', 'c-level', 1, '1', 'admin@gmail.com', '250', 315, 315, '315.00', 'Pending', 'Pending', '2023-10-10 17:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `order_item_id` int NOT NULL AUTO_INCREMENT,
  `package_id` varchar(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `subtotal` int NOT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `package_id`, `order_id`, `product_id`, `quantity`, `price`, `subtotal`) VALUES
(114, '1', '27365052', 'c-level', 1, '80.00', 80),
(115, '1', '17447321', 'c-level', 1, '80.00', 80),
(116, '12', '26492102', 'c-level', 1, '315.00', 315),
(117, 'No PAckage Include', '28621902', 'admission', 1, '89.00', 89),
(118, '12', '17409051', 'c-level', 1, '315.00', 315),
(119, '12', '14292941', 'c-level', 1, '315.00', 315);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `pages_id` int NOT NULL AUTO_INCREMENT,
  `page_permalink` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `page_meta_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `page_meta_desc` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `page_meta_keyword` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `create_at` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`pages_id`, `page_permalink`, `page_meta_title`, `page_meta_desc`, `page_meta_keyword`, `html`, `create_at`) VALUES
(9, 'email_list_by_real_state', 'Real Estate Agent Contacts List Building Tool - Bookyourdata', 'Our powerful platform allows you to easily search for Real Estate Agents’ contacts based on criteria such as location, job title, and company. Get started now! ', 'Real Estate Agent Contacts List Building Tool - Bookyourdata', '', '2023-10-07 12:44:52'),
(7, 'login', 'login', 'login', 'login', '', '2023-10-03 17:20:59'),
(8, 'email_list_by_health_Care', 'Create Healthcare Professionals Contact Lists - Bookyourdata', 'Build targeted B2B email lists with Bookyourdata\'s innovative business contact list-builder tool. Get the business contacts you need for a successful outreach!', 'Build targeted B2B email lists with Bookyourdata\'s innovative business contact list-builder tool. Get the business contacts you need for a successful outreach!', '', '2023-10-07 12:45:03'),
(5, 'sign_up', 'Sign Up | Bookyourdata.com', 'You can sign up our services on this page.', 'Sign Up | Bookyourdata.com', '', '2023-10-03 17:14:59'),
(6, 'email_list_builder', 'Create B2B Email Lists with Bookyourdata\'s List-Builder Tool', 'Build targeted B2B email lists with Bookyourdata&#039;s innovative business contact list-builder tool. Get the business contacts you need for a successful outreach!', 'Create B2B Email Lists with Bookyourdata\'s List-Builder Tool', '', '2023-10-03 17:19:38'),
(4, 'index', 'Buy Email Lists | B2B Email Lists | BookYourData', 'Purchase sales leads for marketing campaigns by building targeted b2b email address lists by industry, role, etc. 95% Delivery Rate Guaranteed and 100% Opt-In.', 'Buy Email Lists | B2B Email Lists | BookYourData', '', '2023-10-03 17:10:51'),
(2, 'pricing', 'Pricing - Bookyourdata', 'Buy a contact list that&#039;s both accurate and fairly priced! We provide a clear pricing structure and rates among the best in the industry. Our human-verified lists are available for low prices with no hidden fees or required contracts.', 'Pricing - Bookyourdata', '', '2023-10-03'),
(3, 'about_us', 'Buy Email Lists | B2B Email Lists | BookYourData', 'Purchase sales leads for marketing campaigns by building targeted b2b email address lists by industry, role, etc. 95% Delivery Rate Guaranteed and 100% Opt-In.', 'Buy Email Lists | B2B Email Lists | BookYourData', '', '0000-00-00'),
(14, 'devtest', 'dev test', 'devtest', 'devtest', '', '2023-10-08 10:39:17'),
(15, 'our-guarantees', 'Our Guarantees | Bookyourdata.com', 'We provide accuracy guarantee, bounce-back guarantee with 100% satisfaction guarantee for our valuable clients.', 'Our Guarantees | Bookyourdata.com', '<div class=\"jumbotron jumbotron--regular jumbotron--regular-bg\">\n<div class=\"container jumbotron__container\">\n<div class=\"jumbotron__inner\">\n<h1 class=\"jumbotron__title\">Our Guarantees</h1>\n<div class=\"breadbrumb\">\n<a href=\"/\" class=\"breadbrumb__item\">Home</a>\n<span class=\"breadbrumb__item\">Our Guarantees</span>\n</div>\n</div>\n</div>\n</div>\n\n<div class=\"section\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-md-4 text-center-tpd\">\n<i class=\"icon icon-arrow-board text-primary icon-large\"></i>\n<h3 class=\"primary-title\">95% DELIVERABILITY GUARANTEE</h3>\n<p>All of our email lists come with a 95% deliverability guarantee.* Why not 100%? The reason for this is\nthat in the world today, people are constantly changing jobs and/or positions, and companies\nmay move and change their telephone numbers, names, websites, or email addresses. In order to\nkeep up with a world that changes rapidly, we update our database daily using thousands of\nsources, but because contact info can change so much and so quickly, it is impossible to reach\n100% deliverability in this industry. Our aim is to provide you the most up-to-date data. Right now,\nthere isn’t a single company in the world that will deliver such qualified data with lower\nprices than Bookyourdata.com — we are perfectly sure about that!</p>\n</div>\n<div class=\"col-md-4 pad-top-small-tld text-center-tpd\">\n<i class=\"icon icon-arrows text-primary icon-large\"></i>\n<h3 class=\"primary-title\">Bounce-Back Guarantee</h3>\n<p>We know it is bad when a customer thinks the service they received wasn’t worthy of its price.\nTo prevent such situations, we promise a 95% deliverability rate with our data. If a customer runs\nacross an deliverability level lower than 95%, simply send us the report showing the hard-bounce\nrate of the email list purchased and we will provide free data credits until our 95% deliverability\npromise is satisfied. For example, if the hard-bounce rate appears to be 20%, meaning the\ndeliverability level is 80%, we will provide free credits for 15% more data. Thus, you’ll always\nget what you paid for.</p>\n</div>\n<div class=\"col-md-4 pad-top-small-tld text-center-tpd\">\n<i class=\"icon icon-smile text-primary icon-large\"></i>\n<h3 class=\"primary-title\">BEST PRICE GUARANTEE</h3>\n<p>If you find better price with same 95% deliverability guarantee for any email lists, we directly\nbeat it! We want all of our customers to order from us again in the future again, so long-term\nsatisfaction is very important to us. We value our customers and want to make sure that they\nare happy with our products. Our goal is providing excellent service as well as valuable\nproducts, so we can become an important partner for our customers as they grow their businesses.\nWe stand by our products and will do whatever it takes to make you a repeat customer: If you’re\nnot happy, we’re not happy.</p>\n</div>\n<div class=\"clearfix\"></div>\n<div class=\"col-md-12\">\n<p style=\"font-size: 13px;\">* : We suppose that you will use our data records within next 15 days after you purchase.\nPoor sender reputation, mail server misconfiguration / unavailability possibilities are disregarded here.</p>\n</div>\n</div>\n</div>\n</div>\n<div class=\"lead hidden-dd\">\n<div class=\"container lead__container\">\n<div class=\"lead__col lead__col--left\">\n<h4 class=\"lead__text gap-bottom-tld\">Ready To Boost Your Sales Like Your Competitors? Try Our Tool For Free.</h4>\n</div>\n<div class=\"lead__col lead__col--right\">\n<a class=\"button button--quaternary full-width\" href=\"/tool/main\">\nBuild a List <i class=\"icon icon-arrow-forward button--quaternary__icon\"></i>\n</a>\n</div>\n</div>\n</div>\n', ''),
(16, 'press-room', 'Press Room | Bookyourdata.com Press Releases & Announcements', 'Learn about the latest happenings at Bookyourdata.com, the #1 site for list-building and data innovation. We&#039;re constantly working on new features!', 'Press Room | Bookyourdata.com Press Releases & Announcements', '<div class=\"jumbotron jumbotron--regular jumbotron--regular-bg\">\r\n<div class=\"container jumbotron__container\">\r\n<div class=\"jumbotron__inner\">\r\n<h1 class=\"jumbotron__title\">Press Room</h1>\r\n<div class=\"breadbrumb gap-bottom\">\r\n<a href=\"/\" class=\"breadbrumb__item\">Home</a>\r\n<a href=\"/about\" class=\"breadbrumb__item\">About Us</a>\r\n<span class=\"breadbrumb__item\">Press Room</span>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"section\">\r\n<div class=\"container\">\r\n<ul class=\"list list--grid list--grid-6 list--resource\">\r\n<li class=\"list__item\">\r\n<h3 class=\"primary-title\">\r\n<a class=\"link-tertiary\" href=\"/press-room/bookyourdata-com-extends-its-database-with-health-care-category\">Bookyourdata.com extends its database with health-care category</a>\r\n</h3>\r\n<p></p>\r\n<a class=\"button button--tertiary\" href=\"/press-room/bookyourdata-com-extends-its-database-with-health-care-category\">\r\nView Details <i class=\"icon icon-arrow-forward button--tertiary__icon\"></i>\r\n</a>\r\n</li>\r\n<li class=\"list__item\">\r\n<h3 class=\"primary-title\">\r\n<a class=\"link-tertiary\" href=\"/press-room/bookyourdata-com-is-live\">Bookyourdata.com is Live!</a>\r\n</h3>\r\n<p></p>\r\n<a class=\"button button--tertiary\" href=\"/press-room/bookyourdata-com-is-live\">\r\nView Details <i class=\"icon icon-arrow-forward button--tertiary__icon\"></i>\r\n</a>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>', '2023-10-10 12:00:58'),
(17, 'faq', 'Frequently Asked Questions (FAQs) | Bookyourdata.com', 'How does downloading a contact list work? Find out how to pull, download, and use a lead list from Bookyourdata.com here. Get your questions answered here.', 'Frequently Asked Questions (FAQs) | Bookyourdata.com', '<div class=\"jumbotron jumbotron--regular jumbotron--regular-bg\">\r\n<div class=\"container jumbotron__container\">\r\n<div class=\"jumbotron__inner\">\r\n<div class=\"row\">\r\n<div class=\"col-md-8\">\r\n<h1 class=\"jumbotron__title\">How Can We Help You</h1>\r\n<div class=\"breadbrumb gap-bottom-small\">\r\n<a href=\"/\" class=\"breadbrumb__item\">Home</a>\r\n<span class=\"breadbrumb__item\">FAQ</span>\r\n</div>\r\n<form class=\"form form-single-line form-single-line--search\" action=\"/faq\" method=\"GET\">\r\n<input class=\"form-single-line__input form__control\" type=\"text\" name=\"q\" placeholder=\"Please enter a keyword\" value>\r\n<button class=\"form-single-line__submit\" type=\"submit\"><i class=\"icon icon-arrow-forward\"></i></button>\r\n</form>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"section\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-8\">\r\n<h5 class=\"secondary-title gap-bottom\">Frequently Asked\r\nQuestions</h5>\r\n<div class=\"accordion js-accordion\">\r\n<div class=\"accordion__item\">\r\n<div class=\"accordion__item__title\">Which payment methods do you accept?</div>\r\n<div class=\"accordion__item__content\">\r\n<div class=\"accordion__item__content__inner \">\r\n<p>We accept MasterCard, Visa, American Express, Bank Wire, Bitcoin. Our aim is to simplify the ordering process and present your email list as soon as possible.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"accordion__item\">\r\n<div class=\"accordion__item__title\">When were your data lists last updated?</div>\r\n<div class=\"accordion__item__content\">\r\n<div class=\"accordion__item__content__inner \">\r\n<p>Our data is verified weekly. We have developed a complex algorithm for this purpose. With this algorithm, we check the accuracy levels of our data against millions of sources and apply necessary updates.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"accordion__item\">\r\n<div class=\"accordion__item__title\">How long does it take to get my email list after I order online?</div>\r\n<div class=\"accordion__item__content\">\r\n<div class=\"accordion__item__content__inner \">\r\n<p>You can instantly download your database after your order is confirmed.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"accordion__item\">\r\n<div class=\"accordion__item__title\">Some companies will only let me access contacts through a Web-based application: Do you share the actual data files, or do you just help us market without letting us see the data like others do?</div>\r\n<div class=\"accordion__item__content\">\r\n<div class=\"accordion__item__content__inner \">\r\n<p>We sell you the actual data files.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"accordion__item\">\r\n<div class=\"accordion__item__title\">You have some ready-made databases on your Web site, but I couldn’t find the specific data I’m looking for. How can I perform a search?</div>\r\n<div class=\"accordion__item__content\">\r\n<div class=\"accordion__item__content__inner \">\r\n<p>You can use our custom online tool to search using any criteria you wish, place an order, and directly download your database to start marketing!</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"accordion__item\">\r\n<div class=\"accordion__item__title\">I want to contact other firms to market my company’s products; can I use your email lists?</div>\r\n<div class=\"accordion__item__content\">\r\n<div class=\"accordion__item__content__inner \">\r\n<p>Yes, we sell B2B email lists for your needs.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"accordion__item\">\r\n<div class=\"accordion__item__title\">I want to place an order, but I have doubts about the accuracy of the data. Why should I trust you?</div>\r\n<div class=\"accordion__item__content\">\r\n<div class=\"accordion__item__content__inner \">\r\n<p>All of the records we sell have a 95% accuracy guarantee. If you encounter a lower accuracy rate, you can contact our customer relations staff and we will provide you new data for free to make up the difference. We call it our Bounce-Back Guarantee.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"accordion__item\">\r\n<div class=\"accordion__item__title\">Can I feed your files into CRM software easily?</div>\r\n<div class=\"accordion__item__content\">\r\n<div class=\"accordion__item__content__inner \">\r\n<p>Yes: Our .csv files are supported by all CRM platforms.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"accordion__item\">\r\n<div class=\"accordion__item__title\">Why is your data so cheap?</div>\r\n<div class=\"accordion__item__content\">\r\n<div class=\"accordion__item__content__inner \">\r\n<p>We do not adjust our pricing for each customer, and we have a transparent pricing policy. We aim to reach as many customers as possible, including startups and small businesses.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"accordion__item\">\r\n<div class=\"accordion__item__title\">What should I keep in mind when ordering an email list?</div>\r\n<div class=\"accordion__item__content\">\r\n<div class=\"accordion__item__content__inner \">\r\n<p>The most important criterion is to choose your target audience accurately. For this purpose, we developed our online list-builder tool. If you choose the right audience to market your product, your success rate will be higher, you will be happier, and you will want to purchase new email lists from us.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"accordion__item\">\r\n<div class=\"accordion__item__title\">Do customers download files as Excel files?</div>\r\n<div class=\"accordion__item__content\">\r\n<div class=\"accordion__item__content__inner \">\r\n<p>We offer Excel files, .cvs files or .txt files.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"accordion__item\">\r\n<div class=\"accordion__item__title\">Are you GDPR compliant?</div>\r\n<div class=\"accordion__item__content\">\r\n<div class=\"accordion__item__content__inner \">\r\n<p>Our entire data pool is GDPR Ready.</p><p>Please see <a href=\"https://www.bookyourdata.com/gdpr-ready\">https://www.bookyourdata.com/gdpr-ready</a> for the reference.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"pad-top-small\">\r\n<a href=\"https://www.bookyourdata.com/email-list-database/online-library-of-resources\" title=\"Online Library of Resources\">Online\r\nLibrary of Resources</a>\r\n</div>\r\n</div>\r\n<div class=\"col-md-4 pad-top-tld\">\r\n<h5 class=\"secondary-title gap-bottom\">Contact Us</h5>\r\n<p>Our international team works hard to create the best data-pulling tools in the industry. Our goal is to\r\nhelp you find the best business contacts out there. Have questions? Feel free to contact us today!</p>\r\n<i class=\"icon icon-email contact-mail-icon\"></i> <a class=\"font-large transition-color\" href=\"/cdn-cgi/l/email-protection#bbc8dad7dec8fbd9d4d4d0c2d4cec9dfdacfda95d8d4d6\"><span class=\"__cf_email__\" data-cfemail=\"cbb8aaa7aeb88ba9a4a4a0b2a4beb9afaabfaae5a8a4a6\">[email&#160;protected]</span></a>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"lead hidden-dd\">\r\n<div class=\"container lead__container\">\r\n<div class=\"lead__col lead__col--left\">\r\n<h4 class=\"lead__text gap-bottom-tld\">Ready To Boost Your Sales Like Your Competitors? Try Our Tool For Free.</h4>\r\n</div>\r\n<div class=\"lead__col lead__col--right\">\r\n<a class=\"button button--quaternary full-width\" href=\"/tool/main\">\r\nBuild a List <i class=\"icon icon-arrow-forward button--quaternary__icon\"></i>\r\n</a>\r\n</div>\r\n</div>\r\n</div>', '2023-10-10 17:54:02');

-- --------------------------------------------------------

--
-- Table structure for table `telepon`
--

DROP TABLE IF EXISTS `telepon`;
CREATE TABLE IF NOT EXISTS `telepon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `nomor` varchar(13) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telepon`
--

INSERT INTO `telepon` (`id`, `nama`, `nomor`) VALUES
(1, 'Orion', '08576666762'),
(2, 'Mars', '08576666770'),
(3, 'Alpha', '08576666765');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `type_h1` varchar(255) NOT NULL,
  `type_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4524256 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type`, `type_h1`, `type_desc`) VALUES
(5, 'healthcare', 'HEALTHCARE PROFESSIONALS', 'Purchase a medical email list of doctors and health professionals to find and connect with them based on specialty. When you purchase a verified medical doctor list by specialty, you can email doctors and those who would be interested in your service. Connect using a pre-built, accurate healthcare email database, including addresses and phone numbers. As an all-in-one solution, our affordable healthcare email lists serve as a healthcare email database for better B2B email marketing and as your doctor mailing list for sending letters or samples. Buy a medical contact list and find sales leads today!'),
(8, 'business', 'BUSINESS', '\nA business email is a formal and professional method of communication used in the context of conducting business or professional activities. It serves as a primary means of correspondence within organizations and between businesses and their clients, partners, suppliers, and other stakeholders. Writing and managing business emails effectively is crucial for maintaining a professional image and achieving clear communication in a corporate environment.'),
(7, 'realstate', 'REAL STATE', 'Buy a real estate agent email list to connect with top movers and shakers in the world of real estate. The realtor email lists we offer are accurate, human-verified, and reliable. These targeted real estate agent leads allow you to market your product or service more efficiently. Our premium real estate mailing lists are filled with the contacts you need: With our affordable real estate emails, your product will be sold in no time! Choose your location to start networking with leads for sale from Bookyourdata.com'),
(1, 'job-levels', 'Job Levels', 'Do you know what the most important part of a B2B marketing campaign is? It\'s finding accurate contact information for people who have the power to make decisions. Don\'t waste time being diverted and misdirected; cut through that red tape!'),
(2, 'job-titles', 'JOB TITLES', 'Download email lists comprised exclusively of contact information for the people you want to market to. Find your leads by their title, and build connections only with people who have the relevant industry knowledge or decision-making power to make changes.'),
(3, 'job-functions', 'JOB FUNCTIONS', 'Network with people in departments that are most relevant to your product or service, whether that be HR, management, or any of the departments listed below. Market to those in related offices of multiple companies with our verified, accurate lists.'),
(4, 'industries', 'INDUSTRIES', 'Connect with the right people with our industry-specific, pre-built contact lists. Buy a mailing list by industry that’s verified and accurate, and market to businesses in relevant industries, such as hospitality, construction, marketing, or any of the industries listed below. When you buy email lists by industry, you’ll get premium, targeted sales leads!'),
(6, 'international', 'INTERNATIONAL', 'Pull reliable, accurate international email lists and master your international B2B marketing campaign with Bookyourdata.com. We can help you conduct business overseas by helping you find companies\' emails, phone numbers, and more. Target your marketing campaign to the specific places below.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;