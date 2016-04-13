package com.nmom.soap.svc.board.notice;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.dao.board.notice.INoticeDao;
import com.nmom.soap.data.model.board.notice.NoticeVo;

public class NoticeSvcImpl implements INoticeSvc {

	private INoticeDao noticeDao;
	
	@Override
	public NoticeVo getNotice(int notice_no) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addNotice(NoticeVo notice) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editNotice(NoticeVo notice) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeNotice(int notice_no, String mem_id) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	public void setNoticeDao(INoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}

}
