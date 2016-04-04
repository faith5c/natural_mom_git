package dao;

import java.util.List;

import model.Event;

public interface IEventDao {

	// 리스트
	List<Event> selectAllEvents();
	
	// 글읽기, 수정할 글 불러오기
	Event selectOneEvent(int event_no);
	
	// 검색
	List<Event> selectEvents_by_title(String search);
	List<Event> selectEvents_by_content(String search);
	List<Event> selectEvents_by_title_n_content(String search);
	
	// 글쓰기
	int insertEvent(Event event);

	// 글삭제
	int deleteEvent(int event_no);
	
	// 글수정
	int updateEvent(Event event);
}
