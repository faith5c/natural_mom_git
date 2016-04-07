package naturalmom.data.dao.impl;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import naturalmom.data.dao.IVOrderListDao;
import naturalmom.data.dao.IVOrderManagerDao;
import naturalmom.data.model.VOrderListVo;

public class OrderListDaoOraImpl extends JdbcDaoSupport implements IVOrderManagerDao {
	
	final String GET_ALL_ORDER = "SELECT * FROM v_order_manager";

	
	public List<VOrderListVo> getAllOreder() throws DataAccessException {
		// TODO Auto-generated method stub
		return getJdbcTemplate().query(GET_ALL_ORDER, BeanPropertyRowMapper.newInstance(VOrderListVo.class));
	}

}
