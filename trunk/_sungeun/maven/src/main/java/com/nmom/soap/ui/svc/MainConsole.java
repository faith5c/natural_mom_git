package com.nmom.soap.ui.svc;


import java.sql.Types;
import java.util.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.nmom.soap.data.model.EventVo;
import com.nmom.soap.data.model.Event_reVo;
import com.nmom.soap.data.model.MemberVo;

public class MainConsole {
	
	IEventSvc eventSvc;
	IEvent_reSvc eventReSvc;
	IMemberSvc memberSvc;
	IBoardAccessSvc boardAccessSvc;
	
	
	
	// DI setter
	public void setEventSvc(IEventSvc eventSvc) {
		this.eventSvc = eventSvc;
	}
	public void setEventReSvc(IEvent_reSvc eventReSvc) {
		this.eventReSvc = eventReSvc;
	}
	public void setMemberSvc(IMemberSvc memberSvc) {
		this.memberSvc = memberSvc;
	}
	public void setBoardAccessSvc(IBoardAccessSvc boardAccessSvc) {
		this.boardAccessSvc = boardAccessSvc;
	}
	

	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext ctx = new ClassPathXmlApplicationContext("nm_beans.xml");
		MainConsole main = (MainConsole)ctx.getBean("main");
		
		// EventSvc
//		main.eventSvc.getEventList();
//		main.eventSvc.getAllEvents();
//		main.eventSvc.getOneEvent(1);
//		main.eventSvc.getEvents_by_title("자연");
//		main.eventSvc.getEvents_by_content("피부");
//		main.eventSvc.getEvents_by_title_n_content("자연");
//		System.out.println(main.eventSvc.addEvent(new EventVo(0, "이벤트 참여합니다", null, 0, "제 뽀얘진 얼굴좀 보세요 완전짱이죠 <br> 생긴게 이벤트 인증임", "soomin", 0)));
//		System.out.println(main.eventSvc.removeEvent(6));
//		System.out.println(main.eventSvc.editEvent(new EventVo(6, "이벤트 참여합니다", null, 0, "제 뽀얘진 얼굴좀 보세요 완전짱이죠 <br> 생긴게 이벤트 인증임<br>알겠니?", "soomin", 0)));
		
		// EventReSvc
//		main.eventReSvc.getEventRe(2);
//		System.out.println(main.eventReSvc.addRe(new Event_reVo(0, "새로 댓글을 쓰는 나는 좋은 고갱님", null, 2, "soomin")));
//		System.out.println(main.eventReSvc.removeRe(8));
		
		// MemberSvc
//		main.memberSvc.getOneMember("admin01");
//		main.memberSvc.getOneMember("자연맘", "sseun0402@hanmail.net");
//		System.out.println(main.memberSvc.checkId("soomin"));
//		System.out.println(main.memberSvc.addMember(new MemberVo
//				("sungeun", "tjddms", "신성은", "010-7473-2442", "12345", "경기도 성남시 수정구 성은방", "sungeun@natural.com", new Date(1990, 4-1, 2), 2)));	
//		System.out.println(main.memberSvc.editMemberLevel("sungeun", 1));
//		System.out.println(main.memberSvc.removeMember("sungeun"));
//		System.out.println(main.memberSvc.editMember(new MemberVo
//				("sungeun", "hi", null, "010-111-1111", "1111", "경기도 성남시 중원구 거북거북", "sungeun@email.com", new Date(1990, 4-1, 2), 2)));
//		main.memberSvc.getAllMember();
//		main.memberSvc.getMembersByCondition(id, name, phone, email, birth, gender, level);
//		main.memberSvc.getMembersByCondition("s", null, null, null, null, 0, 0);
		
		
		// BoardAccessSvc
//		main.boardAccessSvc.getAccess(1, "soomin");
		main.boardAccessSvc.getAdminAccess(1);
	}
}



