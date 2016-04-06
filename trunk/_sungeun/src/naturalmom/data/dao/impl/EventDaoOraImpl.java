package naturalmom.data.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import naturalmom.data.dao.IEventDao;
import naturalmom.data.dao.IMemberDao;
import naturalmom.data.model.EventVo;
import naturalmom.data.model.MemberVo;

public class EventDaoOraImpl extends NamedParameterJdbcDaoSupport implements IEventDao {
	
	NamedParameterJdbcTemplate nameTemplate;
	JdbcTemplate jtem;
	
	// SQL
	private final String SQL_EVENT_SELECT_ALL ="SELECT * FROM TB_EVENT";
	private final String SQL_EVENT_SELECT_LIST ="SELECT * FROM NMDB.V_EVENT_LIST";
	
	
	// Method
	@Override			// 모든 이벤트	
	public List<EventVo> getAllEvents() {
		jtem =getJdbcTemplate();
		
		return jtem.query(SQL_EVENT_SELECT_ALL,
				new BeanPropertyRowMapper<EventVo>(EventVo.class));
	}
	
	@Override			// 이벤트 리스트
	public List<EventVo> getEventList() {
		jtem = getJdbcTemplate();
		return jtem.query(SQL_EVENT_SELECT_LIST,
						new Object[]{}, new RowMapper<EventVo>() {
							@Override
							public EventVo mapRow(ResultSet rs, int arg1) throws SQLException {
								EventVo event_list = new EventVo();
								event_list.setEvent_no(rs.getInt("event_no") );
								event_list.setEvt_title(rs.getString("evt_title") );
								event_list.setMem_id(rs.getString("mem_id") );
								event_list.setEvt_write_day(rs.getDate("evt_write_day") );
								event_list.setEvt_hits(rs.getInt("evt_hits") );
								event_list.setCount_re(rs.getInt("count_re") );
								
								return event_list;	}
							});
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
