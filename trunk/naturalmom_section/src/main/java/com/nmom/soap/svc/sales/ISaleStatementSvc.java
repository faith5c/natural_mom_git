package com.nmom.soap.svc.sales;

import java.util.Calendar;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.model.sales.SaleStatementVo;

public interface ISaleStatementSvc {
	
	public SaleStatementVo getSaleStatement()  throws DataAccessException;
	
	public SaleStatementVo getSaleStatement(Calendar today)  throws DataAccessException;
	
	public SaleStatementVo getSaleStatement(Calendar start, Calendar end)  throws DataAccessException;
}
