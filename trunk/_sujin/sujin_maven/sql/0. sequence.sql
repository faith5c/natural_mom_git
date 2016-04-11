/* 주문 */
create sequence order_no_seq increment by 1 start with 10000 nocache;
/* 상품 */
create sequence product_no_seq increment by 1 start with 10000 nocache;

/* 자주하는 질문 */
create sequence faq_no_seq increment by 1 start with 1 nocache;
/* 이벤트 */
create sequence event_no_seq increment by 1 start with 1 nocache;
/* Q&A */
create sequence qna_no_seq increment by 1 start with 1 nocache;
/* 공지사항 */
create sequence notice_no_seq increment by 1 start with 1 nocache;
/* 상품후기 */
create sequence review_no_seq increment by 1 start with 1 nocache;

/* 상품후기 댓글 */
create sequence review_re_no_seq increment by 1 start with 1 nocache;
/* Q&A 댓글 */
create sequence qna_re_no_seq increment by 1 start with 1 nocache;
/* 공지사항 댓글 */
create sequence notice_re_no_seq increment by 1 start with 1 nocache;
/* 이벤트 댓글 */
create sequence event_re_no_seq increment by 1 start with 1 nocache;


