-- �Խ��� ��� �̱� (����Ʈ)
���̵�, ��� ����, ��� �� ��¥
SELECT review_re_no,  rvw_re_content, rvw_re_write_day, mem_id
FROM tb_review_re
WHERE rvw_re_del_check = 0 AND rvw_no = 7;

-- �Խ��� ��� �̱� (��)
���̵�, ��� ����, ��¥
SELECT review_re_no, rvw_re_content, rvw_re_write_day, mem_id
FROM tb_review_re
WHERE rvw_re_del_check = 0 AND rvw_no = 7;

-- ��� ����ϱ�(��&����Ʈ)
INSERT INTO tb_review_re (rvw_re_content, rvw_re_write_day, rvw_re_del_check, rvw_no, mem_id, review_re_no) VALUES ('�������ּż� �����ϴ�~^^ �� ���� ��ǰ���� �����ϴ� �ڿ����� �ǰڽ��ϴ�.',SYSDATE,0.0,1.0,'admin01', REVIEW_RE_NO_SEQ.NEXTVAL);

-- ��� �����ϱ�(��&����Ʈ)
UPDATE tb_review_re SET rvw_re_content = '�ѳ� ���� ���ض�~'
WHERE review_re_no = 1;

-- ��� �����ϱ�(��&����Ʈ)
UPDATE tb_review_re SET rvw_re_del_check = 1
WHERE review_re_no = ?;
