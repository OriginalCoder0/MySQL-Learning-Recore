/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : localhost:3306
 Source Schema         : skgl

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : 65001

 Date: 28/09/2020 11:48:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `ClassID` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ClassName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Monitor` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `StudentNum` int(11) NULL DEFAULT NULL,
  `DepartmentID` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ClassID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('Cs010901', '09软件技术1班', '方凯', 34, 'Dp01');
INSERT INTO `class` VALUES ('Cs010902', '09软件测试1班', '林静', 10, 'Dp01');
INSERT INTO `class` VALUES ('Cs010903', '09数据库班', '黄勇', 28, 'Dp01');
INSERT INTO `class` VALUES ('Cs011104', '11网络工程', NULL, 23, 'Dp01');
INSERT INTO `class` VALUES ('Cs021001', '10电子商务1班', '李米', 33, 'Dp02');
INSERT INTO `class` VALUES ('Cs021002', '10电子商务2班', NULL, NULL, 'Dp02');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `CourseID` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CourseName` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `BookName` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `period` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  PRIMARY KEY (`CourseID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('Dp010001', 'JAVA程序设计', 'Java高级程序设计', 60, 4);
INSERT INTO `course` VALUES ('Dp010002', '计算机网络', '计算机网络', 90, 6);
INSERT INTO `course` VALUES ('Dp010003', '数据库原理与应用', '数据库技术与应用_SQL Server 2005', 60, 4);
INSERT INTO `course` VALUES ('Dp010004', '计算机应用基础', '计算机应用基础', 30, 2);
INSERT INTO `course` VALUES ('Dp020001', '国际贸易实务', '国际贸易实务', 60, 4);
INSERT INTO `course` VALUES ('Dp020002', '电子商务物流管理', '物流学概论', 60, 4);
INSERT INTO `course` VALUES ('Dp030001', '大学英语(一)', '大学英语综合一', 90, 6);

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `DepartmentID` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DepartmentName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DepartmentHeader` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TeacherNum` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`DepartmentID`) USING BTREE,
  UNIQUE INDEX `DepartmentName`(`DepartmentName`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('Dp01', '计算机系', '罗浩然', 120);
INSERT INTO `department` VALUES ('Dp02', '信管系', '李伶俐', NULL);
INSERT INTO `department` VALUES ('Dp03', '英语系', '李宏伟', 10);

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade`  (
  `CourseID` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `StudentID` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Semester` int(11) NOT NULL,
  `SchoolYear` int(11) NULL DEFAULT NULL,
  `Grade` decimal(5, 1) NULL DEFAULT NULL,
  PRIMARY KEY (`CourseID`, `StudentID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('Dp010001', 'St0109010001', 2, 2009, 87.0);
INSERT INTO `grade` VALUES ('Dp010001', 'St0109010002', 2, 2009, 68.0);
INSERT INTO `grade` VALUES ('Dp010001', 'St0109010003', 2, 2009, 92.0);
INSERT INTO `grade` VALUES ('Dp010001', 'St0109010004', 2, 2009, 91.0);
INSERT INTO `grade` VALUES ('Dp010001', 'St0109010005', 2, 2009, 72.0);
INSERT INTO `grade` VALUES ('Dp010001', 'St0109010006', 2, 2009, 87.0);
INSERT INTO `grade` VALUES ('Dp010001', 'St0109010007', 2, 2009, 97.0);
INSERT INTO `grade` VALUES ('Dp010001', 'St0109010009', 2, 2009, 69.0);
INSERT INTO `grade` VALUES ('Dp010001', 'St0109020001', 2, 2009, 56.0);
INSERT INTO `grade` VALUES ('Dp010001', 'St0109020002', 2, 2009, 89.0);
INSERT INTO `grade` VALUES ('Dp010001', 'St0109020003', 2, 2009, 98.0);
INSERT INTO `grade` VALUES ('Dp010001', 'St0109020004', 2, 2009, 76.0);
INSERT INTO `grade` VALUES ('Dp010001', 'St0210010001', 2, 2010, 88.0);
INSERT INTO `grade` VALUES ('Dp010001', 'St0210010002', 2, 2010, 72.0);
INSERT INTO `grade` VALUES ('Dp010001', 'St0210010003', 2, 2010, 71.0);
INSERT INTO `grade` VALUES ('Dp010002', 'St0111040001', 2, 2011, 54.0);
INSERT INTO `grade` VALUES ('Dp010002', 'St0111040002', 2, 2011, 92.0);
INSERT INTO `grade` VALUES ('Dp010002', 'St0111040003', 2, 2011, 95.0);
INSERT INTO `grade` VALUES ('Dp010003', 'St0109010001', 2, 2009, 50.0);
INSERT INTO `grade` VALUES ('Dp010003', 'St0109010002', 2, 2009, 67.0);
INSERT INTO `grade` VALUES ('Dp010003', 'St0109010003', 2, 2009, 61.0);
INSERT INTO `grade` VALUES ('Dp010003', 'St0109010004', 2, 2009, 91.0);
INSERT INTO `grade` VALUES ('Dp010003', 'St0109010005', 2, 2009, 55.0);
INSERT INTO `grade` VALUES ('Dp010003', 'St0109010006', 2, 2009, 68.0);
INSERT INTO `grade` VALUES ('Dp010003', 'St0109010007', 2, 2009, 69.0);
INSERT INTO `grade` VALUES ('Dp010003', 'St0109010009', 2, 2009, 55.0);
INSERT INTO `grade` VALUES ('Dp010003', 'St0109020001', 2, 2009, 93.0);
INSERT INTO `grade` VALUES ('Dp010003', 'St0109020002', 2, 2009, 70.0);
INSERT INTO `grade` VALUES ('Dp010003', 'St0109020003', 2, 2009, 73.0);
INSERT INTO `grade` VALUES ('Dp010003', 'St0109020004', 2, 2009, 81.0);
INSERT INTO `grade` VALUES ('Dp010004', 'St0109010001', 2, 2009, 80.0);
INSERT INTO `grade` VALUES ('Dp010004', 'St0109010002', 2, 2009, 63.0);
INSERT INTO `grade` VALUES ('Dp010004', 'St0109010004', 2, 2009, 57.0);
INSERT INTO `grade` VALUES ('Dp010004', 'St0109010005', 2, 2009, 94.0);
INSERT INTO `grade` VALUES ('Dp010004', 'St0109010006', 2, 2009, 89.0);
INSERT INTO `grade` VALUES ('Dp010004', 'St0109010007', 2, 2009, 83.0);
INSERT INTO `grade` VALUES ('Dp010004', 'St0109010009', 2, 2009, 82.0);
INSERT INTO `grade` VALUES ('Dp010004', 'St0109020001', 2, 2009, 72.0);
INSERT INTO `grade` VALUES ('Dp010004', 'St0109020002', 2, 2009, 57.0);
INSERT INTO `grade` VALUES ('Dp010004', 'St0109020003', 2, 2009, 53.0);
INSERT INTO `grade` VALUES ('Dp010004', 'St0109020004', 2, 2009, 51.0);
INSERT INTO `grade` VALUES ('Dp010004', 'St0111040001', 1, 2012, 55.0);
INSERT INTO `grade` VALUES ('Dp010004', 'St0111040002', 1, 2012, 63.0);
INSERT INTO `grade` VALUES ('Dp010004', 'St0111040003', 1, 2012, 61.0);
INSERT INTO `grade` VALUES ('Dp010004', 'St0210010001', 1, 2011, 99.0);
INSERT INTO `grade` VALUES ('Dp010004', 'St0210010002', 1, 2011, 71.0);
INSERT INTO `grade` VALUES ('Dp010004', 'St0210010003', 1, 2011, 56.0);
INSERT INTO `grade` VALUES ('Dp020001', 'St0210010002', 2, 2010, 64.0);
INSERT INTO `grade` VALUES ('Dp020001', 'St0210010003', 2, 2010, 82.0);
INSERT INTO `grade` VALUES ('Dp020001', 'St0210010004', 2, 2010, 95.0);
INSERT INTO `grade` VALUES ('Dp020001', 'St0210010005', 2, 2010, 86.0);
INSERT INTO `grade` VALUES ('Dp030001', 'St0109010001', 2, 2009, 75.0);
INSERT INTO `grade` VALUES ('Dp030001', 'St0109010002', 2, 2009, 53.0);
INSERT INTO `grade` VALUES ('Dp030001', 'St0109010003', 2, 2009, 64.0);
INSERT INTO `grade` VALUES ('Dp030001', 'St0109010004', 2, 2009, 84.0);
INSERT INTO `grade` VALUES ('Dp030001', 'St0109010005', 2, 2009, 72.0);
INSERT INTO `grade` VALUES ('Dp030001', 'St0109010006', 2, 2009, 93.0);
INSERT INTO `grade` VALUES ('Dp030001', 'St0109010007', 2, 2009, 98.0);
INSERT INTO `grade` VALUES ('Dp030001', 'St0109010009', 2, 2009, 64.0);
INSERT INTO `grade` VALUES ('Dp030001', 'St0109020001', 2, 2009, 77.0);
INSERT INTO `grade` VALUES ('Dp030001', 'St0109020002', 2, 2009, 61.0);
INSERT INTO `grade` VALUES ('Dp030001', 'St0109020003', 2, 2009, 63.0);
INSERT INTO `grade` VALUES ('Dp030001', 'St0109020004', 2, 2009, 51.0);
INSERT INTO `grade` VALUES ('Dp030001', 'St0111040001', 2, 2011, 96.0);
INSERT INTO `grade` VALUES ('Dp030001', 'St0111040002', 2, 2011, 63.0);
INSERT INTO `grade` VALUES ('Dp030001', 'St0111040003', 2, 2011, 71.0);
INSERT INTO `grade` VALUES ('Dp030001', 'St0210010001', 2, 2010, 77.0);
INSERT INTO `grade` VALUES ('Dp030001', 'St0210010002', 2, 2010, 67.0);
INSERT INTO `grade` VALUES ('Dp030001', 'St0210010003', 2, 2010, 91.0);
INSERT INTO `grade` VALUES ('Dp030001', 'St0210010004', 2, 2010, 68.0);
INSERT INTO `grade` VALUES ('Dp030001', 'St0210010005', 2, 2010, 73.0);

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule`  (
  `TeacherID` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `CourseID` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ClassID` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Semester` int(11) NOT NULL,
  `SchoolYear` int(11) NOT NULL,
  PRIMARY KEY (`TeacherID`, `CourseID`, `ClassID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES ('dep01001', 'Dp010003', 'Cs010902', 2, 2009);
INSERT INTO `schedule` VALUES ('dep01001', 'Dp010003', 'Cs010903', 2, 2009);
INSERT INTO `schedule` VALUES ('dep01001', 'Dp010004', 'Cs010901', 2, 2009);
INSERT INTO `schedule` VALUES ('dep01001', 'Dp010004', 'Cs010902', 2, 2009);
INSERT INTO `schedule` VALUES ('dep01002', 'Dp010002', 'Cs011104', 2, 2011);
INSERT INTO `schedule` VALUES ('dep01003', 'Dp010004', 'Cs011104', 1, 2012);
INSERT INTO `schedule` VALUES ('dep01003', 'Dp010004', 'Cs021001', 1, 2011);
INSERT INTO `schedule` VALUES ('dep01005', 'Dp010001', 'Cs010901', 2, 2009);
INSERT INTO `schedule` VALUES ('dep01005', 'Dp010001', 'Cs010902', 2, 2009);
INSERT INTO `schedule` VALUES ('dep01005', 'Dp010001', 'Cs021001', 2, 2010);
INSERT INTO `schedule` VALUES ('dep02001', 'Dp020001', 'Cs021001', 2, 2010);
INSERT INTO `schedule` VALUES ('dep03001', 'Dp030001', 'Cs010901', 2, 2009);
INSERT INTO `schedule` VALUES ('dep03001', 'Dp030001', 'Cs010902', 2, 2009);
INSERT INTO `schedule` VALUES ('dep03001', 'Dp030001', 'Cs011104', 2, 2011);
INSERT INTO `schedule` VALUES ('dep03003', 'Dp030001', 'Cs021001', 2, 2010);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `StudentID` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `StudentName` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birth1` date NULL DEFAULT NULL,
  `HomeAddr` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EntranceTime` datetime(0) NULL DEFAULT '2015-09-01 00:00:00',
  `ClassID` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`StudentID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('S01', '李四', '女', NULL, NULL, NULL, NULL);
INSERT INTO `student` VALUES ('S02', 'zs', '男', NULL, NULL, '2015-09-01 00:00:00', NULL);
INSERT INTO `student` VALUES ('S03', 'zs', '男', NULL, NULL, '2015-09-01 00:00:00', NULL);
INSERT INTO `student` VALUES ('S04', 'zs', '男', NULL, NULL, '2015-09-01 00:00:00', NULL);
INSERT INTO `student` VALUES ('S05', 'zs', '男', NULL, NULL, '2015-09-01 00:00:00', NULL);
INSERT INTO `student` VALUES ('St0109010002', '姜明凡', '男', '1990-12-07', '汕头市天源路34号', '2009-09-19 00:00:00', 'Cs010901');
INSERT INTO `student` VALUES ('St0109010003', '张丽', '女', '1990-09-30', '', '2009-09-19 00:00:00', 'Cs010901');
INSERT INTO `student` VALUES ('St0109010004', '赵新宇', '男', '1991-05-09', NULL, '2009-09-10 00:00:00', 'Cs010901');
INSERT INTO `student` VALUES ('St0109010005', '李宇凯', '男', '1989-11-27', '大连市沙河区花园东街 90 号', '2009-09-10 00:00:00', 'Cs010901');
INSERT INTO `student` VALUES ('St0109010006', '黄丽莉', '女', '1990-08-15', '佛山市南海区南海大道120号', '2009-09-10 00:00:00', 'Cs010901');
INSERT INTO `student` VALUES ('St0109010007', '胡雨樱', '女', '1990-06-23', '佛山市南海区狮山20号', '2009-09-10 00:00:00', 'Cs010901');
INSERT INTO `student` VALUES ('St0109010008', '曹海华', '男', '1992-07-12', '上海市黄石路 50 号', '2009-09-10 00:00:00', 'Cs010901');
INSERT INTO `student` VALUES ('St0109010009', '许田', '男', '1991-02-21', '深圳市福田区福华路29号京海大厦18c', '2009-09-10 00:00:00', 'Cs010901');
INSERT INTO `student` VALUES ('St0109020001', '李平', '男', '1991-04-30', '成都市都江堰红石路321号', '2009-09-10 00:00:00', 'Cs010902');
INSERT INTO `student` VALUES ('St0109020002', '王虎', '男', '1990-10-19', '宜宾市宜宾大道231号', '2009-09-19 00:00:00', 'Cs010902');
INSERT INTO `student` VALUES ('St0109020003', '黄微', '女', '1990-07-18', '鞍山市中山大道786号', '2009-09-19 00:00:00', 'Cs010902');
INSERT INTO `student` VALUES ('St0109020004', '张凯芝', '女', '1989-05-19', '广州市东山区34号', '2009-09-19 00:00:00', 'Cs010902');
INSERT INTO `student` VALUES ('St0111040001', '立号', '男', '1994-11-04', '', '2011-09-13 00:00:00', 'Cs011104');
INSERT INTO `student` VALUES ('St0111040002', '姚钱', '女', '1993-04-02', '成都市武侯区中山大道12号', '2011-09-13 00:00:00', 'Cs011104');
INSERT INTO `student` VALUES ('St0111040003', '方雨丽', '女', '1993-10-04', '', '2011-09-13 00:00:00', 'Cs011104');
INSERT INTO `student` VALUES ('St0210010001', '李平', '女', '1992-12-03', '广州市萝岗区32号', '2010-09-12 00:00:00', 'Cs021001');
INSERT INTO `student` VALUES ('St0210010002', '周雅云', '女', '1991-04-23', '大连市沙河区花园东街 91 号', '2010-09-12 00:00:00', 'Cs021001');
INSERT INTO `student` VALUES ('St0210010003', '王建伟', '男', '1990-10-10', '成都市中山路321号', '2010-09-12 00:00:00', 'Cs021001');
INSERT INTO `student` VALUES ('St0210010004', '梁冬云', '男', '1991-05-04', '成都市中山路322号', '2010-09-12 00:00:00', 'Cs021001');
INSERT INTO `student` VALUES ('St0210010005', '黄树军', '男', '1993-04-08', '佛山市顺德区五一大道120号', '2010-09-12 00:00:00', 'Cs021001');
INSERT INTO `student` VALUES ('St0210010006', '雷立', '男', '1992-09-02', '', '2010-09-12 00:00:00', 'Cs021001');

-- ----------------------------
-- Table structure for student_copy
-- ----------------------------
DROP TABLE IF EXISTS `student_copy`;
CREATE TABLE `student_copy`  (
  `StudentID` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `StudentName` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birth1` date NULL DEFAULT NULL,
  `HomeAddr` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EntranceTime` datetime(0) NULL DEFAULT '2015-09-01 00:00:00',
  `ClassID` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`StudentID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `TeacherID` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Teachername` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Brith` datetime(0) NULL DEFAULT NULL,
  `Profession` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `HomeAddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DepartmentID` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`TeacherID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('dep01001', '王一平', '男', '1968-04-05 00:00:00', '副教授', '86684567', '一宿舍29栋309', 'Dp01');
INSERT INTO `teacher` VALUES ('dep01002', '潘清菊', '女', '1976-09-03 00:00:00', '讲师', '86685633', '一宿舍21栋109', 'Dp01');
INSERT INTO `teacher` VALUES ('dep01003', '陈鹤', '男', '1959-12-05 00:00:00', '教授', '86687656', '一宿舍12栋306', 'Dp01');
INSERT INTO `teacher` VALUES ('dep01004', '周江瑞', '男', '1984-06-05 00:00:00', '助教', '86684332', '一宿舍3栋306', 'Dp01');
INSERT INTO `teacher` VALUES ('dep01005', '朱于龙', '男', '1978-05-06 00:00:00', '讲师', '86687653', '一宿舍1栋206', 'Dp01');
INSERT INTO `teacher` VALUES ('dep02001', '雷燕', '女', '1973-03-02 00:00:00', '副教授', '86687651', '一宿舍1栋106', 'Dp02');
INSERT INTO `teacher` VALUES ('dep02002', '郭菊', '女', '1985-06-07 00:00:00', '助教', '86680975', '一宿舍1栋406', 'Dp02');
INSERT INTO `teacher` VALUES ('dep02003', '刘悠然', '男', '1969-12-09 00:00:00', '教授', '86685645', '一宿舍1栋306', 'Dp02');
INSERT INTO `teacher` VALUES ('dep03001', '胡丽', '女', '1968-06-07 00:00:00', '副教授', '86687904', '一宿舍21栋108', 'Dp03');
INSERT INTO `teacher` VALUES ('dep03002', '刘芳', '女', '1976-08-06 00:00:00', '讲师', '86684312', '一宿舍21栋208', 'Dp03');
INSERT INTO `teacher` VALUES ('dep03003', '雷珍锦', '女', '1978-05-06 00:00:00', '讲师', '86687954', '一宿舍3栋206', 'Dp03');

SET FOREIGN_KEY_CHECKS = 1;
