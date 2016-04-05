package naturalmom.dao;

import java.util.List;

import naturalmom.model.Review;

public interface IReviewDAO 
{
	// 상품 후기 수정 시 내용 가져오기
	Review selectOneReview(int review_no) throws DataAccessException;
	
	// 상품 후기 등록하기
	int insertReview(Review review) throws DataAccessException;

	// 상품 후기 삭제하기
	int deleteReview(Review review) throws DataAccessException;
	
	// 상품 후기 수정하기
	int updateReview(Review review) throws DataAccessException;
}
