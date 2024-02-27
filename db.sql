/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm2aoe9
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm2aoe9` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm2aoe9`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm2aoe9/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm2aoe9/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm2aoe9/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dingdanfahuo` */

DROP TABLE IF EXISTS `dingdanfahuo`;

CREATE TABLE `dingdanfahuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `fahuoriqi` datetime DEFAULT NULL COMMENT '发货日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='订单发货';

/*Data for the table `dingdanfahuo` */

insert  into `dingdanfahuo`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`tupian`,`shuliang`,`fahuoriqi`,`yonghuming`,`yonghuxingming`,`shoujihaoma`,`dizhi`,`maijiazhanghao`,`maijiaxingming`,`userid`) values (61,'2021-04-06 19:36:05','订单编号1','商品名称1','http://localhost:8080/ssm2aoe9/upload/dingdanfahuo_tupian1.jpg','数量1','2021-04-06 19:36:05','用户名1','用户姓名1','手机号码1','地址1','卖家账号1','卖家姓名1',1),(62,'2021-04-06 19:36:05','订单编号2','商品名称2','http://localhost:8080/ssm2aoe9/upload/dingdanfahuo_tupian2.jpg','数量2','2021-04-06 19:36:05','用户名2','用户姓名2','手机号码2','地址2','卖家账号2','卖家姓名2',2),(63,'2021-04-06 19:36:05','订单编号3','商品名称3','http://localhost:8080/ssm2aoe9/upload/dingdanfahuo_tupian3.jpg','数量3','2021-04-06 19:36:05','用户名3','用户姓名3','手机号码3','地址3','卖家账号3','卖家姓名3',3),(64,'2021-04-06 19:36:05','订单编号4','商品名称4','http://localhost:8080/ssm2aoe9/upload/dingdanfahuo_tupian4.jpg','数量4','2021-04-06 19:36:05','用户名4','用户姓名4','手机号码4','地址4','卖家账号4','卖家姓名4',4),(65,'2021-04-06 19:36:05','订单编号5','商品名称5','http://localhost:8080/ssm2aoe9/upload/dingdanfahuo_tupian5.jpg','数量5','2021-04-06 19:36:05','用户名5','用户姓名5','手机号码5','地址5','卖家账号5','卖家姓名5',5),(66,'2021-04-06 19:36:05','订单编号6','商品名称6','http://localhost:8080/ssm2aoe9/upload/dingdanfahuo_tupian6.jpg','数量6','2021-04-06 19:36:05','用户名6','用户姓名6','手机号码6','地址6','卖家账号6','卖家姓名6',6);

/*Table structure for table `dingdanxinxi` */

DROP TABLE IF EXISTS `dingdanxinxi`;

CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `goumairiqi` datetime DEFAULT NULL COMMENT '购买日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='订单信息';

/*Data for the table `dingdanxinxi` */

insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`tupian`,`jiage`,`shuliang`,`zongjine`,`goumairiqi`,`yonghuming`,`yonghuxingming`,`shoujihaoma`,`dizhi`,`maijiazhanghao`,`maijiaxingming`,`ispay`,`userid`) values (51,'2021-04-06 19:36:04','订单编号1','商品名称1','http://localhost:8080/ssm2aoe9/upload/dingdanxinxi_tupian1.jpg','价格1','数量1','总金额1','2021-04-06 19:36:04','用户名1','用户姓名1','手机号码1','地址1','卖家账号1','卖家姓名1','未支付',1),(52,'2021-04-06 19:36:04','订单编号2','商品名称2','http://localhost:8080/ssm2aoe9/upload/dingdanxinxi_tupian2.jpg','价格2','数量2','总金额2','2021-04-06 19:36:04','用户名2','用户姓名2','手机号码2','地址2','卖家账号2','卖家姓名2','未支付',2),(53,'2021-04-06 19:36:05','订单编号3','商品名称3','http://localhost:8080/ssm2aoe9/upload/dingdanxinxi_tupian3.jpg','价格3','数量3','总金额3','2021-04-06 19:36:05','用户名3','用户姓名3','手机号码3','地址3','卖家账号3','卖家姓名3','未支付',3),(54,'2021-04-06 19:36:05','订单编号4','商品名称4','http://localhost:8080/ssm2aoe9/upload/dingdanxinxi_tupian4.jpg','价格4','数量4','总金额4','2021-04-06 19:36:05','用户名4','用户姓名4','手机号码4','地址4','卖家账号4','卖家姓名4','未支付',4),(55,'2021-04-06 19:36:05','订单编号5','商品名称5','http://localhost:8080/ssm2aoe9/upload/dingdanxinxi_tupian5.jpg','价格5','数量5','总金额5','2021-04-06 19:36:05','用户名5','用户姓名5','手机号码5','地址5','卖家账号5','卖家姓名5','未支付',5),(56,'2021-04-06 19:36:05','订单编号6','商品名称6','http://localhost:8080/ssm2aoe9/upload/dingdanxinxi_tupian6.jpg','价格6','数量6','总金额6','2021-04-06 19:36:05','用户名6','用户姓名6','手机号码6','地址6','卖家账号6','卖家姓名6','未支付',6);

