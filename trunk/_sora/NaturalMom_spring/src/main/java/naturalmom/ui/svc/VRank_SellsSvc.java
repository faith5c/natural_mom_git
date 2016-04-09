package naturalmom.ui.svc;

import java.util.List;

import naturalmom.data.dao.impl.VRank_SellsDaoOraImpl;
import naturalmom.data.model.VRank_SellsVo;

public class VRank_SellsSvc extends ConSvc
{
	private final int GET_ALL_ASC = 1;
	private final int GET_ALL_DESC = 2;
	
	private VRank_SellsDaoOraImpl rankDao;

	public void setRankDao(VRank_SellsDaoOraImpl rankDao) 
	{
		this.rankDao = rankDao;
	}
	
	@Override
	public void showMenu() 
	{
		System.out.println("1. GET_ALL_ASC");
		System.out.println("2. GET_ALL_DESC");
		System.out.println("9. EXIT");
		System.out.print(" >> ");
		execFunctions(inputNumber(inputUser()));	
	}
	
	@Override
	public void execFunctions(int num) 
	{
		switch(num)
		{
		case GET_ALL_ASC:
			showAllList(rankDao.getAllRank(ASC));
			break;
			
		case GET_ALL_DESC:
			showAllList(rankDao.getAllRank(DESC));
			break;
			
		case EXIT:
			System.exit(0);
			break;
		}
	
		showMenu();
	}
	
	void showAllList(List<VRank_SellsVo> list)
	{
		for (VRank_SellsVo product : list)
		{
			System.out.println(product.toString());
		}
	}
}
