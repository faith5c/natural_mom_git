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
-- 글번호, 제목, 작성일, 조회수, 답글여부, 비밀글여부, 회원아이디, 댓글갯수 (삭제안된글 가져옴)
-- (html : qua_answer_check 가 1이면 '답변'말머리 달아줌, qna_secret이 1이면 '비밀글(자물쇠표시)' 제목뒤에 달아줌 )
-- (html : 댓글 갯수가 0이 아니라면 표시해줌)

-- 댓글 갯수 같이 가져오는 SQL문
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_answer_check", "qna_secret", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_answer_check", "qna_secret", q."mem_id"
ORDER BY "qna_no" DESC;

-------------------------------------------------------------------------------------------
-- QnA 검색하는 SQL문

-- 제목 검색
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_answer_check", "qna_secret", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
AND "qna_title" LIKE '%답변%'
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_answer_check", "qna_secret", q."mem_id"
ORDER BY "qna_no" DESC;


-- 내용 검색
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_answer_check", "qna_secret", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
AND "qna_content" LIKE '%비누%'
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_answer_check", "qna_secret", q."mem_id"
ORDER BY "qna_no" DESC;

-- 글쓴이 검색
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_answer_check", "qna_secret", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
AND q."mem_id" LIKE '%sora%'
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_answer_check", "qna_secret", q."mem_id"
ORDER BY "qna_no" DESC;

-- 제목+내용 검색
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_answer_check", "qna_secret", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
AND ("qna_title" LIKE '%답변%'
OR "qna_content" LIKE '%답변%')
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_answer_check", "qna_secret", q."mem_id"
ORDER BY "qna_no" DESC;

---------------------------------------------------------------------------------------------

-- Q&A 글작성하는 SQL문
-- 글번호, 제목, 작성일, 조회수, 내용, 답글여부, 삭제여부, 비밀글여부, 비밀번호, 부모게시글, 게시판아이디, 회원아이디 입력

-- 일반글 작성인 경우
INSERT INTO "tb_qna" 
( 
"qna_no",
"qna_title", "qna_write_day", "qna_hits", "qna_content", 
"qna_answer_check", "qna_del_check", "qna_secret", "qna_pw", 
"qna_parents", "board_id", "mem_id"
) 
VALUES(
QNA_NO_SEQ.NEXTVAL,
'안녕하세요',SYSDATE, 0, '내용이지요',
0,0,0,null,
null,4,'soomin',
);
