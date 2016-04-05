package naturalmom.dao.impl;

import java.util.List;

import naturalmom.dao.IProductDAO;
import naturalmom.model.Product;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class ProductDAOOracleImpl extends JdbcDaoSupport implements IProductDAO 
{
	// 상품번호로 상품 가져오기
	private final String SELECT_ONE_PRODUCT = "SELECT * FROM tb_product WHERE product_no = ?";
	// 상품 수정하기
	private final String UPDATE_ONE_PRODUCT = "UPDATE tb_product SET product_name = ?, category_cd = ?, "
			+ "selling_price = ?, cost_price = ?, stock = ?, weight = ?, represent_img = ?, detail_img = ?, "
			+ "summary_ex = ?, detail_ex = ?, display_state = ?, sale_state = ? "
			+ "WHERE product_no = ?";
	// 진열 상태 수정하기
	private final String UPDATE_DISPLAY_STATE = "UPDATE tb_product SET display_state = ? WHERE product_no = ?";
	// 판매 상태 수정하기
	private final String UPDATE_SALE_STATE = "UPDATE tb_product SET sale_state = ? WHERE product_no = ?";	
	// 삭제 상태 수정하기
	private final String UPDATE_DELETED_STATE = "UPDATE tb_product SET deleted_state = ?, display_state = 1, sale_state = 1 WHERE product_no = ?";
	
	@Override
	public Product selectOneProduct(int product_no) throws DataAccessException
	{
		List<Product> list = getJdbcTemplate().query(SELECT_ONE_PRODUCT, 
				new BeanPropertyRowMapper<Product>(Product.class), new Integer(product_no));
		
		if (list != null && list.size() > 0)
			return list.get(0);
		
		else
			return null;
	}

	@Override
	public int insertProduct(Product product) throws DataAccessException
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateDisplayState(Product product, int state) throws DataAccessException
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateSaleState(Product product, int state) throws DataAccessException
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateDeletedState(Product product, int state) throws DataAccessException
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateOneProduct(Product product) throws DataAccessException
	{
		// TODO Auto-generated method stub
		return 0;
	}

}
