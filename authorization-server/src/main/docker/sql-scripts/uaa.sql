-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: 172.16.10.105    Database: uaa_server
-- ------------------------------------------------------
-- Server version	5.7.34

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
-- Table structure for table `oauth_access_token`
--
DROP TABLE IF EXISTS `oauth_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` mediumblob,
  `authentication_id` varchar(256) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` mediumblob,
  `refresh_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token`
--

LOCK TABLES `oauth_access_token` WRITE;
/*!40000 ALTER TABLE `oauth_access_token` DISABLE KEYS */;
INSERT INTO `oauth_access_token` VALUES ('5d39620cecda9feb433a81f14ef4efb8',_binary '�\�\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken��6$�\�\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0X-Tenant_IDt\0cuongnmt\0	full_namet\0Nguyễn Minh Cườngt\0phonet\0\n0919510220t\0postal_codet\0	100000000t\0emailt\0nguyenminhcuong2412@gmail.comt\0jtit\0$b333e15c-49e3-4246-bf34-6cd504e1f9fex\0sr\0java.util.Datehj�KYt\0\0xpw\0\0yⶎ\�xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\�Gc�\�ɷ\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\�\ncT\�^\0L\0valueq\0~\0xpt�eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX25hbWUiOiJjdW9uZ25tX2FkbWluIiwiYXV0aG9yaXRpZXMiOlsiUk9MRV9hZG1pbiIsImRlbGV0ZV9wcm9maWxlIiwidXBkYXRlX3Byb2ZpbGUiLCJyZWFkX3Byb2ZpbGUiLCJjcmVhdGVfcHJvZmlsZSJdLCJjbGllbnRfaWQiOiJtb2JpbGUiLCJhdWQiOlsicGF5bWVudCIsImludmVudG9yeSJdLCJYLVRlbmFudF9JRCI6ImN1b25nbm0iLCJmdWxsX25hbWUiOiJOZ3V54buFbiBNaW5oIEPGsOG7nW5nIiwicGhvbmUiOiIwOTE5NTEwMjIwIiwic2NvcGUiOlsiUkVBRCIsIldSSVRFIl0sImF0aSI6ImIzMzNlMTVjLTQ5ZTMtNDI0Ni1iZjM0LTZjZDUwNGUxZjlmZSIsImV4cCI6MTYyMzAwOTk3NywicG9zdGFsX2NvZGUiOiIxMDAwMDAwMDAiLCJqdGkiOiJmNWY0MDY2ZC0wNTcyLTQ2NDktOWU2Mi1kZmEwYmFhNzczOGIiLCJlbWFpbCI6Im5ndXllbm1pbmhjdW9uZzI0MTJAZ21haWwuY29tIn0.xZ2U_BFdgAGudq9pf-7o-L3MR5ukf9pAXo1ZEhuI3_wsq\0~\0w\0\0y\�\�\�nxsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0�\�^�\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet\�l\�Z�\�*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExt\0bearertteyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOlsicGF5bWVudCIsImludmVudG9yeSJdLCJYLVRlbmFudF9JRCI6ImN1b25nbm0iLCJmdWxsX25hbWUiOiJOZ3V54buFbiBNaW5oIEPGsOG7nW5nIiwicGhvbmUiOiIwOTE5NTEwMjIwIiwidXNlcl9uYW1lIjoiY3VvbmdubV9hZG1pbiIsInNjb3BlIjpbIlJFQUQiLCJXUklURSJdLCJleHAiOjE2MjMwMDYyODUsInBvc3RhbF9jb2RlIjoiMTAwMDAwMDAwIiwiYXV0aG9yaXRpZXMiOlsiUk9MRV9hZG1pbiIsImRlbGV0ZV9wcm9maWxlIiwidXBkYXRlX3Byb2ZpbGUiLCJyZWFkX3Byb2ZpbGUiLCJjcmVhdGVfcHJvZmlsZSJdLCJqdGkiOiJiMzMzZTE1Yy00OWUzLTQyNDYtYmYzNC02Y2Q1MDRlMWY5ZmUiLCJlbWFpbCI6Im5ndXllbm1pbmhjdW9uZzI0MTJAZ21haWwuY29tIiwiY2xpZW50X2lkIjoibW9iaWxlIn0.7PupN7dL-5cbiPUISCg4VZz-mnCVImTEld6S0JppzgQ','171d2ba299440d418190a52f4c3b4a33','cuongnm_admin','mobile',_binary '�\�\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1�\�\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0�\�^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0\nROLE_adminsq\0~\0\rt\0create_profilesq\0~\0\rt\0read_profilesq\0~\0\rt\0update_profilesq\0~\0\rt\0delete_profilexq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0\ZL\0scopeq\0~\0xpt\0mobilesr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0\Zxpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0\rcuongnm_adminxsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet\�l\�Z�\�*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsq\0~\0\"?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0+w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0xq\0~\08sr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxq\0~\0\"?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0$q\0~\0%q\0~\0&q\0~\0\'x\0psr\05com.cuongnm.authorization.server.model.AuthUserDetail\�Ca\0�\0\0xr\0+com.cuongnm.authorization.server.model.User��k\�⣫4\0\rZ\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0emailq\0~\0L\0fullNameq\0~\0L\0idt\0Ljava/lang/Integer;L\0passwordq\0~\0L\0phoneq\0~\0L\0\npostalCodeq\0~\0L\0rolesq\0~\0L\0tenantIdq\0~\0L\0usernameq\0~\0xpt\0nguyenminhcuong2412@gmail.comt\0Nguyễn Minh Cườngpt\0D{bcrypt}$2a$10$HwOgNtRI32HfMAFN6uZBHuqA3Xl9kZrGWnq3428QmW21PAXlQl02St\0\n0919510220t\0	100000000sr\0/org.hibernate.collection.internal.PersistentBag>j\r0I_ �\0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection@,�\rX\�R�\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Fxp\0����\0\0\0sr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0sq\0~\0<q\0~\0?q\0~\0@q\0~\0Jq\0~\0Aq\0~\0Bq\0~\0Cq\0~\0Gt\0cuongnmt\0\rcuongnm_admint\01com.cuongnm.authorization.server.model.User.rolespsq\0~\0\0\0\0w\0\0\0sr\0+com.cuongnm.authorization.server.model.Role�\���u��1\0L\0idq\0~\0=L\0nameq\0~\0L\0permissionsq\0~\0L\0tenantIdq\0~\0xpq\0~\0Jq\0~\0sq\0~\0D\0����\0\0\0q\0~\0Jq\0~\0Qt\07com.cuongnm.authorization.server.model.Role.permissionspsq\0~\0\0\0\0w\0\0\0sr\01com.cuongnm.authorization.server.model.Permission�\�w��e\�\0L\0idq\0~\0=L\0nameq\0~\0L\0tenantIdq\0~\0xpq\0~\0Jq\0~\0t\0cuongnmsq\0~\0Usq\0~\0H\0\0\0q\0~\0t\0cuongnmsq\0~\0Usq\0~\0H\0\0\0q\0~\0t\0cuongnmsq\0~\0Usq\0~\0H\0\0\0q\0~\0t\0cuongnmxsq\0~\0\0\0\0w\0\0\0q\0~\0Vq\0~\0Xq\0~\0[q\0~\0^xt\0cuongnmxsq\0~\0\0\0\0w\0\0\0q\0~\0Qxq\0~\0Lq\0~\0M','f7927808dbb848b0d46d814f43d19e52');
/*!40000 ALTER TABLE `oauth_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_approvals`
--

DROP TABLE IF EXISTS `oauth_approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_approvals` (
  `userId` varchar(256) DEFAULT NULL,
  `clientId` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifiedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_approvals`
