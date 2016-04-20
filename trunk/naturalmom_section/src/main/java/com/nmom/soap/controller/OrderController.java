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
import com.nmom.soap.data.model.cart.VCartProductVo;
import com.nmom.soap.data.model.member.VOrdererVo;
import com.nmom.soap.data.model.order.OrderVo;
import com.nmom.soap.data.model.order.ProductOrderVo;
import com.nmom.soap.data.model.order.TempOrderVo;
import com.nmom.soap.data.model.order.VOrderListVo;
import com.nmom.soap.data.model.order.VOrderManagerVo;
import com.nmom.soap.data.model.product.ProductVo;
import com.nmom.soap.svc.cart.IVCartProductSvc;
import com.nmom.soap.svc.member.IVOrdererSvc;
import com.nmom.soap.svc.order.IOrderSvc;
import com.nmom.soap.svc.order.IProductOrderSvc;
import com.nmom.soap.svc.order.IVOrderListSvc;
import com.nmom.soap.svc.order.IVOrderManagerSvc;
import com.nmom.soap.svc.product.IProductSvc;

@Controller
public class OrderController {

	private IOrderSvc orderSvc;
	private IProductOrderSvc productOrderSvc;
	private IVOrderListSvc vOrderListSvc;
	private IVOrderManagerSvc vOrderManagerSvc;
	private IVOrdererSvc vOrdererSvc;
	private IVCartProductSvc v_cart_product_svc;
	private IProductSvc productSvc;
	
	//관리자 주문 관리 페이지
	   @RequestMapping(value="/admin/order.nm", method=RequestMethod.GET)
	   public ModelAndView getOrderManager(HttpServletRequest req,
	                              HttpSession se){
	      System.out.println("@RequestMapping(value=/admin/order.nm)");
	      String by = null;
	      String order = null;
	      if(req != null){
	         by = (String)req.getAttribute("by");
	         order = (String)req.getAttribute("order");
	      }
	      System.out.println("by - " + by + ", order - " + order);
	      Map<String, Object> map = new HashMap<String, Object>();
	      
	      Boolean isAdmin = ((Boolean)se.getAttribute(S.SESSION_ADMIN));
	      if(isAdmin==null || !isAdmin.booleanValue()){
	         map.put("err_msg", "관리자로 로그인 바랍니다.");
	         return new ModelAndView("login/login", map);
	      }
	      
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
			@RequestParam(value="cost_price", required=false) int cost_price){
		
		System.out.println("주문페이지에 들어옴!");
		List<TempOrderVo> tempList = null;
		if(ses.getAttribute(S.SESSION_LOGIN) != null 
				&& ses.getAttribute(S.SESSION_ADMIN) == null){
			System.out.println("회원으로 로그인 되어있음");
			
			TempOrderVo temp = new TempOrderVo(product_no, represent_img, product_name, buy_num, cost_price);
		
			tempList = new ArrayList<TempOrderVo>();
			System.out.println("temp꺼"+temp);
			tempList.add(temp);
			System.out.println("temp "+temp);
			
			ses.setAttribute(S.SESSION_TEMP_ORDER, tempList);
			
			List<TempOrderVo> t = (List<TempOrderVo>)(ses.getAttribute(S.SESSION_TEMP_ORDER));
			
			System.out.println("ses꺼"+((t.get(0)==null)? null : t.get(0)));
			
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
			for(TempOrderVo o : tempList){
				System.out.println(o);
			}
			
			Map<String, Object> map =  new HashMap<String, Object>();
			
			System.out.println((String)ses.getAttribute(S.SESSION_LOGIN));
			//주문자객체 생성
			VOrdererVo orderer = this.vOrdererSvc.getOrderer(((String)ses.getAttribute(S.SESSION_LOGIN)));
			//번호, 메일 생성
			String phone[] = orderer.getPhone().split("-");
			String email[] = orderer.getEmail().split("@");
			
			//오더 페이지 표시
			map.put("page", "order");
			
			map.put("temp", tempList);
			//주문이 하나이므로 토탈값은 0번에서 가져온다.+3000은 배송
			map.put("total_price", temp.getTotal_price());
			map.put("charge", temp.getTotal_price()+3000);
			
			map.put("orderer", orderer);
			
			map.put("phone1", phone[0]);
			map.put("phone2", phone[1]);
			map.put("phone3", phone[2]);
			map.put("email1", email[0]);
			map.put("email2", email[1]);
			
			return new ModelAndView("order/order", map);
		}
		return new ModelAndView("redirect:soap/login.nm");//"redirect:detail.nm?pdno="+product_no;
	}
	
