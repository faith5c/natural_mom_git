package com.nmom.soap.controller;

import com.nmom.soap.svc.board.qna.IQnaReSvc;
import com.nmom.soap.svc.board.qna.IQnaSvc;
import com.nmom.soap.svc.board.qna.IVQnaQnareSvc;

public class QnaController {
	IQnaSvc qnaSvc;
	IQnaReSvc qnaReSvc;
	IVQnaQnareSvc vQnaQnareSvc;
	
	public void setQnaSvc(IQnaSvc qnaSvc) {
		this.qnaSvc = qnaSvc;
	}
	public void setQnaReSvc(IQnaReSvc qnaReSvc) {
		this.qnaReSvc = qnaReSvc;
	}
	public void setVQnaQnareSvc(IVQnaQnareSvc vQnaQnareSvc) {
		this.vQnaQnareSvc = vQnaQnareSvc;
	}
}