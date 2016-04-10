package naturalmom.ui.svc;

import naturalmom.data.dao.ICartDao;
import naturalmom.data.dao.IVCartProductDao;
import naturalmom.data.model.CartVo;

public class CartConSvc extends ConSvc{
	
	private final int CHOICE_GET_ALL_CART = 1;
	private final int CHOICE_GET_CART_BY_MEM_ID = 2;
	
	private final int CHOICE_DUPLICATION_CARTPRODUCT_CHECK = 3;
	private final int CHOICE_ADD_CARTPRODUCT_BY_CART = 4;
	private final int CHOICE_ADD_CARTPRODUCT = 5;
	private final int CHOICE_REMOVE_CARTPRODUCT_BY_CART = 6;
	private final int CHOICE_REMOVE_CARTPRODUCT = 7;
	private final int CHOICE_EDIT_CART_BUYNUM_BY_CART = 8;
	private final int CHOICE_EDIT_CARTPRODUCT= 9;
	private final int CHOICE_EXIT= 10;

	private final int MIN_NUM = CHOICE_GET_ALL_CART;
	private final int MAX_NUM = CHOICE_EXIT;
	
	ICartDao cartDao;
	IVCartProductDao vCartProductDao;

	public void setVCartProductDao(IVCartProductDao vCartProductDao) {
		this.vCartProductDao = vCartProductDao;
	}
	
	public void setCartDao(ICartDao cartDao) {
		this.cartDao = cartDao;
	}

	public void showMenu(){
		System.out.println(line1);
		System.out.println("choice CART menu");
		System.out.println(line1);
		System.out.println("1. get All Cart");
		System.out.println("2. get Cart ByMemId");
		System.out.println(line2);
		System.out.println("3. duplication CartProduct Check");
		System.out.println("4. add CartProduct By Cart");
		System.out.println("5. add CartProduct");
		System.out.println("6. remove CartProduct By Cart");
		System.out.println("7. remove CartProduct");
		System.out.println("8. edit Cart BuyNum By Cart");
		System.out.println("9. edit CartProduct");
		System.out.println("10. Exit");
		System.out.println(line2);
	}

	public void show() {
		showMenu();
		
		String str = inputUser();
		int num = checkNumberMinMax(MIN_NUM, MAX_NUM, str);
		
		switch(num){
		case CHOICE_GET_ALL_CART:
			break;
			
		case CHOICE_GET_CART_BY_MEM_ID:
			break;
			
		case CHOICE_DUPLICATION_CARTPRODUCT_CHECK:
			break;
			
		case CHOICE_ADD_CARTPRODUCT_BY_CART:
			break;
			
		case CHOICE_ADD_CARTPRODUCT:
			break;
			
		case CHOICE_REMOVE_CARTPRODUCT_BY_CART:
			break;
			
		case CHOICE_REMOVE_CARTPRODUCT:
			break;
			
		case CHOICE_EDIT_CART_BUYNUM_BY_CART:
			break;
			
		case CHOICE_EDIT_CARTPRODUCT:
			break;
			
		case CHOICE_EXIT:
			System.out.println("exit");
			System.exit(0);
			
		default : 
			this.show();
		}
	}
	
}
