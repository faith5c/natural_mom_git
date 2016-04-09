-- 게시판 댓글 뽑기 (프론트)
아이디, 댓글 내용, 댓글 단 날짜
SELECT review_re_no,  rvw_re_content, rvw_re_write_day, mem_id
FROM tb_review_re
WHERE rvw_re_del_check = 0 AND rvw_no = 7;

-- 게시판 댓글 뽑기 (백)
아이디, 댓글 내용, 날짜
SELECT review_re_no, rvw_re_content, rvw_re_write_day, mem_id
FROM tb_review_re
WHERE rvw_re_del_check = 0 AND rvw_no = 7;

-- 댓글 등록하기(백&프론트)
INSERT INTO tb_review_re (rvw_re_content, rvw_re_write_day, rvw_re_del_check, rvw_no, mem_id, review_re_no) VALUES ('구매해주셔서 고맙습니다~^^ 더 좋은 제품으로 보답하는 자연맘이 되겠습니다.',SYSDATE,0.0,1.0,'admin01', REVIEW_RE_NO_SEQ.NEXTVAL);

-- 댓글 수정하기(백&프론트)
UPDATE tb_review_re SET rvw_re_content = '넘나 좋다 전해라~'
WHERE review_re_no = 1;

-- 댓글 삭제하기(백&프론트)
UPDATE tb_review_re SET rvw_re_del_check = 1
WHERE review_re_no = ?;
