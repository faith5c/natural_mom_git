----------------------------------------------------
--  QnA SQL
----------------------------------------------------
-- (html : 회원등급에 따른 권한은 자바스크립트에서 막음)
-- 회원테이블에서 회원아이디로 회원등급코드를 가져와서 
-- 회원등급과 게시판 테이블에서 QnA의 권한이 무엇인가 확인하는 문장
SELECT "board_read", "board_write", "board_modify", "board_delete" 
FROM "tb_mem_level_n_board" 
WHERE "board_cd"=4 
AND "mem_level_cd"=
(SELECT "mem_level_cd" 
FROM "tb_member" 
WHERE "mem_id"='soomin');

--------------------------------------------------------------------------------------------
-- 게시판 목록 보기
-- 글번호, 제목, 작성일, 조회수, 비밀번호, 답글위치, 참조글번호, 회원아이디, 댓글갯수 (삭제안된글 가져옴)
-- (html : qua_answer_check 가 1이면 '답변'말머리 달아줌, qna_secret이 1이면 '비밀글(자물쇠표시)' 제목뒤에 달아줌 )
-- (html : 댓글 갯수가 0이 아니라면 표시해줌)

-- 댓글 갯수 같이 가져오는 SQL문
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_pw", "qna_pos", "qna_ref", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_pw", "qna_pos", "qna_ref", q."mem_id"
ORDER BY "qna_ref" DESC, "qna_pos" DESC;

-------------------------------------------------------------------------------------------
-- QnA 검색하는 SQL문

-- 제목 검색
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_pw", "qna_pos", "qna_ref", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
AND "qna_title" LIKE '%답변%'
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_pw", "qna_pos", "qna_ref", q."mem_id"
ORDER BY "qna_ref" DESC, "qna_pos" DESC;


-- 내용 검색
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_pw", "qna_pos", "qna_ref", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
AND "qna_content" LIKE '%비누%'
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_pw", "qna_pos", "qna_ref", q."mem_id"
ORDER BY "qna_ref" DESC, "qna_pos" DESC;

-- 글쓴이 검색
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_pw", "qna_pos", "qna_ref", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
AND q."mem_id" LIKE '%sora%'
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_pw", "qna_pos", "qna_ref", q."mem_id"
ORDER BY "qna_ref" DESC, "qna_pos" DESC;


-- 제목+내용 검색
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_pw", "qna_pos", "qna_ref", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
AND ("qna_title" LIKE '%답변%'
OR "qna_content" LIKE '%답변%')
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_pw", "qna_pos", "qna_ref", q."mem_id"
ORDER BY "qna_ref" DESC, "qna_pos" DESC;


---------------------------------------------------------------------------------------------

-- Q&A 글작성하는 SQL문
-- (html : 답글이면 [답변]말머리 넣어서 제목 칸에다가 일단 표시함)

-- 글작성
-- 글번호, 제목, 작성일, 조회수, 내용, 삭제여부, 비밀번호, 답글위치, 참조글번호, 게시판아이디, 회원아이디 입력
INSERT INTO "tb_qna" ("qna_no",
"qna_title","qna_write_day","qna_hits",
"qna_content",
"qna_del_check", "qna_pw", 
"qna_pos","qna_ref",
"board_id", "mem_id")
VALUES (QNA_NO_SEQ.NEXTVAL,
'비누 때문에 미끄러졌어요',SYSDATE,0, 
'너무 미끄러워요. 안미끄러운 비누는 없나요?',
0,null,
0, QNA_NO_SEQ.CURRVAL,
4, 'soomin');

------------------------------------------------------------------------------------------

-- 일반글조회
-- 글번호, 제목, 작성일, 조회수, 내용, 비밀번호, 답글위치, 참조글번호, 회원아이디, 댓글갯수(삭제안된걸로, 글번호에 해당하는값)
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_content", "qna_pw", "qna_pos", "qna_ref", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
AND q."qna_no"=1
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_content", "qna_pw", "qna_pos", "qna_ref", q."mem_id"
ORDER BY "qna_ref" DESC, "qna_pos" DESC;


-- 댓글조회
-- 댓글번호, 내용, 작성일, 댓글삭제여부, 회원아이디(삭제 안된걸로, 게시글번호에 맞는거)
SELECT "qna_re_no", "qna_re_content", "qna_re_write_day", "mem_id"
FROM "tb_qna_re"
WHERE "qna_re_del_check"=0 AND "qna_no"=1;


-- 댓글작성
-- 댓글번호, 내용, 작성일, 댓글삭제여부, 게시글번호, 회원아이디
INSERT INTO "tb_qna_re" 
("qna_re_no", "qna_re_content", "qna_re_write_day", "qna_re_del_check", "qna_no", "mem_id")
VALUES (QNA_RE_NO_SEQ.NEXTVAL, '여기서 질문하면 되겠네요', SYSDATE, 0, 1, 'soojin');
------------------------------------------------------------------------------------------

-- 비밀글 조회시 비밀번호 맞는지 확인하는 SQL 문장
-- 글번호, 제목, 작성일, 조회수, 내용, 비밀번호, 답글위치, 참조글번호, 회원아이디, 댓글갯수(삭제안된걸로, 글번호에 해당하는값)
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_content", "qna_pw", "qna_pos", "qna_ref", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
AND q."qna_no"=4
AND q."qna_pw"='1234'
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_content", "qna_pw", "qna_pos", "qna_ref", q."mem_id"
ORDER BY "qna_ref" DESC, "qna_pos" DESC;


-----------------------------------------------------------------------------------------------

-- 글 수정
-- 제목, 작성일, 내용, 비밀번호 입력 (글번호에 해당하는 거 변경)
UPDATE "tb_qna" 
SET 
"qna_title"='비누 때문에 미끄러졌어요ㅠ', 
"qna_write_day"=SYSDATE,
"qna_content"='너무 미끄러워요. 안미끄러운 비누는 없나요???',
"qna_pw"='1111'
WHERE "qna_no"=10;

-- 댓글 수정
-- 내용, 작성일 (댓글번호에 해당하는거 변경)
UPDATE "tb_qna_re"
SET 
"qna_re_content"='여기서 질문하면 되겠네용',
"qna_re_write_day"=SYSDATE 
WHERE "qna_re_no"=7;

-----------------------------------------------------------------------------------------------

-- 글 삭제
UPDATE "tb_qna" SET "qna_del_check"=1 WHERE "qna_no"=7;
-- (글이 삭제되면 이어서 자동으로 답변 글도 삭제하게 해야함)
UPDATE "tb_qna" SET "qna_del_check"=1 WHERE "qna_ref"=7;
-- (글이 삭제되면 이어서 댓글도 삭제하게 해야함)
UPDATE "tb_qna_re" SET "qna_re_del_check"=1 WHERE "qna_no"=7;



-- 댓글 삭제
UPDATE "tb_qna_re" SET "qna_re_del_check"=1 WHERE "qna_re_no"=7;
------------------------------------------------------------------------------------------------