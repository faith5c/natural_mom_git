package naturalmom.data.dao.impl;

import java.sql.Types;
import java.util.List;

import naturalmom.data.dao.IVReview_FrontDao;
import naturalmom.data.model.VReview_FrontVo;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class VReview_FrontDaoOraImpl extends NamedParameterJdbcDaoSupport implements IVReview_FrontDao 
{
	// 총 게시글 수 뽑기
	private final String GET_COUNT_REVIEWS = "SELECT * FROM v_review_front WHERE product_no = ?";
	// 게시판 목록 뽑기
	private final String GET_ALL_LIST = "SELECT * FROM v_review_front WHERE product_no = :product_no AND ROWNUM >= :start AND ROWNUM <= :end";
	
	@Override
	public List<VReview_FrontVo> getAllList(int product_no, int start, int end) throws DataAccessException
	{
		MapSqlParameterSource msps = new MapSqlParameterSource();
		msps.addValue("product_no", product_no, Types.INTEGER);
		msps.addValue("start", start, Types.INTEGER);
		msps.addValue("end", end, Types.INTEGER);
	
		return getNamedParameterJdbcTemplate().query(GET_ALL_LIST, msps, 
				new BeanPropertyRowMapper<VReview_FrontVo>(VReview_FrontVo.class));
	}

	@Override
	public int getCountReviews(int product_no) throws DataAccessException 
	{
		return getJdbcTemplate().queryForInt(GET_COUNT_REVIEWS, new Integer(product_no), Types.INTEGER);
	}
	
}
