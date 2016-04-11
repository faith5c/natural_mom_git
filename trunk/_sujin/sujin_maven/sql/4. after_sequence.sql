--------------------------------------------------------------- product_n_interest
Insert into NMDB.tb_interest (product_no,mem_id) values (10000,'minhee');
Insert into NMDB.tb_interest (product_no,mem_id) values (10001,'sora');
Insert into NMDB.tb_interest (product_no,mem_id) values (10002,'minhee');
Insert into NMDB.tb_interest (product_no,mem_id) values (10003,'soojin');
Insert into NMDB.tb_interest (product_no,mem_id) values (10003,'sora');
Insert into NMDB.tb_interest (product_no,mem_id) values (10004,'soojin');
Insert into NMDB.tb_interest (product_no,mem_id) values (10005,'soomin');
Insert into NMDB.tb_interest (product_no,mem_id) values (10006,'soomin');
Insert into NMDB.tb_interest (product_no,mem_id) values (10006,'sora');
Insert into NMDB.tb_interest (product_no,mem_id) values (10007,'soomin');



---------------------------------------------------------------- product_n_cart
Insert into NMDB.tb_cart (product_no,mem_id,buy_num) values (10006,'soomin',1);
Insert into NMDB.tb_cart (product_no,mem_id,buy_num) values (10004,'soomin',1);
Insert into NMDB.tb_cart (product_no,mem_id,buy_num) values (10006,'soojin',2);
Insert into NMDB.tb_cart (product_no,mem_id,buy_num) values (10002,'soojin',1);
Insert into NMDB.tb_cart (product_no,mem_id,buy_num) values (10004,'soojin',1);
Insert into NMDB.tb_cart (product_no,mem_id,buy_num) values (10001,'soomin',1);
Insert into NMDB.tb_cart (product_no,mem_id,buy_num) values (10003,'sora',2);
Insert into NMDB.tb_cart (product_no,mem_id,buy_num) values (10001,'minhee',1);
Insert into NMDB.tb_cart (product_no,mem_id,buy_num) values (10000,'minhee',1);



------------------------------------------------------------------ notice_re
INSERT INTO tb_notice_re (notice_re_no, ntc_re_content, ntc_re_write_day, ntc_re_del_check, notice_no, mem_id) VALUES (NOTICE_RE_NO_SEQ.NEXTVAL,'���� ����������',SYSDATE,0.0,1.0,'soomin');
INSERT INTO tb_notice_re (notice_re_no, ntc_re_content, ntc_re_write_day, ntc_re_del_check, notice_no, mem_id) VALUES (NOTICE_RE_NO_SEQ.NEXTVAL,'�����ڴ�.. �̰� �ߺ��ε�',SYSDATE,0.0,3.0,'sora');
INSERT INTO tb_notice_re (notice_re_no, ntc_re_content, ntc_re_write_day, ntc_re_del_check, notice_no, mem_id) VALUES (NOTICE_RE_NO_SEQ.NEXTVAL,'�� ������ �ȵǿ� ����������',SYSDATE,0.0,4.0,'soomin');
INSERT INTO tb_notice_re (notice_re_no, ntc_re_content, ntc_re_write_day, ntc_re_del_check, notice_no, mem_id) VALUES (NOTICE_RE_NO_SEQ.NEXTVAL,'�Ф� �� �ȿ��� �׵��� ���� ����?',SYSDATE,0.0,4.0,'soojin');
INSERT INTO tb_notice_re (notice_re_no, ntc_re_content, ntc_re_write_day, ntc_re_del_check, notice_no, mem_id) VALUES (NOTICE_RE_NO_SEQ.NEXTVAL,'�� �̰� �Ƚ��׾�� �ƽ�',SYSDATE,1.0,4.0,'minhee');
INSERT INTO tb_notice_re (notice_re_no, ntc_re_content, ntc_re_write_day, ntc_re_del_check, notice_no, mem_id) VALUES (NOTICE_RE_NO_SEQ.NEXTVAL,'������ ��� ����� �˼��մϴ�, �� ���� ��ǰ���� �����ϴ� �ڿ��� �ǵ��� �ϰڽ��ϴ�.',SYSDATE,0.0,4.0,'admin02');



