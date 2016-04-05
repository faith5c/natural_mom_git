-- (html : 회원등급에 따른 권한은 자바스크립트에서 막음)
-- 회원테이블에서 회원아이디로 회원등급코드를 가져와서 
-- 회원등급과 게시판 테이블에서 QnA의 권한이 무엇인가 확인하는 문장

SELECT board_read, board_write, board_modify, board_delete 
FROM tb_mem_level_n_board 
WHERE board_cd=4 
AND mem_level_cd=
(SELECT mem_level_cd 
FROM tb_member 
WHERE mem_id='soomin');
