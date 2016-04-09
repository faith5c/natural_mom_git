package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VReview_FrontVo;

public interface IVReview_FrontDao 
{
	// 게시판 목록 조회하기
	List<VReview_FrontVo> getAllList(int product_no) throws DataAccessException;
}
