package com.nmom.soap.svc.board.review;

import java.util.List;

import com.nmom.soap.data.dao.board.review.IVReview_AdminDao;
import com.nmom.soap.data.model.board.review.VReview_AdminVo;

public class VReview_AdminSvcImpl implements IVReview_AdminSvc 
{
	IVReview_AdminDao review_adminDao;
	
	public void setReview_adminDao(IVReview_AdminDao review_adminDao) 
	{
		this.review_adminDao = review_adminDao;
	}

	@Override
	public List<VReview_AdminVo> getAllList(int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public VReview_AdminVo getOneReview(int review_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VReview_AdminVo> getReviews_by_title(String search, int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VReview_AdminVo> getReviews_by_content(String search, int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VReview_AdminVo> getReviews_by_id(String search, int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VReview_AdminVo> getReviews_by_title_n_content(String search, int page) {
		// TODO Auto-generated method stub
		return null;
	}

}
