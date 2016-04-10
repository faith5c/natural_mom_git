package naturalmom.ui;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import naturalmom.ui.svc.IMainUI;
import naturalmom.ui.svc.MainUIConSvc;

public class NmMain {

	private IMainUI mainUi;
	
	public void setMainUi(MainUIConSvc mainUi){
		this.mainUi = mainUi;
	}
	
	public static void main(String[] args) {
//		ApplicationContext ctx = new FileSystemXmlApplicationContext("nm_beans.xml");
		ApplicationContext ctx = new ClassPathXmlApplicationContext("nm_beans.xml");
		NmMain main = (NmMain)ctx.getBean("main");
		main.mainUi.show();
	}

}
