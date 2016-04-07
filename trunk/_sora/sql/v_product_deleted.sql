-- ������ ��ǰ ���� �������� ������ ��ǰ ����Ʈ ��� ��������
��ǰ��ȣ, �з�, ��ǰ��, �̹���, ����(����), ���, �� ���� �Ǹŷ�
-- VIEW v_product_deleted
CREATE VIEW v_product_deleted AS
SELECT p.product_no, p.product_name, p.represent_img, p.selling_price,
p.cost_price, p.stock, 
NVL((SELECT SUM(o.buy_num) FROM tb_product_n_order o WHERE o.product_no = 
p.product_no AND o.process_cd = 21
GROUP BY o.product_no), 0) AS all_sells
FROM tb_product p
WHERE p.deleted_state = 1;

-- ���� ����: ��ǰ��ȣ, �з�, ��ǰ��, ����(����), ���, �� �����Ǹŷ�
-- ORDER BY
SELECT * FROM V_PRODUCT_DELETED ORDER BY product_no;
SELECT * FROM V_PRODUCT_DELETED ORDER BY product_no desc;
SELECT * FROM V_PRODUCT_DELETED ORDER BY product_name, product_no;
SELECT * FROM V_PRODUCT_DELETED ORDER BY product_name desc, product_no;
SELECT * FROM V_PRODUCT_DELETED ORDER BY selling_price, product_no;
SELECT * FROM V_PRODUCT_DELETED ORDER BY selling_price desc, product_no;
SELECT * FROM V_PRODUCT_DELETED ORDER BY stock, product_no;
SELECT * FROM V_PRODUCT_DELETED ORDER BY stock desc, product_no;
SELECT * FROM V_PRODUCT_DELETED ORDER BY all_sells, product_no;
SELECT * FROM V_PRODUCT_DELETED ORDER BY all_sells desc, product_no;
