package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.ProductVo;


public interface IProductDao 
{	
	// 상품 수정시 가져올 상품 정보
	ProductVo selectOneProduct(int product_no) throws DataAccessException;
	
	// 상품 추가
	int insertProduct(ProductVo product) throws DataAccessException;
	
	// 진열 상태 변경
	int updateDisplayState(ProductVo product, int state) throws DataAccessException;
	
	// 판매 상태 변경
	int updateSaleState(ProductVo product, int state) throws DataAccessException;
	
	// 삭제, 복원
	int updateDeletedState(ProductVo product, int state) throws DataAccessException;

	// 상품 수정
	int updateOneProduct(ProductVo product) throws DataAccessException;

	//////////////////////////////////////////////////////
	////////////////////////////////////////////////////
	//////////////////////////////////////////////////////
	
	//상품 상세 페이지
	ProductVo getOneProduct(int product_no) throws DataAccessException;
	
	//상품 목록 페이지
	List<ProductVo> getAllProduct(int product_no) throws DataAccessException;
	
	//카테고리에 따라 상품목록 가져옴
	List<ProductVo> getProductByCategoryCd(int category_cd) throws DataAccessException;
	
}