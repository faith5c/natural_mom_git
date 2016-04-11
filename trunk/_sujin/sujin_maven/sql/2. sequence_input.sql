------------------------------------------------------------------ product
INSERT INTO tb_product (product_no, product_name, selling_price, cost_price, stock, display_state, sale_state, represent_img, detail_img, summary_ex, detail_ex, deleted_state, weight, category_cd) VALUES (PRODUCT_NO_SEQ.NEXTVAL,'�Ƹ��� ��',3500.0,3000.0,100.0,1.0,1.0,'http://i.imgur.com/XQxOgR0.jpg','http://naturalmom.co.kr/shop/shop_image/attach/1508/20150825103458_dssxswyt.jpg','���� ������ ������ ����','null',0.0,100.0,1.0);
INSERT INTO tb_product (product_no, product_name, selling_price, cost_price, stock, display_state, sale_state, represent_img, detail_img, summary_ex, detail_ex, deleted_state, weight, category_cd) VALUES (PRODUCT_NO_SEQ.NEXTVAL,'�ӳ�����',5500.0,4000.0,50.0,1.0,1.0,'http://i.imgur.com/bR5YMhA.jpg','http://naturalmom.co.kr/shop/shop_image/attach/1512/20151208104114_pmlnirpn.jpg','�ǰ��ϰ� �����ִ� ����� ����','null',0.0,90.0,2.0);
INSERT INTO tb_product (product_no, product_name, selling_price, cost_price, stock, display_state, sale_state, represent_img, detail_img, summary_ex, detail_ex, deleted_state, weight, category_cd) VALUES (PRODUCT_NO_SEQ.NEXTVAL,'���� ��',4300.0,3500.0,100.0,1.0,1.0,'http://i.imgur.com/BgjzGXR.jpg','http://naturalmom.co.kr/shop/shop_image/attach/1512/20151207144609_iumbvwrf.jpg','���� �Ǻ����� ����','null',0.0,90.0,3.0);
INSERT INTO tb_product (product_no, product_name, selling_price, cost_price, stock, display_state, sale_state, represent_img, detail_img, summary_ex, detail_ex, deleted_state, weight, category_cd) VALUES (PRODUCT_NO_SEQ.NEXTVAL,'�� ��',4300.0,3500.0,100.0,1.0,1.0,'http://i.imgur.com/ELZ9gpf.jpg','http://naturalmom.co.kr/shop/shop_image/attach/1512/20151207143314_qsuwwiwa.jpg','ǳ���� �������� ��Ÿ����','null',0.0,90.0,4.0);
INSERT INTO tb_product (product_no, product_name, selling_price, cost_price, stock, display_state, sale_state, represent_img, detail_img, summary_ex, detail_ex, deleted_state, weight, category_cd) VALUES (PRODUCT_NO_SEQ.NEXTVAL,'��ȿ��� ��',4500.0,3500.0,100.0,1.0,1.0,'http://i.imgur.com/feTTLKa.jpg','http://naturalmom.co.kr/shop/shop_image/attach/1512/20151204180910_lzlepvxk.jpg','���� �Ǻθ� ����','null',1.0,90.0,1.0);
INSERT INTO tb_product (product_no, product_name, selling_price, cost_price, stock, display_state, sale_state, represent_img, detail_img, summary_ex, detail_ex, deleted_state, weight, category_cd) VALUES (PRODUCT_NO_SEQ.NEXTVAL,'����� ��',4500.0,3500.0,100.0,0.0,0.0,'http://i.imgur.com/ypYvxLI.jpg','http://naturalmom.co.kr/shop/shop_image/attach/1512/20151204175539_xutysnbt.jpg','���� �� �Ǻ� ź���� ����','null',0.0,90.0,2.0);
INSERT INTO tb_product (product_no, product_name, selling_price, cost_price, stock, display_state, sale_state, represent_img, detail_img, summary_ex, detail_ex, deleted_state, weight, category_cd) VALUES (PRODUCT_NO_SEQ.NEXTVAL,'���� ��',3900.0,3000.0,100.0,1.0,0.0,'http://i.imgur.com/KDQB1fW.jpg','http://naturalmom.co.kr/shop/shop_image/attach/1512/20151204174731_wwpgotcr.jpg','�ΰ��� ��ῡ ����','null',0.0,90.0,3.0);
INSERT INTO tb_product (product_no, product_name, selling_price, cost_price, stock, display_state, sale_state, represent_img, detail_img, summary_ex, detail_ex, deleted_state, weight, category_cd) VALUES (PRODUCT_NO_SEQ.NEXTVAL,'���鳪�� ��',4300.0,3500.0,100.0,0.0,1.0,'http://i.imgur.com/K69YdaC.jpg','http://naturalmom.co.kr/shop/shop_image/attach/1512/20151204141945_tmhwnaho.jpg','����ġ�尡 �����Ǿ� �ִ�','null',0.0,90.0,4.0);



