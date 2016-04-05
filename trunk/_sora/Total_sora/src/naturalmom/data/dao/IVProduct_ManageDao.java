package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VProduct_ManageVo;

public interface IVProduct_ManageDao 
{
	// order: false = ��������, true = ��������
	// ��ǰ ��ȣ�� �����ϱ�
	List<VProduct_ManageVo> selectAllProduct_by_product_no(boolean order) throws DataAccessException;
	
	// ī�װ? �̸����� �����ϱ�
	List<VProduct_ManageVo> selectAllProduct_by_category_nm(boolean order) throws DataAccessException;
	
	// ��ǰ������ �����ϱ�
	List<VProduct_ManageVo> selectAllProduct_by_product_name(boolean order) throws DataAccessException;
	
	// �Ǹ� �������� �����ϱ�
	List<VProduct_ManageVo> selectAllProduct_by_selling_price(boolean order) throws DataAccessException;
	
	// ���� �����ϱ�
	List<VProduct_ManageVo> selectAllProduct_by_stock(boolean order) throws DataAccessException;
	
	// �� ���·� �����ϱ�
	List<VProduct_ManageVo> selectAllProduct_by_display_state(boolean order) throws DataAccessException;
	
	// �Ǹ� ���·� �����ϱ�
	List<VProduct_ManageVo> selectAllProduct_by_sale_state(boolean order) throws DataAccessException;
	
	// �� �Ǹŷ����� �����ϱ�
	List<VProduct_ManageVo> selectAllProduct_by_all_sells(boolean order) throws DataAccessException;
}
