package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.ProductVo;

public interface IProductDao 
{	
	// 상품 수정시 가져올 상품 정보
	ProductVo getOneProduct(int product_no) throws DataAccessException;
	
	// 상품 추가
	int addProduct(ProductVo product) throws DataAccessException;
	
	// 진열 상태 변경
	int editDisplayState(ProductVo product, int state) throws DataAccessException;
	
	// 판매 상태 변경
	int editSaleState(ProductVo product, int state) throws DataAccessException;
	
	// 삭제, 복원
	int editDeletedState(ProductVo product, int state) throws DataAccessException;

	// 상품 수정
	int editOneProduct(ProductVo product) throws DataAccessException;
}
