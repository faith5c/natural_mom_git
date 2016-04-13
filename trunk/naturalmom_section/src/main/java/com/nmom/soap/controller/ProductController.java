package com.nmom.soap.controller;

import com.nmom.soap.svc.category.ICategorySvc;
import com.nmom.soap.svc.product.IProductSvc;
import com.nmom.soap.svc.product.IVProduct_DeletedSvc;
import com.nmom.soap.svc.product.IVProduct_ManageSvc;

public class ProductController 
{
	IProductSvc productSvc;
	IVProduct_DeletedSvc product_deletedSvc;
	IVProduct_ManageSvc product_manageSvc;
	ICategorySvc categorySvc;
	
	public void setProductSvc(IProductSvc productSvc) 
	{
		this.productSvc = productSvc;
	}
	
	public void setProduct_deletedSvc(IVProduct_DeletedSvc product_deletedSvc) 
	{
		this.product_deletedSvc = product_deletedSvc;
	}
	
	public void setProduct_manageSvc(IVProduct_ManageSvc product_manageSvc) 
	{
		this.product_manageSvc = product_manageSvc;
	}

	public void setCategorySvc(ICategorySvc categorySvc) {
		this.categorySvc = categorySvc;
	}
	
}