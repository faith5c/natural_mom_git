package com.nmom.soap.data.impl.sales;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.nmom.soap.data.dao.sales.IVRank_SellsDao;
import com.nmom.soap.data.model.sales.VRank_SellsVo;

public class VRank_SellsDaoOraImpl extends JdbcDaoSupport implements IVRank_SellsDao 
{
	// 판매 순위 오름차순 정렬
	private final String GET_ALL_ASC = "SELECT ROWNUM, all_sells, product_name FROM V_RANK_SELLS "
			+ "WHERE ROWNUM <= 3 ORDER BY ROWNUM ASC";
	// 판매 순위 내림차순 정렬
	private final String GET_ALL_DESC = "SELECT ROWNUM, all_sells, product_name FROM V_RANK_SELLS "
			+ "WHERE ROWNUM <= 3 ORDER BY ROWNUM DESC";
	
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
