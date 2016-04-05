package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.ReviewVo;

public interface IReviewDao 
{
	// ��ǰ �ı� ���� �� ���� ��������
	ReviewVo selectOneReview(int review_no) throws DataAccessException;
	
	// ��ǰ �ı� ����ϱ�
	int insertReview(ReviewVo review) throws DataAccessException;

	// ��ǰ �ı� �����ϱ�
	int deleteReview(ReviewVo review) throws DataAccessException;
	
	// ��ǰ �ı� �����ϱ�
	int updateReview(ReviewVo review) throws DataAccessException;
}
