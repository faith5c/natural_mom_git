package naturalmom.ui.svc;

import java.util.List;

import naturalmom.data.dao.impl.OrderDaoOraImpl;
import naturalmom.data.dao.impl.ProductOrderDaoOraImpl;
import naturalmom.data.dao.impl.VOrderManagerDaoOraImpl;
import naturalmom.data.model.OrderVo;
import naturalmom.data.model.ProductOrderVo;
import naturalmom.data.model.VOrderListVo;
import naturalmom.data.model.VOrderManagerVo;

public class OrderManagerConSvc extends ConUiSvc {

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
			System.out.println(1);
			getAllOreder(vOrderManagerDaoOra.getAllOreder(1, 10, 1));
//			System.out.println(2);
//			getAllOreder(vOrderManagerDaoOra.getAllOreder(1, 10, 2));
//			System.out.println(3);
//			getAllOreder(vOrderManagerDaoOra.getAllOreder(1, 10, 3));
//			System.out.println(4);
//			getAllOreder(vOrderManagerDaoOra.getAllOreder(1, 10, 4));
//			System.out.println(5);
//			getAllOreder(vOrderManagerDaoOra.getAllOreder(1, 10, 5));
//			System.out.println(6);
//			getAllOreder(vOrderManagerDaoOra.getAllOreder(1, 10, 6));
//			System.out.println(7);
//			getAllOreder(vOrderManagerDaoOra.getAllOreder(1, 10, 7));
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