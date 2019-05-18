/*
SQLyog Professional v12.09 (64 bit)
MySQL - 10.1.32-MariaDB : Database - pinjammobil
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pinjammobil` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pinjammobil`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `pass` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`nama`,`pass`) values ('A11.2015.09175','Mustofa Alisahid','1234567890'),('A12.2015.05283','Siti Karunia','1234567890');

/*Table structure for table `mobil` */

DROP TABLE IF EXISTS `mobil`;

CREATE TABLE `mobil` (
  `idm` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) DEFAULT NULL,
  `plat` char(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idm`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `mobil` */

insert  into `mobil`(`idm`,`type`,`plat`,`harga`,`status`) values (1,'Toyota Agya','H 5678 AZ',150000,'Ada'),(2,'Grand Livina','H 2134 XA',200000,'Ada'),(3,'Toyota Innova','H 1234 ASD',250000,'Ada'),(4,'Suzuki APV','H 6678 WEQ',300000,'Ada'),(5,'Honda Jazz','H 7876 DES',250000,'Ada'),(6,'Toyota Avanza','H 6765 KL',200000,'Ada');

/*Table structure for table `pelanggan` */

DROP TABLE IF EXISTS `pelanggan`;

CREATE TABLE `pelanggan` (
  `nomerkependudukan` char(16) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL,
  `telp` char(14) DEFAULT NULL,
  PRIMARY KEY (`nomerkependudukan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pelanggan` */

/*Table structure for table `pinjam` */

DROP TABLE IF EXISTS `pinjam`;

CREATE TABLE `pinjam` (
  `idp` int(11) NOT NULL AUTO_INCREMENT,
  `tglpinjam` date DEFAULT NULL,
  `nik` char(16) NOT NULL,
  `lamapinjam` int(11) DEFAULT NULL,
  `tarif` int(11) DEFAULT NULL,
  `idmobil` int(11) DEFAULT NULL,
  PRIMARY KEY (`idp`),
  KEY `idmobil` (`idmobil`),
  KEY `nik` (`nik`),
  CONSTRAINT `pinjam_ibfk_2` FOREIGN KEY (`idmobil`) REFERENCES `mobil` (`idm`),
  CONSTRAINT `pinjam_ibfk_3` FOREIGN KEY (`nik`) REFERENCES `pelanggan` (`nomerkependudukan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `pinjam` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
