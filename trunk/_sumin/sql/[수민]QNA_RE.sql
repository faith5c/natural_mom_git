
-- ����ۼ�
-- ��۹�ȣ, ����, �ۼ���, ��ۻ�������, �Խñ۹�ȣ, ȸ�����̵�
INSERT INTO tb_qna_re 
(qna_re_no, qna_re_content, qna_re_write_day, qna_re_del_check, qna_no, mem_id)
VALUES (QNA_RE_NO_SEQ.NEXTVAL, '���⼭ �����ϸ� �ǰڳ׿�', SYSDATE, 0, 1, 'soojin');


-- �����ȸ
-- ��۹�ȣ, ����, �ۼ���, ��ۻ�������, ȸ�����̵�(���� �ȵȰɷ�, �Խñ۹�ȣ�� �´°�)
SELECT qna_re_no, qna_re_content, qna_re_write_day, mem_id
FROM tb_qna_re
WHERE qna_re_del_check=0 AND qna_no=1;


-- ��� ����
-- ����, �ۼ��� (��۹�ȣ�� �ش��ϴ°� ����)
UPDATE tb_qna_re
SET 
qna_re_content='���⼭ �����ϸ� �ǰڳ׿�',
qna_re_write_day=SYSDATE 
WHERE qna_re_no=7;


-- ��� ����
UPDATE tb_qna_re SET qna_re_del_check=1 WHERE qna_re_no=7;