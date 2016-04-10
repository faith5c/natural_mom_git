-------------------------------------------------------------
--               상품 상세 페이지                        --
-------------------------------------------------------------
-- (상품목록페이지에서 넘어올 때 => 진열상태가 0[진열안함]이거나 삭제유무가 1[삭제]이거나 판매상태가 0[품절]일때는 이곳에 들어오지 못함
-- 그러나 일단 다른 페이지에서 들어오는 경우를 대비해서 모든 상세페이지를 만들 수 있게 만들어놓겠음.)
-- http://localhost:8082/naturalmom_project/product_soap_1.jsp

-- 상품 상세 페이지 
-- (sql : 상품번호를 받아올 필요가 있다. 상품번호에 해당하는 데이터 가져옴)
-- (html : 판매상태 체크 [0품절 1판매중]해서 html 바꿈)
-- (html : 판매상태가 [0판매안함]일 때 품절이라고 표시해주고 장바구니, 관심상품, 바로구매 버튼을 못누르게 함)
-- 필요컬럼 : 상품번호, 상품명, 판매가격, 판매상태, 상품대표이미지, 상품상세이미지, 상품요약설명, 상품상세설명, 중량

SELECT product_no, product_name, selling_price, sale_state, represent_img, detail_img, summary_ex, detail_ex, weight 
FROM tb_product
WHERE product_no=10000;



-------------------------------------------------------------
--               상품 목록 페이지 SQL                        --
-------------------------------------------------------------

-- http://localhost:8082/naturalmom_project/index.jsp
-- 전체 천연비누 모음 
-- (sql : 진열상태 1[진열함]일때 표시, 삭제유무 0[삭제안함]일때 표시) 
-- (html : 판매상태 체크 [0품절 1판매중]해서 html 바꿈)
-- 필요컬럼 : 상품번호, 상품명, 판매가격, 판매상태, 상품대표이미지, 상품요약설명,


SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0;


------------------------------------------------------------

-- 아토피/민감성/유아 
-- (html : 상품종류 바꿈)

-- SELECT category_nm FROM tb_category where category_cd=1;


SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0 AND category_cd=1;



------------------------------------------------------------

-- 피부탄력/노화

-- SELECT category_nm FROM tb_category where category_cd=2;


SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0 AND category_cd=2;


------------------------------------------------------------

-- 지성/여드름/트러블

-- SELECT category_nm FROM tb_category where category_cd=3;


SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0 AND category_cd=3;


------------------------------------------------------------

-- 미백/피부톤개선

-- SELECT category_nm FROM tb_category where category_cd=4;


SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0 AND category_cd=4;

------------------------------------------------------------

-- 상품이름으로 상품 찾음

SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0 AND product_name LIKE '%아마%';

