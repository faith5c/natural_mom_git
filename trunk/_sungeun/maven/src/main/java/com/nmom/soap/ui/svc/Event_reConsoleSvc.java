package com.nmom.soap.ui.svc;

import java.util.List;

import com.nmom.soap.data.dao.IEvent_reDao;
import com.nmom.soap.data.model.EventVo;
import com.nmom.soap.data.model.Event_reVo;

public class Event_reConsoleSvc implements IEvent_reSvc {
	
	IEvent_reDao eventReDao;
	
	public void setEventReDao(IEvent_reDao eventReDao) {
		this.eventReDao = eventReDao;
	}

	
	@Override
	public List<Event_reVo> getEventRe(int event_no) {
		List<Event_reVo> er_list = eventReDao.getEventRe(event_no);
		System.out.println("#아이디, 내용, 작성일, 리플번호");
		for(Event_reVo e : er_list){
			System.out.println("#" + e.getMem_id()+", "+e.getEvt_re_content()+", "+e.getEvt_re_write_day()+", "+e.getEvent_re_no());
		}
		return null;
	}

	@Override
	public int addRe(Event_reVo re) {
		return eventReDao.addRe(re);
	}

	@Override
	public int removeRe(int event_re_no) {
		return eventReDao.removeRe(event_re_no);
	}
	


}
