package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VProduct_ManageVo;

public interface IVProduct_ManageDao 
{
	// order: false = 내림차순, true = 오름차순
	// 상품 번호로 정렬하기
	List<VProduct_ManageVo> getAllProduct_by_product_no(boolean order, int start, int end) throws DataAccessException;
	
	// 카테고리 이름으로 정렬하기
	List<VProduct_ManageVo> getAllProduct_by_category_nm(boolean order, int start, int end) throws DataAccessException;
	
	// 상품명으로 정렬하기
	List<VProduct_ManageVo> getAllProduct_by_product_name(boolean order, int start, int end) throws DataAccessException;
	
	// 판매 가격으로 정렬하기
	List<VProduct_ManageVo> getAllProduct_by_selling_price(boolean order, int start, int end) throws DataAccessException;
	
	// 재고로 정렬하기
	List<VProduct_ManageVo> getAllProduct_by_stock(boolean order, int start, int end) throws DataAccessException;
	
	// 진열 상태로 정렬하기
	List<VProduct_ManageVo> getAllProduct_by_display_state(boolean order, int start, int end) throws DataAccessException;
	
	// 판매 상태로 정렬하기
	List<VProduct_ManageVo> getAllProduct_by_sale_state(boolean order, int start, int end) throws DataAccessException;
	
	// 총 판매량으로 정렬하기
	List<VProduct_ManageVo> getAllProduct_by_all_sells(boolean order, int start, int end) throws DataAccessException;
	
	// 총 상품 개수 가져오기
	int getCountAllProduct() throws DataAccessException;
}
