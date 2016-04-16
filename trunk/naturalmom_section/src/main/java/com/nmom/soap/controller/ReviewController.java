package com.nmom.soap.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nmom.soap.S;
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
	
	// 상품후기 목록
	@RequestMapping(value ="/admin/board/review.nm", method=RequestMethod.GET)
	public ModelAndView review_list(HttpServletRequest req, HttpSession session, 
			@RequestParam(value="p", required=false) String p)
	{
		int page = 0;
		try { page = Integer.parseInt(p); }
		catch(NumberFormatException e) { page = 1; }
		int all_reviews = review_adminSvc.getCountAllReviews();
		List<VReview_AdminVo> review_list = review_adminSvc.getAllList(page);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("rvw_list", review_list);
		map.put("all_reviews", new Integer(all_reviews));
		
		return new ModelAndView("admin/board/review/a_review", map);
	}
	
	// 검색 결과 표시
	@RequestMapping(value ="/admin/board/review_search.nm", method=RequestMethod.GET)
	public ModelAndView review_list_search(HttpServletRequest req, HttpSession session,
			@RequestParam(value="option", required=false) String option, @RequestParam(value="search", required=false) String search)
	{
		// 인코딩 -> 디코딩 처리
		try {
			search = URLDecoder.decode(search, "UTF-8");
		} catch (UnsupportedEncodingException e) {e.printStackTrace();}
		
		int all_reviews = -1;
		Map<String, Object> map = new HashMap<String, Object>();
		List<VReview_AdminVo> review_list = null;

		if(option.equals("title"))
		{
			review_list = review_adminSvc.getReviews_by_title(search, 1);
			all_reviews = review_adminSvc.getCountReviewsByTitle(search);
		}
		else if(option.equals("content"))
		{
			review_list = review_adminSvc.getReviews_by_content(search, 1);
			all_reviews = review_adminSvc.getCountReviewsByContent(search);
		}
		else if(option.equals("id"))
		{
			review_list = review_adminSvc.getReviews_by_id(search, 1);
			all_reviews = review_adminSvc.getCountReviewsById(search);
		}
		else if(option.equals("title_n_content"))
		{
			review_list = review_adminSvc.getReviews_by_title_n_content(search, 1);
			all_reviews = review_adminSvc.getCountReviewsByTitleNContent(search);
		}
		
		map.put("rvw_list", review_list);
		map.put("all_reviews", new Integer(all_reviews));
		
		return new ModelAndView("admin/board/review/a_review", map);
	}
	
	// 글 읽기
	@RequestMapping(value ="/admin/board/review_read.nm", method=RequestMethod.GET, params="r")
	public ModelAndView read_review(HttpServletRequest req, HttpSession session,
			@RequestParam(value="r", required=false) int review_no)
	{
		Map<String, Object> map = new HashMap<String, Object>();
		ReviewVo rvw = reviewSvc.getOneReview(review_no);
		int countReviews = review_adminSvc.getCountAllReviews();
		
		// 해당 글의 조회수를 증가시키는 작업
		if (reviewSvc.updateReviewCount(rvw) == S.PROCESS_SUCCESS)
		{
			VReview_AdminVo review = review_adminSvc.getOneReview(review_no);
			List<Review_ReVo> reply = review_reSvc.getAllRe(review_no);
			map.put("count", new Integer(countReviews));
			map.put("review", review);
			map.put("reply", reply);
		}
		else
		{
			// 에러 페이지로 이동
		}
		
		return new ModelAndView("admin/board/review/a_review", map);
	}
	
	@RequestMapping(value="/admin/board/review_read_m.nm", method=RequestMethod.GET, params="r")
	public ModelAndView read_review_move(HttpServletRequest request, HttpSession session,
			@RequestParam(value="r") int review_no, @RequestParam(value="d") String direction)
	{
		Map<String, Object> map = new HashMap<String, Object>();
		ReviewVo rvw = null;
		int chn_no = review_no;
		
		do
		{
			// 이전글
			if (direction.equals("p"))
				chn_no -= 1;
			// 다음글
			else if (direction.equals("n"))
				chn_no += 1;
			
			rvw = reviewSvc.getOneReview(chn_no);
		} while (rvw.getRvw_del_check() > 0);
		
		int countReviews = review_adminSvc.getCountAllReviews();
		
		// 해당 글의 조회수를 증가시키는 작업
		if (reviewSvc.updateReviewCount(rvw) == S.PROCESS_SUCCESS)
		{
			VReview_AdminVo review = review_adminSvc.getOneReview(chn_no);
			List<Review_ReVo> reply = review_reSvc.getAllRe(chn_no);
			map.put("count", new Integer(countReviews));
			map.put("review", review);
			map.put("reply", reply);
		}
		else
		{
			// 에러 페이지로 이동
		}
		
		return new ModelAndView("admin/board/review/a_review", map);
	}
}
