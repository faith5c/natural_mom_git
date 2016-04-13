package com.nmom.soap.svc.board.qna;

import java.util.List;

import com.nmom.soap.data.dao.board.qna.IVQnaQnareDao;
import com.nmom.soap.data.model.board.qna.VQnaQnaReVo;

public class VQnaQnareSvcImpl implements IVQnaQnareSvc {
	
	IVQnaQnareDao vQnaQnareDao;
	
	public void setVQnaQnareDao(IVQnaQnareDao vQnaQnareDao) {
		this.vQnaQnareDao = vQnaQnareDao;
	}

	@Override
	public VQnaQnaReVo getOneQna(int qna_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VQnaQnaReVo> getAllQna(int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VQnaQnaReVo> searchQnaTitle(String keyword, int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VQnaQnaReVo> searchQnaContent(String keyword, int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VQnaQnaReVo> searchQnaTitleNContent(String keyword, int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}

}
