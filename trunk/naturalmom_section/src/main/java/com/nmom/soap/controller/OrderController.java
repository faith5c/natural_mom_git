package com.nmom.soap.controller;

import com.nmom.soap.svc.order.IOrderSvc;
import com.nmom.soap.svc.order.IProductOrderSvc;
import com.nmom.soap.svc.order.IVOrderListSvc;
import com.nmom.soap.svc.order.IVOrderManagerSvc;

public class OrderController {

	private IOrderSvc orderSvc;
	private IProductOrderSvc productOrderSvc;
	private IVOrderListSvc vOrderListSvc;
	private IVOrderManagerSvc vOrderManagerSvc;
	
	
	
	public void setOrderSvc(IOrderSvc orderSvc) {
		this.orderSvc = orderSvc;
	}
	public void setProductOrderSvc(IProductOrderSvc productOrderSvc) {
		this.productOrderSvc = productOrderSvc;
	}
	public void setVOrderListSvc(IVOrderListSvc vOrderListSvc) {
		this.vOrderListSvc = vOrderListSvc;
	}
	public void setVOrderManagerSvc(IVOrderManagerSvc vOrderManagerSvc) {
		this.vOrderManagerSvc = vOrderManagerSvc;
	}
	
}
