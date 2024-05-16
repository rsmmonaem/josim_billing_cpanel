-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 13, 2023 at 09:39 PM
-- Server version: 10.5.22-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amrshopi_res`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_description` text NOT NULL,
  `publication_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_description`, `publication_status`) VALUES
(7, 'other', 'other', 1),
(8, 'rsm', 'dasdasd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_url_name` varchar(255) NOT NULL,
  `cat_image` varchar(255) NOT NULL,
  `bgcolor` varchar(255) NOT NULL,
  `category_description` text NOT NULL,
  `publication_status` tinyint(4) NOT NULL COMMENT 'Published=1,Unpublished=0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category_name`, `category_url_name`, `cat_image`, `bgcolor`, `category_description`, `publication_status`) VALUES
(43, 'TWS', 'tws', 'LgSQPxAzVh.jpg', '#ffffff', 'TWS', 1),
(44, 'Bluetooth Speaker', 'bluetooth_speaker', 'PwbZjcC8Sx.jpg', '#ffffff', 'Bluetooth Speaker', 1),
(45, 'IP Camera', 'ipcamera', 'MZwjoqE1Tl.jpg', '#ffffff', 'IP Camera', 1),
(46, 'Mobile Holder', 'mobile_holder', 'KzmBHJji2N.jpg', '#ffffff', 'Mobile Holder', 1),
(48, 'Headphone', 'Headphone', 'Qi2lhAbFwm.jpg', '#ffffff', 'Headphone', 1),
(49, 'Cable', 'cable', 'aSQDGOcXbt.jpg', '#ffffff', 'Cable', 1),
(50, 'Rechargeable Fan', 'rechargeablefan', 'G8unKRNmjc.jpg', '#ffffff', 'Rechargeable Fan', 1),
(51, 'Router', 'router', 'ugZ8eRhHyx.jpg', '#ffffff', 'Router', 1),
(52, 'Smart Watch', 'smartwatch', 'Rl3IQMGOiq.jpg', '#ffffff', 'smart watch', 1),
(53, 'Tripod', 'tripod', '2jEUwxcIK9.jpg', '#ffffff', 'Tripod', 1),
(54, 'Wireless Mouse', 'wireless_mouse', 'tcCu0WqQSh.jpg', '#ffffff', 'Wireless Mouse', 1),
(55, 'Power Bank', 'power_bank', 'IWfs2FtAqb.jpg', '#ffffff', 'Power Bank', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_password` varchar(32) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_city` varchar(50) NOT NULL,
  `customer_zipcode` varchar(20) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `customer_country` varchar(100) NOT NULL,
  `customer_active` tinyint(4) NOT NULL COMMENT 'Active=1,Unactive=0',
  `payment_number` varchar(255) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_address`, `customer_city`, `customer_zipcode`, `customer_phone`, `customer_country`, `customer_active`, `payment_number`, `payment_id`) VALUES
(14, 'Rohan', 'Ashrafulrohan224@gmail.com', '02df8936eee3d4d2568857ed530671b2', 'Sherpur ', 'Sherpur ', '2100', '01646362477', 'Bangladesh ', 1, '', ''),
(20, 'wyjihib@mailinator.com', 'dev@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'kebix@mailinator.com', 'nuxojybozu@mailinator.com', 'syvokuho@mailinator.', 'syzirarasy@mailinato', 'BD', 1, 'juxi@mailinator.com', 'lohuvo@mailinator.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_option`
--

CREATE TABLE `tbl_option` (
  `option_id` int(11) NOT NULL,
  `site_logo` varchar(100) NOT NULL,
  `site_favicon` varchar(100) NOT NULL,
  `site_copyright` varchar(255) NOT NULL,
  `site_contact_num1` varchar(100) NOT NULL,
  `site_contact_num2` varchar(100) NOT NULL,
  `site_facebook_link` varchar(100) NOT NULL,
  `site_twitter_link` varchar(100) NOT NULL,
  `site_google_plus_link` varchar(100) NOT NULL,
  `site_email_link` varchar(100) NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_subtitle` varchar(255) NOT NULL,
  `contact_description` text NOT NULL,
  `company_location` varchar(255) NOT NULL,
  `company_number` varchar(100) NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `company_facebook` varchar(100) NOT NULL,
  `company_twitter` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_option`
--

INSERT INTO `tbl_option` (`option_id`, `site_logo`, `site_favicon`, `site_copyright`, `site_contact_num1`, `site_contact_num2`, `site_facebook_link`, `site_twitter_link`, `site_google_plus_link`, `site_email_link`, `contact_title`, `contact_subtitle`, `contact_description`, `company_location`, `company_number`, `company_email`, `company_facebook`, `company_twitter`) VALUES
(1, 'WhatsApp_Image_2023-09-09_at_22_26_27.jpg', 'IMG-20230906-WA00051.jpg', 'Developed By Rsm Monaem', '01646362477', '01646362477', 'https://www.facebook.com/amarshoping99?mibextid=LQQJ4d', 'https://www.twitter.com', 'https://www.plus.google.com', 'impoex99@gmail.com', '01646362477', '01646362477', 'to contact call us', 'Mymenshing,sherpur', '01646362477', 'impoex99@gmail.com', 'https://www.facebook.com/amarshoping99?mibextid=LQQJ4d', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` float NOT NULL,
  `actions` varchar(50) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` float NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `product_image` varchar(55) DEFAULT NULL,
  `reseller_profit` int(255) NOT NULL,
  `medium` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL,
  `payment_trx` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `actions` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_short_description` text NOT NULL,
  `product_long_description` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_cod_price` int(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_feature` tinyint(4) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_brand` int(11) NOT NULL,
  `product_author` int(11) NOT NULL,
  `product_view` int(11) NOT NULL DEFAULT 0,
  `published_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `publication_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_title`, `product_short_description`, `product_long_description`, `product_image`, `product_price`, `product_cod_price`, `product_quantity`, `product_feature`, `product_category`, `product_brand`, `product_author`, `product_view`, `published_date`, `publication_status`) VALUES
(9, 'AIR BUDS', 'air buds', 'grabe it now', '359438313_215082524829589_197495517105109213_n2.jpg', 330, 0, 50, 0, 1, 1, 1, 0, '2023-08-02 11:52:37', 1),
(10, 'ertre', 'dgdr', 'dgdgr', '0450_png_860.png', 41, 0, 1, 0, 1, 2, 1, 0, '2023-09-07 05:31:39', 1),
(12, 'uigiug', 'iogbiku<span style=\"white-space:pre\">	</span>iugiu', 'kjbkjbk', '', 839, 0, 345, 1, 35, 2, 1, 0, '2023-09-08 15:53:42', 1),
(13, 'iuvi', 'lnljb', 'obiu', 'ic_launchereplaystore.png', 926, 0, 1, 1, 35, 2, 1, 0, '2023-09-08 15:56:33', 1),
(16, 'Ultra 7 in 1 Strap Smart Watch – Strap Color Multiple', '<table class=\"table table-bordered\" style=\"width: 1169.95px; border-spacing: 0px; font-size: 15px; margin: 2em 0px 1.41575em; color: rgb(68, 68, 68); font-family: &quot;IBM Plex Sans&quot;; background-color: rgb(255, 255, 255);\"><thead style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td colspan=\"2\" style=\"box-sizing: border-box; padding: 0px 1.41575em 5px 0px; vertical-align: top; background: 0px 0px; border-top: 0px !important;\"><strong style=\"box-sizing: border-box;\">BASIC INFORMATION</strong></td></tr></thead><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 0px 1.41575em 5px 0px; vertical-align: top; background: 0px 0px; border-top: 0px !important;\">Display</td><td style=\"box-sizing: border-box; padding: 0px 1.41575em 5px 0px; vertical-align: top; background: 0px 0px; border-top: 0px !important;\">2.2 inch HD large screen</td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 5px 1.41575em 5px 0px; vertical-align: top; background: 0px 0px; border-top: 1px solid rgba(222, 226, 230, 0.9) !important;\">Battery</td><td style=\"box-sizing: border-box; padding: 5px 1.41575em 5px 0px; vertical-align: top; background: 0px 0px; border-top: 1px solid rgba(222, 226, 230, 0.9) !important;\">high-capacity polymer</td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 5px 1.41575em 5px 0px; vertical-align: top; background: 0px 0px; border-top: 1px solid rgba(222, 226, 230, 0.9) !important;\">Supported Apps/ Software</td><td style=\"box-sizing: border-box; padding: 5px 1.41575em 5px 0px; vertical-align: top; background: 0px 0px; border-top: 1px solid rgba(222, 226, 230, 0.9) !important;\">Qrunning</td></tr></tbody><thead style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td colspan=\"2\" style=\"box-sizing: border-box; padding: 0px 1.41575em 5px 0px; vertical-align: top; background: 0px 0px; border-top: 0px !important;\"><strong style=\"box-sizing: border-box;\">OTHER FEATURES</strong></td></tr></thead><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 0px 1.41575em 5px 0px; vertical-align: top; background: 0px 0px; border-top: 0px !important;\">Special Features</td><td style=\"box-sizing: border-box; padding: 0px 1.41575em 5px 0px; vertical-align: top; background: 0px 0px; border-top: 0px !important;\">Dialer / Phone Book / Heart rate / Blood pressure / Blood oxygen / Temperature / Multiple Sports mode / Calculator / Sleep monitor / Remote Music / Remote Camera / Reminder / What’s APP, Twitter, Facebook messages notifications / Remote notifier / Weather / Stopwatch / Voice control / Location Share / Find phone</td></tr></tbody><thead style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td colspan=\"2\" style=\"box-sizing: border-box; padding: 0px 1.41575em 5px 0px; vertical-align: top; background: 0px 0px; border-top: 0px !important;\"><strong style=\"box-sizing: border-box;\">CONNECTIVITY</strong></td></tr></thead><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 0px 1.41575em 5px 0px; vertical-align: top; background: 0px 0px; border-top: 0px !important;\">Charging port</td><td style=\"box-sizing: border-box; padding: 0px 1.41575em 5px 0px; vertical-align: top; background: 0px 0px; border-top: 0px !important;\">Wireless Charger</td></tr></tbody><thead style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td colspan=\"2\" style=\"box-sizing: border-box; padding: 0px 1.41575em 5px 0px; vertical-align: top; background: 0px 0px; border-top: 0px !important;\"><strong style=\"box-sizing: border-box;\">OTHERS</strong></td></tr></thead><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 0px 1.41575em 5px 0px; vertical-align: top; background: 0px 0px; border-top: 0px !important;\">Others</td><td style=\"box-sizing: border-box; padding: 0px 1.41575em 5px 0px; vertical-align: top; background: 0px 0px; border-top: 0px !important;\">One watch with 7 straps</td></tr></tbody><thead style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td colspan=\"2\" style=\"box-sizing: border-box; padding: 0px 1.41575em 5px 0px; vertical-align: top; background: 0px 0px; border-top: 0px !important;\"><strong style=\"box-sizing: border-box;\">WARRANTY INFORMATION</strong></td></tr></thead><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 0px 1.41575em 5px 0px; vertical-align: top; background: 0px 0px; border-top: 0px !important;\">Warranty</td><td style=\"box-sizing: border-box; padding: 0px 1.41575em 5px 0px; vertical-align: top; background: 0px 0px; border-top: 0px !important;\">7 Days Warranty</td></tr></tbody></table>                                ', '                                    <font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Ultra 7 in 1 Strap Smart Watch – Strap Color Multiple</span></font>                                ', '7in_11.jpg', 810, 0, 44, 1, 42, 4, 1, 0, '2023-09-09 11:42:05', 1),
(20, 'RECCI REP-W58 Mars Series Wireless Earbuds', '                                                                                                            RECCI REP-W58 Mars Series Wireless Earbuds                                                                                                ', '                                                                                                            RECCI REP-W58 Mars Series Wireless Earbuds                                                                                                ', 'Screenshot_2023-09-09_192120.png', 1300, 0, 88, 1, 43, 7, 1, 0, '2023-09-09 13:22:48', 1),
(21, 'HW9 Pro Max Smart Watch (3 Straps In 1) – Black Color', '7 Days Warranty (If there are any Manufacturing Defects)', '7 Days Warranty (If there are any Manufacturing Defects)', 'HW9-Pro-Max-Black_BDSHOP1.jpg', 2000, 0, 22, 1, 42, 7, 1, 0, '2023-09-09 14:05:08', 1),
(22, 'P61 Pro Transparent TWS Earbuds', 'Name: P61 pro\r\nChipset: JL\r\nCommunication: Wireless\r\nFunction: Microphone, LED Display, Support Apple Siri, true wireless stereo, On-Ear Headphones\r\nWaterproof Standard: IPX-6\r\nConnectors: None\r\nUse: Mobile Phone, COMPUTER, Gaming, Sports, Travel, For iPod, HiFi Headphone\r\nControl Button: No\r\nIs wireless: Yes\r\nActive Noise-Cancellation: Yes\r\nStyle: Earbuds\r\nPlace of Origin: Guangdong, China\r\nCord Length: Wireless\r\nPrivate Mold: Yes\r\nMusic time: 4-5 hours\r\nBT Version: 5.1\r\nMaterial: ABC+Plastic\r\nStandby time: about 200 hours\r\nVolume Control: Yes', 'color: green,white,black,orange', 'P61-Pro-Transparent-TWS-Offer-Price-in-BD.jpg', 1150, 0, 100, 0, 43, 7, 1, 0, '2023-09-15 08:43:27', 1),
(23, 'M90 Pro Earbuds TWS', 'HiFi Bass ENC (Environmental Noise Cancellation)\r\nWireless Version: 5.3 Effective\r\nDistance: 10-15M Frequency: 100HZ – 10KHZ Case\r\nBattery Capacity: 1200 MaH\r\nEarbuds Battery Capacity: 40 MaH\r\nMusic Time: 3 Hours\r\nTalk Time: 2/4 Hours\r\nStandby Time: 150 Hours\r\nCharging Time: 1-2 Hours', 'M90 Pro Earbuds TWS\r\n', 'Screenshot_2023-09-15_145019.png', 450, 0, 100, 1, 43, 7, 1, 0, '2023-09-15 08:54:14', 1),
(24, 'Hoco HC12 RGB Wireless Bluetooth Speaker – Dark Green Color', 'Wireless version: Wireless 5.0\r\nFrequency: 2.4GHz\r\nWorking range: 10 meters\r\nSpeaker unit: 52MM 2 405W\r\nPlaying music time: 2 hours\r\nTalk time: more than 2 hours\r\nCharging time: about 2 hours\r\nFrequency response: 120Hz-18000Hz', 'Hoco HC12 RGB Wireless Bluetooth Speaker – Dark Green Color', 'Hoco-HC12-RGB-Wireless-Bluetooth-Speaker-Dark-Green-Color.jpg', 1250, 0, 40, 1, 44, 7, 1, 0, '2023-09-15 08:59:01', 1),
(25, 'Hoco HC22 Sports Bluetooth Music Speaker – Beige Color', 'Features:\r\n\r\nSize: 95*95*45mm; Weight: 272g\r\nBluetooth 5.2;\r\nBattery capacity: 1200mAh; Charging time: 2 hours\r\nUse time: 4 hours\r\nHorn unit: 52mm; Power: 5W\r\nSupport Bluetooth, FM, TF card, U disk, AUX, TWS and other modes', 'Hoco HC22 Sports Bluetooth Music Speaker – Beige Color', 'SKU-03-Beige.jpg', 1300, 0, 50, 1, 44, 7, 1, 0, '2023-09-15 09:02:30', 1),
(26, 'Y80 Ultra Smartwatch With 8 Strap', 'The Y80 Ultra Smartwatch is available in a variety of colors, including black, white, blue, and pink. It is also available with a variety of straps, including silicone, leather, and metal.\r\n\r\nFeatures:\r\nTouch Screen\r\nAuto Focus\r\nAPP Control\r\nIP68 Water Resistant\r\nSpecifications:\r\nModel: Ultra Y80\r\nDesign: Flip\r\nScreen size: 2.02?\r\nResolution: 240*284 IPS\r\nBluetooth: BT5.0\r\nCapacity: 240mAh\r\nMaterials : PU+TPU, Silicone, Leather\r\nCharging Method: Wireless Charging\r\nFunction: Lighting, Calendar, Alarm Clock, Week, Month\r\nWiFi, Bluetooth, IP68 Water Resistant', 'Y80 Ultra Smartwatch With 8 Strap', 'Y80-Ultra-Smartwatch.jpg', 2000, 0, 50, 1, 52, 7, 1, 0, '2023-09-15 09:07:32', 1),
(27, 'HK9 Ultra AMOLED Smartwatch ChatGPT Smartwatch – Black Color', 'Specifications:\r\n\r\nScreen 2.02 AMOLED\r\nShell material: zinc alloy+IML\r\nMusic function: can control mobile music and play music\r\nMemory function: RAM: 256KB ROM: 128MB\r\nDisplay resolution: 320 * 385\r\nBluetooth BT5.1\r\nSupported versions: Android 4.4 and above and IOS 8.0 and above\r\nLanguage: Simplified Chinese, Traditional Chinese, Russian, German, Italian, French, Polish language, Portuguese, Spanish, Korean, Japanese, Thai, Indonesian, Vietnamese language, Turkish language, Persian language, Hebrew language, English, Arabic, Ukrainian language, Netherlands\r\nAbout this item:\r\n\r\nCall: Supports Bluetooth calls Health monitoring: step counting, sleep monitoring, heart rate, blood pressure, and sedentary reminders\r\nStandby time: about 3 days in normal mode\r\nOther functions “compass, program dock, bedside clock, rest screen pointer, pedometer, multi-sport mode, heart rate, blood pressure, blood oxygen, Alipay, car code, two-dimension code collection, short video control, mobile phone search, flashlight\r\nSleep monitoring, sedentary reminder, incoming call reminder, message reminder, stopwatch, Music control, Bluetooth music playback, photo control, anti-loss, alarm clock\r\nWeather, APP dial push, NFC, voice assistant, artificial intelligence Dial: Multiple dial switches, dynamic dial push dial customization', 'HK9 Ultra AMOLED Smartwatch ChatGPT Smartwatch – Black Color', 'HK-9-ultra-Chatgpt_Black_.jpg', 2500, 0, 44, 1, 52, 7, 1, 0, '2023-09-15 09:10:35', 1),
(28, 'JISULIFE FA17 Rechargeable Fan with LED Light and Table Tripod- White Color', '                                    Strong airflow\r\nQuiet, energetic saving, and stable\r\nCamping Fan &amp; Led Light\r\n4-speed settings\r\nLight, gentle, fresh, and sleep mode\r\nThe light mode has 5 adjustable brightness\r\nLight has three modes: Cool, Neutral, and Warm Light\r\n12000 mAh Rechargeable Battery\r\n20 hours of Battery backup\r\nWireless Reme Cotontroller\r\nCan control the speed, light, timer\r\nMulti-function &amp; Multi-Application.                                ', '                                    7 Days Warranty\r\nLarge Tripod is NOT included\r\nMade in China                                ', 'JISULIFE-FA17-Outdoor-Camping-Ceiling-Fan-LED-Light-With-Small-Large-Stand-White-Color-20.jpg', 2900, 0, 66, 1, 50, 7, 1, 0, '2023-09-15 09:15:54', 1),
(29, 'JISULIFE FA17 Rechargeable Fan with LED Light and Table Tripod- Black Color', '                                    Specification\r\nBrand: JISULIFE\r\nModel: FA17\r\nType: Outdoor Camping Ceiling Fan\r\nLED Light: Yes\r\nBattery Capacity: 12000mAh\r\nProduct Size?283 x 283 x 170 mm (11.14 x 11.14 x 6.69 inch)\r\nStand Size: Up to 6 feet\r\nProduct Weight? 1035g\r\nMaterial? ABS\r\nFan Blade Diameter?212mm\r\nWind Speed?1st?800R/min, 2nd?900R/min,3rd?1500R/min\r\nNoise?53DB?60CM?\r\nPort? DC 12V/3A (Adapter Included)\r\nCharging Time?6-7hrs\r\nEndurance? Fan-20hrs? LED-19hrs? Fan+LED?22W MAX\r\nBattery Voltage?3.0V-4.2V\r\nWarranty: ? Days                                ', '                                    7 Days Warranty\r\nLarge Tripod is NOT included\r\nMade in China                                ', 'JISULIFE-FA17-Outdoor-LED-Ceiling-Fan-with-Long-Tripod-Stand-6-min-scaled.jpg', 2900, 0, 50, 1, 50, 7, 1, 0, '2023-09-15 09:17:22', 1),
(30, 'Xiaomi Solove F5 4000mAh Rechargeable Desk Fan – Black Color', 'Specification:\n\nBrand: Xiaomi\nModel Number: F5\nState of Assembly: Ready-to-Go\nColor: Black, white, Pink\nInput interface: type-C\nOutput Power: 5W\nInput charging current: DC 5V / 0.8A\nWorking temperature: 37-50 degrees\nProduct net weight: about 522 grams\nProduct Size: 134mm*180mm*310.5mm (5.27 x 7.08 x 12.22 )\nMaterial: ABS+PC\nOperating hours: about 3-10 hours\nCharging time: about 6 hours\nBattery capacity: 3900-4000mAh\nFeature:\n\nSelected ABS+PC material, resistant to pressure, beautiful and durable\nSwitch, shaking head, wind speed adjustment, three functions, one-button operation\n60 ° automatic shaking head, up and down 27 ° manual adjustment, large angle air supply\nUSB charging mode, you can connect to the desktop notebook, charge treasure, etc. through a Type-C interface\nWith a small volume of 522g, the built-in battery capacity is increased to 4000mAh. At full power, the first gear can continue to supply air for 12 hours\nAdopting a brushless copper core motor, the performance is much better than an ordinary motor, light tone operation, low speed and gentle speed shifting\nThe front net can be removed to easily clean the fan regularly. (The body should not be washed directly, please wipe it carefully with a wet tissue or a dry cloth)\n \n\nPackage Included:\n\n1 x Fan\n1 x Type-C Data Cable\n1 x  Instruction manual\n1 x Package Box', '7 Days Replacement Warranty', 'Solve-F5-Fan-in-BD.jpg', 1850, 0, 80, 0, 50, 7, 1, 0, '2023-09-15 09:21:25', 1),
(31, 'JISULIFE FA20 Rechargeable Mini Handheld Fan (2000mah Battery)', 'Full charge in 3 hours\r\nCan be used for up to 12 hours on a single charge\r\nWith 3 gear options, you can choose freely from a breeze to strong wind.\r\nThe size is like a phone, you can put it in your pocket easily.\r\nAdopting the grille encryption design, children can also rest assured to use it.\r\n\r\n1 x JISULIFE FA20 Rechargeable Mini Handheld Fan\r\n1 x Type-C Charging Cable\r\n1 x User Manual.', '7 Days Warranty\r\nMade in China\r\n\r\ncolor:green,white', 'jisulife_fa20.jpg', 750, 100, 88, 1, 50, 7, 1, 0, '2023-09-15 09:23:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_name` varchar(50) NOT NULL,
  `shipping_email` varchar(100) NOT NULL,
  `shipping_address` text NOT NULL,
  `shipping_city` varchar(100) NOT NULL,
  `shipping_country` varchar(50) NOT NULL,
  `shipping_phone` varchar(20) NOT NULL,
  `shipping_zipcode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `customer_id`, `shipping_name`, `shipping_email`, `shipping_address`, `shipping_city`, `shipping_country`, `shipping_phone`, `shipping_zipcode`) VALUES
(56, 0, 'Marsden Wyatt', 'tefa@mailinator.com', 'Nihil illum ut ad q', 'Nobis harum est aut', 'Austria', '+1 (642) 389-7524', '71126'),
(57, 0, 'Keaton Melendez', 'jynenuvu@mailinator.com', 'Voluptatem Id face', 'Aut qui explicabo C', 'Aruba', '+1 (991) 496-3126', '89668'),
(58, 0, 'Craig Finley', 'vecalizy@mailinator.com', 'Non quia cillum mini', 'Natus fugiat exercit', 'Albania', '+1 (267) 334-2355', '36273'),
(59, 0, 'Dora Rocha', 'dujogi@mailinator.com', 'Sit doloribus aut d', 'Nostrum aliquid perf', 'Netherland', '+1 (787) 528-4075', '44830'),
(60, 0, 'TANJIL AHMED TANJIL AHMED', 'ashraful.ripaz1@gmail.com', 'Sherpur', 'Sherpur', 'Bangladesh', '01646362477', '2100'),
(61, 0, 'Clio Mcintyre', 'vesocili@mailinator.com', 'Repudiandae ea deser', 'Eveniet nulla debit', 'Bahamas', '+1 (799) 528-5272', '26291'),
(62, 0, 'Dawn Kline', 'pimafys@mailinator.com', 'Quisquam sed labore ', 'Repudiandae optio o', 'Bangladesh', '+1 (271) 421-5383', '49495'),
(63, 0, 'Karyn Roth', 'zury@mailinator.com', 'Obcaecati sit commod', 'Laborum impedit et ', 'Bangladesh', '+1 (405) 171-2206', '90363');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `slider_link` varchar(255) NOT NULL,
  `publication_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_title`, `slider_image`, `slider_link`, `publication_status`) VALUES
(1, 'slider', '2.jpg', 'http://localhost/shop/single/5', 1),
(2, 'slider 2', '1.jpg', 'http://localhost/shop/single/5', 1),
(3, 'slider 3', '3.jpg', 'http://localhost/shop/add/slider 3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_role` tinyint(4) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_role`, `created_time`, `updated_time`) VALUES
(1, 'admin', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, '2017-11-13 18:31:36', '2017-11-13 18:31:36'),
(2, 'editor', 'editor@gmail.com', '5aee9dbd2a188839105073571bee1b1f', 2, '2017-11-13 18:31:36', '2017-11-13 18:31:36'),
(3, 'author', 'author@gmail.com', '02bd92faa38aaa6cc0ea75e59937a1ef', 3, '2017-11-13 18:31:36', '2017-11-13 18:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Author'),
(3, 'Editor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_option`
--
ALTER TABLE `tbl_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_option`
--
ALTER TABLE `tbl_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
