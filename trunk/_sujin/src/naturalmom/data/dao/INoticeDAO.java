package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import fusion.data.model.NoticeVO;

public interface INoticeDAO {
	
	final int SEARCH_TITLE = 1;
	final int SEARCH_CONTENT = 2;
	final int SEARCH_MEM_ID = 3;
	final int SEARCH_TITLE_AND_CONTENT = 4;
	
	public List<NoticeVO> getAllNotice() throws DataAccessException;
	
	public List<NoticeVO> getSearchNotice(String search, int n) throws DataAccessException;
	
	public NoticeVO readNotice(int notice_no) throws DataAccessException;

	public boolean writeNotice(NoticeVO notice) throws DataAccessException;
	
	public boolean updateNotice(String title, String content, int notice_id) throws DataAccessException;
	
	public boolean deletNotice(int notice_no) throws DataAccessException;
}
