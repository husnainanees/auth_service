/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.19-MariaDB : Database - employee_details
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`employee_details` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `employee_details`;

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `employee_id` int(20) NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(30) NOT NULL,
  `employee_department` varchar(30) NOT NULL,
  `employee_email` varchar(30) NOT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `employeeId` (`employee_id`),
  UNIQUE KEY `employeeEmail` (`employee_email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Data for the table `employee` */

insert  into `employee`(`employee_id`,`employee_name`,`employee_department`,`employee_email`) values 
(1,'Nadeem Arif','Dev Team','nadeem.arif@kalsym.com'),
(2,'Faisal','Dev Team','faisal@kalsym.com'),
(12,'Moshin Ali khan','Product Team','mohsin@kalsym.com');

/* Procedure structure for procedure `delete_employee` */

/*!50003 DROP PROCEDURE IF EXISTS  `delete_employee` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_employee`(IN e_id INT)
BEGIN
	#SET @user = null;
	#set @user = (Select * from EMPLOYEE WHERE EMPLOYEE_ID = e_id);
	Delete from EMPLOYEE where EMPLOYEE_ID = e_id;
	Select e_id;
END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_employee` */

/*!50003 DROP PROCEDURE IF EXISTS  `insert_employee` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_employee`(in e_name Varchar(30), in e_department VarChar(30), in e_email Varchar(30) )
Begin
insert into EMPLOYEE(employee_name, employee_department, employee_email) values (e_name, e_department, e_email);

Select * from EMPLOYEE WHERE EMPLOYEE_ID = LAST_INSERT_ID();
End */$$
DELIMITER ;

/* Procedure structure for procedure `update_employee` */

/*!50003 DROP PROCEDURE IF EXISTS  `update_employee` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `update_employee`(IN e_id INT, IN e_name VARCHAR(30), IN e_department VARCHAR(30), IN e_email VARCHAR(30) )
BEGIN
	UPDATE EMPLOYEE
	SET
		EMPLOYEE_NAME = e_name,
		EMPLOYEE_DEPARTMENT = e_department,
		EMPLOYEE_EMAIL = e_email
	WHERE
		EMPLOYEE_ID = e_id;
Select * from EMPLOYEE WHERE EMPLOYEE_ID = e_id;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
