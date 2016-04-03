package dao;

import java.util.List;

import model.Event;

public interface IEventDao {

	List<Event> selectAllEvents();
		
	Event selectOneEvent(int event_no);
		
	List<Event> selectEvents_by_title(String search);
		
	List<Event> selectEvents_by_content(String search);
		
	List<Event> selectEvents_by_title_n_content(String search);
		
	int insertEvent(Event event);

	int deleteEvent(int event_no);
		
	int updateEvent(Event event);
}
