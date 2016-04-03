---- 이벤트 게시판 ----------------------------------------

--이벤트 게시판 권한 체크
SELECT "board_read", "board_write", "board_modify", "board_delete" 
FROM "tb_mem_level_n_board" 
WHERE "board_cd"=2 
AND "mem_level_cd"=
(SELECT "mem_level_cd" 
FROM "tb_member" 
WHERE "mem_id"='soojin');


--게시판 리스트
SELECT "event_no", "evt_title","mem_id", "evt_write_day", "evt_hits" 
FROM "tb_event" WHERE "evt_del_check"=0 ORDER BY "event_no" DESC;
--게시글의 리플 갯수
SELECT "evt_no", count("event_re_no") FROM "tb_event_re" WHERE "evt_del_check"=0 GROUP BY "evt_no";


--게시글 내용
SELECT * FROM "tb_event" 
    WHERE "evt_del_check"=0
    and "event_no" = '1';
    -- 게시글 리플 내용
SELECT "mem_id","evt_re_content","evt_re_write_day" FROM "tb_event_re"
    WHERE "evt_re_del_check"=0
    and "evt_no" = '1';
    -- 조회수 +1
UPDATE "NMDB"."tb_event" SET "evt_hits" = "evt_hits"+1;


--댓글 쓰기
INSERT INTO "tb_event_re" VALUES(EVENT_RE_NO_SEQ.NEXTVAL,
                                '댓글입니다.', 
                                SYSDATE, 
                                0, 1,
                                'admin01'); --삭제여부, 부모글
--댓글 삭제 (*******질문할것)
UPDATE "tb_event_re" SET "evt_re_del_check"=1 WHERE "event_re_no"=1;


--글쓰기
INSERT INTO "tb_event" VALUES(EVENT_NO_SEQ.NEXTVAL,
                              '오늘의 출첵 이벤트입니다! 모두 많이 참여해주세요',
                              SYSDATE, 1,
                              '자연맘에서 준비한 새로운 출석체크 이벤트<br> 오늘 출석체크를 한 선착순 30분에게 비누 1+1의 기회를 드려요',
                              0,2,
                              'admin01');
--글수정
	-- 수정할 내용 불러오기
SELECT "evt_title", "evt_content" FROM "tb_event" WHERE "event_no"= 21;
	-- 글 수정하기
UPDATE "tb_event" SET 
    "evt_write_day"=SYSDATE,
    "evt_title"='수정된 출첵이벤트!!', 
    "evt_content"='자연맘에서 준비한 수정된 출첵이벤트!!!<br><br> 출첵을해라! 빨리 한사람 10명에게 1+1비누 증정'
    WHERE "event_no"=21;
    
    
--글삭제
UPDATE "tb_event" SET "evt_del_check"=1 WHERE "event_no"=1;
UPDATE "tb_event_re" SET "evt_re_del_check"=1 WHERE "evt_no"=1;


--검색
	-- 제목으로 검색
SELECT "event_no", "evt_title","mem_id", "evt_write_day", "evt_hits" 
FROM "tb_event" WHERE "evt_del_check"=0 
			AND "evt_title" LIKE '%피부%' 
			ORDER BY "event_no" DESC;
	-- 내용으로 검색
SELECT "event_no", "evt_title","mem_id", "evt_write_day", "evt_hits" 
FROM "tb_event" WHERE "evt_del_check"=0 
			AND "evt_content" LIKE '%자연맘%' 
			ORDER BY "event_no" DESC;
	-- 제목+내용으로 검색
SELECT "event_no", "evt_title","mem_id", "evt_write_day", "evt_hits" 
FROM "tb_event" WHERE "evt_del_check"=0 
			AND ("evt_title" LIKE '%수정%' OR "evt_content" LIKE '%자연맘%') 
			ORDER BY "event_no" DESC;