package com.nmom.soap.data.dao.product;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.model.product.ProductVo;


public interface IProductDao 
{	
	// 상품 수정시 가져올 상품 정보
	// 상품 상세페이지에서 가져올 정보
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

	//////////////////////////////////////////////////////
	
	//상품 목록 페이지
	List<ProductVo> getAllProduct() throws DataAccessException;
	
	//카테고리에 따라 상품목록 가져옴
	List<ProductVo> getProductByCategoryCd(int category_cd) throws DataAccessException;
	
	//상품이름으로 상품 가져옴
	List<ProductVo> getProductByProductName(String product_name) throws DataAccessException;
		
}