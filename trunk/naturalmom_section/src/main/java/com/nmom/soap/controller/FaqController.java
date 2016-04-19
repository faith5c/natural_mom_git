package com.nmom.soap.controller;


import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nmom.soap.S;
import com.nmom.soap.data.model.board.faq.FaqVo;
import com.nmom.soap.svc.board.faq.IFaqSvc;

@Controller
public class FaqController {
	
	IFaqSvc faqSvc;

	public void setFaqSvc(IFaqSvc faqSvc) {
		this.faqSvc = faqSvc;
	}

	//FAQ 전체 목록 보여주기 페이지네이션
	@RequestMapping(value="/board/faq/{pp}/list.nm", method = RequestMethod.GET)
	public ModelAndView showFaqBoard(HttpServletRequest req, 
			@PathVariable(value="pp") int pp)
	{
		Map<String,Object> map = new HashMap<String,Object>();
		
		//오라클 rownum 의 start, end 계산
		int count = faqSvc.getFaqCount();
		int start = count - (S.PAGE_LIMIT * pp);
		int end = start + S.PAGE_LIMIT;
		
		List<FaqVo> faq_list = faqSvc.getAllFaq(start, end);
		
		//페이지수 계산
		int total_pages = (int)Math.ceil((double)count/S.PAGE_LIMIT);
		
		if(faq_list != null){
			map.put("faq_count", count);
			map.put("faq_list", faq_list);
			map.put("pp", pp);
			map.put("total", total_pages);
			
		}
		
		ModelAndView mav = new ModelAndView("board/faq/b_faq", map);
		return mav;
		
	}
	
	//FAQ 목록보기
	@RequestMapping(value="/board/faq.nm", method={RequestMethod.GET})
	public String boardFaq(HttpServletRequest req)
	{
		return "redirect:/board/faq/1/list.nm";
	}

	//FAQ 다음글 가기
	@RequestMapping(value="/board/faq/next/read.nm", method=RequestMethod.GET)
	public ModelAndView faqNextRead(HttpServletRequest req,
			@RequestParam(value="fr_no") String fr_no,
			@RequestParam(value="rn") String rn)
	{
		Map<String,Object> map = new HashMap<String,Object>();
		List<FaqVo> faq_list;
		int rownum;
		
		try{
			if(rn != null && fr_no!=null){
				rownum = Integer.parseInt(rn);
				faq_list = faqSvc.getAllFaq(rownum, rownum+1);
				
				if(faq_list.size() == 1){ //다음글 있음
					map.put("fr_no", faq_list.get(0).getFaq_no());
					map.put("rn", rownum+1);
					
				} else {
					map.put("fr_no", fr_no);
					map.put("rn", rownum);
					map.put("next_err", "t");
					System.out.println("다음글이 없습니다");
				}
			}
		} catch(Exception e){
			e.printStackTrace();
			System.out.println("다음글 가려는데 정보 못받아옴");
			return new ModelAndView("redirect:/board/faq.nm", map);
		}
		
		return new ModelAndView("redirect:/board/faq/read.nm", map);
	}
	
	//FAQ 이전글 가기
	@RequestMapping(value="/board/faq/prev/read.nm", method=RequestMethod.GET)
	public ModelAndView faqPreviousRead(HttpServletRequest req,
			@RequestParam(value="fr_no") String fr_no,
			@RequestParam(value="rn") String rn)
	{
		Map<String,Object> map = new HashMap<String,Object>();
		List<FaqVo> faq_list;
		int rownum;
		
		try{
			if(rn != null && fr_no!=null){
				rownum = Integer.parseInt(rn);
				faq_list = faqSvc.getAllFaq(rownum-2, rownum-1);
				
				if(faq_list.size() == 1){ //이전글 있음
					map.put("fr_no", faq_list.get(0).getFaq_no());
					map.put("rn", rownum-1);
					
				} else {
					map.put("fr_no", fr_no);
					map.put("rn", rownum);
					map.put("prev_err", "t");
					System.out.println("이전글이 없습니다");
				}
			}
		} catch(Exception e){
			e.printStackTrace();
			System.out.println("이전글 가려는데 정보 못받아옴");
			return new ModelAndView("redirect:/board/faq.nm", map);
		}
		
		return new ModelAndView("redirect:/board/faq/read.nm", map);
	}
	
