package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import fusion.data.model.NoticeReVO;

public interface INoticeReDAO {

	public List<NoticeReVO> getAllNoticeRe() throws DataAccessException;

	public boolean writeNoticeRe(NoticeReVO notice_re) throws DataAccessException;
	
	public boolean updateNoticeRe(String ntc_re_content, int notice_re_no) throws DataAccessException;
	
	public boolean deletNoticeRe(int notice_re_no) throws DataAccessException;
}
