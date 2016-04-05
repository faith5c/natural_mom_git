-------------------------------------------------------------
--               ��ǰ �� ������                        --
-------------------------------------------------------------
-- (��ǰ������������� �Ѿ�� �� => �������°� 0[��������]�̰ų� ���������� 1[����]�̰ų� �ǸŻ��°� 0[ǰ��]�϶��� �̰��� ������ ����
-- �׷��� �ϴ� �ٸ� ���������� ������ ��츦 ����ؼ� ��� ���������� ���� �� �ְ� ����������.)
-- http://localhost:8082/naturalmom_project/product_soap_1.jsp

-- ��ǰ �� ������ 
-- (sql : ��ǰ��ȣ�� �޾ƿ� �ʿ䰡 �ִ�. ��ǰ��ȣ�� �ش��ϴ� ������ ������)
-- (html : �ǸŻ��� üũ [0ǰ�� 1�Ǹ���]�ؼ� html �ٲ�)
-- (html : �ǸŻ��°� [0�Ǹž���]�� �� ǰ���̶�� ǥ�����ְ� ��ٱ���, ���ɻ�ǰ, �ٷα��� ��ư�� �������� ��)
-- �ʿ��÷� : ��ǰ��ȣ, ��ǰ��, �ǸŰ���, �ǸŻ���, ��ǰ��ǥ�̹���, ��ǰ���̹���, ��ǰ��༳��, ��ǰ�󼼼���, �߷�

SELECT product_no, product_name, selling_price, sale_state, represent_img, detail_img, summary_ex, detail_ex, weight 
FROM tb_product
WHERE product_no=10000;



-------------------------------------------------------------
--               ��ǰ ��� ������ SQL                        --
-------------------------------------------------------------

-- http://localhost:8082/naturalmom_project/index.jsp
-- ��ü õ���� ���� 
-- (sql : �������� 1[������]�϶� ǥ��, �������� 0[��������]�϶� ǥ��) 
-- (html : �ǸŻ��� üũ [0ǰ�� 1�Ǹ���]�ؼ� html �ٲ�)
-- �ʿ��÷� : ��ǰ��ȣ, ��ǰ��, �ǸŰ���, �ǸŻ���, ��ǰ��ǥ�̹���, ��ǰ��༳��,


SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0;


------------------------------------------------------------

-- ������/�ΰ���/���� 
-- (html : ��ǰ���� �ٲ�)

-- SELECT category_nm FROM tb_category where category_cd=1;


SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0 AND category_cd=1;



------------------------------------------------------------

-- �Ǻ�ź��/��ȭ

-- SELECT category_nm FROM tb_category where category_cd=2;


SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0 AND category_cd=2;


------------------------------------------------------------

-- ����/���帧/Ʈ����

-- SELECT category_nm FROM tb_category where category_cd=3;


SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0 AND category_cd=3;


------------------------------------------------------------

-- �̹�/�Ǻ��氳��

-- SELECT category_nm FROM tb_category where category_cd=4;


SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0 AND category_cd=4;

