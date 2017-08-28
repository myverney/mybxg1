/*
Navicat MySQL Data Transfer

Source Server         : abc
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : bxg

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2017-08-25 10:23:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cg_id` int(11) NOT NULL AUTO_INCREMENT,
  `cg_pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级ID',
  `cg_name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称',
  `cg_order` int(11) NOT NULL DEFAULT '10' COMMENT '排序',
  `cg_is_hide` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `cg_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`cg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '0', '前端开发', '10', '1', '2016-11-13 15:36:01');
INSERT INTO `category` VALUES ('2', '0', '后端开发', '10', '0', '2016-11-13 15:36:10');
INSERT INTO `category` VALUES ('3', '0', '数据库', '10', '0', '2016-11-13 15:36:17');
INSERT INTO `category` VALUES ('4', '0', '视觉设计', '10', '0', '2016-11-13 15:36:28');
INSERT INTO `category` VALUES ('5', '1', 'HTML/CSS', '10', '0', '2016-11-13 15:36:46');
INSERT INTO `category` VALUES ('6', '1', 'Javascript', '10', '0', '2016-11-13 15:36:56');
INSERT INTO `category` VALUES ('7', '1', 'Mobile', '10', '0', '2016-11-13 15:37:07');
INSERT INTO `category` VALUES ('8', '2', 'PHP', '10', '0', '2016-11-13 15:37:28');
INSERT INTO `category` VALUES ('9', '2', 'NodeJS', '10', '0', '2016-11-13 15:37:37');
INSERT INTO `category` VALUES ('10', '2', 'Python', '10', '0', '2016-11-13 15:37:53');
INSERT INTO `category` VALUES ('11', '3', 'MySQL', '10', '0', '2016-11-13 15:38:04');
INSERT INTO `category` VALUES ('12', '3', 'MongoDB', '10', '0', '2016-11-13 15:38:38');
INSERT INTO `category` VALUES ('13', '3', 'Oracle', '10', '0', '2016-11-13 15:39:01');
INSERT INTO `category` VALUES ('14', '4', 'Photoshop', '10', '0', '2016-11-13 15:39:28');
INSERT INTO `category` VALUES ('15', '0', '移动开发', '10', '0', '2016-11-14 13:25:45');
INSERT INTO `category` VALUES ('16', '0', '云计算&大数据', '10', '0', '2016-11-14 13:26:07');
INSERT INTO `category` VALUES ('17', '0', '运维&测试', '10', '0', '2016-11-14 13:26:27');
INSERT INTO `category` VALUES ('18', '15', 'Android', '10', '0', '2016-11-14 13:37:01');
INSERT INTO `category` VALUES ('19', '15', 'IOS', '10', '0', '2016-11-14 13:37:13');
INSERT INTO `category` VALUES ('20', '16', '云数据', '10', '0', '2016-11-14 13:37:41');
INSERT INTO `category` VALUES ('21', '16', '大数据', '10', '0', '2016-11-14 13:37:50');
INSERT INTO `category` VALUES ('22', '17', '测式', '10', '0', '2016-11-14 13:38:08');
INSERT INTO `category` VALUES ('23', '17', 'Linux', '10', '0', '2016-11-14 13:38:19');
INSERT INTO `category` VALUES ('24', '1', 'AngularJS', '10', '0', '2016-12-22 17:14:53');
INSERT INTO `category` VALUES ('25', '1', 'Vue', '6', '0', '2016-12-28 17:14:27');
INSERT INTO `category` VALUES ('30', '1', 'react', '10', '0', '2017-07-15 09:43:29');

-- ----------------------------
-- Table structure for chapter
-- ----------------------------
DROP TABLE IF EXISTS `chapter`;
CREATE TABLE `chapter` (
  `ct_id` int(11) NOT NULL AUTO_INCREMENT,
  `ct_cs_id` int(11) NOT NULL DEFAULT '0' COMMENT '课程ID',
  `ct_name` varchar(128) NOT NULL DEFAULT '' COMMENT '课时名称',
  `ct_brief` text COMMENT '课时简介',
  `ct_is_free` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否免费',
  `ct_video` varchar(255) NOT NULL DEFAULT '' COMMENT '视频',
  `ct_video_duration` varchar(16) NOT NULL DEFAULT '00:00' COMMENT '视频时长',
  `ct_recommend_duration` varchar(16) NOT NULL DEFAULT '' COMMENT '推荐时长',
  `ct_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`ct_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='章节表';

-- ----------------------------
-- Records of chapter
-- ----------------------------
INSERT INTO `chapter` VALUES ('1', '1', '介绍', '层叠样式表(英文全称：Cascading Style Sheets)是一种用来表现HTML（标准通用标记语言的一个应用）或XML（标准通用标记语言的一个子集）等文件样式的计算机语言。CSS不仅可以静态地修饰网页，还可以配合各种脚本语言动态地对网页各元素进行格式化。', '1', 'http://www.youku.com', '08:12', '0.5', '2017-01-06 11:29:51');
INSERT INTO `chapter` VALUES ('2', '1', '定位和浮动', 'CSS 为定位和浮动提供了一些属性，利用这些属性，可以建立列式布局，将布局的一部分与另一部分重叠，还可以完成多年来通常需要使用多个表格才能完成的任务。', '0', 'http://www.youku.com', '08:14', '0.4', '2017-01-06 11:30:24');
INSERT INTO `chapter` VALUES ('3', '1', '弹性盒子', null, '0', '', '10:12', '0.3', '2017-01-06 14:44:49');
INSERT INTO `chapter` VALUES ('4', '1', '动画', null, '1', '', '08:10', '', '2017-01-06 14:49:18');
INSERT INTO `chapter` VALUES ('5', '1', '3d转换', null, '1', '', '06:14', '0.2', '2017-01-06 14:50:59');
INSERT INTO `chapter` VALUES ('6', '1', '盒模型', null, '0', '', '10:08', '0.3', '2017-01-07 13:54:56');
INSERT INTO `chapter` VALUES ('7', '2', 'fdsafasdfasdf', null, '1', 'sadf', '12:sadf', 'fdsa', '2017-03-20 17:23:01');
INSERT INTO `chapter` VALUES ('8', '1', 'ddd', 'ggg', '1', 'abc', '12:12', '12', '2017-07-15 15:54:09');
INSERT INTO `chapter` VALUES ('9', '1', 'ffffffffffffff', 'asdf', '1', '12123', '12:12', '1', '2017-07-15 16:22:12');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cs_id` int(11) NOT NULL AUTO_INCREMENT,
  `cs_cg_id` int(11) NOT NULL DEFAULT '0' COMMENT '课程分类ID',
  `cs_tc_id` int(11) NOT NULL DEFAULT '0' COMMENT '课程讲师ID',
  `cs_name` varchar(128) NOT NULL DEFAULT '' COMMENT '课程名称',
  `cs_brief` text COMMENT '课程简介',
  `cs_tags` varchar(64) NOT NULL DEFAULT '' COMMENT '课程标签',
  `cs_cover` varchar(255) NOT NULL DEFAULT '' COMMENT '课程封面',
  `cs_cover_original` varchar(255) NOT NULL DEFAULT '' COMMENT '封面原图',
  `cs_visited` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `cs_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`cs_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '5', '2', 'CSS', '<p>网页基础</p>\n', '布局', 'x-oss-process=image/crop,x_0,y_50,w_192,h_96', '5969bb3661fe5.png', '0', '2017-01-02 14:03:05');
INSERT INTO `course` VALUES ('2', '5', '3', '移动Web', '<p>移动Web适配</p>\n', 'Mobile', 'x-oss-process=image/crop,x_13,y_0,w_699,h_350', '586a5c7659052.jpg', '0', '2017-01-02 21:56:57');
INSERT INTO `course` VALUES ('3', '13', '1', 'qer', '<p>adsfasdf</p>\n', 'sdafaf', '', '', '0', '2017-03-15 10:24:51');
INSERT INTO `course` VALUES ('4', '0', '0', '', null, '', '', '', '0', '2017-03-15 10:27:21');
INSERT INTO `course` VALUES ('5', '0', '0', '121', null, '', '', '', '0', '2017-03-15 10:29:38');
INSERT INTO `course` VALUES ('6', '0', '0', 'java', null, '', '', '', '0', '2017-03-15 10:30:38');
INSERT INTO `course` VALUES ('7', '12', '2', 'asdfasdf', '<p>asdfasd</p>\n', 'adsfadsf', '', '', '0', '2017-03-15 10:35:54');
INSERT INTO `course` VALUES ('8', '0', '0', 'weqw', null, '', '', '', '0', '2017-03-15 11:21:05');
INSERT INTO `course` VALUES ('9', '0', '0', '12', null, '', '', '', '0', '2017-03-15 12:08:45');
INSERT INTO `course` VALUES ('10', '12', '1', '12', '<p>asdf</p>\n', 'adsf', '', '', '0', '2017-03-15 14:45:44');
INSERT INTO `course` VALUES ('11', '9', '2', 'adsfasdfasdf', '<p>asdfasdf</p>\n', 'asdfsaf', 'x-oss-process=image/crop,x_0,y_0,w_0,h_0', '58c8e7a8ceb9e.png', '0', '2017-03-15 15:01:20');
INSERT INTO `course` VALUES ('12', '0', '0', '1233', null, '', '', '', '0', '2017-03-17 09:01:14');
INSERT INTO `course` VALUES ('13', '0', '0', 'ui', null, '', '', '', '0', '2017-03-17 10:17:11');
INSERT INTO `course` VALUES ('14', '0', '0', 'ui', null, '', '', '', '0', '2017-03-17 10:17:29');
INSERT INTO `course` VALUES ('31', '6', '3', 'java', 'aaaaa', '', '', '', '0', '2017-07-14 11:53:31');
INSERT INTO `course` VALUES ('32', '8', '2', 'php', '<p>adsfasdf</p>\n', 'html', '', '59688cb20912c.png', '0', '2017-07-14 15:43:26');
INSERT INTO `course` VALUES ('33', '0', '0', 'adsf', null, '', '', '', '0', '2017-07-15 18:34:20');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tc_id` int(4) NOT NULL AUTO_INCREMENT,
  `tc_name` varchar(16) NOT NULL DEFAULT '' COMMENT '讲师姓名',
  `tc_roster` varchar(10) NOT NULL DEFAULT '攻城狮' COMMENT '讲师花名',
  `tc_pass` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `tc_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否为管理员',
  `tc_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '讲师状态',
  `tc_birthday` int(11) NOT NULL DEFAULT '0' COMMENT '讲师生日',
  `tc_province` char(6) NOT NULL DEFAULT '110000' COMMENT '所在省份',
  `tc_city` char(6) NOT NULL DEFAULT '110100' COMMENT '所在城市',
  `tc_district` char(6) NOT NULL DEFAULT '110108' COMMENT '所在区县',
  `tc_hometown` varchar(120) NOT NULL DEFAULT '北京市|市辖区|海淀区' COMMENT '家乡',
  `tc_avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '讲师头像',
  `tc_gender` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别',
  `tc_cellphone` char(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `tc_email` varchar(30) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `tc_join_date` int(11) NOT NULL DEFAULT '0' COMMENT '入职时间',
  `tc_introduce` text COMMENT '讲师介绍',
  `tc_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`tc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='讲师表';

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', 'admin', '最美前端工程师', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '1970', '210000', '210400', '210421', '辽宁省|抚顺市|抚顺县', '596832a258e15.png', '1', '17712875396', '1223@qq.com', '2304000', '<p>qwewqeqwewq</p>\n', '2017-01-02 14:05:53');
INSERT INTO `teacher` VALUES ('2', '李清照1', '易安居士', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '-28800', '370000', '370100', '370181', '山东省|济南市|章丘市', '5869fc961c17f.jpg', '1', '10086', 'liqingzhao@itcast.cn', '1423843200', '<p>李清照（1084年3月13日&mdash;1155年？），号易安居士，汉族，齐州济南（今山东省济南市章丘区）人。宋代女词人，婉约词派代表，有&ldquo;千古第一才女&rdquo;之称。</p>\n\n<p>李清照出生于书香门第，早期生活优裕，其父李格非藏书甚富，她小时候就在良好的家庭环境中打下文学基础。出嫁后与夫赵明诚共同致力于书画金石的搜集整理。金兵入据中原时，流寓南方，境遇孤苦。所作词，前期多写其悠闲生活，后期多悲叹身世，情调感伤。形式上善用白描手法，自辟途径，语言清丽。论词强调协律，崇尚典雅，提出词&ldquo;别是一家&rdquo;之说，反对以作诗文之法作词。能诗，留存不多，部分篇章感时咏史，情辞慷慨，与其词风不同。</p>\n', '2017-01-02 14:12:46');
INSERT INTO `teacher` VALUES ('3', '风清扬', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '1', '0', '0', '110000', '110100', '110108', '北京市|市辖区|海淀区', '', '0', '', '', '1473350400', null, '2017-01-02 14:14:21');
INSERT INTO `teacher` VALUES ('4', '令狐冲', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '1', '0', '0', '110000', '110100', '110108', '北京市|市辖区|海淀区', '', '0', '', '', '1452787200', null, '2017-01-02 14:15:04');
INSERT INTO `teacher` VALUES ('5', '光头强', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '1', '0', '0', '110000', '110100', '110108', '北京市|市辖区|海淀区', '', '0', '', '', '1488470400', null, '2017-03-15 20:33:30');
INSERT INTO `teacher` VALUES ('6', '小旋风', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '0', '110000', '110100', '110108', '北京市|市辖区|海淀区', '', '0', '', '', '1489593600', null, '2017-03-16 18:23:53');
INSERT INTO `teacher` VALUES ('7', '小旋风', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '0', '110000', '110100', '110108', '北京市|市辖区|海淀区', '', '0', '', '', '1489593600', null, '2017-03-16 18:24:02');
INSERT INTO `teacher` VALUES ('8', '小旋风', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '0', '110000', '110100', '110108', '北京市|市辖区|海淀区', '', '0', '', '', '1489593600', null, '2017-03-16 18:24:03');
INSERT INTO `teacher` VALUES ('9', '小旋风1', '攻城狮', 'e10adc3949ba59abbe56e057f20f883e', '1', '0', '0', '110000', '110100', '110108', '北京市|市辖区|海淀区', '', '0', '', '', '1489593600', null, '2017-03-16 18:24:49');
INSERT INTO `teacher` VALUES ('14', 'abc', '攻城狮', '202cb962ac59075b964b07152d234b70', '1', '0', '0', '110000', '110100', '110108', '北京市|市辖区|海淀区', '', '0', '', '', '1483200000', null, '2017-07-11 11:26:54');
INSERT INTO `teacher` VALUES ('15', 'www', '攻城狮', '202cb962ac59075b964b07152d234b70', '1', '0', '0', '110000', '110100', '110108', '北京市|市辖区|海淀区', '', '0', '', '', '1483200000', null, '2017-07-11 14:41:57');
INSERT INTO `teacher` VALUES ('16', 'qqqq', '攻城狮', '202cb962ac59075b964b07152d234b70', '1', '0', '0', '110000', '110100', '110108', '北京市|市辖区|海淀区', '', '0', '', '', '1499875200', null, '2017-07-11 15:48:55');
INSERT INTO `teacher` VALUES ('17', 'ttt', '攻城狮', '96e79218965eb72c92a549dd5a330112', '1', '0', '0', '110000', '110100', '110108', '北京市|市辖区|海淀区', '', '0', '', '', '1501084800', null, '2017-07-11 17:00:45');
INSERT INTO `teacher` VALUES ('18', '456', '攻城狮', '96e79218965eb72c92a549dd5a330112', '1', '0', '0', '110000', '110100', '110108', '北京市|市辖区|海淀区', '', '0', '', '', '1500393600', null, '2017-07-11 17:23:30');
