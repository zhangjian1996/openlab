/*
SQLyog Enterprise - MySQL GUI v8.14 
MySQL - 5.6.26 : Database - openlab
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`openlab` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `openlab`;

/*Table structure for table `act` */

DROP TABLE IF EXISTS `act`;

CREATE TABLE `act` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(10) NOT NULL COMMENT '学生学号',
  `startTime` datetime NOT NULL COMMENT '某项活动开始的时间',
  `endTime` datetime NOT NULL COMMENT '某项活动结束的时间',
  `actDetail` varchar(1000) DEFAULT NULL COMMENT '活动的具体内容',
  `result` varchar(1000) DEFAULT NULL COMMENT '活动的成果',
  `resp` varchar(1000) DEFAULT NULL COMMENT '教师的评价',
  PRIMARY KEY (`id`),
  KEY `fk_user_idx` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动表';

/*Data for the table `act` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `studId` varchar(11) NOT NULL COMMENT '学生学号',
  `studName` varchar(30) NOT NULL COMMENT '学生姓名',
  `college` varchar(30) NOT NULL COMMENT '所在学院',
  `major` varchar(30) NOT NULL COMMENT '所学专业',
  `note` varchar(1000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
