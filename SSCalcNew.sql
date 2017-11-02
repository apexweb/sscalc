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

insert  into `users`(`id`,`username`,`password`,`firstname`,`lastname`,`role`,`created`,`modified`,`email`,`bank_name`,`bank_account_name`,`bsb`,`bank_account_number`,`deposit_percent`,`discount`,`parent_id`,`parentusername`,`avatar`) values (1,'admin','$2y$10$12D7/XB.E3HcX7d1OaPyMueqYhoX8ERnQONl8Cr6pquuUwLw4dljm','Admin Name2','Admin last name2','admin','2016-03-08 00:00:00','2017-04-03 13:48:09','admin@pp.com','','','','',NULL,0,NULL,NULL,NULL),(46,'factory','$2y$10$Sairs5gwK.M4wErvjcWSV.UgeOBeu4T18JTZ1QEcrqi4Dj8RDKGbO','','','factory','2017-04-14 21:51:09','2017-04-14 21:51:09','pedram13@gmail.com',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL),(47,'mf','$2y$10$HIpCWTq3grlV5/DPQxPjF.8KbIPIhu2wvOUcHLnvY.0ln0r0q8mxa','','','manufacturer','2017-04-14 21:51:57','2017-07-02 22:20:09','jelly.73.bean@gmail.com','btbt 2','','','',NULL,0,NULL,'','����\0JFIF\0\0H\0H\0\0��\0,Photoshop 3.0\08BIM�\0\0\0\0\0\0H\0\0\0\0\0H\0\0\0\0��\0Adobe\0d\0\0\0\0\03g��\0�\0��\0\0US\0���\0\0\0\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0\0\0\0\0\0	\0\n\0	u!\"\01A2#	QBa$3Rq�b�%C���&4r\n��5\'�S6��DTsEF7Gc(UVW\Z�����d�t��e�����)8f�u*9:HIJXYZghijvwxyz�������������������������������������������������������\0m!1\0\"AQ2aqB�#�R�b3	�$��Cr��4%�ScD�&5T6Ed\'\ns��Ft����UeuV7��������)\Z��������������(GWf8v��������gw��������HXhx��������9IYiy��������*:JZjz����������\0\0\0?\0��ߺ�^��׽��u�~��{ߺ�I���������휁�P�7.���\ZJ�?����)�w>?�_MK,��p�4�TV�o�\'x�]�׺R��^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^�\\�i��:��~����k������G�6���|f����m��%Ɠ�w�w@�-���[�5N�P�\0�O�%�UR��hR��u���\\?γ�><��\'���:N��[��rn��[���8̟ku���o-Ò���m��I�6Gm�Ox�n���N��ŉ��f�H\rm-/��[�t�p�>��?gl�V�{5Y���Zʭ���T����y�)����kf(%����՘܍m];$������^�U��׽��u�~��{ߺ�^��׽��u�~��{ߺ�^��׽��u�~��{ߺ�^��׽��u�~��{ߺ�^��׽��u�~��{ߺ�^��׽��u�~��{ߺ�^��׽��u�~��{ߺ�^��׽��u�~��{ߺ�^��׽��u�~��{ߺ�^��׽��u�~��{ߺ�^��׽��u�~��{ߺ�^��׽��u�~��{ߺ�^��׽��u�~��{ߺ�^��׽��u�~��{ߺ�^��׽��u�~��{ߺ�^��׽��u�~��{ߺ�^��׽��u�~��{ߺ�^��׽��u�~��k�����O�?ػϣ�����OMA.[	O��&���-�����bN��\n�����f/c���n�CGME����T�R�ib����^�A��m׺�_ho���C�k���}]����ߟw�`n���st�e;|n>��uY��lZ�\n�x�y�3�=u��sI�ҧrf�0��r����5�z��\Zrq��w7_��\\�?��I���\\���C�롑d���?���%�h��D���׺�_�w�ة�\Z����_ >`�n����zw�;�h�~/�6��yE�:{jl�jq]{����>����\\.v ,��sMh���F\ZOu���>��]װ0ݓ���n���n\n<}_�bk⨗mnL���MG��d�X,�:L�sMYEWSIWNRhex�X��t$��^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^�?��\0�.�_����[�j��٫�Eջpɾ\'�aqټ�>��vfGՔ9}�A����O\ZA��OL8ęik���[\0�\0�֛��֙Lgev�!��7����;�]��9������f^����w�^>���\0��\r����-��eۘ��Mr�����ɖS��o�p����jT*i�B}:ʾY����9�a���g���齅n-������7G0�s�dkU$P�B	�ꮪǦ�Lo�*�������z�_�N�s\ZMˍ�س�r1����$b�uckT�?n�c�a֢GO��*_���o�;������{�\0\0ޫ�\0	�?�2�?�S�?���hh����(�}��~K�R�M�`��P�/�i���u�,�?��謄��|�_Ke�/fV�����UHi����o}���Y��ɔO�E�R���l!�t�\Z�A~X��}��Ź�9{�\"����m�����w��M�.SXQ*���5�cC@�N��������%)޽K�{\Z3��Mx\r�1��h��M�Ϻ�\Z�Tl��u�X�m��5����#��ҋ�uy����\08f�\0�}\n?����9���[g��uz�\0{߷�\0�7b`z���\0�ߏ��t�JtW�?U�n�팄�gen\r�ٳCӻ��}U��=�{���pP+TU\n)q�A��PG-$g��8��\0-��_h�Eԑ��1�Ph>f���)������ct���T7vRx7WRM����y#IL�MDPM�Q�\0�\0��0�UڛΊ	$D���7f�%:�3I[O��G{��Ϥ*���ݞJ$�8���S4�����Tf��mY��_���niS���tw����\'��o�s�,�y��G�v���Kz�u�nZ�v�ɮ�o`v�~��d(���H�!�Q��AUH��+G�{��.Yl�{�����;��ڬC\ZU,�hj����P�/��=��r9��M���pv�f����\'���\n�	�	f�!���Q�v#�#,����n|&/p�$�l^f��>ibxj:�S����yb!���\0�$r,���{T}�B���X�\\Y�(9G\0֌0EF\rE�?�?�N��~��>���{��2Tn�^��I�w�&\r�>���6��J|�gA��?e��TB�5P� t,��Hly�dܯwM���ݑap�i(�[%@j<	�V�b=��W�Nr�^_K~]�T�M�qqm!�n\"�x��9^H�G*�H�EhhA\0��Bʇ��\'=�\0�C�?�^���#�ݿ�������\0?�W���e��gC/A9����g���L�~�bn檇la3�{�[2�e%;�ˍ����¶RJHdxiڡe��^B��;W�<���ŷm������h�J�4�Ei�Z�.����@���g������`��]?S<7vW0�;�oq,�5iҵ\Z��`���s�F�������<�gm�rٛ����m�����[Se�v�/q��Xv�y��{��(*�g�e&4}c��c�r�v����-#ig�C�*�CEt�5�Nz�w�\0u6�H��qo�z4��`���i���f3O:��!�e3E�[��\"*�9\"������T?��9����\0���{�uy����\08f�\0�}L_������\0s-���:~97��_,�u\'A��w}v�spn�]�:��p�b������f��8�lՑӛ��I)�A�٦�Ϝ��]�\r������h��Z��B�>�~�}������G6s�(�a��\0S����B�1!,8SCV�A�z\Z�,|����7#�8?���6���W�������[ǯ��۩�j�Ejݫ�p[s:��W��M4���OUC)I\n�1�y�e���k��4\r�X�^7S�*��È������w��r��>��۷X��}����Π+vOk,�T�+��X0Mz�ܿ��Dw�^|eߛ�\0#7|����fu���;װ7%dyZ�(q�e!�x�>ۂ�Jy�Y2RR\"���R�i�iF�h�v���f��?�秇h�Ʀ��\n�G�<=_����;���������j���ŵ�*QC2���#3\0Ti�;d@��2�s�6���{�c�RͺzַC�18���ܘ\Z-ǃ�����\n\\�3!��ҕT�4�����OM<q�Eu�\\���ƈ��A�*2<F*��9��wM�mٷ{�p6����eWF\r�H�H��GVZ�p������J�~I��Wv�U���ܵ���\0��f\"ؘ�m����¶6���8lM~e�F�/MI�l�M\n�+eԆi��%�ݬl�,�.%\"��\n�vҺ��R@\Z��p*q������|���۴XG&ǳ���<��u��a�D��J��\'��xH5ɥ3�ř��6�6�1������EV��d�i��P`�媬�\Zx��\050�6���#R�0TI4Ϡ������mi�p�\nF����A\'�GU����m�[�6V������G9A���6��ۻ�lW�7;��&��t8�ŷ�����YM�A$S�	������_D��9*������2�>����~c��/��ޭ�&��x��h��e�M<R�����ѕ�D�]��s�z�bn������1\'ncqyL�S!�\rU�7j��GZ�\r��14�L�f��TRMM�	=],sV�p�����i?^f+\Z\0I:Af&��U,h��R{g��~����n�i�\"I�.$t�őb�422�����z�p��#��\Z�_6�[{cFc�{�y�:�a�������u�T�EWO�����{}�ڈe���Qbb��>���}�x��q$�E�m�(������>G�V��7lw�{�h��D�s�r����Z;�qrf��XQL�ʿ�O�g��Kn]Ǹ6l����;sm�7�F����>��f�~ک���\rײ��h��n�+3�p�U��#\r,�1$��,A܇|��[j��)r�E$d��3\'���*�+P	\0�#ܽ���m�޼;���x�E��}g{s�$h��6��m&�avD�FΨ̠�bm���zxm���[�&�ڻ�\r��[gsm߀�5�{qm��<6w��t-N7/���jc�����H* �d��X_7mWE<����,�\n��P�DA�#t0�>�<�\0�n�N���k3���\\sG-�,R��$�X�uW�H�J��� ���_*6p���ؿ%6�G�mfT�;W�gɎ����I`��v�UlݪrR�B�ia��1������k�M�Cmx���g���q�9bE�xV���4{c���7]�y���̫��|ٷ���~����p�I��Ц��$T�{7�;���׺J�ߍ�;?roL��tk]����e�oK=>\'H�B����N�jHu���TK��ٞe��Y����2O�2x�FN�>���v΋4�A�:Q*r��:QY�0��.�7Q��Ȟ�޿ �����\r�����\r��v�����Q�w������fڻO�q�>��q[��y�v_n*�d�TD�M!��n�1$i%�����Y�k&��I�oR�	&^�G�Oٹs������\r�[�[�K�D�C��~4�{���{i4B/N�&��U\Z��ʎ���ݝ���_�v7N��fo���V���m꾡�p��v{y��%�1;�k��f�++#QNeG����n�I�J�P�x�)*�i��1�c��}�%��K��Y�UP�E4u,RƲ�*������0\0j:./����w�c����M����M��Q�><�6�bw�\0eu�st���l���Rb�o��sm޾��ʊ����H2USȐ�GE?���>U�<���w�[�1��}����u�p�NJ��Q�]KE�7�������������=����W�w֌t2b2�C�ԝ����l|&\'?�;�|eS�wEM���;Cm�F���C�3ݝ��uY�z�������n�<<[r���2-MG����Gꚦ���\n�9᪤��*�Z�iRzz�y�e�x\'��)��&���){�^�;����tww�.ă��{����&t��^��v&���ս��/um�ո�7Y�P�e��ܦ�}����/�Ľ3pR�CJU�}׺������]���_�;�3}������vV����_ov�ȏ��$w�LoXRVd6�~7ol��ߘF�q�ī�\ZZ�<�=1oU�U��a��Ē�:����WU&������vL5��;_���I������Ӻh��No-\0���m,d�`���$�^��|��f;w��f�Λ�l\r�ٽ��z���r����]��=�w�+�����y�О<oa��no*�-��U���I1�s��)N*}׺Nv\'�m�͍�?6:���;�r��_�7ʞʗ���v�svOU�ߘ���m�����G�$[f�sc�jv������O%%g��{�/��zn���\00�\'�>>�:�\0v|/�nȷ���}���>��f�6��l-GGo�.��\r�9���޴X��l�f���>9\Z�$u3{�tZ�ͣ��}9�;��&��oά�v��\0�m����~���z~1`>[���_��V��m�Xj:�vc0�8S��\Z�­T���X��t,/�.ܹ\r�\0��~\"���G�ǌ/���Z�co���caA��C�:3)����ݭ�\n�N��Ú��hU	hk㤯���{�V��׽��u�~��{ߺ�A�i��_�����Gg�Z=���M���+U\re\\���rtx<��SV��p�24�8�}���ARK\"!Ky{k���wy0H���B�\0T�f \0$�\0$�{�|��s~�i�r���[���\"B��\ZYdwr�QD�$�;*F��쪤�����k1;�ov^�ۘܳ`�;�?��ܤ{o+�F�xu6�����Gc����KW��G�����q�u�KKO$�<���3�q�B���s	\nt�!�I��\n�Y�D4�,�POS�}��ǻ�-��{���s�/rF�?�W���n�h�Yf)&�<yd�(<I]S��ݿ%�o����[벷l����ڻ�]}��پ�qd0����ǥv�`vF�\0��f팦n�pؚ߳���r5**J������T��4K��$3F�21VVA��<:��f�3��ܴ�?WP����^��]=��w~��[��v�����s9�{Ӷv��\0�T�&����ٱ�ƥ4�WҤ��3���g���_���ۻ�3��3���gt�D���۔�Cu�bj6�`�|�K�h�}a����x�mѹ��m��U���(ki)�׺��\0��z�.����>Oq����Q�ە����9����7o}�����������Y������8��V;]��͐����c�j}׺�����MFO}`{�lOV涎ť��B��n��M����]un6\r�������7���o����LN�ۙ��8��F����#K�э��`?+�c�);7\'./�k����{~*��[�w�G��T]ۍ�`Ǔ��W�1[c(��؏����T4y%4��׺�K�þ ��*�ڙ\nZ���W��\"�)�������ܝ��z�+��pe��v6_�7�/S�6�N_l⫪��WҢH���\'�W���6��֛�xTve&ku��+��;R�`������c�Խ#�x�Ϟ���-ͳ6�]��F���G���E�3�h���OR���,�43O�%���:��i{�ơ��Α�N�9:O��g����%�;l�q\Z(2�y!����;J˔��QǓۻ������;�9S���������+�4Qo�������l?�4�r��6��m��6�lA�q����5%NkQ����I��{�������[7���;2�S�:��~�j~���Ǚ���{���y6=]��>�ܽ�����ص�w�s4�4��ML���R��t�y�Qޕ}AC��M�;��T�\Z�m�٘�h2؝�����ٴ\'�7�vn��mT�o��^m׋���L�JJ�H�׺Xv��N��嶶g�Z����t9U��;xa�������؝�ڛ�e�=õ�cb�7\r4��<���a��=45/:4c�{��-��~`�;�;���cf6^�%/Ow����vm��ڹ���>�uW�]��۵9����c�u��YW����J�����c��N��>��ew��kv�l��N��ʪ�.�ݘ͇�X�|����*�!�z{|f�p��n�$��fe+��stT�B���������o�f�����(;��r�O�5��>��+���77yl=�ܘn���Gbv�V`��pT�v^��e7m\Z`�!�ڨj�/u��޼�=���gn!��}��}s���y��{�ru���\\.�e1�X���~��dEN6Z�D��N�T0C�Б��{�{�^���׺��u���{�{�^���׺��u�_�����������ڸ}۰���|6��-�vV�w�����{�f�������vǠ��/����T�j�he��<��=׺ћ�����ݟ��&��|��#�+�;�{t�sy5�ʜOr�������p���?���W숿�Ra�0�\rÍ��e&L�.&�W��ˏ[ZTj=��V\r�k���ϋ�����[�����g������~_{g�������ı�dv�&�N���ev�FV�O%d��cg���m��vNaڧݟ�w-�p�y�f,������>b�����^�s�����W�=��\r��ͼ+\r�8-��~ř�I�O��h�!&�]���?�����记�q�b�&7En+:g���bR��=�����^�k7,r\\Sn��0�y]�S�ȵ<�B�C?��������}�˙6��໓E-u�Q�T�s\Z|X�Ѩ@\"����~�?w?{}��+�����x�ݹz��߾�����R !�W�!��\Z-J̌A)*i�Fa���,�쎕�ߑ;W����\0�/�6ޓn�����|}C����;3����e��TR�p��j\Zl���I��S�&����\r�龰Z]�����NiBiO�N��z���{�������s������ԛjX�S�W�>���o:uo�M��a�����v?��\0D��^�~I�[_�*�,<��m���Q�\\�uF-L�]C@��5��\0�[o����\0��_��	<JS��\Zk_^��ݻ���P���뇅�!�٬��Ĩ���oF���<�������n�\r6���������?�v[������>��?\"�?�w�nƏj�\r���c��3�:�m�Lc�I1��t�!�&�c;���\n��t��%��b�-4�\0J��:�i��`��_tӒ���Z�S�����HQs���������u��Ր����͡Iܘ������O��`U�.��{�6�{т��j0��΁�:\n�.��9��j|4�oN[�u.\"\nx|�Ԓ���W�׸~�~��_��Ѥꦞ�T᧺�Ӛu��oO�i�\\��E}�s�ܭ�m�o�W��<_��uS��GF���tT��_�ܧ�Z���\0��9����ӆ��d\"�j��a�\Z�r����;�����Q%A�j�#k/�w��/?�[_�T7�u܆���>�������=:�/�M=���s������rK�t>�{H�c�/Qu��QIl���?��\0����Χ�b�w�2|�_m��N�ub$���|U<�I*W���RVd���\"�HՀ����n�n��;�&�X0aJ��,yӒ9�o�eۯ�b�+�o��H^�W �:js\"�Tֲ�ʋ1����o���=����KpV|��a7.d�`���=�����d錔u4��b��WW\"xT�]A>��D�\'��r.!p�3���CM)##����nv���ܧiܠx7H-vȦ���-��$VF�+F���89��\0\'��=����\0b���U}����,���퉍��ݫ��el�[�:�����٦Ԕ���^��AAOۀD����-�i�����8�๚ �S���	E@�8��3����NH�+�_�y��A��E�;4v��_��y�\\��.�M�X��ix��c=��T������NK�~*��\0+���ۗmoL&��\r����_!2{c{����F���,�SnTc �\'�UY52TI\r!8Ǚ9��r��q�%W�9W��	R;������{)�O��ے�Џ��s�{+��	mM�г@�Op�7;�dT�$\".�N�Z@l��%&G�A���k顬���݆���X\'���V����Y#a������TP��s����i*�Զ�,��Y!��/�t�9YW{�*�hA�=� ����\r��v��΍��;Gm��ʏ�8:i���\\v:�jc��)�����)Z�%b��,���{ދx!�͵�����\n^�?�\'w�wz��+��y��3�F`��\nщ�9���^�뭁����eml6Z<4&G��c�O��9�*(顑Vh؇\0ف7�/�[[Ƒ<p\"���\0.�˼o[�������q-����H즌H�1ֺ_�O���K��o���7��=��38]��d�(��=����lf���3��]f3����j�JL�+����d����c��/�;U�.]��/ȑ^�B]���\\��#Q����S�Ϲ�\0�7������+��Y�#�痯be��������\'�_�Q\Z;D��ą�H�*���[�C��	?�2�7�h;_���%\'a�7D�,���Zo<^>���Eㆂ�9��EJ*Z�W�XqT�i�5F��r�#�;̢}�pQ0��nU@��h`\Z�����Z=�v�m��6�j9Bw۞ֹ�����Y�9f�%/�37��~�Q�v���g�=�Mö{�\Z>-v���\Z�������]͒���V���5{�l�����)���X�����o�F�~�r�s���a[ZR��*�X��O�j�Ǜ�FY	�6Y��Z�\Z�Ek��\Zj�$+krX���_��\0���U�M��C�q�\n:��ܔ}[�csW�_>?i�Ý�]������)��y�����Lre�tػ�*G��l�}��FICd�	��LoB@4��\Zu(L��t���;��|�q�gglۗ2��ч���\n�v��6+�a{{r�L3��j�d�K��h�b�|\'�>\'!��v�6+�zm����Gg�6C���M�=LRQ��;W�1��55qW��~��:G#e���9z�#eI���F�Ua*DlA��($�U�P��]c�Gک=��n�\"��lg孚�\"�\'�rYckȒH������D�Q\Z)g��R��>\\�3?����T�I���9ߔ�F������T�i�Mύ�h%���U���L\r|�a��\\%qX��V��VM�\\�5��2��pD����5��\n�qVD��Ig�t�\'����%��[~Y�h]����!u�2m�����M7PԬ��.z��kaڻ��~Ie�U��ܻ<Qﬦ#\'=V��=�4\rS��n��e1��ݑ����k�䥆|�`͓�����We�����\0u�N�:RB��yG Ě�V `({�y���\r����T���赒L�n/n+F��DvV��\r)vX\"�l�\\��z��c��^l���|s�=��6V��l��\0UU��mf���lE&7���c����M,3K5o�O#���JD��ǽ��Z�m%���\Z�Ju)e��\n��h|��o1��c�s���V[�ۼ\\]�=Պ�7���E��ҮH�Z�Gfj�D�����f��m_��A�5=��]�Gս��{�1���,�;l�û6�_nnm��\r��{Dy,fN��K��j�8BR�*{��ԙ!��`%�C<NK)��Y��A�cZP�@I�Ŵr���s��O5n�-�\'�v��t�)�i|(\'I���I$2�T�$I�d��Y`|	�|���/���!���|J���:��j�LnN�:sf������z��z��<�G.�IdP��y7q�<�\"��1���d`H����}������������/O6n�d��E�\Z�1�R�\Z�%T�B@8�Ķ\roc�b���0On�֤�{;p�6-�,tL�,�nU��xh��*���[��!7Q��^Ň�!O���\"�\"�U�o.g�ӗ��\"}^cJI*���k�j:(���׺Gvσ�˳����QGI�ƈ[%�ɋO���V�$�9,Rj�Ċ���]@��l\\�.`��u\nA�\"��9�ۛlۭ��$��2WD���ztH��P�Bhz���ӟ+�w���ܝGZ�:��ڋ�>+	_���\Z�J�ݛ��a��Nj\r�%Gqt������%��p�9���A�����A���5>߼~񷾳��5@�E(�\\*�]_���H��b�T��i��m�\0���*�-�n;b���\\L.\"ݶ��x��F`�����\\K\Z��� ig�A�O���?��Ok������C��; gv���Lf/��{ｋ�7&��8=�Ԙ���X�j�}e]f7��R��H�iĖ�}4}MVfngb�@��,ƃ�c�[~ݿ}n�_����E]E!�$�f��e�5�\Z� V����f����S���|WHo��;?н������]�֛K�{/yn��� �������x��ד7__���������Ҷ�1j:\'����z���Ք�Sm|�\\�d�����];��}38]�����W�>a���`�fַa�w�\0]u�N�)6_=4��r�5U�{�u�z\'���\0S�Gun_����>U�:���7E/N�G��z���|o۔���v|]�d�m~���\Z�8�]�>J��4��s��,�T��ue�ߍ�vO�9-ǹ;��C.]�:��/���Y��3����o\\uil݃�XJ����N���g�KSJajj����^�������]�z��?M��\0e|L����뽯�������;��r�n̬���l�\r�M�c����z�fߥ��\\l�<�{�tN7o�\'�������ϐ=Ӷ6�����]9��/m�������{�\0z|�N�9��߸��Q��s�x%�c��S;�3)����S/W8�^�>��\0�����래���Q�~��}��~A�溰Td;�v�zE�um��_E��ӱ��;򖞖��t�cRcqt��I�[p7��G���_5�3�8���u>��_�]������3��_-�>7v.��!����U��u_f�̥vM���f�PS>RIjqUsAI$��9w�������J�f�{wmݏ�3�o���W��X�m�0;|�f���b���T;��/M�EQ���$R.9�Z������{�ON\'ζ�6~.��t�B��,٪�����ջk�\']u}EPm����zgm�^d�Q��t��M]\\��MT���e�/u�]�����]��x��޽-�*��-��힙�_��	��v>��Y\r���{���v%~ת��T*��㧪�eh�����`����{����K�\r��>\r�7�M�����PVu6��]�������O`�%�\0E�!1U�-���M�T�n�v&̥��P��hiiZ���)i�=׺��~��{ߺ�^��׽��tL�qt�\0d��V�������o���ۘ����CiQo�v�.w	��E�䧪���Jf�1��*�QC�qx稒U猋�,��l�k\rs�:�[H}5j��b�\\kU�\"V���9���v��%x6]�k��弎���9#��Ԭ�<��7N�m,�؄jP���8?��dڸ�,[C5�?{7���~.�\r��ڛG���\r��mn^Û��\0c�|�gdv��4MYE��tp�U��#��ڷ��=��y�E�D��H-$��[*����Y��D2JT	�ͥ�N��=��e����\'�we���4�qo3����v-�a�-���,�E�<���(��/��/��~��.��^��E��\'N�ݩ��	���_�z�\0�6.�����\'�{Sh���{�\r�7��r*87>Y_G���luL�I1A�4P�_@(?�\\�����r�7[���y.%*(��؀0bq��_⿑���l��*��{gv��\0Ǻn�}��=�w�ͩ�[��_%�۽s���3��[av��%�=MتΝ˹2U�l[A��ސ�;����\0��N�����t;=��_���q-PV�e��>5������z����q1�yߛ��ot�uuBoXR�,��\0���\"���&�� ugsu���.�������̓�����A��SW|�����\0>6����[�tc������:}Ϗ��?V��]q����{�>��S��lue;����]�����^��?�=o��4�l&K�+��=�ٜ��ےm��㴱۷�*vV>z|�cS�1��^���\0!ڽߑ�ew��^ƪ��v�q�{b��au/MG�X���Gտz�>x�d�z����=7c介�Y�դ���44���th#�X݅I�;/�7�-\r]�o�㔟��\0�4TPu����]I�=EQ���g;�\'\'G��V!6#�Q��jcE��e��{��;��2���{[e4�-�ۿ��J��C�i����_�#����-��f�=�Zi�zn�hK�\\G���|���y}׺�߿�c{nN���ύ���N���+ݟ%�ݏ����Kџ~Oo��߿-���\0���_���^����.��U�m�AM�q�d1�튛5Q��þ�����\0����-�y\r������q]v�yA�q�!��������2�����`�g�h��ٹHb���n�K>^(2u��{�t��?��7����\rU��7��\0��?�}-��k�?%:�>����|f�_juf���v\ZLs|����*6��ۻƚ��n�R�τ��{��7�N��{gz������X:��ner�!��o�k>9���ϗhz���V������Kٝ�>/���隇j�pcj�٘�엺�G#�߽��*��1�(�����鎍��;�	�.�v~��m�ڻ�mf:#\r��<��mϔ�w^䥫�+���?��đ�-m:W��^�O���Gj���������?ѝk�\'����vc�z#��\\|>�Q�6Ojg+��3q�����ؤ��R�1&J�q9\Z��j�u���w�X��Wku�Ȝ&�6�G�X������S���̻�Z����3{z��v�V{����&����M�*�X��x��Ou�7ɏ䝸~Uo����X��w�����n���{���S�w���q�D�ɗ��͡.��W~�.ʇ�0t�t;f��1M��wɯ��VA��\'ct��?�]�ܛc��+�/r��ݙm��u�/�v�f�����\0�����Y>���c���h�	-NbY�W}������^����^���׺��u���{�{�^���׺��u���{���\'��������V�䧨Mq���H�}]AG�u�>���x|(��/̞���7H�<��,=om�v��_�=��_�\rÃ�����,�C���nڸ�.R�M�BƓ��,�<Ʀ���Ԃ��+)aU��A�������LF��ۇ~f��!�1P�>{����υ�Sm}��\0}�����f����Ʃ��Ԅ��*xȊ6��Ǖ��g��fQ$�]��LXԐ�T���Y����=���jج�ʕ���㵄ͳ��8�$��4��*����59,I<6?�/�LWI�dm|ѭ�]{C�{?Y��|���ͥK��n�l��\0U��\'��0;��r��<T��\n�2\Z�	#�q�}�孾���\r��0t�q+\0� �+CC��t��~���s/nܱ�{�p�U�mt-��dh�dA,s	:���V� ^�N����\0	��̍���+�ӱ�ϣz�/��/5�����\rWn���Sj��۽7�O���V��rc�jhv�ߣ���4��AM$T�;�$��x/�m�$�#\'�{V�\n\"��>]=���{���-�){{�͎��/xжӷNL�WmwK&Dk�T��=�.��\0��b�_��4A6�^������\0�cΘ���˳�;�`:@IWb~��D))V�#N�3�ĐԼ�Y�_�aO�*��D�\0����\0�j����X��_�������\rWȮ��;\'ce�ƞ,���n���S�w���t��/����e���ۘz��K�ݹ����!]��!����x�͟~��7=�7hG��V\n?�@H�k��=F��}�������p�m��.\Z���M��h$���\"�wX�>f=$�)���ia�\0���e�G���N�h&�i�e�71�i��?C���d?�Sʟ�g�\0��������x\"�\0\\��m����O��2�W��+�+\'�ƾ9z�^��2���6�I�]��hw�n�ͻV���U\"�+\0@����~���~��ϧO��?�k�F�Z�����ר������������o���-m��xb?�|��?���vӎ���\0�<��ݗ�Ĭ��\Z|��I�N��B�\r��f�ԓϰ����?���\0g3�=O���>�@\0}ȩ�;&��Iz���\0����]�������6f��8e�~V��}���۷�EY�F��\\�Z�2�%|�MR�MI�v�$yegl��a�����[\\Q�/���vf�2̄��u���o7����|��=_�n64J,mb�\05#�+��e��g��H\0į�3����=m񯥶N��ۣvϾ3X����\r�%V����3ץ~����B������1�\n��6-�ז�e�����y<VS4�V -j�ǂ�p������{�2{���W�͵���*��v�aY$�&�y�CG�΢f��\03wg�����3�+��CfnN���\0��ۇ�w�\0ژ*m���ۦ�y�j&��z�\0��-6��C;%}=JH���J�n\\�e�n;v��F�֌�]%X84T��9�|��G4�{����<��WVܭ�Im�[���S4r���Igy\"�R2�6R+Pj��[���zk�g�����٘���,.go������Sf�Y����Jx��K�궶)�2�7 zJ8T�yzϗ,�7����n�wK�),�i\rA*H�P��\0p�z�1���<��-{K���܅�N�;}��l��$i<h�t�gz%Ă����P�y�k�f|�؛{��Jt���[;k��7�E�=��$�ܴ�|�\n���{��T\"b��Q�d��&MEK*�}�`��KX����9m�OTM\"Q�+Z�)��:K�W�|���̞��}Ն�sh�3J�u�ƨZH�)��yPU�C�\0إhH&����(i)h��O_%=<��{Cr�Hi�XbR�ԅ�� $���Mڀ���7�k�4�6d�W�o�\'�b�MO�K���T�\0,��rtWz�>�ݽe�j05Y�\r/u�ښ�m���n\\;.cmu�\'3J)s8�%\")�HC�Fe%۾֛��f�e�R.�WZ�`�*��<�{yϗ���n�����v|�f����XZ�M�\'��q$m�9eM+QB�k�{rt�Z�>�뾸�X]�֛K��n\"n��yiq�kl�i�8j	2y^��������Q4�I�S�1$����o������ma�b�|F4U�2M\0�s�73o����[�5��y>��]�}y0���;��8H�S�:UB�\0�.�����-��`캝����e<�����L�+9�s��յ77��x�8Mŵ�F�#���t�����X�2�W֒n6�ium���$`C+VR#�e`# �GNr�0[r~�m��{��_ƒ���pȏ�<�,mvRHg�G�D`U��XOS��c띑�[��/fu������CQ�;�%Yoc��x�\0�J!�Ƚ5*����%����������v��Z[Y[[F��\"ƀ���EI��h2NO�<ɽY�f�\0�s6���ɻ��Kyr�g)�W.�cK�H�S(�*�*�\0=E񦃣��;3�:�ecw_qW�~鶴�Mᔣ��پw�Uؠ��i)��##��3pfj�(4�9L�MD��>���h�n������g��Beb>\'z(1�Ay����Ћ�}þ�-���w�K�v��4Z*�B�����iYn�L�mgo\n��e���K^��-���;S�7���8ͥ��u�������Qn*&��V`�uX:��H汔�X)+]�z�J�V@��u/�VSn�}��q�.\"h\\��0WR��1ZT���I�[B�V�m��i7]�p�r����Z&��U�UK���Y@`���с�B��0u;�kq��ɩ�{\'=SU��TRt��u�!gR�Z�q�g�֏��V�˟���v����ݯVmz�-�`�Z�yQC�=�/�;�oc��bo>��ퟂ����͙��Id��-���S;��|�z��l>&�%5+W<4��GJ��_d˲�$V��\n4�k9!@��X�\0�\0��J��7n�.n7\r�i��ݧs-���b����i$������3�I$��������x�U6O��$kpm<Fg��Dn��m�6��.�;onb�c	��ٜ�5$�����R� ��H��mK0ieȭ,�t����� &��+LV�#��)mݷ4[~���K��\nd���3��p�b�3\'���Ѩ�C�&C`�-��6n����N��m\r����2�n<~l�].������:V&�\ZxT��8�������[yfKx�c�̔UP��|\0��y�ps���͖�q�_\\�ywq&�c�Y�v�Y\Z� jwbƃ��E�ʎ��\0�������g�\0�W��s��\0)�\0�L��������?�ʹ�\0܎��ں9���V=).��Q�ߕ��<�6���2���cm����c�^�F�F�Bdg���u�\"H�PE�\0R��RI��1�紺����c�giYD)#3�8�IUcZ�@\"�\0Pt���\0E�#�m.�ػ��w�b,�ػw/��>fhjjW��QM__<ttP���Ԉ \"\Zzx�����q#�ʥ5�ݽ����ܚ-aF�Fɢ��4\'���3Ѧǲ�|Ǽm{�jgݯn�� @�$�F�!TT嘅QR�\0OZ���E�qw�*�h�e��6<��\\�`��v>Z\Z��\"�M�����ݘ�ʾ߮��\\}elB��KF�*ȓK\n��e����m�3[9�|���C؈�\rZ��SU�\';����m72n~�A�lM�d)���4�?�%FC\"#i]2 �[���-z7=�O�m�]�:۹�Xl��]�6�v�%M�;|a��dl}ό����ln\Z����m���IO��by�ev����}����Է�*]B�=C����\":�o�]ے9�z�=�b����Y\"jed�E�)�Fd`|�����g�s�E���o���;�vv����oYv�Fڨ��7\'X�.;wo�?�.���~��7S��p���z{��#��X6W�+�=ؘά�l�������8>��Y�mo�cg������pY��|�Ԡ�ە=��k����%F�J�3\0�5��׺Zl�����\'tm~��MԻ;��[������{�jl�Fv���;�eo�{vm�&>��}��k�,!��\Z�l�����$���s��Gjb7�vn��Pe;)���-���{cn�\'ln,�}��[ӭ0=�қw���/[����&�\r�1Y	��\'A=G��S;��|A�\\�lc��2j������p�uwpV�j|gS������]��x��]�;+�z�m�MY�ڛk#����#->>>=��u�u�\01�G��\0�~�켵_tI�;���ظ>����P7����w��m��X|v��{C���峒M���TUTT�8��c�׺-���_�o���m�AC�z�wa6��܃\'�:��6���_�oP|���.��>�讜�n&m��ˋ�3�ۛ�rm�$��xa����u�~��c�wT�{K��d������[C��il��������0�d`s;���~�r7��1���\n �#*Q���L��\0���N/�vWyd�[qc����}__�&������\r�M��\0�t�>���:�>��n]�KQCG����R�n�k��%^S5����^�v7���7�G���v䢮��[;q`3�%�[kv�v��odeO��7qu�/u�aŽ��MG�h��:x��-�+)�������ǡzq�ڻ�#��nx!�\'�ػ��p9!���]���6�ܛw�z��6~�=Ż*��9+A�Z�0)��{��}�\01��gW�4����\'Dm>��]���:÷�v<8ޝ���;g�;�`��~��}e��O.lm\\�krb<ej�bO�u�������}��齧�{��������������k�\0��2��$�\\�eu����\r����9wn_UM�ܻB6��`�ď�����\'�c�>���FK��i�n:�pў���v����_��;�\r�/L��9�v��}�����L�����ҋ��W��h��m�7������6����N��GI�k�\'z��[w!;ꓬ���1����\nZC=8��{���{�s�w�~��9�;�7�������;Gj�]_qo������\rEW����E]���ȩ#�h�]sCM3M\Z�a��yv�+˘�̒�c�(9Vp��HCJ���:�}���}���w]�[;ܯ.�C�p[$�@�į!D{�.UN��H�J1峿�K=\r���F��|U���⿉ͺ%�5�u���^�n<����nX��8m��t�!,<zZVH�m���ur֑엋*�ɯ�Q_����U�\'�8�.w����݃c��.����lf���Z�d�]�0�Z�[�<��\0��WP�PXZ��_���vW�l�C����\r��K���QlLi��v�٧ܿ;��g��so-�ҝ�\0�?k��q�CO��ij��4I� �n ��>@⾌*?��?wm�}�u����\rͭĖ����jJ�:����wtvb|cꟋ�?�Ǡ�u�|�����<Ǯ��x��F��m^���g��*^Ћqd�۩\\c�NOi�h��X�h���z/�H��!�G�n��Q���?{���*Δ�]�S�i���q���_7��ޝ���]�6+՝���z��;��)G��Q��U��{�~���GO��Ϋ�7]�қ�\0�>Ac�8���^��e����:���mQ||�ftf��.��ϱ;&��(�lnK����OFj��{�S���N��{;g�;~��vvO��l��߰���wh�o��cS�a��SP�uF�|�E4rS�1���8�㎬��t��?7�GQ��+�w?Uw�Fժ잩��|����=9��o�+��7�6Lew�+�7-V�޸���흫�۸�/����\n���{�W�\02���if+��\0������WOv���=��6��ޝ���$3��h�i��]���s�~�����`v��]��)r��M��cd��{�t�����Ut�\0�^��|*�Y����Y�l�{;tu�k�fG�7ɌN+5�z�5�;�X��oq��^Y+�xm���Q�#����Ɨ�{�K���_��]�+��j[�~3��ȣ����W\n�%�_:�vx��\0�f9#���Zk�\0�������T}ߖ��{���w��[�}��whņ���7|d�fqm������\n��ic0}՞������1�3�n�F;_�ې��Tb=׺���S�.cn�}��^���.��u�+�w˜�{��v^��.�ޓ��:.����ml͑�{6�1�]�pص�tQ�UE4�1��a�?�K�~��^�߽]���w_O�g���ۘݵ�{W��_?��\"��kou���]�9^���v���]ǎ���)��+�i�j�����{��n2ψ��kn����\n����\\6w�2�HPw&S\'٘�͒���N��upwN~�ll�����f�9�p9hj\'L}a��{�����|_�wv{�����]�U�_7�Po^�؝�ܛ���gx�|�����t�Uu>��<��}��9[T�IUSW<�祤���*�u���˾o���w�����mO\\���uw��N�۝�3���/KlZN��{����j������v6;qQd�p�\nX%z�\Z���^�Y��1�>��N��~��7vf�D�>����/���Ro��ܰ�<�n;3�ݴ��+׻Kc�,���V3ndc�W��<|���M����/T�T��t�Fk���wW����]y��)���n����R��f���N��_x�v���no���m\\A���R�i���2-�ҷ�>fw���Y�?zo�?_v��>,�g�~��ۛ�nk�w�F�;�6Ģ�]S���k�mӏ_�uU:�[�i�N�(a��#y���J�\0�_�+�:�����;�s� ��ջWi���.��Ru6S��鶵%eJә)��_���Y���qՕ�^*w��З]��h>[m߆��{>��7Q�\'s�n<�Wo��Բm^��uF/=K��}̓�l^��A/pb�]6ٮ̾�W�e��&�^���\0��ӛ�6��>NQv���:����Ǵ��h����ߛ��wLvX����l����{K�f��waf�>���튟㘜\\���S�������? ��ov�_TVI�s�;�5R:H3{sul}՛�{�enJZ\Zܕ��{�l䰹Zx�\'��#A4k#��}׺=��u�~��{ߺ�^���Nk��TkA���e)x����%�b��W��>�*#�:`�E�H>��h�����i�v=�����o�Vk���aG�n�=K\Zf�;�>�ڔo�7v����6��d�+������4)WJ�LҚ?u�S�vl������芃��>��״�h2?�����Uoj���I�z�9�i�U����Tq\nra�^�V��D����(�B�|���7�6~�&��C[����F����FJ��_)GX$����uǌ�8���?o�Ѿ���Ӽ~o|��|x�N��|���ߍ���\0��6�UF���\0�������F�z�]��z��!\Z�5;������}����\0\r>:�N��={�;�m\rɒ��r��N؟}�F;rl~�ܻ֧f��c.�YSE����z\\M$�t����:f�^�{k�0��ڻ۾�7|�ٔxߐ��%����{}���3�!�~��p���/�w��v�]��5��\r���ۼ���M��hP��E��^����\0,��\0�L�;��Cm���g0��{r�NՏ5�����?1�Vt�m����؜���hly����1��$UR���M5V2,��J{�t]���B|����i��,Ş��u�ɚ���;?�{��{#amI۴�������y�s�����Y|7ݝe�1�Z�+�=���6Ow�j�Y�W�{�I����ɯ���꟠>L���������}���y��ĶO�(>[a����:^�ڸo�[S����c���0�q�K���dv�N�/U=g��\\:��i��������+���\0q���Ϙa��5�p��;�;������[ò��Ca�a��3�}mڝV�۳�*�o�ʴ����2���W��\0!O�X}����[�:C�76��ó:B:^����?w&���	��N���u$�[�^Z5���v�iA1��&�q��^��e������:��68�`�����Pv\'om����c쿋�}]ٛ��5�}�%뿇}��R��w7tWo}���꽍��{������v�=Ew��A��2?��gA|��3�{vw�s�2����������۸6�?�F?w|��*��һ��;n,wk�*\\P.Sl`)�<ջW?�s��\\���^�h$R��N���[�� \0O��~H���O�u�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^��3јo��ڝ��Ua1ݗ�����(���+��]��}�������Yi��\Z���G�Z�o�L;�ϸ��X�\"h�\"��?������w��\0:r�9�۬�u�\\��:��J��,���:I���S���~v�v\rNߪ����o_�r�]�W�F-�����Xc(���m�[�����|54t7$�W?l��g�\'5�z�����)����\"T~�.��d��?�޺a�}�=��e[����$��sΚ�x���*�J�@3|cc�?�{Si/I�u>�Sֹ\\\'^v�x��s՝��{��hgs��n�h�T��x1U9EY��i��A���6�m�j��l� �h8�Y�I9bOǮn{����>�/��&��r�H�\0jG\ZCuD�O�h�\n�鮑ZtO�*m�/L|�ꝍ�7u켟om�{[���KS/��>&bv���9�ozJ^��o^���o=��3��9M�L%s���C+����3���GJ|��=��[;��$p���2���ŽGJt�nV�#�p��)N~��S���6�\\|���u\r�lIU�С��d�g^w�Z���<V/����������T�orn.���N���۫~V���>�莾���\n�ȫ7�z�)I]�r��R��tR��U����x]���5}-gl��z��G�~?A�����g�Mun���A�=}��>?c2Tt[�}��l�o5.Cid(���a=׺7[��few�Y����?Ȭ�����\Z��h����V�\'c|Ш���l��\'r�]�(�����n���v�\Z�l�+(�dH���*8�Ou�z�hv^��ݟ+;o�����ߓ���ݘ��Й��o��/��˫������\'�)>-dpTVWː;����q�\\���D�7����]�V������W������\0q����[Cl�.s���Ǐ��_����ܹ>���ڌ/��}m��{w��U��kn]�S=FfJv+�{�s��C��T��kvV7�3}?O�G�[��m=�GQS��h�f7Ƚ붷%���\n]���OZ�޳�xc����������i\r\"��t��?�^����\0�[�+�^����ޱ�N��o������]����*�A�6o�otm��ֽ��_:����q����L�ľ�z�\\�G��@���C��]�S��bo��^���{ӯvvK��V�{t\\_��?St/V���M��+n�N����K�y.��5^~�C���D���{�\rܿ\r��+�[��6�����7_hmG��C�5L�Ʈ��~�쎊��u]��<�3dw.����c�ޙJ\r͎ܫ;�w��\nU��^����O\'���:B����\\�K��c�Vߧ���������@�~��;�}?pP���b`�\0ٝ�3�6�x]�=\'�0�9Z���zou��xTe�E�B�w*cr�=v��:-�?\\�\0���ڿ�>��xQu��1�����k�,)�:�8��\0��9���{���Q|���8.����a�כ��3xj��i~\'n?�ݯ���+7f�]Y�;�7nKy�6���[�r5�3y�S��t#/����w=~��Grb�^�q��q�ޠ��rK��7c�ڳw��.ç߻�q���B��o�ˑ�KUMCMbP�{�uf��׺ ��_�V��b�:gwn�6|;G�q]����	]��՛�\r���ͣ��l.u�<�C���z���7��i��q�1͜�o�{t;}��s	ԐYKt��1^�p�ji^�O�ﾛ���\0�7o�v�s%���\\�\"�a�����	%����UPd�e\n�٫I�[�\0	���.��v����:�\0wͷ�pu�o�6G�iaڔl6ˏ�b��%n��(����2�%e=d\Z�p#{[����\0�|{9J���Q��Ѧ�xeG\nc��u�}�9;h�k��/��ڹ��fۤ�I;�i���ٜ]��j�N�Rax��-��O��ꏓ[�wR��>���Q�+���h���:�m����v����}��{�n�:��x�K�i����(���R�V�*���hE���Ĭh�	��\0������&������*Mwu-Ӣ֊ev���hPW����i���f|����ǆ�n���~7�7�D��|��\0ڔM��y�:/�wo\\n\rϹ$۵���.��g!�ɗ��g�,�?��噶{3�no�{k~a)e�=����y�\'tu�]ᶻ#�����~hv�G����{u������̥&OM��RQ�3\rOND�����]M����}����񯧻�\r۝�}aA���G�~l�װ�s���)�����/��n=���g�Cp�.���2f��7�ľ��.:��Td:�����v���������Q���([fK�>F���o�8,�ۧ��Ve3\'{/�f�b2&�)���ͻ\rl�����B�{|	�]��3�{�qw>ΛkuOjm��<�@a��\0 �Oumhz���_�gɼ>�ڙ]�����:ޝ�k����KuRe2x��Sb� ���^���\0�_r�6NWj|��Z/����\"���w�Z��\0;�#������gvvwiu����\0����\r�����}����*�OC��v����������f��_w>����\'�N��ftb�b����x��i�ߔ��{�.��u��ٸ-����I�q�,�|V:�������{����]���Nt�ʟ�}��=E�zˡ����[�7��M����uvB�5^_M�~O|e�m�À�t%1���:j�j��B����׺\'����2}��;��{��������6;G�:�el��Jn��F��뿐{W����Ӛ�.פw���9��Xj��,�esQ�g������AGU�\0.��ف�}��#�6�\\o~��\'�;��:W�z\r�v��[����ώ�韚[�b�����{!U�*��{lc������\'!Y$i��^��\"�$o�U?,RV���nU�h:��F�ɂO�K@�>N�,��S�d������0�.���^��\\����Ro����[;�v����I�o�����vN��_�o�^��g������]�;\'l�Z���c����6�f\"�\rd9)�Q��3��0�1�~Na�޳)Qכ��[�hU������l���Oڻ��>��T�X�����)���%lx:]��䒥2Q��^�(���;��8��{��>9�V�A��������VC.��o���g�m�U���Kw�_�v����4�k�p8�qp�������=׺:{O�q��g�zhvv���?@w�o��\0\\w�J\r���,��{+~�F��⻗�;/z�=�ك��v5G�ݕ���o�*�L�yGL�{�t\\3_���v�����2��\0�>No���[ڛ+��~0g�=w��O��\0+��ʾ��z�N<�K�h�&�Y���rT&F��3\nz��^�y]�[�^{����8�7�7t|j�ϋ}��u�?�v�F�b��������K��?=�+�{\nG�����7�ݸ�Tҭ��o�Ѓ��U|{�-�;�w�쾥���)�7�������gb:�h��u#oN��n��m��;cA�p�U�Եx��-�R,t�u!�׺�iW�~2wf�߹�*_�\Z�D|u��oyM��Kqn�;�/�{%��{��7����ɚ��|jD��/6W-�j3/UU���	��{�GG��>E�7zu�o|���\0��������\r�~5���~ȭ����8|���۴�S��KU�����a��Դ�B�	�(�Z�1I�Ձ|D�ʹ��}�=��5��N��v��fk�p�3�{_�wovb\Z|�[?�����}��))&��z:Y#��7�����O~��{ߺ�^��׽��u�~��4f�8��Bq٪(��2���I���\n�y!������f�Դn�n����u����L��棹~\\|[��z\';J��z�Ի���D��{pM�[76ޟ|U�\\.�����R%e>H���AF�����S?�/������/�����ݑ���U�3?����OU�~?�3���3��<���v_)��3TCb:h�Lqx�׺�1�\0/O���G���>�۹���2��t�a�Y��[�=��h�uR�|L�IR��RZ�F�{�u`��66U�#��PN�V\Z��ZYZ&gE�c�X��^6��ԏǺ3��3�~g�⵹�KCnUI�����k�I��\0��;�\0�}�Ƌ����t��_���\r�n�������`?���\0�~��\0~��{�/��\no���\07^���o��0����O�x��W������7����z�������c���߼h�߫�G^���B����׿�{[�zL�~1��S��4_�����}���M������޽��\0=&�\0?�����\Z/����׾���P��\0xo�u��^��\0���\0��w�\0T�����h��A}�\0(S�7�����k�I��\0��;�\0�}�Ƌ����u�\0�)����{�׵������\0�>��E��_�:��_���\r�n�������`?���\0�~��\0~��{�/��\no���\07^���o��0����O�x��W������7����z�������c���߼h�߫�G^���B����׿�{[�zL�~1��S��4_�����}���M������޽��\0=&�\0?�����\Z/����׾���P��\0xo�u��^��\0���\0��w�\0T�����h��A}�\0(S�7�����k�I��\0��;�\0�}�Ƌ����u�\0�)����{�׵������\0�>��E��_�:��_���\r�n�������`?���\0�~��\0~��{�/��\no���\07^���o��0����O�x��W������7����z�������c���߼h�߫�G^���B����׿�{[�zL�~1��S��4_�����}���M������޽��\0=&�\0?�����\Z/����׾���P��\0xo�u��^��\0���\0��w�\0T�����h��A}�\0(S�7�����k�I��\0��;�\0�}�Ƌ����u�\0�)����{�׵������\0�>��E��_�:��_���\r�n�������`?���\0�~��\0~��{�/��\no���\07^���o��0����O�x��W������7����z�������c���߼h�߫�G^���B����׿�{[�zL�~1��S��4_�����}���M������޽��\0=&�\0?�����\Z/����׾���P��\0xo�u��^��\0���\0��w�\0T�����h��A}�\0(S�7�����k�I��\0��;�\0�}�Ƌ����u�\0�)����{�׵������\0�>��E��_�:��_���\r�n�������`?���\0�~��\0~��{�/��\no���\07^���o��0����O�x��W������7����z�������c���߼h�߫�G^���B����׿�{[�zL�~1��S��4_�����}���M������޽��\0=&�\0?�����\Z/����׾���P��\0xo�u��^��\0���\0��w�\0T�����h��A}�\0(S�7�����k�I��\0��;�\0�}�Ƌ����u�\0�)����{�׵������\0�>��E��_�:��_���\r�n�������`?���\0�~��\0~��{�/��\no���\07^���o��0����O�x��W������7����z�������c���߼h�߫�G^���B����׿�{[�zL�~1��S��4_�����}���M������޽��\0=&�\0?�����\Z/����׾���P��\0xo�u��^��\0���\0��w�\0T�����h��A}�\0(S�7�����k�I��\0��;�\0�}�Ƌ����u�\0�)����{�׵������\0�>��E��_�:��_���\r�n�������`?���\0�~��\0~��{�/��\no���\07^���o��0����O�x��W������7����z�������c���߼h�߫�G^���B����׿�{[�zL�~1��S��4_�����}���M������޽��\0=&�\0?�����\Z/����׾���P��\0xo�u��^��\0���\0��w�\0T�����h��A}�\0(S�7�����k�I��\0��;�\0�}�Ƌ����u�\0�)����{�׵������\0�>��E��_�:��_���\r�n�������`?���\0�~��\0~��{�/��\no���\07^���o��0����O�x��W������7����z�������c���߼h�߫�G^���B����׿�{[�zL�~1��S��4_�����}���M������޽��\0=&�\0?�����\Z/����׾���P��\0xo�u��^��\0���\0��w�\0T�����h��A}�\0(S�7�����k�I��\0��;�\0�}�Ƌ����u�\0�)����{�׵������\0�>��E��_�:��_���\r�n����N���{�{�^���׺��u���{����;o{b$�n�M6g$�T\Zj�,f9��#����Hj�f셣tf��	(���E���^���^�֝u���=��{���XqB`���&���Z�i�֣9���/K��x䖖�I�L���Gߺ�Eø>�S��hw�y�s�~�ݸ�6��n^�띫��t;v��\'����䳘�ڸ1T�<�]B@�#Y�ep5;Q�l���q�m���h��($��4�&�3ԅ�~�{��[t�?$���mT���-��ˋx�VTF��)L�#E,EHU�?��˳��������\0��_��S�\0�j��pG�\0@�(�\0�G��\0�����iy�\0[���6G���\0����\0�;�?������S�\0�j��pG�\0@���$~�_�[y��旟����d.����\0��#���\0�>��N�?�f���^�\0�G��\0�����iy�\0[���6G���\0����\0�;�?������S�\0�j��pG�\0@���$~�_�[y��旟����d.����\0��#���\0�>��N�?�f���^�\0�G��\0�����iy�\0[���6G���\0����\0�;�?������S�\0�j��pG�\0@���$~�_�[y��旟����d.����\0��#���\0�>��N�?�f���^�\0�G��\0�����iy�\0[���6G���\0����\0�;�?������S�\0�j��pG�\0@���$~�_�[y��旟����d.����\0��#���\0�>��N�?�f���^�\0�G��\0�����iy�\0[��D|9�V���~C�?�T��z�z���>��/Q&d����YIGj��|�|t>\nx��Y%�DDFf\n}�N�?�f���^�\0�G��\0�����iy�\0[����ʟ偉�[�U�!���s�=��	�\'V�V��\"ܙ>��\r�휧S�M��{�\0�~;v&��Vb�|C��s�h�i��1Z�����S�\0�j��pG�\0@���$~�_�[y��旟���7���s��\'����A���~ί���~��n���to}���r�[oo��\0ޛN��f��z�m���q���;9pf�Y2��W��ܧ�\0LՏ��������H����W��/?�wF�rn�On՗���}O�����}���6��z��Y��ջ�6�ڣ��S�����}TvV��>2y=�\r[K���*z�����S�\0�j��pG�\0@���$~�_�[y��旟���3�{��n^���s|L���X�>E|�魒������]�a�ٺ�)�}��h*z?�2�U���d�\\�٬���2�Q,F_S�O������׿�����m���^���Oi�\0&n����_n_��\0:��:��~n�n�댏JQ�p=���c�7�2�qݾ�\'��������2n(�{W��qM,�G_OM-I��;��\0隱�\0��\0�={�	���j�\0����n�T����I_\'v�\0ƌ[|U�u����OHt�k��3��5�����{�\\](��:������u�p��P�*Ϳ�a����/��ܧ�\0LՏ��������H����W��/?�wN���\nz���^t�G�z��OoN�����뾫����gm�sx9:��k6�ݱ�{B_|�\nl��d�d�����ZOS�O������׿�����m���^��ns��\0�<��u�o�kt��\':c�.ʏ�zc|{��>��\r���m��I�=s��=E�����dwJ���m�=VSIY��������X�\0��\0���\0���\0o5�����t���������~mO�[��c|I�����z���_���\\��\0�ꝧ��_(������7Ƽ��S�Wy�\Z�Z��F:\Z�tI��w)�\0�5c�\08#�\0�z��?x/�-���\0sK����}�����2[����O�s��e�_�˽�{`o���޲�q�+���^�ڟ �����gz�#.EqS�2X�\rf���T�����������X�\0��\0���\0���\0o5�����t4Vo��c�f���\Z>\Z�[t�O�^�[����\\���a�ԽSם����ƭ����n��\Z�6�k�\'1��zJ�ɋ�g����;��\0隱�\0��\0�={�	���j�\0����n�9�� �gCd{��OĿ�\"��r���S�泥$��o�;��\0R|d�����є�q=�{Q_)>���r�c\\�ꩵ���w)�\0�5c�\08#�\0�z��?x/�-���\0sK���Ѡ�E���������aO��jm�Q�\"�\0eΊZY����[���(:�Lgpg�ggn�f���v��̆3rdiqu0�_Q;������X�\0��\0���\0���\0o5�����t��[��ٵ6���{��>6c����zd*1�����;��,6�wWv��F�oϏ�+�򛊂�p���7n�0SVµ�0���r��3V?�?���#���\0���_�4��\0��3�\00,W���H�px����7o�\rŹ�q��Ⱥ{�GD�?��5���w7\\����;���-��jF���4qK4�������X�\0��\0���\0���\0o5�����t��;��3��t�p�\0/>����_	��\0��h��o��ѣ�]e�7�V�+��/b�6�o`K���m���i2�L�L�E����������;��\0隱�\0��\0�={�	���j�\0����n�O�g?�>X}��{9�?6��ݵ�ւ\nM��C)����h�	{/)�}q��j�鍵����.��n�V��-C%uD�S4���r��3V?�?���#���\0���_�4��\0��#갟˖��?�����:�o奻�Bm�}��릃��蟊}g�v,�;�>��>��xG������Q\nO�T���?S�O������׿�����m���^��/S|��T��W��0�{�P|p��_̓5�{�1��KaQC�;ӕy����|�L����^�{��6)i6������U�\"����r��3V?�?���#���\0���_�4��\0��X]o���{˲p�K�5��FC�����>,V�w.藸�~���ΩؘΪ��=ۄ��͊���y�����5],�cf�x���w)�\0�5c�\08#�\0�z��?x/�-���\0sK����-����q��F�u.����\'�;��M|�ٿ!?�e>K����׷�*]��vV;�*+��\r��_e7ᯠ����-\rl4R�S�O������׿�����m���^���.��J�z���oE�������sՐo^���k�=�U��q8�6�#�� Y��Q�5D+4�e�7��ܧ�\0LՏ��������H����W��/?�wD����gP�)}�����o�]o=�ӽc��W�?]��c�{˺;P����m��R|[��\r9nZ�.ٚD��J�zd�����w)�\0�5c�\08#�\0�z��?x/�-���\0sK�����s��;;gqn���鯌�;�eo��ˎ��>��AGؿs�[{�v;/����.��}6>�!U��TU�O��*3��6\Z	k����S�\0�j��pG�\0@���$~�_�[y��旟���ſ�\0�;{[xWl\\�S�Q���X`*���}��n�L�v�.�����E�v�Mf�}MOou���M��U����զ\"��2����r��3V?�?���#���\0���_�4��\0��A�uK��z\'�un_�!п����\r�M]Ը퍶��?�hw�Wh���&���l�Q���˭���yN�\nJͿ%l5X�h���]o��ܧ�\0LՏ��������H����W��/?�wEꃰ�l֫�����A|8���#�>$Sǆ��jt����\0���_�o�zӶz��^��n��p՘��&��[G�R8ң7G�y2�������X�\0��\0���\0���\0o5�����tfq��Û�d34=K�F<mwTR��d� nL\Z����6�Nn޺�5Ә��C�;/t�q�mӷ)�+�=4u�e)����S�\0�j��pG�\0@���$~�_�[y��旟����u�?�;��S���]�\n���[vgln���S�hv���\\���(��W�vf?\r���#,tm��c�{z\Z�Y��i᫦�_S�O������׿�����m���^��>��\0��ű�7�����Z��`�>oZ>ɥ�,�[���[\'/��]%l�7�Yl���ߨ�����\n/�ll�F��j=�N�?�f���^�\0�G��\0�����iy�\0[��]���\"���r���������S��]m>�����o��ݏ]��?���l����I��ވh��uPQ��MKP�{�����X�\0��\0���\0���\0o5�����t9����\0���]}�?�\'��$7�V����Y|OL�N����ۣg��ٿ��hn}���q�[�z�Pa�\"���պ��z\Zuj���;��\0隱�\0��\0�={�	���j�\0����n�7���J�?���]���wNv����؟#v��n���6/v%ZCQ��Xm��.����]��:<�_��\rE���`���\n$��;��\0隱�\0��\0�={�	���j�\0����n�=���0�(��]�\0��~�N���6f������M�����\n?�O��̎9�~XpXlW�l<5u�O����_���r��3V?�?���#���\0���_�4��\0��Y�M|{�L��\0��Ǵ:��OČ��뜆Kص����2�y_�ۘ��YO���clm���SssTY��\'CJ���z�K�����w)�\0�5c�\08#�\0�z��?x/�-���\0sK������&}��/�w�ό�>|�������f����c�f�6��������l,�n��e8\rLغ��\nȪҞ�\'�I��w)�\0�5c�\08#�\0�z��?x/�-���\0sK����3��o�\"���Xu�c�G�=�������9յ_k2����$:Ob��Y��O��N��|������a\'���3uk5%2}�=U��r��3V?�?���#���\0���_�4��\0��)����<����E��*p}UY�(��?����ܧ�wFScu�oOm�ԃs���v^���a6�~ģ�t9��E>Z��%�=�N�?�f���^�\0�G��\0�����iy�\0[�sޕ🞼��Q��wU�0�m����������p��QQ�-���ۛ��<�^���\0�����MlX|�sx�+��q�u֟�S�O������׿�����m���^��:��B����� 6_��ذm�����7`��i\'|nꏎ5;�<�W^m����Vn����25�^^��d��i��\"ZH��N�?�f���^�\0�G��\0�����iy�\0[�/�{S�Rw�V����\0���o�zWn펿��s�z�)�)v6�n���[/juiz˯��k|�L���+6\nar5o���I���JS�O������׿�����m���^���߮�\0��n�����z��\rF_�q��%�0u*1���-��):�}�n�O�h�=s���Z�;������˔��f�=�N�?�f���^�\0�G��\0�����iy�\0[�o��/�O~�빻G	��\0r{Tn����Q�I�M��nsv������{��_�3�v���c\'��gv�#%����m^R��l}4�)��w)�\0�5c�\08#�\0�z��?x/�-���\0sK����|�k����?i�uOú���Iљ-��۟�ݻ!�&���7&k���V�z�jmN��ҵ\'-��Qcf�<tfu��(_���S�\0�j��pG�\0@���$~�_�[y��旟�����:s�(������zO�o�-�z֯5K� ��6Z�kvd����mպ:�	�{Gom������r�f�/���RMC<��E$K��w)�\0�5c�\08#�\0�z��?x/�-���\0sK���ѥ�\0���]����\0?�Gu��\0X}������X�\0��\0���\0���\0o5�����u��l����\0x?�c�\0Dw^��߿�ܧ�\0LՏ��������H����W��/?�w^�\0���]����\0?�Gu��\0X}������X�\0��\0���\0���\0o5�����u��l����\0x?�c�\0Dw^��߿�ܧ�\0LՏ��������H����W��/?�w^�\0���]����\0?�Gu��\0X}������X�\0��\0���\0���\0o5�����u��l����\0x?�c�\0Dw^��߿�ܧ�\0LՏ��������H����W��/?�w^�\0���]����\0?�Gu��\0X}������X�\0��\0���\0���\0o5�����u��l����\0x?�c�\0Dw^��߿�ܧ�\0LՏ��������H����W��/?�w^�\0���]����\0?�Gu��\0X}������X�\0��\0���\0���\0o5�����u��l����\0x?�c�\0Dw^��߿�ܧ�\0LՏ��������H����W��/?�wG�ؓ�W�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺$���Ͽ��_�?ce���7�buv_����:�|�e���؍�����}�_��cɁ�����կM@��)%3]=׺���P;��;.���t�n��?=��\007�������mv�Ɲ�׵����}�\0�}����t�\0#\\��8k��՛n�9\n���Pѷ,�@�,�*D8�\0�2N8���o��.���,�����!�\ZGm �҈\Z($�`x��o�.���bc����t�^v����\0;�Kw�]V��m������nK�&�ۛ`�����iu�VjL~���W���$�d0u�N��~���\0��o�\09����<��\0LV��\0dw���&���zgzu�K0���ۻ�_�>i|r���i�i��9ԟ�s�^����9֡^��9=��y(�1�6�d��]�\rUU�{����\0G+�ȟ����{�\0�+w�\0�;����i��\0�7����=�ԙ_��հ�ۙ�\0�{��\0��1�kw��N����Q�xn�����8ob�����c1�:����rՔ��c��J���]���V�\0�?�׿�<��\0LV��\0dw������O���o��ۇ���ϙ?<��Tcv�X����ﯕT�߂��_�㼲�y��ꝯ޹0���T���iT��4�q������\0G+�ȟ����{�\0�+w�\0�;����w�C�J�2����\0{�����]��p������=����7�+�>-�?��]��6��d�\'��ۃf�ɪ�(2{rn��\0�I�]�qQED=��k�\0�����O����=�\0���\0���k����@�r�\r���~I�/��A.����ݻ�:Φ��+7���=�\"�����@���ϫ:����Q���q�di�����j�jU���߽v��9[�\0�D�\0?^�����1[����־�n��_����Ɏ���������?>k��ٺN���.��׽�����Y�퍿�0�C\"��1��i)s�CIQ\rU4Y�޻_���\0�\"��Py��������?�_B�������e>5l�\'�6~��w���3��=���w�r����ۗ�=�j�6m�[�\'��sYڬ=Fǚ�h_/��Z��������\0G+�ȟ����{�\0�+w�\0�;����C�_��ӫ����]��ƾ7l���|��?&���������2����6[�wcm.�荵�\rI�[�q����Ź���:���?�k�rh�f����\0����r\'������\0���\0�������_��O|u�a����{�vu�c�m^c?.�۔���i~	|������{qn�{�3��Nݡɶ#q��ӊ�24���O~���\0��o�\09��{�����n�\0�Gq�\0Z�s�c�w�S\'�+����_��k������׿:�\"��}��(w�m�o�\\�������\0��ܿe�5~���\0����r\'������\0���\0�������D|\'��}Ŝ�\'���[wC�_�f�F���&���N��w�v���]��|�n��w�2��qS�m���ǡ�\0/�36⊓9K�޻_���\0�\"��Py��������?�_\\7G���\0P����h�E���.�=��ڛo;��LOs��z̭���Q򞛽�,6Ϩ��.��o��I=C�F�#��~���\0��o�\09��{�����n�\0�Gq�\0Z����;�~Ou�Xl������UG_����|Go���3ҝ�wNӏg�\'}�V��;Knv\\R�28l�VSK��j��SGQYAU�޻_���\0�\"��Py��������?�_D#!���\r����n�\01�����O����E$���S��2�s���~����O�6^Wc�a�\'u�k-M.[\r���8ĂI*=��k�\0�����O����=�\0���\0���k��?����6n���m��>���\r��S|Tw�\0~d6�z��q�zkm�}���d?�\rGo���~��QRE��ym������2��㢢��]���V�\0�?�׿�<��\0LV��\0dw���\Z۟~,�?�?̧��LÄ�`u��&s�n\r����,Wm|Bꯉ��u]\rWm5OjT�:N�LܕRW`��5a�e��j���]���V�\0�?�׿�<��\0LV��\0dw������S��\0w�����o�\":S�kv���d�\0\n�mζ���}�s�eN�X�)�~���߹<�4��iJԕ.~�}��k�\0�����O����=�\0���\0���k�7��+��Uu7f���a]#ٙ����~��\\�z�C�[Oo���M�.��μ잲�����r��R$�Y��+˫oSa%�$����\0����r\'������\0���\0�����#n����u�/{���:뜽ov�\0.���\r���������m����N�%ޔ�<�ݡ��c۸��QZ��F�˙���O~���\0��o�\09��{�����n�\0�Gq�\0Z����{�b|���Z�\0�9?���Y�{��ꊍ���FI6~��u�Қ\r�C�C\\��f���}�2��)ڢ�F�����\0����r\'������\0���\0��������]����>���G`v��~��=�W�d��7e�L�Av�Im(���`cg˲j�^�2�?c�j���eJs\'���޻_���\0�\"��Py��������?�_Dj/��\0��l���8\'H7�G�g�*�s�����?�ú��.��\0G�o��~������-�_����~��O�޻_���\0�\"��Py��������?�_A�M./��G��c���zCpw>@)���/�?a���\Z��2t��[�?ӶK��\0ӗ�.�~��\'�g�����[�<�>���\0����r\'������\0���\0�����\'v�����Xo�峊�a������77sc{֪�bg)�u�ߟ��:(��T��l�ʊ��/0ܔ��P�<q����]���V�\0�?�׿�<��\0LV��\0dw����{|\0�^��\r�_$�\0�Q�G���B���[�:�f����u�-�+՝g�T]Ϻr;opo�۟�z�˕�y���TA��D��{����\0G+�ȟ����{�\0�+w�\0�;����k�?ʿ�����.����#��������ڼ�~]��)7f���C�������?(��g9ڝ�C�lF��/)��di��@����\0����r\'������\0���\0����� v���y�cya���u]V�ߙ��ߔ���G���\no�ڽo�0ņ�u������|����z�e]>�yĒ�c������]���V�\0�?�׿�<��\0LV��\0dw���{�#���?\"����tOew���}�%w~��îv6��?�=����魩��;�=U�����,�[q�e���A4P��P�IK���]���V�\0�?�׿�<��\0LV��\0dw���s?��/����?�7H�q|��?\"�>����7aE��)�Y^��}�������&��\'�3��+3˗�hE-^2�#T����\0����r\'������\0���\0�����e�4�;�o���}�׿5�:�n�:{�~4�Y��+��Gu\'o�i�Ǵw?a�f����x,&࣫���z�mI�X�*]�ꖾ�ޕ���k�\0�����O����=�\0���\0���k������]	Y�x_�=ҵ�e�^?̛�;[��\\uf3���FM��6l��m��M�H0����⨳�ULaa+@����\0����r\'������\0���\0�����������\0�;�{�7����m�����m��?\\�7=�W���ui�����34���J��\'�U#�4��!l���]���V�\0�?�׿�<��\0LV��\0dw�����C�����������ӿ!7Wɽҹ���ø7Fv�ya��\"��v�-I���ɍ��n��A����sTAYk4Ԕ��I�z��r��\0���~��A��b��#��\0�}(k~7-���������?\Z�0��.����l��`�;���{cf{#���5.kzdq)��E���S�)(`�����8|^���\0����r\'������\0���\0�����S6��O��c[@��?����M��>K\Z����F��[��9��l�\rݵBO���k�\"M���~�)��Z�~���\0��o�\09��{�����n�\0�Gq�\0Z�&�S��v�b���vN���vXv�M�Qn_�=��;\'�r]�\\{W�������ޝ���͓��Y]�Y��9���Sc�kiMT����\0����r\'������\0���\0�����4�/���8���_�{�zWuVuF��~��ۓi�F��]���˰�F�\'[��]ݽ���ԧ�^��TG��I�⭡�0���CMU�z��r��\0���~��A��b��#��\0�}���>=�ϗ}f�;��;�>K���~��;s}l����7���>���{#��I7&[	�w5mn��Ï�Ub��4.�3�Փ{����\0G+�ȟ����{�\0�+w�\0�;����qP�\0+���=ٟ����f}%������K�����?Au<T��=۴;�\0d�o�m��{\\oʮ��{�d�R�su���\\�T��l\\ՕUs{����\0G+�ȟ����{�\0�+w�\0�;���ѝ��S��տ�{�w�\'�n���?�/���^!սA]���k��b�-���\r��9	���8M�&obd�t�QUUgj*��j�~���\0��o�\09��{�����n�\0�Gq�\0Z�!4�\0�c�].3���iT-�[c�6�u�yK���0�y��qu�����?�}���m����Q&���Չ���b���U^���\0����r\'������\0���\0�����j���G|q�����?��\026.C�o��6�\'om�_ff��k|��w�V^}=�]��⻃)���y)�j�D�l�����7�w,R��)\n���i�@N3�v��˲��[�/_ZZ���K�%�KHPΊ�ҵ�\'��}�.y~\'�����h7�SvGY�Ω�t�۬����;���s�7,�w�=Ջ���K�0�cgKQ���r4�\n�$��OD}Y��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{�Gc�\0�o�fg�.�\0q�\0�������\0��?������\0	�3���\0p�|�o���\0�_�G�h����|��鱫Ŧ�\"�Վ4�ϣ}����[_�������>����ף��O��j��q^����w�\0\0��\0`?���ˇ�R�C�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:���w�\0\0��\0`?��c�\\?�^�\0���\0�o��:������%w��\0e��������\"�\0F��O����~�￹��S��O���?���ëףڻ/��+~��oN|\Z��V�sJ��Zt�o�����?�?vx�����^������<M\Z�N�:��ы�g��{�^���׺��u���{�{�^���׺��u���{�{�^���׺��u���{���'),(48,'re','$2y$10$qR3OUimO4eGMfKo3Yq5nBOAGG9G3f5/YFVq/8UIKbfgB/BPD3WCle','','','retailer','2017-04-14 22:00:09','2017-04-14 22:00:09','parham73_10@yahoo.com',NULL,NULL,NULL,NULL,NULL,0,47,'mf',NULL),(49,'inst','$2y$10$kkcb1D1bNvwIVcwiTJ11OuQ3JsiXNH1/xe5uWCkBdZo9VF/GHlpJy','','','installer','2017-04-14 22:01:02','2017-04-14 22:01:02','parham@apexwebdesign.com.au',NULL,NULL,NULL,NULL,NULL,0,47,'mf',NULL),(50,'whsl','$2y$10$soL1GeMoeIrxCg7jmqgaqOM20z6834vdNntLQ.DZu1Zvgb8ygcmk6','','','wholesaler','2017-04-29 18:32:04','2017-10-29 11:24:40','whsl@a.com',NULL,NULL,NULL,NULL,NULL,0,47,'mf',NULL),(51,'pmmf','$2y$10$OyiUhM9ANglLM8KlfDVbNOLhvMZqJKMykV1jZJLD31k/awsq.nwVe','Aaron','Conis','manufacturer','2017-10-31 10:19:50','2017-10-31 10:19:50','aaron@apexwebdesign.com.au',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL),(52,'pmwhls','$2y$10$NKCzSxGA4gkTEgylIUPL1O3UY.3DXqhXifwn3fsTHkw8PF9oHhEmu','Aaron','Conis','wholesaler','2017-10-31 10:26:03','2017-10-31 10:26:03','aaron@apexwebdesign.com.au',NULL,NULL,NULL,NULL,NULL,0,51,'pmmf',NULL);

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
