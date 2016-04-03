--<<주문-회원>>--
---주문조회(뷰 생성)
CREATE OR REPLACE VIEW v_order_list AS SELECT "o"."order_no", "o"."order_date", "p"."represent_img", "p"."product_name", 
"po"."buy_num", "o"."charge", "pr"."process_nm", "m"."mem_id"
FROM "tb_order" "o", "tb_member" "m", "tb_product" "p", "tb_product_n_order" "po", "tb_process" "pr"
WHERE "o"."order_no" = "po"."order_no" AND "o"."mem_id" = "m"."mem_id" AND "p"."product_no" = "po"."product_no" 
AND "pr"."process_cd" = "po"."process_cd";

---주문조회(리스트, 회원별로 출력)
SELECT "order_no", "order_date", "represent_img", "product_name", 
"buy_num", "charge", "process_nm", "mem_id" FROM v_order_list WHERE "mem_id" = 'sora';

--- 주문하기(insert) "tb_order" 생성 과 동시에 pk 값 return "tb_product_n_order" 레코드 생성
--- "tb_product_n_order" 레코드 생성 실패 시 "tb_order" 롤백

INSERT INTO "tb_order" ("charge", "credit_num", "credit_exp", "rcv_name", "rcv_phone", "rcv_addr_post", 
"rcv_addr_detail", "delivery_msg", "tracking_num", "credit_cd", "delivery_com_cd", "mem_id", "order_no") VALUES 
(4300.0,1234123412341234,1.0,'최소라','010-1111-1111','111-228','서울시 광진구 구의2동 구의아파트 101동 202호',
'무인택배함에 넣어주세요',0.0,11.0,4.0,'sora', ORDER_NO_SEQ.NEXTVAL);

INSERT INTO "tb_order" ("charge", "credit_num", "credit_exp", "rcv_name", "rcv_phone", "rcv_addr_post", 
"rcv_addr_detail", "delivery_msg", "tracking_num", "credit_cd", "delivery_com_cd", "mem_id", "order_no") VALUES 
(4300.0,1234123412341234,1.0,'최소라','010-1111-1111','111-228','서울시 광진구 구의2동 구의아파트 101동 202호',
'무인택배함에 넣어주세요',0.0,(SELECT "c"."credit_cd" FROM "tb_credit" "c" WHERE "c"."credit_nm" = '롯데'),
(SELECT "d"."delivery_com_cd" FROM "tb_delivery_com" "d" WHERE "d"."delivery_com_nm" = '옐로우캡'),'sora', ORDER_NO_SEQ.NEXTVAL);


INSERT INTO "tb_product_n_order" ("product_no", "order_no", "buy_num", "process_cd") VALUES (10003.0,10007,1.0,32);

--- 배송 상태 및 환불(update)
--전체
UPDATE "NMDB"."tb_product_n_order" SET "process_cd" = '31' WHERE "order_no" = '10001';
--일부
UPDATE "tb_product_n_order" "po" SET "po"."process_cd" = '21' 
WHERE EXISTS(SELECT "p"."product_no" FROM "tb_product" "p" 
WHERE "p"."product_no" = "po"."product_no" AND "p"."product_name" = '쑥 비누') AND "order_no" = '10007'; 


--<<주문-관리자>>--
---주문관리(뷰 생성)
CREATE OR REPLACE VIEW v_order_manager AS SELECT "o"."order_date", "o"."order_no", "m"."mem_name", "p"."product_name", 
"po"."buy_num", "o"."charge", "o"."delivery_msg", "o"."tracking_num", "pr"."process_nm"
FROM "tb_order" "o", "tb_member" "m", "tb_product" "p", "tb_product_n_order" "po", "tb_process" "pr"
WHERE "o"."order_no" = "po"."order_no" AND "o"."mem_id" = "m"."mem_id" AND "p"."product_no" = "po"."product_no" 
AND "pr"."process_cd" = "po"."process_cd";

---주문관리(리스트)
SELECT * FROM v_order_manager;

--- 운송장 등록(묶음 선택이 안되서 운송장도 따로 한장씩)
UPDATE "NMDB"."tb_order" SET "tracking_num" = '20101111' WHERE "order_no" = '10001';

--- 처리상태 변경(update, 구매확정 불가)
--전체
UPDATE "NMDB"."tb_product_n_order" SET "process_cd" = '31' WHERE "order_no" = '10001';
--일부
UPDATE "tb_product_n_order" "po" SET "po"."process_cd" = '21' 
WHERE EXISTS(SELECT "p"."product_no" FROM "tb_product" "p" 
WHERE "p"."product_no" = "po"."product_no" AND "p"."product_name" = '쑥 비누') AND "order_no" = '10007'; 


--<<매출>>--

