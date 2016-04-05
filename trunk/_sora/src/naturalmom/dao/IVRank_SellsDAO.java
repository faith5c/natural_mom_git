package naturalmom.dao;

import java.util.List;

import naturalmom.model.VRank_Sells;

public interface IVRank_SellsDAO 
{
	// order: false = 내림차순, true = 오름차순
	// 순위로 정렬하기
	List<VRank_Sells> selectAllRank(boolean order) throws DataAccessException;
}
