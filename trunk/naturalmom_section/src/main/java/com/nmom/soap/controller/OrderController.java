package com.nmom.soap.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nmom.soap.data.model.order.VOrderManagerVo;
import com.nmom.soap.svc.order.IOrderSvc;
import com.nmom.soap.svc.order.IProductOrderSvc;
import com.nmom.soap.svc.order.IVOrderListSvc;
import com.nmom.soap.svc.order.IVOrderManagerSvc;

@Controller
public class OrderController {

	private IOrderSvc orderSvc;
	private IProductOrderSvc productOrderSvc;
	private IVOrderListSvc vOrderListSvc;
	private IVOrderManagerSvc vOrderManagerSvc;
	
	@RequestMapping(value="/admin/order.nm", method=RequestMethod.GET)
	public ModelAndView getOrderManager(HttpServletRequest req){
		System.out.println("@RequestMapping(value=/admin/order.nm)");
		String by = null;
		String order = null;
		if(req != null){
			by = (String)req.getAttribute("by");
			order = (String)req.getAttribute("order");
		}
		System.out.println("by - " + by + ", order - " + order);
		Map<String, Object> map = new HashMap<String, Object>();
		List<VOrderManagerVo> list = new ArrayList<VOrderManagerVo>();
		if ( by == null || by.isEmpty() || by.equals(""))
		{
			System.out.println("by가 널일 때 진입");
			list = this.vOrderManagerSvc.getAllOrederByDate(true);
		}else if( by.equals("date") ){
			if( order == null || order.equals("true") )
				list = this.vOrderManagerSvc.getAllOrederByDate(true);
			else
				list = this.vOrderManagerSvc.getAllOrederByDate(false);		
		}else if( by.equals("no") ){
			if( order == null || order.equals("true") )
				list = this.vOrderManagerSvc.getAllOrederByNo(true);
			else
				list = this.vOrderManagerSvc.getAllOrederByNo(false);		
		}else if( by.equals("name") ){
			if( order == null || order.equals("true") )
				list = this.vOrderManagerSvc.getAllOrederByName(true);
			else
				list = this.vOrderManagerSvc.getAllOrederByName(false);		
		}else if( by.equals("prod") ){
			if( order == null || order.equals("true") )
				list = this.vOrderManagerSvc.getAllOrederByProduct(true);
			else
				list = this.vOrderManagerSvc.getAllOrederByProduct(false);		
		}else if( by.equals("num") ){
			if( order == null || order.equals("true") )
				list = this.vOrderManagerSvc.getAllOrederByNum(true);
			else
				list = this.vOrderManagerSvc.getAllOrederByNum(false);		
		}else if( by.equals("charge") ){
			if( order == null || order.equals("true") )
				list = this.vOrderManagerSvc.getAllOrederByCharge(true);
			else
				list = this.vOrderManagerSvc.getAllOrederByCharge(false);		
		}else if( by.equals("pro") ){
			if( order == null || order.equals("true") )
				list = this.vOrderManagerSvc.getAllOrederByProcess(true);
			else
				list = this.vOrderManagerSvc.getAllOrederByProcess(false);		
		}
		if(list == null)System.out.println("리스트 널");
		map.put("orderManeger", list);
		return new ModelAndView("admin/order/a_order",map);
	}
	
	
	public void setOrderSvc(IOrderSvc orderSvc) {
		this.orderSvc = orderSvc;
	}
	public void setProductOrderSvc(IProductOrderSvc productOrderSvc) {
		this.productOrderSvc = productOrderSvc;
	}
	public void setVOrderListSvc(IVOrderListSvc vOrderListSvc) {
		this.vOrderListSvc = vOrderListSvc;
	}
	public void setVOrderManagerSvc(IVOrderManagerSvc vOrderManagerSvc) {
		this.vOrderManagerSvc = vOrderManagerSvc;
	}
	
}
