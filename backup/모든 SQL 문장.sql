--------------------------------------------------------
--  ������ ������ - �ݿ���-4��-22-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence EVENT_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "NMDB"."EVENT_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 15 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EVENT_RE_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "NMDB"."EVENT_RE_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 9 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence FAQ_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "NMDB"."FAQ_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 8 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NOTICE_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "NMDB"."NOTICE_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 13 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NOTICE_RE_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "NMDB"."NOTICE_RE_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 13 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ORDER_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "NMDB"."ORDER_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 10048 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PRODUCT_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "NMDB"."PRODUCT_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 10015 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence QNA_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "NMDB"."QNA_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence QNA_RE_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "NMDB"."QNA_RE_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 12 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REVIEW_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "NMDB"."REVIEW_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 27 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REVIEW_RE_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "NMDB"."REVIEW_RE_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 33 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table TB_BOARD
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_BOARD" 
   (	"BOARD_CD" NUMBER, 
	"BOARD_NM" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TB_CART
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_CART" 
   (	"PRODUCT_NO" NUMBER DEFAULT 10000, 
	"MEM_ID" VARCHAR2(32 BYTE), 
	"BUY_NUM" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TB_CATEGORY
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_CATEGORY" 
   (	"CATEGORY_CD" NUMBER, 
	"CATEGORY_NM" VARCHAR2(64 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "NMDB"."TB_CATEGORY"."CATEGORY_CD" IS 'auto_increment';
--------------------------------------------------------
--  DDL for Table TB_CREDIT
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_CREDIT" 
   (	"CREDIT_CD" NUMBER, 
	"CREDIT_NM" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TB_DELIVERY_COM
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_DELIVERY_COM" 
   (	"DELIVERY_COM_CD" NUMBER, 
	"DELIVERY_COM_NM" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TB_EVENT
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_EVENT" 
   (	"EVENT_NO" NUMBER, 
	"EVT_TITLE" VARCHAR2(256 BYTE), 
	"EVT_WRITE_DAY" DATE DEFAULT SYSDATE, 
	"EVT_HITS" NUMBER, 
	"EVT_CONTENT" VARCHAR2(4000 BYTE), 
	"EVT_DEL_CHECK" NUMBER DEFAULT 0, 
	"BOARD_ID" NUMBER, 
	"MEM_ID" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "NMDB"."TB_EVENT"."EVENT_NO" IS 'auto_increment';
--------------------------------------------------------
--  DDL for Table TB_EVENT_RE
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_EVENT_RE" 
   (	"EVENT_RE_NO" NUMBER, 
	"EVT_RE_CONTENT" VARCHAR2(1024 BYTE), 
	"EVT_RE_WRITE_DAY" DATE DEFAULT SYSDATE, 
	"EVT_RE_DEL_CHECK" NUMBER DEFAULT 0, 
	"EVT_NO" NUMBER, 
	"MEM_ID" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "NMDB"."TB_EVENT_RE"."EVENT_RE_NO" IS 'auto_increment';
--------------------------------------------------------
--  DDL for Table TB_FAQ
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_FAQ" 
   (	"FAQ_NO" NUMBER, 
	"FAQ_TITLE" VARCHAR2(256 BYTE), 
	"FAQ_CONTENT" VARCHAR2(4000 BYTE), 
	"FAQ_DEL_CHECK" NUMBER DEFAULT 0, 
	"BOARD_ID" NUMBER, 
	"MEM_ID" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "NMDB"."TB_FAQ"."FAQ_NO" IS 'auto_increment';
--------------------------------------------------------
--  DDL for Table TB_INTEREST
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_INTEREST" 
   (	"PRODUCT_NO" NUMBER DEFAULT 10000, 
	"MEM_ID" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TB_MEMBER
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_MEMBER" 
   (	"MEM_ID" VARCHAR2(32 BYTE), 
	"MEM_PW" VARCHAR2(32 BYTE), 
	"MEM_NAME" VARCHAR2(32 BYTE), 
	"MEM_PHONE" VARCHAR2(32 BYTE), 
	"MEM_ADDR_POST" VARCHAR2(256 BYTE), 
	"MEM_ADDR_DETAIL" VARCHAR2(256 BYTE), 
	"MEM_EMAIL" VARCHAR2(64 BYTE), 
	"MEM_BIRTH" DATE, 
	"MEM_GENDER" NUMBER, 
	"DROP_OUT" NUMBER DEFAULT 0, 
	"MEM_LEVEL_CD" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TB_MEM_LEVEL
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_MEM_LEVEL" 
   (	"MEM_LEVEL_CD" NUMBER, 
	"MEM_LEVEL_NM" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TB_MEM_LEVEL_N_BOARD
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_MEM_LEVEL_N_BOARD" 
   (	"MEM_LEVEL_CD" NUMBER, 
	"BOARD_CD" NUMBER, 
	"BOARD_READ" NUMBER, 
	"BOARD_WRITE" NUMBER, 
	"BOARD_MODIFY" NUMBER, 
	"BOARD_DELETE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TB_NOTICE
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_NOTICE" 
   (	"NOTICE_NO" NUMBER, 
	"NTC_TITLE" VARCHAR2(256 BYTE), 
	"NTC_WRITE_DAY" DATE DEFAULT SYSDATE, 
	"NTC_HITS" NUMBER, 
	"NTC_CONTENT" VARCHAR2(4000 BYTE), 
	"NTC_DEL_CHECK" NUMBER DEFAULT 0, 
	"NTC_ATTACHED_FILE1" VARCHAR2(256 BYTE), 
	"NTC_ATTACHED_FILE2" VARCHAR2(256 BYTE), 
	"BOARD_ID" NUMBER, 
	"MEM_ID" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "NMDB"."TB_NOTICE"."NOTICE_NO" IS 'auto_increment';
--------------------------------------------------------
--  DDL for Table TB_NOTICE_RE
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_NOTICE_RE" 
   (	"NOTICE_RE_NO" NUMBER, 
	"NTC_RE_CONTENT" VARCHAR2(1024 BYTE), 
	"NTC_RE_WRITE_DAY" DATE DEFAULT SYSDATE, 
	"NTC_RE_DEL_CHECK" NUMBER DEFAULT 0, 
	"NOTICE_NO" NUMBER, 
	"MEM_ID" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "NMDB"."TB_NOTICE_RE"."NOTICE_RE_NO" IS 'auto_increment';
--------------------------------------------------------
--  DDL for Table TB_ORDER
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_ORDER" 
   (	"ORDER_NO" NUMBER, 
	"ORDER_DATE" DATE DEFAULT SYSDATE, 
	"CHARGE" NUMBER, 
	"CREDIT_NUM" VARCHAR2(32 BYTE), 
	"CREDIT_EXP" VARCHAR2(8 BYTE), 
	"RCV_NAME" VARCHAR2(64 BYTE), 
	"RCV_PHONE" VARCHAR2(32 BYTE), 
	"RCV_ADDR_POST" VARCHAR2(256 BYTE), 
	"RCV_ADDR_DETAIL" VARCHAR2(256 BYTE), 
	"DELIVERY_MSG" VARCHAR2(128 BYTE), 
	"TRACKING_NUM" NUMBER, 
	"CREDIT_CD" NUMBER, 
	"DELIVERY_COM_CD" NUMBER, 
	"MEM_ID" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TB_PROCESS
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_PROCESS" 
   (	"PROCESS_CD" NUMBER, 
	"PROCESS_NM" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TB_PRODUCT
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_PRODUCT" 
   (	"PRODUCT_NO" NUMBER DEFAULT 10000, 
	"PRODUCT_NAME" VARCHAR2(64 BYTE), 
	"SELLING_PRICE" NUMBER, 
	"COST_PRICE" NUMBER, 
	"STOCK" NUMBER, 
	"DISPLAY_STATE" NUMBER DEFAULT 0, 
	"SALE_STATE" NUMBER DEFAULT 0, 
	"REPRESENT_IMG" VARCHAR2(256 BYTE), 
	"DETAIL_IMG" VARCHAR2(256 BYTE), 
	"SUMMARY_EX" VARCHAR2(128 BYTE), 
	"DETAIL_EX" VARCHAR2(4000 BYTE), 
	"DELETED_STATE" NUMBER DEFAULT 0, 
	"WEIGHT" NUMBER, 
	"CATEGORY_CD" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "NMDB"."TB_PRODUCT"."PRODUCT_NO" IS 'auto_increment';
--------------------------------------------------------
--  DDL for Table TB_PRODUCT_N_ORDER
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_PRODUCT_N_ORDER" 
   (	"PRODUCT_NO" NUMBER DEFAULT 10000, 
	"ORDER_NO" NUMBER, 
	"BUY_NUM" NUMBER, 
	"PROCESS_CD" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TB_QNA
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_QNA" 
   (	"QNA_NO" NUMBER, 
	"QNA_TITLE" VARCHAR2(256 BYTE), 
	"QNA_WRITE_DAY" DATE DEFAULT SYSDATE, 
	"QNA_HITS" NUMBER, 
	"QNA_CONTENT" VARCHAR2(4000 BYTE), 
	"QNA_DEL_CHECK" NUMBER DEFAULT 0, 
	"QNA_PW" VARCHAR2(32 BYTE), 
	"QNA_POS" NUMBER, 
	"QNA_REF" NUMBER, 
	"BOARD_ID" NUMBER, 
	"MEM_ID" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "NMDB"."TB_QNA"."QNA_NO" IS 'auto_increment';
--------------------------------------------------------
--  DDL for Table TB_QNA_RE
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_QNA_RE" 
   (	"QNA_RE_NO" NUMBER, 
	"QNA_RE_CONTENT" VARCHAR2(1024 BYTE), 
	"QNA_RE_WRITE_DAY" DATE DEFAULT SYSDATE, 
	"QNA_RE_DEL_CHECK" NUMBER DEFAULT 0, 
	"QNA_NO" NUMBER, 
	"MEM_ID" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "NMDB"."TB_QNA_RE"."QNA_RE_NO" IS 'auto_increment';
--------------------------------------------------------
--  DDL for Table TB_REVIEW
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_REVIEW" 
   (	"REVIEW_NO" NUMBER, 
	"RVW_TITLE" VARCHAR2(256 BYTE), 
	"RVW_WRITE_DAY" DATE DEFAULT SYSDATE, 
	"RVW_HITS" NUMBER, 
	"RVW_CONTENT" VARCHAR2(4000 BYTE), 
	"RVW_DEL_CHECK" NUMBER, 
	"RVW_SATISFACTION" NUMBER DEFAULT 0, 
	"PRODUCT_NO" NUMBER DEFAULT 10000, 
	"BOARD_ID" NUMBER, 
	"MEM_ID" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "NMDB"."TB_REVIEW"."REVIEW_NO" IS 'auto_increment';
--------------------------------------------------------
--  DDL for Table TB_REVIEW_RE
--------------------------------------------------------

  CREATE TABLE "NMDB"."TB_REVIEW_RE" 
   (	"REVIEW_RE_NO" NUMBER, 
	"RVW_RE_CONTENT" VARCHAR2(1024 BYTE), 
	"RVW_RE_WRITE_DAY" DATE DEFAULT SYSDATE, 
	"RVW_RE_DEL_CHECK" NUMBER DEFAULT 0, 
	"RVW_NO" NUMBER, 
	"MEM_ID" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "NMDB"."TB_REVIEW_RE"."REVIEW_RE_NO" IS 'auto_increment';
--------------------------------------------------------
--  DDL for View V_CART_PRODUCT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "NMDB"."V_CART_PRODUCT" ("PRODUCT_NO", "PRODUCT_NAME", "SELLING_PRICE", "SALE_STATE", "REPRESENT_IMG", "STOCK", "BUY_NUM", "MEM_ID") AS 
  SELECT c.product_no, product_name, selling_price, sale_state, represent_img, stock, c.buy_num, c.mem_id
FROM tb_product p JOIN tb_cart c 
ON (p.product_no=c.product_no) WHERE p.DISPLAY_STATE=1 AND p.DELETED_STATE=0;
--------------------------------------------------------
--  DDL for View V_EVENT_LIST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "NMDB"."V_EVENT_LIST" ("EVENT_NO", "EVT_TITLE", "MEM_ID", "EVT_WRITE_DAY", "EVT_HITS", "EVT_CONTENT", "COUNT_RE") AS 
  SELECT e.EVENT_NO, e.EVT_TITLE, e.MEM_ID, e.EVT_WRITE_DAY, e.EVT_HITS, e.EVT_CONTENT,
NVL((SELECT COUNT(re.EVENT_RE_NO) FROM TB_EVENT_RE re WHERE re.EVT_NO = 
e.EVENT_NO AND re.EVT_RE_DEL_CHECK = 0), 0) as count_re
FROM TB_EVENT e LEFT OUTER JOIN TB_EVENT_RE r
ON (e.EVENT_NO = r.EVT_NO)
WHERE e.EVT_DEL_CHECK =0 
GROUP BY e.EVENT_NO, e.EVT_TITLE, e.MEM_ID, e.EVT_WRITE_DAY, e.EVT_HITS, e.EVT_CONTENT
ORDER BY e.EVENT_NO ASC;
--------------------------------------------------------
--  DDL for View V_EVENT_LIST_RN
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "NMDB"."V_EVENT_LIST_RN" ("EVT_RNUM", "EVENT_NO", "EVT_TITLE", "MEM_ID", "EVT_WRITE_DAY", "EVT_HITS", "EVT_CONTENT", "COUNT_RE") AS 
  SELECT A."EVT_RNUM",A."EVENT_NO",A."EVT_TITLE",A."MEM_ID",A."EVT_WRITE_DAY",A."EVT_HITS",A."EVT_CONTENT",A."COUNT_RE" FROM (SELECT rownum as evt_rnum, V.* from V_EVENT_LIST V ORDER BY V.EVENT_NO DESC) A;
--------------------------------------------------------
--  DDL for View V_INTEREST_PRODUCT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "NMDB"."V_INTEREST_PRODUCT" ("PRODUCT_NO", "PRODUCT_NAME", "SELLING_PRICE", "SALE_STATE", "REPRESENT_IMG", "STOCK", "MEM_ID") AS 
  SELECT i.product_no, product_name, selling_price, sale_state, represent_img, stock, i.mem_id
FROM tb_product p JOIN tb_interest i
ON (p.product_no = i.product_no) WHERE p.DISPLAY_STATE=1 AND p.DELETED_STATE=0;
--------------------------------------------------------
--  DDL for View V_NOTICE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "NMDB"."V_NOTICE" ("NOTICE_NO", "NTC_TITLE", "NTC_RE_NO", "NTC_CONTENT", "NTC_WRITE_DAY", "NTC_HITS", "MEM_ID") AS 
  SELECT n.notice_no,  ntc_title, 
NVL((SELECT COUNT(notice_re_no) FROM tb_notice_re r WHERE r.notice_no=n.notice_no AND r.ntc_re_del_check=0), 0) AS ntc_re_no, 
ntc_content, ntc_write_day, ntc_hits, n.mem_id
FROM tb_notice n LEFT OUTER JOIN tb_notice_re r
ON (n.notice_no = r.notice_no)
WHERE ntc_del_check=0
GROUP BY n.notice_no,  ntc_title,  ntc_write_day, ntc_content, ntc_hits,  n.mem_id
ORDER BY notice_no DESC;
--------------------------------------------------------
--  DDL for View V_ORDERER
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "NMDB"."V_ORDERER" ("ID", "NAME", "PHONE", "EMAIL", "ADDR_POST", "ADDR_DETAIL") AS 
  SELECT m.mem_id as id, m.mem_name as name, m.mem_phone as phone, m.mem_email as email, m.mem_addr_post as addr_post, m.mem_addr_detail 
as addr_detail FROM tb_member m;
--------------------------------------------------------
--  DDL for View V_ORDER_LIST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "NMDB"."V_ORDER_LIST" ("ORDER_NO", "ORDER_DATE", "REPRESENT_IMG", "PRODUCT_NAME", "BUY_NUM", "CHARGE", "PROCESS_NM", "MEM_ID") AS 
  SELECT o.order_no, o.order_date, p.represent_img, p.product_name, 
po.buy_num, o.charge, pr.process_nm, m.mem_id
FROM tb_order o, tb_member m, tb_product p, tb_product_n_order po, tb_process pr
WHERE o.order_no = po.order_no AND o.mem_id = m.mem_id AND p.product_no = po.product_no 
AND pr.process_cd = po.process_cd;
--------------------------------------------------------
--  DDL for View V_ORDER_MANAGER
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "NMDB"."V_ORDER_MANAGER" ("ORDER_DATE", "ORDER_NO", "MEM_NAME", "PRODUCT_NAME", "BUY_NUM", "CHARGE", "DELIVERY_MSG", "TRACKING_NUM", "PROCESS_NM") AS 
  SELECT o.order_date, o.order_no, m.mem_name, p.product_name, 
po.buy_num, o.charge, o.delivery_msg, o.tracking_num, pr.process_nm
FROM tb_order o, tb_member m, tb_product p, tb_product_n_order po, tb_process pr
WHERE o.order_no = po.order_no AND o.mem_id = m.mem_id AND p.product_no = po.product_no 
AND pr.process_cd = po.process_cd;
--------------------------------------------------------
--  DDL for View V_PRODUCT_DELETED
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "NMDB"."V_PRODUCT_DELETED" ("PRODUCT_NO", "CATEGORY_NM", "PRODUCT_NAME", "REPRESENT_IMG", "SELLING_PRICE", "COST_PRICE", "STOCK", "ALL_SELLS") AS 
  SELECT p.product_no, c.category_nm, p.product_name, p.represent_img, p.selling_price,
p.cost_price, p.stock, 
NVL((SELECT SUM(o.buy_num) FROM tb_product_n_order o WHERE o.product_no = 
p.product_no AND o.process_cd = 21
GROUP BY o.product_no), 0) AS all_sells
FROM tb_product p, tb_category c
WHERE p.category_cd = c.category_cd AND p.deleted_state = 1;
--------------------------------------------------------
--  DDL for View V_PRODUCT_MANAGE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "NMDB"."V_PRODUCT_MANAGE" ("PRODUCT_NO", "CATEGORY_NM", "PRODUCT_NAME", "REPRESENT_IMG", "SELLING_PRICE", "COST_PRICE", "STOCK", "DISPLAY_STATE", "SALE_STATE", "ALL_SELLS") AS 
  SELECT p.product_no, c.category_nm, p.product_name,
p.represent_img, p.selling_price, p.cost_price, 
p.stock, p.display_state, p.sale_state,  
NVL((SELECT SUM(o.buy_num) FROM tb_product_n_order o WHERE o.product_no = 
p.product_no AND o.process_cd = 21
GROUP BY o.product_no), 0) AS all_sells
FROM tb_category c,tb_product p, tb_product_n_order o
WHERE c.category_cd = p.category_cd
AND p.product_no = o.product_no(+)
AND p.deleted_state = 0
GROUP BY p.product_no, c.category_nm, p.product_name, p.represent_img, p.selling_price, 
p.cost_price, p.stock, p.weight, p.display_state, p.sale_state
ORDER BY p.product_no;
--------------------------------------------------------
--  DDL for View V_QNA_QNARE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "NMDB"."V_QNA_QNARE" ("QNA_NO", "QNA_TITLE", "QNA_WRITE_DAY", "QNA_HITS", "QNA_CONTENT", "QNA_PW", "QNA_POS", "QNA_REF", "MEM_ID", "QNA_RE_COUNT") AS 
  SELECT q.qna_no, qna_title, qna_write_day, qna_hits, qna_content, qna_pw, qna_pos, qna_ref, q.mem_id, 
NVL((SELECT COUNT(qna_re_no) FROM tb_qna_re r WHERE r.qna_no=q.qna_no AND r.qna_re_del_check=0), 0) as qna_re_count 
FROM tb_qna q LEFT OUTER JOIN tb_qna_re r
ON (q.qna_no = r.qna_no)
WHERE qna_del_check=0
GROUP BY q.qna_no, qna_title, qna_write_day, qna_hits, qna_content, qna_pw, qna_pos, qna_ref, q.mem_id
ORDER BY qna_ref ASC, qna_pos DESC;
--------------------------------------------------------
--  DDL for View V_RANK_SELLS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "NMDB"."V_RANK_SELLS" ("ALL_SELLS", "PRODUCT_NAME") AS 
  SELECT NVL((SELECT SUM(o.buy_num) FROM tb_product_n_order o WHERE o.product_no = 
p.product_no AND o.process_cd = 21
GROUP BY o.product_no), 0) AS all_sells, p.product_name
FROM tb_product p
WHERE p.deleted_state = 0
ORDER BY all_sells DESC, product_name;
--------------------------------------------------------
--  DDL for View V_REVIEW_ADMIN
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "NMDB"."V_REVIEW_ADMIN" ("REVIEW_NO", "PRODUCT_NO", "PRODUCT_NAME", "RVW_TITLE", "RVW_CONTENT", "MEM_ID", "RVW_WRITE_DAY", "RVW_SATISFACTION", "RVW_HITS", "RE_NUM") AS 
  SELECT r.review_no, r.product_no, p.product_name, r.rvw_title,
r.rvw_content, r.mem_id, r.rvw_write_day, r.rvw_satisfaction, r.rvw_hits,
NVL((SELECT COUNT(review_re_no) FROM tb_review_re re WHERE re.rvw_no = 
r.review_no AND re.rvw_re_del_check = 0), 0) as re_num
FROM tb_product p, tb_review r 
WHERE r.product_no = p.product_no
AND r.rvw_del_check = 0 
group by r.review_no, r.product_no, p.product_name, r.rvw_title, r.mem_id, 
r.rvw_content, r.rvw_write_day, r.rvw_satisfaction, r.rvw_hits
order by r.review_no;
--------------------------------------------------------
--  DDL for View V_REVIEW_FRONT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "NMDB"."V_REVIEW_FRONT" ("REVIEW_NO", "PRODUCT_NO", "RVW_TITLE", "RVW_WRITE_DAY", "RVW_HITS", "RVW_CONTENT", "RVW_SATISFACTION", "MEM_ID", "RE_NUM") AS 
  SELECT r.review_no, r.product_no, r.rvw_title, r.rvw_write_day, 
r.rvw_hits, r.rvw_content, r.rvw_satisfaction, r.mem_id,
NVL((SELECT COUNT(review_re_no) FROM tb_review_re re WHERE re.rvw_no = 
r.review_no AND re.rvw_re_del_check = 0), 0) as re_num
FROM tb_review r 
WHERE r.rvw_del_check = 0
group by r.review_no, r.product_no, r.rvw_title, r.rvw_write_day, 
r.rvw_hits, r.rvw_content, r.rvw_satisfaction, r.mem_id
order by r.review_no;
REM INSERTING into NMDB.TB_BOARD
SET DEFINE OFF;
Insert into NMDB.TB_BOARD (BOARD_CD,BOARD_NM) values (1,'��������');
Insert into NMDB.TB_BOARD (BOARD_CD,BOARD_NM) values (2,'�̺�Ʈ');
Insert into NMDB.TB_BOARD (BOARD_CD,BOARD_NM) values (3,'�����ϴ�����');
Insert into NMDB.TB_BOARD (BOARD_CD,BOARD_NM) values (4,'QnA');
Insert into NMDB.TB_BOARD (BOARD_CD,BOARD_NM) values (5,'��ǰ�ı�');
REM INSERTING into NMDB.TB_CART
SET DEFINE OFF;
Insert into NMDB.TB_CART (PRODUCT_NO,MEM_ID,BUY_NUM) values (10001,'soomin',4);
Insert into NMDB.TB_CART (PRODUCT_NO,MEM_ID,BUY_NUM) values (10001,'minhee',3);
Insert into NMDB.TB_CART (PRODUCT_NO,MEM_ID,BUY_NUM) values (10007,'admin02',1);
Insert into NMDB.TB_CART (PRODUCT_NO,MEM_ID,BUY_NUM) values (10001,'blacksmith',1);
Insert into NMDB.TB_CART (PRODUCT_NO,MEM_ID,BUY_NUM) values (10001,'hanagang',3);
REM INSERTING into NMDB.TB_CATEGORY
SET DEFINE OFF;
Insert into NMDB.TB_CATEGORY (CATEGORY_CD,CATEGORY_NM) values (1,'������/�ΰ���/����');
Insert into NMDB.TB_CATEGORY (CATEGORY_CD,CATEGORY_NM) values (2,'�Ǻ�ź��/��ȭ');
Insert into NMDB.TB_CATEGORY (CATEGORY_CD,CATEGORY_NM) values (3,'����/���帧/Ʈ����');
Insert into NMDB.TB_CATEGORY (CATEGORY_CD,CATEGORY_NM) values (4,'�̹�/�Ǻ��氳��');
REM INSERTING into NMDB.TB_CREDIT
SET DEFINE OFF;
Insert into NMDB.TB_CREDIT (CREDIT_CD,CREDIT_NM) values (10,'����');
Insert into NMDB.TB_CREDIT (CREDIT_CD,CREDIT_NM) values (11,'�Ｚ');
Insert into NMDB.TB_CREDIT (CREDIT_CD,CREDIT_NM) values (12,'�ϳ�');
Insert into NMDB.TB_CREDIT (CREDIT_CD,CREDIT_NM) values (13,'�Ե�');
Insert into NMDB.TB_CREDIT (CREDIT_CD,CREDIT_NM) values (14,'KB����');
Insert into NMDB.TB_CREDIT (CREDIT_CD,CREDIT_NM) values (15,'NHä��');
Insert into NMDB.TB_CREDIT (CREDIT_CD,CREDIT_NM) values (16,'��');
Insert into NMDB.TB_CREDIT (CREDIT_CD,CREDIT_NM) values (17,'�츮');
REM INSERTING into NMDB.TB_DELIVERY_COM
SET DEFINE OFF;
Insert into NMDB.TB_DELIVERY_COM (DELIVERY_COM_CD,DELIVERY_COM_NM) values (1,'cj�������');
Insert into NMDB.TB_DELIVERY_COM (DELIVERY_COM_CD,DELIVERY_COM_NM) values (2,'�����ù�');
Insert into NMDB.TB_DELIVERY_COM (DELIVERY_COM_CD,DELIVERY_COM_NM) values (3,'���ο�ĸ');
Insert into NMDB.TB_DELIVERY_COM (DELIVERY_COM_CD,DELIVERY_COM_NM) values (4,'��ü��');
Insert into NMDB.TB_DELIVERY_COM (DELIVERY_COM_CD,DELIVERY_COM_NM) values (5,'�����ù�');
Insert into NMDB.TB_DELIVERY_COM (DELIVERY_COM_CD,DELIVERY_COM_NM) values (6,'�����ù�');
REM INSERTING into NMDB.TB_EVENT
SET DEFINE OFF;
Insert into NMDB.TB_EVENT (EVENT_NO,EVT_TITLE,EVT_WRITE_DAY,EVT_HITS,EVT_CONTENT,EVT_DEL_CHECK,BOARD_ID,MEM_ID) values (1,'�ڿ������� ������ �� �Ǻθ� �����ϰ� ��ǰ �޾ư�����~',to_date('16/04/17','RR/MM/DD'),23,'�ڿ��� � ��ǰ�� ����� ���̳���?<br><br>�ڿ������� ������ �� �Ǻθ� �����ϰ� ��ǰ �޾ư�����~<br>Before�� After �������� �ִٸ� ��÷ Ȯ���� Up!<br>�ڿ��� �Ǻο����� ������ 5�в��� <br>10���� ����� �ڿ��� ��ǰ�� �����帳�ϴ�.<br><br>�̺�Ʈ �Ⱓ : 3�� 10��~ 3�� 31��<br><br>���� ���� ��Ź�����^^<br>',0,2,'admin01');
Insert into NMDB.TB_EVENT (EVENT_NO,EVT_TITLE,EVT_WRITE_DAY,EVT_HITS,EVT_CONTENT,EVT_DEL_CHECK,BOARD_ID,MEM_ID) values (2,'�Ǻ� ������',to_date('16/04/17','RR/MM/DD'),16,'<img src=http://i.imgur.com/xZQ9A66.jpg width=480><br>������������������������������������������������������ ��ǰ����<br>',0,2,'soojin');
Insert into NMDB.TB_EVENT (EVENT_NO,EVT_TITLE,EVT_WRITE_DAY,EVT_HITS,EVT_CONTENT,EVT_DEL_CHECK,BOARD_ID,MEM_ID) values (3,'�Ǻ� ������2',to_date('16/04/17','RR/MM/DD'),10,'<img src=http://i.imgur.com/xZQ9A66.jpg width=480><br>�������������������������������������������������� ������ ��ǰ����<br>',1,2,'soojin');
Insert into NMDB.TB_EVENT (EVENT_NO,EVT_TITLE,EVT_WRITE_DAY,EVT_HITS,EVT_CONTENT,EVT_DEL_CHECK,BOARD_ID,MEM_ID) values (4,'������ �Ǻ�, Ŀ�� �ڽŰ�',to_date('16/04/17','RR/MM/DD'),14,'�ʹ� ���ƿ�<br>�Ǻ� �ڽŰ� ������<br>ȭ���� ������<br>������ ���ݸ� �߾��<br><img src=http://i.imgur.com/Is27hIK.jpg width=690><br>',0,2,'soomin');
Insert into NMDB.TB_EVENT (EVENT_NO,EVT_TITLE,EVT_WRITE_DAY,EVT_HITS,EVT_CONTENT,EVT_DEL_CHECK,BOARD_ID,MEM_ID) values (5,'�ڿ����� �Բ����',to_date('16/04/17','RR/MM/DD'),24,'�ڿ��� ģ���� ��õ���༭ ����غôµ�<br>���� �ڿ��� �� ������ �ȵɰ� ���ƿ�<br><br>��ħ���� ȭ���� �� �Ծ ����� ���׿�<br><br><img src=http://i.imgur.com/rbp8HpW.jpg height=575 width=383><br><br>ģȯ�� ��ǰ�� ���� �޶� ���� �ٸ�����<br>',0,2,'sora');
Insert into NMDB.TB_EVENT (EVENT_NO,EVT_TITLE,EVT_WRITE_DAY,EVT_HITS,EVT_CONTENT,EVT_DEL_CHECK,BOARD_ID,MEM_ID) values (6,'��������~',to_date('16/04/21','RR/MM/DD'),6,'<img src="http://i.imgur.com/iqttft2.jpg" width="630"><br><div><br></div><div>������ ����̵� �ڿ��� �񴩷� �����Ѵ�ϴ� ^^</div>',1,2,'maru0903');
Insert into NMDB.TB_EVENT (EVENT_NO,EVT_TITLE,EVT_WRITE_DAY,EVT_HITS,EVT_CONTENT,EVT_DEL_CHECK,BOARD_ID,MEM_ID) values (7,'������ �� �߰�',to_date('16/04/21','RR/MM/DD'),4,'�̹��� �� ���� ^^~',1,2,'maru0903');
Insert into NMDB.TB_EVENT (EVENT_NO,EVT_TITLE,EVT_WRITE_DAY,EVT_HITS,EVT_CONTENT,EVT_DEL_CHECK,BOARD_ID,MEM_ID) values (8,'��������~',to_date('16/04/21','RR/MM/DD'),12,'������ ����̵� �ڿ��� �񴩷� �����Ѵ�ϴ� ^^!<div><br></div><div><br></div><div><br></div><div><img src="http://i.imgur.com/Qqxxy5i.jpg" width="630"><br></div>',0,2,'maru0903');
Insert into NMDB.TB_EVENT (EVENT_NO,EVT_TITLE,EVT_WRITE_DAY,EVT_HITS,EVT_CONTENT,EVT_DEL_CHECK,BOARD_ID,MEM_ID) values (9,'���� �ϳ� ��~',to_date('16/04/21','RR/MM/DD'),11,'<img src="http://i.imgur.com/9bFvxez.jpg" width="100"><br><div><br></div><div>�� �� �ʹ� �Ͼ��� ^^?</div>',0,2,'maru0903');
Insert into NMDB.TB_EVENT (EVENT_NO,EVT_TITLE,EVT_WRITE_DAY,EVT_HITS,EVT_CONTENT,EVT_DEL_CHECK,BOARD_ID,MEM_ID) values (10,'���� �̺�Ʈ�� ���� ���� ��Ź����� ^^',to_date('16/04/21','RR/MM/DD'),10,'<img src="http://i.imgur.com/5nP4AN3.jpg" width="400"><br><div>�������� ������ �߰ſ������� ��ǰ�� ���� �� ����!!</div><div>���� ���� ��Ź�帱�Կ� ^^~</div>',0,2,'admin01');
Insert into NMDB.TB_EVENT (EVENT_NO,EVT_TITLE,EVT_WRITE_DAY,EVT_HITS,EVT_CONTENT,EVT_DEL_CHECK,BOARD_ID,MEM_ID) values (12,'���� ������!!',to_date('16/04/22','RR/MM/DD'),5,'<img src="http://i.imgur.com/H0VXyiW.jpg" width="474"><br><div><br></div><div>�� �� �ʹ� ���� ���׿䤾��</div>',1,2,'sora');
Insert into NMDB.TB_EVENT (EVENT_NO,EVT_TITLE,EVT_WRITE_DAY,EVT_HITS,EVT_CONTENT,EVT_DEL_CHECK,BOARD_ID,MEM_ID) values (14,'���� �뼼���� ������ ^^',to_date('16/04/22','RR/MM/DD'),2,'<img src="http://i.imgur.com/liv0SjY.jpg" width="640"><br><div><br></div><div>�츮�� �� �������̿� ^^</div>',0,2,'hook1028');
Insert into NMDB.TB_EVENT (EVENT_NO,EVT_TITLE,EVT_WRITE_DAY,EVT_HITS,EVT_CONTENT,EVT_DEL_CHECK,BOARD_ID,MEM_ID) values (11,'�������Դϴ�',to_date('16/04/21','RR/MM/DD'),7,'<img src="http://i.imgur.com/31708ZY.jpg" width="690"><br><div><br></div><div>���� �� �뷡�� �� ���ƿ�~</div>',0,2,'applepie');
Insert into NMDB.TB_EVENT (EVENT_NO,EVT_TITLE,EVT_WRITE_DAY,EVT_HITS,EVT_CONTENT,EVT_DEL_CHECK,BOARD_ID,MEM_ID) values (13,'�Ǻΰ�...',to_date('16/04/22','RR/MM/DD'),2,'���� ���׿�<img src="http://i.imgur.com/veZvh6Y.png" width="38">',1,2,'soojin');
REM INSERTING into NMDB.TB_EVENT_RE
SET DEFINE OFF;
Insert into NMDB.TB_EVENT_RE (EVENT_RE_NO,EVT_RE_CONTENT,EVT_RE_WRITE_DAY,EVT_RE_DEL_CHECK,EVT_NO,MEM_ID) values (1,'�� ���ݹٷ� ��������',to_date('16/04/17','RR/MM/DD'),0,1,'soojin');
Insert into NMDB.TB_EVENT_RE (EVENT_RE_NO,EVT_RE_CONTENT,EVT_RE_WRITE_DAY,EVT_RE_DEL_CHECK,EVT_NO,MEM_ID) values (2,'���� �����׿�^^',to_date('16/04/17','RR/MM/DD'),0,1,'sora');
Insert into NMDB.TB_EVENT_RE (EVENT_RE_NO,EVT_RE_CONTENT,EVT_RE_WRITE_DAY,EVT_RE_DEL_CHECK,EVT_NO,MEM_ID) values (3,'soojin�� �������� ��¦ �����Ⱦ��!<br> �̺�Ʈ �������ּż� �����ؿ�^^',to_date('16/04/17','RR/MM/DD'),0,2,'admin02');
Insert into NMDB.TB_EVENT_RE (EVENT_RE_NO,EVT_RE_CONTENT,EVT_RE_WRITE_DAY,EVT_RE_DEL_CHECK,EVT_NO,MEM_ID) values (4,'sumin�� ���� �����̽ó׿�!<br> �̺�Ʈ �������ּż� �����ؿ�^^',to_date('16/04/17','RR/MM/DD'),0,4,'admin02');
Insert into NMDB.TB_EVENT_RE (EVENT_RE_NO,EVT_RE_CONTENT,EVT_RE_WRITE_DAY,EVT_RE_DEL_CHECK,EVT_NO,MEM_ID) values (5,'�̰� ���� ���� �ƴѵ�..',to_date('16/04/17','RR/MM/DD'),1,4,'minhee');
Insert into NMDB.TB_EVENT_RE (EVENT_RE_NO,EVT_RE_CONTENT,EVT_RE_WRITE_DAY,EVT_RE_DEL_CHECK,EVT_NO,MEM_ID) values (6,'sora�� ���� ��ǰ ���п� ȭ���� �ߵȴٴ� �����̳׿�<br> �̺�Ʈ �������ּż� �����ؿ�^^',to_date('16/04/17','RR/MM/DD'),0,5,'admin02');
Insert into NMDB.TB_EVENT_RE (EVENT_RE_NO,EVT_RE_CONTENT,EVT_RE_WRITE_DAY,EVT_RE_DEL_CHECK,EVT_NO,MEM_ID) values (7,'�� �ܱ����ε� �ѱ��� ���Ͻó׿�!!',to_date('16/04/20','RR/MM/DD'),0,4,'sora');
Insert into NMDB.TB_EVENT_RE (EVENT_RE_NO,EVT_RE_CONTENT,EVT_RE_WRITE_DAY,EVT_RE_DEL_CHECK,EVT_NO,MEM_ID) values (8,'�츮�� �� �� �Ϳ���',to_date('16/04/22','RR/MM/DD'),0,14,'hook1028');
REM INSERTING into NMDB.TB_FAQ
SET DEFINE OFF;
Insert into NMDB.TB_FAQ (FAQ_NO,FAQ_TITLE,FAQ_CONTENT,FAQ_DEL_CHECK,BOARD_ID,MEM_ID) values (1,'���� â�� �ȶߴµ� ��� �ؾ��ϳ���?','��Ȥ ���� â�� �ȶ�ٰ� �����Ͻô� ���Ե��� �����ʴϴ�.<br>�� ��� �˾� ������ �����س��Ƽ� �ڵ����� KCP���� â�� �����ʱ⶧���� �������� ����â�� �����ּž��մϴ�.<br>�ֹ����� �õ��ϼ����� ���� �Ʒ��� ���� ȭ���� ���̽Ŵٸ� �����ϱ� ��ư�� �����ø� KCP���� �������� ���� �� �����ʴϴ�.<br><br><img src="http://i.imgur.com/UdtItem.png" width="690"><br><br>Ȥ�� ���� ������ ���� �����ϱⰡ �����ʰ� �̻��� ������ �ߴ� ��쿡�� KCP���α׷��� ��ġ�����ʾ� �߻��ϴ� �����̿���, �����ϴ� �������� KCP ������ �ʿ��� �ڷḦ ��ġ �� �������ֽñ� �ٶ��ϴ�.<br>�����մϴ�.<br>',0,3,'admin01');
Insert into NMDB.TB_FAQ (FAQ_NO,FAQ_TITLE,FAQ_CONTENT,FAQ_DEL_CHECK,BOARD_ID,MEM_ID) values (2,'���� â�� �ȶߴµ� ��� �ؾ��ϳ���?','��Ȥ ���� â�� �ȶ�ٰ� �����Ͻô� ���Ե��� �����ʴϴ�.<br>�� ��� �˾� ������ �����س��Ƽ� �ڵ����� KCP���� â�� �����ʱ⶧���� �������� ����â�� �����ּž��մϴ�.<br>nbsp;<br>�ֹ����� �õ��ϼ����� ���� �Ʒ��� ���� ȭ���� ���̽Ŵٸ� �����ϱ� ��ư�� �����ø� KCP���� �������� ���� �� �����ʴϴ�.<br><br><img src=http://i.imgur.com/UdtItem.png width=690><br><br>Ȥ�� ���� ������ ���� �����ϱⰡ �����ʰ� �̻��� ������ �ߴ� ��쿡�� KCP���α׷��� ��ġ�����ʾ� �߻��ϴ� �����̿���, �����ϴ� �������� KCP ������ �ʿ��� �ڷḦ ��ġ �� �������ֽñ� �ٶ��ϴ�.<br>�����մϴ�.<br>',1,3,'admin01');
Insert into NMDB.TB_FAQ (FAQ_NO,FAQ_TITLE,FAQ_CONTENT,FAQ_DEL_CHECK,BOARD_ID,MEM_ID) values (3,'���� ��۹޴� ����� �˷��ּ���','���� 11�ñ��� �ֹ�/������ �Ϸ��Ͻø�<br>������ �ٷ� ��ǰ�� ��� ������ �� �ֽ��ϴ�.<br>',0,3,'admin01');
Insert into NMDB.TB_FAQ (FAQ_NO,FAQ_TITLE,FAQ_CONTENT,FAQ_DEL_CHECK,BOARD_ID,MEM_ID) values (4,'���� ��۹޴� ����� �˷��ּ���','���� 11�ñ��� �ֹ�/������ �Ϸ��Ͻø�<br>������ �ٷ� ��ǰ�� ��� ������ �� �ֽ��ϴ�.<br>',1,3,'admin01');
Insert into NMDB.TB_FAQ (FAQ_NO,FAQ_TITLE,FAQ_CONTENT,FAQ_DEL_CHECK,BOARD_ID,MEM_ID) values (5,'��ǰ�� ��� �����ؾ� �ϳ���?','���� �ڿ��� ��ǰ�� ����� �ܿ� ÷���� ���� ���� ������ �߸��Ͻ� ���<br>�����ǰų� ������ ���� �� ������ ������ �����Ͻñ� �ٶ��ϴ�.<br>���籤�� �� ���⸦ ���� �ǳ��� ���� �����Ͻð� ���� �Ǵ� �õ����� �Ͻô� ���� �����ϴ�.<br>',0,3,'admin01');
Insert into NMDB.TB_FAQ (FAQ_NO,FAQ_TITLE,FAQ_CONTENT,FAQ_DEL_CHECK,BOARD_ID,MEM_ID) values (6,'���� �������� �³���?','���ݸ� ���캸�� �� �� �ִ� ���� ���� �̹����� ���Ͻø� ���� �� �� �ְ�<br>������ ����� �ѹ��� ���� ���������� ����Ͻô� ���̶�� ����� �ʰ� �����Ͻ� �� �ֽ��ϴ�.<br>�׸���, ������ �����ü���� �ֽ��ϰ� ������ �Һ����ξ� ���Ÿ� �ؼ� ������ ����ǥ�ø�<br>�Ű��ϱ� ������ ���� ö���ϰ� Ȯ���� �ϰ� �ֽ��ϴ�.<br>���� �ڿ����� ���Ե��� �ŷڸ� ���� ������, ������ ǥ�⸦ �Ͽ� �����帮�� �ֽ��ϴ�.<br>',0,3,'admin01');
Insert into NMDB.TB_FAQ (FAQ_NO,FAQ_TITLE,FAQ_CONTENT,FAQ_DEL_CHECK,BOARD_ID,MEM_ID) values (7,'�� �� �Ծ �ǳ���?','���� �ڿ��� ��ǰ�� ��ü�� ���������� ��ǰ�� �ƴϹǷ�<div>�Դ� ���� �ﰡ���ֽð� �Ǻο� �纸���ֽñ� �ٶ��ϴ� ^^</div>',0,3,'admin02');
REM INSERTING into NMDB.TB_INTEREST
SET DEFINE OFF;
Insert into NMDB.TB_INTEREST (PRODUCT_NO,MEM_ID) values (10000,'minhee');
Insert into NMDB.TB_INTEREST (PRODUCT_NO,MEM_ID) values (10001,'admin02');
Insert into NMDB.TB_INTEREST (PRODUCT_NO,MEM_ID) values (10001,'sora');
Insert into NMDB.TB_INTEREST (PRODUCT_NO,MEM_ID) values (10002,'minhee');
Insert into NMDB.TB_INTEREST (PRODUCT_NO,MEM_ID) values (10003,'soojin');
Insert into NMDB.TB_INTEREST (PRODUCT_NO,MEM_ID) values (10003,'sora');
Insert into NMDB.TB_INTEREST (PRODUCT_NO,MEM_ID) values (10004,'hanagang');
Insert into NMDB.TB_INTEREST (PRODUCT_NO,MEM_ID) values (10004,'soojin');
Insert into NMDB.TB_INTEREST (PRODUCT_NO,MEM_ID) values (10005,'pasley');
Insert into NMDB.TB_INTEREST (PRODUCT_NO,MEM_ID) values (10005,'soomin');
Insert into NMDB.TB_INTEREST (PRODUCT_NO,MEM_ID) values (10006,'soomin');
Insert into NMDB.TB_INTEREST (PRODUCT_NO,MEM_ID) values (10006,'sora');
Insert into NMDB.TB_INTEREST (PRODUCT_NO,MEM_ID) values (10007,'applepie');
Insert into NMDB.TB_INTEREST (PRODUCT_NO,MEM_ID) values (10007,'soomin');
REM INSERTING into NMDB.TB_MEMBER
SET DEFINE OFF;
Insert into NMDB.TB_MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_PHONE,MEM_ADDR_POST,MEM_ADDR_DETAIL,MEM_EMAIL,MEM_BIRTH,MEM_GENDER,DROP_OUT,MEM_LEVEL_CD) values ('admin01','1111','�ڿ���','010-7473-2442','140-190','����� ��걸 �ľϵ�@406-7���� �����2��','sseun0402@hanmail.net',to_date('90/04/02','RR/MM/DD'),2,0,10);
Insert into NMDB.TB_MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_PHONE,MEM_ADDR_POST,MEM_ADDR_DETAIL,MEM_EMAIL,MEM_BIRTH,MEM_GENDER,DROP_OUT,MEM_LEVEL_CD) values ('admin02','123456','�ڿ���','010-1234-5678','330-847','��û���� �ƻ�� ����� ���縮@�뿬���� �����Ͽ콺','geunhoo@gmail.com',to_date('88/10/24','RR/MM/DD'),1,0,10);
Insert into NMDB.TB_MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_PHONE,MEM_ADDR_POST,MEM_ADDR_DETAIL,MEM_EMAIL,MEM_BIRTH,MEM_GENDER,DROP_OUT,MEM_LEVEL_CD) values ('soomin','123456','������','010-0000-0000','000-000','����� ������ ����3�� ��������Ʈ@102�� 202ȣ','soomin@natural.com',to_date('90/01/01','RR/MM/DD'),2,0,1);
Insert into NMDB.TB_MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_PHONE,MEM_ADDR_POST,MEM_ADDR_DETAIL,MEM_EMAIL,MEM_BIRTH,MEM_GENDER,DROP_OUT,MEM_LEVEL_CD) values ('sora','1234','�ּҶ�','010-1111-1111','111-111','����� ������ ����2�� ���Ǿ���Ʈ@101�� 202ȣ','hook1028@naver.com',to_date('90/02/02','RR/MM/DD'),2,0,1);
Insert into NMDB.TB_MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_PHONE,MEM_ADDR_POST,MEM_ADDR_DETAIL,MEM_EMAIL,MEM_BIRTH,MEM_GENDER,DROP_OUT,MEM_LEVEL_CD) values ('soojin','4321','�̼���','010-2222-2222','222-222','��⵵ �Ȼ�� �Ȼ걸 �Ȼ�3��@�Ȼ����Ʈ 403�� 101ȣ','sojin@natural.com',to_date('90/03/03','RR/MM/DD'),2,0,1);
Insert into NMDB.TB_MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_PHONE,MEM_ADDR_POST,MEM_ADDR_DETAIL,MEM_EMAIL,MEM_BIRTH,MEM_GENDER,DROP_OUT,MEM_LEVEL_CD) values ('minhee','4321','�ֹ���','010-333-3333','33333','��⵵ �����ֽ� ���ֵ� �����־���Ʈ@303�� 202ȣ','minhee@natural.com',to_date('90/04/04','RR/MM/DD'),1,0,1);
Insert into NMDB.TB_MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_PHONE,MEM_ADDR_POST,MEM_ADDR_DETAIL,MEM_EMAIL,MEM_BIRTH,MEM_GENDER,DROP_OUT,MEM_LEVEL_CD) values ('blacksmith','123456','����','010-3344-8944','04402','���� ��걸 ������ 48@��������Ʈ 104�� 1205ȣ','black_smith@hotmail.com',to_date('91/04/05','RR/MM/DD'),1,0,1);
Insert into NMDB.TB_MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_PHONE,MEM_ADDR_POST,MEM_ADDR_DETAIL,MEM_EMAIL,MEM_BIRTH,MEM_GENDER,DROP_OUT,MEM_LEVEL_CD) values ('gorani','123456','����','010-3466-8892','57724','���� ����� ���ߵ�� 64-24@2��','gorani0505@naver.com',to_date('82/06/07','RR/MM/DD'),1,0,1);
Insert into NMDB.TB_MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_PHONE,MEM_ADDR_POST,MEM_ADDR_DETAIL,MEM_EMAIL,MEM_BIRTH,MEM_GENDER,DROP_OUT,MEM_LEVEL_CD) values ('applepie','123456','�����','010-2367-3467','63308','����Ư����ġ�� ���ֽ� ÷�ܷ� 58@1��','applepie@hotmail.com',to_date('84/11/06','RR/MM/DD'),1,0,1);
Insert into NMDB.TB_MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_PHONE,MEM_ADDR_POST,MEM_ADDR_DETAIL,MEM_EMAIL,MEM_BIRTH,MEM_GENDER,DROP_OUT,MEM_LEVEL_CD) values ('hook1028','123456','�ڼҶ�','010-3454-4567','05048','���� ������ �������� 18@2��','hook1028@naver.com',to_date('89/04/19','RR/MM/DD'),2,1,1);
Insert into NMDB.TB_MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_PHONE,MEM_ADDR_POST,MEM_ADDR_DETAIL,MEM_EMAIL,MEM_BIRTH,MEM_GENDER,DROP_OUT,MEM_LEVEL_CD) values ('sora4567','123456','�ڼҶ�','010-3144-2344','04948','���� ������ ���ǵ� 3-19@301ȣ','hook@naver.com',to_date('89/04/13','RR/MM/DD'),2,0,1);
Insert into NMDB.TB_MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_PHONE,MEM_ADDR_POST,MEM_ADDR_DETAIL,MEM_EMAIL,MEM_BIRTH,MEM_GENDER,DROP_OUT,MEM_LEVEL_CD) values ('sora1234','123456','���Ҷ�','010-2345-6789','04948','���� ������ ���ǵ� 3-16@201ȣ','hook1028@naver.com',to_date('89/07/16','RR/MM/DD'),2,0,2);
Insert into NMDB.TB_MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_PHONE,MEM_ADDR_POST,MEM_ADDR_DETAIL,MEM_EMAIL,MEM_BIRTH,MEM_GENDER,DROP_OUT,MEM_LEVEL_CD) values ('maru0903','akfnakfn','Ȳ����','010-4322-0903','48000','�λ� �ؿ�뱸 �ݼ۷� 830@���� ����Ʈ 102�� 1802ȣ','maru0903@gmail.com',to_date('91/10/13','RR/MM/DD'),1,0,1);
Insert into NMDB.TB_MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_PHONE,MEM_ADDR_POST,MEM_ADDR_DETAIL,MEM_EMAIL,MEM_BIRTH,MEM_GENDER,DROP_OUT,MEM_LEVEL_CD) values ('hanagang','123456','���ϳ�','010-3434-7764','41008','�뱸 ���� �������� 35-15@�����κ� 302ȣ','flowergang@hanmail.net',to_date('85/06/15','RR/MM/DD'),2,0,1);
Insert into NMDB.TB_MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_PHONE,MEM_ADDR_POST,MEM_ADDR_DETAIL,MEM_EMAIL,MEM_BIRTH,MEM_GENDER,DROP_OUT,MEM_LEVEL_CD) values ('sohee0628','123456','������','010-3456-6655','05247','���� ������ ��õ��� 148@�Ѱ������� 402ȣ','sohee0628@naver.com',to_date('99/07/28','RR/MM/DD'),2,0,1);
Insert into NMDB.TB_MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_PHONE,MEM_ADDR_POST,MEM_ADDR_DETAIL,MEM_EMAIL,MEM_BIRTH,MEM_GENDER,DROP_OUT,MEM_LEVEL_CD) values ('pasley','123456','�����','010-2554-3655','08327','���� ���α� ������� 87@����������Ʈ 101�� 302ȣ','pasley@nate.com',to_date('97/06/03','RR/MM/DD'),1,0,1);
Insert into NMDB.TB_MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_PHONE,MEM_ADDR_POST,MEM_ADDR_DETAIL,MEM_EMAIL,MEM_BIRTH,MEM_GENDER,DROP_OUT,MEM_LEVEL_CD) values ('arooroo','123456','���Ƹ�','010-3878-7788','05007','���� ������ ������� 346@����� 101ȣ','arooroo@hanmail.net',to_date('98/03/09','RR/MM/DD'),2,0,1);
Insert into NMDB.TB_MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_PHONE,MEM_ADDR_POST,MEM_ADDR_DETAIL,MEM_EMAIL,MEM_BIRTH,MEM_GENDER,DROP_OUT,MEM_LEVEL_CD) values ('mozamoza','123456','�����','010-3134-5644','05003','���� ������ ������� 347@����','moza0714@hanmail.net',to_date('73/08/14','RR/MM/DD'),2,0,1);
Insert into NMDB.TB_MEMBER (MEM_ID,MEM_PW,MEM_NAME,MEM_PHONE,MEM_ADDR_POST,MEM_ADDR_DETAIL,MEM_EMAIL,MEM_BIRTH,MEM_GENDER,DROP_OUT,MEM_LEVEL_CD) values ('kia_baseball','123456','������','010-9877-6533','25627','���� ������ ������ �����ʱ��� 10-3@���ڳӺ��� 301ȣ','yoon_baseball@nate.com',to_date('71/04/19','RR/MM/DD'),1,0,1);
REM INSERTING into NMDB.TB_MEM_LEVEL
SET DEFINE OFF;
Insert into NMDB.TB_MEM_LEVEL (MEM_LEVEL_CD,MEM_LEVEL_NM) values (10,'������');
Insert into NMDB.TB_MEM_LEVEL (MEM_LEVEL_CD,MEM_LEVEL_NM) values (1,'�Ϲ�ȸ��');
Insert into NMDB.TB_MEM_LEVEL (MEM_LEVEL_CD,MEM_LEVEL_NM) values (2,'�ҷ�ȸ��');
Insert into NMDB.TB_MEM_LEVEL (MEM_LEVEL_CD,MEM_LEVEL_NM) values (3,'��ȸ��');
REM INSERTING into NMDB.TB_MEM_LEVEL_N_BOARD
SET DEFINE OFF;
Insert into NMDB.TB_MEM_LEVEL_N_BOARD (MEM_LEVEL_CD,BOARD_CD,BOARD_READ,BOARD_WRITE,BOARD_MODIFY,BOARD_DELETE) values (10,1,1,1,1,1);
Insert into NMDB.TB_MEM_LEVEL_N_BOARD (MEM_LEVEL_CD,BOARD_CD,BOARD_READ,BOARD_WRITE,BOARD_MODIFY,BOARD_DELETE) values (10,2,1,1,1,1);
Insert into NMDB.TB_MEM_LEVEL_N_BOARD (MEM_LEVEL_CD,BOARD_CD,BOARD_READ,BOARD_WRITE,BOARD_MODIFY,BOARD_DELETE) values (10,3,1,1,1,1);
Insert into NMDB.TB_MEM_LEVEL_N_BOARD (MEM_LEVEL_CD,BOARD_CD,BOARD_READ,BOARD_WRITE,BOARD_MODIFY,BOARD_DELETE) values (10,4,1,1,1,1);
Insert into NMDB.TB_MEM_LEVEL_N_BOARD (MEM_LEVEL_CD,BOARD_CD,BOARD_READ,BOARD_WRITE,BOARD_MODIFY,BOARD_DELETE) values (10,5,1,1,1,1);
Insert into NMDB.TB_MEM_LEVEL_N_BOARD (MEM_LEVEL_CD,BOARD_CD,BOARD_READ,BOARD_WRITE,BOARD_MODIFY,BOARD_DELETE) values (1,1,1,0,0,0);
Insert into NMDB.TB_MEM_LEVEL_N_BOARD (MEM_LEVEL_CD,BOARD_CD,BOARD_READ,BOARD_WRITE,BOARD_MODIFY,BOARD_DELETE) values (1,2,1,1,1,1);
Insert into NMDB.TB_MEM_LEVEL_N_BOARD (MEM_LEVEL_CD,BOARD_CD,BOARD_READ,BOARD_WRITE,BOARD_MODIFY,BOARD_DELETE) values (1,3,1,0,0,0);
Insert into NMDB.TB_MEM_LEVEL_N_BOARD (MEM_LEVEL_CD,BOARD_CD,BOARD_READ,BOARD_WRITE,BOARD_MODIFY,BOARD_DELETE) values (1,4,1,1,1,1);
Insert into NMDB.TB_MEM_LEVEL_N_BOARD (MEM_LEVEL_CD,BOARD_CD,BOARD_READ,BOARD_WRITE,BOARD_MODIFY,BOARD_DELETE) values (1,5,1,1,1,1);
Insert into NMDB.TB_MEM_LEVEL_N_BOARD (MEM_LEVEL_CD,BOARD_CD,BOARD_READ,BOARD_WRITE,BOARD_MODIFY,BOARD_DELETE) values (2,1,1,0,0,0);
Insert into NMDB.TB_MEM_LEVEL_N_BOARD (MEM_LEVEL_CD,BOARD_CD,BOARD_READ,BOARD_WRITE,BOARD_MODIFY,BOARD_DELETE) values (2,2,1,0,0,1);
Insert into NMDB.TB_MEM_LEVEL_N_BOARD (MEM_LEVEL_CD,BOARD_CD,BOARD_READ,BOARD_WRITE,BOARD_MODIFY,BOARD_DELETE) values (2,3,1,0,0,0);
Insert into NMDB.TB_MEM_LEVEL_N_BOARD (MEM_LEVEL_CD,BOARD_CD,BOARD_READ,BOARD_WRITE,BOARD_MODIFY,BOARD_DELETE) values (2,4,1,0,0,1);
Insert into NMDB.TB_MEM_LEVEL_N_BOARD (MEM_LEVEL_CD,BOARD_CD,BOARD_READ,BOARD_WRITE,BOARD_MODIFY,BOARD_DELETE) values (2,5,1,0,0,1);
Insert into NMDB.TB_MEM_LEVEL_N_BOARD (MEM_LEVEL_CD,BOARD_CD,BOARD_READ,BOARD_WRITE,BOARD_MODIFY,BOARD_DELETE) values (3,1,1,0,0,0);
Insert into NMDB.TB_MEM_LEVEL_N_BOARD (MEM_LEVEL_CD,BOARD_CD,BOARD_READ,BOARD_WRITE,BOARD_MODIFY,BOARD_DELETE) values (3,2,1,0,0,0);
Insert into NMDB.TB_MEM_LEVEL_N_BOARD (MEM_LEVEL_CD,BOARD_CD,BOARD_READ,BOARD_WRITE,BOARD_MODIFY,BOARD_DELETE) values (3,3,1,0,0,0);
Insert into NMDB.TB_MEM_LEVEL_N_BOARD (MEM_LEVEL_CD,BOARD_CD,BOARD_READ,BOARD_WRITE,BOARD_MODIFY,BOARD_DELETE) values (3,4,0,0,0,0);
Insert into NMDB.TB_MEM_LEVEL_N_BOARD (MEM_LEVEL_CD,BOARD_CD,BOARD_READ,BOARD_WRITE,BOARD_MODIFY,BOARD_DELETE) values (3,5,1,0,0,0);
REM INSERTING into NMDB.TB_NOTICE
SET DEFINE OFF;
Insert into NMDB.TB_NOTICE (NOTICE_NO,NTC_TITLE,NTC_WRITE_DAY,NTC_HITS,NTC_CONTENT,NTC_DEL_CHECK,NTC_ATTACHED_FILE1,NTC_ATTACHED_FILE2,BOARD_ID,MEM_ID) values (1,'�ڿ��� ����Ʈ ������ �������ּ���',to_date('16/02/17','RR/MM/DD'),79,'<img src=http://i.imgur.com/jhU5RJN.jpg width=299><br>�ڿ��� ����Ʈ�� �׷��� �����߽��ϴ�.<br>���� �¶������� ģȯ�� �ڿ��� �񴩸� ������ �����Ͻ� �� �ֽ��ϴ�.<br><br>������ �������ּ��� ¦¦¦!<br>',0,null,null,1,'admin01');
Insert into NMDB.TB_NOTICE (NOTICE_NO,NTC_TITLE,NTC_WRITE_DAY,NTC_HITS,NTC_CONTENT,NTC_DEL_CHECK,NTC_ATTACHED_FILE1,NTC_ATTACHED_FILE2,BOARD_ID,MEM_ID) values (2,'�������� �޹��ȳ�',to_date('16/02/17','RR/MM/DD'),126,'<img src=http://i.imgur.com/VIRttJX.jpg width=690><br>',0,null,null,1,'admin02');
Insert into NMDB.TB_NOTICE (NOTICE_NO,NTC_TITLE,NTC_WRITE_DAY,NTC_HITS,NTC_CONTENT,NTC_DEL_CHECK,NTC_ATTACHED_FILE1,NTC_ATTACHED_FILE2,BOARD_ID,MEM_ID) values (3,' �������� �޹��ȳ�',to_date('16/04/17','RR/MM/DD'),2,'<img src=http://i.imgur.com/VIRttJX.jpg width=690><br>',1,null,null,1,'admin01');
Insert into NMDB.TB_NOTICE (NOTICE_NO,NTC_TITLE,NTC_WRITE_DAY,NTC_HITS,NTC_CONTENT,NTC_DEL_CHECK,NTC_ATTACHED_FILE1,NTC_ATTACHED_FILE2,BOARD_ID,MEM_ID) values (4,'�ڿ��� ���� ����� �ʾ��� ���� �˼��մϴ�.',to_date('16/03/03','RR/MM/DD'),78,'�ȳ��ϼ��� �ڿ����Դϴ�.<br>�ΰŷ�Ʈ���� �ֹ� ���ַ����Ͽ� �ΰŷ�Ʈ�ֹ��� �� �Ϲ��ֹ����Ե���<br>��� �� ��۰����� ��Ȱ���� ����<br>���Բ� ������ ���ĵ帮�� �� �� ���� �˼��ϴٴ� ������ �帮��ͽ��ϴ�.<br><br>�켱, ���������� �ù蹰���� �����ϴٺ��� �ù����(cj�������)���� ������ �����Ǿ�<br>�����ȣ �Է��� �ʾ��� �߼��� �������� ��Ҹ� �ص帮�ų�<br>��ǰ�� �߸� �߼۵� ��찡 ���� ���̶� �����̵˴ϴ�.<br><br>�̿����� 2/29~3/4���� ����۵� �ǵ��� ���������� �ް�<br>��߼��� �ص帮�����մϴ�.<br><br>�ڿ����� �ϰ� �ֹ����̴ּµ� ����� �ʾ��� �ѹ�,<br>������ �߸� �߼۵Ǿ� �ι�,<br>��۰��� ���� �������� ����,<br>������ �Ǹ��ϼ��� ���Ե鲲 ���� �˼��ϴٴ� ������ �帳�ϴ�.<br><br>�����ִ� ��ȭ���Ƿ��� ���� ������ ��Ȱ���� ���Ұ����� ����˴ϴ�.<br>īī���� �÷���ģ�� @�ڿ����� ����Ͽ� ����۰ǵ鿡 ���� ���Ǹ� �ֽø�<br>Ȯ�� �� �ִ��� ���� ���ϳ� ��ǰ�� ��߼��ص帮���� �ϰڽ��ϴ�.<br>(@�ڿ��� �˻� �� �����������Ŵٸ� @�ڿ����� �˻��Ͻø� 16��° @�ڿ����� ã���� �� �����ʴϴ�.)<br><br>�̹� �ΰŷ�Ʈ���¸� ���� �ڿ��� �������� ��� ���ü����<br>�������� �����س����� �ֻ���� ���ݸ� ���� �Ʒ����� �������ֽø�<br>���� ���� ��ǰ�� ���񽺷� �����ϴ� �ڿ����� �ǵ��� ����ϰڽ��ϴ�.<br>�����մϴ�.<br>',0,null,null,1,'admin01');
Insert into NMDB.TB_NOTICE (NOTICE_NO,NTC_TITLE,NTC_WRITE_DAY,NTC_HITS,NTC_CONTENT,NTC_DEL_CHECK,NTC_ATTACHED_FILE1,NTC_ATTACHED_FILE2,BOARD_ID,MEM_ID) values (5,'Ʈ���� ��ῡ ���� ��Ȳ�� �԰�!!',to_date('16/03/14','RR/MM/DD'),11,'Ʈ���� ���� �񴩰� �־����� ���ڴٴ� ���� ȸ������ ���ǿ� ����<div>Ʈ���� ��ῡ ���� ��Ȳ�񴩸� �԰��߽��ϴ�!</div><div><br></div><div>ȸ���Ե��� ���� �̿� �� �ı� ��Ź�帳�ϴ� ^^!</div><div>���õ� �ڿ����� �Բ� �ǵ��ϰ� ������ �Ϸ� �Ǽ���~</div>',0,null,null,1,'admin01');
Insert into NMDB.TB_NOTICE (NOTICE_NO,NTC_TITLE,NTC_WRITE_DAY,NTC_HITS,NTC_CONTENT,NTC_DEL_CHECK,NTC_ATTACHED_FILE1,NTC_ATTACHED_FILE2,BOARD_ID,MEM_ID) values (7,'��� �� �԰� �ȳ�',to_date('16/03/17','RR/MM/DD'),6,'������ ����� ���� ��� �񴩰� �԰�Ǿ����ϴ�.<div>��ȿ��� �񴩿ʹ� �ٸ� ��ǰ�̴� ���� �� �������ֽñ� �ٶ��ϴ�.</div><div>�����ϴ�^^</div>',0,null,null,1,'admin01');
Insert into NMDB.TB_NOTICE (NOTICE_NO,NTC_TITLE,NTC_WRITE_DAY,NTC_HITS,NTC_CONTENT,NTC_DEL_CHECK,NTC_ATTACHED_FILE1,NTC_ATTACHED_FILE2,BOARD_ID,MEM_ID) values (6,'�ù�� �ȳ�',to_date('16/03/22','RR/MM/DD'),11,'�ڿ����� �ù�簡 ��ü�� �ù迡�� CJ ����������� �ٲ�� �Ǿ����ϴ�.<div>�����ϴ� ^^</div>',0,null,null,1,'admin01');
Insert into NMDB.TB_NOTICE (NOTICE_NO,NTC_TITLE,NTC_WRITE_DAY,NTC_HITS,NTC_CONTENT,NTC_DEL_CHECK,NTC_ATTACHED_FILE1,NTC_ATTACHED_FILE2,BOARD_ID,MEM_ID) values (8,'���ʺ� �԰� ���� �ȳ�',to_date('16/03/27','RR/MM/DD'),15,'25�� �԰� �����̾��� ���ʺ񴩰� 27�Ϸ� �԰����� �̷������ϴ�.<div>�԰� �������� ���� ������ ��� �˼��մϴ�.</div>',0,null,null,1,'admin01');
Insert into NMDB.TB_NOTICE (NOTICE_NO,NTC_TITLE,NTC_WRITE_DAY,NTC_HITS,NTC_CONTENT,NTC_DEL_CHECK,NTC_ATTACHED_FILE1,NTC_ATTACHED_FILE2,BOARD_ID,MEM_ID) values (9,'���ʺ� �԰� �ȳ�',to_date('16/04/02','RR/MM/DD'),5,'Ʈ���� �� ���帧�� ���� ���ʺ񴩰� �԰�Ǿ����ϴ�.<div>���� ���� ��Ź�帳�ϴ� ^^</div>',0,null,null,1,'admin01');
Insert into NMDB.TB_NOTICE (NOTICE_NO,NTC_TITLE,NTC_WRITE_DAY,NTC_HITS,NTC_CONTENT,NTC_DEL_CHECK,NTC_ATTACHED_FILE1,NTC_ATTACHED_FILE2,BOARD_ID,MEM_ID) values (10,'25�� �ֹ� �����ð� ���� �ȳ�',to_date('16/04/20','RR/MM/DD'),9,'4�� 25��(��) �Ϸ翡 �� �� �ֹ� ���� �ð��� ���� 10�÷� ����˴ϴ�.<div>�̿뿡 ������ ��� �˼��մϴ�.</div>',0,null,null,1,'admin01');
Insert into NMDB.TB_NOTICE (NOTICE_NO,NTC_TITLE,NTC_WRITE_DAY,NTC_HITS,NTC_CONTENT,NTC_DEL_CHECK,NTC_ATTACHED_FILE1,NTC_ATTACHED_FILE2,BOARD_ID,MEM_ID) values (11,'���� �ý��� ���� �ȳ�',to_date('16/04/21','RR/MM/DD'),11,'27~29�� �� �ϳ�, (��)��ȯ ī����� �ý��� �������� ���� ������ �Ұ����մϴ�.<div>�̿뿡 ������ ��� ���� �˼��մϴ�.</div>',0,null,null,1,'admin01');
Insert into NMDB.TB_NOTICE (NOTICE_NO,NTC_TITLE,NTC_WRITE_DAY,NTC_HITS,NTC_CONTENT,NTC_DEL_CHECK,NTC_ATTACHED_FILE1,NTC_ATTACHED_FILE2,BOARD_ID,MEM_ID) values (12,'ī���� �� �԰� ����',to_date('16/04/22','RR/MM/DD'),23,'ī���� �񴩰� ������ 22�Ͽ� �԰�˴ϴ�.<div>���� ���� ��Ź�帳�ϴ�. ^^</div>',0,null,null,1,'admin01');
REM INSERTING into NMDB.TB_NOTICE_RE
SET DEFINE OFF;
Insert into NMDB.TB_NOTICE_RE (NOTICE_RE_NO,NTC_RE_CONTENT,NTC_RE_WRITE_DAY,NTC_RE_DEL_CHECK,NOTICE_NO,MEM_ID) values (1,'���� ����������',to_date('16/04/17','RR/MM/DD'),0,1,'soomin');
Insert into NMDB.TB_NOTICE_RE (NOTICE_RE_NO,NTC_RE_CONTENT,NTC_RE_WRITE_DAY,NTC_RE_DEL_CHECK,NOTICE_NO,MEM_ID) values (2,'�����ڴ�.. �̰� �ߺ��ε�',to_date('16/04/17','RR/MM/DD'),0,3,'sora');
Insert into NMDB.TB_NOTICE_RE (NOTICE_RE_NO,NTC_RE_CONTENT,NTC_RE_WRITE_DAY,NTC_RE_DEL_CHECK,NOTICE_NO,MEM_ID) values (3,'�� ������ �ȵǿ� ����������',to_date('16/04/17','RR/MM/DD'),0,4,'soomin');
Insert into NMDB.TB_NOTICE_RE (NOTICE_RE_NO,NTC_RE_CONTENT,NTC_RE_WRITE_DAY,NTC_RE_DEL_CHECK,NOTICE_NO,MEM_ID) values (4,'�Ф� �� �ȿ��� �׵��� ���� ����?',to_date('16/04/17','RR/MM/DD'),0,4,'soojin');
Insert into NMDB.TB_NOTICE_RE (NOTICE_RE_NO,NTC_RE_CONTENT,NTC_RE_WRITE_DAY,NTC_RE_DEL_CHECK,NOTICE_NO,MEM_ID) values (5,'�� �̰� �Ƚ��׾�� �ƽ�',to_date('16/04/17','RR/MM/DD'),1,4,'minhee');
Insert into NMDB.TB_NOTICE_RE (NOTICE_RE_NO,NTC_RE_CONTENT,NTC_RE_WRITE_DAY,NTC_RE_DEL_CHECK,NOTICE_NO,MEM_ID) values (6,'������ ��� ����� �˼��մϴ�, �� ���� ��ǰ���� �����ϴ� �ڿ��� �ǵ��� �ϰڽ��ϴ�.',to_date('16/04/17','RR/MM/DD'),0,4,'admin02');
Insert into NMDB.TB_NOTICE_RE (NOTICE_RE_NO,NTC_RE_CONTENT,NTC_RE_WRITE_DAY,NTC_RE_DEL_CHECK,NOTICE_NO,MEM_ID) values (7,'��ī����G����',to_date('16/04/18','RR/MM/DD'),0,1,'sora1234');
Insert into NMDB.TB_NOTICE_RE (NOTICE_RE_NO,NTC_RE_CONTENT,NTC_RE_WRITE_DAY,NTC_RE_DEL_CHECK,NOTICE_NO,MEM_ID) values (8,'��ī��ī~~',to_date('16/04/19','RR/MM/DD'),0,1,'maru0903');
Insert into NMDB.TB_NOTICE_RE (NOTICE_RE_NO,NTC_RE_CONTENT,NTC_RE_WRITE_DAY,NTC_RE_DEL_CHECK,NOTICE_NO,MEM_ID) values (9,'��Ȳ�� Ư���ϳ׿�!!',to_date('16/04/22','RR/MM/DD'),0,5,'sora');
Insert into NMDB.TB_NOTICE_RE (NOTICE_RE_NO,NTC_RE_CONTENT,NTC_RE_WRITE_DAY,NTC_RE_DEL_CHECK,NOTICE_NO,MEM_ID) values (10,'��ü�� �ù谡 �� ���Ҵµ� �ƽ��׿�ФФ�',to_date('16/04/22','RR/MM/DD'),0,6,'sora');
Insert into NMDB.TB_NOTICE_RE (NOTICE_RE_NO,NTC_RE_CONTENT,NTC_RE_WRITE_DAY,NTC_RE_DEL_CHECK,NOTICE_NO,MEM_ID) values (11,'�� Ʈ���� ���� �񴩶�� ���! �� ��Կ�!!',to_date('16/04/22','RR/MM/DD'),0,9,'sora');
Insert into NMDB.TB_NOTICE_RE (NOTICE_RE_NO,NTC_RE_CONTENT,NTC_RE_WRITE_DAY,NTC_RE_DEL_CHECK,NOTICE_NO,MEM_ID) values (12,'��� ���ְڴ�',to_date('16/04/22','RR/MM/DD'),0,12,'soojin');
REM INSERTING into NMDB.TB_ORDER
SET DEFINE OFF;
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10000,to_date('15/10/17','RR/MM/DD'),3900,'1234123412341234','1901','�̼���','010-2222-2222','111-221','��⵵ �Ȼ�� �Ȼ걸 �Ȼ�3�� �Ȼ����Ʈ 403�� 101ȣ','����� �����ٶ�',1234567890,10,1,'soojin');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10001,to_date('15/10/17','RR/MM/DD'),9000,'1234123412341234','1901','�ּҶ�','010-1111-1111','111-222','����� ������ ����2�� ���Ǿ���Ʈ 101�� 202ȣ','�����ù��Կ� �־��ּ���',1234567880,10,2,'sora');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10002,to_date('15/11/17','RR/MM/DD'),8600,'1234123412341234','1901','�̼���','010-2222-2222','111-223','��⵵ �Ȼ�� �Ȼ걸 �Ȼ�3�� �Ȼ����Ʈ 403�� 101ȣ','����� �����ٶ�',12345676,13,4,'soojin');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10003,to_date('15/11/27','RR/MM/DD'),5500,'1234123412341234','1901','������','010-0000-0000','111-224','����� ������ ����3�� ��������Ʈ 102�� 202ȣ','���� �����ּ��� ����������',1234567,17,4,'soomin');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10004,to_date('15/12/17','RR/MM/DD'),5500,'1234123412341234','1901','������','010-0000-0000','111-225','����� ������ ����3�� ��������Ʈ 102�� 202ȣ','���� �����ּ��� ����������',1234567,17,4,'soomin');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10005,to_date('15/12/25','RR/MM/DD'),10500,'1234123412341234','1901','�ּҶ�','010-1111-1111','111-226','����� ������ ����2�� ���Ǿ���Ʈ 101�� 202ȣ','�����ù��Կ� �־��ּ���',1234567,11,4,'sora');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10006,to_date('15/12/26','RR/MM/DD'),3500,'1234123412341234','1901','�ֹ���','010-3333-3333','111-227','��⵵ �����ֽ� ���ֵ� �����־���Ʈ 303�� 202ȣ','�̴Ϲ̴� �ù�Լ�',1234567,16,4,'minhee');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10007,to_date('15/12/26','RR/MM/DD'),4300,'1234123412341234','1901','�ּҶ�','010-1111-1111','111-228','����� ������ ����2�� ���Ǿ���Ʈ 101�� 202ȣ','�����ù��Կ� �־��ּ���',1234567,11,4,'sora');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10008,to_date('15/12/26','RR/MM/DD'),15100,'4322244534787799','2007','�ּҶ�','010-1111-1111','111-111','����� ������ ����2�� ���Ǿ���Ʈ 101�� 202ȣ','���� �� ������ �ð��ּ���',12345678,13,4,'sora');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10009,to_date('16/01/04','RR/MM/DD'),33700,'2789445532768892','1805','������','010-0000-0000','000-000','����� ������ ����3�� ��������Ʈ 102�� 202ȣ','��� ���� �����ּ���~',1234567,12,null,'soomin');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10010,to_date('16/01/04','RR/MM/DD'),23100,'2345344445689973','2310','�̼���','010-2222-2222','222-222','��⵵ �Ȼ�� �Ȼ걸 �Ȼ�3�� �Ȼ����Ʈ 403�� 101ȣ','-',4321234,14,1,'soojin');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10011,to_date('16/01/04','RR/MM/DD'),25500,'9866404423883611','2804','�̼���','010-2222-2222','222-222','��⵵ �Ȼ�� �Ȼ걸 �Ȼ�3�� �Ȼ����Ʈ 403�� 701ȣ','���� �� ���ǿ� �ð��ּ���~',4321233,10,1,'soojin');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10012,to_date('16/01/04','RR/MM/DD'),45900,'4555666523769413','1906','���ϳ�','010-3434-7764','41008','�뱸 ���� �������� 35-15 �����κ� 302ȣ','-',1234567,11,null,'hanagang');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10013,to_date('16/01/21','RR/MM/DD'),25100,'7833236544661779','1707','����','010-3344-8944','04402','���� ��걸 ������ 48 ��������Ʈ 104�� 1205ȣ','���� �� ���ǿ� �ð��ּ���',1234567,11,1,'blacksmith');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10014,to_date('16/01/21','RR/MM/DD'),33300,'2789436645772144','1803','�ֹ���','010-333-3333','333-333','��⵵ �����ֽ� ���ֵ� �����־���Ʈ 303�� 202ȣ','-',1234564,14,1,'minhee');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10015,to_date('16/01/24','RR/MM/DD'),20300,'4118455521657422','1804','Ȳ����','010-4322-0903','48000','�λ� �ؿ�뱸 �ݼ۷� 830 ���� ����Ʈ 102�� 1802ȣ','���� �� �����ù��Կ� �־��ּ���',12345670,15,null,'maru0903');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10017,to_date('16/02/21','RR/MM/DD'),44000,'2425334356885654','2405','���ϳ�','010-3434-7764','41008','�뱸 ���� �������� 35-15 �����κ� 302ȣ','-',1234567,11,null,'hanagang');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10024,to_date('16/02/22','RR/MM/DD'),11700,'1234234534564567','2004','�ּҶ�','010-1111-1111','111-111','����� ������ ����2�� ���Ǿ���Ʈ 101�� 202ȣ','-',1234567,13,1,'sora');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10034,to_date('16/02/22','RR/MM/DD'),59500,'4567655545635789','2405','�����','010-2367-3467','63308','����Ư����ġ�� ���ֽ� ÷�ܷ� 58 1��','-',1234567,14,null,'applepie');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10038,to_date('16/02/22','RR/MM/DD'),28400,'5564645767835495','2404','���ϳ�','010-3434-7764','41008','�뱸 ���� �������� 35-15 �����κ� 302ȣ','-',1234567,13,null,'hanagang');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10047,to_date('16/04/22','RR/MM/DD'),24900,'1234123443211234','2603','�ڼҶ�','010-3454-4567','05048','���� ������ �������� 18 2��','���� �� �Ʒ����� �ð��ּ���',1234567,14,1,'hook1028');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10016,to_date('16/02/22','RR/MM/DD'),33000,'6544334554363567','2107','�����','010-2367-3467','63308','����Ư����ġ�� ���ֽ� ÷�ܷ� 58 1��','�����ϰ� ���ּ���',2345678,11,1,'applepie');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10018,to_date('16/02/22','RR/MM/DD'),16300,'3444346557554566','1906','�����','010-2554-3655','08327','���� ���α� ������� 87 ����������Ʈ 101�� 302ȣ','���� �� ���ǿ� �ð��ּ���',12345678,12,3,'pasley');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10019,to_date('16/03/02','RR/MM/DD'),34200,'2467456544658865','2205','����','010-3466-8892','57724','���� ����� ���ߵ�� 64-24 2��','-',3456789,12,1,'gorani');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10020,to_date('16/03/02','RR/MM/DD'),44500,'422704563577486','1810','�ּҶ�','010-1111-1111','111-111','����� ������ ����2�� ���Ǿ���Ʈ 101�� 202ȣ','-',1234567,16,null,'sora');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10021,to_date('16/03/12','RR/MM/DD'),24500,'3344337765775654','2007','�̼���','010-2222-2222','222-222','��⵵ �Ȼ�� �Ȼ걸 �Ȼ�3�� �Ȼ����Ʈ 403�� 101ȣ','-',2345678,11,1,'soojin');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10022,to_date('16/03/12','RR/MM/DD'),25500,'1234123443322554','2006','�ּҶ�','010-1111-1111','111-111','����� ������ ����2�� ���Ǿ���Ʈ 101�� 202ȣ','-',1234567,10,null,'sora');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10023,to_date('16/03/12','RR/MM/DD'),7500,'1234433212345433','1804','�ּҶ�','010-1111-1111','111-111','����� ������ ����2�� ���Ǿ���Ʈ 101�� 202ȣ','-',1234567,10,null,'sora');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10025,to_date('16/03/22','RR/MM/DD'),25400,'1234123443323456','3902','������','010-3456-6655','05247','���� ������ ��õ��� 148 �Ѱ������� 402ȣ','-',12345670,15,null,'sohee0628');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10026,to_date('16/03/22','RR/MM/DD'),15900,'4566456665444564','2103','�����','010-2554-3655','08327','���� ���α� ������� 87 ����������Ʈ 101�� 302ȣ','���� �� ���ǿ� �ð��ּ���',1234567,12,null,'pasley');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10029,to_date('16/03/22','RR/MM/DD'),40500,'1543545576443456','2204','������','010-0000-0000','000-000','����� ������ ����3�� ��������Ʈ 102�� 202ȣ','-',1234567,13,null,'soomin');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10030,to_date('16/03/22','RR/MM/DD'),23100,'4676464745475575','2304','�̼���','010-2222-2222','222-222','��⵵ �Ȼ�� �Ȼ걸 �Ȼ�3�� �Ȼ����Ʈ 403�� 101ȣ','-',1234567,10,null,'soojin');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10031,to_date('16/03/22','RR/MM/DD'),30100,'9785797989788788','2202','�ֹ���','010-333-3333','33333','��⵵ �����ֽ� ���ֵ� �����־���Ʈ 303�� 202ȣ','����� ���ǿ� �ð��ּ���',1234567,14,null,'minhee');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10032,to_date('16/03/22','RR/MM/DD'),19600,'2446455623465776','2606','����','010-3344-8944','04402','���� ��걸 ������ 48 ��������Ʈ 104�� 1205ȣ','-',1234567,11,null,'blacksmith');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10033,to_date('16/04/02','RR/MM/DD'),40100,'6674453367448432','2402','����','010-3466-8892','57724','���� ����� ���ߵ�� 64-24 2��','-',12345670,12,null,'gorani');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10035,to_date('16/04/02','RR/MM/DD'),37200,'4354756735367567','2703','�ڼҶ�','010-3144-2344','04948','���� ������ ���ǵ� 3-19 301ȣ','��� �� ���� ��Ź�����',12345670,15,null,'sora4567');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10036,to_date('16/04/02','RR/MM/DD'),57000,'798035776554550','1810','���Ҷ�','010-2345-6789','04948','���� ������ ���ǵ� 3-16 201ȣ','-',1234567,15,null,'sora1234');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10037,to_date('16/04/17','RR/MM/DD'),43700,'5009768966553567','2308','Ȳ����','010-4322-0903','48000','�λ� �ؿ�뱸 �ݼ۷� 830 ���� ����Ʈ 102�� 1802ȣ','-',1234567,16,null,'maru0903');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10039,to_date('16/04/22','RR/MM/DD'),20600,'3655456345342344','2708','������','010-3456-6655','05247','���� ������ ��õ��� 148 �Ѱ������� 402ȣ','-',1234567,16,null,'sohee0628');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10040,to_date('16/04/22','RR/MM/DD'),36300,'5554455464786035','1611','�����','010-2554-3655','08327','���� ���α� ������� 87 ����������Ʈ 101�� 302ȣ','-',12345670,13,null,'pasley');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10041,to_date('16/04/22','RR/MM/DD'),53200,'4576565456543455','2407','���Ƹ�','010-3878-7788','05007','���� ������ ������� 346 ����� 101ȣ','-',1234567,12,null,'arooroo');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10042,to_date('16/04/22','RR/MM/DD'),47200,'6788667544332567','2408','�����','010-3134-5644','05003','���� ������ ������� 347 ����','-',1234567,15,null,'mozamoza');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10043,to_date('16/04/22','RR/MM/DD'),87000,'3455653434533455','1909','������','010-9877-6533','25627','���� ������ ������ �����ʱ��� 10-3 ���ڳӺ��� 301ȣ','-',1234567,14,null,'kia_baseball');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10044,to_date('16/04/22','RR/MM/DD'),23700,'353456776655566','2705','�̼���','010-2222-2222','222-222','��⵵ �Ȼ�� �Ȼ걸 �Ȼ�3�� �Ȼ����Ʈ 403�� 101ȣ','-',987654,17,1,'soojin');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10045,to_date('16/04/22','RR/MM/DD'),24500,'4566544577665564','2608','����','010-3466-8892','57724','���� ����� ���ߵ�� 64-24 2��','-',0,17,null,'gorani');
Insert into NMDB.TB_ORDER (ORDER_NO,ORDER_DATE,CHARGE,CREDIT_NUM,CREDIT_EXP,RCV_NAME,RCV_PHONE,RCV_ADDR_POST,RCV_ADDR_DETAIL,DELIVERY_MSG,TRACKING_NUM,CREDIT_CD,DELIVERY_COM_CD,MEM_ID) values (10046,to_date('16/04/22','RR/MM/DD'),26000,'4534534656444534','2604','����','010-3344-8944','04402','���� ��걸 ������ 48 ��������Ʈ 104�� 1205ȣ','-',0,12,null,'blacksmith');
REM INSERTING into NMDB.TB_PROCESS
SET DEFINE OFF;
Insert into NMDB.TB_PROCESS (PROCESS_CD,PROCESS_NM) values (11,'����غ���');
Insert into NMDB.TB_PROCESS (PROCESS_CD,PROCESS_NM) values (12,'��۴��');
Insert into NMDB.TB_PROCESS (PROCESS_CD,PROCESS_NM) values (13,'�����');
Insert into NMDB.TB_PROCESS (PROCESS_CD,PROCESS_NM) values (14,'��ۿϷ�');
Insert into NMDB.TB_PROCESS (PROCESS_CD,PROCESS_NM) values (21,'����Ȯ��');
Insert into NMDB.TB_PROCESS (PROCESS_CD,PROCESS_NM) values (31,'ȯ�ҿ�û');
Insert into NMDB.TB_PROCESS (PROCESS_CD,PROCESS_NM) values (32,'ȯ�ҿϷ�');
REM INSERTING into NMDB.TB_PRODUCT
SET DEFINE OFF;
Insert into NMDB.TB_PRODUCT (PRODUCT_NO,PRODUCT_NAME,SELLING_PRICE,COST_PRICE,STOCK,DISPLAY_STATE,SALE_STATE,REPRESENT_IMG,DETAIL_IMG,SUMMARY_EX,DETAIL_EX,DELETED_STATE,WEIGHT,CATEGORY_CD) values (10000,'�Ƹ��� ��',3500,3000,74,1,1,'soap1.jpg','soap1_desc.jpg','���� ������ ������ ����',null,0,100,1);
Insert into NMDB.TB_PRODUCT (PRODUCT_NO,PRODUCT_NAME,SELLING_PRICE,COST_PRICE,STOCK,DISPLAY_STATE,SALE_STATE,REPRESENT_IMG,DETAIL_IMG,SUMMARY_EX,DETAIL_EX,DELETED_STATE,WEIGHT,CATEGORY_CD) values (10001,'�ӳ��� ��',5500,4000,45,0,1,'soap2.jpg','soap2_desc.jpg','�ǰ��ϰ� �����ִ� ����� ����',null,0,90,2);
Insert into NMDB.TB_PRODUCT (PRODUCT_NO,PRODUCT_NAME,SELLING_PRICE,COST_PRICE,STOCK,DISPLAY_STATE,SALE_STATE,REPRESENT_IMG,DETAIL_IMG,SUMMARY_EX,DETAIL_EX,DELETED_STATE,WEIGHT,CATEGORY_CD) values (10002,'���� ��',4300,3500,93,1,1,'soap12.jpg','soap12_desc.jpg','���� �Ǻ����� ����',null,0,90,3);
Insert into NMDB.TB_PRODUCT (PRODUCT_NO,PRODUCT_NAME,SELLING_PRICE,COST_PRICE,STOCK,DISPLAY_STATE,SALE_STATE,REPRESENT_IMG,DETAIL_IMG,SUMMARY_EX,DETAIL_EX,DELETED_STATE,WEIGHT,CATEGORY_CD) values (10003,'�� ��',4300,3500,82,1,1,'soap11.jpg','soap11_desc.jpg','ǳ���� �������� ��Ÿ����',null,0,90,4);
Insert into NMDB.TB_PRODUCT (PRODUCT_NO,PRODUCT_NAME,SELLING_PRICE,COST_PRICE,STOCK,DISPLAY_STATE,SALE_STATE,REPRESENT_IMG,DETAIL_IMG,SUMMARY_EX,DETAIL_EX,DELETED_STATE,WEIGHT,CATEGORY_CD) values (10004,'��ȿ��� ��',4500,3500,64,1,1,'soap10.jpg','soap10_desc.jpg','���� �Ǻθ� ����','<br>',0,90,3);
Insert into NMDB.TB_PRODUCT (PRODUCT_NO,PRODUCT_NAME,SELLING_PRICE,COST_PRICE,STOCK,DISPLAY_STATE,SALE_STATE,REPRESENT_IMG,DETAIL_IMG,SUMMARY_EX,DETAIL_EX,DELETED_STATE,WEIGHT,CATEGORY_CD) values (10005,'����� ��',4500,3500,75,1,1,'soap9.jpg','soap9_desc.jpg','���� �� �Ǻ� ź���� ����',null,0,90,2);
Insert into NMDB.TB_PRODUCT (PRODUCT_NO,PRODUCT_NAME,SELLING_PRICE,COST_PRICE,STOCK,DISPLAY_STATE,SALE_STATE,REPRESENT_IMG,DETAIL_IMG,SUMMARY_EX,DETAIL_EX,DELETED_STATE,WEIGHT,CATEGORY_CD) values (10006,'���� ��',3900,3000,77,1,1,'soap8.jpg','soap8_desc.jpg','�ΰ��� ��ῡ ����',null,0,90,3);
Insert into NMDB.TB_PRODUCT (PRODUCT_NO,PRODUCT_NAME,SELLING_PRICE,COST_PRICE,STOCK,DISPLAY_STATE,SALE_STATE,REPRESENT_IMG,DETAIL_IMG,SUMMARY_EX,DETAIL_EX,DELETED_STATE,WEIGHT,CATEGORY_CD) values (10007,'��鳪�� ��',4300,3500,71,1,1,'soap7.jpg','soap7_desc.jpg','����ġ�尡 �����Ǿ� �ִ�',null,0,90,4);
Insert into NMDB.TB_PRODUCT (PRODUCT_NO,PRODUCT_NAME,SELLING_PRICE,COST_PRICE,STOCK,DISPLAY_STATE,SALE_STATE,REPRESENT_IMG,DETAIL_IMG,SUMMARY_EX,DETAIL_EX,DELETED_STATE,WEIGHT,CATEGORY_CD) values (10008,'���� ��',4600,3500,221,1,1,'soap4.jpg','soap4_desc.jpg','��Ƽ, Ʈ���� �Ǻο� ����Ǵ�~','<br>',0,100,3);
Insert into NMDB.TB_PRODUCT (PRODUCT_NO,PRODUCT_NAME,SELLING_PRICE,COST_PRICE,STOCK,DISPLAY_STATE,SALE_STATE,REPRESENT_IMG,DETAIL_IMG,SUMMARY_EX,DETAIL_EX,DELETED_STATE,WEIGHT,CATEGORY_CD) values (10014,'ī���� ��',4500,3500,100,1,1,'1.jpg','6.jpg','�׽�Ʈ ��ǰ�Դϴ�','<br>',1,90,4);
Insert into NMDB.TB_PRODUCT (PRODUCT_NO,PRODUCT_NAME,SELLING_PRICE,COST_PRICE,STOCK,DISPLAY_STATE,SALE_STATE,REPRESENT_IMG,DETAIL_IMG,SUMMARY_EX,DETAIL_EX,DELETED_STATE,WEIGHT,CATEGORY_CD) values (10011,'�׽�Ʈ',1234,123,1,1,1,'1.jpg','2.jpg','�׽�Ʈ','������������',1,2,1);
Insert into NMDB.TB_PRODUCT (PRODUCT_NO,PRODUCT_NAME,SELLING_PRICE,COST_PRICE,STOCK,DISPLAY_STATE,SALE_STATE,REPRESENT_IMG,DETAIL_IMG,SUMMARY_EX,DETAIL_EX,DELETED_STATE,WEIGHT,CATEGORY_CD) values (10013,'��ʺ�',4000,3000,113,1,1,'soap3.jpg','soap3_desc.jpg','����� û��� ������ ����','<br>',0,90,4);
Insert into NMDB.TB_PRODUCT (PRODUCT_NO,PRODUCT_NAME,SELLING_PRICE,COST_PRICE,STOCK,DISPLAY_STATE,SALE_STATE,REPRESENT_IMG,DETAIL_IMG,SUMMARY_EX,DETAIL_EX,DELETED_STATE,WEIGHT,CATEGORY_CD) values (10009,'dd',1,2,3,1,1,'15.jpg','14.jpg','dgd','<br>dgdg',1,4,1);
Insert into NMDB.TB_PRODUCT (PRODUCT_NO,PRODUCT_NAME,SELLING_PRICE,COST_PRICE,STOCK,DISPLAY_STATE,SALE_STATE,REPRESENT_IMG,DETAIL_IMG,SUMMARY_EX,DETAIL_EX,DELETED_STATE,WEIGHT,CATEGORY_CD) values (10010,'sfsf',1,2,3,1,1,'1.jpg','2.jpg','sf','<br>sf',1,4,1);
Insert into NMDB.TB_PRODUCT (PRODUCT_NO,PRODUCT_NAME,SELLING_PRICE,COST_PRICE,STOCK,DISPLAY_STATE,SALE_STATE,REPRESENT_IMG,DETAIL_IMG,SUMMARY_EX,DETAIL_EX,DELETED_STATE,WEIGHT,CATEGORY_CD) values (10012,'��Ȳ ��',4100,3000,68,1,1,'soap5.jpg','soap5_desc.jpg','Ʈ���� ��ῡ ��õ!','<br>',0,87,3);
REM INSERTING into NMDB.TB_PRODUCT_N_ORDER
SET DEFINE OFF;
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10006,10000,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10004,10001,2,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10003,10002,2,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10001,10003,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10001,10004,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10000,10005,3,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10000,10006,1,32);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10002,10007,1,32);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10000,10008,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10003,10008,2,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10000,10009,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10001,10009,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10002,10009,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10003,10009,3,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10004,10009,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10000,10010,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10002,10010,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10004,10010,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10006,10010,2,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10004,10011,5,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10001,10012,3,32);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10003,10012,3,32);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10004,10012,3,32);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10000,10013,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10001,10013,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10002,10013,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10003,10013,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10005,10013,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10001,10014,3,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10008,10014,3,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10005,10015,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10008,10015,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10012,10015,2,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10012,10017,10,32);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10008,10024,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10012,10024,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10004,10034,5,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10008,10034,3,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10012,10034,2,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10013,10034,3,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10000,10038,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10005,10038,2,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10007,10038,3,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10002,10047,3,32);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10004,10047,2,32);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10000,10016,3,32);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10006,10016,5,32);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10003,10018,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10005,10018,2,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10004,10019,5,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10008,10019,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10012,10019,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10000,10020,2,32);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10003,10020,3,32);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10004,10020,1,32);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10005,10020,1,32);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10006,10020,1,32);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10008,10020,1,32);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10012,10020,1,32);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10003,10021,5,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10004,10022,5,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10005,10023,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10000,10025,4,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10004,10025,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10006,10025,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10003,10026,2,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10007,10026,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10000,10029,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10002,10029,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10003,10029,3,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10004,10029,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10007,10029,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10013,10029,2,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10000,10030,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10002,10030,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10004,10030,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10006,10030,2,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10005,10031,2,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10007,10031,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10008,10031,3,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10000,10032,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10002,10032,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10003,10032,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10005,10032,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10004,10033,2,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10006,10033,5,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10007,10033,2,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10000,10035,6,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10004,10035,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10008,10035,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10012,10035,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10008,10036,5,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10012,10036,5,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10002,10037,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10006,10037,5,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10007,10037,3,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10013,10037,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10005,10039,2,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10007,10039,2,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10000,10040,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10002,10040,3,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10007,10040,3,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10013,10040,1,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10004,10041,3,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10006,10041,5,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10007,10041,4,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10005,10042,6,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10007,10042,4,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10000,10043,5,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10004,10043,5,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10005,10043,5,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10007,10043,5,21);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10005,10044,2,12);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10006,10044,3,12);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10002,10045,4,32);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10007,10045,1,32);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10008,10046,5,11);
Insert into NMDB.TB_PRODUCT_N_ORDER (PRODUCT_NO,ORDER_NO,BUY_NUM,PROCESS_CD) values (10000,10036,3,21);
REM INSERTING into NMDB.TB_QNA
SET DEFINE OFF;
Insert into NMDB.TB_QNA (QNA_NO,QNA_TITLE,QNA_WRITE_DAY,QNA_HITS,QNA_CONTENT,QNA_DEL_CHECK,QNA_PW,QNA_POS,QNA_REF,BOARD_ID,MEM_ID) values (1,'�̰��� ������ �ø��� �Խ����Դϴ�',to_date('16/04/17','RR/MM/DD'),39,'�ñ��� ������ ������ �������� �� �Խ��ǿ� ���� �����ּ���!<br>ģ���� �ڿ��� ���Ⱑ �������� �ñ����� �ذ��� �帳�ϴ�<br><br>QnA �Խ����� �ڿ��� ȸ���� �̿��Ͻ� �� �ֽ��ϴ�<br>�����մϴ�.<br>',0,null,0,1,4,'admin01');
Insert into NMDB.TB_QNA (QNA_NO,QNA_TITLE,QNA_WRITE_DAY,QNA_HITS,QNA_CONTENT,QNA_DEL_CHECK,QNA_PW,QNA_POS,QNA_REF,BOARD_ID,MEM_ID) values (2,'���� �ֹ��� �� �����Ϳ�?',to_date('16/04/17','RR/MM/DD'),7,'�� ��� �ֹ��ߴµ�<br>���� �޾ƺ� �� �ֳ���<br>�ָ��� �����־ ������ ���޾� ���°ǰ���<br>�� ����������<br>',0,null,0,2,4,'soomin');
Insert into NMDB.TB_QNA (QNA_NO,QNA_TITLE,QNA_WRITE_DAY,QNA_HITS,QNA_CONTENT,QNA_DEL_CHECK,QNA_PW,QNA_POS,QNA_REF,BOARD_ID,MEM_ID) values (3,'�亯�Դϴ�^^',to_date('16/04/17','RR/MM/DD'),4,'soomin ����, <br>���� �ֹ��Ͻ� ���� �ٷ� Ȯ�εǾ����ϴ�.<br><br>������ ���� �ʰ� �ٷ� ���ó�� �ص�Ƚ��ϴ�.<br>��ۻ��� �ٷ� Ȯ���Ͻø� ������ ���� ������ �� �˾� ���� �� �ֽ��ϴ�<br><br>���� �ڿ����� �̿��� �ּż� �����մϴ�^^<br>',0,null,1,2,4,'admin01');
Insert into NMDB.TB_QNA (QNA_NO,QNA_TITLE,QNA_WRITE_DAY,QNA_HITS,QNA_CONTENT,QNA_DEL_CHECK,QNA_PW,QNA_POS,QNA_REF,BOARD_ID,MEM_ID) values (4,'�� �� ���� �ڿ� �״���ΰ���?',to_date('16/04/17','RR/MM/DD'),11,'����� ���� ��ü�� ������ ���ΰ� Ȯ���ϳ���?<br>�����״� ���� �߿��� �����̿���<br><br>�Ǽ��� �񴩸� ���� ���� ���ݾƿ�<br>���� �׷��ٴ°� �ƴ϶�<br>��¶�� ������<br><br>���� �亯�ٶ��ϴ�.<br>',0,'1234',0,4,4,'sora');
Insert into NMDB.TB_QNA (QNA_NO,QNA_TITLE,QNA_WRITE_DAY,QNA_HITS,QNA_CONTENT,QNA_DEL_CHECK,QNA_PW,QNA_POS,QNA_REF,BOARD_ID,MEM_ID) values (5,'�亯�Դϴ�^^',to_date('16/04/17','RR/MM/DD'),8,'sora ����,<br><br>����� õ�� ����� ���θ� ����Ͽ� �ϰ� ����Ͻ� �� �ִ� ��ǰ�� �½��ϴ�.<br>������ ���� �񴩸� �����Ͻô� ���� ���� ������ �� ������ �ﰡ �ֽô°� ���� �� �����ϴ�.<br><br>���� �ڿ����� �̿��� �ּż� �����մϴ�^^<br>',0,'1234',1,4,4,'admin01');
Insert into NMDB.TB_QNA (QNA_NO,QNA_TITLE,QNA_WRITE_DAY,QNA_HITS,QNA_CONTENT,QNA_DEL_CHECK,QNA_PW,QNA_POS,QNA_REF,BOARD_ID,MEM_ID) values (6,'���� �����մϴ� �ڿ��� ����ؿ�',to_date('16/04/17','RR/MM/DD'),6,'���� �̻��� ���� �ߴٰ� �����ߴµ�<br>ģ���ϰ� �亯���ֽð�.. ���� �ڿ��� ���׿�<br><br>�������� ���� �����ҰԿ�<br>�񴩵� �ʹ� ���ƿ�<br>���� ���ƿ�<br>',0,null,2,4,4,'sora');
Insert into NMDB.TB_QNA (QNA_NO,QNA_TITLE,QNA_WRITE_DAY,QNA_HITS,QNA_CONTENT,QNA_DEL_CHECK,QNA_PW,QNA_POS,QNA_REF,BOARD_ID,MEM_ID) values (7,'�񴩰� �̻��ؿ�',to_date('16/04/17','RR/MM/DD'),10,'�񴩰� �̻��ؿ�<br>�̲��̲��ϰ�<br>��ǰ�̳���<br><br>���� �� �ᰡ�µ� ȯ�ҵǳ���?<br>',1,null,1,1,4,'minhee');
Insert into NMDB.TB_QNA (QNA_NO,QNA_TITLE,QNA_WRITE_DAY,QNA_HITS,QNA_CONTENT,QNA_DEL_CHECK,QNA_PW,QNA_POS,QNA_REF,BOARD_ID,MEM_ID) values (8,'�亯�Դϴ�^^',to_date('16/04/17','RR/MM/DD'),2,'minhee ����,<br><br>�����Ͻ� �񴩰� �̲��̲��ϰ� ��ǰ�� ���°�<br>������ǰ�̱� ������ ȯ���� �Ұ����մϴ�.<br><br>��ǰ���� �����ϰ� �����Ͻð� ���� ��ǰ�� ������ ����ϼż�<br>�Ƹ��ٿ� �Ǻ� ���ٽñ� �ٶ��ϴ�<br><br>�����մϴ�^^<br>',1,null,2,1,4,'admin02');
Insert into NMDB.TB_QNA (QNA_NO,QNA_TITLE,QNA_WRITE_DAY,QNA_HITS,QNA_CONTENT,QNA_DEL_CHECK,QNA_PW,QNA_POS,QNA_REF,BOARD_ID,MEM_ID) values (13,'���� �� ���� ��������?',to_date('16/04/20','RR/MM/DD'),7,'���ʺ� �Ẹ�� ���µ� ǰ���̳׿��ФФФ�',0,null,0,13,4,'sora');
Insert into NMDB.TB_QNA (QNA_NO,QNA_TITLE,QNA_WRITE_DAY,QNA_HITS,QNA_CONTENT,QNA_DEL_CHECK,QNA_PW,QNA_POS,QNA_REF,BOARD_ID,MEM_ID) values (11,'Re : �����ϴ�',to_date('16/04/18','RR/MM/DD'),5,'��â�ϼ���',0,null,2,2,4,'soomin');
Insert into NMDB.TB_QNA (QNA_NO,QNA_TITLE,QNA_WRITE_DAY,QNA_HITS,QNA_CONTENT,QNA_DEL_CHECK,QNA_PW,QNA_POS,QNA_REF,BOARD_ID,MEM_ID) values (19,'Re : ����񴩴� �� ������?',to_date('16/04/22','RR/MM/DD'),1,'����񴩿� ���� ���� ����� ã�� ���Դϴ�<div>��ٷ��ּ��� ^^</div>',0,null,1,14,4,'admin01');
Insert into NMDB.TB_QNA (QNA_NO,QNA_TITLE,QNA_WRITE_DAY,QNA_HITS,QNA_CONTENT,QNA_DEL_CHECK,QNA_PW,QNA_POS,QNA_REF,BOARD_ID,MEM_ID) values (20,'�Ǽ��� ���� �񴩴� ������?',to_date('16/04/22','RR/MM/DD'),1,'�Ǽ��� ���� �� �� �԰���� �ּ���Ф�',0,'1234',0,20,4,'hook1028');
Insert into NMDB.TB_QNA (QNA_NO,QNA_TITLE,QNA_WRITE_DAY,QNA_HITS,QNA_CONTENT,QNA_DEL_CHECK,QNA_PW,QNA_POS,QNA_REF,BOARD_ID,MEM_ID) values (12,'�� �� ���� �� �ֳ���',to_date('16/04/18','RR/MM/DD'),8,'õ�����ݾƿ�~~~~',0,null,0,12,4,'sora1234');
Insert into NMDB.TB_QNA (QNA_NO,QNA_TITLE,QNA_WRITE_DAY,QNA_HITS,QNA_CONTENT,QNA_DEL_CHECK,QNA_PW,QNA_POS,QNA_REF,BOARD_ID,MEM_ID) values (14,'����񴩴� �� ������?',to_date('16/04/21','RR/MM/DD'),14,'����񴩵� ������ּ���...',0,'1234',0,14,4,'applepie');
Insert into NMDB.TB_QNA (QNA_NO,QNA_TITLE,QNA_WRITE_DAY,QNA_HITS,QNA_CONTENT,QNA_DEL_CHECK,QNA_PW,QNA_POS,QNA_REF,BOARD_ID,MEM_ID) values (15,'Re : ����񴩴� ���־��',to_date('16/04/21','RR/MM/DD'),5,'�ٸ� �񴩴� ����...',0,null,1,12,4,'applepie');
Insert into NMDB.TB_QNA (QNA_NO,QNA_TITLE,QNA_WRITE_DAY,QNA_HITS,QNA_CONTENT,QNA_DEL_CHECK,QNA_PW,QNA_POS,QNA_REF,BOARD_ID,MEM_ID) values (16,'Re : ����񴩴� �� ������?',to_date('16/04/22','RR/MM/DD'),2,'�ȳ��ϼ��� ����<div>����񴩴� �񴩿� ���� ���� ����� �������̶��ϴ� ^^</div><div>��ٷ��ּ���!</div>',1,null,2,14,4,'admin01');
Insert into NMDB.TB_QNA (QNA_NO,QNA_TITLE,QNA_WRITE_DAY,QNA_HITS,QNA_CONTENT,QNA_DEL_CHECK,QNA_PW,QNA_POS,QNA_REF,BOARD_ID,MEM_ID) values (17,'Re : Re : ����� ���� �Դ°ſ���?',to_date('16/04/22','RR/MM/DD'),2,'��..�񴫵� �Ծ��?',0,null,2,12,4,'sora');
Insert into NMDB.TB_QNA (QNA_NO,QNA_TITLE,QNA_WRITE_DAY,QNA_HITS,QNA_CONTENT,QNA_DEL_CHECK,QNA_PW,QNA_POS,QNA_REF,BOARD_ID,MEM_ID) values (18,'ǰ���� ���߿�...',to_date('16/04/22','RR/MM/DD'),1,'�԰� ������ �ִ´�<img src="http://i.imgur.com/VOmB9Wz.png" width="190">',0,'1234',0,18,4,'soojin');
Insert into NMDB.TB_QNA (QNA_NO,QNA_TITLE,QNA_WRITE_DAY,QNA_HITS,QNA_CONTENT,QNA_DEL_CHECK,QNA_PW,QNA_POS,QNA_REF,BOARD_ID,MEM_ID) values (9,'�� �� �Ծ �ǳ���?',to_date('16/04/18','RR/MM/DD'),12,'õ�� �񴩴ϱ� �Ծ ����?',0,'1234',0,9,4,'soomin');
Insert into NMDB.TB_QNA (QNA_NO,QNA_TITLE,QNA_WRITE_DAY,QNA_HITS,QNA_CONTENT,QNA_DEL_CHECK,QNA_PW,QNA_POS,QNA_REF,BOARD_ID,MEM_ID) values (10,'�� ���������� �� ����������',to_date('16/04/18','RR/MM/DD'),2,'�޷ո޷�',1,null,0,10,4,'soomin');
REM INSERTING into NMDB.TB_QNA_RE
SET DEFINE OFF;
Insert into NMDB.TB_QNA_RE (QNA_RE_NO,QNA_RE_CONTENT,QNA_RE_WRITE_DAY,QNA_RE_DEL_CHECK,QNA_NO,MEM_ID) values (1,'���� �Խ����̳׿� ��ȣ',to_date('16/04/17','RR/MM/DD'),0,1,'soojin');
Insert into NMDB.TB_QNA_RE (QNA_RE_NO,QNA_RE_CONTENT,QNA_RE_WRITE_DAY,QNA_RE_DEL_CHECK,QNA_NO,MEM_ID) values (2,'�ñ��Ѱ� ���Ҵµ� ����',to_date('16/04/17','RR/MM/DD'),0,1,'soomin');
Insert into NMDB.TB_QNA_RE (QNA_RE_NO,QNA_RE_CONTENT,QNA_RE_WRITE_DAY,QNA_RE_DEL_CHECK,QNA_NO,MEM_ID) values (3,'���� �������.. ����������',to_date('16/04/17','RR/MM/DD'),0,2,'soomin');
Insert into NMDB.TB_QNA_RE (QNA_RE_NO,QNA_RE_CONTENT,QNA_RE_WRITE_DAY,QNA_RE_DEL_CHECK,QNA_NO,MEM_ID) values (4,'�����ڴ� ��¥ �����Ͻôµ� �ؿ�Ф�',to_date('16/04/17','RR/MM/DD'),0,8,'sora');
Insert into NMDB.TB_QNA_RE (QNA_RE_NO,QNA_RE_CONTENT,QNA_RE_WRITE_DAY,QNA_RE_DEL_CHECK,QNA_NO,MEM_ID) values (5,'���� �׷���?',to_date('16/04/17','RR/MM/DD'),1,7,'minhee');
Insert into NMDB.TB_QNA_RE (QNA_RE_NO,QNA_RE_CONTENT,QNA_RE_WRITE_DAY,QNA_RE_DEL_CHECK,QNA_NO,MEM_ID) values (10,'sora ȸ����
�׻� ���� �ڿ����� �̿����ּż� �����ϴ�~
���ʺ� ���԰� �Ǿ���ϴ� ^^',to_date('16/04/21','RR/MM/DD'),0,13,'admin01');
Insert into NMDB.TB_QNA_RE (QNA_RE_NO,QNA_RE_CONTENT,QNA_RE_WRITE_DAY,QNA_RE_DEL_CHECK,QNA_NO,MEM_ID) values (11,'���� �ڿ����� �񴩴� ���� ���� �Ǻο� �纸���ֽñ� �ٶ��ϴ� �����մϴ� ^^',to_date('16/04/21','RR/MM/DD'),0,12,'admin01');
Insert into NMDB.TB_QNA_RE (QNA_RE_NO,QNA_RE_CONTENT,QNA_RE_WRITE_DAY,QNA_RE_DEL_CHECK,QNA_NO,MEM_ID) values (9,'�� �񴩸� �Ծ��??',to_date('16/04/19','RR/MM/DD'),0,12,'maru0903');
Insert into NMDB.TB_QNA_RE (QNA_RE_NO,QNA_RE_CONTENT,QNA_RE_WRITE_DAY,QNA_RE_DEL_CHECK,QNA_NO,MEM_ID) values (6,'��� ���� �ʰ��ּ���',to_date('16/04/18','RR/MM/DD'),0,2,'soomin');
Insert into NMDB.TB_QNA_RE (QNA_RE_NO,QNA_RE_CONTENT,QNA_RE_WRITE_DAY,QNA_RE_DEL_CHECK,QNA_NO,MEM_ID) values (7,'�Ծ ���ڳ���',to_date('16/04/18','RR/MM/DD'),0,9,'soomin');
Insert into NMDB.TB_QNA_RE (QNA_RE_NO,QNA_RE_CONTENT,QNA_RE_WRITE_DAY,QNA_RE_DEL_CHECK,QNA_NO,MEM_ID) values (8,'��۵�ϵ��',to_date('16/04/18','RR/MM/DD'),1,9,'soomin');
REM INSERTING into NMDB.TB_REVIEW
SET DEFINE OFF;
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (1,'�������� ���׿�',to_date('16/04/17','RR/MM/DD'),36,'��Ⱑ �ʹ� ���ƿ�~~~~ �����<br>��Ⱑ �ʹ� ���ƿ�~~~~ �����<br>��Ⱑ �ʹ� ���ƿ�~~~~ �������Ⱑ �ʹ� ���ƿ�~~~~ �������Ⱑ �ʹ� ���ƿ�~~~~ �������Ⱑ �ʹ� ���ƿ�~~~~ �������Ⱑ �ʹ� ���ƿ�~~~~ �������Ⱑ �ʹ� ���ƿ�~~~~ �����<br>��Ⱑ �ʹ� ���ƿ�~~~~ �������Ⱑ �ʹ� ���ƿ�~~~~ �����',0,5,10003,5,'sora');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (2,'�����¡',to_date('16/04/17','RR/MM/DD'),11,'�ε�ε� ������ ¯��! ',0,4,10003,5,'soojin');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (3,'��� ����',to_date('16/04/17','RR/MM/DD'),85,'������ ���µ� ���� �Ծ��',0,3,10007,5,'soomin');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (4,'¯¯',to_date('16/04/17','RR/MM/DD'),68,'�� �� ���� ¯�ε� �� �췡�� �ι��췡��',0,5,10006,5,'sora');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (5,'��ġ��ġ',to_date('16/04/17','RR/MM/DD'),8,'������ �ٿ�ٿ �αٴ� ��ų��� �̳�',0,1,10005,5,'minhee');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (6,'�� �����ҿ���',to_date('16/04/17','RR/MM/DD'),9,'���ݵ� �����ѵ� �Ǻε� ���� ���������<br>�ڿ��� �����ؿ�<br>',0,3,10006,5,'soomin');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (7,'���� ���帧�� ���ٱ׷��� ����',to_date('16/04/17','RR/MM/DD'),17,'���� ���帧�� ���ٰ��ؼ� �����߾�� <br> �ȿ��ſ��µ� ���� �ȵſ���',0,4,10003,5,'soojin');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (25,'�����ڴ��� ��õ���ּż� ��ôµ�',to_date('16/04/21','RR/MM/DD'),0,'<img src="http://i.imgur.com/cCm3JdE.jpg" width="100"><div>���� �����ڴ��� ��õ���ֽôµ��� �������� �ֳ׿� ^^...</div>',0,5,10012,5,'maru0903');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (23,'���� ��µ� �������~',to_date('16/04/19','RR/MM/DD'),0,'�񴩵� �� ���� ���� ���ٰ� �ϳ׿���������<div>�簻���Ƽ� �԰� �;����뿩������������������</div><div>�ΰ��Ѱ� �� �������� �� ���ٰ� �մϴ�</div>',0,4,10006,5,'hanagang');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (19,'������ �� �̻��ѵ� �ߵ� �ſ�',to_date('16/04/19','RR/MM/DD'),0,'õ�� �񴩶� �׷��Ű���?<div>�ߵ������� �̻��ؼ� �� �ϳ� �����</div><div>�񴩴� ���� ���ƿ䤻����</div>',0,4,10002,5,'maru0903');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (20,'�Ǽ��� ���⿡ ������ ���� �� ���ƿ�',to_date('16/04/19','RR/MM/DD'),0,'������ �ǰǼ��ε� ������ �ʴٳ׿�~<div>������ ����� �� ��������䤾��</div>',0,5,10003,5,'maru0903');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (21,'�� �ѳ� ���� ��',to_date('16/04/19','RR/MM/DD'),0,'�⸧���̷� �� ������ 2�� �� �ʿ��ѵ�<div>�̰� ���� ������ 1�常 �־ �ſ�!!</div><div>�� ���� ���嵵 �ʿ� ���� �� ���ƿ�!!!!!! ¯����~~!!!!!!!!!</div><div>���� ������ �Ȱ� �������� ^0^</div>',0,5,10004,5,'hanagang');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (22,'�̰Ŵ� �׳� ���������� �� ���ƿ�',to_date('16/04/19','RR/MM/DD'),0,'���帧�� ���ٰ� ���信 �־ ��µ� ���� ȿ���� ���� ���׿�ФФ�<div><br></div><div>���帧�� ���ٰ� ���信 �־ ��µ� ���� ȿ���� ���� ���׿�ФФп��帧�� ���ٰ� ���信 �־ ��µ� ���� ȿ���� ���� ���׿�ФФ�</div><div>���帧�� ���ٰ� ���信 �־ ��µ� ���� ȿ���� ���� ���׿�ФФ�</div>',0,3,10003,5,'hanagang');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (24,'ģ�� ������ ����~~~~',to_date('16/04/19','RR/MM/DD'),0,'���ٺ񴩶� �̸��� �� �̻��ѵ� ģ���� �����ϴ��󱸿䤻����',0,4,10002,5,'hanagang');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (26,'���� �ʹ� ���ƿ�',to_date('16/04/21','RR/MM/DD'),0,'�������� ��¦ ���� �� ������ ���� �ʹ� ���Ƽ� ��� ���� �ſ�~<div>������ ������ �� �ϳ� �����~</div>',0,4,10005,5,'pasley');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (11,'�Ծ �ǳ׿�',to_date('16/04/18','RR/MM/DD'),0,'���� ������..',0,3,10000,5,'soomin');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (12,'�� ���µ�',to_date('16/04/18','RR/MM/DD'),0,'�ڲ� �԰� �ǳ׿� �� ���� �ߵ���',0,4,10000,5,'soomin');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (13,'���� �׸� �԰� �ʹ٤ФФ�',to_date('16/04/18','RR/MM/DD'),0,'�ѳ� ������...',0,5,10000,5,'soojin');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (14,'�������� �� �� ���ƿ�',to_date('16/04/18','RR/MM/DD'),0,'�������� ������ ���� �� ������ �İ��� �������� �� ���ϳ׿�..<div>�ٵ� ��ô� �� ���淡 �� �Ծ�ôµ� �̰� �� �Դ��� �𸣰ھ��.....�Ф�</div>',0,3,10000,5,'sora');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (15,'������ �����ؿ�~',to_date('16/04/18','RR/MM/DD'),0,'�̰� ���� �Ǻΰ� �� �����ϰ� �����ϴ�䤻��',0,4,10000,5,'sora');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (16,'�ӳ����� ÷ ���µ�',to_date('16/04/19','RR/MM/DD'),0,'<font size="6"><font color="#cc3399">�񴩴� �� ���׿�~����</font></font>',0,4,10001,5,'soomin');
Insert into NMDB.TB_REVIEW (REVIEW_NO,RVW_TITLE,RVW_WRITE_DAY,RVW_HITS,RVW_CONTENT,RVW_DEL_CHECK,RVW_SATISFACTION,PRODUCT_NO,BOARD_ID,MEM_ID) values (18,'�� ����',to_date('16/04/19','RR/MM/DD'),0,'�ڲ� �ߵ��Ǵ� �ӳ���~',0,5,10001,5,'soomin');
REM INSERTING into NMDB.TB_REVIEW_RE
SET DEFINE OFF;
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (1,'�������ּż� �����ϴ�~^^ �� ���� ��ǰ���� �����ϴ� �ڿ����� �ǰڽ��ϴ�.',to_date('16/04/17','RR/MM/DD'),0,1,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (2,'�������ּż� �����ϴ�~^^ �� ���� ��ǰ���� �����ϴ� �ڿ����� �ǰڽ��ϴ�.',to_date('16/04/17','RR/MM/DD'),0,2,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (3,'�������ּż� �����ϴ�~^^ �� ���� ��ǰ���� �����ϴ� �ڿ����� �ǰڽ��ϴ�.',to_date('16/04/17','RR/MM/DD'),0,3,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (4,'���� ���׿�',to_date('16/04/17','RR/MM/DD'),0,3,'soomin');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (5,'�������ּż� �����ϴ�~^^ �� ���� ��ǰ���� �����ϴ� �ڿ����� �ǰڽ��ϴ�.',to_date('16/04/17','RR/MM/DD'),0,4,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (6,'�������ּż� �����ϴ�~^^ �� ���� ��ǰ���� �����ϴ� �ڿ����� �ǰڽ��ϴ�.',to_date('16/04/17','RR/MM/DD'),0,5,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (7,'�������ּż� �����ϴ�~^^ �� ���� ��ǰ���� �����ϴ� �ڿ����� �ǰڽ��ϴ�.',to_date('16/04/17','RR/MM/DD'),0,6,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (8,'�������ּż� �����ϴ�~^^ �� ���� ��ǰ���� �����ϴ� �ڿ����� �ǰڽ��ϴ�.',to_date('16/04/17','RR/MM/DD'),0,7,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (9,'�� ������ �ȵŰ���',to_date('16/04/17','RR/MM/DD'),0,7,'soojin');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (29,'���ٺ��� ������ ������ õ�� ���� �״���̹Ƿ� �Ƚ��ϰ� ����ϼŵ� �ȴ�ϴ� ^^
�׻� ���� �ڿ����� �̿����ּż� �����ϴ�^^',to_date('16/04/21','RR/MM/DD'),0,19,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (30,'�׻� ���� �ڿ����� �̿����ּż� �����ϴ� ^^ ��Ӵ԰� �Բ� ���Ǻ� �ǽñ� ����ϰڽ��ϴ�!',to_date('16/04/21','RR/MM/DD'),0,20,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (31,'�⸧���̸� �Ƴ��� �� �ְ� �Ǿ �����Դϴ� ^^ �׻� ���� �ڿ����� �̿����ּż� �����ϴ� ^^~',to_date('16/04/21','RR/MM/DD'),0,21,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (10,'��� �׽�Ʈ ��� �׽�Ʈ',to_date('16/04/17','RR/MM/DD'),1,1,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (12,'���ظ��� ���� ���������',to_date('16/04/17','RR/MM/DD'),1,2,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (14,'���� ��ϵǴ°žߤФ�',to_date('16/04/17','RR/MM/DD'),0,1,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (15,'���̾��� �� ������ ��Ÿ �����̾��ٴ�',to_date('16/04/17','RR/MM/DD'),0,4,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (16,'�Ͼ� �� ���̷�',to_date('16/04/17','RR/MM/DD'),1,4,'admin02');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (19,'�׸��弼�� ���� ü�ؿ�ФФ�',to_date('16/04/19','RR/MM/DD'),0,12,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (20,'�Ƹ��� �񴩴� �Դ°� �ƴ϶��ϴ� ���� ^^!',to_date('16/04/19','RR/MM/DD'),0,13,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (21,'�Ƹ��� �񴩴� ���� ���ð� �Ǻο� �纸�ϼ���~',to_date('16/04/19','RR/MM/DD'),0,14,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (22,'�˾�â ȭ�����̿��� ����!!',to_date('16/04/19','RR/MM/DD'),1,15,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (23,'�׻� ���� �ڿ����� �̿����ּż� �����ϴ�~ ^^',to_date('16/04/19','RR/MM/DD'),0,16,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (24,'�ӳ��� �� ���ð� ���ڰ� ������ �Ǻ� �����ñ� �ٶ��ϴ�~ ^^',to_date('16/04/19','RR/MM/DD'),0,18,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (25,'ü�� ���� ���µ� ���� ���� �־��',to_date('16/04/19','RR/MM/DD'),0,12,'soomin');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (26,'������',to_date('16/04/19','RR/MM/DD'),1,12,'soomin');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (27,'�׻� ���� ��ǰ�� �̿����ּż� �����ϴ� ^^',to_date('16/04/19','RR/MM/DD'),0,15,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (28,'�׻� ���� �񴩸� �̿����ּż� �����ϴ� ^^',to_date('16/04/19','RR/MM/DD'),1,19,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (32,'�׻� ���� ��ǰ�� �̿����ּż� �����ϴ� ���� Ʈ���� �Ǻο��� ��Ȳ�񴩸� ��õ����� ^^',to_date('16/04/22','RR/MM/DD'),0,22,'admin01');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (17,'����� �� ���� ��̳����� ^^',to_date('16/04/17','RR/MM/DD'),0,5,'admin02');
Insert into NMDB.TB_REVIEW_RE (REVIEW_RE_NO,RVW_RE_CONTENT,RVW_RE_WRITE_DAY,RVW_RE_DEL_CHECK,RVW_NO,MEM_ID) values (18,'�� ����������!',to_date('16/04/19','RR/MM/DD'),0,11,'admin01');
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP63
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP63" ON "NMDB"."TB_NOTICE" ("MEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP33
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP33" ON "NMDB"."TB_EVENT" ("BOARD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY16
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY16" ON "NMDB"."TB_NOTICE" ("NOTICE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY21
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY21" ON "NMDB"."TB_MEM_LEVEL_N_BOARD" ("MEM_LEVEL_CD", "BOARD_CD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP51
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP51" ON "NMDB"."TB_ORDER" ("CREDIT_CD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY5
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY5" ON "NMDB"."TB_CREDIT" ("CREDIT_CD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP27
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP27" ON "NMDB"."TB_REVIEW" ("PRODUCT_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY18
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY18" ON "NMDB"."TB_REVIEW" ("REVIEW_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP37
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP37" ON "NMDB"."TB_EVENT_RE" ("EVT_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP60
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP60" ON "NMDB"."TB_REVIEW" ("MEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY4
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY4" ON "NMDB"."TB_PROCESS" ("PROCESS_CD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY3
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY3" ON "NMDB"."TB_CATEGORY" ("CATEGORY_CD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP32
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP32" ON "NMDB"."TB_QNA" ("BOARD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP41
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP41" ON "NMDB"."TB_NOTICE_RE" ("NOTICE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY6
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY6" ON "NMDB"."TB_DELIVERY_COM" ("DELIVERY_COM_CD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY11
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY11" ON "NMDB"."TB_PRODUCT_N_ORDER" ("PRODUCT_NO", "ORDER_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY24
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY24" ON "NMDB"."TB_NOTICE_RE" ("NOTICE_RE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP56
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP56" ON "NMDB"."TB_ORDER" ("MEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY14
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY14" ON "NMDB"."TB_BOARD" ("BOARD_CD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP59
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP59" ON "NMDB"."TB_EVENT" ("MEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP66
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP66" ON "NMDB"."TB_QNA" ("MEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP50
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP50" ON "NMDB"."TB_PRODUCT_N_ORDER" ("PROCESS_CD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP58
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP58" ON "NMDB"."TB_EVENT_RE" ("MEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP49
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP49" ON "NMDB"."TB_PRODUCT" ("CATEGORY_CD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP31
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP31" ON "NMDB"."TB_REVIEW" ("BOARD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP39
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP39" ON "NMDB"."TB_QNA_RE" ("QNA_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY13
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY13" ON "NMDB"."TB_INTEREST" ("PRODUCT_NO", "MEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY12
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY12" ON "NMDB"."TB_CART" ("PRODUCT_NO", "MEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP62
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP62" ON "NMDB"."TB_MEMBER" ("MEM_LEVEL_CD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP34
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP34" ON "NMDB"."TB_FAQ" ("BOARD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP57
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP57" ON "NMDB"."TB_REVIEW_RE" ("MEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY15
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY15" ON "NMDB"."TB_FAQ" ("FAQ_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP53
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP53" ON "NMDB"."TB_ORDER" ("DELIVERY_COM_CD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY22
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY22" ON "NMDB"."TB_EVENT_RE" ("EVENT_RE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP65
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP65" ON "NMDB"."TB_QNA_RE" ("MEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY25
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY25" ON "NMDB"."TB_REVIEW_RE" ("REVIEW_RE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY23
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY23" ON "NMDB"."TB_QNA_RE" ("QNA_RE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP61
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP61" ON "NMDB"."TB_FAQ" ("MEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY19
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY19" ON "NMDB"."TB_QNA" ("QNA_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY20
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY20" ON "NMDB"."TB_MEM_LEVEL" ("MEM_LEVEL_CD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP64
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP64" ON "NMDB"."TB_NOTICE_RE" ("MEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY8
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY8" ON "NMDB"."TB_ORDER" ("ORDER_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP35
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP35" ON "NMDB"."TB_NOTICE" ("BOARD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY1" ON "NMDB"."TB_MEMBER" ("MEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY17
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY17" ON "NMDB"."TB_EVENT" ("EVENT_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEY7
--------------------------------------------------------

  CREATE UNIQUE INDEX "NMDB"."KEY7" ON "NMDB"."TB_PRODUCT" ("PRODUCT_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP24
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP24" ON "NMDB"."TB_QNA" ("QNA_REF") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RELATIONSHIP43
--------------------------------------------------------

  CREATE INDEX "NMDB"."IX_RELATIONSHIP43" ON "NMDB"."TB_REVIEW_RE" ("RVW_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table TB_EVENT_RE
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_EVENT_RE" ADD CONSTRAINT "KEY22" PRIMARY KEY ("EVENT_RE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_EVENT_RE" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_EVENT_RE" MODIFY ("EVT_NO" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_EVENT_RE" MODIFY ("EVT_RE_DEL_CHECK" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_EVENT_RE" MODIFY ("EVT_RE_WRITE_DAY" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_EVENT_RE" MODIFY ("EVT_RE_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_EVENT_RE" MODIFY ("EVENT_RE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_DELIVERY_COM
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_DELIVERY_COM" ADD CONSTRAINT "KEY6" PRIMARY KEY ("DELIVERY_COM_CD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_DELIVERY_COM" MODIFY ("DELIVERY_COM_NM" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_DELIVERY_COM" MODIFY ("DELIVERY_COM_CD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_MEM_LEVEL
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_MEM_LEVEL" ADD CONSTRAINT "KEY20" PRIMARY KEY ("MEM_LEVEL_CD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_MEM_LEVEL" MODIFY ("MEM_LEVEL_NM" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_MEM_LEVEL" MODIFY ("MEM_LEVEL_CD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_REVIEW_RE
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_REVIEW_RE" ADD CONSTRAINT "KEY25" PRIMARY KEY ("REVIEW_RE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_REVIEW_RE" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_REVIEW_RE" MODIFY ("RVW_NO" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_REVIEW_RE" MODIFY ("RVW_RE_DEL_CHECK" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_REVIEW_RE" MODIFY ("RVW_RE_WRITE_DAY" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_REVIEW_RE" MODIFY ("RVW_RE_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_REVIEW_RE" MODIFY ("REVIEW_RE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_NOTICE
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_NOTICE" ADD CONSTRAINT "KEY16" PRIMARY KEY ("NOTICE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_NOTICE" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_NOTICE" MODIFY ("BOARD_ID" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_NOTICE" MODIFY ("NTC_DEL_CHECK" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_NOTICE" MODIFY ("NTC_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_NOTICE" MODIFY ("NTC_HITS" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_NOTICE" MODIFY ("NTC_WRITE_DAY" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_NOTICE" MODIFY ("NTC_TITLE" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_NOTICE" MODIFY ("NOTICE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_FAQ
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_FAQ" ADD CONSTRAINT "KEY15" PRIMARY KEY ("FAQ_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_FAQ" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_FAQ" MODIFY ("BOARD_ID" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_FAQ" MODIFY ("FAQ_DEL_CHECK" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_FAQ" MODIFY ("FAQ_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_FAQ" MODIFY ("FAQ_TITLE" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_FAQ" MODIFY ("FAQ_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_BOARD
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_BOARD" ADD CONSTRAINT "KEY14" PRIMARY KEY ("BOARD_CD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_BOARD" MODIFY ("BOARD_NM" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_BOARD" MODIFY ("BOARD_CD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_MEMBER
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_MEMBER" ADD CONSTRAINT "KEY1" PRIMARY KEY ("MEM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_MEMBER" MODIFY ("MEM_LEVEL_CD" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_MEMBER" MODIFY ("DROP_OUT" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_MEMBER" MODIFY ("MEM_GENDER" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_MEMBER" MODIFY ("MEM_BIRTH" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_MEMBER" MODIFY ("MEM_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_MEMBER" MODIFY ("MEM_ADDR_DETAIL" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_MEMBER" MODIFY ("MEM_ADDR_POST" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_MEMBER" MODIFY ("MEM_PHONE" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_MEMBER" MODIFY ("MEM_NAME" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_MEMBER" MODIFY ("MEM_PW" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_MEMBER" MODIFY ("MEM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_ORDER
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_ORDER" ADD CONSTRAINT "KEY8" PRIMARY KEY ("ORDER_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_ORDER" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_ORDER" MODIFY ("CREDIT_CD" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_ORDER" MODIFY ("RCV_ADDR_DETAIL" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_ORDER" MODIFY ("RCV_ADDR_POST" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_ORDER" MODIFY ("RCV_PHONE" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_ORDER" MODIFY ("RCV_NAME" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_ORDER" MODIFY ("CREDIT_EXP" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_ORDER" MODIFY ("CREDIT_NUM" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_ORDER" MODIFY ("CHARGE" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_ORDER" MODIFY ("ORDER_DATE" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_ORDER" MODIFY ("ORDER_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_CART
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_CART" ADD CONSTRAINT "KEY12" PRIMARY KEY ("PRODUCT_NO", "MEM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_CART" MODIFY ("BUY_NUM" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_CART" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_CART" MODIFY ("PRODUCT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_CATEGORY
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_CATEGORY" ADD CONSTRAINT "KEY3" PRIMARY KEY ("CATEGORY_CD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_CATEGORY" MODIFY ("CATEGORY_NM" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_CATEGORY" MODIFY ("CATEGORY_CD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_QNA
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_QNA" ADD CONSTRAINT "KEY19" PRIMARY KEY ("QNA_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_QNA" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_QNA" MODIFY ("BOARD_ID" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_QNA" MODIFY ("QNA_REF" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_QNA" MODIFY ("QNA_POS" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_QNA" MODIFY ("QNA_DEL_CHECK" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_QNA" MODIFY ("QNA_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_QNA" MODIFY ("QNA_HITS" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_QNA" MODIFY ("QNA_WRITE_DAY" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_QNA" MODIFY ("QNA_TITLE" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_QNA" MODIFY ("QNA_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_PROCESS
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_PROCESS" ADD CONSTRAINT "KEY4" PRIMARY KEY ("PROCESS_CD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_PROCESS" MODIFY ("PROCESS_NM" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_PROCESS" MODIFY ("PROCESS_CD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_EVENT
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_EVENT" ADD CONSTRAINT "KEY17" PRIMARY KEY ("EVENT_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_EVENT" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_EVENT" MODIFY ("BOARD_ID" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_EVENT" MODIFY ("EVT_DEL_CHECK" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_EVENT" MODIFY ("EVT_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_EVENT" MODIFY ("EVT_HITS" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_EVENT" MODIFY ("EVT_WRITE_DAY" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_EVENT" MODIFY ("EVT_TITLE" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_EVENT" MODIFY ("EVENT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_PRODUCT
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_PRODUCT" MODIFY ("REPRESENT_IMG" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_PRODUCT" MODIFY ("SALE_STATE" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_PRODUCT" MODIFY ("DISPLAY_STATE" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_PRODUCT" MODIFY ("STOCK" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_PRODUCT" MODIFY ("COST_PRICE" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_PRODUCT" MODIFY ("SELLING_PRICE" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_PRODUCT" MODIFY ("PRODUCT_NAME" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_PRODUCT" MODIFY ("PRODUCT_NO" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_PRODUCT" ADD CONSTRAINT "KEY7" PRIMARY KEY ("PRODUCT_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_PRODUCT" MODIFY ("CATEGORY_CD" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_PRODUCT" MODIFY ("DELETED_STATE" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_PRODUCT" MODIFY ("SUMMARY_EX" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_PRODUCT" MODIFY ("DETAIL_IMG" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_NOTICE_RE
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_NOTICE_RE" ADD CONSTRAINT "KEY24" PRIMARY KEY ("NOTICE_RE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_NOTICE_RE" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_NOTICE_RE" MODIFY ("NOTICE_NO" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_NOTICE_RE" MODIFY ("NTC_RE_DEL_CHECK" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_NOTICE_RE" MODIFY ("NTC_RE_WRITE_DAY" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_NOTICE_RE" MODIFY ("NTC_RE_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_NOTICE_RE" MODIFY ("NOTICE_RE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_PRODUCT_N_ORDER
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_PRODUCT_N_ORDER" ADD CONSTRAINT "KEY11" PRIMARY KEY ("PRODUCT_NO", "ORDER_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_PRODUCT_N_ORDER" MODIFY ("PROCESS_CD" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_PRODUCT_N_ORDER" MODIFY ("BUY_NUM" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_PRODUCT_N_ORDER" MODIFY ("ORDER_NO" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_PRODUCT_N_ORDER" MODIFY ("PRODUCT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_CREDIT
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_CREDIT" ADD CONSTRAINT "KEY5" PRIMARY KEY ("CREDIT_CD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_CREDIT" MODIFY ("CREDIT_NM" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_CREDIT" MODIFY ("CREDIT_CD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_REVIEW
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_REVIEW" ADD CONSTRAINT "KEY18" PRIMARY KEY ("REVIEW_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_REVIEW" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_REVIEW" MODIFY ("BOARD_ID" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_REVIEW" MODIFY ("PRODUCT_NO" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_REVIEW" MODIFY ("RVW_SATISFACTION" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_REVIEW" MODIFY ("RVW_DEL_CHECK" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_REVIEW" MODIFY ("RVW_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_REVIEW" MODIFY ("RVW_HITS" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_REVIEW" MODIFY ("RVW_WRITE_DAY" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_REVIEW" MODIFY ("RVW_TITLE" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_REVIEW" MODIFY ("REVIEW_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_INTEREST
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_INTEREST" ADD CONSTRAINT "KEY13" PRIMARY KEY ("PRODUCT_NO", "MEM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_INTEREST" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_INTEREST" MODIFY ("PRODUCT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_QNA_RE
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_QNA_RE" ADD CONSTRAINT "KEY23" PRIMARY KEY ("QNA_RE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_QNA_RE" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_QNA_RE" MODIFY ("QNA_NO" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_QNA_RE" MODIFY ("QNA_RE_DEL_CHECK" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_QNA_RE" MODIFY ("QNA_RE_WRITE_DAY" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_QNA_RE" MODIFY ("QNA_RE_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_QNA_RE" MODIFY ("QNA_RE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_MEM_LEVEL_N_BOARD
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_MEM_LEVEL_N_BOARD" ADD CONSTRAINT "KEY21" PRIMARY KEY ("MEM_LEVEL_CD", "BOARD_CD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NMDB"."TB_MEM_LEVEL_N_BOARD" MODIFY ("BOARD_DELETE" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_MEM_LEVEL_N_BOARD" MODIFY ("BOARD_MODIFY" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_MEM_LEVEL_N_BOARD" MODIFY ("BOARD_WRITE" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_MEM_LEVEL_N_BOARD" MODIFY ("BOARD_READ" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_MEM_LEVEL_N_BOARD" MODIFY ("BOARD_CD" NOT NULL ENABLE);
  ALTER TABLE "NMDB"."TB_MEM_LEVEL_N_BOARD" MODIFY ("MEM_LEVEL_CD" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table TB_CART
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_CART" ADD CONSTRAINT "RELATIONSHIP14" FOREIGN KEY ("PRODUCT_NO")
	  REFERENCES "NMDB"."TB_PRODUCT" ("PRODUCT_NO") ENABLE;
  ALTER TABLE "NMDB"."TB_CART" ADD CONSTRAINT "RELATIONSHIP70" FOREIGN KEY ("MEM_ID")
	  REFERENCES "NMDB"."TB_MEMBER" ("MEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TB_EVENT
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_EVENT" ADD CONSTRAINT "RELATIONSHIP33" FOREIGN KEY ("BOARD_ID")
	  REFERENCES "NMDB"."TB_BOARD" ("BOARD_CD") ENABLE;
  ALTER TABLE "NMDB"."TB_EVENT" ADD CONSTRAINT "RELATIONSHIP59" FOREIGN KEY ("MEM_ID")
	  REFERENCES "NMDB"."TB_MEMBER" ("MEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TB_EVENT_RE
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_EVENT_RE" ADD CONSTRAINT "RELATIONSHIP37" FOREIGN KEY ("EVT_NO")
	  REFERENCES "NMDB"."TB_EVENT" ("EVENT_NO") ENABLE;
  ALTER TABLE "NMDB"."TB_EVENT_RE" ADD CONSTRAINT "RELATIONSHIP58" FOREIGN KEY ("MEM_ID")
	  REFERENCES "NMDB"."TB_MEMBER" ("MEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TB_FAQ
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_FAQ" ADD CONSTRAINT "RELATIONSHIP34" FOREIGN KEY ("BOARD_ID")
	  REFERENCES "NMDB"."TB_BOARD" ("BOARD_CD") ENABLE;
  ALTER TABLE "NMDB"."TB_FAQ" ADD CONSTRAINT "RELATIONSHIP61" FOREIGN KEY ("MEM_ID")
	  REFERENCES "NMDB"."TB_MEMBER" ("MEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TB_INTEREST
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_INTEREST" ADD CONSTRAINT "RELATIONSHIP12" FOREIGN KEY ("PRODUCT_NO")
	  REFERENCES "NMDB"."TB_PRODUCT" ("PRODUCT_NO") ENABLE;
  ALTER TABLE "NMDB"."TB_INTEREST" ADD CONSTRAINT "RELATIONSHIP69" FOREIGN KEY ("MEM_ID")
	  REFERENCES "NMDB"."TB_MEMBER" ("MEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TB_MEMBER
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_MEMBER" ADD CONSTRAINT "RELATIONSHIP62" FOREIGN KEY ("MEM_LEVEL_CD")
	  REFERENCES "NMDB"."TB_MEM_LEVEL" ("MEM_LEVEL_CD") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TB_MEM_LEVEL_N_BOARD
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_MEM_LEVEL_N_BOARD" ADD CONSTRAINT "RELATIONSHIP67" FOREIGN KEY ("MEM_LEVEL_CD")
	  REFERENCES "NMDB"."TB_MEM_LEVEL" ("MEM_LEVEL_CD") ENABLE;
  ALTER TABLE "NMDB"."TB_MEM_LEVEL_N_BOARD" ADD CONSTRAINT "RELATIONSHIP68" FOREIGN KEY ("BOARD_CD")
	  REFERENCES "NMDB"."TB_BOARD" ("BOARD_CD") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TB_NOTICE
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_NOTICE" ADD CONSTRAINT "RELATIONSHIP35" FOREIGN KEY ("BOARD_ID")
	  REFERENCES "NMDB"."TB_BOARD" ("BOARD_CD") ENABLE;
  ALTER TABLE "NMDB"."TB_NOTICE" ADD CONSTRAINT "RELATIONSHIP63" FOREIGN KEY ("MEM_ID")
	  REFERENCES "NMDB"."TB_MEMBER" ("MEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TB_NOTICE_RE
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_NOTICE_RE" ADD CONSTRAINT "RELATIONSHIP41" FOREIGN KEY ("NOTICE_NO")
	  REFERENCES "NMDB"."TB_NOTICE" ("NOTICE_NO") ENABLE;
  ALTER TABLE "NMDB"."TB_NOTICE_RE" ADD CONSTRAINT "RELATIONSHIP64" FOREIGN KEY ("MEM_ID")
	  REFERENCES "NMDB"."TB_MEMBER" ("MEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TB_ORDER
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_ORDER" ADD CONSTRAINT "RELATIONSHIP51" FOREIGN KEY ("CREDIT_CD")
	  REFERENCES "NMDB"."TB_CREDIT" ("CREDIT_CD") ENABLE;
  ALTER TABLE "NMDB"."TB_ORDER" ADD CONSTRAINT "RELATIONSHIP53" FOREIGN KEY ("DELIVERY_COM_CD")
	  REFERENCES "NMDB"."TB_DELIVERY_COM" ("DELIVERY_COM_CD") ENABLE;
  ALTER TABLE "NMDB"."TB_ORDER" ADD CONSTRAINT "RELATIONSHIP56" FOREIGN KEY ("MEM_ID")
	  REFERENCES "NMDB"."TB_MEMBER" ("MEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TB_PRODUCT
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_PRODUCT" ADD CONSTRAINT "RELATIONSHIP49" FOREIGN KEY ("CATEGORY_CD")
	  REFERENCES "NMDB"."TB_CATEGORY" ("CATEGORY_CD") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TB_PRODUCT_N_ORDER
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_PRODUCT_N_ORDER" ADD CONSTRAINT "RELATIONSHIP10" FOREIGN KEY ("ORDER_NO")
	  REFERENCES "NMDB"."TB_ORDER" ("ORDER_NO") ENABLE;
  ALTER TABLE "NMDB"."TB_PRODUCT_N_ORDER" ADD CONSTRAINT "RELATIONSHIP50" FOREIGN KEY ("PROCESS_CD")
	  REFERENCES "NMDB"."TB_PROCESS" ("PROCESS_CD") ENABLE;
  ALTER TABLE "NMDB"."TB_PRODUCT_N_ORDER" ADD CONSTRAINT "RELATIONSHIP9" FOREIGN KEY ("PRODUCT_NO")
	  REFERENCES "NMDB"."TB_PRODUCT" ("PRODUCT_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TB_QNA
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_QNA" ADD CONSTRAINT "RELATIONSHIP24" FOREIGN KEY ("QNA_REF")
	  REFERENCES "NMDB"."TB_QNA" ("QNA_NO") ENABLE;
  ALTER TABLE "NMDB"."TB_QNA" ADD CONSTRAINT "RELATIONSHIP32" FOREIGN KEY ("BOARD_ID")
	  REFERENCES "NMDB"."TB_BOARD" ("BOARD_CD") ENABLE;
  ALTER TABLE "NMDB"."TB_QNA" ADD CONSTRAINT "RELATIONSHIP66" FOREIGN KEY ("MEM_ID")
	  REFERENCES "NMDB"."TB_MEMBER" ("MEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TB_QNA_RE
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_QNA_RE" ADD CONSTRAINT "RELATIONSHIP39" FOREIGN KEY ("QNA_NO")
	  REFERENCES "NMDB"."TB_QNA" ("QNA_NO") ENABLE;
  ALTER TABLE "NMDB"."TB_QNA_RE" ADD CONSTRAINT "RELATIONSHIP65" FOREIGN KEY ("MEM_ID")
	  REFERENCES "NMDB"."TB_MEMBER" ("MEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TB_REVIEW
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_REVIEW" ADD CONSTRAINT "RELATIONSHIP27" FOREIGN KEY ("PRODUCT_NO")
	  REFERENCES "NMDB"."TB_PRODUCT" ("PRODUCT_NO") ENABLE;
  ALTER TABLE "NMDB"."TB_REVIEW" ADD CONSTRAINT "RELATIONSHIP31" FOREIGN KEY ("BOARD_ID")
	  REFERENCES "NMDB"."TB_BOARD" ("BOARD_CD") ENABLE;
  ALTER TABLE "NMDB"."TB_REVIEW" ADD CONSTRAINT "RELATIONSHIP60" FOREIGN KEY ("MEM_ID")
	  REFERENCES "NMDB"."TB_MEMBER" ("MEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TB_REVIEW_RE
--------------------------------------------------------

  ALTER TABLE "NMDB"."TB_REVIEW_RE" ADD CONSTRAINT "RELATIONSHIP43" FOREIGN KEY ("RVW_NO")
	  REFERENCES "NMDB"."TB_REVIEW" ("REVIEW_NO") ENABLE;
  ALTER TABLE "NMDB"."TB_REVIEW_RE" ADD CONSTRAINT "RELATIONSHIP57" FOREIGN KEY ("MEM_ID")
	  REFERENCES "NMDB"."TB_MEMBER" ("MEM_ID") ENABLE;
