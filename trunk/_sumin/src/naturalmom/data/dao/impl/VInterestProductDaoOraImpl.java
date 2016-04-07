package naturalmom.data.dao.impl;

import java.sql.Types;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import naturalmom.data.dao.IVInterestProductDao;
import naturalmom.data.model.VCartProductVo;
import naturalmom.data.model.VInterestProductVo;

public class VInterestProductDaoOraImpl extends NamedParameterJdbcDaoSupport implements IVInterestProductDao {

	private final String SELECT_ALL_CART_PRODUCT = "SELECT product_no, product_name, selling_price, sale_state, represent_img, mem_id FROM V_INTEREST_PRODUCT";
	private final String SELECT_CART_PRODUCT_BY_MEM_ID = "SELECT product_no, product_name, selling_price, sale_state, represent_img, mem_id FROM V_INTEREST_PRODUCT WHERE mem_id=:mem_id";
	
	@Override
	public List<VInterestProductVo> getAllCart() throws DataAccessException {
		return this.getJdbcTemplate().query(SELECT_ALL_CART_PRODUCT, new BeanPropertyRowMapper<VInterestProductVo>(VInterestProductVo.class));
	}

	@Override
	public List<VInterestProductVo> getCartByMemId(String mem_id) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("mem_id", mem_id, Types.VARCHAR);
		return npjtem.query(SELECT_ALL_CART_PRODUCT, ps, new BeanPropertyRowMapper<VInterestProductVo>(VInterestProductVo.class));
	}
}