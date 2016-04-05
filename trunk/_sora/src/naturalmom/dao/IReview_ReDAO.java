package naturalmom.dao;

import java.util.List;

import naturalmom.model.Review_Re;

public interface IReview_ReDAO 
{
	// 해당 리뷰글의 모든 리플 가져오기
	List<Review_Re> selectAllRe(int review_no) throws DataAccessException;
	
	// 리플 등록
	int insertRe(Review_Re re) throws DataAccessException;
	
	// 리플 수정
	int updateRe(Review_Re re) throws DataAccessException;
	
	// 리플 삭제
	int deleteRe(Review_Re re) throws DataAccessException;
}
