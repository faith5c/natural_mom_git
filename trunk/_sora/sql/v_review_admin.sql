-- 게시판 뷰 만들기 (백)
-- 상품번호, 상품명, 제목, 내용, 작성자, 작성일, 만족도, 조회수, 댓글 개수
CREATE VIEW v_review_admin AS
SELECT r.review_no, r.product_no, p.product_name, r.rvw_title,
r.rvw_content, r.mem_id, r.rvw_write_day, r.rvw_satisfaction, r.rvw_hits,
COUNT(re.review_re_no) as re_num
FROM tb_product p, tb_review r LEFT OUTER JOIN tb_review_re re
ON r.review_no = re.rvw_no
WHERE r.product_no = p.product_no
AND r.rvw_del_check = 0 
group by r.review_no, r.product_no, p.product_name, r.rvw_title, r.mem_id, 
r.rvw_content, r.rvw_write_day, r.rvw_satisfaction, r.rvw_hits
order by r.review_no;

-- 게시판 목록 뽑기 (백)
-- 상품번호, 상품명, 제목, 작성자, 작성일, 만족도, 댓글 개수
SELECT review_no, product_name, rvw_title, mem_id, rvw_write_day, 
rvw_satisfaction, RE_NUM 
FROM v_review_admin;

-- 게시판 내용 뽑기 (백)
-- 상품번호, 상품명, 제목, 만족도, 작성자, 작성일, 조회수, 내용
SELECT review_no, product_name, rvw_title, rvw_satisfaction, mem_id,
rvw_write_day, rvw_hits, rvw_content
FROM v_review_admin
WHERE review_no = ?;

-- 제목으로 검색하기 (백)
SELECT review_no, product_name, rvw_title, mem_id, rvw_write_day, 
rvw_satisfaction, RE_NUM 
FROM v_review_admin
WHERE rvw_title LIKE '%구입%';

-- 내용으로 검색하기 (백)
SELECT review_no, product_name, rvw_title, mem_id, rvw_write_day, 
rvw_satisfaction, RE_NUM 
FROM v_review_admin
WHERE rvw_content LIKE '%구입%';

-- 글쓴이로 검색하기 (백)
SELECT review_no, product_name, rvw_title, mem_id, rvw_write_day, 
rvw_satisfaction, RE_NUM 
FROM v_review_admin
WHERE mem_id LIKE '%so%';

-- 제목 + 내용으로 검색하기 (백)
SELECT review_no, product_name, rvw_title, mem_id, rvw_write_day, 
rvw_satisfaction, RE_NUM 
FROM v_review_admin
WHERE (rvw_title LIKE '%짱좋%' OR rvw_content LIKE '%짱좋%');
