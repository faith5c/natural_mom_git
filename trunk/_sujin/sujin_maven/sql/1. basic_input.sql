Insert into NMDB.tb_board (board_cd,board_nm) values (1,'��������');
Insert into NMDB.tb_board (board_cd,board_nm) values (2,'�̺�Ʈ');
Insert into NMDB.tb_board (board_cd,board_nm) values (3,'�����ϴ�����');
Insert into NMDB.tb_board (board_cd,board_nm) values (4,'QnA');
Insert into NMDB.tb_board (board_cd,board_nm) values (5,'��ǰ�ı�');

Insert into NMDB.tb_category (category_cd,category_nm) values (1,'������/�ΰ���/����');
Insert into NMDB.tb_category (category_cd,category_nm) values (2,'�Ǻ�ź��/��ȭ');
Insert into NMDB.tb_category (category_cd,category_nm) values (3,'����/���帧/Ʈ����');
Insert into NMDB.tb_category (category_cd,category_nm) values (4,'�̹�/�Ǻ��氳��');

Insert into NMDB.tb_credit (credit_cd,credit_nm) values (10,'����');
Insert into NMDB.tb_credit (credit_cd,credit_nm) values (11,'�Ｚ');
Insert into NMDB.tb_credit (credit_cd,credit_nm) values (12,'�ϳ�');
Insert into NMDB.tb_credit (credit_cd,credit_nm) values (13,'�Ե�');
Insert into NMDB.tb_credit (credit_cd,credit_nm) values (14,'KB����');
Insert into NMDB.tb_credit (credit_cd,credit_nm) values (15,'NHä��');
Insert into NMDB.tb_credit (credit_cd,credit_nm) values (16,'��');
Insert into NMDB.tb_credit (credit_cd,credit_nm) values (17,'�츮');

Insert into NMDB.tb_delivery_com (delivery_com_cd,delivery_com_nm) values (1,'cj�������');
Insert into NMDB.tb_delivery_com (delivery_com_cd,delivery_com_nm) values (2,'�����ù�');
Insert into NMDB.tb_delivery_com (delivery_com_cd,delivery_com_nm) values (3,'���ο�ĸ');
Insert into NMDB.tb_delivery_com (delivery_com_cd,delivery_com_nm) values (4,'��ü��');
Insert into NMDB.tb_delivery_com (delivery_com_cd,delivery_com_nm) values (5,'�����ù�');
Insert into NMDB.tb_delivery_com (delivery_com_cd,delivery_com_nm) values (6,'�����ù�');

Insert into NMDB.tb_mem_level (mem_level_cd,mem_level_nm) values (10,'������');
Insert into NMDB.tb_mem_level (mem_level_cd,mem_level_nm) values (1,'�Ϲ�ȸ��');
Insert into NMDB.tb_mem_level (mem_level_cd,mem_level_nm) values (2,'�ҷ�ȸ��');
Insert into NMDB.tb_mem_level (mem_level_cd,mem_level_nm) values (3,'��ȸ��');

Insert into NMDB.tb_mem_level_n_board (mem_level_cd,board_cd,board_read,board_write,board_modify,board_delete) values (10,1,1,1,1,1);
Insert into NMDB.tb_mem_level_n_board (mem_level_cd,board_cd,board_read,board_write,board_modify,board_delete) values (10,2,1,1,1,1);
Insert into NMDB.tb_mem_level_n_board (mem_level_cd,board_cd,board_read,board_write,board_modify,board_delete) values (10,3,1,1,1,1);
Insert into NMDB.tb_mem_level_n_board (mem_level_cd,board_cd,board_read,board_write,board_modify,board_delete) values (10,4,1,1,1,1);
Insert into NMDB.tb_mem_level_n_board (mem_level_cd,board_cd,board_read,board_write,board_modify,board_delete) values (10,5,1,1,1,1);
Insert into NMDB.tb_mem_level_n_board (mem_level_cd,board_cd,board_read,board_write,board_modify,board_delete) values (1,1,1,0,0,0);
Insert into NMDB.tb_mem_level_n_board (mem_level_cd,board_cd,board_read,board_write,board_modify,board_delete) values (1,2,1,1,1,1);
Insert into NMDB.tb_mem_level_n_board (mem_level_cd,board_cd,board_read,board_write,board_modify,board_delete) values (1,3,1,0,0,0);
Insert into NMDB.tb_mem_level_n_board (mem_level_cd,board_cd,board_read,board_write,board_modify,board_delete) values (1,4,1,1,1,1);
Insert into NMDB.tb_mem_level_n_board (mem_level_cd,board_cd,board_read,board_write,board_modify,board_delete) values (1,5,1,1,1,1);
Insert into NMDB.tb_mem_level_n_board (mem_level_cd,board_cd,board_read,board_write,board_modify,board_delete) values (2,1,1,0,0,0);
Insert into NMDB.tb_mem_level_n_board (mem_level_cd,board_cd,board_read,board_write,board_modify,board_delete) values (2,2,1,0,0,1);
Insert into NMDB.tb_mem_level_n_board (mem_level_cd,board_cd,board_read,board_write,board_modify,board_delete) values (2,3,1,0,0,0);
Insert into NMDB.tb_mem_level_n_board (mem_level_cd,board_cd,board_read,board_write,board_modify,board_delete) values (2,4,1,0,0,1);
Insert into NMDB.tb_mem_level_n_board (mem_level_cd,board_cd,board_read,board_write,board_modify,board_delete) values (2,5,1,0,0,1);
Insert into NMDB.tb_mem_level_n_board (mem_level_cd,board_cd,board_read,board_write,board_modify,board_delete) values (3,1,1,0,0,0);
Insert into NMDB.tb_mem_level_n_board (mem_level_cd,board_cd,board_read,board_write,board_modify,board_delete) values (3,2,1,0,0,0);
Insert into NMDB.tb_mem_level_n_board (mem_level_cd,board_cd,board_read,board_write,board_modify,board_delete) values (3,3,1,0,0,0);
Insert into NMDB.tb_mem_level_n_board (mem_level_cd,board_cd,board_read,board_write,board_modify,board_delete) values (3,4,0,0,0,0);
Insert into NMDB.tb_mem_level_n_board (mem_level_cd,board_cd,board_read,board_write,board_modify,board_delete) values (3,5,1,0,0,0);

