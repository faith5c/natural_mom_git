package com.nmom.soap.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nmom.soap.svc.impl.member.IMemberSvc;

@Controller
public class MemberController {
	
	IMemberSvc memberSvc;
	
	public void setMemberSvc(IMemberSvc memberSvc) {
		this.memberSvc = memberSvc;
	}
	
	


}