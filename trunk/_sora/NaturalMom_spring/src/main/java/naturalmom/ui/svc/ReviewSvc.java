package naturalmom.ui.svc;

import java.util.Date;
import java.util.List;

import naturalmom.data.dao.impl.ReviewDaoOraImpl;
import naturalmom.data.dao.impl.Review_ReDaoOraImpl;
import naturalmom.data.model.ReviewVo;
import naturalmom.data.model.Review_ReVo;

public class ReviewSvc extends ConSvc
{
	private static final int ADD_REVIEW = 1;
	private static final int EDIT_REVIEW = 2;
	private static final int REMOVE_REVIEW = 3;
	private static final int GET_ONE_REVIEW = 4;
	private static final int GET_ALL_REPLY = 5;
	private static final int ADD_REPLY = 6;
	private static final int EDIT_REPLY = 7;
	private static final int REMOVE_REPLY = 8;

	private Review_ReDaoOraImpl rereDao;
	private ReviewDaoOraImpl reDao;
	
	private ReviewVo test1 = new ReviewVo(0, "넘나 좋은것", new Date(), 0, "넘나 좋은 것 또 살게요 또 살게요", 0, 5, 10002, 0, "sora");
	private ReviewVo test3 = new ReviewVo(8, "겁나 좋은것", new Date(), 0, "겁나 좋은 것 또 살게요 또 살게요", 0, 5, 10002, 0, "sora");
	private Review_ReVo test_re1 = new Review_ReVo(0, "넹넹", new Date(), 0, 2, "sora");
	private Review_ReVo test_re3 = new Review_ReVo(10, "넹넹넹", new Date(), 0, 2, "sora");
	
	@Override
	public void showMenu() 
	{
		System.out.println("1. ADD REVIEW");
		System.out.println("2. EDIT REVIEW");
		System.out.println("3. REMOVE REVIEW");
		System.out.println("4. GET ONE REVIEW");
		System.out.println("5. GET ALL REPLY");
		System.out.println("6. ADD REPLY");
		System.out.println("7. EDIT REPLY");
		System.out.println("8. REMOVE REPLY");
		System.out.println("9. EXIT");
		System.out.print(" >> ");
		execFunctions(inputNumber(inputUser()));
	}
	
	@Override
	public void execFunctions(int num)
	{
		switch(num)
		{
		case ADD_REVIEW:
			showResult(reDao.addReview(test1));
			break;
			
		case EDIT_REVIEW:
			showResult(reDao.editReview(test3));
			break;
			
		case REMOVE_REVIEW:
			showResult(reDao.removeReview(test3));
			break;
			
		case GET_ONE_REVIEW:
			showOneReview(test3);
			break;
			
		case GET_ALL_REPLY:
			showAllReply(rereDao.getAllRe(3));
			break;
			
		case ADD_REPLY:
			showResult(rereDao.addRe(test_re1));
			break;
			
		case EDIT_REPLY:
			showResult(rereDao.editRe(test_re3));
			break;
			
		case REMOVE_REPLY:
			showResult(rereDao.removeRe(test_re3));
			break;
			
		case EXIT:
			System.exit(0);
			break;
		}
		
		showMenu();
	}

	public void setRereDao(Review_ReDaoOraImpl rereDao) {
		this.rereDao = rereDao;
	}

	public void setReDao(ReviewDaoOraImpl reDao) {
		this.reDao = reDao;
	}
	
	void showOneReview(ReviewVo review)
	{
		System.out.println(review.toString());
	}
	
	void showAllReply(List<Review_ReVo> list)
	{
		for (Review_ReVo re : list)
		{
			System.out.println(re.toString());
		}
	}
	
	void showOneReply(Review_ReVo re)
	{
		System.out.println(re.toString());
	}
}
