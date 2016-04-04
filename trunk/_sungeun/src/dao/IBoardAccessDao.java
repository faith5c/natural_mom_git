package dao;

import model.BoardAccess;

public interface IBoardAccessDao {
	
	// 게시판에 따른 등급별 권한
	BoardAccess selectAdminAccess(int board_no);
	
	BoardAccess selectMemberAccess(int board_no);
	
	BoardAccess selectBlacklistAccess(int board_no);
	
	BoardAccess selectNonmemberAccess(int board_no);
	
	
	// 등급에 따른 게시판 권한
	BoardAccess AccessNotice(int mem_level_cd);
	
	BoardAccess AccessEvent(int mem_level_cd);
	
	BoardAccess AccessQnA(int mem_level_cd);
	
	BoardAccess AccessFaQ(int mem_level_cd);
	
	BoardAccess AccessReview(int mem_level_cd);

}