--- 매출조회(리스트/ 당일, 7일, 1개월, 3개월, 6개월, 사용자 지정) 뷰 생성할것
----(주문수, 품목수, 상품구매 금액, 배송비, 결제 합계(실 카드결제 금액), 환불상품 금액 합계(배송비 포함), 환불 합계, 순매출)

--(select count("o"."product_no") from "tb_product_n_order" "o" where "o"."product_no" =  "p"."product_no" and 
--"o"."process_cd" = 21) as all_sells

CREATE OR REPLACE VIEW v_sales_statement AS 
SELECT (SELECT COUNT("order_no") FROM "tb_order") AS "order_no", 
(SELECT COUNT("product_no") FROM "tb_product" ) AS "product_no", 
((SELECT SUM("o"."charge") FROM "tb_order" "o", "tb_product_n_order" "po" WHERE "o"."order_no" = "po"."order_no" AND 
"po"."process_cd" = 21 ) - (SELECT COUNT("o"."order_no") FROM "tb_order" "o", "tb_product_n_order" "po" WHERE 
"o"."order_no" = "po"."order_no" AND "po"."process_cd" = 21)*3000) AS "sale_sum",
(SELECT COUNT("o"."order_no") FROM "tb_order" "o", "tb_product_n_order" "po" WHERE "o"."order_no" = "po"."order_no" 
AND "po"."process_cd" = 21)*3000 AS "delivery_sum",
(SELECT SUM("o"."charge") FROM "tb_order" "o", "tb_product_n_order" "po" WHERE "o"."order_no" = "po"."order_no" AND 
"po"."process_cd" = 21) AS "sale_total_sum",
(SELECT SUM("o"."charge") FROM "tb_order" "o", "tb_product_n_order" "po" WHERE "o"."order_no" = "po"."order_no" AND 
"po"."process_cd" = 32) AS "refund_sum",
((SELECT SUM("o"."charge") FROM "tb_order" "o", "tb_product_n_order" "po" WHERE "o"."order_no" = "po"."order_no" AND 
"po"."process_cd" = 32) - (SELECT COUNT("o"."charge") FROM "tb_order" "o", "tb_product_n_order" "po" WHERE 
"o"."order_no" = "po"."order_no" AND "po"."process_cd" = 32)*3000) AS "refund_total_sum",
((SELECT SUM("o"."charge") FROM "tb_order" "o", "tb_product_n_order" "po" WHERE "o"."order_no" = "po"."order_no" AND 
"po"."process_cd" = 21) - (SELECT COUNT("o"."order_no") FROM "tb_order" "o", "tb_product_n_order" "po" WHERE 
"o"."order_no" = "po"."order_no" AND "po"."process_cd" = 21)*3000) AS "net_sale"
FROM DUAL;
--WHERE "o"."order_date" >= '2016-03-30' AND "o"."order_date" <= SYSDATE;

SELECT * FROM v_sales_statement;



--<<학원가서 고칠것>>-- 이거랑 디테일을 널로
ALTER TABLE "tb_product" 
MODIFY "detail_img" NOT NULL;

--<<공지사항-회원>>--
--- 게시글보기(전체 리스트)
SELECT "notice_no", "ntc_title", "ntc_write_day", "ntc_hits", "mem_id" FROM "tb_notice" WHERE "ntc_del_check" = 0
ORDER BY "notice_no" DESC;
--- 게시글조회(제목, 내용, 작성자, 글쓴이, 제목+내용)
-- 제목 검색
SELECT "n"."notice_no",  "ntc_title",  "ntc_write_day",  "ntc_hits",  "n"."mem_id", COUNT("notice_re_no")  
FROM "tb_notice" "n" LEFT OUTER JOIN "tb_notice_re" "r"
ON ("n"."notice_no" = "r"."notice_no")
WHERE  "ntc_del_check"=0
AND  "ntc_title" LIKE '%답변%'
GROUP BY "n"."notice_no",  "ntc_title",  "ntc_write_day",  "ntc_hits",  "n"."mem_id"
ORDER BY "notice_no" DESC;


-- 내용 검색
SELECT "n"."notice_no",  "ntc_title",  "ntc_write_day",  "ntc_hits",  "n"."mem_id", COUNT("notice_re_no")  
FROM "tb_notice" "n" LEFT OUTER JOIN "tb_notice_re" "r"
ON ("n"."notice_no" = "r"."notice_no")
WHERE  "ntc_del_check"=0
AND  "ntc_content" LIKE '%비누%'
GROUP BY "n"."notice_no",  "ntc_title",  "ntc_write_day",  "ntc_hits",  "n"."mem_id"
ORDER BY "notice_no" DESC;

-- 글쓴이 검색
SELECT "n"."notice_no",  "ntc_title",  "ntc_write_day",  "ntc_hits",  "n"."mem_id", COUNT("notice_re_no")  
FROM "tb_notice" "n" LEFT OUTER JOIN "tb_notice_re" "r"
ON ("n"."notice_no" = "r"."notice_no")
WHERE  "ntc_del_check"=0
AND "n"."mem_id" LIKE '%admin01%'
GROUP BY "n"."notice_no",  "ntc_title",  "ntc_write_day",  "ntc_hits",  "n"."mem_id"
ORDER BY "notice_no" DESC;

