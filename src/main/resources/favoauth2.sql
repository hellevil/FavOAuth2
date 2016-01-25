/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.5.20-log : Database - favoauth2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`favoauth2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `favoauth2`;

/*Table structure for table `fav_client` */

DROP TABLE IF EXISTS `fav_client`;

CREATE TABLE `fav_client` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `clientId` varchar(100) DEFAULT NULL,
  `clientName` varchar(100) DEFAULT NULL,
  `clientSecret` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `fav_client` */

/*Table structure for table `fav_user` */

DROP TABLE IF EXISTS `fav_user`;

CREATE TABLE `fav_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(50) DEFAULT NULL COMMENT '盐值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `fav_user` */

/*Table structure for table `fav_web_app` */

DROP TABLE IF EXISTS `fav_web_app`;

CREATE TABLE `fav_web_app` (
  `webId` bigint(20) NOT NULL AUTO_INCREMENT,
  `webKey` varchar(100) DEFAULT NULL,
  `webName` varchar(100) DEFAULT NULL,
  `webProfile` varchar(100) DEFAULT NULL,
  `webCategory` varchar(100) DEFAULT NULL,
  `webUrl` varchar(100) DEFAULT NULL,
  `webState` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`webId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `fav_web_app` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
