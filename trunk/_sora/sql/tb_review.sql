-- 게시판 목록 뽑기 (프론트)
제목, 작성자, 작성일, 만족도, 내용
SELECT "review_no", "rvw_title", "rvw_write_day", "rvw_hits", "rvw_content", "rvw_satisfaction", "mem_id"
FROM "tb_review"
WHERE "rvw_del_check" = 0 AND "product_no" = 10003;

-- 게시판 글 쓴 내용 입력 (프론트)
제목, 작성자, 내용
INSERT INTO "tb_review" ("rvw_title", "rvw_write_day", "rvw_hits", "rvw_content", "rvw_del_check", "rvw_satisfaction", "product_no", "board_id", "mem_id", "review_no") VALUES ('어메이징',SYSDATE,5,'부들부들 해져요 짱좋! ',0,4,10003,5,'soojin', REVIEW_NO_SEQ.NEXTVAL);

-- 게시판 글 수정 시 내용 불러오기 & 수정하기 (프론트)
SELECT "rvw_title", "rvw_content", "mem_id"
FROM "tb_review"
WHERE "review_no" = ?;

-- 게시판 목록 뽑기 (백)
상품번호, 상품명, 제목, 작성자, 작성일, 만족도
SELECT "r"."review_no", "r"."product_no", "p"."product_name", "r"."rvw_title",
"r"."mem_id", "r"."rvw_write_day", "r"."rvw_satisfaction"
FROM "tb_review" "r", "tb_product" "p"
WHERE "r"."product_no" = "p"."product_no"
AND "r"."rvw_del_check" = 0;

-- 게시판 내용 뽑기 (백)
상품번호, 상품명, 제목, 만족도, 작성자, 작성일, 조회수, 내용
SELECT "r"."product_no", "p"."product_name", "r"."rvw_title",
"r"."rvw_satisfaction", "r"."mem_id", "r"."rvw_write_day", 
"r"."rvw_hits", "r"."rvw_content"
FROM "tb_review" "r", "tb_product" "p"
WHERE "r"."product_no" = "p"."product_no"
AND "r"."review_no" = ?;

-- 글 삭제하기(백&프론트)
UPDATE "tb_review" SET "rvw_del_check" = 1
WHERE "review_no" = ?;

-- 제목으로 검색하기 (백)
SELECT "r"."review_no", "r"."product_no", "p"."product_name", "r"."rvw_title",
"r"."mem_id", "r"."rvw_write_day", "r"."rvw_satisfaction"
FROM "tb_review" "r", "tb_product" "p"
WHERE "r"."product_no" = "p"."product_no"
AND "r"."rvw_del_check" = 0
AND "r"."rvw_title" LIKE '%구입%';

-- 내용으로 검색하기 (백)
SELECT "r"."review_no", "r"."product_no", "p"."product_name", "r"."rvw_title",
"r"."mem_id", "r"."rvw_write_day", "r"."rvw_satisfaction"
FROM "tb_review" "r", "tb_product" "p"
WHERE "r"."product_no" = "p"."product_no"
AND "r"."rvw_del_check" = 0
AND "r"."rvw_content" LIKE '%짱좋%';

-- 글쓴이로 검색하기 (백)
SELECT "r"."review_no", "r"."product_no", "p"."product_name", "r"."rvw_title",
"r"."mem_id", "r"."rvw_write_day", "r"."rvw_satisfaction"
FROM "tb_review" "r", "tb_product" "p"
WHERE "r"."product_no" = "p"."product_no"
AND "r"."rvw_del_check" = 0
AND "r"."mem_id" LIKE '%so%';

-- 제목 + 내용으로 검색하기 (백)
SELECT "r"."review_no", "r"."product_no", "p"."product_name", "r"."rvw_title",
"r"."mem_id", "r"."rvw_write_day", "r"."rvw_satisfaction"
FROM "tb_review" "r", "tb_product" "p"
WHERE "r"."product_no" = "p"."product_no"
AND "r"."rvw_del_check" = 0
AND ("r"."rvw_title" LIKE '%짱좋%' OR "r"."rvw_content" LIKE '%짱좋%');