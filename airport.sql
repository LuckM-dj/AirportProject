/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : airport

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 29/05/2019 20:23:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_air_con_state
-- ----------------------------
DROP TABLE IF EXISTS `tb_air_con_state`;
CREATE TABLE `tb_air_con_state`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `air_con_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '空调名称',
  `state_id` int(20) DEFAULT NULL COMMENT '状态ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_air_con_state
-- ----------------------------
INSERT INTO `tb_air_con_state` VALUES (1, '机房空调', 1);
INSERT INTO `tb_air_con_state` VALUES (2, '餐厅空调', 2);

-- ----------------------------
-- Table structure for tb_department
-- ----------------------------
DROP TABLE IF EXISTS `tb_department`;
CREATE TABLE `tb_department`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `department_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '部门名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_department
-- ----------------------------
INSERT INTO `tb_department` VALUES (1, '机电队');
INSERT INTO `tb_department` VALUES (2, '暖通队');
INSERT INTO `tb_department` VALUES (3, '电力队');
INSERT INTO `tb_department` VALUES (4, '综合队');

-- ----------------------------
-- Table structure for tb_duty
-- ----------------------------
DROP TABLE IF EXISTS `tb_duty`;
CREATE TABLE `tb_duty`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `date` datetime(6) DEFAULT NULL COMMENT '日期',
  `user_id` int(20) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_duty
-- ----------------------------
INSERT INTO `tb_duty` VALUES (1, '2018-10-24 23:40:23.000000', 1);
INSERT INTO `tb_duty` VALUES (2, '2018-10-08 08:45:23.000000', 2);

-- ----------------------------
-- Table structure for tb_equipment
-- ----------------------------
DROP TABLE IF EXISTS `tb_equipment`;
CREATE TABLE `tb_equipment`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `equipment_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设备名称',
  `check` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '检调日常',
  `check_part` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '检查部位/项目',
  `checkInfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '检查情况',
  `problem` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '存在问题/处理情况',
  `user_id` int(20) DEFAULT NULL COMMENT '用户id(json)格式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_equipment
-- ----------------------------
INSERT INTO `tb_equipment` VALUES (1, '空调', '正常', '机电部', '正常', '没有', 1);

-- ----------------------------
-- Table structure for tb_fault_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_fault_type`;
CREATE TABLE `tb_fault_type`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `fault_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '故障名称',
  `process_id` int(20) DEFAULT NULL COMMENT '处理进度ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_fault_type
-- ----------------------------
INSERT INTO `tb_fault_type` VALUES (1, '空调维修', 1);
INSERT INTO `tb_fault_type` VALUES (2, '管道维修', 2);

