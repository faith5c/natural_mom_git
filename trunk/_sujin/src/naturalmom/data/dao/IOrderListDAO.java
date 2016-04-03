package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import fusion.data.model.OrderListVO;


public interface IOrderListDAO {

	public List<OrderListVO> getAllOreder(String id)  throws DataAccessException;
}
