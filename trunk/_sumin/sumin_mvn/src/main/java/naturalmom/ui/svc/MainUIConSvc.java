package naturalmom.ui.svc;

public class MainUIConSvc extends ConSvc implements IMainUI{
	private final int CHOICE_CART = 1;
	private final int CHOICE_CATEGORY = 2;
	private final int CHOICE_FAQ = 3;
	private final int CHOICE_INTEREST = 4;
	private final int CHOICE_PRODUCT = 5;
	private final int CHOICE_QNA = 6;
	private final int CHOICE_EXIT = 7;

	private final int MIN_NUM = CHOICE_CART;
	private final int MAX_NUM = CHOICE_EXIT;
	
	private CartConSvc cartSvc;
	private CategoryConSvc categorySvc;
	private FaqConSvc faqSvc;
	private InterestConSvc interestSvc;
	private ProductConSvc productSvc;
	private QnaConSvc qnaSvc;

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
	
	public void showMenu(){
		System.out.println(line1);
		System.out.println("choice MAIN menu");
		System.out.println(line2);
		System.out.println("1. Cart");
		System.out.println("2. Category");
		System.out.println("3. Faq");
		System.out.println("4. Interest");
		System.out.println("5. Product");
		System.out.println("6. Qna");
		System.out.println("7. Exit\n");
	}
	
	public void show() {
		showMenu();
	
		String str = inputUser();
		int num = checkNumberMinMax(MIN_NUM, MAX_NUM, str);
		
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
			
		case CHOICE_EXIT:
			System.out.println("exit program");
			System.exit(0);
			
		default : 
			this.show();
		}
	}
}
