----------------------------------------------------------
--                장바구니 페이지 SQL
----------------------------------------------------------
-- http://localhost:8082/naturalmom_project/basket.jsp
-- (html : 로그인 상태일 경우에만 접근 가능)
-- (html : request로 회원아이디 가져옴)
-- (상품과장바구니테이블에서 해당하는 회원아이디의 상품번호를 얻어와서 => 그에 해당하는 장바구니 정보를 가져옴)
-- (html : 판매상태에 따라 html 테이블의 컬럼 [품절, 판매중]추가)
-- (html : 자바스크립트로 배송비 옆에있는 총계 계산해서 표시해놔야함)

-- 장바구니 조회 
-- 필요컬럼 : 상품번호, 상품명, 판매가격, 판매상태, 상품대표이미지, 상품당구매개수 
-- (상품당 구매개수를 같이 뽑기 위해 동등조인, 이너조인 함)
-- (삭제유무가 [0삭제안함]이고, 회원아이디 비교) 

/*
 * 장바구니 뷰 만듦
SELECT c.product_no, product_name, selling_price, sale_state, represent_img, c.buy_num
FROM tb_product p JOIN tb_cart c 
ON (p.product_no=c.product_no) 
WHERE deleted_state=0 
AND c.mem_id='soomin';
*/

-- 장바구니 뷰 만듦
CREATE View V_CART 
AS
SELECT c.product_no, product_name, selling_price, sale_state, represent_img, c.buy_num, c.mem_id
FROM tb_product p JOIN tb_cart c 
ON (p.product_no=c.product_no) 
WHERE deleted_state=0;

-- 만들어진 장바구니 뷰에 적용되어야 할 SQL
SELECT product_no, product_name, selling_price, sale_state, represent_img, buy_num 
FROM V_CART 
WHERE mem_id='soomin';

--------------------------------------------------------------------------------
-- 장바구니 상품 중복 확인
-- (html : 장바구니을 추가하려고 하면 장바구니에 이미 들어있는지 아닌지 확인하는 부분)
SELECT product_no, mem_id, buy_num FROM tb_cart WHERE product_no=10000 and mem_id='soomin';

-- (html : 같은 상품을 장바구니에 넣을 때 구매개수를 읽어와서 1증가한 수로 updateSQL 함)

--------------------------------------------------------------------------------
-- 장바구니 상품 추가
-- (html : request로 상품번호, 회원아이디 가져옴)
INSERT INTO tb_cart (product_no, mem_id, buy_num) values (10000, 'soomin', 1);

--------------------------------------------------------------------------------

-- 장바구니 상품 삭제
-- 상품번호를 받아오고 회원아이디 확인해서 해당하는 관심상품 삭제함, 
DELETE FROM tb_cart WHERE product_no=10000 AND mem_id='soomin';

--------------------------------------------------------------------------------

-- 장바구니에서 상품당구매개수 수정함
UPDATE tb_cart SET buy_num=3 WHERE product_no=10000 AND mem_id='soomin';
