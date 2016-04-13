package com.nmom.soap.svc.board.review;

import java.util.List;

import com.nmom.soap.data.dao.board.review.IVReview_FrontDao;
import com.nmom.soap.data.model.board.review.VReview_FrontVo;

public class VReview_FrontSvcImpl implements IVReview_FrontSvc 
{
	IVReview_FrontDao review_frontDao;
	
	public void setReview_frontDao(IVReview_FrontDao review_frontDao) 
	{
		this.review_frontDao = review_frontDao;
	}
	
	@Override
	public List<VReview_FrontVo> getAllList(int product_no, int page)
	{
		return review_frontDao.getAllList(product_no, ((page - 1) * 15) + 1, page * 15);
	}

}
