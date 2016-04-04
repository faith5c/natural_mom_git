package nm.data.dao;

import java.util.Date;

import nm.data.model.QnaVO;

public interface IQnaDao {

	//글 작성
	int addQna(QnaVO qna);
	int addQna(String qna_title, int qna_hits, String qna_content,
			String qna_pw, int qna_pos, int qna_ref,  String mem_id);
	
	//글 수정
	int updateQna(int qna_no, String qna_title, String qna_content, String qna_pw);
	
	//글 삭제
	int deleteQna(int qna_no);
}
/*


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
-- 제목, 작성일, 내용, 비밀번호 입력 (글번호에 해당하는 거 변경)
UPDATE tb_qna 
SET 
qna_title='비누 때문에 미끄러졌어요ㅠ', 
qna_write_day=SYSDATE,
qna_content='너무 미끄러워요. 안미끄러운 비누는 없나요???',
qna_pw='1111'
WHERE qna_no=10;

-- 글 삭제
UPDATE tb_qna SET qna_del_check=1 WHERE qna_no=7;
-- (글이 삭제되면 이어서 자동으로 답변 글도 삭제하게 해야함)
UPDATE tb_qna SET qna_del_check=1 WHERE qna_ref=7;
-- (글이 삭제되면 이어서 댓글도 삭제하게 해야함)
UPDATE tb_qna_re SET qna_re_del_check=1 WHERE qna_no=7;

*/