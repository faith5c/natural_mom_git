package com.nmom.soap.svc.cart;

import com.nmom.soap.data.dao.cart.ICartDao;
import com.nmom.soap.data.model.cart.CartVo;

public class CartSvcImpl implements ICartSvc {

	ICartDao cartDao;
	
	public void setCartDao(ICartDao cartDao) {
		this.cartDao = cartDao;
	}

	@Override
	public boolean duplicationCartProduct(int product_no, String mem_id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int addCartProduct(CartVo cart) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int addCartProduct(int product_no, String mem_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeCartProduct(CartVo cart) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeCartProduct(int product_no, String mem_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editCartProduct(CartVo cart) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editCartProduct(int product_no, String mem_id, int buy_num) {
		// TODO Auto-generated method stub
		return 0;
	}

}
