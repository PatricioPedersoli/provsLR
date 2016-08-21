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
-- Table structure for table `tb_departamentos`
--

DROP TABLE IF EXISTS `tb_departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_departamentos` (
  `departamento_id` int(11) NOT NULL AUTO_INCREMENT,
  `provincia` int(11) NOT NULL,
  `departamento` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`departamento_id`),
  KEY `fk_tb_provincias_id_provincia` (`provincia`),
  CONSTRAINT `fk_tb_provincias_id_provincia` FOREIGN KEY (`provincia`) REFERENCES `tb_provincias` (`provincia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=558 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_departamentos`
--

LOCK TABLES `tb_departamentos` WRITE;
/*!40000 ALTER TABLE `tb_departamentos` DISABLE KEYS */;
INSERT INTO `tb_departamentos` VALUES (1,9,'CAPITAL'),(2,9,'CHILECITO'),(3,9,'CHAMICAL'),(4,9,'ARAUCO'),(5,9,'CASTRO BARROS'),(6,9,'CORONEL FELIPE VARELA'),(7,9,'FAMATINA'),(8,9,'GENERAL ANGEL V. PEÑALOZA'),(9,9,'GENERAL BELGRANO'),(10,9,'GENERAL JUAN F. QUIROGA'),(11,9,'GENERAL LAMADRID'),(12,9,'GENERAL OCAMPO'),(13,9,'GENERAL SAN MARTIN'),(14,9,'INDEPENDENCIA'),(15,9,'ROSARIO VERA PEÑALOZA'),(16,9,'SAN BLAS DE LOS SAUCES'),(17,9,'SANAGASTA'),(18,9,'VINCHINA'),(19,0,'ALMAGRO'),(20,0,'BALVANERA'),(21,0,'BARRACAS'),(22,0,'BELGRANO'),(23,0,'BOCA'),(24,0,'BOEDO'),(25,0,'CABALLITO'),(26,0,'CHACARITA'),(27,0,'COGHLAN'),(28,0,'COLEGIALES'),(29,0,'CONSTITUCIËN'),(30,0,'FLORES'),(31,0,'FLORESTA'),(32,0,'LINIERS'),(33,0,'MATADEROS'),(34,0,'MONTE CASTRO'),(35,0,'MONTSERRAT'),(36,0,'NUEVA POMPEYA'),(37,0,'NUÑEZ'),(38,0,'PALERMO'),(39,0,'PARQUE AVELLANEDA'),(40,0,'PARQUE CHACABUCO'),(41,0,'PARQUE PATRICIOS'),(42,0,'PATERNAL'),(43,0,'RECOLETA'),(44,0,'RETIRO'),(45,0,'SAAVEDRA'),(46,0,'SAN CRISTËBAL'),(47,0,'SAN NICOLAS'),(48,0,'SAN TELMO'),(49,0,'VELEZ SARSFIELD'),(50,0,'VERSALLES'),(51,0,'VILLA CRESPO'),(52,0,'VILLA DEL PARQUE'),(53,0,'VILLA DEVOTO'),(54,0,'VILLA GENERAL MITRE'),(55,0,'VILLA LUGANO'),(56,0,'VILLA LURO'),(57,0,'VILLA ORT?ZAR'),(58,0,'VILLA PUEYRREDËN'),(59,0,'VILLA REAL'),(60,0,'VILLA RIACHUELO'),(61,0,'VILLA SANTA RITA'),(62,0,'VILLA SOLDATI'),(63,0,'VILLA URQUIZA'),(64,0,'ZONA PORTUARIA'),(65,1,'ATREUCO'),(66,1,'CALEU CALEU'),(67,1,'CAPITAL'),(68,1,'CATRILË'),(69,1,'CONHELO'),(70,1,'CURACË'),(71,1,'CHALILEO'),(72,1,'CHAPALEUF?'),(73,1,'CHICAL CË'),(74,1,'GUATRACH?'),(75,1,'HUCAL'),(76,1,'UHUEL CALEL'),(77,1,'LIMAY MAHUIDA'),(78,1,'LOVENTU?'),(79,1,'MARACË'),(80,1,'PUEL?N'),(81,1,'QUEM? QUEM?'),(82,1,'RANCUL'),(83,1,'REALICË'),(84,1,'TOAY'),(85,1,'TRENEL'),(86,1,'UTRAC?N'),(87,2,'ALUMIN?'),(88,2,'AÐELO'),(89,2,'CATAN LIL'),(90,2,'COLLËN CUR?'),(91,2,'CONFLUENCIA'),(92,2,'CHOS MALAL'),(93,2,'HUILICHES'),(94,2,'LACAR'),(95,2,'LONCOPU?'),(96,2,'LOS LAGOS'),(97,2,'MINAS'),(98,2,'ÐORQU?N'),(99,2,'PEHUENCHES'),(100,2,'PIC?N LEUF?'),(101,2,'PICUNCHES'),(102,2,'ZAPALA'),(103,3,'ADOLFO ALSINA'),(104,3,'ADOLFO GONZALES CHAVES'),(105,3,'ALBERTI'),(106,3,'ALMIRANTE BROWN'),(107,3,'AVELLANEDA'),(108,3,'AYACUCHO'),(109,3,'AZUL'),(110,3,'BAH?A BLANCA'),(111,3,'BALCARCE'),(112,3,'BARADERO'),(113,3,'BARTOLOM? MITRE'),(114,3,'BENITO JUáREZ'),(115,3,'BERAZATEGUI'),(116,3,'BERISSO'),(117,3,'BOLIVAR'),(118,3,'BRAGADO'),(119,3,'BRANDSEN'),(120,3,'CAMPANA'),(121,3,'CAÐUELAS'),(122,3,'CAPIT?N SARMIENTO'),(123,3,'CARLOS CASARES'),(124,3,'CARLOS TEJEDOR'),(125,3,'CARMEN DE ARECO'),(126,3,'CASTELLI'),(127,3,'COLËN'),(128,3,'CORONEL DE MARINA L. ROSALE'),(129,3,'CORONEL DORREGO'),(130,3,'CORONEL PRINGLES'),(131,3,'CORONEL SU?REZ'),(132,3,'CHACABUCO'),(133,3,'CHASCOM?S'),(134,3,'CHIVILCOY'),(135,3,'DAIREAUX'),(136,3,'DOLORES'),(137,3,'ENSENADA'),(138,3,'ESCOBAR'),(139,3,'ESTEBAN ECHEVERR?A'),(140,3,'EXALTACIËN DE LA CRUZ'),(141,3,'FLORENCIO VARELA'),(142,3,'FLORENTINO AMEGHINO'),(143,3,'GENERAL ALVARADO'),(144,3,'GENERAL ALVEAR'),(145,3,'GENERAL ARENALES'),(146,3,'GENERAL BELGRANO'),(147,3,'GENERAL GUIDO'),(148,3,'GENERAL JUAN MADARIAGA'),(149,3,'GENERAL LA MADRID'),(150,3,'GENERAL LAS HERAS'),(151,3,'GENERAL LAVALLE'),(152,3,'GENERAL PAZ'),(153,3,'GENERAL PINTO'),(154,3,'GENERAL PUEYRREDËN'),(155,3,'GENERAL RODRIGUEZ'),(156,3,'GENERAL SAN MART?N'),(157,3,'GENERAL SARMIENTO'),(158,3,'GENERAL VIAMONTE'),(159,3,'GENERAL VILLEGAS'),(160,3,'GUAMIN?'),(161,3,'HIPËLITO YRIGOYEN'),(162,3,'JUN?N'),(163,3,'LA COSTA'),(164,3,'LA MATANZA'),(165,3,'LA PLATA'),(166,3,'LAN?S'),(167,3,'LAPRIDA'),(168,3,'LAS FLORES'),(169,3,'LEANDRO N. ALEM'),(170,3,'LINCOLN'),(171,3,'LOBER?A'),(172,3,'LOBOS'),(173,3,'LOMAS DE ZAMORA'),(174,3,'LUJ?N'),(175,3,'MAGDALENA'),(176,3,'MAIP?'),(177,3,'MAR CHIQUITA'),(178,3,'MARCOS PAZ'),(179,3,'MERCEDES'),(180,3,'MERLO'),(181,3,'MONTE'),(182,3,'MONTE HERMOSO'),(183,3,'MORENO'),(184,3,'MORËN'),(185,3,'NAVARRO'),(186,3,'NECOCHEA'),(187,3,'9 DE JULIO'),(188,3,'OLAVARR?A'),(189,3,'PATAGONES'),(190,3,'PEHUAJË'),(191,3,'PELLEGRINI'),(192,3,'PERGAMINO'),(193,3,'PILA'),(194,3,'PILAR'),(195,3,'PINAMAR'),(196,3,'PU?N'),(197,3,'QUILMES'),(198,3,'RAMALLO'),(199,3,'RAUCH'),(200,3,'RIVADAVIA'),(201,3,'ROJAS'),(202,3,'ROQUE P?REZ'),(203,3,'SAAVEDRA'),(204,3,'SALADILLO'),(205,3,'SALTO'),(206,3,'SALLIQUELË'),(207,3,'SAN ANDR?S DE GILES'),(208,3,'SAN ANTONIO DE ARECO'),(209,3,'SAN CAYETANO'),(210,3,'SAN FERNANDO'),(211,3,'SAN ISIDRO'),(212,3,'SAN NICOL?S'),(213,3,'SAN PEDRO'),(214,3,'SAN VICENTE'),(215,3,'SUIPACHA'),(216,3,'TANDIL'),(217,3,'TAPALQU?'),(218,3,'TIGRE'),(219,3,'TORDILLO'),(220,3,'TORNQUIST'),(221,3,'TRENQUE LAUQUEN'),(222,3,'TRES ARROYOS'),(223,3,'TRES DE FEBRERO'),(224,3,'TRES LOMAS'),(225,3,'25 DE MAYO'),(226,3,'VICENTE LËPEZ'),(227,3,'VILLA GESELL'),(228,3,'VILLARINO'),(229,3,'Z?RATE'),(230,4,'AMBATO'),(231,4,'ANCASTI'),(232,4,'ANDALGALA'),(233,4,'ANTOFAGASTA DE LA SIERRA'),(234,4,'BELEN'),(235,4,'CAPAYAN'),(236,4,'CAPITAL'),(237,4,'EL ALTO'),(238,4,'FRAY MAMERTO ESQUIU'),(239,4,'LA PAZ'),(240,4,'PACLIN'),(241,4,'POMAN'),(242,4,'SANTA MARIA'),(243,4,'SANTA ROSA'),(244,4,'TINOGASTA'),(245,4,'VALLE VIEJO'),(246,5,'AYACUCHO'),(247,5,'BELGRANO'),(248,5,'CORONEL PRINGLES'),(249,5,'CHACABUCO'),(250,5,'GENERAL PEDERNERA'),(251,5,'GOBERNADOR DUPUY'),(252,5,'JUN?N'),(253,5,'LA CAPITAL'),(254,5,'LIBERTADOR GENERAL SAN MART?N'),(255,6,'CALAMUCHITA'),(256,6,'CAPITAL'),(257,6,'COLËN'),(258,6,'CRUZ DEL EJE'),(259,6,'GENERAL ROCA'),(260,6,'GENERAL SAN MART?N'),(261,6,'ISCHIL?N'),(262,6,'JU?REZ CELMAN'),(263,6,'MARCOS JU?REZ'),(264,6,'MINAS'),(265,6,'POCHO'),(266,6,'PRESIDENTE ROQUE SáENZ PEÐA'),(267,6,'PUNILLA'),(268,6,'R?O CUARTO'),(269,6,'R?O PRIMERO'),(270,6,'R?O SECO'),(271,6,'R?O SEGUNDO'),(272,6,'SAN ALBERTO'),(273,6,'SAN JAVIER'),(274,6,'SAN JUSTO'),(275,6,'SANTA MAR?A'),(276,6,'SOBREMONTE'),(277,6,'TERCERO ARRIBA'),(278,6,'TOTORAL'),(279,6,'TULUMBA'),(280,6,'UNIËN'),(281,7,'ADOLFO ALSINA'),(282,7,'AVELLANEDA'),(283,7,'BARILOCHE'),(284,7,'CONESA'),(285,7,'EL CUY'),(286,7,'GENERAL ROCA'),(287,7,'9 DE JULIO'),(288,7,'ÐORQUINCO'),(289,7,'PICHI MAHU?DA'),(290,7,'PILCANIYEU'),(291,7,'SAN ANTONIO'),(292,7,'VALCHETA'),(293,7,'25 DE MAYO'),(294,8,'BURRUYAC?'),(295,8,'CAPITAL'),(296,8,'CRUZ ALTA'),(297,8,'CHICLIGASTA'),(298,8,'FAMALL?'),(299,8,'GRANEROS'),(300,8,'JUAN B. ALBERDI'),(301,8,'LA COCHA'),(302,8,'LEALES'),(303,8,'LULES'),(304,8,'MONTEROS'),(305,8,'R?O CHICO'),(306,8,'SIMOCA'),(307,8,'TAF? DEL VALLE'),(308,8,'TAF? VIEJO'),(309,8,'TRANCAS'),(310,8,'YERBA BUENA'),(311,10,'BELLA VISTA'),(312,10,'BERËN DE ASTRADA'),(313,10,'CAPITAL'),(314,10,'CONCEPCIËN'),(315,10,'CURUZ? CUATI?'),(316,10,'EMPEDRADO'),(317,10,'ESQUINA'),(318,10,'GENERAL ALVEAR'),(319,10,'GENERAL PAZ'),(320,10,'GOYA'),(321,10,'ITAT?'),(322,10,'ITUZAINGË'),(323,10,'LAVALLE'),(324,10,'MBURUCUY?'),(325,10,'MERCEDES'),(326,10,'MONTE CASEROS'),(327,10,'PASO DE LOS LIBRES'),(328,10,'SALADAS'),(329,10,'SAN COSME'),(330,10,'SAN LUIS DEL PALMAR'),(331,10,'SAN MART?N'),(332,10,'SAN MIGUEL'),(333,10,'SAN ROQUE'),(334,10,'SANTO TOM?'),(335,10,'SAUCE'),(336,11,'AGUIRRE'),(337,11,'ALBERDI'),(338,11,'ATAMISQUI'),(339,11,'AVELLANEDA'),(340,11,'BANDA'),(341,11,'BELGRANO'),(342,11,'CAPITAL'),(343,11,'COPO'),(344,11,'CHOYA'),(345,11,'FIGUEROA'),(346,11,'GENERAL TABOADA'),(347,11,'GUASAY?N'),(348,11,'JIM?NEZ'),(349,11,'JUAN F. IBARRA'),(350,11,'LORETO'),(351,11,'MITRE'),(352,11,'MORENO'),(353,11,'OJO DE AGUA'),(354,11,'PELEGRINI'),(355,11,'QUEBRACHOS'),(356,11,'R?O HONDO'),(357,11,'RIVADAVIA'),(358,11,'ROBLES'),(359,11,'SALAVINA'),(360,11,'SAN MART?N'),(361,11,'SARMIENTO'),(362,11,'SIL?PICA'),(363,13,'COCHINOCA'),(364,13,'EL CARMEN'),(365,13,'DR. MANUEL BELGRANO'),(366,13,'HUMAHUACA'),(367,13,'LEDESMA'),(368,13,'PALPALA'),(369,13,'RINCONADA'),(370,13,'SAN ANTONIO'),(371,13,'SAN PEDRO'),(372,13,'SANTA BARBARA'),(373,13,'SANTA CATALINA'),(374,13,'SUSQUES'),(375,13,'TILCARA'),(376,13,'TUMBAYA'),(377,13,'VALLE GRANDE'),(378,13,'YAVI'),(379,14,'BIEDMA'),(380,14,'CUSHAMEN'),(381,14,'ESCALANTE'),(382,14,'FLORENTINO AMEGHINO'),(383,14,'FUTALEUF?'),(384,14,'GAIMAN'),(385,14,'GASTRE'),(386,14,'LANGUIÐEO'),(387,14,'MARTIRES'),(388,14,'PASO DE LOS INDIOS'),(389,14,'RAWSON'),(390,14,'R?O SENGUER'),(391,14,'SARMIENTO'),(392,14,'TEHUELCHES'),(393,14,'TELSEN'),(394,26,'R?O GRANDE'),(395,26,'USHUAIA'),(396,27,'APËSTOLES'),(397,27,'CAINGU?S'),(398,27,'CANDELARIA'),(399,27,'CAPITAL'),(400,27,'CONCEPCIËN'),(401,27,'EL DORADO'),(402,27,'GENERAL MANUEL BELGRANO'),(403,27,'GUARAN?'),(404,27,'IGUAZ?'),(405,27,'LEANDRO N. ALEM'),(406,27,'LIBERTADOR GENERAL SAN MART?N'),(407,27,'MONTECARLO'),(408,27,'OBER?'),(409,27,'SAN IGNACIO'),(410,27,'SAN JAVIER'),(411,27,'SAN PEDRO'),(412,27,'25 DE MAYO'),(413,29,'CORPEN AIKE'),(414,29,'DESEADO'),(415,29,'G?ER AIKE'),(416,29,'LAGO ARGENTINO'),(417,29,'LAGO BUENOS AIRES'),(418,29,'MAGALLANES'),(419,29,'R?O CHICO'),(420,34,'ALMIRANTE BROWN'),(421,34,'BERMEJO'),(422,34,'COMANDANTE FERN?NDEZ'),(423,34,'CHACABUCO'),(424,34,'12 DE OCTUBRE'),(425,34,'FRAY JUSTO SANTA MAR?A DE ORO'),(426,34,'GENERAL BELGRANO'),(427,34,'GENERAL DONOVAN'),(428,34,'GENERAL G?EMES'),(429,34,'INDEPENDENCIA'),(430,34,'LIBERTAD'),(431,34,'LIBERTADOR GENERAL SAN MART?N'),(432,34,'MAIP?'),(433,34,'MAYOR LUIS J. FONTANA'),(434,34,'9 DE JULIO'),(435,34,'O\'HIGGINS'),(436,34,'PRESIDENCIA DE LA PLAZA'),(437,34,'1º DE MAYO'),(438,34,'QUITILIPI'),(439,34,'SAN FERNANDO'),(440,34,'SAN LORENZO'),(441,34,'SARGENTO CABRAL'),(442,34,'TAPENAGA'),(443,34,'25 DE MAYO'),(444,45,'ANTA'),(445,45,'CACHI'),(446,45,'CAFAYATE'),(447,45,'CAPITAL'),(448,45,'CERRILLOS'),(449,45,'CHICOANA'),(450,45,'GENERAL G?EMES'),(451,45,'GENERAL JOS? DE SAN MART?N'),(452,45,'GUACHIPAS'),(453,45,'IRUY?'),(454,45,'LA CALDERA'),(455,45,'LA CANDELARIA'),(456,45,'LA POMA'),(457,45,'LA VIÐA'),(458,45,'LOS ANDES'),(459,45,'MET?N'),(460,45,'MOLINOS'),(461,45,'OR?N'),(462,45,'RIVADAVIA'),(463,45,'ROSARIO DE LA FRONTERA'),(464,45,'ROSARIO DE LERMA'),(465,45,'SAN CARLOS'),(466,45,'SANTA VICTORIA'),(467,46,'COLËN'),(468,46,'CONCORDIA'),(469,46,'DIAMANTE'),(470,46,'FEDERACIËN'),(471,46,'FEDERAL'),(472,46,'FELICIANO'),(473,46,'GUALEGUAY'),(474,46,'GUALEGUAYCH?'),(475,46,'ISLAS DEL IBICUY'),(476,46,'LA PAZ'),(477,46,'NOGOY?'),(478,46,'PARAN?'),(479,46,'TALA'),(480,46,'URUGUAY'),(481,46,'VICTORIA'),(482,46,'VILLAGUAY'),(483,47,'CAPITAL'),(484,47,'RIVADAVIA'),(485,47,'SANTA LUC?A'),(486,47,'RAWSON'),(487,47,'POCITO'),(488,47,'ZONDA'),(489,47,'ULLUM'),(490,47,'CHIMBAS'),(491,47,'9 DE JULIO'),(492,47,'ALBARDËN'),(493,47,'ANGACO'),(494,47,'SAN MART?N'),(495,47,'CAUCETE'),(496,47,'25 DE MAYO'),(497,47,'SARMIENTO'),(498,47,'CALINGASTA'),(499,47,'IGLESIA'),(500,47,'J?CHAL'),(501,47,'VALLE F?RTIL'),(502,48,'CAPITAL'),(503,48,'GENERAL ALVEAR'),(504,48,'GODOY CRUZ'),(505,48,'GUAYMALL?N'),(506,48,'JUN?N'),(507,48,'LA PAZ'),(508,48,'LAS HERAS'),(509,48,'LAVALLE'),(510,48,'LUJ?N DE CUYO'),(511,48,'MAIP?'),(512,48,'MALARG?E'),(513,48,'RIVADAVIA'),(514,48,'SAN CARLOS'),(515,48,'SAN MART?N'),(516,48,'SAN RAFAEL'),(517,48,'SANTA ROSA'),(518,48,'TUNUY?N'),(519,48,'TUPUNGATO'),(520,49,'BERMEJO'),(521,49,'FORMOSA'),(522,49,'LAISHI'),(523,49,'MATACOS'),(524,49,'PATIÐO'),(525,49,'PILAG?S'),(526,49,'PILCOMAYO'),(527,49,'PIRAN?'),(528,49,'RAMËN LISTA'),(529,50,'BELGRANO'),(530,50,'CASEROS'),(531,50,'CASTELLANOS'),(532,50,'CONSTITUCIËN'),(533,50,'GARAY'),(534,50,'GENERAL LËPEZ'),(535,50,'GENERAL OBLIGADO'),(536,50,'IRIONDO'),(537,50,'LA CAPITAL'),(538,50,'LAS COLONIAS'),(539,50,'9 DE JULIO'),(540,50,'ROSARIO'),(541,50,'SAN CRISTOBAL'),(542,50,'SAN JAVIER'),(543,50,'SAN JERËNIMO'),(544,50,'SAN JUSTO'),(545,50,'SAN LORENZO'),(546,50,'SAN MART?N'),(547,50,'VERA'),(548,9,'RIO PRIMERO'),(549,0,'CAPITAL FEDERAL'),(550,48,'MEN'),(551,48,'MENDOZA'),(552,3,'BUENOS AIRES'),(553,5,'PEDERNERA'),(554,9,'BUENOS AIRES'),(555,5,'CAPITAL'),(556,6,'SIN ESPECIFICAR'),(557,34,'CAPITAL');
/*!40000 ALTER TABLE `tb_departamentos` ENABLE KEYS */;
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