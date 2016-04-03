----------------------------------------------------------
--                관심상품 페이지 SQL
----------------------------------------------------------
-- http://localhost:8082/naturalmom_project/mypage.jsp?page=wishlist
-- (html : 로그인 상태일 경우에만 접근 가능)
-- (html : request로 회원아이디 가져옴)
-- (상품과관심상품목록테이블에서 해당하는 회원아이디의 상품번호를 얻어와서 => 그에 해당하는 상품테이블의 정보를 가져옴)
-- (html : 판매상태에 따라 html 테이블의 컬럼 [품절, 판매중]추가)

-- 관심상품 조회
-- 필요컬럼 : 상품번호, 상품명, 판매가격, 판매상태, 상품대표이미지 (삭제유무가 [0삭제안함]일때 뽑음)
SELECT "product_no", "product_name", "selling_price", "sale_state", "represent_img" 
FROM "tb_product" 
WHERE "deleted_state"=0 AND "product_no" 
IN (SELECT "product_no" FROM "tb_product_n_interest" WHERE "mem_id" = 'soomin');

--------------------------------------------------------------------------------
-- 관심상품 중복 확인
-- (html : 상품상세페이지에서 관심상품을 추가하려고 하면 관심상품이 이미 들어있는지 아닌지 확인하는 부분)
SELECT "product_no" FROM "tb_product_n_interest" WHERE "product_no"=10002 AND "mem_id"='soomin';

--------------------------------------------------------------------------------
-- 관심상품 추가
-- (html : request로 상품번호, 회원아이디 가져옴)
INSERT INTO "tb_product_n_interest" ("product_no", "mem_id") VALUES (10002, 'soomin');

--------------------------------------------------------------------------------

-- 관심상품 삭제
-- 상품번호를 받아와서 해당하는 관심상품 삭제함
DELETE FROM "tb_product_n_interest" WHERE "product_no"=10002;
