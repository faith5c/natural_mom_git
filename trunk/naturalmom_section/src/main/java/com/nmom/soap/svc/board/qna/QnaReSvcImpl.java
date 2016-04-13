package com.nmom.soap.svc.board.qna;

import java.util.List;

import com.nmom.soap.data.dao.board.qna.IQnaReDao;
import com.nmom.soap.data.model.board.qna.QnaReVo;

public class QnaReSvcImpl implements IQnaReSvc {

	IQnaReDao qnaReDao;
	
	public void setQnaReDao(IQnaReDao qnaReDao) {
		this.qnaReDao = qnaReDao;
	}

	@Override
	public List<QnaReVo> getQnaReByQnaNo(int qna_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addQnaRe(QnaReVo qnare) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int addQnaRe(String qna_re_content, int qna_no, String mem_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editQnaRe(QnaReVo qnare) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editQnaRe(int qna_re_no, String qna_re_content) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeQnaRe(QnaReVo qnare) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeQnaRe(int qna_re_no) {
		// TODO Auto-generated method stub
		return 0;
	}

}
