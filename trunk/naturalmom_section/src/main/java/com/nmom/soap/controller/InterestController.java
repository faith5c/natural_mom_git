package com.nmom.soap.controller;

import com.nmom.soap.svc.interest.IInterestSvc;
import com.nmom.soap.svc.interest.IVInterestProductSvc;

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
