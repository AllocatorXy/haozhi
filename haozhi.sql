/*
Navicat MySQL Data Transfer

Source Server         : develop
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : haozhi

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-04-07 18:59:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `url` varchar(255) NOT NULL,
  `hrf` varchar(255) NOT NULL,
  `count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('images/block_picture_1471493110.jpg', '#1', '5685');
INSERT INTO `banner` VALUES ('images/block_picture_1470403193.jpg', '#2', null);
INSERT INTO `banner` VALUES ('images/block_picture_1474275464.jpg', '#3', null);
INSERT INTO `banner` VALUES ('images/block_picture_1468976358.jpg', '#4', null);

-- ----------------------------
-- Table structure for hot_lesson
-- ----------------------------
DROP TABLE IF EXISTS `hot_lesson`;
CREATE TABLE `hot_lesson` (
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `tit1` varchar(255) NOT NULL,
  `tit2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hot_lesson
-- ----------------------------
INSERT INTO `hot_lesson` VALUES ('images/0652215cebbc706663.jpg', 'images/065346a73da0138994.jpg', 'sai基础教程', '标题2');
INSERT INTO `hot_lesson` VALUES ('images/065523b78450837537.jpg', 'images/160442a63a30885777.png', '标题3333', '标题4444');

-- ----------------------------
-- Table structure for navbar
-- ----------------------------
DROP TABLE IF EXISTS `navbar`;
CREATE TABLE `navbar` (
  `class` varchar(255) NOT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of navbar
-- ----------------------------
INSERT INTO `navbar` VALUES ('课程类别1', '搜搜看', 'lesssons.html');
INSERT INTO `navbar` VALUES ('课程类别2', null, 'lesssons.html');
INSERT INTO `navbar` VALUES ('课程3', null, 'lesssons.html');
INSERT INTO `navbar` VALUES ('课程四', null, 'lesssons.html');
INSERT INTO `navbar` VALUES ('课程五', null, 'lesssons.html');

-- ----------------------------
-- Table structure for prime
-- ----------------------------
DROP TABLE IF EXISTS `prime`;
CREATE TABLE `prime` (
  `page` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `daren` int(1) NOT NULL DEFAULT '0',
  `price` float(20,2) NOT NULL DEFAULT '0.00',
  `img` varchar(255) NOT NULL,
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prime
-- ----------------------------
INSERT INTO `prime` VALUES ('精品推荐', '快速上手淘宝摄影', '用户名在此', '1', '0.00', 'images/tb-photo.jpg', '1');
INSERT INTO `prime` VALUES (null, 'AE子弹时间特效制作', '用户名', '1', '10.00', 'images/jp-05.jpg', '2');
INSERT INTO `prime` VALUES (null, '按时发生该公司施工队', '按时发放三', '0', '0.00', 'images/jp-02.jpg', '3');
INSERT INTO `prime` VALUES (null, 'asdgfsdgs', 'asfasfasf', '0', '0.00', 'images/jp-03.jpg', '4');
INSERT INTO `prime` VALUES (null, '啊搜房网w', '请问', '0', '99.00', 'images/jp-04.jpg', '5');
INSERT INTO `prime` VALUES (null, '按时发生wwq', '啊发发', '1', '0.00', 'images/jp-05.jpg', '6');
INSERT INTO `prime` VALUES (null, '发送服务费', '去问问我', '0', '6.00', 'images/jp-06.jpg', '7');
INSERT INTO `prime` VALUES ('特价好课', '快速上手淘宝摄影', '用户名在此', '1', '9.00', 'images/tb-photo.jpg', '8');
INSERT INTO `prime` VALUES (null, 'AE子弹时间特效制作', '用户名', '1', '10.00', 'images/jp-06.jpg', '9');
INSERT INTO `prime` VALUES (null, '按时发生该公司施工队', '按时发放三', '1', '0.00', 'images/jp-03.jpg', '10');
INSERT INTO `prime` VALUES (null, 'asdgfsdgs', 'asfasfasf', '0', '0.00', 'images/jp-02.jpg', '11');
INSERT INTO `prime` VALUES (null, '啊搜房网wq', '请问', '1', '99.00', 'images/jp-04.jpg', '12');
INSERT INTO `prime` VALUES (null, '按时发生', '啊发发', '1', '0.00', 'images/jp-01.jpg', '13');
INSERT INTO `prime` VALUES (null, '发送服务费sq', '去问问我', '0', '5.00', 'images/jp-05.jpg', '14');
INSERT INTO `prime` VALUES ('摄影课堂', '快速上手淘宝摄影', '用户名在此', '0', '0.00', 'images/tb-photo.jpg', '15');
INSERT INTO `prime` VALUES (null, 'AE子弹时间特效制作', '用户名', '1', '10.00', 'images/jp-06.jpg', '16');
INSERT INTO `prime` VALUES (null, '工队', '按时发放三', '1', '0.00', 'images/jp-02.jpg', '17');
INSERT INTO `prime` VALUES (null, 'asdgfsdgs', 'asfasfasf', '1', '0.00', 'images/jp-02.jpg', '18');
INSERT INTO `prime` VALUES (null, '啊搜房网', '请问', '0', '99.00', 'images/jp-04.jpg', '19');
INSERT INTO `prime` VALUES (null, '按时发生', '啊发发', '1', '0.00', 'images/jp-03.jpg', '20');
INSERT INTO `prime` VALUES (null, '发送服务费', '去问问我', '0', '0.00', 'images/jp-06.jpg', '21');
INSERT INTO `prime` VALUES ('测试文字', '快速上手淘宝摄影', '用户名在此', '0', '0.00', 'images/tb-photo.jpg', '22');
INSERT INTO `prime` VALUES (null, 'AE子弹时间特效制作', '用户名', '1', '10.00', 'images/jp-01.jpg', '23');
INSERT INTO `prime` VALUES (null, '按时发生w司施工队', '按时发放三', '0', '0.00', 'images/jp-03.jpg', '24');
INSERT INTO `prime` VALUES (null, 'asdgfsdgs', 'asfasfasf', '0', '1.00', 'images/jp-02.jpg', '25');
INSERT INTO `prime` VALUES (null, '啊搜房网www', '请问', '0', '99.00', 'images/jp-05.jpg', '26');
INSERT INTO `prime` VALUES (null, '按时发生ag', '啊发发', '1', '0.00', 'images/jp-05.jpg', '27');
INSERT INTO `prime` VALUES (null, '发送服务费', '去问问我', '1', '0.00', 'images/jp-06.jpg', '28');
INSERT INTO `prime` VALUES ('测试文字2', '快速上手淘宝摄影', '用户名在此', '0', '0.00', 'images/tb-photo.jpg', '29');
INSERT INTO `prime` VALUES (null, 'AE子弹时间特效制作', '用户名', '1', '10.00', 'images/jp-01.jpg', '30');
INSERT INTO `prime` VALUES (null, '按时发生w司施工队', '按时发放三', '0', '0.00', 'images/jp-04.jpg', '31');
INSERT INTO `prime` VALUES (null, 'asdgfsdgs', 'asfasfasf', '0', '1.00', 'images/jp-02.jpg', '32');
INSERT INTO `prime` VALUES (null, '啊搜房网www', '请问', '0', '99.00', 'images/jp-06.jpg', '33');
INSERT INTO `prime` VALUES (null, '按时发生ag', '啊发发', '1', '0.00', 'images/jp-06.jpg', '34');
INSERT INTO `prime` VALUES (null, '发送服务费', '去问问我', '1', '0.00', 'images/jp-05.jpg', '35');
INSERT INTO `prime` VALUES ('测试文字3', '快速上手淘宝摄影', '用户名在此', '0', '0.00', 'images/tb-photo.jpg', '36');
INSERT INTO `prime` VALUES (null, 'AE子弹时间特效制作', '用户名', '1', '10.00', 'images/jp-01.jpg', '37');
INSERT INTO `prime` VALUES (null, '按时发生w司施工队', '按时发放三', '0', '0.00', 'images/jp-05.jpg', '38');
INSERT INTO `prime` VALUES (null, 'asdgfsdgs', 'asfasfasf', '0', '1.00', 'images/jp-05.jpg', '39');
INSERT INTO `prime` VALUES (null, '啊搜房网www', '请问', '0', '99.00', 'images/jp-03.jpg', '40');
INSERT INTO `prime` VALUES (null, '按时发生ag', '啊发发', '1', '0.00', 'images/jp-06.jpg', '41');
INSERT INTO `prime` VALUES (null, '发送服务费', '去问问我', '1', '0.00', 'images/jp-05.jpg', '42');
INSERT INTO `prime` VALUES ('测试文字4', '快速上手淘宝摄影', '用户名在此', '0', '0.00', 'images/tb-photo.jpg', '43');
INSERT INTO `prime` VALUES (null, 'AE子弹时间特效制作', '用户名', '1', '10.00', 'images/jp-01.jpg', '44');
INSERT INTO `prime` VALUES (null, '按时发生w司施工队', '按时发放三', '0', '0.00', 'images/jp-06.jpg', '45');
INSERT INTO `prime` VALUES (null, 'asdgfsdgs', 'asfasfasf', '0', '1.00', 'images/jp-06.jpg', '46');
INSERT INTO `prime` VALUES (null, '啊搜房网www', '请问', '0', '99.00', 'images/jp-03.jpg', '47');
INSERT INTO `prime` VALUES (null, '按时发生ag', '啊发发', '1', '0.00', 'images/jp-06.jpg', '48');
INSERT INTO `prime` VALUES (null, '发送服务费', '去问问我', '1', '0.00', 'images/jp-05.jpg', '49');
INSERT INTO `prime` VALUES ('测试文字5', '快速上手淘宝摄影', '用户名在此', '0', '0.00', 'images/tb-photo.jpg', '50');
INSERT INTO `prime` VALUES (null, 'AE子弹时间特效制作', '用户名', '1', '10.00', 'images/jp-01.jpg', '51');
INSERT INTO `prime` VALUES (null, '按时发生w司施工队', '按时发放三', '0', '2.00', 'images/jp-02.jpg', '52');
INSERT INTO `prime` VALUES (null, 'asdgfsdgs', 'asfasfasf', '0', '1.00', 'images/jp-04.jpg', '53');
INSERT INTO `prime` VALUES (null, '啊搜房网www', '请问', '0', '99.00', 'images/jp-03.jpg', '54');
INSERT INTO `prime` VALUES (null, '按时发生ag', '啊发发', '1', '0.00', 'images/jp-06.jpg', '55');
INSERT INTO `prime` VALUES (null, '发送服务费', '去问问我', '1', '0.00', 'images/jp-05.jpg', '56');

-- ----------------------------
-- Table structure for rec
-- ----------------------------
DROP TABLE IF EXISTS `rec`;
CREATE TABLE `rec` (
  `img` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rec
-- ----------------------------
INSERT INTO `rec` VALUES ('images/113139b0d161061610.jpg', '极致风光摄影', '暗示法萨芬刚');
INSERT INTO `rec` VALUES ('images/1151026a9542216720.jpg', '零基础摄影入门班', '按时开放哈康师傅哈佛卡时看风景哈萨克发空间啊按时开放哈康师傅哈佛卡时看风景哈萨克发空间啊按时开放哈康师傅哈佛卡时看风景哈萨克发空间啊按时开放哈康师傅哈佛卡时看风景哈萨克发空间啊');
INSERT INTO `rec` VALUES ('images/10434959afa2686578.jpg', '略略略', '按时开放哈康师傅哈佛卡时看风景哈萨克发asdfasf空间啊');
INSERT INTO `rec` VALUES ('images/144103f87e49421080.jpg', '噜噜噜', '按时开放哈康师傅哈佛卡时看风按时开放哈康师傅哈佛卡时看风景哈萨克发空间啊按时开放哈康师傅哈佛卡时看风景哈萨克发空间啊景哈萨克发空间啊');
