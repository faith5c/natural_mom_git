package naturalmom.dao.impl;

import java.util.List;

import naturalmom.dao.IVReview_AdminDAO;
import naturalmom.model.VReview_Admin;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class VReview_AdminDAOOracleImpl extends JdbcDaoSupport implements IVReview_AdminDAO 
{
	// 생성자가 조회하는 컬럼과 일치해야하는지 알아볼 것(다른 클래스도 마찬가지)
	// 게시판 목록 조회
	private final String SELECT_ALL_LIST = "SELECT * FROM v_review_admin";
	// 게시판 내용 조회
	private final String SELECT_ONE_REVIEW = "SELECT * FROM v_review_admin WHERE review_no = ?";
	// 제목으로 검색하기
	private final String SELECT_SEARCH_BY_TITLE = "SELECT * FROM v_review_admin WHERE rvw_title LIKE ?";
	// 내용으로 검색하기
	private final String SELECT_SEARCH_BY_CONTENT = "SELECT * FROM v_review_admin WHERE rvw_content LIKE ?";
	// 글쓴이로 검색하기
	private final String SELECT_SEARCH_BY_ID = "SELECT * FROM v_review_admin WHERE mem_id LIKE ?";
	// 제목+내용으로 검색하기
	private final String SELECT_SEARCH_BY_TITLE_CONTENT = "SELECT * FROM v_review_admin "
			+ "WHERE (rvw_title LIKE ? OR rvw_content LIKE ?)";
	@Override
	public List<VReview_Admin> selectAllList() 
	{
		return getJdbcTemplate().query(SELECT_ALL_LIST, new BeanPropertyRowMapper<VReview_Admin>(VReview_Admin.class));
	}

	@Override
	public VReview_Admin seletOneReview(int review_no) 
	{
		List<VReview_Admin> list = getJdbcTemplate().query(SELECT_ONE_REVIEW, 
				new BeanPropertyRowMapper<VReview_Admin>(VReview_Admin.class), new Integer(review_no));
		
		if (list != null && list.size() > 0)
			return list.get(0);
		
		return null;
	}

	@Override
	public List<VReview_Admin> selectReviews_by_title(String search) 
	{
		search = "%" + search + "%";
		return getJdbcTemplate().query(SELECT_SEARCH_BY_TITLE, 
				new BeanPropertyRowMapper<VReview_Admin>(VReview_Admin.class), search);
	}

	@Override
	public List<VReview_Admin> selectReviews_by_content(String search) 
	{
		search = "%" + search + "%";
		return getJdbcTemplate().query(SELECT_SEARCH_BY_CONTENT, 
				new BeanPropertyRowMapper<VReview_Admin>(VReview_Admin.class), search);
	}

	@Override
	public List<VReview_Admin> selectReviews_by_id(String search) 
	{
		search = "%" + search + "%";
		return getJdbcTemplate().query(SELECT_SEARCH_BY_ID, 
				new BeanPropertyRowMapper<VReview_Admin>(VReview_Admin.class), search);
	}

	@Override
	public List<VReview_Admin> selectReviews_by_title_n_content(String search) 
	{
		search = "%" + search + "%";
		return getJdbcTemplate().query(SELECT_SEARCH_BY_TITLE_CONTENT, new Object[] { search, search },
				new BeanPropertyRowMapper<VReview_Admin>(VReview_Admin.class));
	}

}
