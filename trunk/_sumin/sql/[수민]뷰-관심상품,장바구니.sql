-----------------------------------------------------------------------
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
---------------------------------------------------------------------------

-- 관심상품 뷰 만듦
CREATE VIEW V_INTEREST
AS
SELECT i.product_no, product_name, selling_price, sale_state, represent_img, i.mem_id
FROM tb_product p JOIN tb_interest i
ON (p.product_no = i.product_no);

-- 만들어진 관심상품 뷰에 적용되어야 할 SQL
SELECT product_no, product_name, selling_price, sale_state, represent_img
FROM V_INTEREST
WHERE mem_id='soomin';

---------------------------------------------------------------------------
