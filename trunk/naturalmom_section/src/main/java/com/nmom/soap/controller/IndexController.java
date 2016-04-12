package com.nmom.soap.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
	
	
///////////////////////////////////////////////////////////////////////////////////////////
	//사용자 페이지 인덱스 메뉴
	
	@RequestMapping(value = "/index.nm", method = RequestMethod.GET)
	public String index(HttpServletRequest req) {
		return "index";
	}
	
	@RequestMapping(value ="/login.nm", method=RequestMethod.GET)
	public String menu_login(HttpServletRequest req){
		return "login/login";
	}
	
	@RequestMapping(value ="/join.nm", method=RequestMethod.GET)
	public String menu_join(HttpServletRequest req){
		return "join/membership";
	}
	
	@RequestMapping(value ="/cart.nm", method=RequestMethod.GET)
	public String menu_cart(HttpServletRequest req){
		return "order/cart";
	}
	
	@RequestMapping(value ="/orderlist.nm", method=RequestMethod.GET)
	public String menu_orderlist(HttpServletRequest req){
		return "order/orderlist";
	}
	
	@RequestMapping(value ="/mypage.nm", method=RequestMethod.GET)
	public String menu_mypage(HttpServletRequest req){
		return "mypage/mypage";
	}
	
	
	@RequestMapping(value ="/customer_center.nm", method=RequestMethod.GET)
	public String menu_customer_center(HttpServletRequest req){
		return "board/customer_center";
	}
	
	@RequestMapping(value ="/admin.nm", method=RequestMethod.GET)
	public String menu_admin(HttpServletRequest req){
		return "admin/a_default";
	}
	
	@RequestMapping(value ="/product1.nm", method=RequestMethod.GET)
	public String product_menu_1(HttpServletRequest req){
		return "product/product_menu";
	}
	
	@RequestMapping(value ="/product2.nm", method=RequestMethod.GET)
	public String product_menu_2(HttpServletRequest req){
		return "product/product_menu";
	}
	
	@RequestMapping(value ="/product3.nm", method=RequestMethod.GET)
	public String product_menu_3(HttpServletRequest req){
		return "product/product_menu";
	}
	
	@RequestMapping(value ="/product4.nm", method=RequestMethod.GET)
	public String product_menu_4(HttpServletRequest req){
		return "product/product_menu";
	}
	
	@RequestMapping(value ="/delivery.nm", method=RequestMethod.GET)
	public String delivery(HttpServletRequest req){
		return "company/banner_delivery";
	}
	
	@RequestMapping(value ="/company/company_menu_1.nm", method=RequestMethod.GET)
	public String company1(HttpServletRequest req){
		return "company/company_menu_1";
	}
	
	@RequestMapping(value ="/company/company_menu_2.nm", method=RequestMethod.GET)
	public String company2(HttpServletRequest req){
		return "company/company_menu_2";
	}
	
	@RequestMapping(value ="/company/company_menu_3.nm", method=RequestMethod.GET)
	public String company3(HttpServletRequest req){
		return "company/company_menu_3";
	}
	
	
///////////////////////////////////////////////////////////////////////////////////////////
	// 관리자 페이지 인덱스 메뉴

}
