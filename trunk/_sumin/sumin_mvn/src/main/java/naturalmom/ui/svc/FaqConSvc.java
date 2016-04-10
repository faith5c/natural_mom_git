package naturalmom.ui.svc;

import java.util.List;

import naturalmom.data.dao.IFaqDao;
import naturalmom.data.model.FaqVo;

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
		System.out.println(line2);
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
		System.out.println("12. Exit\n");
	}

	public void show() {
		
		String str = null;
		String strArr[] = null;
		FaqVo fv = null;
		List<FaqVo> flist = null;
		
		showMenu();
		
		int num = checkNumberMinMax(MIN_NUM, MAX_NUM, inputUser());
		
		switch(num){
		case CHOICE_GET_ONE_FAQ:
			System.out.println("INPUT : faq_no");
			str = inputUser();
			
			try{
				fv = faqDao.getOneFaq(Integer.parseInt(str));
				System.out.println(fv);
			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_GET_ALL_FAQ:
			System.out.println("INPUT : start, end");
			try{
				strArr = StrSplitTrim(inputUser());
			
				flist = faqDao.getAllFaq(Integer.parseInt(strArr[0]), Integer.parseInt(strArr[1]));
			
				for(FaqVo f : flist){
					System.out.println(f);
				}

			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_SEARCH_FAQ_TITLE:
			System.out.println("INPUT : keyword, start, end");
			try{
				strArr = StrSplitTrim(inputUser());
			
				flist = faqDao.searchFaqTitle(strArr[0], Integer.parseInt(strArr[1]), Integer.parseInt(strArr[2]));
			
				for(FaqVo f : flist){
					System.out.println(f);
				}

			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_SEARCH_FAQ_CONTENT:
			System.out.println("INPUT : keyword, start, end");
			try{
				strArr = StrSplitTrim(inputUser());
			
				flist = faqDao.searchFaqContent(strArr[0], Integer.parseInt(strArr[1]), Integer.parseInt(strArr[2]));
			
				for(FaqVo f : flist){
					System.out.println(f);
				}

			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_SEARCH_FAQ_TITLE_N_CONTENT:
			System.out.println("INPUT : keyword, start, end");
			try{
				strArr = StrSplitTrim(inputUser());
			
				flist = faqDao.searchFaqTitleNContent(strArr[0], Integer.parseInt(strArr[1]), Integer.parseInt(strArr[2]));
			
				for(FaqVo f : flist){
					System.out.println(f);
				}

			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_ADD_FAQ_BY_FAQ:
			System.out.println("INPUT : faq_title, faq_content, mem_id");
			strArr = StrSplitTrim(inputUser());
			fv = new FaqVo();
			fv.setFaq_title(strArr[0]);
			fv.setFaq_content(strArr[1]);
			fv.setMem_id(strArr[2]);
			if(0<faqDao.addFaq(fv)){
				System.out.println("add success");
			} else {
				System.out.println("add failure");
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_ADD_FAQ:
			System.out.println("INPUT : faq_title, faq_content, mem_id");
			strArr = StrSplitTrim(inputUser());
			if(0<faqDao.addFaq(strArr[0], strArr[1], strArr[2])){
				System.out.println("add success");
			} else {
				System.out.println("add failure");
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_EDIT_FAQ_BY_FAQ:
			System.out.println("INPUT : faq_title, faq_content, faq_no");
			strArr = StrSplitTrim(inputUser());
			fv = new FaqVo();
			fv.setFaq_title(strArr[0]);
			fv.setFaq_content(strArr[1]);
			fv.setFaq_no(Integer.parseInt(strArr[2]));
			if(0<faqDao.editFaq(fv)){
				System.out.println("edit success");
			} else {
				System.out.println("edit failure");
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_EDIT_FAQ:
			System.out.println("INPUT : faq_title, faq_content, faq_no");
			strArr = StrSplitTrim(inputUser());
			if(0<faqDao.editFaq(strArr[0], strArr[1], Integer.parseInt(strArr[2]))){
				System.out.println("edit success");
			} else {
				System.out.println("edit failure");
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_REMOVE_FAQ_BY_FAQ:
			System.out.println("INPUT : faq_no");
			str = inputUser();
			fv = new FaqVo();
			fv.setFaq_no(Integer.parseInt(str));
			
			if(0<faqDao.removeFaq(fv)){
				System.out.println("remove success");
			} else {
				System.out.println("remove failure");
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_REMOVE_FAQ:
			System.out.println("INPUT : faq_no");
			str = inputUser();

			if(0<faqDao.removeFaq(Integer.parseInt(str))){
				System.out.println("remove success");
			} else {
				System.out.println("remove failure");
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_EXIT:
			System.out.println("exit program");
			System.exit(0);
			
		default : 
			this.show();
		}
	}
}