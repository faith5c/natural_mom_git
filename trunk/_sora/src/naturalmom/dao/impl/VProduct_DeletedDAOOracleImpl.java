package naturalmom.dao.impl;

import java.util.List;

import naturalmom.dao.IVProduct_DeletedDAO;
import naturalmom.model.VProduct_Deleted;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class VProduct_DeletedDAOOracleImpl extends JdbcDaoSupport implements IVProduct_DeletedDAO 
{
	// 상품 번호 오름차순 정렬
	private final String SELECT_ALL_BY_PRODUCT_NO_ASC = "SELECT * FROM V_PRODUCT_DELETED ORDER BY product_no";
	// 상품 번호 내림차순 정렬
	private final String SELECT_ALL_BY_PRODUCT_NO_DESC = "SELECT * FROM V_PRODUCT_DELETED ORDER BY product_no desc";
	// 상품 이름 오름차순 정렬
	private final String SELECT_ALL_BY_PRODUCT_NAME_ASC = "SELECT * FROM V_PRODUCT_DELETED ORDER BY product_name, product_no";
	// 상품 이름 내림차순 정렬
	private final String SELECT_ALL_BY_PRODUCT_NAME_DESC = "SELECT * FROM V_PRODUCT_DELETED ORDER BY product_name desc, product_no";
	// 판매 가격 오름차순 정렬
	private final String SELECT_ALL_BY_SELLING_PRICE_ASC = "SELECT * FROM V_PRODUCT_DELETED ORDER BY selling_price, product_no";
	// 판매 가격 내림차순 정렬
	private final String SELECT_ALL_BY_SELLING_PRICE_DESC = "SELECT * FROM V_PRODUCT_DELETED ORDER BY selling_price desc, product_no";
	// 재고 오름차순 정렬
	private final String SELECT_ALL_BY_STOCK_ASC = "SELECT * FROM V_PRODUCT_DELETED ORDER BY stock, product_no";
	// 재고 내림차순 정렬
	private final String SELECT_ALL_BY_STOCK_DESC = "SELECT * FROM V_PRODUCT_DELETED ORDER BY stock desc, product_no";
	// 총 판매량 오름차순 정렬
	private final String SELECT_ALL_BY_ALL_SELLS_ASC = "SELECT * FROM V_PRODUCT_DELETED ORDER BY all_sells, product_no";
	// 총 판매량 내림차순 정렬
	private final String SELECT_ALL_BY_ALL_SELLS_DESC = "SELECT * FROM V_PRODUCT_DELETED ORDER BY all_sells desc, product_no";
	
	@Override
	public List<VProduct_Deleted> selectAllDeletedProduct_by_product_no(boolean order) 
	{
		if(order)
			return getJdbcTemplate().query(SELECT_ALL_BY_PRODUCT_NO_ASC, 
					new BeanPropertyRowMapper<VProduct_Deleted>(VProduct_Deleted.class));
		else
			return getJdbcTemplate().query(SELECT_ALL_BY_PRODUCT_NO_DESC, 
					new BeanPropertyRowMapper<VProduct_Deleted>(VProduct_Deleted.class));
	}

	@Override
	public List<VProduct_Deleted> selectAllDeletedProduct_by_product_name(boolean order) 
	{
		if(order)
			return getJdbcTemplate().query(SELECT_ALL_BY_PRODUCT_NAME_ASC, 
					new BeanPropertyRowMapper<VProduct_Deleted>(VProduct_Deleted.class));
		else
			return getJdbcTemplate().query(SELECT_ALL_BY_PRODUCT_NAME_DESC, 
					new BeanPropertyRowMapper<VProduct_Deleted>(VProduct_Deleted.class));
	}

	@Override
	public List<VProduct_Deleted> selectAllDeletedProduct_by_selling_price(boolean order) 
	{
		if(order)
			return getJdbcTemplate().query(SELECT_ALL_BY_SELLING_PRICE_ASC, 
					new BeanPropertyRowMapper<VProduct_Deleted>(VProduct_Deleted.class));
		else
			return getJdbcTemplate().query(SELECT_ALL_BY_SELLING_PRICE_DESC, 
					new BeanPropertyRowMapper<VProduct_Deleted>(VProduct_Deleted.class));
	}

	@Override
	public List<VProduct_Deleted> selectAllDeletedProduct_by_stock(boolean order) 
	{
		if(order)
			return getJdbcTemplate().query(SELECT_ALL_BY_STOCK_ASC, 
					new BeanPropertyRowMapper<VProduct_Deleted>(VProduct_Deleted.class));
		else
			return getJdbcTemplate().query(SELECT_ALL_BY_STOCK_DESC, 
					new BeanPropertyRowMapper<VProduct_Deleted>(VProduct_Deleted.class));
	}

	@Override
	public List<VProduct_Deleted> selectAllDeletedProduct_by_all_sells(boolean order) 
	{
		if(order)
			return getJdbcTemplate().query(SELECT_ALL_BY_ALL_SELLS_ASC, 
					new BeanPropertyRowMapper<VProduct_Deleted>(VProduct_Deleted.class));
		else
			return getJdbcTemplate().query(SELECT_ALL_BY_ALL_SELLS_DESC, 
					new BeanPropertyRowMapper<VProduct_Deleted>(VProduct_Deleted.class));
	}

}
