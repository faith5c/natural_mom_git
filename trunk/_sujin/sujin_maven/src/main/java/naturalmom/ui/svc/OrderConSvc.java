package naturalmom.ui.svc;

import java.util.List;

import naturalmom.data.dao.IVNoticeDao;
import naturalmom.data.dao.impl.NoticeDaoOraImpl;
import naturalmom.data.dao.impl.NoticeReDaoOraImpl;
import naturalmom.data.dao.impl.OrderDaoOraImpl;
import naturalmom.data.dao.impl.ProductOrderDaoOraImpl;
import naturalmom.data.dao.impl.VNoticeDaoOraImpl;
import naturalmom.data.dao.impl.VOrderListDaoOraImpl;
import naturalmom.data.model.NoticeReVo;
import naturalmom.data.model.NoticeVo;
import naturalmom.data.model.OrderVo;
import naturalmom.data.model.ProductOrderVo;
import naturalmom.data.model.VNoticeVo;
import naturalmom.data.model.VOrderListVo;

public class OrderConSvc extends ConUiSvc {

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
			getAllOreder(vOrderListDaoOra.getAllOreder("sora", 1, 5));
			break;
		case ORDER: //2
			int order_no = orderDaoOra.addOrder(
					new OrderVo(6900, "111111111111", "1901", "최소라", "010-7777-7777", 
							"아차산", "아차", null, 0, "sora"),
							"비씨", 
							"현대택배");
			addOrder(productOrderDaoOra.addOrder(new ProductOrderVo(10006, order_no, 1, 11)));
			
			getAllOreder(vOrderListDaoOra.getAllOreder("sora", 1, 5));
			break;
		case ORDER_UPDATE: //3
			updateOrder(productOrderDaoOra.editOrder(1005, 21));
			
			break;
			
		case ORDER_PART_UPDATE: //4
			partUpdateOrder(productOrderDaoOra.editPartOrder(10007, "붉나무비누", 31));
			
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
