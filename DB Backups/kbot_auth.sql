/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.19-MariaDB : Database - kbot_auth
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kbot_auth` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `kbot_auth`;

/*Table structure for table `authorities` */

DROP TABLE IF EXISTS `authorities`;

CREATE TABLE `authorities` (
  `id` varchar(100) NOT NULL COMMENT 'id is the name of endpoint sepcified by deveoper in code example ''post-users'' or ''update-user-by-id''',
  `serviceId` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Authority is basicallly an endpoint of api.';

/*Data for the table `authorities` */

insert  into `authorities`(`id`,`serviceId`,`name`,`description`) values 
('auth-service_authorities-delete-by-id','auth-service','deleteAuthorityById','{DELETE /authorities/{id}}'),
('auth-service_authorities-get-by-id','auth-service','getAuthorityById','{GET /authorities/{id}}'),
('auth-service_authorities-get-by-service-id','auth-service','getAuthorities','{GET /authorities/service/{serviceId}}'),
('auth-service_authorities-post','auth-service','postAuthority','{POST /authorities}'),
('auth-service_authorities-put-by-id','auth-service','putAuthorityById','{PUT /authorities/{id}}'),
('auth-service_authorities-sync','auth-service','syncAuthority','{PUT /authorities/service/{serviceId}}'),
('auth-service_products-delete-by-id','auth-service','deleteProductById','{DELETE /products/{id}}'),
('auth-service_products-delete-features-by-id','auth-service','deleteProductFeature','{DELETE /products/features/{id}}'),
('auth-service_products-get','auth-service','getProducts','{GET /products/}'),
('auth-service_products-get-by-id','auth-service','getProductById','{GET /products/{id}}'),
('auth-service_products-get-features-by-productId','auth-service','getProductFeatureByProductId','{GET /products/{productId}/features}'),
('auth-service_products-post','auth-service','postProduct','{POST /products}'),
('auth-service_products-post-features-by-productId','auth-service','postProductFeatureByProductId','{POST /products/{productId}/features}'),
('auth-service_products-put-by-id','auth-service','putProductById','{PUT /products/{id}}'),
('auth-service_roles-delete-authorities-by-id','auth-service','deleteRoleAuthority','{DELETE /roles/{roleId}/authorities/{authorityId}}'),
('auth-service_roles-delete-authority-by-id','auth-service','deleteRoleAuthority','{DELETE /roles/{roleId}/authorities/{authorityId}}'),
('auth-service_roles-delete-by-id','auth-service','deleteRoleById','{DELETE /roles/{id}}'),
('auth-service_roles-get','auth-service','getRoles','{GET /roles/}'),
('auth-service_roles-get-authorities-by-roleId','auth-service','getRoleAuthoritiesByRoleId','{GET /roles/{roleId}/authorities}'),
('auth-service_roles-get-by-id','auth-service','getRoleById','{GET /roles/{id}}'),
('auth-service_roles-post','auth-service','postRole','{POST /roles}'),
('auth-service_roles-post-authorities-by-roleId','auth-service','postRoleAuthority','{POST /roles/{roleId}/authorities}'),
('auth-service_roles-put-by-id','auth-service','putRoleById','{PUT /roles/{id}}'),
('auth-service_users-authenticate','auth-service','authenticateUser','{POST /users/authenticate}'),
('auth-service_users-delete-by-id','auth-service','deleteUserById','{DELETE /users/{id}}'),
('auth-service_users-get','auth-service','getUsers','{GET /users/}'),
('auth-service_users-get-buyer-by-userId','auth-service','getBuyerByUserId','{GET /users/{userId}/buyer}'),
('auth-service_users-get-by-id','auth-service','getUserById','{GET /users/{id}}'),
('auth-service_users-get-customer-by-userId','auth-service','getSellerByUserId','{GET /users/{userId}/customer}'),
('auth-service_users-get-profile','auth-service','getUserProfile','{GET /usres/profile}'),
('auth-service_users-get-seller-by-userId','auth-service','getSellerByUserId','{GET /users/{userId}/seller}'),
('auth-service_users-post','auth-service','postUser','{POST /users}'),
('auth-service_users-post-buyer-by-userId','auth-service','postBuyerByUserId','{POST /users/{userId}/buyer}'),
('auth-service_users-post-customer-by-userId','auth-service','postSellerByUserId','{POST /users/{userId}/customer}'),
('auth-service_users-post-seller-by-userId','auth-service','postSellerByUserId','{POST /users/{userId}/seller}'),
('auth-service_users-put-buyer-by-userId','auth-service','putBuyerByUserId','{PUT /users/{userId}/buyer}'),
('auth-service_users-put-by-id','auth-service','putUserById','{PUT /users/{id}}'),
('auth-service_users-put-customer-by-userId','auth-service','putSellerByUserId','{PUT /users/{userId}/customer}'),
('auth-service_users-put-seller-by-userId','auth-service','putSellerByUserId','{PUT /users/{userId}/seller}'),
('delivery-service_orders-cancel-order','delivery-service','cancelOrder','{POST /cancelorder}'),
('delivery-service_orders-get-price','delivery-service','getPrice','{POST /order/getprice}'),
('delivery-service_orders-query-order','delivery-service','queryOrder','{POST /queryorder}'),
('delivery-service_orders-submit-order','delivery-service','submitOrder','{POST /submitorder}'),
('flow-builder_conversations-delete-by-id','flow_builder','deleteConversation','{DELETE /conversation/{id}}'),
('flow-builder_conversations-get','flow_builder','getConversation','{GET /conversation/}'),
('flow-builder_conversations-patch-by-id','flow_builder','updateConversation','{PATCH /conversation/{id}}'),
('flow-builder_conversations-post','flow_builder','createConversation','{POST /conversation/}'),
('flow-builder_flows-delete-by-id','flow_builder','deleteFlow','{DELETE /flow/{id}}'),
('flow-builder_flows-get','flow_builder','getFlow','{GET /flow}'),
('flow-builder_flows-get-by-id-botid-topvertexid','flow_builder','getFlow','{GET /flow/{id}/{botId}/{topVertexId}}'),
('flow-builder_flows-patch-by-id','flow_builder','updateFlow','{PATCH /flow/{id}}'),
('flow-builder_flows-post','flow_builder','createFlow','{POST /flow}'),
('flow-builder_mxgraph-delete-by-flowid','flow_builder','deleteMx','{DELETE /mxgraph/{flow-id}}'),
('flow-builder_mxgraph-get-by-flowid','flow_builder','getMxObject','{GET /mxgraph/{flow-id}}'),
('flow-builder_mxgraph-get-publish-by-flowid','flow_builder','getPublishMxObject','{GET /mxgraph/publish/{flow-id}}'),
('flow-builder_mxgraph-patch-by-flowid','flow_builder','autoSaveMx','{PATCH /mxgraph/{action-type}/{flow-id}}'),
('flow-builder_mxgraph-post-by-flowid','flow_builder','createAndUpdateMx','{POST /mxgraph/{flow-id}}'),
('flow-builder_vertex-delete-by-id','flow_builder','deleteVertex','{DELETE /vertex/{id}}'),
('flow-builder_vertex-get','flow_builder','getVertex','{GET /vertex/}'),
('flow-builder_vertex-patch-by-id','flow_builder','updateVertex','{PATCH /vertex/{id}}'),
('flow-builder_vertex-post','flow_builder','createVertex','{POST /vertex/}'),
('flow-builder_vertexs-get','flow-builder','getVertex','{GET /vertex}'),
('string','flow-builder','getMxGraph','{GET /mxgraph}'),
('string2','flow-builder','getMxGraph','{GET /mxgraph}'),
('string3','flow-builder','getMxGraph','{GET /mxgraph}');

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `name` varchar(100) DEFAULT NULL,
  `mobileNumber` varchar(20) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `zipcode` varchar(20) DEFAULT NULL,
  `userId` varchar(50) NOT NULL,
  PRIMARY KEY (`userId`),
  KEY `seller_user_fk_idx` (`userId`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Seller table is derivitive of user table, the redundant fields are kept so user can maintain a seller profile differently or can use same details as the main user.';

/*Data for the table `customers` */

insert  into `customers`(`name`,`mobileNumber`,`city`,`address`,`zipcode`,`userId`) values 
('Kalsym','0133731869','Petaling Jaya','SS15','43700','28894506-5435-4952-9049-d07cd7edb912');

/*Table structure for table `delivery_orders` */

DROP TABLE IF EXISTS `delivery_orders`;

CREATE TABLE `delivery_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` varchar(100) DEFAULT NULL,
  `spId` int(11) DEFAULT NULL,
  `itemType` varchar(100) DEFAULT NULL,
  `productCode` varchar(100) DEFAULT NULL,
  `pickupAddress` varchar(500) DEFAULT NULL,
  `deliveryAddress` varchar(500) DEFAULT NULL,
  `deliveryContactName` varchar(100) DEFAULT NULL,
  `deliveryContactPhone` varchar(100) DEFAULT NULL,
  `deliveryProviderId` int(11) DEFAULT NULL,
  `spOrderId` varchar(100) DEFAULT NULL,
  `spOrderName` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `statusDescription` varchar(200) DEFAULT NULL,
  `systemTransactionId` varchar(100) DEFAULT NULL,
  `vehicleType` varchar(100) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `pickupContactName` varchar(100) DEFAULT NULL,
  `pickupContactPhone` varchar(100) DEFAULT NULL,
  `totalWeightKg` int(11) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `orderId` varchar(100) DEFAULT NULL,
  `storeId` varchar(100) DEFAULT NULL,
  `merchantTrackingUrl` varchar(100) DEFAULT NULL,
  `customerTrackingUrl` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

/*Data for the table `delivery_orders` */

insert  into `delivery_orders`(`id`,`customerId`,`spId`,`itemType`,`productCode`,`pickupAddress`,`deliveryAddress`,`deliveryContactName`,`deliveryContactPhone`,`deliveryProviderId`,`spOrderId`,`spOrderName`,`status`,`statusDescription`,`systemTransactionId`,`vehicleType`,`createdDate`,`pickupContactName`,`pickupContactPhone`,`totalWeightKg`,`updatedDate`,`orderId`,`storeId`,`merchantTrackingUrl`,`customerTrackingUrl`) values 
(1,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,2,'995119',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2,'1',NULL,'parcel','parcel','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','24, jalan prima 3/5, taman puchong prima, 47500, puchong, selangor','Albert','0133309331',2,'TCN170000961','120TESTAB001446',NULL,NULL,NULL,'MOTORCYCLE','2021-03-19 17:11:49','SK','0123327339',1,NULL,NULL,NULL,NULL,NULL),
(3,'1',NULL,'parcel','parcel','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','24, jalan prima 3/5, taman puchong prima, 47500, puchong, selangor','Albert','0133309331',2,'TCN170000962','120TESTAB001447',NULL,NULL,NULL,'MOTORCYCLE','2021-03-22 10:08:43','SK','0123327339',1,NULL,NULL,NULL,NULL,NULL),
(4,'1',NULL,'parcel','parcel','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','24, jalan prima 3/5, taman puchong prima, 47500, puchong, selangor','Albert','0133309331',2,'TCN170000963','120TESTAB001448',NULL,NULL,NULL,'MOTORCYCLE','2021-03-22 10:16:33','SK','0123327339',1,NULL,NULL,NULL,NULL,NULL),
(5,'1',NULL,'parcel','parcel','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','24, jalan prima 3/5, taman puchong prima, 47500, puchong, selangor','Albert','0133309331',2,'TCN170000964','120TESTAB001449',NULL,NULL,NULL,'MOTORCYCLE','2021-03-22 10:18:44','SK','0123327339',1,NULL,NULL,NULL,NULL,NULL),
(6,'1',NULL,'parcel','parcel','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','24, jalan prima 3/5, taman puchong prima, 47500, puchong, selangor','Albert','0133309331',2,'TCN170000965','120TESTAB001450',NULL,NULL,NULL,'MOTORCYCLE','2021-03-22 10:25:35','SK','0123327339',1,NULL,NULL,NULL,NULL,NULL),
(7,'1',NULL,'parcel','parcel','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','24, jalan prima 3/5, taman puchong prima, 47500, puchong, selangor','Albert','0133309331',2,'TCN170000966','120TESTAB001451',NULL,NULL,NULL,'MOTORCYCLE','2021-03-22 03:15:04','SK','0123327339',1,NULL,NULL,NULL,NULL,NULL),
(8,'1',NULL,'parcel','document','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','24, jalan prima 3/5, taman puchong prima, 47500, puchong, selangor','Albert','0133309331',1,'95481','95481','available',NULL,NULL,'MOTORCYCLE','2021-03-22 03:46:34','SK','0123327339',1,'2021-03-22 03:59:39',NULL,NULL,NULL,NULL),
(9,'1',NULL,'parcel','document','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','24, jalan prima 3/5, taman puchong prima, 47500, puchong, selangor','Albert','0133309331',1,'95482','95482','available',NULL,NULL,'MOTORCYCLE','2021-03-22 03:50:48','SK','0123327339',1,'2021-03-22 03:51:19',NULL,NULL,NULL,NULL),
(10,'1',NULL,'parcel','document','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','24, jalan prima 3/5, taman puchong prima, 47500, puchong, selangor','Albert','0133309331',1,'95904','95904','available',NULL,NULL,'MOTORCYCLE','2021-04-06 08:02:25','SK','0123327339',1,'2021-04-06 08:02:26',NULL,NULL,NULL,NULL),
(11,'1',NULL,'parcel','document','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','R-2-15 jln tar','Muhammad Nazrul Hanif','0193140901',1,'95910','95910','available',NULL,NULL,'MOTORCYCLE','2021-04-06 09:10:09','SK','0123327339',1,'2021-04-06 09:10:47',NULL,NULL,NULL,NULL),
(12,'1',NULL,'parcel','document','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','123','Muhammad Nazrul Hanif','0193140901',1,'95911','95911','available',NULL,NULL,'MOTORCYCLE','2021-04-06 09:11:02','SK','0123327339',1,'2021-04-06 09:11:35',NULL,NULL,NULL,NULL),
(13,'1',NULL,'parcel','document','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','123','Muhammad Nazrul Hanif','0193140901',1,'95912','95912','available',NULL,NULL,'MOTORCYCLE','2021-04-06 09:12:40','SK','0123327339',1,'2021-04-06 09:14:49',NULL,NULL,NULL,NULL),
(14,'1',NULL,'parcel','document','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','123','Muhammad Nazrul Hanif','0193140901',1,'95917','95917','available',NULL,NULL,'MOTORCYCLE','2021-04-06 12:56:50','SK','0123327339',1,'2021-04-06 12:57:10',NULL,NULL,NULL,NULL),
(15,'1',NULL,'parcel','document','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','123','Muhammad Nazrul Hanif','0193140901',1,'95918','95918','available',NULL,NULL,'MOTORCYCLE','2021-04-06 13:17:45','SK','0123327339',1,'2021-04-06 13:18:19',NULL,NULL,NULL,NULL),
(16,'1',NULL,'parcel','document','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','Unit S-14-09, Level 14, First Subang\nJalan SS15/4G','albert','+60133309331',1,'95939','95939','available',NULL,NULL,'MOTORCYCLE','2021-04-07 04:05:05','SK','0123327339',1,'2021-04-07 04:05:23',NULL,NULL,NULL,NULL),
(17,'1',NULL,'parcel','document','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','123','Muhammad Nazrul Hanif','0193140901',1,'95967','95967','available',NULL,NULL,'MOTORCYCLE','2021-04-08 02:55:52','SK','0123327339',1,'2021-04-08 02:56:21',NULL,NULL,NULL,NULL),
(18,'1',NULL,'parcel','document','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','123','Muhammad Nazrul Hanif','0193140901',1,'95968','95968','available',NULL,NULL,'MOTORCYCLE','2021-04-08 03:17:31','SK','0123327339',1,'2021-04-08 03:17:32',NULL,NULL,NULL,NULL),
(19,'1',NULL,'parcel','document','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','123','Muhammad Nazrul Hanif','0193140901',1,'95976','95976','available',NULL,NULL,'MOTORCYCLE','2021-04-08 08:17:16','SK','0123327339',1,'2021-04-08 08:17:25',NULL,NULL,NULL,NULL),
(20,'1',NULL,'parcel','document','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','123','Muhammad Nazrul Hanif','0193140901',1,'95977','95977','available',NULL,NULL,'MOTORCYCLE','2021-04-08 08:20:40','SK','0123327339',1,'2021-04-08 08:20:41',NULL,NULL,NULL,NULL),
(21,'1',NULL,'parcel','document','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','123','Muhammad Nazrul Hanif','0193140901',1,'95978','95978','available',NULL,NULL,'MOTORCYCLE','2021-04-08 08:48:27','SK','0123327339',1,'2021-04-08 08:48:28',NULL,NULL,NULL,NULL),
(22,'1',NULL,'parcel','document','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','123','Muhammad Nazrul Hanif','0193140901',1,'95979','95979','available',NULL,NULL,'MOTORCYCLE','2021-04-08 08:49:00','SK','0123327339',1,'2021-04-08 08:49:25',NULL,NULL,NULL,NULL),
(23,'1',NULL,'parcel','document','Unit S-14-09,Level 12B, First Subang,Jalan SS15/4G,47500 Subang Jaya, Selangor','123','Muhammad Nazrul Hanif','0193140901',1,'95982','95982','available',NULL,NULL,'MOTORCYCLE','2021-04-08 10:22:55','SK','0123327339',1,'2021-04-08 10:23:24',NULL,NULL,NULL,NULL),
(24,'undefined',NULL,'parcel','document','Subang Jaya','taman arked dengkil','taufik','0133731869',1,'96746','96746','available',NULL,NULL,'MOTORCYCLE','2021-05-11 07:11:29','Taufik Mustajid','0133731869',1,'2021-05-11 07:12:11',NULL,NULL,NULL,NULL),
(25,'undefined',NULL,'parcel','document','Subang Jaya','taman arked dengkil','taufik','0133731869',1,'96749','96749','available',NULL,NULL,'MOTORCYCLE','2021-05-11 07:22:30','Taufik Mustajid','0133731869',1,'2021-05-11 07:22:31',NULL,NULL,NULL,NULL),
(26,'undefined',NULL,'parcel','document','Subang Jaya','taman arked dengkil','taufik','0133731869',1,'96750','96750','available',NULL,NULL,'MOTORCYCLE','2021-05-11 07:31:20','Taufik Mustajid','0133731869',1,'2021-05-11 07:31:34',NULL,NULL,NULL,NULL),
(27,'undefined',NULL,'parcel','document','Subang Jaya','taman arked dengkil','taufik','0133731869',1,'96752','96752','available',NULL,NULL,'MOTORCYCLE','2021-05-11 07:37:34','Taufik Mustajid','0133731869',1,'2021-05-11 07:37:34',NULL,NULL,NULL,NULL),
(28,'undefined',NULL,'parcel','document','Subang Jaya','taman arked dengkil','taufik','0133731869',1,'96753','96753','available',NULL,NULL,'MOTORCYCLE','2021-05-11 07:41:30','Taufik Mustajid','0133731869',1,'2021-05-11 07:42:10',NULL,NULL,NULL,NULL),
(29,'undefined',NULL,'parcel','document','SS15, Subang jaya, Selangor','Taman Arked, Dengkil','Taufik mustajid','0133731869',1,'96757','96757','available',NULL,NULL,'MOTORCYCLE','2021-05-11 08:14:21','Taufik Mustajid','0133731869',1,'2021-05-11 08:15:10',NULL,NULL,NULL,NULL),
(30,'undefined',NULL,'parcel','document','SS15, Subang jaya, Selangor','taman arked, dengkil','taufik mustajid','0133731869',1,'96758','96758','available',NULL,NULL,'MOTORCYCLE','2021-05-11 08:23:05','Taufik Mustajid','0133731869',1,'2021-05-11 08:23:27',NULL,NULL,NULL,NULL),
(31,'undefined',NULL,'parcel','document','SS15, Subang jaya, Selangor','taman arked, dengkil','taufik mustajid','0133731869',1,'96760','96760','available',NULL,NULL,'MOTORCYCLE','2021-05-11 08:34:16','Taufik Mustajid','0133731869',1,'2021-05-11 08:34:29','f913a473-88af-40e6-851c-5c073825e690',NULL,NULL,NULL),
(33,NULL,NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000','Casatiara Serive Apartment','','601162802728',1,'97599','97599','available',NULL,NULL,'MOTORCYCLE','2021-06-04 21:46:52','','0192802728',0,'2021-06-04 21:48:12',NULL,NULL,NULL,NULL),
(34,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Casatiara Serive Apartment','','601162802728',1,'97633','97633','available',NULL,NULL,'MOTORCYCLE','2021-06-06 20:21:31','','0192802728',0,'2021-06-06 20:21:33',NULL,NULL,NULL,NULL),
(35,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','D-09-09, Casatiara Service Apartment, Jalan Kemajuan Subang SS16, ','Cinema Online','0192802728',1,'97808','97808','available',NULL,NULL,'MOTORCYCLE','2021-06-11 00:22:07','Cinema Online','0356300997',0,'2021-06-11 00:22:32','97808',NULL,NULL,NULL),
(36,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','12, jalan prima 1/2, taman puchong prima','Cinema Online','0133309331',1,'97809','97809','active',NULL,NULL,'MOTORCYCLE','2021-06-11 10:13:25','Cinema Online','0356300997',0,'2021-06-15 18:52:40','13',NULL,NULL,NULL),
(37,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','D-09-09, Casatiara Service Apartment, Jalan Kemajuan Subang SS16,47500,Subang Jaya,Selangor','Cinema Online','0192802728',1,'2234284','34284','completed',NULL,NULL,'MOTORCYCLE','2021-06-11 11:09:41','Cinema Online','0133309331',0,'2021-06-11 11:56:07',NULL,NULL,NULL,NULL),
(38,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,null','K-1-18 Apartment Dahlia, Taman Bunga Raya, Bukit Beruntung, 48300, Rawang, Selangor Darul Ehsan,48300,Rawang,Selangor','Cinema Online','0193140901',1,'2234341','34341','canceled',NULL,NULL,'MOTORCYCLE','2021-06-11 11:13:47','Cinema Online','0133309331',0,'2021-06-11 11:32:03',NULL,NULL,NULL,NULL),
(39,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','D-09-09, Casatiara Service Apartment, Jalan kemajuan Subang Jaya,47500,Subang Jaya,Selangor','Cinema Online','0192802728',1,'97977','97977',NULL,NULL,NULL,'MOTORCYCLE','2021-06-16 13:35:53','Cinema Online','0133309331',0,NULL,'b393ca32-cf07-4a2e-91fc-a1db3cba3b02',NULL,NULL,NULL),
(40,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','12, jalan prima 1/2, taman puchong prima,47150,puchong,Selangor','Cinema Online','0133309331',1,'97983','97983',NULL,NULL,NULL,'MOTORCYCLE','2021-06-16 15:30:40','Cinema Online','0133309331',0,NULL,'10dc0520-e7b3-40ed-9de3-66155dc63b58',NULL,NULL,NULL),
(41,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','1,jalan prima 1/2, taman puchong prima,47150,puchong,Selangor','Cinema Online','0133309331',1,'97988','97988',NULL,NULL,NULL,'MOTORCYCLE','2021-06-16 15:58:32','Cinema Online','0133309331',0,NULL,'04a3d70b-857a-4538-95a2-d12d8bdce002',NULL,NULL,NULL),
(42,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Cinema Online','0192802728',1,'98028','98028',NULL,NULL,NULL,'MOTORCYCLE','2021-06-17 14:35:23','Cinema Online','0133309331',0,NULL,'4c10aa72-ef52-4494-8936-9b9db277ad23',NULL,NULL,NULL),
(43,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Cinema Online','0192802728',1,'98029','98029',NULL,NULL,NULL,'MOTORCYCLE','2021-06-17 14:37:30','Cinema Online','0133309331',0,NULL,'4c10aa72-ef52-4494-8936-9b9db277ad23',NULL,NULL,NULL),
(44,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','11, jalan prima 3/3, taman puchong prima,47150,puchong,Selangor','Cinema Online','0133309331',1,'98030','98030',NULL,NULL,NULL,'MOTORCYCLE','2021-06-17 14:48:29','Cinema Online','0133309331',0,NULL,'1612467e-3e51-425e-8177-d8139dcb0b8c',NULL,NULL,NULL),
(45,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Cinema Online','0192802728',1,'98035','98035',NULL,NULL,NULL,'MOTORCYCLE','2021-06-17 17:30:23','Cinema Online','0133309331',0,NULL,'f9bdc42a-d2e4-4de0-ba42-f7c916bf0e64',NULL,NULL,NULL),
(46,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Cinema Online','0192802728',1,'98036','98036',NULL,NULL,NULL,'MOTORCYCLE','2021-06-17 17:59:53','Cinema Online','0133309331',0,NULL,'8708ea18-c1d2-4ed6-a635-e6e02b92dec9',NULL,NULL,NULL),
(47,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Cinema Online','0192802728',1,'98037','98037',NULL,NULL,NULL,'MOTORCYCLE','2021-06-17 18:31:09','Cinema Online','0133309331',0,NULL,'fae3fa00-94e5-498d-b81a-78d0ac4199d5',NULL,NULL,NULL),
(48,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Cinema Online','0192802728',1,'98058','98058',NULL,NULL,NULL,'MOTORCYCLE','2021-06-18 15:34:32','Cinema Online','0133309331',0,NULL,'cfb2e7f5-1b62-430a-812d-74c68588bb0e',NULL,NULL,NULL),
(49,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Cinema Online','0192802728',1,'98187','98187',NULL,NULL,NULL,'MOTORCYCLE','2021-06-21 15:52:05','Cinema Online','0133309331',0,NULL,'4c10aa72-ef52-4494-8936-9b9db277ad23',NULL,'https://apitest.mrspeedy.my/track/PGC22YZHNXAMMY','https://apitest.mrspeedy.my/track/PGE7FM554LHKMY');

/*Table structure for table `delivery_quotation` */

DROP TABLE IF EXISTS `delivery_quotation`;

CREATE TABLE `delivery_quotation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` varchar(50) DEFAULT NULL,
  `spId` int(11) DEFAULT NULL,
  `itemType` varchar(100) DEFAULT NULL,
  `productCode` varchar(100) DEFAULT NULL,
  `pickupAddress` varchar(500) DEFAULT NULL,
  `deliveryAddress` varchar(500) DEFAULT NULL,
  `deliveryContactName` varchar(100) DEFAULT NULL,
  `deliveryContactPhone` varchar(100) DEFAULT NULL,
  `deliveryProviderId` int(11) DEFAULT NULL,
  `spOrderId` varchar(100) DEFAULT NULL,
  `spOrderName` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `statusDescription` varchar(200) DEFAULT NULL,
  `systemTransactionId` varchar(100) DEFAULT NULL,
  `vehicleType` varchar(100) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `pickupContactName` varchar(100) DEFAULT NULL,
  `pickupContactPhone` varchar(100) DEFAULT NULL,
  `totalWeightKg` int(11) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `storeId` varchar(100) DEFAULT NULL,
  `orderId` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `validationPeriod` datetime DEFAULT NULL,
  `cartId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8mb4;

