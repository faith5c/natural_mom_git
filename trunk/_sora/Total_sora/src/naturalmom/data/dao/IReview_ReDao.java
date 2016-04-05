package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.Review_ReVo;

public interface IReview_ReDao 
{
	// �ش� ������� ��� ���� ��������
	List<Review_ReVo> selectAllRe(int review_no) throws DataAccessException;
	
	// ���� ���
	int insertRe(Review_ReVo re) throws DataAccessException;
	
	// ���� ����
	int updateRe(Review_ReVo re) throws DataAccessException;
	
	// ���� ����
	int deleteRe(Review_ReVo re) throws DataAccessException;
}
