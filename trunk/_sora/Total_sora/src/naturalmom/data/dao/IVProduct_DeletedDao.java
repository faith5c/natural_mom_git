package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VProduct_DeletedVo;

public interface IVProduct_DeletedDao 
{
	// order: false = 내림차순, true = 오름차순
	// 상품 번호로 정렬하기
	List<VProduct_DeletedVo> getAllDeletedProduct_by_product_no(boolean order, int start, int end) throws DataAccessException;
	
	// 상품 이름으로 정렬하기
	List<VProduct_DeletedVo> getAllDeletedProduct_by_product_name(boolean order, int start, int end) throws DataAccessException;
	
	// 상품 가격으로 정렬하기
	List<VProduct_DeletedVo> getAllDeletedProduct_by_selling_price(boolean order, int start, int end) throws DataAccessException;
	
	// 재고로 정렬하기
	List<VProduct_DeletedVo> getAllDeletedProduct_by_stock(boolean order, int start, int end) throws DataAccessException;
	
	// 총 판매량으로 정렬하기
	List<VProduct_DeletedVo> getAllDeletedProduct_by_all_sells(boolean order, int start, int end) throws DataAccessException;
	
	// 삭제된 상품의 총 개수 가져오기
	int getCountDeletedProduct() throws DataAccessException;
}
