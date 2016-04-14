package com.nmom.soap.controller;

import java.util.HashMap;
import java.util.Map;

import javax.jws.WebParam.Mode;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nmom.soap.svc.member.IMemberSvc;

@Controller
public class MemberController {
	
	IMemberSvc memberSvc;
	
	public void setMemberSvc(IMemberSvc memberSvc) {
		this.memberSvc = memberSvc;
	}
	
	@RequestMapping(value="pop_checkId.nm", method=RequestMethod.GET)
	public ModelAndView popup_checkId(HttpServletRequest req,
									@RequestParam(value="check") String id){
		boolean result = memberSvc.checkId(id);
		Map<String, Object> map = new HashMap<String, Object>();
		
		System.out.println(result);
		System.out.println(id);
		
		if(id.equals("")){
			map.put("checking_id", id);
			map.put("flash_msg", "아이디를 입력해주세요.");
			return new ModelAndView("join/membership_pop_checkId",map);
		}else if(id.length()<6){
			map.put("checking_id", id);
			map.put("flash_msg", "아이디가 너무 짧습니다.");
			return new ModelAndView("join/membership_pop_checkId",map);
		}else if(id.length()>18){
			map.put("checking_id", id);
			map.put("flash_msg", "아이디가 너무 깁니다.");
			return new ModelAndView("join/membership_pop_checkId",map);
		}else if(result){
			map.put("checking_id", id);
			map.put("flash_msg", "사용할 수 있는 아이디입니다.");
			return new ModelAndView("join/membership_pop_checkId",map);
		}else{
			map.put("checking_id", id);
			map.put("flash_msg", "이미 사용중인 아이디입니다.");
			return new ModelAndView("join/membership_pop_checkId",map);
		}
	}
	
	@RequestMapping(value="checkId.nm", method=RequestMethod.GET)
	public ModelAndView checkId(HttpServletRequest req,
			@RequestParam(value="check") String id){
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("check", id);
		return new ModelAndView("redirect:/pop_checkId.nm",map);
	}


}
