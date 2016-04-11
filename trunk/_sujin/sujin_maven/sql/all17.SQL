/*
Created: 2016-03-11
Modified: 2016-04-02
Model: Oracle 11g Release 2
Database: Oracle 11g Release 2
*/


-- Drop relationships section -------------------------------------------------

ALTER TABLE tb_product_n_cart DROP CONSTRAINT Relationship70
/
ALTER TABLE tb_product_n_interest DROP CONSTRAINT Relationship69
/
ALTER TABLE tb_mem_level_n_board DROP CONSTRAINT Relationship68
/
ALTER TABLE tb_mem_level_n_board DROP CONSTRAINT Relationship67
/
ALTER TABLE tb_qna DROP CONSTRAINT Relationship66
/
ALTER TABLE tb_qna_re DROP CONSTRAINT Relationship65
/
ALTER TABLE tb_notice_re DROP CONSTRAINT Relationship64
/
ALTER TABLE tb_notice DROP CONSTRAINT Relationship63
/
ALTER TABLE tb_member DROP CONSTRAINT Relationship62
/
ALTER TABLE tb_faq DROP CONSTRAINT Relationship61
/
ALTER TABLE tb_review DROP CONSTRAINT Relationship60
/
ALTER TABLE tb_event DROP CONSTRAINT Relationship59
/
ALTER TABLE tb_event_re DROP CONSTRAINT Relationship58
/
ALTER TABLE tb_review_re DROP CONSTRAINT Relationship57
/
ALTER TABLE tb_order DROP CONSTRAINT Relationship56
/
ALTER TABLE tb_order DROP CONSTRAINT Relationship53
/
ALTER TABLE tb_order DROP CONSTRAINT Relationship51
/
ALTER TABLE tb_product_n_order DROP CONSTRAINT Relationship50
/
ALTER TABLE tb_product DROP CONSTRAINT Relationship49
/
ALTER TABLE tb_review_re DROP CONSTRAINT Relationship43
/
ALTER TABLE tb_notice_re DROP CONSTRAINT Relationship41
/
ALTER TABLE tb_qna_re DROP CONSTRAINT Relationship39
/
ALTER TABLE tb_event_re DROP CONSTRAINT Relationship37
/
ALTER TABLE tb_product_n_order DROP CONSTRAINT Relationship9
/
ALTER TABLE tb_product_n_order DROP CONSTRAINT Relationship10
/
ALTER TABLE tb_product_n_interest DROP CONSTRAINT Relationship12
/
ALTER TABLE tb_product_n_cart DROP CONSTRAINT Relationship14
/
ALTER TABLE tb_qna DROP CONSTRAINT Relationship24
/
ALTER TABLE tb_review DROP CONSTRAINT Relationship27
/
ALTER TABLE tb_review DROP CONSTRAINT Relationship31
/
ALTER TABLE tb_qna DROP CONSTRAINT Relationship32
/
ALTER TABLE tb_event DROP CONSTRAINT Relationship33
/
ALTER TABLE tb_faq DROP CONSTRAINT Relationship34
/
ALTER TABLE tb_notice DROP CONSTRAINT Relationship35
/




-- Drop keys for tables section -------------------------------------------------

ALTER TABLE tb_review_re DROP CONSTRAINT Key25
/
ALTER TABLE tb_review DROP CONSTRAINT Key18
/
ALTER TABLE tb_notice DROP CONSTRAINT Key16
/
ALTER TABLE tb_qna DROP CONSTRAINT Key19
/
ALTER TABLE tb_notice_re DROP CONSTRAINT Key24
/
ALTER TABLE tb_event_re DROP CONSTRAINT Key22
/
ALTER TABLE tb_qna_re DROP CONSTRAINT Key23
/
ALTER TABLE tb_event DROP CONSTRAINT Key17
/
ALTER TABLE tb_member DROP CONSTRAINT Key1
/
ALTER TABLE tb_category DROP CONSTRAINT Key3
/
ALTER TABLE tb_process DROP CONSTRAINT Key4
/
ALTER TABLE tb_credit DROP CONSTRAINT Key5
/
ALTER TABLE tb_delivery_com DROP CONSTRAINT Key6
/
ALTER TABLE tb_product DROP CONSTRAINT Key7
/
ALTER TABLE tb_order DROP CONSTRAINT Key8
/
ALTER TABLE tb_product_n_order DROP CONSTRAINT Key11
/
ALTER TABLE tb_product_n_cart DROP CONSTRAINT Key12
/
ALTER TABLE tb_product_n_interest DROP CONSTRAINT Key13
/
ALTER TABLE tb_board DROP CONSTRAINT Key14
/
ALTER TABLE tb_faq DROP CONSTRAINT Key15
/
ALTER TABLE tb_mem_level DROP CONSTRAINT Key20
/
ALTER TABLE tb_mem_level_n_board DROP CONSTRAINT Key21
/


