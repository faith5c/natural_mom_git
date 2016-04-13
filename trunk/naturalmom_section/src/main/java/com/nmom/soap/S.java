package com.nmom.soap;

public class S {
	
	// 게시판 번호
	public final static int BOARD_NOTICE =1;
	public final static int BOARD_EVENT =2;
	public final static int BOARD_FAQ =3;
	public final static int BOARD_QNA =4;
	public final static int BOARD_REVIEW =5;
	
	// 성별
	public final static int GENDER_MALE =1;
	public final static int GENDER_FEMALE =2;
	
	// 회원등급
	public final static int LEVEL_ADMIN = 10;
	public final static int LEVEL_MEMBER = 1;
	public final static int LEVEL_BLACKLIST = 2;
	public final static int LEVEL_NONMEMBER = 3;
	
	// [소라] 수정, 삭제 시 실행 결과 값
	public final static int PROCESS_SUCCESS = 1;
	public final static int PROCESS_FAILURE = -1;
	public final static int PROCESS_NO_RESULT = 0;
	
	// [소라] 정렬 값
	public final static boolean ASC = true;
	public final static boolean DESC = false;
	
	// [소라] 진열, 판매, 삭제 상태 수정 시 true, false 값
	public final static int STATE_TRUE = 1;
	public final static int STATE_FALSE = 0;
	
}
