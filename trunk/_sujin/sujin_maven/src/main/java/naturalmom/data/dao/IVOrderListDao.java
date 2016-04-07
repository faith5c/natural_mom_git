package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VOrderListVo;


public interface IVOrderListDao {

	public List<VOrderListVo> getAllOreder(String id) throws DataAccessException;
}
