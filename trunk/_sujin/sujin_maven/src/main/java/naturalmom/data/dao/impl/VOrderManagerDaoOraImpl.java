package naturalmom.data.dao.impl;

import java.sql.Types;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import naturalmom.data.dao.IVOrderManagerDao;
import naturalmom.data.model.VOrderListVo;
import naturalmom.data.model.VOrderManagerVo;

public class VOrderManagerDaoOraImpl extends NamedParameterJdbcDaoSupport implements IVOrderManagerDao {

	
	final String GET_ALL_ORDER_MANAGER = 
			"SELECT order_date, order_no, mem_name, product_name, buy_num, charge, "
			+ "delivery_msg, tracking_num, process_nm FROM v_order_manager";
//			+ "WHERE ROWNUM >= :start AND ROWNUM <= :end ";
	
	final String ORDER_BY_ORDER_DATE = GET_ALL_ORDER_MANAGER+"ORDER BY order_date DESC";
	
	final int ORDER_DATE = 1;
	
	final String ORDER_BY_ORDER_NO = GET_ALL_ORDER_MANAGER+"ORDER BY order_no DESC";
	
	final int ORDER_NO = 2;
	
	final String ORDER_BY_MEM_NAME = GET_ALL_ORDER_MANAGER+"ORDER BY mem_name DESC";
	
	final int MEM_NAME = 3;
	
	final String ORDER_BY_PRODUCT_NAME = GET_ALL_ORDER_MANAGER+"ORDER BY product_name DESC";
	
	final int PRODUCT_NAME = 4;
	
	final String ORDER_BY_BUY_NUM = GET_ALL_ORDER_MANAGER+"ORDER BY buy_num DESC";
	
	final int BUY_NUM = 5;
	
	final String ORDER_BY_CHARGE = GET_ALL_ORDER_MANAGER+"ORDER BY charge DESC";
	
	final int CHARGE = 6;
	
	final String ORDER_BY_PROCESS_NM = GET_ALL_ORDER_MANAGER+"ORDER BY process_cd ASC";
	
	final int PROCESS_NM = 7;
	
	public List<VOrderManagerVo> getAllOreder(int start, int end, int orderByNum) 
			throws DataAccessException {
		
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("start", new Integer(start), Types.INTEGER);
		ps.addValue("end", new Integer(end), Types.INTEGER);
/*		
		switch(orderByNum){
		case ORDER_DATE : //1
			return getNamedParameterJdbcTemplate().query("ORDER_BY_ORDER_DATE", 
					ps,
					BeanPropertyRowMapper.newInstance(VOrderManagerVo.class));
			
		case ORDER_NO : //2
			return getNamedParameterJdbcTemplate().query("ORDER_BY_ORDER_NO", 
					ps,
					BeanPropertyRowMapper.newInstance(VOrderManagerVo.class));
		
		case MEM_NAME : //3
			return getNamedParameterJdbcTemplate().query("ORDER_BY_MEM_NAME", 
					ps,
					BeanPropertyRowMapper.newInstance(VOrderManagerVo.class));

			
		case PRODUCT_NAME : //4
			return getNamedParameterJdbcTemplate().query("ORDER_BY_PRODUCT_NAME", 
					ps,
					BeanPropertyRowMapper.newInstance(VOrderManagerVo.class));
			
		case BUY_NUM : //5
			return getNamedParameterJdbcTemplate().query("ORDER_BY_BUY_NUM", 
					ps,
					BeanPropertyRowMapper.newInstance(VOrderManagerVo.class));

	
		case CHARGE : //6
			return getNamedParameterJdbcTemplate().query("ORDER_BY_CHARGE", 
					ps,
					BeanPropertyRowMapper.newInstance(VOrderManagerVo.class));

	
		case PROCESS_NM : //7
			return getNamedParameterJdbcTemplate().query("ORDER_BY_PROCESS_NM", 
					ps,
					BeanPropertyRowMapper.newInstance(VOrderManagerVo.class));
	
		}*/
		
		return getNamedParameterJdbcTemplate().query("GET_ALL_ORDER_MANAGER", 
//				ps,
				BeanPropertyRowMapper.newInstance(VOrderManagerVo.class));
	}


}
