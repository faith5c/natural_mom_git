package naturalmom.data.dao;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.Product_OrderVo;




public interface IProduct_OrderDao {
	
	//	1. 삽입
	public int addOrder(Product_OrderVo po, int order_no) throws DataAccessException;
	
	//	2. 처리상태 변경(전체)
	public int editOrder(int order_no, int process_cd) throws DataAccessException;	
	
	// 3. 처리상태 변경(일부)
	public int editOrder(int order_no, String product_name, int process_cd) throws DataAccessException;
	
}
