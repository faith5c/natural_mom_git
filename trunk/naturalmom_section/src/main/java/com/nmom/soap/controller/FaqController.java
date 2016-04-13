package com.nmom.soap.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nmom.soap.svc.board.faq.IFaqSvc;

@Controller
public class FaqController {
	
	IFaqSvc faqSvc;

	public void setFaqSvc(IFaqSvc faqSvc) {
		this.faqSvc = faqSvc;
	}
	
	
	
	@RequestMapping(value ="/board/faq.nm", method=RequestMethod.GET)
	public String board_faq(HttpServletRequest req){
		return "board/faq/b_faq";
	}
	
	@RequestMapping(value ="admin/board/faq.nm", method=RequestMethod.GET)
	public String a_board_faq(HttpServletRequest req){
		return "admin/board/faq/a_faq";
	}
}
