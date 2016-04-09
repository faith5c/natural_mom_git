package naturalmom.data.dao.impl;

import java.sql.Types;
import java.util.List;

import naturalmom.data.dao.IVReview_AdminDao;
import naturalmom.data.model.VReview_AdminVo;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class VReview_AdminDaoOraImpl extends NamedParameterJdbcDaoSupport implements IVReview_AdminDao 
{
	// 글 개수 구하기
	private final String GET_COUNT_REVIEWS = "SELECT COUNT(review_no) FROM v_review_admin";		
	// 게시판 목록 조회
	private final String GET_ALL_LIST = "SELECT * FROM v_review_admin WHERE ROWNUM >= :start AND ROWNUM <= :end";
	// 게시판 내용 조회
	private final String GET_ONE_REVIEW = "SELECT * FROM v_review_admin WHERE review_no = ?";
	// 제목으로 검색하기
	private final String GET_SEARCH_BY_TITLE = "SELECT * FROM v_review_admin WHERE rvw_title LIKE :search AND ROWNUM >= :start AND ROWNUM <= :end";
	// 내용으로 검색하기
	private final String GET_SEARCH_BY_CONTENT = "SELECT * FROM v_review_admin WHERE rvw_content LIKE :search AND ROWNUM >= :start AND ROWNUM <= :end";
	// 글쓴이로 검색하기
	private final String GET_SEARCH_BY_ID = "SELECT * FROM v_review_admin WHERE mem_id LIKE :search AND  ROWNUM >= :start AND ROWNUM <= :end";
	// 제목+내용으로 검색하기
	private final String GET_SEARCH_BY_TITLE_CONTENT = "SELECT * FROM v_review_admin "
			+ "WHERE (rvw_title LIKE :search OR rvw_content LIKE :search) AND  ROWNUM >= :start AND ROWNUM <= :end";
	@Override
	public List<VReview_AdminVo> getAllList() throws DataAccessException 
	{
		return getJdbcTemplate().query(GET_ALL_LIST, new BeanPropertyRowMapper<VReview_AdminVo>(VReview_AdminVo.class));
	}

	@Override
	public VReview_AdminVo getOneReview(int review_no) throws DataAccessException
	{
		List<VReview_AdminVo> list = getJdbcTemplate().query(GET_ONE_REVIEW, 
				new BeanPropertyRowMapper<VReview_AdminVo>(VReview_AdminVo.class), new Integer(review_no));
		
		if (list != null && list.size() > 0)
			return list.get(0);
		
		return null;
	}

	@Override
	public List<VReview_AdminVo> getReviews_by_title(String search, int start, int end) throws DataAccessException 
	{
		search = "%" + search + "%";
		
		MapSqlParameterSource msps = new MapSqlParameterSource();
		msps.addValue("search", search, Types.VARCHAR);
		msps.addValue("start", start, Types.VARCHAR);
		msps.addValue("end", end, Types.VARCHAR);
		
		return getNamedParameterJdbcTemplate().query(GET_SEARCH_BY_TITLE, msps,
				new BeanPropertyRowMapper<VReview_AdminVo>(VReview_AdminVo.class));
	}

	@Override
	public List<VReview_AdminVo> getReviews_by_content(String search, int start, int end) throws DataAccessException 
	{
		search = "%" + search + "%";
		
		MapSqlParameterSource msps = new MapSqlParameterSource();
		msps.addValue("search", search, Types.VARCHAR);
		msps.addValue("start", start, Types.VARCHAR);
		msps.addValue("end", end, Types.VARCHAR);
		
		return getNamedParameterJdbcTemplate().query(GET_SEARCH_BY_CONTENT, msps,
				new BeanPropertyRowMapper<VReview_AdminVo>(VReview_AdminVo.class));
	}

	@Override
	public List<VReview_AdminVo> getReviews_by_id(String search, int start, int end) throws DataAccessException 
	{
		search = "%" + search + "%";
		
		MapSqlParameterSource msps = new MapSqlParameterSource();
		msps.addValue("search", search, Types.VARCHAR);
		msps.addValue("start", start, Types.VARCHAR);
		msps.addValue("end", end, Types.VARCHAR);
		
		return getNamedParameterJdbcTemplate().query(GET_SEARCH_BY_ID, msps,
				new BeanPropertyRowMapper<VReview_AdminVo>(VReview_AdminVo.class));
	}

	@Override
	public List<VReview_AdminVo> getReviews_by_title_n_content(String search, int start, int end) throws DataAccessException 
	{
		search = "%" + search + "%";
		
		MapSqlParameterSource msps = new MapSqlParameterSource();
		msps.addValue("search", search, Types.VARCHAR);
		msps.addValue("start", start, Types.VARCHAR);
		msps.addValue("end", end, Types.VARCHAR);
		
		return getNamedParameterJdbcTemplate().query(GET_SEARCH_BY_TITLE_CONTENT, msps,
				new BeanPropertyRowMapper<VReview_AdminVo>(VReview_AdminVo.class));
	}

	@Override
	public int getCountReviews() throws DataAccessException 
	{
		return getJdbcTemplate().queryForInt(GET_COUNT_REVIEWS);
	}

}
