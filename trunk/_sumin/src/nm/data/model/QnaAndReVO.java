package nm.data.model;

import java.util.Date;

public class QnaAndReVO {
	private int qna_no;
	private String qna_title;
	private Date qna_write_day;
	private int qna_hits;
	private String qna_content;
	private int qna_del_check;
	private String qna_pw;
	private int qna_pos;
	private int qna_ref;
	private int board_id;
	private String mem_id;
	
	private int qna_re_no;
	private String qna_re_content;
	private Date qna_re_write_day;
	private int qna_re_del_check;
	private int qna_no;
	private String mem_id;
	
	
}

/*

-- 비밀글 조회시 비밀번호 맞는지 확인하는 SQL 문장
-- 글번호, 제목, 작성일, 조회수, 내용, 비밀번호, 답글위치, 참조글번호, 회원아이디, 댓글갯수(삭제안된걸로, 글번호에 해당하는값)
SELECT q.qna_no, qna_title, qna_write_day, qna_hits, qna_content, qna_pw, qna_pos, qna_ref, q.mem_id, COUNT(qna_re_no)  
FROM tb_qna q LEFT OUTER JOIN tb_qna_re r
ON (q.qna_no = r.qna_no)
WHERE qna_del_check=0
AND q.qna_no=4
AND q.qna_pw='1234'
GROUP BY q.qna_no, qna_title, qna_write_day, qna_hits, qna_content, qna_pw, qna_pos, qna_ref, q.mem_id
ORDER BY qna_ref DESC, qna_pos DESC;




-- 일반글조회
-- 글번호, 제목, 작성일, 조회수, 내용, 비밀번호, 답글위치, 참조글번호, 회원아이디, 댓글갯수(삭제안된걸로, 글번호에 해당하는값)
SELECT q.qna_no, qna_title, qna_write_day, qna_hits, qna_content, qna_pw, qna_pos, qna_ref, q.mem_id, COUNT(qna_re_no)  
FROM tb_qna q LEFT OUTER JOIN tb_qna_re r
ON (q.qna_no = r.qna_no)
WHERE qna_del_check=0
AND q.qna_no=1
GROUP BY q.qna_no, qna_title, qna_write_day, qna_hits, qna_content, qna_pw, qna_pos, qna_ref, q.mem_id
ORDER BY qna_ref DESC, qna_pos DESC;


-------------------------------------------------------------------------------------
-- QnA 검색하는 SQL문

-- 제목 검색
SELECT q.qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, q.mem_id, COUNT(qna_re_no)  
FROM tb_qna q LEFT OUTER JOIN tb_qna_re r
ON (q.qna_no = r.qna_no)
WHERE qna_del_check=0
AND qna_title LIKE '%답변%'
GROUP BY q.qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, q.mem_id
ORDER BY qna_ref DESC, qna_pos DESC;


-- 내용 검색
SELECT q.qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, q.mem_id, COUNT(qna_re_no)  
FROM tb_qna q LEFT OUTER JOIN tb_qna_re r
ON (q.qna_no = r.qna_no)
WHERE qna_del_check=0
AND qna_content LIKE '%비누%'
GROUP BY q.qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, q.mem_id
ORDER BY qna_ref DESC, qna_pos DESC;

-- 글쓴이 검색
SELECT q.qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, q.mem_id, COUNT(qna_re_no)  
FROM tb_qna q LEFT OUTER JOIN tb_qna_re r
ON (q.qna_no = r.qna_no)
WHERE qna_del_check=0
AND q.mem_id LIKE '%sora%'
GROUP BY q.qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, q.mem_id
ORDER BY qna_ref DESC, qna_pos DESC;


-- 제목+내용 검색
SELECT q.qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, q.mem_id, COUNT(qna_re_no)  
FROM tb_qna q LEFT OUTER JOIN tb_qna_re r
ON (q.qna_no = r.qna_no)
WHERE qna_del_check=0
AND (qna_title LIKE '%답변%'
OR qna_content LIKE '%답변%')
GROUP BY q.qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, q.mem_id
ORDER BY qna_ref DESC, qna_pos DESC;


-- 댓글 갯수 같이 가져오는 SQL문
SELECT q.qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, q.mem_id, COUNT(qna_re_no)  
FROM tb_qna q LEFT OUTER JOIN tb_qna_re r
ON (q.qna_no = r.qna_no)
WHERE qna_del_check=0
GROUP BY q.qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, q.mem_id
ORDER BY qna_ref DESC, qna_pos DESC;

--*/