-- Drop indexes section -------------------------------------------------

DROP INDEX IX_Relationship43
/
DROP INDEX IX_Relationship57
/
DROP INDEX IX_Relationship27
/
DROP INDEX IX_Relationship31
/
DROP INDEX IX_Relationship60
/
DROP INDEX IX_Relationship35
/
DROP INDEX IX_Relationship63
/
DROP INDEX IX_Relationship24
/
DROP INDEX IX_Relationship32
/
DROP INDEX IX_Relationship66
/
DROP INDEX IX_Relationship41
/
DROP INDEX IX_Relationship64
/
DROP INDEX IX_Relationship37
/
DROP INDEX IX_Relationship58
/
DROP INDEX IX_Relationship39
/
DROP INDEX IX_Relationship65
/
DROP INDEX IX_Relationship33
/
DROP INDEX IX_Relationship59
/
DROP INDEX IX_Relationship62
/
DROP INDEX IX_Relationship49
/
DROP INDEX IX_Relationship51
/
DROP INDEX IX_Relationship53
/
DROP INDEX IX_Relationship56
/
DROP INDEX IX_Relationship50
/
DROP INDEX IX_Relationship34
/
DROP INDEX IX_Relationship61
/


-- Drop tables section ---------------------------------------------------

DROP TABLE tb_review_re
/
DROP TABLE tb_review
/
DROP TABLE tb_notice
/
DROP TABLE tb_qna
/
DROP TABLE tb_notice_re
/
DROP TABLE tb_event_re
/
DROP TABLE tb_qna_re
/
DROP TABLE tb_event
/
DROP TABLE tb_member
/
DROP TABLE tb_category
/
DROP TABLE tb_process
/
DROP TABLE tb_credit
/
DROP TABLE tb_delivery_com
/
DROP TABLE tb_product
/
DROP TABLE tb_order
/
DROP TABLE tb_product_n_order
/
DROP TABLE tb_product_n_cart
/
DROP TABLE tb_product_n_interest
/
DROP TABLE tb_board
/
DROP TABLE tb_faq
/
DROP TABLE tb_mem_level
/
DROP TABLE tb_mem_level_n_board
/

-- Create tables section -------------------------------------------------

-- Table tb_mem_level_n_board

CREATE TABLE tb_mem_level_n_board(
  mem_level_cd Number NOT NULL,
  board_cd Number NOT NULL,
  board_read Number NOT NULL,
  board_write Number NOT NULL,
  board_modify Number NOT NULL,
  board_delete Number NOT NULL
)
/

-- Add keys for table tb_mem_level_n_board

ALTER TABLE tb_mem_level_n_board ADD CONSTRAINT Key21 PRIMARY KEY (mem_level_cd,board_cd)
/

-- Table tb_mem_level

CREATE TABLE tb_mem_level(
  mem_level_cd Number NOT NULL,
  mem_level_nm Varchar2(32 ) NOT NULL
)
/

-- Add keys for table tb_mem_level

ALTER TABLE tb_mem_level ADD CONSTRAINT Key20 PRIMARY KEY (mem_level_cd)
/

-- Table tb_faq

CREATE TABLE tb_faq(
  faq_no Number NOT NULL,
  faq_title Varchar2(256 ) NOT NULL,
  faq_content Varchar2(4000 ) NOT NULL,
  faq_del_check Number DEFAULT 0 NOT NULL,
  board_id Number NOT NULL,
  mem_id Varchar2(32 ) NOT NULL
)
/

