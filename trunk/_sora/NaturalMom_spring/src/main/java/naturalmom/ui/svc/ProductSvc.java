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
	private ProductVo test = new ProductVo(0, "연꽃 비누", 5000, 3400, 242, 1, 1, "http://i.imgur.com/XQxOgR0.jpg", "http://naturalmom.co.kr/shop/shop_image/attach/1508/20150825103458_dssxswyt.jpg", "고운 피부 만드는데 도움이 되는~", null, 0, 50, 1);
	private ProductVo test2;
	private ProductVo test3 = new ProductVo(10008, "연꽃잎 비누", 5100, 3500, 244, 0, 0, "http://i.imgur.com/bR5YMhA.jpg", "http://naturalmom.co.kr/shop/shop_image/attach/1512/20151208104114_pmlnirpn.jpg", "예쁜 피부 만드는데 도움이 되는~", null, 0, 52, 2);
	
	public void showMenu() 
	{
		System.out.println("1. GET ONE PRODUCT");
		System.out.println("2. EDIT ONE PRODUCT");
		System.out.println("3. EDIT DISPLAY STATE");
		System.out.println("4. EDIT SALE STATE");
		System.out.println("5. EDIT DELETED STATE");
		System.out.println("6. ADD ONE PRODUCT");
		System.out.println("9. EXIT");
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
			showResult(productDao.editOneProduct(test3));
			break;
			
		case EDIT_DISPLAY_STATE:
			showResult(productDao.editDisplayState(test3, TRUE));
			break;
			
		case EDIT_SALE_STATE:
			showResult(productDao.editSaleState(test3, FALSE));
			break;
			
		case EDIT_DELETED_STATE:
			showResult(productDao.editDeletedState(test3, TRUE));
			break;
			
		case ADD_ONE_PRODUCT:
			showResult(productDao.addProduct(test));
			break;
			
		case EXIT:
			System.exit(0);
		}
		
		showMenu();
	}

	public void setProductDao(ProductDaoOraImpl productDao) 
	{
		this.productDao = productDao;
	}
	
	private void showOneProduct(ProductVo productVo)
	{
		System.out.println(productVo.toString());
	}
}

