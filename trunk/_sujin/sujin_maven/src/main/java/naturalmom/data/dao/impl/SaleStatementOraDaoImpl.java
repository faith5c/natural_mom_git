package naturalmom.data.dao.impl;

import java.util.Calendar;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;

import naturalmom.data.dao.IVSaleStatementDao;
import naturalmom.data.model.SaleStatementVo;

public class SaleStatementOraDaoImpl extends NamedParameterJdbcDaoSupport implements IVSaleStatementDao {
	
	final String SELECT_TODAY_SALESTATEMENT = 
			"SELECT (SELECT COUNT(o.order_no) FROM tb_order o "
			+ "WHERE to_char(o.order_date, 'YYYY-MM-DD') = :today) AS order_no, "
			+ "(SELECT COUNT(DISTINCT po.product_no) FROM tb_product_n_order po, tb_order o "
			+ "WHERE po.order_no = o.order_no AND to_char(o.order_date, 'YYYY-MM-DD') = :today) "
			+ "AS product_no, ((SELECT SUM(o.charge) FROM tb_order o, tb_product_n_order po "
			+ "WHERE o.order_no = po.order_no AND po.process_cd = 21 "
			+ "AND to_char(o.order_date, 'YYYY-MM-DD') = :today) - (SELECT COUNT(o.order_no) "
			+ "FROM tb_order o, tb_product_n_order po WHERE o.order_no = po.order_no "
			+ "AND po.process_cd = 21 AND to_char(o.order_date, 'YYYY-MM-DD') = :today)*3000 ) "
			+ "AS sale_sum,(SELECT COUNT(o.order_no) FROM tb_order o, tb_product_n_order po "
			+ "WHERE o.order_no = po.order_no AND po.process_cd = 21 "
			+ "AND to_char(o.order_date, 'YYYY-MM-DD') = :today)*3000 AS delivery_sum, "
			+ "(SELECT SUM(o.charge) FROM tb_order o, tb_product_n_order po "
			+ "WHERE o.order_no = po.order_no AND po.process_cd = 21 "
			+ "AND to_char(o.order_date, 'YYYY-MM-DD') = :today) AS sale_total_sum, (SELECT SUM(o.charge) "
			+ "FROM tb_order o, tb_product_n_order po WHERE o.order_no = po.order_no "
			+ "AND po.process_cd = 32 AND to_char(o.order_date, 'YYYY-MM-DD') = :today) AS refund_sum, "
			+ "((SELECT SUM(o.charge) FROM tb_order o, tb_product_n_order po "
			+ "WHERE o.order_no = po.order_no AND po.process_cd = 32 "
			+ "AND to_char(o.order_date, 'YYYY-MM-DD') = :today) - (SELECT COUNT(o.charge) "
			+ "FROM tb_order o, tb_product_n_order po WHERE o.order_no = po.order_no "
			+ "AND po.process_cd = 32 AND to_char(o.order_date, 'YYYY-MM-DD') = :today)*3000) "
			+ "AS refund_total_sum, ((SELECT SUM(o.charge) FROM tb_order o, tb_product_n_order po "
			+ "WHERE o.order_no = po.order_no AND po.process_cd = 21 "
			+ "AND to_char(o.order_date, 'YYYY-MM-DD') = :today) - (SELECT COUNT(o.order_no) "
			+ "FROM tb_order o, tb_product_n_order po WHERE o.order_no = po.order_no "
			+ "AND po.process_cd = 21 AND to_char(o.order_date, 'YYYY-MM-DD') = :today)*3000) AS net_sale "
			+ "FROM DUAL";
	
