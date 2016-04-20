-- 장바구니 뷰 만듦
CREATE View V_CART_PRODUCT
AS
SELECT c.product_no, product_name, selling_price, sale_state, represent_img, stock, c.buy_num, c.mem_id
FROM tb_product p JOIN tb_cart c 
ON (p.product_no=c.product_no);

-- 만들어진 장바구니 뷰에 적용되어야 할 SQL
SELECT product_no, product_name, selling_price, sale_state, represent_img, stock, buy_num, mem_id
FROM V_CART_PRODUCT
WHERE mem_id='soomin';

-- 장바구니 하나 뽑는 SQL
SELECT product_no, product_name, selling_price, sale_state, represent_img, stock, buy_num, mem_id
FROM V_CART_PRODUCT
WHERE mem_id='soomin' AND product_no=10006;