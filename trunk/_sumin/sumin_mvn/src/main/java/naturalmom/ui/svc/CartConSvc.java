package naturalmom.ui.svc;

import java.util.List;

import com.nmom.soap.data.dao.cart.ICartDao;
import com.nmom.soap.data.dao.cart.IVCartProductDao;
import com.nmom.soap.data.model.cart.CartVo;
import com.nmom.soap.data.model.cart.VCartProductVo;

public class CartConSvc extends ConSvc {

	private final int CHOICE_GET_ALL_CART = 1;
	private final int CHOICE_GET_CART_BY_MEM_ID = 2;

	private final int CHOICE_DUPLICATION_CART_PRODUCT = 3;
	private final int CHOICE_ADD_CART_PRODUCT_BY_CART = 4;
	private final int CHOICE_ADD_CART_PRODUCT = 5;
	private final int CHOICE_REMOVE_CART_PRODUCT_BY_CART = 6;
	private final int CHOICE_REMOVE_CART_PRODUCT = 7;
	private final int CHOICE_EDIT_CART_PRODUCT_BY_CART = 8;
	private final int CHOICE_EDIT_CART_PRODUCT = 9;
	private final int CHOICE_EXIT = 10;

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

	public void showMenu() {
		System.out.println(line1);
		System.out.println("choice CART menu");
		System.out.println(line2);
		System.out.println("1. get All Cart");
		System.out.println("2. get Cart ByMemId");
		System.out.println(line2);
		System.out.println("3. duplication CartProduct");
		System.out.println("4. add CartProduct By Cart");
		System.out.println("5. add CartProduct");
		System.out.println("6. remove CartProduct By Cart");
		System.out.println("7. remove CartProduct");
		System.out.println("8. edit CartProduct By Cart");
		System.out.println("9. edit CartProduct");
		System.out.println("10. Exit\n");
	}

	public void show() {
		String str = null;
		String strArr[] = null;
		List<VCartProductVo> vlist = null;
		CartVo cv = new CartVo();

		showMenu();
		int num = checkNumberMinMax(MIN_NUM, MAX_NUM, inputUser());
		
		switch (num) {
		case CHOICE_GET_ALL_CART:
			vlist = vCartProductDao.getAllCart();
			for(VCartProductVo vi : vlist){
				System.out.println(vi);
			}
			inputEnter();
			this.show();
			break;

		case CHOICE_GET_CART_BY_MEM_ID:
			System.out.println("INPUT : mem_id");
			str = inputUser();
			vlist = vCartProductDao.getCartByMemId(str);
			for(VCartProductVo vi : vlist){
				System.out.println(vi);
			}
			inputEnter();
			this.show();
			break;

		case CHOICE_DUPLICATION_CART_PRODUCT:
			System.out.println("INPUT : product_no, mem_id");
			
			try{
				strArr = StrSplitTrim(inputUser());
			
				if(cartDao.duplicationCartProduct(Integer.parseInt(strArr[0]), strArr[1])){
					System.out.println("RESULT : duplication");
				}else{
					System.out.println("RESULT : unique");
				}
			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;

		case CHOICE_ADD_CART_PRODUCT_BY_CART:

			System.out.println("INPUT : product_no, mem_id");
			
			try{
				strArr = StrSplitTrim(inputUser());

				if(!cartDao.duplicationCartProduct(Integer.parseInt(strArr[0]), strArr[1])){
					
					cv = new CartVo();
					cv.setProduct_no(Integer.parseInt(strArr[0]));
					cv.setMem_id(strArr[1]);
					
					if(0 < cartDao.addCartProduct(cv)){
						System.out.println("RESULT : add success");
					}else{
						System.out.println("RESULT : add failure");
					}
					
				} else {
					System.out.println("ERR : duplicated cart");
				}
				
			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;


		case CHOICE_ADD_CART_PRODUCT:
			
			System.out.println("INPUT : product_no, mem_id");
			
			try{
				strArr = StrSplitTrim(inputUser());
				if(!cartDao.duplicationCartProduct(Integer.parseInt(strArr[0]), strArr[1])){

					if(0 < cartDao.addCartProduct(Integer.parseInt(strArr[0]), strArr[1])){
						System.out.println("RESULT : add success");
					}else{
						System.out.println("RESULT : add failure");
					}
				} else {
					System.out.println("ERR : duplicated cart");
				}
				
			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;

		case CHOICE_REMOVE_CART_PRODUCT_BY_CART:

			System.out.println("INPUT : product_no, mem_id");
			
			try{
				strArr = StrSplitTrim(inputUser());

				if(cartDao.duplicationCartProduct(Integer.parseInt(strArr[0]), strArr[1])){
	
					cv = new CartVo();
					cv.setProduct_no(Integer.parseInt(strArr[0]));
					cv.setMem_id(strArr[1]);
					
					if(0 < cartDao.removeCartProduct(cv)){
						System.out.println("RESULT : remove success");
					}else{
						System.out.println("RESULT : remove failure");
					}
					
				} else {
					System.out.println("ERR : not found cart");
				}
				
			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_REMOVE_CART_PRODUCT:

			System.out.println("INPUT : product_no, mem_id");
			
			try{
				strArr = StrSplitTrim(inputUser());
				
				if(cartDao.duplicationCartProduct(Integer.parseInt(strArr[0]), strArr[1])){

					if(0 < cartDao.removeCartProduct(Integer.parseInt(strArr[0]), strArr[1])){
						System.out.println("RESULT : remove success");
					}else{
						System.out.println("RESULT : remove failure");
					}
				} else {
					System.out.println("ERR : not found cart");
				}
				
			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;

		case CHOICE_EDIT_CART_PRODUCT_BY_CART:

			System.out.println("INPUT : product_no, mem_id, buy_num");
			
			try{
				strArr = StrSplitTrim(inputUser());
				
				cv = new CartVo();
				cv.setProduct_no(Integer.parseInt(strArr[0]));
				cv.setMem_id(strArr[1]);
				cv.setBuy_num(Integer.parseInt(strArr[2]));

				if(cartDao.duplicationCartProduct(Integer.parseInt(strArr[0]), strArr[1])){

					if(0 < cartDao.editCartProduct(cv) ){
						System.out.println("RESULT : edit success");
					}else{
						System.out.println("RESULT : edit failure");
					}
				} else {
					System.out.println("ERR : not found cart");
				}
				
			} catch(Exception e){
				e.printStackTrace();
			}
			
			
			inputEnter();
			this.show();
			break;

		case CHOICE_EDIT_CART_PRODUCT:

			System.out.println("INPUT : product_no, mem_id, buy_num");
			
			try{
				strArr = StrSplitTrim(inputUser());
				
				if(cartDao.duplicationCartProduct(Integer.parseInt(strArr[0]), strArr[1])){

					if(0 < cartDao.editCartProduct(Integer.parseInt(strArr[0]), strArr[1], Integer.parseInt(strArr[2])) ){
						System.out.println("RESULT : edit success");
					}else{
						System.out.println("RESULT : edit failure");
					}
				} else {
					System.out.println("ERR : not found cart");
				}
				
			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;

		case CHOICE_EXIT:
			System.out.println("exit program");
			System.exit(0);

		default:
			this.show();
		}
	}

}
