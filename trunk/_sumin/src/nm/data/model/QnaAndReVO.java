package nm.data.model;

import java.util.Date;

public class QnaAndReVO {
	private int qna_no;
	private String qna_title;
	private Date qna_write_day;
	private int qna_hits;
	private String qna_content;
	private int qna_del_check;
	private String qna_pw;
	private int qna_pos;
	private int qna_ref;
	private int board_id;
	private String mem_id;
	
	private int qna_re_no;
	private String qna_re_content;
	private Date qna_re_write_day;
	private int qna_re_del_check;
	private int qna_no;
	private String mem_id;
	
	
}

/*

-- ��б� ��ȸ�� ��й�ȣ �´��� Ȯ���ϴ� SQL ����
-- �۹�ȣ, ����, �ۼ���, ��ȸ��, ����, ��й�ȣ, �����ġ, �����۹�ȣ, ȸ�����̵�, ��۰���(�����ȵȰɷ�, �۹�ȣ�� �ش��ϴ°�)
SELECT q.qna_no, qna_title, qna_write_day, qna_hits, qna_content, qna_pw, qna_pos, qna_ref, q.mem_id, COUNT(qna_re_no)  
FROM tb_qna q LEFT OUTER JOIN tb_qna_re r
ON (q.qna_no = r.qna_no)
WHERE qna_del_check=0
AND q.qna_no=4
AND q.qna_pw='1234'
GROUP BY q.qna_no, qna_title, qna_write_day, qna_hits, qna_content, qna_pw, qna_pos, qna_ref, q.mem_id
ORDER BY qna_ref DESC, qna_pos DESC;




-- �Ϲݱ���ȸ
-- �۹�ȣ, ����, �ۼ���, ��ȸ��, ����, ��й�ȣ, �����ġ, �����۹�ȣ, ȸ�����̵�, ��۰���(�����ȵȰɷ�, �۹�ȣ�� �ش��ϴ°�)
SELECT q.qna_no, qna_title, qna_write_day, qna_hits, qna_content, qna_pw, qna_pos, qna_ref, q.mem_id, COUNT(qna_re_no)  
FROM tb_qna q LEFT OUTER JOIN tb_qna_re r
ON (q.qna_no = r.qna_no)
WHERE qna_del_check=0
AND q.qna_no=1
GROUP BY q.qna_no, qna_title, qna_write_day, qna_hits, qna_content, qna_pw, qna_pos, qna_ref, q.mem_id
ORDER BY qna_ref DESC, qna_pos DESC;


-------------------------------------------------------------------------------------
-- QnA �˻��ϴ� SQL��

-- ���� �˻�
SELECT q.qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, q.mem_id, COUNT(qna_re_no)  
FROM tb_qna q LEFT OUTER JOIN tb_qna_re r
ON (q.qna_no = r.qna_no)
WHERE qna_del_check=0
AND qna_title LIKE '%�亯%'
GROUP BY q.qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, q.mem_id
ORDER BY qna_ref DESC, qna_pos DESC;


-- ���� �˻�
SELECT q.qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, q.mem_id, COUNT(qna_re_no)  
FROM tb_qna q LEFT OUTER JOIN tb_qna_re r
ON (q.qna_no = r.qna_no)
WHERE qna_del_check=0
AND qna_content LIKE '%��%'
GROUP BY q.qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, q.mem_id
ORDER BY qna_ref DESC, qna_pos DESC;

-- �۾��� �˻�
SELECT q.qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, q.mem_id, COUNT(qna_re_no)  
FROM tb_qna q LEFT OUTER JOIN tb_qna_re r
ON (q.qna_no = r.qna_no)
WHERE qna_del_check=0
AND q.mem_id LIKE '%sora%'
GROUP BY q.qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, q.mem_id
ORDER BY qna_ref DESC, qna_pos DESC;


-- ����+���� �˻�
SELECT q.qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, q.mem_id, COUNT(qna_re_no)  
FROM tb_qna q LEFT OUTER JOIN tb_qna_re r
ON (q.qna_no = r.qna_no)
WHERE qna_del_check=0
AND (qna_title LIKE '%�亯%'
OR qna_content LIKE '%�亯%')
GROUP BY q.qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, q.mem_id
ORDER BY qna_ref DESC, qna_pos DESC;


-- ��� ���� ���� �������� SQL��
SELECT q.qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, q.mem_id, COUNT(qna_re_no)  
FROM tb_qna q LEFT OUTER JOIN tb_qna_re r
ON (q.qna_no = r.qna_no)
WHERE qna_del_check=0
GROUP BY q.qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, q.mem_id
ORDER BY qna_ref DESC, qna_pos DESC;

--*/
