package naturalmom.data.dao.impl;

import java.util.List;

import naturalmom.data.dao.IVRank_SellsDao;
import naturalmom.data.model.VProduct_ManageVo;
import naturalmom.data.model.VRank_SellsVo;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class VRank_SellsDaoOraImpl extends JdbcDaoSupport implements IVRank_SellsDao 
{
	// SQL문 확인해볼것
	// 판매 순위 오름차순 정렬
	private final String GET_ALL_ASC = "SELECT ROWNUM, all_sells, product_name FROM V_RANK_SELLS "
			+ "WHERE ROWNUM <= 3 ORDER BY ROWNUM";
	// 판매 순위 내림차순 정렬
	private final String GET_ALL_DESC = "SELECT ROWNUM, all_sells, product_name FROM V_RANK_SELLS"
			+ "WHERE ROWNUM <= 3  ORDER BY ROWNUM DESC";
	
	public List<VRank_SellsVo> getAllRank(boolean order) throws DataAccessException 
	{
		if(order)
			return getJdbcTemplate().query(GET_ALL_ASC, 
					new BeanPropertyRowMapper<VRank_SellsVo>(VRank_SellsVo.class));
		else
			return getJdbcTemplate().query(GET_ALL_DESC, 
					new BeanPropertyRowMapper<VRank_SellsVo>(VRank_SellsVo.class));
	}
}
