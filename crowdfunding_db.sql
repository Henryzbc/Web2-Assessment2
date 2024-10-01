/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : crowdfunding_db

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 22/09/2024 18:14:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `CATEGORY_ID` int(11) NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'society');
INSERT INTO `category` VALUES (2, 'disaster');
INSERT INTO `category` VALUES (3, 'children');
INSERT INTO `category` VALUES (4, 'physical disability');

-- ----------------------------
-- Table structure for fundraiser
-- ----------------------------
DROP TABLE IF EXISTS `fundraiser`;
CREATE TABLE `fundraiser`  (
  `FUNDRAISER_ID` int(10) NOT NULL AUTO_INCREMENT,
  `ORGANIZER` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CAPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TARGET_FUNDING` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CURRENT_FUNDING` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CITY` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ACTIVE` int(5) NULL DEFAULT NULL,
  `CATEGORY_ID` int(10) NOT NULL,
  `IMG` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DETAIL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`FUNDRAISER_ID`, `CATEGORY_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fundraiser
-- ----------------------------
INSERT INTO `fundraiser` VALUES (1, 'Jackson', 'Rider Care Project', '10,000 AUD', '1000 AUD', 'Byron Bay', 1, 1, './resources/pc-img/18111228220e.png', NULL);
INSERT INTO `fundraiser` VALUES (2, 'Jackson1', 'Language training equipment for special needs children', '20,000 AUD', '2000 AUD', 'Byron Bay', 1, 1, './resources/pc-img/03143658bcpt.jpg', NULL);
INSERT INTO `fundraiser` VALUES (3, 'Jackson2', 'High altitude employee oxygen bar', '30,000 AUD', '2000 AUD', 'Byron Bay', 1, 1, './resources/pc-img/04194040y8hy.png', NULL);
INSERT INTO `fundraiser` VALUES (4, 'Jackson3', 'Charitable Fundraising | Legal Services for Farmers\' Public Welfare', '40,000 AUD', '2000 AUD', 'Byron Bay', 1, 1, './resources/pc-img/11113536p24l.jpg', NULL);
INSERT INTO `fundraiser` VALUES (5, 'Jackson4', 'left-behind children', '50,000 AUD', '2000 AUD', 'Byron Bay', 1, 1, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
