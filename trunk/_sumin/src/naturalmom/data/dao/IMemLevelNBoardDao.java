
package naturalmom.data.dao;

import naturalmom.data.model.MemLevelNBoardVo;

public interface IMemLevelNBoardDao {
	MemLevelNBoardVo getAuthorityByMemId(String mem_id);
}