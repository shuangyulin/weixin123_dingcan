/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootx2s70
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootx2s70` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootx2s70`;

/*Table structure for table `caipinfenlei` */

DROP TABLE IF EXISTS `caipinfenlei`;

CREATE TABLE `caipinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinfenlei` varchar(200) NOT NULL COMMENT '菜品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caipinfenlei` (`caipinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1618219653581 DEFAULT CHARSET=utf8 COMMENT='菜品分类';

/*Data for the table `caipinfenlei` */

insert  into `caipinfenlei`(`id`,`addtime`,`caipinfenlei`) values (21,'2021-04-12 17:15:54','家常菜'),(22,'2021-04-12 17:15:54','下午茶'),(23,'2021-04-12 17:15:54','日式料理'),(24,'2021-04-12 17:15:54','汉堡披萨'),(1618219653580,'2021-04-12 17:27:33','面食类');

/*Table structure for table `caipinpingjia` */

DROP TABLE IF EXISTS `caipinpingjia`;

CREATE TABLE `caipinpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) DEFAULT NULL COMMENT '菜品分类',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `baozhuang` varchar(200) DEFAULT NULL COMMENT '包装',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618220458353 DEFAULT CHARSET=utf8 COMMENT='菜品评价';

/*Data for the table `caipinpingjia` */

insert  into `caipinpingjia`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caipinfenlei`,`kouwei`,`baozhuang`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`,`userid`) values (71,'2021-04-12 17:15:54','订单编号1','菜品名称1','菜品分类1','1','1','http://localhost:8080/springbootx2s70/upload/1618219474402.jpg','评价内容1','2021-04-12','用户名1','联系电话1','是','',1),(72,'2021-04-12 17:15:54','订单编号2','菜品名称2','菜品分类2','1','1','http://localhost:8080/springbootx2s70/upload/1618219483345.jpg','评价内容2','2021-04-12','用户名2','联系电话2','是','',2),(73,'2021-04-12 17:15:54','订单编号3','菜品名称3','菜品分类3','1','1','http://localhost:8080/springbootx2s70/upload/1618219491233.jpg','评价内容3','2021-04-12','用户名3','联系电话3','是','',3),(74,'2021-04-12 17:15:54','订单编号4','菜品名称4','菜品分类4','1','1','http://localhost:8080/springbootx2s70/upload/1618219513679.jpg','评价内容4','2021-04-12','用户名4','联系电话4','是','',4),(75,'2021-04-12 17:15:54','订单编号5','菜品名称5','菜品分类5','1','1','http://localhost:8080/springbootx2s70/upload/caipinpingjia_tianjiatupian5.jpg','评价内容5','2021-04-12','用户名5','联系电话5','是','',5),(76,'2021-04-12 17:15:54','订单编号6','菜品名称6','菜品分类6','1','1','http://localhost:8080/springbootx2s70/upload/caipinpingjia_tianjiatupian6.jpg','评价内容6','2021-04-12','用户名6','联系电话6','是','',6),(1618220004649,'2021-04-12 17:33:23','1618219803471','麻辣小龙虾','家常菜','5','5','http://localhost:8080/springbootx2s70/upload/1618219997302.jpg','小龙虾很不错','2021-04-12','1','12345678978','是','感谢支持',1618219174387),(1618220458352,'2021-04-12 17:40:57','1618220268792','麻辣小龙虾','家常菜','5','5','http://localhost:8080/springbootx2s70/upload/1618220446687.jpg','鲜香麻辣，小龙虾很不错','2021-04-12','2','12345678978','否',NULL,1618220161726);

/*Table structure for table `caipinxinxi` */

DROP TABLE IF EXISTS `caipinxinxi`;

CREATE TABLE `caipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinmingcheng` varchar(200) NOT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) NOT NULL COMMENT '菜品分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `caipinjiage` int(11) NOT NULL COMMENT '菜品价格',
  `cailiao` varchar(200) DEFAULT NULL COMMENT '材料',
  `fenliang` varchar(200) DEFAULT NULL COMMENT '份量',
  `caipinjieshao` longtext COMMENT '菜品介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618219682631 DEFAULT CHARSET=utf8 COMMENT='菜品信息';

/*Data for the table `caipinxinxi` */

insert  into `caipinxinxi`(`id`,`addtime`,`caipinmingcheng`,`caipinfenlei`,`tupian`,`caipinjiage`,`cailiao`,`fenliang`,`caipinjieshao`,`clicktime`,`clicknum`) values (31,'2021-04-12 17:15:54','菜品名称1','下午茶','http://localhost:8080/springbootx2s70/upload/1618219265053.jpg',1,'材料1','份量1','<p>菜品介绍1</p>','2021-04-12 17:20:49',2),(33,'2021-04-12 17:15:54','糖醋鱼','家常菜','http://localhost:8080/springbootx2s70/upload/1618219303327.jpg',66,'材料3','份量3','<p>菜品介绍3</p>','2021-04-12 17:38:16',11),(34,'2021-04-12 17:15:54','菜品名称4','日式料理','http://localhost:8080/springbootx2s70/upload/1618219318642.jpg',4,'材料4','份量4','<p>菜品介绍4</p>','2021-04-12 17:29:06',6),(35,'2021-04-12 17:15:54','菜品名称5','汉堡披萨','http://localhost:8080/springbootx2s70/upload/1618219353196.jpg',5,'材料5','份量5','<p>菜品介绍5</p>','2021-04-12 17:22:03',6),(36,'2021-04-12 17:15:54','菜品名称6','下午茶','http://localhost:8080/springbootx2s70/upload/1618219364677.jpeg',6,'材料6','份量6','<p>菜品介绍6</p>','2021-04-12 17:37:07',14),(1618219682630,'2021-04-12 17:28:01','麻辣小龙虾','家常菜','http://localhost:8080/springbootx2s70/upload/1618219665562.jpg',88,'小龙虾','约500g','<p>花式麻辣小龙虾是一道色香味俱全的名肴，肉香味美，色泽诱人，滋补强壮，口感甚佳，令人垂涎的现代菜肴。</p><p><img src=\"http://localhost:8080/springbootx2s70/upload/1618219680218.jpg\"></p>','2021-04-12 17:38:02',4);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootx2s70/upload/1618219717799.jpg'),(2,'picture2','http://localhost:8080/springbootx2s70/upload/1618219725662.jpg'),(3,'picture3','http://localhost:8080/springbootx2s70/upload/1618219733500.jpg'),(6,'homepage',NULL);

/*Table structure for table `dingdanpeisong` */

DROP TABLE IF EXISTS `dingdanpeisong`;

CREATE TABLE `dingdanpeisong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) DEFAULT NULL COMMENT '菜品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `yujishizhang` varchar(200) DEFAULT NULL COMMENT '预计时长',
  `peisongzhuangtai` varchar(200) DEFAULT NULL COMMENT '配送状态',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618220414335 DEFAULT CHARSET=utf8 COMMENT='订单配送';

