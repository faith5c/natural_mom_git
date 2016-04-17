package com.nmom.soap.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.jws.WebParam.Mode;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nmom.soap.S;
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
		Map<String, Object> map = new HashMap<>();
		MemberVo m = memberSvc.getOneMember(login_id);
		
		if(m!=null && m.getMem_pw().equals(login_pw) && m.getDrop_out() != 1){
			se.setAttribute("loggedin", login_id);
				
				if(m.getMem_level_cd()==10){
					se.setAttribute("admin", true);
				}
			return new ModelAndView("redirect:/index.nm", map);
		}else{
			map.put("err_msg", "아이디와 비밀번호를 확인해주세요.");
			return new ModelAndView("login/login", map);
		}
	}
	///////////////////////////////////////////////////////////// 아이디 패스워드 찾기
	@RequestMapping(value="pop_findId.nm", method=RequestMethod.GET)
	public String popup_findId(HttpServletRequest req){
		
		return "login/login_popup";
	}
	
	///////////////////////////////////////////////////////////// 로그아웃
	@RequestMapping(value="logout_proc.nm", method=RequestMethod.GET)
	public String logout_proc(HttpServletRequest req,
									HttpSession se){
		se.removeAttribute("loggedin");
		se.removeAttribute("admin");
		se.invalidate();
		return "redirect:/index.nm";
	}
	
	
	
	//////////////////////////////////////////////////////////// 회원가입 페이지
	
	@RequestMapping(value ="/join.nm", method=RequestMethod.POST)
	public String menu_join(HttpServletRequest req){
		return "join/membership";
	}
	
	
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
	
	// 회원가입 처리
	@RequestMapping(value="join_complete.nm", method=RequestMethod.GET)
	public ModelAndView join_complete_proc(HttpServletRequest req,
										@RequestParam(value="id") String id,
										@RequestParam(value="pw") String pw,
										@RequestParam(value="name") String name,
										@RequestParam(value="gender") int gender,
										@RequestParam(value="year") int year,
										@RequestParam(value="month") int month,
										@RequestParam(value="day") int day,
										@RequestParam(value="phone1") String phone1,
										@RequestParam(value="phone2") int phone2,
										@RequestParam(value="phone3") int phone3,
										@RequestParam(value="email1") String email1,
										@RequestParam(value="email2") String email2,
										@RequestParam(value="post_num") int post_num,
										@RequestParam(value="address") String address,
										@RequestParam(value="address_detail") String address_detail
											){
		
		System.out.println("들어옴");
		System.out.println("#" + id + " : " + pw);
		System.out.println(name + " " + gender +" "+ new Date(year, month, day));
		System.out.println("phone " + phone1 +"-"+ phone2 +"-"+ phone3);
		System.out.println("email " +email1 + "@"+email2);
		System.out.println("address " + post_num + " " + address + "@" +address_detail);
		
		return new ModelAndView("join/membership");
	}
	
	
	
	// 회원정보 수정(정보 불러오기) //////////////////////////////////////////////////////////마이페이지
	@RequestMapping(value="myinfo_edit.nm", method=RequestMethod.GET)
	public ModelAndView edit_member(HttpServletRequest req,
									HttpSession se){
		Map<String, Object> map = new HashMap<>();
		
		String id = (String)se.getAttribute(S.SESSION_LOGIN);
		MemberVo member =  memberSvc.getOneMember(id);
		String[] phone = member.getMem_phone().split("-");
		String[] email = member.getMem_email().split("@");
		String[] address = member.getMem_addr_detail().split("@");
		
		map.put("m", member);
		map.put("phone", phone);
		map.put("email", email);
		map.put("address", address);
		
		return new ModelAndView("mypage/mypage", map);
	}
	
	
	// 회원탈퇴
	@RequestMapping(value="dropout_proc.nm", method=RequestMethod.GET)
	public ModelAndView dropout_proceed(HttpServletRequest req,
								HttpSession se ){
		Map<String, Object> map = new HashMap<>();
		String id = (String)se.getAttribute(S.SESSION_LOGIN);
		
		System.out.println(memberSvc.removeMember(id));
		map.put("flash_msg", "정상 탈퇴처리 되었습니다. <br> 지금까지 자연맘을 이용해주셔서 감사합니다.");
		se.invalidate();
		
		return new ModelAndView("empty", map);
	}
	
	
	///////////////////////////////////////////////////////////////////////////////////////////관리자 회원관리
	@RequestMapping(value ="/admin/member.nm", method=RequestMethod.GET)
	public ModelAndView admin_member(HttpServletRequest req){
		
		Map<String, Object> map = new HashMap<>();
		List<MemberVo> member_list = memberSvc.getAllMember();
		
		
		for(int i=0; i < member_list.size(); i++){
			member_list.get(i).setMem_addr_detail
				(member_list.get(i).getMem_addr_detail().replace("@", "<br>"));
			
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			member_list.get(i).setMem_pw
				(format.format(member_list.get(i).getMem_birth())); 
			
			
			// 관리자는 제외
			if( member_list.get(i).getMem_level_cd()== S.LEVEL_ADMIN){
				member_list.remove(i);
				i--;
			}
		}
		
		map.put("member", member_list);
		
		return new ModelAndView("admin/member/a_member", map);
	}


}
