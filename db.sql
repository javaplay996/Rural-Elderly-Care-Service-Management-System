/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xylfwglxt
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xylfwglxt` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xylfwglxt`;

/*Table structure for table `baojian` */

DROP TABLE IF EXISTS `baojian`;

CREATE TABLE `baojian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yiliao_id` int(11) DEFAULT NULL COMMENT '医疗人员',
  `laoren_id` int(11) DEFAULT NULL COMMENT '老人',
  `baojian_name` varchar(200) DEFAULT NULL COMMENT '医疗保健名称  Search111 ',
  `baojian_uuid_number` varchar(200) DEFAULT NULL COMMENT '医疗保健编号',
  `baojian_photo` varchar(200) DEFAULT NULL COMMENT '医疗保健照片',
  `baojian_address` varchar(200) DEFAULT NULL COMMENT '医疗保健地点',
  `baojian_types` int(11) DEFAULT NULL COMMENT '医疗保健类型 Search111',
  `baojian_content` longtext COMMENT '注意事项 ',
  `baojian_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='医疗保健';

/*Data for the table `baojian` */

insert  into `baojian`(`id`,`yiliao_id`,`laoren_id`,`baojian_name`,`baojian_uuid_number`,`baojian_photo`,`baojian_address`,`baojian_types`,`baojian_content`,`baojian_delete`,`insert_time`,`create_time`) values (1,2,1,'医疗保健名称1','1679730008327','upload/baojian1.jpg','医疗保健地点1',2,'注意事项1',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(2,2,2,'医疗保健名称2','1679730008284','upload/baojian2.jpg','医疗保健地点2',2,'注意事项2',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(3,2,2,'医疗保健名称3','1679730008312','upload/baojian3.jpg','医疗保健地点3',1,'注意事项3',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(4,1,2,'医疗保健名称4','1679730008303','upload/baojian4.jpg','医疗保健地点4',3,'注意事项4',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(5,1,2,'医疗保健名称5','1679730008304','upload/baojian5.jpg','医疗保健地点5',4,'注意事项5',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(6,1,2,'医疗保健名称6','1679730008315','upload/baojian6.jpg','医疗保健地点6',4,'注意事项6',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(7,1,2,'医疗保健名称7','1679730008270','upload/baojian7.jpg','医疗保健地点7',2,'注意事项7',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(8,2,3,'医疗保健名称8','1679730008329','upload/baojian8.jpg','医疗保健地点8',1,'注意事项8',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(9,2,1,'医疗保健名称9','1679730008321','upload/baojian9.jpg','医疗保健地点9',1,'注意事项9',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(10,3,3,'医疗保健名称10','1679730008339','upload/baojian10.jpg','医疗保健地点10',3,'注意事项10',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(11,2,2,'医疗保健名称11','1679730008314','upload/baojian11.jpg','医疗保健地点11',1,'注意事项11',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(12,3,3,'医疗保健名称12','1679730008346','upload/baojian12.jpg','医疗保健地点12',1,'注意事项12',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(13,3,3,'医疗保健名称13','1679730008291','upload/baojian13.jpg','医疗保健地点13',3,'注意事项13',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(14,1,3,'医疗保健名称14','1679730008293','upload/baojian14.jpg','医疗保健地点14',4,'注意事项14',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(15,1,1,'11','1679731089118','/upload/1679731100878.jpg','12312',4,'<p>032</p>',1,'2023-03-25 15:58:23','2023-03-25 15:58:23');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-25 15:39:36'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-25 15:39:36'),(3,'baojian_types','医疗保健类型',1,'医疗保健类型1',NULL,NULL,'2023-03-25 15:39:36'),(4,'baojian_types','医疗保健类型',2,'医疗保健类型2',NULL,NULL,'2023-03-25 15:39:36'),(5,'baojian_types','医疗保健类型',3,'医疗保健类型3',NULL,NULL,'2023-03-25 15:39:36'),(6,'baojian_types','医疗保健类型',4,'医疗保健类型4',NULL,NULL,'2023-03-25 15:39:36'),(7,'jiankang_types','身体情况',1,'身体情况1',NULL,NULL,'2023-03-25 15:39:36'),(8,'jiankang_types','身体情况',2,'身体情况2',NULL,NULL,'2023-03-25 15:39:36'),(9,'jiankang_types','身体情况',3,'身体情况3',NULL,NULL,'2023-03-25 15:39:36'),(10,'jiankang_types','身体情况',4,'身体情况4',NULL,NULL,'2023-03-25 15:39:36'),(11,'shenghuo_types','生活照料类型',1,'助餐',NULL,NULL,'2023-03-25 15:39:36'),(12,'shenghuo_types','生活照料类型',2,'助行',NULL,NULL,'2023-03-25 15:39:36'),(13,'shenghuo_types','生活照料类型',3,'保洁',NULL,NULL,'2023-03-25 15:39:36'),(14,'shenghuo_types','生活照料类型',4,'陪医',NULL,NULL,'2023-03-25 15:39:36'),(15,'shenghuo_types','生活照料类型',5,'代办',NULL,NULL,'2023-03-25 15:39:36'),(16,'shenghuo_order_types','订单类型',101,'已接单',NULL,NULL,'2023-03-25 15:39:36'),(17,'shenghuo_order_types','订单类型',102,'已取消接单',NULL,NULL,'2023-03-25 15:39:36'),(18,'shenghuo_order_types','订单类型',103,'已上门',NULL,NULL,'2023-03-25 15:39:36'),(19,'huodong_types','文娱活动类型',1,'文娱活动类型1',NULL,NULL,'2023-03-25 15:39:36'),(20,'huodong_types','文娱活动类型',2,'文娱活动类型2',NULL,NULL,'2023-03-25 15:39:36'),(21,'huodong_types','文娱活动类型',3,'文娱活动类型3',NULL,NULL,'2023-03-25 15:39:36'),(22,'huodong_types','文娱活动类型',4,'文娱活动类型4',NULL,NULL,'2023-03-25 15:39:36'),(23,'huodong_yuyue_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-03-25 15:39:36'),(24,'huodong_yuyue_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-03-25 15:39:36'),(25,'huodong_yuyue_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-03-25 15:39:36'),(26,'tudi_types','土地类型',1,'土地类型1',NULL,NULL,'2023-03-25 15:39:36'),(27,'tudi_types','土地类型',2,'土地类型2',NULL,NULL,'2023-03-25 15:39:36'),(28,'tudi_types','土地类型',3,'土地类型3',NULL,NULL,'2023-03-25 15:39:37'),(29,'tudi_types','土地类型',4,'土地类型4',NULL,NULL,'2023-03-25 15:39:37'),(30,'tudi_order_types','订单类型',101,'已申请承包',NULL,NULL,'2023-03-25 15:39:37'),(31,'tudi_order_types','订单类型',102,'已取消申请',NULL,NULL,'2023-03-25 15:39:37'),(32,'tudi_order_types','订单类型',103,'已同意承包',NULL,NULL,'2023-03-25 15:39:37');

/*Table structure for table `huodong` */

DROP TABLE IF EXISTS `huodong`;

CREATE TABLE `huodong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huodong_name` varchar(200) DEFAULT NULL COMMENT '文娱活动名称  Search111 ',
  `huodong_uuid_number` varchar(200) DEFAULT NULL COMMENT '文娱活动编号',
  `huodong_photo` varchar(200) DEFAULT NULL COMMENT '文娱活动照片',
  `huodong_address` varchar(200) DEFAULT NULL COMMENT '文娱活动地点',
  `huodong_types` int(11) DEFAULT NULL COMMENT '文娱活动类型 Search111',
  `huodong_content` longtext COMMENT '文娱活动结束 ',
  `huodong_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='文娱活动';

