package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VInterestProductVo;

public interface IVInterestProductDao {
	List<VInterestProductVo> getAllInterest() throws DataAccessException;
	List<VInterestProductVo> getInterestByMemId(String mem_id) throws DataAccessException;
}