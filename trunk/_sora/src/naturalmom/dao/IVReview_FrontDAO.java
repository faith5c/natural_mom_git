package naturalmom.dao;

import java.util.List;

import naturalmom.model.VReview_Front;

public interface IVReview_FrontDAO 
{
	// �Խ��� ��� ��ȸ�ϱ�
	List<VReview_Front> selectAllList() throws DataAccessException;
}
