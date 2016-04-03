package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import fusion.data.model.OrderListVO;


public interface IOrderManagerDAO {

	public List<OrderListVO> getAllOreder()  throws DataAccessException;
}
