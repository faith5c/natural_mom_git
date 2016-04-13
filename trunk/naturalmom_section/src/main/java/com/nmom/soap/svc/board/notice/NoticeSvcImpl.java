package com.nmom.soap.svc.board.notice;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.dao.board.notice.INoticeDao;
import com.nmom.soap.data.model.board.notice.NoticeVo;

public class NoticeSvcImpl implements INoticeSvc {

	private INoticeDao noticeDao;
	
	@Override
	public NoticeVo getNotice(int notice_no) {
		NoticeVo no = this.noticeDao.getNotice(notice_no);
		return (no != null) ? no : null;
	}

	@Override
	public int addNotice(NoticeVo notice) {
		int r = this.noticeDao.addNotice(notice);
		return (r == 1)? r : -1;
	}

	@Override
	public int editNotice(NoticeVo notice) {
		int r = this.noticeDao.editNotice(notice);
		return (r == 1)? r : -1;
	}

	@Override
	public int removeNotice(int notice_no, String mem_id) {
		int r = this.noticeDao.removeNotice(notice_no, mem_id);
		return (r == 1)? r : -1;
	}

	public void setNoticeDao(INoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}

}
