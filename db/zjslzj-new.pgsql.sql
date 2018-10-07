-- -----------------------------------------------------
-- Table t_work					工作项目
-- -----------------------------------------------------
DROP SEQUENCE IF EXISTS seq_work CASCADE;
CREATE SEQUENCE seq_work;
DROP TABLE IF EXISTS t_work CASCADE;
CREATE TABLE t_work
(
	id							INTEGER UNIQUE DEFAULT NEXTVAL('seq_work') NOT NULL ,
	username					VARCHAR(200)			NOT NULL ,
	password					VARCHAR(200)			NOT NULL ,
	
	org_id						INTEGER					NOT NULL DEFAULT 0 ,	-- 组织ID
	type_id						INTEGER					NOT NULL DEFAULT 0 ,	-- 类型（1.质量管理 2.安全管理）
	
	name						VARCHAR(200)			NOT NULL DEFAULT '' ,	-- 项目名称
	company						VARCHAR(200)			NOT NULL DEFAULT '' ,	-- 项目单位
	contacts					VARCHAR(200)			NOT NULL DEFAULT '' ,	-- 联系人
	phone						VARCHAR(200)			NOT NULL DEFAULT '' ,	-- 电话
	email						VARCHAR(200)			NOT NULL DEFAULT '' ,	-- 邮箱
	
	nodes						TEXT					NOT NULL DEFAULT '' ,	-- 节点JSON（ID、名称、状态、是否链接、排序）
	status_id					INTEGER					NOT NULL DEFAULT 0 ,	-- 项目状态（备用）
	
	last						TIMESTAMP(0)			DEFAULT NULL ,			-- 最后登录时间
	time						TIMESTAMP(0)			NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	act							BOOLEAN					NOT NULL DEFAULT FALSE ,
	del							BOOLEAN					NOT NULL DEFAULT FALSE ,
	
	PRIMARY KEY (id)
);


-- -----------------------------------------------------
-- Table t_item					项目条目
-- -----------------------------------------------------
DROP SEQUENCE IF EXISTS seq_item CASCADE;
CREATE SEQUENCE seq_item;
DROP TABLE IF EXISTS t_item CASCADE;
CREATE TABLE t_item
(
	id							INTEGER UNIQUE DEFAULT NEXTVAL('seq_item') NOT NULL ,
	org_id						INTEGER					NOT NULL DEFAULT 0 ,	-- 组织ID
	type_id						INTEGER					NOT NULL DEFAULT 0 ,	-- 类型（1.质量管理 2.安全管理）
	work_id						INTEGER					NOT NULL DEFAULT 0 ,	-- 项目ID
	node_id						INTEGER					NOT NULL DEFAULT 0 ,	-- 节点ID
	
	no							TEXT					NOT NULL DEFAULT '' ,	-- 编号
	templates					TEXT					NOT NULL DEFAULT '' ,	-- 模板
	datas						TEXT					NOT NULL DEFAULT '' ,	-- 数据JSON
	attachments					TEXT					NOT NULL DEFAULT '' ,	-- 附件列表JSON
	status_id					INTEGER					NOT NULL DEFAULT 0 ,	-- 状态
	
	reply_id					INTEGER					NOT NULL DEFAULT 0 ,	-- 回复ID
	reply_pass					BOOLEAN					NOT NULL DEFAULT FALSE ,-- 批复状态
	reply_status_id				INTEGER					NOT NULL DEFAULT 0 ,	-- 状态（备用）
	replier_id					INTEGER					NOT NULL DEFAULT 0 ,	-- 操作者
	reply_time					TIMESTAMP(0)			DEFAULT NULL ,
	
	last						TIMESTAMP(0)			DEFAULT NULL ,
	time						TIMESTAMP(0)			NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	act							BOOLEAN					NOT NULL DEFAULT TRUE ,
	del							BOOLEAN					NOT NULL DEFAULT FALSE ,
	
	PRIMARY KEY (id)
);


