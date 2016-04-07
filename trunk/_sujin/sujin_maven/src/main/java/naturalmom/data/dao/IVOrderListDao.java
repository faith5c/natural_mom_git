package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VOrderListVo;


public interface IVOrderListDao {

	public List<VOrderListVo> getAllOreder(String mem_id, int start, int end) throws DataAccessException;
	public int getAllCount(String mem_id) throws DataAccessException;
}
