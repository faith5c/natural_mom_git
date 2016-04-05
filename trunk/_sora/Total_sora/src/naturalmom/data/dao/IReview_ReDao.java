package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.Review_ReVo;

public interface IReview_ReDao 
{
	// 해당 리뷰글의 모든 리플 가져오기
	List<Review_ReVo> selectAllRe(int review_no) throws DataAccessException;
	
	// 리플 등록
	int insertRe(Review_ReVo re) throws DataAccessException;
	
	// 리플 수정
	int updateRe(Review_ReVo re) throws DataAccessException;
	
	// 리플 삭제
	int deleteRe(Review_ReVo re) throws DataAccessException;
}