-- -----------------------------------------------------
-- Table t_reply				条目回复
-- -----------------------------------------------------
DROP SEQUENCE IF EXISTS seq_reply CASCADE;
CREATE SEQUENCE seq_reply;
DROP TABLE IF EXISTS t_reply CASCADE;
CREATE TABLE t_reply
(
	id							INTEGER UNIQUE DEFAULT NEXTVAL('seq_reply') NOT NULL ,
	org_id						INTEGER					NOT NULL DEFAULT 0 ,	-- 组织ID
	type_id						INTEGER					NOT NULL DEFAULT 0 ,	-- 类型（1.质量管理 2.安全管理）
	work_id						INTEGER					NOT NULL DEFAULT 0 ,	-- 项目ID
	node_id						INTEGER					NOT NULL DEFAULT 0 ,	-- 节点ID
	item_id						INTEGER					NOT NULL DEFAULT 0 ,	-- 条目ID
	
	pass						BOOLEAN					NOT NULL DEFAULT FALSE ,-- 批复状态
	no							TEXT					NOT NULL DEFAULT '' ,	-- 编号
	templates					TEXT					NOT NULL DEFAULT '' ,	-- 模板
	datas						TEXT					NOT NULL DEFAULT '' ,	-- 数据JSON
	attachments					TEXT					NOT NULL DEFAULT '' ,	-- 附件列表JSON
	status_id					INTEGER					NOT NULL DEFAULT 0 ,	-- 状态（备用）
	replier_id					INTEGER					NOT NULL DEFAULT 0 ,	-- 操作者
	
	last						TIMESTAMP(0)			DEFAULT NULL ,
	time						TIMESTAMP(0)			NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	act							BOOLEAN					NOT NULL DEFAULT TRUE ,
	del							BOOLEAN					NOT NULL DEFAULT FALSE ,
	
	PRIMARY KEY (id)
);


-- -----------------------------------------------------
-- Table t_notify				消息表
-- -----------------------------------------------------
DROP SEQUENCE IF EXISTS seq_notify CASCADE;
CREATE SEQUENCE seq_notify;
DROP TABLE IF EXISTS t_notify CASCADE;
CREATE TABLE t_notify
(
	id							INTEGER UNIQUE DEFAULT NEXTVAL('seq_notify') NOT NULL ,
	type_id						INTEGER					NOT NULL DEFAULT 0 ,	-- 1:管理员发送 2:项目用户发送
	uid							INTEGER					NOT NULL DEFAULT 0 ,
	content						TEXT					NOT NULL DEFAULT '' ,
	url							TEXT					NOT NULL DEFAULT '' ,
	read						BOOLEAN					NOT NULL DEFAULT FALSE ,

  	last						TIMESTAMP(0)			DEFAULT NULL ,
	time						TIMESTAMP(0)			NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	act							BOOLEAN					NOT NULL DEFAULT TRUE ,
	del							BOOLEAN					NOT NULL DEFAULT FALSE ,
	
	PRIMARY KEY (id)
);


-- -----------------------------------------------------
-- Table t_attachments			附件
-- -----------------------------------------------------
DROP SEQUENCE IF EXISTS seq_attachments CASCADE;
CREATE SEQUENCE seq_attachments;
DROP TABLE IF EXISTS t_attachments CASCADE;
CREATE TABLE t_attachments
(
	id							INTEGER UNIQUE DEFAULT NEXTVAL('seq_attachments') NOT NULL ,
	up_id						INTEGER					NOT NULL DEFAULT 0 ,
	up_name						TEXT					NOT NULL DEFAULT '' ,
	filename					TEXT					NOT NULL DEFAULT '' ,
	url							TEXT					NOT NULL DEFAULT '' ,
	ext							TEXT					NOT NULL DEFAULT '' ,
	size						INTEGER					NOT NULL DEFAULT 0 ,

	last						TIMESTAMP(0)			DEFAULT NULL ,
	time						TIMESTAMP(0)			NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	act							BOOLEAN					NOT NULL DEFAULT TRUE ,
	del							BOOLEAN					NOT NULL DEFAULT FALSE ,
	
	PRIMARY KEY (id)
);







