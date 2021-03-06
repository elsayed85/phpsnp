# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 10.0.1.172 (MySQL 5.7.26-0ubuntu0.18.04.1)
# Database: dbSNPs
# Generation Time: 2019-07-17 11:04:52 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table tblAssemblies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tblAssemblies`;

CREATE TABLE `tblAssemblies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `source` text,
  `sequence_length` int(11) DEFAULT NULL,
  `structure_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table tblErrors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tblErrors`;

CREATE TABLE `tblErrors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `study_id` int(11) DEFAULT NULL,
  `line_number` int(11) DEFAULT NULL,
  `category` varchar(32) DEFAULT NULL,
  `assembly_reference` char(1) DEFAULT NULL,
  `snp_chromosome` text,
  `snp_position` text,
  `snp_reference` text,
  `snp_alternate` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table tblStructures
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tblStructures`;

CREATE TABLE `tblStructures` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `assembly_id` int(11) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `chunk_start` int(11) DEFAULT NULL,
  `chunk_length` int(11) DEFAULT NULL,
  `sequence_length` int(11) DEFAULT NULL,
  `sequence` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table tblStudies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tblStudies`;

CREATE TABLE `tblStudies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `assembly_id` int(11) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `source` text,
  `vcf_meta` mediumtext,
  `vcf_header` mediumtext,
  `vcf_first_snp` mediumtext,
  `vcf_fields` json DEFAULT NULL,
  `vcf_chunks` json DEFAULT NULL,
  `snp_count` int(11) DEFAULT NULL,
  `cultivar_count` int(11) DEFAULT NULL,
  `structures` json DEFAULT NULL,
  `cultivars` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
