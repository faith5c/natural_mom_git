------------------------------------------------------
--    �����ϴ� ����(FAQ) SQL
------------------------------------------------------

-- ��� ��ȸ
-- �۹�ȣ, ���� (�������� Ȯ��, �Խ��ǹ�ȣ�� �ش��ϴ°�)
SELECT "faq_no", "faq_title" 
FROM "tb_faq" 
WHERE "board_id"=3 AND "faq_del_check"=0 
ORDER BY "faq_no" ASC;

----------------------------------------------------------
-- �����ϴ� ���� �˻��ϴ� SQL ��

-- �Խ��� �� �˻� (����)
SELECT "faq_no", "faq_title" 
FROM "tb_faq" 
WHERE "board_id"=3 AND "faq_del_check"=0 
AND "faq_title" LIKE '%���%'
ORDER BY "faq_no" ASC;


-- �Խ��� �� �˻� (����)
SELECT "faq_no", "faq_title" 
FROM "tb_faq" 
WHERE "board_id"=3 AND "faq_del_check"=0 
AND "faq_content" LIKE '%�ֹ�%'
ORDER BY "faq_no" ASC;


-- �Խ��� �� �˻� (���� + ����)
SELECT "faq_no", "faq_title" 
FROM "tb_faq" 
WHERE "board_id"=3 AND "faq_del_check"=0 
AND ("faq_title" LIKE '%����%'
OR "faq_content" LIKE '%����%')
ORDER BY "faq_no" ASC;

-------------------------------------------------------
-- �Խ��� ���б�
-- �۹�ȣ, ����, ���� (�������� Ȯ��, �Խ��ǹ�ȣ�� �ش��ϴ°�)
SELECT "faq_no", "faq_title", "faq_content" 
FROM "tb_faq" 
WHERE "board_id"=3 AND "faq_del_check"=0 
AND "faq_no"=1;

-------------------------------------------------------
-- �Խ��� �۾���
INSERT INTO "tb_faq" 
("faq_title", "faq_content", "faq_del_check", "board_id", "mem_id", "faq_no")
VALUES 
('ȯ���Ϸ��� ��� �ؾ��ϳ���?', 
'��ܿ� �ִ� �ֹ���ȸ�޴��� ���� ��ǰ�� �����ϰ� ȯ�ҽ�û�� �����ø� �˴ϴ�.', 
0,3,'admin01', FAQ_NO_SEQ.NEXTVAL);

-------------------------------------------------------
-- �Խ��� �ۼ���
UPDATE "tb_faq" 
SET 
"faq_title"='ȯ���Ϸ��� ��� �ؾ� �ϳ���?', 
"faq_content"='��ܿ� �ִ� �ֹ���ȸ�޴��� ���� ��ǰ�� �����ϰ� ȯ�ҽ�û ��ư�� �����ø� �˴ϴ�.'
WHERE "faq_no"=21;

-------------------------------------------------------
-- �Խ��� �ۻ���
UPDATE "tb_faq"
SET
"faq_del_check"=1
WHERE "faq_no"=22;

-------------------------------------------------------