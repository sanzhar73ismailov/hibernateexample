# SQL Manager 2007 for MySQL 4.4.0.3
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : autopark


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE `autopark`
    CHARACTER SET 'utf8'
    COLLATE 'utf8_general_ci';

USE `autopark`;

#
# Structure for the `route` table : 
#

CREATE TABLE `route` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `number` VARCHAR(20) COLLATE utf8_general_ci DEFAULT NULL,
  `name` VARCHAR(20) COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=3 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';

#
# Structure for the `bus` table : 
#

CREATE TABLE `bus` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `number` VARCHAR(20) COLLATE utf8_general_ci DEFAULT NULL,
  `route_id` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `route_id` (`route_id`),
  CONSTRAINT `bus_fk` FOREIGN KEY (`route_id`) REFERENCES `route` (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=3 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';

#
# Structure for the `driver` table : 
#

CREATE TABLE `driver` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`, `name`),
  KEY `id` (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=4 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';

#
# Structure for the `bus_driver` table : 
#

CREATE TABLE `bus_driver` (
  `bus_id` INTEGER(11) NOT NULL,
  `driver_id` INTEGER(11) NOT NULL,
  PRIMARY KEY (`bus_id`, `driver_id`),
  KEY `bus_id` (`bus_id`),
  KEY `driver_id` (`driver_id`),
  CONSTRAINT `bus_driver_fk` FOREIGN KEY (`bus_id`) REFERENCES `bus` (`id`),
  CONSTRAINT `bus_driver_fk1` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`id`)
)ENGINE=InnoDB
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';

#
# Data for the `route` table  (LIMIT 0,500)
#

INSERT INTO `route` (`id`, `number`, `name`) VALUES 
  (1,'238','238'),
  (2,'172','172');
COMMIT;

#
# Data for the `bus` table  (LIMIT 0,500)
#

INSERT INTO `bus` (`id`, `number`, `route_id`) VALUES 
  (1,'001',1),
  (2,'002',2);
COMMIT;

#
# Data for the `driver` table  (LIMIT 0,500)
#

INSERT INTO `driver` (`id`, `name`) VALUES 
  (1,'Petr'),
  (2,'Asan'),
  (3,'Bartek');
COMMIT;

#
# Data for the `bus_driver` table  (LIMIT 0,500)
#

INSERT INTO `bus_driver` (`bus_id`, `driver_id`) VALUES 
  (1,1),
  (1,2),
  (2,1),
  (2,3);
COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;