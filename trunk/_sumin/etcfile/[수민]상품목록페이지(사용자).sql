-------------------------------------------------------------
--               상품 목록 페이지 SQL                        --
-------------------------------------------------------------

-- http://localhost:8082/naturalmom_project/index.jsp
-- 전체 천연비누 모음 
-- (sql : 진열상태 1[진열함]일때 표시, 삭제유무 0[삭제안함]일때 표시) 
-- (html : 판매상태 체크 [0품절 1판매중]해서 html 바꿈)
-- 필요컬럼 : 상품번호, 상품명, 판매가격, 판매상태, 상품대표이미지, 상품요약설명,


SELECT "product_no", "product_name", "selling_price", "sale_state", "represent_img", "summary_ex" 
FROM "tb_product"
WHERE "display_state"=1 and "deleted_state"=0;


------------------------------------------------------------

-- 아토피/민감성/유아 
-- (html : 상품종류 바꿈)

SELECT "category_nm" from "tb_category" where "category_cd"=1;


SELECT "product_no", "product_name", "selling_price", "sale_state", "represent_img", "summary_ex" 
FROM "tb_product"
WHERE "display_state"=1 and "deleted_state"=0 and "category_cd"=1;



------------------------------------------------------------

-- 피부탄력/노화

SELECT "category_nm" from "tb_category" where "category_cd"=2;


SELECT "product_no", "product_name", "selling_price", "sale_state", "represent_img", "summary_ex" 
FROM "tb_product"
WHERE "display_state"=1 and "deleted_state"=0 and "category_cd"=2;


------------------------------------------------------------

-- 지성/여드름/트러블

SELECT "category_nm" from "tb_category" where "category_cd"=3;


SELECT "product_no", "product_name", "selling_price", "sale_state", "represent_img", "summary_ex" 
FROM "tb_product"
WHERE "display_state"=1 and "deleted_state"=0 and "category_cd"=3;


------------------------------------------------------------

-- 미백/피부톤개선

SELECT "category_nm" from "tb_category" where "category_cd"=4;


SELECT "product_no", "product_name", "selling_price", "sale_state", "represent_img", "summary_ex" 
FROM "tb_product"
WHERE "display_state"=1 and "deleted_state"=0 and "category_cd"=4;

