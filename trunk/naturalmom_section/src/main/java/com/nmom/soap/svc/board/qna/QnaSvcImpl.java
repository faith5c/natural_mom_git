package com.nmom.soap.svc.board.qna;

import com.nmom.soap.data.dao.board.qna.IQnaDao;
import com.nmom.soap.data.model.board.qna.QnaVo;

public class QnaSvcImpl implements IQnaSvc {

	IQnaDao qnaDao;
	
	public void setQnaDao(IQnaDao qnaDao) {
		this.qnaDao = qnaDao;
	}

	@Override
	public boolean secretQnaPwCheck(int qna_no, String qna_pw) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int addQna(String qna_title, String qna_content, String qna_pw, String mem_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int addQnaAnswer(String qna_title, String qna_content, String qna_pw, String mem_id, int qna_pos,
			int qna_ref) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editQna(QnaVo qna) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editQna(int qna_no, String qna_title, String qna_content, String qna_pw) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeQna(int qna_no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeQnaByRef(int qna_ref) {
		// TODO Auto-generated method stub
		return 0;
	}

}
