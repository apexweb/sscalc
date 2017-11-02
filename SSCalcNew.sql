/*
SQLyog Community v10.51 
MySQL - 5.5.46-0+deb7u1 : Database - sscalc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sscalc` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sscalc`;

/*Table structure for table `accessories` */

DROP TABLE IF EXISTS `accessories`;

CREATE TABLE `accessories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accessory_item_number` varchar(50) DEFAULT NULL,
  `accessory_each` int(11) DEFAULT NULL,
  `accessory_name` varchar(50) DEFAULT NULL,
  `accessory_price` varchar(50) NOT NULL,
  `quote_id` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

/*Data for the table `accessories` */

insert  into `accessories`(`id`,`accessory_item_number`,`accessory_each`,`accessory_name`,`accessory_price`,`quote_id`) values (63,'',1,'Austral Double Flush Bolt','42.7',172),(64,'',2,'810517 Door Closer Hinged Black','13',172);

/*Table structure for table `additionalperlength` */

DROP TABLE IF EXISTS `additionalperlength`;

CREATE TABLE `additionalperlength` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `additional_item_number` varchar(50) DEFAULT NULL,
  `additional_name` varchar(50) DEFAULT NULL,
  `additional_per_length` int(11) DEFAULT NULL,
  `additional_price` varchar(50) NOT NULL,
  `quote_id` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

/*Data for the table `additionalperlength` */

insert  into `additionalperlength`(`id`,`additional_item_number`,`additional_name`,`additional_per_length`,`additional_price`,`quote_id`) values (100,'','Stopbead',1,'2.8',172);

/*Table structure for table `additionalpermeters` */

DROP TABLE IF EXISTS `additionalpermeters`;

CREATE TABLE `additionalpermeters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `additional_item_number` varchar(50) DEFAULT NULL,
  `additional_name` varchar(50) DEFAULT NULL,
  `additional_per_meter` int(11) DEFAULT NULL,
  `additional_price` varchar(50) NOT NULL,
  `quote_id` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

/*Data for the table `additionalpermeters` */

insert  into `additionalpermeters`(`id`,`additional_item_number`,`additional_name`,`additional_per_meter`,`additional_price`,`quote_id`) values (113,'','Hd2 Flat Interlock * 4.4m',1,'2.05',172),(114,'','Hd3 Offset Interlock',2,'3.54',172);

/*Table structure for table `customitems` */

DROP TABLE IF EXISTS `customitems`;

CREATE TABLE `customitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_qty` int(11) DEFAULT NULL,
  `custom_description` varchar(128) NOT NULL,
  `custom_tick` tinyint(1) DEFAULT NULL,
  `custom_price` varchar(50) NOT NULL,
  `custom_markup` varchar(5) DEFAULT NULL,
  `custom_charged` varchar(50) NOT NULL,
  `quote_id` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

/*Data for the table `customitems` */

insert  into `customitems`(`id`,`custom_qty`,`custom_description`,`custom_tick`,`custom_price`,`custom_markup`,`custom_charged`,`quote_id`) values (157,NULL,'',0,'','','0',172),(156,NULL,'',0,'','','0',172),(155,NULL,'',0,'','','0',172),(158,NULL,'',0,'','','0',175),(159,NULL,'',0,'','','0',175),(160,NULL,'',0,'','','0',175);

/*Table structure for table `cutsheets` */

DROP TABLE IF EXISTS `cutsheets`;

CREATE TABLE `cutsheets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(100) DEFAULT NULL,
  `colour` varchar(100) DEFAULT NULL,
  `cut_to_size` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `quote_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cutsheets` */

/*Table structure for table `dropdowns` */

DROP TABLE IF EXISTS `dropdowns`;

CREATE TABLE `dropdowns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `manual_sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=602 DEFAULT CHARSET=utf8;

/*Data for the table `dropdowns` */

insert  into `dropdowns`(`id`,`name`,`type`,`manual_sort`) values (366,'SD-OXX,XXO LL','Door Configuration',20),(303,'Australian Cedar','Color 4',0),(306,'Bush Cherry','Color 4',0),(307,'Casuarina','Color 4',0),(308,'Chestnut','Color 4',0),(309,'Jarrah','Color 4',0),(310,'Rosewood','Color 4',0),(311,'Silky Oak','Color 4',0),(312,'Snow Gum','Color 4',0),(313,'Walnut Burl','Color 4',0),(314,'Western Red Cedar','Color 4',0),(365,'SD-OXX,XXO RL','Door Configuration',19),(364,'SD-OXXO LL','Door Configuration',18),(363,'SD-OXXO RL','Door Configuration',17),(362,'SD-XXXXO','Door Configuration',16),(357,'SD-OXXX','Door Configuration',11),(361,'SD-XXXO','Door Configuration',15),(336,'HD-Open Out-L Hng','Door Configuration',1),(337,'HD-Open Out-R Hng','Door Configuration',2),(338,'HD-Open In-L Hng','Door Configuration',3),(339,'HD-Open In-R Hng','Door Configuration',4),(340,'DBL-HD-OpOut Bolt L','Door Configuration',5),(341,'DBL-HD-OpOut Bolt R','Door Configuration',6),(342,'DBL-HD-OpIn Bolt L','Door Configuration',7),(343,'DBL-HD-OpIn Bolt R','Door Configuration',8),(367,'SD-OXXX,XXXO RL','Door Configuration',21),(358,'SD-OXXXX','Door Configuration',12),(355,'SD-OX','Door Configuration',9),(356,'SD-OXX','Door Configuration',10),(359,'SD-XO','Door Configuration',13),(360,'SD-XXO','Door Configuration',14),(549,'Pearl White','Standard Color',0),(369,'SD-OXXX,XXXO LL','Door Configuration',22),(600,'SD-XX','Door Configuration',NULL),(548,'Woodland Grey','Standard Color',0),(547,'White Birch','Standard Color',0),(540,'Deep Ocean','Standard Color',0),(546,'Stone Beige','Standard Color',0),(545,'Primrose','Standard Color',0),(544,'Mill Finish','Standard Color',0),(543,'Light Bronze','Standard Color',0),(542,'Clear 15um','Standard Color',0),(541,'Custom Black','Standard Color',0),(537,'Awning','Door Configuration',0),(550,'Darley Woodgrain','Color 4',0),(385,'Almond Ivory Gloss MD016A','Color 1',0),(386,'Anodic Bronze Satin MY125A','Color 1',0),(387,'Anodic Clear Matt MY221A','Color 1',0),(388,'Anodic Dark Grey GL213A','Color 1',0),(389,'Anodic French Champagne Matt GX207c','Color 1',0),(563,'Sec Slide-3 Panel','Door Configuration',0),(391,'Anodic Off White Matt MD227A','Color 1',0),(392,'Anodic Silver Grey Matt ML212A','Color 1',0),(393,'Apo Grey Satin 272-32786','Color 1',0),(394,'Apo Grey Satin ML183A','Color 1',0),(395,'Arrowhead Gloss ML066A','Color 1',0),(396,'Azure Grey Satin 272-36603','Color 1',0),(397,'Barley Gloss 984-50058','Color 1',0),(398,'Barley Gloss MD007A','Color 1',0),(399,'Barrister White Satin 272-84672','Color 1',0),(400,'Berry Grey Gloss 272-7252G','Color 1',0),(401,'Berry Grey Satin 272-88362','Color 1',0),(402,'Bright White Gloss MA030A','Color 1',0),(403,'Charcoal Gloss ML035A','Color 1',0),(404,'Charcoal Satin ML180A','Color 1',0),(405,'Citi Pearl Matt 272-88471','Color 1',0),(406,'Claret Satin MG142A','Color 1',0),(407,'Custom Black Matt MN248A','Color 1',0),(408,'Doeskin Satin MD188A','Color 1',0),(409,'Excel Basalt Matt GP208A','Color 1',0),(410,'Excel Blue Ridge Matt MJ221A','Color 1',0),(411,'Excel Blue Ridge Satin GQ121A','Color 1',0),(412,'Excel Bushland Matt MK203A','Color 1',0),(413,'Excel Bushland Satin GS103A','Color 1',0),(414,'Excel Classic Cream Matt MD245A','Color 1',0),(415,'Excel Classic Cream Satin GU145A','Color 1',0),(416,'Excel Cottage Green Matt MK274A','Color 1',0),(417,'Excel Cottage Green Satin GS174A','Color 1',0),(418,'Excel Cove Matt GD247A','Color 1',0),(419,'Excel Deep Ocean Matt MJ201A','Color 1',0),(420,'Excel Deep Ocean Satin GQ103A','Color 1',0),(421,'Excel Dune Matt ML252A','Color 1',0),(422,'Excel Dune Satin GP152A','Color 1',0),(423,'Excel Estate Matt MM247A','Color 1',0),(424,'Excel Evening Haze Matt GM235A','Color 1',0),(425,'Excel Evening Haze Satin GT135A','Color 1',0),(426,'Excel Gully Matt ','Color 1',0),(427,'Excel Harvest Matt MD215A','Color 1',0),(428,'Excel Headland Matt Mg219a','Color 1',0),(429,'Excel Headland Satin GV119A','Color 1',0),(430,'Excel Ironstone Matt Ml236a','Color 1',0),(431,'Excel Ironstone Satin GP136A','Color 1',0),(432,'Excel Jasper Matt Mm214a','Color 1',0),(433,'Excel Jasper Satin GT114A','Color 1',0),(434,'Excel Loft Matt GM236A','Color 1',0),(435,'Excel Loft Satin GT136A','Color 1',0),(436,'Excel Mangrove Matt GK277A','Color 1',0),(437,'Excel Manor Red Matt Mg262a','Color 1',0),(438,'Excel Manor Red Satin GV162A','Color 1',0),(439,'Excel Monument Matt GL229A','Color 1',0),(551,'Ultra Silver','Color 1',0),(441,'Excel Night Sky Matt Mn231a','Color 1',0),(442,'Excel Night Sky Satin GN121A','Color 1',0),(443,'Excel Pale Eucalypt Matt Mk236a','Color 1',0),(444,'Excel Pale Eucalypt Satin GS136A','Color 1',0),(445,'Excel Paperbark Matt Md214a','Color 1',0),(446,'Excel Paperbark Satin GU114A','Color 1',0),(447,'Excel Riversand Matt Mm204a','Color 1',0),(448,'Excel Sandbank Satin GT116A','Color 1',0),(449,'Excel Shale Grey Matt Ml284a','Color 1',0),(450,'Excel Shale Grey Satin GP184A','Color 1',0),(451,'Excel Surfmist Matt Ma236a','Color 1',0),(452,'Excel Surfmist Satin GB136A','Color 1',0),(534,'Anodic Natural Matt','Standard Color',0),(454,'Excel Wallaby Matt','Color 1',0),(455,'Excel Wilderness Matt Mk289a','Color 1',0),(456,'Excel Wilderness Satin GS189A','Color 1',0),(457,'Excel Windspray Matt Ml266a','Color 1',0),(458,'Excel Windspray Satin GP166A','Color 1',0),(459,'Excel Woodland Grey Matt Ml205a','Color 1',0),(460,'Excel Woodland Grey Satin GP105A','Color 1',0),(461,'Hawthorn Green Gloss Mk030a','Color 1',0),(462,'Heritage Green Gloss Mk044a','Color 1',0),(463,'Horizon Blue Gloss 272-33344','Color 1',0),(464,'Hunter Red Satin 272-84209','Color 1',0),(465,'Ivory Coast Gloss 984-82063','Color 1',0),(466,'Light Grey Gloss 984-32519','Color 1',0),(467,'Magnolia Gloss 272-32658','Color 1',0),(468,'Metropolis Bronze Pearl Matt 272-59003','Color 1',0),(469,'Metropolis Silver Glo Pearl Gloss 272-84623','Color 1',0),(470,'Metropolis Storm Pearl Satin 272-84684','Color 1',0),(471,'Navy Gloss Mjo11a','Color 1',0),(472,'New Hammersley Brown Satin 272-84657','Color 1',0),(473,'Notre Dame Gloss Ml040a','Color 1',0),(474,'Pottery Satin Mm175a','Color 1',0),(475,'Precious Bronze Pearl Satin 900-94686','Color 1',0),(476,'Precious Nickel Pearl Matt 272-88360','Color 1',0),(477,'Precious Onyx Pearl Gloss 272-52052','Color 1',0),(478,'Precious Pewter Pearl Satin 272-88202','Color 1',0),(479,'Precious Silver Pearl Satin 272-57225','Color 1',0),(480,'Regency Grey Matt 272-50278','Color 1',0),(481,'Rivergum Gloss Md042a','Color 1',0),(482,'Roseberry Grey Gloss Ml015a','Color 1',0),(483,'Stone Beige Matt 272-32538','Color 1',0),(484,'Vivica Black Onyx Gloss My042a','Color 1',0),(485,'Vivica Charcoal Metallic Gloss Mm019a','Color 1',0),(486,'Vivica Citi Low Sheen Ml211a','Color 1',0),(487,'Vivica Citi Matt Ml211a','Color 1',0),(488,'Vivica Palladium Silver Satin My184c','Color 1',0),(489,'Vivica Stormfront Matt Ml249a','Color 1',0),(490,'Vivica Ultra Silver Gloss My070a','Color 1',0),(491,'Wedgewood Satin Mj180a','Color 1',0),(492,'White Satin Ma124a','Color 1',0),(493,'Admiralty Grey Satin 961-51017','Color 2',0),(494,'Aubergine Satin 272-84736','Color 2',0),(495,'Eternity Bronze Pearl Satin 900-88393','Color 2',0),(496,'Eternity Charcoal Pearl Satin 900-88394','Color 2',0),(497,'Eternity Nickle Pearl Matt 900-88395','Color 2',0),(498,'Eternity Pewter Pearl Satin 900-88396','Color 2',0),(499,'Eternity Silver Pearl Satin 900-88397','Color 2',0),(500,'Lunar Eclipse Satin 900-87734','Color 2',0),(501,'Lunar Grey Matt 900-88417','Color 2',0),(502,'Lunar White Gloss 900-87731','Color 2',0),(503,'Off White Satin 272-33732','Color 2',0),(504,'Precious Gold Pearl Satin 272-96604','Color 2',0),(505,'Precious Steel Pearl Satin 272-57127','Color 2',0),(506,'Ultriva Bronze Pearl Matt','Color 2',0),(507,'Ultriva Champagne Pearl Matt','Color 2',0),(508,'Ultriva Charcoal Matt','Color 2',0),(509,'Ultriva Charcoal Pearl Matt','Color 2',0),(510,'Ultriva Citi Pearl Matt','Color 2',0),(511,'Ultriva Silver Pearl Low Sheen Yy230a','Color 2',0),(512,'Vivica Asteroid Mn271a see Sable','Color 2',0),(513,'Vivica Brilliance Ml277a see Sable','Color 2',0),(514,'Ultriva Anodic Natural Matt','Color 3',0),(515,'Ultriva Anodic Stella Bronze Matt','Color 3',0),(516,'Ultriva Black Pearl Matt','Color 3',0),(517,'Ultriva Deep Ocean Matt','Color 3',0),(518,'Ultriva Driftwood Matt','Color 3',0),(519,'Ultriva Ebony Matt','Color 3',0),(520,'Ultriva Gold Pearl Matt','Color 3',0),(521,'Ultriva Luxe Bronze Pearl Matt','Color 3',0),(522,'Ultriva Nobel Silver Pearl Satin','Color 3',0),(523,'Ultriva Olde Pewter Matt','Color 3',0),(524,'Ultriva Pearl White Gloss','Color 3',0),(525,'Ultriva Primrose Gloss','Color 3',0),(526,'Ultriva Silver Pearl Matt','Color 3',0),(533,'Access Window','Door Configuration',0),(530,'Double Hung','Door Configuration',0),(531,'OXO','Door Configuration',0),(532,'XOX','Door Configuration',0),(539,'Precious Champagne Kinetic (A&L)','Color 2',0),(562,'Sec Slide-2 Panel','Door Configuration',0),(555,'Pottery','Color 1',0),(556,'Stromboli Satin GK148A','Color 2',0),(557,'DO NOT BUILD YET','Door Configuration',0),(558,'Louvres','Door Configuration',0),(564,'Sec Slide-4 Panel','Door Configuration',0),(565,'Sec Slide-5 Panel','Door Configuration',0);

/*Table structure for table `mcvalues` */

DROP TABLE IF EXISTS `mcvalues`;

CREATE TABLE `mcvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `secperf_dist` varchar(10) DEFAULT NULL,
  `secperf_whsl` varchar(10) DEFAULT NULL,
  `secperf_re` varchar(10) DEFAULT NULL,
  `dgfibr_dist` varchar(10) DEFAULT NULL,
  `dgfibr_whsl` varchar(10) DEFAULT NULL,
  `dgfibr_re` varchar(10) DEFAULT NULL,
  `std` varchar(10) DEFAULT NULL,
  `spec1` varchar(10) DEFAULT NULL,
  `spec2` varchar(10) DEFAULT NULL,
  `spec3` varchar(10) DEFAULT NULL,
  `spec4` varchar(10) DEFAULT NULL,
  `hrly_sd` varchar(10) DEFAULT NULL,
  `hrly_sw` varchar(10) DEFAULT NULL,
  `hrly_dd` varchar(10) DEFAULT NULL,
  `hrly_dw` varchar(10) DEFAULT NULL,
  `hrly_fd` varchar(10) DEFAULT NULL,
  `hrly_fw` varchar(10) DEFAULT NULL,
  `hrly_pd` varchar(10) DEFAULT NULL,
  `hrly_pw` varchar(10) DEFAULT NULL,
  `cleanup_sd` varchar(10) DEFAULT NULL,
  `cleanup_sw` varchar(10) DEFAULT NULL,
  `cleanup_dd` varchar(10) DEFAULT NULL,
  `cleanup_dw` varchar(10) DEFAULT NULL,
  `cleanup_fd` varchar(10) DEFAULT NULL,
  `cleanup_fw` varchar(10) DEFAULT NULL,
  `cleanup_pd` varchar(10) DEFAULT NULL,
  `cleanup_pw` varchar(10) DEFAULT NULL,
  `markup_sd` varchar(10) DEFAULT NULL,
  `markup_sw` varchar(10) DEFAULT NULL,
  `markup_dd` varchar(10) DEFAULT NULL,
  `markup_dw` varchar(10) DEFAULT NULL,
  `markup_fd` varchar(10) DEFAULT NULL,
  `markup_fw` varchar(10) DEFAULT NULL,
  `markup_pd` varchar(10) DEFAULT NULL,
  `markup_pw` varchar(10) DEFAULT NULL,
  `sec_win_mesh` int(11) DEFAULT NULL,
  `sec_door_mesh` int(11) DEFAULT NULL,
  `dg_win_mesh` int(11) DEFAULT NULL,
  `dg_door_mesh` int(11) DEFAULT NULL,
  `fibr_win_mesh` int(11) DEFAULT NULL,
  `fibr_door_mesh` int(11) DEFAULT NULL,
  `perf_win_mesh` int(11) DEFAULT NULL,
  `perf_door_mesh` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

/*Data for the table `mcvalues` */

insert  into `mcvalues`(`id`,`secperf_dist`,`secperf_whsl`,`secperf_re`,`dgfibr_dist`,`dgfibr_whsl`,`dgfibr_re`,`std`,`spec1`,`spec2`,`spec3`,`spec4`,`hrly_sd`,`hrly_sw`,`hrly_dd`,`hrly_dw`,`hrly_fd`,`hrly_fw`,`hrly_pd`,`hrly_pw`,`cleanup_sd`,`cleanup_sw`,`cleanup_dd`,`cleanup_dw`,`cleanup_fd`,`cleanup_fw`,`cleanup_pd`,`cleanup_pw`,`markup_sd`,`markup_sw`,`markup_dd`,`markup_dw`,`markup_fd`,`markup_fw`,`markup_pd`,`markup_pw`,`sec_win_mesh`,`sec_door_mesh`,`dg_win_mesh`,`dg_door_mesh`,`fibr_win_mesh`,`fibr_door_mesh`,`perf_win_mesh`,`perf_door_mesh`,`user_id`) values (46,'48','55','60','25','30','50','0','4.50','5.50','7.00','8.00','30','30','30','30','30','30','30','30','90','30','90','25','25','5','80','25','0','0','0','0','0','0','0','0',52,105,50,115,0,0,52,105,47);

/*Table structure for table `midrails` */

DROP TABLE IF EXISTS `midrails`;

CREATE TABLE `midrails` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `midrail_item_number` varchar(50) DEFAULT NULL,
  `midrail_qty` int(11) DEFAULT NULL,
  `midrail_sec_dig_perf_fibr` varchar(50) DEFAULT NULL,
  `midrail_316_ssgal_pet` varchar(50) DEFAULT NULL,
  `midrail_window_or_door` varchar(50) DEFAULT NULL,
  `midrail_height` int(11) DEFAULT NULL,
  `midrail_width` int(11) DEFAULT NULL,
  `midrail_window_frame_type` varchar(20) NOT NULL,
  `midrails_configuration` varchar(50) NOT NULL,
  `midrail_cost` varchar(50) DEFAULT NULL,
  `quote_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

/*Data for the table `midrails` */

insert  into `midrails`(`id`,`midrail_item_number`,`midrail_qty`,`midrail_sec_dig_perf_fibr`,`midrail_316_ssgal_pet`,`midrail_window_or_door`,`midrail_height`,`midrail_width`,`midrail_window_frame_type`,`midrails_configuration`,`midrail_cost`,`quote_id`) values (113,'',NULL,'','','',NULL,NULL,'','','0',172),(114,'',NULL,'','','',NULL,NULL,'','','0',175);

/*Table structure for table `parts` */

DROP TABLE IF EXISTS `parts`;

