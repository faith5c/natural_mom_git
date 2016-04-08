package naturalmom.ui.svc;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class MenuConSvc extends ConSvc
{	
	public static final int PRODUCT = 1;
	public static final int REVIEW = 2;
	public static final int V_PRODUCT_DELETED = 3;
	public static final int V_PRODUCT_NANAGE = 4;
	public static final int V_RANK_SELLS = 5;
	public static final int V_REVIEW_ADMIN = 6;
	public static final int V_REVIEW_FRONT = 7;
	public static final int EXIT = 9;
	
	private ProductSvc productSvc;
	private ReviewSvc reviewSvc;
	private VProduct_DeletedSvc vProduct_deletedSvc;
	private VProduct_ManageSvc vProduct_manageSvc;
	private VRank_SellsSvc vRank_sellsSvc;
	private VReview_AdminSvc vReview_adminSvc;
	private VReview_FrontSvc vReivew_frontSvc;
	
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
			break;
						
		case REVIEW:
			
			break;
			
		case V_PRODUCT_DELETED:
			
			break;
			
		case V_PRODUCT_NANAGE:
			break;
			
		case V_RANK_SELLS:
			break;
			
		case V_REVIEW_ADMIN:
			break;
			
		case V_REVIEW_FRONT:
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

	public ReviewSvc getReviewSvc() {
		return reviewSvc;
	}

	public void setReviewSvc(ReviewSvc reviewSvc) {
		this.reviewSvc = reviewSvc;
	}

	public VProduct_DeletedSvc getvProduct_deletedSvc() {
		return vProduct_deletedSvc;
	}

	public void setvProduct_deletedSvc(VProduct_DeletedSvc vProduct_deletedSvc) {
		this.vProduct_deletedSvc = vProduct_deletedSvc;
	}

	public VProduct_ManageSvc getvProduct_manageSvc() {
		return vProduct_manageSvc;
	}

	public void setvProduct_manageSvc(VProduct_ManageSvc vProduct_manageSvc) {
		this.vProduct_manageSvc = vProduct_manageSvc;
	}

	public VRank_SellsSvc getvRank_sellsSvc() {
		return vRank_sellsSvc;
	}

	public void setvRank_sellsSvc(VRank_SellsSvc vRank_sellsSvc) {
		this.vRank_sellsSvc = vRank_sellsSvc;
	}

	public VReview_AdminSvc getvReview_adminSvc() {
		return vReview_adminSvc;
	}

	public void setvReview_adminSvc(VReview_AdminSvc vReview_adminSvc) {
		this.vReview_adminSvc = vReview_adminSvc;
	}

	public VReview_FrontSvc getvReivew_frontSvc() {
		return vReivew_frontSvc;
	}

	public void setvReivew_frontSvc(VReview_FrontSvc vReivew_frontSvc) {
		this.vReivew_frontSvc = vReivew_frontSvc;
	}
}
