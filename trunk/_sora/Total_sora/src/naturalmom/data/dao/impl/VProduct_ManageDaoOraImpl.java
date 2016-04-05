package naturalmom.data.dao.impl;

import java.util.List;

import naturalmom.data.dao.IVProduct_ManageDao;
import naturalmom.data.model.VProduct_ManageVo;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class VProduct_ManageDaoOraImpl extends JdbcDaoSupport implements IVProduct_ManageDao 
{
	// ��ǰ ��ȣ �������� ����
	private final String SELECT_ALL_BY_PRODUCT_NO_ASC = "SELECT * FROM V_PRODUCT_MANAGE ORDER BY product_no";
	// ��ǰ ��ȣ �������� ����
	private final String SELECT_ALL_BY_PRODUCT_NO_DESC = "SELECT * FROM V_PRODUCT_MANAGE ORDER BY product_no desc";
	// ī�װ? �̸� �������� ����
	private final String SELECT_ALL_BY_CATEGORY_NM_ASC = "SELECT * FROM V_PRODUCT_MANAGE ORDER BY category_nm, product_no";
	// ī�װ? �̸� �������� ����
	private final String SELECT_ALL_BY_CATEGORY_NM_DESC = "SELECT * FROM V_PRODUCT_MANAGE ORDER BY category_nm desc, product_no";
	// ��ǰ�� �������� ����
	private final String SELECT_ALL_BY_PRODUCT_NAME_ASC = "SELECT * FROM V_PRODUCT_MANAGE ORDER BY product_name, product_no";
	// ��ǰ�� �������� ����
	private final String SELECT_ALL_BY_PRODUCT_NAME_DESC = "SELECT * FROM V_PRODUCT_MANAGE ORDER BY product_name desc, product_no";
	// �ǸŰ��� �������� ����
	private final String SELECT_ALL_BY_SELLING_PRICE_ASC = "SELECT * FROM V_PRODUCT_MANAGE ORDER BY selling_price, product_no";
	// �ǸŰ��� �������� ����
	private final String SELECT_ALL_BY_SELLING_PRICE_DESC = "SELECT * FROM V_PRODUCT_MANAGE ORDER BY selling_price desc, product_no";
	// ��� �������� ����
	private final String SELECT_ALL_BY_STOCK_ASC = "SELECT * FROM V_PRODUCT_MANAGE ORDER BY stock, product_no";
	// ��� �������� ����
	private final String SELECT_ALL_BY_STOCK_DESC = "SELECT * FROM V_PRODUCT_MANAGE ORDER BY stock desc, product_no";
	// ����� �������� ����
	private final String SELECT_ALL_BY_DISPLAY_STATE_ASC = "SELECT * FROM V_PRODUCT_MANAGE ORDER BY display_state, product_no";
	// ����� �������� ����
	private final String SELECT_ALL_BY_DISPLAY_STATE_DESC = "SELECT * FROM V_PRODUCT_MANAGE ORDER BY display_state desc, product_no";
	// �ǸŻ��� �������� ����
	private final String SELECT_ALL_BY_SALE_STATE_ASC = "SELECT * FROM V_PRODUCT_MANAGE ORDER BY sale_state, product_no";
	// �ǸŻ��� �������� ����
	private final String SELECT_ALL_BY_SALE_STATE_DESC = "SELECT * FROM V_PRODUCT_MANAGE ORDER BY sale_state desc, product_no";
	// �� �Ǹŷ� �������� ����
	private final String SELECT_ALL_BY_ALL_SELLS_ASC = "SELECT * FROM V_PRODUCT_MANAGE ORDER BY all_sells, product_no";
	// �� �Ǹŷ� �������� ����
	private final String SELECT_ALL_BY_ALL_SELLS_DESC = "SELECT * FROM V_PRODUCT_MANAGE ORDER BY all_sells desc, product_no";
	
	@Override
	public List<VProduct_ManageVo> selectAllProduct_by_product_no(boolean order) throws DataAccessException 
	{
		if(order)
			return getJdbcTemplate().query(SELECT_ALL_BY_PRODUCT_NO_ASC, 
					new BeanPropertyRowMapper<VProduct_ManageVo>(VProduct_ManageVo.class));
		else
			return getJdbcTemplate().query(SELECT_ALL_BY_PRODUCT_NO_DESC, 
					new BeanPropertyRowMapper<VProduct_ManageVo>(VProduct_ManageVo.class));
	}

	@Override
	public List<VProduct_ManageVo> selectAllProduct_by_category_nm(boolean order) throws DataAccessException 
	{
		if(order)
			return getJdbcTemplate().query(SELECT_ALL_BY_CATEGORY_NM_ASC, 
					new BeanPropertyRowMapper<VProduct_ManageVo>(VProduct_ManageVo.class));
		else
			return getJdbcTemplate().query(SELECT_ALL_BY_CATEGORY_NM_DESC, 
					new BeanPropertyRowMapper<VProduct_ManageVo>(VProduct_ManageVo.class));
	}

	@Override
	public List<VProduct_ManageVo> selectAllProduct_by_product_name(boolean order) throws DataAccessException 
	{
		if(order)
			return getJdbcTemplate().query(SELECT_ALL_BY_PRODUCT_NAME_ASC, 
					new BeanPropertyRowMapper<VProduct_ManageVo>(VProduct_ManageVo.class));
		else
			return getJdbcTemplate().query(SELECT_ALL_BY_PRODUCT_NAME_DESC, 
					new BeanPropertyRowMapper<VProduct_ManageVo>(VProduct_ManageVo.class));
	}

	@Override
	public List<VProduct_ManageVo> selectAllProduct_by_selling_price(boolean order) throws DataAccessException 
	{
		if(order)
			return getJdbcTemplate().query(SELECT_ALL_BY_SELLING_PRICE_ASC, 
					new BeanPropertyRowMapper<VProduct_ManageVo>(VProduct_ManageVo.class));
		else
			return getJdbcTemplate().query(SELECT_ALL_BY_SELLING_PRICE_DESC, 
					new BeanPropertyRowMapper<VProduct_ManageVo>(VProduct_ManageVo.class));
	}

	@Override
	public List<VProduct_ManageVo> selectAllProduct_by_stock(boolean order) throws DataAccessException 
	{
		if(order)
			return getJdbcTemplate().query(SELECT_ALL_BY_STOCK_ASC, 
					new BeanPropertyRowMapper<VProduct_ManageVo>(VProduct_ManageVo.class));
		else
			return getJdbcTemplate().query(SELECT_ALL_BY_STOCK_DESC, 
					new BeanPropertyRowMapper<VProduct_ManageVo>(VProduct_ManageVo.class));
	}

	@Override
	public List<VProduct_ManageVo> selectAllProduct_by_display_state(boolean order) throws DataAccessException 
	{
		if(order)
			return getJdbcTemplate().query(SELECT_ALL_BY_DISPLAY_STATE_ASC, 
					new BeanPropertyRowMapper<VProduct_ManageVo>(VProduct_ManageVo.class));
		else
			return getJdbcTemplate().query(SELECT_ALL_BY_DISPLAY_STATE_DESC, 
					new BeanPropertyRowMapper<VProduct_ManageVo>(VProduct_ManageVo.class));
	}

	@Override
	public List<VProduct_ManageVo> selectAllProduct_by_sale_state(boolean order) throws DataAccessException 
	{
		if(order)
			return getJdbcTemplate().query(SELECT_ALL_BY_SALE_STATE_ASC, 
					new BeanPropertyRowMapper<VProduct_ManageVo>(VProduct_ManageVo.class));
		else
			return getJdbcTemplate().query(SELECT_ALL_BY_SALE_STATE_DESC, 
					new BeanPropertyRowMapper<VProduct_ManageVo>(VProduct_ManageVo.class));
	}

	@Override
	public List<VProduct_ManageVo> selectAllProduct_by_all_sells(boolean order) throws DataAccessException
	{
		if(order)
			return getJdbcTemplate().query(SELECT_ALL_BY_ALL_SELLS_ASC, 
					new BeanPropertyRowMapper<VProduct_ManageVo>(VProduct_ManageVo.class));
		else
			return getJdbcTemplate().query(SELECT_ALL_BY_ALL_SELLS_DESC, 
					new BeanPropertyRowMapper<VProduct_ManageVo>(VProduct_ManageVo.class));
	}
}
