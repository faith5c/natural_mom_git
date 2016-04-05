package naturalmom.data.dao.impl;

import java.util.List;

import naturalmom.data.dao.IProductDao;
import naturalmom.data.model.ProductVo;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class ProductDaoOraImpl extends JdbcDaoSupport implements IProductDao 
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
	public ProductVo selectOneProduct(int product_no) throws DataAccessException
	{
		List<ProductVo> list = getJdbcTemplate().query(SELECT_ONE_PRODUCT, 
				new BeanPropertyRowMapper<ProductVo>(ProductVo.class), new Integer(product_no));
		
		if (list != null && list.size() > 0)
			return list.get(0);
		
		else
			return null;
	}

	@Override
	public int insertProduct(ProductVo product) throws DataAccessException
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateDisplayState(ProductVo product, int state) throws DataAccessException
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateSaleState(ProductVo product, int state) throws DataAccessException
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateDeletedState(ProductVo product, int state) throws DataAccessException
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateOneProduct(ProductVo product) throws DataAccessException
	{
		// TODO Auto-generated method stub
		return 0;
	}

}
