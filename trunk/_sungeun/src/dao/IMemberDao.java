package dao;

import java.util.Calendar;
import java.util.List;
import model.Member;

public interface IMemberDao {
	
	List<Member> selectAllMember();
	
	// 아이디 찾기, 비밀번호 찾기, 로그인 체크
	Member selectOneMember(String id);
	
	// 아이디 중복확인
	List<String> selectAllID();
	
	// 회원가입
	int joinMember(Member member);
	
	// 불량회원
	int updateMemberLevel(String id, int level);
	
	// 회원탈퇴
	int deleteMember(String id);
	
	// 회원정보 수정, 관리자 비밀번호 수정
	int updateMember(Member member);
	
	// 회원조회 (관리자)
	int selectMembersByCondition(String id, String name, String phone, String email, Calendar birth, int gender, int level);
}
