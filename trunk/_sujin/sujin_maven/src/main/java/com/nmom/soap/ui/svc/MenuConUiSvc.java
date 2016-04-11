package com.nmom.soap.ui.svc;



public class MenuConUiSvc extends ConUiSvc {
	
	private NoticeConUiSvc noticeSvc;
	private OrderConUiSvc orderSvc;
	private OrderManagerConUiSvc orderManagerSvc;
	private SaleStatementConUiSvc saleStatementSvc;
	private OrdererConUiSvc ordererSvc;
	
	public MenuConUiSvc() {}

	
	@Override
	public void showMenu() {
		System.out.println(" 1. MAIN_MENU_NOTICE");
		System.out.println(" 2. MAIN_MENU_ORDER");
		System.out.println(" 3. MAIN_MENU_ORDER_MANAGER");
		System.out.println(" 4. MAIN_MENU_SALESTATEMENT");
		System.out.println(" 5. MAIN_MENU_ORDERER");
		System.out.println(" 6. EXIT");
		System.out.print(" >> ");
	}

	public void execFunctions(int num) {
		switch (num) {
		case MAIN_MENU_NOTICE:
			noticeSvc.show();
			break;
			
		case MAIN_MENU_ORDER:
			orderSvc.show();
			break;
			
		case MAIN_MENU_ORDER_MANAGER:
			orderManagerSvc.show();
			break;
			
		case MAIN_MENU_SALESTATEMENT:
			saleStatementSvc.show();
			break;
			
		case MAIN_MENU_ORDERER:
			ordererSvc.show();
			break;	
			
		case EXIT:
			System.exit(0);
			break;
			
		default:
			System.exit(0);
			break;
		}
		
	}

	


	public void setNoticeSvc(NoticeConUiSvc noticeSvc) {
		this.noticeSvc = noticeSvc;
	}


	public void setOrderSvc(OrderConUiSvc orderSvc) {
		this.orderSvc = orderSvc;
	}


	public void setOrderManagerSvc(OrderManagerConUiSvc orderManagerSvc) {
		this.orderManagerSvc = orderManagerSvc;
	}


	public void setSaleStatementSvc(SaleStatementConUiSvc saleStatementSvc) {
		this.saleStatementSvc = saleStatementSvc;
	}


	public void setOrdererSvc(OrdererConUiSvc ordererSvc) {
		this.ordererSvc = ordererSvc;
	}

	
}
