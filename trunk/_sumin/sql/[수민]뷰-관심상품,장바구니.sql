-----------------------------------------------------------------------
-- ��ٱ��� �� ����
CREATE View V_CART 
AS
SELECT c.product_no, product_name, selling_price, sale_state, represent_img, c.buy_num, c.mem_id
FROM tb_product p JOIN tb_cart c 
ON (p.product_no=c.product_no) 
WHERE deleted_state=0;

-- ������� ��ٱ��� �信 ����Ǿ�� �� SQL
SELECT product_no, product_name, selling_price, sale_state, represent_img, buy_num 
FROM V_CART 
WHERE mem_id='soomin';
---------------------------------------------------------------------------

-- ���ɻ�ǰ �� ����
CREATE VIEW V_INTEREST
AS
SELECT i.product_no, product_name, selling_price, sale_state, represent_img, i.mem_id
FROM tb_product p JOIN tb_interest i
ON (p.product_no = i.product_no);

-- ������� ���ɻ�ǰ �信 ����Ǿ�� �� SQL
SELECT product_no, product_name, selling_price, sale_state, represent_img
FROM V_INTEREST
WHERE mem_id='soomin';

---------------------------------------------------------------------------
