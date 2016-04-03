-- ��ǰ ���� �������� ��ǰ ����Ʈ ��� ��������
-- ��ǰ��ȣ, �з�, ��ǰ��, �̹���, ����, ����, ���, ���� ����, �Ǹ� ����, �� ���� �Ǹŷ�
-- VIEW v_product_manage
CREATE VIEW v_product_manage AS
SELECT "p"."product_no", "c"."category_nm", "p"."product_name",
"p"."represent_img", "p"."selling_price", "p"."cost_price", 
"p"."stock", "p"."display_state", "p"."sale_state",  
NVL((SELECT SUM("o"."buy_num") FROM "tb_product_n_order" "o" WHERE "o"."product_no" = 
"p"."product_no" AND "o"."process_cd" = 21
GROUP BY "o"."product_no"), 0) AS all_sells
FROM "tb_category" "c","tb_product" "p", "tb_product_n_order" "o"
WHERE "c"."category_cd" = "p"."category_cd"
AND "p"."product_no" = "o"."product_no"(+)
AND "p"."deleted_state" = 0
GROUP BY "p"."product_no", "c"."category_nm", "p"."product_name", "p"."represent_img", "p"."selling_price", 
"p"."cost_price", "p"."stock", "p"."weight", "p"."display_state", "p"."sale_state"
ORDER BY "p"."product_no";

-- ���� ����: ��ǰ��ȣ, �з�, ��ǰ��, ����, ���, ���� ����, �Ǹ� ����, �� �����Ǹŷ�
SELECT * FROM "V_PRODUCT_MANAGE" ORDER BY "product_no";
SELECT * FROM "V_PRODUCT_MANAGE" ORDER BY "product_no" desc;
SELECT * FROM "V_PRODUCT_MANAGE" ORDER BY "category_nm", "product_no";
SELECT * FROM "V_PRODUCT_MANAGE" ORDER BY "category_nm" desc, "product_no";
SELECT * FROM "V_PRODUCT_MANAGE" ORDER BY "product_name", "product_no";
SELECT * FROM "V_PRODUCT_MANAGE" ORDER BY "product_name" desc, "product_no";
SELECT * FROM "V_PRODUCT_MANAGE" ORDER BY "selling_price", "product_no";
SELECT * FROM "V_PRODUCT_MANAGE" ORDER BY "selling_price" desc, "product_no";
SELECT * FROM "V_PRODUCT_MANAGE" ORDER BY "stock", "product_no";
SELECT * FROM "V_PRODUCT_MANAGE" ORDER BY "stock" desc, "product_no";
SELECT * FROM "V_PRODUCT_MANAGE" ORDER BY "display_state", "product_no";
SELECT * FROM "V_PRODUCT_MANAGE" ORDER BY "display_state" desc, "product_no";
SELECT * FROM "V_PRODUCT_MANAGE" ORDER BY "sale_state", "product_no";
SELECT * FROM "V_PRODUCT_MANAGE" ORDER BY "sale_state" desc, "product_no";
SELECT * FROM "V_PRODUCT_MANAGE" ORDER BY all_sells, "product_no";
SELECT * FROM "V_PRODUCT_MANAGE" ORDER BY all_sells desc, "product_no";

