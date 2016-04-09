package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VOrderListVo;


public interface IVOrderListDao {

	public List<VOrderListVo> getAllOreder(int start, int end, String mem_id) throws DataAccessException;
	public int getAllCount(String mem_id) throws DataAccessException;
}
