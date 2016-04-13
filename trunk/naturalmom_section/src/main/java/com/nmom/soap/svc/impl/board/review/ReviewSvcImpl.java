package com.nmom.soap.svc.impl.board.review;

import com.nmom.soap.data.dao.board.review.IReviewDao;
import com.nmom.soap.data.model.board.review.ReviewVo;
import com.nmom.soap.svc.board.review.IReviewSvc;

public class ReviewSvcImpl implements IReviewSvc 
{
	IReviewDao reviewDao;
	
	public void setReviewDao(IReviewDao reviewDao)
	{
		this.reviewDao = reviewDao;
	}

	@Override
	public ReviewVo getOneReivew(int review_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addReview(ReviewVo review) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editReview(ReviewVo review) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeReview(ReviewVo review) {
		// TODO Auto-generated method stub
		return 0;
	}

}
