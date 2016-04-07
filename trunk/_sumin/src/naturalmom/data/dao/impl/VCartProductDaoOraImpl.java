package naturalmom.data.dao.impl;

import java.sql.Types;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import naturalmom.data.dao.IVCartProductDao;
import naturalmom.data.model.QnaReVo;
import naturalmom.data.model.VCartProductVo;

public class VCartProductDaoOraImpl extends NamedParameterJdbcDaoSupport implements IVCartProductDao{

	private final String SELECT_ALL_CART_PRODUCT = "SELECT product_no, product_name, selling_price, sale_state, represent_img, buy_num, mem_id FROM V_CART_PRODUCT";
	private final String SELECT_CART_PRODUCT_BY_MEM_ID = "SELECT product_no, product_name, selling_price, sale_state, represent_img, buy_num, mem_id FROM V_CART_PRODUCT WHERE mem_id=:mem_id";
	
	@Override
	public List<VCartProductVo> getAllCart() throws DataAccessException {
		return this.getJdbcTemplate().query(SELECT_ALL_CART_PRODUCT, new BeanPropertyRowMapper<VCartProductVo>(VCartProductVo.class));
	}

	@Override
	public List<VCartProductVo> getCartByMemId(String mem_id) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("mem_id", mem_id, Types.VARCHAR);
		return npjtem.query(SELECT_CART_PRODUCT_BY_MEM_ID, ps, new BeanPropertyRowMapper<VCartProductVo>(VCartProductVo.class));
	}
}