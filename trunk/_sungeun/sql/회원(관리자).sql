---- ȸ�� ���� (������) ----------------------------------------------

-- ���ȸ�� ��ȸ
SELECT "mem_id", "mem_name", "mem_addr_detail", "mem_phone", "mem_email", "mem_birth", "mem_gender", "drop_out" 
FROM "tb_member" ;

-- ���Ǻ� ��ȸ
	-- ���ǹ��� �������� �Ҵ�
SELECT "mem_id", "mem_name", "mem_addr_detail", "mem_phone", "mem_email", "mem_birth", "mem_gender", "drop_out" 
FROM "tb_member" WHERE ( "mem_id" LIKE '%soo%' 
                  OR "mem_name" LIKE '%����%'
                  OR "mem_phone"='010-1111-1111'
                  OR "mem_email"='soomin@natural.com'
                  OR "mem_birth"='90/01/01'
                  OR "mem_gender"='1'
                  OR "drop_out"='0' );
                  
-- ȸ��Ż��          
UPDATE "NMDB"."tb_member" SET "drop_out"=0 WHERE "mem_id"='admin02';

-- �ҷ�ȸ��
UPDATE "NMDB"."tb_member" SET "mem_level_cd"=2 WHERE "mem_id"='minhee';

-- ������ ��й�ȣ ����
UPDATE "NMDB"."tb_member" SET "mem_pw"='1111' WHERE "mem_id"='admin01';