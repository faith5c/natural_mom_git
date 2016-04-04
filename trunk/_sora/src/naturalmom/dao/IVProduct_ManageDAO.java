package naturalmom.dao;

import java.util.List;

import naturalmom.model.VProduct_Manage;

public interface IVProduct_ManageDAO 
{
	// order: false = ��������, true = ��������
	// ��ǰ ��ȣ�� �����ϱ�
	List<VProduct_Manage> selectAllProduct_by_product_no(boolean order);
	
	// ī�װ� �̸����� �����ϱ�
	List<VProduct_Manage> selectAllProduct_by_category_nm(boolean order);
	
	// ��ǰ������ �����ϱ�
	List<VProduct_Manage> selectAllProduct_by_product_name(boolean order);
	
	// �Ǹ� �������� �����ϱ�
	List<VProduct_Manage> selectAllProduct_by_selling_price(boolean order);
	
	// ���� �����ϱ�
	List<VProduct_Manage> selectAllProduct_by_stock(boolean order);
	
	// ���� ���·� �����ϱ�
	List<VProduct_Manage> selectAllProduct_by_display_state(boolean order);
	
	// �Ǹ� ���·� �����ϱ�
	List<VProduct_Manage> selectAllProduct_by_sale_state(boolean order);
	
	// �� �Ǹŷ����� �����ϱ�
	List<VProduct_Manage> selectAllProduct_by_all_sells(boolean order);
}
