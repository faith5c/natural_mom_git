-- ��ٱ��� �� ����
CREATE View V_CART_PRODUCT
AS
SELECT c.product_no, product_name, selling_price, sale_state, represent_img, c.buy_num, c.mem_id
FROM tb_product p JOIN tb_cart c 
ON (p.product_no=c.product_no);

-- ������� ��ٱ��� �信 ����Ǿ�� �� SQL
SELECT product_no, product_name, selling_price, sale_state, represent_img, buy_num, mem_id
FROM V_CART_PRODUCT
WHERE mem_id='soomin';