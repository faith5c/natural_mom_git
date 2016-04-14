package com.nmom.soap.controller;

import org.springframework.stereotype.Controller;

import com.nmom.soap.svc.board.notice.INoticeReSvc;
import com.nmom.soap.svc.board.notice.INoticeSvc;
import com.nmom.soap.svc.board.notice.IVNoticeSvc;

@Controller
public class NoticeController {

	private INoticeSvc noticeSvc;
	private INoticeReSvc noticeReSvc;
	private IVNoticeSvc vNoticeSvc;
	
	public void setNoticeSvc(INoticeSvc noticeSvc) {
		this.noticeSvc = noticeSvc;
	}
	public void setNoticeReSvc(INoticeReSvc noticeReSvc) {
		this.noticeReSvc = noticeReSvc;
	}
	public void setVNoticeSvc(IVNoticeSvc vNoticeSvc) {
		this.vNoticeSvc = vNoticeSvc;
	}
	
	
}