CREATE TABLE `parts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `part_number` varchar(60) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `supplier` varchar(255) DEFAULT NULL,
  `buy_price_include_GST` float DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL,
  `size` float DEFAULT NULL,
  `marked_up` float DEFAULT NULL,
  `mark_up` float DEFAULT NULL,
  `price_per_unit` float DEFAULT NULL,
  `show_in_additional_section_dropdown` tinyint(1) DEFAULT NULL,
  `show_in_additional_section_by_length_dropdown` tinyint(1) DEFAULT NULL,
  `show_in_accessories_dropdown` tinyint(1) DEFAULT NULL,
  `master_calculator_value` tinyint(1) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `uniqeid` varchar(50) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

/*Data for the table `parts` */

insert  into `parts`(`id`,`part_number`,`title`,`supplier`,`buy_price_include_GST`,`unit`,`size`,`marked_up`,`mark_up`,`price_per_unit`,`show_in_additional_section_dropdown`,`show_in_additional_section_by_length_dropdown`,`show_in_accessories_dropdown`,`master_calculator_value`,`display_order`,`uniqeid`,`created`,`modified`,`description`) values (12,NULL,'Hd2 Flat Interlock * 4.4m','',6,'meter',4.4,9,50,2.05,1,0,0,0,1,'C3EDC404-E2C4-79CC-8D27-627B02BA5FB4','2017-01-15 12:01:59','2017-04-04 20:53:54',NULL),(13,NULL,'Hd3 Offset Interlock','',5.2,'meter',4.4,7.8,50,1.77,1,0,0,NULL,2,'968E267B-83DE-E5E1-AEB1-2AA0931A4392','2017-01-15 12:03:10','2017-02-19 21:08:26',NULL),(14,NULL,'Hd10 7mm Offset Interlock','',5.64,'meter',4.4,8.46,50,1.92,1,0,0,NULL,3,'D6C847F9-2E74-8BEC-A88D-9FE90E0C2550','2017-01-15 12:04:02','2017-02-19 21:08:26',NULL),(15,NULL,'Frame Interlock * 4.4m','',6.8,'meter',4.4,10.2,50,2.32,1,0,0,NULL,4,'4C664E8B-4B13-0336-1E44-91464CC148EB','2017-01-15 12:05:17','2017-02-19 21:08:26',NULL),(16,NULL,'St9 Reciever Channel','',15.5,'meter',6.5,21.7,40,3.34,1,0,0,NULL,5,'489E93DB-7B2E-F44F-A950-E31E70765D4C','2017-01-15 12:06:32','2017-02-19 21:08:26',NULL),(17,NULL,'25x20x1.6mm Channel L1813','',25.26,'meter',6.3,32.86,30,5.21,1,0,0,NULL,6,'610E12AF-553E-8A36-28DA-2BF52EF5D769','2017-01-15 12:08:37','2017-02-19 21:08:26',NULL),(18,NULL,'Bs2 Bug Strip','',5.91,'meter',4.4,5.87,50,2.01,1,0,0,NULL,7,'A423E163-5D79-613A-CFCD-A7F4DC6A5C19','2017-01-15 12:16:38','2017-02-19 21:08:26',NULL),(19,NULL,'Stopbead','',11,'meter',5.1,14.3,30,2.8,0,1,0,NULL,8,'4A06485F-112B-D868-F9EE-9B9B7432AA97','2017-01-15 12:18:18','2017-02-19 21:08:26',NULL),(20,'','20 X 12mm Trim Angle','',9.7,'meter',6.5,13.58,40,2.09,1,0,0,0,9,'0B2DC591-621F-B867-8549-E95094028233','2017-01-15 12:20:03','2017-08-18 22:11:17',NULL),(21,NULL,'Hd15 Short Leg Door Reveal','',18,'meter',5.4,23.4,30,4.33,0,1,0,NULL,10,'5BEAAF8E-EF1B-1BC9-A950-94C9B7AAD581','2017-01-15 12:22:17','2017-02-19 21:08:26',NULL),(22,NULL,'Hd16 Long Leg Door Reveal','',21.15,'meter',5.4,27.5,30,5.09,0,1,0,NULL,11,'90EEAD29-009C-9B8F-F8F4-B34FC55ECFD9','2017-01-15 12:23:25','2017-02-19 21:08:26',NULL),(23,NULL,'Tm18 Offset T-Mullion','',9.2,'meter',4.2,27.6,200,6.57,1,0,0,NULL,NULL,'A7DEF0AC-062B-5F9D-32BE-01C9A2EFE75C','2017-01-15 12:25:48','2017-02-19 21:08:26',NULL),(24,NULL,'St11 Bottom Runner','',6.3,'meter',4.2,10.08,60,2.4,0,1,0,NULL,NULL,'5F1498F7-703D-2FAB-E9EC-9CF5B0947A3E','2017-01-15 12:26:47','2017-02-19 21:08:26',NULL),(26,NULL,'St8 Bottom Sliding Track-U','',16.5,'meter',6.5,23.1,40,3.55,0,1,0,NULL,NULL,'C0596ABD-046F-6A2F-FFD9-FB3B6006DE69','2017-01-15 12:29:28','2017-02-19 21:08:26',NULL),(27,NULL,'L3455 Single Top Track  5m','',8.08,'meter',5,12.12,50,2.42,0,1,0,NULL,NULL,'E16FE95A-726B-DCCE-CCF3-1F58D5A1F3EE','2017-01-15 12:30:22','2017-02-19 21:08:26',NULL),(28,NULL,'L3454 Single Bottom Track','',8.16,'meter',5,12.24,50,2.45,0,1,0,NULL,NULL,'3022EB26-5015-1E04-7DC4-7F8BC8FC1910','2017-01-15 12:31:33','2017-02-19 21:08:26',NULL),(29,NULL,'Austral Double Flush Bolt','',21.35,'meter',1,42.7,100,42.7,0,0,1,NULL,NULL,'AF9B0550-09FA-4DD3-C890-55A1BB74F749','2017-01-15 12:32:52','2017-02-19 21:08:26',NULL),(30,NULL,'810517 Door Closer Hinged Black','',6.5,'meter',1,6.5,0,6.5,0,0,1,NULL,NULL,'F786DF08-2C58-3D5A-74DA-25A68599A287','2017-01-15 12:33:30','2017-02-19 21:08:26',NULL),(31,NULL,'Pd1 Small Pet Door 240mm X 190mm','',48.69,'meter',1,70.6,45,70.6,0,0,1,NULL,NULL,'0D76DEA1-01BB-47C2-773B-D16FC0A72D21','2017-01-15 12:34:40','2017-02-19 21:08:26',NULL),(32,NULL,'Pdl Large Pet Door 400mm X 260mm','',73.85,'meter',1,96.01,30,96.01,0,0,1,NULL,NULL,'C67061C5-49DD-2603-3638-622C4BE6737C','2017-01-15 12:35:22','2017-02-19 21:08:26',NULL),(33,NULL,'ST7 SECURITY DOOR TRACK-H','',16.5,'meter',6.5,23.1,40,3.55,0,1,0,NULL,NULL,'7B15A782-D3C7-8B5B-C65A-F2E193ACEBC0','2017-01-23 13:25:50','2017-02-19 21:08:26',NULL),(34,NULL,'SG S/S mesh','',75.6,'sqm',1,NULL,NULL,75.6,0,0,0,1,1,'F8C363DD-9855-885B-E32B-002B4D260C84','2017-01-23 18:02:29','2017-02-19 21:08:27',NULL),(35,NULL,'Perf Aliorated Mesh','',68.45,'sqm',1,82.82,10,82.82,0,0,0,1,2,'ADF2C790-EE31-9CAA-A9A7-9ECC6F7AAC5B','2017-01-23 18:05:00','2017-02-19 21:08:27',NULL),(36,NULL,'7mm Grille','',19.56,'sqm',1,21.51,10,21.51,0,0,0,1,3,'1C0ACBB7-471B-814A-CD0C-CA1DB6988759','2017-01-23 21:38:22','2017-02-19 21:08:27',NULL),(37,NULL,'Sec Door Frame','',39.03,'meter',6,42.93,10,7.16,0,0,0,1,4,'9974F23E-EDD6-91A0-135C-48917A89F76B','2017-01-23 21:40:07','2017-02-19 21:08:27',NULL),(38,NULL,'Sec Window Frame','',22.56,'meter',6,24.82,10,4.14,0,0,0,1,5,'F4574B4B-11A7-3DD8-C866-73FD37002327','2017-01-23 21:43:18','2017-02-19 21:08:27',NULL),(39,NULL,'Midrail','',27.78,'meter',6,30.56,10,5.09,0,0,0,1,6,'7E2FF200-8A62-BCD8-E373-E39EA01E469F','2017-01-23 21:46:47','2017-02-19 21:08:27',NULL),(40,NULL,'D/Grille Door Frame','',29.3,'meter',6,32.23,10,5.37,0,0,0,1,7,'CC96E3DD-EA94-1AF2-30CA-8A5A38CCA616','2017-01-23 22:06:09','2017-02-19 21:08:27',NULL),(41,NULL,'D/Grille Window Frame','',15.98,'meter',6,17.55,10,2.93,0,0,0,1,8,'685807A4-B8C3-C154-D912-E1099F9D7C76','2017-01-23 22:07:58','2017-02-19 21:08:27',NULL),(42,NULL,'Fly Frame','',6.73,'meter',5,7.41,10,1.48,0,0,0,1,9,'8982441B-01E0-77DA-6641-E39A7B10F77E','2017-01-23 22:09:51','2017-02-19 21:08:27',NULL),(43,NULL,'Door Crn stake','',0.63,'each',1,0.69,10,0.69,0,0,0,1,10,'E02D4812-C674-09C0-DAFB-01725AE9C31B','2017-01-23 22:11:10','2017-02-19 21:08:27',NULL),(44,NULL,'Window Crn stake 11mm','',0.46,'each',1,0.51,10,0.51,0,0,0,1,11,'1852B265-3E09-269D-251E-817B20B6C343','2017-01-23 22:12:00','2017-02-19 21:08:27',NULL),(45,NULL,'Perforated Sheet Fixing Bead','',10.67,'meter',3.1,11.73,10,3.79,0,0,0,1,12,'4F2F4256-F6FD-52CF-6D29-6D4DB8BFE121','2017-01-23 22:15:10','2017-02-19 21:08:27',NULL),(46,NULL,'PVC L Seat','',237.46,'meter',100,NULL,NULL,2.37,0,0,0,1,13,'04EC487D-C797-287B-86D3-807EB9657011','2017-01-23 22:20:56','2017-02-19 21:08:27',NULL),(47,NULL,'PVC Wedge','',422.14,'meter',99,464.354,10,4.69,0,0,0,1,13,'7FA1D4DD-0BF0-2F50-528C-C03535CB5F63','2017-01-23 22:22:51','2017-02-19 21:08:27',NULL),(48,NULL,'Insect Mesh','',1.14,'sqm',1,1.26,10,1.26,0,0,0,1,14,'1512FE65-FA8E-DCB3-614C-41F3E1B5A21F','2017-01-27 10:38:47','2017-02-19 21:08:27',NULL),(49,NULL,'S/Door Pet Mesh 915 x 30m','',9.59,'sqm',1,10.55,10,10.55,0,0,0,1,15,'3BB09270-0B4A-62DE-BC91-45EE46125D8D','2017-01-27 10:39:53','2017-02-19 21:08:27',NULL),(50,NULL,'5.7mm Foam Spline 457m','',0.1,'meter',1,0.11,10,0.11,0,0,0,1,16,'D6BDB220-D779-4B46-592D-D0241B173B42','2017-01-27 10:40:58','2017-02-19 21:08:27',NULL),(51,NULL,'Corner stake for F/Frame','',0.16,'each',1,0.18,10,0.18,0,0,0,1,17,'C475F181-427F-078E-4450-4F082BB69635','2017-01-27 10:41:45','2017-02-19 21:08:27',NULL),(52,NULL,'Roller and Hinges','',2.15,'each',1,NULL,NULL,2.15,0,0,0,1,18,'B750D656-CD2F-B96A-6033-94CF7D4CBFEE','2017-01-27 10:42:27','2017-02-19 21:08:27',NULL),(53,NULL,'Single Lock','',23.74,'each',1,NULL,NULL,23.74,0,0,0,1,18,'30334810-642A-3612-3849-2B77A656608C','2017-01-27 11:01:39','2017-02-19 21:08:28',NULL),(54,NULL,'Trple Hngd','',66.34,'each',1,NULL,NULL,66.34,0,0,0,1,19,'375B0AB7-4356-9D11-75C6-9DD31107212F','2017-01-27 11:02:11','2017-02-19 21:08:28',NULL),(55,NULL,'Trp Sliding','',66.34,'each',1,NULL,NULL,66.34,0,0,0,1,20,'62894E5F-B00D-73FF-207C-8E1BCB060F22','2017-01-27 11:02:30','2017-02-19 21:08:28',NULL);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_item_number` varchar(50) DEFAULT NULL,
  `product_qty` int(11) DEFAULT NULL,
  `product_sec_dig_perf_fibr` varchar(20) DEFAULT NULL,
  `product_316_ss_gal_pet` varchar(20) DEFAULT NULL,
  `product_window_or_door` varchar(20) DEFAULT NULL,
  `product_emergency_window` tinyint(1) DEFAULT NULL,
  `product_window_frame_type` varchar(20) DEFAULT NULL,
  `product_configuration` varchar(50) DEFAULT NULL,
  `product_location_in_building` varchar(50) DEFAULT NULL,
  `product_width` int(11) DEFAULT NULL,
  `product_height` int(11) DEFAULT NULL,
  `product_number_of_locks` varchar(20) DEFAULT NULL,
  `product_lock_type` varchar(30) DEFAULT NULL,
  `product_lock_handle_height` varchar(20) DEFAULT NULL,
  `product_cost` varchar(50) DEFAULT NULL,
  `quote_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

/*Data for the table `products` */

insert  into `products`(`id`,`product_item_number`,`product_qty`,`product_sec_dig_perf_fibr`,`product_316_ss_gal_pet`,`product_window_or_door`,`product_emergency_window`,`product_window_frame_type`,`product_configuration`,`product_location_in_building`,`product_width`,`product_height`,`product_number_of_locks`,`product_lock_type`,`product_lock_handle_height`,`product_cost`,`quote_id`) values (193,'',1,'D/Grille','','Window',0,'11mm','','',NULL,NULL,'','','','23.430225',167),(192,'',1,'Security','','Window',0,'11mm','','',NULL,NULL,'','','','29.19107584',167),(197,'',1,'Security','','Door',0,'','','',NULL,NULL,'1','Single','0','121.26',172),(198,'',1,'Security','','Window',0,'','','',NULL,NULL,'1','Single','0','62.14',172),(200,'',1,'Security','','Door',0,NULL,'HD-Open In-L Hng','',820,2050,'1','Trple Sldng','0','265.46',175);

/*Table structure for table `quotes` */

DROP TABLE IF EXISTS `quotes`;

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `original_id` int(11) DEFAULT NULL,
  `original_qid` int(11) DEFAULT NULL,
  `required_date` varchar(20) DEFAULT NULL,
  `orderin_date` varchar(20) DEFAULT NULL,
  `notes` text,
  `notes_customer` text,
  `notes_installer` text,
  `customer_name` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `suburb` varchar(50) DEFAULT NULL,
  `postcode` varchar(20) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `standard` tinyint(1) DEFAULT NULL,
  `second_color_required` tinyint(1) NOT NULL,
  `color1` tinyint(1) DEFAULT NULL,
  `color2` tinyint(1) DEFAULT NULL,
  `color3` tinyint(1) DEFAULT NULL,
  `color4` tinyint(1) DEFAULT NULL,
  `standard_color` varchar(50) DEFAULT NULL,
  `color1_color` varchar(50) DEFAULT NULL,
  `color2_color` varchar(50) DEFAULT NULL,
  `color3_color` varchar(50) DEFAULT NULL,
  `color4_color` varchar(50) DEFAULT NULL,
  `installation_type` varchar(20) DEFAULT NULL,
  `installation_preset_amount` varchar(50) DEFAULT NULL,
  `installation_custom_amount` varchar(50) DEFAULT NULL,
  `installation_cost_include_on_check_measure` tinyint(1) DEFAULT NULL,
  `installation_total_cost` varchar(50) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `count_additional` varchar(10) DEFAULT NULL,
  `freight_cost` varchar(50) DEFAULT NULL,
  `notes_manufacturer` text NOT NULL,
  `window_door_suite_manufacturer` varchar(128) NOT NULL,
  `quoted` tinyint(1) NOT NULL,
  `printed` tinyint(1) NOT NULL,
  `send_file_to_manufacturer` tinyint(1) NOT NULL,
  `ss_markup` varchar(30) DEFAULT NULL,
  `ss_markup_amount` varchar(30) DEFAULT NULL,
  `dg_markup` varchar(30) DEFAULT NULL,
  `dg_markup_amount` varchar(30) DEFAULT NULL,
  `fibr_markup` varchar(30) DEFAULT NULL,
  `fibr_markup_amount` varchar(30) DEFAULT NULL,
  `perf_markup` varchar(30) DEFAULT NULL,
  `perf_markup_amount` varchar(30) DEFAULT NULL,
  `discount` varchar(10) DEFAULT NULL,
  `discount_amount` varchar(30) DEFAULT NULL,
  `total_sell_price` varchar(30) DEFAULT NULL,
  `invoice_second_1_price` varchar(20) DEFAULT NULL,
  `invoice_second_1_description` varchar(50) DEFAULT NULL,
  `invoice_second_2_price` varchar(20) DEFAULT NULL,
  `invoice_second_2_description` varchar(50) DEFAULT NULL,
  `profit` varchar(30) DEFAULT NULL,
  `override_final_price` tinyint(1) DEFAULT NULL,
  `custom_quoted_amount` varchar(30) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `mfrole` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;

/*Data for the table `quotes` */

insert  into `quotes`(`id`,`original_id`,`original_qid`,`required_date`,`orderin_date`,`notes`,`notes_customer`,`notes_installer`,`customer_name`,`mobile`,`phone`,`email`,`fax`,`street`,`suburb`,`postcode`,`state`,`standard`,`second_color_required`,`color1`,`color2`,`color3`,`color4`,`standard_color`,`color1_color`,`color2_color`,`color3_color`,`color4_color`,`installation_type`,`installation_preset_amount`,`installation_custom_amount`,`installation_cost_include_on_check_measure`,`installation_total_cost`,`status`,`count_additional`,`freight_cost`,`notes_manufacturer`,`window_door_suite_manufacturer`,`quoted`,`printed`,`send_file_to_manufacturer`,`ss_markup`,`ss_markup_amount`,`dg_markup`,`dg_markup_amount`,`fibr_markup`,`fibr_markup_amount`,`perf_markup`,`perf_markup_amount`,`discount`,`discount_amount`,`total_sell_price`,`invoice_second_1_price`,`invoice_second_1_description`,`invoice_second_2_price`,`invoice_second_2_description`,`profit`,`override_final_price`,`custom_quoted_amount`,`role`,`mfrole`,`user_id`,`created`,`modified`) values (167,NULL,NULL,'19/04/2017','14/04/2017','','','','Retail Test Order','','','','','','','','',1,1,0,0,0,0,'Woodland Grey','','','','','preset amount','50','0',0,'62','complete',NULL,'12','','',0,0,0,NULL,'0',NULL,'0',NULL,'0',NULL,'0','','0','114.62',NULL,NULL,NULL,NULL,'0',0,'','retailer',NULL,48,'2017-04-14 22:05:05','2017-04-14 22:25:17'),(172,NULL,NULL,'',NULL,'','','','','','','','','','','','',0,0,0,0,0,0,'','','','','','custom amount','0','',0,'0','complete',NULL,'','','',0,0,0,'','0','','0','','0','','0','','0','247.49',NULL,NULL,NULL,NULL,'0',0,'','manufacturer','distributor',47,'2017-04-29 21:56:08','2017-11-01 12:23:19'),(175,NULL,NULL,'01/11/2017','31/10/2017','','','','Test on pmwhls for pmmf','','','','','','','','',1,0,0,0,0,0,'Anodic Natural Matt','','','','','custom amount','0','',0,'0','in progress',NULL,'','','',0,0,0,'','0','','0','','0','','0','','0','265.46',NULL,NULL,NULL,NULL,'0',0,'','wholesaler','',52,'2017-10-31 10:28:29','2017-10-31 10:29:14');

/*Table structure for table `stockmetas` */

DROP TABLE IF EXISTS `stockmetas`;

CREATE TABLE `stockmetas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `metakey` varchar(250) NOT NULL,
  `metavalue` varchar(50) NOT NULL,
  `part_number` varchar(60) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `quote_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8;

/*Data for the table `stockmetas` */

insert  into `stockmetas`(`id`,`metakey`,`metavalue`,`part_number`,`type`,`stock_id`,`quote_id`) values (155,'Sec Window Frame','',NULL,'frame',3,167),(156,'Window Crn stake 11mm','',NULL,'component',3,167),(157,'PVC L Seat','',NULL,'component',3,167),(158,'PVC Wedge','',NULL,'component',3,167),(159,'5.7mm Foam Spline 457m','',NULL,'component',3,167),(160,'S/Door Pet Mesh 915 x 30m','',NULL,'component',3,167),(172,'Sec Door Frame','',NULL,'frame',NULL,172),(173,'Door Crn stake','',NULL,'component',NULL,172),(174,'PVC L Seat','',NULL,'component',NULL,172),(175,'PVC Wedge','',NULL,'component',NULL,172),(176,'Single Lock','',NULL,'locks',NULL,172),(177,'Sec Window Frame','',NULL,'frame',NULL,172),(178,'Window Crn stake 11mm','',NULL,'component',NULL,172),(179,'PVC L Seat','',NULL,'component',NULL,172),(180,'PVC Wedge','',NULL,'component',NULL,172),(181,'Single Lock','',NULL,'locks',NULL,172),(187,'Sec Door Frame','',NULL,'frame',3,175),(188,'Door Crn stake','',NULL,'component',3,175),(189,'PVC L Seat','',NULL,'component',3,175),(190,'PVC Wedge','',NULL,'component',3,175),(191,'Trple Hngd','',NULL,'locks',3,175);

/*Table structure for table `stocks` */

DROP TABLE IF EXISTS `stocks`;

CREATE TABLE `stocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mf_id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `stocks` */

