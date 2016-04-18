-- 글 위치로 글번호 외 가져옴
SELECT qna_no, qna_title, qna_ref, qna_pos from tb_qna WHERE qna_pos=0 AND qna_ref=1;

-- ref에 해당하는 pos 하나씩 뒤로 넘김 (이후에 pos의 자리에 데이터 추가) 아래의 pos는 부모꺼
UPDATE tb_qna SET qna_pos=qna_pos+1 WHERE qna_ref=4 AND qna_pos>1;

-- ref에 해당하는 pos 하나씩 앞으로 넘김 (이전에 pos의 자리에 데이터 삭제) 아래의 pos는 부모꺼
UPDATE tb_qna SET qna_pos=qna_pos-1 WHERE qna_ref=4 AND qna_pos>1;

-- 조회수 증가
UPDATE tb_qna SET qna_hits = qna_hits+1 WHERE qna_no=9;

-- 글하나 가져옴
SELECT qna_no, qna_title, mem_id, qna_pw, qna_content FROM tb_qna WHERE qna_no=1;

-- 	비밀글에 비밀번호 맞나 확인 (qna_no, qna_pw로 찾음)
SELECT COUNT(qna_no) FROM tb_qna WHERE qna_no=4 AND qna_pw='1234';


-- Q&A 글작성하는 SQL문
-- (html : 답글이면 [답변]말머리 넣어서 제목 칸에다가 일단 표시함)
-- 글작성
-- 글번호, 제목, 작성일, 조회수, 내용, 삭제여부, 비밀번호, 답글위치, 참조글번호, 게시판아이디, 회원아이디 입력
INSERT INTO tb_qna (qna_no,
qna_title,qna_write_day,qna_hits,
qna_content,
qna_del_check, qna_pw, 
qna_pos,qna_ref,
board_id, mem_id)
VALUES (QNA_NO_SEQ.NEXTVAL,
'비누 때문에 미끄러졌어요',SYSDATE,0, 
'너무 미끄러워요. 안미끄러운 비누는 없나요?',
0,null,
0, QNA_NO_SEQ.CURRVAL,
4, 'soomin');


-- 글 수정
-- 제목, 내용, 비밀번호 입력 (글번호에 해당하는 거 변경)
UPDATE tb_qna 
SET 
qna_title='비누 때문에 미끄러졌어요ㅠ', 
qna_content='너무 미끄러워요. 안미끄러운 비누는 없나요???',
qna_pw='1111'
WHERE qna_no=10;


-- 글 삭제
UPDATE tb_qna SET qna_del_check=1 WHERE qna_no=7;
-- (글이 삭제되면 이어서 자동으로 답변 글도 삭제하게 해야함)
UPDATE tb_qna SET qna_del_check=1 WHERE qna_ref=7;
-- (글이 삭제되면 이어서 댓글도 삭제하게 해야함)
UPDATE tb_qna_re SET qna_re_del_check=1 WHERE qna_no=7;