	//주문하기 페이지   /order/cartorder.nm
		@RequestMapping(value="/order/cartorder.nm", method={RequestMethod.POST, RequestMethod.GET})
		public ModelAndView cartIndentation(HttpServletRequest req,
				HttpSession ses,
				@RequestParam(value="cart_po", required=false) String cart){
			
			System.out.println("장바구니에서 주문페이지로 들어옴!");
			List<TempOrderVo> tempList = null;
			if(ses.getAttribute(S.SESSION_LOGIN) != null 
					&& ses.getAttribute(S.SESSION_ADMIN) == null){
				System.out.println("회원으로 로그인 되어있음");
				
				String mem_id = (String)ses.getAttribute(S.SESSION_LOGIN);
				
				//장바구니에서 불러온 애들
				String temp_carts[] = cart.split(",");
				
				
				List<VCartProductVo> temp_cart_list = new ArrayList<VCartProductVo>();
				//int로 변환해서 일단 임시 장바구니로 ㄱㄱ
				for(int i = 0; i < temp_carts.length; i++){
					try{
						temp_cart_list.add(this.v_cart_product_svc.getOneCart(mem_id, Integer.parseInt(temp_carts[i])));
					}catch(NumberFormatException ne){ne.printStackTrace();}
				}
				
				//진열 및 판매 재고 상태 체크
				for(int i = 0; i < temp_cart_list.size(); i++){
					//재고 보다 작으면 주문에서 지워버림..
					int r = this.productSvc.getStockOfProduct(temp_cart_list.get(i).getProduct_no());
					ProductVo p = this.productSvc.getOneProduct(temp_cart_list.get(i).getProduct_no());
					//판매 상태 및 진열 상태가 0(안 팔음)일때도 주문에서 제외 시킨다.
					if( r < temp_cart_list.get(i).getBuy_num() 
							|| p.getDisplay_state() == 0 || p.getSale_state() == 0){
						//리스트에서 지운다
						temp_cart_list.remove(i);
					}
				}
				
				List<TempOrderVo> temp_list = new ArrayList<TempOrderVo>();
				//임시 주문 객체에 넣기
				for(VCartProductVo c : temp_cart_list){
					temp_list.add(new TempOrderVo(c));
				}
				
				//임시 주문 세션에 넣기
				ses.setAttribute(S.SESSION_TEMP_ORDER, temp_list);
				
				//배송료
				int charge = 3000;
				//전체 가격 구하기
				for(VCartProductVo c : temp_cart_list){
					charge += (c.getBuy_num()*c.getSelling_price());
				}
				
				
//				TempOrderVo temp = new TempOrderVo(product_no, represent_img, product_name, buy_num, cost_price);
//			
//				tempList = new ArrayList<TempOrderVo>();
//				System.out.println("temp꺼"+temp);
//				tempList.add(temp);
//				System.out.println("temp "+temp);
//				
//				ses.setAttribute(S.SESSION_TEMP_ORDER, tempList);
//				
//				List<TempOrderVo> t = (List<TempOrderVo>)(ses.getAttribute(S.SESSION_TEMP_ORDER));
//				
//				System.out.println("ses꺼"+((t.get(0)==null)? null : t.get(0)));
				
				
				
				
	
				
				System.out.println("tempList");
				for(TempOrderVo o : tempList){
					System.out.println(o);
				}
				
				Map<String, Object> map =  new HashMap<String, Object>();
				
				System.out.println((String)ses.getAttribute(S.SESSION_LOGIN));
				//주문자객체 생성
				VOrdererVo orderer = this.vOrdererSvc.getOrderer(((String)ses.getAttribute(S.SESSION_LOGIN)));
				//번호, 메일 생성
				String phone[] = orderer.getPhone().split("-");
				String email[] = orderer.getEmail().split("@");
				
				//오더 페이지 표시
				map.put("page", "order");
				
				map.put("temp", tempList);
				//주문이 하나이므로 토탈값은 0번에서 가져온다.+3000은 배송
//				map.put("total_price", temp.getTotal_price());
//				map.put("charge", temp.getTotal_price()+3000);
				
				map.put("orderer", orderer);
				
				map.put("phone1", phone[0]);
				map.put("phone2", phone[1]);
				map.put("phone3", phone[2]);
				map.put("email1", email[0]);
				map.put("email2", email[1]);
				
				return new ModelAndView("order/order", map);
			}
			return new ModelAndView("redirect:soap/login.nm");//"redirect:detail.nm?pdno="+product_no;
		}
	
