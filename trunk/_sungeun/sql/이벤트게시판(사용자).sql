---- �̺�Ʈ �Խ��� ----------------------------------------

--�̺�Ʈ �Խ��� ���� üũ
SELECT "board_read", "board_write", "board_modify", "board_delete" 
FROM "tb_mem_level_n_board" 
WHERE "board_cd"=2 
AND "mem_level_cd"=
(SELECT "mem_level_cd" 
FROM "tb_member" 
WHERE "mem_id"='soojin');


--�Խ��� ����Ʈ
SELECT "event_no", "evt_title","mem_id", "evt_write_day", "evt_hits" 
FROM "tb_event" WHERE "evt_del_check"=0 ORDER BY "event_no" DESC;
--�Խñ��� ���� ����
SELECT "evt_no", count("event_re_no") FROM "tb_event_re" WHERE "evt_del_check"=0 GROUP BY "evt_no";


--�Խñ� ����
SELECT * FROM "tb_event" 
    WHERE "evt_del_check"=0
    and "event_no" = '1';
    -- �Խñ� ���� ����
SELECT "mem_id","evt_re_content","evt_re_write_day" FROM "tb_event_re"
    WHERE "evt_re_del_check"=0
    and "evt_no" = '1';
    -- ��ȸ�� +1
UPDATE "NMDB"."tb_event" SET "evt_hits" = "evt_hits"+1;


--��� ����
INSERT INTO "tb_event_re" VALUES(EVENT_RE_NO_SEQ.NEXTVAL,
                                '����Դϴ�.', 
                                SYSDATE, 
                                0, 1,
                                'admin01'); --��������, �θ��
--��� ���� (*******�����Ұ�)
UPDATE "tb_event_re" SET "evt_re_del_check"=1 WHERE "event_re_no"=1;


--�۾���
INSERT INTO "tb_event" VALUES(EVENT_NO_SEQ.NEXTVAL,
                              '������ ��ý �̺�Ʈ�Դϴ�! ��� ���� �������ּ���',
                              SYSDATE, 1,
                              '�ڿ������� �غ��� ���ο� �⼮üũ �̺�Ʈ<br> ���� �⼮üũ�� �� ������ 30�п��� �� 1+1�� ��ȸ�� �����',
                              0,2,
                              'admin01');
--�ۼ���
	-- ������ ���� �ҷ�����
SELECT "evt_title", "evt_content" FROM "tb_event" WHERE "event_no"= 21;
	-- �� �����ϱ�
UPDATE "tb_event" SET 
    "evt_write_day"=SYSDATE,
    "evt_title"='������ ��ý�̺�Ʈ!!', 
    "evt_content"='�ڿ������� �غ��� ������ ��ý�̺�Ʈ!!!<br><br> ��ý���ض�! ���� �ѻ�� 10���� 1+1�� ����'
    WHERE "event_no"=21;
    
    
--�ۻ���
UPDATE "tb_event" SET "evt_del_check"=1 WHERE "event_no"=1;
UPDATE "tb_event_re" SET "evt_re_del_check"=1 WHERE "evt_no"=1;


--�˻�
	-- �������� �˻�
SELECT "event_no", "evt_title","mem_id", "evt_write_day", "evt_hits" 
FROM "tb_event" WHERE "evt_del_check"=0 
			AND "evt_title" LIKE '%�Ǻ�%' 
			ORDER BY "event_no" DESC;
	-- �������� �˻�
SELECT "event_no", "evt_title","mem_id", "evt_write_day", "evt_hits" 
FROM "tb_event" WHERE "evt_del_check"=0 
			AND "evt_content" LIKE '%�ڿ���%' 
			ORDER BY "event_no" DESC;
	-- ����+�������� �˻�
SELECT "event_no", "evt_title","mem_id", "evt_write_day", "evt_hits" 
FROM "tb_event" WHERE "evt_del_check"=0 
			AND ("evt_title" LIKE '%����%' OR "evt_content" LIKE '%�ڿ���%') 
			ORDER BY "event_no" DESC;