-------------------------------------------------------------------- order
INSERT INTO tb_order (order_no, order_date, charge, credit_num, credit_exp, rcv_name, rcv_phone, rcv_addr_post, rcv_addr_detail, delivery_msg, tracking_num, credit_cd, delivery_com_cd, mem_id) VALUES (ORDER_NO_SEQ.NEXTVAL,SYSDATE,3900.0,'1234123412341234','1901','�̼���','010-2222-2222','111-221','��⵵ �Ȼ�� �Ȼ걸 �Ȼ�3�� �Ȼ����Ʈ 403�� 101ȣ','����� �����ٶ�',0.0,10.0,4.0,'soojin');
INSERT INTO tb_order (order_no, order_date, charge, credit_num, credit_exp, rcv_name, rcv_phone, rcv_addr_post, rcv_addr_detail, delivery_msg, tracking_num, credit_cd, delivery_com_cd, mem_id) VALUES (ORDER_NO_SEQ.NEXTVAL,SYSDATE,9000.0,'1234123412341234','1901','�ּҶ�','010-1111-1111','111-222','����� ������ ����2�� ���Ǿ���Ʈ 101�� 202ȣ','�����ù��Կ� �־��ּ���',0.0,10.0,4.0,'sora');
INSERT INTO tb_order (order_no, order_date, charge, credit_num, credit_exp, rcv_name, rcv_phone, rcv_addr_post, rcv_addr_detail, delivery_msg, tracking_num, credit_cd, delivery_com_cd, mem_id) VALUES (ORDER_NO_SEQ.NEXTVAL,SYSDATE,8600.0,'1234123412341234','1901','�̼���','010-2222-2222','111-223','��⵵ �Ȼ�� �Ȼ걸 �Ȼ�3�� �Ȼ����Ʈ 403�� 101ȣ','����� �����ٶ�',0.0,13.0,4.0,'soojin');
INSERT INTO tb_order (order_no, order_date, charge, credit_num, credit_exp, rcv_name, rcv_phone, rcv_addr_post, rcv_addr_detail, delivery_msg, tracking_num, credit_cd, delivery_com_cd, mem_id) VALUES (ORDER_NO_SEQ.NEXTVAL,SYSDATE,5500.0,'1234123412341234','1901','������','010-0000-0000','111-224','����� ������ ����3�� ��������Ʈ 102�� 202ȣ','���� �����ּ��� ����������',0.0,17.0,4.0,'soomin');
INSERT INTO tb_order (order_no, order_date, charge, credit_num, credit_exp, rcv_name, rcv_phone, rcv_addr_post, rcv_addr_detail, delivery_msg, tracking_num, credit_cd, delivery_com_cd, mem_id) VALUES (ORDER_NO_SEQ.NEXTVAL,SYSDATE,5500.0,'1234123412341234','1901','������','010-0000-0000','111-225','����� ������ ����3�� ��������Ʈ 102�� 202ȣ','���� �����ּ��� ����������',0.0,17.0,4.0,'soomin');
INSERT INTO tb_order (order_no, order_date, charge, credit_num, credit_exp, rcv_name, rcv_phone, rcv_addr_post, rcv_addr_detail, delivery_msg, tracking_num, credit_cd, delivery_com_cd, mem_id) VALUES (ORDER_NO_SEQ.NEXTVAL,SYSDATE,10500.0,'1234123412341234','1901','�ּҶ�','010-1111-1111','111-226','����� ������ ����2�� ���Ǿ���Ʈ 101�� 202ȣ','�����ù��Կ� �־��ּ���',0.0,11.0,4.0,'sora');
INSERT INTO tb_order (order_no, order_date, charge, credit_num, credit_exp, rcv_name, rcv_phone, rcv_addr_post, rcv_addr_detail, delivery_msg, tracking_num, credit_cd, delivery_com_cd, mem_id) VALUES (ORDER_NO_SEQ.NEXTVAL,SYSDATE,3500.0,'1234123412341234','1901','�ֹ���','010-3333-3333','111-227','��⵵ �����ֽ� ���ֵ� �����־���Ʈ 303�� 202ȣ','�̴Ϲ̴� �ù�Լ�',0.0,16.0,4.0,'minhee');
INSERT INTO tb_order (order_no, order_date, charge, credit_num, credit_exp, rcv_name, rcv_phone, rcv_addr_post, rcv_addr_detail, delivery_msg, tracking_num, credit_cd, delivery_com_cd, mem_id) VALUES (ORDER_NO_SEQ.NEXTVAL,SYSDATE,4300.0,'1234123412341234','1901','�ּҶ�','010-1111-1111','111-228','����� ������ ����2�� ���Ǿ���Ʈ 101�� 202ȣ','�����ù��Կ� �־��ּ���',0.0,11.0,4.0,'sora');



