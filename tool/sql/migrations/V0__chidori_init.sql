/*
Navicat MariaDB Data Transfer

Source Server         : local
Source Server Version : 50544
Source Host           : 127.0.0.1:3306
Source Database       : storm

Target Server Type    : MariaDB
Target Server Version : 50544
File Encoding         : 65001

Date: 2015-11-24 17:36:35
*/

-- ----------------------------
-- Table structure for user_we_chat_info
-- ----------------------------
DROP TABLE IF EXISTS `user_we_chat_info`;
CREATE TABLE `user_we_chat_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  `user_gid` VARCHAR(64) NOT NULL COMMENT '用户唯一id;',
  `open_id` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '用户公众号id;',
  `union_id` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '用户公众号id;',
  `subscribe_status` int(11) NOT NULL DEFAULT 0 COMMENT '关注状态: 0:未关注; 1:已关注; 2:取消关注; 3:再次关注;',
  `subscribe_way` int(11) NOT NULL DEFAULT 0 COMMENT '关注渠道: 1:公众号搜索; 2:公众号迁移; 3:名片分享; 4:扫描二维码; 5:图文页内名称点击; 6:图文页右上角菜单; 7:支付后关注; 8:其他;',
  `nick_name` VARCHAR(128) NOT NULL DEFAULT '' COMMENT '用户昵称;',
  `sex` int(11) NOT NULL DEFAULT 0 COMMENT '用户的性别: 1是男性; 2是女性; 0是未知;',
  `city` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '城市;',
  `province` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '省份;',
  `country` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '国家;',
  `head_img_url` VARCHAR(2048) NOT NULL DEFAULT '' COMMENT '用户头像;',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信关注注册表';