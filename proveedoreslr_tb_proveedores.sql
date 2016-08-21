CREATE DATABASE  IF NOT EXISTS `proveedoreslr` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `proveedoreslr`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: proveedoreslr
-- ------------------------------------------------------
-- Server version	5.7.14-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_proveedores`
--

DROP TABLE IF EXISTS `tb_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_proveedores` (
  `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `CUIT` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre_de_fantasia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `razon_social` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `condicion_iva` int(11) NOT NULL,
  `naturaleza_juridica` int(11) NOT NULL,
  `localidad` int(11) DEFAULT NULL,
  `numero_de_ib` char(12) COLLATE utf8_spanish_ci NOT NULL,
  `regimen_ib` int(11) NOT NULL,
  `calle` int(11) DEFAULT NULL,
  `numero` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `piso` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `depto` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `CBU` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_cuenta` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `banco` int(11) DEFAULT NULL,
  `sucursal` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`),
  KEY `fk_regimen_ib_id_tb_regimen_ib` (`regimen_ib`),
  KEY `fk_tb_bancos_id_banco` (`banco`),
  KEY `fk_tb_natjuridica_id_naturaleza_juridica` (`naturaleza_juridica`),
  KEY `fk_tb_localidades_id_localidad` (`localidad`),
  KEY `fk_tb_condiva_id_condicion_iva` (`condicion_iva`),
  CONSTRAINT `fk_condicion_iva_id_tb_condicion_iva` FOREIGN KEY (`condicion_iva`) REFERENCES `tb_condiciones_iva` (`condicion_iva_id`),
  CONSTRAINT `fk_regimen_ib_id_tb_regimen_ib` FOREIGN KEY (`regimen_ib`) REFERENCES `tb_regimen_ib` (`id_regimen_ib`),
  CONSTRAINT `fk_tb_bancos_id_banco` FOREIGN KEY (`banco`) REFERENCES `tb_bancos` (`banco_id`),
  CONSTRAINT `fk_tb_localidades_id_localidad` FOREIGN KEY (`localidad`) REFERENCES `tb_localidades` (`localidad_id`),
  CONSTRAINT `fk_tb_natjuridica_id_naturaleza_juridica` FOREIGN KEY (`naturaleza_juridica`) REFERENCES `tb_naturaleza_juridica` (`naturalezaj_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_proveedores`
--

LOCK TABLES `tb_proveedores` WRITE;
/*!40000 ALTER TABLE `tb_proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_proveedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-21 15:28:50
