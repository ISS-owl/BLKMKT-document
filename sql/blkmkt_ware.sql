-- ----------------------------
-- Table structure for ware_good
-- ----------------------------
DROP TABLE IF EXISTS `ware_good`;
CREATE TABLE `ware_good` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id【主键】',
  `good_id` int(11) NOT NULL COMMENT '货物id',
  `stock_num` int(11) NOT NULL COMMENT '剩余数量',
  `stock_locked` int(11) NOT NULL COMMENT '锁定数量',
  PRIMARY KEY (`id`)
);
ALTER TABLE `ware_good` COMMENT '商品库存表';

-- ----------------------------
-- Table structure for ware_order
-- ----------------------------
DROP TABLE IF EXISTS `ware_order`;
CREATE TABLE `ware_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id【主键】',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `good_id` int(11) NOT NULL COMMENT '货物id',
  `good_num` int(11) NOT NULL COMMENT '购买数量',
  `lock_status` int(11) NOT NULL COMMENT '状态【1-已锁定  2-已解锁  3-扣减】',
  PRIMARY KEY (`id`)
);
ALTER TABLE `ware_order` COMMENT '商品订单信息';