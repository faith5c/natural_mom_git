package nm.data.dao;

import java.util.List;

import nm.data.model.QnaReVO;

public interface IQnaReDao {
	
	//댓글 조회
	List<QnaReVO> getQnaReByQnaNo(int qna_no);
	
	//댓글 작성
	int addQnaRe(QnaReVO qnare);
	int addQnaRe(String qna_re_content, int qna_no, String mem_id);
	
	//댓글 수정
	int updateQnaRe(int qna_re_no, String qna_re_content);
	
	//댓글 삭제
	int deleteQnaRe(int qna_re_no);
}
/*
-- 댓글조회
-- 댓글번호, 내용, 작성일, 댓글삭제여부, 회원아이디(삭제 안된걸로, 게시글번호에 맞는거)
SELECT qna_re_no, qna_re_content, qna_re_write_day, mem_id
FROM tb_qna_re
WHERE qna_re_del_check=0 AND qna_no=1;


-- 댓글작성
-- 댓글번호, 내용, 작성일, 댓글삭제여부, 게시글번호, 회원아이디
INSERT INTO tb_qna_re 
(qna_re_no, qna_re_content, qna_re_write_day, qna_re_del_check, qna_no, mem_id)
VALUES (QNA_RE_NO_SEQ.NEXTVAL, '여기서 질문하면 되겠네요', SYSDATE, 0, 1, 'soojin');


-- 댓글 수정
-- 내용, 작성일 (댓글번호에 해당하는거 변경)
UPDATE tb_qna_re
SET 
qna_re_content='여기서 질문하면 되겠네용',
qna_re_write_day=SYSDATE 
WHERE qna_re_no=7;


-- 댓글 삭제
UPDATE tb_qna_re SET qna_re_del_check=1 WHERE qna_re_no=7;

*
*/