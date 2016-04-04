package nm.data.dao;

import java.util.Date;

import nm.data.model.QnaVO;

public interface IQnaDao {

	//�� �ۼ�
	int addQna(QnaVO qna);
	int addQna(String qna_title, int qna_hits, String qna_content,
			String qna_pw, int qna_pos, int qna_ref,  String mem_id);
	
	//�� ����
	int updateQna(int qna_no, String qna_title, String qna_content, String qna_pw);
	
	//�� ����
	int deleteQna(int qna_no);
}
/*


-- ���ۼ�
-- �۹�ȣ, ����, �ۼ���, ��ȸ��, ����, ��������, ��й�ȣ, �����ġ, �����۹�ȣ, �Խ��Ǿ��̵�, ȸ�����̵� �Է�
INSERT INTO tb_qna (qna_no,
qna_title,qna_write_day,qna_hits,
qna_content,
qna_del_check, qna_pw, 
qna_pos,qna_ref,
board_id, mem_id)
VALUES (QNA_NO_SEQ.NEXTVAL,
'�� ������ �̲��������',SYSDATE,0, 
'�ʹ� �̲�������. �ȹ̲����� �񴩴� ������?',
0,null,
0, QNA_NO_SEQ.CURRVAL,
4, 'soomin');

-- �� ����
-- ����, �ۼ���, ����, ��й�ȣ �Է� (�۹�ȣ�� �ش��ϴ� �� ����)
UPDATE tb_qna 
SET 
qna_title='�� ������ �̲���������', 
qna_write_day=SYSDATE,
qna_content='�ʹ� �̲�������. �ȹ̲����� �񴩴� ������???',
qna_pw='1111'
WHERE qna_no=10;

-- �� ����
UPDATE tb_qna SET qna_del_check=1 WHERE qna_no=7;
-- (���� �����Ǹ� �̾ �ڵ����� �亯 �۵� �����ϰ� �ؾ���)
UPDATE tb_qna SET qna_del_check=1 WHERE qna_ref=7;
-- (���� �����Ǹ� �̾ ��۵� �����ϰ� �ؾ���)
UPDATE tb_qna_re SET qna_re_del_check=1 WHERE qna_no=7;

*/