/*
Navicat MySQL Data Transfer

Source Server         : M
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : gym

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-05-07 23:24:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin', '1', null);
INSERT INTO `admin` VALUES ('2', 'admin', '123456', '1', null);
INSERT INTO `admin` VALUES ('3', '123', '123', '1', null);

-- ----------------------------
-- Table structure for coach
-- ----------------------------
DROP TABLE IF EXISTS `coach`;
CREATE TABLE `coach` (
  `co_id` int(11) NOT NULL AUTO_INCREMENT,
  `co_name` varchar(255) DEFAULT NULL,
  `co_course` varchar(255) DEFAULT NULL,
  `co_status` int(10) DEFAULT NULL,
  PRIMARY KEY (`co_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coach
-- ----------------------------
INSERT INTO `coach` VALUES ('1', '李教练', '瘦身操', '1');
INSERT INTO `coach` VALUES ('2', '王教练', '踏板操', '1');
INSERT INTO `coach` VALUES ('3', '马教练', '搏击操', '1');
INSERT INTO `coach` VALUES ('4', '安教练', '有氧操', '1');
INSERT INTO `coach` VALUES ('5', '兰教练', '舞蹈课', '1');
INSERT INTO `coach` VALUES ('6', '陈教练', '杠铃操', '1');
INSERT INTO `coach` VALUES ('7', '刘教练', '单车课', '1');
INSERT INTO `coach` VALUES ('8', '张教练', '普拉提', '1');
INSERT INTO `coach` VALUES ('9', '高教练', '瑜伽', '1');
INSERT INTO `coach` VALUES ('10', '孙教练', '健美操', '1');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cou_id` int(11) NOT NULL AUTO_INCREMENT,
  `cou_name` varchar(255) DEFAULT NULL,
  `cou_content` varchar(255) DEFAULT NULL,
  `cou_img` varchar(255) DEFAULT NULL,
  `cou_coach` varchar(255) DEFAULT NULL,
  `cou_begintime` date DEFAULT NULL,
  `cou_endtime` date DEFAULT NULL,
  `cou_adress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cou_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '踏板操', '它是一种有氧操，是Aerobics的又一创新，它结合了拳击、泰拳、跆拳道、散手、太极的基本动作，遵循健美操最新编排方法，在强有力的音乐节拍下完成的一种身体锻炼', 'timg (1).jpg', '张教练', '2019-04-15', null, '4号场区');
INSERT INTO `course` VALUES ('2', '搏击操', '它是一种有氧操，是Aerobics的又一创新，它结合了拳击、泰拳、跆拳道、散手、太极的基本动作，遵循健美操最新编排方法，在强有力的音乐节拍下完成的一种身体锻炼', 'timg (2).jpg', '李教练', '2019-04-17', null, '1号场区');
INSERT INTO `course` VALUES ('3', '伸展平衡', '平衡健身操是一种锻炼身体平衡能力的运动。锻炼时身体的支持面应由大逐渐到小，身体重心由低逐渐到高，由视觉监督练习逐渐过渡到闭目练习。', 'timg (3).jpg', '王教练', '2019-04-09', null, '3号场区');
INSERT INTO `course` VALUES ('4', '有氧舞蹈', '是配合音乐有节奏地舞动的有氧运动，有氧舞蹈一方面能消耗较多热量，一方面能把许多舞蹈动作健美操化，通过有氧健美操的锻炼形式，反复或进行组合练习。', 'timg (4).jpg', '孙教练', '2019-04-15', null, '2号场区');
INSERT INTO `course` VALUES ('5', '杠铃操', '世界上最快的塑身方法是健身史上最成功的集体健身项目，世界上最快塑造形体、减少脂肪的运动。它成功地将杠铃引入操房，运用杠铃达到良好的塑身效果，将有氧运动与无氧运动完美结合，带来了集体健身的革命性突破。', 'timg (3).jpg', '贺教练', '2019-04-11', null, '2号场区');
INSERT INTO `course` VALUES ('6', '健身球', '健身球是一项新兴、有趣、特殊的体育健身运动', 'timg (1).jpg', '李教练', '2019-04-05', null, '3号场区');
INSERT INTO `course` VALUES ('7', '普拉提', null, 'timg (4).jpg', '小教练', '2019-04-01', null, '1号场区');
INSERT INTO `course` VALUES ('8', '舞蹈课', null, 'timg (2).jpg', '尔教练', '2019-04-02', null, '4号场区');

-- ----------------------------
-- Table structure for instrument
-- ----------------------------
DROP TABLE IF EXISTS `instrument`;
CREATE TABLE `instrument` (
  `ins_id` int(11) NOT NULL AUTO_INCREMENT,
  `ins_name` varchar(255) DEFAULT NULL,
  `ins_use` varchar(255) DEFAULT NULL,
  `ins_status` int(2) DEFAULT NULL,
  PRIMARY KEY (`ins_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instrument
-- ----------------------------
INSERT INTO `instrument` VALUES ('1', '踏板', '踏板操', '1');
INSERT INTO `instrument` VALUES ('2', '拳套', '搏击操', '1');
INSERT INTO `instrument` VALUES ('3', '跑步机', '有氧操', '1');
INSERT INTO `instrument` VALUES ('4', '杠铃', '杠铃操', '1');
INSERT INTO `instrument` VALUES ('5', '单车', '单车课', '1');
INSERT INTO `instrument` VALUES ('6', '弹球', '普拉提', '1');
INSERT INTO `instrument` VALUES ('7', '哑铃', '瘦身操', '1');
INSERT INTO `instrument` VALUES ('8', '背垫', '舞蹈课', '1');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `me_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_author` varchar(255) DEFAULT NULL,
  `me_content` varchar(255) DEFAULT NULL,
  `me_img` varchar(255) DEFAULT NULL,
  `me_time` date DEFAULT NULL,
  `me_status` int(2) DEFAULT NULL,
  PRIMARY KEY (`me_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', 'Superman', '课程很棒', '1', '2019-03-31', '1');
INSERT INTO `message` VALUES ('2', 'ning', '环境很好', '1', '2019-03-25', '0');
INSERT INTO `message` VALUES ('3', 'Jacklove', '教练用心', '1', '2019-04-02', '1');
INSERT INTO `message` VALUES ('4', 'theshy', '价格实惠', '1', '2019-04-10', '1');
INSERT INTO `message` VALUES ('5', 'baolan', '努力坚持', '1', '2019-04-16', '1');
INSERT INTO `message` VALUES ('6', 'duck', '我是锦鲤', '1', '2019-04-23', '1');
INSERT INTO `message` VALUES ('7', 'faker', '加油大伙', '1', '2019-04-14', '0');
INSERT INTO `message` VALUES ('8', 'smlz', '加油', '1', '2019-04-01', '0');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `no_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_name` varchar(255) DEFAULT NULL,
  `no_content` varchar(255) DEFAULT NULL,
  `no_time` date DEFAULT NULL,
  `no_author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`no_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '放假通知', '明天放假……', '2019-04-08', 'admin');
INSERT INTO `notice` VALUES ('2', '调课通知', '周三课程……', '2019-04-23', 'admin');
INSERT INTO `notice` VALUES ('3', '休息通知', '后天休息……', '2019-04-16', 'admin');
INSERT INTO `notice` VALUES ('4', '装修通知', '明天起……', '2019-04-16', 'admin');
INSERT INTO `notice` VALUES ('5', '活动通知', '活动于……', '2019-04-09', 'admin');
INSERT INTO `notice` VALUES ('6', '人员调整', '张教练因……', '2019-04-19', 'admin');
INSERT INTO `notice` VALUES ('7', '课程推送', '新的课程……', '2019-04-17', 'admin');
INSERT INTO `notice` VALUES ('8', '温馨提示', '…………', '2019-04-14', 'admin');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_style` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '瑜伽');
INSERT INTO `type` VALUES ('2', '瘦身操');
INSERT INTO `type` VALUES ('3', '踏板操');
INSERT INTO `type` VALUES ('4', '搏击操');
INSERT INTO `type` VALUES ('5', '有氧操');
INSERT INTO `type` VALUES ('6', '舞蹈课');
INSERT INTO `type` VALUES ('7', '杠铃操');
INSERT INTO `type` VALUES ('8', '单车课');
INSERT INTO `type` VALUES ('9', '普拉提');
INSERT INTO `type` VALUES ('10', '健美操');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `us_id` int(11) NOT NULL AUTO_INCREMENT,
  `us_name` varchar(255) DEFAULT NULL,
  `us_password` varchar(255) DEFAULT NULL,
  `us_realname` varchar(255) DEFAULT NULL,
  `us_tel` varchar(255) DEFAULT NULL,
  `us_eml` varchar(255) DEFAULT NULL,
  `us_status` int(2) DEFAULT NULL,
  PRIMARY KEY (`us_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'Superman', '123456', '马杰', '1863973239', '571148447@qq.com', '0');
INSERT INTO `user` VALUES ('2', 'Ming', '123456', '李二', '1896547562', null, '0');
INSERT INTO `user` VALUES ('3', 'Ning', '654321', '安迪', '1588679336', '12345678@qq.com', '1');
INSERT INTO `user` VALUES ('4', 'TheShy', '987654', '小红', '1567894561', '123546879@qq.com', '1');
INSERT INTO `user` VALUES ('5', 'Clearlove7', '123456', '小美', '1852147896', '12547896@qq.com', '1');
INSERT INTO `user` VALUES ('6', 'Jacklove', '123456', '小王', '1234567897', '147852369@163.com', '1');
INSERT INTO `user` VALUES ('7', 'Faker', '654321', '大魔王', '1234567898', '14568795@qq.com', '1');
INSERT INTO `user` VALUES ('8', 'Duck', '987654', '锦鲤', '1234567897', '258794651@qq.com', '0');
