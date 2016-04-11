package com.nmom.soap.ui.svc;

import java.util.List;

import com.nmom.soap.data.model.EventVo;

public interface IEventSvc {
	
	// 리스트
	void getAllEvents();
	void getEventList();
	List<EventVo> getEventList(int start, int end);
	
	// 글읽기, 수정할 글 불러오기
	EventVo getOneEvent(int event_no);
	
	// 검색
	List<EventVo> getEvents_by_title(String search);
	List<EventVo> getEvents_by_content(String search);
	List<EventVo> getEvents_by_title_n_content(String search);
	
	// 글쓰기
	int addEvent(EventVo event);

	// 글삭제
	int removeEvent(int event_no);
	
	// 글수정
	int editEvent(EventVo event);

}
