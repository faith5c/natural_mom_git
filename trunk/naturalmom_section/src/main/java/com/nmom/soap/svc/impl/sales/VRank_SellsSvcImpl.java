package com.nmom.soap.svc.impl.sales;

import java.util.List;

import com.nmom.soap.data.dao.sales.IVRank_SellsDao;
import com.nmom.soap.data.model.sales.VRank_SellsVo;
import com.nmom.soap.svc.sales.IVRank_SellsSvc;

public class VRank_SellsSvcImpl implements IVRank_SellsSvc 
{
	IVRank_SellsDao rank_sellsDao;
	
	public void setRank_sellsDao(IVRank_SellsDao rank_sellsDao) 
	{
		this.rank_sellsDao = rank_sellsDao;
	}
	
	@Override
	public List<VRank_SellsVo> getAllRank(boolean order) {
		// TODO Auto-generated method stub
		return null;
	}

}
