-- 게시판 목록 뷰 생성 (프론트)
-- 상품명, 제목, 작성날짜, 조회수, 내용, 만족도, 아이디, 댓글 개수
CREATE VIEW v_review_front AS
SELECT r.review_no, r.product_no, r.rvw_title, r.rvw_write_day, 
r.rvw_hits, r.rvw_content, r.rvw_satisfaction, r.mem_id,
NVL((SELECT COUNT(review_re_no) FROM tb_review_re re WHERE re.rvw_no = 
r.review_no AND re.rvw_re_del_check = 0), 0) as re_num
FROM tb_review r 
WHERE r.rvw_del_check = 0
group by r.review_no, r.product_no, r.rvw_title, r.rvw_write_day, 
r.rvw_hits, r.rvw_content, r.rvw_satisfaction, r.mem_id
order by r.review_no;

-- 게시판 목록 뽑기 (프론트)
-- 상품명, 제목, 작성날짜, 조회수, 내용, 만족도, 아이디, 댓글 개수
SELECT review_no, rvw_title, rvw_write_day, rvw_hits, rvw_content, 
rvw_satisfaction, mem_id, RE_NUM
FROM v_review_pront
WHERE product_no = 10003;
