package com.nmom.soap.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nmom.soap.data.model.board.event.EventVo;
import com.nmom.soap.data.model.board.event.Event_reVo;
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
	
	
	
	/////////////////////////////// 사용자 페이지
	// 이벤트 리스트
	@RequestMapping(value ="/board/event.nm", method=RequestMethod.GET)
	public ModelAndView board_event(HttpServletRequest req){
		Map<String, Object> map = new HashMap<>();
			
		List<EventVo> e_list = eventSvc.getEventList(1, 15);
		map.put("e_list", e_list);
		
		return new ModelAndView("board/event/b_event", map);
	}
	
	// 읽기 페이지
	@RequestMapping(value ="/board/event_read.nm", method=RequestMethod.GET)
	public ModelAndView board_event_r(HttpServletRequest req, 
									@RequestParam(value="r") int r,	// 이벤트no
									@RequestParam(value="rn") int rn,	// 이벤트 RowNom
									@RequestParam(value="d") int d){	// 이벤트 리플 넘버
		Map<String, Object> map = new HashMap<>();
		
		if(d != 0){
			eventReSvc.removeRe(d);
		}
		
		// 조회수 증가
		eventSvc.addReadCount(r);
		// 이벤트 내용 불러오기
		EventVo event = eventSvc.getOneEvent(r);
		event.setEvt_rnum(rn);	// RowNum
		map.put("con", event);
		// 댓글 내용 불러오기
		List<Event_reVo> event_re = eventReSvc.getEventRe(r);
		map.put("re", event_re);
		
		return new ModelAndView("board/event/b_event", map);
	}
	
	
	
	
	/////////////////////////////// 관리자페이지
	// 이벤트 리스트
	@RequestMapping(value ="/admin/board/event.nm", method=RequestMethod.GET)
	public ModelAndView a_board_event(HttpServletRequest req){
		List<EventVo> e_list = eventSvc.getEventList(1, 5);
		
		Map<String, Object> map = new HashMap<>();
		map.put("e_list", e_list);
		
		return new ModelAndView("admin/board/event/a_event", map);
	}
	
	// 읽기 페이지
	@RequestMapping(value ="/admin/board/event_read.nm", method=RequestMethod.GET)
	public ModelAndView a_board_event_r(HttpServletRequest req, 
									@RequestParam(value="r") int r,	// 이벤트no
									@RequestParam(value="rn") int rn,	// 이벤트 RowNom
									@RequestParam(value="d") int d){	// 이벤트 리플 넘버
		Map<String, Object> map = new HashMap<>();

		if(d != 0){
			eventReSvc.removeRe(d);
		}

		// 조회수 증가
		eventSvc.addReadCount(r);
		// 이벤트 내용 불러오기
		EventVo event = eventSvc.getOneEvent(r);
		event.setEvt_rnum(rn);	// RowNum
		map.put("con", event);
		// 댓글 내용 불러오기
		List<Event_reVo> event_re = eventReSvc.getEventRe(r);
		map.put("re", event_re);
		
		return new ModelAndView("admin/board/event/a_event", map);
	}

}
