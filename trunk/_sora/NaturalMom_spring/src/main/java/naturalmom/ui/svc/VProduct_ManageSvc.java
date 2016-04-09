package naturalmom.ui.svc;

import java.util.List;

import naturalmom.data.dao.impl.VProduct_ManageDaoOraImpl;
import naturalmom.data.model.VProduct_DeletedVo;
import naturalmom.data.model.VProduct_ManageVo;

public class VProduct_ManageSvc extends ConSvc
{
	// 상품 번호 오름차순 정렬
	private final int GET_ALL_BY_PRODUCT_NO_ASC = 1;
	// 상품 번호 내림차순 정렬
	private final int GET_ALL_BY_PRODUCT_NO_DESC = 2;
	// 카테고리 이름 오름차순 정렬
	private final int GET_ALL_BY_CATEGORY_NM_ASC = 3;
	// 카테고리 이름 내림차순 정렬
	private final int GET_ALL_BY_CATEGORY_NM_DESC = 4;
	// 상품명 오름차순 정렬
	private final int GET_ALL_BY_PRODUCT_NAME_ASC = 5;
	// 상품명 내림차순 정렬
	private final int GET_ALL_BY_PRODUCT_NAME_DESC = 6;
	// 판매가격 오름차순 정렬
	private final int GET_ALL_BY_SELLING_PRICE_ASC = 7;
	// 판매가격 내림차순 정렬
	private final int GET_ALL_BY_SELLING_PRICE_DESC = 8;
	// 재고 오름차순 정렬
	private final int GET_ALL_BY_STOCK_ASC = 10;
	// 재고 내림차순 정렬
	private final int GET_ALL_BY_STOCK_DESC = 11;
	// 진열상태 오름차순 정렬
	private final int GET_ALL_BY_DISPLAY_STATE_ASC = 12;
	// 진열상태 내림차순 정렬
	private final int GET_ALL_BY_DISPLAY_STATE_DESC = 13;
	// 판매상태 오름차순 정렬
	private final int GET_ALL_BY_SALE_STATE_ASC = 14;
	// 판매상태 내림차순 정렬
	private final int GET_ALL_BY_SALE_STATE_DESC = 15;
	// 총 판매량 오름차순 정렬
	private final int GET_ALL_BY_ALL_SELLS_ASC = 16;
	// 총 판매량 내림차순 정렬
	private final int GET_ALL_BY_ALL_SELLS_DESC = 17;
	
	private VProduct_ManageDaoOraImpl mngDao;

	public void setMngDao(VProduct_ManageDaoOraImpl mngDao) 
	{
		this.mngDao = mngDao;
	}
	
	@Override
	public void showMenu() 
	{
		System.out.println("1. GET_ALL_BY_PRODUCT_NO_ASC");
		System.out.println("2. GET_ALL_BY_PRODUCT_NO_DESC");
		System.out.println("3. GET_ALL_BY_CATEGORY_NM_ASC");
		System.out.println("4. GET_ALL_BY_CATEGORY_NM_DESC");
		System.out.println("5. GET_ALL_BY_PRODUCT_NAME_ASC");
		System.out.println("6. GET_ALL_BY_PRODUCT_NAME_DESC");
		System.out.println("7. GET_ALL_BY_SELLING_PRICE_ASC");
		System.out.println("8. GET_ALL_BY_SELLING_PRICE_DESC");
		System.out.println("10. GET_ALL_BY_STOCK_ASC");
		System.out.println("11. GET_ALL_BY_STOCK_DESC");
		System.out.println("12. GET_ALL_BY_DISPLAY_STATE_ASC");
		System.out.println("13. GET_ALL_BY_DISPLAY_STATE_DESC");
		System.out.println("14. GET_ALL_BY_SALE_STATE_ASC");
		System.out.println("15. GET_ALL_BY_SALE_STATE_DESC");
		System.out.println("16. GET_ALL_BY_ALL_SELLS_ASC");
		System.out.println("17. GET_ALL_BY_ALL_SELLS_DESC");
		System.out.println("9. EXIT");
		System.out.print(" >> ");
		execFunctions(inputNumber(inputUser()));
	}
	
	@Override
	public void execFunctions(int num) 
	{
		switch(num)
		{
		case GET_ALL_BY_PRODUCT_NO_ASC:
			showAllList(mngDao.getAllProduct_by_product_no(ASC));
			break;
		
		case GET_ALL_BY_PRODUCT_NO_DESC:
			showAllList(mngDao.getAllProduct_by_product_no(DESC));
			break;
		
		case GET_ALL_BY_CATEGORY_NM_ASC:
			showAllList(mngDao.getAllProduct_by_category_nm(ASC));
			break;
		
		case GET_ALL_BY_CATEGORY_NM_DESC:
			showAllList(mngDao.getAllProduct_by_category_nm(DESC));
			break;
		
		case GET_ALL_BY_PRODUCT_NAME_ASC:
			showAllList(mngDao.getAllProduct_by_product_name(ASC));
			break;
		
		case GET_ALL_BY_PRODUCT_NAME_DESC:
			showAllList(mngDao.getAllProduct_by_product_name(DESC));
			break;
		
		case GET_ALL_BY_SELLING_PRICE_ASC:
			showAllList(mngDao.getAllProduct_by_selling_price(ASC));
			break;
		
		case GET_ALL_BY_SELLING_PRICE_DESC:
			showAllList(mngDao.getAllProduct_by_selling_price(DESC));
			break;
		
		case GET_ALL_BY_STOCK_ASC:
			showAllList(mngDao.getAllProduct_by_stock(ASC));
			break;
		
		case GET_ALL_BY_STOCK_DESC:
			showAllList(mngDao.getAllProduct_by_stock(DESC));
			break;
		
		case GET_ALL_BY_DISPLAY_STATE_ASC:
			showAllList(mngDao.getAllProduct_by_display_state(ASC));
			break;
		
		case GET_ALL_BY_DISPLAY_STATE_DESC:
			showAllList(mngDao.getAllProduct_by_display_state(DESC));
			break;
		
		case GET_ALL_BY_SALE_STATE_ASC:
			showAllList(mngDao.getAllProduct_by_sale_state(ASC));
			break;
		
		case GET_ALL_BY_SALE_STATE_DESC:
			showAllList(mngDao.getAllProduct_by_sale_state(DESC));
			break;
		
		case GET_ALL_BY_ALL_SELLS_ASC:
			showAllList(mngDao.getAllProduct_by_all_sells(ASC));
			break;
		
		case GET_ALL_BY_ALL_SELLS_DESC:
			showAllList(mngDao.getAllProduct_by_all_sells(DESC));
			break;
		}
		
		showMenu();
	}
	
	void showAllList(List<VProduct_ManageVo> list)
	{
		for (VProduct_ManageVo product : list)
		{
			System.out.println(product.toString());
		}
	}
}
