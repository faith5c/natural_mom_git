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
WHERE "deleted_state"=0 AND "product_no" 
IN (SELECT "product_no" FROM "tb_product_n_interest" WHERE "mem_id" = 'soomin');

--------------------------------------------------------------------------------
-- ���ɻ�ǰ �ߺ� Ȯ��
-- (html : ��ǰ������������ ���ɻ�ǰ�� �߰��Ϸ��� �ϸ� ���ɻ�ǰ�� �̹� ����ִ��� �ƴ��� Ȯ���ϴ� �κ�)
SELECT "product_no" FROM "tb_product_n_interest" WHERE "product_no"=10002 AND "mem_id"='soomin';

--------------------------------------------------------------------------------
-- ���ɻ�ǰ �߰�
-- (html : request�� ��ǰ��ȣ, ȸ�����̵� ������)
INSERT INTO "tb_product_n_interest" ("product_no", "mem_id") VALUES (10002, 'soomin');

--------------------------------------------------------------------------------

-- ���ɻ�ǰ ����
-- ��ǰ��ȣ�� �޾ƿͼ� �ش��ϴ� ���ɻ�ǰ ������
DELETE FROM "tb_product_n_interest" WHERE "product_no"=10002;
