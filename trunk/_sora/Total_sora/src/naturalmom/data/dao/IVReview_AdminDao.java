package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VReview_AdminVo;

public interface IVReview_AdminDao 
{
	// 게시판 목록 뽑기
	List<VReview_AdminVo> selectAllList() throws DataAccessException;
	
	// 게시판 내용 뽑기
	VReview_AdminVo seletOneReview(int review_no) throws DataAccessException;
	
	// 제목으로 검색하기
	List<VReview_AdminVo> selectReviews_by_title(String search) throws DataAccessException;
	
	// 내용으로 검색하기
	List<VReview_AdminVo> selectReviews_by_content(String search) throws DataAccessException;
	
	// 글쓴이로 검색하기
	List<VReview_AdminVo> selectReviews_by_id(String search) throws DataAccessException;
	
	// 제목 및 내용으로 검색하기
	List<VReview_AdminVo> selectReviews_by_title_n_content(String search) throws DataAccessException;
}
