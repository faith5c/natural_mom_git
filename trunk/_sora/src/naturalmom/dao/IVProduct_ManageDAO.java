package naturalmom.dao;

import java.util.List;

import naturalmom.model.VProduct_Manage;

public interface IVProduct_ManageDAO 
{
	// order: false = 내림차순, true = 오름차순
	List<VProduct_Manage> selectAllProduct_by_product_no(boolean order);
	
	List<VProduct_Manage> selectAllProduct_by_category_nm(boolean order);
	
	List<VProduct_Manage> selectAllProduct_by_product_name(boolean order);
	
	List<VProduct_Manage> selectAllProduct_by_selling_price(boolean order);
	
	List<VProduct_Manage> selectAllProduct_by_stock(boolean order);
	
	List<VProduct_Manage> selectAllProduct_by_display_state(boolean order);
	
	List<VProduct_Manage> selectAllProduct_by_sale_state(boolean order);
	
	List<VProduct_Manage> selectAllProduct_by_all_sells(boolean order);
}
