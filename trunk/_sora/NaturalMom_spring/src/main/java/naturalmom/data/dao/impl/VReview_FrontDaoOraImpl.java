package naturalmom.data.dao.impl;

import java.util.List;

import naturalmom.data.dao.IVReview_FrontDao;
import naturalmom.data.model.VReview_FrontVo;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class VReview_FrontDaoOraImpl extends JdbcDaoSupport implements IVReview_FrontDao 
{
	// 게시판 목록 뽑기
	private final String GET_ALL_LIST = "SELECT * FROM v_review_front WHERE product_no = ?";
	
	public List<VReview_FrontVo> getAllList() throws DataAccessException
	{
		return getJdbcTemplate().query(GET_ALL_LIST, new BeanPropertyRowMapper<VReview_FrontVo>(VReview_FrontVo.class));
	}
}
