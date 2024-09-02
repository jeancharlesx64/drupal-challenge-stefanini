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
-- Table structure for table `help_search_items`
--

DROP TABLE IF EXISTS `help_search_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_search_items` (
  `sid` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Numeric index of this item in the search index',
  `section_plugin_id` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '' COMMENT 'The help section the item comes from',
  `permission` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '' COMMENT 'The permission needed to view this item',
  `topic_id` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '' COMMENT 'The topic ID of the item',
  PRIMARY KEY (`sid`),
  KEY `section_plugin_id` (`section_plugin_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Stores information about indexed help search items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_search_items`
--

LOCK TABLES `help_search_items` WRITE;
/*!40000 ALTER TABLE `help_search_items` DISABLE KEYS */;
INSERT INTO `help_search_items` VALUES (1,'help_topics','','config.export_full'),(2,'help_topics','','config.export_single'),(3,'help_topics','','config.import_full'),(4,'help_topics','','config.import_single'),(5,'help_topics','','contact.adding_fields'),(6,'help_topics','','contact.configuring_personal'),(7,'help_topics','','contact.creating'),(8,'help_topics','','contact.overview'),(9,'help_topics','','contact.setting_default'),(10,'help_topics','','core.appearance'),(11,'help_topics','','core.config_overview'),(12,'help_topics','','core.content_structure'),(13,'help_topics','','core.cron'),(14,'help_topics','','core.extending'),(15,'help_topics','','core.maintenance'),(16,'help_topics','','core.media'),(17,'help_topics','','core.menus'),(18,'help_topics','','core.performance'),(19,'help_topics','','core.security'),(20,'help_topics','','core.settings_tray'),(21,'help_topics','','core.tracking_content'),(22,'help_topics','','core.translations'),(23,'help_topics','','core.ui_accessibility'),(24,'help_topics','','core.ui_components'),(25,'help_topics','','core.web_services'),(26,'help_topics','','help.help_topic_search'),(27,'help_topics','','help.overview'),(28,'help_topics','','search.configuring'),(29,'help_topics','','search.index'),(30,'help_topics','','search.overview'),(31,'help_topics','','system.cache'),(32,'help_topics','','system.config_basic'),(33,'help_topics','','system.config_error'),(34,'help_topics','','system.maintenance_mode'),(35,'help_topics','','system.module_install'),(36,'help_topics','','system.module_uninstall'),(37,'help_topics','','system.reports'),(38,'help_topics','','system.theme_install'),(39,'help_topics','','system.theme_uninstall'),(40,'help_topics','','user.create'),(41,'help_topics','','user.new_role'),(42,'help_topics','','user.overview'),(43,'help_topics','','user.permissions'),(44,'help_topics','','user.security_account_settings'),(45,'help_topics','','user.update'),(46,'help_topics','','announcements_feed.overview'),(47,'help_topics','','block.configure'),(48,'help_topics','','block.overview'),(49,'help_topics','','block.place'),(50,'help_topics','','filter.overview'),(51,'help_topics','','block_content.add'),(52,'help_topics','','block_content.type'),(53,'help_topics','','breakpoint.overview'),(54,'help_topics','','editor.overview'),(55,'help_topics','','comment.configuring'),(56,'help_topics','','comment.creating_type'),(57,'help_topics','','comment.disabling'),(58,'help_topics','','comment.moderating'),(59,'help_topics','','comment.overview'),(60,'help_topics','','contextual.overview'),(61,'help_topics','','field_ui.add_field'),(62,'help_topics','','field_ui.manage_display'),(63,'help_topics','','field_ui.manage_form'),(64,'help_topics','','field_ui.reference_field'),(65,'help_topics','','node.creating_content'),(66,'help_topics','','node.creating_type'),(67,'help_topics','','node.editing'),(68,'help_topics','','node.overview'),(69,'help_topics','','history.tracking_user_content'),(70,'help_topics','','image.style'),(71,'help_topics','','views.overview'),(72,'help_topics','','menu_ui.content_type_configuration'),(73,'help_topics','','menu_ui.menu_item_add'),(74,'help_topics','','menu_ui.menu_operations'),(75,'help_topics','','menu_ui.overriding'),(76,'help_topics','','path.creating_alias'),(77,'help_topics','','path.editing_alias'),(78,'help_topics','','path.overview'),(79,'help_topics','','shortcut.overview'),(80,'help_topics','','taxonomy.configuring'),(81,'help_topics','','taxonomy.overview'),(82,'help_topics','','views_ui.add_display'),(83,'help_topics','','views_ui.bulk_operations'),(84,'help_topics','','views_ui.create'),(85,'help_topics','','views_ui.edit');
/*!40000 ALTER TABLE `help_search_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-02  9:35:09
