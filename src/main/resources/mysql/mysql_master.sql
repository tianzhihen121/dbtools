-- ----------------------------
-- TABLE STRUCTURE FOR AUTH_ROLE
-- ----------------------------
DROP TABLE IF EXISTS `AUTH_ROLE`;
CREATE TABLE `AUTH_ROLE`  (
  `ID` VARCHAR(32) NOT NULL,
  `ROLE_NAME` VARCHAR(255) NULL DEFAULT NULL COMMENT '角色名字',
  `CREATE_TIME` DATETIME(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` DATETIME(0) NULL DEFAULT NULL COMMENT '更新时间',
  `OP_USERNAME` VARCHAR(255) NULL DEFAULT NULL COMMENT '操作人名字',
  `AUTH_MODE` INT(11) NULL DEFAULT NULL COMMENT '权限模式:增删改查1234/查4',
  PRIMARY KEY (`ID`)
);

-- ----------------------------
-- RECORDS OF AUTH_ROLE
-- ----------------------------
INSERT INTO `AUTH_ROLE` VALUES ('001592803923157000000000000001ar', '管理员', '2020-06-30 16:54:56', '2020-06-30 16:54:56', 'admin', 1234);
