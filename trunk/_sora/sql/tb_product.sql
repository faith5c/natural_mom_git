-- 상품 등록하기
-- 상품명, 상품 분류, 상품 가격, 원가, 재고, 상품 이미지, 상품 요약 설명, 상품 상세 설명

INSERT INTO "tb_product" ("product_name", "selling_price", "cost_price", "stock", "display_state", "sale_state", "represent_img", "detail_img", "summary_ex", "detail_ex", "deleted_state", "weight", "category_cd", "product_no") VALUES ('아마씨 비누',3500,3000,100,1,1,'http://i.imgur.com/XQxOgR0.jpg','http://naturalmom.co.kr/shop/shop_image/attach/1508/20150825103458_dssxswyt.jpg','영양 가득한 생명의 씨앗','null',0,100.0,1,PRODUCT_NO_SEQ.NEXTVAL);

-- 상품 상태 수정하기
-- 수정: 진열상태, 판매 상태, 삭제
-- SET (0: false, 1:true) : tb_produdct 테이블
UPDATE "tb_product" SET "display_state" = 1 WHERE "product_no" = ?;
UPDATE "tb_product" SET "sale_state" = 1 WHERE "product_no" = ?;
UPDATE "tb_product" SET "deleted_state" = 1, "display_state" = 1, "sale_state" = 1 WHERE "product_no" = ?;



-- 상품 수정하기 페이지에 상품 수정 시 내용 가져오기
상품명, 상품분류, 상품 가격, 공급 원가, 재고, 상품대표 이미지, 상품 요약설명, 상품 상세 설명, 진열 상태, 판매 상태
-- SELECT
SELECT "product_name", "category_cd", "selling_price", "cost_price", "stock", "weight",
"represent_img", "detail_img", "summary_ex", "detail_ex", "display_state", "sale_state"
FROM "tb_product";

-- UPDATE : 상품 수정한 것 내용에 넣기
UPDATE "tb_product" SET "product_name" = '뽕잎 비누', "category_cd" = 3, "selling_price" = 4500, "cost_price" = 3700, "stock" = 80, "weight" = 100,
"represent_img" = 'http://i.imgur.com/BgjzGXR.jpg',"detail_img" = 'http://naturalmom.co.kr/shop/shop_image/attach/1512/20151207144609_iumbvwrf.jpg', 
"summary_ex" = '깨끗한 피부톤을 위한', "detail_ex" = NULL, "display_state" = 1, "sale_state" = 1
WHERE "product_no" = 10002;



-- 삭제 상품 복원
-- UPDATE
UPDATE "tb_product" SET "deleted_state" = 0, "display_state" = 1, "sale_state" = 1 WHERE "product_no" = ?;
