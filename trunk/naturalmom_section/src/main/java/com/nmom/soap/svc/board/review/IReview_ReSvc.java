package com.nmom.soap.svc.board.review;

import java.util.List;

import com.nmom.soap.data.model.board.review.Review_ReVo;

public interface IReview_ReSvc
{
	// 해당 리뷰글의 모든 리플 가져오기
	List<Review_ReVo> getAllRe(int review_no);
	
	// 리플 등록
	int addRe(Review_ReVo re);
	
	// 리플 수정
	int editRe(Review_ReVo re);
	
	// 리플 삭제
	int removeRe(Review_ReVo re);
	
}
