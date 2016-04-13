package com.nmom.soap.svc.order;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.dao.order.IProductOrderDao;
import com.nmom.soap.data.dao.product.IProductDao;
import com.nmom.soap.data.model.order.ProductOrderVo;

public class ProductOrderSvcImpl implements IProductOrderSvc {

	private IProductOrderDao productOrderDao;
	
	@Override
	public int addOrder(ProductOrderVo po) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editOrder(int order_no, int process_cd) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editOrder(int[] order_no, int process_cd) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editPartOrder(int order_no, String product_name, int process_cd) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	
	public void setProductOrderDao(IProductOrderDao productOrderDao) {
		this.productOrderDao = productOrderDao;
	}

}
