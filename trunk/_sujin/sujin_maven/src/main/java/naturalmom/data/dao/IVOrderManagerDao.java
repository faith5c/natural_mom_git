package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VOrderManagerVo;


public interface IVOrderManagerDao {

	public List<VOrderManagerVo> getAllOreder(int start, int end, int orderByNum)  throws DataAccessException;
	
}
