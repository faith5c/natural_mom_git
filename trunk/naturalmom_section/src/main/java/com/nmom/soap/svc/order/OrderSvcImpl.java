package com.nmom.soap.svc.order;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.dao.order.IOrderDao;
import com.nmom.soap.data.model.order.OrderVo;

public class OrderSvcImpl implements IOrderSvc {

	private IOrderDao orderDao;
	
	@Override
	public int addOrder(OrderVo order, String credit_nm, String delivery_com_nm) {
		
		return 0;
	}

	@Override
	public int editTrackingNumOrder(int order_no, int tracking_num) {

		return 0;
	}
	
	

	public void setOrderDao(IOrderDao orderDao) {
		this.orderDao = orderDao;
	}
	
}
