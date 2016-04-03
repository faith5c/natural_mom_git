package naturalmom.dao;

import java.util.List;

import naturalmom.model.VProduct_Deleted;

public interface IVProduct_DeletedDAO 
{
	// order: false = ��������, true = ��������
	List<VProduct_Deleted> selectAllDeletedProduct_by_product_no(boolean order);
	
	List<VProduct_Deleted> selectAllDeletedProduct_by_product_name(boolean order);
	
	List<VProduct_Deleted> selectAllDeletedProduct_by_selling_price(boolean order);
	
	List<VProduct_Deleted> selectAllDeletedProduct_by_stock(boolean order);
	
	List<VProduct_Deleted> selectAllDeletedProduct_by_all_sells(boolean order);
}
