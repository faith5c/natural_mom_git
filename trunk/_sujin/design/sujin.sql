--<<�ֹ�-ȸ��>>--
---�ֹ���ȸ(�� ����)
CREATE OR REPLACE VIEW v_order_list AS SELECT "o"."order_no", "o"."order_date", "p"."represent_img", "p"."product_name", 
"po"."buy_num", "o"."charge", "pr"."process_nm", "m"."mem_id"
FROM "tb_order" "o", "tb_member" "m", "tb_product" "p", "tb_product_n_order" "po", "tb_process" "pr"
WHERE "o"."order_no" = "po"."order_no" AND "o"."mem_id" = "m"."mem_id" AND "p"."product_no" = "po"."product_no" 
AND "pr"."process_cd" = "po"."process_cd";

---�ֹ���ȸ(����Ʈ, ȸ������ ���)
SELECT "order_no", "order_date", "represent_img", "product_name", 
"buy_num", "charge", "process_nm", "mem_id" FROM v_order_list WHERE "mem_id" = 'sora';

--- �ֹ��ϱ�(insert) "tb_order" ���� �� ���ÿ� pk �� return "tb_product_n_order" ���ڵ� ����
--- "tb_product_n_order" ���ڵ� ���� ���� �� "tb_order" �ѹ�

INSERT INTO "tb_order" ("charge", "credit_num", "credit_exp", "rcv_name", "rcv_phone", "rcv_addr_post", 
"rcv_addr_detail", "delivery_msg", "tracking_num", "credit_cd", "delivery_com_cd", "mem_id", "order_no") VALUES 
(4300.0,1234123412341234,1.0,'�ּҶ�','010-1111-1111','111-228','����� ������ ����2�� ���Ǿ���Ʈ 101�� 202ȣ',
'�����ù��Կ� �־��ּ���',0.0,11.0,4.0,'sora', ORDER_NO_SEQ.NEXTVAL);

INSERT INTO "tb_order" ("charge", "credit_num", "credit_exp", "rcv_name", "rcv_phone", "rcv_addr_post", 
"rcv_addr_detail", "delivery_msg", "tracking_num", "credit_cd", "delivery_com_cd", "mem_id", "order_no") VALUES 
(4300.0,1234123412341234,1.0,'�ּҶ�','010-1111-1111','111-228','����� ������ ����2�� ���Ǿ���Ʈ 101�� 202ȣ',
'�����ù��Կ� �־��ּ���',0.0,(SELECT "c"."credit_cd" FROM "tb_credit" "c" WHERE "c"."credit_nm" = '�Ե�'),
(SELECT "d"."delivery_com_cd" FROM "tb_delivery_com" "d" WHERE "d"."delivery_com_nm" = '���ο�ĸ'),'sora', ORDER_NO_SEQ.NEXTVAL);


INSERT INTO "tb_product_n_order" ("product_no", "order_no", "buy_num", "process_cd") VALUES (10003.0,10007,1.0,32);

--- ��� ���� �� ȯ��(update)
--��ü
UPDATE "NMDB"."tb_product_n_order" SET "process_cd" = '31' WHERE "order_no" = '10001';
--�Ϻ�
UPDATE "tb_product_n_order" "po" SET "po"."process_cd" = '21' 
WHERE EXISTS(SELECT "p"."product_no" FROM "tb_product" "p" 
WHERE "p"."product_no" = "po"."product_no" AND "p"."product_name" = '�� ��') AND "order_no" = '10007'; 


--<<�ֹ�-������>>--
---�ֹ�����(�� ����)
CREATE OR REPLACE VIEW v_order_manager AS SELECT "o"."order_date", "o"."order_no", "m"."mem_name", "p"."product_name", 
"po"."buy_num", "o"."charge", "o"."delivery_msg", "o"."tracking_num", "pr"."process_nm"
FROM "tb_order" "o", "tb_member" "m", "tb_product" "p", "tb_product_n_order" "po", "tb_process" "pr"
WHERE "o"."order_no" = "po"."order_no" AND "o"."mem_id" = "m"."mem_id" AND "p"."product_no" = "po"."product_no" 
AND "pr"."process_cd" = "po"."process_cd";

---�ֹ�����(����Ʈ)
SELECT * FROM v_order_manager;

--- ����� ���(���� ������ �ȵǼ� ����嵵 ���� ���徿)
UPDATE "NMDB"."tb_order" SET "tracking_num" = '20101111' WHERE "order_no" = '10001';

--- ó������ ����(update, ����Ȯ�� �Ұ�)
--��ü
UPDATE "NMDB"."tb_product_n_order" SET "process_cd" = '31' WHERE "order_no" = '10001';
--�Ϻ�
UPDATE "tb_product_n_order" "po" SET "po"."process_cd" = '21' 
WHERE EXISTS(SELECT "p"."product_no" FROM "tb_product" "p" 
WHERE "p"."product_no" = "po"."product_no" AND "p"."product_name" = '�� ��') AND "order_no" = '10007'; 


--<<����>>--

