package com.nmom.soap.svc.board.event;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.dao.board.event.IEventDao;
import com.nmom.soap.data.model.board.event.EventVo;

public class EventSvcImpl implements IEventSvc {
	
	IEventDao eventDao;
	
	// DI
	public void setEventDao(IEventDao eventDao) throws DataAccessException {
		this.eventDao = eventDao;
	}
	
	// Override Method
	@Override
	public void getAllEvents() throws DataAccessException {
		// TODO Auto-generated method stub

	}

	@Override
	public void getEventList() throws DataAccessException {
		// TODO Auto-generated method stub

	}

	@Override
	public List<EventVo> getEventList(int start, int end) throws DataAccessException {
		return eventDao.getEventList(start, end);
	}

	@Override
	public EventVo getOneEvent(int event_no) throws DataAccessException {
		return eventDao.getOneEvent(event_no);
	}

	@Override
	public List<EventVo> getEvents_by_title(String search) throws DataAccessException {
		return eventDao.getEvents_by_title(search);
	}

	@Override
	public List<EventVo> getEvents_by_content(String search) throws DataAccessException {
		return eventDao.getEvents_by_content(search);
	}

	@Override
	public List<EventVo> getEvents_by_title_n_content(String search) throws DataAccessException {
		return eventDao.getEvents_by_title_n_content(search);
	}

	@Override
	public int addEvent(EventVo event) throws DataAccessException {
		String con_check = event.getEvt_content();
		if(con_check.contains("&nbsp;")){
			con_check = con_check.replace("&nbsp;", " ");
			System.out.println("2 " +con_check);
		}
		return eventDao.addEvent(event);
	}

	@Override
	public int removeEvent(int event_no) throws DataAccessException {
		return eventDao.removeEvent(event_no);
	}

	@Override
	public int editEvent(EventVo event) throws DataAccessException {
		return eventDao.editEvent(event);
	}
	
	@Override
	public int addReadCount(int event_no) throws DataAccessException {
		return eventDao.addReadCount(event_no);
	}

}
