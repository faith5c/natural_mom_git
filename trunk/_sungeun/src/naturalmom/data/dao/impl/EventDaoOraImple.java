package naturalmom.data.dao.impl;

import java.util.List;

import naturalmom.data.dao.IEventDao;
import naturalmom.data.model.EventVo;

public class EventDaoOraImple implements IEventDao {

	@Override
	public List<EventVo> getAllEvents() {
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
