package naturalmom.data.dao;

import org.springframework.dao.DataAccessException;

import fusion.data.model.OrderVO;

public interface IOrderDAO {	

//	1. �ֹ��ϱ�(INSERT) (���� ���� int�� ������ pk���� �����ޱ� ���ؼ�)
	int insertOrder(OrderVO order) throws DataAccessException;
	
}
