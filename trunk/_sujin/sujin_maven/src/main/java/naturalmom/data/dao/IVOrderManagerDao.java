package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VOrderListVo;


public interface IVOrderManagerDao {

	public List<VOrderListVo> getAllOreder(int start, int end, int orderByNum)  throws DataAccessException;
	
}
