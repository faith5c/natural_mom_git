package com.nmom.soap.svc.board.review;

import com.nmom.soap.data.dao.board.review.IReviewDao;
import com.nmom.soap.data.model.board.review.ReviewVo;

public class ReviewSvcImpl implements IReviewSvc 
{
	IReviewDao reviewDao;
	
	public void setReviewDao(IReviewDao reviewDao)
	{
		this.reviewDao = reviewDao;
	}

	@Override
	public ReviewVo getOneReivew(int review_no)
	{
		return reviewDao.getOneReview(review_no);
	}

	@Override
	public int addReview(ReviewVo review)
	{
		int result = reviewDao.addReview(review);
		return 0;
	}

	@Override
	public int editReview(ReviewVo review) 
	{
		int result = reviewDao.editReview(review);
		return 0;
	}

	@Override
	public int removeReview(ReviewVo review) 
	{
		int result = reviewDao.removeReview(review);
		return 0;
	}

}
