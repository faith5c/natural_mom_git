package naturalmom.dao.impl;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import naturalmom.dao.IReviewDAO;
import naturalmom.model.Review;

public class ReviewDAOOracleImpl extends JdbcDaoSupport implements IReviewDAO
{
	// 상품 후기 등록하기
	private final String INSERT_REVIEW = "INSERT INTO tb_review (rvw_title, rvw_write_day, rvw_hits, rvw_content, "
			+ "rvw_del_check, rvw_satisfaction, product_no, board_id, mem_id, review_no) "
			+ "VALUES (?,SYSDATE,0,?,0,?,?,5,?, REVIEW_NO_SEQ.NEXTVAL)";
	// 상품 후기 수정하기
	private final String UPDATE_REVIEW = "UPDATE tb_review SET rvw_title = ?, rvw_content = ? WHERE review_no = ?";
	// 상품 후기 삭제하기
	private final String DELETE_REVIEW = "UPDATE tb_review SET rvw_del_check = 1 WHERE review_no = ?";
	
	// 상품 수정 시 글 내용 가져오기
	private final String SELECT_ONE_REVIEW = "SELECT * FROM tb_review WHERE review_no = ?";
	
	@Override
	public Review selectOneReview(int review_no) 
	{
		List<Review> list = getJdbcTemplate().query(SELECT_ONE_REVIEW, 
				new BeanPropertyRowMapper<Review>(Review.class), new Integer(review_no));
		
		if (list != null && list.size() > 0)
			return list.get(0);
		
		return null;
	}

	@Override
	public int insertReview(Review review) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteReview(Review review) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateReview(Review review) {
		// TODO Auto-generated method stub
		return 0;
	}

}
