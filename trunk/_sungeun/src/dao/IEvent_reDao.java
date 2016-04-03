package dao;

import java.util.List;

import model.Event_re;

public interface IEvent_reDao {
	
	List<Event_re> selectAllRe(int event_no);
	
	int insertRe(Event_re re);
	
	int deleteRe(Event_re re);
}
