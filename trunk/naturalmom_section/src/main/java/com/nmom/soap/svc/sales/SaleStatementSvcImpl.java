package com.nmom.soap.svc.sales;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.dao.sales.ISaleStatementDao;
import com.nmom.soap.data.model.sales.SaleStatementVo;

public class SaleStatementSvcImpl implements ISaleStatementSvc {

	private ISaleStatementDao saleStatementDao;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	@Override
	public SaleStatementVo getSaleStatement() {
		return this.saleStatementDao.getSaleStatement();
	}

	@Override
	public SaleStatementVo getSaleStatement(Calendar today) {
		
		return this.saleStatementDao.getSaleStatement(
				sdf.format(today.getTime()));
	}

	@Override
	public SaleStatementVo getSaleStatement(Calendar start, Calendar end) {
		// TODO Auto-generated method stub
		return this.saleStatementDao.getSaleStatement(
				sdf.format(start.getTime()), 
				sdf.format(end.getTime()));
	}

	
	public void setSaleStatementDao(ISaleStatementDao saleStatementDao) {
		this.saleStatementDao = saleStatementDao;
	}
}
