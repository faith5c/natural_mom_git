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

import com.nmom.soap.S;
import com.nmom.soap.data.model.board.faq.FaqVo;
import com.nmom.soap.svc.board.faq.IFaqSvc;

@Controller
public class FaqController {
	
	IFaqSvc faqSvc;

	public void setFaqSvc(IFaqSvc faqSvc) {
		this.faqSvc = faqSvc;
	}
	
	
	@RequestMapping(value ="/board/faq.nm", method=RequestMethod.GET)
	public ModelAndView board_faq(HttpServletRequest req, 
			@RequestParam(value="pageindex", required=false) String pageindex){
		int pi;
		
		if(pageindex == null){
			pageindex = "0";
		}
		
		try{
			pi = Integer.parseInt(pageindex);
	
		} catch(Exception e){
			e.printStackTrace();
			pi = 0;
		}
		
		Map<String,Object> map = new HashMap<String,Object>();
		List<FaqVo> faq_list = faqSvc.getAllFaq(pi * S.PAGE_LIMIT, (pi+1) * S.PAGE_LIMIT);
		if(faq_list != null){
			map.put("faq_list", faq_list);
		}
		ModelAndView mav = new ModelAndView("board/faq/b_faq", map);
		return mav;
	}
	
	
	@RequestMapping(value ="admin/board/faq.nm", method=RequestMethod.GET)
	public ModelAndView a_board_faq(HttpServletRequest req, 
			@RequestParam(value="pageindex", required=false) String pageindex){
		int pi;
		
		if(pageindex == null){
			pageindex = "0";
		}
		
		try{
			pi = Integer.parseInt(pageindex);
			
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
