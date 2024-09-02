-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: challenge
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cachetags`
--

DROP TABLE IF EXISTS `cachetags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cachetags` (
  `tag` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '' COMMENT 'Namespace-prefixed tag string.',
  `invalidations` int NOT NULL DEFAULT '0' COMMENT 'Number incremented when the tag is invalidated.',
  PRIMARY KEY (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Cache table for tracking cache tag invalidations.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cachetags`
--

LOCK TABLES `cachetags` WRITE;
/*!40000 ALTER TABLE `cachetags` DISABLE KEYS */;
INSERT INTO `cachetags` VALUES ('4xx-response',43),('breakpoints',35),('config:block.block.challenge_breadcrumbs',1),('config:block.block.challenge_content',1),('config:block.block.challenge_help',1),('config:block.block.challenge_local_actions',1),('config:block.block.challenge_messages',1),('config:block.block.challenge_page_title',1),('config:block.block.challenge_primary_local_tasks',1),('config:block.block.challenge_secondary_local_tasks',1),('config:block.block.gin_breadcrumbs',1),('config:block.block.gin_content',1),('config:block.block.gin_help',1),('config:block.block.gin_local_actions',1),('config:block.block.gin_messages',1),('config:block.block.gin_page_title',1),('config:block.block.gin_primary_local_tasks',1),('config:block.block.gin_secondary_local_tasks',1),('config:block_list',2),('config:core.base_field_override.node.evento.title',3),('config:core.entity_form_display.node.evento.default',18),('config:core.entity_form_display.node.events.default',7),('config:core.entity_view_display.node.evento.default',18),('config:core.entity_view_display.node.evento.teaser',18),('config:core.entity_view_display.node.events.default',7),('config:core.entity_view_display.node.events.teaser',7),('config:core.extension',6),('config:entity_form_display_list',28),('config:entity_view_display_list',28),('config:field.field.node.evento.body',2),('config:field.field.node.evento.field_data',2),('config:field.field.node.evento.field_data_do_evento',1),('config:field.field.node.evento.field_descricao',3),('config:field.field.node.evento.field_nome',2),('config:field.field.node.evento.field_nome_do_evento',1),('config:field.field.node.evento.field_vagas_disponiveis',2),('config:field.field.node.events.body',1),('config:field.field.node.events.field_vagancies',1),('config:field.storage.node.field_data',2),('config:field.storage.node.field_data_do_evento',1),('config:field.storage.node.field_descricao',3),('config:field.storage.node.field_nome',2),('config:field.storage.node.field_nome_do_evento',1),('config:field.storage.node.field_vagancies',1),('config:field.storage.node.field_vagas_disponiveis',2),('config:gin.settings',2),('config:node.settings',2),('config:node.type.evento',4),('config:node_type_list',7),('config:shortcut.set.default',1),('config:shortcut_set_list',1),('config:system.date',1),('config:system.menu.account',40),('config:system.menu.admin',40),('config:system.menu.footer',40),('config:system.menu.main',40),('config:system.menu.tools',40),('config:system.performance',2),('config:system.theme',4),('entity_bundles',7),('entity_field_info',78),('entity_types',35),('http_response',38),('library_info',7),('local_task',40),('node:1',1),('node:2',2),('node_list',5),('node_list:evento',2),('node_list:events',3),('node_view',28),('rendered',6),('routes',38),('route_match',40),('search_index:help_search',3),('search_index:node_search',4),('shortcut_list:default',1),('views_data',30);
/*!40000 ALTER TABLE `cachetags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-02  9:35:13