insert  into `stocks`(`id`,`mf_id`,`status`,`created`) values (3,47,'active','2017-04-14 22:23:20');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `bank_name` varchar(50) DEFAULT NULL,
  `bank_account_name` varchar(100) DEFAULT NULL,
  `bsb` varchar(20) DEFAULT NULL,
  `bank_account_number` varchar(50) DEFAULT NULL,
  `deposit_percent` int(11) DEFAULT NULL,
  `discount` float NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `parentusername` varchar(50) DEFAULT NULL,
  `avatar` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`firstname`,`lastname`,`role`,`created`,`modified`,`email`,`bank_name`,`bank_account_name`,`bsb`,`bank_account_number`,`deposit_percent`,`discount`,`parent_id`,`parentusername`,`avatar`) values (1,'admin','$2y$10$12D7/XB.E3HcX7d1OaPyMueqYhoX8ERnQONl8Cr6pquuUwLw4dljm','Admin Name2','Admin last name2','admin','2016-03-08 00:00:00','2017-04-03 13:48:09','admin@pp.com','','','','',NULL,0,NULL,NULL,NULL),(46,'factory','$2y$10$Sairs5gwK.M4wErvjcWSV.UgeOBeu4T18JTZ1QEcrqi4Dj8RDKGbO','','','factory','2017-04-14 21:51:09','2017-04-14 21:51:09','pedram13@gmail.com',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL),(47,'mf','$2y$10$HIpCWTq3grlV5/DPQxPjF.8KbIPIhu2wvOUcHLnvY.0ln0r0q8mxa','','','manufacturer','2017-04-14 21:51:57','2017-07-02 22:20:09','jelly.73.bean@gmail.com','btbt 2','','','',NULL,0,NULL,'','ÿØÿà\0JFIF\0\0H\0H\0\0ÿí\0,Photoshop 3.0\08BIMí\0\0\0\0\0\0H\0\0\0\0\0H\0\0\0\0ÿî\0Adobe\0d\0\0\0\0\03gÿÛ\0„\0ÿÀ\0\0US\0ÿÄ¢\0\0\0\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0\0\0\0\0\0	\0\n\0	u!\"\01A2#	QBa$3Rqb‘%C¡±ð&4r\nÁÑ5\'áS6‚ñ’¢DTsEF7Gc(UVW\Z²ÂÒâòdƒt“„e£³ÃÓã)8fóu*9:HIJXYZghijvwxyz…†‡ˆ‰Š”•–—˜™š¤¥¦§¨©ª´µ¶·¸¹ºÄÅÆÇÈÉÊÔÕÖ×ØÙÚäåæçèéêôõö÷øùú\0m!1\0\"AQ2aqB#‘R¡b3	±$ÁÑCrðá‚4%’ScDñ¢²&5T6Ed\'\nsƒ“FtÂÒâòUeuV7„…£³ÃÓãó)\Z”¤´ÄÔäô•¥µÅÕåõ(GWf8v†–¦¶ÆÖæögw‡—§·Ç×ç÷HXhxˆ˜¨¸ÈØèø9IYiy‰™©¹ÉÙéù*:JZjzŠšªºÊÚêúÿÚ\0\0\0?\0ßãßº÷^÷î½×½û¯uï~ëÝ{ßº÷I­«»ööõ ¯ÉíœÉPã7.ìÚÓ\ZJÚ?áØû“)´w>?Ç_MK,£¸pµ4þTV‚o’\'xÙ]½×ºRû÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ë\\çiüé:Ëá~ÀÞÝ´kåÅü˜¬ÄG¸6œ»ƒ|fö¶ÊÄm¨·%Æ“±w­w@î¼·È-¿´°[÷5NPÿ\0ÃO»%ÇURÒÎhR²®uîµþþ\\?Î³±><ü…\'åÇË:NÛè¼[ô÷rnè¶Æ[¸ãÞ8ÌŸkuÞËÄo-Ã’Úû¯mõßIç6Gm÷OxÒnúœ¦N£ûÅ‰‘áfûH\rm-/º÷[õt¯pí>ùë¬?gl‘V»{5YŸ ¦ZÊ­¿Tí½Á“Ûy‡)´³»Ÿkf(%¯ÄÈôÕ˜Üm];$°Ìèàû÷^èU÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝkÅüåœ¯Oü?Ø»Ï£¶†ôÄà¾OMA.[	Oº·&÷Àí-§¶©²ûbNÏì\nž†­Ì÷f/cà÷–nˆCGMEªÝÒTÒRÊib¯¨¦÷^ëAÔím×º·_hoýíóCá§kï¾ÅØ}]¹÷Î÷ßŸw—`n³–Üstóe;|n>ÄøuY›ÎlZç\n´xÊy²3Ñ=u‹§sIî½Ò§rf©0ïÜrÑü–ø5‘zï‹ß\ZrqÉñw7_ýÚ\\¥?ÄúI·Öã\\ßÃÏC¨ë¡‘dÅíê?âŒþ%hðôDßÃý×º¼_åwüØ©þ\ZöîÙÙ_ >`õnìø¯²zw¦;«hõ~/¿6¼½yE½:{jlÙjq]{–êî´èŠ>žìÛí\\.v ,¶ßsMh¨¨ÎF\ZOuî·Ôê>ÕÚ]×°0Ý“±ªnØÎÕn\n<}_Ýbkâ¨—mnL¾ÕÉMG’ÀdóX,¶:L¦sMYEWSIWNRhexÝXû¯t$û÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ê•?™ÿ\0ó.Û_€øÑ[ïj¿ÏÙ«ÅEÕ»pÉ¾\'ÂaqÙ¼…>ÓÄvfGÕ”9}÷A°£ßƒO\ZA—ÜOL8Ä™ik¤¦÷[\0’\0ãÖ›¿Ö™Lgev¼!¿š7ÀÝÙò;‚]·Ý9ì×ÀŠ•f^ê¡Ííùw†^>ÛÝÿ\0ò±î\r²¯·ä†-¿ŽeÛ˜ê¦ÕMrÄÖÞû•É–SÙÜo¯p‘ÊàÄjT*içB}:Ê¾Yû’ýæ9·aÚù—göàþé½…n-šâòÂÝÞ7G0ÏsÈdkU$PB	àê®ªÇ¦îLoó*øþþ¥¶ñz³_ÊNƒs\ZMË¨Ø³ær1Ãðç$bÚuckT®?nÄcÃaÖ¢GO¥„*_õÕäoú;·üá›þµô{ÿ\0\0Þ«ÿ\0	Ì?÷2Û?í³£SØ?ºŸ¦hhê÷÷ó(ø}·ª~KüRéMá²`©þP»/°i’„ÔuÆ,ï?¼¬è¬„òì|í_Ke†/fVÁÆíáUHi±ôÂ‚ŽËo}Äå¼Y›½É”OÜEúRšÆä…l!¥tœ\Z—A~Xû›}áùÅ¹‘9{’\"¶Òmšþ·Öøw–ëMñ.SXQ*÷¦¤5ícC@æN¿øµßãüÑþ%)Þ½K×{\Z3˜þMx\rÊ1û³hÉÔM›Ïºçº\Z¼TlŒ¢uÍXÆm£5´¦†ž#¦Ò‹ýuyþŽíÿ\08fÿ\0­}\n?àûÕá9‡þæ[gý¶uzÿ\0{ß·ÿ\0”7b`z÷æÿ\0ÍßùïŠtœJtWõ?UönÚíŒ„Ûgen\r‡Ù³CÓ»©°}UÖý=º{ª®«pP+TU\n)q©A†œPG-$g»÷8òÿ\0-ø»_h–EÔ‘ª³1´Ph>f•òê)ö£îßï½ct›ÛîT7vRx7WRM¤”¯†y#IL•MDPMQÿ\0Â‹ÿ\0–Õ0ÅUÚ›ÎŠ	$D’¬õ7fÔ%:»3I[OÌñG{¶€Ï¤*ÆÀ‡ÝžJ$¸8¾¿ôS4ŸÝñ÷žTf“mYÀ¨_¯°ùniSóÇÌtw»ù›ü\'ëoós÷,üyí­ÏG³vþÛÛKzîuËnZÌvìÉ®«o`võ~çÁd(àØùHë!ÈQÒÍAUHôÕ+Gí{Ýó.Ylö{üûˆýÓ;ˆâ•Ú¬C\ZU,¤hj‚¡¡ÇPÏ/ýÛ=èær9ÚM¯“ýpv›f»¿Ûî\'¶€Ç\n¼	â	f™!•ÜÄQ£v#‰#,Ýí¿Çn|&/pâ$’l^fŠ†>ibxj:”SÌÐÈ‘yb!‚°±\0Ü$r,±¤ˆ{T}B·–“XÝ\\YÜ(9G\0ÖŒ0EF\rE«?˜?ÅNèí~üé>¹ìŽ{±¾2Tnú^çÂI²w¦&\r­>ÅÏå6¾åJ|¶gA‰Ü?e›ÃTB§5P˜ t,Œ¬Hly§dÜ¯wMºÎè½Ý‘apºi(Å[%@j<	êVæ¿b=ÏäžWäNræ^_K~]æT†Mšqqm!n\"Žx‰Ž9^HµG*šH¨EhhA\0”ÐBÊ‡þò\'=ÿ\0¢C¼?û^û®¯#ÑÝ¿çßõ¯©«þ\0?½Wþ˜îe¶ÛgC/A9ŸåÑòg´¶ïLõ~¯bnæª‡la3Ý{Ù[2Ýe%;ÕË¡Ìîí¥†Â¶RJHdxiÚ¡e¨ñ”‰^B¨Æ;W¸<¥¼ÞÅ·mû¦«·®…häJÓ4ÑEiåZŸ.¼û÷@ûÂûgËüåÍü‚`åÛ]?S<7vW0Ì;Çoq,5iÒµ\Zˆè`ÛßÌsâFêîžñø÷ƒì<¥gmürÙ›§öîØm½©£Û[SeävÞ/qä©óµXvöyñõ{²„(*ªg™e&4}c¹¯cŸrÜvˆ®ÉÜ-#igC*¥CEtµ5ŒNzîwÿ\0u6¾HäÏqo¹z4äþ`¼ŠÃi»ú›f3O:ÌÑ!‰e3E¨[ÉÝ\"*9\"¢¤ëþ‚þT?÷‘9ïýáÿ\0Ú÷Ø{ýuyþŽíÿ\08fÿ\0­}L_ðýê¿ðœÃÿ\0s-³þÛ:~97¿_,ûu\'AöÖw}v›spnš]¶:³´p×b¶Í®ÊýfåÚ8ŒlÕ‘Ó›Ç˜I)áAçÙ¦ÑÏœ±¿]›\rªý¥»ÐÒhðåZ…ãBÈ>€~ã}ÓýõöŸ—G6s÷(ÅaËÿ\0S©¹úÛBÉ1!,8SCVÓAæz\Zþ,|ùø±ó7#Ø8?ý6åÜÝW‡¿öŽáÚ[Ç¯·†Û©žjªEjÝ«¿p[s:ÔñWÐÏM4±ÀéOUC)I\n©1ÙyŸeæ»k»×4\r¦XÝ^7Sž*ê­ÄÃˆ§¾æûîw³ðrýç>òè¶Û·XŒÛ}ÜÛÝÛÎ +vOk,ÑT«+ª¥X0Mz‹Ü¿Ìâ¿Dw¯^|eß›ÿ\0#7|ö’ãßfu–ÌÙ;×°7%dyZÉ(q³e!Ùxå>Û‚²Jy¤Y2RR\"ÒÓËRåiãiF·hÙvÍÎÓfºº?¼ç§‡hîÆ¦€\nÚGµ<=_”½‰÷;¹˜½ÊØö‹µj»ÝÅµ¬*QC2¡¹–#3\0Tiˆ;d@²©2Ûs²6†ëÝ{ócá²RÍºzÖ·C¼18ì¸öÜ˜\Z-Çƒ«¦š²–\n\\¶3!­Ò•T4ªž¢˜OM<qœEuÓ\\ÛÆÇÆˆ€êAÔ*2<F*âê9¾ØwM»mÙ·{«p6ëô‘íeWF\ráHÑH¬‰GVZép­¥‘ÀÐêJ°~Iô÷Wv—UôÖõÜµ˜Íÿ\0ÜÒf\"Ø˜Úmµ¹³ê‡Â¶6ÆáÜ8lM~e®F·/MIŽlÅM\nå+eÔ†iÁŒ%ºÝ¬lï,¬.%\"æâ¾\nÄvÒº˜©R@\ZˆÔp*qÑÞÇÈÕÌ|µÌüÛ´XG&Ç³ˆÍô<¸ñuéða’DšçJÆÍ\'‚’xH5É¥3ÐÅ™Íâ6î6§1ÉãðøºEV©Èdëi±ôP`‰åª¬–\Zxõ»\050¹6ö½Ý#Rò0TI4Ï ¥µ­ÍìémiËpß\nF¥˜ýA\'¤GUööÃîm¿[¹6Vª¾‹¸³ÛG9A•Ãæ6ÎâÛ»§lW¾7;··&×Üt8½Å·²øú•ÁYM’A$SÆ	¡‘ÓÙÞÛ_DÒÛ9*‘ƒ¬¬¦„2°>£…Á£~cåç•/¡°Þ­•&–î¡x¤Žh¥†e‘M<R£Å€ÁÑ•”Dß]××s»zëbnŒäïÕËå1\'ncqyLæS!ü\rU¸7j¾›GZØ\r£·14žLŽf¿í±TRMMÕ	=],sVãpµµžÖÚi?^f+\Z\0I:Af&€éU,h¢ R{gåû~Ú÷ýïn³iÛ\"I¯.$tÅ‘bŠ422ø³ÊíÙz¥p®ê…#‘”\ZÛ_6º[{cFcâ{»yí:a÷¾ÜøíÞ»uÒTÓEWO–ØûÁö{}íÚˆe¦¢»QbbÇ>ÐÁÌ}Êx¶Ëq$†E‚m¨(úº‘Á”•>G¡Véí7lwÇ{Ÿh³ÝD¶sî›rÜÀÊÅZ;›qrfµ™XQL±Ê¿‰OÛgåïKn]Ç¸6l“öÍÞ;smç7•FÔí¡í>ªÎf¶~Ú©ÃÑî\r×²©»hí¸ûná+3ÔpÖUàŸ#\r,Õ1$¬,AÜ‡|Ûæš[jËÂ)r“E$dªÐ3\'ˆ«â*–+P	\0ñ#Ü½®æí³m°Þ¼;­žâxíEÖÛ}g{sÌ$h ¹6“Ìm&•avDœFÎ¨Ì …bm»üÇzxmüíÚ[æ&èÚ»£\rŒÜ[gsmß€ß5ó{qmüÝ<6w™Æt-N7/†Ëãjc¨¥ª§’H* ‘d™X_7mWE<ûƒÀê,¯\n²‘PÊDA¨#t0Ü>ï<ÿ\0´nÛNí»ò®ék3ÛÜÛ\\sG-Ç,RÆÅ$ŠXßuWŽHÝJ²°¬ ÐÅÕ_*6pîŸî†ÚØ¿%6öGømfTä;WâgÉŽ—ÚÂž‰ I`þùvÏUlÝªrRµBøiaªœ1ÆÁ©…Žõk¸MàCmx¤µgµ¸…qý9bE®xV§ ‡4{c¿òŽØ7]ÏyåÙíÌ«¯|Ù·ªÀ~žÂúæpƒI«”Ð¦€°$TÊ{7ê;ëÞý×ºJïßØ;?roL´Õtk]–šƒÕe²oK=>\'HÒBµ¹ŒµNŠjHu¯š¦TK‚ÞÙže·†YÜª¥¨2OÈ2xŸFNÛ>ñ¹ØívÎ‹4ò¬Aä:Q*rîÔ:QY0 Ÿ.‰7Q÷÷ÈžìÞ¿ öÆßÃì\r›˜øéØ\r…ºv†òëíÛQ·wãÍõÎÜìfÚ»O½q¤>øãq[³÷y™v_n*ãdÆTDñM!Žç¹n¤1$i%¤«¤ˆÚYŒk&•˜IšoR¿	&^æžGäžOÙ¹s¿º¼ºµæ\r¾[û[›K˜D±Cìö~4û{Ùö–{i4B/N­&³£U\Z·÷ÊŽ½êïŠÝòÏÅ_¶v7NõÇfoîÅÄVø§Ímê¾¡ƒpÁ¿v{y­ƒ%¸1;kÖâ£f¡++#QNeG¨öÖán I•J“PÊx«)*ÊiŠ«1Œc¨£}Ú%Ø÷K¶Y’UP’E4u,RÆ²Ã*†‚Ë«€À0\0j:./üÌú£wücêþøïM£½ºïMáØQ½><ã6¯bwÿ\0euÏstþíÏl®ßÙRbúo®ó›ŸsmÞ¾ËíÊŠªÍÏ›H2USRÌíGE?ÇüÕ>Uî<îÕÃwÜ[«1·±}–ªþäu¯pï¼NJÚØQÚ]KEµ7ÍëìæÝßî×ëþëÛÙ=¯ŒÂÕWäwÖŒt2b2éCî½Ô×üÑþl|&\'?º;º|eS¿wEMê®è¯Ü;CmõFçÚûC¶3Ý´ñ½uYºz“Õ½çŒþôÔnŠ<<[rŽ§ï2-MG³§º÷Gêš¦ž²ž\nÊ9áª¤ª†*šZªiRzzšyÑe‚x\'‰š)¡š&Ž¤«){÷^ê«;ûù Ñtwwö.Äƒ¢³{ã¦ú²¾&t÷É^ñÇv&×ÄÏÕ½‹ó/um³Õ¸Œ7YÖPÔe·µÜ¦ì}±•ÜÕ/Ä½3pRÉCJUž}×ºû“ùÖõ÷]ü–ï_;¦3}©ê¦ø³°vVè£ÞÔû_ov§È”Ÿ$wÆLoXRVd6~7olž´ß˜FƒqîÄ«É\ZZú<®=1oUUî½Òaž†Ä’Š:”ø÷ºWU&ã®ù¡‹›³vL5¿ð;_æåøI“Ïà™éþÓºhµ¶No-\0¦—óm,d•`”â$÷^èÏ|äþf;wáçfìÎ›Ãl\r¯Ù½‘¸zö³¶rØÝßý]ñîž=žw¦+®öŽÓØyŽÐž<oa÷§no*êª-ŸµUñÔÙI1ßs” )N*}×ºNv\'ómêÍÙ?6:ö‹§;¯rËð_â7ÊžÊ—û“¹vžsvOU—ß˜áÖým··¦ÞÁG½$[fŸscëjvïÜÈôÐÔO%%gƒÝ{¡/¥¾znçÒÿ\00»\'·>>ç:ÿ\0v|/ÈnÈ·ÎÍê}åþÌ>Ýìœf£6—Èl-GGoü.ÍÙ\rÙ9¬ÆÇÞ´Xúœlˆf ÜÉ>9\Z¨$u3{¯tZðÍ£³ó}9Ø;â›á&áÈoÎ¬ívŽÿ\0ÆmþïÛÙ~„Úýz~1`>[ÑöŽ_äÅVÄÄmúXj:Ûvc08Sãì\ZÄÂ­T”¿îXû¯t,/ó.Ü¹\rÿ\0ñœá~\"öÔ¾G¿ÇŒ/··–ZcoÊéòcaAØÛC¶:3)ƒ¨ÊïÝ­Ö\n…NÇÊÃš¢ŸhU	hkã¤¯–“Ý{«V÷î½×½û¯uï~ëÝ{ßº÷A÷iö¯_ô®ÆÌöGgîZ=©³°MŽ†»+U\re\\²×ærtx<‹ÆSVåó›ƒpç24ô8ì}µõµARK\"!Ky{k·ÛÉwy0H€±¯B¨\0T–f \0$\0$ô{Ë|µ¾s~ói°ræÜ÷[´ÁÙ\"B \ZYdwr©QD$’;*FŠÎìª¤Šççñ¹k1;Çov^ÄÛ˜Ü³`ó;ã?èÜ¤{o+÷F‹xu6ÇîÝßòGcÔíý¿KW‘ÌGšÙ÷Áãqõu™KKO$Ê<õ³Ç3Çq±B­¥¥s	\ntê!¢Išá\n­YµD4¨,ÔPOSê}ÔýÇ»Û-îö{ý¾ûsš/rF–?ÁW‚úãnƒh¹Yf)&é<ydŽ(<I]S£ÅÝ¿%ºoãÖÍÛ[ë²·lá÷¾à¡Ú»×]}ØýÙ¾»qd0½Ý®úÇ¥v—`vFÿ\0­ƒfíŒ¦n¥pØšß³Áâër5**J‰ã«”‚¤TçÖ4KÉ$3FÉ21VVA¡‚<:âþfë3ˆî¦Ü´‡?WPà·æÐë^ÞÞ]=ŒÍw~ÛÚ[»¦v¾ýï«°s9Õ{Ó¶vîÿ\0ÀTí¼&çÎáòÙ±Æ¥4ÒWÒ¤Ûê3ì¿æðg°öï_îýÛ»“3´»3·óûgt¯Dü†¡Û”›CuÒbj6×`ï|æKªhñ}aÖÊÜÄxÊmÑ¹¥Ämé³ÐUâ°å(ki)ý×ºíÿ\0šÃzÚ.Ùþëö>Oqî£¥ìQÛ•›õèÞ9¾¬î¨þ7o}»Öû¿µ¶ÆÅëÝýY¶»ò¿µ²•8¼½V;]œÄÍ¨¦¢Êcêj}×ººûù±ôMFO}`{ÆlOVæ¶ŽÅ¥ììBìúnôìŠMõ²ë·ï]un6\r‘‰Üßº‡²7ÞøÏoþàÙôLNÙÛ™ø÷8ÝøFÁÕäß#Kî½Ñ£þ`?+ð½c¸);7\'./¶kó¸Ì‡«{~*­§[µw–G­÷T]Û›`Ç“øâ»W³1[c(ý…Ø¹éäÄT4y%4Þý×º‹KüÃ¾ Õå*±Ú™\nZ˜÷çWõÆ\"£)ÕÝÁ†ÃïÅÜ¹µz¯+ú³pe¶·v6_¸7¶/Sº6½N_lâ«ª€ÈWÒ¢Héî½Ð\'òWù¸ü6øñÖ›ÓxTve&kuàðŸ+æÛ;R»`üŠŒÖåøcÙÔ½#ßxýÏžë‚î-Í³6]öæF›—ÏG·²°E‹3æhà¯ÅÒOR¾ëÝ,þ43OŽ%°¹¶:×ê¹i{å®Æ¡ îÎ‘îN¦9:O‡î›göŽãþ%Ø;lâq\Z(2”y!ˆ¯š›;JË”ÇÔQÇ“Û»†“î½ÓÅó;ø9S†Âçªû¸íºþÀù+Ú4Qož´íþ½ËÓl?ˆ4Ûr¿ä6áÎmýó°6ölA°q³Ž•5%NkQ÷¸¨ë©I“Ý{§ìŸóø…ˆØ[7²«»;2»S°:èö~Ðj~£îªýÇ™ÀÉÙ{¦±›y6=]ÔïŠ>ÙÜ½³Ù·…Øµèw¶s4õ4˜üMLØü‚Rû¯tóµ¾yüQÞ•}AC¶ûMë«;ÅòTÛ\Zšm…Ù˜Éh2Øá›ëší³Ùé–Ù´\'£7švnØÊmTÂoîö^m×‹­ÂÇLùJJŠHý×ºXvïËNè­å¶¶gïZüåÜÔt9U‹±;xaö–ÞÊåæÛØßÚ›§eí=Ãµºcbæ7\r4¸ê<öî­Âaêò=45/:4cÝ{ -üÊ~`ñ;Ó;–íŒÅcf6^³%/Ow£ÝÒvmìî‡Ú¹ŽŸš>¶uïŸWÜ]†Ûµ9í“ýàÂc²uñÇYWœ¯º÷Jž‰ùéñcäžõNºê>ÁÏew¬ÛkvîšlìêNæêÊªÚ.ºÝ˜Í‡ÚXœ|½­×Û*“!½z{|fèpû×nÁ$›ƒfe+©©stTÔBî½Ò°¿šÁîªËo¼fýî¾®(;š§rïOô5ÞÙ>©Ÿ+ñß¼77yl=£Ü˜n²ÈõGbvßV`ºópTæv^ÞÍe7m\Z`²!ñÚ¨j–/uî®ËíÞ¼ì=ÝÛûgn!˜Ý}½ð}sÛŸáyºÚ{Ëru†Àî\\.Öe1´Xüà®ë~ÐÁdEN6ZÊDûãNò­T0Cî½Ð‘ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî‰_óïÅøçñ¼»—¬æÚ¸}Û°¶„™|6èß-ó¼vVÕw©¦¤®Þ{×fõ†ÝÝ¸övÇ ©—/”¢ÁÑTåj¨heŽ™<¬¬=×ºÑ›á÷ÈîÃÝŸÌâ&úÊ|åø#ó+¶;·{t®sy5ÁÊœOrîªýÃò†“±pýãÝ?Ëï­÷Wìˆ¿ƒRaé0¸\rÃ¨Ãe&L•.&óW¯Ë[ZTj=µÏV\rðkãÏËÏ‹»äàþ[¿ü½þgõþæÝØÌ~_{g°ýÚý£ƒÄ±Ëdv¥&êN½ÙðevåFVœO%dÖÖcg¬„Êmñó•vNaÚ§ÝŸ“w-Ÿp´y©f,ò’¡Š…¡>b¤ž»ïïº^ÎsþÕíå¿ÞW’=Éå\rþÖÍ¼+\rº8-ìä~Å™àIÞO€Ìhê„!&]›üÉ?˜¿Ãîàè®°ùqÖbÛ&7En+:g¾èûbRÖî=¯Êîì^»k7,r\\Sn˜ê0Ôy]±SÈµ<ÐB C?ŒÚû›ù¿–÷}šË™6ý±à»“E-uëQ©T·s\Z|XªÑ¨@\"‡¨÷•~î?w?{}»÷+™ý•æþx¶Ý¹zÐÜß¾˜ÛÊæ‰R !‰WÀ!ÊÊ\Z-JÌŒA)*iþFa¿œÃ,ÙìŽ•íß‘;WãÞÛÿ\0é/ä6Þ“nô¾óÜØ|}C¼÷ðÚ;3·àÛðeÀÉTRãpøêj\Zl´ÅI§‚SÎ&üû£³\r¯é¾°Z]×Á³“¯NiBiOÅN¤»zòû†{šÜùûèòËs†ù¹ÃýâÔ›jXÌS£Wˆ>£ýo:uoýMšþa”ý…¶‡v?òŠÿ\0Dòå^£~IÖ[_¸*û,<ÔÓmž›»Q‚\\ŒuF-L¦]C@±ö5Ûÿ\0®[oûÔòÿ\0îý_«à	<JSðê\Zk_^±œÝ»ú³¼P“ÝÏë‡…þ!ûÙ¬¾“Ä¨þßÀoFšü­<º¦æÀïçþnß\r6çÊÈéýÉÚòü?ë¼v[··ÞÜÛø>—Ü?\"ê¾?öwðnÆjî\r‰„Âcñ”3–:‚mµLcÈI1ã‘ÄtÀ!¿&÷c;—…ô\néñtèø%Ññb¾-4ÿ\0J”Í:Éi“™`þî_tÓ’…òóZîS‰†ßâýHQs·‹¯ì»Âý¯˜ðuíÕÕôÆÚîÍ¡IÜ˜¯æ…Þûûá†Oãõ`Uí.´Ü{µ6®{Ñ‚‹¶j0µØÎê:\nÜ.ýì9ë²øj|4óoN[øu.\"\nx|´Ô’¾íýWý×¸~ó~ïð_ÆõÑ¤ê¦žíTá§º´ÓšuÏÏoO¾iÏ\\ŸýE}Ðs‰Ü­×mÏoÔWÂñ<_ÑðuSÄñ¿GF¯ôõtTšÝ_ÂÜ§òZèèÿ\0—Ü9—øé€ùÓ†‚ˆd\"ì—jìýaò\Z«r´’ö;¿ÀùÌÀQ%Aðj™#k/¸wž/?·[_õT7îuÜ†šø˜>ú¿µïøž=:é/ÝM=âµûæsÑ÷õâãÜrK™t>ô{H„cþ/Qu¢÷QIlÔõµ?Çÿ\0™èÎ§Îb»w¯2|—_mœN—ub$¢’’|U<ÂI*WŽáRVd£Á\"²HÕ€›öÝÏn—n²–;èš&‰X0aJë×,yÓ’9ÃoçeÛ¯¹bú+øo¦ŠH^†W :jsÂ˜\"„TÖ²¿Ê‹1ŠÝßÌoùÜï=¯¤ÜKpV|’Ìa7.dÈ`ò¸½ÅÝ=•–À×ÐdéŒ”u4¹œbšŠWW\"xTº]A>áÎD‘\'æßr.!pÐ3ÌÊëCM)##®“ýì­nv¿»ÇÜ§iÜ x7H-vÈ¦·”‘-¶Å$VF£+Fý¬í89è‹ÿ\0\'¿š=Íñ»ãÿ\0bìî¸þU}©ó·™î,–æ¬ìí‰Þ˜Ý«’Ÿel¬[ì:¹¶çÇþÙ¦Ô”¸¸²^¾žAAOÛ€D’¹˜÷-Ÿi»·³ä™÷8Úà¹š ôS¡ƒ¦	E@â8ðó3ÏÞ÷ÙNH÷+Ü_Þy›ïA´òEì;4v©¶_µ¸y\\ÜÈ.”MºX¶†ix…c=äÕTÀÑšÍÓàNK¹~*Ôÿ\0+ÛÖÛ—moL&Öì\r·¾àß_!2{c{Ñî½§µ¨«Fõ¦Š,ÆSnTc Ÿ\'¥UY52TI\r!8Ç™9ó•ßrÙËq‰%W×9W¨ƒ	R;±’©¨ìò²{)÷O÷ÞÛ’½ÐÜí›s·{+‹‹	mM®Ð³@ÐOpÈ7;ÂdT™$\".ê¤NèZ@l¿—%&GþAüËèké¡¬£ªé¾Ý†¦–¡X\'‰»ãV¨¥Y#aÁà¯³ÎTPÞís‚°ª›i*üÔ¶ê,÷úY!þï/»t±9YW{³*ÊhAú=ë ù–ßð¨\r‡²v§ÂÎ¬Û;GmíúÊ”8:iêðø\\v:¦jcÕ¯)§’¢–ž)Z–%b„é, Úà{Þ‹x!åÍµ¢…òŠ¨ý\n^Š?»\'wÝwz¹Ö+íÊy¢­3–F`×Ø\nÑ‰¡9ùõ²^Àë­ÅíœÎeml6Z<4&G‚Æc«OŒ‚9Õ*(é¡‘VhØ‡\0Ù7÷/Û[[Æ‘<p\"¾‘•\0.¹Ë¼o[ÅåÅõµÞéq-¹™ª’Hì¦ŒHÃ1Öº_ÎOãŽóøKØØoçðç7Ø=•±38]»òdä(êº=·…ÞùlfÓÇæ3¸œ]f3øÜõùjêJLÕ+Éµ Ód¡¨¥Èc„õ/¸;UÏ.]Çî/È‘^ÄB]ÆÀè•\\„€#Q©‡žËSÐÏ¹ÿ\0¸7¼ûßÝÝë+‹þYÜ#’ç—¯beñöù­£’áÒ\'‘_ÂQ\Z;DÀ‡Ä…’H§*ƒßò[øC–‹	?ó2ù7¸h;_å‡ËÌ%\'aâ7D°,õçZo<^>¯‡ÃEã†‚ƒ9šÁEJ*Z–WŽXqTÚiã¨5FžÞrä‚#Î;Ì¢}÷pQ0÷ÜnU@•¥h`\Z€þø¾óZ=ôvßm¶ù6¯j9BwÛžÖ¹»½·‘ÖY¤9f%/ 37ˆå§~öQ“vÊžùgÒ=ÑMÃ¶{Ó\Z>-v¬ÑÅ\Zøó”óç÷÷Ç]Í’ªûúV‹‡Ý5{ŸlÇ§«’§)¾è…âX‹…èúïoÜFå~ŽrŸsÀÄÔa[ZR†­*ð§XáËOýjöÇ›ùFY	Ü6Y¬»Z³\ZØEkºÃ\ZjÉ$+krX²†Æ_ˆ°\0¼ÓõUÌM±óC¹q¹\n:ÞõÜ”}[ñcsWÇ_>?i§ÃÛ]•ëü°Õå)á’ùyÜõ¨¢Lre°tØ»Ï*GÀ±l›}‡¿FICdì	ô¬LoB@4ºÕ\Zu(LètüÍµ;´|«qgglÛ—2ÛÄÑ‡Ÿ÷ü\n—v¡Ò6+«a{{r’L3µÇj–déKžíh¾bÓ|\'ëœ>\'!ŠÃv¥6+åzmÚô¬ÛGgô6C’§ëMÇ=LRQî¤ù;W·1ÕÔ55qWã¶þ~˜Ç:G#e¼ýú9zÕ#eI€¼¹F­Ua*DlA ¨($†UPŠô]cËGÚ©=àßn¯\"šïlgå­šâ\"…\'ŸrYckÈ’Hõ½¹ÙÒæD‘Q\Z)g³“R ©>\\ã3?øùíÔTðIÄÙÕ9ß”ýF³ÁŠÅ÷ŸTì¼ižMÏ¬h%ƒÝÝU‚¥–L\r|ŠaËã\\%qXäÇVâßVM”\\ó5íŠ2÷°pD‚¥òš5§ƒ\n£qVDžÕIgît›\'±üÎì%¿¼[~YÝh]öÛë‡Ò!u¨2m·²° î†M7PÔ¬ðÝ.z££kaÚ»ûº~IeñUÝÓÜ»<Qï¬¦#\'=VÐê=…4\rSên¬Ée1´õÝ‘¶š£îk«ä¥†|þ`Í“¬‰¦¤¢We·¸†âÿ\0u‘Ná:RB¦©yG ÄšÍV `({šy¾Ù÷\rŸ”ùÚTäýªèµ’Ln/n+F½½DvV¸”\r)vX\"ÓlÇ\\’¦z¿ócõŸ^lþ¹Ï|sí=ƒ¶6VÙÀlÍÿ\0UU»ömféÚØlE&7™­Âcñ»Ï•™M,3K5oÙO#—§†JD­ÙÇ½ÛÚZÁm%¬Öé\ZªJu)e€\n‘èh|€éo1Þûc¼sûºïV[îÛ¼\\]Ë=ÕŠ¬7ÎååE‘ÞÒ®HÓZGfj±Dö†÷íÌfäÅm_ýAÔ5=ÝÖ]ÁGÕ½±×{Ë1ŸÎí,Æ;lÃ»6–_nnm·\r‰Ý{Dy,fN°ÕKŽûjÊ8BRÏ*{»‹Ô™!Üì`%áC<NK)¬¥Y•A¨cZP@I¶Å´r½ÆÕs¸òO5n-·\'Üv»ëtŠ)£i|(\'I¡¹”I$2ÊTÇ$I¥d×Y`|	Î|¦§ø/ð²»×!’Ûñ|Jøà˜:üŸjïLnN³:sf¨Éãàêºêz”´zðÇ<ñG.¥IdP™åy7qË<¸\"µ·1ý¾’d`Hð’•¡§}ø´öõýò÷¯·ÝÝ/O6nædŽÎEÞ\Z‚1¼RÊ\Z´%T‘B@8êÄ¶\roc×b¦“³0OnæÖ¤¬{;pä·6-é,tLÙ,®nUŠ‚xhþÔ*þ¯é[µÓ!7Q¢É^Å‡í!OòêÞ\"Ù\"¹UØo.g´Ó—º‰\"}^cJI*Óç«òk¯j:(ëÞý×ºGvÏƒì­Ë³§ÈÖáŽQGIœÆˆ[%É‹OˆÏãV¥$§9,RjéÄŠÑù¡]@‹l\\À.`–Åu\nAò\"¸¨9ìÛ›lÛ­†æ°$¢´2WD‰ÁãztH„«PƒBhz¯ÝßÓŸ+‡wíÚêÜGZï:¼ŽÚ‹ä>+	_±³Ÿ\Z¾JíÝ›ŽÌa¶ÕNj\rÕ%Gqtæú§¡ÉÆ%Èàpù9¤ÇÓAŒ«¨ÉÇAŽ«€5>ß¼~ñ·¾³”Ã5@ºE(Ð\\*†]_«ŠüH¦ bÁT‰»iæïmÿ\0©›Ç*ó-‚n;b¤°\\L.\"Ý¶‰§x¤˜F`¥ý«È\\K\Z‰§‰ igŽAäOÁÚ’?ðŸ÷Okî³³³¿³ûC½ó; gv®éíLf/·{ï½‹¶7&ÛÞ8=ÃÔ˜ÞÆìXâŽjÜ}e]f7ÓÑR•šH«iÄ–°}4}MVfngbÌ@© ,ÆƒÈc¨[~Ý¿}n“_­¿ƒ‡E]E!‚$‚f¢ëeŠ5ô\ZØ Vü·òf¨ÃîíSü²ì|WHo½ï¹;?Ð½ö«ò«™Þ]Ö›K­{/yn½õÚ âìù»¤¥Øxü†×“7__ˆÛÕõù†ªÆåÒ¶1j:\'éÃã·òz®øçÕ”ûSm|•\\§dì®Ëø‘Ú];Øõ}38]§œø—ðWª>a±ûã`¿fÖ·aáwÿ\0]uþN³)6_=4Ùò”rÁ5U’{¯u—z\'êÍÿ\0SòGun_’†£³>Uü:ùíñ›¶7E/NÃG·—züÞÇ|oÛ”ý¥´v|]˜dÁm~žÙß\Zñ8Ê]¯>Jº¯4³êsÔ,²Tû¯ue¹ßÛvOÒ9-Ç¹;–¿C.]¨:ïä/È—ÚYúÜ3íÉÐöo\\uilÝƒÜXJŠ±¬NñÇîgÛKSJajjÊÈç÷^è“÷÷ò¾¢ïïì]÷zæö?M÷ÿ\0e|Lî’½Žë½¯–Ÿ´»á¦êÚ;›«rønÌ¬®§Ëlš\rÇM×c¹©Ÿ–züfß¥Ž†\\l­<Ó{¯tN7oü\'¤¿½½œêÏ=Ó¶6îþøï×]9²ö/mï®ðù†ëýë°{ÿ\0z|NÆ9ëß¸ÍÙQŸsîx%ÅcðûS;µ3)Íà÷S/W8÷^ê>áÿ\0„ïô®éëž˜ê½ÃÛQç¶~ÝÝ}§º~AÓæº°Td;´v÷zEòumýµ_EØøÓ±öÌ;ò–ž–‚ƒt§cRcqtÏI[p7º÷Gç¯ò©Ú_5û3Ú8þÊÆu>ïì_Š]ðƒ¸óÝ3±û_-º>7v.ä§!ŽØËU‰Ëu_fíÌ¥vMðÙØfÉPS>RIjqUsAI$ëÝ9w×ò´Ùýùº¾JÖf»{wmÝò3ùoìåÙW·ðX¤máµ0;|÷fð³bßùåT;†¿/MÜEQ‰©Ä$R.9ÞZ©’±¡‡Ý{¤ON\'Î¶êï‰¿6~.ÇØtûB“ç,Ùª÷øÍÕ»kã\']u}EPmš¤Ÿ¤zgmå·^dÍQ…ÙtÙÓM]\\Ùì½MT³”Še‚/uî]‡üæë]ŸÚx­‘Þ½-´*»·-ˆ§íž™Ú_ºÛ	ð°v>ÛÛY\r³·ñ{›àëv%~×ªì…T*íÕã§ªÊeh ’¢©`¦£ƒÝ{¥ÆÉþK˜\r•¹>\rÑ7ÉMí¼úàPVu6Øß]´²ÝÁ¶·‡O`ð%ÿ\0Eß!1U˜-ËÔÝMÜT›nˆv&Ì¥Æ×PîÈhiiZ¢–Ž)iª=×º»¿~ëÝ{ßº÷^÷î½×½û¯tLþqtÿ\0dößVìúŽ¤¤£Îo¾¨í½›Û˜—’ÜCiQo¸ví.w	“ÀE¸ä§ª¢ÃîJfæ—1·ª*ÐQC¹qxç¨’UçŒ‹˜,®ïlàk\rsé:Æ[H}5j¡€bÉ\\kU©\"Vöƒš9–¹‹v‹š%x6]Ïk¸Úå¼Ž­Œ¦9#—ÂÔ¬ñ<¬7N³m,ÁØ„jPëˆŸ8?üdÚ¸Œ,[C5Õ?{7â Èæ~.í\rœÚ›Gµòû\r·×mn^Ã›äÿ\0cì|‡gdvÆÌ4MYEŽÝtp×U×ä#ÅåÚ·íÒ=³ØyŒE³D”ŽH-$±«[*²¬­¹Yþ¦D2JT	¢Í¥ëN³™=Ùöe¯½ÌÜ\'Õweºó§4øqo3ÏÓØÇv-¬aµ-ÒÙ,×Eô<–’’(öÆ/ÝÉ/ˆÙ~áê.—ê^³íEêÌ\'NîÝ©‘—	º¶–_³zÿ\0´6.ÜëýÑ×\'®{Shá»ª³{§\rå‹7¾r*87>Y_G”¤‚luLµI1Aý4P‹_@(?—\\öÜ÷ÛrÜ7[Öòêy.%*(ÈÅØ€0bqåÕ_â¿‘®úÆlî‡ë*¿˜{gvõÿ\0Çºï„¹n»}óñ«=¸wþÍ©ø[¹ú_%ŒÛ½s¸áù3‹Ù[av®¨%—=MØªÎË¹2Uë™l[A€…Þô;Áü¡ÿ\0†ôNÄø÷ˆï¬t;=ðã_òæùq-PVÖeûã£>5íÍý„Âåz®ª‹·q1üyß›©ûot¥uuBoXRƒ,±Ç\0¬¤ƒ\"¾ëÝ&ûù ugsuÖâê.âí¬¦ëëÍ×ÕÌ“­²ô‰AÎSW|øùýÖÿ\0>6ŽøÀå²[›tc±û‡ã†îë:}Ï¬ƒ?V‘ä]që “Ý{¥>ÙþS›Òlue;·å˜ùÝ]·µöžÓ^Íì?Ž=o’Û4˜l&K£+·ž=ÔÙœæâÛ’mê¡øã´±Û·µ*vV>z|ßcSŸ1æ¢÷^èÌÿ\0!Ú½ß‘Íew§Ì^Æª‡´vìqÝ{bçþau/MGÓXú¬ÎGÕ¿zç¯>xádØzÆêÍ×=7cä»‹•YÚÕ¤ÇÑÒ44°û¯th#þXÝ…IÐ;/ãž7å-\r]üoŸã”Ÿðÿ\0è4TPuø­Ý]IÞ=EQòÍÛg;ò\'\'G˜éœV!6#×QÖí¹jcE””e“Ý{ “;ü˜2»·¬{[eî¿”4¹-ÕÛ¿¿›JîåCÑiŒ ¤Ü_Í#äþÆù-“ìfÕ=·Ziézn³hKˆ\\Gñî«|â·âûy}×º•ß¿Ëc{nN© øÏ«ÉöNÌíŸæ+ÝŸ%²Ý„Àìí‹KÑŸ~OoÎÉß¿-ú¶ÿ\0¼ý¿_Ÿíê^æëŽðì.ºÃUím»AM¹q²d1ôíŠ›5Qî½ÒÃ¾“ÆÔîÿ\0‰Þ-Ýy\r·‹ÞýÁñ»¶q]výyA¸q›!¶ÉÎôÊý«·2µ›®ŒÒ`þgüh®¢Ù¹Hb¤‚›nÍK>^(2u²¢{¯tÙ?Ë²7šüÏÞ\rUŒè7ïÿ\0’Ã?×}-ÞýkÖ?%:º>Úõë|f¶_jufÆìÌv\ZLs|½î®Àî*6®÷Û»Æš²»n†RÆÏ„‡Ý{¦ì7òNÑÛ{gzü°ì¾À«ëX:ûnerß!°»o±k>9üŸìÏ—hz÷¶þVâöþÚÙÝKÙ¡>/Œìêéš‡já±pcjñÙ˜òì—º÷G#ðß½ª»*ƒ¹1Ÿ(öæÚíÅéŽèï–;—	Ð.Ðv~×èmáÚ»çmf:#\r™î<½ÇmÏ”Ìw^ä¥«›+þé?…ÕÄ‘Ó-m:Wû÷^è³OüžÎGjô¾ÀÊü€Çñ?Ñkñ\'ˆéêüvc¯z#©¾\\|>ùQ¸6Ojg+»‡3qïíä¿ö¾Ø¤ÜðRí˜1&JÉq9\Z¶¨j¯uî…Ÿü¸w·XïÌWku—Èœ&±6­GóXÌìÊýÑÒSî­·ŒÜßÌ»å—Zü¤Åä3{z“·vÕV{ÑõÚá&£Ž¾†MÖ*ÍX¨ÃxþÖOuî‹7Éä¸~Uoíç›ìï•Xší£¸w¿ÉìÞ®n…Ëå{ë°¾SüwùñûqõDýÉ—ïúÍ¡.Ñê¼W~Á.Ê‡²0t´t;fŠ›1MœªwÉ¯º÷VAñã\'ctâù?Ø]»Ü›c¹û+å/ríâÝ™m“Ôu½/´vífÒøçÑÿ\0éööÞÚY>Óî›c¤¡éhò	-NbYÐW}»™žª¨÷^èçû÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¦ü¦\'›¢“–¢‚¾ŠVä§¨Mq—‰ÖHÜ}]AG¿uîµ>ùûðx|(ïü/ÌžÊõ7Hü<Ãî,=omãv§Ã_Ž=·Ú_Ö\rÃƒÝùŽóé,¾C¤÷ÏnÚ¸¬.R¶M±BÆ“–Š,…<Æ¦¤ÓèÔ‚¬„+)aU¤öAÈýþÓîøLFåÝÛ‡~f«ç!¼1P÷>{ûµŸùÏ…ÅSm}ñ˜€ÿ\0}Ÿ’‡Èf³“‰Æ©–ŒÔ„‚Š*xÈŠ6ºöÇ•îîgº“fQ$Ž]´ÜLXÔÐTž€ÇY±°ýú=ùåí—jØ¬ýÊ•¬ìíãµ„Í³íÒ8Ž$ŠÒ4¡ä*ª·«µ59,I<6?É/øLWIïœdm|Ñ­Ý]{C´{?Y—É|áÜØÍ¥Kš›nÔl­ÿ\0U··\'Åé0;€ãr››<TÒå\nÏ2\ZŠ	#Žqì}µå­¾îÞö\r™ñ0t×q+\0Ã é+CCœÔt›š~û¾ùs/nÜ±»{—p»Uômt-¶›dh¤dA,s	:’¤¡V¡ ^…Næùÿ\0	âîÌæù¿+ûÓ±úÏ£zÃ/»»/5‘ù‹±÷\rWn©öÎSjöåÛ½7ñO¨úÀVîŸrcªjhvÞß£’•ò¾4ÆÓAM$TÆ;×$ì¼Ãx/÷m¡$º#\'™{V¤\n\"¨ó>]=±ûÐ{Ÿìï-¿){{îÍŽÂ×/xÐ¶Ó·NL²WmwK&DkTÀ©=¹.Äÿ\0„·bŽ_îñ4A6÷^ìþ×ÏÉÿ\0þcÎ˜ž»ßË³º;š`:@IWb~ÃÂD))V£#Nù3ÓÄÔ¼ëYÊ_ôaOû*¸êDÿ\0ƒ×ïÿ\0…jû‘ìýXßÝ_Êù®öŽÓè\rWÈ®ÈÛ;\'ceúÆž,Èî¬n¤ê÷SãwÆÏÙt½§/Åþ°ÅeöîçÛ˜z­ÁKŒÝ¹Á¸“!]‘¦!–šŒçxäÍŸ~ŽÕ7=¦7hG‰¤V\n?¥@HûkòÉ=FžÜ}å½Éöžïºäp¯m£Ý.\ZîúÞMºÎh$™¸Ê\"šwXä>f=$Š)ªª€iaÿ\0„òüeŽGøÜÈN–h&ùiÜe‡71Èiö¯?C¡Ïød?ëSÊŸôgÿ\0³™¿è¥“ýàx\"ÿ\0\\û¢m¿õ·«O‚Ý2ŸWá—û+Ý+\'ÇÆ¾9zþ^Óß2º¼™6ÎIš]ÔýhwŠn¶Í»VÀÈ¢U\"Ô+\0@¯ú··~åþ¯~ç·ýÏ§Oƒâ?­k«F­Z³ªº«š×¨ûÙÎÇÜãïúãîÃÜoÆýâ-mÁÂxb?ê|Âý?ÃðŠvÓŽ«Õÿ\0á<ŸÝ—ãŠÄ¬ÌË\Z|³î‚‘‚I†N¾’B¨\r†¦f·Ô“Ï°¡ö§•?èÏÿ\0g3Ð=O£ûÀ>ð@\0}È©õ;&ÛþIz°‹ÿ\0ú§áÏ]ï±øýñû®6fÞì8e‹~VÏÝ}‡ŸÜÛ·ÉEYŽFËî\\ïZä2í%|©MRÅMIäv†$yegl¼µaËö“Ùí[\\QÃ/ö‡ÅvfÅ2Ì„àÈuû›ïo7ûÁ¿í|Éî=_ßn64J,mb†\05#†+„Œe˜©g ÔH\0Ä¯ˆ3àöÄÜ=mñ¯¥¶NÅÙÛ£vÏ¾3XÊÞùí\rß%Vå©Ãáð3×¥~ïëÜæB¥Ã«1ê\n˜—6-‚×–íe³Ùöøâ·y<VS4V -jèÇ‚Œpéº¾íó½{í‡2{‘Í÷WûÍµ¢ØÃ*íÖvúaY$”&‹yâCG•Î¢f• \03wgÂ¹ùÝý3ò+¶ºCfnNÙøÿ\0šÛÛ‡ªwÿ\0Ú˜*m¹•ÚÛ¦ƒyáj&Áàzÿ\0„Î-6âÆC;%}=JHÆÀÆJšn\\¹e»n;vë·F÷ÖŒñ¤]%X84T»€9¥|—ïG4û{ÉÜçÈ<§ÎWVÜ­ÌIm»[¶ÊS4rÂöî¢Igy\"¬R2Ö6R+PjëÝ[ð‡®zkä§gü¹ëþÙ˜Žûî,.goöò¨ïþÔÊSfñYüÖ×ÜJx¶ÆK¯ê¶¶)ª2»7 zJ8T…yzÏ—,¬7‹Íú×nwK…),†i\rA*HÒP¨Ê\0pûz×1ûÑÍ<Ùí¿-{K¾ó•ÔÜ…´N—;}ÛlÇ$i<hÆtgz%Ä‚Žìª‘P´yùkñf|áØ›{­¾Jt¶Éß[;kîØ7ÆEß=¡´$¥Ü´Ø|Æ\n÷¯Ú{ƒÈT\"bóÕQød•¡&MEK*‘}÷`µæKX¬÷¾9mÒOTM\"Q€+Z¢)àÇ:KíW»|Ãì¦ûÌžÛó}Õ†óshÖ3JÛuÆ¨ZHå)¢âyPUâC¨\0Ø¥hH&‚Ž£´(i)h©¶O_%=<´è{Cr¹HiâXbRíÔ…˜ª $“ìéMÚ€¢èê7ýkê4‘6d’WÝo³\'ébâMOüKèùÐTÿ\0,º‡rtWzõ>ÅÝ½e»j05Yì\r/uöÚš²mµžÇn\\;.cmu®\'3J)s8˜%\")ÐHCêFe%Û¾Ö›å„Ûfçe–R.‚WZé`Ã*€Š<ú{yÏ—žÕónÛÏÌ×v|Íf²­½ÃXZÌMÃ\'éÍq$mª9eM+QBékÕ{rt¿Zì>£ë¾¸ØX]…Ö›K±ön\"nÝÞyiq›klãiñ8j	2y^­¬Éä–‚•ÍQ4³I§S³1$¨²µ“o³µ°´µmab|F4U¦2M\0âsÑ73o–ÜáÌ[ï5óûy>û¹]Ë}y0³Í;´’8Hî•S±:UBŽ\0Ô.ÝëÉÝû-×÷`ìº»–«Áe<¸žàÝøLÖ+9µsØÝÕµ77êx²8MÅµ÷F#­§t¨¤­¥ŠXØ2ïWÖ’n6Ïium‰Š¶$`C+VR#¨e`# €GNr¿0[r~õm¿ì{ÕÒ_Æ’Åú–pÈñ<Ã,mvRHg†GŽD`UÑÙXOSú»cîŽœë‘Õ[®ö/fuæÖÁìý³CQÛ;·%Yoc©ñxÿ\0âJî¨Ÿ!—È½5*šŠº™%©ª˜´²»ÈìÆÖvÒØZ[Y[[F¶ñ\"Æ€ÈÄÑEIŒ’h2NOÓ<É½Yófÿ\0½s6÷½ÝÉ»ßÝKyrëg)’W.úcK¥HÓS( *Š*€\0=Eñ¦ƒ£»µ;3¯:·ecw_qW­~ï¨­îMá”£€Ù¾wíUØ ¬êi)ö¦##¾»3pfj©(4õ9L½MDˆÒ> ŽÇhn¹½»´²gœÖBeb>\'z(1ÑAyˆ˜““Ð‹š}Ã¾ç-–¹wæK¹v½¥4Z*ÙB­ý…µ¨iYnÃLémgo\n³êeŠÐªK^ôë-ãò¦;S£7žÙÛ8Í¥ÛÛuõÎåÈíŽ×ÊQn*&ðÃV`òuX:¼¯Hæ±”ÙX)+] zŠJ˜V@Äëu/îVSn»}öÛqˆ.\"h\\¤„0WR¤©1ZT³¢¾Iæ[BçVçmžöi7]£pƒr¶ŽæÑZ&–ÞU•UKèÜÆY@`®¤ŠÑÏB²0u;®kqÇ¸É©ë{\'=SU§¯TRtù‚u–!gRšZç‹qígøÖÛÄV”ËŸú×Ðv»¸ú¤Ý¯VmzÃ-´`ƒZÔyQCÃ=ª/ˆ;»oc±»bo>ÆëíŸ‚ §ÄíÍ™·¾Id²˜-·‡¢S;…›|üzÞúl>&Œ%5+W<4”±GJ‘ _dË²Í$VÓË\n4¤k9!@à¸X€\0­\0ÀêJ¸÷7nÜ.n7\rïi°¾Ý§s-ÅÜûb¤’ÈÙi$ûŒ™ªÎÚ3ÌI$ôý„ø­’¢Ëx·U6O³÷$kpm<Fg±¾DnìÂm¼6ëð.ä;onbúc	²ðÙœÕ5$óäâÆ›RÂ ûHŽâmK0ieÈ­,Ìt†ø´¨ˆ &”­+LV#»÷)mÝ·4[~Ü×ÝKŽÛ\nd†¾‹3ÞÉpñ¡bÂ3\'‡¨êÑ¨ÛCá&C`í-­±6nåí­½³öNÛÁm\r§·ñß2ûn<~líœ].… úµÚ:V&†\ZxT“¦8À¿ÓÛìÒÞ[yfKx‘cÌ”UPú|\0èÛy÷psïºïÛÍ–Ùq¼_\\Ëywq&ÇcªY¦v’Y\Z— jwbÆƒ‰éEþÊŽôÿ\0ž÷¹¿ô³»gÿ\0µW·¿sÏÿ\0)ÿ\0ÙLŸõ¯¢ßõÄÛ?èÍ´ÿ\0ÜŽËþÚº9žÂíŒV=).ŽÃQÖß•Þù<­6‚š‘2™ìþcmíšÚÌåcÄ^¦FŠFšBdgÔä»u‘\"HäPEÉ\0R¤•RIóê1Ýç´º¿¹»´c¦giYD)#3¢8ÒIUcZÑ@\"ƒ\0Pt²öÿ\0E#ûm.«Ø»¿²wæb,ÌØ»w/º·>fhjjW…ÂQM__<ttPÔ××Ôˆ \"\Zzx¥¨¨”¬q#ÈÊ¥5åÝ½…¥ÍõÜš-aF’FÉ¢¨©4\'€Éà3Ñ¦Ç²î|Ç¼m{ÍjgÝ¯nÚÚ @Õ$ŒF¦!TTå˜…QRÄ\0OZççáEûqwÆ*hüeÌå6<ó§\\×`ÓÑv>Z\ZŒ„\"ŠM½¶öÞ×Ý˜”Ê¾ß®§«\\}elB¢¨KF•*È“K\nËïe§ÖÛÃm²3[9§|””ƒCØˆ’\rZ¬ËSU´\';¬¾â“m72n~áAî¢ ÅlM¤d)ÕâÍ4Ð?†%FC\"#i]2 •[ÍÛß-z7=ÒOòmÏ]·:Û¹·Xl½¡]¹6îv‹%M¿;|aú¿dl}ÏŒ¤ ¯›ln\ZÞÎÎÓmé¾ìÇIO–•byÀev™öûë}ÎÊÚþÔ·*]BŒ=CÀà\":Âoå]Û’9›zå=ñb­„í¦Y\"jedŠEí’)‡Fd`|ú¶¿óøg½sE·öŸoÔçë;ËvvîÇëºìoYvõFÚ¨Ý¿7\'Xö.;woØ?Ý.±Ž—~íŽ7S¹ëpô»šz{á¤È#Æî³ çX6Wó+ø=Ø˜Î¬ÌlþþÀå±ýÕ×8>ØëYßmoÜcgöåÙýû¿pYªš|¾Ô ©Û•=¥ñk°êã Ê%FÛJ¾3\0–5ý×ºZl¯û¬·\'tm~ÝÇMÔ»;ãï[ü¥Ý™Û{×jlìFvÎÔÝ;çeo–{vm¬&>ž¶}£³k²,!ãø\Z·l¥­¢ëÝ$±¿ÌsáæGjb7ƒvnáÂPe;)ÕõØ-ãÓé±{cnü\'ln,ä}¹Õ[Ó­0=Ò›wµ÷Î/[œÝøŒ&“\r¸1Y	«‹\'A=Gº÷S;ù‡|Aê\\lcûµ2j’Ùýƒ½»pÔuwpVìj|gSíêÍÙÙø]§Øx½]±;+°z÷mÐMYšÚ›k#—ÜøØ#->>>=û¯u‡uÿ\01‰G·ÿ\0Ù~¯ì¼µ_tIØ;ŸªàØ¸>§îÍÓP7ÖËÚßw¶î¡®Ëm¶ÜX|vßÚ{Cå¦ÁÊå³’MüŒÌTUTT¤8ŒËcý×º-¿¿œ_Æo™õùm¯AC¿zïwa6ÎÑÜƒ\'¹:›ä6¦·µ_ãoP|Üù.®î>Ùè®œÇn&möÂË‹‹3Û›“rmº$Üôxa‚®¤ªuîŒ~ÛþcŸwTÝ{Kîd¢ÈöŽî¯Ø[C¹öilœô›Ãñ£ó¿¹0Ëd`s;¶›ãŽ~‡r7ñØ1©¢²\n Ç#*Q·º÷LÕÿ\0ÌßáN/¨vWydû[qcºû°·}__í&¯éý¤Þù\rõM·ÿ\0¼t›>¯©ê:º>×Ân]ËKQCG‚¢¯ÂRÔnÖk‰Æ%^S5‰£­÷^êv7ù’ü7ÊGŠðövä¢®¬Ý[;q`3½%ß[kvõvŽodeO‘›7quŽ/uüaÅ½îÄMG±hö¾:xòô-î+)¼¾ëÝ½ÉòÇ¡zqí­©Ú»Ë#€Ìnx!È\'ð½…Ø»Óµp9!…¦Þ]¡¸¶6ÒÜ›w§zþ§6~Æ=Å»*°¸9+A§Z³0)ïÝ{ Ó}ÿ\01‡ÝgWÜ4Ûçµë¶ý\'Dm>ÇÞ]¸ê:Ã·êv<8ÞÄÖç;g³;ƒ`Õì~Õß}e‹ÇO.lm\\†krb<ej¨bO¿uî±õ×óø‹Ú}…é½§Ø{®ÈÏî¼öÂÇíÝçÑý÷Ökÿ\0Ûû2§³$Ø\\×euŽÒÛø\rûžêÊ9wn_UM”Ü»B6Îâ`­Ä¼÷î½ÒÃ\'ócã>¾ÛãFK°ëi»n:ùpÑž¾ìÙvÖ³›º_«ª;š\r›/LÓ÷9é¸v®Ê}À»±öÁLªã¤íî½Ò‹£¾WôÉh¡émü7¤¹ˆè“ˆ6¾óÛÆN’ùGI¿kú\'z±Ý[w!;ê“¬³ü1ôåñ‚ŠÙ\nZC=8—Ý{£ïÝ{¢sówæ~Åø9Õ;´7ÆÜÏï»ûÖ;GjíªŒ]_qo®×Ýûº‡\rEW›©¢ÅE]ÅìšÈ©#šhÍ]sCM3M\Z’aßíyvÊ+Ë˜™Ì’ˆc(9Vp ’HCJœš’:–}ö‡}÷›™w]Øï µ[;Ü¯.®C´p[$Ð@òºÄ¯!D{”.UNˆõHÃJ1å³¿áK=\r½÷FÇÆ|UùÌâ¿‰Íº%Ü5Ýu‚ÆìŒ^Ên<æö®ÈnX£Û8m¶tÕ!,<zZVHØmîö×urÖ‘ì—‹*ÔÉ¯ÃQ_‰œ—íUó\'‡8ë.wÏîèçÝƒc‹˜.½ÏåÉlfðÖÌZýdÒ]É0¬Z¢[“<³ÿ\0¡ªWPî¨PXZÏÉ_˜Ûë¬vWÃl¿CôöÌî\rçóKºö¯QlLi÷¢v†Ù§Ü¿;³äg÷§so-¯Òÿ\0ž?ké™qéCO·¥ij²í4I– ™n †á>@â¾Œ*?Ã×?wm¶}ŸuÜö‹¢\rÍ­Ä–ÒÈÕ”jJ®:úÛù‘wtvb|cêŸ‹Û?òÇ òu±|ÚùŸ“<Ç®·ÃxöFÓËm^ó‡ãÎg°»*^Ð‹qd Û©\\c©NOiçhòÕX™h¢û—z/èHì¯æ!áGËn¬êQ¼÷…?{õ÷Æ*Î”ì]÷SÕi¶»ÓqüÏÚ_7þÐÞ„Ø]­6+Õµ¯zœ†;—)G‹òQ£ÅU£Ý{§~´ùùGO´ûÎ«å7]ÃÒ›ÿ\0 >Acþ8î¯Ó^Íùeƒì½ù¸:®»ÏmQ||—ftfÉî.äËÏ±;&Èâ(¶lnK“ˆÓÍOFjßÝ{¡SóßâNåÜ{;gá;~Š»vvO®ñl®Óß°ç÷•whÒoúí°»cSµa¯ÎSPÒuFé|ýE4rSí1¶²£8øãŽ¬û¯tÛÚ?7¶GQöÞ+­w?Uw…FÕªìž©éœ÷|âöÎÐ=9³ûo¼+¶¾7«6Lewæ+¶7-Vä¬Þ¸¥©Êí«žÛ¸«/˜ÈãÒ\n¦ƒÝ{¤Wÿ\02ž—ì¬if+ºÿ\0»ú¦¿®öWOv†ÞÚ=·´6æÝÞËÕß$3ÛÓhüiÞý]¶ð›Ósä~ýÞÝ•Â`v¶ä]»¿)rÐÇM–Ácd©¥{¯tƒù–ÔUtÿ\0Ä^ðÂ|*ùY¿úóæYülß{;tu®kâfG¶7ÉŒN+5·zß5·;åXöÞoqìÜ^Y+óµxm«‘ÄQâ#š»îŒ•Æ—Ý{£Kù¸_˜Ý]ñ+ûžj[²~3÷×È£¿¿ˆW\n½%Ú_:ÑvxÚÿ\0Áf9#¹ÏÈZkÿ\0ˆÓýðÛT}ß–›Ý{¦³ówâô[÷}õÕwhÅ†Ìõ¶7|d÷fqmû¶úºêê\n¬¯ic0}ÕžÚØîÞ›«1”3ÔnŒF;_•ÛÂï‘§¦Tb=×ºñßÍSá.cnä·}öÆ^»º÷.ÌÉuÆ+âwËœ—{Òæv^Åê.ËÞ“¿Ç:.‹Ÿ¾ÛmlÍ‘ß{6¿1š]¶pØµÜtQÕUE4¾1î½ÐaÜ?ÎKá~Çê^úß½]¿“ºw_OôgöÞ×Û˜ÝµÚ{W­û_?°þ\"ÅókouŽÚù]Ö9^ŸþõvÇêú]ÇŽ‚Ž»)‘—+«ièj—’Š›Ý{¡¯n2Ïˆ»kn½Åòì\n¦ÉÈì\\6w®2¾HPw&S\'Ù˜ýÍ’ëÖëN“ÈupwN~Òllü¸ÆÏÁfñ9Øp9hj\'L}aƒÝ{ ¢¯ù·|_Ãwv{«óÕû‚]©UÖ_7·Po^¾ØÅÜ›³¸÷gxÑ|ÕÜžµÃt¯Uu>ëì<áë}¡ð£9[TµIUSW<¸ç¥¤®¥Ž*ßuî…í©üË¾o­§»w®Ìí¼¶éÃmO\\î¥Áuwä÷NøÛ¾3£ª·/KlZN·—{÷þÙìj©—¦Âäv6;qQd«pù\nX%zŠ\Z¸¡÷^éYÚß1ö>ÑêN¤ì~¬Æ7vfþDö>×êÛ/™¤ÙRoîÃÜ°î<¥n;3–Ý´Ôõ+×»Kcî,îéœV3ndc‹W‘†<|ÞëÝMÕüÆ÷/T×Tõ—tôFküŒÀwWÀŽ»Ý]y²»)½úÞnµù÷òR›ãfÁî®¾í¼ßNõþ_xâv®åÄno½Ã×m\\AëöãRÈi©«©2-î½Ò·º>fwÖÍùYØ?zoã?_væ§>,õgÊ~ÏÝÛ›änk«wÍF´;ä6Ä¢Ù]S×ß»kïmÓ_uU:ó[ÃiÑNù(aòÆ#yº÷Jÿ\0_Ì+¤:àùùÙæ;®sÝ ÝéÕ»WiýŠï.×ÛRu6S»éé¶µ%eJÓ™)º·_ŸÈÌYâÆáqÕ•’^*w÷î½Ð—]òï¬h>[mß†“á{>Ÿ´7Qö\'sÓn<§Wo¹Ô²m^µÊuF/=K€í}ÍƒÃl^ÁÍA/pbÍ]6Ù®Ì¾¯Wìe–&÷^è­íÿ\0æÃÓ›”6ƒ£>NQv¦äªê:ŽèÍÇ´ú³höŸÈíß›»·wLvXÓî®âÃl½¥€ß{KãfüÉwaf¶>èÀÒíŠŸã˜œ\\’ÑÇSî½ÑñèþèÙ? úÇov¿_TVI·sÕ;“5R:H3{sul}Õ›Ø{ûenJZ\ZÜ•êØ{ólä°¹Zxª\'ŽŸ#A4k#…Ô}×º=û¯uï~ëÝ{ßº÷^÷î½ÓNk†ÜTkAœÆÒe)xª£†®%•bªƒW†¦>¸*#À:`¬EìH>ëÝh»üí“×iüv=½ò×â¯÷oôVk“§ÞaGìnÎ=K\Zfð;ž>ÃÚ”o°7vú­ëÜ6ÕÁd—+·¡¥¨¢Â4)WJLÒš?uîµSÌvlø÷¹ÆüŽèŠƒê>¦Í×´¿h2?ÁÔôÊUojƒ›èI»z¾9Õið”žU ûø¼Tq\nra÷^èVÏöD¸¶îÙ(þBô|ÒËñ7ã6~©&øÍC[ü²ñüF¤ŸÖŸFJ•Û_)GX$¥ÛôþuÇŒ•8Ž†¤?oî½Ñ¾ø™ñÓ¼~o|ƒÌ|xèNåé|žììß²õÿ\0ð²à6•UFÐèÿ\0“ßœÎîéÜFÙz÷]õæz»´!\Z­5;ÐÈôžëÝ}¾üÚÿ\0\r>:á¶NØÚ={¹;«m\rÉ’ƒ°røœNØŸ}îŒF;rl~¯Ü»Ö§fí¯á»c.YSE†¯þŒz\\M$Õt¸ø¤¦:f÷^ê€{kù0ïÞÚ»Û¾¾7|šÙ”xßû×%œ¬Ÿñ{}ã»ûåž3¢!î~ÁÚpöŸÃ/æw¶övæ]íÑ5»Þ\rç´ãÙÛ¼ïÈÎM‚›hPÑÇE“÷^êÏþÿ\0,ï”ÿ\0¾Lã;ç´þCmÎßÅg0ŸÌ{röNÕ5½èñëÞ?1¾Vt¯mìýÓÖØœ®¾—hlyº‡§¨1¹¬$URíýÁM5V2,‡ñŒ…J{¯t]ºçùB|›¡ËüiÜù,ÅžŒÈuÉš¾åß;?§{³¸{#amIÛ´—Öþ©î‚‡yüsëŒöµ÷×Y|7Ýe¹1¹Z‰+ó=¹¹÷6OwåjóYÌWÝ{£IüÀ–ŸÉ¯“ÏóêŸ >LíþžÃüÕø±Ñ}šÃöyîŽÙÄ¶O­(>[a÷öÞÛ:^ÐÚ¸o[S³ñµ±c¨¯Û0åqòK…ÍÔdv¾N§/U=gº÷\\:ûùi÷Ö¹û÷°«û+¬ºÿ\0qö×ÇÏ˜a™ù5Óp×â;ï¹;åîêíËÔ[Ã²ö†CaÓa¶Þ3ù}mî¾¬ÚV•Û³°*ßoåÊ´˜¶Žµ2¾ëÝWÊÿ\0!O‘X}¯×ôÝ[»:C¦76ÀØÃ³:B:^áîÕÚ?w&ú£Ý	žîN­ÆîžšÛu$û[ä…^Z5Þàûv£iA1Éó&žq–÷^èÁe¿”¯Êü¶:§â68ü`Þû·«¾Pv\'omþšù¹cì¿‹´}]Ù›¹ð5ý}½%ë¿‡}·»RŸ¯w7tWo}‰¡ê½ƒÚ{ƒ£¤ívå=Ewº÷AÇü2?ÈìgA|¦ê3¿{vwÖs«2ÍÚý¯¹·ÆéÝûÛ¸6Ö?äF?w|Ûì*ÍÉÒ»Ìà;n,wkí*\\P.Sl`)ö<Õ»W?³s™š\\¾Þ÷^ëh$RˆŠN¢¨ª[Õê \0O­ä~Hü³êO¿uî¹{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^èù3Ñ˜o’ÝÚžÊUa1Ý—´«¶÷ñª(Äóâ+ËÃ]‡Ê}©’½ƒ˜£‚Yiü‘\Zˆ‘£G«Z•o›L;îÏ¸í¹X®\"h‹\"£ò?·¡‡·üáwíÿ\0:r×9ØÛ¬×uÒ\\œÐ:Š‡JÐé,„€Ô:I†”ëS¯ü‹~vÓv\rNßª‹ªñûo_¶rô]ƒWØF-ƒ¸êö¾Xc(äþémì[ï÷œíªê©|54t7$W?løñgí\'5Ãz±¼–âÞ)ÁôÆæ\"T~š.ºødàÓ?ˆÞºa¹}ò=›—e[è†ä÷Ó$ð½ŠÛsÎšØxò¿Óã*JÏ@3|ccú?€{Si/Iþu>ñ—­SÖ¹\\\'^v¬xîšŽ¾îsÕ¶{¢hgsíün«h÷TÐîx1U9EYžiš©Aó‡Ù6›m‹j²ÚlÅ …h8ä’YŽI9bOÇ®n{Ÿîùî·>ó/¸Ç&­ßrœHÿ\0jG\ZCuDO‡h•\n é®‘ZtOù*mü/L|£êò7uì¼ŸomŠ{[ã¾ó¡ÙKS/Äù>&bvÖáÚ9œozJ^ÅÈo^þ£Ío=ÊÕ3âß9M™L%sÔÑÑC+šôéÛ3ü—¶GJ|’é=±Ü[;Ýß$pµ±2˜¾·Å½GJtÕnV³#Ûp”ëº)N~‹µS¶ûŠ6Ü\\|øƒÚu\rŒlIUî½Ð¡±—dõg^w¿ZõßÊ<V/ßý­Ý“»çøñ¶·üTûorn.° èN…¤ÛÛ«~VìÕè>¬èŽ¾«Ø«\n˜È«7Íz³)I]¶rÎõRû¯tR»ùUöÖÐÚx]ýòÇ5}-glÍå´zÛòG©~?Añ«ä¶¢¶÷gôMunÈù¯AØ=}€™>?c2Tt[£}öÄlÆo5.Cid(åÃÐa=×º7[ßùfewÇYü—øÙ?È¬¦Þø¡ò\ZŸå¶hõ¾ÞëŠVí\'c|Ð¨ìÜ×lç÷\'rî]é¹(÷¦ÐÁïnÙËçvæ\ZŸlá+(«dH«²™*8ã¦Ouîšzùhv^üšÝŸ+;oä–ØìîÄß“ü¤¯Ý˜½‹Ð™¥Úo“ù/ÓßË«¨™ðžñí¬¦\'²)>-dpTVWË;«ÄÓÀq†\\º÷DŸ7ü™·÷]ôVÌø»³÷ÞW¶¶þþÞÿ\0q›“¶ð[Clõ.s¡¶ÏÇ…½_ðå–ô«Ü¹>óÉîÚŒ/Ê†}m–Ú{w´°U›‹kn]ãS=FfJv+Ý{£sóùCàþTö·kvV7¾3}?OÙGÖ[ŒÀm=…GQS°êh»f7È½ë¶·%ìÛÙ\n]ËòãOZíÞ³‚xc¦¨Ùô¸±”¢š¢i\r\"û¯t˜ß?Ë^·äÈÿ\0›[Ó+€^•ëÁêÞ±êN®Ào­ÒýÉ×]¿³­*¾A÷6o¥otm½ÃÖ½»Õ_:“­ž“qô¦ÄíLÑÄ¾ßzÚ\\­Gº÷@®êþC»ú]ÍS½¾boºº^ßÙã©{Ó¯vvKåïVô{t\\_ÆÍ?St/VõßÏM¼›+nµNîÏÕÍKÙy.åÃ5^~¸C‚ŽD¢Ý{«\rÜ¿\r»¿+Ü[«º6ïÉý¿³7_hmGö®CÑ5L½Æ®½í~æìŽŠÙýu]žî<Ž3dw.ÀÆ÷†c˜Þ™J\rÍŽÜ«;Õw±ó\nU¤÷^è°ü€þO\'¾ºë¶:B·äÜé\\ÞKæïcôVß§éúì–øêøùë´þ@í~àß;Ï}?pPãûƒb`ÿ\0ÙÞ3à6Ìx]µ=\'ñ0•9Z¿¶£zouîŒùxTe¾Eå¾BÐw*crß=v¿Î:-·?\\ÿ\0§¡¬Ú¿Ë>»ùxQu¼Ù1¾¨š¶ªkó“,)â:ø8¢ÿ\0ëÝ9å—Ú{÷ä×Q|”íï•8.ÂËõ—aìŽ×›þ‚3xj‘ºi~\'n?ŠÝ¯²ºã+7fñ]YÑ;ù7nKyã6äœŽ[»r5ä3yèSû¯t#/ßåñº¾çw=~ãïŒGrbÙ^øqñ­q¸Þ Ÿ¬rK¨þ7cºÚ³wå¥í.Ã§ß»÷qížì†ÖB–oÐË‘ÅKUMCMbPÑ{¯ufþý×º ßÌ_àVÒþb·:gwnÉ6|;G³q]«„¯“	]¸ðÕ›ƒ\r³·ÖÍ£Çîl.uì<öCöÛîz‡Žƒ7‹©iéâq‘1Íœ±oÍ{t;}ÌÚs	ÔYKt‚²1^òpÊji^§O»ï¾›ÏÝÿ\07oÙvás%ÞÚû\\ê\"•a’âÚáÚ	%‚ê”›UPd‚e\nÍÙ«I÷[ÿ\0	ãí×.âÆvóŸ³:ÿ\0wÍ·›pu¾oã6G¶iaÚ”Âƒl6Ëòb…ö%nÙÇ(Š‰¨Ó2¢%e=d\Záp#{[¸ÜÒÿ\0›|{9JëíÈQ§áÑ¦àxeG\ncøƒu–}ý9;hk¹å/»ØÚ¹’ÅfÛ¤ÂI;Éi¾«ÅÙœ]¬ÌjâNáRaxšŒ-óäOòõê“[áwRö­>ÏßýQñ+¸¶hæúïµ:ÃmöŽÓî¼vËøÝÝ}‡Ú{£nî:•ÛxßK¶i·¬š‡(‘ÔáR¦V™*©¥ËhEµ¼êÄ¬h¨	óÒ\0¯òëÛÞç&÷¼îÛÌÑ*Mwu-Ó¢ÖŠev¨®hPW®¯ƒýi¾¶¿f|ÍôÇÄÇ†êŠn‰Îì˜~7á7—DîŽªÅï|†ÿ\0Ú”MÕýy¿:/·wo\\n\rÏ¹$Ûµ¸íÁ.º²g!ŒÉ—¦ûgº,è?îßå™¶{3ùnoƒ{k~a)eÞ=»´»çyö\'tu„]á¶»#´àù…¶~hvÎG´º–Ÿ{uíÚÝÕÙÌ¥&OM™ÆRQã3\rONDñÀÞëÝ]MüŸ¦²}£Öýƒñ¯§»ó\rÛÜ}aAñÛá¾G¤~l×°ºs¾ú§)“øˆù/œÈn=ÅØÝgòCpÐîŒ½.ýÃä2f‡ñ½7ð˜Ä¾ëÝ.:¿ùTd:Ÿ·º—½vçÉŒ½…ÒùýÕQ³â®ë([fKµ>F÷øïož8,æÛ§ßðVe3\'{/°fÈb2&½)úðíÍ»\rl¹¸·º÷Bß{|	Ý]íò3¯{“qw>Î›kuOjmèêª<ç@a²ÿ\0 ºOumhzóøß_ôgÉ¼>ýÚ™]ƒñ÷¹«:ÞûkÕíìÎKuRe2xçÍSbê ¢¤÷^éÔÿ\0Ë_rä6NWj|ÓïZ/›ƒý\"íŽÞÂwÇZ–ÿ\0;Ï#Ú½½ö¶gvvwiu·ÎÍÿ\0¸÷…Ø\ráö˜½…}©´¶­*ÍOCŠûv£‹î½Òßãòð‹ãfÚþ_w>àì—ð\'ãNõêftb÷b¯°û“xàºËiÅß”ûƒ{ö.ýÎuåÐÙ¸-ç„ÀìêI«q˜,ø|V:¦“Š¤¢“Ý{¥‡È‹]÷½þNt÷ÊŸŽ}÷Ô=E¾zË¡û¿ãö[Ý7ŸÈM©¹ö§uvBö5^_M±~O|eÌm­Ã€Ìt%1¼•™:jŠjùƒBŽ¨þý×º\'ýŸü¦2}ƒÕ;÷¬{³°ý§ÕÔôŸ6;G­:‡elŒ¯Jn¨þFüêë¿{W¾²µÓší.×¤w–­ù9½ºXj­»,ÛesQÉg–‚˜¯º÷AGUÿ\0.˜ÝÙß}›ò#·6Ï\\o~éù\'»;ƒ´:W²z\rºvîÚ[ƒâ÷ÃÏŽòîŽ¥éŸš[ÏbíŽÛÙíñ{!Uµ*Ÿ±{lc±›¦«øŽ\'!Y$iŽ÷^é’ä\"ü$o‡U?,RVþõÔnUìh:©ÔFßÉ‚OåK@Û>Nè©,ðÄS°d›ø¨²œŽ0Ã.¾ëÝ^Òþ\\¹ÛòRo–›»ñ[;¹v¶Øø»IÓo»ú¦¿°vNÏÞ_öoÎ^±Îg·æÛÄö·]å;\'löZüèÎcäÄÒå6åf\"¯\rd9)žQëÝ3üž01ò§¨~NaûÞ³)Q×›ŸØ[§hUõÂÃýúìl®ù¦OÚ»Š—>»öTÚXÍûÙÌ÷)œ£Ç%lx:]°˜ä’¥2QŽ÷^è(“ù¤;¢°8¿•{«¾>9üVøAñ÷­·žÛÂ÷VC.ðøoù·gìmÏUñûåKw›_´vÇËü4»k¾p8ÉqpÈùšø¦’=×º:{Oùqí½‹ñg¥zhvváÃö?@w†oäÿ\0\\wŽJ\rËØù,Èå¿{+~öFæÉâ»—°;/zî=©Ùƒ¹·v5G“Ý•›‚§oî*ÕLìyGLª{¯t\\3_Êßävü¦í­ñÛ2úÿ\0°>NoŽÛø[Ú›+ºª~0g±=w×øO„ÿ\0+·—Ê¾³è¸zòN<žK©h÷&íª£YÆú‡rT&F¡ê²3\nzá÷^éy]ð[ç^{½»½³8¾7â7t|jëÏ‹}˜½uð?±væF‡bõ®ýïíñÜýK‘Þ?=û+²{\nGù§–¯7ŽÝ¸ÍTÒ­þäoî½Ðƒò«ùU|{ù-ñ;ñw–ì¾¥‹­¾)ö7ÅÝÛ·ûÓgb:Óhïž¬Ãõu#oN²ênÜêmß;cAµpòUí½Ôµxœµ-”R,tÕu!ý×ºòiW¿~2wfÜß¹Ê*_Œ\ZþD|uÛÛoyMºûKqn¨;Ç/ñ{%‹Þ{·µ7ÆùÈïÉšÙð|jD®›/6W-¹j3/UU’Š¢	³Ý{¢GGüµ>Eçº7zuÏo|¯é­ÿ\0Û®ÅØý³ù\r¶~5ü†ê~È­ì¹Þ8|îâì­Û´˜SöÛKUŒÜÐÁ·aëãÔ´ûB’	ñ´(ØZÙ1Iî½Õ|DøÍ´þü}Ù=²ò5¹ŒNÖÉvæÈfkp—3¼{_²wovb\Z|ž[?Çãò»û}äê))&®­z:Y#€Ï7ÈÞëÝO~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ4fð8ÇBqÙª(ë©‹2£¼±Iª–\nŠy!©§‘¡•ãfÔ´nÈn¬Àû¯u¡Çó»þLñæ£¹~\\|[ƒµz\';J«¾zëÔ»µäëD¦Ü{pMØ[76ÞŸ|Uì\\.ÃÚõäðR%e>Hž²šAFŠ´¾ëÝS?Å/½¥ó¿·/Çî‚íí±“ÞÝ‘ñ×ãUä3?¶ÝÕÚOU³~?ï3½ó“3„‡<»—®v_)‹Ú3TCb:hÖLqx½×ºú1ÿ\0/O€ûá‡Gìý›>ÚÛ¹ÌÃäª2îÂŽƒtÖañY¾Ù[›=ƒ¶h÷uRš|LÃIRÔÓRZšFò{¯u`¹¼66Uƒ#—ÆPNñ‰V\ZÚúZYZ&gE•cžXÜÆ^6€µÔÇº3¢š3€~g§âµ¹™KCnîµ¥UIôÀê÷¯kÏI€ÿ\0ÏÆ;ÿ\0ª}ëÆ‹ýú¿´tçÐ_Êßï\rþn½ýëÚßóÒ`?óñŽÿ\0êŸ~ñ¢ÿ\0~¯í{è/¿å\no÷†ÿ\07^þõíoùé0ùøÇõO¿xÑ¿WöŽ½ôßò…7ûÃ›¯zö·üô˜üüc¿ú§ß¼h¿ß«ûG^úïùB›ýá¿Í×¿½{[þzLþ~1ßýSïÞ4_ïÕý£¯}÷ü¡MþðßæëßÞ½­ÿ\0=&ÿ\0?ïþ©÷ï\Z/÷êþÑ×¾‚ûþP¦ÿ\0xoóuïï^Öÿ\0ž“ÿ\0ŸŒwÿ\0Tû÷ûõhëßA}ÿ\0(S¼7ùº÷÷¯kÏI€ÿ\0ÏÆ;ÿ\0ª}ûÆ‹ýú¿´uï ¾ÿ\0”)¿ÞüÝ{û×µ¿ç¤Àçãÿ\0Õ>ýãEþý_Ú:÷Ð_Êßï\rþn½ýëÚßóÒ`?óñŽÿ\0êŸ~ñ¢ÿ\0~¯í{è/¿å\no÷†ÿ\07^þõíoùé0ùøÇõO¿xÑ¿WöŽ½ôßò…7ûÃ›¯zö·üô˜üüc¿ú§ß¼h¿ß«ûG^úïùB›ýá¿Í×¿½{[þzLþ~1ßýSïÞ4_ïÕý£¯}÷ü¡MþðßæëßÞ½­ÿ\0=&ÿ\0?ïþ©÷ï\Z/÷êþÑ×¾‚ûþP¦ÿ\0xoóuïï^Öÿ\0ž“ÿ\0ŸŒwÿ\0Tû÷ûõhëßA}ÿ\0(S¼7ùº÷÷¯kÏI€ÿ\0ÏÆ;ÿ\0ª}ûÆ‹ýú¿´uï ¾ÿ\0”)¿ÞüÝ{û×µ¿ç¤Àçãÿ\0Õ>ýãEþý_Ú:÷Ð_Êßï\rþn½ýëÚßóÒ`?óñŽÿ\0êŸ~ñ¢ÿ\0~¯í{è/¿å\no÷†ÿ\07^þõíoùé0ùøÇõO¿xÑ¿WöŽ½ôßò…7ûÃ›¯zö·üô˜üüc¿ú§ß¼h¿ß«ûG^úïùB›ýá¿Í×¿½{[þzLþ~1ßýSïÞ4_ïÕý£¯}÷ü¡MþðßæëßÞ½­ÿ\0=&ÿ\0?ïþ©÷ï\Z/÷êþÑ×¾‚ûþP¦ÿ\0xoóuïï^Öÿ\0ž“ÿ\0ŸŒwÿ\0Tû÷ûõhëßA}ÿ\0(S¼7ùº÷÷¯kÏI€ÿ\0ÏÆ;ÿ\0ª}ûÆ‹ýú¿´uï ¾ÿ\0”)¿ÞüÝ{û×µ¿ç¤Àçãÿ\0Õ>ýãEþý_Ú:÷Ð_Êßï\rþn½ýëÚßóÒ`?óñŽÿ\0êŸ~ñ¢ÿ\0~¯í{è/¿å\no÷†ÿ\07^þõíoùé0ùøÇõO¿xÑ¿WöŽ½ôßò…7ûÃ›¯zö·üô˜üüc¿ú§ß¼h¿ß«ûG^úïùB›ýá¿Í×¿½{[þzLþ~1ßýSïÞ4_ïÕý£¯}÷ü¡MþðßæëßÞ½­ÿ\0=&ÿ\0?ïþ©÷ï\Z/÷êþÑ×¾‚ûþP¦ÿ\0xoóuïï^Öÿ\0ž“ÿ\0ŸŒwÿ\0Tû÷ûõhëßA}ÿ\0(S¼7ùº÷÷¯kÏI€ÿ\0ÏÆ;ÿ\0ª}ûÆ‹ýú¿´uï ¾ÿ\0”)¿ÞüÝ{û×µ¿ç¤Àçãÿ\0Õ>ýãEþý_Ú:÷Ð_Êßï\rþn½ýëÚßóÒ`?óñŽÿ\0êŸ~ñ¢ÿ\0~¯í{è/¿å\no÷†ÿ\07^þõíoùé0ùøÇõO¿xÑ¿WöŽ½ôßò…7ûÃ›¯zö·üô˜üüc¿ú§ß¼h¿ß«ûG^úïùB›ýá¿Í×¿½{[þzLþ~1ßýSïÞ4_ïÕý£¯}÷ü¡MþðßæëßÞ½­ÿ\0=&ÿ\0?ïþ©÷ï\Z/÷êþÑ×¾‚ûþP¦ÿ\0xoóuïï^Öÿ\0ž“ÿ\0ŸŒwÿ\0Tû÷ûõhëßA}ÿ\0(S¼7ùº÷÷¯kÏI€ÿ\0ÏÆ;ÿ\0ª}ûÆ‹ýú¿´uï ¾ÿ\0”)¿ÞüÝ{û×µ¿ç¤Àçãÿ\0Õ>ýãEþý_Ú:÷Ð_Êßï\rþn½ýëÚßóÒ`?óñŽÿ\0êŸ~ñ¢ÿ\0~¯í{è/¿å\no÷†ÿ\07^þõíoùé0ùøÇõO¿xÑ¿WöŽ½ôßò…7ûÃ›¯zö·üô˜üüc¿ú§ß¼h¿ß«ûG^úïùB›ýá¿Í×¿½{[þzLþ~1ßýSïÞ4_ïÕý£¯}÷ü¡MþðßæëßÞ½­ÿ\0=&ÿ\0?ïþ©÷ï\Z/÷êþÑ×¾‚ûþP¦ÿ\0xoóuïï^Öÿ\0ž“ÿ\0ŸŒwÿ\0Tû÷ûõhëßA}ÿ\0(S¼7ùº÷÷¯kÏI€ÿ\0ÏÆ;ÿ\0ª}ûÆ‹ýú¿´uï ¾ÿ\0”)¿ÞüÝ{û×µ¿ç¤Àçãÿ\0Õ>ýãEþý_Ú:÷Ð_Êßï\rþn½ýëÚßóÒ`?óñŽÿ\0êŸ~ñ¢ÿ\0~¯í{è/¿å\no÷†ÿ\07^þõíoùé0ùøÇõO¿xÑ¿WöŽ½ôßò…7ûÃ›¯zö·üô˜üüc¿ú§ß¼h¿ß«ûG^úïùB›ýá¿Í×¿½{[þzLþ~1ßýSïÞ4_ïÕý£¯}÷ü¡MþðßæëßÞ½­ÿ\0=&ÿ\0?ïþ©÷ï\Z/÷êþÑ×¾‚ûþP¦ÿ\0xoóuïï^Öÿ\0ž“ÿ\0ŸŒwÿ\0Tû÷ûõhëßA}ÿ\0(S¼7ùº÷÷¯kÏI€ÿ\0ÏÆ;ÿ\0ª}ûÆ‹ýú¿´uï ¾ÿ\0”)¿ÞüÝ{û×µ¿ç¤Àçãÿ\0Õ>ýãEþý_Ú:÷Ð_Êßï\rþn½ýëÚßóÒ`?óñŽÿ\0êŸ~ñ¢ÿ\0~¯í{è/¿å\no÷†ÿ\07^þõíoùé0ùøÇõO¿xÑ¿WöŽ½ôßò…7ûÃ›¯zö·üô˜üüc¿ú§ß¼h¿ß«ûG^úïùB›ýá¿Í×¿½{[þzLþ~1ßýSïÞ4_ïÕý£¯}÷ü¡MþðßæëßÞ½­ÿ\0=&ÿ\0?ïþ©÷ï\Z/÷êþÑ×¾‚ûþP¦ÿ\0xoóuïï^Öÿ\0ž“ÿ\0ŸŒwÿ\0Tû÷ûõhëßA}ÿ\0(S¼7ùº÷÷¯kÏI€ÿ\0ÏÆ;ÿ\0ª}ûÆ‹ýú¿´uï ¾ÿ\0”)¿ÞüÝ{û×µ¿ç¤Àçãÿ\0Õ>ýãEþý_Ú:÷Ð_Êßï\rþnŸý¹ÒN½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¤æêÚ;o{b$Án¬M6g$ÑT\Zjƒ,f9áÔ#žž¢šHj©fì…£tfÙ	(Ìº÷E‡ãÃ^øû^¿ÖuƒÜõ=Ø{«—ÚXqB`Àå÷&è§ëÊZ°i¨Ö£9³º·/K·ã¨xä––†IÍLªº÷Gßº÷EÃ¸>üSù¹hwŸyüsé~ÞÝ¸Ì6ØÇn^Æë«»ót;vŠ¿\'•¤ÁÒä³˜ÊÚ¸1TÙ<Õ]B@¬#Yªep5;Q°l›¬Ëq¹m×…ÐhÑØ($…4©&Ÿ3Ô…Ê~í{£È[tÛ?$û‰½mT“›™-¶ÛË‹xšVTF•’)L…#E,EHU ?ðÙË³þðâÇþˆî¼ÿ\0ë´_ÔîSÿ\0¦jÇþpGÿ\0@ô(ÿ\0‚Gïÿ\0…·š¿îiyÿ\0[º÷ü6Gòìÿ\0¼ø±ÿ\0¢;¯?úÃïßÔîSÿ\0¦jÇþpGÿ\0@õïø$~ð_ø[y«þæ—Ÿõ»¯Ãd.ÏûÁÿ\0‹ú#ºóÿ\0¬>ýýNå?úf¬çô^ÿ\0‚Gïÿ\0…·š¿îiyÿ\0[º÷ü6Gòìÿ\0¼ø±ÿ\0¢;¯?úÃïßÔîSÿ\0¦jÇþpGÿ\0@õïø$~ð_ø[y«þæ—Ÿõ»¯Ãd.ÏûÁÿ\0‹ú#ºóÿ\0¬>ýýNå?úf¬çô^ÿ\0‚Gïÿ\0…·š¿îiyÿ\0[º÷ü6Gòìÿ\0¼ø±ÿ\0¢;¯?úÃïßÔîSÿ\0¦jÇþpGÿ\0@õïø$~ð_ø[y«þæ—Ÿõ»¯Ãd.ÏûÁÿ\0‹ú#ºóÿ\0¬>ýýNå?úf¬çô^ÿ\0‚Gïÿ\0…·š¿îiyÿ\0[º÷ü6Gòìÿ\0¼ø±ÿ\0¢;¯?úÃïßÔîSÿ\0¦jÇþpGÿ\0@õïø$~ð_ø[y«þæ—Ÿõ»¯Ãd.ÏûÁÿ\0‹ú#ºóÿ\0¬>ýýNå?úf¬çô^ÿ\0‚Gïÿ\0…·š¿îiyÿ\0[ºþD|9þVßº¹~Cö?ÂŸ‹T›¤zËzöŽë–>Ø/Q&díúýÁYIGjª¢|…|t>\nx£ŠY%žDDFf\n}ýNå?úf¬çô^ÿ\0‚Gïÿ\0…·š¿îiyÿ\0[º¦œŸÊŸå‰þ[ýUó‡!ü úsÛ=›ò	¾\'VüV—¦\"Ü™>µù\ríœ§SîMØ{ÿ\0¬~;v&ŠÃVb|C³ês™hªi¨¨1Z˜¨ßÔîSÿ\0¦jÇþpGÿ\0@õïø$~ð_ø[y«þæ—Ÿõ»¡7ã¯ÉäsÚÝ\'™ï®ãøAñ×ã~Î¯ïýë~­Än‹›Ãto}ÝÕßr»[ooÎÿ\0Þ›N“ãf»­zçmç÷qåï—Ú;9pf÷Y2˜œW¿©Ü§ÿ\0LÕüàþëßðHýà¿ð¶óWýÍ/?ëwFrnøOnÕ—²éò}Oñ®«¨ó}·½é6×ÅzíçYêÜÕ»´6†Ú£ÙýS©ßÛË}TvVíü>2y=Á\r[KŽ‚¦*z—‡ßÔîSÿ\0¦jÇþpGÿ\0@õïø$~ð_ø[y«þæ—Ÿõ» 3ª{Ãùn^¿Ëös|Lø“ÑX©>E|¨é­’•½›çøç]üaíÙº¯)ò}¶¥h*z?¬2¯UŠ©Êd·\\ìÙ¬ÌÒã«2¯Q,F_S¹Oþ™«ùÁý×¿à‘ûÁámæ¯ûš^Öî³õOiÿ\0&nÀÊ÷—_n_‚ÿ\0:û»:·¾~nônÉëŒJQäp=³’øcº7Î2µqÝ¾ý\'‰ë¿¿·þÑÙ2n(¶{WÖç¨qM,ÑG_OM-I÷õ;”ÿ\0éš±ÿ\0œÿ\0Ð={þ	¼þÞjÿ\0¹¥çýnèTø¡þI_\'vÿ\0ÆŒ[|Uøu±»ßäOHt¿k¡ô3·÷5ÎÝÝÁÐ{ä\\](ý´:Ã×ùÎÑÂu¦pæÓPî*Í¿ñaŠ†‰Ã/¿©Ü§ÿ\0LÕüàþëßðHýà¿ð¶óWýÍ/?ëwNÅÕ\nz‹ä÷^tÍGòzéÏOoNÌë•©ï–ë¾«Â×Õögmâ«sx9:¿ªk6ÕÝ±Ö{B_|î\nlÍ›d±d¡¯ŠšºZOS¹Oþ™«ùÁý×¿à‘ûÁámæ¯ûš^Öî‹ns»ÿ\0”<¿”uûoùktËÐ\':câ.Êµzc|{¦í>Úî\r„ßm˜ÎIÜ=s¶²=EÔÛ‘¬ÊdwJŽ¬Õmì=VSIY”ÖûúÊôÍXÿ\0Îÿ\0è½ÿ\0Þÿ\0o5ÜÒóþ·t´ìÍÃü²º“ù~mO[Ïùc|I£¡Þ•³z«† _Žùî˜\\Žÿ\0í”ê§Úõ_(¶îÞËõå7Æ¼»ÔSçWy½\Z´Z˜ÍF:\ZítIïêw)ÿ\0Ó5cÿ\08#ÿ\0 z÷ü?x/ü-¼Õÿ\0sKÏúÝÐ}ÖÝÛüª2[›â®ÂîOåsñçeî_–Ë½ú{`ožŒëÞ²ùqñ§+ÎêºÍ^ÓÚŸ º®ãÅgzŸ#.EqSä2X¬\rfÒ×å²T”»ËÓûúÊôÍXÿ\0Îÿ\0è½ÿ\0Þÿ\0o5ÜÒóþ·t4Voäc¹fÁÒß\Z>\Zö[t÷OÅ^´[Çã®ðêª\\¶ÍùaÚÔ½S×±ÕÙ‡Æ­Éþ—önãÍ\Z¨6þk÷\'1“¤zJ­É‹‰g¬§÷õ;”ÿ\0éš±ÿ\0œÿ\0Ð={þ	¼þÞjÿ\0¹¥çýnè9Þß ‘gCd{ŸãOÄ¿Š\"²Õr¸­•Sñæ³¥$ÜÝoò;äÿ\0R|d¶³½‘Ñ”ë¸q=¸{Q_)>’­ér”c\\øê©µÅïêw)ÿ\0Ó5cÿ\08#ÿ\0 z÷ü?x/ü-¼Õÿ\0sKÏúÝÑ ÉEü€ñ®×ÛÙ¦øaO•éjmÏQ¾\"ÿ\0eÎŠZYäÙÛÖ[Û×ù(:êLgpgöggnŒfÙËãvŒÙÌ†3rdiqu0Å_Q;ûúÊôÍXÿ\0Îÿ\0è½ÿ\0Þÿ\0o5ÜÒóþ·tÜ[×þÙµ6ÖÛÝ{ƒ¤>6cñûŽŸzd*1‡áý©Þ;ÖÙ,6²wWvõõFÔoÏÛ+­ò›Š‚Ÿpæ÷Î7nâ0SVÂµÕ0þþ§rŸý3V?ó‚?ú¯Á#÷‚ÿ\0ÂÛÍ_÷4¼ÿ\0­Ý3ÿ\00,WòÎøHßpxŸåÕð£°7oÊ\rÅ¹ð½q“ìÈº{ãŸGD›?…Ü5ôƒ¾w7\\ï³Šß;ÇŠ-ŸjF©Ý©4qK4õûúÊôÍXÿ\0Îÿ\0è½ÿ\0Þÿ\0o5ÜÒóþ·tžÛ;óù3ÜÍtçpÿ\0/>¬øéÙ_	ºÿ\0æïhçûoâîÑ£Ø]e³7Väƒ+³÷/bà6®o`K›ÙñmÒÒäi2•LµL­E‹ª­¯¤¯¦¥÷õ;”ÿ\0éš±ÿ\0œÿ\0Ð={þ	¼þÞjÿ\0¹¥çýnèOÈg?á>X}µ{9Ô?6þÞÝµÛÖ‚\nMÅñC)·÷–Öh˜	{/)Ú}q™êjÄéµÖÔû·.âËnìV‚ƒ-C%uDÖS4¾þ§rŸý3V?ó‚?ú¯Á#÷‚ÿ\0ÂÛÍ_÷4¼ÿ\0­Ý#ê°ŸË–Í?¾©¿–Å:Úoå¥»¾BmŠ}¿Óë¦ƒ¼àèŸŠ}gòv,´;‚>«–>»‹xGØÃ¨´»€Q\nO½Tù¾Ö?S¹Oþ™«ùÁý×¿à‘ûÁámæ¯ûš^Öî‰/S|ÆþTý¿Wü©0Û{ùP|p§Ü_Ì“5Û{°1•ûKaQCñ;Ó•yý»¹ð›¾|—Lãë÷¾^¿{íÕ6)i6ÚÖÑáêëUÂ\"Äþþ§rŸý3V?ó‚?ú¯Á#÷‚ÿ\0ÂÛÍ_÷4¼ÿ\0­ÝX]oþã–Ø{Ë²pýKñ5µ¶FC®±µ¿Á>,Væw.è—¸·~ÓéÚÎ©Ø˜Îª«ß=Û„íýÍŠª ÚyÎã÷5],Ñcfªx¤ïêw)ÿ\0Ó5cÿ\08#ÿ\0 z÷ü?x/ü-¼Õÿ\0sKÏúÝÐ-™íïäqµþFÒu.ëøñ\'Ô;ƒâŸM|Ù¿!?Ðe>K•¶û×·º*]­ºvV;¦*+ºÃ\r²ó_e7á¯ ¢¢¬Ë-\rl4RÂS¹Oþ™«ùÁý×¿à‘ûÁámæ¯ûš^ÖîÈ.†þJêzºäoEüéê®êÞôÝsÕo^¥ëÌkï=ãUöáq8À6äº#« Yê§ñQÓ5D+4¨eŒ7¿©Ü§ÿ\0LÕüàþëßðHýà¿ð¶óWýÍ/?ëwDëùõgPü)}Ÿé¿ä…ðoå]o=ÃÓ½c‡ÉWö?]ô—cæ{Ëº;PõžÝëm«ÖR|[í·\r9nZ§.ÙšDŠ†JæzdÒÏïêw)ÿ\0Ó5cÿ\08#ÿ\0 z÷ü?x/ü-¼Õÿ\0sKÏúÝÓþs´á;;gqn£Ÿé¯ŒÔ;“eoéëËŽƒá>üËAGØ¿sÕ[{»v;/‡èÚì.äÞ}6>«!UÆTUÕO·©*3”É6\Z	kÓßÔîSÿ\0¦jÇþpGÿ\0@õïø$~ð_ø[y«þæ—Ÿõ»§Å¿ÿ\0á;{[xWl\\§SüQ¨Üì¿X`*Îßø}¹·nßLÏvõ.Þîþ—ÇE¼v§Mf¶}MOouÞëÇMµÄUïýàÉÕ¦\"ƒî2÷¡þ§rŸý3V?ó‚?ú¯Á#÷‚ÿ\0ÂÛÍ_÷4¼ÿ\0­ÝAùuKü«z\'ùun_æ!Ð¿ËóâÊ\r“M]Ô¸í¶âØ?©hw•Whü‚Ø&§Èîl¿QîÜÞË­Ùû‹yNù\nJÍ¿%l5XÙh¦†ž]o¿©Ü§ÿ\0LÕüàþëßðHýà¿ð¶óWýÍ/?ëwEêƒ°¾lÖ«øáò÷ùA|8ø§ò#¾>$SÇ†Ëä¶jtÞõéÿ\0–Ýß_Ño²zÓ¶z÷ãµ^ãÈnµ½pÕ˜úœ&æÚ[GüR8Ò£7GŽy2ÐûúÊôÍXÿ\0Îÿ\0è½ÿ\0Þÿ\0o5ÜÒóþ·tfqãþÃ›Æd34=KñF<mwTRÑÕdþ nL\ZîºôÏä6§NnÞº5Ó˜ù»C®;/tâªq˜mÓ·)·+²=4uÆe)ïßÔîSÿ\0¦jÇþpGÿ\0@õïø$~ð_ø[y«þæ—Ÿõ»¬½u½?á;ý£Sž¥Û]ñ\nö¯[vgln‰»â–S©hvÞÎé\\¸Á÷(Ïä»W©vf?\r»ú‹#,tmº™cÜ{z\ZÊY«èiá«¦’_S¹Oþ™«ùÁý×¿à‘ûÁámæ¯ûš^Öî³>èÿ\0„ùÅ±è7üýñ¢—‘îZ±`ë>oZ>É¥î,Ï[î¾ßÛ[\'/Óõ]%là«7§YlºüÖß¨­ÂÓÐî\n/¶llÕFº‰j=ýNå?úf¬çô^ÿ\0‚Gïÿ\0…·š¿îiyÿ\0[º¾]÷×ò\"øÙñ»r÷žÁø©ñäåé¾Sõ·]m>Œ‡ŠÞÝoœ«Ý]»»?ÒÛ×lô”…–IèðŸÞˆhªòµ”uPQÒÔMKP‘{úÊôÍXÿ\0Îÿ\0è½ÿ\0Þÿ\0o5ÜÒóþ·t9üµêÿ\0‚Ü]}ñŸ¡?•\'Å’$7×VïŽü«ÙY|OLôNÅØýÖÛ£gìýÙ¿÷Ÿhn}‡º©qõ[zÒPaè\"ÆÏ÷Õº–¢z\Zuj•÷õ;”ÿ\0éš±ÿ\0œÿ\0Ð={þ	¼þÞjÿ\0¹¥çýnè7íÁþJ?ñÛÛ]£ð—ãwNvÖîøÏØŸ#vŸÇnäøÝ6/v%ZCQŽÝXmå˜ê.–îéð˜]³¼:<Æ_‹Ü\rEŒå`£¬¥\n$÷õ;”ÿ\0éš±ÿ\0œÿ\0Ð={þ	¼þÞjÿ\0¹¥çýnè=Ýü­0¿(£è]ÿ\0ü´~ìNº ì¸6fïù™¤ëúM¥´¶ŒË\n?æO™ìÌŽ9Ò~XpXlW“l<5uÔOáø´_¾þ§rŸý3V?ó‚?ú¯Á#÷‚ÿ\0ÂÛÍ_÷4¼ÿ\0­ÝY‡M|{þL½ÿ\0×ûÇ´:»ãOÄŒ®Ìëœ†KØµ›‹ã¶¯2ýy_‰Û˜ÍåYO¿¶—clm§»¶SssTY˜›\'CJµŠÚzØKÒÏ¯ïêw)ÿ\0Ó5cÿ\08#ÿ\0 z÷ü?x/ü-¼Õÿ\0sKÏúÝÐžÀ&}Ãð/äwÏÏŒŸ>|Ÿë€é¾ýìô‡fõ¶ÁÂc·f¡6àÞùŽ¿ªÏÕl,­nÒÈe8\rLØº¦‚\nÈªÒž¢\'ŒIïêw)ÿ\0Ó5cÿ\08#ÿ\0 z÷ü?x/ü-¼Õÿ\0sKÏúÝÒ3§·oò\"ìü×Xu¶cãGÅ=‘Þû÷ñþ9Õµ_k2¸Ù$:Ob÷·Yõ®O¶NâºÖ|¶íÙûþŒa\'–¶‘3uk5%2}õ=Uþ§rŸý3V?ó‚?ú¯Á#÷‚ÿ\0ÂÛÍ_÷4¼ÿ\0­Ý)¨³¿ðŸ<Ž×ì­ãEÓß*p}UY³(³þ?‰™ƒ™Ü§²wFScu¥oOmƒÔƒsü€Ãv^øÁ×a6Ý~Ä£Üt9üÅE>ZŠ¨%‰=ýNå?úf¬çô^ÿ\0‚Gïÿ\0…·š¿îiyÿ\0[ºsÞ•ðŸž¼ÛýQº·wUü0ÆmÞèÚùíõ²²ðüp¥ËQQì-§—¦Û›»ö<˜^·Èÿ\0¡³·MlX|ÎsxŒ+š‘qõuÖŸ¿S¹Oþ™«ùÁý×¿à‘ûÁámæ¯ûš^Öî˜:—ùBü†è–Ÿ 6_òåØ°mŸ‡ýƒò7`ï·—øi\'|nêŽ5;–<ÍW^m¬ÎÁÅVn¬–ì¥Û25›^^Š²dÇäièò\"ZHýýNå?úf¬çô^ÿ\0‚Gïÿ\0…·š¿îiyÿ\0[º/Ÿ{SùRw·VïŽñíÿ\0åáðo¦zWníŽ¿ÝÛs·zÛ)Ñ)v6ànÏÝõ[/juizË¯ñ›×k|žLëãé+6\nar5oÉÃIŽ«ÉJS¹Oþ™«ùÁý×¿à‘ûÁámæ¯ûš^ÖîŒæß®ÿ\0„ýnŠ¾ªÆáz‡â\rF_ºqûƒ%°0u*1»‚¦-¿):Ë}ÒnœO«hó=s™ëñZ”;›¸àÄ×í¢²Ë”†’f•=ýNå?úf¬çô^ÿ\0‚Gïÿ\0…·š¿îiyÿ\0[ºoÃî/øO~àë¹»G	Óÿ\0r{TnìÈÅÓQüIÍM½·nsvíìæñÙõ{ÖÔ_é3²v¾òÙc\'ŸÃgvþ#%„Ëíìm^RŽ®l}4õ)ïêw)ÿ\0Ó5cÿ\08#ÿ\0 z÷ü?x/ü-¼Õÿ\0sKÏúÝÖ|¾kþá…Üû?iÔuOÃºúýõIÑ™-»–ÛŸçÝ»!ð¿&¦Ÿ¡7&k±ö·Væz÷jmNÓÈÒµ\'-•ÊQcfÉ<tfuª–(_ßÔîSÿ\0¦jÇþpGÿ\0@õïø$~ð_ø[y«þæ—Ÿõ»¡ƒ£:sù(ü”ÞÛû¯zOãoÅ-ïºzÖ¯5K¹ ‹ã6Z›kvd¶åÉìmÕº:ë	µ{Gom­ù…¬Áär›f·/Ž ÍRMC<ñÕE$Kïêw)ÿ\0Ó5cÿ\08#ÿ\0 z÷ü?x/ü-¼Õÿ\0sKÏúÝÑ¥ÿ\0†Èþ]Ÿ÷ƒÿ\0?ôGuçÿ\0X}ûúÊôÍXÿ\0Îÿ\0è½ÿ\0Þÿ\0o5ÜÒóþ·uïølåÙÿ\0x?ñcÿ\0Dw^õ‡ß¿©Ü§ÿ\0LÕüàþëßðHýà¿ð¶óWýÍ/?ëw^ÿ\0†Èþ]Ÿ÷ƒÿ\0?ôGuçÿ\0X}ûúÊôÍXÿ\0Îÿ\0è½ÿ\0Þÿ\0o5ÜÒóþ·uïølåÙÿ\0x?ñcÿ\0Dw^õ‡ß¿©Ü§ÿ\0LÕüàþëßðHýà¿ð¶óWýÍ/?ëw^ÿ\0†Èþ]Ÿ÷ƒÿ\0?ôGuçÿ\0X}ûúÊôÍXÿ\0Îÿ\0è½ÿ\0Þÿ\0o5ÜÒóþ·uïølåÙÿ\0x?ñcÿ\0Dw^õ‡ß¿©Ü§ÿ\0LÕüàþëßðHýà¿ð¶óWýÍ/?ëw^ÿ\0†Èþ]Ÿ÷ƒÿ\0?ôGuçÿ\0X}ûúÊôÍXÿ\0Îÿ\0è½ÿ\0Þÿ\0o5ÜÒóþ·uïølåÙÿ\0x?ñcÿ\0Dw^õ‡ß¿©Ü§ÿ\0LÕüàþëßðHýà¿ð¶óWýÍ/?ëw^ÿ\0†Èþ]Ÿ÷ƒÿ\0?ôGuçÿ\0X}ûúÊôÍXÿ\0Îÿ\0è½ÿ\0Þÿ\0o5ÜÒóþ·uïølåÙÿ\0x?ñcÿ\0Dw^õ‡ß¿©Ü§ÿ\0LÕüàþëßðHýà¿ð¶óWýÍ/?ëwG—Ø“¨W¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º$ßÌá¥Ï¿ŽÕ_÷?ceú÷«7Çbuv_»©öö:º|÷eõÆÞØëºúžÆî}±_±ÇcÉ¦ «ÌÄÕ¯M@ÓÆ)%3]=×º¯ÅþP;¢é;.§òïtín‡Ü?=¾ÿ\007¡ïúÝÍÛ£mv·Æá×µŽÜ}ÿ\0Ú}ÍýáÝtÿ\0#\\íÚ8k²ÊÕ›n¶9\nœ¬ÒPÑ·,±@,Ò*D8³\0®2N8ô®Ço¿Ý.¢±Û,¦¸¾’º!\ZGm ±Òˆ\Z($Ð`xŒoÀ.™Øûbcº‡ù tÇ^v–ßØÿ\0;úKwö]VÜêméŒÜýóÛånKå&øÛ›`çûìöiuÖVjL~ßÜóWåñÍ$Ôd0uN¸ø~õÚÿ\0èåoÿ\09üý¿¨<÷ÿ\0LVïÿ\0dwõ¯¥&Îøñƒ©zgzu·K0®ŸØÛ»ó_¬>i|rì¼i½iº‡9ÔŸºsã^Ùë¾ÂÚ9Ö¡^ëÛ9=‡Öy(ò•1ä6½d«¸]©\rUU’{÷®×ÿ\0G+ùÈŸçëßÔ{ÿ\0¦+wÿ\0²;ú×Ñiîÿ\0å7ÓÝ×Ó=Ô™_æãÕ°ÅÛ™ÿ\0š{³ÿ\0ÛÛ1°kw§ÌNëÛÝíQØxn­Æü‡Û8obõ¦çÂÔc1Ù:™ëÐàrÕ”ô°cª¤Jä÷ï]¯þŽVÿ\0ó‘?Ï×¿¨<÷ÿ\0LVïÿ\0dwõ¯¡º›àOÖïšoæÑÛ‡¤‡ÌÏ™?<¶¯Tcv·XííÁ€ï¯•TÝß‚ÀÃ_Ùã¼²µyþºê¯Þ¹0ø¿áTµ™ì¼iTÕô4šq±û÷®×ÿ\0G+ùÈŸçëßÔ{ÿ\0¦+wÿ\0²;ú×ÐwñCùJü2ø¿Ûÿ\0{¿˜¦Ëì]±Ðpô®ø“¯ò=«¸öÖ7ò+¦>-ì?Š”]µ·6Æåd\'µðÛƒfìÉªª(2{rnˆÿ\0‰I]ÎqQED=û×kÿ\0£•¿üäOóõïê=ÿ\0Ó»ÿ\0ÙÇýkèó÷ï@ürù\ròû¤~Iï/žA.Ëè®ÀÙÝ»±:Î¦¿¨+7ÞÁì=™\"ž¢‹¦þ@Á¼ñ»Ï«:‹· ÁQŽÈÚqÑdi÷ ¢§ŠjªjUšš£ß½v¿ú9[ÿ\0ÎDÿ\0?^þ óßý1[¿ý‘ÜÖ¾ƒníø_ñº÷÷ÉŽÎËüÖøýñíï˜?>kôÜÙºN Þø.í¯Š×½·é·ÜÝƒYí¿¼0ÛC\"õÂ1¶«i)s’CIQ\rU4YïÞ»_ý­ÿ\0ç\"Ÿ¯Pyïþ˜­ßþÈî?ë_BÎø÷ñ÷¯¾e>5læ\'²6~þÏwÖôù3žî=³¹úw·r½¡ØÝÛ—ï=óµjº6mÍ[³\'øó¹sYÚ¬=FÇš®h_/…«Z«ü°û÷®×ÿ\0G+ùÈŸçëßÔ{ÿ\0¦+wÿ\0²;ú×ÑCë_å©ñÓ«·¦Çî]¡üÆ¾7lŽïÇ|°Ü?&»¿©ú÷§º«¤2´û÷ã6[âwcm.£èµÝ\rIÓ[—qõžá¯ÉÅ¹åÍî:¥Ýõ?Åkérh¿fÞýëµÿ\0ÑÊßþr\'ùú÷õžÿ\0éŠÝÿ\0ìŽãþµôŒëŸå_ÑÛO|u—aîïæ‘Ñ{ëvuþcàm^c?.ÞÛ”›‡³i~	|¡Éü‰Áç{qn”{Ó3œíNÝ¡É¶#qî”ÓŠà24Øè ŠO~õÚÿ\0èåoÿ\09üý{úƒÏôÅnÿ\0öGqÿ\0Zúsåcñ±ºwâ§S\'ó+èèÇÆ_‰Ýkñ€ç—°€Þí×¿:þ\"üÖ}÷ü(wøm³oñ\\í³ûœ‡€çÿ\0ˆýÜ¿eö5~ýëµÿ\0ÑÊßþr\'ùú÷õžÿ\0éŠÝÿ\0ìŽãþµõŸùD|\'¤Þ}ÅœÌ\'­³Û[wCÞ_è‹föFëÄ÷&«‡ÉNíÇw‡víÅ×]Áò|ünÝýw¾2˜¨qSÑmî¼ØÙÇ¡ÿ\0/›36âŠ“9KïÞ»_ý­ÿ\0ç\"Ÿ¯Pyïþ˜­ßþÈî?ë_\\7Gòµéÿ\0Pí½¥þhEº°¹.â–=ùÚ›o;éLOsÕízÌ­ÁýÉQòž›½¾,6Ï¨Úé.‚»o­©I=CµF­#¦Ž~õÚÿ\0èåoÿ\09üý{úƒÏôÅnÿ\0öGqÿ\0Zú²™;§~Ou×Xl½«óû¤öUG_Á—Áî|GožŸù3Òï³wNÓgîŒ\'}ôVíß;Knv\\RÆ28l£VSKˆÌj”ÇSGQYAUïÞ»_ý­ÿ\0ç\"Ÿ¯Pyïþ˜­ßþÈî?ë_D#!ü¬þ\rƒ·ºƒnÿ\01½¿…êÚOåýÓ÷E$‡³S±ó2üsï÷È~’íí·ÚOµ6^WcÖa»\'uäk-M.[\röÔÕ8Ä‚I*=û×kÿ\0£•¿üäOóõïê=ÿ\0Ó»ÿ\0ÙÇýkèÜ?ÉáŽãÅ6n·ù˜möî>À¤í\r­òS|Twÿ\0~d6×zõ×qâzkmï}«Åd?˜\rGo¬ŸÝ~”ÇQRE¹»ym¹£¿Šá2ÑÒã¢¢÷ï]¯þŽVÿ\0ó‘?Ï×¿¨<÷ÿ\0LVïÿ\0dwõ¯«\ZÛŸ~,í?Š?Ì§â¶çLÃ„þ`uÝ×&sÖn\r•‘¬é,Wm|Bê¯‰øüu]\rWm5OjTí:N°LÜ•RW`¤É5a¥e€Æjå÷ï]¯þŽVÿ\0ó‘?Ï×¿¨<÷ÿ\0LVïÿ\0dwõ¯¢“þS¶ÿ\0wžæ¤ùóÖo÷\":S»kvŒ»dÿ\0\nÅmÎ¶ø¿ß}Øs°eNÞX¶)î~Æù–ß¹<¬4õŒiJÔ•.~ù}û×kÿ\0£•¿üäOóõïê=ÿ\0Ó»ÿ\0ÙÇýké7ÕÊ+á÷Uu7fõàþa]#Ù™¬öÁè~ë\\ïzÖCß[OoôÇÇMÍ.òëÎ¼ìž²î”»÷š¤ƒrÕÏR$ëYú‚+Ë«oSa%×$žýëµÿ\0ÑÊßþr\'ùú÷õžÿ\0éŠÝÿ\0ìŽãþµô#nÏå»ñßuõ/{õó:ëœ½ovÿ\0.©ð\r·¦ôÈìíëžÚÑm®ýïžóNÂŠ£%Þ”ù<îÝ¡‹»cÛ¸³QZµÜF—Ë™¬‘‰O~õÚÿ\0èåoÿ\09üý{úƒÏôÅnÿ\0öGqÿ\0Zú´Ÿ’{ùb|Á«êZÿ\0“9?‹ÅYÑ{êÈêŠÙÙûFI6~ï‹íuÖÒš\rÙCüC\\Øúf«ÆÖ}Î2µé)Ú¢žF‚žýëµÿ\0ÑÊßþr\'ùú÷õžÿ\0éŠÝÿ\0ìŽãþµôÝòŽ]ùÜßû>·å÷G`vïÄ~ñÞ=ëW°dÝÛ7eîL×AvÏIm(¿Ž¿`cgË²j»^£2•?c”j–§ûeJs\'ÜÇïÞ»_ý­ÿ\0ç\"Ÿ¯Pyïþ˜­ßþÈî?ë_Dj/„ÿ\0¢ÎlÌÏü8\'H7÷Gægó*ùsößïÃÄ?áÃºóä.Ãÿ\0GÞoôÐ~Óý§Ÿ»þ-¦_ïð¯Ùã~çÉOïÞ»_ý­ÿ\0ç\"Ÿ¯Pyïþ˜­ßþÈî?ë_AŸM./ÝGÖûc¯áÇzCpw>@)žôþ/ü?aâ¾óþ\Zï¤þ2tï÷[ì?Ó¶Kíÿ\0Ó—û.Ä~ûÏ\'÷gøÏÛý¾[í<õ>ýëµÿ\0ÑÊßþr\'ùú÷õžÿ\0éŠÝÿ\0ìŽãþµô\'vÃ»ÓùXoŸå³Šþa·²›³º77sc{Öª›bg)°uùßŸ•¿:(ðÕT½áˆlÄÊŠ¥Û/0Ü”¦¡Pä<qêû÷ï]¯þŽVÿ\0ó‘?Ï×¿¨<÷ÿ\0LVïÿ\0dwõ¯ Ï{|\0ë^òÞ\rÞ_$ÿ\0›QöGÊ»á¶BÕØû[©:—fìþœøuò-ò+ÕgÖT]Ïºr;opo½ÛŸ«zýË•Üyö¥«TAñDô“{÷®×ÿ\0G+ùÈŸçëßÔ{ÿ\0¦+wÿ\0²;ú×Ðk×?Ê¿£¶žøë.ÃÝßÍ#¢÷ÖìëüÇÀÚ¼Æ~]½·)7fÒüùC“ùƒÎöâÜ?(÷¦g9Ú»C“lFãÜ/)§Àdi±Ñ@žýëµÿ\0ÑÊßþr\'ùú÷õžÿ\0éŠÝÿ\0ìŽãþµô vòÄøyÛcyaûùƒu]VÍß™Ïæß”Îâ¶ÖG®°‚\noæ—Ú½oÚ0Å†Üu½¯Ÿ¡¤É|«ë¸àŠzŒe]>çyÄ’Óc£©æ÷ï]¯þŽVÿ\0ó‘?Ï×¿¨<÷ÿ\0LVïÿ\0dwõ¯¡{ñ#©ó½¿×?\"û£ù–tOew¦×ù}Ò%w~·úÃ®v6ãÙ?¾=ü„èµé­©°è;£=U²§û¹,ö[qÖe÷ÕÙA4PÐÒPÉIKŽ÷ï]¯þŽVÿ\0ó‘?Ï×¿¨<÷ÿ\0LVïÿ\0dwõ¯¢s?òé¼/ÅíÏñƒ­?›7Hì¬q|ê†?\"ó¹>¿êýá7aEñû)ØY^£ì}‡ªùŠŸ«&ƒý\'å©3ø™+3Ë—¢hE-^2¦#Tþýëµÿ\0ÑÊßþr\'ùú÷õžÿ\0éŠÝÿ\0ìŽãþµõe¿4ú;ãoÊÈÚ}Ý×¿5þ:õnâ:{°~4ïY÷Þ+¤¾Gu\'oüií­Ç´w?aõfôÞùÞx,&à£«ÊìêzœmI¬X©*]þê–¾™Þ•ýû×kÿ\0£•¿üäOóõïê=ÿ\0Ó»ÿ\0ÙÇýkèŠõò®ø¯Õ]	YÐx_æ=Òµøeþ^?Ì›à;[„ê\\uf3üÀþFMß¡6löæmý×MÐH0ƒÆÒâ¨³çULaa+@žýëµÿ\0ÑÊßþr\'ùú÷õžÿ\0éŠÝÿ\0ìŽãþµõ»¿”¿Ãÿ\0;Ï{æ7÷óêúmŸØ³’Ïm½­?\\â7=þW”ßËui°û¾»¸34µÐÏJ›Ý\'ŸU#ø4”Ò!l‰÷ï]¯þŽVÿ\0ó‘?Ï×¿¨<÷ÿ\0LVïÿ\0dwõ¯£çðCã×Ä‡»¿¶ÞøùÓ¿!7WÉ½Ò¹®æÝÃ¸7Fv‡ya±»\"‡¬vö-IòäßÉñ’ûn¼ÆA®–¯sTAYk4Ô”‘ÁI¿zíôr·ÿ\0œ‰þ~½ýAç¿úb·û#¸ÿ\0­}(k~7-ý“ðä‡òûø³Ú?\Zþ0õÈ. ù×«lïí­»`Û;—¿ö{cf{#ŽÍö5.kzdq)—†E¥©ÌS™)(`¡Š¢šž8|^ýëµÿ\0ÑÊßþr\'ùú÷õžÿ\0éŠÝÿ\0ìŽãþµôS6¯ÀO›c[@¿Ì?£êä¬ùMü®>K\Zµ¦ØÒF¿Ë[ª¾9õ’l\rÝµBOôÈÝk×\"M¶áÌ~Ó)öÆZŸ~õÚÿ\0èåoÿ\09üý{úƒÏôÅnÿ\0öGqÿ\0Zú&þS¿ªv§bááÓvNÛËÖvXvM¿Qn_Ç=‰´;\'¬r]¹\\{W´ºëãÉ¦¡Þ³ÙÝÍ“¤ÝY]…YÔÔ9¨ñóScèkiMTžýëµÿ\0ÑÊßþr\'ùú÷õžÿ\0éŠÝÿ\0ìŽãþµô4ì/€Ñ8›Æ_æ{²zWuVuFóé~ùßÛ“i÷Fàì]¥¾»Ë°¾Få·\'[ÏÝ]Ý½äêÞÔ§í^ÓÏTGÎI¾â­¡¯0äèòCMU¿zíôr·ÿ\0œ‰þ~½ýAç¿úb·û#¸ÿ\0­}› >=ìÏ—}f¿;úË;±>K÷÷È~öÚ;s}lŽ»ìî–«ù7œÍï>ÀÄã{#ØùI7&[	¾w5mnÞÌÃÃUbéÅ4.•3ÀÕ“{÷®×ÿ\0G+ùÈŸçëßÔ{ÿ\0¦+wÿ\0²;ú×ÕqPÿ\0+Ÿù=ÙŸíÞÄþf}%¸ûûøßKÓý«²¶?Au<T™ïŒ=Û´;ÿ\0döoÉmŸµ{\\oÊ®ÛÜ{ëdÒRæsuÓíõ\\•T˜ºl\\Õ•Us{÷®×ÿ\0G+ùÈŸçëßÔ{ÿ\0¦+wÿ\0²;ú×ÑÅüSèÝÕ¿ê{äwó\'ënîÏï?…/¾ö½^!Õ½A]˜‡ækõ×bî-ÛÕÙ\r©Ù9	º£×8M‹&obdì¼tõQUUgj*©äj¯~õÚÿ\0èåoÿ\09üý{úƒÏôÅnÿ\0öGqÿ\0Zú!4ÿ\0Écâ].3»âþiT-ò[cç6Šu—yKò¿Ù0Ýy°öqu¦ØØ–?˜}¶ÔÑmžéÉÉQ&ÌßûÕ‰ã¦ÇÒbª«ñU^ýëµÿ\0ÑÊßþr\'ùú÷õžÿ\0éŠÝÿ\0ìŽãþµôjºÏùG|q©ëÎåè?ÿ\026.CØoü°6Ö\'omê_ff¶ùk|’ÌwÅV^}=Ñ]›Ïâ»ƒ)»×‚y)—j«Dþl¦¤§öô7¶w,RÞî)\nŒ¬ië@N3ÑvçËË²À—[Ï/_ZZ³ˆÖK˜%‰KHPÎŠ¤Òµ \'Èô}þ.y~\'üŠïó¥îh7·SvGYìÎ©ÂtÖÛ¬¯Ýý‚;¯°»s³7,ÝwÙ=Õ‹­š£Kº0ûcgKQ‡ª•r4Ù\né$¯‘OD}Y¿¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¤Gcÿ\0£oîfgý.ÿ\0qÿ\0ÑçûŽþðÿ\0¤à?ÜÏøºÐÿ\0	þ3ýçÿ\0pñ|ûo·óÿ\0Ê_‹Gîhöžëé|úßé±«Å¦ž\"•ÕŽ4§Ï£}‹÷ïï[_êÏÕþûîð>‡Äñþ×£ÂýOìõj§á­q^ŠÇý‹wÿ\0\0‡ÿ\0`?²ŸùË‡ýRêCÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:÷ý‹wÿ\0\0‡ÿ\0`?¿Ècþ\\?ê—^ÿ\0˜íÿ\0‡oýÔ:ú‹ý”¯ï%wúÿ\0eÓûßü§ø—ú\"ÿ\0FŸÞOîßßã~óï¿¹¿îSøñO³òù?ÉþãÃ«×£Ú»/Üþ+~ïúoN|\Z´ÔVºsJÓåZtæoõÉú¿®?¿?vxÃÃýçõ^‹¥´éñû<M\Z©Ní:¼«Ñ‹ögÐ¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯ÿÙ'),(48,'re','$2y$10$qR3OUimO4eGMfKo3Yq5nBOAGG9G3f5/YFVq/8UIKbfgB/BPD3WCle','','','retailer','2017-04-14 22:00:09','2017-04-14 22:00:09','parham73_10@yahoo.com',NULL,NULL,NULL,NULL,NULL,0,47,'mf',NULL),(49,'inst','$2y$10$kkcb1D1bNvwIVcwiTJ11OuQ3JsiXNH1/xe5uWCkBdZo9VF/GHlpJy','','','installer','2017-04-14 22:01:02','2017-04-14 22:01:02','parham@apexwebdesign.com.au',NULL,NULL,NULL,NULL,NULL,0,47,'mf',NULL),(50,'whsl','$2y$10$soL1GeMoeIrxCg7jmqgaqOM20z6834vdNntLQ.DZu1Zvgb8ygcmk6','','','wholesaler','2017-04-29 18:32:04','2017-10-29 11:24:40','whsl@a.com',NULL,NULL,NULL,NULL,NULL,0,47,'mf',NULL),(51,'pmmf','$2y$10$OyiUhM9ANglLM8KlfDVbNOLhvMZqJKMykV1jZJLD31k/awsq.nwVe','Aaron','Conis','manufacturer','2017-10-31 10:19:50','2017-10-31 10:19:50','aaron@apexwebdesign.com.au',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL),(52,'pmwhls','$2y$10$NKCzSxGA4gkTEgylIUPL1O3UY.3DXqhXifwn3fsTHkw8PF9oHhEmu','Aaron','Conis','wholesaler','2017-10-31 10:26:03','2017-10-31 10:26:03','aaron@apexwebdesign.com.au',NULL,NULL,NULL,NULL,NULL,0,51,'pmmf',NULL);

