/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.1.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: PIntermodular
-- ------------------------------------------------------
-- Server version	12.1.2-MariaDB-ubu2404

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `year` datetime NOT NULL,
  `photo` longtext NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `book` VALUES
(1,'Llibret 2025: Sostenibilitat','2025-03-01 00:00:00','cover_2025.jpg','download/llibret2025.pdf'),
(2,'Llibret 2024: Arrels','2024-03-01 00:00:00','cover_2024.jpg','download/llibret2024.pdf'),
(3,'Llibret 2023: El Futur','2023-03-01 00:00:00','cover_2023.jpg','download/llibret2023.pdf'),
(4,'Llibret 2022: Tornem','2022-03-01 00:00:00','cover_2022.jpg','download/llibret2022.pdf'),
(5,'Llibret 2021: Edición Virtual','2021-03-01 00:00:00','cover_2021.jpg','download/llibret2021.pdf'),
(6,'Llibret 2020: La història','2020-03-01 00:00:00','cover_2020.jpg','download/llibret2020.pdf'),
(7,'Llibret 2019: Art i Foc','2019-03-01 00:00:00','cover_2019.jpg','download/llibret2019.pdf'),
(8,'Llibret 2018: Tradicions','2018-03-01 00:00:00','cover_2018.jpg','download/llibret2018.pdf'),
(9,'Llibret 2017: Valencia','2017-03-01 00:00:00','cover_2017.jpg','download/llibret2017.pdf'),
(10,'Llibret 50 Aniversario','2016-03-01 00:00:00','cover_special.jpg','download/llibret50.pdf');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` double DEFAULT NULL,
  `assistans` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `events` VALUES
(1,'Crida','2025-02-22 00:00:00','Inicio de la festividad fallera',0,0),
(2,'Estoreta','2025-03-01 10:00:00','Evento organizado por el sector de fallas del barrio del carmen',0,0),
(3,'Discomovil','2025-03-01 23:59:00','Musica para todas la edades',0,0),
(4,'Pregó','2025-03-01 20:30:00','Paseo por el barrio con disfraces',0,0),
(5,'Concurso de Paellas','2025-03-08 12:00:00','Se realizaran paellas a leña y se puntuarán',0,0),
(6,'Cena La Plantà Infantil','2025-03-14 21:00:00','Cena antes de la plantá infantil',0,0),
(7,'Peque Disco','2025-03-14 22:30:00','Disco para los mas peques',0,0),
(8,'Almuerzo Infantil','2025-03-15 10:30:00','Almuerzo para los mas jóvenes',0,0),
(9,'Cena de Plantá','2025-03-15 22:00:00','Cena antes de la plantá',0,0),
(10,'Pasacalles','2025-03-16 12:00:00','Paseo por el barrio con vestimenta fallera',0,0),
(11,'Recogida de premios','2026-03-16 18:00:00','En caso de ganar premios, se otorgaran en la plaza del ayuntamieneto',0,0),
(12,'Pasacalles','2026-03-17 12:00:00','Paseo por el barrio con vestimenta fallera',0,0),
(13,'Tarde de ofrenda','2026-03-17 18:00:00','Ofrenda a la virgen con vestimenta fallera',0,0),
(14,'Moros y cristianos','2026-03-18 20:30:00','Paseo por el barrio con disfraces de moros y cristianos',0,0),
(15,'Cremá','2026-03-19 23:59:00','La cremá de los monumentos falleros',0,0),
(16,'Pasacalles','2026-03-19 12:00:00','Paseo por el barrio con vestimenta fallera',0,0),
(17,'Tarde de Actividades Infantiles','2026-03-19 17:00:00','Se realizan diversas actividades para los mas pequeños',0,0);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `fallas_participants`
--

DROP TABLE IF EXISTS `fallas_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fallas_participants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `rewards` varchar(255) DEFAULT NULL,
  `payment_status` tinyint(4) NOT NULL,
  `rol` varchar(255) DEFAULT NULL,
  `dni` varchar(9) NOT NULL,
  `fee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_15D21BCD7F8F253B` (`dni`),
  KEY `IDX_15D21BCDAB45AECA` (`fee_id`),
  CONSTRAINT `FK_15D21BCDAB45AECA` FOREIGN KEY (`fee_id`) REFERENCES `fees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fallas_participants`
--

