package com.nmom.soap.svc.product;

import java.util.List;

import com.nmom.soap.data.dao.product.IVProduct_ManageDao;
import com.nmom.soap.data.model.product.VProduct_ManageVo;

public class VProduct_ManageSvcImpl implements IVProduct_ManageSvc 
{
	IVProduct_ManageDao product_manageDao;
	
	public void setProduct_manageDao(IVProduct_ManageDao product_manageDao)
	{
		this.product_manageDao = product_manageDao;
	}
	
	@Override
	public List<VProduct_ManageVo> getAllProduct_by_product_no(boolean order) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VProduct_ManageVo> getAllProduct_by_category_nm(boolean order) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VProduct_ManageVo> getAllProduct_by_product_name(boolean order) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VProduct_ManageVo> getAllProduct_by_selling_price(boolean order) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VProduct_ManageVo> getAllProduct_by_stock(boolean order) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VProduct_ManageVo> getAllProduct_by_display_state(boolean order) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VProduct_ManageVo> getAllProduct_by_sale_state(boolean order) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VProduct_ManageVo> getAllProduct_by_all_sells(boolean order) {
		// TODO Auto-generated method stub
		return null;
	}

}
