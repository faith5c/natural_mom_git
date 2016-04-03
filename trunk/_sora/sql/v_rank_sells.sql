-- 총 판매량 계산하기
CREATE VIEW v_rank_sells AS
SELECT NVL((SELECT SUM("o"."buy_num") FROM "tb_product_n_order" "o" WHERE "o"."product_no" = 
"p"."product_no" AND "o"."process_cd" = 21
GROUP BY "o"."product_no"), 0) AS all_sells, "p"."product_name"
FROM "tb_product" "p"
WHERE "p"."deleted_state" = 0
ORDER BY "ALL_SELLS" DESC, "product_name";

-- 정렬기준: 판매 순위
-- ORDER BY
SELECT ROWNUM, "ALL_SELLS", "product_name" FROM "V_RANK_SELLS"
ORDER BY ROWNUM;
SELECT ROWNUM, "ALL_SELLS", "product_name" FROM "V_RANK_SELLS"
ORDER BY ROWNUM DESC;