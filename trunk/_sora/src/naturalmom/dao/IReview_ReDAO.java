package naturalmom.dao;

import java.util.List;

import naturalmom.model.Review_Re;

public interface IReview_ReDAO 
{
	List<Review_Re> selectAllRe(int review_no);
	
	int insertRe(Review_Re re);
	
	int updateRe(Review_Re re);
	
	int deleteRe(Review_Re re);
}