--

LOCK TABLES `oauth_approvals` WRITE;
/*!40000 ALTER TABLE `oauth_approvals` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_approvals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_details`
--

DROP TABLE IF EXISTS `oauth_client_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(255) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `web_server_redirect_uri` varchar(2048) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `resource_ids` varchar(1024) DEFAULT NULL,
  `authorized_grant_types` varchar(1024) DEFAULT NULL,
  `authorities` varchar(1024) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_details`
--

LOCK TABLES `oauth_client_details` WRITE;
/*!40000 ALTER TABLE `oauth_client_details` DISABLE KEYS */;
INSERT INTO `oauth_client_details` VALUES ('mobile','{bcrypt}$2a$10$HwOgNtRI32HfMAFN6uZBHuqA3Xl9kZrGWnq3428QmW21PAXlQl02S','https://www.facebook.com/','READ,WRITE',3600,10000,'inventory,payment','authorization_code,password,refresh_token,implicit',NULL,'{}',NULL);
/*!40000 ALTER TABLE `oauth_client_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_token`
--

DROP TABLE IF EXISTS `oauth_client_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_client_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` mediumblob,
  `authentication_id` varchar(256) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_token`
--

LOCK TABLES `oauth_client_token` WRITE;
/*!40000 ALTER TABLE `oauth_client_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_client_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_code`
--

DROP TABLE IF EXISTS `oauth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_code` (
  `code` varchar(256) DEFAULT NULL,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_code`
--

LOCK TABLES `oauth_code` WRITE;
/*!40000 ALTER TABLE `oauth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_token`
--

DROP TABLE IF EXISTS `oauth_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` mediumblob,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_token`
--

LOCK TABLES `oauth_refresh_token` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_token` DISABLE KEYS */;
INSERT INTO `oauth_refresh_token` VALUES ('ddf96bdcaae0e3aca39092700d6285d0',_binary '�\�\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\�Gc�\�ɷ\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\�\ncT\�^\0L\0valuet\0Ljava/lang/String;xpteyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOlsicGF5bWVudCIsImludmVudG9yeSJdLCJYLVRlbmFudF9JRCI6bnVsbCwidXNlcl9uYW1lIjoiY3VvbmdubV9hZG1pbiIsInNjb3BlIjpbIlJFQUQiLCJXUklURSJdLCJhdGkiOiIwZDMxOWVjMi1jZDM4LTRiZDAtODc5OC03ZWVkZmE5YjkxYjYiLCJleHAiOjE2MjI5MTk4ODIsImF1dGhvcml0aWVzIjpbIlJPTEVfYWRtaW4iLCJkZWxldGVfcHJvZmlsZSIsInVwZGF0ZV9wcm9maWxlIiwicmVhZF9wcm9maWxlIiwiY3JlYXRlX3Byb2ZpbGUiXSwianRpIjoiYjRlYWUzNWEtMzg0Ny00NDgyLTlkY2EtMmU1ZTI3ZThmMjRmIiwiY2xpZW50X2lkIjoibW9iaWxlIn0.y54SMiBpzWnFMA5o61hTbjek3fTrNBa1gyMI-qGR2SQsr\0java.util.Datehj�KYt\0\0xpw\0\0yݐ&\�x',_binary '�\�\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1�\�\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0�\�^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0\nROLE_adminsq\0~\0\rt\0create_profilesq\0~\0\rt\0read_profilesq\0~\0\rt\0update_profilesq\0~\0\rt\0delete_profilexq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0\ZL\0scopeq\0~\0xpt\0mobilesr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0\Zxpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0\rcuongnm_adminxsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet\�l\�Z�\�*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsq\0~\0\"?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0+w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0xq\0~\08sr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxq\0~\0\"?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0$q\0~\0%q\0~\0&q\0~\0\'x\0psr\05com.cuongnm.authorization.server.model.AuthUserDetail\�Ca\0�\0\0xr\0+com.cuongnm.authorization.server.model.User�L��\�?N�\0	Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0emailq\0~\0L\0idt\0Ljava/lang/Integer;L\0passwordq\0~\0L\0rolesq\0~\0L\0usernameq\0~\0xpt\0nguyenminhcuong2412@gmail.compt\0D{bcrypt}$2a$10$HwOgNtRI32HfMAFN6uZBHuqA3Xl9kZrGWnq3428QmW21PAXlQl02Ssr\0/org.hibernate.collection.internal.PersistentBag>j\r0I_ �\0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection@,�\rX\�R�\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Cxp\0����\0\0\0sr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0sq\0~\0<q\0~\0?q\0~\0Gq\0~\0@q\0~\0Dt\0\rcuongnm_admint\01com.cuongnm.authorization.server.model.User.rolespsq\0~\0\0\0\0w\0\0\0sr\0+com.cuongnm.authorization.server.model.Role���ކ�\�\0L\0idq\0~\0=L\0nameq\0~\0L\0permissionsq\0~\0xpq\0~\0Gq\0~\0sq\0~\0A\0����\0\0\0q\0~\0Gq\0~\0Mt\07com.cuongnm.authorization.server.model.Role.permissionspsq\0~\0\0\0\0w\0\0\0sr\01com.cuongnm.authorization.server.model.Permission*+���Nx\0L\0idq\0~\0=L\0nameq\0~\0xpq\0~\0Gq\0~\0sq\0~\0Qsq\0~\0E\0\0\0q\0~\0sq\0~\0Qsq\0~\0E\0\0\0q\0~\0sq\0~\0Qsq\0~\0E\0\0\0q\0~\0xsq\0~\0\0\0\0w\0\0\0q\0~\0Rq\0~\0Sq\0~\0Uq\0~\0Wxxsq\0~\0\0\0\0w\0\0\0q\0~\0Mxq\0~\0I'),('eb935c7cee1c11e1ba5145287503c183',_binary '�\�\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\�Gc�\�ɷ\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\�\ncT\�^\0L\0valuet\0Ljava/lang/String;xpt@eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOlsicGF5bWVudCIsImludmVudG9yeSJdLCJYLVRlbmFudF9JRCI6ImN1b25nbm0iLCJ1c2VyX25hbWUiOiJjdW9uZ25tX2FkbWluIiwic2NvcGUiOlsiUkVBRCIsIldSSVRFIl0sImF0aSI6ImY2NWFmZjQ2LTU0ODAtNDkxMy05NTEzLWZlYTI3NzVkNWJkMCIsImV4cCI6MTYyMjkxOTg4MiwiYXV0aG9yaXRpZXMiOlsiUk9MRV9hZG1pbiIsImRlbGV0ZV9wcm9maWxlIiwidXBkYXRlX3Byb2ZpbGUiLCJyZWFkX3Byb2ZpbGUiLCJjcmVhdGVfcHJvZmlsZSJdLCJqdGkiOiJiNGVhZTM1YS0zODQ3LTQ0ODItOWRjYS0yZTVlMjdlOGYyNGYiLCJlbWFpbCI6Im5ndXllbm1pbmhjdW9uZzI0MTJAZ21haWwuY29tIiwiY2xpZW50X2lkIjoibW9iaWxlIn0.Llp5uUsWlQDSPqvjjv6STJlSQ3xCFySXLrYQw62rD9Isr\0java.util.Datehj�KYt\0\0xpw\0\0yݐ&\�x',_binary '�\�\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1�\�\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0�\�^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0\nROLE_adminsq\0~\0\rt\0create_profilesq\0~\0\rt\0read_profilesq\0~\0\rt\0update_profilesq\0~\0\rt\0delete_profilexq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0\ZL\0scopeq\0~\0xpt\0mobilesr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0\Zxpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0\rcuongnm_adminxsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet\�l\�Z�\�*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsq\0~\0\"?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0+w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0xq\0~\08sr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxq\0~\0\"?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0$q\0~\0%q\0~\0&q\0~\0\'x\0psr\05com.cuongnm.authorization.server.model.AuthUserDetail\�Ca\0�\0\0xr\0+com.cuongnm.authorization.server.model.User�L��\�?N�\0	Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0emailq\0~\0L\0idt\0Ljava/lang/Integer;L\0passwordq\0~\0L\0rolesq\0~\0L\0usernameq\0~\0xpt\0nguyenminhcuong2412@gmail.compt\0D{bcrypt}$2a$10$HwOgNtRI32HfMAFN6uZBHuqA3Xl9kZrGWnq3428QmW21PAXlQl02Ssr\0/org.hibernate.collection.internal.PersistentBag>j\r0I_ �\0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection@,�\rX\�R�\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Cxp\0����\0\0\0sr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0sq\0~\0<q\0~\0?q\0~\0Gq\0~\0@q\0~\0Dt\0\rcuongnm_admint\01com.cuongnm.authorization.server.model.User.rolespsq\0~\0\0\0\0w\0\0\0sr\0+com.cuongnm.authorization.server.model.Role���ކ�\�\0L\0idq\0~\0=L\0nameq\0~\0L\0permissionsq\0~\0xpq\0~\0Gq\0~\0sq\0~\0A\0����\0\0\0q\0~\0Gq\0~\0Mt\07com.cuongnm.authorization.server.model.Role.permissionspsq\0~\0\0\0\0w\0\0\0sr\01com.cuongnm.authorization.server.model.Permission*+���Nx\0L\0idq\0~\0=L\0nameq\0~\0xpq\0~\0Gq\0~\0sq\0~\0Qsq\0~\0E\0\0\0q\0~\0sq\0~\0Qsq\0~\0E\0\0\0q\0~\0sq\0~\0Qsq\0~\0E\0\0\0q\0~\0xsq\0~\0\0\0\0w\0\0\0q\0~\0Rq\0~\0Sq\0~\0Uq\0~\0Wxxsq\0~\0\0\0\0w\0\0\0q\0~\0Mxq\0~\0I'),('ab27fac10792af992b9de128903c1dce',_binary '�\�\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\�Gc�\�ɷ\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\�\ncT\�^\0L\0valuet\0Ljava/lang/String;xpt@eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOlsicGF5bWVudCIsImludmVudG9yeSJdLCJYLVRlbmFudF9JRCI6ImN1b25nbm0iLCJ1c2VyX25hbWUiOiJjdW9uZ25tX2FkbWluIiwic2NvcGUiOlsiUkVBRCIsIldSSVRFIl0sImF0aSI6IjkyNGQ0OTgxLTQ1ZTItNDVhMy04NTA4LTZmMGUzMjljYmYxMiIsImV4cCI6MTYyMjkyNzc4NCwiYXV0aG9yaXRpZXMiOlsiUk9MRV9hZG1pbiIsImRlbGV0ZV9wcm9maWxlIiwidXBkYXRlX3Byb2ZpbGUiLCJyZWFkX3Byb2ZpbGUiLCJjcmVhdGVfcHJvZmlsZSJdLCJqdGkiOiJjZjc5OTg5OS02MjM4LTQ0MDEtODZmYi0yMmE4YTIzZWYwYzQiLCJlbWFpbCI6Im5ndXllbm1pbmhjdW9uZzI0MTJAZ21haWwuY29tIiwiY2xpZW50X2lkIjoibW9iaWxlIn0.lXj4shM0cCvQ__MWK25WzHp-kcG-Vc15hKTc-sKTFbgsr\0java.util.Datehj�KYt\0\0xpw\0\0y\���x',_binary '�\�\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1�\�\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0�\�^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0\nROLE_adminsq\0~\0\rt\0create_profilesq\0~\0\rt\0read_profilesq\0~\0\rt\0update_profilesq\0~\0\rt\0delete_profilexq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0\ZL\0scopeq\0~\0xpt\0mobilesr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0\Zxpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0\rcuongnm_adminxsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet\�l\�Z�\�*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsq\0~\0\"?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0+w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0xq\0~\08sr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxq\0~\0\"?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0$q\0~\0%q\0~\0&q\0~\0\'x\0psr\05com.cuongnm.authorization.server.model.AuthUserDetail\�Ca\0�\0\0xr\0+com.cuongnm.authorization.server.model.UserP����S\�\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0emailq\0~\0L\0idt\0Ljava/lang/Integer;L\0passwordq\0~\0L\0phoneq\0~\0L\0rolesq\0~\0L\0tenantIdq\0~\0L\0usernameq\0~\0xpt\0nguyenminhcuong2412@gmail.compt\0D{bcrypt}$2a$10$HwOgNtRI32HfMAFN6uZBHuqA3Xl9kZrGWnq3428QmW21PAXlQl02St\0\n0919510220sr\0/org.hibernate.collection.internal.PersistentBag>j\r0I_ �\0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection@,�\rX\�R�\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Dxp\0����\0\0\0sr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0sq\0~\0<q\0~\0?q\0~\0Hq\0~\0@q\0~\0Aq\0~\0Et\0cuongnmt\0\rcuongnm_admint\01com.cuongnm.authorization.server.model.User.rolespsq\0~\0\0\0\0w\0\0\0sr\0+com.cuongnm.authorization.server.model.Role�\���u��1\0L\0idq\0~\0=L\0nameq\0~\0L\0permissionsq\0~\0L\0tenantIdq\0~\0xpq\0~\0Hq\0~\0sq\0~\0B\0����\0\0\0q\0~\0Hq\0~\0Ot\07com.cuongnm.authorization.server.model.Role.permissionspsq\0~\0\0\0\0w\0\0\0sr\01com.cuongnm.authorization.server.model.Permission�\�w��e\�\0L\0idq\0~\0=L\0nameq\0~\0L\0tenantIdq\0~\0xpq\0~\0Hq\0~\0t\0cuongnmsq\0~\0Ssq\0~\0F\0\0\0q\0~\0t\0cuongnmsq\0~\0Ssq\0~\0F\0\0\0q\0~\0t\0cuongnmsq\0~\0Ssq\0~\0F\0\0\0q\0~\0t\0cuongnmxsq\0~\0\0\0\0w\0\0\0q\0~\0Tq\0~\0Vq\0~\0Yq\0~\0\\xt\0cuongnmxsq\0~\0\0\0\0w\0\0\0q\0~\0Oxq\0~\0Jq\0~\0K'),('f08f30f521dd3e4591069e6f4d1b061a',_binary '�\�\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\�Gc�\�ɷ\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\�\ncT\�^\0L\0valuet\0Ljava/lang/String;xpt\\eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOlsicGF5bWVudCIsImludmVudG9yeSJdLCJYLVRlbmFudF9JRCI6ImN1b25nbm0iLCJwaG9uZSI6IjA5MTk1MTAyMjAiLCJ1c2VyX25hbWUiOiJjdW9uZ25tX2FkbWluIiwic2NvcGUiOlsiUkVBRCIsIldSSVRFIl0sImF0aSI6ImUxODM2YmVjLTBkNGItNGI1MC05NzVlLTY1OGNmYTE0OTc2ZSIsImV4cCI6MTYyMjk3OTU5NywiYXV0aG9yaXRpZXMiOlsiUk9MRV9hZG1pbiIsImRlbGV0ZV9wcm9maWxlIiwidXBkYXRlX3Byb2ZpbGUiLCJyZWFkX3Byb2ZpbGUiLCJjcmVhdGVfcHJvZmlsZSJdLCJqdGkiOiJkNjljMDQ0NS03MzFiLTRjOGQtYmUzOS0zNDQ5YzY0Nzc5YzciLCJlbWFpbCI6Im5ndXllbm1pbmhjdW9uZzI0MTJAZ21haWwuY29tIiwiY2xpZW50X2lkIjoibW9iaWxlIn0.dnVI5urHhPwtD-E8v5ToqAQBaKbMNT_6hIbpQNpYJUUsr\0java.util.Datehj�KYt\0\0xpw\0\0y\�VVx',_binary '�\�\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1�\�\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0�\�^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0\nROLE_adminsq\0~\0\rt\0create_profilesq\0~\0\rt\0read_profilesq\0~\0\rt\0update_profilesq\0~\0\rt\0delete_profilexq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0\ZL\0scopeq\0~\0xpt\0mobilesr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0\Zxpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0\rcuongnm_adminxsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet\�l\�Z�\�*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsq\0~\0\"?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0+w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0xq\0~\08sr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxq\0~\0\"?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0$q\0~\0%q\0~\0&q\0~\0\'x\0psr\05com.cuongnm.authorization.server.model.AuthUserDetail\�Ca\0�\0\0xr\0+com.cuongnm.authorization.server.model.UserP����S\�\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0emailq\0~\0L\0idt\0Ljava/lang/Integer;L\0passwordq\0~\0L\0phoneq\0~\0L\0rolesq\0~\0L\0tenantIdq\0~\0L\0usernameq\0~\0xpt\0nguyenminhcuong2412@gmail.compt\0D{bcrypt}$2a$10$HwOgNtRI32HfMAFN6uZBHuqA3Xl9kZrGWnq3428QmW21PAXlQl02St\0\n0919510220sr\0/org.hibernate.collection.internal.PersistentBag>j\r0I_ �\0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection@,�\rX\�R�\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Dxp\0����\0\0\0sr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0sq\0~\0<q\0~\0?q\0~\0Hq\0~\0@q\0~\0Aq\0~\0Et\0cuongnmt\0\rcuongnm_admint\01com.cuongnm.authorization.server.model.User.rolespsq\0~\0\0\0\0w\0\0\0sr\0+com.cuongnm.authorization.server.model.Role�\���u��1\0L\0idq\0~\0=L\0nameq\0~\0L\0permissionsq\0~\0L\0tenantIdq\0~\0xpq\0~\0Hq\0~\0sq\0~\0B\0����\0\0\0q\0~\0Hq\0~\0Ot\07com.cuongnm.authorization.server.model.Role.permissionspsq\0~\0\0\0\0w\0\0\0sr\01com.cuongnm.authorization.server.model.Permission�\�w��e\�\0L\0idq\0~\0=L\0nameq\0~\0L\0tenantIdq\0~\0xpq\0~\0Hq\0~\0t\0cuongnmsq\0~\0Ssq\0~\0F\0\0\0q\0~\0t\0cuongnmsq\0~\0Ssq\0~\0F\0\0\0q\0~\0t\0cuongnmsq\0~\0Ssq\0~\0F\0\0\0q\0~\0t\0cuongnmxsq\0~\0\0\0\0w\0\0\0q\0~\0Tq\0~\0Vq\0~\0Yq\0~\0\\xt\0cuongnmxsq\0~\0\0\0\0w\0\0\0q\0~\0Oxq\0~\0Jq\0~\0K'),('9aa35201c134709cd33f0ccbff65aff4',_binary '�\�\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\�Gc�\�ɷ\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\�\ncT\�^\0L\0valuet\0Ljava/lang/String;xpt\\eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOlsicGF5bWVudCIsImludmVudG9yeSJdLCJYLVRlbmFudF9JRCI6ImN1b25nbm0iLCJwaG9uZSI6IjA5MTk1MTAyMjAiLCJ1c2VyX25hbWUiOiJjdW9uZ25tX2FkbWluIiwic2NvcGUiOlsiUkVBRCIsIldSSVRFIl0sImF0aSI6IjA3ZWFlZmMyLWM2M2MtNGJmNS1iMmY1LTE1ODRmNjJlZTI5ZSIsImV4cCI6MTYyMzAwNzg2MywiYXV0aG9yaXRpZXMiOlsiUk9MRV9hZG1pbiIsImRlbGV0ZV9wcm9maWxlIiwidXBkYXRlX3Byb2ZpbGUiLCJyZWFkX3Byb2ZpbGUiLCJjcmVhdGVfcHJvZmlsZSJdLCJqdGkiOiJmNWUwMDM5NS0zNzUwLTRmMzctYmEwNy0xMmE4NGQwYmRiNmEiLCJlbWFpbCI6Im5ndXllbm1pbmhjdW9uZzI0MTJAZ21haWwuY29tIiwiY2xpZW50X2lkIjoibW9iaWxlIn0.msCXXasnFs93eTRemaW3jAszeiYrFFAj5rSrd7MRHP8sr\0java.util.Datehj�KYt\0\0xpw\0\0y\�Τ;x',_binary '�\�\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1�\�\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0�\�^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0\nROLE_adminsq\0~\0\rt\0create_profilesq\0~\0\rt\0read_profilesq\0~\0\rt\0update_profilesq\0~\0\rt\0delete_profilexq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0\ZL\0scopeq\0~\0xpt\0mobilesr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0\Zxpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0\rcuongnm_adminxsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet\�l\�Z�\�*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsq\0~\0\"?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0+w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0xq\0~\08sr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxq\0~\0\"?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0$q\0~\0%q\0~\0&q\0~\0\'x\0psr\05com.cuongnm.authorization.server.model.AuthUserDetail\�Ca\0�\0\0xr\0+com.cuongnm.authorization.server.model.UserP����S\�\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0emailq\0~\0L\0idt\0Ljava/lang/Integer;L\0passwordq\0~\0L\0phoneq\0~\0L\0rolesq\0~\0L\0tenantIdq\0~\0L\0usernameq\0~\0xpt\0nguyenminhcuong2412@gmail.compt\0D{bcrypt}$2a$10$HwOgNtRI32HfMAFN6uZBHuqA3Xl9kZrGWnq3428QmW21PAXlQl02St\0\n0919510220sr\0/org.hibernate.collection.internal.PersistentBag>j\r0I_ �\0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection@,�\rX\�R�\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Dxp\0����\0\0\0sr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0sq\0~\0<q\0~\0?q\0~\0Hq\0~\0@q\0~\0Aq\0~\0Et\0cuongnmt\0\rcuongnm_admint\01com.cuongnm.authorization.server.model.User.rolespsq\0~\0\0\0\0w\0\0\0sr\0+com.cuongnm.authorization.server.model.Role�\���u��1\0L\0idq\0~\0=L\0nameq\0~\0L\0permissionsq\0~\0L\0tenantIdq\0~\0xpq\0~\0Hq\0~\0sq\0~\0B\0����\0\0\0q\0~\0Hq\0~\0Ot\07com.cuongnm.authorization.server.model.Role.permissionspsq\0~\0\0\0\0w\0\0\0sr\01com.cuongnm.authorization.server.model.Permission�\�w��e\�\0L\0idq\0~\0=L\0nameq\0~\0L\0tenantIdq\0~\0xpq\0~\0Hq\0~\0t\0cuongnmsq\0~\0Ssq\0~\0F\0\0\0q\0~\0t\0cuongnmsq\0~\0Ssq\0~\0F\0\0\0q\0~\0t\0cuongnmsq\0~\0Ssq\0~\0F\0\0\0q\0~\0t\0cuongnmxsq\0~\0\0\0\0w\0\0\0q\0~\0Tq\0~\0Vq\0~\0Yq\0~\0\\xt\0cuongnmxsq\0~\0\0\0\0w\0\0\0q\0~\0Oxq\0~\0Jq\0~\0K'),('8f75dfe90bf42f0026331e8ce98e5a48',_binary '�\�\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\�Gc�\�ɷ\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\�\ncT\�^\0L\0valuet\0Ljava/lang/String;xpt�eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX25hbWUiOiJjdW9uZ25tX2FkbWluIiwiYXV0aG9yaXRpZXMiOlsiUk9MRV9hZG1pbiIsImRlbGV0ZV9wcm9maWxlIiwidXBkYXRlX3Byb2ZpbGUiLCJyZWFkX3Byb2ZpbGUiLCJjcmVhdGVfcHJvZmlsZSJdLCJjbGllbnRfaWQiOiJtb2JpbGUiLCJhdWQiOlsicGF5bWVudCIsImludmVudG9yeSJdLCJYLVRlbmFudF9JRCI6ImN1b25nbm0iLCJmdWxsX25hbWUiOiJOZ3V54buFbiBNaW5oIEMiLCJwaG9uZSI6IjA5MTk1MTAyMjAiLCJzY29wZSI6WyJSRUFEIiwiV1JJVEUiXSwiYXRpIjoiMmM4N2QxOTktNDA5NC00MGY1LTkzMDctODc0NTgzMWIxOGEyIiwiZXhwIjoxNjIzMDA5OTc3LCJwb3N0YWxfY29kZSI6IjEwMDAwMDAwMCIsImp0aSI6ImY1ZjQwNjZkLTA1NzItNDY0OS05ZTYyLWRmYTBiYWE3NzM4YiIsImVtYWlsIjoibmd1eWVubWluaGN1b25nMjQxMkBnbWFpbC5jb20ifQ.xnGOEyrVvMX7kA4LfrzKVEXanzeFMOUfTHTeCEGPKJgsr\0java.util.Datehj�KYt\0\0xpw\0\0y\�\�\�nx',_binary '�\�\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1�\�\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0�\�^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0\nROLE_adminsq\0~\0\rt\0create_profilesq\0~\0\rt\0read_profilesq\0~\0\rt\0update_profilesq\0~\0\rt\0delete_profilexq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0\ZL\0scopeq\0~\0xpt\0mobilesr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0\Zxpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0\rcuongnm_adminxsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet\�l\�Z�\�*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsq\0~\0\"?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0+w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0+w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0xq\0~\08sr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxq\0~\0\"?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0$q\0~\0%q\0~\0&q\0~\0\'x\0psr\05com.cuongnm.authorization.server.model.AuthUserDetail\�Ca\0�\0\0xr\0+com.cuongnm.authorization.server.model.User��k\�⣫4\0\rZ\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0emailq\0~\0L\0fullNameq\0~\0L\0idt\0Ljava/lang/Integer;L\0passwordq\0~\0L\0phoneq\0~\0L\0\npostalCodeq\0~\0L\0rolesq\0~\0L\0tenantIdq\0~\0L\0usernameq\0~\0xpt\0nguyenminhcuong2412@gmail.comt\0Nguyễn Minh Cpt\0D{bcrypt}$2a$10$HwOgNtRI32HfMAFN6uZBHuqA3Xl9kZrGWnq3428QmW21PAXlQl02St\0\n0919510220t\0	100000000sr\0/org.hibernate.collection.internal.PersistentBag>j\r0I_ �\0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection@,�\rX\�R�\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Fxp\0����\0\0\0sr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0sq\0~\0<q\0~\0?q\0~\0@q\0~\0Jq\0~\0Aq\0~\0Bq\0~\0Cq\0~\0Gt\0cuongnmt\0\rcuongnm_admint\01com.cuongnm.authorization.server.model.User.rolespsq\0~\0\0\0\0w\0\0\0sr\0+com.cuongnm.authorization.server.model.Role�\���u��1\0L\0idq\0~\0=L\0nameq\0~\0L\0permissionsq\0~\0L\0tenantIdq\0~\0xpq\0~\0Jq\0~\0sq\0~\0D\0����\0\0\0q\0~\0Jq\0~\0Qt\07com.cuongnm.authorization.server.model.Role.permissionspsq\0~\0\0\0\0w\0\0\0sr\01com.cuongnm.authorization.server.model.Permission�\�w��e\�\0L\0idq\0~\0=L\0nameq\0~\0L\0tenantIdq\0~\0xpq\0~\0Jq\0~\0t\0cuongnmsq\0~\0Usq\0~\0H\0\0\0q\0~\0t\0cuongnmsq\0~\0Usq\0~\0H\0\0\0q\0~\0t\0cuongnmsq\0~\0Usq\0~\0H\0\0\0q\0~\0t\0cuongnmxsq\0~\0\0\0\0w\0\0\0q\0~\0Vq\0~\0Xq\0~\0[q\0~\0^xt\0cuongnmxsq\0~\0\0\0\0w\0\0\0q\0~\0Qxq\0~\0Lq\0~\0M');
/*!40000 ALTER TABLE `oauth_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL,
  `tenantId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,'create_profile','cuongnm'),(2,'read_profile','cuongnm'),(3,'update_profile','cuongnm'),(4,'delete_profile','cuongnm');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `permission_id` (`permission_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `permission_role_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`),
  CONSTRAINT `permission_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(2,2),(3,2);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tenantId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_admin','cuongnm'),(2,'ROLE_operator','cuongnm');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `role_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenantId` varchar(45) NOT NULL,
  `username` varchar(100) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `password` varchar(1024) NOT NULL,
  `email` varchar(1024) NOT NULL,
  `postalCode` varchar(45) DEFAULT NULL,
  `phone` varchar(45) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `accountNonExpired` tinyint(4) NOT NULL,
  `credentialsNonExpired` tinyint(4) NOT NULL,
  `accountNonLocked` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'cuongnm','cuongnm_admin','Nguyễn Minh Cường','{bcrypt}$2a$10$HwOgNtRI32HfMAFN6uZBHuqA3Xl9kZrGWnq3428QmW21PAXlQl02S','nguyenminhcuong2412@gmail.com','100000000','0919510220',1,1,1,1),(2,'cuongnm','cuongnm_user','Nguyễn Minh C','{bcrypt}$2a$10$HwOgNtRI32HfMAFN6uZBHuqA3Xl9kZrGWnq3428QmW21PAXlQl02S','k@krishantha.com','100000000','0919510220',1,1,1,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'uaa_server'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-13  9:48:31
