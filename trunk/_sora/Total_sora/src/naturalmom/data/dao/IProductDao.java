package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.ProductVo;

public interface IProductDao 
{	
	// ��ǰ ������ ������ ��ǰ ����
	ProductVo selectOneProduct(int product_no) throws DataAccessException;
	
	// ��ǰ �߰�
	int insertProduct(ProductVo product) throws DataAccessException;
	
	// �� ���� ����
	int updateDisplayState(ProductVo product, int state) throws DataAccessException;
	
	// �Ǹ� ���� ����
	int updateSaleState(ProductVo product, int state) throws DataAccessException;
	
	// ����, ����
	int updateDeletedState(ProductVo product, int state) throws DataAccessException;

	// ��ǰ ����
	int updateOneProduct(ProductVo product) throws DataAccessException;
}
