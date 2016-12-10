# Host: localhost  (Version 5.7.16-log)
# Date: 2016-11-29 20:45:12
# Generator: MySQL-Front 5.4  (Build 4.21)
# Internet: http://www.mysqlfront.de/

/*!40101 SET NAMES utf8 */;

#
# Structure for table "customer"
#

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `telephoneNr` varchar(100) DEFAULT NULL,
  `socialSecurityNr` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "restaurant"
#

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE `restaurant` (
  `restaurantID` int(11) NOT NULL AUTO_INCREMENT,
  `restaurantName` varchar(100) DEFAULT NULL,
  `telephoneNr` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `menu` varchar(255) DEFAULT NULL,
  `passKey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`restaurantID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "table"
#

DROP TABLE IF EXISTS `table`;
CREATE TABLE `table` (
  `tableID` int(11) NOT NULL AUTO_INCREMENT,
  `nrOfSeats` int(11) DEFAULT NULL,
  `restaurantID` int(11) DEFAULT NULL,
  PRIMARY KEY (`tableID`),
  KEY `reataurant_table` (`restaurantID`),
  CONSTRAINT `reataurant_table` FOREIGN KEY (`restaurantID`) REFERENCES `restaurant` (`restaurantID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for table "reservation"
#

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE `reservation` (
  `reservationID` int(11) NOT NULL AUTO_INCREMENT,
  `restaurantID` int(11) DEFAULT NULL,
  `tableID` int(11) DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`reservationID`),
  KEY `table_reservation` (`tableID`),
  KEY `customer_reservation` (`customerID`),
  KEY `restaurant_reservation` (`restaurantID`),
  CONSTRAINT `customer_reservation` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  CONSTRAINT `restaurant_reservation` FOREIGN KEY (`restaurantID`) REFERENCES `restaurant` (`restaurantID`),
  CONSTRAINT `table_reservation` FOREIGN KEY (`tableID`) REFERENCES `table` (`tableID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
