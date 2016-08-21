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
-- Table structure for table `tb_localidades`
--

DROP TABLE IF EXISTS `tb_localidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_localidades` (
  `localidad_id` int(11) NOT NULL AUTO_INCREMENT,
  `departamento` int(11) NOT NULL,
  `localidad` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `codigo_postal` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`localidad_id`),
  KEY `fk_tb_departamentos_id_departamento_id` (`departamento`),
  CONSTRAINT `fk_tb_departamentos_id_departamento_id` FOREIGN KEY (`departamento`) REFERENCES `tb_departamentos` (`departamento_id`)
) ENGINE=InnoDB AUTO_INCREMENT=668 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_localidades`
--

LOCK TABLES `tb_localidades` WRITE;
/*!40000 ALTER TABLE `tb_localidades` DISABLE KEYS */;
INSERT INTO `tb_localidades` VALUES (1,6,'ARAUCO','0'),(2,6,'BAÑADO DE LOS PANTANOS','0'),(3,6,'ESTACION MAZAN','0'),(4,6,'TERMAS DE SANTA TERESITA','0'),(5,6,'UDPINANGO','0'),(6,6,'VILLA MAZAN','0'),(7,7,'AMINGA','0'),(8,7,'ANILLACO','0'),(9,7,'ANJULLON','0'),(10,7,'CHUQUIS','0'),(11,7,'LOS MOLINOS','0'),(12,7,'PINCHAS','0'),(13,7,'SAN PEDRO','0'),(14,7,'SANTA VERA CRUZ','0'),(15,8,'AICUÑA','0'),(16,8,'BANDA FLORIDA','0'),(17,8,'GUANDACOL','0'),(18,8,'LOS PALACIOS','0'),(19,8,'PAGANCILLO','0'),(20,8,'SANTA CLARA  (GUANDACOL)','0'),(21,8,'VILLA UNION','5350'),(22,3,'CHAMICAL','5380'),(23,3,'POLCO','0'),(24,2,'CHILECITO','5360'),(25,2,'COLONIA ANGUINAN','0'),(26,2,'COLONIA CATINZACO','0'),(27,2,'COLONIA MALLIGASTA','0'),(28,2,'COLONIA VICHIGASTA','0'),(29,2,'GUANCHIN','0'),(30,2,'MALLIGASTA','0'),(31,2,'MIRANDA','0'),(32,2,'NONOGASTA','0'),(33,2,'SAN NICOLAS','0'),(34,2,'SANTA FLORENTINA','0'),(35,2,'SAÑOGASTA','0'),(36,2,'TILIMUQUI','0'),(37,2,'VICHIGASTA','0'),(38,9,'ALTO CARRIZAL','0'),(39,9,'ANGULOS','0'),(40,9,'ANTINACO','0'),(41,9,'BAJO CARRIZAL','0'),(42,9,'CAMPANAS','0'),(43,9,'CHAÑARMUYO','0'),(44,9,'FAMATINA','0'),(45,9,'LA CUADRA','0'),(46,9,'PITUIL','0'),(47,9,'PLAZA VIEJA','0'),(48,9,'SANTA CRUZ','0'),(49,9,'SANTO DOMINGO','0'),(50,10,'PUNTA DE LOS LLANOS','0'),(51,10,'TAMA','0'),(52,11,'CASTRO BARROS','0'),(53,11,'CHAÑAR','5276'),(54,11,'LOMA BLANCA','0'),(55,11,'OLTA','5383'),(56,12,'MALANZAN','0'),(57,12,'NACATE','0'),(58,12,'PORTEZUELO','0'),(59,12,'SAN ANTONIO','0'),(60,13,'EL CONDADO','0'),(61,13,'VILLA CASTELLI','0'),(62,14,'AMBIL','0'),(63,14,'COLONIA ORTIZ DE OCAMPO','0'),(64,14,'MILAGRO','5274'),(65,14,'OLPAS','0'),(66,14,'SANTA RITA DE CATUNA','0'),(67,15,'ULAPES','5473'),(68,17,'AMANA','0'),(69,17,'PATQUIA','0'),(70,18,'CHEPES','5470'),(71,18,'DESIDERIO TELLO','0'),(72,18,'MASCASIN','0'),(73,19,'ALPASINCHE','0'),(74,19,'AMUSCHINA','0'),(75,19,'SALICAS - SAN BLAS','0'),(76,19,'SURIYACO','0'),(77,19,'TUYUBIL','0'),(78,20,'VILLA SANAGASTA','0'),(79,6,'LA CAUCHITA','0'),(80,6,'LA CIMBRITA','0'),(81,6,'LOS HERRERA','0'),(82,6,'LOS MENA','0'),(83,6,'UDPINANGO (Secci¢n Quintas - Zona Rural)','0'),(84,1,'BAZAN','0'),(85,1,'CARRIZAL','0'),(86,1,'CEBOLLAR','0'),(87,1,'COCHANGASTA','0'),(88,1,'EL BARREAL','0'),(89,1,'EL MEDANO','0'),(90,1,'EL QUEBRACHO','0'),(91,1,'EL SUNCHAL','0'),(92,1,'ESTACION KILOMETRO 875','0'),(93,1,'ESTACION KILOMETRO 891','0'),(94,1,'LA AGUADITA DE LOS BRIZUELA','0'),(95,1,'LA CALERA','0'),(96,1,'LA PERSEGUIDA','0'),(97,1,'LAS CATAS','0'),(98,1,'LAS CLOACAS','0'),(99,1,'LAS PADERCITAS','0'),(100,1,'OBRAJE DE TOSCANO','0'),(101,1,'POZO DE AVILA','0'),(102,1,'PUERTO ALEGRE','0'),(103,1,'SALADILLO','0'),(104,1,'SAN ANTONIO','0'),(105,1,'SAN BERNARDO','0'),(106,1,'SAN JUAN','0'),(107,1,'SANTO DOMINGO','0'),(108,1,'SIERRA BRAVA','0'),(109,1,'TALAMUYUNA','0'),(110,7,'AGUA BLANCA','0'),(111,7,'LAS PEÑAS','0'),(112,8,'EL ALAMITO','0'),(113,8,'EL ALTO','0'),(114,8,'EL CARDON','0'),(115,8,'EL FUERTE','0'),(116,8,'LA BREA','0'),(117,8,'LA CALDERITA','0'),(118,8,'LA JUNTA','0'),(119,8,'LA MARAVILLA','0'),(120,8,'LA QUEBRADA','0'),(121,8,'LA TOTORITA','0'),(122,8,'LOS NACIMIENTOS','0'),(123,8,'LOS PATILLOS','0'),(124,8,'LOS TAMBILLOS','0'),(125,8,'MINA DELINA','0'),(126,8,'PASO SAN ISIDRO','0'),(127,8,'PUERTO ALEGRE','0'),(128,3,'AZAMASTIN','0'),(129,3,'BAJITO HONDO','0'),(130,1,'LA RIOJA','5300'),(131,3,'BELLA VISTA','0'),(132,3,'CHULO','0'),(133,3,'EL CARMEN','0'),(134,3,'EL DIQUE','0'),(135,3,'EL GARABATO','0'),(136,3,'EL MOLLAR','0'),(137,3,'EL QUEBRACHAL','0'),(138,3,'EL QUEMADO','0'),(139,3,'ESPERANZA DE LOS CERRILLOS','0'),(140,3,'ESQUINA DEL NORTE','0'),(141,3,'ESTANCIA SAN BARTOLO','0'),(142,3,'LA AGUADITA','0'),(143,3,'LA CALDERA','0'),(144,3,'LA CALERITA','0'),(145,3,'LA CAÑADA','0'),(146,3,'LA CORTADA','0'),(147,3,'LA CRUZ','0'),(148,3,'LA LILIA','0'),(149,3,'LA RESISTENCIA','0'),(150,3,'LAS AMOLADERAS','0'),(151,3,'LAS BREAS','0'),(152,3,'LAS FLORES','0'),(153,3,'LAS HERRERAS','0'),(154,3,'LAS REPRESAS','0'),(155,3,'LAS TALAS','0'),(156,3,'LOS BALDES','0'),(157,3,'LOS BARRIALES','0'),(158,3,'LOS BORDOS','0'),(159,3,'POZO DE LA VACA','0'),(160,3,'POZO REDONDO','0'),(161,3,'POZO VIEJO','0'),(162,3,'PUESTO EL ALTO','0'),(163,3,'QUEBRACHAL DE ARRIBA','0'),(164,3,'ROSILLO MUERTO','0'),(165,3,'SAN RAFAEL','0'),(166,3,'SANTA BARBARA','0'),(167,3,'SANTA LUCIA','0'),(168,3,'SANTA RITA DE LA ZANJA','0'),(169,3,'TORO MUERTO','0'),(170,2,'COLONIA ANGUINAN (Sección Quintas - Zona Rural','0'),(171,2,'COLONIA CATINZACO (Sección Quintas - Zona Rura','0'),(172,2,'EL TRIANGULO','0'),(173,2,'LAS TALAS','0'),(174,2,'PUESTO EL QUEMADO','0'),(175,9,'CAMPO DE LAS FLORES','0'),(176,9,'EL POTRERILLO','0'),(177,9,'FAMALILAO','0'),(178,9,'LA MESADA','0'),(179,9,'LAS GREDAS','0'),(180,9,'LOS CORRALES','0'),(181,10,'AGUADITA DE LOS VALDECES','0'),(182,10,'ALCAZAR','0'),(183,10,'BAJO VERDE','0'),(184,10,'BARREAL DE LA VIUDA PANCHA','0'),(185,10,'BAYO MUERTO','0'),(186,10,'BUENA ESPERANZA','0'),(187,10,'CARRIZAL','0'),(188,10,'CASAS VIEJAS','0'),(189,10,'COLOZOCAN','0'),(190,10,'CHILA','0'),(191,10,'DOÑA JUANA','0'),(192,10,'EL ALTO','0'),(193,10,'EL CHACO','0'),(194,10,'EL MOLLACO','0'),(195,10,'EL MONTE','0'),(196,10,'EL VALLECITO','0'),(197,10,'ENTRE RIOS','0'),(198,10,'FALDA DE CITAN','0'),(199,10,'GUAZMAYO','0'),(200,10,'HUAJA','0'),(201,10,'LA GREDITA','0'),(202,10,'LA REPRESITA','0'),(203,10,'LAS AGUADITAS','0'),(204,10,'LAS CANTERAS DE SAN NICOLAS','0'),(205,10,'LAS FORTUNAS','0'),(206,10,'LAS HUERTAS','0'),(207,10,'LAS LOMITAS','0'),(208,10,'LAS PAMPAS','0'),(209,10,'LOS QUINTEROS','0'),(210,10,'PACATALA','0'),(211,10,'POZO LARGO','0'),(212,10,'REPRESA DE LOS VERONES','0'),(213,10,'SAN NICOLAS','0'),(214,10,'SAN RAMON','0'),(215,10,'SANTA TERESA','0'),(216,10,'TASQUIN','0'),(217,10,'TUIZON','0'),(218,11,'ALTO ALEGRE','0'),(219,11,'BAJO HONDO','0'),(220,11,'BALDE DE PACHECO','0'),(221,11,'CERRO BLANCO','0'),(222,11,'COLONIA EL CISCO','0'),(223,11,'CORRAL DEL NEGRO','0'),(224,11,'CORTADERAS','0'),(225,11,'CHANZAR VIEJO','0'),(226,11,'EL BORDO','0'),(227,11,'EL CONSUELO','0'),(228,11,'EL JARILLAL','0'),(229,11,'EL PUERTO ALEGRE','0'),(230,11,'EL RECREO','0'),(231,11,'EL RETIRO','0'),(232,11,'EL SALADILLO','0'),(233,11,'EL SIMBOLAR','0'),(234,11,'EL VIRQUE','0'),(235,11,'ESQUINA DEL SUD','0'),(236,11,'ILEAL','0'),(237,11,'JESUS MARIA','0'),(238,11,'LA AGUADA','0'),(239,11,'LA CA¥ADA','0'),(240,11,'LA CIENAGA','0'),(241,11,'LA HUERTA','0'),(242,11,'LAS PARCELAS','0'),(243,11,'LOMA ALTA','0'),(244,11,'LOS CHANZARITOS','0'),(245,11,'MIRAFLORES','0'),(246,11,'MONTE GRANDE','0'),(247,11,'MONTE NEGRO','0'),(248,11,'NEPES','0'),(249,11,'PUESTO LAS PE¥AS','0'),(250,11,'SAN ISIDRO','0'),(251,11,'SANTA CRUZ','0'),(252,11,'TALA VERDE','0'),(253,11,'TALVA','0'),(254,12,'AGUA DE ENCIMA','0'),(255,12,'ATILES','0'),(256,12,'BALDE DE AMAYA','0'),(257,12,'BALDE SAN NICOLAS','0'),(258,12,'BARRIALITO','0'),(259,12,'CASANGATE','0'),(260,12,'EL ABRA','0'),(261,12,'EL BAJO','0'),(262,12,'EL CARRIGALILLO','0'),(263,12,'EL CARRIZAL','0'),(264,12,'EL CARRIZALILLO','0'),(265,12,'EL CORTE','0'),(266,12,'EL CHORRO','0'),(267,12,'EL ESTANQUITO','0'),(268,12,'EL MANANTIAL','0'),(269,12,'EL PORONGO','0'),(270,12,'EL POTRERO','0'),(271,12,'EL RETAMAL','0'),(272,12,'EL SALADO','0'),(273,12,'ILLISCA','0'),(274,12,'LA AGUADITA','0'),(275,12,'LA ARADA','0'),(276,12,'LA CALERA','0'),(277,12,'LA CA¥ADITA','0'),(278,12,'LA CHIMENEA','0'),(279,12,'LA ESQUINA','0'),(280,12,'LA PAMPA','0'),(281,12,'LA PAMPA REDONDA','0'),(282,12,'LA PINTADA','0'),(283,12,'LA REPRESITA','0'),(284,12,'LA YESERA','0'),(285,12,'LAS BARRANCAS','0'),(286,12,'LAS CA¥AS','0'),(287,12,'LOMA LARGA','0'),(288,12,'LOS ALGARROBOS','0'),(289,12,'LOS BARREALES','0'),(290,12,'LOS MOGOTES','0'),(291,12,'LOS SACABONES','0'),(292,12,'LOS TRES QUEBRACHOS','0'),(293,12,'MASCASIN','0'),(294,12,'POTRERO','0'),(295,12,'PULUCHAN','0'),(296,12,'QUEBRADA DEL VALLECITO','0'),(297,12,'REPRESA SAN ANTONIO','0'),(298,12,'RIO DE LAS CA¥AS','0'),(299,12,'SALADILLO','0'),(300,12,'SALANA','0'),(301,12,'SAN PEDRO','0'),(302,12,'SAN ROQUE','0'),(303,12,'SANTA MARIA','0'),(304,12,'SOLCA','0'),(305,12,'SUNCHO DE ARRIBA','0'),(306,12,'TACO PAYANA','0'),(307,12,'TOSQUEA','0'),(308,12,'TRES CRUCES','0'),(309,12,'ULTIMA AGUA','0'),(310,12,'ULTRUCUYACO','0'),(311,12,'UNQUILLAL','0'),(312,12,'VILLA SARITA','0'),(313,13,'AGUA CLARA','0'),(314,13,'BAJO DEL CORRAL','0'),(315,13,'EL CONDADO (Secci¢n Quintas - Zona Rural)','0'),(316,13,'EL GALPON','0'),(317,13,'EL PESCADERO','0'),(318,14,'AGUA COLORADA','0'),(319,14,'AGUA DE LA CRUZ','0'),(320,14,'AGUA DE LOS CHANCZOS','0'),(321,14,'AGUA VERDE','0'),(322,14,'AGUADITA DE LOS PERALTA','0'),(323,14,'BAJO DE LA PIEDRA','0'),(324,14,'BUENA VISTA','0'),(325,14,'CAMPO ALEGRE','0'),(326,14,'CASAS VIEJAS','0'),(327,14,'EL AMARILLO','0'),(328,14,'EL BARRANCO','0'),(329,14,'EL CERCO','0'),(330,14,'EL CIENAGO','0'),(331,14,'EL FRAILE','0'),(332,14,'EL POTRERO','0'),(333,14,'EL QUEMADO','0'),(334,14,'EL QUEMADO DE ABAJO','0'),(335,14,'EL SIMBOLITO','0'),(336,14,'ESQUINA GRANDE','0'),(337,14,'LA AGUADITA','0'),(338,14,'LA BARRERA','0'),(339,14,'LA CIENAGA','0'),(340,14,'LA DORADA','0'),(341,14,'LA ESTANCIA SAN JOSE','0'),(342,14,'LA ISLA','0'),(343,14,'LA LAGUNA','0'),(344,14,'LA LIBERTAD','0'),(345,14,'LA MADRUGADA','0'),(346,14,'LA MARAVILLA','0'),(347,14,'LA QUEBRADA','0'),(348,14,'LA REPRESA','0'),(349,14,'LA REPRESITA','0'),(350,14,'LA RIPIEDRA','0'),(351,14,'LA TOTORITA','0'),(352,14,'LAS CORTADERAS','0'),(353,14,'LAS PE¥AS','0'),(354,14,'LAS RAMADAS','0'),(355,14,'LOMA NEGRA','0'),(356,14,'LOS AGUIRRES','0'),(357,14,'LOS ALANIZ','0'),(358,14,'LOS ARIAS','0'),(359,14,'LOS BARRIALITOS','0'),(360,14,'LOS MISTOLES','0'),(361,14,'LOS POCITOS','0'),(362,14,'LOS TELLOS','0'),(363,14,'MOLLACO','0'),(364,14,'NORIEGA','0'),(365,14,'NUMERO UNO','0'),(366,14,'PIEDRA ROSADA','0'),(367,14,'POZO DEL MEDIO','0'),(368,14,'PUESTO NUEVO','0'),(369,14,'REPRESA DEL CARMEN','0'),(370,14,'RIO GRANDE','0'),(371,14,'SAN CRISTOBAL','0'),(372,14,'SAN FRANCISCO','0'),(373,14,'SAN JOSE','0'),(374,14,'SAN MARTIN','0'),(375,14,'SAN RAMON','0'),(376,14,'SAN ROQUE','0'),(377,14,'SAN TELMO','0'),(378,14,'SANTA LUCIA','0'),(379,14,'SOL DE MAYO','0'),(380,14,'TORRECITAS','0'),(381,15,'AGUA DE ABAJO','0'),(382,15,'AGUAYO','5473'),(383,15,'BAJO DEL DURAZNO','0'),(384,15,'BAJO HONDO','0'),(385,15,'BUEN ORDEN','0'),(386,15,'CORRAL DE ISAAC','0'),(387,15,'CUATRO ESQUINAS','0'),(388,15,'CHUPA CHARQUI','0'),(389,15,'EL ABRA','0'),(390,15,'EL BALDE','0'),(391,15,'EL BARREAL','0'),(392,15,'EL BUEN RETIRO','0'),(393,15,'EL CADILLO','0'),(394,15,'EL CALDEN','0'),(395,15,'EL FIERRO','0'),(396,15,'EL MEDANITO','0'),(397,15,'EL MOSQUITO','0'),(398,15,'EL PORTEZUELO','0'),(399,15,'EL TINTITACO','0'),(400,15,'EL VALLE','0'),(401,15,'ENTRE RIOS','0'),(402,15,'KILOMETRO 14','0'),(403,15,'LA CASERITA','0'),(404,15,'LA CONSTANCIA','0'),(405,15,'LA JOSEFINA','0'),(406,15,'LA LILIA','0'),(407,15,'LA LOMITA','0'),(408,15,'LA PORFIA','0'),(409,15,'LA PRIMAVERA','0'),(410,15,'LA RALADA','0'),(411,15,'LA REPRESA','0'),(412,15,'LA RESERVA','0'),(413,15,'LA SIRENA','0'),(414,15,'LA SUSPENSION','0'),(415,15,'LA ZAMPA','0'),(416,15,'LAS DELICIAS','0'),(417,15,'LAS MALVINAS','0'),(418,15,'LOS AZCURRAS','0'),(419,15,'MAR DULCE','0'),(420,15,'NUEVA ESPERANZA','0'),(421,15,'NUEVA VALENCIA','0'),(422,15,'PUESTO DEL SUD','0'),(423,15,'PUESTO DICHOSO','0'),(424,15,'PUESTO LOS CORNEJOS','0'),(425,15,'PUESTO VIEJO','0'),(426,15,'RIPIERO DEL JARDIN','0'),(427,15,'SAN ANTONIO','0'),(428,15,'SAN LORENZO','0'),(429,15,'SAN NICOLAS','0'),(430,15,'SAN RAFAEL','0'),(431,15,'SAN SOLANO','0'),(432,15,'SANTA ELENA','0'),(433,15,'SANTA TERESA','0'),(434,15,'SIEMPRE VERDE','0'),(435,15,'TRES DE MAYO','0'),(436,15,'TRES DONOSAS','0'),(437,15,'VILLA LUISA','0'),(438,15,'VILLA MARIA','0'),(439,15,'VILLA NIDIA','0'),(440,15,'VIRGEN DEL VALLE','0'),(441,17,'AGUANGO','0'),(442,17,'BALDE SAN ISIDRO','0'),(443,17,'CERRO BLANCO','0'),(444,17,'LA TORRE','0'),(445,17,'LOS COLORADOS','0'),(446,17,'PAGANZO','0'),(447,17,'PATQUIA VIEJO','0'),(448,17,'POZO DE LA PAMPA','0'),(449,17,'RENTERIA','0'),(450,17,'REPRESA DE LA PUNTA','0'),(451,17,'REPRESA EL MOLLAR','0'),(452,17,'REPRESA LA MESADA','0'),(453,17,'SALINA DE BUSTO','0'),(454,17,'SAN AMBROSIO','0'),(455,18,'AGUA BLANCA                                       ','0'),(456,18,'AGUA DE AGUIRRE','0'),(457,18,'AGUA DE GALLO','0'),(458,18,'AGUA DE LA PIEDRA','0'),(459,18,'AGUA DE LEON','0'),(460,18,'AGUA DE TALA','0'),(461,18,'AGUA TAPADA','0'),(462,18,'ALTO ALEGRE','0'),(463,18,'ALTO BAYO','0'),(464,18,'ALTO VERDE','0'),(465,18,'BAJO DEL LEON','0'),(466,18,'BAJO GRANDE','0'),(467,18,'BALDE DE LA TRINIDAD','0'),(468,18,'BALDE SAN NICOLAS','0'),(469,18,'CALLANA DE ARRIBA','0'),(470,18,'CASAS VIEJAS','0'),(471,18,'CHELCOS','0'),(472,18,'CHEPES VIEJO','0'),(473,18,'EL AGUILA','0'),(474,18,'EL BALDE','0'),(475,18,'EL BARRIAL','0'),(476,18,'EL BORDO DEL BAJO','0'),(477,18,'EL CARDON','0'),(478,18,'EL CINCUENTA','0'),(479,18,'EL ESPINILLO','0'),(480,18,'EL HALCON','0'),(481,18,'EL PEJE','0'),(482,18,'EL PIQUILLIN','0'),(483,18,'EL POTRERILLO','0'),(484,18,'EL PUESTO','0'),(485,18,'EL QUEBRACHAL','0'),(486,18,'EL QUEMADO','0'),(487,18,'EL RELINCHO','0'),(488,18,'EL RODEO','0'),(489,18,'EL ROSARIO','0'),(490,18,'EL TALA','0'),(491,18,'EL TALAR','0'),(492,18,'EL TOTORAL','0'),(493,18,'EL TRANSITO','0'),(494,18,'EL ZAMPAL','0'),(495,18,'LA AGUADA','0'),(496,18,'LA AGUITA','0'),(497,18,'LA CALERA','0'),(498,18,'LA CALLANA','0'),(499,18,'LA CA¥A QUEMADA','0'),(500,18,'LA CA¥ADA','0'),(501,18,'LA CUMBRE','0'),(502,18,'LA CHILQUITA','0'),(503,18,'LA DETENCION','0'),(504,18,'LA ENVIDIA','0'),(505,18,'LA ESCONDIDA','0'),(506,18,'LA ESQUINA','0'),(507,18,'LA JARILLA','0'),(508,18,'LA JUNTA','0'),(509,18,'LA LAGUNA','0'),(510,18,'LA PAMPA','0'),(511,18,'LA PAZ','0'),(512,18,'LA PINTADA','0'),(513,18,'LA PRIMAVERA','0'),(514,18,'LA PUNTA DEL CERRO','0'),(515,18,'LA REPRESITA','0'),(516,18,'LA ROSILLA','0'),(517,18,'LA UNION','0'),(518,18,'LA ZANJA','0'),(519,18,'LAS BOTIJAS','0'),(520,18,'LAS CA¥ADAS','0'),(521,18,'LAS CATITAS','0'),(522,18,'LAS CORTADERAS','0'),(523,18,'LAS MINAS','0'),(524,18,'LAS TOSCAS','0'),(525,18,'LOS AVILA','0'),(526,18,'LOS CHANZARITOS','0'),(527,18,'LOS LAGARCITOS','0'),(528,18,'LOS MEDANOS','0'),(529,18,'LOS OROS','0'),(530,18,'LOS PORONGUITOS','0'),(531,18,'LOS RODEOS','0'),(532,18,'NIDO DE CONDORES','0'),(533,18,'NUEVA ESPERANZA','0'),(534,18,'ÑOQUEVE','0'),(535,18,'PAMPAS CHICAS','0'),(536,18,'POZO DE LAS YEGUAS','0'),(537,18,'POZO DE PIEDRA','0'),(538,18,'PUERTO ALEGRE','0'),(539,18,'PUESTO LA CELESTINA','0'),(540,18,'QUEBRADA DEL TIGRE','0'),(541,18,'QUEBRADA DEL VALLECITO','0'),(542,18,'REAL DEL CADILLO','0'),(543,18,'RIO DE AGUIRRE','0'),(544,18,'RIO HONDO','0'),(545,18,'RODEO GRANDE','0'),(546,18,'SAN ANTONIO','0'),(547,18,'SAN ISIDRO','0'),(548,18,'SAN JOSE','0'),(549,18,'SAN NICOLAS','0'),(550,18,'SAN PEDRO','0'),(551,18,'SAN RAFAEL','0'),(552,18,'SAN ROQUE','0'),(553,18,'SANTA CRUZ','0'),(554,18,'SANTA RITA','0'),(555,18,'SANTA ROSA','0'),(556,18,'SANTO DOMINGO','0'),(557,18,'VALLE HERMOSO','0'),(558,18,'VILLA CASANA','0'),(559,19,'EL RETIRO','0'),(560,19,'LOROHUASI','0'),(561,20,'EL CALICANTO','0'),(562,20,'EL SEDECAL','0'),(563,2,'LA PUNTILLA','5360'),(564,20,'LA TORRECITA','0'),(565,20,'LOS ALTOS','0'),(566,20,'LOS NACIMIENTOS','0'),(567,20,'PARAJE LAS TALAS','0'),(568,20,'PUESTO EL MEDIO','0'),(569,11,'NO FIGURA EN TABLA','0'),(570,18,'NO FIGURA EN TABLA','0'),(571,6,'BO.TALACAN','0'),(572,6,'MACHIGASTA','0'),(573,1,'ANCHICO','0'),(574,1,'BAJO HONDO','0'),(575,1,'EL CANTADERO','0'),(576,1,'EL TALA','0'),(577,1,'ESTACION BAZAN','0'),(578,1,'LA ANTIGUA','0'),(579,1,'LA CAÑADA','0'),(580,1,'LA LATA','0'),(581,1,'LA RAMADITA','0'),(582,1,'POZO DE LA YEGUA','0'),(583,1,'PTO.DEL VALLE','0'),(584,1,'SAN LORENZO','0'),(585,1,'SAN NICOLAS','0'),(586,1,'SAN NICOLAS DEL RECREO','0'),(587,1,'SAN PEDRO','0'),(588,1,'SAN RAFAEL','0'),(589,1,'TRAMPA DEL TIGRE','0'),(590,8,'EL MOLLE','0'),(591,8,'LAS CUEVAS','0'),(592,8,'VILLA ESTHER','0'),(593,3,'BELLA VISTA','0'),(594,3,'EL RETAMO','0'),(595,3,'LA INVARNADA','0'),(596,3,'LA SERENA','0'),(597,3,'SAN FELIPE','0'),(598,3,'VILLA CARMELA','0'),(599,2,'LOS SARMIENTOS','0'),(600,2,'SAN MIGUEL','0'),(601,9,'BARRIO DE GALLI','0'),(602,9,'FAMATINA','0'),(603,9,'PLAZA NUEVA','0'),(604,10,'S.C.DE LA SIERRA','0'),(605,10,'S.DE LAS HIGUERAS','0'),(606,10,'SIERRA DE LOS QUINTEROS','0'),(607,11,'LA FLORIDA','0'),(608,12,'ALTA GRACIA','0'),(609,12,'BALDE DE AMAYA','0'),(610,12,'MOLLACO','0'),(611,12,'TUANI','0'),(612,13,'RIVADAVIA','0'),(613,13,'RIVADAVIA V.PAST','0'),(614,14,'ANZULON','0'),(615,14,'CATUNA','0'),(616,14,'LA BANDERITA','0'),(617,14,'LA MARUJA','0'),(618,14,'LA PLAYA','0'),(619,14,'SAN PEDRO','0'),(620,15,'EL BALDE D.LA VIUD','0'),(621,15,'EL BALDECITO','0'),(622,15,'ISLA DEL TIGRE','0'),(623,15,'LA INDUSTRIA','0'),(624,15,'LA REPRESITA','0'),(625,15,'LAS VENTANITAS','0'),(626,17,'LA MESADA','0'),(627,18,'EL DIVISADERO','0'),(628,18,'LA CONSULTA','0'),(629,19,'CHAUPIHUASI','0'),(630,19,'CUIPAN','0'),(631,19,'LOS ROBLES','0'),(632,19,'SCHAQUI','0'),(633,20,'HUACO','0'),(634,6,'AIMOGASTA                                         ','5310'),(635,3,'BAJO DE LUCAS','0'),(636,20,'SANAGASTA                                         ','5301'),(637,21,'VINCHINA                                          ','5357'),(638,551,'TOLEDO','5123'),(639,552,'CAPITAL FEDERAL','0'),(640,554,'MENDOZA','5500'),(641,555,'BUENOS AIRES','1419'),(642,239,'CATAMARCA','4700'),(643,486,'SAN JUAN','5400'),(644,259,'CORDOBA','5000'),(645,270,'PUNILLA','0'),(646,237,'BELEN','4750'),(647,556,'VILLA MERCEDES','5730'),(648,347,'FRIAS','4230'),(649,2,'ANGUINAN','5369'),(650,368,'SAN SALVADOR DE JUJUY','4600'),(651,316,'PASO DE LOS LIBRES','3230'),(652,298,'SAN MIGUEL DE TUCUMAN','4000'),(653,450,'CAPITAL','0'),(654,345,'SANTIAGO DEL ESTERO','4200'),(656,19,'SAN BLAS','0'),(657,19,'LAS TALAS','0'),(658,276,'VILLA DOLORES','0'),(659,275,'VILLA SARMIENTO','0'),(660,543,'SANTA FE','0'),(661,11,'E. LA LIBERTAD','5274'),(662,14,'E. LA LIBERTAD','5274'),(663,19,'ANDOLUCA','0'),(664,21,'VILLA SAN JOSE','0'),(667,442,'RESISTENCIA','0');
/*!40000 ALTER TABLE `tb_localidades` ENABLE KEYS */;
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