/*Data for the table `dingdanpeisong` */

insert  into `dingdanpeisong`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caipinfenlei`,`tupian`,`shuliang`,`zongjine`,`yujishizhang`,`peisongzhuangtai`,`gengxinshijian`,`yonghuming`,`lianxidianhua`,`userid`) values (61,'2021-04-12 17:15:54','订单编号1','菜品名称1','菜品分类1','http://localhost:8080/springbootx2s70/upload/dingdanpeisong_tupian1.jpg','数量1','总金额1','预计时长1','配送中','2021-04-12 17:15:54','用户名1','联系电话1',1),(62,'2021-04-12 17:15:54','订单编号2','菜品名称2','菜品分类2','http://localhost:8080/springbootx2s70/upload/dingdanpeisong_tupian2.jpg','数量2','总金额2','预计时长2','配送中','2021-04-12 17:15:54','用户名2','联系电话2',2),(63,'2021-04-12 17:15:54','订单编号3','菜品名称3','菜品分类3','http://localhost:8080/springbootx2s70/upload/1618219456977.jpg','数量3','总金额3','预计时长3','配送中','2021-04-12 17:15:54','用户名3','联系电话3',3),(64,'2021-04-12 17:15:54','订单编号4','菜品名称4','菜品分类4','http://localhost:8080/springbootx2s70/upload/dingdanpeisong_tupian4.jpg','数量4','总金额4','预计时长4','配送中','2021-04-12 17:15:54','用户名4','联系电话4',4),(65,'2021-04-12 17:15:54','订单编号5','菜品名称5','菜品分类5','http://localhost:8080/springbootx2s70/upload/1618219448967.jpg','数量5','总金额5','预计时长5','配送中','2021-04-12 17:15:54','用户名5','联系电话5',5),(66,'2021-04-12 17:15:54','订单编号6','菜品名称6','菜品分类6','http://localhost:8080/springbootx2s70/upload/1618219466377.jpg','数量6','总金额6','预计时长6','配送中','2021-04-12 17:15:54','用户名6','联系电话6',6),(1618219950666,'2021-04-12 17:32:29','1618219803471','麻辣小龙虾','家常菜','http://localhost:8080/springbootx2s70/upload/1618219665562.jpg','2','176','30分钟','已完成','2021-04-12 18:12:21','1','12345678978',1618219174387),(1618220414334,'2021-04-12 17:40:13','1618220268792','麻辣小龙虾','家常菜','http://localhost:8080/springbootx2s70/upload/1618219665562.jpg','2','176','40分钟','已完成','2021-04-12 18:39:59','2','12345678978',1618220161726);

/*Table structure for table `dingdanxinxi` */

DROP TABLE IF EXISTS `dingdanxinxi`;

CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) DEFAULT NULL COMMENT '菜品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `caipinjiage` int(11) DEFAULT NULL COMMENT '菜品价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `songcandizhi` varchar(200) DEFAULT NULL COMMENT '送餐地址',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618220295006 DEFAULT CHARSET=utf8 COMMENT='订单信息';

/*Data for the table `dingdanxinxi` */

insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caipinfenlei`,`tupian`,`caipinjiage`,`shuliang`,`zongjine`,`beizhu`,`songcandizhi`,`xiadanshijian`,`zhuangtai`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`,`ispay`,`userid`) values (41,'2021-04-12 17:15:54','订单编号1','菜品名称1','菜品分类1','http://localhost:8080/springbootx2s70/upload/dingdanxinxi_tupian1.jpg',1,1,'总金额1','备注1','送餐地址1','2021-04-12 17:15:54','正常','用户名1','联系电话1','是','','未支付',1),(42,'2021-04-12 17:15:54','订单编号2','菜品名称2','菜品分类2','http://localhost:8080/springbootx2s70/upload/1618219377565.jpg',2,2,'4','备注2','送餐地址2','2021-04-12 17:15:54','正常','用户名2','联系电话2','是','','未支付',2),(43,'2021-04-12 17:15:54','订单编号3','菜品名称3','菜品分类3','http://localhost:8080/springbootx2s70/upload/1618219388764.jpg',3,3,'9','备注3','送餐地址3','2021-04-12 17:15:54','正常','用户名3','联系电话3','是','','未支付',3),(44,'2021-04-12 17:15:54','订单编号4','菜品名称4','菜品分类4','http://localhost:8080/springbootx2s70/upload/dingdanxinxi_tupian4.jpg',4,4,'总金额4','备注4','送餐地址4','2021-04-12 17:15:54','正常','用户名4','联系电话4','是','','未支付',4),(45,'2021-04-12 17:15:54','订单编号5','菜品名称5','菜品分类5','http://localhost:8080/springbootx2s70/upload/dingdanxinxi_tupian5.jpg',5,5,'总金额5','备注5','送餐地址5','2021-04-12 17:15:54','正常','用户名5','联系电话5','是','','未支付',5),(46,'2021-04-12 17:15:54','订单编号6','菜品名称6','菜品分类6','http://localhost:8080/springbootx2s70/upload/dingdanxinxi_tupian6.jpg',6,6,'总金额6','备注6','送餐地址6','2021-04-12 17:15:54','正常','用户名6','联系电话6','是','','未支付',6),(1618219785611,'2021-04-12 17:29:45','1618219768337','糖醋鱼','家常菜','http://localhost:8080/springbootx2s70/upload/1618219303327.jpg',66,1,'66',NULL,'新县城大新街9号','2021-04-12 17:29:28','已取消','1','12345678978','是','ok，马上安排','已支付',1618219174387),(1618219818317,'2021-04-12 17:30:18','1618219803471','麻辣小龙虾','家常菜','http://localhost:8080/springbootx2s70/upload/1618219665562.jpg',88,2,'176',NULL,'新县城大新街9号','2021-04-12 17:30:03','正常','1','12345678978','是','ok，马上安排','已支付',1618219174387),(1618220281528,'2021-04-12 17:38:00','1618220268792','麻辣小龙虾','家常菜','http://localhost:8080/springbootx2s70/upload/1618219665562.jpg',88,2,'176',NULL,'大新街9号','2021-04-12 17:37:48','正常','2','12345678978','是','ok，马上安排','已支付',1618220161726),(1618220295005,'2021-04-12 17:38:14','1618220283550','糖醋鱼','家常菜','http://localhost:8080/springbootx2s70/upload/1618219303327.jpg',66,1,'66',NULL,'大新街9号','2021-04-12 17:38:03','已取消','2','12345678978','是','ok，马上安排','已支付',1618220161726);

/*Table structure for table `discusscaipinxinxi` */

DROP TABLE IF EXISTS `discusscaipinxinxi`;

CREATE TABLE `discusscaipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='菜品信息评论表';

