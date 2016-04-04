package naturalmom.dao;

import java.util.List;

import naturalmom.model.VProduct_Deleted;

public interface IVProduct_DeletedDAO 
{
	// order: false = 내림차순, true = 오름차순
	// 상품 번호로 정렬하기
	List<VProduct_Deleted> selectAllDeletedProduct_by_product_no(boolean order);
	
	// 상품 이름으로 정렬하기
	List<VProduct_Deleted> selectAllDeletedProduct_by_product_name(boolean order);
	
	// 상품 가격으로 정렬하기
	List<VProduct_Deleted> selectAllDeletedProduct_by_selling_price(boolean order);
	
	// 재고로 정렬하기
	List<VProduct_Deleted> selectAllDeletedProduct_by_stock(boolean order);
	
	// 총 판매량으로 정렬하기
	List<VProduct_Deleted> selectAllDeletedProduct_by_all_sells(boolean order);
}
