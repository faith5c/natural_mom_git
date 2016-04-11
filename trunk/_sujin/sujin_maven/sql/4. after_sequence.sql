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
INSERT INTO tb_notice_re (notice_re_no, ntc_re_content, ntc_re_write_day, ntc_re_del_check, notice_no, mem_id) VALUES (NOTICE_RE_NO_SEQ.NEXTVAL,'오픈 ㅊㅋㅊㅋ여',SYSDATE,0.0,1.0,'soomin');
INSERT INTO tb_notice_re (notice_re_no, ntc_re_content, ntc_re_write_day, ntc_re_del_check, notice_no, mem_id) VALUES (NOTICE_RE_NO_SEQ.NEXTVAL,'관리자님.. 이거 중복인듯',SYSDATE,0.0,3.0,'sora');
INSERT INTO tb_notice_re (notice_re_no, ntc_re_content, ntc_re_write_day, ntc_re_del_check, notice_no, mem_id) VALUES (NOTICE_RE_NO_SEQ.NEXTVAL,'헐 늦으면 안되요 현기증나요',SYSDATE,0.0,4.0,'soomin');
INSERT INTO tb_notice_re (notice_re_no, ntc_re_content, ntc_re_write_day, ntc_re_del_check, notice_no, mem_id) VALUES (NOTICE_RE_NO_SEQ.NEXTVAL,'ㅠㅠ 비누 안오면 그동안 뭐로 닦죠?',SYSDATE,0.0,4.0,'soojin');
INSERT INTO tb_notice_re (notice_re_no, ntc_re_content, ntc_re_write_day, ntc_re_del_check, notice_no, mem_id) VALUES (NOTICE_RE_NO_SEQ.NEXTVAL,'난 이거 안시켰어요 아싸',SYSDATE,1.0,4.0,'minhee');
INSERT INTO tb_notice_re (notice_re_no, ntc_re_content, ntc_re_write_day, ntc_re_del_check, notice_no, mem_id) VALUES (NOTICE_RE_NO_SEQ.NEXTVAL,'불편을 드려 대단히 죄송합니다, 더 좋은 제품으로 보답하는 자연맘 되도록 하겠습니다.',SYSDATE,0.0,4.0,'admin02');



------------------------------------------------------------------- review_re
INSERT INTO tb_review_re (review_re_no, rvw_re_content, rvw_re_write_day, rvw_re_del_check, rvw_no, mem_id) VALUES (REVIEW_RE_NO_SEQ.NEXTVAL,'구매해주셔서 고맙습니다~^^ 더 좋은 제품으로 보답하는 자연맘이 되겠습니다.',SYSDATE,0.0,1.0,'admin01');
INSERT INTO tb_review_re (review_re_no, rvw_re_content, rvw_re_write_day, rvw_re_del_check, rvw_no, mem_id) VALUES (REVIEW_RE_NO_SEQ.NEXTVAL,'구매해주셔서 고맙습니다~^^ 더 좋은 제품으로 보답하는 자연맘이 되겠습니다.',SYSDATE,0.0,2.0,'admin01');
INSERT INTO tb_review_re (review_re_no, rvw_re_content, rvw_re_write_day, rvw_re_del_check, rvw_no, mem_id) VALUES (REVIEW_RE_NO_SEQ.NEXTVAL,'구매해주셔서 고맙습니다~^^ 더 좋은 제품으로 보답하는 자연맘이 되겠습니다.',SYSDATE,0.0,3.0,'admin01');
INSERT INTO tb_review_re (review_re_no, rvw_re_content, rvw_re_write_day, rvw_re_del_check, rvw_no, mem_id) VALUES (REVIEW_RE_NO_SEQ.NEXTVAL,'저도 고맙네요',SYSDATE,0.0,3.0,'soomin');
INSERT INTO tb_review_re (review_re_no, rvw_re_content, rvw_re_write_day, rvw_re_del_check, rvw_no, mem_id) VALUES (REVIEW_RE_NO_SEQ.NEXTVAL,'구매해주셔서 고맙습니다~^^ 더 좋은 제품으로 보답하는 자연맘이 되겠습니다.',SYSDATE,0.0,4.0,'admin01');
INSERT INTO tb_review_re (review_re_no, rvw_re_content, rvw_re_write_day, rvw_re_del_check, rvw_no, mem_id) VALUES (REVIEW_RE_NO_SEQ.NEXTVAL,'구매해주셔서 고맙습니다~^^ 더 좋은 제품으로 보답하는 자연맘이 되겠습니다.',SYSDATE,0.0,5.0,'admin01');
INSERT INTO tb_review_re (review_re_no, rvw_re_content, rvw_re_write_day, rvw_re_del_check, rvw_no, mem_id) VALUES (REVIEW_RE_NO_SEQ.NEXTVAL,'구매해주셔서 고맙습니다~^^ 더 좋은 제품으로 보답하는 자연맘이 되겠습니다.',SYSDATE,0.0,6.0,'admin01');
INSERT INTO tb_review_re (review_re_no, rvw_re_content, rvw_re_write_day, rvw_re_del_check, rvw_no, mem_id) VALUES (REVIEW_RE_NO_SEQ.NEXTVAL,'구매해주셔서 고맙습니다~^^ 더 좋은 제품으로 보답하는 자연맘이 되겠습니다.',SYSDATE,0.0,7.0,'admin01');
INSERT INTO tb_review_re (review_re_no, rvw_re_content, rvw_re_write_day, rvw_re_del_check, rvw_no, mem_id) VALUES (REVIEW_RE_NO_SEQ.NEXTVAL,'내 동생은 안돼가됨',SYSDATE,1.0,7.0,'soojin');



