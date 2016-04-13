package com.nmom.soap.svc.board.notice;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.model.board.notice.NoticeVo;


public interface INoticeSvc {

	// 1. 공지사항 상세보기
	public NoticeVo getNotice(int notice_no) throws DataAccessException;
	
	// 2. 공지사항 쓰기
	public int addNotice(NoticeVo notice) throws DataAccessException;
	
	// 3. 공지사항 수정
	public int editNotice(NoticeVo notice) throws DataAccessException;
	
	// 4. 공지사항 삭제
	public int removeNotice(int notice_no, String mem_id) throws DataAccessException;
}
