package com.nmom.soap.svc.board.event;

import java.util.List;

import com.nmom.soap.data.dao.board.event.IEventDao;
import com.nmom.soap.data.model.board.event.EventVo;

public class EventSvcImpl implements IEventSvc {
	
	IEventDao eventDao;
	
	// DI
	public void setEventDao(IEventDao eventDao) {
		this.eventDao = eventDao;
	}
	
	// Override Method
	@Override
	public void getAllEvents() {
		// TODO Auto-generated method stub

	}

	@Override
	public void getEventList() {
		// TODO Auto-generated method stub

	}

	@Override
	public List<EventVo> getEventList(int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public EventVo getOneEvent(int event_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<EventVo> getEvents_by_title(String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<EventVo> getEvents_by_content(String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<EventVo> getEvents_by_title_n_content(String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addEvent(EventVo event) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeEvent(int event_no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editEvent(EventVo event) {
		// TODO Auto-generated method stub
		return 0;
	}

}