------------------------------------------------------------------- review_re
INSERT INTO tb_review_re (review_re_no, rvw_re_content, rvw_re_write_day, rvw_re_del_check, rvw_no, mem_id) VALUES (REVIEW_RE_NO_SEQ.NEXTVAL,'�������ּż� �����ϴ�~^^ �� ���� ��ǰ���� �����ϴ� �ڿ����� �ǰڽ��ϴ�.',SYSDATE,0.0,1.0,'admin01');
INSERT INTO tb_review_re (review_re_no, rvw_re_content, rvw_re_write_day, rvw_re_del_check, rvw_no, mem_id) VALUES (REVIEW_RE_NO_SEQ.NEXTVAL,'�������ּż� �����ϴ�~^^ �� ���� ��ǰ���� �����ϴ� �ڿ����� �ǰڽ��ϴ�.',SYSDATE,0.0,2.0,'admin01');
INSERT INTO tb_review_re (review_re_no, rvw_re_content, rvw_re_write_day, rvw_re_del_check, rvw_no, mem_id) VALUES (REVIEW_RE_NO_SEQ.NEXTVAL,'�������ּż� �����ϴ�~^^ �� ���� ��ǰ���� �����ϴ� �ڿ����� �ǰڽ��ϴ�.',SYSDATE,0.0,3.0,'admin01');
INSERT INTO tb_review_re (review_re_no, rvw_re_content, rvw_re_write_day, rvw_re_del_check, rvw_no, mem_id) VALUES (REVIEW_RE_NO_SEQ.NEXTVAL,'���� ���׿�',SYSDATE,0.0,3.0,'soomin');
INSERT INTO tb_review_re (review_re_no, rvw_re_content, rvw_re_write_day, rvw_re_del_check, rvw_no, mem_id) VALUES (REVIEW_RE_NO_SEQ.NEXTVAL,'�������ּż� �����ϴ�~^^ �� ���� ��ǰ���� �����ϴ� �ڿ����� �ǰڽ��ϴ�.',SYSDATE,0.0,4.0,'admin01');
INSERT INTO tb_review_re (review_re_no, rvw_re_content, rvw_re_write_day, rvw_re_del_check, rvw_no, mem_id) VALUES (REVIEW_RE_NO_SEQ.NEXTVAL,'�������ּż� �����ϴ�~^^ �� ���� ��ǰ���� �����ϴ� �ڿ����� �ǰڽ��ϴ�.',SYSDATE,0.0,5.0,'admin01');
INSERT INTO tb_review_re (review_re_no, rvw_re_content, rvw_re_write_day, rvw_re_del_check, rvw_no, mem_id) VALUES (REVIEW_RE_NO_SEQ.NEXTVAL,'�������ּż� �����ϴ�~^^ �� ���� ��ǰ���� �����ϴ� �ڿ����� �ǰڽ��ϴ�.',SYSDATE,0.0,6.0,'admin01');
INSERT INTO tb_review_re (review_re_no, rvw_re_content, rvw_re_write_day, rvw_re_del_check, rvw_no, mem_id) VALUES (REVIEW_RE_NO_SEQ.NEXTVAL,'�������ּż� �����ϴ�~^^ �� ���� ��ǰ���� �����ϴ� �ڿ����� �ǰڽ��ϴ�.',SYSDATE,0.0,7.0,'admin01');
INSERT INTO tb_review_re (review_re_no, rvw_re_content, rvw_re_write_day, rvw_re_del_check, rvw_no, mem_id) VALUES (REVIEW_RE_NO_SEQ.NEXTVAL,'�� ������ �ȵŰ���',SYSDATE,1.0,7.0,'soojin');



