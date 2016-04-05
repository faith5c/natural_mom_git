
-- 댓글작성
-- 댓글번호, 내용, 작성일, 댓글삭제여부, 게시글번호, 회원아이디
INSERT INTO tb_qna_re 
(qna_re_no, qna_re_content, qna_re_write_day, qna_re_del_check, qna_no, mem_id)
VALUES (QNA_RE_NO_SEQ.NEXTVAL, '여기서 질문하면 되겠네요', SYSDATE, 0, 1, 'soojin');


-- 댓글조회
-- 댓글번호, 내용, 작성일, 댓글삭제여부, 회원아이디(삭제 안된걸로, 게시글번호에 맞는거)
SELECT qna_re_no, qna_re_content, qna_re_write_day, mem_id
FROM tb_qna_re
WHERE qna_re_del_check=0 AND qna_no=1;


-- 댓글 수정
-- 내용, 작성일 (댓글번호에 해당하는거 변경)
UPDATE tb_qna_re
SET 
qna_re_content='여기서 질문하면 되겠네용',
qna_re_write_day=SYSDATE 
WHERE qna_re_no=7;


-- 댓글 삭제
UPDATE tb_qna_re SET qna_re_del_check=1 WHERE qna_re_no=7;