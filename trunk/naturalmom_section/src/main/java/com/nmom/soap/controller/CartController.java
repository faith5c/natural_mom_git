package com.nmom.soap.controller;

import org.springframework.stereotype.Controller;

import com.nmom.soap.svc.cart.ICartSvc;
import com.nmom.soap.svc.cart.IVCartProductSvc;

@Controller
public class CartController {
	
	ICartSvc cartSvc;
	IVCartProductSvc vCartProductSvc;
	
	public void setCartSvc(ICartSvc cartSvc) {
		this.cartSvc = cartSvc;
	}
	public void setVCartProductSvc(IVCartProductSvc vCartProductSvc) {
		this.vCartProductSvc = vCartProductSvc;
	}
	/*
	@RequestMapping(value ="/cart.nm", method=RequestMethod.GET)
	public ModelAndView menu_cart(HttpServletRequest req, HttpSession ses)
	{
		String loggedin = (String)ses.getAttribute("loggedin");
		
		List<VCartProductVo> cart_list = this.vCartProductSvc.getCartByMemId(loggedin);
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("cart_list", cart_list);
		
		ModelAndView mav = new ModelAndView("order/cart");
		return "order/cart";
	}*/
}
