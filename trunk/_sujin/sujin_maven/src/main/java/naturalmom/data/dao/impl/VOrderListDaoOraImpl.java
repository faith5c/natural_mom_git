package naturalmom.data.dao.impl;

import java.sql.Types;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;

import naturalmom.data.dao.IVOrderListDao;
import naturalmom.data.model.VOrderListVo;

public class VOrderListDaoOraImpl extends NamedParameterJdbcDaoSupport implements IVOrderListDao {
	
	final String GET_ALL_ORDER = "SELECT order_no, order_date, represent_img, product_name, buy_num, "
			+ "charge, process_nm, mem_id FROM v_order_list WERER ROWNUM >= :start AND ROWNUM <= :end AND mem_id = :mem_id";

	final String GET_ALL_COUNT = "SELECT COUNT(order_no) FROM v_order_list WHERE mem_id = :mem_id";
	
	public List<VOrderListVo> getAllOreder(String mem_id, int start, int end) throws DataAccessException {
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("start", new Integer(start), Types.INTEGER);
		ps.addValue("end", new Integer(end), Types.INTEGER);
		ps.addValue("mem_id", mem_id, Types.VARCHAR);
		List<VOrderListVo> list = getNamedParameterJdbcTemplate().query(
				GET_ALL_ORDER, 
				ps,
				BeanPropertyRowMapper.newInstance(VOrderListVo.class));
		if (list != null)
			return list;
		return null;
	}

	public int getAllCount(String mem_id) throws DataAccessException {
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("mem_id", mem_id, Types.VARCHAR);
		return getNamedParameterJdbcTemplate().queryForInt(GET_ALL_COUNT, ps);
	}
	

}
