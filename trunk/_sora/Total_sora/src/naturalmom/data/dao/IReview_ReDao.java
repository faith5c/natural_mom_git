package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.Review_ReVo;

public interface IReview_ReDao 
{
	// 해당 리뷰글의 모든 리플 가져오기
	List<Review_ReVo> getAllRe(int review_no) throws DataAccessException;
	
	// 리플 등록
	int addRe(Review_ReVo re) throws DataAccessException;
	
	// 리플 수정
	int editRe(Review_ReVo re) throws DataAccessException;
	
	// 리플 삭제
	int removeRe(Review_ReVo re) throws DataAccessException;
}
