package com.nmom.soap.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.nmom.soap.data.model.interest.VInterestProductVo;
import com.nmom.soap.svc.interest.IInterestSvc;
import com.nmom.soap.svc.interest.IVInterestProductSvc;

@Controller
public class InterestController {
	IInterestSvc interestSvc;
	IVInterestProductSvc vInterestProductSvc;
	
	public void setInterestSvc(IInterestSvc interestSvc) {
		this.interestSvc = interestSvc;
	}
	public void setVInterestProductSvc(IVInterestProductSvc vInterestProductSvc) {
		this.vInterestProductSvc = vInterestProductSvc;
	}

	@RequestMapping(value ="/interest.nm", method=RequestMethod.GET)
	public ModelAndView menu_cart(HttpServletRequest req, HttpSession ses)
	{
		String loggedin = (String)ses.getAttribute("loggedin");
		
		List<VInterestProductVo> interest_list = this.vInterestProductSvc.getInterestByMemId(loggedin);
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		if(interest_list!=null && interest_list.size()!=0){
			map.put("interest_list", interest_list);
		}
		
		ModelAndView mav = new ModelAndView("mypage/mypage", map);
		return mav;
	}
	
	@RequestMapping(value ="/mypage.nm", method=RequestMethod.GET)
	public ModelAndView menu_mypage(HttpServletRequest req, HttpSession ses){
		
		String loggedin = (String)ses.getAttribute("loggedin");
		
		List<VInterestProductVo> interest_list = this.vInterestProductSvc.getInterestByMemId(loggedin);
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		if(interest_list!=null && interest_list.size()!=0){
			map.put("interest_list", interest_list);
		}
		
		ModelAndView mav = new ModelAndView("mypage/mypage", map);
		return mav;
	}
	
}
