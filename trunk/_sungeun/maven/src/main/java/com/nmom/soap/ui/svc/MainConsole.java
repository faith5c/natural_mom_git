package com.nmom.soap.ui.svc;


import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.nmom.soap.data.model.EventVo;

public class MainConsole {
	
	EventConsoleSvc eventSvc;
	Event_reConsoleSvc eventReSvc;
	
	
	// DI setter
	public void setEventSvc(EventConsoleSvc eventSvc) {
		this.eventSvc = eventSvc;
	}
	public void setEventReSvc(Event_reConsoleSvc eventReSvc) {
		this.eventReSvc = eventReSvc;
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
		
		// EventReSVC
		
	}
}
