package com.nmom.soap.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nmom.soap.data.model.board.review.ReviewVo;
import com.nmom.soap.data.model.board.review.Review_ReVo;
import com.nmom.soap.data.model.board.review.VReview_AdminVo;
import com.nmom.soap.svc.board.review.IReviewSvc;
import com.nmom.soap.svc.board.review.IReview_ReSvc;
import com.nmom.soap.svc.board.review.IVReview_AdminSvc;
import com.nmom.soap.svc.board.review.IVReview_FrontSvc;

@Controller
public class ReviewController
{
	IReviewSvc reviewSvc;
	IReview_ReSvc review_reSvc;
	IVReview_AdminSvc review_adminSvc;
	IVReview_FrontSvc review_frontSvc;
	
	public void setReviewSvc(IReviewSvc reviewSvc) 
	{
		this.reviewSvc = reviewSvc;
	}
	
	public void setReview_reSvc(IReview_ReSvc review_reSvc) 
	{
		this.review_reSvc = review_reSvc;
	}
	
	public void setReview_adminSvc(IVReview_AdminSvc review_adminSvc) 
	{
		this.review_adminSvc = review_adminSvc;
	}
	
	public void setReview_frontSvc(IVReview_FrontSvc review_frontSvc) 
	{
		this.review_frontSvc = review_frontSvc;
	}
	
	@RequestMapping(value ="/admin/board/review.nm", method=RequestMethod.GET)
	public ModelAndView a_board_review(HttpServletRequest req)
	{
		int all_reviews = review_adminSvc.getCountAllReviews();
		List<VReview_AdminVo> review_list = review_adminSvc.getAllList(1);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("rvw_list", review_list);
		map.put("all_reviews", new Integer(all_reviews));
		
		return new ModelAndView("admin/board/review/a_review", map);
	}
	
	@RequestMapping(value ="/admin/board/review_read.nm", method=RequestMethod.GET, params="r")
	public ModelAndView a_board_review(HttpServletRequest req, @RequestParam(value="r", required=false) int review_no)
	{
		VReview_AdminVo review = review_adminSvc.getOneReview(review_no);
		List<Review_ReVo> reply = review_reSvc.getAllRe(review_no);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("review", review);
		map.put("reply", reply);
		
		return new ModelAndView("admin/board/review/a_review", map);
	}
}
