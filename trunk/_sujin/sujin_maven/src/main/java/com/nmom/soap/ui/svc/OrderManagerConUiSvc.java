package com.nmom.soap.ui.svc;

import java.util.List;

import com.nmom.soap.data.impl.order.OrderDaoOraImpl;
import com.nmom.soap.data.impl.order.ProductOrderDaoOraImpl;
import com.nmom.soap.data.impl.order.VOrderManagerDaoOraImpl;
import com.nmom.soap.data.model.order.VOrderManagerVo;

public class OrderManagerConUiSvc extends ConUiSvc {

	private OrderDaoOraImpl orderDaoOra;
	private ProductOrderDaoOraImpl productOrderDaoOra;
	private VOrderManagerDaoOraImpl vOrderManagerDaoOra;
	
	final int ORDER_LIST = 1;
	final int ORDER_TRACKING_NUM_INSERT = 2;
	final int EXIT = 3;
	final int PREV = 0;
	
	@Override
	public void showMenu() {
		System.out.println(" 1. ORDER_LIST");
		System.out.println(" 2. ORDER_TRACKING_NUM_INSERT");
		System.out.println(" 3. EXIT");
		System.out.println(" 0. PREV");
		System.out.print(" >> ");
		
	}

	@Override
	public void execFunctions(int num) {
		switch (num) {
		case ORDER_LIST: //1
			System.out.println("ORDER_BY_ORDER_DATE");
			getAllOreder(vOrderManagerDaoOra.getAllOrederByDate(true));
			getAllOreder(vOrderManagerDaoOra.getAllOrederByDate(false));
			System.out.println("ORDER_BY_ORDER_NO");
			getAllOreder(vOrderManagerDaoOra.getAllOrederByNo(true));
			getAllOreder(vOrderManagerDaoOra.getAllOrederByNo(false));
			System.out.println("ORDER_BY_MEM_NAME");
			getAllOreder(vOrderManagerDaoOra.getAllOrederByName(true));
			getAllOreder(vOrderManagerDaoOra.getAllOrederByName(false));
			System.out.println("ORDER_BY_PRODUCT_NAME");
			getAllOreder(vOrderManagerDaoOra.getAllOrederByProduct(true));
			getAllOreder(vOrderManagerDaoOra.getAllOrederByProduct(false));
			System.out.println("ORDER_BY_BUY_NUM");
			getAllOreder(vOrderManagerDaoOra.getAllOrederByNum(true));
			getAllOreder(vOrderManagerDaoOra.getAllOrederByNum(false));
			System.out.println("ORDER_BY_CHARGE");
			getAllOreder(vOrderManagerDaoOra.getAllOrederByCharge(true));
			getAllOreder(vOrderManagerDaoOra.getAllOrederByCharge(false));
			System.out.println("ORDER_BY_PROCESS_NM");
			getAllOreder(vOrderManagerDaoOra.getAllOrederByProcess(true));
			getAllOreder(vOrderManagerDaoOra.getAllOrederByProcess(false));
			break;
		case ORDER_TRACKING_NUM_INSERT: //2
			editTrackingNum(orderDaoOra.editTrackingNumOrder(10010, 1010111111));
			break;
			
		case EXIT: //3
			System.exit(0);
			break;
			
		case PREV : //0
			
			break;
		default:
			System.exit(0);
			break;
		}
		
	}

	private void editTrackingNum(int editTrackingNumOrder) {
		if(editTrackingNumOrder > 0) System.out.println("운송장 정보 등록 완료");
		else System.out.println("운송장 정보 등록 실패");
	}

	private void getAllOreder(List<VOrderManagerVo> allOreder) {
		for(VOrderManagerVo o : allOreder){
			System.out.println(o);
		}
	}
	

	public void setOrderDaoOra(OrderDaoOraImpl orderDaoOra) {
		this.orderDaoOra = orderDaoOra;
	}

	public void setProductOrderDaoOra(ProductOrderDaoOraImpl productOrderDaoOra) {
		this.productOrderDaoOra = productOrderDaoOra;
	}

	public void setvOrderManagerDaoOra(VOrderManagerDaoOraImpl vOrderManageDaoOra) {
		this.vOrderManagerDaoOra = vOrderManageDaoOra;
	}
	

}