	final String SELECT_PERIOD_SALESTATEMENT = 
			"SELECT (SELECT COUNT(o.order_no) FROM tb_order o "
			+ "WHERE to_char(o.order_date, 'YYYY-MM-DD') = :start "
			+ "AND to_char(o.order_date, 'YYYY-MM-DD') = :end) AS order_no, "
			+ "(SELECT COUNT(DISTINCT po.product_no) FROM tb_product_n_order po, tb_order o "
			+ "WHERE po.order_no = o.order_no AND to_char(o.order_date, 'YYYY-MM-DD') = :start "
			+ "AND to_char(o.order_date, 'YYYY-MM-DD') = :end) AS product_no, ((SELECT SUM(o.charge) "
			+ "FROM tb_order o, tb_product_n_order po WHERE o.order_no = po.order_no AND "
			+ "po.process_cd = 21 AND to_char(o.order_date, 'YYYY-MM-DD') = :start "
			+ "AND to_char(o.order_date, 'YYYY-MM-DD') = :end) - (SELECT COUNT(o.order_no) "
			+ "FROM tb_order o, tb_product_n_order po WHERE o.order_no = po.order_no "
			+ "AND po.process_cd = 21 AND to_char(o.order_date, 'YYYY-MM-DD') = :start "
			+ "AND to_char(o.order_date, 'YYYY-MM-DD') = :end)*3000 ) AS sale_sum,(SELECT COUNT(o.order_no) "
			+ "FROM tb_order o, tb_product_n_order po WHERE o.order_no = po.order_no "
			+ "AND po.process_cd = 21 AND to_char(o.order_date, 'YYYY-MM-DD') = :start "
			+ "AND to_char(o.order_date, 'YYYY-MM-DD') = :end)*3000 AS delivery_sum,(SELECT SUM(o.charge) "
			+ "FROM tb_order o, tb_product_n_order po WHERE o.order_no = po.order_no AND "
			+ "po.process_cd = 21 AND to_char(o.order_date, 'YYYY-MM-DD') = :start "
			+ "AND to_char(o.order_date, 'YYYY-MM-DD') = :end) AS sale_total_sum,(SELECT SUM(o.charge) "
			+ "FROM tb_order o, tb_product_n_order po WHERE o.order_no = po.order_no "
			+ "AND po.process_cd = 32 AND to_char(o.order_date, 'YYYY-MM-DD') = :start "
			+ "AND to_char(o.order_date, 'YYYY-MM-DD') = :end) AS refund_sum,((SELECT SUM(o.charge) "
			+ "FROM tb_order o, tb_product_n_order po WHERE o.order_no = po.order_no "
			+ "AND po.process_cd = 32 AND to_char(o.order_date, 'YYYY-MM-DD') = :start "
			+ "AND to_char(o.order_date, 'YYYY-MM-DD') = :end) - (SELECT COUNT(o.charge) "
			+ "FROM tb_order o, tb_product_n_order po WHERE o.order_no = po.order_no "
			+ "AND po.process_cd = 32 AND to_char(o.order_date, 'YYYY-MM-DD') = :start "
			+ "AND to_char(o.order_date, 'YYYY-MM-DD') = :end)*3000) AS refund_total_sum, "
			+ "((SELECT SUM(o.charge) FROM tb_order o, tb_product_n_order po "
			+ "WHERE o.order_no = po.order_no AND po.process_cd = 21 "
			+ "AND to_char(o.order_date, 'YYYY-MM-DD') = :start "
			+ "AND to_char(o.order_date, 'YYYY-MM-DD') = :end) - (SELECT COUNT(o.order_no) "
			+ "FROM tb_order o, tb_product_n_order po WHERE o.order_no = po.order_no "
			+ "AND po.process_cd = 21 AND to_char(o.order_date, 'YYYY-MM-DD') = :start "
			+ "AND to_char(o.order_date, 'YYYY-MM-DD') = :end)*3000) AS net_sale FROM DUAL";
	
	final String SELECT_ALL_SALESTATEMENT = 
			"SELECT (SELECT COUNT(order_no) FROM tb_order) AS order_no, (SELECT COUNT(product_no) "
			+ "FROM tb_product ) AS product_no, ((SELECT SUM(o.charge) "
			+ "FROM tb_order o, tb_product_n_order po WHERE o.order_no = po.order_no "
			+ "AND po.process_cd = 21 ) - (SELECT COUNT(o.order_no) FROM tb_order o, tb_product_n_order po "
			+ "WHERE o.order_no = po.order_no AND po.process_cd = 21)*3000) AS sale_sum, "
			+ "(SELECT COUNT(o.order_no) FROM tb_order o, tb_product_n_order po "
			+ "WHERE o.order_no = po.order_no AND po.process_cd = 21)*3000 AS delivery_sum, "
			+ "(SELECT SUM(o.charge) FROM tb_order o, tb_product_n_order po WHERE o.order_no = po.order_no "
			+ "AND po.process_cd = 21) AS sale_total_sum, (SELECT SUM(o.charge) "
			+ "FROM tb_order o, tb_product_n_order po WHERE o.order_no = po.order_no "
			+ "AND po.process_cd = 32) AS refund_sum, ((SELECT SUM(o.charge) "
			+ "FROM tb_order o, tb_product_n_order po WHERE o.order_no = po.order_no "
			+ "AND po.process_cd = 32) - (SELECT COUNT(o.charge) FROM tb_order o, tb_product_n_order po "
			+ "WHERE o.order_no = po.order_no AND po.process_cd = 32)*3000) AS refund_total_sum, "
			+ "((SELECT SUM(o.charge) FROM tb_order o, tb_product_n_order po "
			+ "WHERE o.order_no = po.order_no AND po.process_cd = 21) - (SELECT COUNT(o.order_no) "
			+ "FROM tb_order o, tb_product_n_order po WHERE o.order_no = po.order_no "
			+ "AND po.process_cd = 21)*3000) AS net_sale FROM DUAL";
	
	public SaleStatementVo getSaleStatement() throws DataAccessException {
		// TODO Auto-generated method stub
		List<SaleStatementVo> list = getJdbcTemplate().query(SELECT_ALL_SALESTATEMENT, 
				BeanPropertyRowMapper.newInstance(SaleStatementVo.class));
		if( list != null && list.get(0) != null ) return list.get(0);
		return null;
	}

	
	public SaleStatementVo getSaleStatement(Calendar today) throws DataAccessException {
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("today", today);
		List<SaleStatementVo> list = getNamedParameterJdbcTemplate().query(SELECT_ALL_SALESTATEMENT, 
				ps, BeanPropertyRowMapper.newInstance(SaleStatementVo.class));
		if( list != null && list.get(0) != null ) return list.get(0);
		return null;
	}

	
	public SaleStatementVo getSaleStatement(Calendar start, Calendar end) throws DataAccessException {
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("start", start);
		ps.addValue("end", end);
		List<SaleStatementVo> list = getNamedParameterJdbcTemplate().query(SELECT_ALL_SALESTATEMENT, 
				ps, BeanPropertyRowMapper.newInstance(SaleStatementVo.class));
		if( list != null && list.get(0) != null ) return list.get(0);
		return null;
	}

}
