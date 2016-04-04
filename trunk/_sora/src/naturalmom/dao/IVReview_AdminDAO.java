package naturalmom.dao;

import java.util.List;

import naturalmom.model.VReview_Admin;

public interface IVReview_AdminDAO 
{
	// �Խ��� ��� �̱�
	List<VReview_Admin> selectAllList();
	
	// �Խ��� ���� �̱�
	VReview_Admin seletOneReview(int review_no);
	
	// �������� �˻��ϱ�
	List<VReview_Admin> selectReviews_by_title(String search);
	
	// �������� �˻��ϱ�
	List<VReview_Admin> selectReviews_by_content(String search);
	
	// �۾��̷� �˻��ϱ�
	List<VReview_Admin> selectReviews_by_id(String search);
	
	// ���� �� �������� �˻��ϱ�
	List<VReview_Admin> selectReviews_by_title_n_content(String search);	
}
