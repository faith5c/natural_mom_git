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
	
	
//*********************************************************************************************관리자 페이지 영역	
	
	// 상품후기 목록
	@RequestMapping(value ="/admin/board/review.nm", method=RequestMethod.GET)
	public ModelAndView review_list(HttpServletRequest req, HttpSession session, 
			@RequestParam(value="p", required=false) String p)
	{
		Boolean isAdmin = ((Boolean)session.getAttribute(S.SESSION_ADMIN));
		
		if (isAdmin!= null && isAdmin.booleanValue())
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
		else
		{
			return new ModelAndView("redirect:/login.nm", null);
		}
	}
	
	// 검색 결과 표시
	@RequestMapping(value ="/admin/board/review_search.nm", method=RequestMethod.GET)
	public ModelAndView review_list_search(HttpServletRequest req, HttpSession session,
			@RequestParam(value="option", required=false) String option, @RequestParam(value="search", required=false) String search)
	{
		Boolean isAdmin = ((Boolean)session.getAttribute(S.SESSION_ADMIN));
		
		if (isAdmin!= null && isAdmin.booleanValue())
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
		else
		{
			return new ModelAndView("redirect:/login.nm", null);
		}
	}
	
	// 글 읽기
	@RequestMapping(value ="/admin/board/review_read.nm", method=RequestMethod.GET, params="r")
	public ModelAndView read_review(HttpServletRequest req, HttpSession session,
			@RequestParam(value="r", required=false) int review_no)
	{
		Boolean isAdmin = ((Boolean)session.getAttribute(S.SESSION_ADMIN));
		
		if (isAdmin!= null && isAdmin.booleanValue())
		{
			String id = (String)session.getAttribute(S.SESSION_LOGIN);
			
			Map<String, Object> map = new HashMap<String, Object>();
			ReviewVo rvw = reviewSvc.getOneReview(review_no);
			
	
			
			int countReviews = review_adminSvc.getCountAllReviews();
			
			// 해당 글의 조회수를 증가시키는 작업
			if (reviewSvc.updateReviewCount(rvw) == S.PROCESS_SUCCESS)
			{
				VReview_AdminVo review = review_adminSvc.getOneReview(review_no);
				List<Review_ReVo> reply = review_reSvc.getAllRe(review_no);
				map.put("count", new Integer(countReviews));
				map.put("id", id);
				map.put("isAdmin", isAdmin);
				map.put("review", review);
				map.put("reply", reply);
			}
			else
			{
				// 에러 페이지로 이동
			}
			
			return new ModelAndView("admin/board/review/a_review", map);
		}
		else
		{
			return new ModelAndView("redirect:/login.nm", null);
		}
	}
	
	// 이전글, 다음글 이동
	@RequestMapping(value="/admin/board/review_read_m.nm", method=RequestMethod.GET, params="r")
	public ModelAndView read_review_move(HttpServletRequest request, HttpSession session,
			@RequestParam(value="r") int review_no, @RequestParam(value="d") String direction)
	{
		Boolean isAdmin = ((Boolean)session.getAttribute(S.SESSION_ADMIN));
		
		if (isAdmin!= null && isAdmin.booleanValue())
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
		else
		{
			return new ModelAndView("redirect:/login.nm", null);
		}
	}
	
	// 댓글 달기
	@RequestMapping(value="/admin/board/review_reg_re_proc.nm", method=RequestMethod.POST)
	public String register_review_reply(HttpServletRequest request, HttpSession session,
			@RequestParam(value="rvw_re_content", required=false) String rvw_re_content,
			@RequestParam(value="rvw_no", required=false) int rvw_no)
	{
		// 세션에서 아이디와 관리자인지 여부를 얻어옴
		String id = (String)session.getAttribute(S.SESSION_LOGIN);
		Boolean isAdmin = ((Boolean)session.getAttribute(S.SESSION_ADMIN));
		
		if (isAdmin!= null && isAdmin.booleanValue())
		{
			Review_ReVo new_reply = new Review_ReVo();
			new_reply.setMem_id(id);
			new_reply.setRvw_no(rvw_no);
			new_reply.setRvw_re_content(rvw_re_content);
			
			if (review_reSvc.addRe(new_reply) == S.PROCESS_SUCCESS)
			{
				return "redirect:/admin/board/review_read.nm?r=" + rvw_no;
			}
			else
			{
				// 에러 메시지
				System.out.println("댓글 등록 실패");
				return "login.nm";
			}
		}
		else
		{
			// 관리자 로그인 해달라는 에러 메시지
			return "redirect:/login.nm";
		}
	}
	
	// 댓글 및 글 삭제
	@RequestMapping(value="/admin/board/review_del_proc.nm", method=RequestMethod.GET)
	public String delete_review_n_re(HttpServletRequest request, HttpSession session,
			@RequestParam(value="c", required=false) String c,
			@RequestParam(value="no", required=false) int no)
	{
		// 세션에서 아이디와 관리자인지 여부를 얻어옴
		Boolean isAdmin = ((Boolean)session.getAttribute(S.SESSION_ADMIN));
		
		if (isAdmin!= null && isAdmin.booleanValue())
		{
			// 글 삭제인 경우
			if(c.equals("r"))
			{
				if (reviewSvc.removeReview(no) == S.PROCESS_SUCCESS)
					return "redirect:/admin/board/review.nm";
				else 
					return "redirect:/admin/board/review_read.nm?r=" + no;
			}
			// 댓글 삭제인 경우
			else if(c.equals("rr"))
			{
				int review_no = review_reSvc.getRvwNoOfRe(no);
				
				if (review_reSvc.removeRe(no) == S.PROCESS_SUCCESS)
					return "redirect:/admin/board/review_read.nm?r=" + review_no;
				else
				{
					System.out.println("댓글 삭제 실패");
					return "redirect:/admin/board/review_read.nm?r=" + review_no;
				}
			}
			else
			{
				System.out.println("잘못된 파라미터 값");
				return "redirect:/admin/board/review.nm";
			}
		}
		else
		{
			// 관리자 로그인 해달라는 에러 메시지
			return "redirect:/login.nm";
		}
	}
	
//*********************************************************************************************관리자 페이지 영역	
}
