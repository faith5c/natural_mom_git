package com.nmom.soap.ui.svc;

import java.util.Date;
import java.util.List;

import com.nmom.soap.data.dao.IEventDao;
import com.nmom.soap.data.model.EventVo;

public class EventConsoleSvc implements IEventSvc{
	
	IEventDao eventDao;
	
	// DI
	public void setEventDao(IEventDao eventDao) {
		this.eventDao = eventDao;
	}
	
	// Override Method
	@Override
	public void getAllEvents() {
		List<EventVo> e_list = eventDao.getAllEvents();
		System.out.println("#번호, 제목, 아이디, 작성일, 조회, 삭제여부, 작성자");
		for(EventVo e : e_list){
			System.out.println("#" +e.getEvent_no() +", "+ e.getEvt_title()+", "
					+e.getBoard_id()+", "+e.getEvt_write_day()+", "+e.getEvt_hits()+", "+e.getEvt_del_check()+", "+e.getMem_id());
			System.out.println(e.getEvt_content());
		}
	}

	@Override
	public void getEventList() {
		List<EventVo> e_list = eventDao.getEventList();
		System.out.println("#번호, 제목, 아이디, 작성일, 조회, 리플");
		for(EventVo e : e_list){
			System.out.println("#" +e.getEvent_no() +", "+ e.getEvt_title()+", "
					+e.getBoard_id()+", "+e.getEvt_write_day()+", "+e.getEvt_hits()+", "+e.getCount_re());
		}
	}
	
	@Override
	public List<EventVo> getEventList(int start, int end) {
		List<EventVo> e_list = eventDao.getEventList(start, end);
		System.out.println("#번호, 제목, 아이디, 작성일, 조회, 리플");
		for(EventVo e : e_list){
			System.out.println("#" +e.getEvt_rnum() +", "+ e.getEvt_title()+", "
					+e.getBoard_id()+", "+e.getEvt_write_day()+", "+e.getEvt_hits()+", "+e.getCount_re());
		}
		return null;
	}

	
	@Override
	public EventVo getOneEvent(int event_no) {
		EventVo e = eventDao.getOneEvent(event_no);
		System.out.println("#번호, 제목, 아이디, 작성일, 조회, 리플");
		System.out.println("#" +e.getEvent_no() +", "+ e.getEvt_title()+", "
				+e.getBoard_id()+", "+e.getEvt_write_day()+", "+e.getEvt_hits()+", "+e.getEvt_del_check()+", "+e.getMem_id());
		System.out.println(e.getEvt_content());
		
		return eventDao.getOneEvent(event_no);
	}

	@Override
	public List<EventVo> getEvents_by_title(String search) {
		List<EventVo> e_list = eventDao.getEvents_by_title(search);
		System.out.println("#번호, 제목, 아이디, 작성일, 조회, 리플");
		for(EventVo e : e_list){
			System.out.println("#" +e.getEvent_no() +", "+ e.getEvt_title()+", "
					+e.getBoard_id()+", "+e.getEvt_write_day()+", "+e.getEvt_hits()+", "+e.getCount_re());
		}
		return eventDao.getEvents_by_title(search);
	}

	@Override
	public List<EventVo> getEvents_by_content(String search) {
		List<EventVo> e_list = eventDao.getEvents_by_content(search);
		System.out.println("#번호, 제목, 아이디, 작성일, 조회, 리플");
		for(EventVo e : e_list){
			System.out.println("#" +e.getEvent_no() +", "+ e.getEvt_title()+", "
					+e.getBoard_id()+", "+e.getEvt_write_day()+", "+e.getEvt_hits()+", "+e.getCount_re());
		}
		return eventDao.getEvents_by_content(search);
	}

	@Override
	public List<EventVo> getEvents_by_title_n_content(String search) {
		List<EventVo> e_list = eventDao.getEvents_by_title_n_content(search);
		System.out.println("#번호, 제목, 아이디, 작성일, 조회, 리플");
		for(EventVo e : e_list){
			System.out.println("#" +e.getEvent_no() +", "+ e.getEvt_title()+", "
					+e.getBoard_id()+", "+e.getEvt_write_day()+", "+e.getEvt_hits()+", "+e.getCount_re());
		}
		return eventDao.getEvents_by_title_n_content(search);
	}

	@Override
	public int addEvent(EventVo event) {
		return eventDao.addEvent(event);
	}

	@Override
	public int removeEvent(int event_no) {
		return eventDao.removeEvent(event_no);
	}

	@Override
	public int editEvent(EventVo event) {
		return eventDao.editEvent(event);
	}


}
