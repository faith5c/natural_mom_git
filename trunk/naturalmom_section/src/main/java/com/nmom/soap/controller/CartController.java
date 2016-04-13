package com.nmom.soap.controller;

import com.nmom.soap.svc.cart.ICartSvc;
import com.nmom.soap.svc.cart.IVCartProductSvc;

public class CartController {
	
	ICartSvc cartSvc;
	IVCartProductSvc vCartProductSvc;
	
	public void setCartSvc(ICartSvc cartSvc) {
		this.cartSvc = cartSvc;
	}
	public void setVCartProductSvc(IVCartProductSvc vCartProductSvc) {
		this.vCartProductSvc = vCartProductSvc;
	}
}
