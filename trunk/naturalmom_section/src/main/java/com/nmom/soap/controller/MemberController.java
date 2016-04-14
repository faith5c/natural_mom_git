package com.nmom.soap.controller;

import java.util.HashMap;
import java.util.Map;

import javax.jws.WebParam.Mode;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nmom.soap.data.model.member.MemberVo;
import com.nmom.soap.svc.member.IMemberSvc;

@Controller
public class MemberController {
	
	IMemberSvc memberSvc;
	
	public void setMemberSvc(IMemberSvc memberSvc) {
		this.memberSvc = memberSvc;
	}
	
	///////////////////////////////////////////////////////////// 로그인
	@RequestMapping(value="login_proc.nm", method=RequestMethod.POST)
	public ModelAndView login_proc(HttpServletRequest req,
									HttpSession se,
									@RequestParam(value="login_id")String login_id,
									@RequestParam(value="login_pw")String login_pw){
		System.out.println(login_id +" "+ login_pw);
		Map<String, Object> map = new HashMap<>();
		MemberVo m = memberSvc.getOneMember(login_id);
		
		if(m!=null && m.getMem_pw().equals(login_pw)){
			se.setAttribute("loggedin", login_id);
				
				if(m.getMem_level_cd()==10){
					se.setAttribute("admin", true);
				}
			return new ModelAndView("index", map);
		}else{
			map.put("err_msg", "아이디와 비밀번호를 확인해주세요.");
			return new ModelAndView("login/login", map);
		}
	}
	///////////////////////////////////////////////////////////// 로그아웃
	@RequestMapping(value="logout_proc.nm", method=RequestMethod.GET)
	public String logout_proc(HttpServletRequest req,
									HttpSession se){
		se.removeAttribute("loggedin");
		se.removeAttribute("admin");
		se.invalidate();
		return "index";
	}
	
	
	
	//////////////////////////////////////////////////////////// 회원가입 페이지
	
	// 아이디 중복확인 팝업
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
	
	// 아이디 중복확인 팝업 내 다시 중복확인
	@RequestMapping(value="checkId.nm", method=RequestMethod.GET)
	public ModelAndView checkId(HttpServletRequest req,
			@RequestParam(value="check") String id){
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("check", id);
		return new ModelAndView("redirect:/pop_checkId.nm",map);
	}


}
