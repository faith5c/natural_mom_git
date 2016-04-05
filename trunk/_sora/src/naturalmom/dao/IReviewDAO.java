package naturalmom.dao;

import java.util.List;

import naturalmom.model.Review;

public interface IReviewDAO 
{
	// ��ǰ �ı� ���� �� ���� ��������
	Review selectOneReview(int review_no) throws DataAccessException;
	
	// ��ǰ �ı� ����ϱ�
	int insertReview(Review review) throws DataAccessException;

	// ��ǰ �ı� �����ϱ�
	int deleteReview(Review review) throws DataAccessException;
	
	// ��ǰ �ı� �����ϱ�
	int updateReview(Review review) throws DataAccessException;
}
