/*
Navicat MySQL Data Transfer

Source Server         : 172.25.60.118
Source Server Version : 50634
Source Host           : 172.25.60.118:3306
Source Database       : lazy

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2017-03-28 19:31:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_company
-- ----------------------------
DROP TABLE IF EXISTS `t_company`;
CREATE TABLE `t_company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parentId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_company
-- ----------------------------
INSERT INTO `t_company` VALUES ('17', '财务管理部', null, '5', '1');
INSERT INTO `t_company` VALUES ('18', '信息管理部', null, '5', '1');
INSERT INTO `t_company` VALUES ('19', '战略部', null, '5', '1');
INSERT INTO `t_company` VALUES ('20', '品牌管理部', null, '5', '1');
INSERT INTO `t_company` VALUES ('21', '集团办公室', null, '5', '1');
INSERT INTO `t_company` VALUES ('22', '人力资源部', null, '5', '1');
INSERT INTO `t_company` VALUES ('23', '法务部', null, '5', '1');
INSERT INTO `t_company` VALUES ('24', '审计部', null, '5', '1');
INSERT INTO `t_company` VALUES ('25', '资产管理部', null, '5', '1');
INSERT INTO `t_company` VALUES ('26', '党群工作部', null, '5', '1');
INSERT INTO `t_company` VALUES ('27', '其他', null, '5', '1');
INSERT INTO `t_company` VALUES ('28', '北大方正信息产业集团有限公司', null, '6', '1');
INSERT INTO `t_company` VALUES ('29', '北京北大方正电子有限公司', null, '6', '1');
INSERT INTO `t_company` VALUES ('30', '北大医疗信息技术有限公司', null, '6', '1');
INSERT INTO `t_company` VALUES ('31', '方正宽带网络服务有限公司', null, '6', '1');
INSERT INTO `t_company` VALUES ('32', '方正国际软件有限公司', null, '6', '1');
INSERT INTO `t_company` VALUES ('33', ' 北京方正阿帕比技术有限公司', null, '6', '1');
INSERT INTO `t_company` VALUES ('34', '方正(香港)有限公司/北大資源控股', null, '6', '1');
INSERT INTO `t_company` VALUES ('35', '方正科技集团股份有限公司', null, '6', '1');
INSERT INTO `t_company` VALUES ('36', '北京方正奥德计算机系统有限公司', null, '6', '1');
INSERT INTO `t_company` VALUES ('37', '北京方正世纪信息系统有限公司', null, '6', '1');
INSERT INTO `t_company` VALUES ('38', '北京方正信息技术有限公司', null, '6', '1');
INSERT INTO `t_company` VALUES ('39', '珠海方正印刷电路板发展有限公司', null, '6', '1');
INSERT INTO `t_company` VALUES ('40', '珠海方正科技多层电路板有限公司', null, '6', '1');
INSERT INTO `t_company` VALUES ('41', '珠海越亚封装基板技术股份有限公司', null, '6', '1');
INSERT INTO `t_company` VALUES ('42', '其他', null, '6', '1');
INSERT INTO `t_company` VALUES ('43', '北大医疗产业集团有限公司', null, '7', '1');
INSERT INTO `t_company` VALUES ('44', '北京大学国际医院', null, '7', '1');
INSERT INTO `t_company` VALUES ('45', '北京北医泰然医疗投资管理有限公司', null, '7', '1');
INSERT INTO `t_company` VALUES ('46', '北京北大医疗脑健康产业投资管理有限公司', null, '7', '1');
INSERT INTO `t_company` VALUES ('47', '北京怡健殿诊所有限公司', null, '7', '1');
INSERT INTO `t_company` VALUES ('48', '北大医疗康复医院管理有限公司', null, '7', '1');
INSERT INTO `t_company` VALUES ('49', '湖南恺德微创医院有限公司', null, '7', '1');
INSERT INTO `t_company` VALUES ('50', '北京北大医疗肿瘤医院管理有限公司', null, '7', '1');
INSERT INTO `t_company` VALUES ('51', '北京迦南门诊部有限公司', null, '7', '1');
INSERT INTO `t_company` VALUES ('52', '北大医疗产业园科技有限公司', null, '7', '1');
INSERT INTO `t_company` VALUES ('53', '北大医药股份有限公司', null, '7', '1');
INSERT INTO `t_company` VALUES ('54', '武汉叶开泰医药科技有限公司', null, '7', '1');
INSERT INTO `t_company` VALUES ('55', '北京方正医院管理有限公司', null, '7', '1');
INSERT INTO `t_company` VALUES ('56', '北京北医医药有限公司', null, '7', '1');
INSERT INTO `t_company` VALUES ('57', '方正医药研究院有限公司', null, '7', '1');
INSERT INTO `t_company` VALUES ('58', '其他', null, '7', '1');
INSERT INTO `t_company` VALUES ('59', '北大资源(控股)有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('60', '北大方正教育投资集团有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('61', '北京北大资源物业经营管理集团有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('62', '北京北大资源物业经营管理集团有限公司昌平分公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('63', '北京方亚海泰科技有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('64', '北京银通房地产开发有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('65', '北京星光新奥特文化传媒有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('66', '上海德麟物业管理有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('67', '武汉天馨物业发展有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('68', '上海高科房地产有限公司深圳分公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('69', '北京北大科技园建设开发有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('70', '北京北大创业园有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('71', '北京北大科技园建设开发有限公司北大博雅国际酒店管理分公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('72', '青岛中服进口免税商品有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('73', '北京北大资源地产有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('74', '东莞北大资源商业管理有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('75', '东莞市三元盈晖投资发展有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('76', '广东北大资源地产有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('77', '北大资源（开封）投资有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('78', '重庆北大资源投资有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('79', '天津市北大资源置业有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('80', '昆山高科电子艺术创意产业发展有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('81', '成都北大资源地产有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('82', '云南北大资源房地产开发有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('83', '贵阳北大资源地产有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('84', '北大资源湖南地产有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('85', '青岛北大资源地产有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('86', '佛山北大资源地产有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('87', '北大资源武汉地产有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('88', '山东北大资源地产有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('89', '浙江北大资源地产有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('90', '江西北大科技园区发展有限公司', null, '8', '1');
INSERT INTO `t_company` VALUES ('91', '其他', null, '8', '1');
INSERT INTO `t_company` VALUES ('92', '北大方正物产集团有限公司', null, '9', '1');
INSERT INTO `t_company` VALUES ('93', '方正证券股份有限公司', null, '10', '1');
INSERT INTO `t_company` VALUES ('94', '方正和生投资有限责任公司', null, '10', '1');
INSERT INTO `t_company` VALUES ('95', '方正富邦基金管理有限公司', null, '10', '1');
INSERT INTO `t_company` VALUES ('96', '方正中期期货有限公司', null, '10', '1');
INSERT INTO `t_company` VALUES ('97', '其他', null, '10', '1');
INSERT INTO `t_company` VALUES ('98', '北大方正人寿保险有限公司', null, '11', '1');
INSERT INTO `t_company` VALUES ('99', '中国高科集团股份有限公司', null, '12', '1');
INSERT INTO `t_company` VALUES ('100', '江苏苏钢集团有限公司', null, '13', '1');
INSERT INTO `t_company` VALUES ('101', '深圳方正微电子有限公司', null, '14', '1');
INSERT INTO `t_company` VALUES ('102', '北大方正集团财务有限公司', null, '15', '1');
INSERT INTO `t_company` VALUES ('103', '方正国际租赁有限公司/方正国际商业保理有限公司', null, '15', '1');

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parentId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_department
-- ----------------------------

-- ----------------------------
-- Table structure for t_group
-- ----------------------------
DROP TABLE IF EXISTS `t_group`;
CREATE TABLE `t_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parentId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_group
-- ----------------------------
INSERT INTO `t_group` VALUES ('5', '集团总部', null, '1');
INSERT INTO `t_group` VALUES ('6', '信产集团', null, '1');
INSERT INTO `t_group` VALUES ('7', '医疗集团', null, '1');
INSERT INTO `t_group` VALUES ('8', '资源集团', null, '1');
INSERT INTO `t_group` VALUES ('9', '物产集团', null, '1');
INSERT INTO `t_group` VALUES ('10', '方正证券', null, '1');
INSERT INTO `t_group` VALUES ('11', '方正人寿', null, '1');
INSERT INTO `t_group` VALUES ('12', '中国高科', null, '1');
INSERT INTO `t_group` VALUES ('13', '苏钢集团', null, '1');
INSERT INTO `t_group` VALUES ('14', '方正微电子', null, '1');
INSERT INTO `t_group` VALUES ('15', '财务公司', null, '1');

-- ----------------------------
-- Table structure for t_logoMatch
-- ----------------------------
DROP TABLE IF EXISTS `t_logoMatch`;
CREATE TABLE `t_logoMatch` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `info` varchar(2000) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `designer` varchar(100) DEFAULT NULL,
  `designDate` varchar(100) DEFAULT NULL,
  `uploadUserId` bigint(20) DEFAULT NULL,
  `uploadDateTime` varchar(100) DEFAULT NULL,
  `modifyUserId` bigint(20) DEFAULT NULL,
  `modifyDateTime` varchar(100) DEFAULT NULL,
  `isMatch` int(1) DEFAULT NULL,
  `isShow` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `other1` int(11) DEFAULT NULL,
  `other2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=730 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_logoMatch
-- ----------------------------
INSERT INTO `t_logoMatch` VALUES ('37', 'logo1', '简介1', '/static/logoImg/1.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('38', 'logo2', '简介2', '/static/logoImg/2.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('39', 'logo3', '简介3', '/static/logoImg/3.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('40', 'logo4', '简介4', '/static/logoImg/4.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('41', 'logo5', '简介5', '/static/logoImg/5.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('42', 'logo6', '简介6', '/static/logoImg/6.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('43', 'logo7', '简介7', '/static/logoImg/7.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('44', 'logo8', '简介8', '/static/logoImg/8.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('45', 'logo9', '简介9', '/static/logoImg/9.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('46', 'logo10', '简介10', '/static/logoImg/10.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('47', 'logo11', '简介11', '/static/logoImg/11.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('48', 'logo12', '简介12', '/static/logoImg/12.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('49', 'logo13', '简介13', '/static/logoImg/13.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('50', 'logo14', '简介14', '/static/logoImg/14.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('51', 'logo15', '简介15', '/static/logoImg/15.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('52', 'logo16', '简介16', '/static/logoImg/16.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('53', 'logo17', '简介17', '/static/logoImg/17.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('54', 'logo18', '简介18', '/static/logoImg/18.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('55', 'logo19', '简介19', '/static/logoImg/19.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('56', 'logo20', '简介20', '/static/logoImg/20.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('57', 'logo21', '简介21', '/static/logoImg/21.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('58', 'logo22', '简介22', '/static/logoImg/22.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('59', 'logo23', '简介23', '/static/logoImg/23.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('60', 'logo24', '简介24', '/static/logoImg/24.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('61', 'logo25', '简介25', '/static/logoImg/25.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('62', 'logo26', '简介26', '/static/logoImg/26.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('63', 'logo27', '简介27', '/static/logoImg/27.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('64', 'logo28', '简介28', '/static/logoImg/28.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('65', 'logo29', '简介29', '/static/logoImg/29.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('66', 'logo30', '简介30', '/static/logoImg/30.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('67', 'logo31', '简介31', '/static/logoImg/31.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('68', 'logo32', '简介32', '/static/logoImg/32.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('69', 'logo33', '简介33', '/static/logoImg/33.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('70', 'logo34', '简介34', '/static/logoImg/34.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('71', 'logo35', '简介35', '/static/logoImg/35.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('72', 'logo36', '简介36', '/static/logoImg/36.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('73', 'logo37', '简介37', '/static/logoImg/37.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('74', 'logo38', '简介38', '/static/logoImg/38.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('75', 'logo39', '简介39', '/static/logoImg/39.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('76', 'logo40', '简介40', '/static/logoImg/40.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('77', 'logo41', '简介41', '/static/logoImg/41.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('78', 'logo42', '简介42', '/static/logoImg/42.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('79', 'logo43', '简介43', '/static/logoImg/43.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('80', 'logo44', '简介44', '/static/logoImg/44.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('81', 'logo45', '简介45', '/static/logoImg/45.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('82', 'logo46', '简介46', '/static/logoImg/46.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('83', 'logo47', '简介47', '/static/logoImg/47.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('84', 'logo48', '简介48', '/static/logoImg/48.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('85', 'logo49', '简介49', '/static/logoImg/49.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('86', 'logo50', '简介50', '/static/logoImg/50.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('87', 'logo51', '简介51', '/static/logoImg/51.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('88', 'logo52', '简介52', '/static/logoImg/52.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('89', 'logo53', '简介53', '/static/logoImg/53.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('90', 'logo54', '简介54', '/static/logoImg/54.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('91', 'logo55', '简介55', '/static/logoImg/55.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('92', 'logo56', '简介56', '/static/logoImg/56.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('93', 'logo57', '简介57', '/static/logoImg/57.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('94', 'logo58', '简介58', '/static/logoImg/58.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('95', 'logo59', '简介59', '/static/logoImg/59.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('96', 'logo60', '简介60', '/static/logoImg/60.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('97', 'logo61', '简介61', '/static/logoImg/61.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('98', 'logo62', '简介62', '/static/logoImg/62.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('99', 'logo63', '简介63', '/static/logoImg/63.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('100', 'logo64', '简介64', '/static/logoImg/64.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('101', 'logo65', '简介65', '/static/logoImg/65.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('102', 'logo66', '简介66', '/static/logoImg/66.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('103', 'logo67', '简介67', '/static/logoImg/67.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('104', 'logo68', '简介68', '/static/logoImg/68.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('105', 'logo69', '简介69', '/static/logoImg/69.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('106', 'logo70', '简介70', '/static/logoImg/70.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('107', 'logo71', '简介71', '/static/logoImg/71.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('108', 'logo72', '简介72', '/static/logoImg/72.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('109', 'logo73', '简介73', '/static/logoImg/73.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('110', 'logo74', '简介74', '/static/logoImg/74.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('111', 'logo75', '简介75', '/static/logoImg/75.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('112', 'logo76', '简介76', '/static/logoImg/76.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('113', 'logo77', '简介77', '/static/logoImg/77.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('114', 'logo78', '简介78', '/static/logoImg/78.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('115', 'logo79', '简介79', '/static/logoImg/79.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('116', 'logo80', '简介80', '/static/logoImg/80.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('117', 'logo81', '简介81', '/static/logoImg/81.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('118', 'logo82', '简介82', '/static/logoImg/82.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('119', 'logo83', '简介83', '/static/logoImg/83.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('120', 'logo84', '简介84', '/static/logoImg/84.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('121', 'logo85', '简介85', '/static/logoImg/85.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('122', 'logo86', '简介86', '/static/logoImg/86.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('123', 'logo87', '简介87', '/static/logoImg/87.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('124', 'logo88', '简介88', '/static/logoImg/88.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('125', 'logo89', '简介89', '/static/logoImg/89.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('126', 'logo90', '简介90', '/static/logoImg/90.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('127', 'logo91', '简介91', '/static/logoImg/91.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('128', 'logo92', '简介92', '/static/logoImg/92.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('129', 'logo93', '简介93', '/static/logoImg/93.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('130', 'logo94', '简介94', '/static/logoImg/94.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('131', 'logo95', '简介95', '/static/logoImg/95.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('132', 'logo96', '简介96', '/static/logoImg/96.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('133', 'logo97', '简介97', '/static/logoImg/97.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('134', 'logo98', '简介98', '/static/logoImg/98.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('135', 'logo99', '简介99', '/static/logoImg/99.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('136', 'logo100', '简介100', '/static/logoImg/100.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('137', 'logo101', '简介101', '/static/logoImg/101.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('138', 'logo102', '简介102', '/static/logoImg/102.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('139', 'logo103', '简介103', '/static/logoImg/103.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('140', 'logo104', '简介104', '/static/logoImg/104.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('141', 'logo105', '简介105', '/static/logoImg/105.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('142', 'logo106', '简介106', '/static/logoImg/106.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('143', 'logo107', '简介107', '/static/logoImg/107.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('144', 'logo108', '简介108', '/static/logoImg/108.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('145', 'logo109', '简介109', '/static/logoImg/109.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('146', 'logo110', '简介110', '/static/logoImg/110.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('147', 'logo111', '简介111', '/static/logoImg/111.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('148', 'logo112', '简介112', '/static/logoImg/112.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('149', 'logo113', '简介113', '/static/logoImg/113.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('150', 'logo114', '简介114', '/static/logoImg/114.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('151', 'logo115', '简介115', '/static/logoImg/115.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('152', 'logo116', '简介116', '/static/logoImg/116.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('153', 'logo117', '简介117', '/static/logoImg/117.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('154', 'logo118', '简介118', '/static/logoImg/118.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('155', 'logo119', '简介119', '/static/logoImg/119.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('156', 'logo120', '简介120', '/static/logoImg/120.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('157', 'logo121', '简介121', '/static/logoImg/121.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('158', 'logo122', '简介122', '/static/logoImg/122.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('159', 'logo123', '简介123', '/static/logoImg/123.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('160', 'logo124', '简介124', '/static/logoImg/124.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('161', 'logo125', '简介125', '/static/logoImg/125.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('162', 'logo126', '简介126', '/static/logoImg/126.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('163', 'logo127', '简介127', '/static/logoImg/127.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('164', 'logo128', '简介128', '/static/logoImg/128.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('165', 'logo129', '简介129', '/static/logoImg/129.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('166', 'logo130', '简介130', '/static/logoImg/130.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('167', 'logo131', '简介131', '/static/logoImg/131.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('168', 'logo132', '简介132', '/static/logoImg/132.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('169', 'logo133', '简介133', '/static/logoImg/133.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('170', 'logo134', '简介134', '/static/logoImg/134.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('171', 'logo135', '简介135', '/static/logoImg/135.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('172', 'logo136', '简介136', '/static/logoImg/136.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('173', 'logo137', '简介137', '/static/logoImg/137.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('174', 'logo138', '简介138', '/static/logoImg/138.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('175', 'logo139', '简介139', '/static/logoImg/139.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('176', 'logo140', '简介140', '/static/logoImg/140.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('177', 'logo141', '简介141', '/static/logoImg/141.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('178', 'logo142', '简介142', '/static/logoImg/142.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('179', 'logo143', '简介143', '/static/logoImg/143.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('180', 'logo144', '简介144', '/static/logoImg/144.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('181', 'logo145', '简介145', '/static/logoImg/145.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('182', 'logo146', '简介146', '/static/logoImg/146.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('183', 'logo147', '简介147', '/static/logoImg/147.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('184', 'logo148', '简介148', '/static/logoImg/148.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('185', 'logo149', '简介149', '/static/logoImg/149.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('186', 'logo150', '简介150', '/static/logoImg/150.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('187', 'logo151', '简介151', '/static/logoImg/151.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('188', 'logo152', '简介152', '/static/logoImg/152.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('189', 'logo153', '简介153', '/static/logoImg/153.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('190', 'logo154', '简介154', '/static/logoImg/154.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('191', 'logo155', '简介155', '/static/logoImg/155.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('192', 'logo156', '简介156', '/static/logoImg/156.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('193', 'logo157', '简介157', '/static/logoImg/157.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('194', 'logo158', '简介158', '/static/logoImg/158.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('195', 'logo159', '简介159', '/static/logoImg/159.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('196', 'logo160', '简介160', '/static/logoImg/160.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('197', 'logo161', '简介161', '/static/logoImg/161.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('198', 'logo162', '简介162', '/static/logoImg/162.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('199', 'logo163', '简介163', '/static/logoImg/163.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('200', 'logo164', '简介164', '/static/logoImg/164.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('201', 'logo165', '简介165', '/static/logoImg/165.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('202', 'logo166', '简介166', '/static/logoImg/166.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('203', 'logo167', '简介167', '/static/logoImg/167.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('204', 'logo168', '简介168', '/static/logoImg/168.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('205', 'logo169', '简介169', '/static/logoImg/169.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('206', 'logo170', '简介170', '/static/logoImg/170.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('207', 'logo171', '简介171', '/static/logoImg/171.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('208', 'logo172', '简介172', '/static/logoImg/172.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('209', 'logo173', '简介173', '/static/logoImg/173.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('210', 'logo174', '简介174', '/static/logoImg/174.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('211', 'logo175', '简介175', '/static/logoImg/175.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('212', 'logo176', '简介176', '/static/logoImg/176.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('213', 'logo177', '简介177', '/static/logoImg/177.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('214', 'logo178', '简介178', '/static/logoImg/178.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('215', 'logo179', '简介179', '/static/logoImg/179.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('216', 'logo180', '简介180', '/static/logoImg/180.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('217', 'logo181', '简介181', '/static/logoImg/181.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('218', 'logo182', '简介182', '/static/logoImg/182.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('219', 'logo183', '简介183', '/static/logoImg/183.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('220', 'logo184', '简介184', '/static/logoImg/184.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('221', 'logo185', '简介185', '/static/logoImg/185.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('222', 'logo186', '简介186', '/static/logoImg/186.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('223', 'logo187', '简介187', '/static/logoImg/187.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('224', 'logo188', '简介188', '/static/logoImg/188.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('225', 'logo189', '简介189', '/static/logoImg/189.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('226', 'logo190', '简介190', '/static/logoImg/190.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('227', 'logo191', '简介191', '/static/logoImg/191.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('228', 'logo192', '简介192', '/static/logoImg/192.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('229', 'logo193', '简介193', '/static/logoImg/193.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('230', 'logo194', '简介194', '/static/logoImg/194.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('231', 'logo195', '简介195', '/static/logoImg/195.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('232', 'logo196', '简介196', '/static/logoImg/196.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('233', 'logo197', '简介197', '/static/logoImg/197.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('234', 'logo198', '简介198', '/static/logoImg/198.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('235', 'logo199', '简介199', '/static/logoImg/199.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('236', 'logo200', '简介200', '/static/logoImg/200.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('237', 'logo201', '简介201', '/static/logoImg/201.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('238', 'logo202', '简介202', '/static/logoImg/202.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('239', 'logo203', '简介203', '/static/logoImg/203.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('240', 'logo204', '简介204', '/static/logoImg/204.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('241', 'logo205', '简介205', '/static/logoImg/205.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('242', 'logo206', '简介206', '/static/logoImg/206.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('243', 'logo207', '简介207', '/static/logoImg/207.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('244', 'logo208', '简介208', '/static/logoImg/208.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('245', 'logo209', '简介209', '/static/logoImg/209.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('246', 'logo210', '简介210', '/static/logoImg/210.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('247', 'logo211', '简介211', '/static/logoImg/211.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('248', 'logo212', '简介212', '/static/logoImg/212.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('249', 'logo213', '简介213', '/static/logoImg/213.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('250', 'logo214', '简介214', '/static/logoImg/214.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('251', 'logo215', '简介215', '/static/logoImg/215.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('252', 'logo216', '简介216', '/static/logoImg/216.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('253', 'logo217', '简介217', '/static/logoImg/217.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('254', 'logo218', '简介218', '/static/logoImg/218.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('255', 'logo219', '简介219', '/static/logoImg/219.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('256', 'logo220', '简介220', '/static/logoImg/220.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('257', 'logo221', '简介221', '/static/logoImg/221.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('258', 'logo222', '简介222', '/static/logoImg/222.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('259', 'logo223', '简介223', '/static/logoImg/223.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('260', 'logo224', '简介224', '/static/logoImg/224.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('261', 'logo225', '简介225', '/static/logoImg/225.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('262', 'logo226', '简介226', '/static/logoImg/226.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('263', 'logo227', '简介227', '/static/logoImg/227.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('264', 'logo228', '简介228', '/static/logoImg/228.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('265', 'logo229', '简介229', '/static/logoImg/229.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('266', 'logo230', '简介230', '/static/logoImg/230.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('267', 'logo231', '简介231', '/static/logoImg/231.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('268', 'logo232', '简介232', '/static/logoImg/232.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('269', 'logo233', '简介233', '/static/logoImg/233.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('270', 'logo234', '简介234', '/static/logoImg/234.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('271', 'logo235', '简介235', '/static/logoImg/235.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('272', 'logo236', '简介236', '/static/logoImg/236.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('273', 'logo237', '简介237', '/static/logoImg/237.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('274', 'logo238', '简介238', '/static/logoImg/238.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('275', 'logo239', '简介239', '/static/logoImg/239.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('276', 'logo240', '简介240', '/static/logoImg/240.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('277', 'logo241', '简介241', '/static/logoImg/241.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('278', 'logo242', '简介242', '/static/logoImg/242.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('279', 'logo243', '简介243', '/static/logoImg/243.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('280', 'logo244', '简介244', '/static/logoImg/244.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('281', 'logo245', '简介245', '/static/logoImg/245.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('282', 'logo246', '简介246', '/static/logoImg/246.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('283', 'logo247', '简介247', '/static/logoImg/247.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('284', 'logo248', '简介248', '/static/logoImg/248.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('285', 'logo249', '简介249', '/static/logoImg/249.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('286', 'logo250', '简介250', '/static/logoImg/250.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('287', 'logo251', '简介251', '/static/logoImg/251.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('288', 'logo252', '简介252', '/static/logoImg/252.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('289', 'logo253', '简介253', '/static/logoImg/253.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('290', 'logo254', '简介254', '/static/logoImg/254.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('291', 'logo255', '简介255', '/static/logoImg/255.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('292', 'logo256', '简介256', '/static/logoImg/256.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('293', 'logo257', '简介257', '/static/logoImg/257.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('294', 'logo258', '简介258', '/static/logoImg/258.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('295', 'logo259', '简介259', '/static/logoImg/259.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('296', 'logo260', '简介260', '/static/logoImg/260.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('297', 'logo261', '简介261', '/static/logoImg/261.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('298', 'logo262', '简介262', '/static/logoImg/262.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('299', 'logo263', '简介263', '/static/logoImg/263.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('300', 'logo264', '简介264', '/static/logoImg/264.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('301', 'logo265', '简介265', '/static/logoImg/265.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('302', 'logo266', '简介266', '/static/logoImg/266.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('303', 'logo267', '简介267', '/static/logoImg/267.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('304', 'logo268', '简介268', '/static/logoImg/268.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('305', 'logo269', '简介269', '/static/logoImg/269.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('306', 'logo270', '简介270', '/static/logoImg/270.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('307', 'logo271', '简介271', '/static/logoImg/271.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('308', 'logo272', '简介272', '/static/logoImg/272.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('309', 'logo273', '简介273', '/static/logoImg/273.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('310', 'logo274', '简介274', '/static/logoImg/274.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('311', 'logo275', '简介275', '/static/logoImg/275.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('312', 'logo276', '简介276', '/static/logoImg/276.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('313', 'logo277', '简介277', '/static/logoImg/277.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('314', 'logo278', '简介278', '/static/logoImg/278.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('315', 'logo279', '简介279', '/static/logoImg/279.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('316', 'logo280', '简介280', '/static/logoImg/280.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('317', 'logo281', '简介281', '/static/logoImg/281.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('318', 'logo282', '简介282', '/static/logoImg/282.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('319', 'logo283', '简介283', '/static/logoImg/283.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('320', 'logo284', '简介284', '/static/logoImg/284.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('321', 'logo285', '简介285', '/static/logoImg/285.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('322', 'logo286', '简介286', '/static/logoImg/286.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('323', 'logo287', '简介287', '/static/logoImg/287.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('324', 'logo288', '简介288', '/static/logoImg/288.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('325', 'logo289', '简介289', '/static/logoImg/289.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('326', 'logo290', '简介290', '/static/logoImg/290.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('327', 'logo291', '简介291', '/static/logoImg/291.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('328', 'logo292', '简介292', '/static/logoImg/292.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('329', 'logo293', '简介293', '/static/logoImg/293.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('330', 'logo294', '简介294', '/static/logoImg/294.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('331', 'logo295', '简介295', '/static/logoImg/295.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('332', 'logo296', '简介296', '/static/logoImg/296.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('333', 'logo297', '简介297', '/static/logoImg/297.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('334', 'logo298', '简介298', '/static/logoImg/298.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('335', 'logo299', '简介299', '/static/logoImg/299.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('336', 'logo300', '简介300', '/static/logoImg/300.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('337', 'logo301', '简介301', '/static/logoImg/301.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('338', 'logo302', '简介302', '/static/logoImg/302.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('339', 'logo303', '简介303', '/static/logoImg/303.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('340', 'logo304', '简介304', '/static/logoImg/304.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('341', 'logo305', '简介305', '/static/logoImg/305.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('342', 'logo306', '简介306', '/static/logoImg/306.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('343', 'logo307', '简介307', '/static/logoImg/307.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('344', 'logo308', '简介308', '/static/logoImg/308.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('345', 'logo309', '简介309', '/static/logoImg/309.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('346', 'logo310', '简介310', '/static/logoImg/310.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('347', 'logo311', '简介311', '/static/logoImg/311.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('348', 'logo312', '简介312', '/static/logoImg/312.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('349', 'logo313', '简介313', '/static/logoImg/313.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('350', 'logo314', '简介314', '/static/logoImg/314.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('351', 'logo315', '简介315', '/static/logoImg/315.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('352', 'logo316', '简介316', '/static/logoImg/316.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('353', 'logo317', '简介317', '/static/logoImg/317.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('354', 'logo318', '简介318', '/static/logoImg/318.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('355', 'logo319', '简介319', '/static/logoImg/319.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('356', 'logo320', '简介320', '/static/logoImg/320.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('357', 'logo321', '简介321', '/static/logoImg/321.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('358', 'logo322', '简介322', '/static/logoImg/322.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('359', 'logo323', '简介323', '/static/logoImg/323.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('360', 'logo324', '简介324', '/static/logoImg/324.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('361', 'logo325', '简介325', '/static/logoImg/325.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('362', 'logo326', '简介326', '/static/logoImg/326.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('363', 'logo327', '简介327', '/static/logoImg/327.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('364', 'logo328', '简介328', '/static/logoImg/328.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('365', 'logo329', '简介329', '/static/logoImg/329.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('366', 'logo330', '简介330', '/static/logoImg/330.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('367', 'logo331', '简介331', '/static/logoImg/331.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('368', 'logo332', '简介332', '/static/logoImg/332.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('369', 'logo333', '简介333', '/static/logoImg/333.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('370', 'logo334', '简介334', '/static/logoImg/334.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('371', 'logo335', '简介335', '/static/logoImg/335.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('372', 'logo336', '简介336', '/static/logoImg/336.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('373', 'logo337', '简介337', '/static/logoImg/337.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('374', 'logo338', '简介338', '/static/logoImg/338.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('375', 'logo339', '简介339', '/static/logoImg/339.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('376', 'logo340', '简介340', '/static/logoImg/340.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('377', 'logo341', '简介341', '/static/logoImg/341.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('378', 'logo342', '简介342', '/static/logoImg/342.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('379', 'logo343', '简介343', '/static/logoImg/343.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('380', 'logo344', '简介344', '/static/logoImg/344.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('381', 'logo345', '简介345', '/static/logoImg/345.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('382', 'logo346', '简介346', '/static/logoImg/346.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('383', 'logo347', '简介347', '/static/logoImg/347.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('384', 'logo348', '简介348', '/static/logoImg/348.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('385', 'logo349', '简介349', '/static/logoImg/349.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('386', 'logo350', '简介350', '/static/logoImg/350.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('387', 'logo351', '简介351', '/static/logoImg/351.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('388', 'logo352', '简介352', '/static/logoImg/352.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('389', 'logo353', '简介353', '/static/logoImg/353.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('390', 'logo354', '简介354', '/static/logoImg/354.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('391', 'logo355', '简介355', '/static/logoImg/355.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('392', 'logo356', '简介356', '/static/logoImg/356.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('393', 'logo357', '简介357', '/static/logoImg/357.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('394', 'logo358', '简介358', '/static/logoImg/358.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('395', 'logo359', '简介359', '/static/logoImg/359.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('396', 'logo360', '简介360', '/static/logoImg/360.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('397', 'logo361', '简介361', '/static/logoImg/361.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('398', 'logo362', '简介362', '/static/logoImg/362.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('399', 'logo363', '简介363', '/static/logoImg/363.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('400', 'logo364', '简介364', '/static/logoImg/364.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('401', 'logo365', '简介365', '/static/logoImg/365.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('402', 'logo366', '简介366', '/static/logoImg/366.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('403', 'logo367', '简介367', '/static/logoImg/367.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('404', 'logo368', '简介368', '/static/logoImg/368.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('405', 'logo369', '简介369', '/static/logoImg/369.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('406', 'logo370', '简介370', '/static/logoImg/370.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('407', 'logo371', '简介371', '/static/logoImg/371.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('408', 'logo372', '简介372', '/static/logoImg/372.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('409', 'logo373', '简介373', '/static/logoImg/373.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('410', 'logo374', '简介374', '/static/logoImg/374.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('411', 'logo375', '简介375', '/static/logoImg/375.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('412', 'logo376', '简介376', '/static/logoImg/376.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('413', 'logo377', '简介377', '/static/logoImg/377.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('414', 'logo378', '简介378', '/static/logoImg/378.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('415', 'logo379', '简介379', '/static/logoImg/379.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('416', 'logo380', '简介380', '/static/logoImg/380.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('417', 'logo381', '简介381', '/static/logoImg/381.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('418', 'logo382', '简介382', '/static/logoImg/382.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('419', 'logo383', '简介383', '/static/logoImg/383.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('420', 'logo384', '简介384', '/static/logoImg/384.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('421', 'logo385', '简介385', '/static/logoImg/385.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('422', 'logo386', '简介386', '/static/logoImg/386.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('423', 'logo387', '简介387', '/static/logoImg/387.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('424', 'logo388', '简介388', '/static/logoImg/388.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('425', 'logo389', '简介389', '/static/logoImg/389.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('426', 'logo390', '简介390', '/static/logoImg/390.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('427', 'logo391', '简介391', '/static/logoImg/391.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('428', 'logo392', '简介392', '/static/logoImg/392.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('429', 'logo393', '简介393', '/static/logoImg/393.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('430', 'logo394', '简介394', '/static/logoImg/394.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('431', 'logo395', '简介395', '/static/logoImg/395.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('432', 'logo396', '简介396', '/static/logoImg/396.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('433', 'logo397', '简介397', '/static/logoImg/397.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('434', 'logo398', '简介398', '/static/logoImg/398.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('435', 'logo399', '简介399', '/static/logoImg/399.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('436', 'logo400', '简介400', '/static/logoImg/400.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('437', 'logo401', '简介401', '/static/logoImg/401.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('438', 'logo402', '简介402', '/static/logoImg/402.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('439', 'logo403', '简介403', '/static/logoImg/403.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('440', 'logo404', '简介404', '/static/logoImg/404.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('441', 'logo405', '简介405', '/static/logoImg/405.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('442', 'logo406', '简介406', '/static/logoImg/406.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('443', 'logo407', '简介407', '/static/logoImg/407.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('444', 'logo408', '简介408', '/static/logoImg/408.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('445', 'logo409', '简介409', '/static/logoImg/409.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('446', 'logo410', '简介410', '/static/logoImg/410.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('447', 'logo411', '简介411', '/static/logoImg/411.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('448', 'logo412', '简介412', '/static/logoImg/412.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('449', 'logo413', '简介413', '/static/logoImg/413.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('450', 'logo414', '简介414', '/static/logoImg/414.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('451', 'logo415', '简介415', '/static/logoImg/415.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('452', 'logo416', '简介416', '/static/logoImg/416.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('453', 'logo417', '简介417', '/static/logoImg/417.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('454', 'logo418', '简介418', '/static/logoImg/418.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('455', 'logo419', '简介419', '/static/logoImg/419.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('456', 'logo420', '简介420', '/static/logoImg/420.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('457', 'logo421', '简介421', '/static/logoImg/421.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('458', 'logo422', '简介422', '/static/logoImg/422.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('459', 'logo423', '简介423', '/static/logoImg/423.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('460', 'logo424', '简介424', '/static/logoImg/424.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('461', 'logo425', '简介425', '/static/logoImg/425.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('462', 'logo426', '简介426', '/static/logoImg/426.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('463', 'logo427', '简介427', '/static/logoImg/427.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('464', 'logo428', '简介428', '/static/logoImg/428.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('465', 'logo429', '简介429', '/static/logoImg/429.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('466', 'logo430', '简介430', '/static/logoImg/430.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('467', 'logo431', '简介431', '/static/logoImg/431.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('468', 'logo432', '简介432', '/static/logoImg/432.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('469', 'logo433', '简介433', '/static/logoImg/433.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('470', 'logo434', '简介434', '/static/logoImg/434.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('471', 'logo435', '简介435', '/static/logoImg/435.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('472', 'logo436', '简介436', '/static/logoImg/436.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('473', 'logo437', '简介437', '/static/logoImg/437.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('474', 'logo438', '简介438', '/static/logoImg/438.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('475', 'logo439', '简介439', '/static/logoImg/439.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('476', 'logo440', '简介440', '/static/logoImg/440.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('477', 'logo441', '简介441', '/static/logoImg/441.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('478', 'logo442', '简介442', '/static/logoImg/442.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('479', 'logo443', '简介443', '/static/logoImg/443.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('480', 'logo444', '简介444', '/static/logoImg/444.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('481', 'logo445', '简介445', '/static/logoImg/445.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('482', 'logo446', '简介446', '/static/logoImg/446.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('483', 'logo447', '简介447', '/static/logoImg/447.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('484', 'logo448', '简介448', '/static/logoImg/448.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('485', 'logo449', '简介449', '/static/logoImg/449.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('486', 'logo450', '简介450', '/static/logoImg/450.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('487', 'logo451', '简介451', '/static/logoImg/451.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('488', 'logo452', '简介452', '/static/logoImg/452.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('489', 'logo453', '简介453', '/static/logoImg/453.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('490', 'logo454', '简介454', '/static/logoImg/454.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('491', 'logo455', '简介455', '/static/logoImg/455.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('492', 'logo456', '简介456', '/static/logoImg/456.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('493', 'logo457', '简介457', '/static/logoImg/457.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('494', 'logo458', '简介458', '/static/logoImg/458.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('495', 'logo459', '简介459', '/static/logoImg/459.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('496', 'logo460', '简介460', '/static/logoImg/460.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('497', 'logo461', '简介461', '/static/logoImg/461.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('498', 'logo462', '简介462', '/static/logoImg/462.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('499', 'logo463', '简介463', '/static/logoImg/463.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('500', 'logo464', '简介464', '/static/logoImg/464.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('501', 'logo465', '简介465', '/static/logoImg/465.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('502', 'logo466', '简介466', '/static/logoImg/466.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('503', 'logo467', '简介467', '/static/logoImg/467.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('504', 'logo468', '简介468', '/static/logoImg/468.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('505', 'logo469', '简介469', '/static/logoImg/469.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('506', 'logo470', '简介470', '/static/logoImg/470.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('507', 'logo471', '简介471', '/static/logoImg/471.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('508', 'logo472', '简介472', '/static/logoImg/472.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('509', 'logo473', '简介473', '/static/logoImg/473.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('510', 'logo474', '简介474', '/static/logoImg/474.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('511', 'logo475', '简介475', '/static/logoImg/475.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('512', 'logo476', '简介476', '/static/logoImg/476.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('513', 'logo477', '简介477', '/static/logoImg/477.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('514', 'logo478', '简介478', '/static/logoImg/478.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('515', 'logo479', '简介479', '/static/logoImg/479.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('516', 'logo480', '简介480', '/static/logoImg/480.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('517', 'logo481', '简介481', '/static/logoImg/481.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('518', 'logo482', '简介482', '/static/logoImg/482.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('519', 'logo483', '简介483', '/static/logoImg/483.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('520', 'logo484', '简介484', '/static/logoImg/484.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('521', 'logo485', '简介485', '/static/logoImg/485.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('522', 'logo486', '简介486', '/static/logoImg/486.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('523', 'logo487', '简介487', '/static/logoImg/487.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('524', 'logo488', '简介488', '/static/logoImg/488.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('525', 'logo489', '简介489', '/static/logoImg/489.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('526', 'logo490', '简介490', '/static/logoImg/490.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('527', 'logo491', '简介491', '/static/logoImg/491.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('528', 'logo492', '简介492', '/static/logoImg/492.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('529', 'logo493', '简介493', '/static/logoImg/493.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('530', 'logo494', '简介494', '/static/logoImg/494.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('531', 'logo495', '简介495', '/static/logoImg/495.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('532', 'logo496', '简介496', '/static/logoImg/496.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('533', 'logo497', '简介497', '/static/logoImg/497.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('534', 'logo498', '简介498', '/static/logoImg/498.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('535', 'logo499', '简介499', '/static/logoImg/499.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('536', 'logo500', '简介500', '/static/logoImg/500.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('537', 'logo501', '简介501', '/static/logoImg/501.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('538', 'logo502', '简介502', '/static/logoImg/502.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('539', 'logo503', '简介503', '/static/logoImg/503.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('540', 'logo504', '简介504', '/static/logoImg/504.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('541', 'logo505', '简介505', '/static/logoImg/505.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('542', 'logo506', '简介506', '/static/logoImg/506.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('543', 'logo507', '简介507', '/static/logoImg/507.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('544', 'logo508', '简介508', '/static/logoImg/508.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('545', 'logo509', '简介509', '/static/logoImg/509.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('546', 'logo510', '简介510', '/static/logoImg/510.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('547', 'logo511', '简介511', '/static/logoImg/511.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('548', 'logo512', '简介512', '/static/logoImg/512.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('549', 'logo513', '简介513', '/static/logoImg/513.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('550', 'logo514', '简介514', '/static/logoImg/514.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('551', 'logo515', '简介515', '/static/logoImg/515.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('552', 'logo516', '简介516', '/static/logoImg/516.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('553', 'logo517', '简介517', '/static/logoImg/517.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('554', 'logo518', '简介518', '/static/logoImg/518.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('555', 'logo519', '简介519', '/static/logoImg/519.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('556', 'logo520', '简介520', '/static/logoImg/520.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('557', 'logo521', '简介521', '/static/logoImg/521.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('558', 'logo522', '简介522', '/static/logoImg/522.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('559', 'logo523', '简介523', '/static/logoImg/523.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('560', 'logo524', '简介524', '/static/logoImg/524.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('561', 'logo525', '简介525', '/static/logoImg/525.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('562', 'logo526', '简介526', '/static/logoImg/526.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('563', 'logo527', '简介527', '/static/logoImg/527.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('564', 'logo528', '简介528', '/static/logoImg/528.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('565', 'logo529', '简介529', '/static/logoImg/529.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('566', 'logo530', '简介530', '/static/logoImg/530.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('567', 'logo531', '简介531', '/static/logoImg/531.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('568', 'logo532', '简介532', '/static/logoImg/532.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('569', 'logo533', '简介533', '/static/logoImg/533.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('570', 'logo534', '简介534', '/static/logoImg/534.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('571', 'logo535', '简介535', '/static/logoImg/535.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('572', 'logo536', '简介536', '/static/logoImg/536.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('573', 'logo537', '简介537', '/static/logoImg/537.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('574', 'logo538', '简介538', '/static/logoImg/538.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('575', 'logo539', '简介539', '/static/logoImg/539.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('576', 'logo540', '简介540', '/static/logoImg/540.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('577', 'logo541', '简介541', '/static/logoImg/541.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('578', 'logo542', '简介542', '/static/logoImg/542.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('579', 'logo543', '简介543', '/static/logoImg/543.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('580', 'logo544', '简介544', '/static/logoImg/544.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('581', 'logo545', '简介545', '/static/logoImg/545.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('582', 'logo546', '简介546', '/static/logoImg/546.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('583', 'logo547', '简介547', '/static/logoImg/547.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('584', 'logo548', '简介548', '/static/logoImg/548.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('585', 'logo549', '简介549', '/static/logoImg/549.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('586', 'logo550', '简介550', '/static/logoImg/550.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('587', 'logo551', '简介551', '/static/logoImg/551.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('588', 'logo552', '简介552', '/static/logoImg/552.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('589', 'logo553', '简介553', '/static/logoImg/553.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('590', 'logo554', '简介554', '/static/logoImg/554.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('591', 'logo555', '简介555', '/static/logoImg/555.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('592', 'logo556', '简介556', '/static/logoImg/556.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('593', 'logo557', '简介557', '/static/logoImg/557.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('594', 'logo558', '简介558', '/static/logoImg/558.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('595', 'logo559', '简介559', '/static/logoImg/559.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('596', 'logo560', '简介560', '/static/logoImg/560.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('597', 'logo561', '简介561', '/static/logoImg/561.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('598', 'logo562', '简介562', '/static/logoImg/562.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('599', 'logo563', '简介563', '/static/logoImg/563.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('600', 'logo564', '简介564', '/static/logoImg/564.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('601', 'logo565', '简介565', '/static/logoImg/565.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('602', 'logo566', '简介566', '/static/logoImg/566.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('603', 'logo567', '简介567', '/static/logoImg/567.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('604', 'logo568', '简介568', '/static/logoImg/568.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('605', 'logo569', '简介569', '/static/logoImg/569.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('606', 'logo570', '简介570', '/static/logoImg/570.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('607', 'logo571', '简介571', '/static/logoImg/571.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('608', 'logo572', '简介572', '/static/logoImg/572.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('609', 'logo573', '简介573', '/static/logoImg/573.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('610', 'logo574', '简介574', '/static/logoImg/574.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('611', 'logo575', '简介575', '/static/logoImg/575.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('612', 'logo576', '简介576', '/static/logoImg/576.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('613', 'logo577', '简介577', '/static/logoImg/577.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('614', 'logo578', '简介578', '/static/logoImg/578.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('615', 'logo579', '简介579', '/static/logoImg/579.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('616', 'logo580', '简介580', '/static/logoImg/580.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('617', 'logo581', '简介581', '/static/logoImg/581.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('618', 'logo582', '简介582', '/static/logoImg/582.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('619', 'logo583', '简介583', '/static/logoImg/583.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('620', 'logo584', '简介584', '/static/logoImg/584.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('621', 'logo585', '简介585', '/static/logoImg/585.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('622', 'logo586', '简介586', '/static/logoImg/586.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('623', 'logo587', '简介587', '/static/logoImg/587.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('624', 'logo588', '简介588', '/static/logoImg/588.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('625', 'logo589', '简介589', '/static/logoImg/589.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('626', 'logo590', '简介590', '/static/logoImg/590.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('627', 'logo591', '简介591', '/static/logoImg/591.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('628', 'logo592', '简介592', '/static/logoImg/592.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('629', 'logo593', '简介593', '/static/logoImg/593.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('630', 'logo594', '简介594', '/static/logoImg/594.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('631', 'logo595', '简介595', '/static/logoImg/595.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('632', 'logo596', '简介596', '/static/logoImg/596.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('633', 'logo597', '简介597', '/static/logoImg/597.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('634', 'logo598', '简介598', '/static/logoImg/598.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('635', 'logo599', '简介599', '/static/logoImg/599.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('636', 'logo600', '简介600', '/static/logoImg/600.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('637', 'logo601', '简介601', '/static/logoImg/601.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('638', 'logo602', '简介602', '/static/logoImg/602.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('639', 'logo603', '简介603', '/static/logoImg/603.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('640', 'logo604', '简介604', '/static/logoImg/604.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('641', 'logo605', '简介605', '/static/logoImg/605.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('642', 'logo606', '简介606', '/static/logoImg/606.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('643', 'logo607', '简介607', '/static/logoImg/607.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('644', 'logo608', '简介608', '/static/logoImg/608.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('645', 'logo609', '简介609', '/static/logoImg/609.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('646', 'logo610', '简介610', '/static/logoImg/610.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('647', 'logo611', '简介611', '/static/logoImg/611.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('648', 'logo612', '简介612', '/static/logoImg/612.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('649', 'logo613', '简介613', '/static/logoImg/613.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('650', 'logo614', '简介614', '/static/logoImg/614.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('651', 'logo615', '简介615', '/static/logoImg/615.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('652', 'logo616', '简介616', '/static/logoImg/616.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('653', 'logo617', '简介617', '/static/logoImg/617.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('654', 'logo618', '简介618', '/static/logoImg/618.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('655', 'logo619', '简介619', '/static/logoImg/619.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('656', 'logo620', '简介620', '/static/logoImg/620.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('657', 'logo621', '简介621', '/static/logoImg/621.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('658', 'logo622', '简介622', '/static/logoImg/622.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('659', 'logo623', '简介623', '/static/logoImg/623.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('660', 'logo624', '简介624', '/static/logoImg/624.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('661', 'logo625', '简介625', '/static/logoImg/625.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('662', 'logo626', '简介626', '/static/logoImg/626.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('663', 'logo627', '简介627', '/static/logoImg/627.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('664', 'logo628', '简介628', '/static/logoImg/628.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('665', 'logo629', '简介629', '/static/logoImg/629.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('666', 'logo630', '简介630', '/static/logoImg/630.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('667', 'logo631', '简介631', '/static/logoImg/631.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('668', 'logo632', '简介632', '/static/logoImg/632.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('669', 'logo633', '简介633', '/static/logoImg/633.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('670', 'logo634', '简介634', '/static/logoImg/634.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('671', 'logo635', '简介635', '/static/logoImg/635.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('672', 'logo636', '简介636', '/static/logoImg/636.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('673', 'logo637', '简介637', '/static/logoImg/637.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('674', 'logo638', '简介638', '/static/logoImg/638.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('675', 'logo639', '简介639', '/static/logoImg/639.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('676', 'logo640', '简介640', '/static/logoImg/640.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('677', 'logo641', '简介641', '/static/logoImg/641.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('678', 'logo642', '简介642', '/static/logoImg/642.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('679', 'logo643', '简介643', '/static/logoImg/643.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('680', 'logo644', '简介644', '/static/logoImg/644.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('681', 'logo645', '简介645', '/static/logoImg/645.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('682', 'logo646', '简介646', '/static/logoImg/646.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('683', 'logo647', '简介647', '/static/logoImg/647.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('684', 'logo648', '简介648', '/static/logoImg/648.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('685', 'logo649', '简介649', '/static/logoImg/649.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('686', 'logo650', '简介650', '/static/logoImg/650.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('687', 'logo651', '简介651', '/static/logoImg/651.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('688', 'logo652', '简介652', '/static/logoImg/652.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('689', 'logo653', '简介653', '/static/logoImg/653.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('690', 'logo654', '简介654', '/static/logoImg/654.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('691', 'logo655', '简介655', '/static/logoImg/655.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('692', 'logo656', '简介656', '/static/logoImg/656.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('693', 'logo657', '简介657', '/static/logoImg/657.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('694', 'logo658', '简介658', '/static/logoImg/658.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('695', 'logo659', '简介659', '/static/logoImg/659.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('696', 'logo660', '简介660', '/static/logoImg/660.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('697', 'logo661', '简介661', '/static/logoImg/661.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('698', 'logo662', '简介662', '/static/logoImg/662.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('699', 'logo663', '简介663', '/static/logoImg/663.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('700', 'logo664', '简介664', '/static/logoImg/664.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('701', 'logo665', '简介665', '/static/logoImg/665.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('702', 'logo666', '简介666', '/static/logoImg/666.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('703', 'logo667', '简介667', '/static/logoImg/667.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('704', 'logo668', '简介668', '/static/logoImg/668.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('705', 'logo669', '简介669', '/static/logoImg/669.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('706', 'logo670', '简介670', '/static/logoImg/670.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('707', 'logo671', '简介671', '/static/logoImg/671.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('708', 'logo672', '简介672', '/static/logoImg/672.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('709', 'logo673', '简介673', '/static/logoImg/673.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('710', 'logo674', '简介674', '/static/logoImg/674.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('711', 'logo675', '简介675', '/static/logoImg/675.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('712', 'logo676', '简介676', '/static/logoImg/676.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('713', 'logo677', '简介677', '/static/logoImg/677.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('714', 'logo678', '简介678', '/static/logoImg/678.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('715', 'logo679', '简介679', '/static/logoImg/679.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('716', 'logo680', '简介680', '/static/logoImg/680.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('717', 'logo681', '简介681', '/static/logoImg/681.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('718', 'logo682', '简介682', '/static/logoImg/682.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('719', 'logo683', '简介683', '/static/logoImg/683.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('720', 'logo684', '简介684', '/static/logoImg/684.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('721', 'logo685', '简介685', '/static/logoImg/685.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('722', 'logo686', '简介686', '/static/logoImg/686.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('723', 'logo687', '简介687', '/static/logoImg/687.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('724', 'logo688', '简介688', '/static/logoImg/688.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('725', 'logo689', '简介689', '/static/logoImg/689.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('726', 'logo690', '简介690', '/static/logoImg/690.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('727', 'logo691', '简介691', '/static/logoImg/691.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('728', 'logo692', '简介692', '/static/logoImg/692.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);
INSERT INTO `t_logoMatch` VALUES ('729', 'logo693', '简介693', '/static/logoImg/693.jpg', null, null, null, null, null, null, '1', '1', '1', null, null);

-- ----------------------------
-- Table structure for t_match
-- ----------------------------
DROP TABLE IF EXISTS `t_match`;
CREATE TABLE `t_match` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(100) DEFAULT NULL,
  `createDate` varchar(100) DEFAULT NULL,
  `modifyDate` varchar(100) DEFAULT NULL,
  `createUserId` bigint(20) DEFAULT NULL,
  `info` varchar(4000) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `background` varchar(3000) DEFAULT NULL,
  `target` varchar(3000) DEFAULT NULL,
  `plan` varchar(3000) DEFAULT NULL,
  `peopleNum` int(11) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL COMMENT '收益',
  `situation` varchar(255) DEFAULT NULL COMMENT '专利及知识产权情况',
  `advantage` varchar(3000) DEFAULT NULL,
  `resources` varchar(3000) DEFAULT NULL,
  `organizationModel` varchar(1000) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `other1` int(11) DEFAULT NULL,
  `other2` int(11) DEFAULT NULL,
  `other3` varchar(255) DEFAULT NULL,
  `other4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `createUserId` (`createUserId`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_match
-- ----------------------------
INSERT INTO `t_match` VALUES ('50', '人力资源流程改进', '2017-03-15 05:15:17', null, '49', '改进人力资源各模块流程，提高效率。', '管理', '部分模块效率底下。', '提高工作效率。', '3个月内落地。', '1', '提高人力资源各模块工作效率，提高员工满意度。', '无', '长期外资企业人力资源从业经验。', '战略部及财务部系统支持。', '11', '1', null, null, null, null);
INSERT INTO `t_match` VALUES ('51', '1', '2017-03-27 10:29:54', '2017-03-27 10:52:26', '48', '1', '技术创新,运营创新', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', null, null, null, null);
INSERT INTO `t_match` VALUES ('52', '11111', '2017-03-27 16:12:05', '2017-03-27 16:12:20', '60', 'fasdfasdfas发生发生的', '商业模式创新', '发生的发生', '发生的发生', '发生的发生', '11', 'V自行车V', '安分的萨芬', '发V啊是的认为', '无法儿', '11vs爱的vs的', '1', null, null, null, null);

-- ----------------------------
-- Table structure for t_match_member
-- ----------------------------
DROP TABLE IF EXISTS `t_match_member`;
CREATE TABLE `t_match_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `matchId` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `siling` int(11) DEFAULT NULL COMMENT '司龄',
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `idCard` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `other1` int(11) DEFAULT NULL,
  `other2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `matchId` (`matchId`)
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_match_member
-- ----------------------------
INSERT INTO `t_match_member` VALUES ('342', '50', '姜大川', '男', '32', '1', '4', '1', '人力资源部', '业务经理', '220623198503200000', '北京师范大学', '本科', 'jiangdachuan@founder.com', '18612277803', '1', null, null);
INSERT INTO `t_match_member` VALUES ('347', '51', '1', '男', '30', '5', '9', '92', '11', '1', '11', '1', '博士', '1@qq.com', '11', '0', null, null);
INSERT INTO `t_match_member` VALUES ('348', '51', '1', '男', '30', '5', '9', '92', '11', '1', '11', '1', '博士', '1@qq.com', '11', '1', null, null);
INSERT INTO `t_match_member` VALUES ('349', '52', '1', '男', '33', '16', '10', '96', '1111', '发生的发生的', '111', '1111', '硕士研究生', '11@qq.com', '1111', '0', null, null);
INSERT INTO `t_match_member` VALUES ('350', '52', '1', '男', '33', '16', '10', '94', '1111', '发生的发生的', '111', '1111', 'EMBA', '11@qq.com', '1111', '1', null, null);

-- ----------------------------
-- Table structure for t_match_type
-- ----------------------------
DROP TABLE IF EXISTS `t_match_type`;
CREATE TABLE `t_match_type` (
  `id` bigint(20) NOT NULL,
  `typeName` varchar(255) DEFAULT NULL,
  `createDate` varchar(100) DEFAULT NULL,
  `modifyDate` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_match_type
-- ----------------------------

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `parentId` bigint(20) DEFAULT NULL COMMENT '父菜单id',
  `name` varchar(100) CHARACTER SET gbk DEFAULT NULL COMMENT '菜单名称',
  `enName` varchar(100) CHARACTER SET gbk DEFAULT NULL COMMENT '菜单英文名称',
  `icon` varchar(100) CHARACTER SET gbk DEFAULT NULL COMMENT '图表',
  `urlAddress` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '路径',
  `target` varchar(100) CHARACTER SET gbk DEFAULT NULL COMMENT '打开方式',
  `isPublic` varchar(1) CHARACTER SET gbk DEFAULT NULL COMMENT '是否公开',
  `allowDelete` varchar(1) CHARACTER SET gbk DEFAULT NULL COMMENT '是否允许删除',
  `allowEdit` varchar(1) CHARACTER SET gbk DEFAULT NULL COMMENT '是否允许编辑',
  `sortCode` int(11) DEFAULT NULL COMMENT '排序代码',
  `deleteMark` varchar(1) CHARACTER SET gbk DEFAULT NULL COMMENT '删除标记',
  `description` varchar(1000) CHARACTER SET gbk DEFAULT NULL COMMENT '描述',
  `createDate` varchar(100) CHARACTER SET gbk DEFAULT NULL COMMENT '创建时间',
  `createUserId` bigint(20) DEFAULT NULL,
  `createUserName` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  `modifyDate` varchar(100) CHARACTER SET gbk DEFAULT NULL COMMENT '最后修改时间',
  `modifyUserId` bigint(20) DEFAULT NULL COMMENT '最后修改者id',
  `modifyUserName` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '最后修改者name',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '0', '系统设置', 'SystemSet', 'fa fa-desktop', null, 'iframe', '1', '0', '0', '1', '0', '系统设置', '2017-03-03 08:21:00', '1', '系统管理员', null, null, null);
INSERT INTO `t_menu` VALUES ('2', '1', '菜单管理', 'MenuSet', 'fa fa-navicon', '/home/test', 'iframe', '1', '0', '0', '1', '0', '菜单管理', '2017-03-03 08:21:00', null, null, null, null, null);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `loginId` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `siling` int(11) DEFAULT NULL COMMENT '司龄',
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `idCard` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `other1` int(11) DEFAULT NULL,
  `other2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `loginId` (`loginId`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('48', 'test11', 'C4CA4238A0B923820DCC509A6F75849B', '代森荣', '男', '35', '7', '13', '100', '信息管理', '职员', '1111', '11133333', '博士', '1@qq.com', '12333333333', '1', null, null);
INSERT INTO `t_user` VALUES ('49', 'riverjiang', '7EFB89B6643235F352E37E790CB9BBEA', '姜大川', null, null, null, '5', '18', '人力资源部', null, null, null, null, 'jiangdachuan@founder.com', '18612277803', '1', null, null);
INSERT INTO `t_user` VALUES ('50', 'test12', 'C4CA4238A0B923820DCC509A6F75849B', '1', null, null, null, '9', '92', '111', null, null, null, null, '11@qq.com', '12333333333', '1', null, null);
INSERT INTO `t_user` VALUES ('51', 'test13', 'C4CA4238A0B923820DCC509A6F75849B', '222', null, null, null, '5', '22', 'jjj', null, null, null, null, '22@qq.com', '12333333338', '1', null, null);
INSERT INTO `t_user` VALUES ('52', 'test14', 'C4CA4238A0B923820DCC509A6F75849B', '运营', null, null, null, '5', '22', '111', null, null, null, null, 'daisenrong@founder.com', '12333333333', '1', null, null);
INSERT INTO `t_user` VALUES ('53', 'dsr1111', 'C4CA4238A0B923820DCC509A6F75849B', 'ssss', null, null, null, '5', '20', '111', null, null, null, null, '111@qq.com', '12222222222', '1', null, null);
INSERT INTO `t_user` VALUES ('54', 'sdfasdfa', 'C4CA4238A0B923820DCC509A6F75849B', '111111', null, null, null, '5', '21', '111111', null, null, null, null, '222@qq.com', '11111111111', '1', null, null);
INSERT INTO `t_user` VALUES ('55', 'admin1111', 'B59C67BF196A4758191E42F76670CEBA', 'aaaa', null, null, null, '9', '92', '1111', null, null, null, null, '168367406@qq.com', '11111111111', '1', null, null);
INSERT INTO `t_user` VALUES ('56', 'admin111111', 'C4CA4238A0B923820DCC509A6F75849B', '11111', null, null, null, '6', '33', '12222', null, null, null, null, '168367406@qq.com', '11111111111', '1', null, null);
INSERT INTO `t_user` VALUES ('57', 'adminfdsaf', 'C4CA4238A0B923820DCC509A6F75849B', 'dfasdfasd', null, null, null, '8', '79', '21111', null, null, null, null, '168367406@qq.com', '11111111111', '1', null, null);
INSERT INTO `t_user` VALUES ('58', 'aaaaaa111', 'C4CA4238A0B923820DCC509A6F75849B', '1232312', null, null, null, '9', '92', '11111', null, null, null, null, '111@qq.com', '11111111111', '1', null, null);
INSERT INTO `t_user` VALUES ('59', '111111assss', 'C4CA4238A0B923820DCC509A6F75849B', '111111', null, null, null, '8', '63', '11111', null, null, null, null, '111@qq.com', '11111111111', '1', null, null);
INSERT INTO `t_user` VALUES ('60', 'fasdfas11111', 'C4CA4238A0B923820DCC509A6F75849B', 'dass', null, null, null, '10', '95', '111', null, null, null, null, '11@qq.com', '11111111111', '1', null, null);
