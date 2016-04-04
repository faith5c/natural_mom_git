package naturalmom.dao;

import java.util.List;

import naturalmom.model.VReview_Admin;

public interface IVReview_AdminDAO 
{
	// 게시판 목록 뽑기
	List<VReview_Admin> selectAllList();
	
	// 게시판 내용 뽑기
	VReview_Admin seletOneReview(int review_no);
	
	// 제목으로 검색하기
	List<VReview_Admin> selectReviews_by_title(String search);
	
	// 내용으로 검색하기
	List<VReview_Admin> selectReviews_by_content(String search);
	
	// 글쓴이로 검색하기
	List<VReview_Admin> selectReviews_by_id(String search);
	
	// 제목 및 내용으로 검색하기
	List<VReview_Admin> selectReviews_by_title_n_content(String search);	
}
