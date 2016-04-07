package naturalmom.data.dao;

import naturalmom.data.model.BoardAccessVo;

public interface IBoardAccessDao {
	
	// 게시판에 따른 등급별 권한
	BoardAccessVo getAdminAccess(int board_no);
	
	BoardAccessVo getMemberAccess(int board_no);
	
	BoardAccessVo getBlacklistAccess(int board_no);
	
	BoardAccessVo getNonmemberAccess(int board_no);
	
	
	// 등급에 따른 게시판 권한
	BoardAccessVo getAccessNotice(int mem_level_cd);
	
	BoardAccessVo getAccessEvent(int mem_level_cd);
	
	BoardAccessVo getAccessQnA(int mem_level_cd);
	
	BoardAccessVo getAccessFaQ(int mem_level_cd);
	
	BoardAccessVo getAccessReview(int mem_level_cd);

}