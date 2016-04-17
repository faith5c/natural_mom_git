package com.nmom.soap.svc.member;

import java.util.Date;
import java.util.List;

import com.nmom.soap.data.dao.member.IMemberDao;
import com.nmom.soap.data.model.member.MemberVo;

public class MemberSvcImpl implements IMemberSvc {
	
	IMemberDao memberDao;
	
	// DI
	public void setMemberDao(IMemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	
	

	// Override Method
	@Override
	public MemberVo getOneMember(String id) {
		return memberDao.getOneMember(id);
	}

	@Override
	public MemberVo getOneMember(String name, String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean checkId(String id) {
		return memberDao.checkId(id);
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
		return memberDao.removeMember(id);
	}

	@Override
	public int editMember(MemberVo member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<MemberVo> getAllMember() {
		return memberDao.getAllMember();
	}

	@Override
	public List<MemberVo> getMembersByCondition(String id, String name, String phone, String email, Date birth,
			int gender, int level) {
		return memberDao.getMembersByCondition(id, name, phone, email, birth, gender, level);
	}

}
