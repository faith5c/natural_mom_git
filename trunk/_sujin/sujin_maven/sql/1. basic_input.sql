Insert into NMDB.tb_board (board_cd,board_nm) values (1,'공지사항');
Insert into NMDB.tb_board (board_cd,board_nm) values (2,'이벤트');
Insert into NMDB.tb_board (board_cd,board_nm) values (3,'자주하는질문');
Insert into NMDB.tb_board (board_cd,board_nm) values (4,'QnA');
Insert into NMDB.tb_board (board_cd,board_nm) values (5,'상품후기');

Insert into NMDB.tb_category (category_cd,category_nm) values (1,'아토피/민감성/유아');
Insert into NMDB.tb_category (category_cd,category_nm) values (2,'피부탄력/노화');
Insert into NMDB.tb_category (category_cd,category_nm) values (3,'지성/여드름/트러블');
Insert into NMDB.tb_category (category_cd,category_nm) values (4,'미백/피부톤개선');

Insert into NMDB.tb_credit (credit_cd,credit_nm) values (10,'신한');
Insert into NMDB.tb_credit (credit_cd,credit_nm) values (11,'삼성');
Insert into NMDB.tb_credit (credit_cd,credit_nm) values (12,'하나');
Insert into NMDB.tb_credit (credit_cd,credit_nm) values (13,'롯데');
Insert into NMDB.tb_credit (credit_cd,credit_nm) values (14,'KB국민');
Insert into NMDB.tb_credit (credit_cd,credit_nm) values (15,'NH채움');
Insert into NMDB.tb_credit (credit_cd,credit_nm) values (16,'비씨');
Insert into NMDB.tb_credit (credit_cd,credit_nm) values (17,'우리');

Insert into NMDB.tb_delivery_com (delivery_com_cd,delivery_com_nm) values (1,'cj대한통운');
Insert into NMDB.tb_delivery_com (delivery_com_cd,delivery_com_nm) values (2,'로젠택배');
Insert into NMDB.tb_delivery_com (delivery_com_cd,delivery_com_nm) values (3,'옐로우캡');
Insert into NMDB.tb_delivery_com (delivery_com_cd,delivery_com_nm) values (4,'우체국');
Insert into NMDB.tb_delivery_com (delivery_com_cd,delivery_com_nm) values (5,'한진택배');
Insert into NMDB.tb_delivery_com (delivery_com_cd,delivery_com_nm) values (6,'현대택배');

Insert into NMDB.tb_mem_level (mem_level_cd,mem_level_nm) values (10,'관리자');
Insert into NMDB.tb_mem_level (mem_level_cd,mem_level_nm) values (1,'일반회원');
Insert into NMDB.tb_mem_level (mem_level_cd,mem_level_nm) values (2,'불량회원');
Insert into NMDB.tb_mem_level (mem_level_cd,mem_level_nm) values (3,'비회원');

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

Insert into NMDB.tb_member (mem_id,mem_pw,mem_name,mem_phone,mem_addr_post,mem_addr_detail,mem_email,mem_birth,mem_gender,drop_out,mem_level_cd) values ('admin01','1111','자연맘','010-7473-2442','140-190','서울시 용산구 후암동 406-7번지 상원빌2차','sseun0402@hanmail.net',to_date('90/04/02','RR/MM/DD'),0,0,10);
Insert into NMDB.tb_member (mem_id,mem_pw,mem_name,mem_phone,mem_addr_post,mem_addr_detail,mem_email,mem_birth,mem_gender,drop_out,mem_level_cd) values ('admin02','2222','자연맘','010-1234-5678','330-847','충청남도 아산시 대방읍 장재리 용연마을 감자하우스','geunhoo@gmail.com',to_date('88/10/24','RR/MM/DD'),1,0,10);
Insert into NMDB.tb_member (mem_id,mem_pw,mem_name,mem_phone,mem_addr_post,mem_addr_detail,mem_email,mem_birth,mem_gender,drop_out,mem_level_cd) values ('soomin','1234','윤수민','010-0000-0000','000-000','서울시 강동구 강동3동 강동아파트 102동 202호','soomin@natural.com',to_date('90/01/01','RR/MM/DD'),0,0,1);
Insert into NMDB.tb_member (mem_id,mem_pw,mem_name,mem_phone,mem_addr_post,mem_addr_detail,mem_email,mem_birth,mem_gender,drop_out,mem_level_cd) values ('sora','1234','최소라','010-1111-1111','111-111','서울시 광진구 구의2동 구의아파트 101동 202호','sora@natural.com',to_date('90/02/02','RR/MM/DD'),0,1,1);
Insert into NMDB.tb_member (mem_id,mem_pw,mem_name,mem_phone,mem_addr_post,mem_addr_detail,mem_email,mem_birth,mem_gender,drop_out,mem_level_cd) values ('soojin','4321','이수진','010-2222-2222','222-222','경기도 안산시 안산구 안산3동 안산아파트 403동 101호','sojin@natural.com',to_date('90/03/03','RR/MM/DD'),0,0,2);
Insert into NMDB.tb_member (mem_id,mem_pw,mem_name,mem_phone,mem_addr_post,mem_addr_detail,mem_email,mem_birth,mem_gender,drop_out,mem_level_cd) values ('minhee','4321','최민희','010-333-3333','333-333','경기도 남양주시 양주동 남양주아파트 303동 202호','minhee@natural.com',to_date('90/04/04','RR/MM/DD'),1,1,2);

Insert into NMDB.tb_process (process_cd,process_nm) values (11,'배송준비중');
Insert into NMDB.tb_process (process_cd,process_nm) values (12,'배송대기');
Insert into NMDB.tb_process (process_cd,process_nm) values (13,'배송중');
Insert into NMDB.tb_process (process_cd,process_nm) values (14,'배송완료');
Insert into NMDB.tb_process (process_cd,process_nm) values (21,'구매확정');
Insert into NMDB.tb_process (process_cd,process_nm) values (31,'환불처리');
Insert into NMDB.tb_process (process_cd,process_nm) values (32,'환불완료');