-- Create indexes for table tb_faq

CREATE INDEX IX_Relationship34 ON tb_faq (board_id)
/

CREATE INDEX IX_Relationship61 ON tb_faq (mem_id)
/

-- Add keys for table tb_faq

ALTER TABLE tb_faq ADD CONSTRAINT Key15 PRIMARY KEY (faq_no)
/

-- Table and Columns comments section

COMMENT ON COLUMN tb_faq.faq_no IS 'auto_increment'
/

-- Table tb_board

CREATE TABLE tb_board(
  board_cd Number NOT NULL,
  board_nm Varchar2(32 ) NOT NULL
)
/

-- Add keys for table tb_board

ALTER TABLE tb_board ADD CONSTRAINT Key14 PRIMARY KEY (board_cd)
/

-- Table tb_product_n_interest

CREATE TABLE tb_product_n_interest(
  product_no Number DEFAULT 10000 NOT NULL,
  mem_id Varchar2(32 ) NOT NULL
)
/

-- Add keys for table tb_product_n_interest

ALTER TABLE tb_product_n_interest ADD CONSTRAINT Key13 PRIMARY KEY (product_no,mem_id)
/

-- Table tb_product_n_cart

CREATE TABLE tb_product_n_cart(
  product_no Number DEFAULT 10000 NOT NULL,
  mem_id Varchar2(32 ) NOT NULL,
  buy_num Number DEFAULT 1 NOT NULL
)
/

-- Add keys for table tb_product_n_cart

ALTER TABLE tb_product_n_cart ADD CONSTRAINT Key12 PRIMARY KEY (product_no,mem_id)
/

-- Table tb_product_n_order

CREATE TABLE tb_product_n_order(
  product_no Number DEFAULT 10000 NOT NULL,
  order_no Number NOT NULL,
  buy_num Number NOT NULL,
  process_cd Number NOT NULL
)
/

-- Create indexes for table tb_product_n_order

CREATE INDEX IX_Relationship50 ON tb_product_n_order (process_cd)
/

-- Add keys for table tb_product_n_order

ALTER TABLE tb_product_n_order ADD CONSTRAINT Key11 PRIMARY KEY (product_no,order_no)
/

-- Table tb_order

CREATE TABLE tb_order(
  order_no Number NOT NULL,
  order_date Date DEFAULT SYSDATE NOT NULL,
  charge Number NOT NULL,
  credit_num Varchar2(32 ) NOT NULL,
  credit_exp Varchar2(8) NOT NULL,
  rcv_name Varchar2(64 ) NOT NULL,
  rcv_phone Varchar2(32 ) NOT NULL,
  rcv_addr_post Varchar2(256 ) NOT NULL,
  rcv_addr_detail Varchar2(256 ) NOT NULL,
  delivery_msg Varchar2(128 ),
  tracking_num Number,
  credit_cd Number NOT NULL,
  delivery_com_cd Number NOT NULL,
  mem_id Varchar2(32 ) NOT NULL
)
/

-- Create indexes for table tb_order

CREATE INDEX IX_Relationship51 ON tb_order (credit_cd)
/

CREATE INDEX IX_Relationship53 ON tb_order (delivery_com_cd)
/

CREATE INDEX IX_Relationship56 ON tb_order (mem_id)
/

-- Add keys for table tb_order

ALTER TABLE tb_order ADD CONSTRAINT Key8 PRIMARY KEY (order_no)
/

-- Table tb_product

CREATE TABLE tb_product(
  product_no Number DEFAULT 10000 NOT NULL,
  product_name Varchar2(64 ) NOT NULL,
  selling_price Number NOT NULL,
  cost_price Number NOT NULL,
  stock Number NOT NULL,
  display_state Number DEFAULT 0 NOT NULL,
  sale_state Number DEFAULT 0 NOT NULL,
  represent_img Varchar2(256 ) NOT NULL,
  detail_img Varchar2(256 ) NOT NULL,
  summary_ex Varchar2(128 ) NOT NULL,
  detail_ex Varchar2(4000 ),
  deleted_state Number DEFAULT 0 NOT NULL,
  weight Number,
  category_cd Number NOT NULL
)
/

