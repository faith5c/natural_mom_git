package naturalmom.data.dao.impl;

import java.sql.Types;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import naturalmom.data.dao.IOrderDao;
import naturalmom.data.model.OrderVo;

public class OrderDaoOraImpl extends NamedParameterJdbcDaoSupport implements IOrderDao {

	final String ADD_ORDER = 
			"INSERT INTO tb_order (charge, credit_num, credit_exp, rcv_name, rcv_phone, "
			+ "rcv_addr_post, rcv_addr_detail, delivery_msg, credit_cd, delivery_com_cd, mem_id, order_no) "
			+ "VALUES (:charge, :credit_num, :credit_exp, :rcv_name, :rcv_phone, :rcv_addr_post, :rcv_addr_detail,"
			+ " :delivery_msg, (SELECT c.credit_cd FROM tb_credit c WHERE c.credit_nm = :credit_nm), "
			+ "(SELECT d.delivery_com_cd FROM tb_delivery_com d WHERE d.delivery_com_nm = :delivery_com_nm),"
			+ " :mem_id, ORDER_NO_SEQ.NEXTVAL)";
	
	final String EDIT_ORDER = 
			"UPDATE NMDB.tb_order SET tracking_num = :tracking_num WHERE order_no = :order_no";
	
	
	public int addOrder(OrderVo order, String credit_nm, String delivery_com_nm) throws DataAccessException {
		// TODO Auto-generated method stub
		KeyHolder gkh = new GeneratedKeyHolder();
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("charge", new Integer(order.getCharge()), Types.INTEGER);
		ps.addValue("credit_num", order.getCredit_num(), Types.VARCHAR);
		ps.addValue("credit_exp", order.getCredit_exp(), Types.VARCHAR);
		ps.addValue("rcv_name", order.getRcv_name(), Types.VARCHAR);
		ps.addValue("rcv_phone", order.getRcv_phone(), Types.VARCHAR);
		ps.addValue("rcv_addr_post", order.getRcv_addr_post(), Types.VARCHAR);
		ps.addValue("rcv_addr_detail", order.getRcv_addr_detail(), Types.VARCHAR);
		ps.addValue("delivery_msg", order.getDelivery_msg(), Types.VARCHAR);
		ps.addValue("credit_nm", credit_nm, Types.VARCHAR);
		ps.addValue("delivery_com_nm", delivery_com_nm, Types.VARCHAR);
		int r = this.getNamedParameterJdbcTemplate().update(ADD_ORDER, ps, gkh);
		return ( r > 0 && gkh != null) ? gkh.getKey().intValue() : -1;
	}

	
	public int editOrder(int order_no, int tracking_num) throws DataAccessException {
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("order_no", new Integer(order_no), Types.INTEGER);
		ps.addValue("tracking_num", new Integer(tracking_num), Types.INTEGER);
		int r = this.getNamedParameterJdbcTemplate().update(ADD_ORDER, ps);
		return r;
	}

}
