/*
 Navicat MySQL Data Transfer

 Source Server         : cafe
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : cafe_automation

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 18/05/2020 16:15:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_food
-- ----------------------------
DROP TABLE IF EXISTS `t_food`;
CREATE TABLE `t_food`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `price` int(10) NOT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`, `name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_food
-- ----------------------------
INSERT INTO `t_food` VALUES (17, 'Kek', 6, 'Tatlı');
INSERT INTO `t_food` VALUES (18, 'Muhallebi', 3, 'Tatlı');
INSERT INTO `t_food` VALUES (19, 'Subway Cookie', 9, 'Tatlı');
INSERT INTO `t_food` VALUES (20, 'Coca Cola', 5, 'İçecek');
INSERT INTO `t_food` VALUES (21, 'Türk Kahvesi', 8, 'İçecek');
INSERT INTO `t_food` VALUES (22, 'Sprite', 5, 'İçecek');
INSERT INTO `t_food` VALUES (23, 'Milkshake', 8, 'İçecek');
INSERT INTO `t_food` VALUES (24, 'Hamburger', 17, 'Burgers');
INSERT INTO `t_food` VALUES (25, 'Cheeseburger', 15, 'Burgers');
INSERT INTO `t_food` VALUES (26, 'Chickenburger', 14, 'Burgers');
INSERT INTO `t_food` VALUES (27, 'Fanta', 5, 'İçecek');
INSERT INTO `t_food` VALUES (28, 'İce Tea', 4, 'İçecek');
INSERT INTO `t_food` VALUES (29, 'Güllaç', 11, 'Tatlı');
INSERT INTO `t_food` VALUES (30, 'Künefe', 12, 'Tatlı');
INSERT INTO `t_food` VALUES (31, 'Izgara Köfte', 20, 'Izgaralar');
INSERT INTO `t_food` VALUES (32, 'Kaşarlı Köfte', 19, 'Izgaralar');
INSERT INTO `t_food` VALUES (33, 'Pirzola', 25, 'Izgaralar');
INSERT INTO `t_food` VALUES (34, 'Bonfile', 26, 'Izgaralar');
INSERT INTO `t_food` VALUES (35, 'Kuzu Şiş', 25, 'Izgaralar');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` tinyint(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `t_order_user_id`(`user_id`) USING BTREE,
  INDEX `t_order_order_id`(`order_id`) USING BTREE,
  CONSTRAINT `t_order_order_id` FOREIGN KEY (`order_id`) REFERENCES `t_food` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_order_user_id` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------

-- ----------------------------
-- Table structure for t_payment
-- ----------------------------
DROP TABLE IF EXISTS `t_payment`;
CREATE TABLE `t_payment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `orders` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `datetime` datetime(0) NOT NULL,
  `price` int(10) NOT NULL,
  `personnel` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `bill_personnel` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `billing_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_payment
-- ----------------------------
INSERT INTO `t_payment` VALUES (5, 'MASA_03', 'Türk Kahvesi\nKek\n', '2020-05-15 01:27:25', 20, 'regaip aydoğdu', 'null null', 'Kredi Kartı');
INSERT INTO `t_payment` VALUES (7, 'MASA_01', 'Kek\nKek\nKek\nKek\nKek\nKek\nKek\nKek\nKek\nKek\nMuhallebi\n', '2020-05-15 01:35:07', 53, 'enes öztürk', 'null null', 'Kredi Kartı');
INSERT INTO `t_payment` VALUES (8, 'MASA_02', 'Coca Cola\nCoca Cola\nCoca Cola\nCoca Cola\nCoca Cola\nCoca Cola\nCoca Cola\nCoca Cola\nCoca Cola\nCoca Cola\nKek\n', '2020-05-15 01:35:55', 85, 'regaip aydoğdu', 'null null', 'Kredi Kartı');
INSERT INTO `t_payment` VALUES (9, 'MASA_03', 'Türk Kahvesi\nKek\n', '2020-05-15 01:36:53', 20, 'regaip aydoğdu', 'null null', 'Kredi Kartı');
INSERT INTO `t_payment` VALUES (10, 'MASA_01', 'Coca Cola\nTürk Kahvesi\nKek\nKek\nKek\nSubway Cookie\nKek\n', '2020-05-15 01:52:40', 58, 'Bahattin Kaygısız', 'Esra Güzelce', 'Kredi Kartı');
INSERT INTO `t_payment` VALUES (11, 'MASA_01', 'Muhallebi\nSprite\nSprite\nSprite\nSprite\nSprite\nSubway Cookie\nTürk Kahvesi\nTürk Kahvesi\nKek\n', '2020-05-15 01:58:22', 78, 'Bahattin Kaygısız', 'mert yürek', 'Nakit');
INSERT INTO `t_payment` VALUES (12, 'MASA_01', 'Türk Kahvesi\nCoca Cola\nSubway Cookie\nKek\nMuhallebi\n', '2020-05-18 15:13:16', 46, 'mert yürek', 'mert yürek', 'Kredi Kartı');

-- ----------------------------
-- Table structure for t_table
-- ----------------------------
DROP TABLE IF EXISTS `t_table`;
CREATE TABLE `t_table`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`, `code`) USING BTREE,
  INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_table
-- ----------------------------
INSERT INTO `t_table` VALUES (1, 'MASA_01');
INSERT INTO `t_table` VALUES (2, 'MASA_02');
INSERT INTO `t_table` VALUES (3, 'MASA_03');
INSERT INTO `t_table` VALUES (4, 'MASA_04');
INSERT INTO `t_table` VALUES (5, 'MASA_05');
INSERT INTO `t_table` VALUES (6, 'MASA_06');
INSERT INTO `t_table` VALUES (7, 'MASA_07');
INSERT INTO `t_table` VALUES (8, 'MASA_08');
INSERT INTO `t_table` VALUES (9, 'MASA_10');
INSERT INTO `t_table` VALUES (10, 'MASA_11');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` tinyint(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `name` char(24) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `surname` char(16) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `auth` tinyint(1) NOT NULL,
  `role` char(16) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`, `username`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', 'admin', 'Deneme', 'Admin', 1, 'Patron');
INSERT INTO `t_user` VALUES (2, 'esraguzelce01', '1', 'Esra', 'Güzelce', 2, 'Kasiyer');
INSERT INTO `t_user` VALUES (3, 'regaip01', '1', 'Regaip', 'Aydoğdu', 3, 'Garson');
INSERT INTO `t_user` VALUES (4, 'bahattin01', '123', 'Bahattin', 'Kaygısız', 3, 'Garson');

SET FOREIGN_KEY_CHECKS = 1;
