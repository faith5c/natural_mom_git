package com.nmom.soap.ui.svc;

import java.util.List;

import com.nmom.soap.data.dao.IEvent_reDao;
import com.nmom.soap.data.model.Event_reVo;

public class Event_reConsoleSvc implements IEvent_reSvc {
	
	IEvent_reDao eventReDao;
	
	public void setEventReDao(IEvent_reDao eventReDao) {
		this.eventReDao = eventReDao;
	}

	
	
	@Override
	public List<Event_reVo> getEventRe(int event_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addRe(Event_reVo re) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeRe(int event_re_no) {
		// TODO Auto-generated method stub
		return 0;
	}
	


}
