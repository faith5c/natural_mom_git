package com.nmom.soap.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nmom.soap.S;
import com.nmom.soap.data.model.order.TempOrderVo;
import com.nmom.soap.data.model.order.VOrderManagerVo;
import com.nmom.soap.svc.member.IVOrdererSvc;
import com.nmom.soap.svc.member.VOrdererSvcImpl;
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
	private IVOrdererSvc vOrdererSvc;
	
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
	
	
	//임시 주문 세션에 저장!
	@RequestMapping(value="temporder.nm", method=RequestMethod.POST)
	public String addtempOrder(HttpServletRequest req,
			HttpSession ses,
			@RequestParam(value="product_no", required=false) int product_no,
			@RequestParam(value="product_name", required=false) String product_name,
			@RequestParam(value="represent_img", required=false) String represent_img,
			@RequestParam(value="buy_num", required=false) int buy_num,
			@RequestParam(value="charge", required=false) int charge){
		
		List<TempOrderVo> tempList = null;
		if(ses.getAttribute(S.SESSION_LOGIN) != null 
				&& ses.getAttribute(S.SESSION_ADMIN) == null){
		
			TempOrderVo temp = new TempOrderVo(product_no, represent_img, product_name, buy_num, charge);
		
			tempList = (List)ses.getAttribute(S.SESSION_TEMP_ORDER);
			
			if(tempList == null) {
				tempList = new ArrayList<TempOrderVo>();
			}
			
			tempList.add(temp);
			
			//세션에 1개 이상 상품이 저장 되어 있는경우 
			//같은 상품이 있는 것을 체크하여 같을 경우 적게 산 거를 세션에서 삭제
			if(tempList.size() > 1)
			for(int i = tempList.size();  i >= 0 ; i--){
				for(int j = tempList.size()-1; j >= 0; j--){
					//같은 상품번호
					if(tempList.get(i).getProduct_no() == tempList.get(j).getProduct_no()){
						if(tempList.get(i).getBuy_num() > tempList.get(j).getBuy_num()){
							tempList.remove(j);
						}
						else tempList.remove(i);
					}
				}
			}
			
			ses.setAttribute(S.SESSION_TEMP_ORDER, tempList);
			
			return "/order/order.rm";
		}
		return "redirect:detail.nm?pdno="+product_no;
	}
	
	@RequestMapping(value="/order/order.rm")
	public ModelAndView addOrder(HttpServletRequest req,
			HttpSession ses){
		
		Map<String, Object> map = new HashMap<String, Object>();
		if(ses.getAttribute(S.SESSION_LOGIN) != null 
				&& ses.getAttribute(S.SESSION_ADMIN) == null){
			
			map.put("page", "order");
			map.put("temp", (List)ses.getAttribute(S.SESSION_TEMP_ORDER));
		}
		return new ModelAndView();
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
	public void setVOrdererSvc(IVOrdererSvc vOrdererSvc) {
		this.vOrdererSvc = vOrdererSvc;
	}
	
}
