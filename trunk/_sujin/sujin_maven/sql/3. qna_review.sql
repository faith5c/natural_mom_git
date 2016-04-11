------------------------------------------- QnA
INSERT INTO tb_qna (qna_no, qna_title, qna_write_day, qna_hits, qna_content,  qna_del_check,  qna_pw, qna_pos, qna_ref, board_id, mem_id) VALUES (qna_no_seq.nextval,'이곳은 질문을 올리는 게시판입니다',SYSDATE,36.0,'궁금한 사항이 있으면 언제든지 이 게시판에 글을 남겨주세요!<br>친절한 자연맘 지기가 여러분의 궁금증을 해결해 드립니다<br><br>Q&amp;A 게시판은 자연맘 회원만 이용하실 수 있습니다<br>감사합니다.<br>',0.0,null,0,qna_no_seq.currval,4.0,'admin01');
INSERT INTO tb_qna (qna_no, qna_title, qna_write_day, qna_hits, qna_content,  qna_del_check,  qna_pw, qna_pos, qna_ref, board_id, mem_id) VALUES (qna_no_seq.nextval,'제가 주문한 비누 언제와요?',SYSDATE,3.0,'비누 방금 주문했는데<br>언제 받아볼 수 있나여<br>주말이 끼어있어서 내일은 못받아 보는건가요<br>저 현기증나요<br>',0.0,null,0,qna_no_seq.currval,4.0,'soomin');
--- 여기까지 인서트

INSERT INTO tb_qna (qna_no, qna_title, qna_write_day, qna_hits, qna_content,  qna_del_check,  qna_pw, qna_pos, qna_ref, board_id, mem_id) VALUES (qna_no_seq.nextval,'답변입니다^^',SYSDATE,2.0,'soomin 고객님, <br>지금 주문하신 사항 바로 확인되었습니다.<br><br>현기증 나지 않게 바로 배송처리 해드렸습니다.<br>배송상태 바로 확인하시면 언제쯤 물건 받으실 지 알아 보실 수 있습니다<br><br>저희 자연맘을 이용해 주셔서 감사합니다^^<br>',0.0,null,1,2.0,4.0,'admin01');

--- 후 인서트
INSERT INTO tb_qna (qna_no, qna_title, qna_write_day, qna_hits, qna_content,  qna_del_check,  qna_pw, qna_pos, qna_ref, board_id, mem_id) VALUES (qna_no_seq.nextval,'이 비누 정말 자연 그대로인가요?',SYSDATE,7.0,'유기농 재료로 인체에 무해한 비누인거 확실하나요?<br>저한테는 정말 중요한 사항이에요<br><br>실수로 비누를 먹을 수도 있잖아요<br>제가 그렇다는게 아니라<br>어쨋든 말이죠<br><br>빠른 답변바랍니다.<br>',0.0,'1234',0,qna_no_seq.currval,4.0,'sora');

--- 후 인서트
INSERT INTO tb_qna (qna_no, qna_title, qna_write_day, qna_hits, qna_content,  qna_del_check, qna_pw, qna_pos, qna_ref, board_id, mem_id) VALUES (qna_no_seq.nextval,'답변입니다^^',SYSDATE,2.0,'sora 고객님,<br><br>저희는 천연 유기농 재료로만 사용하여 믿고 사용하실 수 있는 제품이 맞습니다.<br>하지만 고객님 비누를 섭취하시는 것은 몸에 유해할 수 있으니 삼가 주시는게 좋을 것 같습니다.<br><br>저희 자연맘을 이용해 주셔서 감사합니다^^<br>',0.0,'1234',1,4.0,4.0,'admin01');

--- 후 인서트
INSERT INTO tb_qna (qna_no, qna_title, qna_write_day, qna_hits, qna_content,  qna_del_check,  qna_pw, qna_pos, qna_ref, board_id, mem_id) VALUES (qna_no_seq.nextval,'정말 감사합니다 자연맘 사랑해요',SYSDATE,3.0,'정말 이상한 질문 했다고 생각했는데<br>친절하게 답변해주시고.. 정말 자연맘 좋네요<br><br>다음에도 자주 구입할게요<br>비누도 너무 좋아요<br>맛도 좋아요<br>',0.0,null,1,5.0,4.0,'sora');
INSERT INTO tb_qna (qna_no, qna_title, qna_write_day, qna_hits, qna_content,  qna_del_check,  qna_pw, qna_pos, qna_ref, board_id, mem_id) VALUES (qna_no_seq.nextval,'비누가 이상해요',SYSDATE,10.0,'비누가 이상해요<br>미끌미끌하고<br>거품이나요<br><br>거의 다 써가는데 환불되나요?<br>',1.0,null,1,1,4.0,'minhee');

