package naturalmom.ui.svc;

import java.util.List;

import naturalmom.data.dao.impl.VReview_AdminDaoOraImpl;
import naturalmom.data.model.VReview_AdminVo;

public class VReview_AdminSvc extends ConSvc
{
	private final int GET_ALL_LIST = 1;
	private final int GET_ONE_REVIEW = 2;
	private final int GET_SEARCH_BY_TITLE = 3;
	private final int GET_SEARCH_BY_CONTENT = 4;
	private final int GET_SEARCH_BY_ID = 5;
	private final int GET_SEARCH_BY_TITLE_CONTENT = 6;
	
	private VReview_AdminDaoOraImpl admDao;
	
	public void setAdmDao(VReview_AdminDaoOraImpl admDao) 
	{
		this.admDao = admDao;
	}

	@Override
	public void showMenu() 
	{
		System.out.println("1. GET ALL LIST");
		System.out.println("2. GET ONE REVIEW");
		System.out.println("3. GET SEARCH BY TITLE");
		System.out.println("4. GET SEARCH BY CONTENT");
		System.out.println("5. GET SEARCH BY ID");
		System.out.println("6. GET SEARCH BY TITLE CONTENT");
		System.out.println("9. EXIT");
		System.out.print(" >> ");
		execFunctions(inputNumber(inputUser()));
	}
	
	@Override
	public void execFunctions(int num) 
	{
		switch(num)
		{
		case GET_ALL_LIST:
			showAllList(admDao.getAllList(2, 5));
			break;
			
		case GET_ONE_REVIEW:
			showOneReview(admDao.getOneReview(2));
			break;
			
		case GET_SEARCH_BY_TITLE:
			showAllList(admDao.getReviews_by_title("배송", 1, 5));
			break;
			
		case GET_SEARCH_BY_CONTENT:
			showAllList(admDao.getReviews_by_content("짱좋", 1, 5));
			break;
			
		case GET_SEARCH_BY_ID:
			showAllList(admDao.getReviews_by_id("sora", 1, 5));
			break;
			
		case GET_SEARCH_BY_TITLE_CONTENT:
			showAllList(admDao.getReviews_by_title_n_content("짱좋", 1, 5));
			break;
			
		case EXIT:
			System.exit(0);
			break;
			
		}
		
		showMenu();
		
	}
	
	void showAllList(List<VReview_AdminVo> list)
	{
		for (VReview_AdminVo review : list)
		{
			System.out.println(review.toString());
		}
	}
	
	void showOneReview(VReview_AdminVo review)
	{
		System.out.println(review.toString());
	}

}
