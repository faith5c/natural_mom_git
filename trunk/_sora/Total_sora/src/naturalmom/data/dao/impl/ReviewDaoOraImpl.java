package naturalmom.data.dao.impl;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import naturalmom.data.dao.IReviewDao;
import naturalmom.data.model.ReviewVo;

public class ReviewDaoOraImpl extends JdbcDaoSupport implements IReviewDao
{
	// 상품 후기 등록하기
	private final String ADD_REVIEW = "INSERT INTO tb_review (rvw_title, rvw_write_day, rvw_hits, rvw_content, "
			+ "rvw_del_check, rvw_satisfaction, product_no, board_id, mem_id, review_no) "
			+ "VALUES (?,SYSDATE,0,?,0,?,?,5,?, REVIEW_NO_SEQ.NEXTVAL)";
	// 상품 후기 수정하기
	private final String EDIT_REVIEW = "UPDATE tb_review SET rvw_title = ?, rvw_content = ? WHERE review_no = ?";
	// 상품 후기 삭제하기
	private final String REMOVE_REVIEW = "UPDATE tb_review SET rvw_del_check = 1 WHERE review_no = ?";
	
	// 상품 수정 시 글 내용 가져오기
	private final String GET_ONE_REVIEW = "SELECT * FROM tb_review WHERE review_no = ?";
	
	@Override
	public ReviewVo getOneReview(int review_no) throws DataAccessException 
	{
		List<ReviewVo> list = getJdbcTemplate().query(GET_ONE_REVIEW, 
				new BeanPropertyRowMapper<ReviewVo>(ReviewVo.class), new Integer(review_no));
		
		if (list != null && list.size() > 0)
			return list.get(0);
		
		return null;
	}

	@Override
	public int addReview(ReviewVo review) throws DataAccessException
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeReview(ReviewVo review) throws DataAccessException
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editReview(ReviewVo review) throws DataAccessException
	{
		// TODO Auto-generated method stub
		return 0;
	}

}
