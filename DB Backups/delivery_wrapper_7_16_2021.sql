/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.19-MariaDB : Database - delivery_wrapper
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`delivery_wrapper` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `delivery_wrapper`;

/*Table structure for table `delivery` */

DROP TABLE IF EXISTS `delivery`;

CREATE TABLE `delivery` (
  `id` varchar(50) NOT NULL,
  `charges` decimal(10,0) DEFAULT NULL,
  `status` enum('DELIVERED','QUOTED','BEING_DELIVERED_TO_CUSTOMER') DEFAULT 'BEING_DELIVERED_TO_CUSTOMER',
  `dpRefId` varchar(50) DEFAULT NULL COMMENT 'Delivery Provider Reference ID',
  `vehicleType` enum('VAN','BIKE') DEFAULT 'BIKE',
  `weight` decimal(10,0) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `sfRefId` varchar(50) DEFAULT NULL COMMENT 'Symplified Reference Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `delivery` */

insert  into `delivery`(`id`,`charges`,`status`,`dpRefId`,`vehicleType`,`weight`,`created`,`updated`,`sfRefId`) values 
('12e61f06-fd43-44a3-9f8b-0eaa15beb42c',208,'BEING_DELIVERED_TO_CUSTOMER','12316892173','BIKE',0,'2021-07-12 10:38:12','2021-07-13 10:21:21','1234'),
('6fc772a5-6cf8-4ba5-b0a5-a6d42d325f4b',208,'QUOTED','string','BIKE',0,'2021-07-16 08:36:02','2021-07-16 08:36:02','string'),
('dbb7d177-a08d-448a-81b0-83ba3c3d38c1',208,'QUOTED','string','BIKE',0,'2021-07-16 08:38:16','2021-07-16 08:38:16','string');

/*Table structure for table `dropoff_details` */

DROP TABLE IF EXISTS `dropoff_details`;

CREATE TABLE `dropoff_details` (
  `deliveryId` varchar(50) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `contactName` varchar(50) DEFAULT NULL,
  `contactPhone` varchar(50) DEFAULT NULL,
  `contactEmail` varchar(50) DEFAULT NULL,
  `locationId` varchar(50) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`deliveryId`),
  CONSTRAINT `delivery_to_dropoff_details` FOREIGN KEY (`deliveryId`) REFERENCES `delivery` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `dropoff_details` */

insert  into `dropoff_details`(`deliveryId`,`address`,`city`,`state`,`postcode`,`country`,`contactName`,`contactPhone`,`contactEmail`,`locationId`,`latitude`,`longitude`,`remarks`) values 
('12e61f06-fd43-44a3-9f8b-0eaa15beb42c','string','string','string','string','string','string','string','string','0',0,0,NULL),
('dbb7d177-a08d-448a-81b0-83ba3c3d38c1','string','string','string','string','string','string','string','string','0',0,0,NULL);

/*Table structure for table `pickup_details` */

DROP TABLE IF EXISTS `pickup_details`;

CREATE TABLE `pickup_details` (
  `deliveryId` varchar(50) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `locationId` varchar(50) DEFAULT NULL,
  `contactName` varchar(50) DEFAULT NULL,
  `contactPhone` varchar(50) DEFAULT NULL,
  `contactEmail` varchar(50) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`deliveryId`),
  CONSTRAINT `delivery_to_pickup_details` FOREIGN KEY (`deliveryId`) REFERENCES `delivery` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `pickup_details` */

insert  into `pickup_details`(`deliveryId`,`address`,`postcode`,`state`,`city`,`country`,`locationId`,`contactName`,`contactPhone`,`contactEmail`,`latitude`,`longitude`) values 
('12e61f06-fd43-44a3-9f8b-0eaa15beb42c','string','string','string','string','string','0','string','string','string',0,0),
('dbb7d177-a08d-448a-81b0-83ba3c3d38c1','string','string','string','string','string','0','string','string','string',0,0);

/*Table structure for table `tracking_info` */

DROP TABLE IF EXISTS `tracking_info`;

CREATE TABLE `tracking_info` (
  `deliveryId` varchar(50) NOT NULL,
  `trackingNo` varchar(50) DEFAULT NULL,
  `merchantTrackingUrl` varchar(100) DEFAULT NULL,
  `customerTrackingUrl` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`deliveryId`),
  CONSTRAINT `delivery_to_tracking_info` FOREIGN KEY (`deliveryId`) REFERENCES `delivery` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tracking_info` */

insert  into `tracking_info`(`deliveryId`,`trackingNo`,`merchantTrackingUrl`,`customerTrackingUrl`) values 
('12e61f06-fd43-44a3-9f8b-0eaa15beb42c','8934262374','string','string'),
('dbb7d177-a08d-448a-81b0-83ba3c3d38c1','string','string','string');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
