DROP TABLE IF EXISTS `good`;
CREATE TABLE `good`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '货物id',
  `owner_id` int(11) NOT NULL COMMENT '卖家id',
  `price` int(11) NOT NULL COMMENT '价格',
  `gtype` int(2) NOT NULL COMMENT '出货收货[0 - 出货, 1 - 收货]',
  `status` int(2) NOT NULL COMMENT '是否上架[0 - 上架, 1 - 未上架]',
  `category` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类',
  `total_num` int(11) NOT NULL COMMENT '总数',
  `current_num` int(11) NOT NULL COMMENT '当前数量',
  `like_num` int(11) COMMENT '点赞数',
  `good_img_url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品图片的url', 
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
);
ALTER TABLE `good` COMMENT '货物表';

DROP TABLE IF EXISTS `good_comment`;
CREATE TABLE `good_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `good_id` int(11) NOT NULL COMMENT '商品id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `content` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内容',
  `like_num` int(11) NULL DEFAULT NULL COMMENT '点赞数',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
);
ALTER TABLE `good_comment` COMMENT '货物评论';

DROP TABLE IF EXISTS `comment_replay`;
CREATE TABLE `comment_replay` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `comment_id` int(11) NOT NULL COMMENT '评论id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `content` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内容',
  `like_num` int(11) NULL DEFAULT NULL COMMENT '点赞数',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
);
ALTER TABLE `comment_replay` COMMENT '对评价的回复';