-- Create indexes for table tb_product

CREATE INDEX IX_Relationship49 ON tb_product (category_cd)
/

-- Add keys for table tb_product

ALTER TABLE tb_product ADD CONSTRAINT Key7 PRIMARY KEY (product_no)
/

-- Table and Columns comments section

COMMENT ON COLUMN tb_product.product_no IS 'auto_increment'
/

-- Table tb_delivery_com

CREATE TABLE tb_delivery_com(
  delivery_com_cd Number NOT NULL,
  delivery_com_nm Varchar2(32 ) NOT NULL
)
/

-- Add keys for table tb_delivery_com

ALTER TABLE tb_delivery_com ADD CONSTRAINT Key6 PRIMARY KEY (delivery_com_cd)
/

-- Table tb_credit

CREATE TABLE tb_credit(
  credit_cd Number NOT NULL,
  credit_nm Varchar2(32 ) NOT NULL
)
/

-- Add keys for table tb_credit

ALTER TABLE tb_credit ADD CONSTRAINT Key5 PRIMARY KEY (credit_cd)
/

-- Table tb_process

CREATE TABLE tb_process(
  process_cd Number NOT NULL,
  process_nm Varchar2(32 ) NOT NULL
)
/

-- Add keys for table tb_process

ALTER TABLE tb_process ADD CONSTRAINT Key4 PRIMARY KEY (process_cd)
/

-- Table tb_category

CREATE TABLE tb_category(
  category_cd Number NOT NULL,
  category_nm Varchar2(64 ) NOT NULL
)
/

-- Add keys for table tb_category

ALTER TABLE tb_category ADD CONSTRAINT Key3 PRIMARY KEY (category_cd)
/

-- Table and Columns comments section

COMMENT ON COLUMN tb_category.category_cd IS 'auto_increment'
/

-- Table tb_member

CREATE TABLE tb_member(
  mem_id Varchar2(32 ) NOT NULL,
  mem_pw Varchar2(32 ) NOT NULL,
  mem_name Varchar2(32 ) NOT NULL,
  mem_phone Varchar2(32 ) NOT NULL,
  mem_addr_post Varchar2(256 ) NOT NULL,
  mem_addr_detail Varchar2(256 ) NOT NULL,
  mem_email Varchar2(64 ) NOT NULL,
  mem_birth Date NOT NULL,
  mem_gender Number NOT NULL,
  drop_out Number DEFAULT 0 NOT NULL,
  mem_level_cd Number NOT NULL
)
/

-- Create indexes for table tb_member

CREATE INDEX IX_Relationship62 ON tb_member (mem_level_cd)
/

-- Add keys for table tb_member

ALTER TABLE tb_member ADD CONSTRAINT Key1 PRIMARY KEY (mem_id)
/

-- Table tb_event

CREATE TABLE tb_event(
  event_no Number NOT NULL,
  evt_title Varchar2(256 ) NOT NULL,
  evt_write_day Date DEFAULT SYSDATE NOT NULL,
  evt_hits Number NOT NULL,
  evt_content Varchar2(4000 ) NOT NULL,
  evt_del_check Number DEFAULT 0 NOT NULL,
  board_id Number NOT NULL,
  mem_id Varchar2(32 ) NOT NULL
)
/

-- Create indexes for table tb_event

CREATE INDEX IX_Relationship33 ON tb_event (board_id)
/

CREATE INDEX IX_Relationship59 ON tb_event (mem_id)
/

-- Add keys for table tb_event

ALTER TABLE tb_event ADD CONSTRAINT Key17 PRIMARY KEY (event_no)
/

-- Table and Columns comments section

COMMENT ON COLUMN tb_event.event_no IS 'auto_increment'
/

-- Table tb_qna_re

CREATE TABLE tb_qna_re(
  qna_re_no Number NOT NULL,
  qna_re_content Varchar2(1024 ) NOT NULL,
  qna_re_write_day Date DEFAULT SYSDATE NOT NULL,
  qna_re_del_check Number DEFAULT 0 NOT NULL,
  qna_no Number NOT NULL,
  mem_id Varchar2(32 ) NOT NULL
)
/

-- Create indexes for table tb_qna_re