-------------------------------------------------------------------- event_re
INSERT INTO tb_event_re (event_re_no, evt_re_content, evt_re_write_day, evt_re_del_check, evt_no, mem_id) VALUES (EVENT_RE_NO_SEQ.NEXTVAL,'�� ���ݹٷ� ��������',SYSDATE,0.0,1.0,'soojin');
INSERT INTO tb_event_re (event_re_no, evt_re_content, evt_re_write_day, evt_re_del_check, evt_no, mem_id) VALUES (EVENT_RE_NO_SEQ.NEXTVAL,'���� �����׿�^^',SYSDATE,0.0,1.0,'sora');
INSERT INTO tb_event_re (event_re_no, evt_re_content, evt_re_write_day, evt_re_del_check, evt_no, mem_id) VALUES (EVENT_RE_NO_SEQ.NEXTVAL,'soojin�� �������� ��¦ �����Ⱦ��!<br> �̺�Ʈ �������ּż� �����ؿ�^^',SYSDATE,0.0,2.0,'admin02');
INSERT INTO tb_event_re (event_re_no, evt_re_content, evt_re_write_day, evt_re_del_check, evt_no, mem_id) VALUES (EVENT_RE_NO_SEQ.NEXTVAL,'sumin�� ���� �����̽ó׿�!<br> �̺�Ʈ �������ּż� �����ؿ�^^',SYSDATE,0.0,4.0,'admin02');
INSERT INTO tb_event_re (event_re_no, evt_re_content, evt_re_write_day, evt_re_del_check, evt_no, mem_id) VALUES (EVENT_RE_NO_SEQ.NEXTVAL,'�̰� ���� ���� �ƴѵ�..',SYSDATE,0.0,4.0,'minhee');
INSERT INTO tb_event_re (event_re_no, evt_re_content, evt_re_write_day, evt_re_del_check, evt_no, mem_id) VALUES (EVENT_RE_NO_SEQ.NEXTVAL,'sora�� ���� ��ǰ ���п� ȭ���� �ߵȴٴ� �����̳׿�<br> �̺�Ʈ �������ּż� �����ؿ�^^',SYSDATE,0.0,5.0,'admin02');

------------------------------------------------------------------- QnA RE
INSERT INTO tb_qna_re (qna_re_no, qna_re_content, qna_re_write_day, qna_re_del_check, qna_no, mem_id) VALUES (QNA_RE_NO_SEQ.NEXTVAL,'���� �Խ����̳׿� ��ȣ',SYSDATE,0.0,1.0,'soojin');
INSERT INTO tb_qna_re (qna_re_no, qna_re_content, qna_re_write_day, qna_re_del_check, qna_no, mem_id) VALUES (QNA_RE_NO_SEQ.NEXTVAL,'�ñ��Ѱ� ���Ҵµ� ����',SYSDATE,0.0,1.0,'soomin');
INSERT INTO tb_qna_re (qna_re_no, qna_re_content, qna_re_write_day, qna_re_del_check, qna_no, mem_id) VALUES (QNA_RE_NO_SEQ.NEXTVAL,'���� �������.. ����������',SYSDATE,0.0,2.0,'soomin');
INSERT INTO tb_qna_re (qna_re_no, qna_re_content, qna_re_write_day, qna_re_del_check, qna_no, mem_id) VALUES (QNA_RE_NO_SEQ.NEXTVAL,'�����ڴ� ��¥ �����Ͻôµ� �ؿ�Ф�',SYSDATE,0.0,8.0,'sora');
INSERT INTO tb_qna_re (qna_re_no, qna_re_content, qna_re_write_day, qna_re_del_check, qna_no, mem_id) VALUES (QNA_RE_NO_SEQ.NEXTVAL,'���� �׷���?',SYSDATE,1.0,7.0,'minhee');