	//FAQ 질문 검색 페이지네이션
	@RequestMapping(value ="/board/faq/{pp}/search.nm", method=RequestMethod.GET)
	public ModelAndView boardSearchFaq(HttpServletRequest req, 
			@PathVariable(value="pp") int pp,
			@RequestParam(value="sch") String sch,
			@RequestParam(value="kw", required=false) String kw){
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		List<FaqVo> faq_list = null;
		int count = 0;
		int start = 0;
		int end = 0;
		int total_pages = 0;
		
		if(kw==null){
			kw="";
		}
		
		try {
			kw = URLDecoder.decode(kw, "UTF-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
			System.out.println("인코딩 문제 발생");
		}

		if(sch.equals("tt")){
			count = faqSvc.getSearchFaqTitleCount(kw);
			start = count - (S.PAGE_LIMIT * pp);
			end = start + S.PAGE_LIMIT;
			total_pages = (int)Math.ceil((double)count/S.PAGE_LIMIT);
			faq_list = faqSvc.searchFaqTitle(kw, start, end);
			
		}else if(sch.equals("con")){
			count = faqSvc.getSearchFaqContentCount(kw);
			start = count - (S.PAGE_LIMIT * pp);
			end = start + S.PAGE_LIMIT;
			total_pages = (int)Math.ceil((double)count/S.PAGE_LIMIT);
			faq_list = faqSvc.searchFaqContent(kw, start, end);
			
		}else if(sch.equals("ttcon")){
			count = faqSvc.getSearchFaqTitleNContentCount(kw);
			start = count - (S.PAGE_LIMIT * pp);
			end = start + S.PAGE_LIMIT;
			total_pages = (int)Math.ceil((double)count/S.PAGE_LIMIT);
			faq_list = faqSvc.searchFaqTitleNContent(kw, start, end);
		}
		
		if(faq_list != null){
			map.put("faq_count", count);
			map.put("faq_list", faq_list);
			map.put("pp", pp);
			map.put("total", total_pages);
		}
		
		ModelAndView mav = new ModelAndView("board/faq/b_faq", map);
		return mav;
	}

	//자주하는 질문 하나 읽기
	@RequestMapping(value="/board/faq/read.nm", method=RequestMethod.GET)
	public ModelAndView faqRead(HttpServletRequest req,
		@RequestParam(value="fr_no") String fr_no){
		Map<String,Object> map = new HashMap<String,Object>();

		int faqno;
		
		try{
			if(fr_no != null){
				faqno = Integer.parseInt(fr_no);
				FaqVo faq_vo = faqSvc.getOneFaq(faqno);
				
				if(faq_vo!=null){
					map.put("fvo", faq_vo);
					return new ModelAndView("/board/faq/b_faq", map);
				}
			}
		} catch(Exception e){
			e.printStackTrace();
			System.out.println("자주하는 질문 글 정보 받아오기 실패");
		}
		return new ModelAndView("redirect:/board/faq.nm", map);
		
	}
	
	
	//////////////////////////////////////////////////////////////////////////

	//관리자단에서 보는 자주하는 질문 목록
	@RequestMapping(value ="admin/board/faq.nm", method=RequestMethod.GET)
	public ModelAndView adminBoardFaq(HttpServletRequest req, 
			HttpSession se,
			@RequestParam(value="pgidx", required=false) String pageindex){
		int pi;

		if(pageindex == null){
			pageindex = "1";
		}
		
		try{
			pi = Integer.parseInt(pageindex)-1; //실제 인덱스는 0부터 시작
	
		} catch(Exception e){
			e.printStackTrace();
			pi = 0;
		}
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		// 관리자여부 확인
		Boolean isAdmin = ((Boolean)se.getAttribute(S.SESSION_ADMIN));
		if(isAdmin==null || !isAdmin.booleanValue()){
			map.put("err_msg", "관리자로 로그인 바랍니다.");
			return new ModelAndView("redirect:/login.nm", map);
		}
		
		
		List<FaqVo> faq_list = faqSvc.getAllFaq(pi * S.PAGE_LIMIT, (pi+1) * S.PAGE_LIMIT);
		if(faq_list != null){
			map.put("faq_list", faq_list);
		}
		ModelAndView mav = new ModelAndView("admin/board/faq/a_faq", map);
		return mav;
	}
	
}
