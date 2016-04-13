package com.nmom.soap.svc.impl.board.review;

import java.util.List;

import com.nmom.soap.data.dao.board.review.IVReview_FrontDao;
import com.nmom.soap.data.model.board.review.VReview_FrontVo;
import com.nmom.soap.svc.board.review.IVReview_FrontSvc;

public class VReview_FrontSvcImpl implements IVReview_FrontSvc 
{
	IVReview_FrontDao review_frontDao;
	
	public void setReview_frontDao(IVReview_FrontDao review_frontDao) 
	{
		this.review_frontDao = review_frontDao;
	}
	
	@Override
	public List<VReview_FrontVo> getAllList(int product_no, int page) {
		// TODO Auto-generated method stub
		return null;
	}

}
