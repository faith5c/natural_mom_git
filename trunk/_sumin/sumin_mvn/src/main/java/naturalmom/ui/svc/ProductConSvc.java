package naturalmom.ui.svc;

import java.util.List;

import com.nmom.soap.data.dao.product.IProductDao;
import com.nmom.soap.data.model.product.ProductVo;

public class ProductConSvc extends ConSvc{
	private final int CHOICE_GET_ALL_PRODUCT = 1;
	private final int CHOICE_GET_PRODUCT_BY_CATEGORY_CD = 2;
	private final int CHOICE_GET_PRODUCT_BY_PRODUCT_NAME = 3;
	private final int CHOICE_EXIT = 4;
	
	private final int MIN_NUM = CHOICE_GET_ALL_PRODUCT;
	private final int MAX_NUM = CHOICE_EXIT;
	
	IProductDao productDao;

	public void setProductDao(IProductDao productDao) {
		this.productDao = productDao;
	}

	public void showMenu(){
		System.out.println(line1);
		System.out.println("choice PRODUCT menu");
		System.out.println(line2);
		System.out.println("1. get All Product");
		System.out.println("2. get Product By CategoryCd");
		System.out.println("3. get Product By ProductName");
		System.out.println("4. Exit\n");
	}
	
	public void show() {
		
		String str = null;
		List<ProductVo> vlist = null;

		showMenu();
		int num = checkNumberMinMax(MIN_NUM, MAX_NUM, inputUser());
		
		switch(num){
		case CHOICE_GET_ALL_PRODUCT:
			vlist = productDao.getAllProduct();
			
			for(ProductVo p : vlist){
				System.out.println(p);
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_GET_PRODUCT_BY_CATEGORY_CD:
			System.out.println("INPUT : CATEGORY_CD (1~4)");
			str = inputUser();
			
			vlist = productDao.getProductByCategoryCd(Integer.parseInt(str));
			
			for(ProductVo p : vlist){
				System.out.println(p);
			}
			
			inputEnter();
			this.show();
			break;
		
		case CHOICE_GET_PRODUCT_BY_PRODUCT_NAME:
			System.out.println("INPUT : product_name (keyword)");
			str = inputUser();
			
			vlist = productDao.getProductByProductName(str);
			
			for(ProductVo p : vlist){
				System.out.println(p);
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_EXIT:
			System.out.println("exit program");
			System.exit(0);
			
		default : 
			this.show();
		}
	}
}