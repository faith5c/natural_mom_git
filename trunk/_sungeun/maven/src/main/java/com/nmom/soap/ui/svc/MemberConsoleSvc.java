package com.nmom.soap.ui.svc;

import java.util.Date;
import java.util.List;

import com.nmom.soap.data.dao.IMemberDao;
import com.nmom.soap.data.model.MemberVo;

public class MemberConsoleSvc implements IMemberSvc{
	
	IMemberDao memberDao;
	
	// DI setter
	public void setMemberDao(IMemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
//	rs.getString("mem_id"), 
//	rs.getString("mem_pw"), 
//	rs.getString("mem_name"), 
//	rs.getString("mem_phone"), 
//	rs.getString("mem_addr_post"), 
//	rs.getString("mem_addr_detail"), 
//	rs.getString("mem_email"), 
//	rs.getDate("mem_birth"), 
//	rs.getInt("mem_gender"), 
//	rs.getInt("drop_out"), 
//	rs.getInt("mem_level_cd"));

	// Override Method
	@Override
	public MemberVo getOneMember(String id) {
		MemberVo m = memberDao.getOneMember(id);
		System.out.println("#id, name, phone, email, level");
		System.out.println("#"+ m.getMem_id()+", "+m.getMem_name()+", "+m.getMem_phone()+", "+m.getMem_email()+", "+m.getMem_level_cd());
		return null;
	}

	@Override
	public MemberVo getOneMember(String name, String email) {
		MemberVo m = memberDao.getOneMember(name, email);
		System.out.println("#id, name, phone, email, level");
		System.out.println("#"+ m.getMem_id()+", "+m.getMem_name()+", "+m.getMem_phone()+", "+m.getMem_email()+", "+m.getMem_level_cd());
		return null;
	}

	@Override
	public boolean checkId(String id) {
		return memberDao.checkId(id);
	}

	@Override
	public int addMember(MemberVo member) {
		return memberDao.addMember(member);
	}

	@Override
	public int editMemberLevel(String id, int level) {
		return memberDao.editMemberLevel(id, level);
	}

	@Override
	public int removeMember(String id) {
		return memberDao.removeMember(id);
	}

	@Override
	public int editMember(MemberVo member) {
		return memberDao.editMember(member);
	}

	@Override
	public List<MemberVo> getAllMember() {
		List<MemberVo> mem_list = memberDao.getAllMember();
		System.out.println("#id, name, email, level");
		for(MemberVo m : mem_list){
			System.out.println("#"+m.getMem_id()+", "+m.getMem_name()+", "+m.getMem_email()+", "+m.getMem_level_cd());
		}
		return null;
	}

	@Override
	public List<MemberVo> getMembersByCondition(String id, String name, String phone, String email, Date birth,
			int gender, int level) {
		List<MemberVo> mem_list = memberDao.getMembersByCondition(id, name, phone, email, birth, gender, level);
		System.out.println("#id, name, address, email, birth, gender, level");
		for(MemberVo m : mem_list){
			System.out.println("#"+m.getMem_id()+", "+m.getMem_name()+", "+ m.getMem_addr_detail()+", "
						+m.getMem_email()+", "+m.getMem_birth()+", "+m.getMem_gender()+", "+m.getMem_level_cd());
		}
		return null;
	}


}
