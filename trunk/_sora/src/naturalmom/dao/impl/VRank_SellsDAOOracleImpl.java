package naturalmom.dao.impl;

import java.util.List;

import naturalmom.dao.IVRank_SellsDAO;
import naturalmom.model.VProduct_Manage;
import naturalmom.model.VRank_Sells;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class VRank_SellsDAOOracleImpl extends JdbcDaoSupport implements IVRank_SellsDAO 
{
	// SQL문 확인해볼것
	// 판매 순위 오름차순 정렬
	private final String SELECT_ALL_ASC = "SELECT ROWNUM, all_sells, product_name FROM V_RANK_SELLS "
			+ "WHERE ROWNUM <= 3 ORDER BY ROWNUM";
	// 판매 순위 내림차순 정렬
	private final String SELECT_ALL_DESC = "SELECT ROWNUM, all_sells, product_name FROM V_RANK_SELLS"
			+ "WHERE ROWNUM <= 3  ORDER BY ROWNUM DESC";
	
	@Override
	public List<VRank_Sells> selectAllRank(boolean order) throws DataAccessException 
	{
		if(order)
			return getJdbcTemplate().query(SELECT_ALL_ASC, 
					new BeanPropertyRowMapper<VRank_Sells>(VRank_Sells.class));
		else
			return getJdbcTemplate().query(SELECT_ALL_DESC, 
					new BeanPropertyRowMapper<VRank_Sells>(VRank_Sells.class));
	}
}
