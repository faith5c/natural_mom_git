package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VReview_AdminVo;

public interface IVReview_AdminDao 
{
	// �Խ��� ��� �̱�
	List<VReview_AdminVo> selectAllList() throws DataAccessException;
	
	// �Խ��� ���� �̱�
	VReview_AdminVo seletOneReview(int review_no) throws DataAccessException;
	
	// �������� �˻��ϱ�
	List<VReview_AdminVo> selectReviews_by_title(String search) throws DataAccessException;
	
	// �������� �˻��ϱ�
	List<VReview_AdminVo> selectReviews_by_content(String search) throws DataAccessException;
	
	// �۾��̷� �˻��ϱ�
	List<VReview_AdminVo> selectReviews_by_id(String search) throws DataAccessException;
	
	// ���� �� �������� �˻��ϱ�
	List<VReview_AdminVo> selectReviews_by_title_n_content(String search) throws DataAccessException;
}
