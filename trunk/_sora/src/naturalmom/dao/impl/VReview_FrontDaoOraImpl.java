package naturalmom.dao.impl;

import java.util.List;

import naturalmom.dao.IVReview_FrontDao;
import naturalmom.model.VReview_FrontVo;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class VReview_FrontDaoOraImpl extends JdbcDaoSupport implements IVReview_FrontDao 
{
	// �Խ��� ��� �̱�
	private final String SELECT_ALL_LIST = "SELECT * FROM v_review_front WHERE product_no = ?";
	
	@Override
	public List<VReview_FrontVo> selectAllList() throws DataAccessException
	{
		return getJdbcTemplate().query(SELECT_ALL_LIST, new BeanPropertyRowMapper<VReview_FrontVo>(VReview_FrontVo.class));
	}
}
