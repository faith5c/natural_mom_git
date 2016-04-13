package com.nmom.soap.svc.board.review;

import java.util.List;

import com.nmom.soap.data.model.board.review.VReview_FrontVo;

public interface IVReview_FrontSvc 
{
	// 게시판 목록 조회하기
	List<VReview_FrontVo> getAllList(int product_no, int page);
}