LOCK TABLES `fallas_participants` WRITE;
/*!40000 ALTER TABLE `fallas_participants` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `fallas_participants` VALUES
(1,'Vicent García','Adulto','Bunyol d Or',1,'Presidente','12345678A',1),
(2,'Amparo Martínez','Adulto','Bunyol Fulles de Llorer',1,'Fallera Mayor','87654321B',1),
(3,'Josep Roig','Juvenil','Distintiu Coure',0,'Vocal de Festejos','11223344C',3),
(4,'Lucía Sanchis','Infantil','Bunyol Plata',1,'Fallera Mayor Infantil','55667788D',2),
(5,'Carles Soler','Adulto','Bunyol d Or i Brillants',1,'Vicepresidente','99887766E',1),
(6,'Maria Josep','Jubilado','Bunyol d Or',1,'Delegada de Lotería','44332211F',4),
(7,'Pau Vidal','Infantil','Sin recompensa',0,'Presidente Infantil','66554433G',2),
(8,'Laura Ferrandis','Adulto','Bunyol Plata',1,'Secretaria','22334455H',1),
(9,'Antonio Blasco','Honor','Bunyol Col.lectiu',1,'Vocal','77889900J',5),
(10,'Marta Esteve','Adulto','Bunyol d Or',0,'Tesorera','00998877K',1);
/*!40000 ALTER TABLE `fallas_participants` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `fallas_participants_events`
--

DROP TABLE IF EXISTS `fallas_participants_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fallas_participants_events` (
  `fallas_participants_id` int(11) NOT NULL,
  `events_id` int(11) NOT NULL,
  PRIMARY KEY (`fallas_participants_id`,`events_id`),
  KEY `IDX_FA9D374E3EDDB854` (`fallas_participants_id`),
  KEY `IDX_FA9D374E9D6A1065` (`events_id`),
  CONSTRAINT `FK_FA9D374E3EDDB854` FOREIGN KEY (`fallas_participants_id`) REFERENCES `fallas_participants` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_FA9D374E9D6A1065` FOREIGN KEY (`events_id`) REFERENCES `events` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fallas_participants_events`
--

LOCK TABLES `fallas_participants_events` WRITE;
/*!40000 ALTER TABLE `fallas_participants_events` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `fallas_participants_events` VALUES
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(1,6),
(1,7),
(1,9),
(2,2),
(2,4),
(2,5),
(2,6),
(2,7),
(2,9),
(3,3),
(3,5),
(3,8),
(3,9),
(4,2),
(4,4),
(4,5),
(4,7),
(4,9),
(5,1),
(5,7),
(5,9),
(6,7),
(6,9),
(7,4),
(7,5),
(7,7),
(7,9),
(7,10),
(8,1),
(8,7),
(8,9),
(9,7),
(9,9),
(10,1),
(10,7),
(10,9);
/*!40000 ALTER TABLE `fallas_participants_events` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees`
--

LOCK TABLES `fees` WRITE;
/*!40000 ALTER TABLE `fees` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `fees` VALUES
(1,'Adulto General',180),
(2,'Infantil',90),
(3,'Juvenil',120),
(4,'Jubilado',100),
(5,'Honor',0),
(6,'Familiar 3+ miembros',150),
(7,'Bebé (0-2 años)',0),
(8,'Colaborador Externo',50),
(9,'Simpatizante',30),
(10,'Patrocinador VIP',500);
/*!40000 ALTER TABLE `fees` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0E3BD61CE16BA31DBBF396750` (`queue_name`,`available_at`,`delivered_at`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `monument`
--

DROP TABLE IF EXISTS `monument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `monument` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `artist` varchar(255) DEFAULT NULL,
  `photo` longtext NOT NULL,
  `sketch` longtext NOT NULL,
  `pardoned_doll` longtext NOT NULL,
  `prices` varchar(255) DEFAULT NULL,
  `criticism` longtext NOT NULL,
  `year` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monument`
--

LOCK TABLES `monument` WRITE;
/*!40000 ALTER TABLE `monument` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `monument` VALUES
(1,'Metamorfosis','Jose Sales','/images/falla_mayor_2026.jpeg','/images/boceto_mayor_2026.jpeg','/images/indultat_mayor_2026.jpeg','sin premio aun','Reflexiona sobre los cambios que transforman la naturaleza, las personas y los barrios, cuestionando hasta qué punto somos dueños de esas transformaciones o víctimas de ellas','2026-03-15 00:00:00'),
(2,'¡Qué Fàcil És Despistar - Se!','Marisa Falcó Couchoud - Paco Pellicer Brell','/images/falla_infantil_2026.jpeg','/images/boceto_infantil_2026.jpeg','/images/indultat_infantil_2026.jpeg','sin premio aun','Despistar-se va associat a tindre el cap als núvols,\nperò, en realitat, és senyal de felicitat.\nEs despista qui s’enamora.\nTambé la que es distrau mirant com vola una mosca.\nDespisten molt les pantalletes!\nI per descomptat, va despistat el somiador\nque vol fer realitat projectes quasi impossibles.\nDespistar-se és viure despreocupat i feliç,\nsense fer mal a ningú i mirant de fer les coses al teu aire.','2026-03-15 00:00:00'),
(3,'Els Tres Desijos','José Ricardo Carrasco Chiva','/images/falla_mayor_2025.jpeg','/images/boceto_mayor_2025.jpeg','/images/indultat_mayor_2025.jpeg','Sin premio','sin critica aun','2025-03-15 00:00:00'),
(4,'A la Fira del Carme','José Ricardo Carrasco Chiva','/images/falla_infantil_2025.jpeg','/images/boceto_infantil_2025.jpeg','/images/indultat_infantil_2025.jpeg','Sin premio','sin critica aun','2025-03-15 00:00:00'),
(5,'El Carme Resort','Ignacio Ferrando Tamarit','/images/falla_mayor_2024.jpeg','/images/boceto_mayor_2024.jpeg','/images/indultat_mayor_2024.jpeg','Sin premio','sin critica aun','2024-03-15 00:00:00'),
(6,'Cine Exim','Ignacio Ferrando Tamarit','/images/falla_infantil_2024.jpeg','/images/boceto_infantil_2024.jpeg','/images/indultat_infantil_2024.jpeg','Sin premio','sin critica aun','2024-03-15 00:00:00'),
(7,'L´Hortastic','Vicente Julián García Pastor','/images/falla_mayor_2023.jpeg','/images/boceto_mayor_2023.jpeg','/images/indultat_mayor_2023.jpeg','Sin premio','sin critica aun','2023-03-15 00:00:00'),
(8,'Arbolea','Vicente Julián García Pastor','/images/falla_infantil_2023.jpeg','/images/boceto_infantil_2023.jpeg','/images/indultat_infantil_2023.jpeg','Sin premio','sin critica aun','2023-03-15 00:00:00'),
(9,'#063','Vicente Julián García Pastor','/images/falla_mayor_2022.jpeg','/images/boceto_mayor_2022.jpeg','/images/indultat_mayor_2022.jpeg','Sin premio','sin critica aun','2022-03-15 00:00:00'),
(10,'#0631','Vicente Julián García Pastor','/images/falla_infantil_2022.jpeg','/images/boceto_infantil_2022.jpeg','/images/indultat_infantil_2022.jpeg','Sin premio','sin critica aun','2022-03-15 00:00:00'),
(11,'#Trenquem','Vicente Julián García Pastor','/images/falla_mayor_2021.jpeg','/images/boceto_mayor_2021.jpeg','/images/indultat_mayor_2021.jpeg','Sin premio','sin critica aun','2021-03-15 00:00:00'),
(12,'L´Aventura de Llegir','La Comisión','/images/falla_infantil_2021.jpeg','/images/boceto_infantil_2021.jpeg','/images/indultat_infantil_2021.jpeg','Sección: 7º - Ingenio y Gracia: 3º','sin critica aun','2021-03-15 00:00:00'),
(13,'#Trenquem','Vicente Julián García Pastor','','/images/boceto_mayor_2020.jpeg','/images/indultat_mayor_2020.jpeg','Sin premio','sin critica aun','2020-03-15 00:00:00'),
(14,'L´Aventura de Llegir','La Comisión','','/images/boceto_infantil_2020.jpeg','/images/indultat_infantil_2020.jpeg','Sin premio','sin critica aun','2020-03-15 00:00:00');
/*!40000 ALTER TABLE `monument` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `sponsors`
--

DROP TABLE IF EXISTS `sponsors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `photo` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsors`
--

LOCK TABLES `sponsors` WRITE;
/*!40000 ALTER TABLE `sponsors` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `sponsors` VALUES
(1,'Horchatería Daniel','url_logo_daniel.jpg'),
(2,'Arroces El Palmar','url_logo_arroz.jpg'),
(3,'Indumentaria Valenciana Paqui','url_logo_paqui.jpg'),
(4,'Pirotecnia del Turia','url_logo_pirotecnia.jpg'),
(5,'Construcciones Manolo','url_logo_manolo.jpg'),
(6,'Floristería El Jardín','url_logo_flor.jpg'),
(7,'Banco Med','url_logo_banco.jpg'),
(8,'Supermercados Levante','url_logo_super.jpg'),
(9,'Seguros La Confianza','url_logo_seguros.jpg'),
(10,'Panadería La Espiga','url_logo_pan.jpg');
/*!40000 ALTER TABLE `sponsors` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `dni` varchar(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D6497F8F253B` (`dni`),
  UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-02-18 11:17:13
