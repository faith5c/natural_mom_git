package naturalmom.data.dao.impl;

import java.sql.Types;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import naturalmom.data.dao.IVOrderManagerDao;
import naturalmom.data.model.VOrderListVo;

public class VOrderManageDaoOraImpl extends JdbcDaoSupport implements IVOrderManagerDao {

	
	final String GET_ALL_ORDER_MANAGER = 
			"SELECT * FROM v_order_list WERER ROWNUM >= :start AND ROWNUM <= :end ";
	
	final String ORDER_BY_ORDER_NO = "ORDER BY order_no DESC";
	
	final int ORDER_NO = 1;
	
	final String ORDER_BY_ORDER_DATE = "ORDER BY order_date DESC";
	
	final int ORDER_DATE = 2;
	
	public List<VOrderListVo> getAllOreder(int start, int end, int orderByNum) 
			throws DataAccessException {
		switch(orderByNum){
		
		
		}
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("start", new Integer(start), Types.INTEGER);
		ps.addValue("end", new Integer(end), Types.INTEGER);
		return getJdbcTemplate().query(GET_ALL_ORDER_MANAGER, 
				BeanPropertyRowMapper.newInstance(VOrderListVo.class));
	}


}
