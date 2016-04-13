package com.nmom.soap.controller;

import com.nmom.soap.data.impl.order.OrderDaoOraImpl;
import com.nmom.soap.data.impl.order.ProductOrderDaoOraImpl;
import com.nmom.soap.data.impl.order.VOrderListDaoOraImpl;

public class OrderController {

	private OrderDaoOraImpl orderDaoOra;
	private ProductOrderDaoOraImpl productOrderDaoOra;
	private VOrderListDaoOraImpl vOrderListDaoOra;
	
	
	public void setOrderDaoOra(OrderDaoOraImpl orderDaoOra) {
		this.orderDaoOra = orderDaoOra;
	}
	public void setProductOrderDaoOra(ProductOrderDaoOraImpl productOrderDaoOra) {
		this.productOrderDaoOra = productOrderDaoOra;
	}
	public void setVOrderListDaoOra(VOrderListDaoOraImpl vOrderListDaoOra) {
		this.vOrderListDaoOra = vOrderListDaoOra;
	}
}
