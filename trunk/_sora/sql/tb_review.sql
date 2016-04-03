-- �Խ��� ��� �̱� (����Ʈ)
����, �ۼ���, �ۼ���, ������, ����
SELECT "review_no", "rvw_title", "rvw_write_day", "rvw_hits", "rvw_content", "rvw_satisfaction", "mem_id"
FROM "tb_review"
WHERE "rvw_del_check" = 0 AND "product_no" = 10003;

-- �Խ��� �� �� ���� �Է� (����Ʈ)
����, �ۼ���, ����
INSERT INTO "tb_review" ("rvw_title", "rvw_write_day", "rvw_hits", "rvw_content", "rvw_del_check", "rvw_satisfaction", "product_no", "board_id", "mem_id", "review_no") VALUES ('�����¡',SYSDATE,5,'�ε�ε� ������ ¯��! ',0,4,10003,5,'soojin', REVIEW_NO_SEQ.NEXTVAL);

-- �Խ��� �� ���� �� ���� �ҷ����� & �����ϱ� (����Ʈ)
SELECT "rvw_title", "rvw_content", "mem_id"
FROM "tb_review"
WHERE "review_no" = ?;

-- �Խ��� ��� �̱� (��)
��ǰ��ȣ, ��ǰ��, ����, �ۼ���, �ۼ���, ������
SELECT "r"."review_no", "r"."product_no", "p"."product_name", "r"."rvw_title",
"r"."mem_id", "r"."rvw_write_day", "r"."rvw_satisfaction"
FROM "tb_review" "r", "tb_product" "p"
WHERE "r"."product_no" = "p"."product_no"
AND "r"."rvw_del_check" = 0;

-- �Խ��� ���� �̱� (��)
��ǰ��ȣ, ��ǰ��, ����, ������, �ۼ���, �ۼ���, ��ȸ��, ����
SELECT "r"."product_no", "p"."product_name", "r"."rvw_title",
"r"."rvw_satisfaction", "r"."mem_id", "r"."rvw_write_day", 
"r"."rvw_hits", "r"."rvw_content"
FROM "tb_review" "r", "tb_product" "p"
WHERE "r"."product_no" = "p"."product_no"
AND "r"."review_no" = ?;

-- �� �����ϱ�(��&����Ʈ)
UPDATE "tb_review" SET "rvw_del_check" = 1
WHERE "review_no" = ?;

-- �������� �˻��ϱ� (��)
SELECT "r"."review_no", "r"."product_no", "p"."product_name", "r"."rvw_title",
"r"."mem_id", "r"."rvw_write_day", "r"."rvw_satisfaction"
FROM "tb_review" "r", "tb_product" "p"
WHERE "r"."product_no" = "p"."product_no"
AND "r"."rvw_del_check" = 0
AND "r"."rvw_title" LIKE '%����%';

-- �������� �˻��ϱ� (��)
SELECT "r"."review_no", "r"."product_no", "p"."product_name", "r"."rvw_title",
"r"."mem_id", "r"."rvw_write_day", "r"."rvw_satisfaction"
FROM "tb_review" "r", "tb_product" "p"
WHERE "r"."product_no" = "p"."product_no"
AND "r"."rvw_del_check" = 0
AND "r"."rvw_content" LIKE '%¯��%';

-- �۾��̷� �˻��ϱ� (��)
SELECT "r"."review_no", "r"."product_no", "p"."product_name", "r"."rvw_title",
"r"."mem_id", "r"."rvw_write_day", "r"."rvw_satisfaction"
FROM "tb_review" "r", "tb_product" "p"
WHERE "r"."product_no" = "p"."product_no"
AND "r"."rvw_del_check" = 0
AND "r"."mem_id" LIKE '%so%';

-- ���� + �������� �˻��ϱ� (��)
SELECT "r"."review_no", "r"."product_no", "p"."product_name", "r"."rvw_title",
"r"."mem_id", "r"."rvw_write_day", "r"."rvw_satisfaction"
FROM "tb_review" "r", "tb_product" "p"
WHERE "r"."product_no" = "p"."product_no"
AND "r"."rvw_del_check" = 0
AND ("r"."rvw_title" LIKE '%¯��%' OR "r"."rvw_content" LIKE '%¯��%');