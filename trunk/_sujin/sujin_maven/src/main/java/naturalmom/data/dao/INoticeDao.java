package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.NoticeVo;

public interface INoticeDao {
	
	final int SEARCH_TITLE = 1;
	final int SEARCH_CONTENT = 2;
	final int SEARCH_MEM_ID = 3;
	final int SEARCH_TITLE_AND_CONTENT = 4;

	public NoticeVo getNotice(int notice_no) throws DataAccessException;
	
	public int addNotice(NoticeVo notice) throws DataAccessException;
	
	public int editNotice(NoticeVo notice) throws DataAccessException;
	
	public int removeNotice(int notice_no, String mem_id) throws DataAccessException;
}
