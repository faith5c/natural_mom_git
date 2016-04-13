package com.nmom.soap.svc.order;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.dao.order.IVOrderListDao;
import com.nmom.soap.data.model.order.VOrderListVo;

public class VOrderListSvcImpl implements IVOrderListSvc {

	private IVOrderListDao vOrderListDao;
	
	@Override
	public List<VOrderListVo> getAllOreder(int page, String mem_id) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getAllCount(String mem_id) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	public void setVOrderListDao(IVOrderListDao vOrderListDao) {
		this.vOrderListDao = vOrderListDao;
	}

}
