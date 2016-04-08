package naturalmom.data.dao.impl;

import java.util.List;

import naturalmom.data.dao.IVReview_AdminDao;
import naturalmom.data.model.VReview_AdminVo;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class VReview_AdminDaoOraImpl extends JdbcDaoSupport implements IVReview_AdminDao 
{
	// 게시판 목록 조회
	private final String GET_ALL_LIST = "SELECT * FROM v_review_admin";
	// 게시판 내용 조회
	private final String GET_ONE_REVIEW = "SELECT * FROM v_review_admin WHERE review_no = ?";
	// 제목으로 검색하기
	private final String GET_SEARCH_BY_TITLE = "SELECT * FROM v_review_admin WHERE rvw_title LIKE ?";
	// 내용으로 검색하기
	private final String GET_SEARCH_BY_CONTENT = "SELECT * FROM v_review_admin WHERE rvw_content LIKE ?";
	// 글쓴이로 검색하기
	private final String GET_SEARCH_BY_ID = "SELECT * FROM v_review_admin WHERE mem_id LIKE ?";
	// 제목+내용으로 검색하기
	private final String GET_SEARCH_BY_TITLE_CONTENT = "SELECT * FROM v_review_admin "
			+ "WHERE (rvw_title LIKE ? OR rvw_content LIKE ?)";
	
	public List<VReview_AdminVo> getAllList() throws DataAccessException 
	{
		return getJdbcTemplate().query(GET_ALL_LIST, new BeanPropertyRowMapper<VReview_AdminVo>(VReview_AdminVo.class));
	}

	public VReview_AdminVo getOneReview(int review_no) throws DataAccessException
	{
		List<VReview_AdminVo> list = getJdbcTemplate().query(GET_ONE_REVIEW, 
				new BeanPropertyRowMapper<VReview_AdminVo>(VReview_AdminVo.class), new Integer(review_no));
		
		if (list != null && list.size() > 0)
			return list.get(0);
		
		return null;
	}

	public List<VReview_AdminVo> getReviews_by_title(String search) throws DataAccessException 
	{
		search = "%" + search + "%";
		return getJdbcTemplate().query(GET_SEARCH_BY_TITLE, 
				new BeanPropertyRowMapper<VReview_AdminVo>(VReview_AdminVo.class), search);
	}

	public List<VReview_AdminVo> getReviews_by_content(String search) throws DataAccessException 
	{
		search = "%" + search + "%";
		return getJdbcTemplate().query(GET_SEARCH_BY_CONTENT, 
				new BeanPropertyRowMapper<VReview_AdminVo>(VReview_AdminVo.class), search);
	}

	public List<VReview_AdminVo> getReviews_by_id(String search) throws DataAccessException 
	{
		search = "%" + search + "%";
		return getJdbcTemplate().query(GET_SEARCH_BY_ID, 
				new BeanPropertyRowMapper<VReview_AdminVo>(VReview_AdminVo.class), search);
	}

	public List<VReview_AdminVo> getReviews_by_title_n_content(String search) throws DataAccessException 
	{
		search = "%" + search + "%";
		return getJdbcTemplate().query(GET_SEARCH_BY_TITLE_CONTENT, new Object[] { search, search },
				new BeanPropertyRowMapper<VReview_AdminVo>(VReview_AdminVo.class));
	}
}