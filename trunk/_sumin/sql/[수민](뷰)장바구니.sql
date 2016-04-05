-- 장바구니 뷰 만듦
CREATE View V_CART_PRODUCT
AS
SELECT c.product_no, product_name, selling_price, sale_state, represent_img, c.buy_num, c.mem_id
FROM tb_product p JOIN tb_cart c 
ON (p.product_no=c.product_no);

-- 만들어진 장바구니 뷰에 적용되어야 할 SQL
SELECT product_no, product_name, selling_price, sale_state, represent_img, buy_num, mem_id
FROM V_CART_PRODUCT
WHERE mem_id='soomin';