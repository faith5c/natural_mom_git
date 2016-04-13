package com.nmom.soap.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nmom.soap.S;
import com.nmom.soap.data.model.product.VProduct_ManageVo;
import com.nmom.soap.svc.category.ICategorySvc;
import com.nmom.soap.svc.product.IProductSvc;
import com.nmom.soap.svc.product.IVProduct_DeletedSvc;
import com.nmom.soap.svc.product.IVProduct_ManageSvc;

import oracle.net.aso.a;

@Controller
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
	
	@RequestMapping(value ="/admin/product.nm", method=RequestMethod.GET, params="page=manage")
	public ModelAndView product_manageList(HttpServletRequest request)
	{
		System.out.println("메소드 진입 - ");
		String by = request.getParameter("by");
		String order = request.getParameter("order");
		
		List<VProduct_ManageVo> list = null;
		Map<String, Object> map = new HashMap<String, Object>();
		
		if (by == null || order == null)
			list = product_manageSvc.getAllProduct_by_product_no(S.ASC);
		else if (by.equals("no"))
		{
			if (order.equals("true"))
				list = product_manageSvc.getAllProduct_by_product_no(S.ASC);
			else
				list = product_manageSvc.getAllProduct_by_product_no(S.DESC);
		}
		else if (by.equals("ct"))
		{
			if (order.equals("true"))
				list = product_manageSvc.getAllProduct_by_category_nm(S.ASC);
			else
				list = product_manageSvc.getAllProduct_by_category_nm(S.DESC);
		}
		else if (by.equals("nm"))
		{
			if (order.equals("true"))
				list = product_manageSvc.getAllProduct_by_product_name(S.ASC);
			else
				list = product_manageSvc.getAllProduct_by_product_name(S.DESC);
		}
		else if (by.equals("pr"))
		{
			if (order.equals("true"))
				list = product_manageSvc.getAllProduct_by_selling_price(S.ASC);
			else
				list = product_manageSvc.getAllProduct_by_selling_price(S.DESC);
		}
		else if (by.equals("st"))
		{
			if (order.equals("true"))
				list = product_manageSvc.getAllProduct_by_stock(S.ASC);
			else
				list = product_manageSvc.getAllProduct_by_stock(S.DESC);
		}
		else if (by.equals("dis"))
		{
			if (order.equals("true"))
				list = product_manageSvc.getAllProduct_by_display_state(S.ASC);
			else
				list = product_manageSvc.getAllProduct_by_display_state(S.DESC);
		}
		else if (by.equals("sal"))
		{
			if (order.equals("true"))
				list = product_manageSvc.getAllProduct_by_sale_state(S.ASC);
			else
				list = product_manageSvc.getAllProduct_by_sale_state(S.DESC);
		}
		else if (by.equals("all"))
		{
			if (order.equals("true"))
				list = product_manageSvc.getAllProduct_by_all_sells(S.ASC);
			else
				list = product_manageSvc.getAllProduct_by_all_sells(S.DESC);
		}
		else
		{
			list = product_manageSvc.getAllProduct_by_product_no(S.ASC);
		}

		map.put("p_list", list);
		return new ModelAndView("admin/product/a_product", map);
	}
}