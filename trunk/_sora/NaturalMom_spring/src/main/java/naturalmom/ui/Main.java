package naturalmom.ui;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import naturalmom.ui.svc.MenuConSvc;

public class Main 
{
	private MenuConSvc menuConSvc;

	public void setMenuConSvc(MenuConSvc menuConSvc) {
		this.menuConSvc = menuConSvc;
	}
	
	public static void main(String[] args)
	{
		ApplicationContext ctx = new ClassPathXmlApplicationContext("myBean.xml");
		Main main = (Main)ctx.getBean("main");
		main.menuConSvc.showMenu();
	}
}
