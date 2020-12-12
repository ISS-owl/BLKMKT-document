DROP TABLE IF EXISTS `good`;
CREATE TABLE `good`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '货物id',
  `owner_id` int(11) NOT NULL COMMENT '卖家id',
  `price` int(11) NOT NULL COMMENT '价格',
  `gtype` int(2) NOT NULL COMMENT '出货收货[0 - 出货, 1 - 收货]',
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type` tinyint NOT NULL COMMENT '评论类型[0 - 对商品的直接评论，1 - 对评论的回复]',
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);
ALTER TABLE `good_comment` COMMENT '货物评论';

DROP TABLE IF EXISTS `good_comment_replay`;
CREATE TABLE `good_comment_replay` (
  `id` bigint not null auto_increment comment 'id',
  `comment_id` bigint comment '评论id',
  `reply_id` bigint comment '回复id',
  primary key (id)
);
ALTER TABLE `good_comment_replay` COMMENT '对评价的回复';

