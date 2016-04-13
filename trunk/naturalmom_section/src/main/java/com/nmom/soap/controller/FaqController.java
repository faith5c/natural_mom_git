package com.nmom.soap.controller;

import com.nmom.soap.svc.board.faq.IFaqSvc;

public class FaqController {
	
	IFaqSvc faqSvc;

	public void setFaqSvc(IFaqSvc faqSvc) {
		this.faqSvc = faqSvc;
	}
}
