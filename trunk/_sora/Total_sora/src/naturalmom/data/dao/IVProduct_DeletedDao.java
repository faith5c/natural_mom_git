package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VProduct_DeletedVo;

public interface IVProduct_DeletedDao 
{
	// order: false = ��������, true = ��������
	// ��ǰ ��ȣ�� �����ϱ�
	List<VProduct_DeletedVo> selectAllDeletedProduct_by_product_no(boolean order) throws DataAccessException;
	
	// ��ǰ �̸����� �����ϱ�
	List<VProduct_DeletedVo> selectAllDeletedProduct_by_product_name(boolean order) throws DataAccessException;
	
	// ��ǰ �������� �����ϱ�
	List<VProduct_DeletedVo> selectAllDeletedProduct_by_selling_price(boolean order) throws DataAccessException;
	
	// ���� �����ϱ�
	List<VProduct_DeletedVo> selectAllDeletedProduct_by_stock(boolean order) throws DataAccessException;
	
	// �� �Ǹŷ����� �����ϱ�
	List<VProduct_DeletedVo> selectAllDeletedProduct_by_all_sells(boolean order) throws DataAccessException;
}