--- ������ȸ(����Ʈ/ ����, 7��, 1����, 3����, 6����, ����� ����) �� �����Ұ�
----(�ֹ���, ǰ���, ��ǰ���� �ݾ�, ��ۺ�, ���� �հ�(�� ī����� �ݾ�), ȯ�һ�ǰ �ݾ� �հ�(��ۺ� ����), ȯ�� �հ�, ������)

--(select count("o"."product_no") from "tb_product_n_order" "o" where "o"."product_no" =  "p"."product_no" and 
--"o"."process_cd" = 21) as all_sells

CREATE OR REPLACE VIEW v_sales_statement AS 
SELECT (SELECT COUNT("order_no") FROM "tb_order") AS "order_no", 
(SELECT COUNT("product_no") FROM "tb_product" ) AS "product_no", 
((SELECT SUM("o"."charge") FROM "tb_order" "o", "tb_product_n_order" "po" WHERE "o"."order_no" = "po"."order_no" AND 
"po"."process_cd" = 21 ) - (SELECT COUNT("o"."order_no") FROM "tb_order" "o", "tb_product_n_order" "po" WHERE 
"o"."order_no" = "po"."order_no" AND "po"."process_cd" = 21)*3000) AS "sale_sum",
(SELECT COUNT("o"."order_no") FROM "tb_order" "o", "tb_product_n_order" "po" WHERE "o"."order_no" = "po"."order_no" 
AND "po"."process_cd" = 21)*3000 AS "delivery_sum",
(SELECT SUM("o"."charge") FROM "tb_order" "o", "tb_product_n_order" "po" WHERE "o"."order_no" = "po"."order_no" AND 
"po"."process_cd" = 21) AS "sale_total_sum",
(SELECT SUM("o"."charge") FROM "tb_order" "o", "tb_product_n_order" "po" WHERE "o"."order_no" = "po"."order_no" AND 
"po"."process_cd" = 32) AS "refund_sum",
((SELECT SUM("o"."charge") FROM "tb_order" "o", "tb_product_n_order" "po" WHERE "o"."order_no" = "po"."order_no" AND 
"po"."process_cd" = 32) - (SELECT COUNT("o"."charge") FROM "tb_order" "o", "tb_product_n_order" "po" WHERE 
"o"."order_no" = "po"."order_no" AND "po"."process_cd" = 32)*3000) AS "refund_total_sum",
((SELECT SUM("o"."charge") FROM "tb_order" "o", "tb_product_n_order" "po" WHERE "o"."order_no" = "po"."order_no" AND 
"po"."process_cd" = 21) - (SELECT COUNT("o"."order_no") FROM "tb_order" "o", "tb_product_n_order" "po" WHERE 
"o"."order_no" = "po"."order_no" AND "po"."process_cd" = 21)*3000) AS "net_sale"
FROM DUAL;
--WHERE "o"."order_date" >= '2016-03-30' AND "o"."order_date" <= SYSDATE;

SELECT * FROM v_sales_statement;



--<<�п����� ��ĥ��>>-- �̰Ŷ� �������� �η�
ALTER TABLE "tb_product" 
MODIFY "detail_img" NOT NULL;

--<<��������-ȸ��>>--
--- �Խñۺ���(��ü ����Ʈ)
SELECT "notice_no", "ntc_title", "ntc_write_day", "ntc_hits", "mem_id" FROM "tb_notice" WHERE "ntc_del_check" = 0
ORDER BY "notice_no" DESC;
--- �Խñ���ȸ(����, ����, �ۼ���, �۾���, ����+����)
-- ���� �˻�
SELECT "n"."notice_no",  "ntc_title",  "ntc_write_day",  "ntc_hits",  "n"."mem_id", COUNT("notice_re_no")  
FROM "tb_notice" "n" LEFT OUTER JOIN "tb_notice_re" "r"
ON ("n"."notice_no" = "r"."notice_no")
WHERE  "ntc_del_check"=0
AND  "ntc_title" LIKE '%�亯%'
GROUP BY "n"."notice_no",  "ntc_title",  "ntc_write_day",  "ntc_hits",  "n"."mem_id"
ORDER BY "notice_no" DESC;


-- ���� �˻�
SELECT "n"."notice_no",  "ntc_title",  "ntc_write_day",  "ntc_hits",  "n"."mem_id", COUNT("notice_re_no")  
FROM "tb_notice" "n" LEFT OUTER JOIN "tb_notice_re" "r"
ON ("n"."notice_no" = "r"."notice_no")
WHERE  "ntc_del_check"=0
AND  "ntc_content" LIKE '%��%'
GROUP BY "n"."notice_no",  "ntc_title",  "ntc_write_day",  "ntc_hits",  "n"."mem_id"
ORDER BY "notice_no" DESC;

-- �۾��� �˻�
SELECT "n"."notice_no",  "ntc_title",  "ntc_write_day",  "ntc_hits",  "n"."mem_id", COUNT("notice_re_no")  
FROM "tb_notice" "n" LEFT OUTER JOIN "tb_notice_re" "r"
ON ("n"."notice_no" = "r"."notice_no")
WHERE  "ntc_del_check"=0
AND "n"."mem_id" LIKE '%admin01%'
GROUP BY "n"."notice_no",  "ntc_title",  "ntc_write_day",  "ntc_hits",  "n"."mem_id"
ORDER BY "notice_no" DESC;

