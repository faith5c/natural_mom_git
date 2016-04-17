package com.nmom.soap.data.dao.board.qna;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.model.board.qna.QnaVo;

public interface IQnaDao {
	
	//비밀글에 비밀번호 맞나 확인
	boolean secretQnaPwCheck(int qna_no, String qna_pw) throws DataAccessException;
	
	//일반글작성
	int addQna(String qna_title, String qna_content, String qna_pw, String mem_id) throws DataAccessException;
	
	//답변글작성
	int addQnaAnswer(String qna_title, String qna_content, String qna_pw, String mem_id, int qna_pos, int qna_ref) throws DataAccessException;
	
	//글 수정
	int editQna(QnaVo qna) throws DataAccessException;
	int editQna(int qna_no, String qna_title, String qna_content, String qna_pw) throws DataAccessException;
	
	//글번호로 삭제
	int removeQna(int qna_no) throws DataAccessException;

	//참조글번호로 삭제
	int removeQnaByRef(int qna_ref) throws DataAccessException;
	
	//댓글 제외한 하나의 글 가져오기
	QnaVo getOneSimpleQna(int qna_no) throws DataAccessException;
	
	//조회수 증가
	int increaseQnaHits(int qna_no) throws DataAccessException;
}