package com.nmom.soap.controller;

import com.nmom.soap.svc.sales.IVRank_SellsSvc;

public class SalesController 
{
	IVRank_SellsSvc rank_sellsSvc;
	
	public void setRank_sellsSvc(IVRank_SellsSvc rank_sellsSvc) 
	{
		this.rank_sellsSvc = rank_sellsSvc;
	}
}
