package com.nmom.soap.svc.sales;

import java.util.Calendar;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.dao.sales.ISaleStatementDao;
import com.nmom.soap.data.model.sales.SaleStatementVo;

public class SaleStatementSvcImpl implements ISaleStatementSvc {

	private ISaleStatementDao saleStatementDao;
	
	@Override
	public SaleStatementVo getSaleStatement() throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SaleStatementVo getSaleStatement(Calendar today) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SaleStatementVo getSaleStatement(Calendar start, Calendar end) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	
	public void setSaleStatementDao(ISaleStatementDao saleStatementDao) {
		this.saleStatementDao = saleStatementDao;
	}
}