/*Table structure for table `users_parts` */

DROP TABLE IF EXISTS `users_parts`;

CREATE TABLE `users_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buy_price_include_GST` float DEFAULT NULL,
  `mark_up` float DEFAULT NULL,
  `marked_up` float DEFAULT NULL,
  `price_per_unit` float DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `part_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

/*Data for the table `users_parts` */

insert  into `users_parts`(`id`,`buy_price_include_GST`,`mark_up`,`marked_up`,`price_per_unit`,`description`,`user_id`,`part_id`) values (88,6,50,50,2.05,NULL,47,12),(89,5.2,50,50,1.77,NULL,47,13),(90,5.64,50,50,1.92,NULL,47,14),(91,6.8,50,50,2.32,NULL,47,15),(92,15.5,40,40,3.34,NULL,47,16),(93,25.26,30,30,5.21,NULL,47,17),(94,5.91,50,50,2.01,NULL,47,18),(95,11,30,30,2.8,NULL,47,19),(96,9.7,40,13.58,2.09,'Test dsdsac 2',47,20),(97,18,30,23.4,4.33,NULL,47,21),(98,21.15,30,30,5.09,NULL,47,22),(99,9.2,200,200,6.57,NULL,47,23),(100,6.3,60,60,2.4,NULL,47,24),(101,16.5,40,40,3.55,NULL,47,26),(102,8.08,50,50,2.42,NULL,47,27),(103,8.16,50,50,2.45,NULL,47,28),(104,21.35,100,100,42.7,NULL,47,29),(105,6.5,0,0,6.5,NULL,47,30),(106,48.69,45,45,70.6,NULL,47,31),(107,73.85,30,30,96.01,NULL,47,32),(108,16.5,40,40,3.55,NULL,47,33),(109,75.6,NULL,NULL,75.6,NULL,47,34),(110,68.45,10,10,82.82,NULL,47,35),(111,19.56,10,10,21.51,NULL,47,36),(112,39.03,10,10,7.16,NULL,47,37),(113,22.56,10,10,4.14,NULL,47,38),(114,27.78,10,10,5.09,NULL,47,39),(115,29.3,10,10,5.37,NULL,47,40),(116,15.98,10,10,2.93,NULL,47,41),(117,6.73,10,10,1.48,NULL,47,42),(118,0.63,10,10,0.69,NULL,47,43),(119,0.46,10,10,0.51,NULL,47,44),(120,10.67,10,10,3.79,NULL,47,45),(121,237.46,NULL,NULL,2.37,NULL,47,46),(122,422.14,10,10,4.69,NULL,47,47),(123,1.14,10,10,1.26,NULL,47,48),(124,9.59,10,10,10.55,NULL,47,49),(125,0.1,10,0.11,0.11,NULL,47,50),(126,0.16,10,10,0.18,NULL,47,51),(127,2.15,NULL,NULL,2.15,NULL,47,52),(128,23.74,NULL,NULL,23.74,NULL,47,53),(129,66.34,NULL,NULL,66.34,NULL,47,54),(130,66.34,NULL,NULL,66.34,NULL,47,55),(131,6,50,50,2.05,NULL,51,12),(132,5.2,50,50,1.77,NULL,51,13),(133,5.64,50,50,1.92,NULL,51,14),(134,6.8,50,50,2.32,NULL,51,15),(135,15.5,40,40,3.34,NULL,51,16),(136,25.26,30,30,5.21,NULL,51,17),(137,5.91,50,50,2.01,NULL,51,18),(138,11,30,30,2.8,NULL,51,19),(139,9.7,40,40,2.09,NULL,51,20),(140,18,30,30,4.33,NULL,51,21),(141,21.15,30,30,5.09,NULL,51,22),(142,9.2,200,200,6.57,NULL,51,23),(143,6.3,60,60,2.4,NULL,51,24),(144,16.5,40,40,3.55,NULL,51,26),(145,8.08,50,50,2.42,NULL,51,27),(146,8.16,50,50,2.45,NULL,51,28),(147,21.35,100,100,42.7,NULL,51,29),(148,6.5,0,0,6.5,NULL,51,30),(149,48.69,45,45,70.6,NULL,51,31),(150,73.85,30,30,96.01,NULL,51,32),(151,16.5,40,40,3.55,NULL,51,33),(152,75.6,NULL,NULL,75.6,NULL,51,34),(153,68.45,10,10,82.82,NULL,51,35),(154,19.56,10,10,21.51,NULL,51,36),(155,39.03,10,10,7.16,NULL,51,37),(156,22.56,10,10,4.14,NULL,51,38),(157,27.78,10,10,5.09,NULL,51,39),(158,29.3,10,10,5.37,NULL,51,40),(159,15.98,10,10,2.93,NULL,51,41),(160,6.73,10,10,1.48,NULL,51,42),(161,0.63,10,10,0.69,NULL,51,43),(162,0.46,10,10,0.51,NULL,51,44),(163,10.67,10,10,3.79,NULL,51,45),(164,237.46,NULL,NULL,2.37,NULL,51,46),(165,422.14,10,10,4.69,NULL,51,47),(166,1.14,10,10,1.26,NULL,51,48),(167,9.59,10,10,10.55,NULL,51,49),(168,0.1,10,10,0.11,NULL,51,50),(169,0.16,10,10,0.18,NULL,51,51),(170,2.15,NULL,NULL,2.15,NULL,51,52),(171,23.74,NULL,NULL,23.74,NULL,51,53),(172,66.34,NULL,NULL,66.34,NULL,51,54),(173,66.34,NULL,NULL,66.34,NULL,51,55);

/*Table structure for table `wp_additional_accessory` */

DROP TABLE IF EXISTS `wp_additional_accessory`;

CREATE TABLE `wp_additional_accessory` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `wp_additional_accessory` */

insert  into `wp_additional_accessory`(`id`,`name`,`type`,`price`) values (1,'HD2 Flat Interlock','Additional','2.73'),(2,'HD3 3mm Offset Interlock','Additional','2.36'),(3,'HD10 7mm Offset Interlock','Additional','2.56'),(4,'HD9 Frame Interlock','Additional','3.09'),(5,'ST9 Reciever Channel','Additional','4.77'),(6,'BS2 Bug Strip','Additional','2.69'),(7,'Stop Bead','Additional','4.31'),(8,'20 X 12mm Trim Angle','Additional','2.98'),(9,'HD15 Short Leg Reveal','Additional','6.67'),(10,'HD16 Long Leg Reveal','Additional','7.83'),(11,'TM18 Offset T-Mullion','Additional','4.36'),(12,'ST11-Bottom Runner','Additional','3.00'),(13,'ST7 Security Door Track-H','Additional','5.08'),(14,'ST8 Bottom Sliding Track-U','Additional','5.08'),(15,'L3455 Single Top Track','Additional','3.23'),(16,'L3454 Single Bottom Track','Additional','3.26'),(18,'Flush Bolt Dble Sec Door','Accessory','14.64'),(19,'Door Closer Hinged Black','Accessory','9.46'),(31,'Sm Pet Door 240mm X 190mm','Accessory','53.56'),(30,'Lrge Pet Door 400mm X 260mm','Accessory','81.23'),(33,'Med Pet Door 305mm x 225mm','Accessory','79.21'),(34,'Sml Pet Door 240mm x 190mm','Accessory','70.90');

/*Table structure for table `wp_commentmeta` */

DROP TABLE IF EXISTS `wp_commentmeta`;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `wp_commentmeta` */

/*Table structure for table `wp_comments` */

DROP TABLE IF EXISTS `wp_comments`;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
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
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `wp_comments` */

/*Table structure for table `wp_dropdowns` */

DROP TABLE IF EXISTS `wp_dropdowns`;

CREATE TABLE `wp_dropdowns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `type` text NOT NULL,
  `manual_sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=566 DEFAULT CHARSET=utf8;

/*Data for the table `wp_dropdowns` */

insert  into `wp_dropdowns`(`id`,`name`,`type`,`manual_sort`) values (366,'SD-OXX,XXO LL','Door Configuration',20),(303,'Australian Cedar','Color 4',0),(306,'Bush Cherry','Color 4',0),(307,'Casuarina','Color 4',0),(308,'Chestnut','Color 4',0),(309,'Jarrah','Color 4',0),(310,'Rosewood','Color 4',0),(311,'Silky Oak','Color 4',0),(312,'Snow Gum','Color 4',0),(313,'Walnut Burl','Color 4',0),(314,'Western Red Cedar','Color 4',0),(365,'SD-OXX,XXO RL','Door Configuration',19),(364,'SD-OXXO LL','Door Configuration',18),(363,'SD-OXXO RL','Door Configuration',17),(362,'SD-XXXXO','Door Configuration',16),(357,'SD-OXXX','Door Configuration',11),(361,'SD-XXXO','Door Configuration',15),(336,'HD-Open Out-L Hng','Door Configuration',1),(337,'HD-Open Out-R Hng','Door Configuration',2),(338,'HD-Open In-L Hng','Door Configuration',3),(339,'HD-Open In-R Hng','Door Configuration',4),(340,'DBL-HD-OpOut Bolt L','Door Configuration',5),(341,'DBL-HD-OpOut Bolt R','Door Configuration',6),(342,'DBL-HD-OpIn Bolt L','Door Configuration',7),(343,'DBL-HD-OpIn Bolt R','Door Configuration',8),(367,'SD-OXXX,XXXO RL','Door Configuration',21),(358,'SD-OXXXX','Door Configuration',12),(355,'SD-OX','Door Configuration',9),(356,'SD-OXX','Door Configuration',10),(359,'SD-XO','Door Configuration',13),(360,'SD-XXO','Door Configuration',14),(549,'Pearl White','Standard Color',0),(369,'SD-OXXX,XXXO LL','Door Configuration',22),(370,' SD-XX','Door Configuration',23),(548,'Woodland Grey','Standard Color',0),(547,'White Birch','Standard Color',0),(540,'Deep Ocean','Standard Color',0),(546,'Stone Beige','Standard Color',0),(545,'Primrose','Standard Color',0),(544,'Mill Finish','Standard Color',0),(543,'Light Bronze','Standard Color',0),(542,'Clear 15um','Standard Color',0),(541,'Custom Black','Standard Color',0),(537,'Awning','Door Configuration',0),(550,'Darley Woodgrain','Color 4',0),(385,'Almond Ivory Gloss MD016A','Color 1',0),(386,'Anodic Bronze Satin MY125A','Color 1',0),(387,'Anodic Clear Matt MY221A','Color 1',0),(388,'Anodic Dark Grey GL213A','Color 1',0),(389,'Anodic French Champagne Matt GX207c','Color 1',0),(563,'Sec Slide-3 Panel','Door Configuration',0),(391,'Anodic Off White Matt MD227A','Color 1',0),(392,'Anodic Silver Grey Matt ML212A','Color 1',0),(393,'Apo Grey Satin 272-32786','Color 1',0),(394,'Apo Grey Satin ML183A','Color 1',0),(395,'Arrowhead Gloss ML066A','Color 1',0),(396,'Azure Grey Satin 272-36603','Color 1',0),(397,'Barley Gloss 984-50058','Color 1',0),(398,'Barley Gloss MD007A','Color 1',0),(399,'Barrister White Satin 272-84672','Color 1',0),(400,'Berry Grey Gloss 272-7252G','Color 1',0),(401,'Berry Grey Satin 272-88362','Color 1',0),(402,'Bright White Gloss MA030A','Color 1',0),(403,'Charcoal Gloss ML035A','Color 1',0),(404,'Charcoal Satin ML180A','Color 1',0),(405,'Citi Pearl Matt 272-88471','Color 1',0),(406,'Claret Satin MG142A','Color 1',0),(407,'Custom Black Matt MN248A','Color 1',0),(408,'Doeskin Satin MD188A','Color 1',0),(409,'Excel Basalt Matt GP208A','Color 1',0),(410,'Excel Blue Ridge Matt MJ221A','Color 1',0),(411,'Excel Blue Ridge Satin GQ121A','Color 1',0),(412,'Excel Bushland Matt MK203A','Color 1',0),(413,'Excel Bushland Satin GS103A','Color 1',0),(414,'Excel Classic Cream Matt MD245A','Color 1',0),(415,'Excel Classic Cream Satin GU145A','Color 1',0),(416,'Excel Cottage Green Matt MK274A','Color 1',0),(417,'Excel Cottage Green Satin GS174A','Color 1',0),(418,'Excel Cove Matt GD247A','Color 1',0),(419,'Excel Deep Ocean Matt MJ201A','Color 1',0),(420,'Excel Deep Ocean Satin GQ103A','Color 1',0),(421,'Excel Dune Matt ML252A','Color 1',0),(422,'Excel Dune Satin GP152A','Color 1',0),(423,'Excel Estate Matt MM247A','Color 1',0),(424,'Excel Evening Haze Matt GM235A','Color 1',0),(425,'Excel Evening Haze Satin GT135A','Color 1',0),(426,'Excel Gully Matt ','Color 1',0),(427,'Excel Harvest Matt MD215A','Color 1',0),(428,'Excel Headland Matt Mg219a','Color 1',0),(429,'Excel Headland Satin GV119A','Color 1',0),(430,'Excel Ironstone Matt Ml236a','Color 1',0),(431,'Excel Ironstone Satin GP136A','Color 1',0),(432,'Excel Jasper Matt Mm214a','Color 1',0),(433,'Excel Jasper Satin GT114A','Color 1',0),(434,'Excel Loft Matt GM236A','Color 1',0),(435,'Excel Loft Satin GT136A','Color 1',0),(436,'Excel Mangrove Matt GK277A','Color 1',0),(437,'Excel Manor Red Matt Mg262a','Color 1',0),(438,'Excel Manor Red Satin GV162A','Color 1',0),(439,'Excel Monument Matt GL229A','Color 1',0),(551,'Ultra Silver','Color 1',0),(441,'Excel Night Sky Matt Mn231a','Color 1',0),(442,'Excel Night Sky Satin GN121A','Color 1',0),(443,'Excel Pale Eucalypt Matt Mk236a','Color 1',0),(444,'Excel Pale Eucalypt Satin GS136A','Color 1',0),(445,'Excel Paperbark Matt Md214a','Color 1',0),(446,'Excel Paperbark Satin GU114A','Color 1',0),(447,'Excel Riversand Matt Mm204a','Color 1',0),(448,'Excel Sandbank Satin GT116A','Color 1',0),(449,'Excel Shale Grey Matt Ml284a','Color 1',0),(450,'Excel Shale Grey Satin GP184A','Color 1',0),(451,'Excel Surfmist Matt Ma236a','Color 1',0),(452,'Excel Surfmist Satin GB136A','Color 1',0),(534,'Anodic Natural Matt','Standard Color',0),(454,'Excel Wallaby Matt','Color 1',0),(455,'Excel Wilderness Matt Mk289a','Color 1',0),(456,'Excel Wilderness Satin GS189A','Color 1',0),(457,'Excel Windspray Matt Ml266a','Color 1',0),(458,'Excel Windspray Satin GP166A','Color 1',0),(459,'Excel Woodland Grey Matt Ml205a','Color 1',0),(460,'Excel Woodland Grey Satin GP105A','Color 1',0),(461,'Hawthorn Green Gloss Mk030a','Color 1',0),(462,'Heritage Green Gloss Mk044a','Color 1',0),(463,'Horizon Blue Gloss 272-33344','Color 1',0),(464,'Hunter Red Satin 272-84209','Color 1',0),(465,'Ivory Coast Gloss 984-82063','Color 1',0),(466,'Light Grey Gloss 984-32519','Color 1',0),(467,'Magnolia Gloss 272-32658','Color 1',0),(468,'Metropolis Bronze Pearl Matt 272-59003','Color 1',0),(469,'Metropolis Silver Glo Pearl Gloss 272-84623','Color 1',0),(470,'Metropolis Storm Pearl Satin 272-84684','Color 1',0),(471,'Navy Gloss Mjo11a','Color 1',0),(472,'New Hammersley Brown Satin 272-84657','Color 1',0),(473,'Notre Dame Gloss Ml040a','Color 1',0),(474,'Pottery Satin Mm175a','Color 1',0),(475,'Precious Bronze Pearl Satin 900-94686','Color 1',0),(476,'Precious Nickel Pearl Matt 272-88360','Color 1',0),(477,'Precious Onyx Pearl Gloss 272-52052','Color 1',0),(478,'Precious Pewter Pearl Satin 272-88202','Color 1',0),(479,'Precious Silver Pearl Satin 272-57225','Color 1',0),(480,'Regency Grey Matt 272-50278','Color 1',0),(481,'Rivergum Gloss Md042a','Color 1',0),(482,'Roseberry Grey Gloss Ml015a','Color 1',0),(483,'Stone Beige Matt 272-32538','Color 1',0),(484,'Vivica Black Onyx Gloss My042a','Color 1',0),(485,'Vivica Charcoal Metallic Gloss Mm019a','Color 1',0),(486,'Vivica Citi Low Sheen Ml211a','Color 1',0),(487,'Vivica Citi Matt Ml211a','Color 1',0),(488,'Vivica Palladium Silver Satin My184c','Color 1',0),(489,'Vivica Stormfront Matt Ml249a','Color 1',0),(490,'Vivica Ultra Silver Gloss My070a','Color 1',0),(491,'Wedgewood Satin Mj180a','Color 1',0),(492,'White Satin Ma124a','Color 1',0),(493,'Admiralty Grey Satin 961-51017','Color 2',0),(494,'Aubergine Satin 272-84736','Color 2',0),(495,'Eternity Bronze Pearl Satin 900-88393','Color 2',0),(496,'Eternity Charcoal Pearl Satin 900-88394','Color 2',0),(497,'Eternity Nickle Pearl Matt 900-88395','Color 2',0),(498,'Eternity Pewter Pearl Satin 900-88396','Color 2',0),(499,'Eternity Silver Pearl Satin 900-88397','Color 2',0),(500,'Lunar Eclipse Satin 900-87734','Color 2',0),(501,'Lunar Grey Matt 900-88417','Color 2',0),(502,'Lunar White Gloss 900-87731','Color 2',0),(503,'Off White Satin 272-33732','Color 2',0),(504,'Precious Gold Pearl Satin 272-96604','Color 2',0),(505,'Precious Steel Pearl Satin 272-57127','Color 2',0),(506,'Ultriva Bronze Pearl Matt','Color 2',0),(507,'Ultriva Champagne Pearl Matt','Color 2',0),(508,'Ultriva Charcoal Matt','Color 2',0),(509,'Ultriva Charcoal Pearl Matt','Color 2',0),(510,'Ultriva Citi Pearl Matt','Color 2',0),(511,'Ultriva Silver Pearl Low Sheen Yy230a','Color 2',0),(512,'Vivica Asteroid Mn271a see Sable','Color 2',0),(513,'Vivica Brilliance Ml277a see Sable','Color 2',0),(514,'Ultriva Anodic Natural Matt','Color 3',0),(515,'Ultriva Anodic Stella Bronze Matt','Color 3',0),(516,'Ultriva Black Pearl Matt','Color 3',0),(517,'Ultriva Deep Ocean Matt','Color 3',0),(518,'Ultriva Driftwood Matt','Color 3',0),(519,'Ultriva Ebony Matt','Color 3',0),(520,'Ultriva Gold Pearl Matt','Color 3',0),(521,'Ultriva Luxe Bronze Pearl Matt','Color 3',0),(522,'Ultriva Nobel Silver Pearl Satin','Color 3',0),(523,'Ultriva Olde Pewter Matt','Color 3',0),(524,'Ultriva Pearl White Gloss','Color 3',0),(525,'Ultriva Primrose Gloss','Color 3',0),(526,'Ultriva Silver Pearl Matt','Color 3',0),(533,'Access Window','Door Configuration',0),(530,'Double Hung','Door Configuration',0),(531,'OXO','Door Configuration',0),(532,'XOX','Door Configuration',0),(539,'Precious Champagne Kinetic (A&L)','Color 2',0),(562,'Sec Slide-2 Panel','Door Configuration',0),(555,'Pottery','Color 1',0),(556,'Stromboli Satin GK148A','Color 2',0),(557,'DO NOT BUILD YET','Door Configuration',0),(558,'Louvres','Door Configuration',0),(564,'Sec Slide-4 Panel','Door Configuration',0),(565,'Sec Slide-5 Panel','Door Configuration',0);

/*Table structure for table `wp_mastercalculator` */

DROP TABLE IF EXISTS `wp_mastercalculator`;

CREATE TABLE `wp_mastercalculator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_lo_list_1` varchar(20) DEFAULT NULL,
  `mc_lo_list_2` varchar(20) DEFAULT NULL,
  `mc_lo_list_3` varchar(20) DEFAULT NULL,
  `mc_lm_r_list_1` varchar(20) DEFAULT NULL,
  `mc_lm_r_list_2` varchar(20) DEFAULT NULL,
  `mc_lm_r_list_3` varchar(20) DEFAULT NULL,
  `mc_lm_r_list_4` varchar(20) DEFAULT NULL,
  `mc_lm_r_list_5` varchar(20) DEFAULT NULL,
  `mc_lm_r_list_6` varchar(20) DEFAULT NULL,
  `mc_lm_t_list_1` varchar(20) DEFAULT NULL,
  `mc_lm_t_list_2` varchar(20) DEFAULT NULL,
  `mc_lm_t_list_3` varchar(20) DEFAULT NULL,
  `mc_lm_t_list_4` varchar(20) DEFAULT NULL,
  `mc_lm_t_list_5` varchar(20) DEFAULT NULL,
  `mc_lm_t_list_6` varchar(20) DEFAULT NULL,
  `mc_lm_m_list_1` varchar(20) DEFAULT NULL,
  `mc_lm_m_list_2` varchar(20) DEFAULT NULL,
  `mc_lm_m_list_3` varchar(20) DEFAULT NULL,
  `mc_lm_m_list_4` varchar(20) DEFAULT NULL,
  `mc_lm_m_list_5` varchar(20) DEFAULT NULL,
  `mc_lm_m_list_6` varchar(20) DEFAULT NULL,
  `mc_list_1` varchar(20) DEFAULT NULL,
  `mc_list_2` varchar(20) DEFAULT NULL,
  `mc_list_3` varchar(20) DEFAULT NULL,
  `mc_list_4` varchar(20) DEFAULT NULL,
  `mc_list_5` varchar(20) DEFAULT NULL,
  `mc_list_6` varchar(20) DEFAULT NULL,
  `mc_list_7` varchar(20) DEFAULT NULL,
  `mc_list_8` varchar(20) DEFAULT NULL,
  `mc_list_9` varchar(20) DEFAULT NULL,
  `mc_list_10` varchar(20) DEFAULT NULL,
  `mc_list_11` varchar(20) DEFAULT NULL,
  `mc_list_12` varchar(20) DEFAULT NULL,
  `mc_list_13` varchar(20) DEFAULT NULL,
  `mc_list_14` varchar(20) DEFAULT NULL,
  `mc_list_15` varchar(20) DEFAULT NULL,
  `mc_list_16` varchar(20) DEFAULT NULL,
  `mc_list_17` varchar(20) DEFAULT NULL,
  `mc_list_18` varchar(20) DEFAULT NULL,
  `mc_list_19` varchar(20) DEFAULT NULL,
  `mc_list_20` varchar(20) DEFAULT NULL,
  `mc_list_21` varchar(20) DEFAULT NULL,
  `mc_list_22` varchar(20) DEFAULT NULL,
  `mc_list_23` varchar(20) DEFAULT NULL,
  `mc_list_24` varchar(20) DEFAULT NULL,
  `mc_list_28` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `wp_mastercalculator` */

insert  into `wp_mastercalculator`(`id`,`mc_lo_list_1`,`mc_lo_list_2`,`mc_lo_list_3`,`mc_lm_r_list_1`,`mc_lm_r_list_2`,`mc_lm_r_list_3`,`mc_lm_r_list_4`,`mc_lm_r_list_5`,`mc_lm_r_list_6`,`mc_lm_t_list_1`,`mc_lm_t_list_2`,`mc_lm_t_list_3`,`mc_lm_t_list_4`,`mc_lm_t_list_5`,`mc_lm_t_list_6`,`mc_lm_m_list_1`,`mc_lm_m_list_2`,`mc_lm_m_list_3`,`mc_lm_m_list_4`,`mc_lm_m_list_5`,`mc_lm_m_list_6`,`mc_list_1`,`mc_list_2`,`mc_list_3`,`mc_list_4`,`mc_list_5`,`mc_list_6`,`mc_list_7`,`mc_list_8`,`mc_list_9`,`mc_list_10`,`mc_list_11`,`mc_list_12`,`mc_list_13`,`mc_list_14`,`mc_list_15`,`mc_list_16`,`mc_list_17`,`mc_list_18`,`mc_list_19`,`mc_list_20`,`mc_list_21`,`mc_list_22`,`mc_list_23`,`mc_list_24`,`mc_list_28`) values (1,'44.5','47.5','100','30.00','30.00','30.00','30.00','30.00','30.00','90','30','90','30','20','5','0','0','0','0','0','0','78.96','67.11','6.34','4.73','.83','.83','1.54','1.00','0','4.50','5.50','7.00','8.00','20.82','64.34','64.88','1.50','.11','24.50','1.04','1.24','5.45','0.12','1.50','1.00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
