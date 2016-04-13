package com.nmom.soap.svc.product;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.model.product.ProductVo;

public interface IProductSvc 
{
	// 상품 하나 가져오기
	ProductVo getOneProduct(int produt_no);
	
	// 상품 추가
	int addProduct(ProductVo product);
	
	// 진열 상태 변경
	int editDisplayState(ProductVo product, int state);
	
	// 판매 상태 변경
	int editSaleState(ProductVo product, int state);
	
	// 삭제, 복원
	int editDeletedState(ProductVo product, int state);
	
	// 상품 수정
	int editOneProduct(ProductVo product);
	
	// 상품 목록 페이지
	List<ProductVo> getAllProduct() throws DataAccessException;
	
	// 카테고리에 따라 상품목록 가져옴
	List<ProductVo> getProductByCategoryCd(int category_cd) throws DataAccessException;
	
	// 상품이름으로 상품 가져옴
	List<ProductVo> getProductByProductName(String product_name) throws DataAccessException;

}
