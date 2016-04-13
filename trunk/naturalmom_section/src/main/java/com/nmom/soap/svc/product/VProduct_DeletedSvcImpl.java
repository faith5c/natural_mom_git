package com.nmom.soap.svc.product;

import java.util.List;

import com.nmom.soap.data.dao.product.IVProduct_DeletedDao;
import com.nmom.soap.data.model.product.VProduct_DeletedVo;

public class VProduct_DeletedSvcImpl implements IVProduct_DeletedSvc 
{
	IVProduct_DeletedDao product_deletedDao;
	
	public void setProduct_deletedDao(IVProduct_DeletedDao product_deletedDao) 
	{
		this.product_deletedDao = product_deletedDao;
	}

	@Override
	public List<VProduct_DeletedVo> getAllDeletedProduct_by_product_no(boolean order) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VProduct_DeletedVo> getAllDeletedProduct_by_product_name(boolean order) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VProduct_DeletedVo> getAllDeletedProduct_by_selling_price(boolean order) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VProduct_DeletedVo> getAllDeletedProduct_by_stock(boolean order) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VProduct_DeletedVo> getAllDeletedProduct_by_all_sells(boolean order) {
		// TODO Auto-generated method stub
		return null;
	}

}
