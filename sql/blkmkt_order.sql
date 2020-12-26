-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单号',
  `good_id` int(11) NOT NULL COMMENT '货物id',
  `good_num` int(11) NOT NULL COMMENT '购买数量',
  `total_price` int(11) NOT NULL COMMENT '应付总金额',
  `consumer_id` int(11) NOT NULL COMMENT '消费者id',
  `pay_type` tinyint NOT NULL COMMENT '支付方式[1->支付宝; 2->微信; 3->货到付款]',
  `status` tinyint NOT NULL COMMENT '订单状态[0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单]',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
);
ALTER TABLE `order` COMMENT '订单表';

