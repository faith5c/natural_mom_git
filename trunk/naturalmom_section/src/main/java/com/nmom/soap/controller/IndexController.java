package com.nmom.soap.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
	
	
	@RequestMapping(value = "/index.nm", method = RequestMethod.GET)
	public String index(HttpServletRequest req) {
		return "index";
	}
	
	@RequestMapping(value ="/login.nm", method=RequestMethod.GET)
	public String menu_login(HttpServletRequest req){
		return "login/login";
	}
	
	@RequestMapping(value ="/join.nm", method=RequestMethod.GET)
	public String menu_join(HttpServletRequest req){
		return "join/membership";
	}

}
