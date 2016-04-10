package naturalmom.ui.svc;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import naturalmom.data.dao.ICartDao;
import naturalmom.data.dao.ICategoryDao;
import naturalmom.data.dao.IFaqDao;
import naturalmom.data.dao.IInterestDao;
import naturalmom.data.dao.IProductDao;
import naturalmom.data.dao.IQnaDao;
import naturalmom.data.dao.IQnaReDao;
import naturalmom.data.dao.IVCartProductDao;
import naturalmom.data.dao.IVInterestProductDao;
import naturalmom.data.dao.IVQnaQnareDao;

public class MainUIConSvc extends ConSvc implements IMainUI{
	private final int min = 1;
	private final int max = 11;
	
	private final int CHOICE_CART = 1;
	private final int CHOICE_CATEGORY = 2;
	private final int CHOICE_FAQ = 3;
	private final int CHOICE_INTEREST = 4;
	private final int CHOICE_PRODUCT = 5;
	private final int CHOICE_QNA = 6;
	private final int CHOICE_QNARE = 7;
	private final int CHOICE_V_CART_PRODUCT = 8;
	private final int CHOICE_V_INTEREST_PRODUCT = 9;
	private final int CHOICE_V_QNA_QNARE = 10;
	private final int CHOICE_EXIT = 11;
	
	private CartConSvc cartSvc;
	private CategoryConSvc categorySvc;
	private FaqConSvc faqSvc;
	private InterestConSvc interestSvc;
	private ProductConSvc productSvc;
	private QnaConSvc qnaSvc;
	private QnaReConSvc qnaReSvc;
	private VCartProductConSvc vCartProductSvc;
	private VInterestProductConSvc vInterestProductSvc;
	private VQnaQnareConSvc vQnaQnareSvc;

	public void setCartSvc(CartConSvc cartSvc) {
		this.cartSvc = cartSvc;
	}

	public void setCategorySvc(CategoryConSvc categorySvc) {
		this.categorySvc = categorySvc;
	}

	public void setFaqSvc(FaqConSvc faqSvc) {
		this.faqSvc = faqSvc;
	}

	public void setInterestSvc(InterestConSvc interestSvc) {
		this.interestSvc = interestSvc;
	}

	public void setProductSvc(ProductConSvc productSvc) {
		this.productSvc = productSvc;
	}

	public void setQnaSvc(QnaConSvc qnaSvc) {
		this.qnaSvc = qnaSvc;
	}

	public void setQnaReSvc(QnaReConSvc qnaReSvc) {
		this.qnaReSvc = qnaReSvc;
	}

	public void setVCartProductSvc(VCartProductConSvc vCartProductSvc) {
		this.vCartProductSvc = vCartProductSvc;
	}

	public void setVInterestProductSvc(VInterestProductConSvc vInterestProductSvc) {
		this.vInterestProductSvc = vInterestProductSvc;
	}

	public void setVQnaQnareSvc(VQnaQnareConSvc vQnaQnareSvc) {
		this.vQnaQnareSvc = vQnaQnareSvc;
	}
	
	public void showMenu(){
		System.out.println(line1);
		System.out.println("select menu");
		System.out.println(line1);
		System.out.println("1. Cart");
		System.out.println("2. Category");
		System.out.println("3. Faq");
		System.out.println("4. Interest");
		System.out.println("5. Product");
		System.out.println("6. Qna");
		System.out.println("7. Qna Re");
		System.out.println("8. View Cart and Product");
		System.out.println("9. View Interest and Product");
		System.out.println("10. View Qna and Qna Re");
		System.out.println("11. Exit");
		System.out.println(line2);
	}
	
	public void show() {
		showMenu();
	
		String str = inputUser();
		int num = checkNumberMinMax(min, max, str);
		
		switch(num){
		case CHOICE_CART:
			cartSvc.show();
			break;
			
		case CHOICE_CATEGORY:
			categorySvc.show();
			break;
			
		case CHOICE_FAQ:
			faqSvc.show();
			break;
			
		case CHOICE_INTEREST:
			interestSvc.show();
			break;
			
		case CHOICE_PRODUCT:
			productSvc.show();
			break;
			
		case CHOICE_QNA:
			qnaSvc.show();
			break;
			
		case CHOICE_QNARE:
			qnaReSvc.show();
			break;
			
		case CHOICE_V_CART_PRODUCT:
			vCartProductSvc.show();
			break;
			
		case CHOICE_V_INTEREST_PRODUCT:
			vInterestProductSvc.show();
			break;
			
		case CHOICE_V_QNA_QNARE:
			vQnaQnareSvc.show();
			break;
			
		case CHOICE_EXIT:
			System.out.println("exit");
			System.exit(0);
			
		default : 
			this.show();
		}
	}
}
