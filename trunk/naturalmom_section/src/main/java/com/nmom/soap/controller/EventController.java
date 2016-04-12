package com.nmom.soap.controller;

import org.springframework.stereotype.Controller;

import com.nmom.soap.svc.board.event.IEventSvc;
import com.nmom.soap.svc.board.event.IEvent_reSvc;
import com.nmom.soap.svc.impl.member.IBoardAccessSvc;

@Controller
public class EventController {
	
	IEventSvc eventSvc;
	IEvent_reSvc eventReSvc;
	IBoardAccessSvc boardAccessSvc;
	
	public void setEventSvc(IEventSvc eventSvc) {
		this.eventSvc = eventSvc;
	}
	public void setEventReSvc(IEvent_reSvc eventReSvc) {
		this.eventReSvc = eventReSvc;
	}
	public void setBoardAccessSvc(IBoardAccessSvc boardAccessSvc) {
		this.boardAccessSvc = boardAccessSvc;
	}

}