-- ----------------------------
-- Table structure for tb_fromid
-- ----------------------------
DROP TABLE IF EXISTS `tb_fromid`;
CREATE TABLE `tb_fromid`  (
  `fromid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createTime` datetime(6) NOT NULL COMMENT '当前添加时间',
  `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 149 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_fromid
-- ----------------------------
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 09:14:22.701000', 19);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 09:38:05.489000', 20);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 09:38:56.762000', 21);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 09:40:31.443000', 22);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 10:11:06.967000', 23);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 10:30:41.273000', 24);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 10:36:43.683000', 25);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 10:37:12.547000', 26);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 10:39:10.853000', 27);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 10:40:01.618000', 28);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 10:40:16.110000', 29);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 10:41:05.921000', 30);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 10:41:28.467000', 31);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 10:42:55.568000', 32);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 10:43:12.957000', 33);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 10:43:57.077000', 34);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 10:45:54.671000', 35);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 11:06:19.271000', 36);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 11:18:34.295000', 37);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 11:18:44.593000', 38);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 11:23:58.990000', 39);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 11:24:14.350000', 40);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 11:27:05.421000', 41);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 11:30:47.293000', 42);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 11:32:08.682000', 43);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:16:23.011000', 44);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:27:46.669000', 45);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:30:07.389000', 46);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:34:30.063000', 47);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:35:09.653000', 48);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:36:33.699000', 49);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:37:56.769000', 50);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:41:37.292000', 51);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:42:42.249000', 52);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:42:52.348000', 53);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:42:59.073000', 54);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:43:12.826000', 55);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:43:18.959000', 56);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:45:21.380000', 57);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:45:33.514000', 58);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:47:42.921000', 59);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:54:41.436000', 60);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:55:09.610000', 61);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:55:18.583000', 62);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:55:24.527000', 63);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:55:50.381000', 64);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:56:56.248000', 65);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-24 23:57:49.636000', 66);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 09:25:08.130000', 67);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 10:29:42.278000', 68);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 10:30:06.935000', 69);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 10:30:20.560000', 70);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 10:30:34.045000', 71);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 10:34:09.065000', 72);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 10:48:21.604000', 73);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 10:51:56.436000', 74);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 10:53:45.008000', 75);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 10:55:01.785000', 76);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 10:58:14.366000', 77);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 11:00:18.296000', 78);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 11:03:26.379000', 79);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 11:08:34.149000', 80);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 11:10:06.830000', 81);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 11:10:21.836000', 82);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 11:11:15.334000', 83);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 11:11:24.599000', 84);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 11:12:20.853000', 85);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 11:13:58.974000', 86);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 11:14:02.523000', 87);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-25 11:14:28.924000', 88);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 18:06:07.600000', 89);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 18:06:12.350000', 90);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 18:06:14.813000', 91);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 19:05:48.662000', 92);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 19:20:46.960000', 93);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 19:20:49.685000', 94);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 21:32:54.049000', 95);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 21:34:34.769000', 96);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 21:34:42.616000', 97);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 21:47:23.962000', 98);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 21:47:25.997000', 99);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 21:47:39.735000', 100);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 21:48:12.352000', 101);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 21:52:53.624000', 102);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 21:57:02.983000', 103);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:00:16.391000', 104);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:00:34.600000', 105);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:02:59.094000', 106);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:04:24.608000', 107);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:04:56.422000', 108);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:09:34.808000', 109);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:09:39.350000', 110);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:09:41.595000', 111);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:10:01.734000', 112);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:10:11.056000', 113);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:10:13.444000', 114);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:10:15.099000', 115);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:10:16.763000', 116);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:10:19.541000', 117);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:10:49.390000', 118);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:10:51.565000', 119);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:10:53.211000', 120);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:10:54.916000', 121);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:10:55.828000', 122);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:10:56.746000', 123);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:30:02.320000', 124);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:35:11.542000', 125);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:35:32.845000', 126);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:35:39.875000', 127);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:35:45.236000', 128);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:35:46.595000', 129);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:40:30.567000', 130);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:40:32.041000', 131);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:40:32.914000', 132);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:40:33.577000', 133);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:40:34.153000', 134);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:40:34.754000', 135);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:40:49.035000', 136);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:40:52.044000', 137);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:40:52.898000', 138);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:42:11.564000', 139);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:42:13.740000', 140);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:42:27.988000', 141);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:42:29.506000', 142);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-28 22:42:32.228000', 143);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-29 08:51:47.660000', 144);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-29 09:20:22.308000', 145);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-29 09:21:41.244000', 146);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-29 09:48:34.232000', 147);
INSERT INTO `tb_fromid` VALUES ('the formId is a mock one', '2019-05-29 16:09:21.071000', 148);

-- ----------------------------
-- Table structure for tb_location
-- ----------------------------
DROP TABLE IF EXISTS `tb_location`;
CREATE TABLE `tb_location`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `location_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地点名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_location
-- ----------------------------
INSERT INTO `tb_location` VALUES (1, '机房');
INSERT INTO `tb_location` VALUES (2, '餐厅');
INSERT INTO `tb_location` VALUES (3, '实验室');
INSERT INTO `tb_location` VALUES (4, '教学楼');

-- ----------------------------
-- Table structure for tb_notice
-- ----------------------------
DROP TABLE IF EXISTS `tb_notice`;
CREATE TABLE `tb_notice`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `infor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容',
  `datetime` datetime(6) DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_notice
-- ----------------------------
INSERT INTO `tb_notice` VALUES (1, '温馨提示', '电路老化', '2018-02-19 03:59:58.000000');
INSERT INTO `tb_notice` VALUES (2, '通告', '明天中午开会', '2018-10-23 22:29:40.000000');

-- ----------------------------
-- Table structure for tb_permiss
-- ----------------------------
DROP TABLE IF EXISTS `tb_permiss`;
CREATE TABLE `tb_permiss`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `permission_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '权限名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_permiss
-- ----------------------------
INSERT INTO `tb_permiss` VALUES (1, '管理员');
INSERT INTO `tb_permiss` VALUES (2, '超级管理员');
INSERT INTO `tb_permiss` VALUES (3, '员工');

-- ----------------------------
-- Table structure for tb_process
-- ----------------------------
DROP TABLE IF EXISTS `tb_process`;
CREATE TABLE `tb_process`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `process_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地点名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_process
-- ----------------------------
INSERT INTO `tb_process` VALUES (1, '待审核');
INSERT INTO `tb_process` VALUES (2, '待通过');
INSERT INTO `tb_process` VALUES (3, '完成');

-- ----------------------------
-- Table structure for tb_repairs
-- ----------------------------
DROP TABLE IF EXISTS `tb_repairs`;
CREATE TABLE `tb_repairs`  (
  `id` int(20) NOT NULL COMMENT 'id',
  `time` datetime(6) DEFAULT NULL COMMENT '保修时间',
  `person_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '保修人员',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '反馈电话',
  `location_id` int(11) DEFAULT NULL,
  `fault_type_id` int(20) DEFAULT NULL,
  `describe_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `process_id` int(20) DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `department_id` int(20) DEFAULT NULL,
  `aceept_person_id` int(20) DEFAULT NULL,
  `comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time_complated` datetime(6) DEFAULT NULL,
  `isDelete` int(20) UNSIGNED ZEROFILL NOT NULL COMMENT '是否删除',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_repairs
-- ----------------------------
INSERT INTO `tb_repairs` VALUES (1, '2018-10-22 22:57:15.000000', '张三', '13980312687', 1, 1, '空调保修', 1, '待审核', 1, 1, '未完成', 'sssssssss', NULL, 00000000000000000000, '');
INSERT INTO `tb_repairs` VALUES (2, '2018-10-23 14:33:14.000000', '李四', '13978490700', 2, 1, '餐厅保修', 1, '待审核', 2, 1, '未完成', NULL, NULL, 00000000000000000000, NULL);
INSERT INTO `tb_repairs` VALUES (3, '2018-06-23 21:58:59.000000', '邓杰', '13126879521', 3, 1, '机场保修', 2, '待通过', 1, 10002, '待审核', '', NULL, 00000000000000000000, '');
INSERT INTO `tb_repairs` VALUES (4, '2018-10-23 22:14:58.000000', '邓杰', '13126789425', 3, 2, '机场保修', 1, '待审核', 4, 10002, '待审核', '', NULL, 00000000000000000001, '提示框测试');
INSERT INTO `tb_repairs` VALUES (5, '2018-10-25 11:04:41.000000', '李冰', '12345678912', 3, 3, '食堂二楼灯泡坏了', 1, '待审核', 3, 10002, '待审核', '', NULL, 00000000000000000001, '撤回原因');
INSERT INTO `tb_repairs` VALUES (6, '2018-10-30 11:36:48.000000', '张三', '15516348590', 2, 1, '大厅的空调坏了', 2, '待通过', 1, 10002, '待审核', '[\"wxfile://tmp_20fbce34689686a973b59947ec67e27cea79fadec282ea4e.jpg\"]', NULL, 00000000000000000000, NULL);
INSERT INTO `tb_repairs` VALUES (7, '2019-05-03 14:46:35.000000', '邓杰', '13980312687', 3, 1, '测试', 3, '已完成', 1, 10002, '待审核', NULL, '2019-05-29 09:21:46.000000', 00000000000000000000, NULL);
INSERT INTO `tb_repairs` VALUES (8, '2019-05-21 15:01:30.000000', '邓杰', '13980312687', 4, 1, 'e', 3, '已完成', 4, 10002, '待审核', '', '2019-05-29 09:20:31.000000', 00000000000000000000, NULL);

-- ----------------------------
-- Table structure for tb_report
-- ----------------------------
DROP TABLE IF EXISTS `tb_report`;
CREATE TABLE `tb_report`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(20) DEFAULT NULL COMMENT '用户id',
  `record` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '记录',
  `datetime` datetime(6) DEFAULT NULL COMMENT '上报时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_report
-- ----------------------------
INSERT INTO `tb_report` VALUES (1, 1, 'weixiu', '2018-09-10 07:56:12.000000');
INSERT INTO `tb_report` VALUES (2, 1, 'baoxiu', '2018-09-28 08:45:56.000000');

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES (1, '报修人员');
INSERT INTO `tb_role` VALUES (2, '管理人员');
INSERT INTO `tb_role` VALUES (3, '队长人员');
INSERT INTO `tb_role` VALUES (4, '维修人员');

-- ----------------------------
-- Table structure for tb_role_permiss
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_permiss`;
CREATE TABLE `tb_role_permiss`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(20) DEFAULT NULL COMMENT '用户ID',
  `permiss_id` int(20) DEFAULT NULL COMMENT '权限ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_role_permiss
-- ----------------------------
INSERT INTO `tb_role_permiss` VALUES (1, 1, 1);

-- ----------------------------
-- Table structure for tb_sec
-- ----------------------------
DROP TABLE IF EXISTS `tb_sec`;
CREATE TABLE `tb_sec`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user-id` int(20) DEFAULT NULL COMMENT '用户ID',
  `pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_sec
-- ----------------------------
INSERT INTO `tb_sec` VALUES (1, 1, '139456161');

-- ----------------------------
-- Table structure for tb_state
-- ----------------------------
DROP TABLE IF EXISTS `tb_state`;
CREATE TABLE `tb_state`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `state_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_state
-- ----------------------------
INSERT INTO `tb_state` VALUES (1, '机房');
INSERT INTO `tb_state` VALUES (2, '餐厅');
INSERT INTO `tb_state` VALUES (3, '阳台');

-- ----------------------------
-- Table structure for tb_subord_department
-- ----------------------------
DROP TABLE IF EXISTS `tb_subord_department`;
CREATE TABLE `tb_subord_department`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `department_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '部门名称',
  `repair_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保修电话',
  `service_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '服务内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_subord_department
-- ----------------------------
INSERT INTO `tb_subord_department` VALUES (1, '机电队', '59687', '电力坏了');
INSERT INTO `tb_subord_department` VALUES (2, '暖通队', '59322', '暖气坏了');
INSERT INTO `tb_subord_department` VALUES (3, '综合队', '98754', '抢修');

-- ----------------------------
-- Table structure for tb_task
-- ----------------------------
DROP TABLE IF EXISTS `tb_task`;
CREATE TABLE `tb_task`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `task_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '任务名称',
  `cycle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '执行周期',
  `date` datetime(6) DEFAULT NULL COMMENT '执行日期',
  `time` datetime(6) DEFAULT NULL COMMENT '执行时间',
  `validity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '有效期',
  `state_id` int(20) DEFAULT NULL COMMENT '状态ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_task
-- ----------------------------
INSERT INTO `tb_task` VALUES (1, '微信机房空调', '2', '2018-02-07 00:00:00.000000', '2018-12-08 00:00:00.000000', '待审核', 1);

-- ----------------------------
-- Table structure for tb_task_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_task_info`;
CREATE TABLE `tb_task_info`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `task_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '任务内容',
  `fault_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '故障类型',
  `process_id` int(20) DEFAULT NULL COMMENT '处理进度ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_task_info
-- ----------------------------
INSERT INTO `tb_task_info` VALUES (1, '检查', '维修', 1);

-- ----------------------------
-- Table structure for tb_temperature
-- ----------------------------
DROP TABLE IF EXISTS `tb_temperature`;
CREATE TABLE `tb_temperature`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `location_id` int(20) DEFAULT NULL COMMENT '地点ID',
  `temperature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '温度',
  `update_datetime` datetime(6) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_temperature
-- ----------------------------
INSERT INTO `tb_temperature` VALUES (1, 1, '34', '2019-05-22 21:38:30.000000');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登录名',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `subord_department_id` int(20) DEFAULT NULL COMMENT '下属部门ID',
  `role_id` int(20) NOT NULL DEFAULT 1 COMMENT '角色ID',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注信息',
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户的唯一标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, '张三', '张三', 1, 1, '13980312687', '111', 'oh5X64nL6ox52o1DBkjTieNWJudc');
INSERT INTO `tb_user` VALUES (2, '李四', '李四', 2, 2, '17689161719', '222', 'oh5X64nL6ox52o1DBkjTieNWJudc');
INSERT INTO `tb_user` VALUES (4, '仿', '邓杰', 2, 1, '17683161719', '333', 'oh5X64nL6ox52o1DBkjTieNWJudc');

-- ----------------------------
-- Table structure for tb_water_meter
-- ----------------------------
DROP TABLE IF EXISTS `tb_water_meter`;
CREATE TABLE `tb_water_meter`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `location_id` int(11) DEFAULT NULL COMMENT '地点',
  `datetime` datetime(6) DEFAULT NULL COMMENT '时间',
  `number` int(20) DEFAULT NULL COMMENT '当前数值',
  `energy_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '能源类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_water_meter
-- ----------------------------
INSERT INTO `tb_water_meter` VALUES (1, 1, '2018-05-08 00:00:00.000000', 12, '1');
INSERT INTO `tb_water_meter` VALUES (2, 2, '2018-10-24 20:26:52.000000', 34, '2');

-- ----------------------------
-- Event structure for auto_delete
-- ----------------------------
DROP EVENT IF EXISTS `auto_delete`;
delimiter ;;
CREATE DEFINER = `root`@`localhost` EVENT `auto_delete`
ON SCHEDULE
EVERY '1' DAY STARTS '2019-05-18 15:38:00'
ON COMPLETION PRESERVE
COMMENT '自动删除6天前的数据'
DO call prc_del(6)
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
