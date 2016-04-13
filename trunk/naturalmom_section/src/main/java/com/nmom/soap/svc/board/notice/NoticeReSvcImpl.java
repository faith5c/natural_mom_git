package com.nmom.soap.svc.board.notice;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.dao.board.notice.INoticeReDao;
import com.nmom.soap.data.model.board.notice.NoticeReVo;

public class NoticeReSvcImpl implements INoticeReSvc {

	private INoticeReDao noticeReDao;
	
	@Override
	public List<NoticeReVo> getAllNoticeRe(int notice_no) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addNoticeRe(NoticeReVo notice_re) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editNoticeRe(NoticeReVo notice_re) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeNoticeRe(int notice_re_no, String mem_id) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	public void setNoticeReDao(INoticeReDao noticeReDao) {
		this.noticeReDao = noticeReDao;
	}

}
