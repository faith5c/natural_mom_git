-- ��ǰ ����ϱ�
-- ��ǰ��, ��ǰ �з�, ��ǰ ����, ����, ���, ��ǰ �̹���, ��ǰ ��� ����, ��ǰ �� ����

INSERT INTO "tb_product" ("product_name", "selling_price", "cost_price", "stock", "display_state", "sale_state", "represent_img", "detail_img", "summary_ex", "detail_ex", "deleted_state", "weight", "category_cd", "product_no") VALUES ('�Ƹ��� ��',3500,3000,100,1,1,'http://i.imgur.com/XQxOgR0.jpg','http://naturalmom.co.kr/shop/shop_image/attach/1508/20150825103458_dssxswyt.jpg','���� ������ ������ ����','null',0,100.0,1,PRODUCT_NO_SEQ.NEXTVAL);

-- ��ǰ ���� �����ϱ�
-- ����: ��������, �Ǹ� ����, ����
-- SET (0: false, 1:true) : tb_produdct ���̺�
UPDATE "tb_product" SET "display_state" = 1 WHERE "product_no" = ?;
UPDATE "tb_product" SET "sale_state" = 1 WHERE "product_no" = ?;
UPDATE "tb_product" SET "deleted_state" = 1, "display_state" = 1, "sale_state" = 1 WHERE "product_no" = ?;



-- ��ǰ �����ϱ� �������� ��ǰ ���� �� ���� ��������
��ǰ��, ��ǰ�з�, ��ǰ ����, ���� ����, ���, ��ǰ��ǥ �̹���, ��ǰ ��༳��, ��ǰ �� ����, ���� ����, �Ǹ� ����
-- SELECT
SELECT "product_name", "category_cd", "selling_price", "cost_price", "stock", "weight",
"represent_img", "detail_img", "summary_ex", "detail_ex", "display_state", "sale_state"
FROM "tb_product";

-- UPDATE : ��ǰ ������ �� ���뿡 �ֱ�
UPDATE "tb_product" SET "product_name" = '���� ��', "category_cd" = 3, "selling_price" = 4500, "cost_price" = 3700, "stock" = 80, "weight" = 100,
"represent_img" = 'http://i.imgur.com/BgjzGXR.jpg',"detail_img" = 'http://naturalmom.co.kr/shop/shop_image/attach/1512/20151207144609_iumbvwrf.jpg', 
"summary_ex" = '������ �Ǻ����� ����', "detail_ex" = NULL, "display_state" = 1, "sale_state" = 1
WHERE "product_no" = 10002;



-- ���� ��ǰ ����
-- UPDATE
UPDATE "tb_product" SET "deleted_state" = 0, "display_state" = 1, "sale_state" = 1 WHERE "product_no" = ?;
