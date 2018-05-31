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

alter table t_project add column n77 INTEGER NOT NULL DEFAULT 0;
alter table t_project add column s77 INTEGER NOT NULL DEFAULT 0;

-- -----------------------------------------------------
-- Table t_flow77					工作流文档
-- -----------------------------------------------------
DROP SEQUENCE IF EXISTS seq_flow77 CASCADE;
CREATE SEQUENCE seq_flow77;
DROP TABLE IF EXISTS t_flow77 CASCADE;
CREATE TABLE t_flow77
(
	id							BIGINT UNIQUE DEFAULT NEXTVAL('seq_flow77') NOT NULL ,
	pid							BIGINT NOT NULL DEFAULT 0 , -- project id
	
	no 							TEXT DEFAULT '' , -- 编号
	signer						TEXT DEFAULT '' , -- 签发者, 3:核定人
	date 						TEXT DEFAULT '' , -- 日期
	content 					TEXT DEFAULT '' , -- 内容, 3:核定意见
	keywords					TEXT DEFAULT '' , -- 关键词
	attachments					TEXT DEFAULT '' , -- 附件列表

	uid							BIGINT NOT NULL DEFAULT 0 , -- 最后审批者
	replytime					TIMESTAMP(0) DEFAULT NULL , -- 最后审批时间
	replyid						BIGINT NOT NULL DEFAULT 0 , -- 批复回应ID
	last						TIMESTAMP(0) DEFAULT NULL , -- 最后修改

	act							BOOLEAN NOT NULL DEFAULT false ,
	del							BOOLEAN NOT NULL DEFAULT false ,
	time						TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	PRIMARY KEY (id)
);


