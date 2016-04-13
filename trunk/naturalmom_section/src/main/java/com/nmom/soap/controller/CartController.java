package com.nmom.soap.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.nmom.soap.data.model.cart.VCartProductVo;
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
	
	@RequestMapping(value ="/cart.nm", method=RequestMethod.GET)
	public ModelAndView menu_cart(HttpServletRequest req, HttpSession ses)
	{
		//String loggedin = (String)ses.getAttribute("loggedin");
		String loggedin = "soomin";
		
		List<VCartProductVo> cart_list = this.vCartProductSvc.getCartByMemId(loggedin);
		
		Map<String,Object> map = new HashMap<String,Object>();
		if(cart_list!=null && cart_list.size()!=0){
			map.put("cart_list", cart_list);
		}
		
		ModelAndView mav = new ModelAndView("order/cart", map);
		return mav;
	}
}
