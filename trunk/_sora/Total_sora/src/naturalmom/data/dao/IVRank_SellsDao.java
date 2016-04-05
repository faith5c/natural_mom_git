package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VRank_SellsVo;

public interface IVRank_SellsDao 
{
	// order: false = 내림차순, true = 오름차순
	// 순위로 정렬하기
	List<VRank_SellsVo> selectAllRank(boolean order) throws DataAccessException;
}
