package dao;

import java.util.List;

import model.Event_re;

public interface IEvent_reDao {
	
	// 댓글 리스트
	List<Event_re> selectAllRe(int event_no);
	
	// 댓글 쓰기
	int insertRe(Event_re re);
	// 댓글 삭제
	int deleteRe(Event_re re);
}
