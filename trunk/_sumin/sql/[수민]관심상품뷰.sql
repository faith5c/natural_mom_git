
-- ���ɻ�ǰ �� ����
CREATE VIEW V_INTEREST_PRODUCT
AS
SELECT i.product_no, product_name, selling_price, sale_state, represent_img, i.mem_id
FROM tb_product p JOIN tb_interest i
ON (p.product_no = i.product_no);

-- ������� ���ɻ�ǰ �信 ����Ǿ�� �� SQL
SELECT product_no, product_name, selling_price, sale_state, represent_img, mem_id
FROM V_INTEREST_PRODUCT
WHERE mem_id='soomin';
