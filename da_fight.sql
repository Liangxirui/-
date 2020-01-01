/*
 Navicat Premium Data Transfer

 Source Server         : zyj
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : da_fight

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 10/12/2019 18:00:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator`  (
  `a_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `a_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `a_password` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  PRIMARY KEY (`a_id`) USING BTREE,
  UNIQUE INDEX `a_name`(`a_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES (1, 'qwe123', '123456');
INSERT INTO `administrator` VALUES (2, 'qwe124', '123456');
INSERT INTO `administrator` VALUES (3, 'qwe125', '123456');

-- ----------------------------
-- Table structure for gift
-- ----------------------------
DROP TABLE IF EXISTS `gift`;
CREATE TABLE `gift`  (
  `g_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '礼物ID',
  `g_price` int(4) NOT NULL COMMENT '礼物价格',
  `g_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '礼物名字',
  `g_picture` blob NOT NULL COMMENT '礼物照片',
  PRIMARY KEY (`g_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for object
-- ----------------------------
DROP TABLE IF EXISTS `object`;
CREATE TABLE `object`  (
  `o_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '对象ID',
  `o_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `o_nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '昵称',
  `o_sex` enum('男','女') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '性别',
  `o_password` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `o_email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '邮箱',
  `o_phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '手机号',
  `o_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '类型',
  PRIMARY KEY (`o_id`) USING BTREE,
  UNIQUE INDEX `o_name`(`o_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ord_form
-- ----------------------------
DROP TABLE IF EXISTS `ord_form`;
CREATE TABLE `ord_form`  (
  `ord_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `u_id` int(10) NOT NULL COMMENT '用户ID',
  `o_id` int(10) NOT NULL COMMENT '对象ID',
  `ord_amount` int(4) NOT NULL COMMENT '订单金额',
  `ord_status` int(4) NOT NULL COMMENT '订单状态（0在处理3已完成）',
  `ord_addtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ord_id`) USING BTREE,
  INDEX `or_user`(`u_id`) USING BTREE,
  INDEX `or_obj`(`o_id`) USING BTREE,
  CONSTRAINT `or_obj` FOREIGN KEY (`o_id`) REFERENCES `object` (`o_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `or_user` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review`  (
  `r_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `u_id` int(10) NOT NULL COMMENT '用户ID',
  `o_id` int(10) NOT NULL COMMENT '对象ID',
  `r_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评论内容',
  `r_chcek` int(4) NOT NULL COMMENT '4不通过6通过',
  `r_addtime` datetime(0) NULL DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`r_id`) USING BTREE,
  INDEX `re_user`(`u_id`) USING BTREE,
  INDEX `re_obj`(`o_id`) USING BTREE,
  CONSTRAINT `re_obj` FOREIGN KEY (`o_id`) REFERENCES `object` (`o_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `re_user` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `u_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `u_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `u_nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '昵称',
  `u_password` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `u_sex` enum('男','女') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '性别',
  `u_email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '邮箱',
  `u_phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '手机号',
  PRIMARY KEY (`u_id`) USING BTREE,
  UNIQUE INDEX `u_name`(`u_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'z123', '渣男', '123456', '男', '654987123@qq.com', '12365479887');
INSERT INTO `user` VALUES (2, 'z124', '高富帅', '123456', '男', '654531465@qq.com', '13215446544');
INSERT INTO `user` VALUES (3, 'z125', '吴彦祖', '123465', '男', '231564143@qq.com', '13541215548');

SET FOREIGN_KEY_CHECKS = 1;
