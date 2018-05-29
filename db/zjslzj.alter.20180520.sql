alter table t_project add column type INTEGER NOT NULL DEFAULT 0;
update t_project set type=1;


alter table t_project add column n10005 INTEGER NOT NULL DEFAULT 0;
alter table t_project add column n10006 INTEGER NOT NULL DEFAULT 0;
alter table t_project add column n10007 INTEGER NOT NULL DEFAULT 0;
alter table t_project add column n10008 INTEGER NOT NULL DEFAULT 0;
alter table t_project add column s10005 INTEGER NOT NULL DEFAULT 0;
alter table t_project add column s10006 INTEGER NOT NULL DEFAULT 0;
alter table t_project add column s10007 INTEGER NOT NULL DEFAULT 0;
alter table t_project add column s10008 INTEGER NOT NULL DEFAULT 0;


-- -----------------------------------------------------
-- Table t_flow10005					工作流文档
-- -----------------------------------------------------
DROP SEQUENCE IF EXISTS seq_flow10005 CASCADE;
CREATE SEQUENCE seq_flow10005;
DROP TABLE IF EXISTS t_flow10005 CASCADE;
CREATE TABLE t_flow10005
(
	id							BIGINT UNIQUE DEFAULT NEXTVAL('seq_flow10005') NOT NULL ,
	pid							BIGINT NOT NULL DEFAULT 0 , -- project id
	
	name						TEXT DEFAULT '' , -- 工程名称

	act							BOOLEAN NOT NULL DEFAULT false ,
	del							BOOLEAN NOT NULL DEFAULT false ,
	time						TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	PRIMARY KEY (id)
);


-- -----------------------------------------------------
-- Table t_flow10006					工作流文档
-- -----------------------------------------------------
DROP SEQUENCE IF EXISTS seq_flow10006 CASCADE;
CREATE SEQUENCE seq_flow10006;
DROP TABLE IF EXISTS t_flow10006 CASCADE;
CREATE TABLE t_flow10006
(
	id							BIGINT UNIQUE DEFAULT NEXTVAL('seq_flow10006') NOT NULL ,
	pid							BIGINT NOT NULL DEFAULT 0 , -- project id
	
	name						TEXT DEFAULT '' , -- 工程名称

	act							BOOLEAN NOT NULL DEFAULT false ,
	del							BOOLEAN NOT NULL DEFAULT false ,
	time						TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	PRIMARY KEY (id)
);


-- -----------------------------------------------------
-- Table t_flow10007					工作流文档
-- -----------------------------------------------------
DROP SEQUENCE IF EXISTS seq_flow10007 CASCADE;
CREATE SEQUENCE seq_flow10007;
DROP TABLE IF EXISTS t_flow10007 CASCADE;
CREATE TABLE t_flow10007
(
	id							BIGINT UNIQUE DEFAULT NEXTVAL('seq_flow10007') NOT NULL ,
	pid							BIGINT NOT NULL DEFAULT 0 , -- project id
	
	name						TEXT DEFAULT '' , -- 工程名称

	act							BOOLEAN NOT NULL DEFAULT false ,
	del							BOOLEAN NOT NULL DEFAULT false ,
	time						TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	PRIMARY KEY (id)
);


-- -----------------------------------------------------
-- Table t_flow10008					工作流文档
-- -----------------------------------------------------
DROP SEQUENCE IF EXISTS seq_flow10008 CASCADE;
CREATE SEQUENCE seq_flow10008;
DROP TABLE IF EXISTS t_flow10008 CASCADE;
CREATE TABLE t_flow10008
(
	id							BIGINT UNIQUE DEFAULT NEXTVAL('seq_flow10008') NOT NULL ,
	pid							BIGINT NOT NULL DEFAULT 0 , -- project id
	
	name						TEXT DEFAULT '' , -- 工程名称

	act							BOOLEAN NOT NULL DEFAULT false ,
	del							BOOLEAN NOT NULL DEFAULT false ,
	time						TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	PRIMARY KEY (id)
);


