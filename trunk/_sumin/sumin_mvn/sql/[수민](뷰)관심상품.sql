
-- 관심상품 뷰 만듦
CREATE OR REPLACE VIEW V_INTEREST_PRODUCT
AS
SELECT i.product_no, product_name, selling_price, display_state, represent_img, stock, i.mem_id
FROM tb_product p WHERE sale_state=1 JOIN tb_interest i
ON (p.product_no = i.product_no);

-- 만들어진 관심상품 뷰에 적용되어야 할 SQL
SELECT product_no, product_name, selling_price, display_state, represent_img, stock, mem_id
FROM V_INTEREST_PRODUCT 
WHERE mem_id='soomin' WHERE sale_state=1;
