DROP VIEW V_INTEREST;
DROP VIEW V_CART;

CREATE VIEW V_INTEREST_PRODUCT
AS
SELECT i.product_no, product_name, selling_price, sale_state, represent_img, i.mem_id
FROM tb_product p JOIN tb_interest i
ON (p.product_no = i.product_no);

CREATE View V_CART_PRODUCT
AS
SELECT c.product_no, product_name, selling_price, sale_state, represent_img, c.buy_num, c.mem_id
FROM tb_product p JOIN tb_cart c 
ON (p.product_no=c.product_no);