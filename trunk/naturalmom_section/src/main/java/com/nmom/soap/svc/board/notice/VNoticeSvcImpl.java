package com.nmom.soap.svc.board.notice;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.dao.board.notice.IVNoticeDao;
import com.nmom.soap.data.model.board.notice.VNoticeVo;

public class VNoticeSvcImpl implements IVNoticeSvc {

	private IVNoticeDao vNoticeDao;
	
	@Override
	public List<VNoticeVo> getAllNotice(int page) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VNoticeVo> getSearchByTitleNotice(String search, int page) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VNoticeVo> getSearchByContentNotice(String search, int page) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VNoticeVo> getSearchByIdNotice(String search, int page) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VNoticeVo> getSearchByTitleNContentNotice(String search, int page) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getAllCount() throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	public void setVNoticeDao(IVNoticeDao vNoticeDao) {
		this.vNoticeDao = vNoticeDao;
	}

	
}