Insert into NMDB.tb_member (mem_id,mem_pw,mem_name,mem_phone,mem_addr_post,mem_addr_detail,mem_email,mem_birth,mem_gender,drop_out,mem_level_cd) values ('admin01','1111','�ڿ���','010-7473-2442','140-190','����� ��걸 �ľϵ� 406-7���� �����2��','sseun0402@hanmail.net',to_date('90/04/02','RR/MM/DD'),0,0,10);
Insert into NMDB.tb_member (mem_id,mem_pw,mem_name,mem_phone,mem_addr_post,mem_addr_detail,mem_email,mem_birth,mem_gender,drop_out,mem_level_cd) values ('admin02','2222','�ڿ���','010-1234-5678','330-847','��û���� �ƻ�� ����� ���縮 �뿬���� �����Ͽ콺','geunhoo@gmail.com',to_date('88/10/24','RR/MM/DD'),1,0,10);
Insert into NMDB.tb_member (mem_id,mem_pw,mem_name,mem_phone,mem_addr_post,mem_addr_detail,mem_email,mem_birth,mem_gender,drop_out,mem_level_cd) values ('soomin','1234','������','010-0000-0000','000-000','����� ������ ����3�� ��������Ʈ 102�� 202ȣ','soomin@natural.com',to_date('90/01/01','RR/MM/DD'),0,0,1);
Insert into NMDB.tb_member (mem_id,mem_pw,mem_name,mem_phone,mem_addr_post,mem_addr_detail,mem_email,mem_birth,mem_gender,drop_out,mem_level_cd) values ('sora','1234','�ּҶ�','010-1111-1111','111-111','����� ������ ����2�� ���Ǿ���Ʈ 101�� 202ȣ','sora@natural.com',to_date('90/02/02','RR/MM/DD'),0,1,1);
Insert into NMDB.tb_member (mem_id,mem_pw,mem_name,mem_phone,mem_addr_post,mem_addr_detail,mem_email,mem_birth,mem_gender,drop_out,mem_level_cd) values ('soojin','4321','�̼���','010-2222-2222','222-222','��⵵ �Ȼ�� �Ȼ걸 �Ȼ�3�� �Ȼ����Ʈ 403�� 101ȣ','sojin@natural.com',to_date('90/03/03','RR/MM/DD'),0,0,2);
Insert into NMDB.tb_member (mem_id,mem_pw,mem_name,mem_phone,mem_addr_post,mem_addr_detail,mem_email,mem_birth,mem_gender,drop_out,mem_level_cd) values ('minhee','4321','�ֹ���','010-333-3333','333-333','��⵵ �����ֽ� ���ֵ� �����־���Ʈ 303�� 202ȣ','minhee@natural.com',to_date('90/04/04','RR/MM/DD'),1,1,2);

Insert into NMDB.tb_process (process_cd,process_nm) values (11,'����غ���');
Insert into NMDB.tb_process (process_cd,process_nm) values (12,'��۴��');
Insert into NMDB.tb_process (process_cd,process_nm) values (13,'�����');
Insert into NMDB.tb_process (process_cd,process_nm) values (14,'��ۿϷ�');
Insert into NMDB.tb_process (process_cd,process_nm) values (21,'����Ȯ��');
Insert into NMDB.tb_process (process_cd,process_nm) values (31,'ȯ��ó��');
Insert into NMDB.tb_process (process_cd,process_nm) values (32,'ȯ�ҿϷ�');