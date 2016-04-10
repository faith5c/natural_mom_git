package com.nmom.soap.ui.svc;

import java.util.List;

import com.nmom.soap.data.impl.order.OrderDaoOraImpl;
import com.nmom.soap.data.impl.order.ProductOrderDaoOraImpl;
import com.nmom.soap.data.impl.order.VOrderListDaoOraImpl;
import com.nmom.soap.data.model.order.OrderVo;
import com.nmom.soap.data.model.order.ProductOrderVo;
import com.nmom.soap.data.model.order.VOrderListVo;

public class OrderConUiSvc extends ConUiSvc {

	private OrderDaoOraImpl orderDaoOra;
	private ProductOrderDaoOraImpl productOrderDaoOra;
	private VOrderListDaoOraImpl vOrderListDaoOra;
	
	final int ORDER_LIST = 1;
	final int ORDER = 2;
	final int ORDER_UPDATE = 3;
	final int ORDER_PART_UPDATE = 4;
	final int EXIT =5;
	final int PREV = 0;
	
	@Override
	public void showMenu() {
		System.out.println(" 1. ORDER_LIST");
		System.out.println(" 2. ORDER");
		System.out.println(" 3. ORDER_UPDATE");
		System.out.println(" 4. ORDER_CANCLE");
		System.out.println(" 5. EXIT");
		System.out.println(" 0. PREV");
		System.out.print(" >> ");
		
	}

	@Override
	public void execFunctions(int num) {
		switch (num) {
		case ORDER_LIST: //1
			getAllOreder(vOrderListDaoOra.getAllOreder(1, 10, "sora"));
			break;
		case ORDER: //2
			int order_no = orderDaoOra.addOrder(
					new OrderVo(6900, "111111111111", "1901", "최소라", "010-7777-7777", 
							"아차산", "아차", null, 0, "sora"),
							"비씨", 
							"현대택배");
			System.out.println(order_no);
			addOrder(productOrderDaoOra.addOrder(new ProductOrderVo(10006, order_no, 1, 11)));
			
			getAllOreder(vOrderListDaoOra.getAllOreder(1, 10, "sora"));
			break;
		case ORDER_UPDATE: //3
			getAllOreder(vOrderListDaoOra.getAllOreder(1, 10, "sora"));
			updateOrder(productOrderDaoOra.editOrder(10005, 21));
			getAllOreder(vOrderListDaoOra.getAllOreder(1, 10, "sora"));
			break;
			
		case ORDER_PART_UPDATE: //4
			getAllOreder(vOrderListDaoOra.getAllOreder(1, 10, "sora"));
			partUpdateOrder(productOrderDaoOra.editPartOrder(10007, "붉나무비누", 31));
			getAllOreder(vOrderListDaoOra.getAllOreder(1, 10, "sora"));
			break;
			
		case EXIT: //5
			System.exit(0);
			break;
			
		case PREV : //0
			
			break;
		default:
			System.exit(0);
			break;
		}
		
	}

	private void partUpdateOrder(int editPartOrder) {
		if(editPartOrder > 0 )System.out.println("부분 업데이트 성공");
		else System.out.println("부분 업데이트 실패");
	}

	private void updateOrder(int editOrder) {
		if(editOrder > 0 )System.out.println("업데이트 성공");
		else System.out.println("업데이트 실패");
	}

	private void addOrder(int addOrder) {
		if(addOrder > 0 )System.out.println("주문성공");
		else System.out.println("주문실패");
	}

	private void getAllOreder(List<VOrderListVo> allOreder) {
		for(VOrderListVo o : allOreder){
			System.out.println(o);
		}
	}

	public void setOrderDaoOra(OrderDaoOraImpl orderDaoOra) {
		this.orderDaoOra = orderDaoOra;
	}

	public void setproductOrderDaoOra(ProductOrderDaoOraImpl productOrderDaoOra) {
		this.productOrderDaoOra = productOrderDaoOra;
	}

	public void setvOrderListDaoOra(VOrderListDaoOraImpl vOrderListDaoOra) {
		this.vOrderListDaoOra = vOrderListDaoOra;
	}

}
