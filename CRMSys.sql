/*
SQLyog Ultimate v8.32 
MySQL - 5.7.29 : Database - crm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`crm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `crm`;

/*Table structure for table `basdict` */

DROP TABLE IF EXISTS `basdict`;

CREATE TABLE `basdict` (
  `DICTID` int(11) NOT NULL AUTO_INCREMENT,
  `DICTTYPE` varchar(255) DEFAULT NULL,
  `DICTITEM` varchar(255) DEFAULT NULL,
  `DICTVALUE` varchar(255) DEFAULT NULL,
  `DICTISEDITABLE` varchar(255) DEFAULT NULL,
  `DICTSTATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DICTID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `basdict` */

/*Table structure for table `clientactivity` */

DROP TABLE IF EXISTS `clientactivity`;

CREATE TABLE `clientactivity` (
  `ATVID` int(11) NOT NULL AUTO_INCREMENT,
  `CLIENTMANAGE` int(11) DEFAULT NULL,
  `ATVTIME` datetime DEFAULT NULL,
  `ATVPLACE` varchar(255) DEFAULT NULL,
  `ATVTITLE` varchar(255) DEFAULT NULL,
  `ATVCOMMENT` varchar(255) DEFAULT NULL,
  `ATVDESC` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ATVID`),
  KEY `FK_hecwykjyv0h9e13wdoatfowmh` (`CLIENTMANAGE`),
  CONSTRAINT `FK_hecwykjyv0h9e13wdoatfowmh` FOREIGN KEY (`CLIENTMANAGE`) REFERENCES `clientmanage` (`MANID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=gbk;

/*Data for the table `clientactivity` */

insert  into `clientactivity`(`ATVID`,`CLIENTMANAGE`,`ATVTIME`,`ATVPLACE`,`ATVTITLE`,`ATVCOMMENT`,`ATVDESC`) values (1,1,'2015-03-22 14:29:52','南山图书馆五楼电子阅览室','客户管理系统交付完成','等待客户试用','请咨询客户经理'),(2,1,'2015-03-22 14:33:54','南山图书馆五楼电子阅览室','客户管理系统交付尾金','交易成功','请咨询客户经理'),(3,2,'2015-03-22 14:35:03','南山图书馆五楼休闲阅读室','手机销售系统交易','等待客户试用','请咨询客户经理'),(4,2,'2015-03-22 14:35:40','南山图书馆五楼休闲阅读室','手机销售系统交易支付尾款','交易成功','请咨询客户经理'),(5,3,'2015-03-22 14:35:43','南山图书馆二楼','路由器管理系统交易','等待客户试用','请咨询客户经理'),(6,3,'2015-03-22 14:35:46','南山图书馆二楼','路由器管理系统交易支付尾金','交易成功','请咨询客户经理'),(7,4,'2015-03-22 14:35:48','南山图书馆一楼大厅','支付宝系统交付客户','等待客户试用','请咨询客户经理'),(12,1,'2015-03-23 12:32:52','发的规范的','多岁的法国','地方地方',' 干豆腐'),(13,1,'2015-03-23 12:33:02','的说法','豆腐干豆腐','辅导费','的是');

/*Table structure for table `clientconsist` */

DROP TABLE IF EXISTS `clientconsist`;

CREATE TABLE `clientconsist` (
  `RKID` int(11) NOT NULL,
  `RKNAME` varchar(255) DEFAULT NULL,
  `NUM` int(11) DEFAULT NULL,
  PRIMARY KEY (`RKID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `clientconsist` */

/*Table structure for table `clientdevote` */

DROP TABLE IF EXISTS `clientdevote`;

CREATE TABLE `clientdevote` (
  `MANID` int(11) NOT NULL,
  `MANNAME` varchar(255) DEFAULT NULL,
  `TOTALMONEY` double DEFAULT NULL,
  PRIMARY KEY (`MANID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `clientdevote` */

/*Table structure for table `clientlinkman` */

DROP TABLE IF EXISTS `clientlinkman`;

CREATE TABLE `clientlinkman` (
  `LKMID` int(11) NOT NULL AUTO_INCREMENT,
  `CLIENTMANAGE` int(11) DEFAULT NULL,
  `LKMNAME` varchar(255) DEFAULT NULL,
  `LKMSEX` varchar(255) DEFAULT NULL,
  `LKMPOSTION` varchar(255) DEFAULT NULL,
  `LKMTEL` varchar(255) DEFAULT NULL,
  `LKMMOBILE` varchar(255) DEFAULT NULL,
  `LKMCOMMENT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LKMID`),
  KEY `FK_270ygjc9cf5s8jpncrhdr6lcn` (`CLIENTMANAGE`),
  CONSTRAINT `FK_270ygjc9cf5s8jpncrhdr6lcn` FOREIGN KEY (`CLIENTMANAGE`) REFERENCES `clientmanage` (`MANID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=gb2312;

/*Data for the table `clientlinkman` */

insert  into `clientlinkman`(`LKMID`,`CLIENTMANAGE`,`LKMNAME`,`LKMSEX`,`LKMPOSTION`,`LKMTEL`,`LKMMOBILE`,`LKMCOMMENT`) values (1,1,'路飞','男','船长','27827822','13620394011','有状态'),(2,1,'山治','男','厨师','27827822','13620394011','超级状态'),(3,2,'卓洛','男','剑客','27827822','13620394011','无状态'),(4,2,'娜美','女','航海员','27827822','13620394011','无状态'),(5,3,'乌索普','男','追击手','27827822','13620394011','无状态'),(6,4,'乔巴','男','医生','27827822','13620394011','无状态'),(7,5,'罗宾','女','历史学家','27827822','13620394011','无状态'),(8,6,'弗兰奇','男','船工','27827822','13620394011','无状态'),(9,7,'布鲁克','男','音乐家','27827822','13620394011','无状态'),(10,8,'薇薇','男','公主','27827822','13620394011','无状态'),(11,1,'asd','男','gdfgdfg','44444444','11111111111','gfhfhfg');

/*Table structure for table `clientlost` */

DROP TABLE IF EXISTS `clientlost`;

CREATE TABLE `clientlost` (
  `LSTID` int(11) NOT NULL AUTO_INCREMENT,
  `LSTNAME` varchar(255) DEFAULT NULL,
  `SYSUSER` int(11) DEFAULT NULL,
  `LSTLASTORDERDATE` datetime DEFAULT NULL,
  `LSTLOSTDATE` datetime DEFAULT NULL,
  `LSTDELAY` varchar(255) DEFAULT NULL,
  `LSTADDDELAY` varchar(255) DEFAULT NULL,
  `LSTREASON` varchar(255) DEFAULT NULL,
  `LSTSTATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LSTID`),
  KEY `FK_q4aa70r6am59xm6q7e1q7keoo` (`SYSUSER`),
  CONSTRAINT `FK_q4aa70r6am59xm6q7e1q7keoo` FOREIGN KEY (`SYSUSER`) REFERENCES `sysuser` (`USRID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=gb2312;

/*Data for the table `clientlost` */

insert  into `clientlost`(`LSTID`,`LSTNAME`,`SYSUSER`,`LSTLASTORDERDATE`,`LSTLOSTDATE`,`LSTDELAY`,`LSTADDDELAY`,`LSTREASON`,`LSTSTATUS`) values (1,'科利达',3,'2014-08-13 19:44:22','2015-03-31 11:08:32','asdasd',NULL,'asdasdasd','已流失'),(2,'万达',5,'2014-09-13 19:44:22','2015-03-31 11:08:21','ad',NULL,'asdasd','已流失'),(3,'宏发',4,'2014-09-12 19:44:22','2015-03-31 11:11:59','asdasd',NULL,'','已流失'),(4,'黄埔',5,'2014-09-14 19:44:22',NULL,NULL,NULL,NULL,'警告'),(5,'恒大',5,'2014-09-15 19:44:22',NULL,NULL,NULL,NULL,'警告'),(6,'英皇',4,'2014-09-16 19:44:22',NULL,NULL,NULL,NULL,'警告'),(7,'太阳',3,'2014-09-18 19:44:22',NULL,NULL,NULL,NULL,'警告'),(8,'金牌',5,'2014-09-19 19:44:22',NULL,NULL,NULL,NULL,'警告'),(9,'碧桂园',3,'2014-09-22 19:44:22',NULL,'上门访谈','上门访谈',NULL,'暂缓流失'),(10,'万科',4,'2014-09-23 19:44:22',NULL,NULL,NULL,NULL,'警告');

/*Table structure for table `clientmanage` */

DROP TABLE IF EXISTS `clientmanage`;

CREATE TABLE `clientmanage` (
  `MANID` int(11) NOT NULL AUTO_INCREMENT,
  `MANNAME` varchar(255) DEFAULT NULL,
  `MANSERIAL` varchar(255) DEFAULT NULL,
  `DISTRICT` int(11) DEFAULT NULL,
  `SYSUSER` int(11) DEFAULT NULL,
  `CLIENTRANK` int(11) DEFAULT NULL,
  `MANSATISFY` int(11) DEFAULT NULL,
  `MANCREDIT` int(11) DEFAULT NULL,
  `MANADDR` varchar(255) DEFAULT NULL,
  `MANZIP` int(50) DEFAULT NULL,
  `MANTEL` varchar(255) DEFAULT NULL,
  `MANFAX` varchar(255) DEFAULT NULL,
  `MANWEBSITE` varchar(255) DEFAULT NULL,
  `MANLICENCENO` varchar(255) DEFAULT NULL,
  `MANCHIEFTAIN` varchar(255) DEFAULT NULL,
  `MANBANKROLL` double DEFAULT NULL,
  `MANTURNOVER` double DEFAULT NULL,
  `MANBRANK` varchar(255) DEFAULT NULL,
  `MANBRANKACCOUNT` varchar(255) DEFAULT NULL,
  `MANLOCALNO` varchar(255) DEFAULT NULL,
  `MANNATIONALNO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MANID`),
  KEY `FK_7bf5kt8ek2yigrkongwr1eib9` (`DISTRICT`),
  KEY `FK_1w57be4h7uqo76wybj5gfrmbd` (`SYSUSER`),
  KEY `FK_eqirk3irtvv1s0w86r0eccnw6` (`CLIENTRANK`),
  CONSTRAINT `FK_1w57be4h7uqo76wybj5gfrmbd` FOREIGN KEY (`SYSUSER`) REFERENCES `sysuser` (`USRID`) ON DELETE SET NULL,
  CONSTRAINT `FK_7bf5kt8ek2yigrkongwr1eib9` FOREIGN KEY (`DISTRICT`) REFERENCES `district` (`DSID`) ON DELETE SET NULL,
  CONSTRAINT `FK_eqirk3irtvv1s0w86r0eccnw6` FOREIGN KEY (`CLIENTRANK`) REFERENCES `clientrank` (`RKID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=gb2312;

/*Data for the table `clientmanage` */

insert  into `clientmanage`(`MANID`,`MANNAME`,`MANSERIAL`,`DISTRICT`,`SYSUSER`,`CLIENTRANK`,`MANSATISFY`,`MANCREDIT`,`MANADDR`,`MANZIP`,`MANTEL`,`MANFAX`,`MANWEBSITE`,`MANLICENCENO`,`MANCHIEFTAIN`,`MANBANKROLL`,`MANTURNOVER`,`MANBRANK`,`MANBRANKACCOUNT`,`MANLOCALNO`,`MANNATIONALNO`) values (1,'腾讯','B6X001',3,3,1,5,2,'荣昌区',512900,'8888888','27272727','www.huawei.com','123543123','aa',88888888,10000000,'工商银行','7777888899991116666','HBASD12','ASDA231'),(2,'华为','B6X002',2,3,2,5,5,'南山区',512900,'29292929','27272727','www.huawei.com','123543123','bb',100000000,100000000,'6666-6666-6666-666','7777777777777777777','HBASD12','ASDA231'),(3,'中兴','B6X003',3,4,3,5,5,'福田区',512900,'29292929','27272727','www.huawei.com','123543123','qq',100000000,100000000,'招商银行','7777777777777777777','HBASD12','ASDA231'),(4,'淘宝','B6X004',4,6,1,5,5,'罗湖区',512900,'29292929','27272727','www.huawei.com','123543123','dd',100000000,100000000,'农业银行','7777777777777777888','HBASD12','ASDA231'),(5,'京东','B6X005',5,5,2,5,5,'龙华区',512900,'29292929','27272727','www.huawei.com','123543123','ee',100000000,100000000,'中国银行','7777777777777776666','HBASD12','ASDA231'),(6,'美团','B6X006',6,6,3,5,5,'公明区',512900,'29292929','27272727','www.huawei.com','123543123','ff',100000000,100000000,'兴业银行','7777777777777771222','HBASD12','ASDA231'),(7,'百度','B6X007',7,4,1,5,5,'坪山区',512900,'29292929','27272727','www.huawei.com','123543123','gg',100000000,100000000,'建设银行','7777777777777779990','HBASD12','ASDA231'),(8,'网易','B6X008',1,5,2,5,5,'大鹏区',512900,'29292929','27272727','www.huawei.com','123543123','hh',100000000,100000000,'6666-6666-6666-666','7777777777777770123','HBASD12','ASDA231'),(9,'新浪','B6X009',2,3,3,5,5,'盐田区',512900,'29292929','27272727','www.huawei.com','123543123','ii',100000000,100000000,'光大银行','7777777777777771234','HBASD12','ASDA231'),(10,'搜狐','B6X020',3,3,1,5,5,'龙岗区',512900,'29292929','27272727','www.huawei.com','123543123','jj',100000000,100000000,'平安银行','7777777777777777567','HBASD12','ASDA231'),(11,'拉手','B6X022',4,4,2,5,5,'香港',512900,'29292929','27272727','www.huawei.com','123543123','kk',100000000,100000000,'招商银行','7777777777777771432','HBASD12','ASDA231');

/*Table structure for table `clientplan` */

DROP TABLE IF EXISTS `clientplan`;

CREATE TABLE `clientplan` (
  `PLAID` int(11) NOT NULL AUTO_INCREMENT,
  `MARKETCHANCE` int(11) DEFAULT NULL,
  `PLADATE` datetime DEFAULT NULL,
  `PLATODO` varchar(255) DEFAULT NULL,
  `PLARESULT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PLAID`),
  KEY `FK_lyactk5meiwxagtew7d7584qv` (`MARKETCHANCE`),
  CONSTRAINT `FK_lyactk5meiwxagtew7d7584qv` FOREIGN KEY (`MARKETCHANCE`) REFERENCES `marketchance` (`CHCID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

/*Data for the table `clientplan` */

insert  into `clientplan`(`PLAID`,`MARKETCHANCE`,`PLADATE`,`PLATODO`,`PLARESULT`) values (1,17,'2015-03-22 11:43:45','哈哈','哈哈哈'),(2,18,'2015-03-22 14:08:41','嘻嘻','嘻嘻嘻'),(3,20,'2015-03-31 10:02:52','asdasd','asdasdasd'),(4,14,'2021-08-11 21:36:52','奋斗低价位厂内机动车','积极争取中'),(5,22,NULL,NULL,NULL),(6,14,'2015-03-20 22:38:37','积极争取，努力谈下这个案子',NULL),(7,14,'2015-03-20 22:38:37','us好像是承诺时间啊大V才能到',NULL);

/*Table structure for table `clientrank` */

DROP TABLE IF EXISTS `clientrank`;

CREATE TABLE `clientrank` (
  `RKID` int(11) NOT NULL AUTO_INCREMENT,
  `RKNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RKID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

/*Data for the table `clientrank` */

insert  into `clientrank`(`RKID`,`RKNAME`) values (1,'重要客户'),(2,'大客户'),(3,'普通客户');

/*Table structure for table `clientservice` */

DROP TABLE IF EXISTS `clientservice`;

CREATE TABLE `clientservice` (
  `SVRID` int(11) NOT NULL AUTO_INCREMENT,
  `SVRTYPE` int(11) DEFAULT NULL,
  `SVRTITLE` varchar(255) DEFAULT NULL,
  `SVTNMAE` varchar(255) DEFAULT NULL,
  `SVRSTATUS` int(11) DEFAULT NULL,
  `SVRREQUEST` varchar(255) DEFAULT NULL,
  `SVRCREATENAME` varchar(255) DEFAULT NULL,
  `SVRCREATEDATE` datetime DEFAULT NULL,
  `SYSUSER` int(11) DEFAULT NULL,
  `SVRDUEDATE` datetime DEFAULT NULL,
  `SYSROLE` int(11) DEFAULT NULL,
  `SVRDEALDATE` datetime DEFAULT NULL,
  `SVRRESULT` varchar(255) DEFAULT NULL,
  `SVRSTISFY` int(11) DEFAULT NULL,
  PRIMARY KEY (`SVRID`),
  KEY `FK_871fqafcwbqoikim52pti83xi` (`SVRTYPE`),
  KEY `FK_qatkpoib9nqgvf3ktb4y3oa3x` (`SYSUSER`),
  KEY `FK_pn0wlk5u7fpswn9u0m42gpb4k` (`SYSROLE`),
  CONSTRAINT `FK_871fqafcwbqoikim52pti83xi` FOREIGN KEY (`SVRTYPE`) REFERENCES `servicetype` (`STID`),
  CONSTRAINT `FK_pn0wlk5u7fpswn9u0m42gpb4k` FOREIGN KEY (`SYSROLE`) REFERENCES `sysrole` (`ROLEID`),
  CONSTRAINT `FK_qatkpoib9nqgvf3ktb4y3oa3x` FOREIGN KEY (`SYSUSER`) REFERENCES `sysuser` (`USRID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=gb2312;

/*Data for the table `clientservice` */

insert  into `clientservice`(`SVRID`,`SVRTYPE`,`SVRTITLE`,`SVTNMAE`,`SVRSTATUS`,`SVRREQUEST`,`SVRCREATENAME`,`SVRCREATEDATE`,`SYSUSER`,`SVRDUEDATE`,`SYSROLE`,`SVRDEALDATE`,`SVRRESULT`,`SVRSTISFY`) values (1,1,'咨询','腾讯',1,'发送请求','admin','2015-03-26 08:28:55',NULL,NULL,NULL,NULL,NULL,0),(2,2,'建议','华为',3,'发送请求','admin','2015-03-26 08:30:00',6,'2015-03-31 19:40:15',1,'2015-03-31 19:42:27','效果很好',0),(3,1,'咨询','中兴',4,'发送请求','admin','2015-03-26 08:30:31',3,'2015-03-26 08:30:56',1,'2015-03-31 11:18:08','不好',3),(4,3,'投诉','淘宝',2,'发送请求','admin','2015-03-26 08:30:58',5,'2015-03-26 08:31:23',1,NULL,NULL,0),(5,1,'咨询','京东',4,'发送请求','admin','2015-03-26 08:31:24',3,'2015-03-26 08:31:47',1,'2015-03-31 11:19:02','都让人',3),(6,1,'咨询','美团',4,'发送请求','admin','2015-03-26 08:31:58',3,'2015-03-26 08:32:16',1,'2015-03-31 10:36:55','asdasd',4),(7,2,'建议','百度',4,'发送请求','admin','2015-03-26 08:33:02',2,'2015-03-26 08:33:39',1,'2015-03-26 08:34:09','非常好',4),(8,3,'投诉','网易',4,'发送请求。','admin','2015-03-26 08:33:18',5,'2015-03-26 08:33:42',1,'2015-03-26 08:34:17','比较满意',4),(9,2,'非常好','拉手',2,'发送请求','admin','2015-03-26 09:03:14',4,'2015-03-26 09:03:30',1,NULL,NULL,0),(11,1,'新浪售后服务','新浪',2,'咨询服务','test','2015-03-31 20:02:17',3,'2015-03-31 20:03:05',1,NULL,NULL,0),(12,1,'中兴售后服务','中兴',1,'中兴咨询','test','2015-03-31 20:05:04',NULL,NULL,NULL,NULL,NULL,0),(17,1,'咨询','中兴',1,'咨询服务','admin','2015-03-31 20:56:01',NULL,NULL,NULL,NULL,NULL,0),(19,1,'咨询','淘宝',1,'咨询服务','admin','2015-03-31 21:01:26',NULL,NULL,NULL,NULL,NULL,0),(28,2,'sdf','华为',1,'sdf','test','2015-03-31 21:52:46',NULL,NULL,NULL,NULL,NULL,0),(29,2,'撒啊啊','5',1,'啊啊啊啊啊啊啊啊啊啊啊','admin','2021-08-12 10:26:42',3,NULL,NULL,NULL,NULL,NULL),(32,2,'111111111111','7',1,'111111111111111111','admin','2021-08-12 10:26:42',3,NULL,NULL,NULL,NULL,NULL),(34,2,'11111111111','5',1,'1111111111111111','admin','2021-08-12 10:26:42',NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `district` */

DROP TABLE IF EXISTS `district`;

CREATE TABLE `district` (
  `DSID` int(11) NOT NULL AUTO_INCREMENT,
  `DSNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DSID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=gb2312;

/*Data for the table `district` */

insert  into `district`(`DSID`,`DSNAME`) values (1,'深圳'),(2,'上海'),(3,'北京'),(4,'湖北'),(5,'济南'),(6,'郑州'),(7,'新疆'),(8,'海南'),(9,'广西'),(10,'福建'),(11,'杭州');

/*Table structure for table `marketchance` */

DROP TABLE IF EXISTS `marketchance`;

CREATE TABLE `marketchance` (
  `CHCID` int(11) NOT NULL AUTO_INCREMENT,
  `CHCMANNAME` varchar(255) DEFAULT NULL,
  `CHCLINKMAN` varchar(255) DEFAULT NULL,
  `CHCSOURCE` varchar(255) DEFAULT NULL,
  `CHCRATE` varchar(255) DEFAULT NULL,
  `CHCTEL` varchar(255) DEFAULT NULL,
  `CLIENTRANK` int(11) DEFAULT NULL,
  `CHCTITLE` varchar(255) DEFAULT NULL,
  `DISTRICT` int(11) DEFAULT NULL,
  `CHCDESC` varchar(255) DEFAULT NULL,
  `CHCDATE` datetime DEFAULT NULL,
  `CHCSTATUS` varchar(255) DEFAULT NULL,
  `SYSUSER` int(11) DEFAULT NULL,
  `CREATEMAN` int(11) DEFAULT NULL,
  `CREATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`CHCID`),
  KEY `FK_q7sh5nw6pb01xk2l08rwfyjd6` (`CLIENTRANK`),
  KEY `FK_rqfnpjc1t6bwss3dsimocg2nf` (`DISTRICT`),
  KEY `FK_bp1380qqubio9gshxib9bopr1` (`SYSUSER`),
  CONSTRAINT `FK_bp1380qqubio9gshxib9bopr1` FOREIGN KEY (`SYSUSER`) REFERENCES `sysuser` (`USRID`) ON DELETE SET NULL,
  CONSTRAINT `FK_q7sh5nw6pb01xk2l08rwfyjd6` FOREIGN KEY (`CLIENTRANK`) REFERENCES `clientrank` (`RKID`) ON DELETE SET NULL,
  CONSTRAINT `FK_rqfnpjc1t6bwss3dsimocg2nf` FOREIGN KEY (`DISTRICT`) REFERENCES `district` (`DSID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=gb2312;

/*Data for the table `marketchance` */

insert  into `marketchance`(`CHCID`,`CHCMANNAME`,`CHCLINKMAN`,`CHCSOURCE`,`CHCRATE`,`CHCTEL`,`CLIENTRANK`,`CHCTITLE`,`DISTRICT`,`CHCDESC`,`CHCDATE`,`CHCSTATUS`,`SYSUSER`,`CREATEMAN`,`CREATEDATE`) values (1,'科技公司','张三','主动联系','80','13800138000',1,'快成交',2,'哈哈哈哈',NULL,'未指派',NULL,NULL,NULL),(2,'手机公司','张四','主动联系','60','13800138000',1,'快成交',2,'成功机会大','2015-03-20 11:57:23','未指派',NULL,2,'2015-03-20 14:26:24'),(3,'磨具公司','李三','主动联系','60','13800138000',1,'快成交',2,'哈哈哈哈',NULL,'未指派',NULL,2,'2015-03-20 14:26:28'),(4,'金融公司','王三','主动联系','60','13800138000',1,'快成交',2,'成功机会大','2015-03-20 11:57:23','未指派',NULL,3,'2015-03-20 14:26:30'),(5,'电脑公司','赵六','主动联系','60','13800138000',1,'快成交',2,'成功机会大','2015-03-20 11:57:23','未指派',NULL,4,'2015-03-20 14:26:32'),(6,'半导体公司','瑞文','主动联系','60','13800138000',1,'快成交',2,'成功机会大','2015-03-20 11:57:23','未指派',NULL,5,'2015-03-20 14:26:34'),(7,'LED公司','赵信','主动联系','60','13800138000',1,'快成交',2,'成功机会大','2015-03-20 11:57:23','未指派',NULL,6,'2015-03-20 14:26:41'),(8,'科技公司','盖伦','主动联系','60','29992999',1,'快成交',2,'成功机会大',NULL,'未指派',NULL,3,NULL),(9,'科技公司','皇子','主动联系','60','13800138000',1,'快成交',2,'成功机会大','2015-03-20 11:57:23',NULL,NULL,NULL,NULL),(11,'科技公司','瞎子','主动联系','60','13800138000',1,'快成交',2,'成功机会大','2015-03-20 11:57:23','未指派',NULL,5,'2015-03-20 14:26:38'),(12,'乐豆软件公司','卡特琳娜','朋友介绍','20','13800138111',1,'做手机游戏的公司',9,'需要提供网络技术支持',NULL,'未指派',NULL,6,'2015-03-20 14:26:36'),(14,'腾讯','马化腾','主动联系','100','13800138000',1,'CEO',1,'大项目','2015-03-20 15:22:32','开发中',5,2,'2015-03-20 14:45:34'),(15,'网易','丁磊','主动联系','100','13800138000',1,'友好合作',7,'大型数据时代','2015-03-20 15:24:52','开发中',3,6,'2015-03-20 15:01:57'),(17,'RUNNING MAN','李光洙','韩国','55','13928934576',1,'啊啊啊',1,'啊啊啊','2015-03-20 22:38:50','已归档',4,3,'2015-03-20 22:38:37'),(18,'阿里云','哈哈','11','60','13111111111',1,'快成交',2,'机会大啧啧啧','2015-03-20 11:57:23',NULL,NULL,NULL,NULL),(19,'asd','asd','asd','12','11111111',1,'sad',1,'asd',NULL,'未指派',NULL,3,'2015-03-29 01:17:46'),(20,'asd','asdasd','asd','12','11111111',2,'asd',1,'asd','2015-03-31 10:01:31','已归档',4,5,'2015-03-31 09:59:16'),(21,'aaa','aaa','aaaa','33','11111111',3,'aaaa',2,'aaaa','2015-03-31 10:09:56','开发中',4,6,'2015-03-31 10:09:03'),(22,'丰田','张小姐','主动联系','60','22222222',3,'啊啊啊啊',4,'啊啊啊啊啊','2015-03-31 18:48:02','开发中',3,2,'2015-03-31 18:42:45'),(23,'淘宝','小张','11','60','1111111111',1,'快成交',2,'机会大','2015-03-20 11:57:23','未指派',NULL,2,'2015-03-20 14:26:34'),(24,'11','11','11','1','1111111111',NULL,'11111',NULL,'11111111',NULL,'未指派',NULL,NULL,NULL),(25,'互联网','小小','11','1','12345678980',NULL,'合作',NULL,'共赢',NULL,'未指派',NULL,NULL,NULL),(26,'啊啊啊','设搜搜','11','1','111',2,'1111',3,'11111111',NULL,'未指派',NULL,NULL,NULL),(27,'啊啊啊','11','11','1','1111111111',1,'11111',1,'1',NULL,'未指派',NULL,NULL,NULL),(28,'1','1','1','1','1',1,'11',1,'1',NULL,'未指派',NULL,NULL,NULL),(29,'dddddddd','1','1','1','13111111111',NULL,'dddddddddddddd',1,'1','2021-08-02 22:34:00',NULL,NULL,NULL,NULL),(30,'啊实打实的','','','','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL),(31,'啊实打实的','ggg','大飒飒的','20','6545611',NULL,'啊实打实',NULL,'大',NULL,NULL,NULL,NULL,NULL),(32,'啊实打实的','ggg','大飒飒的','20','12312313',NULL,'啊实打实',NULL,'czxcxv',NULL,NULL,NULL,NULL,NULL),(33,'啊实打实的','ggg','大飒飒的','20','',NULL,'啊实打实',3,'gfhjk',NULL,NULL,NULL,NULL,NULL),(34,'啊实打实的','ggg','大飒飒的','20','6545611',2,'啊实打实',5,'asdfg',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `ODRID` int(11) NOT NULL AUTO_INCREMENT,
  `CLIENTMANAGE` int(11) DEFAULT NULL,
  `ODRDATE` datetime DEFAULT NULL,
  `ODRADDR` varchar(255) DEFAULT NULL,
  `ODRSTATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ODRID`),
  KEY `FK_41xlll50ag6mjji3nw3xu9bwm` (`CLIENTMANAGE`),
  CONSTRAINT `FK_41xlll50ag6mjji3nw3xu9bwm` FOREIGN KEY (`CLIENTMANAGE`) REFERENCES `clientmanage` (`MANID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gb2312;

/*Data for the table `orders` */

insert  into `orders`(`ODRID`,`CLIENTMANAGE`,`ODRDATE`,`ODRADDR`,`ODRSTATUS`) values (1,1,'2015-03-10 19:34:05','北京朝阳区','已发货'),(2,2,'2015-03-11 19:35:06','北京朝阳区','已回款'),(3,3,'2015-03-09 19:35:52','上海浦东','已发货'),(4,4,'2015-03-10 19:36:18','上海浦东','已发货'),(5,5,'2015-03-01 19:36:47','北京海淀区','已回款'),(6,6,'2015-03-02 19:37:21','广州白云区','已发货'),(7,7,'2015-03-02 19:37:47','广西桂林','已回款'),(8,8,'2015-03-03 19:38:19','福建厦门','已回款'),(9,9,'2015-03-04 19:38:54','深圳福田区','已发货'),(10,10,'2015-03-05 19:39:25','深圳南山区','已发货'),(11,11,'2015-03-07 19:39:48','山东济南','已回款'),(12,1,'2015-03-17 23:18:03','北京朝阳区','已回款'),(13,1,'2015-03-18 23:18:44','北京朝阳区','已发货'),(14,1,'2015-03-03 23:34:51','深圳南山区','已回款');

/*Table structure for table `ordersline` */

DROP TABLE IF EXISTS `ordersline`;

CREATE TABLE `ordersline` (
  `ODDID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDERS` int(11) DEFAULT NULL,
  `PRODUCT` int(11) DEFAULT NULL,
  `ODDCOUNT` int(11) DEFAULT NULL,
  `ODDUNIT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ODDID`),
  KEY `FK_8hxotc613sosv51iyi02a5tnx` (`ORDERS`),
  KEY `FK_aqkfjgskv6pm000k1wvjgq50h` (`PRODUCT`),
  CONSTRAINT `FK_8hxotc613sosv51iyi02a5tnx` FOREIGN KEY (`ORDERS`) REFERENCES `orders` (`ODRID`) ON DELETE SET NULL,
  CONSTRAINT `FK_aqkfjgskv6pm000k1wvjgq50h` FOREIGN KEY (`PRODUCT`) REFERENCES `product` (`PRODID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=gb2312;

/*Data for the table `ordersline` */

insert  into `ordersline`(`ODDID`,`ORDERS`,`PRODUCT`,`ODDCOUNT`,`ODDUNIT`) values (1,1,1,5,'台'),(2,2,1,10,'台'),(3,3,1,15,'台'),(4,4,2,3,'台'),(5,5,2,5,'台'),(6,6,2,8,'台'),(7,7,3,9,'台'),(8,8,3,13,'台'),(9,9,4,5,'部'),(10,10,4,7,'部'),(11,11,5,2,'部'),(12,1,2,8,'台'),(13,1,5,5,'部'),(14,12,3,6,'台'),(15,13,4,9,'部'),(16,1,5,10,'部'),(17,14,3,12,'台');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `PRODID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODNAME` varchar(255) DEFAULT NULL,
  `PRODTYPE` varchar(255) DEFAULT NULL,
  `PRODBATCH` varchar(255) DEFAULT NULL,
  `PRODUNIT` varchar(255) DEFAULT NULL,
  `PRODPRICE` double DEFAULT NULL,
  `PRODMEMO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PRODID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

/*Data for the table `product` */

insert  into `product`(`PRODID`,`PRODNAME`,`PRODTYPE`,`PRODBATCH`,`PRODUNIT`,`PRODPRICE`,`PRODMEMO`) values (1,'家用电脑','Y460','台式电脑','台',4666,'无'),(2,'商务电脑','V580','笔记本电脑','台',5666,'无'),(3,'娱乐电脑','T890','平板电脑','台',2999,'无'),(4,'荣耀6','Plus6','手机','部',1999,'无'),(5,'荣耀7','Plus7','手机','部',2999,'无');

/*Table structure for table `serviceclient` */

DROP TABLE IF EXISTS `serviceclient`;

CREATE TABLE `serviceclient` (
  `STID` int(11) NOT NULL,
  `STNAME` varchar(255) DEFAULT NULL,
  `NUM` int(11) DEFAULT NULL,
  PRIMARY KEY (`STID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `serviceclient` */

/*Table structure for table `servicetype` */

DROP TABLE IF EXISTS `servicetype`;

CREATE TABLE `servicetype` (
  `STID` int(11) NOT NULL AUTO_INCREMENT,
  `STNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`STID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

/*Data for the table `servicetype` */

insert  into `servicetype`(`STID`,`STNAME`) values (1,'咨询'),(2,'建议'),(3,'投诉');

/*Table structure for table `storage` */

DROP TABLE IF EXISTS `storage`;

CREATE TABLE `storage` (
  `STKID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT` int(11) DEFAULT NULL,
  `STKWAREHOUSE` varchar(255) DEFAULT NULL,
  `STKWARE` varchar(255) DEFAULT NULL,
  `STKCOUNT` int(11) DEFAULT NULL,
  `STKMEMO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`STKID`),
  KEY `FK_orp8xiiddju9irbh38g8o2kbu` (`PRODUCT`),
  CONSTRAINT `FK_orp8xiiddju9irbh38g8o2kbu` FOREIGN KEY (`PRODUCT`) REFERENCES `product` (`PRODID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

/*Data for the table `storage` */

insert  into `storage`(`STKID`,`PRODUCT`,`STKWAREHOUSE`,`STKWARE`,`STKCOUNT`,`STKMEMO`) values (1,1,'大仓库','01区',100,'无'),(2,2,'大仓库','02区',100,'无'),(3,3,'大仓库','03区',100,'无'),(4,4,'大仓库','04区',100,'无'),(5,5,'大仓库','05区',100,'无');

/*Table structure for table `sysright` */

DROP TABLE IF EXISTS `sysright`;

CREATE TABLE `sysright` (
  `RIGHTCODE` int(11) NOT NULL AUTO_INCREMENT,
  `RIGHTTYPE` varchar(255) DEFAULT NULL,
  `RIGHTTEXT` varchar(255) DEFAULT NULL,
  `RIGHTURL` varchar(255) DEFAULT NULL,
  `RIGHTTIP` varchar(255) DEFAULT NULL,
  `RIGHTNODETYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RIGHTCODE`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=gb2312;

/*Data for the table `sysright` */

insert  into `sysright`(`RIGHTCODE`,`RIGHTTYPE`,`RIGHTTEXT`,`RIGHTURL`,`RIGHTTIP`,`RIGHTNODETYPE`) values (1,'营销管理','','#','','0'),(2,'销售机会管理','','loadMarketchanceList?currentPage=1','','1'),(6,'客户开发计划','','loadClientplanList?currentPage=1','','1'),(8,'客户管理','','/pages/cManage-doSearch?fuzzySearch=init','','0'),(9,'客户信息管理','','loadClientmanageList?currentPage=1','','8'),(14,'客户流失管理','','loadClientlostList?currentPage=1','','8'),(16,'服务管理','','#','','0'),(17,'服务创建','','initclientserviceadd','','16'),(18,'服务分配','','inittosomeone?currentPage=1','','16'),(19,'服务处理','','initdeal?currentPage=1','','16'),(20,'服务反馈','','initcallback?currentPage=1','','16'),(22,'服务归档','','initserviceover?currentPage=1','','16'),(23,'统计报表','','#','','0'),(24,'客户贡献分析','','initclientdevote?currentPage=1','','23'),(25,'客户构成分析','','initclientgoucheng?currentPage=1','','23'),(26,'客户服务分析','','/pages/cLost-findLostClient','','23'),(27,'客户流失分析','','initclientlost?currentPage=1','','23'),(28,'基础数据','','#','','0'),(29,'客户等级管理','','initclientrank?currentPage=1','','28'),(30,'服务类型管理','','initservicetype?currentPage=1','','28'),(31,'客户地区管理','','initclientplance?currentPage=1','','28'),(32,'查询产品信息','','initproduct?currentPage=1','','28'),(33,'查询库存','','initkucun?currentPage=1','','28'),(34,'权限管理','','#',NULL,'0'),(35,'用户管理',NULL,'loadSysuserList?currentPage=1',NULL,'34'),(36,'角色管理',NULL,'initSysrolelist?currentPage=1',NULL,'34');

/*Table structure for table `sysrole` */

DROP TABLE IF EXISTS `sysrole`;

CREATE TABLE `sysrole` (
  `ROLEID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLENAME` varchar(255) DEFAULT NULL,
  `ROLEDESC` varchar(255) DEFAULT NULL,
  `ROLEFLAG` int(11) DEFAULT NULL,
  PRIMARY KEY (`ROLEID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gb2312;

/*Data for the table `sysrole` */

insert  into `sysrole`(`ROLEID`,`ROLENAME`,`ROLEDESC`,`ROLEFLAG`) values (1,'销售主管','部门经理',1),(2,'客户经理','业务员',1),(3,'管理员','系统管理员',1),(7,'董事长',NULL,NULL),(8,'总监',NULL,NULL);

/*Table structure for table `sysroleright` */

DROP TABLE IF EXISTS `sysroleright`;

CREATE TABLE `sysroleright` (
  `RFID` int(11) NOT NULL AUTO_INCREMENT,
  `SYSROLE` int(11) DEFAULT NULL,
  `SYSRIGHT` int(11) DEFAULT NULL,
  PRIMARY KEY (`RFID`),
  KEY `FK_jyv0vkrh91qep1tejg4rw76wh` (`SYSROLE`),
  KEY `FK_dqge8ugre332pjn2xm7k806q3` (`SYSRIGHT`),
  CONSTRAINT `FK_dqge8ugre332pjn2xm7k806q3` FOREIGN KEY (`SYSRIGHT`) REFERENCES `sysright` (`RIGHTCODE`) ON DELETE SET NULL,
  CONSTRAINT `FK_jyv0vkrh91qep1tejg4rw76wh` FOREIGN KEY (`SYSROLE`) REFERENCES `sysrole` (`ROLEID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=gb2312;

/*Data for the table `sysroleright` */

insert  into `sysroleright`(`RFID`,`SYSROLE`,`SYSRIGHT`) values (1,3,1),(2,3,2),(3,3,6),(4,3,8),(5,3,9),(6,3,14),(7,3,16),(8,3,17),(9,3,18),(10,3,19),(11,3,20),(12,3,22),(13,3,23),(14,3,24),(15,3,25),(16,3,26),(17,3,27),(18,3,28),(19,3,29),(20,3,30),(21,3,31),(22,3,32),(23,3,33),(24,3,34),(25,3,35),(26,3,36),(27,2,2),(28,2,6),(29,2,8),(30,2,9),(31,2,14),(32,2,16),(33,2,19),(34,2,20),(35,2,22),(36,2,28),(37,2,32),(38,2,33),(39,7,1),(40,7,2),(41,7,6),(42,2,1),(43,8,1),(44,8,20),(45,8,22),(46,1,1),(47,1,2),(48,1,6),(49,1,8),(50,1,9),(51,1,14),(52,1,16),(53,1,17),(54,1,18),(55,1,19),(56,1,20),(57,1,22),(58,1,23),(59,1,24),(60,1,25),(61,1,26),(62,1,27),(63,1,28),(64,1,32),(65,1,33),(66,NULL,1),(67,NULL,2),(68,NULL,6),(69,NULL,36);

/*Table structure for table `sysuser` */

DROP TABLE IF EXISTS `sysuser`;

CREATE TABLE `sysuser` (
  `USRID` int(11) NOT NULL AUTO_INCREMENT,
  `USRNAME` varchar(255) DEFAULT NULL,
  `USRPASSWORD` varchar(255) DEFAULT NULL,
  `SYSOROLE` int(11) DEFAULT NULL,
  `USRFLAG` int(11) DEFAULT NULL,
  PRIMARY KEY (`USRID`),
  KEY `FK_g7pmvoanc3vgx0ttbcc714qc8` (`SYSOROLE`),
  CONSTRAINT `FK_g7pmvoanc3vgx0ttbcc714qc8` FOREIGN KEY (`SYSOROLE`) REFERENCES `sysrole` (`ROLEID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=gb2312;

/*Data for the table `sysuser` */

insert  into `sysuser`(`USRID`,`USRNAME`,`USRPASSWORD`,`SYSOROLE`,`USRFLAG`) values (1,'admin','admin',3,1),(2,'test','test',1,1),(3,'张三','111111',2,1),(4,'李四','111111',2,1),(5,'王五','111',2,NULL),(6,'赵六','11111',2,1),(7,'CEO','123456',NULL,0),(8,'aaa','111111',1,NULL),(9,'wewre','222',2,1),(10,'ajaajjq','33',3,1),(12,'d','66666',2,NULL),(13,'ee','111',NULL,NULL),(14,'hyx','123',3,NULL),(15,'ggg','gggg',2,NULL),(16,'lllll','123456',2,NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `UID` int(11) NOT NULL AUTO_INCREMENT,
  `UNAME` varchar(255) DEFAULT NULL,
  `PWD` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
