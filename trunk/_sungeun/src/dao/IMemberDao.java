package dao;

import java.util.List;
import model.Member;

public interface IMemberDao {
	
	List<Member> selectAllMember();
	
	Member selectOneMember(String id);
	
	
	int joinMember(Member member);
	
	int updateDropout(String id);
	
	int updateMemberLevel(String id, int level);
	
	int updateMember(Member member);
	
	// 아이디 중복체크
	List<String> selectAllID();
}