CREATE INDEX IX_Relationship39 ON tb_qna_re (qna_no)
/

CREATE INDEX IX_Relationship65 ON tb_qna_re (mem_id)
/

-- Add keys for table tb_qna_re

ALTER TABLE tb_qna_re ADD CONSTRAINT Key23 PRIMARY KEY (qna_re_no)
/

-- Table and Columns comments section

COMMENT ON COLUMN tb_qna_re.qna_re_no IS 'auto_increment'
/

-- Table tb_event_re

CREATE TABLE tb_event_re(
  event_re_no Number NOT NULL,
  evt_re_content Varchar2(1024 ) NOT NULL,
  evt_re_write_day Date DEFAULT SYSDATE NOT NULL,
  evt_re_del_check Number DEFAULT 0 NOT NULL,
  evt_no Number NOT NULL,
  mem_id Varchar2(32 ) NOT NULL
)
/

-- Create indexes for table tb_event_re

CREATE INDEX IX_Relationship37 ON tb_event_re (evt_no)
/

CREATE INDEX IX_Relationship58 ON tb_event_re (mem_id)
/

-- Add keys for table tb_event_re

ALTER TABLE tb_event_re ADD CONSTRAINT Key22 PRIMARY KEY (event_re_no)
/

-- Table and Columns comments section

COMMENT ON COLUMN tb_event_re.event_re_no IS 'auto_increment'
/

-- Table tb_notice_re

CREATE TABLE tb_notice_re(
  notice_re_no Number NOT NULL,
  ntc_re_content Varchar2(1024 ) NOT NULL,
  ntc_re_write_day Date DEFAULT SYSDATE NOT NULL,
  ntc_re_del_check Number DEFAULT 0 NOT NULL,
  notice_no Number NOT NULL,
  mem_id Varchar2(32 ) NOT NULL
)
/

-- Create indexes for table tb_notice_re

CREATE INDEX IX_Relationship41 ON tb_notice_re (notice_no)
/

CREATE INDEX IX_Relationship64 ON tb_notice_re (mem_id)
/

-- Add keys for table tb_notice_re

ALTER TABLE tb_notice_re ADD CONSTRAINT Key24 PRIMARY KEY (notice_re_no)
/

-- Table and Columns comments section

COMMENT ON COLUMN tb_notice_re.notice_re_no IS 'auto_increment'
/

-- Table tb_qna

CREATE TABLE tb_qna(
  qna_no Number NOT NULL,
  qna_title Varchar2(256 ) NOT NULL,
  qna_write_day Date DEFAULT SYSDATE NOT NULL,
  qna_hits Number NOT NULL,
  qna_content Varchar2(4000 ) NOT NULL,
  qna_del_check Number DEFAULT 0 NOT NULL,
  qna_pw Varchar2(32 ),
  qna_pos Number NOT NULL,
  qna_ref Number NOT NULL,
  board_id Number NOT NULL,
  mem_id Varchar2(32 ) NOT NULL
)
/

-- Create indexes for table tb_qna

CREATE INDEX IX_Relationship24 ON tb_qna (qna_ref)
/

CREATE INDEX IX_Relationship32 ON tb_qna (board_id)
/

CREATE INDEX IX_Relationship66 ON tb_qna (mem_id)
/

-- Add keys for table tb_qna

ALTER TABLE tb_qna ADD CONSTRAINT Key19 PRIMARY KEY (qna_no)
/

-- Table and Columns comments section

COMMENT ON COLUMN tb_qna.qna_no IS 'auto_increment'
/

-- Table tb_notice

CREATE TABLE tb_notice(
  notice_no Number NOT NULL,
  ntc_title Varchar2(256 ) NOT NULL,
  ntc_write_day Date DEFAULT SYSDATE NOT NULL,
  ntc_hits Number NOT NULL,
  ntc_content Varchar2(4000 ) NOT NULL,
  ntc_del_check Number DEFAULT 0 NOT NULL,
  ntc_attached_file1 Varchar2(256 ),
  ntc_attached_file2 Varchar2(256 ),
  board_id Number NOT NULL,
  mem_id Varchar2(32 ) NOT NULL
)
/

-- Create indexes for table tb_notice