-- 제목+내용 검색
SELECT "n"."notice_no",  "ntc_title",  "ntc_write_day",  "ntc_hits",  "n"."mem_id", COUNT("notice_re_no")  
FROM "tb_notice" "n" LEFT OUTER JOIN "tb_notice_re" "r"
ON ("n"."notice_no" = "r"."notice_no")
WHERE  "ntc_del_check"=0
AND ("ntc_title" LIKE '%답변%'
OR  "ntc_content" LIKE '%답변%')
GROUP BY "n"."notice_no",  "ntc_title",  "ntc_write_day",  "ntc_hits",  "n"."mem_id"
ORDER BY "notice_no" DESC;


--- 게시글 상세보기
SELECT "notice_no", "ntc_title", "ntc_write_day", "ntc_hits", "ntc_content", "ntc_attached_file1", "ntc_attached_file2", 
"board_id", "mem_id" FROM "tb_notice" WHERE "ntc_del_check" = 0 AND "notice_no" = 1;

--- 댓글 생성
INSERT INTO "tb_notice_re" ("notice_re_no", "ntc_re_content", "ntc_re_del_check", "notice_no", "mem_id") VALUES (NOTICE_RE_NO_SEQ.NEXTVAL,'불편을 드려 대단히 죄송합니다, 더 좋은 제품으로 보답하는 자연맘 되도록 하겠습니다.',0.0,4.0,'admin02');

--- 댓글 보기
SELECT * FROM "tb_notice_re" WHERE "notice_no" = '1' AND "ntc_re_del_check" = '0';

--- 댓글 수정
UPDATE "NMDB"."tb_notice_re" SET "ntc_re_content" = '흐호호', "ntc_re_write_day" = SYSDATE WHERE "notice_re_no" = 7;

--- 댓글 삭제
UPDATE "NMDB"."tb_notice_re" SET "ntc_re_del_check" = 1 WHERE "notice_re_no" = 7;

--<<공지사항-관리자>>--
--- 게시글보기(전체 리스트)
SELECT "notice_no", "ntc_title", "ntc_write_day", "ntc_hits", "mem_id" FROM "tb_notice" WHERE "ntc_del_check" = 0 
ORDER BY "notice_no" DESC;
--- 게시글조회(제목, 내용, 작성자, 글쓴이, 제목+내용)

--- 게시글 작성(생성)
INSERT INTO tb_notice ("ntc_title", "ntc_hits", "ntc_content", "ntc_del_check", "ntc_attached_file1", 
"ntc_attached_file2", "board_id", "mem_id", "notice_no") 
VALUES ('자연맘 사이트 오픈을 축하해주세요',72.0,
'<img src="http://i.imgur.com/jhU5RJN.jpg" width="299"><br>자연맘 사이트가 그랜드 오픈했습니다.<br>이제 온라인으로 친환경 자연맘 
비누를 마음껏 구입하실 수 있습니다.<br><br>여러분 축하해주세요 짝짝짝!<br>',
0.0,'null','null',1.0,'admin01', NOTICE_NO_SEQ.NEXTVAL);

--- 게시글 수정(업데이트)
UPDATE "NMDB"."tb_notice" SET "ntc_title" = '죄송죄송^^훗', "ntc_content" = '죄송죄송함함', "ntc_write_day" = SYSDATE  
WHERE "notice_no" = '4';

--- 게시글 상세보기
SELECT "notice_no", "ntc_title", "ntc_write_day", "ntc_hits", "ntc_content", "ntc_attached_file1", "ntc_attached_file2", 
"board_id", "mem_id" FROM "tb_notice" WHERE "ntc_del_check" = 0 AND "notice_no" = 1;

--- 댓글 생성
INSERT INTO "tb_notice_re" ("notice_re_no", "ntc_re_content", "ntc_re_del_check", "notice_no", "mem_id") VALUES (NOTICE_RE_NO_SEQ.NEXTVAL,'불편을 드려 대단히 죄송합니다, 더 좋은 제품으로 보답하는 자연맘 되도록 하겠습니다.',0.0,4.0,'admin02');

--- 댓글 보기
SELECT * FROM "tb_notice_re" WHERE "notice_no" = '1' AND "ntc_re_del_check" = '0';

--- 댓글 수정
UPDATE "NMDB"."tb_notice_re" SET "ntc_re_content" = '흐호호', "ntc_re_write_day" = SYSDATE WHERE "notice_re_no" = 7;

--- 댓글 삭제
UPDATE "NMDB"."tb_notice_re" SET "ntc_re_del_check" = 1 WHERE "notice_re_no" = 7;

