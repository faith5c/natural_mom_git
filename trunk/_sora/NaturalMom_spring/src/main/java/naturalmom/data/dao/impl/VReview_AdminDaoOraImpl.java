package naturalmom.data.dao.impl;

import java.util.List;

import naturalmom.data.dao.IVReview_AdminDao;
import naturalmom.data.model.VReview_AdminVo;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;

public class VReview_AdminDaoOraImpl extends NamedParameterJdbcDaoSupport implements IVReview_AdminDao 
{
	// 게시판 목록 조회
//	private final String GET_ALL_LIST = "SELECT * FROM v_review_admin";
	private final String GET_ALL_LIST = "SELECT A.* FROM (SELECT rownum as re_rnum, X.* FROM"
			+ " (SELECT * from V_REVIEW_ADMIN ORDER BY review_no ASC) X WHERE rownum <= :end) A WHERE A.re_rnum >= :start";
	// 게시판 내용 조회
	private final String GET_ONE_REVIEW = "SELECT * FROM v_review_admin WHERE review_no = ?";
	// 제목으로 검색하기
	private final String GET_SEARCH_BY_TITLE = "SELECT A.* FROM (SELECT rownum as re_rnum, X.* FROM"
			+ " (SELECT * from V_REVIEW_ADMIN ORDER BY review_no ASC) X WHERE rownum <= :end) A"
			+ " WHERE A.re_rnum >= :start AND rvw_title LIKE :search";
	// 내용으로 검색하기
	private final String GET_SEARCH_BY_CONTENT = "SELECT A.* FROM (SELECT rownum as re_rnum, X.* FROM"
			+ " (SELECT * from V_REVIEW_ADMIN ORDER BY review_no ASC) X WHERE rownum <= :end) A"
			+ " WHERE A.re_rnum >= :start AND rvw_content LIKE :search";
	// 글쓴이로 검색하기
	private final String GET_SEARCH_BY_ID = "SELECT A.* FROM (SELECT rownum as re_rnum, X.* FROM"
			+ " (SELECT * from V_REVIEW_ADMIN ORDER BY review_no ASC) X WHERE rownum <= :end) A"
			+ " WHERE A.re_rnum >= :start AND mem_id LIKE :search";
	// 제목+내용으로 검색하기
	private final String GET_SEARCH_BY_TITLE_CONTENT = "SELECT A.* FROM (SELECT rownum as re_rnum, X.* FROM"
			+ " (SELECT * from V_REVIEW_ADMIN ORDER BY review_no ASC) X WHERE rownum <= :end) A"
			+ " WHERE A.re_rnum >= :start AND rvw_title LIKE :search OR rvw_content LIKE :search";
	
	public List<VReview_AdminVo> getAllList(int start, int end) throws DataAccessException 
	{
		MapSqlParameterSource msps = new MapSqlParameterSource();
		msps.addValue("start", new Integer(start));
		msps.addValue("end", new Integer(end));
		
		return getNamedParameterJdbcTemplate().query(GET_ALL_LIST, msps, 
				new BeanPropertyRowMapper<VReview_AdminVo>(VReview_AdminVo.class));
	}

	public VReview_AdminVo getOneReview(int review_no) throws DataAccessException
	{
		List<VReview_AdminVo> list = getJdbcTemplate().query(GET_ONE_REVIEW, 
				new BeanPropertyRowMapper<VReview_AdminVo>(VReview_AdminVo.class), new Integer(review_no));
		
		if (list != null && list.size() > 0)
			return list.get(0);
		
		return null;
	}

	public List<VReview_AdminVo> getReviews_by_title(String search, int start, int end) throws DataAccessException 
	{
		search = "%" + search + "%";
		
		MapSqlParameterSource msps = new MapSqlParameterSource();
		msps.addValue("search", search);
		msps.addValue("start", new Integer(start));
		msps.addValue("end", new Integer(end));
		
		return getNamedParameterJdbcTemplate().query(GET_SEARCH_BY_TITLE, msps, 
				new BeanPropertyRowMapper<VReview_AdminVo>(VReview_AdminVo.class));
	}

	public List<VReview_AdminVo> getReviews_by_content(String search, int start, int end) throws DataAccessException 
	{
		search = "%" + search + "%";
		
		MapSqlParameterSource msps = new MapSqlParameterSource();
		msps.addValue("search", search);
		msps.addValue("start", new Integer(start));
		msps.addValue("end", new Integer(end));
		
		return getNamedParameterJdbcTemplate().query(GET_SEARCH_BY_CONTENT, msps, 
				new BeanPropertyRowMapper<VReview_AdminVo>(VReview_AdminVo.class));
	}

	public List<VReview_AdminVo> getReviews_by_id(String search, int start, int end) throws DataAccessException 
	{
		search = "%" + search + "%";
		
		MapSqlParameterSource msps = new MapSqlParameterSource();
		msps.addValue("search", search);
		msps.addValue("start", new Integer(start));
		msps.addValue("end", new Integer(end));
		
		return getNamedParameterJdbcTemplate().query(GET_SEARCH_BY_ID, msps, 
				new BeanPropertyRowMapper<VReview_AdminVo>(VReview_AdminVo.class));
	}

	public List<VReview_AdminVo> getReviews_by_title_n_content(String search, int start, int end) throws DataAccessException 
	{
		search = "%" + search + "%";
		
		MapSqlParameterSource msps = new MapSqlParameterSource();
		msps.addValue("search", search);
		msps.addValue("start", new Integer(start));
		msps.addValue("end", new Integer(end));
		
		return getNamedParameterJdbcTemplate().query(GET_SEARCH_BY_TITLE_CONTENT, msps, 
				new BeanPropertyRowMapper<VReview_AdminVo>(VReview_AdminVo.class));
	}
}
