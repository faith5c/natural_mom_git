package com.nmom.soap.data.impl.order;

import java.sql.Types;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;

import com.nmom.soap.data.dao.order.IProductOrderDao;
import com.nmom.soap.data.model.order.ProductOrderVo;

public class ProductOrderDaoOraImpl extends NamedParameterJdbcDaoSupport implements IProductOrderDao {
	
	final String ADD_ORDER = "INSERT INTO tb_product_n_order (product_no, order_no, buy_num, process_cd) "
			+ "VALUES (:product_no, :order_no, :buy_num, :process_cd)";
	
	final String EDIT_ALL_ORDER = 
			"UPDATE NMDB.tb_product_n_order SET process_cd = :process_cd WHERE order_no = :order_no";
	
	final String EDIT_ONT_ORDER = 
			"UPDATE tb_product_n_order po SET po.process_cd = :process_cd "
			+ "WHERE EXISTS(SELECT p.product_no FROM tb_product p "
			+ "WHERE p.product_no = po.product_no AND p.product_name = :product_name) AND order_no = :order_no";
	
	
	public int addOrder(ProductOrderVo po) throws DataAccessException {
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("product_no", new Integer(po.getProduct_no()), Types.INTEGER);
		ps.addValue("order_no", new Integer(po.getOrder_no()), Types.INTEGER);
		ps.addValue("buy_num", new Integer(po.getBuy_num()), Types.INTEGER);
		ps.addValue("process_cd", new Integer(po.getProcess_cd()), Types.INTEGER);
		int r = this.getNamedParameterJdbcTemplate().update(ADD_ORDER, ps);
		return r;
	}

	
	public int editOrder(int order_no, int process_cd) throws DataAccessException {
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("order_no", new Integer(order_no), Types.INTEGER);
		ps.addValue("process_cd", new Integer(process_cd), Types.INTEGER);
		int r = this.getNamedParameterJdbcTemplate().update(EDIT_ALL_ORDER, ps);
		return r;
	}

	
	public int editPartOrder(int order_no, String product_name, int process_cd) throws DataAccessException {
		// TODO Auto-generated method stub
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("order_no", new Integer(order_no), Types.INTEGER);
		ps.addValue("product_name", product_name, Types.VARCHAR);
		ps.addValue("process_cd", new Integer(process_cd), Types.INTEGER);
		int r = this.getNamedParameterJdbcTemplate().update(EDIT_ONT_ORDER, ps);
		return r;
	}

}
