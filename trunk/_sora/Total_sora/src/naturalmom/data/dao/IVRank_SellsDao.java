package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VRank_SellsVo;

public interface IVRank_SellsDao 
{
	// order: false = ��������, true = ��������
	// ������ �����ϱ�
	List<VRank_SellsVo> selectAllRank(boolean order) throws DataAccessException;
}