	//주문 프로세스 order_proc.nm
	@RequestMapping(value="/order/order_proc.nm", method=RequestMethod.POST)
	public ModelAndView orderProc(HttpServletRequest req,
			HttpSession ses,
			//주문자 정보
			@RequestParam(value="name", required=false) String name,
			@RequestParam(value="phone1", required=false) String phone1,
			@RequestParam(value="phone2", required=false) String phone2,
			@RequestParam(value="phone3", required=false) String phone3,
			@RequestParam(value="post_num", required=false) String addr_post,
			@RequestParam(value="address_detail", required=false) String addr_detail,
			@RequestParam(value="del_msg", required=false) String delivery_msg,
			@RequestParam(value="card", required=false) String credit_nm,
			@RequestParam(value="card_num1", required=false) String card_num1,
			@RequestParam(value="card_num2", required=false) String card_num2,
			@RequestParam(value="card_num3", required=false) String card_num3,
			@RequestParam(value="card_num4", required=false) String card_num4,
			@RequestParam(value="expiry_year", required=false) String expiry_year,
			@RequestParam(value="expiry_month", required=false) String expiry_month,
			//주문 정보		
			@RequestParam(value="charge", required=false) int charge){
		
		System.out.println("주문proc에 들어옴!");
		System.out.println(credit_nm+"credit_nm");
		//로그인 확인 후 회원 아니면 로그인 페이지 ㄱㄳ
		if(ses.getAttribute(S.SESSION_LOGIN) != null 
				&& ses.getAttribute(S.SESSION_ADMIN) == null){
			//재고 확인 후 없으면 인덱스 페이지 ㄱㄳ	
			List<TempOrderVo> list = 
					(List<TempOrderVo>)(ses.getAttribute(S.SESSION_TEMP_ORDER));
			if(list != null)
				for(TempOrderVo t: list)
					System.out.println(t);
			else System.out.println("list가 없그나");
			for(int i = 0; i < list.size(); i++){
				
				//재고 보다 작으면 주문에서 지워버림..
				int r = this.productSvc.getStockOfProduct(list.get(i).getProduct_no());
				ProductVo p = this.productSvc.getOneProduct(list.get(i).getProduct_no());
				System.out.println(list.get(0).getProduct_name()+"재고 개수"+r);
				//판매 상태 및 진열 상태가 0(안 팔음)일때도 주문에서 제외 시킨다.
				if( r < list.get(i).getBuy_num() 
						|| p.getDisplay_state() == 0 || p.getSale_state() == 0){
					//전체 주문 금액에서 제외 시깈나.
					charge -= list.get(i).getTotal_price();
					//리스트에서 지운다
					list.remove(i);
				}
			}
			
			//재고 확인 후 없으면 인덱스 페이지 ㄱㄳ
			if(list.size() < 1){
				//재고가 없으므로 세션에서도 삭제
				System.out.println("재고 아예 읍슴");
				ses.removeAttribute(S.SESSION_TEMP_ORDER);
				return new ModelAndView("redirect:soap/index.nm");
			}
			
			String phone = phone1+"-"+phone2+"-"+phone3;
			String credit_num = card_num1+card_num2+card_num3+card_num4;
			String credit_exp = expiry_year+expiry_month;
			String mem_id = (String)ses.getAttribute(S.SESSION_LOGIN);
			OrderVo order = 
					new OrderVo(charge, 
							credit_num, 
							credit_exp, 
							name, 
							phone, 
							addr_post, 
							addr_detail, 
							delivery_msg, 
							0,
							mem_id);

			//주문이 생성되지 않는다면 주문 삭제 및 홈페이지로 다시 감
			if(order == null){
				System.out.println("재고 아예 읍슴");
				ses.removeAttribute(S.SESSION_TEMP_ORDER);
				return new ModelAndView("redirect:soap/index.nm");
			}
			
			int order_no = this.orderSvc.addOrder(order, credit_nm);
			
			//주문번호가 생성되지 않음 인덱스로 돌아감
			if(order_no < 1){
				System.out.println("주문번호 없음 생성 실패");
				return new ModelAndView("redirect:soap/index.nm");
			}
			System.out.println(order+"생성");
			//주문번호가 생성되었을 시 Product_Order 테이블에 값 넣음
			for (int i = 0; i < list.size(); i++) {
				int r = this.productOrderSvc.addOrder(
						new ProductOrderVo(
								list.get(i).getProduct_no(), 
								order_no, list.get(i).getBuy_num(), 11));
				// 재고에서 줄임
				if (r == 1) {
					System.out.println(list.get(i).getProduct_name() + "주문성공");
					int s = this.productSvc.subStockOfProduct(
							list.get(i).getBuy_num(), 
							list.get(i).getProduct_no());
				}
				
			}
			
			//주문이 완료 되었으므로 세션에서 삭제
			ses.removeAttribute(S.SESSION_TEMP_ORDER);
			

			//주문완료 페이지에서 보여줄 주문리스트 객체 가져오기
			VOrderListVo new_order = this.vOrderListSvc.getOneOrder(order_no);
			System.out.println("주문 성공!"+new_order);
			Map<String, Object> map = new HashMap<String, Object>();
			
			//주문 완료 페이지 표시
			map.put("page", "order_complete");
			map.put("charge", charge);
			//주문 객체 ㄱㄳ
			map.put("order", new_order);
			
			return new ModelAndView("order/order", map);
		}
		return new ModelAndView("redirect:soap/login.nm");
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
	@RequestMapping(value ="order/orderlist_edit.nm")
	public ModelAndView editOrderlist(HttpServletRequest req,
			HttpSession ses,
			@RequestParam(value="process")String process){
		
		String mem_id = (String)ses.getAttribute(S.SESSION_LOGIN);
		String check[] = req.getParameterValues("order_sel");
		int order_no[] = new int[check.length];
		System.out.println("check[]"+check.length);
		for (int i = 0; i < check.length; i++) {
			try {
				System.out.println(check[i]);
				order_no[i] = Integer.parseInt(check[i]);
			} catch (NumberFormatException ne) {
				ne.printStackTrace();
			}
		}
		int r = 0;
		if(process != null && order_no.length > 1){
			for(int i : order_no)
			r = this.productOrderSvc.editOrder(i, 
					(process.equals("구매확정")) ? S.BUY_DECISION : S.REFUND_PROCESS );
		}
		/*else if(order_no.length == 1){
			r = this.productOrderSvc.editOrder(order_no[0], 
					(process.equals("구매확정")) ? S.BUY_DECISION : S.REFUND_PROCESS );
		}*/
			
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
	public void setProductSvc(IProductSvc productSvc) {
		this.productSvc = productSvc;
	}
	
	
}
