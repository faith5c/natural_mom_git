package com.nmom.soap.data.dao.board.event;

import java.util.List;

import com.nmom.soap.data.model.board.event.Event_reVo;


public interface IEvent_reDao {
	
	// 댓글 리스트
	List<Event_reVo> getEventRe(int event_no);
	// 댓글 하나
	Event_reVo getOneRe(int event_re_no);
	
	// 댓글 쓰기
	int addRe(Event_reVo re);
	// 댓글 삭제
	int removeRe(int event_re_no);
}
