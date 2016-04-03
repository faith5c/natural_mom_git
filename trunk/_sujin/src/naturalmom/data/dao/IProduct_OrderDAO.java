package naturalmom.data.dao;

import org.springframework.dao.DataAccessException;

import fusion.data.model.Product_OrderVO;




public interface IProduct_OrderDAO {
	
//	1. �ֹ��ϱ�(INSERT) 
	boolean insertOrder(Product_OrderVO po) throws DataAccessException;
	
	//	2. ����Ȯ��/ȯ�ҿ�û �� ó������ �����ϱ�(UPDATE)
	//��ü ����
	int updateOrder(int order_no, int process_cd) throws DataAccessException;	
	
	//�Ϻ� ����(�ѹ��� �ֹ� ���� ǰ�� �� ���)
	int updateOrder(int order_no, String product_name, int process_cd) throws DataAccessException;
	
}
