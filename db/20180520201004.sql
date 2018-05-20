/*
PostgreSQL Backup
Database: zjslzj/public
Backup Time: 2018-05-20 20:12:09
*/

DROP SEQUENCE IF EXISTS "public"."seq_article";
DROP SEQUENCE IF EXISTS "public"."seq_article_type";
DROP SEQUENCE IF EXISTS "public"."seq_attachment";
DROP SEQUENCE IF EXISTS "public"."seq_check_type";
DROP SEQUENCE IF EXISTS "public"."seq_facade_type";
DROP SEQUENCE IF EXISTS "public"."seq_feedback";
DROP SEQUENCE IF EXISTS "public"."seq_flow10001";
DROP SEQUENCE IF EXISTS "public"."seq_flow10002";
DROP SEQUENCE IF EXISTS "public"."seq_flow10003";
DROP SEQUENCE IF EXISTS "public"."seq_flow10004";
DROP SEQUENCE IF EXISTS "public"."seq_flow1";
DROP SEQUENCE IF EXISTS "public"."seq_flow2";
DROP SEQUENCE IF EXISTS "public"."seq_flow31";
DROP SEQUENCE IF EXISTS "public"."seq_flow4";
DROP SEQUENCE IF EXISTS "public"."seq_flow51";
DROP SEQUENCE IF EXISTS "public"."seq_flow52";
DROP SEQUENCE IF EXISTS "public"."seq_flow61";
DROP SEQUENCE IF EXISTS "public"."seq_flow62";
DROP SEQUENCE IF EXISTS "public"."seq_flow63";
DROP SEQUENCE IF EXISTS "public"."seq_flow64";
DROP SEQUENCE IF EXISTS "public"."seq_flow71";
DROP SEQUENCE IF EXISTS "public"."seq_flow72";
DROP SEQUENCE IF EXISTS "public"."seq_flow73";
DROP SEQUENCE IF EXISTS "public"."seq_flow74";
DROP SEQUENCE IF EXISTS "public"."seq_flow75";
DROP SEQUENCE IF EXISTS "public"."seq_flow76";
DROP SEQUENCE IF EXISTS "public"."seq_flow8";
DROP SEQUENCE IF EXISTS "public"."seq_flow91";
DROP SEQUENCE IF EXISTS "public"."seq_flow921";
DROP SEQUENCE IF EXISTS "public"."seq_flow922";
DROP SEQUENCE IF EXISTS "public"."seq_flow923";
DROP SEQUENCE IF EXISTS "public"."seq_flow924";
DROP SEQUENCE IF EXISTS "public"."seq_flow925";
DROP SEQUENCE IF EXISTS "public"."seq_flow9999";
DROP SEQUENCE IF EXISTS "public"."seq_forget";
DROP SEQUENCE IF EXISTS "public"."seq_group";
DROP SEQUENCE IF EXISTS "public"."seq_log_event";
DROP SEQUENCE IF EXISTS "public"."seq_log_login";
DROP SEQUENCE IF EXISTS "public"."seq_msg";
DROP SEQUENCE IF EXISTS "public"."seq_org";
DROP SEQUENCE IF EXISTS "public"."seq_project";
DROP SEQUENCE IF EXISTS "public"."seq_reply10001";
DROP SEQUENCE IF EXISTS "public"."seq_reply10002";
DROP SEQUENCE IF EXISTS "public"."seq_reply10003";
DROP SEQUENCE IF EXISTS "public"."seq_reply10004";
DROP SEQUENCE IF EXISTS "public"."seq_reply1";
DROP SEQUENCE IF EXISTS "public"."seq_reply2";
DROP SEQUENCE IF EXISTS "public"."seq_reply31";
DROP SEQUENCE IF EXISTS "public"."seq_reply4";
DROP SEQUENCE IF EXISTS "public"."seq_reply51";
DROP SEQUENCE IF EXISTS "public"."seq_reply52";
DROP SEQUENCE IF EXISTS "public"."seq_reply61";
DROP SEQUENCE IF EXISTS "public"."seq_reply62";
DROP SEQUENCE IF EXISTS "public"."seq_reply63";
DROP SEQUENCE IF EXISTS "public"."seq_reply64";
DROP SEQUENCE IF EXISTS "public"."seq_reply71";
DROP SEQUENCE IF EXISTS "public"."seq_reply72";
DROP SEQUENCE IF EXISTS "public"."seq_reply73";
DROP SEQUENCE IF EXISTS "public"."seq_reply74";
DROP SEQUENCE IF EXISTS "public"."seq_reply75";
DROP SEQUENCE IF EXISTS "public"."seq_reply76";
DROP SEQUENCE IF EXISTS "public"."seq_reply8";
DROP SEQUENCE IF EXISTS "public"."seq_reply91";
DROP SEQUENCE IF EXISTS "public"."seq_reply921";
DROP SEQUENCE IF EXISTS "public"."seq_reply922";
DROP SEQUENCE IF EXISTS "public"."seq_reply923";
DROP SEQUENCE IF EXISTS "public"."seq_reply924";
DROP SEQUENCE IF EXISTS "public"."seq_reply925";
DROP SEQUENCE IF EXISTS "public"."seq_reply9999";
DROP SEQUENCE IF EXISTS "public"."seq_user";
DROP TABLE IF EXISTS "public"."t_article";
DROP TABLE IF EXISTS "public"."t_article_type";
DROP TABLE IF EXISTS "public"."t_attachment";
DROP TABLE IF EXISTS "public"."t_check_type";
DROP TABLE IF EXISTS "public"."t_facade_type";
DROP TABLE IF EXISTS "public"."t_feedback";
DROP TABLE IF EXISTS "public"."t_flow10001";
DROP TABLE IF EXISTS "public"."t_flow10002";
DROP TABLE IF EXISTS "public"."t_flow10003";
DROP TABLE IF EXISTS "public"."t_flow10004";
DROP TABLE IF EXISTS "public"."t_flow1";
DROP TABLE IF EXISTS "public"."t_flow2";
DROP TABLE IF EXISTS "public"."t_flow31";
DROP TABLE IF EXISTS "public"."t_flow4";
DROP TABLE IF EXISTS "public"."t_flow51";
DROP TABLE IF EXISTS "public"."t_flow52";
DROP TABLE IF EXISTS "public"."t_flow61";
DROP TABLE IF EXISTS "public"."t_flow62";
DROP TABLE IF EXISTS "public"."t_flow63";
DROP TABLE IF EXISTS "public"."t_flow64";
DROP TABLE IF EXISTS "public"."t_flow71";
DROP TABLE IF EXISTS "public"."t_flow72";
DROP TABLE IF EXISTS "public"."t_flow73";
DROP TABLE IF EXISTS "public"."t_flow74";
DROP TABLE IF EXISTS "public"."t_flow75";
DROP TABLE IF EXISTS "public"."t_flow76";
DROP TABLE IF EXISTS "public"."t_flow8";
DROP TABLE IF EXISTS "public"."t_flow91";
DROP TABLE IF EXISTS "public"."t_flow921";
DROP TABLE IF EXISTS "public"."t_flow922";
DROP TABLE IF EXISTS "public"."t_flow923";
DROP TABLE IF EXISTS "public"."t_flow924";
DROP TABLE IF EXISTS "public"."t_flow925";
DROP TABLE IF EXISTS "public"."t_flow9999";
DROP TABLE IF EXISTS "public"."t_forget";
DROP TABLE IF EXISTS "public"."t_group";
DROP TABLE IF EXISTS "public"."t_log_event";
DROP TABLE IF EXISTS "public"."t_log_login";
DROP TABLE IF EXISTS "public"."t_msg";
DROP TABLE IF EXISTS "public"."t_org";
DROP TABLE IF EXISTS "public"."t_project";
DROP TABLE IF EXISTS "public"."t_reply10001";
DROP TABLE IF EXISTS "public"."t_reply10002";
DROP TABLE IF EXISTS "public"."t_reply10003";
DROP TABLE IF EXISTS "public"."t_reply10004";
DROP TABLE IF EXISTS "public"."t_reply1";
DROP TABLE IF EXISTS "public"."t_reply2";
DROP TABLE IF EXISTS "public"."t_reply31";
DROP TABLE IF EXISTS "public"."t_reply4";
DROP TABLE IF EXISTS "public"."t_reply51";
DROP TABLE IF EXISTS "public"."t_reply52";
DROP TABLE IF EXISTS "public"."t_reply61";
DROP TABLE IF EXISTS "public"."t_reply62";
DROP TABLE IF EXISTS "public"."t_reply63";
DROP TABLE IF EXISTS "public"."t_reply64";
DROP TABLE IF EXISTS "public"."t_reply71";
DROP TABLE IF EXISTS "public"."t_reply72";
DROP TABLE IF EXISTS "public"."t_reply73";
DROP TABLE IF EXISTS "public"."t_reply74";
DROP TABLE IF EXISTS "public"."t_reply75";
DROP TABLE IF EXISTS "public"."t_reply76";
DROP TABLE IF EXISTS "public"."t_reply8";
DROP TABLE IF EXISTS "public"."t_reply91";
DROP TABLE IF EXISTS "public"."t_reply921";
DROP TABLE IF EXISTS "public"."t_reply922";
DROP TABLE IF EXISTS "public"."t_reply923";
DROP TABLE IF EXISTS "public"."t_reply924";
DROP TABLE IF EXISTS "public"."t_reply925";
DROP TABLE IF EXISTS "public"."t_reply9999";
DROP TABLE IF EXISTS "public"."t_user";
CREATE SEQUENCE "public"."seq_article" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_article_type" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_attachment" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_check_type" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_facade_type" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_feedback" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow10001" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow10002" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow10003" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow10004" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow31" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow4" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow51" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow52" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow61" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow62" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow63" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow64" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow71" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow72" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow73" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow74" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow75" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow76" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow8" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow91" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow921" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow922" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow923" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow924" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow925" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_flow9999" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_forget" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_group" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_log_event" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_log_login" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_msg" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_org" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_project" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply10001" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply10002" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply10003" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply10004" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply31" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply4" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply51" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply52" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply61" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply62" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply63" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply64" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply71" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply72" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply73" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply74" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply75" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply76" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply8" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply91" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply921" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply922" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply923" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply924" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply925" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_reply9999" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "public"."seq_user" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE TABLE "public"."t_article" (
  "id" int8 NOT NULL DEFAULT nextval('seq_article'::regclass),
  "tid" int8 NOT NULL DEFAULT 0,
  "uid" int8 NOT NULL DEFAULT 0,
  "pic" varchar(200) DEFAULT ''::character varying,
  "title" varchar(200) DEFAULT ''::character varying,
  "content" text DEFAULT ''::text,
  "html" text DEFAULT ''::text,
  "roll" bool NOT NULL DEFAULT false,
  "views" int4 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT true,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_article" OWNER TO "postgres";
CREATE TABLE "public"."t_article_type" (
  "id" int8 NOT NULL DEFAULT nextval('seq_article_type'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" varchar(50) NOT NULL DEFAULT NULL,
  "dir" bool NOT NULL DEFAULT false,
  "act" bool NOT NULL DEFAULT true,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_article_type" OWNER TO "postgres";
CREATE TABLE "public"."t_attachment" (
  "id" int8 NOT NULL DEFAULT nextval('seq_attachment'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "tid" int8 NOT NULL DEFAULT 0,
  "no" int4 NOT NULL DEFAULT 0,
  "name" text DEFAULT ''::text,
  "url" text DEFAULT ''::text,
  "file" text DEFAULT ''::text,
  "ext" varchar(50) DEFAULT ''::character varying,
  "size" int4 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_attachment" OWNER TO "postgres";
CREATE TABLE "public"."t_check_type" (
  "id" int8 NOT NULL DEFAULT nextval('seq_check_type'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" varchar(50) NOT NULL DEFAULT NULL,
  "score" int4 NOT NULL DEFAULT 0,
  "level" int4 NOT NULL DEFAULT 1,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_check_type" OWNER TO "postgres";
CREATE TABLE "public"."t_facade_type" (
  "id" int8 NOT NULL DEFAULT nextval('seq_facade_type'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" varchar(50) NOT NULL DEFAULT NULL,
  "score" int4 NOT NULL DEFAULT 0,
  "level" int4 NOT NULL DEFAULT 1,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_facade_type" OWNER TO "postgres";
CREATE TABLE "public"."t_feedback" (
  "id" int8 NOT NULL DEFAULT nextval('seq_feedback'::regclass),
  "project" varchar(50) DEFAULT ''::character varying,
  "contacts" varchar(50) DEFAULT ''::character varying,
  "phone" varchar(50) DEFAULT ''::character varying,
  "email" varchar(50) DEFAULT ''::character varying,
  "content" text DEFAULT ''::text,
  "reply" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_feedback" OWNER TO "postgres";
CREATE TABLE "public"."t_flow10001" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow10001'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text DEFAULT ''::text,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow10001" OWNER TO "postgres";
CREATE TABLE "public"."t_flow10002" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow10002'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text DEFAULT ''::text,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow10002" OWNER TO "postgres";
CREATE TABLE "public"."t_flow10003" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow10003'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text DEFAULT ''::text,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow10003" OWNER TO "postgres";
CREATE TABLE "public"."t_flow10004" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow10004'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text DEFAULT ''::text,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow10004" OWNER TO "postgres";
CREATE TABLE "public"."t_flow1" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow1'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "keywords" text DEFAULT ''::text,
  "attachments" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow1" OWNER TO "postgres";
CREATE TABLE "public"."t_flow2" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow2'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "keywords" text DEFAULT ''::text,
  "attachments" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow2" OWNER TO "postgres";
CREATE TABLE "public"."t_flow31" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow31'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text DEFAULT ''::text,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "attachments" text DEFAULT ''::text,
  "comp" text DEFAULT ''::text,
  "date_ping" text DEFAULT ''::text,
  "items" text DEFAULT ''::text,
  "totals" text DEFAULT ''::text,
  "m11" text DEFAULT ''::text,
  "m12" text DEFAULT ''::text,
  "m13" text DEFAULT ''::text,
  "m21" text DEFAULT ''::text,
  "m22" text DEFAULT ''::text,
  "m23" text DEFAULT ''::text,
  "m31" text DEFAULT ''::text,
  "m32" text DEFAULT ''::text,
  "m33" text DEFAULT ''::text,
  "m41" text DEFAULT ''::text,
  "m42" text DEFAULT ''::text,
  "m43" text DEFAULT ''::text,
  "m51" text DEFAULT ''::text,
  "m52" text DEFAULT ''::text,
  "m53" text DEFAULT ''::text,
  "m61" text DEFAULT ''::text,
  "m62" text DEFAULT ''::text,
  "m63" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow31" OWNER TO "postgres";
CREATE TABLE "public"."t_flow4" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow4'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text DEFAULT ''::text,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "keywords" text DEFAULT ''::text,
  "attachments" text DEFAULT ''::text,
  "code" text DEFAULT ''::text,
  "personals" text DEFAULT ''::text,
  "progress" text DEFAULT ''::text,
  "writer" text DEFAULT ''::text,
  "writer_date" text DEFAULT ''::text,
  "signer_date" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow4" OWNER TO "postgres";
CREATE TABLE "public"."t_flow51" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow51'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "comp" text DEFAULT ''::text,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "items" text DEFAULT ''::text,
  "totals" text DEFAULT ''::text,
  "v1c" text DEFAULT ''::text,
  "v1n" text DEFAULT ''::text,
  "v1d" text DEFAULT ''::text,
  "v2c" text DEFAULT ''::text,
  "v2n" text DEFAULT ''::text,
  "v2d" text DEFAULT ''::text,
  "v3c" text DEFAULT ''::text,
  "v3n" text DEFAULT ''::text,
  "v3d" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow51" OWNER TO "postgres";
CREATE TABLE "public"."t_flow52" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow52'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "comp" text DEFAULT ''::text,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "items" text DEFAULT ''::text,
  "totals" text DEFAULT ''::text,
  "v1c" text DEFAULT ''::text,
  "v1n" text DEFAULT ''::text,
  "v1d" text DEFAULT ''::text,
  "v2c" text DEFAULT ''::text,
  "v2n" text DEFAULT ''::text,
  "v2d" text DEFAULT ''::text,
  "v3c" text DEFAULT ''::text,
  "v3n" text DEFAULT ''::text,
  "v3d" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow52" OWNER TO "postgres";
CREATE TABLE "public"."t_flow61" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow61'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "comp" text DEFAULT ''::text,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "items" text DEFAULT ''::text,
  "totals" text DEFAULT ''::text,
  "v1c" text DEFAULT ''::text,
  "v1n" text DEFAULT ''::text,
  "v1d" text DEFAULT ''::text,
  "v2c" text DEFAULT ''::text,
  "v2n" text DEFAULT ''::text,
  "v2d" text DEFAULT ''::text,
  "v3c" text DEFAULT ''::text,
  "v3n" text DEFAULT ''::text,
  "v3d" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow61" OWNER TO "postgres";
CREATE TABLE "public"."t_flow62" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow62'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "attachments" text DEFAULT ''::text,
  "comp" text DEFAULT ''::text,
  "date_ping" text DEFAULT ''::text,
  "items" text DEFAULT ''::text,
  "totals" text DEFAULT ''::text,
  "m11" text DEFAULT ''::text,
  "m12" text DEFAULT ''::text,
  "m13" text DEFAULT ''::text,
  "m21" text DEFAULT ''::text,
  "m22" text DEFAULT ''::text,
  "m23" text DEFAULT ''::text,
  "m31" text DEFAULT ''::text,
  "m32" text DEFAULT ''::text,
  "m33" text DEFAULT ''::text,
  "m41" text DEFAULT ''::text,
  "m42" text DEFAULT ''::text,
  "m43" text DEFAULT ''::text,
  "m51" text DEFAULT ''::text,
  "m52" text DEFAULT ''::text,
  "m53" text DEFAULT ''::text,
  "m61" text DEFAULT ''::text,
  "m62" text DEFAULT ''::text,
  "m63" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow62" OWNER TO "postgres";
CREATE TABLE "public"."t_flow63" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow63'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text DEFAULT ''::text,
  "comp" text DEFAULT ''::text,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "items" text DEFAULT ''::text,
  "totals" text DEFAULT ''::text,
  "v1c" text DEFAULT ''::text,
  "v1n" text DEFAULT ''::text,
  "v1d" text DEFAULT ''::text,
  "v2c" text DEFAULT ''::text,
  "v2n" text DEFAULT ''::text,
  "v2d" text DEFAULT ''::text,
  "v3c" text DEFAULT ''::text,
  "v3n" text DEFAULT ''::text,
  "v3d" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow63" OWNER TO "postgres";
CREATE TABLE "public"."t_flow64" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow64'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text DEFAULT ''::text,
  "comp" text DEFAULT ''::text,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "items" text DEFAULT ''::text,
  "totals" text DEFAULT ''::text,
  "v1c" text DEFAULT ''::text,
  "v1n" text DEFAULT ''::text,
  "v1d" text DEFAULT ''::text,
  "v2c" text DEFAULT ''::text,
  "v2n" text DEFAULT ''::text,
  "v2d" text DEFAULT ''::text,
  "v3c" text DEFAULT ''::text,
  "v3n" text DEFAULT ''::text,
  "v3d" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow64" OWNER TO "postgres";
CREATE TABLE "public"."t_flow71" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow71'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "keywords" text DEFAULT ''::text,
  "attachments" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow71" OWNER TO "postgres";
CREATE TABLE "public"."t_flow72" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow72'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "comp" text DEFAULT ''::text,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "attachments" text DEFAULT ''::text,
  "items" text DEFAULT ''::text,
  "totals" text DEFAULT ''::text,
  "c1" text DEFAULT ''::text,
  "c2" text DEFAULT ''::text,
  "c3" text DEFAULT ''::text,
  "c4" text DEFAULT ''::text,
  "c5" text DEFAULT ''::text,
  "c6" text DEFAULT ''::text,
  "c7" text DEFAULT ''::text,
  "v1c" text DEFAULT ''::text,
  "v1n" text DEFAULT ''::text,
  "v1d" text DEFAULT ''::text,
  "v2c" text DEFAULT ''::text,
  "v2n" text DEFAULT ''::text,
  "v2d" text DEFAULT ''::text,
  "v3c" text DEFAULT ''::text,
  "v3n" text DEFAULT ''::text,
  "v3d" text DEFAULT ''::text,
  "v4c" text DEFAULT ''::text,
  "v4n" text DEFAULT ''::text,
  "v4d" text DEFAULT ''::text,
  "v5c" text DEFAULT ''::text,
  "v5n" text DEFAULT ''::text,
  "v5d" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow72" OWNER TO "postgres";
CREATE TABLE "public"."t_flow73" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow73'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "comp" text DEFAULT ''::text,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "attachments" text DEFAULT ''::text,
  "items" text DEFAULT ''::text,
  "totals" text DEFAULT ''::text,
  "c1" text DEFAULT ''::text,
  "c2" text DEFAULT ''::text,
  "c3" text DEFAULT ''::text,
  "c4" text DEFAULT ''::text,
  "c5" text DEFAULT ''::text,
  "c6" text DEFAULT ''::text,
  "c7" text DEFAULT ''::text,
  "v1c" text DEFAULT ''::text,
  "v1n" text DEFAULT ''::text,
  "v1d" text DEFAULT ''::text,
  "v2c" text DEFAULT ''::text,
  "v2n" text DEFAULT ''::text,
  "v2d" text DEFAULT ''::text,
  "v3c" text DEFAULT ''::text,
  "v3n" text DEFAULT ''::text,
  "v3d" text DEFAULT ''::text,
  "v4c" text DEFAULT ''::text,
  "v4n" text DEFAULT ''::text,
  "v4d" text DEFAULT ''::text,
  "v5c" text DEFAULT ''::text,
  "v5n" text DEFAULT ''::text,
  "v5d" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow73" OWNER TO "postgres";
CREATE TABLE "public"."t_flow74" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow74'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "keywords" text DEFAULT ''::text,
  "attachments" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow74" OWNER TO "postgres";
CREATE TABLE "public"."t_flow75" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow75'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "keywords" text DEFAULT ''::text,
  "attachments" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow75" OWNER TO "postgres";
CREATE TABLE "public"."t_flow76" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow76'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "keywords" text DEFAULT ''::text,
  "attachments" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow76" OWNER TO "postgres";
CREATE TABLE "public"."t_flow8" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow8'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "comp" text DEFAULT ''::text,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "items" text DEFAULT ''::text,
  "totals" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow8" OWNER TO "postgres";
CREATE TABLE "public"."t_flow91" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow91'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "comp" text DEFAULT ''::text,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "items" text DEFAULT ''::text,
  "totals" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow91" OWNER TO "postgres";
CREATE TABLE "public"."t_flow921" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow921'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "tno" text DEFAULT ''::text,
  "tcontent" text DEFAULT ''::text,
  "tdate" text DEFAULT ''::text,
  "tattachments" text DEFAULT ''::text,
  "tmemo" text DEFAULT ''::text,
  "no" text DEFAULT ''::text,
  "proj" text DEFAULT ''::text,
  "stage" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "owner" text DEFAULT ''::text,
  "comp" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "c1" text DEFAULT ''::text,
  "c2" text DEFAULT ''::text,
  "c3" text DEFAULT ''::text,
  "c4" text DEFAULT ''::text,
  "c5" text DEFAULT ''::text,
  "c6" text DEFAULT ''::text,
  "c7" text DEFAULT ''::text,
  "c8" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow921" OWNER TO "postgres";
CREATE TABLE "public"."t_flow922" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow922'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "tno" text DEFAULT ''::text,
  "tcontent" text DEFAULT ''::text,
  "tdate" text DEFAULT ''::text,
  "tattachments" text DEFAULT ''::text,
  "tmemo" text DEFAULT ''::text,
  "no" text DEFAULT ''::text,
  "proj" text DEFAULT ''::text,
  "stage" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "owner" text DEFAULT ''::text,
  "comp" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "c1" text DEFAULT ''::text,
  "c2" text DEFAULT ''::text,
  "c3" text DEFAULT ''::text,
  "c4" text DEFAULT ''::text,
  "c5" text DEFAULT ''::text,
  "c6" text DEFAULT ''::text,
  "c7" text DEFAULT ''::text,
  "c8" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow922" OWNER TO "postgres";
CREATE TABLE "public"."t_flow923" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow923'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "tno" text DEFAULT ''::text,
  "tcontent" text DEFAULT ''::text,
  "tdate" text DEFAULT ''::text,
  "tattachments" text DEFAULT ''::text,
  "tmemo" text DEFAULT ''::text,
  "no" text DEFAULT ''::text,
  "proj" text DEFAULT ''::text,
  "stage" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "owner" text DEFAULT ''::text,
  "comp" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "c1" text DEFAULT ''::text,
  "c2" text DEFAULT ''::text,
  "c3" text DEFAULT ''::text,
  "c4" text DEFAULT ''::text,
  "c5" text DEFAULT ''::text,
  "c6" text DEFAULT ''::text,
  "c7" text DEFAULT ''::text,
  "c8" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow923" OWNER TO "postgres";
CREATE TABLE "public"."t_flow924" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow924'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "tno" text DEFAULT ''::text,
  "tcontent" text DEFAULT ''::text,
  "tdate" text DEFAULT ''::text,
  "tattachments" text DEFAULT ''::text,
  "tmemo" text DEFAULT ''::text,
  "no" text DEFAULT ''::text,
  "proj" text DEFAULT ''::text,
  "stage" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "owner" text DEFAULT ''::text,
  "comp" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "c1" text DEFAULT ''::text,
  "c2" text DEFAULT ''::text,
  "c3" text DEFAULT ''::text,
  "c4" text DEFAULT ''::text,
  "c5" text DEFAULT ''::text,
  "c6" text DEFAULT ''::text,
  "c7" text DEFAULT ''::text,
  "c8" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow924" OWNER TO "postgres";
CREATE TABLE "public"."t_flow925" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow925'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "tno" text DEFAULT ''::text,
  "tcontent" text DEFAULT ''::text,
  "tdate" text DEFAULT ''::text,
  "tattachments" text DEFAULT ''::text,
  "tmemo" text DEFAULT ''::text,
  "no" text DEFAULT ''::text,
  "proj" text DEFAULT ''::text,
  "stage" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "owner" text DEFAULT ''::text,
  "comp" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "c1" text DEFAULT ''::text,
  "c2" text DEFAULT ''::text,
  "c3" text DEFAULT ''::text,
  "c4" text DEFAULT ''::text,
  "c5" text DEFAULT ''::text,
  "c6" text DEFAULT ''::text,
  "c7" text DEFAULT ''::text,
  "c8" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow925" OWNER TO "postgres";
CREATE TABLE "public"."t_flow9999" (
  "id" int8 NOT NULL DEFAULT nextval('seq_flow9999'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "name" text DEFAULT ''::text,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "keywords" text DEFAULT ''::text,
  "attachments" text DEFAULT ''::text,
  "code" text DEFAULT ''::text,
  "personals" text DEFAULT ''::text,
  "progress" text DEFAULT ''::text,
  "writer" text DEFAULT ''::text,
  "writer_date" text DEFAULT ''::text,
  "signer_date" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "replytime" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "replyid" int8 NOT NULL DEFAULT 0,
  "last" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_flow9999" OWNER TO "postgres";
CREATE TABLE "public"."t_forget" (
  "id" int8 NOT NULL DEFAULT nextval('seq_forget'::regclass),
  "pid" int4 NOT NULL DEFAULT 0,
  "code" varchar(50) DEFAULT ''::character varying,
  "expire" timestamp(0) NOT NULL DEFAULT (now() + '1 day'::interval),
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_forget" OWNER TO "postgres";
CREATE TABLE "public"."t_group" (
  "id" int8 NOT NULL DEFAULT nextval('seq_group'::regclass),
  "fid" int8 NOT NULL DEFAULT 0,
  "name" varchar(200) NOT NULL DEFAULT NULL,
  "company" varchar(200) NOT NULL DEFAULT NULL,
  "permission" text DEFAULT ''::text,
  "act" bool NOT NULL DEFAULT true,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_group" OWNER TO "postgres";
CREATE TABLE "public"."t_log_event" (
  "id" int8 NOT NULL DEFAULT nextval('seq_log_event'::regclass),
  "event" text NOT NULL DEFAULT ''::text,
  "spent" float8 NOT NULL DEFAULT 0,
  "memory" int4 NOT NULL DEFAULT 0,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_log_event" OWNER TO "postgres";
CREATE TABLE "public"."t_log_login" (
  "id" int8 NOT NULL DEFAULT nextval('seq_log_login'::regclass),
  "tid" int4 NOT NULL DEFAULT 0,
  "uid" int8 NOT NULL DEFAULT 0,
  "ip" int8 NOT NULL DEFAULT 0,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_log_login" OWNER TO "postgres";
CREATE TABLE "public"."t_msg" (
  "id" int8 NOT NULL DEFAULT nextval('seq_msg'::regclass),
  "type" int4 NOT NULL DEFAULT 0,
  "direct" int4 NOT NULL DEFAULT 0,
  "senderid" int8 NOT NULL DEFAULT 0,
  "receiverid" int8 NOT NULL DEFAULT 0,
  "sender" varchar(200) DEFAULT ''::character varying,
  "receiver" varchar(200) DEFAULT ''::character varying,
  "nodeid" int8 NOT NULL DEFAULT 0,
  "objid" int8 NOT NULL DEFAULT 0,
  "msg" text DEFAULT ''::text,
  "read" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_msg" OWNER TO "postgres";
CREATE TABLE "public"."t_org" (
  "id" int8 NOT NULL DEFAULT nextval('seq_org'::regclass),
  "gid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "name" varchar(200) NOT NULL DEFAULT NULL,
  "permission" text DEFAULT ''::text,
  "act" bool NOT NULL DEFAULT true,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_org" OWNER TO "postgres";
CREATE TABLE "public"."t_project" (
  "id" int8 NOT NULL DEFAULT nextval('seq_project'::regclass),
  "name" varchar(200) NOT NULL DEFAULT NULL,
  "pass" varchar(50) NOT NULL DEFAULT NULL,
  "gid" int8 NOT NULL DEFAULT 0,
  "company" varchar(200) DEFAULT ''::character varying,
  "contacts" varchar(50) NOT NULL DEFAULT NULL,
  "mobile" varchar(50) DEFAULT ''::character varying,
  "email" varchar(50) DEFAULT ''::character varying,
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
  "s10004" int4 NOT NULL DEFAULT 0
)
;ALTER TABLE "public"."t_project" OWNER TO "postgres";
CREATE TABLE "public"."t_reply10001" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply10001'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply10001" OWNER TO "postgres";
CREATE TABLE "public"."t_reply10002" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply10002'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply10002" OWNER TO "postgres";
CREATE TABLE "public"."t_reply10003" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply10003'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply10003" OWNER TO "postgres";
CREATE TABLE "public"."t_reply10004" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply10004'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply10004" OWNER TO "postgres";
CREATE TABLE "public"."t_reply1" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply1'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply1" OWNER TO "postgres";
CREATE TABLE "public"."t_reply2" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply2'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply2" OWNER TO "postgres";
CREATE TABLE "public"."t_reply31" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply31'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply31" OWNER TO "postgres";
CREATE TABLE "public"."t_reply4" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply4'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "comp" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply4" OWNER TO "postgres";
CREATE TABLE "public"."t_reply51" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply51'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply51" OWNER TO "postgres";
CREATE TABLE "public"."t_reply52" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply52'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply52" OWNER TO "postgres";
CREATE TABLE "public"."t_reply61" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply61'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply61" OWNER TO "postgres";
CREATE TABLE "public"."t_reply62" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply62'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply62" OWNER TO "postgres";
CREATE TABLE "public"."t_reply63" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply63'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply63" OWNER TO "postgres";
CREATE TABLE "public"."t_reply64" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply64'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply64" OWNER TO "postgres";
CREATE TABLE "public"."t_reply71" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply71'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply71" OWNER TO "postgres";
CREATE TABLE "public"."t_reply72" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply72'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply72" OWNER TO "postgres";
CREATE TABLE "public"."t_reply73" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply73'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply73" OWNER TO "postgres";
CREATE TABLE "public"."t_reply74" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply74'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply74" OWNER TO "postgres";
CREATE TABLE "public"."t_reply75" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply75'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply75" OWNER TO "postgres";
CREATE TABLE "public"."t_reply76" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply76'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply76" OWNER TO "postgres";
CREATE TABLE "public"."t_reply8" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply8'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply8" OWNER TO "postgres";
CREATE TABLE "public"."t_reply91" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply91'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply91" OWNER TO "postgres";
CREATE TABLE "public"."t_reply921" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply921'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "proj" text DEFAULT ''::text,
  "stage" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "signer_code" text DEFAULT ''::text,
  "owner" text DEFAULT ''::text,
  "owner_code" text DEFAULT ''::text,
  "comp" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "c1" text DEFAULT ''::text,
  "c2" text DEFAULT ''::text,
  "c3" text DEFAULT ''::text,
  "c4" text DEFAULT ''::text,
  "c5" text DEFAULT ''::text,
  "c6" text DEFAULT ''::text,
  "c7" text DEFAULT ''::text,
  "c8" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply921" OWNER TO "postgres";
CREATE TABLE "public"."t_reply922" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply922'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "proj" text DEFAULT ''::text,
  "stage" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "signer_code" text DEFAULT ''::text,
  "owner" text DEFAULT ''::text,
  "owner_code" text DEFAULT ''::text,
  "comp" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "c1" text DEFAULT ''::text,
  "c2" text DEFAULT ''::text,
  "c3" text DEFAULT ''::text,
  "c4" text DEFAULT ''::text,
  "c5" text DEFAULT ''::text,
  "c6" text DEFAULT ''::text,
  "c7" text DEFAULT ''::text,
  "c8" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply922" OWNER TO "postgres";
CREATE TABLE "public"."t_reply923" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply923'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "proj" text DEFAULT ''::text,
  "stage" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "signer_code" text DEFAULT ''::text,
  "owner" text DEFAULT ''::text,
  "owner_code" text DEFAULT ''::text,
  "comp" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "c1" text DEFAULT ''::text,
  "c2" text DEFAULT ''::text,
  "c3" text DEFAULT ''::text,
  "c4" text DEFAULT ''::text,
  "c5" text DEFAULT ''::text,
  "c6" text DEFAULT ''::text,
  "c7" text DEFAULT ''::text,
  "c8" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply923" OWNER TO "postgres";
CREATE TABLE "public"."t_reply924" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply924'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "proj" text DEFAULT ''::text,
  "stage" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "signer_code" text DEFAULT ''::text,
  "owner" text DEFAULT ''::text,
  "owner_code" text DEFAULT ''::text,
  "approver" text DEFAULT ''::text,
  "approver_code" text DEFAULT ''::text,
  "comp" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "c1" text DEFAULT ''::text,
  "c2" text DEFAULT ''::text,
  "c3" text DEFAULT ''::text,
  "c4" text DEFAULT ''::text,
  "c5" text DEFAULT ''::text,
  "c6" text DEFAULT ''::text,
  "c7" text DEFAULT ''::text,
  "c8" text DEFAULT ''::text,
  "c9" text DEFAULT ''::text,
  "c10" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply924" OWNER TO "postgres";
CREATE TABLE "public"."t_reply925" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply925'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "proj" text DEFAULT ''::text,
  "stage" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "signer_code" text DEFAULT ''::text,
  "owner" text DEFAULT ''::text,
  "owner_code" text DEFAULT ''::text,
  "approver" text DEFAULT ''::text,
  "approver_code" text DEFAULT ''::text,
  "comp" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "c1" text DEFAULT ''::text,
  "c2" text DEFAULT ''::text,
  "c3" text DEFAULT ''::text,
  "c4" text DEFAULT ''::text,
  "c5" text DEFAULT ''::text,
  "c6" text DEFAULT ''::text,
  "c7" text DEFAULT ''::text,
  "c8" text DEFAULT ''::text,
  "c9" text DEFAULT ''::text,
  "c10" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply925" OWNER TO "postgres";
CREATE TABLE "public"."t_reply9999" (
  "id" int8 NOT NULL DEFAULT nextval('seq_reply9999'::regclass),
  "pid" int8 NOT NULL DEFAULT 0,
  "fid" int8 NOT NULL DEFAULT 0,
  "no" text DEFAULT ''::text,
  "signer" text DEFAULT ''::text,
  "comp" text DEFAULT ''::text,
  "date" text DEFAULT ''::text,
  "content" text DEFAULT ''::text,
  "uid" int8 NOT NULL DEFAULT 0,
  "act" bool NOT NULL DEFAULT false,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_reply9999" OWNER TO "postgres";
CREATE TABLE "public"."t_user" (
  "id" int8 NOT NULL DEFAULT nextval('seq_user'::regclass),
  "gid" int8 NOT NULL DEFAULT 0,
  "oid" int8 NOT NULL DEFAULT 0,
  "username" varchar(200) NOT NULL DEFAULT NULL,
  "password" char(32) NOT NULL DEFAULT NULL,
  "name" varchar(200) NOT NULL DEFAULT NULL,
  "serial" varchar(200) DEFAULT ''::character varying,
  "sex" bool NOT NULL DEFAULT true,
  "mobile" varchar(20) DEFAULT ''::character varying,
  "imei" varchar(20) DEFAULT ''::character varying,
  "email" varchar(50) DEFAULT ''::character varying,
  "lead" bool NOT NULL DEFAULT false,
  "admin" bool NOT NULL DEFAULT false,
  "permission" text DEFAULT ''::text,
  "act" bool NOT NULL DEFAULT true,
  "del" bool NOT NULL DEFAULT false,
  "time" timestamp(0) NOT NULL DEFAULT now()
)
;ALTER TABLE "public"."t_user" OWNER TO "postgres";
BEGIN;
LOCK TABLE "public"."t_article" IN SHARE MODE;
DELETE FROM "public"."t_article";
INSERT INTO "public"."t_article" ("id","tid","uid","pic","title","content","html","roll","views","last","act","del","time") VALUES (4, 2, 1, '', 'test2', '测试123,', '&lt;p&gt;测试123&lt;br/&gt;&lt;/p&gt;', 'f', 2, NULL, 't', 't', '2017-10-12 15:21:59'),(1, 1, 1, '', '单位介绍', '', '', 'f', 12, NULL, 't', 'f', '2017-06-22 15:52:53'),(2, 1, 1, '', '联系我们', '', '', 'f', 58, NULL, 't', 'f', '2017-06-22 15:52:53'),(3, 2, 1, '', 'test1', 'test,', '&lt;p&gt;test&lt;/p&gt;', 'f', 10, NULL, 't', 'f', '2017-10-11 20:26:10');
COMMIT;
BEGIN;
LOCK TABLE "public"."t_article_type" IN SHARE MODE;
DELETE FROM "public"."t_article_type";
INSERT INTO "public"."t_article_type" ("id","pid","name","dir","act","del","time") VALUES (1, 0, '单位信息', 'f', 't', 'f', '2017-06-22 15:52:53'),(2, 0, '工作动态', 't', 't', 'f', '2017-06-22 15:52:53'),(3, 0, '政策法规', 't', 't', 'f', '2017-06-22 15:52:53'),(4, 0, '工程造价', 't', 't', 'f', '2017-06-22 15:52:53'),(5, 0, '行业管理', 't', 't', 'f', '2017-06-22 15:52:53'),(6, 0, '下载专区', 't', 't', 'f', '2017-06-22 15:52:53');
COMMIT;
BEGIN;
LOCK TABLE "public"."t_attachment" IN SHARE MODE;
DELETE FROM "public"."t_attachment";
INSERT INTO "public"."t_attachment" ("id","pid","tid","no","name","url","file","ext","size","act","del","time") VALUES (1, 8, 1, 1, '质量监督申报表', '/upload/flow/20171012/15077923313368.doc', '15077923313368.doc', '.doc', 954414, 'f', 'f', '2017-10-12 15:12:12');
COMMIT;
BEGIN;
LOCK TABLE "public"."t_check_type" IN SHARE MODE;
DELETE FROM "public"."t_check_type";
INSERT INTO "public"."t_check_type" ("id","pid","name","score","level","del","time") VALUES (1, 0, '主控项目', 0, 1, 'f', '2017-10-06 15:24:38'),(2, 0, '一般项目', 0, 1, 'f', '2017-10-06 15:24:38'),(3, 2, 'abc', 0, 1, 'f', '2017-10-11 20:43:14');
COMMIT;
BEGIN;
LOCK TABLE "public"."t_facade_type" IN SHARE MODE;
DELETE FROM "public"."t_facade_type";
INSERT INTO "public"."t_facade_type" ("id","pid","name","score","level","del","time") VALUES (1, 0, '检查项目', 0, 1, 'f', '2017-06-22 15:52:53'),(2, 0, '检测项目', 0, 1, 'f', '2017-06-22 15:52:53'),(4, 1, 'bb', 5, 1, 'f', '2017-09-23 12:00:47'),(5, 1, '扭曲面与平面联结果', 0, 1, 'f', '2017-10-12 11:20:46'),(6, 5, '砌石勾缝', 0, 1, 't', '2017-10-12 11:21:44'),(7, 1, '砌石勾缝', 0, 1, 'f', '2017-10-12 11:22:17'),(8, 1, '建筑物表面', 0, 1, 'f', '2017-10-12 11:22:31'),(9, 1, 'XX外观', 0, 1, 'f', '2017-10-12 15:26:10'),(10, 5, '123', 1, 1, 'f', '2017-11-12 11:02:34'),(3, 1, '水闸项目', 0, 1, 'f', '2017-09-23 12:00:33'),(11, 3, '项目1', 0, 1, 'f', '2018-04-10 14:27:01'),(12, 3, '项目2', 0, 1, 'f', '2018-04-10 14:31:41');
COMMIT;
BEGIN;
LOCK TABLE "public"."t_feedback" IN SHARE MODE;
DELETE FROM "public"."t_feedback";
INSERT INTO "public"."t_feedback" ("id","project","contacts","phone","email","content","reply","uid","replytime","act","del","time") VALUES (1, '1', '1', '11111111111', '11@1.com', '1', '', 0, NULL, 'f', 'f', '2017-11-12 10:49:58');
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow10001" IN SHARE MODE;
DELETE FROM "public"."t_flow10001";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow10002" IN SHARE MODE;
DELETE FROM "public"."t_flow10002";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow10003" IN SHARE MODE;
DELETE FROM "public"."t_flow10003";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow10004" IN SHARE MODE;
DELETE FROM "public"."t_flow10004";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow1" IN SHARE MODE;
DELETE FROM "public"."t_flow1";
INSERT INTO "public"."t_flow1" ("id","pid","no","signer","date","content","keywords","attachments","uid","replytime","replyid","last","act","del","time") VALUES (2, 2, '123', 'xxx', '2017-07-26', '112233', '11223344', '', 1, '2017-07-26 09:11:12', 1, NULL, 't', 'f', '2017-07-26 09:10:15'),(3, 6, '1111', 'aaaz', '2017-09-23', '    aaaa工程初步设计及概算已经泰州市发展和改革委员会以《泰aaaa工程初步设计的批复》（泰发改审发[XXXX]XX号）批准。工程主要建设内容为：xxxxxxxxxxxxxxxxxxxxx。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示。', '无', '', 1, '2017-09-23 11:41:29', 2, NULL, 't', 'f', '2017-09-23 11:34:09'),(4, 7, '123', '123', '2017-10-01', '    test2工程初步设计及概算已经泰州市发展和改革委员会以《泰test2工程初步设计的批复》（泰发改审发[XXXX]XX号）批准。工程主要建设内容为：xxxxxxxxxxxxxxxxxxxxx。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否', '无', '', 1, '2017-10-11 20:50:28', 3, NULL, 't', 'f', '2017-10-11 20:49:07'),(5, 8, '123123', '李四', '2017-10-12', '    测试test单位工程初步设计及概算已经泰州市发展和改革委员会以《泰测试test单位工程初步设计的批复》（泰发改审发[XXXX]XX号）批准。工程主要建设内容为：xxxxxxxxxxxxxxxxxxxxx。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示。123123', '无', '', 1, '2017-10-12 15:14:24', 4, NULL, 't', 'f', '2017-10-12 15:13:28'),(6, 9, 'qweqw', 'qweqw', '2017-11-15', '    泰州市城市水利投资开发有限公司工程初步设计及概算已经泰州市发展和改革委员会以《泰泰州市城市水利投资开发有限公司工程初步设计的批复》（泰发改审发[XXXX]XX号）批准。工程主要建设内容为：。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示。', '无', '', 1, '2017-11-12 10:58:41', 5, NULL, 'f', 'f', '2017-11-12 10:57:33'),(7, 9, 'qweqw', 'qweqw', '2017-11-15', '    泰州市城市水利投资开发有限公司工程初步设计及概算已经泰州市发展和改革委员会以《泰泰州市城市水利投资开发有限公司工程初步设计的批复》（泰发改审发[XXXX]XX号）批准。工程主要建设内容为：。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示。', '无', '', 1, '2017-11-12 11:00:26', 6, NULL, 't', 'f', '2017-11-12 11:00:02'),(1, 3, '123', '123', '2017-07-25', '1234', '无', '', 1, '2017-12-15 10:35:51', 7, NULL, 't', 'f', '2017-07-25 15:08:21'),(8, 14, '123', '123', '2018-01-23', '    测试单位工程初步设计及概算已经镇江市发展和改革委员会以《测试单位工程初步设计的批复》（镇发改审发[XXXX]XX号）批准。工程主要建设内容为：xxxxxxxxxxxxxxxxxxxxx。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示。', '无', '', 1, '2018-04-10 14:08:48', 8, NULL, 't', 'f', '2018-04-10 14:07:46');
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow2" IN SHARE MODE;
DELETE FROM "public"."t_flow2";
INSERT INTO "public"."t_flow2" ("id","pid","no","signer","date","content","keywords","attachments","uid","replytime","replyid","last","act","del","time") VALUES (1, 2, '223', 'aaa', '2017-07-28', 'zz', '', '', 1, '2017-07-26 09:13:28', 1, NULL, 't', 'f', '2017-07-26 09:12:32'),(2, 6, '222', 'sfdas', '2017-09-23', '    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX。 当否，请批示。', '', '', 1, '2017-09-23 11:57:16', 2, NULL, 't', 'f', '2017-09-23 11:50:03'),(3, 7, '123', '123', '2017-10-03', '    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX。 当否，请批示。', '', '', 1, '2017-10-11 20:51:11', 3, NULL, 't', 'f', '2017-10-11 20:50:45'),(4, 8, '123', '123', '2017-10-12', '    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX。 当否，请批示。', '', '', 1, '2017-10-12 15:16:32', 4, NULL, 't', 'f', '2017-10-12 15:15:14'),(5, 9, '1231', '234', '2017-11-27', '    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX。 当否，请批示。', '', '', 1, '2017-11-12 11:01:31', 5, NULL, 't', 'f', '2017-11-12 11:00:56'),(6, 3, '123', '123', '2018-04-24', '    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX。 当否，请批示。', '', '', 1, '2018-04-09 21:38:53', 6, NULL, 't', 'f', '2018-04-09 21:38:10'),(7, 14, '123', '123', '2018-04-17', '    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX。 当否，请批示。', '', '', 1, '2018-04-10 14:21:28', 7, NULL, 't', 'f', '2018-04-10 14:19:33');
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow31" IN SHARE MODE;
DELETE FROM "public"."t_flow31";
INSERT INTO "public"."t_flow31" ("id","pid","name","no","signer","date","content","attachments","comp","date_ping","items","totals","m11","m12","m13","m21","m22","m23","m31","m32","m33","m41","m42","m43","m51","m52","m53","m61","m62","m63","uid","replytime","replyid","last","act","del","time") VALUES (1, 6, 'test1', '22', '', '', '', '', '11', '2017-09-01', '{"table":[[[1,3],[1,4]],2],"items":[],"totals":[],"amounts":["2","2","100.00",""]}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2017-10-08 09:56:16', 1, NULL, 't', 'f', '2017-10-07 19:16:42'),(2, 7, 'test2', '123', '123', '2017-10-26', '123', '', '123', '2017-10-02', '{"table":[[[1,4]],2],"items":[],"totals":[],"amounts":["0","0","0",""]}', '', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', 1, '2017-10-11 20:52:46', 2, NULL, 't', 'f', '2017-10-11 20:52:24'),(3, 7, 'test2', '9999', '', '', '', '', '9999', '2017-10-09', '{"table":[[[1,3],[1,4]],2],"items":[],"totals":[],"amounts":["","","",""]}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2017-10-12 10:16:33', 3, NULL, 't', 'f', '2017-10-12 10:15:19'),(4, 7, 'test2', '888', '', '', '', '', '88', '2017-10-02', '{"table":[[[1,3],[1,4]],2],"items":[],"totals":[],"amounts":["246","3","1.22","12"]}', '', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', 1, '2017-10-12 10:21:50', 4, NULL, 't', 'f', '2017-10-12 10:21:13'),(5, 8, '泰州市测试项目test', '123', '', '', '', '', '123', '2017-10-03', '{"table":[[[1,7],[1,8]],2],"items":[],"totals":[],"amounts":["123","0","0.00",""]}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2017-10-12 15:19:14', 5, NULL, 't', 'f', '2017-10-12 15:18:46'),(6, 9, '龙窝泵站工程', '123', '123', '2017-11-20', '123', '', '123', '2017-11-07', '{"table":[[[1,5],[1,5,10],[1,8]],3],"items":[],"totals":[],"amounts":["123","123","123","123"]}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0, NULL, 'f', 'f', '2017-11-12 11:03:47'),(7, 3, '测试工程', '12', '', '', '', '', '123', '2018-04-10', '{"table":[[[1,3],[1,9]],2],"items":[],"totals":[],"amounts":["","","",""]}', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2018-04-10 11:39:06', 6, NULL, 't', 'f', '2018-04-10 11:38:41'),(8, 14, '镇江水利工程test', '123', '123', '2018-04-16', '1', '', '123', '2018-04-09', '{"table":[[[1,3],[1,4]],2],"items":[],"totals":[],"amounts":["125","246","196.80","1"]}', '', '12', '1', '', '1', '', '', '2', '', '', '3', '', '', '4', '', '', '5', '', '', 1, '2018-04-10 14:26:18', 7, NULL, 't', 'f', '2018-04-10 14:25:10');
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow4" IN SHARE MODE;
DELETE FROM "public"."t_flow4";
INSERT INTO "public"."t_flow4" ("id","pid","name","no","signer","date","content","keywords","attachments","code","personals","progress","writer","writer_date","signer_date","uid","replytime","replyid","last","act","del","time") VALUES (1, 7, 'test2', '11', '11', '2016-02-20', '11', '', '', '11', '11', '11', '11', '2016-02-20', '2016-02-20', 7, '2018-02-20 09:28:47', 1, NULL, 'f', 'f', '2018-02-20 09:28:18'),(2, 14, '镇江水利工程test', '123', '123', '2018-04-16', '123', '', '', '123', '123', '123', '123', '2018-04-09', '2018-04-10', 14, '2018-04-10 15:20:04', 2, NULL, 'f', 'f', '2018-04-10 15:19:25');
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow51" IN SHARE MODE;
DELETE FROM "public"."t_flow51";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow52" IN SHARE MODE;
DELETE FROM "public"."t_flow52";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow61" IN SHARE MODE;
DELETE FROM "public"."t_flow61";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow62" IN SHARE MODE;
DELETE FROM "public"."t_flow62";
INSERT INTO "public"."t_flow62" ("id","pid","no","signer","date","content","attachments","comp","date_ping","items","totals","m11","m12","m13","m21","m22","m23","m31","m32","m33","m41","m42","m43","m51","m52","m53","m61","m62","m63","uid","replytime","replyid","last","act","del","time") VALUES (1, 7, '123', '123', '2017-10-26', '123', 'test2', '123', '2017-10-02', '{"table":[[[1,4]],2],"items":[["2","123","123","123","123"]],"totals":[],"amounts":["2","123","6150.00","123"]}', '', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', 1, '2017-10-11 20:53:46', 1, NULL, 't', 'f', '2017-10-11 20:53:28');
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow63" IN SHARE MODE;
DELETE FROM "public"."t_flow63";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow64" IN SHARE MODE;
DELETE FROM "public"."t_flow64";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow71" IN SHARE MODE;
DELETE FROM "public"."t_flow71";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow72" IN SHARE MODE;
DELETE FROM "public"."t_flow72";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow73" IN SHARE MODE;
DELETE FROM "public"."t_flow73";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow74" IN SHARE MODE;
DELETE FROM "public"."t_flow74";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow75" IN SHARE MODE;
DELETE FROM "public"."t_flow75";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow76" IN SHARE MODE;
DELETE FROM "public"."t_flow76";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow8" IN SHARE MODE;
DELETE FROM "public"."t_flow8";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow91" IN SHARE MODE;
DELETE FROM "public"."t_flow91";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow921" IN SHARE MODE;
DELETE FROM "public"."t_flow921";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow922" IN SHARE MODE;
DELETE FROM "public"."t_flow922";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow923" IN SHARE MODE;
DELETE FROM "public"."t_flow923";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow924" IN SHARE MODE;
DELETE FROM "public"."t_flow924";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow925" IN SHARE MODE;
DELETE FROM "public"."t_flow925";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_flow9999" IN SHARE MODE;
DELETE FROM "public"."t_flow9999";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_forget" IN SHARE MODE;
DELETE FROM "public"."t_forget";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_group" IN SHARE MODE;
DELETE FROM "public"."t_group";
INSERT INTO "public"."t_group" ("id","fid","name","company","permission","act","del","time") VALUES (1, 0, '镇江市水利工程质量安全监督站', '镇江市水利工程质量安全监督站', '', 't', 'f', '2017-06-22 15:52:53'),(2, 0, '县水利工程质量监督站', '县水利工程质量监督站', '', 't', 't', '2017-10-11 20:46:18'),(3, 0, '泰兴市水利工程质量监督站', '泰兴市水利工程质量监督站', '', 't', 't', '2017-10-12 11:23:38'),(4, 0, '靖江市水利工程质量监督站', '靖江市水利工程质量监督站', '0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,f,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 't', 't', '2017-10-12 11:24:39'),(5, 0, '高港区水利工程质量监督站', '高港区水利工程质量监督站', '', 't', 't', '2017-10-12 11:25:53'),(6, 0, '海陵区水利工程质量监督站', '海陵区水利工程质量监督站', '', 't', 't', '2017-10-12 11:26:10'),(7, 0, '高新区水利工程质量监督站', '高新区水利工程质量监督站', '', 't', 't', '2017-10-12 11:26:31'),(8, 0, '姜堰区水利工程质量监督站', '姜堰区水利工程质量监督站', '', 't', 't', '2017-10-12 11:27:25'),(9, 0, '兴化市水利工程质量监督站', '兴化市水利工程质量监督站', '', 't', 't', '2017-10-12 11:27:42');
COMMIT;
BEGIN;
LOCK TABLE "public"."t_log_event" IN SHARE MODE;
DELETE FROM "public"."t_log_event";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_log_login" IN SHARE MODE;
DELETE FROM "public"."t_log_login";
INSERT INTO "public"."t_log_login" ("id","tid","uid","ip","time") VALUES (1, 2, 1, 3736826418, '2017-06-22 17:23:02'),(2, 2, 1, 3657674810, '2017-06-22 17:27:46'),(3, 2, 1, 3657674810, '2017-06-22 17:30:22'),(4, 2, 1, 3657674810, '2017-06-23 10:48:25'),(5, 1, 1, 1035070050, '2017-06-23 11:03:12'),(6, 2, 1, 987684940, '2017-07-18 09:28:26'),(7, 2, 1, 987684940, '2017-07-21 17:00:40'),(8, 2, 1, 987684940, '2017-07-24 09:38:58'),(9, 1, 2, 987684940, '2017-07-24 09:40:24'),(10, 2, 1, 613800925, '2017-07-25 07:27:09'),(11, 2, 1, 987366393, '2017-07-25 15:05:04'),(12, 2, 1, 987684940, '2017-07-26 08:40:48'),(13, 1, 2, 987684940, '2017-07-26 08:43:02'),(14, 1, 4, 1035070154, '2017-08-02 10:17:58'),(15, 1, 4, 1035070154, '2017-08-02 11:03:29'),(16, 1, 4, 1035070154, '2017-08-02 15:19:47'),(17, 1, 4, 1035070154, '2017-08-03 08:47:29'),(18, 1, 4, 1035070154, '2017-08-04 08:55:19'),(19, 1, 4, 1035070154, '2017-08-07 16:07:28'),(20, 2, 1, 987684940, '2017-08-07 16:43:39'),(21, 2, 1, 987684940, '2017-08-07 16:52:55'),(22, 2, 1, 987684940, '2017-08-07 16:53:31'),(23, 2, 1, 987684940, '2017-08-07 16:56:02'),(24, 2, 1, 987684940, '2017-08-07 17:02:21'),(25, 2, 1, 987684940, '2017-08-11 10:07:39'),(26, 1, 4, 1035070154, '2017-08-15 08:41:07'),(27, 1, 4, 1035070154, '2017-08-15 08:52:09'),(28, 1, 5, 1927901397, '2017-08-23 15:36:10'),(29, 2, 1, 3657674810, '2017-08-24 16:14:16'),(30, 2, 1, 3736826418, '2017-09-23 11:08:39'),(31, 2, 1, 3027981529, '2017-09-30 14:04:37'),(32, 1, 6, 3027981529, '2017-09-30 14:05:00'),(33, 1, 6, 3736826418, '2017-10-06 10:50:05'),(34, 2, 1, 3736826418, '2017-10-06 12:04:06'),(35, 1, 6, 3736826418, '2017-10-06 13:50:55'),(36, 2, 1, 3736826418, '2017-10-06 16:26:46'),(37, 2, 1, 613768090, '2017-10-07 19:13:49'),(38, 1, 6, 613768090, '2017-10-07 19:14:23'),(39, 1, 6, 1968639716, '2017-10-08 09:51:22'),(40, 2, 1, 1968639716, '2017-10-08 09:51:30'),(41, 1, 6, 613800950, '2017-10-11 07:12:29'),(42, 2, 1, 1785620324, '2017-10-11 14:08:01'),(43, 1, 6, 1785620324, '2017-10-11 14:08:28'),(44, 1, 6, 1785620324, '2017-10-11 14:30:18'),(45, 2, 1, 827444495, '2017-10-11 20:24:18'),(46, 2, 1, 827444495, '2017-10-11 20:33:19'),(47, 2, 2, 827444495, '2017-10-11 20:34:05'),(48, 2, 1, 827444495, '2017-10-11 20:35:15'),(49, 2, 1, 827444495, '2017-10-11 20:45:15'),(50, 1, 7, 2053122657, '2017-10-12 10:10:20'),(51, 2, 1, 2053122657, '2017-10-12 10:15:43'),(52, 2, 1, 2053122657, '2017-10-12 15:10:26'),(53, 2, 3, 2053122657, '2017-10-12 15:24:53'),(54, 2, 1, 2053122657, '2017-10-12 15:25:30'),(55, 1, 7, 2053122657, '2017-10-12 15:26:29'),(56, 1, 6, 3736826418, '2017-10-26 14:14:09'),(57, 1, 6, 1968639745, '2017-10-30 09:50:49'),(58, 2, 1, 3657674810, '2017-10-31 15:15:54'),(59, 1, 6, 613768161, '2017-11-12 05:11:49'),(60, 2, 1, 613800929, '2017-11-12 05:13:50'),(61, 1, 6, 3657640914, '2017-11-12 10:45:41'),(62, 2, 1, 3657640914, '2017-11-12 10:46:53'),(63, 1, 6, 3657640914, '2017-11-12 10:55:02'),(64, 1, 9, 3657640914, '2017-11-12 10:55:22'),(65, 1, 9, 3657640914, '2017-11-12 10:58:54'),(66, 2, 1, 3663392477, '2017-11-14 11:23:41'),(67, 1, 10, 3027919700, '2017-11-28 08:45:11'),(68, 1, 11, 826788295, '2017-12-05 10:35:09'),(69, 2, 1, 3657674810, '2017-12-07 11:58:18'),(70, 1, 7, 3657674810, '2017-12-07 11:58:31'),(71, 2, 1, 3657674810, '2017-12-07 12:05:00'),(72, 2, 1, 828151659, '2017-12-15 10:30:22'),(73, 1, 6, 828151659, '2017-12-15 10:32:01'),(74, 2, 1, 828151659, '2017-12-15 10:33:42'),(75, 2, 1, 3657674810, '2018-02-20 09:27:11'),(76, 1, 7, 3657674810, '2018-02-20 09:27:29'),(77, 1, 3, 3745683799, '2018-04-09 21:37:52'),(78, 2, 1, 3745683799, '2018-04-09 21:38:23'),(79, 2, 1, 3745683799, '2018-04-10 03:18:14'),(80, 1, 3, 3745683799, '2018-04-10 04:34:07'),(81, 1, 3, 3745683799, '2018-04-10 06:09:32'),(82, 2, 1, 3657674810, '2018-04-10 11:34:01'),(83, 1, 3, 3657674810, '2018-04-10 11:37:24'),(84, 2, 1, 3657640914, '2018-04-10 13:56:46'),(85, 2, 1, 3657640914, '2018-04-10 14:30:23'),(86, 1, 14, 3657640914, '2018-04-10 14:32:25'),(87, 2, 1, 3657674810, '2018-04-10 17:14:34'),(88, 2, 1, 827444853, '2018-04-11 20:37:26'),(89, 1, 14, 827444853, '2018-04-11 20:44:25'),(90, 1, 6, 3745683838, '2018-04-30 08:01:28'),(91, 1, 6, 3736826418, '2018-05-08 18:08:32'),(92, 2, 1, 3736826418, '2018-05-08 18:34:18');
COMMIT;
BEGIN;
LOCK TABLE "public"."t_msg" IN SHARE MODE;
DELETE FROM "public"."t_msg";
INSERT INTO "public"."t_msg" ("id","type","direct","senderid","receiverid","sender","receiver","nodeid","objid","msg","read","del","time") VALUES (1, 1, 2, 1, 1, '周山河四期工程', '管理员', 0, 1, '新注册', 't', 'f', '2017-06-23 11:02:18'),(2, 1, 2, 2, 1, 'JTMY', '管理员', 0, 2, '新注册', 't', 'f', '2017-07-21 17:01:59'),(3, 1, 2, 3, 1, '测试工程', '管理员', 0, 3, '新注册', 'f', 'f', '2017-07-25 15:06:09'),(4, 1, 1, 1, 3, '管理员', '测试工程', 0, 3, '项目被管理员开放', 'f', 'f', '2017-07-25 15:07:57'),(5, 1, 2, 3, 1, '测试工程', '管理员', 1, 1, '新建质量监督申报', 'f', 'f', '2017-07-25 15:08:21'),(6, 1, 1, 1, 2, '管理员', 'JTMY', 0, 2, '项目被管理员开放', 't', 'f', '2017-07-26 08:41:27'),(7, 1, 2, 2, 1, 'JTMY', '管理员', 1, 2, '新建质量监督申报', 'f', 'f', '2017-07-26 09:10:15'),(8, 1, 1, 1, 2, '管理员', 'JTMY', 1, 2, '质量监督申报有批复', 'f', 'f', '2017-07-26 09:11:12'),(9, 1, 2, 2, 1, 'JTMY', '管理员', 2, 1, '新建单元工程质量项目划分', 'f', 'f', '2017-07-26 09:12:32'),(10, 1, 1, 1, 2, '管理员', 'JTMY', 2, 1, '单元工程质量项目划分有批复', 'f', 'f', '2017-07-26 09:13:28'),(13, 1, 1, 1, 1, '管理员', '周山河四期工程', 0, 1, '项目被管理员开放', 'f', 'f', '2017-08-07 16:48:19'),(11, 1, 2, 4, 1, '通港路东延配套水系调整工程', '管理员', 0, 4, '新注册', 't', 'f', '2017-08-02 10:14:53'),(12, 1, 1, 1, 4, '管理员', '通港路东延配套水系调整工程', 0, 4, '项目被管理员开放', 't', 'f', '2017-08-07 16:46:03'),(15, 1, 2, 6, 1, 'test1', '管理员', 0, 6, '新注册', 'f', 'f', '2017-09-23 11:21:04'),(16, 1, 1, 1, 6, '管理员', 'test1', 0, 6, '项目被管理员开放', 'f', 'f', '2017-09-23 11:21:22'),(17, 1, 2, 6, 1, 'test1', '管理员', 1, 3, '新建质量监督申报', 'f', 'f', '2017-09-23 11:34:09'),(18, 1, 1, 1, 6, '管理员', 'test1', 1, 3, '质量监督申报有批复', 'f', 'f', '2017-09-23 11:41:29'),(20, 1, 1, 1, 6, '管理员', 'test1', 2, 2, '单元工程质量项目划分有批复', 'f', 'f', '2017-09-23 11:57:16'),(21, 1, 2, 6, 1, 'test1', '管理员', 31, 1, '新建', 'f', 'f', '2017-10-07 19:16:42'),(22, 1, 1, 1, 6, '管理员', 'test1', 31, 1, '有批复', 'f', 'f', '2017-10-08 09:56:16'),(19, 1, 2, 6, 1, 'test1', '管理员', 2, 2, '新建单元工程质量项目划分', 't', 'f', '2017-09-23 11:50:03'),(23, 1, 2, 7, 1, 'test2', '管理员', 0, 7, '新注册', 'f', 'f', '2017-10-11 20:47:32'),(25, 1, 2, 7, 1, 'test2', '管理员', 1, 4, '新建质量监督申报', 'f', 'f', '2017-10-11 20:49:07'),(26, 1, 1, 1, 7, '管理员', 'test2', 1, 4, '质量监督申报有批复', 'f', 'f', '2017-10-11 20:50:28'),(27, 1, 2, 7, 1, 'test2', '管理员', 2, 3, '新建单元工程质量项目划分', 'f', 'f', '2017-10-11 20:50:45'),(28, 1, 1, 1, 7, '管理员', 'test2', 2, 3, '单元工程质量项目划分有批复', 'f', 'f', '2017-10-11 20:51:11'),(29, 1, 2, 7, 1, 'test2', '管理员', 31, 2, '新建', 'f', 'f', '2017-10-11 20:52:24'),(30, 1, 1, 1, 7, '管理员', 'test2', 31, 2, '有批复', 'f', 'f', '2017-10-11 20:52:46'),(31, 1, 2, 7, 1, 'test2', '管理员', 62, 1, '新建', 'f', 'f', '2017-10-11 20:53:28'),(32, 1, 1, 1, 7, '管理员', 'test2', 62, 1, '审批通过', 'f', 'f', '2017-10-11 20:53:46'),(33, 1, 2, 7, 1, 'test2', '管理员', 31, 3, '新建', 'f', 'f', '2017-10-12 10:15:19'),(34, 1, 1, 1, 7, '管理员', 'test2', 31, 3, '有批复', 'f', 'f', '2017-10-12 10:16:33'),(35, 1, 2, 7, 1, 'test2', '管理员', 31, 4, '新建', 'f', 'f', '2017-10-12 10:21:13'),(36, 1, 1, 1, 7, '管理员', 'test2', 31, 4, '有批复', 'f', 'f', '2017-10-12 10:21:50'),(38, 1, 1, 1, 8, '管理员', '泰州市测试项目test', 0, 8, '项目被管理员开放', 'f', 'f', '2017-10-12 15:11:01'),(40, 1, 1, 1, 8, '管理员', '泰州市测试项目test', 1, 5, '质量监督申报有批复', 'f', 'f', '2017-10-12 15:14:24'),(42, 1, 1, 1, 8, '管理员', '泰州市测试项目test', 2, 4, '单元工程质量项目划分有批复', 'f', 'f', '2017-10-12 15:16:32'),(44, 1, 1, 1, 8, '管理员', '泰州市测试项目test', 31, 5, '有批复', 'f', 'f', '2017-10-12 15:19:14'),(43, 1, 2, 8, 1, '泰州市测试项目test', '管理员', 31, 5, '新建', 't', 'f', '2017-10-12 15:18:46'),(41, 1, 2, 8, 1, '泰州市测试项目test', '管理员', 2, 4, '新建单元工程质量项目划分', 't', 'f', '2017-10-12 15:15:14'),(49, 1, 1, 1, 9, '管理员', '龙窝泵站工程', 1, 6, '质量监督申报被审批退回', 'f', 'f', '2017-11-12 10:58:41'),(46, 1, 1, 1, 9, '管理员', '龙窝泵站工程', 0, 9, '项目被管理员开放', 't', 'f', '2017-11-12 10:53:21'),(47, 1, 1, 1, 9, '管理员', '龙窝泵站工程', 0, 9, '项目被管理员关闭', 't', 'f', '2017-11-12 10:53:34'),(51, 1, 1, 1, 9, '管理员', '龙窝泵站工程', 1, 7, '质量监督申报有批复', 'f', 'f', '2017-11-12 11:00:26'),(53, 1, 1, 1, 9, '管理员', '龙窝泵站工程', 2, 5, '单元工程质量项目划分有批复', 'f', 'f', '2017-11-12 11:01:31'),(24, 1, 1, 1, 7, '管理员', 'test2', 0, 7, '项目被管理员开放', 't', 'f', '2017-10-11 20:48:31'),(58, 1, 1, 1, 3, '管理员', '测试工程', 1, 1, '质量监督申报有批复', 'f', 'f', '2017-12-15 10:35:51'),(56, 1, 2, 11, 1, '泰州医药高新区药城大道西景河涵洞工程施工标', '管理员', 0, 11, '新注册', 't', 'f', '2017-11-28 08:42:46'),(52, 1, 2, 9, 1, '龙窝泵站工程', '管理员', 2, 5, '新建单元工程质量项目划分', 't', 'f', '2017-11-12 11:00:56'),(50, 1, 2, 9, 1, '龙窝泵站工程', '管理员', 1, 7, '新建质量监督申报', 't', 'f', '2017-11-12 11:00:02'),(54, 1, 2, 9, 1, '龙窝泵站工程', '管理员', 31, 6, '新建', 't', 'f', '2017-11-12 11:03:47'),(48, 1, 2, 9, 1, '龙窝泵站工程', '管理员', 1, 6, '新建质量监督申报', 't', 'f', '2017-11-12 10:57:33'),(45, 1, 2, 9, 1, '龙窝泵站工程', '管理员', 0, 9, '新注册', 't', 'f', '2017-10-12 15:27:35'),(39, 1, 2, 8, 1, '泰州市测试项目test', '管理员', 1, 5, '新建质量监督申报', 't', 'f', '2017-10-12 15:13:28'),(37, 1, 2, 8, 1, '泰州市测试项目test', '管理员', 0, 8, '新注册', 't', 'f', '2017-10-12 15:10:01'),(14, 1, 2, 5, 1, '泰州市“双水绕城”凤凰河景观提升工程凤凰河船闸工程', '管理员', 0, 5, '新注册', 't', 'f', '2017-08-23 15:33:09'),(60, 1, 1, 1, 7, '管理员', 'test2', 4, 7, '质量监督检查意见表有新消息', 'f', 'f', '2018-02-20 09:28:18'),(61, 1, 2, 7, 1, 'test2', '管理员', 4, 1, '回复质量监督检查意见表', 'f', 'f', '2018-02-20 09:28:47'),(62, 1, 2, 3, 1, '测试工程', '管理员', 2, 6, '新建单元工程质量项目划分', 'f', 'f', '2018-04-09 21:38:10'),(63, 1, 1, 1, 3, '管理员', '测试工程', 2, 6, '单元工程质量项目划分有批复', 'f', 'f', '2018-04-09 21:38:53'),(59, 1, 2, 13, 1, '泰州医药高新区2017年农村河道疏浚整治工程', '管理员', 0, 13, '新注册', 't', 'f', '2017-12-25 10:08:25'),(57, 1, 2, 12, 1, '泰州医药高新区中干河连通工程施工标', '管理员', 0, 12, '新注册', 't', 'f', '2017-11-28 08:47:58'),(55, 1, 2, 10, 1, '泰州医药高新区2017年农村河道疏浚整治工程施工标(双庆河)', '管理员', 0, 10, '新注册', 't', 'f', '2017-11-27 17:10:52'),(64, 1, 2, 3, 1, '测试工程', '管理员', 31, 7, '新建', 'f', 'f', '2018-04-10 11:38:41'),(65, 1, 1, 1, 3, '管理员', '测试工程', 31, 7, '有批复', 'f', 'f', '2018-04-10 11:39:07'),(66, 1, 2, 14, 1, '镇江水利工程test', '管理员', 0, 14, '新注册', 'f', 'f', '2018-04-10 13:56:15'),(67, 1, 1, 1, 14, '管理员', '镇江水利工程test', 0, 14, '项目被管理员开放', 'f', 'f', '2018-04-10 13:57:36'),(68, 1, 2, 14, 1, '镇江水利工程test', '管理员', 1, 8, '新建质量监督申报', 'f', 'f', '2018-04-10 14:07:46'),(69, 1, 1, 1, 14, '管理员', '镇江水利工程test', 1, 8, '质量监督申报有批复', 'f', 'f', '2018-04-10 14:08:48'),(70, 1, 2, 14, 1, '镇江水利工程test', '管理员', 2, 7, '新建单元工程质量项目划分', 'f', 'f', '2018-04-10 14:19:33'),(71, 1, 1, 1, 14, '管理员', '镇江水利工程test', 2, 7, '单元工程质量项目划分有批复', 'f', 'f', '2018-04-10 14:21:28'),(72, 1, 2, 14, 1, '镇江水利工程test', '管理员', 31, 8, '新建', 'f', 'f', '2018-04-10 14:25:10'),(73, 1, 1, 1, 14, '管理员', '镇江水利工程test', 31, 8, '有批复', 'f', 'f', '2018-04-10 14:26:18'),(74, 1, 1, 1, 14, '管理员', '镇江水利工程test', 4, 14, '质量监督检查意见表有新消息', 'f', 'f', '2018-04-10 15:19:25'),(75, 1, 2, 14, 1, '镇江水利工程test', '管理员', 4, 2, '回复质量监督检查意见表', 'f', 'f', '2018-04-10 15:20:04'),(76, 1, 2, 15, 1, 'zhengjiang', '管理员', 0, 15, '新注册', 'f', 'f', '2018-04-10 16:58:15'),(77, 1, 1, 1, 15, '管理员', 'zhengjiang', 0, 15, '项目被管理员开放', 'f', 'f', '2018-04-10 16:58:36');
COMMIT;
BEGIN;
LOCK TABLE "public"."t_org" IN SHARE MODE;
DELETE FROM "public"."t_org";
INSERT INTO "public"."t_org" ("id","gid","fid","name","permission","act","del","time") VALUES (1, 1, 0, '市水利工程质量监督站', '', 't', 'f', '2017-06-22 15:52:53'),(2, 1, 0, '县水利工程监督站', '', 't', 'f', '2017-10-11 20:30:59');
COMMIT;
BEGIN;
LOCK TABLE "public"."t_project" IN SHARE MODE;
DELETE FROM "public"."t_project";
INSERT INTO "public"."t_project" ("id","name","pass","gid","company","contacts","mobile","email","n0","n1","n2","n3","n4","n5","n51","n52","n6","n61","n62","n63","n64","n7","n71","n72","n73","n74","n75","n76","n8","n9","n91","n92","n921","n922","n923","n924","n925","n10","n9999","s0","s1","s2","s3","s4","s5","s51","s52","s6","s61","s62","s63","s64","s7","s71","s72","s73","s74","s75","s76","s8","s9","s91","s92","s921","s922","s923","s924","s925","s10","s9999","last","act","del","time","n31","n32","n33","n34","n35","n36","s31","s32","s33","s34","s35","s36","n10001","n10002","n10003","n10004","s10001","s10002","s10003","s10004") VALUES (2, 'JTMY', 'ffd83b04aa9c292b30ebaa0e8506bcb9', 1, '1', '王大锤', '13515153388', '123456@qq.com', 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 4, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, '2017-07-26 08:43:02', 't', 'f', '2017-07-21 17:01:59', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),(7, 'test2', '96e79218965eb72c92a549dd5a330112', 2, 'test2', '张三', '13512566666', '1111@qq.com', 1, 4, 3, 3, 1, 3, 3, 3, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 1, 4, 1, 1, 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2018-02-20 09:27:29', 't', 'f', '2017-10-11 20:47:32', 4, 3, 3, 3, 3, 3, 4, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0),(3, '测试工程', '96e79218965eb72c92a549dd5a330112', 1, '测试单位', '111111', '0512-80808080', '11@11.com', 1, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 4, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, '2018-04-10 11:37:24', 't', 'f', '2017-07-25 15:06:09', 7, 6, 6, 6, 6, 6, 4, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0),(13, '泰州医药高新区2017年农村河道疏浚整治工程', 'e10adc3949ba59abbe56e057f20f883e', 7, '泰州医药高新区水利工程建设处', '李开兵', '13952637881', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'f', 't', '2017-12-25 10:08:25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),(12, '泰州医药高新区中干河连通工程施工标', '25d55ad283aa400af464c76d713c07ad', 7, '泰州医药高新区水利工程建设处', '李开兵', '13952637881', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'f', 't', '2017-11-28 08:47:58', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),(11, '泰州医药高新区药城大道西景河涵洞工程施工标', '25d55ad283aa400af464c76d713c07ad', 7, '泰州医药高新区水利工程建设处', '李开兵', '13952637881', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-12-05 10:35:09', 'f', 't', '2017-11-28 08:42:46', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),(10, '泰州医药高新区2017年农村河道疏浚整治工程施工标(双庆河)', '25d55ad283aa400af464c76d713c07ad', 7, '泰州医药高新区水利工程建设处', '李开兵', '13952637881', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-11-28 08:45:11', 'f', 't', '2017-11-27 17:10:52', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),(9, '龙窝泵站工程', '96e79218965eb72c92a549dd5a330112', 1, '泰州市城市水利投资开发有限公司', '储飞', '15052800028', '123456@qq.com', 1, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-11-12 10:58:54', 'f', 't', '2017-10-12 15:27:35', 6, 5, 5, 5, 5, 5, 2, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0),(8, '泰州市测试项目test', '96e79218965eb72c92a549dd5a330112', 1, '测试test单位', '张三', '13512566666', '66666@qq.com', 1, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 't', 't', '2017-10-12 15:10:01', 5, 4, 4, 4, 4, 4, 4, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0),(5, '泰州市“双水绕城”凤凰河景观提升工程凤凰河船闸工程', '25f9e794323b453885f5181f1b624d0b', 1, '泰州市城市水利投资开发有限公司', '李建军', '15195229633', '458654245@qq.com', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-08-23 15:36:10', 'f', 't', '2017-08-23 15:33:09', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),(4, '通港路东延配套水系调整工程', '2503c4f3d30261f4fce0be84f45d3b8d', 1, '高港区水利局', '滕智超', '15052308325', '1183739264@qq.com', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-08-15 08:52:09', 't', 't', '2017-08-02 10:14:53', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),(1, '周山河四期工程', 'beed2646547415f61085d0fea464353a', 1, '泰州市城市水利投资开发有限公司', '刘小林', '15961086689', '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-06-23 11:03:12', 't', 't', '2017-06-23 11:02:18', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),(14, '镇江水利工程test', '96e79218965eb72c92a549dd5a330112', 1, '测试单位', '张三', '13333333333', '133333333@qq.com', 1, 8, 7, 7, 2, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 4, 4, 4, 1, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, '2018-04-11 20:44:25', 't', 'f', '2018-04-10 13:56:15', 8, 7, 7, 7, 7, 7, 4, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0),(6, 'test1', '96e79218965eb72c92a549dd5a330112', 1, 'aaaa', 'zk', '18652287777', 'zk@sina.com', 1, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 4, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, '2018-05-08 18:08:32', 't', 'f', '2017-09-23 11:21:04', 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),(15, 'zhengjiang', '96e79218965eb72c92a549dd5a330112', 1, 'zhenjiang', 'lisi', '1333333', '33333333@qq.com', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 't', 'f', '2018-04-10 16:58:15', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply10001" IN SHARE MODE;
DELETE FROM "public"."t_reply10001";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply10002" IN SHARE MODE;
DELETE FROM "public"."t_reply10002";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply10003" IN SHARE MODE;
DELETE FROM "public"."t_reply10003";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply10004" IN SHARE MODE;
DELETE FROM "public"."t_reply10004";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply1" IN SHARE MODE;
DELETE FROM "public"."t_reply1";
INSERT INTO "public"."t_reply1" ("id","pid","fid","no","date","content","uid","act","del","time") VALUES (1, 2, 2, '321', '2017-07-27', 'qqqq', 1, 't', 'f', '2017-07-26 09:11:12'),(2, 6, 3, 'xxxa', '2017-09-23', '    你单位《关于test1工程实施质量监督的申请》（XXXX［XXXX］XX号）文收悉。该工程已经批复，并列入年度计划，各项准备工作已就绪，已具备开工条件。我站同意对该工程实施质量监督。现将我站质量监督工作开展有关情况通知如下：', 1, 't', 'f', '2017-09-23 11:41:29'),(3, 7, 4, '123', '2017-10-11', '    你单位《关于test2工程实施质量监督的申请》（XXXX［XXXX］XX号）文收悉。该工程已经批复，并列入年度计划，各项准备工作已就绪，已具备开工条件。我站同意对该工程实施质量监督。现将我站质量监督工作开展有关情况通知如下：', 1, 't', 'f', '2017-10-11 20:50:28'),(4, 8, 5, '123', '2017-10-12', '    你单位《关于泰州市测试项目test工程实施质量监督的申请》（XXXX［XXXX］XX号）文收悉。该工程已经批复，并列入年度计划，各项准备工作已就绪，已具备开工条件。我站同意对该工程实施质量监督。现将我站质量监督工作开展有关情况通知如下：', 1, 't', 'f', '2017-10-12 15:14:24'),(5, 9, 6, '', '', '12312', 1, 'f', 'f', '2017-11-12 10:58:41'),(6, 9, 7, '123', '2017-11-20', '    你单位《关于龙窝泵站工程工程实施质量监督的申请》（XXXX［XXXX］XX号）文收悉。该工程已经批复，并列入年度计划，各项准备工作已就绪，已具备开工条件。我站同意对该工程实施质量监督。现将我站质量监督工作开展有关情况通知如下：', 1, 't', 'f', '2017-11-12 11:00:26'),(7, 3, 1, '1', '2017-12-13', '    你单位《关于测试工程工程实施质量监督的申请》（XXXX［XXXX］XX号）文收悉。该工程已经批复，并列入年度计划，各项准备工作已就绪，已具备开工条件。我站同意对该工程实施质量监督。现将我站质量监督工作开展有关情况通知如下：1', 1, 't', 'f', '2017-12-15 10:35:51'),(8, 14, 8, '123', '2018-04-03', '    你单位《关于镇江水利工程test工程实施质量监督的申请》（XXXX［XXXX］XX号）文收悉。该工程已经批复，并列入年度计划，各项准备工作已就绪，已具备开工条件。我站同意对该工程实施质量监督。现将我站质量监督工作开展有关情况通知如下：', 1, 't', 'f', '2018-04-10 14:08:48');
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply2" IN SHARE MODE;
DELETE FROM "public"."t_reply2";
INSERT INTO "public"."t_reply2" ("id","pid","fid","no","date","content","uid","act","del","time") VALUES (1, 2, 1, '334', '2017-07-29', '333', 1, 't', 'f', '2017-07-26 09:13:28'),(2, 6, 2, '11111', '2017-09-23', '    你单位《关于test1工程项目划分的申请》（XXXX［XXXX］XX号）文收悉。依据相关规范、规程及施工图等资料，经研究，提出确认意见如下：', 1, 't', 'f', '2017-09-23 11:57:16'),(3, 7, 3, '123', '2017-10-24', '    你单位《关于test2工程项目划分的申请》（XXXX［XXXX］XX号）文收悉。依据相关规范、规程及施工图等资料，经研究，提出确认意见如下：', 1, 't', 'f', '2017-10-11 20:51:11'),(4, 8, 4, '123', '2017-10-19', '    你单位《关于泰州市测试项目test工程项目划分的申请》（XXXX［XXXX］XX号）文收悉。依据相关规范、规程及施工图等资料，经研究，提出确认意见如下：', 1, 't', 'f', '2017-10-12 15:16:32'),(5, 9, 5, '1234', '2017-12-04', '    你单位《关于龙窝泵站工程工程项目划分的申请》（XXXX［XXXX］XX号）文收悉。依据相关规范、规程及施工图等资料，经研究，提出确认意见如下：', 1, 't', 'f', '2017-11-12 11:01:31'),(6, 3, 6, '123', '2018-04-23', '    你单位《关于测试工程工程项目划分的申请》（XXXX［XXXX］XX号）文收悉。依据相关规范、规程及施工图等资料，经研究，提出确认意见如下：', 1, 't', 'f', '2018-04-09 21:38:53'),(7, 14, 7, '6666', '2018-04-24', '    你单位《关于镇江水利工程test工程项目划分的申请》（XXXX［XXXX］XX号）文收悉。依据相关规范、规程及施工图等资料，经研究，提出确认意见如下：', 1, 't', 'f', '2018-04-10 14:21:28');
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply31" IN SHARE MODE;
DELETE FROM "public"."t_reply31";
INSERT INTO "public"."t_reply31" ("id","pid","fid","no","date","content","uid","act","del","time") VALUES (1, 6, 1, '123', '2017-10-23', '123', 1, 't', 'f', '2017-10-08 09:56:16'),(2, 7, 2, '123', '2017-10-18', '123', 1, 't', 'f', '2017-10-11 20:52:46'),(3, 7, 3, '123', '2017-10-03', '123', 1, 't', 'f', '2017-10-12 10:16:33'),(4, 7, 4, '123', '2017-10-26', '1324', 1, 't', 'f', '2017-10-12 10:21:50'),(5, 8, 5, '123', '2017-10-11', '123', 1, 't', 'f', '2017-10-12 15:19:14'),(6, 3, 7, '123', '2018-04-10', '123', 1, 't', 'f', '2018-04-10 11:39:06'),(7, 14, 8, '123', '2018-04-02', '1111123', 1, 't', 'f', '2018-04-10 14:26:18');
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply4" IN SHARE MODE;
DELETE FROM "public"."t_reply4";
INSERT INTO "public"."t_reply4" ("id","pid","fid","no","signer","comp","date","content","uid","act","del","time") VALUES (1, 7, 1, '1', '1', '1', '2018-02-20', '11', 7, 't', 'f', '2018-02-20 09:28:47'),(2, 14, 2, '123', '123', '', '2018-04-18', '123', 14, 't', 'f', '2018-04-10 15:20:04');
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply51" IN SHARE MODE;
DELETE FROM "public"."t_reply51";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply52" IN SHARE MODE;
DELETE FROM "public"."t_reply52";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply61" IN SHARE MODE;
DELETE FROM "public"."t_reply61";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply62" IN SHARE MODE;
DELETE FROM "public"."t_reply62";
INSERT INTO "public"."t_reply62" ("id","pid","fid","no","date","content","uid","act","del","time") VALUES (1, 7, 1, '', '', '123', 1, 't', 'f', '2017-10-11 20:53:46');
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply63" IN SHARE MODE;
DELETE FROM "public"."t_reply63";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply64" IN SHARE MODE;
DELETE FROM "public"."t_reply64";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply71" IN SHARE MODE;
DELETE FROM "public"."t_reply71";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply72" IN SHARE MODE;
DELETE FROM "public"."t_reply72";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply73" IN SHARE MODE;
DELETE FROM "public"."t_reply73";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply74" IN SHARE MODE;
DELETE FROM "public"."t_reply74";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply75" IN SHARE MODE;
DELETE FROM "public"."t_reply75";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply76" IN SHARE MODE;
DELETE FROM "public"."t_reply76";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply8" IN SHARE MODE;
DELETE FROM "public"."t_reply8";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply91" IN SHARE MODE;
DELETE FROM "public"."t_reply91";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply921" IN SHARE MODE;
DELETE FROM "public"."t_reply921";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply922" IN SHARE MODE;
DELETE FROM "public"."t_reply922";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply923" IN SHARE MODE;
DELETE FROM "public"."t_reply923";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply924" IN SHARE MODE;
DELETE FROM "public"."t_reply924";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply925" IN SHARE MODE;
DELETE FROM "public"."t_reply925";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_reply9999" IN SHARE MODE;
DELETE FROM "public"."t_reply9999";
COMMIT;
BEGIN;
LOCK TABLE "public"."t_user" IN SHARE MODE;
DELETE FROM "public"."t_user";
INSERT INTO "public"."t_user" ("id","gid","oid","username","password","name","serial","sex","mobile","imei","email","lead","admin","permission","act","del","time") VALUES (1, 0, 0, 'admin', '96e79218965eb72c92a549dd5a330112', '管理员', '', 't', '', '', '', 'f', 'f', 'ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff,ffff', 't', 'f', '2017-06-22 15:52:53'),(2, 1, 2, 'test2', '4297f44b13955235245b2497399d7a93', '123', '123', 'f', '', '', '', 'f', 'f', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 't', 'f', '2017-10-11 20:32:03'),(3, 1, 2, '泰兴管理员', '4297f44b13955235245b2497399d7a93', '李四', '', 'f', '', '', '', 'f', 'f', '', 't', 'f', '2017-10-12 15:24:25');
COMMIT;
ALTER TABLE "public"."t_article" ADD CONSTRAINT "t_article_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_article_type" ADD CONSTRAINT "t_article_type_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_attachment" ADD CONSTRAINT "t_attachment_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_check_type" ADD CONSTRAINT "t_check_type_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_facade_type" ADD CONSTRAINT "t_facade_type_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_feedback" ADD CONSTRAINT "t_feedback_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow10001" ADD CONSTRAINT "t_flow10001_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow10002" ADD CONSTRAINT "t_flow10002_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow10003" ADD CONSTRAINT "t_flow10003_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow10004" ADD CONSTRAINT "t_flow10004_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow1" ADD CONSTRAINT "t_flow1_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow2" ADD CONSTRAINT "t_flow2_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow31" ADD CONSTRAINT "t_flow31_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow4" ADD CONSTRAINT "t_flow4_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow51" ADD CONSTRAINT "t_flow51_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow52" ADD CONSTRAINT "t_flow52_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow61" ADD CONSTRAINT "t_flow61_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow62" ADD CONSTRAINT "t_flow62_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow63" ADD CONSTRAINT "t_flow63_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow64" ADD CONSTRAINT "t_flow64_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow71" ADD CONSTRAINT "t_flow71_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow72" ADD CONSTRAINT "t_flow72_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow73" ADD CONSTRAINT "t_flow73_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow74" ADD CONSTRAINT "t_flow74_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow75" ADD CONSTRAINT "t_flow75_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow76" ADD CONSTRAINT "t_flow76_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow8" ADD CONSTRAINT "t_flow8_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow91" ADD CONSTRAINT "t_flow91_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow921" ADD CONSTRAINT "t_flow921_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow922" ADD CONSTRAINT "t_flow922_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow923" ADD CONSTRAINT "t_flow923_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow924" ADD CONSTRAINT "t_flow924_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow925" ADD CONSTRAINT "t_flow925_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_flow9999" ADD CONSTRAINT "t_flow9999_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_forget" ADD CONSTRAINT "t_forget_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_group" ADD CONSTRAINT "t_group_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_log_event" ADD CONSTRAINT "t_log_event_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_log_login" ADD CONSTRAINT "t_log_login_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_msg" ADD CONSTRAINT "t_msg_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_org" ADD CONSTRAINT "t_org_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_project" ADD CONSTRAINT "t_project_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply10001" ADD CONSTRAINT "t_reply10001_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply10002" ADD CONSTRAINT "t_reply10002_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply10003" ADD CONSTRAINT "t_reply10003_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply10004" ADD CONSTRAINT "t_reply10004_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply1" ADD CONSTRAINT "t_reply1_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply2" ADD CONSTRAINT "t_reply2_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply31" ADD CONSTRAINT "t_reply31_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply4" ADD CONSTRAINT "t_reply4_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply51" ADD CONSTRAINT "t_reply51_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply52" ADD CONSTRAINT "t_reply52_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply61" ADD CONSTRAINT "t_reply61_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply62" ADD CONSTRAINT "t_reply62_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply63" ADD CONSTRAINT "t_reply63_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply64" ADD CONSTRAINT "t_reply64_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply71" ADD CONSTRAINT "t_reply71_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply72" ADD CONSTRAINT "t_reply72_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply73" ADD CONSTRAINT "t_reply73_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply74" ADD CONSTRAINT "t_reply74_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply75" ADD CONSTRAINT "t_reply75_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply76" ADD CONSTRAINT "t_reply76_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply8" ADD CONSTRAINT "t_reply8_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply91" ADD CONSTRAINT "t_reply91_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply921" ADD CONSTRAINT "t_reply921_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply922" ADD CONSTRAINT "t_reply922_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply923" ADD CONSTRAINT "t_reply923_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply924" ADD CONSTRAINT "t_reply924_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply925" ADD CONSTRAINT "t_reply925_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_reply9999" ADD CONSTRAINT "t_reply9999_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."t_user" ADD CONSTRAINT "t_user_pkey" PRIMARY KEY ("id");
SELECT setval('"public"."seq_article"', 5, true);
ALTER SEQUENCE "public"."seq_article" OWNER TO "postgres";
SELECT setval('"public"."seq_article_type"', 7, true);
ALTER SEQUENCE "public"."seq_article_type" OWNER TO "postgres";
SELECT setval('"public"."seq_attachment"', 2, true);
ALTER SEQUENCE "public"."seq_attachment" OWNER TO "postgres";
SELECT setval('"public"."seq_check_type"', 4, true);
ALTER SEQUENCE "public"."seq_check_type" OWNER TO "postgres";
SELECT setval('"public"."seq_facade_type"', 13, true);
ALTER SEQUENCE "public"."seq_facade_type" OWNER TO "postgres";
SELECT setval('"public"."seq_feedback"', 2, true);
ALTER SEQUENCE "public"."seq_feedback" OWNER TO "postgres";
SELECT setval('"public"."seq_flow10001"', 2, false);
ALTER SEQUENCE "public"."seq_flow10001" OWNER TO "postgres";
SELECT setval('"public"."seq_flow10002"', 2, false);
ALTER SEQUENCE "public"."seq_flow10002" OWNER TO "postgres";
SELECT setval('"public"."seq_flow10003"', 2, false);
ALTER SEQUENCE "public"."seq_flow10003" OWNER TO "postgres";
SELECT setval('"public"."seq_flow10004"', 2, false);
ALTER SEQUENCE "public"."seq_flow10004" OWNER TO "postgres";
SELECT setval('"public"."seq_flow1"', 9, true);
ALTER SEQUENCE "public"."seq_flow1" OWNER TO "postgres";
SELECT setval('"public"."seq_flow2"', 8, true);
ALTER SEQUENCE "public"."seq_flow2" OWNER TO "postgres";
SELECT setval('"public"."seq_flow31"', 9, true);
ALTER SEQUENCE "public"."seq_flow31" OWNER TO "postgres";
SELECT setval('"public"."seq_flow4"', 3, true);
ALTER SEQUENCE "public"."seq_flow4" OWNER TO "postgres";
SELECT setval('"public"."seq_flow51"', 2, false);
ALTER SEQUENCE "public"."seq_flow51" OWNER TO "postgres";
SELECT setval('"public"."seq_flow52"', 2, false);
ALTER SEQUENCE "public"."seq_flow52" OWNER TO "postgres";
SELECT setval('"public"."seq_flow61"', 2, false);
ALTER SEQUENCE "public"."seq_flow61" OWNER TO "postgres";
SELECT setval('"public"."seq_flow62"', 2, true);
ALTER SEQUENCE "public"."seq_flow62" OWNER TO "postgres";
SELECT setval('"public"."seq_flow63"', 2, false);
ALTER SEQUENCE "public"."seq_flow63" OWNER TO "postgres";
SELECT setval('"public"."seq_flow64"', 2, false);
ALTER SEQUENCE "public"."seq_flow64" OWNER TO "postgres";
SELECT setval('"public"."seq_flow71"', 2, false);
ALTER SEQUENCE "public"."seq_flow71" OWNER TO "postgres";
SELECT setval('"public"."seq_flow72"', 2, false);
ALTER SEQUENCE "public"."seq_flow72" OWNER TO "postgres";
SELECT setval('"public"."seq_flow73"', 2, false);
ALTER SEQUENCE "public"."seq_flow73" OWNER TO "postgres";
SELECT setval('"public"."seq_flow74"', 2, false);
ALTER SEQUENCE "public"."seq_flow74" OWNER TO "postgres";
SELECT setval('"public"."seq_flow75"', 2, false);
ALTER SEQUENCE "public"."seq_flow75" OWNER TO "postgres";
SELECT setval('"public"."seq_flow76"', 2, false);
ALTER SEQUENCE "public"."seq_flow76" OWNER TO "postgres";
SELECT setval('"public"."seq_flow8"', 2, false);
ALTER SEQUENCE "public"."seq_flow8" OWNER TO "postgres";
SELECT setval('"public"."seq_flow91"', 2, false);
ALTER SEQUENCE "public"."seq_flow91" OWNER TO "postgres";
SELECT setval('"public"."seq_flow921"', 2, false);
ALTER SEQUENCE "public"."seq_flow921" OWNER TO "postgres";
SELECT setval('"public"."seq_flow922"', 2, false);
ALTER SEQUENCE "public"."seq_flow922" OWNER TO "postgres";
SELECT setval('"public"."seq_flow923"', 2, false);
ALTER SEQUENCE "public"."seq_flow923" OWNER TO "postgres";
SELECT setval('"public"."seq_flow924"', 2, false);
ALTER SEQUENCE "public"."seq_flow924" OWNER TO "postgres";
SELECT setval('"public"."seq_flow925"', 2, false);
ALTER SEQUENCE "public"."seq_flow925" OWNER TO "postgres";
SELECT setval('"public"."seq_flow9999"', 2, false);
ALTER SEQUENCE "public"."seq_flow9999" OWNER TO "postgres";
SELECT setval('"public"."seq_forget"', 2, false);
ALTER SEQUENCE "public"."seq_forget" OWNER TO "postgres";
SELECT setval('"public"."seq_group"', 10, true);
ALTER SEQUENCE "public"."seq_group" OWNER TO "postgres";
SELECT setval('"public"."seq_log_event"', 2, false);
ALTER SEQUENCE "public"."seq_log_event" OWNER TO "postgres";
SELECT setval('"public"."seq_log_login"', 93, true);
ALTER SEQUENCE "public"."seq_log_login" OWNER TO "postgres";
SELECT setval('"public"."seq_msg"', 78, true);
ALTER SEQUENCE "public"."seq_msg" OWNER TO "postgres";
SELECT setval('"public"."seq_org"', 3, true);
ALTER SEQUENCE "public"."seq_org" OWNER TO "postgres";
SELECT setval('"public"."seq_project"', 16, true);
ALTER SEQUENCE "public"."seq_project" OWNER TO "postgres";
SELECT setval('"public"."seq_reply10001"', 2, false);
ALTER SEQUENCE "public"."seq_reply10001" OWNER TO "postgres";
SELECT setval('"public"."seq_reply10002"', 2, false);
ALTER SEQUENCE "public"."seq_reply10002" OWNER TO "postgres";
SELECT setval('"public"."seq_reply10003"', 2, false);
ALTER SEQUENCE "public"."seq_reply10003" OWNER TO "postgres";
SELECT setval('"public"."seq_reply10004"', 2, false);
ALTER SEQUENCE "public"."seq_reply10004" OWNER TO "postgres";
SELECT setval('"public"."seq_reply1"', 9, true);
ALTER SEQUENCE "public"."seq_reply1" OWNER TO "postgres";
SELECT setval('"public"."seq_reply2"', 8, true);
ALTER SEQUENCE "public"."seq_reply2" OWNER TO "postgres";
SELECT setval('"public"."seq_reply31"', 8, true);
ALTER SEQUENCE "public"."seq_reply31" OWNER TO "postgres";
SELECT setval('"public"."seq_reply4"', 3, true);
ALTER SEQUENCE "public"."seq_reply4" OWNER TO "postgres";
SELECT setval('"public"."seq_reply51"', 2, false);
ALTER SEQUENCE "public"."seq_reply51" OWNER TO "postgres";
SELECT setval('"public"."seq_reply52"', 2, false);
ALTER SEQUENCE "public"."seq_reply52" OWNER TO "postgres";
SELECT setval('"public"."seq_reply61"', 2, false);
ALTER SEQUENCE "public"."seq_reply61" OWNER TO "postgres";
SELECT setval('"public"."seq_reply62"', 2, true);
ALTER SEQUENCE "public"."seq_reply62" OWNER TO "postgres";
SELECT setval('"public"."seq_reply63"', 2, false);
ALTER SEQUENCE "public"."seq_reply63" OWNER TO "postgres";
SELECT setval('"public"."seq_reply64"', 2, false);
ALTER SEQUENCE "public"."seq_reply64" OWNER TO "postgres";
SELECT setval('"public"."seq_reply71"', 2, false);
ALTER SEQUENCE "public"."seq_reply71" OWNER TO "postgres";
SELECT setval('"public"."seq_reply72"', 2, false);
ALTER SEQUENCE "public"."seq_reply72" OWNER TO "postgres";
SELECT setval('"public"."seq_reply73"', 2, false);
ALTER SEQUENCE "public"."seq_reply73" OWNER TO "postgres";
SELECT setval('"public"."seq_reply74"', 2, false);
ALTER SEQUENCE "public"."seq_reply74" OWNER TO "postgres";
SELECT setval('"public"."seq_reply75"', 2, false);
ALTER SEQUENCE "public"."seq_reply75" OWNER TO "postgres";
SELECT setval('"public"."seq_reply76"', 2, false);
ALTER SEQUENCE "public"."seq_reply76" OWNER TO "postgres";
SELECT setval('"public"."seq_reply8"', 2, false);
ALTER SEQUENCE "public"."seq_reply8" OWNER TO "postgres";
SELECT setval('"public"."seq_reply91"', 2, false);
ALTER SEQUENCE "public"."seq_reply91" OWNER TO "postgres";
SELECT setval('"public"."seq_reply921"', 2, false);
ALTER SEQUENCE "public"."seq_reply921" OWNER TO "postgres";
SELECT setval('"public"."seq_reply922"', 2, false);
ALTER SEQUENCE "public"."seq_reply922" OWNER TO "postgres";
SELECT setval('"public"."seq_reply923"', 2, false);
ALTER SEQUENCE "public"."seq_reply923" OWNER TO "postgres";
SELECT setval('"public"."seq_reply924"', 2, false);
ALTER SEQUENCE "public"."seq_reply924" OWNER TO "postgres";
SELECT setval('"public"."seq_reply925"', 2, false);
ALTER SEQUENCE "public"."seq_reply925" OWNER TO "postgres";
SELECT setval('"public"."seq_reply9999"', 2, false);
ALTER SEQUENCE "public"."seq_reply9999" OWNER TO "postgres";
SELECT setval('"public"."seq_user"', 4, true);
ALTER SEQUENCE "public"."seq_user" OWNER TO "postgres";
