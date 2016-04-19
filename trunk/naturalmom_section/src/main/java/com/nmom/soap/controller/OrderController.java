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
import com.nmom.soap.data.model.order.VOrderListVo;
import com.nmom.soap.data.model.order.VOrderManagerVo;
import com.nmom.soap.svc.cart.IVCartProductSvc;
import com.nmom.soap.svc.cart.VCartProductSvcImpl;
import com.nmom.soap.svc.member.IVOrdererSvc;
import com.nmom.soap.svc.member.VOrdererSvcImpl;
import com.nmom.soap.svc.order.IOrderSvc;
import com.nmom.soap.svc.order.IProductOrderSvc;
import com.nmom.soap.svc.order.IVOrderListSvc;
import com.nmom.soap.svc.order.IVOrderManagerSvc;

import oracle.net.aso.p;

@Controller
public class OrderController {

	private IOrderSvc orderSvc;
	private IProductOrderSvc productOrderSvc;
	private IVOrderListSvc vOrderListSvc;
	private IVOrderManagerSvc vOrderManagerSvc;
	private IVOrdererSvc vOrdererSvc;
	private IVCartProductSvc v_cart_product_svc;
	
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
	
	
	//주문하기 페이지   /order/detailorder.nm
	@RequestMapping(value="/order/detailorder.nm", method={RequestMethod.POST, RequestMethod.GET})
	public ModelAndView indentation(HttpServletRequest req,
			HttpSession ses,
			@RequestParam(value="product_no", required=false) int product_no,
			@RequestParam(value="product_name", required=false) String product_name,
			@RequestParam(value="represent_img", required=false) String represent_img,
			@RequestParam(value="buy_num", required=false) int buy_num,
			@RequestParam(value="charge", required=false) String cha){
		
		System.out.println("주문에 들어옴!");
		List<TempOrderVo> tempList = null;
		if(ses.getAttribute(S.SESSION_LOGIN) != null 
				&& ses.getAttribute(S.SESSION_ADMIN) == null){
			System.out.println("회원으로 로그인 되어있음");
			int charge = 0;
			try{
				System.out.println(cha);
			charge = Integer.parseInt(cha);
			}catch(NumberFormatException ne){
				ne.printStackTrace();
			}
			TempOrderVo temp = new TempOrderVo(product_no, represent_img, product_name, buy_num, charge);
		
			tempList = new ArrayList<TempOrderVo>();

			tempList.add(temp);
			System.out.println("temp "+temp);
			
			ses.setAttribute(S.SESSION_TEMP_ORDER, tempList);
			
			//세션에 1개 이상 상품이 저장 되어 있는경우 
			//같은 상품이 있는 것을 체크하여 같을 경우 적게 산 거를 세션에서 삭제
			
			
			/*if(tempList.size() > 1)
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
			}*/
			System.out.println("tempList");
			for(TempOrderVo t : tempList){
				System.out.println(t);
			}
			
			Map<String, Object> map =  new HashMap<String, Object>();
			map.put("temp", tempList);
			//주문이 하나이므로 토탈값은 0번에서 가져온다.+3000은 배송
			map.put("total_price", temp.getTotal_price());
			map.put("charge", temp.getTotal_price()+3000);
			map.put("page", "order");
			
			System.out.println((String)ses.getAttribute(S.SESSION_LOGIN));
			VOrdererVo orderer = this.vOrdererSvc.getOrderer(((String)ses.getAttribute(S.SESSION_LOGIN)));
			
			map.put("orderer", orderer);
			map.put("phone1", orderer.getPhone().split("-")[0]);
			map.put("phone2", orderer.getPhone().split("-")[1]);
			map.put("phone3", orderer.getPhone().split("-")[2]);
			map.put("email1", orderer.getEmail().split("@")[0]);
			map.put("email2", orderer.getEmail().split("@")[1]);
			
			return new ModelAndView("order/order", map);
		}
		return null;//"redirect:detail.nm?pdno="+product_no;
	}
	
