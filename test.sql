/*
 Navicat Premium Data Transfer

 Source Server         : spring boot
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 02/01/2020 14:05:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gift
-- ----------------------------
DROP TABLE IF EXISTS `gift`;
CREATE TABLE `gift`  (
  `g_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '礼物ID',
  `g_price` int(4) NOT NULL COMMENT '礼物价格',
  `g_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '礼物名字',
  `g_picture` blob NOT NULL COMMENT '礼物照片',
  PRIMARY KEY (`g_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gift
-- ----------------------------
INSERT INTO `gift` VALUES (2, 1, '气球', 0x32343239616563383639313964643465333630616366383334303632623133332E6A7067);
INSERT INTO `gift` VALUES (3, 80, '香', 0x28424C4F42292031206279746573);

-- ----------------------------
-- Table structure for object
-- ----------------------------
DROP TABLE IF EXISTS `object`;
CREATE TABLE `object`  (
  `o_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '对象ID',
  `o_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `o_nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '昵称',
  `o_password` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `o_sex` enum('男','女') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '性别',
  `o_email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '邮箱',
  `o_phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `o_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型',
  PRIMARY KEY (`o_id`) USING BTREE,
  UNIQUE INDEX `o_name`(`o_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of object
-- ----------------------------
INSERT INTO `object` VALUES (2, '白净婷', '憨憨', 'att123', '女', '123@qq.com', '12345', '棒');
INSERT INTO `object` VALUES (3, '小白', '憨憨', 'att123', '女', '123@qq.com', '12345', '棒');

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
  `ord_addtime` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ord_id`) USING BTREE,
  INDEX `or_user`(`u_id`) USING BTREE,
  INDEX `or_obj`(`o_id`) USING BTREE,
  CONSTRAINT `or_obj` FOREIGN KEY (`o_id`) REFERENCES `object` (`o_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `or_user` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ord_form
-- ----------------------------
INSERT INTO `ord_form` VALUES (2, 8, 3, 400, 0, '');
INSERT INTO `ord_form` VALUES (3, 8, 3, 250, 3, '');
INSERT INTO `ord_form` VALUES (4, 8, 3, 250, 3, '');
INSERT INTO `ord_form` VALUES (5, 8, 3, 250, 3, '');
INSERT INTO `ord_form` VALUES (6, 13, 3, 250, 3, '');

-- ----------------------------
-- Table structure for persons
-- ----------------------------
DROP TABLE IF EXISTS `persons`;
CREATE TABLE `persons`  (
  `Id_P` int(11) NULL DEFAULT NULL,
  `LastName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `FirstName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `City` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review`  (
  `r_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `u_id` int(10) NOT NULL COMMENT '用户ID',
  `o_id` int(10) NOT NULL COMMENT '对象ID',
  `r_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评论内容',
  `r_chcek` int(4) NOT NULL COMMENT '4不通过6通过',
  `r_addtime` datetime NULL DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`r_id`) USING BTREE,
  INDEX `re_user`(`u_id`) USING BTREE,
  INDEX `re_obj`(`o_id`) USING BTREE,
  CONSTRAINT `re_obj` FOREIGN KEY (`o_id`) REFERENCES `object` (`o_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `re_user` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `u_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `u_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `u_nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '昵称',
  `u_password` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `u_sex` enum('男','女') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '性别',
  `u_email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '邮箱',
  `u_phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  PRIMARY KEY (`u_id`) USING BTREE,
  UNIQUE INDEX `u_name`(`u_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (8, '媪媪', '憨批', 'att1235', '男', '1223@qq.com', '123454');
INSERT INTO `user` VALUES (12, '敖婷婷', '富婆', 'att111', '女', '1235@qq.com', '123445');
INSERT INTO `user` VALUES (13, '猪一笼', '老阿姨', 'fxs123', '女', '111@qq.com', '18888');
INSERT INTO `user` VALUES (14, '梁茜睿', '阿睿苦练韩信', '666666', '男', '666@.com', '182');

SET FOREIGN_KEY_CHECKS = 1;
