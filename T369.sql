/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t369`;
CREATE DATABASE IF NOT EXISTS `t369` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t369`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别', 1, '男', NULL, NULL, '2023-02-23 12:53:00'),
	(2, 'sex_types', '性别', 2, '女', NULL, NULL, '2023-02-23 12:53:00'),
	(3, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2023-02-23 12:53:00'),
	(4, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2023-02-23 12:53:00'),
	(5, 'zhuangxiu_types', '装修类型', 1, '装修类型1', NULL, NULL, '2023-02-23 12:53:00'),
	(6, 'zhuangxiu_types', '装修类型', 2, '装修类型2', NULL, NULL, '2023-02-23 12:53:00'),
	(7, 'zhuangxiu_types', '装修类型', 3, '装修类型3', NULL, NULL, '2023-02-23 12:53:00'),
	(8, 'zhuangxiu_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-02-23 12:53:00'),
	(9, 'zhuangxiu_order_types', '订单类型', 101, '已支付', NULL, NULL, '2023-02-23 12:53:00'),
	(10, 'zhuangxiu_order_types', '订单类型', 102, '已退款', NULL, NULL, '2023-02-23 12:53:00'),
	(11, 'zhuangxiu_order_types', '订单类型', 103, '已完成', NULL, NULL, '2023-02-23 12:53:00'),
	(12, 'zhuangxiu_order_payment_types', '订单支付类型', 1, '余额', NULL, NULL, '2023-02-23 12:53:00'),
	(13, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-02-23 12:53:01'),
	(14, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-02-23 12:53:01'),
	(15, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2023-02-23 12:53:01'),
	(16, 'sex_types', '性别', 1, '男', NULL, NULL, '2023-02-23 12:53:01'),
	(17, 'sex_types', '性别', 2, '女', NULL, NULL, '2023-02-23 12:53:01'),
	(18, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-02-23 12:53:01'),
	(19, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-02-23 12:53:01');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `tuandui_id` int DEFAULT NULL COMMENT '装修队',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `tuandui_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, NULL, '发布内容1', 261, 1, '2023-02-23 12:53:27', '2023-02-23 12:53:27', '2023-02-23 12:53:27'),
	(2, '帖子标题2', 1, NULL, NULL, '发布内容2', 478, 1, '2023-02-23 12:53:27', '2023-02-23 12:53:27', '2023-02-23 12:53:27'),
	(3, '帖子标题3', 3, NULL, NULL, '发布内容3', 284, 1, '2023-02-23 12:53:27', '2023-02-23 12:53:27', '2023-02-23 12:53:27'),
	(4, '帖子标题4', 2, NULL, NULL, '发布内容4', 130, 1, '2023-02-23 12:53:27', '2023-02-23 12:53:27', '2023-02-23 12:53:27'),
	(5, '帖子标题5', 3, NULL, NULL, '发布内容5', 493, 1, '2023-02-23 12:53:27', '2023-02-23 12:53:27', '2023-02-23 12:53:27'),
	(6, NULL, 1, NULL, NULL, '123123', 5, 2, '2023-02-23 13:18:33', NULL, '2023-02-23 13:18:33'),
	(7, NULL, NULL, 1, NULL, '123123', 5, 2, '2023-02-23 13:19:18', NULL, '2023-02-23 13:19:18'),
	(8, NULL, 1, NULL, NULL, '1145', 5, 2, '2024-08-12 06:42:49', NULL, '2024-08-12 06:42:49');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 2, 'upload/news1.jpg', '2023-02-23 12:53:27', '公告详情1', '2023-02-23 12:53:27'),
	(2, '公告标题2', 3, 'upload/news2.jpg', '2023-02-23 12:53:27', '公告详情2', '2023-02-23 12:53:27'),
	(3, '公告标题3', 2, 'upload/news3.jpg', '2023-02-23 12:53:27', '公告详情3', '2023-02-23 12:53:27'),
	(4, '公告标题4', 3, 'upload/news4.jpg', '2023-02-23 12:53:27', '公告详情4', '2023-02-23 12:53:27'),
	(5, '公告标题5', 3, 'upload/news5.jpg', '2023-02-23 12:53:27', '公告详情5', '2023-02-23 12:53:27');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'x4e1k17iex1r9feby9oaufhzr8yw8qb4', '2023-02-23 13:00:07', '2024-08-12 07:41:14'),
	(2, 1, 'a1', 'yonghu', '用户', '906xpxxymgd30xdpquga4a55iudpa1uo', '2023-02-23 13:07:56', '2024-08-12 07:42:39'),
	(3, 1, 'a1', 'tuandui', '装修队', 'zieeghm5gqe3di7g7m41q4szptwfdl5x', '2023-02-23 13:18:53', '2024-08-12 07:42:23');

DROP TABLE IF EXISTS `tuandui`;
CREATE TABLE IF NOT EXISTS `tuandui` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `tuandui_name` varchar(200) DEFAULT NULL COMMENT '团队名称 Search111 ',
  `sex_types` int DEFAULT NULL COMMENT '负责人性别 Search111',
  `tuandui_photo` varchar(200) DEFAULT NULL COMMENT '团队头像',
  `tuandui_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `tuandui_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `tuandui_content` text COMMENT '团队介绍 ',
  `tuandui_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='装修队';

DELETE FROM `tuandui`;
INSERT INTO `tuandui` (`id`, `username`, `password`, `tuandui_name`, `sex_types`, `tuandui_photo`, `tuandui_phone`, `tuandui_email`, `tuandui_content`, `tuandui_delete`, `create_time`) VALUES
	(1, '装修队1', '123456', '团队名称1', 2, 'upload/tuandui1.jpg', '17703786901', '1@qq.com', '团队介绍1', 1, '2023-02-23 12:53:27'),
	(2, '装修队2', '123456', '团队名称2', 1, 'upload/tuandui2.jpg', '17703786902', '2@qq.com', '团队介绍2', 1, '2023-02-23 12:53:27'),
	(3, '装修队3', '123456', '团队名称3', 1, 'upload/tuandui3.jpg', '17703786903', '3@qq.com', '团队介绍3', 1, '2023-02-23 12:53:27');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `sex_types`, `yonghu_photo`, `yonghu_id_number`, `yonghu_phone`, `yonghu_email`, `new_money`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 1, 'upload/yonghu1.jpg', '410224199010102001', '17703786901', '1@qq.com', 10441.87, 1, '2023-02-23 12:53:27'),
	(2, '用户2', '123456', '用户姓名2', 1, 'upload/yonghu2.jpg', '410224199010102002', '17703786902', '2@qq.com', 116.22, 1, '2023-02-23 12:53:27'),
	(3, '用户3', '123456', '用户姓名3', 2, 'upload/yonghu3.jpg', '410224199010102003', '17703786903', '3@qq.com', 681.64, 1, '2023-02-23 12:53:27');

DROP TABLE IF EXISTS `zhuangxiu`;
CREATE TABLE IF NOT EXISTS `zhuangxiu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zhuangxiu_uuid_number` varchar(200) DEFAULT NULL COMMENT '装修编号',
  `tuandui_id` int DEFAULT NULL COMMENT '装修团队',
  `zhuangxiu_name` varchar(200) DEFAULT NULL COMMENT '装修名称  Search111 ',
  `zhuangxiu_photo` varchar(200) DEFAULT NULL COMMENT '装修照片',
  `zhuangxiu_types` int DEFAULT NULL COMMENT '装修类型 Search111',
  `zhuangxiu_new_money` decimal(10,2) DEFAULT NULL COMMENT '装修定金 ',
  `zhuangxiu_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `zhuangxiu_content` text COMMENT '装修介绍 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `zhuangxiu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='装修';

DELETE FROM `zhuangxiu`;
INSERT INTO `zhuangxiu` (`id`, `zhuangxiu_uuid_number`, `tuandui_id`, `zhuangxiu_name`, `zhuangxiu_photo`, `zhuangxiu_types`, `zhuangxiu_new_money`, `zhuangxiu_clicknum`, `zhuangxiu_content`, `shangxia_types`, `zhuangxiu_delete`, `insert_time`, `create_time`) VALUES
	(1, '1677156807840', 1, '装修名称1', 'upload/zhuangxiu1.jpg', 3, 172.88, 500, '装修介绍1', 1, 1, '2023-02-23 12:53:27', '2023-02-23 12:53:27'),
	(2, '1677156807840', 1, '装修名称2', 'upload/zhuangxiu2.jpg', 2, 65.32, 355, '装修介绍2', 1, 1, '2023-02-23 12:53:27', '2023-02-23 12:53:27'),
	(3, '1677156807819', 1, '装修名称3', 'upload/zhuangxiu3.jpg', 2, 144.68, 256, '装修介绍3', 1, 1, '2023-02-23 12:53:27', '2023-02-23 12:53:27'),
	(4, '1677156807823', 1, '装修名称4', 'upload/zhuangxiu4.jpg', 3, 401.23, 204, '装修介绍4', 1, 1, '2023-02-23 12:53:27', '2023-02-23 12:53:27'),
	(5, '1677156807853', 1, '装修名称5', 'upload/zhuangxiu5.jpg', 1, 195.18, 203, '装修介绍5', 1, 1, '2023-02-23 12:53:27', '2023-02-23 12:53:27');

DROP TABLE IF EXISTS `zhuangxiu_collection`;
CREATE TABLE IF NOT EXISTS `zhuangxiu_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhuangxiu_id` int DEFAULT NULL COMMENT '装修',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zhuangxiu_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='装修收藏';

DELETE FROM `zhuangxiu_collection`;
INSERT INTO `zhuangxiu_collection` (`id`, `zhuangxiu_id`, `yonghu_id`, `zhuangxiu_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2023-02-23 12:53:27', '2023-02-23 12:53:27'),
	(2, 2, 3, 1, '2023-02-23 12:53:27', '2023-02-23 12:53:27'),
	(3, 3, 2, 1, '2023-02-23 12:53:27', '2023-02-23 12:53:27'),
	(5, 5, 3, 1, '2023-02-23 12:53:27', '2023-02-23 12:53:27'),
	(6, 1, 1, 1, '2023-02-23 13:18:11', '2023-02-23 13:18:11'),
	(7, 2, 1, 1, '2024-08-12 06:43:08', '2024-08-12 06:43:08');

DROP TABLE IF EXISTS `zhuangxiu_order`;
CREATE TABLE IF NOT EXISTS `zhuangxiu_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhuangxiu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `zhuangxiu_id` int DEFAULT NULL COMMENT '装修',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zhuangxiu_order_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `zhuangxiu_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `zhuangxiu_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `zhuangxiu_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='装修订单';

DELETE FROM `zhuangxiu_order`;
INSERT INTO `zhuangxiu_order` (`id`, `zhuangxiu_order_uuid_number`, `zhuangxiu_id`, `yonghu_id`, `zhuangxiu_order_time`, `zhuangxiu_order_true_price`, `zhuangxiu_order_types`, `zhuangxiu_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1677157938634', 1, 1, '2023-02-16 16:00:00', 172.88, 103, 1, '2023-02-23 13:12:19', '2023-02-23 13:12:19'),
	(2, '1677158297161', 1, 1, '2023-02-23 16:00:00', 172.88, 102, 1, '2023-02-23 13:18:17', '2023-02-23 13:18:17'),
	(3, '1723444994261', 2, 1, '2024-08-11 16:00:00', 65.32, 101, 1, '2024-08-12 06:43:14', '2024-08-12 06:43:14');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
