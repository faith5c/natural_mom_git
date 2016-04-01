----------------------------------------------------------
--                ���ɻ�ǰ ������ SQL
----------------------------------------------------------
-- http://localhost:8082/naturalmom_project/mypage.jsp?page=wishlist
-- (html : �α��� ������ ��쿡�� ���� ����)
-- (html : request�� ȸ�����̵� ������)
-- (��ǰ�����ɻ�ǰ������̺��� �ش��ϴ� ȸ�����̵��� ��ǰ��ȣ�� ���ͼ� => �׿� �ش��ϴ� ��ǰ���̺��� ������ ������)
-- (html : �ǸŻ��¿� ���� html ���̺��� �÷� [ǰ��, �Ǹ���]�߰�)

-- ���ɻ�ǰ ��ȸ
-- �ʿ��÷� : ��ǰ��ȣ, ��ǰ��, �ǸŰ���, �ǸŻ���, ��ǰ��ǥ�̹��� (���������� [0��������]�϶� ����)
SELECT "product_no", "product_name", "selling_price", "sale_state", "represent_img" 
FROM "tb_product" 
WHERE "deleted_state"=0 and "product_no" 
IN (SELECT "product_no" from "tb_product_n_interest" where "mem_id" = 'soomin');

--------------------------------------------------------------------------------

-- ���ɻ�ǰ �߰�
-- (html : request�� ��ǰ��ȣ, ȸ�����̵� ������)
INSERT INTO "tb_product_n_interest" ("product_no", "mem_id") values (10002, 'soomin');

--------------------------------------------------------------------------------

-- ���ɻ�ǰ 