-- -----------------------------------------------------
-- Table t_reply77				工作流批复
-- -----------------------------------------------------
DROP SEQUENCE IF EXISTS seq_reply77 CASCADE;
CREATE SEQUENCE seq_reply77;
DROP TABLE IF EXISTS t_reply77 CASCADE;
CREATE TABLE t_reply77
(
	id							BIGINT UNIQUE DEFAULT NEXTVAL('seq_reply77') NOT NULL ,
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
-- Table t_flow10001					工作流文档
-- -----------------------------------------------------
DROP SEQUENCE IF EXISTS seq_flow10001 CASCADE;
CREATE SEQUENCE seq_flow10001;
DROP TABLE IF EXISTS t_flow10001 CASCADE;
CREATE TABLE t_flow10001
(
	id							BIGINT UNIQUE DEFAULT NEXTVAL('seq_flow10001') NOT NULL ,
	pid							BIGINT NOT NULL DEFAULT 0 , -- project id
	
	name						TEXT DEFAULT '' , -- 工程名称
	
	t1							TEXT DEFAULT '' ,
	t2							TEXT DEFAULT '' ,
	t3							TEXT DEFAULT '' ,
	t4							TEXT DEFAULT '' ,
	t5							TEXT DEFAULT '' ,
	t6							TEXT DEFAULT '' ,
	t7							TEXT DEFAULT '' ,
	t8							TEXT DEFAULT '' ,
	t9							TEXT DEFAULT '' ,
	t10							TEXT DEFAULT '' ,
	t11							TEXT DEFAULT '' ,
	t12							TEXT DEFAULT '' ,
	t13							TEXT DEFAULT '' ,
	t14							TEXT DEFAULT '' ,
	t15							TEXT DEFAULT '' ,
	t16							TEXT DEFAULT '' ,
	t17							TEXT DEFAULT '' ,
	t18							TEXT DEFAULT '' ,
	t19							TEXT DEFAULT '' ,
	t20							TEXT DEFAULT '' ,
	t21							TEXT DEFAULT '' ,
	t22							TEXT DEFAULT '' ,
	t23							TEXT DEFAULT '' ,
	t24							TEXT DEFAULT '' ,
	t25							TEXT DEFAULT '' ,
	t26							TEXT DEFAULT '' ,
	t27							TEXT DEFAULT '' ,
	t28							TEXT DEFAULT '' ,
	t29							TEXT DEFAULT '' ,
	t30							TEXT DEFAULT '' ,
	t31							TEXT DEFAULT '' ,
	t32							TEXT DEFAULT '' ,
	t33							TEXT DEFAULT '' ,
	t34							TEXT DEFAULT '' ,
	t35							TEXT DEFAULT '' ,
	t36							TEXT DEFAULT '' ,
	t37							TEXT DEFAULT '' ,
	t38							TEXT DEFAULT '' ,
	t39							TEXT DEFAULT '' ,
	
	uid							BIGINT NOT NULL DEFAULT 0 , -- 最后审批者
	replytime					TIMESTAMP(0) DEFAULT NULL , -- 最后审批时间
	replyid						BIGINT NOT NULL DEFAULT 0 , -- 批复回应ID
	last						TIMESTAMP(0) DEFAULT NULL , -- 最后修改

	act							BOOLEAN NOT NULL DEFAULT false ,
	del							BOOLEAN NOT NULL DEFAULT false ,
	time						TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	PRIMARY KEY (id)
);


-- -----------------------------------------------------
-- Table t_flow10002					工作流文档
-- -----------------------------------------------------
DROP SEQUENCE IF EXISTS seq_flow10002 CASCADE;
CREATE SEQUENCE seq_flow10002;
DROP TABLE IF EXISTS t_flow10002 CASCADE;
CREATE TABLE t_flow10002
(
	id							BIGINT UNIQUE DEFAULT NEXTVAL('seq_flow10002') NOT NULL ,
	pid							BIGINT NOT NULL DEFAULT 0 , -- project id
	
	name						TEXT DEFAULT '' , -- 工程名称
	
	t1							TEXT DEFAULT '' ,
	t2							TEXT DEFAULT '' ,
	t3							TEXT DEFAULT '' ,
	t4							TEXT DEFAULT '' ,
	t5							TEXT DEFAULT '' ,
	t6							TEXT DEFAULT '' ,
	t7							TEXT DEFAULT '' ,
	t8							TEXT DEFAULT '' ,
	t9							TEXT DEFAULT '' ,
	t10							TEXT DEFAULT '' ,
	t11							TEXT DEFAULT '' ,
	t12							TEXT DEFAULT '' ,
	t13							TEXT DEFAULT '' ,
	t14							TEXT DEFAULT '' ,
	t15							TEXT DEFAULT '' ,
	t16							TEXT DEFAULT '' ,
	t17							TEXT DEFAULT '' ,
	t18							TEXT DEFAULT '' ,
	t19							TEXT DEFAULT '' ,
	t20							TEXT DEFAULT '' ,
	t21							TEXT DEFAULT '' ,
	t22							TEXT DEFAULT '' ,
	t23							TEXT DEFAULT '' ,
	t24							TEXT DEFAULT '' ,
	t25							TEXT DEFAULT '' ,
	t26							TEXT DEFAULT '' ,
	t27							TEXT DEFAULT '' ,
	t28							TEXT DEFAULT '' ,
	t29							TEXT DEFAULT '' ,
	t30							TEXT DEFAULT '' ,
	t31							TEXT DEFAULT '' ,
	t32							TEXT DEFAULT '' ,
	t33							TEXT DEFAULT '' ,
	t34							TEXT DEFAULT '' ,
	t35							TEXT DEFAULT '' ,
	t36							TEXT DEFAULT '' ,
	t37							TEXT DEFAULT '' ,
	t38							TEXT DEFAULT '' ,
	t39							TEXT DEFAULT '' ,
	
	uid							BIGINT NOT NULL DEFAULT 0 , -- 最后审批者
	replytime					TIMESTAMP(0) DEFAULT NULL , -- 最后审批时间
	replyid						BIGINT NOT NULL DEFAULT 0 , -- 批复回应ID
	last						TIMESTAMP(0) DEFAULT NULL , -- 最后修改

	act							BOOLEAN NOT NULL DEFAULT false ,
	del							BOOLEAN NOT NULL DEFAULT false ,
	time						TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	PRIMARY KEY (id)
);


-- -----------------------------------------------------
-- Table t_flow10003					工作流文档
-- -----------------------------------------------------
DROP SEQUENCE IF EXISTS seq_flow10003 CASCADE;
CREATE SEQUENCE seq_flow10003;
DROP TABLE IF EXISTS t_flow10003 CASCADE;
CREATE TABLE t_flow10003
(
	id							BIGINT UNIQUE DEFAULT NEXTVAL('seq_flow10003') NOT NULL ,
	pid							BIGINT NOT NULL DEFAULT 0 , -- project id
	
	name						TEXT DEFAULT '' , -- 工程名称
	
	t1							TEXT DEFAULT '' ,
	t2							TEXT DEFAULT '' ,
	t3							TEXT DEFAULT '' ,
	t4							TEXT DEFAULT '' ,
	t5							TEXT DEFAULT '' ,
	t6							TEXT DEFAULT '' ,
	t7							TEXT DEFAULT '' ,
	t8							TEXT DEFAULT '' ,
	t9							TEXT DEFAULT '' ,
	t10							TEXT DEFAULT '' ,
	t11							TEXT DEFAULT '' ,
	t12							TEXT DEFAULT '' ,
	t13							TEXT DEFAULT '' ,
	t14							TEXT DEFAULT '' ,
	t15							TEXT DEFAULT '' ,
	t16							TEXT DEFAULT '' ,
	t17							TEXT DEFAULT '' ,
	t18							TEXT DEFAULT '' ,
	t19							TEXT DEFAULT '' ,
	t20							TEXT DEFAULT '' ,
	t21							TEXT DEFAULT '' ,
	t22							TEXT DEFAULT '' ,
	t23							TEXT DEFAULT '' ,
	t24							TEXT DEFAULT '' ,
	t25							TEXT DEFAULT '' ,
	t26							TEXT DEFAULT '' ,
	t27							TEXT DEFAULT '' ,
	t28							TEXT DEFAULT '' ,
	t29							TEXT DEFAULT '' ,
	t30							TEXT DEFAULT '' ,
	t31							TEXT DEFAULT '' ,
	t32							TEXT DEFAULT '' ,
	t33							TEXT DEFAULT '' ,
	t34							TEXT DEFAULT '' ,
	t35							TEXT DEFAULT '' ,
	t36							TEXT DEFAULT '' ,
	t37							TEXT DEFAULT '' ,
	t38							TEXT DEFAULT '' ,
	t39							TEXT DEFAULT '' ,
	t40							TEXT DEFAULT '' ,
	t41							TEXT DEFAULT '' ,
	t42							TEXT DEFAULT '' ,
	t43							TEXT DEFAULT '' ,
	t44							TEXT DEFAULT '' ,
	t45							TEXT DEFAULT '' ,
	t46							TEXT DEFAULT '' ,
	t47							TEXT DEFAULT '' ,
	t48							TEXT DEFAULT '' ,
	t49							TEXT DEFAULT '' ,
	t50							TEXT DEFAULT '' ,
	t51							TEXT DEFAULT '' ,
	t52							TEXT DEFAULT '' ,
	t53							TEXT DEFAULT '' ,
	t54							TEXT DEFAULT '' ,
	t55							TEXT DEFAULT '' ,
	t56							TEXT DEFAULT '' ,
	t57							TEXT DEFAULT '' ,
	t58							TEXT DEFAULT '' ,
	t59							TEXT DEFAULT '' ,
	t60							TEXT DEFAULT '' ,
	t61							TEXT DEFAULT '' ,
	t62							TEXT DEFAULT '' ,
	t63							TEXT DEFAULT '' ,
	t64							TEXT DEFAULT '' ,
	t65							TEXT DEFAULT '' ,
	t66							TEXT DEFAULT '' ,
	t67							TEXT DEFAULT '' ,
	t68							TEXT DEFAULT '' ,
	t69							TEXT DEFAULT '' ,
	t70							TEXT DEFAULT '' ,
	
	uid							BIGINT NOT NULL DEFAULT 0 , -- 最后审批者
	replytime					TIMESTAMP(0) DEFAULT NULL , -- 最后审批时间
	replyid						BIGINT NOT NULL DEFAULT 0 , -- 批复回应ID
	last						TIMESTAMP(0) DEFAULT NULL , -- 最后修改

	act							BOOLEAN NOT NULL DEFAULT false ,
	del							BOOLEAN NOT NULL DEFAULT false ,
	time						TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	PRIMARY KEY (id)
);


-- -----------------------------------------------------
-- Table t_flow10004					工作流文档
-- -----------------------------------------------------
DROP SEQUENCE IF EXISTS seq_flow10004 CASCADE;
CREATE SEQUENCE seq_flow10004;
DROP TABLE IF EXISTS t_flow10004 CASCADE;
CREATE TABLE t_flow10004
(
	id							BIGINT UNIQUE DEFAULT NEXTVAL('seq_flow10004') NOT NULL ,
	pid							BIGINT NOT NULL DEFAULT 0 , -- project id
	
	name						TEXT DEFAULT '' , -- 工程名称
	
	t1							TEXT DEFAULT '' ,
	t2							TEXT DEFAULT '' ,
	t3							TEXT DEFAULT '' ,
	t4							TEXT DEFAULT '' ,
	t5							TEXT DEFAULT '' ,
	t6							TEXT DEFAULT '' ,
	t7							TEXT DEFAULT '' ,
	t8							TEXT DEFAULT '' ,
	t9							TEXT DEFAULT '' ,
	t10							TEXT DEFAULT '' ,
	t11							TEXT DEFAULT '' ,
	t12							TEXT DEFAULT '' ,
	t13							TEXT DEFAULT '' ,
	t14							TEXT DEFAULT '' ,
	t15							TEXT DEFAULT '' ,
	t16							TEXT DEFAULT '' ,
	t17							TEXT DEFAULT '' ,
	t18							TEXT DEFAULT '' ,
	t19							TEXT DEFAULT '' ,
	t20							TEXT DEFAULT '' ,
	t21							TEXT DEFAULT '' ,
	t22							TEXT DEFAULT '' ,
	t23							TEXT DEFAULT '' ,
	t24							TEXT DEFAULT '' ,
	t25							TEXT DEFAULT '' ,
	t26							TEXT DEFAULT '' ,
	t27							TEXT DEFAULT '' ,
	t28							TEXT DEFAULT '' ,
	t29							TEXT DEFAULT '' ,
	t30							TEXT DEFAULT '' ,
	t31							TEXT DEFAULT '' ,
	t32							TEXT DEFAULT '' ,
	t33							TEXT DEFAULT '' ,
	t34							TEXT DEFAULT '' ,
	t35							TEXT DEFAULT '' ,
	t36							TEXT DEFAULT '' ,
	t37							TEXT DEFAULT '' ,
	t38							TEXT DEFAULT '' ,
	t39							TEXT DEFAULT '' ,
	
	uid							BIGINT NOT NULL DEFAULT 0 , -- 最后审批者
	replytime					TIMESTAMP(0) DEFAULT NULL , -- 最后审批时间
	replyid						BIGINT NOT NULL DEFAULT 0 , -- 批复回应ID
	last						TIMESTAMP(0) DEFAULT NULL , -- 最后修改

	act							BOOLEAN NOT NULL DEFAULT false ,
	del							BOOLEAN NOT NULL DEFAULT false ,
	time						TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	PRIMARY KEY (id)
);


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
	
	t1							TEXT DEFAULT '' ,
	t2							TEXT DEFAULT '' ,
	t3							TEXT DEFAULT '' ,
	t4							TEXT DEFAULT '' ,
	t5							TEXT DEFAULT '' ,
	t6							TEXT DEFAULT '' ,
	t7							TEXT DEFAULT '' ,
	t8							TEXT DEFAULT '' ,
	t9							TEXT DEFAULT '' ,
	t10							TEXT DEFAULT '' ,
	t11							TEXT DEFAULT '' ,
	t12							TEXT DEFAULT '' ,
	t13							TEXT DEFAULT '' ,
	t14							TEXT DEFAULT '' ,
	t15							TEXT DEFAULT '' ,
	t16							TEXT DEFAULT '' ,
	t17							TEXT DEFAULT '' ,
	t18							TEXT DEFAULT '' ,
	t19							TEXT DEFAULT '' ,
	t20							TEXT DEFAULT '' ,
	t21							TEXT DEFAULT '' ,
	t22							TEXT DEFAULT '' ,
	t23							TEXT DEFAULT '' ,
	t24							TEXT DEFAULT '' ,
	t25							TEXT DEFAULT '' ,
	t26							TEXT DEFAULT '' ,
	t27							TEXT DEFAULT '' ,
	t28							TEXT DEFAULT '' ,
	t29							TEXT DEFAULT '' ,
	t30							TEXT DEFAULT '' ,
	t31							TEXT DEFAULT '' ,
	t32							TEXT DEFAULT '' ,
	t33							TEXT DEFAULT '' ,
	t34							TEXT DEFAULT '' ,
	t35							TEXT DEFAULT '' ,
	t36							TEXT DEFAULT '' ,
	t37							TEXT DEFAULT '' ,
	t38							TEXT DEFAULT '' ,
	t39							TEXT DEFAULT '' ,
	
	uid							BIGINT NOT NULL DEFAULT 0 , -- 最后审批者
	replytime					TIMESTAMP(0) DEFAULT NULL , -- 最后审批时间
	replyid						BIGINT NOT NULL DEFAULT 0 , -- 批复回应ID
	last						TIMESTAMP(0) DEFAULT NULL , -- 最后修改

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
	
	t1							TEXT DEFAULT '' ,
	t2							TEXT DEFAULT '' ,
	t3							TEXT DEFAULT '' ,
	t4							TEXT DEFAULT '' ,
	t5							TEXT DEFAULT '' ,
	t6							TEXT DEFAULT '' ,
	t7							TEXT DEFAULT '' ,
	t8							TEXT DEFAULT '' ,
	t9							TEXT DEFAULT '' ,
	t10							TEXT DEFAULT '' ,
	t11							TEXT DEFAULT '' ,
	t12							TEXT DEFAULT '' ,
	t13							TEXT DEFAULT '' ,
	t14							TEXT DEFAULT '' ,
	t15							TEXT DEFAULT '' ,
	t16							TEXT DEFAULT '' ,
	t17							TEXT DEFAULT '' ,
	t18							TEXT DEFAULT '' ,
	t19							TEXT DEFAULT '' ,
	t20							TEXT DEFAULT '' ,
	t21							TEXT DEFAULT '' ,
	t22							TEXT DEFAULT '' ,
	t23							TEXT DEFAULT '' ,
	t24							TEXT DEFAULT '' ,
	t25							TEXT DEFAULT '' ,
	t26							TEXT DEFAULT '' ,
	t27							TEXT DEFAULT '' ,
	t28							TEXT DEFAULT '' ,
	t29							TEXT DEFAULT '' ,
	t30							TEXT DEFAULT '' ,
	t31							TEXT DEFAULT '' ,
	t32							TEXT DEFAULT '' ,
	t33							TEXT DEFAULT '' ,
	t34							TEXT DEFAULT '' ,
	t35							TEXT DEFAULT '' ,
	t36							TEXT DEFAULT '' ,
	t37							TEXT DEFAULT '' ,
	t38							TEXT DEFAULT '' ,
	t39							TEXT DEFAULT '' ,
	
	uid							BIGINT NOT NULL DEFAULT 0 , -- 最后审批者
	replytime					TIMESTAMP(0) DEFAULT NULL , -- 最后审批时间
	replyid						BIGINT NOT NULL DEFAULT 0 , -- 批复回应ID
	last						TIMESTAMP(0) DEFAULT NULL , -- 最后修改

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
	
	t1							TEXT DEFAULT '' ,
	t2							TEXT DEFAULT '' ,
	t3							TEXT DEFAULT '' ,
	t4							TEXT DEFAULT '' ,
	t5							TEXT DEFAULT '' ,
	t6							TEXT DEFAULT '' ,
	t7							TEXT DEFAULT '' ,
	t8							TEXT DEFAULT '' ,
	t9							TEXT DEFAULT '' ,
	t10							TEXT DEFAULT '' ,
	t11							TEXT DEFAULT '' ,
	t12							TEXT DEFAULT '' ,
	t13							TEXT DEFAULT '' ,
	t14							TEXT DEFAULT '' ,
	t15							TEXT DEFAULT '' ,
	t16							TEXT DEFAULT '' ,
	t17							TEXT DEFAULT '' ,
	t18							TEXT DEFAULT '' ,
	t19							TEXT DEFAULT '' ,
	t20							TEXT DEFAULT '' ,
	t21							TEXT DEFAULT '' ,
	t22							TEXT DEFAULT '' ,
	t23							TEXT DEFAULT '' ,
	t24							TEXT DEFAULT '' ,
	t25							TEXT DEFAULT '' ,
	t26							TEXT DEFAULT '' ,
	t27							TEXT DEFAULT '' ,
	t28							TEXT DEFAULT '' ,
	t29							TEXT DEFAULT '' ,
	t30							TEXT DEFAULT '' ,
	t31							TEXT DEFAULT '' ,
	t32							TEXT DEFAULT '' ,
	t33							TEXT DEFAULT '' ,
	t34							TEXT DEFAULT '' ,
	t35							TEXT DEFAULT '' ,
	t36							TEXT DEFAULT '' ,
	t37							TEXT DEFAULT '' ,
	t38							TEXT DEFAULT '' ,
	t39							TEXT DEFAULT '' ,
	
	uid							BIGINT NOT NULL DEFAULT 0 , -- 最后审批者
	replytime					TIMESTAMP(0) DEFAULT NULL , -- 最后审批时间
	replyid						BIGINT NOT NULL DEFAULT 0 , -- 批复回应ID
	last						TIMESTAMP(0) DEFAULT NULL , -- 最后修改

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

	t1							TEXT DEFAULT '' ,
	t2							TEXT DEFAULT '' ,
	t3							TEXT DEFAULT '' ,
	t4							TEXT DEFAULT '' ,
	t5							TEXT DEFAULT '' ,
	t6							TEXT DEFAULT '' ,
	t7							TEXT DEFAULT '' ,
	t8							TEXT DEFAULT '' ,
	t9							TEXT DEFAULT '' ,
	t10							TEXT DEFAULT '' ,
	t11							TEXT DEFAULT '' ,
	t12							TEXT DEFAULT '' ,
	t13							TEXT DEFAULT '' ,
	t14							TEXT DEFAULT '' ,
	t15							TEXT DEFAULT '' ,
	t16							TEXT DEFAULT '' ,
	t17							TEXT DEFAULT '' ,
	t18							TEXT DEFAULT '' ,
	t19							TEXT DEFAULT '' ,
	t20							TEXT DEFAULT '' ,
	t21							TEXT DEFAULT '' ,
	t22							TEXT DEFAULT '' ,
	t23							TEXT DEFAULT '' ,
	t24							TEXT DEFAULT '' ,
	t25							TEXT DEFAULT '' ,
	t26							TEXT DEFAULT '' ,
	t27							TEXT DEFAULT '' ,
	t28							TEXT DEFAULT '' ,
	t29							TEXT DEFAULT '' ,
	t30							TEXT DEFAULT '' ,
	t31							TEXT DEFAULT '' ,
	t32							TEXT DEFAULT '' ,
	t33							TEXT DEFAULT '' ,
	t34							TEXT DEFAULT '' ,
	t35							TEXT DEFAULT '' ,
	t36							TEXT DEFAULT '' ,
	t37							TEXT DEFAULT '' ,
	t38							TEXT DEFAULT '' ,
	t39							TEXT DEFAULT '' ,
	
	uid							BIGINT NOT NULL DEFAULT 0 , -- 最后审批者
	replytime					TIMESTAMP(0) DEFAULT NULL , -- 最后审批时间
	replyid						BIGINT NOT NULL DEFAULT 0 , -- 批复回应ID
	last						TIMESTAMP(0) DEFAULT NULL , -- 最后修改
	
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