-------------------------------------------------------------------- product_n_order
INSERT INTO tb_product_n_order (product_no, order_no, buy_num,  process_cd) VALUES (10006.0,10000,1.0,11);
INSERT INTO tb_product_n_order (product_no, order_no, buy_num,  process_cd) VALUES (10004.0,10001,2.0,12);
INSERT INTO tb_product_n_order (product_no, order_no, buy_num,  process_cd) VALUES (10003.0,10002,2.0,13);
INSERT INTO tb_product_n_order (product_no, order_no, buy_num,  process_cd) VALUES (10001.0,10003,1.0,14);
INSERT INTO tb_product_n_order (product_no, order_no, buy_num,  process_cd) VALUES (10001.0,10004,1.0,14);
INSERT INTO tb_product_n_order (product_no, order_no, buy_num,  process_cd) VALUES (10000.0,10005,3.0,21);
INSERT INTO tb_product_n_order (product_no, order_no, buy_num,  process_cd) VALUES (10000.0,10006,1.0,31);
INSERT INTO tb_product_n_order (product_no, order_no, buy_num,  process_cd) VALUES (10002.0,10007,1.0,32);



-------------------------------------------------------------------- event
INSERT INTO tb_event (event_no, evt_title, evt_write_day, evt_hits, evt_content, evt_del_check, board_id, mem_id) VALUES (EVENT_NO_SEQ.nextval,'�ڿ������� ������ �� �Ǻθ� �����ϰ� ��ǰ �޾ư�����~',SYSDATE,19.0,'�ڿ��� � ��ǰ�� ����� ���̳���?<br><br>�ڿ������� ������ �� �Ǻθ� �����ϰ� ��ǰ �޾ư�����~<br>Before�� After �������� �ִٸ� ��÷ Ȯ���� Up!<br>�ڿ��� �Ǻο����� ������ 5�в��� <br>10���� ����� �ڿ��� ��ǰ�� �����帳�ϴ�.<br><br>�̺�Ʈ �Ⱓ : 3�� 10��~ 3�� 31��<br><br>���� ���� ��Ź�����^^<br>',0.0,2.0,'admin01');
INSERT INTO tb_event (event_no, evt_title, evt_write_day, evt_hits, evt_content, evt_del_check, board_id, mem_id) VALUES (EVENT_NO_SEQ.nextval,'�Ǻ� ������',SYSDATE,10.0,'<img src=http://i.imgur.com/xZQ9A66.jpg width=480><br>������������������������������������������������������ ��ǰ����<br>',0.0,2.0,'soojin');
INSERT INTO tb_event (event_no, evt_title, evt_write_day, evt_hits, evt_content, evt_del_check, board_id, mem_id) VALUES (EVENT_NO_SEQ.nextval,'�Ǻ� ������2',SYSDATE,10.0,'<img src=http://i.imgur.com/xZQ9A66.jpg width=480><br>�������������������������������������������������� ������ ��ǰ����<br>',1.0,2.0,'soojin');
INSERT INTO tb_event (event_no, evt_title, evt_write_day, evt_hits, evt_content, evt_del_check, board_id, mem_id) VALUES (EVENT_NO_SEQ.nextval,'������ �Ǻ�, Ŀ�� �ڽŰ�',SYSDATE,5.0,'�ʹ� ���ƿ�<br>�Ǻ� �ڽŰ� ������<br>ȭ���� ������<br>������ ���ݸ� �߾��<br><img src=http://i.imgur.com/Is27hIK.jpg width=690><br>',0.0,2.0,'soomin');
INSERT INTO tb_event (event_no, evt_title, evt_write_day, evt_hits, evt_content, evt_del_check, board_id, mem_id) VALUES (EVENT_NO_SEQ.nextval,'�ڿ����� �Բ����',SYSDATE,16.0,'�ڿ��� ģ���� ��õ���༭ ����غôµ�<br>���� �ڿ��� �� ������ �ȵɰ� ���ƿ�<br><br>��ħ���� ȭ���� �� �Ծ ����� ���׿�<br><br><img src=http://i.imgur.com/rbp8HpW.jpg height=575 width=383><br><br>ģȯ�� ��ǰ�� ���� �޶� ���� �ٸ�����<br>',0.0,2.0,'sora');


