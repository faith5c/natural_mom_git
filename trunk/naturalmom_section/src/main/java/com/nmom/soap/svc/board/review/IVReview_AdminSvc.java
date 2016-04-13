package com.nmom.soap.svc.board.review;

import java.util.List;

import com.nmom.soap.data.model.board.review.VReview_AdminVo;

public interface IVReview_AdminSvc 
{
	// 게시판 목록 뽑기
	List<VReview_AdminVo> getAllList(int page);
	
	// 게시판 내용 뽑기
	VReview_AdminVo getOneReview(int review_no);
	
	// 제목으로 검색하기
	List<VReview_AdminVo> getReviews_by_title(String search, int page);
	
	// 내용으로 검색하기
	List<VReview_AdminVo> getReviews_by_content(String search, int page);
		
	// 글쓴이으로 검색하기
	List<VReview_AdminVo> getReviews_by_id(String search, int page);
		
	// 제목 및 내용으로 검색하기
	List<VReview_AdminVo> getReviews_by_title_n_content(String search, int page);	
}
