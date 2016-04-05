-- 게시판 목록 보기
-- 글번호, 제목, 작성일, 조회수, 비밀번호, 답글위치, 참조글번호, 회원아이디, 댓글갯수 (삭제안된글 가져옴)
-- (html : qua_answer_check 가 1이면 '답변'말머리 달아줌, qna_secret이 1이면 '비밀글(자물쇠표시)' 제목뒤에 달아줌 )
-- (html : 댓글 갯수가 0이 아니라면 표시해줌)


-- 뷰 만듦
CREATE VIEW v_qna_qnare 
AS
SELECT q.qna_no, qna_title, qna_write_day, qna_hits, qna_content, qna_pw, qna_pos, qna_ref, q.mem_id, 
NVL((SELECT COUNT(qna_re_no) FROM tb_qna_re r WHERE r.qna_no=q.qna_no AND r.qna_re_del_check=0), 0) as qna_re_count 
FROM tb_qna q LEFT OUTER JOIN tb_qna_re r
ON (q.qna_no = r.qna_no)
WHERE qna_del_check=0
GROUP BY q.qna_no, qna_title, qna_write_day, qna_hits, qna_content, qna_pw, qna_pos, qna_ref, q.mem_id
ORDER BY qna_ref DESC, qna_pos DESC;

-- 일반글하나 조회 (qna_no로 찾음)
SELECT qna_no, qna_title, qna_write_day, qna_hits, qna_content, qna_pw, qna_pos, qna_ref, mem_id, qna_re_count
FROM v_qna_qnare WHERE qna_no=1;

-- 비밀글하나 확인하는 문장 (qna_no, qna_pw로 찾음)
SELECT qna_no FROM v_qna_qnare WHERE qna_no=4 AND qna_pw='1234';


-- 모든 글 조회
SELECT qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, mem_id, qna_re_count  
FROM v_qna_qnare
GROUP BY qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, mem_id, qna_re_count  
ORDER BY qna_ref DESC, qna_pos DESC;

--------------------------------------------------------------

-- 검색(제목)
SELECT qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, mem_id, qna_re_count  
FROM v_qna_qnare
WHERE qna_title LIKE '%답변%'
GROUP BY qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, mem_id, qna_re_count  
ORDER BY qna_ref DESC, qna_pos DESC;

-- 검색(내용)
SELECT qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, mem_id, qna_re_count  
FROM v_qna_qnare
WHERE qna_content LIKE '%답변%'
GROUP BY qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, mem_id, qna_re_count  
ORDER BY qna_ref DESC, qna_pos DESC;

-- 검색(제목+내용)
SELECT qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, mem_id, qna_re_count  
FROM v_qna_qnare
WHERE (qna_title LIKE '%답변%' OR qna_content LIKE '%답변%')
GROUP BY qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, mem_id, qna_re_count  
ORDER BY qna_ref DESC, qna_pos DESC;

