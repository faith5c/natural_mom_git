-- �Խ��� �� �� ���� �Է� (����Ʈ)
����, �ۼ���, ����
INSERT INTO tb_review (rvw_title, rvw_write_day, rvw_hits, rvw_content, rvw_del_check, rvw_satisfaction, product_no, board_id, mem_id, review_no) VALUES ('�����¡',SYSDATE,5,'�ε�ε� ������ ¯��! ',0,4,10003,5,'soojin', REVIEW_NO_SEQ.NEXTVAL);

-- �� �����ϱ�
UPDATE tb_review SET rvw_title = '', rvw_content = ''
WHERE review_no = ?;

-- �� �����ϱ�(��&����Ʈ)
UPDATE tb_review SET rvw_del_check = 1
WHERE review_no = ?;