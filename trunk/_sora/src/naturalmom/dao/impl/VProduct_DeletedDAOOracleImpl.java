package naturalmom.dao.impl;

import java.util.List;

import naturalmom.dao.IVProduct_DeletedDAO;
import naturalmom.model.VProduct_Deleted;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class VProduct_DeletedDAOOracleImpl extends JdbcDaoSupport implements IVProduct_DeletedDAO 
{
	// ��ǰ ��ȣ �������� ����
	private final String SELECT_ALL_BY_PRODUCT_NO_ASC = "SELECT * FROM V_PRODUCT_DELETED ORDER BY product_no";
	// ��ǰ ��ȣ �������� ����
	private final String SELECT_ALL_BY_PRODUCT_NO_DESC = "SELECT * FROM V_PRODUCT_DELETED ORDER BY product_no desc";
	// ��ǰ �̸� �������� ����
	private final String SELECT_ALL_BY_PRODUCT_NAME_ASC = "SELECT * FROM V_PRODUCT_DELETED ORDER BY product_name, product_no";
	// ��ǰ �̸� �������� ����
	private final String SELECT_ALL_BY_PRODUCT_NAME_DESC = "SELECT * FROM V_PRODUCT_DELETED ORDER BY product_name desc, product_no";
	// �Ǹ� ���� �������� ����
	private final String SELECT_ALL_BY_SELLING_PRICE_ASC = "SELECT * FROM V_PRODUCT_DELETED ORDER BY selling_price, product_no";
	// �Ǹ� ���� �������� ����
	private final String SELECT_ALL_BY_SELLING_PRICE_DESC = "SELECT * FROM V_PRODUCT_DELETED ORDER BY selling_price desc, product_no";
	// ��� �������� ����
	private final String SELECT_ALL_BY_STOCK_ASC = "SELECT * FROM V_PRODUCT_DELETED ORDER BY stock, product_no";
	// ��� �������� ����
	private final String SELECT_ALL_BY_STOCK_DESC = "SELECT * FROM V_PRODUCT_DELETED ORDER BY stock desc, product_no";
	// �� �Ǹŷ� �������� ����
	private final String SELECT_ALL_BY_ALL_SELLS_ASC = "SELECT * FROM V_PRODUCT_DELETED ORDER BY all_sells, product_no";
	// �� �Ǹŷ� �������� ����
	private final String SELECT_ALL_BY_ALL_SELLS_DESC = "SELECT * FROM V_PRODUCT_DELETED ORDER BY all_sells desc, product_no";
	
	@Override
	public List<VProduct_Deleted> selectAllDeletedProduct_by_product_no(boolean order) throws DataAccessException 
	{
		if(order)
			return getJdbcTemplate().query(SELECT_ALL_BY_PRODUCT_NO_ASC, 
					new BeanPropertyRowMapper<VProduct_Deleted>(VProduct_Deleted.class));
		else
			return getJdbcTemplate().query(SELECT_ALL_BY_PRODUCT_NO_DESC, 
					new BeanPropertyRowMapper<VProduct_Deleted>(VProduct_Deleted.class));
	}

	@Override
	public List<VProduct_Deleted> selectAllDeletedProduct_by_product_name(boolean order) throws DataAccessException 
	{
		if(order)
			return getJdbcTemplate().query(SELECT_ALL_BY_PRODUCT_NAME_ASC, 
					new BeanPropertyRowMapper<VProduct_Deleted>(VProduct_Deleted.class));
		else
			return getJdbcTemplate().query(SELECT_ALL_BY_PRODUCT_NAME_DESC, 
					new BeanPropertyRowMapper<VProduct_Deleted>(VProduct_Deleted.class));
	}

	@Override
	public List<VProduct_Deleted> selectAllDeletedProduct_by_selling_price(boolean order) throws DataAccessException 
	{
		if(order)
			return getJdbcTemplate().query(SELECT_ALL_BY_SELLING_PRICE_ASC, 
					new BeanPropertyRowMapper<VProduct_Deleted>(VProduct_Deleted.class));
		else
			return getJdbcTemplate().query(SELECT_ALL_BY_SELLING_PRICE_DESC, 
					new BeanPropertyRowMapper<VProduct_Deleted>(VProduct_Deleted.class));
	}

	@Override
	public List<VProduct_Deleted> selectAllDeletedProduct_by_stock(boolean order) throws DataAccessException 
	{
		if(order)
			return getJdbcTemplate().query(SELECT_ALL_BY_STOCK_ASC, 
					new BeanPropertyRowMapper<VProduct_Deleted>(VProduct_Deleted.class));
		else
			return getJdbcTemplate().query(SELECT_ALL_BY_STOCK_DESC, 
					new BeanPropertyRowMapper<VProduct_Deleted>(VProduct_Deleted.class));
	}

	@Override
	public List<VProduct_Deleted> selectAllDeletedProduct_by_all_sells(boolean order) throws DataAccessException 
	{
		if(order)
			return getJdbcTemplate().query(SELECT_ALL_BY_ALL_SELLS_ASC, 
					new BeanPropertyRowMapper<VProduct_Deleted>(VProduct_Deleted.class));
		else
			return getJdbcTemplate().query(SELECT_ALL_BY_ALL_SELLS_DESC, 
					new BeanPropertyRowMapper<VProduct_Deleted>(VProduct_Deleted.class));
	}

}