/*Data for the table `discusscaipinxinxi` */

insert  into `discusscaipinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-04-12 17:15:54',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-04-12 17:15:54',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-04-12 17:15:54',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-04-12 17:15:54',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-04-12 17:15:54',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-04-12 17:15:54',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618219709175 DEFAULT CHARSET=utf8 COMMENT='菜品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-04-12 17:15:54','标题1','简介1','http://localhost:8080/springbootx2s70/upload/1618219521893.jpg','<p>内容1</p>'),(92,'2021-04-12 17:15:54','标题2','简介2','http://localhost:8080/springbootx2s70/upload/1618219529072.jpg','<p>内容2</p>'),(93,'2021-04-12 17:15:54','标题3','简介3','http://localhost:8080/springbootx2s70/upload/1618219536945.jpg','<p>内容3</p>'),(94,'2021-04-12 17:15:54','标题4','简介4','http://localhost:8080/springbootx2s70/upload/1618219546973.jpeg','<p>内容4</p>'),(95,'2021-04-12 17:15:54','标题5','简介5','http://localhost:8080/springbootx2s70/upload/1618219557448.jpg','<p>内容5</p>'),(1618219709174,'2021-04-12 17:28:28','新菜品上线资讯','新菜品上线','http://localhost:8080/springbootx2s70/upload/1618219695771.jpg','<p>资讯内容JSKGJKHYYGJKY</p><p><img src=\"http://localhost:8080/springbootx2s70/upload/1618219707545.jpg\"></p>');

/*Table structure for table `quxiaodingdan` */

DROP TABLE IF EXISTS `quxiaodingdan`;

CREATE TABLE `quxiaodingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) DEFAULT NULL COMMENT '菜品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `xiadanshijian` varchar(200) DEFAULT NULL COMMENT '下单时间',
  `quxiaoyuanyin` varchar(200) DEFAULT NULL COMMENT '取消原因',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618220366006 DEFAULT CHARSET=utf8 COMMENT='取消订单';

