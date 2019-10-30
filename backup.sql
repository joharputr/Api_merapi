/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.8-MariaDB : Database - api_merapi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`api_merapi` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `api_merapi`;

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
  `radius` varchar(1000) NOT NULL,
  `distance` varchar(1000) NOT NULL,
  `minimal_distance_name` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

/*Data for the table `data` */

insert  into `data`(`id`,`number`,`latitude`,`longitude`,`expires`,`message`,`type`,`radius`,`distance`,`minimal_distance_name`) values 
(80,'792','-7.5428228958469425','110.44521600008011','1569517885156','GGWP','circle','800.0','16662.335538998184',''),
(81,'793','-7.655215452722372','110.41140742599966','1569551050288','GGWP','circle','1000.0','3883.0773158815864',''),
(82,'794','-7.68664940342653','110.41144262999296','1569551068338','GGWP','circle','600.0','613.0355463156657',''),
(83,'795','-7.679665832443896','110.38757633417845','1569826172415','GGWP','circle','600.0','3328.0509819411277',''),
(84,'796','-7.304871744555436','110.40091663599013','1569826291547','Jauhbbgt','circle','600.0','42838.95873243746','');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `hp` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_login` enum('1','0') DEFAULT '0',
  `tipe` enum('admin','user') DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

insert  into `user`(`id`,`nama`,`hp`,`password`,`is_login`,`tipe`) values 
(1,'admin','0','0','0','user'),
(2,'operator','1','1','0','user');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
