/*
Navicat MySQL Data Transfer

Source Server         : base
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : base

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-03-19 00:41:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `introducer` varchar(255) DEFAULT NULL,
  `installer` varchar(255) DEFAULT NULL,
  `installation_time` datetime DEFAULT NULL,
  `front_money` decimal(28,2) DEFAULT NULL,
  `total` decimal(28,2) DEFAULT NULL,
  `single_person` varchar(255) DEFAULT NULL,
  `single_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `yn` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('1', 'sz00001', '山西省大同市浑源县', '13693650365', '小明', '小胡', '2019-01-24 16:14:41', '8888.22', '88888.00', '骁龙', '2019-01-24 16:15:19', '2019-01-24 16:15:22', '0');
INSERT INTO `tb_order` VALUES ('2', 'sz00002', '山西省大同市浑动县', '13693650365', '小明', '小胡', '2019-01-24 18:14:41', '8888.00', '88888.00', '骁龙', null, '2019-02-25 07:46:20', null);
INSERT INTO `tb_order` VALUES ('3', 'sz00003', '山西省大同市浑源县', '13693650365', '小明', '小胡', '2019-01-24 13:14:41', '8888.00', '88888.00', '骁龙', '2019-01-24 13:15:19', '2019-01-24 13:15:22', '0');
INSERT INTO `tb_order` VALUES ('4', 'ds4545454', '12打算打算打多', '12323232', '打算打算打', '12发生的人文', '2019-02-03 16:00:00', '232323.00', '22.00', '大', '2019-02-22 06:10:20', '2019-02-22 06:10:20', '0');
INSERT INTO `tb_order` VALUES ('6', '大叔大婶', '是调单', '11', '12312', '大叔大婶', '2019-02-18 16:00:00', '1232.00', '434.00', '23232', '2019-02-22 07:16:56', '2019-02-22 07:16:56', '0');
INSERT INTO `tb_order` VALUES ('7', '额度色无', '大萨二多无', '3434', '三点多四点', 'sad', '2019-02-10 16:00:00', '22.00', '11.00', '是的是的s', '2019-02-22 07:17:12', '2019-02-22 07:17:12', '0');
INSERT INTO `tb_order` VALUES ('8', '123123大萨达', '是多少d', '545', '大萨达', '奥斯丁a', '2019-02-03 16:00:00', '221.00', '44.00', '奥斯丁as', '2019-02-22 07:17:27', '2019-02-22 07:17:27', '0');
INSERT INTO `tb_order` VALUES ('9', '大萨达', '大萨达', '65656', '奥斯丁', '大萨达', '2019-02-03 16:00:00', '213.00', '3213.00', '123', '2019-02-22 07:17:40', '2019-02-22 07:17:40', '0');
INSERT INTO `tb_order` VALUES ('10', '大叔大婶d', '奥斯丁', '5656', '奥斯丁', '奥斯丁', '2019-02-03 16:00:00', '232323.00', '2332.00', '21打算', '2019-02-22 07:17:54', '2019-02-22 07:17:54', '0');
INSERT INTO `tb_order` VALUES ('11', '的撒的撒d', '大萨达', '5656', '奥斯丁a', '按时d', '2019-02-10 16:00:00', '123.00', '234.00', '1打算d', '2019-02-22 07:18:07', '2019-02-22 07:18:07', '0');
INSERT INTO `tb_order` VALUES ('12', '湿哒哒s', '奥斯丁', '565', '按时da', '去2313', '2019-02-24 16:00:00', '333.00', '33.00', '奥斯丁a', '2019-02-22 07:18:21', '2019-02-22 07:18:21', '0');
INSERT INTO `tb_order` VALUES ('13', '123123', '大时代', '45656', '大萨达', '1231大萨所多', '2019-02-24 16:00:00', '123.00', '123.00', '大萨达啊', '2019-02-25 05:30:47', '2019-02-25 05:30:47', '0');

-- ----------------------------
-- Table structure for tb_pur_stock
-- ----------------------------
DROP TABLE IF EXISTS `tb_pur_stock`;
CREATE TABLE `tb_pur_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_time` datetime DEFAULT NULL,
  `purchas_time` datetime DEFAULT NULL,
  `shipp_time` datetime DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL,
  `arrival_time` datetime DEFAULT NULL,
  `shipper` varchar(255) DEFAULT NULL,
  `incom_manu` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `contacts` varchar(255) DEFAULT NULL,
  `logis_number` varchar(255) DEFAULT NULL,
  `name_speci` varchar(255) DEFAULT NULL,
  `pur_quantity` int(11) DEFAULT NULL,
  `unit_price` decimal(28,2) DEFAULT NULL,
  `total` decimal(28,2) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `yn` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_pur_stock
-- ----------------------------
INSERT INTO `tb_pur_stock` VALUES ('2', '2019-02-28 10:38:37', '2019-02-24 16:00:00', '2019-02-24 16:00:00', '2019-02-24 16:00:00', '2019-02-24 16:00:00', '大时代', '奥斯丁', '123', '大时代', '123', '大萨达', '123', '2323.22', '1212.44', '打算打算打', '2019-02-25 07:10:43', '0');
INSERT INTO `tb_pur_stock` VALUES ('3', '2019-02-28 10:38:40', '2019-02-24 16:00:00', '2019-02-24 16:00:00', '2019-02-24 16:00:00', '2019-02-24 16:00:00', '撒大声地', '奥斯丁啊', '123123', '撒大声地', '12312', '打算打算打', '123', '434.33', '1231.55', '打算打算打', '2019-02-25 07:27:23', '0');

-- ----------------------------
-- Table structure for tb_resource
-- ----------------------------
DROP TABLE IF EXISTS `tb_resource`;
CREATE TABLE `tb_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `is_hide` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `source_key` varchar(255) DEFAULT NULL,
  `source_url` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf5ra2gn0xedeida2op8097sr5` (`parent_id`),
  CONSTRAINT `FKf5ra2gn0xedeida2op8097sr5` FOREIGN KEY (`parent_id`) REFERENCES `tb_resource` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_resource
-- ----------------------------
INSERT INTO `tb_resource` VALUES ('1', '2017-01-10 13:56:51', '用户管理', null, '0', '2', '用户管理', '1', 'system:user:index', '/admin/user/index', '1', '2017-01-10 13:59:01', null);
INSERT INTO `tb_resource` VALUES ('2', '2017-01-10 13:56:51', '用户编辑', null, '0', '3', '用户编辑', '1', 'system:user:edit', '/admin/user/edit*', '2', '2017-01-10 16:26:42', '1');
INSERT INTO `tb_resource` VALUES ('3', '2017-01-11 16:48:48', '用户添加', null, '0', '3', '用户添加', '2', 'system:user:add', '/admin/user/add', '2', '2017-01-11 16:49:26', '1');
INSERT INTO `tb_resource` VALUES ('4', '2017-01-11 16:48:48', '用户删除', null, '0', '3', '用户删除', '3', 'system:user:deleteBatch', '/admin/user/deleteBatch', '2', '2017-01-18 14:11:41', '1');
INSERT INTO `tb_resource` VALUES ('5', '2017-01-11 16:48:48', '角色分配', null, '0', '3', '角色分配', '4', 'system:user:grant', '/admin/user/grant/**', '2', '2017-01-18 14:11:51', '1');
INSERT INTO `tb_resource` VALUES ('6', '2017-01-12 16:45:10', '角色管理', null, '0', '2', '角色管理', '2', 'system:role:index', '/admin/role/index', '1', '2017-01-12 16:46:52', null);
INSERT INTO `tb_resource` VALUES ('7', '2017-01-12 16:47:02', '角色编辑', null, '0', '3', '角色编辑', '1', 'system:role:edit', '/admin/role/edit*', '2', '2017-01-18 10:24:06', '1');
INSERT INTO `tb_resource` VALUES ('8', '2017-01-12 16:47:23', '角色添加', null, '0', '3', '角色添加', '2', 'system:role:add', '/admin/role/add', '2', '2017-01-12 16:49:16', '6');
INSERT INTO `tb_resource` VALUES ('9', '2017-01-12 16:47:23', '角色删除', null, '0', '3', '角色删除', '3', 'system:role:deleteBatch', '/admin/role/deleteBatch', '2', '2017-01-18 14:12:03', '6');
INSERT INTO `tb_resource` VALUES ('10', '2017-01-12 16:47:23', '资源分配', null, '0', '3', '资源分配', '4', 'system:role:grant', '/admin/role/grant/**', '2', '2017-01-18 14:12:11', '6');
INSERT INTO `tb_resource` VALUES ('11', '2017-01-17 11:21:12', '资源管理', null, '0', '2', '资源管理', '3', 'system:resource:index', '/admin/resource/index', '1', '2017-01-17 11:21:42', null);
INSERT INTO `tb_resource` VALUES ('12', '2017-01-17 11:21:52', '资源编辑', null, '0', '3', '资源编辑', '1', 'system:resource:edit', '/admin/resource/edit*', '2', '2017-01-17 11:22:36', '11');
INSERT INTO `tb_resource` VALUES ('13', '2017-01-17 11:21:54', '资源添加', null, '0', '3', '资源添加', '2', 'system:resource:add', '/admin/resource/add', '2', '2017-01-17 11:22:39', '11');
INSERT INTO `tb_resource` VALUES ('14', '2017-01-17 11:21:54', '资源删除', null, '0', '3', '资源删除', '3', 'system:resource:deleteBatch', '/admin/resource/deleteBatch', '2', '2017-01-18 14:12:31', '11');
INSERT INTO `tb_resource` VALUES ('15', '2019-01-24 06:35:03', '开单管理', null, '0', '2', '开单管理', '4', 'system:order:index', '/admin/order/index', '1', '2019-01-24 07:51:42', null);
INSERT INTO `tb_resource` VALUES ('16', '2019-01-24 06:37:03', '开单编辑', null, '0', '3', '开单编辑', '1', 'system:order:edit', '/admin/order/edit', '2', '2019-01-24 08:51:42', '15');
INSERT INTO `tb_resource` VALUES ('17', '2019-01-24 07:35:03', '开单添加', null, '0', '3', '开单添加', '2', 'system:order:add', '/admin/order/add', '2', '2019-01-24 09:51:42', '15');
INSERT INTO `tb_resource` VALUES ('18', '2019-01-24 10:35:03', '开单删除', null, '0', '3', '开单删除', '3', 'system:order:deleteBatch', '/admin/order/deleteBatch', '2', '2019-01-24 10:51:42', '15');
INSERT INTO `tb_resource` VALUES ('19', '2019-02-13 10:47:47', '存货管理', null, '0', '2', '存货管理', '4', 'system:stock:index', '/admin/stock/index', '1', '2019-02-25 10:49:26', null);
INSERT INTO `tb_resource` VALUES ('20', '2019-02-25 10:49:58', '存货编辑', null, '0', '3', '存货编辑', '1', 'system:stock:edit', '/admin/stock/edit', '2', '2019-02-25 10:51:13', '19');
INSERT INTO `tb_resource` VALUES ('21', '2019-02-25 10:51:24', '存货添加', null, '0', '3', '存货添加', '2', 'system:stock:add', '/admin/stock/add', '2', '2019-02-25 10:52:34', '19');
INSERT INTO `tb_resource` VALUES ('22', '2019-02-25 10:52:44', '存货删除', null, '0', '3', '存货删除', '3', 'system:stock:deleteBatch', '/admin/stock/deleteBatch', '2', '2019-02-25 10:53:40', '19');
INSERT INTO `tb_resource` VALUES ('23', '2019-02-25 14:45:46', '进货管理', null, '0', '2', '进货管理', '4', 'system:purStock:index', '/admin/purStock/index', '1', '2019-02-25 14:46:45', null);
INSERT INTO `tb_resource` VALUES ('24', '2019-02-25 14:48:44', '进货编辑', null, '0', '3', '进货编辑', '1', 'system:purStock:edit', '/admin/purStock/edit', '2', '2019-02-25 14:50:06', '23');
INSERT INTO `tb_resource` VALUES ('25', '2019-02-25 14:47:39', '进货添加', null, '0', '3', '进货添加', '2', 'system:purStock:add', '/admin/purStock/add', '2', '2019-02-25 14:48:27', '23');
INSERT INTO `tb_resource` VALUES ('26', '2019-02-25 14:50:44', '进货删除', null, '0', '3', '进货删除', '3', 'system:purStock:deleteBatch', '/admin/purStock/deleteBatch', '2', '2019-02-25 14:51:35', '23');

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role_key` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', '2017-01-09 17:25:30', '超级管理员', 'administrator', 'administrator', '0', '2017-01-09 17:26:25');
INSERT INTO `tb_role` VALUES ('2', '2019-02-25 08:16:04', '1', 'manager', 'manager', '0', '2019-02-25 08:16:04');

-- ----------------------------
-- Table structure for tb_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_resource`;
CREATE TABLE `tb_role_resource` (
  `role_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`resource_id`),
  KEY `FK868kc8iic48ilv5npa80ut6qo` (`resource_id`),
  CONSTRAINT `FK7ffc7h6obqxflhj1aq1mk20jk` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`),
  CONSTRAINT `FK868kc8iic48ilv5npa80ut6qo` FOREIGN KEY (`resource_id`) REFERENCES `tb_resource` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role_resource
-- ----------------------------
INSERT INTO `tb_role_resource` VALUES ('1', '1');
INSERT INTO `tb_role_resource` VALUES ('1', '2');
INSERT INTO `tb_role_resource` VALUES ('1', '3');
INSERT INTO `tb_role_resource` VALUES ('1', '4');
INSERT INTO `tb_role_resource` VALUES ('1', '5');
INSERT INTO `tb_role_resource` VALUES ('1', '6');
INSERT INTO `tb_role_resource` VALUES ('1', '7');
INSERT INTO `tb_role_resource` VALUES ('1', '8');
INSERT INTO `tb_role_resource` VALUES ('1', '9');
INSERT INTO `tb_role_resource` VALUES ('1', '10');
INSERT INTO `tb_role_resource` VALUES ('1', '11');
INSERT INTO `tb_role_resource` VALUES ('1', '12');
INSERT INTO `tb_role_resource` VALUES ('1', '13');
INSERT INTO `tb_role_resource` VALUES ('1', '14');
INSERT INTO `tb_role_resource` VALUES ('1', '15');
INSERT INTO `tb_role_resource` VALUES ('2', '15');
INSERT INTO `tb_role_resource` VALUES ('1', '16');
INSERT INTO `tb_role_resource` VALUES ('2', '16');
INSERT INTO `tb_role_resource` VALUES ('1', '17');
INSERT INTO `tb_role_resource` VALUES ('2', '17');
INSERT INTO `tb_role_resource` VALUES ('1', '18');
INSERT INTO `tb_role_resource` VALUES ('2', '18');
INSERT INTO `tb_role_resource` VALUES ('1', '19');
INSERT INTO `tb_role_resource` VALUES ('2', '19');
INSERT INTO `tb_role_resource` VALUES ('1', '20');
INSERT INTO `tb_role_resource` VALUES ('2', '20');
INSERT INTO `tb_role_resource` VALUES ('1', '21');
INSERT INTO `tb_role_resource` VALUES ('2', '21');
INSERT INTO `tb_role_resource` VALUES ('1', '22');
INSERT INTO `tb_role_resource` VALUES ('2', '22');
INSERT INTO `tb_role_resource` VALUES ('1', '23');
INSERT INTO `tb_role_resource` VALUES ('2', '23');
INSERT INTO `tb_role_resource` VALUES ('1', '24');
INSERT INTO `tb_role_resource` VALUES ('2', '24');
INSERT INTO `tb_role_resource` VALUES ('1', '25');
INSERT INTO `tb_role_resource` VALUES ('2', '25');
INSERT INTO `tb_role_resource` VALUES ('1', '26');
INSERT INTO `tb_role_resource` VALUES ('2', '26');

-- ----------------------------
-- Table structure for tb_stock
-- ----------------------------
DROP TABLE IF EXISTS `tb_stock`;
CREATE TABLE `tb_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arriva_time` datetime DEFAULT NULL,
  `incom_manu` varchar(255) DEFAULT NULL,
  `name_speci` varchar(255) DEFAULT NULL,
  `batch_number` varchar(255) DEFAULT NULL,
  `total_quantity` int(11) DEFAULT NULL,
  `inventory_quantity` int(11) DEFAULT NULL,
  `shipp_quantity` int(11) DEFAULT NULL,
  `shipp_address` varchar(255) DEFAULT NULL,
  `shipper` varchar(255) DEFAULT NULL,
  `shipp_time` datetime DEFAULT NULL,
  `return_quantity` int(11) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `yn` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_stock
-- ----------------------------
INSERT INTO `tb_stock` VALUES ('1', '2019-02-25 11:20:24', 'dsdsd', 'dfgfdfd', '233232', '1222', '42343', '1123', 'dsdsdsd', '23dsd', '2019-02-25 11:20:57', '232', 'fdffdfd', '2019-02-25 11:21:08', '0');
INSERT INTO `tb_stock` VALUES ('2', '2019-02-24 16:00:00', 'sdsddasdsfs阿发大声道fsdf发送到时', '12312dasd', '1232312', '12312', '23', '123', 'dasdasd', '1dadas', '2019-02-24 16:00:00', '123', 'dasd', '2019-02-25 07:18:38', null);

-- ----------------------------
-- Table structure for tb_stock_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_stock_detail`;
CREATE TABLE `tb_stock_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) DEFAULT NULL,
  `shipp_quantity` varchar(255) DEFAULT NULL,
  `shipp_address` varchar(255) DEFAULT NULL,
  `shipper` varchar(255) DEFAULT NULL,
  `shipp_time` datetime DEFAULT NULL,
  `return_quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_stock_detail
-- ----------------------------
INSERT INTO `tb_stock_detail` VALUES ('1', '1', 'dsdsd', 'fdfdf', 'asdas', '2019-03-18 21:33:19', '222');
INSERT INTO `tb_stock_detail` VALUES ('2', '1', 'dsds', 'dfdffdfd', 'fggfgfg', '2019-03-18 21:33:39', '111');
INSERT INTO `tb_stock_detail` VALUES ('3', '2', 'ggggg', 'ddd', 'sssss', '2019-03-18 21:33:53', '232');
INSERT INTO `tb_stock_detail` VALUES ('4', '1', '123', '大大', '发的发的', '2019-03-17 16:00:00', '12');
INSERT INTO `tb_stock_detail` VALUES ('5', '2', '123', '大萨达所', '123大萨达所', '2019-03-17 16:00:00', '123');
INSERT INTO `tb_stock_detail` VALUES ('6', '1', '123', '大声道', '大萨达所', '2019-03-17 16:00:00', '123');
INSERT INTO `tb_stock_detail` VALUES ('7', '2', '123', '大萨达', '大萨达', '2019-03-17 16:00:00', '12');
INSERT INTO `tb_stock_detail` VALUES ('8', '1', '123', '大萨达撒', '奥术大师多', '2019-03-17 16:00:00', '12');
INSERT INTO `tb_stock_detail` VALUES ('9', '2', '12', '大萨达', '大大', '2019-03-17 16:00:00', '1');
INSERT INTO `tb_stock_detail` VALUES ('10', '2', '12', '大萨达', '阿萨德', '2019-03-17 16:00:00', '12');
INSERT INTO `tb_stock_detail` VALUES ('11', '1', '12', '大萨达撒', '是多少', '2019-03-17 16:00:00', '12');
INSERT INTO `tb_stock_detail` VALUES ('12', '1', '123', '大萨达', '大萨达', '2019-03-17 16:00:00', '1');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `delete_status` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `locked` int(11) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '北京', '2017-01-09 17:26:39', '2017-01-09 17:26:41', '0', '超级管理员', '171405215@qq.com.com', '0', 'admin', '3931MUEQD1939MQMLM4AISPVNE', '1', '13693650365', '2019-01-24 07:43:08', 'admin');
INSERT INTO `tb_user` VALUES ('5', '山西省大同市浑源县', '2019-02-24 16:00:00', '2019-02-25 08:15:10', '0', '1', '1111111111@qq.com', '0', '尚智集成', '3931MUEQD1939MQMLM4AISPVNE', '1', '13888888888', '2019-02-25 08:15:10', 'szjc001');

-- ----------------------------
-- Table structure for tb_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_role`;
CREATE TABLE `tb_user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKea2ootw6b6bb0xt3ptl28bymv` (`role_id`),
  CONSTRAINT `FK7vn3h53d0tqdimm8cp45gc0kl` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `FKea2ootw6b6bb0xt3ptl28bymv` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user_role
-- ----------------------------
INSERT INTO `tb_user_role` VALUES ('1', '1');
INSERT INTO `tb_user_role` VALUES ('5', '2');
