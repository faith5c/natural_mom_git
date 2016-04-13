package com.nmom.soap.controller;

import com.nmom.soap.svc.sales.ISaleStatementSvc;
import com.nmom.soap.svc.sales.IVRank_SellsSvc;

public class SalesController 
{
	private IVRank_SellsSvc rank_sellsSvc;
	private ISaleStatementSvc saleStatementSvc;
	
	public void setRank_sellsSvc(IVRank_SellsSvc rank_sellsSvc) 
	{
		this.rank_sellsSvc = rank_sellsSvc;
	}
	
	
	public void setSaleStatementSvc(ISaleStatementSvc saleStatementSvc) {
		this.saleStatementSvc = saleStatementSvc;
	}
}