/*Table structure for table `discussershoushangpin` */

DROP TABLE IF EXISTS `discussershoushangpin`;

CREATE TABLE `discussershoushangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='二手商品评论表';

/*Data for the table `discussershoushangpin` */

insert  into `discussershoushangpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (71,'2021-04-06 19:36:05',1,1,'用户名1','评论内容1','回复内容1'),(72,'2021-04-06 19:36:05',2,2,'用户名2','评论内容2','回复内容2'),(73,'2021-04-06 19:36:05',3,3,'用户名3','评论内容3','回复内容3'),(74,'2021-04-06 19:36:05',4,4,'用户名4','评论内容4','回复内容4'),(75,'2021-04-06 19:36:05',5,5,'用户名5','评论内容5','回复内容5'),(76,'2021-04-06 19:36:05',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `ershoushangpin` */

DROP TABLE IF EXISTS `ershoushangpin`;

CREATE TABLE `ershoushangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chengse` varchar(200) DEFAULT NULL COMMENT '成色',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='二手商品';

/*Data for the table `ershoushangpin` */

insert  into `ershoushangpin`(`id`,`addtime`,`shangpinmingcheng`,`tupian`,`chengse`,`jiage`,`shuliang`,`shangpinxiangqing`,`faburiqi`,`maijiazhanghao`,`maijiaxingming`) values (41,'2021-04-06 19:36:04','商品名称1','http://localhost:8080/ssm2aoe9/upload/ershoushangpin_tupian1.jpg','成色1','价格1','数量1','商品详情1','2021-04-06','卖家账号1','卖家姓名1'),(42,'2021-04-06 19:36:04','商品名称2','http://localhost:8080/ssm2aoe9/upload/ershoushangpin_tupian2.jpg','成色2','价格2','数量2','商品详情2','2021-04-06','卖家账号2','卖家姓名2'),(43,'2021-04-06 19:36:04','商品名称3','http://localhost:8080/ssm2aoe9/upload/ershoushangpin_tupian3.jpg','成色3','价格3','数量3','商品详情3','2021-04-06','卖家账号3','卖家姓名3'),(44,'2021-04-06 19:36:04','商品名称4','http://localhost:8080/ssm2aoe9/upload/ershoushangpin_tupian4.jpg','成色4','价格4','数量4','商品详情4','2021-04-06','卖家账号4','卖家姓名4'),(45,'2021-04-06 19:36:04','商品名称5','http://localhost:8080/ssm2aoe9/upload/ershoushangpin_tupian5.jpg','成色5','价格5','数量5','商品详情5','2021-04-06','卖家账号5','卖家姓名5'),(46,'2021-04-06 19:36:04','商品名称6','http://localhost:8080/ssm2aoe9/upload/ershoushangpin_tupian6.jpg','成色6','价格6','数量6','商品详情6','2021-04-06','卖家账号6','卖家姓名6');

/*Table structure for table `maijia` */

DROP TABLE IF EXISTS `maijia`;

CREATE TABLE `maijia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiazhanghao` varchar(200) NOT NULL COMMENT '卖家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `maijiaxingming` varchar(200) NOT NULL COMMENT '卖家姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `maijiazhanghao` (`maijiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='卖家';

/*Data for the table `maijia` */

insert  into `maijia`(`id`,`addtime`,`maijiazhanghao`,`mima`,`maijiaxingming`,`touxiang`,`xingbie`,`nianling`,`lianxidianhua`,`youxiang`) values (31,'2021-04-06 19:36:04','卖家1','123456','卖家姓名1','http://localhost:8080/ssm2aoe9/upload/maijia_touxiang1.jpg','男','年龄1','13823888881','773890001@qq.com'),(32,'2021-04-06 19:36:04','卖家2','123456','卖家姓名2','http://localhost:8080/ssm2aoe9/upload/maijia_touxiang2.jpg','男','年龄2','13823888882','773890002@qq.com'),(33,'2021-04-06 19:36:04','卖家3','123456','卖家姓名3','http://localhost:8080/ssm2aoe9/upload/maijia_touxiang3.jpg','男','年龄3','13823888883','773890003@qq.com'),(34,'2021-04-06 19:36:04','卖家4','123456','卖家姓名4','http://localhost:8080/ssm2aoe9/upload/maijia_touxiang4.jpg','男','年龄4','13823888884','773890004@qq.com'),(35,'2021-04-06 19:36:04','卖家5','123456','卖家姓名5','http://localhost:8080/ssm2aoe9/upload/maijia_touxiang5.jpg','男','年龄5','13823888885','773890005@qq.com'),(36,'2021-04-06 19:36:04','卖家6','123456','卖家姓名6','http://localhost:8080/ssm2aoe9/upload/maijia_touxiang6.jpg','男','年龄6','13823888886','773890006@qq.com');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,31,'卖家1','maijia','卖家','ft7vbf03ldr3wn91mbv4xpsjqc803wca','2021-04-06 19:39:57','2021-04-06 20:39:57');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-06 19:36:05');

/*Table structure for table `xiaoyuangonggao` */

DROP TABLE IF EXISTS `xiaoyuangonggao`;

CREATE TABLE `xiaoyuangonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='校园公告';

/*Data for the table `xiaoyuangonggao` */

insert  into `xiaoyuangonggao`(`id`,`addtime`,`biaoti`,`tupian`,`gonggaoneirong`,`faburiqi`) values (21,'2021-04-06 19:36:04','标题1','http://localhost:8080/ssm2aoe9/upload/xiaoyuangonggao_tupian1.jpg','公告内容1','2021-04-06'),(22,'2021-04-06 19:36:04','标题2','http://localhost:8080/ssm2aoe9/upload/xiaoyuangonggao_tupian2.jpg','公告内容2','2021-04-06'),(23,'2021-04-06 19:36:04','标题3','http://localhost:8080/ssm2aoe9/upload/xiaoyuangonggao_tupian3.jpg','公告内容3','2021-04-06'),(24,'2021-04-06 19:36:04','标题4','http://localhost:8080/ssm2aoe9/upload/xiaoyuangonggao_tupian4.jpg','公告内容4','2021-04-06'),(25,'2021-04-06 19:36:04','标题5','http://localhost:8080/ssm2aoe9/upload/xiaoyuangonggao_tupian5.jpg','公告内容5','2021-04-06'),(26,'2021-04-06 19:36:04','标题6','http://localhost:8080/ssm2aoe9/upload/xiaoyuangonggao_tupian6.jpg','公告内容6','2021-04-06');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`youxiang`,`dizhi`) values (11,'2021-04-06 19:36:04','用户1','123456','用户姓名1','http://localhost:8080/ssm2aoe9/upload/yonghu_touxiang1.jpg','男','年龄1','13823888881','773890001@qq.com','地址1'),(12,'2021-04-06 19:36:04','用户2','123456','用户姓名2','http://localhost:8080/ssm2aoe9/upload/yonghu_touxiang2.jpg','男','年龄2','13823888882','773890002@qq.com','地址2'),(13,'2021-04-06 19:36:04','用户3','123456','用户姓名3','http://localhost:8080/ssm2aoe9/upload/yonghu_touxiang3.jpg','男','年龄3','13823888883','773890003@qq.com','地址3'),(14,'2021-04-06 19:36:04','用户4','123456','用户姓名4','http://localhost:8080/ssm2aoe9/upload/yonghu_touxiang4.jpg','男','年龄4','13823888884','773890004@qq.com','地址4'),(15,'2021-04-06 19:36:04','用户5','123456','用户姓名5','http://localhost:8080/ssm2aoe9/upload/yonghu_touxiang5.jpg','男','年龄5','13823888885','773890005@qq.com','地址5'),(16,'2021-04-06 19:36:04','用户6','123456','用户姓名6','http://localhost:8080/ssm2aoe9/upload/yonghu_touxiang6.jpg','男','年龄6','13823888886','773890006@qq.com','地址6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
