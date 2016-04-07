
-- 관심상품 뷰 만듦
CREATE VIEW V_INTEREST_PRODUCT
AS
SELECT i.product_no, product_name, selling_price, sale_state, represent_img, i.mem_id
FROM tb_product p JOIN tb_interest i
ON (p.product_no = i.product_no);

-- 만들어진 관심상품 뷰에 적용되어야 할 SQL
SELECT product_no, product_name, selling_price, sale_state, represent_img, mem_id
FROM V_INTEREST_PRODUCT
WHERE mem_id='soomin';
