package naturalmom.ui.svc;

public class MenuConSvc extends ConUiSvc {
	
	private NoticeConSvc noticeSvc;
	
	public MenuConSvc() {}

	
	@Override
	public void showMenu() {
		System.out.println(" 1. MAIN_MENU_NOTICE");
		System.out.println(" 2. MAIN_MENU_ORDER");
		System.out.println(" 3. MAIN_MENU_ORDER_MANAGER");
		System.out.println(" 4. MAIN_MENU_SALESTATEMENT");
		System.out.println(" 6. EXIT");
		System.out.print(" >> ");
	}

	public void execFunctions(int num) {
		switch (num) {
		case MAIN_MENU_NOTICE:
			noticeSvc.show();
			break;
			
		case MAIN_MENU_ORDER:
			
			break;
			
		case MAIN_MENU_ORDER_MANAGER:
			
			break;
			
		case MAIN_MENU_SALESTATEMENT:
			
			break;
			
		case EXIT:
			System.exit(0);
			break;
			
		default:
			System.exit(0);
			break;
		}
		
	}


	public void setNoticeSvc(NoticeConSvc noticeSvc) {
		this.noticeSvc = noticeSvc;
	}
	
	
	
}
