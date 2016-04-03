package naturalmom.dao;

import java.util.List;

import naturalmom.model.Review;

public interface IReviewDAO 
{
	// 프론트용 목록 뽑기
	List<Review> sellectAllReview(int product_no);
	
	// 관리자용 목록 뽑기
	List<Review> selectAllReview();
	
	Review selectOneReview(int review_no);
	
	List<Review> selectReviews_by_title(String search);
	
	List<Review> selectReviews_by_content(String search);
	
	List<Review> selectReviews_by_id(String search);
	
	List<Review> selectReviews_by_title_n_content(String search);
	
	int insertReview(Review review);

	int deleteReview(int review_no);
	
	int updateReview(Review review);
}
