package naturalmom.dao;

import java.util.List;

import naturalmom.model.Product;

public interface IProductDAO 
{
	List<Product> selectAllProduct();
	
	Product selectOneProduct(int product_no);
	
	int insertProduct(Product product);
	
	int updateDisplayState(Product product, int state);
	
	int updateSaleState(Product product, int state);
	
	int updateDeletedState(Product product, int state);

	int updateOneProduct(Product product);
}
