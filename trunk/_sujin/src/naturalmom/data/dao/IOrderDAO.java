package naturalmom.data.dao;

import org.springframework.dao.DataAccessException;

import fusion.data.model.OrderVO;

public interface IOrderDAO {	

//	1. 주문하기(INSERT) (리턴 값이 int인 이유는 pk값을 돌려받기 위해서)
	int insertOrder(OrderVO order) throws DataAccessException;
	
}
