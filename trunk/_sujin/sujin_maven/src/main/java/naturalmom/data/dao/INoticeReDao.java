package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.NoticeReVo;

public interface INoticeReDao {

	public List<NoticeReVo> getAllNoticeRe(int notice_no) throws DataAccessException;

	public int addNoticeRe(NoticeReVo notice_re) throws DataAccessException;
	
	public int editNoticeRe(NoticeReVo notice_re) throws DataAccessException;
	
	public int removeNoticeRe(int notice_re_no, String mem_id) throws DataAccessException;
}
