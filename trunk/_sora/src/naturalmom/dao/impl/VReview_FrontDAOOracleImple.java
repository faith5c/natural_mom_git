package naturalmom.dao.impl;

import java.util.List;

import naturalmom.dao.IVReview_FrontDAO;
import naturalmom.model.VReview_Front;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class VReview_FrontDAOOracleImple extends JdbcDaoSupport implements IVReview_FrontDAO 
{
	// �Խ��� ��� �̱�
	private final String SELECT_ALL_LIST = "SELECT review_no, rvw_title, rvw_write_day, rvw_hits, rvw_content, "
			+ "rvw_satisfaction, mem_id, RE_NUM FROM v_review_front WHERE product_no = ?";
	
	@Override
	public List<VReview_Front> selectAllList()
	{
		return getJdbcTemplate().query(SELECT_ALL_LIST, new BeanPropertyRowMapper<VReview_Front>(VReview_Front.class));
	}
}
