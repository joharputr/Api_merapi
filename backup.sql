/*
SQLyog Ultimate v12.4.1 (64 bit)
MySQL - 10.1.28-MariaDB : Database - apilive
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`apilive` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `apilive`;

/*Table structure for table `data` */

DROP TABLE IF EXISTS `data`;

CREATE TABLE `data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(50) NOT NULL,
  `latitude` varchar(500) NOT NULL,
  `longitude` varchar(500) NOT NULL,
  `expires` varchar(500) NOT NULL,
  `message` varchar(500) NOT NULL,
  `type` enum('circle','polygone','polyline','marker') DEFAULT 'marker',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `data` */

insert  into `data`(`id`,`number`,`latitude`,`longitude`,`expires`,`message`,`type`) values (4,'641','-7.695283181796236','110.41864838451147','1569392476128','yoi','marker');
insert  into `data`(`id`,`number`,`latitude`,`longitude`,`expires`,`message`,`type`) values (5,'642','-7.694112972062881','110.40920902043581','1569392485274','yoi','marker');
insert  into `data`(`id`,`number`,`latitude`,`longitude`,`expires`,`message`,`type`) values (6,'643','-7.66561726994719','110.41315723210573','1569392523992','yoi','marker');
insert  into `data`(`id`,`number`,`latitude`,`longitude`,`expires`,`message`,`type`) values (7,'644','-7.659917966845059','110.40989566594362','1569392636555','yoi','marker');
insert  into `data`(`id`,`number`,`latitude`,`longitude`,`expires`,`message`,`type`) values (8,'645','-7.694280429871781','110.42243164032698','1569393741843','yoi','marker');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