-------------------------------------------------------------------- notice
INSERT INTO tb_notice (notice_no, ntc_title, ntc_write_day, ntc_hits, ntc_content, ntc_del_check, ntc_attached_file1, ntc_attached_file2, board_id, mem_id) VALUES (NOTICE_NO_SEQ.NEXTVAL,'�ڿ��� ����Ʈ ������ �������ּ���',SYSDATE,72.0,'<img src=http://i.imgur.com/jhU5RJN.jpg width=299><br>�ڿ��� ����Ʈ�� �׷��� �����߽��ϴ�.<br>���� �¶������� ģȯ�� �ڿ��� �񴩸� ������ �����Ͻ� �� �ֽ��ϴ�.<br><br>������ �������ּ��� ¦¦¦!<br>',0.0,'null','null',1.0,'admin01');
INSERT INTO tb_notice (notice_no, ntc_title, ntc_write_day, ntc_hits, ntc_content, ntc_del_check, ntc_attached_file1, ntc_attached_file2, board_id, mem_id) VALUES (NOTICE_NO_SEQ.NEXTVAL,'�������� �޹��ȳ�',SYSDATE,121.0,'<img src=http://i.imgur.com/VIRttJX.jpg width=690><br>',0.0,'null','null',1.0,'admin02');
INSERT INTO tb_notice (notice_no, ntc_title, ntc_write_day, ntc_hits, ntc_content, ntc_del_check, ntc_attached_file1, ntc_attached_file2, board_id, mem_id) VALUES (NOTICE_NO_SEQ.NEXTVAL,' �������� �޹��ȳ�',SYSDATE,2.0,'<img src=http://i.imgur.com/VIRttJX.jpg width=690><br>',1.0,'null','null',1.0,'admin01');
INSERT INTO tb_notice (notice_no, ntc_title, ntc_write_day, ntc_hits, ntc_content, ntc_del_check, ntc_attached_file1, ntc_attached_file2, board_id, mem_id) VALUES (NOTICE_NO_SEQ.NEXTVAL,'�ڿ��� ������ ����� �ʾ��� ���� �˼��մϴ�.',SYSDATE,70.0,'�ȳ��ϼ��� �ڿ����Դϴ�.<br>�ΰŷ�Ʈ���� �ֹ� ���ַ����Ͽ� �ΰŷ�Ʈ�ֹ����� �� �Ϲ��ֹ������Ե���<br>��� �� ��۰����� ��Ȱ���� ����<br>�����Բ� ������ ���ĵ帮�� �� �� ���� �˼��ϴٴ� ������ �帮���ͽ��ϴ�.<br>&nbsp;<br>�켱, ���������� �ù蹰���� �����ϴٺ��� �ù����(cj�������)���� ������ �����Ǿ�<br>�����ȣ �Է��� �ʾ��� �߼��� �������� ��Ҹ� �ص帮�ų�<br>��ǰ�� �߸� �߼۵� ��찡 ���� ���̶� �����̵˴ϴ�.<br>&nbsp;<br>�̿����� 2/29~3/4���� ����۵� �ǵ��� ���������� �ް�<br>��߼��� �ص帮�����մϴ�.<br>&nbsp;<br>�ڿ����� �ϰ� �ֹ����̴ּµ� ����� �ʾ��� �ѹ�,<br>������ �߸� �߼۵Ǿ� �ι�,<br>��۰��� ���� �������� ����,<br>������ �Ǹ��ϼ��� �����Ե鲲 ���� �˼��ϴٴ� ������ �帳�ϴ�.<br>&nbsp;<br>�����ִ� ��ȭ���Ƿ��� ���� ������ ��Ȱ���� ���Ұ����� ����˴ϴ�.<br>īī���� �÷���ģ�� @�ڿ����� ����Ͽ� ����۰ǵ鿡 ���� ���Ǹ� �ֽø�<br>Ȯ�� �� �ִ��� ���� ���ϳ� ��ǰ�� ��߼��ص帮���� �ϰڽ��ϴ�.<br>(@�ڿ��� �˻� �� �����������Ŵٸ� @�ڿ����� �˻��Ͻø� 16��° @�ڿ����� ã���� �� �����ʴϴ�.)<br>&nbsp;<br>�̹� �ΰŷ�Ʈ���¸� ���� �ڿ��� �������� ��� ���ü����<br>�������� �����س����� �ֻ���� ���ݸ� ���� �Ʒ����� �������ֽø�<br>���� ���� ��ǰ�� ���񽺷� �����ϴ� �ڿ����� �ǵ��� ����ϰڽ��ϴ�.<br>�����մϴ�.<br>',0.0,'null','null',1.0,'admin01');