--- 후 인서트
INSERT INTO tb_qna (qna_no, qna_title, qna_write_day, qna_hits, qna_content, qna_del_check, qna_pw, qna_pos, qna_ref, board_id, mem_id) VALUES (qna_no_seq.nextval,'답변입니다^^',SYSDATE,2.0,'minhee 고객님,<br><br>구입하신 비누가 미끌미끌하고 거품이 나는건<br>정상제품이기 때문에 환불이 불가능합니다.<br><br>거품으로 깨끗하게 세안하시고 남은 제품도 끝까지 사용하셔서<br>아름다운 피부 가꾸시길 바랍니다<br><br>감사합니다^^<br>',0.0,null,1,7.0,4.0,'admin02');

--------------------------------------------------------------------- review
INSERT INTO tb_review (review_no, rvw_title, rvw_write_day, rvw_hits, rvw_content, rvw_del_check, rvw_satisfaction, product_no, board_id, mem_id) VALUES (REVIEW_NO_SEQ.NEXTVAL,'정말정말 좋네요',SYSDATE,4.0,'향기가 너무 좋아요~~~~ 스멜굿<br>향기가 너무 좋아요~~~~ 스멜굿<br>향기가 너무 좋아요~~~~ 스멜굿향기가 너무 좋아요~~~~ 스멜굿향기가 너무 좋아요~~~~ 스멜굿향기가 너무 좋아요~~~~ 스멜굿향기가 너무 좋아요~~~~ 스멜굿향기가 너무 좋아요~~~~ 스멜굿<br>향기가 너무 좋아요~~~~ 스멜굿향기가 너무 좋아요~~~~ 스멜굿',0.0,5.0,10003,5.0,'sora');
INSERT INTO tb_review (review_no, rvw_title, rvw_write_day, rvw_hits, rvw_content, rvw_del_check, rvw_satisfaction, product_no, board_id, mem_id) VALUES (REVIEW_NO_SEQ.NEXTVAL,'어메이징',SYSDATE,5.0,'부들부들 해져요 짱좋! ',0.0,4.0,10003.0,5.0,'soojin');
INSERT INTO tb_review (review_no, rvw_title, rvw_write_day, rvw_hits, rvw_content, rvw_del_check, rvw_satisfaction, product_no, board_id, mem_id) VALUES (REVIEW_NO_SEQ.NEXTVAL,'배송 빠름',SYSDATE,77.0,'현기증 났는데 빨리 왔어요',0.0,3.0,10007.0,5.0,'soomin');
INSERT INTO tb_review (review_no, rvw_title, rvw_write_day, rvw_hits, rvw_content, rvw_del_check, rvw_satisfaction, product_no, board_id, mem_id) VALUES (REVIEW_NO_SEQ.NEXTVAL,'짱짱',SYSDATE,63.0,'이 비누 정말 짱인듯 또 살래요 두번살래요',0.0,5.0,10006.0,5.0,'sora');
INSERT INTO tb_review (review_no, rvw_title, rvw_write_day, rvw_hits, rvw_content, rvw_del_check, rvw_satisfaction, product_no, board_id, mem_id) VALUES (REVIEW_NO_SEQ.NEXTVAL,'뚬치뚬치',SYSDATE,5.0,'심장이 바운스바운스 두근대 들킬까봐 겁나',1.0,1.0,10005.0,5.0,'minhee');
INSERT INTO tb_review (review_no, rvw_title, rvw_write_day, rvw_hits, rvw_content, rvw_del_check, rvw_satisfaction, product_no, board_id, mem_id) VALUES (REVIEW_NO_SEQ.NEXTVAL,'또 구입할예정',SYSDATE,4.0,'가격도 저렴한데 피부도 많이 좋아졌어요<br>자연맘 감사해요<br>',0.0,3.0,10006.0,5.0,'soomin');
INSERT INTO tb_review (review_no, rvw_title, rvw_write_day, rvw_hits, rvw_content, rvw_del_check, rvw_satisfaction, product_no, board_id, mem_id) VALUES (REVIEW_NO_SEQ.NEXTVAL,'동생 여드름에 좋다그래서 샀어요',SYSDATE,7.0,'동생 여드름에 좋다고해서 구입했어요 <br> 안여돼였는데 이제 안돼에요',0.0,4.0,10003.0,5.0,'soojin');

