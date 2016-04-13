package com.nmom.soap.svc.board.notice;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.model.board.notice.VNoticeVo;

public interface IVNoticeSvc {
	
	public List<VNoticeVo> getAllNotice(int page);
	
	public List<VNoticeVo> getSearchByTitleNotice(String search, int page);
	
	public List<VNoticeVo> getSearchByContentNotice(String search, int page);
	
	public List<VNoticeVo> getSearchByIdNotice(String search, int page);
	
	public List<VNoticeVo> getSearchByTitleNContentNotice(String search, int page);

}