-------------------------------------------------------------------- event_re
INSERT INTO tb_event_re (event_re_no, evt_re_content, evt_re_write_day, evt_re_del_check, evt_no, mem_id) VALUES (EVENT_RE_NO_SEQ.NEXTVAL,'헐 지금바로 참여ㄱㄱ',SYSDATE,0.0,1.0,'soojin');
INSERT INTO tb_event_re (event_re_no, evt_re_content, evt_re_write_day, evt_re_del_check, evt_no, mem_id) VALUES (EVENT_RE_NO_SEQ.NEXTVAL,'좋은 정보네요^^',SYSDATE,0.0,1.0,'sora');
INSERT INTO tb_event_re (event_re_no, evt_re_content, evt_re_write_day, evt_re_del_check, evt_no, mem_id) VALUES (EVENT_RE_NO_SEQ.NEXTVAL,'soojin님 사진보고 깜짝 놀라버렸어요!<br> 이벤트 참여해주셔서 감사해요^^',SYSDATE,0.0,2.0,'admin02');
INSERT INTO tb_event_re (event_re_no, evt_re_content, evt_re_write_day, evt_re_del_check, evt_no, mem_id) VALUES (EVENT_RE_NO_SEQ.NEXTVAL,'sumin님 정말 미인이시네요!<br> 이벤트 참여해주셔서 감사해요^^',SYSDATE,0.0,4.0,'admin02');
INSERT INTO tb_event_re (event_re_no, evt_re_content, evt_re_write_day, evt_re_del_check, evt_no, mem_id) VALUES (EVENT_RE_NO_SEQ.NEXTVAL,'이거 본인 사진 아닌듯..',SYSDATE,0.0,4.0,'minhee');
INSERT INTO tb_event_re (event_re_no, evt_re_content, evt_re_write_day, evt_re_del_check, evt_no, mem_id) VALUES (EVENT_RE_NO_SEQ.NEXTVAL,'sora님 저희 제품 덕분에 화장이 잘된다니 영광이네요<br> 이벤트 참여해주셔서 감사해요^^',SYSDATE,0.0,5.0,'admin02');

------------------------------------------------------------------- QnA RE
INSERT INTO tb_qna_re (qna_re_no, qna_re_content, qna_re_write_day, qna_re_del_check, qna_no, mem_id) VALUES (QNA_RE_NO_SEQ.NEXTVAL,'좋은 게시판이네요 야호',SYSDATE,0.0,1.0,'soojin');
INSERT INTO tb_qna_re (qna_re_no, qna_re_content, qna_re_write_day, qna_re_del_check, qna_no, mem_id) VALUES (QNA_RE_NO_SEQ.NEXTVAL,'궁금한게 많았는데 다행',SYSDATE,0.0,1.0,'soomin');
INSERT INTO tb_qna_re (qna_re_no, qna_re_content, qna_re_write_day, qna_re_del_check, qna_no, mem_id) VALUES (QNA_RE_NO_SEQ.NEXTVAL,'빨리 답글좀여.. 현기증나여',SYSDATE,0.0,2.0,'soomin');
INSERT INTO tb_qna_re (qna_re_no, qna_re_content, qna_re_write_day, qna_re_del_check, qna_no, mem_id) VALUES (QNA_RE_NO_SEQ.NEXTVAL,'관리자님 진짜 수고하시는듯 해요ㅠㅠ',SYSDATE,0.0,8.0,'sora');
INSERT INTO tb_qna_re (qna_re_no, qna_re_content, qna_re_write_day, qna_re_del_check, qna_no, mem_id) VALUES (QNA_RE_NO_SEQ.NEXTVAL,'나만 그래요?',SYSDATE,1.0,7.0,'minhee');
