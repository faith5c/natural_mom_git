-- (html : ȸ����޿� ���� ������ �ڹٽ�ũ��Ʈ���� ����)
-- ȸ�����̺��� ȸ�����̵�� ȸ������ڵ带 �����ͼ� 
-- ȸ����ް� �Խ��� ���̺��� QnA�� ������ �����ΰ� Ȯ���ϴ� ����

SELECT board_read, board_write, board_modify, board_delete 
FROM tb_mem_level_n_board 
WHERE board_cd=4 
AND mem_level_cd=
(SELECT mem_level_cd 
FROM tb_member 
WHERE mem_id='soomin');
