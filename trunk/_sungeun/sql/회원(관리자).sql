---- 회원 관리 (관리자) ----------------------------------------------

-- 모든회원 조회
SELECT "mem_id", "mem_name", "mem_addr_detail", "mem_phone", "mem_email", "mem_birth", "mem_gender", "drop_out" 
FROM "tb_member" ;

-- 조건부 조회
	-- 조건문은 동적으로 할당
SELECT "mem_id", "mem_name", "mem_addr_detail", "mem_phone", "mem_email", "mem_birth", "mem_gender", "drop_out" 
FROM "tb_member" WHERE ( "mem_id" LIKE '%soo%' 
                  OR "mem_name" LIKE '%수민%'
                  OR "mem_phone"='010-1111-1111'
                  OR "mem_email"='soomin@natural.com'
                  OR "mem_birth"='90/01/01'
                  OR "mem_gender"='1'
                  OR "drop_out"='0' );
                  
-- 회원탈퇴          
UPDATE "NMDB"."tb_member" SET "drop_out"=0 WHERE "mem_id"='admin02';

-- 불량회원
UPDATE "NMDB"."tb_member" SET "mem_level_cd"=2 WHERE "mem_id"='minhee';

-- 관리자 비밀번호 수정
UPDATE "NMDB"."tb_member" SET "mem_pw"='1111' WHERE "mem_id"='admin01';