/*Data for the table `quxiaodingdan` */

insert  into `quxiaodingdan`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caipinfenlei`,`tupian`,`shuliang`,`zongjine`,`xiadanshijian`,`quxiaoyuanyin`,`quxiaoshijian`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`,`userid`) values (51,'2021-04-12 17:15:54','订单编号1','菜品名称1','菜品分类1','http://localhost:8080/springbootx2s70/upload/1618219404315.jpg','数量1','总金额1','下单时间1','取消原因1','2021-04-12 17:15:54','用户名1','联系电话1','是','',1),(52,'2021-04-12 17:15:54','订单编号2','菜品名称2','菜品分类2','http://localhost:8080/springbootx2s70/upload/1618219414075.jpg','数量2','总金额2','下单时间2','取消原因2','2021-04-12 17:15:54','用户名2','联系电话2','是','',2),(53,'2021-04-12 17:15:54','订单编号3','菜品名称3','菜品分类3','http://localhost:8080/springbootx2s70/upload/1618219422172.jpg','数量3','总金额3','下单时间3','取消原因3','2021-04-12 17:15:54','用户名3','联系电话3','是','',3),(54,'2021-04-12 17:15:54','订单编号4','菜品名称4','菜品分类4','http://localhost:8080/springbootx2s70/upload/1618219430641.jpg','数量4','总金额4','下单时间4','取消原因4','2021-04-12 17:15:54','用户名4','联系电话4','是','',4),(55,'2021-04-12 17:15:54','订单编号5','菜品名称5','菜品分类5','http://localhost:8080/springbootx2s70/upload/1618219439388.jpg','数量5','总金额5','下单时间5','取消原因5','2021-04-12 17:15:54','用户名5','联系电话5','是','',5),(56,'2021-04-12 17:15:54','订单编号6','菜品名称6','菜品分类6','http://localhost:8080/springbootx2s70/upload/quxiaodingdan_tupian6.jpg','数量6','总金额6','下单时间6','取消原因6','2021-04-12 17:15:54','用户名6','联系电话6','是','',6),(1618219894897,'2021-04-12 17:31:34','1618219768337','糖醋鱼','家常菜','http://localhost:8080/springbootx2s70/upload/1618219303327.jpg','1','66','2021-04-12 17:29:28','不想要了','2021-04-12 17:31:27','1','12345678978','是','ok',1618219174387),(1618220366005,'2021-04-12 17:39:25','1618220283550','糖醋鱼','家常菜','http://localhost:8080/springbootx2s70/upload/1618219303327.jpg','1','66','2021-04-12 17:38:03','不想要了','2021-04-12 17:39:18','2','12345678978','是','ok',1618220161726);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618220269733 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1618219174387,'1','yonghu','用户','zar73oo2gcwal9ifti0lqrw6rlx4qfcx','2021-04-12 17:19:41','2021-04-12 18:19:41'),(2,1,'abo','users','管理员','2nqdc3gcgs55cltq5eqfvjqtwrj9xlnb','2021-04-12 17:20:12','2021-04-12 18:27:23'),(3,1618220161726,'2','yonghu','用户','bg0ax4m56me0wv0zaxigbcybbrrckxws','2021-04-12 17:36:43','2021-04-12 18:36:44');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-12 17:15:54');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1618220161727 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`) values (11,'2021-04-12 17:15:54','用户1','123456','姓名1','男','http://localhost:8080/springbootx2s70/upload/yonghu_touxiang1.jpg','13823888881'),(12,'2021-04-12 17:15:54','用户2','123456','姓名2','男','http://localhost:8080/springbootx2s70/upload/yonghu_touxiang2.jpg','13823888882'),(13,'2021-04-12 17:15:54','用户3','123456','姓名3','男','http://localhost:8080/springbootx2s70/upload/yonghu_touxiang3.jpg','13823888883'),(14,'2021-04-12 17:15:54','用户4','123456','姓名4','男','http://localhost:8080/springbootx2s70/upload/yonghu_touxiang4.jpg','13823888884'),(15,'2021-04-12 17:15:54','用户5','123456','姓名5','男','http://localhost:8080/springbootx2s70/upload/yonghu_touxiang5.jpg','13823888885'),(16,'2021-04-12 17:15:54','用户6','123456','姓名6','男','http://localhost:8080/springbootx2s70/upload/yonghu_touxiang6.jpg','13823888886'),(1618219174387,'2021-04-12 17:19:34','1','1','陈一','女','http://localhost:8080/springbootx2s70/upload/1618219191253.jpg','12345678978'),(1618220161726,'2021-04-12 17:36:01','2','2','张一','女','http://localhost:8080/springbootx2s70/upload/1618220212570.png','12345678978');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