-- ����+���� �˻�
SELECT "n"."notice_no",  "ntc_title",  "ntc_write_day",  "ntc_hits",  "n"."mem_id", COUNT("notice_re_no")  
FROM "tb_notice" "n" LEFT OUTER JOIN "tb_notice_re" "r"
ON ("n"."notice_no" = "r"."notice_no")
WHERE  "ntc_del_check"=0
AND ("ntc_title" LIKE '%�亯%'
OR  "ntc_content" LIKE '%�亯%')
GROUP BY "n"."notice_no",  "ntc_title",  "ntc_write_day",  "ntc_hits",  "n"."mem_id"
ORDER BY "notice_no" DESC;


--- �Խñ� �󼼺���
SELECT "notice_no", "ntc_title", "ntc_write_day", "ntc_hits", "ntc_content", "ntc_attached_file1", "ntc_attached_file2", 
"board_id", "mem_id" FROM "tb_notice" WHERE "ntc_del_check" = 0 AND "notice_no" = 1;

--- ��� ����
INSERT INTO "tb_notice_re" ("notice_re_no", "ntc_re_content", "ntc_re_del_check", "notice_no", "mem_id") VALUES (NOTICE_RE_NO_SEQ.NEXTVAL,'������ ��� ����� �˼��մϴ�, �� ���� ��ǰ���� �����ϴ� �ڿ��� �ǵ��� �ϰڽ��ϴ�.',0.0,4.0,'admin02');

--- ��� ����
SELECT * FROM "tb_notice_re" WHERE "notice_no" = '1' AND "ntc_re_del_check" = '0';

--- ��� ����
UPDATE "NMDB"."tb_notice_re" SET "ntc_re_content" = '��ȣȣ', "ntc_re_write_day" = SYSDATE WHERE "notice_re_no" = 7;

--- ��� ����
UPDATE "NMDB"."tb_notice_re" SET "ntc_re_del_check" = 1 WHERE "notice_re_no" = 7;

--<<��������-������>>--
--- �Խñۺ���(��ü ����Ʈ)
SELECT "notice_no", "ntc_title", "ntc_write_day", "ntc_hits", "mem_id" FROM "tb_notice" WHERE "ntc_del_check" = 0 
ORDER BY "notice_no" DESC;
--- �Խñ���ȸ(����, ����, �ۼ���, �۾���, ����+����)

--- �Խñ� �ۼ�(����)
INSERT INTO tb_notice ("ntc_title", "ntc_hits", "ntc_content", "ntc_del_check", "ntc_attached_file1", 
"ntc_attached_file2", "board_id", "mem_id", "notice_no") 
VALUES ('�ڿ��� ����Ʈ ������ �������ּ���',72.0,
'<img src="http://i.imgur.com/jhU5RJN.jpg" width="299"><br>�ڿ��� ����Ʈ�� �׷��� �����߽��ϴ�.<br>���� �¶������� ģȯ�� �ڿ��� 
�񴩸� ������ �����Ͻ� �� �ֽ��ϴ�.<br><br>������ �������ּ��� ¦¦¦!<br>',
0.0,'null','null',1.0,'admin01', NOTICE_NO_SEQ.NEXTVAL);

--- �Խñ� ����(������Ʈ)
UPDATE "NMDB"."tb_notice" SET "ntc_title" = '�˼��˼�^^��', "ntc_content" = '�˼��˼�����', "ntc_write_day" = SYSDATE  
WHERE "notice_no" = '4';

--- �Խñ� �󼼺���
SELECT "notice_no", "ntc_title", "ntc_write_day", "ntc_hits", "ntc_content", "ntc_attached_file1", "ntc_attached_file2", 
"board_id", "mem_id" FROM "tb_notice" WHERE "ntc_del_check" = 0 AND "notice_no" = 1;

--- ��� ����
INSERT INTO "tb_notice_re" ("notice_re_no", "ntc_re_content", "ntc_re_del_check", "notice_no", "mem_id") VALUES (NOTICE_RE_NO_SEQ.NEXTVAL,'������ ��� ����� �˼��մϴ�, �� ���� ��ǰ���� �����ϴ� �ڿ��� �ǵ��� �ϰڽ��ϴ�.',0.0,4.0,'admin02');

--- ��� ����
SELECT * FROM "tb_notice_re" WHERE "notice_no" = '1' AND "ntc_re_del_check" = '0';

--- ��� ����
UPDATE "NMDB"."tb_notice_re" SET "ntc_re_content" = '��ȣȣ', "ntc_re_write_day" = SYSDATE WHERE "notice_re_no" = 7;

--- ��� ����
UPDATE "NMDB"."tb_notice_re" SET "ntc_re_del_check" = 1 WHERE "notice_re_no" = 7;

