package naturalmom.ui.svc;

import naturalmom.data.dao.IFaqDao;

public class FaqConSvc extends ConSvc{
	
	private final int CHOICE_GET_ONE_FAQ = 1;
	private final int CHOICE_GET_ALL_FAQ = 2;
	private final int CHOICE_SEARCH_FAQ_TITLE = 3;
	private final int CHOICE_SEARCH_FAQ_CONTENT = 4;
	private final int CHOICE_SEARCH_FAQ_TITLE_N_CONTENT = 5;
	private final int CHOICE_ADD_FAQ_BY_FAQ = 6;
	private final int CHOICE_ADD_FAQ = 7;
	private final int CHOICE_EDIT_FAQ_BY_FAQ = 8;
	private final int CHOICE_EDIT_FAQ = 9;
	private final int CHOICE_REMOVE_FAQ_BY_FAQ = 10;
	private final int CHOICE_REMOVE_FAQ = 11;
	private final int CHOICE_EXIT= 12;
	
	private final int MIN_NUM = CHOICE_GET_ONE_FAQ;
	private final int MAX_NUM = CHOICE_EXIT;
	
	IFaqDao faqDao;

	public void setFaqDao(IFaqDao faqDao) {
		this.faqDao = faqDao;
	}

	public void showMenu(){
		System.out.println(line1);
		System.out.println("choice FAQ menu");
		System.out.println(line1);
		System.out.println("1. get One Faq");
		System.out.println("2. get All Faq");
		System.out.println("3. search Faq Title");
		System.out.println("4. search Faq Content");
		System.out.println("5. search Faq Title and Content");
		System.out.println("6. add Faq By Faq");
		System.out.println("7. add Faq");
		System.out.println("8. edit Faq By Faq");
		System.out.println("9. edit Faq");
		System.out.println("10. remove Faq By Faq");
		System.out.println("11. remove Faq");
		System.out.println("12. Exit");
		System.out.println(line2);
	}

	public void show() {
		showMenu();
		
		String str = inputUser();
		int num = checkNumberMinMax(MIN_NUM, MAX_NUM, str);
		
		switch(num){
		case CHOICE_GET_ONE_FAQ:
			break;
			
		case CHOICE_GET_ALL_FAQ:
			break;
			
		case CHOICE_SEARCH_FAQ_TITLE:
			break;
			
		case CHOICE_SEARCH_FAQ_CONTENT:
			break;
			
		case CHOICE_SEARCH_FAQ_TITLE_N_CONTENT:
			break;
			
		case CHOICE_ADD_FAQ_BY_FAQ:
			break;
			
		case CHOICE_ADD_FAQ:
			break;
			
		case CHOICE_EDIT_FAQ_BY_FAQ:
			break;
			
		case CHOICE_EDIT_FAQ:
			break;
			
		case CHOICE_REMOVE_FAQ_BY_FAQ:
			break;
			
		case CHOICE_REMOVE_FAQ:
			break;
			
		case CHOICE_EXIT:
			System.out.println("exit");
			System.exit(0);
			
		default : 
			this.show();
		}
	}
}