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
-- �۹�ȣ, ����, �ۼ���, ��ȸ��, ��ۿ���, ��бۿ���, ȸ�����̵�, ��۰��� (�����ȵȱ� ������)
-- (html : qua_answer_check �� 1�̸� '�亯'���Ӹ� �޾���, qna_secret�� 1�̸� '��б�(�ڹ���ǥ��)' ����ڿ� �޾��� )
-- (html : ��� ������ 0�� �ƴ϶�� ǥ������)

-- ��� ���� ���� �������� SQL��
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_answer_check", "qna_secret", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_answer_check", "qna_secret", q."mem_id"
ORDER BY "qna_no" DESC;

-------------------------------------------------------------------------------------------
-- QnA �˻��ϴ� SQL��

-- ���� �˻�
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_answer_check", "qna_secret", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
AND "qna_title" LIKE '%�亯%'
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_answer_check", "qna_secret", q."mem_id"
ORDER BY "qna_no" DESC;


-- ���� �˻�
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_answer_check", "qna_secret", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
AND "qna_content" LIKE '%��%'
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_answer_check", "qna_secret", q."mem_id"
ORDER BY "qna_no" DESC;

-- �۾��� �˻�
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_answer_check", "qna_secret", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
AND q."mem_id" LIKE '%sora%'
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_answer_check", "qna_secret", q."mem_id"
ORDER BY "qna_no" DESC;

-- ����+���� �˻�
SELECT q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_answer_check", "qna_secret", q."mem_id", COUNT("qna_re_no")  
FROM "tb_qna" q LEFT OUTER JOIN "tb_qna_re" r
ON (q."qna_no" = r."qna_no")
WHERE "qna_del_check"=0
AND ("qna_title" LIKE '%�亯%'
OR "qna_content" LIKE '%�亯%')
GROUP BY q."qna_no", "qna_title", "qna_write_day", "qna_hits", "qna_answer_check", "qna_secret", q."mem_id"
ORDER BY "qna_no" DESC;

---------------------------------------------------------------------------------------------

-- Q&A ���ۼ��ϴ� SQL��
-- �۹�ȣ, ����, �ۼ���, ��ȸ��, ����, ��ۿ���, ��������, ��бۿ���, ��й�ȣ, �θ�Խñ�, �Խ��Ǿ��̵�, ȸ�����̵� �Է�

-- �Ϲݱ� �ۼ��� ���
INSERT INTO "tb_qna" 
( 
"qna_no",
"qna_title", "qna_write_day", "qna_hits", "qna_content", 
"qna_answer_check", "qna_del_check", "qna_secret", "qna_pw", 
"qna_parents", "board_id", "mem_id"
) 
VALUES(
QNA_NO_SEQ.NEXTVAL,
'�ȳ��ϼ���',SYSDATE, 0, '����������',
0,0,0,null,
null,4,'soomin',
);
