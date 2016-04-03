package naturalmom.ui.svc;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext ctx = new FileSystemXmlApplicationContext("beans.xml");
		Main main = (Main)ctx.getBean("main");
	}

}
