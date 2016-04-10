package naturalmom.ui;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import naturalmom.ui.svc.MenuConUiSvc;

public class Main {

	MenuConUiSvc menuSvc;
	
	public void setMenuSvc(MenuConUiSvc menuSvc) {
		this.menuSvc = menuSvc;
	}


	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext ctx = new ClassPathXmlApplicationContext("nm_beans.xml");
		Main main = (Main)ctx.getBean("main");
		main.menuSvc.show();
	}

}