/*Data for the table `delivery_quotation` */

insert  into `delivery_quotation`(`id`,`customerId`,`spId`,`itemType`,`productCode`,`pickupAddress`,`deliveryAddress`,`deliveryContactName`,`deliveryContactPhone`,`deliveryProviderId`,`spOrderId`,`spOrderName`,`status`,`statusDescription`,`systemTransactionId`,`vehicleType`,`createdDate`,`pickupContactName`,`pickupContactPhone`,`totalWeightKg`,`updatedDate`,`storeId`,`orderId`,`amount`,`validationPeriod`,`cartId`) values 
(2,'4',NULL,'parcel',NULL,'First Subang','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,'Kumar','0192802728',0,NULL,NULL,NULL,5.00,NULL,NULL),
(3,'3',NULL,'parcel',NULL,'First Subang','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,'Kumar','0192802728',0,NULL,NULL,NULL,5.00,'2021-06-03 09:36:08',NULL),
(4,'4',NULL,'parcel',NULL,NULL,'No 20, Jalan Temasik, Tamago Island, 40150, Nippon',NULL,NULL,1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,5.00,'2021-06-03 09:52:59',NULL),
(5,'4',NULL,'parcel',NULL,NULL,'No 20, Jalan Temasik, Tamago Island, 40150, Nippon',NULL,NULL,1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,5.00,'2021-06-03 09:54:19',NULL),
(6,'4',NULL,'parcel',NULL,NULL,'No 20, Jalan Temasik, Tamago Island, 40150, Nippon',NULL,NULL,1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,5.00,'2021-06-03 09:57:20',NULL),
(7,'4',NULL,'parcel',NULL,NULL,'No 20, Jalan Temasik, Tamago Island, 40150, Nippon',NULL,NULL,1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,5.00,'2021-06-03 09:59:25',NULL),
(8,'4',NULL,'parcel',NULL,NULL,'Belakang Rumah Mek Ambo',NULL,NULL,1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,5.00,'2021-06-03 10:01:31',NULL),
(9,'4',NULL,'parcel',NULL,NULL,'No 20, Jalan Temasik, Tamago Island, 40150, Nippon',NULL,NULL,1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,5.00,'2021-06-03 10:53:10',NULL),
(10,'4',NULL,'parcel',NULL,NULL,'No 20, Jalan Temasik, Tamago Island, 40150, Nippon',NULL,NULL,1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,5.00,'2021-06-03 10:57:43',NULL),
(11,'4',NULL,'parcel',NULL,'KL','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,14.45,'2021-06-04 01:27:58',NULL),
(12,'4',NULL,'parcel',NULL,'KL','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,14.45,'2021-06-04 01:28:29',NULL),
(13,'4',NULL,'1',NULL,'KL','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,14.45,'2021-06-04 09:37:15',NULL),
(14,'4',NULL,'1',NULL,'KL','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,14.45,'2021-06-04 09:37:38',NULL),
(15,'3',NULL,'1',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,14.45,'2021-06-04 09:41:48',NULL),
(16,'3',NULL,'1',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,14.45,'2021-06-04 09:46:42',NULL),
(17,'3',NULL,'1',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,14.45,'2021-06-04 09:58:27',NULL),
(18,'3',NULL,'1',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,14.45,'2021-06-04 10:01:47',NULL),
(19,'3',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,14.45,'2021-06-04 10:18:08',NULL),
(20,'3',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,14.45,'2021-06-04 11:29:34',NULL),
(21,NULL,NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','0192802728',0,NULL,NULL,NULL,14.45,'2021-06-04 13:25:31',NULL),
(22,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','sdfsdfsdf sfdsffsd','fdssfdfdsfds','4432342324',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,25.30,'2021-06-04 13:35:29',NULL),
(23,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','adsadsasd','adsasdasd','123312123',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,24.45,'2021-06-04 13:42:23','d77ec150-008e-4d40-9d05-4c687345e08f'),
(24,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','addas','Ahmad Miqdaad','213531351',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,5.00,'2021-06-04 13:45:22',NULL),
(25,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Aaffs','asfasffas','412214142',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,36.30,'2021-06-04 13:46:44',NULL),
(26,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','asdadsasd','asddasads','132112231',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,24.45,'2021-06-04 13:48:31',NULL),
(27,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,14.45,'2021-06-04 13:50:51',NULL),
(28,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,14.45,'2021-06-04 13:51:18',NULL),
(29,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','asdasdsad','Ahmad','31213123',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,24.45,'2021-06-04 13:52:07',NULL),
(30,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','asdadsads','Ahmad','12421124',1,NULL,NULL,'PENDING',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,24.45,'2021-06-04 13:54:21',NULL),
(31,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','adsasddsadas','asdsasad','132123213',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,NULL,'0192802728',0,NULL,NULL,NULL,24.45,'2021-06-04 13:59:56',NULL),
(32,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','0192802728',0,NULL,NULL,NULL,14.55,'2021-06-06 05:07:45',NULL),
(33,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','0192802728',0,NULL,NULL,NULL,14.55,'2021-06-06 12:01:55',NULL),
(34,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','0192802728',0,NULL,NULL,NULL,14.55,'2021-06-06 12:02:12',NULL),
(35,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','SA','Ahmad Miqdaad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,10.85,'2021-06-07 01:57:41',NULL),
(36,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','test','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-07 01:59:52',NULL),
(37,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Test','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-07 02:04:37',NULL),
(38,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Test','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-07 02:15:37',NULL),
(39,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.35,'2021-06-07 02:17:33',NULL),
(40,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.35,'2021-06-07 02:25:44',NULL),
(41,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad Miqdaad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.35,'2021-06-07 02:35:50',NULL),
(42,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','123','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,28.35,'2021-06-07 03:03:59',NULL),
(43,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','123','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,28.35,'2021-06-07 03:04:16',NULL),
(44,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','1234','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,5.00,'2021-06-07 03:24:21',NULL),
(45,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','1234','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,5.00,'2021-06-07 03:24:31',NULL),
(46,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','1234','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,5.00,'2021-06-07 03:25:09',NULL),
(47,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','1234','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,5.00,'2021-06-07 03:25:19',NULL),
(48,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','1234','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,5.00,'2021-06-07 03:25:44',NULL),
(49,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','unit S-14-09, 14th floor, first subang, jalan ss15/4g','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,13.70,'2021-06-07 03:27:19',NULL),
(50,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','unit S-14-09, 14th floor, first subang, jalan ss15/4g','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,13.70,'2021-06-07 03:27:19',NULL),
(51,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','unit S-14-09, 14th floor, first subang, jalan ss15/4g','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,13.70,'2021-06-07 03:27:27',NULL),
(52,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Unit S-14-09, 14th Floor, First Subang, Jalan SS15/4G','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,13.70,'2021-06-07 04:00:12',NULL),
(53,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor','Shoaib','03455712773',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,13.75,'2021-06-07 12:56:52',NULL),
(54,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000','test','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,6.50,'2021-06-08 02:15:42',NULL),
(55,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','assa','asdasd','01231231',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,15.20,'2021-06-08 02:23:07',NULL),
(56,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','SA','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,10.85,'2021-06-08 06:58:10',NULL),
(57,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','24, jalan prima 3/5, taman puchong prima','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,5.00,'2021-06-08 07:51:55',NULL),
(58,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','unit S-14-09, First Subang, jalan SS15/4G','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,13.75,'2021-06-08 07:54:10',NULL),
(59,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-08 08:01:34',NULL),
(60,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-08 08:04:52',NULL),
(61,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-08 08:06:18',NULL),
(62,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-08 08:12:49',NULL),
(63,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-08 08:14:19',NULL),
(64,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-08 08:14:51',NULL),
(65,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-08 08:15:01',NULL),
(66,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-08 08:15:04',NULL),
(67,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-08 08:16:23',NULL),
(68,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-08 08:16:32',NULL),
(69,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-08 08:16:52',NULL),
(70,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-08 08:17:01',NULL),
(71,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-08 08:17:13',NULL),
(72,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-08 08:17:22',NULL),
(73,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-08 08:17:37',NULL),
(74,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','123','alebrt','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,28.35,'2021-06-08 08:19:56',NULL),
(75,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','123','alebrt','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,28.35,'2021-06-08 08:19:59',NULL),
(76,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','12, jalan prima 1/2, taman puchong prima','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,5.00,'2021-06-08 10:07:30',NULL),
(77,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','12, jalan prima 1/2, taman puchong prima','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,5.00,'2021-06-08 10:24:10',NULL),
(78,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000','Suites #344, Selangor','Jean','00654323564',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',1,NULL,NULL,NULL,22.60,'2021-06-08 11:58:18',NULL),
(79,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Test','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-09 09:58:49',NULL),
(80,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Test','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-09 10:08:29',NULL),
(81,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-09 10:10:31',NULL),
(82,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-09 10:12:55',NULL),
(83,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad Miqdaad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-09 10:14:45',NULL),
(84,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah ALam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-09 10:17:19',NULL),
(85,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad Miqdaad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-09 10:18:52',NULL),
(86,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-09 10:22:25',NULL),
(87,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Kot ','Ahmad Miqdaad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,24.45,'2021-06-09 10:23:16',NULL),
(88,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-09 10:25:38',NULL),
(89,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','kkk','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,26.70,'2021-06-09 10:27:31',NULL),
(90,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','OK','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,5.00,'2021-06-09 10:29:18',NULL),
(91,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Test','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-09 10:32:20',NULL),
(92,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Test','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-09 10:34:07',NULL),
(93,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','asdfa','xvcxcv','923435163312',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,24.45,'2021-06-09 10:39:22',NULL),
(94,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','xcvxsdf','ww4w432','923435163312',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,24.45,'2021-06-09 10:39:41',NULL),
(95,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','adssadsad','sadsdasad','321132213',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,24.45,'2021-06-10 08:40:42',NULL),
(96,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.35,'2021-06-10 08:44:31',NULL),
(97,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Test','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-10 09:03:55',NULL),
(98,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Test','Ahmad','60147317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-10 09:11:46',NULL),
(99,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.35,'2021-06-10 09:29:15',NULL),
(100,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.35,'2021-06-10 09:39:17',NULL),
(101,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.35,'2021-06-10 09:48:12',NULL),
(102,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.35,'2021-06-10 09:49:19',NULL),
(103,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','12, jalan prima 1/2, taman puchong prima','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,5.00,'2021-06-10 11:26:42',NULL),
(104,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Test','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-10 13:04:07',NULL),
(105,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','TEst','Ahmad','60148317191',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-10 13:12:06',NULL),
(106,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','[Sunday 4:38 PM] Irasakumar Vijayan\n    \nFirst Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor\n','Sarosh','923455712773',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,13.70,'2021-06-10 13:26:02',NULL),
(107,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','2342','23423','342424234',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,19.65,'2021-06-10 13:34:57',NULL),
(108,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','[Sunday 4:38 PM] Irasakumar Vijayan\n    \nFirst Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor\n','Sarosh','923455712773',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,13.70,'2021-06-10 13:36:48',NULL),
(109,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','[Sunday 4:38 PM] Irasakumar Vijayan\n    \nFirst Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor\n','Sarosh','923455712773',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,13.70,'2021-06-10 13:47:54',NULL),
(110,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','qasdsad','adsads','132213213',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,24.45,'2021-06-10 13:51:20',NULL),
(111,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','[Sunday 4:38 PM] Irasakumar Vijayan\n    \nFirst Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor\n','Sarosh','923455712773',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,13.70,'2021-06-10 13:59:18',NULL),
(112,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-10 14:05:06',NULL),
(113,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Home','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,13.95,'2021-06-10 14:08:10',NULL),
(114,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','[Sunday 4:38 PM] Irasakumar Vijayan\n    \nFirst Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor\n','Sarosh','923455712773',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,13.70,'2021-06-10 14:10:54',NULL),
(115,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Home','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,13.95,'2021-06-10 14:12:56',NULL),
(116,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','12, jalan prima 3/2 ','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,5.00,'2021-06-10 14:22:47',NULL),
(117,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','12, jalan prima 3/2 ','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,5.00,'2021-06-10 14:24:04',NULL),
(118,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','12, jalan prima 3/2 ','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,5.00,'2021-06-10 14:24:15',NULL),
(119,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor\n','Sarosh','923215031806',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,13.75,'2021-06-10 14:24:52',NULL),
(120,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Test','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-10 14:39:40',NULL),
(121,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Test','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-10 14:39:48',NULL),
(122,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','sdfa','zeees','92343516312',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.80,'2021-06-10 14:44:34',NULL),
(123,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','sdfa','zeees','92343516312',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.80,'2021-06-10 14:44:48',NULL),
(124,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','sdfsd','sdfs','923435163312',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,24.50,'2021-06-10 14:45:38',NULL),
(125,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','TEst','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-10 14:46:59',NULL),
(126,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','TEst','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-10 14:47:05',NULL),
(127,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','TEst','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-10 14:47:18',NULL),
(128,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','TEst','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-10 14:47:32',NULL),
(129,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Shah Alam','Ahmad','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.20,'2021-06-10 14:47:53',NULL),
(130,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','D-09-09, Casatiara Tiara Service Apartment, Jalan Kemajuan Subang Ss16, Subang Jaya','Irasakumar','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,14.55,'2021-06-10 14:49:56',NULL),
(131,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Test','Ahmad ','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-10 14:51:35',NULL),
(132,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Test','Ahmad ','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-10 14:52:26',NULL),
(133,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Test','Ahmad ','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-10 14:52:27',NULL),
(134,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Test','Ahmad ','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-10 14:52:28',NULL),
(135,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Test','Ahmad ','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-10 14:52:47',NULL),
(136,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Test','Ahmad ','60148317192',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,21.60,'2021-06-10 14:53:08',NULL),
(137,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000','selangor Jaya Taman','Naz','60145563265',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,7.70,'2021-06-10 14:53:38',NULL),
(138,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000','selangor Jaya Taman','Naz','60145563265',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,7.70,'2021-06-10 15:03:42',NULL),
(139,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','ahmed','ali','923426161612',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'','',0,NULL,NULL,NULL,17.75,'2021-06-10 15:10:57',NULL),
(140,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000','selangor Jaya Taman','Naz','60145563265',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,7.70,'2021-06-10 15:13:45',NULL),
(141,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','dafs','sd','0232343234',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,23.90,'2021-06-10 15:20:55',NULL),
(142,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000','selangor Jaya Taman','Naz','60145563265',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,7.70,'2021-06-10 15:23:50',NULL),
(143,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','D-09-09. casatiara service apartment, jalan kemajuan subang ss16','Irasakumar','019280272',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,14.55,'2021-06-10 15:33:29',NULL),
(144,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000','selangor Jaya Taman','Naz','60145563265',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,7.70,'2021-06-10 15:34:01',NULL),
(145,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','D-09-09, Casatiara Service Apartment, Jalan Kemajuan Subang Ss16, ','Irasakumar','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,14.55,'2021-06-10 15:35:58',NULL),
(146,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','D-09-09, Casatiara Service Apartment, Jalan Kemajuan Subang SS16, ','Irasakumar','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,14.55,'2021-06-10 15:45:26',NULL),
(147,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,14.55,'2021-06-10 16:07:57',NULL),
(148,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,14.55,'2021-06-10 16:09:33',NULL),
(149,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,14.55,'2021-06-10 16:12:35',NULL),
(150,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,14.55,'2021-06-10 16:15:12',NULL),
(151,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,14.55,'2021-06-10 16:16:29',NULL),
(152,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,14.55,'2021-06-10 16:17:36',NULL),
(153,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,14.55,'2021-06-10 16:19:14',NULL),
(154,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,14.55,'2021-06-10 16:25:15',NULL),
(155,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,14.55,'2021-06-10 16:27:10',NULL),
(156,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','Casatiara Serive Apartment','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,14.55,'2021-06-10 16:35:32',NULL),
(157,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','asdsadsad','adsasdad','132213321',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,17.85,'2021-06-11 02:12:25',NULL),
(158,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','asdsadsad','adsasdad','132213321',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,17.85,'2021-06-11 02:12:35',NULL),
(159,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','asdsadsad','adsasdad','132213321',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,17.85,'2021-06-11 02:12:40',NULL),
(160,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','asdsadsad','adsasdad','132213321',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,17.85,'2021-06-11 02:12:50',NULL),
(161,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','asdsadsad','adsasdad','132213321',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,17.85,'2021-06-11 02:13:08',NULL),
(162,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','12, jalan prima 1/2, taman puchong prima','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,5.00,'2021-06-11 02:22:13',NULL),
(163,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA','D-09-09, Casatiara Service Apartment, Jalan Kemajuan, SS16','Kumar','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,11.23,'2021-06-11 02:56:25',NULL),
(164,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,null','Casatiara Serive Apartment,47500,Subang Jaya,Selangor','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,14.55,'2021-06-11 03:09:52',NULL),
(165,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,null','Casatiara Serive Apartment,47500,Subang Jaya,Selangor','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,14.55,'2021-06-11 03:10:26',NULL),
(166,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','D-09-09, Casatiara Service Apartment, Jalan Kemajuan Subang SS16,47500,Subang Jaya,Selangor','Kumar','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0356300997',0,NULL,NULL,NULL,11.23,'2021-06-11 03:14:21',NULL),
(167,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','D-09-09, Casatiara Service Apartment, Jalan Kemajuan Subang SS16,47500,Subang Jaya,Selangor','Kumar','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,11.23,'2021-06-11 03:16:48',NULL),
(168,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,null','K-1-18 Apartment Dahlia, Taman Bunga Raya, Bukit Beruntung, 48300, Rawang, Selangor Darul Ehsan,48300,Rawang,Selangor','Muhammad Nazrul Hanif Bin M Harith','0193140901',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,49.22,'2021-06-11 03:21:29',NULL),
(169,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,null','Casatiara Serive Apartment,47500,Subang Jaya,Selangor','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,14.55,'2021-06-11 04:23:04',NULL),
(170,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','Casatiara Serive Apartment,47500,Subang Jaya,Selangor','Irasakumar','601162802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,14.55,'2021-06-11 04:28:26','d77ec150-008e-4d40-9d05-4c687345e08f'),
(171,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,null','adsfa,44000,mal,Melaka','adfa','923435163312',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',2,NULL,NULL,NULL,32.60,'2021-06-11 06:08:18',NULL),
(172,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000,4400,Faisalabad,null','No 20, Jln Uranus,40150,Shah Alam,Selangor','Nazrul Test','0193140901',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'elo',NULL,0,NULL,NULL,NULL,24.30,'2021-06-11 07:26:50',NULL),
(173,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000,4400,Faisalabad,null','R-2-15 Apartmen Dahlia,48300,Rawang,Selangor','Muhammad Nazrul Hanif','0193140901',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'elo',NULL,0,NULL,NULL,NULL,12.50,'2021-06-11 07:30:54',NULL),
(174,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000,4400,Faisalabad,null','R-2-15 Apt Dahlia,48300,Rawang,Selangor','Muhammad Nazrul Hanif','0193140901',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'elo',NULL,0,NULL,NULL,NULL,5.00,'2021-06-11 07:31:58',NULL),
(175,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000,4400,Faisalabad,null','R-2-15,40150,Shah Alam,Selangor','Muhammad Nazrul Hanif','0193140901',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'elo',NULL,0,NULL,NULL,NULL,5.00,'2021-06-11 07:34:07',NULL),
(176,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000,4400,Faisalabad,null','R-2-15,48300,Rawang,Selangor','Muhammad Nazrul Hanif','0193140901',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'elo',NULL,0,NULL,NULL,NULL,5.00,'2021-06-11 07:35:25',NULL),
(177,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000,4400,Faisalabad,null','R-2-15 ,48300,Rawang,Selangor','Muhammad Nazrul','0193140901',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'elo',NULL,0,NULL,NULL,NULL,5.00,'2021-06-11 07:40:13',NULL),
(178,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000,4400,Faisalabad,null','R-2-15 ,48300,Rawang,Selangor','Muhammad Nazrul Hanif','0193140901',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'elo',NULL,0,NULL,NULL,NULL,5.00,'2021-06-11 07:40:34',NULL),
(179,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,null','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Sarosh','923215031806',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-11 11:56:05',NULL),
(180,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,null','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Sarosh','923215031806',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-11 12:06:24',NULL),
(181,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,null','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Sarosh','923215031806',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-11 12:16:41',NULL),
(182,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,null','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Sarosh','923215031806',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-11 12:27:00',NULL),
(183,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,null','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Sarosh','923215031806',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-11 12:37:28',NULL),
(184,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,null','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Sarosh','923215031806',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-11 12:47:41',NULL),
(185,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000,4400,Faisalabad,null','sfasfd,6265,Selangor,Selangor','Test name','6014525151',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'elo',NULL,0,NULL,NULL,NULL,5.00,'2021-06-14 10:40:56',NULL),
(186,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000,4400,Faisalabad,null','sfasfd,6265,Selangor,Selangor','Test name','6014525151',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'elo',NULL,0,NULL,NULL,NULL,5.00,'2021-06-15 06:59:43',NULL),
(187,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,null','Pangsapuri Villamas Apartment, alan Pipit, Bandar Puchong Jaya,47170,Puchong,Selangor','Irasakumar','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,10.35,'2021-06-15 10:58:09',NULL),
(188,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,null','Pangsapuri Villamas Apartment,\nJalan Pipit, Bandar Puchong Jaya,47170,Puchong,Selangor','Irasakumar','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,10.35,'2021-06-15 11:00:41',NULL),
(189,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,null','Pangsapuri Villamas Apartment,\nJalan Pipit, Bandar Puchong Jaya,47170,Puchong,Selangor','Irasakumar','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,10.35,'2021-06-15 11:11:12',NULL),
(190,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,null','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500 ,Subang Jaya,Selangor','Shoaib','923215031806',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-15 11:15:03',NULL),
(191,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,null','D-09-09, Casatiara Service Apartment, Jalan Kemajuan Subang Ss16,47500,Subang Jaya,Selangor','Irasakumar','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,14.55,'2021-06-15 11:15:41',NULL),
(192,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,null','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500 ,Subang Jaya,Selangor','Shoaib','923215031806',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-15 11:19:37',NULL),
(193,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,null','D-09-09, Casatiara Service Apartment, Jalan kemajuan Subang SS16,47500,Subang Jaya,Selangor','Irasakumar','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,14.55,'2021-06-15 11:21:54',NULL),
(194,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,null','D-09-09, Casatiara Service Apartment, Jalan Kemajuan Subang Ss16,47500,Subang Jaya,Selangor','Irasakumar','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,14.55,'2021-06-15 11:23:23',NULL),
(195,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','D-09-09, Casatiara Service Apartment, Jalan kemajuan Subang Jaya,47500,Subang Jaya,Selangor','Irasakumar','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,14.55,'2021-06-16 05:15:39','9cdb78c1-543d-49c7-b543-c0db9e5f2623'),
(196,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000,4400,Faisalabad,null','sfasfd,6265,Selangor,Selangor','Test name','6014525151',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'elo',NULL,0,NULL,NULL,NULL,5.00,'2021-06-16 07:13:36','591c3a17-7be1-4fba-bcc6-d552d56a0813'),
(197,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','12, jalan prima 1/2, taman puchong prima,47150,puchong,Selangor','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,5.00,'2021-06-16 07:39:18','6dcde5b9-3a55-480d-904d-abe4e17a8f01'),
(198,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','1,jalan prima 1/2, taman puchong prima,47150,puchong,Selangor','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,5.00,'2021-06-16 08:06:38','1523ced4-3179-4910-b406-2a0665c292a0'),
(199,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Faisal hayat','923134171371',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-16 09:34:51','0439aee0-b57f-4cf5-81c4-f93d6103c57f'),
(200,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Faisal Hayat','923134171371',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-16 09:48:18','0439aee0-b57f-4cf5-81c4-f93d6103c57f'),
(201,'4',NULL,'parcel',NULL,'SS15, Subang jaya, Selangor,43650,Subang Jaya,null','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Faisal Hayat','923134171371',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'mcd',NULL,1,NULL,NULL,NULL,5.00,'2021-06-16 10:31:31','McDCart3'),
(202,'4',NULL,'parcel',NULL,'SS15, Subang jaya, Selangor,43650,Subang Jaya,null','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Faisal Hayat','923134171371',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'mcd',NULL,0,NULL,NULL,NULL,5.00,'2021-06-16 10:41:38','McDCart3'),
(203,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Faisal Hayat','923134171371',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-16 11:01:33','0439aee0-b57f-4cf5-81c4-f93d6103c57f'),
(204,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Faisal Hayat','923134171371',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-16 11:15:56','0439aee0-b57f-4cf5-81c4-f93d6103c57f'),
(205,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor\n,47500 ,Subang Jaya,Selangor','Shoaib','923215031806',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-16 12:22:08','3b2a8bf0-c82b-4038-9d6a-cd1a6c210d45'),
(206,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000,4400,Faisalabad,null','sfasfd,6265,Selangor,Selangor','Test name','6014525151',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'elo',NULL,0,NULL,NULL,NULL,5.00,'2021-06-17 04:50:33','591c3a17-7be1-4fba-bcc6-d552d56a0813'),
(207,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Faisal Hayat','9231341713731',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-17 05:50:44','0439aee0-b57f-4cf5-81c4-f93d6103c57f'),
(208,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Faisal Hayat','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-17 06:38:47','0439aee0-b57f-4cf5-81c4-f93d6103c57f'),
(209,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','11, jalan prima 3/3, taman puchong prima,47150,puchong,Selangor','albert','0133309331',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,5.00,'2021-06-17 06:56:08','3e0c4728-c3c8-4eff-bbe1-903c4ffe5466'),
(210,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000,4400,Faisalabad,null','sfasfd,6265,Selangor,Selangor','Test name','6014525151',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'elo',NULL,0,NULL,NULL,NULL,5.00,'2021-06-17 07:23:56','591c3a17-7be1-4fba-bcc6-d552d56a0813'),
(211,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Faisal Hayat','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-17 09:08:59','0439aee0-b57f-4cf5-81c4-f93d6103c57f'),
(212,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Faisal Hayat','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-17 09:30:28','0439aee0-b57f-4cf5-81c4-f93d6103c57f'),
(213,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Faisal hayat','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-17 10:00:11','0439aee0-b57f-4cf5-81c4-f93d6103c57f'),
(214,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Faisal Hayat','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-17 10:39:35','0439aee0-b57f-4cf5-81c4-f93d6103c57f'),
(215,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','Home,40000,Shah Alam,Selangor','Ahmad Miqdaad','1312123213',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.95,'2021-06-17 11:53:07','d77ec150-008e-4d40-9d05-4c687345e08f'),
(216,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','asdadsasd,123231,sdasdasda,Selangor','Ahmad Miqdaad','601436565',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,24.45,'2021-06-17 11:54:48','d77ec150-008e-4d40-9d05-4c687345e08f'),
(217,'undefined',NULL,'parcel',NULL,'11 KM Satayana Rd, Faisalabad, Punjab 38000,4400,Faisalabad,null','sfasfd,6265,Selangor,Selangor','Test name','6014525151',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'elo',NULL,0,NULL,NULL,NULL,5.00,'2021-06-17 12:04:48','591c3a17-7be1-4fba-bcc6-d552d56a0813'),
(218,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','asdsadsa,321321,adssdaasd,Selangor','fdsfsdsfd','6545456456',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,36.30,'2021-06-17 12:06:23','d77ec150-008e-4d40-9d05-4c687345e08f'),
(219,'undefined',NULL,'parcel',NULL,'SS15, Subang jaya, Selangor,43650,Subang Jaya,null','Jemmy Selangor,12345,Subang Jaya,Pahang','Jemmy','60123456789',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'mcd',NULL,0,NULL,NULL,NULL,21.60,'2021-06-17 12:06:37','a7ddd595-4c12-4f23-855c-b889de4243f1'),
(220,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','qweewqweq,132123321,asddassda,Selangor','qweqweqwe','132123132',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,24.45,'2021-06-17 12:12:02','d77ec150-008e-4d40-9d05-4c687345e08f'),
(221,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','qweewqweq,132123321,asddassda,Selangor','qweqweqwe','132123132',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,24.45,'2021-06-17 12:22:06','d77ec150-008e-4d40-9d05-4c687345e08f'),
(222,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','adssda,132213,asdsdadsa,Selangor','asds','434123423',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,24.45,'2021-06-17 12:24:26','d77ec150-008e-4d40-9d05-4c687345e08f'),
(223,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','dassad,213132123,asdsda,Selangor','asddsasad','312123213',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,24.45,'2021-06-17 12:25:40','d77ec150-008e-4d40-9d05-4c687345e08f'),
(224,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Faisal Hayat','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-18 07:25:54','0439aee0-b57f-4cf5-81c4-f93d6103c57f'),
(225,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Faisal Hayat','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-18 07:38:19','0439aee0-b57f-4cf5-81c4-f93d6103c57f'),
(226,'undefined',NULL,'parcel',NULL,'24, JALAN PRIMA 3/5, TAMAN PUCHONG PRIMA,47150,PUCHONG,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500,Subang Jaya,Selangor','Faisal Hayat','0192802728',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0133309331',0,NULL,NULL,NULL,13.75,'2021-06-18 09:42:24','0439aee0-b57f-4cf5-81c4-f93d6103c57f'),
(227,'undefined',NULL,'parcel',NULL,'7A, Jalan SS4D/2, People\'s Park,47301,Petaling Jaya,Selangor','Cinema Online,47301,Petaling Jaya,Selangor','Nurhaziqah','013195394',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0378051527',1,NULL,NULL,NULL,5.00,'2021-06-21 05:13:52','bbb3c65e-4e5a-45c6-9936-a33a1846baa7'),
(228,'undefined',NULL,'parcel',NULL,'7A, Jalan SS4D/2, People\'s Park,47301,Petaling Jaya,Selangor','Cinema Online,47301,Petaling Jaya,Selangor','Nurhaziqah','0123195394',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0378051527',0,NULL,NULL,NULL,5.00,'2021-06-21 06:02:39','bbb3c65e-4e5a-45c6-9936-a33a1846baa7'),
(229,'undefined',NULL,'parcel',NULL,'7A, Jalan SS4D/2, People\'s Park,47301,Petaling Jaya,Selangor','Cinema Online,47301,Petaling Jaya,Selangor','Nurhaziqah','0123195394',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0378051527',0,NULL,NULL,NULL,5.00,'2021-06-21 06:05:07','bbb3c65e-4e5a-45c6-9936-a33a1846baa7'),
(230,'undefined',NULL,'parcel',NULL,'7A, Jalan SS4D/2, People\'s Park,47301,Petaling Jaya,Selangor','Cinema Online,47301,Petaling Jaya,Selangor','Nurhaziqah','0123195394',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0378051527',0,NULL,NULL,NULL,5.00,'2021-06-21 06:07:12','bbb3c65e-4e5a-45c6-9936-a33a1846baa7'),
(231,'undefined',NULL,'parcel',NULL,'7A, Jalan SS4D/2, People\'s Park,47301,Petaling Jaya,Selangor','Cinema Online,47301,Petaling Jaya,Selangor','Nurhaziqah','0123195394',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0378051527',0,NULL,NULL,NULL,5.00,'2021-06-21 06:43:25','bbb3c65e-4e5a-45c6-9936-a33a1846baa7'),
(232,'undefined',NULL,'parcel',NULL,'7A, Jalan SS4D/2, People\'s Park,47301,Petaling Jaya,Selangor','Cinema Online,47301,Petaling Jaya,Selangor','Nurhaziqah','0123195394',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0378051527',0,NULL,NULL,NULL,5.00,'2021-06-21 06:44:26','bbb3c65e-4e5a-45c6-9936-a33a1846baa7'),
(233,'undefined',NULL,'parcel',NULL,'7A, Jalan SS4D/2, People\'s Park,47301,Petaling Jaya,Selangor','Cinema Online,47301,Petaling Jaya,Johor','Nurhaziqah','0123195394',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0378051527',0,NULL,NULL,NULL,5.00,'2021-06-21 06:47:49','bbb3c65e-4e5a-45c6-9936-a33a1846baa7'),
(234,'undefined',NULL,'parcel',NULL,'7A, Jalan SS4D/2, People\'s Park,47301,Petaling Jaya,Selangor','Cinema Online,47301,Petaling Jaya,Wp Kuala Lumpur','Nurhaziqah','0123195394',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0378051527',0,NULL,NULL,NULL,5.00,'2021-06-21 06:47:52','bbb3c65e-4e5a-45c6-9936-a33a1846baa7'),
(235,'undefined',NULL,'parcel',NULL,'7A, Jalan SS4D/2, People\'s Park,47301,Petaling Jaya,Selangor','Cinema Online,47301,Petaling Jaya,Selangor','Nurhaziqah','0123195394',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0378051527',0,NULL,NULL,NULL,5.00,'2021-06-21 06:47:58','bbb3c65e-4e5a-45c6-9936-a33a1846baa7'),
(236,'undefined',NULL,'parcel',NULL,'7A, Jalan SS4D/2, People\'s Park,47301,Petaling Jaya,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500 ,Subang Jaya,Selangor','Sarosh','923215031806',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0378051527',0,NULL,NULL,NULL,7.05,'2021-06-21 09:42:16','3b2a8bf0-c82b-4038-9d6a-cd1a6c210d45'),
(237,'undefined',NULL,'parcel',NULL,'7A, Jalan SS4D/2, People\'s Park,47301,Petaling Jaya,Selangor','7A, Jalan SS4D/2,\nPeople’s Park,\n47301 Petaling Jaya,\nSelangor Darul Ehsan,\nMalaysia,47301,Petaling Jaya,Selangor','Elena','01116760459',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0378051527',0,NULL,NULL,NULL,5.00,'2021-06-21 09:42:35','fc28bdb8-bb52-4e2f-8029-b7557ee9ec1e'),
(238,'undefined',NULL,'parcel',NULL,'7A, Jalan SS4D/2, People\'s Park,47301,Petaling Jaya,Selangor','7A, Jalan SS4D/2, People’s Park,47301,Petaling Jaya,Selangor','Elena','01116760459',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0378051527',0,NULL,NULL,NULL,5.00,'2021-06-21 09:42:53','fc28bdb8-bb52-4e2f-8029-b7557ee9ec1e'),
(239,'undefined',NULL,'parcel',NULL,'7A, Jalan SS4D/2, People\'s Park,47301,Petaling Jaya,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500 ,Subang Jaya,Selangor','Sarosh','923215031806',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0378051527',0,NULL,NULL,NULL,7.05,'2021-06-21 09:52:22','3b2a8bf0-c82b-4038-9d6a-cd1a6c210d45'),
(240,'undefined',NULL,'parcel',NULL,'7A, Jalan SS4D/2, People\'s Park,47301,Petaling Jaya,Selangor','No: 7A, Jalan SS4D/2, People’s Park,47301,Petaling Jaya,Selangor','Elena Lim','01116760459',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0378051527',0,NULL,NULL,NULL,5.00,'2021-06-21 09:53:31','fc28bdb8-bb52-4e2f-8029-b7557ee9ec1e'),
(241,'undefined',NULL,'parcel',NULL,'7A, Jalan SS4D/2, People\'s Park,47301,Petaling Jaya,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500 ,Subang Jaya,Selangor','Sarosh','923215031806',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0378051527',0,NULL,NULL,NULL,7.05,'2021-06-21 10:04:29','3b2a8bf0-c82b-4038-9d6a-cd1a6c210d45'),
(242,'undefined',NULL,'parcel',NULL,'7A, Jalan SS4D/2, People\'s Park,47301,Petaling Jaya,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500 ,Subang Jaya,Selangor','Sarosh','923215031806',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0378051527',0,NULL,NULL,NULL,7.05,'2021-06-21 10:13:58','3b2a8bf0-c82b-4038-9d6a-cd1a6c210d45'),
(243,'undefined',NULL,'parcel',NULL,'7A, Jalan SS4D/2, People\'s Park,47301,Petaling Jaya,Selangor','First Subang, Unit S-14-09, Level 14, Jalan SS15/4G, 47500 Subang Jaya, Selangor,47500 ,Subang Jaya,Selangor','Sarosh','923215031806',1,NULL,NULL,'PENDING',NULL,NULL,'MOTORCYCLE',NULL,'Cinema Online','0378051527',0,NULL,NULL,NULL,7.05,'2021-06-21 10:40:29','3b2a8bf0-c82b-4038-9d6a-cd1a6c210d45');

/*Table structure for table `delivery_sp` */

DROP TABLE IF EXISTS `delivery_sp`;

CREATE TABLE `delivery_sp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `contactNo` varchar(50) DEFAULT NULL,
  `contactPerson` varchar(100) DEFAULT NULL,
  `getPriceClassname` varchar(500) DEFAULT NULL,
  `submitOrderClassName` varchar(500) DEFAULT NULL,
  `cancelOrderClassName` varchar(500) DEFAULT NULL,
  `queryOrderClassName` varchar(500) DEFAULT NULL,
  `spCallbackClassname` varchar(500) DEFAULT NULL,
  `pickupDateClassname` varchar(500) DEFAULT NULL,
  `pickupTimeClassname` varchar(500) DEFAULT NULL,
  `locationIdClassname` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `delivery_sp` */

insert  into `delivery_sp`(`id`,`name`,`address`,`contactNo`,`contactPerson`,`getPriceClassname`,`submitOrderClassName`,`cancelOrderClassName`,`queryOrderClassName`,`spCallbackClassname`,`pickupDateClassname`,`pickupTimeClassname`,`locationIdClassname`) values 
(1,'mr speedy',NULL,NULL,NULL,'com.kalsym.deliveryservice.provider.MrSpeedy.GetPrice','com.kalsym.deliveryservice.provider.MrSpeedy.SubmitOrder','com.kalsym.deliveryservice.provider.MrSpeedy.CancelOrder','com.kalsym.deliveryservice.provider.MrSpeedy.QueryOrder','com.kalsym.deliveryservice.provider.MrSpeedy.OrderCallback',NULL,NULL,NULL),
(2,'gdex',NULL,NULL,NULL,'com.kalsym.deliveryservice.provider.Gdex.GetPrice','com.kalsym.deliveryservice.provider.Gdex.SubmitOrder','com.kalsym.deliveryservice.provider.Gdex.CancelOrder','com.kalsym.deliveryservice.provider.Gdex.GetOrderStatus',NULL,'com.kalsym.deliveryservice.provider.Gdex.GetPickupDate','com.kalsym.deliveryservice.provider.Gdex.GetPickupTime','com.kalsym.deliveryservice.provider.Gdex.GetLocationId'),
(3,'lalamove',NULL,NULL,NULL,'com.kalsym.deliveryservice.provider.LalaMove.GetPrice','com.kalsym.deliveryservice.provider.LalaMove.SubmitOrder','com.kalsym.deliveryservice.provider.LalaMove.CancelOrder','com.kalsym.deliveryservice.provider.LalaMove.GetOrderStatus',NULL,NULL,NULL,NULL);

/*Table structure for table `delivery_sp_config` */

DROP TABLE IF EXISTS `delivery_sp_config`;

CREATE TABLE `delivery_sp_config` (
  `spId` int(11) NOT NULL,
  `configField` varchar(100) NOT NULL,
  `configValue` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`spId`,`configField`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `delivery_sp_config` */

insert  into `delivery_sp_config`(`spId`,`configField`,`configValue`) values 
(1,'cancelorder_connect_timeout','10000'),
(1,'cancelorder_token','D214D4B3358CD1B3244CF94C365A1ADAF2D84218'),
(1,'cancelorder_url','https://robotapitest.mrspeedy.my/api/business/1.1/cancel-order'),
(1,'cancelorder_wait_timeout','40000'),
(1,'getprice_connect_timeout','10000'),
(1,'getprice_token','D214D4B3358CD1B3244CF94C365A1ADAF2D84218'),
(1,'getprice_url','https://robotapitest.mrspeedy.my/api/business/1.1/calculate-order'),
(1,'getprice_wait_timeout','40000'),
(1,'queryorder_connect_timeout','10000'),
(1,'queryorder_token','D214D4B3358CD1B3244CF94C365A1ADAF2D84218'),
(1,'queryorder_url','https://robotapitest.mrspeedy.my/api/business/1.1/orders'),
(1,'queryorder_wait_timeout','40000'),
(1,'ssl_version','TLSv1.2'),
(1,'submitorder_connect_timeout','10000'),
(1,'submitorder_token','D214D4B3358CD1B3244CF94C365A1ADAF2D84218'),
(1,'submitorder_url','https://robotapitest.mrspeedy.my/api/business/1.1/create-order'),
(1,'submitorder_wait_timeout','40000'),
(2,'cancelorder_connect_timeout','10000'),
(2,'cancelorder_key','b4495c44bc08433b8bfb1126a5b34a26'),
(2,'cancelorder_token','6GT86PveZUa28mWWrpStA'),
(2,'cancelorder_url','https://myopenapi.gdexpress.com/test/api/MyGDex/CancelConsignment'),
(2,'cancelorder_wait_timeout','40000'),
(2,'getlocation_connect_timeout','10000'),
(2,'getlocation_key','b4495c44bc08433b8bfb1126a5b34a26'),
(2,'getlocation_url','https://myopenapi.gdexpress.com/test/api/MyGDex/GetPostcodeLocations'),
(2,'getlocation_wait_timeout','40000'),
(2,'getpickupdate_connect_timeout','10000'),
(2,'getpickupdate_key','b4495c44bc08433b8bfb1126a5b34a26'),
(2,'getpickupdate_url','https://myopenapi.gdexpress.com/test/api/MyGDex/GetPickupDateListing'),
(2,'getpickupdate_wait_timeout','40000'),
(2,'getpickuptime_connect_timeout','10000'),
(2,'getpickuptime_key','b4495c44bc08433b8bfb1126a5b34a26'),
(2,'getpickuptime_url','https://myopenapi.gdexpress.com/test/api/MyGDex/GetPickupTimeSlots'),
(2,'getpickuptime_wait_timeout','40000'),
(2,'getprice_connect_timeout','10000'),
(2,'getprice_key','b4495c44bc08433b8bfb1126a5b34a26'),
(2,'getprice_token','6GT86PveZUa28mWWrpStA'),
(2,'getprice_url','https://myopenapi.gdexpress.com/test/api/MyGDex/GetShippingRate'),
(2,'getprice_wait_timeout','40000'),
(2,'getstatus_connect_timeout','10000'),
(2,'getstatus_key','b4495c44bc08433b8bfb1126a5b34a26'),
(2,'getstatus_url','https://myopenapi.gdexpress.com/test/api/MyGDex/GetLastShipmentStatus'),
(2,'getstatus_wait_timeout','40000'),
(2,'ssl_version','TLSv1.2'),
(2,'submitorder_connect_timeout','10000'),
(2,'submitorder_key','b4495c44bc08433b8bfb1126a5b34a26'),
(2,'submitorder_token','6GT86PveZUa28mWWrpStA'),
(2,'submitorder_url','https://myopenapi.gdexpress.com/test/api/MyGDex/CreateConsignment'),
(2,'submitorder_wait_timeout','40000'),
(3,'apiKey','6e4e7adb5797632e54172dc2dd2ca748'),
(3,'domainUrl','https://sandbox-rest.lalamove.com/'),
(3,'getprice_connect_timeout','30000'),
(3,'getprice_url','v2/quotations'),
(3,'getprice_wait_timeout','35000'),
(3,'queryorder_connect_timeout','30000'),
(3,'queryorder_url','https://sandbox-rest.lalamove.com/v2/orders/'),
(3,'queryorder_wait_timeout','35000'),
(3,'secretKey','7p0CJjVxlfEpg/EJWi/y9+6pMBK9yvgYzVeOUKSYZl4/IztYSh6ZhdcdpRpB15ty'),
(3,'ssl_version','SSL');

/*Table structure for table `delivery_sp_ip` */

DROP TABLE IF EXISTS `delivery_sp_ip`;

CREATE TABLE `delivery_sp_ip` (
  `ip` varchar(20) NOT NULL,
  `spId` int(11) DEFAULT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `delivery_sp_ip` */

insert  into `delivery_sp_ip`(`ip`,`spId`) values 
('18.138.65.29',1);

/*Table structure for table `delivery_sp_rate_plan` */

DROP TABLE IF EXISTS `delivery_sp_rate_plan`;

CREATE TABLE `delivery_sp_rate_plan` (
  `spId` int(11) NOT NULL AUTO_INCREMENT,
  `productCode` varchar(100) NOT NULL,
  `marginType` varchar(20) DEFAULT NULL,
  `margin` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`spId`,`productCode`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `delivery_sp_rate_plan` */

insert  into `delivery_sp_rate_plan`(`spId`,`productCode`,`marginType`,`margin`) values 
(1,'document','PERCENTAGE',5.0000),
(1,'PACKAGING','PERCENTAGE',0.0000),
(1,'parcel','PERCENTAGE',1.0000);

/*Table structure for table `payment_orders` */

DROP TABLE IF EXISTS `payment_orders`;

CREATE TABLE `payment_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` varchar(100) DEFAULT NULL,
  `spId` varchar(100) DEFAULT NULL,
  `itemDescription` varchar(100) DEFAULT NULL,
  `productCode` varchar(100) DEFAULT NULL,
  `spOrderId` varchar(1000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `statusDescription` varchar(200) DEFAULT NULL,
  `systemTransactionId` varchar(100) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `spErrorCode` varchar(200) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `clientTransactionId` varchar(100) DEFAULT NULL,
  `callbackUrl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=408 DEFAULT CHARSET=latin1;

/*Data for the table `payment_orders` */

insert  into `payment_orders`(`id`,`customerId`,`spId`,`itemDescription`,`productCode`,`spOrderId`,`status`,`statusDescription`,`systemTransactionId`,`createdDate`,`spErrorCode`,`updatedDate`,`clientTransactionId`,`callbackUrl`) values 
(1,'1',NULL,NULL,'document','You will be charged at  MOBIVERSA  for RM0.11 on 08-Mar-2021 14:38. Click to Confirm payment https://ecom.mobiversa.com/UMEzyway/um?sl=6qk892CBBBX6q',NULL,NULL,'12312312355','2021-03-08 06:38:39',NULL,NULL,NULL,NULL),
(2,'1',NULL,NULL,'document','You will be charged at  MOBIVERSA  for RM0.11 on 08-Mar-2021 15:08. Click to Confirm payment https://ecom.mobiversa.com/UMEzyway/um?sl=kTc8FD4AE0gyO',NULL,NULL,'12312312356','2021-03-08 07:08:19',NULL,NULL,NULL,NULL),
(3,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM0.11 on 08-Mar-2021 15:11. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=VAl9021E35LKP',NULL,NULL,'12312312357','2021-03-08 07:11:35',NULL,NULL,NULL,NULL),
(4,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM0.11 on 08-Mar-2021 15:17. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=rkk90B48BFk6U',NULL,NULL,'12312312357','2021-03-08 07:17:35',NULL,NULL,NULL,NULL),
(5,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM0.11 on 08-Mar-2021 15:20. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=EKO9101465leb',NULL,NULL,'12312312358','2021-03-08 07:20:50',NULL,NULL,NULL,NULL),
(6,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM0.11 on 08-Mar-2021 15:44. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=oOZ9342D7Bbdm',NULL,NULL,'123123123599','2021-03-08 07:44:15',NULL,NULL,NULL,NULL),
(7,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM0.11 on 08-Mar-2021 15:55. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=180944CB609jo',NULL,NULL,'123123123600','2021-03-08 07:55:04',NULL,NULL,NULL,NULL),
(8,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM0.11 on 08-Mar-2021 15:59. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=BBx94BBE461Nm',NULL,NULL,'123123123601','2021-03-08 08:00:00',NULL,NULL,NULL,NULL),
(9,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM0.11 on 08-Mar-2021 16:02. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=za098D3F77VF6',NULL,NULL,'123123123602','2021-03-08 08:02:53',NULL,NULL,NULL,NULL),
(10,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM0.11 on 08-Mar-2021 16:10. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=C0O998DAFDuvV',NULL,NULL,'123123123603','2021-03-08 08:10:13',NULL,NULL,NULL,NULL),
(11,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM0.11 on 08-Mar-2021 16:13. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=lM699E00CBUC7',NULL,NULL,'123123123604','2021-03-08 08:13:51',NULL,NULL,NULL,NULL),
(12,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM0.11 on 08-Mar-2021 16:19. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=qga9A68FE5E2J',NULL,NULL,'123123123605','2021-03-08 08:19:12',NULL,NULL,NULL,NULL),
(13,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM0.11 on 08-Mar-2021 17:38. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=H68A5C4C4Eir0',NULL,NULL,'123123123606','2021-03-08 09:38:22',NULL,NULL,NULL,NULL),
(14,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM2.11 on 08-Mar-2021 17:41. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=lgIA6096236aX',NULL,NULL,'123123123607','2021-03-08 09:41:03',NULL,NULL,NULL,NULL),
(15,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM2.11 on 08-Mar-2021 17:44. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=fSSA65B474XA7',NULL,NULL,'123123123607','2021-03-08 09:44:38',NULL,NULL,NULL,NULL),
(16,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM2.11 on 08-Mar-2021 17:45. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=9baA67173C3hr',NULL,NULL,'123123123608','2021-03-08 09:45:29',NULL,NULL,NULL,NULL),
(17,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM2.11 on 08-Mar-2021 18:04. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=bXhAC162A5NJh',NULL,NULL,'123123123700','2021-03-08 10:04:47',NULL,NULL,NULL,NULL),
(18,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM2.11 on 08-Mar-2021 18:06. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=4zWAC3E471n0m',NULL,NULL,'123123123701','2021-03-08 10:06:11',NULL,NULL,NULL,NULL),
(19,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM2.11 on 08-Mar-2021 18:11. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=SZQACB7ECEonH',NULL,NULL,'123123123609','2021-03-08 10:11:09',NULL,NULL,NULL,NULL),
(20,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM2.11 on 08-Mar-2021 18:24. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=SCRADFD211NiA',NULL,NULL,'123123123702','2021-03-08 10:24:41',NULL,NULL,NULL,NULL),
(21,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM2.11 on 09-Mar-2021 14:49. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=qcx8A3D3F9iaD',NULL,NULL,'123123123703','2021-03-09 06:49:55',NULL,NULL,NULL,NULL),
(22,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM2.11 on 09-Mar-2021 14:53. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=dqd8A974C7pvz',NULL,NULL,'123123123704','2021-03-09 06:53:24',NULL,NULL,NULL,NULL),
(23,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM2.11 on 09-Mar-2021 15:20. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=nbe9103087f31',NULL,NULL,'123123123705','2021-03-09 07:20:57',NULL,NULL,NULL,NULL),
(24,'1',NULL,NULL,'document','You will be charged at MOBIVERSA  for RM2.11 on 09-Mar-2021 15:26. Click payment https://ecom.mobiversa.com/UMEzyway/ezylink?sl=bSQ918E121YTK',NULL,NULL,'123123123706','2021-03-09 07:26:26',NULL,NULL,NULL,NULL),
(25,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY0903210819196111','2021-03-09 08:19:20',NULL,NULL,'123123123707',NULL),
(26,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY090321083110cf2a','2021-03-09 08:31:11',NULL,NULL,'123123123708',NULL),
(27,'1',NULL,NULL,'document','2103091642020077','SUCCESS',NULL,'PY09032108412988db','2021-03-09 08:41:30','00','2021-03-09 08:42:21','123123123709',NULL),
(28,'1',NULL,NULL,'document','21030900000000000928910003278193862','SUCCESS',NULL,'PY09032108430498f7','2021-03-09 08:43:05','0000','2021-03-09 08:45:34','123123123710',NULL),
(29,'1',NULL,NULL,'document','21030900000000000928910003278214871','FAILED',NULL,'PY0903210845593172','2021-03-09 08:46:00','0001','2021-03-09 08:46:51','123123123711',NULL),
(30,'1',NULL,NULL,'document','2103091653540110','FAILED',NULL,'PY0903210849211825','2021-03-09 08:49:22','1F','2021-03-09 08:54:23','123123123712',NULL),
(31,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY12032104175292c1','2021-03-12 04:17:53',NULL,NULL,'123123123712',NULL),
(32,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY1203210420149284','2021-03-12 04:20:15',NULL,NULL,'123123123712',NULL),
(33,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY120321042043f5d2','2021-03-12 04:20:44',NULL,NULL,'123123123712',NULL),
(34,'2',NULL,NULL,'document',NULL,NULL,NULL,'PY150321023411d80b','2021-03-15 02:34:12',NULL,NULL,'123123123607',NULL),
(35,'2',NULL,NULL,'document',NULL,NULL,NULL,'PY15032103135336e4','2021-03-15 03:13:54',NULL,NULL,'123123123607',NULL),
(36,'2',NULL,NULL,'document',NULL,NULL,NULL,'PY150321031637c951','2021-03-15 03:16:38',NULL,NULL,'123123123607',NULL),
(37,'2',NULL,NULL,'document',NULL,NULL,NULL,'PY150321032810daae','2021-03-15 03:28:11',NULL,NULL,'123123123607',NULL),
(38,'2',NULL,NULL,'document',NULL,NULL,NULL,'PY1503210333017cac','2021-03-15 03:33:02',NULL,NULL,'123123123600',NULL),
(39,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY150321034945474a','2021-03-15 03:49:47',NULL,NULL,'123123123712',NULL),
(40,'2',NULL,NULL,'document',NULL,NULL,NULL,'PY150321035623ef47','2021-03-15 03:56:24',NULL,NULL,'123123123610',NULL),
(41,'2',NULL,NULL,'document',NULL,NULL,NULL,'PY150321035733a832','2021-03-15 03:57:34',NULL,NULL,'123123123610',NULL),
(42,'2',NULL,NULL,'document',NULL,NULL,NULL,'PY1503210357507e95','2021-03-15 03:57:51',NULL,NULL,'123123123610',NULL),
(43,'2',NULL,NULL,'document',NULL,NULL,NULL,'PY1503210413399157','2021-03-15 04:13:40',NULL,NULL,'123123123610',NULL),
(44,'2',NULL,NULL,'document',NULL,NULL,NULL,'PY150321043159742a','2021-03-15 04:32:00',NULL,NULL,'123123123610',NULL),
(45,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY150321043656a126','2021-03-15 04:36:58',NULL,NULL,'123123123610',NULL),
(46,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY1503210437174c3e','2021-03-15 04:37:17',NULL,NULL,'123123123610',NULL),
(47,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY1503210451429887','2021-03-15 04:51:43',NULL,NULL,'123123123610',NULL),
(48,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY150321045150896a','2021-03-15 04:51:51',NULL,NULL,'123123123610',NULL),
(49,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY15032104531739f7','2021-03-15 04:53:18',NULL,NULL,'20210315125317',NULL),
(50,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY15032104545474f2','2021-03-15 04:54:55',NULL,NULL,'20210315125454',NULL),
(51,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY1503210601313857','2021-03-15 06:01:32',NULL,NULL,'20210315020131',NULL),
(52,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY150321060236d041','2021-03-15 06:02:37',NULL,NULL,'20210315020237',NULL),
(53,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY1503210603529421','2021-03-15 06:03:52',NULL,NULL,'20210315020352',NULL),
(54,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY150321060415a1b6','2021-03-15 06:04:16',NULL,NULL,'20210315020416',NULL),
(55,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY15032106073016a5','2021-03-15 06:07:30',NULL,NULL,'20210315020730',NULL),
(56,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY150321095527e457','2021-03-15 09:55:28',NULL,NULL,'20210315055526',NULL),
(57,'1',NULL,NULL,'document','2103151821480155','SUCCESS',NULL,'PY150321102119ce35','2021-03-15 10:21:20','00','2021-03-15 10:22:16','20210315062119',NULL),
(58,'1',NULL,NULL,'document','2103151825360162','SUCCESS',NULL,'PY1503211024312fe9','2021-03-15 10:24:32','00','2021-03-15 10:26:03','20210315062431',NULL),
(59,'1',NULL,NULL,'document','2103161235390757','SUCCESS',NULL,'PY160321043447ffb7','2021-03-16 04:34:48','00','2021-03-16 04:36:07','12312312371211',NULL),
(60,'1',NULL,NULL,'document','2103161349590871','SUCCESS',NULL,'PY160321054854510e','2021-03-16 05:48:55','00','2021-03-16 05:50:29','R123123111',NULL),
(61,'1',NULL,NULL,'document','2103161357040884','SUCCESS',NULL,'PY160321055629630e','2021-03-16 05:56:31','00','2021-03-16 05:57:27','R123123111',NULL),
(62,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY190321033427d0c7','2021-03-19 03:34:28',NULL,NULL,'20210319113428',NULL),
(63,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY190321040446cfcf','2021-03-19 04:04:47',NULL,NULL,'20210319120447',NULL),
(64,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY190321050744dbf1','2021-03-19 05:07:45',NULL,NULL,'20210319010745',NULL),
(65,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY1903210512019962','2021-03-19 05:12:02',NULL,NULL,'20210319011202',NULL),
(66,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY060421102949b3a8','2021-04-06 10:29:50',NULL,NULL,'123123123712',NULL),
(67,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY060421125651d5ae','2021-04-06 12:56:52',NULL,NULL,'20210406085651',NULL),
(68,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY0604211317452f97','2021-04-06 13:17:45',NULL,NULL,'20210406091745',NULL),
(69,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY0804210847194959','2021-04-08 08:47:20',NULL,NULL,'20210408044719',NULL),
(70,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY080421084827f0bb','2021-04-08 08:48:28',NULL,NULL,'20210408044827',NULL),
(71,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY080421084900e370','2021-04-08 08:49:01',NULL,NULL,'20210408044900',NULL),
(72,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY080421091720cf3c','2021-04-08 09:17:23',NULL,NULL,'20210408051720',NULL),
(73,'4',NULL,NULL,'document','2104081721130571','SUCCESS',NULL,'PY0804210920132125','2021-04-08 09:20:14','00','2021-04-08 09:21:36','20210408052013',NULL),
(74,'1',NULL,NULL,'document',NULL,NULL,NULL,'PY080421101324358b','2021-04-08 10:13:25',NULL,NULL,'20210408061324',NULL),
(75,'4',NULL,NULL,'document','2104081823350701','SUCCESS',NULL,'PY0804211022557579','2021-04-08 10:22:56','00','2021-04-08 10:23:48','20210408062255',NULL),
(76,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY080421103206fb88','2021-04-08 10:32:06',NULL,NULL,'20210408063206',NULL),
(77,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY0804211032062e14','2021-04-08 10:32:10',NULL,NULL,'20210408063206',NULL),
(78,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY080421103254d2f7','2021-04-08 10:32:55',NULL,NULL,'20210408063255',NULL),
(79,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY080421103254fdd1','2021-04-08 10:32:55',NULL,NULL,'20210408063255',NULL),
(80,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY0804211034212b50','2021-04-08 10:34:22',NULL,NULL,'20210408063421',NULL),
(81,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY08042110342185e7','2021-04-08 10:34:22',NULL,NULL,'20210408063421',NULL),
(82,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY0804211034571249','2021-04-08 10:34:58',NULL,NULL,'20210408063457',NULL),
(83,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY080421103457c6cd','2021-04-08 10:34:58',NULL,NULL,'20210408063457',NULL),
(84,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY08042110352615ff','2021-04-08 10:35:27',NULL,NULL,'20210408063527',NULL),
(85,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY080421103526e4ef','2021-04-08 10:35:27',NULL,NULL,'20210408063527',NULL),
(86,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY0804211037537ca6','2021-04-08 10:37:54',NULL,NULL,'20210408063753',NULL),
(87,'4',NULL,NULL,'document','2104081838230713','SUCCESS',NULL,'PY08042110375392b5','2021-04-08 10:37:54','00','2021-04-08 10:38:55','20210408063753',NULL),
(88,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY0804211040311c6a','2021-04-08 10:40:32',NULL,NULL,'20210408064031',NULL),
(89,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY08042110403140d4','2021-04-08 10:40:32',NULL,NULL,'20210408064031',NULL),
(90,'4',NULL,NULL,'document','2104081841000718','SUCCESS',NULL,'PY0804211040311b96','2021-04-08 10:40:32','00','2021-04-08 10:41:16','20210408064031',NULL),
(91,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY0804211042463ac2','2021-04-08 10:42:47',NULL,NULL,'20210408064246',NULL),
(92,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY080421104246b8e5','2021-04-08 10:42:47',NULL,NULL,'20210408064246',NULL),
(93,'4',NULL,NULL,'document','2104081843300720','SUCCESS',NULL,'PY0804211042464132','2021-04-08 10:42:50','00','2021-04-08 10:43:41','20210408064246',NULL),
(94,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY0904210309221bdd','2021-04-09 03:09:23',NULL,NULL,'20210409110922',NULL),
(95,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY0904210309225106','2021-04-09 03:09:23',NULL,NULL,'20210409110922',NULL),
(96,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY090421030922b313','2021-04-09 03:09:23',NULL,NULL,'20210409110922',NULL),
(97,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY230421085304aa99','2021-04-23 08:53:08',NULL,NULL,'20210423045304',NULL),
(98,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY230421085308e65f','2021-04-23 08:53:09',NULL,NULL,'20210423045304',NULL),
(99,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY2304210853042d43','2021-04-23 08:53:10',NULL,NULL,'20210423045304',NULL),
(100,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY230421085304a881','2021-04-23 08:53:10',NULL,NULL,'20210423045304',NULL),
(101,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY23042108530492d0','2021-04-23 08:53:10',NULL,NULL,'20210423045304',NULL),
(102,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY2304210853047e86','2021-04-23 08:53:10',NULL,NULL,'20210423045304',NULL),
(103,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY2304210853046025','2021-04-23 08:53:10',NULL,NULL,'20210423045304',NULL),
(104,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY2304210855297d3a','2021-04-23 08:55:30',NULL,NULL,'20210423045530',NULL),
(105,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY2304210855298e90','2021-04-23 08:55:30',NULL,NULL,'20210423045530',NULL),
(106,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY230421085529af46','2021-04-23 08:55:31',NULL,NULL,'20210423045530',NULL),
(107,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY23042108552945a5','2021-04-23 08:55:31',NULL,NULL,'20210423045530',NULL),
(108,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY230421085529d978','2021-04-23 08:55:31',NULL,NULL,'20210423045530',NULL),
(109,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY230421085529f92a','2021-04-23 08:55:31',NULL,NULL,'20210423045530',NULL),
(110,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY230421085530523e','2021-04-23 08:55:31',NULL,NULL,'20210423045530',NULL),
(111,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY2304210856285c1b','2021-04-23 08:56:29',NULL,NULL,'20210423045629',NULL),
(112,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY23042108580115bc','2021-04-23 08:58:02',NULL,NULL,'20210423045802',NULL),
(113,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY2304210921308a80','2021-04-23 09:21:31',NULL,NULL,'20210423052130',NULL),
(114,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY230421092232b453','2021-04-23 09:22:33',NULL,NULL,'20210423052233',NULL),
(115,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY23042109240325d4','2021-04-23 09:24:04',NULL,NULL,'20210423052403',NULL),
(116,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY230421092516fefe','2021-04-23 09:25:17',NULL,NULL,'20210423052516',NULL),
(117,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY2304210929385219','2021-04-23 09:29:39',NULL,NULL,'20210423052938',NULL),
(118,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY230421093023892c','2021-04-23 09:30:24',NULL,NULL,'20210423053023',NULL),
(119,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY23042109311475ba','2021-04-23 09:31:14',NULL,NULL,'20210423053114',NULL),
(120,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY2304210932014c3b','2021-04-23 09:32:02',NULL,NULL,'20210423053201',NULL),
(121,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY230421093236f176','2021-04-23 09:32:37',NULL,NULL,'20210423053236',NULL),
(122,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY230421094204f1cd','2021-04-23 09:42:05',NULL,NULL,'20210423054205',NULL),
(123,'4',NULL,NULL,'document','21042900000000000928910003278826383','SUCCESS',NULL,'PY230421094306d576','2021-04-23 09:43:07','0000','2021-04-29 08:35:16','20210423054307',NULL),
(124,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY230421100019992d','2021-04-23 10:00:20',NULL,NULL,'20210423060019',NULL),
(125,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY2304211001193473','2021-04-23 10:01:20',NULL,NULL,'20210423060120',NULL),
(126,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY270421040940c6ce','2021-04-27 04:09:41',NULL,NULL,'20210427120940',NULL),
(127,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY270421042047c29e','2021-04-27 04:20:48',NULL,NULL,'20210427122049',NULL),
(128,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY270421042051a532','2021-04-27 04:20:52',NULL,NULL,'20210427122052',NULL),
(129,'4',NULL,NULL,'document','2104271308050657','SUCCESS',NULL,'PY2704210507475dba','2021-04-27 05:07:48','00','2021-04-27 06:37:51','20210427010747',NULL),
(130,'4',NULL,NULL,'document','2104271318070674','SUCCESS',NULL,'PY270421051735bc70','2021-04-27 05:17:36','00','2021-04-27 05:18:29','20210427011736',NULL),
(131,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY2704210534524cbd','2021-04-27 05:34:53',NULL,NULL,'20210427013452',NULL),
(132,'4',NULL,NULL,'document','2104271336330704','SUCCESS',NULL,'PY270421053607e81c','2021-04-27 05:36:08','00','2021-04-27 05:36:47','20210427013607',NULL),
(133,'4',NULL,NULL,'document','2104271354190737','SUCCESS',NULL,'PY27042105535958da','2021-04-27 05:54:00','00','2021-04-27 05:54:34','20210427015359',NULL),
(134,'4',NULL,NULL,'document','2104271430450817','SUCCESS',NULL,'PY2704210629041012','2021-04-27 06:29:04','00','2021-04-27 06:30:59','20210427022904',NULL),
(135,'4',NULL,NULL,'document','2104271440090837','SUCCESS',NULL,'PY2704210639503134','2021-04-27 06:39:51','00','2021-04-27 06:40:23','20210427023950',NULL),
(136,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY280421095541ebe8','2021-04-28 09:55:42',NULL,NULL,'20210428025540',NULL),
(137,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY280421103058c0c7','2021-04-28 10:30:59',NULL,NULL,'20210428033057',NULL),
(138,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY2904210455478ac7','2021-04-29 04:55:48',NULL,NULL,'20210429095547',NULL),
(139,'4',NULL,NULL,'document','2104291657270108','SUCCESS',NULL,'PY290421085537585b','2021-04-29 08:55:38','00','2021-04-29 08:58:33','20210429045537',NULL),
(140,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY30042105131494fb','2021-04-30 05:13:16',NULL,NULL,'20210430101314',NULL),
(141,'4',NULL,NULL,'document','2105031641400474','SUCCESS',NULL,'PY030521084022d919','2021-05-03 08:40:23','00','2021-05-03 08:41:59','20210503044021',NULL),
(142,'4',NULL,NULL,'document','2105051029500291','SUCCESS',NULL,'PY05052102290199a9','2021-05-05 02:29:03','00','2021-05-05 02:32:04','20210505102902',NULL),
(143,'4',NULL,NULL,'document','2105051158450543','SUCCESS',NULL,'PY0505210357418e3c','2021-05-05 03:57:43','00','2021-05-05 03:59:08','20210505115741','http://localhost:4200'),
(144,'4',NULL,NULL,'document','2105051202310550','SUCCESS',NULL,'PY0505210401585e37','2021-05-05 04:01:59','00','2021-05-05 04:02:53','20210505120158','http://localhost:4200thankyou'),
(145,'4',NULL,NULL,'document','2105051205590558','SUCCESS',NULL,'PY0505210405314a38','2021-05-05 04:05:32','00','2021-05-05 04:06:22','20210505120531','http://localhost:4200/thankyou'),
(146,'4',NULL,NULL,'document','2105051541330933','SUCCESS',NULL,'PY050521074043dd2a','2021-05-05 07:40:46','00','2021-05-05 07:41:56','20210505034043','http://localhost:4200/thankyou'),
(147,'4',NULL,NULL,'document','2105051638350061','SUCCESS',NULL,'PY050521083743b703','2021-05-05 08:37:45','00','2021-05-05 08:39:05','20210505043743','http://localhost:4200/thankyou'),
(148,'4',NULL,NULL,'document','2105071734380501','SUCCESS',NULL,'PY070521093311442d','2021-05-07 09:33:13','00','2021-05-07 09:35:11','20210507053311',NULL),
(149,'4',NULL,NULL,'document','2105100831210127','SUCCESS',NULL,'PY1005210030473508','2021-05-10 00:30:48','00','2021-05-10 00:32:00','20210510083049',NULL),
(150,'4',NULL,NULL,'document','2105100854570136','SUCCESS',NULL,'PY1005210053521ebf','2021-05-10 00:53:53','00','2021-05-10 00:55:48','20210510085353',NULL),
(151,'4',NULL,NULL,'document','2105100949570177','SUCCESS',NULL,'PY100521014854bc38','2021-05-10 01:48:55','00','2021-05-10 01:50:28','04860d20-f58a-4fcd-bb78-269d6e463193','https://elo.symplified.store/thankyou'),
(152,'4',NULL,NULL,'document','2105100959330189','SUCCESS',NULL,'PY10052101591020c9','2021-05-10 01:59:11','00','2021-05-10 02:00:00','04860d20-f58a-4fcd-bb78-269d6e463193','https://elo.symplified.store/thankyou'),
(153,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY100521022610a2fd','2021-05-10 02:26:11',NULL,NULL,'04860d20-f58a-4fcd-bb78-269d6e463193','http://localhost:4200/thankyou'),
(154,'4',NULL,NULL,'document','2105101118050320','SUCCESS',NULL,'PY100521031706a551','2021-05-10 03:17:07','00','2021-05-10 03:18:33','04860d20-f58a-4fcd-bb78-269d6e463193','http://localhost:4200/thankyou'),
(155,'4',NULL,NULL,'document','2105101143400378','SUCCESS',NULL,'PY100521034304f515','2021-05-10 03:43:06','00','2021-05-10 03:44:13','04860d20-f58a-4fcd-bb78-269d6e463193','https://elo.symplified.store/thankyou'),
(156,'4',NULL,NULL,'document','2105101206500404','SUCCESS',NULL,'PY1005210406197fb3','2021-05-10 04:06:20','00','2021-05-10 04:07:17','04860d20-f58a-4fcd-bb78-269d6e463193','https://elo.symplified.store/thankyou'),
(157,'4',NULL,NULL,'document','2105101217090419','SUCCESS',NULL,'PY1005210416434aa5','2021-05-10 04:16:45','00','2021-05-10 04:17:42','04860d20-f58a-4fcd-bb78-269d6e463193','https://elo.symplified.store/thankyou'),
(158,'4',NULL,NULL,'document','2105101239410456','SUCCESS',NULL,'PY1005210439009025','2021-05-10 04:39:01','00','2021-05-10 04:40:02','04860d20-f58a-4fcd-bb78-269d6e463193','https://elo.symplified.store/thankyou'),
(159,'4',NULL,NULL,'document','2105101249120473','SUCCESS',NULL,'PY1005210448437fd7','2021-05-10 04:48:44','00','2021-05-10 04:49:38','04860d20-f58a-4fcd-bb78-269d6e463193','https://elo.symplified.store/thankyou'),
(160,'4',NULL,NULL,'document','2105101253570480','SUCCESS',NULL,'PY100521045326ea7c','2021-05-10 04:53:27','00','2021-05-10 04:54:25','0416b3bb-bd89-4c62-a953-463975239502','https://elo.symplified.store/thankyou'),
(161,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY10052108160145c9','2021-05-10 08:16:02',NULL,NULL,'0416b3bb-bd89-4c62-a953-463975239502','https://elo.symplified.store/thankyou'),
(162,'4',NULL,NULL,'document','2105101642520896','SUCCESS',NULL,'PY100521084141d675','2021-05-10 08:41:42','00','2021-05-10 09:08:53','0416b3bb-bd89-4c62-a953-463975239502','https://elo.symplified.store/thankyou'),
(163,'4',NULL,NULL,'document','2105101718490959','SUCCESS',NULL,'PY100521091717fc31','2021-05-10 09:17:18','00','2021-05-10 09:19:17','0416b3bb-bd89-4c62-a953-463975239502','https://elo.symplified.store/thankyou'),
(164,'4',NULL,NULL,'document','2105110952350355','SUCCESS',NULL,'PY110521015124ce0f','2021-05-11 01:51:25','00','2021-05-11 01:52:57','0416b3bb-bd89-4c62-a953-463975239502','https://elo.symplified.store/thankyou'),
(165,'4',NULL,NULL,'document','2105111028340400','SUCCESS',NULL,'PY110521022719b78a','2021-05-11 02:27:20','00','2021-05-11 02:28:58','0416b3bb-bd89-4c62-a953-463975239502','https://elo.symplified.store/thankyou'),
(166,'4',NULL,NULL,'document','2105111239490608','SUCCESS',NULL,'PY110521043909b590','2021-05-11 04:39:10','00','2021-05-11 04:40:12','0416b3bb-bd89-4c62-a953-463975239502','https://elo.symplified.store/thankyou'),
(167,'4',NULL,NULL,'document','2105111606000944','SUCCESS',NULL,'PY1105210805243c4e','2021-05-11 08:05:25','00','2021-05-11 08:06:26','0fe0703b-b3c7-4d40-82ed-d3bf5ca6a8fe','https://mcd.symplified.store/thankyou'),
(168,'4',NULL,NULL,'document','2105111613560963','SUCCESS',NULL,'PY110521081334b9cd','2021-05-11 08:13:35','00','2021-05-11 08:14:17','0fe0703b-b3c7-4d40-82ed-d3bf5ca6a8fe','https://mcd.symplified.store/thankyou'),
(169,'4',NULL,NULL,'document','2105111622360979','SUCCESS',NULL,'PY1105210822103aa0','2021-05-11 08:22:11','00','2021-05-11 08:23:03','046bcc71-2c08-4d87-864b-de90bddec338','https://mcd.symplified.store/thankyou'),
(170,'4',NULL,NULL,'document','2105111633530005','SUCCESS',NULL,'PY110521083253aa31','2021-05-11 08:32:54','00','2021-05-11 08:34:15','046bcc71-2c08-4d87-864b-de90bddec338','https://mcd.symplified.store/thankyou'),
(171,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY110521090059c867','2021-05-11 09:01:00',NULL,NULL,'04860d20-f58a-4fcd-bb78-269d6e463193','https://elo.symplified.store/thankyou'),
(172,'4',NULL,NULL,'document','','FAILED',NULL,'PY170521075051b106','2021-05-17 07:50:52','XO','2021-05-17 07:56:40','04860d20-f58a-4fcd-bb78-269d6e463193','https://elo.symplified.store/thankyou'),
(173,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY1705210948559261','2021-05-17 09:48:56',NULL,NULL,'04860d20-f58a-4fcd-bb78-269d6e463193','https://elo.symplified.store/thankyou'),
(174,'4',NULL,NULL,'document','2105171824170176','SUCCESS',NULL,'PY170521102312fb01','2021-05-17 10:23:13','00','2021-05-17 10:30:37','5e31af7b-5f47-441e-9aa7-ab9db811bd40','https://symplified.store/thankyou'),
(175,'4',NULL,NULL,'document','2105201244210210','SUCCESS',NULL,'PY200521044353b86e','2021-05-20 04:43:54','00','2021-05-20 04:44:58','04860d20-f58a-4fcd-bb78-269d6e463193','https://elo.symplified.store/thankyou'),
(176,'4',NULL,NULL,'document','','FAILED',NULL,'PY240521102533ef2a','2021-05-24 10:25:36','48','2021-05-24 10:27:28','a92d532e-a205-4ddc-8fd1-585639dbc4c4','https://symplified.store/thankyou'),
(177,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY25052110525241d0','2021-05-25 10:52:53',NULL,NULL,'ae3187c3-500b-4422-9fc7-494c2c4d3225','https://symplified.store/thankyou'),
(178,'4',NULL,NULL,'document','21052500000000000928910003278951139','FAILED',NULL,'PY2505211055221e98','2021-05-25 10:55:23','0001','2021-05-25 10:56:58','77c7cb4e-450e-4ee0-83cf-6d6dae70883c','https://symplified.store/thankyou'),
(179,'4',NULL,NULL,'document','2105251907240947','SUCCESS',NULL,'PY250521110618d593','2021-05-25 11:06:19','00','2021-05-25 11:08:17','77c7cb4e-450e-4ee0-83cf-6d6dae70883c','https://symplified.store/thankyou'),
(180,'4',NULL,NULL,'document','2105251911350955','SUCCESS',NULL,'PY250521111057c18a','2021-05-25 11:10:58','00','2021-05-25 11:12:00','77c7cb4e-450e-4ee0-83cf-6d6dae70883c','https://symplified.store/thankyou'),
(181,'4',NULL,NULL,'document','21052600000000000928910003278117316','FAILED',NULL,'PY260521093627ff7d','2021-05-26 09:36:28','0001','2021-05-26 09:40:48','b8cc4bac-9cd7-413e-8ce7-a900aa60532a','https://bert-watch-store.symplified.store/thankyou'),
(182,'4',NULL,NULL,'document','2105271307250942','SUCCESS',NULL,'PY2705210506374638','2021-05-27 05:06:39','00','2021-05-27 05:08:27','665e6ba3-af26-458b-8c1d-f8800d4286b0','https://symplified.store/thankyou'),
(183,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY2705210514139f09','2021-05-27 05:14:14',NULL,NULL,'6472ef7d-b365-490c-9ed7-5237e9ae7ff8','https://symplified.store/thankyou'),
(184,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY270521054535b073','2021-05-27 05:45:36',NULL,NULL,'6472ef7d-b365-490c-9ed7-5237e9ae7ff8','https://symplified.store/thankyou'),
(185,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY270521054913c6c1','2021-05-27 05:49:14',NULL,NULL,'29d1645a-fe7b-45aa-9259-96cccb68aeea','https://symplified.store/thankyou'),
(186,'4',NULL,NULL,'document','2105271839150457','SUCCESS',NULL,'PY270521103546d081','2021-05-27 10:35:47','00','2021-05-27 10:39:53','9675456f-016a-45a3-a9d3-a9f0816a7d63-','https://cinema-online.symplified.store/thankyou'),
(187,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY2805210311072d80','2021-05-28 03:11:07',NULL,NULL,'046bcc71-2c08-4d87-864b-de90bddec338','https://mcd.symplified.store/thankyou'),
(188,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY280521041519117a','2021-05-28 04:15:20',NULL,NULL,'046bcc71-2c08-4d87-864b-de90bddec338','http://mcd.test:4200/thankyou'),
(189,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY2805210417046d6e','2021-05-28 04:17:05',NULL,NULL,'046bcc71-2c08-4d87-864b-de90bddec338','http://mcd.test:4200/thankyou'),
(190,'4',NULL,NULL,'document','2105281620440477','FAILED',NULL,'PY28052108201137b8','2021-05-28 08:20:13','1C','2021-05-28 08:21:10','29d1645a-fe7b-45aa-9259-96cccb68aeea','https://symplified.store/thankyou'),
(191,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY3105210654019573','2021-05-31 06:54:02',NULL,NULL,'29d1645a-fe7b-45aa-9259-96cccb68aeea','https://symplified.store/thankyou'),
(192,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY31052107103295ef','2021-05-31 07:10:33',NULL,NULL,'1ce702d3-bcc0-456e-b81b-4f5e2052bf94','https://symplified.store/thankyou'),
(193,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY310521071403d9b3','2021-05-31 07:14:04',NULL,NULL,'1ce702d3-bcc0-456e-b81b-4f5e2052bf94','https://symplified.store/thankyou'),
(194,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY310521072525ad71','2021-05-31 07:25:26',NULL,NULL,'1ce702d3-bcc0-456e-b81b-4f5e2052bf94','https://symplified.store/thankyou'),
(195,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY310521073010c33f','2021-05-31 07:30:11',NULL,NULL,'0eb7c45d-04cb-448c-b7ff-c899c370667c','https://symplified.store/thankyou'),
(196,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY0106211100212a9c','2021-06-01 11:00:24',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(207,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0106211458251b0f','2021-06-01 14:58:28',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(208,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621150408a56f','2021-06-01 15:04:11',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(209,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY01062115054130ac','2021-06-01 15:05:44',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(210,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0106211507183ce4','2021-06-01 15:07:21',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(211,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY0106211507377bed','2021-06-01 15:07:38',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(212,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY010621151531534b','2021-06-01 15:15:33',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(213,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY01062115174842dc','2021-06-01 15:17:51',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(214,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY01062115291071b2','2021-06-01 15:29:14',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(215,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY010621153212c2e4','2021-06-01 15:32:15',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(216,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY01062115370582bf','2021-06-01 15:37:06',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(217,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY0106211541005631','2021-06-01 15:41:02',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(218,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621154111eb8d','2021-06-01 15:41:12',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(219,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0106211545495cc0','2021-06-01 15:45:52',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(220,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY010621154600aad7','2021-06-01 15:46:02',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(221,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY0106211558446257','2021-06-01 15:58:46',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(222,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0106211558519db5','2021-06-01 15:58:53',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(223,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0106211730523d48','2021-06-01 17:30:53',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(224,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY0106210939545467','2021-06-01 09:39:56',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(225,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621174634ff76','2021-06-01 17:46:36',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(226,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0106211118178a72','2021-06-01 11:18:19',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(227,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0106211118241347','2021-06-01 11:18:26',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(228,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0106211924457e54','2021-06-01 19:24:48',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(229,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621112642128f','2021-06-01 11:26:44',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(230,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621192841c7f6','2021-06-01 19:28:42',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(231,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621113300168a','2021-06-01 11:33:01',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(232,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621113937381d','2021-06-01 11:39:39',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(233,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0106211140117ead','2021-06-01 11:40:12',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(234,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0106211140153b7e','2021-06-01 11:40:16',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(235,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621194132691b','2021-06-01 19:41:34',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(236,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621194249a36d','2021-06-01 19:42:51',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(237,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY01062119464047e5','2021-06-01 19:46:43',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(238,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621114908f46e','2021-06-01 11:49:10',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(239,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621114914470c','2021-06-01 11:49:16',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(240,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621114940b9b4','2021-06-01 11:49:41',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(241,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY01062119521386ea','2021-06-01 19:52:14',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(242,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621121018f8e8','2021-06-01 12:10:21',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e690',NULL),
(243,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621121042461d','2021-06-01 12:10:43',NULL,NULL,'f913a473-88af-40e6-851c-5c073825e612',NULL),
(244,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY0106211212171560','2021-06-01 12:12:19',NULL,NULL,'046bcc71-2c08-4d87-864b-de90bddec338',NULL),
(245,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY01062112212657c5','2021-06-01 12:21:27',NULL,NULL,'046bcc71-2c08-4d87-864b-de90bddec338',NULL),
(246,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0106211223324928','2021-06-01 12:23:33',NULL,NULL,'046bcc71-2c08-4d87-864b-de90bddec338',NULL),
(247,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0106211223367e17','2021-06-01 12:23:37',NULL,NULL,'046bcc71-2c08-4d87-864b-de90bddec338',NULL),
(248,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621122354803f','2021-06-01 12:23:55',NULL,NULL,'046bcc71-2c08-4d87-864b-de90bddec338',NULL),
(249,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621122734faad','2021-06-01 12:27:35',NULL,NULL,'046bcc71-2c08-4d87-864b-de90bddec338',NULL),
(250,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621203258f179','2021-06-01 20:33:00',NULL,NULL,'46bcc71-2c08-4d87-864b-de90bddec338',NULL),
(251,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621203334ef08','2021-06-01 20:33:36',NULL,NULL,'046bcc71-2c08-4d87-864b-de90bddec338',NULL),
(252,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621203525476f','2021-06-01 20:35:28',NULL,NULL,'046bcc71-2c08-4d87-864b-de90bddec338',NULL),
(253,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY01062112371847cc','2021-06-01 12:37:19',NULL,NULL,'046bcc71-2c08-4d87-864b-de90bddec338',NULL),
(254,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621123809b7ec','2021-06-01 12:38:10',NULL,NULL,'046bcc71-2c08-4d87-864b-de90bddec338',NULL),
(255,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621124906d36e','2021-06-01 12:49:07',NULL,NULL,'046bcc71-2c08-4d87-864b-de90bddec338',NULL),
(256,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY010621124957f26d','2021-06-01 12:49:58',NULL,NULL,'046bcc71-2c08-4d87-864b-de90bddec338',NULL),
(257,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0106211250557bfa','2021-06-01 12:50:56',NULL,NULL,'046bcc71-2c08-4d87-864b-de90bddec338',NULL),
(258,'4',NULL,NULL,'document',NULL,NULL,NULL,'PY010621125558973e','2021-06-01 12:56:01',NULL,NULL,'046bcc71-2c08-4d87-864b-de90bddec338',NULL),
(259,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY01062112563130da','2021-06-01 12:56:32',NULL,NULL,'046bcc71-2c08-4d87-864b-de90bddec338',NULL),
(260,'4',NULL,NULL,'parcel','1622599507728263859','SUCCESS','Payment_was_successful','PY0106211328122219','2021-06-01 13:28:13','1','2021-06-02 02:12:58','9675456f-016a-45a3-a9d3-a9f0816a7d63',NULL),
(262,'4',NULL,NULL,'parcel','1622595781202263852','SUCCESS','Payment_was_successful','PY020621010230ff55','2021-06-02 01:02:32','1','2021-06-02 02:02:30','033baf8d-f304-4611-ad9b-5883b9481239-',NULL),
(263,'4',NULL,NULL,'parcel','1622599507728263859','SUCCESS','Payment_was_successful','PY0206210204299c14','2021-06-02 02:04:31','1','2021-06-02 02:47:38','033baf8d-f304-4611-ad9b-5883b94812391',NULL),
(264,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY020621031338d812','2021-06-02 03:13:40',NULL,NULL,'033baf8d-f304-4611-ad9b-5883b94812392',NULL),
(265,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY020621032047a33d','2021-06-02 03:20:49',NULL,NULL,'033baf8d-f304-4611-ad9b-5883b94812393',NULL),
(266,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0206210348131328','2021-06-02 03:48:16',NULL,NULL,'033baf8d-f304-4611-ad9b-5883b9481239',NULL),
(267,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0206210357046223','2021-06-02 03:57:06',NULL,NULL,'033baf8d-f304-4611-ad9b-5883b9481239',NULL),
(268,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0206210357435ad5','2021-06-02 03:57:44',NULL,NULL,'033baf8d-f304-4611-ad9b-5883b9481239',NULL),
(269,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0206210359497105','2021-06-02 03:59:50',NULL,NULL,'033baf8d-f304-4611-ad9b-5883b9481239',NULL),
(270,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY020621040132b088','2021-06-02 04:01:33',NULL,NULL,'033baf8d-f304-4611-ad9b-5883b9481239',NULL),
(271,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY020621040812159c','2021-06-02 04:08:13',NULL,NULL,'033baf8d-f304-4611-ad9b-5883b9481239',NULL),
(272,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0206210424087c3e','2021-06-02 04:24:09',NULL,NULL,'033baf8d-f304-4611-ad9b-5883b9481239',NULL),
(273,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY020621042652830a','2021-06-02 04:26:53',NULL,NULL,'033baf8d-f304-4611-ad9b-5883b9481239',NULL),
(278,'4',NULL,NULL,'parcel','1622609564491263854','SUCCESS','Payment_was_successful','PY020621055643e2a1','2021-06-02 05:56:45','1','2021-06-05 19:00:33','f688f5bd-584d-4389-b550-6e7a76d2c1ff',NULL),
(279,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY02062105583771b8','2021-06-02 05:58:39',NULL,NULL,'f402318e-abde-4f9c-9d88-8cb451bba4aa',NULL),
(280,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY02062106581490bf','2021-06-02 06:58:15',NULL,NULL,'7a57fc95-68e9-4b6c-91cc-fafb055bad48',NULL),
(281,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY020621070025b200','2021-06-02 07:00:27',NULL,NULL,'77eb0999-159d-44c9-9a88-28947555dce0',NULL),
(282,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY020621070149b15f','2021-06-02 07:01:50',NULL,NULL,'77eb0999-159d-44c9-9a88-28947555dce0',NULL),
(283,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0206210702432ce1','2021-06-02 07:02:44',NULL,NULL,'77eb0999-159d-44c9-9a88-28947555dce0',NULL),
(284,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0206211033485c65','2021-06-02 10:33:49',NULL,NULL,'046bcc71-2c08-4d87-864b-de90bddec338',NULL),
(285,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0306210603015624','2021-06-03 06:03:03',NULL,NULL,'033baf8d-f304-4611-ad9b-5883b9481239',NULL),
(286,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0306210634278073','2021-06-03 06:34:29',NULL,NULL,'033baf8d-f304-4611-ad9b-5883b9481239',NULL),
(287,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0306210944007837','2021-06-03 09:44:02',NULL,NULL,'16cdc783-f2e2-45d1-b3a6-a19883a11e08',NULL),
(288,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY030621094430573a','2021-06-03 09:44:31',NULL,NULL,'033baf8d-f304-4611-ad9b-5883b9481239',NULL),
(289,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0306211043195e98','2021-06-03 10:43:21',NULL,NULL,'033baf8d-f304-4611-ad9b-5883b9481239',NULL),
(290,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY030621104757e03c','2021-06-03 10:47:59',NULL,NULL,'16cdc783-f2e2-45d1-b3a6-a19883a11e08',NULL),
(291,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406210522011ba5','2021-06-04 05:22:03',NULL,NULL,'033baf8d-f304-4611-ad9b-5883b9481239',NULL),
(292,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621123036161a','2021-06-04 12:30:37',NULL,NULL,NULL,NULL),
(293,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211300008e1d','2021-06-04 13:00:02',NULL,NULL,NULL,NULL),
(294,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211309578033','2021-06-04 13:09:58',NULL,NULL,NULL,NULL),
(295,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY04062113265947b2','2021-06-04 13:27:01',NULL,NULL,NULL,NULL),
(296,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211332269d7a','2021-06-04 13:32:27',NULL,NULL,NULL,NULL),
(297,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621133642f193','2021-06-04 13:36:43',NULL,NULL,NULL,NULL),
(298,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY04062113383080f0','2021-06-04 13:38:31',NULL,NULL,NULL,NULL),
(299,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621134216a5de','2021-06-04 13:42:17',NULL,NULL,NULL,NULL),
(300,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621134420b9b8','2021-06-04 13:44:21',NULL,NULL,NULL,NULL),
(301,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621134959dd3c','2021-06-04 13:50:01',NULL,NULL,NULL,NULL),
(302,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211352571ce7','2021-06-04 13:52:58',NULL,NULL,NULL,NULL),
(303,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621135514f073','2021-06-04 13:55:16',NULL,NULL,NULL,NULL),
(304,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621135842359c','2021-06-04 13:58:44',NULL,NULL,NULL,NULL),
(305,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211400401de8','2021-06-04 14:00:42',NULL,NULL,NULL,NULL),
(306,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211404295809','2021-06-04 14:04:30',NULL,NULL,NULL,NULL),
(307,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621140532887e','2021-06-04 14:05:33',NULL,NULL,NULL,NULL),
(308,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211406199fd3','2021-06-04 14:06:20',NULL,NULL,NULL,NULL),
(309,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621140751eff9','2021-06-04 14:07:52',NULL,NULL,NULL,NULL),
(310,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211409542d6e','2021-06-04 14:09:55',NULL,NULL,NULL,NULL),
(311,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211410421165','2021-06-04 14:10:44',NULL,NULL,NULL,NULL),
(312,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621141231cc5d','2021-06-04 14:12:32',NULL,NULL,NULL,NULL),
(313,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211413185332','2021-06-04 14:13:19',NULL,NULL,NULL,NULL),
(314,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY04062114173375b3','2021-06-04 14:17:35',NULL,NULL,NULL,NULL),
(315,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621142117a346','2021-06-04 14:21:18',NULL,NULL,NULL,NULL),
(316,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621142401f15f','2021-06-04 14:24:03',NULL,NULL,NULL,NULL),
(317,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY04062114250212ce','2021-06-04 14:25:04',NULL,NULL,NULL,NULL),
(318,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621142711ea79','2021-06-04 14:27:13',NULL,NULL,NULL,NULL),
(319,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211430317a93','2021-06-04 14:30:33',NULL,NULL,NULL,NULL),
(320,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211431245d93','2021-06-04 14:31:27',NULL,NULL,NULL,NULL),
(321,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211433153f28','2021-06-04 14:33:16',NULL,NULL,NULL,NULL),
(322,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211435372b7a','2021-06-04 14:35:38',NULL,NULL,NULL,NULL),
(323,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY04062114365064d8','2021-06-04 14:36:52',NULL,NULL,NULL,NULL),
(324,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621144034692f','2021-06-04 14:40:36',NULL,NULL,NULL,NULL),
(325,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621144139fb08','2021-06-04 14:41:40',NULL,NULL,NULL,NULL),
(326,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621144228397f','2021-06-04 14:42:29',NULL,NULL,NULL,NULL),
(327,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211443282ea6','2021-06-04 14:43:29',NULL,NULL,NULL,NULL),
(328,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211447205248','2021-06-04 14:47:22',NULL,NULL,NULL,NULL),
(329,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211450018c45','2021-06-04 14:50:02',NULL,NULL,NULL,NULL),
(330,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621145155d9b5','2021-06-04 14:51:56',NULL,NULL,NULL,NULL),
(331,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621145206fe9d','2021-06-04 14:52:08',NULL,NULL,NULL,NULL),
(332,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211457156e82','2021-06-04 14:57:16',NULL,NULL,NULL,NULL),
(333,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY04062114585829ee','2021-06-04 14:59:00',NULL,NULL,NULL,NULL),
(334,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621150045bde8','2021-06-04 15:00:47',NULL,NULL,NULL,NULL),
(335,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211502207e2b','2021-06-04 15:02:21',NULL,NULL,NULL,NULL),
(336,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621150456100d','2021-06-04 15:04:58',NULL,NULL,NULL,NULL),
(337,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211505511e29','2021-06-04 15:05:53',NULL,NULL,NULL,NULL),
(338,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621151807c56c','2021-06-04 15:18:08',NULL,NULL,NULL,NULL),
(339,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621152533a3f5','2021-06-04 15:25:34',NULL,NULL,NULL,NULL),
(340,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY04062115270226b2','2021-06-04 15:27:04',NULL,NULL,NULL,NULL),
(341,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621152751baa6','2021-06-04 15:27:52',NULL,NULL,NULL,NULL),
(342,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0406211529257c02','2021-06-04 15:29:26',NULL,NULL,NULL,NULL),
(343,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY040621154034ef31','2021-06-04 15:40:36',NULL,NULL,NULL,NULL),
(344,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY05062101410030ef','2021-06-05 01:41:02',NULL,NULL,NULL,NULL),
(345,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY05062103504947e2','2021-06-05 03:50:50',NULL,NULL,NULL,NULL),
(346,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY070621094753256d','2021-06-07 09:47:55',NULL,NULL,NULL,NULL),
(347,'4',NULL,NULL,'parcel',NULL,NULL,NULL,'PY070621094955fb80','2021-06-07 09:49:56',NULL,NULL,NULL,NULL),
(348,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY070621101553b937','2021-06-07 10:15:54',NULL,NULL,'818dfdf4-e108-4a5b-953b-3c20f3090914',NULL),
(349,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY070621102559a0c4','2021-06-07 10:26:01',NULL,NULL,'dada250c-6832-4fbe-8321-08d3f54d327d',NULL),
(350,'undefined',NULL,NULL,'parcel','1623037892905263857','SUCCESS','Payment_was_successful','PY070621115023e453','2021-06-07 11:50:24','1','2021-06-07 11:51:58','8cda3bf4-e291-4aab-adcf-7eaaeb09b082',NULL),
(351,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY070621204704351b','2021-06-07 20:47:05',NULL,NULL,'4c2116c3-de96-4dd7-aa4a-00f16286debd',NULL),
(352,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0806211448103bf5','2021-06-08 14:48:12',NULL,NULL,'0c70fd5e-66e6-413a-8fd4-257b54927c4f',NULL),
(353,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0806211542019dc4','2021-06-08 15:42:02',NULL,NULL,'cb3b7039-5e8a-454e-9b8b-7622f78565d4',NULL),
(354,'undefined',NULL,NULL,'parcel','1623146340535263859','SUCCESS','Payment_was_successful','PY0806211757345ba0','2021-06-08 17:57:35','1','2021-06-08 18:01:02','fb9ef730-b6bf-40f4-95ac-476af72651ef',NULL),
(355,'undefined',NULL,NULL,'parcel','1623147290976263859','SUCCESS','Payment_was_successful','PY0806211814146291','2021-06-08 18:14:15','1','2021-06-08 18:15:19','62beab92-9b96-45a8-aa56-6d9cd885e37c',NULL),
(356,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0806211948544e5d','2021-06-08 19:48:55',NULL,NULL,'e5af40d8-8bec-4443-9115-520b05fd2ddb',NULL),
(357,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY0906211829417f81','2021-06-09 18:29:42',NULL,NULL,'8f602e94-1d74-4c20-8eb7-e572e37a4fef',NULL),
(358,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY100621220315e503','2021-06-10 22:03:17',NULL,NULL,'d916ae73-710d-424d-829c-96a52ef70464',NULL),
(359,'undefined',NULL,NULL,'parcel','1623334556642263859','SUCCESS','Payment_was_successful','PY1006212214576cef','2021-06-10 22:14:58','1','2021-06-10 22:16:27','6c9869ec-b533-4774-8c48-b7d293d7ac6a',NULL),
(360,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY100621221503c353','2021-06-10 22:15:05',NULL,NULL,'887d3a33-5729-4333-87e9-1d9a204c1134',NULL),
(361,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY100621223448e4d2','2021-06-10 22:34:49',NULL,NULL,'1f449b30-e097-49ff-9faf-699f8116b520',NULL),
(362,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY100621223552f9cf','2021-06-10 22:35:53',NULL,NULL,'e22eef40-35de-430d-82b5-e032f1f2febf',NULL),
(363,'undefined',NULL,NULL,'parcel','1623336086282263856','SUCCESS','Payment_was_successful','PY1006212240114f4c','2021-06-10 22:40:12','1','2021-06-10 22:42:08','d241fa42-803e-4e98-b923-336444a68e2b',NULL),
(364,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY100621230057aada','2021-06-10 23:00:59',NULL,NULL,'cda6ada5-925e-4055-8fe9-f77d39573870',NULL),
(365,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY100621231102e1a8','2021-06-10 23:11:04',NULL,NULL,'cea199b6-3e81-4115-8804-eb27bc1135a3',NULL),
(366,'undefined',NULL,NULL,'parcel','1623339385633263855','SUCCESS','Payment_was_successful','PY100621233541eecb','2021-06-10 23:35:43','1','2021-06-10 23:37:01','7f67279b-957a-40e9-b9d0-f707514c0c49',NULL),
(367,'undefined',NULL,NULL,'parcel','1623377570631263854','SUCCESS','Payment_was_successful','PY11062110121870a6','2021-06-11 10:12:20','1','2021-06-11 10:13:29','9368f9fe-a2ea-41a8-aba1-eb0b882377fc',NULL),
(368,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY110621104651885a','2021-06-11 10:46:52',NULL,NULL,'cafd411e-e4db-4454-9020-25c10b1f480d',NULL),
(369,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY110621110425e488','2021-06-11 11:04:26',NULL,NULL,'9c7f5451-3e6c-4bbe-ae2e-b17ab71df25c',NULL),
(370,'undefined',NULL,NULL,'parcel','1623380929150263859','SUCCESS','Payment_was_successful','PY1106211106489a8c','2021-06-11 11:06:49','1','2021-06-11 11:09:45','bb072c6b-3626-443b-965a-9513e831f943',NULL),
(371,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY1106211112375062','2021-06-11 11:12:38',NULL,NULL,'c6361f18-26ec-46a9-b463-1fc1a3b38b1a',NULL),
(372,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY110621135846aae5','2021-06-11 13:58:48',NULL,NULL,'b57a9281-d8a2-400f-a8a4-64d4af5a9b15',NULL),
(373,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY15062119094339ae','2021-06-15 19:09:45',NULL,NULL,'bcd65502-21b4-474c-8057-34ea2f54042f',NULL),
(374,'undefined',NULL,NULL,'parcel','1623755638682263856','SUCCESS','Payment_was_successful','PY1506211913307f86','2021-06-15 19:13:32','1','2021-06-15 19:15:14','1542716d-3077-4e5a-864e-94dc7928bf37',NULL),
(376,'undefined',NULL,NULL,'parcel','1623828609448263851','SUCCESS','Payment_was_successful','PY1606211529292b7a','2021-06-16 15:29:31','1','2021-06-16 15:30:40','10dc0520-e7b3-40ed-9de3-66155dc63b58',NULL),
(377,'undefined',NULL,NULL,'parcel','1623830285496263853','SUCCESS','Payment_was_successful','PY160621155641bebc','2021-06-16 15:56:42','1','2021-06-16 15:58:32','04a3d70b-857a-4538-95a2-d12d8bdce002',NULL),
(378,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY160621172506a5f2','2021-06-16 17:25:08',NULL,NULL,'a82bc566-90ed-4f21-bda9-c7111061a180',NULL),
(379,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY160621173830c1e6','2021-06-16 17:38:31',NULL,NULL,'6f55ff08-41cb-491b-86cd-ab5c43714f9f',NULL),
(380,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY160621185143d864','2021-06-16 18:51:45',NULL,NULL,'c24fcc37-2565-45cc-8765-7b9c343b84d4',NULL),
(381,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY160621190614c360','2021-06-16 19:06:15',NULL,NULL,'15bf341b-cdff-4d19-ae2e-af08a65583ff',NULL),
(382,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY1606212012206cc3','2021-06-16 20:12:21',NULL,NULL,'e2357b56-5816-4718-be6a-b142c6ad4303',NULL),
(383,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY170621134055872b','2021-06-17 13:40:57',NULL,NULL,'5e865a21-2785-4099-ad2e-f1b3351f687d',NULL),
(384,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY170621142930f803','2021-06-17 14:29:31',NULL,NULL,'4c10aa72-ef52-4494-8936-9b9db277ad23',NULL),
(385,'undefined',NULL,NULL,'parcel','1623912425302263857','SUCCESS','Payment_was_successful','PY17062114462590d0','2021-06-17 14:46:27','1','2021-06-17 14:48:30','1612467e-3e51-425e-8177-d8139dcb0b8c',NULL),
(386,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY170621165914f15f','2021-06-17 16:59:15',NULL,NULL,'3fa22c39-0519-4084-ba17-0c17928cf08a',NULL),
(387,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY170621172049fb01','2021-06-17 17:20:50',NULL,NULL,'f9bdc42a-d2e4-4de0-ba42-f7c916bf0e64',NULL),
(388,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY170621175830ac9e','2021-06-17 17:58:31',NULL,NULL,'8708ea18-c1d2-4ed6-a635-e6e02b92dec9',NULL),
(389,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY170621182946919f','2021-06-17 18:29:48',NULL,NULL,'fae3fa00-94e5-498d-b81a-78d0ac4199d5',NULL),
(390,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY170621194320a989','2021-06-17 19:43:21',NULL,NULL,'359fd226-2e76-4eb2-bbff-00832fd1ad42',NULL),
(391,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY1706211944526a14','2021-06-17 19:44:54',NULL,NULL,'84049983-709b-4aa0-93fb-a851c463d415',NULL),
(392,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY1706211956272308','2021-06-17 19:56:29',NULL,NULL,'1a3b564b-4c60-4804-900e-cf52b365cd84',NULL),
(393,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY170621200206b31a','2021-06-17 20:02:08',NULL,NULL,'b15f5196-6680-4e88-ada5-9892a35ba3e6',NULL),
(394,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY1706212014305ee9','2021-06-17 20:14:31',NULL,NULL,'1c547880-04e9-46ce-9bcd-7d1664eba9f9',NULL),
(395,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY170621201544384a','2021-06-17 20:15:45',NULL,NULL,'b91879c5-b010-4f0a-9dee-c86c1ac3757a',NULL),
(396,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY180621151603cf0c','2021-06-18 15:16:04',NULL,NULL,'a450f23f-d41b-48cc-9e4d-5de399a286ce',NULL),
(397,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY1806211528501121','2021-06-18 15:28:52',NULL,NULL,'cfb2e7f5-1b62-430a-812d-74c68588bb0e',NULL),
(398,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY1806211732298642','2021-06-18 17:32:30',NULL,NULL,'cf689cf1-f5c6-49cb-8672-20ff9847ad8c',NULL),
(399,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY21062113042099f1','2021-06-21 13:04:22',NULL,NULL,'96582ae8-5fbf-40d7-87f2-e743bc74e35c',NULL),
(400,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY2106211352446416','2021-06-21 13:52:45',NULL,NULL,'9c687524-9811-4f6e-ac81-9e35ab20fa60',NULL),
(401,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY2106211355083e92','2021-06-21 13:55:09',NULL,NULL,'e4bdaa2f-aa7f-49e0-8d7e-4c0c74c290c6',NULL),
(402,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY2106211357403bd3','2021-06-21 13:57:41',NULL,NULL,'ad835004-ed9d-4a21-b7e4-2c40c6cfeb71',NULL),
(403,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY210621143329e013','2021-06-21 14:33:30',NULL,NULL,'4042c620-49eb-4c2a-9f97-3a93e20222c5',NULL),
(404,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY21062114350714a2','2021-06-21 14:35:09',NULL,NULL,'97897430-3438-4f4f-8ddb-6ec84cc0bc93',NULL),
(405,'undefined',NULL,NULL,'parcel','1624257505989263858','SUCCESS','Payment_was_successful','PY21062114380324bd','2021-06-21 14:38:05','1','2021-06-21 14:40:18','89e577a9-3454-4d58-8729-640487c73141',NULL),
(406,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY210621173427b6a4','2021-06-21 17:34:28',NULL,NULL,'b6a92ef5-778c-47c4-b7fc-7c4b6c5012db',NULL),
(407,'undefined',NULL,NULL,'parcel',NULL,NULL,NULL,'PY210621174346463d','2021-06-21 17:43:48',NULL,NULL,'8d92a235-9b81-4f7c-a277-c57d0e66d9cb',NULL);

/*Table structure for table `payment_sp` */

DROP TABLE IF EXISTS `payment_sp`;

CREATE TABLE `payment_sp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `contactNo` varchar(50) DEFAULT NULL,
  `contactPerson` varchar(100) DEFAULT NULL,
  `makePaymentClassName` varchar(200) DEFAULT NULL,
  `spCallbackClassName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `payment_sp` */

insert  into `payment_sp`(`id`,`name`,`address`,`contactNo`,`contactPerson`,`makePaymentClassName`,`spCallbackClassName`) values 
(1,'Ezlink',NULL,NULL,NULL,'com.kalsym.paymentservice.provider.Ezlink.GeneratePaymentLink','com.kalsym.paymentservice.provider.Ezlink.OrderCallback'),
(2,'SenangPay',NULL,NULL,NULL,'com.kalsym.paymentservice.provider.SenangPay.SenangPayGeneratePayLink','com.kalsym.paymentservice.provider.SenangPay.SenangPayOrderCallback');

/*Table structure for table `payment_sp_config` */

DROP TABLE IF EXISTS `payment_sp_config`;

CREATE TABLE `payment_sp_config` (
  `spId` int(11) NOT NULL,
  `configField` varchar(100) NOT NULL,
  `configValue` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`spId`,`configField`),
  CONSTRAINT `payment_sp_config_ibfk_1` FOREIGN KEY (`spId`) REFERENCES `payment_sp` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `payment_sp_config` */

insert  into `payment_sp_config`(`spId`,`configField`,`configValue`) values 
(1,'generatelink_callbackurl','https://api.symplified.biz/v1/payment-service/payments/callback'),
(1,'generatelink_connect_timeout','10000'),
(1,'generatelink_KalsymKey','f07ad9f31df158edb188a41f725899fe'),
(1,'generatelink_loginId','Mobi013434'),
(1,'generatelink_mobiApiKey','b07ad9f31df158edb188a41f725899bc'),
(1,'generatelink_url','https://ecom.mobiversa.com/payment/mobihotelapi/jsonservice'),
(1,'generatelink_wait_timeout','40000'),
(1,'ssl_version','TLS_v1.2'),
(2,'senangPay_callbackurl','https://app.senangpay.my/payment/'),
(2,'senangPay_connect_timeout','10000'),
(2,'senangPay_KalsymKey','26385-129'),
(2,'senangPay_MerchantId','282161293241951'),
(2,'senangPay_url','https://app.senangpay.my/payment/'),
(2,'senangPay_wait_timeout','40000'),
(2,'ssl_version','TLS_v1.2');

/*Table structure for table `payment_sp_ip` */

DROP TABLE IF EXISTS `payment_sp_ip`;

CREATE TABLE `payment_sp_ip` (
  `ip` varchar(20) NOT NULL,
  `spId` int(11) DEFAULT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `payment_sp_ip` */

insert  into `payment_sp_ip`(`ip`,`spId`) values 
('27.125.250.44',1),
('27.125.250.92',1);

/*Table structure for table `payment_sp_rate_plan` */

DROP TABLE IF EXISTS `payment_sp_rate_plan`;

CREATE TABLE `payment_sp_rate_plan` (
  `spId` int(11) NOT NULL,
  `productCode` varchar(100) NOT NULL,
  `marginType` varchar(20) DEFAULT NULL,
  `margin` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`spId`,`productCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `payment_sp_rate_plan` */

insert  into `payment_sp_rate_plan`(`spId`,`productCode`,`marginType`,`margin`) values 
(1,'document','FIXFEE',0.0100),
(2,'parcel','FIXFEE',0.0100);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `productCode` varchar(100) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`productCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`productCode`,`description`) values 
('document','Document'),
('PACKAGING','PACKAGING'),
('parcel','Parcel');

/*Table structure for table `role_authorities` */

DROP TABLE IF EXISTS `role_authorities`;

CREATE TABLE `role_authorities` (
  `roleId` varchar(50) NOT NULL,
  `authorityId` varchar(100) NOT NULL,
  PRIMARY KEY (`roleId`,`authorityId`),
  KEY `authority` (`authorityId`),
  CONSTRAINT `role_authority_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_authority_ibfk_2` FOREIGN KEY (`authorityId`) REFERENCES `authorities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='A role has multiple authorities.';

/*Data for the table `role_authorities` */

insert  into `role_authorities`(`roleId`,`authorityId`) values 
('ADMIN','auth-service_authorities-get-by-service-id'),
('ADMIN','auth-service_authorities-post'),
('ADMIN','auth-service_authorities-sync'),
('ADMIN','auth-service_users-get-profile'),
('ADMIN','delivery-service_orders-cancel-order'),
('ADMIN','delivery-service_orders-get-price'),
('ADMIN','delivery-service_orders-query-order'),
('ADMIN','delivery-service_orders-submit-order');

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` varchar(50) NOT NULL COMMENT 'id is name of role. A role can have multiple authorities.',
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `allowedSimoultaneousSessions` int(11) DEFAULT 1 COMMENT 'User cannot have more than allowed session at one time.',
  `parentRoleId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`description`,`allowedSimoultaneousSessions`,`parentRoleId`) values 
('ADMIN',NULL,NULL,1,NULL),
('MAINTAINER',NULL,NULL,1,NULL);

/*Table structure for table `sequence_number` */

DROP TABLE IF EXISTS `sequence_number`;

CREATE TABLE `sequence_number` (
  `sp` varchar(10) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  PRIMARY KEY (`sp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sequence_number` */

insert  into `sequence_number`(`sp`,`sequence`) values 
('GDEX',148);

/*Table structure for table `services` */

DROP TABLE IF EXISTS `services`;

CREATE TABLE `services` (
  `id` varchar(100) DEFAULT NULL,
  `serviceName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `services` */

insert  into `services`(`id`,`serviceName`) values 
('flow-builder','Chatbot Flow Builder'),
('auth-service','Authentication & User Management '),
('delivery-service','Delivery Service');

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(50) NOT NULL,
  `remoteAddress` varchar(50) DEFAULT NULL COMMENT 'Ip address of user is stored while creating session.',
  `status` varchar(50) DEFAULT NULL,
  `expiry` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT current_timestamp(),
  `userId` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_idx` (`userId`),
  CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sessions` */

insert  into `sessions`(`id`,`remoteAddress`,`status`,`expiry`,`created`,`updated`,`userId`) values 
('074eb139-10b1-49b3-88b8-7e1a4a36b434','127.0.0.1','ACTIVE','2021-02-09 07:31:12','2021-02-09 03:31:12','2021-02-09 03:31:12','28894506-5435-4952-9049-d07cd7edb912'),
('0e238845-1fc4-47d0-b4f6-3395aeddeed6','127.0.0.1','ACTIVE','2021-02-09 08:05:13','2021-02-09 04:05:13','2021-02-09 04:05:13','28894506-5435-4952-9049-d07cd7edb912'),
('28fa4086-95e3-47e7-921c-bc3f57581635','127.0.0.1','ACTIVE','2021-02-12 08:24:21','2021-02-12 04:24:21','2021-02-12 04:24:21','28894506-5435-4952-9049-d07cd7edb912'),
('2a40598f-9768-422f-ba7b-0b8c34c4cb8e','127.0.0.1','ACTIVE','2021-02-12 08:09:29','2021-02-12 04:09:29','2021-02-12 04:09:29','28894506-5435-4952-9049-d07cd7edb912'),
('2e13f021-fc92-4e2e-8b4b-7986a9bfd65f','127.0.0.1','ACTIVE','2021-02-11 08:52:49','2021-02-11 04:52:49','2021-02-11 04:52:49','28894506-5435-4952-9049-d07cd7edb912'),
('2edba526-0242-414d-a208-6aac0e4d6615','127.0.0.1','ACTIVE','2021-02-03 16:01:36','2021-02-03 12:01:36','2021-02-03 12:01:36','28894506-5435-4952-9049-d07cd7edb912'),
('2fdf9ade-5ab5-48cc-b10b-eedc87a19ad0','127.0.0.1','ACTIVE','2021-02-09 08:26:56','2021-02-09 04:26:56','2021-02-09 04:26:56','28894506-5435-4952-9049-d07cd7edb912'),
('50bbc78d-3b60-4e76-9070-0d1e98e11d8b','127.0.0.1','ACTIVE','2021-02-03 16:44:24','2021-02-03 12:44:24','2021-02-03 12:44:24','28894506-5435-4952-9049-d07cd7edb912'),
('5379818d-108a-4fd0-b508-c8c1da1b656e','127.0.0.1','ACTIVE','2021-02-10 13:17:07','2021-02-10 09:17:07','2021-02-10 09:17:07','28894506-5435-4952-9049-d07cd7edb912'),
('58ba85fa-eac6-45de-a7e5-5d94e9705e28','127.0.0.1','ACTIVE','2021-02-09 12:39:19','2021-02-09 08:39:19','2021-02-09 08:39:19','28894506-5435-4952-9049-d07cd7edb912'),
('6ad86890-b269-4d61-855b-bd307473b63b','127.0.0.1','ACTIVE','2021-02-12 09:34:04','2021-02-12 05:34:04','2021-02-12 05:34:04','28894506-5435-4952-9049-d07cd7edb912'),
('6e4c479d-1d34-48fa-a969-10c5f23d5c6e','127.0.0.1','ACTIVE','2021-02-16 06:32:00','2021-02-16 02:32:00','2021-02-16 02:32:00','28894506-5435-4952-9049-d07cd7edb912'),
('70324da0-f4ed-4677-ac57-678c8d6e6f50','127.0.0.1','ACTIVE','2021-02-11 10:11:36','2021-02-11 06:11:36','2021-02-11 06:11:36','28894506-5435-4952-9049-d07cd7edb912'),
('7685d7a6-5764-4b4e-8203-5a437fe27fb1','127.0.0.1','ACTIVE','2021-02-11 08:34:36','2021-02-11 04:34:36','2021-02-11 04:34:36','28894506-5435-4952-9049-d07cd7edb912'),
('790e11ed-5bf9-4195-8d58-8b97abe66bb1','127.0.0.1','ACTIVE','2021-02-12 08:02:01','2021-02-12 04:02:01','2021-02-12 04:02:01','28894506-5435-4952-9049-d07cd7edb912'),
('7943dac2-66ad-48d7-9a40-46e39b348ff6','0:0:0:0:0:0:0:1','ACTIVE','2020-06-20 14:24:59','2020-06-20 13:26:39','2020-06-20 13:26:39','bb942258-183f-495e-99d1-3268ad307b11'),
('7e1f68c2-7c98-455c-b6d5-66483faad22f','127.0.0.1','ACTIVE','2021-02-04 15:58:24','2021-02-04 11:58:24','2021-02-04 11:58:24','28894506-5435-4952-9049-d07cd7edb912'),
('86675bce-6666-4378-a609-70d83424b7ee','127.0.0.1','ACTIVE','2021-02-09 14:18:36','2021-02-09 10:18:36','2021-02-09 10:18:36','28894506-5435-4952-9049-d07cd7edb912'),
('8a3608e1-ac6d-4db3-8bc1-f3a20a6119df','127.0.0.1','ACTIVE','2021-02-12 08:36:19','2021-02-12 04:36:19','2021-02-12 04:36:19','28894506-5435-4952-9049-d07cd7edb912'),
('8b4e970f-24c1-4338-b4f7-48dcc401ff9a','127.0.0.1','ACTIVE','2021-02-06 16:44:05','2021-02-06 12:44:05','2021-02-06 12:44:05','28894506-5435-4952-9049-d07cd7edb912'),
('922eefa6-1212-455c-acd8-ea153eebd7ac','127.0.0.1','ACTIVE','2021-02-04 11:10:34','2021-02-04 07:10:34','2021-02-04 07:10:34','28894506-5435-4952-9049-d07cd7edb912'),
('9231bca8-e258-4caa-b88d-d186589216d0','127.0.0.1','ACTIVE','2021-02-16 06:27:00','2021-02-16 02:27:00','2021-02-16 02:27:00','28894506-5435-4952-9049-d07cd7edb912'),
('a6bb4c2f-0b7f-4d0d-9913-0cc855db86e3','127.0.0.1','ACTIVE','2021-02-12 09:25:00','2021-02-12 05:25:00','2021-02-12 05:25:00','28894506-5435-4952-9049-d07cd7edb912'),
('a9ae8c66-5f87-4c7e-a4b8-1c6418ea0eea','127.0.0.1','ACTIVE','2021-02-12 09:32:15','2021-02-12 05:32:15','2021-02-12 05:32:15','28894506-5435-4952-9049-d07cd7edb912'),
('aaccb70c-5e82-4ffd-9170-bb6f66108539','127.0.0.1','ACTIVE','2021-02-11 13:02:49','2021-02-11 09:02:49','2021-02-11 09:02:49','28894506-5435-4952-9049-d07cd7edb912'),
('b0078779-a7ec-45fc-b3b2-684c020a459c','127.0.0.1','ACTIVE','2021-02-11 08:37:52','2021-02-11 04:37:52','2021-02-11 04:37:52','28894506-5435-4952-9049-d07cd7edb912'),
('b0d56a91-125f-4dec-8e06-198409c50099','127.0.0.1','ACTIVE','2021-02-12 08:07:32','2021-02-12 04:07:32','2021-02-12 04:07:32','28894506-5435-4952-9049-d07cd7edb912'),
('b565c095-c093-46e5-8267-859e7ef5f10c','127.0.0.1','ACTIVE','2021-02-19 06:43:54','2021-02-19 02:43:54','2021-02-19 02:43:54','28894506-5435-4952-9049-d07cd7edb912'),
('bd640be8-2df4-4756-b92f-d2e3869dad1a','127.0.0.1','ACTIVE','2021-02-11 08:29:17','2021-02-11 04:29:17','2021-02-11 04:29:17','28894506-5435-4952-9049-d07cd7edb912'),
('cccdec2c-1660-45bc-9b02-fb3ccf6c0df6','127.0.0.1','ACTIVE','2021-02-11 08:42:57','2021-02-11 04:42:57','2021-02-11 04:42:57','28894506-5435-4952-9049-d07cd7edb912'),
('d08b57e8-f8c5-4815-9f51-f7081e9e79f3','127.0.0.1','ACTIVE','2021-02-06 13:19:16','2021-02-06 09:19:16','2021-02-06 09:19:16','28894506-5435-4952-9049-d07cd7edb912'),
('d15bd4c6-54b1-4dcf-8849-2f35b06d4a40','127.0.0.1','ACTIVE','2021-02-09 14:12:57','2021-02-09 10:12:57','2021-02-09 10:12:57','28894506-5435-4952-9049-d07cd7edb912'),
('d2a647a5-8292-4529-982d-8db34ffa4592','127.0.0.1','ACTIVE','2021-02-04 11:33:34','2021-02-04 07:33:34','2021-02-04 07:33:34','28894506-5435-4952-9049-d07cd7edb912'),
('d9c1374a-9d69-47ba-ae30-32001675679a','127.0.0.1','ACTIVE','2021-02-09 14:20:20','2021-02-09 10:20:20','2021-02-09 10:20:20','28894506-5435-4952-9049-d07cd7edb912'),
('dff5f583-a0a1-496f-876d-eba6e4c28adb','0:0:0:0:0:0:0:1','ACTIVE','2020-06-20 14:23:30','2020-06-20 13:25:10','2020-06-20 13:25:10','bb942258-183f-495e-99d1-3268ad307b11'),
('e0852e7e-4e71-4703-b257-190dcba871fd','127.0.0.1','ACTIVE','2021-02-10 13:39:55','2021-02-10 09:39:55','2021-02-10 09:39:55','28894506-5435-4952-9049-d07cd7edb912'),
('eacda2b2-4494-482a-8cad-2f486235895c','127.0.0.1','ACTIVE','2021-02-11 08:45:08','2021-02-11 04:45:08','2021-02-11 04:45:08','28894506-5435-4952-9049-d07cd7edb912'),
('ec10e9f1-6bdd-48bd-9099-f2f27d052a74','127.0.0.1','ACTIVE','2021-02-03 16:35:05','2021-02-03 12:35:05','2021-02-03 12:35:05','28894506-5435-4952-9049-d07cd7edb912'),
('ee1057df-2625-408d-891f-1e07523efea8','127.0.0.1','ACTIVE','2021-02-12 11:06:37','2021-02-12 07:06:37','2021-02-12 07:06:37','28894506-5435-4952-9049-d07cd7edb912'),
('f718cf5a-68f6-45fa-ab80-ef84aab03f73','127.0.0.1','ACTIVE','2021-02-11 05:49:46','2021-02-11 01:49:46','2021-02-11 01:49:46','28894506-5435-4952-9049-d07cd7edb912'),
('f7c390cd-f321-4251-a0a9-cb681759a86d','127.0.0.1','ACTIVE','2021-02-12 08:21:41','2021-02-12 04:21:41','2021-02-12 04:21:41','28894506-5435-4952-9049-d07cd7edb912'),
('fa3118ac-ed0f-4f64-94ac-4350d08ecd6a','127.0.0.1','ACTIVE','2021-02-18 08:08:46','2021-02-18 04:08:46','2021-02-18 04:08:46','28894506-5435-4952-9049-d07cd7edb912'),
('fc79c062-2e05-48ca-b392-42043d2aa81a','127.0.0.1','ACTIVE','2021-02-11 05:31:09','2021-02-11 01:31:09','2021-02-11 01:31:09','28894506-5435-4952-9049-d07cd7edb912'),
('fce4161d-6135-4543-a61e-36aa374889e2','127.0.0.1','ACTIVE','2021-02-10 06:55:53','2021-02-10 02:55:53','2021-02-10 02:55:53','28894506-5435-4952-9049-d07cd7edb912');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` varchar(50) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `phoneNumber` varchar(30) DEFAULT NULL,
  `phoneNumberVerified` tinyint(1) DEFAULT 0,
  `email` varchar(300) DEFAULT NULL,
  `emailverified` tinyint(1) DEFAULT 0,
  `locked` tinyint(1) DEFAULT 0,
  `expiry` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT current_timestamp(),
  `roleId` varchar(50) NOT NULL,
  `deactivated` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_username` (`username`),
  KEY `role` (`roleId`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`name`,`phoneNumber`,`phoneNumberVerified`,`email`,`emailverified`,`locked`,`expiry`,`created`,`updated`,`roleId`,`deactivated`) values 
('28894506-5435-4952-9049-d07cd7edb912','admin','$2a$10$atofdj2.hPaIndS5M.xmmOB1MM9UuNTfs087VQVwtYE2Pyhc6JyG.','Admin',NULL,0,'sarosh@gmail.com',0,0,NULL,'2020-05-22 22:20:25','2020-05-22 22:20:25','ADMIN',0),
('bb942258-183f-495e-99d1-3268ad307b11','user','$2a$10$4h7i12XstShMVii.4OnPUOL26IfZfaKEdZSB6Z6NjfLtqUzytr.8u',NULL,NULL,0,'User\'default.user@kalsym.com',0,0,NULL,'2020-03-14 18:19:33','2020-03-14 18:19:45','ADMIN',0);

/* Function  structure for function  `getNextSeqNo` */

/*!50003 DROP FUNCTION IF EXISTS `getNextSeqNo` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `getNextSeqNo`(serviceProvider VARCHAR(10)) RETURNS int(11)
    DETERMINISTIC
BEGIN
 UPDATE sequence_number SET sequence=LAST_INSERT_ID(sequence+1) WHERE sp=serviceProvider;
 RETURN LAST_INSERT_ID();
END */$$
DELIMITER ;

/* Procedure structure for procedure `get_users_without_password` */

/*!50003 DROP PROCEDURE IF EXISTS  `get_users_without_password` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`user_service`@`localhost` PROCEDURE `get_users_without_password`(IN username varchar(256))
BEGIN
		SELECT `users`.`id`, `users`.`username`, `users`.`firstname`,`users`.`lastname`,`users`.`email`,`users`.`locked`,
		`users`.`expiry`,`users`.`created`,`users`.`updated`  FROM `users` where `users`.`username`=`username` or `username` is null;
		SELECT `users`.`id`, `users`.`username`, `users`.`firstname`,`users`.`lastname`,`users`.`email`,`users`.`locked`,
		`users`.`expiry`,`users`.`created`,`users`.`updated`  FROM `users` WHERE `users`.`username`=`username` OR `username` IS NULL;
	END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
