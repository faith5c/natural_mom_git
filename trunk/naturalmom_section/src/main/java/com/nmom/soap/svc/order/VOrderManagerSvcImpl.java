package com.nmom.soap.svc.order;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.dao.order.IVOrderManagerDao;
import com.nmom.soap.data.model.order.VOrderManagerVo;

public class VOrderManagerSvcImpl implements IVOrderManagerSvc {

	private IVOrderManagerDao vOrderManagerDao;
	
	@Override
	public List<VOrderManagerVo> getAllOrederByDate(boolean orderBy) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VOrderManagerVo> getAllOrederByNo(boolean orderBy) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VOrderManagerVo> getAllOrederByName(boolean orderBy) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VOrderManagerVo> getAllOrederByProduct(boolean orderBy) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VOrderManagerVo> getAllOrederByNum(boolean orderBy) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VOrderManagerVo> getAllOrederByCharge(boolean orderBy) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VOrderManagerVo> getAllOrederByProcess(boolean orderBy) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	public void setVOrderManagerDao(IVOrderManagerDao vOrderManagerDao) {
		this.vOrderManagerDao = vOrderManagerDao;
	}

}
