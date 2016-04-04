package nm.data.dao;

public interface ICartDao {

	public boolean insertCart();
	public boolean deleteCart();
	public boolean updateCart();
}
/*
----------------------------------------------------------
--                ��ٱ��� ������ SQL
----------------------------------------------------------
-- http://localhost:8082/naturalmom_project/basket.jsp
-- (html : �α��� ������ ��쿡�� ���� ����)
-- (html : request�� ȸ�����̵� ������)
-- (��ǰ����ٱ������̺����� �ش��ϴ� ȸ�����̵��� ��ǰ��ȣ�� ���ͼ� => �׿� �ش��ϴ� ��ٱ��� ������ ������)
-- (html : �ǸŻ��¿� ���� html ���̺��� �÷� [ǰ��, �Ǹ���]�߰�)
-- (html : �ڹٽ�ũ��Ʈ�� ��ۺ� �����ִ� �Ѱ� ����ؼ� ǥ���س�����)

-- ��ٱ��� ��ȸ 
-- �ʿ��÷� : ��ǰ��ȣ, ��ǰ��, �ǸŰ���, �ǸŻ���, ��ǰ��ǥ�̹���, ��ǰ�籸�Ű��� 
-- (��ǰ�� ���Ű����� ���� �̱� ���� ��������, �̳����� ��)
-- (���������� [0��������]�̰�, ȸ�����̵� ��) 
SELECT c."product_no", "product_name", "selling_price", "sale_state", "represent_img", c."buy_num"
FROM "tb_product" p JOIN "tb_cart" c 
ON (p."product_no"=c."product_no") 
WHERE "deleted_state"=0 
AND c."mem_id"='soomin';

--------------------------------------------------------------------------------
-- ��ٱ��� ��ǰ �ߺ� Ȯ��
-- (html : ��ٱ����� �߰��Ϸ��� �ϸ� ��ٱ��Ͽ� �̹� ����ִ��� �ƴ��� Ȯ���ϴ� �κ�)
SELECT "product_no", "mem_id", "buy_num" FROM "tb_cart" WHERE "product_no"=10000 and "mem_id"='soomin';

-- (html : ���� ��ǰ�� ��ٱ��Ͽ� ���� �� ���Ű����� �о�ͼ� 1������ ���� updateSQL ��)

--------------------------------------------------------------------------------
-- ��ٱ��� ��ǰ �߰�
-- (html : request�� ��ǰ��ȣ, ȸ�����̵� ������)
INSERT INTO "tb_cart" ("product_no", "mem_id", "buy_num") values (10000, 'soomin', 1);

--------------------------------------------------------------------------------

-- ��ٱ��� ��ǰ ����
-- ��ǰ��ȣ�� �޾ƿ��� ȸ�����̵� Ȯ���ؼ� �ش��ϴ� ���ɻ�ǰ ������, 
DELETE FROM "tb_cart" WHERE "product_no"=10000 AND "mem_id"='soomin';

--------------------------------------------------------------------------------

-- ��ٱ��Ͽ��� ��ǰ�籸�Ű��� ������
UPDATE "tb_cart" SET "buy_num"=3 WHERE "product_no"=10000 AND "mem_id"='soomin';

*/