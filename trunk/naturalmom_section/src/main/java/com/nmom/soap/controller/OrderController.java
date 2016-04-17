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
import com.nmom.soap.data.model.member.VOrdererVo;
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
	@RequestMapping(value="/order/temporder.nm", method={RequestMethod.POST, RequestMethod.GET})
	public ModelAndView addtempOrder(HttpServletRequest req,
			HttpSession ses,
			@RequestParam(value="product_no", required=false) int product_no,
			@RequestParam(value="product_name", required=false) String product_name,
			@RequestParam(value="represent_img", required=false) String represent_img,
			@RequestParam(value="buy_num", required=false) int buy_num,
			@RequestParam(value="charge", required=false) String cha){
		
		System.out.println("임시 주문에 들어옴!");
		List<TempOrderVo> tempList = null;
		if(ses.getAttribute(S.SESSION_LOGIN) != null 
				&& ses.getAttribute(S.SESSION_ADMIN) == null){
			
			int charge = 0;
			try{
				System.out.println(cha);
			charge = Integer.parseInt(cha);
			}catch(NumberFormatException ne){
				ne.printStackTrace();
			}
			TempOrderVo temp = new TempOrderVo(product_no, represent_img, product_name, buy_num, charge);
		
			tempList = (List)ses.getAttribute(S.SESSION_TEMP_ORDER);
			
			if(tempList == null) {
				tempList = new ArrayList<TempOrderVo>();
			}
			
			tempList.add(temp);
			System.out.println(temp);
			//세션에 1개 이상 상품이 저장 되어 있는경우 
			//같은 상품이 있는 것을 체크하여 같을 경우 적게 산 거를 세션에서 삭제
			if(tempList.size() > 1)
			for(int i = tempList.size()-1;  i >= 0 ; i--){
				for(int j = tempList.size()-2; j >= 0; j--){
					//같은 상품번호
					if(tempList.get(i).getProduct_no() == tempList.get(j).getProduct_no()){
						if(tempList.get(i).getBuy_num() > tempList.get(j).getBuy_num()){
							tempList.remove(j);
						}
						else tempList.remove(i);
					}
				}
			
			//구매 가격 넣기
			for(TempOrderVo t : tempList){
				t.setTotal_price(t.getBuy_num()*t.getCharge());
			}
			
			}
			
			
			ses.setAttribute(S.SESSION_TEMP_ORDER, tempList);
			Map<String, Object> map =  new HashMap<String, Object>();
			map.put("page", "order");
			return new ModelAndView("redirect:/order/order.nm", map);
		}
		return null;//"redirect:detail.nm?pdno="+product_no;
	}
	
	@RequestMapping(value="/order/order.nm")
	public ModelAndView addOrder(HttpServletRequest req,
			HttpSession ses,
			@RequestParam(value="page")String page){
		System.out.println("주문 페이지로 옴");
		Map<String, Object> map = new HashMap<String, Object>();
		if(ses.getAttribute(S.SESSION_LOGIN) != null 
				&& ses.getAttribute(S.SESSION_ADMIN) == null){
			
			List<TempOrderVo> temp = (List)ses.getAttribute(S.SESSION_TEMP_ORDER);
			System.out.println(temp.get(0) == null ? "템 널" : temp.get(0));
			System.out.println((String)ses.getAttribute(S.SESSION_LOGIN));
			VOrdererVo orderer = this.vOrdererSvc.getOrderer(((String)ses.getAttribute(S.SESSION_LOGIN)));
			map.put("orderer", orderer);
			map.put("page", (page == null) ? "order" : page);
			map.put("temp", temp);
		}
		return new ModelAndView("order/order", map);
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
