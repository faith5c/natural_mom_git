package naturalmom.dao.impl;

import java.util.List;

import naturalmom.dao.IReview_ReDAO;
import naturalmom.model.Review_Re;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class Review_ReDAOOracleImpl extends JdbcDaoSupport implements IReview_ReDAO
{
	// ��� ���� ��������
	private final String SELECT_ALL_REPLY = "SELECT review_re_no,  rvw_re_content, rvw_re_write_day, mem_id"
			+ "FROM tb_review_re"
			+ "WHERE rvw_re_del_check = 0 AND rvw_no = ?";
	// ��� ����ϱ�
	private final String INSERT_REPLY = "INSERT INTO tb_review_re (rvw_re_content, rvw_re_write_day, rvw_re_del_check, "
			+ "rvw_no, mem_id, review_re_no) "
			+ "VALUES (?,SYSDATE,0,?,?, REVIEW_RE_NO_SEQ.NEXTVAL)";
	// ��� �����ϱ�
	private final String UPDATE_REPLY = "UPDATE tb_review_re SET rvw_re_content = ?"
			+ "WHERE review_re_no = ?";
	// ��� �����ϱ�
	private final String DELETE_REPLY = "UPDATE tb_review_re SET rvw_re_del_check = 1"
			+ "WHERE review_re_no = ?";
	
	@Override
	public List<Review_Re> selectAllRe(int review_no) 
	{
		return getJdbcTemplate().query(SELECT_ALL_REPLY, 
				new BeanPropertyRowMapper<Review_Re>(Review_Re.class), new Integer(review_no));
	}
	@Override
	public int insertRe(Review_Re re) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int updateRe(Review_Re re) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int deleteRe(Review_Re re) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
}