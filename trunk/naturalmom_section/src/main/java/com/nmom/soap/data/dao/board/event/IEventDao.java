package com.nmom.soap.data.dao.board.event;

import java.util.List;

import com.nmom.soap.data.model.board.event.EventVo;


public interface IEventDao {


	// 리스트
	List<EventVo> getAllEvents();
	List<EventVo> getEventList();
	
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
