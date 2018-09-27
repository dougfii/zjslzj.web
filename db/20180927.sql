/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : PostgreSQL
 Source Server Version : 100002
 Source Host           : localhost:5432
 Source Catalog        : zjslzj
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 100002
 File Encoding         : 65001

 Date: 27/09/2018 19:25:00
*/


-- ----------------------------
-- Sequence structure for seq_article
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_article";
CREATE SEQUENCE "public"."seq_article" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_article_type
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_article_type";
CREATE SEQUENCE "public"."seq_article_type" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_attachment
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_attachment";
CREATE SEQUENCE "public"."seq_attachment" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_check_type
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_check_type";
CREATE SEQUENCE "public"."seq_check_type" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_facade_type
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_facade_type";
CREATE SEQUENCE "public"."seq_facade_type" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_feedback
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_feedback";
CREATE SEQUENCE "public"."seq_feedback" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow1";
CREATE SEQUENCE "public"."seq_flow1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow10001
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow10001";
CREATE SEQUENCE "public"."seq_flow10001" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow10002
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow10002";
CREATE SEQUENCE "public"."seq_flow10002" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow10003
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow10003";
CREATE SEQUENCE "public"."seq_flow10003" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow10004
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow10004";
CREATE SEQUENCE "public"."seq_flow10004" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow10005
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow10005";
CREATE SEQUENCE "public"."seq_flow10005" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow10006
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow10006";
CREATE SEQUENCE "public"."seq_flow10006" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow10007
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow10007";
CREATE SEQUENCE "public"."seq_flow10007" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow10008
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow10008";
CREATE SEQUENCE "public"."seq_flow10008" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow10009
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow10009";
CREATE SEQUENCE "public"."seq_flow10009" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow10010
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow10010";
CREATE SEQUENCE "public"."seq_flow10010" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow2";
CREATE SEQUENCE "public"."seq_flow2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow31
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow31";
CREATE SEQUENCE "public"."seq_flow31" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow32
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow32";
CREATE SEQUENCE "public"."seq_flow32" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow33
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow33";
CREATE SEQUENCE "public"."seq_flow33" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow34
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow34";
CREATE SEQUENCE "public"."seq_flow34" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow35
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow35";
CREATE SEQUENCE "public"."seq_flow35" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow36
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow36";
CREATE SEQUENCE "public"."seq_flow36" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow37
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow37";
CREATE SEQUENCE "public"."seq_flow37" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow4
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow4";
CREATE SEQUENCE "public"."seq_flow4" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow51
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow51";
CREATE SEQUENCE "public"."seq_flow51" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow52
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow52";
CREATE SEQUENCE "public"."seq_flow52" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow61
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow61";
CREATE SEQUENCE "public"."seq_flow61" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow62
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow62";
CREATE SEQUENCE "public"."seq_flow62" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow63
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow63";
CREATE SEQUENCE "public"."seq_flow63" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow64
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow64";
CREATE SEQUENCE "public"."seq_flow64" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow71
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow71";
CREATE SEQUENCE "public"."seq_flow71" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow72
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow72";
CREATE SEQUENCE "public"."seq_flow72" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow73
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow73";
CREATE SEQUENCE "public"."seq_flow73" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow74
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow74";
CREATE SEQUENCE "public"."seq_flow74" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow75
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow75";
CREATE SEQUENCE "public"."seq_flow75" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow76
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow76";
CREATE SEQUENCE "public"."seq_flow76" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow77
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow77";
CREATE SEQUENCE "public"."seq_flow77" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow8
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow8";
CREATE SEQUENCE "public"."seq_flow8" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow91
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow91";
CREATE SEQUENCE "public"."seq_flow91" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow921
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow921";
CREATE SEQUENCE "public"."seq_flow921" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow922
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow922";
CREATE SEQUENCE "public"."seq_flow922" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow923
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow923";
CREATE SEQUENCE "public"."seq_flow923" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow924
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow924";
CREATE SEQUENCE "public"."seq_flow924" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow925
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow925";
CREATE SEQUENCE "public"."seq_flow925" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_flow9999
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_flow9999";
CREATE SEQUENCE "public"."seq_flow9999" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_forget
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_forget";
CREATE SEQUENCE "public"."seq_forget" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_group
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_group";
CREATE SEQUENCE "public"."seq_group" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_log_event
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_log_event";
CREATE SEQUENCE "public"."seq_log_event" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_log_login
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_log_login";
CREATE SEQUENCE "public"."seq_log_login" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_msg
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_msg";
CREATE SEQUENCE "public"."seq_msg" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_org
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_org";
CREATE SEQUENCE "public"."seq_org" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_project
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_project";
CREATE SEQUENCE "public"."seq_project" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply1";
CREATE SEQUENCE "public"."seq_reply1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply10001
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply10001";
CREATE SEQUENCE "public"."seq_reply10001" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply10002
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply10002";
CREATE SEQUENCE "public"."seq_reply10002" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply10003
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply10003";
CREATE SEQUENCE "public"."seq_reply10003" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply10004
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply10004";
CREATE SEQUENCE "public"."seq_reply10004" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply10005
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply10005";
CREATE SEQUENCE "public"."seq_reply10005" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply10006
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply10006";
CREATE SEQUENCE "public"."seq_reply10006" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply10007
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply10007";
CREATE SEQUENCE "public"."seq_reply10007" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply10008
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply10008";
CREATE SEQUENCE "public"."seq_reply10008" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply10009
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply10009";
CREATE SEQUENCE "public"."seq_reply10009" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply10010
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply10010";
CREATE SEQUENCE "public"."seq_reply10010" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply2";
CREATE SEQUENCE "public"."seq_reply2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply31
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply31";
CREATE SEQUENCE "public"."seq_reply31" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply32
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply32";
CREATE SEQUENCE "public"."seq_reply32" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply33
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply33";
CREATE SEQUENCE "public"."seq_reply33" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply34
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply34";
CREATE SEQUENCE "public"."seq_reply34" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply35
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply35";
CREATE SEQUENCE "public"."seq_reply35" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply36
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply36";
CREATE SEQUENCE "public"."seq_reply36" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply37
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply37";
CREATE SEQUENCE "public"."seq_reply37" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply4
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply4";
CREATE SEQUENCE "public"."seq_reply4" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply51
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply51";
CREATE SEQUENCE "public"."seq_reply51" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply52
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply52";
CREATE SEQUENCE "public"."seq_reply52" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply61
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply61";
CREATE SEQUENCE "public"."seq_reply61" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply62
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply62";
CREATE SEQUENCE "public"."seq_reply62" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply63
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply63";
CREATE SEQUENCE "public"."seq_reply63" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply64
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply64";
CREATE SEQUENCE "public"."seq_reply64" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply71
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply71";
CREATE SEQUENCE "public"."seq_reply71" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply72
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply72";
CREATE SEQUENCE "public"."seq_reply72" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply73
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply73";
CREATE SEQUENCE "public"."seq_reply73" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply74
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply74";
CREATE SEQUENCE "public"."seq_reply74" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply75
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply75";
CREATE SEQUENCE "public"."seq_reply75" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply76
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply76";
CREATE SEQUENCE "public"."seq_reply76" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply77
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply77";
CREATE SEQUENCE "public"."seq_reply77" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply8
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply8";
CREATE SEQUENCE "public"."seq_reply8" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply91
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply91";
CREATE SEQUENCE "public"."seq_reply91" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply921
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply921";
CREATE SEQUENCE "public"."seq_reply921" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply922
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply922";
CREATE SEQUENCE "public"."seq_reply922" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply923
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply923";
CREATE SEQUENCE "public"."seq_reply923" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply924
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply924";
CREATE SEQUENCE "public"."seq_reply924" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply925
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply925";
CREATE SEQUENCE "public"."seq_reply925" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_reply9999
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_reply9999";
CREATE SEQUENCE "public"."seq_reply9999" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seq_user
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seq_user";
CREATE SEQUENCE "public"."seq_user" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_article";
CREATE TABLE "public"."t_article" (
  "id" int8 NOT NULL DEFAULT nextval('seq_article'::regclass),
  "tid" int8 NOT NULL DEFAULT 0,
  "uid" int8 NOT NULL DEFAULT 0,
  "pic" varchar(200) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "title" varchar(200) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "html" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "roll" bool NOT NULL DEFAULT false,
  "views" int4 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT true,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO "public"."t_article" VALUES (4, 2, 1, '', 'test2', '测试123,', '&lt;p&gt;测试123&lt;br/&gt;&lt;/p&gt;', 'f', 2, NULL, 't', 't', '2017-10-12 15:21:59');
INSERT INTO "public"."t_article" VALUES (1, 1, 1, '', '单位介绍', '', '', 'f', 12, NULL, 't', 'f', '2017-06-22 15:52:53');
INSERT INTO "public"."t_article" VALUES (2, 1, 1, '', '联系我们', '', '', 'f', 58, NULL, 't', 'f', '2017-06-22 15:52:53');
INSERT INTO "public"."t_article" VALUES (3, 2, 1, '', 'test1', 'test,', '&lt;p&gt;test&lt;/p&gt;', 'f', 17, NULL, 't', 'f', '2017-10-11 20:26:10');
INSERT INTO "public"."t_article" VALUES (6, 2, 1, '', '234', '&lt;img style=&quot;margin-right: 2px; vertical-align: middle;&quot; src=&quot;http://manage.demo.xzslzj.cn/js/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif&quot; _src=&quot;http://manage.demo.xzslzj.cn/js/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif&quot;&gt;&lt;a title=&quot;新西门桥评审意见.doc&quot; style=&quot;color: rgb(0, 102, 204); font-size: 12px;&quot; href=&quot;/upload/file/20180605/1528178849540131.doc&quot; _href=&quot;/upload/file/20180605/1528178849540131.doc&quot;&gt;新西门桥评审意见.doc
234
', '&lt;p style=&quot;line-height: 16px;&quot;&gt;&lt;img style=&quot;margin-right: 2px; vertical-align: middle;&quot; src=&quot;http://manage.demo.xzslzj.cn/js/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif&quot;/&gt;&lt;a title=&quot;新西门桥评审意见.doc&quot; style=&quot;color: rgb(0, 102, 204); font-size: 12px;&quot; href=&quot;/upload/file/20180605/1528178849540131.doc&quot;&gt;新西门桥评审意见.doc&lt;/a&gt;&lt;/p&gt;&lt;p&gt;234&lt;/p&gt;', 'f', 5, NULL, 't', 'f', '2018-06-05 06:06:38');

-- ----------------------------
-- Table structure for t_article_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_article_type";
CREATE TABLE "public"."t_article_type" (
  "id" int8 NOT NULL DEFAULT nextval('seq_article_type'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL DEFAULT NULL::character varying,
  "dir" bool NOT NULL DEFAULT false,
  "act" bool NOT NULL DEFAULT true,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_article_type
-- ----------------------------
INSERT INTO "public"."t_article_type" VALUES (1, 0, '单位信息', 'f', 't', 'f', '2017-06-22 15:52:53');
INSERT INTO "public"."t_article_type" VALUES (2, 0, '工作动态', 't', 't', 'f', '2017-06-22 15:52:53');
INSERT INTO "public"."t_article_type" VALUES (3, 0, '政策法规', 't', 't', 'f', '2017-06-22 15:52:53');
INSERT INTO "public"."t_article_type" VALUES (6, 0, '下载专区', 't', 't', 'f', '2017-06-22 15:52:53');
INSERT INTO "public"."t_article_type" VALUES (4, 0, '通知公告', 't', 't', 'f', '2017-06-22 15:52:53');
INSERT INTO "public"."t_article_type" VALUES (5, 0, '工程造价', 't', 't', 'f', '2017-06-22 15:52:53');

-- ----------------------------
-- Table structure for t_attachment
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_attachment";
CREATE TABLE "public"."t_attachment" (
  "id" int8 NOT NULL DEFAULT nextval('seq_attachment'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "tid" int8 NOT NULL DEFAULT 0,
  "no" int4 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "url" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "file" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "ext" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "size" int4 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_attachment
-- ----------------------------
INSERT INTO "public"."t_attachment" VALUES (1, 8, 1, 1, '质量监督申报表', '/upload/flow/20171012/15077923313368.doc', '15077923313368.doc', '.doc', 954414, 'f', 'f', '2017-10-12 15:12:12');
INSERT INTO "public"."t_attachment" VALUES (3, 6, 63, 1, '单位工程验收鉴定书', '/upload/flow/20180605/15281617788001.doc', '15281617788001.doc', '.doc', 10240, 'f', 'f', '2018-06-05 09:22:59');
INSERT INTO "public"."t_attachment" VALUES (5, 26, 10000001, 0, '固买月度绩效目标设定和检视表-201809.xls', '/upload/flow/20180923/15376693475472.xls', '15376693475472.xls', '.xls', 35840, 'f', 'f', '2018-09-23 10:22:27');

-- ----------------------------
-- Table structure for t_check_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_check_type";
CREATE TABLE "public"."t_check_type" (
  "id" int8 NOT NULL DEFAULT nextval('seq_check_type'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL DEFAULT NULL::character varying,
  "score" int4 NOT NULL DEFAULT 0,
  "level" int4 NOT NULL DEFAULT 1,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_check_type
-- ----------------------------
INSERT INTO "public"."t_check_type" VALUES (1, 0, '主控项目', 0, 1, 'f', '2017-10-06 15:24:38');
INSERT INTO "public"."t_check_type" VALUES (2, 0, '一般项目', 0, 1, 'f', '2017-10-06 15:24:38');
INSERT INTO "public"."t_check_type" VALUES (3, 2, 'abc', 0, 1, 'f', '2017-10-11 20:43:14');

-- ----------------------------
-- Table structure for t_facade_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_facade_type";
CREATE TABLE "public"."t_facade_type" (
  "id" int8 NOT NULL DEFAULT nextval('seq_facade_type'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL DEFAULT NULL::character varying,
  "score" int4 NOT NULL DEFAULT 0,
  "level" int4 NOT NULL DEFAULT 1,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_facade_type
-- ----------------------------
INSERT INTO "public"."t_facade_type" VALUES (1, 0, '检查项目', 0, 1, 'f', '2017-06-22 15:52:53');
INSERT INTO "public"."t_facade_type" VALUES (2, 0, '检测项目', 0, 1, 'f', '2017-06-22 15:52:53');
INSERT INTO "public"."t_facade_type" VALUES (4, 1, 'bb', 5, 1, 'f', '2017-09-23 12:00:47');
INSERT INTO "public"."t_facade_type" VALUES (5, 1, '扭曲面与平面联结果', 0, 1, 'f', '2017-10-12 11:20:46');
INSERT INTO "public"."t_facade_type" VALUES (6, 5, '砌石勾缝', 0, 1, 't', '2017-10-12 11:21:44');
INSERT INTO "public"."t_facade_type" VALUES (7, 1, '砌石勾缝', 0, 1, 'f', '2017-10-12 11:22:17');
INSERT INTO "public"."t_facade_type" VALUES (8, 1, '建筑物表面', 0, 1, 'f', '2017-10-12 11:22:31');
INSERT INTO "public"."t_facade_type" VALUES (9, 1, 'XX外观', 0, 1, 'f', '2017-10-12 15:26:10');
INSERT INTO "public"."t_facade_type" VALUES (10, 5, '123', 1, 1, 'f', '2017-11-12 11:02:34');
INSERT INTO "public"."t_facade_type" VALUES (3, 1, '水闸项目', 0, 1, 'f', '2017-09-23 12:00:33');
INSERT INTO "public"."t_facade_type" VALUES (11, 3, '项目1', 0, 1, 'f', '2018-04-10 14:27:01');
INSERT INTO "public"."t_facade_type" VALUES (12, 3, '项目2', 0, 1, 'f', '2018-04-10 14:31:41');

-- ----------------------------
-- Table structure for t_feedback
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_feedback";
CREATE TABLE "public"."t_feedback" (
  "id" int8 NOT NULL DEFAULT nextval('seq_feedback'::regclass),
  "project" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "contacts" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "phone" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "email" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "reply" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_feedback
-- ----------------------------
INSERT INTO "public"."t_feedback" VALUES (1, '1', '1', '11111111111', '11@1.com', '1', '', 0, NULL, 'f', 'f', '2017-11-12 10:49:58');

-- ----------------------------
-- Table structure for t_flow1
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow1";
CREATE TABLE "public"."t_flow1" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow1'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "keywords" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "attachments" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_flow1
-- ----------------------------
INSERT INTO "public"."t_flow1" VALUES (2, 2, '123', 'xxx', '2017-07-26', '112233', '11223344', '', 1, '2017-07-26 09:11:12', 1, NULL, 't', 'f', '2017-07-26 09:10:15');
INSERT INTO "public"."t_flow1" VALUES (3, 6, '1111', 'aaaz', '2017-09-23', '    aaaa工程初步设计及概算已经泰州市发展和改革委员会以《泰aaaa工程初步设计的批复》（泰发改审发[XXXX]XX号）批准。工程主要建设内容为：xxxxxxxxxxxxxxxxxxxxx。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示。', '无', '', 1, '2017-09-23 11:41:29', 2, NULL, 't', 'f', '2017-09-23 11:34:09');
INSERT INTO "public"."t_flow1" VALUES (4, 7, '123', '123', '2017-10-01', '    test2工程初步设计及概算已经泰州市发展和改革委员会以《泰test2工程初步设计的批复》（泰发改审发[XXXX]XX号）批准。工程主要建设内容为：xxxxxxxxxxxxxxxxxxxxx。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否', '无', '', 1, '2017-10-11 20:50:28', 3, NULL, 't', 'f', '2017-10-11 20:49:07');
INSERT INTO "public"."t_flow1" VALUES (5, 8, '123123', '李四', '2017-10-12', '    测试test单位工程初步设计及概算已经泰州市发展和改革委员会以《泰测试test单位工程初步设计的批复》（泰发改审发[XXXX]XX号）批准。工程主要建设内容为：xxxxxxxxxxxxxxxxxxxxx。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示。123123', '无', '', 1, '2017-10-12 15:14:24', 4, NULL, 't', 'f', '2017-10-12 15:13:28');
INSERT INTO "public"."t_flow1" VALUES (6, 9, 'qweqw', 'qweqw', '2017-11-15', '    泰州市城市水利投资开发有限公司工程初步设计及概算已经泰州市发展和改革委员会以《泰泰州市城市水利投资开发有限公司工程初步设计的批复》（泰发改审发[XXXX]XX号）批准。工程主要建设内容为：。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示。', '无', '', 1, '2017-11-12 10:58:41', 5, NULL, 'f', 'f', '2017-11-12 10:57:33');
INSERT INTO "public"."t_flow1" VALUES (7, 9, 'qweqw', 'qweqw', '2017-11-15', '    泰州市城市水利投资开发有限公司工程初步设计及概算已经泰州市发展和改革委员会以《泰泰州市城市水利投资开发有限公司工程初步设计的批复》（泰发改审发[XXXX]XX号）批准。工程主要建设内容为：。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示。', '无', '', 1, '2017-11-12 11:00:26', 6, NULL, 't', 'f', '2017-11-12 11:00:02');
INSERT INTO "public"."t_flow1" VALUES (1, 3, '123', '123', '2017-07-25', '1234', '无', '', 1, '2017-12-15 10:35:51', 7, NULL, 't', 'f', '2017-07-25 15:08:21');
INSERT INTO "public"."t_flow1" VALUES (8, 14, '123', '123', '2018-01-23', '    测试单位工程初步设计及概算已经镇江市发展和改革委员会以《测试单位工程初步设计的批复》（镇发改审发[XXXX]XX号）批准。工程主要建设内容为：xxxxxxxxxxxxxxxxxxxxx。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示。', '无', '', 1, '2018-04-10 14:08:48', 8, NULL, 't', 'f', '2018-04-10 14:07:46');
INSERT INTO "public"."t_flow1" VALUES (10, 22, '12', '1', '2018-06-12', '    镇江test2工程初步设计及概算已经镇江市发展和改革委员会以《镇江test2工程初步设计的批复》（镇发改审发[XXXX]XX号）批准。工程主要建设内容为：xxxxxxxxxxxxxxxxxxxxx。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示。', '无', '', 1, '2018-06-05 14:59:39', 10, NULL, 't', 'f', '2018-06-05 14:59:01');
INSERT INTO "public"."t_flow1" VALUES (11, 23, '123', '123', '2018-06-07', '    111111工程初步设计及概算已经镇江市发展和改革委员会以《111111工程初步设计的批复》（镇发改审发[XXXX]XX号）批准。工程主要建设内容为：xxxxxxxxxxxxxxxxxxxxx。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示。', '无', '', 1, '2018-06-05 15:28:37', 11, NULL, 't', 'f', '2018-06-05 15:27:06');
INSERT INTO "public"."t_flow1" VALUES (13, 23, 'xxxxxd', 'dfds', '2018-09-23', '    111111工程初步设计及概算已经镇江市发展和改革委员会以《111111工程初步设计的批复》（镇发改审发[XXXX]XX号）批准。工程主要建设内容为：xxxxxxxxxxxxxxxxxxxxx。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示。', '无', '', 0, NULL, 0, NULL, 'f', 'f', '2018-09-23 09:47:28');
INSERT INTO "public"."t_flow1" VALUES (14, 26, 'ssd', 'fasdf', '2018-09-23', '    wwwwww工程初步设计及概算已经镇江市发展和改革委员会以《wwwwww工程初步设计的批复》（镇发改审发[XXXX]XX号）批准。工程主要建设内容为：xxxxxxxxxxxxxxxxxxxxx。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示。', '无', '', 0, NULL, 0, NULL, 'f', 'f', '2018-09-23 10:16:39');
INSERT INTO "public"."t_flow1" VALUES (15, 26, 'ssd', 'fasdf', '2018-09-23', '    wwwwww工程初步设计及概算已经镇江市发展和改革委员会以《wwwwww工程初步设计的批复》（镇发改审发[XXXX]XX号）批准。工程主要建设内容为：xxxxxxxxxxxxxxxxxxxxx。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示。', '无', '', 1, '2018-09-23 10:21:35', 13, NULL, 'f', 'f', '2018-09-23 10:19:22');
INSERT INTO "public"."t_flow1" VALUES (16, 26, 'ssdxx', 'fasdf', '2018-09-23', '    wwwwww工程初步设计及概算已经镇江市发展和改革委员会以《wwwwww工程初步设计的批复》（镇发改审发[XXXX]XX号）批准。工程主要建设内容为：xxxxxxxxxxxxxxxxxxxxx。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示。', '无', '', 1, '2018-09-23 10:23:40', 14, NULL, 't', 'f', '2018-09-23 10:21:54');
INSERT INTO "public"."t_flow1" VALUES (17, 26, 'ssss', 'sss', '2018-09-23', '    wwwwww工程初步设计及概算已经镇江市发展和改革委员会以《wwwwww工程初步设计的批复》（镇发改审发[XXXX]XX号）批准。工程主要建设内容为：xxxxxxxxxxxxxxxxxxxxx。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示。', '无', '', 1, '2018-09-23 10:26:59', 15, NULL, 't', 'f', '2018-09-23 10:24:51');
INSERT INTO "public"."t_flow1" VALUES (18, 26, 'xc', 'cxz', '2018-09-23', '    wwwwww工程初步设计及概算已经镇江市发展和改革委员会以《wwwwww工程初步设计的批复》（镇发改审发[XXXX]XX号）批准。工程主要建设内容为：xxxxxxxxxxxxxxxxxxxxx。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示zxc。', '无', '', 0, NULL, 0, NULL, 'f', 'f', '2018-09-23 10:56:17');
INSERT INTO "public"."t_flow1" VALUES (19, 26, 'xc', 'cxz', '2018-09-23', '    wwwwww工程初步设计及概算已经镇江市发展和改革委员会以《wwwwww工程初步设计的批复》（镇发改审发[XXXX]XX号）批准。工程主要建设内容为：xxxxxxxxxxxxxxxxxxxxx。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示zxc。', '无', '', 0, NULL, 0, NULL, 'f', 'f', '2018-09-23 11:37:18');

-- ----------------------------
-- Table structure for t_flow10001
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow10001";
CREATE TABLE "public"."t_flow10001" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow10001'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t9" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t10" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t11" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t12" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t13" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t14" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t15" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t16" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t17" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t18" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t19" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t20" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t21" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t22" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t23" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t24" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t25" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t26" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t27" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t28" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t29" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t30" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t31" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t32" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t33" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t34" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t35" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t36" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t37" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t38" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t39" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_flow10001
-- ----------------------------
INSERT INTO "public"."t_flow10001" VALUES (1, 17, '安全TEST', '1', '1', '1', '2018-06-05', '2018-06-04', '1', '', '', '', '', '', '', '土方__万方、砼__方、石方__万方、钢材__吨、其他：__吨', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0, NULL, 'f', 'f', '2018-06-02 17:04:12');
INSERT INTO "public"."t_flow10001" VALUES (2, 20, '县级安全测试', 'aaa', 'aaa', '100', '2018-05-29', '2018-06-21', '', '', '', '', '', '', '', '土方__万方、砼__方、石方__万方、钢材__吨、其他：__吨', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0, NULL, 'f', 'f', '2018-06-03 22:14:24');
INSERT INTO "public"."t_flow10001" VALUES (3, 21, '镇江工程test', '123', '123', '', '', '', '', '', '', '', '', '', '', '土方__万方、砼__方、石方__万方、钢材__吨、其他：__吨', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '123', '123', '123', '123', '2018-06-05', '', '', '', 1, '2018-06-05 14:45:33', 2, NULL, 't', 'f', '2018-06-05 14:36:31');
INSERT INTO "public"."t_flow10001" VALUES (5, 25, 'test5', '', '', '', '', '', '', '', '', '', '', '', '', '土方__万方、砼__方、石方__万方、钢材__吨、其他：__吨', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-06-19 23:25:28', 4, NULL, 't', 'f', '2018-06-19 23:16:43');
INSERT INTO "public"."t_flow10001" VALUES (6, 25, 'test5', '', '', '', '', '', '', '', '', '', '', '', '', '土方__万方、砼__方、石方__万方、钢材__吨、其他：__吨', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-06-21 21:53:56', 5, NULL, 't', 'f', '2018-06-21 21:20:59');

-- ----------------------------
-- Table structure for t_flow10002
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow10002";
CREATE TABLE "public"."t_flow10002" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow10002'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t9" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t10" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t11" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t12" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t13" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t14" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t15" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t16" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t17" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t18" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t19" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t20" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t21" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t22" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t23" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t24" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t25" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t26" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t27" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t28" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t29" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t30" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t31" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t32" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t33" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t34" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t35" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t36" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t37" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t38" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t39" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_flow10002
-- ----------------------------
INSERT INTO "public"."t_flow10002" VALUES (1, 21, '镇江工程test', '123', '123', '123', '123', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '123', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-06-05 14:47:41', 2, NULL, 't', 'f', '2018-06-05 14:47:13');

-- ----------------------------
-- Table structure for t_flow10003
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow10003";
CREATE TABLE "public"."t_flow10003" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow10003'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t9" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t10" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t11" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t12" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t13" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t14" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t15" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t16" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t17" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t18" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t19" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t20" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t21" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t22" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t23" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t24" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t25" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t26" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t27" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t28" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t29" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t30" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t31" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t32" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t33" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t34" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t35" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t36" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t37" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t38" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t39" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t40" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t41" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t42" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t43" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t44" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t45" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t46" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t47" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t48" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t49" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t50" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t51" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t52" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t53" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t54" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t55" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t56" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t57" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t58" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t59" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t60" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t61" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t62" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t63" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t64" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t65" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t66" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t67" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t68" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t69" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t70" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_flow10003
-- ----------------------------
INSERT INTO "public"."t_flow10003" VALUES (1, 17, '', '1', '1', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-06-04 19:36:23', 2, NULL, 'f', 'f', '2018-06-02 17:40:40');

-- ----------------------------
-- Table structure for t_flow10004
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow10004";
CREATE TABLE "public"."t_flow10004" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow10004'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t9" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t10" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t11" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t12" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t13" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t14" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t15" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t16" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t17" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t18" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t19" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t20" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t21" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t22" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t23" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t24" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t25" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t26" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t27" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t28" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t29" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t30" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t31" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t32" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t33" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t34" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t35" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t36" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t37" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t38" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t39" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow10005
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow10005";
CREATE TABLE "public"."t_flow10005" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow10005'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t9" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t10" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t11" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t12" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t13" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t14" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t15" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t16" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t17" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t18" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t19" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t20" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t21" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t22" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t23" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t24" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t25" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t26" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t27" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t28" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t29" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t30" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t31" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t32" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t33" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t34" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t35" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t36" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t37" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t38" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t39" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_flow10005
-- ----------------------------
INSERT INTO "public"."t_flow10005" VALUES (1, 17, '安全TEST', '', '1', '', '', '', '', '', '', '', '0,0,0,0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0, NULL, 'f', 'f', '2018-06-02 17:43:39');

-- ----------------------------
-- Table structure for t_flow10006
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow10006";
CREATE TABLE "public"."t_flow10006" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow10006'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t9" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t10" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t11" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t12" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t13" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t14" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t15" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t16" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t17" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t18" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t19" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t20" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t21" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t22" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t23" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t24" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t25" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t26" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t27" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t28" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t29" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t30" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t31" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t32" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t33" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t34" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t35" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t36" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t37" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t38" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t39" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_flow10006
-- ----------------------------
INSERT INTO "public"."t_flow10006" VALUES (1, 21, '镇江工程test', '213', '', '123', '123', '123', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0, NULL, 'f', 'f', '2018-06-05 14:50:15');
INSERT INTO "public"."t_flow10006" VALUES (3, 25, 'test5', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0, NULL, 'f', 'f', '2018-06-21 22:03:09');

-- ----------------------------
-- Table structure for t_flow10007
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow10007";
CREATE TABLE "public"."t_flow10007" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow10007'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t9" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t10" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t11" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t12" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t13" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t14" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t15" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t16" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t17" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t18" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t19" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t20" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t21" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t22" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t23" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t24" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t25" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t26" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t27" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t28" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t29" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t30" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t31" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t32" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t33" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t34" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t35" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t36" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t37" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t38" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t39" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow10008
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow10008";
CREATE TABLE "public"."t_flow10008" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow10008'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t9" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t10" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t11" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t12" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t13" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t14" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t15" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t16" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t17" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t18" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t19" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t20" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t21" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t22" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t23" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t24" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t25" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t26" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t27" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t28" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t29" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t30" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t31" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t32" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t33" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t34" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t35" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t36" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t37" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t38" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t39" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow10009
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow10009";
CREATE TABLE "public"."t_flow10009" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow10009'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t9" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t10" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t11" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t12" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t13" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t14" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t15" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t16" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t17" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t18" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t19" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t20" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t21" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t22" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t23" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t24" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t25" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t26" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t27" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t28" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t29" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t30" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t31" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t32" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t33" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t34" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t35" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t36" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t37" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t38" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t39" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_flow10009
-- ----------------------------
INSERT INTO "public"."t_flow10009" VALUES (2, 25, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0, NULL, 'f', 'f', '2018-06-21 22:03:20');

-- ----------------------------
-- Table structure for t_flow10010
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow10010";
CREATE TABLE "public"."t_flow10010" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow10010'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t9" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t10" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t11" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t12" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t13" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t14" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t15" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t16" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t17" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t18" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t19" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t20" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t21" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t22" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t23" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t24" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t25" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t26" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t27" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t28" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t29" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t30" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t31" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t32" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t33" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t34" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t35" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t36" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t37" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t38" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t39" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_flow10010
-- ----------------------------
INSERT INTO "public"."t_flow10010" VALUES (1, 17, '安全TEST', '', '', '', '', '', '一、工程概况
    （一）工程建设位置

    （二）工程项目批复

    （三）工程主要建设内容及主要设计指标

    （四）工程主要参建单位

    （五）工程开完工时间


二、安全监督工作


三、安全生产管理体系检查
    （一）安全生产管理机构及人员

    （二）安全生产责任制

    （三）安全生产规章制度及操作规程

    （四）安全教育培训

    （五）危险性较大工程安全管理

    （六）隐患排查治理

    （七）生产安全事故应急预案


四、安全监督检查


五、生产安全事故处理


六、工程安全生产评价意见


七、建议


', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0, NULL, 'f', 'f', '2018-06-04 19:26:22');

-- ----------------------------
-- Table structure for t_flow2
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow2";
CREATE TABLE "public"."t_flow2" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow2'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "keywords" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "attachments" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_flow2
-- ----------------------------
INSERT INTO "public"."t_flow2" VALUES (1, 2, '223', 'aaa', '2017-07-28', 'zz', '', '', 1, '2017-07-26 09:13:28', 1, NULL, 't', 'f', '2017-07-26 09:12:32');
INSERT INTO "public"."t_flow2" VALUES (2, 6, '222', 'sfdas', '2017-09-23', '    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX。 当否，请批示。', '', '', 1, '2017-09-23 11:57:16', 2, NULL, 't', 'f', '2017-09-23 11:50:03');
INSERT INTO "public"."t_flow2" VALUES (3, 7, '123', '123', '2017-10-03', '    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX。 当否，请批示。', '', '', 1, '2017-10-11 20:51:11', 3, NULL, 't', 'f', '2017-10-11 20:50:45');
INSERT INTO "public"."t_flow2" VALUES (4, 8, '123', '123', '2017-10-12', '    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX。 当否，请批示。', '', '', 1, '2017-10-12 15:16:32', 4, NULL, 't', 'f', '2017-10-12 15:15:14');
INSERT INTO "public"."t_flow2" VALUES (5, 9, '1231', '234', '2017-11-27', '    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX。 当否，请批示。', '', '', 1, '2017-11-12 11:01:31', 5, NULL, 't', 'f', '2017-11-12 11:00:56');
INSERT INTO "public"."t_flow2" VALUES (6, 3, '123', '123', '2018-04-24', '    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX。 当否，请批示。', '', '', 1, '2018-04-09 21:38:53', 6, NULL, 't', 'f', '2018-04-09 21:38:10');
INSERT INTO "public"."t_flow2" VALUES (7, 14, '123', '123', '2018-04-17', '    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX。 当否，请批示。', '', '', 1, '2018-04-10 14:21:28', 7, NULL, 't', 'f', '2018-04-10 14:19:33');
INSERT INTO "public"."t_flow2" VALUES (9, 22, '123', '123', '2018-06-20', '    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX。 当否，请批示。', '', '', 1, '2018-06-05 15:01:19', 9, NULL, 't', 'f', '2018-06-05 15:00:46');
INSERT INTO "public"."t_flow2" VALUES (10, 23, '123', '123', '2018-06-12', '    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX。 当否，请批示。', '', '', 1, '2018-09-23 10:03:19', 11, NULL, 't', 'f', '2018-06-05 15:28:54');
INSERT INTO "public"."t_flow2" VALUES (12, 26, 'af', 'fdsa', '2018-09-23', '    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX。 当否，请批示。', '', '', 1, '2018-09-23 10:29:07', 12, NULL, 't', 'f', '2018-09-23 10:28:06');

-- ----------------------------
-- Table structure for t_flow31
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow31";
CREATE TABLE "public"."t_flow31" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow31'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "attachments" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date_ping" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "items" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "totals" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m11" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m12" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m13" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m21" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m22" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m23" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m31" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m32" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m33" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m41" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m42" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m43" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m51" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m52" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m53" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m61" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m62" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m63" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_flow31
-- ----------------------------
INSERT INTO "public"."t_flow31" VALUES (1, 6, 'test1', '22', '', '', '', '', '11', '2017-09-01', '{"table":[[[1,3],[1,4]],2],"items":[],"totals":[],"amounts":["2","2","100.00",""]}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2017-10-08 09:56:16', 1, NULL, 't', 'f', '2017-10-07 19:16:42');
INSERT INTO "public"."t_flow31" VALUES (2, 7, 'test2', '123', '123', '2017-10-26', '123', '', '123', '2017-10-02', '{"table":[[[1,4]],2],"items":[],"totals":[],"amounts":["0","0","0",""]}', '', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', 1, '2017-10-11 20:52:46', 2, NULL, 't', 'f', '2017-10-11 20:52:24');
INSERT INTO "public"."t_flow31" VALUES (3, 7, 'test2', '9999', '', '', '', '', '9999', '2017-10-09', '{"table":[[[1,3],[1,4]],2],"items":[],"totals":[],"amounts":["","","",""]}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2017-10-12 10:16:33', 3, NULL, 't', 'f', '2017-10-12 10:15:19');
INSERT INTO "public"."t_flow31" VALUES (4, 7, 'test2', '888', '', '', '', '', '88', '2017-10-02', '{"table":[[[1,3],[1,4]],2],"items":[],"totals":[],"amounts":["246","3","1.22","12"]}', '', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', 1, '2017-10-12 10:21:50', 4, NULL, 't', 'f', '2017-10-12 10:21:13');
INSERT INTO "public"."t_flow31" VALUES (5, 8, '泰州市测试项目test', '123', '', '', '', '', '123', '2017-10-03', '{"table":[[[1,7],[1,8]],2],"items":[],"totals":[],"amounts":["123","0","0.00",""]}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2017-10-12 15:19:14', 5, NULL, 't', 'f', '2017-10-12 15:18:46');
INSERT INTO "public"."t_flow31" VALUES (6, 9, '龙窝泵站工程', '123', '123', '2017-11-20', '123', '', '123', '2017-11-07', '{"table":[[[1,5],[1,5,10],[1,8]],3],"items":[],"totals":[],"amounts":["123","123","123","123"]}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0, NULL, 'f', 'f', '2017-11-12 11:03:47');
INSERT INTO "public"."t_flow31" VALUES (7, 3, '测试工程', '12', '', '', '', '', '123', '2018-04-10', '{"table":[[[1,3],[1,9]],2],"items":[],"totals":[],"amounts":["","","",""]}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-04-10 11:39:06', 6, NULL, 't', 'f', '2018-04-10 11:38:41');
INSERT INTO "public"."t_flow31" VALUES (8, 14, '镇江水利工程test', '123', '123', '2018-04-16', '1', '', '123', '2018-04-09', '{"table":[[[1,3],[1,4]],2],"items":[],"totals":[],"amounts":["125","246","196.80","1"]}', '', '12', '1', '', '1', '', '', '2', '', '', '3', '', '', '4', '', '', '5', '', '', 1, '2018-04-10 14:26:18', 7, NULL, 't', 'f', '2018-04-10 14:25:10');
INSERT INTO "public"."t_flow31" VALUES (10, 7, 'test2', '1', '', '', '', '', '1', '2018-05-29', '{"table":[[[1,3],[1,3,11],[1,4]],3],"items":[],"totals":[],"amounts":["1","1","1","1"]}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0, NULL, 'f', 'f', '2018-06-02 15:36:19');

-- ----------------------------
-- Table structure for t_flow32
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow32";
CREATE TABLE "public"."t_flow32" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow32'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t9" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t10" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t11" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t12" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t13" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t14" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t15" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t16" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t17" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t18" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t19" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t20" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t21" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t22" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t23" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t24" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t25" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t26" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t27" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t28" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t29" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t30" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t31" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t32" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t33" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t34" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t35" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t36" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t37" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t38" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t39" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow33
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow33";
CREATE TABLE "public"."t_flow33" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow33'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t9" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t10" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t11" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t12" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t13" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t14" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t15" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t16" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t17" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t18" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t19" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t20" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t21" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t22" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t23" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t24" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t25" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t26" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t27" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t28" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t29" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t30" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t31" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t32" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t33" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t34" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t35" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t36" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t37" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t38" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t39" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow34
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow34";
CREATE TABLE "public"."t_flow34" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow34'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t9" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t10" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t11" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t12" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t13" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t14" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t15" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t16" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t17" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t18" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t19" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t20" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t21" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t22" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t23" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t24" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t25" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t26" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t27" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t28" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t29" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t30" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t31" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t32" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t33" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t34" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t35" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t36" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t37" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t38" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t39" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow35
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow35";
CREATE TABLE "public"."t_flow35" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow35'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t9" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t10" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t11" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t12" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t13" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t14" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t15" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t16" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t17" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t18" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t19" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t20" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t21" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t22" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t23" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t24" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t25" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t26" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t27" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t28" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t29" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t30" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t31" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t32" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t33" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t34" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t35" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t36" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t37" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t38" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t39" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow36
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow36";
CREATE TABLE "public"."t_flow36" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow36'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t9" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t10" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t11" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t12" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t13" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t14" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t15" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t16" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t17" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t18" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t19" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t20" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t21" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t22" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t23" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t24" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t25" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t26" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t27" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t28" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t29" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t30" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t31" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t32" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t33" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t34" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t35" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t36" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t37" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t38" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t39" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow37
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow37";
CREATE TABLE "public"."t_flow37" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow37'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t9" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t10" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t11" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t12" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t13" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t14" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t15" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t16" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t17" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t18" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t19" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t20" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t21" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t22" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t23" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t24" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t25" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t26" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t27" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t28" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t29" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t30" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t31" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t32" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t33" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t34" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t35" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t36" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t37" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t38" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t39" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow4
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow4";
CREATE TABLE "public"."t_flow4" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow4'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "keywords" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "attachments" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "code" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "personals" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "progress" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "writer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "writer_date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer_date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_flow4
-- ----------------------------
INSERT INTO "public"."t_flow4" VALUES (1, 7, 'test2', '11', '11', '2016-02-20', '11', '', '', '11', '11', '11', '11', '2016-02-20', '2016-02-20', 7, '2018-02-20 09:28:47', 1, NULL, 'f', 'f', '2018-02-20 09:28:18');
INSERT INTO "public"."t_flow4" VALUES (2, 14, '镇江水利工程test', '123', '123', '2018-04-16', '123', '', '', '123', '123', '123', '123', '2018-04-09', '2018-04-10', 14, '2018-04-10 15:20:04', 2, NULL, 'f', 'f', '2018-04-10 15:19:25');
INSERT INTO "public"."t_flow4" VALUES (4, 6, 'test1', '1', '1', '2018-06-12', '1', '', '', '1', '1', '1', '1', '2018-05-31', '2018-06-05', 0, NULL, 0, NULL, 'f', 'f', '2018-06-05 06:06:13');

-- ----------------------------
-- Table structure for t_flow51
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow51";
CREATE TABLE "public"."t_flow51" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow51'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "items" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "totals" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow52
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow52";
CREATE TABLE "public"."t_flow52" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow52'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "items" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "totals" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow61
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow61";
CREATE TABLE "public"."t_flow61" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow61'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "items" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "totals" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow62
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow62";
CREATE TABLE "public"."t_flow62" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow62'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "attachments" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date_ping" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "items" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "totals" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m11" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m12" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m13" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m21" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m22" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m23" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m31" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m32" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m33" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m41" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m42" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m43" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m51" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m52" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m53" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m61" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m62" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "m63" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_flow62
-- ----------------------------
INSERT INTO "public"."t_flow62" VALUES (1, 7, '123', '123', '2017-10-26', '123', 'test2', '123', '2017-10-02', '{"table":[[[1,4]],2],"items":[["2","123","123","123","123"]],"totals":[],"amounts":["2","123","6150.00","123"]}', '', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', 1, '2017-10-11 20:53:46', 1, NULL, 't', 'f', '2017-10-11 20:53:28');

-- ----------------------------
-- Table structure for t_flow63
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow63";
CREATE TABLE "public"."t_flow63" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow63'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "items" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "totals" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow64
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow64";
CREATE TABLE "public"."t_flow64" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow64'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "items" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "totals" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow71
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow71";
CREATE TABLE "public"."t_flow71" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow71'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "keywords" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "attachments" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_flow71
-- ----------------------------
INSERT INTO "public"."t_flow71" VALUES (2, 6, '123', '1', '2018-06-01', '1', '', '', 1, '2018-06-05 05:59:58', 2, NULL, 'f', 'f', '2018-06-05 05:57:12');

-- ----------------------------
-- Table structure for t_flow72
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow72";
CREATE TABLE "public"."t_flow72" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow72'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "attachments" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "items" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "totals" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v4c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v4n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v4d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v5c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v5n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v5d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow73
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow73";
CREATE TABLE "public"."t_flow73" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow73'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "attachments" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "items" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "totals" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v1d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v2d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v3d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v4c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v4n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v4d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v5c" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v5n" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "v5d" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow74
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow74";
CREATE TABLE "public"."t_flow74" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow74'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "keywords" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "attachments" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow75
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow75";
CREATE TABLE "public"."t_flow75" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow75'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "keywords" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "attachments" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow76
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow76";
CREATE TABLE "public"."t_flow76" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow76'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "keywords" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "attachments" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow77
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow77";
CREATE TABLE "public"."t_flow77" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow77'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "keywords" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "attachments" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow8
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow8";
CREATE TABLE "public"."t_flow8" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow8'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "items" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "totals" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow91
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow91";
CREATE TABLE "public"."t_flow91" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow91'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "items" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "totals" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow921
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow921";
CREATE TABLE "public"."t_flow921" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow921'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "tno" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "tcontent" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "tdate" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "tattachments" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "tmemo" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "proj" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "stage" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "owner" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow922
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow922";
CREATE TABLE "public"."t_flow922" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow922'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "tno" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "tcontent" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "tdate" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "tattachments" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "tmemo" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "proj" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "stage" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "owner" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow923
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow923";
CREATE TABLE "public"."t_flow923" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow923'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "tno" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "tcontent" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "tdate" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "tattachments" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "tmemo" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "proj" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "stage" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "owner" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow924
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow924";
CREATE TABLE "public"."t_flow924" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow924'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "tno" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "tcontent" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "tdate" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "tattachments" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "tmemo" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "proj" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "stage" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "owner" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow925
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow925";
CREATE TABLE "public"."t_flow925" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow925'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "tno" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "tcontent" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "tdate" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "tattachments" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "tmemo" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "proj" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "stage" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "owner" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_flow9999
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_flow9999";
CREATE TABLE "public"."t_flow9999" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow9999'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "keywords" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "attachments" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "code" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "personals" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "progress" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "writer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "writer_date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer_date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_forget
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_forget";
CREATE TABLE "public"."t_forget" (
  "id" int8 NOT NULL DEFAULT nextval('seq_forget'::regclass),
  "pid" int4 NOT NULL DEFAULT 0,
  "code" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "expire" timestamp(0) NOT NULL DEFAULT (now() + '1 day'::interval),
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_group";
CREATE TABLE "public"."t_group" (
  "id" int8 NOT NULL DEFAULT nextval('seq_group'::regclass),
  "fid" int8 NOT NULL DEFAULT 0,
  "name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL DEFAULT NULL::character varying,
  "company" varchar(200) COLLATE "pg_catalog"."default" NOT NULL DEFAULT NULL::character varying,
  "permission" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "act" bool NOT NULL DEFAULT true,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_group
-- ----------------------------
INSERT INTO "public"."t_group" VALUES (2, 0, '县水利工程质量监督站', '县水利工程质量监督站', '', 't', 't', '2017-10-11 20:46:18');
INSERT INTO "public"."t_group" VALUES (3, 0, '泰兴市水利工程质量监督站', '泰兴市水利工程质量监督站', '', 't', 't', '2017-10-12 11:23:38');
INSERT INTO "public"."t_group" VALUES (4, 0, '靖江市水利工程质量监督站', '靖江市水利工程质量监督站', '0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,f,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 't', 't', '2017-10-12 11:24:39');
INSERT INTO "public"."t_group" VALUES (5, 0, '高港区水利工程质量监督站', '高港区水利工程质量监督站', '', 't', 't', '2017-10-12 11:25:53');
INSERT INTO "public"."t_group" VALUES (6, 0, '海陵区水利工程质量监督站', '海陵区水利工程质量监督站', '', 't', 't', '2017-10-12 11:26:10');
INSERT INTO "public"."t_group" VALUES (7, 0, '高新区水利工程质量监督站', '高新区水利工程质量监督站', '', 't', 't', '2017-10-12 11:26:31');
INSERT INTO "public"."t_group" VALUES (8, 0, '姜堰区水利工程质量监督站', '姜堰区水利工程质量监督站', '', 't', 't', '2017-10-12 11:27:25');
INSERT INTO "public"."t_group" VALUES (9, 0, '兴化市水利工程质量监督站', '兴化市水利工程质量监督站', '', 't', 't', '2017-10-12 11:27:42');
INSERT INTO "public"."t_group" VALUES (11, 0, '射阳县质量监督站', '射阳县质量监督站', '1,1,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,f,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,f,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,f,f,f,0,f,f,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 't', 'f', '2018-06-01 06:28:51');
INSERT INTO "public"."t_group" VALUES (1, 0, '镇江市水利工程质量安全监督站', '镇江市水利工程质量安全监督站', '', 't', 'f', '2017-06-22 15:52:53');
INSERT INTO "public"."t_group" VALUES (12, 0, 'testx', 'aa', '', 't', 'f', '2018-06-05 09:24:59');

-- ----------------------------
-- Table structure for t_log_event
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_log_event";
CREATE TABLE "public"."t_log_event" (
  "id" int8 NOT NULL DEFAULT nextval('seq_log_event'::regclass),
  "event" text COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::text,
  "spent" float8 NOT NULL DEFAULT 0,
  "memory" int4 NOT NULL DEFAULT 0,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_log_login
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_log_login";
CREATE TABLE "public"."t_log_login" (
  "id" int8 NOT NULL DEFAULT nextval('seq_log_login'::regclass),
  "tid" int4 NOT NULL DEFAULT 0,
  "uid" int8 NOT NULL DEFAULT 0,
  "ip" int8 NOT NULL DEFAULT 0,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_log_login
-- ----------------------------
INSERT INTO "public"."t_log_login" VALUES (1, 2, 1, 3736826418, '2017-06-22 17:23:02');
INSERT INTO "public"."t_log_login" VALUES (2, 2, 1, 3657674810, '2017-06-22 17:27:46');
INSERT INTO "public"."t_log_login" VALUES (3, 2, 1, 3657674810, '2017-06-22 17:30:22');
INSERT INTO "public"."t_log_login" VALUES (4, 2, 1, 3657674810, '2017-06-23 10:48:25');
INSERT INTO "public"."t_log_login" VALUES (5, 1, 1, 1035070050, '2017-06-23 11:03:12');
INSERT INTO "public"."t_log_login" VALUES (6, 2, 1, 987684940, '2017-07-18 09:28:26');
INSERT INTO "public"."t_log_login" VALUES (7, 2, 1, 987684940, '2017-07-21 17:00:40');
INSERT INTO "public"."t_log_login" VALUES (8, 2, 1, 987684940, '2017-07-24 09:38:58');
INSERT INTO "public"."t_log_login" VALUES (9, 1, 2, 987684940, '2017-07-24 09:40:24');
INSERT INTO "public"."t_log_login" VALUES (10, 2, 1, 613800925, '2017-07-25 07:27:09');
INSERT INTO "public"."t_log_login" VALUES (11, 2, 1, 987366393, '2017-07-25 15:05:04');
INSERT INTO "public"."t_log_login" VALUES (12, 2, 1, 987684940, '2017-07-26 08:40:48');
INSERT INTO "public"."t_log_login" VALUES (13, 1, 2, 987684940, '2017-07-26 08:43:02');
INSERT INTO "public"."t_log_login" VALUES (14, 1, 4, 1035070154, '2017-08-02 10:17:58');
INSERT INTO "public"."t_log_login" VALUES (15, 1, 4, 1035070154, '2017-08-02 11:03:29');
INSERT INTO "public"."t_log_login" VALUES (16, 1, 4, 1035070154, '2017-08-02 15:19:47');
INSERT INTO "public"."t_log_login" VALUES (17, 1, 4, 1035070154, '2017-08-03 08:47:29');
INSERT INTO "public"."t_log_login" VALUES (18, 1, 4, 1035070154, '2017-08-04 08:55:19');
INSERT INTO "public"."t_log_login" VALUES (19, 1, 4, 1035070154, '2017-08-07 16:07:28');
INSERT INTO "public"."t_log_login" VALUES (20, 2, 1, 987684940, '2017-08-07 16:43:39');
INSERT INTO "public"."t_log_login" VALUES (21, 2, 1, 987684940, '2017-08-07 16:52:55');
INSERT INTO "public"."t_log_login" VALUES (22, 2, 1, 987684940, '2017-08-07 16:53:31');
INSERT INTO "public"."t_log_login" VALUES (23, 2, 1, 987684940, '2017-08-07 16:56:02');
INSERT INTO "public"."t_log_login" VALUES (24, 2, 1, 987684940, '2017-08-07 17:02:21');
INSERT INTO "public"."t_log_login" VALUES (25, 2, 1, 987684940, '2017-08-11 10:07:39');
INSERT INTO "public"."t_log_login" VALUES (26, 1, 4, 1035070154, '2017-08-15 08:41:07');
INSERT INTO "public"."t_log_login" VALUES (27, 1, 4, 1035070154, '2017-08-15 08:52:09');
INSERT INTO "public"."t_log_login" VALUES (28, 1, 5, 1927901397, '2017-08-23 15:36:10');
INSERT INTO "public"."t_log_login" VALUES (29, 2, 1, 3657674810, '2017-08-24 16:14:16');
INSERT INTO "public"."t_log_login" VALUES (30, 2, 1, 3736826418, '2017-09-23 11:08:39');
INSERT INTO "public"."t_log_login" VALUES (31, 2, 1, 3027981529, '2017-09-30 14:04:37');
INSERT INTO "public"."t_log_login" VALUES (32, 1, 6, 3027981529, '2017-09-30 14:05:00');
INSERT INTO "public"."t_log_login" VALUES (33, 1, 6, 3736826418, '2017-10-06 10:50:05');
INSERT INTO "public"."t_log_login" VALUES (34, 2, 1, 3736826418, '2017-10-06 12:04:06');
INSERT INTO "public"."t_log_login" VALUES (35, 1, 6, 3736826418, '2017-10-06 13:50:55');
INSERT INTO "public"."t_log_login" VALUES (36, 2, 1, 3736826418, '2017-10-06 16:26:46');
INSERT INTO "public"."t_log_login" VALUES (37, 2, 1, 613768090, '2017-10-07 19:13:49');
INSERT INTO "public"."t_log_login" VALUES (38, 1, 6, 613768090, '2017-10-07 19:14:23');
INSERT INTO "public"."t_log_login" VALUES (39, 1, 6, 1968639716, '2017-10-08 09:51:22');
INSERT INTO "public"."t_log_login" VALUES (40, 2, 1, 1968639716, '2017-10-08 09:51:30');
INSERT INTO "public"."t_log_login" VALUES (41, 1, 6, 613800950, '2017-10-11 07:12:29');
INSERT INTO "public"."t_log_login" VALUES (42, 2, 1, 1785620324, '2017-10-11 14:08:01');
INSERT INTO "public"."t_log_login" VALUES (43, 1, 6, 1785620324, '2017-10-11 14:08:28');
INSERT INTO "public"."t_log_login" VALUES (44, 1, 6, 1785620324, '2017-10-11 14:30:18');
INSERT INTO "public"."t_log_login" VALUES (45, 2, 1, 827444495, '2017-10-11 20:24:18');
INSERT INTO "public"."t_log_login" VALUES (46, 2, 1, 827444495, '2017-10-11 20:33:19');
INSERT INTO "public"."t_log_login" VALUES (47, 2, 2, 827444495, '2017-10-11 20:34:05');
INSERT INTO "public"."t_log_login" VALUES (48, 2, 1, 827444495, '2017-10-11 20:35:15');
INSERT INTO "public"."t_log_login" VALUES (49, 2, 1, 827444495, '2017-10-11 20:45:15');
INSERT INTO "public"."t_log_login" VALUES (50, 1, 7, 2053122657, '2017-10-12 10:10:20');
INSERT INTO "public"."t_log_login" VALUES (51, 2, 1, 2053122657, '2017-10-12 10:15:43');
INSERT INTO "public"."t_log_login" VALUES (52, 2, 1, 2053122657, '2017-10-12 15:10:26');
INSERT INTO "public"."t_log_login" VALUES (53, 2, 3, 2053122657, '2017-10-12 15:24:53');
INSERT INTO "public"."t_log_login" VALUES (54, 2, 1, 2053122657, '2017-10-12 15:25:30');
INSERT INTO "public"."t_log_login" VALUES (55, 1, 7, 2053122657, '2017-10-12 15:26:29');
INSERT INTO "public"."t_log_login" VALUES (56, 1, 6, 3736826418, '2017-10-26 14:14:09');
INSERT INTO "public"."t_log_login" VALUES (57, 1, 6, 1968639745, '2017-10-30 09:50:49');
INSERT INTO "public"."t_log_login" VALUES (58, 2, 1, 3657674810, '2017-10-31 15:15:54');
INSERT INTO "public"."t_log_login" VALUES (59, 1, 6, 613768161, '2017-11-12 05:11:49');
INSERT INTO "public"."t_log_login" VALUES (60, 2, 1, 613800929, '2017-11-12 05:13:50');
INSERT INTO "public"."t_log_login" VALUES (61, 1, 6, 3657640914, '2017-11-12 10:45:41');
INSERT INTO "public"."t_log_login" VALUES (62, 2, 1, 3657640914, '2017-11-12 10:46:53');
INSERT INTO "public"."t_log_login" VALUES (63, 1, 6, 3657640914, '2017-11-12 10:55:02');
INSERT INTO "public"."t_log_login" VALUES (64, 1, 9, 3657640914, '2017-11-12 10:55:22');
INSERT INTO "public"."t_log_login" VALUES (65, 1, 9, 3657640914, '2017-11-12 10:58:54');
INSERT INTO "public"."t_log_login" VALUES (66, 2, 1, 3663392477, '2017-11-14 11:23:41');
INSERT INTO "public"."t_log_login" VALUES (67, 1, 10, 3027919700, '2017-11-28 08:45:11');
INSERT INTO "public"."t_log_login" VALUES (68, 1, 11, 826788295, '2017-12-05 10:35:09');
INSERT INTO "public"."t_log_login" VALUES (69, 2, 1, 3657674810, '2017-12-07 11:58:18');
INSERT INTO "public"."t_log_login" VALUES (70, 1, 7, 3657674810, '2017-12-07 11:58:31');
INSERT INTO "public"."t_log_login" VALUES (71, 2, 1, 3657674810, '2017-12-07 12:05:00');
INSERT INTO "public"."t_log_login" VALUES (72, 2, 1, 828151659, '2017-12-15 10:30:22');
INSERT INTO "public"."t_log_login" VALUES (73, 1, 6, 828151659, '2017-12-15 10:32:01');
INSERT INTO "public"."t_log_login" VALUES (74, 2, 1, 828151659, '2017-12-15 10:33:42');
INSERT INTO "public"."t_log_login" VALUES (75, 2, 1, 3657674810, '2018-02-20 09:27:11');
INSERT INTO "public"."t_log_login" VALUES (76, 1, 7, 3657674810, '2018-02-20 09:27:29');
INSERT INTO "public"."t_log_login" VALUES (77, 1, 3, 3745683799, '2018-04-09 21:37:52');
INSERT INTO "public"."t_log_login" VALUES (78, 2, 1, 3745683799, '2018-04-09 21:38:23');
INSERT INTO "public"."t_log_login" VALUES (79, 2, 1, 3745683799, '2018-04-10 03:18:14');
INSERT INTO "public"."t_log_login" VALUES (80, 1, 3, 3745683799, '2018-04-10 04:34:07');
INSERT INTO "public"."t_log_login" VALUES (81, 1, 3, 3745683799, '2018-04-10 06:09:32');
INSERT INTO "public"."t_log_login" VALUES (82, 2, 1, 3657674810, '2018-04-10 11:34:01');
INSERT INTO "public"."t_log_login" VALUES (83, 1, 3, 3657674810, '2018-04-10 11:37:24');
INSERT INTO "public"."t_log_login" VALUES (84, 2, 1, 3657640914, '2018-04-10 13:56:46');
INSERT INTO "public"."t_log_login" VALUES (85, 2, 1, 3657640914, '2018-04-10 14:30:23');
INSERT INTO "public"."t_log_login" VALUES (86, 1, 14, 3657640914, '2018-04-10 14:32:25');
INSERT INTO "public"."t_log_login" VALUES (87, 2, 1, 3657674810, '2018-04-10 17:14:34');
INSERT INTO "public"."t_log_login" VALUES (88, 2, 1, 827444853, '2018-04-11 20:37:26');
INSERT INTO "public"."t_log_login" VALUES (89, 1, 14, 827444853, '2018-04-11 20:44:25');
INSERT INTO "public"."t_log_login" VALUES (90, 1, 6, 3745683838, '2018-04-30 08:01:28');
INSERT INTO "public"."t_log_login" VALUES (91, 1, 6, 3736826418, '2018-05-08 18:08:32');
INSERT INTO "public"."t_log_login" VALUES (92, 2, 1, 3736826418, '2018-05-08 18:34:18');
INSERT INTO "public"."t_log_login" VALUES (94, 1, 6, 3736826418, '2018-05-31 10:05:25');
INSERT INTO "public"."t_log_login" VALUES (95, 2, 1, 3746055193, '2018-06-01 06:11:16');
INSERT INTO "public"."t_log_login" VALUES (96, 1, 17, 613767464, '2018-06-01 06:26:30');
INSERT INTO "public"."t_log_login" VALUES (97, 2, 5, 995346807, '2018-06-01 06:38:24');
INSERT INTO "public"."t_log_login" VALUES (98, 2, 1, 3746055193, '2018-06-01 06:38:43');
INSERT INTO "public"."t_log_login" VALUES (99, 2, 5, 2064234320, '2018-06-01 06:41:42');
INSERT INTO "public"."t_log_login" VALUES (100, 2, 1, 3746060390, '2018-06-01 06:42:27');
INSERT INTO "public"."t_log_login" VALUES (101, 2, 5, 613767464, '2018-06-01 07:07:10');
INSERT INTO "public"."t_log_login" VALUES (102, 2, 1, 3746055193, '2018-06-01 07:10:22');
INSERT INTO "public"."t_log_login" VALUES (103, 2, 1, 3746063161, '2018-06-02 08:29:55');
INSERT INTO "public"."t_log_login" VALUES (104, 2, 5, 3746053801, '2018-06-02 08:42:13');
INSERT INTO "public"."t_log_login" VALUES (105, 2, 1, 3078845523, '2018-06-02 15:29:44');
INSERT INTO "public"."t_log_login" VALUES (106, 1, 19, 3078845504, '2018-06-02 15:31:15');
INSERT INTO "public"."t_log_login" VALUES (107, 1, 7, 995346801, '2018-06-02 15:32:05');
INSERT INTO "public"."t_log_login" VALUES (108, 1, 6, 3078845523, '2018-06-02 16:46:41');
INSERT INTO "public"."t_log_login" VALUES (109, 1, 7, 995346806, '2018-06-02 16:49:43');
INSERT INTO "public"."t_log_login" VALUES (110, 2, 1, 3078845515, '2018-06-02 16:50:16');
INSERT INTO "public"."t_log_login" VALUES (111, 1, 19, 2064234385, '2018-06-02 16:50:42');
INSERT INTO "public"."t_log_login" VALUES (112, 1, 17, 3078845523, '2018-06-02 16:52:22');
INSERT INTO "public"."t_log_login" VALUES (113, 1, 6, 3078845526, '2018-06-02 17:48:40');
INSERT INTO "public"."t_log_login" VALUES (114, 2, 1, 3546232986, '2018-06-03 09:09:54');
INSERT INTO "public"."t_log_login" VALUES (115, 2, 1, 1031866007, '2018-06-03 09:12:01');
INSERT INTO "public"."t_log_login" VALUES (116, 1, 7, 3546232986, '2018-06-03 09:15:12');
INSERT INTO "public"."t_log_login" VALUES (117, 1, 17, 3546232986, '2018-06-03 09:22:45');
INSERT INTO "public"."t_log_login" VALUES (118, 2, 1, 3746055193, '2018-06-03 17:36:47');
INSERT INTO "public"."t_log_login" VALUES (119, 1, 17, 3061471906, '2018-06-03 17:37:08');
INSERT INTO "public"."t_log_login" VALUES (120, 1, 6, 3078845515, '2018-06-03 18:02:53');
INSERT INTO "public"."t_log_login" VALUES (121, 1, 17, 3078845515, '2018-06-03 21:56:17');
INSERT INTO "public"."t_log_login" VALUES (122, 2, 1, 613767616, '2018-06-03 21:56:56');
INSERT INTO "public"."t_log_login" VALUES (123, 2, 1, 3078845523, '2018-06-04 19:24:57');
INSERT INTO "public"."t_log_login" VALUES (124, 1, 17, 613767616, '2018-06-04 19:25:06');
INSERT INTO "public"."t_log_login" VALUES (125, 1, 17, 3746060374, '2018-06-04 19:30:20');
INSERT INTO "public"."t_log_login" VALUES (126, 2, 1, 3746053801, '2018-06-04 19:36:01');
INSERT INTO "public"."t_log_login" VALUES (127, 2, 1, 1968646804, '2018-06-04 20:17:51');
INSERT INTO "public"."t_log_login" VALUES (128, 1, 6, 3078845504, '2018-06-05 05:46:27');
INSERT INTO "public"."t_log_login" VALUES (129, 2, 1, 613767616, '2018-06-05 05:46:35');
INSERT INTO "public"."t_log_login" VALUES (130, 2, 5, 3746060374, '2018-06-05 05:50:53');
INSERT INTO "public"."t_log_login" VALUES (131, 2, 1, 3746053801, '2018-06-05 05:52:31');
INSERT INTO "public"."t_log_login" VALUES (132, 1, 17, 3746060374, '2018-06-05 06:54:59');
INSERT INTO "public"."t_log_login" VALUES (133, 1, 6, 3746055193, '2018-06-05 07:17:22');
INSERT INTO "public"."t_log_login" VALUES (134, 2, 1, 2053122703, '2018-06-05 09:09:20');
INSERT INTO "public"."t_log_login" VALUES (135, 2, 1, 2053122703, '2018-06-05 09:09:45');
INSERT INTO "public"."t_log_login" VALUES (136, 1, 6, 2053122703, '2018-06-05 09:10:23');
INSERT INTO "public"."t_log_login" VALUES (137, 2, 1, 2362358218, '2018-06-05 09:15:50');
INSERT INTO "public"."t_log_login" VALUES (138, 1, 6, 2362358218, '2018-06-05 09:17:01');
INSERT INTO "public"."t_log_login" VALUES (139, 2, 1, 3657640914, '2018-06-05 14:06:26');
INSERT INTO "public"."t_log_login" VALUES (140, 2, 1, 3657640914, '2018-06-05 14:13:03');
INSERT INTO "public"."t_log_login" VALUES (141, 2, 1, 3657640914, '2018-06-05 14:13:36');
INSERT INTO "public"."t_log_login" VALUES (142, 2, 1, 3657640914, '2018-06-05 14:16:08');
INSERT INTO "public"."t_log_login" VALUES (143, 2, 1, 3657640914, '2018-06-05 14:16:25');
INSERT INTO "public"."t_log_login" VALUES (144, 2, 1, 3657640914, '2018-06-05 14:17:05');
INSERT INTO "public"."t_log_login" VALUES (145, 1, 21, 3657640914, '2018-06-05 14:18:31');
INSERT INTO "public"."t_log_login" VALUES (146, 1, 21, 3657640914, '2018-06-05 14:56:02');
INSERT INTO "public"."t_log_login" VALUES (147, 2, 1, 3657640914, '2018-06-05 14:56:52');
INSERT INTO "public"."t_log_login" VALUES (148, 1, 22, 3657640914, '2018-06-05 14:57:55');
INSERT INTO "public"."t_log_login" VALUES (149, 1, 22, 3657640914, '2018-06-05 15:00:27');
INSERT INTO "public"."t_log_login" VALUES (150, 1, 22, 3657640914, '2018-06-05 15:30:48');
INSERT INTO "public"."t_log_login" VALUES (151, 2, 1, 3657640914, '2018-06-05 15:41:47');
INSERT INTO "public"."t_log_login" VALUES (152, 2, 1, 3657640914, '2018-06-05 15:48:16');
INSERT INTO "public"."t_log_login" VALUES (153, 2, 1, 3657640914, '2018-06-05 15:48:38');
INSERT INTO "public"."t_log_login" VALUES (154, 2, 1, 3657640914, '2018-06-05 15:48:56');
INSERT INTO "public"."t_log_login" VALUES (155, 2, 1, 3078845523, '2018-06-06 06:36:45');
INSERT INTO "public"."t_log_login" VALUES (156, 2, 1, 1968638521, '2018-06-06 15:37:50');
INSERT INTO "public"."t_log_login" VALUES (157, 1, 23, 1968638521, '2018-06-06 15:38:15');
INSERT INTO "public"."t_log_login" VALUES (158, 1, 21, 1968638521, '2018-06-06 15:38:48');
INSERT INTO "public"."t_log_login" VALUES (159, 1, 22, 1968638521, '2018-06-06 15:58:12');
INSERT INTO "public"."t_log_login" VALUES (160, 1, 22, 1968638521, '2018-06-06 16:13:19');
INSERT INTO "public"."t_log_login" VALUES (161, 2, 1, 1968638521, '2018-06-06 16:17:44');
INSERT INTO "public"."t_log_login" VALUES (162, 2, 1, 613767615, '2018-06-06 22:04:00');
INSERT INTO "public"."t_log_login" VALUES (163, 2, 1, 613767615, '2018-06-06 22:12:51');
INSERT INTO "public"."t_log_login" VALUES (164, 2, 1, 1971864344, '2018-06-07 07:56:11');
INSERT INTO "public"."t_log_login" VALUES (165, 2, 1, 3657640914, '2018-06-11 15:34:16');
INSERT INTO "public"."t_log_login" VALUES (166, 2, 1, 2362347153, '2018-06-14 00:08:45');
INSERT INTO "public"."t_log_login" VALUES (167, 2, 1, 826550628, '2018-06-19 10:30:41');
INSERT INTO "public"."t_log_login" VALUES (169, 2, 1, 2130706433, '2018-06-19 22:59:33');
INSERT INTO "public"."t_log_login" VALUES (170, 2, 1, 2130706433, '2018-06-21 21:18:04');
INSERT INTO "public"."t_log_login" VALUES (171, 1, 25, 2130706433, '2018-06-21 21:18:36');
INSERT INTO "public"."t_log_login" VALUES (172, 1, 7, 2130706433, '2018-06-21 23:23:55');
INSERT INTO "public"."t_log_login" VALUES (173, 2, 1, 2130706433, '2018-09-23 09:39:12');
INSERT INTO "public"."t_log_login" VALUES (174, 1, 23, 2130706433, '2018-09-23 09:40:10');
INSERT INTO "public"."t_log_login" VALUES (175, 1, 26, 2130706433, '2018-09-23 10:15:51');

-- ----------------------------
-- Table structure for t_msg
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_msg";
CREATE TABLE "public"."t_msg" (
  "id" int8 NOT NULL DEFAULT nextval('seq_msg'::regclass),
  "type" int4 NOT NULL DEFAULT 0,
  "direct" int4 NOT NULL DEFAULT 0,
  "senderid" int8 NOT NULL DEFAULT 0,
  "receiverid" int8 NOT NULL DEFAULT 0,
  "sender" varchar(200) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "receiver" varchar(200) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "nodeid" int8 NOT NULL DEFAULT 0,
  "objid" int8 NOT NULL DEFAULT 0,
  "msg" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "read" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_msg
-- ----------------------------
INSERT INTO "public"."t_msg" VALUES (1, 1, 2, 1, 1, '周山河四期工程', '管理员', 0, 1, '新注册', 't', 'f', '2017-06-23 11:02:18');
INSERT INTO "public"."t_msg" VALUES (2, 1, 2, 2, 1, 'JTMY', '管理员', 0, 2, '新注册', 't', 'f', '2017-07-21 17:01:59');
INSERT INTO "public"."t_msg" VALUES (3, 1, 2, 3, 1, '测试工程', '管理员', 0, 3, '新注册', 'f', 'f', '2017-07-25 15:06:09');
INSERT INTO "public"."t_msg" VALUES (4, 1, 1, 1, 3, '管理员', '测试工程', 0, 3, '项目被管理员开放', 'f', 'f', '2017-07-25 15:07:57');
INSERT INTO "public"."t_msg" VALUES (5, 1, 2, 3, 1, '测试工程', '管理员', 1, 1, '新建质量监督申报', 'f', 'f', '2017-07-25 15:08:21');
INSERT INTO "public"."t_msg" VALUES (6, 1, 1, 1, 2, '管理员', 'JTMY', 0, 2, '项目被管理员开放', 't', 'f', '2017-07-26 08:41:27');
INSERT INTO "public"."t_msg" VALUES (7, 1, 2, 2, 1, 'JTMY', '管理员', 1, 2, '新建质量监督申报', 'f', 'f', '2017-07-26 09:10:15');
INSERT INTO "public"."t_msg" VALUES (8, 1, 1, 1, 2, '管理员', 'JTMY', 1, 2, '质量监督申报有批复', 'f', 'f', '2017-07-26 09:11:12');
INSERT INTO "public"."t_msg" VALUES (9, 1, 2, 2, 1, 'JTMY', '管理员', 2, 1, '新建单元工程质量项目划分', 'f', 'f', '2017-07-26 09:12:32');
INSERT INTO "public"."t_msg" VALUES (10, 1, 1, 1, 2, '管理员', 'JTMY', 2, 1, '单元工程质量项目划分有批复', 'f', 'f', '2017-07-26 09:13:28');
INSERT INTO "public"."t_msg" VALUES (13, 1, 1, 1, 1, '管理员', '周山河四期工程', 0, 1, '项目被管理员开放', 'f', 'f', '2017-08-07 16:48:19');
INSERT INTO "public"."t_msg" VALUES (11, 1, 2, 4, 1, '通港路东延配套水系调整工程', '管理员', 0, 4, '新注册', 't', 'f', '2017-08-02 10:14:53');
INSERT INTO "public"."t_msg" VALUES (12, 1, 1, 1, 4, '管理员', '通港路东延配套水系调整工程', 0, 4, '项目被管理员开放', 't', 'f', '2017-08-07 16:46:03');
INSERT INTO "public"."t_msg" VALUES (15, 1, 2, 6, 1, 'test1', '管理员', 0, 6, '新注册', 'f', 'f', '2017-09-23 11:21:04');
INSERT INTO "public"."t_msg" VALUES (16, 1, 1, 1, 6, '管理员', 'test1', 0, 6, '项目被管理员开放', 'f', 'f', '2017-09-23 11:21:22');
INSERT INTO "public"."t_msg" VALUES (17, 1, 2, 6, 1, 'test1', '管理员', 1, 3, '新建质量监督申报', 'f', 'f', '2017-09-23 11:34:09');
INSERT INTO "public"."t_msg" VALUES (18, 1, 1, 1, 6, '管理员', 'test1', 1, 3, '质量监督申报有批复', 'f', 'f', '2017-09-23 11:41:29');
INSERT INTO "public"."t_msg" VALUES (20, 1, 1, 1, 6, '管理员', 'test1', 2, 2, '单元工程质量项目划分有批复', 'f', 'f', '2017-09-23 11:57:16');
INSERT INTO "public"."t_msg" VALUES (21, 1, 2, 6, 1, 'test1', '管理员', 31, 1, '新建', 'f', 'f', '2017-10-07 19:16:42');
INSERT INTO "public"."t_msg" VALUES (22, 1, 1, 1, 6, '管理员', 'test1', 31, 1, '有批复', 'f', 'f', '2017-10-08 09:56:16');
INSERT INTO "public"."t_msg" VALUES (19, 1, 2, 6, 1, 'test1', '管理员', 2, 2, '新建单元工程质量项目划分', 't', 'f', '2017-09-23 11:50:03');
INSERT INTO "public"."t_msg" VALUES (23, 1, 2, 7, 1, 'test2', '管理员', 0, 7, '新注册', 'f', 'f', '2017-10-11 20:47:32');
INSERT INTO "public"."t_msg" VALUES (25, 1, 2, 7, 1, 'test2', '管理员', 1, 4, '新建质量监督申报', 'f', 'f', '2017-10-11 20:49:07');
INSERT INTO "public"."t_msg" VALUES (26, 1, 1, 1, 7, '管理员', 'test2', 1, 4, '质量监督申报有批复', 'f', 'f', '2017-10-11 20:50:28');
INSERT INTO "public"."t_msg" VALUES (27, 1, 2, 7, 1, 'test2', '管理员', 2, 3, '新建单元工程质量项目划分', 'f', 'f', '2017-10-11 20:50:45');
INSERT INTO "public"."t_msg" VALUES (28, 1, 1, 1, 7, '管理员', 'test2', 2, 3, '单元工程质量项目划分有批复', 'f', 'f', '2017-10-11 20:51:11');
INSERT INTO "public"."t_msg" VALUES (29, 1, 2, 7, 1, 'test2', '管理员', 31, 2, '新建', 'f', 'f', '2017-10-11 20:52:24');
INSERT INTO "public"."t_msg" VALUES (30, 1, 1, 1, 7, '管理员', 'test2', 31, 2, '有批复', 'f', 'f', '2017-10-11 20:52:46');
INSERT INTO "public"."t_msg" VALUES (31, 1, 2, 7, 1, 'test2', '管理员', 62, 1, '新建', 'f', 'f', '2017-10-11 20:53:28');
INSERT INTO "public"."t_msg" VALUES (32, 1, 1, 1, 7, '管理员', 'test2', 62, 1, '审批通过', 'f', 'f', '2017-10-11 20:53:46');
INSERT INTO "public"."t_msg" VALUES (33, 1, 2, 7, 1, 'test2', '管理员', 31, 3, '新建', 'f', 'f', '2017-10-12 10:15:19');
INSERT INTO "public"."t_msg" VALUES (34, 1, 1, 1, 7, '管理员', 'test2', 31, 3, '有批复', 'f', 'f', '2017-10-12 10:16:33');
INSERT INTO "public"."t_msg" VALUES (35, 1, 2, 7, 1, 'test2', '管理员', 31, 4, '新建', 'f', 'f', '2017-10-12 10:21:13');
INSERT INTO "public"."t_msg" VALUES (36, 1, 1, 1, 7, '管理员', 'test2', 31, 4, '有批复', 'f', 'f', '2017-10-12 10:21:50');
INSERT INTO "public"."t_msg" VALUES (38, 1, 1, 1, 8, '管理员', '泰州市测试项目test', 0, 8, '项目被管理员开放', 'f', 'f', '2017-10-12 15:11:01');
INSERT INTO "public"."t_msg" VALUES (40, 1, 1, 1, 8, '管理员', '泰州市测试项目test', 1, 5, '质量监督申报有批复', 'f', 'f', '2017-10-12 15:14:24');
INSERT INTO "public"."t_msg" VALUES (42, 1, 1, 1, 8, '管理员', '泰州市测试项目test', 2, 4, '单元工程质量项目划分有批复', 'f', 'f', '2017-10-12 15:16:32');
INSERT INTO "public"."t_msg" VALUES (44, 1, 1, 1, 8, '管理员', '泰州市测试项目test', 31, 5, '有批复', 'f', 'f', '2017-10-12 15:19:14');
INSERT INTO "public"."t_msg" VALUES (43, 1, 2, 8, 1, '泰州市测试项目test', '管理员', 31, 5, '新建', 't', 'f', '2017-10-12 15:18:46');
INSERT INTO "public"."t_msg" VALUES (41, 1, 2, 8, 1, '泰州市测试项目test', '管理员', 2, 4, '新建单元工程质量项目划分', 't', 'f', '2017-10-12 15:15:14');
INSERT INTO "public"."t_msg" VALUES (49, 1, 1, 1, 9, '管理员', '龙窝泵站工程', 1, 6, '质量监督申报被审批退回', 'f', 'f', '2017-11-12 10:58:41');
INSERT INTO "public"."t_msg" VALUES (46, 1, 1, 1, 9, '管理员', '龙窝泵站工程', 0, 9, '项目被管理员开放', 't', 'f', '2017-11-12 10:53:21');
INSERT INTO "public"."t_msg" VALUES (47, 1, 1, 1, 9, '管理员', '龙窝泵站工程', 0, 9, '项目被管理员关闭', 't', 'f', '2017-11-12 10:53:34');
INSERT INTO "public"."t_msg" VALUES (51, 1, 1, 1, 9, '管理员', '龙窝泵站工程', 1, 7, '质量监督申报有批复', 'f', 'f', '2017-11-12 11:00:26');
INSERT INTO "public"."t_msg" VALUES (53, 1, 1, 1, 9, '管理员', '龙窝泵站工程', 2, 5, '单元工程质量项目划分有批复', 'f', 'f', '2017-11-12 11:01:31');
INSERT INTO "public"."t_msg" VALUES (24, 1, 1, 1, 7, '管理员', 'test2', 0, 7, '项目被管理员开放', 't', 'f', '2017-10-11 20:48:31');
INSERT INTO "public"."t_msg" VALUES (58, 1, 1, 1, 3, '管理员', '测试工程', 1, 1, '质量监督申报有批复', 'f', 'f', '2017-12-15 10:35:51');
INSERT INTO "public"."t_msg" VALUES (56, 1, 2, 11, 1, '泰州医药高新区药城大道西景河涵洞工程施工标', '管理员', 0, 11, '新注册', 't', 'f', '2017-11-28 08:42:46');
INSERT INTO "public"."t_msg" VALUES (52, 1, 2, 9, 1, '龙窝泵站工程', '管理员', 2, 5, '新建单元工程质量项目划分', 't', 'f', '2017-11-12 11:00:56');
INSERT INTO "public"."t_msg" VALUES (50, 1, 2, 9, 1, '龙窝泵站工程', '管理员', 1, 7, '新建质量监督申报', 't', 'f', '2017-11-12 11:00:02');
INSERT INTO "public"."t_msg" VALUES (54, 1, 2, 9, 1, '龙窝泵站工程', '管理员', 31, 6, '新建', 't', 'f', '2017-11-12 11:03:47');
INSERT INTO "public"."t_msg" VALUES (48, 1, 2, 9, 1, '龙窝泵站工程', '管理员', 1, 6, '新建质量监督申报', 't', 'f', '2017-11-12 10:57:33');
INSERT INTO "public"."t_msg" VALUES (45, 1, 2, 9, 1, '龙窝泵站工程', '管理员', 0, 9, '新注册', 't', 'f', '2017-10-12 15:27:35');
INSERT INTO "public"."t_msg" VALUES (39, 1, 2, 8, 1, '泰州市测试项目test', '管理员', 1, 5, '新建质量监督申报', 't', 'f', '2017-10-12 15:13:28');
INSERT INTO "public"."t_msg" VALUES (37, 1, 2, 8, 1, '泰州市测试项目test', '管理员', 0, 8, '新注册', 't', 'f', '2017-10-12 15:10:01');
INSERT INTO "public"."t_msg" VALUES (14, 1, 2, 5, 1, '泰州市“双水绕城”凤凰河景观提升工程凤凰河船闸工程', '管理员', 0, 5, '新注册', 't', 'f', '2017-08-23 15:33:09');
INSERT INTO "public"."t_msg" VALUES (61, 1, 2, 7, 1, 'test2', '管理员', 4, 1, '回复质量监督检查意见表', 'f', 'f', '2018-02-20 09:28:47');
INSERT INTO "public"."t_msg" VALUES (62, 1, 2, 3, 1, '测试工程', '管理员', 2, 6, '新建单元工程质量项目划分', 'f', 'f', '2018-04-09 21:38:10');
INSERT INTO "public"."t_msg" VALUES (63, 1, 1, 1, 3, '管理员', '测试工程', 2, 6, '单元工程质量项目划分有批复', 'f', 'f', '2018-04-09 21:38:53');
INSERT INTO "public"."t_msg" VALUES (59, 1, 2, 13, 1, '泰州医药高新区2017年农村河道疏浚整治工程', '管理员', 0, 13, '新注册', 't', 'f', '2017-12-25 10:08:25');
INSERT INTO "public"."t_msg" VALUES (57, 1, 2, 12, 1, '泰州医药高新区中干河连通工程施工标', '管理员', 0, 12, '新注册', 't', 'f', '2017-11-28 08:47:58');
INSERT INTO "public"."t_msg" VALUES (55, 1, 2, 10, 1, '泰州医药高新区2017年农村河道疏浚整治工程施工标(双庆河)', '管理员', 0, 10, '新注册', 't', 'f', '2017-11-27 17:10:52');
INSERT INTO "public"."t_msg" VALUES (64, 1, 2, 3, 1, '测试工程', '管理员', 31, 7, '新建', 'f', 'f', '2018-04-10 11:38:41');
INSERT INTO "public"."t_msg" VALUES (65, 1, 1, 1, 3, '管理员', '测试工程', 31, 7, '有批复', 'f', 'f', '2018-04-10 11:39:07');
INSERT INTO "public"."t_msg" VALUES (66, 1, 2, 14, 1, '镇江水利工程test', '管理员', 0, 14, '新注册', 'f', 'f', '2018-04-10 13:56:15');
INSERT INTO "public"."t_msg" VALUES (67, 1, 1, 1, 14, '管理员', '镇江水利工程test', 0, 14, '项目被管理员开放', 'f', 'f', '2018-04-10 13:57:36');
INSERT INTO "public"."t_msg" VALUES (68, 1, 2, 14, 1, '镇江水利工程test', '管理员', 1, 8, '新建质量监督申报', 'f', 'f', '2018-04-10 14:07:46');
INSERT INTO "public"."t_msg" VALUES (69, 1, 1, 1, 14, '管理员', '镇江水利工程test', 1, 8, '质量监督申报有批复', 'f', 'f', '2018-04-10 14:08:48');
INSERT INTO "public"."t_msg" VALUES (70, 1, 2, 14, 1, '镇江水利工程test', '管理员', 2, 7, '新建单元工程质量项目划分', 'f', 'f', '2018-04-10 14:19:33');
INSERT INTO "public"."t_msg" VALUES (71, 1, 1, 1, 14, '管理员', '镇江水利工程test', 2, 7, '单元工程质量项目划分有批复', 'f', 'f', '2018-04-10 14:21:28');
INSERT INTO "public"."t_msg" VALUES (72, 1, 2, 14, 1, '镇江水利工程test', '管理员', 31, 8, '新建', 'f', 'f', '2018-04-10 14:25:10');
INSERT INTO "public"."t_msg" VALUES (73, 1, 1, 1, 14, '管理员', '镇江水利工程test', 31, 8, '有批复', 'f', 'f', '2018-04-10 14:26:18');
INSERT INTO "public"."t_msg" VALUES (74, 1, 1, 1, 14, '管理员', '镇江水利工程test', 4, 14, '质量监督检查意见表有新消息', 'f', 'f', '2018-04-10 15:19:25');
INSERT INTO "public"."t_msg" VALUES (75, 1, 2, 14, 1, '镇江水利工程test', '管理员', 4, 2, '回复质量监督检查意见表', 'f', 'f', '2018-04-10 15:20:04');
INSERT INTO "public"."t_msg" VALUES (76, 1, 2, 15, 1, 'zhengjiang', '管理员', 0, 15, '新注册', 'f', 'f', '2018-04-10 16:58:15');
INSERT INTO "public"."t_msg" VALUES (77, 1, 1, 1, 15, '管理员', 'zhengjiang', 0, 15, '项目被管理员开放', 'f', 'f', '2018-04-10 16:58:36');
INSERT INTO "public"."t_msg" VALUES (79, 1, 2, 17, 1, '安全TEST', '管理员', 0, 17, '新注册', 'f', 'f', '2018-06-01 06:23:09');
INSERT INTO "public"."t_msg" VALUES (80, 1, 1, 1, 17, '管理员', '安全TEST', 0, 17, '项目被管理员开放', 'f', 'f', '2018-06-01 06:26:01');
INSERT INTO "public"."t_msg" VALUES (81, 1, 2, 18, 1, 'ceshigongcheng', '管理员', 0, 18, '新注册', 'f', 'f', '2018-06-01 07:21:38');
INSERT INTO "public"."t_msg" VALUES (82, 1, 2, 19, 1, '测试无安全', '管理员', 0, 19, '新注册', 'f', 'f', '2018-06-02 08:29:28');
INSERT INTO "public"."t_msg" VALUES (83, 1, 1, 1, 19, '管理员', '测试无安全', 0, 19, '项目被管理员开放', 't', 'f', '2018-06-02 15:31:27');
INSERT INTO "public"."t_msg" VALUES (60, 1, 1, 1, 7, '管理员', 'test2', 4, 7, '质量监督检查意见表有新消息', 't', 'f', '2018-02-20 09:28:18');
INSERT INTO "public"."t_msg" VALUES (84, 1, 2, 7, 1, 'test2', '管理员', 31, 10, '新建', 'f', 'f', '2018-06-02 15:36:19');
INSERT INTO "public"."t_msg" VALUES (85, 1, 2, 17, 1, '安全TEST', '管理员', 10001, 1, '新建', 'f', 'f', '2018-06-02 17:04:12');
INSERT INTO "public"."t_msg" VALUES (86, 1, 2, 17, 1, '安全TEST', '管理员', 10003, 1, '新建', 'f', 'f', '2018-06-02 17:40:40');
INSERT INTO "public"."t_msg" VALUES (87, 1, 2, 17, 1, '安全TEST', '管理员', 10005, 1, '新建', 'f', 'f', '2018-06-02 17:43:39');
INSERT INTO "public"."t_msg" VALUES (88, 1, 2, 20, 1, '县级安全测试', '管理员', 0, 20, '新注册', 'f', 'f', '2018-06-03 22:12:39');
INSERT INTO "public"."t_msg" VALUES (89, 1, 1, 1, 20, '管理员', '县级安全测试', 0, 20, '项目被管理员开放', 'f', 'f', '2018-06-03 22:13:05');
INSERT INTO "public"."t_msg" VALUES (90, 1, 2, 20, 1, '县级安全测试', '管理员', 10001, 2, '新建', 'f', 'f', '2018-06-03 22:14:24');
INSERT INTO "public"."t_msg" VALUES (91, 1, 2, 17, 1, '安全TEST', '管理员', 10010, 1, '新建', 'f', 'f', '2018-06-04 19:26:22');
INSERT INTO "public"."t_msg" VALUES (92, 1, 1, 1, 17, '管理员', '安全TEST', 10003, 1, '被审批退回', 'f', 'f', '2018-06-04 19:36:23');
INSERT INTO "public"."t_msg" VALUES (93, 1, 2, 6, 1, 'test1', '管理员', 71, 2, '新建', 'f', 'f', '2018-06-05 05:57:12');
INSERT INTO "public"."t_msg" VALUES (94, 1, 1, 1, 6, '管理员', 'test1', 71, 2, '审批退回', 'f', 'f', '2018-06-05 05:59:58');
INSERT INTO "public"."t_msg" VALUES (95, 1, 1, 1, 6, '管理员', 'test1', 4, 6, '质量监督检查意见表有新消息', 'f', 'f', '2018-06-05 06:06:13');
INSERT INTO "public"."t_msg" VALUES (96, 1, 2, 21, 1, '镇江工程test', '管理员', 0, 21, '新注册', 'f', 'f', '2018-06-05 14:12:22');
INSERT INTO "public"."t_msg" VALUES (97, 1, 2, 22, 1, '镇江test2', '管理员', 0, 22, '新注册', 'f', 'f', '2018-06-05 14:15:33');
INSERT INTO "public"."t_msg" VALUES (98, 1, 1, 1, 21, '管理员', '镇江工程test', 0, 21, '项目被管理员开放', 'f', 'f', '2018-06-05 14:17:21');
INSERT INTO "public"."t_msg" VALUES (99, 1, 2, 21, 1, '镇江工程test', '管理员', 10001, 3, '新建', 'f', 'f', '2018-06-05 14:36:31');
INSERT INTO "public"."t_msg" VALUES (100, 1, 1, 1, 21, '管理员', '镇江工程test', 1, 3, '质量监督申报有批复', 't', 'f', '2018-06-05 14:45:33');
INSERT INTO "public"."t_msg" VALUES (101, 1, 2, 21, 1, '镇江工程test', '管理员', 10002, 1, '新建', 'f', 'f', '2018-06-05 14:47:13');
INSERT INTO "public"."t_msg" VALUES (102, 1, 1, 1, 21, '管理员', '镇江工程test', 1, 1, '质量监督申报有批复', 'f', 'f', '2018-06-05 14:47:41');
INSERT INTO "public"."t_msg" VALUES (103, 1, 2, 21, 1, '镇江工程test', '管理员', 10006, 1, '新建', 'f', 'f', '2018-06-05 14:50:15');
INSERT INTO "public"."t_msg" VALUES (104, 1, 1, 1, 22, '管理员', '镇江test2', 0, 22, '项目被管理员开放', 'f', 'f', '2018-06-05 14:58:14');
INSERT INTO "public"."t_msg" VALUES (105, 1, 2, 22, 1, '镇江test2', '管理员', 1, 10, '新建质量监督申报', 'f', 'f', '2018-06-05 14:59:01');
INSERT INTO "public"."t_msg" VALUES (106, 1, 1, 1, 22, '管理员', '镇江test2', 1, 10, '质量监督申报有批复', 'f', 'f', '2018-06-05 14:59:39');
INSERT INTO "public"."t_msg" VALUES (107, 1, 2, 22, 1, '镇江test2', '管理员', 2, 9, '新建单元工程质量项目划分', 'f', 'f', '2018-06-05 15:00:46');
INSERT INTO "public"."t_msg" VALUES (108, 1, 1, 1, 22, '管理员', '镇江test2', 2, 9, '单元工程质量项目划分有批复', 'f', 'f', '2018-06-05 15:01:19');
INSERT INTO "public"."t_msg" VALUES (109, 1, 2, 23, 1, 'test10', '管理员', 0, 23, '新注册', 'f', 'f', '2018-06-05 15:26:18');
INSERT INTO "public"."t_msg" VALUES (110, 1, 1, 1, 23, '管理员', 'test10', 0, 23, '项目被管理员开放', 'f', 'f', '2018-06-05 15:26:41');
INSERT INTO "public"."t_msg" VALUES (111, 1, 2, 23, 1, 'test10', '管理员', 1, 11, '新建质量监督申报', 'f', 'f', '2018-06-05 15:27:06');
INSERT INTO "public"."t_msg" VALUES (112, 1, 1, 1, 23, '管理员', 'test10', 1, 11, '质量监督申报有批复', 'f', 'f', '2018-06-05 15:28:37');
INSERT INTO "public"."t_msg" VALUES (113, 1, 2, 23, 1, 'test10', '管理员', 2, 10, '新建单元工程质量项目划分', 'f', 'f', '2018-06-05 15:28:54');
INSERT INTO "public"."t_msg" VALUES (115, 1, 2, 25, 1, 'test5', '管理员', 0, 25, '新注册', 'f', 'f', '2018-06-19 23:00:49');
INSERT INTO "public"."t_msg" VALUES (116, 1, 1, 1, 25, '管理员', 'test5', 0, 25, '项目被管理员开放', 'f', 'f', '2018-06-19 23:00:57');
INSERT INTO "public"."t_msg" VALUES (117, 1, 2, 25, 1, 'test5', '管理员', 10001, 5, '新建', 'f', 'f', '2018-06-19 23:16:43');
INSERT INTO "public"."t_msg" VALUES (118, 1, 1, 1, 25, '管理员', 'test5', 1, 5, '质量监督申报有批复', 'f', 'f', '2018-06-19 23:25:28');
INSERT INTO "public"."t_msg" VALUES (119, 1, 2, 25, 1, 'test5', '管理员', 10001, 6, '新建', 'f', 'f', '2018-06-21 21:20:59');
INSERT INTO "public"."t_msg" VALUES (120, 1, 1, 1, 25, '管理员', 'test5', 1, 6, '质量监督申报有批复', 'f', 'f', '2018-06-21 21:53:56');
INSERT INTO "public"."t_msg" VALUES (121, 1, 2, 25, 1, 'test5', '管理员', 10006, 3, '新建', 'f', 'f', '2018-06-21 22:03:09');
INSERT INTO "public"."t_msg" VALUES (122, 1, 2, 25, 1, 'test5', '管理员', 10009, 2, '新建', 'f', 'f', '2018-06-21 22:03:20');
INSERT INTO "public"."t_msg" VALUES (123, 1, 1, 1, 23, '管理员', 'test10', 0, 23, '项目被管理员关闭', 'f', 'f', '2018-09-23 10:01:45');
INSERT INTO "public"."t_msg" VALUES (124, 1, 1, 1, 23, '管理员', 'test10', 0, 23, '项目被管理员开放', 'f', 'f', '2018-09-23 10:01:50');
INSERT INTO "public"."t_msg" VALUES (125, 1, 1, 1, 23, '管理员', 'test10', 2, 10, '单元工程质量项目划分有批复', 'f', 'f', '2018-09-23 10:03:19');
INSERT INTO "public"."t_msg" VALUES (126, 1, 2, 26, 1, 'projectqqq', '管理员', 0, 26, '新注册', 'f', 'f', '2018-09-23 10:14:40');
INSERT INTO "public"."t_msg" VALUES (127, 1, 1, 1, 26, '管理员', 'projectqqq', 0, 26, '项目被管理员开放', 'f', 'f', '2018-09-23 10:15:06');
INSERT INTO "public"."t_msg" VALUES (128, 1, 2, 26, 1, 'projectqqq', '管理员', 1, 15, '新建质量监督申报', 'f', 'f', '2018-09-23 10:19:22');
INSERT INTO "public"."t_msg" VALUES (129, 1, 1, 1, 26, '管理员', 'projectqqq', 1, 15, '质量监督申报被审批退回', 'f', 'f', '2018-09-23 10:21:35');
INSERT INTO "public"."t_msg" VALUES (130, 1, 2, 26, 1, 'projectqqq', '管理员', 1, 16, '新建质量监督申报', 'f', 'f', '2018-09-23 10:21:54');
INSERT INTO "public"."t_msg" VALUES (131, 1, 1, 1, 26, '管理员', 'projectqqq', 1, 16, '质量监督申报有批复', 'f', 'f', '2018-09-23 10:23:40');
INSERT INTO "public"."t_msg" VALUES (132, 1, 2, 26, 1, 'projectqqq', '管理员', 1, 17, '新建质量监督申报', 'f', 'f', '2018-09-23 10:24:51');
INSERT INTO "public"."t_msg" VALUES (133, 1, 1, 1, 26, '管理员', 'projectqqq', 1, 17, '质量监督申报有批复', 'f', 'f', '2018-09-23 10:26:59');
INSERT INTO "public"."t_msg" VALUES (134, 1, 2, 26, 1, 'projectqqq', '管理员', 2, 12, '新建单元工程质量项目划分', 'f', 'f', '2018-09-23 10:28:06');
INSERT INTO "public"."t_msg" VALUES (135, 1, 1, 1, 26, '管理员', 'projectqqq', 2, 12, '单元工程质量项目划分有批复', 'f', 'f', '2018-09-23 10:29:07');

-- ----------------------------
-- Table structure for t_org
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_org";
CREATE TABLE "public"."t_org" (
  "id" int8 NOT NULL DEFAULT nextval('seq_org'::regclass),
  "gid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL DEFAULT NULL::character varying,
  "permission" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "act" bool NOT NULL DEFAULT true,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_org
-- ----------------------------
INSERT INTO "public"."t_org" VALUES (1, 1, 0, '市水利工程质量监督站', '', 't', 'f', '2017-06-22 15:52:53');
INSERT INTO "public"."t_org" VALUES (4, 11, 0, '工程部', '1,1,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,f,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,f,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,f,f,f,0,f,f,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 't', 'f', '2018-06-01 06:29:16');
INSERT INTO "public"."t_org" VALUES (2, 1, 1, '县水利xxx', '', 't', 'f', '2017-10-11 20:30:59');

-- ----------------------------
-- Table structure for t_project
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_project";
CREATE TABLE "public"."t_project" (
  "id" int8 NOT NULL DEFAULT nextval('seq_project'::regclass),
  "name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL DEFAULT NULL::character varying,
  "pass" varchar(50) COLLATE "pg_catalog"."default" NOT NULL DEFAULT NULL::character varying,
  "gid" int8 NOT NULL DEFAULT 0,
  "company" varchar(200) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "contacts" varchar(50) COLLATE "pg_catalog"."default" NOT NULL DEFAULT NULL::character varying,
  "mobile" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "email" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "n0" int4 NOT NULL DEFAULT 0,
  "n1" int4 NOT NULL DEFAULT 0,
  "n2" int4 NOT NULL DEFAULT 0,
  "n3" int4 NOT NULL DEFAULT 0,
  "n4" int4 NOT NULL DEFAULT 0,
  "n5" int4 NOT NULL DEFAULT 0,
  "n51" int4 NOT NULL DEFAULT 0,
  "n52" int4 NOT NULL DEFAULT 0,
  "n6" int4 NOT NULL DEFAULT 0,
  "n61" int4 NOT NULL DEFAULT 0,
  "n62" int4 NOT NULL DEFAULT 0,
  "n63" int4 NOT NULL DEFAULT 0,
  "n64" int4 NOT NULL DEFAULT 0,
  "n7" int4 NOT NULL DEFAULT 0,
  "n71" int4 NOT NULL DEFAULT 0,
  "n72" int4 NOT NULL DEFAULT 0,
  "n73" int4 NOT NULL DEFAULT 0,
  "n74" int4 NOT NULL DEFAULT 0,
  "n75" int4 NOT NULL DEFAULT 0,
  "n76" int4 NOT NULL DEFAULT 0,
  "n8" int4 NOT NULL DEFAULT 0,
  "n9" int4 NOT NULL DEFAULT 0,
  "n91" int4 NOT NULL DEFAULT 0,
  "n92" int4 NOT NULL DEFAULT 0,
  "n921" int4 NOT NULL DEFAULT 0,
  "n922" int4 NOT NULL DEFAULT 0,
  "n923" int4 NOT NULL DEFAULT 0,
  "n924" int4 NOT NULL DEFAULT 0,
  "n925" int4 NOT NULL DEFAULT 0,
  "n10" int4 NOT NULL DEFAULT 0,
  "n9999" int4 NOT NULL DEFAULT 0,
  "s0" int4 NOT NULL DEFAULT 0,
  "s1" int4 NOT NULL DEFAULT 0,
  "s2" int4 NOT NULL DEFAULT 0,
  "s3" int4 NOT NULL DEFAULT 0,
  "s4" int4 NOT NULL DEFAULT 0,
  "s5" int4 NOT NULL DEFAULT 0,
  "s51" int4 NOT NULL DEFAULT 0,
  "s52" int4 NOT NULL DEFAULT 0,
  "s6" int4 NOT NULL DEFAULT 0,
  "s61" int4 NOT NULL DEFAULT 0,
  "s62" int4 NOT NULL DEFAULT 0,
  "s63" int4 NOT NULL DEFAULT 0,
  "s64" int4 NOT NULL DEFAULT 0,
  "s7" int4 NOT NULL DEFAULT 0,
  "s71" int4 NOT NULL DEFAULT 0,
  "s72" int4 NOT NULL DEFAULT 0,
  "s73" int4 NOT NULL DEFAULT 0,
  "s74" int4 NOT NULL DEFAULT 0,
  "s75" int4 NOT NULL DEFAULT 0,
  "s76" int4 NOT NULL DEFAULT 0,
  "s8" int4 NOT NULL DEFAULT 0,
  "s9" int4 NOT NULL DEFAULT 0,
  "s91" int4 NOT NULL DEFAULT 0,
  "s92" int4 NOT NULL DEFAULT 0,
  "s921" int4 NOT NULL DEFAULT 0,
  "s922" int4 NOT NULL DEFAULT 0,
  "s923" int4 NOT NULL DEFAULT 0,
  "s924" int4 NOT NULL DEFAULT 0,
  "s925" int4 NOT NULL DEFAULT 0,
  "s10" int4 NOT NULL DEFAULT 0,
  "s9999" int4 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now(),
  "n31" int4 NOT NULL DEFAULT 0,
  "n32" int4 NOT NULL DEFAULT 0,
  "n33" int4 NOT NULL DEFAULT 0,
  "n34" int4 NOT NULL DEFAULT 0,
  "n35" int4 NOT NULL DEFAULT 0,
  "n36" int4 NOT NULL DEFAULT 0,
  "s31" int4 NOT NULL DEFAULT 0,
  "s32" int4 NOT NULL DEFAULT 0,
  "s33" int4 NOT NULL DEFAULT 0,
  "s34" int4 NOT NULL DEFAULT 0,
  "s35" int4 NOT NULL DEFAULT 0,
  "s36" int4 NOT NULL DEFAULT 0,
  "n10001" int4 NOT NULL DEFAULT 0,
  "n10002" int4 NOT NULL DEFAULT 0,
  "n10003" int4 NOT NULL DEFAULT 0,
  "n10004" int4 NOT NULL DEFAULT 0,
  "s10001" int4 NOT NULL DEFAULT 0,
  "s10002" int4 NOT NULL DEFAULT 0,
  "s10003" int4 NOT NULL DEFAULT 0,
  "s10004" int4 NOT NULL DEFAULT 0,
  "type" int4 NOT NULL DEFAULT 0,
  "n10005" int4 NOT NULL DEFAULT 0,
  "n10006" int4 NOT NULL DEFAULT 0,
  "n10007" int4 NOT NULL DEFAULT 0,
  "n10008" int4 NOT NULL DEFAULT 0,
  "s10005" int4 NOT NULL DEFAULT 0,
  "s10006" int4 NOT NULL DEFAULT 0,
  "s10007" int4 NOT NULL DEFAULT 0,
  "s10008" int4 NOT NULL DEFAULT 0,
  "n77" int4 NOT NULL DEFAULT 0,
  "s77" int4 NOT NULL DEFAULT 0,
  "n10009" int4 NOT NULL DEFAULT 0,
  "s10009" int4 NOT NULL DEFAULT 0,
  "n10010" int4 NOT NULL DEFAULT 0,
  "s10010" int4 NOT NULL DEFAULT 0,
  "n37" int4 NOT NULL DEFAULT 0,
  "s37" int4 NOT NULL DEFAULT 0
)
;

-- ----------------------------
-- Records of t_project
-- ----------------------------
INSERT INTO "public"."t_project" VALUES (2, 'JTMY', 'ffd83b04aa9c292b30ebaa0e8506bcb9', 1, '1', '王大锤', '13515153388', '123456@qq.com', 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 4, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, '2017-07-26 08:43:02', 't', 'f', '2017-07-21 17:01:59', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (3, '测试工程', '96e79218965eb72c92a549dd5a330112', 1, '测试单位', '111111', '0512-80808080', '11@11.com', 1, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 4, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, '2018-04-10 11:37:24', 't', 'f', '2017-07-25 15:06:09', 7, 6, 6, 6, 6, 6, 4, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (13, '泰州医药高新区2017年农村河道疏浚整治工程', 'e10adc3949ba59abbe56e057f20f883e', 7, '泰州医药高新区水利工程建设处', '李开兵', '13952637881', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'f', 't', '2017-12-25 10:08:25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (12, '泰州医药高新区中干河连通工程施工标', '25d55ad283aa400af464c76d713c07ad', 7, '泰州医药高新区水利工程建设处', '李开兵', '13952637881', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'f', 't', '2017-11-28 08:47:58', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (11, '泰州医药高新区药城大道西景河涵洞工程施工标', '25d55ad283aa400af464c76d713c07ad', 7, '泰州医药高新区水利工程建设处', '李开兵', '13952637881', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-12-05 10:35:09', 'f', 't', '2017-11-28 08:42:46', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (10, '泰州医药高新区2017年农村河道疏浚整治工程施工标(双庆河)', '25d55ad283aa400af464c76d713c07ad', 7, '泰州医药高新区水利工程建设处', '李开兵', '13952637881', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-11-28 08:45:11', 'f', 't', '2017-11-27 17:10:52', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (9, '龙窝泵站工程', '96e79218965eb72c92a549dd5a330112', 1, '泰州市城市水利投资开发有限公司', '储飞', '15052800028', '123456@qq.com', 1, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-11-12 10:58:54', 'f', 't', '2017-10-12 15:27:35', 6, 5, 5, 5, 5, 5, 2, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (8, '泰州市测试项目test', '96e79218965eb72c92a549dd5a330112', 1, '测试test单位', '张三', '13512566666', '66666@qq.com', 1, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 't', 't', '2017-10-12 15:10:01', 5, 4, 4, 4, 4, 4, 4, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (5, '泰州市“双水绕城”凤凰河景观提升工程凤凰河船闸工程', '25f9e794323b453885f5181f1b624d0b', 1, '泰州市城市水利投资开发有限公司', '李建军', '15195229633', '458654245@qq.com', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-08-23 15:36:10', 'f', 't', '2017-08-23 15:33:09', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (4, '通港路东延配套水系调整工程', '2503c4f3d30261f4fce0be84f45d3b8d', 1, '高港区水利局', '滕智超', '15052308325', '1183739264@qq.com', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-08-15 08:52:09', 't', 't', '2017-08-02 10:14:53', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (1, '周山河四期工程', 'beed2646547415f61085d0fea464353a', 1, '泰州市城市水利投资开发有限公司', '刘小林', '15961086689', '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-06-23 11:03:12', 't', 't', '2017-06-23 11:02:18', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (14, '镇江水利工程test', '96e79218965eb72c92a549dd5a330112', 1, '测试单位', '张三', '13333333333', '133333333@qq.com', 1, 8, 7, 7, 2, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 4, 4, 4, 1, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, '2018-04-11 20:44:25', 't', 'f', '2018-04-10 13:56:15', 8, 7, 7, 7, 7, 7, 4, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (15, 'zhengjiang', '96e79218965eb72c92a549dd5a330112', 1, 'zhenjiang', 'lisi', '1333333', '33333333@qq.com', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 't', 'f', '2018-04-10 16:58:15', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (19, '测试无安全', '96e79218965eb72c92a549dd5a330112', 11, '测试无安全单位', '无安全', '13811111111', 'xz@15.com', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2018-06-02 16:50:42', 't', 'f', '2018-06-02 08:29:28', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (18, 'ceshigongcheng', '96e79218965eb72c92a549dd5a330112', 1, '测试工程单位', '王海涛', '13805219999', 'xzss@163.com', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'f', 'f', '2018-06-01 07:21:38', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (20, '县级安全测试', '96e79218965eb72c92a549dd5a330112', 11, '县级安全测试', '赵四', '17789101111', 'xzclong@163.com', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 't', 'f', '2018-06-03 22:12:39', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (17, '安全TEST', '96e79218965eb72c92a549dd5a330112', 1, '安全测试单位', '张三', '13885218919', 'nariwht@163.com', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2018-06-05 06:54:59', 't', 'f', '2018-06-01 06:23:09', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 2, 0, 3, 0, 2, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0);
INSERT INTO "public"."t_project" VALUES (22, '镇江test2', '96e79218965eb72c92a549dd5a330112', 1, '镇江test2', '张三', '13333333333', '1333333333@qq.com', 1, 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, 0, 4, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, '2018-06-06 16:13:19', 't', 'f', '2018-06-05 14:15:33', 9, 9, 9, 9, 9, 9, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (6, 'test1', '96e79218965eb72c92a549dd5a330112', 1, 'aaaa', 'zk', '18652287777', 'zk@sina.com', 1, 3, 2, 2, 4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 4, 4, 4, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, '2018-06-05 09:17:01', 't', 'f', '2017-09-23 11:21:04', 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (21, '镇江工程test', '96e79218965eb72c92a549dd5a330112', 1, '镇江test', '张三', '13333333333', '13333333333@qq.com', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2018-06-06 15:38:48', 't', 'f', '2018-06-05 14:12:22', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 1, 0, 4, 4, 1, 0, 2, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (25, 'test5', '96e79218965eb72c92a549dd5a330112', 1, 'test5', 'zk', '18652228790', 'test@test.com', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2018-06-21 21:18:36', 't', 'f', '2018-06-19 23:00:49', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 0, 0, 4, 1, 0, 0, 2, 0, 3, 0, 0, 0, 2, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (7, 'test2', '96e79218965eb72c92a549dd5a330112', 2, 'test2', '张三', '13512566666', '1111@qq.com', 1, 4, 3, 3, 1, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 1, 4, 1, 1, 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2018-06-21 23:23:55', 't', 'f', '2017-10-11 20:47:32', 10, 3, 3, 3, 3, 3, 2, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO "public"."t_project" VALUES (23, 'test10', '96e79218965eb72c92a549dd5a330112', 1, '111111', '张三', '13036525555', '1333333333@qq.com', 1, 1, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 0, 0, 4, 1, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, '2018-09-23 09:40:10', 't', 'f', '2018-06-05 15:26:18', 10, 10, 10, 10, 10, 10, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1);
INSERT INTO "public"."t_project" VALUES (26, 'projectqqq', '96e79218965eb72c92a549dd5a330112', 1, 'wwwwww', 'zd', '18652287111', 'test@test.com', 1, 19, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 0, 0, 4, 1, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, '2018-09-23 10:15:51', 't', 'f', '2018-09-23 10:14:40', 12, 12, 12, 12, 12, 12, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 1);

-- ----------------------------
-- Table structure for t_reply1
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply1";
CREATE TABLE "public"."t_reply1" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply1'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_reply1
-- ----------------------------
INSERT INTO "public"."t_reply1" VALUES (1, 2, 2, '321', '2017-07-27', 'qqqq', 1, 't', 'f', '2017-07-26 09:11:12');
INSERT INTO "public"."t_reply1" VALUES (2, 6, 3, 'xxxa', '2017-09-23', '    你单位《关于test1工程实施质量监督的申请》（XXXX［XXXX］XX号）文收悉。该工程已经批复，并列入年度计划，各项准备工作已就绪，已具备开工条件。我站同意对该工程实施质量监督。现将我站质量监督工作开展有关情况通知如下：', 1, 't', 'f', '2017-09-23 11:41:29');
INSERT INTO "public"."t_reply1" VALUES (3, 7, 4, '123', '2017-10-11', '    你单位《关于test2工程实施质量监督的申请》（XXXX［XXXX］XX号）文收悉。该工程已经批复，并列入年度计划，各项准备工作已就绪，已具备开工条件。我站同意对该工程实施质量监督。现将我站质量监督工作开展有关情况通知如下：', 1, 't', 'f', '2017-10-11 20:50:28');
INSERT INTO "public"."t_reply1" VALUES (4, 8, 5, '123', '2017-10-12', '    你单位《关于泰州市测试项目test工程实施质量监督的申请》（XXXX［XXXX］XX号）文收悉。该工程已经批复，并列入年度计划，各项准备工作已就绪，已具备开工条件。我站同意对该工程实施质量监督。现将我站质量监督工作开展有关情况通知如下：', 1, 't', 'f', '2017-10-12 15:14:24');
INSERT INTO "public"."t_reply1" VALUES (5, 9, 6, '', '', '12312', 1, 'f', 'f', '2017-11-12 10:58:41');
INSERT INTO "public"."t_reply1" VALUES (6, 9, 7, '123', '2017-11-20', '    你单位《关于龙窝泵站工程工程实施质量监督的申请》（XXXX［XXXX］XX号）文收悉。该工程已经批复，并列入年度计划，各项准备工作已就绪，已具备开工条件。我站同意对该工程实施质量监督。现将我站质量监督工作开展有关情况通知如下：', 1, 't', 'f', '2017-11-12 11:00:26');
INSERT INTO "public"."t_reply1" VALUES (7, 3, 1, '1', '2017-12-13', '    你单位《关于测试工程工程实施质量监督的申请》（XXXX［XXXX］XX号）文收悉。该工程已经批复，并列入年度计划，各项准备工作已就绪，已具备开工条件。我站同意对该工程实施质量监督。现将我站质量监督工作开展有关情况通知如下：1', 1, 't', 'f', '2017-12-15 10:35:51');
INSERT INTO "public"."t_reply1" VALUES (8, 14, 8, '123', '2018-04-03', '    你单位《关于镇江水利工程test工程实施质量监督的申请》（XXXX［XXXX］XX号）文收悉。该工程已经批复，并列入年度计划，各项准备工作已就绪，已具备开工条件。我站同意对该工程实施质量监督。现将我站质量监督工作开展有关情况通知如下：', 1, 't', 'f', '2018-04-10 14:08:48');
INSERT INTO "public"."t_reply1" VALUES (10, 22, 10, '12', '2018-06-04', '    你单位《关于镇江test2工程实施质量监督的申请》（XXXX［XXXX］XX号）文收悉。该工程已经批复，并列入年度计划，各项准备工作已就绪，已具备开工条件。我站同意对该工程实施质量监督。现将我站质量监督工作开展有关情况通知如下：', 1, 't', 'f', '2018-06-05 14:59:39');
INSERT INTO "public"."t_reply1" VALUES (11, 23, 11, '123', '2018-05-29', '    你单位《关于test10工程实施质量监督的申请》（XXXX［XXXX］XX号）文收悉。该工程已经批复，并列入年度计划，各项准备工作已就绪，已具备开工条件。我站同意对该工程实施质量监督。现将我站质量监督工作开展有关情况通知如下：', 1, 't', 'f', '2018-06-05 15:28:37');
INSERT INTO "public"."t_reply1" VALUES (13, 26, 15, '', '', 'dsfds', 1, 'f', 'f', '2018-09-23 10:21:35');
INSERT INTO "public"."t_reply1" VALUES (14, 26, 16, 'ssss', '2018-09-23', '    你单位《关于projectqqq工程实施质量监督的申请》（XXXX［XXXX］XX号）文收悉。该工程已经批复，并列入年度计划，各项准备工作已就绪，已具备开工条件。我站同意对该工程实施质量监督。现将我站质量监督工作开展有关情况通知如下：', 1, 't', 'f', '2018-09-23 10:23:40');
INSERT INTO "public"."t_reply1" VALUES (15, 26, 17, 'asa', '2018-09-23', '    你单位《关于projectqqq工程实施质量监督的申请》（XXXX［XXXX］XX号）文收悉。该工程已经批复，并列入年度计划，各项准备工作已就绪，已具备开工条件。我站同意对该工程实施质量监督。现将我站质量监督工作开展a有关情况通知如下：', 1, 't', 'f', '2018-09-23 10:26:59');

-- ----------------------------
-- Table structure for t_reply10001
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply10001";
CREATE TABLE "public"."t_reply10001" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply10001'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now(),
  "t1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "t6" text COLLATE "pg_catalog"."default" DEFAULT ''::text
)
;

-- ----------------------------
-- Records of t_reply10001
-- ----------------------------
INSERT INTO "public"."t_reply10001" VALUES (2, 21, 3, '123', '2018-06-04', '        建设管理处：123

    你处《关于申请        安全监督的报告》（文号）收悉。根据省水利厅《江苏省水利工程建设安全监督工作指导意见》（苏水规〔2009〕4号）精神，经研究，接受你处安全监督申请，成立        安全监督项目组，负责该工程施工期安全监督工作。人员由    、     、组成，    为组长。

    现将《        安全监督计划要点》、《项目法人安全生产管理检查评分表》、《监理单位安全管理检查评分表》和《江苏省水利工程建设安全施工标准化工地考核表》印发给你们，请结合工程实际细化后遵照执行。

    请你处按照《安全生产法》、《建设工程安全生产管理条例》、《水利工程建设安全生产管理规定》、《江苏省水利工程建设安全生产管理规定》、《江苏省水利基本建设项目危险性较大工程安全专项施工方案编制实施办法》等有关规定，督促参建单位建立健全安全生产组织机构，制定并落实安全生产责任制，狠抓安全生产各项措施的落实，并按照安全监督计划要求，配合做好各阶段安全监督管理相关工作。


联 系 人：
联系电话：
E-mail:
', 1, 't', 'f', '2018-06-05 14:45:33', '', '', '', '', '', '');
INSERT INTO "public"."t_reply10001" VALUES (4, 25, 5, 'sdaf', '2018-06-19', '        建设管理处：

    你处《关于申请        安全监督的报告》（文号）收悉。根据省水利厅《江苏省水利工程建设安全监督工作指导意见》（苏水规〔2009〕4号）精神，经研究，接受你处安全监督申请，成立        安全监督项目组，负责该工程施工期安全监督工作。人员由    、     、组成，    为组长。

    现将《        安全监督计划要点》、《项目法人安全生产管理检查评分表》、《监理单位安全管理检查评分表》和《江苏省水利工程建设安全施工标准化工地考核表》印发给你们，请结合工程实际细化后遵照执行。

    请你处按照《安全生产法》、《建设工程安全生产管理条例》、《水利工程建设安全生产管理规定》、《江苏省水利工程建设安全生产管理规定》、《江苏省水利基本建设项目危险性较大工程安全专项施工方案编制实施办法》等有关规定，督促参建单位建立健全安全生产组织机构，制定并落实安全生产责任制，狠抓安全生产各项措施的落实，并按照安全监督计划要求，配合做好各阶段安全监督管理相关工作。


联 系 人：
联系电话：
E-mail:
', 1, 't', 'f', '2018-06-19 23:25:28', '', '', '', '', '', '');
INSERT INTO "public"."t_reply10001" VALUES (5, 25, 6, '', '', '', 1, 't', 'f', '2018-06-21 21:53:56', 'sdf', 'xxx', 'dfd', '', '', '2018-06-21');

-- ----------------------------
-- Table structure for t_reply10002
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply10002";
CREATE TABLE "public"."t_reply10002" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply10002'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_reply10002
-- ----------------------------
INSERT INTO "public"."t_reply10002" VALUES (2, 21, 1, '123', '2018-06-12', '123', 1, 't', 'f', '2018-06-05 14:47:41');

-- ----------------------------
-- Table structure for t_reply10003
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply10003";
CREATE TABLE "public"."t_reply10003" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply10003'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_reply10003
-- ----------------------------
INSERT INTO "public"."t_reply10003" VALUES (2, 17, 1, '', '', '1', 1, 'f', 'f', '2018-06-04 19:36:23');

-- ----------------------------
-- Table structure for t_reply10004
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply10004";
CREATE TABLE "public"."t_reply10004" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply10004'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply10005
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply10005";
CREATE TABLE "public"."t_reply10005" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply10005'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply10006
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply10006";
CREATE TABLE "public"."t_reply10006" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply10006'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply10007
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply10007";
CREATE TABLE "public"."t_reply10007" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply10007'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply10008
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply10008";
CREATE TABLE "public"."t_reply10008" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply10008'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply10009
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply10009";
CREATE TABLE "public"."t_reply10009" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply10009'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply10010
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply10010";
CREATE TABLE "public"."t_reply10010" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply10010'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply2
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply2";
CREATE TABLE "public"."t_reply2" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply2'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_reply2
-- ----------------------------
INSERT INTO "public"."t_reply2" VALUES (1, 2, 1, '334', '2017-07-29', '333', 1, 't', 'f', '2017-07-26 09:13:28');
INSERT INTO "public"."t_reply2" VALUES (2, 6, 2, '11111', '2017-09-23', '    你单位《关于test1工程项目划分的申请》（XXXX［XXXX］XX号）文收悉。依据相关规范、规程及施工图等资料，经研究，提出确认意见如下：', 1, 't', 'f', '2017-09-23 11:57:16');
INSERT INTO "public"."t_reply2" VALUES (3, 7, 3, '123', '2017-10-24', '    你单位《关于test2工程项目划分的申请》（XXXX［XXXX］XX号）文收悉。依据相关规范、规程及施工图等资料，经研究，提出确认意见如下：', 1, 't', 'f', '2017-10-11 20:51:11');
INSERT INTO "public"."t_reply2" VALUES (4, 8, 4, '123', '2017-10-19', '    你单位《关于泰州市测试项目test工程项目划分的申请》（XXXX［XXXX］XX号）文收悉。依据相关规范、规程及施工图等资料，经研究，提出确认意见如下：', 1, 't', 'f', '2017-10-12 15:16:32');
INSERT INTO "public"."t_reply2" VALUES (5, 9, 5, '1234', '2017-12-04', '    你单位《关于龙窝泵站工程工程项目划分的申请》（XXXX［XXXX］XX号）文收悉。依据相关规范、规程及施工图等资料，经研究，提出确认意见如下：', 1, 't', 'f', '2017-11-12 11:01:31');
INSERT INTO "public"."t_reply2" VALUES (6, 3, 6, '123', '2018-04-23', '    你单位《关于测试工程工程项目划分的申请》（XXXX［XXXX］XX号）文收悉。依据相关规范、规程及施工图等资料，经研究，提出确认意见如下：', 1, 't', 'f', '2018-04-09 21:38:53');
INSERT INTO "public"."t_reply2" VALUES (7, 14, 7, '6666', '2018-04-24', '    你单位《关于镇江水利工程test工程项目划分的申请》（XXXX［XXXX］XX号）文收悉。依据相关规范、规程及施工图等资料，经研究，提出确认意见如下：', 1, 't', 'f', '2018-04-10 14:21:28');
INSERT INTO "public"."t_reply2" VALUES (9, 22, 9, '123', '2018-06-13', '    你单位《关于镇江test2工程项目划分的申请》（XXXX［XXXX］XX号）文收悉。依据相关规范、规程及施工图等资料，经研究，提出确认意见如下：', 1, 't', 'f', '2018-06-05 15:01:19');
INSERT INTO "public"."t_reply2" VALUES (11, 23, 10, 'xxz', '2018-09-23', '    你单位《关于test10工程项目划分的申请》（XXXX［XXXX］XX号）文收悉。依据相关规范、规程及施工图等资料，经研究，提出确认意见如下：', 1, 't', 'f', '2018-09-23 10:03:19');
INSERT INTO "public"."t_reply2" VALUES (12, 26, 12, 'sdaf', '2018-09-23', '    你单位《关于projectqqq工程项目划分的申请》（XXXX［XXXX］XX号）文收悉。依据相关规范、规程及施工图等资料，经研究，提出确认意见如下：', 1, 't', 'f', '2018-09-23 10:29:07');

-- ----------------------------
-- Table structure for t_reply31
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply31";
CREATE TABLE "public"."t_reply31" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply31'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply32
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply32";
CREATE TABLE "public"."t_reply32" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply32'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply33
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply33";
CREATE TABLE "public"."t_reply33" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply33'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply34
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply34";
CREATE TABLE "public"."t_reply34" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply34'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply35
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply35";
CREATE TABLE "public"."t_reply35" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply35'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply36
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply36";
CREATE TABLE "public"."t_reply36" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply36'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply37
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply37";
CREATE TABLE "public"."t_reply37" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply37'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply4
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply4";
CREATE TABLE "public"."t_reply4" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply4'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_reply4
-- ----------------------------
INSERT INTO "public"."t_reply4" VALUES (1, 7, 1, '1', '1', '1', '2018-02-20', '11', 7, 't', 'f', '2018-02-20 09:28:47');
INSERT INTO "public"."t_reply4" VALUES (2, 14, 2, '123', '123', '', '2018-04-18', '123', 14, 't', 'f', '2018-04-10 15:20:04');

-- ----------------------------
-- Table structure for t_reply51
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply51";
CREATE TABLE "public"."t_reply51" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply51'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply52
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply52";
CREATE TABLE "public"."t_reply52" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply52'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply61
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply61";
CREATE TABLE "public"."t_reply61" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply61'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply62
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply62";
CREATE TABLE "public"."t_reply62" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply62'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_reply62
-- ----------------------------
INSERT INTO "public"."t_reply62" VALUES (1, 7, 1, '', '', '123', 1, 't', 'f', '2017-10-11 20:53:46');

-- ----------------------------
-- Table structure for t_reply63
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply63";
CREATE TABLE "public"."t_reply63" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply63'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply64
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply64";
CREATE TABLE "public"."t_reply64" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply64'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply71
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply71";
CREATE TABLE "public"."t_reply71" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply71'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_reply71
-- ----------------------------
INSERT INTO "public"."t_reply71" VALUES (2, 6, 2, '', '', '1', 1, 'f', 'f', '2018-06-05 05:59:58');

-- ----------------------------
-- Table structure for t_reply72
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply72";
CREATE TABLE "public"."t_reply72" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply72'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply73
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply73";
CREATE TABLE "public"."t_reply73" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply73'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply74
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply74";
CREATE TABLE "public"."t_reply74" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply74'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply75
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply75";
CREATE TABLE "public"."t_reply75" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply75'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply76
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply76";
CREATE TABLE "public"."t_reply76" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply76'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply77
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply77";
CREATE TABLE "public"."t_reply77" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply77'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply8
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply8";
CREATE TABLE "public"."t_reply8" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply8'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply91
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply91";
CREATE TABLE "public"."t_reply91" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply91'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply921
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply921";
CREATE TABLE "public"."t_reply921" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply921'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "proj" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "stage" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer_code" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "owner" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "owner_code" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply922
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply922";
CREATE TABLE "public"."t_reply922" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply922'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "proj" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "stage" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer_code" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "owner" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "owner_code" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply923
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply923";
CREATE TABLE "public"."t_reply923" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply923'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "proj" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "stage" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer_code" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "owner" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "owner_code" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply924
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply924";
CREATE TABLE "public"."t_reply924" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply924'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "proj" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "stage" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer_code" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "owner" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "owner_code" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "approver" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "approver_code" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c9" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c10" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply925
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply925";
CREATE TABLE "public"."t_reply925" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply925'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "proj" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "stage" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer_code" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "owner" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "owner_code" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "approver" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "approver_code" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c1" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c2" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c3" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c4" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c5" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c6" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c7" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c8" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c9" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "c10" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_reply9999
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_reply9999";
CREATE TABLE "public"."t_reply9999" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply9999'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "signer" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "comp" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "date" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "content" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_user";
CREATE TABLE "public"."t_user" (
  "id" int8 NOT NULL DEFAULT nextval('seq_user'::regclass),
  "gid" int8 NOT NULL DEFAULT 0,
  "oid" int8 NOT NULL DEFAULT 0,
  "username" varchar(200) COLLATE "pg_catalog"."default" NOT NULL DEFAULT NULL::character varying,
  "password" char(32) COLLATE "pg_catalog"."default" NOT NULL DEFAULT NULL::bpchar,
  "name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL DEFAULT NULL::character varying,
  "serial" varchar(200) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "sex" bool NOT NULL DEFAULT true,
  "mobile" varchar(20) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "imei" varchar(20) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "email" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "lead" bool NOT NULL DEFAULT false,
  "admin" bool NOT NULL DEFAULT false,
  "permission" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "act" bool NOT NULL DEFAULT true,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO "public"."t_user" VALUES (1, 0, 0, 'admin', '96e79218965eb72c92a549dd5a330112', '管理员', '', 't', '', '', '', 'f', 'f', 'ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff', 't', 'f', '2017-06-22 15:52:53');
INSERT INTO "public"."t_user" VALUES (5, 11, 4, 'admintest', '96e79218965eb72c92a549dd5a330112', '张三', '', 'f', '', '', '', 'f', 'f', '1,1,1,0,0,0,0,0,0,0,0,f,0,0,0,0,0,0,0,0,0,f,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 't', 't', '2018-06-01 06:30:07');
INSERT INTO "public"."t_user" VALUES (3, 1, 2, '泰兴管理员', '4297f44b13955235245b2497399d7a93', '李四', '', 'f', '', '', '', 'f', 'f', '', 't', 't', '2017-10-12 15:24:25');
INSERT INTO "public"."t_user" VALUES (2, 1, 2, 'test2', '4297f44b13955235245b2497399d7a93', '123', '123', 'f', '', '', '', 'f', 'f', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 't', 'f', '2017-10-11 20:32:03');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."seq_article"', 8, true);
SELECT setval('"public"."seq_article_type"', 9, true);
SELECT setval('"public"."seq_attachment"', 6, true);
SELECT setval('"public"."seq_check_type"', 6, true);
SELECT setval('"public"."seq_facade_type"', 15, true);
SELECT setval('"public"."seq_feedback"', 4, true);
SELECT setval('"public"."seq_flow1"', 20, true);
SELECT setval('"public"."seq_flow10001"', 7, true);
SELECT setval('"public"."seq_flow10002"', 3, true);
SELECT setval('"public"."seq_flow10003"', 3, true);
SELECT setval('"public"."seq_flow10004"', 3, false);
SELECT setval('"public"."seq_flow10005"', 3, true);
SELECT setval('"public"."seq_flow10006"', 4, true);
SELECT setval('"public"."seq_flow10007"', 3, false);
SELECT setval('"public"."seq_flow10008"', 3, false);
SELECT setval('"public"."seq_flow10009"', 3, true);
SELECT setval('"public"."seq_flow10010"', 3, true);
SELECT setval('"public"."seq_flow2"', 13, true);
SELECT setval('"public"."seq_flow31"', 12, true);
SELECT setval('"public"."seq_flow32"', 3, false);
SELECT setval('"public"."seq_flow33"', 3, false);
SELECT setval('"public"."seq_flow34"', 3, false);
SELECT setval('"public"."seq_flow35"', 3, false);
SELECT setval('"public"."seq_flow36"', 3, false);
SELECT setval('"public"."seq_flow37"', 3, false);
SELECT setval('"public"."seq_flow4"', 6, true);
SELECT setval('"public"."seq_flow51"', 4, false);
SELECT setval('"public"."seq_flow52"', 4, false);
SELECT setval('"public"."seq_flow61"', 4, false);
SELECT setval('"public"."seq_flow62"', 4, true);
SELECT setval('"public"."seq_flow63"', 4, false);
SELECT setval('"public"."seq_flow64"', 4, false);
SELECT setval('"public"."seq_flow71"', 4, true);
SELECT setval('"public"."seq_flow72"', 4, false);
SELECT setval('"public"."seq_flow73"', 4, false);
SELECT setval('"public"."seq_flow74"', 4, false);
SELECT setval('"public"."seq_flow75"', 4, false);
SELECT setval('"public"."seq_flow76"', 4, false);
SELECT setval('"public"."seq_flow77"', 3, false);
SELECT setval('"public"."seq_flow8"', 4, false);
SELECT setval('"public"."seq_flow91"', 4, false);
SELECT setval('"public"."seq_flow921"', 4, false);
SELECT setval('"public"."seq_flow922"', 4, false);
SELECT setval('"public"."seq_flow923"', 4, false);
SELECT setval('"public"."seq_flow924"', 4, false);
SELECT setval('"public"."seq_flow925"', 4, false);
SELECT setval('"public"."seq_flow9999"', 4, false);
SELECT setval('"public"."seq_forget"', 4, false);
SELECT setval('"public"."seq_group"', 14, true);
SELECT setval('"public"."seq_log_event"', 4, false);
SELECT setval('"public"."seq_log_login"', 176, true);
SELECT setval('"public"."seq_msg"', 136, true);
SELECT setval('"public"."seq_org"', 6, true);
SELECT setval('"public"."seq_project"', 27, true);
SELECT setval('"public"."seq_reply1"', 16, true);
SELECT setval('"public"."seq_reply10001"', 6, true);
SELECT setval('"public"."seq_reply10002"', 4, true);
SELECT setval('"public"."seq_reply10003"', 4, true);
SELECT setval('"public"."seq_reply10004"', 4, false);
SELECT setval('"public"."seq_reply10005"', 3, false);
SELECT setval('"public"."seq_reply10006"', 3, false);
SELECT setval('"public"."seq_reply10007"', 3, false);
SELECT setval('"public"."seq_reply10008"', 3, false);
SELECT setval('"public"."seq_reply10009"', 3, false);
SELECT setval('"public"."seq_reply10010"', 3, false);
SELECT setval('"public"."seq_reply2"', 13, true);
SELECT setval('"public"."seq_reply31"', 3, false);
SELECT setval('"public"."seq_reply32"', 3, false);
SELECT setval('"public"."seq_reply33"', 3, false);
SELECT setval('"public"."seq_reply34"', 3, false);
SELECT setval('"public"."seq_reply35"', 3, false);
SELECT setval('"public"."seq_reply36"', 3, false);
SELECT setval('"public"."seq_reply37"', 3, false);
SELECT setval('"public"."seq_reply4"', 5, true);
SELECT setval('"public"."seq_reply51"', 4, false);
SELECT setval('"public"."seq_reply52"', 4, false);
SELECT setval('"public"."seq_reply61"', 4, false);
SELECT setval('"public"."seq_reply62"', 4, true);
SELECT setval('"public"."seq_reply63"', 4, false);
SELECT setval('"public"."seq_reply64"', 4, false);
SELECT setval('"public"."seq_reply71"', 4, true);
SELECT setval('"public"."seq_reply72"', 4, false);
SELECT setval('"public"."seq_reply73"', 4, false);
SELECT setval('"public"."seq_reply74"', 4, false);
SELECT setval('"public"."seq_reply75"', 4, false);
SELECT setval('"public"."seq_reply76"', 4, false);
SELECT setval('"public"."seq_reply77"', 3, false);
SELECT setval('"public"."seq_reply8"', 4, false);
SELECT setval('"public"."seq_reply91"', 4, false);
SELECT setval('"public"."seq_reply921"', 4, false);
SELECT setval('"public"."seq_reply922"', 4, false);
SELECT setval('"public"."seq_reply923"', 4, false);
SELECT setval('"public"."seq_reply924"', 4, false);
SELECT setval('"public"."seq_reply925"', 4, false);
SELECT setval('"public"."seq_reply9999"', 4, false);
SELECT setval('"public"."seq_user"', 7, true);

-- ----------------------------
-- Primary Key structure for table t_article
-- ----------------------------
ALTER TABLE "public"."t_article" ADD CONSTRAINT "t_article_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_article_type
-- ----------------------------
ALTER TABLE "public"."t_article_type" ADD CONSTRAINT "t_article_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_attachment
-- ----------------------------
ALTER TABLE "public"."t_attachment" ADD CONSTRAINT "t_attachment_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_check_type
-- ----------------------------
ALTER TABLE "public"."t_check_type" ADD CONSTRAINT "t_check_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_facade_type
-- ----------------------------
ALTER TABLE "public"."t_facade_type" ADD CONSTRAINT "t_facade_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_feedback
-- ----------------------------
ALTER TABLE "public"."t_feedback" ADD CONSTRAINT "t_feedback_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow1
-- ----------------------------
ALTER TABLE "public"."t_flow1" ADD CONSTRAINT "t_flow1_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow10001
-- ----------------------------
ALTER TABLE "public"."t_flow10001" ADD CONSTRAINT "t_flow10001_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow10002
-- ----------------------------
ALTER TABLE "public"."t_flow10002" ADD CONSTRAINT "t_flow10002_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow10003
-- ----------------------------
ALTER TABLE "public"."t_flow10003" ADD CONSTRAINT "t_flow10003_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow10004
-- ----------------------------
ALTER TABLE "public"."t_flow10004" ADD CONSTRAINT "t_flow10004_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow10005
-- ----------------------------
ALTER TABLE "public"."t_flow10005" ADD CONSTRAINT "t_flow10005_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow10006
-- ----------------------------
ALTER TABLE "public"."t_flow10006" ADD CONSTRAINT "t_flow10006_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow10007
-- ----------------------------
ALTER TABLE "public"."t_flow10007" ADD CONSTRAINT "t_flow10007_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow10008
-- ----------------------------
ALTER TABLE "public"."t_flow10008" ADD CONSTRAINT "t_flow10008_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow10009
-- ----------------------------
ALTER TABLE "public"."t_flow10009" ADD CONSTRAINT "t_flow10009_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow10010
-- ----------------------------
ALTER TABLE "public"."t_flow10010" ADD CONSTRAINT "t_flow10010_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow2
-- ----------------------------
ALTER TABLE "public"."t_flow2" ADD CONSTRAINT "t_flow2_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow31
-- ----------------------------
ALTER TABLE "public"."t_flow31" ADD CONSTRAINT "t_flow31_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow32
-- ----------------------------
ALTER TABLE "public"."t_flow32" ADD CONSTRAINT "t_flow32_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow33
-- ----------------------------
ALTER TABLE "public"."t_flow33" ADD CONSTRAINT "t_flow33_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow34
-- ----------------------------
ALTER TABLE "public"."t_flow34" ADD CONSTRAINT "t_flow34_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow35
-- ----------------------------
ALTER TABLE "public"."t_flow35" ADD CONSTRAINT "t_flow35_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow36
-- ----------------------------
ALTER TABLE "public"."t_flow36" ADD CONSTRAINT "t_flow36_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow37
-- ----------------------------
ALTER TABLE "public"."t_flow37" ADD CONSTRAINT "t_flow37_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow4
-- ----------------------------
ALTER TABLE "public"."t_flow4" ADD CONSTRAINT "t_flow4_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow51
-- ----------------------------
ALTER TABLE "public"."t_flow51" ADD CONSTRAINT "t_flow51_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow52
-- ----------------------------
ALTER TABLE "public"."t_flow52" ADD CONSTRAINT "t_flow52_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow61
-- ----------------------------
ALTER TABLE "public"."t_flow61" ADD CONSTRAINT "t_flow61_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow62
-- ----------------------------
ALTER TABLE "public"."t_flow62" ADD CONSTRAINT "t_flow62_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow63
-- ----------------------------
ALTER TABLE "public"."t_flow63" ADD CONSTRAINT "t_flow63_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow64
-- ----------------------------
ALTER TABLE "public"."t_flow64" ADD CONSTRAINT "t_flow64_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow71
-- ----------------------------
ALTER TABLE "public"."t_flow71" ADD CONSTRAINT "t_flow71_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow72
-- ----------------------------
ALTER TABLE "public"."t_flow72" ADD CONSTRAINT "t_flow72_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow73
-- ----------------------------
ALTER TABLE "public"."t_flow73" ADD CONSTRAINT "t_flow73_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow74
-- ----------------------------
ALTER TABLE "public"."t_flow74" ADD CONSTRAINT "t_flow74_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow75
-- ----------------------------
ALTER TABLE "public"."t_flow75" ADD CONSTRAINT "t_flow75_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow76
-- ----------------------------
ALTER TABLE "public"."t_flow76" ADD CONSTRAINT "t_flow76_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow77
-- ----------------------------
ALTER TABLE "public"."t_flow77" ADD CONSTRAINT "t_flow77_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow8
-- ----------------------------
ALTER TABLE "public"."t_flow8" ADD CONSTRAINT "t_flow8_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow91
-- ----------------------------
ALTER TABLE "public"."t_flow91" ADD CONSTRAINT "t_flow91_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow921
-- ----------------------------
ALTER TABLE "public"."t_flow921" ADD CONSTRAINT "t_flow921_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow922
-- ----------------------------
ALTER TABLE "public"."t_flow922" ADD CONSTRAINT "t_flow922_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow923
-- ----------------------------
ALTER TABLE "public"."t_flow923" ADD CONSTRAINT "t_flow923_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow924
-- ----------------------------
ALTER TABLE "public"."t_flow924" ADD CONSTRAINT "t_flow924_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow925
-- ----------------------------
ALTER TABLE "public"."t_flow925" ADD CONSTRAINT "t_flow925_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_flow9999
-- ----------------------------
ALTER TABLE "public"."t_flow9999" ADD CONSTRAINT "t_flow9999_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_forget
-- ----------------------------
ALTER TABLE "public"."t_forget" ADD CONSTRAINT "t_forget_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_group
-- ----------------------------
ALTER TABLE "public"."t_group" ADD CONSTRAINT "t_group_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_log_event
-- ----------------------------
ALTER TABLE "public"."t_log_event" ADD CONSTRAINT "t_log_event_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_log_login
-- ----------------------------
ALTER TABLE "public"."t_log_login" ADD CONSTRAINT "t_log_login_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_msg
-- ----------------------------
ALTER TABLE "public"."t_msg" ADD CONSTRAINT "t_msg_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_org
-- ----------------------------
ALTER TABLE "public"."t_org" ADD CONSTRAINT "t_org_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_project
-- ----------------------------
ALTER TABLE "public"."t_project" ADD CONSTRAINT "t_project_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply1
-- ----------------------------
ALTER TABLE "public"."t_reply1" ADD CONSTRAINT "t_reply1_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply10001
-- ----------------------------
ALTER TABLE "public"."t_reply10001" ADD CONSTRAINT "t_reply10001_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply10002
-- ----------------------------
ALTER TABLE "public"."t_reply10002" ADD CONSTRAINT "t_reply10002_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply10003
-- ----------------------------
ALTER TABLE "public"."t_reply10003" ADD CONSTRAINT "t_reply10003_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply10004
-- ----------------------------
ALTER TABLE "public"."t_reply10004" ADD CONSTRAINT "t_reply10004_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply10005
-- ----------------------------
ALTER TABLE "public"."t_reply10005" ADD CONSTRAINT "t_reply10005_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply10006
-- ----------------------------
ALTER TABLE "public"."t_reply10006" ADD CONSTRAINT "t_reply10006_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply10007
-- ----------------------------
ALTER TABLE "public"."t_reply10007" ADD CONSTRAINT "t_reply10007_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply10008
-- ----------------------------
ALTER TABLE "public"."t_reply10008" ADD CONSTRAINT "t_reply10008_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply10009
-- ----------------------------
ALTER TABLE "public"."t_reply10009" ADD CONSTRAINT "t_reply10009_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply10010
-- ----------------------------
ALTER TABLE "public"."t_reply10010" ADD CONSTRAINT "t_reply10010_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply2
-- ----------------------------
ALTER TABLE "public"."t_reply2" ADD CONSTRAINT "t_reply2_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply31
-- ----------------------------
ALTER TABLE "public"."t_reply31" ADD CONSTRAINT "t_reply31_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply32
-- ----------------------------
ALTER TABLE "public"."t_reply32" ADD CONSTRAINT "t_reply32_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply33
-- ----------------------------
ALTER TABLE "public"."t_reply33" ADD CONSTRAINT "t_reply33_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply34
-- ----------------------------
ALTER TABLE "public"."t_reply34" ADD CONSTRAINT "t_reply34_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply35
-- ----------------------------
ALTER TABLE "public"."t_reply35" ADD CONSTRAINT "t_reply35_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply36
-- ----------------------------
ALTER TABLE "public"."t_reply36" ADD CONSTRAINT "t_reply36_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply37
-- ----------------------------
ALTER TABLE "public"."t_reply37" ADD CONSTRAINT "t_reply37_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply4
-- ----------------------------
ALTER TABLE "public"."t_reply4" ADD CONSTRAINT "t_reply4_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply51
-- ----------------------------
ALTER TABLE "public"."t_reply51" ADD CONSTRAINT "t_reply51_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply52
-- ----------------------------
ALTER TABLE "public"."t_reply52" ADD CONSTRAINT "t_reply52_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply61
-- ----------------------------
ALTER TABLE "public"."t_reply61" ADD CONSTRAINT "t_reply61_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply62
-- ----------------------------
ALTER TABLE "public"."t_reply62" ADD CONSTRAINT "t_reply62_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply63
-- ----------------------------
ALTER TABLE "public"."t_reply63" ADD CONSTRAINT "t_reply63_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply64
-- ----------------------------
ALTER TABLE "public"."t_reply64" ADD CONSTRAINT "t_reply64_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply71
-- ----------------------------
ALTER TABLE "public"."t_reply71" ADD CONSTRAINT "t_reply71_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply72
-- ----------------------------
ALTER TABLE "public"."t_reply72" ADD CONSTRAINT "t_reply72_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply73
-- ----------------------------
ALTER TABLE "public"."t_reply73" ADD CONSTRAINT "t_reply73_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply74
-- ----------------------------
ALTER TABLE "public"."t_reply74" ADD CONSTRAINT "t_reply74_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply75
-- ----------------------------
ALTER TABLE "public"."t_reply75" ADD CONSTRAINT "t_reply75_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply76
-- ----------------------------
ALTER TABLE "public"."t_reply76" ADD CONSTRAINT "t_reply76_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply77
-- ----------------------------
ALTER TABLE "public"."t_reply77" ADD CONSTRAINT "t_reply77_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply8
-- ----------------------------
ALTER TABLE "public"."t_reply8" ADD CONSTRAINT "t_reply8_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply91
-- ----------------------------
ALTER TABLE "public"."t_reply91" ADD CONSTRAINT "t_reply91_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply921
-- ----------------------------
ALTER TABLE "public"."t_reply921" ADD CONSTRAINT "t_reply921_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply922
-- ----------------------------
ALTER TABLE "public"."t_reply922" ADD CONSTRAINT "t_reply922_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply923
-- ----------------------------
ALTER TABLE "public"."t_reply923" ADD CONSTRAINT "t_reply923_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply924
-- ----------------------------
ALTER TABLE "public"."t_reply924" ADD CONSTRAINT "t_reply924_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply925
-- ----------------------------
ALTER TABLE "public"."t_reply925" ADD CONSTRAINT "t_reply925_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_reply9999
-- ----------------------------
ALTER TABLE "public"."t_reply9999" ADD CONSTRAINT "t_reply9999_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_user
-- ----------------------------
ALTER TABLE "public"."t_user" ADD CONSTRAINT "t_user_pkey" PRIMARY KEY ("id");
