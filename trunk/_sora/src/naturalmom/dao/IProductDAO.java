package naturalmom.dao;

import java.util.List;

import naturalmom.model.Product;

public interface IProductDAO 
{	
	// 상품 수정시 가져올 상품 정보
	Product selectOneProduct(int product_no) throws DataAccessException;
	
	// 상품 추가
	int insertProduct(Product product) throws DataAccessException;
	
	// 진열 상태 변경
	int updateDisplayState(Product product, int state) throws DataAccessException;
	
	// 판매 상태 변경
	int updateSaleState(Product product, int state) throws DataAccessException;
	
	// 삭제, 복원
	int updateDeletedState(Product product, int state) throws DataAccessException;

	// 상품 수정
	int updateOneProduct(Product product) throws DataAccessException;
}
