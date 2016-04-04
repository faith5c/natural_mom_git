-- 게시판 글 쓴 내용 입력 (프론트)
제목, 작성자, 내용
INSERT INTO tb_review (rvw_title, rvw_write_day, rvw_hits, rvw_content, rvw_del_check, rvw_satisfaction, product_no, board_id, mem_id, review_no) VALUES ('어메이징',SYSDATE,5,'부들부들 해져요 짱좋! ',0,4,10003,5,'soojin', REVIEW_NO_SEQ.NEXTVAL);

-- 글 수정하기
UPDATE tb_review SET rvw_title = '', rvw_content = ''
WHERE review_no = ?;

-- 글 삭제하기(백&프론트)
UPDATE tb_review SET rvw_del_check = 1
WHERE review_no = ?;