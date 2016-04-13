package com.nmom.soap.svc.interest;

import com.nmom.soap.data.dao.interest.IInterestDao;
import com.nmom.soap.data.model.interest.InterestVo;

public class InterestSvcImpl implements IInterestSvc {
	
	IInterestDao interestDao;
	
	public void setInterestDao(IInterestDao interestDao) {
		this.interestDao = interestDao;
	}

	@Override
	public boolean duplicationInterestProduct(int product_no, String mem_id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int addInterestProduct(InterestVo interest) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int addInterestProduct(int product_no, String mem_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeInterestProduct(InterestVo interest) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeInterestProduct(int product_no, String mem_id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
