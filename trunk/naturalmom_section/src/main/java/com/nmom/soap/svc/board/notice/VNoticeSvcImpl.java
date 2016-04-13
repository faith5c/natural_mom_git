package com.nmom.soap.svc.board.notice;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.dao.board.notice.IVNoticeDao;
import com.nmom.soap.data.model.board.notice.VNoticeVo;

public class VNoticeSvcImpl implements IVNoticeSvc {

	private IVNoticeDao vNoticeDao;
	
	@Override
	public List<VNoticeVo> getAllNotice(int page) {
		
//		List<VNoticeVo> list = this.vNoticeDao.getAllNotice(start, end)
		return null;
	}

	@Override
	public List<VNoticeVo> getSearchByTitleNotice(String search, int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VNoticeVo> getSearchByContentNotice(String search, int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VNoticeVo> getSearchByIdNotice(String search, int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VNoticeVo> getSearchByTitleNContentNotice(String search, int page) {
		// TODO Auto-generated method stub
		return null;
	}

	public void setVNoticeDao(IVNoticeDao vNoticeDao) {
		this.vNoticeDao = vNoticeDao;
	}

	@Override
	public int getAllCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getAllCountByTitle(String search) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getAllCountByContent(String search) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getAllCountById(String search) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getAllCountByTitleNContent(String search) {
		// TODO Auto-generated method stub
		return 0;
	}
}