	//주문 프로세스 order_proc.nm
	@RequestMapping(value="order_proc.nm", method=RequestMethod.POST)
	public ModelAndView orderProc(HttpServletRequest req,
			HttpSession ses,
			//주문자 정보
			@RequestParam(value="name", required=false) String name,
			@RequestParam(value="phone1", required=false) String phone1,
			@RequestParam(value="phone2", required=false) String phone2,
			@RequestParam(value="phone3", required=false) String phone3,
			@RequestParam(value="post_num", required=false) String post_num,
			@RequestParam(value="address_detail", required=false) String address_detail,
			@RequestParam(value="del_msg", required=false) String del_msg,
			@RequestParam(value="card", required=false) String card,
			@RequestParam(value="card_num1", required=false) String card_num1,
			@RequestParam(value="card_num2", required=false) String card_num2,
			@RequestParam(value="card_num3", required=false) String card_num3,
			@RequestParam(value="card_num4", required=false) String card_num4,
			@RequestParam(value="expiry_month", required=false) String expiry_month,
			@RequestParam(value="expiry_year", required=false) String expiry_year,
			//주문 정보		
			@RequestParam(value="charge", required=false) int charge){
		
		//재고 확인 후 없으면 인덱스 페이지 ㄱㄳ
		
		return null;
	}
	
//	@RequestMapping(value="/order/order.nm")
	public ModelAndView addOrder(HttpServletRequest req,
			HttpSession ses,
			@RequestParam(value="temp") List<TempOrderVo> temp,
			@RequestParam(value="page") String page){
		System.out.println("주문 페이지로 옴");
		Map<String, Object> map = new HashMap<String, Object>();
		if(ses.getAttribute(S.SESSION_LOGIN) != null 
				&& ses.getAttribute(S.SESSION_ADMIN) == null){
			
			System.out.println(temp.get(0) == null ? "템 널" : temp.get(0));
			System.out.println((String)ses.getAttribute(S.SESSION_LOGIN));
			VOrdererVo orderer = this.vOrdererSvc.getOrderer(((String)ses.getAttribute(S.SESSION_LOGIN)));
			
			map.put("orderer", orderer);
			map.put("phone1", orderer.getPhone().split("-")[0]);
			map.put("phone2", orderer.getPhone().split("-")[1]);
			map.put("phone3", orderer.getPhone().split("-")[2]);
			map.put("email1", orderer.getEmail().split("@")[0]);
			map.put("email2", orderer.getEmail().split("@")[1]);
			map.put("post1", orderer.getAddr_post().split("-")[0]);
			map.put("post2", orderer.getAddr_post().split("-")[1]);
			map.put("page", (page == null) ? "order" : page);
			map.put("temp", temp);
		}
		return new ModelAndView("order/order", map);
	}
	
	//주문 리스트 보기 /orderlist.nm
	@RequestMapping(value ="/orderlist.nm")
	public ModelAndView showOrderlist(HttpServletRequest req,
			HttpSession ses){
		
		String mem_id = (String)ses.getAttribute(S.SESSION_LOGIN);
		List<VOrderListVo> list = this.vOrderListSvc.getAllOreder(1, this.vOrderListSvc.getAllCount(mem_id), mem_id);
		Map<String, Object> map = new HashMap<>();
		map.put("orderlist", list);
		return new ModelAndView("order/orderlist", map);
	}
	
	//주문 환불/구매확정  orderlist_edit.nm
	@RequestMapping(value ="orderlist_edit.nm")
	public ModelAndView editOrderlist(HttpServletRequest req,
			HttpSession ses,
			@RequestParam(value="checks")String checks){
		
		String mem_id = (String)ses.getAttribute(S.SESSION_LOGIN);
		String check[] = checks.split(",");
		String process = null;
		int order_no[] = new int[check.length-1];
		for(int i = 0; i < check.length; i++){
			if(i < check.length-1){
				try{
					order_no[i] = Integer.parseInt(check[i]);
				}catch(NumberFormatException ne){
					ne.printStackTrace();
				}
			}
			else{
				process = check[i];
			}	
		}
		int r = 0;
		if(process != null)
		r = this.productOrderSvc.editOrder(order_no, 
				(process.equals("구매확정")) ? S.BUY_DECISION : S.REFUND_PROCESS );
		
		if(r > 0)System.out.println("업데이트 성공");
		else System.out.println("업데이트 실패");
		List<VOrderListVo> list = this.vOrderListSvc.getAllOreder(1, this.vOrderListSvc.getAllCount(mem_id), mem_id);
		Map<String, Object> map = new HashMap<>();
		map.put("orderlist", list);
		return new ModelAndView("order/orderlist", map);
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
	public void setV_cart_product_svc(IVCartProductSvc v_cart_product_svc) {
		this.v_cart_product_svc = v_cart_product_svc;
	}
	
	
}
