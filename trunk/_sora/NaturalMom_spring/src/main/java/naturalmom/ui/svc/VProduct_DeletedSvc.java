package naturalmom.ui.svc;

import java.util.List;

import naturalmom.data.dao.impl.VProduct_DeletedDaoOraImpl;
import naturalmom.data.model.VProduct_DeletedVo;

public class VProduct_DeletedSvc extends ConSvc
{
	private final int GET_ALL_BY_PRODUCT_NO_ASC = 1;
	private final int GET_ALL_BY_PRODUCT_NO_DESC = 2;
	private final int GET_ALL_BY_PRODUCT_NAME_ASC = 3;
	private final int GET_ALL_BY_PRODUCT_NAME_DESC = 4;
	private final int GET_ALL_BY_SELLING_PRICE_ASC = 5;
	private final int GET_ALL_BY_SELLING_PRICE_DESC = 6;
	private final int GET_ALL_BY_STOCK_ASC = 7;
	private final int GET_ALL_BY_STOCK_DESC = 8;
	private final int GET_ALL_BY_ALL_SELLS_ASC = 10;
	private final int GET_ALL_BY_ALL_SELLS_DESC = 11;
	
	private VProduct_DeletedDaoOraImpl vProDao;

	@Override
	public void showMenu() 
	{
		System.out.println("1. GET_ALL_BY_PRODUCT_NO_ASC");
		System.out.println("2. GET_ALL_BY_PRODUCT_NO_DESC");
		System.out.println("3. GET_ALL_BY_PRODUCT_NAME_ASC");
		System.out.println("4. GET_ALL_BY_PRODUCT_NAME_DESC");
		System.out.println("5. GET_ALL_BY_SELLING_PRICE_ASC");
		System.out.println("6. GET_ALL_BY_SELLING_PRICE_DESC");
		System.out.println("7. GET_ALL_BY_STOCK_ASC");
		System.out.println("8. GET_ALL_BY_STOCK_DESC");
		System.out.println("10. GET_ALL_BY_ALL_SELLS_ASC");
		System.out.println("11. GET_ALL_BY_ALL_SELLS_DESC");
		System.out.println("9. EXIT");
		System.out.print(" >> ");
		execFunctions(inputNumber(inputUser()));
	}
	
	@Override
	public void execFunctions(int num) 
	{
		switch (num)
		{
		case GET_ALL_BY_PRODUCT_NO_ASC:
			showAllList(vProDao.getAllDeletedProduct_by_product_no(ASC));
			break;
			
		case GET_ALL_BY_PRODUCT_NO_DESC:
			showAllList(vProDao.getAllDeletedProduct_by_product_no(DESC));
			break;
			
		case GET_ALL_BY_PRODUCT_NAME_ASC:
			showAllList(vProDao.getAllDeletedProduct_by_product_name(ASC));
			break;
			
		case GET_ALL_BY_PRODUCT_NAME_DESC:
			showAllList(vProDao.getAllDeletedProduct_by_product_name(DESC));
			break;
			
		case GET_ALL_BY_SELLING_PRICE_ASC:
			showAllList(vProDao.getAllDeletedProduct_by_selling_price(ASC));
			break;
			
		case GET_ALL_BY_SELLING_PRICE_DESC:
			showAllList(vProDao.getAllDeletedProduct_by_selling_price(DESC));
			break;
			
		case GET_ALL_BY_STOCK_ASC:
			showAllList(vProDao.getAllDeletedProduct_by_stock(ASC));
			break;
			
		case GET_ALL_BY_STOCK_DESC:
			showAllList(vProDao.getAllDeletedProduct_by_stock(DESC));
			break;
			
		case GET_ALL_BY_ALL_SELLS_ASC:
			showAllList(vProDao.getAllDeletedProduct_by_all_sells(ASC));
			break;
			
		case GET_ALL_BY_ALL_SELLS_DESC:
			showAllList(vProDao.getAllDeletedProduct_by_all_sells(DESC));
			break;
			
		case EXIT:
			System.exit(0);
			break;
		}

		showMenu();	
	}

	void showAllList(List<VProduct_DeletedVo> list)
	{
		for (VProduct_DeletedVo product : list)
		{
			System.out.println(product.toString());
		}
	}
	
	public void setVProDao(VProduct_DeletedDaoOraImpl vProDao) {
		this.vProDao = vProDao;
	}
}
