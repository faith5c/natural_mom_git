package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.ReviewVo;

public interface IReviewDao 
{
	// 상품 후기 수정 시 내용 가져오기
	ReviewVo selectOneReview(int review_no) throws DataAccessException;
	
	// 상품 후기 등록하기
	int insertReview(ReviewVo review) throws DataAccessException;

	// 상품 후기 삭제하기
	int deleteReview(ReviewVo review) throws DataAccessException;
	
	// 상품 후기 수정하기
	int updateReview(ReviewVo review) throws DataAccessException;
}
