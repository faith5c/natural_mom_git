package naturalmom.data.dao.impl;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import naturalmom.data.dao.IMemberDao;
import naturalmom.data.model.MemberVo;

public class MemberDaoOraImple extends NamedParameterJdbcDaoSupport implements IMemberDao {
	
	NamedParameterJdbcTemplate nameTemplate;
	
	private final String SQL_MEMBER_GET_ONE_BY_ID 
				= "SELECT * FROM TB_MEMBER WHERE MEM_ID=:id";
	private final String SQL_MEMBER_GET_ONE_BY_NAME_AND_EMAIL 
				= "SELECT * FROM TB_MEMBER	WHERE MEM_NAME =':mem_name' and MEM_EMAIL=:email;";
	
	public MemberDaoOraImple() {
		nameTemplate = getNamedParameterJdbcTemplate();
	}
	

	@Override
	public MemberVo getOneMember(String id) {
		return null;
	}
	
	@Override
	public MemberVo getOneMember(String name, String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<String> getAllID() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addMember(MemberVo member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editMemberLevel(String id, int level) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeMember(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editMember(MemberVo member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<MemberVo> getAllMember() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getMembersByCondition(String id, String name, String phone, String email, Date birth, int gender,
			int level) {
		// TODO Auto-generated method stub
		return 0;
	}

}