/*Data for the table `huodong` */

insert  into `huodong`(`id`,`huodong_name`,`huodong_uuid_number`,`huodong_photo`,`huodong_address`,`huodong_types`,`huodong_content`,`huodong_delete`,`insert_time`,`create_time`) values (1,'文娱活动名称1','1679730008333','upload/huodong1.jpg','文娱活动地点1',1,'文娱活动结束1',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(2,'文娱活动名称2','1679730008354','upload/huodong2.jpg','文娱活动地点2',2,'文娱活动结束2',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(3,'文娱活动名称3','1679730008277','upload/huodong3.jpg','文娱活动地点3',4,'文娱活动结束3',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(4,'文娱活动名称4','1679730008335','upload/huodong4.jpg','文娱活动地点4',4,'文娱活动结束4',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(5,'文娱活动名称5','1679730008319','upload/huodong5.jpg','文娱活动地点5',2,'文娱活动结束5',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(6,'文娱活动名称6','1679730008288','upload/huodong6.jpg','文娱活动地点6',4,'文娱活动结束6',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(7,'文娱活动名称7','1679730008276','upload/huodong7.jpg','文娱活动地点7',2,'文娱活动结束7',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(8,'文娱活动名称8','1679730008325','upload/huodong8.jpg','文娱活动地点8',4,'文娱活动结束8',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(9,'文娱活动名称9','1679730008356','upload/huodong9.jpg','文娱活动地点9',3,'文娱活动结束9',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(10,'文娱活动名称10','1679730008316','upload/huodong10.jpg','文娱活动地点10',2,'文娱活动结束10',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(11,'文娱活动名称11','1679730008327','upload/huodong11.jpg','文娱活动地点11',4,'文娱活动结束11',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(12,'文娱活动名称12','1679730008324','upload/huodong12.jpg','文娱活动地点12',4,'文娱活动结束12',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(13,'文娱活动名称13','1679730008337','upload/huodong13.jpg','文娱活动地点13',2,'文娱活动结束13',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(14,'文娱活动名称14','1679730008324','upload/huodong14.jpg','文娱活动地点14',4,'文娱活动结束14',1,'2023-03-25 15:40:08','2023-03-25 15:40:08');

/*Table structure for table `huodong_yuyue` */

DROP TABLE IF EXISTS `huodong_yuyue`;

CREATE TABLE `huodong_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodong_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `huodong_id` int(11) DEFAULT NULL COMMENT '活动',
  `laoren_id` int(11) DEFAULT NULL COMMENT '老人',
  `huodong_yuyue_text` longtext COMMENT '报名理由',
  `huodong_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `huodong_yuyue_yesno_text` longtext COMMENT '审核回复',
  `huodong_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '活动报名时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='活动报名';

/*Data for the table `huodong_yuyue` */

insert  into `huodong_yuyue`(`id`,`huodong_yuyue_uuid_number`,`huodong_id`,`laoren_id`,`huodong_yuyue_text`,`huodong_yuyue_yesno_types`,`huodong_yuyue_yesno_text`,`huodong_yuyue_shenhe_time`,`insert_time`,`create_time`) values (1,'1679730008324',1,2,'报名理由1',1,NULL,NULL,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(2,'1679730008294',2,2,'报名理由2',1,NULL,NULL,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(3,'1679730008304',3,1,'报名理由3',1,NULL,NULL,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(4,'1679730008348',4,3,'报名理由4',1,NULL,NULL,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(5,'1679730008297',5,1,'报名理由5',1,NULL,NULL,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(6,'1679730008378',6,1,'报名理由6',1,NULL,NULL,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(7,'1679730008365',7,1,'报名理由7',1,NULL,NULL,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(8,'1679730008369',8,2,'报名理由8',1,NULL,NULL,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(9,'1679730008310',9,2,'报名理由9',1,NULL,NULL,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(10,'1679730008284',10,3,'报名理由10',1,NULL,NULL,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(11,'1679730008313',11,2,'报名理由11',1,NULL,NULL,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(12,'1679730008325',12,2,'报名理由12',1,NULL,NULL,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(13,'1679730008321',13,1,'报名理由13',1,NULL,NULL,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(14,'1679730008354',14,1,'报名理由14',1,NULL,NULL,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(15,'1679730833214',1,1,'我想参加',2,'256','2023-03-25 15:54:38','2023-03-25 15:54:02','2023-03-25 15:54:02'),(16,'1679731289166',8,1,'jjkl',1,'',NULL,'2023-03-25 16:01:35','2023-03-25 16:01:35');

/*Table structure for table `jiankang` */

DROP TABLE IF EXISTS `jiankang`;

CREATE TABLE `jiankang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yiliao_id` int(11) DEFAULT NULL COMMENT '医疗人员',
  `laoren_id` int(11) DEFAULT NULL COMMENT '老人',
  `jiankang_name` varchar(200) DEFAULT NULL COMMENT '健康档案名称  Search111 ',
  `jiankang_uuid_number` varchar(200) DEFAULT NULL COMMENT '健康档案编号',
  `jiankang_photo` varchar(200) DEFAULT NULL COMMENT '健康档案照片',
  `jiankang_address` varchar(200) DEFAULT NULL COMMENT '健康档案地点',
  `jiankang_types` int(11) DEFAULT NULL COMMENT '身体情况 Search111',
  `jiankang_content` longtext COMMENT '注意事项 ',
  `jiankang_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='健康档案';

/*Data for the table `jiankang` */

insert  into `jiankang`(`id`,`yiliao_id`,`laoren_id`,`jiankang_name`,`jiankang_uuid_number`,`jiankang_photo`,`jiankang_address`,`jiankang_types`,`jiankang_content`,`jiankang_delete`,`insert_time`,`create_time`) values (1,2,3,'健康档案名称1','1679730008331','upload/jiankang1.jpg','健康档案地点1',1,'注意事项1',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(2,3,2,'健康档案名称2','1679730008288','upload/jiankang2.jpg','健康档案地点2',2,'注意事项2',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(3,2,3,'健康档案名称3','1679730008351','upload/jiankang3.jpg','健康档案地点3',4,'注意事项3',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(4,2,1,'健康档案名称4','1679730008339','upload/jiankang4.jpg','健康档案地点4',2,'注意事项4',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(5,2,3,'健康档案名称5','1679730008320','upload/jiankang5.jpg','健康档案地点5',2,'注意事项5',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(6,1,3,'健康档案名称6','1679730008308','upload/jiankang6.jpg','健康档案地点6',3,'注意事项6',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(7,3,2,'健康档案名称7','1679730008360','upload/jiankang7.jpg','健康档案地点7',4,'注意事项7',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(8,2,1,'健康档案名称8','1679730008303','upload/jiankang8.jpg','健康档案地点8',3,'注意事项8',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(9,3,2,'健康档案名称9','1679730008369','upload/jiankang9.jpg','健康档案地点9',4,'注意事项9',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(10,2,1,'健康档案名称10','1679730008311','upload/jiankang10.jpg','健康档案地点10',2,'注意事项10',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(11,1,3,'健康档案名称11','1679730008357','upload/jiankang11.jpg','健康档案地点11',1,'注意事项11',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(12,2,3,'健康档案名称12','1679730008330','upload/jiankang12.jpg','健康档案地点12',1,'注意事项12',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(13,3,1,'健康档案名称13','1679730008377','upload/jiankang13.jpg','健康档案地点13',2,'注意事项13',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(14,1,1,'健康档案名称14','1679730008321','upload/jiankang14.jpg','健康档案地点14',2,'注意事项14',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(15,1,1,'1111','1679731107150','/upload/1679731116393.jpg','111',1,'<p>103123</p>',1,'2023-03-25 15:58:38','2023-03-25 15:58:38');

/*Table structure for table `laoren` */

DROP TABLE IF EXISTS `laoren`;

CREATE TABLE `laoren` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `laoren_name` varchar(200) DEFAULT NULL COMMENT '老人名称 Search111 ',
  `laoren_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `laoren_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额',
  `laoren_content` longtext COMMENT '老人介绍 ',
  `laoren_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='老人';

/*Data for the table `laoren` */

insert  into `laoren`(`id`,`username`,`password`,`laoren_name`,`laoren_phone`,`laoren_email`,`sex_types`,`new_money`,`laoren_content`,`laoren_delete`,`create_time`) values (1,'a1','123456','老人名称1','17703786901','1@qq.com',2,'437.26','老人介绍1',1,'2023-03-25 15:40:08'),(2,'a2','123456','老人名称2','17703786902','2@qq.com',2,'548.85','老人介绍2',1,'2023-03-25 15:40:08'),(3,'a3','123456','老人名称3','17703786903','3@qq.com',1,'850.15','老人介绍3',1,'2023-03-25 15:40:08');

/*Table structure for table `shenghuo` */

DROP TABLE IF EXISTS `shenghuo`;

CREATE TABLE `shenghuo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laoren_id` int(11) DEFAULT NULL COMMENT '老人',
  `shenghuo_name` varchar(200) DEFAULT NULL COMMENT '生活照料名称  Search111 ',
  `shenghuo_uuid_number` varchar(200) DEFAULT NULL COMMENT '生活照料编号',
  `shenghuo_photo` varchar(200) DEFAULT NULL COMMENT '生活照料照片',
  `shenghuo_address` varchar(200) DEFAULT NULL COMMENT '生活照料地点',
  `shenghuo_types` int(11) DEFAULT NULL COMMENT '生活照料类型 Search111',
  `shenghuo_content` longtext COMMENT '生活照料介绍 ',
  `shenghuo_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='生活照料';

/*Data for the table `shenghuo` */

insert  into `shenghuo`(`id`,`laoren_id`,`shenghuo_name`,`shenghuo_uuid_number`,`shenghuo_photo`,`shenghuo_address`,`shenghuo_types`,`shenghuo_content`,`shenghuo_delete`,`insert_time`,`create_time`) values (1,3,'生活照料名称1','1679730008371','upload/shenghuo1.jpg','生活照料地点1',4,'生活照料介绍1',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(2,1,'生活照料名称2','1679730008324','upload/shenghuo2.jpg','生活照料地点2',1,'生活照料介绍2',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(3,2,'生活照料名称3','1679730008372','upload/shenghuo3.jpg','生活照料地点3',4,'生活照料介绍3',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(4,1,'生活照料名称4','1679730008383','upload/shenghuo4.jpg','生活照料地点4',3,'生活照料介绍4',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(5,1,'生活照料名称5','1679730008371','upload/shenghuo5.jpg','生活照料地点5',5,'生活照料介绍5',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(6,1,'生活照料名称6','1679730008321','upload/shenghuo6.jpg','生活照料地点6',2,'生活照料介绍6',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(7,1,'生活照料名称7','1679730008314','upload/shenghuo7.jpg','生活照料地点7',4,'生活照料介绍7',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(8,3,'生活照料名称8','1679730008339','upload/shenghuo8.jpg','生活照料地点8',2,'生活照料介绍8',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(9,3,'生活照料名称9','1679730008344','upload/shenghuo9.jpg','生活照料地点9',5,'生活照料介绍9',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(10,3,'生活照料名称10','1679730008315','upload/shenghuo10.jpg','生活照料地点10',3,'生活照料介绍10',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(11,2,'生活照料名称11','1679730008359','upload/shenghuo11.jpg','生活照料地点11',1,'生活照料介绍11',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(12,2,'生活照料名称12','1679730008318','upload/shenghuo12.jpg','生活照料地点12',1,'生活照料介绍12',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(13,3,'生活照料名称13','1679730008347','upload/shenghuo13.jpg','生活照料地点13',2,'生活照料介绍13',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(14,2,'生活照料名称14','1679730008311','upload/shenghuo14.jpg','生活照料地点14',4,'生活照料介绍14',1,'2023-03-25 15:40:08','2023-03-25 15:40:08');

/*Table structure for table `shenghuo_order` */

DROP TABLE IF EXISTS `shenghuo_order`;

CREATE TABLE `shenghuo_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shenghuo_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `shenghuo_id` int(11) DEFAULT NULL COMMENT '生活照料',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shenghuo_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='生活照料订单';

/*Data for the table `shenghuo_order` */

insert  into `shenghuo_order`(`id`,`shenghuo_order_uuid_number`,`shenghuo_id`,`yonghu_id`,`shenghuo_order_types`,`insert_time`,`create_time`) values (1,'1679730280457',14,1,102,'2023-03-25 15:44:40','2023-03-25 15:44:40'),(2,'1679730765379',7,1,103,'2023-03-25 15:52:45','2023-03-25 15:52:45'),(3,'1679731027572',13,1,101,'2023-03-25 15:57:08','2023-03-25 15:57:08'),(4,'1679731216683',7,1,103,'2023-03-25 16:00:17','2023-03-25 16:00:17');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','乡村志愿者','hxqqutyt9ewqcz5l2f4hhxercn3uzab6','2023-03-25 15:41:49','2023-03-25 16:56:29'),(2,1,'admin','users','管理员','e2a8sh1f3jihjwfmbxy33r7ghydnea4a','2023-03-25 15:45:16','2023-03-25 17:07:56'),(3,1,'a1','laoren','老人','yjqd2eil7kstw4vjmg9vqw56bh8m5jut','2023-03-25 15:52:30','2023-03-25 17:01:26'),(4,1,'a1','yiliao','医疗人员','42mkca4l7wipjzp19pi5wkw17qbk4h7x','2023-03-25 15:55:23','2023-03-25 16:57:53');

/*Table structure for table `tudi` */

DROP TABLE IF EXISTS `tudi`;

CREATE TABLE `tudi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laoren_id` int(11) DEFAULT NULL COMMENT '商家',
  `tudi_name` varchar(200) DEFAULT NULL COMMENT '土地名称  Search111 ',
  `tudi_uuid_number` varchar(200) DEFAULT NULL COMMENT '土地编号',
  `tudi_photo` varchar(200) DEFAULT NULL COMMENT '土地照片',
  `tudi_address` varchar(200) DEFAULT NULL COMMENT '土地地点',
  `tudi_types` int(11) DEFAULT NULL COMMENT '土地类型 Search111',
  `tudi_kucun_number` int(11) DEFAULT NULL COMMENT '多少亩',
  `tudi_new_money` decimal(10,2) DEFAULT NULL COMMENT '价格/年 ',
  `tudi_content` longtext COMMENT '土地介绍 ',
  `tudi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='土地';

/*Data for the table `tudi` */

insert  into `tudi`(`id`,`laoren_id`,`tudi_name`,`tudi_uuid_number`,`tudi_photo`,`tudi_address`,`tudi_types`,`tudi_kucun_number`,`tudi_new_money`,`tudi_content`,`tudi_delete`,`insert_time`,`create_time`) values (1,3,'土地名称1','1679730008307','upload/tudi1.jpg','土地地点1',3,101,'390.09','土地介绍1',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(2,3,'土地名称2','1679730008340','upload/tudi2.jpg','土地地点2',4,102,'439.29','土地介绍2',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(3,3,'土地名称3','1679730008308','upload/tudi3.jpg','土地地点3',1,103,'475.63','土地介绍3',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(4,2,'土地名称4','1679730008347','upload/tudi4.jpg','土地地点4',3,104,'194.92','土地介绍4',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(5,1,'土地名称5','1679730008361','upload/tudi5.jpg','土地地点5',1,105,'397.27','土地介绍5',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(6,3,'土地名称6','1679730008300','upload/tudi6.jpg','土地地点6',2,106,'320.31','土地介绍6',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(7,3,'土地名称7','1679730008334','upload/tudi7.jpg','土地地点7',3,107,'302.09','土地介绍7',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(8,3,'土地名称8','1679730008355','upload/tudi8.jpg','土地地点8',4,108,'381.87','土地介绍8',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(9,2,'土地名称9','1679730008355','upload/tudi9.jpg','土地地点9',3,109,'455.59','土地介绍9',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(10,3,'土地名称10','1679730008358','upload/tudi10.jpg','土地地点10',3,1010,'309.44','土地介绍10',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(11,2,'土地名称11','1679730008297','upload/tudi11.jpg','土地地点11',1,1011,'220.71','土地介绍11',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(12,2,'土地名称12','1679730008389','upload/tudi12.jpg','土地地点12',1,1012,'25.67','土地介绍12',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(13,1,'土地名称13','1679730008381','upload/tudi13.jpg','土地地点13',2,1007,'146.56','土地介绍13',1,'2023-03-25 15:40:08','2023-03-25 15:40:08'),(14,2,'土地名称14','1679730008373','upload/tudi14.jpg','土地地点14',2,1014,'58.63','土地介绍14',1,'2023-03-25 15:40:08','2023-03-25 15:40:08');

/*Table structure for table `tudi_order` */

DROP TABLE IF EXISTS `tudi_order`;

CREATE TABLE `tudi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tudi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `tudi_id` int(11) DEFAULT NULL COMMENT '土地',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '亩',
  `tudi_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='土地承包';

/*Data for the table `tudi_order` */

insert  into `tudi_order`(`id`,`tudi_order_uuid_number`,`tudi_id`,`yonghu_id`,`buy_number`,`tudi_order_types`,`insert_time`,`create_time`) values (1,'1679730297093',12,1,3,102,'2023-03-25 15:44:57','2023-03-25 15:44:57'),(2,'1679730806667',13,1,2,103,'2023-03-25 15:53:27','2023-03-25 15:53:27'),(3,'1679731056485',13,1,4,103,'2023-03-25 15:57:36','2023-03-25 15:57:36');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-25 15:39:36');

/*Table structure for table `yiliao` */

DROP TABLE IF EXISTS `yiliao`;

CREATE TABLE `yiliao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `yiliao_name` varchar(200) DEFAULT NULL COMMENT '医疗人员名称 Search111 ',
  `yiliao_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yiliao_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yiliao_content` longtext COMMENT '医疗人员介绍 ',
  `yiliao_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='医疗人员';

/*Data for the table `yiliao` */

insert  into `yiliao`(`id`,`username`,`password`,`yiliao_name`,`yiliao_phone`,`yiliao_email`,`sex_types`,`yiliao_content`,`yiliao_delete`,`create_time`) values (1,'a1','123456','医疗人员名称1','17703786901','1@qq.com',1,'医疗人员介绍1',1,'2023-03-25 15:40:08'),(2,'a2','123456','医疗人员名称2','17703786902','2@qq.com',1,'医疗人员介绍2',1,'2023-03-25 15:40:08'),(3,'a3','123456','医疗人员名称3','17703786903','3@qq.com',1,'医疗人员介绍3',1,'2023-03-25 15:40:08');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '志愿者姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '志愿者手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '志愿者身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '志愿者头像',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '志愿者邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='乡村志愿者';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`new_money`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','志愿者姓名1','17703786901','410224199010102001','upload/yonghu1.jpg','8438.51',2,'1@qq.com','2023-03-25 15:40:08'),(2,'a2','123456','志愿者姓名2','17703786902','410224199010102002','upload/yonghu2.jpg','37.63',2,'2@qq.com','2023-03-25 15:40:08'),(3,'a3','123456','志愿者姓名3','17703786903','410224199010102003','upload/yonghu3.jpg','590.50',2,'3@qq.com','2023-03-25 15:40:08');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
