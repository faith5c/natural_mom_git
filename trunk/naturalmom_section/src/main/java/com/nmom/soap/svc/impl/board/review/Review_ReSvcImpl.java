package com.nmom.soap.svc.impl.board.review;

import java.util.List;

import com.nmom.soap.data.dao.board.review.IReview_ReDao;
import com.nmom.soap.data.model.board.review.Review_ReVo;
import com.nmom.soap.svc.board.review.IReview_ReSvc;

public class Review_ReSvcImpl implements IReview_ReSvc 
{
	IReview_ReDao review_reDao;

	public void setReview_reDao(IReview_ReDao review_reDao) 
	{
		this.review_reDao = review_reDao;
	}
	
	@Override
	public List<Review_ReVo> getAllRe(int review_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addRe(Review_ReVo re) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editRe(Review_ReVo re) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeRe(Review_ReVo re) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
