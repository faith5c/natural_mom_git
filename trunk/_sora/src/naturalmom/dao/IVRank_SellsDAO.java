package naturalmom.dao;

import java.util.List;

import naturalmom.model.VRank_Sells;

public interface IVRank_SellsDAO 
{
	// order: false = ��������, true = ��������
	// ������ �����ϱ�
	List<VRank_Sells> selectAllRank(boolean order) throws DataAccessException;
}
