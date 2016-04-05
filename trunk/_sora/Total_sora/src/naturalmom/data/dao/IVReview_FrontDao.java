package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VReview_FrontVo;

public interface IVReview_FrontDao 
{
	// �Խ��� ��� ��ȸ�ϱ�
	List<VReview_FrontVo> selectAllList() throws DataAccessException;
}
