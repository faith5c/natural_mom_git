----------------------------------------------------
--  QnA SQL
----------------------------------------------------
-- (html : ȸ����޿� ���� ������ �ڹٽ�ũ��Ʈ���� ����)
-- ȸ�����̺��� ȸ�����̵�� ȸ������ڵ带 �����ͼ� 
-- ȸ����ް� �Խ��� ���̺��� QnA�� ������ �����ΰ� Ȯ���ϴ� ����
SELECT "board_read", "board_write", "board_modify", "board_delete" 
FROM "tb_mem_level_n_board" 
WHERE "board_cd"=4 
AND "mem_level_cd"=
(SELECT "mem_level_cd" 
FROM "tb_member" 
WHERE "mem_id"='soomin');

--------------------------------------------------------------------------------------------
-- �Խ��� ��� ����
-- �۹�ȣ, ����, �ۼ���, ��ȸ��, ��й�ȣ, �����ġ, �����۹�ȣ, ȸ�����̵�, ��۰��� (�����ȵȱ� ������)
-- (html : qua_answer_check �� 1�̸� '�亯'���Ӹ� �޾���, qna_secret�� 1�̸� '��б�(�ڹ���ǥ��)' ����ڿ� �޾��� )
-- (html : ��� ������ 0�� �ƴ϶�� ǥ������)

-- ��� ���� ���� �������� SQL��
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_pw", "qna_pos", "qna_ref", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_pw", "qna_pos", "qna_ref", q."mem_id"
ORDER BY "qna_ref" DESC, "qna_pos" DESC;

-------------------------------------------------------------------------------------------
-- QnA �˻��ϴ� SQL��

-- ���� �˻�
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_pw", "qna_pos", "qna_ref", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
AND "qna_title" LIKE '%�亯%'
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_pw", "qna_pos", "qna_ref", q."mem_id"
ORDER BY "qna_ref" DESC, "qna_pos" DESC;


-- ���� �˻�
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_pw", "qna_pos", "qna_ref", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
AND "qna_content" LIKE '%��%'
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_pw", "qna_pos", "qna_ref", q."mem_id"
ORDER BY "qna_ref" DESC, "qna_pos" DESC;

-- �۾��� �˻�
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_pw", "qna_pos", "qna_ref", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
AND q."mem_id" LIKE '%sora%'
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_pw", "qna_pos", "qna_ref", q."mem_id"
ORDER BY "qna_ref" DESC, "qna_pos" DESC;


-- ����+���� �˻�
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_pw", "qna_pos", "qna_ref", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
AND ("qna_title" LIKE '%�亯%'
OR "qna_content" LIKE '%�亯%')
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_pw", "qna_pos", "qna_ref", q."mem_id"
ORDER BY "qna_ref" DESC, "qna_pos" DESC;


---------------------------------------------------------------------------------------------

-- Q&A ���ۼ��ϴ� SQL��
-- (html : ����̸� [�亯]���Ӹ� �־ ���� ĭ���ٰ� �ϴ� ǥ����)

-- ���ۼ�
-- �۹�ȣ, ����, �ۼ���, ��ȸ��, ����, ��������, ��й�ȣ, �����ġ, �����۹�ȣ, �Խ��Ǿ��̵�, ȸ�����̵� �Է�
INSERT INTO "tb_qna" ("qna_no",
"qna_title","qna_write_day","qna_hits",
"qna_content",
"qna_del_check", "qna_pw", 
"qna_pos","qna_ref",
"board_id", "mem_id")
VALUES (QNA_NO_SEQ.NEXTVAL,
'�� ������ �̲��������',SYSDATE,0, 
'�ʹ� �̲�������. �ȹ̲����� �񴩴� ������?',
0,null,
0, QNA_NO_SEQ.CURRVAL,
4, 'soomin');

------------------------------------------------------------------------------------------

-- �Ϲݱ���ȸ
-- �۹�ȣ, ����, �ۼ���, ��ȸ��, ����, ��й�ȣ, �����ġ, �����۹�ȣ, ȸ�����̵�, ��۰���(�����ȵȰɷ�, �۹�ȣ�� �ش��ϴ°�)
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_content", "qna_pw", "qna_pos", "qna_ref", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
AND q."qna_no"=1
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_content", "qna_pw", "qna_pos", "qna_ref", q."mem_id"
ORDER BY "qna_ref" DESC, "qna_pos" DESC;


-- �����ȸ
-- ��۹�ȣ, ����, �ۼ���, ��ۻ�������, ȸ�����̵�(���� �ȵȰɷ�, �Խñ۹�ȣ�� �´°�)
SELECT "qna_re_no", "qna_re_content", "qna_re_write_day", "mem_id"
FROM "tb_qna_re"
WHERE "qna_re_del_check"=0 AND "qna_no"=1;


-- ����ۼ�
-- ��۹�ȣ, ����, �ۼ���, ��ۻ�������, �Խñ۹�ȣ, ȸ�����̵�
INSERT INTO "tb_qna_re" 
("qna_re_no", "qna_re_content", "qna_re_write_day", "qna_re_del_check", "qna_no", "mem_id")
VALUES (QNA_RE_NO_SEQ.NEXTVAL, '���⼭ �����ϸ� �ǰڳ׿�', SYSDATE, 0, 1, 'soojin');
------------------------------------------------------------------------------------------

-- ��б� ��ȸ�� ��й�ȣ �´��� Ȯ���ϴ� SQL ����
-- �۹�ȣ, ����, �ۼ���, ��ȸ��, ����, ��й�ȣ, �����ġ, �����۹�ȣ, ȸ�����̵�, ��۰���(�����ȵȰɷ�, �۹�ȣ�� �ش��ϴ°�)
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_content", "qna_pw", "qna_pos", "qna_ref", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
AND q."qna_no"=4
AND q."qna_pw"='1234'
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_content", "qna_pw", "qna_pos", "qna_ref", q."mem_id"
ORDER BY "qna_ref" DESC, "qna_pos" DESC;


-----------------------------------------------------------------------------------------------

-- �� ����
-- ����, �ۼ���, ����, ��й�ȣ �Է� (�۹�ȣ�� �ش��ϴ� �� ����)
UPDATE "tb_qna" 
SET 
"qna_title"='�� ������ �̲���������', 
"qna_write_day"=SYSDATE,
"qna_content"='�ʹ� �̲�������. �ȹ̲����� �񴩴� ������???',
"qna_pw"='1111'
WHERE "qna_no"=10;

-- ��� ����
-- ����, �ۼ��� (��۹�ȣ�� �ش��ϴ°� ����)
UPDATE "tb_qna_re"
SET 
"qna_re_content"='���⼭ �����ϸ� �ǰڳ׿�',
"qna_re_write_day"=SYSDATE 
WHERE "qna_re_no"=7;

-----------------------------------------------------------------------------------------------

-- �� ����
UPDATE "tb_qna" SET "qna_del_check"=1 WHERE "qna_no"=7;
-- (���� �����Ǹ� �̾ �ڵ����� �亯 �۵� �����ϰ� �ؾ���)
UPDATE "tb_qna" SET "qna_del_check"=1 WHERE "qna_ref"=7;
-- (���� �����Ǹ� �̾ ��۵� �����ϰ� �ؾ���)
UPDATE "tb_qna_re" SET "qna_re_del_check"=1 WHERE "qna_no"=7;



-- ��� ����
UPDATE "tb_qna_re" SET "qna_re_del_check"=1 WHERE "qna_re_no"=7;
------------------------------------------------------------------------------------------------