package naturalmom.dao;

import java.util.List;

import naturalmom.model.Review_Re;

public interface IReview_ReDAO 
{
	// �ش� ������� ��� ���� ��������
	List<Review_Re> selectAllRe(int review_no) throws DataAccessException;
	
	// ���� ���
	int insertRe(Review_Re re) throws DataAccessException;
	
	// ���� ����
	int updateRe(Review_Re re) throws DataAccessException;
	
	// ���� ����
	int deleteRe(Review_Re re) throws DataAccessException;
}
