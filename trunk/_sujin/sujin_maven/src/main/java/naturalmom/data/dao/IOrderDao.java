package naturalmom.data.dao;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.OrderVo;

public interface IOrderDao {	

//	1. 삽입, 삽입과 동시에 pk가져 와야 됨.
	public int addOrder(OrderVo order, String credit_nm, String delivery_com_nm) throws DataAccessException;
	
	public int editOrder(int order_no, int tracking_num) throws DataAccessException;
}
