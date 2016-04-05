
package naturalmom.data.dao;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.MemLevelNBoardVo;

public interface IMemLevelNBoardDao {
	MemLevelNBoardVo getAuthorityByMemId(String mem_id) throws DataAccessException;
}