CREATE INDEX IX_Relationship35 ON tb_notice (board_id)
/

CREATE INDEX IX_Relationship63 ON tb_notice (mem_id)
/

-- Add keys for table tb_notice

ALTER TABLE tb_notice ADD CONSTRAINT Key16 PRIMARY KEY (notice_no)
/

-- Table and Columns comments section

COMMENT ON COLUMN tb_notice.notice_no IS 'auto_increment'
/

-- Table tb_review

CREATE TABLE tb_review(
  review_no Number NOT NULL,
  rvw_title Varchar2(256 ) NOT NULL,
  rvw_write_day Date DEFAULT SYSDATE NOT NULL,
  rvw_hits Number NOT NULL,
  rvw_content Varchar2(4000 ) NOT NULL,
  rvw_del_check Number NOT NULL,
  rvw_satisfaction Number DEFAULT 0 NOT NULL,
  product_no Number DEFAULT 10000 NOT NULL,
  board_id Number NOT NULL,
  mem_id Varchar2(32 ) NOT NULL
)
/

-- Create indexes for table tb_review

CREATE INDEX IX_Relationship27 ON tb_review (product_no)
/

CREATE INDEX IX_Relationship31 ON tb_review (board_id)
/

CREATE INDEX IX_Relationship60 ON tb_review (mem_id)
/

-- Add keys for table tb_review

ALTER TABLE tb_review ADD CONSTRAINT Key18 PRIMARY KEY (review_no)
/

-- Table and Columns comments section

COMMENT ON COLUMN tb_review.review_no IS 'auto_increment'
/

-- Table tb_review_re

CREATE TABLE tb_review_re(
  review_re_no Number NOT NULL,
  rvw_re_content Varchar2(1024 ) NOT NULL,
  rvw_re_write_day Date DEFAULT SYSDATE NOT NULL,
  rvw_re_del_check Number DEFAULT 0 NOT NULL,
  rvw_no Number NOT NULL,
  mem_id Varchar2(32 ) NOT NULL
)
/

-- Create indexes for table tb_review_re

CREATE INDEX IX_Relationship43 ON tb_review_re (rvw_no)
/

CREATE INDEX IX_Relationship57 ON tb_review_re (mem_id)
/

-- Add keys for table tb_review_re

ALTER TABLE tb_review_re ADD CONSTRAINT Key25 PRIMARY KEY (review_re_no)
/

-- Table and Columns comments section

COMMENT ON COLUMN tb_review_re.review_re_no IS 'auto_increment'
/

-- Create relationships section ------------------------------------------------- 

ALTER TABLE tb_notice ADD CONSTRAINT Relationship35 FOREIGN KEY (board_id) REFERENCES tb_board (board_cd)
/

ALTER TABLE tb_faq ADD CONSTRAINT Relationship34 FOREIGN KEY (board_id) REFERENCES tb_board (board_cd)
/

ALTER TABLE tb_event ADD CONSTRAINT Relationship33 FOREIGN KEY (board_id) REFERENCES tb_board (board_cd)
/

ALTER TABLE tb_qna ADD CONSTRAINT Relationship32 FOREIGN KEY (board_id) REFERENCES tb_board (board_cd)
/

ALTER TABLE tb_review ADD CONSTRAINT Relationship31 FOREIGN KEY (board_id) REFERENCES tb_board (board_cd)
/

ALTER TABLE tb_review ADD CONSTRAINT Relationship27 FOREIGN KEY (product_no) REFERENCES tb_product (product_no)
/

ALTER TABLE tb_qna ADD CONSTRAINT Relationship24 FOREIGN KEY (qna_ref) REFERENCES tb_qna (qna_no)
/

ALTER TABLE tb_product_n_cart ADD CONSTRAINT Relationship14 FOREIGN KEY (product_no) REFERENCES tb_product (product_no)
/

ALTER TABLE tb_product_n_interest ADD CONSTRAINT Relationship12 FOREIGN KEY (product_no) REFERENCES tb_product (product_no)
/

ALTER TABLE tb_product_n_order ADD CONSTRAINT Relationship10 FOREIGN KEY (order_no) REFERENCES tb_order (order_no)
/

