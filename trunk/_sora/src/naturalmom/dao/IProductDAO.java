package naturalmom.dao;

import java.util.List;

import naturalmom.model.Product;

public interface IProductDAO 
{	
	// ��ǰ ������ ������ ��ǰ ����
	Product selectOneProduct(int product_no);
	
	// ��ǰ �߰�
	int insertProduct(Product product);
	
	// ���� ���� ����
	int updateDisplayState(Product product, int state);
	
	// �Ǹ� ���� ����
	int updateSaleState(Product product, int state);
	
	// ����, ����
	int updateDeletedState(Product product, int state);

	// ��ǰ ����
	int updateOneProduct(Product product);
}