------------------------------------------------------------------------ faq
INSERT INTO tb_faq (faq_no, faq_title, faq_content, faq_del_check, board_id, mem_id) VALUES (FAQ_NO_SEQ.NEXTVAL,'���� â�� �ȶߴµ� ��� �ؾ��ϳ���?','��Ȥ ���� â�� �ȶ�ٰ� �����Ͻô� �����Ե��� �����ʴϴ�.<br>�� ��� �˾� ������ �����س��Ƽ� �ڵ����� KCP���� â�� �����ʱ⶧���� �������� ����â�� �����ּž��մϴ�.<br>&nbsp;<br>�ֹ����� �õ��ϼ����� ���� �Ʒ��� ���� ȭ���� ���̽Ŵٸ� �����ϱ� ��ư�� �����ø� KCP���� �������� ���� �� �����ʴϴ�.<br><br><img src=http://i.imgur.com/UdtItem.png width=690><br><br>Ȥ�� ���� ������ ���� �����ϱⰡ �����ʰ� �̻��� ������ �ߴ� ��쿡�� KCP���α׷��� ��ġ�����ʾ� �߻��ϴ� �����̿���, �����ϴ� �������� KCP ������ �ʿ��� �ڷḦ ��ġ �� �������ֽñ� �ٶ��ϴ�.<br>�����մϴ�.<br>',0.0,3.0,'admin01');
INSERT INTO tb_faq (faq_no, faq_title, faq_content, faq_del_check, board_id, mem_id) VALUES (FAQ_NO_SEQ.NEXTVAL,'���� â�� �ȶߴµ� ��� �ؾ��ϳ���?','��Ȥ ���� â�� �ȶ�ٰ� �����Ͻô� �����Ե��� �����ʴϴ�.<br>�� ��� �˾� ������ �����س��Ƽ� �ڵ����� KCP���� â�� �����ʱ⶧���� �������� ����â�� �����ּž��մϴ�.<br>&nbsp;<br>�ֹ����� �õ��ϼ����� ���� �Ʒ��� ���� ȭ���� ���̽Ŵٸ� �����ϱ� ��ư�� �����ø� KCP���� �������� ���� �� �����ʴϴ�.<br><br><img src=http://i.imgur.com/UdtItem.png width=690><br><br>Ȥ�� ���� ������ ���� �����ϱⰡ �����ʰ� �̻��� ������ �ߴ� ��쿡�� KCP���α׷��� ��ġ�����ʾ� �߻��ϴ� �����̿���, �����ϴ� �������� KCP ������ �ʿ��� �ڷḦ ��ġ �� �������ֽñ� �ٶ��ϴ�.<br>�����մϴ�.<br>',1.0,3.0,'admin01');
INSERT INTO tb_faq (faq_no, faq_title, faq_content, faq_del_check, board_id, mem_id) VALUES (FAQ_NO_SEQ.NEXTVAL,'���� ��۹޴� ����� �˷��ּ���','���� 11�ñ��� �ֹ�/������ �Ϸ��Ͻø�<br>������ �ٷ� ��ǰ�� ��� ������ �� �ֽ��ϴ�.<br>',0.0,3.0,'admin01');
INSERT INTO tb_faq (faq_no, faq_title, faq_content, faq_del_check, board_id, mem_id) VALUES (FAQ_NO_SEQ.NEXTVAL,'���� ��۹޴� ����� �˷��ּ���','���� 11�ñ��� �ֹ�/������ �Ϸ��Ͻø�<br>������ �ٷ� ��ǰ�� ��� ������ �� �ֽ��ϴ�.<br>',1.0,3.0,'admin01');
INSERT INTO tb_faq (faq_no, faq_title, faq_content, faq_del_check, board_id, mem_id) VALUES (FAQ_NO_SEQ.NEXTVAL,'��ǰ�� ��� �����ؾ� �ϳ���?','���� �ڿ��� ��ǰ�� ����� �ܿ� ÷���� ���� ���� ������ �߸��Ͻ� ���<br>�����ǰų� ������ ���� �� ������ ������ �����Ͻñ� �ٶ��ϴ�.<br>���籤�� �� ���⸦ ���� �ǳ��� ���� �����Ͻð� ���� �Ǵ� �õ����� �Ͻô� ���� �����ϴ�.<br>',0.0,3.0,'admin01');
INSERT INTO tb_faq (faq_no, faq_title, faq_content, faq_del_check, board_id, mem_id) VALUES (FAQ_NO_SEQ.NEXTVAL,'���� �������� �³���?','���ݸ� ���캸�� �� �� �ִ� ���� ���� �̹����� ���Ͻø� ���� �� �� �ְ�<br>������ ����� �ѹ��� ���� ���������� ����Ͻô� ���̶�� ����� �ʰ� �����Ͻ� �� �ֽ��ϴ�.<br>�׸���, ������ �����ü���� �ֽ��ϰ� ������ �Һ����ξ� ���Ÿ� �ؼ� ������ ����ǥ�ø�<br>�Ű��ϱ� ������ ���� ö���ϰ� Ȯ���� �ϰ� �ֽ��ϴ�.<br>���� �ڿ����� �����Ե��� �ŷڸ� ���� ������, ������ ǥ�⸦ �Ͽ� �����帮�� �ֽ��ϴ�.<br>',0.0,3.0,'admin01');


