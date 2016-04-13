package com.nmom.soap.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nmom.soap.svc.board.event.IEventSvc;
import com.nmom.soap.svc.board.event.IEvent_reSvc;
import com.nmom.soap.svc.member.IBoardAccessSvc;

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
	
	@RequestMapping(value ="/board/event.nm", method=RequestMethod.GET)
	public String board_event(HttpServletRequest req){
		return "board/event/b_event";
	}

}
