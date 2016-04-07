package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VNoticeVo;

public interface IVNoticeDao {
	
	public List<VNoticeVo> getAllNotice(int start, int end) throws DataAccessException;
	
	public List<VNoticeVo> getSearchByTitleNotice(String search, int start, int end) throws DataAccessException;
	
	public List<VNoticeVo> getSearchByContentNotice(String search, int start, int end) throws DataAccessException;
	
	public List<VNoticeVo> getSearchByIdNotice(String search, int start, int end) throws DataAccessException;
	
	public List<VNoticeVo> getSearchByTitleNContentNotice(String search, int start, int end) throws DataAccessException;
}