ALTER TABLE tb_product_n_order ADD CONSTRAINT Relationship9 FOREIGN KEY (product_no) REFERENCES tb_product (product_no)
/

ALTER TABLE tb_event_re ADD CONSTRAINT Relationship37 FOREIGN KEY (evt_no) REFERENCES tb_event (event_no)
/

ALTER TABLE tb_qna_re ADD CONSTRAINT Relationship39 FOREIGN KEY (qna_no) REFERENCES tb_qna (qna_no)
/

ALTER TABLE tb_notice_re ADD CONSTRAINT Relationship41 FOREIGN KEY (notice_no) REFERENCES tb_notice (notice_no)
/

ALTER TABLE tb_review_re ADD CONSTRAINT Relationship43 FOREIGN KEY (rvw_no) REFERENCES tb_review (review_no)
/

ALTER TABLE tb_product ADD CONSTRAINT Relationship49 FOREIGN KEY (category_cd) REFERENCES tb_category (category_cd)
/

ALTER TABLE tb_product_n_order ADD CONSTRAINT Relationship50 FOREIGN KEY (process_cd) REFERENCES tb_process (process_cd)
/

ALTER TABLE tb_order ADD CONSTRAINT Relationship51 FOREIGN KEY (credit_cd) REFERENCES tb_credit (credit_cd)
/

ALTER TABLE tb_order ADD CONSTRAINT Relationship53 FOREIGN KEY (delivery_com_cd) REFERENCES tb_delivery_com (delivery_com_cd)
/

ALTER TABLE tb_order ADD CONSTRAINT Relationship56 FOREIGN KEY (mem_id) REFERENCES tb_member (mem_id)
/

ALTER TABLE tb_review_re ADD CONSTRAINT Relationship57 FOREIGN KEY (mem_id) REFERENCES tb_member (mem_id)
/

ALTER TABLE tb_event_re ADD CONSTRAINT Relationship58 FOREIGN KEY (mem_id) REFERENCES tb_member (mem_id)
/

ALTER TABLE tb_event ADD CONSTRAINT Relationship59 FOREIGN KEY (mem_id) REFERENCES tb_member (mem_id)
/

ALTER TABLE tb_review ADD CONSTRAINT Relationship60 FOREIGN KEY (mem_id) REFERENCES tb_member (mem_id)
/

ALTER TABLE tb_faq ADD CONSTRAINT Relationship61 FOREIGN KEY (mem_id) REFERENCES tb_member (mem_id)
/

ALTER TABLE tb_member ADD CONSTRAINT Relationship62 FOREIGN KEY (mem_level_cd) REFERENCES tb_mem_level (mem_level_cd)
/

ALTER TABLE tb_notice ADD CONSTRAINT Relationship63 FOREIGN KEY (mem_id) REFERENCES tb_member (mem_id)
/

ALTER TABLE tb_notice_re ADD CONSTRAINT Relationship64 FOREIGN KEY (mem_id) REFERENCES tb_member (mem_id)
/

ALTER TABLE tb_qna_re ADD CONSTRAINT Relationship65 FOREIGN KEY (mem_id) REFERENCES tb_member (mem_id)
/

ALTER TABLE tb_qna ADD CONSTRAINT Relationship66 FOREIGN KEY (mem_id) REFERENCES tb_member (mem_id)
/

ALTER TABLE tb_mem_level_n_board ADD CONSTRAINT Relationship67 FOREIGN KEY (mem_level_cd) REFERENCES tb_mem_level (mem_level_cd)
/

ALTER TABLE tb_mem_level_n_board ADD CONSTRAINT Relationship68 FOREIGN KEY (board_cd) REFERENCES tb_board (board_cd)
/

ALTER TABLE tb_product_n_interest ADD CONSTRAINT Relationship69 FOREIGN KEY (mem_id) REFERENCES tb_member (mem_id)
/

ALTER TABLE tb_product_n_cart ADD CONSTRAINT Relationship70 FOREIGN KEY (mem_id) REFERENCES tb_member (mem_id)
/


ALTER TABLE tb_product_n_interest RENAME TO tb_interest; 
ALTER TABLE tb_product_n_cart RENAME TO tb_cart; 
