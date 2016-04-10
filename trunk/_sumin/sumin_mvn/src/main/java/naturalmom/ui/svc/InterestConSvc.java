package naturalmom.ui.svc;

import naturalmom.data.dao.IInterestDao;
import naturalmom.data.dao.IVInterestProductDao;

public class InterestConSvc extends ConSvc{

	private final int CHOICE_GET_ALL_INTEREST = 1;
	private final int CHOICE_GET_INTEREST_BY_MEM_ID = 2;
	
	private final int CHOICE_DUPLICATION_INTEREST_PRODUCT_CHECK = 3;
	private final int CHOICE_ADD_INTEREST_PRODUCT_BY_INTEREST = 4;
	private final int CHOICE_ADD_INTEREST_PRODUCT = 5;
	private final int CHOICE_REMOVE_INTEREST_PRODUCT_BY_INTEREST = 6;
	private final int CHOICE_REMOVE_INTEREST_PRODUCT = 7;
	private final int CHOICE_EXIT = 8;
	
	private final int MIN_NUM = CHOICE_GET_ALL_INTEREST;
	private final int MAX_NUM = CHOICE_EXIT;
	
	IInterestDao interestDao;
	IVInterestProductDao vInterestDao;

	public void setVInterestDao(IVInterestProductDao vInterestDao) {
		this.vInterestDao = vInterestDao;
	}
	public void setInterestDao(IInterestDao interestDao) {
		this.interestDao = interestDao;
	}

	public void showMenu(){
		System.out.println(line1);
		System.out.println("choice INTEREST menu");
		System.out.println(line1);
		System.out.println("1. get All Interest");
		System.out.println("2. get Interest By MemId");
		System.out.println(line2);
		System.out.println("3. duplication Interest Product Check");
		System.out.println("4. add Interest Product By Interest");
		System.out.println("5. add Interest Product");
		System.out.println("6. remove Interest Product By Interest");
		System.out.println("7. remove Interest Product");
		System.out.println("8. Exit");
		System.out.println(line2);
	}
	
	public void show() {
		showMenu();
		
		String str = inputUser();
		int num = checkNumberMinMax(MIN_NUM, MAX_NUM, str);
		
		switch(num){
		case CHOICE_GET_ALL_INTEREST:
			break;
			
		case CHOICE_GET_INTEREST_BY_MEM_ID:
			break;
			
		case CHOICE_DUPLICATION_INTEREST_PRODUCT_CHECK:
			break;
			
		case CHOICE_ADD_INTEREST_PRODUCT_BY_INTEREST:
			break;
			
		case CHOICE_ADD_INTEREST_PRODUCT:
			break;
			
		case CHOICE_REMOVE_INTEREST_PRODUCT_BY_INTEREST:
			break;
			
		case CHOICE_REMOVE_INTEREST_PRODUCT:
			break;
			
		case CHOICE_EXIT:
			System.out.println("exit");
			System.exit(0);
			
		default : 
			this.show();
		}
	}
}
