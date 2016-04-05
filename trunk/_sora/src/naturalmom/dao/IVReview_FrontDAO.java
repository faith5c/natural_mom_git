package naturalmom.dao;

import java.util.List;

import naturalmom.model.VReview_Front;

public interface IVReview_FrontDAO 
{
	// 게시판 목록 조회하기
	List<VReview_Front> selectAllList() throws DataAccessException;
}
