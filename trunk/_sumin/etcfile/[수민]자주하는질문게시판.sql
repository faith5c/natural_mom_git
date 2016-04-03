------------------------------------------------------
--    자주하는 질문(FAQ) SQL
------------------------------------------------------

-- 목록 조회
-- 글번호, 제목 (삭제여부 확인, 게시판번호에 해당하는거)
SELECT "faq_no", "faq_title" 
FROM "tb_faq" 
WHERE "board_id"=3 AND "faq_del_check"=0 
ORDER BY "faq_no" ASC;

----------------------------------------------------------
-- 자주하는 질문 검색하는 SQL 문

-- 게시판 글 검색 (제목)
SELECT "faq_no", "faq_title" 
FROM "tb_faq" 
WHERE "board_id"=3 AND "faq_del_check"=0 
AND "faq_title" LIKE '%배송%'
ORDER BY "faq_no" ASC;


-- 게시판 글 검색 (내용)
SELECT "faq_no", "faq_title" 
FROM "tb_faq" 
WHERE "board_id"=3 AND "faq_del_check"=0 
AND "faq_content" LIKE '%주문%'
ORDER BY "faq_no" ASC;


-- 게시판 글 검색 (제목 + 내용)
SELECT "faq_no", "faq_title" 
FROM "tb_faq" 
WHERE "board_id"=3 AND "faq_del_check"=0 
AND ("faq_title" LIKE '%결제%'
OR "faq_content" LIKE '%결제%')
ORDER BY "faq_no" ASC;

-------------------------------------------------------
-- 게시판 글읽기
-- 글번호, 제목, 내용 (삭제여부 확인, 게시판번호에 해당하는거)
SELECT "faq_no", "faq_title", "faq_content" 
FROM "tb_faq" 
WHERE "board_id"=3 AND "faq_del_check"=0 
AND "faq_no"=1;

-------------------------------------------------------
-- 게시판 글쓰기
INSERT INTO "tb_faq" 
("faq_title", "faq_content", "faq_del_check", "board_id", "mem_id", "faq_no")
VALUES 
('환불하려면 어떻게 해야하나요?', 
'상단에 있는 주문조회메뉴를 눌러 상품을 선택하고 환불신청을 누르시면 됩니다.', 
0,3,'admin01', FAQ_NO_SEQ.NEXTVAL);

-------------------------------------------------------
-- 게시판 글수정
UPDATE "tb_faq" 
SET 
"faq_title"='환불하려면 어떻게 해야 하나요?', 
"faq_content"='상단에 있는 주문조회메뉴를 눌러 상품을 선택하고 환불신청 버튼을 누르시면 됩니다.'
WHERE "faq_no"=21;

-------------------------------------------------------
-- 게시판 글삭제
UPDATE "tb_faq"
SET
"faq_del_check"=1
WHERE "faq_no"=22;

-------------------------------------------------------