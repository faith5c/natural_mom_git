package naturalmom.ui.svc;

import java.util.List;

import naturalmom.data.dao.impl.ProductDaoOraImpl;
import naturalmom.data.model.ProductVo;

public class ProductSvc extends ConSvc
{
	public static final int GET_ONE_PRODUCT = 1;
	public static final int EDIT_ONE_PRODUCT = 2;
	public static final int EDIT_DISPLAY_STATE = 3;
	public static final int EDIT_SALE_STATE = 4;
	public static final int EDIT_DELETED_STATE = 5;
	public static final int ADD_ONE_PRODUCT = 6;
	
	private ProductDaoOraImpl productDao;
	private ProductVo test = new ProductVo();
	
	public void showMenu() 
	{
		System.out.println(" 1. PRODUCT");
		System.out.println(" 2. REVIEW");
		System.out.println(" 3. V_PRODUCT_DELETED");
		System.out.println(" 4. V_PRODUCT_NANAGE");
		System.out.println(" 5. V_RANK_SELLS");
		System.out.println(" 6. V_REVIEW_ADMIN");
		System.out.println(" 7. V_REVIEW_FRONT");
		System.out.println(" 9. EXIT");
		System.out.print(" >> ");
		execFunctions(inputNumber(inputUser()));
	}

	@Override
	public void execFunctions(int num) 
	{
		switch(num)
		{
		case GET_ONE_PRODUCT:
			showOneProduct(productDao.getOneProduct(10001));
			break;
			
		case EDIT_ONE_PRODUCT:
			break;
			
		case EDIT_DISPLAY_STATE:
			break;
			
		case EDIT_SALE_STATE:
			break;
			
		case EDIT_DELETED_STATE:
			break;
			
		case ADD_ONE_PRODUCT:
			break;
		}
	}

	public void setProductDao(ProductDaoOraImpl productDao) 
	{
		this.productDao = productDao;
	}
	
	private void showOneProduct(ProductVo productVo)
	{
		System.out.println(productVo);
	}
}

