-------------------------------------------------------------
--               ��ǰ ��� ������ SQL                        --
-------------------------------------------------------------

-- http://localhost:8082/naturalmom_project/index.jsp
-- ��ü õ���� ���� 
-- (sql : �������� 1[������]�϶� ǥ��, �������� 0[��������]�϶� ǥ��) 
-- (html : �ǸŻ��� üũ [0ǰ�� 1�Ǹ���]�ؼ� html �ٲ�)
-- �ʿ��÷� : ��ǰ��ȣ, ��ǰ��, �ǸŰ���, �ǸŻ���, ��ǰ��ǥ�̹���, ��ǰ��༳��,


SELECT "product_no", "product_name", "selling_price", "sale_state", "represent_img", "summary_ex" 
FROM "tb_product"
WHERE "display_state"=1 and "deleted_state"=0;


------------------------------------------------------------

-- ������/�ΰ���/���� 
-- (html : ��ǰ���� �ٲ�)

SELECT "category_nm" from "tb_category" where "category_cd"=1;


SELECT "product_no", "product_name", "selling_price", "sale_state", "represent_img", "summary_ex" 
FROM "tb_product"
WHERE "display_state"=1 and "deleted_state"=0 and "category_cd"=1;



------------------------------------------------------------

-- �Ǻ�ź��/��ȭ

SELECT "category_nm" from "tb_category" where "category_cd"=2;


SELECT "product_no", "product_name", "selling_price", "sale_state", "represent_img", "summary_ex" 
FROM "tb_product"
WHERE "display_state"=1 and "deleted_state"=0 and "category_cd"=2;


------------------------------------------------------------

-- ����/���帧/Ʈ����

SELECT "category_nm" from "tb_category" where "category_cd"=3;


SELECT "product_no", "product_name", "selling_price", "sale_state", "represent_img", "summary_ex" 
FROM "tb_product"
WHERE "display_state"=1 and "deleted_state"=0 and "category_cd"=3;


------------------------------------------------------------

-- �̹�/�Ǻ��氳��

SELECT "category_nm" from "tb_category" where "category_cd"=4;


SELECT "product_no", "product_name", "selling_price", "sale_state", "represent_img", "summary_ex" 
FROM "tb_product"
WHERE "display_state"=1 and "deleted_state"=0 and "category_cd"=4;

