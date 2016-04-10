package com.nmom.soap.data.impl.board.review;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.nmom.soap.data.dao.board.review.IVReview_FrontDao;
import com.nmom.soap.data.model.board.review.VReview_FrontVo;

public class VReview_FrontDaoOraImpl extends JdbcDaoSupport implements IVReview_FrontDao 
{
	// 게시판 목록 뽑기
	private final String GET_ALL_LIST = "SELECT * FROM v_review_front WHERE product_no = ?";
	
	public List<VReview_FrontVo> getAllList(int product_no) throws DataAccessException
	{
		return getJdbcTemplate().query(GET_ALL_LIST, new BeanPropertyRowMapper<VReview_FrontVo>(VReview_FrontVo.class), new Integer(product_no));
	}
}
