-- 관심상품 뷰 만듦
CREATE OR REPLACE VIEW V_INTEREST_PRODUCT
AS
SELECT i.product_no, product_name, selling_price, sale_state, represent_img, stock, i.mem_id
FROM tb_product p JOIN tb_interest i
ON (p.product_no = i.product_no) WHERE display_state=1;


-- 만들어진 관심상품 뷰에 적용되어야 할 SQL
SELECT product_no, product_name, selling_price, sale_state, represent_img, stock, mem_id
FROM V_INTEREST_PRODUCT
WHERE mem_id='soomin';



-----------------------------------------------------------------------------

-- 장바구니 뷰 만듦
CREATE View V_CART_PRODUCT
AS
SELECT c.product_no, product_name, selling_price, sale_state, represent_img, stock, c.buy_num, c.mem_id
FROM tb_product p JOIN tb_cart c 
ON (p.product_no=c.product_no) WHERE display_state=1;

-- 만들어진 장바구니 뷰에 적용되어야 할 SQL
SELECT product_no, product_name, selling_price, sale_state, represent_img, stock, buy_num, mem_id
FROM V_CART_PRODUCT
WHERE mem_id='soomin';

-- 장바구니 하나 뽑는 SQL
SELECT product_no, product_name, selling_price, sale_state, represent_img, stock, buy_num, mem_id
FROM V_CART_PRODUCT
WHERE mem_id='soomin' AND product_no=10006;


------------------------------------------------------------------------------

-- 상품 상세 페이지 
SELECT product_no, product_name, selling_price, sale_state, represent_img, detail_img, summary_ex, detail_ex, weight 
FROM tb_product
WHERE product_no=10000 AND display_state=1;

-- 상품 목록 페이지
SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0;

-- 카테고리 페이지
SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0 AND category_cd=1;

-- 상품 이름으로 상품찾음
SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0 AND product_name LIKE '%아마%';


