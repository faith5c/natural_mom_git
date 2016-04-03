package naturalmom.data.dao;

import org.springframework.dao.DataAccessException;

import fusion.data.model.Product_OrderVO;




public interface IProduct_OrderDAO {
	
//	1. 주문하기(INSERT) 
	boolean insertOrder(Product_OrderVO po) throws DataAccessException;
	
	//	2. 구매확정/환불요청 등 처리상태 수정하기(UPDATE)
	//전체 수정
	int updateOrder(int order_no, int process_cd) throws DataAccessException;	
	
	//일부 수정(한번에 주문 여러 품목 한 경우)
	int updateOrder(int order_no, String product_name, int process_cd) throws DataAccessException;
	
}
