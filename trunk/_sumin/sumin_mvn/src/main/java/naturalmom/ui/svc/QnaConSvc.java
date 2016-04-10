package naturalmom.ui.svc;

import naturalmom.data.dao.IQnaDao;
import naturalmom.data.dao.IQnaReDao;
import naturalmom.data.dao.IVQnaQnareDao;

public class QnaConSvc extends ConSvc{
	
	private final int CHOICE_GET_ONE_QNA = 1;
	private final int CHOICE_GET_ALL_QNA = 2;
	private final int CHOICE_SEARCH_QNA_TITLE = 3;
	private final int CHOICE_SEARCH_QNA_CONTENT = 4;
	private final int CHOICE_SEARCH_QNA_TITLE_N_CONTENT = 5;
	
	private final int CHOICE_SECRET_QNA_PW_CHECK = 6;
	private final int CHOICE_ADD_QNA= 7;
	private final int CHOICE_ADD_QNA_ANSWER = 8;
	private final int CHOICE_EDIT_QNA_BY_QNA = 9;
	private final int CHOICE_EDIT_QNA = 10;
	private final int CHOICE_REMOVE_QNA = 11;
	private final int CHOICE_REMOVE_QNA_BY_REF = 12;
	
	private final int CHOICE_GET_QNARE_BY_QNANO = 13;
	private final int CHOICE_ADD_QNARE_BY_QNARE = 14;
	private final int CHOICE_ADD_QNARE = 15;
	private final int CHOICE_EDIT_QNARE_BY_QNARE = 16;
	private final int CHOICE_EDIT_QNARE = 17;
	private final int CHOICE_REMOVE_QNARE_BY_QNARE = 18;
	private final int CHOICE_REMOVE_QNARE = 19;
	private final int CHOICE_EXIT = 20;
	
	private final int MIN_NUM = CHOICE_GET_ONE_QNA;
	private final int MAX_NUM = CHOICE_EXIT;
	
	IQnaDao qnaDao;
	IQnaReDao qnaReDao;
	IVQnaQnareDao vQnaQnareDao;

	public void setVQnaQnareDao(IVQnaQnareDao vQnaQnareDao) {
		this.vQnaQnareDao = vQnaQnareDao;
	}
	public void setQnaReDao(IQnaReDao qnaReDao) {
		this.qnaReDao = qnaReDao;
	}

	public void setQnaDao(IQnaDao qnaDao) {
		this.qnaDao = qnaDao;
	}

	public void showMenu(){
		System.out.println(line1);
		System.out.println("choice QNA menu");
		System.out.println(line1);
		System.out.println("1. get One Qna");
		System.out.println("2. get All Qna");
		System.out.println("3. search Qna Title");
		System.out.println("4. search Qna Content");
		System.out.println("5. search Qna Title and Content");
		System.out.println(line2);
		
		System.out.println("6. secret Qna Pw Check");
		System.out.println("7. add Qna");
		System.out.println("8. add Qna Answer");
		System.out.println("9. edit Qna By Qna");
		System.out.println("10. edit Qna");
		System.out.println("11. remove Qna");
		System.out.println("12. remove Qna By Ref");
		System.out.println(line2);

		System.out.println("13. get QnaRe By QnaNo");
		System.out.println("14. add QnaRe By QnaRe");
		System.out.println("15. add QnaRe");
		System.out.println("16. edit QnaRe By QnaRe");
		System.out.println("17. edit QnaRe");
		System.out.println("18. remove QnaRe By QnaRe");
		System.out.println("19. remove QnaRe");
		System.out.println("20. Exit");
		System.out.println(line2);
	}
	
	public void show() {
		showMenu();
		
		String str = inputUser();
		int num = checkNumberMinMax(MIN_NUM, MAX_NUM, str);
		
		switch(num){
		case CHOICE_GET_ONE_QNA:
			break;
			
		case CHOICE_GET_ALL_QNA:
			break;
			
		case CHOICE_SEARCH_QNA_TITLE:
			break;
			
		case CHOICE_SEARCH_QNA_CONTENT:
			break;
			
		case CHOICE_SEARCH_QNA_TITLE_N_CONTENT:
			break;
			
		///////////////////////////////////////////////
			
		case CHOICE_SECRET_QNA_PW_CHECK:
			break;
			
		case CHOICE_ADD_QNA:
			break;
			
			
		case CHOICE_ADD_QNA_ANSWER:
			break;
			
			
		case CHOICE_EDIT_QNA_BY_QNA:
			break;
			
			
		case CHOICE_EDIT_QNA:
			break;
			
			
		case CHOICE_REMOVE_QNA:
			break;
			
			
		case CHOICE_REMOVE_QNA_BY_REF:
			break;
			
		//////////////////////////////////////////////
			
		case CHOICE_GET_QNARE_BY_QNANO:
			break;
			
			
		case CHOICE_ADD_QNARE_BY_QNARE:
			break;
			
			
		case CHOICE_ADD_QNARE:
			break;
			
			
		case CHOICE_EDIT_QNARE_BY_QNARE:
			break;
			
			
		case CHOICE_EDIT_QNARE:
			break;
			
			
		case CHOICE_REMOVE_QNARE_BY_QNARE:
			break;
			
			
		case CHOICE_REMOVE_QNARE:
			break;
			
		case CHOICE_EXIT:
			System.out.println("exit");
			System.exit(0);
			
		default : 
			this.show();
		}
	}
}
