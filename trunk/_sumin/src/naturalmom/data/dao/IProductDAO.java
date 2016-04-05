package naturalmom.data.dao;

import java.util.List;


public interface IProductDAO 
{	
	// 상품 수정시 가져올 상품 정보
	ProductVo selectOneProduct(int product_no);
	
	// 상품 추가
	int insertProduct(ProductVo product);
	
	// 진열 상태 변경
	int updateDisplayState(ProductVo product, int state);
	
	// 판매 상태 변경
	int updateSaleState(ProductVo product, int state);
	
	// 삭제, 복원
	int updateDeletedState(ProductVo product, int state);

	// 상품 수정
	int updateOneProduct(ProductVo product);

	//////////////////////////////////////////////////////
	
	//상품 상세 페이지
	ProductVo getOneProduct(int product_no);
	
	//상품 목록 페이지
	List<ProductVo> getAllProduct(int product_no);
	
	//카테고리에 따라 상품목록 가져옴
	List<ProductVo> getProductByCategoryCd(int category_cd);
	
}


/*
상품상세페이지

SELECT product_no, product_name, selling_price, sale_state, represent_img, detail_img, summary_ex, detail_ex, weight 
FROM tb_product
WHERE product_no=10000; 

-------------------------------------
상품 목록 페이지 

SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0;


-------------------------------------
-- 아토피/민감성/유아 

SELECT category_nm FROM tb_category where category_cd=1;


SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0 AND category_cd=1;
-------------------------------------
-- 피부탄력/노화

SELECT category_nm FROM tb_category where category_cd=2;


SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0 AND category_cd=2;
-------------------------------------
-- 지성/여드름/트러블

SELECT category_nm FROM tb_category where category_cd=3;


SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0 AND category_cd=3;
------------------------------------------------------------
-- 미백/피부톤개선

SELECT category_nm FROM tb_category where category_cd=4;


SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0 AND category_cd=4;
*/