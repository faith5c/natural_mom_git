package naturalmom.ui.svc;

public class MenuConSvc extends ConSvc
{	
	public static final int PRODUCT = 1;
	public static final int REVIEW = 2;
	public static final int V_PRODUCT_DELETED = 3;
	public static final int V_PRODUCT_NANAGE = 4;
	public static final int V_RANK_SELLS = 5;
	public static final int V_REVIEW_ADMIN = 6;
	public static final int V_REVIEW_FRONT = 7;
	
	private ProductSvc productSvc;
	private ReviewSvc reviewSvc;
	private VProduct_DeletedSvc vProduct_deletedSvc;
	private VProduct_ManageSvc vProduct_manageSvc;
	private VRank_SellsSvc vRank_sellsSvc;
	private VReview_AdminSvc vReview_adminSvc;
	private VReview_FrontSvc vReview_frontSvc;
	
	public MenuConSvc() {}

	public void showMenu() {
		System.out.println(" 1. PRODUCT");
		System.out.println(" 2. REVIEW");
		System.out.println(" 3. V_PRODUCT_DELETED");
		System.out.println(" 4. V_PRODUCT_NANAGE");
		System.out.println(" 5. V_RANK_SELLS");
		System.out.println(" 6. V_REVIEW_ADMIN");
		System.out.println(" 7. V_REVIEW_FRONT");
		System.out.println(" 9. EXIT");
		System.out.print(" >> ");
		execFunctions(inputNumber(inputUser()));
	}

	public void execFunctions(int num) {
		switch (num) {
		case PRODUCT:
			productSvc.showMenu();
			break;
						
		case REVIEW:
			reviewSvc.showMenu();
			break;
			
		case V_PRODUCT_DELETED:
			vProduct_deletedSvc.showMenu();
			break;
			
		case V_PRODUCT_NANAGE:
			vProduct_manageSvc.showMenu();
			break;
			
		case V_RANK_SELLS:
			vRank_sellsSvc.showMenu();
			break;
			
		case V_REVIEW_ADMIN:
			vReview_adminSvc.showMenu();
			break;
			
		case V_REVIEW_FRONT:
			vReview_frontSvc.showMenu();
			break;
			
		case EXIT:
			System.exit(0);
			break;
						
		default:
			System.exit(0);
			break;
		}
	}
	
	public ProductSvc getProductSvc() {
		return productSvc;
	}

	public void setProductSvc(ProductSvc productSvc) {
		this.productSvc = productSvc;
	}

	public void setReviewSvc(ReviewSvc reviewSvc) {
		this.reviewSvc = reviewSvc;
	}
	
	public void setVProduct_deletedSvc(VProduct_DeletedSvc vProduct_deletedSvc) {
		this.vProduct_deletedSvc = vProduct_deletedSvc;
	}

	public void setVProduct_manageSvc(VProduct_ManageSvc vProduct_manageSvc) {
		this.vProduct_manageSvc = vProduct_manageSvc;
	}

	public void setVRank_sellsSvc(VRank_SellsSvc vRank_sellsSvc) {
		this.vRank_sellsSvc = vRank_sellsSvc;
	}

	public void setVReview_adminSvc(VReview_AdminSvc vReview_adminSvc) {
		this.vReview_adminSvc = vReview_adminSvc;
	}

	public void setVReview_frontSvc(VReview_FrontSvc vReview_frontSvc) {
		this.vReview_frontSvc = vReview_frontSvc;
	}
}
