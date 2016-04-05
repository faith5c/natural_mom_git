package naturalmom.data.dao;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.QnaVo;

public interface IQnaDao {
	
	//비밀글에 비밀번호 맞나 확인
	boolean secretQnaPwCheck(int qna_no, String qna_pw) throws DataAccessException;
	
	//글 작성
	int addQna(QnaVo qna) throws DataAccessException;
	int addQna(String qna_title, int qna_hits, String qna_content,
			String qna_pw, int qna_pos, int qna_ref,  String mem_id) throws DataAccessException;
	
	//글 수정
	int editQna(QnaVo qna);
	int editQna(int qna_no, String qna_title, String qna_content, String qna_pw) throws DataAccessException;
	
	//글 삭제
	int removeQna(QnaVo qna) throws DataAccessException;
	int removeQna(int qna_no) throws DataAccessException;
}