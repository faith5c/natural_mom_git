---- ȸ�� ���� ----------------------------------------------

--�α���üũ
-- drop_out : return ���� 0�� ��� �α��� ����/ null�̰ų� 1�� ��� �α��� ����
select "drop_out" from "tb_member" 
	where "mem_id" ='minhee' and "mem_pw"='4321';
	
--���̵�ã��
select "mem_id" from "tb_member" 
	where "drop_out"= 0
	and "mem_name"='�ڿ���' 
	and "mem_email"='sseun0402@hanmail.net';
	
--��й�ȣ ã��
select "mem_pw" from "tb_member" 
    where  "drop_out"= 0
	  and "mem_name"='�ڿ���' 
      and "mem_id"='admin01' 
      and "mem_email"='sseun0402@hanmail.net';
      
--���̵� �ߺ�Ȯ��
select "mem_id" from "tb_member" 
    where "mem_id"='admin01';
    
--ȸ������	-- ���뿡 ���� �� Ȯ���� Front���� ó��
insert into "tb_member"
  values ('kyungdae', 1234, '�Ű��', '010-4444-4444', '444-444', 
          '��⵵ ������ �߿��� ������ ��鸶�� �ź�Ȩ', 'sungeun@natural.com', '90/06/06', 1, 0, 1); --����, Ż�𿩺�, ���
          
--ȸ������ ����
UPDATE "NMDB"."tb_member" 
SET "mem_pw" ='4321',
    "mem_phone" = '010-5555-5555', 
    "mem_addr_post" = '555-555', 
    "mem_addr_detail" = '��⵵ ������ �߿��� ������ ��鸶�� �ź�Ȩ ������', 
    "mem_email" = 'sungjae@natural.com'
    WHERE "mem_id"='sungjae';

--ȸ��Ż��
UPDATE "NMDB"."tb_member" SET "drop_out" = 1 
    WHERE "mem_id"='minhee';