-- -----------------------------------------------------
-- Table t_reply10005				工作流批复
-- -----------------------------------------------------
DROP SEQUENCE IF EXISTS seq_reply10005 CASCADE;
CREATE SEQUENCE seq_reply10005;
DROP TABLE IF EXISTS t_reply10005 CASCADE;
CREATE TABLE t_reply10005
(
	id							BIGINT UNIQUE DEFAULT NEXTVAL('seq_reply10005') NOT NULL ,
	pid							BIGINT NOT NULL DEFAULT 0 , -- project id
	fid							BIGINT NOT NULL DEFAULT 0 , -- flow id
	no 							TEXT DEFAULT '' , -- 编号
	date 						TEXT DEFAULT '' , -- 日期
	content 					TEXT DEFAULT '' , -- 批复
	uid 						BIGINT NOT NULL DEFAULT 0 , -- 审批者
	act							BOOLEAN NOT NULL DEFAULT false , -- 审批状态
	del							BOOLEAN NOT NULL DEFAULT false ,
	time						TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	PRIMARY KEY (id)
);


-- -----------------------------------------------------
-- Table t_reply10006				工作流批复
-- -----------------------------------------------------
DROP SEQUENCE IF EXISTS seq_reply10006 CASCADE;
CREATE SEQUENCE seq_reply10006;
DROP TABLE IF EXISTS t_reply10006 CASCADE;
CREATE TABLE t_reply10006
(
	id							BIGINT UNIQUE DEFAULT NEXTVAL('seq_reply10006') NOT NULL ,
	pid							BIGINT NOT NULL DEFAULT 0 , -- project id
	fid							BIGINT NOT NULL DEFAULT 0 , -- flow id
	no 							TEXT DEFAULT '' , -- 编号
	date 						TEXT DEFAULT '' , -- 日期
	content 					TEXT DEFAULT '' , -- 批复
	uid 						BIGINT NOT NULL DEFAULT 0 , -- 审批者
	act							BOOLEAN NOT NULL DEFAULT false , -- 审批状态
	del							BOOLEAN NOT NULL DEFAULT false ,
	time						TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	PRIMARY KEY (id)
);


-- -----------------------------------------------------
-- Table t_reply10007				工作流批复
-- -----------------------------------------------------
DROP SEQUENCE IF EXISTS seq_reply10007 CASCADE;
CREATE SEQUENCE seq_reply10007;
DROP TABLE IF EXISTS t_reply10007 CASCADE;
CREATE TABLE t_reply10007
(
	id							BIGINT UNIQUE DEFAULT NEXTVAL('seq_reply10007') NOT NULL ,
	pid							BIGINT NOT NULL DEFAULT 0 , -- project id
	fid							BIGINT NOT NULL DEFAULT 0 , -- flow id
	no 							TEXT DEFAULT '' , -- 编号
	date 						TEXT DEFAULT '' , -- 日期
	content 					TEXT DEFAULT '' , -- 批复
	uid 						BIGINT NOT NULL DEFAULT 0 , -- 审批者
	act							BOOLEAN NOT NULL DEFAULT false , -- 审批状态
	del							BOOLEAN NOT NULL DEFAULT false ,
	time						TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	PRIMARY KEY (id)
);


-- -----------------------------------------------------
-- Table t_reply10008				工作流批复
-- -----------------------------------------------------
DROP SEQUENCE IF EXISTS seq_reply10008 CASCADE;
CREATE SEQUENCE seq_reply10008;
DROP TABLE IF EXISTS t_reply10008 CASCADE;
CREATE TABLE t_reply10008
(
	id							BIGINT UNIQUE DEFAULT NEXTVAL('seq_reply10008') NOT NULL ,
	pid							BIGINT NOT NULL DEFAULT 0 , -- project id
	fid							BIGINT NOT NULL DEFAULT 0 , -- flow id
	no 							TEXT DEFAULT '' , -- 编号
	date 						TEXT DEFAULT '' , -- 日期
	content 					TEXT DEFAULT '' , -- 批复
	uid 						BIGINT NOT NULL DEFAULT 0 , -- 审批者
	act							BOOLEAN NOT NULL DEFAULT false , -- 审批状态
	del							BOOLEAN NOT NULL DEFAULT false ,
	time						TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	PRIMARY KEY (id)
);