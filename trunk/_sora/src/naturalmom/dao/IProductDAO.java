package naturalmom.dao;

import java.util.List;

import naturalmom.model.Product;

public interface IProductDAO 
{	
	// ��ǰ ������ ������ ��ǰ ����
	Product selectOneProduct(int product_no) throws DataAccessException;
	
	// ��ǰ �߰�
	int insertProduct(Product product) throws DataAccessException;
	
	// ���� ���� ����
	int updateDisplayState(Product product, int state) throws DataAccessException;
	
	// �Ǹ� ���� ����
	int updateSaleState(Product product, int state) throws DataAccessException;
	
	// ����, ����
	int updateDeletedState(Product product, int state) throws DataAccessException;

	// ��ǰ ����
	int updateOneProduct(Product product) throws DataAccessException;
}
