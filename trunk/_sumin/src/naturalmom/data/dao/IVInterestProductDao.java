package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VInterestProductVo;

public interface IVInterestProductDao {
	List<VInterestProductVo> getAllCart() throws DataAccessException;
	List<VInterestProductVo> getCartByMemId(String mem_id) throws DataAccessException;
}