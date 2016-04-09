package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VReview_FrontVo;

public interface IVReview_FrontDao 
{
	// 게시판 목록 조회하기
	List<VReview_FrontVo> getAllList(int product_no, int start, int end) throws DataAccessException;
	
	// 총 게시글 수 가져오기
	int getCountReviews(int product_no) throws DataAccessException;
}
