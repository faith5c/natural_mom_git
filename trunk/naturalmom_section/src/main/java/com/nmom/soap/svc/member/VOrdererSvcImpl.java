package com.nmom.soap.svc.member;

import com.nmom.soap.data.dao.member.IVOrdererDao;
import com.nmom.soap.data.impl.member.VOrdererDaoOraImpl;
import com.nmom.soap.data.model.member.VOrdererVo;

public class VOrdererSvcImpl implements IVOrdererSvc {

	private IVOrdererDao vOrdererDao;
	
	
	
	public void setVOrdererDao(IVOrdererDao vOrdererDao) {
		vOrdererDao = vOrdererDao;
	}



	@Override
	public VOrdererVo getOrderer(String id) {
		System.out.println("오더러 서비스");
		System.out.println(vOrdererDao == null ? null : vOrdererDao);
		return this.vOrdererDao.getOrderer(id);
	}

}
