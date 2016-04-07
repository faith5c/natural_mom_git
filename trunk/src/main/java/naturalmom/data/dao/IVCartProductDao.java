package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VCartProductVo;

public interface IVCartProductDao {
	List<VCartProductVo> getAllCart() throws DataAccessException;
	List<VCartProductVo> getCartByMemId(String mem_id) throws DataAccessException;
}