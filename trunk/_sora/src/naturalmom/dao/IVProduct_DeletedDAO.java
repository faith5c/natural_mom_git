package naturalmom.dao;

import java.util.List;

import naturalmom.model.VProduct_Deleted;

public interface IVProduct_DeletedDAO 
{
	// order: false = ��������, true = ��������
	// ��ǰ ��ȣ�� �����ϱ�
	List<VProduct_Deleted> selectAllDeletedProduct_by_product_no(boolean order) throws DataAccessException;
	
	// ��ǰ �̸����� �����ϱ�
	List<VProduct_Deleted> selectAllDeletedProduct_by_product_name(boolean order) throws DataAccessException
	
	// ��ǰ �������� �����ϱ�
	List<VProduct_Deleted> selectAllDeletedProduct_by_selling_price(boolean order) throws DataAccessException
	
	// ���� �����ϱ�
	List<VProduct_Deleted> selectAllDeletedProduct_by_stock(boolean order) throws DataAccessException
	
	// �� �Ǹŷ����� �����ϱ�
	List<VProduct_Deleted> selectAllDeletedProduct_by_all_sells(boolean order) throws DataAccessException
}
