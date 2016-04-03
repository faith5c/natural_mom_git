---- 회원 관련 ----------------------------------------------

--로그인체크
-- drop_out : return 값이 0일 경우 로그인 성공/ null이거나 1일 경우 로그인 실패
select "drop_out" from "tb_member" 
	where "mem_id" ='minhee' and "mem_pw"='4321';
	
--아이디찾기
select "mem_id" from "tb_member" 
	where "drop_out"= 0
	and "mem_name"='자연맘' 
	and "mem_email"='sseun0402@hanmail.net';
	
--비밀번호 찾기
select "mem_pw" from "tb_member" 
    where  "drop_out"= 0
	  and "mem_name"='자연맘' 
      and "mem_id"='admin01' 
      and "mem_email"='sseun0402@hanmail.net';
      
--아이디 중복확인
select "mem_id" from "tb_member" 
    where "mem_id"='admin01';
    
--회원가입	-- 내용에 대한 값 확인은 Front에서 처리
insert into "tb_member"
  values ('kyungdae', 1234, '신경대', '010-4444-4444', '444-444', 
          '경기도 성남시 중원구 여수동 산들마을 거북홈', 'sungeun@natural.com', '90/06/06', 1, 0, 1); --성별, 탈퇴여부, 등급
          
--회원정보 수정
UPDATE "NMDB"."tb_member" 
SET "mem_pw" ='4321',
    "mem_phone" = '010-5555-5555', 
    "mem_addr_post" = '555-555', 
    "mem_addr_detail" = '경기도 성남시 중원구 여수동 산들마을 거북홈 언저리', 
    "mem_email" = 'sungjae@natural.com'
    WHERE "mem_id"='sungjae';

--회원탈퇴
UPDATE "NMDB"."tb_member" SET "drop_out" = 1 
    WHERE "mem_id"='minhee';
