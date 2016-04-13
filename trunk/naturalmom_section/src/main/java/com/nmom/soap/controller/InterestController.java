package com.nmom.soap.controller;

import org.springframework.stereotype.Controller;

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
	
}
