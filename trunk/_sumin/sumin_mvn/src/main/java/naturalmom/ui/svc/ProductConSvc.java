package naturalmom.ui.svc;

import naturalmom.data.dao.IProductDao;

public class ProductConSvc extends ConSvc{
	private final int CHOICE_GET_ALL_PRODUCT = 1;
	private final int CHOICE_GET_PRODUCT_BY_CATEGORY_CD = 2;
	private final int CHOICE_EXIT = 3;
	
	private final int MIN_NUM = CHOICE_GET_ALL_PRODUCT;
	private final int MAX_NUM = CHOICE_EXIT;
	
	IProductDao productDao;

	public void setProductDao(IProductDao productDao) {
		this.productDao = productDao;
	}

	public void showMenu(){
		System.out.println(line1);
		System.out.println("choice PRODUCT menu");
		System.out.println(line1);
		System.out.println("1. get All Product");
		System.out.println("2. get Product By CategoryCd");
		System.out.println("3. Exit");
		System.out.println(line2);
	}
	
	public void show() {
		showMenu();
		
		String str = inputUser();
		int num = checkNumberMinMax(MIN_NUM, MAX_NUM, str);
		
		switch(num){
		case CHOICE_GET_ALL_PRODUCT:
			break;
			
		case CHOICE_GET_PRODUCT_BY_CATEGORY_CD:
			break;
			
		case CHOICE_EXIT:
			System.out.println("exit");
			System.exit(0);
			
		default : 
			this.show();
		}
	}
}