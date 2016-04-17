package com.nmom.soap.controller;


import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
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
	
	//자주하는 질문 목록
	@RequestMapping(value ="/board/faq.nm", method=RequestMethod.GET)
	public ModelAndView boardFaq(HttpServletRequest req, 
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
			System.out.println("자주하는 질문 목록 인덱스 받아오기 오류처리함");
		}
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		List<FaqVo> faq_list = faqSvc.getAllFaq(pi * S.PAGE_LIMIT, (pi+1) * S.PAGE_LIMIT);
		
		if(faq_list != null){
			map.put("faq_list", faq_list);
		}
		ModelAndView mav = new ModelAndView("board/faq/b_faq", map);
		return mav;
	}
	
	//자주하는 질문 검색
	@RequestMapping(value ="/board/faq/search.nm", method=RequestMethod.GET)
	public ModelAndView boardSearchFaq(HttpServletRequest req, 
			@RequestParam(value="pgidx", required=false) String pageindex,
			@RequestParam(value="sch") String sch,
			@RequestParam(value="kw", required=false) String kw){
		int pi;
		
		if(pageindex == null){
			pageindex = "1";
		}
		
		if(kw==null){
			kw="";
		}
		
		try {
			kw = URLDecoder.decode(kw, "UTF-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
			System.out.println("자주하는 질문 인코딩 문제 발생");
		}
		
		try{
			pi = Integer.parseInt(pageindex)-1; //실제 인덱스는 0부터 시작
			
		} catch(Exception e){
			e.printStackTrace();
			pi = 0;
			System.out.println("자주하는 질문 인덱스 받아오기 오류처리함");
		}
		
		Map<String,Object> map = new HashMap<String,Object>();
		List<FaqVo> faq_list;
		
		if(sch.equals("tt")){
			faq_list = faqSvc.searchFaqTitle(kw, pi * S.PAGE_LIMIT, (pi+1) * S.PAGE_LIMIT);
			
		}else if(sch.equals("con")){
			faq_list = faqSvc.searchFaqContent(kw, pi * S.PAGE_LIMIT, (pi+1) * S.PAGE_LIMIT);
			
		}else if(sch.equals("ttcon")){
			faq_list = faqSvc.searchFaqTitleNContent(kw, pi * S.PAGE_LIMIT, (pi+1) * S.PAGE_LIMIT);
			
		}else {
			faq_list = faqSvc.getAllFaq(pi * S.PAGE_LIMIT, (pi+1) * S.PAGE_LIMIT);
		}
		
		if(faq_list != null){
			map.put("faq_list", faq_list);
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
		List<FaqVo> faq_list = faqSvc.getAllFaq(pi * S.PAGE_LIMIT, (pi+1) * S.PAGE_LIMIT);
		if(faq_list != null){
			map.put("faq_list", faq_list);
		}
		ModelAndView mav = new ModelAndView("admin/board/faq/a_faq", map);
		return mav;
	}
	
}
