package naturalmom.data.dao.impl;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import naturalmom.data.dao.IVOrderListDao;
import naturalmom.data.model.VOrderListVo;

public class OrderManageDaoOraImpl extends JdbcDaoSupport implements IVOrderListDao {
	
	final String GET_ALL_ORDER = 
			"SELECT order_no, order_date, represent_img, product_name, buy_num, "
			+ "charge, process_nm, mem_id FROM v_order_list WHERE mem_id = ?";
	
	public List<VOrderListVo> getAllOreder(String id) throws DataAccessException {
		return getJdbcTemplate().query(GET_ALL_ORDER, BeanPropertyRowMapper.newInstance(VOrderListVo.class), id);
	}

}
