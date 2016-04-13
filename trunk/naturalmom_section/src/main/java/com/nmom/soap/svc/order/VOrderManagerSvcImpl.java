package com.nmom.soap.svc.order;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.dao.order.IVOrderManagerDao;
import com.nmom.soap.data.model.order.VOrderManagerVo;

public class VOrderManagerSvcImpl implements IVOrderManagerSvc {

	private IVOrderManagerDao vOrderManagerDao;
	
	@Override
	public List<VOrderManagerVo> getAllOrederByDate(boolean orderBy) {
		List<VOrderManagerVo> list = 
				this.vOrderManagerDao.getAllOrederByDate(orderBy); 
		return (list != null & list.size() > 0 )? list : null;
	}

	@Override
	public List<VOrderManagerVo> getAllOrederByNo(boolean orderBy) {
		List<VOrderManagerVo> list = 
				this.vOrderManagerDao.getAllOrederByNo(orderBy); 
		return (list != null & list.size() > 0 )? list : null;
	}

	@Override
	public List<VOrderManagerVo> getAllOrederByName(boolean orderBy) {
		List<VOrderManagerVo> list = 
				this.vOrderManagerDao.getAllOrederByName(orderBy); 
		return (list != null & list.size() > 0 )? list : null;
	}

	@Override
	public List<VOrderManagerVo> getAllOrederByProduct(boolean orderBy) {
		List<VOrderManagerVo> list = 
				this.vOrderManagerDao.getAllOrederByProduct(orderBy); 
		return (list != null & list.size() > 0 )? list : null;
	}

	@Override
	public List<VOrderManagerVo> getAllOrederByNum(boolean orderBy) {
		List<VOrderManagerVo> list = 
				this.vOrderManagerDao.getAllOrederByNum(orderBy); 
		return (list != null & list.size() > 0 )? list : null;
	}

	@Override
	public List<VOrderManagerVo> getAllOrederByCharge(boolean orderBy) {
		List<VOrderManagerVo> list = 
				this.vOrderManagerDao.getAllOrederByCharge(orderBy); 
		return (list != null & list.size() > 0 )? list : null;
	}

	@Override
	public List<VOrderManagerVo> getAllOrederByProcess(boolean orderBy) {
		List<VOrderManagerVo> list = 
				this.vOrderManagerDao.getAllOrederByProcess(orderBy); 
		return (list != null & list.size() > 0 )? list : null;
	}

	public void setVOrderManagerDao(IVOrderManagerDao vOrderManagerDao) {
		this.vOrderManagerDao = vOrderManagerDao;
	}

}
