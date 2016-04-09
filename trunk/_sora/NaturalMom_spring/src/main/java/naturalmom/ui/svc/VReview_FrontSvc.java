package naturalmom.ui.svc;

import java.util.List;

import naturalmom.data.dao.impl.VReview_FrontDaoOraImpl;
import naturalmom.data.model.VReview_FrontVo;

public class VReview_FrontSvc extends ConSvc
{
	private final int GET_ALL_LIST = 1;
	
	private VReview_FrontDaoOraImpl froDao;
	
	public void setFroDao(VReview_FrontDaoOraImpl froDao) 
	{
		this.froDao = froDao;
	}

	@Override
	public void showMenu() 
	{
		System.out.println("1. GET ALL LIST");
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
			showAllList(froDao.getAllList(10003));
			break;
			
		case EXIT:
			System.exit(0);
			break;
		}
		
		showMenu();
	}
	
	void showAllList(List<VReview_FrontVo> list)
	{
		for (VReview_FrontVo review : list)
		{
			System.out.println(review.toString());
		}
	}
}
